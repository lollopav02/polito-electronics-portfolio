/*
 * Random-play fuzz test (no board needed): 300 games, checking that the
 * falling piece is always inside the field and never overlaps blocks.
 * LCD, ADC and sound are replaced by stubs; functions.c is included
 * directly so the tests can inspect its static state.
 *
 *   gcc -std=c99 -fsanitize=address,undefined -I../Source -I../Source/adc \
 *       -Istubs fuzz.c -o fuzz && ./fuzz
 */
#include "stubs/harness.h"
int main(void){
  long pw=0,sl=0,go=0; long pieces=0,lines=0,games=0;
  for(int g=0; g<300; g++){
    srand(g); restart_game(); games++;
    adc = rand()%4096;
    for(int t=0; t<20000 && game_state==GAME_PLAYING; t++){
      switch(rand()%7){
        case 0: move_horizontal(-1); break;
        case 1: move_horizontal(1); break;
        case 2: case 3: rotate_piece(); break;
        case 4: hard_drop(); pieces++; break;
        default: joy_down_req=rand()%2; tick=1; handle_fall(); break;
      }
      if(rand()%25==0){ int r=PLAYFIELD_ROW-1-rand()%6; int ok=1;
          for(int a=0;a<4;a++)for(int b=0;b<4;b++) if(current_block&&piece_cell(rotation,a,b)&&curr_row+a==r) ok=0;
          if(ok) for(int c=0;c<PLAYFIELD_COL;c++) if(!field[r][c]) field[r][c]=Red; }
      if(current_block) assert(piece_fits(curr_row,curr_col,rotation));
      
      for(int r=0;r<PLAYFIELD_ROW;r++)for(int c=0;c<PLAYFIELD_COL;c++) if(field[r][c]==CELL_POWERUP){pw++;r=99;break;}
      if(slowdown_ticks==SLOWDOWN_TICKS-0) sl++;
      if(t%97==0) render_field();
    }
    lines += lines_cleared_counter; if(game_state==GAME_OVER) go++;
  }
  printf("powerup cells seen=%ld slowdowns=%ld gameovers=%ld\n",pw,sl,go); printf("fuzz: %ld games, %ld hard drops, %ld lines cleared, all invariants held\n",games,pieces,lines);
}
