; J460 NPC AI 0x0042f150 HELPER_ContactVectorAt
; types=0
; identities=*
; entry=0042f150
0042f150  55                        PUSH EBP
0042f151  8bec                      MOV EBP,ESP
0042f153  8b09                      MOV ECX,dword ptr [ECX]
0042f155  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0042f158  8d04c1                    LEA EAX,[ECX + EAX*0x8]
0042f15b  5d                        POP EBP
0042f15c  c20400                    RET 0x4
