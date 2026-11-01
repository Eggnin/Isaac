; J460 NPC AI 0x0040a380 HELPER_0040a380_AnimationActionA
; types=
; identities=animation
; entry=0040a380
0040a380  55                        PUSH EBP
0040a381  8bec                      MOV EBP,ESP
0040a383  807d0c00                  CMP byte ptr [EBP + 0xc],0x0
0040a387  56                        PUSH ESI
0040a388  57                        PUSH EDI
0040a389  8bf9                      MOV EDI,ECX
0040a38b  7547                      JNZ 0x0040a3d4
0040a38d  8b7734                    MOV ESI,dword ptr [EDI + 0x34]
0040a390  85f6                      TEST ESI,ESI
0040a392  7440                      JZ 0x0040a3d4
0040a394  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0040a398  8bc6                      MOV EAX,ESI
0040a39a  7202                      JC 0x0040a39e
0040a39c  8b06                      MOV EAX,dword ptr [ESI]
0040a39e  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
0040a3a1  8a10                      MOV DL,byte ptr [EAX]
0040a3a3  3a11                      CMP DL,byte ptr [ECX]
0040a3a5  751a                      JNZ 0x0040a3c1
0040a3a7  84d2                      TEST DL,DL
0040a3a9  7412                      JZ 0x0040a3bd
0040a3ab  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0040a3ae  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0040a3b1  750e                      JNZ 0x0040a3c1
0040a3b3  83c002                    ADD EAX,0x2
0040a3b6  83c102                    ADD ECX,0x2
0040a3b9  84d2                      TEST DL,DL
0040a3bb  75e4                      JNZ 0x0040a3a1
0040a3bd  33c0                      XOR EAX,EAX
0040a3bf  eb05                      JMP 0x0040a3c6
0040a3c1  1bc0                      SBB EAX,EAX
0040a3c3  83c801                    OR EAX,0x1
0040a3c6  85c0                      TEST EAX,EAX
0040a3c8  750a                      JNZ 0x0040a3d4
0040a3ca  384634                    CMP byte ptr [ESI + 0x34],AL
0040a3cd  7421                      JZ 0x0040a3f0
0040a3cf  384744                    CMP byte ptr [EDI + 0x44],AL
0040a3d2  751c                      JNZ 0x0040a3f0
0040a3d4  6a01                      PUSH 0x1
0040a3d6  ff7508                    PUSH dword ptr [EBP + 0x8]
0040a3d9  8bcf                      MOV ECX,EDI
0040a3db  e8f0010000                CALL 0x0040a5d0
0040a3e0  84c0                      TEST AL,AL
0040a3e2  740c                      JZ 0x0040a3f0
0040a3e4  8d4f30                    LEA ECX,[EDI + 0x30]
0040a3e7  e8c4fdffff                CALL 0x0040a1b0
0040a3ec  c6474401                  MOV byte ptr [EDI + 0x44],0x1
0040a3f0  5f                        POP EDI
0040a3f1  5e                        POP ESI
0040a3f2  5d                        POP EBP
0040a3f3  c20800                    RET 0x8
