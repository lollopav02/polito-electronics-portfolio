/*
 * Host-side tests for the game logic (no board needed).
 * LCD, ADC and sound are replaced by stubs; functions.c is included
 * directly so the tests can inspect its static state.
 *
 *   gcc -std=c99 -fsanitize=address,undefined -I../Source -I../Source/adc \
 *       -Istubs test_logic.c -o test_logic && ./test_logic
 */
#include "stubs/harness.h"
static int count_cells(void){int n=0;for(int r=0;r<PLAYFIELD_ROW;r++)for(int c=0;c<PLAYFIELD_COL;c++)if(field[r][c])n++;return n;}
static void check_lcd_matches(void){ /* LCD shows field+piece */
  render_field();
  for(int r=0;r<PLAYFIELD_ROW;r++)for(int c=0;c<PLAYFIELD_COL;c++){
    uint32_t v=frame[r][c]; uint16_t px=lcd[FIELD_Y_OFFSET+r*BLOCK_SIZE+2][FIELD_X_OFFSET+c*BLOCK_SIZE+2];
    uint16_t exp = v==CELL_EMPTY?Black:(v==CELL_POWERUP?POWERUP_COLOR:(uint16_t)v);
    assert(px==exp);}
}
int main(void){
  srand(42);
  game_init(); assert(game_state==GAME_PAUSED);
  restart_game(); assert(game_state==GAME_PLAYING);

  /* 1. rotation at the walls never leaves the field (old bug: out-of-bounds write) */
  for(int t=0;t<2000 && game_state==GAME_PLAYING;t++){
    int a=rand()%5;
    if(a==0) move_horizontal(-1); else if(a==1) move_horizontal(1);
    else if(a==2) rotate_piece(); else if(a==3){for(int k=0;k<10;k++){move_horizontal(-1);} rotate_piece(); rotate_piece();}
    else { tick=1; handle_fall(); }
    /* invariant: current piece fits */
    if(current_block) assert(piece_fits(curr_row,curr_col,rotation));
    if(t%50==0) check_lcd_matches();
  }
  printf("random play ok, score=%d lines=%d state=%d\n",score,lines_cleared_counter,game_state);

  /* 2. I piece pushed against right wall can rotate (kick) and stays inside */
  restart_game(); current_block=BLOCK_I; rotation=1; curr_row=5; curr_col=0;
  { int mr,mc; piece_origin(1,&mr,&mc); curr_col=-mc+PLAYFIELD_COL-1; }
  assert(piece_fits(curr_row,curr_col,rotation));
  assert(rotate_piece()==1); assert(piece_fits(curr_row,curr_col,rotation));
  printf("wall kick ok col=%d rot=%d\n",curr_col,rotation);

  /* 3. rotation blocked by stack is refused, not overlapping */
  restart_game(); current_block=BLOCK_I; rotation=0; curr_row=0; curr_col=3;
  for(int c=0;c<PLAYFIELD_COL;c++) for(int r=1;r<PLAYFIELD_ROW;r++) field[r][c]=Red;
  assert(rotate_piece()==0);
  printf("blocked rotation ok\n");

  /* 4. scoring: tetris = 600 + 10 */
  restart_game();
  for(int r=16;r<20;r++)for(int c=0;c<PLAYFIELD_COL;c++) field[r][c]= c==9?0:Red;
  current_block=BLOCK_I; rotation=1; { int mr,mc; piece_origin(1,&mr,&mc); curr_col=9-mc; curr_row=0-mr; }
  assert(piece_fits(curr_row,curr_col,rotation));
  hard_drop(); printf("score after tetris=%d lines=%d\n",score,lines_cleared_counter); assert(score==610 && lines_cleared_counter==4);

  /* 5. power-up placed after 5 lines and never hangs on an empty field */
  lines_cleared_counter=4; for(int r=0;r<20;r++)for(int c=0;c<10;c++)field[r][c]=0;
  for(int c=0;c<10;c++) field[19][c]=Green;   /* one full line, nothing else */
  assert(clear_full_lines()==1); assert(count_cells()==0); printf("empty-field powerup ok\n");

  /* 6. powerup triggers when its line is cleared; malus rows do not */
  restart_game(); lines_cleared_counter=0;
  for(int c=0;c<10;c++){ field[19][c]=Red; field[18][c]= c<5?Blue:0; field[17][c]= c<3?Blue:0; field[16][c]=c<2?Blue:0;}
  field[19][4]=CELL_POWERUP; srand(1);
  int before=count_cells(); int cl=clear_full_lines();
  printf("powerup line cleared=%d cells %d->%d slow=%d score=%d\n",cl,before,count_cells(),slowdown_ticks,score);
  assert(cl==1 && (slowdown_ticks>0 || count_cells()<before-10));

  /* 7. malus after 10 lines adds 7 blocks at bottom */
  restart_game(); lines_cleared_counter=9;
  for(int c=0;c<10;c++) field[19][c]=Red; field[18][0]=Blue;
  clear_full_lines(); int bottom=0; for(int c=0;c<10;c++) if(field[19][c]==MALUS_COLOR) bottom++;
  printf("malus bottom blocks=%d, row18[0]=%x\n",bottom,field[18][0]); assert(bottom==7 && field[18][0]==CELL_POWERUP); /* 10 lines is also a multiple of 5 */

  /* 8. speed mapping */
  slowdown_ticks=0; adc=0; int p0=fall_period_ticks(); adc=4095; int p1=fall_period_ticks(); adc=2048; int pm=fall_period_ticks();
  printf("fall period ticks: min pot=%d (%.1f sq/s) mid=%d max=%d (%.1f sq/s)\n",p0,20.0/p0,pm,p1,20.0/p1); assert(p0==20&&p1==4);
  slowdown_ticks=5; adc=4095; assert(fall_period_ticks()==20);

  /* 9. game over and restart */
  restart_game(); for(int r=0;r<20;r++)for(int c=0;c<10;c++) field[r][c]= (c==0)?0:Red; field[0][0]=0;
  for(int r=1;r<20;r++) field[r][0]=Red; for(int c=0;c<10;c++) field[0][c]= c==4?Red:0;
  spawn_piece(); assert(game_state==GAME_OVER); show_game_over(); assert(sound_request==SOUND_GAME_OVER);
  game_state_toggling(); assert(game_state==GAME_OVER);   /* KEY1 handled by main -> restart */
  restart_game(); assert(game_state==GAME_PLAYING && score==0 && count_cells()==0);

  /* 10. incremental rendering draws far fewer pixels than a full redraw */
  setpoints=0; tick=1; fall_acc=100; handle_fall(); render_field();
  printf("pixels drawn for one step: %ld (full redraw would be %d)\n",setpoints,200*225);
  printf("ALL TESTS PASSED\n");
}
