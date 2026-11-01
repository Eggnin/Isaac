; J460 NPC AI 0x00428b20 HELPER_Entity_SpawnRelay
; types=
; identities=common_spawn
; entry=00428b20
00428b20  55                        PUSH EBP
00428b21  8bec                      MOV EBP,ESP
00428b23  83e4f8                    AND ESP,0xfffffff8
00428b26  6a00                      PUSH 0x0
00428b28  ff7520                    PUSH dword ptr [EBP + 0x20]
00428b2b  ff751c                    PUSH dword ptr [EBP + 0x1c]
00428b2e  ff7518                    PUSH dword ptr [EBP + 0x18]
00428b31  ff7514                    PUSH dword ptr [EBP + 0x14]
00428b34  ff7510                    PUSH dword ptr [EBP + 0x10]
00428b37  ff750c                    PUSH dword ptr [EBP + 0xc]
00428b3a  ff7508                    PUSH dword ptr [EBP + 0x8]
00428b3d  e8ce582d00                CALL 0x006fe410
00428b42  8be5                      MOV ESP,EBP
00428b44  5d                        POP EBP
00428b45  c21c00                    RET 0x1c
