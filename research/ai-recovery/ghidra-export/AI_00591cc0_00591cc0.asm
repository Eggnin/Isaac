; J460 NPC AI 0x00591cc0 AI_00591cc0
; types=966
; identities=966.0.0
; entry=00591cc0
00591cc0  53                        PUSH EBX
00591cc1  8bdc                      MOV EBX,ESP
00591cc3  83ec08                    SUB ESP,0x8
00591cc6  83e4f8                    AND ESP,0xfffffff8
00591cc9  83c404                    ADD ESP,0x4
00591ccc  55                        PUSH EBP
00591ccd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00591cd0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00591cd4  8bec                      MOV EBP,ESP
00591cd6  83ec38                    SUB ESP,0x38
00591cd9  a1b493bf00                MOV EAX,[0x00bf93b4]
00591cde  33c5                      XOR EAX,EBP
00591ce0  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00591ce3  56                        PUSH ESI
00591ce4  57                        PUSH EDI
00591ce5  8bf9                      MOV EDI,ECX
00591ce7  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
00591ced  85c9                      TEST ECX,ECX
00591cef  740a                      JZ 0x00591cfb
00591cf1  83792803                  CMP dword ptr [ECX + 0x28],0x3
00591cf5  7504                      JNZ 0x00591cfb
00591cf7  8bf1                      MOV ESI,ECX
00591cf9  eb02                      JMP 0x00591cfd
00591cfb  33f6                      XOR ESI,ESI
00591cfd  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
00591d04  0f8533020000              JNZ 0x00591f3d
00591d0a  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00591d11  0f840c020000              JZ 0x00591f23
00591d17  85f6                      TEST ESI,ESI
00591d19  0f8404020000              JZ 0x00591f23
00591d1f  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00591d25  2500010000                AND EAX,0x100
00591d2a  83c800                    OR EAX,0x0
00591d2d  0f85f0010000              JNZ 0x00591f23
00591d33  f30f10813c030000          MOVSS XMM0,dword ptr [ECX + 0x33c]
00591d3b  8bc1                      MOV EAX,ECX
00591d3d  f30f108940030000          MOVSS XMM1,dword ptr [ECX + 0x340]
00591d45  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00591d4d  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
00591d55  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
00591d5d  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
00591d65  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00591d6d  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00591d75  8b816c030000              MOV EAX,dword ptr [ECX + 0x36c]
00591d7b  89876c030000              MOV dword ptr [EDI + 0x36c],EAX
00591d81  8b8188010000              MOV EAX,dword ptr [ECX + 0x188]
00591d87  f7d8                      NEG EAX
00591d89  1bc0                      SBB EAX,EAX
00591d8b  83e002                    AND EAX,0x2
00591d8e  898788010000              MOV dword ptr [EDI + 0x188],EAX
00591d94  8b8184010000              MOV EAX,dword ptr [ECX + 0x184]
00591d9a  898784010000              MOV dword ptr [EDI + 0x184],EAX
00591da0  83be2402000001            CMP dword ptr [ESI + 0x224],0x1
00591da7  0f8fa9000000              JG 0x00591e56
00591dad  818e6801000000010000      OR dword ptr [ESI + 0x168],0x100
00591db7  817e2cdc000000            CMP dword ptr [ESI + 0x2c],0xdc
00591dbe  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00591dc4  c7862402000002000000      MOV dword ptr [ESI + 0x224],0x2
00591dce  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00591dd4  0f847c000000              JZ 0x00591e56
00591dda  0f280500c4ba00            MOVAPS XMM0,xmmword ptr [0x00bac400]
00591de1  32c9                      XOR CL,CL
00591de3  8b86ac010000              MOV EAX,dword ptr [ESI + 0x1ac]
00591de9  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00591ded  c745f0ec51383e            MOV dword ptr [EBP + -0x10],0x3e3851ec
00591df4  0f57c0                    XORPS XMM0,XMM0
00591df7  c745f40ad7233d            MOV dword ptr [EBP + -0xc],0x3d23d70a
00591dfe  0f1145e0                  MOVUPS xmmword ptr [EBP + -0x20],XMM0
00591e02  c745f80ad7233d            MOV dword ptr [EBP + -0x8],0x3d23d70a
00591e09  3b86b0010000              CMP EAX,dword ptr [ESI + 0x1b0]
00591e0f  742b                      JZ 0x00591e3c
00591e11  813805010000              CMP dword ptr [EAX],0x105
00591e17  7514                      JNZ 0x00591e2d
00591e19  8b8e24020000              MOV ECX,dword ptr [ESI + 0x224]
00591e1f  894834                    MOV dword ptr [EAX + 0x34],ECX
00591e22  8b8e24020000              MOV ECX,dword ptr [ESI + 0x224]
00591e28  894830                    MOV dword ptr [EAX + 0x30],ECX
00591e2b  b101                      MOV CL,0x1
00591e2d  83c03c                    ADD EAX,0x3c
00591e30  3b86b0010000              CMP EAX,dword ptr [ESI + 0x1b0]
00591e36  75d9                      JNZ 0x00591e11
00591e38  84c9                      TEST CL,CL
00591e3a  751a                      JNZ 0x00591e56
00591e3c  8b06                      MOV EAX,dword ptr [ESI]
00591e3e  8d4dd0                    LEA ECX,[EBP + -0x30]
00591e41  6a01                      PUSH 0x1
00591e43  6a00                      PUSH 0x0
00591e45  6805010000                PUSH 0x105
00591e4a  ffb624020000              PUSH dword ptr [ESI + 0x224]
00591e50  51                        PUSH ECX
00591e51  8bce                      MOV ECX,ESI
00591e53  ff503c                    CALL dword ptr [EAX + 0x3c]
00591e56  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
00591e5b  0f57c0                    XORPS XMM0,XMM0
00591e5e  0f2fc8                    COMISS XMM1,XMM0
00591e61  763a                      JBE 0x00591e9d
00591e63  0f2805b0c4ba00            MOVAPS XMM0,xmmword ptr [0x00bac4b0]
00591e6a  8d4dd0                    LEA ECX,[EBP + -0x30]
00591e6d  8b06                      MOV EAX,dword ptr [ESI]
00591e6f  6a01                      PUSH 0x1
00591e71  6a00                      PUSH 0x0
00591e73  6a00                      PUSH 0x0
00591e75  6a01                      PUSH 0x1
00591e77  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00591e7b  c745f039b4483f            MOV dword ptr [EBP + -0x10],0x3f48b439
00591e82  0f57c0                    XORPS XMM0,XMM0
00591e85  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
00591e8c  51                        PUSH ECX
00591e8d  8bce                      MOV ECX,ESI
00591e8f  c745f800000000            MOV dword ptr [EBP + -0x8],0x0
00591e96  0f1145e0                  MOVUPS xmmword ptr [EBP + -0x20],XMM0
00591e9a  ff503c                    CALL dword ptr [EAX + 0x3c]
00591e9d  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00591ea4  0f8484010000              JZ 0x0059202e
00591eaa  817e2cce000000            CMP dword ptr [ESI + 0x2c],0xce
00591eb1  0f8577010000              JNZ 0x0059202e
00591eb7  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00591ebf  8d4dd4                    LEA ECX,[EBP + -0x2c]
00591ec2  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00591eca  8b06                      MOV EAX,dword ptr [ESI]
00591ecc  51                        PUSH ECX
00591ecd  8bce                      MOV ECX,ESI
00591ecf  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
00591ed6  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
00591edd  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
00591ee4  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
00591eeb  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00591ef0  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00591ef5  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
00591efa  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
00591eff  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
00591f06  c745f800000000            MOV dword ptr [EBP + -0x8],0x0
00591f0d  ff5024                    CALL dword ptr [EAX + 0x24]
00591f10  5f                        POP EDI
00591f11  5e                        POP ESI
00591f12  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00591f15  33cd                      XOR ECX,EBP
00591f17  e80fd25500                CALL 0x00aef12b
00591f1c  8be5                      MOV ESP,EBP
00591f1e  5d                        POP EBP
00591f1f  8be3                      MOV ESP,EBX
00591f21  5b                        POP EBX
00591f22  c3                        RET
00591f23  8b07                      MOV EAX,dword ptr [EDI]
00591f25  8bcf                      MOV ECX,EDI
00591f27  ff5028                    CALL dword ptr [EAX + 0x28]
00591f2a  5f                        POP EDI
00591f2b  5e                        POP ESI
00591f2c  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00591f2f  33cd                      XOR ECX,EBP
00591f31  e8f5d15500                CALL 0x00aef12b
00591f36  8be5                      MOV ESP,EBP
00591f38  5d                        POP EBP
00591f39  8be3                      MOV ESP,EBX
00591f3b  5b                        POP EBX
00591f3c  c3                        RET
00591f3d  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00591f44  0f85e4000000              JNZ 0x0059202e
00591f4a  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00591f50  8d4f48                    LEA ECX,[EDI + 0x48]
00591f53  838f180f000001            OR dword ptr [EDI + 0xf18],0x1
00591f5a  838f6801000001            OR dword ptr [EDI + 0x168],0x1
00591f61  6a01                      PUSH 0x1
00591f63  6804deb100                PUSH 0xb1de04
00591f68  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00591f72  c787880300000000803f      MOV dword ptr [EDI + 0x388],0x3f800000
00591f7c  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00591f82  e84986e7ff                CALL 0x0040a5d0
00591f87  84c0                      TEST AL,AL
00591f89  7423                      JZ 0x00591fae
00591f8b  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00591f8e  8d4748                    LEA EAX,[EDI + 0x48]
00591f91  85c9                      TEST ECX,ECX
00591f93  7419                      JZ 0x00591fae
00591f95  8d4830                    LEA ECX,[EAX + 0x30]
00591f98  0f57c9                    XORPS XMM1,XMM1
00591f9b  e8606ee7ff                CALL 0x00408e00
00591fa0  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00591fa3  8d4748                    LEA EAX,[EDI + 0x48]
00591fa6  85c9                      TEST ECX,ECX
00591fa8  7404                      JZ 0x00591fae
00591faa  c6404400                  MOV byte ptr [EAX + 0x44],0x0
00591fae  6a00                      PUSH 0x0
00591fb0  8d4f48                    LEA ECX,[EDI + 0x48]
00591fb3  e86892e7ff                CALL 0x0040b220
00591fb8  c6407400                  MOV byte ptr [EAX + 0x74],0x0
00591fbc  85f6                      TEST ESI,ESI
00591fbe  746e                      JZ 0x0059202e
00591fc0  8b8eec0e0000              MOV ECX,dword ptr [ESI + 0xeec]
00591fc6  8d86ec0e0000              LEA EAX,[ESI + 0xeec]
00591fcc  3bcf                      CMP ECX,EDI
00591fce  7426                      JZ 0x00591ff6
00591fd0  85c9                      TEST ECX,ECX
00591fd2  7418                      JZ 0x00591fec
00591fd4  8945cc                    MOV dword ptr [EBP + -0x34],EAX
00591fd7  81c1cc030000              ADD ECX,0x3cc
00591fdd  8d45cc                    LEA EAX,[EBP + -0x34]
00591fe0  50                        PUSH EAX
00591fe1  e82ad2f3ff                CALL 0x004cf210
00591fe6  8d86ec0e0000              LEA EAX,[ESI + 0xeec]
00591fec  50                        PUSH EAX
00591fed  8bcf                      MOV ECX,EDI
00591fef  8938                      MOV dword ptr [EAX],EDI
00591ff1  e8fabcf3ff                CALL 0x004cdcf0
00591ff6  8b8630030000              MOV EAX,dword ptr [ESI + 0x330]
00591ffc  f30f10403c                MOVSS XMM0,dword ptr [EAX + 0x3c]
00592001  ff7048                    PUSH dword ptr [EAX + 0x48]
00592004  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00592009  f30f104040                MOVSS XMM0,dword ptr [EAX + 0x40]
0059200e  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
00592013  ff75cc                    PUSH dword ptr [EBP + -0x34]
00592016  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
0059201e  ff75c8                    PUSH dword ptr [EBP + -0x38]
00592021  51                        PUSH ECX
00592022  8bcf                      MOV ECX,EDI
00592024  f30f110424                MOVSS dword ptr [ESP],XMM0
00592029  e872a21100                CALL 0x006ac2a0
0059202e  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00592031  5f                        POP EDI
00592032  33cd                      XOR ECX,EBP
00592034  5e                        POP ESI
00592035  e8f1d05500                CALL 0x00aef12b
0059203a  8be5                      MOV ESP,EBP
0059203c  5d                        POP EBP
0059203d  8be3                      MOV ESP,EBX
0059203f  5b                        POP EBX
00592040  c3                        RET
