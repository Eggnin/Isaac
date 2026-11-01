; J460 NPC AI 0x005374a0 AI_005374a0
; types=219,285
; identities=219.0.0,285.0.0
; entry=005374a0
005374a0  53                        PUSH EBX
005374a1  8bdc                      MOV EBX,ESP
005374a3  83ec08                    SUB ESP,0x8
005374a6  83e4f8                    AND ESP,0xfffffff8
005374a9  83c404                    ADD ESP,0x4
005374ac  55                        PUSH EBP
005374ad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005374b0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005374b4  8bec                      MOV EBP,ESP
005374b6  81ec18010000              SUB ESP,0x118
005374bc  a1b493bf00                MOV EAX,[0x00bf93b4]
005374c1  33c5                      XOR EAX,EBP
005374c3  8945fc                    MOV dword ptr [EBP + -0x4],EAX
005374c6  56                        PUSH ESI
005374c7  57                        PUSH EDI
005374c8  8bf9                      MOV EDI,ECX
005374ca  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
005374d0  85c9                      TEST ECX,ECX
005374d2  0f85cc000000              JNZ 0x005375a4
005374d8  6a01                      PUSH 0x1
005374da  689011b600                PUSH 0xb61190
005374df  8d4f48                    LEA ECX,[EDI + 0x48]
005374e2  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
005374ec  e8df30edff                CALL 0x0040a5d0
005374f1  84c0                      TEST AL,AL
005374f3  740f                      JZ 0x00537504
005374f5  8d4f78                    LEA ECX,[EDI + 0x78]
005374f8  e8b32cedff                CALL 0x0040a1b0
005374fd  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00537504  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
0053750b  817f281d010000            CMP dword ptr [EDI + 0x28],0x11d
00537512  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00537518  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00537522  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0053752c  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00537532  0f84c7080000              JZ 0x00537dff
00537538  0f2815e0baba00            MOVAPS XMM2,xmmword ptr [0x00babae0]
0053753f  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
00537545  81c7e4010000              ADD EDI,0x1e4
0053754b  c78508ffffffcdcc4c3f      MOV dword ptr [EBP + 0xffffff08],0x3f4ccccd
00537555  c7850cffffffcdcc4c3f      MOV dword ptr [EBP + 0xffffff0c],0x3f4ccccd
0053755f  0f57c9                    XORPS XMM1,XMM1
00537562  c78510ffffffcdcc4c3f      MOV dword ptr [EBP + 0xffffff10],0x3f4ccccd
0053756c  3bf8                      CMP EDI,EAX
0053756e  0f848b080000              JZ 0x00537dff
00537574  f30f7e8508ffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff08]
0053757c  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
00537582  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
00537587  0f1117                    MOVUPS xmmword ptr [EDI],XMM2
0053758a  894728                    MOV dword ptr [EDI + 0x28],EAX
0053758d  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
00537591  5f                        POP EDI
00537592  5e                        POP ESI
00537593  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00537596  33cd                      XOR ECX,EBP
00537598  e88e7b5b00                CALL 0x00aef12b
0053759d  8be5                      MOV ESP,EBP
0053759f  5d                        POP EBP
005375a0  8be3                      MOV ESP,EBX
005375a2  5b                        POP EBX
005375a3  c3                        RET
005375a4  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005375ab  8bc1                      MOV EAX,ECX
005375ad  7476                      JZ 0x00537625
005375af  f30f109fb80b0000          MOVSS XMM3,dword ptr [EDI + 0xbb8]
005375b7  0f57d2                    XORPS XMM2,XMM2
005375ba  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005375c2  8bcf                      MOV ECX,EDI
005375c4  6a01                      PUSH 0x1
005375c6  e875181a00                CALL 0x006d8e40
005375cb  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
005375d1  8bc1                      MOV EAX,ECX
005375d3  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
005375db  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
005375e3  83f903                    CMP ECX,0x3
005375e6  7521                      JNZ 0x00537609
005375e8  f30f5e0544aaba00          DIVSS XMM0,dword ptr [0x00baaa44]
005375f0  f30f58c1                  ADDSS XMM0,XMM1
005375f4  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
005375fc  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
00537604  e9e1000000                JMP 0x005376ea
00537609  f30f5e05b4a9ba00          DIVSS XMM0,dword ptr [0x00baa9b4]
00537611  f30f5cc8                  SUBSS XMM1,XMM0
00537615  f30f5f0de49fba00          MAXSS XMM1,dword ptr [0x00ba9fe4]
0053761d  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
00537625  83f90d                    CMP ECX,0xd
00537628  751f                      JNZ 0x00537649
0053762a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053762e  740d                      JZ 0x0053763d
00537630  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00537637  0f85a4000000              JNZ 0x005376e1
0053763d  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00537647  eb09                      JMP 0x00537652
00537649  83f910                    CMP ECX,0x10
0053764c  0f858f000000              JNZ 0x005376e1
00537652  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00537655  85f6                      TEST ESI,ESI
00537657  744a                      JZ 0x005376a3
00537659  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053765d  8bc6                      MOV EAX,ESI
0053765f  7202                      JC 0x00537663
00537661  8b06                      MOV EAX,dword ptr [ESI]
00537663  b9b811b600                MOV ECX,0xb611b8
00537668  8a10                      MOV DL,byte ptr [EAX]
0053766a  3a11                      CMP DL,byte ptr [ECX]
0053766c  751a                      JNZ 0x00537688
0053766e  84d2                      TEST DL,DL
00537670  7412                      JZ 0x00537684
00537672  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00537675  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00537678  750e                      JNZ 0x00537688
0053767a  83c002                    ADD EAX,0x2
0053767d  83c102                    ADD ECX,0x2
00537680  84d2                      TEST DL,DL
00537682  75e4                      JNZ 0x00537668
00537684  33c0                      XOR EAX,EAX
00537686  eb05                      JMP 0x0053768d
00537688  1bc0                      SBB EAX,EAX
0053768a  83c801                    OR EAX,0x1
0053768d  85c0                      TEST EAX,EAX
0053768f  7512                      JNZ 0x005376a3
00537691  384634                    CMP byte ptr [ESI + 0x34],AL
00537694  742e                      JZ 0x005376c4
00537696  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0053769c  8d7748                    LEA ESI,[EDI + 0x48]
0053769f  7523                      JNZ 0x005376c4
005376a1  eb03                      JMP 0x005376a6
005376a3  8d7748                    LEA ESI,[EDI + 0x48]
005376a6  6a01                      PUSH 0x1
005376a8  68b811b600                PUSH 0xb611b8
005376ad  8bce                      MOV ECX,ESI
005376af  e81c2fedff                CALL 0x0040a5d0
005376b4  84c0                      TEST AL,AL
005376b6  740c                      JZ 0x005376c4
005376b8  8d4e30                    LEA ECX,[ESI + 0x30]
005376bb  e8f02aedff                CALL 0x0040a1b0
005376c0  c6464401                  MOV byte ptr [ESI + 0x44],0x1
005376c4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005376c8  0f847b010000              JZ 0x00537849
005376ce  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005376d5  0f846e010000              JZ 0x00537849
005376db  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005376e1  83f803                    CMP EAX,0x3
005376e4  0f8568030000              JNZ 0x00537a52
005376ea  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005376f1  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005376fb  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
00537702  0f846a010000              JZ 0x00537872
00537708  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
00537710  8bcf                      MOV ECX,EDI
00537712  6a02                      PUSH 0x2
00537714  e807141a00                CALL 0x006d8b20
00537719  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00537721  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
00537729  6a01                      PUSH 0x1
0053772b  6a00                      PUSH 0x0
0053772d  51                        PUSH ECX
0053772e  c704243333b33f            MOV dword ptr [ESP],0x3fb33333
00537735  8d8f14040000              LEA ECX,[EDI + 0x414]
0053773b  6840b6c700                PUSH 0xc7b640
00537740  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00537748  e873bc2a00                CALL 0x007e33c0
0053774d  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00537755  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
0053775c  731b                      JNC 0x00537779
0053775e  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00537766  8bcf                      MOV ECX,EDI
00537768  6a07                      PUSH 0x7
0053776a  6a00                      PUSH 0x0
0053776c  e8ef361900                CALL 0x006cae60
00537771  84c0                      TEST AL,AL
00537773  0f845c060000              JZ 0x00537dd5
00537779  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
0053777f  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00537789  50                        PUSH EAX
0053778a  0f57d2                    XORPS XMM2,XMM2
0053778d  8bcf                      MOV ECX,EDI
0053778f  e80c0e1a00                CALL 0x006d85a0
00537794  f30f1020                  MOVSS XMM4,dword ptr [EAX]
00537798  f30f59255caaba00          MULSS XMM4,dword ptr [0x00baaa5c]
005377a0  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
005377a5  f30f591d5caaba00          MULSS XMM3,dword ptr [0x00baaa5c]
005377ad  0f2e2540b6c700            UCOMISS XMM4,dword ptr [0x00c7b640]
005377b4  9f                        LAHF
005377b5  f6c444                    TEST AH,0x44
005377b8  7a35                      JP 0x005377ef
005377ba  0f2e1d44b6c700            UCOMISS XMM3,dword ptr [0x00c7b644]
005377c1  9f                        LAHF
005377c2  f6c444                    TEST AH,0x44
005377c5  7a28                      JP 0x005377ef
005377c7  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
005377cd  50                        PUSH EAX
005377ce  e89d781400                CALL 0x0067f070
005377d3  83c404                    ADD ESP,0x4
005377d6  f30f1020                  MOVSS XMM4,dword ptr [EAX]
005377da  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
005377df  f30f59255caaba00          MULSS XMM4,dword ptr [0x00baaa5c]
005377e7  f30f591d5caaba00          MULSS XMM3,dword ptr [0x00baaa5c]
005377ef  0f28c3                    MOVAPS XMM0,XMM3
005377f2  0f28cc                    MOVAPS XMM1,XMM4
005377f5  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
005377fd  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
00537805  0f28d4                    MOVAPS XMM2,XMM4
00537808  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0053780f  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00537817  0f28c3                    MOVAPS XMM0,XMM3
0053781a  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00537821  0f2fd0                    COMISS XMM2,XMM0
00537824  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
0053782c  0f57c0                    XORPS XMM0,XMM0
0053782f  7627                      JBE 0x00537858
00537831  33c9                      XOR ECX,ECX
00537833  b802000000                MOV EAX,0x2
00537838  0f2fc4                    COMISS XMM0,XMM4
0053783b  0f47c1                    CMOVA EAX,ECX
0053783e  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00537844  e98c050000                JMP 0x00537dd5
00537849  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00537853  e992feffff                JMP 0x005376ea
00537858  33c0                      XOR EAX,EAX
0053785a  0f2fc3                    COMISS XMM0,XMM3
0053785d  0f96c0                    SETBE AL
00537860  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
00537867  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0053786d  e963050000                JMP 0x00537dd5
00537872  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
00537878  85d2                      TEST EDX,EDX
0053787a  7e1f                      JLE 0x0053789b
0053787c  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00537884  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0053788c  2bc8                      SUB ECX,EAX
0053788e  03ca                      ADD ECX,EDX
00537890  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00537896  e93a050000                JMP 0x00537dd5
0053789b  e8c0761b00                CALL 0x006eef60
005378a0  33d2                      XOR EDX,EDX
005378a2  b91e000000                MOV ECX,0x1e
005378a7  f7f1                      DIV ECX
005378a9  85d2                      TEST EDX,EDX
005378ab  0f8524050000              JNZ 0x00537dd5
005378b1  a17816c700                MOV EAX,[0x00c71678]
005378b6  8bcf                      MOV ECX,EDI
005378b8  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005378be  e87d6f1800                CALL 0x006be840
005378c3  6a00                      PUSH 0x0
005378c5  6a00                      PUSH 0x0
005378c7  6a01                      PUSH 0x1
005378c9  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
005378cf  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
005378d5  51                        PUSH ECX
005378d6  898520ffffff              MOV dword ptr [EBP + 0xffffff20],EAX
005378dc  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
005378e2  c704240000f042            MOV dword ptr [ESP],0x42f00000
005378e9  50                        PUSH EAX
005378ea  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
005378f0  898d1cffffff              MOV dword ptr [EBP + 0xffffff1c],ECX
005378f6  50                        PUSH EAX
005378f7  8bce                      MOV ECX,ESI
005378f9  e822bc2d00                CALL 0x00813520
005378fe  8b08                      MOV ECX,dword ptr [EAX]
00537900  898f3c030000              MOV dword ptr [EDI + 0x33c],ECX
00537906  8bcf                      MOV ECX,EDI
00537908  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0053790b  898740030000              MOV dword ptr [EDI + 0x340],EAX
00537911  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053791b  e8206f1800                CALL 0x006be840
00537920  f30f10a03c030000          MOVSS XMM4,dword ptr [EAX + 0x33c]
00537928  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
00537930  f30f11a734030000          MOVSS dword ptr [EDI + 0x334],XMM4
00537938  f30f119f38030000          MOVSS dword ptr [EDI + 0x338],XMM3
00537940  f30f5ca73c030000          SUBSS XMM4,dword ptr [EDI + 0x33c]
00537948  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
00537950  0f28d4                    MOVAPS XMM2,XMM4
00537953  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0053795a  0f28c3                    MOVAPS XMM0,XMM3
0053795d  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00537964  0f2fd0                    COMISS XMM2,XMM0
00537967  0f57c0                    XORPS XMM0,XMM0
0053796a  760f                      JBE 0x0053797b
0053796c  33c9                      XOR ECX,ECX
0053796e  b802000000                MOV EAX,0x2
00537973  0f2fc4                    COMISS XMM0,XMM4
00537976  0f47c1                    CMOVA EAX,ECX
00537979  eb0f                      JMP 0x0053798a
0053797b  33c0                      XOR EAX,EAX
0053797d  0f2fc3                    COMISS XMM0,XMM3
00537980  0f96c0                    SETBE AL
00537983  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
0053798a  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00537990  817f281d010000            CMP dword ptr [EDI + 0x28],0x11d
00537997  0f8538040000              JNZ 0x00537dd5
0053799d  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
005379a5  0f57db                    XORPS XMM3,XMM3
005379a8  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
005379b0  51                        PUSH ECX
005379b1  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
005379b7  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
005379be  e82dbfeeff                CALL 0x004238f0
005379c3  660f6e87c00b0000          MOVD XMM0,dword ptr [EDI + 0xbc0]
005379cb  8bf0                      MOV ESI,EAX
005379cd  0f5bc0                    CVTDQ2PS XMM0,XMM0
005379d0  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
005379d8  f30f5c0578aaba00          SUBSS XMM0,dword ptr [0x00baaa78]
005379e0  e85bad1400                CALL 0x00682740
005379e5  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
005379ed  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
005379f5  e8465beeff                CALL 0x0041d540
005379fa  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00537a02  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
00537a0a  e8115beeff                CALL 0x0041d520
00537a0f  51                        PUSH ECX
00537a10  c7042400008040            MOV dword ptr [ESP],0x40800000
00537a17  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
00537a1d  56                        PUSH ESI
00537a1e  6a1e                      PUSH 0x1e
00537a20  50                        PUSH EAX
00537a21  8d951cffffff              LEA EDX,[EBP + 0xffffff1c]
00537a27  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
00537a2f  8bcf                      MOV ECX,EDI
00537a31  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
00537a3b  c78520ffffff0000d0c1      MOV dword ptr [EBP + 0xffffff20],0xc1d00000
00537a45  e8463e0d00                CALL 0x0060b890
00537a4a  83c410                    ADD ESP,0x10
00537a4d  e983030000                JMP 0x00537dd5
00537a52  83f804                    CMP EAX,0x4
00537a55  0f85ba000000              JNZ 0x00537b15
00537a5b  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
00537a62  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00537a68  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00537a6b  8b0c853015b600            MOV ECX,dword ptr [EAX*0x4 + 0xb61530]
00537a72  898d20ffffff              MOV dword ptr [EBP + 0xffffff20],ECX
00537a78  85f6                      TEST ESI,ESI
00537a7a  0f8490000000              JZ 0x00537b10
00537a80  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00537a84  8bc6                      MOV EAX,ESI
00537a86  7208                      JC 0x00537a90
00537a88  8b06                      MOV EAX,dword ptr [ESI]
00537a8a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00537a90  8a10                      MOV DL,byte ptr [EAX]
00537a92  3a11                      CMP DL,byte ptr [ECX]
00537a94  751a                      JNZ 0x00537ab0
00537a96  84d2                      TEST DL,DL
00537a98  7412                      JZ 0x00537aac
00537a9a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00537a9d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00537aa0  750e                      JNZ 0x00537ab0
00537aa2  83c002                    ADD EAX,0x2
00537aa5  83c102                    ADD ECX,0x2
00537aa8  84d2                      TEST DL,DL
00537aaa  75e4                      JNZ 0x00537a90
00537aac  33c0                      XOR EAX,EAX
00537aae  eb05                      JMP 0x00537ab5
00537ab0  1bc0                      SBB EAX,EAX
00537ab2  83c801                    OR EAX,0x1
00537ab5  85c0                      TEST EAX,EAX
00537ab7  7552                      JNZ 0x00537b0b
00537ab9  384634                    CMP byte ptr [ESI + 0x34],AL
00537abc  742b                      JZ 0x00537ae9
00537abe  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00537ac4  8d7748                    LEA ESI,[EDI + 0x48]
00537ac7  7520                      JNZ 0x00537ae9
00537ac9  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
00537acf  6a01                      PUSH 0x1
00537ad1  51                        PUSH ECX
00537ad2  8bce                      MOV ECX,ESI
00537ad4  e8f72aedff                CALL 0x0040a5d0
00537ad9  84c0                      TEST AL,AL
00537adb  740c                      JZ 0x00537ae9
00537add  8d4e30                    LEA ECX,[ESI + 0x30]
00537ae0  e8cb26edff                CALL 0x0040a1b0
00537ae5  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00537ae9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00537aed  740d                      JZ 0x00537afc
00537aef  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00537af6  0f85d9020000              JNZ 0x00537dd5
00537afc  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00537b06  e9ca020000                JMP 0x00537dd5
00537b0b  8d7748                    LEA ESI,[EDI + 0x48]
00537b0e  ebb9                      JMP 0x00537ac9
00537b10  8d7748                    LEA ESI,[EDI + 0x48]
00537b13  ebba                      JMP 0x00537acf
00537b15  83f808                    CMP EAX,0x8
00537b18  0f856e020000              JNZ 0x00537d8c
00537b1e  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
00537b28  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00537b2e  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00537b31  8b0c854015b600            MOV ECX,dword ptr [EAX*0x4 + 0xb61540]
00537b38  898d20ffffff              MOV dword ptr [EBP + 0xffffff20],ECX
00537b3e  85f6                      TEST ESI,ESI
00537b40  0f844f010000              JZ 0x00537c95
00537b46  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00537b4a  8bc6                      MOV EAX,ESI
00537b4c  7202                      JC 0x00537b50
00537b4e  8b06                      MOV EAX,dword ptr [ESI]
00537b50  8a10                      MOV DL,byte ptr [EAX]
00537b52  3a11                      CMP DL,byte ptr [ECX]
00537b54  751a                      JNZ 0x00537b70
00537b56  84d2                      TEST DL,DL
00537b58  7412                      JZ 0x00537b6c
00537b5a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00537b5d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00537b60  750e                      JNZ 0x00537b70
00537b62  83c002                    ADD EAX,0x2
00537b65  83c102                    ADD ECX,0x2
00537b68  84d2                      TEST DL,DL
00537b6a  75e4                      JNZ 0x00537b50
00537b6c  33c0                      XOR EAX,EAX
00537b6e  eb05                      JMP 0x00537b75
00537b70  1bc0                      SBB EAX,EAX
00537b72  83c801                    OR EAX,0x1
00537b75  85c0                      TEST EAX,EAX
00537b77  0f8510010000              JNZ 0x00537c8d
00537b7d  384634                    CMP byte ptr [ESI + 0x34],AL
00537b80  742b                      JZ 0x00537bad
00537b82  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00537b88  8d7748                    LEA ESI,[EDI + 0x48]
00537b8b  7520                      JNZ 0x00537bad
00537b8d  8b8d20ffffff              MOV ECX,dword ptr [EBP + 0xffffff20]
00537b93  6a01                      PUSH 0x1
00537b95  51                        PUSH ECX
00537b96  8bce                      MOV ECX,ESI
00537b98  e8332aedff                CALL 0x0040a5d0
00537b9d  84c0                      TEST AL,AL
00537b9f  740c                      JZ 0x00537bad
00537ba1  8d4e30                    LEA ECX,[ESI + 0x30]
00537ba4  e80726edff                CALL 0x0040a1b0
00537ba9  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00537bad  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00537bb1  0f84c9010000              JZ 0x00537d80
00537bb7  68dcd2b100                PUSH 0xb1d2dc
00537bbc  8d4f78                    LEA ECX,[EDI + 0x78]
00537bbf  e80c32edff                CALL 0x0040add0
00537bc4  84c0                      TEST AL,AL
00537bc6  0f84a5010000              JZ 0x00537d71
00537bcc  6a00                      PUSH 0x0
00537bce  68000a0001                PUSH 0x1000a00
00537bd3  8bcf                      MOV ECX,EDI
00537bd5  e856f8edff                CALL 0x00417430
00537bda  84c0                      TEST AL,AL
00537bdc  0f858f010000              JNZ 0x00537d71
00537be2  817f281d010000            CMP dword ptr [EDI + 0x28],0x11d
00537be9  0f85c8000000              JNZ 0x00537cb7
00537bef  68b8d4b100                PUSH 0xb1d4b8
00537bf4  8d4f48                    LEA ECX,[EDI + 0x48]
00537bf7  e8d435edff                CALL 0x0040b1d0
00537bfc  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00537c00  f30f5e0524a3ba00          DIVSS XMM0,dword ptr [0x00baa324]
00537c08  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00537c10  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00537c15  f30f5e0524a3ba00          DIVSS XMM0,dword ptr [0x00baa324]
00537c1d  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
00537c25  660f6e87c00b0000          MOVD XMM0,dword ptr [EDI + 0xbc0]
00537c2d  0f5bc0                    CVTDQ2PS XMM0,XMM0
00537c30  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00537c38  f30f5c0578aaba00          SUBSS XMM0,dword ptr [0x00baaa78]
00537c40  e8fbaa1400                CALL 0x00682740
00537c45  6a00                      PUSH 0x0
00537c47  57                        PUSH EDI
00537c48  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
00537c4e  51                        PUSH ECX
00537c4f  6a19                      PUSH 0x19
00537c51  51                        PUSH ECX
00537c52  8d873c030000              LEA EAX,[EDI + 0x33c]
00537c58  f30f110424                MOVSS dword ptr [ESP],XMM0
00537c5d  50                        PUSH EAX
00537c5e  6a01                      PUSH 0x1
00537c60  e8ab764300                CALL 0x0096f310
00537c65  83c41c                    ADD ESP,0x1c
00537c68  8bc8                      MOV ECX,EAX
00537c6a  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
00537c71  752a                      JNZ 0x00537c9d
00537c73  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
00537c7b  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
00537c83  8b01                      MOV EAX,dword ptr [ECX]
00537c85  ff500c                    CALL dword ptr [EAX + 0xc]
00537c88  e9e4000000                JMP 0x00537d71
00537c8d  8d7748                    LEA ESI,[EDI + 0x48]
00537c90  e9f8feffff                JMP 0x00537b8d
00537c95  8d7748                    LEA ESI,[EDI + 0x48]
00537c98  e9f6feffff                JMP 0x00537b93
00537c9d  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
00537ca5  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
00537cad  8b01                      MOV EAX,dword ptr [ECX]
00537caf  ff500c                    CALL dword ptr [EAX + 0xc]
00537cb2  e9ba000000                JMP 0x00537d71
00537cb7  51                        PUSH ECX
00537cb8  c704240000803f            MOV dword ptr [ESP],0x3f800000
00537cbf  6a00                      PUSH 0x0
00537cc1  6a02                      PUSH 0x2
00537cc3  51                        PUSH ECX
00537cc4  c704240000803f            MOV dword ptr [ESP],0x3f800000
00537ccb  8bcf                      MOV ECX,EDI
00537ccd  6807010000                PUSH 0x107
00537cd2  e8c9ee1900                CALL 0x006d6ba0
00537cd7  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
00537cdd  e84e72f0ff                CALL 0x0043ef30
00537ce2  68b8d4b100                PUSH 0xb1d4b8
00537ce7  8d4f48                    LEA ECX,[EDI + 0x48]
00537cea  e8e134edff                CALL 0x0040b1d0
00537cef  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00537cf3  f30f5e0524a3ba00          DIVSS XMM0,dword ptr [0x00baa324]
00537cfb  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00537d00  f30f5e1524a3ba00          DIVSS XMM2,dword ptr [0x00baa324]
00537d08  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
00537d0b  834da810                  OR dword ptr [EBP + -0x58],0x10
00537d0f  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
00537d16  c78560ffffff0000c03f      MOV dword ptr [EBP + 0xffffff60],0x3fc00000
00537d20  8945ac                    MOV dword ptr [EBP + -0x54],EAX
00537d23  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
00537d28  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
00537d30  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
00537d38  f30f119554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM2
00537d40  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
00537d48  e813721b00                CALL 0x006eef60
00537d4d  8d9550ffffff              LEA EDX,[EBP + 0xffffff50]
00537d53  83e003                    AND EAX,0x3
00537d56  52                        PUSH EDX
00537d57  8d8f34030000              LEA ECX,[EDI + 0x334]
00537d5d  83c006                    ADD EAX,0x6
00537d60  51                        PUSH ECX
00537d61  c704240000e040            MOV dword ptr [ESP],0x40e00000
00537d68  51                        PUSH ECX
00537d69  50                        PUSH EAX
00537d6a  8bcf                      MOV ECX,EDI
00537d6c  e85f501900                CALL 0x006ccdd0
00537d71  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00537d75  7409                      JZ 0x00537d80
00537d77  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00537d7e  7555                      JNZ 0x00537dd5
00537d80  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00537d8a  eb49                      JMP 0x00537dd5
00537d8c  83f809                    CMP EAX,0x9
00537d8f  7544                      JNZ 0x00537dd5
00537d91  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00537d97  8d4f48                    LEA ECX,[EDI + 0x48]
00537d9a  6a00                      PUSH 0x0
00537d9c  ff34855015b600            PUSH dword ptr [EAX*0x4 + 0xb61550]
00537da3  e8d825edff                CALL 0x0040a380
00537da8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00537dac  7409                      JZ 0x00537db7
00537dae  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00537db5  751e                      JNZ 0x00537dd5
00537db7  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00537dc1  c787100400003c000000      MOV dword ptr [EDI + 0x410],0x3c
00537dcb  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
00537dd5  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00537ddc  7409                      JZ 0x00537de7
00537dde  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
00537de5  7418                      JZ 0x00537dff
00537de7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00537def  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00537df7  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00537dff  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00537e02  5f                        POP EDI
00537e03  33cd                      XOR ECX,EBP
00537e05  5e                        POP ESI
00537e06  e820735b00                CALL 0x00aef12b
00537e0b  8be5                      MOV ESP,EBP
00537e0d  5d                        POP EBP
00537e0e  8be3                      MOV ESP,EBX
00537e10  5b                        POP EBX
00537e11  c3                        RET
