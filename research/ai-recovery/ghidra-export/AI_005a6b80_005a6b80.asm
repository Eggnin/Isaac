; J460 NPC AI 0x005a6b80 AI_005a6b80
; types=299
; identities=299.0.0
; entry=005a6b80
005a6b80  55                        PUSH EBP
005a6b81  8bec                      MOV EBP,ESP
005a6b83  6aff                      PUSH -0x1
005a6b85  685535af00                PUSH 0xaf3555
005a6b8a  64a100000000              MOV EAX,FS:[0x0]
005a6b90  50                        PUSH EAX
005a6b91  83ec44                    SUB ESP,0x44
005a6b94  a1b493bf00                MOV EAX,[0x00bf93b4]
005a6b99  33c5                      XOR EAX,EBP
005a6b9b  8945f0                    MOV dword ptr [EBP + -0x10],EAX
005a6b9e  53                        PUSH EBX
005a6b9f  56                        PUSH ESI
005a6ba0  57                        PUSH EDI
005a6ba1  50                        PUSH EAX
005a6ba2  8d45f4                    LEA EAX,[EBP + -0xc]
005a6ba5  64a300000000              MOV FS:[0x0],EAX
005a6bab  8bf9                      MOV EDI,ECX
005a6bad  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
005a6bb2  0f57c9                    XORPS XMM1,XMM1
005a6bb5  0f2fc1                    COMISS XMM0,XMM1
005a6bb8  761e                      JBE 0x005a6bd8
005a6bba  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
005a6bbd  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
005a6bc0  7416                      JZ 0x005a6bd8
005a6bc2  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
005a6bc5  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
005a6bc8  7506                      JNZ 0x005a6bd0
005a6bca  c70000000000              MOV dword ptr [EAX],0x0
005a6bd0  83c038                    ADD EAX,0x38
005a6bd3  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
005a6bd6  75ea                      JNZ 0x005a6bc2
005a6bd8  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005a6bde  85c0                      TEST EAX,EAX
005a6be0  0f858d010000              JNZ 0x005a6d73
005a6be6  a17816c700                MOV EAX,[0x00c71678]
005a6beb  8b5f20                    MOV EBX,dword ptr [EDI + 0x20]
005a6bee  83e303                    AND EBX,0x3
005a6bf1  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a6bf7  803900                    CMP byte ptr [ECX],0x0
005a6bfa  0f84cc000000              JZ 0x005a6ccc
005a6c00  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
005a6c06  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
005a6c0c  0f85ba000000              JNZ 0x005a6ccc
005a6c12  6a01                      PUSH 0x1
005a6c14  6818ddb100                PUSH 0xb1dd18
005a6c19  8d4f48                    LEA ECX,[EDI + 0x48]
005a6c1c  e8af39e6ff                CALL 0x0040a5d0
005a6c21  84c0                      TEST AL,AL
005a6c23  7420                      JZ 0x005a6c45
005a6c25  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a6c28  85c0                      TEST EAX,EAX
005a6c2a  7419                      JZ 0x005a6c45
005a6c2c  8d4f78                    LEA ECX,[EDI + 0x78]
005a6c2f  0f57c9                    XORPS XMM1,XMM1
005a6c32  e8c921e6ff                CALL 0x00408e00
005a6c37  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a6c3a  85c0                      TEST EAX,EAX
005a6c3c  7407                      JZ 0x005a6c45
005a6c3e  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
005a6c45  8bb79c000000              MOV ESI,dword ptr [EDI + 0x9c]
005a6c4b  8b0c9d3828b600            MOV ECX,dword ptr [EBX*0x4 + 0xb62838]
005a6c52  894dbc                    MOV dword ptr [EBP + -0x44],ECX
005a6c55  85f6                      TEST ESI,ESI
005a6c57  7443                      JZ 0x005a6c9c
005a6c59  837e1410                  CMP dword ptr [ESI + 0x14],0x10
005a6c5d  8bc6                      MOV EAX,ESI
005a6c5f  7202                      JC 0x005a6c63
005a6c61  8b06                      MOV EAX,dword ptr [ESI]
005a6c63  8a10                      MOV DL,byte ptr [EAX]
005a6c65  3a11                      CMP DL,byte ptr [ECX]
005a6c67  751a                      JNZ 0x005a6c83
005a6c69  84d2                      TEST DL,DL
005a6c6b  7412                      JZ 0x005a6c7f
005a6c6d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a6c70  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a6c73  750e                      JNZ 0x005a6c83
005a6c75  83c002                    ADD EAX,0x2
005a6c78  83c102                    ADD ECX,0x2
005a6c7b  84d2                      TEST DL,DL
005a6c7d  75e4                      JNZ 0x005a6c63
005a6c7f  33c0                      XOR EAX,EAX
005a6c81  eb05                      JMP 0x005a6c88
005a6c83  1bc0                      SBB EAX,EAX
005a6c85  83c801                    OR EAX,0x1
005a6c88  85c0                      TEST EAX,EAX
005a6c8a  750d                      JNZ 0x005a6c99
005a6c8c  384634                    CMP byte ptr [ESI + 0x34],AL
005a6c8f  742c                      JZ 0x005a6cbd
005a6c91  3887ac000000              CMP byte ptr [EDI + 0xac],AL
005a6c97  7524                      JNZ 0x005a6cbd
005a6c99  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
005a6c9c  6a01                      PUSH 0x1
005a6c9e  51                        PUSH ECX
005a6c9f  8d4f48                    LEA ECX,[EDI + 0x48]
005a6ca2  e8493ee6ff                CALL 0x0040aaf0
005a6ca7  84c0                      TEST AL,AL
005a6ca9  7412                      JZ 0x005a6cbd
005a6cab  8d8f98000000              LEA ECX,[EDI + 0x98]
005a6cb1  e8fa34e6ff                CALL 0x0040a1b0
005a6cb6  c687ac00000001            MOV byte ptr [EDI + 0xac],0x1
005a6cbd  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005a6cc7  e9b0000000                JMP 0x005a6d7c
005a6ccc  8b0c9d3828b600            MOV ECX,dword ptr [EBX*0x4 + 0xb62838]
005a6cd3  8b9f9c000000              MOV EBX,dword ptr [EDI + 0x9c]
005a6cd9  894dbc                    MOV dword ptr [EBP + -0x44],ECX
005a6cdc  85db                      TEST EBX,EBX
005a6cde  7449                      JZ 0x005a6d29
005a6ce0  837b1410                  CMP dword ptr [EBX + 0x14],0x10
005a6ce4  8bc3                      MOV EAX,EBX
005a6ce6  7208                      JC 0x005a6cf0
005a6ce8  8b03                      MOV EAX,dword ptr [EBX]
005a6cea  660f1f440000              NOP word ptr [EAX + EAX*0x1]
005a6cf0  8a10                      MOV DL,byte ptr [EAX]
005a6cf2  3a11                      CMP DL,byte ptr [ECX]
005a6cf4  751a                      JNZ 0x005a6d10
005a6cf6  84d2                      TEST DL,DL
005a6cf8  7412                      JZ 0x005a6d0c
005a6cfa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a6cfd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a6d00  750e                      JNZ 0x005a6d10
005a6d02  83c002                    ADD EAX,0x2
005a6d05  83c102                    ADD ECX,0x2
005a6d08  84d2                      TEST DL,DL
005a6d0a  75e4                      JNZ 0x005a6cf0
005a6d0c  33c0                      XOR EAX,EAX
005a6d0e  eb05                      JMP 0x005a6d15
005a6d10  1bc0                      SBB EAX,EAX
005a6d12  83c801                    OR EAX,0x1
005a6d15  85c0                      TEST EAX,EAX
005a6d17  750d                      JNZ 0x005a6d26
005a6d19  384334                    CMP byte ptr [EBX + 0x34],AL
005a6d1c  742c                      JZ 0x005a6d4a
005a6d1e  3887ac000000              CMP byte ptr [EDI + 0xac],AL
005a6d24  7524                      JNZ 0x005a6d4a
005a6d26  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
005a6d29  6a01                      PUSH 0x1
005a6d2b  51                        PUSH ECX
005a6d2c  8d4f48                    LEA ECX,[EDI + 0x48]
005a6d2f  e8bc3de6ff                CALL 0x0040aaf0
005a6d34  84c0                      TEST AL,AL
005a6d36  7412                      JZ 0x005a6d4a
005a6d38  8d8f98000000              LEA ECX,[EDI + 0x98]
005a6d3e  e86d34e6ff                CALL 0x0040a1b0
005a6d43  c687ac00000001            MOV byte ptr [EDI + 0xac],0x1
005a6d4a  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
005a6d50  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
005a6d57  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
005a6d61  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005a6d6b  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
005a6d71  eb09                      JMP 0x005a6d7c
005a6d73  83f804                    CMP EAX,0x4
005a6d76  0f850e020000              JNZ 0x005a6f8a
005a6d7c  a118ddb100                MOV EAX,[0x00b1dd18]
005a6d81  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
005a6d87  c745d40f000000            MOV dword ptr [EBP + -0x2c],0xf
005a6d8e  c745d008000000            MOV dword ptr [EBP + -0x30],0x8
005a6d95  8945c0                    MOV dword ptr [EBP + -0x40],EAX
005a6d98  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
005a6d9b  c645c800                  MOV byte ptr [EBP + -0x38],0x0
005a6d9f  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
005a6da6  a130ddb100                MOV EAX,[0x00b1dd30]
005a6dab  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
005a6db1  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
005a6db8  c745e808000000            MOV dword ptr [EBP + -0x18],0x8
005a6dbf  8945d8                    MOV dword ptr [EBP + -0x28],EAX
005a6dc2  894ddc                    MOV dword ptr [EBP + -0x24],ECX
005a6dc5  c645e000                  MOV byte ptr [EBP + -0x20],0x0
005a6dc9  51                        PUSH ECX
005a6dca  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
005a6dce  8d45c0                    LEA EAX,[EBP + -0x40]
005a6dd1  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
005a6dd8  8bcf                      MOV ECX,EDI
005a6dda  50                        PUSH EAX
005a6ddb  8d45d8                    LEA EAX,[EBP + -0x28]
005a6dde  50                        PUSH EAX
005a6ddf  e84ca51100                CALL 0x006c1330
005a6de4  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
005a6de8  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
005a6deb  83fa10                    CMP EDX,0x10
005a6dee  7228                      JC 0x005a6e18
005a6df0  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
005a6df3  42                        INC EDX
005a6df4  8bc1                      MOV EAX,ECX
005a6df6  81fa00100000              CMP EDX,0x1000
005a6dfc  7210                      JC 0x005a6e0e
005a6dfe  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005a6e01  83c223                    ADD EDX,0x23
005a6e04  2bc1                      SUB EAX,ECX
005a6e06  83c0fc                    ADD EAX,-0x4
005a6e09  83f81f                    CMP EAX,0x1f
005a6e0c  7749                      JA 0x005a6e57
005a6e0e  52                        PUSH EDX
005a6e0f  51                        PUSH ECX
005a6e10  e847835400                CALL 0x00aef15c
005a6e15  83c408                    ADD ESP,0x8
005a6e18  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005a6e1f  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
005a6e22  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
005a6e29  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
005a6e30  c645d800                  MOV byte ptr [EBP + -0x28],0x0
005a6e34  83fa10                    CMP EDX,0x10
005a6e37  722e                      JC 0x005a6e67
005a6e39  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
005a6e3c  42                        INC EDX
005a6e3d  8bc1                      MOV EAX,ECX
005a6e3f  81fa00100000              CMP EDX,0x1000
005a6e45  7216                      JC 0x005a6e5d
005a6e47  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005a6e4a  83c223                    ADD EDX,0x23
005a6e4d  2bc1                      SUB EAX,ECX
005a6e4f  83c0fc                    ADD EAX,-0x4
005a6e52  83f81f                    CMP EAX,0x1f
005a6e55  7606                      JBE 0x005a6e5d
005a6e57  ff159488b100              CALL dword ptr [0x00b18894]
005a6e5d  52                        PUSH EDX
005a6e5e  51                        PUSH ECX
005a6e5f  e8f8825400                CALL 0x00aef15c
005a6e64  83c408                    ADD ESP,0x8
005a6e67  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005a6e6d  2500080001                AND EAX,0x1000800
005a6e72  c787340c00009a99193f      MOV dword ptr [EDI + 0xc34],0x3f19999a
005a6e7c  83c800                    OR EAX,0x0
005a6e7f  7444                      JZ 0x005a6ec5
005a6e81  8bcf                      MOV ECX,EDI
005a6e83  e8b8791100                CALL 0x006be840
005a6e88  6a00                      PUSH 0x0
005a6e8a  8d8f14040000              LEA ECX,[EDI + 0x414]
005a6e90  8b903c030000              MOV EDX,dword ptr [EAX + 0x33c]
005a6e96  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
005a6e9c  8945b8                    MOV dword ptr [EBP + -0x48],EAX
005a6e9f  8d45b4                    LEA EAX,[EBP + -0x4c]
005a6ea2  50                        PUSH EAX
005a6ea3  8955b4                    MOV dword ptr [EBP + -0x4c],EDX
005a6ea6  e895da2300                CALL 0x007e4940
005a6eab  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005a6eb3  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005a6ebb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005a6ec3  eb2e                      JMP 0x005a6ef3
005a6ec5  51                        PUSH ECX
005a6ec6  8d45b4                    LEA EAX,[EBP + -0x4c]
005a6ec9  c7042400000000            MOV dword ptr [ESP],0x0
005a6ed0  50                        PUSH EAX
005a6ed1  8bcf                      MOV ECX,EDI
005a6ed3  e8687d1100                CALL 0x006bec40
005a6ed8  6a01                      PUSH 0x1
005a6eda  6884030000                PUSH 0x384
005a6edf  51                        PUSH ECX
005a6ee0  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
005a6ee7  8d8f14040000              LEA ECX,[EDI + 0x414]
005a6eed  50                        PUSH EAX
005a6eee  e8cdc42300                CALL 0x007e33c0
005a6ef3  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
005a6efa  0f848a000000              JZ 0x005a6f8a
005a6f00  e85b801400                CALL 0x006eef60
005a6f05  33d2                      XOR EDX,EDX
005a6f07  b91e000000                MOV ECX,0x1e
005a6f0c  f7f1                      DIV ECX
005a6f0e  85d2                      TEST EDX,EDX
005a6f10  7578                      JNZ 0x005a6f8a
005a6f12  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005a6f1a  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
005a6f20  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
005a6f25  83f812                    CMP EAX,0x12
005a6f28  750a                      JNZ 0x005a6f34
005a6f2a  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
005a6f32  eb0d                      JMP 0x005a6f41
005a6f34  83f813                    CMP EAX,0x13
005a6f37  750d                      JNZ 0x005a6f46
005a6f39  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
005a6f41  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
005a6f46  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a6f4c  8d4db8                    LEA ECX,[EBP + -0x48]
005a6f4f  c745b8a5000000            MOV dword ptr [EBP + -0x48],0xa5
005a6f56  e825f83a00                CALL 0x00956780
005a6f5b  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
005a6f60  83ec08                    SUB ESP,0x8
005a6f63  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a6f6b  f30f110424                MOVSS dword ptr [ESP],XMM0
005a6f70  6a00                      PUSH 0x0
005a6f72  6a78                      PUSH 0x78
005a6f74  51                        PUSH ECX
005a6f75  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a6f7c  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a6f82  ff75b8                    PUSH dword ptr [EBP + -0x48]
005a6f85  e8a66c3800                CALL 0x0092dc30
005a6f8a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
005a6f8d  64890d00000000            MOV dword ptr FS:[0x0],ECX
005a6f94  59                        POP ECX
005a6f95  5f                        POP EDI
005a6f96  5e                        POP ESI
005a6f97  5b                        POP EBX
005a6f98  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
005a6f9b  33cd                      XOR ECX,EBP
005a6f9d  e889815400                CALL 0x00aef12b
005a6fa2  8be5                      MOV ESP,EBP
005a6fa4  5d                        POP EBP
005a6fa5  c3                        RET
