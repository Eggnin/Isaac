# Projectile motion reverse-engineering progress

This work reads local J460 native code and private resource scripts. No gameplay tests or replay validation were run.

## Recovered and connected

- Flag definitions come from the private original resources/scripts/enums.lua, including SMART=bit 0, BOUNCE=bit 42, BOUNCE_FLOOR=bit 43. Bit 6 is BOOMERANG, not wall bounce.
- Native projectile Update (0x653070) builds a grid-contact direction from the vector at Entity+0x178. Count/access helpers 0x42F160 and 0x42F150 establish x86 vector begin/end and 8-byte elements. Reader now captures the vectors when current/future flags include wall bounce.
- Wall reflection uses the normalized sum n of qualifying contact vectors and v_new=v-2*n*dot(n,v), only when dot(n,v)>0. Native height<-50 selects grid collision threshold 4; other heights select 2. The original grid collision class is retained separately from navigation's outside-shape substitution. The reflected native velocity also corrects position.
- Floor bounce selects plane -50 for solid grid and -5 for open floor. When height>plane and falling_speed>2, set height=plane and falling_speed=-2*falling_speed. This enters both projectile paths and predicted end timing.
- Ordinary SMART steering reads strength at projectile+0x424. It operates when target_position+0.5*target_native_velocity is within 100 pixels. Add normalized(target_position-projectile_position)*1.4*strength*time_scale in native velocity units, then apply damping lerp(1,0.92,strength) with the original time-scale conversion. Reader's actual target reference is preferred. Frame velocity conversion is handled for player versus NPC targets.
- SMART_PERFECT is a separate native branch and remains outside this new ordinary-SMART implementation. Existing uncertainty treatment remains for it.
- Native target-selector helpers 0x7069A0 and 0x707370 were exported. Their results are distinct from the steering formula; the implementation uses the live target reference rather than claiming to recreate all co-op/decoy target-selection branches.
- Bomb motion uses observed friction. Player-owned bombs are included as explosion hazards because ownership does not imply player immunity. Chain proximity uses actual bomb body size; the true fuse event is separated from the early warning margin, and shortening the fuse also shortens the old explosion window.

## Still approximate or unresolved

- Chain propagation currently models earliest possible ignition. The complete native queued-damage/fuse-delay rules and all special bomb flags are not restored.
- Future contact samples use currently observed collision geometry. Full native collision resolution for every moving obstacle and geometry-changing projectile is not reproduced.
- Perfect homing, continuum wrapping, boomerang motion, status-time-scale interactions and all special source variants are not claimed complete.
- Recovered formulas and successful compilation are implementation evidence, not independently measured trajectory accuracy.

Exports: ghidra-bounce and ghidra-steering. Production consumers: cpp/src/reader.cpp, cpp/src/model.cpp, cpp/src/planner.cpp; offline field adapter updated in parallel.
