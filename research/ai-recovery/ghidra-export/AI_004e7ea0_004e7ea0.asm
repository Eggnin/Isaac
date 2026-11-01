; J460 NPC AI 0x004e7ea0 AI_004e7ea0
; types=805
; identities=805.0.0
; entry=004e7ea0
004e7ea0  55                        PUSH EBP
004e7ea1  8bec                      MOV EBP,ESP
004e7ea3  81ec14010000              SUB ESP,0x114
004e7ea9  a1b493bf00                MOV EAX,[0x00bf93b4]
004e7eae  33c5                      XOR EAX,EBP
004e7eb0  8945fc                    MOV dword ptr [EBP + -0x4],EAX
004e7eb3  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004e7ebb  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
004e7ec3  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
004e7ecb  53                        PUSH EBX
004e7ecc  56                        PUSH ESI
004e7ecd  57                        PUSH EDI
004e7ece  8bf9                      MOV EDI,ECX
004e7ed0  8b87d4030000              MOV EAX,dword ptr [EDI + 0x3d4]
004e7ed6  89854cffffff              MOV dword ptr [EBP + 0xffffff4c],EAX
004e7edc  a17816c700                MOV EAX,[0x00c71678]
004e7ee1  8b9800830100              MOV EBX,dword ptr [EAX + 0x18300]
004e7ee7  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e7eed  85c0                      TEST EAX,EAX
004e7eef  0f8422020000              JZ 0x004e8117
004e7ef5  83f803                    CMP EAX,0x3
004e7ef8  0f84f3000000              JZ 0x004e7ff1
004e7efe  83f808                    CMP EAX,0x8
004e7f01  0f8561030000              JNZ 0x004e8268
004e7f07  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e7f0b  0f84d1000000              JZ 0x004e7fe2
004e7f11  68dcd2b100                PUSH 0xb1d2dc
004e7f16  8d4f78                    LEA ECX,[EDI + 0x78]
004e7f19  e8b22ef2ff                CALL 0x0040add0
004e7f1e  84c0                      TEST AL,AL
004e7f20  0f84a9000000              JZ 0x004e7fcf
004e7f26  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
004e7f2c  e8ff6ff5ff                CALL 0x0043ef30
004e7f31  0f2805a0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7a0]
004e7f38  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004e7f3e  0f118518ffffff            MOVUPS xmmword ptr [EBP + 0xffffff18],XMM0
004e7f45  8d8d7cffffff              LEA ECX,[EBP + 0xffffff7c]
004e7f4b  c78538ffffff9a99193e      MOV dword ptr [EBP + 0xffffff38],0x3e19999a
004e7f55  0f2805c0c9ba00            MOVAPS XMM0,xmmword ptr [0x00bac9c0]
004e7f5c  50                        PUSH EAX
004e7f5d  0f118528ffffff            MOVUPS xmmword ptr [EBP + 0xffffff28],XMM0
004e7f64  c7853cffffff9a99193e      MOV dword ptr [EBP + 0xffffff3c],0x3e19999a
004e7f6e  c78540ffffffcdcc4c3e      MOV dword ptr [EBP + 0xffffff40],0x3e4ccccd
004e7f78  e873f2f1ff                CALL 0x004071f0
004e7f7d  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
004e7f83  c78544ffffff00004041      MOV dword ptr [EBP + 0xffffff44],0x41400000
004e7f8d  50                        PUSH EAX
004e7f8e  6a06                      PUSH 0x6
004e7f90  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
004e7f96  c78548ffffff00000000      MOV dword ptr [EBP + 0xffffff48],0x0
004e7fa0  50                        PUSH EAX
004e7fa1  8d873c030000              LEA EAX,[EDI + 0x33c]
004e7fa7  8bcf                      MOV ECX,EDI
004e7fa9  50                        PUSH EAX
004e7faa  e831331e00                CALL 0x006cb2e0
004e7faf  51                        PUSH ECX
004e7fb0  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e7fb7  6a00                      PUSH 0x0
004e7fb9  6a02                      PUSH 0x2
004e7fbb  51                        PUSH ECX
004e7fbc  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e7fc3  8bcf                      MOV ECX,EDI
004e7fc5  6806010000                PUSH 0x106
004e7fca  e8d1eb1e00                CALL 0x006d6ba0
004e7fcf  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e7fd3  740d                      JZ 0x004e7fe2
004e7fd5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004e7fdc  0f8586020000              JNZ 0x004e8268
004e7fe2  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004e7fec  e977020000                JMP 0x004e8268
004e7ff1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e7ff5  7409                      JZ 0x004e8000
004e7ff7  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004e7ffe  756e                      JNZ 0x004e806e
004e8000  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004e8003  85f6                      TEST ESI,ESI
004e8005  7445                      JZ 0x004e804c
004e8007  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004e800b  8bc6                      MOV EAX,ESI
004e800d  7202                      JC 0x004e8011
004e800f  8b06                      MOV EAX,dword ptr [ESI]
004e8011  b954bcb100                MOV ECX,0xb1bc54
004e8016  8a10                      MOV DL,byte ptr [EAX]
004e8018  3a11                      CMP DL,byte ptr [ECX]
004e801a  751a                      JNZ 0x004e8036
004e801c  84d2                      TEST DL,DL
004e801e  7412                      JZ 0x004e8032
004e8020  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004e8023  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004e8026  750e                      JNZ 0x004e8036
004e8028  83c002                    ADD EAX,0x2
004e802b  83c102                    ADD ECX,0x2
004e802e  84d2                      TEST DL,DL
004e8030  75e4                      JNZ 0x004e8016
004e8032  33c0                      XOR EAX,EAX
004e8034  eb05                      JMP 0x004e803b
004e8036  1bc0                      SBB EAX,EAX
004e8038  83c801                    OR EAX,0x1
004e803b  85c0                      TEST EAX,EAX
004e803d  750d                      JNZ 0x004e804c
004e803f  384634                    CMP byte ptr [ESI + 0x34],AL
004e8042  742a                      JZ 0x004e806e
004e8044  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004e804a  7522                      JNZ 0x004e806e
004e804c  6a01                      PUSH 0x1
004e804e  6854bcb100                PUSH 0xb1bc54
004e8053  8d4f48                    LEA ECX,[EDI + 0x48]
004e8056  e87525f2ff                CALL 0x0040a5d0
004e805b  84c0                      TEST AL,AL
004e805d  740f                      JZ 0x004e806e
004e805f  8d4f78                    LEA ECX,[EDI + 0x78]
004e8062  e84921f2ff                CALL 0x0040a1b0
004e8067  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004e806e  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004e8073  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004e807a  0f86e8010000              JBE 0x004e8268
004e8080  e8db6e2000                CALL 0x006eef60
004e8085  33d2                      XOR EDX,EDX
004e8087  b903000000                MOV ECX,0x3
004e808c  f7f1                      DIV ECX
004e808e  85d2                      TEST EDX,EDX
004e8090  0f84d2010000              JZ 0x004e8268
004e8096  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004e8099  85f6                      TEST ESI,ESI
004e809b  7449                      JZ 0x004e80e6
004e809d  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004e80a1  8bc6                      MOV EAX,ESI
004e80a3  7202                      JC 0x004e80a7
004e80a5  8b06                      MOV EAX,dword ptr [ESI]
004e80a7  b9dcd2b100                MOV ECX,0xb1d2dc
004e80ac  0f1f4000                  NOP dword ptr [EAX]
004e80b0  8a10                      MOV DL,byte ptr [EAX]
004e80b2  3a11                      CMP DL,byte ptr [ECX]
004e80b4  751a                      JNZ 0x004e80d0
004e80b6  84d2                      TEST DL,DL
004e80b8  7412                      JZ 0x004e80cc
004e80ba  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004e80bd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004e80c0  750e                      JNZ 0x004e80d0
004e80c2  83c002                    ADD EAX,0x2
004e80c5  83c102                    ADD ECX,0x2
004e80c8  84d2                      TEST DL,DL
004e80ca  75e4                      JNZ 0x004e80b0
004e80cc  33c0                      XOR EAX,EAX
004e80ce  eb05                      JMP 0x004e80d5
004e80d0  1bc0                      SBB EAX,EAX
004e80d2  83c801                    OR EAX,0x1
004e80d5  85c0                      TEST EAX,EAX
004e80d7  750d                      JNZ 0x004e80e6
004e80d9  384634                    CMP byte ptr [ESI + 0x34],AL
004e80dc  742a                      JZ 0x004e8108
004e80de  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004e80e4  7522                      JNZ 0x004e8108
004e80e6  6a01                      PUSH 0x1
004e80e8  68dcd2b100                PUSH 0xb1d2dc
004e80ed  8d4f48                    LEA ECX,[EDI + 0x48]
004e80f0  e8db24f2ff                CALL 0x0040a5d0
004e80f5  84c0                      TEST AL,AL
004e80f7  740f                      JZ 0x004e8108
004e80f9  8d4f78                    LEA ECX,[EDI + 0x78]
004e80fc  e8af20f2ff                CALL 0x0040a1b0
004e8101  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004e8108  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004e8112  e951010000                JMP 0x004e8268
004e8117  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004e811f  f30f5cc2                  SUBSS XMM0,XMM2
004e8123  f30f5ec2                  DIVSS XMM0,XMM2
004e8127  f30f58c1                  ADDSS XMM0,XMM1
004e812b  f30f2cc8                  CVTTSS2SI ECX,XMM0
004e812f  85c9                      TEST ECX,ECX
004e8131  7862                      JS 0x004e8195
004e8133  8b730c                    MOV ESI,dword ptr [EBX + 0xc]
004e8136  3bce                      CMP ECX,ESI
004e8138  7d5b                      JGE 0x004e8195
004e813a  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e8142  f30f5cc3                  SUBSS XMM0,XMM3
004e8146  f30f5ec2                  DIVSS XMM0,XMM2
004e814a  f30f58c1                  ADDSS XMM0,XMM1
004e814e  f30f2cd0                  CVTTSS2SI EDX,XMM0
004e8152  85d2                      TEST EDX,EDX
004e8154  783f                      JS 0x004e8195
004e8156  3b5310                    CMP EDX,dword ptr [EBX + 0x10]
004e8159  7d3a                      JGE 0x004e8195
004e815b  8bc6                      MOV EAX,ESI
004e815d  0fafc2                    IMUL EAX,EDX
004e8160  03c1                      ADD EAX,ECX
004e8162  7831                      JS 0x004e8195
004e8164  99                        CDQ
004e8165  f7fe                      IDIV ESI
004e8167  660f6eca                  MOVD XMM1,EDX
004e816b  660f6ec0                  MOVD XMM0,EAX
004e816f  0f5bc9                    CVTDQ2PS XMM1,XMM1
004e8172  0f5bc0                    CVTDQ2PS XMM0,XMM0
004e8175  f30f59ca                  MULSS XMM1,XMM2
004e8179  f30f59c2                  MULSS XMM0,XMM2
004e817d  f30f58ca                  ADDSS XMM1,XMM2
004e8181  f30f58c3                  ADDSS XMM0,XMM3
004e8185  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
004e818d  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004e8195  0f280db0c7ba00            MOVAPS XMM1,xmmword ptr [0x00bac7b0]
004e819c  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e81a2  0f2815f0c5ba00            MOVAPS XMM2,xmmword ptr [0x00bac5f0]
004e81a9  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004e81af  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004e81b9  c7850cffffff00000000      MOV dword ptr [EBP + 0xffffff0c],0x0
004e81c3  c78510ffffff00000000      MOV dword ptr [EBP + 0xffffff10],0x0
004e81cd  c78514ffffff00000000      MOV dword ptr [EBP + 0xffffff14],0x0
004e81d7  3bc8                      CMP ECX,EAX
004e81d9  741d                      JZ 0x004e81f8
004e81db  f30f7e850cffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff0c]
004e81e3  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
004e81e9  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004e81ee  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
004e81f1  894128                    MOV dword ptr [ECX + 0x28],EAX
004e81f4  0f115110                  MOVUPS xmmword ptr [ECX + 0x10],XMM2
004e81f8  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004e81fb  85f6                      TEST ESI,ESI
004e81fd  7447                      JZ 0x004e8246
004e81ff  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004e8203  8bc6                      MOV EAX,ESI
004e8205  7202                      JC 0x004e8209
004e8207  8b06                      MOV EAX,dword ptr [ESI]
004e8209  b9f407b600                MOV ECX,0xb607f4
004e820e  6690                      NOP
004e8210  8a10                      MOV DL,byte ptr [EAX]
004e8212  3a11                      CMP DL,byte ptr [ECX]
004e8214  751a                      JNZ 0x004e8230
004e8216  84d2                      TEST DL,DL
004e8218  7412                      JZ 0x004e822c
004e821a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004e821d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004e8220  750e                      JNZ 0x004e8230
004e8222  83c002                    ADD EAX,0x2
004e8225  83c102                    ADD ECX,0x2
004e8228  84d2                      TEST DL,DL
004e822a  75e4                      JNZ 0x004e8210
004e822c  33c0                      XOR EAX,EAX
004e822e  eb05                      JMP 0x004e8235
004e8230  1bc0                      SBB EAX,EAX
004e8232  83c801                    OR EAX,0x1
004e8235  85c0                      TEST EAX,EAX
004e8237  750d                      JNZ 0x004e8246
004e8239  384634                    CMP byte ptr [ESI + 0x34],AL
004e823c  742a                      JZ 0x004e8268
004e823e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004e8244  7522                      JNZ 0x004e8268
004e8246  6a01                      PUSH 0x1
004e8248  68f407b600                PUSH 0xb607f4
004e824d  8d4f48                    LEA ECX,[EDI + 0x48]
004e8250  e87b23f2ff                CALL 0x0040a5d0
004e8255  84c0                      TEST AL,AL
004e8257  740f                      JZ 0x004e8268
004e8259  8d4f78                    LEA ECX,[EDI + 0x78]
004e825c  e84f1ff2ff                CALL 0x0040a1b0
004e8261  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004e8268  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004e8270  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
004e8277  9f                        LAHF
004e8278  f6c444                    TEST AH,0x44
004e827b  7a15                      JP 0x004e8292
004e827d  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004e8285  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004e828c  9f                        LAHF
004e828d  f6c444                    TEST AH,0x44
004e8290  7b38                      JNP 0x004e82ca
004e8292  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004e829a  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004e82a2  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004e82aa  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e82b2  f30f5ed0                  DIVSS XMM2,XMM0
004e82b6  f30f5ec8                  DIVSS XMM1,XMM0
004e82ba  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004e82c2  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004e82ca  83bd4cffffff00            CMP dword ptr [EBP + 0xffffff4c],0x0
004e82d1  0f8598000000              JNZ 0x004e836f
004e82d7  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
004e82df  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004e82e7  f30f5cc1                  SUBSS XMM0,XMM1
004e82eb  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
004e82f3  a17816c700                MOV EAX,[0x00c71678]
004e82f8  f30f5ec1                  DIVSS XMM0,XMM1
004e82fc  8b9800830100              MOV EBX,dword ptr [EAX + 0x18300]
004e8302  f30f58c2                  ADDSS XMM0,XMM2
004e8306  f30f2cc0                  CVTTSS2SI EAX,XMM0
004e830a  85c0                      TEST EAX,EAX
004e830c  7861                      JS 0x004e836f
004e830e  8b530c                    MOV EDX,dword ptr [EBX + 0xc]
004e8311  3bc2                      CMP EAX,EDX
004e8313  7d5a                      JGE 0x004e836f
004e8315  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004e831d  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004e8325  f30f5ec1                  DIVSS XMM0,XMM1
004e8329  f30f58c2                  ADDSS XMM0,XMM2
004e832d  f30f2cc8                  CVTTSS2SI ECX,XMM0
004e8331  85c9                      TEST ECX,ECX
004e8333  783a                      JS 0x004e836f
004e8335  3b4b10                    CMP ECX,dword ptr [EBX + 0x10]
004e8338  7d35                      JGE 0x004e836f
004e833a  0fafca                    IMUL ECX,EDX
004e833d  03c8                      ADD ECX,EAX
004e833f  81f9bf010000              CMP ECX,0x1bf
004e8345  7728                      JA 0x004e836f
004e8347  8bb48b6c070000            MOV ESI,dword ptr [EBX + ECX*0x4 + 0x76c]
004e834e  bfe8030000                MOV EDI,0x3e8
004e8353  8bc6                      MOV EAX,ESI
004e8355  99                        CDQ
004e8356  f7ff                      IDIV EDI
004e8358  81fa84030000              CMP EDX,0x384
004e835e  7d0f                      JGE 0x004e836f
004e8360  2bf2                      SUB ESI,EDX
004e8362  81c684030000              ADD ESI,0x384
004e8368  89b48b6c070000            MOV dword ptr [EBX + ECX*0x4 + 0x76c],ESI
004e836f  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
004e8372  5f                        POP EDI
004e8373  5e                        POP ESI
004e8374  33cd                      XOR ECX,EBP
004e8376  5b                        POP EBX
004e8377  e8af6d6000                CALL 0x00aef12b
004e837c  8be5                      MOV ESP,EBP
004e837e  5d                        POP EBP
004e837f  c3                        RET
