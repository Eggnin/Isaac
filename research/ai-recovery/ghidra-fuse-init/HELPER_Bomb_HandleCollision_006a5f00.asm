; J460 NPC AI 0x006a5f00 HELPER_Bomb_HandleCollision
; types=4
; identities=4.*
; entry=006a5f00
006a5f00  55                        PUSH EBP
006a5f01  8bec                      MOV EBP,ESP
006a5f03  83e4f8                    AND ESP,0xfffffff8
006a5f06  83ec60                    SUB ESP,0x60
006a5f09  56                        PUSH ESI
006a5f0a  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
006a5f0d  57                        PUSH EDI
006a5f0e  ff750c                    PUSH dword ptr [EBP + 0xc]
006a5f11  8bf9                      MOV EDI,ECX
006a5f13  56                        PUSH ESI
006a5f14  57                        PUSH EDI
006a5f15  e836c31b00                CALL 0x00862250
006a5f1a  83f801                    CMP EAX,0x1
006a5f1d  0f8443010000              JZ 0x006a6066
006a5f23  83f8ff                    CMP EAX,-0x1
006a5f26  0f84d7090000              JZ 0x006a6903
006a5f2c  83bffc03000000            CMP dword ptr [EDI + 0x3fc],0x0
006a5f33  0f852d010000              JNZ 0x006a6066
006a5f39  8b5628                    MOV EDX,dword ptr [ESI + 0x28]
006a5f3c  83fa02                    CMP EDX,0x2
006a5f3f  7405                      JZ 0x006a5f46
006a5f41  83fa04                    CMP EDX,0x4
006a5f44  7534                      JNZ 0x006a5f7a
006a5f46  f30f100584adba00          MOVSS XMM0,dword ptr [0x00baad84]
006a5f4e  0f2f8750030000            COMISS XMM0,dword ptr [EDI + 0x350]
006a5f55  0f830b010000              JNC 0x006a6066
006a5f5b  0f57c9                    XORPS XMM1,XMM1
006a5f5e  0f2f8f1c040000            COMISS XMM1,dword ptr [EDI + 0x41c]
006a5f65  0f87fb000000              JA 0x006a6066
006a5f6b  8bcf                      MOV ECX,EDI
006a5f6d  e8bec0ffff                CALL 0x006a2030
006a5f72  84c0                      TEST AL,AL
006a5f74  0f85ec000000              JNZ 0x006a6066
006a5f7a  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a5f81  7466                      JZ 0x006a5fe9
006a5f83  83fa02                    CMP EDX,0x2
006a5f86  7561                      JNZ 0x006a5fe9
006a5f88  0f108e28040000            MOVUPS XMM1,xmmword ptr [ESI + 0x428]
006a5f8f  0f28c1                    MOVAPS XMM0,XMM1
006a5f92  660f7ec9                  MOVD ECX,XMM1
006a5f96  660f73d804                PSRLDQ XMM0,0x4
006a5f9b  660f7ec0                  MOVD EAX,XMM0
006a5f9f  0f28c1                    MOVAPS XMM0,XMM1
006a5fa2  230d8047c300              AND ECX,dword ptr [0x00c34780]
006a5fa8  894c2430                  MOV dword ptr [ESP + 0x30],ECX
006a5fac  23058447c300              AND EAX,dword ptr [0x00c34784]
006a5fb2  660f73d808                PSRLDQ XMM0,0x8
006a5fb7  89442434                  MOV dword ptr [ESP + 0x34],EAX
006a5fbb  660f7ec1                  MOVD ECX,XMM0
006a5fbf  660f73d90c                PSRLDQ XMM1,0xc
006a5fc4  660f7ec8                  MOVD EAX,XMM1
006a5fc8  230d8847c300              AND ECX,dword ptr [0x00c34788]
006a5fce  894c2438                  MOV dword ptr [ESP + 0x38],ECX
006a5fd2  8d4c2430                  LEA ECX,[ESP + 0x30]
006a5fd6  23058c47c300              AND EAX,dword ptr [0x00c3478c]
006a5fdc  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
006a5fe0  e8cb11d7ff                CALL 0x004171b0
006a5fe5  84c0                      TEST AL,AL
006a5fe7  757d                      JNZ 0x006a6066
006a5fe9  8bcf                      MOV ECX,EDI
006a5feb  e840c0ffff                CALL 0x006a2030
006a5ff0  84c0                      TEST AL,AL
006a5ff2  7416                      JZ 0x006a600a
006a5ff4  a17816c700                MOV EAX,[0x00c71678]
006a5ff9  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
006a5fff  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
006a6005  83f802                    CMP EAX,0x2
006a6008  7c5c                      JL 0x006a6066
006a600a  83fa05                    CMP EDX,0x5
006a600d  7405                      JZ 0x006a6014
006a600f  83fa06                    CMP EDX,0x6
006a6012  753c                      JNZ 0x006a6050
006a6014  e817c0ffff                CALL 0x006a2030
006a6019  84c0                      TEST AL,AL
006a601b  7449                      JZ 0x006a6066
006a601d  83fa05                    CMP EDX,0x5
006a6020  7516                      JNZ 0x006a6038
006a6022  837e2c33                  CMP dword ptr [ESI + 0x2c],0x33
006a6026  753e                      JNZ 0x006a6066
006a6028  837e3001                  CMP dword ptr [ESI + 0x30],0x1
006a602c  7466                      JZ 0x006a6094
006a602e  b001                      MOV AL,0x1
006a6030  5f                        POP EDI
006a6031  5e                        POP ESI
006a6032  8be5                      MOV ESP,EBP
006a6034  5d                        POP EBP
006a6035  c20800                    RET 0x8
006a6038  83fa06                    CMP EDX,0x6
006a603b  7513                      JNZ 0x006a6050
006a603d  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
006a6044  744e                      JZ 0x006a6094
006a6046  b001                      MOV AL,0x1
006a6048  5f                        POP EDI
006a6049  5e                        POP ESI
006a604a  8be5                      MOV ESP,EBP
006a604c  5d                        POP EBP
006a604d  c20800                    RET 0x8
006a6050  81fa8a030000              CMP EDX,0x38a
006a6056  740e                      JZ 0x006a6066
006a6058  81fa87030000              CMP EDX,0x387
006a605e  7510                      JNZ 0x006a6070
006a6060  837e2c0a                  CMP dword ptr [ESI + 0x2c],0xa
006a6064  752e                      JNZ 0x006a6094
006a6066  b001                      MOV AL,0x1
006a6068  5f                        POP EDI
006a6069  5e                        POP ESI
006a606a  8be5                      MOV ESP,EBP
006a606c  5d                        POP EBP
006a606d  c20800                    RET 0x8
006a6070  81fa95030000              CMP EDX,0x395
006a6076  7505                      JNZ 0x006a607d
006a6078  395734                    CMP dword ptr [EDI + 0x34],EDX
006a607b  ebe7                      JMP 0x006a6064
006a607d  81fa62030000              CMP EDX,0x362
006a6083  74e1                      JZ 0x006a6066
006a6085  83fa01                    CMP EDX,0x1
006a6088  741c                      JZ 0x006a60a6
006a608a  83fa03                    CMP EDX,0x3
006a608d  7417                      JZ 0x006a60a6
006a608f  83fa08                    CMP EDX,0x8
006a6092  7412                      JZ 0x006a60a6
006a6094  6a00                      PUSH 0x0
006a6096  6800000020                PUSH 0x20000000
006a609b  8bce                      MOV ECX,ESI
006a609d  e88e13d7ff                CALL 0x00417430
006a60a2  84c0                      TEST AL,AL
006a60a4  740b                      JZ 0x006a60b1
006a60a6  8bcf                      MOV ECX,EDI
006a60a8  e883bfffff                CALL 0x006a2030
006a60ad  84c0                      TEST AL,AL
006a60af  75b5                      JNZ 0x006a6066
006a60b1  837e2801                  CMP dword ptr [ESI + 0x28],0x1
006a60b5  0f858a000000              JNZ 0x006a6145
006a60bb  a17816c700                MOV EAX,[0x00c71678]
006a60c0  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006a60c7  7c0c                      JL 0x006a60d5
006a60c9  56                        PUSH ESI
006a60ca  8bcf                      MOV ECX,EDI
006a60cc  e8cf2e0000                CALL 0x006a8fa0
006a60d1  84c0                      TEST AL,AL
006a60d3  7470                      JZ 0x006a6145
006a60d5  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
006a60db  85c0                      TEST EAX,EAX
006a60dd  7406                      JZ 0x006a60e5
006a60df  83782803                  CMP dword ptr [EAX + 0x28],0x3
006a60e3  7481                      JZ 0x006a6066
006a60e5  6683bf3004000000          CMP word ptr [EDI + 0x430],0x0
006a60ed  7e16                      JLE 0x006a6105
006a60ef  b804000000                MOV EAX,0x4
006a60f4  66898730040000            MOV word ptr [EDI + 0x430],AX
006a60fb  b001                      MOV AL,0x1
006a60fd  5f                        POP EDI
006a60fe  5e                        POP ESI
006a60ff  8be5                      MOV ESP,EBP
006a6101  5d                        POP EBP
006a6102  c20800                    RET 0x8
006a6105  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
006a610d  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
006a6115  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
006a611d  f30f591580a2ba00          MULSS XMM2,dword ptr [0x00baa280]
006a6125  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
006a612d  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
006a6135  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
006a613d  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
006a6145  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
006a6148  83f901                    CMP ECX,0x1
006a614b  740a                      JZ 0x006a6157
006a614d  c644240f01                MOV byte ptr [ESP + 0xf],0x1
006a6152  83f909                    CMP ECX,0x9
006a6155  7505                      JNZ 0x006a615c
006a6157  c644240f00                MOV byte ptr [ESP + 0xf],0x0
006a615c  a17816c700                MOV EAX,[0x00c71678]
006a6161  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006a6168  7c11                      JL 0x006a617b
006a616a  83f901                    CMP ECX,0x1
006a616d  750c                      JNZ 0x006a617b
006a616f  56                        PUSH ESI
006a6170  8bcf                      MOV ECX,EDI
006a6172  e8292e0000                CALL 0x006a8fa0
006a6177  84c0                      TEST AL,AL
006a6179  740b                      JZ 0x006a6186
006a617b  807c240f00                CMP byte ptr [ESP + 0xf],0x0
006a6180  0f8424040000              JZ 0x006a65aa
006a6186  8bcf                      MOV ECX,EDI
006a6188  e8a3beffff                CALL 0x006a2030
006a618d  84c0                      TEST AL,AL
006a618f  754c                      JNZ 0x006a61dd
006a6191  8b0d504bc300              MOV ECX,dword ptr [0x00c34b50]
006a6197  238f38040000              AND ECX,dword ptr [EDI + 0x438]
006a619d  a1544bc300                MOV EAX,[0x00c34b54]
006a61a2  23873c040000              AND EAX,dword ptr [EDI + 0x43c]
006a61a8  894c2430                  MOV dword ptr [ESP + 0x30],ECX
006a61ac  8b8f40040000              MOV ECX,dword ptr [EDI + 0x440]
006a61b2  230d584bc300              AND ECX,dword ptr [0x00c34b58]
006a61b8  89442434                  MOV dword ptr [ESP + 0x34],EAX
006a61bc  8b8744040000              MOV EAX,dword ptr [EDI + 0x444]
006a61c2  23055c4bc300              AND EAX,dword ptr [0x00c34b5c]
006a61c8  894c2438                  MOV dword ptr [ESP + 0x38],ECX
006a61cc  8d4c2430                  LEA ECX,[ESP + 0x30]
006a61d0  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
006a61d4  e8d70fd7ff                CALL 0x004171b0
006a61d9  84c0                      TEST AL,AL
006a61db  7427                      JZ 0x006a6204
006a61dd  8d8fc8090000              LEA ECX,[EDI + 0x9c8]
006a61e3  56                        PUSH ESI
006a61e4  e857b4d8ff                CALL 0x00431640
006a61e9  84c0                      TEST AL,AL
006a61eb  0f8575feffff              JNZ 0x006a6066
006a61f1  8bce                      MOV ECX,ESI
006a61f3  e8b8000100                CALL 0x006b62b0
006a61f8  50                        PUSH EAX
006a61f9  8d8fc8090000              LEA ECX,[EDI + 0x9c8]
006a61ff  e86cb3d8ff                CALL 0x00431570
006a6204  3bb7bc030000              CMP ESI,dword ptr [EDI + 0x3bc]
006a620a  7520                      JNZ 0x006a622c
006a620c  6683bf3204000000          CMP word ptr [EDI + 0x432],0x0
006a6214  7e16                      JLE 0x006a622c
006a6216  b804000000                MOV EAX,0x4
006a621b  66898732040000            MOV word ptr [EDI + 0x432],AX
006a6222  b001                      MOV AL,0x1
006a6224  5f                        POP EDI
006a6225  5e                        POP ESI
006a6226  8be5                      MOV ESP,EBP
006a6228  5d                        POP EBP
006a6229  c20800                    RET 0x8
006a622c  8bcf                      MOV ECX,EDI
006a622e  e8fdbdffff                CALL 0x006a2030
006a6233  84c0                      TEST AL,AL
006a6235  0f8597000000              JNZ 0x006a62d2
006a623b  6a00                      PUSH 0x0
006a623d  8bce                      MOV ECX,ESI
006a623f  e81c630000                CALL 0x006ac560
006a6244  84c0                      TEST AL,AL
006a6246  7523                      JNZ 0x006a626b
006a6248  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
006a624b  83f806                    CMP EAX,0x6
006a624e  741b                      JZ 0x006a626b
006a6250  83f804                    CMP EAX,0x4
006a6253  0f8583000000              JNZ 0x006a62dc
006a6259  80be4804000000            CMP byte ptr [ESI + 0x448],0x0
006a6260  757a                      JNZ 0x006a62dc
006a6262  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a6269  7471                      JZ 0x006a62dc
006a626b  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
006a6271  230dc04bc300              AND ECX,dword ptr [0x00c34bc0]
006a6277  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
006a627d  2305c44bc300              AND EAX,dword ptr [0x00c34bc4]
006a6283  894c2430                  MOV dword ptr [ESP + 0x30],ECX
006a6287  8b8f40040000              MOV ECX,dword ptr [EDI + 0x440]
006a628d  230dc84bc300              AND ECX,dword ptr [0x00c34bc8]
006a6293  89442434                  MOV dword ptr [ESP + 0x34],EAX
006a6297  8b8744040000              MOV EAX,dword ptr [EDI + 0x444]
006a629d  2305cc4bc300              AND EAX,dword ptr [0x00c34bcc]
006a62a3  894c2438                  MOV dword ptr [ESP + 0x38],ECX
006a62a7  8d4c2430                  LEA ECX,[ESP + 0x30]
006a62ab  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
006a62af  e8fc0ed7ff                CALL 0x004171b0
006a62b4  84c0                      TEST AL,AL
006a62b6  751a                      JNZ 0x006a62d2
006a62b8  a17816c700                MOV EAX,[0x00c71678]
006a62bd  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006a62c3  83780810                  CMP dword ptr [EAX + 0x8],0x10
006a62c7  7513                      JNZ 0x006a62dc
006a62c9  83bf5c04000000            CMP dword ptr [EDI + 0x45c],0x0
006a62d0  7f0a                      JG 0x006a62dc
006a62d2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
006a62dc  8b0d3049c300              MOV ECX,dword ptr [0x00c34930]
006a62e2  238f38040000              AND ECX,dword ptr [EDI + 0x438]
006a62e8  a13449c300                MOV EAX,[0x00c34934]
006a62ed  23873c040000              AND EAX,dword ptr [EDI + 0x43c]
006a62f3  8b9740040000              MOV EDX,dword ptr [EDI + 0x440]
006a62f9  894c2430                  MOV dword ptr [ESP + 0x30],ECX
006a62fd  8bca                      MOV ECX,EDX
006a62ff  230d3849c300              AND ECX,dword ptr [0x00c34938]
006a6305  89442434                  MOV dword ptr [ESP + 0x34],EAX
006a6309  8b8744040000              MOV EAX,dword ptr [EDI + 0x444]
006a630f  23053c49c300              AND EAX,dword ptr [0x00c3493c]
006a6315  894c2438                  MOV dword ptr [ESP + 0x38],ECX
006a6319  8d4c2430                  LEA ECX,[ESP + 0x30]
006a631d  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
006a6321  8b8744040000              MOV EAX,dword ptr [EDI + 0x444]
006a6327  89442414                  MOV dword ptr [ESP + 0x14],EAX
006a632b  e8800ed7ff                CALL 0x004171b0
006a6330  84c0                      TEST AL,AL
006a6332  0f8499000000              JZ 0x006a63d1
006a6338  8bc2                      MOV EAX,EDX
006a633a  8bce                      MOV ECX,ESI
006a633c  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
006a6340  8b8744040000              MOV EAX,dword ptr [EDI + 0x444]
006a6346  89442414                  MOV dword ptr [ESP + 0x14],EAX
006a634a  e8e1610000                CALL 0x006ac530
006a634f  84c0                      TEST AL,AL
006a6351  747a                      JZ 0x006a63cd
006a6353  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
006a635a  8b8f40040000              MOV ECX,dword ptr [EDI + 0x440]
006a6360  8bd1                      MOV EDX,ECX
006a6362  8b8744040000              MOV EAX,dword ptr [EDI + 0x444]
006a6368  756b                      JNZ 0x006a63d5
006a636a  837e2821                  CMP dword ptr [ESI + 0x28],0x21
006a636e  7465                      JZ 0x006a63d5
006a6370  837e2811                  CMP dword ptr [ESI + 0x28],0x11
006a6374  745f                      JZ 0x006a63d5
006a6376  83bf5004000000            CMP dword ptr [EDI + 0x450],0x0
006a637d  8d8f50040000              LEA ECX,[EDI + 0x450]
006a6383  7550                      JNZ 0x006a63d5
006a6385  8931                      MOV dword ptr [ECX],ESI
006a6387  51                        PUSH ECX
006a6388  8bce                      MOV ECX,ESI
006a638a  e86179e2ff                CALL 0x004cdcf0
006a638f  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
006a6397  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
006a639f  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
006a63a7  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
006a63af  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
006a63b7  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
006a63bf  8b9740040000              MOV EDX,dword ptr [EDI + 0x440]
006a63c5  8b8744040000              MOV EAX,dword ptr [EDI + 0x444]
006a63cb  eb08                      JMP 0x006a63d5
006a63cd  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
006a63d1  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
006a63d5  8b0d3049c300              MOV ECX,dword ptr [0x00c34930]
006a63db  0b0dc04bc300              OR ECX,dword ptr [0x00c34bc0]
006a63e1  238f38040000              AND ECX,dword ptr [EDI + 0x438]
006a63e7  8b353449c300              MOV ESI,dword ptr [0x00c34934]
006a63ed  0b35c44bc300              OR ESI,dword ptr [0x00c34bc4]
006a63f3  23b73c040000              AND ESI,dword ptr [EDI + 0x43c]
006a63f9  894c2430                  MOV dword ptr [ESP + 0x30],ECX
006a63fd  8bce                      MOV ECX,ESI
006a63ff  8b353c49c300              MOV ESI,dword ptr [0x00c3493c]
006a6405  0b35cc4bc300              OR ESI,dword ptr [0x00c34bcc]
006a640b  894c2434                  MOV dword ptr [ESP + 0x34],ECX
006a640f  23f0                      AND ESI,EAX
006a6411  8b0d3849c300              MOV ECX,dword ptr [0x00c34938]
006a6417  0b0dc84bc300              OR ECX,dword ptr [0x00c34bc8]
006a641d  23ca                      AND ECX,EDX
006a641f  8974243c                  MOV dword ptr [ESP + 0x3c],ESI
006a6423  894c2438                  MOV dword ptr [ESP + 0x38],ECX
006a6427  8d4c2430                  LEA ECX,[ESP + 0x30]
006a642b  e800beeeff                CALL 0x00592230
006a6430  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
006a6433  84c0                      TEST AL,AL
006a6435  0f846f010000              JZ 0x006a65aa
006a643b  6a00                      PUSH 0x0
006a643d  8bce                      MOV ECX,ESI
006a643f  e81c610000                CALL 0x006ac560
006a6444  84c0                      TEST AL,AL
006a6446  0f845e010000              JZ 0x006a65aa
006a644c  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
006a6453  0f8551010000              JNZ 0x006a65aa
006a6459  f30f109788030000          MOVSS XMM2,dword ptr [EDI + 0x388]
006a6461  0f2f15e49fba00            COMISS XMM2,dword ptr [0x00ba9fe4]
006a6468  0f863c010000              JBE 0x006a65aa
006a646e  8b06                      MOV EAX,dword ptr [ESI]
006a6470  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
006a6478  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
006a6480  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006a6486  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
006a6489  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
006a648f  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
006a6493  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006a6496  89442440                  MOV dword ptr [ESP + 0x40],EAX
006a649a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a649d  89442444                  MOV dword ptr [ESP + 0x44],EAX
006a64a1  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
006a64a4  89442448                  MOV dword ptr [ESP + 0x48],EAX
006a64a8  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
006a64ab  8944244c                  MOV dword ptr [ESP + 0x4c],EAX
006a64af  8bc1                      MOV EAX,ECX
006a64b1  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
006a64b7  2500010000                AND EAX,0x100
006a64bc  83c800                    OR EAX,0x0
006a64bf  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006a64c7  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
006a64cd  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
006a64d5  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
006a64db  f30f114c245c              MOVSS dword ptr [ESP + 0x5c],XMM1
006a64e1  c744241801000000          MOV dword ptr [ESP + 0x18],0x1
006a64e9  7508                      JNZ 0x006a64f3
006a64eb  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
006a64f3  81e100000020              AND ECX,0x20000000
006a64f9  83c900                    OR ECX,0x0
006a64fc  7407                      JZ 0x006a6505
006a64fe  b902000000                MOV ECX,0x2
006a6503  eb02                      JMP 0x006a6507
006a6505  33c9                      XOR ECX,ECX
006a6507  81e200004000              AND EDX,0x400000
006a650d  33c0                      XOR EAX,EAX
006a650f  0bc2                      OR EAX,EDX
006a6511  7407                      JZ 0x006a651a
006a6513  b804000000                MOV EAX,0x4
006a6518  eb02                      JMP 0x006a651c
006a651a  33c0                      XOR EAX,EAX
006a651c  0b4c2418                  OR ECX,dword ptr [ESP + 0x18]
006a6520  0bc8                      OR ECX,EAX
006a6522  897c2464                  MOV dword ptr [ESP + 0x64],EDI
006a6526  6a1e                      PUSH 0x1e
006a6528  8d442444                  LEA EAX,[ESP + 0x44]
006a652c  894c2464                  MOV dword ptr [ESP + 0x64],ECX
006a6530  50                        PUSH EAX
006a6531  6a00                      PUSH 0x0
006a6533  6a00                      PUSH 0x0
006a6535  51                        PUSH ECX
006a6536  8bce                      MOV ECX,ESI
006a6538  f30f111424                MOVSS dword ptr [ESP],XMM2
006a653d  ff542430                  CALL dword ptr [ESP + 0x30]
006a6541  f30f104614                MOVSS XMM0,dword ptr [ESI + 0x14]
006a6546  0f2f8680030000            COMISS XMM0,dword ptr [ESI + 0x380]
006a654d  0f83bc000000              JNC 0x006a660f
006a6553  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
006a6559  230d504bc300              AND ECX,dword ptr [0x00c34b50]
006a655f  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
006a6565  2305544bc300              AND EAX,dword ptr [0x00c34b54]
006a656b  894c2430                  MOV dword ptr [ESP + 0x30],ECX
006a656f  8b8f40040000              MOV ECX,dword ptr [EDI + 0x440]
006a6575  230d584bc300              AND ECX,dword ptr [0x00c34b58]
006a657b  89442434                  MOV dword ptr [ESP + 0x34],EAX
006a657f  8b8744040000              MOV EAX,dword ptr [EDI + 0x444]
006a6585  23055c4bc300              AND EAX,dword ptr [0x00c34b5c]
006a658b  894c2438                  MOV dword ptr [ESP + 0x38],ECX
006a658f  8d4c2430                  LEA ECX,[ESP + 0x30]
006a6593  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
006a6597  e8140cd7ff                CALL 0x004171b0
006a659c  84c0                      TEST AL,AL
006a659e  756f                      JNZ 0x006a660f
006a65a0  c7878803000000000000      MOV dword ptr [EDI + 0x388],0x0
006a65aa  817e2894010000            CMP dword ptr [ESI + 0x28],0x194
006a65b1  750d                      JNZ 0x006a65c0
006a65b3  817e349b010000            CMP dword ptr [ESI + 0x34],0x19b
006a65ba  0f84a6faffff              JZ 0x006a6066
006a65c0  6a00                      PUSH 0x0
006a65c2  6800000020                PUSH 0x20000000
006a65c7  8bce                      MOV ECX,ESI
006a65c9  e8620ed7ff                CALL 0x00417430
006a65ce  84c0                      TEST AL,AL
006a65d0  0f8590faffff              JNZ 0x006a6066
006a65d6  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
006a65d9  3d23010000                CMP EAX,0x123
006a65de  0f8482faffff              JZ 0x006a6066
006a65e4  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
006a65e7  84c9                      TEST CL,CL
006a65e9  0f8472020000              JZ 0x006a6861
006a65ef  83f804                    CMP EAX,0x4
006a65f2  0f8560020000              JNZ 0x006a6858
006a65f8  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a65ff  0f848c020000              JZ 0x006a6891
006a6605  b001                      MOV AL,0x1
006a6607  5f                        POP EDI
006a6608  5e                        POP ESI
006a6609  8be5                      MOV ESP,EBP
006a660b  5d                        POP EBP
006a660c  c20800                    RET 0x8
006a660f  6a00                      PUSH 0x0
006a6611  6800000040                PUSH 0x40000000
006a6616  8bce                      MOV ECX,ESI
006a6618  e8130ed7ff                CALL 0x00417430
006a661d  84c0                      TEST AL,AL
006a661f  0f8541faffff              JNZ 0x006a6066
006a6625  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
006a662d  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
006a6635  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
006a663d  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
006a6645  0f28c1                    MOVAPS XMM0,XMM1
006a6648  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
006a664e  f30f59c1                  MULSS XMM0,XMM1
006a6652  f30f114c2434              MOVSS dword ptr [ESP + 0x34],XMM1
006a6658  0f28ca                    MOVAPS XMM1,XMM2
006a665b  f30f59ca                  MULSS XMM1,XMM2
006a665f  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
006a6665  f30f11542430              MOVSS dword ptr [ESP + 0x30],XMM2
006a666b  f30f58c1                  ADDSS XMM0,XMM1
006a666f  e8dcf3d8ff                CALL 0x00435a50
006a6674  0f2f0510a0ba00            COMISS XMM0,dword ptr [0x00baa010]
006a667b  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
006a6681  0f82dff9ffff              JC 0x006a6066
006a6687  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
006a668f  f30f5c8e64030000          SUBSS XMM1,dword ptr [ESI + 0x364]
006a6697  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
006a669f  f30f5c9660030000          SUBSS XMM2,dword ptr [ESI + 0x360]
006a66a7  0f28c1                    MOVAPS XMM0,XMM1
006a66aa  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
006a66b0  f30f59c1                  MULSS XMM0,XMM1
006a66b4  f30f114c242c              MOVSS dword ptr [ESP + 0x2c],XMM1
006a66ba  0f28ca                    MOVAPS XMM1,XMM2
006a66bd  f30f59ca                  MULSS XMM1,XMM2
006a66c1  f30f11542420              MOVSS dword ptr [ESP + 0x20],XMM2
006a66c7  f30f11542428              MOVSS dword ptr [ESP + 0x28],XMM2
006a66cd  f30f58c1                  ADDSS XMM0,XMM1
006a66d1  e87af3d8ff                CALL 0x00435a50
006a66d6  f30f108e70030000          MOVSS XMM1,dword ptr [ESI + 0x370]
006a66de  f30f588f70030000          ADDSS XMM1,dword ptr [EDI + 0x370]
006a66e6  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
006a66ee  0f2fc1                    COMISS XMM0,XMM1
006a66f1  0f86ad000000              JBE 0x006a67a4
006a66f7  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
006a66fd  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
006a6703  f30f594c2410              MULSS XMM1,dword ptr [ESP + 0x10]
006a6709  f30f59442414              MULSS XMM0,dword ptr [ESP + 0x14]
006a670f  f30f58c1                  ADDSS XMM0,XMM1
006a6713  0f57c9                    XORPS XMM1,XMM1
006a6716  0f2fc8                    COMISS XMM1,XMM0
006a6719  0f8685000000              JBE 0x006a67a4
006a671f  8d442420                  LEA EAX,[ESP + 0x20]
006a6723  50                        PUSH EAX
006a6724  8d4c242c                  LEA ECX,[ESP + 0x2c]
006a6728  e803993600                CALL 0x00a10030
006a672d  8bf0                      MOV ESI,EAX
006a672f  8d4c2430                  LEA ECX,[ESP + 0x30]
006a6733  8d442428                  LEA EAX,[ESP + 0x28]
006a6737  50                        PUSH EAX
006a6738  e8f3983600                CALL 0x00a10030
006a673d  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
006a6742  f30f1006                  MOVSS XMM0,dword ptr [ESI]
006a6746  f30f10542410              MOVSS XMM2,dword ptr [ESP + 0x10]
006a674c  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
006a6751  f30f5900                  MULSS XMM0,dword ptr [EAX]
006a6755  f30f58c8                  ADDSS XMM1,XMM0
006a6759  0f28c1                    MOVAPS XMM0,XMM1
006a675c  f30f594c2414              MULSS XMM1,dword ptr [ESP + 0x14]
006a6762  f30f59c2                  MULSS XMM0,XMM2
006a6766  f30f58c9                  ADDSS XMM1,XMM1
006a676a  f30f58c0                  ADDSS XMM0,XMM0
006a676e  f30f584c2414              ADDSS XMM1,dword ptr [ESP + 0x14]
006a6774  f30f58d0                  ADDSS XMM2,XMM0
006a6778  0f28c1                    MOVAPS XMM0,XMM1
006a677b  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
006a6781  f30f59c1                  MULSS XMM0,XMM1
006a6785  0f28ca                    MOVAPS XMM1,XMM2
006a6788  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
006a678e  f30f59ca                  MULSS XMM1,XMM2
006a6792  f30f58c1                  ADDSS XMM0,XMM1
006a6796  e8b5f2d8ff                CALL 0x00435a50
006a679b  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
006a679e  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
006a67a4  56                        PUSH ESI
006a67a5  8bcf                      MOV ECX,EDI
006a67a7  e864ba0000                CALL 0x006b2210
006a67ac  0f28c8                    MOVAPS XMM1,XMM0
006a67af  8bce                      MOV ECX,ESI
006a67b1  57                        PUSH EDI
006a67b2  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
006a67b8  e853ba0000                CALL 0x006b2210
006a67bd  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
006a67c3  f30f58c1                  ADDSS XMM0,XMM1
006a67c7  f30f5ec8                  DIVSS XMM1,XMM0
006a67cb  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
006a67d3  f30f5c8764030000          SUBSS XMM0,dword ptr [EDI + 0x364]
006a67db  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
006a67e1  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
006a67e9  f30f5c8f60030000          SUBSS XMM1,dword ptr [EDI + 0x360]
006a67f1  f30f59c0                  MULSS XMM0,XMM0
006a67f5  f30f59c9                  MULSS XMM1,XMM1
006a67f9  f30f58c1                  ADDSS XMM0,XMM1
006a67fd  e84ef2d8ff                CALL 0x00435a50
006a6802  f30f10542410              MOVSS XMM2,dword ptr [ESP + 0x10]
006a6808  b001                      MOV AL,0x1
006a680a  f30f5e54241c              DIVSS XMM2,dword ptr [ESP + 0x1c]
006a6810  f30f59d0                  MULSS XMM2,XMM0
006a6814  f30f59542418              MULSS XMM2,dword ptr [ESP + 0x18]
006a681a  f30f589660030000          ADDSS XMM2,dword ptr [ESI + 0x360]
006a6822  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
006a682a  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
006a6830  f30f5e54241c              DIVSS XMM2,dword ptr [ESP + 0x1c]
006a6836  f30f59d0                  MULSS XMM2,XMM0
006a683a  f30f59542418              MULSS XMM2,dword ptr [ESP + 0x18]
006a6840  f30f589664030000          ADDSS XMM2,dword ptr [ESI + 0x364]
006a6848  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
006a6850  5f                        POP EDI
006a6851  5e                        POP ESI
006a6852  8be5                      MOV ESP,EBP
006a6854  5d                        POP EBP
006a6855  c20800                    RET 0x8
006a6858  83f809                    CMP EAX,0x9
006a685b  0f8405f8ffff              JZ 0x006a6066
006a6861  83f802                    CMP EAX,0x2
006a6864  7519                      JNZ 0x006a687f
006a6866  837e3401                  CMP dword ptr [ESI + 0x34],0x1
006a686a  741c                      JZ 0x006a6888
006a686c  80bf4804000000            CMP byte ptr [EDI + 0x448],0x0
006a6873  7413                      JZ 0x006a6888
006a6875  b001                      MOV AL,0x1
006a6877  5f                        POP EDI
006a6878  5e                        POP ESI
006a6879  8be5                      MOV ESP,EBP
006a687b  5d                        POP EBP
006a687c  c20800                    RET 0x8
006a687f  83f808                    CMP EAX,0x8
006a6882  0f84def7ffff              JZ 0x006a6066
006a6888  84c9                      TEST CL,CL
006a688a  7477                      JZ 0x006a6903
006a688c  83f804                    CMP EAX,0x4
006a688f  750d                      JNZ 0x006a689e
006a6891  8bce                      MOV ECX,ESI
006a6893  e898b7ffff                CALL 0x006a2030
006a6898  84c0                      TEST AL,AL
006a689a  7567                      JNZ 0x006a6903
006a689c  eb05                      JMP 0x006a68a3
006a689e  83f83e                    CMP EAX,0x3e
006a68a1  7460                      JZ 0x006a6903
006a68a3  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
006a68ab  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
006a68b3  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
006a68bb  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
006a68c3  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
006a68cb  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
006a68d3  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006a68db  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006a68e3  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
006a68eb  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006a68f3  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006a68fb  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006a6903  5f                        POP EDI
006a6904  32c0                      XOR AL,AL
006a6906  5e                        POP ESI
006a6907  8be5                      MOV ESP,EBP
006a6909  5d                        POP EBP
006a690a  c20800                    RET 0x8
