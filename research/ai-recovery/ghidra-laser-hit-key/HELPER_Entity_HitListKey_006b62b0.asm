; J460 NPC AI 0x006b62b0 HELPER_Entity_HitListKey
; types=7
; identities=7.*
; entry=006b62b0
006b62b0  a17816c700                MOV EAX,[0x00c71678]
006b62b5  8bd1                      MOV EDX,ECX
006b62b7  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006b62be  7c06                      JL 0x006b62c6
006b62c0  837a2801                  CMP dword ptr [EDX + 0x28],0x1
006b62c4  7464                      JZ 0x006b632a
006b62c6  8b4a28                    MOV ECX,dword ptr [EDX + 0x28]
006b62c9  8d41f6                    LEA EAX,[ECX + -0xa]
006b62cc  3ddd030000                CMP EAX,0x3dd
006b62d1  7757                      JA 0x006b632a
006b62d3  81f9d8000000              CMP ECX,0xd8
006b62d9  7f31                      JG 0x006b630c
006b62db  7416                      JZ 0x006b62f3
006b62dd  8d41ed                    LEA EAX,[ECX + -0x13]
006b62e0  83f846                    CMP EAX,0x46
006b62e3  7745                      JA 0x006b632a
006b62e5  0fb68064636b00            MOVZX EAX,byte ptr [EAX + 0x6b6364]
006b62ec  ff24855c636b00            JMP dword ptr [EAX*0x4 + 0x6b635c]
006b62f3  8bc1                      MOV EAX,ECX
006b62f5  83f959                    CMP ECX,0x59
006b62f8  7430                      JZ 0x006b632a
006b62fa  83f813                    CMP EAX,0x13
006b62fd  742b                      JZ 0x006b632a
006b62ff  83f91c                    CMP ECX,0x1c
006b6302  7538                      JNZ 0x006b633c
006b6304  837a2c02                  CMP dword ptr [EDX + 0x2c],0x2
006b6308  7532                      JNZ 0x006b633c
006b630a  eb3b                      JMP 0x006b6347
006b630c  81f98d030000              CMP ECX,0x38d
006b6312  7f1a                      JG 0x006b632e
006b6314  7426                      JZ 0x006b633c
006b6316  8bc1                      MOV EAX,ECX
006b6318  2def000000                SUB EAX,0xef
006b631d  741d                      JZ 0x006b633c
006b631f  83e805                    SUB EAX,0x5
006b6322  7506                      JNZ 0x006b632a
006b6324  837a2c02                  CMP dword ptr [EDX + 0x2c],0x2
006b6328  7412                      JZ 0x006b633c
006b632a  8b4220                    MOV EAX,dword ptr [EDX + 0x20]
006b632d  c3                        RET
006b632e  8bc1                      MOV EAX,ECX
006b6330  2d90030000                SUB EAX,0x390
006b6335  7405                      JZ 0x006b633c
006b6337  83e806                    SUB EAX,0x6
006b633a  75ee                      JNZ 0x006b632a
006b633c  83f93e                    CMP ECX,0x3e
006b633f  750f                      JNZ 0x006b6350
006b6341  837a2c01                  CMP dword ptr [EDX + 0x2c],0x1
006b6345  7509                      JNZ 0x006b6350
006b6347  83bac003000000            CMP dword ptr [EDX + 0x3c0],0x0
006b634e  75da                      JNZ 0x006b632a
006b6350  8bca                      MOV ECX,EDX
006b6352  e89926ffff                CALL 0x006a89f0
006b6357  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
006b635a  c3                        RET
