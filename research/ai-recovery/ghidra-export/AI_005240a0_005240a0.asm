; J460 NPC AI 0x005240a0 AI_005240a0
; types=58
; identities=58.0.0,58.1.0
; entry=005240a0
005240a0  53                        PUSH EBX
005240a1  8bdc                      MOV EBX,ESP
005240a3  83ec08                    SUB ESP,0x8
005240a6  83e4f8                    AND ESP,0xfffffff8
005240a9  83c404                    ADD ESP,0x4
005240ac  55                        PUSH EBP
005240ad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005240b0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005240b4  8bec                      MOV EBP,ESP
005240b6  81ece8000000              SUB ESP,0xe8
005240bc  a1b493bf00                MOV EAX,[0x00bf93b4]
005240c1  33c5                      XOR EAX,EBP
005240c3  8945fc                    MOV dword ptr [EBP + -0x4],EAX
005240c6  56                        PUSH ESI
005240c7  57                        PUSH EDI
005240c8  8bf9                      MOV EDI,ECX
005240ca  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005240d0  89854cffffff              MOV dword ptr [EBP + 0xffffff4c],EAX
005240d6  85c0                      TEST EAX,EAX
005240d8  0f858d000000              JNZ 0x0052416b
005240de  6a01                      PUSH 0x1
005240e0  e8cbc31900                CALL 0x006c04b0
005240e5  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
005240eb  85d2                      TEST EDX,EDX
005240ed  751a                      JNZ 0x00524109
005240ef  6854bfb600                PUSH 0xb6bf54
005240f4  6a10                      PUSH 0x10
005240f6  e8c5d14e00                CALL 0x00a112c0
005240fb  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
00524101  83c408                    ADD ESP,0x8
00524104  85d2                      TEST EDX,EDX
00524106  7501                      JNZ 0x00524109
00524108  cc                        INT3
00524109  8b8fe0030000              MOV ECX,dword ptr [EDI + 0x3e0]
0052410f  8bc2                      MOV EAX,EDX
00524111  d3e8                      SHR EAX,CL
00524113  8b8fe4030000              MOV ECX,dword ptr [EDI + 0x3e4]
00524119  33c2                      XOR EAX,EDX
0052411b  8bd0                      MOV EDX,EAX
0052411d  d3e2                      SHL EDX,CL
0052411f  8b8fe8030000              MOV ECX,dword ptr [EDI + 0x3e8]
00524125  33d0                      XOR EDX,EAX
00524127  8bf2                      MOV ESI,EDX
00524129  b8cdcccccc                MOV EAX,0xcccccccd
0052412e  d3ee                      SHR ESI,CL
00524130  33f2                      XOR ESI,EDX
00524132  f7e6                      MUL ESI
00524134  89b7dc030000              MOV dword ptr [EDI + 0x3dc],ESI
0052413a  c1ea04                    SHR EDX,0x4
0052413d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00524147  8d0492                    LEA EAX,[EDX + EDX*0x4]
0052414a  c1e002                    SHL EAX,0x2
0052414d  2bf0                      SUB ESI,EAX
0052414f  83c605                    ADD ESI,0x5
00524152  89b7a00b0000              MOV dword ptr [EDI + 0xba0],ESI
00524158  5f                        POP EDI
00524159  5e                        POP ESI
0052415a  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0052415d  33cd                      XOR ECX,EBP
0052415f  e8c7af5c00                CALL 0x00aef12b
00524164  8be5                      MOV ESP,EBP
00524166  5d                        POP EBP
00524167  8be3                      MOV ESP,EBX
00524169  5b                        POP EBX
0052416a  c3                        RET
0052416b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052416f  7409                      JZ 0x0052417a
00524171  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00524178  750a                      JNZ 0x00524184
0052417a  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00524184  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
0052418c  6a00                      PUSH 0x0
0052418e  e88d491b00                CALL 0x006d8b20
00524193  83bf640b000006            CMP dword ptr [EDI + 0xb64],0x6
0052419a  0f85fb000000              JNZ 0x0052429b
005241a0  6a00                      PUSH 0x0
005241a2  68100cb600                PUSH 0xb60c10
005241a7  8d4f48                    LEA ECX,[EDI + 0x48]
005241aa  e8d161eeff                CALL 0x0040a380
005241af  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005241b6  0f85df000000              JNZ 0x0052429b
005241bc  51                        PUSH ECX
005241bd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005241c3  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
005241c9  c704240000a041            MOV dword ptr [ESP],0x41a00000
005241d0  50                        PUSH EAX
005241d1  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
005241d7  e8f4a72f00                CALL 0x0081e9d0
005241dc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005241e2  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
005241e8  50                        PUSH EAX
005241e9  e862f71d00                CALL 0x00703950
005241ee  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
005241f6  f30f108d44ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff44]
005241fe  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
00524206  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
0052420e  f30f59c9                  MULSS XMM1,XMM1
00524212  f30f59c0                  MULSS XMM0,XMM0
00524216  f30f58c8                  ADDSS XMM1,XMM0
0052421a  0f2f0d44acba00            COMISS XMM1,dword ptr [0x00baac44]
00524221  7678                      JBE 0x0052429b
00524223  f30f1005a4acba00          MOVSS XMM0,dword ptr [0x00baaca4]
0052422b  0f2fc1                    COMISS XMM0,XMM1
0052422e  766b                      JBE 0x0052429b
00524230  a17816c700                MOV EAX,[0x00c71678]
00524235  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0052423b  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00524241  50                        PUSH EAX
00524242  8bce                      MOV ECX,ESI
00524244  e847ea2e00                CALL 0x00812c90
00524249  3dbf010000                CMP EAX,0x1bf
0052424e  770d                      JA 0x0052425d
00524250  81bc866c070000f4010000    CMP dword ptr [ESI + EAX*0x4 + 0x76c],0x1f4
0052425b  7d3e                      JGE 0x0052429b
0052425d  99                        CDQ
0052425e  f77e0c                    IDIV dword ptr [ESI + 0xc]
00524261  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00524269  660f6ed2                  MOVD XMM2,EDX
0052426d  660f6ec8                  MOVD XMM1,EAX
00524271  0f5bd2                    CVTDQ2PS XMM2,XMM2
00524274  0f5bc9                    CVTDQ2PS XMM1,XMM1
00524277  f30f59d0                  MULSS XMM2,XMM0
0052427b  f30f59c8                  MULSS XMM1,XMM0
0052427f  f30f58d0                  ADDSS XMM2,XMM0
00524283  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
0052428b  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
00524293  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
0052429b  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
005242a1  8bc1                      MOV EAX,ECX
005242a3  8b954cffffff              MOV EDX,dword ptr [EBP + 0xffffff4c]
005242a9  8bf1                      MOV ESI,ECX
005242ab  3bd1                      CMP EDX,ECX
005242ad  0f84a0000000              JZ 0x00524353
005242b3  83fa06                    CMP EDX,0x6
005242b6  0f8597000000              JNZ 0x00524353
005242bc  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
005242c4  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
005242cb  9f                        LAHF
005242cc  f6c444                    TEST AH,0x44
005242cf  7a19                      JP 0x005242ea
005242d1  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005242d9  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005242e0  9f                        LAHF
005242e1  f6c444                    TEST AH,0x44
005242e4  7a04                      JP 0x005242ea
005242e6  8bc1                      MOV EAX,ECX
005242e8  eb69                      JMP 0x00524353
005242ea  6a01                      PUSH 0x1
005242ec  8bcf                      MOV ECX,EDI
005242ee  e8bdc11900                CALL 0x006c04b0
005242f3  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
005242f9  8d4f48                    LEA ECX,[EDI + 0x48]
005242fc  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
00524302  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
00524308  6a00                      PUSH 0x0
0052430a  898740030000              MOV dword ptr [EDI + 0x340],EAX
00524310  68e80bb600                PUSH 0xb60be8
00524315  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0052431f  e85c60eeff                CALL 0x0040a380
00524324  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052432c  8bcf                      MOV ECX,EDI
0052432e  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00524336  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0052433e  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00524346  e8a5491b00                CALL 0x006d8cf0
0052434b  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00524351  8bf0                      MOV ESI,EAX
00524353  83f810                    CMP EAX,0x10
00524356  0f85bd000000              JNZ 0x00524419
0052435c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00524360  0f84fd000000              JZ 0x00524463
00524366  d98788000000              FLD dword ptr [EDI + 0x88]
0052436c  83ec08                    SUB ESP,0x8
0052436f  dd1c24                    FSTP qword ptr [ESP]
00524372  e8a0c55c00                CALL 0x00af0917
00524377  d99d4cffffff              FSTP dword ptr [EBP + 0xffffff4c]
0052437d  d9854cffffff              FLD dword ptr [EBP + 0xffffff4c]
00524383  83c408                    ADD ESP,0x8
00524386  d99d4cffffff              FSTP dword ptr [EBP + 0xffffff4c]
0052438c  f30f2c854cffffff          CVTTSS2SI EAX,dword ptr [EBP + 0xffffff4c]
00524394  83f803                    CMP EAX,0x3
00524397  0f8cc6000000              JL 0x00524463
0052439d  b804000000                MOV EAX,0x4
005243a2  898788010000              MOV dword ptr [EDI + 0x188],EAX
005243a8  83fe10                    CMP ESI,0x10
005243ab  0f85b9000000              JNZ 0x0052446a
005243b1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005243b5  7437                      JZ 0x005243ee
005243b7  d98788000000              FLD dword ptr [EDI + 0x88]
005243bd  83ec08                    SUB ESP,0x8
005243c0  dd1c24                    FSTP qword ptr [ESP]
005243c3  e84fc55c00                CALL 0x00af0917
005243c8  d99d4cffffff              FSTP dword ptr [EBP + 0xffffff4c]
005243ce  d9854cffffff              FLD dword ptr [EBP + 0xffffff4c]
005243d4  83c408                    ADD ESP,0x8
005243d7  d99d4cffffff              FSTP dword ptr [EBP + 0xffffff4c]
005243dd  f30f2c854cffffff          CVTTSS2SI EAX,dword ptr [EBP + 0xffffff4c]
005243e5  83f803                    CMP EAX,0x3
005243e8  0f84c6000000              JZ 0x005244b4
005243ee  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005243f6  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005243fe  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00524406  5f                        POP EDI
00524407  5e                        POP ESI
00524408  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0052440b  33cd                      XOR ECX,EBP
0052440d  e819ad5c00                CALL 0x00aef12b
00524412  8be5                      MOV ESP,EBP
00524414  5d                        POP EBP
00524415  8be3                      MOV ESP,EBX
00524417  5b                        POP EBX
00524418  c3                        RET
00524419  83f806                    CMP EAX,0x6
0052441c  0f857bffffff              JNZ 0x0052439d
00524422  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00524426  0f8471ffffff              JZ 0x0052439d
0052442c  d98788000000              FLD dword ptr [EDI + 0x88]
00524432  83ec08                    SUB ESP,0x8
00524435  dd1c24                    FSTP qword ptr [ESP]
00524438  e8dac45c00                CALL 0x00af0917
0052443d  d99d4cffffff              FSTP dword ptr [EBP + 0xffffff4c]
00524443  d9854cffffff              FLD dword ptr [EBP + 0xffffff4c]
00524449  83c408                    ADD ESP,0x8
0052444c  d99d4cffffff              FSTP dword ptr [EBP + 0xffffff4c]
00524452  f30f2c854cffffff          CVTTSS2SI EAX,dword ptr [EBP + 0xffffff4c]
0052445a  83f807                    CMP EAX,0x7
0052445d  0f8e3affffff              JLE 0x0052439d
00524463  33c0                      XOR EAX,EAX
00524465  e938ffffff                JMP 0x005243a2
0052446a  83fe06                    CMP ESI,0x6
0052446d  0f85d1000000              JNZ 0x00524544
00524473  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00524477  0f8471ffffff              JZ 0x005243ee
0052447d  d98788000000              FLD dword ptr [EDI + 0x88]
00524483  83ec08                    SUB ESP,0x8
00524486  dd1c24                    FSTP qword ptr [ESP]
00524489  e889c45c00                CALL 0x00af0917
0052448e  d99d4cffffff              FSTP dword ptr [EBP + 0xffffff4c]
00524494  d9854cffffff              FLD dword ptr [EBP + 0xffffff4c]
0052449a  83c408                    ADD ESP,0x8
0052449d  d99d4cffffff              FSTP dword ptr [EBP + 0xffffff4c]
005244a3  f30f2c854cffffff          CVTTSS2SI EAX,dword ptr [EBP + 0xffffff4c]
005244ab  83f807                    CMP EAX,0x7
005244ae  0f853affffff              JNZ 0x005243ee
005244b4  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005244bc  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
005244c2  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
005244ca  83f812                    CMP EAX,0x12
005244cd  750a                      JNZ 0x005244d9
005244cf  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
005244d7  eb0d                      JMP 0x005244e6
005244d9  83f813                    CMP EAX,0x13
005244dc  7510                      JNZ 0x005244ee
005244de  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
005244e6  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
005244ee  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005244f4  8d8d4cffffff              LEA ECX,[EBP + 0xffffff4c]
005244fa  c7854cffffff48000000      MOV dword ptr [EBP + 0xffffff4c],0x48
00524504  e877224300                CALL 0x00956780
00524509  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
00524511  83ec08                    SUB ESP,0x8
00524514  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0052451c  f30f110424                MOVSS dword ptr [ESP],XMM0
00524521  6a00                      PUSH 0x0
00524523  6a02                      PUSH 0x2
00524525  51                        PUSH ECX
00524526  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052452d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00524533  ffb54cffffff              PUSH dword ptr [EBP + 0xffffff4c]
00524539  e8f2964000                CALL 0x0092dc30
0052453e  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
00524544  83fe04                    CMP ESI,0x4
00524547  0f85a1feffff              JNZ 0x005243ee
0052454d  6a00                      PUSH 0x0
0052454f  8bcf                      MOV ECX,EDI
00524551  e85abf1900                CALL 0x006c04b0
00524556  e805aa1c00                CALL 0x006eef60
0052455b  33d2                      XOR EDX,EDX
0052455d  b90a000000                MOV ECX,0xa
00524562  f7f1                      DIV ECX
00524564  85d2                      TEST EDX,EDX
00524566  7542                      JNZ 0x005245aa
00524568  e8f3a91c00                CALL 0x006eef60
0052456d  51                        PUSH ECX
0052456e  8bcf                      MOV ECX,EDI
00524570  660f6ec0                  MOVD XMM0,EAX
00524574  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00524578  c1e81f                    SHR EAX,0x1f
0052457b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00524584  660f5ac0                  CVTPD2PS XMM0,XMM0
00524588  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00524590  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00524598  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
005245a0  f30f110424                MOVSS dword ptr [ESP],XMM0
005245a5  e8261f1900                CALL 0x006b64d0
005245aa  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
005245b0  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
005245b6  89854cffffff              MOV dword ptr [EBP + 0xffffff4c],EAX
005245bc  8bc1                      MOV EAX,ECX
005245be  2500020000                AND EAX,0x200
005245c3  83c800                    OR EAX,0x0
005245c6  7477                      JZ 0x0052463f
005245c8  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005245cf  756e                      JNZ 0x0052463f
005245d1  6a00                      PUSH 0x0
005245d3  8d8f14040000              LEA ECX,[EDI + 0x414]
005245d9  e8221d2c00                CALL 0x007e6300
005245de  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
005245e6  b9e4dcb100                MOV ECX,0xb1dce4
005245eb  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
005245f3  b854bcb100                MOV EAX,0xb1bc54
005245f8  f30f59c9                  MULSS XMM1,XMM1
005245fc  6a00                      PUSH 0x0
005245fe  f30f59c0                  MULSS XMM0,XMM0
00524602  f30f58c8                  ADDSS XMM1,XMM0
00524606  0f2f0d54a4ba00            COMISS XMM1,dword ptr [0x00baa454]
0052460d  0f47c1                    CMOVA EAX,ECX
00524610  8d4f48                    LEA ECX,[EDI + 0x48]
00524613  50                        PUSH EAX
00524614  e8675deeff                CALL 0x0040a380
00524619  0f57db                    XORPS XMM3,XMM3
0052461c  0f2f9f60030000            COMISS XMM3,dword ptr [EDI + 0x360]
00524623  0f97c0                    SETA AL
00524626  888748010000              MOV byte ptr [EDI + 0x148],AL
0052462c  5f                        POP EDI
0052462d  5e                        POP ESI
0052462e  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00524631  33cd                      XOR ECX,EBP
00524633  e8f3aa5c00                CALL 0x00aef12b
00524638  8be5                      MOV ESP,EBP
0052463a  5d                        POP EBP
0052463b  8be3                      MOV ESP,EBX
0052463d  5b                        POP EBX
0052463e  c3                        RET
0052463f  81e100080001              AND ECX,0x1000800
00524645  83c900                    OR ECX,0x0
00524648  7459                      JZ 0x005246a3
0052464a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00524651  7550                      JNZ 0x005246a3
00524653  8bcf                      MOV ECX,EDI
00524655  e8e6a11900                CALL 0x006be840
0052465a  6a00                      PUSH 0x0
0052465c  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00524662  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00524668  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
0052466e  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
00524674  898d30ffffff              MOV dword ptr [EBP + 0xffffff30],ECX
0052467a  8d8f14040000              LEA ECX,[EDI + 0x414]
00524680  50                        PUSH EAX
00524681  e8ba022c00                CALL 0x007e4940
00524686  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052468e  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00524696  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052469e  e9e5010000                JMP 0x00524888
005246a3  8bcf                      MOV ECX,EDI
005246a5  e896a11900                CALL 0x006be840
005246aa  6a01                      PUSH 0x1
005246ac  6a00                      PUSH 0x0
005246ae  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
005246b4  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
005246ba  51                        PUSH ECX
005246bb  89852cffffff              MOV dword ptr [EBP + 0xffffff2c],EAX
005246c1  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
005246c7  898d28ffffff              MOV dword ptr [EBP + 0xffffff28],ECX
005246cd  8d8f14040000              LEA ECX,[EDI + 0x414]
005246d3  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
005246da  50                        PUSH EAX
005246db  e8e0ec2b00                CALL 0x007e33c0
005246e0  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005246e4  0f859e010000              JNZ 0x00524888
005246ea  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
005246f0  85d2                      TEST EDX,EDX
005246f2  0f8f76010000              JG 0x0052486e
005246f8  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
00524700  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
00524708  0f28c1                    MOVAPS XMM0,XMM1
0052470b  f30f59c1                  MULSS XMM0,XMM1
0052470f  0f28ca                    MOVAPS XMM1,XMM2
00524712  f30f59ca                  MULSS XMM1,XMM2
00524716  f30f58c1                  ADDSS XMM0,XMM1
0052471a  e83113f1ff                CALL 0x00435a50
0052471f  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00524727  0f28d0                    MOVAPS XMM2,XMM0
0052472a  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00524732  0f57db                    XORPS XMM3,XMM3
00524735  0f2fd3                    COMISS XMM2,XMM3
00524738  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
00524740  0f28e9                    MOVAPS XMM5,XMM1
00524743  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
0052474b  0f28e0                    MOVAPS XMM4,XMM0
0052474e  7628                      JBE 0x00524778
00524750  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
00524758  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00524760  f30f5eca                  DIVSS XMM1,XMM2
00524764  f30f5ec2                  DIVSS XMM0,XMM2
00524768  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
00524770  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00524778  0f2ecd                    UCOMISS XMM1,XMM5
0052477b  9f                        LAHF
0052477c  f6c444                    TEST AH,0x44
0052477f  7a0d                      JP 0x0052478e
00524781  0f2ec4                    UCOMISS XMM0,XMM4
00524784  9f                        LAHF
00524785  f6c444                    TEST AH,0x44
00524788  0f8bfa000000              JNP 0x00524888
0052478e  e8cda71c00                CALL 0x006eef60
00524793  33d2                      XOR EDX,EDX
00524795  b914000000                MOV ECX,0x14
0052479a  f7f1                      DIV ECX
0052479c  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
005247a2  83c228                    ADD EDX,0x28
005247a5  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
005247ab  e880a7f1ff                CALL 0x0043ef30
005247b0  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005247b8  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
005247be  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
005247c6  f30f108d4cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff4c]
005247ce  8bcf                      MOV ECX,EDI
005247d0  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
005247d8  50                        PUSH EAX
005247d9  6a00                      PUSH 0x0
005247db  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
005247e3  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
005247e9  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
005247f1  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
005247f9  f30f118d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM1
00524801  f30f108d44ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff44]
00524809  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
00524811  50                        PUSH EAX
00524812  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00524818  c7855cffffff9a99993e      MOV dword ptr [EBP + 0xffffff5c],0x3e99999a
00524822  50                        PUSH EAX
00524823  c78558ffffff0000a0c0      MOV dword ptr [EBP + 0xffffff58],0xc0a00000
0052482d  c78554ffffff0000a040      MOV dword ptr [EBP + 0xffffff54],0x40a00000
00524837  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
0052483f  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
00524847  e8946a1a00                CALL 0x006cb2e0
0052484c  51                        PUSH ECX
0052484d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00524854  6a00                      PUSH 0x0
00524856  6a02                      PUSH 0x2
00524858  51                        PUSH ECX
00524859  c704240000803f            MOV dword ptr [ESP],0x3f800000
00524860  8bcf                      MOV ECX,EDI
00524862  68b2000000                PUSH 0xb2
00524867  e834231b00                CALL 0x006d6ba0
0052486c  eb1a                      JMP 0x00524888
0052486e  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00524876  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0052487e  2bc8                      SUB ECX,EAX
00524880  03ca                      ADD ECX,EDX
00524882  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
00524888  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00524890  b9e4dcb100                MOV ECX,0xb1dce4
00524895  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0052489d  b854bcb100                MOV EAX,0xb1bc54
005248a2  f30f59c9                  MULSS XMM1,XMM1
005248a6  6a00                      PUSH 0x0
005248a8  f30f59c0                  MULSS XMM0,XMM0
005248ac  f30f58c8                  ADDSS XMM1,XMM0
005248b0  0f2f0d54a4ba00            COMISS XMM1,dword ptr [0x00baa454]
005248b7  0f47c1                    CMOVA EAX,ECX
005248ba  8d4f48                    LEA ECX,[EDI + 0x48]
005248bd  50                        PUSH EAX
005248be  e8bd5aeeff                CALL 0x0040a380
005248c3  0f57c0                    XORPS XMM0,XMM0
005248c6  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
005248cd  0f97c0                    SETA AL
005248d0  888748010000              MOV byte ptr [EDI + 0x148],AL
005248d6  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
005248dc  83f8ff                    CMP EAX,-0x1
005248df  0f84d1000000              JZ 0x005249b6
005248e5  51                        PUSH ECX
005248e6  57                        PUSH EDI
005248e7  50                        PUSH EAX
005248e8  6a09                      PUSH 0x9
005248ea  e821184300                CALL 0x00956110
005248ef  84c0                      TEST AL,AL
005248f1  0f840ffbffff              JZ 0x00524406
005248f7  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
005248fd  8bcf                      MOV ECX,EDI
005248ff  50                        PUSH EAX
00524900  e82b441b00                CALL 0x006d8d30
00524905  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
0052490d  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00524914  9f                        LAHF
00524915  f6c444                    TEST AH,0x44
00524918  7a19                      JP 0x00524933
0052491a  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00524922  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00524929  9f                        LAHF
0052492a  f6c444                    TEST AH,0x44
0052492d  0f8bd3faffff              JNP 0x00524406
00524933  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
00524939  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052493f  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
00524945  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0052494b  e830be2c00                CALL 0x007f0780
00524950  85c0                      TEST EAX,EAX
00524952  0f85aefaffff              JNZ 0x00524406
00524958  f30f1015a0a9ba00          MOVSS XMM2,dword ptr [0x00baa9a0]
00524960  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
00524966  83ec08                    SUB ESP,0x8
00524969  8bcf                      MOV ECX,EDI
0052496b  50                        PUSH EAX
0052496c  e8cf4d1900                CALL 0x006b9740
00524971  84c0                      TEST AL,AL
00524973  0f858dfaffff              JNZ 0x00524406
00524979  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
00524981  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0052498b  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00524993  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0052499b  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005249a3  5f                        POP EDI
005249a4  5e                        POP ESI
005249a5  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005249a8  33cd                      XOR ECX,EBP
005249aa  e87ca75c00                CALL 0x00aef12b
005249af  8be5                      MOV ESP,EBP
005249b1  5d                        POP EBP
005249b2  8be3                      MOV ESP,EBX
005249b4  5b                        POP EBX
005249b5  c3                        RET
005249b6  e8a5a51c00                CALL 0x006eef60
005249bb  33d2                      XOR EDX,EDX
005249bd  b91e000000                MOV ECX,0x1e
005249c2  f7f1                      DIV ECX
005249c4  85d2                      TEST EDX,EDX
005249c6  0f853afaffff              JNZ 0x00524406
005249cc  3897400b0000              CMP byte ptr [EDI + 0xb40],DL
005249d2  0f852efaffff              JNZ 0x00524406
005249d8  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005249db  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
005249e5  33cd                      XOR ECX,EBP
005249e7  5f                        POP EDI
005249e8  5e                        POP ESI
005249e9  e83da75c00                CALL 0x00aef12b
005249ee  8be5                      MOV ESP,EBP
005249f0  5d                        POP EBP
005249f1  8be3                      MOV ESP,EBX
005249f3  5b                        POP EBX
005249f4  c3                        RET
