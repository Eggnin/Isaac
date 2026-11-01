; J460 NPC AI 0x00417220 HELPER_EntityMatches
; types=1000
; identities=1000.141.*
; entry=00417220
00417220  55                        PUSH EBP
00417221  8bec                      MOV EBP,ESP
00417223  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
00417226  3b4508                    CMP EAX,dword ptr [EBP + 0x8]
00417229  7520                      JNZ 0x0041724b
0041722b  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
0041722e  83f8ff                    CMP EAX,-0x1
00417231  7405                      JZ 0x00417238
00417233  39412c                    CMP dword ptr [ECX + 0x2c],EAX
00417236  7513                      JNZ 0x0041724b
00417238  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
0041723b  83f8ff                    CMP EAX,-0x1
0041723e  7405                      JZ 0x00417245
00417240  394130                    CMP dword ptr [ECX + 0x30],EAX
00417243  7506                      JNZ 0x0041724b
00417245  b001                      MOV AL,0x1
00417247  5d                        POP EBP
00417248  c20c00                    RET 0xc
0041724b  32c0                      XOR AL,AL
0041724d  5d                        POP EBP
0041724e  c20c00                    RET 0xc
