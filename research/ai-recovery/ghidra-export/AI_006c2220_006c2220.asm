; J460 NPC AI 0x006c2220 AI_006c2220
; types=17
; identities=17.0.0,17.1.0,17.2.0,17.3.0,17.4.0
; entry=006c2220
006c2220  53                        PUSH EBX
006c2221  8bdc                      MOV EBX,ESP
006c2223  83ec08                    SUB ESP,0x8
006c2226  83e4f8                    AND ESP,0xfffffff8
006c2229  83c404                    ADD ESP,0x4
006c222c  55                        PUSH EBP
006c222d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
006c2230  896c2404                  MOV dword ptr [ESP + 0x4],EBP
006c2234  8bec                      MOV EBP,ESP
006c2236  6aff                      PUSH -0x1
006c2238  686da9af00                PUSH 0xafa96d
006c223d  64a100000000              MOV EAX,FS:[0x0]
006c2243  50                        PUSH EAX
006c2244  53                        PUSH EBX
006c2245  83ec60                    SUB ESP,0x60
006c2248  56                        PUSH ESI
006c2249  57                        PUSH EDI
006c224a  a1b493bf00                MOV EAX,[0x00bf93b4]
006c224f  33c5                      XOR EAX,EBP
006c2251  50                        PUSH EAX
006c2252  8d45f4                    LEA EAX,[EBP + -0xc]
006c2255  64a300000000              MOV FS:[0x0],EAX
006c225b  8bf9                      MOV EDI,ECX
006c225d  897de0                    MOV dword ptr [EBP + -0x20],EDI
006c2260  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
006c2267  0f85b1010000              JNZ 0x006c241e
006c226d  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
006c2273  b909000000                MOV ECX,0x9
006c2278  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
006c227e  83e2fb                    AND EDX,0xfffffffb
006c2281  83ca11                    OR EDX,0x11
006c2284  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006c228a  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
006c2290  899768010000              MOV dword ptr [EDI + 0x168],EDX
006c2296  33d2                      XOR EDX,EDX
006c2298  f7f1                      DIV ECX
006c229a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006c229d  42                        INC EDX
006c229e  c7878801000001000000      MOV dword ptr [EDI + 0x188],0x1
006c22a8  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
006c22b2  895730                    MOV dword ptr [EDI + 0x30],EDX
006c22b5  83f804                    CMP EAX,0x4
006c22b8  7749                      JA 0x006c2303
006c22ba  ff248530276c00            JMP dword ptr [EAX*0x4 + 0x6c2730]
006c22c1  52                        PUSH EDX
006c22c2  686475b600                PUSH 0xb67564
006c22c7  6a40                      PUSH 0x40
006c22c9  68d00dc800                PUSH 0xc80dd0
006c22ce  e84dc1d5ff                CALL 0x0041e420
006c22d3  83c410                    ADD ESP,0x10
006c22d6  eb2b                      JMP 0x006c2303
006c22d8  52                        PUSH EDX
006c22d9  687475b600                PUSH 0xb67574
006c22de  6a40                      PUSH 0x40
006c22e0  68d00dc800                PUSH 0xc80dd0
006c22e5  e836c1d5ff                CALL 0x0041e420
006c22ea  83c410                    ADD ESP,0x10
006c22ed  eb14                      JMP 0x006c2303
006c22ef  6854bcb100                PUSH 0xb1bc54
006c22f4  6a40                      PUSH 0x40
006c22f6  68d00dc800                PUSH 0xc80dd0
006c22fb  e820c1d5ff                CALL 0x0041e420
006c2300  83c40c                    ADD ESP,0xc
006c2303  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
006c2306  85f6                      TEST ESI,ESI
006c2308  7451                      JZ 0x006c235b
006c230a  837e1410                  CMP dword ptr [ESI + 0x14],0x10
006c230e  8bc6                      MOV EAX,ESI
006c2310  7202                      JC 0x006c2314
006c2312  8b06                      MOV EAX,dword ptr [ESI]
006c2314  b9d00dc800                MOV ECX,0xc80dd0
006c2319  0f1f8000000000            NOP dword ptr [EAX]
006c2320  8a10                      MOV DL,byte ptr [EAX]
006c2322  3a11                      CMP DL,byte ptr [ECX]
006c2324  751a                      JNZ 0x006c2340
006c2326  84d2                      TEST DL,DL
006c2328  7412                      JZ 0x006c233c
006c232a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
006c232d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
006c2330  750e                      JNZ 0x006c2340
006c2332  83c002                    ADD EAX,0x2
006c2335  83c102                    ADD ECX,0x2
006c2338  84d2                      TEST DL,DL
006c233a  75e4                      JNZ 0x006c2320
006c233c  33c0                      XOR EAX,EAX
006c233e  eb05                      JMP 0x006c2345
006c2340  1bc0                      SBB EAX,EAX
006c2342  83c801                    OR EAX,0x1
006c2345  85c0                      TEST EAX,EAX
006c2347  7512                      JNZ 0x006c235b
006c2349  384634                    CMP byte ptr [ESI + 0x34],AL
006c234c  742e                      JZ 0x006c237c
006c234e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
006c2354  8d7748                    LEA ESI,[EDI + 0x48]
006c2357  7523                      JNZ 0x006c237c
006c2359  eb03                      JMP 0x006c235e
006c235b  8d7748                    LEA ESI,[EDI + 0x48]
006c235e  6a01                      PUSH 0x1
006c2360  68d00dc800                PUSH 0xc80dd0
006c2365  8bce                      MOV ECX,ESI
006c2367  e86482d4ff                CALL 0x0040a5d0
006c236c  84c0                      TEST AL,AL
006c236e  740c                      JZ 0x006c237c
006c2370  8d4e30                    LEA ECX,[ESI + 0x30]
006c2373  e8387ed4ff                CALL 0x0040a1b0
006c2378  c6464401                  MOV byte ptr [ESI + 0x44],0x1
006c237c  0f281580c2ba00            MOVAPS XMM2,xmmword ptr [0x00bac280]
006c2383  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
006c2389  8d4590                    LEA EAX,[EBP + -0x70]
006c238c  c745b0cdcc4c3e            MOV dword ptr [EBP + -0x50],0x3e4ccccd
006c2393  c745b4cdcc4c3e            MOV dword ptr [EBP + -0x4c],0x3e4ccccd
006c239a  0f57c9                    XORPS XMM1,XMM1
006c239d  c745b8cdcc4c3e            MOV dword ptr [EBP + -0x48],0x3e4ccccd
006c23a4  3bc8                      CMP ECX,EAX
006c23a6  7417                      JZ 0x006c23bf
006c23a8  f30f7e45b0                MOVQ XMM0,qword ptr [EBP + -0x50]
006c23ad  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
006c23b0  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
006c23b5  0f1111                    MOVUPS xmmword ptr [ECX],XMM2
006c23b8  894128                    MOV dword ptr [ECX + 0x28],EAX
006c23bb  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
006c23bf  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006c23c2  85c0                      TEST EAX,EAX
006c23c4  740a                      JZ 0x006c23d0
006c23c6  83f803                    CMP EAX,0x3
006c23c9  7405                      JZ 0x006c23d0
006c23cb  83f802                    CMP EAX,0x2
006c23ce  7525                      JNZ 0x006c23f5
006c23d0  a17816c700                MOV EAX,[0x00c71678]
006c23d5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006c23db  83780810                  CMP dword ptr [EAX + 0x8],0x10
006c23df  7514                      JNZ 0x006c23f5
006c23e1  c787dc00000000000000      MOV dword ptr [EDI + 0xdc],0x0
006c23eb  c787e000000000000041      MOV dword ptr [EDI + 0xe0],0x41000000
006c23f5  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
006c23fb  8bcf                      MOV ECX,EDI
006c23fd  898734030000              MOV dword ptr [EDI + 0x334],EAX
006c2403  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
006c2409  898738030000              MOV dword ptr [EDI + 0x338],EAX
006c240f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
006c2419  e812810100                CALL 0x006da530
006c241e  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006c2425  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
006c242d  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
006c2433  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
006c243b  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
006c2441  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
006c2447  898740030000              MOV dword ptr [EDI + 0x340],EAX
006c244d  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
006c2455  0f84c0020000              JZ 0x006c271b
006c245b  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006c2461  6a01                      PUSH 0x1
006c2463  6a0c                      PUSH 0xc
006c2465  8d4914                    LEA ECX,[ECX + 0x14]
006c2468  e8d3762600                CALL 0x00929b40
006c246d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c2473  6a01                      PUSH 0x1
006c2475  8b814c650200              MOV EAX,dword ptr [ECX + 0x2654c]
006c247b  81894865020000000080      OR dword ptr [ECX + 0x26548],0x80000000
006c2485  89814c650200              MOV dword ptr [ECX + 0x2654c],EAX
006c248b  8d45bc                    LEA EAX,[EBP + -0x44]
006c248e  83899c83010040            OR dword ptr [ECX + 0x1839c],0x40
006c2495  8bcf                      MOV ECX,EDI
006c2497  50                        PUSH EAX
006c2498  e823f6ffff                CALL 0x006c1ac0
006c249d  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
006c24a4  8b55c8                    MOV EDX,dword ptr [EBP + -0x38]
006c24a7  8bf2                      MOV ESI,EDX
006c24a9  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
006c24ac  8955e8                    MOV dword ptr [EBP + -0x18],EDX
006c24af  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
006c24b2  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
006c24b5  8d0411                    LEA EAX,[ECX + EDX*0x1]
006c24b8  3bf0                      CMP ESI,EAX
006c24ba  0f8421020000              JZ 0x006c26e1
006c24c0  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
006c24c3  85c0                      TEST EAX,EAX
006c24c5  7404                      JZ 0x006c24cb
006c24c7  8b00                      MOV EAX,dword ptr [EAX]
006c24c9  eb02                      JMP 0x006c24cd
006c24cb  33c0                      XOR EAX,EAX
006c24cd  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006c24d0  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
006c24d3  49                        DEC ECX
006c24d4  23ce                      AND ECX,ESI
006c24d6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
006c24d9  833855                    CMP dword ptr [EAX],0x55
006c24dc  7570                      JNZ 0x006c254e
006c24de  3bf2                      CMP ESI,EDX
006c24e0  753a                      JNZ 0x006c251c
006c24e2  a17816c700                MOV EAX,[0x00c71678]
006c24e7  6a00                      PUSH 0x0
006c24e9  6a00                      PUSH 0x0
006c24eb  6a00                      PUSH 0x0
006c24ed  51                        PUSH ECX
006c24ee  c7042400008c42            MOV dword ptr [ESP],0x428c0000
006c24f5  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006c24fb  51                        PUSH ECX
006c24fc  8d4dd0                    LEA ECX,[EBP + -0x30]
006c24ff  51                        PUSH ECX
006c2500  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006c2506  e815101500                CALL 0x00813520
006c250b  51                        PUSH ECX
006c250c  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
006c2513  6a00                      PUSH 0x0
006c2515  ff7004                    PUSH dword ptr [EAX + 0x4]
006c2518  ff30                      PUSH dword ptr [EAX]
006c251a  eb16                      JMP 0x006c2532
006c251c  51                        PUSH ECX
006c251d  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
006c2524  6a00                      PUSH 0x0
006c2526  ff3544b6c700              PUSH dword ptr [0x00c7b644]
006c252c  ff3540b6c700              PUSH dword ptr [0x00c7b640]
006c2532  8d873c030000              LEA EAX,[EDI + 0x33c]
006c2538  57                        PUSH EDI
006c2539  50                        PUSH EAX
006c253a  e811020000                CALL 0x006c2750
006c253f  8b55c8                    MOV EDX,dword ptr [EBP + -0x38]
006c2542  83c418                    ADD ESP,0x18
006c2545  46                        INC ESI
006c2546  8975e8                    MOV dword ptr [EBP + -0x18],ESI
006c2549  e964ffffff                JMP 0x006c24b2
006c254e  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
006c2551  85c0                      TEST EAX,EAX
006c2553  7404                      JZ 0x006c2559
006c2555  8b00                      MOV EAX,dword ptr [EAX]
006c2557  eb02                      JMP 0x006c255b
006c2559  33c0                      XOR EAX,EAX
006c255b  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006c255e  8d973c030000              LEA EDX,[EDI + 0x33c]
006c2564  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
006c2567  49                        DEC ECX
006c2568  23ce                      AND ECX,ESI
006c256a  6a00                      PUSH 0x0
006c256c  6840b6c700                PUSH 0xc7b640
006c2571  52                        PUSH EDX
006c2572  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
006c2575  e856991900                CALL 0x0085bed0
006c257a  8bf0                      MOV ESI,EAX
006c257c  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
006c257f  83f832                    CMP EAX,0x32
006c2582  0f8509010000              JNZ 0x006c2691
006c2588  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c258e  8b06                      MOV EAX,dword ptr [ESI]
006c2590  8bb900830100              MOV EDI,dword ptr [ECX + 0x18300]
006c2596  8bce                      MOV ECX,ESI
006c2598  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
006c259b  ffd0                      CALL EAX
006c259d  84c0                      TEST AL,AL
006c259f  7422                      JZ 0x006c25c3
006c25a1  817e2862030000            CMP dword ptr [ESI + 0x28],0x362
006c25a8  7419                      JZ 0x006c25c3
006c25aa  ff87c0120000              INC dword ptr [EDI + 0x12c0]
006c25b0  8bce                      MOV ECX,ESI
006c25b2  8b06                      MOV EAX,dword ptr [ESI]
006c25b4  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006c25b7  ffd0                      CALL EAX
006c25b9  84c0                      TEST AL,AL
006c25bb  7406                      JZ 0x006c25c3
006c25bd  ff87c8120000              INC dword ptr [EDI + 0x12c8]
006c25c3  8b06                      MOV EAX,dword ptr [ESI]
006c25c5  8bce                      MOV ECX,ESI
006c25c7  ff500c                    CALL dword ptr [EAX + 0xc]
006c25ca  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006c25d0  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
006c25d6  e865961200                CALL 0x007ebc40
006c25db  a17816c700                MOV EAX,[0x00c71678]
006c25e0  bf24070000                MOV EDI,0x724
006c25e5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006c25eb  c6802872000001            MOV byte ptr [EAX + 0x7228],0x1
006c25f2  33c0                      XOR EAX,EAX
006c25f4  40                        INC EAX
006c25f5  8945ec                    MOV dword ptr [EBP + -0x14],EAX
006c25f8  83f808                    CMP EAX,0x8
006c25fb  7765                      JA 0x006c2662
006c25fd  a17816c700                MOV EAX,[0x00c71678]
006c2602  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006c2608  8b3407                    MOV ESI,dword ptr [EDI + EAX*0x1]
006c260b  85f6                      TEST ESI,ESI
006c260d  7450                      JZ 0x006c265f
006c260f  837e0c01                  CMP dword ptr [ESI + 0xc],0x1
006c2613  744a                      JZ 0x006c265f
006c2615  8bce                      MOV ECX,ESI
006c2617  c7460c01000000            MOV dword ptr [ESI + 0xc],0x1
006c261e  e81dc80400                CALL 0x0070ee40
006c2623  8b8e5c010000              MOV ECX,dword ptr [ESI + 0x15c]
006c2629  83f907                    CMP ECX,0x7
006c262c  741f                      JZ 0x006c264d
006c262e  8b8660010000              MOV EAX,dword ptr [ESI + 0x160]
006c2634  83f807                    CMP EAX,0x7
006c2637  7414                      JZ 0x006c264d
006c2639  83f908                    CMP ECX,0x8
006c263c  740f                      JZ 0x006c264d
006c263e  83f808                    CMP EAX,0x8
006c2641  740a                      JZ 0x006c264d
006c2643  83f91d                    CMP ECX,0x1d
006c2646  7405                      JZ 0x006c264d
006c2648  83f81d                    CMP EAX,0x1d
006c264b  7512                      JNZ 0x006c265f
006c264d  6a04                      PUSH 0x4
006c264f  6844d6b100                PUSH 0xb1d644
006c2654  8d8ea4030000              LEA ECX,[ESI + 0x3a4]
006c265a  e871a6d4ff                CALL 0x0040ccd0
006c265f  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
006c2662  83c704                    ADD EDI,0x4
006c2665  81ff44070000              CMP EDI,0x744
006c266b  7c87                      JL 0x006c25f4
006c266d  a17816c700                MOV EAX,[0x00c71678]
006c2672  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
006c2675  8b7de0                    MOV EDI,dword ptr [EBP + -0x20]
006c2678  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006c267e  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
006c2681  836044fe                  AND dword ptr [EAX + 0x44],0xfffffffe
006c2685  46                        INC ESI
006c2686  8b55c8                    MOV EDX,dword ptr [EBP + -0x38]
006c2689  8975e8                    MOV dword ptr [EBP + -0x18],ESI
006c268c  e921feffff                JMP 0x006c24b2
006c2691  837dcc01                  CMP dword ptr [EBP + -0x34],0x1
006c2695  7634                      JBE 0x006c26cb
006c2697  83f805                    CMP EAX,0x5
006c269a  752f                      JNZ 0x006c26cb
006c269c  6a00                      PUSH 0x0
006c269e  6a00                      PUSH 0x0
006c26a0  8d973c030000              LEA EDX,[EDI + 0x33c]
006c26a6  8d4dd8                    LEA ECX,[EBP + -0x28]
006c26a9  e892bd0200                CALL 0x006ee440
006c26ae  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
006c26b3  83c408                    ADD ESP,0x8
006c26b6  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
006c26be  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
006c26c3  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
006c26cb  8b06                      MOV EAX,dword ptr [ESI]
006c26cd  8bce                      MOV ECX,ESI
006c26cf  ff500c                    CALL dword ptr [EAX + 0xc]
006c26d2  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
006c26d5  8b55c8                    MOV EDX,dword ptr [EBP + -0x38]
006c26d8  46                        INC ESI
006c26d9  8975e8                    MOV dword ptr [EBP + -0x18],ESI
006c26dc  e9d1fdffff                JMP 0x006c24b2
006c26e1  85c9                      TEST ECX,ECX
006c26e3  7412                      JZ 0x006c26f7
006c26e5  a17816c700                MOV EAX,[0x00c71678]
006c26ea  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006c26f0  c6809478000001            MOV byte ptr [EAX + 0x7894],0x1
006c26f7  8bcf                      MOV ECX,EDI
006c26f9  e8327e0100                CALL 0x006da530
006c26fe  8d4dbc                    LEA ECX,[EBP + -0x44]
006c2701  e84a810100                CALL 0x006da850
006c2706  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
006c2709  6a08                      PUSH 0x8
006c270b  50                        PUSH EAX
006c270c  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
006c2713  e844ca4200                CALL 0x00aef15c
006c2718  83c408                    ADD ESP,0x8
006c271b  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
006c271e  64890d00000000            MOV dword ptr FS:[0x0],ECX
006c2725  59                        POP ECX
006c2726  5f                        POP EDI
006c2727  5e                        POP ESI
006c2728  8be5                      MOV ESP,EBP
006c272a  5d                        POP EBP
006c272b  8be3                      MOV ESP,EBX
006c272d  5b                        POP EBX
006c272e  c3                        RET
