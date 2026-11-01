; J460 NPC AI 0x004f4730 AI_004f4730
; types=893
; identities=893.0.0
; entry=004f4730
004f4730  53                        PUSH EBX
004f4731  8bdc                      MOV EBX,ESP
004f4733  83ec08                    SUB ESP,0x8
004f4736  83e4f8                    AND ESP,0xfffffff8
004f4739  83c404                    ADD ESP,0x4
004f473c  55                        PUSH EBP
004f473d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004f4740  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004f4744  8bec                      MOV EBP,ESP
004f4746  6aff                      PUSH -0x1
004f4748  684d3faf00                PUSH 0xaf3f4d
004f474d  64a100000000              MOV EAX,FS:[0x0]
004f4753  50                        PUSH EAX
004f4754  53                        PUSH EBX
004f4755  81eca8000000              SUB ESP,0xa8
004f475b  a1b493bf00                MOV EAX,[0x00bf93b4]
004f4760  33c5                      XOR EAX,EBP
004f4762  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004f4765  56                        PUSH ESI
004f4766  57                        PUSH EDI
004f4767  50                        PUSH EAX
004f4768  8d45f4                    LEA EAX,[EBP + -0xc]
004f476b  64a300000000              MOV FS:[0x0],EAX
004f4771  8bf9                      MOV EDI,ECX
004f4773  89bd6cffffff              MOV dword ptr [EBP + 0xffffff6c],EDI
004f4779  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
004f477c  8bc1                      MOV EAX,ECX
004f477e  83e00f                    AND EAX,0xf
004f4781  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004f4789  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
004f4791  f30f102dd0a2ba00          MOVSS XMM5,dword ptr [0x00baa2d0]
004f4799  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
004f47a1  660f6ec0                  MOVD XMM0,EAX
004f47a5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f47a9  c1e81f                    SHR EAX,0x1f
004f47ac  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f47b5  8bc1                      MOV EAX,ECX
004f47b7  c1e804                    SHR EAX,0x4
004f47ba  83e00f                    AND EAX,0xf
004f47bd  660f5af8                  CVTPD2PS XMM7,XMM0
004f47c1  660f6ec0                  MOVD XMM0,EAX
004f47c5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f47c9  c1e81f                    SHR EAX,0x1f
004f47cc  f30f58fa                  ADDSS XMM7,XMM2
004f47d0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f47d9  f30f59fb                  MULSS XMM7,XMM3
004f47dd  660f5ac8                  CVTPD2PS XMM1,XMM0
004f47e1  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
004f47e9  f30f59cd                  MULSS XMM1,XMM5
004f47ed  f30f11bd78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM7
004f47f5  f30f118d74ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM1
004f47fd  f7c100010000              TEST ECX,0x100
004f4803  740c                      JZ 0x004f4811
004f4805  f30f59c8                  MULSS XMM1,XMM0
004f4809  f30f118d74ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM1
004f4811  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004f4817  0f57e4                    XORPS XMM4,XMM4
004f481a  f30f103530abba00          MOVSS XMM6,dword ptr [0x00baab30]
004f4822  85c0                      TEST EAX,EAX
004f4824  0f84a3010000              JZ 0x004f49cd
004f482a  83f803                    CMP EAX,0x3
004f482d  0f85b3040000              JNZ 0x004f4ce6
004f4833  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004f483b  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004f4842  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
004f484a  9f                        LAHF
004f484b  f6c444                    TEST AH,0x44
004f484e  7a19                      JP 0x004f4869
004f4850  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004f4858  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004f485f  9f                        LAHF
004f4860  f6c444                    TEST AH,0x44
004f4863  0f8b7d040000              JNP 0x004f4ce6
004f4869  0f28d9                    MOVAPS XMM3,XMM1
004f486c  f30f599f9c030000          MULSS XMM3,dword ptr [EDI + 0x39c]
004f4874  f30f589fb00b0000          ADDSS XMM3,dword ptr [EDI + 0xbb0]
004f487c  0f28c3                    MOVAPS XMM0,XMM3
004f487f  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004f4886  0f2fc6                    COMISS XMM0,XMM6
004f4889  7631                      JBE 0x004f48bc
004f488b  0f28ce                    MOVAPS XMM1,XMM6
004f488e  0f28c3                    MOVAPS XMM0,XMM3
004f4891  e88a54faff                CALL 0x00499d20
004f4896  f30f109564ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff64]
004f489e  0f28d8                    MOVAPS XMM3,XMM0
004f48a1  f30f103530abba00          MOVSS XMM6,dword ptr [0x00baab30]
004f48a9  0f57e4                    XORPS XMM4,XMM4
004f48ac  f30f108d74ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff74]
004f48b4  f30f10bd78ffffff          MOVSS XMM7,dword ptr [EBP + 0xffffff78]
004f48bc  0f2f1d78aaba00            COMISS XMM3,dword ptr [0x00baaa78]
004f48c3  7606                      JBE 0x004f48cb
004f48c5  f30f5cde                  SUBSS XMM3,XMM6
004f48c9  eb11                      JMP 0x004f48dc
004f48cb  f30f10057caeba00          MOVSS XMM0,dword ptr [0x00baae7c]
004f48d3  0f2fc3                    COMISS XMM0,XMM3
004f48d6  7604                      JBE 0x004f48dc
004f48d8  f30f58de                  ADDSS XMM3,XMM6
004f48dc  0f28c1                    MOVAPS XMM0,XMM1
004f48df  f30f119fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM3
004f48e7  f30f590518a0ba00          MULSS XMM0,dword ptr [0x00baa018]
004f48ef  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004f48f7  f30f59c7                  MULSS XMM0,XMM7
004f48fb  f30f5f05f8acba00          MAXSS XMM0,dword ptr [0x00baacf8]
004f4903  f30f5d0520a1ba00          MINSS XMM0,dword ptr [0x00baa120]
004f490b  f30f5cc8                  SUBSS XMM1,XMM0
004f490f  0f2fe1                    COMISS XMM4,XMM1
004f4912  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
004f491a  761d                      JBE 0x004f4939
004f491c  0f1f4000                  NOP dword ptr [EAX]
004f4920  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004f4928  f30f58ca                  ADDSS XMM1,XMM2
004f492c  0f2fe1                    COMISS XMM4,XMM1
004f492f  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
004f4937  77e7                      JA 0x004f4920
004f4939  0f2fca                    COMISS XMM1,XMM2
004f493c  721b                      JC 0x004f4959
004f493e  6690                      NOP
004f4940  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004f4948  f30f5cc2                  SUBSS XMM0,XMM2
004f494c  0f2fc2                    COMISS XMM0,XMM2
004f494f  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004f4957  73e7                      JNC 0x004f4940
004f4959  f30f591d88a0ba00          MULSS XMM3,dword ptr [0x00baa088]
004f4961  0f28c3                    MOVAPS XMM0,XMM3
004f4964  f30f115d80                MOVSS dword ptr [EBP + -0x80],XMM3
004f4969  e8b28bf2ff                CALL 0x0041d520
004f496e  f30f118568ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM0
004f4976  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
004f497b  e8c08bf2ff                CALL 0x0041d540
004f4980  f30f108d68ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff68]
004f4988  f30f598578ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff78]
004f4990  f30f598d78ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff78]
004f4998  f30f588570ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff70]
004f49a0  f30f588f38030000          ADDSS XMM1,dword ptr [EDI + 0x338]
004f49a8  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004f49b0  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004f49b8  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004f49c0  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004f49c8  e9fe020000                JMP 0x004f4ccb
004f49cd  a17816c700                MOV EAX,[0x00c71678]
004f49d2  33c9                      XOR ECX,ECX
004f49d4  f30f103500aaba00          MOVSS XMM6,dword ptr [0x00baaa00]
004f49dc  c787c00b0000ffffffff      MOV dword ptr [EDI + 0xbc0],0xffffffff
004f49e6  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
004f49f0  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004f49f6  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
004f49fe  f30f10a740030000          MOVSS XMM4,dword ptr [EDI + 0x340]
004f4a06  897580                    MOV dword ptr [EBP + -0x80],ESI
004f4a09  0f1f8000000000            NOP dword ptr [EAX]
004f4a10  0f28c2                    MOVAPS XMM0,XMM2
004f4a13  0f28cc                    MOVAPS XMM1,XMM4
004f4a16  f30f5881b4c7c500          ADDSS XMM0,dword ptr [ECX + 0xc5c7b4]
004f4a1e  f30f5889b8c7c500          ADDSS XMM1,dword ptr [ECX + 0xc5c7b8]
004f4a26  f30f5cc3                  SUBSS XMM0,XMM3
004f4a2a  f30f5cce                  SUBSS XMM1,XMM6
004f4a2e  f30f5ec3                  DIVSS XMM0,XMM3
004f4a32  f30f5ecb                  DIVSS XMM1,XMM3
004f4a36  f30f58c5                  ADDSS XMM0,XMM5
004f4a3a  f30f58cd                  ADDSS XMM1,XMM5
004f4a3e  f30f2cd0                  CVTTSS2SI EDX,XMM0
004f4a42  f30f2cc1                  CVTTSS2SI EAX,XMM1
004f4a46  85d2                      TEST EDX,EDX
004f4a48  784b                      JS 0x004f4a95
004f4a4a  8b760c                    MOV ESI,dword ptr [ESI + 0xc]
004f4a4d  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
004f4a53  3bd6                      CMP EDX,ESI
004f4a55  7d4c                      JGE 0x004f4aa3
004f4a57  85c0                      TEST EAX,EAX
004f4a59  7848                      JS 0x004f4aa3
004f4a5b  8b7d80                    MOV EDI,dword ptr [EBP + -0x80]
004f4a5e  3b4710                    CMP EAX,dword ptr [EDI + 0x10]
004f4a61  8bbd6cffffff              MOV EDI,dword ptr [EBP + 0xffffff6c]
004f4a67  7d3a                      JGE 0x004f4aa3
004f4a69  0fafc6                    IMUL EAX,ESI
004f4a6c  03c2                      ADD EAX,EDX
004f4a6e  3dbf010000                CMP EAX,0x1bf
004f4a73  772e                      JA 0x004f4aa3
004f4a75  8b5580                    MOV EDX,dword ptr [EBP + -0x80]
004f4a78  8b748224                  MOV ESI,dword ptr [EDX + EAX*0x4 + 0x24]
004f4a7c  85f6                      TEST ESI,ESI
004f4a7e  7413                      JZ 0x004f4a93
004f4a80  8b463c                    MOV EAX,dword ptr [ESI + 0x3c]
004f4a83  83f803                    CMP EAX,0x3
004f4a86  7420                      JZ 0x004f4aa8
004f4a88  83f804                    CMP EAX,0x4
004f4a8b  7506                      JNZ 0x004f4a93
004f4a8d  837e040f                  CMP dword ptr [ESI + 0x4],0xf
004f4a91  7515                      JNZ 0x004f4aa8
004f4a93  8bf2                      MOV ESI,EDX
004f4a95  83c108                    ADD ECX,0x8
004f4a98  83f920                    CMP ECX,0x20
004f4a9b  0f826fffffff              JC 0x004f4a10
004f4aa1  eb46                      JMP 0x004f4ae9
004f4aa3  8b7580                    MOV ESI,dword ptr [EBP + -0x80]
004f4aa6  ebed                      JMP 0x004f4a95
004f4aa8  8b4624                    MOV EAX,dword ptr [ESI + 0x24]
004f4aab  99                        CDQ
004f4aac  f7bd70ffffff              IDIV dword ptr [EBP + 0xffffff70]
004f4ab2  660f6ec0                  MOVD XMM0,EAX
004f4ab6  660f6eca                  MOVD XMM1,EDX
004f4aba  0f5bc9                    CVTDQ2PS XMM1,XMM1
004f4abd  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f4ac0  f30f59cb                  MULSS XMM1,XMM3
004f4ac4  f30f59c3                  MULSS XMM0,XMM3
004f4ac8  f30f58cb                  ADDSS XMM1,XMM3
004f4acc  f30f58c6                  ADDSS XMM0,XMM6
004f4ad0  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
004f4ad8  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004f4ae0  8b4624                    MOV EAX,dword ptr [ESI + 0x24]
004f4ae3  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004f4ae9  6a01                      PUSH 0x1
004f4aeb  68240ab600                PUSH 0xb60a24
004f4af0  8d4f48                    LEA ECX,[EDI + 0x48]
004f4af3  e8f85ff1ff                CALL 0x0040aaf0
004f4af8  84c0                      TEST AL,AL
004f4afa  7417                      JZ 0x004f4b13
004f4afc  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004f4b03  740e                      JZ 0x004f4b13
004f4b05  8d8f98000000              LEA ECX,[EDI + 0x98]
004f4b0b  0f57c9                    XORPS XMM1,XMM1
004f4b0e  e8ed42f1ff                CALL 0x00408e00
004f4b13  6a01                      PUSH 0x1
004f4b15  68e804b600                PUSH 0xb604e8
004f4b1a  8d4f48                    LEA ECX,[EDI + 0x48]
004f4b1d  e8ae5af1ff                CALL 0x0040a5d0
004f4b22  84c0                      TEST AL,AL
004f4b24  7420                      JZ 0x004f4b46
004f4b26  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f4b29  85c0                      TEST EAX,EAX
004f4b2b  7419                      JZ 0x004f4b46
004f4b2d  8d4f78                    LEA ECX,[EDI + 0x78]
004f4b30  0f57c9                    XORPS XMM1,XMM1
004f4b33  e8c842f1ff                CALL 0x00408e00
004f4b38  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f4b3b  85c0                      TEST EAX,EAX
004f4b3d  7407                      JZ 0x004f4b46
004f4b3f  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004f4b46  6a01                      PUSH 0x1
004f4b48  8d4f48                    LEA ECX,[EDI + 0x48]
004f4b4b  e8d066f1ff                CALL 0x0040b220
004f4b50  6a01                      PUSH 0x1
004f4b52  8d4f48                    LEA ECX,[EDI + 0x48]
004f4b55  c6407400                  MOV byte ptr [EAX + 0x74],0x0
004f4b59  e8c266f1ff                CALL 0x0040b220
004f4b5e  6a01                      PUSH 0x1
004f4b60  8d4f48                    LEA ECX,[EDI + 0x48]
004f4b63  c7402801000000            MOV dword ptr [EAX + 0x28],0x1
004f4b6a  e8b166f1ff                CALL 0x0040b220
004f4b6f  6a02                      PUSH 0x2
004f4b71  8d4f48                    LEA ECX,[EDI + 0x48]
004f4b74  c7402c00000000            MOV dword ptr [EAX + 0x2c],0x0
004f4b7b  e8a066f1ff                CALL 0x0040b220
004f4b80  c6407400                  MOV byte ptr [EAX + 0x74],0x0
004f4b84  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004f4b8a  818f6c01000008200000      OR dword ptr [EDI + 0x16c],0x2008
004f4b94  83e1fb                    AND ECX,0xfffffffb
004f4b97  81c911000500              OR ECX,0x50011
004f4b9d  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004f4ba4  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004f4baa  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004f4bb4  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004f4bbc  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
004f4bc3  f30f115580                MOVSS dword ptr [EBP + -0x80],XMM2
004f4bc8  9f                        LAHF
004f4bc9  f6c444                    TEST AH,0x44
004f4bcc  7a3d                      JP 0x004f4c0b
004f4bce  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004f4bd6  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004f4bdd  9f                        LAHF
004f4bde  f6c444                    TEST AH,0x44
004f4be1  7a28                      JP 0x004f4c0b
004f4be3  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004f4bed  b805000000                MOV EAX,0x5
004f4bf2  c787bc0b0000000020c1      MOV dword ptr [EDI + 0xbbc],0xc1200000
004f4bfc  c787b40b00000000c0c0      MOV dword ptr [EDI + 0xbb4],0xc0c00000
004f4c06  e9a6000000                JMP 0x004f4cb1
004f4c0b  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004f4c13  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004f4c1b  f30f5cca                  SUBSS XMM1,XMM2
004f4c1f  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
004f4c27  f30f5cc2                  SUBSS XMM0,XMM2
004f4c2b  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
004f4c30  e82b51faff                CALL 0x00499d60
004f4c35  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004f4c3d  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
004f4c47  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004f4c4f  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004f4c57  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
004f4c5f  e8bc88f2ff                CALL 0x0041d520
004f4c64  f30f118568ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM0
004f4c6c  f30f108570ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff70]
004f4c74  e8c788f2ff                CALL 0x0041d540
004f4c79  f30f108d68ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff68]
004f4c81  33c0                      XOR EAX,EAX
004f4c83  f30f598578ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff78]
004f4c8b  f30f598d78ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff78]
004f4c93  f30f105580                MOVSS XMM2,dword ptr [EBP + -0x80]
004f4c98  f30f58d0                  ADDSS XMM2,XMM0
004f4c9c  f30f584d84                ADDSS XMM1,dword ptr [EBP + -0x7c]
004f4ca1  f30f11973c030000          MOVSS dword ptr [EDI + 0x33c],XMM2
004f4ca9  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
004f4cb1  898784010000              MOV dword ptr [EDI + 0x184],EAX
004f4cb7  c7874c03000000000000      MOV dword ptr [EDI + 0x34c],0x0
004f4cc1  c78750030000000060c1      MOV dword ptr [EDI + 0x350],0xc1600000
004f4ccb  f30f103530abba00          MOVSS XMM6,dword ptr [0x00baab30]
004f4cd3  0f57e4                    XORPS XMM4,XMM4
004f4cd6  f30f102dd0a2ba00          MOVSS XMM5,dword ptr [0x00baa2d0]
004f4cde  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
004f4ce6  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004f4cee  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004f4cf5  9f                        LAHF
004f4cf6  f6c444                    TEST AH,0x44
004f4cf9  0f8a44060000              JP 0x004f5343
004f4cff  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004f4d07  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004f4d0e  9f                        LAHF
004f4d0f  f6c444                    TEST AH,0x44
004f4d12  0f8a2b060000              JP 0x004f5343
004f4d18  83bf8401000007            CMP dword ptr [EDI + 0x184],0x7
004f4d1f  f30f1097bc0b0000          MOVSS XMM2,dword ptr [EDI + 0xbbc]
004f4d27  7511                      JNZ 0x004f4d3a
004f4d29  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004f4d33  b807000000                MOV EAX,0x7
004f4d38  eb3b                      JMP 0x004f4d75
004f4d3a  33c0                      XOR EAX,EAX
004f4d3c  b904000000                MOV ECX,0x4
004f4d41  0f2f1530aeba00            COMISS XMM2,dword ptr [0x00baae30]
004f4d48  0f47c1                    CMOVA EAX,ECX
004f4d4b  0f2f1550adba00            COMISS XMM2,dword ptr [0x00baad50]
004f4d52  898788010000              MOV dword ptr [EDI + 0x188],EAX
004f4d58  7610                      JBE 0x004f4d6a
004f4d5a  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004f4d62  8d4101                    LEA EAX,[ECX + 0x1]
004f4d65  0f2fc4                    COMISS XMM0,XMM4
004f4d68  7305                      JNC 0x004f4d6f
004f4d6a  b806000000                MOV EAX,0x6
004f4d6f  898784010000              MOV dword ptr [EDI + 0x184],EAX
004f4d75  0f2fe2                    COMISS XMM4,XMM2
004f4d78  7716                      JA 0x004f4d90
004f4d7a  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004f4d82  0f2fe0                    COMISS XMM4,XMM0
004f4d85  7709                      JA 0x004f4d90
004f4d87  83f807                    CMP EAX,0x7
004f4d8a  0f8561020000              JNZ 0x004f4ff1
004f4d90  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004f4d98  f30f10b79c030000          MOVSS XMM6,dword ptr [EDI + 0x39c]
004f4da0  0f28c1                    MOVAPS XMM0,XMM1
004f4da3  f30f59c6                  MULSS XMM0,XMM6
004f4da7  f30f5935a4a3ba00          MULSS XMM6,dword ptr [0x00baa3a4]
004f4daf  f30f58d0                  ADDSS XMM2,XMM0
004f4db3  f30f58f1                  ADDSS XMM6,XMM1
004f4db7  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
004f4dbc  f30f1197bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM2
004f4dc4  f30f11b574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM6
004f4dcc  f30f11b7b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM6
004f4dd4  83f807                    CMP EAX,0x7
004f4dd7  7545                      JNZ 0x004f4e1e
004f4dd9  0f2f151ca8ba00            COMISS XMM2,dword ptr [0x00baa81c]
004f4de0  7634                      JBE 0x004f4e16
004f4de2  e879a11f00                CALL 0x006eef60
004f4de7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f4ded  8d973c030000              LEA EDX,[EDI + 0x33c]
004f4df3  50                        PUSH EAX
004f4df4  6a00                      PUSH 0x0
004f4df6  6a00                      PUSH 0x0
004f4df8  6840b6c700                PUSH 0xc7b640
004f4dfd  52                        PUSH EDX
004f4dfe  6a0f                      PUSH 0xf
004f4e00  68e8030000                PUSH 0x3e8
004f4e05  e8163df3ff                CALL 0x00428b20
004f4e0a  8b07                      MOV EAX,dword ptr [EDI]
004f4e0c  8bcf                      MOV ECX,EDI
004f4e0e  ff5028                    CALL dword ptr [EAX + 0x28]
004f4e11  e9ea100000                JMP 0x004f5f00
004f4e16  0f28c6                    MOVAPS XMM0,XMM6
004f4e19  e9d3010000                JMP 0x004f4ff1
004f4e1e  0f2fd4                    COMISS XMM2,XMM4
004f4e21  0f28c6                    MOVAPS XMM0,XMM6
004f4e24  0f86c7010000              JBE 0x004f4ff1
004f4e2a  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004f4e32  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004f4e3a  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004f4e42  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004f4e4a  a17816c700                MOV EAX,[0x00c71678]
004f4e4f  f30f5cc3                  SUBSS XMM0,XMM3
004f4e53  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
004f4e5b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f4e61  f30f5ec3                  DIVSS XMM0,XMM3
004f4e65  f30f5ecb                  DIVSS XMM1,XMM3
004f4e69  f30f58c5                  ADDSS XMM0,XMM5
004f4e6d  f30f58cd                  ADDSS XMM1,XMM5
004f4e71  f30f2cd0                  CVTTSS2SI EDX,XMM0
004f4e75  f30f2cc1                  CVTTSS2SI EAX,XMM1
004f4e79  85d2                      TEST EDX,EDX
004f4e7b  7817                      JS 0x004f4e94
004f4e7d  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
004f4e80  3bd6                      CMP EDX,ESI
004f4e82  7d10                      JGE 0x004f4e94
004f4e84  85c0                      TEST EAX,EAX
004f4e86  780c                      JS 0x004f4e94
004f4e88  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
004f4e8b  7d07                      JGE 0x004f4e94
004f4e8d  0fafc6                    IMUL EAX,ESI
004f4e90  03c2                      ADD EAX,EDX
004f4e92  eb03                      JMP 0x004f4e97
004f4e94  83c8ff                    OR EAX,0xffffffff
004f4e97  50                        PUSH EAX
004f4e98  e863b92f00                CALL 0x007f0800
004f4e9d  83f801                    CMP EAX,0x1
004f4ea0  751c                      JNZ 0x004f4ebe
004f4ea2  f30f105584                MOVSS XMM2,dword ptr [EBP + -0x7c]
004f4ea7  f30f108574ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff74]
004f4eaf  c7878401000007000000      MOV dword ptr [EDI + 0x184],0x7
004f4eb9  e933010000                JMP 0x004f4ff1
004f4ebe  f30f108d74ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff74]
004f4ec6  0f57e4                    XORPS XMM4,XMM4
004f4ec9  0f2fcc                    COMISS XMM1,XMM4
004f4ecc  c787bc0b000000000000      MOV dword ptr [EDI + 0xbbc],0x0
004f4ed6  0f57d2                    XORPS XMM2,XMM2
004f4ed9  0f28c1                    MOVAPS XMM0,XMM1
004f4edc  0f860f010000              JBE 0x004f4ff1
004f4ee2  0f2f0d5ca7ba00            COMISS XMM1,dword ptr [0x00baa75c]
004f4ee9  0f86f5000000              JBE 0x004f4fe4
004f4eef  e86ca01f00                CALL 0x006eef60
004f4ef4  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f4efa  8d8d74ffffff              LEA ECX,[EBP + 0xffffff74]
004f4f00  c78570ffffff9a99993f      MOV dword ptr [EBP + 0xffffff70],0x3f99999a
004f4f0a  c78574ffffff45020000      MOV dword ptr [EBP + 0xffffff74],0x245
004f4f14  660f6ec0                  MOVD XMM0,EAX
004f4f18  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f4f1c  c1e81f                    SHR EAX,0x1f
004f4f1f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f4f28  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004f4f2e  660f5ac8                  CVTPD2PS XMM1,XMM0
004f4f32  f30f1005b0a4ba00          MOVSS XMM0,dword ptr [0x00baa4b0]
004f4f3a  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004f4f42  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004f4f4a  f30f580de0a3ba00          ADDSS XMM1,dword ptr [0x00baa3e0]
004f4f52  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
004f4f5a  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004f4f62  8d7d84                    LEA EDI,[EBP + -0x7c]
004f4f65  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004f4f6d  f30f580d98a1ba00          ADDSS XMM1,dword ptr [0x00baa198]
004f4f75  0f2fc1                    COMISS XMM0,XMM1
004f4f78  f30f114d84                MOVSS dword ptr [EBP + -0x7c],XMM1
004f4f7d  0f46f8                    CMOVBE EDI,EAX
004f4f80  e8fb174600                CALL 0x00956780
004f4f85  f30f108568ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff68]
004f4f8d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f4f93  83ec08                    SUB ESP,0x8
004f4f96  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f4f9e  f30f110424                MOVSS dword ptr [ESP],XMM0
004f4fa3  f30f1007                  MOVSS XMM0,dword ptr [EDI]
004f4fa7  6a00                      PUSH 0x0
004f4fa9  6a02                      PUSH 0x2
004f4fab  51                        PUSH ECX
004f4fac  f30f110424                MOVSS dword ptr [ESP],XMM0
004f4fb1  ffb574ffffff              PUSH dword ptr [EBP + 0xffffff74]
004f4fb7  e8748c4300                CALL 0x0092dc30
004f4fbc  8bbd6cffffff              MOV EDI,dword ptr [EBP + 0xffffff6c]
004f4fc2  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004f4fca  f30f590520adba00          MULSS XMM0,dword ptr [0x00baad20]
004f4fd2  f30f1097bc0b0000          MOVSS XMM2,dword ptr [EDI + 0xbbc]
004f4fda  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004f4fe2  eb0d                      JMP 0x004f4ff1
004f4fe4  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
004f4fee  0f57c0                    XORPS XMM0,XMM0
004f4ff1  f30f5c1548a8ba00          SUBSS XMM2,dword ptr [0x00baa848]
004f4ff9  f30f109f64030000          MOVSS XMM3,dword ptr [EDI + 0x364]
004f5001  f30f10a760030000          MOVSS XMM4,dword ptr [EDI + 0x360]
004f5009  0f28cc                    MOVAPS XMM1,XMM4
004f500c  f30f59cc                  MULSS XMM1,XMM4
004f5010  f30f119750030000          MOVSS dword ptr [EDI + 0x350],XMM2
004f5018  0f28d3                    MOVAPS XMM2,XMM3
004f501b  f30f59d3                  MULSS XMM2,XMM3
004f501f  f30f58ca                  ADDSS XMM1,XMM2
004f5023  0f2f0d5ca7ba00            COMISS XMM1,dword ptr [0x00baa75c]
004f502a  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
004f5032  0f86cd010000              JBE 0x004f5205
004f5038  0f28cc                    MOVAPS XMM1,XMM4
004f503b  0f28c3                    MOVAPS XMM0,XMM3
004f503e  e81d4dfaff                CALL 0x00499d60
004f5043  a1e804b600                MOV EAX,[0x00b604e8]
004f5048  0f28d8                    MOVAPS XMM3,XMM0
004f504b  f30f591d48a9ba00          MULSS XMM3,dword ptr [0x00baa948]
004f5053  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
004f5056  f30f101530abba00          MOVSS XMM2,dword ptr [0x00baab30]
004f505e  66a1ec04b600              MOV AX,[0x00b604ec]
004f5064  f30f581db4a9ba00          ADDSS XMM3,dword ptr [0x00baa9b4]
004f506c  668945e8                  MOV word ptr [EBP + -0x18],AX
004f5070  0f28c3                    MOVAPS XMM0,XMM3
004f5073  f30f119d70ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM3
004f507b  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004f5082  0f28cb                    MOVAPS XMM1,XMM3
004f5085  0f2fc2                    COMISS XMM0,XMM2
004f5088  7616                      JBE 0x004f50a0
004f508a  0f28ca                    MOVAPS XMM1,XMM2
004f508d  0f28c3                    MOVAPS XMM0,XMM3
004f5090  e88b4cfaff                CALL 0x00499d20
004f5095  f30f101530abba00          MOVSS XMM2,dword ptr [0x00baab30]
004f509d  0f28c8                    MOVAPS XMM1,XMM0
004f50a0  0f2f0d78aaba00            COMISS XMM1,dword ptr [0x00baaa78]
004f50a7  7606                      JBE 0x004f50af
004f50a9  f30f5cca                  SUBSS XMM1,XMM2
004f50ad  eb11                      JMP 0x004f50c0
004f50af  f30f10057caeba00          MOVSS XMM0,dword ptr [0x00baae7c]
004f50b7  0f2fc1                    COMISS XMM0,XMM1
004f50ba  7604                      JBE 0x004f50c0
004f50bc  f30f58ca                  ADDSS XMM1,XMM2
004f50c0  f30f5e0d10a9ba00          DIVSS XMM1,dword ptr [0x00baa910]
004f50c8  83ec08                    SUB ESP,0x8
004f50cb  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
004f50d3  f30f114d84                MOVSS dword ptr [EBP + -0x7c],XMM1
004f50d8  d94584                    FLD dword ptr [EBP + -0x7c]
004f50db  dd1c24                    FSTP qword ptr [ESP]
004f50de  e834b85f00                CALL 0x00af0917
004f50e3  d95d84                    FSTP dword ptr [EBP + -0x7c]
004f50e6  f30f2c4584                CVTTSS2SI EAX,dword ptr [EBP + -0x7c]
004f50eb  83c408                    ADD ESP,0x8
004f50ee  85c0                      TEST EAX,EAX
004f50f0  8d4808                    LEA ECX,[EAX + 0x8]
004f50f3  0f49c8                    CMOVNS ECX,EAX
004f50f6  8ac1                      MOV AL,CL
004f50f8  0430                      ADD AL,0x30
004f50fa  8845e8                    MOV byte ptr [EBP + -0x18],AL
004f50fd  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f5100  660f6ec1                  MOVD XMM0,ECX
004f5104  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f5107  f30f590510a9ba00          MULSS XMM0,dword ptr [0x00baa910]
004f510f  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
004f5114  85c0                      TEST EAX,EAX
004f5116  740e                      JZ 0x004f5126
004f5118  50                        PUSH EAX
004f5119  8d4dc4                    LEA ECX,[EBP + -0x3c]
004f511c  e82f7ef1ff                CALL 0x0040cf50
004f5121  8b55c4                    MOV EDX,dword ptr [EBP + -0x3c]
004f5124  eb0f                      JMP 0x004f5135
004f5126  33d2                      XOR EDX,EDX
004f5128  c745d80f000000            MOV dword ptr [EBP + -0x28],0xf
004f512f  8955c4                    MOV dword ptr [EBP + -0x3c],EDX
004f5132  8955d4                    MOV dword ptr [EBP + -0x2c],EDX
004f5135  8d75e4                    LEA ESI,[EBP + -0x1c]
004f5138  89956cffffff              MOV dword ptr [EBP + 0xffffff6c],EDX
004f513e  8d4e01                    LEA ECX,[ESI + 0x1]
004f5141  8a06                      MOV AL,byte ptr [ESI]
004f5143  46                        INC ESI
004f5144  84c0                      TEST AL,AL
004f5146  75f9                      JNZ 0x004f5141
004f5148  2bf1                      SUB ESI,ECX
004f514a  8d45e4                    LEA EAX,[EBP + -0x1c]
004f514d  837dd810                  CMP dword ptr [EBP + -0x28],0x10
004f5151  8d4dc4                    LEA ECX,[EBP + -0x3c]
004f5154  56                        PUSH ESI
004f5155  0f43ca                    CMOVNC ECX,EDX
004f5158  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
004f515b  50                        PUSH EAX
004f515c  e87f79f1ff                CALL 0x0040cae0
004f5161  88857fffffff              MOV byte ptr [EBP + 0xffffff7f],AL
004f5167  83c408                    ADD ESP,0x8
004f516a  8b45d8                    MOV EAX,dword ptr [EBP + -0x28]
004f516d  83f810                    CMP EAX,0x10
004f5170  7233                      JC 0x004f51a5
004f5172  8b8d6cffffff              MOV ECX,dword ptr [EBP + 0xffffff6c]
004f5178  8d5001                    LEA EDX,[EAX + 0x1]
004f517b  8bc1                      MOV EAX,ECX
004f517d  81fa00100000              CMP EDX,0x1000
004f5183  7216                      JC 0x004f519b
004f5185  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004f5188  83c223                    ADD EDX,0x23
004f518b  2bc1                      SUB EAX,ECX
004f518d  83c0fc                    ADD EAX,-0x4
004f5190  83f81f                    CMP EAX,0x1f
004f5193  7606                      JBE 0x004f519b
004f5195  ff159488b100              CALL dword ptr [0x00b18894]
004f519b  52                        PUSH EDX
004f519c  51                        PUSH ECX
004f519d  e8ba9f5f00                CALL 0x00aef15c
004f51a2  83c408                    ADD ESP,0x8
004f51a5  80bd7fffffff00            CMP byte ptr [EBP + 0xffffff7f],0x0
004f51ac  7532                      JNZ 0x004f51e0
004f51ae  6a01                      PUSH 0x1
004f51b0  8d45e4                    LEA EAX,[EBP + -0x1c]
004f51b3  50                        PUSH EAX
004f51b4  8d4f48                    LEA ECX,[EDI + 0x48]
004f51b7  e81454f1ff                CALL 0x0040a5d0
004f51bc  84c0                      TEST AL,AL
004f51be  7420                      JZ 0x004f51e0
004f51c0  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f51c3  85c0                      TEST EAX,EAX
004f51c5  7419                      JZ 0x004f51e0
004f51c7  8d4f78                    LEA ECX,[EDI + 0x78]
004f51ca  0f57c9                    XORPS XMM1,XMM1
004f51cd  e82e3cf1ff                CALL 0x00408e00
004f51d2  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f51d5  85c0                      TEST EAX,EAX
004f51d7  7407                      JZ 0x004f51e0
004f51d9  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004f51e0  f30f108570ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff70]
004f51e8  f30f5c4584                SUBSS XMM0,dword ptr [EBP + -0x7c]
004f51ed  f30f108d68ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff68]
004f51f5  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
004f51fd  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004f5205  f30f59c0                  MULSS XMM0,XMM0
004f5209  f30f58c1                  ADDSS XMM0,XMM1
004f520d  e83e08f4ff                CALL 0x00435a50
004f5212  0f28c8                    MOVAPS XMM1,XMM0
004f5215  f30f109564ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff64]
004f521d  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004f5225  f30f590d8ca0ba00          MULSS XMM1,dword ptr [0x00baa08c]
004f522d  0f57db                    XORPS XMM3,XMM3
004f5230  f30f5e0530a7ba00          DIVSS XMM0,dword ptr [0x00baa730]
004f5238  f30f588fb00b0000          ADDSS XMM1,dword ptr [EDI + 0xbb0]
004f5240  f30f5fc3                  MAXSS XMM0,XMM3
004f5244  0f2fd9                    COMISS XMM3,XMM1
004f5247  f30f5dc2                  MINSS XMM0,XMM2
004f524b  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
004f5253  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
004f525b  f30f590540a1ba00          MULSS XMM0,dword ptr [0x00baa140]
004f5263  f30f5805c8a3ba00          ADDSS XMM0,dword ptr [0x00baa3c8]
004f526b  f30f59876c030000          MULSS XMM0,dword ptr [EDI + 0x36c]
004f5273  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f527b  7624                      JBE 0x004f52a1
004f527d  0f1f00                    NOP dword ptr [EAX]
004f5280  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004f5288  f30f58ca                  ADDSS XMM1,XMM2
004f528c  0f2fd9                    COMISS XMM3,XMM1
004f528f  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
004f5297  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
004f529f  77df                      JA 0x004f5280
004f52a1  0f2fca                    COMISS XMM1,XMM2
004f52a4  722b                      JC 0x004f52d1
004f52a6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
004f52b0  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004f52b8  f30f5cca                  SUBSS XMM1,XMM2
004f52bc  0f2fca                    COMISS XMM1,XMM2
004f52bf  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
004f52c7  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
004f52cf  73df                      JNC 0x004f52b0
004f52d1  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004f52d4  85f6                      TEST ESI,ESI
004f52d6  743c                      JZ 0x004f5314
004f52d8  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
004f52e0  83ec08                    SUB ESP,0x8
004f52e3  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
004f52e8  d94584                    FLD dword ptr [EBP + -0x7c]
004f52eb  dd1c24                    FSTP qword ptr [ESP]
004f52ee  e824b65f00                CALL 0x00af0917
004f52f3  660f6e4630                MOVD XMM0,dword ptr [ESI + 0x30]
004f52f8  83c408                    ADD ESP,0x8
004f52fb  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f52fe  d95d84                    FSTP dword ptr [EBP + -0x7c]
004f5301  f30f598578ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff78]
004f5309  f30f2c4d84                CVTTSS2SI ECX,dword ptr [EBP + -0x7c]
004f530e  f30f2cc0                  CVTTSS2SI EAX,XMM0
004f5312  eb0b                      JMP 0x004f531f
004f5314  f30f59cb                  MULSS XMM1,XMM3
004f5318  83c9ff                    OR ECX,0xffffffff
004f531b  f30f2cc1                  CVTTSS2SI EAX,XMM1
004f531f  3bc1                      CMP EAX,ECX
004f5321  0f84da080000              JZ 0x004f5c01
004f5327  85f6                      TEST ESI,ESI
004f5329  0f84d2080000              JZ 0x004f5c01
004f532f  660f6ec8                  MOVD XMM1,EAX
004f5333  8d4f78                    LEA ECX,[EDI + 0x78]
004f5336  0f5bc9                    CVTDQ2PS XMM1,XMM1
004f5339  e8c23af1ff                CALL 0x00408e00
004f533e  e9be080000                JMP 0x004f5c01
004f5343  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004f534b  a1e804b600                MOV EAX,[0x00b604e8]
004f5350  0f28c8                    MOVAPS XMM1,XMM0
004f5353  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004f535a  0f2fce                    COMISS XMM1,XMM6
004f535d  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004f5360  66a1ec04b600              MOV AX,[0x00b604ec]
004f5366  668945e0                  MOV word ptr [EBP + -0x20],AX
004f536a  7610                      JBE 0x004f537c
004f536c  0f28ce                    MOVAPS XMM1,XMM6
004f536f  e8ac49faff                CALL 0x00499d20
004f5374  f30f103530abba00          MOVSS XMM6,dword ptr [0x00baab30]
004f537c  0f2f0578aaba00            COMISS XMM0,dword ptr [0x00baaa78]
004f5383  7606                      JBE 0x004f538b
004f5385  f30f5cc6                  SUBSS XMM0,XMM6
004f5389  eb11                      JMP 0x004f539c
004f538b  f30f100d7caeba00          MOVSS XMM1,dword ptr [0x00baae7c]
004f5393  0f2fc8                    COMISS XMM1,XMM0
004f5396  7604                      JBE 0x004f539c
004f5398  f30f58c6                  ADDSS XMM0,XMM6
004f539c  f30f5e0510a9ba00          DIVSS XMM0,dword ptr [0x00baa910]
004f53a4  83ec08                    SUB ESP,0x8
004f53a7  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004f53af  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
004f53b4  d94584                    FLD dword ptr [EBP + -0x7c]
004f53b7  dd1c24                    FSTP qword ptr [ESP]
004f53ba  e858b55f00                CALL 0x00af0917
004f53bf  d95d84                    FSTP dword ptr [EBP + -0x7c]
004f53c2  f30f2c4584                CVTTSS2SI EAX,dword ptr [EBP + -0x7c]
004f53c7  83c408                    ADD ESP,0x8
004f53ca  85c0                      TEST EAX,EAX
004f53cc  8d4808                    LEA ECX,[EAX + 0x8]
004f53cf  0f49c8                    CMOVNS ECX,EAX
004f53d2  8ac1                      MOV AL,CL
004f53d4  0430                      ADD AL,0x30
004f53d6  8845e0                    MOV byte ptr [EBP + -0x20],AL
004f53d9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f53dc  660f6ec1                  MOVD XMM0,ECX
004f53e0  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f53e3  f30f590510a9ba00          MULSS XMM0,dword ptr [0x00baa910]
004f53eb  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
004f53f0  85c0                      TEST EAX,EAX
004f53f2  740e                      JZ 0x004f5402
004f53f4  50                        PUSH EAX
004f53f5  8d4dc4                    LEA ECX,[EBP + -0x3c]
004f53f8  e8537bf1ff                CALL 0x0040cf50
004f53fd  8b55c4                    MOV EDX,dword ptr [EBP + -0x3c]
004f5400  eb0f                      JMP 0x004f5411
004f5402  33d2                      XOR EDX,EDX
004f5404  c745d80f000000            MOV dword ptr [EBP + -0x28],0xf
004f540b  8955c4                    MOV dword ptr [EBP + -0x3c],EDX
004f540e  8955d4                    MOV dword ptr [EBP + -0x2c],EDX
004f5411  8d75dc                    LEA ESI,[EBP + -0x24]
004f5414  899578ffffff              MOV dword ptr [EBP + 0xffffff78],EDX
004f541a  8d4e01                    LEA ECX,[ESI + 0x1]
004f541d  0f1f00                    NOP dword ptr [EAX]
004f5420  8a06                      MOV AL,byte ptr [ESI]
004f5422  46                        INC ESI
004f5423  84c0                      TEST AL,AL
004f5425  75f9                      JNZ 0x004f5420
004f5427  2bf1                      SUB ESI,ECX
004f5429  8d45dc                    LEA EAX,[EBP + -0x24]
004f542c  837dd810                  CMP dword ptr [EBP + -0x28],0x10
004f5430  8d4dc4                    LEA ECX,[EBP + -0x3c]
004f5433  56                        PUSH ESI
004f5434  0f43ca                    CMOVNC ECX,EDX
004f5437  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
004f543a  50                        PUSH EAX
004f543b  e8a076f1ff                CALL 0x0040cae0
004f5440  88857fffffff              MOV byte ptr [EBP + 0xffffff7f],AL
004f5446  83c408                    ADD ESP,0x8
004f5449  8b45d8                    MOV EAX,dword ptr [EBP + -0x28]
004f544c  83f810                    CMP EAX,0x10
004f544f  7233                      JC 0x004f5484
004f5451  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
004f5457  8d5001                    LEA EDX,[EAX + 0x1]
004f545a  8bc1                      MOV EAX,ECX
004f545c  81fa00100000              CMP EDX,0x1000
004f5462  7216                      JC 0x004f547a
004f5464  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004f5467  83c223                    ADD EDX,0x23
004f546a  2bc1                      SUB EAX,ECX
004f546c  83c0fc                    ADD EAX,-0x4
004f546f  83f81f                    CMP EAX,0x1f
004f5472  7606                      JBE 0x004f547a
004f5474  ff159488b100              CALL dword ptr [0x00b18894]
004f547a  52                        PUSH EDX
004f547b  51                        PUSH ECX
004f547c  e8db9c5f00                CALL 0x00aef15c
004f5481  83c408                    ADD ESP,0x8
004f5484  80bd7fffffff00            CMP byte ptr [EBP + 0xffffff7f],0x0
004f548b  7532                      JNZ 0x004f54bf
004f548d  6a01                      PUSH 0x1
004f548f  8d45dc                    LEA EAX,[EBP + -0x24]
004f5492  50                        PUSH EAX
004f5493  8d4f48                    LEA ECX,[EDI + 0x48]
004f5496  e83551f1ff                CALL 0x0040a5d0
004f549b  84c0                      TEST AL,AL
004f549d  7420                      JZ 0x004f54bf
004f549f  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f54a2  85c0                      TEST EAX,EAX
004f54a4  7419                      JZ 0x004f54bf
004f54a6  8d4f78                    LEA ECX,[EDI + 0x78]
004f54a9  0f57c9                    XORPS XMM1,XMM1
004f54ac  e84f39f1ff                CALL 0x00408e00
004f54b1  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f54b4  85c0                      TEST EAX,EAX
004f54b6  7407                      JZ 0x004f54bf
004f54b8  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004f54bf  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
004f54c7  0f28c2                    MOVAPS XMM0,XMM2
004f54ca  f30f5c4584                SUBSS XMM0,dword ptr [EBP + -0x7c]
004f54cf  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
004f54d7  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f54da  85c0                      TEST EAX,EAX
004f54dc  742b                      JZ 0x004f5509
004f54de  660f6e4030                MOVD XMM0,dword ptr [EAX + 0x30]
004f54e3  8d4f78                    LEA ECX,[EDI + 0x78]
004f54e6  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f54e9  f30f5987b40b0000          MULSS XMM0,dword ptr [EDI + 0xbb4]
004f54f1  f30f2cc0                  CVTTSS2SI EAX,XMM0
004f54f5  660f6ec8                  MOVD XMM1,EAX
004f54f9  0f5bc9                    CVTDQ2PS XMM1,XMM1
004f54fc  e8ff38f1ff                CALL 0x00408e00
004f5501  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
004f5509  f30f100530abba00          MOVSS XMM0,dword ptr [0x00baab30]
004f5511  0f28ca                    MOVAPS XMM1,XMM2
004f5514  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004f551b  0f2fc8                    COMISS XMM1,XMM0
004f551e  7616                      JBE 0x004f5536
004f5520  0f28c8                    MOVAPS XMM1,XMM0
004f5523  0f28c2                    MOVAPS XMM0,XMM2
004f5526  e8f547faff                CALL 0x00499d20
004f552b  0f28d0                    MOVAPS XMM2,XMM0
004f552e  f30f100530abba00          MOVSS XMM0,dword ptr [0x00baab30]
004f5536  0f2f1578aaba00            COMISS XMM2,dword ptr [0x00baaa78]
004f553d  7606                      JBE 0x004f5545
004f553f  f30f5cd0                  SUBSS XMM2,XMM0
004f5543  eb11                      JMP 0x004f5556
004f5545  f30f100d7caeba00          MOVSS XMM1,dword ptr [0x00baae7c]
004f554d  0f2fca                    COMISS XMM1,XMM2
004f5550  7604                      JBE 0x004f5556
004f5552  f30f58d0                  ADDSS XMM2,XMM0
004f5556  f30f5e15b4a9ba00          DIVSS XMM2,dword ptr [0x00baa9b4]
004f555e  83ec08                    SUB ESP,0x8
004f5561  f30f5815d0a2ba00          ADDSS XMM2,dword ptr [0x00baa2d0]
004f5569  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
004f556e  d94584                    FLD dword ptr [EBP + -0x7c]
004f5571  dd1c24                    FSTP qword ptr [ESP]
004f5574  e89eb35f00                CALL 0x00af0917
004f5579  d95d84                    FSTP dword ptr [EBP + -0x7c]
004f557c  f30f2c4584                CVTTSS2SI EAX,dword ptr [EBP + -0x7c]
004f5581  83c408                    ADD ESP,0x8
004f5584  85c0                      TEST EAX,EAX
004f5586  8d4804                    LEA ECX,[EAX + 0x4]
004f5589  0f49c8                    CMOVNS ECX,EAX
004f558c  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004f5593  7412                      JZ 0x004f55a7
004f5595  660f6ec9                  MOVD XMM1,ECX
004f5599  8d8f98000000              LEA ECX,[EDI + 0x98]
004f559f  0f5bc9                    CVTDQ2PS XMM1,XMM1
004f55a2  e85938f1ff                CALL 0x00408e00
004f55a7  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004f55af  0f57d2                    XORPS XMM2,XMM2
004f55b2  8bcf                      MOV ECX,EDI
004f55b4  e8a7711b00                CALL 0x006ac760
004f55b9  85c0                      TEST EAX,EAX
004f55bb  0f8471020000              JZ 0x004f5832
004f55c1  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004f55c9  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004f55d1  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004f55d9  f30f5cc2                  SUBSS XMM0,XMM2
004f55dd  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
004f55e5  a17816c700                MOV EAX,[0x00c71678]
004f55ea  f30f5ec2                  DIVSS XMM0,XMM2
004f55ee  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f55f4  f30f5eca                  DIVSS XMM1,XMM2
004f55f8  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004f5600  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
004f5608  f30f2cd0                  CVTTSS2SI EDX,XMM0
004f560c  f30f2cc1                  CVTTSS2SI EAX,XMM1
004f5610  85d2                      TEST EDX,EDX
004f5612  7817                      JS 0x004f562b
004f5614  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
004f5617  3bd6                      CMP EDX,ESI
004f5619  7d10                      JGE 0x004f562b
004f561b  85c0                      TEST EAX,EAX
004f561d  780c                      JS 0x004f562b
004f561f  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
004f5622  7d07                      JGE 0x004f562b
004f5624  0fafc6                    IMUL EAX,ESI
004f5627  03c2                      ADD EAX,EDX
004f5629  eb03                      JMP 0x004f562e
004f562b  83c8ff                    OR EAX,0xffffffff
004f562e  50                        PUSH EAX
004f562f  e8ccb12f00                CALL 0x007f0800
004f5634  85c0                      TEST EAX,EAX
004f5636  0f85f6010000              JNZ 0x004f5832
004f563c  e81f991f00                CALL 0x006eef60
004f5641  f30f108d74ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff74]
004f5649  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004f5650  660f6ec0                  MOVD XMM0,EAX
004f5654  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f5658  c1e81f                    SHR EAX,0x1f
004f565b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f5664  660f5ac0                  CVTPD2PS XMM0,XMM0
004f5668  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004f5670  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004f5678  0f2fc8                    COMISS XMM1,XMM0
004f567b  0f86b1010000              JBE 0x004f5832
004f5681  e8da981f00                CALL 0x006eef60
004f5686  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004f568e  8bf0                      MOV ESI,EAX
004f5690  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004f5698  f30f114d84                MOVSS dword ptr [EBP + -0x7c],XMM1
004f569d  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004f56a5  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004f56ad  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
004f56b5  e8a6981f00                CALL 0x006eef60
004f56ba  660f6ec0                  MOVD XMM0,EAX
004f56be  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f56c2  c1e81f                    SHR EAX,0x1f
004f56c5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f56ce  660f5ac0                  CVTPD2PS XMM0,XMM0
004f56d2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004f56da  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004f56e2  f30f58c0                  ADDSS XMM0,XMM0
004f56e6  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
004f56ee  e84d7ef2ff                CALL 0x0041d540
004f56f3  f30f584584                ADDSS XMM0,dword ptr [EBP + -0x7c]
004f56f8  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
004f56fd  f30f108570ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff70]
004f5705  e8167ef2ff                CALL 0x0041d520
004f570a  f30f588568ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff68]
004f5712  f30f104d84                MOVSS XMM1,dword ptr [EBP + -0x7c]
004f5717  8d45e4                    LEA EAX,[EBP + -0x1c]
004f571a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f5720  56                        PUSH ESI
004f5721  6a00                      PUSH 0x0
004f5723  57                        PUSH EDI
004f5724  50                        PUSH EAX
004f5725  8d873c030000              LEA EAX,[EDI + 0x33c]
004f572b  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
004f5730  50                        PUSH EAX
004f5731  6a3b                      PUSH 0x3b
004f5733  68e8030000                PUSH 0x3e8
004f5738  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004f573d  e8de33f3ff                CALL 0x00428b20
004f5742  8bf0                      MOV ESI,EAX
004f5744  e817981f00                CALL 0x006eef60
004f5749  660f6ec0                  MOVD XMM0,EAX
004f574d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f5751  c1e81f                    SHR EAX,0x1f
004f5754  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f575d  660f5ac0                  CVTPD2PS XMM0,XMM0
004f5761  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004f5769  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004f5771  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
004f5779  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
004f5781  e8da971f00                CALL 0x006eef60
004f5786  33d2                      XOR EDX,EDX
004f5788  c745a800000000            MOV dword ptr [EBP + -0x58],0x0
004f578f  b90f000000                MOV ECX,0xf
004f5794  c745ac00000000            MOV dword ptr [EBP + -0x54],0x0
004f579b  f7f1                      DIV ECX
004f579d  8b06                      MOV EAX,dword ptr [ESI]
004f579f  0f57c0                    XORPS XMM0,XMM0
004f57a2  6a01                      PUSH 0x1
004f57a4  6a00                      PUSH 0x0
004f57a6  03d1                      ADD EDX,ECX
004f57a8  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
004f57af  68ff000000                PUSH 0xff
004f57b4  6aff                      PUSH -0x1
004f57b6  8d4d88                    LEA ECX,[EBP + -0x78]
004f57b9  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
004f57bf  0f114598                  MOVUPS xmmword ptr [EBP + -0x68],XMM0
004f57c3  51                        PUSH ECX
004f57c4  0f2805e0bbba00            MOVAPS XMM0,xmmword ptr [0x00babbe0]
004f57cb  8bce                      MOV ECX,ESI
004f57cd  899660040000              MOV dword ptr [ESI + 0x460],EDX
004f57d3  0f114588                  MOVUPS xmmword ptr [EBP + -0x78],XMM0
004f57d7  ff503c                    CALL dword ptr [EAX + 0x3c]
004f57da  e881971f00                CALL 0x006eef60
004f57df  660f6ec0                  MOVD XMM0,EAX
004f57e3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f57e7  c1e81f                    SHR EAX,0x1f
004f57ea  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f57f3  660f5ac8                  CVTPD2PS XMM1,XMM0
004f57f7  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004f57ff  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004f5807  f30f580df8a1ba00          ADDSS XMM1,dword ptr [0x00baa1f8]
004f580f  0f28c1                    MOVAPS XMM0,XMM1
004f5812  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004f581a  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004f5822  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
004f582a  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
004f5832  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004f5838  85c9                      TEST ECX,ECX
004f583a  0f88c1030000              JS 0x004f5c01
004f5840  a17816c700                MOV EAX,[0x00c71678]
004f5845  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004f584b  81f9bf010000              CMP ECX,0x1bf
004f5851  7723                      JA 0x004f5876
004f5853  8b448824                  MOV EAX,dword ptr [EAX + ECX*0x4 + 0x24]
004f5857  85c0                      TEST EAX,EAX
004f5859  741b                      JZ 0x004f5876
004f585b  8b483c                    MOV ECX,dword ptr [EAX + 0x3c]
004f585e  83f903                    CMP ECX,0x3
004f5861  0f849a030000              JZ 0x004f5c01
004f5867  83f904                    CMP ECX,0x4
004f586a  750a                      JNZ 0x004f5876
004f586c  8378040f                  CMP dword ptr [EAX + 0x4],0xf
004f5870  0f858b030000              JNZ 0x004f5c01
004f5876  c787c00b0000ffffffff      MOV dword ptr [EDI + 0xbc0],0xffffffff
004f5880  8d873c030000              LEA EAX,[EDI + 0x33c]
004f5886  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004f588e  f30f5c4804                SUBSS XMM1,dword ptr [EAX + 0x4]
004f5893  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004f589b  f30f5c10                  SUBSS XMM2,dword ptr [EAX]
004f589f  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
004f58a5  0f28c1                    MOVAPS XMM0,XMM1
004f58a8  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
004f58b0  f30f59c1                  MULSS XMM0,XMM1
004f58b4  0f28ca                    MOVAPS XMM1,XMM2
004f58b7  f30f119574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM2
004f58bf  f30f59ca                  MULSS XMM1,XMM2
004f58c3  f30f58c1                  ADDSS XMM0,XMM1
004f58c7  e88401f4ff                CALL 0x00435a50
004f58cc  0f28e0                    MOVAPS XMM4,XMM0
004f58cf  0f57c9                    XORPS XMM1,XMM1
004f58d2  0f2fe1                    COMISS XMM4,XMM1
004f58d5  f30f1165e8                MOVSS dword ptr [EBP + -0x18],XMM4
004f58da  0f86a9010000              JBE 0x004f5a89
004f58e0  f30f5e0534a8ba00          DIVSS XMM0,dword ptr [0x00baa834]
004f58e8  8d7584                    LEA ESI,[EBP + -0x7c]
004f58eb  c78570ffffff0000a041      MOV dword ptr [EBP + 0xffffff70],0x41a00000
004f58f5  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004f58fb  f30f109574ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff74]
004f5903  f30f109d78ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff78]
004f590b  0f2f057ca8ba00            COMISS XMM0,dword ptr [0x00baa87c]
004f5912  f30f5ed4                  DIVSS XMM2,XMM4
004f5916  0f46f0                    CMOVBE ESI,EAX
004f5919  0f2fe1                    COMISS XMM4,XMM1
004f591c  f30f5edc                  DIVSS XMM3,XMM4
004f5920  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
004f5925  0f57c0                    XORPS XMM0,XMM0
004f5928  f30f119574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM2
004f5930  f30f119d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM3
004f5938  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
004f593d  0f8646010000              JBE 0x004f5a89
004f5943  8b8568ffffff              MOV EAX,dword ptr [EBP + 0xffffff68]
004f5949  0f28c8                    MOVAPS XMM1,XMM0
004f594c  f30f59ca                  MULSS XMM1,XMM2
004f5950  f30f59c3                  MULSS XMM0,XMM3
004f5954  f30f5808                  ADDSS XMM1,dword ptr [EAX]
004f5958  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
004f595d  f30f118d48ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM1
004f5965  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
004f596d  e8ee951f00                CALL 0x006eef60
004f5972  8bf8                      MOV EDI,EAX
004f5974  e8e7951f00                CALL 0x006eef60
004f5979  660f6ec0                  MOVD XMM0,EAX
004f597d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f5981  c1e81f                    SHR EAX,0x1f
004f5984  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f598d  660f5ac0                  CVTPD2PS XMM0,XMM0
004f5991  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004f5999  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004f59a1  f30f58c0                  ADDSS XMM0,XMM0
004f59a5  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004f59ad  e86e7bf2ff                CALL 0x0041d520
004f59b2  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
004f59ba  e8a1951f00                CALL 0x006eef60
004f59bf  660f6ec8                  MOVD XMM1,EAX
004f59c3  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004f59c7  c1e81f                    SHR EAX,0x1f
004f59ca  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004f59d3  660f5ac1                  CVTPD2PS XMM0,XMM1
004f59d7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004f59df  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
004f59e7  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
004f59ef  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004f59f7  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
004f59ff  e83c7bf2ff                CALL 0x0041d540
004f5a04  f30f108d5cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff5c]
004f5a0c  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
004f5a12  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f5a18  57                        PUSH EDI
004f5a19  6a00                      PUSH 0x0
004f5a1b  6a00                      PUSH 0x0
004f5a1d  50                        PUSH EAX
004f5a1e  f30f59c1                  MULSS XMM0,XMM1
004f5a22  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
004f5a28  50                        PUSH EAX
004f5a29  f30f598d58ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff58]
004f5a31  68a3000000                PUSH 0xa3
004f5a36  68e8030000                PUSH 0x3e8
004f5a3b  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
004f5a43  f30f118d54ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM1
004f5a4b  e8d030f3ff                CALL 0x00428b20
004f5a50  8bc8                      MOV ECX,EAX
004f5a52  8b10                      MOV EDX,dword ptr [EAX]
004f5a54  ff520c                    CALL dword ptr [EDX + 0xc]
004f5a57  f30f104580                MOVSS XMM0,dword ptr [EBP + -0x80]
004f5a5c  f30f5806                  ADDSS XMM0,dword ptr [ESI]
004f5a60  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
004f5a65  f30f109574ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff74]
004f5a6d  f30f109d78ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff78]
004f5a75  0f2fc8                    COMISS XMM1,XMM0
004f5a78  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
004f5a7d  0f87c0feffff              JA 0x004f5943
004f5a83  8bbd6cffffff              MOV EDI,dword ptr [EBP + 0xffffff6c]
004f5a89  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004f5a91  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004f5a99  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004f5aa1  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004f5aa9  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004f5aaf  83f812                    CMP EAX,0x12
004f5ab2  750a                      JNZ 0x004f5abe
004f5ab4  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004f5abc  eb0d                      JMP 0x004f5acb
004f5abe  83f813                    CMP EAX,0x13
004f5ac1  7510                      JNZ 0x004f5ad3
004f5ac3  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004f5acb  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
004f5ad3  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f5ad9  8d8d6cffffff              LEA ECX,[EBP + 0xffffff6c]
004f5adf  c7856cfffffff8010000      MOV dword ptr [EBP + 0xffffff6c],0x1f8
004f5ae9  e8920c4600                CALL 0x00956780
004f5aee  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
004f5af6  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f5afc  83ec08                    SUB ESP,0x8
004f5aff  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f5b07  f30f110424                MOVSS dword ptr [ESP],XMM0
004f5b0c  6a00                      PUSH 0x0
004f5b0e  6a02                      PUSH 0x2
004f5b10  51                        PUSH ECX
004f5b11  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f5b18  ffb56cffffff              PUSH dword ptr [EBP + 0xffffff6c]
004f5b1e  e80d814300                CALL 0x0092dc30
004f5b23  a17816c700                MOV EAX,[0x00c71678]
004f5b28  51                        PUSH ECX
004f5b29  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004f5b2f  c7042400000000            MOV dword ptr [ESP],0x0
004f5b36  51                        PUSH ECX
004f5b37  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f5b3d  e81ed83100                CALL 0x00813360
004f5b42  84c0                      TEST AL,AL
004f5b44  7559                      JNZ 0x004f5b9f
004f5b46  8b07                      MOV EAX,dword ptr [EDI]
004f5b48  8d4db4                    LEA ECX,[EBP + -0x4c]
004f5b4b  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
004f5b53  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004f5b5b  51                        PUSH ECX
004f5b5c  8bcf                      MOV ECX,EDI
004f5b5e  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
004f5b65  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
004f5b6c  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
004f5b73  c745c000000000            MOV dword ptr [EBP + -0x40],0x0
004f5b7a  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
004f5b7f  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004f5b84  f30f114dcc                MOVSS dword ptr [EBP + -0x34],XMM1
004f5b89  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
004f5b8e  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
004f5b95  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
004f5b9c  ff5024                    CALL dword ptr [EAX + 0x24]
004f5b9f  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004f5ba9  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004f5bb3  c787bc0b0000000020c1      MOV dword ptr [EDI + 0xbbc],0xc1200000
004f5bbd  c787b40b00000000c0c0      MOV dword ptr [EDI + 0xbb4],0xc0c00000
004f5bc7  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004f5bcf  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
004f5bd7  c787ec00000000000000      MOV dword ptr [EDI + 0xec],0x0
004f5be1  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004f5be9  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004f5bf1  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
004f5bf9  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004f5c01  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004f5c09  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004f5c10  9f                        LAHF
004f5c11  f6c444                    TEST AH,0x44
004f5c14  7a3e                      JP 0x004f5c54
004f5c16  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004f5c1e  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004f5c25  9f                        LAHF
004f5c26  f6c444                    TEST AH,0x44
004f5c29  7a29                      JP 0x004f5c54
004f5c2b  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004f5c33  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004f5c3b  f30f59c0                  MULSS XMM0,XMM0
004f5c3f  f30f59c9                  MULSS XMM1,XMM1
004f5c43  f30f58c1                  ADDSS XMM0,XMM1
004f5c47  0f2f055ca8ba00            COMISS XMM0,dword ptr [0x00baa85c]
004f5c4e  0f8627010000              JBE 0x004f5d7b
004f5c54  8b877c010000              MOV EAX,dword ptr [EDI + 0x17c]
004f5c5a  33d2                      XOR EDX,EDX
004f5c5c  8b8f78010000              MOV ECX,dword ptr [EDI + 0x178]
004f5c62  2bc1                      SUB EAX,ECX
004f5c64  c1f803                    SAR EAX,0x3
004f5c67  89956cffffff              MOV dword ptr [EBP + 0xffffff6c],EDX
004f5c6d  85c0                      TEST EAX,EAX
004f5c6f  0f8406010000              JZ 0x004f5d7b
004f5c75  f30f10257ca4ba00          MOVSS XMM4,dword ptr [0x00baa47c]
004f5c7d  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004f5c85  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
004f5c8d  0f1f00                    NOP dword ptr [EAX]
004f5c90  f30f1004d1                MOVSS XMM0,dword ptr [ECX + EDX*0x8]
004f5c95  f30f104cd104              MOVSS XMM1,dword ptr [ECX + EDX*0x8 + 0x4]
004f5c9b  f30f59c4                  MULSS XMM0,XMM4
004f5c9f  a17816c700                MOV EAX,[0x00c71678]
004f5ca4  f30f59cc                  MULSS XMM1,XMM4
004f5ca8  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004f5cb0  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f5cb6  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004f5cbe  f30f5cc2                  SUBSS XMM0,XMM2
004f5cc2  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
004f5cca  f30f5ec2                  DIVSS XMM0,XMM2
004f5cce  f30f5eca                  DIVSS XMM1,XMM2
004f5cd2  f30f58c3                  ADDSS XMM0,XMM3
004f5cd6  f30f58cb                  ADDSS XMM1,XMM3
004f5cda  f30f2cf0                  CVTTSS2SI ESI,XMM0
004f5cde  f30f2cc1                  CVTTSS2SI EAX,XMM1
004f5ce2  85f6                      TEST ESI,ESI
004f5ce4  7875                      JS 0x004f5d5b
004f5ce6  3b710c                    CMP ESI,dword ptr [ECX + 0xc]
004f5ce9  7d70                      JGE 0x004f5d5b
004f5ceb  85c0                      TEST EAX,EAX
004f5ced  786c                      JS 0x004f5d5b
004f5cef  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
004f5cf2  7d67                      JGE 0x004f5d5b
004f5cf4  0faf410c                  IMUL EAX,dword ptr [ECX + 0xc]
004f5cf8  03c6                      ADD EAX,ESI
004f5cfa  3dbf010000                CMP EAX,0x1bf
004f5cff  775a                      JA 0x004f5d5b
004f5d01  8b4c8124                  MOV ECX,dword ptr [ECX + EAX*0x4 + 0x24]
004f5d05  894de8                    MOV dword ptr [EBP + -0x18],ECX
004f5d08  85c9                      TEST ECX,ECX
004f5d0a  744f                      JZ 0x004f5d5b
004f5d0c  8b4124                    MOV EAX,dword ptr [ECX + 0x24]
004f5d0f  3b87c00b0000              CMP EAX,dword ptr [EDI + 0xbc0]
004f5d15  7444                      JZ 0x004f5d5b
004f5d17  8b413c                    MOV EAX,dword ptr [ECX + 0x3c]
004f5d1a  83f803                    CMP EAX,0x3
004f5d1d  7405                      JZ 0x004f5d24
004f5d1f  83f802                    CMP EAX,0x2
004f5d22  7537                      JNZ 0x004f5d5b
004f5d24  8b01                      MOV EAX,dword ptr [ECX]
004f5d26  8d4d8c                    LEA ECX,[EBP + -0x74]
004f5d29  57                        PUSH EDI
004f5d2a  8b7014                    MOV ESI,dword ptr [EAX + 0x14]
004f5d2d  e8deb5f3ff                CALL 0x00431310
004f5d32  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
004f5d35  8d458c                    LEA EAX,[EBP + -0x74]
004f5d38  50                        PUSH EAX
004f5d39  6a00                      PUSH 0x0
004f5d3b  ffd6                      CALL ESI
004f5d3d  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004f5d45  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
004f5d4d  f30f10257ca4ba00          MOVSS XMM4,dword ptr [0x00baa47c]
004f5d55  8b956cffffff              MOV EDX,dword ptr [EBP + 0xffffff6c]
004f5d5b  8b877c010000              MOV EAX,dword ptr [EDI + 0x17c]
004f5d61  42                        INC EDX
004f5d62  8b8f78010000              MOV ECX,dword ptr [EDI + 0x178]
004f5d68  2bc1                      SUB EAX,ECX
004f5d6a  c1f803                    SAR EAX,0x3
004f5d6d  89956cffffff              MOV dword ptr [EBP + 0xffffff6c],EDX
004f5d73  3bd0                      CMP EDX,EAX
004f5d75  0f8215ffffff              JC 0x004f5c90
004f5d7b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f5d81  6897000000                PUSH 0x97
004f5d86  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
004f5d8c  e81f894c00                CALL 0x009be6b0
004f5d91  85c0                      TEST EAX,EAX
004f5d93  7418                      JZ 0x004f5dad
004f5d95  6897000000                PUSH 0x97
004f5d9a  8bc8                      MOV ECX,EAX
004f5d9c  e83f592d00                CALL 0x007cb6e0
004f5da1  83f801                    CMP EAX,0x1
004f5da4  7e07                      JLE 0x004f5dad
004f5da6  b901000000                MOV ECX,0x1
004f5dab  eb02                      JMP 0x004f5daf
004f5dad  33c9                      XOR ECX,ECX
004f5daf  8b97c40b0000              MOV EDX,dword ptr [EDI + 0xbc4]
004f5db5  33c0                      XOR EAX,EAX
004f5db7  85d2                      TEST EDX,EDX
004f5db9  0f95c0                    SETNZ AL
004f5dbc  3bc1                      CMP EAX,ECX
004f5dbe  0f843c010000              JZ 0x004f5f00
004f5dc4  b801000000                MOV EAX,0x1
004f5dc9  2bc2                      SUB EAX,EDX
004f5dcb  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004f5dd1  7405                      JZ 0x004f5dd8
004f5dd3  0f57c0                    XORPS XMM0,XMM0
004f5dd6  eb08                      JMP 0x004f5de0
004f5dd8  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
004f5de0  8d4f48                    LEA ECX,[EDI + 0x48]
004f5de3  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
004f5dea  898d64ffffff              MOV dword ptr [EBP + 0xffffff64],ECX
004f5df0  85c0                      TEST EAX,EAX
004f5df2  b9900ab600                MOV ECX,0xb60a90
004f5df7  f30f118788030000          MOVSS dword ptr [EDI + 0x388],XMM0
004f5dff  ba580ab600                MOV EDX,0xb60a58
004f5e04  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
004f5e0b  0f44d1                    CMOVZ EDX,ECX
004f5e0e  c745d80f000000            MOV dword ptr [EBP + -0x28],0xf
004f5e15  8bca                      MOV ECX,EDX
004f5e17  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
004f5e1b  8d7101                    LEA ESI,[ECX + 0x1]
004f5e1e  6690                      NOP
004f5e20  8a01                      MOV AL,byte ptr [ECX]
004f5e22  41                        INC ECX
004f5e23  84c0                      TEST AL,AL
004f5e25  75f9                      JNZ 0x004f5e20
004f5e27  2bce                      SUB ECX,ESI
004f5e29  51                        PUSH ECX
004f5e2a  52                        PUSH EDX
004f5e2b  8d4dc4                    LEA ECX,[EBP + -0x3c]
004f5e2e  e89d6ef1ff                CALL 0x0040ccd0
004f5e33  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004f5e3a  83bfc800000000            CMP dword ptr [EDI + 0xc8],0x0
004f5e41  7e70                      JLE 0x004f5eb3
004f5e43  8b87c4000000              MOV EAX,dword ptr [EDI + 0xc4]
004f5e49  83781c10                  CMP dword ptr [EAX + 0x1c],0x10
004f5e4d  8d7808                    LEA EDI,[EAX + 0x8]
004f5e50  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004f5e53  8bc7                      MOV EAX,EDI
004f5e55  7202                      JC 0x004f5e59
004f5e57  8b07                      MOV EAX,dword ptr [EDI]
004f5e59  837dd810                  CMP dword ptr [EBP + -0x28],0x10
004f5e5d  8d4dc4                    LEA ECX,[EBP + -0x3c]
004f5e60  ff7710                    PUSH dword ptr [EDI + 0x10]
004f5e63  8b75c4                    MOV ESI,dword ptr [EBP + -0x3c]
004f5e66  0f43ce                    CMOVNC ECX,ESI
004f5e69  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
004f5e6c  50                        PUSH EAX
004f5e6d  e86e6cf1ff                CALL 0x0040cae0
004f5e72  83c408                    ADD ESP,0x8
004f5e75  84c0                      TEST AL,AL
004f5e77  753d                      JNZ 0x004f5eb6
004f5e79  8d45c4                    LEA EAX,[EBP + -0x3c]
004f5e7c  3bf8                      CMP EDI,EAX
004f5e7e  7424                      JZ 0x004f5ea4
004f5e80  837dd810                  CMP dword ptr [EBP + -0x28],0x10
004f5e84  8bcf                      MOV ECX,EDI
004f5e86  ff75d4                    PUSH dword ptr [EBP + -0x2c]
004f5e89  0f43c6                    CMOVNC EAX,ESI
004f5e8c  50                        PUSH EAX
004f5e8d  e83e6ef1ff                CALL 0x0040ccd0
004f5e92  8bbd64ffffff              MOV EDI,dword ptr [EBP + 0xffffff64]
004f5e98  8b75c4                    MOV ESI,dword ptr [EBP + -0x3c]
004f5e9b  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f5e9e  c6403000                  MOV byte ptr [EAX + 0x30],0x0
004f5ea2  eb18                      JMP 0x004f5ebc
004f5ea4  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
004f5ea7  8bbd64ffffff              MOV EDI,dword ptr [EBP + 0xffffff64]
004f5ead  c6403000                  MOV byte ptr [EAX + 0x30],0x0
004f5eb1  eb09                      JMP 0x004f5ebc
004f5eb3  8b75c4                    MOV ESI,dword ptr [EBP + -0x3c]
004f5eb6  8bbd64ffffff              MOV EDI,dword ptr [EBP + 0xffffff64]
004f5ebc  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004f5ec3  8b45d8                    MOV EAX,dword ptr [EBP + -0x28]
004f5ec6  83f810                    CMP EAX,0x10
004f5ec9  722d                      JC 0x004f5ef8
004f5ecb  8d4801                    LEA ECX,[EAX + 0x1]
004f5ece  8bc6                      MOV EAX,ESI
004f5ed0  81f900100000              CMP ECX,0x1000
004f5ed6  7216                      JC 0x004f5eee
004f5ed8  8b76fc                    MOV ESI,dword ptr [ESI + -0x4]
004f5edb  83c123                    ADD ECX,0x23
004f5ede  2bc6                      SUB EAX,ESI
004f5ee0  83c0fc                    ADD EAX,-0x4
004f5ee3  83f81f                    CMP EAX,0x1f
004f5ee6  7606                      JBE 0x004f5eee
004f5ee8  ff159488b100              CALL dword ptr [0x00b18894]
004f5eee  51                        PUSH ECX
004f5eef  56                        PUSH ESI
004f5ef0  e867925f00                CALL 0x00aef15c
004f5ef5  83c408                    ADD ESP,0x8
004f5ef8  51                        PUSH ECX
004f5ef9  8bcf                      MOV ECX,EDI
004f5efb  e80061f1ff                CALL 0x0040c000
004f5f00  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004f5f03  64890d00000000            MOV dword ptr FS:[0x0],ECX
004f5f0a  59                        POP ECX
004f5f0b  5f                        POP EDI
004f5f0c  5e                        POP ESI
004f5f0d  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004f5f10  33cd                      XOR ECX,EBP
004f5f12  e814925f00                CALL 0x00aef12b
004f5f17  8be5                      MOV ESP,EBP
004f5f19  5d                        POP EBP
004f5f1a  8be3                      MOV ESP,EBX
004f5f1c  5b                        POP EBX
004f5f1d  c3                        RET
