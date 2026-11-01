; J460 NPC AI 0x0051d300 AI_0051d300
; types=99
; identities=99.0.0
; entry=0051d300
0051d300  53                        PUSH EBX
0051d301  8bdc                      MOV EBX,ESP
0051d303  83ec08                    SUB ESP,0x8
0051d306  83e4f8                    AND ESP,0xfffffff8
0051d309  83c404                    ADD ESP,0x4
0051d30c  55                        PUSH EBP
0051d30d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0051d310  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0051d314  8bec                      MOV EBP,ESP
0051d316  6aff                      PUSH -0x1
0051d318  683045af00                PUSH 0xaf4530
0051d31d  64a100000000              MOV EAX,FS:[0x0]
0051d323  50                        PUSH EAX
0051d324  53                        PUSH EBX
0051d325  81ec08010000              SUB ESP,0x108
0051d32b  a1b493bf00                MOV EAX,[0x00bf93b4]
0051d330  33c5                      XOR EAX,EBP
0051d332  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0051d335  56                        PUSH ESI
0051d336  57                        PUSH EDI
0051d337  50                        PUSH EAX
0051d338  8d45f4                    LEA EAX,[EBP + -0xc]
0051d33b  64a300000000              MOV FS:[0x0],EAX
0051d341  8bf9                      MOV EDI,ECX
0051d343  89bd0cffffff              MOV dword ptr [EBP + 0xffffff0c],EDI
0051d349  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
0051d34f  85f6                      TEST ESI,ESI
0051d351  0f85b2000000              JNZ 0x0051d409
0051d357  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0051d35b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0051d365  89b710040000              MOV dword ptr [EDI + 0x410],ESI
0051d36b  0f85370d0000              JNZ 0x0051e0a8
0051d371  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0051d374  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
0051d377  0f842b0d0000              JZ 0x0051e0a8
0051d37d  e8de1b1d00                CALL 0x006eef60
0051d382  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0051d38a  0f57c9                    XORPS XMM1,XMM1
0051d38d  f30f58059ca8ba00          ADDSS XMM0,dword ptr [0x00baa89c]
0051d395  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051d39b  50                        PUSH EAX
0051d39c  ff7730                    PUSH dword ptr [EDI + 0x30]
0051d39f  8d8760030000              LEA EAX,[EDI + 0x360]
0051d3a5  57                        PUSH EDI
0051d3a6  50                        PUSH EAX
0051d3a7  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0051d3af  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0051d3b5  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051d3bd  50                        PUSH EAX
0051d3be  ff772c                    PUSH dword ptr [EDI + 0x2c]
0051d3c1  f30f58c1                  ADDSS XMM0,XMM1
0051d3c5  ff7728                    PUSH dword ptr [EDI + 0x28]
0051d3c8  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0051d3d0  e84bb7f0ff                CALL 0x00428b20
0051d3d5  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0051d3dd  0f57c9                    XORPS XMM1,XMM1
0051d3e0  f30f5c059ca8ba00          SUBSS XMM0,dword ptr [0x00baa89c]
0051d3e8  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0051d3f0  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051d3f8  f30f5cc1                  SUBSS XMM0,XMM1
0051d3fc  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0051d404  e99f0c0000                JMP 0x0051e0a8
0051d409  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0051d410  0f8490000000              JZ 0x0051d4a6
0051d416  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0051d41e  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0051d424  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0051d42c  83f812                    CMP EAX,0x12
0051d42f  750a                      JNZ 0x0051d43b
0051d431  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0051d439  eb0d                      JMP 0x0051d448
0051d43b  83f813                    CMP EAX,0x13
0051d43e  7510                      JNZ 0x0051d450
0051d440  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0051d448  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0051d450  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0051d456  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
0051d45c  c78510ffffff75000000      MOV dword ptr [EBP + 0xffffff10],0x75
0051d466  e815934300                CALL 0x00956780
0051d46b  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
0051d473  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0051d479  83ec08                    SUB ESP,0x8
0051d47c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0051d484  f30f110424                MOVSS dword ptr [ESP],XMM0
0051d489  6a00                      PUSH 0x0
0051d48b  6a02                      PUSH 0x2
0051d48d  51                        PUSH ECX
0051d48e  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
0051d495  ffb510ffffff              PUSH dword ptr [EBP + 0xffffff10]
0051d49b  e890074100                CALL 0x0092dc30
0051d4a0  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
0051d4a6  83fe08                    CMP ESI,0x8
0051d4a9  7449                      JZ 0x0051d4f4
0051d4ab  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0051d4b3  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0051d4bb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0051d4c3  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
0051d4cb  83c6fd                    ADD ESI,-0x3
0051d4ce  0f28c1                    MOVAPS XMM0,XMM1
0051d4d1  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0051d4d9  83fe07                    CMP ESI,0x7
0051d4dc  0f875b0b0000              JA 0x0051e03d
0051d4e2  0f28c1                    MOVAPS XMM0,XMM1
0051d4e5  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0051d4ed  ff24b5c8e05100            JMP dword ptr [ESI*0x4 + 0x51e0c8]
0051d4f4  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
0051d4fc  0f57d2                    XORPS XMM2,XMM2
0051d4ff  8bcf                      MOV ECX,EDI
0051d501  e85af21800                CALL 0x006ac760
0051d506  85c0                      TEST EAX,EAX
0051d508  74b9                      JZ 0x0051d4c3
0051d50a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0051d512  83c6fd                    ADD ESI,-0x3
0051d515  f30f590538a4ba00          MULSS XMM0,dword ptr [0x00baa438]
0051d51d  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
0051d525  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0051d52d  ebb3                      JMP 0x0051d4e2
0051e03d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051e044  7462                      JZ 0x0051e0a8
0051e046  0f57c9                    XORPS XMM1,XMM1
0051e049  0f2fc1                    COMISS XMM0,XMM1
0051e04c  765a                      JBE 0x0051e0a8
0051e04e  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
0051e054  0f57d2                    XORPS XMM2,XMM2
0051e057  50                        PUSH EAX
0051e058  8bcf                      MOV ECX,EDI
0051e05a  e871a21b00                CALL 0x006d82d0
0051e05f  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
0051e067  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0051e06f  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0051e074  f30f5900                  MULSS XMM0,dword ptr [EAX]
0051e078  f30f599514ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff14]
0051e080  f30f59c1                  MULSS XMM0,XMM1
0051e084  f30f59d1                  MULSS XMM2,XMM1
0051e088  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0051e090  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0051e098  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0051e0a0  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0051e0a8  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0051e0ab  64890d00000000            MOV dword ptr FS:[0x0],ECX
0051e0b2  59                        POP ECX
0051e0b3  5f                        POP EDI
0051e0b4  5e                        POP ESI
0051e0b5  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0051e0b8  33cd                      XOR ECX,EBP
0051e0ba  e86c105d00                CALL 0x00aef12b
0051e0bf  8be5                      MOV ESP,EBP
0051e0c1  5d                        POP EBP
0051e0c2  8be3                      MOV ESP,EBX
0051e0c4  5b                        POP EBX
0051e0c5  c3                        RET
