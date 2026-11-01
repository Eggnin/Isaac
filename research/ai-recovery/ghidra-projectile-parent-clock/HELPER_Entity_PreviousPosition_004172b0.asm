; J460 NPC AI 0x004172b0 HELPER_Entity_PreviousPosition
; types=9
; identities=9.*
; entry=004172b0
004172b0  55                        PUSH EBP
004172b1  8bec                      MOV EBP,ESP
004172b3  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
004172b6  8b918c030000              MOV EDX,dword ptr [ECX + 0x38c]
004172bc  8b8990030000              MOV ECX,dword ptr [ECX + 0x390]
004172c2  8910                      MOV dword ptr [EAX],EDX
004172c4  894804                    MOV dword ptr [EAX + 0x4],ECX
004172c7  5d                        POP EBP
004172c8  c20400                    RET 0x4
