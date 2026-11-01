; J460 NPC AI 0x0096ce70 HELPER_Laser_Root
; types=7
; identities=7.*
; entry=0096ce70
0096ce70  8b812c050000              MOV EAX,dword ptr [ECX + 0x52c]
0096ce76  85c0                      TEST EAX,EAX
0096ce78  7407                      JZ 0x0096ce81
0096ce7a  8bc8                      MOV ECX,EAX
0096ce7c  e9efffffff                JMP 0x0096ce70
0096ce81  8d8120050000              LEA EAX,[ECX + 0x520]
0096ce87  c3                        RET
