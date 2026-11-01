; J460 NPC AI 0x004530e0 HELPER_004530e0_BigHornAttackHelperD
; types=411
; identities=big_horn.attack_helper
; entry=004530e0
004530e0  56                        PUSH ESI
004530e1  8bf1                      MOV ESI,ECX
004530e3  8b96c0030000              MOV EDX,dword ptr [ESI + 0x3c0]
004530e9  85d2                      TEST EDX,EDX
004530eb  7451                      JZ 0x0045313e
004530ed  0f1f00                    NOP dword ptr [EAX]
004530f0  83bafc03000002            CMP dword ptr [EDX + 0x3fc],0x2
004530f7  c7828801000000000000      MOV dword ptr [EDX + 0x188],0x0
00453101  7522                      JNZ 0x00453125
00453103  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
00453109  89823c030000              MOV dword ptr [EDX + 0x33c],EAX
0045310f  8b8640030000              MOV EAX,dword ptr [ESI + 0x340]
00453115  898240030000              MOV dword ptr [EDX + 0x340],EAX
0045311b  c782580300000000cac2      MOV dword ptr [EDX + 0x358],0xc2ca0000
00453125  8b86c0030000              MOV EAX,dword ptr [ESI + 0x3c0]
0045312b  33c9                      XOR ECX,ECX
0045312d  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
00453133  3bc2                      CMP EAX,EDX
00453135  0f45c8                    CMOVNZ ECX,EAX
00453138  8bd1                      MOV EDX,ECX
0045313a  85d2                      TEST EDX,EDX
0045313c  75b2                      JNZ 0x004530f0
0045313e  5e                        POP ESI
0045313f  c3                        RET
