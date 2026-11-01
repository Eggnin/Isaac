; J460 NPC AI 0x006a2030 HELPER_Bomb_ContactMode
; types=4
; identities=4.*
; entry=006a2030
006a2030  8b412c                    MOV EAX,dword ptr [ECX + 0x2c]
006a2033  83f813                    CMP EAX,0x13
006a2036  7408                      JZ 0x006a2040
006a2038  83f814                    CMP EAX,0x14
006a203b  7403                      JZ 0x006a2040
006a203d  32c0                      XOR AL,AL
006a203f  c3                        RET
006a2040  b001                      MOV AL,0x1
006a2042  c3                        RET
