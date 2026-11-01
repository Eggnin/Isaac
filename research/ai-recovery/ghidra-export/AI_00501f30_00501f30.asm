; J460 NPC AI 0x00501f30 AI_00501f30
; types=822
; identities=822.0.0
; entry=00501f30
00501f30  53                        PUSH EBX
00501f31  8bdc                      MOV EBX,ESP
00501f33  83ec08                    SUB ESP,0x8
00501f36  83e4f8                    AND ESP,0xfffffff8
00501f39  83c404                    ADD ESP,0x4
00501f3c  55                        PUSH EBP
00501f3d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00501f40  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00501f44  8bec                      MOV EBP,ESP
00501f46  6aff                      PUSH -0x1
00501f48  68f540af00                PUSH 0xaf40f5
00501f4d  64a100000000              MOV EAX,FS:[0x0]
00501f53  50                        PUSH EAX
00501f54  53                        PUSH EBX
00501f55  81ecb0010000              SUB ESP,0x1b0
00501f5b  a1b493bf00                MOV EAX,[0x00bf93b4]
00501f60  33c5                      XOR EAX,EBP
00501f62  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00501f65  56                        PUSH ESI
00501f66  57                        PUSH EDI
00501f67  50                        PUSH EAX
00501f68  8d45f4                    LEA EAX,[EBP + -0xc]
00501f6b  64a300000000              MOV FS:[0x0],EAX
00501f71  8bf9                      MOV EDI,ECX
00501f73  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00501f79  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00501f81  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
00501f89  83f810                    CMP EAX,0x10
00501f8c  0f8746060000              JA 0x005025d8
00501f92  0fb68060295000            MOVZX EAX,byte ptr [EAX + 0x502960]
00501f99  ff24854c295000            JMP dword ptr [EAX*0x4 + 0x50294c]
00501fa0  6a00                      PUSH 0x0
00501fa2  685cffb500                PUSH 0xb5ff5c
00501fa7  8d4f48                    LEA ECX,[EDI + 0x48]
00501faa  e89189f0ff                CALL 0x0040a940
00501faf  6a01                      PUSH 0x1
00501fb1  6818ddb100                PUSH 0xb1dd18
00501fb6  8d4f48                    LEA ECX,[EDI + 0x48]
00501fb9  e81286f0ff                CALL 0x0040a5d0
00501fbe  84c0                      TEST AL,AL
00501fc0  7420                      JZ 0x00501fe2
00501fc2  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00501fc5  85c0                      TEST EAX,EAX
00501fc7  7419                      JZ 0x00501fe2
00501fc9  8d4f78                    LEA ECX,[EDI + 0x78]
00501fcc  0f57c9                    XORPS XMM1,XMM1
00501fcf  e82c6ef0ff                CALL 0x00408e00
00501fd4  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00501fd7  85c0                      TEST EAX,EAX
00501fd9  7407                      JZ 0x00501fe2
00501fdb  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
00501fe2  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00501fec  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00501ff6  e865cf1e00                CALL 0x006eef60
00501ffb  660f6ec0                  MOVD XMM0,EAX
00501fff  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00502003  c1e81f                    SHR EAX,0x1f
00502006  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050200f  660f5ac0                  CVTPD2PS XMM0,XMM0
00502013  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050201b  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
00502023  f30f5805a4a7ba00          ADDSS XMM0,dword ptr [0x00baa7a4]
0050202b  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00502033  e9a0050000                JMP 0x005025d8
00502038  6a00                      PUSH 0x0
0050203a  51                        PUSH ECX
0050203b  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
00502041  c7042400000000            MOV dword ptr [ESP],0x0
00502048  50                        PUSH EAX
00502049  e8f2cb1b00                CALL 0x006bec40
0050204e  50                        PUSH EAX
0050204f  8d8f14040000              LEA ECX,[EDI + 0x414]
00502055  e8e6282e00                CALL 0x007e4940
0050205a  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
00502061  7e46                      JLE 0x005020a9
00502063  a17816c700                MOV EAX,[0x00c71678]
00502068  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0050206e  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00502074  83f80a                    CMP EAX,0xa
00502077  7e30                      JLE 0x005020a9
00502079  e8e2ce1e00                CALL 0x006eef60
0050207e  b964000000                MOV ECX,0x64
00502083  33d2                      XOR EDX,EDX
00502085  f7f1                      DIV ECX
00502087  51                        PUSH ECX
00502088  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050208f  6a00                      PUSH 0x0
00502091  8d422d                    LEA EAX,[EDX + 0x2d]
00502094  50                        PUSH EAX
00502095  51                        PUSH ECX
00502096  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050209d  8bcf                      MOV ECX,EDI
0050209f  688f000000                PUSH 0x8f
005020a4  e8f74a1d00                CALL 0x006d6ba0
005020a9  a118ddb100                MOV EAX,[0x00b1dd18]
005020ae  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
005020b4  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
005020bb  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
005020c2  8945bc                    MOV dword ptr [EBP + -0x44],EAX
005020c5  894dc0                    MOV dword ptr [EBP + -0x40],ECX
005020c8  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
005020cc  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
005020d3  a130ddb100                MOV EAX,[0x00b1dd30]
005020d8  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
005020de  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
005020e5  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
005020ec  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
005020ef  894dd8                    MOV dword ptr [EBP + -0x28],ECX
005020f2  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
005020f6  51                        PUSH ECX
005020f7  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
005020fb  8d45bc                    LEA EAX,[EBP + -0x44]
005020fe  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00502105  8bcf                      MOV ECX,EDI
00502107  50                        PUSH EAX
00502108  8d45d4                    LEA EAX,[EBP + -0x2c]
0050210b  50                        PUSH EAX
0050210c  e81ff21b00                CALL 0x006c1330
00502111  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00502115  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00502118  83fa10                    CMP EDX,0x10
0050211b  7228                      JC 0x00502145
0050211d  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00502120  42                        INC EDX
00502121  8bc1                      MOV EAX,ECX
00502123  81fa00100000              CMP EDX,0x1000
00502129  7210                      JC 0x0050213b
0050212b  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050212e  83c223                    ADD EDX,0x23
00502131  2bc1                      SUB EAX,ECX
00502133  83c0fc                    ADD EAX,-0x4
00502136  83f81f                    CMP EAX,0x1f
00502139  7749                      JA 0x00502184
0050213b  52                        PUSH EDX
0050213c  51                        PUSH ECX
0050213d  e81ad05e00                CALL 0x00aef15c
00502142  83c408                    ADD ESP,0x8
00502145  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0050214c  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0050214f  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00502156  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050215d  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00502161  83fa10                    CMP EDX,0x10
00502164  722e                      JC 0x00502194
00502166  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00502169  42                        INC EDX
0050216a  8bc1                      MOV EAX,ECX
0050216c  81fa00100000              CMP EDX,0x1000
00502172  7216                      JC 0x0050218a
00502174  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00502177  83c223                    ADD EDX,0x23
0050217a  2bc1                      SUB EAX,ECX
0050217c  83c0fc                    ADD EAX,-0x4
0050217f  83f81f                    CMP EAX,0x1f
00502182  7606                      JBE 0x0050218a
00502184  ff159488b100              CALL dword ptr [0x00b18894]
0050218a  52                        PUSH EDX
0050218b  51                        PUSH ECX
0050218c  e8cbcf5e00                CALL 0x00aef15c
00502191  83c408                    ADD ESP,0x8
00502194  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00502198  7446                      JZ 0x005021e0
0050219a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005021a1  743d                      JZ 0x005021e0
005021a3  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
005021ab  8d7748                    LEA ESI,[EDI + 0x48]
005021ae  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
005021b6  b94c0cb600                MOV ECX,0xb60c4c
005021bb  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
005021c2  b87c08b600                MOV EAX,0xb6087c
005021c7  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
005021ce  0f2fd1                    COMISS XMM2,XMM1
005021d1  6a00                      PUSH 0x0
005021d3  0f46c1                    CMOVBE EAX,ECX
005021d6  8bce                      MOV ECX,ESI
005021d8  50                        PUSH EAX
005021d9  e86287f0ff                CALL 0x0040a940
005021de  eb26                      JMP 0x00502206
005021e0  6a01                      PUSH 0x1
005021e2  8d7748                    LEA ESI,[EDI + 0x48]
005021e5  684c0cb600                PUSH 0xb60c4c
005021ea  8bce                      MOV ECX,ESI
005021ec  e8ff88f0ff                CALL 0x0040aaf0
005021f1  84c0                      TEST AL,AL
005021f3  7411                      JZ 0x00502206
005021f5  837e5400                  CMP dword ptr [ESI + 0x54],0x0
005021f9  740b                      JZ 0x00502206
005021fb  8d4e50                    LEA ECX,[ESI + 0x50]
005021fe  0f57c9                    XORPS XMM1,XMM1
00502201  e8fa6bf0ff                CALL 0x00408e00
00502206  a17816c700                MOV EAX,[0x00c71678]
0050220b  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00502211  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00502217  83f81e                    CMP EAX,0x1e
0050221a  7e3e                      JLE 0x0050225a
0050221c  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
00502223  7e35                      JLE 0x0050225a
00502225  0f57c0                    XORPS XMM0,XMM0
00502228  0f2f87b00b0000            COMISS XMM0,dword ptr [EDI + 0xbb0]
0050222f  7229                      JC 0x0050225a
00502231  e82acd1e00                CALL 0x006eef60
00502236  33d2                      XOR EDX,EDX
00502238  b914000000                MOV ECX,0x14
0050223d  f7f1                      DIV ECX
0050223f  85d2                      TEST EDX,EDX
00502241  7517                      JNZ 0x0050225a
00502243  52                        PUSH EDX
00502244  68300cb600                PUSH 0xb60c30
00502249  8bce                      MOV ECX,ESI
0050224b  e8f086f0ff                CALL 0x0040a940
00502250  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0050225a  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00502262  0f57c9                    XORPS XMM1,XMM1
00502265  0f2fc1                    COMISS XMM0,XMM1
00502268  7632                      JBE 0x0050229c
0050226a  f30f5c05b4a0ba00          SUBSS XMM0,dword ptr [0x00baa0b4]
00502272  f30f105714                MOVSS XMM2,dword ptr [EDI + 0x14]
00502277  0f2fd1                    COMISS XMM2,XMM1
0050227a  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00502282  7618                      JBE 0x0050229c
00502284  f30f5e1530a7ba00          DIVSS XMM2,dword ptr [0x00baa730]
0050228c  f30f5cc2                  SUBSS XMM0,XMM2
00502290  f30f5fc1                  MAXSS XMM0,XMM1
00502294  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0050229c  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005022a4  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005022ac  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005022b4  e91f030000                JMP 0x005025d8
005022b9  a118ddb100                MOV EAX,[0x00b1dd18]
005022be  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
005022c4  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
005022cb  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
005022d2  8945bc                    MOV dword ptr [EBP + -0x44],EAX
005022d5  894dc0                    MOV dword ptr [EBP + -0x40],ECX
005022d8  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
005022dc  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
005022e3  a130ddb100                MOV EAX,[0x00b1dd30]
005022e8  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
005022ee  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
005022f5  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
005022fc  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
005022ff  894dd8                    MOV dword ptr [EBP + -0x28],ECX
00502302  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
00502306  51                        PUSH ECX
00502307  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
0050230b  8d45bc                    LEA EAX,[EBP + -0x44]
0050230e  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00502315  8bcf                      MOV ECX,EDI
00502317  50                        PUSH EAX
00502318  8d45d4                    LEA EAX,[EBP + -0x2c]
0050231b  50                        PUSH EAX
0050231c  e80ff01b00                CALL 0x006c1330
00502321  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
00502325  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00502328  83fa10                    CMP EDX,0x10
0050232b  7228                      JC 0x00502355
0050232d  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00502330  42                        INC EDX
00502331  8bc1                      MOV EAX,ECX
00502333  81fa00100000              CMP EDX,0x1000
00502339  7210                      JC 0x0050234b
0050233b  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050233e  83c223                    ADD EDX,0x23
00502341  2bc1                      SUB EAX,ECX
00502343  83c0fc                    ADD EAX,-0x4
00502346  83f81f                    CMP EAX,0x1f
00502349  7749                      JA 0x00502394
0050234b  52                        PUSH EDX
0050234c  51                        PUSH ECX
0050234d  e80ace5e00                CALL 0x00aef15c
00502352  83c408                    ADD ESP,0x8
00502355  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0050235c  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0050235f  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00502366  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050236d  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00502371  83fa10                    CMP EDX,0x10
00502374  722e                      JC 0x005023a4
00502376  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00502379  42                        INC EDX
0050237a  8bc1                      MOV EAX,ECX
0050237c  81fa00100000              CMP EDX,0x1000
00502382  7216                      JC 0x0050239a
00502384  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00502387  83c223                    ADD EDX,0x23
0050238a  2bc1                      SUB EAX,ECX
0050238c  83c0fc                    ADD EAX,-0x4
0050238f  83f81f                    CMP EAX,0x1f
00502392  7606                      JBE 0x0050239a
00502394  ff159488b100              CALL dword ptr [0x00b18894]
0050239a  52                        PUSH EDX
0050239b  51                        PUSH ECX
0050239c  e8bbcd5e00                CALL 0x00aef15c
005023a1  83c408                    ADD ESP,0x8
005023a4  683c0cb600                PUSH 0xb60c3c
005023a9  8d8f98000000              LEA ECX,[EDI + 0x98]
005023af  e81c8af0ff                CALL 0x0040add0
005023b4  84c0                      TEST AL,AL
005023b6  0f8466010000              JZ 0x00502522
005023bc  51                        PUSH ECX
005023bd  c704240000803f            MOV dword ptr [ESP],0x3f800000
005023c4  6a00                      PUSH 0x0
005023c6  6a1e                      PUSH 0x1e
005023c8  51                        PUSH ECX
005023c9  c704240000803f            MOV dword ptr [ESP],0x3f800000
005023d0  8bcf                      MOV ECX,EDI
005023d2  68e4010000                PUSH 0x1e4
005023d7  e8c4471d00                CALL 0x006d6ba0
005023dc  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
005023e4  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
005023ec  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
005023f6  f30f118770030000          MOVSS dword ptr [EDI + 0x370],XMM0
005023fe  e91f010000                JMP 0x00502522
00502403  a118ddb100                MOV EAX,[0x00b1dd18]
00502408  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
0050240e  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00502415  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
0050241c  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0050241f  894dc0                    MOV dword ptr [EBP + -0x40],ECX
00502422  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
00502426  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
0050242d  a130ddb100                MOV EAX,[0x00b1dd30]
00502432  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00502438  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050243f  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
00502446  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00502449  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0050244c  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
00502450  51                        PUSH ECX
00502451  c645fc05                  MOV byte ptr [EBP + -0x4],0x5
00502455  8d45bc                    LEA EAX,[EBP + -0x44]
00502458  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0050245f  8bcf                      MOV ECX,EDI
00502461  50                        PUSH EAX
00502462  8d45d4                    LEA EAX,[EBP + -0x2c]
00502465  50                        PUSH EAX
00502466  e8c5ee1b00                CALL 0x006c1330
0050246b  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
0050246f  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00502472  83fa10                    CMP EDX,0x10
00502475  7228                      JC 0x0050249f
00502477  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0050247a  42                        INC EDX
0050247b  8bc1                      MOV EAX,ECX
0050247d  81fa00100000              CMP EDX,0x1000
00502483  7210                      JC 0x00502495
00502485  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00502488  83c223                    ADD EDX,0x23
0050248b  2bc1                      SUB EAX,ECX
0050248d  83c0fc                    ADD EAX,-0x4
00502490  83f81f                    CMP EAX,0x1f
00502493  7749                      JA 0x005024de
00502495  52                        PUSH EDX
00502496  51                        PUSH ECX
00502497  e8c0cc5e00                CALL 0x00aef15c
0050249c  83c408                    ADD ESP,0x8
0050249f  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005024a6  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
005024a9  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
005024b0  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
005024b7  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
005024bb  83fa10                    CMP EDX,0x10
005024be  722e                      JC 0x005024ee
005024c0  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
005024c3  42                        INC EDX
005024c4  8bc1                      MOV EAX,ECX
005024c6  81fa00100000              CMP EDX,0x1000
005024cc  7216                      JC 0x005024e4
005024ce  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005024d1  83c223                    ADD EDX,0x23
005024d4  2bc1                      SUB EAX,ECX
005024d6  83c0fc                    ADD EAX,-0x4
005024d9  83f81f                    CMP EAX,0x1f
005024dc  7606                      JBE 0x005024e4
005024de  ff159488b100              CALL dword ptr [0x00b18894]
005024e4  52                        PUSH EDX
005024e5  51                        PUSH ECX
005024e6  e871cc5e00                CALL 0x00aef15c
005024eb  83c408                    ADD ESP,0x8
005024ee  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
005024f5  8d4f48                    LEA ECX,[EDI + 0x48]
005024f8  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
005024ff  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00502506  c645bc00                  MOV byte ptr [EBP + -0x44],0x0
0050250a  7533                      JNZ 0x0050253f
0050250c  83795400                  CMP dword ptr [ECX + 0x54],0x0
00502510  7406                      JZ 0x00502518
00502512  80796400                  CMP byte ptr [ECX + 0x64],0x0
00502516  750a                      JNZ 0x00502522
00502518  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00502522  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050252a  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00502532  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050253a  e999000000                JMP 0x005025d8
0050253f  83793400                  CMP dword ptr [ECX + 0x34],0x0
00502543  7414                      JZ 0x00502559
00502545  80794400                  CMP byte ptr [ECX + 0x44],0x0
00502549  740e                      JZ 0x00502559
0050254b  6a00                      PUSH 0x0
0050254d  68740cb600                PUSH 0xb60c74
00502552  e8e983f0ff                CALL 0x0040a940
00502557  eb0c                      JMP 0x00502565
00502559  6a00                      PUSH 0x0
0050255b  68740cb600                PUSH 0xb60c74
00502560  e88b86f0ff                CALL 0x0040abf0
00502565  a17816c700                MOV EAX,[0x00c71678]
0050256a  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00502570  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00502576  a801                      TEST AL,0x1
00502578  7410                      JZ 0x0050258a
0050257a  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00502582  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
0050258a  8d4f48                    LEA ECX,[EDI + 0x48]
0050258d  6a01                      PUSH 0x1
0050258f  e88c8cf0ff                CALL 0x0040b220
00502594  f30f108564feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe64]
0050259c  51                        PUSH ECX
0050259d  c7042400000000            MOV dword ptr [ESP],0x0
005025a4  8bcf                      MOV ECX,EDI
005025a6  f30f114040                MOVSS dword ptr [EAX + 0x40],XMM0
005025ab  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
005025b1  50                        PUSH EAX
005025b2  e889c61b00                CALL 0x006bec40
005025b7  6a01                      PUSH 0x1
005025b9  6884030000                PUSH 0x384
005025be  51                        PUSH ECX
005025bf  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
005025c5  c704246666663f            MOV dword ptr [ESP],0x3f666666
005025cc  50                        PUSH EAX
005025cd  8d8f14040000              LEA ECX,[EDI + 0x414]
005025d3  e8e80d2e00                CALL 0x007e33c0
005025d8  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005025df  0f8447030000              JZ 0x0050292c
005025e5  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
005025ec  0f85f3020000              JNZ 0x005028e5
005025f2  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005025f8  8d8d64feffff              LEA ECX,[EBP + 0xfffffe64]
005025fe  c78564feffff8d000000      MOV dword ptr [EBP + 0xfffffe64],0x8d
00502608  e873414500                CALL 0x00956780
0050260d  83ec08                    SUB ESP,0x8
00502610  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00502618  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
0050261f  6a00                      PUSH 0x0
00502621  6a02                      PUSH 0x2
00502623  51                        PUSH ECX
00502624  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050262b  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00502631  ffb564feffff              PUSH dword ptr [EBP + 0xfffffe64]
00502637  e8f4b54200                CALL 0x0092dc30
0050263c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00502642  6a06                      PUSH 0x6
00502644  e827102000                CALL 0x00703670
00502649  6a00                      PUSH 0x0
0050264b  6a00                      PUSH 0x0
0050264d  57                        PUSH EDI
0050264e  51                        PUSH ECX
0050264f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00502655  8db73c030000              LEA ESI,[EDI + 0x33c]
0050265b  c704240000f042            MOV dword ptr [ESP],0x42f00000
00502662  56                        PUSH ESI
00502663  e8f81c2000                CALL 0x00704360
00502668  6a00                      PUSH 0x0
0050266a  6a04                      PUSH 0x4
0050266c  ba03000000                MOV EDX,0x3
00502671  b9101e5000                MOV ECX,0x501e10
00502676  e885881000                CALL 0x0060af00
0050267b  8b0e                      MOV ECX,dword ptr [ESI]
0050267d  83c408                    ADD ESP,0x8
00502680  89883c030000              MOV dword ptr [EAX + 0x33c],ECX
00502686  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
00502689  898840030000              MOV dword ptr [EAX + 0x340],ECX
0050268f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00502695  6a08                      PUSH 0x8
00502697  e8d40f2000                CALL 0x00703670
0050269c  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
005026a2  e889c8f3ff                CALL 0x0043ef30
005026a7  50                        PUSH EAX
005026a8  51                        PUSH ECX
005026a9  c7042400000000            MOV dword ptr [ESP],0x0
005026b0  8bcf                      MOV ECX,EDI
005026b2  6840b6c700                PUSH 0xc7b640
005026b7  6a0c                      PUSH 0xc
005026b9  e812a71c00                CALL 0x006ccdd0
005026be  c78564feffff16000000      MOV dword ptr [EBP + 0xfffffe64],0x16
005026c8  e893c81e00                CALL 0x006eef60
005026cd  660f6ec0                  MOVD XMM0,EAX
005026d1  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005026d5  c1e81f                    SHR EAX,0x1f
005026d8  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005026e1  660f5ac0                  CVTPD2PS XMM0,XMM0
005026e5  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005026ed  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005026f5  f30f58c0                  ADDSS XMM0,XMM0
005026f9  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
00502701  e83aaef1ff                CALL 0x0041d540
00502706  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
0050270e  f30f108560feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe60]
00502716  e805aef1ff                CALL 0x0041d520
0050271b  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
00502723  e838c81e00                CALL 0x006eef60
00502728  f30f109554feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe54]
00502730  f30f109d60feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe60]
00502738  0f28c2                    MOVAPS XMM0,XMM2
0050273b  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
00502743  660f6ec8                  MOVD XMM1,EAX
00502747  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0050274b  c1e81f                    SHR EAX,0x1f
0050274e  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
00502756  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0050275f  f30f5816                  ADDSS XMM2,dword ptr [ESI]
00502763  660f5ac9                  CVTPD2PS XMM1,XMM1
00502767  f30f119558feffff          MOVSS dword ptr [EBP + 0xfffffe58],XMM2
0050276f  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00502777  f30f59c1                  MULSS XMM0,XMM1
0050277b  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
00502783  0f28c3                    MOVAPS XMM0,XMM3
00502786  f30f591d84a7ba00          MULSS XMM3,dword ptr [0x00baa784]
0050278e  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
00502796  f30f589f40030000          ADDSS XMM3,dword ptr [EDI + 0x340]
0050279e  f30f59c1                  MULSS XMM0,XMM1
005027a2  f30f119d5cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM3
005027aa  f30f118550feffff          MOVSS dword ptr [EBP + 0xfffffe50],XMM0
005027b2  e8a9c71e00                CALL 0x006eef60
005027b7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005027bd  50                        PUSH EAX
005027be  6a00                      PUSH 0x0
005027c0  57                        PUSH EDI
005027c1  8d854cfeffff              LEA EAX,[EBP + 0xfffffe4c]
005027c7  50                        PUSH EAX
005027c8  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
005027ce  50                        PUSH EAX
005027cf  6a00                      PUSH 0x0
005027d1  6a09                      PUSH 0x9
005027d3  e84863f2ff                CALL 0x00428b20
005027d8  8bf0                      MOV ESI,EAX
005027da  e881c71e00                CALL 0x006eef60
005027df  c7861404000000000000      MOV dword ptr [ESI + 0x414],0x0
005027e9  660f6ec0                  MOVD XMM0,EAX
005027ed  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005027f1  c1e81f                    SHR EAX,0x1f
005027f4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005027fd  660f5ac8                  CVTPD2PS XMM1,XMM0
00502801  f30f1005f0adba00          MOVSS XMM0,dword ptr [0x00baadf0]
00502809  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00502811  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
00502819  f30f5cc1                  SUBSS XMM0,XMM1
0050281d  f30f118610040000          MOVSS dword ptr [ESI + 0x410],XMM0
00502825  e836c71e00                CALL 0x006eef60
0050282a  660f6ec0                  MOVD XMM0,EAX
0050282e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00502832  c1e81f                    SHR EAX,0x1f
00502835  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050283e  660f5ac8                  CVTPD2PS XMM1,XMM0
00502842  f30f1005e8acba00          MOVSS XMM0,dword ptr [0x00baace8]
0050284a  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00502852  f30f590da4a0ba00          MULSS XMM1,dword ptr [0x00baa0a4]
0050285a  f30f5cc1                  SUBSS XMM0,XMM1
0050285e  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
00502866  e8f5c61e00                CALL 0x006eef60
0050286b  660f6ec0                  MOVD XMM0,EAX
0050286f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00502873  c1e81f                    SHR EAX,0x1f
00502876  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050287f  660f5ac0                  CVTPD2PS XMM0,XMM0
00502883  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050288b  f30f5905aca4ba00          MULSS XMM0,dword ptr [0x00baa4ac]
00502893  8bcf                      MOV ECX,EDI
00502895  56                        PUSH ESI
00502896  c7862c0400006666663f      MOV dword ptr [ESI + 0x42c],0x3f666666
005028a0  c7863804000000000000      MOV dword ptr [ESI + 0x438],0x0
005028aa  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
005028b2  c7863c04000020000000      MOV dword ptr [ESI + 0x43c],0x20
005028bc  f30f118620040000          MOVSS dword ptr [ESI + 0x420],XMM0
005028c4  e8d7891c00                CALL 0x006cb2a0
005028c9  8b06                      MOV EAX,dword ptr [ESI]
005028cb  8bce                      MOV ECX,ESI
005028cd  ff500c                    CALL dword ptr [EAX + 0xc]
005028d0  83ad64feffff01            SUB dword ptr [EBP + 0xfffffe64],0x1
005028d7  8db73c030000              LEA ESI,[EDI + 0x33c]
005028dd  0f85e5fdffff              JNZ 0x005026c8
005028e3  eb47                      JMP 0x0050292c
005028e5  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005028eb  2500000001                AND EAX,0x1000000
005028f0  83c800                    OR EAX,0x0
005028f3  7537                      JNZ 0x0050292c
005028f5  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
005028fb  e830c6f3ff                CALL 0x0043ef30
00502900  50                        PUSH EAX
00502901  6a07                      PUSH 0x7
00502903  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
00502909  c78544feffff00002041      MOV dword ptr [EBP + 0xfffffe44],0x41200000
00502913  50                        PUSH EAX
00502914  8d873c030000              LEA EAX,[EDI + 0x33c]
0050291a  c78548feffff00000000      MOV dword ptr [EBP + 0xfffffe48],0x0
00502924  50                        PUSH EAX
00502925  8bcf                      MOV ECX,EDI
00502927  e8b4891c00                CALL 0x006cb2e0
0050292c  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0050292f  64890d00000000            MOV dword ptr FS:[0x0],ECX
00502936  59                        POP ECX
00502937  5f                        POP EDI
00502938  5e                        POP ESI
00502939  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0050293c  33cd                      XOR ECX,EBP
0050293e  e8e8c75e00                CALL 0x00aef12b
00502943  8be5                      MOV ESP,EBP
00502945  5d                        POP EBP
00502946  8be3                      MOV ESP,EBX
00502948  5b                        POP EBX
00502949  c3                        RET
