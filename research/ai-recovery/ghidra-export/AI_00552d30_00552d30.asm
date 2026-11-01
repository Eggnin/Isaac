; J460 NPC AI 0x00552d30 AI_00552d30
; types=802
; identities=802.0.0,802.1.0
; entry=00552d30
00552d30  53                        PUSH EBX
00552d31  8bdc                      MOV EBX,ESP
00552d33  83ec08                    SUB ESP,0x8
00552d36  83e4f8                    AND ESP,0xfffffff8
00552d39  83c404                    ADD ESP,0x4
00552d3c  55                        PUSH EBP
00552d3d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00552d40  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00552d44  8bec                      MOV EBP,ESP
00552d46  6aff                      PUSH -0x1
00552d48  68b04baf00                PUSH 0xaf4bb0
00552d4d  64a100000000              MOV EAX,FS:[0x0]
00552d53  50                        PUSH EAX
00552d54  53                        PUSH EBX
00552d55  81ec98000000              SUB ESP,0x98
00552d5b  56                        PUSH ESI
00552d5c  57                        PUSH EDI
00552d5d  a1b493bf00                MOV EAX,[0x00bf93b4]
00552d62  33c5                      XOR EAX,EBP
00552d64  50                        PUSH EAX
00552d65  8d45f4                    LEA EAX,[EBP + -0xc]
00552d68  64a300000000              MOV FS:[0x0],EAX
00552d6e  8bf9                      MOV EDI,ECX
00552d70  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00552d78  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00552d80  2bc8                      SUB ECX,EAX
00552d82  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
00552d89  894dbc                    MOV dword ptr [EBP + -0x44],ECX
00552d8c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00552d92  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
00552d98  8945cc                    MOV dword ptr [EBP + -0x34],EAX
00552d9b  0f8575010000              JNZ 0x00552f16
00552da1  8b81f8640200              MOV EAX,dword ptr [ECX + 0x264f8]
00552da7  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00552dad  83f805                    CMP EAX,0x5
00552db0  7d1c                      JGE 0x00552dce
00552db2  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00552db8  85c0                      TEST EAX,EAX
00552dba  7412                      JZ 0x00552dce
00552dbc  83782803                  CMP dword ptr [EAX + 0x28],0x3
00552dc0  750c                      JNZ 0x00552dce
00552dc2  8b807c0d0000              MOV EAX,dword ptr [EAX + 0xd7c]
00552dc8  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
00552dce  817f2822030000            CMP dword ptr [EDI + 0x28],0x322
00552dd5  7525                      JNZ 0x00552dfc
00552dd7  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00552dde  751c                      JNZ 0x00552dfc
00552de0  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00552de7  7513                      JNZ 0x00552dfc
00552de9  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
00552def  e87c2eeeff                CALL 0x00435c70
00552df4  8b17                      MOV EDX,dword ptr [EDI]
00552df6  8bcf                      MOV ECX,EDI
00552df8  50                        PUSH EAX
00552df9  ff5224                    CALL dword ptr [EDX + 0x24]
00552dfc  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
00552e01  0f57c0                    XORPS XMM0,XMM0
00552e04  0f2fc8                    COMISS XMM1,XMM0
00552e07  0f8689140000              JBE 0x00554296
00552e0d  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
00552e14  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00552e17  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00552e1a  0f8476140000              JZ 0x00554296
00552e20  f30f100d6ca0ba00          MOVSS XMM1,dword ptr [0x00baa06c]
00552e28  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00552e30  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
00552e33  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
00552e36  894ddc                    MOV dword ptr [EBP + -0x24],ECX
00552e39  8bca                      MOV ECX,EDX
00552e3b  81e186000001              AND ECX,0x1000086
00552e41  83c900                    OR ECX,0x0
00552e44  742e                      JZ 0x00552e74
00552e46  8b4830                    MOV ECX,dword ptr [EAX + 0x30]
00552e49  d1e9                      SHR ECX,0x1
00552e4b  f6c101                    TEST CL,0x1
00552e4e  7524                      JNZ 0x00552e74
00552e50  83781001                  CMP dword ptr [EAX + 0x10],0x1
00552e54  741e                      JZ 0x00552e74
00552e56  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
00552e59  83f901                    CMP ECX,0x1
00552e5c  7416                      JZ 0x00552e74
00552e5e  83f903                    CMP ECX,0x3
00552e61  7411                      JZ 0x00552e74
00552e63  8bca                      MOV ECX,EDX
00552e65  81e100100000              AND ECX,0x1000
00552e6b  83c900                    OR ECX,0x0
00552e6e  7504                      JNZ 0x00552e74
00552e70  8908                      MOV dword ptr [EAX],ECX
00552e72  eb74                      JMP 0x00552ee8
00552e74  83e208                    AND EDX,0x8
00552e77  83ca00                    OR EDX,0x0
00552e7a  7421                      JZ 0x00552e9d
00552e7c  8b4830                    MOV ECX,dword ptr [EAX + 0x30]
00552e7f  d1e9                      SHR ECX,0x1
00552e81  f6c101                    TEST CL,0x1
00552e84  7517                      JNZ 0x00552e9d
00552e86  8b4810                    MOV ECX,dword ptr [EAX + 0x10]
00552e89  83f901                    CMP ECX,0x1
00552e8c  740f                      JZ 0x00552e9d
00552e8e  83f903                    CMP ECX,0x3
00552e91  740a                      JZ 0x00552e9d
00552e93  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00552e97  f30f59c1                  MULSS XMM0,XMM1
00552e9b  eb47                      JMP 0x00552ee4
00552e9d  8b4810                    MOV ECX,dword ptr [EAX + 0x10]
00552ea0  83f909                    CMP ECX,0x9
00552ea3  750a                      JNZ 0x00552eaf
00552ea5  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00552ea9  f30f59c1                  MULSS XMM0,XMM1
00552ead  eb35                      JMP 0x00552ee4
00552eaf  83f903                    CMP ECX,0x3
00552eb2  750b                      JNZ 0x00552ebf
00552eb4  817814f1000000            CMP dword ptr [EAX + 0x14],0xf1
00552ebb  740a                      JZ 0x00552ec7
00552ebd  eb29                      JMP 0x00552ee8
00552ebf  81f922030000              CMP ECX,0x322
00552ec5  750a                      JNZ 0x00552ed1
00552ec7  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00552ecb  f30f59c1                  MULSS XMM0,XMM1
00552ecf  eb13                      JMP 0x00552ee4
00552ed1  83c1f6                    ADD ECX,-0xa
00552ed4  81f9dd030000              CMP ECX,0x3dd
00552eda  770c                      JA 0x00552ee8
00552edc  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00552ee0  f30f59c2                  MULSS XMM0,XMM2
00552ee4  f30f1100                  MOVSS dword ptr [EAX],XMM0
00552ee8  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00552eed  f30f5800                  ADDSS XMM0,dword ptr [EAX]
00552ef1  83c038                    ADD EAX,0x38
00552ef4  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
00552ef9  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00552efc  0f852effffff              JNZ 0x00552e30
00552f02  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00552f05  64890d00000000            MOV dword ptr FS:[0x0],ECX
00552f0c  59                        POP ECX
00552f0d  5f                        POP EDI
00552f0e  5e                        POP ESI
00552f0f  8be5                      MOV ESP,EBP
00552f11  5d                        POP EBP
00552f12  8be3                      MOV ESP,EBX
00552f14  5b                        POP EBX
00552f15  c3                        RET
00552f16  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00552f1c  83f810                    CMP EAX,0x10
00552f1f  0f8746130000              JA 0x0055426b
00552f25  0fb680c4425500            MOVZX EAX,byte ptr [EAX + 0x5542c4]
00552f2c  ff2485ac425500            JMP dword ptr [EAX*0x4 + 0x5542ac]
00552f33  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00552f39  838f6801000010            OR dword ptr [EDI + 0x168],0x10
00552f40  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00552f4a  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
00552f54  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00552f5a  e90c130000                JMP 0x0055426b
00552f5f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00552f69  c787a00b00001e000000      MOV dword ptr [EDI + 0xba0],0x1e
00552f73  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00552f7d  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00552f85  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
00552f8d  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00552f95  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
00552f9d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00552fa7  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
00552fb1  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00552fb4  85c0                      TEST EAX,EAX
00552fb6  742b                      JZ 0x00552fe3
00552fb8  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00552fbf  7422                      JZ 0x00552fe3
00552fc1  80783400                  CMP byte ptr [EAX + 0x34],0x0
00552fc5  751c                      JNZ 0x00552fe3
00552fc7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00552fcf  f30f5905d0a3ba00          MULSS XMM0,dword ptr [0x00baa3d0]
00552fd7  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
00552fde  e980120000                JMP 0x00554263
00552fe3  51                        PUSH ECX
00552fe4  8d45d0                    LEA EAX,[EBP + -0x30]
00552fe7  c7042400000000            MOV dword ptr [ESP],0x0
00552fee  50                        PUSH EAX
00552fef  8bcf                      MOV ECX,EDI
00552ff1  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
00552ff8  e843bc1600                CALL 0x006bec40
00552ffd  8bcf                      MOV ECX,EDI
00552fff  e83cb81600                CALL 0x006be840
00553004  8bf0                      MOV ESI,EAX
00553006  33c0                      XOR EAX,EAX
00553008  8975e8                    MOV dword ptr [EBP + -0x18],ESI
0055300b  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00553013  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
00553016  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
0055301b  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
00553023  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
00553028  83f903                    CMP ECX,0x3
0055302b  7508                      JNZ 0x00553035
0055302d  8b8610040000              MOV EAX,dword ptr [ESI + 0x410]
00553033  eb06                      JMP 0x0055303b
00553035  83f901                    CMP ECX,0x1
00553038  0f44c6                    CMOVZ EAX,ESI
0055303b  8bce                      MOV ECX,ESI
0055303d  8945c0                    MOV dword ptr [EBP + -0x40],EAX
00553040  e8eb941500                CALL 0x006ac530
00553045  84c0                      TEST AL,AL
00553047  7476                      JZ 0x005530bf
00553049  e812bf1900                CALL 0x006eef60
0055304e  33d2                      XOR EDX,EDX
00553050  b90f000000                MOV ECX,0xf
00553055  f7f1                      DIV ECX
00553057  85d2                      TEST EDX,EDX
00553059  7564                      JNZ 0x005530bf
0055305b  8d45b4                    LEA EAX,[EBP + -0x4c]
0055305e  50                        PUSH EAX
0055305f  e80cc01200                CALL 0x0067f070
00553064  83c404                    ADD ESP,0x4
00553067  8bf0                      MOV ESI,EAX
00553069  e8f2be1900                CALL 0x006eef60
0055306e  660f6ec0                  MOVD XMM0,EAX
00553072  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00553076  c1e81f                    SHR EAX,0x1f
00553079  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00553082  660f5ac8                  CVTPD2PS XMM1,XMM0
00553086  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0055308e  0f28c1                    MOVAPS XMM0,XMM1
00553091  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
00553096  f30f5906                  MULSS XMM0,dword ptr [ESI]
0055309a  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
0055309d  f30f590d68a8ba00          MULSS XMM1,dword ptr [0x00baa868]
005530a5  f30f590568a8ba00          MULSS XMM0,dword ptr [0x00baa868]
005530ad  f30f118fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM1
005530b5  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
005530bd  eb20                      JMP 0x005530df
005530bf  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005530c7  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
005530cf  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005530d7  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
005530df  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
005530e4  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005530e7  0f28da                    MOVAPS XMM3,XMM2
005530ea  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005530f2  f30f104dd4                MOVSS XMM1,dword ptr [EBP + -0x2c]
005530f7  f30f5cd8                  SUBSS XMM3,XMM0
005530fb  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00553100  0f28e9                    MOVAPS XMM5,XMM1
00553103  f30f1025b0a4ba00          MOVSS XMM4,dword ptr [0x00baa4b0]
0055310b  f30f5caf40030000          SUBSS XMM5,dword ptr [EDI + 0x340]
00553113  660f6ec0                  MOVD XMM0,EAX
00553117  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055311b  c1e81f                    SHR EAX,0x1f
0055311e  c645ef01                  MOV byte ptr [EBP + -0x11],0x1
00553122  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
00553127  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00553130  8b45c0                    MOV EAX,dword ptr [EBP + -0x40]
00553133  f30f115db8                MOVSS dword ptr [EBP + -0x48],XMM3
00553138  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
0055313d  f30f116dd4                MOVSS dword ptr [EBP + -0x2c],XMM5
00553142  660f5ac0                  CVTPD2PS XMM0,XMM0
00553146  f30f590554a1ba00          MULSS XMM0,dword ptr [0x00baa154]
0055314e  f30f5ce0                  SUBSS XMM4,XMM0
00553152  f30f1165e8                MOVSS dword ptr [EBP + -0x18],XMM4
00553157  85c0                      TEST EAX,EAX
00553159  0f84a3000000              JZ 0x00553202
0055315f  8bc8                      MOV ECX,EAX
00553161  e85a2bfbff                CALL 0x00505cc0
00553166  84c0                      TEST AL,AL
00553168  750c                      JNZ 0x00553176
0055316a  c787a40b00000f000000      MOV dword ptr [EDI + 0xba4],0xf
00553174  eb09                      JMP 0x0055317f
00553176  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
0055317d  7e6a                      JLE 0x005531e9
0055317f  f30f1045a8                MOVSS XMM0,dword ptr [EBP + -0x58]
00553184  8d45b4                    LEA EAX,[EBP + -0x4c]
00553187  f30f5c45e4                SUBSS XMM0,dword ptr [EBP + -0x1c]
0055318c  51                        PUSH ECX
0055318d  c704240000a042            MOV dword ptr [ESP],0x42a00000
00553194  8d4dd0                    LEA ECX,[EBP + -0x30]
00553197  50                        PUSH EAX
00553198  c645ef00                  MOV byte ptr [EBP + -0x11],0x0
0055319c  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
005531a1  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005531a9  f30f5c45e0                SUBSS XMM0,dword ptr [EBP + -0x20]
005531ae  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
005531b3  e848cf4b00                CALL 0x00a10100
005531b8  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
005531bd  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
005531c2  6a01                      PUSH 0x1
005531c4  f30f5800                  ADDSS XMM0,dword ptr [EAX]
005531c8  f30f584804                ADDSS XMM1,dword ptr [EAX + 0x4]
005531cd  6a00                      PUSH 0x0
005531cf  51                        PUSH ECX
005531d0  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
005531d5  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
005531da  f30f5905bca3ba00          MULSS XMM0,dword ptr [0x00baa3bc]
005531e2  f30f110424                MOVSS dword ptr [ESP],XMM0
005531e7  eb54                      JMP 0x0055323d
005531e9  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
005531ee  f30f1055e4                MOVSS XMM2,dword ptr [EBP + -0x1c]
005531f3  f30f105db8                MOVSS XMM3,dword ptr [EBP + -0x48]
005531f8  f30f1065e8                MOVSS XMM4,dword ptr [EBP + -0x18]
005531fd  f30f106dd4                MOVSS XMM5,dword ptr [EBP + -0x2c]
00553202  f30f59db                  MULSS XMM3,XMM3
00553206  0f57c0                    XORPS XMM0,XMM0
00553209  f30f59ed                  MULSS XMM5,XMM5
0055320d  f30f58dd                  ADDSS XMM3,XMM5
00553211  0f2fd8                    COMISS XMM3,XMM0
00553214  763b                      JBE 0x00553251
00553216  f30f5897b80b0000          ADDSS XMM2,dword ptr [EDI + 0xbb8]
0055321e  f30f5925bca3ba00          MULSS XMM4,dword ptr [0x00baa3bc]
00553226  6a01                      PUSH 0x1
00553228  f30f588fbc0b0000          ADDSS XMM1,dword ptr [EDI + 0xbbc]
00553230  6a00                      PUSH 0x0
00553232  51                        PUSH ECX
00553233  f30f1155d0                MOVSS dword ptr [EBP + -0x30],XMM2
00553238  f30f112424                MOVSS dword ptr [ESP],XMM4
0055323d  8d45d0                    LEA EAX,[EBP + -0x30]
00553240  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
00553245  50                        PUSH EAX
00553246  8d8f14040000              LEA ECX,[EDI + 0x414]
0055324c  e86f012900                CALL 0x007e33c0
00553251  e80abd1900                CALL 0x006eef60
00553256  a803                      TEST AL,0x3
00553258  7567                      JNZ 0x005532c1
0055325a  e801bd1900                CALL 0x006eef60
0055325f  0f57c0                    XORPS XMM0,XMM0
00553262  51                        PUSH ECX
00553263  8bcf                      MOV ECX,EDI
00553265  f20f2ac0                  CVTSI2SD XMM0,EAX
00553269  c1e81f                    SHR EAX,0x1f
0055326c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00553275  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00553278  660f5ad0                  CVTPD2PS XMM2,XMM0
0055327c  0f57c0                    XORPS XMM0,XMM0
0055327f  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00553287  f20f2ac0                  CVTSI2SD XMM0,EAX
0055328b  c1e81f                    SHR EAX,0x1f
0055328e  f30f591580a2ba00          MULSS XMM2,dword ptr [0x00baa280]
00553296  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055329f  f30f5815f8a1ba00          ADDSS XMM2,dword ptr [0x00baa1f8]
005532a7  660f5ac0                  CVTPD2PS XMM0,XMM0
005532ab  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
005532b3  f30f58d0                  ADDSS XMM2,XMM0
005532b7  f30f111424                MOVSS dword ptr [ESP],XMM2
005532bc  e80f321600                CALL 0x006b64d0
005532c1  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
005532c7  85c0                      TEST EAX,EAX
005532c9  7e0d                      JLE 0x005532d8
005532cb  2b45bc                    SUB EAX,dword ptr [EBP + -0x44]
005532ce  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
005532d4  85c0                      TEST EAX,EAX
005532d6  7f13                      JG 0x005532eb
005532d8  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
005532df  750a                      JNZ 0x005532eb
005532e1  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
005532eb  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005532f3  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
005532fb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00553303  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0055330b  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00553313  f30f59c0                  MULSS XMM0,XMM0
00553317  f30f59c9                  MULSS XMM1,XMM1
0055331b  f30f58c1                  ADDSS XMM0,XMM1
0055331f  e82c27eeff                CALL 0x00435a50
00553324  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
0055332c  0f2fc8                    COMISS XMM1,XMM0
0055332f  7639                      JBE 0x0055336a
00553331  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00553337  8d4f48                    LEA ECX,[EDI + 0x48]
0055333a  6a00                      PUSH 0x0
0055333c  83e801                    SUB EAX,0x1
0055333f  7422                      JZ 0x00553363
00553341  83e802                    SUB EAX,0x2
00553344  7416                      JZ 0x0055335c
00553346  68fc12b600                PUSH 0xb612fc
0055334b  e83070ebff                CALL 0x0040a380
00553350  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00553357  0f94c0                    SETZ AL
0055335a  eb57                      JMP 0x005533b3
0055335c  680813b600                PUSH 0xb61308
00553361  eb49                      JMP 0x005533ac
00553363  681413b600                PUSH 0xb61314
00553368  eb42                      JMP 0x005533ac
0055336a  8d8f60030000              LEA ECX,[EDI + 0x360]
00553370  e8ebbe1200                CALL 0x0067f260
00553375  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0055337b  8d4f48                    LEA ECX,[EDI + 0x48]
0055337e  6a00                      PUSH 0x0
00553380  83e801                    SUB EAX,0x1
00553383  7422                      JZ 0x005533a7
00553385  83e802                    SUB EAX,0x2
00553388  7416                      JZ 0x005533a0
0055338a  68f005b600                PUSH 0xb605f0
0055338f  e8ec6febff                CALL 0x0040a380
00553394  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0055339b  0f94c0                    SETZ AL
0055339e  eb13                      JMP 0x005533b3
005533a0  68fc05b600                PUSH 0xb605fc
005533a5  eb05                      JMP 0x005533ac
005533a7  680806b600                PUSH 0xb60608
005533ac  e8cf6febff                CALL 0x0040a380
005533b1  32c0                      XOR AL,AL
005533b3  888748010000              MOV byte ptr [EDI + 0x148],AL
005533b9  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
005533bf  85c0                      TEST EAX,EAX
005533c1  0f84b1000000              JZ 0x00553478
005533c7  83782803                  CMP dword ptr [EAX + 0x28],0x3
005533cb  0f85a7000000              JNZ 0x00553478
005533d1  8b887c0d0000              MOV ECX,dword ptr [EAX + 0xd7c]
005533d7  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
005533dd  83f819                    CMP EAX,0x19
005533e0  7d15                      JGE 0x005533f7
005533e2  83f919                    CMP ECX,0x19
005533e5  0f8c8d000000              JL 0x00553478
005533eb  c787c40b000019000000      MOV dword ptr [EDI + 0xbc4],0x19
005533f5  eb50                      JMP 0x00553447
005533f7  83f823                    CMP EAX,0x23
005533fa  7d11                      JGE 0x0055340d
005533fc  83f923                    CMP ECX,0x23
005533ff  7c77                      JL 0x00553478
00553401  c787c40b000023000000      MOV dword ptr [EDI + 0xbc4],0x23
0055340b  eb3a                      JMP 0x00553447
0055340d  b867666666                MOV EAX,0x66666667
00553412  f7e9                      IMUL ECX
00553414  b867666666                MOV EAX,0x66666667
00553419  c1fa02                    SAR EDX,0x2
0055341c  8bca                      MOV ECX,EDX
0055341e  c1e91f                    SHR ECX,0x1f
00553421  03ca                      ADD ECX,EDX
00553423  f7afc40b0000              IMUL dword ptr [EDI + 0xbc4]
00553429  c1fa02                    SAR EDX,0x2
0055342c  8bc2                      MOV EAX,EDX
0055342e  c1e81f                    SHR EAX,0x1f
00553431  03c2                      ADD EAX,EDX
00553433  3bc1                      CMP EAX,ECX
00553435  7d41                      JGE 0x00553478
00553437  8d0489                    LEA EAX,[ECX + ECX*0x4]
0055343a  03c0                      ADD EAX,EAX
0055343c  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
00553442  83f828                    CMP EAX,0x28
00553445  7431                      JZ 0x00553478
00553447  6a01                      PUSH 0x1
00553449  6850deb100                PUSH 0xb1de50
0055344e  8d4f48                    LEA ECX,[EDI + 0x48]
00553451  e87a71ebff                CALL 0x0040a5d0
00553456  84c0                      TEST AL,AL
00553458  740f                      JZ 0x00553469
0055345a  8d4f78                    LEA ECX,[EDI + 0x78]
0055345d  e84e6debff                CALL 0x0040a1b0
00553462  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00553469  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
00553473  e9f30d0000                JMP 0x0055426b
00553478  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
0055347d  0f2e45c8                  UCOMISS XMM0,dword ptr [EBP + -0x38]
00553481  9f                        LAHF
00553482  f6c444                    TEST AH,0x44
00553485  0f8ae00d0000              JP 0x0055426b
0055348b  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
00553490  0f2e45dc                  UCOMISS XMM0,dword ptr [EBP + -0x24]
00553494  9f                        LAHF
00553495  f6c444                    TEST AH,0x44
00553498  0f8acd0d0000              JP 0x0055426b
0055349e  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
005534a5  0f8fc00d0000              JG 0x0055426b
005534ab  807def00                  CMP byte ptr [EBP + -0x11],0x0
005534af  0f84b60d0000              JZ 0x0055426b
005534b5  e8a6ba1900                CALL 0x006eef60
005534ba  a803                      TEST AL,0x3
005534bc  0f85a90d0000              JNZ 0x0055426b
005534c2  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
005534c7  8bce                      MOV ECX,ESI
005534c9  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
005534ce  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
005534d3  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
005534d8  e853901500                CALL 0x006ac530
005534dd  84c0                      TEST AL,AL
005534df  0f8481000000              JZ 0x00553566
005534e5  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
005534ed  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005534f5  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
005534fd  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00553502  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
0055350a  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
0055350f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00553517  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0055351f  f30f59c9                  MULSS XMM1,XMM1
00553523  f30f59c0                  MULSS XMM0,XMM0
00553527  f30f58c1                  ADDSS XMM0,XMM1
0055352b  e82025eeff                CALL 0x00435a50
00553530  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00553538  f30f1055e4                MOVSS XMM2,dword ptr [EBP + -0x1c]
0055353d  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
00553542  f30f59d0                  MULSS XMM2,XMM0
00553546  f30f59c8                  MULSS XMM1,XMM0
0055354a  f30f58963c030000          ADDSS XMM2,dword ptr [ESI + 0x33c]
00553552  f30f588e40030000          ADDSS XMM1,dword ptr [ESI + 0x340]
0055355a  f30f1155d8                MOVSS dword ptr [EBP + -0x28],XMM2
0055355f  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
00553564  eb0a                      JMP 0x00553570
00553566  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
0055356b  f30f1055e4                MOVSS XMM2,dword ptr [EBP + -0x1c]
00553570  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00553578  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00553580  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
00553588  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0055358e  f30f580568a8ba00          ADDSS XMM0,dword ptr [0x00baa868]
00553596  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
0055359b  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
005535a2  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
005535a7  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
005535ae  f30f5dca                  MINSS XMM1,XMM2
005535b2  0f2fc1                    COMISS XMM0,XMM1
005535b5  0f86b00c0000              JBE 0x0055426b
005535bb  6a00                      PUSH 0x0
005535bd  33c0                      XOR EAX,EAX
005535bf  39472c                    CMP dword ptr [EDI + 0x2c],EAX
005535c2  6a00                      PUSH 0x0
005535c4  6a00                      PUSH 0x0
005535c6  0f95c0                    SETNZ AL
005535c9  6a00                      PUSH 0x0
005535cb  40                        INC EAX
005535cc  50                        PUSH EAX
005535cd  8d45d8                    LEA EAX,[EBP + -0x28]
005535d0  50                        PUSH EAX
005535d1  51                        PUSH ECX
005535d2  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
005535d5  e816d82900                CALL 0x007f0df0
005535da  84c0                      TEST AL,AL
005535dc  0f84890c0000              JZ 0x0055426b
005535e2  8d4dc4                    LEA ECX,[EBP + -0x3c]
005535e5  e876bc1200                CALL 0x0067f260
005535ea  8bce                      MOV ECX,ESI
005535ec  8945dc                    MOV dword ptr [EBP + -0x24],EAX
005535ef  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
005535f5  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005535ff  e82c8f1500                CALL 0x006ac530
00553604  84c0                      TEST AL,AL
00553606  7416                      JZ 0x0055361e
00553608  6a00                      PUSH 0x0
0055360a  6800000020                PUSH 0x20000000
0055360f  8bce                      MOV ECX,ESI
00553611  e81a3eecff                CALL 0x00417430
00553616  84c0                      TEST AL,AL
00553618  7504                      JNZ 0x0055361e
0055361a  b101                      MOV CL,0x1
0055361c  eb02                      JMP 0x00553620
0055361e  32c9                      XOR CL,CL
00553620  8b45dc                    MOV EAX,dword ptr [EBP + -0x24]
00553623  6a00                      PUSH 0x0
00553625  83e801                    SUB EAX,0x1
00553628  7435                      JZ 0x0055365f
0055362a  83e802                    SUB EAX,0x2
0055362d  7424                      JZ 0x00553653
0055362f  84c9                      TEST CL,CL
00553631  baa013b600                MOV EDX,0xb613a0
00553636  b81c13b600                MOV EAX,0xb6131c
0055363b  8d4f48                    LEA ECX,[EDI + 0x48]
0055363e  0f44c2                    CMOVZ EAX,EDX
00553641  50                        PUSH EAX
00553642  e8396debff                CALL 0x0040a380
00553647  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0055364e  0f94c0                    SETZ AL
00553651  eb28                      JMP 0x0055367b
00553653  b84813b600                MOV EAX,0xb61348
00553658  ba3413b600                MOV EDX,0xb61334
0055365d  eb0a                      JMP 0x00553669
0055365f  b8e812b600                MOV EAX,0xb612e8
00553664  ba6013b600                MOV EDX,0xb61360
00553669  84c9                      TEST CL,CL
0055366b  0f44c2                    CMOVZ EAX,EDX
0055366e  50                        PUSH EAX
0055366f  8d4748                    LEA EAX,[EDI + 0x48]
00553672  8bc8                      MOV ECX,EAX
00553674  e8076debff                CALL 0x0040a380
00553679  32c0                      XOR AL,AL
0055367b  888748010000              MOV byte ptr [EDI + 0x148],AL
00553681  8d87c4030000              LEA EAX,[EDI + 0x3c4]
00553687  8b08                      MOV ECX,dword ptr [EAX]
00553689  85c9                      TEST ECX,ECX
0055368b  7418                      JZ 0x005536a5
0055368d  8945dc                    MOV dword ptr [EBP + -0x24],EAX
00553690  81c1cc030000              ADD ECX,0x3cc
00553696  8d45dc                    LEA EAX,[EBP + -0x24]
00553699  50                        PUSH EAX
0055369a  e871bbf7ff                CALL 0x004cf210
0055369f  8d87c4030000              LEA EAX,[EDI + 0x3c4]
005536a5  50                        PUSH EAX
005536a6  8bce                      MOV ECX,ESI
005536a8  8930                      MOV dword ptr [EAX],ESI
005536aa  e841a6f7ff                CALL 0x004cdcf0
005536af  c787a00b00001e000000      MOV dword ptr [EDI + 0xba0],0x1e
005536b9  e9ad0b0000                JMP 0x0055426b
005536be  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005536c6  8d4f48                    LEA ECX,[EDI + 0x48]
005536c9  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005536d1  68dcd2b100                PUSH 0xb1d2dc
005536d6  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005536de  e84d79ebff                CALL 0x0040b030
005536e3  84c0                      TEST AL,AL
005536e5  0f84aa000000              JZ 0x00553795
005536eb  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005536f1  8d4de8                    LEA ECX,[EBP + -0x18]
005536f4  c745e80c010000            MOV dword ptr [EBP + -0x18],0x10c
005536fb  e880304000                CALL 0x00956780
00553700  83ec08                    SUB ESP,0x8
00553703  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0055370b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00553712  6a00                      PUSH 0x0
00553714  6a02                      PUSH 0x2
00553716  51                        PUSH ECX
00553717  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055371e  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00553724  ff75e8                    PUSH dword ptr [EBP + -0x18]
00553727  e804a53d00                CALL 0x0092dc30
0055372c  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00553732  e8b9592900                CALL 0x007e90f0
00553737  8bf0                      MOV ESI,EAX
00553739  33c0                      XOR EAX,EAX
0055373b  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0055373f  0f95c0                    SETNZ AL
00553742  40                        INC EAX
00553743  8945dc                    MOV dword ptr [EBP + -0x24],EAX
00553746  8d45d0                    LEA EAX,[EBP + -0x30]
00553749  50                        PUSH EAX
0055374a  e821b91200                CALL 0x0067f070
0055374f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00553755  83c404                    ADD ESP,0x4
00553758  0f57c9                    XORPS XMM1,XMM1
0055375b  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0055375f  6a00                      PUSH 0x0
00553761  f30f58c1                  ADDSS XMM0,XMM1
00553765  56                        PUSH ESI
00553766  ff75dc                    PUSH dword ptr [EBP + -0x24]
00553769  57                        PUSH EDI
0055376a  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
0055376f  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00553774  8d45c4                    LEA EAX,[EBP + -0x3c]
00553777  f30f5c0584a7ba00          SUBSS XMM0,dword ptr [0x00baa784]
0055377f  50                        PUSH EAX
00553780  8d873c030000              LEA EAX,[EDI + 0x33c]
00553786  50                        PUSH EAX
00553787  6a0a                      PUSH 0xa
00553789  6a05                      PUSH 0x5
0055378b  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00553790  e87bac1a00                CALL 0x006fe410
00553795  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00553799  740d                      JZ 0x005537a8
0055379b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005537a2  0f85c30a0000              JNZ 0x0055426b
005537a8  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
005537ae  8db7c4030000              LEA ESI,[EDI + 0x3c4]
005537b4  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005537be  85c9                      TEST ECX,ECX
005537c0  0f845b0a0000              JZ 0x00554221
005537c6  8d45dc                    LEA EAX,[EBP + -0x24]
005537c9  8975dc                    MOV dword ptr [EBP + -0x24],ESI
005537cc  50                        PUSH EAX
005537cd  81c1cc030000              ADD ECX,0x3cc
005537d3  e838baf7ff                CALL 0x004cf210
005537d8  c70600000000              MOV dword ptr [ESI],0x0
005537de  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005537e8  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005537f0  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
005537f8  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00553800  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
00553808  e95e0a0000                JMP 0x0055426b
0055380d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00553810  8d4f48                    LEA ECX,[EDI + 0x48]
00553813  85c0                      TEST EAX,EAX
00553815  740d                      JZ 0x00553824
00553817  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0055381e  0f85a9000000              JNZ 0x005538cd
00553824  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0055382a  6a00                      PUSH 0x0
0055382c  83e801                    SUB EAX,0x1
0055382f  7422                      JZ 0x00553853
00553831  83e802                    SUB EAX,0x2
00553834  7416                      JZ 0x0055384c
00553836  689c10b600                PUSH 0xb6109c
0055383b  e8406bebff                CALL 0x0040a380
00553840  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00553847  0f94c0                    SETZ AL
0055384a  eb13                      JMP 0x0055385f
0055384c  687405b600                PUSH 0xb60574
00553851  eb05                      JMP 0x00553858
00553853  68b805b600                PUSH 0xb605b8
00553858  e8236bebff                CALL 0x0040a380
0055385d  32c0                      XOR AL,AL
0055385f  888748010000              MOV byte ptr [EDI + 0x148],AL
00553865  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0055386b  898734030000              MOV dword ptr [EDI + 0x334],EAX
00553871  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00553877  898738030000              MOV dword ptr [EDI + 0x338],EAX
0055387d  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00553881  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0055388b  c787b00b00000000a040      MOV dword ptr [EDI + 0xbb0],0x40a00000
00553895  750a                      JNZ 0x005538a1
00553897  f30f100590a4ba00          MOVSS XMM0,dword ptr [0x00baa490]
0055389f  eb08                      JMP 0x005538a9
005538a1  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
005538a9  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005538b1  51                        PUSH ECX
005538b2  f30f110424                MOVSS dword ptr [ESP],XMM0
005538b7  6a00                      PUSH 0x0
005538b9  6a02                      PUSH 0x2
005538bb  6a73                      PUSH 0x73
005538bd  e8ae2b1600                CALL 0x006b6470
005538c2  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005538c5  85c0                      TEST EAX,EAX
005538c7  0f8486090000              JZ 0x00554253
005538cd  80783400                  CMP byte ptr [EAX + 0x34],0x0
005538d1  0f847c090000              JZ 0x00554253
005538d7  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
005538dd  8d4dd0                    LEA ECX,[EBP + -0x30]
005538e0  e8ebb81200                CALL 0x0067f1d0
005538e5  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
005538ec  0f8466030000              JZ 0x00553c58
005538f2  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005538f6  0f855c030000              JNZ 0x00553c58
005538fc  8bb778010000              MOV ESI,dword ptr [EDI + 0x178]
00553902  32c0                      XOR AL,AL
00553904  8845ef                    MOV byte ptr [EBP + -0x11],AL
00553907  3bb77c010000              CMP ESI,dword ptr [EDI + 0x17c]
0055390d  0f8445030000              JZ 0x00553c58
00553913  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
0055391b  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
00553923  0f1f4000                  NOP dword ptr [EAX]
00553927  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00553930  f30f108794010000          MOVSS XMM0,dword ptr [EDI + 0x194]
00553938  f30f108f98010000          MOVSS XMM1,dword ptr [EDI + 0x198]
00553940  f30f59c4                  MULSS XMM0,XMM4
00553944  f30f59cc                  MULSS XMM1,XMM4
00553948  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00553950  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00553958  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0055395c  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
00553961  f30f5cc3                  SUBSS XMM0,XMM3
00553965  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
0055396d  f30f5ec3                  DIVSS XMM0,XMM3
00553971  f30f5ecb                  DIVSS XMM1,XMM3
00553975  f30f58c4                  ADDSS XMM0,XMM4
00553979  f30f58cc                  ADDSS XMM1,XMM4
0055397d  f30f2cd0                  CVTTSS2SI EDX,XMM0
00553981  f30f2cc9                  CVTTSS2SI ECX,XMM1
00553985  85d2                      TEST EDX,EDX
00553987  0f8886020000              JS 0x00553c13
0055398d  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
00553990  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
00553993  3bd0                      CMP EDX,EAX
00553995  0f8d75020000              JGE 0x00553c10
0055399b  85c9                      TEST ECX,ECX
0055399d  0f886d020000              JS 0x00553c10
005539a3  8b55cc                    MOV EDX,dword ptr [EBP + -0x34]
005539a6  3b4a10                    CMP ECX,dword ptr [EDX + 0x10]
005539a9  f30f2cd0                  CVTTSS2SI EDX,XMM0
005539ad  0f8d5d020000              JGE 0x00553c10
005539b3  0fafc1                    IMUL EAX,ECX
005539b6  03c2                      ADD EAX,EDX
005539b8  0f8852020000              JS 0x00553c10
005539be  3dc0010000                CMP EAX,0x1c0
005539c3  7d09                      JGE 0x005539ce
005539c5  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
005539c8  8b4c8124                  MOV ECX,dword ptr [ECX + EAX*0x4 + 0x24]
005539cc  eb02                      JMP 0x005539d0
005539ce  33c9                      XOR ECX,ECX
005539d0  894de4                    MOV dword ptr [EBP + -0x1c],ECX
005539d3  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
005539d6  50                        PUSH EAX
005539d7  e824ce2900                CALL 0x007f0800
005539dc  83f803                    CMP EAX,0x3
005539df  7409                      JZ 0x005539ea
005539e1  83f802                    CMP EAX,0x2
005539e4  0f8516020000              JNZ 0x00553c00
005539ea  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
005539ed  85c0                      TEST EAX,EAX
005539ef  0f840b020000              JZ 0x00553c00
005539f5  83783c03                  CMP dword ptr [EAX + 0x3c],0x3
005539f9  0f8501020000              JNZ 0x00553c00
005539ff  8b00                      MOV EAX,dword ptr [EAX]
00553a01  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00553a09  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00553a11  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
00553a17  8b4014                    MOV EAX,dword ptr [EAX + 0x14]
00553a1a  8945c8                    MOV dword ptr [EBP + -0x38],EAX
00553a1d  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00553a20  894580                    MOV dword ptr [EBP + -0x80],EAX
00553a23  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00553a26  894584                    MOV dword ptr [EBP + -0x7c],EAX
00553a29  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00553a2c  894588                    MOV dword ptr [EBP + -0x78],EAX
00553a2f  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00553a32  89458c                    MOV dword ptr [EBP + -0x74],EAX
00553a35  8bc2                      MOV EAX,EDX
00553a37  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
00553a3c  2500010000                AND EAX,0x100
00553a41  83c800                    OR EAX,0x0
00553a44  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00553a4c  f30f114d94                MOVSS dword ptr [EBP + -0x6c],XMM1
00553a51  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00553a59  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
00553a5e  f30f114d9c                MOVSS dword ptr [EBP + -0x64],XMM1
00553a63  7407                      JZ 0x00553a6c
00553a65  b901000000                MOV ECX,0x1
00553a6a  eb02                      JMP 0x00553a6e
00553a6c  33c9                      XOR ECX,ECX
00553a6e  81e200000020              AND EDX,0x20000000
00553a74  c745e802000000            MOV dword ptr [EBP + -0x18],0x2
00553a7b  83ca00                    OR EDX,0x0
00553a7e  7507                      JNZ 0x00553a87
00553a80  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00553a87  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00553a8d  33c0                      XOR EAX,EAX
00553a8f  81e200004000              AND EDX,0x400000
00553a95  0bc2                      OR EAX,EDX
00553a97  7407                      JZ 0x00553aa0
00553a99  b804000000                MOV EAX,0x4
00553a9e  eb02                      JMP 0x00553aa2
00553aa0  33c0                      XOR EAX,EAX
00553aa2  0b4de8                    OR ECX,dword ptr [EBP + -0x18]
00553aa5  0bc8                      OR ECX,EAX
00553aa7  897da4                    MOV dword ptr [EBP + -0x5c],EDI
00553aaa  8d4580                    LEA EAX,[EBP + -0x80]
00553aad  894da0                    MOV dword ptr [EBP + -0x60],ECX
00553ab0  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
00553ab3  50                        PUSH EAX
00553ab4  6a00                      PUSH 0x0
00553ab6  ff55c8                    CALL dword ptr [EBP + -0x38]
00553ab9  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
00553ac1  84c0                      TEST AL,AL
00553ac3  0f843f010000              JZ 0x00553c08
00553ac9  a17816c700                MOV EAX,[0x00c71678]
00553ace  0f57ff                    XORPS XMM7,XMM7
00553ad1  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
00553ad4  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00553ada  8945e8                    MOV dword ptr [EBP + -0x18],EAX
00553add  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
00553ae0  8945e0                    MOV dword ptr [EBP + -0x20],EAX
00553ae3  8b4124                    MOV EAX,dword ptr [ECX + 0x24]
00553ae6  99                        CDQ
00553ae7  f77de0                    IDIV dword ptr [EBP + -0x20]
00553aea  660f6ef2                  MOVD XMM6,EDX
00553aee  0f5bf6                    CVTDQ2PS XMM6,XMM6
00553af1  660f6ed0                  MOVD XMM2,EAX
00553af5  0f5bd2                    CVTDQ2PS XMM2,XMM2
00553af8  f30f59f3                  MULSS XMM6,XMM3
00553afc  f30f59d3                  MULSS XMM2,XMM3
00553b00  f30f58f3                  ADDSS XMM6,XMM3
00553b04  f30f581500aaba00          ADDSS XMM2,dword ptr [0x00baaa00]
00553b0c  0f28e6                    MOVAPS XMM4,XMM6
00553b0f  f30f5ca73c030000          SUBSS XMM4,dword ptr [EDI + 0x33c]
00553b17  0f28ea                    MOVAPS XMM5,XMM2
00553b1a  f30f5caf40030000          SUBSS XMM5,dword ptr [EDI + 0x340]
00553b22  0f28cc                    MOVAPS XMM1,XMM4
00553b25  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00553b2c  0f28c5                    MOVAPS XMM0,XMM5
00553b2f  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00553b36  0f2fc8                    COMISS XMM1,XMM0
00553b39  761c                      JBE 0x00553b57
00553b3b  0f2ffc                    COMISS XMM7,XMM4
00553b3e  0f57c9                    XORPS XMM1,XMM1
00553b41  760a                      JBE 0x00553b4d
00553b43  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00553b4b  eb24                      JMP 0x00553b71
00553b4d  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00553b55  eb1a                      JMP 0x00553b71
00553b57  0f2ffd                    COMISS XMM7,XMM5
00553b5a  0f57c0                    XORPS XMM0,XMM0
00553b5d  760a                      JBE 0x00553b69
00553b5f  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00553b67  eb08                      JMP 0x00553b71
00553b69  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00553b71  f30f59c3                  MULSS XMM0,XMM3
00553b75  f30f59cb                  MULSS XMM1,XMM3
00553b79  f30f58c6                  ADDSS XMM0,XMM6
00553b7d  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
00553b85  f30f58d1                  ADDSS XMM2,XMM1
00553b89  f30f5cc3                  SUBSS XMM0,XMM3
00553b8d  f30f5c1500aaba00          SUBSS XMM2,dword ptr [0x00baaa00]
00553b95  f30f5ec3                  DIVSS XMM0,XMM3
00553b99  f30f5ed3                  DIVSS XMM2,XMM3
00553b9d  f30f58c4                  ADDSS XMM0,XMM4
00553ba1  f30f58d4                  ADDSS XMM2,XMM4
00553ba5  f30f2cd0                  CVTTSS2SI EDX,XMM0
00553ba9  f30f2cc2                  CVTTSS2SI EAX,XMM2
00553bad  85d2                      TEST EDX,EDX
00553baf  7848                      JS 0x00553bf9
00553bb1  3b55e0                    CMP EDX,dword ptr [EBP + -0x20]
00553bb4  7d43                      JGE 0x00553bf9
00553bb6  85c0                      TEST EAX,EAX
00553bb8  783f                      JS 0x00553bf9
00553bba  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
00553bbd  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
00553bc0  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
00553bc3  7d34                      JGE 0x00553bf9
00553bc5  0faf45e0                  IMUL EAX,dword ptr [EBP + -0x20]
00553bc9  03c2                      ADD EAX,EDX
00553bcb  782c                      JS 0x00553bf9
00553bcd  3dc0010000                CMP EAX,0x1c0
00553bd2  7d09                      JGE 0x00553bdd
00553bd4  8b55cc                    MOV EDX,dword ptr [EBP + -0x34]
00553bd7  8b448224                  MOV EAX,dword ptr [EDX + EAX*0x4 + 0x24]
00553bdb  eb02                      JMP 0x00553bdf
00553bdd  33c0                      XOR EAX,EAX
00553bdf  51                        PUSH ECX
00553be0  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
00553be3  50                        PUSH EAX
00553be4  e8f7aa2c00                CALL 0x0081e6e0
00553be9  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
00553bf1  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
00553bf9  b001                      MOV AL,0x1
00553bfb  8845ef                    MOV byte ptr [EBP + -0x11],AL
00553bfe  eb13                      JMP 0x00553c13
00553c00  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
00553c08  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
00553c10  8a45ef                    MOV AL,byte ptr [EBP + -0x11]
00553c13  83c608                    ADD ESI,0x8
00553c16  3bb77c010000              CMP ESI,dword ptr [EDI + 0x17c]
00553c1c  0f850efdffff              JNZ 0x00553930
00553c22  84c0                      TEST AL,AL
00553c24  7432                      JZ 0x00553c58
00553c26  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00553c30  f30f108f94010000          MOVSS XMM1,dword ptr [EDI + 0x194]
00553c38  f30f108798010000          MOVSS XMM0,dword ptr [EDI + 0x198]
00553c40  f30f59cc                  MULSS XMM1,XMM4
00553c44  f30f59c4                  MULSS XMM0,XMM4
00553c48  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00553c50  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00553c58  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00553c60  8d8774030000              LEA EAX,[EDI + 0x374]
00553c66  f30f109770030000          MOVSS XMM2,dword ptr [EDI + 0x370]
00553c6e  0f28c1                    MOVAPS XMM0,XMM1
00553c71  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
00553c79  51                        PUSH ECX
00553c7a  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
00553c82  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
00553c88  c7042400000000            MOV dword ptr [ESP],0x0
00553c8f  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00553c97  f30f5915b0a4ba00          MULSS XMM2,dword ptr [0x00baa4b0]
00553c9f  50                        PUSH EAX
00553ca0  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00553ca8  8d45c4                    LEA EAX,[EBP + -0x3c]
00553cab  50                        PUSH EAX
00553cac  f30f1155dc                MOVSS dword ptr [EBP + -0x24],XMM2
00553cb1  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
00553cb6  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
00553cbb  e8d0143f00                CALL 0x00945190
00553cc0  f30f105ddc                MOVSS XMM3,dword ptr [EBP + -0x24]
00553cc5  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
00553ccb  f30f581da0a9ba00          ADDSS XMM3,dword ptr [0x00baa9a0]
00553cd3  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
00553cd6  6a08                      PUSH 0x8
00553cd8  50                        PUSH EAX
00553cd9  8d45ac                    LEA EAX,[EBP + -0x54]
00553cdc  81c118120000              ADD ECX,0x1218
00553ce2  50                        PUSH EAX
00553ce3  e8a86aecff                CALL 0x0041a790
00553ce8  33f6                      XOR ESI,ESI
00553cea  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
00553cf1  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
00553cf8  8975e8                    MOV dword ptr [EBP + -0x18],ESI
00553cfb  3975b8                    CMP dword ptr [EBP + -0x48],ESI
00553cfe  0f867f020000              JBE 0x00553f83
00553d04  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
00553d07  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
00553d0a  3bf7                      CMP ESI,EDI
00553d0c  0f8461020000              JZ 0x00553f73
00553d12  817e2822030000            CMP dword ptr [ESI + 0x28],0x322
00553d19  0f8454020000              JZ 0x00553f73
00553d1f  8b8688010000              MOV EAX,dword ptr [ESI + 0x188]
00553d25  83f804                    CMP EAX,0x4
00553d28  7409                      JZ 0x00553d33
00553d2a  83f803                    CMP EAX,0x3
00553d2d  0f8540020000              JNZ 0x00553f73
00553d33  f30f109e3c030000          MOVSS XMM3,dword ptr [ESI + 0x33c]
00553d3b  f30f10a640030000          MOVSS XMM4,dword ptr [ESI + 0x340]
00553d43  0f28cb                    MOVAPS XMM1,XMM3
00553d46  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00553d4e  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
00553d53  0f28d4                    MOVAPS XMM2,XMM4
00553d56  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
00553d5e  f30f59c1                  MULSS XMM0,XMM1
00553d62  f30f5955d4                MULSS XMM2,dword ptr [EBP + -0x2c]
00553d67  f30f58c2                  ADDSS XMM0,XMM2
00553d6b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00553d72  0f86fb010000              JBE 0x00553f73
00553d78  f30f1086ec000000          MOVSS XMM0,dword ptr [ESI + 0xec]
00553d80  8d8674030000              LEA EAX,[ESI + 0x374]
00553d86  f30f581d40b6c700          ADDSS XMM3,dword ptr [0x00c7b640]
00553d8e  f30f582544b6c700          ADDSS XMM4,dword ptr [0x00c7b644]
00553d96  f30f109670030000          MOVSS XMM2,dword ptr [ESI + 0x370]
00553d9e  51                        PUSH ECX
00553d9f  f30f110424                MOVSS dword ptr [ESP],XMM0
00553da4  8d4d80                    LEA ECX,[EBP + -0x80]
00553da7  50                        PUSH EAX
00553da8  8d45d8                    LEA EAX,[EBP + -0x28]
00553dab  f30f115dd8                MOVSS dword ptr [EBP + -0x28],XMM3
00553db0  50                        PUSH EAX
00553db1  f30f1165dc                MOVSS dword ptr [EBP + -0x24],XMM4
00553db6  e8d5133f00                CALL 0x00945190
00553dbb  f30f10969c030000          MOVSS XMM2,dword ptr [ESI + 0x39c]
00553dc3  8d45c4                    LEA EAX,[EBP + -0x3c]
00553dc6  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
00553dcb  8d5580                    LEA EDX,[EBP + -0x80]
00553dce  0f28ca                    MOVAPS XMM1,XMM2
00553dd1  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
00553dd7  f30f598e60030000          MULSS XMM1,dword ptr [ESI + 0x360]
00553ddf  50                        PUSH EAX
00553de0  f30f599664030000          MULSS XMM2,dword ptr [ESI + 0x364]
00553de8  f30f58c1                  ADDSS XMM0,XMM1
00553dec  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
00553df1  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
00553df6  f30f58c2                  ADDSS XMM0,XMM2
00553dfa  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
00553dff  e86c163f00                CALL 0x00945470
00553e04  83c404                    ADD ESP,0x4
00553e07  84c0                      TEST AL,AL
00553e09  0f8464010000              JZ 0x00553f73
00553e0f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00553e15  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
00553e1c  7c06                      JL 0x00553e24
00553e1e  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00553e22  741c                      JZ 0x00553e40
00553e24  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
00553e27  8d41f6                    LEA EAX,[ECX + -0xa]
00553e2a  3ddd030000                CMP EAX,0x3dd
00553e2f  7609                      JBE 0x00553e3a
00553e31  83f904                    CMP ECX,0x4
00553e34  0f8539010000              JNZ 0x00553f73
00553e3a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00553e40  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00553e48  0f2e0d54a4ba00            UCOMISS XMM1,dword ptr [0x00baa454]
00553e4f  f30f102d04a3ba00          MOVSS XMM5,dword ptr [0x00baa304]
00553e57  9f                        LAHF
00553e58  f6c444                    TEST AH,0x44
00553e5b  7a05                      JP 0x00553e62
00553e5d  0f28cd                    MOVAPS XMM1,XMM5
00553e60  eb16                      JMP 0x00553e78
00553e62  0f28c1                    MOVAPS XMM0,XMM1
00553e65  f30f59cd                  MULSS XMM1,XMM5
00553e69  f30f58c5                  ADDSS XMM0,XMM5
00553e6d  f30f5cc1                  SUBSS XMM0,XMM1
00553e71  0f28cd                    MOVAPS XMM1,XMM5
00553e74  f30f5ec8                  DIVSS XMM1,XMM0
00553e78  f30f109660030000          MOVSS XMM2,dword ptr [ESI + 0x360]
00553e80  f30f109e64030000          MOVSS XMM3,dword ptr [ESI + 0x364]
00553e88  f30f10a760030000          MOVSS XMM4,dword ptr [EDI + 0x360]
00553e90  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00553e98  f30f5ce2                  SUBSS XMM4,XMM2
00553e9c  f30f5cc3                  SUBSS XMM0,XMM3
00553ea0  f30f59e1                  MULSS XMM4,XMM1
00553ea4  f30f59c1                  MULSS XMM0,XMM1
00553ea8  f30f58e2                  ADDSS XMM4,XMM2
00553eac  f30f58c3                  ADDSS XMM0,XMM3
00553eb0  f30f11a660030000          MOVSS dword ptr [ESI + 0x360],XMM4
00553eb8  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
00553ec0  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
00553ec7  7c06                      JL 0x00553ecf
00553ec9  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00553ecd  7416                      JZ 0x00553ee5
00553ecf  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
00553ed2  8d41f6                    LEA EAX,[ECX + -0xa]
00553ed5  3ddd030000                CMP EAX,0x3dd
00553eda  7609                      JBE 0x00553ee5
00553edc  83f904                    CMP ECX,0x4
00553edf  0f858e000000              JNZ 0x00553f73
00553ee5  f30f108e70030000          MOVSS XMM1,dword ptr [ESI + 0x370]
00553eed  f30f10955cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff5c]
00553ef5  0f28c1                    MOVAPS XMM0,XMM1
00553ef8  f30f594dd4                MULSS XMM1,dword ptr [EBP + -0x2c]
00553efd  f30f5945d0                MULSS XMM0,dword ptr [EBP + -0x30]
00553f02  f30f109d58ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff58]
00553f0a  f30f58d1                  ADDSS XMM2,XMM1
00553f0e  f30f108e6c030000          MOVSS XMM1,dword ptr [ESI + 0x36c]
00553f16  0f2e0de49fba00            UCOMISS XMM1,dword ptr [0x00ba9fe4]
00553f1d  f30f5c9640030000          SUBSS XMM2,dword ptr [ESI + 0x340]
00553f25  f30f58d8                  ADDSS XMM3,XMM0
00553f29  9f                        LAHF
00553f2a  f30f59d5                  MULSS XMM2,XMM5
00553f2e  f30f5c9e3c030000          SUBSS XMM3,dword ptr [ESI + 0x33c]
00553f36  f30f59dd                  MULSS XMM3,XMM5
00553f3a  f6c444                    TEST AH,0x44
00553f3d  7b34                      JNP 0x00553f73
00553f3f  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
00553f47  f30f59d0                  MULSS XMM2,XMM0
00553f4b  f30f59d8                  MULSS XMM3,XMM0
00553f4f  f30f5ed1                  DIVSS XMM2,XMM1
00553f53  f30f5ed9                  DIVSS XMM3,XMM1
00553f57  f30f589664030000          ADDSS XMM2,dword ptr [ESI + 0x364]
00553f5f  f30f58e3                  ADDSS XMM4,XMM3
00553f63  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
00553f6b  f30f11a660030000          MOVSS dword ptr [ESI + 0x360],XMM4
00553f73  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
00553f76  46                        INC ESI
00553f77  8975e8                    MOV dword ptr [EBP + -0x18],ESI
00553f7a  3b75b8                    CMP ESI,dword ptr [EBP + -0x48]
00553f7d  0f8281fdffff              JC 0x00553d04
00553f83  807dac00                  CMP byte ptr [EBP + -0x54],0x0
00553f87  751f                      JNZ 0x00553fa8
00553f89  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00553f90  b101                      MOV CL,0x1
00553f92  8b55b0                    MOV EDX,dword ptr [EBP + -0x50]
00553f95  6a00                      PUSH 0x0
00553f97  6a00                      PUSH 0x0
00553f99  e812095100                CALL 0x00a648b0
00553f9e  83c408                    ADD ESP,0x8
00553fa1  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00553fa8  f30f109f3c030000          MOVSS XMM3,dword ptr [EDI + 0x33c]
00553fb0  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
00553fb8  0f28c3                    MOVAPS XMM0,XMM3
00553fbb  f30f5c8734030000          SUBSS XMM0,dword ptr [EDI + 0x334]
00553fc3  f30f5c9738030000          SUBSS XMM2,dword ptr [EDI + 0x338]
00553fcb  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00553fd3  c645ef00                  MOV byte ptr [EBP + -0x11],0x0
00553fd7  f30f59c0                  MULSS XMM0,XMM0
00553fdb  f30f59d2                  MULSS XMM2,XMM2
00553fdf  f30f58d0                  ADDSS XMM2,XMM0
00553fe3  0f28c1                    MOVAPS XMM0,XMM1
00553fe6  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
00553fee  f30f59c1                  MULSS XMM0,XMM1
00553ff2  0f2fc2                    COMISS XMM0,XMM2
00553ff5  7616                      JBE 0x0055400d
00553ff7  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00553ffa  018f10040000              ADD dword ptr [EDI + 0x410],ECX
00554000  83bf1004000006            CMP dword ptr [EDI + 0x410],0x6
00554007  0f9f45ef                  SETG byte ptr [EBP + -0x11]
0055400b  eb0a                      JMP 0x00554017
0055400d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00554017  f30f119f34030000          MOVSS dword ptr [EDI + 0x334],XMM3
0055401f  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00554025  898738030000              MOV dword ptr [EDI + 0x338],EAX
0055402b  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0055402f  0f85ce000000              JNZ 0x00554103
00554035  8bb7c4030000              MOV ESI,dword ptr [EDI + 0x3c4]
0055403b  85f6                      TEST ESI,ESI
0055403d  0f84c0000000              JZ 0x00554103
00554043  8bce                      MOV ECX,ESI
00554045  e8e6841500                CALL 0x006ac530
0055404a  84c0                      TEST AL,AL
0055404c  0f84b1000000              JZ 0x00554103
00554052  6a00                      PUSH 0x0
00554054  6800000020                PUSH 0x20000000
00554059  8bce                      MOV ECX,ESI
0055405b  e8d033ecff                CALL 0x00417430
00554060  84c0                      TEST AL,AL
00554062  0f859b000000              JNZ 0x00554103
00554068  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00554070  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
00554078  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00554080  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00554088  f30f594dd4                MULSS XMM1,dword ptr [EBP + -0x2c]
0055408d  f30f5945d0                MULSS XMM0,dword ptr [EBP + -0x30]
00554092  f30f58c8                  ADDSS XMM1,XMM0
00554096  f30f10054caeba00          MOVSS XMM0,dword ptr [0x00baae4c]
0055409e  0f2fc1                    COMISS XMM0,XMM1
005540a1  7660                      JBE 0x00554103
005540a3  e8b8ae1900                CALL 0x006eef60
005540a8  a807                      TEST AL,0x7
005540aa  7557                      JNZ 0x00554103
005540ac  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
005540b2  8d4f48                    LEA ECX,[EDI + 0x48]
005540b5  c645ef01                  MOV byte ptr [EBP + -0x11],0x1
005540b9  c787a00b00000f000000      MOV dword ptr [EDI + 0xba0],0xf
005540c3  6a00                      PUSH 0x0
005540c5  83e801                    SUB EAX,0x1
005540c8  7428                      JZ 0x005540f2
005540ca  83e802                    SUB EAX,0x2
005540cd  741c                      JZ 0x005540eb
005540cf  687013b600                PUSH 0xb61370
005540d4  e8a762ebff                CALL 0x0040a380
005540d9  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
005540e0  0f94c0                    SETZ AL
005540e3  888748010000              MOV byte ptr [EDI + 0x148],AL
005540e9  eb18                      JMP 0x00554103
005540eb  688013b600                PUSH 0xb61380
005540f0  eb05                      JMP 0x005540f7
005540f2  689013b600                PUSH 0xb61390
005540f7  e88462ebff                CALL 0x0040a380
005540fc  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
00554103  e858ae1900                CALL 0x006eef60
00554108  a801                      TEST AL,0x1
0055410a  7567                      JNZ 0x00554173
0055410c  e84fae1900                CALL 0x006eef60
00554111  0f57c0                    XORPS XMM0,XMM0
00554114  51                        PUSH ECX
00554115  8bcf                      MOV ECX,EDI
00554117  f20f2ac0                  CVTSI2SD XMM0,EAX
0055411b  c1e81f                    SHR EAX,0x1f
0055411e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00554127  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0055412a  660f5ad0                  CVTPD2PS XMM2,XMM0
0055412e  0f57c0                    XORPS XMM0,XMM0
00554131  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00554139  f20f2ac0                  CVTSI2SD XMM0,EAX
0055413d  c1e81f                    SHR EAX,0x1f
00554140  f30f591580a2ba00          MULSS XMM2,dword ptr [0x00baa280]
00554148  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00554151  f30f5815f8a1ba00          ADDSS XMM2,dword ptr [0x00baa1f8]
00554159  660f5ac8                  CVTPD2PS XMM1,XMM0
0055415d  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
00554165  f30f58ca                  ADDSS XMM1,XMM2
00554169  f30f110c24                MOVSS dword ptr [ESP],XMM1
0055416e  e85d231600                CALL 0x006b64d0
00554173  807def00                  CMP byte ptr [EBP + -0x11],0x0
00554177  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0055417f  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
00554187  0f28c2                    MOVAPS XMM0,XMM2
0055418a  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00554192  f30f5cc8                  SUBSS XMM1,XMM0
00554196  f30f5f0dfca6ba00          MAXSS XMM1,dword ptr [0x00baa6fc]
0055419e  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
005541a6  0f28c1                    MOVAPS XMM0,XMM1
005541a9  f30f5945d0                MULSS XMM0,dword ptr [EBP + -0x30]
005541ae  f30f594dd4                MULSS XMM1,dword ptr [EBP + -0x2c]
005541b3  f30f59c2                  MULSS XMM0,XMM2
005541b7  f30f59ca                  MULSS XMM1,XMM2
005541bb  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
005541c3  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
005541cb  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005541d3  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005541db  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005541e3  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
005541eb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005541f3  7476                      JZ 0x0055426b
005541f5  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
005541fb  8db7c4030000              LEA ESI,[EDI + 0x3c4]
00554201  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0055420b  85c9                      TEST ECX,ECX
0055420d  7412                      JZ 0x00554221
0055420f  8d45dc                    LEA EAX,[EBP + -0x24]
00554212  8975dc                    MOV dword ptr [EBP + -0x24],ESI
00554215  50                        PUSH EAX
00554216  81c1cc030000              ADD ECX,0x3cc
0055421c  e8efaff7ff                CALL 0x004cf210
00554221  c70600000000              MOV dword ptr [ESI],0x0
00554227  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00554231  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00554239  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
00554241  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00554249  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
00554251  eb18                      JMP 0x0055426b
00554253  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055425b  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00554263  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055426b  8b97a40b0000              MOV EDX,dword ptr [EDI + 0xba4]
00554271  85d2                      TEST EDX,EDX
00554273  7e21                      JLE 0x00554296
00554275  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0055427d  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00554285  2bc8                      SUB ECX,EAX
00554287  33c0                      XOR EAX,EAX
00554289  03ca                      ADD ECX,EDX
0055428b  85c9                      TEST ECX,ECX
0055428d  0f4fc1                    CMOVG EAX,ECX
00554290  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
00554296  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00554299  64890d00000000            MOV dword ptr FS:[0x0],ECX
005542a0  59                        POP ECX
005542a1  5f                        POP EDI
005542a2  5e                        POP ESI
005542a3  8be5                      MOV ESP,EBP
005542a5  5d                        POP EBP
005542a6  8be3                      MOV ESP,EBX
005542a8  5b                        POP EBX
005542a9  c3                        RET
