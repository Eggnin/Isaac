; J460 NPC AI 0x004b43c0 AI_004b43c0
; types=905
; identities=905.0.0
; entry=004b43c0
004b43c0  55                        PUSH EBP
004b43c1  8bec                      MOV EBP,ESP
004b43c3  83e4f8                    AND ESP,0xfffffff8
004b43c6  81ec40010000              SUB ESP,0x140
004b43cc  a1b493bf00                MOV EAX,[0x00bf93b4]
004b43d1  33c4                      XOR EAX,ESP
004b43d3  8984243c010000            MOV dword ptr [ESP + 0x13c],EAX
004b43da  56                        PUSH ESI
004b43db  57                        PUSH EDI
004b43dc  8bf9                      MOV EDI,ECX
004b43de  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
004b43e6  897c241c                  MOV dword ptr [ESP + 0x1c],EDI
004b43ea  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
004b43f1  0f85a1020000              JNZ 0x004b4698
004b43f7  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004b43fc  0f57c9                    XORPS XMM1,XMM1
004b43ff  0f2fc1                    COMISS XMM0,XMM1
004b4402  7673                      JBE 0x004b4477
004b4404  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
004b4407  83e002                    AND EAX,0x2
004b440a  83c800                    OR EAX,0x0
004b440d  7468                      JZ 0x004b4477
004b440f  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
004b4416  c7471800000000            MOV dword ptr [EDI + 0x18],0x0
004b441d  c7471c00000000            MOV dword ptr [EDI + 0x1c],0x0
004b4424  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004b4427  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004b442a  744b                      JZ 0x004b4477
004b442c  0f1f4000                  NOP dword ptr [EAX]
004b4430  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004b4433  83e106                    AND ECX,0x6
004b4436  83c900                    OR ECX,0x0
004b4439  741a                      JZ 0x004b4455
004b443b  83781801                  CMP dword ptr [EAX + 0x18],0x1
004b443f  7414                      JZ 0x004b4455
004b4441  c70000000000              MOV dword ptr [EAX],0x0
004b4447  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
004b444e  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
004b4455  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004b4459  f30f584714                ADDSS XMM0,dword ptr [EDI + 0x14]
004b445e  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
004b4463  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004b4466  094f18                    OR dword ptr [EDI + 0x18],ECX
004b4469  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
004b446c  83c038                    ADD EAX,0x38
004b446f  094f1c                    OR dword ptr [EDI + 0x1c],ECX
004b4472  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004b4475  75b9                      JNZ 0x004b4430
004b4477  83bf640b000012            CMP dword ptr [EDI + 0xb64],0x12
004b447e  7575                      JNZ 0x004b44f5
004b4480  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004b4483  85c0                      TEST EAX,EAX
004b4485  741b                      JZ 0x004b44a2
004b4487  50                        PUSH EAX
004b4488  8d4c2470                  LEA ECX,[ESP + 0x70]
004b448c  e8bf8af5ff                CALL 0x0040cf50
004b4491  8b54247c                  MOV EDX,dword ptr [ESP + 0x7c]
004b4495  8b74246c                  MOV ESI,dword ptr [ESP + 0x6c]
004b4499  8b842480000000            MOV EAX,dword ptr [ESP + 0x80]
004b44a0  eb18                      JMP 0x004b44ba
004b44a2  33f6                      XOR ESI,ESI
004b44a4  b80f000000                MOV EAX,0xf
004b44a9  33d2                      XOR EDX,EDX
004b44ab  8974246c                  MOV dword ptr [ESP + 0x6c],ESI
004b44af  89842480000000            MOV dword ptr [ESP + 0x80],EAX
004b44b6  8954247c                  MOV dword ptr [ESP + 0x7c],EDX
004b44ba  83f810                    CMP EAX,0x10
004b44bd  c744240c03000000          MOV dword ptr [ESP + 0xc],0x3
004b44c5  8d4c246c                  LEA ECX,[ESP + 0x6c]
004b44c9  6a05                      PUSH 0x5
004b44cb  0f43ce                    CMOVNC ECX,ESI
004b44ce  683ce1b100                PUSH 0xb1e13c
004b44d3  e80886f5ff                CALL 0x0040cae0
004b44d8  83c408                    ADD ESP,0x8
004b44db  84c0                      TEST AL,AL
004b44dd  741a                      JZ 0x004b44f9
004b44df  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004b44e3  7409                      JZ 0x004b44ee
004b44e5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004b44ec  750b                      JNZ 0x004b44f9
004b44ee  c644242f01                MOV byte ptr [ESP + 0x2f],0x1
004b44f3  eb09                      JMP 0x004b44fe
004b44f5  8b74246c                  MOV ESI,dword ptr [ESP + 0x6c]
004b44f9  c644242f00                MOV byte ptr [ESP + 0x2f],0x0
004b44fe  f644240c01                TEST byte ptr [ESP + 0xc],0x1
004b4503  7439                      JZ 0x004b453e
004b4505  8b842480000000            MOV EAX,dword ptr [ESP + 0x80]
004b450c  83f810                    CMP EAX,0x10
004b450f  722d                      JC 0x004b453e
004b4511  8d4801                    LEA ECX,[EAX + 0x1]
004b4514  8bc6                      MOV EAX,ESI
004b4516  81f900100000              CMP ECX,0x1000
004b451c  7216                      JC 0x004b4534
004b451e  8b76fc                    MOV ESI,dword ptr [ESI + -0x4]
004b4521  83c123                    ADD ECX,0x23
004b4524  2bc6                      SUB EAX,ESI
004b4526  83c0fc                    ADD EAX,-0x4
004b4529  83f81f                    CMP EAX,0x1f
004b452c  7606                      JBE 0x004b4534
004b452e  ff159488b100              CALL dword ptr [0x00b18894]
004b4534  51                        PUSH ECX
004b4535  56                        PUSH ESI
004b4536  e821ac6300                CALL 0x00aef15c
004b453b  83c408                    ADD ESP,0x8
004b453e  807c242f00                CMP byte ptr [ESP + 0x2f],0x0
004b4543  0f8450240000              JZ 0x004b6999
004b4549  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004b4551  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004b4557  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
004b455d  83f812                    CMP EAX,0x12
004b4560  750a                      JNZ 0x004b456c
004b4562  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004b456a  eb0d                      JMP 0x004b4579
004b456c  83f813                    CMP EAX,0x13
004b456f  750e                      JNZ 0x004b457f
004b4571  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004b4579  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
004b457f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004b4585  8d4c240c                  LEA ECX,[ESP + 0xc]
004b4589  c744240ce3010000          MOV dword ptr [ESP + 0xc],0x1e3
004b4591  e8ea214a00                CALL 0x00956780
004b4596  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
004b459c  83ec08                    SUB ESP,0x8
004b459f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004b45a7  f30f110424                MOVSS dword ptr [ESP],XMM0
004b45ac  6a00                      PUSH 0x0
004b45ae  6a2d                      PUSH 0x2d
004b45b0  51                        PUSH ECX
004b45b1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b45b8  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004b45be  ff742420                  PUSH dword ptr [ESP + 0x20]
004b45c2  e869964700                CALL 0x0092dc30
004b45c7  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
004b45cf  90                        NOP
004b45d0  e88ba92300                CALL 0x006eef60
004b45d5  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004b45dd  0f57c9                    XORPS XMM1,XMM1
004b45e0  f30f5805c4a8ba00          ADDSS XMM0,dword ptr [0x00baa8c4]
004b45e8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004b45ee  6a00                      PUSH 0x0
004b45f0  50                        PUSH EAX
004b45f1  6a01                      PUSH 0x1
004b45f3  57                        PUSH EDI
004b45f4  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
004b45fa  8d442420                  LEA EAX,[ESP + 0x20]
004b45fe  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004b4606  6840b6c700                PUSH 0xc7b640
004b460b  f30f58c1                  ADDSS XMM0,XMM1
004b460f  50                        PUSH EAX
004b4610  6894000000                PUSH 0x94
004b4615  68e8030000                PUSH 0x3e8
004b461a  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
004b4620  e8eb9d2400                CALL 0x006fe410
004b4625  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
004b462b  89442430                  MOV dword ptr [ESP + 0x30],EAX
004b462f  8db0bc030000              LEA ESI,[EAX + 0x3bc]
004b4635  85c9                      TEST ECX,ECX
004b4637  7414                      JZ 0x004b464d
004b4639  8d44241c                  LEA EAX,[ESP + 0x1c]
004b463d  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
004b4641  50                        PUSH EAX
004b4642  81c1cc030000              ADD ECX,0x3cc
004b4648  e8c3ab0100                CALL 0x004cf210
004b464d  56                        PUSH ESI
004b464e  8bcf                      MOV ECX,EDI
004b4650  893e                      MOV dword ptr [ESI],EDI
004b4652  e899960100                CALL 0x004cdcf0
004b4657  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
004b465b  8b4c2430                  MOV ECX,dword ptr [ESP + 0x30]
004b465f  660f6ec0                  MOVD XMM0,EAX
004b4663  40                        INC EAX
004b4664  8944240c                  MOV dword ptr [ESP + 0xc],EAX
004b4668  0f5bc0                    CVTDQ2PS XMM0,XMM0
004b466b  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004b4673  f30f118174040000          MOVSS dword ptr [ECX + 0x474],XMM0
004b467b  83f804                    CMP EAX,0x4
004b467e  0f8c4cffffff              JL 0x004b45d0
004b4684  5f                        POP EDI
004b4685  5e                        POP ESI
004b4686  8b8c243c010000            MOV ECX,dword ptr [ESP + 0x13c]
004b468d  33cc                      XOR ECX,ESP
004b468f  e897aa6300                CALL 0x00aef12b
004b4694  8be5                      MOV ESP,EBP
004b4696  5d                        POP EBP
004b4697  c3                        RET
004b4698  8d7748                    LEA ESI,[EDI + 0x48]
004b469b  6a00                      PUSH 0x0
004b469d  8bce                      MOV ECX,ESI
004b469f  e87c6bf5ff                CALL 0x0040b220
004b46a4  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004b46ac  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
004b46b4  0f57c9                    XORPS XMM1,XMM1
004b46b7  f30f105054                MOVSS XMM2,dword ptr [EAX + 0x54]
004b46bc  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004b46c4  f30f591da4a3ba00          MULSS XMM3,dword ptr [0x00baa3a4]
004b46cc  2bc8                      SUB ECX,EAX
004b46ce  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004b46d4  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
004b46da  894c2408                  MOV dword ptr [ESP + 0x8],ECX
004b46de  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
004b46e6  83f864                    CMP EAX,0x64
004b46e9  0f870b210000              JA 0x004b67fa
004b46ef  0fb680286a4b00            MOVZX EAX,byte ptr [EAX + 0x4b6a28]
004b46f6  ff2485e8694b00            JMP dword ptr [EAX*0x4 + 0x4b69e8]
004b67fa  8d7748                    LEA ESI,[EDI + 0x48]
004b67fd  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004b6805  0f57d2                    XORPS XMM2,XMM2
004b6808  8bcf                      MOV ECX,EDI
004b680a  e8515f1f00                CALL 0x006ac760
004b680f  8bd0                      MOV EDX,EAX
004b6811  85d2                      TEST EDX,EDX
004b6813  0f8e84000000              JLE 0x004b689d
004b6819  8a87a40b0000              MOV AL,byte ptr [EDI + 0xba4]
004b681f  84c0                      TEST AL,AL
004b6821  7e17                      JLE 0x004b683a
004b6823  0fbec8                    MOVSX ECX,AL
004b6826  8bc1                      MOV EAX,ECX
004b6828  2bc2                      SUB EAX,EDX
004b682a  3bd1                      CMP EDX,ECX
004b682c  b900000000                MOV ECX,0x0
004b6831  0f4dc1                    CMOVGE EAX,ECX
004b6834  8887a40b0000              MOV byte ptr [EDI + 0xba4],AL
004b683a  8a87a50b0000              MOV AL,byte ptr [EDI + 0xba5]
004b6840  84c0                      TEST AL,AL
004b6842  7e17                      JLE 0x004b685b
004b6844  0fbec8                    MOVSX ECX,AL
004b6847  8bc1                      MOV EAX,ECX
004b6849  2bc2                      SUB EAX,EDX
004b684b  3bd1                      CMP EDX,ECX
004b684d  b900000000                MOV ECX,0x0
004b6852  0f4dc1                    CMOVGE EAX,ECX
004b6855  8887a50b0000              MOV byte ptr [EDI + 0xba5],AL
004b685b  8a87a60b0000              MOV AL,byte ptr [EDI + 0xba6]
004b6861  84c0                      TEST AL,AL
004b6863  7e17                      JLE 0x004b687c
004b6865  0fbec8                    MOVSX ECX,AL
004b6868  8bc1                      MOV EAX,ECX
004b686a  2bc2                      SUB EAX,EDX
004b686c  3bd1                      CMP EDX,ECX
004b686e  b900000000                MOV ECX,0x0
004b6873  0f4dc1                    CMOVGE EAX,ECX
004b6876  8887a60b0000              MOV byte ptr [EDI + 0xba6],AL
004b687c  8a87a70b0000              MOV AL,byte ptr [EDI + 0xba7]
004b6882  84c0                      TEST AL,AL
004b6884  7e17                      JLE 0x004b689d
004b6886  0fbec8                    MOVSX ECX,AL
004b6889  8bc1                      MOV EAX,ECX
004b688b  2bc2                      SUB EAX,EDX
004b688d  3bd1                      CMP EDX,ECX
004b688f  b900000000                MOV ECX,0x0
004b6894  0f4dc1                    CMOVGE EAX,ECX
004b6897  8887a70b0000              MOV byte ptr [EDI + 0xba7],AL
004b689d  6a00                      PUSH 0x0
004b689f  8bce                      MOV ECX,ESI
004b68a1  e87a49f5ff                CALL 0x0040b220
004b68a6  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
004b68ac  f30f114054                MOVSS dword ptr [EAX + 0x54],XMM0
004b68b1  8b8754010000              MOV EAX,dword ptr [EDI + 0x154]
004b68b7  85c0                      TEST EAX,EAX
004b68b9  7813                      JS 0x004b68ce
004b68bb  50                        PUSH EAX
004b68bc  8bce                      MOV ECX,ESI
004b68be  e85d49f5ff                CALL 0x0040b220
004b68c3  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
004b68c9  f30f114054                MOVSS dword ptr [EAX + 0x54],XMM0
004b68ce  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004b68d6  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
004b68dd  9f                        LAHF
004b68de  f6c444                    TEST AH,0x44
004b68e1  7a15                      JP 0x004b68f8
004b68e3  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004b68eb  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004b68f2  9f                        LAHF
004b68f3  f6c444                    TEST AH,0x44
004b68f6  7b38                      JNP 0x004b6930
004b68f8  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004b6900  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004b6908  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004b6910  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004b6918  f30f5ed0                  DIVSS XMM2,XMM0
004b691c  f30f5ec8                  DIVSS XMM1,XMM0
004b6920  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004b6928  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004b6930  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004b6937  7460                      JZ 0x004b6999
004b6939  33f6                      XOR ESI,ESI
004b693b  39b7000c0000              CMP dword ptr [EDI + 0xc00],ESI
004b6941  7656                      JBE 0x004b6999
004b6943  8b87fc0b0000              MOV EAX,dword ptr [EDI + 0xbfc]
004b6949  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
004b694f  49                        DEC ECX
004b6950  8d1406                    LEA EDX,[ESI + EAX*0x1]
004b6953  8bc2                      MOV EAX,EDX
004b6955  83e203                    AND EDX,0x3
004b6958  c1e802                    SHR EAX,0x2
004b695b  23c8                      AND ECX,EAX
004b695d  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004b6963  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004b6966  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
004b6969  85c9                      TEST ECX,ECX
004b696b  7423                      JZ 0x004b6990
004b696d  83792821                  CMP dword ptr [ECX + 0x28],0x21
004b6971  751d                      JNZ 0x004b6990
004b6973  f30f108180030000          MOVSS XMM0,dword ptr [ECX + 0x380]
004b697b  0f2f0528a5ba00            COMISS XMM0,dword ptr [0x00baa528]
004b6982  720c                      JC 0x004b6990
004b6984  8b01                      MOV EAX,dword ptr [ECX]
004b6986  c6817301000001            MOV byte ptr [ECX + 0x173],0x1
004b698d  ff500c                    CALL dword ptr [EAX + 0xc]
004b6990  46                        INC ESI
004b6991  3bb7000c0000              CMP ESI,dword ptr [EDI + 0xc00]
004b6997  72aa                      JC 0x004b6943
004b6999  8b8c2444010000            MOV ECX,dword ptr [ESP + 0x144]
004b69a0  5f                        POP EDI
004b69a1  5e                        POP ESI
004b69a2  33cc                      XOR ECX,ESP
004b69a4  e882876300                CALL 0x00aef12b
004b69a9  8be5                      MOV ESP,EBP
004b69ab  5d                        POP EBP
004b69ac  c3                        RET
