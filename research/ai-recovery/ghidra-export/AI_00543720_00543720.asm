; J460 NPC AI 0x00543720 AI_00543720
; types=306
; identities=306.0.0,306.1.0
; entry=00543720
00543720  55                        PUSH EBP
00543721  8bec                      MOV EBP,ESP
00543723  83e4f8                    AND ESP,0xfffffff8
00543726  83ec78                    SUB ESP,0x78
00543729  a1b493bf00                MOV EAX,[0x00bf93b4]
0054372e  33c4                      XOR EAX,ESP
00543730  89442474                  MOV dword ptr [ESP + 0x74],EAX
00543734  56                        PUSH ESI
00543735  57                        PUSH EDI
00543736  8bf9                      MOV EDI,ECX
00543738  897c2418                  MOV dword ptr [ESP + 0x18],EDI
0054373c  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00543743  0f852e010000              JNZ 0x00543877
00543749  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00543753  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
0054375d  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00543763  898734030000              MOV dword ptr [EDI + 0x334],EAX
00543769  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0054376f  898738030000              MOV dword ptr [EDI + 0x338],EAX
00543775  818f6c01000000200000      OR dword ptr [EDI + 0x16c],0x2000
0054377f  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00543783  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00543789  898768010000              MOV dword ptr [EDI + 0x168],EAX
0054378f  7514                      JNZ 0x005437a5
00543791  c7874c03000000000000      MOV dword ptr [EDI + 0x34c],0x0
0054379b  c787500300000000f0c1      MOV dword ptr [EDI + 0x350],0xc1f00000
005437a5  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
005437ac  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
005437b2  8d442424                  LEA EAX,[ESP + 0x24]
005437b6  c7875403000028000000      MOV dword ptr [EDI + 0x354],0x28
005437c0  c74424449d9c1c3f          MOV dword ptr [ESP + 0x44],0x3f1c9c9d
005437c8  0f57c0                    XORPS XMM0,XMM0
005437cb  c74424488d8c8c3e          MOV dword ptr [ESP + 0x48],0x3e8c8c8d
005437d3  c744244cbcbb3b3f          MOV dword ptr [ESP + 0x4c],0x3f3bbbbc
005437db  3bc8                      CMP ECX,EAX
005437dd  7419                      JZ 0x005437f8
005437df  8b44244c                  MOV EAX,dword ptr [ESP + 0x4c]
005437e3  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
005437e7  f30f7e442444              MOVQ XMM0,qword ptr [ESP + 0x44]
005437ed  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
005437f2  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
005437f5  894128                    MOV dword ptr [ECX + 0x28],EAX
005437f8  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
005437fe  85d2                      TEST EDX,EDX
00543800  751a                      JNZ 0x0054381c
00543802  6854bfb600                PUSH 0xb6bf54
00543807  6a10                      PUSH 0x10
00543809  e8b2da4c00                CALL 0x00a112c0
0054380e  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
00543814  83c408                    ADD ESP,0x8
00543817  85d2                      TEST EDX,EDX
00543819  7501                      JNZ 0x0054381c
0054381b  cc                        INT3
0054381c  8b8fe0030000              MOV ECX,dword ptr [EDI + 0x3e0]
00543822  8bc2                      MOV EAX,EDX
00543824  d3e8                      SHR EAX,CL
00543826  8b8fe4030000              MOV ECX,dword ptr [EDI + 0x3e4]
0054382c  33c2                      XOR EAX,EDX
0054382e  8bd0                      MOV EDX,EAX
00543830  d3e2                      SHL EDX,CL
00543832  8b8fe8030000              MOV ECX,dword ptr [EDI + 0x3e8]
00543838  33d0                      XOR EDX,EAX
0054383a  8bf2                      MOV ESI,EDX
0054383c  b8cdcccccc                MOV EAX,0xcccccccd
00543841  d3ee                      SHR ESI,CL
00543843  33f2                      XOR ESI,EDX
00543845  f7e6                      MUL ESI
00543847  89b7dc030000              MOV dword ptr [EDI + 0x3dc],ESI
0054384d  c1ea02                    SHR EDX,0x2
00543850  c787c40b00000f000000      MOV dword ptr [EDI + 0xbc4],0xf
0054385a  8d0492                    LEA EAX,[EDX + EDX*0x4]
0054385d  2bf0                      SUB ESI,EAX
0054385f  46                        INC ESI
00543860  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
00543866  5f                        POP EDI
00543867  5e                        POP ESI
00543868  8b4c2474                  MOV ECX,dword ptr [ESP + 0x74]
0054386c  33cc                      XOR ECX,ESP
0054386e  e8b8b85a00                CALL 0x00aef12b
00543873  8be5                      MOV ESP,EBP
00543875  5d                        POP EBP
00543876  c3                        RET
00543877  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0054387a  85c0                      TEST EAX,EAX
0054387c  0f85bf000000              JNZ 0x00543941
00543882  a17816c700                MOV EAX,[0x00c71678]
00543887  8b00                      MOV EAX,dword ptr [EAX]
00543889  83f80a                    CMP EAX,0xa
0054388c  0f8e9e000000              JLE 0x00543930
00543892  83f80c                    CMP EAX,0xc
00543895  0f859e000000              JNZ 0x00543939
0054389b  8d7748                    LEA ESI,[EDI + 0x48]
0054389e  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005438a4  83f803                    CMP EAX,0x3
005438a7  0f8440070000              JZ 0x00543fed
005438ad  83f808                    CMP EAX,0x8
005438b0  0f856d080000              JNZ 0x00544123
005438b6  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
005438ba  7418                      JZ 0x005438d4
005438bc  68dcd2b100                PUSH 0xb1d2dc
005438c1  8d8f98000000              LEA ECX,[EDI + 0x98]
005438c7  e80475ecff                CALL 0x0040add0
005438cc  84c0                      TEST AL,AL
005438ce  0f84ee060000              JZ 0x00543fc2
005438d4  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005438d8  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
005438e0  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
005438e8  0f85b2020000              JNZ 0x00543ba0
005438ee  837f3000                  CMP dword ptr [EDI + 0x30],0x0
005438f2  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
005438f8  ba0b000000                MOV EDX,0xb
005438fd  b806000000                MOV EAX,0x6
00543902  0f44c2                    CMOVZ EAX,EDX
00543905  50                        PUSH EAX
00543906  e815572a00                CALL 0x007e9020
0054390b  8d0cc5d814b600            LEA ECX,[EAX*0x8 + 0xb614d8]
00543912  83f806                    CMP EAX,0x6
00543915  7207                      JC 0x0054391e
00543917  8d0cc5d814b600            LEA ECX,[EAX*0x8 + 0xb614d8]
0054391e  8b01                      MOV EAX,dword ptr [ECX]
00543920  89442408                  MOV dword ptr [ESP + 0x8],EAX
00543924  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
00543927  8944240c                  MOV dword ptr [ESP + 0xc],EAX
0054392b  e900040000                JMP 0x00543d30
00543930  83f809                    CMP EAX,0x9
00543933  0f8562ffffff              JNZ 0x0054389b
00543939  8b07                      MOV EAX,dword ptr [EDI]
0054393b  ff5028                    CALL dword ptr [EAX + 0x28]
0054393e  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00543941  83f801                    CMP EAX,0x1
00543944  0f8551ffffff              JNZ 0x0054389b
0054394a  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
0054394e  83ec08                    SUB ESP,0x8
00543951  f30f1005c48dc700          MOVSS XMM0,dword ptr [0x00c78dc4]
00543959  f30f10151c94bf00          MOVSS XMM2,dword ptr [0x00bf941c]
00543961  f30f5915e893bf00          MULSS XMM2,dword ptr [0x00bf93e8]
00543969  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
0054396f  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00543977  f30f5c0d50a9ba00          SUBSS XMM1,dword ptr [0x00baa950]
0054397f  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00543985  f30f5c0520abba00          SUBSS XMM0,dword ptr [0x00baab20]
0054398d  8bb700830100              MOV ESI,dword ptr [EDI + 0x18300]
00543993  f30f11542428              MOVSS dword ptr [ESP + 0x28],XMM2
00543999  f30f590d24a3ba00          MULSS XMM1,dword ptr [0x00baa324]
005439a1  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005439a9  f30f58c1                  ADDSS XMM0,XMM1
005439ad  f30f59c2                  MULSS XMM0,XMM2
005439b1  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
005439b9  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
005439bf  d9442410                  FLD dword ptr [ESP + 0x10]
005439c3  dd1c24                    FSTP qword ptr [ESP]
005439c6  e84ccf5a00                CALL 0x00af0917
005439cb  d95c2410                  FSTP dword ptr [ESP + 0x10]
005439cf  d9442410                  FLD dword ptr [ESP + 0x10]
005439d3  d95c2410                  FSTP dword ptr [ESP + 0x10]
005439d7  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
005439dd  f30f5e442428              DIVSS XMM0,dword ptr [ESP + 0x28]
005439e3  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
005439e7  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005439ef  f30f5c0d30aaba00          SUBSS XMM1,dword ptr [0x00baaa30]
005439f7  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
005439fd  f30f1005dc8ec700          MOVSS XMM0,dword ptr [0x00c78edc]
00543a05  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00543a0b  f30f5c057caaba00          SUBSS XMM0,dword ptr [0x00baaa7c]
00543a13  f30f590d24a3ba00          MULSS XMM1,dword ptr [0x00baa324]
00543a1b  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00543a23  f30f58c1                  ADDSS XMM0,XMM1
00543a27  f30f59442428              MULSS XMM0,dword ptr [ESP + 0x28]
00543a2d  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00543a35  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00543a3b  d944241c                  FLD dword ptr [ESP + 0x1c]
00543a3f  dd1c24                    FSTP qword ptr [ESP]
00543a42  e8d0ce5a00                CALL 0x00af0917
00543a47  d95c241c                  FSTP dword ptr [ESP + 0x1c]
00543a4b  d944241c                  FLD dword ptr [ESP + 0x1c]
00543a4f  83c408                    ADD ESP,0x8
00543a52  f30f104c241c              MOVSS XMM1,dword ptr [ESP + 0x1c]
00543a58  f30f588e04120000          ADDSS XMM1,dword ptr [ESI + 0x1204]
00543a60  d95c2414                  FSTP dword ptr [ESP + 0x14]
00543a64  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00543a6a  f30f5e442420              DIVSS XMM0,dword ptr [ESP + 0x20]
00543a70  f30f588f0c650200          ADDSS XMM1,dword ptr [EDI + 0x2650c]
00543a78  f30f1064240c              MOVSS XMM4,dword ptr [ESP + 0xc]
00543a7e  f30f5925d0a2ba00          MULSS XMM4,dword ptr [0x00baa2d0]
00543a86  f30f588608120000          ADDSS XMM0,dword ptr [ESI + 0x1208]
00543a8e  f30f101de893bf00          MOVSS XMM3,dword ptr [0x00bf93e8]
00543a96  f30f591dd0a8ba00          MULSS XMM3,dword ptr [0x00baa8d0]
00543a9e  f30f5ce1                  SUBSS XMM4,XMM1
00543aa2  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
00543aa8  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00543ab0  f30f588710650200          ADDSS XMM0,dword ptr [EDI + 0x26510]
00543ab8  f30f5ee3                  DIVSS XMM4,XMM3
00543abc  f30f5cc8                  SUBSS XMM1,XMM0
00543ac0  f30f1164240c              MOVSS dword ptr [ESP + 0xc],XMM4
00543ac6  f30f5ecb                  DIVSS XMM1,XMM3
00543aca  0f28c1                    MOVAPS XMM0,XMM1
00543acd  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
00543ad3  f30f59c1                  MULSS XMM0,XMM1
00543ad7  0f28cc                    MOVAPS XMM1,XMM4
00543ada  f30f59cc                  MULSS XMM1,XMM4
00543ade  f30f58c1                  ADDSS XMM0,XMM1
00543ae2  e8691fefff                CALL 0x00435a50
00543ae7  f30f101528a5ba00          MOVSS XMM2,dword ptr [0x00baa528]
00543aef  0f2fc2                    COMISS XMM0,XMM2
00543af2  762b                      JBE 0x00543b1f
00543af4  0f57c9                    XORPS XMM1,XMM1
00543af7  0f2fc1                    COMISS XMM0,XMM1
00543afa  7623                      JBE 0x00543b1f
00543afc  f30f5ed0                  DIVSS XMM2,XMM0
00543b00  0f28c2                    MOVAPS XMM0,XMM2
00543b03  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
00543b09  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00543b0f  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
00543b15  f30f59c2                  MULSS XMM0,XMM2
00543b19  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00543b1f  8b7c2418                  MOV EDI,dword ptr [ESP + 0x18]
00543b23  6a02                      PUSH 0x2
00543b25  8d7748                    LEA ESI,[EDI + 0x48]
00543b28  8bce                      MOV ECX,ESI
00543b2a  e8f176ecff                CALL 0x0040b220
00543b2f  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00543b35  8bce                      MOV ECX,ESI
00543b37  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
00543b3d  6a03                      PUSH 0x3
00543b3f  f30f114840                MOVSS dword ptr [EAX + 0x40],XMM1
00543b44  f30f114044                MOVSS dword ptr [EAX + 0x44],XMM0
00543b49  e8d276ecff                CALL 0x0040b220
00543b4e  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00543b54  8bce                      MOV ECX,ESI
00543b56  f30f58c0                  ADDSS XMM0,XMM0
00543b5a  6a04                      PUSH 0x4
00543b5c  f30f114040                MOVSS dword ptr [EAX + 0x40],XMM0
00543b61  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00543b67  f30f58c0                  ADDSS XMM0,XMM0
00543b6b  f30f114044                MOVSS dword ptr [EAX + 0x44],XMM0
00543b70  e8ab76ecff                CALL 0x0040b220
00543b75  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00543b7b  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00543b83  f30f114840                MOVSS dword ptr [EAX + 0x40],XMM1
00543b88  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
00543b8e  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00543b96  f30f114844                MOVSS dword ptr [EAX + 0x44],XMM1
00543b9b  e9fefcffff                JMP 0x0054389e
00543ba0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00543ba6  83790400                  CMP dword ptr [ECX + 0x4],0x0
00543baa  8b11                      MOV EDX,dword ptr [ECX]
00543bac  0f95442413                SETNZ byte ptr [ESP + 0x13]
00543bb1  83fa0c                    CMP EDX,0xc
00543bb4  7562                      JNZ 0x00543c18
00543bb6  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00543bbc  e81fb12a00                CALL 0x007eece0
00543bc1  8bf0                      MOV ESI,EAX
00543bc3  ba01000000                MOV EDX,0x1
00543bc8  8d4eff                    LEA ECX,[ESI + -0x1]
00543bcb  83f902                    CMP ECX,0x2
00543bce  7648                      JBE 0x00543c18
00543bd0  8d46fc                    LEA EAX,[ESI + -0x4]
00543bd3  83f802                    CMP EAX,0x2
00543bd6  7707                      JA 0x00543bdf
00543bd8  ba03000000                MOV EDX,0x3
00543bdd  eb39                      JMP 0x00543c18
00543bdf  8d46f9                    LEA EAX,[ESI + -0x7]
00543be2  83f802                    CMP EAX,0x2
00543be5  7707                      JA 0x00543bee
00543be7  ba05000000                MOV EDX,0x5
00543bec  eb2a                      JMP 0x00543c18
00543bee  8d46f6                    LEA EAX,[ESI + -0xa]
00543bf1  83f802                    CMP EAX,0x2
00543bf4  7707                      JA 0x00543bfd
00543bf6  ba07000000                MOV EDX,0x7
00543bfb  eb1b                      JMP 0x00543c18
00543bfd  83fe0f                    CMP ESI,0xf
00543c00  7507                      JNZ 0x00543c09
00543c02  c644241301                MOV byte ptr [ESP + 0x13],0x1
00543c07  eb0a                      JMP 0x00543c13
00543c09  83fe0e                    CMP ESI,0xe
00543c0c  750a                      JNZ 0x00543c18
00543c0e  c644241300                MOV byte ptr [ESP + 0x13],0x0
00543c13  ba0a000000                MOV EDX,0xa
00543c18  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00543c1e  8d72ff                    LEA ESI,[EDX + -0x1]
00543c21  e8fa441b00                CALL 0x006f8120
00543c26  84c0                      TEST AL,AL
00543c28  742c                      JZ 0x00543c56
00543c2a  83fe05                    CMP ESI,0x5
00543c2d  7767                      JA 0x00543c96
00543c2f  ff24b598415400            JMP dword ptr [ESI*0x4 + 0x544198]
00543c56  83fe09                    CMP ESI,0x9
00543c59  773b                      JA 0x00543c96
00543c5b  ff24b5b0415400            JMP dword ptr [ESI*0x4 + 0x5441b0]
00543c96  be04000000                MOV ESI,0x4
00543c9b  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00543ca1  6a07                      PUSH 0x7
00543ca3  e878532a00                CALL 0x007e9020
00543ca8  8d0cf500000000            LEA ECX,[ESI*0x8 + 0x0]
00543caf  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
00543cb7  2bce                      SUB ECX,ESI
00543cb9  03c1                      ADD EAX,ECX
00543cbb  8b0485e013b600            MOV EAX,dword ptr [EAX*0x4 + 0xb613e0]
00543cc2  89442408                  MOV dword ptr [ESP + 0x8],EAX
00543cc6  83f837                    CMP EAX,0x37
00543cc9  751e                      JNZ 0x00543ce9
00543ccb  83fe04                    CMP ESI,0x4
00543cce  750a                      JNZ 0x00543cda
00543cd0  c744240c02000000          MOV dword ptr [ESP + 0xc],0x2
00543cd8  eb56                      JMP 0x00543d30
00543cda  83fe05                    CMP ESI,0x5
00543cdd  7551                      JNZ 0x00543d30
00543cdf  c744240c01000000          MOV dword ptr [ESP + 0xc],0x1
00543ce7  eb47                      JMP 0x00543d30
00543ce9  3dd0000000                CMP EAX,0xd0
00543cee  750a                      JNZ 0x00543cfa
00543cf0  c744240c01000000          MOV dword ptr [ESP + 0xc],0x1
00543cf8  eb36                      JMP 0x00543d30
00543cfa  3d04010000                CMP EAX,0x104
00543cff  750a                      JNZ 0x00543d0b
00543d01  c744240c0a000000          MOV dword ptr [ESP + 0xc],0xa
00543d09  eb25                      JMP 0x00543d30
00543d0b  3dd4000000                CMP EAX,0xd4
00543d10  751e                      JNZ 0x00543d30
00543d12  6a00                      PUSH 0x0
00543d14  6800010000                PUSH 0x100
00543d19  8bcf                      MOV ECX,EDI
00543d1b  e81037edff                CALL 0x00417430
00543d20  33c9                      XOR ECX,ECX
00543d22  ba01000000                MOV EDX,0x1
00543d27  84c0                      TEST AL,AL
00543d29  0f45ca                    CMOVNZ ECX,EDX
00543d2c  894c240c                  MOV dword ptr [ESP + 0xc],ECX
00543d30  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00543d36  e8b5532a00                CALL 0x007e90f0
00543d3b  6a00                      PUSH 0x0
00543d3d  50                        PUSH EAX
00543d3e  6a00                      PUSH 0x0
00543d40  57                        PUSH EDI
00543d41  6840b6c700                PUSH 0xc7b640
00543d46  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00543d4c  51                        PUSH ECX
00543d4d  ff742424                  PUSH dword ptr [ESP + 0x24]
00543d51  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00543d57  ff742424                  PUSH dword ptr [ESP + 0x24]
00543d5b  e8b0a61b00                CALL 0x006fe410
00543d60  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00543d66  8bf0                      MOV ESI,EAX
00543d68  6a00                      PUSH 0x0
00543d6a  ff742410                  PUSH dword ptr [ESP + 0x10]
00543d6e  81c170a60200              ADD ECX,0x2a670
00543d74  ff742410                  PUSH dword ptr [ESP + 0x10]
00543d78  e833121500                CALL 0x00694fb0
00543d7d  85c0                      TEST EAX,EAX
00543d7f  741e                      JZ 0x00543d9f
00543d81  80783400                  CMP byte ptr [EAX + 0x34],0x0
00543d85  7418                      JZ 0x00543d9f
00543d87  8a87630c0000              MOV AL,byte ptr [EDI + 0xc63]
00543d8d  8886630c0000              MOV byte ptr [ESI + 0xc63],AL
00543d93  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00543d99  8986640c0000              MOV dword ptr [ESI + 0xc64],EAX
00543d9f  8b06                      MOV EAX,dword ptr [ESI]
00543da1  8bce                      MOV ECX,ESI
00543da3  ff5064                    CALL dword ptr [EAX + 0x64]
00543da6  f30f108684030000          MOVSS XMM0,dword ptr [ESI + 0x384]
00543dae  8d8684030000              LEA EAX,[ESI + 0x384]
00543db4  0f2f8680030000            COMISS XMM0,dword ptr [ESI + 0x380]
00543dbb  8d8e80030000              LEA ECX,[ESI + 0x380]
00543dc1  0f47c1                    CMOVA EAX,ECX
00543dc4  8b00                      MOV EAX,dword ptr [EAX]
00543dc6  8901                      MOV dword ptr [ECX],EAX
00543dc8  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00543dce  2500010000                AND EAX,0x100
00543dd3  83c800                    OR EAX,0x0
00543dd6  7417                      JZ 0x00543def
00543dd8  6a00                      PUSH 0x0
00543dda  6a00                      PUSH 0x0
00543ddc  6aff                      PUSH -0x1
00543dde  8d4c245c                  LEA ECX,[ESP + 0x5c]
00543de2  e8891eefff                CALL 0x00435c70
00543de7  50                        PUSH EAX
00543de8  8bce                      MOV ECX,ESI
00543dea  e8819a1600                CALL 0x006ad870
00543def  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00543df3  0f85d4000000              JNZ 0x00543ecd
00543df9  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00543e00  818e6c01000000040000      OR dword ptr [ESI + 0x16c],0x400
00543e0a  e851b11a00                CALL 0x006eef60
00543e0f  660f6ec0                  MOVD XMM0,EAX
00543e13  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00543e17  c1e81f                    SHR EAX,0x1f
00543e1a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00543e23  660f5ac0                  CVTPD2PS XMM0,XMM0
00543e27  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00543e2f  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00543e37  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
00543e3f  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00543e47  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00543e4d  e8ee96edff                CALL 0x0041d540
00543e52  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00543e58  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
00543e5e  e8bd96edff                CALL 0x0041d520
00543e63  0f28e0                    MOVAPS XMM4,XMM0
00543e66  c7442470a2a1213f          MOV dword ptr [ESP + 0x70],0x3f21a1a2
00543e6e  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00543e74  0f28cc                    MOVAPS XMM1,XMM4
00543e77  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
00543e7f  0f28d8                    MOVAPS XMM3,XMM0
00543e82  6a01                      PUSH 0x1
00543e84  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
00543e8c  0f57ed                    XORPS XMM5,XMM5
00543e8f  6a01                      PUSH 0x1
00543e91  f30f59dd                  MULSS XMM3,XMM5
00543e95  6a14                      PUSH 0x14
00543e97  f30f59e5                  MULSS XMM4,XMM5
00543e9b  c7842480000000c5c4c43e    MOV dword ptr [ESP + 0x80],0x3ec4c4c5
00543ea6  f30f5cd9                  SUBSS XMM3,XMM1
00543eaa  c7842484000000f0ef6f3f    MOV dword ptr [ESP + 0x84],0x3f6feff0
00543eb5  6a1e                      PUSH 0x1e
00543eb7  f30f58e0                  ADDSS XMM4,XMM0
00543ebb  f30f119e60030000          MOVSS dword ptr [ESI + 0x360],XMM3
00543ec3  f30f11a664030000          MOVSS dword ptr [ESI + 0x364],XMM4
00543ecb  eb26                      JMP 0x00543ef3
00543ecd  6a01                      PUSH 0x1
00543ecf  6a01                      PUSH 0x1
00543ed1  6a14                      PUSH 0x14
00543ed3  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
00543edb  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
00543ee6  c784248400000000000000    MOV dword ptr [ESP + 0x84],0x0
00543ef1  6a32                      PUSH 0x32
00543ef3  8b06                      MOV EAX,dword ptr [ESI]
00543ef5  8d4c2460                  LEA ECX,[ESP + 0x60]
00543ef9  0f57c0                    XORPS XMM0,XMM0
00543efc  0f11442470                MOVUPS xmmword ptr [ESP + 0x70],XMM0
00543f01  51                        PUSH ECX
00543f02  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00543f09  8bce                      MOV ECX,ESI
00543f0b  0f11442464                MOVUPS xmmword ptr [ESP + 0x64],XMM0
00543f10  ff503c                    CALL dword ptr [EAX + 0x3c]
00543f13  8b06                      MOV EAX,dword ptr [ESI]
00543f15  8bce                      MOV ECX,ESI
00543f17  ff500c                    CALL dword ptr [EAX + 0xc]
00543f1a  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00543f1e  0f85a4000000              JNZ 0x00543fc8
00543f24  51                        PUSH ECX
00543f25  c704240000803f            MOV dword ptr [ESP],0x3f800000
00543f2c  6a00                      PUSH 0x0
00543f2e  6a02                      PUSH 0x2
00543f30  51                        PUSH ECX
00543f31  c704240000803f            MOV dword ptr [ESP],0x3f800000
00543f38  8bcf                      MOV ECX,EDI
00543f3a  6a1c                      PUSH 0x1c
00543f3c  e85f2c1900                CALL 0x006d6ba0
00543f41  ff8fc00b0000              DEC dword ptr [EDI + 0xbc0]
00543f47  8d4c2450                  LEA ECX,[ESP + 0x50]
00543f4b  e82026f1ff                CALL 0x00456570
00543f50  a17816c700                MOV EAX,[0x00c71678]
00543f55  8d542450                  LEA EDX,[ESP + 0x50]
00543f59  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00543f61  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00543f69  f30f588f4c030000          ADDSS XMM1,dword ptr [EDI + 0x34c]
00543f71  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00543f77  f30f588750030000          ADDSS XMM0,dword ptr [EDI + 0x350]
00543f7f  c74424680a000000          MOV dword ptr [ESP + 0x68],0xa
00543f87  c74424608fc2753c          MOV dword ptr [ESP + 0x60],0x3c75c28f
00543f8f  ff81fc700000              INC dword ptr [ECX + 0x70fc]
00543f95  8b81fc700000              MOV EAX,dword ptr [ECX + 0x70fc]
00543f9b  c744245c8fc2f53c          MOV dword ptr [ESP + 0x5c],0x3cf5c28f
00543fa3  f30f114c2450              MOVSS dword ptr [ESP + 0x50],XMM1
00543fa9  f30f11442454              MOVSS dword ptr [ESP + 0x54],XMM0
00543faf  52                        PUSH EDX
00543fb0  2501000080                AND EAX,0x80000001
00543fb5  7905                      JNS 0x00543fbc
00543fb7  48                        DEC EAX
00543fb8  83c8fe                    OR EAX,0xfffffffe
00543fbb  40                        INC EAX
00543fbc  50                        PUSH EAX
00543fbd  e84e9f2d00                CALL 0x0081df10
00543fc2  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00543fc6  7416                      JZ 0x00543fde
00543fc8  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
00543fcf  740d                      JZ 0x00543fde
00543fd1  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
00543fd8  0f8545010000              JNZ 0x00544123
00543fde  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00543fe8  e936010000                JMP 0x00544123
00543fed  6a00                      PUSH 0x0
00543fef  6854bcb100                PUSH 0xb1bc54
00543ff4  8bce                      MOV ECX,ESI
00543ff6  e88563ecff                CALL 0x0040a380
00543ffb  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
00544002  0f8f1b010000              JG 0x00544123
00544008  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054400e  33c0                      XOR EAX,EAX
00544010  89442408                  MOV dword ptr [ESP + 0x8],EAX
00544014  8b9100830100              MOV EDX,dword ptr [ECX + 0x18300]
0054401a  8bb264120000              MOV ESI,dword ptr [EDX + 0x1264]
00544020  85f6                      TEST ESI,ESI
00544022  7451                      JZ 0x00544075
00544024  8b925c120000              MOV EDX,dword ptr [EDX + 0x125c]
0054402a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00544030  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
00544036  8b0a                      MOV ECX,dword ptr [EDX]
00544038  83bf1466020002            CMP dword ptr [EDI + 0x26614],0x2
0054403f  8b7c2418                  MOV EDI,dword ptr [ESP + 0x18]
00544043  7c06                      JL 0x0054404b
00544045  83792801                  CMP dword ptr [ECX + 0x28],0x1
00544049  7411                      JZ 0x0054405c
0054404b  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0054404e  83e80a                    SUB EAX,0xa
00544051  3ddd030000                CMP EAX,0x3dd
00544056  7711                      JA 0x00544069
00544058  8b442408                  MOV EAX,dword ptr [ESP + 0x8]
0054405c  39b9c8030000              CMP dword ptr [ECX + 0x3c8],EDI
00544062  7505                      JNZ 0x00544069
00544064  40                        INC EAX
00544065  89442408                  MOV dword ptr [ESP + 0x8],EAX
00544069  8b442408                  MOV EAX,dword ptr [ESP + 0x8]
0054406d  83c204                    ADD EDX,0x4
00544070  83ee01                    SUB ESI,0x1
00544073  75bb                      JNZ 0x00544030
00544075  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00544078  8d41ff                    LEA EAX,[ECX + -0x1]
0054407b  f7d8                      NEG EAX
0054407d  1bc0                      SBB EAX,EAX
0054407f  83c004                    ADD EAX,0x4
00544082  39442408                  CMP dword ptr [ESP + 0x8],EAX
00544086  0f8d80000000              JGE 0x0054410c
0054408c  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00544096  83f901                    CMP ECX,0x1
00544099  755e                      JNZ 0x005440f9
0054409b  e8c0ae1a00                CALL 0x006eef60
005440a0  33d2                      XOR EDX,EDX
005440a2  b91e000000                MOV ECX,0x1e
005440a7  f7f1                      DIV ECX
005440a9  6a01                      PUSH 0x1
005440ab  83c23c                    ADD EDX,0x3c
005440ae  8d4f48                    LEA ECX,[EDI + 0x48]
005440b1  683812b600                PUSH 0xb61238
005440b6  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
005440bc  e82f6aecff                CALL 0x0040aaf0
005440c1  84c0                      TEST AL,AL
005440c3  7412                      JZ 0x005440d7
005440c5  8d8f98000000              LEA ECX,[EDI + 0x98]
005440cb  e8e060ecff                CALL 0x0040a1b0
005440d0  c687ac00000001            MOV byte ptr [EDI + 0xac],0x1
005440d7  51                        PUSH ECX
005440d8  c704240000803f            MOV dword ptr [ESP],0x3f800000
005440df  6a00                      PUSH 0x0
005440e1  6a02                      PUSH 0x2
005440e3  51                        PUSH ECX
005440e4  c704240000803f            MOV dword ptr [ESP],0x3f800000
005440eb  8bcf                      MOV ECX,EDI
005440ed  68a2000000                PUSH 0xa2
005440f2  e8a92a1900                CALL 0x006d6ba0
005440f7  eb2a                      JMP 0x00544123
005440f9  e862ae1a00                CALL 0x006eef60
005440fe  33d2                      XOR EDX,EDX
00544100  b93c000000                MOV ECX,0x3c
00544105  f7f1                      DIV ECX
00544107  83c25a                    ADD EDX,0x5a
0054410a  eb11                      JMP 0x0054411d
0054410c  e84fae1a00                CALL 0x006eef60
00544111  33d2                      XOR EDX,EDX
00544113  b91e000000                MOV ECX,0x1e
00544118  f7f1                      DIV ECX
0054411a  83c23c                    ADD EDX,0x3c
0054411d  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
00544123  8b97c40b0000              MOV EDX,dword ptr [EDI + 0xbc4]
00544129  85d2                      TEST EDX,EDX
0054412b  7e1a                      JLE 0x00544147
0054412d  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00544135  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0054413d  2bc8                      SUB ECX,EAX
0054413f  03ca                      ADD ECX,EDX
00544141  898fc40b0000              MOV dword ptr [EDI + 0xbc4],ECX
00544147  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0054414e  7f07                      JG 0x00544157
00544150  8b07                      MOV EAX,dword ptr [EDI]
00544152  8bcf                      MOV ECX,EDI
00544154  ff5028                    CALL dword ptr [EAX + 0x28]
00544157  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0054415f  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
00544165  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0054416d  8b4c247c                  MOV ECX,dword ptr [ESP + 0x7c]
00544171  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
00544177  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
0054417d  898740030000              MOV dword ptr [EDI + 0x340],EAX
00544183  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0054418b  5f                        POP EDI
0054418c  5e                        POP ESI
0054418d  33cc                      XOR ECX,ESP
0054418f  e897af5a00                CALL 0x00aef12b
00544194  8be5                      MOV ESP,EBP
00544196  5d                        POP EBP
00544197  c3                        RET
