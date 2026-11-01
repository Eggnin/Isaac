; J460 NPC AI 0x009a1610 HELPER_LaserNode_PopBack
; types=7
; identities=7.*
; entry=009a1610
009a1610  55                        PUSH EBP
009a1611  8bec                      MOV EBP,ESP
009a1613  51                        PUSH ECX
009a1614  53                        PUSH EBX
009a1615  8b5d0c                    MOV EBX,dword ptr [EBP + 0xc]
009a1618  8bc1                      MOV EAX,ECX
009a161a  56                        PUSH ESI
009a161b  57                        PUSH EDI
009a161c  8945fc                    MOV dword ptr [EBP + -0x4],EAX
009a161f  8b7804                    MOV EDI,dword ptr [EAX + 0x4]
009a1622  8d7318                    LEA ESI,[EBX + 0x18]
009a1625  3bf7                      CMP ESI,EDI
009a1627  7437                      JZ 0x009a1660
009a1629  8d4b14                    LEA ECX,[EBX + 0x14]
009a162c  8d532c                    LEA EDX,[EBX + 0x2c]
009a162f  90                        NOP
009a1630  8b06                      MOV EAX,dword ptr [ESI]
009a1632  8d4918                    LEA ECX,[ECX + 0x18]
009a1635  8941d4                    MOV dword ptr [ECX + -0x2c],EAX
009a1638  8d5218                    LEA EDX,[EDX + 0x18]
009a163b  8b42d8                    MOV EAX,dword ptr [EDX + -0x28]
009a163e  83c618                    ADD ESI,0x18
009a1641  8941d8                    MOV dword ptr [ECX + -0x28],EAX
009a1644  8b42dc                    MOV EAX,dword ptr [EDX + -0x24]
009a1647  8941dc                    MOV dword ptr [ECX + -0x24],EAX
009a164a  8b42e0                    MOV EAX,dword ptr [EDX + -0x20]
009a164d  8941e0                    MOV dword ptr [ECX + -0x20],EAX
009a1650  8b42e4                    MOV EAX,dword ptr [EDX + -0x1c]
009a1653  8941e4                    MOV dword ptr [ECX + -0x1c],EAX
009a1656  8b42e8                    MOV EAX,dword ptr [EDX + -0x18]
009a1659  8941e8                    MOV dword ptr [ECX + -0x18],EAX
009a165c  3bf7                      CMP ESI,EDI
009a165e  75d0                      JNZ 0x009a1630
009a1660  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
009a1663  8d47e8                    LEA EAX,[EDI + -0x18]
009a1666  5f                        POP EDI
009a1667  5e                        POP ESI
009a1668  894104                    MOV dword ptr [ECX + 0x4],EAX
009a166b  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
009a166e  8918                      MOV dword ptr [EAX],EBX
009a1670  5b                        POP EBX
009a1671  8be5                      MOV ESP,EBP
009a1673  5d                        POP EBP
009a1674  c20800                    RET 0x8
