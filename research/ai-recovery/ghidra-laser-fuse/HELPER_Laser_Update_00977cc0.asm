; J460 NPC AI 0x00977cc0 HELPER_Laser_Update
; types=7
; identities=7.*
; entry=00977cc0
00977cc0  55                        PUSH EBP
00977cc1  8bec                      MOV EBP,ESP
00977cc3  6aff                      PUSH -0x1
00977cc5  6835cbb000                PUSH 0xb0cb35
00977cca  64a100000000              MOV EAX,FS:[0x0]
00977cd0  50                        PUSH EAX
00977cd1  83ec3c                    SUB ESP,0x3c
00977cd4  a1b493bf00                MOV EAX,[0x00bf93b4]
00977cd9  33c5                      XOR EAX,EBP
00977cdb  8945f0                    MOV dword ptr [EBP + -0x10],EAX
00977cde  56                        PUSH ESI
00977cdf  57                        PUSH EDI
00977ce0  50                        PUSH EAX
00977ce1  8d45f4                    LEA EAX,[EBP + -0xc]
00977ce4  64a300000000              MOV FS:[0x0],EAX
00977cea  8bf9                      MOV EDI,ECX
00977cec  8db728040000              LEA ESI,[EDI + 0x428]
00977cf2  68404bc300                PUSH 0xc34b40
00977cf7  8bd6                      MOV EDX,ESI
00977cf9  8d4de0                    LEA ECX,[EBP + -0x20]
00977cfc  e86ff4a9ff                CALL 0x00417170
00977d01  83c404                    ADD ESP,0x4
00977d04  8b08                      MOV ECX,dword ptr [EAX]
00977d06  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00977d09  750c                      JNZ 0x00977d17
00977d0b  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00977d0e  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00977d11  0f846d020000              JZ 0x00977f84
00977d17  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
00977d1a  83f801                    CMP EAX,0x1
00977d1d  0f8461020000              JZ 0x00977f84
00977d23  83f802                    CMP EAX,0x2
00977d26  0f8458020000              JZ 0x00977f84
00977d2c  83f803                    CMP EAX,0x3
00977d2f  0f844f020000              JZ 0x00977f84
00977d35  83bf5804000000            CMP dword ptr [EDI + 0x458],0x0
00977d3c  0f8e42020000              JLE 0x00977f84
00977d42  8d45e0                    LEA EAX,[EBP + -0x20]
00977d45  b9404bc300                MOV ECX,0xc34b40
00977d4a  50                        PUSH EAX
00977d4b  e8b0a4c1ff                CALL 0x00592200
00977d50  f30f108fe0040000          MOVSS XMM1,dword ptr [EDI + 0x4e0]
00977d58  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
00977d5d  8b08                      MOV ECX,dword ptr [EAX]
00977d5f  210e                      AND dword ptr [ESI],ECX
00977d61  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
00977d64  214e04                    AND dword ptr [ESI + 0x4],ECX
00977d67  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00977d6a  214e08                    AND dword ptr [ESI + 0x8],ECX
00977d6d  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
00977d70  21460c                    AND dword ptr [ESI + 0xc],EAX
00977d73  a1404bc300                MOV EAX,[0x00c34b40]
00977d78  098748040000              OR dword ptr [EDI + 0x448],EAX
00977d7e  a1444bc300                MOV EAX,[0x00c34b44]
00977d83  09874c040000              OR dword ptr [EDI + 0x44c],EAX
00977d89  a1484bc300                MOV EAX,[0x00c34b48]
00977d8e  098750040000              OR dword ptr [EDI + 0x450],EAX
00977d94  a14c4bc300                MOV EAX,[0x00c34b4c]
00977d99  098754040000              OR dword ptr [EDI + 0x454],EAX
00977d9f  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00977da2  83f80b                    CMP EAX,0xb
00977da5  7432                      JZ 0x00977dd9
00977da7  83f80e                    CMP EAX,0xe
00977daa  742d                      JZ 0x00977dd9
00977dac  83f806                    CMP EAX,0x6
00977daf  7419                      JZ 0x00977dca
00977db1  83f80f                    CMP EAX,0xf
00977db4  7414                      JZ 0x00977dca
00977db6  83f80d                    CMP EAX,0xd
00977db9  752a                      JNZ 0x00977de5
00977dbb  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00977dc3  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
00977dc8  eb1b                      JMP 0x00977de5
00977dca  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00977dd2  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
00977dd7  eb0c                      JMP 0x00977de5
00977dd9  0f28c1                    MOVAPS XMM0,XMM1
00977ddc  f30f58c1                  ADDSS XMM0,XMM1
00977de0  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
00977de5  8bcf                      MOV ECX,EDI
00977de7  e84450ffff                CALL 0x0096ce30
00977dec  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
00977df2  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00977df8  84c0                      TEST AL,AL
00977dfa  6a00                      PUSH 0x0
00977dfc  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00977e02  ba7e000000                MOV EDX,0x7e
00977e07  6840b6c700                PUSH 0xc7b640
00977e0c  51                        PUSH ECX
00977e0d  b947000000                MOV ECX,0x47
00977e12  0f44ca                    CMOVZ ECX,EDX
00977e15  51                        PUSH ECX
00977e16  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00977e1c  68e8030000                PUSH 0x3e8
00977e21  e8fa0cabff                CALL 0x00428b20
00977e26  8b8f3c050000              MOV ECX,dword ptr [EDI + 0x53c]
00977e2c  8db73c050000              LEA ESI,[EDI + 0x53c]
00977e32  8945b8                    MOV dword ptr [EBP + -0x48],EAX
00977e35  3bc8                      CMP ECX,EAX
00977e37  742d                      JZ 0x00977e66
00977e39  85c9                      TEST ECX,ECX
00977e3b  7415                      JZ 0x00977e52
00977e3d  8d45bc                    LEA EAX,[EBP + -0x44]
00977e40  8975bc                    MOV dword ptr [EBP + -0x44],ESI
00977e43  81c1cc030000              ADD ECX,0x3cc
00977e49  50                        PUSH EAX
00977e4a  e8c173b5ff                CALL 0x004cf210
00977e4f  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
00977e52  8906                      MOV dword ptr [ESI],EAX
00977e54  8bc8                      MOV ECX,EAX
00977e56  85c0                      TEST EAX,EAX
00977e58  740c                      JZ 0x00977e66
00977e5a  56                        PUSH ESI
00977e5b  e8905eb5ff                CALL 0x004cdcf0
00977e60  8b8f3c050000              MOV ECX,dword ptr [EDI + 0x53c]
00977e66  8d81c0030000              LEA EAX,[ECX + 0x3c0]
00977e6c  8b08                      MOV ECX,dword ptr [EAX]
00977e6e  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00977e71  85c9                      TEST ECX,ECX
00977e73  7415                      JZ 0x00977e8a
00977e75  8945b8                    MOV dword ptr [EBP + -0x48],EAX
00977e78  81c1cc030000              ADD ECX,0x3cc
00977e7e  8d45b8                    LEA EAX,[EBP + -0x48]
00977e81  50                        PUSH EAX
00977e82  e88973b5ff                CALL 0x004cf210
00977e87  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
00977e8a  50                        PUSH EAX
00977e8b  8bcf                      MOV ECX,EDI
00977e8d  8938                      MOV dword ptr [EAX],EDI
00977e8f  e85c5eb5ff                CALL 0x004cdcf0
00977e94  8b0e                      MOV ECX,dword ptr [ESI]
00977e96  8b874c030000              MOV EAX,dword ptr [EDI + 0x34c]
00977e9c  f30f104dc0                MOVSS XMM1,dword ptr [EBP + -0x40]
00977ea1  0f28c1                    MOVAPS XMM0,XMM1
00977ea4  89814c030000              MOV dword ptr [ECX + 0x34c],EAX
00977eaa  8b8750030000              MOV EAX,dword ptr [EDI + 0x350]
00977eb0  898150030000              MOV dword ptr [ECX + 0x350],EAX
00977eb6  8b06                      MOV EAX,dword ptr [ESI]
00977eb8  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00977ec0  6a01                      PUSH 0x1
00977ec2  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00977eca  6a00                      PUSH 0x0
00977ecc  f30f1180e4000000          MOVSS dword ptr [EAX + 0xe4],XMM0
00977ed4  68ff000000                PUSH 0xff
00977ed9  f30f1188e8000000          MOVSS dword ptr [EAX + 0xe8],XMM1
00977ee1  8b0e                      MOV ECX,dword ptr [ESI]
00977ee3  6aff                      PUSH -0x1
00977ee5  8b01                      MOV EAX,dword ptr [ECX]
00977ee7  8b503c                    MOV EDX,dword ptr [EAX + 0x3c]
00977eea  8d87b8010000              LEA EAX,[EDI + 0x1b8]
00977ef0  50                        PUSH EAX
00977ef1  ffd2                      CALL EDX
00977ef3  8b0e                      MOV ECX,dword ptr [ESI]
00977ef5  f30f108788030000          MOVSS XMM0,dword ptr [EDI + 0x388]
00977efd  51                        PUSH ECX
00977efe  f30f110424                MOVSS dword ptr [ESP],XMM0
00977f03  8b01                      MOV EAX,dword ptr [ECX]
00977f05  ff5040                    CALL dword ptr [EAX + 0x40]
00977f08  8b06                      MOV EAX,dword ptr [ESI]
00977f0a  0f108728040000            MOVUPS XMM0,xmmword ptr [EDI + 0x428]
00977f11  0f118020040000            MOVUPS xmmword ptr [EAX + 0x420],XMM0
00977f18  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00977f1e  85c0                      TEST EAX,EAX
00977f20  740f                      JZ 0x00977f31
00977f22  83782807                  CMP dword ptr [EAX + 0x28],0x7
00977f26  7509                      JNZ 0x00977f31
00977f28  8b06                      MOV EAX,dword ptr [ESI]
00977f2a  c6807101000000            MOV byte ptr [EAX + 0x171],0x0
00977f31  8b0e                      MOV ECX,dword ptr [ESI]
00977f33  8b01                      MOV EAX,dword ptr [ECX]
00977f35  ff500c                    CALL dword ptr [EAX + 0xc]
00977f38  8b06                      MOV EAX,dword ptr [ESI]
00977f3a  8db7bc030000              LEA ESI,[EDI + 0x3bc]
00977f40  8b0e                      MOV ECX,dword ptr [ESI]
00977f42  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00977f45  85c9                      TEST ECX,ECX
00977f47  7415                      JZ 0x00977f5e
00977f49  8d45b8                    LEA EAX,[EBP + -0x48]
00977f4c  8975b8                    MOV dword ptr [EBP + -0x48],ESI
00977f4f  81c1cc030000              ADD ECX,0x3cc
00977f55  50                        PUSH EAX
00977f56  e8b572b5ff                CALL 0x004cf210
00977f5b  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
00977f5e  8906                      MOV dword ptr [ESI],EAX
00977f60  85c0                      TEST EAX,EAX
00977f62  7408                      JZ 0x00977f6c
00977f64  56                        PUSH ESI
00977f65  8bc8                      MOV ECX,EAX
00977f67  e8845db5ff                CALL 0x004cdcf0
00977f6c  c7874005000002000000      MOV dword ptr [EDI + 0x540],0x2
00977f76  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
00977f7d  c687e404000001            MOV byte ptr [EDI + 0x4e4],0x1
00977f84  8b873c050000              MOV EAX,dword ptr [EDI + 0x53c]
00977f8a  85c0                      TEST EAX,EAX
00977f8c  741c                      JZ 0x00977faa
00977f8e  83b85004000000            CMP dword ptr [EAX + 0x450],0x0
00977f95  7513                      JNZ 0x00977faa
00977f97  83bf4005000002            CMP dword ptr [EDI + 0x540],0x2
00977f9e  7d0a                      JGE 0x00977faa
00977fa0  c7874005000002000000      MOV dword ptr [EDI + 0x540],0x2
00977faa  8b872c050000              MOV EAX,dword ptr [EDI + 0x52c]
00977fb0  8bcf                      MOV ECX,EDI
00977fb2  85c0                      TEST EAX,EAX
00977fb4  740c                      JZ 0x00977fc2
00977fb6  8bc8                      MOV ECX,EAX
00977fb8  8b812c050000              MOV EAX,dword ptr [ECX + 0x52c]
00977fbe  85c0                      TEST EAX,EAX
00977fc0  75f4                      JNZ 0x00977fb6
00977fc2  8db128040000              LEA ESI,[ECX + 0x428]
00977fc8  68f047c300                PUSH 0xc347f0
00977fcd  8bd6                      MOV EDX,ESI
00977fcf  8d4de0                    LEA ECX,[EBP + -0x20]
00977fd2  e899f1a9ff                CALL 0x00417170
00977fd7  83c404                    ADD ESP,0x4
00977fda  8b08                      MOV ECX,dword ptr [EAX]
00977fdc  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00977fdf  0f85be000000              JNZ 0x009780a3
00977fe5  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00977fe8  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00977feb  0f85b2000000              JNZ 0x009780a3
00977ff1  68d048c300                PUSH 0xc348d0
00977ff6  8bd6                      MOV EDX,ESI
00977ff8  8d4de0                    LEA ECX,[EBP + -0x20]
00977ffb  e870f1a9ff                CALL 0x00417170
00978000  83c404                    ADD ESP,0x4
00978003  8b08                      MOV ECX,dword ptr [EAX]
00978005  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00978008  750c                      JNZ 0x00978016
0097800a  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097800d  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00978010  0f8474010000              JZ 0x0097818a
00978016  a17816c700                MOV EAX,[0x00c71678]
0097801b  8d4dc4                    LEA ECX,[EBP + -0x3c]
0097801e  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00978024  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
0097802a  99                        CDQ
0097802b  2bc2                      SUB EAX,EDX
0097802d  8bd0                      MOV EDX,EAX
0097802f  d1fa                      SAR EDX,0x1
00978031  e83af1a8ff                CALL 0x00407170
00978036  81e207000080              AND EDX,0x80000007
0097803c  7905                      JNS 0x00978043
0097803e  4a                        DEC EDX
0097803f  83caf8                    OR EDX,0xfffffff8
00978042  42                        INC EDX
00978043  83fa07                    CMP EDX,0x7
00978046  0f87ec000000              JA 0x00978138
0097804c  ff2495a8859700            JMP dword ptr [EDX*0x4 + 0x9785a8]
009780a3  a17816c700                MOV EAX,[0x00c71678]
009780a8  51                        PUSH ECX
009780a9  b91e000000                MOV ECX,0x1e
009780ae  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
009780b6  f30f1015e0a3ba00          MOVSS XMM2,dword ptr [0x00baa3e0]
009780be  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
009780c4  99                        CDQ
009780c5  f7f9                      IDIV ECX
009780c7  8d4ddc                    LEA ECX,[EBP + -0x24]
009780ca  c704240000803f            MOV dword ptr [ESP],0x3f800000
009780d1  660f6eca                  MOVD XMM1,EDX
009780d5  0f5bc9                    CVTDQ2PS XMM1,XMM1
009780d8  f30f590d30abba00          MULSS XMM1,dword ptr [0x00baab30]
009780e0  f30f5e0dd0a8ba00          DIVSS XMM1,dword ptr [0x00baa8d0]
009780e8  e8a3cad0ff                CALL 0x00684b90
009780ed  f30f10055ca7ba00          MOVSS XMM0,dword ptr [0x00baa75c]
009780f5  83c404                    ADD ESP,0x4
009780f8  f30f105ddc                MOVSS XMM3,dword ptr [EBP + -0x24]
009780fd  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
00978102  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
00978107  f30f59d8                  MULSS XMM3,XMM0
0097810b  f30f59d0                  MULSS XMM2,XMM0
0097810f  f30f59c8                  MULSS XMM1,XMM0
00978113  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0097811a  0f1145c4                  MOVUPS xmmword ptr [EBP + -0x3c],XMM0
0097811e  0f2805f0aeba00            MOVAPS XMM0,xmmword ptr [0x00baaef0]
00978125  f30f115dd4                MOVSS dword ptr [EBP + -0x2c],XMM3
0097812a  f30f1155d8                MOVSS dword ptr [EBP + -0x28],XMM2
0097812f  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
00978134  0f1145e0                  MOVUPS xmmword ptr [EBP + -0x20],XMM0
00978138  8b07                      MOV EAX,dword ptr [EDI]
0097813a  8d4dc4                    LEA ECX,[EBP + -0x3c]
0097813d  6a01                      PUSH 0x1
0097813f  6a00                      PUSH 0x0
00978141  68ff000000                PUSH 0xff
00978146  6aff                      PUSH -0x1
00978148  51                        PUSH ECX
00978149  8bcf                      MOV ECX,EDI
0097814b  ff503c                    CALL dword ptr [EAX + 0x3c]
0097814e  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00978154  85c9                      TEST ECX,ECX
00978156  7414                      JZ 0x0097816c
00978158  8b01                      MOV EAX,dword ptr [ECX]
0097815a  8d55c4                    LEA EDX,[EBP + -0x3c]
0097815d  6a01                      PUSH 0x1
0097815f  6a00                      PUSH 0x0
00978161  68ff000000                PUSH 0xff
00978166  6aff                      PUSH -0x1
00978168  52                        PUSH EDX
00978169  ff503c                    CALL dword ptr [EAX + 0x3c]
0097816c  8b8f3c050000              MOV ECX,dword ptr [EDI + 0x53c]
00978172  85c9                      TEST ECX,ECX
00978174  7414                      JZ 0x0097818a
00978176  8b01                      MOV EAX,dword ptr [ECX]
00978178  8d55c4                    LEA EDX,[EBP + -0x3c]
0097817b  6a01                      PUSH 0x1
0097817d  6a00                      PUSH 0x0
0097817f  68ff000000                PUSH 0xff
00978184  6aff                      PUSH -0x1
00978186  52                        PUSH EDX
00978187  ff503c                    CALL dword ptr [EAX + 0x3c]
0097818a  8b8740050000              MOV EAX,dword ptr [EDI + 0x540]
00978190  85c0                      TEST EAX,EAX
00978192  7e16                      JLE 0x009781aa
00978194  48                        DEC EAX
00978195  898740050000              MOV dword ptr [EDI + 0x540],EAX
0097819b  85c0                      TEST EAX,EAX
0097819d  0f8fe8030000              JG 0x0097858b
009781a3  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
009781aa  80bf5c04000000            CMP byte ptr [EDI + 0x45c],0x0
009781b1  0f8421030000              JZ 0x009784d8
009781b7  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
009781ba  83f827                    CMP EAX,0x27
009781bd  752a                      JNZ 0x009781e9
009781bf  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
009781c5  85c0                      TEST EAX,EAX
009781c7  0f84f8020000              JZ 0x009784c5
009781cd  81783409010000            CMP dword ptr [EAX + 0x34],0x109
009781d4  7448                      JZ 0x0097821e
009781d6  8bcf                      MOV ECX,EDI
009781d8  e8c382ffff                CALL 0x009704a0
009781dd  c6875c04000000            MOV byte ptr [EDI + 0x45c],0x0
009781e4  e9a2030000                JMP 0x0097858b
009781e9  83f844                    CMP EAX,0x44
009781ec  0f857f010000              JNZ 0x00978371
009781f2  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
009781f8  85c0                      TEST EAX,EAX
009781fa  0f84c5020000              JZ 0x009784c5
00978200  83782844                  CMP dword ptr [EAX + 0x28],0x44
00978204  0f85bb020000              JNZ 0x009784c5
0097820a  83782c01                  CMP dword ptr [EAX + 0x2c],0x1
0097820e  0f85b1020000              JNZ 0x009784c5
00978214  83783001                  CMP dword ptr [EAX + 0x30],0x1
00978218  0f85a7020000              JNZ 0x009784c5
0097821e  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
00978225  b920000000                MOV ECX,0x20
0097822a  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00978231  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
00978238  c645d800                  MOV byte ptr [EBP + -0x28],0x0
0097823c  e8bf4ca9ff                CALL 0x0040cf00
00978241  0f1005acccb700            MOVUPS XMM0,xmmword ptr [0x00b7ccac]
00978248  8bd0                      MOV EDX,EAX
0097824a  c745e81d000000            MOV dword ptr [EBP + -0x18],0x1d
00978251  c745ec1f000000            MOV dword ptr [EBP + -0x14],0x1f
00978258  0f1102                    MOVUPS xmmword ptr [EDX],XMM0
0097825b  f30f7e05bcccb700          MOVQ XMM0,qword ptr [0x00b7ccbc]
00978263  660fd64210                MOVQ qword ptr [EDX + 0x10],XMM0
00978268  8b0dc4ccb700              MOV ECX,dword ptr [0x00b7ccc4]
0097826e  894a18                    MOV dword ptr [EDX + 0x18],ECX
00978271  a0c8ccb700                MOV AL,[0x00b7ccc8]
00978276  88421c                    MOV byte ptr [EDX + 0x1c],AL
00978279  c6421d00                  MOV byte ptr [EDX + 0x1d],0x0
0097827d  8955d8                    MOV dword ptr [EBP + -0x28],EDX
00978280  6a01                      PUSH 0x1
00978282  8d45d8                    LEA EAX,[EBP + -0x28]
00978285  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0097828c  50                        PUSH EAX
0097828d  8d4f48                    LEA ECX,[EDI + 0x48]
00978290  e8bb3aa9ff                CALL 0x0040bd50
00978295  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0097829c  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
0097829f  83fa10                    CMP EDX,0x10
009782a2  722e                      JC 0x009782d2
009782a4  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
009782a7  42                        INC EDX
009782a8  8bc1                      MOV EAX,ECX
009782aa  81fa00100000              CMP EDX,0x1000
009782b0  7216                      JC 0x009782c8
009782b2  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
009782b5  83c223                    ADD EDX,0x23
009782b8  2bc1                      SUB EAX,ECX
009782ba  83c0fc                    ADD EAX,-0x4
009782bd  83f81f                    CMP EAX,0x1f
009782c0  7606                      JBE 0x009782c8
009782c2  ff159488b100              CALL dword ptr [0x00b18894]
009782c8  52                        PUSH EDX
009782c9  51                        PUSH ECX
009782ca  e88d6e1700                CALL 0x00aef15c
009782cf  83c408                    ADD ESP,0x8
009782d2  837f7410                  CMP dword ptr [EDI + 0x74],0x10
009782d6  8d4f60                    LEA ECX,[EDI + 0x60]
009782d9  894dc0                    MOV dword ptr [EBP + -0x40],ECX
009782dc  7205                      JC 0x009782e3
009782de  8b09                      MOV ECX,dword ptr [ECX]
009782e0  894dc0                    MOV dword ptr [EBP + -0x40],ECX
009782e3  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
009782e6  85f6                      TEST ESI,ESI
009782e8  7453                      JZ 0x0097833d
009782ea  837e1410                  CMP dword ptr [ESI + 0x14],0x10
009782ee  8bc6                      MOV EAX,ESI
009782f0  7202                      JC 0x009782f4
009782f2  8b06                      MOV EAX,dword ptr [ESI]
009782f4  8a10                      MOV DL,byte ptr [EAX]
009782f6  3a11                      CMP DL,byte ptr [ECX]
009782f8  751a                      JNZ 0x00978314
009782fa  84d2                      TEST DL,DL
009782fc  7412                      JZ 0x00978310
009782fe  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00978301  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00978304  750e                      JNZ 0x00978314
00978306  83c002                    ADD EAX,0x2
00978309  83c102                    ADD ECX,0x2
0097830c  84d2                      TEST DL,DL
0097830e  75e4                      JNZ 0x009782f4
00978310  33c0                      XOR EAX,EAX
00978312  eb05                      JMP 0x00978319
00978314  1bc0                      SBB EAX,EAX
00978316  83c801                    OR EAX,0x1
00978319  85c0                      TEST EAX,EAX
0097831b  751d                      JNZ 0x0097833a
0097831d  384634                    CMP byte ptr [ESI + 0x34],AL
00978320  0f849f010000              JZ 0x009784c5
00978326  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0097832c  8d7748                    LEA ESI,[EDI + 0x48]
0097832f  0f8590010000              JNZ 0x009784c5
00978335  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
00978338  eb06                      JMP 0x00978340
0097833a  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
0097833d  8d7748                    LEA ESI,[EDI + 0x48]
00978340  6a01                      PUSH 0x1
00978342  51                        PUSH ECX
00978343  8bce                      MOV ECX,ESI
00978345  e88622a9ff                CALL 0x0040a5d0
0097834a  84c0                      TEST AL,AL
0097834c  0f8473010000              JZ 0x009784c5
00978352  8d4e30                    LEA ECX,[ESI + 0x30]
00978355  e8561ea9ff                CALL 0x0040a1b0
0097835a  8bcf                      MOV ECX,EDI
0097835c  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00978360  e83b81ffff                CALL 0x009704a0
00978365  c6875c04000000            MOV byte ptr [EDI + 0x45c],0x0
0097836c  e91a020000                JMP 0x0097858b
00978371  3db6030000                CMP EAX,0x3b6
00978376  0f8549010000              JNZ 0x009784c5
0097837c  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00978380  0f853f010000              JNZ 0x009784c5
00978386  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
0097838d  b920000000                MOV ECX,0x20
00978392  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00978399  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
009783a0  c645d800                  MOV byte ptr [EBP + -0x28],0x0
009783a4  e8574ba9ff                CALL 0x0040cf00
009783a9  0f1005ccccb700            MOVUPS XMM0,xmmword ptr [0x00b7cccc]
009783b0  8bd0                      MOV EDX,EAX
009783b2  c745e81d000000            MOV dword ptr [EBP + -0x18],0x1d
009783b9  c745ec1f000000            MOV dword ptr [EBP + -0x14],0x1f
009783c0  0f1102                    MOVUPS xmmword ptr [EDX],XMM0
009783c3  f30f7e05dcccb700          MOVQ XMM0,qword ptr [0x00b7ccdc]
009783cb  660fd64210                MOVQ qword ptr [EDX + 0x10],XMM0
009783d0  8b0de4ccb700              MOV ECX,dword ptr [0x00b7cce4]
009783d6  894a18                    MOV dword ptr [EDX + 0x18],ECX
009783d9  a0e8ccb700                MOV AL,[0x00b7cce8]
009783de  88421c                    MOV byte ptr [EDX + 0x1c],AL
009783e1  c6421d00                  MOV byte ptr [EDX + 0x1d],0x0
009783e5  8955d8                    MOV dword ptr [EBP + -0x28],EDX
009783e8  6a01                      PUSH 0x1
009783ea  8d45d8                    LEA EAX,[EBP + -0x28]
009783ed  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
009783f4  50                        PUSH EAX
009783f5  8d4f48                    LEA ECX,[EDI + 0x48]
009783f8  e85339a9ff                CALL 0x0040bd50
009783fd  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00978404  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
00978407  83fa10                    CMP EDX,0x10
0097840a  722e                      JC 0x0097843a
0097840c  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
0097840f  42                        INC EDX
00978410  8bc1                      MOV EAX,ECX
00978412  81fa00100000              CMP EDX,0x1000
00978418  7216                      JC 0x00978430
0097841a  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0097841d  83c223                    ADD EDX,0x23
00978420  2bc1                      SUB EAX,ECX
00978422  83c0fc                    ADD EAX,-0x4
00978425  83f81f                    CMP EAX,0x1f
00978428  7606                      JBE 0x00978430
0097842a  ff159488b100              CALL dword ptr [0x00b18894]
00978430  52                        PUSH EDX
00978431  51                        PUSH ECX
00978432  e8256d1700                CALL 0x00aef15c
00978437  83c408                    ADD ESP,0x8
0097843a  837f7410                  CMP dword ptr [EDI + 0x74],0x10
0097843e  8d4f60                    LEA ECX,[EDI + 0x60]
00978441  894dc0                    MOV dword ptr [EBP + -0x40],ECX
00978444  7205                      JC 0x0097844b
00978446  8b09                      MOV ECX,dword ptr [ECX]
00978448  894dc0                    MOV dword ptr [EBP + -0x40],ECX
0097844b  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0097844e  85f6                      TEST ESI,ESI
00978450  744f                      JZ 0x009784a1
00978452  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00978456  8bc6                      MOV EAX,ESI
00978458  7206                      JC 0x00978460
0097845a  8b06                      MOV EAX,dword ptr [ESI]
0097845c  0f1f4000                  NOP dword ptr [EAX]
00978460  8a10                      MOV DL,byte ptr [EAX]
00978462  3a11                      CMP DL,byte ptr [ECX]
00978464  751a                      JNZ 0x00978480
00978466  84d2                      TEST DL,DL
00978468  7412                      JZ 0x0097847c
0097846a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0097846d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00978470  750e                      JNZ 0x00978480
00978472  83c002                    ADD EAX,0x2
00978475  83c102                    ADD ECX,0x2
00978478  84d2                      TEST DL,DL
0097847a  75e4                      JNZ 0x00978460
0097847c  33c0                      XOR EAX,EAX
0097847e  eb05                      JMP 0x00978485
00978480  1bc0                      SBB EAX,EAX
00978482  83c801                    OR EAX,0x1
00978485  85c0                      TEST EAX,EAX
00978487  7515                      JNZ 0x0097849e
00978489  384634                    CMP byte ptr [ESI + 0x34],AL
0097848c  7430                      JZ 0x009784be
0097848e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00978494  8d7748                    LEA ESI,[EDI + 0x48]
00978497  7525                      JNZ 0x009784be
00978499  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
0097849c  eb06                      JMP 0x009784a4
0097849e  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
009784a1  8d7748                    LEA ESI,[EDI + 0x48]
009784a4  6a01                      PUSH 0x1
009784a6  51                        PUSH ECX
009784a7  8bce                      MOV ECX,ESI
009784a9  e82221a9ff                CALL 0x0040a5d0
009784ae  84c0                      TEST AL,AL
009784b0  740c                      JZ 0x009784be
009784b2  8d4e30                    LEA ECX,[ESI + 0x30]
009784b5  e8f61ca9ff                CALL 0x0040a1b0
009784ba  c6464401                  MOV byte ptr [ESI + 0x44],0x1
009784be  838f5801000020            OR dword ptr [EDI + 0x158],0x20
009784c5  8bcf                      MOV ECX,EDI
009784c7  e8d47fffff                CALL 0x009704a0
009784cc  c6875c04000000            MOV byte ptr [EDI + 0x45c],0x0
009784d3  e9b3000000                JMP 0x0097858b
009784d8  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
009784db  83f801                    CMP EAX,0x1
009784de  7413                      JZ 0x009784f3
009784e0  83f802                    CMP EAX,0x2
009784e3  740e                      JZ 0x009784f3
009784e5  83f803                    CMP EAX,0x3
009784e8  7409                      JZ 0x009784f3
009784ea  8bcf                      MOV ECX,EDI
009784ec  e86fb7ffff                CALL 0x00973c60
009784f1  eb07                      JMP 0x009784fa
009784f3  8bcf                      MOV ECX,EDI
009784f5  e8a6350000                CALL 0x0097baa0
009784fa  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
009784fe  757e                      JNZ 0x0097857e
00978500  8b87c8030000              MOV EAX,dword ptr [EDI + 0x3c8]
00978506  85c0                      TEST EAX,EAX
00978508  7474                      JZ 0x0097857e
0097850a  81782893010000            CMP dword ptr [EAX + 0x28],0x193
00978511  756b                      JNZ 0x0097857e
00978513  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0097851a  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00978520  68cb030000                PUSH 0x3cb
00978525  8d8924a30200              LEA ECX,[ECX + 0x2a324]
0097852b  7407                      JZ 0x00978534
0097852d  e8fe5cfbff                CALL 0x0092e230
00978532  eb4a                      JMP 0x0097857e
00978534  e82760fbff                CALL 0x0092e560
00978539  84c0                      TEST AL,AL
0097853b  7541                      JNZ 0x0097857e
0097853d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00978543  8d4dc0                    LEA ECX,[EBP + -0x40]
00978546  c745c0cb030000            MOV dword ptr [EBP + -0x40],0x3cb
0097854d  e82ee2fdff                CALL 0x00956780
00978552  83ec08                    SUB ESP,0x8
00978555  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0097855d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00978564  6a01                      PUSH 0x1
00978566  6a02                      PUSH 0x2
00978568  51                        PUSH ECX
00978569  c704240000803f            MOV dword ptr [ESP],0x3f800000
00978570  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00978576  ff75c0                    PUSH dword ptr [EBP + -0x40]
00978579  e8b256fbff                CALL 0x0092dc30
0097857e  8bcf                      MOV ECX,EDI
00978580  e89b62d3ff                CALL 0x006ae820
00978585  57                        PUSH EDI
00978586  e83591eeff                CALL 0x008616c0
0097858b  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0097858e  64890d00000000            MOV dword ptr FS:[0x0],ECX
00978595  59                        POP ECX
00978596  5f                        POP EDI
00978597  5e                        POP ESI
00978598  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
0097859b  33cd                      XOR ECX,EBP
0097859d  e8896b1700                CALL 0x00aef12b
009785a2  8be5                      MOV ESP,EBP
009785a4  5d                        POP EBP
009785a5  c3                        RET
