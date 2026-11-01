; J460 NPC AI 0x00435f20 HELPER_Laser_SetTimeout
; types=7
; identities=7.*
; entry=00435f20
00435f20  55                        PUSH EBP
00435f21  8bec                      MOV EBP,ESP
00435f23  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
00435f26  898158040000              MOV dword ptr [ECX + 0x458],EAX
00435f2c  5d                        POP EBP
00435f2d  c20400                    RET 0x4
