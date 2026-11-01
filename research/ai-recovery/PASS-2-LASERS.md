# Pass 2: laser fields and timed moving geometry

Native exports: ghidra-laser-fuse, ghidra-rotation-countdown, ghidra-laser-rotation, ghidra-laser-damage-clock, ghidra-laser-timeout, ghidra-laser-endpoint and ghidra-laser-ray.

Reader, JSON frames and offline adapter now carry live rotation/follow/timing/tear-flag fields and animation metadata. Planner constructs straight laser origin/end paths, applies native rotation delay and degree consumption, respects zero-timeout persistence and separates damage pulses from geometry. Clearance covers changing endpoint segments over the integration interval. Generic four-axis speculative laser fallback is replaced by the native angle field.

Native helpers were exported with descriptive working names while tracing callers; a name is not itself evidence of behavior. For example 0x96F880 is predominantly sound dispatch, and 0x9737B0 advances damage sampling; countdown decrement is near 0x977BEB in the damage dispatch.

Sampled future homing curves, rings, chained-beam geometry, one-hit lists, Guardian challenge clipping, and full fuse propagation are not complete. No gameplay or replay test was performed in this pass. Compilation is the only artifact check.
