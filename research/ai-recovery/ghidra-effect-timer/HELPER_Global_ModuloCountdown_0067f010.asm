; J460 NPC AI 0x0067f010 HELPER_Global_ModuloCountdown
; types=1,1000
; identities=1.*,1000.*
; entry=0067f010
0067f010  56                        PUSH ESI
0067f011  8bf1                      MOV ESI,ECX
0067f013  85f6                      TEST ESI,ESI
0067f015  7504                      JNZ 0x0067f01b
0067f017  33c0                      XOR EAX,EAX
0067f019  5e                        POP ESI
0067f01a  c3                        RET
0067f01b  e840ff0600                CALL 0x006eef60
0067f020  33d2                      XOR EDX,EDX
0067f022  f7f6                      DIV ESI
0067f024  5e                        POP ESI
0067f025  8bc2                      MOV EAX,EDX
0067f027  c3                        RET
