; J460 NPC AI 0x00531ab0 AI_00531ab0
; types=206,207
; identities=206.0.0,206.1.0,207.0.0,207.1.0
; entry=00531ab0
00531ab0  53                        PUSH EBX
00531ab1  8bdc                      MOV EBX,ESP
00531ab3  83ec08                    SUB ESP,0x8
00531ab6  83e4f8                    AND ESP,0xfffffff8
00531ab9  83c404                    ADD ESP,0x4
00531abc  55                        PUSH EBP
00531abd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00531ac0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00531ac4  8bec                      MOV EBP,ESP
00531ac6  6aff                      PUSH -0x1
00531ac8  684547af00                PUSH 0xaf4745
00531acd  64a100000000              MOV EAX,FS:[0x0]
00531ad3  50                        PUSH EAX
00531ad4  53                        PUSH EBX
00531ad5  81ec00010000              SUB ESP,0x100
00531adb  a1b493bf00                MOV EAX,[0x00bf93b4]
00531ae0  33c5                      XOR EAX,EBP
00531ae2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00531ae5  56                        PUSH ESI
00531ae6  57                        PUSH EDI
00531ae7  50                        PUSH EAX
00531ae8  8d45f4                    LEA EAX,[EBP + -0xc]
00531aeb  64a300000000              MOV FS:[0x0],EAX
00531af1  8bf9                      MOV EDI,ECX
00531af3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00531af9  6a01                      PUSH 0x1
00531afb  81c1a8ba0100              ADD ECX,0x1baa8
00531b01  51                        PUSH ECX
00531b02  6879010000                PUSH 0x179
00531b07  e874c54800                CALL 0x009be080
00531b0c  85c0                      TEST EAX,EAX
00531b0e  7414                      JZ 0x00531b24
00531b10  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00531b16  2500000020                AND EAX,0x20000000
00531b1b  83c800                    OR EAX,0x0
00531b1e  7504                      JNZ 0x00531b24
00531b20  b201                      MOV DL,0x1
00531b22  eb02                      JMP 0x00531b26
00531b24  32d2                      XOR DL,DL
00531b26  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00531b2c  889507ffffff              MOV byte ptr [EBP + 0xffffff07],DL
00531b32  85c0                      TEST EAX,EAX
00531b34  750f                      JNZ 0x00531b45
00531b36  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00531b40  e961060000                JMP 0x005321a6
00531b45  83f804                    CMP EAX,0x4
00531b48  0f85c5030000              JNZ 0x00531f13
00531b4e  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
00531b58  817f28ce000000            CMP dword ptr [EDI + 0x28],0xce
00531b5f  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00531b65  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00531b6b  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
00531b71  0f8520010000              JNZ 0x00531c97
00531b77  81e100020000              AND ECX,0x200
00531b7d  83c900                    OR ECX,0x0
00531b80  0f855a020000              JNZ 0x00531de0
00531b86  84d2                      TEST DL,DL
00531b88  0f8552020000              JNZ 0x00531de0
00531b8e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00531b95  8bcf                      MOV ECX,EDI
00531b97  7440                      JZ 0x00531bd9
00531b99  e8a2cc1800                CALL 0x006be840
00531b9e  6a01                      PUSH 0x1
00531ba0  6884030000                PUSH 0x384
00531ba5  51                        PUSH ECX
00531ba6  8b903c030000              MOV EDX,dword ptr [EAX + 0x33c]
00531bac  8d8f14040000              LEA ECX,[EDI + 0x414]
00531bb2  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00531bb8  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00531bbe  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00531bc4  c704246666263f            MOV dword ptr [ESP],0x3f266666
00531bcb  50                        PUSH EAX
00531bcc  899508ffffff              MOV dword ptr [EBP + 0xffffff08],EDX
00531bd2  e8e9172b00                CALL 0x007e33c0
00531bd7  eb31                      JMP 0x00531c0a
00531bd9  e862cc1800                CALL 0x006be840
00531bde  6a00                      PUSH 0x0
00531be0  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00531be6  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00531bec  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00531bf2  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00531bf8  898d08ffffff              MOV dword ptr [EBP + 0xffffff08],ECX
00531bfe  8d8f14040000              LEA ECX,[EDI + 0x414]
00531c04  50                        PUSH EAX
00531c05  e8362d2b00                CALL 0x007e4940
00531c0a  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00531c0e  b8c8000000                MOV EAX,0xc8
00531c13  be64000000                MOV ESI,0x64
00531c18  8bcf                      MOV ECX,EDI
00531c1a  0f44f0                    CMOVZ ESI,EAX
00531c1d  e8fe4f1a00                CALL 0x006d6c20
00531c22  83f806                    CMP EAX,0x6
00531c25  0f8d0d020000              JGE 0x00531e38
00531c2b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00531c32  7429                      JZ 0x00531c5d
00531c34  6a09                      PUSH 0x9
00531c36  8bcf                      MOV ECX,EDI
00531c38  e823661a00                CALL 0x006d8260
00531c3d  84c0                      TEST AL,AL
00531c3f  7541                      JNZ 0x00531c82
00531c41  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00531c49  8bcf                      MOV ECX,EDI
00531c4b  6a07                      PUSH 0x7
00531c4d  6a00                      PUSH 0x0
00531c4f  e80c921900                CALL 0x006cae60
00531c54  84c0                      TEST AL,AL
00531c56  752a                      JNZ 0x00531c82
00531c58  e9db010000                JMP 0x00531e38
00531c5d  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
00531c64  7f0d                      JG 0x00531c73
00531c66  8bce                      MOV ECX,ESI
00531c68  d1e9                      SHR ECX,0x1
00531c6a  e8a1d31400                CALL 0x0067f010
00531c6f  85c0                      TEST EAX,EAX
00531c71  740f                      JZ 0x00531c82
00531c73  8bce                      MOV ECX,ESI
00531c75  e896d31400                CALL 0x0067f010
00531c7a  85c0                      TEST EAX,EAX
00531c7c  0f85b6010000              JNZ 0x00531e38
00531c82  6a00                      PUSH 0x0
00531c84  6800080001                PUSH 0x1000800
00531c89  8bcf                      MOV ECX,EDI
00531c8b  e8a057eeff                CALL 0x00417430
00531c90  84c0                      TEST AL,AL
00531c92  e93b010000                JMP 0x00531dd2
00531c97  81e100080001              AND ECX,0x1000800
00531c9d  83c900                    OR ECX,0x0
00531ca0  8bcf                      MOV ECX,EDI
00531ca2  0f8482000000              JZ 0x00531d2a
00531ca8  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00531caf  7443                      JZ 0x00531cf4
00531cb1  e88acb1800                CALL 0x006be840
00531cb6  6a01                      PUSH 0x1
00531cb8  6884030000                PUSH 0x384
00531cbd  51                        PUSH ECX
00531cbe  8b903c030000              MOV EDX,dword ptr [EAX + 0x33c]
00531cc4  8d8f14040000              LEA ECX,[EDI + 0x414]
00531cca  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00531cd0  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00531cd6  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00531cdc  c704246666263f            MOV dword ptr [ESP],0x3f266666
00531ce3  50                        PUSH EAX
00531ce4  899508ffffff              MOV dword ptr [EBP + 0xffffff08],EDX
00531cea  e8d1162b00                CALL 0x007e33c0
00531cef  e944010000                JMP 0x00531e38
00531cf4  e847cb1800                CALL 0x006be840
00531cf9  6a00                      PUSH 0x0
00531cfb  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00531d01  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00531d07  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00531d0d  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00531d13  898d08ffffff              MOV dword ptr [EBP + 0xffffff08],ECX
00531d19  8d8f14040000              LEA ECX,[EDI + 0x414]
00531d1f  50                        PUSH EAX
00531d20  e81b2c2b00                CALL 0x007e4940
00531d25  e90e010000                JMP 0x00531e38
00531d2a  6a00                      PUSH 0x0
00531d2c  6800020000                PUSH 0x200
00531d31  e8fa56eeff                CALL 0x00417430
00531d36  84c0                      TEST AL,AL
00531d38  0f85a2000000              JNZ 0x00531de0
00531d3e  388507ffffff              CMP byte ptr [EBP + 0xffffff07],AL
00531d44  0f8596000000              JNZ 0x00531de0
00531d4a  8bcf                      MOV ECX,EDI
00531d4c  e8efca1800                CALL 0x006be840
00531d51  6a01                      PUSH 0x1
00531d53  6884030000                PUSH 0x384
00531d58  51                        PUSH ECX
00531d59  8b903c030000              MOV EDX,dword ptr [EAX + 0x33c]
00531d5f  8d8f14040000              LEA ECX,[EDI + 0x414]
00531d65  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00531d6b  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00531d71  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00531d77  c704246666263f            MOV dword ptr [ESP],0x3f266666
00531d7e  50                        PUSH EAX
00531d7f  899508ffffff              MOV dword ptr [EBP + 0xffffff08],EDX
00531d85  e836162b00                CALL 0x007e33c0
00531d8a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00531d91  7426                      JZ 0x00531db9
00531d93  6a09                      PUSH 0x9
00531d95  8bcf                      MOV ECX,EDI
00531d97  e8c4641a00                CALL 0x006d8260
00531d9c  84c0                      TEST AL,AL
00531d9e  7534                      JNZ 0x00531dd4
00531da0  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00531da8  8bcf                      MOV ECX,EDI
00531daa  6a07                      PUSH 0x7
00531dac  6a00                      PUSH 0x0
00531dae  e8ad901900                CALL 0x006cae60
00531db3  84c0                      TEST AL,AL
00531db5  751d                      JNZ 0x00531dd4
00531db7  eb7f                      JMP 0x00531e38
00531db9  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
00531dc0  7476                      JZ 0x00531e38
00531dc2  e899d11b00                CALL 0x006eef60
00531dc7  33d2                      XOR EDX,EDX
00531dc9  b932000000                MOV ECX,0x32
00531dce  f7f1                      DIV ECX
00531dd0  85d2                      TEST EDX,EDX
00531dd2  7564                      JNZ 0x00531e38
00531dd4  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00531dde  eb58                      JMP 0x00531e38
00531de0  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00531de7  7442                      JZ 0x00531e2b
00531de9  8bcf                      MOV ECX,EDI
00531deb  e850ca1800                CALL 0x006be840
00531df0  6a01                      PUSH 0x1
00531df2  6884030000                PUSH 0x384
00531df7  51                        PUSH ECX
00531df8  8b903c030000              MOV EDX,dword ptr [EAX + 0x33c]
00531dfe  8d8f14040000              LEA ECX,[EDI + 0x414]
00531e04  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00531e0a  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00531e10  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00531e16  c704246666263f            MOV dword ptr [ESP],0x3f266666
00531e1d  50                        PUSH EAX
00531e1e  899508ffffff              MOV dword ptr [EBP + 0xffffff08],EDX
00531e24  e897152b00                CALL 0x007e33c0
00531e29  eb0d                      JMP 0x00531e38
00531e2b  6a00                      PUSH 0x0
00531e2d  8d8f14040000              LEA ECX,[EDI + 0x414]
00531e33  e8c8442b00                CALL 0x007e6300
00531e38  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00531e3f  c745cc04000000            MOV dword ptr [EBP + -0x34],0x4
00531e46  c745bc57616c6b            MOV dword ptr [EBP + -0x44],0x6b6c6157
00531e4d  c645c000                  MOV byte ptr [EBP + -0x40],0x0
00531e51  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00531e58  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00531e5f  c745e404000000            MOV dword ptr [EBP + -0x1c],0x4
00531e66  c745d457616c6b            MOV dword ptr [EBP + -0x2c],0x6b6c6157
00531e6d  c645d800                  MOV byte ptr [EBP + -0x28],0x0
00531e71  51                        PUSH ECX
00531e72  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00531e76  8d45bc                    LEA EAX,[EBP + -0x44]
00531e79  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00531e80  8bcf                      MOV ECX,EDI
00531e82  50                        PUSH EAX
00531e83  8d45d4                    LEA EAX,[EBP + -0x2c]
00531e86  50                        PUSH EAX
00531e87  e8a4f41800                CALL 0x006c1330
00531e8c  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00531e8f  83fa10                    CMP EDX,0x10
00531e92  7228                      JC 0x00531ebc
00531e94  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00531e97  42                        INC EDX
00531e98  8bc1                      MOV EAX,ECX
00531e9a  81fa00100000              CMP EDX,0x1000
00531ea0  7210                      JC 0x00531eb2
00531ea2  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00531ea5  83c223                    ADD EDX,0x23
00531ea8  2bc1                      SUB EAX,ECX
00531eaa  83c0fc                    ADD EAX,-0x4
00531ead  83f81f                    CMP EAX,0x1f
00531eb0  7742                      JA 0x00531ef4
00531eb2  52                        PUSH EDX
00531eb3  51                        PUSH ECX
00531eb4  e8a3d25b00                CALL 0x00aef15c
00531eb9  83c408                    ADD ESP,0x8
00531ebc  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
00531ebf  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00531ec6  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00531ecd  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00531ed1  83fa10                    CMP EDX,0x10
00531ed4  722e                      JC 0x00531f04
00531ed6  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00531ed9  42                        INC EDX
00531eda  8bc1                      MOV EAX,ECX
00531edc  81fa00100000              CMP EDX,0x1000
00531ee2  7216                      JC 0x00531efa
00531ee4  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00531ee7  83c223                    ADD EDX,0x23
00531eea  2bc1                      SUB EAX,ECX
00531eec  83c0fc                    ADD EAX,-0x4
00531eef  83f81f                    CMP EAX,0x1f
00531ef2  7606                      JBE 0x00531efa
00531ef4  ff159488b100              CALL dword ptr [0x00b18894]
00531efa  52                        PUSH EDX
00531efb  51                        PUSH ECX
00531efc  e85bd25b00                CALL 0x00aef15c
00531f01  83c408                    ADD ESP,0x8
00531f04  c7876c030000cdcc4c3f      MOV dword ptr [EDI + 0x36c],0x3f4ccccd
00531f0e  e993020000                JMP 0x005321a6
00531f13  83f808                    CMP EAX,0x8
00531f16  0f858a020000              JNZ 0x005321a6
00531f1c  817f28ce000000            CMP dword ptr [EDI + 0x28],0xce
00531f23  8d4f48                    LEA ECX,[EDI + 0x48]
00531f26  6a00                      PUSH 0x0
00531f28  0f8558010000              JNZ 0x00532086
00531f2e  684811b600                PUSH 0xb61148
00531f33  e84884edff                CALL 0x0040a380
00531f38  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00531f3f  740a                      JZ 0x00531f4b
00531f41  c7874c0100000000c03f      MOV dword ptr [EDI + 0x14c],0x3fc00000
00531f4b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00531f4f  0f842f020000              JZ 0x00532184
00531f55  684411b600                PUSH 0xb61144
00531f5a  8d4f78                    LEA ECX,[EDI + 0x78]
00531f5d  e86e8eedff                CALL 0x0040add0
00531f62  84c0                      TEST AL,AL
00531f64  0f840b020000              JZ 0x00532175
00531f6a  51                        PUSH ECX
00531f6b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00531f72  6a00                      PUSH 0x0
00531f74  6a02                      PUSH 0x2
00531f76  51                        PUSH ECX
00531f77  c704240000803f            MOV dword ptr [ESP],0x3f800000
00531f7e  8bcf                      MOV ECX,EDI
00531f80  689f000000                PUSH 0x9f
00531f85  e8164c1a00                CALL 0x006d6ba0
00531f8a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00531f8d  85c0                      TEST EAX,EAX
00531f8f  0f859e000000              JNZ 0x00532033
00531f95  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00531f9b  50                        PUSH EAX
00531f9c  e8cfd01400                CALL 0x0067f070
00531fa1  83c404                    ADD ESP,0x4
00531fa4  e8b7cf1b00                CALL 0x006eef60
00531fa9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00531faf  8db73c030000              LEA ESI,[EDI + 0x33c]
00531fb5  50                        PUSH EAX
00531fb6  6a00                      PUSH 0x0
00531fb8  57                        PUSH EDI
00531fb9  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00531fbf  50                        PUSH EAX
00531fc0  56                        PUSH ESI
00531fc1  6a00                      PUSH 0x0
00531fc3  6a55                      PUSH 0x55
00531fc5  e8566befff                CALL 0x00428b20
00531fca  e891cf1b00                CALL 0x006eef60
00531fcf  33d2                      XOR EDX,EDX
00531fd1  b914000000                MOV ECX,0x14
00531fd6  f7f1                      DIV ECX
00531fd8  85d2                      TEST EDX,EDX
00531fda  0f8595010000              JNZ 0x00532175
00531fe0  e87bcf1b00                CALL 0x006eef60
00531fe5  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
00531fed  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00531ff4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00531ffa  50                        PUSH EAX
00531ffb  6a00                      PUSH 0x0
00531ffd  57                        PUSH EDI
00531ffe  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00532004  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0053200c  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
00532014  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0053201b  50                        PUSH EAX
0053201c  56                        PUSH ESI
0053201d  6a00                      PUSH 0x0
0053201f  6a55                      PUSH 0x55
00532021  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
00532029  e8f26aefff                CALL 0x00428b20
0053202e  e942010000                JMP 0x00532175
00532033  83f801                    CMP EAX,0x1
00532036  0f8539010000              JNZ 0x00532175
0053203c  e81fcf1b00                CALL 0x006eef60
00532041  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00532047  8db73c030000              LEA ESI,[EDI + 0x33c]
0053204d  50                        PUSH EAX
0053204e  6a00                      PUSH 0x0
00532050  57                        PUSH EDI
00532051  6840b6c700                PUSH 0xc7b640
00532056  56                        PUSH ESI
00532057  6a02                      PUSH 0x2
00532059  6a1e                      PUSH 0x1e
0053205b  e8c06aefff                CALL 0x00428b20
00532060  e8fbce1b00                CALL 0x006eef60
00532065  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053206b  50                        PUSH EAX
0053206c  6a00                      PUSH 0x0
0053206e  57                        PUSH EDI
0053206f  6840b6c700                PUSH 0xc7b640
00532074  56                        PUSH ESI
00532075  6a19                      PUSH 0x19
00532077  68e8030000                PUSH 0x3e8
0053207c  e89f6aefff                CALL 0x00428b20
00532081  e9ef000000                JMP 0x00532175
00532086  6854ddb100                PUSH 0xb1dd54
0053208b  e8f082edff                CALL 0x0040a380
00532090  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00532097  740a                      JZ 0x005320a3
00532099  c7874c0100000000c03f      MOV dword ptr [EDI + 0x14c],0x3fc00000
005320a3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005320a7  0f84d7000000              JZ 0x00532184
005320ad  68dcd2b100                PUSH 0xb1d2dc
005320b2  8d4f78                    LEA ECX,[EDI + 0x78]
005320b5  e8168dedff                CALL 0x0040add0
005320ba  84c0                      TEST AL,AL
005320bc  0f84b3000000              JZ 0x00532175
005320c2  51                        PUSH ECX
005320c3  c704240000803f            MOV dword ptr [ESP],0x3f800000
005320ca  6a00                      PUSH 0x0
005320cc  6a02                      PUSH 0x2
005320ce  51                        PUSH ECX
005320cf  c704240000803f            MOV dword ptr [ESP],0x3f800000
005320d6  8bcf                      MOV ECX,EDI
005320d8  68b2000000                PUSH 0xb2
005320dd  e8be4a1a00                CALL 0x006d6ba0
005320e2  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
005320e8  e843cef0ff                CALL 0x0043ef30
005320ed  8b772c                    MOV ESI,dword ptr [EDI + 0x2c]
005320f0  f7de                      NEG ESI
005320f2  c7851cffffff0000003f      MOV dword ptr [EBP + 0xffffff1c],0x3f000000
005320fc  c78518ffffff000020c1      MOV dword ptr [EBP + 0xffffff18],0xc1200000
00532106  1bf6                      SBB ESI,ESI
00532108  c78514ffffff00002041      MOV dword ptr [EBP + 0xffffff14],0x41200000
00532112  83c608                    ADD ESI,0x8
00532115  e846ce1b00                CALL 0x006eef60
0053211a  8bcf                      MOV ECX,EDI
0053211c  c785fcfeffff00000000      MOV dword ptr [EBP + 0xfffffefc],0x0
00532126  660f6ec0                  MOVD XMM0,EAX
0053212a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053212e  c1e81f                    SHR EAX,0x1f
00532131  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053213a  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
00532140  50                        PUSH EAX
00532141  56                        PUSH ESI
00532142  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
00532148  660f5ac0                  CVTPD2PS XMM0,XMM0
0053214c  50                        PUSH EAX
0053214d  8d873c030000              LEA EAX,[EDI + 0x33c]
00532153  50                        PUSH EAX
00532154  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053215c  f30f58c0                  ADDSS XMM0,XMM0
00532160  f30f5805e8a7ba00          ADDSS XMM0,dword ptr [0x00baa7e8]
00532168  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
00532170  e86b911900                CALL 0x006cb2e0
00532175  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00532179  7409                      JZ 0x00532184
0053217b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00532182  750a                      JNZ 0x0053218e
00532184  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053218e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00532196  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0053219e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005321a6  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
005321a9  64890d00000000            MOV dword ptr FS:[0x0],ECX
005321b0  59                        POP ECX
005321b1  5f                        POP EDI
005321b2  5e                        POP ESI
005321b3  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
005321b6  33cd                      XOR ECX,EBP
005321b8  e86ecf5b00                CALL 0x00aef12b
005321bd  8be5                      MOV ESP,EBP
005321bf  5d                        POP EBP
005321c0  8be3                      MOV ESP,EBX
005321c2  5b                        POP EBX
005321c3  c3                        RET
