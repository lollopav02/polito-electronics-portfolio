#ifndef SOUND_H
#define SOUND_H

#include <stdint.h>

typedef enum {
    SOUND_NONE,
    SOUND_ROTATE,
    SOUND_HARD_DROP,
    SOUND_LINE_CLEAR,
    SOUND_GAME_OVER
} sound_event_t;

/* Set by the game logic, played by the main loop. */
extern volatile sound_event_t sound_request;

void SOUND_init(void);
void SOUND_play(sound_event_t s);

#endif
