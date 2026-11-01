; J460 NPC AI 0x009737b0 HELPER_Laser_AdvanceCountdown
; types=7
; identities=7.*
; entry=009737b0
009737b0  55                        PUSH EBP
009737b1  8bec                      MOV EBP,ESP
009737b3  83e4f8                    AND ESP,0xfffffff8
009737b6  83ec1c                    SUB ESP,0x1c
009737b9  53                        PUSH EBX
009737ba  56                        PUSH ESI
009737bb  8bf1                      MOV ESI,ECX
009737bd  57                        PUSH EDI
009737be  c786440500000000807f      MOV dword ptr [ESI + 0x544],0x7f800000
009737c8  8b8e84040000              MOV ECX,dword ptr [ESI + 0x484]
009737ce  8b9680040000              MOV EDX,dword ptr [ESI + 0x480]
009737d4  2bca                      SUB ECX,EDX
009737d6  c1f903                    SAR ECX,0x3
009737d9  83f902                    CMP ECX,0x2
009737dc  0f82a0000000              JC 0x00973882
009737e2  8b44caf8                  MOV EAX,dword ptr [EDX + ECX*0x8 + -0x8]
009737e6  898648050000              MOV dword ptr [ESI + 0x548],EAX
009737ec  8b44cafc                  MOV EAX,dword ptr [EDX + ECX*0x8 + -0x4]
009737f0  89864c050000              MOV dword ptr [ESI + 0x54c],EAX
009737f6  8bc2                      MOV EAX,EDX
009737f8  8b8e84040000              MOV ECX,dword ptr [ESI + 0x484]
009737fe  2bca                      SUB ECX,EDX
00973800  c1f903                    SAR ECX,0x3
00973803  f30f104cc8f8              MOVSS XMM1,dword ptr [EAX + ECX*0x8 + -0x8]
00973809  f30f5c4cc8f0              SUBSS XMM1,dword ptr [EAX + ECX*0x8 + -0x10]
0097380f  f30f1054c8fc              MOVSS XMM2,dword ptr [EAX + ECX*0x8 + -0x4]
00973815  f30f5c54c8f4              SUBSS XMM2,dword ptr [EAX + ECX*0x8 + -0xc]
0097381b  0f28c1                    MOVAPS XMM0,XMM1
0097381e  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00973824  f30f59c1                  MULSS XMM0,XMM1
00973828  0f28ca                    MOVAPS XMM1,XMM2
0097382b  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
00973831  f30f59ca                  MULSS XMM1,XMM2
00973835  f30f58c1                  ADDSS XMM0,XMM1
00973839  e81222acff                CALL 0x00435a50
0097383e  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00973845  f30f10542410              MOVSS XMM2,dword ptr [ESP + 0x10]
0097384b  761f                      JBE 0x0097386c
0097384d  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00973855  f30f5ec8                  DIVSS XMM1,XMM0
00973859  0f28c1                    MOVAPS XMM0,XMM1
0097385c  f30f59d0                  MULSS XMM2,XMM0
00973860  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00973866  f30f59c1                  MULSS XMM0,XMM1
0097386a  eb06                      JMP 0x00973872
0097386c  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00973872  f30f119650050000          MOVSS dword ptr [ESI + 0x550],XMM2
0097387a  f30f118654050000          MOVSS dword ptr [ESI + 0x554],XMM0
00973882  80be1505000000            CMP byte ptr [ESI + 0x515],0x0
00973889  7409                      JZ 0x00973894
0097388b  80be5c04000000            CMP byte ptr [ESI + 0x45c],0x0
00973892  743a                      JZ 0x009738ce
00973894  f30f10864c030000          MOVSS XMM0,dword ptr [ESI + 0x34c]
0097389c  8d442420                  LEA EAX,[ESP + 0x20]
009738a0  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
009738a8  8bce                      MOV ECX,ESI
009738aa  50                        PUSH EAX
009738ab  6a01                      PUSH 0x1
009738ad  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
009738b3  f30f108650030000          MOVSS XMM0,dword ptr [ESI + 0x350]
009738bb  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
009738c3  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
009738c9  e8e2d3ffff                CALL 0x00970cb0
009738ce  f30f109688030000          MOVSS XMM2,dword ptr [ESI + 0x388]
009738d6  8b8ec8030000              MOV ECX,dword ptr [ESI + 0x3c8]
009738dc  f30f11542420              MOVSS dword ptr [ESP + 0x20],XMM2
009738e2  85c9                      TEST ECX,ECX
009738e4  7409                      JZ 0x009738ef
009738e6  33c0                      XOR EAX,EAX
009738e8  83792801                  CMP dword ptr [ECX + 0x28],0x1
009738ec  0f45c8                    CMOVNZ ECX,EAX
009738ef  8b862c040000              MOV EAX,dword ptr [ESI + 0x42c]
009738f5  2305444cc300              AND EAX,dword ptr [0x00c34c44]
009738fb  8b9e28040000              MOV EBX,dword ptr [ESI + 0x428]
00973901  231d404cc300              AND EBX,dword ptr [0x00c34c40]
00973907  8b9630040000              MOV EDX,dword ptr [ESI + 0x430]
0097390d  8bfa                      MOV EDI,EDX
0097390f  233d484cc300              AND EDI,dword ptr [0x00c34c48]
00973915  89442414                  MOV dword ptr [ESP + 0x14],EAX
00973919  8b8634040000              MOV EAX,dword ptr [ESI + 0x434]
0097391f  23054c4cc300              AND EAX,dword ptr [0x00c34c4c]
00973925  89442410                  MOV dword ptr [ESP + 0x10],EAX
00973929  8bc3                      MOV EAX,EBX
0097392b  0b442414                  OR EAX,dword ptr [ESP + 0x14]
0097392f  895c2418                  MOV dword ptr [ESP + 0x18],EBX
00973933  7548                      JNZ 0x0097397d
00973935  8bc7                      MOV EAX,EDI
00973937  0b442410                  OR EAX,dword ptr [ESP + 0x10]
0097393b  7540                      JNZ 0x0097397d
0097393d  8b8634040000              MOV EAX,dword ptr [ESI + 0x434]
00973943  23053c4bc300              AND EAX,dword ptr [0x00c34b3c]
00973949  8b9e2c040000              MOV EBX,dword ptr [ESI + 0x42c]
0097394f  231d344bc300              AND EBX,dword ptr [0x00c34b34]
00973955  2315384bc300              AND EDX,dword ptr [0x00c34b38]
0097395b  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0097395f  8b8628040000              MOV EAX,dword ptr [ESI + 0x428]
00973965  2305304bc300              AND EAX,dword ptr [0x00c34b30]
0097396b  0bc3                      OR EAX,EBX
0097396d  8b5c2418                  MOV EBX,dword ptr [ESP + 0x18]
00973971  750a                      JNZ 0x0097397d
00973973  0b54241c                  OR EDX,dword ptr [ESP + 0x1c]
00973977  0f84bd000000              JZ 0x00973a3a
0097397d  8b4630                    MOV EAX,dword ptr [ESI + 0x30]
00973980  83f801                    CMP EAX,0x1
00973983  7409                      JZ 0x0097398e
00973985  83f802                    CMP EAX,0x2
00973988  0f85ac000000              JNZ 0x00973a3a
0097398e  85c9                      TEST ECX,ECX
00973990  743c                      JZ 0x009739ce
00973992  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0097399a  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
009739a2  f30f5c8140030000          SUBSS XMM0,dword ptr [ECX + 0x340]
009739aa  f30f5c893c030000          SUBSS XMM1,dword ptr [ECX + 0x33c]
009739b2  f30f59c0                  MULSS XMM0,XMM0
009739b6  f30f59c9                  MULSS XMM1,XMM1
009739ba  f30f58c1                  ADDSS XMM0,XMM1
009739be  e88d20acff                CALL 0x00435a50
009739c3  f30f10542420              MOVSS XMM2,dword ptr [ESP + 0x20]
009739c9  0f28d8                    MOVAPS XMM3,XMM0
009739cc  eb03                      JMP 0x009739d1
009739ce  0f57db                    XORPS XMM3,XMM3
009739d1  0b5c2414                  OR EBX,dword ptr [ESP + 0x14]
009739d5  753f                      JNZ 0x00973a16
009739d7  0b7c2410                  OR EDI,dword ptr [ESP + 0x10]
009739db  7539                      JNZ 0x00973a16
009739dd  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
009739e5  8bce                      MOV ECX,ESI
009739e7  f30f5dcb                  MINSS XMM1,XMM3
009739eb  f30f5e0dc4abba00          DIVSS XMM1,dword ptr [0x00baabc4]
009739f3  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
009739fb  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
00973a03  f30f59d1                  MULSS XMM2,XMM1
00973a07  0f28ca                    MOVAPS XMM1,XMM2
00973a0a  e801deffff                CALL 0x00971810
00973a0f  5f                        POP EDI
00973a10  5e                        POP ESI
00973a11  5b                        POP EBX
00973a12  8be5                      MOV ESP,EBP
00973a14  5d                        POP EBP
00973a15  c3                        RET
00973a16  f30f100d7cabba00          MOVSS XMM1,dword ptr [0x00baab7c]
00973a1e  f30f5dcb                  MINSS XMM1,XMM3
00973a22  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00973a2a  f30f5e0d7cabba00          DIVSS XMM1,dword ptr [0x00baab7c]
00973a32  f30f5cc1                  SUBSS XMM0,XMM1
00973a36  f30f59d0                  MULSS XMM2,XMM0
00973a3a  0f28ca                    MOVAPS XMM1,XMM2
00973a3d  8bce                      MOV ECX,ESI
00973a3f  e8ccddffff                CALL 0x00971810
00973a44  5f                        POP EDI
00973a45  5e                        POP ESI
00973a46  5b                        POP EBX
00973a47  8be5                      MOV ESP,EBP
00973a49  5d                        POP EBP
00973a4a  c3                        RET
