; J460 NPC AI 0x0058d8b0 AI_0058d8b0
; types=915
; identities=915.0.0,915.1.0
; entry=0058d8b0
0058d8b0  53                        PUSH EBX
0058d8b1  8bdc                      MOV EBX,ESP
0058d8b3  83ec08                    SUB ESP,0x8
0058d8b6  83e4f8                    AND ESP,0xfffffff8
0058d8b9  83c404                    ADD ESP,0x4
0058d8bc  55                        PUSH EBP
0058d8bd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0058d8c0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0058d8c4  8bec                      MOV EBP,ESP
0058d8c6  6aff                      PUSH -0x1
0058d8c8  686d55af00                PUSH 0xaf556d
0058d8cd  64a100000000              MOV EAX,FS:[0x0]
0058d8d3  50                        PUSH EAX
0058d8d4  53                        PUSH EBX
0058d8d5  83ec40                    SUB ESP,0x40
0058d8d8  a1b493bf00                MOV EAX,[0x00bf93b4]
0058d8dd  33c5                      XOR EAX,EBP
0058d8df  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0058d8e2  56                        PUSH ESI
0058d8e3  57                        PUSH EDI
0058d8e4  50                        PUSH EAX
0058d8e5  8d45f4                    LEA EAX,[EBP + -0xc]
0058d8e8  64a300000000              MOV FS:[0x0],EAX
0058d8ee  8bf9                      MOV EDI,ECX
0058d8f0  897db8                    MOV dword ptr [EBP + -0x48],EDI
0058d8f3  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0058d8fa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0058d900  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
0058d906  8945c0                    MOV dword ptr [EBP + -0x40],EAX
0058d909  0f8524010000              JNZ 0x0058da33
0058d90f  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0058d915  818f6801000011000500      OR dword ptr [EDI + 0x168],0x50011
0058d91f  8bb7ec030000              MOV ESI,dword ptr [EDI + 0x3ec]
0058d925  f30f7e0534f5b100          MOVQ XMM0,qword ptr [0x00b1f534]
0058d92d  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0058d933  a13cf5b100                MOV EAX,[0x00b1f53c]
0058d938  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0058d93f  660fd645e0                MOVQ qword ptr [EBP + -0x20],XMM0
0058d944  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0058d947  85f6                      TEST ESI,ESI
0058d949  7510                      JNZ 0x0058d95b
0058d94b  6854bfb600                PUSH 0xb6bf54
0058d950  6a10                      PUSH 0x10
0058d952  e869394800                CALL 0x00a112c0
0058d957  83c408                    ADD ESP,0x8
0058d95a  cc                        INT3
0058d95b  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0058d95e  8bc6                      MOV EAX,ESI
0058d960  d3e8                      SHR EAX,CL
0058d962  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
0058d965  33c6                      XOR EAX,ESI
0058d967  8bd0                      MOV EDX,EAX
0058d969  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
0058d973  d3e2                      SHL EDX,CL
0058d975  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0058d978  33d0                      XOR EDX,EAX
0058d97a  8bc2                      MOV EAX,EDX
0058d97c  c787bc0b000000000000      MOV dword ptr [EDI + 0xbbc],0x0
0058d986  d3e8                      SHR EAX,CL
0058d988  8d4f48                    LEA ECX,[EDI + 0x48]
0058d98b  33c2                      XOR EAX,EDX
0058d98d  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0058d997  6a01                      PUSH 0x1
0058d999  688421b600                PUSH 0xb62184
0058d99e  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0058d9a8  660f6ec0                  MOVD XMM0,EAX
0058d9ac  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0058d9b0  c1e81f                    SHR EAX,0x1f
0058d9b3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0058d9bc  660f5ac0                  CVTPD2PS XMM0,XMM0
0058d9c0  f30f5905f09fba00          MULSS XMM0,dword ptr [0x00ba9ff0]
0058d9c8  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0058d9d0  e8fbcbe7ff                CALL 0x0040a5d0
0058d9d5  84c0                      TEST AL,AL
0058d9d7  7420                      JZ 0x0058d9f9
0058d9d9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0058d9dc  85c0                      TEST EAX,EAX
0058d9de  7419                      JZ 0x0058d9f9
0058d9e0  8d4f78                    LEA ECX,[EDI + 0x78]
0058d9e3  0f57c9                    XORPS XMM1,XMM1
0058d9e6  e815b4e7ff                CALL 0x00408e00
0058d9eb  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0058d9ee  85c0                      TEST EAX,EAX
0058d9f0  7407                      JZ 0x0058d9f9
0058d9f2  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
0058d9f9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0058d9fc  85c0                      TEST EAX,EAX
0058d9fe  7423                      JZ 0x0058da23
0058da00  660f6e4030                MOVD XMM0,dword ptr [EAX + 0x30]
0058da05  8d4f78                    LEA ECX,[EDI + 0x78]
0058da08  0f5bc0                    CVTDQ2PS XMM0,XMM0
0058da0b  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
0058da13  f30f2cc0                  CVTTSS2SI EAX,XMM0
0058da17  660f6ec8                  MOVD XMM1,EAX
0058da1b  0f5bc9                    CVTDQ2PS XMM1,XMM1
0058da1e  e8ddb3e7ff                CALL 0x00408e00
0058da23  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0058da29  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0058da33  81c1a8ba0100              ADD ECX,0x1baa8
0058da39  6897000000                PUSH 0x97
0058da3e  e86d0c4300                CALL 0x009be6b0
0058da43  8bf0                      MOV ESI,EAX
0058da45  85f6                      TEST ESI,ESI
0058da47  0f8400010000              JZ 0x0058db4d
0058da4d  6897000000                PUSH 0x97
0058da52  8bce                      MOV ECX,ESI
0058da54  e887dc2300                CALL 0x007cb6e0
0058da59  33c9                      XOR ECX,ECX
0058da5b  83f801                    CMP EAX,0x1
0058da5e  0f9fc1                    SETG CL
0058da61  33c0                      XOR EAX,EAX
0058da63  3987c40b0000              CMP dword ptr [EDI + 0xbc4],EAX
0058da69  0f95c0                    SETNZ AL
0058da6c  3bc8                      CMP ECX,EAX
0058da6e  0f84d9000000              JZ 0x0058db4d
0058da74  6897000000                PUSH 0x97
0058da79  8bce                      MOV ECX,ESI
0058da7b  e860dc2300                CALL 0x007cb6e0
0058da80  33c9                      XOR ECX,ECX
0058da82  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
0058da89  83f801                    CMP EAX,0x1
0058da8c  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0058da93  baf421b600                MOV EDX,0xb621f4
0058da98  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0058da9f  0f9fc1                    SETG CL
0058daa2  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0058daa6  898fc40b0000              MOV dword ptr [EDI + 0xbc4],ECX
0058daac  b9cc21b600                MOV ECX,0xb621cc
0058dab1  0f4ed1                    CMOVLE EDX,ECX
0058dab4  8bca                      MOV ECX,EDX
0058dab6  8d4101                    LEA EAX,[ECX + 0x1]
0058dab9  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0058dabc  0f1f4000                  NOP dword ptr [EAX]
0058dac0  8a01                      MOV AL,byte ptr [ECX]
0058dac2  41                        INC ECX
0058dac3  84c0                      TEST AL,AL
0058dac5  75f9                      JNZ 0x0058dac0
0058dac7  2b4dbc                    SUB ECX,dword ptr [EBP + -0x44]
0058daca  51                        PUSH ECX
0058dacb  52                        PUSH EDX
0058dacc  8d4dd4                    LEA ECX,[EBP + -0x2c]
0058dacf  e8fcf1e7ff                CALL 0x0040ccd0
0058dad4  8d45d4                    LEA EAX,[EBP + -0x2c]
0058dad7  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0058dade  50                        PUSH EAX
0058dadf  6a00                      PUSH 0x0
0058dae1  8d4f48                    LEA ECX,[EDI + 0x48]
0058dae4  e847e4e7ff                CALL 0x0040bf30
0058dae9  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0058daf0  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0058daf3  83fa10                    CMP EDX,0x10
0058daf6  722e                      JC 0x0058db26
0058daf8  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0058dafb  42                        INC EDX
0058dafc  8bc1                      MOV EAX,ECX
0058dafe  81fa00100000              CMP EDX,0x1000
0058db04  7216                      JC 0x0058db1c
0058db06  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0058db09  83c223                    ADD EDX,0x23
0058db0c  2bc1                      SUB EAX,ECX
0058db0e  83c0fc                    ADD EAX,-0x4
0058db11  83f81f                    CMP EAX,0x1f
0058db14  7606                      JBE 0x0058db1c
0058db16  ff159488b100              CALL dword ptr [0x00b18894]
0058db1c  52                        PUSH EDX
0058db1d  51                        PUSH ECX
0058db1e  e839165600                CALL 0x00aef15c
0058db23  83c408                    ADD ESP,0x8
0058db26  51                        PUSH ECX
0058db27  8d4f48                    LEA ECX,[EDI + 0x48]
0058db2a  e8d1e4e7ff                CALL 0x0040c000
0058db2f  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
0058db36  7405                      JZ 0x0058db3d
0058db38  0f57c0                    XORPS XMM0,XMM0
0058db3b  eb08                      JMP 0x0058db45
0058db3d  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0058db45  f30f118788030000          MOVSS dword ptr [EDI + 0x388],XMM0
0058db4d  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0058db51  7541                      JNZ 0x0058db94
0058db53  8bcf                      MOV ECX,EDI
0058db55  e8c6901400                CALL 0x006d6c20
0058db5a  85c0                      TEST EAX,EAX
0058db5c  7f36                      JG 0x0058db94
0058db5e  a17816c700                MOV EAX,[0x00c71678]
0058db63  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0058db69  80b82972000000            CMP byte ptr [EAX + 0x7229],0x0
0058db70  7409                      JZ 0x0058db7b
0058db72  83b8ec11000008            CMP dword ptr [EAX + 0x11ec],0x8
0058db79  7f19                      JG 0x0058db94
0058db7b  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0058db82  7510                      JNZ 0x0058db94
0058db84  8d4dc4                    LEA ECX,[EBP + -0x3c]
0058db87  e8e480eaff                CALL 0x00435c70
0058db8c  8b17                      MOV EDX,dword ptr [EDI]
0058db8e  8bcf                      MOV ECX,EDI
0058db90  50                        PUSH EAX
0058db91  ff5224                    CALL dword ptr [EDX + 0x24]
0058db94  83bf8401000007            CMP dword ptr [EDI + 0x184],0x7
0058db9b  750c                      JNZ 0x0058dba9
0058db9d  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0058dba7  eb47                      JMP 0x0058dbf0
0058dba9  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
0058dbb1  33c0                      XOR EAX,EAX
0058dbb3  0f2f0530aeba00            COMISS XMM0,dword ptr [0x00baae30]
0058dbba  b904000000                MOV ECX,0x4
0058dbbf  0f47c1                    CMOVA EAX,ECX
0058dbc2  0f2f0550adba00            COMISS XMM0,dword ptr [0x00baad50]
0058dbc9  898788010000              MOV dword ptr [EDI + 0x188],EAX
0058dbcf  7614                      JBE 0x0058dbe5
0058dbd1  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0058dbd9  8d4101                    LEA EAX,[ECX + 0x1]
0058dbdc  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0058dbe3  7305                      JNC 0x0058dbea
0058dbe5  b806000000                MOV EAX,0x6
0058dbea  898784010000              MOV dword ptr [EDI + 0x184],EAX
0058dbf0  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
0058dbf3  f30f103504a9ba00          MOVSS XMM6,dword ptr [0x00baa904]
0058dbfb  83e004                    AND EAX,0x4
0058dbfe  83c800                    OR EAX,0x0
0058dc01  0f8479010000              JZ 0x0058dd80
0058dc07  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
0058dc0a  8b7f0c                    MOV EDI,dword ptr [EDI + 0xc]
0058dc0d  3bf7                      CMP ESI,EDI
0058dc0f  0f8468010000              JZ 0x0058dd7d
0058dc15  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
0058dc18  83e004                    AND EAX,0x4
0058dc1b  83c800                    OR EAX,0x0
0058dc1e  0f8446010000              JZ 0x0058dd6a
0058dc24  f30f105620                MOVSS XMM2,dword ptr [ESI + 0x20]
0058dc29  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
0058dc30  9f                        LAHF
0058dc31  f6c444                    TEST AH,0x44
0058dc34  7a16                      JP 0x0058dc4c
0058dc36  f30f104624                MOVSS XMM0,dword ptr [ESI + 0x24]
0058dc3b  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0058dc42  9f                        LAHF
0058dc43  f6c444                    TEST AH,0x44
0058dc46  0f8b1e010000              JNP 0x0058dd6a
0058dc4c  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
0058dc4f  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0058dc57  f30f5cca                  SUBSS XMM1,XMM2
0058dc5b  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
0058dc63  f30f5c5624                SUBSS XMM2,dword ptr [ESI + 0x24]
0058dc68  0f28c1                    MOVAPS XMM0,XMM1
0058dc6b  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
0058dc70  f30f59c1                  MULSS XMM0,XMM1
0058dc74  0f28ca                    MOVAPS XMM1,XMM2
0058dc77  f30f59ca                  MULSS XMM1,XMM2
0058dc7b  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
0058dc80  f30f58c1                  ADDSS XMM0,XMM1
0058dc84  e8c77deaff                CALL 0x00435a50
0058dc89  f30f106db4                MOVSS XMM5,dword ptr [EBP + -0x4c]
0058dc8e  0f57e4                    XORPS XMM4,XMM4
0058dc91  0f2fc4                    COMISS XMM0,XMM4
0058dc94  f30f1075bc                MOVSS XMM6,dword ptr [EBP + -0x44]
0058dc99  7617                      JBE 0x0058dcb2
0058dc9b  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0058dca3  f30f5ec8                  DIVSS XMM1,XMM0
0058dca7  0f28c1                    MOVAPS XMM0,XMM1
0058dcaa  f30f59f1                  MULSS XMM6,XMM1
0058dcae  f30f59e8                  MULSS XMM5,XMM0
0058dcb2  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
0058dcb5  0f28ce                    MOVAPS XMM1,XMM6
0058dcb8  f30f101530a6ba00          MOVSS XMM2,dword ptr [0x00baa630]
0058dcc0  f30f598864030000          MULSS XMM1,dword ptr [EAX + 0x364]
0058dcc8  f30f109860030000          MOVSS XMM3,dword ptr [EAX + 0x360]
0058dcd0  0f28c3                    MOVAPS XMM0,XMM3
0058dcd3  f30f59c5                  MULSS XMM0,XMM5
0058dcd7  f30f58c8                  ADDSS XMM1,XMM0
0058dcdb  f30f5c0decadba00          SUBSS XMM1,dword ptr [0x00baadec]
0058dce3  f30f5e0d04a9ba00          DIVSS XMM1,dword ptr [0x00baa904]
0058dceb  f30f5fcc                  MAXSS XMM1,XMM4
0058dcef  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
0058dcf7  f30f58c9                  ADDSS XMM1,XMM1
0058dcfb  f30f5cd1                  SUBSS XMM2,XMM1
0058dcff  f30f10889c030000          MOVSS XMM1,dword ptr [EAX + 0x39c]
0058dd07  0f28c2                    MOVAPS XMM0,XMM2
0058dd0a  f30f59d6                  MULSS XMM2,XMM6
0058dd0e  f30f59c5                  MULSS XMM0,XMM5
0058dd12  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
0058dd1a  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0058dd22  f30f59d1                  MULSS XMM2,XMM1
0058dd26  f30f59c1                  MULSS XMM0,XMM1
0058dd2a  f30f589064030000          ADDSS XMM2,dword ptr [EAX + 0x364]
0058dd32  f30f58c3                  ADDSS XMM0,XMM3
0058dd36  f30f119064030000          MOVSS dword ptr [EAX + 0x364],XMM2
0058dd3e  f30f118060030000          MOVSS dword ptr [EAX + 0x360],XMM0
0058dd46  f30f1080bc0b0000          MOVSS XMM0,dword ptr [EAX + 0xbbc]
0058dd4e  0f2fc4                    COMISS XMM0,XMM4
0058dd51  7217                      JC 0x0058dd6a
0058dd53  f30f1080b40b0000          MOVSS XMM0,dword ptr [EAX + 0xbb4]
0058dd5b  0f2fc4                    COMISS XMM0,XMM4
0058dd5e  720a                      JC 0x0058dd6a
0058dd60  c780b40b00000000c0c0      MOV dword ptr [EAX + 0xbb4],0xc0c00000
0058dd6a  83c638                    ADD ESI,0x38
0058dd6d  3bf7                      CMP ESI,EDI
0058dd6f  0f85a0feffff              JNZ 0x0058dc15
0058dd75  f30f103504a9ba00          MOVSS XMM6,dword ptr [0x00baa904]
0058dd7d  8b7db8                    MOV EDI,dword ptr [EBP + -0x48]
0058dd80  f30f109fbc0b0000          MOVSS XMM3,dword ptr [EDI + 0xbbc]
0058dd88  0f57d2                    XORPS XMM2,XMM2
0058dd8b  0f2fd3                    COMISS XMM2,XMM3
0058dd8e  f30f102dd0a2ba00          MOVSS XMM5,dword ptr [0x00baa2d0]
0058dd96  7716                      JA 0x0058ddae
0058dd98  0f2f97b40b0000            COMISS XMM2,dword ptr [EDI + 0xbb4]
0058dd9f  770d                      JA 0x0058ddae
0058dda1  83bf8401000007            CMP dword ptr [EDI + 0x184],0x7
0058dda8  0f8517020000              JNZ 0x0058dfc5
0058ddae  83bf8401000007            CMP dword ptr [EDI + 0x184],0x7
0058ddb5  f30f10a79c030000          MOVSS XMM4,dword ptr [EDI + 0x39c]
0058ddbd  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0058ddc5  0f28c4                    MOVAPS XMM0,XMM4
0058ddc8  f30f5925a4a3ba00          MULSS XMM4,dword ptr [0x00baa3a4]
0058ddd0  f30f59c1                  MULSS XMM0,XMM1
0058ddd4  f30f58e1                  ADDSS XMM4,XMM1
0058ddd8  f30f58d8                  ADDSS XMM3,XMM0
0058dddc  f30f1165b4                MOVSS dword ptr [EBP + -0x4c],XMM4
0058dde1  f30f11a7b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM4
0058dde9  f30f115dbc                MOVSS dword ptr [EBP + -0x44],XMM3
0058ddee  f30f119fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM3
0058ddf6  7541                      JNZ 0x0058de39
0058ddf8  0f2f1d1ca8ba00            COMISS XMM3,dword ptr [0x00baa81c]
0058ddff  0f86c0010000              JBE 0x0058dfc5
0058de05  e856111600                CALL 0x006eef60
0058de0a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0058de10  8d973c030000              LEA EDX,[EDI + 0x33c]
0058de16  50                        PUSH EAX
0058de17  6a00                      PUSH 0x0
0058de19  6a00                      PUSH 0x0
0058de1b  6840b6c700                PUSH 0xc7b640
0058de20  52                        PUSH EDX
0058de21  6a0f                      PUSH 0xf
0058de23  68e8030000                PUSH 0x3e8
0058de28  e8f3ace9ff                CALL 0x00428b20
0058de2d  8b07                      MOV EAX,dword ptr [EDI]
0058de2f  8bcf                      MOV ECX,EDI
0058de31  ff5028                    CALL dword ptr [EAX + 0x28]
0058de34  e9af030000                JMP 0x0058e1e8
0058de39  0f2fda                    COMISS XMM3,XMM2
0058de3c  0f8683010000              JBE 0x0058dfc5
0058de42  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0058de4a  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0058de52  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0058de5a  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0058de62  8b75c0                    MOV ESI,dword ptr [EBP + -0x40]
0058de65  f30f5cc6                  SUBSS XMM0,XMM6
0058de69  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
0058de71  f30f5ec6                  DIVSS XMM0,XMM6
0058de75  f30f5ece                  DIVSS XMM1,XMM6
0058de79  f30f58c5                  ADDSS XMM0,XMM5
0058de7d  f30f58cd                  ADDSS XMM1,XMM5
0058de81  f30f2cd0                  CVTTSS2SI EDX,XMM0
0058de85  f30f2cc9                  CVTTSS2SI ECX,XMM1
0058de89  85d2                      TEST EDX,EDX
0058de8b  7817                      JS 0x0058dea4
0058de8d  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
0058de90  3bd0                      CMP EDX,EAX
0058de92  7d10                      JGE 0x0058dea4
0058de94  85c9                      TEST ECX,ECX
0058de96  780c                      JS 0x0058dea4
0058de98  3b4e10                    CMP ECX,dword ptr [ESI + 0x10]
0058de9b  7d07                      JGE 0x0058dea4
0058de9d  0fafc1                    IMUL EAX,ECX
0058dea0  03c2                      ADD EAX,EDX
0058dea2  eb03                      JMP 0x0058dea7
0058dea4  83c8ff                    OR EAX,0xffffffff
0058dea7  50                        PUSH EAX
0058dea8  8bce                      MOV ECX,ESI
0058deaa  e851292600                CALL 0x007f0800
0058deaf  83f801                    CMP EAX,0x1
0058deb2  7514                      JNZ 0x0058dec8
0058deb4  f30f105dbc                MOVSS XMM3,dword ptr [EBP + -0x44]
0058deb9  c7878401000007000000      MOV dword ptr [EDI + 0x184],0x7
0058dec3  e9fd000000                JMP 0x0058dfc5
0058dec8  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0058decd  0f57d2                    XORPS XMM2,XMM2
0058ded0  0f2fc2                    COMISS XMM0,XMM2
0058ded3  c787bc0b000000000000      MOV dword ptr [EDI + 0xbbc],0x0
0058dedd  0f57db                    XORPS XMM3,XMM3
0058dee0  0f86df000000              JBE 0x0058dfc5
0058dee6  0f2f055ca7ba00            COMISS XMM0,dword ptr [0x00baa75c]
0058deed  0f86c8000000              JBE 0x0058dfbb
0058def3  e868101600                CALL 0x006eef60
0058def8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0058defe  8d4dc0                    LEA ECX,[EBP + -0x40]
0058df01  c745c0e7010000            MOV dword ptr [EBP + -0x40],0x1e7
0058df08  660f6ec0                  MOVD XMM0,EAX
0058df0c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0058df10  c1e81f                    SHR EAX,0x1f
0058df13  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0058df1c  660f5ac0                  CVTPD2PS XMM0,XMM0
0058df20  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0058df28  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0058df30  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
0058df38  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0058df3d  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0058df45  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0058df4a  e831883c00                CALL 0x00956780
0058df4f  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
0058df54  83ec08                    SUB ESP,0x8
0058df57  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0058df5f  f30f110424                MOVSS dword ptr [ESP],XMM0
0058df64  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0058df69  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0058df71  6a00                      PUSH 0x0
0058df73  6a02                      PUSH 0x2
0058df75  51                        PUSH ECX
0058df76  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0058df7e  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0058df84  f30f5d05b0a4ba00          MINSS XMM0,dword ptr [0x00baa4b0]
0058df8c  f30f110424                MOVSS dword ptr [ESP],XMM0
0058df91  ff75c0                    PUSH dword ptr [EBP + -0x40]
0058df94  e897fc3900                CALL 0x0092dc30
0058df99  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0058dfa1  f30f590520adba00          MULSS XMM0,dword ptr [0x00baad20]
0058dfa9  f30f109fbc0b0000          MOVSS XMM3,dword ptr [EDI + 0xbbc]
0058dfb1  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0058dfb9  eb0a                      JMP 0x0058dfc5
0058dfbb  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
0058dfc5  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
0058dfcd  f30f119f50030000          MOVSS dword ptr [EDI + 0x350],XMM3
0058dfd5  0f28ca                    MOVAPS XMM1,XMM2
0058dfd8  f30f109f64030000          MOVSS XMM3,dword ptr [EDI + 0x364]
0058dfe0  0f28c3                    MOVAPS XMM0,XMM3
0058dfe3  f30f59ca                  MULSS XMM1,XMM2
0058dfe7  f30f59c3                  MULSS XMM0,XMM3
0058dfeb  f30f58c8                  ADDSS XMM1,XMM0
0058dfef  0f2f0d5ca7ba00            COMISS XMM1,dword ptr [0x00baa75c]
0058dff6  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
0058dffb  0f8692000000              JBE 0x0058e093
0058e001  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0058e008  33c9                      XOR ECX,ECX
0058e00a  0f541d40cbba00            ANDPS XMM3,xmmword ptr [0x00bacb40]
0058e011  0f2fd3                    COMISS XMM2,XMM3
0058e014  0f97c1                    SETA CL
0058e017  3b8fc00b0000              CMP ECX,dword ptr [EDI + 0xbc0]
0058e01d  7474                      JZ 0x0058e093
0058e01f  83f901                    CMP ECX,0x1
0058e022  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
0058e028  ba8421b600                MOV EDX,0xb62184
0058e02d  8d4f48                    LEA ECX,[EDI + 0x48]
0058e030  b8c021b600                MOV EAX,0xb621c0
0058e035  6a01                      PUSH 0x1
0058e037  0f45c2                    CMOVNZ EAX,EDX
0058e03a  50                        PUSH EAX
0058e03b  e890c5e7ff                CALL 0x0040a5d0
0058e040  84c0                      TEST AL,AL
0058e042  7420                      JZ 0x0058e064
0058e044  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0058e047  85c0                      TEST EAX,EAX
0058e049  7419                      JZ 0x0058e064
0058e04b  8d4f78                    LEA ECX,[EDI + 0x78]
0058e04e  0f57c9                    XORPS XMM1,XMM1
0058e051  e8aaade7ff                CALL 0x00408e00
0058e056  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0058e059  85c0                      TEST EAX,EAX
0058e05b  7407                      JZ 0x0058e064
0058e05d  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
0058e064  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0058e067  85c0                      TEST EAX,EAX
0058e069  7423                      JZ 0x0058e08e
0058e06b  660f6e4030                MOVD XMM0,dword ptr [EAX + 0x30]
0058e070  8d4f78                    LEA ECX,[EDI + 0x78]
0058e073  0f5bc0                    CVTDQ2PS XMM0,XMM0
0058e076  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
0058e07e  f30f2cc0                  CVTTSS2SI EAX,XMM0
0058e082  660f6ec8                  MOVD XMM1,EAX
0058e086  0f5bc9                    CVTDQ2PS XMM1,XMM1
0058e089  e872ade7ff                CALL 0x00408e00
0058e08e  f30f104dc0                MOVSS XMM1,dword ptr [EBP + -0x40]
0058e093  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0058e09b  f30f59c0                  MULSS XMM0,XMM0
0058e09f  f30f58c1                  ADDSS XMM0,XMM1
0058e0a3  e8a879eaff                CALL 0x00435a50
0058e0a8  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
0058e0af  0f28d8                    MOVAPS XMM3,XMM0
0058e0b2  f30f59058ca0ba00          MULSS XMM0,dword ptr [0x00baa08c]
0058e0ba  750a                      JNZ 0x0058e0c6
0058e0bc  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
0058e0c4  eb08                      JMP 0x0058e0ce
0058e0c6  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0058e0ce  0f57c9                    XORPS XMM1,XMM1
0058e0d1  0f2fca                    COMISS XMM1,XMM2
0058e0d4  7607                      JBE 0x0058e0dd
0058e0d6  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0058e0dd  f30f5c1dd0a2ba00          SUBSS XMM3,dword ptr [0x00baa2d0]
0058e0e5  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0058e0ed  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
0058e0f5  f30f5e1d30a7ba00          DIVSS XMM3,dword ptr [0x00baa730]
0058e0fd  0f2fc8                    COMISS XMM1,XMM0
0058e100  f30f5fd9                  MAXSS XMM3,XMM1
0058e104  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0058e109  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0058e111  f30f5dda                  MINSS XMM3,XMM2
0058e115  f30f591df4a1ba00          MULSS XMM3,dword ptr [0x00baa1f4]
0058e11d  f30f581d54a3ba00          ADDSS XMM3,dword ptr [0x00baa354]
0058e125  f30f599f6c030000          MULSS XMM3,dword ptr [EDI + 0x36c]
0058e12d  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
0058e135  7627                      JBE 0x0058e15e
0058e137  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0058e140  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0058e148  f30f58c2                  ADDSS XMM0,XMM2
0058e14c  0f2fc8                    COMISS XMM1,XMM0
0058e14f  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0058e154  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0058e15c  77e2                      JA 0x0058e140
0058e15e  0f2fc2                    COMISS XMM0,XMM2
0058e161  722b                      JC 0x0058e18e
0058e163  0f1f4000                  NOP dword ptr [EAX]
0058e167  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0058e170  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0058e178  f30f5cc2                  SUBSS XMM0,XMM2
0058e17c  0f2fc2                    COMISS XMM0,XMM2
0058e17f  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0058e184  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0058e18c  73e2                      JNC 0x0058e170
0058e18e  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0058e191  85f6                      TEST ESI,ESI
0058e193  7431                      JZ 0x0058e1c6
0058e195  d98788000000              FLD dword ptr [EDI + 0x88]
0058e19b  83ec08                    SUB ESP,0x8
0058e19e  dd1c24                    FSTP qword ptr [ESP]
0058e1a1  e871275600                CALL 0x00af0917
0058e1a6  660f6e4630                MOVD XMM0,dword ptr [ESI + 0x30]
0058e1ab  83c408                    ADD ESP,0x8
0058e1ae  0f5bc0                    CVTDQ2PS XMM0,XMM0
0058e1b1  d95dc0                    FSTP dword ptr [EBP + -0x40]
0058e1b4  d945c0                    FLD dword ptr [EBP + -0x40]
0058e1b7  f30f5945b8                MULSS XMM0,dword ptr [EBP + -0x48]
0058e1bc  d95dc0                    FSTP dword ptr [EBP + -0x40]
0058e1bf  f30f2c4dc0                CVTTSS2SI ECX,dword ptr [EBP + -0x40]
0058e1c4  eb07                      JMP 0x0058e1cd
0058e1c6  83c9ff                    OR ECX,0xffffffff
0058e1c9  f30f59c1                  MULSS XMM0,XMM1
0058e1cd  f30f2cc0                  CVTTSS2SI EAX,XMM0
0058e1d1  3bc1                      CMP EAX,ECX
0058e1d3  7413                      JZ 0x0058e1e8
0058e1d5  85f6                      TEST ESI,ESI
0058e1d7  740f                      JZ 0x0058e1e8
0058e1d9  660f6ec8                  MOVD XMM1,EAX
0058e1dd  8d4f78                    LEA ECX,[EDI + 0x78]
0058e1e0  0f5bc9                    CVTDQ2PS XMM1,XMM1
0058e1e3  e818ace7ff                CALL 0x00408e00
0058e1e8  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0058e1eb  64890d00000000            MOV dword ptr FS:[0x0],ECX
0058e1f2  59                        POP ECX
0058e1f3  5f                        POP EDI
0058e1f4  5e                        POP ESI
0058e1f5  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0058e1f8  33cd                      XOR ECX,EBP
0058e1fa  e82c0f5600                CALL 0x00aef12b
0058e1ff  8be5                      MOV ESP,EBP
0058e201  5d                        POP EBP
0058e202  8be3                      MOV ESP,EBX
0058e204  5b                        POP EBX
0058e205  c3                        RET
