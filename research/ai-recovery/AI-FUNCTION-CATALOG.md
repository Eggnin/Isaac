# J460 AI Function Catalog

This catalog is generated from the exact Ghidra exports. It is an index to
code-backed evidence, not a substitute for the complete pseudo-C and assembly.

Common Ghidra aliases in 32-bit entity pointers:

| Offset | Meaning | Ghidra int-array spelling |
| --- | --- | --- |
| `+0xB64` | NPC State | `param_1[0x2d9]` |
| `+0x410` | StateFrame | `param_1[0x104]` |
| `+0xBC0` | AI I1 | `param_1[0x2f0]` |
| `+0xBC4` | AI I2 | `param_1[0x2f1]` |
| `+0xBD8` | Delirium AttackID | `param_1[0x2f6]` |
| `+0xBDC` | Delirium AttackAngle | `param_1[0x2f7]` |
| `+0xBE0` | Delirium CycleID low dword | `param_1[0x2f8]` |
| `+0xBE4` | Delirium CycleID high dword | `param_1[0x2f9]` |
| `+0xC40` | ShieldStrength | `param_1[0x310]` |
| `+0xC44` | shield damage-history capacity | `param_1[0x311]` |
| `+0x3B0` | Invincible | byte at `param_1 + 0xec` in uniform int view |

## Summary

- Ghidra target functions: 239
- Successfully decompiled: 239
- Dispatcher roles: `{'inline_case_first_call_only': 12, 'delegate_handler': 226, 'legacy_target_without_effective_type_route': 1}`
- Dispatcher cases: `{'delegate': 226, 'inline': 14, 'no_handler': 2}`
- Identity routes: `{'delegate': 582, 'inline': 63, 'no_handler': 8}`
- Indexed direct call sites: 15519
- Indexed field-reference lines: 3883

## Delegate Functions

### `0x0043f0c0`

- C: [AI_0043f0c0_0043f0c0.c](ghidra-export/AI_0043f0c0_0043f0c0.c)
- ASM: [AI_0043f0c0_0043f0c0.asm](ghidra-export/AI_0043f0c0_0043f0c0.asm)
- Types: `908`
- Identities: `908.0.0`
- Incoming calls: 1; outgoing calls: 1
- State writes: `0x0043f10e -> State 3; 0x0043f227 -> State 16; 0x0043f2d5 -> State 10; 0x0043f2ee -> State 9; 0x0043f307 -> State 8; 0x0043f5b5 -> State 3; 0x0043f77a -> State 3; 0x0043f8af -> State 3`
- StateFrame writes: `0x0043f25b; 0x0043f28b; 0x0043f5bf; 0x0043f784; 0x0043f8b9`

### `0x00450da0`

- C: [AI_00450da0_00450da0.c](ghidra-export/AI_00450da0_00450da0.c)
- ASM: [AI_00450da0_00450da0.asm](ghidra-export/AI_00450da0_00450da0.asm)
- Types: `901`
- Identities: `901.0.0`
- Incoming calls: 1; outgoing calls: 116
- State writes: `0x00450eb1 -> State 3; 0x00450fd1 -> State 8; 0x00451011 -> State 9; 0x0045103d -> State 10; 0x0045108a -> State 11; 0x00451553 -> State 3; 0x004524cb -> State 3`
- StateFrame writes: `0x004522bf; 0x0045243c; 0x004524d5`
- Shared attack/spawn calls: `0x00450fb6 -> Isaac::genrand_int32 (0x006eef60); 0x00450fe0 -> Isaac::genrand_int32 (0x006eef60); 0x00450ffb -> Isaac::genrand_int32 (0x006eef60); 0x00451020 -> Isaac::genrand_int32 (0x006eef60); 0x0045104c -> Isaac::genrand_int32 (0x006eef60); 0x004510a4 -> Isaac::genrand_int32 (0x006eef60); 0x00451151 -> Isaac::genrand_int32 (0x006eef60); 0x00451190 -> Isaac::genrand_int32 (0x006eef60); 0x004512fc -> Isaac::genrand_int32 (0x006eef60); 0x00451350 -> entity_spawn_relay (0x00428b20); 0x0045135d -> Isaac::genrand_int32 (0x006eef60); 0x00451725 -> Isaac::genrand_int32 (0x006eef60); 0x00451773 -> entity_spawn_relay (0x00428b20); 0x0045177a -> Isaac::genrand_int32 (0x006eef60); 0x004518fe -> Isaac::genrand_int32 (0x006eef60); 0x004519c9 -> Isaac::genrand_int32 (0x006eef60); 0x00451a6d -> Isaac::genrand_int32 (0x006eef60); 0x00451ba3 -> Isaac::genrand_int32 (0x006eef60); 0x00451c5f -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00451c7e -> Isaac::genrand_int32 (0x006eef60); 0x00451d09 -> entity_spawn_relay (0x00428b20); 0x00451d16 -> Isaac::genrand_int32 (0x006eef60); 0x00451f7b -> Isaac::genrand_int32 (0x006eef60); 0x00451fa1 -> entity_spawn_relay (0x00428b20); 0x004521db -> Isaac::genrand_int32 (0x006eef60); 0x00452201 -> entity_spawn_relay (0x00428b20); 0x0045228c -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004522b8 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00452316 -> damage_filter (0x006ac560); 0x00452461 -> Isaac::genrand_int32 (0x006eef60); 0x00452481 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x004527ec -> Isaac::genrand_int32 (0x006eef60); 0x0045280c -> entity_spawn_relay (0x00428b20); 0x00452886 -> Isaac::genrand_int32 (0x006eef60); 0x004528a5 -> Isaac::genrand_int32 (0x006eef60); 0x004528de -> Isaac::genrand_int32 (0x006eef60)`

### `0x00453140`

- C: [AI_00453140_00453140.c](ghidra-export/AI_00453140_00453140.c)
- ASM: [AI_00453140_00453140.asm](ghidra-export/AI_00453140_00453140.asm)
- Types: `411`
- Identities: `411.0.0, 411.1.0, 411.2.0`
- Incoming calls: 1; outgoing calls: 211
- State writes: `0x0045332a -> State 3; 0x004534f4 -> State 4; 0x00453ec7 -> State 16; 0x00453ef1 -> State 13; 0x0045402e -> State 3; 0x00454662 -> State 16; 0x0045468a -> State 3; 0x00454771 -> State 3; 0x00454a17 -> State 8; 0x00454a28 -> State 9; 0x00454a39 -> State 10; 0x00454a4a -> State 11; 0x00454a56 -> State 3; 0x00454d3b -> State 9; 0x00454d49 -> State 10; 0x004552f7 -> State 5; 0x00455698 -> State 5; 0x00455ab3 -> State 5; 0x00455d52 -> State 5; 0x00455e82 -> State 3`
- StateFrame writes: `0x00453390; 0x0045341e; 0x004534fe; 0x00453595; 0x004539c8; 0x00453f3d; 0x00453fdc; 0x00454055; 0x00454658; 0x004546d3; 0x0045477b; 0x00454c17; 0x00454d1a; 0x00454d70; 0x00454edb; 0x00454fa8; 0x00454fc4; 0x0045537c; 0x00455714; 0x00455cec; 0x00455f46; 0x00455fe2`
- Invincible writes: `0x00453424 = 0; 0x00453e11 = None; 0x00453eb5 = 0; 0x00454038 = 0; 0x004545ef = 0; 0x004549d7 = None; 0x00454e15 = 0; 0x00455348 = 0; 0x004556ea = 0; 0x00455d02 = 1; 0x00455e93 = 1`
- Shared attack/spawn calls: `0x00453236 -> Isaac::genrand_int32 (0x006eef60); 0x00453258 -> entity_spawn_relay (0x00428b20); 0x0045359b -> Isaac::genrand_int32 (0x006eef60); 0x004535f3 -> Isaac::genrand_int32 (0x006eef60); 0x0045376f -> Isaac::genrand_int32 (0x006eef60); 0x00453894 -> Isaac::genrand_int32 (0x006eef60); 0x004538cb -> entity_spawn_relay (0x00428b20); 0x00453fa7 -> Isaac::genrand_int32 (0x006eef60); 0x004542b7 -> Isaac::genrand_int32 (0x006eef60); 0x0045431d -> entity_spawn_relay (0x00428b20); 0x00454a60 -> Isaac::genrand_int32 (0x006eef60); 0x00454b21 -> Isaac::genrand_int32 (0x006eef60); 0x00454b5e -> entity_spawn_relay (0x00428b20); 0x0045539a -> Isaac::genrand_int32 (0x006eef60); 0x004553c4 -> Isaac::genrand_int32 (0x006eef60); 0x004553e2 -> entity_spawn_relay (0x00428b20); 0x00455441 -> Isaac::genrand_int32 (0x006eef60); 0x00455813 -> Isaac::genrand_int32 (0x006eef60); 0x0045592b -> entity_spawn_relay (0x00428b20); 0x004559c0 -> Isaac::genrand_int32 (0x006eef60); 0x00455a11 -> Isaac::genrand_int32 (0x006eef60); 0x00455b43 -> Isaac::genrand_int32 (0x006eef60); 0x00455bf1 -> Isaac::genrand_int32 (0x006eef60); 0x00455c13 -> entity_spawn_relay (0x00428b20); 0x00456035 -> Isaac::genrand_int32 (0x006eef60); 0x00456072 -> Isaac::genrand_int32 (0x006eef60); 0x004560bd -> entity_spawn_relay (0x00428b20)`

### `0x00456c40`

- C: [AI_00456c40_00456c40.c](ghidra-export/AI_00456c40_00456c40.c)
- ASM: [AI_00456c40_00456c40.asm](ghidra-export/AI_00456c40_00456c40.asm)
- Types: `63`
- Identities: `63.0.0`
- Incoming calls: 1; outgoing calls: 54
- State writes: `0x00456cbe -> State 4; 0x00456d41 -> State 9; 0x004572fa -> State 13; 0x004573f3 -> State 8; 0x004577c3 -> State 4`
- StateFrame writes: `0x0045731c; 0x004573fd; 0x0045778c`
- Shared attack/spawn calls: `0x00456d4b -> Isaac::genrand_int32 (0x006eef60); 0x00456d67 -> entity_spawn_relay (0x00428b20); 0x00456e27 -> Isaac::genrand_int32 (0x006eef60); 0x00456f6f -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0045703c -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004572b9 -> Isaac::genrand_int32 (0x006eef60); 0x00457351 -> Isaac::genrand_int32 (0x006eef60); 0x0045735e -> Isaac::genrand_int32 (0x006eef60); 0x00457483 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004574d6 -> Isaac::genrand_int32 (0x006eef60); 0x0045753f -> entity_spawn_relay (0x00428b20)`

### `0x00457840`

- C: [AI_00457840_00457840.c](ghidra-export/AI_00457840_00457840.c)
- ASM: [AI_00457840_00457840.asm](ghidra-export/AI_00457840_00457840.asm)
- Types: `64`
- Identities: `64.0.0`
- Incoming calls: 1; outgoing calls: 76
- State writes: `0x00457896 -> State 4; 0x00457e45 -> State 13; 0x00457ec8 -> State 8; 0x004582c5 -> State 8; 0x004585dc -> State 4`
- StateFrame writes: `0x00457e4f; 0x00457edb; 0x00457f0a; 0x00458158; 0x004582eb; 0x004585c8`
- Shared attack/spawn calls: `0x00457937 -> Isaac::genrand_int32 (0x006eef60); 0x00457974 -> Isaac::genrand_int32 (0x006eef60); 0x0045797b -> Isaac::genrand_int32 (0x006eef60); 0x00457a31 -> entity_spawn_relay (0x00428b20); 0x00457ab3 -> Isaac::genrand_int32 (0x006eef60); 0x00457b0d -> entity_spawn_relay (0x00428b20); 0x00457b97 -> Isaac::genrand_int32 (0x006eef60); 0x00457bd5 -> entity_spawn_relay (0x00428b20); 0x00457e24 -> Isaac::genrand_int32 (0x006eef60); 0x00457e7d -> Isaac::genrand_int32 (0x006eef60); 0x00457ffb -> Isaac::genrand_int32 (0x006eef60); 0x00458019 -> Isaac::genrand_int32 (0x006eef60); 0x0045806b -> entity_spawn_relay (0x00428b20); 0x00458087 -> Isaac::genrand_int32 (0x006eef60); 0x004580d3 -> entity_spawn_relay (0x00428b20); 0x004580e5 -> Isaac::genrand_int32 (0x006eef60); 0x00458134 -> entity_spawn_relay (0x00428b20); 0x00458255 -> Isaac::genrand_int32 (0x006eef60); 0x0045827b -> Isaac::genrand_int32 (0x006eef60); 0x00458412 -> Isaac::genrand_int32 (0x006eef60); 0x0045847f -> entity_spawn_relay (0x00428b20); 0x0045852b -> Isaac::genrand_int32 (0x006eef60); 0x004586bf -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x004587f4 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00458870`

- C: [AI_00458870_00458870.c](ghidra-export/AI_00458870_00458870.c)
- ASM: [AI_00458870_00458870.asm](ghidra-export/AI_00458870_00458870.asm)
- Types: `65`
- Identities: `65.0.0, 65.1.0, 65.10.0`
- Incoming calls: 1; outgoing calls: 81
- State writes: `0x004588da -> State 4; 0x004589dd -> State 8; 0x00458de5 -> State 8; 0x00458e5d -> State 4; 0x0045906f -> State 8; 0x004591a9 -> State 9; 0x00459246 -> State 6; 0x0045933b -> State 4; 0x004596fd -> State 9; 0x00459c58 -> State 4`
- StateFrame writes: `0x004588f2; 0x004589c9; 0x00458d8c; 0x00458ddb; 0x00458e42; 0x00458e67; 0x00459081; 0x004591ce; 0x0045926c; 0x0045935a; 0x00459728; 0x00459c21`
- Shared attack/spawn calls: `0x00458952 -> Isaac::genrand_int32 (0x006eef60); 0x00458974 -> entity_spawn_relay (0x00428b20); 0x00458d45 -> Entity_NPC::projectile_helper (0x006bec40); 0x00458ecb -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00459025 -> Isaac::genrand_int32 (0x006eef60); 0x004590c0 -> Isaac::genrand_int32 (0x006eef60); 0x004590f4 -> Isaac::genrand_int32 (0x006eef60); 0x004591b3 -> Isaac::genrand_int32 (0x006eef60); 0x004591f2 -> Isaac::genrand_int32 (0x006eef60); 0x0045921d -> Isaac::genrand_int32 (0x006eef60); 0x00459303 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00459460 -> Isaac::genrand_int32 (0x006eef60); 0x004595b3 -> Isaac::genrand_int32 (0x006eef60); 0x004595d5 -> entity_spawn_relay (0x00428b20); 0x0045965b -> Isaac::genrand_int32 (0x006eef60); 0x00459674 -> Isaac::genrand_int32 (0x006eef60); 0x00459693 -> entity_spawn_relay (0x00428b20); 0x00459864 -> Isaac::genrand_int32 (0x006eef60); 0x004598f7 -> Isaac::genrand_int32 (0x006eef60); 0x00459948 -> Isaac::genrand_int32 (0x006eef60); 0x00459980 -> entity_spawn_relay (0x00428b20); 0x00459c86 -> Isaac::genrand_int32 (0x006eef60); 0x00459c9f -> entity_spawn_relay (0x00428b20)`

### `0x00459d20`

- C: [AI_00459d20_00459d20.c](ghidra-export/AI_00459d20_00459d20.c)
- ASM: [AI_00459d20_00459d20.asm](ghidra-export/AI_00459d20_00459d20.asm)
- Types: `66`
- Identities: `66.0.0, 66.10.0, 66.20.0, 66.30.0`
- Incoming calls: 1; outgoing calls: 128
- State writes: `0x00459e2c -> State 4; 0x00459eb7 -> State 6; 0x0045a003 -> State 13; 0x0045a046 -> State 8; 0x0045a0ad -> State 14; 0x0045a97c -> State 4; 0x0045aa0b -> State 0; 0x0045ac24 -> State 3; 0x0045ace0 -> State 4; 0x0045afda -> State 4; 0x0045b301 -> State 7; 0x0045b34e -> State 4; 0x0045b499 -> State 13; 0x0045b769 -> State 4`
- StateFrame writes: `0x0045a00d; 0x0045a050; 0x0045a0b7; 0x0045a186; 0x0045a506; 0x0045a7f0; 0x0045ac67; 0x0045acba; 0x0045acc6; 0x0045ad2e; 0x0045b30b; 0x0045b333; 0x0045b4a3; 0x0045b576`
- Shared attack/spawn calls: `0x00459fae -> Isaac::genrand_int32 (0x006eef60); 0x00459fe3 -> Isaac::genrand_int32 (0x006eef60); 0x0045a01c -> Isaac::genrand_int32 (0x006eef60); 0x0045a05b -> Isaac::genrand_int32 (0x006eef60); 0x0045a240 -> Isaac::genrand_int32 (0x006eef60); 0x0045a279 -> entity_spawn_relay (0x00428b20); 0x0045a28a -> Isaac::genrand_int32 (0x006eef60); 0x0045a2c3 -> entity_spawn_relay (0x00428b20); 0x0045a2f4 -> Isaac::genrand_int32 (0x006eef60); 0x0045a386 -> Isaac::genrand_int32 (0x006eef60); 0x0045a3b1 -> entity_spawn_relay (0x00428b20); 0x0045a668 -> Isaac::genrand_int32 (0x006eef60); 0x0045a692 -> entity_spawn_relay (0x00428b20); 0x0045aa3d -> Isaac::genrand_int32 (0x006eef60); 0x0045aa88 -> entity_spawn_relay (0x00428b20); 0x0045b447 -> Isaac::genrand_int32 (0x006eef60); 0x0045b64d -> Isaac::genrand_int32 (0x006eef60); 0x0045b686 -> entity_spawn_relay (0x00428b20); 0x0045b697 -> Isaac::genrand_int32 (0x006eef60); 0x0045b6d0 -> entity_spawn_relay (0x00428b20); 0x0045b6de -> Isaac::genrand_int32 (0x006eef60); 0x0045b717 -> entity_spawn_relay (0x00428b20); 0x0045b724 -> Isaac::genrand_int32 (0x006eef60); 0x0045b75d -> entity_spawn_relay (0x00428b20)`

### `0x0045b830`

- C: [AI_0045b830_0045b830.c](ghidra-export/AI_0045b830_0045b830.c)
- ASM: [AI_0045b830_0045b830.asm](ghidra-export/AI_0045b830_0045b830.asm)
- Types: `81`
- Identities: `81.0.0, 81.1.0`
- Incoming calls: 1; outgoing calls: 81
- State writes: `0x0045bb3e -> State 13; 0x0045bd40 -> State 9; 0x0045be09 -> State 10; 0x0045be1e -> State 11; 0x0045bfb2 -> State 8; 0x0045c1d6 -> State 10; 0x0045c1eb -> State 11; 0x0045c4f2 -> State 10; 0x0045cd38 -> State 4`
- StateFrame writes: `0x0045bb48; 0x0045bd4a; 0x0045bf4d; 0x0045bfbc; 0x0045bfd4; 0x0045c31d; 0x0045c357; 0x0045c39b; 0x0045c4fc; 0x0045c65c; 0x0045ca9a`
- Shared attack/spawn calls: `0x0045bcb2 -> Isaac::genrand_int32 (0x006eef60); 0x0045bd0d -> Isaac::genrand_int32 (0x006eef60); 0x0045bd68 -> Isaac::genrand_int32 (0x006eef60); 0x0045bdd2 -> Isaac::genrand_int32 (0x006eef60); 0x0045be15 -> Isaac::genrand_int32 (0x006eef60); 0x0045be37 -> Isaac::genrand_int32 (0x006eef60); 0x0045bf5c -> Isaac::genrand_int32 (0x006eef60); 0x0045c179 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0045c196 -> Isaac::genrand_int32 (0x006eef60); 0x0045c1e2 -> Isaac::genrand_int32 (0x006eef60); 0x0045c204 -> Isaac::genrand_int32 (0x006eef60); 0x0045c3a6 -> Isaac::genrand_int32 (0x006eef60); 0x0045c3e6 -> Entity_NPC::projectile_helper (0x006bec40); 0x0045c516 -> Isaac::genrand_int32 (0x006eef60); 0x0045c6b0 -> Isaac::genrand_int32 (0x006eef60); 0x0045c6da -> entity_spawn_relay (0x00428b20); 0x0045c767 -> Isaac::genrand_int32 (0x006eef60); 0x0045c7c2 -> entity_spawn_relay (0x00428b20); 0x0045cacb -> Isaac::genrand_int32 (0x006eef60)`

### `0x0045cd60`

- C: [AI_0045cd60_0045cd60.c](ghidra-export/AI_0045cd60_0045cd60.c)
- ASM: [AI_0045cd60_0045cd60.asm](ghidra-export/AI_0045cd60_0045cd60.asm)
- Types: `82, 83`
- Identities: `82.0.0, 83.0.0`
- Incoming calls: 1; outgoing calls: 38
- State writes: `0x0045cf26 -> State 8; 0x0045d2dc -> State 9; 0x0045d3a6 -> State 8; 0x0045d7a7 -> State 4`
- StateFrame writes: `0x0045cf30; 0x0045cf69; 0x0045d2e6; 0x0045d3ef; 0x0045d40c; 0x0045d725`
- Shared attack/spawn calls: `0x0045cf06 -> Isaac::genrand_int32 (0x006eef60); 0x0045cfd8 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0045d264 -> Entity_NPC::projectile_helper (0x006bec40); 0x0045d292 -> Isaac::genrand_int32 (0x006eef60); 0x0045d311 -> Isaac::genrand_int32 (0x006eef60); 0x0045d343 -> Isaac::genrand_int32 (0x006eef60); 0x0045d3e0 -> Isaac::genrand_int32 (0x006eef60); 0x0045d508 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x0045d7d0`

- C: [AI_0045d7d0_0045d7d0.c](ghidra-export/AI_0045d7d0_0045d7d0.c)
- ASM: [AI_0045d7d0_0045d7d0.asm](ghidra-export/AI_0045d7d0_0045d7d0.asm)
- Types: `267`
- Identities: `267.0.0`
- Incoming calls: 1; outgoing calls: 38
- State writes: `0x0045d842 -> State 4; 0x0045d97c -> State 16; 0x0045d9bc -> State 8; 0x0045dac8 -> State 10; 0x0045db50 -> State 9; 0x0045ddff -> State 4; 0x0045df98 -> State 4; 0x0045dfdc -> State 4`
- StateFrame writes: `0x0045d84c; 0x0045d8d1; 0x0045d986; 0x0045d9c6; 0x0045dad2; 0x0045db5a; 0x0045dbcb; 0x0045dce1; 0x0045de09; 0x0045de32; 0x0045df61; 0x0045dfa2; 0x0045dfc2; 0x0045dfe6`
- Shared attack/spawn calls: `0x0045d92d -> Isaac::genrand_int32 (0x006eef60); 0x0045d9aa -> Isaac::genrand_int32 (0x006eef60); 0x0045d9fd -> Isaac::genrand_int32 (0x006eef60); 0x0045da33 -> Isaac::genrand_int32 (0x006eef60); 0x0045db29 -> Isaac::genrand_int32 (0x006eef60); 0x0045dcce -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x0045e050`

- C: [AI_0045e050_0045e050.c](ghidra-export/AI_0045e050_0045e050.c)
- ASM: [AI_0045e050_0045e050.asm](ghidra-export/AI_0045e050_0045e050.asm)
- Types: `268`
- Identities: `268.0.0`
- Incoming calls: 1; outgoing calls: 63
- State writes: `0x0045e0f1 -> State 4; 0x0045e2f7 -> State 16; 0x0045e36a -> State 8; 0x0045e5b7 -> State 13; 0x0045e61e -> State 6; 0x0045ee02 -> State 4; 0x0045ee7d -> State 4`
- StateFrame writes: `0x0045e0fb; 0x0045e178; 0x0045e301; 0x0045e374; 0x0045e6ae; 0x0045e6cb; 0x0045eb25; 0x0045ee0c; 0x0045ee38; 0x0045ee87`
- Shared attack/spawn calls: `0x0045e0be -> Entity_NPC::projectile_helper (0x006bec40); 0x0045e2c0 -> Isaac::genrand_int32 (0x006eef60); 0x0045e331 -> Isaac::genrand_int32 (0x006eef60); 0x0045e589 -> Isaac::genrand_int32 (0x006eef60); 0x0045e608 -> Isaac::genrand_int32 (0x006eef60); 0x0045e98b -> Isaac::genrand_int32 (0x006eef60); 0x0045e9aa -> Entity::Create dispatcher (0x006fe410); 0x0045ec91 -> Isaac::genrand_int32 (0x006eef60); 0x0045ecb5 -> Entity::Create dispatcher (0x006fe410)`

### `0x0045ef20`

- C: [AI_0045ef20_0045ef20.c](ghidra-export/AI_0045ef20_0045ef20.c)
- ASM: [AI_0045ef20_0045ef20.asm](ghidra-export/AI_0045ef20_0045ef20.asm)
- Types: `262`
- Identities: `262.0.0`
- Incoming calls: 1; outgoing calls: 53
- State writes: `0x0045ef82 -> State 3; 0x0045f0d1 -> State 8; 0x0045f1e9 -> State 13; 0x0045f1f8 -> State 9; 0x0045f862 -> State 3; 0x0045fbaf -> State 3`
- StateFrame writes: `0x0045ef8c`
- Shared attack/spawn calls: `0x0045f0c8 -> Isaac::genrand_int32 (0x006eef60); 0x0045f0ff -> Isaac::genrand_int32 (0x006eef60); 0x0045f152 -> Isaac::genrand_int32 (0x006eef60); 0x0045f32b -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0045f3d9 -> Isaac::genrand_int32 (0x006eef60); 0x0045f803 -> Isaac::genrand_int32 (0x006eef60); 0x0045fa01 -> Isaac::genrand_int32 (0x006eef60); 0x0045fa71 -> Isaac::genrand_int32 (0x006eef60); 0x0045fab0 -> Entity::Create dispatcher (0x006fe410)`

### `0x0045fc00`

- C: [AI_0045fc00_0045fc00.c](ghidra-export/AI_0045fc00_0045fc00.c)
- ASM: [AI_0045fc00_0045fc00.asm](ghidra-export/AI_0045fc00_0045fc00.asm)
- Types: `263`
- Identities: `263.0.0`
- Incoming calls: 1; outgoing calls: 49
- State writes: `0x0045fc2e -> State 3; 0x0045fe4a -> State 13; 0x0045feb9 -> State 8; 0x0045fedf -> State 9; 0x0045fefd -> State 9; 0x0045ff96 -> State 3; 0x004600d0 -> State 3; 0x004604c3 -> State 3; 0x00460716 -> State 3`
- StateFrame writes: `0x0045fc38; 0x0045ff88; 0x004604cd`
- Shared attack/spawn calls: `0x0045fe1a -> Isaac::genrand_int32 (0x006eef60); 0x0045fed6 -> Isaac::genrand_int32 (0x006eef60); 0x0045ff11 -> Isaac::genrand_int32 (0x006eef60); 0x0045ff1f -> Isaac::genrand_int32 (0x006eef60); 0x0045ff5c -> Isaac::genrand_int32 (0x006eef60); 0x004603e5 -> Isaac::genrand_int32 (0x006eef60); 0x004605cc -> Isaac::genrand_int32 (0x006eef60); 0x00460617 -> Entity::Create dispatcher (0x006fe410)`

### `0x00460780`

- C: [AI_00460780_00460780.c](ghidra-export/AI_00460780_00460780.c)
- ASM: [AI_00460780_00460780.asm](ghidra-export/AI_00460780_00460780.asm)
- Types: `264`
- Identities: `264.0.0`
- Incoming calls: 1; outgoing calls: 106
- State writes: `0x004607dc -> State 3; 0x00460ad4 -> State 16; 0x00460b02 -> State 10; 0x00460b2f -> State 6; 0x00460ee8 -> State 8; 0x00461437 -> State 7; 0x00461ca2 -> State 3`
- StateFrame writes: `0x004607e6; 0x004609e7; 0x00461cac`
- Shared attack/spawn calls: `0x004609f6 -> Isaac::genrand_int32 (0x006eef60); 0x00460a1a -> Isaac::genrand_int32 (0x006eef60); 0x00460ab7 -> Isaac::genrand_int32 (0x006eef60); 0x00460b39 -> Entity_NPC::projectile_helper (0x006bec40); 0x00460b8a -> Isaac::genrand_int32 (0x006eef60); 0x00461151 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004611c7 -> Isaac::genrand_int32 (0x006eef60); 0x00461214 -> Isaac::genrand_int32 (0x006eef60); 0x0046130a -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004616a4 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004616d3 -> Isaac::genrand_int32 (0x006eef60); 0x00461710 -> Isaac::genrand_int32 (0x006eef60); 0x0046172e -> Entity::Create dispatcher (0x006fe410); 0x004617d0 -> Isaac::genrand_int32 (0x006eef60); 0x004617d7 -> Isaac::genrand_int32 (0x006eef60); 0x00461810 -> Isaac::genrand_int32 (0x006eef60); 0x004618ae -> Entity::Create dispatcher (0x006fe410); 0x00461a1e -> Isaac::genrand_int32 (0x006eef60); 0x00461a42 -> Entity::Create dispatcher (0x006fe410); 0x00461ae4 -> Isaac::genrand_int32 (0x006eef60); 0x00461af2 -> Isaac::genrand_int32 (0x006eef60); 0x00461b20 -> Isaac::genrand_int32 (0x006eef60); 0x00461b50 -> Isaac::genrand_int32 (0x006eef60); 0x00461b89 -> Isaac::genrand_int32 (0x006eef60); 0x00461c3e -> Entity::Create dispatcher (0x006fe410); 0x00461d08 -> Isaac::genrand_int32 (0x006eef60); 0x00461f5a -> Isaac::genrand_int32 (0x006eef60); 0x00461fb3 -> Entity_NPC::FireBossProjectiles (0x006ccdd0)`

### `0x00461fc0`

- C: [AI_00461fc0_00461fc0.c](ghidra-export/AI_00461fc0_00461fc0.c)
- ASM: [AI_00461fc0_00461fc0.asm](ghidra-export/AI_00461fc0_00461fc0.asm)
- Types: `97`
- Identities: `97.0.0`
- Incoming calls: 1; outgoing calls: 45
- State writes: `0x00462336 -> State 4; 0x00462448 -> State 9; 0x004624c9 -> State 9`
- Invincible writes: `0x00462340 = 1; 0x00462484 = 0`
- Shared attack/spawn calls: `0x0046220c -> Isaac::genrand_int32 (0x006eef60); 0x00462239 -> entity_spawn_relay (0x00428b20); 0x00462539 -> Isaac::genrand_int32 (0x006eef60); 0x00462603 -> Isaac::genrand_int32 (0x006eef60); 0x00462bca -> Isaac::genrand_int32 (0x006eef60)`

### `0x00463100`

- C: [AI_00463100_00463100.c](ghidra-export/AI_00463100_00463100.c)
- ASM: [AI_00463100_00463100.asm](ghidra-export/AI_00463100_00463100.asm)
- Types: `102`
- Identities: `102.0.0, 102.1.0, 102.2.0`
- Incoming calls: 1; outgoing calls: 165
- State writes: `0x00463193 -> State 3; 0x00463314 -> State 16; 0x00463474 -> State 16; 0x004643c0 -> State 6; 0x00464421 -> State 8; 0x00464555 -> State 9; 0x004654f5 -> State 3; 0x0046591a -> State 8; 0x00466460 -> State 3`
- StateFrame writes: `0x00463189; 0x00463c23; 0x00463e76`
- Shared attack/spawn calls: `0x0046319d -> Isaac::genrand_int32 (0x006eef60); 0x00463205 -> Isaac::genrand_int32 (0x006eef60); 0x00463212 -> Isaac::genrand_int32 (0x006eef60); 0x0046332c -> Isaac::genrand_int32 (0x006eef60); 0x00463359 -> entity_spawn_relay (0x00428b20); 0x00463399 -> Isaac::genrand_int32 (0x006eef60); 0x004633c6 -> entity_spawn_relay (0x00428b20); 0x00463628 -> Isaac::genrand_int32 (0x006eef60); 0x004637a4 -> Isaac::genrand_int32 (0x006eef60); 0x00463928 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004639dd -> Isaac::genrand_int32 (0x006eef60); 0x00463a11 -> Isaac::genrand_int32 (0x006eef60); 0x00463a38 -> Isaac::genrand_int32 (0x006eef60); 0x00463a94 -> Isaac::genrand_int32 (0x006eef60); 0x00463acc -> Isaac::genrand_int32 (0x006eef60); 0x00463b0f -> Isaac::genrand_int32 (0x006eef60); 0x00463ba7 -> entity_spawn_relay (0x00428b20); 0x00463c19 -> Isaac::genrand_int32 (0x006eef60); 0x00463c3c -> Isaac::genrand_int32 (0x006eef60); 0x00463c9b -> Isaac::genrand_int32 (0x006eef60); 0x00463d4b -> Isaac::genrand_int32 (0x006eef60); 0x00463d91 -> Isaac::genrand_int32 (0x006eef60); 0x00463e08 -> Isaac::genrand_int32 (0x006eef60); 0x00463e27 -> entity_spawn_relay (0x00428b20); 0x00463ed2 -> Isaac::genrand_int32 (0x006eef60); 0x00463f18 -> Isaac::genrand_int32 (0x006eef60); 0x00463fa5 -> Isaac::genrand_int32 (0x006eef60); 0x00464132 -> Isaac::genrand_int32 (0x006eef60); 0x00464154 -> entity_spawn_relay (0x00428b20); 0x004643b6 -> Isaac::genrand_int32 (0x006eef60); 0x0046444a -> Isaac::genrand_int32 (0x006eef60); 0x0046445a -> Isaac::genrand_int32 (0x006eef60); 0x00464496 -> Isaac::genrand_int32 (0x006eef60); 0x00464593 -> Isaac::genrand_int32 (0x006eef60); 0x00464a3a -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00464ff2 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004650ed -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004651a9 -> Isaac::genrand_int32 (0x006eef60); 0x0046532e -> Isaac::genrand_int32 (0x006eef60); 0x004653b2 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004654ff -> Isaac::genrand_int32 (0x006eef60); 0x004655e8 -> Isaac::genrand_int32 (0x006eef60); 0x004655fd -> Isaac::genrand_int32 (0x006eef60); 0x0046560b -> Isaac::genrand_int32 (0x006eef60); 0x004656f1 -> Isaac::genrand_int32 (0x006eef60); 0x0046573c -> Isaac::genrand_int32 (0x006eef60); 0x00465d39 -> Isaac::genrand_int32 (0x006eef60); 0x00465d5b -> entity_spawn_relay (0x00428b20); 0x004661c9 -> Isaac::genrand_int32 (0x006eef60); 0x00466539 -> Isaac::genrand_int32 (0x006eef60); 0x0046655b -> entity_spawn_relay (0x00428b20)`

### `0x00466600`

- C: [AI_00466600_00466600.c](ghidra-export/AI_00466600_00466600.c)
- ASM: [AI_00466600_00466600.asm](ghidra-export/AI_00466600_00466600.asm)
- Types: `71, 72, 73`
- Identities: `71.0.0, 71.1.0, 72.0.0, 72.1.0, 73.0.0, 73.1.0`
- Incoming calls: 1; outgoing calls: 58
- Shared attack/spawn calls: `0x0046673f -> Isaac::genrand_int32 (0x006eef60); 0x0046682e -> Isaac::genrand_int32 (0x006eef60); 0x00466b21 -> Isaac::genrand_int32 (0x006eef60); 0x00466b8b -> Isaac::genrand_int32 (0x006eef60); 0x00466c06 -> entity_spawn_relay (0x00428b20); 0x00466c8e -> Isaac::genrand_int32 (0x006eef60); 0x00466d0b -> entity_spawn_relay (0x00428b20); 0x00466da7 -> Isaac::genrand_int32 (0x006eef60); 0x00466e0a -> entity_spawn_relay (0x00428b20); 0x00466e8a -> Isaac::genrand_int32 (0x006eef60); 0x00466eed -> entity_spawn_relay (0x00428b20); 0x00466f76 -> Isaac::genrand_int32 (0x006eef60); 0x00466fc6 -> entity_spawn_relay (0x00428b20); 0x0046708c -> Isaac::genrand_int32 (0x006eef60); 0x004670ff -> entity_spawn_relay (0x00428b20); 0x0046717f -> Isaac::genrand_int32 (0x006eef60); 0x004671f2 -> entity_spawn_relay (0x00428b20); 0x004673e1 -> Isaac::genrand_int32 (0x006eef60); 0x0046740b -> entity_spawn_relay (0x00428b20); 0x004675bb -> Isaac::genrand_int32 (0x006eef60); 0x004675e9 -> entity_spawn_relay (0x00428b20)`

### `0x00467670`

- C: [AI_00467670_00467670.c](ghidra-export/AI_00467670_00467670.c)
- ASM: [AI_00467670_00467670.asm](ghidra-export/AI_00467670_00467670.asm)
- Types: `69`
- Identities: `69.0.0, 69.1.0`
- Incoming calls: 1; outgoing calls: 62
- State writes: `0x004676f4 -> State 3; 0x0046797b -> State 3; 0x00467a97 -> State 6; 0x00467ad0 -> State 9; 0x00467b09 -> State 10; 0x00467b8d -> State 8; 0x00467db9 -> State 7`
- StateFrame writes: `0x00467aa1; 0x00467ada; 0x00467b13; 0x00467b97; 0x0046813b`
- Shared attack/spawn calls: `0x00467a2e -> Isaac::genrand_int32 (0x006eef60); 0x00467ab0 -> Isaac::genrand_int32 (0x006eef60); 0x00467ae9 -> Isaac::genrand_int32 (0x006eef60); 0x00467b22 -> Isaac::genrand_int32 (0x006eef60); 0x00467b4b -> Isaac::genrand_int32 (0x006eef60); 0x00467b66 -> Isaac::genrand_int32 (0x006eef60); 0x00467e4a -> Isaac::genrand_int32 (0x006eef60); 0x00467e6a -> entity_spawn_relay (0x00428b20); 0x00467f46 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00468136 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00468180`

- C: [AI_00468180_00468180.c](ghidra-export/AI_00468180_00468180.c)
- ASM: [AI_00468180_00468180.asm](ghidra-export/AI_00468180_00468180.asm)
- Types: `101`
- Identities: `101.0.0, 101.1.0`
- Incoming calls: 1; outgoing calls: 126
- State writes: `0x004681c4 -> State 3; 0x0046826d -> State 4; 0x00468340 -> State 7; 0x00468396 -> State 3`
- StateFrame writes: `0x00468282`
- Shared attack/spawn calls: `0x00468251 -> Isaac::genrand_int32 (0x006eef60); 0x00468579 -> Isaac::genrand_int32 (0x006eef60); 0x00468597 -> Entity::Create dispatcher (0x006fe410); 0x0046859e -> Isaac::genrand_int32 (0x006eef60); 0x0046875d -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0046876c -> Isaac::genrand_int32 (0x006eef60); 0x004687e5 -> Isaac::genrand_int32 (0x006eef60); 0x0046947f -> Isaac::genrand_int32 (0x006eef60); 0x004694f0 -> Isaac::genrand_int32 (0x006eef60); 0x00469512 -> Entity::Create dispatcher (0x006fe410); 0x004696ac -> Isaac::genrand_int32 (0x006eef60); 0x004696c7 -> Entity::Create dispatcher (0x006fe410); 0x0046979a -> Isaac::genrand_int32 (0x006eef60); 0x0046980c -> Isaac::genrand_int32 (0x006eef60); 0x00469818 -> Isaac::genrand_int32 (0x006eef60); 0x00469999 -> Isaac::genrand_int32 (0x006eef60); 0x00469a1a -> Isaac::genrand_int32 (0x006eef60); 0x00469a55 -> Isaac::genrand_int32 (0x006eef60); 0x00469aaa -> Isaac::genrand_int32 (0x006eef60); 0x00469ad0 -> Isaac::genrand_int32 (0x006eef60); 0x00469b49 -> Isaac::genrand_int32 (0x006eef60); 0x00469b97 -> Isaac::genrand_int32 (0x006eef60); 0x00469bd2 -> Isaac::genrand_int32 (0x006eef60); 0x00469c47 -> Isaac::genrand_int32 (0x006eef60); 0x00469c67 -> Entity::Create dispatcher (0x006fe410); 0x00469dd1 -> Isaac::genrand_int32 (0x006eef60); 0x00469e66 -> Isaac::genrand_int32 (0x006eef60); 0x00469e8b -> Entity::Create dispatcher (0x006fe410)`

### `0x0046a0f0`

- C: [AI_0046a0f0_0046a0f0.c](ghidra-export/AI_0046a0f0_0046a0f0.c)
- ASM: [AI_0046a0f0_0046a0f0.asm](ghidra-export/AI_0046a0f0_0046a0f0.asm)
- Types: `19, 89, 239`
- Identities: `19.0.0, 19.1.0, 19.2.0, 19.3.0, 239.0.0, 239.100.0, 239.101.0, 89.0.0`
- Incoming calls: 1; outgoing calls: 123
- State writes: `0x0046abbe -> State 4`
- StateFrame writes: `0x0046a87a; 0x0046b6e2; 0x0046b74d`
- Shared attack/spawn calls: `0x0046a494 -> Isaac::genrand_int32 (0x006eef60); 0x0046a4fa -> Isaac::genrand_int32 (0x006eef60); 0x0046a5ad -> Isaac::genrand_int32 (0x006eef60); 0x0046a5ca -> Isaac::genrand_int32 (0x006eef60); 0x0046a5e4 -> Isaac::genrand_int32 (0x006eef60); 0x0046a5fe -> Isaac::genrand_int32 (0x006eef60); 0x0046a61c -> entity_spawn_relay (0x00428b20); 0x0046a775 -> Isaac::genrand_int32 (0x006eef60); 0x0046a78e -> entity_spawn_relay (0x00428b20); 0x0046a7d7 -> Isaac::genrand_int32 (0x006eef60); 0x0046a7ec -> Isaac::genrand_int32 (0x006eef60); 0x0046ac2a -> Isaac::genrand_int32 (0x006eef60); 0x0046ac94 -> Isaac::genrand_int32 (0x006eef60); 0x0046acd2 -> Isaac::genrand_int32 (0x006eef60); 0x0046ad03 -> Isaac::genrand_int32 (0x006eef60); 0x0046b17a -> Isaac::genrand_int32 (0x006eef60); 0x0046b18c -> Isaac::genrand_int32 (0x006eef60); 0x0046b543 -> Isaac::genrand_int32 (0x006eef60); 0x0046b788 -> Isaac::genrand_int32 (0x006eef60); 0x0046b7e3 -> Isaac::genrand_int32 (0x006eef60); 0x0046b873 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0046bd65 -> Isaac::genrand_int32 (0x006eef60); 0x0046bd88 -> Isaac::genrand_int32 (0x006eef60)`

### `0x0046c0a0`

- C: [AI_0046c0a0_0046c0a0.c](ghidra-export/AI_0046c0a0_0046c0a0.c)
- ASM: [AI_0046c0a0_0046c0a0.asm](ghidra-export/AI_0046c0a0_0046c0a0.asm)
- Types: `20, 43`
- Identities: `20.0.0, 43.0.0, 43.1.0`
- Incoming calls: 1; outgoing calls: 148
- State writes: `0x0046c7c0 -> State 3; 0x0046c903 -> State 7; 0x0046cb62 -> State 6; 0x0046cc38 -> State 8; 0x0046ccd3 -> State 4; 0x0046d176 -> State 3; 0x0046d1d7 -> State 6; 0x0046d6e8 -> State 3; 0x0046d815 -> State 7; 0x0046e24a -> State dynamic`
- Shared attack/spawn calls: `0x0046c12f -> Entity_NPC::projectile_helper (0x006bec40); 0x0046c7ef -> Isaac::genrand_int32 (0x006eef60); 0x0046c843 -> entity_spawn_relay (0x00428b20); 0x0046c9ea -> Isaac::genrand_int32 (0x006eef60); 0x0046ca41 -> Isaac::genrand_int32 (0x006eef60); 0x0046ca61 -> Isaac::genrand_int32 (0x006eef60); 0x0046ca93 -> Isaac::genrand_int32 (0x006eef60); 0x0046cb0e -> Isaac::genrand_int32 (0x006eef60); 0x0046cef8 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0046d0a8 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0046d420 -> Isaac::genrand_int32 (0x006eef60); 0x0046d442 -> entity_spawn_relay (0x00428b20); 0x0046d449 -> Isaac::genrand_int32 (0x006eef60); 0x0046d6d5 -> Isaac::genrand_int32 (0x006eef60); 0x0046dd6a -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0046dd97 -> Isaac::genrand_int32 (0x006eef60); 0x0046ddc7 -> entity_spawn_relay (0x00428b20); 0x0046dea9 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0046df1f -> Isaac::genrand_int32 (0x006eef60); 0x0046df4e -> entity_spawn_relay (0x00428b20); 0x0046dfd7 -> Isaac::genrand_int32 (0x006eef60); 0x0046e014 -> entity_spawn_relay (0x00428b20); 0x0046e120 -> Isaac::genrand_int32 (0x006eef60); 0x0046e127 -> Isaac::genrand_int32 (0x006eef60); 0x0046e1cf -> entity_spawn_relay (0x00428b20)`

### `0x0046e290`

- C: [AI_0046e290_0046e290.c](ghidra-export/AI_0046e290_0046e290.c)
- ASM: [AI_0046e290_0046e290.asm](ghidra-export/AI_0046e290_0046e290.asm)
- Types: `67`
- Identities: `67.0.0, 67.1.0`
- Incoming calls: 1; outgoing calls: 104
- State writes: `0x0046e689 -> State 4; 0x0046e6ea -> State 13; 0x0046e72b -> State 14; 0x0046e7b2 -> State 8; 0x0046f523 -> State 4`
- StateFrame writes: `0x0046e7e0; 0x0046e861; 0x0046f514`
- Shared attack/spawn calls: `0x0046e6b7 -> Isaac::genrand_int32 (0x006eef60); 0x0046e6fe -> Isaac::genrand_int32 (0x006eef60); 0x0046e73f -> Isaac::genrand_int32 (0x006eef60); 0x0046e76e -> Isaac::genrand_int32 (0x006eef60); 0x0046e79e -> Isaac::genrand_int32 (0x006eef60); 0x0046e8a4 -> Isaac::genrand_int32 (0x006eef60); 0x0046e8ce -> entity_spawn_relay (0x00428b20); 0x0046e9ee -> Isaac::genrand_int32 (0x006eef60); 0x0046ea0d -> entity_spawn_relay (0x00428b20); 0x0046ea9e -> Isaac::genrand_int32 (0x006eef60); 0x0046eabd -> entity_spawn_relay (0x00428b20); 0x0046eaeb -> Isaac::genrand_int32 (0x006eef60); 0x0046eb0a -> entity_spawn_relay (0x00428b20); 0x0046eb43 -> Isaac::genrand_int32 (0x006eef60); 0x0046eb62 -> entity_spawn_relay (0x00428b20); 0x0046ed92 -> Isaac::genrand_int32 (0x006eef60); 0x0046edd3 -> Isaac::genrand_int32 (0x006eef60); 0x0046edda -> Isaac::genrand_int32 (0x006eef60); 0x0046ee45 -> Isaac::genrand_int32 (0x006eef60); 0x0046ee8b -> Isaac::genrand_int32 (0x006eef60); 0x0046ef24 -> entity_spawn_relay (0x00428b20); 0x0046effd -> Isaac::genrand_int32 (0x006eef60); 0x0046f052 -> entity_spawn_relay (0x00428b20); 0x0046f145 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0046f4e6 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0046f544 -> Isaac::genrand_int32 (0x006eef60); 0x0046f560 -> Isaac::genrand_int32 (0x006eef60); 0x0046f567 -> Isaac::genrand_int32 (0x006eef60); 0x0046f5a0 -> Isaac::genrand_int32 (0x006eef60); 0x0046f63c -> entity_spawn_relay (0x00428b20); 0x0046f64e -> Isaac::genrand_int32 (0x006eef60); 0x0046f6f0 -> Isaac::genrand_int32 (0x006eef60); 0x0046f735 -> Isaac::genrand_int32 (0x006eef60); 0x0046f7b6 -> Isaac::genrand_int32 (0x006eef60); 0x0046f829 -> entity_spawn_relay (0x00428b20); 0x0046f8d3 -> Isaac::genrand_int32 (0x006eef60); 0x0046f919 -> Isaac::genrand_int32 (0x006eef60); 0x0046f99b -> Isaac::genrand_int32 (0x006eef60); 0x0046f9c2 -> entity_spawn_relay (0x00428b20); 0x0046f9f2 -> Isaac::genrand_int32 (0x006eef60); 0x0046fa37 -> Isaac::genrand_int32 (0x006eef60); 0x0046fab4 -> Isaac::genrand_int32 (0x006eef60); 0x0046fb27 -> entity_spawn_relay (0x00428b20)`

### `0x0046fbe0`

- C: [AI_0046fbe0_0046fbe0.c](ghidra-export/AI_0046fbe0_0046fbe0.c)
- ASM: [AI_0046fbe0_0046fbe0.asm](ghidra-export/AI_0046fbe0_0046fbe0.asm)
- Types: `100`
- Identities: `100.0.0, 100.1.0`
- Incoming calls: 1; outgoing calls: 97
- State writes: `0x0046fc2c -> State 4; 0x0046fdbf -> State 6; 0x0046fff4 -> State dynamic; 0x00470314 -> State 4; 0x0047058e -> State 4`
- StateFrame writes: `0x0046fdb1; 0x0046ffdc; 0x0047052d; 0x00470a9a; 0x00470acb`
- Shared attack/spawn calls: `0x0046fc62 -> Entity_NPC::projectile_helper (0x006bec40); 0x0046fd1b -> Isaac::genrand_int32 (0x006eef60); 0x004700de -> Isaac::genrand_int32 (0x006eef60); 0x004700fa -> entity_spawn_relay (0x00428b20); 0x00470101 -> Isaac::genrand_int32 (0x006eef60); 0x004703e0 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00470462 -> Isaac::genrand_int32 (0x006eef60); 0x004704c0 -> entity_spawn_relay (0x00428b20); 0x00470766 -> Isaac::genrand_int32 (0x006eef60); 0x0047087a -> Isaac::genrand_int32 (0x006eef60); 0x004708a9 -> entity_spawn_relay (0x00428b20); 0x00470a27 -> Isaac::genrand_int32 (0x006eef60); 0x00470a4a -> entity_spawn_relay (0x00428b20); 0x00470c04 -> Isaac::genrand_int32 (0x006eef60); 0x00470c1a -> Isaac::genrand_int32 (0x006eef60); 0x00470c41 -> entity_spawn_relay (0x00428b20); 0x00470d20 -> Isaac::genrand_int32 (0x006eef60); 0x00470e30 -> Isaac::genrand_int32 (0x006eef60); 0x00470ea8 -> entity_spawn_relay (0x00428b20); 0x00470edd -> Isaac::genrand_int32 (0x006eef60); 0x00470f36 -> entity_spawn_relay (0x00428b20); 0x00470fed -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00472c40`

- C: [AI_00472c40_00472c40.c](ghidra-export/AI_00472c40_00472c40.c)
- ASM: [AI_00472c40_00472c40.asm](ghidra-export/AI_00472c40_00472c40.asm)
- Types: `74, 75, 76`
- Identities: `74.0.0, 75.0.0, 76.0.0`
- Incoming calls: 1; outgoing calls: 43
- State writes: `0x00472c6f -> State 3; 0x00472ce3 -> State 2; 0x00472e14 -> State 7; 0x0047303e -> State 3; 0x00473078 -> State 16; 0x0047314b -> State 6; 0x0047315f -> State 4; 0x004738b0 -> State 3; 0x004738ea -> State 16; 0x004739ac -> State 8; 0x004739f1 -> State 4; 0x00473dab -> State 3; 0x00473e49 -> State 16; 0x00473ed1 -> State 8; 0x00473ee0 -> State 4`
- StateFrame writes: `0x00472cd9; 0x00472e1e; 0x00473082; 0x004730d0; 0x004738f4; 0x00473934; 0x00473e53; 0x00473e93; 0x0047415c`
- Invincible writes: `0x0047308c = 1; 0x004738fe = 1; 0x00473e5d = 1`
- Shared attack/spawn calls: `0x00472d30 -> Entity_NPC::projectile_helper (0x006bec40); 0x00472f0d -> Entity::Create dispatcher (0x006fe410); 0x00472fc8 -> Entity::Create dispatcher (0x006fe410); 0x0047379b -> Entity::Create dispatcher (0x006fe410); 0x0047383a -> Entity::Create dispatcher (0x006fe410); 0x00473d3b -> Isaac::genrand_int32 (0x006eef60); 0x00473d5c -> Entity::Create dispatcher (0x006fe410)`

### `0x004741f0`

- C: [AI_004741f0_004741f0.c](ghidra-export/AI_004741f0_004741f0.c)
- ASM: [AI_004741f0_004741f0.asm](ghidra-export/AI_004741f0_004741f0.asm)
- Types: `46`
- Identities: `46.0.0, 46.1.0, 46.2.0`
- Incoming calls: 1; outgoing calls: 50
- State writes: `0x0047423c -> State 4; 0x004744c7 -> State 8; 0x004744d6 -> State 9; 0x00474dc4 -> State 4`
- StateFrame writes: `0x0047443f; 0x00474dce`
- Shared attack/spawn calls: `0x004743ec -> Isaac::genrand_int32 (0x006eef60); 0x00474426 -> Isaac::genrand_int32 (0x006eef60); 0x0047447b -> Isaac::genrand_int32 (0x006eef60); 0x00474584 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x004745a8 -> Isaac::genrand_int32 (0x006eef60); 0x0047475b -> Isaac::genrand_int32 (0x006eef60); 0x004747fc -> entity_spawn_relay (0x00428b20); 0x004748e3 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x00474a30 -> Isaac::genrand_int32 (0x006eef60); 0x00474a91 -> entity_spawn_relay (0x00428b20); 0x00474b49 -> Isaac::genrand_int32 (0x006eef60); 0x00474b50 -> Isaac::genrand_int32 (0x006eef60); 0x00474c0e -> entity_spawn_relay (0x00428b20); 0x00474c15 -> Isaac::genrand_int32 (0x006eef60); 0x00474c4a -> Isaac::genrand_int32 (0x006eef60); 0x00474cc6 -> Isaac::genrand_int32 (0x006eef60); 0x00474d07 -> entity_spawn_relay (0x00428b20)`

### `0x00474e00`

- C: [AI_00474e00_00474e00.c](ghidra-export/AI_00474e00_00474e00.c)
- ASM: [AI_00474e00_00474e00.asm](ghidra-export/AI_00474e00_00474e00.asm)
- Types: `47`
- Identities: `47.0.0, 47.1.0`
- Incoming calls: 1; outgoing calls: 16
- Shared attack/spawn calls: `0x00474e58 -> Isaac::genrand_int32 (0x006eef60); 0x00474e88 -> entity_spawn_relay (0x00428b20); 0x00474f96 -> Entity_NPC::projectile_helper (0x006bec40); 0x00474fff -> Entity_NPC::projectile_helper (0x006bec40); 0x004750e0 -> Entity_NPC::projectile_helper (0x006bec40)`

### `0x00475110`

- C: [AI_00475110_00475110.c](ghidra-export/AI_00475110_00475110.c)
- ASM: [AI_00475110_00475110.asm](ghidra-export/AI_00475110_00475110.asm)
- Types: `48`
- Identities: `48.0.0, 48.1.0`
- Incoming calls: 1; outgoing calls: 25
- State writes: `0x00475164 -> State 4; 0x0047536c -> State 4; 0x0047575a -> State 9; 0x00475785 -> State 8; 0x0047579e -> State 9; 0x004758f4 -> State 4`
- StateFrame writes: `0x004753c1; 0x0047573c; 0x004758ff`
- Shared attack/spawn calls: `0x0047550c -> Entity_NPC::projectile_helper (0x006bec40); 0x00475552 -> Isaac::genrand_int32 (0x006eef60); 0x0047558f -> Isaac::genrand_int32 (0x006eef60); 0x00475746 -> Isaac::genrand_int32 (0x006eef60); 0x0047585b -> Isaac::genrand_int32 (0x006eef60); 0x004758ac -> entity_spawn_relay (0x00428b20)`

### `0x00475a30`

- C: [AI_00475a30_00475a30.c](ghidra-export/AI_00475a30_00475a30.c)
- ASM: [AI_00475a30_00475a30.asm](ghidra-export/AI_00475a30_00475a30.asm)
- Types: `50`
- Identities: `50.0.0, 50.1.0`
- Incoming calls: 1; outgoing calls: 34
- State writes: `0x00475a89 -> State 4; 0x00475c92 -> State 13; 0x00475ca1 -> State 8; 0x00476054 -> State 4`
- StateFrame writes: `0x00475c55; 0x0047605e`
- Shared attack/spawn calls: `0x00475c3f -> Isaac::genrand_int32 (0x006eef60); 0x00475c5b -> Isaac::genrand_int32 (0x006eef60); 0x00475da7 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00475dc3 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00475f28 -> Isaac::genrand_int32 (0x006eef60); 0x00475f4c -> entity_spawn_relay (0x00428b20); 0x00475f51 -> Isaac::genrand_int32 (0x006eef60); 0x00475f6f -> entity_spawn_relay (0x00428b20); 0x00476001 -> Isaac::genrand_int32 (0x006eef60); 0x00476025 -> entity_spawn_relay (0x00428b20); 0x0047602a -> Isaac::genrand_int32 (0x006eef60); 0x00476048 -> entity_spawn_relay (0x00428b20)`

### `0x004760a0`

- C: [AI_004760a0_004760a0.c](ghidra-export/AI_004760a0_004760a0.c)
- ASM: [AI_004760a0_004760a0.asm](ghidra-export/AI_004760a0_004760a0.asm)
- Types: `51`
- Identities: `51.0.0, 51.1.0, 51.10.0, 51.11.0, 51.20.0, 51.21.0, 51.30.0, 51.31.0`
- Incoming calls: 1; outgoing calls: 20
- State writes: `0x0047621a -> State 4`
- Shared attack/spawn calls: `0x00476224 -> Isaac::genrand_int32 (0x006eef60); 0x00476381 -> Isaac::genrand_int32 (0x006eef60); 0x00476464 -> Entity::Create dispatcher (0x006fe410); 0x00476500 -> Entity::Create dispatcher (0x006fe410); 0x00476534 -> Isaac::genrand_int32 (0x006eef60); 0x004765ce -> Entity::Create dispatcher (0x006fe410)`

### `0x00476860`

- C: [AI_00476860_00476860.c](ghidra-export/AI_00476860_00476860.c)
- ASM: [AI_00476860_00476860.asm](ghidra-export/AI_00476860_00476860.asm)
- Types: `62`
- Identities: `62.0.0, 62.1.0, 62.2.0, 62.3.0`
- Incoming calls: 1; outgoing calls: 221
- State writes: `0x00476a30 -> State 3; 0x00477bce -> State 3; 0x00477cd5 -> State 9; 0x00477d37 -> State dynamic; 0x00477eb6 -> State 8; 0x004780e0 -> State 4; 0x004786a8 -> State 3; 0x00478ccf -> State 3`
- StateFrame writes: `0x004774bc; 0x00477bee; 0x00477ece; 0x00478c5b; 0x00478cef; 0x00478d42; 0x00478e4a; 0x00478efb`
- Shared attack/spawn calls: `0x00476a67 -> Isaac::genrand_int32 (0x006eef60); 0x00476a95 -> entity_spawn_relay (0x00428b20); 0x00477329 -> Entity_NPC::projectile_helper (0x006bec40); 0x00477671 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x004776c9 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x00477935 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0047795e -> Isaac::genrand_int32 (0x006eef60); 0x00477ac1 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x00477bd8 -> Entity_NPC::projectile_helper (0x006bec40); 0x00477c35 -> Isaac::genrand_int32 (0x006eef60); 0x00477c81 -> Isaac::genrand_int32 (0x006eef60); 0x00477cae -> Isaac::genrand_int32 (0x006eef60); 0x00477d18 -> Isaac::genrand_int32 (0x006eef60); 0x00477d73 -> Entity_NPC::projectile_helper (0x006bec40); 0x00478067 -> Isaac::genrand_int32 (0x006eef60); 0x00478692 -> Entity_NPC::projectile_helper (0x006bec40); 0x00478b13 -> Entity_NPC::projectile_helper (0x006bec40); 0x00478cd9 -> Entity_NPC::projectile_helper (0x006bec40); 0x00478e5e -> Entity_NPC::projectile_helper (0x006bec40); 0x00479195 -> Isaac::genrand_int32 (0x006eef60); 0x0047922e -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004794e0 -> Isaac::genrand_int32 (0x006eef60); 0x0047951d -> Isaac::genrand_int32 (0x006eef60); 0x00479544 -> Isaac::genrand_int32 (0x006eef60); 0x00479559 -> Isaac::genrand_int32 (0x006eef60); 0x00479560 -> Isaac::genrand_int32 (0x006eef60); 0x004795d3 -> Isaac::genrand_int32 (0x006eef60); 0x0047969e -> entity_spawn_relay (0x00428b20); 0x004796f6 -> Isaac::genrand_int32 (0x006eef60); 0x00479726 -> entity_spawn_relay (0x00428b20); 0x0047979a -> Isaac::genrand_int32 (0x006eef60); 0x004797b1 -> Isaac::genrand_int32 (0x006eef60); 0x004797ea -> Isaac::genrand_int32 (0x006eef60); 0x00479869 -> Isaac::genrand_int32 (0x006eef60); 0x00479890 -> Isaac::genrand_int32 (0x006eef60); 0x004798c9 -> Isaac::genrand_int32 (0x006eef60); 0x00479975 -> entity_spawn_relay (0x00428b20); 0x004799f2 -> Isaac::genrand_int32 (0x006eef60); 0x00479a37 -> Isaac::genrand_int32 (0x006eef60); 0x00479a58 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00479d80`

- C: [AI_00479d80_00479d80.c](ghidra-export/AI_00479d80_00479d80.c)
- ASM: [AI_00479d80_00479d80.asm](ghidra-export/AI_00479d80_00479d80.asm)
- Types: `52`
- Identities: `52.0.0, 52.1.0`
- Incoming calls: 1; outgoing calls: 23
- State writes: `0x00479db7 -> State 4; 0x0047a008 -> State 8; 0x0047a019 -> State 9; 0x0047a33c -> State 4`
- StateFrame writes: `0x00479ff4; 0x0047a346`
- Shared attack/spawn calls: `0x00479fde -> Isaac::genrand_int32 (0x006eef60); 0x00479ffa -> Isaac::genrand_int32 (0x006eef60); 0x0047a0b7 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0047a30d -> Isaac::genrand_int32 (0x006eef60); 0x0047a32e -> Entity::Create dispatcher (0x006fe410)`

### `0x0047a360`

- C: [AI_0047a360_0047a360.c](ghidra-export/AI_0047a360_0047a360.c)
- ASM: [AI_0047a360_0047a360.asm](ghidra-export/AI_0047a360_0047a360.asm)
- Types: `28`
- Identities: `28.0.0, 28.1.0, 28.2.0`
- Incoming calls: 1; outgoing calls: 145
- State writes: `0x0047ac9b -> State 4; 0x0047b3f1 -> State 4; 0x0047b47d -> State 4; 0x0047b550 -> State 4; 0x0047b5bd -> State 4; 0x0047bc20 -> State 8; 0x0047bd31 -> State 13; 0x0047be27 -> State 12; 0x0047bee4 -> State 4; 0x0047c1ec -> State 4; 0x0047c347 -> State 4; 0x0047c44f -> State 4`
- StateFrame writes: `0x0047af9d; 0x0047ba94; 0x0047bc16; 0x0047bd27; 0x0047bda1; 0x0047c26a; 0x0047c3b8`
- Shared attack/spawn calls: `0x0047a986 -> Isaac::genrand_int32 (0x006eef60); 0x0047a9b6 -> entity_spawn_relay (0x00428b20); 0x0047b368 -> Isaac::genrand_int32 (0x006eef60); 0x0047b395 -> entity_spawn_relay (0x00428b20); 0x0047b491 -> Isaac::genrand_int32 (0x006eef60); 0x0047b4c2 -> Isaac::genrand_int32 (0x006eef60); 0x0047b4e0 -> entity_spawn_relay (0x00428b20); 0x0047b507 -> Isaac::genrand_int32 (0x006eef60); 0x0047b533 -> entity_spawn_relay (0x00428b20); 0x0047ba32 -> Isaac::genrand_int32 (0x006eef60); 0x0047baba -> Entity_NPC::projectile_helper (0x006bec40); 0x0047bae2 -> Isaac::genrand_int32 (0x006eef60); 0x0047bc3d -> Isaac::genrand_int32 (0x006eef60)`

### `0x0047c850`

- C: [AI_0047c850_0047c850.c](ghidra-export/AI_0047c850_0047c850.c)
- ASM: [AI_0047c850_0047c850.asm](ghidra-export/AI_0047c850_0047c850.asm)
- Types: `36`
- Identities: `36.0.0`
- Incoming calls: 1; outgoing calls: 68
- State writes: `0x0047ca23 -> State 3; 0x0047ce9e -> State 8; 0x0047d68d -> State 3`
- StateFrame writes: `0x0047ccfd; 0x0047cd49; 0x0047ce01; 0x0047ce1d; 0x0047ce7f; 0x0047d683`
- Shared attack/spawn calls: `0x0047c942 -> Isaac::genrand_int32 (0x006eef60); 0x0047cc98 -> Isaac::genrand_int32 (0x006eef60); 0x0047cd54 -> Isaac::genrand_int32 (0x006eef60); 0x0047ce56 -> Isaac::genrand_int32 (0x006eef60); 0x0047cff5 -> Isaac::genrand_int32 (0x006eef60); 0x0047d05a -> entity_spawn_relay (0x00428b20); 0x0047d123 -> Isaac::genrand_int32 (0x006eef60); 0x0047d18a -> entity_spawn_relay (0x00428b20); 0x0047d2e5 -> Isaac::genrand_int32 (0x006eef60); 0x0047d308 -> entity_spawn_relay (0x00428b20); 0x0047d335 -> Isaac::genrand_int32 (0x006eef60); 0x0047d354 -> entity_spawn_relay (0x00428b20); 0x0047d3c6 -> Isaac::genrand_int32 (0x006eef60); 0x0047d423 -> Isaac::genrand_int32 (0x006eef60); 0x0047d483 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0047d4b3 -> Isaac::genrand_int32 (0x006eef60); 0x0047d51c -> Isaac::genrand_int32 (0x006eef60); 0x0047d584 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0047d5b4 -> Isaac::genrand_int32 (0x006eef60); 0x0047d617 -> Isaac::genrand_int32 (0x006eef60); 0x0047d67c -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x0047d8a0`

- C: [AI_0047d8a0_0047d8a0.c](ghidra-export/AI_0047d8a0_0047d8a0.c)
- ASM: [AI_0047d8a0_0047d8a0.asm](ghidra-export/AI_0047d8a0_0047d8a0.asm)
- Types: `68`
- Identities: `68.0.0, 68.1.0, 68.10.0, 68.11.0`
- Incoming calls: 1; outgoing calls: 148
- State writes: `0x0047d911 -> State 4; 0x0047df4b -> State 6; 0x0047df7c -> State dynamic; 0x0047e05a -> State 10; 0x0047e1a3 -> State 9; 0x0047e2e2 -> State 4; 0x0047e5ce -> State 7; 0x0047e61d -> State 4; 0x0047eb1a -> State 4; 0x0047ef20 -> State 4; 0x0047f019 -> State 4`
- StateFrame writes: `0x0047deec; 0x0047e2cd; 0x0047e53e; 0x0047e5c4; 0x0047e608; 0x0047ea7a; 0x0047ef0b; 0x0047f004`
- Invincible writes: `0x0047d932 = 1`
- Shared attack/spawn calls: `0x0047d995 -> Isaac::genrand_int32 (0x006eef60); 0x0047da0a -> entity_spawn_relay (0x00428b20); 0x0047da25 -> Entity_NPC::projectile_helper (0x006bec40); 0x0047dade -> Isaac::genrand_int32 (0x006eef60); 0x0047dae7 -> Isaac::genrand_int32 (0x006eef60); 0x0047db95 -> Isaac::genrand_int32 (0x006eef60); 0x0047de39 -> Isaac::genrand_int32 (0x006eef60); 0x0047de69 -> entity_spawn_relay (0x00428b20); 0x0047df23 -> Isaac::genrand_int32 (0x006eef60); 0x0047df39 -> Isaac::genrand_int32 (0x006eef60); 0x0047df55 -> Isaac::genrand_int32 (0x006eef60); 0x0047df67 -> Isaac::genrand_int32 (0x006eef60); 0x0047e35e -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0047e4c4 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0047e701 -> Isaac::genrand_int32 (0x006eef60); 0x0047e708 -> Isaac::genrand_int32 (0x006eef60); 0x0047e74e -> Isaac::genrand_int32 (0x006eef60); 0x0047e7fd -> entity_spawn_relay (0x00428b20); 0x0047e8c9 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0047ea28 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0047eab1 -> Isaac::genrand_int32 (0x006eef60); 0x0047ead3 -> entity_spawn_relay (0x00428b20); 0x0047eaf5 -> Isaac::genrand_int32 (0x006eef60); 0x0047eb6f -> Isaac::genrand_int32 (0x006eef60); 0x0047ebfa -> Isaac::genrand_int32 (0x006eef60); 0x0047ecad -> Isaac::genrand_int32 (0x006eef60); 0x0047eccc -> entity_spawn_relay (0x00428b20); 0x0047ed10 -> Isaac::genrand_int32 (0x006eef60); 0x0047ed2f -> entity_spawn_relay (0x00428b20); 0x0047ed6a -> Isaac::genrand_int32 (0x006eef60); 0x0047edbb -> entity_spawn_relay (0x00428b20); 0x0047ee58 -> Isaac::genrand_int32 (0x006eef60); 0x0047ee7d -> entity_spawn_relay (0x00428b20); 0x0047f13b -> Isaac::genrand_int32 (0x006eef60); 0x0047f184 -> Isaac::genrand_int32 (0x006eef60); 0x0047f4e0 -> Isaac::genrand_int32 (0x006eef60); 0x0047f4e7 -> Isaac::genrand_int32 (0x006eef60); 0x0047f590 -> entity_spawn_relay (0x00428b20)`

### `0x0047f640`

- C: [AI_0047f640_0047f640.c](ghidra-export/AI_0047f640_0047f640.c)
- ASM: [AI_0047f640_0047f640.asm](ghidra-export/AI_0047f640_0047f640.asm)
- Types: `84`
- Identities: `84.0.0, 84.10.0`
- Incoming calls: 1; outgoing calls: 10
- State writes: `0x0047f710 -> State 4; 0x0047f7e1 -> State 3; 0x0047ffa1 -> State 4; 0x004801c5 -> State 9; 0x004802ac -> State 10; 0x004803bc -> State 8; 0x004803d7 -> State 11; 0x00480577 -> State 4; 0x00480acb -> State 4; 0x00480f0a -> State 7; 0x004812c4 -> State 3`
- StateFrame writes: `0x0047f6fc; 0x0047f875; 0x0047fa42; 0x0047fbe8; 0x0047fe20; 0x0047ffab; 0x004801bb; 0x004802a2; 0x0048039d; 0x00480ae9; 0x00480f19; 0x00481178`
- Invincible writes: `0x00480afd = 1`

### `0x00481410`

- C: [AI_00481410_00481410.c](ghidra-export/AI_00481410_00481410.c)
- ASM: [AI_00481410_00481410.asm](ghidra-export/AI_00481410_00481410.asm)
- Types: `260`
- Identities: `260.0.0, 260.10.0`
- Incoming calls: 1; outgoing calls: 117
- State writes: `0x004816b0 -> State dynamic; 0x00481a76 -> State 16; 0x00481ae4 -> State 3; 0x00481d14 -> State 8; 0x00481d30 -> State 9; 0x004827f0 -> State 3; 0x00482aa7 -> State 8; 0x00482caa -> State 4; 0x00482f0c -> State 4`
- StateFrame writes: `0x00481469; 0x00481aee; 0x00481ce6; 0x004827fa; 0x00482ac3; 0x00482cc4`
- Invincible writes: `0x00481678 = 1; 0x00481714 = 0`
- Shared attack/spawn calls: `0x004814d0 -> Isaac::genrand_int32 (0x006eef60); 0x0048156b -> Entity::Create dispatcher (0x006fe410); 0x004818ce -> Isaac::genrand_int32 (0x006eef60); 0x00481b3f -> Entity_NPC::projectile_helper (0x006bec40); 0x00481b7d -> Isaac::genrand_int32 (0x006eef60); 0x00481bdb -> Isaac::genrand_int32 (0x006eef60); 0x00481c2e -> Isaac::genrand_int32 (0x006eef60); 0x00481cf5 -> Isaac::genrand_int32 (0x006eef60); 0x00481d0b -> Isaac::genrand_int32 (0x006eef60); 0x00481fd4 -> Entity_NPC::projectile_helper (0x006bec40); 0x004820ee -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004821af -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004823ad -> Isaac::genrand_int32 (0x006eef60); 0x00482423 -> Isaac::genrand_int32 (0x006eef60); 0x004828b1 -> Entity_NPC::projectile_helper (0x006bec40); 0x00482a8c -> Isaac::genrand_int32 (0x006eef60); 0x00482b04 -> Isaac::genrand_int32 (0x006eef60); 0x00482ca5 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00483710`

- C: [AI_00483710_00483710.c](ghidra-export/AI_00483710_00483710.c)
- ASM: [AI_00483710_00483710.asm](ghidra-export/AI_00483710_00483710.asm)
- Types: `273`
- Identities: `273.0.0, 273.10.0`
- Incoming calls: 1; outgoing calls: 108
- State writes: `0x00483951 -> State 16; 0x004839ff -> State 16; 0x00483ba4 -> State 4; 0x00483db2 -> State 8; 0x00483dc6 -> State 10; 0x00483f5b -> State 8; 0x00483f7b -> State 10; 0x00483fa5 -> State 11; 0x0048408d -> State 9; 0x004840d2 -> State 9; 0x00484678 -> State 16; 0x0048524d -> State 4; 0x0048528b -> State 4; 0x004853aa -> State 8`
- StateFrame writes: `0x00483bd3; 0x00483d88; 0x00483dd0; 0x00483f31; 0x00483f85; 0x0048411d; 0x00484186; 0x004846c6; 0x0048473d; 0x0048481e; 0x00484d07; 0x00484f7a; 0x004851d6; 0x004852ab; 0x004853ce`
- Invincible writes: `0x004839b2 = 1; 0x0048527d = 0; 0x00485417 = 1`
- Shared attack/spawn calls: `0x00483973 -> Isaac::genrand_int32 (0x006eef60); 0x00483995 -> entity_spawn_relay (0x00428b20); 0x00483a35 -> Isaac::genrand_int32 (0x006eef60); 0x00483a95 -> entity_spawn_relay (0x00428b20); 0x00483bb8 -> Isaac::genrand_int32 (0x006eef60); 0x00483ce7 -> Entity_NPC::projectile_helper (0x006bec40); 0x00483d96 -> Isaac::genrand_int32 (0x006eef60); 0x00483e6c -> Entity_NPC::projectile_helper (0x006bec40); 0x00483f3f -> Isaac::genrand_int32 (0x006eef60); 0x00483fcd -> Isaac::genrand_int32 (0x006eef60); 0x00484382 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x00484500 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x00484584 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x004845a9 -> Isaac::genrand_int32 (0x006eef60); 0x004845c5 -> Isaac::genrand_int32 (0x006eef60); 0x004845cc -> Isaac::genrand_int32 (0x006eef60); 0x00484653 -> entity_spawn_relay (0x00428b20); 0x00484767 -> Entity_NPC::projectile_helper (0x006bec40); 0x00484a8b -> Isaac::genrand_int32 (0x006eef60); 0x00484b5b -> Entity_NPC::projectile_helper (0x006bec40); 0x00484c1b -> Isaac::genrand_int32 (0x006eef60); 0x00484c47 -> Isaac::genrand_int32 (0x006eef60); 0x00484cb2 -> entity_spawn_relay (0x00428b20); 0x00484f0c -> Isaac::genrand_int32 (0x006eef60); 0x00484f20 -> Isaac::genrand_int32 (0x006eef60); 0x0048529a -> Isaac::genrand_int32 (0x006eef60); 0x00485363 -> Isaac::genrand_int32 (0x006eef60); 0x00485375 -> Isaac::genrand_int32 (0x006eef60); 0x00485496 -> Isaac::genrand_int32 (0x006eef60); 0x004854e8 -> entity_spawn_relay (0x00428b20)`

### `0x004855b0`

- C: [AI_004855b0_004855b0.c](ghidra-export/AI_004855b0_004855b0.c)
- ASM: [AI_004855b0_004855b0.asm](ghidra-export/AI_004855b0_004855b0.asm)
- Types: `261`
- Identities: `261.0.0, 261.1.0`
- Incoming calls: 1; outgoing calls: 108
- State writes: `0x00485619 -> State 3; 0x0048586c -> State 9; 0x00485896 -> State 11; 0x004858a5 -> State 10; 0x00485b05 -> State 3; 0x00486199 -> State 16; 0x00486bfb -> State 8; 0x00486c72 -> State 3; 0x00486cbe -> State 4`
- StateFrame writes: `0x00485623; 0x00485803; 0x0048618b; 0x004861a3; 0x00486401; 0x00486c68; 0x00486cc8`
- Shared attack/spawn calls: `0x00485818 -> Isaac::genrand_int32 (0x006eef60); 0x00485845 -> Isaac::genrand_int32 (0x006eef60); 0x0048585a -> Isaac::genrand_int32 (0x006eef60); 0x0048587b -> Isaac::genrand_int32 (0x006eef60); 0x00485a9f -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00485c76 -> Isaac::genrand_int32 (0x006eef60); 0x00485e63 -> Isaac::genrand_int32 (0x006eef60); 0x00485e81 -> Entity::Create dispatcher (0x006fe410); 0x00485fee -> Isaac::genrand_int32 (0x006eef60); 0x00486011 -> Entity::Create dispatcher (0x006fe410); 0x0048602f -> Isaac::genrand_int32 (0x006eef60); 0x004860b9 -> Isaac::genrand_int32 (0x006eef60); 0x00486180 -> Isaac::genrand_int32 (0x006eef60); 0x0048621c -> Isaac::genrand_int32 (0x006eef60); 0x004862f0 -> Isaac::genrand_int32 (0x006eef60); 0x0048655e -> Isaac::genrand_int32 (0x006eef60); 0x004865cd -> Entity_NPC::projectile_helper (0x006bec40); 0x00486649 -> Isaac::genrand_int32 (0x006eef60); 0x00486670 -> Isaac::genrand_int32 (0x006eef60); 0x004866a9 -> Isaac::genrand_int32 (0x006eef60); 0x00486773 -> Entity::Create dispatcher (0x006fe410); 0x00486826 -> Isaac::genrand_int32 (0x006eef60); 0x00486856 -> Isaac::genrand_int32 (0x006eef60); 0x0048688f -> Isaac::genrand_int32 (0x006eef60); 0x00486948 -> Entity::Create dispatcher (0x006fe410); 0x00486a17 -> Isaac::genrand_int32 (0x006eef60); 0x00486a68 -> Isaac::genrand_int32 (0x006eef60); 0x00486ae9 -> Entity::Create dispatcher (0x006fe410); 0x00486aee -> Isaac::genrand_int32 (0x006eef60); 0x00486afb -> Isaac::genrand_int32 (0x006eef60); 0x00486b45 -> Isaac::genrand_int32 (0x006eef60); 0x00486bc6 -> Entity::Create dispatcher (0x006fe410); 0x00486c40 -> Isaac::genrand_int32 (0x006eef60); 0x00486d0c -> Isaac::genrand_int32 (0x006eef60)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x00486db0`

- C: [AI_00486db0_00486db0.c](ghidra-export/AI_00486db0_00486db0.c)
- ASM: [AI_00486db0_00486db0.asm](ghidra-export/AI_00486db0_00486db0.asm)
- Types: `270`
- Identities: `270.0.0`
- Incoming calls: 1; outgoing calls: 4
- State writes: `0x00486e7b -> State 3; 0x00486f67 -> State 8; 0x00486fa6 -> State 9; 0x0048705c -> State 16; 0x004870c3 -> State 13; 0x004870eb -> State 8; 0x004872ff -> State 3; 0x0048744b -> State 3; 0x004876ba -> State 3`
- StateFrame writes: `0x00486ea3; 0x00486f1e; 0x00486f87; 0x00487115; 0x00487214; 0x0048731e; 0x004876d4`
- Invincible writes: `0x004871e0 = 1; 0x00487288 = 0`

### `0x004878a0`

- C: [AI_004878a0_004878a0.c](ghidra-export/AI_004878a0_004878a0.c)
- ASM: [AI_004878a0_004878a0.asm](ghidra-export/AI_004878a0_004878a0.asm)
- Types: `265`
- Identities: `265.0.0`
- Incoming calls: 1; outgoing calls: 150
- State writes: `0x004878ed -> State 3; 0x00487bb6 -> State 8; 0x00487c0a -> State 6; 0x00487d10 -> State 13; 0x00487d1f -> State 9; 0x00487fc1 -> State 7; 0x004886a6 -> State 3; 0x00489103 -> State 3; 0x0048928e -> State 3`
- StateFrame writes: `0x004878e1; 0x00487b41; 0x00488f54; 0x004892a2`
- Shared attack/spawn calls: `0x00487965 -> Isaac::genrand_int32 (0x006eef60); 0x004879bd -> Entity::Create dispatcher (0x006fe410); 0x00487b50 -> Isaac::genrand_int32 (0x006eef60); 0x00487b66 -> Isaac::genrand_int32 (0x006eef60); 0x00487b7c -> Isaac::genrand_int32 (0x006eef60); 0x00487c14 -> Entity_NPC::projectile_helper (0x006bec40); 0x00487d29 -> Isaac::genrand_int32 (0x006eef60); 0x00487d65 -> Isaac::genrand_int32 (0x006eef60); 0x004881d5 -> Isaac::genrand_int32 (0x006eef60); 0x004881dc -> Isaac::genrand_int32 (0x006eef60); 0x00488213 -> Isaac::genrand_int32 (0x006eef60); 0x004882aa -> Entity::Create dispatcher (0x006fe410); 0x0048846b -> Isaac::genrand_int32 (0x006eef60); 0x004884a0 -> Isaac::genrand_int32 (0x006eef60); 0x004884c4 -> Entity::Create dispatcher (0x006fe410); 0x00488858 -> Isaac::genrand_int32 (0x006eef60); 0x004888a6 -> Isaac::genrand_int32 (0x006eef60); 0x00488962 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00488af9 -> Isaac::genrand_int32 (0x006eef60); 0x00488b64 -> Entity::Create dispatcher (0x006fe410); 0x00488b90 -> Isaac::genrand_int32 (0x006eef60); 0x00488bb5 -> Isaac::genrand_int32 (0x006eef60); 0x00488c20 -> Isaac::genrand_int32 (0x006eef60); 0x00488fd2 -> Isaac::genrand_int32 (0x006eef60); 0x004892f8 -> Isaac::genrand_int32 (0x006eef60); 0x00489371 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00489ca0`

- C: [AI_00489ca0_00489ca0.c](ghidra-export/AI_00489ca0_00489ca0.c)
- ASM: [AI_00489ca0_00489ca0.asm](ghidra-export/AI_00489ca0_00489ca0.asm)
- Types: `269, 401`
- Identities: `269.0.0, 269.1.0, 401.0.0`
- Incoming calls: 1; outgoing calls: 100
- State writes: `0x00489d18 -> State 3; 0x00489e1a -> State 4; 0x0048a13d -> State dynamic; 0x0048a145 -> State 8; 0x0048a179 -> State 10; 0x0048a1b0 -> State dynamic; 0x0048a237 -> State 13; 0x0048a978 -> State 4; 0x0048adb3 -> State 3`
- StateFrame writes: `0x00489e73; 0x00489eb6; 0x00489ed7; 0x0048a241; 0x0048a996; 0x0048a9bb; 0x0048a9ed; 0x0048aa64`
- Shared attack/spawn calls: `0x00489d35 -> Isaac::genrand_int32 (0x006eef60); 0x00489da4 -> Entity::Create dispatcher (0x006fe410); 0x00489e04 -> Isaac::genrand_int32 (0x006eef60); 0x00489f4e -> Entity_NPC::projectile_helper (0x006bec40); 0x00489f64 -> Isaac::genrand_int32 (0x006eef60); 0x0048a071 -> Isaac::genrand_int32 (0x006eef60); 0x0048a12e -> Isaac::genrand_int32 (0x006eef60); 0x0048a14f -> Isaac::genrand_int32 (0x006eef60); 0x0048a196 -> Isaac::genrand_int32 (0x006eef60); 0x0048a217 -> Isaac::genrand_int32 (0x006eef60); 0x0048a3ed -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0048a3f7 -> Isaac::genrand_int32 (0x006eef60); 0x0048a44f -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0048a479 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0048a564 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0048a5bb -> Isaac::genrand_int32 (0x006eef60); 0x0048a62e -> Entity::Create dispatcher (0x006fe410); 0x0048a7d0 -> Isaac::genrand_int32 (0x006eef60); 0x0048a829 -> Entity::Create dispatcher (0x006fe410); 0x0048ab05 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0048ab8f -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0048acf0 -> Isaac::genrand_int32 (0x006eef60); 0x0048ad3b -> Entity::Create dispatcher (0x006fe410); 0x0048ad50 -> Isaac::genrand_int32 (0x006eef60); 0x0048ad98 -> Entity::Create dispatcher (0x006fe410)`

### `0x0048ae30`

- C: [AI_0048ae30_0048ae30.c](ghidra-export/AI_0048ae30_0048ae30.c)
- ASM: [AI_0048ae30_0048ae30.asm](ghidra-export/AI_0048ae30_0048ae30.asm)
- Types: `266`
- Identities: `266.0.0, 266.1.0, 266.2.0`
- Incoming calls: 1; outgoing calls: 86
- State writes: `0x0048afc2 -> State 3; 0x0048b2bb -> State 8; 0x0048b326 -> State 9; 0x0048b35a -> State 10; 0x0048b3e8 -> State 3; 0x0048b705 -> State 3; 0x0048bc58 -> State 3; 0x0048c1af -> State 3`
- StateFrame writes: `0x0048afe0; 0x0048b275; 0x0048b3b4; 0x0048b3f2; 0x0048b70f; 0x0048baa1; 0x0048bac4; 0x0048bad3; 0x0048bc62; 0x0048c1a9`
- Shared attack/spawn calls: `0x0048af44 -> Isaac::genrand_int32 (0x006eef60); 0x0048b055 -> Isaac::genrand_int32 (0x006eef60); 0x0048b0b0 -> entity_spawn_relay (0x00428b20); 0x0048b0bb -> Isaac::genrand_int32 (0x006eef60); 0x0048b116 -> entity_spawn_relay (0x00428b20); 0x0048b283 -> Isaac::genrand_int32 (0x006eef60); 0x0048b299 -> Isaac::genrand_int32 (0x006eef60); 0x0048b2dd -> Isaac::genrand_int32 (0x006eef60); 0x0048b2f2 -> Isaac::genrand_int32 (0x006eef60); 0x0048b364 -> Isaac::genrand_int32 (0x006eef60); 0x0048b5a4 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0048b652 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0048b797 -> Isaac::genrand_int32 (0x006eef60); 0x0048b7c4 -> Isaac::genrand_int32 (0x006eef60); 0x0048b862 -> Isaac::genrand_int32 (0x006eef60); 0x0048b884 -> entity_spawn_relay (0x00428b20); 0x0048b997 -> Isaac::genrand_int32 (0x006eef60); 0x0048b9c4 -> Isaac::genrand_int32 (0x006eef60); 0x0048ba62 -> Isaac::genrand_int32 (0x006eef60); 0x0048ba84 -> entity_spawn_relay (0x00428b20); 0x0048bab6 -> Isaac::genrand_int32 (0x006eef60); 0x0048bd17 -> Isaac::genrand_int32 (0x006eef60); 0x0048bd4f -> Isaac::genrand_int32 (0x006eef60); 0x0048bded -> Isaac::genrand_int32 (0x006eef60); 0x0048be47 -> Isaac::genrand_int32 (0x006eef60); 0x0048bee3 -> Isaac::genrand_int32 (0x006eef60); 0x0048bf72 -> Isaac::genrand_int32 (0x006eef60); 0x0048bfa1 -> entity_spawn_relay (0x00428b20); 0x0048c010 -> Isaac::genrand_int32 (0x006eef60); 0x0048c106 -> Isaac::genrand_int32 (0x006eef60); 0x0048c125 -> entity_spawn_relay (0x00428b20); 0x0048c183 -> Isaac::genrand_int32 (0x006eef60); 0x0048c1a2 -> entity_spawn_relay (0x00428b20)`

### `0x0048c3b0`

- C: [AI_0048c3b0_0048c3b0.c](ghidra-export/AI_0048c3b0_0048c3b0.c)
- ASM: [AI_0048c3b0_0048c3b0.asm](ghidra-export/AI_0048c3b0_0048c3b0.asm)
- Types: `402`
- Identities: `402.0.0`
- Incoming calls: 1; outgoing calls: 142
- State writes: `0x0048c422 -> State 3; 0x0048c6ad -> State 16; 0x0048ce79 -> State 3; 0x0048d0e2 -> State 10; 0x0048d166 -> State 8; 0x0048d1b2 -> State 9; 0x0048d1ee -> State dynamic; 0x0048d8b1 -> State 3; 0x0048d9e4 -> State dynamic; 0x0048da84 -> State dynamic; 0x0048db4b -> State 3; 0x0048e118 -> State 10; 0x0048e192 -> State 8; 0x0048e1a5 -> State 9`
- StateFrame writes: `0x0048ce83; 0x0048d15b; 0x0048d17e; 0x0048d1ac; 0x0048d1fb; 0x0048d8c2; 0x0048db55; 0x0048dbd1; 0x0048de44; 0x0048e1bf`
- Shared attack/spawn calls: `0x0048c8f8 -> Isaac::genrand_int32 (0x006eef60); 0x0048c957 -> entity_spawn_relay (0x00428b20); 0x0048ca3b -> Isaac::genrand_int32 (0x006eef60); 0x0048cb45 -> entity_spawn_relay (0x00428b20); 0x0048cc29 -> Isaac::genrand_int32 (0x006eef60); 0x0048d02d -> Isaac::genrand_int32 (0x006eef60); 0x0048d0fa -> Isaac::genrand_int32 (0x006eef60); 0x0048d1d1 -> Isaac::genrand_int32 (0x006eef60); 0x0048d1da -> Isaac::genrand_int32 (0x006eef60); 0x0048d2af -> Isaac::genrand_int32 (0x006eef60); 0x0048d2c3 -> Isaac::genrand_int32 (0x006eef60); 0x0048d619 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0048d69a -> Isaac::genrand_int32 (0x006eef60); 0x0048d6ce -> entity_spawn_relay (0x00428b20); 0x0048d7e9 -> Isaac::genrand_int32 (0x006eef60); 0x0048d945 -> Isaac::genrand_int32 (0x006eef60); 0x0048d9d0 -> entity_spawn_relay (0x00428b20); 0x0048e055 -> Isaac::genrand_int32 (0x006eef60); 0x0048e06c -> Isaac::genrand_int32 (0x006eef60); 0x0048e130 -> Isaac::genrand_int32 (0x006eef60); 0x0048e27f -> Isaac::genrand_int32 (0x006eef60); 0x0048e2b7 -> Isaac::genrand_int32 (0x006eef60); 0x0048e3ec -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0048e446 -> Isaac::genrand_int32 (0x006eef60); 0x0048e459 -> Isaac::genrand_int32 (0x006eef60); 0x0048e615 -> Isaac::genrand_int32 (0x006eef60); 0x0048e8b3 -> Isaac::genrand_int32 (0x006eef60); 0x0048e8e1 -> entity_spawn_relay (0x00428b20); 0x0048e922 -> Isaac::genrand_int32 (0x006eef60); 0x0048e939 -> Isaac::genrand_int32 (0x006eef60); 0x0048e940 -> Isaac::genrand_int32 (0x006eef60); 0x0048e979 -> Isaac::genrand_int32 (0x006eef60); 0x0048ea1d -> entity_spawn_relay (0x00428b20); 0x0048eaa2 -> Isaac::genrand_int32 (0x006eef60); 0x0048ebe5 -> Isaac::genrand_int32 (0x006eef60); 0x0048ed11 -> Isaac::genrand_int32 (0x006eef60)`

### `0x0048ee30`

- C: [AI_0048ee30_0048ee30.c](ghidra-export/AI_0048ee30_0048ee30.c)
- ASM: [AI_0048ee30_0048ee30.asm](ghidra-export/AI_0048ee30_0048ee30.asm)
- Types: `295`
- Identities: `295.0.0`
- Incoming calls: 1; outgoing calls: 13
- State writes: `0x0048ee68 -> State 3; 0x0048eefc -> State 8; 0x0048ef25 -> State 8`
- StateFrame writes: `0x0048ef13`
- Shared attack/spawn calls: `0x0048ee9b -> Entity_NPC::projectile_helper (0x006bec40); 0x0048f0dd -> Entity_NPC::FireProjectiles (0x006cb2e0)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x0048f110`

- C: [AI_0048f110_0048f110.c](ghidra-export/AI_0048f110_0048f110.c)
- ASM: [AI_0048f110_0048f110.asm](ghidra-export/AI_0048f110_0048f110.asm)
- Types: `403`
- Identities: `403.0.0`
- Incoming calls: 1; outgoing calls: 72
- State writes: `0x0048f172 -> State 13; 0x0048f4d6 -> State 13; 0x0048fdbe -> State 13; 0x0048fdee -> State dynamic; 0x0048fe0c -> State 8; 0x004903b1 -> State 3; 0x004905c0 -> State 16`
- StateFrame writes: `0x0048f17f; 0x0048f1e1; 0x0048f4cc; 0x0048f8e2; 0x0048fa01; 0x0048fcd1; 0x0048fda5; 0x00490245; 0x004902fa; 0x0049039d; 0x004905ac`
- Invincible writes: `0x0048f8f6 = 1; 0x0048fd01 = 0`
- Shared attack/spawn calls: `0x0048f654 -> Isaac::genrand_int32 (0x006eef60); 0x0048f73f -> Isaac::genrand_int32 (0x006eef60); 0x0048f75a -> entity_spawn_relay (0x00428b20); 0x0048fe89 -> Isaac::genrand_int32 (0x006eef60); 0x0049003b -> Isaac::genrand_int32 (0x006eef60); 0x0049004f -> Isaac::genrand_int32 (0x006eef60); 0x0049013d -> Isaac::genrand_int32 (0x006eef60); 0x004904f7 -> Isaac::genrand_int32 (0x006eef60); 0x00490570 -> Isaac::genrand_int32 (0x006eef60); 0x0049058f -> entity_spawn_relay (0x00428b20)`

### `0x00490680`

- C: [AI_00490680_00490680.c](ghidra-export/AI_00490680_00490680.c)
- ASM: [AI_00490680_00490680.asm](ghidra-export/AI_00490680_00490680.asm)
- Types: `404`
- Identities: `404.0.0, 404.1.0`
- Incoming calls: 1; outgoing calls: 129
- State writes: `0x004907f2 -> State 3; 0x00490f49 -> State 6; 0x00490f8c -> State 16; 0x00491091 -> State 8; 0x004910ec -> State dynamic; 0x0049120d -> State dynamic; 0x00491ae8 -> State 3; 0x00491d8f -> State 3; 0x00491e84 -> State 3`
- StateFrame writes: `0x00491823; 0x00491ad6; 0x00491d85; 0x00491eb1`
- Shared attack/spawn calls: `0x004908d2 -> Isaac::genrand_int32 (0x006eef60); 0x0049093b -> Isaac::genrand_int32 (0x006eef60); 0x00490e2d -> Entity_NPC::projectile_helper (0x006bec40); 0x00490f2f -> Isaac::genrand_int32 (0x006eef60); 0x00490f63 -> Isaac::genrand_int32 (0x006eef60); 0x00490f76 -> Isaac::genrand_int32 (0x006eef60); 0x00490fe2 -> Isaac::genrand_int32 (0x006eef60); 0x00491056 -> Isaac::genrand_int32 (0x006eef60); 0x00491070 -> Isaac::genrand_int32 (0x006eef60); 0x004910ae -> Isaac::genrand_int32 (0x006eef60); 0x004910cb -> Isaac::genrand_int32 (0x006eef60); 0x00491167 -> Isaac::genrand_int32 (0x006eef60); 0x00491282 -> Isaac::genrand_int32 (0x006eef60); 0x00491346 -> Isaac::genrand_int32 (0x006eef60); 0x004913ae -> entity_spawn_relay (0x00428b20); 0x004913f8 -> Isaac::genrand_int32 (0x006eef60); 0x00491414 -> entity_spawn_relay (0x00428b20); 0x00491522 -> Isaac::genrand_int32 (0x006eef60); 0x0049154c -> Isaac::genrand_int32 (0x006eef60); 0x004915e0 -> Isaac::genrand_int32 (0x006eef60); 0x004915fd -> entity_spawn_relay (0x00428b20); 0x004917c6 -> Isaac::genrand_int32 (0x006eef60); 0x004917f4 -> entity_spawn_relay (0x00428b20); 0x00491856 -> Isaac::genrand_int32 (0x006eef60); 0x0049189c -> Isaac::genrand_int32 (0x006eef60); 0x00491bcd -> Isaac::genrand_int32 (0x006eef60); 0x00491c64 -> Entity_NPC::projectile_helper (0x006bec40); 0x00491c9a -> entity_spawn_relay (0x00428b20); 0x00491cf6 -> Isaac::genrand_int32 (0x006eef60); 0x00491d47 -> entity_spawn_relay (0x00428b20); 0x00491ee2 -> Entity_NPC::projectile_helper (0x006bec40); 0x00492362 -> Isaac::genrand_int32 (0x006eef60); 0x0049237e -> entity_spawn_relay (0x00428b20); 0x004923ea -> Isaac::genrand_int32 (0x006eef60); 0x0049241f -> Isaac::genrand_int32 (0x006eef60)`

### `0x00492550`

- C: [AI_00492550_00492550.c](ghidra-export/AI_00492550_00492550.c)
- ASM: [AI_00492550_00492550.asm](ghidra-export/AI_00492550_00492550.asm)
- Types: `291`
- Identities: `291.0.0, 291.1.0, 291.2.0`
- Incoming calls: 1; outgoing calls: 27
- State writes: `0x00492580 -> State 2; 0x0049276f -> State 3; 0x00492a42 -> State 16; 0x00492d13 -> State 5; 0x00492d32 -> State 5; 0x00493137 -> State 5`
- StateFrame writes: `0x00492a74; 0x00492d2a; 0x00492d60`
- Shared attack/spawn calls: `0x00492844 -> Isaac::genrand_int32 (0x006eef60); 0x00492868 -> Entity::Create dispatcher (0x006fe410)`

### `0x00493200`

- C: [AI_00493200_00493200.c](ghidra-export/AI_00493200_00493200.c)
- ASM: [AI_00493200_00493200.asm](ghidra-export/AI_00493200_00493200.asm)
- Types: `405`
- Identities: `405.0.0, 405.1.0`
- Incoming calls: 1; outgoing calls: 93
- State writes: `0x004933bd -> State 4; 0x00493ba9 -> State 13; 0x00493c54 -> State 14; 0x00493cb3 -> State 8; 0x00494163 -> State 3; 0x004941f9 -> State 4; 0x00494d27 -> State 4; 0x00494ebc -> State 4; 0x0049507b -> State 4; 0x0049530e -> State 3`
- StateFrame writes: `0x00494203; 0x00494ec6; 0x00495064; 0x0049506f`
- Shared attack/spawn calls: `0x0049386a -> Entity_NPC::projectile_helper (0x006bec40); 0x00493c47 -> Isaac::genrand_int32 (0x006eef60); 0x00493c77 -> Isaac::genrand_int32 (0x006eef60); 0x00493f79 -> Isaac::genrand_int32 (0x006eef60); 0x00493f92 -> Isaac::genrand_int32 (0x006eef60); 0x00493fef -> entity_spawn_relay (0x00428b20); 0x0049416d -> Isaac::genrand_int32 (0x006eef60); 0x004944b4 -> Isaac::genrand_int32 (0x006eef60); 0x004945b5 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0049480d -> Isaac::genrand_int32 (0x006eef60); 0x00494a7f -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00494c30 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x00494ecc -> Isaac::genrand_int32 (0x006eef60); 0x0049513a -> Entity_NPC::projectile_helper (0x006bec40); 0x004953a4 -> Isaac::genrand_int32 (0x006eef60); 0x004953d0 -> Isaac::genrand_int32 (0x006eef60); 0x004953e9 -> entity_spawn_relay (0x00428b20); 0x00495463 -> entity_spawn_relay (0x00428b20); 0x0049557c -> Isaac::genrand_int32 (0x006eef60); 0x0049559e -> entity_spawn_relay (0x00428b20)`

### `0x00495610`

- C: [AI_00495610_00495610.c](ghidra-export/AI_00495610_00495610.c)
- ASM: [AI_00495610_00495610.asm](ghidra-export/AI_00495610_00495610.asm)
- Types: `409`
- Identities: `409.0.0, 409.1.0, 409.2.0`
- Incoming calls: 1; outgoing calls: 86
- State writes: `0x00495b08 -> State 4; 0x00495caa -> State 13; 0x00495d0d -> State 14; 0x00495d3d -> State 8; 0x0049633b -> State 4; 0x0049641b -> State 3; 0x00496d88 -> State 3`
- StateFrame writes: `0x00495e02; 0x00496011; 0x004961c6; 0x004962bf; 0x004962d4; 0x00496af4`
- Invincible writes: `0x004962ae = 1; 0x00496321 = 0; 0x00496656 = 0`
- Shared attack/spawn calls: `0x004959b0 -> Isaac::genrand_int32 (0x006eef60); 0x00495a4f -> entity_spawn_relay (0x00428b20); 0x00495c8a -> Isaac::genrand_int32 (0x006eef60); 0x00495cf1 -> Isaac::genrand_int32 (0x006eef60); 0x00495d21 -> Isaac::genrand_int32 (0x006eef60); 0x00495e60 -> Isaac::genrand_int32 (0x006eef60); 0x00495e8a -> entity_spawn_relay (0x00428b20); 0x00495f31 -> Isaac::genrand_int32 (0x006eef60); 0x00495f99 -> entity_spawn_relay (0x00428b20); 0x0049602b -> Isaac::genrand_int32 (0x006eef60); 0x00496070 -> Isaac::genrand_int32 (0x006eef60); 0x00496109 -> entity_spawn_relay (0x00428b20); 0x004962a7 -> Isaac::genrand_int32 (0x006eef60); 0x00496464 -> Entity_NPC::projectile_helper (0x006bec40); 0x00496b1c -> Isaac::genrand_int32 (0x006eef60); 0x00496b3e -> entity_spawn_relay (0x00428b20); 0x00496ba5 -> Isaac::genrand_int32 (0x006eef60); 0x00496bde -> Isaac::genrand_int32 (0x006eef60)`

### `0x00496fb0`

- C: [AI_00496fb0_00496fb0.c](ghidra-export/AI_00496fb0_00496fb0.c)
- ASM: [AI_00496fb0_00496fb0.asm](ghidra-export/AI_00496fb0_00496fb0.asm)
- Types: `410`
- Identities: `410.0.0`
- Incoming calls: 1; outgoing calls: 120
- State writes: `0x004970a8 -> State 3; 0x004974c4 -> State 6; 0x00497671 -> State 8; 0x0049774e -> State dynamic; 0x00497af1 -> State 10; 0x00497bf8 -> State 11; 0x00497c51 -> State 12; 0x00497ec0 -> State 7; 0x00498035 -> State 3; 0x00498065 -> State 9; 0x00498449 -> State 3; 0x00498b2e -> State 3; 0x00498e83 -> State 3`
- StateFrame writes: `0x004970b2; 0x00497455; 0x004978d7; 0x00497a32; 0x00497b5e; 0x00498942; 0x00498b42; 0x00498e8d`
- Shared attack/spawn calls: `0x00497138 -> Isaac::genrand_int32 (0x006eef60); 0x00497142 -> Isaac::genrand_int32 (0x006eef60); 0x004971dc -> Entity::Create dispatcher (0x006fe410); 0x00497464 -> Isaac::genrand_int32 (0x006eef60); 0x00497493 -> Isaac::genrand_int32 (0x006eef60); 0x004974ce -> Entity_NPC::projectile_helper (0x006bec40); 0x00497515 -> Isaac::genrand_int32 (0x006eef60); 0x00497737 -> Isaac::genrand_int32 (0x006eef60); 0x00497934 -> Isaac::genrand_int32 (0x006eef60); 0x00497969 -> Entity::Create dispatcher (0x006fe410); 0x00497a48 -> Isaac::genrand_int32 (0x006eef60); 0x00497a83 -> Isaac::genrand_int32 (0x006eef60); 0x004986e3 -> Isaac::genrand_int32 (0x006eef60); 0x004988ed -> Isaac::genrand_int32 (0x006eef60); 0x00498ae2 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00498c30 -> Isaac::genrand_int32 (0x006eef60); 0x00498c77 -> Isaac::genrand_int32 (0x006eef60); 0x00498cd5 -> Entity::Create dispatcher (0x006fe410); 0x00498d18 -> Isaac::genrand_int32 (0x006eef60); 0x00498d40 -> Isaac::genrand_int32 (0x006eef60); 0x00498dad -> Isaac::genrand_int32 (0x006eef60)`

### `0x00499de0`

- C: [AI_00499de0_00499de0.c](ghidra-export/AI_00499de0_00499de0.c)
- ASM: [AI_00499de0_00499de0.asm](ghidra-export/AI_00499de0_00499de0.asm)
- Types: `916`
- Identities: `916.0.0`
- Incoming calls: 1; outgoing calls: 205
- State writes: `0x00499f17 -> State 3; 0x0049a09c -> State 4; 0x0049a208 -> State 11; 0x0049a6c7 -> State 8; 0x0049a895 -> State 10; 0x0049a8fb -> State 3; 0x0049b1ec -> State 3; 0x0049b256 -> State 9; 0x0049b973 -> State 3; 0x0049c59b -> State 5; 0x0049ca47 -> State 16`
- StateFrame writes: `0x0049a0ad; 0x0049a49b; 0x0049a693; 0x0049a82e; 0x0049a8d2; 0x0049b197; 0x0049ba42; 0x0049beda; 0x0049c5a5`
- Shared attack/spawn calls: `0x00499f21 -> Isaac::genrand_int32 (0x006eef60); 0x0049a0a6 -> Isaac::genrand_int32 (0x006eef60); 0x0049a1e1 -> Isaac::genrand_int32 (0x006eef60); 0x0049a287 -> Isaac::genrand_int32 (0x006eef60); 0x0049a4e1 -> Entity_NPC::projectile_helper (0x006bec40); 0x0049a7c2 -> Isaac::genrand_int32 (0x006eef60); 0x0049a81c -> Isaac::genrand_int32 (0x006eef60); 0x0049a869 -> Isaac::genrand_int32 (0x006eef60); 0x0049a905 -> Isaac::genrand_int32 (0x006eef60); 0x0049aabf -> Isaac::genrand_int32 (0x006eef60); 0x0049ab5d -> entity_spawn_relay (0x00428b20); 0x0049ab64 -> Isaac::genrand_int32 (0x006eef60); 0x0049aba1 -> Isaac::genrand_int32 (0x006eef60); 0x0049af8c -> Isaac::genrand_int32 (0x006eef60); 0x0049afb6 -> Isaac::genrand_int32 (0x006eef60); 0x0049b01c -> Isaac::genrand_int32 (0x006eef60); 0x0049b062 -> Isaac::genrand_int32 (0x006eef60); 0x0049b11e -> entity_spawn_relay (0x00428b20); 0x0049b311 -> Isaac::genrand_int32 (0x006eef60); 0x0049b34a -> Isaac::genrand_int32 (0x006eef60); 0x0049b3c1 -> Isaac::genrand_int32 (0x006eef60); 0x0049b3e5 -> entity_spawn_relay (0x00428b20); 0x0049b3ec -> Isaac::genrand_int32 (0x006eef60); 0x0049b40f -> Isaac::genrand_int32 (0x006eef60); 0x0049b454 -> Isaac::genrand_int32 (0x006eef60); 0x0049b4ac -> Isaac::genrand_int32 (0x006eef60); 0x0049b508 -> Isaac::genrand_int32 (0x006eef60); 0x0049b52a -> entity_spawn_relay (0x00428b20); 0x0049b685 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0049b690 -> Isaac::genrand_int32 (0x006eef60); 0x0049b6c9 -> Isaac::genrand_int32 (0x006eef60); 0x0049b740 -> Isaac::genrand_int32 (0x006eef60); 0x0049b747 -> Isaac::genrand_int32 (0x006eef60); 0x0049b7e4 -> entity_spawn_relay (0x00428b20); 0x0049b97d -> Isaac::genrand_int32 (0x006eef60); 0x0049b994 -> Isaac::genrand_int32 (0x006eef60); 0x0049babb -> Isaac::genrand_int32 (0x006eef60); 0x0049bb59 -> entity_spawn_relay (0x00428b20); 0x0049bb60 -> Isaac::genrand_int32 (0x006eef60); 0x0049bb9d -> Isaac::genrand_int32 (0x006eef60); 0x0049bcbd -> Isaac::genrand_int32 (0x006eef60); 0x0049bcdc -> Entity_NPC::projectile_helper (0x006bec40); 0x0049bd3e -> Isaac::genrand_int32 (0x006eef60); 0x0049bd93 -> Isaac::genrand_int32 (0x006eef60); 0x0049bdd7 -> Isaac::genrand_int32 (0x006eef60); 0x0049be10 -> Isaac::genrand_int32 (0x006eef60); 0x0049be90 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0049c0a8 -> Isaac::genrand_int32 (0x006eef60); 0x0049c142 -> entity_spawn_relay (0x00428b20); 0x0049c20e -> entity_spawn_relay (0x00428b20); 0x0049c215 -> Isaac::genrand_int32 (0x006eef60); 0x0049c250 -> entity_spawn_relay (0x00428b20); 0x0049c5d0 -> Isaac::genrand_int32 (0x006eef60); 0x0049c657 -> Isaac::genrand_int32 (0x006eef60); 0x0049c6e2 -> Isaac::genrand_int32 (0x006eef60); 0x0049c700 -> entity_spawn_relay (0x00428b20); 0x0049c707 -> Isaac::genrand_int32 (0x006eef60); 0x0049c72a -> Isaac::genrand_int32 (0x006eef60); 0x0049c76f -> Isaac::genrand_int32 (0x006eef60); 0x0049c7c7 -> Isaac::genrand_int32 (0x006eef60); 0x0049c896 -> Entity_NPC::FireBossProjectiles (0x006ccdd0)`

### `0x004a12f0`

- C: [AI_004a12f0_004a12f0.c](ghidra-export/AI_004a12f0_004a12f0.c)
- ASM: [AI_004a12f0_004a12f0.asm](ghidra-export/AI_004a12f0_004a12f0.asm)
- Types: `914`
- Identities: `914.0.0`
- Incoming calls: 1; outgoing calls: 88
- State writes: `0x004a134f -> State 3; 0x004a16be -> State dynamic; 0x004a1aad -> State 3; 0x004a22ab -> State 3; 0x004a2481 -> State 3; 0x004a26d4 -> State 3`
- StateFrame writes: `0x004a13c1; 0x004a1773; 0x004a1af7; 0x004a1b28; 0x004a2289; 0x004a2453`
- Shared attack/spawn calls: `0x004a1415 -> Isaac::genrand_int32 (0x006eef60); 0x004a167b -> Isaac::genrand_int32 (0x006eef60); 0x004a16c9 -> Isaac::genrand_int32 (0x006eef60); 0x004a16e5 -> Isaac::genrand_int32 (0x006eef60); 0x004a171a -> Isaac::genrand_int32 (0x006eef60); 0x004a1724 -> Isaac::genrand_int32 (0x006eef60); 0x004a1742 -> Isaac::genrand_int32 (0x006eef60); 0x004a17f4 -> Isaac::genrand_int32 (0x006eef60); 0x004a1885 -> Isaac::genrand_int32 (0x006eef60); 0x004a18e7 -> entity_spawn_relay (0x00428b20); 0x004a18ee -> Isaac::genrand_int32 (0x006eef60); 0x004a19a9 -> Isaac::genrand_int32 (0x006eef60); 0x004a19fe -> entity_spawn_relay (0x00428b20); 0x004a1a05 -> Isaac::genrand_int32 (0x006eef60); 0x004a1cde -> Isaac::genrand_int32 (0x006eef60); 0x004a1d03 -> entity_spawn_relay (0x00428b20); 0x004a1d0a -> Isaac::genrand_int32 (0x006eef60); 0x004a1d55 -> Isaac::genrand_int32 (0x006eef60); 0x004a1fd1 -> Isaac::genrand_int32 (0x006eef60); 0x004a2020 -> Isaac::genrand_int32 (0x006eef60); 0x004a20a7 -> Isaac::genrand_int32 (0x006eef60); 0x004a20ff -> Isaac::genrand_int32 (0x006eef60); 0x004a2106 -> Isaac::genrand_int32 (0x006eef60); 0x004a215e -> Isaac::genrand_int32 (0x006eef60); 0x004a21f8 -> entity_spawn_relay (0x00428b20); 0x004a2428 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004a250f -> Isaac::genrand_int32 (0x006eef60); 0x004a25ff -> Isaac::genrand_int32 (0x006eef60); 0x004a2668 -> entity_spawn_relay (0x00428b20); 0x004a2790 -> Isaac::genrand_int32 (0x006eef60); 0x004a27b0 -> entity_spawn_relay (0x00428b20); 0x004a286d -> damage_filter (0x006ac560)`

### `0x004a3040`

- C: [AI_004a3040_004a3040.c](ghidra-export/AI_004a3040_004a3040.c)
- ASM: [AI_004a3040_004a3040.asm](ghidra-export/AI_004a3040_004a3040.asm)
- Types: `917`
- Identities: `917.0.0`
- Incoming calls: 1; outgoing calls: 194
- State writes: `0x004a3175 -> State 16; 0x004a3257 -> State 3; 0x004a34a8 -> State dynamic; 0x004a4113 -> State 3; 0x004a44bd -> State 3; 0x004a49bf -> State 4; 0x004a4c96 -> State 10; 0x004a4cb1 -> State 11; 0x004a5423 -> State 10; 0x004a5432 -> State 4; 0x004a5701 -> State 4`
- Shared attack/spawn calls: `0x004a37c7 -> Isaac::genrand_int32 (0x006eef60); 0x004a3848 -> Isaac::genrand_int32 (0x006eef60); 0x004a3898 -> Isaac::genrand_int32 (0x006eef60); 0x004a38b7 -> Isaac::genrand_int32 (0x006eef60); 0x004a3935 -> Isaac::genrand_int32 (0x006eef60); 0x004a39a2 -> Isaac::genrand_int32 (0x006eef60); 0x004a39f7 -> entity_spawn_relay (0x00428b20); 0x004a3a26 -> Isaac::genrand_int32 (0x006eef60); 0x004a3bd8 -> Isaac::genrand_int32 (0x006eef60); 0x004a3c31 -> Isaac::genrand_int32 (0x006eef60); 0x004a3c88 -> entity_spawn_relay (0x00428b20); 0x004a3cbd -> Isaac::genrand_int32 (0x006eef60); 0x004a3dd8 -> Isaac::genrand_int32 (0x006eef60); 0x004a3e3f -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004a3f00 -> Isaac::genrand_int32 (0x006eef60); 0x004a3f67 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004a411d -> Isaac::genrand_int32 (0x006eef60); 0x004a41d1 -> Isaac::genrand_int32 (0x006eef60); 0x004a41f9 -> entity_spawn_relay (0x00428b20); 0x004a421b -> Isaac::genrand_int32 (0x006eef60); 0x004a43d0 -> Isaac::genrand_int32 (0x006eef60); 0x004a444b -> entity_spawn_relay (0x00428b20); 0x004a44c7 -> Isaac::genrand_int32 (0x006eef60); 0x004a46b6 -> Isaac::genrand_int32 (0x006eef60); 0x004a4731 -> Isaac::genrand_int32 (0x006eef60); 0x004a479f -> Isaac::genrand_int32 (0x006eef60); 0x004a47c6 -> entity_spawn_relay (0x00428b20); 0x004a485a -> Isaac::genrand_int32 (0x006eef60); 0x004a487f -> entity_spawn_relay (0x00428b20); 0x004a4998 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004a49c9 -> Isaac::genrand_int32 (0x006eef60); 0x004a4ba4 -> Isaac::genrand_int32 (0x006eef60); 0x004a4f3a -> Isaac::genrand_int32 (0x006eef60); 0x004a5017 -> entity_spawn_relay (0x00428b20); 0x004a5058 -> Isaac::genrand_int32 (0x006eef60); 0x004a512e -> entity_spawn_relay (0x00428b20); 0x004a5261 -> Isaac::genrand_int32 (0x006eef60); 0x004a52dc -> Isaac::genrand_int32 (0x006eef60); 0x004a534a -> Isaac::genrand_int32 (0x006eef60); 0x004a5371 -> entity_spawn_relay (0x00428b20); 0x004a53b1 -> Isaac::genrand_int32 (0x006eef60); 0x004a543c -> Isaac::genrand_int32 (0x006eef60); 0x004a5664 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004a569e -> Isaac::genrand_int32 (0x006eef60); 0x004a56c3 -> entity_spawn_relay (0x00428b20); 0x004a570b -> Isaac::genrand_int32 (0x006eef60); 0x004a579b -> Isaac::genrand_int32 (0x006eef60); 0x004a57e1 -> Isaac::genrand_int32 (0x006eef60); 0x004a585f -> Isaac::genrand_int32 (0x006eef60); 0x004a58bc -> entity_spawn_relay (0x00428b20)`

### `0x004a6500`

- C: [AI_004a6500_004a6500.c](ghidra-export/AI_004a6500_004a6500.c)
- ASM: [AI_004a6500_004a6500.asm](ghidra-export/AI_004a6500_004a6500.asm)
- Types: `412`
- Identities: `412.0.0`
- Incoming calls: 1; outgoing calls: 117
- State writes: `0x004a6b3f -> State 8; 0x004a6ef8 -> State 0; 0x004a6fcf -> State 4; 0x004a7090 -> State 3; 0x004a7183 -> State 3; 0x004a7403 -> State 1`
- StateFrame writes: `0x004a6be4; 0x004a6fb0`
- Invincible writes: `0x004a67af = 1; 0x004a6a29 = 1`
- Shared attack/spawn calls: `0x004a672a -> Isaac::genrand_int32 (0x006eef60); 0x004a6ab9 -> Isaac::genrand_int32 (0x006eef60); 0x004a6b17 -> Isaac::genrand_int32 (0x006eef60); 0x004a6b6b -> Isaac::genrand_int32 (0x006eef60); 0x004a6c7f -> Isaac::genrand_int32 (0x006eef60); 0x004a6d1e -> Isaac::genrand_int32 (0x006eef60); 0x004a6db1 -> Isaac::genrand_int32 (0x006eef60); 0x004a6e1d -> Isaac::genrand_int32 (0x006eef60); 0x004a6ec7 -> Isaac::genrand_int32 (0x006eef60); 0x004a6f08 -> Isaac::genrand_int32 (0x006eef60); 0x004a6f66 -> Isaac::genrand_int32 (0x006eef60); 0x004a748f -> Isaac::genrand_int32 (0x006eef60); 0x004a74be -> entity_spawn_relay (0x00428b20); 0x004a7e6c -> Isaac::genrand_int32 (0x006eef60); 0x004a7fdd -> Isaac::genrand_int32 (0x006eef60); 0x004a81ce -> Isaac::genrand_int32 (0x006eef60)`

### `0x004b1ee0`

- C: [AI_004b1ee0_004b1ee0.c](ghidra-export/AI_004b1ee0_004b1ee0.c)
- ASM: [AI_004b1ee0_004b1ee0.asm](ghidra-export/AI_004b1ee0_004b1ee0.asm)
- Types: `907`
- Identities: `907.0.0, 907.0.1`
- Incoming calls: 1; outgoing calls: 82
- State writes: `0x004b1fef -> State 16; 0x004b211f -> State 3; 0x004b218b -> State 16; 0x004b2397 -> State 13; 0x004b2651 -> State 3; 0x004b2746 -> State 16; 0x004b279d -> State 6; 0x004b2afd -> State 7; 0x004b316b -> State 3; 0x004b31ef -> State 3; 0x004b32ec -> State 16`
- StateFrame writes: `0x004b1fb4; 0x004b216a; 0x004b31e7`
- Invincible writes: `0x004b212b = 1`
- Shared attack/spawn calls: `0x004b236d -> Isaac::genrand_int32 (0x006eef60); 0x004b23af -> Isaac::genrand_int32 (0x006eef60); 0x004b24fa -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x004b262d -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004b2866 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x004b287c -> Isaac::genrand_int32 (0x006eef60); 0x004b28a9 -> Isaac::genrand_int32 (0x006eef60); 0x004b293e -> Isaac::genrand_int32 (0x006eef60); 0x004b297d -> Isaac::genrand_int32 (0x006eef60); 0x004b2a69 -> entity_spawn_relay (0x00428b20); 0x004b2d1a -> Isaac::genrand_int32 (0x006eef60); 0x004b2d39 -> entity_spawn_relay (0x00428b20); 0x004b2d44 -> Isaac::genrand_int32 (0x006eef60); 0x004b2d95 -> Isaac::genrand_int32 (0x006eef60); 0x004b2ddc -> Isaac::genrand_int32 (0x006eef60); 0x004b2eae -> Isaac::genrand_int32 (0x006eef60); 0x004b2ed4 -> entity_spawn_relay (0x00428b20); 0x004b30d6 -> Isaac::genrand_int32 (0x006eef60); 0x004b30fc -> entity_spawn_relay (0x00428b20); 0x004b326c -> Isaac::genrand_int32 (0x006eef60)`

### `0x004b43c0`

- C: [AI_004b43c0_004b43c0.c](ghidra-export/AI_004b43c0_004b43c0.c)
- ASM: [AI_004b43c0_004b43c0.asm](ghidra-export/AI_004b43c0_004b43c0.asm)
- Types: `905`
- Identities: `905.0.0`
- Incoming calls: 1; outgoing calls: 16
- State writes: `0x004b47bd -> State dynamic; 0x004b48e4 -> State 4; 0x004b49c1 -> State 5; 0x004b4a48 -> State 3; 0x004b52fc -> State dynamic; 0x004b530c -> State dynamic; 0x004b5317 -> State 8; 0x004b55d8 -> State 7; 0x004b561e -> State 3; 0x004b5934 -> State 12; 0x004b5b68 -> State 3; 0x004b6277 -> State 15; 0x004b6541 -> State 3`
- StateFrame writes: `0x004b5797; 0x004b593e; 0x004b5a2d; 0x004b5a4f; 0x004b5af0; 0x004b5d43; 0x004b6281; 0x004b6556`
- Invincible writes: `0x004b474d = 1; 0x004b4a3b = 0`
- Shared attack/spawn calls: `0x004b45d0 -> Isaac::genrand_int32 (0x006eef60); 0x004b4620 -> Entity::Create dispatcher (0x006fe410)`

### `0x004b92e0`

- C: [AI_004b92e0_004b92e0.c](ghidra-export/AI_004b92e0_004b92e0.c)
- ASM: [AI_004b92e0_004b92e0.asm](ghidra-export/AI_004b92e0_004b92e0.asm)
- Types: `906`
- Identities: `906.0.0, 906.1.0`
- Incoming calls: 1; outgoing calls: 126
- State writes: `0x004b94c3 -> State 16; 0x004b9dfc -> State 3; 0x004ba2e0 -> State 4; 0x004bb00b -> State 13`
- StateFrame writes: `0x004b944a; 0x004b9714`
- Invincible writes: `0x004b94cd = 1`
- Shared attack/spawn calls: `0x004b938b -> Isaac::genrand_int32 (0x006eef60); 0x004b93af -> entity_spawn_relay (0x00428b20); 0x004b9636 -> Isaac::genrand_int32 (0x006eef60); 0x004b965c -> Isaac::genrand_int32 (0x006eef60); 0x004b9855 -> Isaac::genrand_int32 (0x006eef60); 0x004b98cc -> Isaac::genrand_int32 (0x006eef60); 0x004b98ed -> entity_spawn_relay (0x00428b20); 0x004b9a3e -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x004b9bd9 -> Isaac::genrand_int32 (0x006eef60); 0x004b9e20 -> Isaac::genrand_int32 (0x006eef60); 0x004ba13a -> Isaac::genrand_int32 (0x006eef60); 0x004ba15a -> entity_spawn_relay (0x00428b20); 0x004ba903 -> Isaac::genrand_int32 (0x006eef60); 0x004babe8 -> Isaac::genrand_int32 (0x006eef60); 0x004bac0b -> entity_spawn_relay (0x00428b20); 0x004bac10 -> Isaac::genrand_int32 (0x006eef60); 0x004bac2d -> entity_spawn_relay (0x00428b20); 0x004bac90 -> Isaac::genrand_int32 (0x006eef60); 0x004bacc9 -> Isaac::genrand_int32 (0x006eef60); 0x004bad40 -> Isaac::genrand_int32 (0x006eef60); 0x004bad61 -> entity_spawn_relay (0x00428b20); 0x004bad98 -> Isaac::genrand_int32 (0x006eef60); 0x004badbb -> entity_spawn_relay (0x00428b20); 0x004bae08 -> Isaac::genrand_int32 (0x006eef60); 0x004baf1e -> Isaac::genrand_int32 (0x006eef60)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x004bb9b0`

- C: [AI_004bb9b0_004bb9b0.c](ghidra-export/AI_004bb9b0_004bb9b0.c)
- ASM: [AI_004bb9b0_004bb9b0.asm](ghidra-export/AI_004bb9b0_004bb9b0.asm)
- Types: `967`
- Identities: `967.0.0`
- Incoming calls: 1; outgoing calls: 11
- State writes: `0x004bbad1 -> State 3; 0x004bbd9f -> State 3`
- StateFrame writes: `0x004bba09; 0x004bbadb`

### `0x004bd2a0`

- C: [AI_004bd2a0_004bd2a0.c](ghidra-export/AI_004bd2a0_004bd2a0.c)
- ASM: [AI_004bd2a0_004bd2a0.asm](ghidra-export/AI_004bd2a0_004bd2a0.asm)
- Types: `920`
- Identities: `920.0.0`
- Incoming calls: 1; outgoing calls: 6
- State writes: `0x004bd39e -> State 3; 0x004bd48e -> State 13; 0x004bd4ac -> State 10; 0x004bd4e7 -> State 11; 0x004bd518 -> State 6; 0x004bd551 -> State 9; 0x004bd7b0 -> State 3; 0x004bd868 -> State 8; 0x004bd93c -> State 6; 0x004bd95f -> State 3; 0x004bdaa8 -> State 7; 0x004bdb5b -> State 9; 0x004bdf5b -> State 3`
- StateFrame writes: `0x004bd3d6; 0x004bd45b; 0x004bd4bf; 0x004bd589; 0x004bd7a6; 0x004bd946; 0x004bd969; 0x004bdb65; 0x004bdf65; 0x004be320`
- Shared attack/spawn calls: `0x004be532 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004be6f0`

- C: [AI_004be6f0_004be6f0.c](ghidra-export/AI_004be6f0_004be6f0.c)
- ASM: [AI_004be6f0_004be6f0.asm](ghidra-export/AI_004be6f0_004be6f0.asm)
- Types: `298`
- Identities: `298.0.0`
- Incoming calls: 1; outgoing calls: 32
- State writes: `0x004be75a -> State 3; 0x004be955 -> State 9; 0x004be961 -> State 8; 0x004bed5c -> State 3; 0x004bede8 -> State 3`
- Shared attack/spawn calls: `0x004be8ec -> Isaac::genrand_int32 (0x006eef60); 0x004be90f -> Isaac::genrand_int32 (0x006eef60); 0x004beb7a -> Isaac::genrand_int32 (0x006eef60); 0x004bebd9 -> Isaac::genrand_int32 (0x006eef60); 0x004bec12 -> Isaac::genrand_int32 (0x006eef60); 0x004bed27 -> Isaac::genrand_int32 (0x006eef60); 0x004bed3c -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x004bee40`

- C: [AI_004bee40_004bee40.c](ghidra-export/AI_004bee40_004bee40.c)
- ASM: [AI_004bee40_004bee40.asm](ghidra-export/AI_004bee40_004bee40.asm)
- Types: `297`
- Identities: `297.0.0`
- Incoming calls: 1; outgoing calls: 24
- State writes: `0x004beed3 -> State 4; 0x004bef53 -> State 16; 0x004bf06f -> State 4`
- StateFrame writes: `0x004beedd; 0x004bf079`
- Shared attack/spawn calls: `0x004bf23c -> Entity_NPC::projectile_helper (0x006bec40); 0x004bf269 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004bf310`

- C: [AI_004bf310_004bf310.c](ghidra-export/AI_004bf310_004bf310.c)
- ASM: [AI_004bf310_004bf310.asm](ghidra-export/AI_004bf310_004bf310.asm)
- Types: `296`
- Identities: `296.0.0`
- Incoming calls: 1; outgoing calls: 40
- State writes: `0x004bf354 -> State 3`
- Shared attack/spawn calls: `0x004bf373 -> Isaac::genrand_int32 (0x006eef60); 0x004bf411 -> Isaac::genrand_int32 (0x006eef60); 0x004bf47a -> Isaac::genrand_int32 (0x006eef60); 0x004bf490 -> Isaac::genrand_int32 (0x006eef60); 0x004bf4aa -> Isaac::genrand_int32 (0x006eef60)`

### `0x004bfd30`

- C: [AI_004bfd30_004bfd30.c](ghidra-export/AI_004bfd30_004bfd30.c)
- ASM: [AI_004bfd30_004bfd30.asm](ghidra-export/AI_004bfd30_004bfd30.asm)
- Types: `407`
- Identities: `407.0.0`
- Incoming calls: 1; outgoing calls: 282
- State writes: `0x004bfdcf -> State 2; 0x004bff99 -> State 3; 0x004c0a6e -> State 16; 0x004c184b -> State dynamic`
- StateFrame writes: `0x004bfdbb; 0x004c0b46; 0x004c0c1f`
- Invincible writes: `0x004bfe7f = 1; 0x004c0663 = 0; 0x004c0680 = 1; 0x004c06d0 = 0`
- Shared attack/spawn calls: `0x004c004a -> Isaac::genrand_int32 (0x006eef60); 0x004c00d7 -> Isaac::genrand_int32 (0x006eef60); 0x004c0164 -> Isaac::genrand_int32 (0x006eef60); 0x004c0fdb -> Isaac::genrand_int32 (0x006eef60); 0x004c1814 -> Isaac::genrand_int32 (0x006eef60); 0x004c18cc -> Isaac::genrand_int32 (0x006eef60); 0x004c193c -> Isaac::genrand_int32 (0x006eef60); 0x004c198d -> Isaac::genrand_int32 (0x006eef60); 0x004c19c5 -> Isaac::genrand_int32 (0x006eef60); 0x004c19d3 -> Isaac::genrand_int32 (0x006eef60); 0x004c1ac9 -> Isaac::genrand_int32 (0x006eef60); 0x004c1ae6 -> Isaac::genrand_int32 (0x006eef60); 0x004c1af3 -> Isaac::genrand_int32 (0x006eef60); 0x004c21c0 -> Isaac::genrand_int32 (0x006eef60); 0x004c2200 -> Isaac::genrand_int32 (0x006eef60); 0x004c2220 -> Isaac::genrand_int32 (0x006eef60); 0x004c2257 -> Isaac::genrand_int32 (0x006eef60); 0x004c230d -> entity_spawn_relay (0x00428b20); 0x004c2391 -> Isaac::genrand_int32 (0x006eef60); 0x004c274a -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004c286c -> Isaac::genrand_int32 (0x006eef60); 0x004c28b8 -> Isaac::genrand_int32 (0x006eef60); 0x004c28da -> entity_spawn_relay (0x00428b20); 0x004c2a4f -> Isaac::genrand_int32 (0x006eef60); 0x004c2aa9 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004c2bd2 -> Isaac::genrand_int32 (0x006eef60); 0x004c2d42 -> Isaac::genrand_int32 (0x006eef60); 0x004c2d64 -> entity_spawn_relay (0x00428b20); 0x004c2eca -> Isaac::genrand_int32 (0x006eef60); 0x004c2f0a -> Isaac::genrand_int32 (0x006eef60); 0x004c2f18 -> Isaac::genrand_int32 (0x006eef60); 0x004c303d -> Isaac::genrand_int32 (0x006eef60); 0x004c305e -> entity_spawn_relay (0x00428b20); 0x004c3069 -> Isaac::genrand_int32 (0x006eef60); 0x004c31ed -> Isaac::genrand_int32 (0x006eef60); 0x004c35a6 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004c3676 -> Isaac::genrand_int32 (0x006eef60); 0x004c36bb -> Isaac::genrand_int32 (0x006eef60); 0x004c37c8 -> Isaac::genrand_int32 (0x006eef60); 0x004c37d7 -> Isaac::genrand_int32 (0x006eef60); 0x004c384d -> Isaac::genrand_int32 (0x006eef60); 0x004c38c3 -> Isaac::genrand_int32 (0x006eef60); 0x004c3921 -> Isaac::genrand_int32 (0x006eef60); 0x004c399a -> Isaac::genrand_int32 (0x006eef60); 0x004c3a05 -> Isaac::genrand_int32 (0x006eef60); 0x004c3a75 -> Isaac::genrand_int32 (0x006eef60); 0x004c3a97 -> entity_spawn_relay (0x00428b20); 0x004c3a9e -> Isaac::genrand_int32 (0x006eef60); 0x004c4747 -> Isaac::genrand_int32 (0x006eef60); 0x004c4da1 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004c52ce -> Isaac::genrand_int32 (0x006eef60); 0x004c5326 -> Isaac::genrand_int32 (0x006eef60); 0x004c53df -> Isaac::genrand_int32 (0x006eef60); 0x004c54a1 -> Isaac::genrand_int32 (0x006eef60); 0x004c54d2 -> entity_spawn_relay (0x00428b20); 0x004c54ff -> Isaac::genrand_int32 (0x006eef60); 0x004c5521 -> entity_spawn_relay (0x00428b20); 0x004c5545 -> Entity_NPC::projectile_helper (0x006bec40); 0x004c56fc -> Isaac::genrand_int32 (0x006eef60)`

### `0x004c59d0`

- C: [AI_004c59d0_004c59d0.c](ghidra-export/AI_004c59d0_004c59d0.c)
- ASM: [AI_004c59d0_004c59d0.asm](ghidra-export/AI_004c59d0_004c59d0.asm)
- Types: `413`
- Identities: `413.0.0`
- Incoming calls: 1; outgoing calls: 30
- State writes: `0x004c5e40 -> State 7; 0x004c5ef5 -> State 5; 0x004c5f5b -> State 3; 0x004c6205 -> State 13; 0x004c636f -> State 8; 0x004c6385 -> State dynamic; 0x004c63dc -> State 6; 0x004c7802 -> State 3; 0x004c7897 -> State 3; 0x004c7e93 -> State 8; 0x004c801d -> State 16`
- StateFrame writes: `0x004c620f; 0x004c733a; 0x004c77b8; 0x004c77e2; 0x004c7e9d`
- Shared attack/spawn calls: `0x004c5b80 -> Isaac::genrand_int32 (0x006eef60); 0x004c5c5e -> Isaac::genrand_int32 (0x006eef60); 0x004c5c65 -> Isaac::genrand_int32 (0x006eef60); 0x004c5cd8 -> entity_spawn_relay (0x00428b20); 0x004c5d2e -> Isaac::genrand_int32 (0x006eef60); 0x004c5d53 -> entity_spawn_relay (0x00428b20); 0x004c5fff -> Isaac::genrand_int32 (0x006eef60); 0x004c6097 -> Isaac::genrand_int32 (0x006eef60); 0x004c7f35 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004ce8a0`

- C: [AI_004ce8a0_004ce8a0.c](ghidra-export/AI_004ce8a0_004ce8a0.c)
- ASM: [AI_004ce8a0_004ce8a0.asm](ghidra-export/AI_004ce8a0_004ce8a0.asm)
- Types: `965`
- Identities: `965.0.0`
- Incoming calls: 4; outgoing calls: 17
- State writes: `0x004ce8d6 -> State dynamic; 0x004cee29 -> State 3`
- StateFrame writes: `0x004ce909; 0x004cecaf; 0x004cecc7`
- Invincible writes: `0x004ce8ff = 1`
- Shared attack/spawn calls: `0x004ce9ae -> Isaac::genrand_int32 (0x006eef60); 0x004cea2e -> Entity::Create dispatcher (0x006fe410); 0x004cea35 -> Isaac::genrand_int32 (0x006eef60); 0x004cea72 -> Isaac::genrand_int32 (0x006eef60); 0x004ceac0 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004cf690`

- C: [AI_004cf690_004cf690.c](ghidra-export/AI_004cf690_004cf690.c)
- ASM: [AI_004cf690_004cf690.asm](ghidra-export/AI_004cf690_004cf690.asm)
- Types: `913`
- Identities: `913.0.0`
- Incoming calls: 1; outgoing calls: 129
- State writes: `0x004cf73f -> State 3; 0x004cfb7b -> State 16; 0x004cfc74 -> State 3; 0x004cfe8d -> State 13; 0x004cff48 -> State 14; 0x004cffac -> State 6; 0x004d0037 -> State dynamic; 0x004d0787 -> State 8; 0x004d07a3 -> State dynamic; 0x004d10ed -> State 3`
- StateFrame writes: `0x004cfe2c; 0x004d00c0; 0x004d07f6; 0x004d0df2; 0x004d0e81; 0x004d0ec0`
- Invincible writes: `0x004cf72f = 1`
- Shared attack/spawn calls: `0x004cfd0c -> Entity_NPC::projectile_helper (0x006bec40); 0x004cfe10 -> Isaac::genrand_int32 (0x006eef60); 0x004cfeb3 -> Isaac::genrand_int32 (0x006eef60); 0x004cfef3 -> Isaac::genrand_int32 (0x006eef60); 0x004cff36 -> Isaac::genrand_int32 (0x006eef60); 0x004cff6e -> Isaac::genrand_int32 (0x006eef60); 0x004cff96 -> Isaac::genrand_int32 (0x006eef60); 0x004d0000 -> Isaac::genrand_int32 (0x006eef60); 0x004d002a -> Isaac::genrand_int32 (0x006eef60); 0x004d003d -> Isaac::genrand_int32 (0x006eef60); 0x004d0300 -> Isaac::genrand_int32 (0x006eef60); 0x004d031e -> entity_spawn_relay (0x00428b20); 0x004d0553 -> Isaac::genrand_int32 (0x006eef60); 0x004d0796 -> Isaac::genrand_int32 (0x006eef60); 0x004d0921 -> Isaac::genrand_int32 (0x006eef60); 0x004d0958 -> Isaac::genrand_int32 (0x006eef60); 0x004d0998 -> Isaac::genrand_int32 (0x006eef60); 0x004d0ae1 -> Isaac::genrand_int32 (0x006eef60); 0x004d0af8 -> Isaac::genrand_int32 (0x006eef60); 0x004d0bd0 -> Isaac::genrand_int32 (0x006eef60); 0x004d0bf2 -> entity_spawn_relay (0x00428b20); 0x004d0db2 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004d1290`

- C: [AI_004d1290_004d1290.c](ghidra-export/AI_004d1290_004d1290.c)
- ASM: [AI_004d1290_004d1290.asm](ghidra-export/AI_004d1290_004d1290.asm)
- Types: `45`
- Identities: `45.0.0, 45.10.0`
- Incoming calls: 1; outgoing calls: 141
- State writes: `0x004d14c4 -> State 3; 0x004d19ed -> State 3; 0x004d1a48 -> State 3; 0x004d1c6f -> State 6; 0x004d1cb7 -> State 7; 0x004d2122 -> State 3; 0x004d26b3 -> State 9; 0x004d27fd -> State dynamic; 0x004d2900 -> State 10`
- StateFrame writes: `0x004d1cc1; 0x004d1ce9; 0x004d1e61; 0x004d1ead`
- Shared attack/spawn calls: `0x004d12ed -> Isaac::genrand_int32 (0x006eef60); 0x004d1334 -> Isaac::genrand_int32 (0x006eef60); 0x004d192d -> Isaac::genrand_int32 (0x006eef60); 0x004d1aee -> Isaac::genrand_int32 (0x006eef60); 0x004d1b7d -> Isaac::genrand_int32 (0x006eef60); 0x004d1fa7 -> Isaac::genrand_int32 (0x006eef60); 0x004d1fc3 -> entity_spawn_relay (0x00428b20); 0x004d2657 -> Isaac::genrand_int32 (0x006eef60); 0x004d26e5 -> Isaac::genrand_int32 (0x006eef60); 0x004d2848 -> Isaac::genrand_int32 (0x006eef60); 0x004d28e3 -> Isaac::genrand_int32 (0x006eef60); 0x004d2cf4 -> Isaac::genrand_int32 (0x006eef60); 0x004d2d5e -> Isaac::genrand_int32 (0x006eef60); 0x004d2d75 -> Isaac::genrand_int32 (0x006eef60); 0x004d2d96 -> Isaac::genrand_int32 (0x006eef60); 0x004d2ddd -> Isaac::genrand_int32 (0x006eef60); 0x004d2e2c -> entity_spawn_relay (0x00428b20); 0x004d2f44 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x004d48b0`

- C: [AI_004d48b0_004d48b0.c](ghidra-export/AI_004d48b0_004d48b0.c)
- ASM: [AI_004d48b0_004d48b0.asm](ghidra-export/AI_004d48b0_004d48b0.asm)
- Types: `78`
- Identities: `78.0.0, 78.1.0, 78.10.0`
- Incoming calls: 1; outgoing calls: 70
- State writes: `0x004d4928 -> State 3; 0x004d4cd2 -> State 3; 0x004d5f21 -> State 3`
- StateFrame writes: `0x004d4cc8; 0x004d5429; 0x004d54b3; 0x004d55b1; 0x004d5f2b; 0x004d6499`
- Shared attack/spawn calls: `0x004d4a94 -> Isaac::genrand_int32 (0x006eef60); 0x004d4ad4 -> Isaac::genrand_int32 (0x006eef60); 0x004d4b77 -> Isaac::genrand_int32 (0x006eef60); 0x004d4d08 -> Isaac::genrand_int32 (0x006eef60); 0x004d4d51 -> Entity::Create dispatcher (0x006fe410); 0x004d4e4c -> Isaac::genrand_int32 (0x006eef60); 0x004d4e86 -> Isaac::genrand_int32 (0x006eef60); 0x004d4ea4 -> Entity::Create dispatcher (0x006fe410); 0x004d586f -> Isaac::genrand_int32 (0x006eef60); 0x004d58f5 -> Isaac::genrand_int32 (0x006eef60); 0x004d59a3 -> Isaac::genrand_int32 (0x006eef60); 0x004d59cc -> Entity::Create dispatcher (0x006fe410); 0x004d5a73 -> Isaac::genrand_int32 (0x006eef60); 0x004d5acf -> Entity::Create dispatcher (0x006fe410); 0x004d5ad4 -> Isaac::genrand_int32 (0x006eef60); 0x004d5b24 -> Entity::Create dispatcher (0x006fe410); 0x004d5b29 -> Isaac::genrand_int32 (0x006eef60); 0x004d5b79 -> Entity::Create dispatcher (0x006fe410); 0x004d5c17 -> Isaac::genrand_int32 (0x006eef60); 0x004d5c40 -> Entity::Create dispatcher (0x006fe410)`

### `0x004d77b0`

- C: [AI_004d77b0_004d77b0.c](ghidra-export/AI_004d77b0_004d77b0.c)
- ASM: [AI_004d77b0_004d77b0.asm](ghidra-export/AI_004d77b0_004d77b0.asm)
- Types: `853`
- Identities: `853.0.0`
- Incoming calls: 1; outgoing calls: 50
- State writes: `0x004d7931 -> State 3; 0x004d7b8d -> State 3`
- Shared attack/spawn calls: `0x004d7c86 -> Isaac::genrand_int32 (0x006eef60); 0x004d7cea -> damage_filter (0x006ac560); 0x004d7d7c -> Isaac::genrand_int32 (0x006eef60); 0x004d8042 -> Isaac::genrand_int32 (0x006eef60); 0x004d810d -> Isaac::genrand_int32 (0x006eef60); 0x004d814e -> Isaac::genrand_int32 (0x006eef60); 0x004d8190 -> Isaac::genrand_int32 (0x006eef60); 0x004d8421 -> Isaac::genrand_int32 (0x006eef60); 0x004d8442 -> entity_spawn_relay (0x00428b20); 0x004d8480 -> Isaac::genrand_int32 (0x006eef60); 0x004d88a3 -> Isaac::genrand_int32 (0x006eef60); 0x004d88c3 -> entity_spawn_relay (0x00428b20)`

### `0x004d9000`

- C: [AI_004d9000_004d9000.c](ghidra-export/AI_004d9000_004d9000.c)
- ASM: [AI_004d9000_004d9000.asm](ghidra-export/AI_004d9000_004d9000.asm)
- Types: `854`
- Identities: `854.0.0`
- Incoming calls: 1; outgoing calls: 9
- State writes: `0x004d9089 -> State 3; 0x004d944f -> State 6; 0x004d9527 -> State 8; 0x004d9911 -> State 3; 0x004d9ad0 -> State 7; 0x004d9d3a -> State 10; 0x004d9d4f -> State 3`
- StateFrame writes: `0x004d909d; 0x004d9449; 0x004d9a43; 0x004d9b02; 0x004d9b91; 0x004d9b99`
- Shared attack/spawn calls: `0x004da3d6 -> Isaac::genrand_int32 (0x006eef60); 0x004da411 -> Isaac::genrand_int32 (0x006eef60); 0x004da494 -> Isaac::genrand_int32 (0x006eef60); 0x004da4d3 -> Isaac::genrand_int32 (0x006eef60); 0x004da4dd -> Isaac::genrand_int32 (0x006eef60); 0x004da500 -> entity_spawn_relay (0x00428b20)`

### `0x004db6a0`

- C: [AI_004db6a0_004db6a0.c](ghidra-export/AI_004db6a0_004db6a0.c)
- ASM: [AI_004db6a0_004db6a0.asm](ghidra-export/AI_004db6a0_004db6a0.asm)
- Types: `851`
- Identities: `851.0.0`
- Incoming calls: 1; outgoing calls: 59
- State writes: `0x004db924 -> State 4; 0x004dbc55 -> State 6; 0x004dbd95 -> State 4; 0x004dc3ae -> State 6`
- StateFrame writes: `0x004dbe34`
- Shared attack/spawn calls: `0x004dba91 -> Entity_NPC::projectile_helper (0x006bec40); 0x004dbaab -> Isaac::genrand_int32 (0x006eef60); 0x004dbb01 -> Isaac::genrand_int32 (0x006eef60); 0x004dbb5f -> Isaac::genrand_int32 (0x006eef60); 0x004dbbb1 -> Isaac::genrand_int32 (0x006eef60); 0x004dbc1e -> Isaac::genrand_int32 (0x006eef60); 0x004dbc88 -> Isaac::genrand_int32 (0x006eef60); 0x004dc0e4 -> Isaac::genrand_int32 (0x006eef60); 0x004dc11c -> Isaac::genrand_int32 (0x006eef60); 0x004dc1a6 -> Isaac::genrand_int32 (0x006eef60); 0x004dc414 -> Isaac::genrand_int32 (0x006eef60); 0x004dc426 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004dc490`

- C: [AI_004dc490_004dc490.c](ghidra-export/AI_004dc490_004dc490.c)
- ASM: [AI_004dc490_004dc490.asm](ghidra-export/AI_004dc490_004dc490.asm)
- Types: `852`
- Identities: `852.0.0`
- Incoming calls: 1; outgoing calls: 14
- State writes: `0x004dc847 -> State 3`
- Invincible writes: `0x004dc851 = 1`
- Shared attack/spawn calls: `0x004dca55 -> Isaac::genrand_int32 (0x006eef60); 0x004dca79 -> Entity::Create dispatcher (0x006fe410)`

### `0x004dca90`

- C: [AI_004dca90_004dca90.c](ghidra-export/AI_004dca90_004dca90.c)
- ASM: [AI_004dca90_004dca90.asm](ghidra-export/AI_004dca90_004dca90.asm)
- Types: `860`
- Identities: `860.0.0`
- Incoming calls: 1; outgoing calls: 42
- State writes: `0x004dcaf6 -> State 3; 0x004dcda0 -> State 6; 0x004dd0c7 -> State 7; 0x004dd1e8 -> State 3`
- Shared attack/spawn calls: `0x004dcb36 -> Isaac::genrand_int32 (0x006eef60); 0x004dcd2c -> Isaac::genrand_int32 (0x006eef60); 0x004dcfa0 -> Isaac::genrand_int32 (0x006eef60); 0x004dd208 -> Entity_NPC::projectile_helper (0x006bec40)`

### `0x004dd7f0`

- C: [AI_004dd7f0_004dd7f0.c](ghidra-export/AI_004dd7f0_004dd7f0.c)
- ASM: [AI_004dd7f0_004dd7f0.asm](ghidra-export/AI_004dd7f0_004dd7f0.asm)
- Types: `856`
- Identities: `856.0.0`
- Incoming calls: 1; outgoing calls: 30
- State writes: `0x004ddca5 -> State 8; 0x004dde08 -> State 3`
- Shared attack/spawn calls: `0x004dd989 -> Entity_NPC::projectile_helper (0x006bec40); 0x004dda1e -> Isaac::genrand_int32 (0x006eef60); 0x004dda98 -> Entity::Create dispatcher (0x006fe410); 0x004ddd69 -> Isaac::genrand_int32 (0x006eef60); 0x004ddd8d -> Entity::Create dispatcher (0x006fe410); 0x004dddf1 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004dea40`

- C: [AI_004dea40_004dea40.c](ghidra-export/AI_004dea40_004dea40.c)
- ASM: [AI_004dea40_004dea40.asm](ghidra-export/AI_004dea40_004dea40.asm)
- Types: `861`
- Identities: `861.0.0`
- Incoming calls: 1; outgoing calls: 34
- State writes: `0x004dec85 -> State 3`
- StateFrame writes: `0x004deb91; 0x004debb0; 0x004debe2; 0x004dec7b`
- Shared attack/spawn calls: `0x004deb97 -> Isaac::genrand_int32 (0x006eef60); 0x004deded -> Isaac::genrand_int32 (0x006eef60); 0x004dee59 -> Isaac::genrand_int32 (0x006eef60); 0x004dee77 -> Entity::Create dispatcher (0x006fe410); 0x004deeaf -> Isaac::genrand_int32 (0x006eef60); 0x004deece -> Entity::Create dispatcher (0x006fe410); 0x004deed5 -> Isaac::genrand_int32 (0x006eef60); 0x004defda -> Isaac::genrand_int32 (0x006eef60); 0x004df00f -> Isaac::genrand_int32 (0x006eef60); 0x004df11b -> Isaac::genrand_int32 (0x006eef60); 0x004df155 -> Isaac::genrand_int32 (0x006eef60); 0x004df213 -> Isaac::genrand_int32 (0x006eef60); 0x004df24d -> Isaac::genrand_int32 (0x006eef60); 0x004df2d5 -> Isaac::genrand_int32 (0x006eef60); 0x004df313 -> Isaac::genrand_int32 (0x006eef60); 0x004df31d -> Isaac::genrand_int32 (0x006eef60); 0x004df345 -> entity_spawn_relay (0x00428b20); 0x004df38f -> Isaac::genrand_int32 (0x006eef60); 0x004df3b0 -> Entity::Create dispatcher (0x006fe410)`

### `0x004df3f0`

- C: [AI_004df3f0_004df3f0.c](ghidra-export/AI_004df3f0_004df3f0.c)
- ASM: [AI_004df3f0_004df3f0.asm](ghidra-export/AI_004df3f0_004df3f0.asm)
- Types: `865`
- Identities: `865.0.0, 865.10.0`
- Incoming calls: 1; outgoing calls: 61
- State writes: `0x004df74a -> State 3; 0x004e0128 -> State 3; 0x004e0245 -> State 8; 0x004e04a8 -> State 3; 0x004e04e2 -> State 7`
- Shared attack/spawn calls: `0x004df5da -> Isaac::genrand_int32 (0x006eef60); 0x004df67b -> Isaac::genrand_int32 (0x006eef60); 0x004e03de -> Isaac::genrand_int32 (0x006eef60); 0x004e0431 -> entity_spawn_relay (0x00428b20)`

### `0x004e0dd0`

- C: [AI_004e0dd0_004e0dd0.c](ghidra-export/AI_004e0dd0_004e0dd0.c)
- ASM: [AI_004e0dd0_004e0dd0.asm](ghidra-export/AI_004e0dd0_004e0dd0.asm)
- Types: `831`
- Identities: `831.0.0, 831.10.0, 831.20.0`
- Incoming calls: 1; outgoing calls: 135
- State writes: `0x004e1120 -> State 4; 0x004e1247 -> State 13; 0x004e1488 -> State 4; 0x004e16b6 -> State 4; 0x004e1cdf -> State 4; 0x004e1eb5 -> State 4; 0x004e261c -> State 8; 0x004e2a2f -> State 4`
- StateFrame writes: `0x004e1ebf; 0x004e26f1`
- Invincible writes: `0x004e1ce9 = 1`
- Shared attack/spawn calls: `0x004e0f54 -> Isaac::genrand_int32 (0x006eef60); 0x004e0f77 -> entity_spawn_relay (0x00428b20); 0x004e0fbb -> Isaac::genrand_int32 (0x006eef60); 0x004e103b -> entity_spawn_relay (0x00428b20); 0x004e1148 -> Isaac::genrand_int32 (0x006eef60); 0x004e1223 -> Isaac::genrand_int32 (0x006eef60); 0x004e1251 -> Isaac::genrand_int32 (0x006eef60); 0x004e12d7 -> Isaac::genrand_int32 (0x006eef60); 0x004e1440 -> Isaac::genrand_int32 (0x006eef60); 0x004e145f -> entity_spawn_relay (0x00428b20); 0x004e1502 -> Isaac::genrand_int32 (0x006eef60); 0x004e155a -> Isaac::genrand_int32 (0x006eef60); 0x004e157c -> entity_spawn_relay (0x00428b20); 0x004e15b5 -> Isaac::genrand_int32 (0x006eef60); 0x004e15d2 -> entity_spawn_relay (0x00428b20); 0x004e15d9 -> Isaac::genrand_int32 (0x006eef60); 0x004e170b -> Isaac::genrand_int32 (0x006eef60); 0x004e172d -> entity_spawn_relay (0x00428b20); 0x004e17d0 -> Isaac::genrand_int32 (0x006eef60); 0x004e17d9 -> Isaac::genrand_int32 (0x006eef60); 0x004e184a -> Entity_NPC::projectile_helper (0x006bec40); 0x004e1dd8 -> Isaac::genrand_int32 (0x006eef60); 0x004e1e37 -> entity_spawn_relay (0x00428b20); 0x004e1ed2 -> Isaac::genrand_int32 (0x006eef60); 0x004e219d -> Isaac::genrand_int32 (0x006eef60); 0x004e21b3 -> Isaac::genrand_int32 (0x006eef60); 0x004e2456 -> Isaac::genrand_int32 (0x006eef60); 0x004e24ca -> Isaac::genrand_int32 (0x006eef60); 0x004e2504 -> Isaac::genrand_int32 (0x006eef60); 0x004e251b -> Isaac::genrand_int32 (0x006eef60); 0x004e26cb -> Isaac::genrand_int32 (0x006eef60); 0x004e2725 -> Isaac::genrand_int32 (0x006eef60); 0x004e2737 -> Isaac::genrand_int32 (0x006eef60); 0x004e27a3 -> Isaac::genrand_int32 (0x006eef60); 0x004e27c3 -> entity_spawn_relay (0x00428b20); 0x004e2841 -> Isaac::genrand_int32 (0x006eef60); 0x004e2931 -> Isaac::genrand_int32 (0x006eef60); 0x004e2a4e -> Isaac::genrand_int32 (0x006eef60); 0x004e2a6f -> Isaac::genrand_int32 (0x006eef60)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x004e2b40`

- C: [AI_004e2b40_004e2b40.c](ghidra-export/AI_004e2b40_004e2b40.c)
- ASM: [AI_004e2b40_004e2b40.asm](ghidra-export/AI_004e2b40_004e2b40.asm)
- Types: `850`
- Identities: `850.0.0, 850.1.0, 850.2.0`
- Incoming calls: 1; outgoing calls: 74
- State writes: `0x004e2da6 -> State 4; 0x004e2e70 -> State 8; 0x004e2f7b -> State 4; 0x004e3381 -> State 4; 0x004e375e -> State 4`
- Shared attack/spawn calls: `0x004e2dbf -> Isaac::genrand_int32 (0x006eef60); 0x004e2dd1 -> Isaac::genrand_int32 (0x006eef60); 0x004e2e8d -> Entity_NPC::projectile_helper (0x006bec40); 0x004e2fb7 -> Isaac::genrand_int32 (0x006eef60); 0x004e30f0 -> Isaac::genrand_int32 (0x006eef60); 0x004e3259 -> Isaac::genrand_int32 (0x006eef60); 0x004e32b0 -> Isaac::genrand_int32 (0x006eef60); 0x004e33c7 -> Isaac::genrand_int32 (0x006eef60); 0x004e33d9 -> Isaac::genrand_int32 (0x006eef60); 0x004e3432 -> Isaac::genrand_int32 (0x006eef60); 0x004e3462 -> Isaac::genrand_int32 (0x006eef60); 0x004e3485 -> entity_spawn_relay (0x00428b20); 0x004e35f5 -> Entity_NPC::projectile_helper (0x006bec40); 0x004e36c0 -> Isaac::genrand_int32 (0x006eef60); 0x004e37f8 -> Entity_NPC::projectile_helper (0x006bec40); 0x004e382b -> Isaac::genrand_int32 (0x006eef60); 0x004e3871 -> entity_spawn_relay (0x00428b20)`

### `0x004e38c0`

- C: [AI_004e38c0_004e38c0.c](ghidra-export/AI_004e38c0_004e38c0.c)
- ASM: [AI_004e38c0_004e38c0.asm](ghidra-export/AI_004e38c0_004e38c0.asm)
- Types: `855`
- Identities: `855.0.0, 855.1.0`
- Incoming calls: 1; outgoing calls: 47
- State writes: `0x004e3dc7 -> State 4; 0x004e409f -> State 8`
- StateFrame writes: `0x004e3fa1; 0x004e3fb9`
- Shared attack/spawn calls: `0x004e3a1a -> Entity_NPC::projectile_helper (0x006bec40); 0x004e3c11 -> Entity_NPC::projectile_helper (0x006bec40); 0x004e3fd8 -> Entity_NPC::projectile_helper (0x006bec40); 0x004e4176 -> Entity_NPC::projectile_helper (0x006bec40); 0x004e419f -> Isaac::genrand_int32 (0x006eef60)`

### `0x004e4970`

- C: [AI_004e4970_004e4970.c](ghidra-export/AI_004e4970_004e4970.c)
- ASM: [AI_004e4970_004e4970.asm](ghidra-export/AI_004e4970_004e4970.asm)
- Types: `833`
- Identities: `833.0.0`
- Incoming calls: 1; outgoing calls: 29
- State writes: `0x004e4a85 -> State 3; 0x004e4cfc -> State 8; 0x004e4d3d -> State 3`
- Shared attack/spawn calls: `0x004e4a1c -> Isaac::genrand_int32 (0x006eef60); 0x004e4ad1 -> Isaac::genrand_int32 (0x006eef60); 0x004e4aea -> entity_spawn_relay (0x00428b20); 0x004e4b38 -> Isaac::genrand_int32 (0x006eef60); 0x004e4b48 -> Isaac::genrand_int32 (0x006eef60); 0x004e4dbc -> Isaac::genrand_int32 (0x006eef60); 0x004e4dcc -> Isaac::genrand_int32 (0x006eef60); 0x004e4de5 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004e5170`

- C: [AI_004e5170_004e5170.c](ghidra-export/AI_004e5170_004e5170.c)
- ASM: [AI_004e5170_004e5170.asm](ghidra-export/AI_004e5170_004e5170.asm)
- Types: `834`
- Identities: `834.0.0, 834.1.0, 834.2.0`
- Incoming calls: 1; outgoing calls: 73
- State writes: `0x004e526e -> State 4; 0x004e5b7b -> State 8; 0x004e5cc1 -> State 4`
- StateFrame writes: `0x004e5278; 0x004e5c1e; 0x004e5cce`
- Shared attack/spawn calls: `0x004e585e -> Entity_NPC::projectile_helper (0x006bec40); 0x004e5dde -> Isaac::genrand_int32 (0x006eef60); 0x004e5de8 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004e6570`

- C: [AI_004e6570_004e6570.c](ghidra-export/AI_004e6570_004e6570.c)
- ASM: [AI_004e6570_004e6570.asm](ghidra-export/AI_004e6570_004e6570.asm)
- Types: `877`
- Identities: `877.0.0`
- Incoming calls: 1; outgoing calls: 69
- State writes: `0x004e6648 -> State 3; 0x004e67ed -> State 4; 0x004e687f -> State 16; 0x004e6a63 -> State 8; 0x004e6f37 -> State 4; 0x004e7289 -> State 4`
- StateFrame writes: `0x004e663e; 0x004e6771; 0x004e67f7; 0x004e68b5; 0x004e6fb9; 0x004e7384`
- Invincible writes: `0x004e66c9 = 1`
- Shared attack/spawn calls: `0x004e6c2a -> Isaac::genrand_int32 (0x006eef60); 0x004e6d16 -> Isaac::genrand_int32 (0x006eef60); 0x004e6da4 -> entity_spawn_relay (0x00428b20); 0x004e6dab -> Isaac::genrand_int32 (0x006eef60); 0x004e6de8 -> Isaac::genrand_int32 (0x006eef60); 0x004e6e3a -> Isaac::genrand_int32 (0x006eef60); 0x004e780f -> Isaac::genrand_int32 (0x006eef60); 0x004e7832 -> entity_spawn_relay (0x00428b20); 0x004e7943 -> Isaac::genrand_int32 (0x006eef60); 0x004e79ab -> Isaac::genrand_int32 (0x006eef60)`

### `0x004e7ea0`

- C: [AI_004e7ea0_004e7ea0.c](ghidra-export/AI_004e7ea0_004e7ea0.c)
- ASM: [AI_004e7ea0_004e7ea0.asm](ghidra-export/AI_004e7ea0_004e7ea0.asm)
- Types: `805`
- Identities: `805.0.0`
- Incoming calls: 1; outgoing calls: 13
- State writes: `0x004e7fe2 -> State 3; 0x004e8108 -> State 8; 0x004e81af -> State 3`
- Shared attack/spawn calls: `0x004e7faa -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004e8080 -> Isaac::genrand_int32 (0x006eef60)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x004e8380`

- C: [AI_004e8380_004e8380.c](ghidra-export/AI_004e8380_004e8380.c)
- ASM: [AI_004e8380_004e8380.asm](ghidra-export/AI_004e8380_004e8380.asm)
- Types: `883`
- Identities: `883.0.0`
- Incoming calls: 1; outgoing calls: 33
- State writes: `0x004e88f2 -> State 4; 0x004e8e6f -> State 8; 0x004e8f6e -> State 4`
- Shared attack/spawn calls: `0x004e847a -> Entity_NPC::projectile_helper (0x006bec40); 0x004e88fc -> Isaac::genrand_int32 (0x006eef60); 0x004e8913 -> Isaac::genrand_int32 (0x006eef60); 0x004e8cd2 -> Isaac::genrand_int32 (0x006eef60); 0x004e8f67 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004ea3d0`

- C: [AI_004ea3d0_004ea3d0.c](ghidra-export/AI_004ea3d0_004ea3d0.c)
- ASM: [AI_004ea3d0_004ea3d0.asm](ghidra-export/AI_004ea3d0_004ea3d0.asm)
- Types: `886`
- Identities: `886.0.0, 886.1.0`
- Incoming calls: 1; outgoing calls: 119
- State writes: `0x004ea45a -> State 4; 0x004ea623 -> State 8; 0x004ea75b -> State 7; 0x004ea79f -> State 7; 0x004ea945 -> State 4; 0x004ead45 -> State 16; 0x004eaff4 -> State 4; 0x004eb2c0 -> State 8; 0x004eb4d3 -> State 4`
- Shared attack/spawn calls: `0x004ea4b4 -> Entity_NPC::projectile_helper (0x006bec40); 0x004ea5c0 -> Isaac::genrand_int32 (0x006eef60); 0x004ea603 -> Isaac::genrand_int32 (0x006eef60); 0x004ea6ee -> Isaac::genrand_int32 (0x006eef60); 0x004ea82b -> Entity_NPC::projectile_helper (0x006bec40); 0x004ea93e -> Isaac::genrand_int32 (0x006eef60); 0x004ea993 -> Entity_NPC::projectile_helper (0x006bec40); 0x004eabf9 -> Isaac::genrand_int32 (0x006eef60); 0x004eac1c -> entity_spawn_relay (0x00428b20); 0x004eac5f -> Isaac::genrand_int32 (0x006eef60); 0x004eac81 -> entity_spawn_relay (0x00428b20); 0x004eaeca -> Isaac::genrand_int32 (0x006eef60); 0x004eaedc -> Isaac::genrand_int32 (0x006eef60); 0x004eaf52 -> Isaac::genrand_int32 (0x006eef60); 0x004eafcc -> entity_spawn_relay (0x00428b20); 0x004eb22c -> Entity_NPC::projectile_helper (0x006bec40); 0x004eb274 -> Isaac::genrand_int32 (0x006eef60); 0x004eb32f -> Isaac::genrand_int32 (0x006eef60); 0x004eb3b2 -> Isaac::genrand_int32 (0x006eef60); 0x004eb3cf -> entity_spawn_relay (0x00428b20); 0x004eb415 -> Isaac::genrand_int32 (0x006eef60); 0x004eb431 -> entity_spawn_relay (0x00428b20); 0x004eb662 -> Isaac::genrand_int32 (0x006eef60); 0x004eb6b3 -> Isaac::genrand_int32 (0x006eef60); 0x004eb74a -> Isaac::genrand_int32 (0x006eef60); 0x004eb79f -> entity_spawn_relay (0x00428b20); 0x004eb7a6 -> Isaac::genrand_int32 (0x006eef60); 0x004ebaa0 -> Isaac::genrand_int32 (0x006eef60); 0x004ebac2 -> entity_spawn_relay (0x00428b20); 0x004ebb73 -> Isaac::genrand_int32 (0x006eef60); 0x004ebb95 -> entity_spawn_relay (0x00428b20)`

### `0x004ec240`

- C: [AI_004ec240_004ec240.c](ghidra-export/AI_004ec240_004ec240.c)
- ASM: [AI_004ec240_004ec240.asm](ghidra-export/AI_004ec240_004ec240.asm)
- Types: `832`
- Identities: `832.0.0, 832.1.0`
- Incoming calls: 1; outgoing calls: 2
- State writes: `0x004ec2a4 -> State 4; 0x004ec734 -> State 9; 0x004ec8c1 -> State 8; 0x004ecb96 -> State 4`

### `0x004ecc10`

- C: [AI_004ecc10_004ecc10.c](ghidra-export/AI_004ecc10_004ecc10.c)
- ASM: [AI_004ecc10_004ecc10.asm](ghidra-export/AI_004ecc10_004ecc10.asm)
- Types: `841`
- Identities: `841.0.0, 841.1.0`
- Incoming calls: 1; outgoing calls: 58
- State writes: `0x004ecd3c -> State 4; 0x004ed31b -> State 8; 0x004ed747 -> State 4`
- StateFrame writes: `0x004ecd5b; 0x004ecdc1; 0x004ece17; 0x004ed0de; 0x004ed325; 0x004ed336; 0x004ed76b`
- Shared attack/spawn calls: `0x004ecd46 -> Isaac::genrand_int32 (0x006eef60); 0x004ece25 -> Isaac::genrand_int32 (0x006eef60); 0x004ecf06 -> Isaac::genrand_int32 (0x006eef60); 0x004ecf1e -> entity_spawn_relay (0x00428b20); 0x004ed150 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004ed840`

- C: [AI_004ed840_004ed840.c](ghidra-export/AI_004ed840_004ed840.c)
- ASM: [AI_004ed840_004ed840.asm](ghidra-export/AI_004ed840_004ed840.asm)
- Types: `885`
- Identities: `885.0.0, 885.1.0, 885.10.0`
- Incoming calls: 1; outgoing calls: 121
- State writes: `0x004ed959 -> State 3; 0x004ed9e2 -> State 8; 0x004edd2c -> State 5; 0x004ee011 -> State 3; 0x004ee3ce -> State 8; 0x004ee479 -> State 13; 0x004ee4d5 -> State 13; 0x004ee50a -> State 8; 0x004ef4e3 -> State 3; 0x004efab1 -> State 3`
- StateFrame writes: `0x004ed94f; 0x004edc02; 0x004edc2a; 0x004edc79`
- Invincible writes: `0x004ed920 = 1`
- Shared attack/spawn calls: `0x004ee033 -> Isaac::genrand_int32 (0x006eef60); 0x004ee053 -> Isaac::genrand_int32 (0x006eef60); 0x004ee1b8 -> Isaac::genrand_int32 (0x006eef60); 0x004ee1bd -> Isaac::genrand_int32 (0x006eef60); 0x004ee233 -> Isaac::genrand_int32 (0x006eef60); 0x004ee3ae -> Isaac::genrand_int32 (0x006eef60); 0x004ee568 -> Isaac::genrand_int32 (0x006eef60); 0x004ee592 -> Isaac::genrand_int32 (0x006eef60); 0x004ee6af -> Isaac::genrand_int32 (0x006eef60); 0x004eeb46 -> Isaac::genrand_int32 (0x006eef60); 0x004eebf2 -> Isaac::genrand_int32 (0x006eef60); 0x004eec97 -> Isaac::genrand_int32 (0x006eef60); 0x004eed6a -> Isaac::genrand_int32 (0x006eef60); 0x004eee12 -> Isaac::genrand_int32 (0x006eef60); 0x004eee19 -> Isaac::genrand_int32 (0x006eef60); 0x004eef04 -> entity_spawn_relay (0x00428b20); 0x004ef099 -> Isaac::genrand_int32 (0x006eef60); 0x004ef0bb -> entity_spawn_relay (0x00428b20); 0x004ef135 -> Isaac::genrand_int32 (0x006eef60); 0x004ef1ac -> Isaac::genrand_int32 (0x006eef60); 0x004ef21c -> Isaac::genrand_int32 (0x006eef60); 0x004ef241 -> entity_spawn_relay (0x00428b20); 0x004ef282 -> Isaac::genrand_int32 (0x006eef60); 0x004ef2b7 -> Isaac::genrand_int32 (0x006eef60); 0x004ef2da -> entity_spawn_relay (0x00428b20); 0x004ef354 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x004ef35b -> Isaac::genrand_int32 (0x006eef60); 0x004ef500 -> Isaac::genrand_int32 (0x006eef60); 0x004ef67b -> entity_spawn_relay (0x00428b20); 0x004ef7f4 -> Isaac::genrand_int32 (0x006eef60); 0x004ef898 -> Isaac::genrand_int32 (0x006eef60); 0x004ef963 -> Isaac::genrand_int32 (0x006eef60); 0x004efa5c -> Isaac::genrand_int32 (0x006eef60); 0x004efa7e -> entity_spawn_relay (0x00428b20)`

### `0x004efb90`

- C: [AI_004efb90_004efb90.c](ghidra-export/AI_004efb90_004efb90.c)
- ASM: [AI_004efb90_004efb90.asm](ghidra-export/AI_004efb90_004efb90.asm)
- Types: `889`
- Identities: `889.0.0`
- Incoming calls: 1; outgoing calls: 163
- State writes: `0x004efc1f -> State 4; 0x004f0d23 -> State 14; 0x004f139c -> State 3; 0x004f163c -> State 13; 0x004f1a47 -> State 13; 0x004f1ad6 -> State 4; 0x004f1df9 -> State 16`
- StateFrame writes: `0x004f161b; 0x004f1a2e; 0x004f1e54`
- Invincible writes: `0x004f138c = 0; 0x004f1a93 = 0; 0x004f1ac6 = 0; 0x004f1df2 = 1`
- Shared attack/spawn calls: `0x004efcbd -> Entity_NPC::projectile_helper (0x006bec40); 0x004f002f -> Isaac::genrand_int32 (0x006eef60); 0x004f00c7 -> Entity_NPC::projectile_helper (0x006bec40); 0x004f0200 -> Entity_NPC::projectile_helper (0x006bec40); 0x004f0b66 -> Isaac::genrand_int32 (0x006eef60); 0x004f0dbb -> Isaac::genrand_int32 (0x006eef60); 0x004f0dfe -> entity_spawn_relay (0x00428b20); 0x004f0fe8 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004f1344 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004f16bd -> Isaac::genrand_int32 (0x006eef60); 0x004f16dc -> entity_spawn_relay (0x00428b20); 0x004f174d -> Isaac::genrand_int32 (0x006eef60); 0x004f1773 -> entity_spawn_relay (0x00428b20)`

### `0x004f1ec0`

- C: [AI_004f1ec0_004f1ec0.c](ghidra-export/AI_004f1ec0_004f1ec0.c)
- ASM: [AI_004f1ec0_004f1ec0.asm](ghidra-export/AI_004f1ec0_004f1ec0.asm)
- Types: `890`
- Identities: `890.0.0, 890.0.1`
- Incoming calls: 1; outgoing calls: 1
- State writes: `0x004f1f12 -> State 4; 0x004f2328 -> State 9; 0x004f23a8 -> State 16; 0x004f27ac -> State 8; 0x004f2a4b -> State 4; 0x004f2b89 -> State 3; 0x004f2bc9 -> State 3`
- StateFrame writes: `0x004f2332; 0x004f27b6`

### `0x004f2c20`

- C: [AI_004f2c20_004f2c20.c](ghidra-export/AI_004f2c20_004f2c20.c)
- ASM: [AI_004f2c20_004f2c20.asm](ghidra-export/AI_004f2c20_004f2c20.asm)
- Types: `891`
- Identities: `891.0.0, 891.1.0`
- Incoming calls: 1; outgoing calls: 82
- State writes: `0x004f3672 -> State 4; 0x004f3b0e -> State 6; 0x004f3bf1 -> State 8; 0x004f41f7 -> State 4; 0x004f467b -> State 4`
- StateFrame writes: `0x004f3b87; 0x004f3c07; 0x004f4656`
- Shared attack/spawn calls: `0x004f37a1 -> Entity_NPC::projectile_helper (0x006bec40); 0x004f395c -> Entity_NPC::projectile_helper (0x006bec40); 0x004f39a7 -> Entity_NPC::projectile_helper (0x006bec40); 0x004f39d9 -> Isaac::genrand_int32 (0x006eef60); 0x004f3a6f -> Isaac::genrand_int32 (0x006eef60); 0x004f3ef6 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004f41d3 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x004f4730`

- C: [AI_004f4730_004f4730.c](ghidra-export/AI_004f4730_004f4730.c)
- ASM: [AI_004f4730_004f4730.asm](ghidra-export/AI_004f4730_004f4730.asm)
- Types: `893`
- Identities: `893.0.0`
- Incoming calls: 1; outgoing calls: 75
- State writes: `0x004f4baa -> State 3`
- Invincible writes: `0x004f4b9d = 1`
- Shared attack/spawn calls: `0x004f4de2 -> Isaac::genrand_int32 (0x006eef60); 0x004f4e05 -> entity_spawn_relay (0x00428b20); 0x004f4eef -> Isaac::genrand_int32 (0x006eef60); 0x004f563c -> Isaac::genrand_int32 (0x006eef60); 0x004f5681 -> Isaac::genrand_int32 (0x006eef60); 0x004f56b5 -> Isaac::genrand_int32 (0x006eef60); 0x004f573d -> entity_spawn_relay (0x00428b20); 0x004f5744 -> Isaac::genrand_int32 (0x006eef60); 0x004f5781 -> Isaac::genrand_int32 (0x006eef60); 0x004f57da -> Isaac::genrand_int32 (0x006eef60); 0x004f596d -> Isaac::genrand_int32 (0x006eef60); 0x004f5974 -> Isaac::genrand_int32 (0x006eef60); 0x004f59ba -> Isaac::genrand_int32 (0x006eef60); 0x004f5a4b -> entity_spawn_relay (0x00428b20)`

### `0x004f64e0`

- C: [AI_004f64e0_004f64e0.c](ghidra-export/AI_004f64e0_004f64e0.c)
- ASM: [AI_004f64e0_004f64e0.asm](ghidra-export/AI_004f64e0_004f64e0.asm)
- Types: `892`
- Identities: `892.0.0`
- Incoming calls: 1; outgoing calls: 60
- State writes: `0x004f68eb -> State 3; 0x004f6c22 -> State 8`
- Shared attack/spawn calls: `0x004f68d7 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004f6910 -> Entity_NPC::projectile_helper (0x006bec40); 0x004f6ad7 -> Isaac::genrand_int32 (0x006eef60); 0x004f6af3 -> entity_spawn_relay (0x00428b20); 0x004f6b3c -> Isaac::genrand_int32 (0x006eef60); 0x004f6c8c -> Isaac::genrand_int32 (0x006eef60); 0x004f6cab -> entity_spawn_relay (0x00428b20); 0x004f6d5a -> Isaac::genrand_int32 (0x006eef60); 0x004f6dac -> entity_spawn_relay (0x00428b20); 0x004f6e3a -> Isaac::genrand_int32 (0x006eef60); 0x004f6f40 -> Isaac::genrand_int32 (0x006eef60); 0x004f6f86 -> Isaac::genrand_int32 (0x006eef60); 0x004f6ffc -> Isaac::genrand_int32 (0x006eef60); 0x004f7003 -> Isaac::genrand_int32 (0x006eef60); 0x004f7049 -> Isaac::genrand_int32 (0x006eef60); 0x004f70e2 -> entity_spawn_relay (0x00428b20); 0x004f7156 -> Isaac::genrand_int32 (0x006eef60); 0x004f719b -> Isaac::genrand_int32 (0x006eef60); 0x004f71bc -> Isaac::genrand_int32 (0x006eef60); 0x004f747c -> Isaac::genrand_int32 (0x006eef60); 0x004f749f -> entity_spawn_relay (0x00428b20); 0x004f7593 -> Isaac::genrand_int32 (0x006eef60); 0x004f75b6 -> entity_spawn_relay (0x00428b20)`

### `0x004f76f0`

- C: [AI_004f76f0_004f76f0.c](ghidra-export/AI_004f76f0_004f76f0.c)
- ASM: [AI_004f76f0_004f76f0.asm](ghidra-export/AI_004f76f0_004f76f0.asm)
- Types: `864`
- Identities: `864.0.0`
- Incoming calls: 1; outgoing calls: 21
- State writes: `0x004f7a58 -> State 3; 0x004f7b80 -> State 4; 0x004f7be8 -> State 3`
- Invincible writes: `0x004f7bd7 = 1`
- Shared attack/spawn calls: `0x004f78fb -> Isaac::genrand_int32 (0x006eef60); 0x004f7904 -> Isaac::genrand_int32 (0x006eef60)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x004f7e60`

- C: [AI_004f7e60_004f7e60.c](ghidra-export/AI_004f7e60_004f7e60.c)
- ASM: [AI_004f7e60_004f7e60.asm](ghidra-export/AI_004f7e60_004f7e60.asm)
- Types: `863`
- Identities: `863.0.0, 863.0.1, 863.0.2`
- Incoming calls: 1; outgoing calls: 22
- State writes: `0x004f82d8 -> State 4`
- Shared attack/spawn calls: `0x004f7fd7 -> Entity_NPC::projectile_helper (0x006bec40); 0x004f8047 -> Entity_NPC::projectile_helper (0x006bec40); 0x004f80a9 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004f8960`

- C: [AI_004f8960_004f8960.c](ghidra-export/AI_004f8960_004f8960.c)
- ASM: [AI_004f8960_004f8960.asm](ghidra-export/AI_004f8960_004f8960.asm)
- Types: `804`
- Identities: `804.0.0, 804.0.1, 804.0.2, 804.0.3`
- Incoming calls: 1; outgoing calls: 18
- State writes: `0x004f8a09 -> State 16; 0x004f8b9d -> State 8; 0x004f8bfe -> State 3; 0x004f8c8f -> State 16`
- StateFrame writes: `0x004f8b6f; 0x004f8b8e; 0x004f8c12`
- Invincible writes: `0x004f8bf7 = 1`
- Shared attack/spawn calls: `0x004f8acd -> Isaac::genrand_int32 (0x006eef60); 0x004f8af1 -> Entity::Create dispatcher (0x006fe410)`

### `0x004f8df0`

- C: [AI_004f8df0_004f8df0.c](ghidra-export/AI_004f8df0_004f8df0.c)
- ASM: [AI_004f8df0_004f8df0.asm](ghidra-export/AI_004f8df0_004f8df0.asm)
- Types: `809`
- Identities: `809.0.0`
- Incoming calls: 1; outgoing calls: 51
- State writes: `0x004f8ffa -> State 3; 0x004f9031 -> State 8`
- StateFrame writes: `0x004f9029; 0x004f9070`
- Shared attack/spawn calls: `0x004f8f20 -> Isaac::genrand_int32 (0x006eef60); 0x004f8f80 -> Entity::Create dispatcher (0x006fe410); 0x004f9087 -> Isaac::genrand_int32 (0x006eef60); 0x004f90f4 -> Isaac::genrand_int32 (0x006eef60); 0x004f9814 -> Isaac::genrand_int32 (0x006eef60); 0x004f9833 -> Entity::Create dispatcher (0x006fe410)`

### `0x004f9ad0`

- C: [AI_004f9ad0_004f9ad0.c](ghidra-export/AI_004f9ad0_004f9ad0.c)
- ASM: [AI_004f9ad0_004f9ad0.asm](ghidra-export/AI_004f9ad0_004f9ad0.asm)
- Types: `818`
- Identities: `818.0.0, 818.0.1, 818.0.2, 818.0.3, 818.1.0, 818.1.1, 818.1.2, 818.1.3, 818.2.0, 818.2.1, 818.2.2, 818.2.3`
- Incoming calls: 2; outgoing calls: 63
- State writes: `0x004f9bbd -> State 16; 0x004fa044 -> State 7; 0x004fa121 -> State 3; 0x004fa971 -> State 0`
- StateFrame writes: `0x004fa184; 0x004fa1a0; 0x004fa1b1; 0x004fa4f9; 0x004fa62d`
- Invincible writes: `0x004f9dfc = 1`
- Shared attack/spawn calls: `0x004f9c59 -> Isaac::genrand_int32 (0x006eef60); 0x004f9c7c -> entity_spawn_relay (0x00428b20); 0x004f9e0c -> Isaac::genrand_int32 (0x006eef60); 0x004f9e96 -> Isaac::genrand_int32 (0x006eef60); 0x004f9eb9 -> Isaac::genrand_int32 (0x006eef60); 0x004fa035 -> Isaac::genrand_int32 (0x006eef60); 0x004fa1ea -> Entity_NPC::projectile_helper (0x006bec40); 0x004fa202 -> Isaac::genrand_int32 (0x006eef60); 0x004fa214 -> Isaac::genrand_int32 (0x006eef60); 0x004fa2b0 -> Isaac::genrand_int32 (0x006eef60); 0x004fa44c -> Isaac::genrand_int32 (0x006eef60); 0x004fa4e5 -> Isaac::genrand_int32 (0x006eef60); 0x004fa667 -> Isaac::genrand_int32 (0x006eef60); 0x004fa67d -> Isaac::genrand_int32 (0x006eef60); 0x004fa6af -> Isaac::genrand_int32 (0x006eef60); 0x004fa6e9 -> Isaac::genrand_int32 (0x006eef60); 0x004fa71f -> Isaac::genrand_int32 (0x006eef60); 0x004fa791 -> Isaac::genrand_int32 (0x006eef60); 0x004fa7e4 -> entity_spawn_relay (0x00428b20); 0x004fa8e9 -> entity_spawn_relay (0x00428b20); 0x004fa914 -> Isaac::genrand_int32 (0x006eef60); 0x004faa20 -> entity_spawn_relay (0x00428b20)`

### `0x004faad0`

- C: [AI_004faad0_004faad0.c](ghidra-export/AI_004faad0_004faad0.c)
- ASM: [AI_004faad0_004faad0.asm](ghidra-export/AI_004faad0_004faad0.asm)
- Types: `827`
- Identities: `827.0.0, 827.1.0`
- Incoming calls: 2; outgoing calls: 96
- State writes: `0x004fab75 -> State 3; 0x004fb0bf -> State 3; 0x004fb6c5 -> State 8; 0x004fb801 -> State 5; 0x004fbb4c -> State 3`
- StateFrame writes: `0x004fab93; 0x004fb22f; 0x004fb7f3; 0x004fbbb1`
- Shared attack/spawn calls: `0x004fae77 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004faebd -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004faec2 -> Isaac::genrand_int32 (0x006eef60); 0x004faedf -> entity_spawn_relay (0x00428b20); 0x004faf84 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004faf89 -> Isaac::genrand_int32 (0x006eef60); 0x004fafac -> entity_spawn_relay (0x00428b20); 0x004faff9 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004faffe -> Isaac::genrand_int32 (0x006eef60); 0x004fb021 -> entity_spawn_relay (0x00428b20); 0x004fb14e -> damage_filter (0x006ac560); 0x004fb239 -> Isaac::genrand_int32 (0x006eef60); 0x004fb24b -> Isaac::genrand_int32 (0x006eef60); 0x004fb339 -> Entity_NPC::projectile_helper (0x006bec40); 0x004fb5a9 -> Entity_NPC::projectile_helper (0x006bec40); 0x004fb684 -> Isaac::genrand_int32 (0x006eef60); 0x004fb721 -> Isaac::genrand_int32 (0x006eef60); 0x004fb854 -> Isaac::genrand_int32 (0x006eef60); 0x004fb87a -> entity_spawn_relay (0x00428b20); 0x004fb8ab -> Isaac::genrand_int32 (0x006eef60); 0x004fb8ce -> entity_spawn_relay (0x00428b20); 0x004fb8ea -> Isaac::genrand_int32 (0x006eef60); 0x004fb907 -> entity_spawn_relay (0x00428b20); 0x004fb92c -> Isaac::genrand_int32 (0x006eef60); 0x004fb950 -> Isaac::genrand_int32 (0x006eef60); 0x004fb9de -> Isaac::genrand_int32 (0x006eef60); 0x004fba17 -> Isaac::genrand_int32 (0x006eef60); 0x004fba8e -> Isaac::genrand_int32 (0x006eef60); 0x004fbab3 -> entity_spawn_relay (0x00428b20); 0x004fbbd5 -> Isaac::genrand_int32 (0x006eef60); 0x004fbbed -> Isaac::genrand_int32 (0x006eef60)`

### `0x004fbd10`

- C: [AI_004fbd10_004fbd10.c](ghidra-export/AI_004fbd10_004fbd10.c)
- ASM: [AI_004fbd10_004fbd10.asm](ghidra-export/AI_004fbd10_004fbd10.asm)
- Types: `820`
- Identities: `820.0.0, 820.1.0`
- Incoming calls: 1; outgoing calls: 60
- State writes: `0x004fc668 -> State 4; 0x004fca5a -> State 8; 0x004fca78 -> State 4`
- StateFrame writes: `0x004fc863; 0x004fc892; 0x004fca69; 0x004fcba4`
- Shared attack/spawn calls: `0x004fbf00 -> Isaac::genrand_int32 (0x006eef60); 0x004fbfdd -> Isaac::genrand_int32 (0x006eef60); 0x004fc080 -> Isaac::genrand_int32 (0x006eef60); 0x004fc128 -> Isaac::genrand_int32 (0x006eef60); 0x004fc175 -> Isaac::genrand_int32 (0x006eef60); 0x004fc1dd -> Isaac::genrand_int32 (0x006eef60); 0x004fc22d -> entity_spawn_relay (0x00428b20); 0x004fc2ce -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x004fc2e0 -> Isaac::genrand_int32 (0x006eef60); 0x004fc3be -> Isaac::genrand_int32 (0x006eef60); 0x004fc451 -> Isaac::genrand_int32 (0x006eef60); 0x004fc4f9 -> Isaac::genrand_int32 (0x006eef60); 0x004fc546 -> Isaac::genrand_int32 (0x006eef60); 0x004fc5a8 -> Isaac::genrand_int32 (0x006eef60); 0x004fc5f5 -> entity_spawn_relay (0x00428b20); 0x004fc7db -> Entity_NPC::projectile_helper (0x006bec40); 0x004fc7f5 -> Isaac::genrand_int32 (0x006eef60); 0x004fc8c9 -> Isaac::genrand_int32 (0x006eef60); 0x004fc8f0 -> Isaac::genrand_int32 (0x006eef60); 0x004fc987 -> Isaac::genrand_int32 (0x006eef60); 0x004fcb94 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004fcc20`

- C: [AI_004fcc20_004fcc20.c](ghidra-export/AI_004fcc20_004fcc20.c)
- ASM: [AI_004fcc20_004fcc20.asm](ghidra-export/AI_004fcc20_004fcc20.asm)
- Types: `821`
- Identities: `821.0.0`
- Incoming calls: 1; outgoing calls: 30
- State writes: `0x004fcce3 -> State 4; 0x004fd031 -> State 4; 0x004fd210 -> State 8`
- StateFrame writes: `0x004fce8c; 0x004fcf9e`
- Shared attack/spawn calls: `0x004fce96 -> Isaac::genrand_int32 (0x006eef60); 0x004fcf08 -> entity_spawn_relay (0x00428b20); 0x004fd1bc -> Isaac::genrand_int32 (0x006eef60)`

### `0x004fd540`

- C: [AI_004fd540_004fd540.c](ghidra-export/AI_004fd540_004fd540.c)
- ASM: [AI_004fd540_004fd540.asm](ghidra-export/AI_004fd540_004fd540.asm)
- Types: `823`
- Identities: `823.0.0`
- Incoming calls: 1; outgoing calls: 44
- State writes: `0x004fda80 -> State 4; 0x004fdd45 -> State 8; 0x004fde78 -> State 4`
- Shared attack/spawn calls: `0x004fd740 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004fdc22 -> Entity_NPC::projectile_helper (0x006bec40); 0x004fdd00 -> Isaac::genrand_int32 (0x006eef60); 0x004fdd12 -> Isaac::genrand_int32 (0x006eef60); 0x004fde41 -> Isaac::genrand_int32 (0x006eef60)`

### `0x004fdf80`

- C: [AI_004fdf80_004fdf80.c](ghidra-export/AI_004fdf80_004fdf80.c)
- ASM: [AI_004fdf80_004fdf80.asm](ghidra-export/AI_004fdf80_004fdf80.asm)
- Types: `829`
- Identities: `829.0.0, 829.1.0`
- Incoming calls: 1; outgoing calls: 94
- State writes: `0x004fe0fa -> State 4; 0x004fe2c2 -> State 8; 0x004fe2f9 -> State 3; 0x004fe5bb -> State 3; 0x004fece0 -> State 4; 0x004ff1f1 -> State 6`
- StateFrame writes: `0x004ff217; 0x004ff2d7`
- Shared attack/spawn calls: `0x004fe184 -> Isaac::genrand_int32 (0x006eef60); 0x004fe1a6 -> entity_spawn_relay (0x00428b20); 0x004fe2ab -> Isaac::genrand_int32 (0x006eef60); 0x004fe48e -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x004fe79d -> Isaac::genrand_int32 (0x006eef60); 0x004fe7b7 -> Entity_NPC::projectile_helper (0x006bec40); 0x004fe7da -> Isaac::genrand_int32 (0x006eef60); 0x004fea89 -> Isaac::genrand_int32 (0x006eef60); 0x004fea98 -> Isaac::genrand_int32 (0x006eef60); 0x004feaa0 -> Isaac::genrand_int32 (0x006eef60); 0x004fed20 -> Entity_NPC::projectile_helper (0x006bec40); 0x004ff08b -> Entity_NPC::projectile_helper (0x006bec40); 0x004ff0fb -> Isaac::genrand_int32 (0x006eef60); 0x004ff346 -> Isaac::genrand_int32 (0x006eef60); 0x004ff366 -> entity_spawn_relay (0x00428b20); 0x004ff378 -> Isaac::genrand_int32 (0x006eef60); 0x004ff395 -> entity_spawn_relay (0x00428b20)`

### `0x004ff620`

- C: [AI_004ff620_004ff620.c](ghidra-export/AI_004ff620_004ff620.c)
- ASM: [AI_004ff620_004ff620.asm](ghidra-export/AI_004ff620_004ff620.asm)
- Types: `824`
- Identities: `824.0.0, 824.1.0`
- Incoming calls: 1; outgoing calls: 86
- State writes: `0x004ffa3b -> State 4; 0x0050032b -> State 8; 0x005004d8 -> State 4`
- StateFrame writes: `0x004ffbef; 0x004ffcf5; 0x004fffd9; 0x00500130; 0x005004e8`
- Shared attack/spawn calls: `0x004ffa20 -> Isaac::genrand_int32 (0x006eef60); 0x004ffa63 -> Isaac::genrand_int32 (0x006eef60); 0x004ffa70 -> Isaac::genrand_int32 (0x006eef60); 0x004ffa91 -> Entity::Create dispatcher (0x006fe410); 0x004ffa98 -> Isaac::genrand_int32 (0x006eef60); 0x004ffb01 -> Isaac::genrand_int32 (0x006eef60); 0x004ffb17 -> Isaac::genrand_int32 (0x006eef60); 0x004ffd45 -> Isaac::genrand_int32 (0x006eef60); 0x004ffd8a -> Isaac::genrand_int32 (0x006eef60); 0x004ffdc4 -> Isaac::genrand_int32 (0x006eef60); 0x004ffdea -> Isaac::genrand_int32 (0x006eef60); 0x004ffe00 -> Isaac::genrand_int32 (0x006eef60); 0x005000a6 -> Isaac::genrand_int32 (0x006eef60); 0x00500120 -> Isaac::genrand_int32 (0x006eef60); 0x005002cb -> Isaac::genrand_int32 (0x006eef60); 0x00500371 -> Isaac::genrand_int32 (0x006eef60); 0x00500387 -> Isaac::genrand_int32 (0x006eef60); 0x005004ee -> Isaac::genrand_int32 (0x006eef60)`

### `0x00500990`

- C: [AI_00500990_00500990.c](ghidra-export/AI_00500990_00500990.c)
- ASM: [AI_00500990_00500990.asm](ghidra-export/AI_00500990_00500990.asm)
- Types: `825`
- Identities: `825.0.0`
- Incoming calls: 1; outgoing calls: 0
- State writes: `0x005009bf -> State 3; 0x00500aaf -> State 6; 0x00500abe -> State 4; 0x00500c8e -> State 6; 0x00500ead -> State 3`

### `0x00500f70`

- C: [AI_00500f70_00500f70.c](ghidra-export/AI_00500f70_00500f70.c)
- ASM: [AI_00500f70_00500f70.asm](ghidra-export/AI_00500f70_00500f70.asm)
- Types: `826`
- Identities: `826.0.0`
- Incoming calls: 1; outgoing calls: 3
- State writes: `0x00500ff5 -> State 3; 0x005010cc -> State 6; 0x0050115d -> State 6; 0x005011a7 -> State 8; 0x0050127c -> State 3; 0x00501b49 -> State 16; 0x00501c9f -> State 4; 0x00501d08 -> State 3`
- StateFrame writes: `0x00500fe2; 0x0050105e; 0x00501cfe`
- Shared attack/spawn calls: `0x00501d66 -> Isaac::genrand_int32 (0x006eef60); 0x00501d8b -> Entity::Create dispatcher (0x006fe410)`

### `0x00501f30`

- C: [AI_00501f30_00501f30.c](ghidra-export/AI_00501f30_00501f30.c)
- ASM: [AI_00501f30_00501f30.asm](ghidra-export/AI_00501f30_00501f30.asm)
- Types: `822`
- Identities: `822.0.0`
- Incoming calls: 1; outgoing calls: 53
- State writes: `0x00501fe2 -> State 3; 0x00502250 -> State 8; 0x005023ec -> State 16`
- StateFrame writes: `0x00501fec; 0x00502518`
- Shared attack/spawn calls: `0x00501ff6 -> Isaac::genrand_int32 (0x006eef60); 0x00502049 -> Entity_NPC::projectile_helper (0x006bec40); 0x00502079 -> Isaac::genrand_int32 (0x006eef60); 0x00502231 -> Isaac::genrand_int32 (0x006eef60); 0x005025b2 -> Entity_NPC::projectile_helper (0x006bec40); 0x005026b9 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x005026c8 -> Isaac::genrand_int32 (0x006eef60); 0x00502723 -> Isaac::genrand_int32 (0x006eef60); 0x005027b2 -> Isaac::genrand_int32 (0x006eef60); 0x005027d3 -> entity_spawn_relay (0x00428b20); 0x005027da -> Isaac::genrand_int32 (0x006eef60); 0x00502825 -> Isaac::genrand_int32 (0x006eef60); 0x00502866 -> Isaac::genrand_int32 (0x006eef60); 0x00502927 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00502980`

- C: [AI_00502980_00502980.c](ghidra-export/AI_00502980_00502980.c)
- ASM: [AI_00502980_00502980.asm](ghidra-export/AI_00502980_00502980.asm)
- Types: `880`
- Identities: `880.0.0`
- Incoming calls: 1; outgoing calls: 36
- State writes: `0x005030f8 -> State 4; 0x00503182 -> State 3`
- Shared attack/spawn calls: `0x00502ca7 -> Isaac::genrand_int32 (0x006eef60); 0x00502ce0 -> Isaac::genrand_int32 (0x006eef60); 0x00502d37 -> Entity_NPC::projectile_helper (0x006bec40)`

### `0x00503300`

- C: [AI_00503300_00503300.c](ghidra-export/AI_00503300_00503300.c)
- ASM: [AI_00503300_00503300.asm](ghidra-export/AI_00503300_00503300.asm)
- Types: `844`
- Identities: `844.0.0`
- Incoming calls: 1; outgoing calls: 43
- State writes: `0x005037a6 -> State 4; 0x00503a20 -> State 8; 0x00503ab9 -> State 4`
- StateFrame writes: `0x00503439; 0x00503a31`
- Shared attack/spawn calls: `0x00503443 -> Entity_NPC::projectile_helper (0x006bec40); 0x005034c2 -> Isaac::genrand_int32 (0x006eef60); 0x00503510 -> Isaac::genrand_int32 (0x006eef60); 0x0050354f -> entity_spawn_relay (0x00428b20); 0x005035b5 -> Isaac::genrand_int32 (0x006eef60); 0x005035bc -> Isaac::genrand_int32 (0x006eef60); 0x0050361a -> Isaac::genrand_int32 (0x006eef60); 0x005036da -> entity_spawn_relay (0x00428b20); 0x005036e1 -> Isaac::genrand_int32 (0x006eef60); 0x0050393b -> Isaac::genrand_int32 (0x006eef60); 0x00503a93 -> Isaac::genrand_int32 (0x006eef60); 0x00503ab2 -> entity_spawn_relay (0x00428b20)`

### `0x00503af0`

- C: [AI_00503af0_00503af0.c](ghidra-export/AI_00503af0_00503af0.c)
- ASM: [AI_00503af0_00503af0.asm](ghidra-export/AI_00503af0_00503af0.asm)
- Types: `882`
- Identities: `882.0.0`
- Incoming calls: 1; outgoing calls: 30
- State writes: `0x00503c7d -> State 2; 0x00503d4f -> State 3; 0x00503e83 -> State 16; 0x0050418a -> State 2`
- Shared attack/spawn calls: `0x00503e23 -> Entity_NPC::projectile_helper (0x006bec40)`

### `0x005041d0`

- C: [AI_005041d0_005041d0.c](ghidra-export/AI_005041d0_005041d0.c)
- ASM: [AI_005041d0_005041d0.asm](ghidra-export/AI_005041d0_005041d0.asm)
- Types: `830`
- Identities: `830.0.0, 830.10.0`
- Incoming calls: 1; outgoing calls: 38
- State writes: `0x00504244 -> State 4; 0x00504640 -> State 4; 0x00504907 -> State 8; 0x005049b7 -> State 4`
- Shared attack/spawn calls: `0x0050430b -> Isaac::genrand_int32 (0x006eef60); 0x00504606 -> Isaac::genrand_int32 (0x006eef60); 0x00504621 -> entity_spawn_relay (0x00428b20); 0x005047cb -> Entity_NPC::projectile_helper (0x006bec40); 0x00504851 -> Isaac::genrand_int32 (0x006eef60); 0x00504863 -> Isaac::genrand_int32 (0x006eef60); 0x00504979 -> Isaac::genrand_int32 (0x006eef60)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x00504a40`

- C: [AI_00504a40_00504a40.c](ghidra-export/AI_00504a40_00504a40.c)
- ASM: [AI_00504a40_00504a40.asm](ghidra-export/AI_00504a40_00504a40.asm)
- Types: `887`
- Identities: `887.0.0`
- Incoming calls: 1; outgoing calls: 28
- Shared attack/spawn calls: `0x00504cc5 -> entity_spawn_relay (0x00428b20); 0x00504dc5 -> Isaac::genrand_int32 (0x006eef60); 0x00504de1 -> Isaac::genrand_int32 (0x006eef60); 0x00504e17 -> Isaac::genrand_int32 (0x006eef60); 0x00504e7b -> Isaac::genrand_int32 (0x006eef60); 0x00504e82 -> Isaac::genrand_int32 (0x006eef60); 0x00504eb8 -> Isaac::genrand_int32 (0x006eef60); 0x00504f3b -> entity_spawn_relay (0x00428b20); 0x00504fb4 -> Isaac::genrand_int32 (0x006eef60); 0x00504ff6 -> Isaac::genrand_int32 (0x006eef60); 0x00505017 -> Isaac::genrand_int32 (0x006eef60)`

### `0x005052a0`

- C: [AI_005052a0_005052a0.c](ghidra-export/AI_005052a0_005052a0.c)
- ASM: [AI_005052a0_005052a0.asm](ghidra-export/AI_005052a0_005052a0.asm)
- Types: `828`
- Identities: `828.0.0`
- Incoming calls: 1; outgoing calls: 35
- State writes: `0x0050572a -> State 3; 0x00505ae2 -> State 8`
- Shared attack/spawn calls: `0x00505339 -> Isaac::genrand_int32 (0x006eef60); 0x0050535a -> Entity::Create dispatcher (0x006fe410); 0x0050540c -> Isaac::genrand_int32 (0x006eef60); 0x00505434 -> Entity::Create dispatcher (0x006fe410); 0x00505820 -> Isaac::genrand_int32 (0x006eef60); 0x0050587e -> Isaac::genrand_int32 (0x006eef60); 0x00505b01 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00505d00`

- C: [AI_00505d00_00505d00.c](ghidra-export/AI_00505d00_00505d00.c)
- ASM: [AI_00505d00_00505d00.asm](ghidra-export/AI_00505d00_00505d00.asm)
- Types: `201`
- Identities: `201.0.0`
- Incoming calls: 1; outgoing calls: 26
- State writes: `0x00505d62 -> State 4; 0x00505f49 -> State 3; 0x005062d8 -> State 3`
- Invincible writes: `0x00505d4c = 1`
- Shared attack/spawn calls: `0x00506154 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00506320`

- C: [AI_00506320_00506320.c](ghidra-export/AI_00506320_00506320.c)
- ASM: [AI_00506320_00506320.asm](ghidra-export/AI_00506320_00506320.asm)
- Types: `202`
- Identities: `202.0.0, 202.10.0, 202.10.1, 202.11.0, 202.11.1`
- Incoming calls: 1; outgoing calls: 35
- State writes: `0x0050647d -> State 3; 0x00506559 -> State 16; 0x00506639 -> State 8; 0x00506741 -> State 8; 0x0050690d -> State 3; 0x00506974 -> State 16; 0x00506a10 -> State 3; 0x00506aa3 -> State 16`
- Invincible writes: `0x005063c8 = 1`
- Shared attack/spawn calls: `0x005068d6 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005069fa -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00506bd0`

- C: [AI_00506bd0_00506bd0.c](ghidra-export/AI_00506bd0_00506bd0.c)
- ASM: [AI_00506bd0_00506bd0.asm](ghidra-export/AI_00506bd0_00506bd0.asm)
- Types: `13, 14, 18, 61, 80, 214, 249, 819`
- Identities: `13.0.0, 14.0.0, 14.1.0, 14.2.0, 18.0.0, 214.0.0, 249.0.0, 61.0.0, 61.1.0, 61.2.0, 61.3.0, 61.4.0, 61.5.0, 61.6.0, 61.7.0, 80.0.0, 819.0.0, 819.1.0`
- Incoming calls: 1; outgoing calls: 148
- State writes: `0x00506c87 -> State 3; 0x005077e3 -> State 4; 0x005079ad -> State 8; 0x00507d3a -> State 3`
- StateFrame writes: `0x00507dee; 0x00507e40; 0x005080a3`
- Invincible writes: `0x00506d86 = 1; 0x00507f19 = 1`
- Shared attack/spawn calls: `0x00506f72 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00506fdb -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x005070c2 -> Isaac::genrand_int32 (0x006eef60); 0x005070e4 -> entity_spawn_relay (0x00428b20); 0x0050735e -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00507363 -> Isaac::genrand_int32 (0x006eef60); 0x00507380 -> entity_spawn_relay (0x00428b20); 0x00507438 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00507538 -> Isaac::genrand_int32 (0x006eef60); 0x00507589 -> entity_spawn_relay (0x00428b20); 0x00507590 -> Isaac::genrand_int32 (0x006eef60); 0x00507617 -> entity_spawn_relay (0x00428b20); 0x005076c2 -> Isaac::genrand_int32 (0x006eef60); 0x005076e3 -> entity_spawn_relay (0x00428b20); 0x0050775b -> Isaac::genrand_int32 (0x006eef60); 0x005078c1 -> Isaac::genrand_int32 (0x006eef60); 0x00507c21 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00508040 -> Isaac::genrand_int32 (0x006eef60); 0x0050805b -> entity_spawn_relay (0x00428b20); 0x0050808e -> Isaac::genrand_int32 (0x006eef60); 0x00508311 -> Isaac::genrand_int32 (0x006eef60); 0x0050833e -> Isaac::genrand_int32 (0x006eef60); 0x005083f1 -> Isaac::genrand_int32 (0x006eef60); 0x00508490 -> Entity_NPC::projectile_helper (0x006bec40); 0x005085f7 -> Isaac::genrand_int32 (0x006eef60); 0x00508a36 -> Isaac::genrand_int32 (0x006eef60); 0x00508a54 -> Isaac::genrand_int32 (0x006eef60); 0x00508c6c -> Isaac::genrand_int32 (0x006eef60); 0x00508f12 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00508f40`

- C: [AI_00508f40_00508f40.c](ghidra-export/AI_00508f40_00508f40.c)
- ASM: [AI_00508f40_00508f40.asm](ghidra-export/AI_00508f40_00508f40.asm)
- Types: `10, 208, 252, 257, 284, 302, 807`
- Identities: `10.0.0, 10.1.0, 10.2.0, 10.3.0, 10.3.1, 10.3.2, 10.3.3, 10.3.4, 10.3.5, 208.0.0, 208.1.0, 208.2.0, 252.0.0, 257.0.0, 257.1.0, 284.0.0, 302.0.0, 302.10.0, 807.0.0`
- Incoming calls: 1; outgoing calls: 124
- State writes: `0x00508fd6 -> State 4; 0x005094e0 -> State 4; 0x00509755 -> State 8; 0x00509e40 -> State 4; 0x0050a31a -> State 8; 0x0050a39d -> State 18; 0x0050a584 -> State 16; 0x0050a602 -> State 4`
- StateFrame writes: `0x00508fe0; 0x005094ea; 0x0050964c; 0x0050975f; 0x00509c4e; 0x00509e4a; 0x0050a3a7`
- Invincible writes: `0x00508fff = 1`
- Shared attack/spawn calls: `0x00509186 -> Isaac::genrand_int32 (0x006eef60); 0x0050928b -> Isaac::genrand_int32 (0x006eef60); 0x005092a0 -> Isaac::genrand_int32 (0x006eef60); 0x005092d4 -> Isaac::genrand_int32 (0x006eef60); 0x00509341 -> Isaac::genrand_int32 (0x006eef60); 0x00509360 -> entity_spawn_relay (0x00428b20); 0x005094bf -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005096eb -> Isaac::genrand_int32 (0x006eef60); 0x005099c0 -> Isaac::genrand_int32 (0x006eef60); 0x005099e2 -> entity_spawn_relay (0x00428b20); 0x00509a5c -> Isaac::genrand_int32 (0x006eef60); 0x00509add -> Isaac::genrand_int32 (0x006eef60); 0x00509b81 -> Isaac::genrand_int32 (0x006eef60); 0x00509bb6 -> Isaac::genrand_int32 (0x006eef60); 0x00509bd9 -> entity_spawn_relay (0x00428b20); 0x00509d8a -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00509de7 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00509df3 -> Isaac::genrand_int32 (0x006eef60); 0x00509e0c -> entity_spawn_relay (0x00428b20); 0x00509ffe -> Entity_NPC::projectile_helper (0x006bec40); 0x0050a061 -> Isaac::genrand_int32 (0x006eef60); 0x0050a0ae -> Isaac::genrand_int32 (0x006eef60); 0x0050a1bb -> Isaac::genrand_int32 (0x006eef60); 0x0050a1eb -> entity_spawn_relay (0x00428b20); 0x0050a1fb -> Isaac::genrand_int32 (0x006eef60); 0x0050a2b4 -> Isaac::genrand_int32 (0x006eef60); 0x0050a51d -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0050a593 -> Isaac::genrand_int32 (0x006eef60); 0x0050a60c -> Isaac::genrand_int32 (0x006eef60)`

### `0x0050a6b0`

- C: [AI_0050a6b0_0050a6b0.c](ghidra-export/AI_0050a6b0_0050a6b0.c)
- ASM: [AI_0050a6b0_0050a6b0.asm](ghidra-export/AI_0050a6b0_0050a6b0.asm)
- Types: `77`
- Identities: `77.0.0`
- Incoming calls: 1; outgoing calls: 10
- State writes: `0x0050a6c4 -> State 3`
- Shared attack/spawn calls: `0x0050a797 -> Isaac::genrand_int32 (0x006eef60)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x0050a8a0`

- C: [AI_0050a8a0_0050a8a0.c](ghidra-export/AI_0050a8a0_0050a8a0.c)
- ASM: [AI_0050a8a0_0050a8a0.asm](ghidra-export/AI_0050a8a0_0050a8a0.asm)
- Types: `96`
- Identities: `96.0.0`
- Incoming calls: 1; outgoing calls: 13
- State writes: `0x0050a8e3 -> State 4; 0x0050ad8e -> State 4; 0x0050adef -> State 7; 0x0050ae28 -> State 6`
- StateFrame writes: `0x0050a919`
- Invincible writes: `0x0050a8dc = 1; 0x0050abeb = 0`
- Shared attack/spawn calls: `0x0050a8ed -> Isaac::genrand_int32 (0x006eef60)`

### `0x0050af90`

- C: [AI_0050af90_0050af90.c](ghidra-export/AI_0050af90_0050af90.c)
- ASM: [AI_0050af90_0050af90.asm](ghidra-export/AI_0050af90_0050af90.asm)
- Types: `11, 210, 211, 238, 280`
- Identities: `11.0.0, 11.1.0, 210.0.0, 211.0.0, 238.0.0, 280.0.0`
- Incoming calls: 1; outgoing calls: 55
- State writes: `0x0050afe7 -> State 4`
- Shared attack/spawn calls: `0x0050b048 -> Isaac::genrand_int32 (0x006eef60); 0x0050b0b2 -> Isaac::genrand_int32 (0x006eef60); 0x0050b418 -> Isaac::genrand_int32 (0x006eef60); 0x0050b464 -> Isaac::genrand_int32 (0x006eef60); 0x0050b50f -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0050b5e6 -> Isaac::genrand_int32 (0x006eef60); 0x0050b63e -> Isaac::genrand_int32 (0x006eef60); 0x0050b666 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0050b7fc -> Isaac::genrand_int32 (0x006eef60); 0x0050b81e -> entity_spawn_relay (0x00428b20); 0x0050b825 -> Isaac::genrand_int32 (0x006eef60); 0x0050b87d -> Isaac::genrand_int32 (0x006eef60); 0x0050b8cd -> Isaac::genrand_int32 (0x006eef60); 0x0050b94e -> Isaac::genrand_int32 (0x006eef60); 0x0050bb18 -> Isaac::genrand_int32 (0x006eef60); 0x0050bb72 -> Isaac::genrand_int32 (0x006eef60)`

### `0x0050bbe0`

- C: [AI_0050bbe0_0050bbe0.c](ghidra-export/AI_0050bbe0_0050bbe0.c)
- ASM: [AI_0050bbe0_0050bbe0.asm](ghidra-export/AI_0050bbe0_0050bbe0.asm)
- Types: `16`
- Identities: `16.0.0, 16.1.0, 16.2.0`
- Incoming calls: 1; outgoing calls: 50
- State writes: `0x0050bc2c -> State 4; 0x0050bf87 -> State 5`
- Shared attack/spawn calls: `0x0050bc4a -> Entity_NPC::projectile_helper (0x006bec40); 0x0050bd9a -> Isaac::genrand_int32 (0x006eef60); 0x0050bf59 -> Isaac::genrand_int32 (0x006eef60); 0x0050c009 -> Isaac::genrand_int32 (0x006eef60); 0x0050c026 -> entity_spawn_relay (0x00428b20); 0x0050c02b -> Isaac::genrand_int32 (0x006eef60); 0x0050c048 -> entity_spawn_relay (0x00428b20); 0x0050c09b -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0050c11f -> Isaac::genrand_int32 (0x006eef60); 0x0050c13c -> entity_spawn_relay (0x00428b20); 0x0050c141 -> Isaac::genrand_int32 (0x006eef60); 0x0050c15e -> entity_spawn_relay (0x00428b20); 0x0050c1b5 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0050c1ba -> Isaac::genrand_int32 (0x006eef60); 0x0050c1d3 -> entity_spawn_relay (0x00428b20); 0x0050c220 -> Isaac::genrand_int32 (0x006eef60); 0x0050c24b -> Isaac::genrand_int32 (0x006eef60); 0x0050c284 -> Isaac::genrand_int32 (0x006eef60); 0x0050c2b9 -> Isaac::genrand_int32 (0x006eef60); 0x0050c328 -> entity_spawn_relay (0x00428b20)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x0050c370`

- C: [AI_0050c370_0050c370.c](ghidra-export/AI_0050c370_0050c370.c)
- ASM: [AI_0050c370_0050c370.asm](ghidra-export/AI_0050c370_0050c370.asm)
- Types: `22, 205, 817`
- Identities: `205.0.0, 22.0.0, 22.1.0, 22.2.0, 22.3.0, 817.0.0, 817.1.0`
- Incoming calls: 1; outgoing calls: 80
- State writes: `0x0050c3f1 -> State 4; 0x0050cad5 -> State 4; 0x0050ce46 -> State 8`
- Shared attack/spawn calls: `0x0050c44c -> Entity_NPC::projectile_helper (0x006bec40); 0x0050c483 -> Isaac::genrand_int32 (0x006eef60); 0x0050c7fb -> Isaac::genrand_int32 (0x006eef60); 0x0050c81a -> entity_spawn_relay (0x00428b20); 0x0050c879 -> Isaac::genrand_int32 (0x006eef60); 0x0050c8bb -> entity_spawn_relay (0x00428b20); 0x0050c933 -> Isaac::genrand_int32 (0x006eef60); 0x0050c955 -> entity_spawn_relay (0x00428b20); 0x0050c9ad -> Isaac::genrand_int32 (0x006eef60); 0x0050ca0e -> Isaac::genrand_int32 (0x006eef60); 0x0050ca26 -> Isaac::genrand_int32 (0x006eef60); 0x0050ca42 -> entity_spawn_relay (0x00428b20); 0x0050ca5e -> Isaac::genrand_int32 (0x006eef60); 0x0050ca9b -> entity_spawn_relay (0x00428b20); 0x0050cb92 -> Isaac::genrand_int32 (0x006eef60); 0x0050cba7 -> Isaac::genrand_int32 (0x006eef60); 0x0050cd54 -> Isaac::genrand_int32 (0x006eef60); 0x0050cf0a -> Isaac::genrand_int32 (0x006eef60); 0x0050cf84 -> Isaac::genrand_int32 (0x006eef60); 0x0050cf8b -> Isaac::genrand_int32 (0x006eef60); 0x0050cfc1 -> Isaac::genrand_int32 (0x006eef60); 0x0050d055 -> entity_spawn_relay (0x00428b20); 0x0050d081 -> Isaac::genrand_int32 (0x006eef60); 0x0050d0cd -> Isaac::genrand_int32 (0x006eef60); 0x0050d103 -> Isaac::genrand_int32 (0x006eef60); 0x0050d13d -> Isaac::genrand_int32 (0x006eef60); 0x0050d19b -> entity_spawn_relay (0x00428b20); 0x0050d1f9 -> Isaac::genrand_int32 (0x006eef60); 0x0050d24d -> Isaac::genrand_int32 (0x006eef60); 0x0050d2d5 -> Isaac::genrand_int32 (0x006eef60); 0x0050d2df -> Isaac::genrand_int32 (0x006eef60); 0x0050d30b -> entity_spawn_relay (0x00428b20)`

### `0x0050d370`

- C: [AI_0050d370_0050d370.c](ghidra-export/AI_0050d370_0050d370.c)
- ASM: [AI_0050d370_0050d370.asm](ghidra-export/AI_0050d370_0050d370.asm)
- Types: `15, 282, 872`
- Identities: `15.0.0, 15.1.0, 15.2.0, 15.3.0, 282.0.0, 872.0.0`
- Incoming calls: 1; outgoing calls: 77
- Shared attack/spawn calls: `0x0050d555 -> Isaac::genrand_int32 (0x006eef60); 0x0050d5f0 -> Isaac::genrand_int32 (0x006eef60); 0x0050d5f7 -> Isaac::genrand_int32 (0x006eef60); 0x0050d69c -> entity_spawn_relay (0x00428b20); 0x0050d6e7 -> Isaac::genrand_int32 (0x006eef60); 0x0050d7b8 -> Isaac::genrand_int32 (0x006eef60); 0x0050d8fb -> Isaac::genrand_int32 (0x006eef60); 0x0050d908 -> Isaac::genrand_int32 (0x006eef60); 0x0050d946 -> Isaac::genrand_int32 (0x006eef60); 0x0050d961 -> Isaac::genrand_int32 (0x006eef60); 0x0050d9b7 -> entity_spawn_relay (0x00428b20); 0x0050d9ec -> Isaac::genrand_int32 (0x006eef60); 0x0050da34 -> entity_spawn_relay (0x00428b20); 0x0050da48 -> Isaac::genrand_int32 (0x006eef60); 0x0050da4f -> Isaac::genrand_int32 (0x006eef60); 0x0050da88 -> Isaac::genrand_int32 (0x006eef60); 0x0050db32 -> entity_spawn_relay (0x00428b20); 0x0050db42 -> Isaac::genrand_int32 (0x006eef60); 0x0050dbcb -> Isaac::genrand_int32 (0x006eef60); 0x0050dd5e -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0050de39 -> Isaac::genrand_int32 (0x006eef60); 0x0050debc -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x0050e4d0`

- C: [AI_0050e4d0_0050e4d0.c](ghidra-export/AI_0050e4d0_0050e4d0.c)
- ASM: [AI_0050e4d0_0050e4d0.asm](ghidra-export/AI_0050e4d0_0050e4d0.asm)
- Types: `24, 278`
- Identities: `24.0.0, 24.1.0, 24.2.0, 24.3.0, 278.0.0`
- Incoming calls: 1; outgoing calls: 66
- State writes: `0x0050e5f7 -> State 4; 0x0050e6f3 -> State 3; 0x0050ed80 -> State 4; 0x0050f008 -> State 3; 0x0050f212 -> State 3`
- Invincible writes: `0x0050e53c = 0; 0x0050f03a = 1`
- Shared attack/spawn calls: `0x0050e630 -> Isaac::genrand_int32 (0x006eef60); 0x0050e660 -> entity_spawn_relay (0x00428b20); 0x0050e827 -> Isaac::genrand_int32 (0x006eef60); 0x0050e857 -> entity_spawn_relay (0x00428b20); 0x0050e8f1 -> Isaac::genrand_int32 (0x006eef60); 0x0050e903 -> Isaac::genrand_int32 (0x006eef60); 0x0050eb45 -> Entity_NPC::projectile_helper (0x006bec40); 0x0050eb8b -> Isaac::genrand_int32 (0x006eef60); 0x0050eda0 -> Isaac::genrand_int32 (0x006eef60); 0x0050edc4 -> entity_spawn_relay (0x00428b20); 0x0050edc9 -> Isaac::genrand_int32 (0x006eef60); 0x0050ee10 -> entity_spawn_relay (0x00428b20); 0x0050f0dc -> entity_spawn_relay (0x00428b20); 0x0050f22a -> Isaac::genrand_int32 (0x006eef60); 0x0050f249 -> entity_spawn_relay (0x00428b20)`

### `0x0050f280`

- C: [AI_0050f280_0050f280.c](ghidra-export/AI_0050f280_0050f280.c)
- ASM: [AI_0050f280_0050f280.asm](ghidra-export/AI_0050f280_0050f280.asm)
- Types: `25`
- Identities: `25.0.0, 25.1.0, 25.2.0, 25.3.0, 25.3.1, 25.4.0, 25.5.0, 25.6.0`
- Incoming calls: 1; outgoing calls: 110
- State writes: `0x0050f330 -> State 4; 0x0050f537 -> State 4; 0x0050f798 -> State 4; 0x0050fd74 -> State 8; 0x005106f9 -> State 9`
- Invincible writes: `0x00510735 = 1`
- Shared attack/spawn calls: `0x0050f344 -> Isaac::genrand_int32 (0x006eef60); 0x0050f784 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0050f856 -> Isaac::genrand_int32 (0x006eef60); 0x0050f8ba -> Isaac::genrand_int32 (0x006eef60); 0x0050f8c1 -> Isaac::genrand_int32 (0x006eef60); 0x0050f944 -> Entity::Create dispatcher (0x006fe410); 0x0050f94b -> Isaac::genrand_int32 (0x006eef60); 0x0050f988 -> Isaac::genrand_int32 (0x006eef60); 0x0050fa79 -> Isaac::genrand_int32 (0x006eef60); 0x0050faa0 -> Entity::Create dispatcher (0x006fe410); 0x0050fc49 -> Isaac::genrand_int32 (0x006eef60); 0x005101d3 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005101d8 -> Isaac::genrand_int32 (0x006eef60); 0x00510224 -> Isaac::genrand_int32 (0x006eef60); 0x0051023f -> Entity::Create dispatcher (0x006fe410); 0x00510340 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00510362 -> Isaac::genrand_int32 (0x006eef60); 0x005103cc -> Isaac::genrand_int32 (0x006eef60); 0x00510471 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00510580 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00510587 -> Isaac::genrand_int32 (0x006eef60); 0x005105f0 -> Isaac::genrand_int32 (0x006eef60); 0x00510659 -> Isaac::genrand_int32 (0x006eef60); 0x00510680 -> Entity::Create dispatcher (0x006fe410); 0x0051074b -> Isaac::genrand_int32 (0x006eef60); 0x0051079d -> Entity::Create dispatcher (0x006fe410); 0x00510913 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00510997 -> Isaac::genrand_int32 (0x006eef60); 0x0051099e -> Isaac::genrand_int32 (0x006eef60); 0x005109d5 -> Isaac::genrand_int32 (0x006eef60); 0x00510a64 -> Entity::Create dispatcher (0x006fe410)`

### `0x00510ae0`

- C: [AI_00510ae0_00510ae0.c](ghidra-export/AI_00510ae0_00510ae0.c)
- ASM: [AI_00510ae0_00510ae0.asm](ghidra-export/AI_00510ae0_00510ae0.asm)
- Types: `26`
- Identities: `26.0.0, 26.1.0, 26.2.0`
- Incoming calls: 1; outgoing calls: 36
- State writes: `0x00510b10 -> State 4; 0x00510d07 -> State 8; 0x0051106c -> State 4`
- Shared attack/spawn calls: `0x00510b20 -> Isaac::genrand_int32 (0x006eef60); 0x00510b41 -> Entity::Create dispatcher (0x006fe410); 0x00510bf1 -> Isaac::genrand_int32 (0x006eef60); 0x00510c03 -> Isaac::genrand_int32 (0x006eef60); 0x00510c54 -> Entity_NPC::projectile_helper (0x006bec40); 0x00511054 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0051116d -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x005111b0`

- C: [AI_005111b0_005111b0.c](ghidra-export/AI_005111b0_005111b0.c)
- ASM: [AI_005111b0_005111b0.asm](ghidra-export/AI_005111b0_005111b0.asm)
- Types: `27, 859`
- Identities: `27.0.0, 27.1.0, 27.3.0, 859.0.0`
- Incoming calls: 1; outgoing calls: 68
- State writes: `0x00511202 -> State 3; 0x00511766 -> State 3; 0x00511e91 -> State 3; 0x00511f4a -> State 8; 0x005120a2 -> State 8; 0x005120e8 -> State 9`
- StateFrame writes: `0x0051120c; 0x00511361; 0x0051172d; 0x00511770; 0x005118b8; 0x00511e9b; 0x00511f54; 0x00511fa9; 0x005120ac; 0x005120f2`
- Invincible writes: `0x00511243 = 1; 0x0051125f = 0`
- Shared attack/spawn calls: `0x005119fb -> Isaac::genrand_int32 (0x006eef60); 0x00511a4e -> Entity::Create dispatcher (0x006fe410); 0x00511ace -> Isaac::genrand_int32 (0x006eef60); 0x00511b09 -> Isaac::genrand_int32 (0x006eef60); 0x00511e1e -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005120cb -> Isaac::genrand_int32 (0x006eef60)`

### `0x00512110`

- C: [AI_00512110_00512110.c](ghidra-export/AI_00512110_00512110.c)
- ASM: [AI_00512110_00512110.asm](ghidra-export/AI_00512110_00512110.asm)
- Types: `32, 279, 301`
- Identities: `279.0.0, 301.0.0, 32.0.0`
- Incoming calls: 1; outgoing calls: 57
- State writes: `0x0051213e -> State 4; 0x005128cf -> State 8; 0x00512c6d -> State 8; 0x00512e68 -> State 4`
- StateFrame writes: `0x0051244b; 0x0051246a`
- Shared attack/spawn calls: `0x00512213 -> Isaac::genrand_int32 (0x006eef60); 0x005123ae -> Entity_NPC::projectile_helper (0x006bec40); 0x0051245c -> Isaac::genrand_int32 (0x006eef60); 0x00512470 -> Isaac::genrand_int32 (0x006eef60); 0x00512737 -> Isaac::genrand_int32 (0x006eef60); 0x00512a83 -> Isaac::genrand_int32 (0x006eef60); 0x00512f91 -> Isaac::genrand_int32 (0x006eef60); 0x00512fc3 -> Entity::Create dispatcher (0x006fe410)`

### `0x00513080`

- C: [AI_00513080_00513080.c](ghidra-export/AI_00513080_00513080.c)
- ASM: [AI_00513080_00513080.asm](ghidra-export/AI_00513080_00513080.asm)
- Types: `12, 248`
- Identities: `12.0.0, 248.0.0`
- Incoming calls: 1; outgoing calls: 19
- Shared attack/spawn calls: `0x00513338 -> Isaac::genrand_int32 (0x006eef60); 0x00513355 -> entity_spawn_relay (0x00428b20); 0x005134c3 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x005135d0`

- C: [AI_005135d0_005135d0.c](ghidra-export/AI_005135d0_005135d0.c)
- ASM: [AI_005135d0_005135d0.asm](ghidra-export/AI_005135d0_005135d0.asm)
- Types: `41, 254, 283`
- Identities: `254.0.0, 283.0.0, 41.0.0, 41.1.0, 41.2.0, 41.3.0, 41.4.0`
- Incoming calls: 1; outgoing calls: 84
- State writes: `0x005136d5 -> State 4; 0x00513e87 -> State 4; 0x005141ff -> State 4; 0x005145ac -> State 7; 0x005145ef -> State 4; 0x005147ec -> State 8; 0x00514b5b -> State 8`
- StateFrame writes: `0x00514295; 0x005142e1; 0x00514342`
- Invincible writes: `0x00513825 = 1; 0x00513870 = 1`
- Shared attack/spawn calls: `0x00513c62 -> Isaac::genrand_int32 (0x006eef60); 0x00513c82 -> entity_spawn_relay (0x00428b20); 0x00513cd8 -> Isaac::genrand_int32 (0x006eef60); 0x00513cfa -> entity_spawn_relay (0x00428b20); 0x005142af -> Isaac::genrand_int32 (0x006eef60); 0x00514331 -> Isaac::genrand_int32 (0x006eef60); 0x00514348 -> Isaac::genrand_int32 (0x006eef60); 0x00514590 -> Isaac::genrand_int32 (0x006eef60); 0x005145dd -> Isaac::genrand_int32 (0x006eef60); 0x005146ac -> Isaac::genrand_int32 (0x006eef60); 0x005146f1 -> Isaac::genrand_int32 (0x006eef60); 0x00514930 -> Isaac::genrand_int32 (0x006eef60); 0x00514e11 -> Isaac::genrand_int32 (0x006eef60); 0x00514e41 -> entity_spawn_relay (0x00428b20); 0x00514ebb -> Isaac::genrand_int32 (0x006eef60); 0x00514f1c -> entity_spawn_relay (0x00428b20)`

### `0x005153b0`

- C: [AI_005153b0_005153b0.c](ghidra-export/AI_005153b0_005153b0.c)
- ASM: [AI_005153b0_005153b0.asm](ghidra-export/AI_005153b0_005153b0.asm)
- Types: `40, 218, 862`
- Identities: `218.0.0, 40.0.0, 40.1.0, 40.2.0, 862.0.0`
- Incoming calls: 1; outgoing calls: 88
- State writes: `0x005159ce -> State 4`
- Invincible writes: `0x00515ac2 = 1`
- Shared attack/spawn calls: `0x00515c61 -> Isaac::genrand_int32 (0x006eef60); 0x00516af3 -> Isaac::genrand_int32 (0x006eef60); 0x00516b18 -> Entity::Create dispatcher (0x006fe410); 0x00516cbd -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00516db6 -> Isaac::genrand_int32 (0x006eef60); 0x00516dda -> Entity::Create dispatcher (0x006fe410); 0x00516e94 -> Isaac::genrand_int32 (0x006eef60); 0x00516e9b -> Isaac::genrand_int32 (0x006eef60); 0x00516efa -> Isaac::genrand_int32 (0x006eef60); 0x00516fc3 -> Entity::Create dispatcher (0x006fe410); 0x00516fca -> Isaac::genrand_int32 (0x006eef60); 0x00517054 -> Isaac::genrand_int32 (0x006eef60); 0x00517078 -> Entity::Create dispatcher (0x006fe410); 0x005170e2 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00517150`

- C: [AI_00517150_00517150.c](ghidra-export/AI_00517150_00517150.c)
- ASM: [AI_00517150_00517150.asm](ghidra-export/AI_00517150_00517150.asm)
- Types: `30`
- Identities: `30.0.0, 30.1.0, 30.2.0`
- Incoming calls: 1; outgoing calls: 44
- State writes: `0x00517214 -> State 3; 0x00517491 -> State 9; 0x005174a1 -> State 8; 0x00517d8a -> State 3`
- Shared attack/spawn calls: `0x0051719b -> Isaac::genrand_int32 (0x006eef60); 0x0051741e -> Isaac::genrand_int32 (0x006eef60); 0x0051743f -> Isaac::genrand_int32 (0x006eef60); 0x005175f7 -> Isaac::genrand_int32 (0x006eef60); 0x00517737 -> Isaac::genrand_int32 (0x006eef60); 0x00517753 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x00517856 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x005178ad -> Isaac::genrand_int32 (0x006eef60); 0x00517aaf -> Isaac::genrand_int32 (0x006eef60); 0x00517ace -> Entity::Create dispatcher (0x006fe410)`

### `0x00517de0`

- C: [AI_00517de0_00517de0.c](ghidra-export/AI_00517de0_00517de0.c)
- ASM: [AI_00517de0_00517de0.asm](ghidra-export/AI_00517de0_00517de0.asm)
- Types: `35`
- Identities: `35.0.0, 35.1.0, 35.10.0, 35.2.0, 35.3.0`
- Incoming calls: 1; outgoing calls: 93
- State writes: `0x00518b26 -> State 8; 0x00518bc1 -> State 4`
- Shared attack/spawn calls: `0x00517e41 -> Isaac::genrand_int32 (0x006eef60); 0x00517e71 -> entity_spawn_relay (0x00428b20); 0x00517f20 -> Isaac::genrand_int32 (0x006eef60); 0x00517f4d -> entity_spawn_relay (0x00428b20); 0x005183b0 -> Entity_NPC::projectile_helper (0x006bec40); 0x005183fc -> Isaac::genrand_int32 (0x006eef60); 0x00518661 -> Entity_NPC::projectile_helper (0x006bec40); 0x005187ae -> Isaac::genrand_int32 (0x006eef60); 0x005187c0 -> Isaac::genrand_int32 (0x006eef60); 0x0051880f -> Isaac::genrand_int32 (0x006eef60); 0x00518d8b -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00518e20`

- C: [AI_00518e20_00518e20.c](ghidra-export/AI_00518e20_00518e20.c)
- ASM: [AI_00518e20_00518e20.asm](ghidra-export/AI_00518e20_00518e20.asm)
- Types: `91, 229, 230, 253`
- Identities: `229.0.0, 229.1.0, 230.0.0, 253.0.0, 91.0.0`
- Incoming calls: 1; outgoing calls: 105
- State writes: `0x00518ed0 -> State 4`
- StateFrame writes: `0x00518efa; 0x00519c9c; 0x00519d5b`
- Shared attack/spawn calls: `0x00518f0e -> Isaac::genrand_int32 (0x006eef60); 0x005191e3 -> Isaac::genrand_int32 (0x006eef60); 0x005193ff -> Isaac::genrand_int32 (0x006eef60); 0x0051956f -> Isaac::genrand_int32 (0x006eef60); 0x00519614 -> Isaac::genrand_int32 (0x006eef60); 0x0051967c -> Isaac::genrand_int32 (0x006eef60); 0x005196c9 -> entity_spawn_relay (0x00428b20); 0x00519739 -> Isaac::genrand_int32 (0x006eef60); 0x00519784 -> Isaac::genrand_int32 (0x006eef60); 0x005197a5 -> Isaac::genrand_int32 (0x006eef60); 0x00519870 -> Isaac::genrand_int32 (0x006eef60); 0x005198c5 -> Isaac::genrand_int32 (0x006eef60); 0x0051991f -> Isaac::genrand_int32 (0x006eef60); 0x00519979 -> Isaac::genrand_int32 (0x006eef60); 0x00519994 -> entity_spawn_relay (0x00428b20); 0x00519a65 -> Isaac::genrand_int32 (0x006eef60); 0x00519aa1 -> Isaac::genrand_int32 (0x006eef60); 0x00519ae7 -> Isaac::genrand_int32 (0x006eef60); 0x00519b3d -> Isaac::genrand_int32 (0x006eef60); 0x00519b5e -> entity_spawn_relay (0x00428b20); 0x00519ba1 -> Isaac::genrand_int32 (0x006eef60); 0x00519bcd -> Isaac::genrand_int32 (0x006eef60); 0x00519f13 -> Isaac::genrand_int32 (0x006eef60); 0x00519f24 -> Isaac::genrand_int32 (0x006eef60); 0x0051a03b -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0051a201 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0051a28d -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0051a683 -> Isaac::genrand_int32 (0x006eef60); 0x0051a69c -> entity_spawn_relay (0x00428b20)`

### `0x0051aaa0`

- C: [AI_0051aaa0_0051aaa0.c](ghidra-export/AI_0051aaa0_0051aaa0.c)
- ASM: [AI_0051aaa0_0051aaa0.asm](ghidra-export/AI_0051aaa0_0051aaa0.asm)
- Types: `87`
- Identities: `87.0.0, 87.1.0`
- Incoming calls: 1; outgoing calls: 39
- State writes: `0x0051ab04 -> State 4; 0x0051b0f2 -> State 8; 0x0051b4cb -> State 4`
- StateFrame writes: `0x0051b0e8`
- Shared attack/spawn calls: `0x0051abd0 -> Isaac::genrand_int32 (0x006eef60); 0x0051ac16 -> Isaac::genrand_int32 (0x006eef60); 0x0051aca7 -> Isaac::genrand_int32 (0x006eef60); 0x0051acbd -> Isaac::genrand_int32 (0x006eef60); 0x0051acfa -> Isaac::genrand_int32 (0x006eef60); 0x0051ad5a -> entity_spawn_relay (0x00428b20); 0x0051af3b -> Entity_NPC::projectile_helper (0x006bec40); 0x0051af96 -> Isaac::genrand_int32 (0x006eef60); 0x0051afc9 -> Isaac::genrand_int32 (0x006eef60); 0x0051b029 -> Isaac::genrand_int32 (0x006eef60); 0x0051b294 -> Entity_NPC::FireBossProjectiles (0x006ccdd0)`

### `0x0051b570`

- C: [AI_0051b570_0051b570.c](ghidra-export/AI_0051b570_0051b570.c)
- ASM: [AI_0051b570_0051b570.asm](ghidra-export/AI_0051b570_0051b570.asm)
- Types: `88`
- Identities: `88.0.0, 88.1.0, 88.2.0`
- Incoming calls: 1; outgoing calls: 39
- State writes: `0x0051b5c9 -> State 4; 0x0051b9aa -> State 8; 0x0051bfb7 -> State 6; 0x0051c00c -> State 4`
- Shared attack/spawn calls: `0x0051b8de -> Isaac::genrand_int32 (0x006eef60); 0x0051b927 -> Isaac::genrand_int32 (0x006eef60); 0x0051bacb -> Isaac::genrand_int32 (0x006eef60); 0x0051bc33 -> Isaac::genrand_int32 (0x006eef60); 0x0051bc51 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0051bc94 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0051bcf1 -> Isaac::genrand_int32 (0x006eef60); 0x0051beed -> Isaac::genrand_int32 (0x006eef60); 0x0051bf1a -> entity_spawn_relay (0x00428b20)`

### `0x0051c040`

- C: [AI_0051c040_0051c040.c](ghidra-export/AI_0051c040_0051c040.c)
- ASM: [AI_0051c040_0051c040.asm](ghidra-export/AI_0051c040_0051c040.asm)
- Types: `57, 223`
- Identities: `223.0.0, 57.0.0, 57.1.0, 57.2.0`
- Incoming calls: 1; outgoing calls: 50
- State writes: `0x0051c09a -> State 4; 0x0051c267 -> State 8; 0x0051c731 -> State 4`
- StateFrame writes: `0x0051c271; 0x0051c73b`
- Shared attack/spawn calls: `0x0051c22e -> Isaac::genrand_int32 (0x006eef60); 0x0051c3ba -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0051c3de -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0051c421 -> Isaac::genrand_int32 (0x006eef60); 0x0051c476 -> Isaac::genrand_int32 (0x006eef60); 0x0051c4cf -> Entity::Create dispatcher (0x006fe410); 0x0051c4e7 -> Isaac::genrand_int32 (0x006eef60); 0x0051c534 -> Entity::Create dispatcher (0x006fe410); 0x0051c59d -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0051c74a -> Isaac::genrand_int32 (0x006eef60); 0x0051c75c -> Isaac::genrand_int32 (0x006eef60); 0x0051c7ca -> Isaac::genrand_int32 (0x006eef60); 0x0051c84b -> Isaac::genrand_int32 (0x006eef60); 0x0051c89c -> Entity::Create dispatcher (0x006fe410); 0x0051c8a1 -> Isaac::genrand_int32 (0x006eef60); 0x0051c8fa -> Isaac::genrand_int32 (0x006eef60); 0x0051c94e -> Entity::Create dispatcher (0x006fe410); 0x0051c953 -> Isaac::genrand_int32 (0x006eef60); 0x0051c9a6 -> Isaac::genrand_int32 (0x006eef60); 0x0051c9f7 -> Entity::Create dispatcher (0x006fe410); 0x0051c9fc -> Isaac::genrand_int32 (0x006eef60); 0x0051ca57 -> Isaac::genrand_int32 (0x006eef60); 0x0051caab -> Entity::Create dispatcher (0x006fe410); 0x0051cab0 -> Isaac::genrand_int32 (0x006eef60); 0x0051cb04 -> Entity::Create dispatcher (0x006fe410)`

### `0x0051cb30`

- C: [AI_0051cb30_0051cb30.c](ghidra-export/AI_0051cb30_0051cb30.c)
- ASM: [AI_0051cb30_0051cb30.asm](ghidra-export/AI_0051cb30_0051cb30.asm)
- Types: `90`
- Identities: `90.0.0`
- Incoming calls: 1; outgoing calls: 31
- State writes: `0x0051cb67 -> State 4`
- Shared attack/spawn calls: `0x0051cb71 -> Isaac::genrand_int32 (0x006eef60); 0x0051cb9e -> entity_spawn_relay (0x00428b20); 0x0051cd59 -> Isaac::genrand_int32 (0x006eef60); 0x0051cd6b -> Isaac::genrand_int32 (0x006eef60); 0x0051d016 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0051d078 -> Entity_NPC::projectile_helper (0x006bec40); 0x0051d1d8 -> Isaac::genrand_int32 (0x006eef60)`

### `0x0051d300`

- C: [AI_0051d300_0051d300.c](ghidra-export/AI_0051d300_0051d300.c)
- ASM: [AI_0051d300_0051d300.asm](ghidra-export/AI_0051d300_0051d300.asm)
- Types: `99`
- Identities: `99.0.0`
- Incoming calls: 1; outgoing calls: 7
- State writes: `0x0051d35b -> State 3; 0x0051d69c -> State 3; 0x0051d7a9 -> State dynamic; 0x0051d82c -> State 8; 0x0051d992 -> State 9; 0x0051d9a3 -> State 10; 0x0051da03 -> State 3; 0x0051dae8 -> State 3; 0x0051e02b -> State 3`
- StateFrame writes: `0x0051d365; 0x0051d6a6; 0x0051d7f7; 0x0051d9ad; 0x0051d9f4`
- Shared attack/spawn calls: `0x0051d37d -> Isaac::genrand_int32 (0x006eef60); 0x0051d3d0 -> entity_spawn_relay (0x00428b20)`

### `0x0051e0f0`

- C: [AI_0051e0f0_0051e0f0.c](ghidra-export/AI_0051e0f0_0051e0f0.c)
- ASM: [AI_0051e0f0_0051e0f0.asm](ghidra-export/AI_0051e0f0_0051e0f0.asm)
- Types: `271, 272`
- Identities: `271.0.0, 271.1.0, 272.0.0, 272.1.0`
- Incoming calls: 1; outgoing calls: 76
- State writes: `0x0051e157 -> State 4; 0x0051e740 -> State 8; 0x0051e764 -> State 9; 0x0051e94a -> State 10; 0x0051eb7a -> State 13; 0x0051f1f9 -> State 4`
- StateFrame writes: `0x0051e161; 0x0051e384; 0x0051e750; 0x0051e77b; 0x0051e961; 0x0051eb8e; 0x0051ed86; 0x0051ede5; 0x0051eeee`
- Shared attack/spawn calls: `0x0051e667 -> Isaac::genrand_int32 (0x006eef60); 0x0051e69d -> Isaac::genrand_int32 (0x006eef60); 0x0051ed64 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0051ee6b -> Isaac::genrand_int32 (0x006eef60); 0x0051ee98 -> entity_spawn_relay (0x00428b20)`

### `0x0051f2f0`

- C: [AI_0051f2f0_0051f2f0.c](ghidra-export/AI_0051f2f0_0051f2f0.c)
- ASM: [AI_0051f2f0_0051f2f0.asm](ghidra-export/AI_0051f2f0_0051f2f0.asm)
- Types: `92`
- Identities: `92.0.0, 92.1.0, 92.1.1`
- Incoming calls: 1; outgoing calls: 92
- State writes: `0x0051f60b -> State 4; 0x005205c9 -> State 8; 0x0052062e -> State 8; 0x005209b3 -> State 4`
- StateFrame writes: `0x005205d3; 0x00520638; 0x005209bd`
- Shared attack/spawn calls: `0x0051f941 -> Isaac::genrand_int32 (0x006eef60); 0x0051fbe2 -> Isaac::genrand_int32 (0x006eef60); 0x0051fd00 -> Isaac::genrand_int32 (0x006eef60); 0x0051fd3c -> Isaac::genrand_int32 (0x006eef60); 0x005204c7 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005207c2 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005207c7 -> Isaac::genrand_int32 (0x006eef60); 0x00520800 -> Isaac::genrand_int32 (0x006eef60); 0x00520843 -> Isaac::genrand_int32 (0x006eef60); 0x0052086f -> Isaac::genrand_int32 (0x006eef60); 0x0052099f -> Entity_NPC::FireProjectiles (0x006cb2e0)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x00520c60`

- C: [AI_00520c60_00520c60.c](ghidra-export/AI_00520c60_00520c60.c)
- ASM: [AI_00520c60_00520c60.asm](ghidra-export/AI_00520c60_00520c60.asm)
- Types: `42, 203, 235, 236`
- Identities: `203.0.0, 235.0.0, 236.0.0, 42.0.0, 42.1.0, 42.2.0`
- Incoming calls: 1; outgoing calls: 59
- State writes: `0x00520d8b -> State 3; 0x00520e6a -> State 16; 0x00520f12 -> State 16; 0x0052106d -> State 16; 0x00521212 -> State 8; 0x00521404 -> State 3`
- StateFrame writes: `0x00521a96`
- Invincible writes: `0x00520d0e = 1`
- Shared attack/spawn calls: `0x00521a5c -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00521ab0`

- C: [AI_00521ab0_00521ab0.c](ghidra-export/AI_00521ab0_00521ab0.c)
- ASM: [AI_00521ab0_00521ab0.asm](ghidra-export/AI_00521ab0_00521ab0.asm)
- Types: `44`
- Identities: `44.0.0, 44.1.0`
- Incoming calls: 1; outgoing calls: 23
- State writes: `0x00521b0d -> State 4; 0x00522092 -> State 8; 0x005222ca -> State 4; 0x005223a2 -> State 16`
- Invincible writes: `0x00521b17 = 1`
- Shared attack/spawn calls: `0x00521eb1 -> Isaac::genrand_int32 (0x006eef60); 0x005223f9 -> Isaac::genrand_int32 (0x006eef60); 0x0052241d -> Entity::Create dispatcher (0x006fe410)`

### `0x00522430`

- C: [AI_00522430_00522430.c](ghidra-export/AI_00522430_00522430.c)
- ASM: [AI_00522430_00522430.asm](ghidra-export/AI_00522430_00522430.asm)
- Types: `56`
- Identities: `56.0.0`
- Incoming calls: 1; outgoing calls: 48
- State writes: `0x00522486 -> State 3; 0x00522539 -> State 4; 0x00522731 -> State 8; 0x00522905 -> State 6; 0x00522b3f -> State 6; 0x00522e5f -> State 3; 0x00522e7c -> State dynamic`
- Shared attack/spawn calls: `0x00522527 -> Isaac::genrand_int32 (0x006eef60); 0x005228eb -> Isaac::genrand_int32 (0x006eef60); 0x00522e36 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00522ef0`

- C: [AI_00522ef0_00522ef0.c](ghidra-export/AI_00522ef0_00522ef0.c)
- ASM: [AI_00522ef0_00522ef0.asm](ghidra-export/AI_00522ef0_00522ef0.asm)
- Types: `60`
- Identities: `60.0.0, 60.1.0, 60.2.0`
- Incoming calls: 1; outgoing calls: 76
- State writes: `0x0052341b -> State 3; 0x005234c6 -> State 8; 0x005235ab -> State 3; 0x0052377d -> State 3; 0x00523a52 -> State 8; 0x00523c89 -> State 8; 0x00523fa4 -> State 4; 0x00523fcd -> State 4; 0x00523ff4 -> State 4`
- StateFrame writes: `0x00523a5c; 0x00523c93`
- Shared attack/spawn calls: `0x005230b6 -> Isaac::genrand_int32 (0x006eef60); 0x00523173 -> Isaac::genrand_int32 (0x006eef60); 0x00523244 -> Isaac::genrand_int32 (0x006eef60); 0x0052336a -> Isaac::genrand_int32 (0x006eef60); 0x0052338c -> Entity::Create dispatcher (0x006fe410); 0x00523437 -> Isaac::genrand_int32 (0x006eef60); 0x005236a8 -> Isaac::genrand_int32 (0x006eef60); 0x00523a80 -> Entity_NPC::projectile_helper (0x006bec40); 0x00523c01 -> Isaac::genrand_int32 (0x006eef60)`

### `0x005240a0`

- C: [AI_005240a0_005240a0.c](ghidra-export/AI_005240a0_005240a0.c)
- ASM: [AI_005240a0_005240a0.asm](ghidra-export/AI_005240a0_005240a0.asm)
- Types: `58`
- Identities: `58.0.0, 58.1.0`
- Incoming calls: 1; outgoing calls: 42
- Shared attack/spawn calls: `0x00524556 -> Isaac::genrand_int32 (0x006eef60); 0x00524568 -> Isaac::genrand_int32 (0x006eef60); 0x0052478e -> Isaac::genrand_int32 (0x006eef60); 0x00524847 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005249b6 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00524a10`

- C: [AI_00524a10_00524a10.c](ghidra-export/AI_00524a10_00524a10.c)
- ASM: [AI_00524a10_00524a10.asm](ghidra-export/AI_00524a10_00524a10.asm)
- Types: `59`
- Identities: `59.0.0`
- Incoming calls: 1; outgoing calls: 54
- State writes: `0x00524a66 -> State 16; 0x00524b3c -> State 3; 0x00524b58 -> State 16; 0x00524d96 -> State 8; 0x00524fe7 -> State 6`
- Shared attack/spawn calls: `0x00524bee -> Entity_NPC::projectile_helper (0x006bec40); 0x00524cd2 -> Isaac::genrand_int32 (0x006eef60); 0x00524df9 -> Isaac::genrand_int32 (0x006eef60); 0x00525148 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005254ff -> Entity_NPC::FireBossProjectiles (0x006ccdd0)`

### `0x00525650`

- C: [AI_00525650_00525650.c](ghidra-export/AI_00525650_00525650.c)
- ASM: [AI_00525650_00525650.asm](ghidra-export/AI_00525650_00525650.asm)
- Types: `53`
- Identities: `53.0.0, 53.1.0`
- Incoming calls: 1; outgoing calls: 42
- State writes: `0x005256c0 -> State 4`
- Shared attack/spawn calls: `0x00525e8f -> Isaac::genrand_int32 (0x006eef60); 0x00525f55 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00526470`

- C: [AI_00526470_00526470.c](ghidra-export/AI_00526470_00526470.c)
- ASM: [AI_00526470_00526470.asm](ghidra-export/AI_00526470_00526470.asm)
- Types: `29, 34, 54, 86, 246, 305, 840`
- Identities: `246.0.0, 246.1.0, 29.0.0, 29.1.0, 29.2.0, 29.3.0, 305.0.0, 34.0.0, 34.1.0, 54.0.0, 840.0.0, 86.0.0`
- Incoming calls: 1; outgoing calls: 155
- State writes: `0x005264ca -> State 3; 0x00526635 -> State 3; 0x00526cd4 -> State 8; 0x00527183 -> State 3; 0x00527323 -> State 7; 0x00527657 -> State 3; 0x00527bba -> State 8; 0x00527c2c -> State 4; 0x005281c2 -> State 3; 0x0052822f -> State dynamic; 0x005282b5 -> State 3; 0x0052851a -> State 6; 0x00528644 -> State 16; 0x005286dc -> State 3; 0x00528de5 -> State 5`
- StateFrame writes: `0x0052663f; 0x00526cf6; 0x0052718d; 0x0052732d; 0x00527661; 0x00527bc9; 0x00527c51; 0x005281cc; 0x00528239; 0x005282bf; 0x00528510; 0x00528824; 0x00528869; 0x00528e27; 0x00528e7c`
- Invincible writes: `0x0052864e = 1; 0x005286d5 = 0; 0x00528e31 = 1`
- Shared attack/spawn calls: `0x00526954 -> Isaac::genrand_int32 (0x006eef60); 0x00526988 -> Isaac::genrand_int32 (0x006eef60); 0x005269ec -> Isaac::genrand_int32 (0x006eef60); 0x00526b8d -> Entity_NPC::projectile_helper (0x006bec40); 0x00526fdd -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00527138 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0052716f -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005274d8 -> Isaac::genrand_int32 (0x006eef60); 0x005274fa -> entity_spawn_relay (0x00428b20); 0x005275b1 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0052763f -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005279f7 -> Isaac::genrand_int32 (0x006eef60); 0x00527b73 -> Isaac::genrand_int32 (0x006eef60); 0x00527d2e -> Isaac::genrand_int32 (0x006eef60); 0x00527d4a -> entity_spawn_relay (0x00428b20); 0x00527dab -> Isaac::genrand_int32 (0x006eef60); 0x00527dc7 -> entity_spawn_relay (0x00428b20); 0x00527e97 -> Isaac::genrand_int32 (0x006eef60); 0x00527eb3 -> entity_spawn_relay (0x00428b20); 0x0052803d -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00528112 -> Isaac::genrand_int32 (0x006eef60); 0x00528181 -> Isaac::genrand_int32 (0x006eef60); 0x005281fc -> Isaac::genrand_int32 (0x006eef60); 0x0052844a -> Isaac::genrand_int32 (0x006eef60); 0x005285c6 -> Isaac::genrand_int32 (0x006eef60); 0x005285e3 -> entity_spawn_relay (0x00428b20); 0x005288d2 -> Isaac::genrand_int32 (0x006eef60); 0x005288f0 -> Isaac::genrand_int32 (0x006eef60); 0x00528988 -> entity_spawn_relay (0x00428b20); 0x00528b17 -> Isaac::genrand_int32 (0x006eef60); 0x00528b72 -> Isaac::genrand_int32 (0x006eef60); 0x00528bf0 -> Isaac::genrand_int32 (0x006eef60); 0x00528c4c -> Isaac::genrand_int32 (0x006eef60); 0x00528cbf -> Isaac::genrand_int32 (0x006eef60)`

### `0x00529da0`

- C: [AI_00529da0_00529da0.c](ghidra-export/AI_00529da0_00529da0.c)
- ASM: [AI_00529da0_00529da0.asm](ghidra-export/AI_00529da0_00529da0.asm)
- Types: `85, 94, 215, 250, 869`
- Identities: `215.0.0, 250.0.0, 85.0.0, 869.0.0, 94.0.0`
- Incoming calls: 1; outgoing calls: 61
- State writes: `0x00529eff -> State 4; 0x0052a0e1 -> State 4; 0x0052a32d -> State 4; 0x0052a665 -> State 6; 0x0052aa76 -> State 6`
- StateFrame writes: `0x00529f09; 0x0052a0db; 0x0052a167; 0x0052a289; 0x0052a5d1; 0x0052a6c8; 0x0052a9f7; 0x0052aaa4; 0x0052abd2; 0x0052ad4c`
- Shared attack/spawn calls: `0x0052a376 -> Entity_NPC::projectile_helper (0x006bec40); 0x0052a43a -> Isaac::genrand_int32 (0x006eef60); 0x0052a479 -> entity_spawn_relay (0x00428b20); 0x0052a480 -> Isaac::genrand_int32 (0x006eef60); 0x0052a4e3 -> entity_spawn_relay (0x00428b20); 0x0052a52a -> Entity_NPC::projectile_helper (0x006bec40); 0x0052a701 -> Isaac::genrand_int32 (0x006eef60); 0x0052a829 -> Isaac::genrand_int32 (0x006eef60); 0x0052a92e -> Isaac::genrand_int32 (0x006eef60); 0x0052aa1d -> Isaac::genrand_int32 (0x006eef60); 0x0052ac86 -> Isaac::genrand_int32 (0x006eef60); 0x0052aca3 -> entity_spawn_relay (0x00428b20)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x0052ae30`

- C: [AI_0052ae30_0052ae30.c](ghidra-export/AI_0052ae30_0052ae30.c)
- ASM: [AI_0052ae30_0052ae30.asm](ghidra-export/AI_0052ae30_0052ae30.asm)
- Types: `38, 259`
- Identities: `259.0.0, 38.0.0, 38.1.0, 38.1.1, 38.2.0, 38.3.0`
- Incoming calls: 1; outgoing calls: 76
- State writes: `0x0052aea1 -> State 4; 0x0052b0ed -> State 8; 0x0052b4fb -> State 6; 0x0052b870 -> State 6; 0x0052ba62 -> State 4; 0x0052bcef -> State 4`
- StateFrame writes: `0x0052b505; 0x0052b87a; 0x0052b9c7; 0x0052c2ca`
- Shared attack/spawn calls: `0x0052af76 -> Entity_NPC::projectile_helper (0x006bec40); 0x0052b035 -> Isaac::genrand_int32 (0x006eef60); 0x0052b0c1 -> Isaac::genrand_int32 (0x006eef60); 0x0052b100 -> Isaac::genrand_int32 (0x006eef60); 0x0052b147 -> Isaac::genrand_int32 (0x006eef60); 0x0052b159 -> Isaac::genrand_int32 (0x006eef60); 0x0052b36c -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0052b496 -> Isaac::genrand_int32 (0x006eef60); 0x0052b5b6 -> Isaac::genrand_int32 (0x006eef60); 0x0052b5ee -> Isaac::genrand_int32 (0x006eef60); 0x0052bc77 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0052c0a4 -> Isaac::genrand_int32 (0x006eef60)`

### `0x0052c720`

- C: [AI_0052c720_0052c720.c](ghidra-export/AI_0052c720_0052c720.c)
- ASM: [AI_0052c720_0052c720.asm](ghidra-export/AI_0052c720_0052c720.asm)
- Types: `39, 49, 836`
- Identities: `39.0.0, 39.1.0, 39.2.0, 39.22.0, 39.3.0, 49.0.0, 49.1.0, 836.0.0`
- Incoming calls: 1; outgoing calls: 92
- State writes: `0x0052c789 -> State 4; 0x0052cbe2 -> State 8; 0x0052cd14 -> State dynamic; 0x0052d893 -> State 4`
- StateFrame writes: `0x0052cbec; 0x0052cfa4; 0x0052db24`
- Shared attack/spawn calls: `0x0052cb5a -> Isaac::genrand_int32 (0x006eef60); 0x0052cb6a -> Isaac::genrand_int32 (0x006eef60); 0x0052cba5 -> Isaac::genrand_int32 (0x006eef60); 0x0052d162 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0052d1b1 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0052d7dc -> Isaac::genrand_int32 (0x006eef60); 0x0052d806 -> entity_spawn_relay (0x00428b20)`

### `0x0052db50`

- C: [AI_0052db50_0052db50.c](ghidra-export/AI_0052db50_0052db50.c)
- ASM: [AI_0052db50_0052db50.asm](ghidra-export/AI_0052db50_0052db50.asm)
- Types: `21, 23, 31, 55, 237, 243`
- Identities: `21.0.0, 23.0.0, 23.0.1, 23.1.0, 23.2.0, 23.3.0, 237.0.0, 237.1.0, 237.2.0, 243.0.0, 31.0.0, 31.1.0, 55.0.0, 55.1.0, 55.2.0`
- Incoming calls: 1; outgoing calls: 178
- State writes: `0x0052debb -> State 4; 0x0052deca -> State 4; 0x0052f221 -> State 8; 0x0052f456 -> State 8; 0x0052f5a7 -> State 9; 0x0052f6d4 -> State 16; 0x0052fe1d -> State 3; 0x0053022d -> State 4; 0x00530388 -> State 4`
- StateFrame writes: `0x0052f22b; 0x0052f47b; 0x0052f5b1; 0x005303bb`
- Shared attack/spawn calls: `0x0052dc63 -> Isaac::genrand_int32 (0x006eef60); 0x0052dc80 -> entity_spawn_relay (0x00428b20); 0x0052dce6 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0052de48 -> Isaac::genrand_int32 (0x006eef60); 0x0052de6f -> entity_spawn_relay (0x00428b20); 0x0052df73 -> Isaac::genrand_int32 (0x006eef60); 0x0052dfc1 -> entity_spawn_relay (0x00428b20); 0x0052e793 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0052e860 -> Isaac::genrand_int32 (0x006eef60); 0x0052e8e9 -> entity_spawn_relay (0x00428b20); 0x0052e9d8 -> Isaac::genrand_int32 (0x006eef60); 0x0052e9f0 -> Isaac::genrand_int32 (0x006eef60); 0x0052ea42 -> Isaac::genrand_int32 (0x006eef60); 0x0052eaa5 -> entity_spawn_relay (0x00428b20); 0x0052eac3 -> Isaac::genrand_int32 (0x006eef60); 0x0052ec9e -> Isaac::genrand_int32 (0x006eef60); 0x0052ecba -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0052ed31 -> Entity_NPC::projectile_helper (0x006bec40); 0x0052ed60 -> Isaac::genrand_int32 (0x006eef60); 0x0052f55e -> Isaac::genrand_int32 (0x006eef60); 0x0052f86a -> Isaac::genrand_int32 (0x006eef60); 0x0052f87c -> Isaac::genrand_int32 (0x006eef60); 0x0052f902 -> Isaac::genrand_int32 (0x006eef60); 0x0052f92c -> entity_spawn_relay (0x00428b20); 0x00530029 -> Isaac::genrand_int32 (0x006eef60); 0x005300da -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00530187 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005301e4 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0053034e -> entity_spawn_relay (0x00428b20); 0x0053048a -> Isaac::genrand_int32 (0x006eef60); 0x00530546 -> Isaac::genrand_int32 (0x006eef60); 0x0053055c -> Isaac::genrand_int32 (0x006eef60); 0x00530596 -> Isaac::genrand_int32 (0x006eef60); 0x005305e9 -> Isaac::genrand_int32 (0x006eef60); 0x00530614 -> entity_spawn_relay (0x00428b20); 0x005306d5 -> Isaac::genrand_int32 (0x006eef60); 0x005306ee -> entity_spawn_relay (0x00428b20); 0x005307d8 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00530819 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00530a80`

- C: [AI_00530a80_00530a80.c](ghidra-export/AI_00530a80_00530a80.c)
- ASM: [AI_00530a80_00530a80.asm](ghidra-export/AI_00530a80_00530a80.asm)
- Types: `209`
- Identities: `209.0.0`
- Incoming calls: 1; outgoing calls: 43
- State writes: `0x00530e3e -> State 6; 0x005310d0 -> State 7; 0x00531321 -> State 4`
- StateFrame writes: `0x00530f20; 0x00531077`
- Shared attack/spawn calls: `0x00530aee -> Isaac::genrand_int32 (0x006eef60); 0x00530b3b -> Isaac::genrand_int32 (0x006eef60); 0x00530d8e -> Entity_NPC::projectile_helper (0x006bec40); 0x00530dae -> Isaac::genrand_int32 (0x006eef60); 0x00530df3 -> Isaac::genrand_int32 (0x006eef60); 0x0053114f -> Isaac::genrand_int32 (0x006eef60); 0x00531186 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00531195 -> Isaac::genrand_int32 (0x006eef60); 0x0053119c -> Isaac::genrand_int32 (0x006eef60); 0x005311d5 -> Isaac::genrand_int32 (0x006eef60); 0x0053127f -> entity_spawn_relay (0x00428b20)`

### `0x00531350`

- C: [AI_00531350_00531350.c](ghidra-export/AI_00531350_00531350.c)
- ASM: [AI_00531350_00531350.asm](ghidra-export/AI_00531350_00531350.asm)
- Types: `221`
- Identities: `221.0.0`
- Incoming calls: 1; outgoing calls: 30
- State writes: `0x00531371 -> State 3; 0x0053152b -> State 6; 0x005316b8 -> State 3; 0x0053177a -> State 7; 0x005317be -> State 3; 0x00531874 -> State 8; 0x00531933 -> State 8`
- StateFrame writes: `0x00531448; 0x0053154f; 0x00531714; 0x0053188b`
- Invincible writes: `0x00531393 = 1; 0x005313ab = 0`
- Shared attack/spawn calls: `0x00531535 -> Isaac::genrand_int32 (0x006eef60); 0x0053163e -> Isaac::genrand_int32 (0x006eef60); 0x00531673 -> Isaac::genrand_int32 (0x006eef60); 0x00531697 -> Entity_NPC::FireBossProjectiles (0x006ccdd0)`

### `0x00531ab0`

- C: [AI_00531ab0_00531ab0.c](ghidra-export/AI_00531ab0_00531ab0.c)
- ASM: [AI_00531ab0_00531ab0.asm](ghidra-export/AI_00531ab0_00531ab0.asm)
- Types: `206, 207`
- Identities: `206.0.0, 206.1.0, 207.0.0, 207.1.0`
- Incoming calls: 1; outgoing calls: 48
- State writes: `0x00531b36 -> State 4; 0x00531dd4 -> State 8; 0x00532184 -> State 4`
- Shared attack/spawn calls: `0x00531dc2 -> Isaac::genrand_int32 (0x006eef60); 0x00531fa4 -> Isaac::genrand_int32 (0x006eef60); 0x00531fc5 -> entity_spawn_relay (0x00428b20); 0x00531fca -> Isaac::genrand_int32 (0x006eef60); 0x00531fe0 -> Isaac::genrand_int32 (0x006eef60); 0x00532029 -> entity_spawn_relay (0x00428b20); 0x0053203c -> Isaac::genrand_int32 (0x006eef60); 0x0053205b -> entity_spawn_relay (0x00428b20); 0x00532060 -> Isaac::genrand_int32 (0x006eef60); 0x0053207c -> entity_spawn_relay (0x00428b20); 0x00532115 -> Isaac::genrand_int32 (0x006eef60); 0x00532170 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x005321d0`

- C: [AI_005321d0_005321d0.c](ghidra-export/AI_005321d0_005321d0.c)
- ASM: [AI_005321d0_005321d0.asm](ghidra-export/AI_005321d0_005321d0.asm)
- Types: `204, 247`
- Identities: `204.0.0, 247.0.0`
- Incoming calls: 1; outgoing calls: 47
- State writes: `0x0053221e -> State 4; 0x0053274c -> State 9; 0x005327ca -> State 8; 0x005328c8 -> State 4; 0x00532c96 -> State 4`
- StateFrame writes: `0x00532228; 0x00532464; 0x00532756; 0x005327c0; 0x005327fe; 0x00532856; 0x005328d2; 0x005329b8; 0x00532ca0`
- Invincible writes: `0x0053223a = 1; 0x0053224d = 0`
- Shared attack/spawn calls: `0x0053273a -> Isaac::genrand_int32 (0x006eef60); 0x00532765 -> Isaac::genrand_int32 (0x006eef60); 0x00532b83 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00532cf0`

- C: [AI_00532cf0_00532cf0.c](ghidra-export/AI_00532cf0_00532cf0.c)
- ASM: [AI_00532cf0_00532cf0.asm](ghidra-export/AI_00532cf0_00532cf0.asm)
- Types: `212, 286`
- Identities: `212.0.0, 212.1.0, 212.2.0, 212.3.0, 212.4.0, 286.0.0`
- Incoming calls: 1; outgoing calls: 55
- State writes: `0x00532d39 -> State 4; 0x0053328c -> State 8; 0x005333ef -> State 8; 0x0053366f -> State 8; 0x00533981 -> State 4; 0x005339fa -> State 18`
- StateFrame writes: `0x00533a04`
- Invincible writes: `0x00532d6a = 1`
- Shared attack/spawn calls: `0x00532d71 -> Isaac::genrand_int32 (0x006eef60); 0x00532e3f -> Isaac::genrand_int32 (0x006eef60); 0x00532e63 -> Entity::Create dispatcher (0x006fe410); 0x00533438 -> Isaac::genrand_int32 (0x006eef60); 0x0053348a -> Entity::Create dispatcher (0x006fe410); 0x005338e0 -> Isaac::genrand_int32 (0x006eef60); 0x0053392d -> Entity::Create dispatcher (0x006fe410); 0x00533afc -> Isaac::genrand_int32 (0x006eef60); 0x00533b62 -> Entity_NPC::FireProjectiles (0x006cb2e0)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x00533b80`

- C: [AI_00533b80_00533b80.c](ghidra-export/AI_00533b80_00533b80.c)
- ASM: [AI_00533b80_00533b80.asm](ghidra-export/AI_00533b80_00533b80.asm)
- Types: `213, 287`
- Identities: `213.0.0, 287.0.0`
- Incoming calls: 1; outgoing calls: 40
- State writes: `0x00533b9c -> State 4; 0x005342de -> State 7; 0x0053430a -> State 7; 0x00534475 -> State 3; 0x00534500 -> State 6; 0x00534783 -> State 4`
- StateFrame writes: `0x00533bcc; 0x00533d0f; 0x00534153; 0x005342e8; 0x0053447f; 0x0053450a; 0x0053478d`
- Invincible writes: `0x00534618 = 1; 0x005346b8 = 0`
- Shared attack/spawn calls: `0x00533bb2 -> Isaac::genrand_int32 (0x006eef60); 0x0053418a -> Entity_NPC::projectile_helper (0x006bec40); 0x0053436b -> Isaac::genrand_int32 (0x006eef60); 0x005343a6 -> Isaac::genrand_int32 (0x006eef60); 0x005343c4 -> Entity::Create dispatcher (0x006fe410); 0x005347b6 -> Isaac::genrand_int32 (0x006eef60); 0x005347db -> Isaac::genrand_int32 (0x006eef60)`

### `0x00534860`

- C: [AI_00534860_00534860.c](ghidra-export/AI_00534860_00534860.c)
- ASM: [AI_00534860_00534860.asm](ghidra-export/AI_00534860_00534860.asm)
- Types: `217, 870`
- Identities: `217.0.0, 217.1.0, 217.2.0, 217.3.0, 870.0.0`
- Incoming calls: 1; outgoing calls: 43
- State writes: `0x0053499e -> State 3; 0x00534b12 -> State 16; 0x00534b34 -> State 3; 0x00534b70 -> State 3; 0x00534c07 -> State 4`
- Shared attack/spawn calls: `0x00534af7 -> Isaac::genrand_int32 (0x006eef60); 0x00534be6 -> Isaac::genrand_int32 (0x006eef60); 0x00534c7f -> Isaac::genrand_int32 (0x006eef60); 0x00534d4f -> Isaac::genrand_int32 (0x006eef60); 0x00534db1 -> Isaac::genrand_int32 (0x006eef60); 0x00534e69 -> Isaac::genrand_int32 (0x006eef60); 0x00534f6b -> Isaac::genrand_int32 (0x006eef60); 0x00535055 -> Isaac::genrand_int32 (0x006eef60); 0x00535062 -> Isaac::genrand_int32 (0x006eef60); 0x005350cb -> Isaac::genrand_int32 (0x006eef60); 0x0053526a -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00535280`

- C: [AI_00535280_00535280.c](ghidra-export/AI_00535280_00535280.c)
- ASM: [AI_00535280_00535280.asm](ghidra-export/AI_00535280_00535280.asm)
- Types: `220, 871`
- Identities: `220.0.0, 220.1.0, 871.0.0`
- Incoming calls: 1; outgoing calls: 103
- State writes: `0x005352bb -> State 3; 0x00535828 -> State 4; 0x00535892 -> State 4; 0x005358c2 -> State 8; 0x00535b83 -> State dynamic; 0x00535d2a -> State 4; 0x00535e6e -> State dynamic; 0x00535f63 -> State dynamic`
- Shared attack/spawn calls: `0x00535405 -> Isaac::genrand_int32 (0x006eef60); 0x00535458 -> Isaac::genrand_int32 (0x006eef60); 0x005354bb -> Entity::Create dispatcher (0x006fe410); 0x005354c2 -> Isaac::genrand_int32 (0x006eef60); 0x005355a3 -> Isaac::genrand_int32 (0x006eef60); 0x005355f7 -> Entity::Create dispatcher (0x006fe410); 0x005355fc -> Isaac::genrand_int32 (0x006eef60); 0x00535650 -> Entity::Create dispatcher (0x006fe410); 0x0053566a -> Isaac::genrand_int32 (0x006eef60); 0x005356c1 -> Entity::Create dispatcher (0x006fe410); 0x005356c6 -> Isaac::genrand_int32 (0x006eef60); 0x0053571d -> Entity::Create dispatcher (0x006fe410); 0x005357bf -> Isaac::genrand_int32 (0x006eef60); 0x0053583d -> Entity_NPC::projectile_helper (0x006bec40); 0x00535fc3 -> Isaac::genrand_int32 (0x006eef60); 0x00535fd5 -> Isaac::genrand_int32 (0x006eef60); 0x005360e1 -> Isaac::genrand_int32 (0x006eef60); 0x0053615b -> Isaac::genrand_int32 (0x006eef60)`

### `0x00536d00`

- C: [AI_00536d00_00536d00.c](ghidra-export/AI_00536d00_00536d00.c)
- ASM: [AI_00536d00_00536d00.asm](ghidra-export/AI_00536d00_00536d00.asm)
- Types: `216`
- Identities: `216.0.0, 216.1.0, 216.10.0`
- Incoming calls: 1; outgoing calls: 39
- State writes: `0x00536d5f -> State 4`
- Shared attack/spawn calls: `0x00536d85 -> Isaac::genrand_int32 (0x006eef60); 0x00536da7 -> Entity::Create dispatcher (0x006fe410); 0x00536e30 -> Isaac::genrand_int32 (0x006eef60); 0x00536e52 -> Entity::Create dispatcher (0x006fe410); 0x00537092 -> Isaac::genrand_int32 (0x006eef60); 0x005370a8 -> Isaac::genrand_int32 (0x006eef60); 0x00537111 -> Isaac::genrand_int32 (0x006eef60); 0x00537132 -> Entity::Create dispatcher (0x006fe410); 0x00537365 -> Isaac::genrand_int32 (0x006eef60); 0x00537386 -> Entity::Create dispatcher (0x006fe410)`

### `0x005374a0`

- C: [AI_005374a0_005374a0.c](ghidra-export/AI_005374a0_005374a0.c)
- ASM: [AI_005374a0_005374a0.asm](ghidra-export/AI_005374a0_005374a0.asm)
- Types: `219, 285`
- Identities: `219.0.0, 285.0.0`
- Incoming calls: 1; outgoing calls: 36
- State writes: `0x005374e2 -> State 13; 0x0053763d -> State 16; 0x0053777f -> State 4; 0x00537849 -> State 3; 0x00537911 -> State 4; 0x00537afc -> State 8; 0x00537d80 -> State 9; 0x00537db7 -> State 3`
- StateFrame writes: `0x00537890; 0x00537dc1`
- Shared attack/spawn calls: `0x0053789b -> Isaac::genrand_int32 (0x006eef60); 0x00537d48 -> Isaac::genrand_int32 (0x006eef60); 0x00537d6c -> Entity_NPC::FireBossProjectiles (0x006ccdd0)`

### `0x00537e20`

- C: [AI_00537e20_00537e20.c](ghidra-export/AI_00537e20_00537e20.c)
- ASM: [AI_00537e20_00537e20.asm](ghidra-export/AI_00537e20_00537e20.asm)
- Types: `231, 964`
- Identities: `231.0.0, 231.1.0, 964.0.0`
- Incoming calls: 1; outgoing calls: 11
- State writes: `0x00537e5c -> State 3`

### `0x005381c0`

- C: [AI_005381c0_005381c0.c](ghidra-export/AI_005381c0_005381c0.c)
- ASM: [AI_005381c0_005381c0.asm](ghidra-export/AI_005381c0_005381c0.asm)
- Types: `232, 234`
- Identities: `234.0.0`
- Incoming calls: 1; outgoing calls: 32
- State writes: `0x0053820d -> State 4; 0x00538370 -> State 4; 0x0053887f -> State 8; 0x00538b49 -> State 4`
- StateFrame writes: `0x00538297; 0x00538305; 0x00538470; 0x00538889; 0x00538b37; 0x00538b53`
- Shared attack/spawn calls: `0x005381ef -> Isaac::genrand_int32 (0x006eef60); 0x00538235 -> Isaac::genrand_int32 (0x006eef60); 0x0053830b -> Isaac::genrand_int32 (0x006eef60); 0x0053840a -> Isaac::genrand_int32 (0x006eef60); 0x005384ec -> Entity_NPC::projectile_helper (0x006bec40); 0x0053875e -> Isaac::genrand_int32 (0x006eef60)`

### `0x00538b70`

- C: [AI_00538b70_00538b70.c](ghidra-export/AI_00538b70_00538b70.c)
- ASM: [AI_00538b70_00538b70.asm](ghidra-export/AI_00538b70_00538b70.asm)
- Types: `226, 227, 277`
- Identities: `226.0.0, 226.1.0, 226.2.0, 227.0.0, 227.1.0, 277.0.0`
- Incoming calls: 1; outgoing calls: 97
- State writes: `0x00538bde -> State 4; 0x00539177 -> State 8; 0x005394d3 -> State 8; 0x00539937 -> State 4`
- StateFrame writes: `0x00539181; 0x005394dd; 0x0053992f`
- Shared attack/spawn calls: `0x00538cdc -> Isaac::genrand_int32 (0x006eef60); 0x00538dbf -> Entity_NPC::projectile_helper (0x006bec40); 0x00538ee5 -> Isaac::genrand_int32 (0x006eef60); 0x00538f15 -> entity_spawn_relay (0x00428b20); 0x00538f9a -> Isaac::genrand_int32 (0x006eef60); 0x00539347 -> Isaac::genrand_int32 (0x006eef60); 0x005397e3 -> Isaac::genrand_int32 (0x006eef60); 0x0053988b -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0053997e -> Isaac::genrand_int32 (0x006eef60); 0x00539a1c -> Isaac::genrand_int32 (0x006eef60); 0x00539a3d -> entity_spawn_relay (0x00428b20); 0x00539a55 -> Isaac::genrand_int32 (0x006eef60); 0x00539a62 -> Isaac::genrand_int32 (0x006eef60); 0x00539aab -> entity_spawn_relay (0x00428b20); 0x00539b37 -> Isaac::genrand_int32 (0x006eef60); 0x00539b54 -> entity_spawn_relay (0x00428b20)`

### `0x00539b90`

- C: [AI_00539b90_00539b90.c](ghidra-export/AI_00539b90_00539b90.c)
- ASM: [AI_00539b90_00539b90.asm](ghidra-export/AI_00539b90_00539b90.asm)
- Types: `228, 251`
- Identities: `228.0.0, 228.10.0, 251.0.0, 251.10.0`
- Incoming calls: 1; outgoing calls: 46
- State writes: `0x00539bea -> State 3; 0x0053a1b2 -> State 4; 0x0053a454 -> State 8; 0x0053a7d1 -> State 8`
- StateFrame writes: `0x00539c06; 0x0053a196; 0x0053a1bc; 0x0053a70f`
- Shared attack/spawn calls: `0x00539f94 -> Isaac::genrand_int32 (0x006eef60); 0x00539fbc -> entity_spawn_relay (0x00428b20); 0x0053a2ac -> Isaac::genrand_int32 (0x006eef60); 0x0053a2c4 -> Isaac::genrand_int32 (0x006eef60); 0x0053a350 -> entity_spawn_relay (0x00428b20); 0x0053a360 -> Isaac::genrand_int32 (0x006eef60); 0x0053a4f1 -> Entity_NPC::projectile_helper (0x006bec40); 0x0053a6d9 -> Isaac::genrand_int32 (0x006eef60); 0x0053a72b -> Isaac::genrand_int32 (0x006eef60); 0x0053a74f -> Isaac::genrand_int32 (0x006eef60); 0x0053a8d6 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0053a989 -> Entity_NPC::projectile_helper (0x006bec40)`

### `0x0053ab40`

- C: [AI_0053ab40_0053ab40.c](ghidra-export/AI_0053ab40_0053ab40.c)
- ASM: [AI_0053ab40_0053ab40.asm](ghidra-export/AI_0053ab40_0053ab40.asm)
- Types: `224`
- Identities: `224.0.0`
- Incoming calls: 1; outgoing calls: 24
- State writes: `0x0053ab76 -> State 4; 0x0053af88 -> State 8; 0x0053afc9 -> State 13; 0x0053b213 -> State 4`
- StateFrame writes: `0x0053afd3; 0x0053b1c6`
- Shared attack/spawn calls: `0x0053ab87 -> Isaac::genrand_int32 (0x006eef60); 0x0053ac3a -> Entity_NPC::projectile_helper (0x006bec40); 0x0053acc5 -> Isaac::genrand_int32 (0x006eef60); 0x0053af94 -> Isaac::genrand_int32 (0x006eef60); 0x0053b2c7 -> Isaac::genrand_int32 (0x006eef60); 0x0053b2e2 -> Entity::Create dispatcher (0x006fe410)`

### `0x0053b2f0`

- C: [AI_0053b2f0_0053b2f0.c](ghidra-export/AI_0053b2f0_0053b2f0.c)
- ASM: [AI_0053b2f0_0053b2f0.asm](ghidra-export/AI_0053b2f0_0053b2f0.asm)
- Types: `225`
- Identities: `225.0.0`
- Incoming calls: 1; outgoing calls: 27
- State writes: `0x0053b315 -> State 4; 0x0053b6cc -> State 8; 0x0053b748 -> State 13; 0x0053b8e5 -> State 9; 0x0053b97b -> State 4`
- StateFrame writes: `0x0053b6ea; 0x0053b766; 0x0053b8f2`
- Shared attack/spawn calls: `0x0053b3cd -> Entity_NPC::projectile_helper (0x006bec40); 0x0053b45d -> Isaac::genrand_int32 (0x006eef60); 0x0053b703 -> Isaac::genrand_int32 (0x006eef60); 0x0053b9f2 -> Isaac::genrand_int32 (0x006eef60); 0x0053ba11 -> Entity::Create dispatcher (0x006fe410); 0x0053ba71 -> Isaac::genrand_int32 (0x006eef60); 0x0053bad4 -> Entity::Create dispatcher (0x006fe410)`

### `0x0053bae0`

- C: [AI_0053bae0_0053bae0.c](ghidra-export/AI_0053bae0_0053bae0.c)
- ASM: [AI_0053bae0_0053bae0.asm](ghidra-export/AI_0053bae0_0053bae0.asm)
- Types: `222`
- Identities: `222.0.0`
- Incoming calls: 1; outgoing calls: 17
- State writes: `0x0053bcd9 -> State 4`
- Shared attack/spawn calls: `0x0053bd1d -> Entity_NPC::projectile_helper (0x006bec40)`

### `0x0053c0d0`

- C: [AI_0053c0d0_0053c0d0.c](ghidra-export/AI_0053c0d0_0053c0d0.c)
- ASM: [AI_0053c0d0_0053c0d0.asm](ghidra-export/AI_0053c0d0_0053c0d0.asm)
- Types: `240, 241, 242, 304`
- Identities: `240.0.0, 240.1.0, 240.2.0, 240.3.0, 241.0.0, 241.1.0, 242.0.0, 304.0.0`
- Incoming calls: 1; outgoing calls: 87
- State writes: `0x0053c5df -> State 4; 0x0053cdc7 -> State 4; 0x0053df3b -> State 8; 0x0053e323 -> State 4`
- StateFrame writes: `0x0053dc5b; 0x0053e051`
- Shared attack/spawn calls: `0x0053c344 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0053c369 -> Isaac::genrand_int32 (0x006eef60); 0x0053c7a5 -> Isaac::genrand_int32 (0x006eef60); 0x0053c7f6 -> Isaac::genrand_int32 (0x006eef60); 0x0053c91d -> Isaac::genrand_int32 (0x006eef60); 0x0053caa3 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0053caa8 -> Isaac::genrand_int32 (0x006eef60); 0x0053cacb -> entity_spawn_relay (0x00428b20); 0x0053cad2 -> Isaac::genrand_int32 (0x006eef60); 0x0053cd42 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0053d055 -> Entity_NPC::projectile_helper (0x006bec40); 0x0053d8e6 -> Isaac::genrand_int32 (0x006eef60); 0x0053d9be -> Isaac::genrand_int32 (0x006eef60); 0x0053d9e0 -> entity_spawn_relay (0x00428b20); 0x0053deb4 -> Isaac::genrand_int32 (0x006eef60); 0x0053e036 -> Isaac::genrand_int32 (0x006eef60)`

### `0x0053e4a0`

- C: [AI_0053e4a0_0053e4a0.c](ghidra-export/AI_0053e4a0_0053e4a0.c)
- ASM: [AI_0053e4a0_0053e4a0.asm](ghidra-export/AI_0053e4a0_0053e4a0.asm)
- Types: `244, 255, 276, 289`
- Identities: `244.0.0, 244.1.0, 244.2.0, 244.2.1, 244.3.0, 255.0.0, 276.0.0, 289.0.0`
- Incoming calls: 1; outgoing calls: 119
- State writes: `0x0053e7f1 -> State 6; 0x0053ebe5 -> State 8; 0x0053ebfe -> State 4; 0x0053f00d -> State 8; 0x0053fa9a -> State 6; 0x0053ff42 -> State 6; 0x0054002e -> State 6`
- StateFrame writes: `0x0053efef; 0x00540040`
- Shared attack/spawn calls: `0x0053e892 -> Isaac::genrand_int32 (0x006eef60); 0x0053e8c9 -> Isaac::genrand_int32 (0x006eef60); 0x0053e99e -> Isaac::genrand_int32 (0x006eef60); 0x0053e9d5 -> Isaac::genrand_int32 (0x006eef60); 0x0053ea4a -> Isaac::genrand_int32 (0x006eef60); 0x0053ea72 -> Entity::Create dispatcher (0x006fe410); 0x0053ee2c -> Isaac::genrand_int32 (0x006eef60); 0x0053ef80 -> Isaac::genrand_int32 (0x006eef60); 0x0053f0d4 -> Isaac::genrand_int32 (0x006eef60); 0x0053f10b -> Isaac::genrand_int32 (0x006eef60); 0x0053f1fe -> Isaac::genrand_int32 (0x006eef60); 0x0053f235 -> Isaac::genrand_int32 (0x006eef60); 0x0053f63d -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0053f6a9 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0053f805 -> Isaac::genrand_int32 (0x006eef60); 0x0053f82f -> Isaac::genrand_int32 (0x006eef60); 0x0053f84d -> Entity::Create dispatcher (0x006fe410); 0x0053f8c1 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0053f986 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0053fa36 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0053fbfc -> Isaac::genrand_int32 (0x006eef60); 0x0053fca1 -> Isaac::genrand_int32 (0x006eef60); 0x0053fcd6 -> Isaac::genrand_int32 (0x006eef60); 0x0053fd1e -> Isaac::genrand_int32 (0x006eef60); 0x0053fd95 -> Isaac::genrand_int32 (0x006eef60); 0x0053fe0b -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0053fe34 -> Isaac::genrand_int32 (0x006eef60); 0x0053fe9c -> Isaac::genrand_int32 (0x006eef60); 0x0053fed1 -> Isaac::genrand_int32 (0x006eef60); 0x0053ff72 -> Isaac::genrand_int32 (0x006eef60); 0x0053ff96 -> Entity::Create dispatcher (0x006fe410)`

### `0x005400d0`

- C: [AI_005400d0_005400d0.c](ghidra-export/AI_005400d0_005400d0.c)
- ASM: [AI_005400d0_005400d0.asm](ghidra-export/AI_005400d0_005400d0.asm)
- Types: `256`
- Identities: `256.0.0`
- Incoming calls: 1; outgoing calls: 17
- State writes: `0x005401b2 -> State 4`
- StateFrame writes: `0x005401ac`
- Shared attack/spawn calls: `0x005401bc -> Isaac::genrand_int32 (0x006eef60); 0x00540244 -> Entity_NPC::projectile_helper (0x006bec40)`

### `0x00540510`

- C: [AI_00540510_00540510.c](ghidra-export/AI_00540510_00540510.c)
- ASM: [AI_00540510_00540510.asm](ghidra-export/AI_00540510_00540510.asm)
- Types: `258`
- Identities: `258.0.0`
- Incoming calls: 1; outgoing calls: 19
- State writes: `0x0054055c -> State 4; 0x00540688 -> State 8; 0x00540833 -> State 8; 0x00540c74 -> State 4`
- Shared attack/spawn calls: `0x0054058e -> Entity_NPC::projectile_helper (0x006bec40); 0x005407ab -> Isaac::genrand_int32 (0x006eef60); 0x00540b36 -> Isaac::genrand_int32 (0x006eef60); 0x00540d64 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00540df0`

- C: [AI_00540df0_00540df0.c](ghidra-export/AI_00540df0_00540df0.c)
- ASM: [AI_00540df0_00540df0.asm](ghidra-export/AI_00540df0_00540df0.asm)
- Types: `281`
- Identities: `281.0.0`
- Incoming calls: 1; outgoing calls: 34
- Shared attack/spawn calls: `0x00540e91 -> Isaac::genrand_int32 (0x006eef60); 0x00540f22 -> entity_spawn_relay (0x00428b20); 0x00541325 -> Entity_NPC::projectile_helper (0x006bec40); 0x00541463 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00541810`

- C: [AI_00541810_00541810.c](ghidra-export/AI_00541810_00541810.c)
- ASM: [AI_00541810_00541810.asm](ghidra-export/AI_00541810_00541810.asm)
- Types: `288`
- Identities: `288.0.0`
- Incoming calls: 1; outgoing calls: 24
- State writes: `0x0054182a -> State 4; 0x0054197f -> State 8; 0x00541b65 -> State 4`
- Shared attack/spawn calls: `0x0054183e -> Isaac::genrand_int32 (0x006eef60); 0x00541943 -> Isaac::genrand_int32 (0x006eef60); 0x005419e5 -> Isaac::genrand_int32 (0x006eef60); 0x00541a77 -> Entity::Create dispatcher (0x006fe410); 0x00541a8f -> Isaac::genrand_int32 (0x006eef60); 0x00541aa5 -> Isaac::genrand_int32 (0x006eef60); 0x00541b37 -> Entity::Create dispatcher (0x006fe410); 0x00541b78 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00541ce0`

- C: [AI_00541ce0_00541ce0.c](ghidra-export/AI_00541ce0_00541ce0.c)
- ASM: [AI_00541ce0_00541ce0.asm](ghidra-export/AI_00541ce0_00541ce0.asm)
- Types: `290`
- Identities: `290.0.0`
- Incoming calls: 1; outgoing calls: 63
- State writes: `0x00541d0c -> State 4; 0x00541f1f -> State 16; 0x00541fe4 -> State dynamic; 0x00542035 -> State 8; 0x00542041 -> State 9; 0x005420f8 -> State 4; 0x00542195 -> State 4`
- StateFrame writes: `0x00541fd0`
- Shared attack/spawn calls: `0x00541d3b -> Entity_NPC::projectile_helper (0x006bec40); 0x00541eeb -> Isaac::genrand_int32 (0x006eef60); 0x00541fc8 -> Isaac::genrand_int32 (0x006eef60); 0x00542164 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x00542227 -> Isaac::genrand_int32 (0x006eef60); 0x00542249 -> Entity::Create dispatcher (0x006fe410); 0x005422ee -> Isaac::genrand_int32 (0x006eef60); 0x0054237b -> Isaac::genrand_int32 (0x006eef60); 0x005423f4 -> Isaac::genrand_int32 (0x006eef60); 0x0054241b -> entity_spawn_relay (0x00428b20); 0x0054245e -> Isaac::genrand_int32 (0x006eef60); 0x00542493 -> Isaac::genrand_int32 (0x006eef60); 0x00542504 -> Isaac::genrand_int32 (0x006eef60); 0x00542b02 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00542be0`

- C: [AI_00542be0_00542be0.c](ghidra-export/AI_00542be0_00542be0.c)
- ASM: [AI_00542be0_00542be0.asm](ghidra-export/AI_00542be0_00542be0.asm)
- Types: `300`
- Identities: `300.0.0`
- Incoming calls: 1; outgoing calls: 3
- State writes: `0x00542c07 -> State 3; 0x00542d6b -> State dynamic; 0x00542d8c -> State dynamic; 0x00542e7b -> State dynamic; 0x00542f2e -> State 16; 0x00542f44 -> State 16; 0x00543024 -> State 3`
- StateFrame writes: `0x00542c32; 0x00542d15; 0x00542f92; 0x00542fd2; 0x0054304f`
- Shared attack/spawn calls: `0x00542c1a -> Isaac::genrand_int32 (0x006eef60)`

### `0x005430d0`

- C: [AI_005430d0_005430d0.c](ghidra-export/AI_005430d0_005430d0.c)
- ASM: [AI_005430d0_005430d0.asm](ghidra-export/AI_005430d0_005430d0.asm)
- Types: `303`
- Identities: `303.0.0`
- Incoming calls: 1; outgoing calls: 30
- State writes: `0x005430e7 -> State 4; 0x0054325f -> State 6; 0x00543388 -> State 8; 0x00543497 -> State 4; 0x0054362e -> State 4`
- StateFrame writes: `0x005430ff; 0x00543135; 0x005434af; 0x00543646`
- Shared attack/spawn calls: `0x005430f1 -> Isaac::genrand_int32 (0x006eef60); 0x0054334f -> Isaac::genrand_int32 (0x006eef60); 0x005434a1 -> Isaac::genrand_int32 (0x006eef60); 0x005434f2 -> Isaac::genrand_int32 (0x006eef60); 0x00543556 -> Entity::Create dispatcher (0x006fe410); 0x005435cc -> Isaac::genrand_int32 (0x006eef60); 0x00543638 -> Isaac::genrand_int32 (0x006eef60); 0x005436d7 -> Entity::Create dispatcher (0x006fe410)`

### `0x00543720`

- C: [AI_00543720_00543720.c](ghidra-export/AI_00543720_00543720.c)
- ASM: [AI_00543720_00543720.asm](ghidra-export/AI_00543720_00543720.asm)
- Types: `306`
- Identities: `306.0.0, 306.1.0`
- Incoming calls: 1; outgoing calls: 33
- State writes: `0x00543749 -> State 3`
- Shared attack/spawn calls: `0x00543d5b -> Entity::Create dispatcher (0x006fe410); 0x00543e0a -> Isaac::genrand_int32 (0x006eef60); 0x0054409b -> Isaac::genrand_int32 (0x006eef60); 0x005440f9 -> Isaac::genrand_int32 (0x006eef60); 0x0054410c -> Isaac::genrand_int32 (0x006eef60)`

### `0x005442a0`

- C: [AI_005442a0_005442a0.c](ghidra-export/AI_005442a0_005442a0.c)
- ASM: [AI_005442a0_005442a0.asm](ghidra-export/AI_005442a0_005442a0.asm)
- Types: `307`
- Identities: `307.0.0, 307.0.1`
- Incoming calls: 1; outgoing calls: 121
- State writes: `0x005444bf -> State 3; 0x005447db -> State 9; 0x00544944 -> State 8; 0x005449c4 -> State 4; 0x00544cae -> State 4; 0x0054513d -> State 6; 0x005451ea -> State 6; 0x0054526e -> State 3; 0x0054556a -> State 3`
- Shared attack/spawn calls: `0x00544507 -> Isaac::genrand_int32 (0x006eef60); 0x00544643 -> Entity_NPC::projectile_helper (0x006bec40); 0x00544662 -> Isaac::genrand_int32 (0x006eef60); 0x00544783 -> Isaac::genrand_int32 (0x006eef60); 0x0054482d -> Entity::Create dispatcher (0x006fe410); 0x0054495c -> Isaac::genrand_int32 (0x006eef60); 0x00545284 -> Isaac::genrand_int32 (0x006eef60); 0x005453d8 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0054557d -> Isaac::genrand_int32 (0x006eef60); 0x00545646 -> Isaac::genrand_int32 (0x006eef60); 0x005456bf -> Isaac::genrand_int32 (0x006eef60)`

### `0x00545f70`

- C: [AI_00545f70_00545f70.c](ghidra-export/AI_00545f70_00545f70.c)
- ASM: [AI_00545f70_00545f70.asm](ghidra-export/AI_00545f70_00545f70.asm)
- Types: `308`
- Identities: `308.0.0`
- Incoming calls: 1; outgoing calls: 52
- State writes: `0x00545fe5 -> State 4`
- Shared attack/spawn calls: `0x00546076 -> Entity_NPC::projectile_helper (0x006bec40); 0x005466a7 -> Isaac::genrand_int32 (0x006eef60); 0x005468c0 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00546a11 -> Isaac::genrand_int32 (0x006eef60); 0x00546a6a -> entity_spawn_relay (0x00428b20); 0x00546c82 -> Isaac::genrand_int32 (0x006eef60); 0x00546ee5 -> Entity_NPC::projectile_helper (0x006bec40)`

### `0x00547330`

- C: [AI_00547330_00547330.c](ghidra-export/AI_00547330_00547330.c)
- ASM: [AI_00547330_00547330.asm](ghidra-export/AI_00547330_00547330.asm)
- Types: `309`
- Identities: `309.0.0`
- Incoming calls: 1; outgoing calls: 29
- State writes: `0x00547453 -> State 3`
- Shared attack/spawn calls: `0x00547474 -> Isaac::genrand_int32 (0x006eef60); 0x0054749f -> Isaac::genrand_int32 (0x006eef60); 0x005474c9 -> entity_spawn_relay (0x00428b20); 0x00547673 -> Isaac::genrand_int32 (0x006eef60); 0x005476a4 -> entity_spawn_relay (0x00428b20); 0x005476ab -> Isaac::genrand_int32 (0x006eef60); 0x005477aa -> Isaac::genrand_int32 (0x006eef60); 0x005477d3 -> Isaac::genrand_int32 (0x006eef60); 0x005477fd -> Isaac::genrand_int32 (0x006eef60); 0x00547a02 -> Isaac::genrand_int32 (0x006eef60); 0x00547a2f -> entity_spawn_relay (0x00428b20)`

### `0x00547b60`

- C: [AI_00547b60_00547b60.c](ghidra-export/AI_00547b60_00547b60.c)
- ASM: [AI_00547b60_00547b60.asm](ghidra-export/AI_00547b60_00547b60.asm)
- Types: `310`
- Identities: `310.0.0, 310.0.1, 310.0.2, 310.0.3, 310.1.0`
- Incoming calls: 1; outgoing calls: 57
- State writes: `0x00547fd2 -> State 4; 0x005484a0 -> State 16`
- Shared attack/spawn calls: `0x00547d11 -> Entity_NPC::projectile_helper (0x006bec40); 0x00547d41 -> Isaac::genrand_int32 (0x006eef60); 0x00547daa -> Isaac::genrand_int32 (0x006eef60); 0x00547e22 -> Entity_NPC::projectile_helper (0x006bec40); 0x00547e76 -> Isaac::genrand_int32 (0x006eef60); 0x00547ffb -> Isaac::genrand_int32 (0x006eef60); 0x0054801d -> entity_spawn_relay (0x00428b20); 0x00548024 -> Isaac::genrand_int32 (0x006eef60); 0x0054808b -> Isaac::genrand_int32 (0x006eef60); 0x00548271 -> Isaac::genrand_int32 (0x006eef60); 0x00548278 -> Isaac::genrand_int32 (0x006eef60); 0x0054830c -> Isaac::genrand_int32 (0x006eef60); 0x005483a9 -> entity_spawn_relay (0x00428b20); 0x00548412 -> Isaac::genrand_int32 (0x006eef60); 0x0054842e -> entity_spawn_relay (0x00428b20); 0x005484c1 -> Isaac::genrand_int32 (0x006eef60); 0x00548510 -> Isaac::genrand_int32 (0x006eef60); 0x00548517 -> Isaac::genrand_int32 (0x006eef60); 0x005485ad -> entity_spawn_relay (0x00428b20); 0x005485da -> Isaac::genrand_int32 (0x006eef60); 0x005486dd -> Isaac::genrand_int32 (0x006eef60)`

### `0x005492c0`

- C: [AI_005492c0_005492c0.c](ghidra-export/AI_005492c0_005492c0.c)
- ASM: [AI_005492c0_005492c0.asm](ghidra-export/AI_005492c0_005492c0.asm)
- Types: `311`
- Identities: `311.0.0, 311.10.0`
- Incoming calls: 1; outgoing calls: 71
- State writes: `0x0054949f -> State 3; 0x0054958f -> State 3; 0x005496f4 -> State 6; 0x00549980 -> State 4; 0x00549b87 -> State 3; 0x00549d77 -> State 8; 0x00549e28 -> State 7; 0x00549fe8 -> State 4`
- StateFrame writes: `0x00549675; 0x0054972e; 0x0054998a; 0x00549b91; 0x00549d81; 0x00549e19; 0x00549e5e; 0x00549ffe`
- Shared attack/spawn calls: `0x00549313 -> Isaac::genrand_int32 (0x006eef60); 0x00549331 -> Entity::Create dispatcher (0x006fe410); 0x00549527 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0054964d -> Entity_NPC::projectile_helper (0x006bec40); 0x005497ce -> Isaac::genrand_int32 (0x006eef60); 0x005497f2 -> Entity::Create dispatcher (0x006fe410); 0x0054982e -> Isaac::genrand_int32 (0x006eef60); 0x00549847 -> Isaac::genrand_int32 (0x006eef60); 0x0054987e -> Isaac::genrand_int32 (0x006eef60); 0x005498f3 -> Isaac::genrand_int32 (0x006eef60); 0x0054993d -> Entity::Create dispatcher (0x006fe410); 0x005499f0 -> Isaac::genrand_int32 (0x006eef60); 0x00549a10 -> Isaac::genrand_int32 (0x006eef60); 0x00549a47 -> Isaac::genrand_int32 (0x006eef60); 0x00549abc -> Isaac::genrand_int32 (0x006eef60); 0x00549b09 -> Entity::Create dispatcher (0x006fe410); 0x00549b17 -> Isaac::genrand_int32 (0x006eef60); 0x00549da0 -> Isaac::genrand_int32 (0x006eef60); 0x00549dd1 -> Isaac::genrand_int32 (0x006eef60); 0x00549df8 -> Entity_NPC::projectile_helper (0x006bec40); 0x00549fd6 -> Isaac::genrand_int32 (0x006eef60)`

### `0x0054ad80`

- C: [AI_0054ad80_0054ad80.c](ghidra-export/AI_0054ad80_0054ad80.c)
- ASM: [AI_0054ad80_0054ad80.asm](ghidra-export/AI_0054ad80_0054ad80.asm)
- Types: `868`
- Identities: `868.0.0`
- Incoming calls: 1; outgoing calls: 84
- State writes: `0x0054bb09 -> State 4`
- Shared attack/spawn calls: `0x0054b0b1 -> Isaac::genrand_int32 (0x006eef60); 0x0054b0c7 -> Isaac::genrand_int32 (0x006eef60); 0x0054b0f5 -> Isaac::genrand_int32 (0x006eef60); 0x0054b35d -> Isaac::genrand_int32 (0x006eef60); 0x0054b484 -> Isaac::genrand_int32 (0x006eef60); 0x0054b49a -> Isaac::genrand_int32 (0x006eef60); 0x0054b584 -> Isaac::genrand_int32 (0x006eef60); 0x0054b5bd -> Isaac::genrand_int32 (0x006eef60); 0x0054b72c -> Isaac::genrand_int32 (0x006eef60)`

### `0x0054d250`

- C: [AI_0054d250_0054d250.c](ghidra-export/AI_0054d250_0054d250.c)
- ASM: [AI_0054d250_0054d250.asm](ghidra-export/AI_0054d250_0054d250.asm)
- Types: `878`
- Identities: `878.0.0`
- Incoming calls: 1; outgoing calls: 83
- State writes: `0x0054d372 -> State 4`
- Shared attack/spawn calls: `0x0054d4ca -> Isaac::genrand_int32 (0x006eef60); 0x0054d51b -> Isaac::genrand_int32 (0x006eef60); 0x0054d531 -> Isaac::genrand_int32 (0x006eef60); 0x0054d553 -> entity_spawn_relay (0x00428b20); 0x0054d5ec -> Isaac::genrand_int32 (0x006eef60); 0x0054d5fe -> Isaac::genrand_int32 (0x006eef60); 0x0054dc0d -> Entity_NPC::projectile_helper (0x006bec40); 0x0054e4f8 -> Isaac::genrand_int32 (0x006eef60); 0x0054e8aa -> Isaac::genrand_int32 (0x006eef60); 0x0054e9ee -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0054e9f3 -> Isaac::genrand_int32 (0x006eef60); 0x0054ea15 -> entity_spawn_relay (0x00428b20); 0x0054ea60 -> Isaac::genrand_int32 (0x006eef60); 0x0054ea7d -> entity_spawn_relay (0x00428b20); 0x0054eac7 -> Isaac::genrand_int32 (0x006eef60)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x0054eb80`

- C: [AI_0054eb80_0054eb80.c](ghidra-export/AI_0054eb80_0054eb80.c)
- ASM: [AI_0054eb80_0054eb80.asm](ghidra-export/AI_0054eb80_0054eb80.asm)
- Types: `881`
- Identities: `881.0.0, 881.1.0`
- Incoming calls: 1; outgoing calls: 38
- State writes: `0x0054eca9 -> State 3; 0x0054ef63 -> State 3; 0x0054f3e1 -> State 6`
- StateFrame writes: `0x0054ecdb; 0x0054ef93; 0x0054f080; 0x0054f2da`
- Shared attack/spawn calls: `0x0054ecb3 -> Isaac::genrand_int32 (0x006eef60); 0x0054ee6e -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0054ef77 -> Isaac::genrand_int32 (0x006eef60); 0x0054f0d4 -> Isaac::genrand_int32 (0x006eef60); 0x0054f228 -> Isaac::genrand_int32 (0x006eef60); 0x0054f34c -> Entity_NPC::projectile_helper (0x006bec40); 0x0054f521 -> Isaac::genrand_int32 (0x006eef60); 0x0054f549 -> Entity::Create dispatcher (0x006fe410)`

### `0x005505c0`

- C: [AI_005505c0_005505c0.c](ghidra-export/AI_005505c0_005505c0.c)
- ASM: [AI_005505c0_005505c0.asm](ghidra-export/AI_005505c0_005505c0.asm)
- Types: `884`
- Identities: `884.0.0`
- Incoming calls: 1; outgoing calls: 56
- State writes: `0x005508a4 -> State 3; 0x005511a4 -> State 3`
- Shared attack/spawn calls: `0x0055077e -> Isaac::genrand_int32 (0x006eef60); 0x00550822 -> Isaac::genrand_int32 (0x006eef60); 0x005508d9 -> Entity_NPC::projectile_helper (0x006bec40); 0x00550aac -> Isaac::genrand_int32 (0x006eef60); 0x00550acf -> Isaac::genrand_int32 (0x006eef60); 0x00550ad9 -> Isaac::genrand_int32 (0x006eef60); 0x00550caf -> Isaac::genrand_int32 (0x006eef60); 0x00550d73 -> Isaac::genrand_int32 (0x006eef60); 0x00550dc2 -> Isaac::genrand_int32 (0x006eef60); 0x00550ebc -> Isaac::genrand_int32 (0x006eef60); 0x00550f07 -> Isaac::genrand_int32 (0x006eef60); 0x00550ffd -> Isaac::genrand_int32 (0x006eef60); 0x00551044 -> Isaac::genrand_int32 (0x006eef60); 0x00551219 -> Isaac::genrand_int32 (0x006eef60); 0x00551253 -> Isaac::genrand_int32 (0x006eef60); 0x005512c6 -> entity_spawn_relay (0x00428b20); 0x005512db -> Isaac::genrand_int32 (0x006eef60); 0x00551314 -> Isaac::genrand_int32 (0x006eef60)`

### `0x005513a0`

- C: [AI_005513a0_005513a0.c](ghidra-export/AI_005513a0_005513a0.c)
- ASM: [AI_005513a0_005513a0.asm](ghidra-export/AI_005513a0_005513a0.asm)
- Types: `857`
- Identities: `857.0.0`
- Incoming calls: 1; outgoing calls: 3
- State writes: `0x0055140f -> State 3; 0x0055159e -> State dynamic; 0x0055179f -> State 6; 0x00551c85 -> State 3`
- StateFrame writes: `0x00551419; 0x00551471; 0x00551c8f`
- Shared attack/spawn calls: `0x00551ce3 -> Entity_NPC::FireBossProjectiles (0x006ccdd0)`

### `0x00551d30`

- C: [AI_00551d30_00551d30.c](ghidra-export/AI_00551d30_00551d30.c)
- ASM: [AI_00551d30_00551d30.asm](ghidra-export/AI_00551d30_00551d30.asm)
- Types: `960`
- Identities: `960.0.0, 960.1.0, 960.2.0, 960.3.0, 960.4.0`
- Incoming calls: 1; outgoing calls: 13
- State writes: `0x0055219d -> State 3`
- Invincible writes: `0x00552263 = 1`
- Shared attack/spawn calls: `0x00551ff3 -> entity_spawn_relay (0x00428b20)`

### `0x005522d0`

- C: [AI_005522d0_005522d0.c](ghidra-export/AI_005522d0_005522d0.c)
- ASM: [AI_005522d0_005522d0.asm](ghidra-export/AI_005522d0_005522d0.asm)
- Types: `888`
- Identities: `888.0.0`
- Incoming calls: 1; outgoing calls: 1
- State writes: `0x00552327 -> State 4; 0x0055265a -> State 8; 0x0055285b -> State 9; 0x00552ce5 -> State 4`

### `0x00552d30`

- C: [AI_00552d30_00552d30.c](ghidra-export/AI_00552d30_00552d30.c)
- ASM: [AI_00552d30_00552d30.asm](ghidra-export/AI_00552d30_00552d30.asm)
- Types: `802`
- Identities: `802.0.0, 802.1.0`
- Incoming calls: 1; outgoing calls: 58
- State writes: `0x00552f40 -> State 3; 0x00552f5f -> State 3; 0x00553469 -> State 13; 0x005535f5 -> State 8; 0x005537b4 -> State 3; 0x00554201 -> State 3`
- StateFrame writes: `0x00552f9d; 0x005537de; 0x00553881; 0x00553c26; 0x00553ffa; 0x0055400d; 0x00554227`
- Shared attack/spawn calls: `0x00552ff8 -> Entity_NPC::projectile_helper (0x006bec40); 0x00553049 -> Isaac::genrand_int32 (0x006eef60); 0x00553069 -> Isaac::genrand_int32 (0x006eef60); 0x00553251 -> Isaac::genrand_int32 (0x006eef60); 0x0055325a -> Isaac::genrand_int32 (0x006eef60); 0x005534b5 -> Isaac::genrand_int32 (0x006eef60); 0x00553790 -> Entity::Create dispatcher (0x006fe410); 0x005540a3 -> Isaac::genrand_int32 (0x006eef60); 0x00554103 -> Isaac::genrand_int32 (0x006eef60); 0x0055410c -> Isaac::genrand_int32 (0x006eef60)`

### `0x005542e0`

- C: [AI_005542e0_005542e0.c](ghidra-export/AI_005542e0_005542e0.c)
- ASM: [AI_005542e0_005542e0.asm](ghidra-export/AI_005542e0_005542e0.asm)
- Types: `866`
- Identities: `866.0.0, 866.0.1, 866.1.0`
- Incoming calls: 1; outgoing calls: 150
- State writes: `0x00554845 -> State 3; 0x00554bc8 -> State 13; 0x00554d3a -> State dynamic; 0x005551f7 -> State 8; 0x0055549d -> State 3; 0x005555c5 -> State 9; 0x00555ac4 -> State 3; 0x00555b02 -> State 3; 0x00555f79 -> State 8; 0x00556190 -> State 16; 0x005561d5 -> State 3`
- StateFrame writes: `0x00555201; 0x0055536e; 0x00555471; 0x005555cf; 0x00555962; 0x00555c18; 0x00555dd9; 0x00555f83; 0x00556170; 0x005561e2`
- Invincible writes: `0x00554d75 = 1; 0x005561f6 = 1`
- Shared attack/spawn calls: `0x00554450 -> damage_filter (0x006ac560); 0x00554668 -> Isaac::genrand_int32 (0x006eef60); 0x0055468f -> entity_spawn_relay (0x00428b20); 0x005548f2 -> Isaac::genrand_int32 (0x006eef60); 0x00554944 -> entity_spawn_relay (0x00428b20); 0x00554a0d -> Isaac::genrand_int32 (0x006eef60); 0x00554a5f -> entity_spawn_relay (0x00428b20); 0x00554c80 -> Isaac::genrand_int32 (0x006eef60); 0x00554ca1 -> entity_spawn_relay (0x00428b20); 0x00554de8 -> Entity_NPC::projectile_helper (0x006bec40); 0x0055546c -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0055575f -> Isaac::genrand_int32 (0x006eef60); 0x0055579e -> Isaac::genrand_int32 (0x006eef60); 0x00555806 -> entity_spawn_relay (0x00428b20); 0x0055589b -> Isaac::genrand_int32 (0x006eef60); 0x005558d8 -> Isaac::genrand_int32 (0x006eef60); 0x005558f4 -> Isaac::genrand_int32 (0x006eef60); 0x00555b51 -> Entity_NPC::projectile_helper (0x006bec40); 0x00555e29 -> Isaac::genrand_int32 (0x006eef60); 0x00555e80 -> entity_spawn_relay (0x00428b20)`

### `0x005562b0`

- C: [AI_005562b0_005562b0.c](ghidra-export/AI_005562b0_005562b0.c)
- ASM: [AI_005562b0_005562b0.asm](ghidra-export/AI_005562b0_005562b0.asm)
- Types: `835`
- Identities: `835.0.0, 835.10.0`
- Incoming calls: 1; outgoing calls: 92
- State writes: `0x00556baa -> State 4; 0x00556f13 -> State 4; 0x005572c4 -> State 8; 0x00557365 -> State 4`
- StateFrame writes: `0x00556f1d; 0x0055734c`
- Invincible writes: `0x00556b99 = 1`
- Shared attack/spawn calls: `0x005563ab -> Entity_NPC::projectile_helper (0x006bec40); 0x005566ce -> Isaac::genrand_int32 (0x006eef60); 0x00556996 -> Isaac::genrand_int32 (0x006eef60); 0x00556abf -> Isaac::genrand_int32 (0x006eef60); 0x00556ef6 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00556f30 -> Isaac::genrand_int32 (0x006eef60); 0x00557237 -> Isaac::genrand_int32 (0x006eef60); 0x0055728f -> Isaac::genrand_int32 (0x006eef60); 0x00557384 -> Isaac::genrand_int32 (0x006eef60); 0x00557419 -> entity_spawn_relay (0x00428b20)`

### `0x005586b0`

- C: [AI_005586b0_005586b0.c](ghidra-export/AI_005586b0_005586b0.c)
- ASM: [AI_005586b0_005586b0.asm](ghidra-export/AI_005586b0_005586b0.asm)
- Types: `808`
- Identities: `808.0.0`
- Incoming calls: 1; outgoing calls: 2
- State writes: `0x005588d9 -> State 3; 0x00558a49 -> State 8; 0x00558c68 -> State 3; 0x00558d3b -> State 3`
- StateFrame writes: `0x00558afe`

### `0x005593c0`

- C: [AI_005593c0_005593c0.c](ghidra-export/AI_005593c0_005593c0.c)
- ASM: [AI_005593c0_005593c0.asm](ghidra-export/AI_005593c0_005593c0.asm)
- Types: `838`
- Identities: `838.0.0`
- Incoming calls: 1; outgoing calls: 29
- State writes: `0x00559c44 -> State 8; 0x00559e7d -> State 3; 0x00559f65 -> State 3`
- Shared attack/spawn calls: `0x00559bdc -> Isaac::genrand_int32 (0x006eef60); 0x00559c03 -> Entity_NPC::projectile_helper (0x006bec40); 0x00559e65 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x0055a010`

- C: [AI_0055a010_0055a010.c](ghidra-export/AI_0055a010_0055a010.c)
- ASM: [AI_0055a010_0055a010.asm](ghidra-export/AI_0055a010_0055a010.asm)
- Types: `813`
- Identities: `813.0.0`
- Incoming calls: 1; outgoing calls: 17
- State writes: `0x0055a081 -> State 4; 0x0055a2a0 -> State 8; 0x0055a392 -> State 16`
- StateFrame writes: `0x0055a08b; 0x0055a296; 0x0055a372`
- Shared attack/spawn calls: `0x0055a4ce -> Isaac::genrand_int32 (0x006eef60); 0x0055a4d7 -> Isaac::genrand_int32 (0x006eef60); 0x0055a769 -> Isaac::genrand_int32 (0x006eef60); 0x0055a793 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0055a798 -> Isaac::genrand_int32 (0x006eef60); 0x0055a7e8 -> entity_spawn_relay (0x00428b20)`

### `0x0055ad20`

- C: [AI_0055ad20_0055ad20.c](ghidra-export/AI_0055ad20_0055ad20.c)
- ASM: [AI_0055ad20_0055ad20.asm](ghidra-export/AI_0055ad20_0055ad20.asm)
- Types: `806`
- Identities: `806.0.0`
- Incoming calls: 1; outgoing calls: 48
- State writes: `0x0055add8 -> State 4; 0x0055aff5 -> State 8; 0x0055b6ca -> State 4`
- StateFrame writes: `0x0055ade2; 0x0055ae28; 0x0055afff; 0x0055b6d4`
- Shared attack/spawn calls: `0x0055af9b -> Isaac::genrand_int32 (0x006eef60); 0x0055b0e2 -> Entity_NPC::projectile_helper (0x006bec40); 0x0055b11e -> Isaac::genrand_int32 (0x006eef60); 0x0055b237 -> Isaac::genrand_int32 (0x006eef60); 0x0055b2f8 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0055b2fd -> Isaac::genrand_int32 (0x006eef60); 0x0055b3c5 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x0055b3dd -> Isaac::genrand_int32 (0x006eef60); 0x0055b409 -> entity_spawn_relay (0x00428b20); 0x0055b480 -> Isaac::genrand_int32 (0x006eef60); 0x0055b56a -> Isaac::genrand_int32 (0x006eef60); 0x0055b58f -> entity_spawn_relay (0x00428b20); 0x0055b5ca -> Isaac::genrand_int32 (0x006eef60)`

### `0x0055b740`

- C: [AI_0055b740_0055b740.c](ghidra-export/AI_0055b740_0055b740.c)
- ASM: [AI_0055b740_0055b740.asm](ghidra-export/AI_0055b740_0055b740.asm)
- Types: `810`
- Identities: `810.0.0`
- Incoming calls: 1; outgoing calls: 49
- State writes: `0x0055b880 -> State 3; 0x0055b995 -> State 3; 0x0055c43a -> State 7; 0x0055c48b -> State 3`
- Shared attack/spawn calls: `0x0055ba34 -> Isaac::genrand_int32 (0x006eef60); 0x0055bab8 -> Isaac::genrand_int32 (0x006eef60); 0x0055bad8 -> Isaac::genrand_int32 (0x006eef60); 0x0055bb1f -> Isaac::genrand_int32 (0x006eef60); 0x0055bb28 -> Isaac::genrand_int32 (0x006eef60); 0x0055c247 -> Isaac::genrand_int32 (0x006eef60); 0x0055c267 -> Entity_NPC::projectile_helper (0x006bec40); 0x0055c33c -> Isaac::genrand_int32 (0x006eef60)`

### `0x0055c810`

- C: [AI_0055c810_0055c810.c](ghidra-export/AI_0055c810_0055c810.c)
- ASM: [AI_0055c810_0055c810.asm](ghidra-export/AI_0055c810_0055c810.asm)
- Types: `814`
- Identities: `814.0.0`
- Incoming calls: 1; outgoing calls: 29
- State writes: `0x0055ca61 -> State 4; 0x0055caa3 -> State 4; 0x0055ce9c -> State 3`
- Shared attack/spawn calls: `0x0055c9cf -> Isaac::genrand_int32 (0x006eef60); 0x0055c9fb -> Isaac::genrand_int32 (0x006eef60); 0x0055ca70 -> Isaac::genrand_int32 (0x006eef60); 0x0055ce16 -> Isaac::genrand_int32 (0x006eef60)`

### `0x0055d230`

- C: [AI_0055d230_0055d230.c](ghidra-export/AI_0055d230_0055d230.c)
- ASM: [AI_0055d230_0055d230.asm](ghidra-export/AI_0055d230_0055d230.asm)
- Types: `816`
- Identities: `816.0.0, 816.1.0`
- Incoming calls: 1; outgoing calls: 41
- State writes: `0x0055d356 -> State 3; 0x0055d3e2 -> State 8; 0x0055d439 -> State 2; 0x0055d57a -> State 16; 0x0055d70a -> State 3; 0x0055d728 -> State 3; 0x0055d833 -> State 8; 0x0055dee2 -> State 13; 0x0055dfb0 -> State 9; 0x0055e039 -> State 3; 0x0055e43a -> State 3; 0x0055e7aa -> State 3; 0x0055ecd0 -> State 9; 0x0055f5b7 -> State 10; 0x0055f688 -> State 10; 0x0055f7e9 -> State 3; 0x0055f87c -> State 4`
- StateFrame writes: `0x0055d3ad; 0x0055d46e; 0x0055d5a5; 0x0055d602; 0x0055d61a; 0x0055d7e7; 0x0055d7ff; 0x0055def5; 0x0055e8e7; 0x0055ed0b`
- Shared attack/spawn calls: `0x0055f067 -> Entity_NPC::projectile_helper (0x006bec40); 0x0055f5d5 -> Entity_NPC::projectile_helper (0x006bec40); 0x0055f617 -> Isaac::genrand_int32 (0x006eef60)`

### `0x0055fb60`

- C: [AI_0055fb60_0055fb60.c](ghidra-export/AI_0055fb60_0055fb60.c)
- ASM: [AI_0055fb60_0055fb60.asm](ghidra-export/AI_0055fb60_0055fb60.asm)
- Types: `812`
- Identities: `812.0.0, 812.1.0`
- Incoming calls: 1; outgoing calls: 36
- State writes: `0x0055fddc -> State 16; 0x0055fe34 -> State 3`
- StateFrame writes: `0x0055fdbe; 0x00560111; 0x00560356; 0x0056035e`
- Shared attack/spawn calls: `0x0055fced -> Isaac::genrand_int32 (0x006eef60); 0x0055ff3b -> Isaac::genrand_int32 (0x006eef60); 0x0055ffab -> Entity_NPC::projectile_helper (0x006bec40); 0x0056047a -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00560510 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00560570`

- C: [AI_00560570_00560570.c](ghidra-export/AI_00560570_00560570.c)
- ASM: [AI_00560570_00560570.asm](ghidra-export/AI_00560570_00560570.asm)
- Types: `811`
- Identities: `811.0.0, 811.0.1, 811.0.2, 811.0.3, 811.0.4, 811.0.5, 811.0.6`
- Incoming calls: 1; outgoing calls: 3
- State writes: `0x0056064d -> State 3; 0x00560683 -> State 4; 0x005607f7 -> State 8; 0x0056099b -> State 4`
- StateFrame writes: `0x0056073d; 0x0056085f`
- Invincible writes: `0x00560657 = 1; 0x00560835 = 0`

### `0x00560ca0`

- C: [AI_00560ca0_00560ca0.c](ghidra-export/AI_00560ca0_00560ca0.c)
- ASM: [AI_00560ca0_00560ca0.asm](ghidra-export/AI_00560ca0_00560ca0.asm)
- Types: `873`
- Identities: `873.0.0`
- Incoming calls: 1; outgoing calls: 43
- State writes: `0x00560e30 -> State 4; 0x00560f43 -> State 8; 0x00560f69 -> State 9; 0x00560fae -> State 8; 0x005612fe -> State 4; 0x005614c0 -> State 4`
- Shared attack/spawn calls: `0x00560d26 -> Isaac::genrand_int32 (0x006eef60); 0x00560d60 -> Isaac::genrand_int32 (0x006eef60); 0x00560df5 -> entity_spawn_relay (0x00428b20); 0x00560ed8 -> Entity_NPC::projectile_helper (0x006bec40); 0x00560f57 -> Isaac::genrand_int32 (0x006eef60); 0x00560f7d -> Isaac::genrand_int32 (0x006eef60); 0x00560f98 -> Isaac::genrand_int32 (0x006eef60); 0x00561047 -> Entity_NPC::projectile_helper (0x006bec40); 0x00561077 -> Isaac::genrand_int32 (0x006eef60); 0x005610c6 -> Isaac::genrand_int32 (0x006eef60); 0x0056112c -> entity_spawn_relay (0x00428b20); 0x005611e4 -> Isaac::genrand_int32 (0x006eef60); 0x00561201 -> entity_spawn_relay (0x00428b20); 0x00561208 -> Isaac::genrand_int32 (0x006eef60); 0x00561245 -> Isaac::genrand_int32 (0x006eef60); 0x00561266 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00561a20`

- C: [AI_00561a20_00561a20.c](ghidra-export/AI_00561a20_00561a20.c)
- ASM: [AI_00561a20_00561a20.asm](ghidra-export/AI_00561a20_00561a20.asm)
- Types: `874`
- Identities: `874.0.0`
- Incoming calls: 1; outgoing calls: 38
- State writes: `0x00561a59 -> State 4; 0x00561cd2 -> State 8; 0x00562092 -> State 4`
- Shared attack/spawn calls: `0x00561a77 -> Entity_NPC::projectile_helper (0x006bec40); 0x00561ca9 -> Isaac::genrand_int32 (0x006eef60); 0x00561d37 -> Isaac::genrand_int32 (0x006eef60); 0x00561ddf -> Isaac::genrand_int32 (0x006eef60); 0x00561e3c -> Isaac::genrand_int32 (0x006eef60); 0x00561e63 -> entity_spawn_relay (0x00428b20); 0x00561e83 -> Isaac::genrand_int32 (0x006eef60); 0x00561ea2 -> entity_spawn_relay (0x00428b20); 0x00561ea9 -> Isaac::genrand_int32 (0x006eef60); 0x00562260 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00562290`

- C: [AI_00562290_00562290.c](ghidra-export/AI_00562290_00562290.c)
- ASM: [AI_00562290_00562290.asm](ghidra-export/AI_00562290_00562290.asm)
- Types: `875`
- Identities: `875.0.0`
- Incoming calls: 1; outgoing calls: 44
- State writes: `0x00562b03 -> State 3; 0x00562bb1 -> State 8; 0x00562cdc -> State 3`
- Shared attack/spawn calls: `0x0056242d -> Isaac::genrand_int32 (0x006eef60); 0x005625b1 -> Isaac::genrand_int32 (0x006eef60); 0x005625ff -> entity_spawn_relay (0x00428b20); 0x00562700 -> Isaac::genrand_int32 (0x006eef60); 0x00562707 -> Isaac::genrand_int32 (0x006eef60); 0x005627ab -> Isaac::genrand_int32 (0x006eef60); 0x00562867 -> entity_spawn_relay (0x00428b20); 0x0056286e -> Isaac::genrand_int32 (0x006eef60)`
- Field status: no direct pseudo-C field line matched; inspect ASM and indirect state.

### `0x00562f00`

- C: [AI_00562f00_00562f00.c](ghidra-export/AI_00562f00_00562f00.c)
- ASM: [AI_00562f00_00562f00.asm](ghidra-export/AI_00562f00_00562f00.asm)
- Types: `876`
- Identities: `876.0.0, 876.1.0`
- Incoming calls: 1; outgoing calls: 23
- State writes: `0x00562fb5 -> State 4; 0x005634fe -> State 4; 0x00563c5a -> State 16`
- StateFrame writes: `0x00562fc8`
- Shared attack/spawn calls: `0x005639a4 -> Isaac::genrand_int32 (0x006eef60); 0x005639c8 -> Entity::Create dispatcher (0x006fe410); 0x005639cf -> Isaac::genrand_int32 (0x006eef60); 0x00563a2e -> Isaac::genrand_int32 (0x006eef60); 0x00563a40 -> Isaac::genrand_int32 (0x006eef60); 0x00563cd0 -> Entity::Create dispatcher (0x006fe410)`

### `0x00563da0`

- C: [AI_00563da0_00563da0.c](ghidra-export/AI_00563da0_00563da0.c)
- ASM: [AI_00563da0_00563da0.asm](ghidra-export/AI_00563da0_00563da0.asm)
- Types: `879`
- Identities: `879.0.0`
- Incoming calls: 1; outgoing calls: 81
- State writes: `0x00564461 -> State 4; 0x00564a5c -> State 8; 0x00564e21 -> State 4`
- StateFrame writes: `0x00563fa0; 0x0056446b; 0x00564cf3`
- Shared attack/spawn calls: `0x00563e80 -> Isaac::genrand_int32 (0x006eef60); 0x00563fe4 -> Isaac::genrand_int32 (0x006eef60); 0x00564006 -> entity_spawn_relay (0x00428b20); 0x00564080 -> Isaac::genrand_int32 (0x006eef60); 0x005640f7 -> Isaac::genrand_int32 (0x006eef60); 0x00564174 -> Isaac::genrand_int32 (0x006eef60); 0x00564199 -> entity_spawn_relay (0x00428b20); 0x005641da -> Isaac::genrand_int32 (0x006eef60); 0x0056422f -> Isaac::genrand_int32 (0x006eef60); 0x00564252 -> entity_spawn_relay (0x00428b20); 0x005642e0 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x005642ff -> Isaac::genrand_int32 (0x006eef60); 0x00564366 -> Isaac::genrand_int32 (0x006eef60); 0x0056447e -> Isaac::genrand_int32 (0x006eef60); 0x00564668 -> Isaac::genrand_int32 (0x006eef60); 0x0056467e -> Isaac::genrand_int32 (0x006eef60); 0x00564921 -> Isaac::genrand_int32 (0x006eef60); 0x00564995 -> Isaac::genrand_int32 (0x006eef60); 0x005649cf -> Isaac::genrand_int32 (0x006eef60); 0x005649e6 -> Isaac::genrand_int32 (0x006eef60); 0x00564afd -> Isaac::genrand_int32 (0x006eef60); 0x00564d38 -> Isaac::genrand_int32 (0x006eef60); 0x00564d5e -> entity_spawn_relay (0x00428b20); 0x00564dad -> Isaac::genrand_int32 (0x006eef60); 0x00564dce -> entity_spawn_relay (0x00428b20); 0x00564e64 -> Isaac::genrand_int32 (0x006eef60); 0x00564e85 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00564f30`

- C: [AI_00564f30_00564f30.c](ghidra-export/AI_00564f30_00564f30.c)
- ASM: [AI_00564f30_00564f30.asm](ghidra-export/AI_00564f30_00564f30.asm)
- Types: `815`
- Identities: `815.0.0`
- Incoming calls: 1; outgoing calls: 19
- State writes: `0x005655ae -> State 6`
- Shared attack/spawn calls: `0x00564fb3 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00565bc0`

- C: [AI_00565bc0_00565bc0.c](ghidra-export/AI_00565bc0_00565bc0.c)
- ASM: [AI_00565bc0_00565bc0.asm](ghidra-export/AI_00565bc0_00565bc0.asm)
- Types: `837`
- Identities: `837.0.0`
- Incoming calls: 1; outgoing calls: 8
- State writes: `0x00565cd6 -> State 8; 0x00565d7a -> State 3`
- StateFrame writes: `0x00565c70`
- Shared attack/spawn calls: `0x00565bfc -> Isaac::genrand_int32 (0x006eef60); 0x00565c24 -> Entity::Create dispatcher (0x006fe410)`

### `0x0056ffa0`

- C: [AI_0056ffa0_0056ffa0.c](ghidra-export/AI_0056ffa0_0056ffa0.c)
- ASM: [AI_0056ffa0_0056ffa0.asm](ghidra-export/AI_0056ffa0_0056ffa0.asm)
- Types: `867`
- Identities: `867.0.0`
- Incoming calls: 1; outgoing calls: 71
- State writes: `0x005701c5 -> State 5; 0x00570335 -> State 16; 0x0057043b -> State 3; 0x00570552 -> State 2; 0x00570735 -> State 3; 0x00570b15 -> State 8; 0x00570c09 -> State 3`
- StateFrame writes: `0x005701cf; 0x00570466; 0x00570b1f; 0x00570f14; 0x0057105d; 0x005710c7; 0x005710f7`
- Invincible writes: `0x0057031e = 1`
- Shared attack/spawn calls: `0x00570064 -> Isaac::genrand_int32 (0x006eef60); 0x00570093 -> Isaac::genrand_int32 (0x006eef60); 0x005700c6 -> entity_spawn_relay (0x00428b20); 0x005700cd -> Isaac::genrand_int32 (0x006eef60); 0x00570125 -> Isaac::genrand_int32 (0x006eef60); 0x0057094c -> Entity_NPC::projectile_helper (0x006bec40); 0x00570d8b -> Isaac::genrand_int32 (0x006eef60); 0x00570dc3 -> Isaac::genrand_int32 (0x006eef60); 0x00570e1f -> entity_spawn_relay (0x00428b20); 0x00570e56 -> Isaac::genrand_int32 (0x006eef60); 0x00570e93 -> Isaac::genrand_int32 (0x006eef60); 0x00570eaf -> Isaac::genrand_int32 (0x006eef60); 0x00570f52 -> Entity_NPC::projectile_helper (0x006bec40)`

### `0x00571280`

- C: [AI_00571280_00571280.c](ghidra-export/AI_00571280_00571280.c)
- ASM: [AI_00571280_00571280.asm](ghidra-export/AI_00571280_00571280.asm)
- Types: `245`
- Identities: `245.0.0`
- Incoming calls: 1; outgoing calls: 95
- State writes: `0x00571792 -> State 3`
- Shared attack/spawn calls: `0x00571709 -> Isaac::genrand_int32 (0x006eef60); 0x0057172b -> entity_spawn_relay (0x00428b20); 0x00571bf2 -> Isaac::genrand_int32 (0x006eef60); 0x00571c29 -> Isaac::genrand_int32 (0x006eef60); 0x00571c65 -> Isaac::genrand_int32 (0x006eef60); 0x00571e47 -> Isaac::genrand_int32 (0x006eef60); 0x00571e85 -> Isaac::genrand_int32 (0x006eef60); 0x00571ee3 -> Isaac::genrand_int32 (0x006eef60); 0x00571f95 -> Isaac::genrand_int32 (0x006eef60); 0x00571fb8 -> entity_spawn_relay (0x00428b20); 0x00571fe6 -> Isaac::genrand_int32 (0x006eef60); 0x00572023 -> Isaac::genrand_int32 (0x006eef60); 0x0057207b -> Isaac::genrand_int32 (0x006eef60); 0x00572082 -> Isaac::genrand_int32 (0x006eef60); 0x005720a4 -> Isaac::genrand_int32 (0x006eef60); 0x00572138 -> entity_spawn_relay (0x00428b20); 0x00572343 -> Isaac::genrand_int32 (0x006eef60); 0x0057234e -> Isaac::genrand_int32 (0x006eef60); 0x00572369 -> Isaac::genrand_int32 (0x006eef60); 0x005723ef -> entity_spawn_relay (0x00428b20); 0x00572530 -> Isaac::genrand_int32 (0x006eef60); 0x00572553 -> entity_spawn_relay (0x00428b20); 0x00572679 -> Isaac::genrand_int32 (0x006eef60); 0x0057269c -> entity_spawn_relay (0x00428b20); 0x005726aa -> Isaac::genrand_int32 (0x006eef60)`

### `0x005769b0`

- C: [AI_005769b0_005769b0.c](ghidra-export/AI_005769b0_005769b0.c)
- ASM: [AI_005769b0_005769b0.asm](ghidra-export/AI_005769b0_005769b0.asm)
- Types: `919`
- Identities: `919.0.0, 919.1.0`
- Incoming calls: 1; outgoing calls: 117
- State writes: `0x00576d0e -> State 14; 0x00576d6b -> State 15; 0x00576df2 -> State 3; 0x005770bd -> State dynamic; 0x005770df -> State 8; 0x00577184 -> State 13; 0x005773eb -> State 3; 0x00577fab -> State 3; 0x00578097 -> State 3; 0x00578454 -> State dynamic`
- StateFrame writes: `0x00576bb0; 0x00576d75; 0x005770f5; 0x005771b0; 0x005772f3; 0x005773f5; 0x00577458; 0x00577502; 0x00577534; 0x0057756c; 0x005779d8; 0x00577f86; 0x00578152; 0x00578464`
- Shared attack/spawn calls: `0x00576bea -> Isaac::genrand_int32 (0x006eef60); 0x00576c0c -> entity_spawn_relay (0x00428b20); 0x00576e86 -> Isaac::genrand_int32 (0x006eef60); 0x00577119 -> Isaac::genrand_int32 (0x006eef60); 0x005773ff -> Isaac::genrand_int32 (0x006eef60); 0x00577b14 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00577bda -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00577caa -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00577d6e -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x00578037 -> Isaac::genrand_int32 (0x006eef60); 0x00578059 -> entity_spawn_relay (0x00428b20); 0x00578313 -> Isaac::genrand_int32 (0x006eef60); 0x00578365 -> entity_spawn_relay (0x00428b20); 0x00578371 -> Isaac::genrand_int32 (0x006eef60); 0x005783c3 -> entity_spawn_relay (0x00428b20)`

### `0x00578a70`

- C: [AI_00578a70_00578a70.c](ghidra-export/AI_00578a70_00578a70.c)
- ASM: [AI_00578a70_00578a70.asm](ghidra-export/AI_00578a70_00578a70.asm)
- Types: `902`
- Identities: `902.0.0`
- Incoming calls: 1; outgoing calls: 61
- State writes: `0x00578af9 -> State 3; 0x00578b60 -> State 8; 0x00578bfc -> State dynamic; 0x00578e5a -> State 3; 0x00579662 -> State 3`
- Shared attack/spawn calls: `0x00578b26 -> Isaac::genrand_int32 (0x006eef60); 0x00578b48 -> Isaac::genrand_int32 (0x006eef60); 0x00578bca -> Isaac::genrand_int32 (0x006eef60); 0x00579027 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x0057913c -> Isaac::genrand_int32 (0x006eef60); 0x0057915b -> entity_spawn_relay (0x00428b20); 0x005791bf -> Isaac::genrand_int32 (0x006eef60); 0x005791e5 -> entity_spawn_relay (0x00428b20); 0x005791ea -> Isaac::genrand_int32 (0x006eef60); 0x00579210 -> entity_spawn_relay (0x00428b20); 0x00579364 -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x00579369 -> Isaac::genrand_int32 (0x006eef60); 0x0057938c -> entity_spawn_relay (0x00428b20); 0x005795f0 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00579890`

- C: [AI_00579890_00579890.c](ghidra-export/AI_00579890_00579890.c)
- ASM: [AI_00579890_00579890.asm](ghidra-export/AI_00579890_00579890.asm)
- Types: `900`
- Identities: `900.0.0`
- Incoming calls: 1; outgoing calls: 51
- Shared attack/spawn calls: `0x00579a35 -> Isaac::genrand_int32 (0x006eef60); 0x00579a5a -> Entity::Create dispatcher (0x006fe410); 0x00579a7a -> Isaac::genrand_int32 (0x006eef60); 0x00579a99 -> Entity::Create dispatcher (0x006fe410); 0x00579aa5 -> Isaac::genrand_int32 (0x006eef60); 0x00579ac2 -> Isaac::genrand_int32 (0x006eef60); 0x00579b4e -> Isaac::genrand_int32 (0x006eef60); 0x00579b85 -> Isaac::genrand_int32 (0x006eef60); 0x00579c00 -> Isaac::genrand_int32 (0x006eef60); 0x00579c75 -> Isaac::genrand_int32 (0x006eef60); 0x0057a86f -> Isaac::genrand_int32 (0x006eef60); 0x0057bc3c -> Isaac::genrand_int32 (0x006eef60); 0x0057bc75 -> Isaac::genrand_int32 (0x006eef60)`

### `0x00591460`

- C: [AI_00591460_00591460.c](ghidra-export/AI_00591460_00591460.c)
- ASM: [AI_00591460_00591460.asm](ghidra-export/AI_00591460_00591460.asm)
- Types: `904`
- Identities: `904.0.0, 904.1.0, 904.10.0`
- Incoming calls: 1; outgoing calls: 30
- State writes: `0x00591561 -> State 3`
- Shared attack/spawn calls: `0x005915e0 -> Isaac::genrand_int32 (0x006eef60); 0x0059163f -> Isaac::genrand_int32 (0x006eef60); 0x005916a3 -> Isaac::genrand_int32 (0x006eef60); 0x005916fb -> entity_spawn_relay (0x00428b20); 0x0059175e -> entity_spawn_relay (0x00428b20); 0x00591b04 -> Entity_NPC::FireProjectiles (0x006cb2e0)`

### `0x00591cc0`

- C: [AI_00591cc0_00591cc0.c](ghidra-export/AI_00591cc0_00591cc0.c)
- ASM: [AI_00591cc0_00591cc0.asm](ghidra-export/AI_00591cc0_00591cc0.asm)
- Types: `966`
- Identities: `966.0.0`
- Incoming calls: 1; outgoing calls: 9
- State writes: `0x00591f68 -> State 3`

### `0x0059c830`

- C: [AI_0059c830_0059c830.c](ghidra-export/AI_0059c830_0059c830.c)
- ASM: [AI_0059c830_0059c830.asm](ghidra-export/AI_0059c830_0059c830.asm)
- Types: `918`
- Identities: `918.0.0`
- Incoming calls: 1; outgoing calls: 76
- State writes: `0x0059cd83 -> State 8; 0x0059dcba -> State 16; 0x0059e15c -> State 4`
- Invincible writes: `0x0059dcc4 = 1`
- Shared attack/spawn calls: `0x0059cad0 -> Entity_NPC::projectile_helper (0x006bec40); 0x0059cd68 -> Isaac::genrand_int32 (0x006eef60); 0x0059cda2 -> Isaac::genrand_int32 (0x006eef60); 0x0059ce7f -> Entity_NPC::projectile_helper (0x006bec40); 0x0059da41 -> Isaac::genrand_int32 (0x006eef60); 0x0059de35 -> Isaac::genrand_int32 (0x006eef60); 0x0059de3e -> Isaac::genrand_int32 (0x006eef60); 0x0059defb -> Isaac::genrand_int32 (0x006eef60); 0x0059df1f -> Entity::Create dispatcher (0x006fe410); 0x0059df26 -> Isaac::genrand_int32 (0x006eef60); 0x0059e104 -> Isaac::genrand_int32 (0x006eef60)`

### `0x0059edb0`

- C: [AI_0059edb0_0059edb0.c](ghidra-export/AI_0059edb0_0059edb0.c)
- ASM: [AI_0059edb0_0059edb0.asm](ghidra-export/AI_0059edb0_0059edb0.asm)
- Types: `406`
- Identities: `406.0.0, 406.1.0`
- Incoming calls: 1; outgoing calls: 351
- State writes: `0x0059f249 -> State 2; 0x0059f330 -> State 9000; 0x0059fcb7 -> State 4; 0x0059fd2e -> State 310; 0x0059fe8d -> State 4; 0x005a0138 -> State 3; 0x005a0685 -> State dynamic; 0x005a09d1 -> State 4; 0x005a0f5e -> State 3; 0x005a0fc1 -> State 9001; 0x005a15f6 -> State 4; 0x005a16a4 -> State 4; 0x005a1af9 -> State 3; 0x005a3562 -> State dynamic; 0x005a3893 -> State 3; 0x005a3b7b -> State 16; 0x005a3dfc -> State dynamic`
- StateFrame writes: `0x0059f364; 0x0059fc4c; 0x0059fcc1; 0x0059fd38; 0x0059fe97; 0x0059febb; 0x005a0121; 0x005a014c; 0x005a01f7; 0x005a0256; 0x005a02cc; 0x005a04b6; 0x005a068b; 0x005a0703; 0x005a09db; 0x005a0adf; 0x005a0d42; 0x005a0f34; 0x005a0f54; 0x005a15ab; 0x005a15c9; 0x005a1600; 0x005a16ae; 0x005a1ae4; 0x005a1b03; 0x005a34f4; 0x005a3528; 0x005a354e; 0x005a3568; 0x005a383e; 0x005a389d; 0x005a3ad4; 0x005a3b85; 0x005a3bb8; 0x005a3e02`
- Invincible writes: `0x005a37b5 = 1; 0x005a388c = 0; 0x005a3a4b = 1`
- Shared attack/spawn calls: `0x0059f196 -> Isaac::genrand_int32 (0x006eef60); 0x0059f1c6 -> entity_spawn_relay (0x00428b20); 0x0059fac3 -> Isaac::genrand_int32 (0x006eef60); 0x0059ff6c -> Isaac::genrand_int32 (0x006eef60); 0x005a00ca -> Entity_NPC::FireBossProjectiles (0x006ccdd0); 0x005a011c -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005a02b6 -> Isaac::genrand_int32 (0x006eef60); 0x005a052e -> Isaac::genrand_int32 (0x006eef60); 0x005a0535 -> Isaac::genrand_int32 (0x006eef60); 0x005a05d1 -> entity_spawn_relay (0x00428b20); 0x005a0735 -> Isaac::genrand_int32 (0x006eef60); 0x005a07d1 -> Isaac::genrand_int32 (0x006eef60); 0x005a07f0 -> entity_spawn_relay (0x00428b20); 0x005a084e -> Isaac::genrand_int32 (0x006eef60); 0x005a0855 -> Isaac::genrand_int32 (0x006eef60); 0x005a08ed -> entity_spawn_relay (0x00428b20); 0x005a0bc8 -> Isaac::genrand_int32 (0x006eef60); 0x005a0c48 -> Isaac::genrand_int32 (0x006eef60); 0x005a0cb5 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005a0db1 -> Isaac::genrand_int32 (0x006eef60); 0x005a0e80 -> Isaac::genrand_int32 (0x006eef60); 0x005a0eaa -> entity_spawn_relay (0x00428b20); 0x005a104a -> Isaac::genrand_int32 (0x006eef60); 0x005a1090 -> Isaac::genrand_int32 (0x006eef60); 0x005a1169 -> Isaac::genrand_int32 (0x006eef60); 0x005a119e -> entity_spawn_relay (0x00428b20); 0x005a141b -> Isaac::genrand_int32 (0x006eef60); 0x005a1561 -> Entity_NPC::FireProjectiles (0x006cb2e0); 0x005a1b3f -> Isaac::genrand_int32 (0x006eef60); 0x005a27b6 -> Entity_NPC::projectile_helper (0x006bec40); 0x005a27e8 -> Isaac::genrand_int32 (0x006eef60); 0x005a31d5 -> Isaac::genrand_int32 (0x006eef60); 0x005a3287 -> Isaac::genrand_int32 (0x006eef60); 0x005a3323 -> Isaac::genrand_int32 (0x006eef60); 0x005a3369 -> Isaac::genrand_int32 (0x006eef60); 0x005a340e -> entity_spawn_relay (0x00428b20); 0x005a345f -> Isaac::genrand_int32 (0x006eef60); 0x005a41a2 -> Isaac::genrand_int32 (0x006eef60); 0x005a41e8 -> Isaac::genrand_int32 (0x006eef60); 0x005a4269 -> Isaac::genrand_int32 (0x006eef60); 0x005a42bc -> entity_spawn_relay (0x00428b20); 0x005a4335 -> Isaac::genrand_int32 (0x006eef60); 0x005a437b -> Isaac::genrand_int32 (0x006eef60); 0x005a43f0 -> Isaac::genrand_int32 (0x006eef60); 0x005a44a5 -> entity_spawn_relay (0x00428b20); 0x005a4520 -> Isaac::genrand_int32 (0x006eef60); 0x005a452e -> Isaac::genrand_int32 (0x006eef60); 0x005a4565 -> Isaac::genrand_int32 (0x006eef60); 0x005a463e -> entity_spawn_relay (0x00428b20)`

### `0x005a4820`

- C: [AI_005a4820_005a4820.c](ghidra-export/AI_005a4820_005a4820.c)
- ASM: [AI_005a4820_005a4820.asm](ghidra-export/AI_005a4820_005a4820.asm)
- Types: `293`
- Identities: `293.0.0, 293.1.0, 293.2.0, 293.3.0`
- Incoming calls: 1; outgoing calls: 61
- State writes: `0x005a489b -> State 2; 0x005a4b2f -> State 3; 0x005a4f26 -> State 4; 0x005a5a76 -> State 16`
- StateFrame writes: `0x005a4b39; 0x005a4c88`
- Shared attack/spawn calls: `0x005a4e71 -> Isaac::genrand_int32 (0x006eef60); 0x005a5105 -> Isaac::genrand_int32 (0x006eef60); 0x005a5173 -> Isaac::genrand_int32 (0x006eef60); 0x005a518d -> entity_spawn_relay (0x00428b20); 0x005a51a0 -> Isaac::genrand_int32 (0x006eef60); 0x005a58e4 -> Isaac::genrand_int32 (0x006eef60)`

### `0x005a5b60`

- C: [AI_005a5b60_005a5b60.c](ghidra-export/AI_005a5b60_005a5b60.c)
- ASM: [AI_005a5b60_005a5b60.asm](ghidra-export/AI_005a5b60_005a5b60.asm)
- Types: `294`
- Identities: `294.0.0`
- Incoming calls: 1; outgoing calls: 47
- State writes: `0x005a5c16 -> State 2; 0x005a5f41 -> State 3; 0x005a6351 -> State 3; 0x005a6654 -> State 3; 0x005a6aa3 -> State 3`
- StateFrame writes: `0x005a61b0; 0x005a62b9; 0x005a6414; 0x005a652b; 0x005a6711; 0x005a6973`
- Invincible writes: `0x005a5ca4 = 1`
- Shared attack/spawn calls: `0x005a62fe -> Isaac::genrand_int32 (0x006eef60); 0x005a632f -> entity_spawn_relay (0x00428b20)`

### `0x005a6b80`

- C: [AI_005a6b80_005a6b80.c](ghidra-export/AI_005a6b80_005a6b80.c)
- ASM: [AI_005a6b80_005a6b80.asm](ghidra-export/AI_005a6b80_005a6b80.asm)
- Types: `299`
- Identities: `299.0.0`
- Incoming calls: 1; outgoing calls: 18
- State writes: `0x005a6cbd -> State 4; 0x005a6d61 -> State 4`
- Shared attack/spawn calls: `0x005a6ed3 -> Entity_NPC::projectile_helper (0x006bec40); 0x005a6f00 -> Isaac::genrand_int32 (0x006eef60)`

### `0x006c2220`

- C: [AI_006c2220_006c2220.c](ghidra-export/AI_006c2220_006c2220.c)
- ASM: [AI_006c2220_006c2220.asm](ghidra-export/AI_006c2220_006c2220.asm)
- Types: `17`
- Identities: `17.0.0, 17.1.0, 17.2.0, 17.3.0, 17.4.0`
- Incoming calls: 1; outgoing calls: 18
- State writes: `0x006c240f -> State 3`

### `0x006d18d0`

- C: [AI_006d18d0_006d18d0.c](ghidra-export/AI_006d18d0_006d18d0.c)
- ASM: [AI_006d18d0_006d18d0.asm](ghidra-export/AI_006d18d0_006d18d0.asm)
- Types: `33`
- Identities: `33.0.0, 33.1.0, 33.10.0, 33.11.0, 33.11.1, 33.11.2, 33.11.3, 33.12.0, 33.13.0, 33.2.0, 33.3.0, 33.4.0`
- Incoming calls: 1; outgoing calls: 80
- State writes: `0x006d1b63 -> State 8; 0x006d1c46 -> State 3; 0x006d1cbe -> State 8; 0x006d1f45 -> State 3; 0x006d2227 -> State 3`
- Shared attack/spawn calls: `0x006d1a7f -> Isaac::genrand_int32 (0x006eef60); 0x006d1da2 -> Isaac::genrand_int32 (0x006eef60); 0x006d1dc5 -> entity_spawn_relay (0x00428b20); 0x006d1e3b -> Isaac::genrand_int32 (0x006eef60); 0x006d1fa6 -> Isaac::genrand_int32 (0x006eef60); 0x006d1fc3 -> entity_spawn_relay (0x00428b20); 0x006d209e -> Isaac::genrand_int32 (0x006eef60); 0x006d20bf -> Isaac::genrand_int32 (0x006eef60); 0x006d24a3 -> Isaac::genrand_int32 (0x006eef60); 0x006d25e3 -> Isaac::genrand_int32 (0x006eef60); 0x006d27b0 -> Isaac::genrand_int32 (0x006eef60); 0x006d281c -> entity_spawn_relay (0x00428b20); 0x006d285a -> Isaac::genrand_int32 (0x006eef60); 0x006d2870 -> Isaac::genrand_int32 (0x006eef60); 0x006d28ad -> Isaac::genrand_int32 (0x006eef60); 0x006d293a -> Isaac::genrand_int32 (0x006eef60); 0x006d2977 -> Isaac::genrand_int32 (0x006eef60); 0x006d29c4 -> Isaac::genrand_int32 (0x006eef60); 0x006d29e8 -> entity_spawn_relay (0x00428b20)`

### `0x006d6690`

- C: [AI_006d6690_006d6690.c](ghidra-export/AI_006d6690_006d6690.c)
- ASM: [AI_006d6690_006d6690.asm](ghidra-export/AI_006d6690_006d6690.asm)
- Types: `292`
- Identities: `292.0.0, 292.1.0`
- Incoming calls: 1; outgoing calls: 22
- State writes: `0x006d66f5 -> State dynamic`
- Shared attack/spawn calls: `0x006d6740 -> Isaac::genrand_int32 (0x006eef60); 0x006d67f4 -> Isaac::genrand_int32 (0x006eef60); 0x006d682d -> Entity::Create dispatcher (0x006fe410); 0x006d68ad -> Isaac::genrand_int32 (0x006eef60); 0x006d68e8 -> Isaac::genrand_int32 (0x006eef60); 0x006d6a15 -> Isaac::genrand_int32 (0x006eef60); 0x006d6a70 -> Isaac::genrand_int32 (0x006eef60); 0x006d6a8f -> Entity::Create dispatcher (0x006fe410)`

## Inline Dispatcher Cases

These identities have no standalone update function. Their bodies are inside
`HELPER_Entity_NPC_Update_dispatcher_006c2990.c`; each printable interval is
also mirrored under `case-assemblies/`.

| Case | VA range | Types | Identities | Calls in case body |
| ---: | --- | --- | --- | --- |
| 53 | `0x006c2a45..0x006c2c3c` | `79` | `79.0.0, 79.1.0, 79.10.0, 79.11.0, 79.12.0, 79.2.0, 79.20.0` | `0x006c2a9c, 0x006c2ac8, 0x006c2af7, 0x006c2b4b, 0x006c2b81, 0x006c2bb0, 0x006c2bec, 0x006c2bfb, 0x006c2c0c` |
| 63 | `0x006c2d98..0x006c3412` | `93` | `93.0.0, 93.1.0` | `0x006c2df9, 0x006c2e51, 0x006c2ebb, 0x006c2f3d, 0x006c2f47, 0x006c2f6f, 0x006c2f7f, 0x006c2fbd, 0x006c2fdf, 0x006c301a, 0x006c3029, 0x006c3078, 0x006c309a, 0x006c30a2, 0x006c30ca, 0x006c30da, 0x006c3102, 0x006c3112, 0x006c3117, 0x006c3166, 0x006c3182, 0x006c318a, 0x006c31b2, 0x006c31c8, 0x006c31f7, 0x006c3207, 0x006c322f, 0x006c323f, 0x006c326e, 0x006c327e, 0x006c32a6, 0x006c32bc, 0x006c32c9, 0x006c32d1, 0x006c3300, 0x006c331a, 0x006c333c, 0x006c3344, 0x006c336c, 0x006c3376, 0x006c339e, 0x006c33b0, 0x006c33b9, 0x006c33df` |
| 66 | `0x006c342a..0x006c3442` | `98` | `98.0.0` | `(none)` |
| 108 | `0x006c3646..0x006c3685` | `274, 275` | `274.0.0, 274.1.0, 274.2.0, 275.0.0, 275.1.0, 275.2.0` | `0x006c364e, 0x006c367b` |
| 215 | `0x006c3d3d..0x006c3d87` | `903` | `903.0.0, 903.1.0, 903.10.0, 903.20.0` | `0x006c3d46, 0x006c3d57, 0x006c3d68, 0x006c3d7d` |
| 221 | `0x006c4028..0x006c4044` | `909` | `909.0.0, 909.10.0` | `0x006c4030, 0x006c403a` |
| 222 | `0x006c400c..0x006c4028` | `910` | `910.0.0, 910.1.0, 910.2.0` | `0x006c4014, 0x006c401e` |
| 223 | `0x006c4044..0x006c4071` | `911` | `911.0.0, 911.1.0, 911.2.0` | `0x006c404e, 0x006c405d, 0x006c4067` |
| 224 | `0x006c4071..0x006c40c7` | `912` | `912.0.0, 912.10.0, 912.100.0, 912.100.1, 912.100.2, 912.20.0, 912.30.0` | `0x006c408d, 0x006c4099, 0x006c40a5, 0x006c40b1, 0x006c40bd` |
| 227 | `0x006c3cfd..0x006c3d19` | `915` | `915.0.0, 915.1.0` | `0x006c3d05, 0x006c3d0f` |
| 233 | `0x006c3e0b..0x006c3ff4` | `921` | `921.0.0, 921.1.0` | `0x006c3e13, 0x006c3e67, 0x006c3e94, 0x006c3ed3, 0x006c3f6d, 0x006c3f85, 0x006c3f8f, 0x006c3f97, 0x006c3fc0` |
| 234 | `0x006c3db7..0x006c3e0b` | `922` | `(none)` | `(none)` |
| 235 | `0x006c40c7..0x006c4103` | `950` | `950.0.0, 950.1.0, 950.10.0, 950.2.0` | `0x006c40db, 0x006c40e5, 0x006c40ef, 0x006c40f9` |
| 236 | `0x006c4103..0x006c41af` | `951` | `951.0.0, 951.1.0, 951.10.0, 951.100.0, 951.101.0, 951.102.0, 951.103.0, 951.104.0, 951.11.0, 951.2.0, 951.20.0, 951.21.0, ... (+8)` | `0x006c4120, 0x006c412c, 0x006c4135, 0x006c413e, 0x006c4147, 0x006c4150, 0x006c4159, 0x006c4162, 0x006c416b, 0x006c4174, 0x006c417d, 0x006c4186, 0x006c418f, 0x006c4198, 0x006c41a1, 0x006c41aa` |

## Legacy Targets Without A Live Case Route

The older 239-target extraction treated the first call in each case as an AI
entry. The following targets are not reached as delegate handlers and are
kept only as recovered auxiliary functions:

- `0x0041af60`: inline_case_first_call_only; inline types `[93]`; no-handler types `[]`.
- `0x0043ef30`: inline_case_first_call_only; inline types `[79]`; no-handler types `[]`.
- `0x0049fa10`: inline_case_first_call_only; inline types `[910]`; no-handler types `[]`.
- `0x004aafa0`: inline_case_first_call_only; inline types `[950]`; no-handler types `[]`.
- `0x004c8090`: inline_case_first_call_only; inline types `[274, 275]`; no-handler types `[]`.
- `0x00569170`: inline_case_first_call_only; inline types `[912]`; no-handler types `[]`.
- `0x00573030`: inline_case_first_call_only; inline types `[921]`; no-handler types `[]`.
- `0x00581730`: inline_case_first_call_only; inline types `[911]`; no-handler types `[]`.
- `0x00584140`: inline_case_first_call_only; inline types `[909]`; no-handler types `[]`.
- `0x0058d8b0`: inline_case_first_call_only; inline types `[915]`; no-handler types `[]`.
- `0x00596120`: inline_case_first_call_only; inline types `[951]`; no-handler types `[]`.
- `0x005a7b20`: inline_case_first_call_only; inline types `[903]`; no-handler types `[]`.
- `0x00860ac0`: legacy_target_without_effective_type_route; inline types `[]`; no-handler types `[37, 70, 95, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 233, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 408, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 768, 769, 770, 771, 772, 773, 774, 775, 776, 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 803, 839, 842, 843, 845, 846, 847, 848, 849, 858, 894, 895, 896, 897, 898, 899, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934, 935, 936, 937, 938, 939, 940, 941, 942, 943, 944, 945, 946, 947, 948, 949, 952, 953, 954, 955, 956, 957, 958, 959, 961, 962, 963]`.
