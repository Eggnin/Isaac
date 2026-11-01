; J460 NPC AI 0x0042f160 HELPER_ContactVectorCount
; types=0
; identities=*
; entry=0042f160
0042f160  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
0042f163  2b01                      SUB EAX,dword ptr [ECX]
0042f165  c1f803                    SAR EAX,0x3
0042f168  c3                        RET
