; J460 NPC AI 0x00707370 HELPER_FriendlyProjectileHoming
; types=9
; identities=9.*
; entry=00707370
00707370  55                        PUSH EBP
00707371  8bec                      MOV EBP,ESP
00707373  6aff                      PUSH -0x1
00707375  68c0c4af00                PUSH 0xafc4c0
0070737a  64a100000000              MOV EAX,FS:[0x0]
00707380  50                        PUSH EAX
00707381  83ec50                    SUB ESP,0x50
00707384  53                        PUSH EBX
00707385  56                        PUSH ESI
00707386  57                        PUSH EDI
00707387  a1b493bf00                MOV EAX,[0x00bf93b4]
0070738c  33c5                      XOR EAX,EBP
0070738e  50                        PUSH EAX
0070738f  8d45f4                    LEA EAX,[EBP + -0xc]
00707392  64a300000000              MOV FS:[0x0],EAX
00707398  8bda                      MOV EBX,EDX
0070739a  0f28c1                    MOVAPS XMM0,XMM1
0070739d  894dec                    MOV dword ptr [EBP + -0x14],ECX
007073a0  a17816c700                MOV EAX,[0x00c71678]
007073a5  33c9                      XOR ECX,ECX
007073a7  f30f59c0                  MULSS XMM0,XMM0
007073ab  33d2                      XOR EDX,EDX
007073ad  8955f0                    MOV dword ptr [EBP + -0x10],EDX
007073b0  894de4                    MOV dword ptr [EBP + -0x1c],ECX
007073b3  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
007073b9  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
007073bc  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
007073c1  398864120000              CMP dword ptr [EAX + 0x1264],ECX
007073c7  0f86e4020000              JBE 0x007076b1
007073cd  0f1f00                    NOP dword ptr [EAX]
007073d0  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
007073d6  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
007073d9  837e2801                  CMP dword ptr [ESI + 0x28],0x1
007073dd  0f85d2000000              JNZ 0x007074b5
007073e3  85db                      TEST EBX,EBX
007073e5  0f84ca000000              JZ 0x007074b5
007073eb  6a00                      PUSH 0x0
007073ed  6800000020                PUSH 0x20000000
007073f2  8bcb                      MOV ECX,EBX
007073f4  e83700d1ff                CALL 0x00417430
007073f9  84c0                      TEST AL,AL
007073fb  0f84b4000000              JZ 0x007074b5
00707401  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
00707404  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0070740c  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
00707414  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
0070741a  8bbe6c010000              MOV EDI,dword ptr [ESI + 0x16c]
00707420  8945a8                    MOV dword ptr [EBP + -0x58],EAX
00707423  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
00707426  8945ac                    MOV dword ptr [EBP + -0x54],EAX
00707429  8b4638                    MOV EAX,dword ptr [ESI + 0x38]
0070742c  8945b0                    MOV dword ptr [EBP + -0x50],EAX
0070742f  8bc1                      MOV EAX,ECX
00707431  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
00707436  2500010000                AND EAX,0x100
0070743b  83c800                    OR EAX,0x0
0070743e  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
00707446  f30f114db8                MOVSS dword ptr [EBP + -0x48],XMM1
0070744b  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
00707453  c745a401000000            MOV dword ptr [EBP + -0x5c],0x1
0070745a  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0070745f  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
00707464  7407                      JZ 0x0070746d
00707466  ba01000000                MOV EDX,0x1
0070746b  eb02                      JMP 0x0070746f
0070746d  33d2                      XOR EDX,EDX
0070746f  81e100000020              AND ECX,0x20000000
00707475  83c900                    OR ECX,0x0
00707478  7407                      JZ 0x00707481
0070747a  b902000000                MOV ECX,0x2
0070747f  eb02                      JMP 0x00707483
00707481  33c9                      XOR ECX,ECX
00707483  81e700004000              AND EDI,0x400000
00707489  33c0                      XOR EAX,EAX
0070748b  0bc7                      OR EAX,EDI
0070748d  7407                      JZ 0x00707496
0070748f  b804000000                MOV EAX,0x4
00707494  eb02                      JMP 0x00707498
00707496  33c0                      XOR EAX,EAX
00707498  0bc1                      OR EAX,ECX
0070749a  8975c8                    MOV dword ptr [EBP + -0x38],ESI
0070749d  0bc2                      OR EAX,EDX
0070749f  8bcb                      MOV ECX,EBX
007074a1  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
007074a4  8d45a4                    LEA EAX,[EBP + -0x5c]
007074a7  50                        PUSH EAX
007074a8  e86358faff                CALL 0x006acd10
007074ad  84c0                      TEST AL,AL
007074af  0f85e3010000              JNZ 0x00707698
007074b5  a17816c700                MOV EAX,[0x00c71678]
007074ba  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
007074c1  7c14                      JL 0x007074d7
007074c3  85db                      TEST EBX,EBX
007074c5  7426                      JZ 0x007074ed
007074c7  56                        PUSH ESI
007074c8  8bcb                      MOV ECX,EBX
007074ca  e8d11afaff                CALL 0x006a8fa0
007074cf  84c0                      TEST AL,AL
007074d1  0f85c1010000              JNZ 0x00707698
007074d7  85db                      TEST EBX,EBX
007074d9  7412                      JZ 0x007074ed
007074db  8b03                      MOV EAX,dword ptr [EBX]
007074dd  8bcb                      MOV ECX,EBX
007074df  56                        PUSH ESI
007074e0  8b4050                    MOV EAX,dword ptr [EAX + 0x50]
007074e3  ffd0                      CALL EAX
007074e5  84c0                      TEST AL,AL
007074e7  0f84ab010000              JZ 0x00707698
007074ed  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007074f3  8b81f8640200              MOV EAX,dword ptr [ECX + 0x264f8]
007074f9  2b8628030000              SUB EAX,dword ptr [ESI + 0x328]
007074ff  83f801                    CMP EAX,0x1
00707502  0f8e90010000              JLE 0x00707698
00707508  8b8114660200              MOV EAX,dword ptr [ECX + 0x26614]
0070750e  8945dc                    MOV dword ptr [EBP + -0x24],EAX
00707511  83f802                    CMP EAX,0x2
00707514  7c0d                      JL 0x00707523
00707516  837e2801                  CMP dword ptr [ESI + 0x28],0x1
0070751a  7507                      JNZ 0x00707523
0070751c  bf01000000                MOV EDI,0x1
00707521  eb11                      JMP 0x00707534
00707523  8b7e28                    MOV EDI,dword ptr [ESI + 0x28]
00707526  8d47f6                    LEA EAX,[EDI + -0xa]
00707529  3ddd030000                CMP EAX,0x3dd
0070752e  0f8764010000              JA 0x00707698
00707534  8b8688010000              MOV EAX,dword ptr [ESI + 0x188]
0070753a  83f801                    CMP EAX,0x1
0070753d  0f8455010000              JZ 0x00707698
00707543  85c0                      TEST EAX,EAX
00707545  0f844d010000              JZ 0x00707698
0070754b  80beb003000000            CMP byte ptr [ESI + 0x3b0],0x0
00707552  0f8540010000              JNZ 0x00707698
00707558  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0070755f  0f8533010000              JNZ 0x00707698
00707565  6a00                      PUSH 0x0
00707567  6a10                      PUSH 0x10
00707569  8bce                      MOV ECX,ESI
0070756b  e8c0fed0ff                CALL 0x00417430
00707570  84c0                      TEST AL,AL
00707572  7414                      JZ 0x00707588
00707574  81ff22030000              CMP EDI,0x322
0070757a  740c                      JZ 0x00707588
0070757c  81ff62030000              CMP EDI,0x362
00707582  0f8510010000              JNZ 0x00707698
00707588  837ddc02                  CMP dword ptr [EBP + -0x24],0x2
0070758c  7c05                      JL 0x00707593
0070758e  83ff01                    CMP EDI,0x1
00707591  745e                      JZ 0x007075f1
00707593  8d47f6                    LEA EAX,[EDI + -0xa]
00707596  3ddd030000                CMP EAX,0x3dd
0070759b  0f87f7000000              JA 0x00707698
007075a1  83ff21                    CMP EDI,0x21
007075a4  0f84ee000000              JZ 0x00707698
007075aa  83ff11                    CMP EDI,0x11
007075ad  0f84e5000000              JZ 0x00707698
007075b3  81ff24010000              CMP EDI,0x124
007075b9  0f84d9000000              JZ 0x00707698
007075bf  81ff75030000              CMP EDI,0x375
007075c5  7506                      JNZ 0x007075cd
007075c7  837e2c0a                  CMP dword ptr [ESI + 0x2c],0xa
007075cb  eb1e                      JMP 0x007075eb
007075cd  81ffc0030000              CMP EDI,0x3c0
007075d3  0f84bf000000              JZ 0x00707698
007075d9  81ffc5030000              CMP EDI,0x3c5
007075df  0f84b3000000              JZ 0x00707698
007075e5  81fff5000000              CMP EDI,0xf5
007075eb  0f84a7000000              JZ 0x00707698
007075f1  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
007075f7  8bc1                      MOV EAX,ECX
007075f9  8b966c010000              MOV EDX,dword ptr [ESI + 0x16c]
007075ff  2500000020                AND EAX,0x20000000
00707604  83c800                    OR EAX,0x0
00707607  0f858b000000              JNZ 0x00707698
0070760d  8bc1                      MOV EAX,ECX
0070760f  83e010                    AND EAX,0x10
00707612  83c800                    OR EAX,0x0
00707615  0f857d000000              JNZ 0x00707698
0070761b  394508                    CMP dword ptr [EBP + 0x8],EAX
0070761e  7424                      JZ 0x00707644
00707620  56                        PUSH ESI
00707621  53                        PUSH EBX
00707622  ff75ec                    PUSH dword ptr [EBP + -0x14]
00707625  ff5508                    CALL dword ptr [EBP + 0x8]
00707628  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0070762e  83c40c                    ADD ESP,0xc
00707631  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
00707637  d95dcc                    FSTP dword ptr [EBP + -0x34]
0070763a  f30f104dcc                MOVSS XMM1,dword ptr [EBP + -0x34]
0070763f  8945dc                    MOV dword ptr [EBP + -0x24],EAX
00707642  eb2b                      JMP 0x0070766f
00707644  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
00707647  8955dc                    MOV dword ptr [EBP + -0x24],EDX
0070764a  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0070764e  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00707653  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
0070765b  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
00707663  f30f59c9                  MULSS XMM1,XMM1
00707667  f30f59c0                  MULSS XMM0,XMM0
0070766b  f30f58c8                  ADDSS XMM1,XMM0
0070766f  81e100010000              AND ECX,0x100
00707675  83c900                    OR ECX,0x0
00707678  7408                      JZ 0x00707682
0070767a  f30f580d8cacba00          ADDSS XMM1,dword ptr [0x00baac8c]
00707682  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
00707687  0f2fc1                    COMISS XMM0,XMM1
0070768a  760c                      JBE 0x00707698
0070768c  8bd6                      MOV EDX,ESI
0070768e  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
00707693  8955f0                    MOV dword ptr [EBP + -0x10],EDX
00707696  eb03                      JMP 0x0070769b
00707698  8b55f0                    MOV EDX,dword ptr [EBP + -0x10]
0070769b  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
0070769e  8b45d4                    MOV EAX,dword ptr [EBP + -0x2c]
007076a1  41                        INC ECX
007076a2  894de4                    MOV dword ptr [EBP + -0x1c],ECX
007076a5  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
007076ab  0f821ffdffff              JC 0x007073d0
007076b1  8bc2                      MOV EAX,EDX
007076b3  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
007076b6  64890d00000000            MOV dword ptr FS:[0x0],ECX
007076bd  59                        POP ECX
007076be  5f                        POP EDI
007076bf  5e                        POP ESI
007076c0  5b                        POP EBX
007076c1  8be5                      MOV ESP,EBP
007076c3  5d                        POP EBP
007076c4  c3                        RET
