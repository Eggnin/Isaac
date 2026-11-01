; J460 NPC AI 0x004173e0 HELPER_Entity_AddFlags
; types=1,1000
; identities=1.*,1000.*
; entry=004173e0
004173e0  55                        PUSH EBP
004173e1  8bec                      MOV EBP,ESP
004173e3  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
004173e6  098168010000              OR dword ptr [ECX + 0x168],EAX
004173ec  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
004173ef  09816c010000              OR dword ptr [ECX + 0x16c],EAX
004173f5  5d                        POP EBP
004173f6  c20800                    RET 0x8
