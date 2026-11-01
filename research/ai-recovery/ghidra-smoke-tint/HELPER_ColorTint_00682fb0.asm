; J460 NPC AI 0x00682fb0 HELPER_ColorTint
; types=1000
; identities=1000.141.*
; entry=00682fb0
00682fb0  55                        PUSH EBP
00682fb1  8bec                      MOV EBP,ESP
00682fb3  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00682fb8  f30f114110                MOVSS dword ptr [ECX + 0x10],XMM0
00682fbd  f30f10450c                MOVSS XMM0,dword ptr [EBP + 0xc]
00682fc2  f30f114114                MOVSS dword ptr [ECX + 0x14],XMM0
00682fc7  f30f104510                MOVSS XMM0,dword ptr [EBP + 0x10]
00682fcc  f30f114118                MOVSS dword ptr [ECX + 0x18],XMM0
00682fd1  f30f104514                MOVSS XMM0,dword ptr [EBP + 0x14]
00682fd6  f30f11411c                MOVSS dword ptr [ECX + 0x1c],XMM0
00682fdb  5d                        POP EBP
00682fdc  c21000                    RET 0x10
