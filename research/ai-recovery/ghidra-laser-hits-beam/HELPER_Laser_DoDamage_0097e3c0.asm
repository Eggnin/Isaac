; J460 NPC AI 0x0097e3c0 HELPER_Laser_DoDamage
; types=7
; identities=7.*
; entry=0097e3c0
0097e3c0  55                        PUSH EBP
0097e3c1  8bec                      MOV EBP,ESP
0097e3c3  83ec60                    SUB ESP,0x60
0097e3c6  a1b493bf00                MOV EAX,[0x00bf93b4]
0097e3cb  33c5                      XOR EAX,EBP
0097e3cd  8945f8                    MOV dword ptr [EBP + -0x8],EAX
0097e3d0  53                        PUSH EBX
0097e3d1  8bd9                      MOV EBX,ECX
0097e3d3  f30f1155f0                MOVSS dword ptr [EBP + -0x10],XMM2
0097e3d8  56                        PUSH ESI
0097e3d9  57                        PUSH EDI
0097e3da  8b8b2c050000              MOV ECX,dword ptr [EBX + 0x52c]
0097e3e0  85c9                      TEST ECX,ECX
0097e3e2  7409                      JZ 0x0097e3ed
0097e3e4  e887eafeff                CALL 0x0096ce70
0097e3e9  8bf0                      MOV ESI,EAX
0097e3eb  eb06                      JMP 0x0097e3f3
0097e3ed  8db320050000              LEA ESI,[EBX + 0x520]
0097e3f3  8b7d08                    MOV EDI,dword ptr [EBP + 0x8]
0097e3f6  8bcf                      MOV ECX,EDI
0097e3f8  e8b37ed3ff                CALL 0x006b62b0
0097e3fd  50                        PUSH EAX
0097e3fe  8bce                      MOV ECX,ESI
0097e400  e86b31abff                CALL 0x00431570
0097e405  8b5728                    MOV EDX,dword ptr [EDI + 0x28]
0097e408  83fa04                    CMP EDX,0x4
0097e40b  0f84ad020000              JZ 0x0097e6be
0097e411  8b83c8030000              MOV EAX,dword ptr [EBX + 0x3c8]
0097e417  8bcb                      MOV ECX,EBX
0097e419  85c0                      TEST EAX,EAX
0097e41b  0f45c8                    CMOVNZ ECX,EAX
0097e41e  894dec                    MOV dword ptr [EBP + -0x14],ECX
0097e421  83fa01                    CMP EDX,0x1
0097e424  0f85af010000              JNZ 0x0097e5d9
0097e42a  a17816c700                MOV EAX,[0x00c71678]
0097e42f  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0097e436  7d40                      JGE 0x0097e478
0097e438  6a00                      PUSH 0x0
0097e43a  68dcd6c500                PUSH 0xc5d6dc
0097e43f  68dcd5c500                PUSH 0xc5d5dc
0097e444  6a00                      PUSH 0x0
0097e446  57                        PUSH EDI
0097e447  e865241700                CALL 0x00af08b1
0097e44c  8bf8                      MOV EDI,EAX
0097e44e  83c414                    ADD ESP,0x14
0097e451  8b0f                      MOV ECX,dword ptr [EDI]
0097e453  ff75ec                    PUSH dword ptr [EBP + -0x14]
0097e456  8b7120                    MOV ESI,dword ptr [ECX + 0x20]
0097e459  8d4da4                    LEA ECX,[EBP + -0x5c]
0097e45c  e8af2eabff                CALL 0x00431310
0097e461  6a1e                      PUSH 0x1e
0097e463  8d45a4                    LEA EAX,[EBP + -0x5c]
0097e466  50                        PUSH EAX
0097e467  6a00                      PUSH 0x0
0097e469  6a08                      PUSH 0x8
0097e46b  51                        PUSH ECX
0097e46c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0097e473  e942020000                JMP 0x0097e6ba
0097e478  57                        PUSH EDI
0097e479  8bcb                      MOV ECX,EBX
0097e47b  e820abd2ff                CALL 0x006a8fa0
0097e480  84c0                      TEST AL,AL
0097e482  0f8536020000              JNZ 0x0097e6be
0097e488  0f108328040000            MOVUPS XMM0,xmmword ptr [EBX + 0x428]
0097e48f  53                        PUSH EBX
0097e490  83ec14                    SUB ESP,0x14
0097e493  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0097e49a  8db328040000              LEA ESI,[EBX + 0x428]
0097e4a0  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0097e4a7  8bc4                      MOV EAX,ESP
0097e4a9  8975e0                    MOV dword ptr [EBP + -0x20],ESI
0097e4ac  8d55e4                    LEA EDX,[EBP + -0x1c]
0097e4af  51                        PUSH ECX
0097e4b0  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0097e4b3  e838edcfff                CALL 0x0067d1f0
0097e4b8  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
0097e4bd  8d933c030000              LEA EDX,[EBX + 0x33c]
0097e4c3  83c418                    ADD ESP,0x18
0097e4c6  8bcf                      MOV ECX,EDI
0097e4c8  f30f110424                MOVSS dword ptr [ESP],XMM0
0097e4cd  0f1006                    MOVUPS XMM0,xmmword ptr [ESI]
0097e4d0  53                        PUSH EBX
0097e4d1  83ec10                    SUB ESP,0x10
0097e4d4  8bc4                      MOV EAX,ESP
0097e4d6  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0097e4d9  e882cacfff                CALL 0x0067af60
0097e4de  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0097e4e4  33c0                      XOR EAX,EAX
0097e4e6  81e100000001              AND ECX,0x1000000
0097e4ec  83c418                    ADD ESP,0x18
0097e4ef  0bc1                      OR EAX,ECX
0097e4f1  7478                      JZ 0x0097e56b
0097e4f3  8bcb                      MOV ECX,EBX
0097e4f5  e836e9feff                CALL 0x0096ce30
0097e4fa  84c0                      TEST AL,AL
0097e4fc  746d                      JZ 0x0097e56b
0097e4fe  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0097e504  8d4df4                    LEA ECX,[EBP + -0xc]
0097e507  c745f44d000000            MOV dword ptr [EBP + -0xc],0x4d
0097e50e  e86d82fdff                CALL 0x00956780
0097e513  83ec08                    SUB ESP,0x8
0097e516  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0097e51e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0097e525  6a00                      PUSH 0x0
0097e527  6a08                      PUSH 0x8
0097e529  51                        PUSH ECX
0097e52a  c704243333333f            MOV dword ptr [ESP],0x3f333333
0097e531  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0097e537  ff75f4                    PUSH dword ptr [EBP + -0xc]
0097e53a  e8f1f6faff                CALL 0x0092dc30
0097e53f  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
0097e544  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0097e54a  f30f58c0                  ADDSS XMM0,XMM0
0097e54e  818f6c01000000008000      OR dword ptr [EDI + 0x16c],0x800000
0097e558  898768010000              MOV dword ptr [EDI + 0x168],EAX
0097e55e  f30f5805fca6ba00          ADDSS XMM0,dword ptr [0x00baa6fc]
0097e566  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
0097e56b  f30f1083f4040000          MOVSS XMM0,dword ptr [EBX + 0x4f4]
0097e573  0f57c9                    XORPS XMM1,XMM1
0097e576  0f2fc1                    COMISS XMM0,XMM1
0097e579  0f86d7000000              JBE 0x0097e656
0097e57f  6a00                      PUSH 0x0
0097e581  8bcf                      MOV ECX,EDI
0097e583  e80876d3ff                CALL 0x006b5b90
0097e588  84c0                      TEST AL,AL
0097e58a  0f84c6000000              JZ 0x0097e656
0097e590  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
0097e596  8d4dcc                    LEA ECX,[EBP + -0x34]
0097e599  f30f7e05e0f4b100          MOVQ XMM0,qword ptr [0x00b1f4e0]
0097e5a1  8945cc                    MOV dword ptr [EBP + -0x34],EAX
0097e5a4  a1e8f4b100                MOV EAX,[0x00b1f4e8]
0097e5a9  660fd645d0                MOVQ qword ptr [EBP + -0x30],XMM0
0097e5ae  8945d8                    MOV dword ptr [EBP + -0x28],EAX
0097e5b1  e8caaae6ff                CALL 0x007e9080
0097e5b6  f30f1083f4040000          MOVSS XMM0,dword ptr [EBX + 0x4f4]
0097e5be  d95df4                    FSTP dword ptr [EBP + -0xc]
0097e5c1  0f2f45f4                  COMISS XMM0,dword ptr [EBP + -0xc]
0097e5c5  0f868b000000              JBE 0x0097e656
0097e5cb  8b5de4                    MOV EBX,dword ptr [EBP + -0x1c]
0097e5ce  81cb00008000              OR EBX,0x800000
0097e5d4  e980000000                JMP 0x0097e659
0097e5d9  83fa03                    CMP EDX,0x3
0097e5dc  0f85a6feffff              JNZ 0x0097e488
0097e5e2  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
0097e5e5  a17816c700                MOV EAX,[0x00c71678]
0097e5ea  83f93e                    CMP ECX,0x3e
0097e5ed  7416                      JZ 0x0097e605
0097e5ef  83b8846502001e            CMP dword ptr [EAX + 0x26584],0x1e
0097e5f6  0f858cfeffff              JNZ 0x0097e488
0097e5fc  83f943                    CMP ECX,0x43
0097e5ff  0f8583feffff              JNZ 0x0097e488
0097e605  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0097e60c  0f8d76feffff              JGE 0x0097e488
0097e612  6a00                      PUSH 0x0
0097e614  6878d6c500                PUSH 0xc5d678
0097e619  68dcd5c500                PUSH 0xc5d5dc
0097e61e  6a00                      PUSH 0x0
0097e620  57                        PUSH EDI
0097e621  e88b221700                CALL 0x00af08b1
0097e626  83c414                    ADD ESP,0x14
0097e629  8d4da4                    LEA ECX,[EBP + -0x5c]
0097e62c  8bb810040000              MOV EDI,dword ptr [EAX + 0x410]
0097e632  ff75ec                    PUSH dword ptr [EBP + -0x14]
0097e635  8b07                      MOV EAX,dword ptr [EDI]
0097e637  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0097e63a  e8d12cabff                CALL 0x00431310
0097e63f  6a1e                      PUSH 0x1e
0097e641  8d45a4                    LEA EAX,[EBP + -0x5c]
0097e644  50                        PUSH EAX
0097e645  6a00                      PUSH 0x0
0097e647  6808080000                PUSH 0x808
0097e64c  51                        PUSH ECX
0097e64d  c704240000803f            MOV dword ptr [ESP],0x3f800000
0097e654  eb64                      JMP 0x0097e6ba
0097e656  8b5de4                    MOV EBX,dword ptr [EBP + -0x1c]
0097e659  a17816c700                MOV EAX,[0x00c71678]
0097e65e  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
0097e661  8975f4                    MOV dword ptr [EBP + -0xc],ESI
0097e664  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0097e66b  7c28                      JL 0x0097e695
0097e66d  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0097e670  8d4dcc                    LEA ECX,[EBP + -0x34]
0097e673  68d045c300                PUSH 0xc345d0
0097e678  e8f38aa9ff                CALL 0x00417170
0097e67d  83c404                    ADD ESP,0x4
0097e680  8b08                      MOV ECX,dword ptr [EAX]
0097e682  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097e685  7508                      JNZ 0x0097e68f
0097e687  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097e68a  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097e68d  7406                      JZ 0x0097e695
0097e68f  83ce08                    OR ESI,0x8
0097e692  8975f4                    MOV dword ptr [EBP + -0xc],ESI
0097e695  8b07                      MOV EAX,dword ptr [EDI]
0097e697  8d4da4                    LEA ECX,[EBP + -0x5c]
0097e69a  ff75ec                    PUSH dword ptr [EBP + -0x14]
0097e69d  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0097e6a0  e86b2cabff                CALL 0x00431310
0097e6a5  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
0097e6aa  8d45a4                    LEA EAX,[EBP + -0x5c]
0097e6ad  6a1e                      PUSH 0x1e
0097e6af  50                        PUSH EAX
0097e6b0  ff75f4                    PUSH dword ptr [EBP + -0xc]
0097e6b3  53                        PUSH EBX
0097e6b4  51                        PUSH ECX
0097e6b5  f30f110424                MOVSS dword ptr [ESP],XMM0
0097e6ba  8bcf                      MOV ECX,EDI
0097e6bc  ffd6                      CALL ESI
0097e6be  8b4df8                    MOV ECX,dword ptr [EBP + -0x8]
0097e6c1  5f                        POP EDI
0097e6c2  5e                        POP ESI
0097e6c3  33cd                      XOR ECX,EBP
0097e6c5  5b                        POP EBX
0097e6c6  e8600a1700                CALL 0x00aef12b
0097e6cb  8be5                      MOV ESP,EBP
0097e6cd  5d                        POP EBP
0097e6ce  c20400                    RET 0x4
