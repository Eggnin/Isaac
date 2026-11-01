; J460 NPC AI 0x0040b030 HELPER_0040b030_AnimationEventPredicateD
; types=
; identities=animation
; entry=0040b030
0040b030  55                        PUSH EBP
0040b031  8bec                      MOV EBP,ESP
0040b033  51                        PUSH ECX
0040b034  83793400                  CMP dword ptr [ECX + 0x34],0x0
0040b038  7507                      JNZ 0x0040b041
0040b03a  32c0                      XOR AL,AL
0040b03c  59                        POP ECX
0040b03d  5d                        POP EBP
0040b03e  c20400                    RET 0x4
0040b041  ff7508                    PUSH dword ptr [EBP + 0x8]
0040b044  83c130                    ADD ECX,0x30
0040b047  e884fdffff                CALL 0x0040add0
0040b04c  59                        POP ECX
0040b04d  5d                        POP EBP
0040b04e  c20400                    RET 0x4
