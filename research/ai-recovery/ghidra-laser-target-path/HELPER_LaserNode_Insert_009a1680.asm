; J460 NPC AI 0x009a1680 HELPER_LaserNode_Insert
; types=7
; identities=7.*
; entry=009a1680
009a1680  55                        PUSH EBP
009a1681  8bec                      MOV EBP,ESP
009a1683  8bd1                      MOV EDX,ECX
009a1685  83ec1c                    SUB ESP,0x1c
009a1688  8b4a04                    MOV ECX,dword ptr [EDX + 0x4]
009a168b  57                        PUSH EDI
009a168c  8b7d0c                    MOV EDI,dword ptr [EBP + 0xc]
009a168f  3b4a08                    CMP ECX,dword ptr [EDX + 0x8]
009a1692  0f84b0000000              JZ 0x009a1748
009a1698  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
009a169b  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
009a169e  3bf9                      CMP EDI,ECX
009a16a0  751d                      JNZ 0x009a16bf
009a16a2  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
009a16a5  f30f7e4010                MOVQ XMM0,qword ptr [EAX + 0x10]
009a16aa  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
009a16ad  660fd64110                MOVQ qword ptr [ECX + 0x10],XMM0
009a16b2  83420418                  ADD dword ptr [EDX + 0x4],0x18
009a16b6  8938                      MOV dword ptr [EAX],EDI
009a16b8  5f                        POP EDI
009a16b9  8be5                      MOV ESP,EBP
009a16bb  5d                        POP EBP
009a16bc  c20c00                    RET 0xc
009a16bf  0f1145e8                  MOVUPS xmmword ptr [EBP + -0x18],XMM0
009a16c3  56                        PUSH ESI
009a16c4  f30f7e4010                MOVQ XMM0,qword ptr [EAX + 0x10]
009a16c9  8d71e8                    LEA ESI,[ECX + -0x18]
009a16cc  660fd645f8                MOVQ qword ptr [EBP + -0x8],XMM0
009a16d1  0f1006                    MOVUPS XMM0,xmmword ptr [ESI]
009a16d4  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
009a16d7  f30f7e4610                MOVQ XMM0,qword ptr [ESI + 0x10]
009a16dc  660fd64110                MOVQ qword ptr [ECX + 0x10],XMM0
009a16e1  83420418                  ADD dword ptr [EDX + 0x4],0x18
009a16e5  3bf7                      CMP ESI,EDI
009a16e7  7437                      JZ 0x009a1720
009a16e9  83c114                    ADD ECX,0x14
009a16ec  8d56fc                    LEA EDX,[ESI + -0x4]
009a16ef  90                        NOP
009a16f0  8b42ec                    MOV EAX,dword ptr [EDX + -0x14]
009a16f3  8d49e8                    LEA ECX,[ECX + -0x18]
009a16f6  8941ec                    MOV dword ptr [ECX + -0x14],EAX
009a16f9  8d52e8                    LEA EDX,[EDX + -0x18]
009a16fc  8b4208                    MOV EAX,dword ptr [EDX + 0x8]
009a16ff  83ee18                    SUB ESI,0x18
009a1702  8941f0                    MOV dword ptr [ECX + -0x10],EAX
009a1705  8b420c                    MOV EAX,dword ptr [EDX + 0xc]
009a1708  8941f4                    MOV dword ptr [ECX + -0xc],EAX
009a170b  8b4210                    MOV EAX,dword ptr [EDX + 0x10]
009a170e  8941f8                    MOV dword ptr [ECX + -0x8],EAX
009a1711  8b4214                    MOV EAX,dword ptr [EDX + 0x14]
009a1714  8941fc                    MOV dword ptr [ECX + -0x4],EAX
009a1717  8b4218                    MOV EAX,dword ptr [EDX + 0x18]
009a171a  8901                      MOV dword ptr [ECX],EAX
009a171c  3bf7                      CMP ESI,EDI
009a171e  75d0                      JNZ 0x009a16f0
009a1720  0f1045e8                  MOVUPS XMM0,xmmword ptr [EBP + -0x18]
009a1724  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
009a1727  5e                        POP ESI
009a1728  0f1107                    MOVUPS xmmword ptr [EDI],XMM0
009a172b  f30f1045f8                MOVSS XMM0,dword ptr [EBP + -0x8]
009a1730  f30f114710                MOVSS dword ptr [EDI + 0x10],XMM0
009a1735  f30f1045fc                MOVSS XMM0,dword ptr [EBP + -0x4]
009a173a  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
009a173f  8938                      MOV dword ptr [EAX],EDI
009a1741  5f                        POP EDI
009a1742  8be5                      MOV ESP,EBP
009a1744  5d                        POP EBP
009a1745  c20c00                    RET 0xc
009a1748  ff7510                    PUSH dword ptr [EBP + 0x10]
009a174b  8bca                      MOV ECX,EDX
009a174d  57                        PUSH EDI
009a174e  e85d000000                CALL 0x009a17b0
009a1753  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
009a1756  5f                        POP EDI
009a1757  8901                      MOV dword ptr [ECX],EAX
009a1759  8bc1                      MOV EAX,ECX
009a175b  8be5                      MOV ESP,EBP
009a175d  5d                        POP EBP
009a175e  c20c00                    RET 0xc
