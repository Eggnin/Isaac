; J460 NPC AI 0x00522430 AI_00522430
; types=56
; identities=56.0.0
; entry=00522430
00522430  53                        PUSH EBX
00522431  8bdc                      MOV EBX,ESP
00522433  83ec08                    SUB ESP,0x8
00522436  83e4f8                    AND ESP,0xfffffff8
00522439  83c404                    ADD ESP,0x4
0052243c  55                        PUSH EBP
0052243d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00522440  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00522444  8bec                      MOV EBP,ESP
00522446  81ec00010000              SUB ESP,0x100
0052244c  a1b493bf00                MOV EAX,[0x00bf93b4]
00522451  33c5                      XOR EAX,EBP
00522453  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00522456  56                        PUSH ESI
00522457  57                        PUSH EDI
00522458  8bf9                      MOV EDI,ECX
0052245a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00522460  85c0                      TEST EAX,EAX
00522462  7538                      JNZ 0x0052249c
00522464  c787b00b00000000b442      MOV dword ptr [EDI + 0xbb0],0x42b40000
0052246e  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00522474  898734030000              MOV dword ptr [EDI + 0x334],EAX
0052247a  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00522480  898738030000              MOV dword ptr [EDI + 0x338],EAX
00522486  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00522490  c68520ffffff01            MOV byte ptr [EBP + 0xffffff20],0x1
00522497  e9260a0000                JMP 0x00522ec2
0052249c  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005224a4  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005224ac  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
005224b2  c68527ffffff01            MOV byte ptr [EBP + 0xffffff27],0x1
005224b9  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005224c1  83f803                    CMP EAX,0x3
005224c4  757d                      JNZ 0x00522543
005224c6  6a00                      PUSH 0x0
005224c8  683cd6b100                PUSH 0xb1d63c
005224cd  8d4f48                    LEA ECX,[EDI + 0x48]
005224d0  e8ab7eeeff                CALL 0x0040a380
005224d5  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005224db  83f803                    CMP EAX,0x3
005224de  7563                      JNZ 0x00522543
005224e0  83bfc00b000024            CMP dword ptr [EDI + 0xbc0],0x24
005224e7  725a                      JC 0x00522543
005224e9  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005224f0  7435                      JZ 0x00522527
005224f2  6a09                      PUSH 0x9
005224f4  8bcf                      MOV ECX,EDI
005224f6  e8655d1b00                CALL 0x006d8260
005224fb  84c0                      TEST AL,AL
005224fd  753a                      JNZ 0x00522539
005224ff  f30f101580a2ba00          MOVSS XMM2,dword ptr [0x00baa280]
00522507  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0052250d  50                        PUSH EAX
0052250e  8bcf                      MOV ECX,EDI
00522510  e8bb5d1b00                CALL 0x006d82d0
00522515  6840b6c700                PUSH 0xc7b640
0052251a  8bc8                      MOV ECX,EAX
0052251c  e80fe14e00                CALL 0x00a10630
00522521  84c0                      TEST AL,AL
00522523  7514                      JNZ 0x00522539
00522525  eb1c                      JMP 0x00522543
00522527  e834ca1c00                CALL 0x006eef60
0052252c  33d2                      XOR EDX,EDX
0052252e  b932000000                MOV ECX,0x32
00522533  f7f1                      DIV ECX
00522535  85d2                      TEST EDX,EDX
00522537  750a                      JNZ 0x00522543
00522539  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00522543  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052254a  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00522552  7409                      JZ 0x0052255d
00522554  80bf7101000000            CMP byte ptr [EDI + 0x171],0x0
0052255b  747f                      JZ 0x005225dc
0052255d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00522565  f30f5cc1                  SUBSS XMM0,XMM1
00522569  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00522571  a17816c700                MOV EAX,[0x00c71678]
00522576  f30f5ec1                  DIVSS XMM0,XMM1
0052257a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00522580  f30f58c2                  ADDSS XMM0,XMM2
00522584  f30f2cd0                  CVTTSS2SI EDX,XMM0
00522588  85d2                      TEST EDX,EDX
0052258a  7850                      JS 0x005225dc
0052258c  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
0052258f  3bd6                      CMP EDX,ESI
00522591  7d49                      JGE 0x005225dc
00522593  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0052259b  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
005225a3  f30f5ec1                  DIVSS XMM0,XMM1
005225a7  f30f58c2                  ADDSS XMM0,XMM2
005225ab  f30f2cc0                  CVTTSS2SI EAX,XMM0
005225af  85c0                      TEST EAX,EAX
005225b1  7829                      JS 0x005225dc
005225b3  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
005225b6  7d24                      JGE 0x005225dc
005225b8  0fafc6                    IMUL EAX,ESI
005225bb  03c2                      ADD EAX,EDX
005225bd  3dbf010000                CMP EAX,0x1bf
005225c2  7718                      JA 0x005225dc
005225c4  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
005225cf  7f0b                      JG 0x005225dc
005225d1  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
005225dc  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005225e3  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
005225eb  7431                      JZ 0x0052261e
005225ed  f30f109fb00b0000          MOVSS XMM3,dword ptr [EDI + 0xbb0]
005225f5  0f2fd8                    COMISS XMM3,XMM0
005225f8  7215                      JC 0x0052260f
005225fa  80bff50e000000            CMP byte ptr [EDI + 0xef5],0x0
00522601  741b                      JZ 0x0052261e
00522603  c787a00e000000000000      MOV dword ptr [EDI + 0xea0],0x0
0052260d  eb0f                      JMP 0x0052261e
0052260f  6a01                      PUSH 0x1
00522611  0f28d0                    MOVAPS XMM2,XMM0
00522614  0f57c9                    XORPS XMM1,XMM1
00522617  8bcf                      MOV ECX,EDI
00522619  e822681b00                CALL 0x006d8e40
0052261e  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
00522624  85d2                      TEST EDX,EDX
00522626  7e22                      JLE 0x0052264a
00522628  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00522630  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00522638  2bc8                      SUB ECX,EAX
0052263a  03d1                      ADD EDX,ECX
0052263c  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00522642  85d2                      TEST EDX,EDX
00522644  0f8ffb000000              JG 0x00522745
0052264a  f30f100decaaba00          MOVSS XMM1,dword ptr [0x00baaaec]
00522652  8bcf                      MOV ECX,EDI
00522654  6a07                      PUSH 0x7
00522656  6a00                      PUSH 0x0
00522658  e803881a00                CALL 0x006cae60
0052265d  84c0                      TEST AL,AL
0052265f  0f84e0000000              JZ 0x00522745
00522665  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052266c  740d                      JZ 0x0052267b
0052266e  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
00522675  0f85ca000000              JNZ 0x00522745
0052267b  6a00                      PUSH 0x0
0052267d  687cd4b100                PUSH 0xb1d47c
00522682  8d4f48                    LEA ECX,[EDI + 0x48]
00522685  e8f67ceeff                CALL 0x0040a380
0052268a  8bcf                      MOV ECX,EDI
0052268c  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
00522693  e8a8c11900                CALL 0x006be840
00522698  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052269f  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
005226a7  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005226af  f30f118d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM1
005226b7  751a                      JNZ 0x005226d3
005226b9  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005226c1  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
005226c9  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005226d1  eb36                      JMP 0x00522709
005226d3  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
005226db  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
005226e1  50                        PUSH EAX
005226e2  8bcf                      MOV ECX,EDI
005226e4  e8b75e1b00                CALL 0x006d85a0
005226e9  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
005226f1  f30f108d20ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff20]
005226f9  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
00522701  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
00522709  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
00522711  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00522718  7408                      JZ 0x00522722
0052271a  f30f108f200f0000          MOVSS XMM1,dword ptr [EDI + 0xf20]
00522722  0f57c0                    XORPS XMM0,XMM0
00522725  0f2fc8                    COMISS XMM1,XMM0
00522728  0f97c0                    SETA AL
0052272b  888748010000              MOV byte ptr [EDI + 0x148],AL
00522731  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0052273b  c787a00b00003f000000      MOV dword ptr [EDI + 0xba0],0x3f
00522745  8d8f14040000              LEA ECX,[EDI + 0x414]
0052274b  e8a0482c00                CALL 0x007e6ff0
00522750  80bf7101000000            CMP byte ptr [EDI + 0x171],0x0
00522757  7427                      JZ 0x00522780
00522759  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00522761  0f57c9                    XORPS XMM1,XMM1
00522764  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
0052276c  f30f5fc1                  MAXSS XMM0,XMM1
00522770  f30f5d05b4a9ba00          MINSS XMM0,dword ptr [0x00baa9b4]
00522778  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00522780  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
00522787  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0052278f  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00522797  0f85ed030000              JNZ 0x00522b8a
0052279d  6a00                      PUSH 0x0
0052279f  8d7748                    LEA ESI,[EDI + 0x48]
005227a2  68b0d5b100                PUSH 0xb1d5b0
005227a7  8bce                      MOV ECX,ESI
005227a9  e8d27beeff                CALL 0x0040a380
005227ae  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005227b2  740d                      JZ 0x005227c1
005227b4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005227bb  0f8580010000              JNZ 0x00522941
005227c1  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005227c8  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
005227cf  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005227d9  0f856f010000              JNZ 0x0052294e
005227df  51                        PUSH ECX
005227e0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005227e6  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
005227ec  c704240000a041            MOV dword ptr [ESP],0x41a00000
005227f3  50                        PUSH EAX
005227f4  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
005227fa  e8d1c12f00                CALL 0x0081e9d0
005227ff  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00522805  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0052280b  50                        PUSH EAX
0052280c  e83f111e00                CALL 0x00703950
00522811  f30f108d1cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff1c]
00522819  f30f109520ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff20]
00522821  f30f10257ca8ba00          MOVSS XMM4,dword ptr [0x00baa87c]
00522829  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
00522831  f30f5c9040030000          SUBSS XMM2,dword ptr [EAX + 0x340]
00522839  0f28c1                    MOVAPS XMM0,XMM1
0052283c  0f28da                    MOVAPS XMM3,XMM2
0052283f  f30f59c1                  MULSS XMM0,XMM1
00522843  f30f59da                  MULSS XMM3,XMM2
00522847  f30f58d8                  ADDSS XMM3,XMM0
0052284b  f30f100540cbba00          MOVSS XMM0,dword ptr [0x00bacb40]
00522853  0f54c8                    ANDPS XMM1,XMM0
00522856  0f2fe1                    COMISS XMM4,XMM1
00522859  7708                      JA 0x00522863
0052285b  0f54d0                    ANDPS XMM2,XMM0
0052285e  0f2fe2                    COMISS XMM4,XMM2
00522861  760d                      JBE 0x00522870
00522863  f30f10058cacba00          MOVSS XMM0,dword ptr [0x00baac8c]
0052286b  0f2fc3                    COMISS XMM0,XMM3
0052286e  777b                      JA 0x005228eb
00522870  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
00522878  0f2fc3                    COMISS XMM0,XMM3
0052287b  776e                      JA 0x005228eb
0052287d  a17816c700                MOV EAX,[0x00c71678]
00522882  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00522888  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0052288e  50                        PUSH EAX
0052288f  8bce                      MOV ECX,ESI
00522891  e84a052f00                CALL 0x00812de0
00522896  3dbf010000                CMP EAX,0x1bf
0052289b  770d                      JA 0x005228aa
0052289d  81bc866c070000f4010000    CMP dword ptr [ESI + EAX*0x4 + 0x76c],0x1f4
005228a8  7d3e                      JGE 0x005228e8
005228aa  99                        CDQ
005228ab  f77e0c                    IDIV dword ptr [ESI + 0xc]
005228ae  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
005228b6  660f6eca                  MOVD XMM1,EDX
005228ba  660f6ec0                  MOVD XMM0,EAX
005228be  0f5bc9                    CVTDQ2PS XMM1,XMM1
005228c1  0f5bc0                    CVTDQ2PS XMM0,XMM0
005228c4  f30f59ca                  MULSS XMM1,XMM2
005228c8  f30f59c2                  MULSS XMM0,XMM2
005228cc  f30f58ca                  ADDSS XMM1,XMM2
005228d0  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
005228d8  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
005228e0  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005228e8  8d7748                    LEA ESI,[EDI + 0x48]
005228eb  e870c61c00                CALL 0x006eef60
005228f0  33d2                      XOR EDX,EDX
005228f2  b914000000                MOV ECX,0x14
005228f7  f7f1                      DIV ECX
005228f9  85d2                      TEST EDX,EDX
005228fb  7544                      JNZ 0x00522941
005228fd  52                        PUSH EDX
005228fe  6898d5b100                PUSH 0xb1d598
00522903  8bce                      MOV ECX,ESI
00522905  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0052290f  e86c7aeeff                CALL 0x0040a380
00522914  6a01                      PUSH 0x1
00522916  8bcf                      MOV ECX,EDI
00522918  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
0052291f  e88cdb1900                CALL 0x006c04b0
00522924  83bfa00b00000c            CMP dword ptr [EDI + 0xba0],0xc
0052292b  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00522935  7d0a                      JGE 0x00522941
00522937  c787a00b00000c000000      MOV dword ptr [EDI + 0xba0],0xc
00522941  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00522948  0f8446020000              JZ 0x00522b94
0052294e  80bf7101000000            CMP byte ptr [EDI + 0x171],0x0
00522955  7440                      JZ 0x00522997
00522957  684cd8b100                PUSH 0xb1d84c
0052295c  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
00522962  8bcf                      MOV ECX,EDI
00522964  50                        PUSH EAX
00522965  e886411900                CALL 0x006b6af0
0052296a  8bc8                      MOV ECX,EAX
0052296c  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00522970  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00522977  9f                        LAHF
00522978  f6c444                    TEST AH,0x44
0052297b  0f8a13020000              JP 0x00522b94
00522981  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00522986  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0052298d  9f                        LAHF
0052298e  f6c444                    TEST AH,0x44
00522991  0f8afd010000              JP 0x00522b94
00522997  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
0052299f  8bcf                      MOV ECX,EDI
005229a1  6a02                      PUSH 0x2
005229a3  e878611b00                CALL 0x006d8b20
005229a8  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
005229b0  f30f5c8f9c030000          SUBSS XMM1,dword ptr [EDI + 0x39c]
005229b8  f30f100514aeba00          MOVSS XMM0,dword ptr [0x00baae14]
005229c0  0f2fc1                    COMISS XMM0,XMM1
005229c3  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
005229cb  0f8287000000              JC 0x00522a58
005229d1  8d4dd4                    LEA ECX,[EBP + -0x2c]
005229d4  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
005229de  e88d32f1ff                CALL 0x00435c70
005229e3  8b17                      MOV EDX,dword ptr [EDI]
005229e5  6a1e                      PUSH 0x1e
005229e7  50                        PUSH EAX
005229e8  6a00                      PUSH 0x0
005229ea  6a00                      PUSH 0x0
005229ec  51                        PUSH ECX
005229ed  8bcf                      MOV ECX,EDI
005229ef  c704240000a040            MOV dword ptr [ESP],0x40a00000
005229f6  ff5220                    CALL dword ptr [EDX + 0x20]
005229f9  8d4dd0                    LEA ECX,[EBP + -0x30]
005229fc  e86f47eeff                CALL 0x00407170
00522a01  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
00522a09  ba01000000                MOV EDX,0x1
00522a0e  51                        PUSH ECX
00522a0f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00522a16  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00522a1c  6840b6c700                PUSH 0xc7b640
00522a21  50                        PUSH EAX
00522a22  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00522a28  c78520ffffff01000000      MOV dword ptr [EBP + 0xffffff20],0x1
00522a32  57                        PUSH EDI
00522a33  50                        PUSH EAX
00522a34  e877071900                CALL 0x006b31b0
00522a39  83c410                    ADD ESP,0x10
00522a3c  c7042400000040            MOV dword ptr [ESP],0x40000000
00522a43  6a00                      PUSH 0x0
00522a45  6a02                      PUSH 0x2
00522a47  51                        PUSH ECX
00522a48  c704240000003f            MOV dword ptr [ESP],0x3f000000
00522a4f  8bcf                      MOV ECX,EDI
00522a51  6a4d                      PUSH 0x4d
00522a53  e848411b00                CALL 0x006d6ba0
00522a58  6a01                      PUSH 0x1
00522a5a  6a00                      PUSH 0x0
00522a5c  51                        PUSH ECX
00522a5d  c7042400004040            MOV dword ptr [ESP],0x40400000
00522a64  8d8f14040000              LEA ECX,[EDI + 0x414]
00522a6a  6840b6c700                PUSH 0xc7b640
00522a6f  e84c092c00                CALL 0x007e33c0
00522a74  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00522a7a  c68527ffffff00            MOV byte ptr [EBP + 0xffffff27],0x0
00522a81  83f8ff                    CMP EAX,-0x1
00522a84  740e                      JZ 0x00522a94
00522a86  51                        PUSH ECX
00522a87  57                        PUSH EDI
00522a88  50                        PUSH EAX
00522a89  6a09                      PUSH 0x9
00522a8b  e880364300                CALL 0x00956110
00522a90  84c0                      TEST AL,AL
00522a92  751b                      JNZ 0x00522aaf
00522a94  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00522a9c  8bcf                      MOV ECX,EDI
00522a9e  6a07                      PUSH 0x7
00522aa0  6a00                      PUSH 0x0
00522aa2  e8b9831a00                CALL 0x006cae60
00522aa7  84c0                      TEST AL,AL
00522aa9  0f84af000000              JZ 0x00522b5e
00522aaf  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00522ab7  8db73c030000              LEA ESI,[EDI + 0x33c]
00522abd  a17816c700                MOV EAX,[0x00c71678]
00522ac2  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
00522aca  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00522acf  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00522ad7  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
00522add  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00522ae3  8bc8                      MOV ECX,EAX
00522ae5  ffb510ffffff              PUSH dword ptr [EBP + 0xffffff10]
00522aeb  898520ffffff              MOV dword ptr [EBP + 0xffffff20],EAX
00522af1  e88adc2c00                CALL 0x007f0780
00522af6  85c0                      TEST EAX,EAX
00522af8  7564                      JNZ 0x00522b5e
00522afa  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
00522b00  56                        PUSH ESI
00522b01  e80a012f00                CALL 0x00812c10
00522b06  3d84030000                CMP EAX,0x384
00522b0b  7d51                      JGE 0x00522b5e
00522b0d  f30f101550a9ba00          MOVSS XMM2,dword ptr [0x00baa950]
00522b15  83ec08                    SUB ESP,0x8
00522b18  8bcf                      MOV ECX,EDI
00522b1a  56                        PUSH ESI
00522b1b  e8206c1900                CALL 0x006b9740
00522b20  84c0                      TEST AL,AL
00522b22  753a                      JNZ 0x00522b5e
00522b24  8b06                      MOV EAX,dword ptr [ESI]
00522b26  8d4f48                    LEA ECX,[EDI + 0x48]
00522b29  898734030000              MOV dword ptr [EDI + 0x334],EAX
00522b2f  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00522b32  6a00                      PUSH 0x0
00522b34  898738030000              MOV dword ptr [EDI + 0x338],EAX
00522b3a  6898d5b100                PUSH 0xb1d598
00522b3f  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00522b49  e83278eeff                CALL 0x0040a380
00522b4e  6a01                      PUSH 0x1
00522b50  8bcf                      MOV ECX,EDI
00522b52  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
00522b59  e852d91900                CALL 0x006c04b0
00522b5e  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
00522b66  0f28c1                    MOVAPS XMM0,XMM1
00522b69  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00522b70  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
00522b77  761b                      JBE 0x00522b94
00522b79  0f57c0                    XORPS XMM0,XMM0
00522b7c  0f2fc8                    COMISS XMM1,XMM0
00522b7f  0f97c0                    SETA AL
00522b82  888748010000              MOV byte ptr [EDI + 0x148],AL
00522b88  eb0a                      JMP 0x00522b94
00522b8a  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00522b94  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00522b98  0f849f000000              JZ 0x00522c3d
00522b9e  68d4d2b100                PUSH 0xb1d2d4
00522ba3  8d4f78                    LEA ECX,[EDI + 0x78]
00522ba6  e82582eeff                CALL 0x0040add0
00522bab  84c0                      TEST AL,AL
00522bad  0f848a000000              JZ 0x00522c3d
00522bb3  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00522bbb  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00522bc1  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00522bc9  83f812                    CMP EAX,0x12
00522bcc  750a                      JNZ 0x00522bd8
00522bce  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00522bd6  eb0d                      JMP 0x00522be5
00522bd8  83f813                    CMP EAX,0x13
00522bdb  7510                      JNZ 0x00522bed
00522bdd  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00522be5  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00522bed  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00522bf3  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00522bf9  c78520ffffff48000000      MOV dword ptr [EBP + 0xffffff20],0x48
00522c03  e8783b4300                CALL 0x00956780
00522c08  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
00522c10  83ec08                    SUB ESP,0x8
00522c13  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00522c1b  f30f110424                MOVSS dword ptr [ESP],XMM0
00522c20  6a00                      PUSH 0x0
00522c22  6a02                      PUSH 0x2
00522c24  51                        PUSH ECX
00522c25  c704240000803f            MOV dword ptr [ESP],0x3f800000
00522c2c  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00522c32  ffb520ffffff              PUSH dword ptr [EBP + 0xffffff20]
00522c38  e8f3af4000                CALL 0x0092dc30
00522c3d  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
00522c44  7520                      JNZ 0x00522c66
00522c46  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00522c4a  7411                      JZ 0x00522c5d
00522c4c  68dcd2b100                PUSH 0xb1d2dc
00522c51  8d4f78                    LEA ECX,[EDI + 0x78]
00522c54  e81782eeff                CALL 0x0040ae70
00522c59  84c0                      TEST AL,AL
00522c5b  7509                      JNZ 0x00522c66
00522c5d  6a00                      PUSH 0x0
00522c5f  8bcf                      MOV ECX,EDI
00522c61  e8ea631b00                CALL 0x006d9050
00522c66  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00522c6d  743e                      JZ 0x00522cad
00522c6f  83bf640b000006            CMP dword ptr [EDI + 0xb64],0x6
00522c76  7535                      JNZ 0x00522cad
00522c78  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00522c7c  0f84d2010000              JZ 0x00522e54
00522c82  68dcd2b100                PUSH 0xb1d2dc
00522c87  8d4f78                    LEA ECX,[EDI + 0x78]
00522c8a  e8e181eeff                CALL 0x0040ae70
00522c8f  84c0                      TEST AL,AL
00522c91  741a                      JZ 0x00522cad
00522c93  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00522c97  0f84b7010000              JZ 0x00522e54
00522c9d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00522ca0  8d4f78                    LEA ECX,[EDI + 0x78]
00522ca3  8b4030                    MOV EAX,dword ptr [EAX + 0x30]
00522ca6  48                        DEC EAX
00522ca7  50                        PUSH EAX
00522ca8  e85360eeff                CALL 0x00408d00
00522cad  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00522cb1  0f849d010000              JZ 0x00522e54
00522cb7  68dcd2b100                PUSH 0xb1d2dc
00522cbc  8d4f78                    LEA ECX,[EDI + 0x78]
00522cbf  e80c81eeff                CALL 0x0040add0
00522cc4  84c0                      TEST AL,AL
00522cc6  0f8479010000              JZ 0x00522e45
00522ccc  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00522cd2  83f812                    CMP EAX,0x12
00522cd5  750a                      JNZ 0x00522ce1
00522cd7  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00522cdf  eb0d                      JMP 0x00522cee
00522ce1  83f813                    CMP EAX,0x13
00522ce4  7510                      JNZ 0x00522cf6
00522ce6  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00522cee  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00522cf6  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00522cfc  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00522d02  c78520ffffffe2000000      MOV dword ptr [EBP + 0xffffff20],0xe2
00522d0c  e86f3a4300                CALL 0x00956780
00522d11  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
00522d19  83ec08                    SUB ESP,0x8
00522d1c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00522d24  f30f110424                MOVSS dword ptr [ESP],XMM0
00522d29  6a00                      PUSH 0x0
00522d2b  6a02                      PUSH 0x2
00522d2d  51                        PUSH ECX
00522d2e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00522d35  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00522d3b  ffb520ffffff              PUSH dword ptr [EBP + 0xffffff20]
00522d41  e8eaae4000                CALL 0x0092dc30
00522d46  8bcf                      MOV ECX,EDI
00522d48  e8f3ba1900                CALL 0x006be840
00522d4d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00522d54  8db73c030000              LEA ESI,[EDI + 0x33c]
00522d5a  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00522d62  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
00522d6a  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
00522d6e  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
00522d73  f30f118d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM1
00522d7b  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
00522d83  f30f11950cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM2
00522d8b  f30f119514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM2
00522d93  7430                      JZ 0x00522dc5
00522d95  f30f108f200f0000          MOVSS XMM1,dword ptr [EDI + 0xf20]
00522d9d  f30f1097240f0000          MOVSS XMM2,dword ptr [EDI + 0xf24]
00522da5  f30f118d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM1
00522dad  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
00522db5  f30f11950cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM2
00522dbd  f30f119514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM2
00522dc5  0f28c1                    MOVAPS XMM0,XMM1
00522dc8  f30f59c1                  MULSS XMM0,XMM1
00522dcc  0f28ca                    MOVAPS XMM1,XMM2
00522dcf  f30f59ca                  MULSS XMM1,XMM2
00522dd3  f30f58c1                  ADDSS XMM0,XMM1
00522dd7  e8742cf1ff                CALL 0x00435a50
00522ddc  0f57c9                    XORPS XMM1,XMM1
00522ddf  0f2fc1                    COMISS XMM0,XMM1
00522de2  7634                      JBE 0x00522e18
00522de4  f30f100db8a7ba00          MOVSS XMM1,dword ptr [0x00baa7b8]
00522dec  f30f5ec8                  DIVSS XMM1,XMM0
00522df0  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
00522df8  f30f59c1                  MULSS XMM0,XMM1
00522dfc  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
00522e04  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
00522e0c  f30f59c1                  MULSS XMM0,XMM1
00522e10  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00522e18  8d8d28ffffff              LEA ECX,[EBP + 0xffffff28]
00522e1e  e80dc1f1ff                CALL 0x0043ef30
00522e23  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
00522e29  8bcf                      MOV ECX,EDI
00522e2b  50                        PUSH EAX
00522e2c  6a02                      PUSH 0x2
00522e2e  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
00522e34  50                        PUSH EAX
00522e35  56                        PUSH ESI
00522e36  e8a5841a00                CALL 0x006cb2e0
00522e3b  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00522e45  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00522e49  7409                      JZ 0x00522e54
00522e4b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00522e52  752e                      JNZ 0x00522e82
00522e54  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00522e5a  83f806                    CMP EAX,0x6
00522e5d  750c                      JNZ 0x00522e6b
00522e5f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00522e69  eb17                      JMP 0x00522e82
00522e6b  83f808                    CMP EAX,0x8
00522e6e  7512                      JNZ 0x00522e82
00522e70  83bfc00b000024            CMP dword ptr [EDI + 0xbc0],0x24
00522e77  1bc0                      SBB EAX,EAX
00522e79  83c004                    ADD EAX,0x4
00522e7c  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
00522e82  80bd27ffffff00            CMP byte ptr [EBP + 0xffffff27],0x0
00522e89  7430                      JZ 0x00522ebb
00522e8b  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00522e93  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00522e9b  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00522ea3  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00522eab  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00522eb3  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00522ebb  c68520ffffff00            MOV byte ptr [EBP + 0xffffff20],0x0
00522ec2  ffb520ffffff              PUSH dword ptr [EBP + 0xffffff20]
00522ec8  8bcf                      MOV ECX,EDI
00522eca  e8e1d51900                CALL 0x006c04b0
00522ecf  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00522ed2  5f                        POP EDI
00522ed3  33cd                      XOR ECX,EBP
00522ed5  5e                        POP ESI
00522ed6  e850c25c00                CALL 0x00aef12b
00522edb  8be5                      MOV ESP,EBP
00522edd  5d                        POP EBP
00522ede  8be3                      MOV ESP,EBX
00522ee0  5b                        POP EBX
00522ee1  c3                        RET
