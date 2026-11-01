; J460 NPC AI 0x0055d230 AI_0055d230
; types=816
; identities=816.0.0,816.1.0
; entry=0055d230
0055d230  55                        PUSH EBP
0055d231  8bec                      MOV EBP,ESP
0055d233  83e4f8                    AND ESP,0xfffffff8
0055d236  81ecec000000              SUB ESP,0xec
0055d23c  a1b493bf00                MOV EAX,[0x00bf93b4]
0055d241  33c4                      XOR EAX,ESP
0055d243  898424e8000000            MOV dword ptr [ESP + 0xe8],EAX
0055d24a  a17816c700                MOV EAX,[0x00c71678]
0055d24f  53                        PUSH EBX
0055d250  56                        PUSH ESI
0055d251  57                        PUSH EDI
0055d252  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0055d258  8bf9                      MOV EDI,ECX
0055d25a  89742418                  MOV dword ptr [ESP + 0x18],ESI
0055d25e  c644242701                MOV byte ptr [ESP + 0x27],0x1
0055d263  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0055d269  8b9fec0b0000              MOV EBX,dword ptr [EDI + 0xbec]
0055d26f  2500000020                AND EAX,0x20000000
0055d274  83c800                    OR EAX,0x0
0055d277  895c241c                  MOV dword ptr [ESP + 0x1c],EBX
0055d27b  7505                      JNZ 0x0055d282
0055d27d  c644242700                MOV byte ptr [ESP + 0x27],0x0
0055d282  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0055d28a  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
0055d28d  89542450                  MOV dword ptr [ESP + 0x50],EDX
0055d291  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0055d299  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0055d29e  0f57c9                    XORPS XMM1,XMM1
0055d2a1  2bc8                      SUB ECX,EAX
0055d2a3  0f2fc1                    COMISS XMM0,XMM1
0055d2a6  894c2420                  MOV dword ptr [ESP + 0x20],ECX
0055d2aa  764d                      JBE 0x0055d2f9
0055d2ac  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0055d2af  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0055d2b2  7445                      JZ 0x0055d2f9
0055d2b4  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0055d2b7  83e104                    AND ECX,0x4
0055d2ba  83c900                    OR ECX,0x0
0055d2bd  7432                      JZ 0x0055d2f1
0055d2bf  83781001                  CMP dword ptr [EAX + 0x10],0x1
0055d2c3  742c                      JZ 0x0055d2f1
0055d2c5  83781801                  CMP dword ptr [EAX + 0x18],0x1
0055d2c9  7426                      JZ 0x0055d2f1
0055d2cb  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0055d2d0  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
0055d2d4  f30f5fc1                  MAXSS XMM0,XMM1
0055d2d8  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
0055d2dd  c70000000000              MOV dword ptr [EAX],0x0
0055d2e3  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
0055d2ea  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
0055d2f1  83c038                    ADD EAX,0x38
0055d2f4  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0055d2f7  75bb                      JNZ 0x0055d2b4
0055d2f9  83fa01                    CMP EDX,0x1
0055d2fc  7526                      JNZ 0x0055d324
0055d2fe  83bf000c000000            CMP dword ptr [EDI + 0xc00],0x0
0055d305  751d                      JNZ 0x0055d324
0055d307  8d44243c                  LEA EAX,[ESP + 0x3c]
0055d30b  c744243c00000000          MOV dword ptr [ESP + 0x3c],0x0
0055d313  50                        PUSH EAX
0055d314  52                        PUSH EDX
0055d315  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
0055d31b  e8a0e9eeff                CALL 0x0044bcc0
0055d320  8b542450                  MOV EDX,dword ptr [ESP + 0x50]
0055d324  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0055d32a  894c2438                  MOV dword ptr [ESP + 0x38],ECX
0055d32e  83f910                    CMP ECX,0x10
0055d331  0f87f61c0000              JA 0x0055f02d
0055d337  0fb68140fb5500            MOVZX EAX,byte ptr [ECX + 0x55fb40]
0055d33e  ff248518fb5500            JMP dword ptr [EAX*0x4 + 0x55fb18]
0055e0b1  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0055e0bb  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
0055e0c2  5f                        POP EDI
0055e0c3  5e                        POP ESI
0055e0c4  5b                        POP EBX
0055e0c5  8b8c24e8000000            MOV ECX,dword ptr [ESP + 0xe8]
0055e0cc  33cc                      XOR ECX,ESP
0055e0ce  e858105900                CALL 0x00aef12b
0055e0d3  8be5                      MOV ESP,EBP
0055e0d5  5d                        POP EBP
0055e0d6  c3                        RET
0055f02d  895c241c                  MOV dword ptr [ESP + 0x1c],EBX
0055f031  83f902                    CMP ECX,0x2
0055f034  0f84a9080000              JZ 0x0055f8e3
0055f03a  8bf3                      MOV ESI,EBX
0055f03c  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
0055f042  83f8fe                    CMP EAX,-0x2
0055f045  0f8538020000              JNZ 0x0055f283
0055f04b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055f052  0f85b6040000              JNZ 0x0055f50e
0055f058  51                        PUSH ECX
0055f059  8d442414                  LEA EAX,[ESP + 0x14]
0055f05d  c7042400000000            MOV dword ptr [ESP],0x0
0055f064  50                        PUSH EAX
0055f065  8bcf                      MOV ECX,EDI
0055f067  e8d4fb1500                CALL 0x006bec40
0055f06c  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0055f074  8d9f3c030000              LEA EBX,[EDI + 0x33c]
0055f07a  f30f5c4c2414              SUBSS XMM1,dword ptr [ESP + 0x14]
0055f080  f30f1013                  MOVSS XMM2,dword ptr [EBX]
0055f084  f30f5c542410              SUBSS XMM2,dword ptr [ESP + 0x10]
0055f08a  0f28c1                    MOVAPS XMM0,XMM1
0055f08d  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
0055f093  f30f59c1                  MULSS XMM0,XMM1
0055f097  0f28ca                    MOVAPS XMM1,XMM2
0055f09a  f30f11542420              MOVSS dword ptr [ESP + 0x20],XMM2
0055f0a0  f30f59ca                  MULSS XMM1,XMM2
0055f0a4  f30f58c1                  ADDSS XMM0,XMM1
0055f0a8  e8a369edff                CALL 0x00435a50
0055f0ad  f30f100d54a3ba00          MOVSS XMM1,dword ptr [0x00baa354]
0055f0b5  0f2fc1                    COMISS XMM0,XMM1
0055f0b8  f30f10542420              MOVSS XMM2,dword ptr [ESP + 0x20]
0055f0be  762f                      JBE 0x0055f0ef
0055f0c0  0f57db                    XORPS XMM3,XMM3
0055f0c3  0f2fc3                    COMISS XMM0,XMM3
0055f0c6  f30f105c2428              MOVSS XMM3,dword ptr [ESP + 0x28]
0055f0cc  7617                      JBE 0x0055f0e5
0055f0ce  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
0055f0d6  f30f5ee0                  DIVSS XMM4,XMM0
0055f0da  0f28c4                    MOVAPS XMM0,XMM4
0055f0dd  f30f59dc                  MULSS XMM3,XMM4
0055f0e1  f30f59d0                  MULSS XMM2,XMM0
0055f0e5  f30f59d1                  MULSS XMM2,XMM1
0055f0e9  f30f59d9                  MULSS XMM3,XMM1
0055f0ed  eb06                      JMP 0x0055f0f5
0055f0ef  f30f105c2428              MOVSS XMM3,dword ptr [ESP + 0x28]
0055f0f5  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0055f0fd  0f28c1                    MOVAPS XMM0,XMM1
0055f100  f30f59cb                  MULSS XMM1,XMM3
0055f104  51                        PUSH ECX
0055f105  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
0055f109  f30f59c2                  MULSS XMM0,XMM2
0055f10d  c704240000c8c3            MOV dword ptr [ESP],0xc3c80000
0055f114  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0055f11c  53                        PUSH EBX
0055f11d  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0055f125  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0055f12d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0055f135  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055f13d  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0055f145  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055f14d  e80e422b00                CALL 0x00813360
0055f152  84c0                      TEST AL,AL
0055f154  7518                      JNZ 0x0055f16e
0055f156  85f6                      TEST ESI,ESI
0055f158  740d                      JZ 0x0055f167
0055f15a  8b06                      MOV EAX,dword ptr [ESI]
0055f15c  8bce                      MOV ECX,ESI
0055f15e  ff5028                    CALL dword ptr [EAX + 0x28]
0055f161  33c0                      XOR EAX,EAX
0055f163  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0055f167  8b07                      MOV EAX,dword ptr [EDI]
0055f169  8bcf                      MOV ECX,EDI
0055f16b  ff5028                    CALL dword ptr [EAX + 0x28]
0055f16e  8b5c2438                  MOV EBX,dword ptr [ESP + 0x38]
0055f172  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0055f17a  0f57c9                    XORPS XMM1,XMM1
0055f17d  0f2fc1                    COMISS XMM0,XMM1
0055f180  0f97c0                    SETA AL
0055f183  888748010000              MOV byte ptr [EDI + 0x148],AL
0055f189  83fb08                    CMP EBX,0x8
0055f18c  7409                      JZ 0x0055f197
0055f18e  83fb09                    CMP EBX,0x9
0055f191  0f8548070000              JNZ 0x0055f8df
0055f197  8b5c241c                  MOV EBX,dword ptr [ESP + 0x1c]
0055f19b  85db                      TEST EBX,EBX
0055f19d  750f                      JNZ 0x0055f1ae
0055f19f  8bcf                      MOV ECX,EDI
0055f1a1  e80adfffff                CALL 0x0055d0b0
0055f1a6  84c0                      TEST AL,AL
0055f1a8  0f8431060000              JZ 0x0055f7df
0055f1ae  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0055f1b2  0f84c4060000              JZ 0x0055f87c
0055f1b8  68c816b600                PUSH 0xb616c8
0055f1bd  8d4f78                    LEA ECX,[EDI + 0x78]
0055f1c0  e80bbceaff                CALL 0x0040add0
0055f1c5  84c0                      TEST AL,AL
0055f1c7  0f84a0060000              JZ 0x0055f86d
0055f1cd  8b87c8030000              MOV EAX,dword ptr [EDI + 0x3c8]
0055f1d3  8db7c8030000              LEA ESI,[EDI + 0x3c8]
0055f1d9  85c0                      TEST EAX,EAX
0055f1db  0f84cf050000              JZ 0x0055f7b0
0055f1e1  83782805                  CMP dword ptr [EAX + 0x28],0x5
0055f1e5  0f85c5050000              JNZ 0x0055f7b0
0055f1eb  c7808801000000000000      MOV dword ptr [EAX + 0x188],0x0
0055f1f5  8b0e                      MOV ECX,dword ptr [ESI]
0055f1f7  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0055f1fd  57                        PUSH EDI
0055f1fe  89813c030000              MOV dword ptr [ECX + 0x33c],EAX
0055f204  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0055f20a  898140030000              MOV dword ptr [ECX + 0x340],EAX
0055f210  8b0e                      MOV ECX,dword ptr [ESI]
0055f212  e889a01400                CALL 0x006a92a0
0055f217  8b06                      MOV EAX,dword ptr [ESI]
0055f219  8d97ec0b0000              LEA EDX,[EDI + 0xbec]
0055f21f  c6807101000000            MOV byte ptr [EAX + 0x171],0x0
0055f226  8b0a                      MOV ECX,dword ptr [EDX]
0055f228  8b06                      MOV EAX,dword ptr [ESI]
0055f22a  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
0055f22e  85c9                      TEST ECX,ECX
0055f230  741e                      JZ 0x0055f250
0055f232  8d442410                  LEA EAX,[ESP + 0x10]
0055f236  89542410                  MOV dword ptr [ESP + 0x10],EDX
0055f23a  50                        PUSH EAX
0055f23b  81c1cc030000              ADD ECX,0x3cc
0055f241  e8cafff6ff                CALL 0x004cf210
0055f246  8b44242c                  MOV EAX,dword ptr [ESP + 0x2c]
0055f24a  8d97ec0b0000              LEA EDX,[EDI + 0xbec]
0055f250  8902                      MOV dword ptr [EDX],EAX
0055f252  85c0                      TEST EAX,EAX
0055f254  7408                      JZ 0x0055f25e
0055f256  52                        PUSH EDX
0055f257  8bc8                      MOV ECX,EAX
0055f259  e892eaf6ff                CALL 0x004cdcf0
0055f25e  8b0e                      MOV ECX,dword ptr [ESI]
0055f260  85c9                      TEST ECX,ECX
0055f262  7414                      JZ 0x0055f278
0055f264  8d442410                  LEA EAX,[ESP + 0x10]
0055f268  89742410                  MOV dword ptr [ESP + 0x10],ESI
0055f26c  50                        PUSH EAX
0055f26d  81c1cc030000              ADD ECX,0x3cc
0055f273  e898fff6ff                CALL 0x004cf210
0055f278  c70600000000              MOV dword ptr [ESI],0x0
0055f27e  e9ea050000                JMP 0x0055f86d
0055f283  85c0                      TEST EAX,EAX
0055f285  0f8876020000              JS 0x0055f501
0055f28b  83bf640b00000d            CMP dword ptr [EDI + 0xb64],0xd
0055f292  0f84d6feffff              JZ 0x0055f16e
0055f298  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055f29f  7475                      JZ 0x0055f316
0055f2a1  8d442444                  LEA EAX,[ESP + 0x44]
0055f2a5  0f57d2                    XORPS XMM2,XMM2
0055f2a8  50                        PUSH EAX
0055f2a9  8bcf                      MOV ECX,EDI
0055f2ab  e820901700                CALL 0x006d82d0
0055f2b0  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0055f2b8  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0055f2bc  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0055f2c1  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0055f2c9  f30f591554a3ba00          MULSS XMM2,dword ptr [0x00baa354]
0055f2d1  f30f59c1                  MULSS XMM0,XMM1
0055f2d5  f30f59d1                  MULSS XMM2,XMM1
0055f2d9  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0055f2e1  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0055f2e9  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0055f2f1  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0055f2f9  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055f301  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0055f309  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055f311  e958feffff                JMP 0x0055f16e
0055f316  837c245001                CMP dword ptr [ESP + 0x50],0x1
0055f31b  0f8593000000              JNZ 0x0055f3b4
0055f321  8bcf                      MOV ECX,EDI
0055f323  e818f51500                CALL 0x006be840
0055f328  ffb7c40b0000              PUSH dword ptr [EDI + 0xbc4]
0055f32e  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
0055f332  8db03c030000              LEA ESI,[EAX + 0x33c]
0055f338  8d442414                  LEA EAX,[ESP + 0x14]
0055f33c  50                        PUSH EAX
0055f33d  e8be3b2b00                CALL 0x00812f00
0055f342  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0055f346  8d442444                  LEA EAX,[ESP + 0x44]
0055f34a  f30f5c442410              SUBSS XMM0,dword ptr [ESP + 0x10]
0055f350  51                        PUSH ECX
0055f351  c704240000f042            MOV dword ptr [ESP],0x42f00000
0055f358  8d4c2430                  LEA ECX,[ESP + 0x30]
0055f35c  50                        PUSH EAX
0055f35d  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0055f363  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0055f368  f30f5c44241c              SUBSS XMM0,dword ptr [ESP + 0x1c]
0055f36e  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
0055f374  e8870d4b00                CALL 0x00a10100
0055f379  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0055f37d  51                        PUSH ECX
0055f37e  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
0055f382  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0055f386  c7042400000000            MOV dword ptr [ESP],0x0
0055f38d  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0055f393  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0055f398  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
0055f39d  8d442414                  LEA EAX,[ESP + 0x14]
0055f3a1  50                        PUSH EAX
0055f3a2  8d442434                  LEA EAX,[ESP + 0x34]
0055f3a6  50                        PUSH EAX
0055f3a7  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0055f3ad  e8de6cedff                CALL 0x00436090
0055f3b2  eb0f                      JMP 0x0055f3c3
0055f3b4  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
0055f3b8  50                        PUSH EAX
0055f3b9  8d442414                  LEA EAX,[ESP + 0x14]
0055f3bd  50                        PUSH EAX
0055f3be  e83d3b2b00                CALL 0x00812f00
0055f3c3  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0055f3c8  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0055f3d0  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0055f3d4  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0055f3dc  0f28c1                    MOVAPS XMM0,XMM1
0055f3df  f30f114c242c              MOVSS dword ptr [ESP + 0x2c],XMM1
0055f3e5  f30f59c1                  MULSS XMM0,XMM1
0055f3e9  f30f114c2460              MOVSS dword ptr [ESP + 0x60],XMM1
0055f3ef  0f28ca                    MOVAPS XMM1,XMM2
0055f3f2  f30f59ca                  MULSS XMM1,XMM2
0055f3f6  f30f11542444              MOVSS dword ptr [ESP + 0x44],XMM2
0055f3fc  f30f1154245c              MOVSS dword ptr [ESP + 0x5c],XMM2
0055f402  f30f58c1                  ADDSS XMM0,XMM1
0055f406  e84566edff                CALL 0x00435a50
0055f40b  f30f102d54a3ba00          MOVSS XMM5,dword ptr [0x00baa354]
0055f413  0f2fc5                    COMISS XMM0,XMM5
0055f416  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0055f41c  762d                      JBE 0x0055f44b
0055f41e  8d4c245c                  LEA ECX,[ESP + 0x5c]
0055f422  e8990b4b00                CALL 0x00a0ffc0
0055f427  f30f102d54a3ba00          MOVSS XMM5,dword ptr [0x00baa354]
0055f42f  f30f1054245c              MOVSS XMM2,dword ptr [ESP + 0x5c]
0055f435  f30f104c2460              MOVSS XMM1,dword ptr [ESP + 0x60]
0055f43b  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0055f441  f30f59d5                  MULSS XMM2,XMM5
0055f445  f30f59cd                  MULSS XMM1,XMM5
0055f449  eb0c                      JMP 0x0055f457
0055f44b  f30f104c242c              MOVSS XMM1,dword ptr [ESP + 0x2c]
0055f451  f30f10542444              MOVSS XMM2,dword ptr [ESP + 0x44]
0055f457  f30f102504a9ba00          MOVSS XMM4,dword ptr [0x00baa904]
0055f45f  0f2fe0                    COMISS XMM4,XMM0
0055f462  8b5c2438                  MOV EBX,dword ptr [ESP + 0x38]
0055f466  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
0055f46e  7649                      JBE 0x0055f4b9
0055f470  f30f58d2                  ADDSS XMM2,XMM2
0055f474  f30f58c9                  ADDSS XMM1,XMM1
0055f478  f30f59d3                  MULSS XMM2,XMM3
0055f47c  f30f59cb                  MULSS XMM1,XMM3
0055f480  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
0055f488  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0055f490  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0055f498  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0055f4a0  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055f4a8  f30f59c5                  MULSS XMM0,XMM5
0055f4ac  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055f4b4  e9b9fcffff                JMP 0x0055f172
0055f4b9  0f28c3                    MOVAPS XMM0,XMM3
0055f4bc  f30f59d9                  MULSS XMM3,XMM1
0055f4c0  f30f59c2                  MULSS XMM0,XMM2
0055f4c4  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
0055f4cc  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0055f4d4  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0055f4dc  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0055f4e4  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055f4ec  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0055f4f4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055f4fc  e971fcffff                JMP 0x0055f172
0055f501  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055f508  0f84b8000000              JZ 0x0055f5c6
0055f50e  8d442444                  LEA EAX,[ESP + 0x44]
0055f512  0f57d2                    XORPS XMM2,XMM2
0055f515  50                        PUSH EAX
0055f516  8bcf                      MOV ECX,EDI
0055f518  e8b38d1700                CALL 0x006d82d0
0055f51d  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0055f525  8b5c2438                  MOV EBX,dword ptr [ESP + 0x38]
0055f529  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0055f52d  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0055f532  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0055f53a  f30f591554a3ba00          MULSS XMM2,dword ptr [0x00baa354]
0055f542  f30f59c1                  MULSS XMM0,XMM1
0055f546  f30f59d1                  MULSS XMM2,XMM1
0055f54a  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0055f552  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0055f55a  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0055f562  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0055f56a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055f572  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0055f57a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055f582  83fb0a                    CMP EBX,0xa
0055f585  0f84e7fbffff              JZ 0x0055f172
0055f58b  85f6                      TEST ESI,ESI
0055f58d  0f84dffbffff              JZ 0x0055f172
0055f593  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0055f59b  8bcf                      MOV ECX,EDI
0055f59d  6a07                      PUSH 0x7
0055f59f  6a00                      PUSH 0x0
0055f5a1  e8bab81600                CALL 0x006cae60
0055f5a6  84c0                      TEST AL,AL
0055f5a8  0f84c4fbffff              JZ 0x0055f172
0055f5ae  6a01                      PUSH 0x1
0055f5b0  8bcf                      MOV ECX,EDI
0055f5b2  e8999a1700                CALL 0x006d9050
0055f5b7  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0055f5c1  e9acfbffff                JMP 0x0055f172
0055f5c6  51                        PUSH ECX
0055f5c7  8d442430                  LEA EAX,[ESP + 0x30]
0055f5cb  c7042400000000            MOV dword ptr [ESP],0x0
0055f5d2  50                        PUSH EAX
0055f5d3  8bcf                      MOV ECX,EDI
0055f5d5  e866f61500                CALL 0x006bec40
0055f5da  f30f104c242c              MOVSS XMM1,dword ptr [ESP + 0x2c]
0055f5e0  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
0055f5e6  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0055f5ee  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0055f5f6  8b5c2438                  MOV EBX,dword ptr [ESP + 0x38]
0055f5fa  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
0055f600  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0055f606  83fb0a                    CMP EBX,0xa
0055f609  0f848b000000              JZ 0x0055f69a
0055f60f  85f6                      TEST ESI,ESI
0055f611  0f8483000000              JZ 0x0055f69a
0055f617  e844f91800                CALL 0x006eef60
0055f61c  a803                      TEST AL,0x3
0055f61e  7574                      JNZ 0x0055f694
0055f620  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0055f628  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
0055f630  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0055f638  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
0055f640  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0055f648  f30f1054242c              MOVSS XMM2,dword ptr [ESP + 0x2c]
0055f64e  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0055f656  f30f5cd0                  SUBSS XMM2,XMM0
0055f65a  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
0055f660  f30f5cc1                  SUBSS XMM0,XMM1
0055f664  f30f59d2                  MULSS XMM2,XMM2
0055f668  f30f59c0                  MULSS XMM0,XMM0
0055f66c  f30f58c2                  ADDSS XMM0,XMM2
0055f670  e8db63edff                CALL 0x00435a50
0055f675  f30f100d44aaba00          MOVSS XMM1,dword ptr [0x00baaa44]
0055f67d  0f2fc8                    COMISS XMM1,XMM0
0055f680  f30f104c2428              MOVSS XMM1,dword ptr [ESP + 0x28]
0055f686  7212                      JC 0x0055f69a
0055f688  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0055f692  eb06                      JMP 0x0055f69a
0055f694  f30f104c2428              MOVSS XMM1,dword ptr [ESP + 0x28]
0055f69a  0f28c1                    MOVAPS XMM0,XMM1
0055f69d  f30f59c1                  MULSS XMM0,XMM1
0055f6a1  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
0055f6a7  f30f59c9                  MULSS XMM1,XMM1
0055f6ab  f30f58c1                  ADDSS XMM0,XMM1
0055f6af  e89c63edff                CALL 0x00435a50
0055f6b4  f30f10542428              MOVSS XMM2,dword ptr [ESP + 0x28]
0055f6ba  0f57c9                    XORPS XMM1,XMM1
0055f6bd  0f2fc1                    COMISS XMM0,XMM1
0055f6c0  f30f105c2420              MOVSS XMM3,dword ptr [ESP + 0x20]
0055f6c6  7614                      JBE 0x0055f6dc
0055f6c8  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0055f6d0  f30f5ec8                  DIVSS XMM1,XMM0
0055f6d4  f30f59d1                  MULSS XMM2,XMM1
0055f6d8  f30f59d9                  MULSS XMM3,XMM1
0055f6dc  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
0055f6e4  f30f104c242c              MOVSS XMM1,dword ptr [ESP + 0x2c]
0055f6ea  f30f591dd0a9ba00          MULSS XMM3,dword ptr [0x00baa9d0]
0055f6f2  f30f5cca                  SUBSS XMM1,XMM2
0055f6f6  f30f10542430              MOVSS XMM2,dword ptr [ESP + 0x30]
0055f6fc  f30f5cd3                  SUBSS XMM2,XMM3
0055f700  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0055f708  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0055f710  0f28c1                    MOVAPS XMM0,XMM1
0055f713  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
0055f719  f30f59c1                  MULSS XMM0,XMM1
0055f71d  f30f114c2444              MOVSS dword ptr [ESP + 0x44],XMM1
0055f723  0f28ca                    MOVAPS XMM1,XMM2
0055f726  f30f59ca                  MULSS XMM1,XMM2
0055f72a  f30f1154242c              MOVSS dword ptr [ESP + 0x2c],XMM2
0055f730  f30f11542448              MOVSS dword ptr [ESP + 0x48],XMM2
0055f736  f30f58c1                  ADDSS XMM0,XMM1
0055f73a  e81163edff                CALL 0x00435a50
0055f73f  0f2f0554a3ba00            COMISS XMM0,dword ptr [0x00baa354]
0055f746  7627                      JBE 0x0055f76f
0055f748  8d4c2444                  LEA ECX,[ESP + 0x44]
0055f74c  e86f084b00                CALL 0x00a0ffc0
0055f751  f30f104c2444              MOVSS XMM1,dword ptr [ESP + 0x44]
0055f757  f30f10542448              MOVSS XMM2,dword ptr [ESP + 0x48]
0055f75d  f30f590d54a3ba00          MULSS XMM1,dword ptr [0x00baa354]
0055f765  f30f591554a3ba00          MULSS XMM2,dword ptr [0x00baa354]
0055f76d  eb0c                      JMP 0x0055f77b
0055f76f  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
0055f775  f30f1054242c              MOVSS XMM2,dword ptr [ESP + 0x2c]
0055f77b  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0055f783  f30f59c8                  MULSS XMM1,XMM0
0055f787  f30f59d0                  MULSS XMM2,XMM0
0055f78b  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
0055f793  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0055f79b  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0055f7a3  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0055f7ab  e934fdffff                JMP 0x0055f4e4
0055f7b0  85db                      TEST EBX,EBX
0055f7b2  7407                      JZ 0x0055f7bb
0055f7b4  8b03                      MOV EAX,dword ptr [EBX]
0055f7b6  8bcb                      MOV ECX,EBX
0055f7b8  ff5028                    CALL dword ptr [EAX + 0x28]
0055f7bb  ffb7c40b0000              PUSH dword ptr [EDI + 0xbc4]
0055f7c1  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
0055f7c5  e886642c00                CALL 0x00825c50
0055f7ca  8bd8                      MOV EBX,EAX
0055f7cc  85db                      TEST EBX,EBX
0055f7ce  752d                      JNZ 0x0055f7fd
0055f7d0  682817b600                PUSH 0xb61728
0055f7d5  6a04                      PUSH 0x4
0055f7d7  e8e41a4b00                CALL 0x00a112c0
0055f7dc  83c408                    ADD ESP,0x8
0055f7df  6a00                      PUSH 0x0
0055f7e1  6854bcb100                PUSH 0xb1bc54
0055f7e6  8d4f48                    LEA ECX,[EDI + 0x48]
0055f7e9  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0055f7f3  e888abeaff                CALL 0x0040a380
0055f7f8  e9b4e8ffff                JMP 0x0055e0b1
0055f7fd  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0055f803  8db3bc030000              LEA ESI,[EBX + 0x3bc]
0055f809  89833c030000              MOV dword ptr [EBX + 0x33c],EAX
0055f80f  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0055f815  898340030000              MOV dword ptr [EBX + 0x340],EAX
0055f81b  8b0e                      MOV ECX,dword ptr [ESI]
0055f81d  85c9                      TEST ECX,ECX
0055f81f  7414                      JZ 0x0055f835
0055f821  8d442410                  LEA EAX,[ESP + 0x10]
0055f825  89742410                  MOV dword ptr [ESP + 0x10],ESI
0055f829  50                        PUSH EAX
0055f82a  81c1cc030000              ADD ECX,0x3cc
0055f830  e8dbf9f6ff                CALL 0x004cf210
0055f835  56                        PUSH ESI
0055f836  8bcf                      MOV ECX,EDI
0055f838  893e                      MOV dword ptr [ESI],EDI
0055f83a  e8b1e4f6ff                CALL 0x004cdcf0
0055f83f  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0055f845  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
0055f84b  85c9                      TEST ECX,ECX
0055f84d  7414                      JZ 0x0055f863
0055f84f  8d442410                  LEA EAX,[ESP + 0x10]
0055f853  89742410                  MOV dword ptr [ESP + 0x10],ESI
0055f857  50                        PUSH EAX
0055f858  81c1cc030000              ADD ECX,0x3cc
0055f85e  e8adf9f6ff                CALL 0x004cf210
0055f863  56                        PUSH ESI
0055f864  8bcb                      MOV ECX,EBX
0055f866  891e                      MOV dword ptr [ESI],EBX
0055f868  e883e4f6ff                CALL 0x004cdcf0
0055f86d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0055f871  7409                      JZ 0x0055f87c
0055f873  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0055f87a  7567                      JNZ 0x0055f8e3
0055f87c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0055f886  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0055f890  85db                      TEST EBX,EBX
0055f892  743f                      JZ 0x0055f8d3
0055f894  817b28e8030000            CMP dword ptr [EBX + 0x28],0x3e8
0055f89b  7536                      JNZ 0x0055f8d3
0055f89d  8b8320040000              MOV EAX,dword ptr [EBX + 0x420]
0055f8a3  83f804                    CMP EAX,0x4
0055f8a6  7405                      JZ 0x0055f8ad
0055f8a8  83f816                    CMP EAX,0x16
0055f8ab  7526                      JNZ 0x0055f8d3
0055f8ad  807c242700                CMP byte ptr [ESP + 0x27],0x0
0055f8b2  751f                      JNZ 0x0055f8d3
0055f8b4  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055f8bb  7516                      JNZ 0x0055f8d3
0055f8bd  c787c40b0000feffffff      MOV dword ptr [EDI + 0xbc4],0xfffffffe
0055f8c7  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
0055f8d1  eb10                      JMP 0x0055f8e3
0055f8d3  c787c40b0000ffffffff      MOV dword ptr [EDI + 0xbc4],0xffffffff
0055f8dd  eb04                      JMP 0x0055f8e3
0055f8df  8b5c241c                  MOV EBX,dword ptr [ESP + 0x1c]
0055f8e3  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
0055f8e9  85c0                      TEST EAX,EAX
0055f8eb  7818                      JS 0x0055f905
0055f8ed  3dbf010000                CMP EAX,0x1bf
0055f8f2  7711                      JA 0x0055f905
0055f8f4  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
0055f8f8  ba02000000                MOV EDX,0x2
0055f8fd  668994416c0e0000          MOV word ptr [ECX + EAX*0x2 + 0xe6c],DX
0055f905  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0055f90c  0f84f0010000              JZ 0x0055fb02
0055f912  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0055f918  83f808                    CMP EAX,0x8
0055f91b  7405                      JZ 0x0055f922
0055f91d  83f810                    CMP EAX,0x10
0055f920  754b                      JNZ 0x0055f96d
0055f922  8b8fc40b0000              MOV ECX,dword ptr [EDI + 0xbc4]
0055f928  85c9                      TEST ECX,ECX
0055f92a  7841                      JS 0x0055f96d
0055f92c  81f9bf010000              CMP ECX,0x1bf
0055f932  7739                      JA 0x0055f96d
0055f934  a17816c700                MOV EAX,[0x00c71678]
0055f939  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0055f93f  8b448824                  MOV EAX,dword ptr [EAX + ECX*0x4 + 0x24]
0055f943  89442410                  MOV dword ptr [ESP + 0x10],EAX
0055f947  85c0                      TEST EAX,EAX
0055f949  7422                      JZ 0x0055f96d
0055f94b  8b00                      MOV EAX,dword ptr [EAX]
0055f94d  8d8c249c000000            LEA ECX,[ESP + 0x9c]
0055f954  57                        PUSH EDI
0055f955  8b7014                    MOV ESI,dword ptr [EAX + 0x14]
0055f958  e8b319edff                CALL 0x00431310
0055f95d  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
0055f961  8d84249c000000            LEA EAX,[ESP + 0x9c]
0055f968  50                        PUSH EAX
0055f969  6a00                      PUSH 0x0
0055f96b  ffd6                      CALL ESI
0055f96d  85db                      TEST EBX,EBX
0055f96f  0f840c010000              JZ 0x0055fa81
0055f975  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
0055f978  83f805                    CMP EAX,0x5
0055f97b  0f85a9000000              JNZ 0x0055fa2a
0055f981  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0055f989  8d8c249c000000            LEA ECX,[ESP + 0x9c]
0055f990  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0055f998  8b03                      MOV EAX,dword ptr [EBX]
0055f99a  57                        PUSH EDI
0055f99b  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0055f9a1  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0055f9a9  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0055f9b1  8b7054                    MOV ESI,dword ptr [EAX + 0x54]
0055f9b4  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0055f9ba  e85119edff                CALL 0x00431310
0055f9bf  51                        PUSH ECX
0055f9c0  c7042400000041            MOV dword ptr [ESP],0x41000000
0055f9c7  8d442414                  LEA EAX,[ESP + 0x14]
0055f9cb  50                        PUSH EAX
0055f9cc  8d8424a4000000            LEA EAX,[ESP + 0xa4]
0055f9d3  8bcb                      MOV ECX,EBX
0055f9d5  50                        PUSH EAX
0055f9d6  ffd6                      CALL ESI
0055f9d8  8b8bbc030000              MOV ECX,dword ptr [EBX + 0x3bc]
0055f9de  81c3bc030000              ADD EBX,0x3bc
0055f9e4  85c9                      TEST ECX,ECX
0055f9e6  7414                      JZ 0x0055f9fc
0055f9e8  8d442410                  LEA EAX,[ESP + 0x10]
0055f9ec  895c2410                  MOV dword ptr [ESP + 0x10],EBX
0055f9f0  50                        PUSH EAX
0055f9f1  81c1cc030000              ADD ECX,0x3cc
0055f9f7  e814f8f6ff                CALL 0x004cf210
0055f9fc  c70300000000              MOV dword ptr [EBX],0x0
0055fa02  8d9fec0b0000              LEA EBX,[EDI + 0xbec]
0055fa08  8b0b                      MOV ECX,dword ptr [EBX]
0055fa0a  85c9                      TEST ECX,ECX
0055fa0c  7414                      JZ 0x0055fa22
0055fa0e  8d442410                  LEA EAX,[ESP + 0x10]
0055fa12  895c2410                  MOV dword ptr [ESP + 0x10],EBX
0055fa16  50                        PUSH EAX
0055fa17  81c1cc030000              ADD ECX,0x3cc
0055fa1d  e8eef7f6ff                CALL 0x004cf210
0055fa22  c70300000000              MOV dword ptr [EBX],0x0
0055fa28  eb57                      JMP 0x0055fa81
0055fa2a  3de8030000                CMP EAX,0x3e8
0055fa2f  7549                      JNZ 0x0055fa7a
0055fa31  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0055fa39  8d442410                  LEA EAX,[ESP + 0x10]
0055fa3d  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0055fa45  8bcf                      MOV ECX,EDI
0055fa47  ffb350040000              PUSH dword ptr [EBX + 0x450]
0055fa4d  50                        PUSH EAX
0055fa4e  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0055fa54  8d8320040000              LEA EAX,[EBX + 0x420]
0055fa5a  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0055fa62  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0055fa6a  50                        PUSH EAX
0055fa6b  8d4348                    LEA EAX,[EBX + 0x48]
0055fa6e  50                        PUSH EAX
0055fa6f  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0055fa75  e8d69a1700                CALL 0x006d9550
0055fa7a  8b03                      MOV EAX,dword ptr [EBX]
0055fa7c  8bcb                      MOV ECX,EBX
0055fa7e  ff5028                    CALL dword ptr [EAX + 0x28]
0055fa81  837c245001                CMP dword ptr [ESP + 0x50],0x1
0055fa86  757a                      JNZ 0x0055fb02
0055fa88  8bb7fc0b0000              MOV ESI,dword ptr [EDI + 0xbfc]
0055fa8e  8bc6                      MOV EAX,ESI
0055fa90  8b97f80b0000              MOV EDX,dword ptr [EDI + 0xbf8]
0055fa96  8bce                      MOV ECX,ESI
0055fa98  c1e802                    SHR EAX,0x2
0055fa9b  4a                        DEC EDX
0055fa9c  23d0                      AND EDX,EAX
0055fa9e  83e103                    AND ECX,0x3
0055faa1  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
0055faa7  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
0055faaa  833c8800                  CMP dword ptr [EAX + ECX*0x4],0x0
0055faae  7422                      JZ 0x0055fad2
0055fab0  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
0055fab6  8bc6                      MOV EAX,ESI
0055fab8  c1e802                    SHR EAX,0x2
0055fabb  49                        DEC ECX
0055fabc  23c8                      AND ECX,EAX
0055fabe  83e603                    AND ESI,0x3
0055fac1  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
0055fac7  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0055faca  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
0055facd  8b01                      MOV EAX,dword ptr [ECX]
0055facf  ff5028                    CALL dword ptr [EAX + 0x28]
0055fad2  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0055fad8  85c9                      TEST ECX,ECX
0055fada  7426                      JZ 0x0055fb02
0055fadc  83792809                  CMP dword ptr [ECX + 0x28],0x9
0055fae0  7520                      JNZ 0x0055fb02
0055fae2  8b813c040000              MOV EAX,dword ptr [ECX + 0x43c]
0055fae8  81a138040000ffdfffff      AND dword ptr [ECX + 0x438],0xffffdfff
0055faf2  c78118040000cdcc4c3f      MOV dword ptr [ECX + 0x418],0x3f4ccccd
0055fafc  89813c040000              MOV dword ptr [ECX + 0x43c],EAX
0055fb02  8b8c24f4000000            MOV ECX,dword ptr [ESP + 0xf4]
0055fb09  5f                        POP EDI
0055fb0a  5e                        POP ESI
0055fb0b  5b                        POP EBX
0055fb0c  33cc                      XOR ECX,ESP
0055fb0e  e818f65800                CALL 0x00aef12b
0055fb13  8be5                      MOV ESP,EBP
0055fb15  5d                        POP EBP
0055fb16  c3                        RET
