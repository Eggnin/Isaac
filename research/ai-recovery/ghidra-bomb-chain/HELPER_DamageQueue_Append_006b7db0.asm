; J460 NPC AI 0x006b7db0 HELPER_DamageQueue_Append
; types=4
; identities=4.*
; entry=006b7db0
006b7db0  55                        PUSH EBP
006b7db1  8bec                      MOV EBP,ESP
006b7db3  8b5104                    MOV EDX,dword ptr [ECX + 0x4]
006b7db6  3b5108                    CMP EDX,dword ptr [ECX + 0x8]
006b7db9  742b                      JZ 0x006b7de6
006b7dbb  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
006b7dbe  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
006b7dc1  0f1102                    MOVUPS xmmword ptr [EDX],XMM0
006b7dc4  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
006b7dc8  0f114210                  MOVUPS xmmword ptr [EDX + 0x10],XMM0
006b7dcc  0f104020                  MOVUPS XMM0,xmmword ptr [EAX + 0x20]
006b7dd0  0f114220                  MOVUPS xmmword ptr [EDX + 0x20],XMM0
006b7dd4  f30f7e4030                MOVQ XMM0,qword ptr [EAX + 0x30]
006b7dd9  660fd64230                MOVQ qword ptr [EDX + 0x30],XMM0
006b7dde  83410438                  ADD dword ptr [ECX + 0x4],0x38
006b7de2  5d                        POP EBP
006b7de3  c20400                    RET 0x4
006b7de6  ff7508                    PUSH dword ptr [EBP + 0x8]
006b7de9  52                        PUSH EDX
006b7dea  e8e1010000                CALL 0x006b7fd0
006b7def  5d                        POP EBP
006b7df0  c20400                    RET 0x4
