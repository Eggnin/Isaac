; J460 NPC AI 0x004173b0 HELPER_IsPlayer
; types=1000
; identities=1000.141.*
; entry=004173b0
004173b0  83792801                  CMP dword ptr [ECX + 0x28],0x1
004173b4  0f94c0                    SETZ AL
004173b7  c3                        RET
