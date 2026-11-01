; J460 NPC AI 0x0040b090 HELPER_0040b090_AnimationEventPredicateE
; types=
; identities=animation
; entry=0040b090
0040b090  55                        PUSH EBP
0040b091  8bec                      MOV EBP,ESP
0040b093  51                        PUSH ECX
0040b094  83793400                  CMP dword ptr [ECX + 0x34],0x0
0040b098  7507                      JNZ 0x0040b0a1
0040b09a  32c0                      XOR AL,AL
0040b09c  59                        POP ECX
0040b09d  5d                        POP EBP
0040b09e  c20400                    RET 0x4
0040b0a1  ff7508                    PUSH dword ptr [EBP + 0x8]
0040b0a4  83c130                    ADD ECX,0x30
0040b0a7  e8c4fdffff                CALL 0x0040ae70
0040b0ac  59                        POP ECX
0040b0ad  5d                        POP EBP
0040b0ae  c20400                    RET 0x4
