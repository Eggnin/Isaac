; J460 NPC AI 0x0096f420 HELPER_Laser_SetActiveRotation
; types=7
; identities=7.*
; entry=0096f420
0096f420  55                        PUSH EBP
0096f421  8bec                      MOV EBP,ESP
0096f423  807d1400                  CMP byte ptr [EBP + 0x14],0x0
0096f427  f30f10450c                MOVSS XMM0,dword ptr [EBP + 0xc]
0096f42c  f30f104d10                MOVSS XMM1,dword ptr [EBP + 0x10]
0096f431  56                        PUSH ESI
0096f432  8bf1                      MOV ESI,ECX
0096f434  57                        PUSH EDI
0096f435  8b7d08                    MOV EDI,dword ptr [EBP + 0x8]
0096f438  c686c004000001            MOV byte ptr [ESI + 0x4c0],0x1
0096f43f  89bec4040000              MOV dword ptr [ESI + 0x4c4],EDI
0096f445  f30f1186c8040000          MOVSS dword ptr [ESI + 0x4c8],XMM0
0096f44d  f30f118ecc040000          MOVSS dword ptr [ESI + 0x4cc],XMM1
0096f455  7412                      JZ 0x0096f469
0096f457  f30f5ec1                  DIVSS XMM0,XMM1
0096f45b  e840081800                CALL 0x00aefca0
0096f460  40                        INC EAX
0096f461  03c7                      ADD EAX,EDI
0096f463  898658040000              MOV dword ptr [ESI + 0x458],EAX
0096f469  5f                        POP EDI
0096f46a  5e                        POP ESI
0096f46b  5d                        POP EBP
0096f46c  c21000                    RET 0x10
