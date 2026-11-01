; J460 NPC AI 0x00409100 HELPER_ANM2_Update
; types=0
; identities=*
; entry=00409100
00409100  56                        PUSH ESI
00409101  8bf1                      MOV ESI,ECX
00409103  80be0901000000            CMP byte ptr [ESI + 0x109],0x0
0040910a  7411                      JZ 0x0040911d
0040910c  8d4e30                    LEA ECX,[ESI + 0x30]
0040910f  e81cffffff                CALL 0x00409030
00409114  8d4e50                    LEA ECX,[ESI + 0x50]
00409117  5e                        POP ESI
00409118  e913ffffff                JMP 0x00409030
0040911d  5e                        POP ESI
0040911e  c3                        RET
