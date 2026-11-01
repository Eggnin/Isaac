; J460 NPC AI 0x0099e160 HELPER_HomingLaser_RingTangents
; types=7
; identities=7.*
; entry=0099e160
0099e160  55                        PUSH EBP
0099e161  8bec                      MOV EBP,ESP
0099e163  83e4f8                    AND ESP,0xfffffff8
0099e166  83ec0c                    SUB ESP,0xc
0099e169  53                        PUSH EBX
0099e16a  8b594c                    MOV EBX,dword ptr [ECX + 0x4c]
0099e16d  0f28e9                    MOVAPS XMM5,XMM1
0099e170  56                        PUSH ESI
0099e171  8b7148                    MOV ESI,dword ptr [ECX + 0x48]
0099e174  57                        PUSH EDI
0099e175  f30f1043e8                MOVSS XMM0,dword ptr [EBX + -0x18]
0099e17a  f30f104bec                MOVSS XMM1,dword ptr [EBX + -0x14]
0099e17f  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0099e183  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0099e188  894c2414                  MOV dword ptr [ESP + 0x14],ECX
0099e18c  89742410                  MOV dword ptr [ESP + 0x10],ESI
0099e190  f30f59c0                  MULSS XMM0,XMM0
0099e194  f30f59c9                  MULSS XMM1,XMM1
0099e198  f30f58c8                  ADDSS XMM1,XMM0
0099e19c  f30f10056ca0ba00          MOVSS XMM0,dword ptr [0x00baa06c]
0099e1a4  0f2fc1                    COMISS XMM0,XMM1
0099e1a7  7622                      JBE 0x0099e1cb
0099e1a9  8bcb                      MOV ECX,EBX
0099e1ab  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e1b0  2bce                      SUB ECX,ESI
0099e1b2  f7e9                      IMUL ECX
0099e1b4  c1fa02                    SAR EDX,0x2
0099e1b7  8bc2                      MOV EAX,EDX
0099e1b9  c1e81f                    SHR EAX,0x1f
0099e1bc  03c2                      ADD EAX,EDX
0099e1be  83f802                    CMP EAX,0x2
0099e1c1  7608                      JBE 0x0099e1cb
0099e1c3  b001                      MOV AL,0x1
0099e1c5  8844240f                  MOV byte ptr [ESP + 0xf],AL
0099e1c9  eb25                      JMP 0x0099e1f0
0099e1cb  32c0                      XOR AL,AL
0099e1cd  8bcb                      MOV ECX,EBX
0099e1cf  8844240f                  MOV byte ptr [ESP + 0xf],AL
0099e1d3  2bce                      SUB ECX,ESI
0099e1d5  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e1da  f7e9                      IMUL ECX
0099e1dc  c1fa02                    SAR EDX,0x2
0099e1df  8bc2                      MOV EAX,EDX
0099e1e1  c1e81f                    SHR EAX,0x1f
0099e1e4  03c2                      ADD EAX,EDX
0099e1e6  0f845e010000              JZ 0x0099e34a
0099e1ec  8a44240f                  MOV AL,byte ptr [ESP + 0xf]
0099e1f0  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
0099e1f8  33ff                      XOR EDI,EDI
0099e1fa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0099e200  f30f101540b6c700          MOVSS XMM2,dword ptr [0x00c7b640]
0099e208  f30f101d44b6c700          MOVSS XMM3,dword ptr [0x00c7b644]
0099e210  0f28c2                    MOVAPS XMM0,XMM2
0099e213  0f28cb                    MOVAPS XMM1,XMM3
0099e216  84c0                      TEST AL,AL
0099e218  7450                      JZ 0x0099e26a
0099e21a  8bcb                      MOV ECX,EBX
0099e21c  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e221  2bce                      SUB ECX,ESI
0099e223  f7e9                      IMUL ECX
0099e225  c1fa02                    SAR EDX,0x2
0099e228  8bc2                      MOV EAX,EDX
0099e22a  c1e81f                    SHR EAX,0x1f
0099e22d  03c2                      ADD EAX,EDX
0099e22f  85ff                      TEST EDI,EDI
0099e231  751a                      JNZ 0x0099e24d
0099e233  f30f1016                  MOVSS XMM2,dword ptr [ESI]
0099e237  8d0440                    LEA EAX,[EAX + EAX*0x2]
0099e23a  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
0099e23f  f30f5c54c6d0              SUBSS XMM2,dword ptr [ESI + EAX*0x8 + -0x30]
0099e245  f30f5c5cc6d4              SUBSS XMM3,dword ptr [ESI + EAX*0x8 + -0x2c]
0099e24b  eb3b                      JMP 0x0099e288
0099e24d  48                        DEC EAX
0099e24e  3bf8                      CMP EDI,EAX
0099e250  7518                      JNZ 0x0099e26a
0099e252  f30f104618                MOVSS XMM0,dword ptr [ESI + 0x18]
0099e257  8d047f                    LEA EAX,[EDI + EDI*0x2]
0099e25a  f30f104e1c                MOVSS XMM1,dword ptr [ESI + 0x1c]
0099e25f  f30f5c04c6                SUBSS XMM0,dword ptr [ESI + EAX*0x8]
0099e264  f30f5c4cc604              SUBSS XMM1,dword ptr [ESI + EAX*0x8 + 0x4]
0099e26a  85ff                      TEST EDI,EDI
0099e26c  741a                      JZ 0x0099e288
0099e26e  8d047f                    LEA EAX,[EDI + EDI*0x2]
0099e271  f30f1014c6                MOVSS XMM2,dword ptr [ESI + EAX*0x8]
0099e276  f30f105cc604              MOVSS XMM3,dword ptr [ESI + EAX*0x8 + 0x4]
0099e27c  f30f5c54c6e8              SUBSS XMM2,dword ptr [ESI + EAX*0x8 + -0x18]
0099e282  f30f5c5cc6ec              SUBSS XMM3,dword ptr [ESI + EAX*0x8 + -0x14]
0099e288  2bde                      SUB EBX,ESI
0099e28a  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e28f  f7eb                      IMUL EBX
0099e291  c1fa02                    SAR EDX,0x2
0099e294  8bca                      MOV ECX,EDX
0099e296  c1e91f                    SHR ECX,0x1f
0099e299  49                        DEC ECX
0099e29a  03ca                      ADD ECX,EDX
0099e29c  3bf9                      CMP EDI,ECX
0099e29e  731a                      JNC 0x0099e2ba
0099e2a0  8d047f                    LEA EAX,[EDI + EDI*0x2]
0099e2a3  f30f1044c618              MOVSS XMM0,dword ptr [ESI + EAX*0x8 + 0x18]
0099e2a9  f30f104cc61c              MOVSS XMM1,dword ptr [ESI + EAX*0x8 + 0x1c]
0099e2af  f30f5c04c6                SUBSS XMM0,dword ptr [ESI + EAX*0x8]
0099e2b4  f30f5c4cc604              SUBSS XMM1,dword ptr [ESI + EAX*0x8 + 0x4]
0099e2ba  807c240f00                CMP byte ptr [ESP + 0xf],0x0
0099e2bf  f30f58d0                  ADDSS XMM2,XMM0
0099e2c3  f30f58d9                  ADDSS XMM3,XMM1
0099e2c7  f30f59d5                  MULSS XMM2,XMM5
0099e2cb  f30f59dd                  MULSS XMM3,XMM5
0099e2cf  7508                      JNZ 0x0099e2d9
0099e2d1  85ff                      TEST EDI,EDI
0099e2d3  740c                      JZ 0x0099e2e1
0099e2d5  3bf9                      CMP EDI,ECX
0099e2d7  7308                      JNC 0x0099e2e1
0099e2d9  f30f59d4                  MULSS XMM2,XMM4
0099e2dd  f30f59dc                  MULSS XMM3,XMM4
0099e2e1  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
0099e2e5  8d047f                    LEA EAX,[EDI + EDI*0x2]
0099e2e8  47                        INC EDI
0099e2e9  f30f100cc1                MOVSS XMM1,dword ptr [ECX + EAX*0x8]
0099e2ee  f30f1044c104              MOVSS XMM0,dword ptr [ECX + EAX*0x8 + 0x4]
0099e2f4  f30f5cca                  SUBSS XMM1,XMM2
0099e2f8  f30f5cc3                  SUBSS XMM0,XMM3
0099e2fc  f30f114cc108              MOVSS dword ptr [ECX + EAX*0x8 + 0x8],XMM1
0099e302  f30f1144c10c              MOVSS dword ptr [ECX + EAX*0x8 + 0xc],XMM0
0099e308  f30f5814c1                ADDSS XMM2,dword ptr [ECX + EAX*0x8]
0099e30d  f30f585cc104              ADDSS XMM3,dword ptr [ECX + EAX*0x8 + 0x4]
0099e313  f30f1154c110              MOVSS dword ptr [ECX + EAX*0x8 + 0x10],XMM2
0099e319  f30f115cc114              MOVSS dword ptr [ECX + EAX*0x8 + 0x14],XMM3
0099e31f  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
0099e323  8b584c                    MOV EBX,dword ptr [EAX + 0x4c]
0099e326  8bcb                      MOV ECX,EBX
0099e328  8b7048                    MOV ESI,dword ptr [EAX + 0x48]
0099e32b  2bce                      SUB ECX,ESI
0099e32d  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099e332  f7e9                      IMUL ECX
0099e334  c1fa02                    SAR EDX,0x2
0099e337  8bc2                      MOV EAX,EDX
0099e339  c1e81f                    SHR EAX,0x1f
0099e33c  03c2                      ADD EAX,EDX
0099e33e  3bf8                      CMP EDI,EAX
0099e340  8a44240f                  MOV AL,byte ptr [ESP + 0xf]
0099e344  0f82b6feffff              JC 0x0099e200
0099e34a  5f                        POP EDI
0099e34b  5e                        POP ESI
0099e34c  5b                        POP EBX
0099e34d  8be5                      MOV ESP,EBP
0099e34f  5d                        POP EBP
0099e350  c3                        RET
