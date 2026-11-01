; J460 NPC AI 0x004172d0 HELPER_Entity_Velocity
; types=9
; identities=9.*
; entry=004172d0
004172d0  55                        PUSH EBP
004172d1  8bec                      MOV EBP,ESP
004172d3  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
004172d6  8b9160030000              MOV EDX,dword ptr [ECX + 0x360]
004172dc  8b8964030000              MOV ECX,dword ptr [ECX + 0x364]
004172e2  8910                      MOV dword ptr [EAX],EDX
004172e4  894804                    MOV dword ptr [EAX + 0x4],ECX
004172e7  5d                        POP EBP
004172e8  c20400                    RET 0x4
