; J460 NPC AI 0x00547b60 AI_00547b60
; types=310
; identities=310.0.0,310.0.1,310.0.2,310.0.3,310.1.0
; entry=00547b60
00547b60  55                        PUSH EBP
00547b61  8bec                      MOV EBP,ESP
00547b63  6aff                      PUSH -0x1
00547b65  68d549af00                PUSH 0xaf49d5
00547b6a  64a100000000              MOV EAX,FS:[0x0]
00547b70  50                        PUSH EAX
00547b71  83ec7c                    SUB ESP,0x7c
00547b74  a1b493bf00                MOV EAX,[0x00bf93b4]
00547b79  33c5                      XOR EAX,EBP
00547b7b  8945f0                    MOV dword ptr [EBP + -0x10],EAX
00547b7e  53                        PUSH EBX
00547b7f  56                        PUSH ESI
00547b80  57                        PUSH EDI
00547b81  50                        PUSH EAX
00547b82  8d45f4                    LEA EAX,[EBP + -0xc]
00547b85  64a300000000              MOV FS:[0x0],EAX
00547b8b  8bd9                      MOV EBX,ECX
00547b8d  837b2c01                  CMP dword ptr [EBX + 0x2c],0x1
00547b91  750a                      JNZ 0x00547b9d
00547b93  e8880b0000                CALL 0x00548720
00547b98  e9620b0000                JMP 0x005486ff
00547b9d  8b83640b0000              MOV EAX,dword ptr [EBX + 0xb64]
00547ba3  85c0                      TEST EAX,EAX
00547ba5  0f841d040000              JZ 0x00547fc8
00547bab  83f804                    CMP EAX,0x4
00547bae  0f842b010000              JZ 0x00547cdf
00547bb4  83f810                    CMP EAX,0x10
00547bb7  0f851f040000              JNZ 0x00547fdc
00547bbd  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00547bc5  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00547bcd  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
00547bd4  c745e808000000            MOV dword ptr [EBP + -0x18],0x8
00547bdb  c645e000                  MOV byte ptr [EBP + -0x20],0x0
00547bdf  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00547be7  a118ddb100                MOV EAX,[0x00b1dd18]
00547bec  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
00547bf2  8945d8                    MOV dword ptr [EBP + -0x28],EAX
00547bf5  894ddc                    MOV dword ptr [EBP + -0x24],ECX
00547bf8  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
00547bff  a130ddb100                MOV EAX,[0x00b1dd30]
00547c04  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00547c0a  c745d40f000000            MOV dword ptr [EBP + -0x2c],0xf
00547c11  c745d008000000            MOV dword ptr [EBP + -0x30],0x8
00547c18  8945c0                    MOV dword ptr [EBP + -0x40],EAX
00547c1b  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
00547c1e  c645c800                  MOV byte ptr [EBP + -0x38],0x0
00547c22  51                        PUSH ECX
00547c23  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
00547c27  8d45d8                    LEA EAX,[EBP + -0x28]
00547c2a  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00547c31  8bcb                      MOV ECX,EBX
00547c33  50                        PUSH EAX
00547c34  8d45c0                    LEA EAX,[EBP + -0x40]
00547c37  50                        PUSH EAX
00547c38  e8f3961700                CALL 0x006c1330
00547c3d  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
00547c41  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
00547c44  83fa10                    CMP EDX,0x10
00547c47  7228                      JC 0x00547c71
00547c49  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
00547c4c  42                        INC EDX
00547c4d  8bc1                      MOV EAX,ECX
00547c4f  81fa00100000              CMP EDX,0x1000
00547c55  7210                      JC 0x00547c67
00547c57  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00547c5a  83c223                    ADD EDX,0x23
00547c5d  2bc1                      SUB EAX,ECX
00547c5f  83c0fc                    ADD EAX,-0x4
00547c62  83f81f                    CMP EAX,0x1f
00547c65  7749                      JA 0x00547cb0
00547c67  52                        PUSH EDX
00547c68  51                        PUSH ECX
00547c69  e8ee745a00                CALL 0x00aef15c
00547c6e  83c408                    ADD ESP,0x8
00547c71  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00547c78  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
00547c7b  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00547c82  c745d40f000000            MOV dword ptr [EBP + -0x2c],0xf
00547c89  c645c000                  MOV byte ptr [EBP + -0x40],0x0
00547c8d  83fa10                    CMP EDX,0x10
00547c90  722e                      JC 0x00547cc0
00547c92  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
00547c95  42                        INC EDX
00547c96  8bc1                      MOV EAX,ECX
00547c98  81fa00100000              CMP EDX,0x1000
00547c9e  7216                      JC 0x00547cb6
00547ca0  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00547ca3  83c223                    ADD EDX,0x23
00547ca6  2bc1                      SUB EAX,ECX
00547ca8  83c0fc                    ADD EAX,-0x4
00547cab  83f81f                    CMP EAX,0x1f
00547cae  7606                      JBE 0x00547cb6
00547cb0  ff159488b100              CALL dword ptr [0x00b18894]
00547cb6  52                        PUSH EDX
00547cb7  51                        PUSH ECX
00547cb8  e89f745a00                CALL 0x00aef15c
00547cbd  83c408                    ADD ESP,0x8
00547cc0  83bb9c00000000            CMP dword ptr [EBX + 0x9c],0x0
00547cc7  0f8405030000              JZ 0x00547fd2
00547ccd  80bbac00000000            CMP byte ptr [EBX + 0xac],0x0
00547cd4  0f8502030000              JNZ 0x00547fdc
00547cda  e9f3020000                JMP 0x00547fd2
00547cdf  83bbc00b000000            CMP dword ptr [EBX + 0xbc0],0x0
00547ce6  0f8ff7000000              JG 0x00547de3
00547cec  837b3003                  CMP dword ptr [EBX + 0x30],0x3
00547cf0  0f84ed000000              JZ 0x00547de3
00547cf6  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00547cfd  0f85e0000000              JNZ 0x00547de3
00547d03  6a00                      PUSH 0x0
00547d05  51                        PUSH ECX
00547d06  8d458c                    LEA EAX,[EBP + -0x74]
00547d09  c7042400000000            MOV dword ptr [ESP],0x0
00547d10  50                        PUSH EAX
00547d11  e82a6f1700                CALL 0x006bec40
00547d16  50                        PUSH EAX
00547d17  8d8b14040000              LEA ECX,[EBX + 0x414]
00547d1d  e81ecc2900                CALL 0x007e4940
00547d22  83bb500b000000            CMP dword ptr [EBX + 0xb50],0x0
00547d29  7e46                      JLE 0x00547d71
00547d2b  a17816c700                MOV EAX,[0x00c71678]
00547d30  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00547d36  2b8328030000              SUB EAX,dword ptr [EBX + 0x328]
00547d3c  83f80a                    CMP EAX,0xa
00547d3f  7e30                      JLE 0x00547d71
00547d41  e81a721a00                CALL 0x006eef60
00547d46  b964000000                MOV ECX,0x64
00547d4b  33d2                      XOR EDX,EDX
00547d4d  f7f1                      DIV ECX
00547d4f  51                        PUSH ECX
00547d50  c704240000803f            MOV dword ptr [ESP],0x3f800000
00547d57  6a00                      PUSH 0x0
00547d59  8d422d                    LEA EAX,[EDX + 0x2d]
00547d5c  50                        PUSH EAX
00547d5d  51                        PUSH ECX
00547d5e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00547d65  8bcb                      MOV ECX,EBX
00547d67  688f000000                PUSH 0x8f
00547d6c  e82fee1800                CALL 0x006d6ba0
00547d71  8b93c00b0000              MOV EDX,dword ptr [EBX + 0xbc0]
00547d77  85d2                      TEST EDX,EDX
00547d79  7924                      JNS 0x00547d9f
00547d7b  f30f2c83a0030000          CVTTSS2SI EAX,dword ptr [EBX + 0x3a0]
00547d83  f30f2c8ba4030000          CVTTSS2SI ECX,dword ptr [EBX + 0x3a4]
00547d8b  2bc8                      SUB ECX,EAX
00547d8d  8d0411                    LEA EAX,[ECX + EDX*0x1]
00547d90  33d2                      XOR EDX,EDX
00547d92  85c0                      TEST EAX,EAX
00547d94  0f48d0                    CMOVS EDX,EAX
00547d97  8993c00b0000              MOV dword ptr [EBX + 0xbc0],EDX
00547d9d  85d2                      TEST EDX,EDX
00547d9f  7525                      JNZ 0x00547dc6
00547da1  83bb500b000000            CMP dword ptr [EBX + 0xb50],0x0
00547da8  7f1c                      JG 0x00547dc6
00547daa  e8b1711a00                CALL 0x006eef60
00547daf  33d2                      XOR EDX,EDX
00547db1  b90a000000                MOV ECX,0xa
00547db6  f7f1                      DIV ECX
00547db8  85d2                      TEST EDX,EDX
00547dba  750a                      JNZ 0x00547dc6
00547dbc  c783c00b00005a000000      MOV dword ptr [EBX + 0xbc0],0x5a
00547dc6  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00547dce  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00547dd6  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00547dde  e9ae000000                JMP 0x00547e91
00547de3  8b4330                    MOV EAX,dword ptr [EBX + 0x30]
00547de6  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00547dee  83f802                    CMP EAX,0x2
00547df1  750a                      JNZ 0x00547dfd
00547df3  f30f100554a3ba00          MOVSS XMM0,dword ptr [0x00baa354]
00547dfb  eb0d                      JMP 0x00547e0a
00547dfd  83f803                    CMP EAX,0x3
00547e00  7508                      JNZ 0x00547e0a
00547e02  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
00547e0a  6a01                      PUSH 0x1
00547e0c  6a00                      PUSH 0x0
00547e0e  83ec08                    SUB ESP,0x8
00547e11  8d458c                    LEA EAX,[EBP + -0x74]
00547e14  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
00547e1a  c7042400000000            MOV dword ptr [ESP],0x0
00547e21  50                        PUSH EAX
00547e22  e8196e1700                CALL 0x006bec40
00547e27  50                        PUSH EAX
00547e28  8d8b14040000              LEA ECX,[EBX + 0x414]
00547e2e  e88db52900                CALL 0x007e33c0
00547e33  f30f2c83a4030000          CVTTSS2SI EAX,dword ptr [EBX + 0x3a4]
00547e3b  f30f2c8ba0030000          CVTTSS2SI ECX,dword ptr [EBX + 0x3a0]
00547e43  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00547e4b  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00547e53  2bc8                      SUB ECX,EAX
00547e55  8b83c00b0000              MOV EAX,dword ptr [EBX + 0xbc0]
00547e5b  03c1                      ADD EAX,ECX
00547e5d  33c9                      XOR ECX,ECX
00547e5f  85c0                      TEST EAX,EAX
00547e61  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00547e69  0f4fc8                    CMOVG ECX,EAX
00547e6c  898bc00b0000              MOV dword ptr [EBX + 0xbc0],ECX
00547e72  85c9                      TEST ECX,ECX
00547e74  751b                      JNZ 0x00547e91
00547e76  e8e5701a00                CALL 0x006eef60
00547e7b  33d2                      XOR EDX,EDX
00547e7d  b93c000000                MOV ECX,0x3c
00547e82  f7f1                      DIV ECX
00547e84  b8e2ffffff                MOV EAX,0xffffffe2
00547e89  2bc2                      SUB EAX,EDX
00547e8b  8983c00b0000              MOV dword ptr [EBX + 0xbc0],EAX
00547e91  a118ddb100                MOV EAX,[0x00b1dd18]
00547e96  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
00547e9c  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
00547ea3  c745e808000000            MOV dword ptr [EBP + -0x18],0x8
00547eaa  8945d8                    MOV dword ptr [EBP + -0x28],EAX
00547ead  894ddc                    MOV dword ptr [EBP + -0x24],ECX
00547eb0  c645e000                  MOV byte ptr [EBP + -0x20],0x0
00547eb4  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00547ebb  a130ddb100                MOV EAX,[0x00b1dd30]
00547ec0  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00547ec6  c745d40f000000            MOV dword ptr [EBP + -0x2c],0xf
00547ecd  c745d008000000            MOV dword ptr [EBP + -0x30],0x8
00547ed4  8945c0                    MOV dword ptr [EBP + -0x40],EAX
00547ed7  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
00547eda  c645c800                  MOV byte ptr [EBP + -0x38],0x0
00547ede  51                        PUSH ECX
00547edf  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00547ee3  8d45d8                    LEA EAX,[EBP + -0x28]
00547ee6  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00547eed  8bcb                      MOV ECX,EBX
00547eef  50                        PUSH EAX
00547ef0  8d45c0                    LEA EAX,[EBP + -0x40]
00547ef3  50                        PUSH EAX
00547ef4  e837941700                CALL 0x006c1330
00547ef9  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00547efd  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
00547f00  83fa10                    CMP EDX,0x10
00547f03  7228                      JC 0x00547f2d
00547f05  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
00547f08  42                        INC EDX
00547f09  8bc1                      MOV EAX,ECX
00547f0b  81fa00100000              CMP EDX,0x1000
00547f11  7210                      JC 0x00547f23
00547f13  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00547f16  83c223                    ADD EDX,0x23
00547f19  2bc1                      SUB EAX,ECX
00547f1b  83c0fc                    ADD EAX,-0x4
00547f1e  83f81f                    CMP EAX,0x1f
00547f21  7749                      JA 0x00547f6c
00547f23  52                        PUSH EDX
00547f24  51                        PUSH ECX
00547f25  e832725a00                CALL 0x00aef15c
00547f2a  83c408                    ADD ESP,0x8
00547f2d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00547f34  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
00547f37  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00547f3e  c745d40f000000            MOV dword ptr [EBP + -0x2c],0xf
00547f45  c645c000                  MOV byte ptr [EBP + -0x40],0x0
00547f49  83fa10                    CMP EDX,0x10
00547f4c  722e                      JC 0x00547f7c
00547f4e  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
00547f51  42                        INC EDX
00547f52  8bc1                      MOV EAX,ECX
00547f54  81fa00100000              CMP EDX,0x1000
00547f5a  7216                      JC 0x00547f72
00547f5c  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00547f5f  83c223                    ADD EDX,0x23
00547f62  2bc1                      SUB EAX,ECX
00547f64  83c0fc                    ADD EAX,-0x4
00547f67  83f81f                    CMP EAX,0x1f
00547f6a  7606                      JBE 0x00547f72
00547f6c  ff159488b100              CALL dword ptr [0x00b18894]
00547f72  52                        PUSH EDX
00547f73  51                        PUSH ECX
00547f74  e8e3715a00                CALL 0x00aef15c
00547f79  83c408                    ADD ESP,0x8
00547f7c  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
00547f80  741a                      JZ 0x00547f9c
00547f82  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
00547f89  7411                      JZ 0x00547f9c
00547f8b  6a00                      PUSH 0x0
00547f8d  8d4b48                    LEA ECX,[EBX + 0x48]
00547f90  68e4dcb100                PUSH 0xb1dce4
00547f95  e8a629ecff                CALL 0x0040a940
00547f9a  eb40                      JMP 0x00547fdc
00547f9c  6a01                      PUSH 0x1
00547f9e  68e4dcb100                PUSH 0xb1dce4
00547fa3  8d4b48                    LEA ECX,[EBX + 0x48]
00547fa6  e8452becff                CALL 0x0040aaf0
00547fab  84c0                      TEST AL,AL
00547fad  742d                      JZ 0x00547fdc
00547faf  83bb9c00000000            CMP dword ptr [EBX + 0x9c],0x0
00547fb6  7424                      JZ 0x00547fdc
00547fb8  8d8b98000000              LEA ECX,[EBX + 0x98]
00547fbe  0f57c9                    XORPS XMM1,XMM1
00547fc1  e83a0eecff                CALL 0x00408e00
00547fc6  eb14                      JMP 0x00547fdc
00547fc8  c783c00b000000000000      MOV dword ptr [EBX + 0xbc0],0x0
00547fd2  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
00547fdc  6a00                      PUSH 0x0
00547fde  6a0a                      PUSH 0xa
00547fe0  8bcb                      MOV ECX,EBX
00547fe2  e829471600                CALL 0x006ac710
00547fe7  84c0                      TEST AL,AL
00547fe9  0f84de000000              JZ 0x005480cd
00547fef  8b4330                    MOV EAX,dword ptr [EBX + 0x30]
00547ff2  83f803                    CMP EAX,0x3
00547ff5  0f858c000000              JNZ 0x00548087
00547ffb  e8606f1a00                CALL 0x006eef60
00548000  50                        PUSH EAX
00548001  6a00                      PUSH 0x0
00548003  53                        PUSH EBX
00548004  6840b6c700                PUSH 0xc7b640
00548009  8d8b3c030000              LEA ECX,[EBX + 0x33c]
0054800f  51                        PUSH ECX
00548010  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00548016  6a16                      PUSH 0x16
00548018  68e8030000                PUSH 0x3e8
0054801d  e8fe0aeeff                CALL 0x00428b20
00548022  8bf0                      MOV ESI,EAX
00548024  e8376f1a00                CALL 0x006eef60
00548029  8bce                      MOV ECX,ESI
0054802b  660f6ec0                  MOVD XMM0,EAX
0054802f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00548033  c1e81f                    SHR EAX,0x1f
00548036  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0054803f  8b06                      MOV EAX,dword ptr [ESI]
00548041  660f5ac0                  CVTPD2PS XMM0,XMM0
00548045  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0054804d  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
00548055  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0054805d  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00548065  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
0054806d  ff500c                    CALL dword ptr [EAX + 0xc]
00548070  c7865c0400001e000000      MOV dword ptr [ESI + 0x45c],0x1e
0054807a  c786600400001e000000      MOV dword ptr [ESI + 0x460],0x1e
00548084  8b4330                    MOV EAX,dword ptr [EBX + 0x30]
00548087  85c0                      TEST EAX,EAX
00548089  7442                      JZ 0x005480cd
0054808b  e8d06e1a00                CALL 0x006eef60
00548090  51                        PUSH ECX
00548091  8bcb                      MOV ECX,EBX
00548093  660f6ec0                  MOVD XMM0,EAX
00548097  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0054809b  c1e81f                    SHR EAX,0x1f
0054809e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005480a7  660f5ac8                  CVTPD2PS XMM1,XMM0
005480ab  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005480b3  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
005480bb  f30f580d80a2ba00          ADDSS XMM1,dword ptr [0x00baa280]
005480c3  f30f110c24                MOVSS dword ptr [ESP],XMM1
005480c8  e803e41600                CALL 0x006b64d0
005480cd  8bb3c00b0000              MOV ESI,dword ptr [EBX + 0xbc0]
005480d3  0f57c9                    XORPS XMM1,XMM1
005480d6  85f6                      TEST ESI,ESI
005480d8  7e41                      JLE 0x0054811b
005480da  f30f104314                MOVSS XMM0,dword ptr [EBX + 0x14]
005480df  0f2fc1                    COMISS XMM0,XMM1
005480e2  7637                      JBE 0x0054811b
005480e4  f30f58c0                  ADDSS XMM0,XMM0
005480e8  83ec08                    SUB ESP,0x8
005480eb  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
005480f0  d945a8                    FLD dword ptr [EBP + -0x58]
005480f3  dd1c24                    FSTP qword ptr [ESP]
005480f6  e816885a00                CALL 0x00af0911
005480fb  d95da8                    FSTP dword ptr [EBP + -0x58]
005480fe  f30f2c45a8                CVTTSS2SI EAX,dword ptr [EBP + -0x58]
00548103  83c408                    ADD ESP,0x8
00548106  0f57c9                    XORPS XMM1,XMM1
00548109  2bf0                      SUB ESI,EAX
0054810b  b801000000                MOV EAX,0x1
00548110  3bf0                      CMP ESI,EAX
00548112  0f4fc6                    CMOVG EAX,ESI
00548115  8983c00b0000              MOV dword ptr [EBX + 0xbc0],EAX
0054811b  8b4330                    MOV EAX,dword ptr [EBX + 0x30]
0054811e  8945a0                    MOV dword ptr [EBP + -0x60],EAX
00548121  83f803                    CMP EAX,0x3
00548124  0f838a030000              JNC 0x005484b4
0054812a  f30f104314                MOVSS XMM0,dword ptr [EBX + 0x14]
0054812f  0f2fc1                    COMISS XMM0,XMM1
00548132  0f867c030000              JBE 0x005484b4
00548138  f30f109380030000          MOVSS XMM2,dword ptr [EBX + 0x380]
00548140  8bc8                      MOV ECX,EAX
00548142  f30f5cd0                  SUBSS XMM2,XMM0
00548146  f30f115594                MOVSS dword ptr [EBP + -0x6c],XMM2
0054814b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00548150  b803000000                MOV EAX,0x3
00548155  0f57c0                    XORPS XMM0,XMM0
00548158  2bc1                      SUB EAX,ECX
0054815a  8bd1                      MOV EDX,ECX
0054815c  f20f2ac0                  CVTSI2SD XMM0,EAX
00548160  c1e81f                    SHR EAX,0x1f
00548163  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0054816c  b804000000                MOV EAX,0x4
00548171  2bc1                      SUB EAX,ECX
00548173  660f5ac8                  CVTPD2PS XMM1,XMM0
00548177  0f57c0                    XORPS XMM0,XMM0
0054817a  f30f598b84030000          MULSS XMM1,dword ptr [EBX + 0x384]
00548182  f20f2ac0                  CVTSI2SD XMM0,EAX
00548186  c1e81f                    SHR EAX,0x1f
00548189  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00548192  660f5ac0                  CVTPD2PS XMM0,XMM0
00548196  f30f5ec8                  DIVSS XMM1,XMM0
0054819a  0f2fca                    COMISS XMM1,XMM2
0054819d  0f82db020000              JC 0x0054847e
005481a3  8d4101                    LEA EAX,[ECX + 0x1]
005481a6  8bcb                      MOV ECX,EBX
005481a8  894330                    MOV dword ptr [EBX + 0x30],EAX
005481ab  e810c41600                CALL 0x006b45c0
005481b0  8bcb                      MOV ECX,EBX
005481b2  8dbb3c030000              LEA EDI,[EBX + 0x33c]
005481b8  e883661700                CALL 0x006be840
005481bd  f30f100f                  MOVSS XMM1,dword ptr [EDI]
005481c1  f30f105704                MOVSS XMM2,dword ptr [EDI + 0x4]
005481c6  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
005481ce  f30f5c9040030000          SUBSS XMM2,dword ptr [EAX + 0x340]
005481d6  0f28c1                    MOVAPS XMM0,XMM1
005481d9  f30f114da4                MOVSS dword ptr [EBP + -0x5c],XMM1
005481de  f30f59c1                  MULSS XMM0,XMM1
005481e2  0f28ca                    MOVAPS XMM1,XMM2
005481e5  f30f59ca                  MULSS XMM1,XMM2
005481e9  f30f1155a8                MOVSS dword ptr [EBP + -0x58],XMM2
005481ee  f30f58c1                  ADDSS XMM0,XMM1
005481f2  e859d8eeff                CALL 0x00435a50
005481f7  0f57c9                    XORPS XMM1,XMM1
005481fa  0f2fc1                    COMISS XMM0,XMM1
005481fd  7628                      JBE 0x00548227
005481ff  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00548207  f30f5ec8                  DIVSS XMM1,XMM0
0054820b  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
00548210  f30f59c1                  MULSS XMM0,XMM1
00548214  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
00548219  f30f1045a8                MOVSS XMM0,dword ptr [EBP + -0x58]
0054821e  f30f59c1                  MULSS XMM0,XMM1
00548222  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00548227  f30f104da4                MOVSS XMM1,dword ptr [EBP + -0x5c]
0054822c  f30f1055a8                MOVSS XMM2,dword ptr [EBP + -0x58]
00548231  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00548239  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00548241  f30f10839c030000          MOVSS XMM0,dword ptr [EBX + 0x39c]
00548249  f30f59c8                  MULSS XMM1,XMM0
0054824d  f30f59d0                  MULSS XMM2,XMM0
00548251  f30f588b60030000          ADDSS XMM1,dword ptr [EBX + 0x360]
00548259  f30f589364030000          ADDSS XMM2,dword ptr [EBX + 0x364]
00548261  f30f118b60030000          MOVSS dword ptr [EBX + 0x360],XMM1
00548269  f30f119364030000          MOVSS dword ptr [EBX + 0x364],XMM2
00548271  e8ea6c1a00                CALL 0x006eef60
00548276  8bf0                      MOV ESI,EAX
00548278  e8e36c1a00                CALL 0x006eef60
0054827d  660f6ec0                  MOVD XMM0,EAX
00548281  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00548285  c1e81f                    SHR EAX,0x1f
00548288  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00548291  660f5ac0                  CVTPD2PS XMM0,XMM0
00548295  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0054829d  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
005482a5  f30f5c0510a9ba00          SUBSS XMM0,dword ptr [0x00baa910]
005482ad  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
005482b5  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
005482ba  e88152edff                CALL 0x0041d540
005482bf  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
005482c4  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
005482c9  e85252edff                CALL 0x0041d520
005482ce  f30f104da8                MOVSS XMM1,dword ptr [EBP + -0x58]
005482d3  0f28d0                    MOVAPS XMM2,XMM0
005482d6  f30f104598                MOVSS XMM0,dword ptr [EBP + -0x68]
005482db  f30f105da4                MOVSS XMM3,dword ptr [EBP + -0x5c]
005482e0  f30f59ca                  MULSS XMM1,XMM2
005482e4  f30f59d8                  MULSS XMM3,XMM0
005482e8  f30f5cd9                  SUBSS XMM3,XMM1
005482ec  f30f104da8                MOVSS XMM1,dword ptr [EBP + -0x58]
005482f1  f30f59c8                  MULSS XMM1,XMM0
005482f5  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
005482fa  f30f59c2                  MULSS XMM0,XMM2
005482fe  f30f115d98                MOVSS dword ptr [EBP + -0x68],XMM3
00548303  f30f58c8                  ADDSS XMM1,XMM0
00548307  f30f114d9c                MOVSS dword ptr [EBP + -0x64],XMM1
0054830c  e84f6c1a00                CALL 0x006eef60
00548311  f30f104d9c                MOVSS XMM1,dword ptr [EBP + -0x64]
00548316  f30f105598                MOVSS XMM2,dword ptr [EBP + -0x68]
0054831b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00548321  660f6ec0                  MOVD XMM0,EAX
00548325  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00548329  c1e81f                    SHR EAX,0x1f
0054832c  56                        PUSH ESI
0054832d  6a00                      PUSH 0x0
0054832f  53                        PUSH EBX
00548330  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00548339  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
0054833f  50                        PUSH EAX
00548340  8d4584                    LEA EAX,[EBP + -0x7c]
00548343  50                        PUSH EAX
00548344  660f5ac0                  CVTPD2PS XMM0,XMM0
00548348  6a01                      PUSH 0x1
0054834a  6836010000                PUSH 0x136
0054834f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00548357  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
0054835f  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
00548367  f30f59c8                  MULSS XMM1,XMM0
0054836b  f30f59d0                  MULSS XMM2,XMM0
0054836f  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
00548374  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0054837c  f30f114d80                MOVSS dword ptr [EBP + -0x80],XMM1
00548381  f30f104da8                MOVSS XMM1,dword ptr [EBP + -0x58]
00548386  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
0054838e  f30f5807                  ADDSS XMM0,dword ptr [EDI]
00548392  f30f11957cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM2
0054839a  f30f584f04                ADDSS XMM1,dword ptr [EDI + 0x4]
0054839f  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
005483a4  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
005483a9  e87207eeff                CALL 0x00428b20
005483ae  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
005483b4  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
005483bb  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
005483c3  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
005483cb  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
005483d1  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
005483d9  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
005483e0  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
005483e8  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
005483ef  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
005483f4  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
005483fb  0f1145ac                  MOVUPS xmmword ptr [EBP + -0x54],XMM0
005483ff  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
00548406  0f57c0                    XORPS XMM0,XMM0
00548409  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
0054840e  0f1145bc                  MOVUPS xmmword ptr [EBP + -0x44],XMM0
00548412  e8496b1a00                CALL 0x006eef60
00548417  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054841d  50                        PUSH EAX
0054841e  6a02                      PUSH 0x2
00548420  6a00                      PUSH 0x0
00548422  8d458c                    LEA EAX,[EBP + -0x74]
00548425  50                        PUSH EAX
00548426  57                        PUSH EDI
00548427  6a02                      PUSH 0x2
00548429  68e8030000                PUSH 0x3e8
0054842e  e8ed06eeff                CALL 0x00428b20
00548433  8bf0                      MOV ESI,EAX
00548435  8d45ac                    LEA EAX,[EBP + -0x54]
00548438  6a01                      PUSH 0x1
0054843a  6a00                      PUSH 0x0
0054843c  68ff000000                PUSH 0xff
00548441  8b0e                      MOV ECX,dword ptr [ESI]
00548443  6aff                      PUSH -0x1
00548445  50                        PUSH EAX
00548446  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
00548449  8bce                      MOV ECX,ESI
0054844b  ffd2                      CALL EDX
0054844d  f30f105594                MOVSS XMM2,dword ptr [EBP + -0x6c]
00548452  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
0054845c  c786e00000000000c0c0      MOV dword ptr [ESI + 0xe0],0xc0c00000
00548466  c786580300000000803f      MOV dword ptr [ESI + 0x358],0x3f800000
00548470  8b4b30                    MOV ECX,dword ptr [EBX + 0x30]
00548473  8bd1                      MOV EDX,ECX
00548475  83f903                    CMP ECX,0x3
00548478  0f82d2fcffff              JC 0x00548150
0054847e  3b55a0                    CMP EDX,dword ptr [EBP + -0x60]
00548481  7631                      JBE 0x005484b4
00548483  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
00548486  8bcb                      MOV ECX,EBX
00548488  6aff                      PUSH -0x1
0054848a  52                        PUSH EDX
0054848b  50                        PUSH EAX
0054848c  ff7328                    PUSH dword ptr [EBX + 0x28]
0054848f  c7432cffffffff            MOV dword ptr [EBX + 0x2c],0xffffffff
00548496  e8958a1700                CALL 0x006c0f30
0054849b  6a00                      PUSH 0x0
0054849d  8d4b48                    LEA ECX,[EBX + 0x48]
005484a0  c783640b000010000000      MOV dword ptr [EBX + 0xb64],0x10
005484aa  68e4d3b100                PUSH 0xb1d3e4
005484af  e88c24ecff                CALL 0x0040a940
005484b4  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
005484bb  0f843e020000              JZ 0x005486ff
005484c1  e89a6a1a00                CALL 0x006eef60
005484c6  660f6ec0                  MOVD XMM0,EAX
005484ca  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005484ce  c1e81f                    SHR EAX,0x1f
005484d1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005484da  660f5ac0                  CVTPD2PS XMM0,XMM0
005484de  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005484e6  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005484ee  f30f58c0                  ADDSS XMM0,XMM0
005484f2  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
005484f7  e82450edff                CALL 0x0041d520
005484fc  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
00548501  f30f1045a0                MOVSS XMM0,dword ptr [EBP + -0x60]
00548506  e83550edff                CALL 0x0041d540
0054850b  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
00548510  e84b6a1a00                CALL 0x006eef60
00548515  8bf0                      MOV ESI,EAX
00548517  e8446a1a00                CALL 0x006eef60
0054851c  f30f105da0                MOVSS XMM3,dword ptr [EBP + -0x60]
00548521  f30f106594                MOVSS XMM4,dword ptr [EBP + -0x6c]
00548526  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054852c  0f28c4                    MOVAPS XMM0,XMM4
0054852f  660f6ec8                  MOVD XMM1,EAX
00548533  f30fe6c9                  CVTDQ2PD XMM1,XMM1
00548537  c1e81f                    SHR EAX,0x1f
0054853a  56                        PUSH ESI
0054853b  6a00                      PUSH 0x0
0054853d  53                        PUSH EBX
0054853e  f30f59257ca8ba00          MULSS XMM4,dword ptr [0x00baa87c]
00548546  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0054854f  8d458c                    LEA EAX,[EBP + -0x74]
00548552  f30f58a340030000          ADDSS XMM4,dword ptr [EBX + 0x340]
0054855a  50                        PUSH EAX
0054855b  8d4584                    LEA EAX,[EBP + -0x7c]
0054855e  660f5ad1                  CVTPD2PS XMM2,XMM1
00548562  50                        PUSH EAX
00548563  6a01                      PUSH 0x1
00548565  6836010000                PUSH 0x136
0054856a  0f28cb                    MOVAPS XMM1,XMM3
0054856d  f30f591d7ca8ba00          MULSS XMM3,dword ptr [0x00baa87c]
00548575  f30f116588                MOVSS dword ptr [EBP + -0x78],XMM4
0054857a  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00548582  f30f589b3c030000          ADDSS XMM3,dword ptr [EBX + 0x33c]
0054858a  f30f58d2                  ADDSS XMM2,XMM2
0054858e  f30f115d84                MOVSS dword ptr [EBP + -0x7c],XMM3
00548593  f30f581530a6ba00          ADDSS XMM2,dword ptr [0x00baa630]
0054859b  f30f59ca                  MULSS XMM1,XMM2
0054859f  f30f59c2                  MULSS XMM0,XMM2
005485a3  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
005485a8  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
005485ad  e86e05eeff                CALL 0x00428b20
005485b2  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
005485b9  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
005485bf  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
005485c5  f30f108380030000          MOVSS XMM0,dword ptr [EBX + 0x380]
005485cd  0f2f0500aeba00            COMISS XMM0,dword ptr [0x00baae00]
005485d4  0f8625010000              JBE 0x005486ff
005485da  e881691a00                CALL 0x006eef60
005485df  83e001                    AND EAX,0x1
005485e2  0f8517010000              JNZ 0x005486ff
005485e8  6aff                      PUSH -0x1
005485ea  50                        PUSH EAX
005485eb  50                        PUSH EAX
005485ec  6a0b                      PUSH 0xb
005485ee  8bcb                      MOV ECX,EBX
005485f0  e83b891700                CALL 0x006c0f30
005485f5  b940000000                MOV ECX,0x40
005485fa  e80149ecff                CALL 0x0040cf00
005485ff  b90f000000                MOV ECX,0xf
00548604  c745d03f000000            MOV dword ptr [EBP + -0x30],0x3f
0054860b  be6012b600                MOV ESI,0xb61260
00548610  c745d43f000000            MOV dword ptr [EBP + -0x2c],0x3f
00548617  8bf8                      MOV EDI,EAX
00548619  8945c0                    MOV dword ptr [EBP + -0x40],EAX
0054861c  f3a5                      MOVSD.REP ES:EDI,ESI
0054861e  66a5                      MOVSW ES:EDI,ESI
00548620  a4                        MOVSB ES:EDI,ESI
00548621  c6403f00                  MOV byte ptr [EAX + 0x3f],0x0
00548625  8d45c0                    LEA EAX,[EBP + -0x40]
00548628  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
0054862f  50                        PUSH EAX
00548630  8d45d8                    LEA EAX,[EBP + -0x28]
00548633  8bcb                      MOV ECX,EBX
00548635  50                        PUSH EAX
00548636  e805221700                CALL 0x006ba840
0054863b  50                        PUSH EAX
0054863c  6a00                      PUSH 0x0
0054863e  8d4b48                    LEA ECX,[EBX + 0x48]
00548641  c645fc05                  MOV byte ptr [EBP + -0x4],0x5
00548645  e8e638ecff                CALL 0x0040bf30
0054864a  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
0054864e  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
00548651  83fa10                    CMP EDX,0x10
00548654  7228                      JC 0x0054867e
00548656  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
00548659  42                        INC EDX
0054865a  8bc1                      MOV EAX,ECX
0054865c  81fa00100000              CMP EDX,0x1000
00548662  7210                      JC 0x00548674
00548664  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00548667  83c223                    ADD EDX,0x23
0054866a  2bc1                      SUB EAX,ECX
0054866c  83c0fc                    ADD EAX,-0x4
0054866f  83f81f                    CMP EAX,0x1f
00548672  7749                      JA 0x005486bd
00548674  52                        PUSH EDX
00548675  51                        PUSH ECX
00548676  e8e16a5a00                CALL 0x00aef15c
0054867b  83c408                    ADD ESP,0x8
0054867e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00548685  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
00548688  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0054868f  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
00548696  c645d800                  MOV byte ptr [EBP + -0x28],0x0
0054869a  83fa10                    CMP EDX,0x10
0054869d  722e                      JC 0x005486cd
0054869f  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
005486a2  42                        INC EDX
005486a3  8bc1                      MOV EAX,ECX
005486a5  81fa00100000              CMP EDX,0x1000
005486ab  7216                      JC 0x005486c3
005486ad  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005486b0  83c223                    ADD EDX,0x23
005486b3  2bc1                      SUB EAX,ECX
005486b5  83c0fc                    ADD EAX,-0x4
005486b8  83f81f                    CMP EAX,0x1f
005486bb  7606                      JBE 0x005486c3
005486bd  ff159488b100              CALL dword ptr [0x00b18894]
005486c3  52                        PUSH EDX
005486c4  51                        PUSH ECX
005486c5  e8926a5a00                CALL 0x00aef15c
005486ca  83c408                    ADD ESP,0x8
005486cd  51                        PUSH ECX
005486ce  8d4b48                    LEA ECX,[EBX + 0x48]
005486d1  e82a39ecff                CALL 0x0040c000
005486d6  c6837301000000            MOV byte ptr [EBX + 0x173],0x0
005486dd  e87e681a00                CALL 0x006eef60
005486e2  33d2                      XOR EDX,EDX
005486e4  b914000000                MOV ECX,0x14
005486e9  f7f1                      DIV ECX
005486eb  8b8384030000              MOV EAX,dword ptr [EBX + 0x384]
005486f1  03d1                      ADD EDX,ECX
005486f3  898380030000              MOV dword ptr [EBX + 0x380],EAX
005486f9  8993a00b0000              MOV dword ptr [EBX + 0xba0],EDX
005486ff  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00548702  64890d00000000            MOV dword ptr FS:[0x0],ECX
00548709  59                        POP ECX
0054870a  5f                        POP EDI
0054870b  5e                        POP ESI
0054870c  5b                        POP EBX
0054870d  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00548710  33cd                      XOR ECX,EBP
00548712  e8146a5a00                CALL 0x00aef12b
00548717  8be5                      MOV ESP,EBP
00548719  5d                        POP EBP
0054871a  c3                        RET
