; J460 NPC AI 0x00452c40 HELPER_SetExplosionCountdown
; types=4
; identities=4.*
; entry=00452c40
00452c40  55                        PUSH EBP
00452c41  8bec                      MOV EBP,ESP
00452c43  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
00452c46  898110040000              MOV dword ptr [ECX + 0x410],EAX
00452c4c  898114040000              MOV dword ptr [ECX + 0x414],EAX
00452c52  5d                        POP EBP
00452c53  c20400                    RET 0x4
