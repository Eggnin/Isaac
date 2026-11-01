; J460 NPC AI 0x00417430 HELPER_Entity_HasFlag
; types=1000
; identities=1000.147.*
; entry=00417430
00417430  55                        PUSH EBP
00417431  8bec                      MOV EBP,ESP
00417433  8b5508                    MOV EDX,dword ptr [EBP + 0x8]
00417436  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
0041743c  239168010000              AND EDX,dword ptr [ECX + 0x168]
00417442  23450c                    AND EAX,dword ptr [EBP + 0xc]
00417445  0bd0                      OR EDX,EAX
00417447  7406                      JZ 0x0041744f
00417449  b001                      MOV AL,0x1
0041744b  5d                        POP EBP
0041744c  c20800                    RET 0x8
0041744f  32c0                      XOR AL,AL
00417451  5d                        POP EBP
00417452  c20800                    RET 0x8
