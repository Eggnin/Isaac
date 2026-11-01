; J460 NPC AI 0x0040a550 HELPER_0040a550_AnimationPredicateB
; types=
; identities=animation
; entry=0040a550
0040a550  55                        PUSH EBP
0040a551  8bec                      MOV EBP,ESP
0040a553  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
0040a556  85c0                      TEST EAX,EAX
0040a558  7508                      JNZ 0x0040a562
0040a55a  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0040a55d  803800                    CMP byte ptr [EAX],0x0
0040a560  eb3d                      JMP 0x0040a59f
0040a562  80794400                  CMP byte ptr [ECX + 0x44],0x0
0040a566  753f                      JNZ 0x0040a5a7
0040a568  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
0040a56b  803900                    CMP byte ptr [ECX],0x0
0040a56e  7431                      JZ 0x0040a5a1
0040a570  83781410                  CMP dword ptr [EAX + 0x14],0x10
0040a574  7202                      JC 0x0040a578
0040a576  8b00                      MOV EAX,dword ptr [EAX]
0040a578  8a10                      MOV DL,byte ptr [EAX]
0040a57a  3a11                      CMP DL,byte ptr [ECX]
0040a57c  751a                      JNZ 0x0040a598
0040a57e  84d2                      TEST DL,DL
0040a580  7412                      JZ 0x0040a594
0040a582  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0040a585  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0040a588  750e                      JNZ 0x0040a598
0040a58a  83c002                    ADD EAX,0x2
0040a58d  83c102                    ADD ECX,0x2
0040a590  84d2                      TEST DL,DL
0040a592  75e4                      JNZ 0x0040a578
0040a594  33c0                      XOR EAX,EAX
0040a596  eb05                      JMP 0x0040a59d
0040a598  1bc0                      SBB EAX,EAX
0040a59a  83c801                    OR EAX,0x1
0040a59d  85c0                      TEST EAX,EAX
0040a59f  7506                      JNZ 0x0040a5a7
0040a5a1  b001                      MOV AL,0x1
0040a5a3  5d                        POP EBP
0040a5a4  c20400                    RET 0x4
0040a5a7  32c0                      XOR AL,AL
0040a5a9  5d                        POP EBP
0040a5aa  c20400                    RET 0x4
