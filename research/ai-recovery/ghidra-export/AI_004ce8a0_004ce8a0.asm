; J460 NPC AI 0x004ce8a0 AI_004ce8a0
; types=965
; identities=965.0.0
; entry=004ce8a0
004ce8a0  55                        PUSH EBP
004ce8a1  8bec                      MOV EBP,ESP
004ce8a3  83e4f8                    AND ESP,0xfffffff8
004ce8a6  83ec4c                    SUB ESP,0x4c
004ce8a9  a1b493bf00                MOV EAX,[0x00bf93b4]
004ce8ae  33c4                      XOR EAX,ESP
004ce8b0  89442448                  MOV dword ptr [ESP + 0x48],EAX
004ce8b4  53                        PUSH EBX
004ce8b5  56                        PUSH ESI
004ce8b6  57                        PUSH EDI
004ce8b7  8bf9                      MOV EDI,ECX
004ce8b9  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004ce8bf  8b5f2c                    MOV EBX,dword ptr [EDI + 0x2c]
004ce8c2  85c0                      TEST EAX,EAX
004ce8c4  755f                      JNZ 0x004ce925
004ce8c6  83fb0a                    CMP EBX,0xa
004ce8c9  b804000000                MOV EAX,0x4
004ce8ce  b910000000                MOV ECX,0x10
004ce8d3  0f44c1                    CMOVZ EAX,ECX
004ce8d6  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
004ce8dc  7518                      JNZ 0x004ce8f6
004ce8de  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004ce8e4  898734030000              MOV dword ptr [EDI + 0x334],EAX
004ce8ea  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004ce8f0  898738030000              MOV dword ptr [EDI + 0x338],EAX
004ce8f6  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004ce8fc  83e1fb                    AND ECX,0xfffffffb
004ce8ff  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004ce906  83c901                    OR ECX,0x1
004ce909  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004ce913  838f6c01000010            OR dword ptr [EDI + 0x16c],0x10
004ce91a  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004ce920  e946050000                JMP 0x004cee6b
004ce925  83f810                    CMP EAX,0x10
004ce928  7535                      JNZ 0x004ce95f
004ce92a  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004ce932  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004ce93a  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004ce942  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004ce94a  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004ce952  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004ce95a  e90c050000                JMP 0x004cee6b
004ce95f  83f804                    CMP EAX,0x4
004ce962  0f85ed040000              JNZ 0x004cee55
004ce968  83fb0a                    CMP EBX,0xa
004ce96b  0f8561020000              JNZ 0x004cebd2
004ce971  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004ce979  0f2f05a4a3ba00            COMISS XMM0,dword ptr [0x00baa3a4]
004ce980  c7877c0300000000c842      MOV dword ptr [EDI + 0x37c],0x42c80000
004ce98a  898788010000              MOV dword ptr [EDI + 0x188],EAX
004ce990  0f86ad010000              JBE 0x004ceb43
004ce996  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004ce99e  0f57d2                    XORPS XMM2,XMM2
004ce9a1  e8badd1d00                CALL 0x006ac760
004ce9a6  85c0                      TEST EAX,EAX
004ce9a8  0f8495010000              JZ 0x004ceb43
004ce9ae  e8ad052200                CALL 0x006eef60
004ce9b3  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004ce9bb  8bf0                      MOV ESI,EAX
004ce9bd  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
004ce9c3  8d442420                  LEA EAX,[ESP + 0x20]
004ce9c7  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004ce9cf  50                        PUSH EAX
004ce9d0  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004ce9d6  e895061b00                CALL 0x0067f070
004ce9db  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
004ce9e1  83c404                    ADD ESP,0x4
004ce9e4  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004ce9ec  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ce9f2  6a00                      PUSH 0x0
004ce9f4  f30f5808                  ADDSS XMM1,dword ptr [EAX]
004ce9f8  56                        PUSH ESI
004ce9f9  6a00                      PUSH 0x0
004ce9fb  57                        PUSH EDI
004ce9fc  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
004cea02  f30f104c2424              MOVSS XMM1,dword ptr [ESP + 0x24]
004cea08  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
004cea10  f30f584804                ADDSS XMM1,dword ptr [EAX + 0x4]
004cea15  8d442428                  LEA EAX,[ESP + 0x28]
004cea19  50                        PUSH EAX
004cea1a  8d873c030000              LEA EAX,[EDI + 0x33c]
004cea20  50                        PUSH EAX
004cea21  6a3b                      PUSH 0x3b
004cea23  68e8030000                PUSH 0x3e8
004cea28  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
004cea2e  e8ddf92200                CALL 0x006fe410
004cea33  8bf0                      MOV ESI,EAX
004cea35  e826052200                CALL 0x006eef60
004cea3a  660f6ec0                  MOVD XMM0,EAX
004cea3e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004cea42  c1e81f                    SHR EAX,0x1f
004cea45  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004cea4e  660f5ac0                  CVTPD2PS XMM0,XMM0
004cea52  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004cea5a  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004cea62  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
004cea6a  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
004cea72  e8e9042200                CALL 0x006eef60
004cea77  b90f000000                MOV ECX,0xf
004cea7c  f30f101db8a2ba00          MOVSS XMM3,dword ptr [0x00baa2b8]
004cea84  33d2                      XOR EDX,EDX
004cea86  0f28d3                    MOVAPS XMM2,XMM3
004cea89  f7f1                      DIV ECX
004cea8b  51                        PUSH ECX
004cea8c  03d1                      ADD EDX,ECX
004cea8e  c704240000003f            MOV dword ptr [ESP],0x3f000000
004cea95  0f28cb                    MOVAPS XMM1,XMM3
004cea98  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
004cea9e  8d4c242c                  LEA ECX,[ESP + 0x2c]
004ceaa2  899660040000              MOV dword ptr [ESI + 0x460],EDX
004ceaa8  e8434ef5ff                CALL 0x004238f0
004ceaad  8b16                      MOV EDX,dword ptr [ESI]
004ceaaf  8bce                      MOV ECX,ESI
004ceab1  6a01                      PUSH 0x1
004ceab3  6a00                      PUSH 0x0
004ceab5  68ff000000                PUSH 0xff
004ceaba  6aff                      PUSH -0x1
004ceabc  50                        PUSH EAX
004ceabd  ff523c                    CALL dword ptr [EDX + 0x3c]
004ceac0  e89b042200                CALL 0x006eef60
004ceac5  660f6ec0                  MOVD XMM0,EAX
004ceac9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ceacd  c1e81f                    SHR EAX,0x1f
004cead0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004cead9  a17816c700                MOV EAX,[0x00c71678]
004ceade  660f5ac8                  CVTPD2PS XMM1,XMM0
004ceae2  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004ceaea  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004ceaf2  f30f580df8a1ba00          ADDSS XMM1,dword ptr [0x00baa1f8]
004ceafa  0f28c1                    MOVAPS XMM0,XMM1
004ceafd  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004ceb05  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004ceb0d  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
004ceb15  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
004ceb1d  83b83cb8010000            CMP dword ptr [EAX + 0x1b83c],0x0
004ceb24  7416                      JZ 0x004ceb3c
004ceb26  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004ceb2c  818e6c01000000100000      OR dword ptr [ESI + 0x16c],0x1000
004ceb36  898668010000              MOV dword ptr [ESI + 0x168],EAX
004ceb3c  8b06                      MOV EAX,dword ptr [ESI]
004ceb3e  8bce                      MOV ECX,ESI
004ceb40  ff500c                    CALL dword ptr [EAX + 0xc]
004ceb43  8d442420                  LEA EAX,[ESP + 0x20]
004ceb47  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
004ceb4e  50                        PUSH EAX
004ceb4f  8d8fb00b0000              LEA ECX,[EDI + 0xbb0]
004ceb55  c7876c0300006666663f      MOV dword ptr [EDI + 0x36c],0x3f666666
004ceb5f  e8cc145400                CALL 0x00a10030
004ceb64  f30f1097b80b0000          MOVSS XMM2,dword ptr [EDI + 0xbb8]
004ceb6c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004ceb70  f30f5905cca4ba00          MULSS XMM0,dword ptr [0x00baa4cc]
004ceb78  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
004ceb7d  f30f591dcca4ba00          MULSS XMM3,dword ptr [0x00baa4cc]
004ceb85  f30f59c2                  MULSS XMM0,XMM2
004ceb89  f30f59da                  MULSS XMM3,XMM2
004ceb8d  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004ceb95  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
004ceb9d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004ceba5  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004cebad  f30f59055ca4ba00          MULSS XMM0,dword ptr [0x00baa45c]
004cebb5  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004cebbd  f30f58056ca0ba00          ADDSS XMM0,dword ptr [0x00baa06c]
004cebc5  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004cebcd  e9c5000000                JMP 0x004cec97
004cebd2  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004cebd8  85c0                      TEST EAX,EAX
004cebda  7417                      JZ 0x004cebf3
004cebdc  c7877c03000000401c46      MOV dword ptr [EDI + 0x37c],0x461c4000
004cebe6  83b88801000000            CMP dword ptr [EAX + 0x188],0x0
004cebed  740e                      JZ 0x004cebfd
004cebef  33c9                      XOR ECX,ECX
004cebf1  eb0f                      JMP 0x004cec02
004cebf3  c7877c03000000004842      MOV dword ptr [EDI + 0x37c],0x42480000
004cebfd  b904000000                MOV ECX,0x4
004cec02  b001                      MOV AL,0x1
004cec04  898f88010000              MOV dword ptr [EDI + 0x188],ECX
004cec0a  888771010000              MOV byte ptr [EDI + 0x171],AL
004cec10  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004cec16  85c0                      TEST EAX,EAX
004cec18  746d                      JZ 0x004cec87
004cec1a  8d442420                  LEA EAX,[ESP + 0x20]
004cec1e  50                        PUSH EAX
004cec1f  8d8fb00b0000              LEA ECX,[EDI + 0xbb0]
004cec25  e806145400                CALL 0x00a10030
004cec2a  f30f1097b80b0000          MOVSS XMM2,dword ptr [EDI + 0xbb8]
004cec32  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
004cec37  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004cec3b  f30f5905cca4ba00          MULSS XMM0,dword ptr [0x00baa4cc]
004cec43  f30f591dcca4ba00          MULSS XMM3,dword ptr [0x00baa4cc]
004cec4b  f30f59c2                  MULSS XMM0,XMM2
004cec4f  f30f59da                  MULSS XMM3,XMM2
004cec53  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004cec5b  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
004cec63  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004cec6b  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004cec73  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004cec79  85c0                      TEST EAX,EAX
004cec7b  740a                      JZ 0x004cec87
004cec7d  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
004cec85  eb08                      JMP 0x004cec8f
004cec87  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
004cec8f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004cec97  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
004ceca1  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004ceca8  751d                      JNZ 0x004cecc7
004cecaa  83fb0a                    CMP EBX,0xa
004cecad  7418                      JZ 0x004cecc7
004cecaf  ff8710040000              INC dword ptr [EDI + 0x410]
004cecb5  83bf1004000002            CMP dword ptr [EDI + 0x410],0x2
004cecbc  7e13                      JLE 0x004cecd1
004cecbe  8bcf                      MOV ECX,EDI
004cecc0  e8cb010000                CALL 0x004cee90
004cecc5  eb0a                      JMP 0x004cecd1
004cecc7  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004cecd1  8b1d7816c700              MOV EBX,dword ptr [0x00c71678]
004cecd7  8d873c030000              LEA EAX,[EDI + 0x33c]
004cecdd  51                        PUSH ECX
004cecde  c7042400000000            MOV dword ptr [ESP],0x0
004cece5  50                        PUSH EAX
004cece6  8bb300830100              MOV ESI,dword ptr [EBX + 0x18300]
004cecec  8bce                      MOV ECX,ESI
004cecee  e86d463400                CALL 0x00813360
004cecf3  8d973c030000              LEA EDX,[EDI + 0x33c]
004cecf9  84c0                      TEST AL,AL
004cecfb  0f858a000000              JNZ 0x004ced8b
004ced01  f30f1012                  MOVSS XMM2,dword ptr [EDX]
004ced05  8d442410                  LEA EAX,[ESP + 0x10]
004ced09  f30f104e14                MOVSS XMM1,dword ptr [ESI + 0x14]
004ced0e  8d4c2414                  LEA ECX,[ESP + 0x14]
004ced12  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
004ced1a  f30f5cca                  SUBSS XMM1,XMM2
004ced1e  f30f5c561c                SUBSS XMM2,dword ptr [ESI + 0x1c]
004ced23  f30f104618                MOVSS XMM0,dword ptr [ESI + 0x18]
004ced28  f30f5cc3                  SUBSS XMM0,XMM3
004ced2c  f30f5c5e20                SUBSS XMM3,dword ptr [ESI + 0x20]
004ced31  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
004ced37  0f2fd1                    COMISS XMM2,XMM1
004ced3a  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
004ced40  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004ced46  0f46c8                    CMOVBE ECX,EAX
004ced49  8d442418                  LEA EAX,[ESP + 0x18]
004ced4d  0f2f01                    COMISS XMM0,dword ptr [ECX]
004ced50  0f46c1                    CMOVBE EAX,ECX
004ced53  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004ced57  0f2fd8                    COMISS XMM3,XMM0
004ced5a  7706                      JA 0x004ced62
004ced5c  f30f10c0                  MOVSS XMM0,XMM0
004ced60  eb04                      JMP 0x004ced66
004ced62  f30f10c3                  MOVSS XMM0,XMM3
004ced66  0f57c9                    XORPS XMM1,XMM1
004ced69  f30f5cc1                  SUBSS XMM0,XMM1
004ced6d  f30f5e051ca9ba00          DIVSS XMM0,dword ptr [0x00baa91c]
004ced75  f30f5fc1                  MAXSS XMM0,XMM1
004ced79  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004ced81  f30f5dc1                  MINSS XMM0,XMM1
004ced85  f30f5cc8                  SUBSS XMM1,XMM0
004ced89  eb08                      JMP 0x004ced93
004ced8b  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004ced93  f30f118ffc000000          MOVSS dword ptr [EDI + 0xfc],XMM1
004ced9b  8b83f8640200              MOV EAX,dword ptr [EBX + 0x264f8]
004ceda1  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
004ceda7  83f80f                    CMP EAX,0xf
004cedaa  7f1a                      JG 0x004cedc6
004cedac  83bb3cb8010000            CMP dword ptr [EBX + 0x1b83c],0x0
004cedb3  0f84b2000000              JZ 0x004cee6b
004cedb9  83bb58b8010013            CMP dword ptr [EBX + 0x1b858],0x13
004cedc0  0f85a5000000              JNZ 0x004cee6b
004cedc6  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
004cedcc  85c0                      TEST EAX,EAX
004cedce  7413                      JZ 0x004cede3
004cedd0  8178288a030000            CMP dword ptr [EAX + 0x28],0x38a
004cedd7  750a                      JNZ 0x004cede3
004cedd9  83782c00                  CMP dword ptr [EAX + 0x2c],0x0
004ceddd  0f8488000000              JZ 0x004cee6b
004cede3  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
004cede7  7519                      JNZ 0x004cee02
004cede9  51                        PUSH ECX
004cedea  c70424000096c3            MOV dword ptr [ESP],0xc3960000
004cedf1  8bce                      MOV ECX,ESI
004cedf3  52                        PUSH EDX
004cedf4  e867453400                CALL 0x00813360
004cedf9  33c9                      XOR ECX,ECX
004cedfb  84c0                      TEST AL,AL
004cedfd  0f94c1                    SETZ CL
004cee00  eb0d                      JMP 0x004cee0f
004cee02  52                        PUSH EDX
004cee03  8bce                      MOV ECX,ESI
004cee05  e8863e3400                CALL 0x00812c90
004cee0a  8bc8                      MOV ECX,EAX
004cee0c  c1e91f                    SHR ECX,0x1f
004cee0f  85c9                      TEST ECX,ECX
004cee11  7458                      JZ 0x004cee6b
004cee13  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004cee1a  7507                      JNZ 0x004cee23
004cee1c  8bcf                      MOV ECX,EDI
004cee1e  e87dfaffff                CALL 0x004ce8a0
004cee23  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
004cee29  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004cee33  85c9                      TEST ECX,ECX
004cee35  7405                      JZ 0x004cee3c
004cee37  8b01                      MOV EAX,dword ptr [ECX]
004cee39  ff5028                    CALL dword ptr [EAX + 0x28]
004cee3c  8b07                      MOV EAX,dword ptr [EDI]
004cee3e  8bcf                      MOV ECX,EDI
004cee40  ff5028                    CALL dword ptr [EAX + 0x28]
004cee43  5f                        POP EDI
004cee44  5e                        POP ESI
004cee45  5b                        POP EBX
004cee46  8b4c2448                  MOV ECX,dword ptr [ESP + 0x48]
004cee4a  33cc                      XOR ECX,ESP
004cee4c  e8da026200                CALL 0x00aef12b
004cee51  8be5                      MOV ESP,EBP
004cee53  5d                        POP EBP
004cee54  c3                        RET
004cee55  83f803                    CMP EAX,0x3
004cee58  7511                      JNZ 0x004cee6b
004cee5a  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004cee64  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
004cee6b  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004cee72  7407                      JZ 0x004cee7b
004cee74  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
004cee7b  8b4c2454                  MOV ECX,dword ptr [ESP + 0x54]
004cee7f  5f                        POP EDI
004cee80  5e                        POP ESI
004cee81  5b                        POP EBX
004cee82  33cc                      XOR ECX,ESP
004cee84  e8a2026200                CALL 0x00aef12b
004cee89  8be5                      MOV ESP,EBP
004cee8b  5d                        POP EBP
004cee8c  c3                        RET
