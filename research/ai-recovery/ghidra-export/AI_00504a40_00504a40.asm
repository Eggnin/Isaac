; J460 NPC AI 0x00504a40 AI_00504a40
; types=887
; identities=887.0.0
; entry=00504a40
00504a40  53                        PUSH EBX
00504a41  8bdc                      MOV EBX,ESP
00504a43  83ec08                    SUB ESP,0x8
00504a46  83e4f8                    AND ESP,0xfffffff8
00504a49  83c404                    ADD ESP,0x4
00504a4c  55                        PUSH EBP
00504a4d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00504a50  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00504a54  8bec                      MOV EBP,ESP
00504a56  81ec88000000              SUB ESP,0x88
00504a5c  a1b493bf00                MOV EAX,[0x00bf93b4]
00504a61  33c5                      XOR EAX,EBP
00504a63  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00504a66  56                        PUSH ESI
00504a67  57                        PUSH EDI
00504a68  8bf9                      MOV EDI,ECX
00504a6a  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00504a6e  750a                      JNZ 0x00504a7a
00504a70  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00504a78  eb08                      JMP 0x00504a82
00504a7a  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00504a82  8bb7ec030000              MOV ESI,dword ptr [EDI + 0x3ec]
00504a88  a1e0f6b100                MOV EAX,[0x00b1f6e0]
00504a8d  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00504a92  f30f7e05d8f6b100          MOVQ XMM0,qword ptr [0x00b1f6d8]
00504a9a  660fd645b0                MOVQ qword ptr [EBP + -0x50],XMM0
00504a9f  8945cc                    MOV dword ptr [EBP + -0x34],EAX
00504aa2  85f6                      TEST ESI,ESI
00504aa4  7510                      JNZ 0x00504ab6
00504aa6  6854bfb600                PUSH 0xb6bf54
00504aab  6a10                      PUSH 0x10
00504aad  e80ec85000                CALL 0x00a112c0
00504ab2  83c408                    ADD ESP,0x8
00504ab5  cc                        INT3
00504ab6  8b4db0                    MOV ECX,dword ptr [EBP + -0x50]
00504ab9  8bd6                      MOV EDX,ESI
00504abb  d3ea                      SHR EDX,CL
00504abd  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
00504ac0  33d6                      XOR EDX,ESI
00504ac2  8bc2                      MOV EAX,EDX
00504ac4  f30f102508a7ba00          MOVSS XMM4,dword ptr [0x00baa708]
00504acc  d3e0                      SHL EAX,CL
00504ace  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
00504ad1  33c2                      XOR EAX,EDX
00504ad3  8bf0                      MOV ESI,EAX
00504ad5  d3ee                      SHR ESI,CL
00504ad7  33f0                      XOR ESI,EAX
00504ad9  8bc6                      MOV EAX,ESI
00504adb  c1e81f                    SHR EAX,0x1f
00504ade  660f6ec6                  MOVD XMM0,ESI
00504ae2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00504ae6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00504aef  660f5ad0                  CVTPD2PS XMM2,XMM0
00504af3  f30f5915f09fba00          MULSS XMM2,dword ptr [0x00ba9ff0]
00504afb  f30f59d4                  MULSS XMM2,XMM4
00504aff  f30f58d2                  ADDSS XMM2,XMM2
00504b03  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
00504b08  85f6                      TEST ESI,ESI
00504b0a  751d                      JNZ 0x00504b29
00504b0c  6854bfb600                PUSH 0xb6bf54
00504b11  6a10                      PUSH 0x10
00504b13  e8a8c75000                CALL 0x00a112c0
00504b18  83c408                    ADD ESP,0x8
00504b1b  cc                        INT3
00504b29  8b4db0                    MOV ECX,dword ptr [EBP + -0x50]
00504b2c  8bd6                      MOV EDX,ESI
00504b2e  d3ea                      SHR EDX,CL
00504b30  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
00504b33  33d6                      XOR EDX,ESI
00504b35  8bc2                      MOV EAX,EDX
00504b37  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00504b3d  d3e0                      SHL EAX,CL
00504b3f  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
00504b42  33c2                      XOR EAX,EDX
00504b44  8bd0                      MOV EDX,EAX
00504b46  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
00504b4e  d3ea                      SHR EDX,CL
00504b50  33d0                      XOR EDX,EAX
00504b52  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
00504b58  660f6ec2                  MOVD XMM0,EDX
00504b5c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00504b60  c1ea1f                    SHR EDX,0x1f
00504b63  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
00504b68  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
00504b71  f30f58cb                  ADDSS XMM1,XMM3
00504b75  660f5ac0                  CVTPD2PS XMM0,XMM0
00504b79  f30f5905f09fba00          MULSS XMM0,dword ptr [0x00ba9ff0]
00504b81  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00504b89  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
00504b91  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
00504b96  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00504b9e  f30f5cc8                  SUBSS XMM1,XMM0
00504ba2  f30f5c4014                SUBSS XMM0,dword ptr [EAX + 0x14]
00504ba7  f30f58c3                  ADDSS XMM0,XMM3
00504bab  f30f5dc8                  MINSS XMM1,XMM0
00504baf  0f57c0                    XORPS XMM0,XMM0
00504bb2  f30f5e0dd0a9ba00          DIVSS XMM1,dword ptr [0x00baa9d0]
00504bba  f30f5fc8                  MAXSS XMM1,XMM0
00504bbe  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
00504bc6  f30f118ffc000000          MOVSS dword ptr [EDI + 0xfc],XMM1
00504bce  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00504bd4  85c0                      TEST EAX,EAX
00504bd6  0f8411050000              JZ 0x005050ed
00504bdc  83f804                    CMP EAX,0x4
00504bdf  0f85fa000000              JNZ 0x00504cdf
00504be5  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
00504bed  f30f591d04a3ba00          MULSS XMM3,dword ptr [0x00baa304]
00504bf5  f30f104dc8                MOVSS XMM1,dword ptr [EBP + -0x38]
00504bfa  f30f590d54a5ba00          MULSS XMM1,dword ptr [0x00baa554]
00504c02  0f2ed8                    UCOMISS XMM3,XMM0
00504c05  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
00504c0d  9f                        LAHF
00504c0e  f6c444                    TEST AH,0x44
00504c11  7b3c                      JNP 0x00504c4f
00504c13  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00504c1b  f30f59c8                  MULSS XMM1,XMM0
00504c1f  f30f5905e49fba00          MULSS XMM0,dword ptr [0x00ba9fe4]
00504c27  f30f5ecb                  DIVSS XMM1,XMM3
00504c2b  f30f5ec3                  DIVSS XMM0,XMM3
00504c2f  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
00504c37  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
00504c3f  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00504c47  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00504c4f  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00504c57  f30f59c4                  MULSS XMM0,XMM4
00504c5b  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
00504c63  f30f58c2                  ADDSS XMM0,XMM2
00504c67  e8b488f1ff                CALL 0x0041d520
00504c6c  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00504c73  f30f5945cc                MULSS XMM0,dword ptr [EBP + -0x34]
00504c78  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00504c80  7555                      JNZ 0x00504cd7
00504c82  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00504c8a  0f2f0544aaba00            COMISS XMM0,dword ptr [0x00baaa44]
00504c91  7244                      JC 0x00504cd7
00504c93  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00504c99  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00504ca3  e848442e00                CALL 0x007e90f0
00504ca8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00504cae  50                        PUSH EAX
00504caf  ff7730                    PUSH dword ptr [EDI + 0x30]
00504cb2  8d8734030000              LEA EAX,[EDI + 0x334]
00504cb8  57                        PUSH EDI
00504cb9  6840b6c700                PUSH 0xc7b640
00504cbe  50                        PUSH EAX
00504cbf  ff772c                    PUSH dword ptr [EDI + 0x2c]
00504cc2  ff7728                    PUSH dword ptr [EDI + 0x28]
00504cc5  e8563ef2ff                CALL 0x00428b20
00504cca  8bc8                      MOV ECX,EAX
00504ccc  8b10                      MOV EDX,dword ptr [EAX]
00504cce  ff520c                    CALL dword ptr [EDX + 0xc]
00504cd1  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00504cd7  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
00504cdf  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00504ce3  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00504ceb  0f85ca030000              JNZ 0x005050bb
00504cf1  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
00504cf7  f30f104114                MOVSS XMM0,dword ptr [ECX + 0x14]
00504cfc  f30f5cc3                  SUBSS XMM0,XMM3
00504d00  0f2fc1                    COMISS XMM0,XMM1
00504d03  0f87ca030000              JA 0x005050d3
00504d09  8b86f8640200              MOV EAX,dword ptr [ESI + 0x264f8]
00504d0f  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00504d15  83f801                    CMP EAX,0x1
00504d18  0f8e67050000              JLE 0x00505285
00504d1e  8bcf                      MOV ECX,EDI
00504d20  e8fb1e1d00                CALL 0x006d6c20
00504d25  85c0                      TEST EAX,EAX
00504d27  0f8f58050000              JG 0x00505285
00504d2d  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
00504d33  80b82972000000            CMP byte ptr [EAX + 0x7229],0x0
00504d3a  740d                      JZ 0x00504d49
00504d3c  83b8ec11000008            CMP dword ptr [EAX + 0x11ec],0x8
00504d43  0f8f3c050000              JG 0x00505285
00504d49  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00504d50  0f852f050000              JNZ 0x00505285
00504d56  51                        PUSH ECX
00504d57  c704240000803f            MOV dword ptr [ESP],0x3f800000
00504d5e  6a00                      PUSH 0x0
00504d60  6a3c                      PUSH 0x3c
00504d62  51                        PUSH ECX
00504d63  c704240000803f            MOV dword ptr [ESP],0x3f800000
00504d6a  8bcf                      MOV ECX,EDI
00504d6c  683c010000                PUSH 0x13c
00504d71  c787640b000012000000      MOV dword ptr [EDI + 0xb64],0x12
00504d7b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00504d85  e8161e1d00                CALL 0x006d6ba0
00504d8a  a17816c700                MOV EAX,[0x00c71678]
00504d8f  51                        PUSH ECX
00504d90  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00504d96  c7042400000000            MOV dword ptr [ESP],0x0
00504d9d  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00504da7  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
00504db1  51                        PUSH ECX
00504db2  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00504db8  e8a3e53000                CALL 0x00813360
00504dbd  84c0                      TEST AL,AL
00504dbf  0f84c0040000              JZ 0x00505285
00504dc5  e896a11e00                CALL 0x006eef60
00504dca  33d2                      XOR EDX,EDX
00504dcc  b903000000                MOV ECX,0x3
00504dd1  f7f1                      DIV ECX
00504dd3  83c202                    ADD EDX,0x2
00504dd6  8955c4                    MOV dword ptr [EBP + -0x3c],EDX
00504dd9  85d2                      TEST EDX,EDX
00504ddb  0f8ea4040000              JLE 0x00505285
00504de1  e87aa11e00                CALL 0x006eef60
00504de6  660f6ec0                  MOVD XMM0,EAX
00504dea  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00504dee  c1e81f                    SHR EAX,0x1f
00504df1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00504dfa  660f5ac0                  CVTPD2PS XMM0,XMM0
00504dfe  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00504e06  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00504e0e  f30f58c0                  ADDSS XMM0,XMM0
00504e12  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
00504e17  e844a11e00                CALL 0x006eef60
00504e1c  660f6ec0                  MOVD XMM0,EAX
00504e20  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00504e24  c1e81f                    SHR EAX,0x1f
00504e27  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00504e30  660f5ac0                  CVTPD2PS XMM0,XMM0
00504e34  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00504e3c  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00504e44  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00504e49  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
00504e4e  e8ed86f1ff                CALL 0x0041d540
00504e53  f30f5945c8                MULSS XMM0,dword ptr [EBP + -0x38]
00504e58  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
00504e5d  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
00504e62  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
00504e67  e8b486f1ff                CALL 0x0041d520
00504e6c  f30f5945c8                MULSS XMM0,dword ptr [EBP + -0x38]
00504e71  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00504e76  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00504e7b  e8e0a01e00                CALL 0x006eef60
00504e80  8bf0                      MOV ESI,EAX
00504e82  e8d9a01e00                CALL 0x006eef60
00504e87  660f6ec8                  MOVD XMM1,EAX
00504e8b  f30fe6c9                  CVTDQ2PD XMM1,XMM1
00504e8f  c1e81f                    SHR EAX,0x1f
00504e92  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
00504e9b  660f5ac1                  CVTPD2PS XMM0,XMM1
00504e9f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00504ea7  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00504eaf  f30f58c0                  ADDSS XMM0,XMM0
00504eb3  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
00504eb8  e8a3a01e00                CALL 0x006eef60
00504ebd  660f6ec0                  MOVD XMM0,EAX
00504ec1  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00504ec5  c1e81f                    SHR EAX,0x1f
00504ec8  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00504ed1  660f5ac0                  CVTPD2PS XMM0,XMM0
00504ed5  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00504edd  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00504ee5  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00504eea  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
00504eef  e84c86f1ff                CALL 0x0041d540
00504ef4  f30f5945c8                MULSS XMM0,dword ptr [EBP + -0x38]
00504ef9  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00504f01  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
00504f06  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
00504f0b  e81086f1ff                CALL 0x0041d520
00504f10  f30f5945c8                MULSS XMM0,dword ptr [EBP + -0x38]
00504f15  8d45a4                    LEA EAX,[EBP + -0x5c]
00504f18  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00504f1e  56                        PUSH ESI
00504f1f  6a00                      PUSH 0x0
00504f21  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00504f29  57                        PUSH EDI
00504f2a  50                        PUSH EAX
00504f2b  8d45b4                    LEA EAX,[EBP + -0x4c]
00504f2e  50                        PUSH EAX
00504f2f  6a3b                      PUSH 0x3b
00504f31  68e8030000                PUSH 0x3e8
00504f36  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
00504f3b  e8e03bf2ff                CALL 0x00428b20
00504f40  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00504f48  8bf0                      MOV ESI,EAX
00504f4a  f30f1055c0                MOVSS XMM2,dword ptr [EBP + -0x40]
00504f4f  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00504f56  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
00504f5b  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
00504f63  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00504f6b  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00504f73  8975c8                    MOV dword ptr [EBP + -0x38],ESI
00504f76  f30f59ca                  MULSS XMM1,XMM2
00504f7a  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00504f82  f30f5945bc                MULSS XMM0,dword ptr [EBP + -0x44]
00504f87  f30f58c8                  ADDSS XMM1,XMM0
00504f8b  0f57c0                    XORPS XMM0,XMM0
00504f8e  0f2fc1                    COMISS XMM0,XMM1
00504f91  760d                      JBE 0x00504fa0
00504f93  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00504f9b  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
00504fa0  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
00504faa  c786e00000000000a0c1      MOV dword ptr [ESI + 0xe0],0xc1a00000
00504fb4  e8a79f1e00                CALL 0x006eef60
00504fb9  660f6ec0                  MOVD XMM0,EAX
00504fbd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00504fc1  c1e81f                    SHR EAX,0x1f
00504fc4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00504fcd  660f5ac0                  CVTPD2PS XMM0,XMM0
00504fd1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00504fd9  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00504fe1  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00504fe9  f30f5945cc                MULSS XMM0,dword ptr [EBP + -0x34]
00504fee  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
00504ff6  e8659f1e00                CALL 0x006eef60
00504ffb  33d2                      XOR EDX,EDX
00504ffd  b90f000000                MOV ECX,0xf
00505002  f7f1                      DIV ECX
00505004  8b06                      MOV EAX,dword ptr [ESI]
00505006  03d1                      ADD EDX,ECX
00505008  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
0050500e  899660040000              MOV dword ptr [ESI + 0x460],EDX
00505014  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00505017  e8449f1e00                CALL 0x006eef60
0050501c  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
0050501f  6a01                      PUSH 0x1
00505021  6a00                      PUSH 0x0
00505023  660f6ec0                  MOVD XMM0,EAX
00505027  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050502b  c1e81f                    SHR EAX,0x1f
0050502e  68ff000000                PUSH 0xff
00505033  6aff                      PUSH -0x1
00505035  c745d00000803f            MOV dword ptr [EBP + -0x30],0x3f800000
0050503c  c745d40000803f            MOV dword ptr [EBP + -0x2c],0x3f800000
00505043  c745d80000803f            MOV dword ptr [EBP + -0x28],0x3f800000
0050504a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00505053  8d45d0                    LEA EAX,[EBP + -0x30]
00505056  c745f000000000            MOV dword ptr [EBP + -0x10],0x0
0050505d  50                        PUSH EAX
0050505e  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
00505065  c745f800000000            MOV dword ptr [EBP + -0x8],0x0
0050506c  660f5ac8                  CVTPD2PS XMM1,XMM0
00505070  0f57c0                    XORPS XMM0,XMM0
00505073  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0050507b  0f1145e0                  MOVUPS xmmword ptr [EBP + -0x20],XMM0
0050507f  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00505087  f30f580d98a1ba00          ADDSS XMM1,dword ptr [0x00baa198]
0050508f  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
00505094  ffd6                      CALL ESI
00505096  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
00505099  8b01                      MOV EAX,dword ptr [ECX]
0050509b  ff500c                    CALL dword ptr [EAX + 0xc]
0050509e  836dc401                  SUB dword ptr [EBP + -0x3c],0x1
005050a2  0f8539fdffff              JNZ 0x00504de1
005050a8  5f                        POP EDI
005050a9  5e                        POP ESI
005050aa  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005050ad  33cd                      XOR ECX,EBP
005050af  e877a05e00                CALL 0x00aef12b
005050b4  8be5                      MOV ESP,EBP
005050b6  5d                        POP EBP
005050b7  8be3                      MOV ESP,EBX
005050b9  5b                        POP EBX
005050ba  c3                        RET
005050bb  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
005050c1  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
005050c6  f30f58c3                  ADDSS XMM0,XMM3
005050ca  0f2fc8                    COMISS XMM1,XMM0
005050cd  0f8636fcffff              JBE 0x00504d09
005050d3  8b07                      MOV EAX,dword ptr [EDI]
005050d5  8bcf                      MOV ECX,EDI
005050d7  ff5028                    CALL dword ptr [EAX + 0x28]
005050da  5f                        POP EDI
005050db  5e                        POP ESI
005050dc  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005050df  33cd                      XOR ECX,EBP
005050e1  e845a05e00                CALL 0x00aef12b
005050e6  8be5                      MOV ESP,EBP
005050e8  5d                        POP EBP
005050e9  8be3                      MOV ESP,EBX
005050eb  5b                        POP EBX
005050ec  c3                        RET
005050ed  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005050f7  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
005050fa  85c9                      TEST ECX,ECX
005050fc  744d                      JZ 0x0050514b
005050fe  83791410                  CMP dword ptr [ECX + 0x14],0x10
00505102  8bc1                      MOV EAX,ECX
00505104  7202                      JC 0x00505108
00505106  8b01                      MOV EAX,dword ptr [ECX]
00505108  b954bcb100                MOV ECX,0xb1bc54
0050510d  0f1f00                    NOP dword ptr [EAX]
00505110  8a10                      MOV DL,byte ptr [EAX]
00505112  3a11                      CMP DL,byte ptr [ECX]
00505114  751a                      JNZ 0x00505130
00505116  84d2                      TEST DL,DL
00505118  7412                      JZ 0x0050512c
0050511a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0050511d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00505120  750e                      JNZ 0x00505130
00505122  83c002                    ADD EAX,0x2
00505125  83c102                    ADD ECX,0x2
00505128  84d2                      TEST DL,DL
0050512a  75e4                      JNZ 0x00505110
0050512c  33c0                      XOR EAX,EAX
0050512e  eb05                      JMP 0x00505135
00505130  1bc0                      SBB EAX,EAX
00505132  83c801                    OR EAX,0x1
00505135  85c0                      TEST EAX,EAX
00505137  7512                      JNZ 0x0050514b
00505139  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0050513c  80783400                  CMP byte ptr [EAX + 0x34],0x0
00505140  7431                      JZ 0x00505173
00505142  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00505149  7528                      JNZ 0x00505173
0050514b  6a01                      PUSH 0x1
0050514d  6854bcb100                PUSH 0xb1bc54
00505152  8d4f48                    LEA ECX,[EDI + 0x48]
00505155  e87654f0ff                CALL 0x0040a5d0
0050515a  84c0                      TEST AL,AL
0050515c  740f                      JZ 0x0050516d
0050515e  8d4f78                    LEA ECX,[EDI + 0x78]
00505161  e84a50f0ff                CALL 0x0040a1b0
00505166  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0050516d  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00505173  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00505177  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0050517d  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00505187  0f95c0                    SETNZ AL
0050518a  f30f1055c8                MOVSS XMM2,dword ptr [EBP + -0x38]
0050518f  888748010000              MOV byte ptr [EDI + 0x148],AL
00505195  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
0050519f  8b01                      MOV EAX,dword ptr [ECX]
005051a1  f30f1001                  MOVSS XMM0,dword ptr [ECX]
005051a5  898734030000              MOV dword ptr [EDI + 0x334],EAX
005051ab  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
005051ae  898738030000              MOV dword ptr [EDI + 0x338],EAX
005051b4  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
005051ba  c7459800000000            MOV dword ptr [EBP + -0x68],0x0
005051c1  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
005051c8  c745a000000000            MOV dword ptr [EBP + -0x60],0x0
005051cf  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
005051d2  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
005051d9  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
005051e0  8d0480                    LEA EAX,[EAX + EAX*0x4]
005051e3  c1e003                    SHL EAX,0x3
005051e6  660f6ec8                  MOVD XMM1,EAX
005051ea  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
005051f0  0f5bc9                    CVTDQ2PS XMM1,XMM1
005051f3  f30f59d1                  MULSS XMM2,XMM1
005051f7  f30f590de49fba00          MULSS XMM1,dword ptr [0x00ba9fe4]
005051ff  f30f5cc2                  SUBSS XMM0,XMM2
00505203  f30f1101                  MOVSS dword ptr [ECX],XMM0
00505207  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0050520c  f30f5cc1                  SUBSS XMM0,XMM1
00505210  0f280db0c5ba00            MOVAPS XMM1,xmmword ptr [0x00bac5b0]
00505217  f30f114104                MOVSS dword ptr [ECX + 0x4],XMM0
0050521c  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00505222  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00505229  83e1fb                    AND ECX,0xfffffffb
0050522c  83c901                    OR ECX,0x1
0050522f  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00505235  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050523b  3bc8                      CMP ECX,EAX
0050523d  7417                      JZ 0x00505256
0050523f  8b45a0                    MOV EAX,dword ptr [EBP + -0x60]
00505242  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
00505246  f30f7e4d98                MOVQ XMM1,qword ptr [EBP + -0x68]
0050524b  660fd64920                MOVQ qword ptr [ECX + 0x20],XMM1
00505250  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00505253  894128                    MOV dword ptr [ECX + 0x28],EAX
00505256  f30f1045c4                MOVSS XMM0,dword ptr [EBP + -0x3c]
0050525b  e8e082f1ff                CALL 0x0041d540
00505260  f30f104dcc                MOVSS XMM1,dword ptr [EBP + -0x34]
00505265  f30f590d10a8ba00          MULSS XMM1,dword ptr [0x00baa810]
0050526d  f30f59c1                  MULSS XMM0,XMM1
00505271  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00505279  f30f5cc8                  SUBSS XMM1,XMM0
0050527d  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
00505285  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00505288  5f                        POP EDI
00505289  33cd                      XOR ECX,EBP
0050528b  5e                        POP ESI
0050528c  e89a9e5e00                CALL 0x00aef12b
00505291  8be5                      MOV ESP,EBP
00505293  5d                        POP EBP
00505294  8be3                      MOV ESP,EBX
00505296  5b                        POP EBX
00505297  c3                        RET
