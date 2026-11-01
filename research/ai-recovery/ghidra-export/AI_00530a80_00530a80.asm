; J460 NPC AI 0x00530a80 AI_00530a80
; types=209
; identities=209.0.0
; entry=00530a80
00530a80  53                        PUSH EBX
00530a81  8bdc                      MOV EBX,ESP
00530a83  83ec08                    SUB ESP,0x8
00530a86  83e4f8                    AND ESP,0xfffffff8
00530a89  83c404                    ADD ESP,0x4
00530a8c  55                        PUSH EBP
00530a8d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00530a90  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00530a94  8bec                      MOV EBP,ESP
00530a96  6aff                      PUSH -0x1
00530a98  684547af00                PUSH 0xaf4745
00530a9d  64a100000000              MOV EAX,FS:[0x0]
00530aa3  50                        PUSH EAX
00530aa4  53                        PUSH EBX
00530aa5  81ec00010000              SUB ESP,0x100
00530aab  a1b493bf00                MOV EAX,[0x00bf93b4]
00530ab0  33c5                      XOR EAX,EBP
00530ab2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00530ab5  56                        PUSH ESI
00530ab6  57                        PUSH EDI
00530ab7  50                        PUSH EAX
00530ab8  8d45f4                    LEA EAX,[EBP + -0xc]
00530abb  64a300000000              MOV FS:[0x0],EAX
00530ac1  8bf9                      MOV EDI,ECX
00530ac3  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00530aca  0f8451080000              JZ 0x00531321
00530ad0  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00530ad7  747d                      JZ 0x00530b56
00530ad9  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00530ae1  0f2f0500aeba00            COMISS XMM0,dword ptr [0x00baae00]
00530ae8  0f863d080000              JBE 0x0053132b
00530aee  e86de41b00                CALL 0x006eef60
00530af3  33d2                      XOR EDX,EDX
00530af5  b903000000                MOV ECX,0x3
00530afa  f7f1                      DIV ECX
00530afc  85d2                      TEST EDX,EDX
00530afe  0f8527080000              JNZ 0x0053132b
00530b04  6aff                      PUSH -0x1
00530b06  52                        PUSH EDX
00530b07  52                        PUSH EDX
00530b08  68d2000000                PUSH 0xd2
00530b0d  8bcf                      MOV ECX,EDI
00530b0f  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00530b19  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00530b23  e808041900                CALL 0x006c0f30
00530b28  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
00530b2e  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
00530b35  898780030000              MOV dword ptr [EDI + 0x380],EAX
00530b3b  e820e41b00                CALL 0x006eef60
00530b40  33d2                      XOR EDX,EDX
00530b42  b914000000                MOV ECX,0x14
00530b47  f7f1                      DIV ECX
00530b49  03d1                      ADD EDX,ECX
00530b4b  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00530b51  e9d5070000                JMP 0x0053132b
00530b56  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00530b5d  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00530b65  0f8491000000              JZ 0x00530bfc
00530b6b  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00530b73  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00530b79  50                        PUSH EAX
00530b7a  e851771a00                CALL 0x006d82d0
00530b7f  8bc8                      MOV ECX,EAX
00530b81  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00530b85  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00530b8c  9f                        LAHF
00530b8d  f6c444                    TEST AH,0x44
00530b90  7a26                      JP 0x00530bb8
00530b92  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00530b97  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00530b9e  9f                        LAHF
00530b9f  f6c444                    TEST AH,0x44
00530ba2  7a14                      JP 0x00530bb8
00530ba4  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00530bac  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
00530bb6  eb44                      JMP 0x00530bfc
00530bb8  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00530bc0  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00530bc6  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00530bce  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
00530bd4  f30f58c3                  ADDSS XMM0,XMM3
00530bd8  c7850cffffff0000f041      MOV dword ptr [EBP + 0xffffff0c],0x41f00000
00530be2  0f2f05d0a8ba00            COMISS XMM0,dword ptr [0x00baa8d0]
00530be9  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00530bf1  0f46c1                    CMOVBE EAX,ECX
00530bf4  8b00                      MOV EAX,dword ptr [EAX]
00530bf6  8987b80b0000              MOV dword ptr [EDI + 0xbb8],EAX
00530bfc  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
00530c03  0f8526030000              JNZ 0x00530f2f
00530c09  a118ddb100                MOV EAX,[0x00b1dd18]
00530c0e  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
00530c14  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00530c1b  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
00530c22  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00530c25  894dc0                    MOV dword ptr [EBP + -0x40],ECX
00530c28  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
00530c2c  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00530c33  a130ddb100                MOV EAX,[0x00b1dd30]
00530c38  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00530c3e  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00530c45  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
00530c4c  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00530c4f  894dd8                    MOV dword ptr [EBP + -0x28],ECX
00530c52  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
00530c56  51                        PUSH ECX
00530c57  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00530c5b  8d45bc                    LEA EAX,[EBP + -0x44]
00530c5e  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00530c65  8bcf                      MOV ECX,EDI
00530c67  50                        PUSH EAX
00530c68  8d45d4                    LEA EAX,[EBP + -0x2c]
00530c6b  50                        PUSH EAX
00530c6c  e8bf061900                CALL 0x006c1330
00530c71  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00530c75  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00530c78  83fa10                    CMP EDX,0x10
00530c7b  7228                      JC 0x00530ca5
00530c7d  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00530c80  42                        INC EDX
00530c81  8bc1                      MOV EAX,ECX
00530c83  81fa00100000              CMP EDX,0x1000
00530c89  7210                      JC 0x00530c9b
00530c8b  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00530c8e  83c223                    ADD EDX,0x23
00530c91  2bc1                      SUB EAX,ECX
00530c93  83c0fc                    ADD EAX,-0x4
00530c96  83f81f                    CMP EAX,0x1f
00530c99  7749                      JA 0x00530ce4
00530c9b  52                        PUSH EDX
00530c9c  51                        PUSH ECX
00530c9d  e8bae45b00                CALL 0x00aef15c
00530ca2  83c408                    ADD ESP,0x8
00530ca5  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00530cac  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
00530caf  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00530cb6  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00530cbd  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00530cc1  83fa10                    CMP EDX,0x10
00530cc4  722e                      JC 0x00530cf4
00530cc6  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00530cc9  42                        INC EDX
00530cca  8bc1                      MOV EAX,ECX
00530ccc  81fa00100000              CMP EDX,0x1000
00530cd2  7216                      JC 0x00530cea
00530cd4  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00530cd7  83c223                    ADD EDX,0x23
00530cda  2bc1                      SUB EAX,ECX
00530cdc  83c0fc                    ADD EAX,-0x4
00530cdf  83f81f                    CMP EAX,0x1f
00530ce2  7606                      JBE 0x00530cea
00530ce4  ff159488b100              CALL dword ptr [0x00b18894]
00530cea  52                        PUSH EDX
00530ceb  51                        PUSH ECX
00530cec  e86be45b00                CALL 0x00aef15c
00530cf1  83c408                    ADD ESP,0x8
00530cf4  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00530cfa  2500080001                AND EAX,0x1000800
00530cff  c787340c00009a99993e      MOV dword ptr [EDI + 0xc34],0x3e99999a
00530d09  83c800                    OR EAX,0x0
00530d0c  746f                      JZ 0x00530d7d
00530d0e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00530d15  7566                      JNZ 0x00530d7d
00530d17  8bcf                      MOV ECX,EDI
00530d19  e822db1800                CALL 0x006be840
00530d1e  6a00                      PUSH 0x0
00530d20  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00530d26  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00530d2c  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00530d32  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00530d38  898d08ffffff              MOV dword ptr [EBP + 0xffffff08],ECX
00530d3e  8d8f14040000              LEA ECX,[EDI + 0x414]
00530d44  50                        PUSH EAX
00530d45  e8f63b2b00                CALL 0x007e4940
00530d4a  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
00530d51  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00530d59  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
00530d61  f30f59c1                  MULSS XMM0,XMM1
00530d65  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00530d6d  7e3f                      JLE 0x00530dae
00530d6f  f30f59c1                  MULSS XMM0,XMM1
00530d73  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00530d7b  eb31                      JMP 0x00530dae
00530d7d  51                        PUSH ECX
00530d7e  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00530d84  c7042400000000            MOV dword ptr [ESP],0x0
00530d8b  50                        PUSH EAX
00530d8c  8bcf                      MOV ECX,EDI
00530d8e  e8adde1800                CALL 0x006bec40
00530d93  6a01                      PUSH 0x1
00530d95  6884030000                PUSH 0x384
00530d9a  51                        PUSH ECX
00530d9b  c704249a99993e            MOV dword ptr [ESP],0x3e99999a
00530da2  8d8f14040000              LEA ECX,[EDI + 0x414]
00530da8  50                        PUSH EAX
00530da9  e812262b00                CALL 0x007e33c0
00530dae  e8ade11b00                CALL 0x006eef60
00530db3  33d2                      XOR EDX,EDX
00530db5  be32000000                MOV ESI,0x32
00530dba  f7f6                      DIV ESI
00530dbc  85d2                      TEST EDX,EDX
00530dbe  751c                      JNZ 0x00530ddc
00530dc0  51                        PUSH ECX
00530dc1  c704240000803f            MOV dword ptr [ESP],0x3f800000
00530dc8  52                        PUSH EDX
00530dc9  6a28                      PUSH 0x28
00530dcb  51                        PUSH ECX
00530dcc  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00530dd3  8bcf                      MOV ECX,EDI
00530dd5  6a74                      PUSH 0x74
00530dd7  e8c45d1a00                CALL 0x006d6ba0
00530ddc  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00530de3  740e                      JZ 0x00530df3
00530de5  6a09                      PUSH 0x9
00530de7  8bcf                      MOV ECX,EDI
00530de9  e872741a00                CALL 0x006d8260
00530dee  0fb6d0                    MOVZX EDX,AL
00530df1  eb0e                      JMP 0x00530e01
00530df3  e868e11b00                CALL 0x006eef60
00530df8  33d2                      XOR EDX,EDX
00530dfa  f7f6                      DIV ESI
00530dfc  f7da                      NEG EDX
00530dfe  1bd2                      SBB EDX,EDX
00530e00  42                        INC EDX
00530e01  85d2                      TEST EDX,EDX
00530e03  0f8422050000              JZ 0x0053132b
00530e09  6a00                      PUSH 0x0
00530e0b  68000a0001                PUSH 0x1000a00
00530e10  8bcf                      MOV ECX,EDI
00530e12  e81966eeff                CALL 0x00417430
00530e17  84c0                      TEST AL,AL
00530e19  0f850c050000              JNZ 0x0053132b
00530e1f  51                        PUSH ECX
00530e20  c704240000803f            MOV dword ptr [ESP],0x3f800000
00530e27  6a00                      PUSH 0x0
00530e29  6a02                      PUSH 0x2
00530e2b  51                        PUSH ECX
00530e2c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00530e33  8bcf                      MOV ECX,EDI
00530e35  6a26                      PUSH 0x26
00530e37  e8645d1a00                CALL 0x006d6ba0
00530e3c  8bcf                      MOV ECX,EDI
00530e3e  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00530e48  e8f3d91800                CALL 0x006be840
00530e4d  8bcf                      MOV ECX,EDI
00530e4f  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00530e57  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00530e5f  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00530e67  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00530e6f  e8ccd91800                CALL 0x006be840
00530e74  8db734030000              LEA ESI,[EDI + 0x334]
00530e7a  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
00530e82  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
00530e8a  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00530e92  a17816c700                MOV EAX,[0x00c71678]
00530e97  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00530e9f  f30f589504ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff04]
00530ea7  f30f588d0cffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff0c]
00530eaf  f30f119504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM2
00530eb7  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
00530ebd  f30f110e                  MOVSS dword ptr [ESI],XMM1
00530ec1  f30f115604                MOVSS dword ptr [ESI + 0x4],XMM2
00530ec6  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00530ecc  8bc8                      MOV ECX,EAX
00530ece  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
00530ed6  ffb500ffffff              PUSH dword ptr [EBP + 0xffffff00]
00530edc  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00530ee2  e899f82b00                CALL 0x007f0780
00530ee7  85c0                      TEST EAX,EAX
00530ee9  742b                      JZ 0x00530f16
00530eeb  6a00                      PUSH 0x0
00530eed  6a00                      PUSH 0x0
00530eef  6a00                      PUSH 0x0
00530ef1  51                        PUSH ECX
00530ef2  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
00530ef8  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
00530efe  c704240000f042            MOV dword ptr [ESP],0x42f00000
00530f05  56                        PUSH ESI
00530f06  50                        PUSH EAX
00530f07  e814262e00                CALL 0x00813520
00530f0c  8b08                      MOV ECX,dword ptr [EAX]
00530f0e  890e                      MOV dword ptr [ESI],ECX
00530f10  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00530f13  894604                    MOV dword ptr [ESI + 0x4],EAX
00530f16  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
00530f20  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00530f2a  e9fc030000                JMP 0x0053132b
00530f2f  83bf100400000a            CMP dword ptr [EDI + 0x410],0xa
00530f36  0f8e23010000              JLE 0x0053105f
00530f3c  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00530f43  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
00530f4b  f30f58158ca0ba00          ADDSS XMM2,dword ptr [0x00baa08c]
00530f53  f30f5dd3                  MINSS XMM2,XMM3
00530f57  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
00530f5f  0f84b8000000              JZ 0x0053101d
00530f65  68b0d3b100                PUSH 0xb1d3b0
00530f6a  8d4f48                    LEA ECX,[EDI + 0x48]
00530f6d  e81ea1edff                CALL 0x0040b090
00530f72  8bcf                      MOV ECX,EDI
00530f74  84c0                      TEST AL,AL
00530f76  745a                      JZ 0x00530fd2
00530f78  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00530f7e  0f57d2                    XORPS XMM2,XMM2
00530f81  50                        PUSH EAX
00530f82  e849731a00                CALL 0x006d82d0
00530f87  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00530f8f  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00530f94  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00530f98  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00530fa0  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
00530fa8  f30f59c1                  MULSS XMM0,XMM1
00530fac  f30f59d1                  MULSS XMM2,XMM1
00530fb0  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00530fb8  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00530fc0  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00530fc8  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00530fd0  eb31                      JMP 0x00531003
00530fd2  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00530fda  f30f5905a0a1ba00          MULSS XMM0,dword ptr [0x00baa1a0]
00530fe2  f30f1015c0a4ba00          MOVSS XMM2,dword ptr [0x00baa4c0]
00530fea  f30f101dd0a8ba00          MOVSS XMM3,dword ptr [0x00baa8d0]
00530ff2  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
00530ffa  f30f5cd0                  SUBSS XMM2,XMM0
00530ffe  e81d831a00                CALL 0x006d9320
00531003  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00531009  898734030000              MOV dword ptr [EDI + 0x334],EAX
0053100f  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00531015  898738030000              MOV dword ptr [EDI + 0x338],EAX
0053101b  eb42                      JMP 0x0053105f
0053101d  f30f5cda                  SUBSS XMM3,XMM2
00531021  0f28ca                    MOVAPS XMM1,XMM2
00531024  f30f598f34030000          MULSS XMM1,dword ptr [EDI + 0x334]
0053102c  f30f599738030000          MULSS XMM2,dword ptr [EDI + 0x338]
00531034  0f28c3                    MOVAPS XMM0,XMM3
00531037  f30f599f40030000          MULSS XMM3,dword ptr [EDI + 0x340]
0053103f  f30f59873c030000          MULSS XMM0,dword ptr [EDI + 0x33c]
00531047  f30f58da                  ADDSS XMM3,XMM2
0053104b  f30f58c8                  ADDSS XMM1,XMM0
0053104f  f30f119f40030000          MOVSS dword ptr [EDI + 0x340],XMM3
00531057  f30f118f3c030000          MOVSS dword ptr [EDI + 0x33c],XMM1
0053105f  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00531067  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0053106f  2bc8                      SUB ECX,EAX
00531071  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00531077  018f10040000              ADD dword ptr [EDI + 0x410],ECX
0053107d  83f806                    CMP EAX,0x6
00531080  755d                      JNZ 0x005310df
00531082  6a00                      PUSH 0x0
00531084  6860d5b100                PUSH 0xb1d560
00531089  8d4f48                    LEA ECX,[EDI + 0x48]
0053108c  e8ef92edff                CALL 0x0040a380
00531091  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00531099  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005310a1  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005310ab  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
005310b5  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005310bd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005310c1  740d                      JZ 0x005310d0
005310c3  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005310ca  0f855b020000              JNZ 0x0053132b
005310d0  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
005310da  e94c020000                JMP 0x0053132b
005310df  83f807                    CMP EAX,0x7
005310e2  0f8543020000              JNZ 0x0053132b
005310e8  6a00                      PUSH 0x0
005310ea  6874d5b100                PUSH 0xb1d574
005310ef  8d4f48                    LEA ECX,[EDI + 0x48]
005310f2  e88992edff                CALL 0x0040a380
005310f7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005310ff  8d4f48                    LEA ECX,[EDI + 0x48]
00531102  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0053110a  682011b600                PUSH 0xb61120
0053110f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00531117  e8149fedff                CALL 0x0040b030
0053111c  84c0                      TEST AL,AL
0053111e  0f84a6010000              JZ 0x005312ca
00531124  51                        PUSH ECX
00531125  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053112c  6a00                      PUSH 0x0
0053112e  6a02                      PUSH 0x2
00531130  51                        PUSH ECX
00531131  c704240000803f            MOV dword ptr [ESP],0x3f800000
00531138  8bcf                      MOV ECX,EDI
0053113a  68b2000000                PUSH 0xb2
0053113f  e85c5a1a00                CALL 0x006d6ba0
00531144  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
0053114a  e8e1ddf0ff                CALL 0x0043ef30
0053114f  e80cde1b00                CALL 0x006eef60
00531154  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
0053115a  e8d1ddf0ff                CALL 0x0043ef30
0053115f  50                        PUSH EAX
00531160  6a09                      PUSH 0x9
00531162  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00531168  c78508ffffff00004041      MOV dword ptr [EBP + 0xffffff08],0x41400000
00531172  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00531178  c7850cffffff0000c040      MOV dword ptr [EBP + 0xffffff0c],0x40c00000
00531182  50                        PUSH EAX
00531183  51                        PUSH ECX
00531184  8bcf                      MOV ECX,EDI
00531186  e855a11900                CALL 0x006cb2e0
0053118b  c7850cffffff05000000      MOV dword ptr [EBP + 0xffffff0c],0x5
00531195  e8c6dd1b00                CALL 0x006eef60
0053119a  8bf0                      MOV ESI,EAX
0053119c  e8bfdd1b00                CALL 0x006eef60
005311a1  660f6ec0                  MOVD XMM0,EAX
005311a5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005311a9  c1e81f                    SHR EAX,0x1f
005311ac  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005311b5  660f5ac0                  CVTPD2PS XMM0,XMM0
005311b9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005311c1  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005311c9  f30f58c0                  ADDSS XMM0,XMM0
005311cd  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
005311d5  e886dd1b00                CALL 0x006eef60
005311da  660f6ec0                  MOVD XMM0,EAX
005311de  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005311e2  c1e81f                    SHR EAX,0x1f
005311e5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005311ee  660f5ac0                  CVTPD2PS XMM0,XMM0
005311f2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005311fa  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
00531202  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
0053120a  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
00531212  e829c3eeff                CALL 0x0041d540
00531217  f30f598504ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff04]
0053121f  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00531227  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0053122f  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
00531237  e8e4c2eeff                CALL 0x0041d520
0053123c  f30f598504ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff04]
00531244  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
0053124a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00531250  6a00                      PUSH 0x0
00531252  68acd5c500                PUSH 0xc5d5ac
00531257  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0053125f  68dcd5c500                PUSH 0xc5d5dc
00531264  6a00                      PUSH 0x0
00531266  56                        PUSH ESI
00531267  6a00                      PUSH 0x0
00531269  57                        PUSH EDI
0053126a  6840b6c700                PUSH 0xc7b640
0053126f  50                        PUSH EAX
00531270  6a16                      PUSH 0x16
00531272  68e8030000                PUSH 0x3e8
00531277  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0053127f  e89c78efff                CALL 0x00428b20
00531284  50                        PUSH EAX
00531285  e827f65b00                CALL 0x00af08b1
0053128a  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00531292  83c414                    ADD ESP,0x14
00531295  83ad0cffffff01            SUB dword ptr [EBP + 0xffffff0c],0x1
0053129c  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
005312a4  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
005312ac  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
005312b4  f30f1188e4000000          MOVSS dword ptr [EAX + 0xe4],XMM1
005312bc  f30f1180e8000000          MOVSS dword ptr [EAX + 0xe8],XMM0
005312c4  0f85cbfeffff              JNZ 0x00531195
005312ca  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005312ce  7451                      JZ 0x00531321
005312d0  68b0d3b100                PUSH 0xb1d3b0
005312d5  8d4f78                    LEA ECX,[EDI + 0x78]
005312d8  e8f39aedff                CALL 0x0040add0
005312dd  84c0                      TEST AL,AL
005312df  7431                      JZ 0x00531312
005312e1  51                        PUSH ECX
005312e2  c704240000803f            MOV dword ptr [ESP],0x3f800000
005312e9  6a00                      PUSH 0x0
005312eb  6a02                      PUSH 0x2
005312ed  51                        PUSH ECX
005312ee  c7042400000040            MOV dword ptr [ESP],0x40000000
005312f5  8bcf                      MOV ECX,EDI
005312f7  6a48                      PUSH 0x48
005312f9  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00531303  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
0053130d  e88e581a00                CALL 0x006d6ba0
00531312  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00531316  7409                      JZ 0x00531321
00531318  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053131f  750a                      JNZ 0x0053132b
00531321  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053132b  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0053132e  64890d00000000            MOV dword ptr FS:[0x0],ECX
00531335  59                        POP ECX
00531336  5f                        POP EDI
00531337  5e                        POP ESI
00531338  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0053133b  33cd                      XOR ECX,EBP
0053133d  e8e9dd5b00                CALL 0x00aef12b
00531342  8be5                      MOV ESP,EBP
00531344  5d                        POP EBP
00531345  8be3                      MOV ESP,EBX
00531347  5b                        POP EBX
00531348  c3                        RET
