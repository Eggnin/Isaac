; J460 NPC AI 0x00474e00 AI_00474e00
; types=47
; identities=47.0.0,47.1.0
; entry=00474e00
00474e00  55                        PUSH EBP
00474e01  8bec                      MOV EBP,ESP
00474e03  6aff                      PUSH -0x1
00474e05  68e529af00                PUSH 0xaf29e5
00474e0a  64a100000000              MOV EAX,FS:[0x0]
00474e10  50                        PUSH EAX
00474e11  83ec4c                    SUB ESP,0x4c
00474e14  a1b493bf00                MOV EAX,[0x00bf93b4]
00474e19  33c5                      XOR EAX,EBP
00474e1b  8945f0                    MOV dword ptr [EBP + -0x10],EAX
00474e1e  53                        PUSH EBX
00474e1f  56                        PUSH ESI
00474e20  57                        PUSH EDI
00474e21  50                        PUSH EAX
00474e22  8d45f4                    LEA EAX,[EBP + -0xc]
00474e25  64a300000000              MOV FS:[0x0],EAX
00474e2b  8bd9                      MOV EBX,ECX
00474e2d  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00474e35  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
00474e3d  6a00                      PUSH 0x0
00474e3f  6a07                      PUSH 0x7
00474e41  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00474e49  e8c2782300                CALL 0x006ac710
00474e4e  84c0                      TEST AL,AL
00474e50  744b                      JZ 0x00474e9d
00474e52  837b2c01                  CMP dword ptr [EBX + 0x2c],0x1
00474e56  7545                      JNZ 0x00474e9d
00474e58  e803a12700                CALL 0x006eef60
00474e5d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00474e63  6a00                      PUSH 0x0
00474e65  68acd5c500                PUSH 0xc5d5ac
00474e6a  68dcd5c500                PUSH 0xc5d5dc
00474e6f  6a00                      PUSH 0x0
00474e71  50                        PUSH EAX
00474e72  6a00                      PUSH 0x0
00474e74  53                        PUSH EBX
00474e75  6840b6c700                PUSH 0xc7b640
00474e7a  8d833c030000              LEA EAX,[EBX + 0x33c]
00474e80  50                        PUSH EAX
00474e81  6a16                      PUSH 0x16
00474e83  68e8030000                PUSH 0x3e8
00474e88  e8933cfbff                CALL 0x00428b20
00474e8d  50                        PUSH EAX
00474e8e  e81eba6700                CALL 0x00af08b1
00474e93  83c414                    ADD ESP,0x14
00474e96  8bc8                      MOV ECX,EAX
00474e98  8b10                      MOV EDX,dword ptr [EAX]
00474e9a  ff520c                    CALL dword ptr [EDX + 0xc]
00474e9d  a118ddb100                MOV EAX,[0x00b1dd18]
00474ea2  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
00474ea8  c745d40f000000            MOV dword ptr [EBP + -0x2c],0xf
00474eaf  c745d008000000            MOV dword ptr [EBP + -0x30],0x8
00474eb6  8945c0                    MOV dword ptr [EBP + -0x40],EAX
00474eb9  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
00474ebc  c645c800                  MOV byte ptr [EBP + -0x38],0x0
00474ec0  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00474ec7  a130ddb100                MOV EAX,[0x00b1dd30]
00474ecc  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00474ed2  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
00474ed9  c745e808000000            MOV dword ptr [EBP + -0x18],0x8
00474ee0  8945d8                    MOV dword ptr [EBP + -0x28],EAX
00474ee3  894ddc                    MOV dword ptr [EBP + -0x24],ECX
00474ee6  c645e000                  MOV byte ptr [EBP + -0x20],0x0
00474eea  51                        PUSH ECX
00474eeb  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00474eef  8d45c0                    LEA EAX,[EBP + -0x40]
00474ef2  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00474ef9  8bcb                      MOV ECX,EBX
00474efb  50                        PUSH EAX
00474efc  8d45d8                    LEA EAX,[EBP + -0x28]
00474eff  50                        PUSH EAX
00474f00  e82bc42400                CALL 0x006c1330
00474f05  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00474f09  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
00474f0c  83fa10                    CMP EDX,0x10
00474f0f  7228                      JC 0x00474f39
00474f11  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
00474f14  42                        INC EDX
00474f15  8bc1                      MOV EAX,ECX
00474f17  81fa00100000              CMP EDX,0x1000
00474f1d  7210                      JC 0x00474f2f
00474f1f  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00474f22  83c223                    ADD EDX,0x23
00474f25  2bc1                      SUB EAX,ECX
00474f27  83c0fc                    ADD EAX,-0x4
00474f2a  83f81f                    CMP EAX,0x1f
00474f2d  7749                      JA 0x00474f78
00474f2f  52                        PUSH EDX
00474f30  51                        PUSH ECX
00474f31  e826a26700                CALL 0x00aef15c
00474f36  83c408                    ADD ESP,0x8
00474f39  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00474f40  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
00474f43  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00474f4a  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
00474f51  c645d800                  MOV byte ptr [EBP + -0x28],0x0
00474f55  83fa10                    CMP EDX,0x10
00474f58  722e                      JC 0x00474f88
00474f5a  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
00474f5d  42                        INC EDX
00474f5e  8bc1                      MOV EAX,ECX
00474f60  81fa00100000              CMP EDX,0x1000
00474f66  7216                      JC 0x00474f7e
00474f68  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00474f6b  83c223                    ADD EDX,0x23
00474f6e  2bc1                      SUB EAX,ECX
00474f70  83c0fc                    ADD EAX,-0x4
00474f73  83f81f                    CMP EAX,0x1f
00474f76  7606                      JBE 0x00474f7e
00474f78  ff159488b100              CALL dword ptr [0x00b18894]
00474f7e  52                        PUSH EDX
00474f7f  51                        PUSH ECX
00474f80  e8d7a16700                CALL 0x00aef15c
00474f85  83c408                    ADD ESP,0x8
00474f88  51                        PUSH ECX
00474f89  8d45b0                    LEA EAX,[EBP + -0x50]
00474f8c  c7042400000000            MOV dword ptr [ESP],0x0
00474f93  50                        PUSH EAX
00474f94  8bcb                      MOV ECX,EBX
00474f96  e8a59c2400                CALL 0x006bec40
00474f9b  8bcb                      MOV ECX,EBX
00474f9d  8bf0                      MOV ESI,EAX
00474f9f  e89c982400                CALL 0x006be840
00474fa4  8dbb3c030000              LEA EDI,[EBX + 0x33c]
00474faa  51                        PUSH ECX
00474fab  c7042400000000            MOV dword ptr [ESP],0x0
00474fb2  8bcb                      MOV ECX,EBX
00474fb4  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
00474fbc  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
00474fc4  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00474fcc  a17816c700                MOV EAX,[0x00c71678]
00474fd1  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00474fd9  f30f580e                  ADDSS XMM1,dword ptr [ESI]
00474fdd  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
00474fe2  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00474fe8  8d45b0                    LEA EAX,[EBP + -0x50]
00474feb  50                        PUSH EAX
00474fec  f30f5c0f                  SUBSS XMM1,dword ptr [EDI]
00474ff0  f30f5c5704                SUBSS XMM2,dword ptr [EDI + 0x4]
00474ff5  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
00474ffa  f30f1155b8                MOVSS dword ptr [EBP + -0x48],XMM2
00474fff  e83c9c2400                CALL 0x006bec40
00475004  6a00                      PUSH 0x0
00475006  6a00                      PUSH 0x0
00475008  6a00                      PUSH 0x0
0047500a  6a00                      PUSH 0x0
0047500c  6a00                      PUSH 0x0
0047500e  50                        PUSH EAX
0047500f  57                        PUSH EDI
00475010  8bce                      MOV ECX,ESI
00475012  e8d9bd3700                CALL 0x007f0df0
00475017  84c0                      TEST AL,AL
00475019  0f84a2000000              JZ 0x004750c1
0047501f  f30f104db8                MOVSS XMM1,dword ptr [EBP + -0x48]
00475024  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
00475029  f30f59c0                  MULSS XMM0,XMM0
0047502d  f30f59c9                  MULSS XMM1,XMM1
00475031  f30f58c1                  ADDSS XMM0,XMM1
00475035  e8160afcff                CALL 0x00435a50
0047503a  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
0047503f  0f57ed                    XORPS XMM5,XMM5
00475042  0f2fc5                    COMISS XMM0,XMM5
00475045  f30f105db8                MOVSS XMM3,dword ptr [EBP + -0x48]
0047504a  7617                      JBE 0x00475063
0047504c  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00475054  f30f5ec8                  DIVSS XMM1,XMM0
00475058  0f28c1                    MOVAPS XMM0,XMM1
0047505b  f30f59d9                  MULSS XMM3,XMM1
0047505f  f30f59d0                  MULSS XMM2,XMM0
00475063  f30f10a36c030000          MOVSS XMM4,dword ptr [EBX + 0x36c]
0047506b  f30f591524a3ba00          MULSS XMM2,dword ptr [0x00baa324]
00475073  f30f591d24a3ba00          MULSS XMM3,dword ptr [0x00baa324]
0047507b  0f2ee5                    UCOMISS XMM4,XMM5
0047507e  9f                        LAHF
0047507f  f6c444                    TEST AH,0x44
00475082  7b6d                      JNP 0x004750f1
00475084  f30f108b9c030000          MOVSS XMM1,dword ptr [EBX + 0x39c]
0047508c  0f28c1                    MOVAPS XMM0,XMM1
0047508f  f30f59cb                  MULSS XMM1,XMM3
00475093  f30f59c2                  MULSS XMM0,XMM2
00475097  f30f5ecc                  DIVSS XMM1,XMM4
0047509b  f30f5ec4                  DIVSS XMM0,XMM4
0047509f  f30f588b64030000          ADDSS XMM1,dword ptr [EBX + 0x364]
004750a7  f30f588360030000          ADDSS XMM0,dword ptr [EBX + 0x360]
004750af  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
004750b7  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
004750bf  eb30                      JMP 0x004750f1
004750c1  6a01                      PUSH 0x1
004750c3  6884030000                PUSH 0x384
004750c8  83ec08                    SUB ESP,0x8
004750cb  8d45a8                    LEA EAX,[EBP + -0x58]
004750ce  8bcb                      MOV ECX,EBX
004750d0  c7442404dbf97e3f          MOV dword ptr [ESP + 0x4],0x3f7ef9db
004750d8  c7042400000000            MOV dword ptr [ESP],0x0
004750df  50                        PUSH EAX
004750e0  e85b9b2400                CALL 0x006bec40
004750e5  50                        PUSH EAX
004750e6  8d8b14040000              LEA ECX,[EBX + 0x414]
004750ec  e8cfe23600                CALL 0x007e33c0
004750f1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004750f4  64890d00000000            MOV dword ptr FS:[0x0],ECX
004750fb  59                        POP ECX
004750fc  5f                        POP EDI
004750fd  5e                        POP ESI
004750fe  5b                        POP EBX
004750ff  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00475102  33cd                      XOR ECX,EBP
00475104  e822a06700                CALL 0x00aef12b
00475109  8be5                      MOV ESP,EBP
0047510b  5d                        POP EBP
0047510c  c3                        RET
