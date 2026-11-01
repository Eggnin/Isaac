; J460 NPC AI 0x00417290 HELPER_Entity_Position
; types=9
; identities=9.*
; entry=00417290
00417290  55                        PUSH EBP
00417291  8bec                      MOV EBP,ESP
00417293  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
00417296  8b913c030000              MOV EDX,dword ptr [ECX + 0x33c]
0041729c  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
004172a2  8910                      MOV dword ptr [EAX],EDX
004172a4  894804                    MOV dword ptr [EAX + 0x4],ECX
004172a7  5d                        POP EBP
004172a8  c20400                    RET 0x4
