; J460 NPC AI 0x00813360 HELPER_Room_IsPositionInRoom
; types=7
; identities=7.*
; entry=00813360
00813360  55                        PUSH EBP
00813361  8bec                      MOV EBP,ESP
00813363  83e4f8                    AND ESP,0xfffffff8
00813366  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
00813369  83ec0c                    SUB ESP,0xc
0081336c  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
0081336f  56                        PUSH ESI
00813370  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
00813373  83c0f7                    ADD EAX,-0x9
00813376  83f803                    CMP EAX,0x3
00813379  774f                      JA 0x008133ca
0081337b  f30f105d0c                MOVSS XMM3,dword ptr [EBP + 0xc]
00813380  8d442408                  LEA EAX,[ESP + 0x8]
00813384  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
00813387  83ec0c                    SUB ESP,0xc
0081338a  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
00813390  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
00813396  f30f111c24                MOVSS dword ptr [ESP],XMM3
0081339b  56                        PUSH ESI
0081339c  50                        PUSH EAX
0081339d  e8aefbffff                CALL 0x00812f50
008133a2  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
008133a8  0f2e06                    UCOMISS XMM0,dword ptr [ESI]
008133ab  9f                        LAHF
008133ac  f6c444                    TEST AH,0x44
008133af  7a10                      JP 0x008133c1
008133b1  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
008133b7  0f2e4604                  UCOMISS XMM0,dword ptr [ESI + 0x4]
008133bb  9f                        LAHF
008133bc  f6c444                    TEST AH,0x44
008133bf  7b50                      JNP 0x00813411
008133c1  32c0                      XOR AL,AL
008133c3  5e                        POP ESI
008133c4  8be5                      MOV ESP,EBP
008133c6  5d                        POP EBP
008133c7  c20800                    RET 0x8
008133ca  f30f104d0c                MOVSS XMM1,dword ptr [EBP + 0xc]
008133cf  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
008133d2  0f28c1                    MOVAPS XMM0,XMM1
008133d5  f30f584114                ADDSS XMM0,dword ptr [ECX + 0x14]
008133da  f30f1010                  MOVSS XMM2,dword ptr [EAX]
008133de  0f2fd0                    COMISS XMM2,XMM0
008133e1  72de                      JC 0x008133c1
008133e3  f30f10411c                MOVSS XMM0,dword ptr [ECX + 0x1c]
008133e8  f30f5cc1                  SUBSS XMM0,XMM1
008133ec  0f2fc2                    COMISS XMM0,XMM2
008133ef  72d0                      JC 0x008133c1
008133f1  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
008133f6  0f28c1                    MOVAPS XMM0,XMM1
008133f9  f30f584118                ADDSS XMM0,dword ptr [ECX + 0x18]
008133fe  0f2fd0                    COMISS XMM2,XMM0
00813401  72be                      JC 0x008133c1
00813403  f30f104120                MOVSS XMM0,dword ptr [ECX + 0x20]
00813408  f30f5cc1                  SUBSS XMM0,XMM1
0081340c  0f2fc2                    COMISS XMM0,XMM2
0081340f  72b0                      JC 0x008133c1
00813411  b001                      MOV AL,0x1
00813413  5e                        POP ESI
00813414  8be5                      MOV ESP,EBP
00813416  5d                        POP EBP
00813417  c20800                    RET 0x8
