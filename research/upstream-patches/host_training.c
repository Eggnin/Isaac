/* Node training suspension; all gameplay remains in the original lifted engine. */
#ifdef ISAAC_TRAINING
#include <stdint.h>
#include <emscripten.h>
#include "isaac_host.h"

EM_JS(int, isaac_training_no_render_js, (void), {
    return Module.isaacTrainingNoRender ? 1 : 0;
});
int isaac_training_skip_render(void) { return isaac_training_no_render_js(); }

EM_ASYNC_JS(void, isaac_training_boundary_js, (void), {
    if (typeof Module.isaacTrainingBoundary === 'function') {
        await Module.isaacTrainingBoundary();
    }
});

void isaac_training_boundary(void) {
    extern uint32_t isaac_frames_presented(void);
    static uint32_t previous = UINT32_MAX, previous_game, previous_clock = UINT32_MAX;
    uint32_t current = isaac_frames_presented();
    uint32_t game = isaac_r32(0x00c71678u);
    uint32_t clock = game && game <= ISAAC_GUEST_LIMIT_VA - 0x26500u
        ? isaac_r32(game + 0x264f8u) : UINT32_MAX;
    if (current == previous && game == previous_game && clock == previous_clock) return;
    previous = current;
    previous_game = game;
    previous_clock = clock;
    isaac_training_boundary_js();
}
#else
int isaac_training_skip_render(void) { return 0; }
#endif
