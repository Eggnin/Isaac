# Pass 1: perfect homing, room wrapping and contact bombs

Native evidence exports: ghidra-projectile-next, ghidra-room-wrap, ghidra-room-clamp, ghidra-fuse-init.

Production changes:
- Reader supplies native room bounds, bomb attachment pointer and all four tear-flag words.
- Grid implements the native room clamp/wrap formulas, including shapes 9..12 using recovered rectangle constants.
- Projectile motion now implements perfect homing and continuum wrapping; jump indices split collision evaluation at teleport boundaries.
- Bomb predictions follow their attached actor; the recovered explosive contact branch can shorten the fuse before the normal countdown.

Only changed artifacts are compiled. No game launch, gameplay test or replay validation. Native branch recovery and code integration do not establish measured trajectory accuracy. Full-value mechanism coverage remains incomplete; see VALUABLE-MECHANISMS-WORK.md.
