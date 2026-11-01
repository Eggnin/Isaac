; J460 NPC AI 0x004a5d10 HELPER_Delirium_ApplyFormAndState
; types=412
; identities=delirium.form_transition
; entry=004a5d10
004a5d10  53                        PUSH EBX
004a5d11  8bdc                      MOV EBX,ESP
004a5d13  83ec08                    SUB ESP,0x8
004a5d16  83e4f8                    AND ESP,0xfffffff8
004a5d19  83c404                    ADD ESP,0x4
004a5d1c  55                        PUSH EBP
004a5d1d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004a5d20  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004a5d24  8bec                      MOV EBP,ESP
004a5d26  6aff                      PUSH -0x1
004a5d28  685d30af00                PUSH 0xaf305d
004a5d2d  64a100000000              MOV EAX,FS:[0x0]
004a5d33  50                        PUSH EAX
004a5d34  53                        PUSH EBX
004a5d35  83ec40                    SUB ESP,0x40
004a5d38  a1b493bf00                MOV EAX,[0x00bf93b4]
004a5d3d  33c5                      XOR EAX,EBP
004a5d3f  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004a5d42  56                        PUSH ESI
004a5d43  57                        PUSH EDI
004a5d44  50                        PUSH EAX
004a5d45  8d45f4                    LEA EAX,[EBP + -0xc]
004a5d48  64a300000000              MOV FS:[0x0],EAX
004a5d4e  8955b8                    MOV dword ptr [EBP + -0x48],EDX
004a5d51  8bf9                      MOV EDI,ECX
004a5d53  897dc8                    MOV dword ptr [EBP + -0x38],EDI
004a5d56  807b0c00                  CMP byte ptr [EBX + 0xc],0x0
004a5d5a  8b7308                    MOV ESI,dword ptr [EBX + 0x8]
004a5d5d  7426                      JZ 0x004a5d85
004a5d5f  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004a5d65  6a00                      PUSH 0x0
004a5d67  56                        PUSH ESI
004a5d68  81c170a60200              ADD ECX,0x2a670
004a5d6e  52                        PUSH EDX
004a5d6f  e83cf21e00                CALL 0x00694fb0
004a5d74  85c0                      TEST EAX,EAX
004a5d76  740d                      JZ 0x004a5d85
004a5d78  6a00                      PUSH 0x0
004a5d7a  83c074                    ADD EAX,0x74
004a5d7d  8bcf                      MOV ECX,EDI
004a5d7f  50                        PUSH EAX
004a5d80  e8cb5ff6ff                CALL 0x0040bd50
004a5d85  33c0                      XOR EAX,EAX
004a5d87  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
004a5d8a  398780000000              CMP dword ptr [EDI + 0x80],EAX
004a5d90  0f863b040000              JBE 0x004a61d1
004a5d96  50                        PUSH EAX
004a5d97  8bcf                      MOV ECX,EDI
004a5d99  e88254f6ff                CALL 0x0040b220
004a5d9e  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
004a5da5  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004a5dac  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004a5db3  83781c10                  CMP dword ptr [EAX + 0x1c],0x10
004a5db7  8d7808                    LEA EDI,[EAX + 0x8]
004a5dba  8b4710                    MOV EAX,dword ptr [EDI + 0x10]
004a5dbd  8945cc                    MOV dword ptr [EBP + -0x34],EAX
004a5dc0  7202                      JC 0x004a5dc4
004a5dc2  8b3f                      MOV EDI,dword ptr [EDI]
004a5dc4  83f810                    CMP EAX,0x10
004a5dc7  730e                      JNC 0x004a5dd7
004a5dc9  0f1007                    MOVUPS XMM0,xmmword ptr [EDI]
004a5dcc  be0f000000                MOV ESI,0xf
004a5dd1  0f1145d4                  MOVUPS xmmword ptr [EBP + -0x2c],XMM0
004a5dd5  eb30                      JMP 0x004a5e07
004a5dd7  8bf0                      MOV ESI,EAX
004a5dd9  b8ffffff7f                MOV EAX,0x7fffffff
004a5dde  83ce0f                    OR ESI,0xf
004a5de1  81feffffff7f              CMP ESI,0x7fffffff
004a5de7  0f47f0                    CMOVA ESI,EAX
004a5dea  8d4e01                    LEA ECX,[ESI + 0x1]
004a5ded  e80e71f6ff                CALL 0x0040cf00
004a5df2  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
004a5df5  41                        INC ECX
004a5df6  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004a5df9  51                        PUSH ECX
004a5dfa  57                        PUSH EDI
004a5dfb  50                        PUSH EAX
004a5dfc  e8dea76400                CALL 0x00af05df
004a5e01  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
004a5e04  83c40c                    ADD ESP,0xc
004a5e07  8975e8                    MOV dword ptr [EBP + -0x18],ESI
004a5e0a  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
004a5e0d  817db89c010000            CMP dword ptr [EBP + -0x48],0x19c
004a5e14  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004a5e1b  0f8466030000              JZ 0x004a6187
004a5e21  83fe10                    CMP ESI,0x10
004a5e24  8d45d4                    LEA EAX,[EBP + -0x2c]
004a5e27  8b354489b100              MOV ESI,dword ptr [0x00b18944]
004a5e2d  0f4345d4                  CMOVNC EAX,dword ptr [EBP + -0x2c]
004a5e31  6a06                      PUSH 0x6
004a5e33  83c004                    ADD EAX,0x4
004a5e36  68ece8b100                PUSH 0xb1e8ec
004a5e3b  50                        PUSH EAX
004a5e3c  ffd6                      CALL ESI
004a5e3e  83c40c                    ADD ESP,0xc
004a5e41  85c0                      TEST EAX,EAX
004a5e43  0f85b2020000              JNZ 0x004a60fb
004a5e49  8b75e4                    MOV ESI,dword ptr [EBP + -0x1c]
004a5e4c  83fe04                    CMP ESI,0x4
004a5e4f  0f82e3030000              JC 0x004a6238
004a5e55  8d46fc                    LEA EAX,[ESI + -0x4]
004a5e58  bf06000000                MOV EDI,0x6
004a5e5d  3bc7                      CMP EAX,EDI
004a5e5f  0f42f8                    CMOVC EDI,EAX
004a5e62  897dbc                    MOV dword ptr [EBP + -0x44],EDI
004a5e65  83ff23                    CMP EDI,0x23
004a5e68  751f                      JNZ 0x004a5e89
004a5e6a  837de810                  CMP dword ptr [EBP + -0x18],0x10
004a5e6e  8d45d4                    LEA EAX,[EBP + -0x2c]
004a5e71  57                        PUSH EDI
004a5e72  0f4345d4                  CMOVNC EAX,dword ptr [EBP + -0x2c]
004a5e76  83c004                    ADD EAX,0x4
004a5e79  683ce2b100                PUSH 0xb1e23c
004a5e7e  50                        PUSH EAX
004a5e7f  e839aa6400                CALL 0x00af08bd
004a5e84  e911020000                JMP 0x004a609a
004a5e89  8bc6                      MOV EAX,ESI
004a5e8b  2bc7                      SUB EAX,EDI
004a5e8d  8d48fd                    LEA ECX,[EAX + -0x3]
004a5e90  894dcc                    MOV dword ptr [EBP + -0x34],ECX
004a5e93  83ff23                    CMP EDI,0x23
004a5e96  7639                      JBE 0x004a5ed1
004a5e98  83c023                    ADD EAX,0x23
004a5e9b  8d75d4                    LEA ESI,[EBP + -0x2c]
004a5e9e  837de810                  CMP dword ptr [EBP + -0x18],0x10
004a5ea2  6a23                      PUSH 0x23
004a5ea4  0f4375d4                  CMOVNC ESI,dword ptr [EBP + -0x2c]
004a5ea8  83c604                    ADD ESI,0x4
004a5eab  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
004a5eae  683ce2b100                PUSH 0xb1e23c
004a5eb3  56                        PUSH ESI
004a5eb4  e804aa6400                CALL 0x00af08bd
004a5eb9  83c40c                    ADD ESP,0xc
004a5ebc  8d043e                    LEA EAX,[ESI + EDI*0x1]
004a5ebf  8d4e23                    LEA ECX,[ESI + 0x23]
004a5ec2  ff75cc                    PUSH dword ptr [EBP + -0x34]
004a5ec5  50                        PUSH EAX
004a5ec6  51                        PUSH ECX
004a5ec7  e8f1a96400                CALL 0x00af08bd
004a5ecc  e9c9010000                JMP 0x004a609a
004a5ed1  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004a5ed4  b923000000                MOV ECX,0x23
004a5ed9  8bc2                      MOV EAX,EDX
004a5edb  8955b4                    MOV dword ptr [EBP + -0x4c],EDX
004a5ede  2bcf                      SUB ECX,EDI
004a5ee0  2bc6                      SUB EAX,ESI
004a5ee2  894dc0                    MOV dword ptr [EBP + -0x40],ECX
004a5ee5  3bc8                      CMP ECX,EAX
004a5ee7  0f8785000000              JA 0x004a5f72
004a5eed  8d040e                    LEA EAX,[ESI + ECX*0x1]
004a5ef0  83fa10                    CMP EDX,0x10
004a5ef3  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
004a5ef6  8d45d4                    LEA EAX,[EBP + -0x2c]
004a5ef9  0f4345d4                  CMOVNC EAX,dword ptr [EBP + -0x2c]
004a5efd  8d5004                    LEA EDX,[EAX + 0x4]
004a5f00  03d7                      ADD EDX,EDI
004a5f02  8d7804                    LEA EDI,[EAX + 0x4]
004a5f05  81ff5fe2b100              CMP EDI,0xb1e25f
004a5f0b  731f                      JNC 0x004a5f2c
004a5f0d  03c6                      ADD EAX,ESI
004a5f0f  3d3ce2b100                CMP EAX,0xb1e23c
004a5f14  7216                      JC 0x004a5f2c
004a5f16  81fa3ce2b100              CMP EDX,0xb1e23c
004a5f1c  7704                      JA 0x004a5f22
004a5f1e  33f6                      XOR ESI,ESI
004a5f20  eb0f                      JMP 0x004a5f31
004a5f22  8bf2                      MOV ESI,EDX
004a5f24  81ee3ce2b100              SUB ESI,0xb1e23c
004a5f2a  eb05                      JMP 0x004a5f31
004a5f2c  be23000000                MOV ESI,0x23
004a5f31  ff75cc                    PUSH dword ptr [EBP + -0x34]
004a5f34  8d040a                    LEA EAX,[EDX + ECX*0x1]
004a5f37  52                        PUSH EDX
004a5f38  50                        PUSH EAX
004a5f39  e87fa96400                CALL 0x00af08bd
004a5f3e  83c40c                    ADD ESP,0xc
004a5f41  56                        PUSH ESI
004a5f42  683ce2b100                PUSH 0xb1e23c
004a5f47  57                        PUSH EDI
004a5f48  e870a96400                CALL 0x00af08bd
004a5f4d  83c40c                    ADD ESP,0xc
004a5f50  8d0c3e                    LEA ECX,[ESI + EDI*0x1]
004a5f53  b823000000                MOV EAX,0x23
004a5f58  2bc6                      SUB EAX,ESI
004a5f5a  50                        PUSH EAX
004a5f5b  8b45c0                    MOV EAX,dword ptr [EBP + -0x40]
004a5f5e  8d803ce2b100              LEA EAX,[EAX + 0xb1e23c]
004a5f64  03c6                      ADD EAX,ESI
004a5f66  50                        PUSH EAX
004a5f67  51                        PUSH ECX
004a5f68  e872a66400                CALL 0x00af05df
004a5f6d  e928010000                JMP 0x004a609a
004a5f72  b8ffffff7f                MOV EAX,0x7fffffff
004a5f77  2bc6                      SUB EAX,ESI
004a5f79  3bc1                      CMP EAX,ECX
004a5f7b  0f82b2020000              JC 0x004a6233
004a5f81  8d0431                    LEA EAX,[ECX + ESI*0x1]
004a5f84  8bf8                      MOV EDI,EAX
004a5f86  8945c0                    MOV dword ptr [EBP + -0x40],EAX
004a5f89  83cf0f                    OR EDI,0xf
004a5f8c  81ffffffff7f              CMP EDI,0x7fffffff
004a5f92  7607                      JBE 0x004a5f9b
004a5f94  bfffffff7f                MOV EDI,0x7fffffff
004a5f99  eb1e                      JMP 0x004a5fb9
004a5f9b  8bca                      MOV ECX,EDX
004a5f9d  b8ffffff7f                MOV EAX,0x7fffffff
004a5fa2  d1e9                      SHR ECX,0x1
004a5fa4  2bc1                      SUB EAX,ECX
004a5fa6  3bd0                      CMP EDX,EAX
004a5fa8  7607                      JBE 0x004a5fb1
004a5faa  bfffffff7f                MOV EDI,0x7fffffff
004a5faf  eb08                      JMP 0x004a5fb9
004a5fb1  8d040a                    LEA EAX,[EDX + ECX*0x1]
004a5fb4  3bf8                      CMP EDI,EAX
004a5fb6  0f42f8                    CMOVC EDI,EAX
004a5fb9  8d4f01                    LEA ECX,[EDI + 0x1]
004a5fbc  e83f6ff6ff                CALL 0x0040cf00
004a5fc1  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004a5fc4  8bd0                      MOV EDX,EAX
004a5fc6  8b45c0                    MOV EAX,dword ptr [EBP + -0x40]
004a5fc9  2bf1                      SUB ESI,ECX
004a5fcb  897de8                    MOV dword ptr [EBP + -0x18],EDI
004a5fce  83c6fd                    ADD ESI,-0x3
004a5fd1  8b7db4                    MOV EDI,dword ptr [EBP + -0x4c]
004a5fd4  8955cc                    MOV dword ptr [EBP + -0x34],EDX
004a5fd7  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
004a5fda  8975bc                    MOV dword ptr [EBP + -0x44],ESI
004a5fdd  83ff10                    CMP EDI,0x10
004a5fe0  7275                      JC 0x004a6057
004a5fe2  8b75d4                    MOV ESI,dword ptr [EBP + -0x2c]
004a5fe5  ff75bc                    PUSH dword ptr [EBP + -0x44]
004a5fe8  8b06                      MOV EAX,dword ptr [ESI]
004a5fea  8902                      MOV dword ptr [EDX],EAX
004a5fec  0f10053ce2b100            MOVUPS XMM0,xmmword ptr [0x00b1e23c]
004a5ff3  0f114204                  MOVUPS xmmword ptr [EDX + 0x4],XMM0
004a5ff7  0f10054ce2b100            MOVUPS XMM0,xmmword ptr [0x00b1e24c]
004a5ffe  0f114214                  MOVUPS xmmword ptr [EDX + 0x14],XMM0
004a6002  66a15ce2b100              MOV AX,[0x00b1e25c]
004a6008  66894224                  MOV word ptr [EDX + 0x24],AX
004a600c  a05ee2b100                MOV AL,[0x00b1e25e]
004a6011  884226                    MOV byte ptr [EDX + 0x26],AL
004a6014  8d4104                    LEA EAX,[ECX + 0x4]
004a6017  03c6                      ADD EAX,ESI
004a6019  50                        PUSH EAX
004a601a  8d4227                    LEA EAX,[EDX + 0x27]
004a601d  50                        PUSH EAX
004a601e  e8bca56400                CALL 0x00af05df
004a6023  47                        INC EDI
004a6024  83c40c                    ADD ESP,0xc
004a6027  81ff00100000              CMP EDI,0x1000
004a602d  7216                      JC 0x004a6045
004a602f  8b4efc                    MOV ECX,dword ptr [ESI + -0x4]
004a6032  83c723                    ADD EDI,0x23
004a6035  2bf1                      SUB ESI,ECX
004a6037  8d46fc                    LEA EAX,[ESI + -0x4]
004a603a  83f81f                    CMP EAX,0x1f
004a603d  0f87ea010000              JA 0x004a622d
004a6043  8bf1                      MOV ESI,ECX
004a6045  57                        PUSH EDI
004a6046  56                        PUSH ESI
004a6047  e810916400                CALL 0x00aef15c
004a604c  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
004a604f  83c408                    ADD ESP,0x8
004a6052  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004a6055  eb46                      JMP 0x004a609d
004a6057  8b45d4                    MOV EAX,dword ptr [EBP + -0x2c]
004a605a  8902                      MOV dword ptr [EDX],EAX
004a605c  0f10053ce2b100            MOVUPS XMM0,xmmword ptr [0x00b1e23c]
004a6063  56                        PUSH ESI
004a6064  0f114204                  MOVUPS xmmword ptr [EDX + 0x4],XMM0
004a6068  0f10054ce2b100            MOVUPS XMM0,xmmword ptr [0x00b1e24c]
004a606f  0f114214                  MOVUPS xmmword ptr [EDX + 0x14],XMM0
004a6073  66a15ce2b100              MOV AX,[0x00b1e25c]
004a6079  66894224                  MOV word ptr [EDX + 0x24],AX
004a607d  a05ee2b100                MOV AL,[0x00b1e25e]
004a6082  884226                    MOV byte ptr [EDX + 0x26],AL
004a6085  8d45d8                    LEA EAX,[EBP + -0x28]
004a6088  03c1                      ADD EAX,ECX
004a608a  50                        PUSH EAX
004a608b  8d4227                    LEA EAX,[EDX + 0x27]
004a608e  50                        PUSH EAX
004a608f  e84ba56400                CALL 0x00af05df
004a6094  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
004a6097  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004a609a  83c40c                    ADD ESP,0xc
004a609d  837de810                  CMP dword ptr [EBP + -0x18],0x10
004a60a1  8d45d4                    LEA EAX,[EBP + -0x2c]
004a60a4  b9e079c300                MOV ECX,0xc379e0
004a60a9  0f4345d4                  CMOVNC EAX,dword ptr [EBP + -0x2c]
004a60ad  50                        PUSH EAX
004a60ae  e8cd105700                CALL 0x00a17180
004a60b3  85c0                      TEST EAX,EAX
004a60b5  0f95c1                    SETNZ CL
004a60b8  884dd3                    MOV byte ptr [EBP + -0x2d],CL
004a60bb  85c0                      TEST EAX,EAX
004a60bd  741b                      JZ 0x004a60da
004a60bf  6a00                      PUSH 0x0
004a60c1  6a00                      PUSH 0x0
004a60c3  8bd0                      MOV EDX,EAX
004a60c5  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004a60c9  b101                      MOV CL,0x1
004a60cb  e8e0e75b00                CALL 0x00a648b0
004a60d0  8a4dd3                    MOV CL,byte ptr [EBP + -0x2d]
004a60d3  83c408                    ADD ESP,0x8
004a60d6  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004a60da  84c9                      TEST CL,CL
004a60dc  0f84a2000000              JZ 0x004a6184
004a60e2  8b7dc8                    MOV EDI,dword ptr [EBP + -0x38]
004a60e5  8d45d4                    LEA EAX,[EBP + -0x2c]
004a60e8  50                        PUSH EAX
004a60e9  ff75c4                    PUSH dword ptr [EBP + -0x3c]
004a60ec  8bcf                      MOV ECX,EDI
004a60ee  e83d5ef6ff                CALL 0x0040bf30
004a60f3  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
004a60f6  e98f000000                JMP 0x004a618a
004a60fb  837de810                  CMP dword ptr [EBP + -0x18],0x10
004a60ff  8d45d4                    LEA EAX,[EBP + -0x2c]
004a6102  6a08                      PUSH 0x8
004a6104  0f4345d4                  CMOVNC EAX,dword ptr [EBP + -0x2c]
004a6108  83c004                    ADD EAX,0x4
004a610b  68f4e8b100                PUSH 0xb1e8f4
004a6110  50                        PUSH EAX
004a6111  ffd6                      CALL ESI
004a6113  83c40c                    ADD ESP,0xc
004a6116  85c0                      TEST EAX,EAX
004a6118  756a                      JNZ 0x004a6184
004a611a  6a23                      PUSH 0x23
004a611c  683ce2b100                PUSH 0xb1e23c
004a6121  6a08                      PUSH 0x8
004a6123  6a04                      PUSH 0x4
004a6125  8d4dd4                    LEA ECX,[EBP + -0x2c]
004a6128  e85334ffff                CALL 0x00499580
004a612d  837de810                  CMP dword ptr [EBP + -0x18],0x10
004a6131  8d45d4                    LEA EAX,[EBP + -0x2c]
004a6134  b9e079c300                MOV ECX,0xc379e0
004a6139  0f4345d4                  CMOVNC EAX,dword ptr [EBP + -0x2c]
004a613d  50                        PUSH EAX
004a613e  e83d105700                CALL 0x00a17180
004a6143  85c0                      TEST EAX,EAX
004a6145  0f95c1                    SETNZ CL
004a6148  884dd3                    MOV byte ptr [EBP + -0x2d],CL
004a614b  85c0                      TEST EAX,EAX
004a614d  741b                      JZ 0x004a616a
004a614f  6a00                      PUSH 0x0
004a6151  6a00                      PUSH 0x0
004a6153  8bd0                      MOV EDX,EAX
004a6155  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
004a6159  b101                      MOV CL,0x1
004a615b  e850e75b00                CALL 0x00a648b0
004a6160  8a4dd3                    MOV CL,byte ptr [EBP + -0x2d]
004a6163  83c408                    ADD ESP,0x8
004a6166  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004a616a  84c9                      TEST CL,CL
004a616c  7416                      JZ 0x004a6184
004a616e  8b7dc8                    MOV EDI,dword ptr [EBP + -0x38]
004a6171  8d45d4                    LEA EAX,[EBP + -0x2c]
004a6174  50                        PUSH EAX
004a6175  ff75c4                    PUSH dword ptr [EBP + -0x3c]
004a6178  8bcf                      MOV ECX,EDI
004a617a  e8b15df6ff                CALL 0x0040bf30
004a617f  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
004a6182  eb06                      JMP 0x004a618a
004a6184  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
004a6187  8b7dc8                    MOV EDI,dword ptr [EBP + -0x38]
004a618a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004a6191  83fe10                    CMP ESI,0x10
004a6194  7228                      JC 0x004a61be
004a6196  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004a6199  46                        INC ESI
004a619a  8bc1                      MOV EAX,ECX
004a619c  81fe00100000              CMP ESI,0x1000
004a61a2  7210                      JC 0x004a61b4
004a61a4  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004a61a7  83c623                    ADD ESI,0x23
004a61aa  2bc1                      SUB EAX,ECX
004a61ac  83c0fc                    ADD EAX,-0x4
004a61af  83f81f                    CMP EAX,0x1f
004a61b2  7779                      JA 0x004a622d
004a61b4  56                        PUSH ESI
004a61b5  51                        PUSH ECX
004a61b6  e8a18f6400                CALL 0x00aef15c
004a61bb  83c408                    ADD ESP,0x8
004a61be  8b45c4                    MOV EAX,dword ptr [EBP + -0x3c]
004a61c1  40                        INC EAX
004a61c2  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
004a61c5  3b8780000000              CMP EAX,dword ptr [EDI + 0x80]
004a61cb  0f82c5fbffff              JC 0x004a5d96
004a61d1  51                        PUSH ECX
004a61d2  8bcf                      MOV ECX,EDI
004a61d4  e8275ef6ff                CALL 0x0040c000
004a61d9  837f2c10                  CMP dword ptr [EDI + 0x2c],0x10
004a61dd  8d4718                    LEA EAX,[EDI + 0x18]
004a61e0  7202                      JC 0x004a61e4
004a61e2  8b00                      MOV EAX,dword ptr [EAX]
004a61e4  6a01                      PUSH 0x1
004a61e6  50                        PUSH EAX
004a61e7  8bcf                      MOV ECX,EDI
004a61e9  e8e243f6ff                CALL 0x0040a5d0
004a61ee  84c0                      TEST AL,AL
004a61f0  741d                      JZ 0x004a620f
004a61f2  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
004a61f5  85c0                      TEST EAX,EAX
004a61f7  7416                      JZ 0x004a620f
004a61f9  8d4f30                    LEA ECX,[EDI + 0x30]
004a61fc  0f57c9                    XORPS XMM1,XMM1
004a61ff  e8fc2bf6ff                CALL 0x00408e00
004a6204  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
004a6207  85c0                      TEST EAX,EAX
004a6209  7404                      JZ 0x004a620f
004a620b  c6474400                  MOV byte ptr [EDI + 0x44],0x0
004a620f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004a6212  64890d00000000            MOV dword ptr FS:[0x0],ECX
004a6219  59                        POP ECX
004a621a  5f                        POP EDI
004a621b  5e                        POP ESI
004a621c  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004a621f  33cd                      XOR ECX,EBP
004a6221  e8058f6400                CALL 0x00aef12b
004a6226  8be5                      MOV ESP,EBP
004a6228  5d                        POP EBP
004a6229  8be3                      MOV ESP,EBX
004a622b  5b                        POP EBX
004a622c  c3                        RET
004a622d  ff159488b100              CALL dword ptr [0x00b18894]
004a6233  e8886af6ff                CALL 0x0040ccc0
004a6238  e81337ffff                CALL 0x00499950
004a623d  cc                        INT3
