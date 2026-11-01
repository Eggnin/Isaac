; J460 NPC AI 0x0059e390 HELPER_0059e390_UltraGreedPhaseHelperA
; types=406
; identities=ultra_greed.phase_helper
; entry=0059e390
0059e390  55                        PUSH EBP
0059e391  8bec                      MOV EBP,ESP
0059e393  83ec20                    SUB ESP,0x20
0059e396  56                        PUSH ESI
0059e397  8bf1                      MOV ESI,ECX
0059e399  e8c20b1500                CALL 0x006eef60
0059e39e  660f6ec0                  MOVD XMM0,EAX
0059e3a2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0059e3a6  c1e81f                    SHR EAX,0x1f
0059e3a9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0059e3b2  660f5ac0                  CVTPD2PS XMM0,XMM0
0059e3b6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0059e3be  f30f5c0554a4ba00          SUBSS XMM0,dword ptr [0x00baa454]
0059e3c6  f30f590584aaba00          MULSS XMM0,dword ptr [0x00baaa84]
0059e3ce  f30f1145fc                MOVSS dword ptr [EBP + -0x4],XMM0
0059e3d3  e8880b1500                CALL 0x006eef60
0059e3d8  6aff                      PUSH -0x1
0059e3da  51                        PUSH ECX
0059e3db  8d4e48                    LEA ECX,[ESI + 0x48]
0059e3de  660f6ec0                  MOVD XMM0,EAX
0059e3e2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0059e3e6  c1e81f                    SHR EAX,0x1f
0059e3e9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0059e3f2  c704246666663f            MOV dword ptr [ESP],0x3f666666
0059e3f9  8d45e0                    LEA EAX,[EBP + -0x20]
0059e3fc  ff3544b6c700              PUSH dword ptr [0x00c7b644]
0059e402  ff3540b6c700              PUSH dword ptr [0x00c7b640]
0059e408  660f5ac0                  CVTPD2PS XMM0,XMM0
0059e40c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0059e414  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
0059e41c  f30f590508aaba00          MULSS XMM0,dword ptr [0x00baaa08]
0059e424  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
0059e429  f30f1045fc                MOVSS XMM0,dword ptr [EBP + -0x4]
0059e42e  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
0059e433  ff75f8                    PUSH dword ptr [EBP + -0x8]
0059e436  ff75f4                    PUSH dword ptr [EBP + -0xc]
0059e439  50                        PUSH EAX
0059e43a  e851d1e6ff                CALL 0x0040b590
0059e43f  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
0059e444  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
0059e44b  7263                      JC 0x0059e4b0
0059e44d  e80e0b1500                CALL 0x006eef60
0059e452  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059e458  6a00                      PUSH 0x0
0059e45a  68acd5c500                PUSH 0xc5d5ac
0059e45f  68dcd5c500                PUSH 0xc5d5dc
0059e464  6a00                      PUSH 0x0
0059e466  50                        PUSH EAX
0059e467  6a00                      PUSH 0x0
0059e469  6a00                      PUSH 0x0
0059e46b  6840b6c700                PUSH 0xc7b640
0059e470  8d863c030000              LEA EAX,[ESI + 0x33c]
0059e476  50                        PUSH EAX
0059e477  6a67                      PUSH 0x67
0059e479  68e8030000                PUSH 0x3e8
0059e47e  e89da6e8ff                CALL 0x00428b20
0059e483  50                        PUSH EAX
0059e484  e828245500                CALL 0x00af08b1
0059e489  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
0059e48e  83c414                    ADD ESP,0x14
0059e491  f30f1180dc000000          MOVSS dword ptr [EAX + 0xdc],XMM0
0059e499  f30f1045fc                MOVSS XMM0,dword ptr [EBP + -0x4]
0059e49e  c78054030000e8030000      MOV dword ptr [EAX + 0x354],0x3e8
0059e4a8  f30f1180e0000000          MOVSS dword ptr [EAX + 0xe0],XMM0
0059e4b0  5e                        POP ESI
0059e4b1  8be5                      MOV ESP,EBP
0059e4b3  5d                        POP EBP
0059e4b4  c3                        RET
