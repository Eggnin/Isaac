; J460 NPC AI 0x0096cf40 HELPER_Laser_FriendlyPredicate
; types=7
; identities=7.*
; entry=0096cf40
0096cf40  8b91bc030000              MOV EDX,dword ptr [ECX + 0x3bc]
0096cf46  85d2                      TEST EDX,EDX
0096cf48  7422                      JZ 0x0096cf6c
0096cf4a  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
0096cf4d  83f802                    CMP EAX,0x2
0096cf50  7509                      JNZ 0x0096cf5b
0096cf52  837a3401                  CMP dword ptr [EDX + 0x34],0x1
0096cf56  7514                      JNZ 0x0096cf6c
0096cf58  b001                      MOV AL,0x1
0096cf5a  c3                        RET
0096cf5b  3de8030000                CMP EAX,0x3e8
0096cf60  74f0                      JZ 0x0096cf52
0096cf62  83f801                    CMP EAX,0x1
0096cf65  74f1                      JZ 0x0096cf58
0096cf67  83f803                    CMP EAX,0x3
0096cf6a  74ec                      JZ 0x0096cf58
0096cf6c  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
0096cf6f  83f801                    CMP EAX,0x1
0096cf72  74e4                      JZ 0x0096cf58
0096cf74  83f803                    CMP EAX,0x3
0096cf77  74df                      JZ 0x0096cf58
0096cf79  32c0                      XOR AL,AL
0096cf7b  c3                        RET
