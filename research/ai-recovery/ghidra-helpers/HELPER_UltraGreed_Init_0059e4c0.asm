; J460 NPC AI 0x0059e4c0 HELPER_UltraGreed_Init
; types=406
; identities=ultra_greed.init
; entry=0059e4c0
0059e4c0  55                        PUSH EBP
0059e4c1  8bec                      MOV EBP,ESP
0059e4c3  83ec60                    SUB ESP,0x60
0059e4c6  a1b493bf00                MOV EAX,[0x00bf93b4]
0059e4cb  33c5                      XOR EAX,EBP
0059e4cd  8945f8                    MOV dword ptr [EBP + -0x8],EAX
0059e4d0  53                        PUSH EBX
0059e4d1  56                        PUSH ESI
0059e4d2  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
0059e4d5  57                        PUSH EDI
0059e4d6  8bf9                      MOV EDI,ECX
0059e4d8  85f6                      TEST ESI,ESI
0059e4da  0f8434010000              JZ 0x0059e614
0059e4e0  e87b0a1500                CALL 0x006eef60
0059e4e5  660f6ec0                  MOVD XMM0,EAX
0059e4e9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0059e4ed  c1e81f                    SHR EAX,0x1f
0059e4f0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0059e4f9  660f5ac0                  CVTPD2PS XMM0,XMM0
0059e4fd  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0059e505  f30f5c0554a4ba00          SUBSS XMM0,dword ptr [0x00baa454]
0059e50d  f30f590584aaba00          MULSS XMM0,dword ptr [0x00baaa84]
0059e515  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
0059e51a  e8410a1500                CALL 0x006eef60
0059e51f  6aff                      PUSH -0x1
0059e521  51                        PUSH ECX
0059e522  8d4f48                    LEA ECX,[EDI + 0x48]
0059e525  660f6ec0                  MOVD XMM0,EAX
0059e529  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0059e52d  c1e81f                    SHR EAX,0x1f
0059e530  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0059e539  c704246666663f            MOV dword ptr [ESP],0x3f666666
0059e540  8d45a0                    LEA EAX,[EBP + -0x60]
0059e543  ff3544b6c700              PUSH dword ptr [0x00c7b644]
0059e549  ff3540b6c700              PUSH dword ptr [0x00c7b640]
0059e54f  660f5ac0                  CVTPD2PS XMM0,XMM0
0059e553  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0059e55b  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
0059e563  f30f590508aaba00          MULSS XMM0,dword ptr [0x00baaa08]
0059e56b  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0059e570  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
0059e575  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
0059e57a  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0059e57f  ff75c0                    PUSH dword ptr [EBP + -0x40]
0059e582  ff75bc                    PUSH dword ptr [EBP + -0x44]
0059e585  50                        PUSH EAX
0059e586  e805d0e6ff                CALL 0x0040b590
0059e58b  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
0059e590  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
0059e597  7272                      JC 0x0059e60b
0059e599  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0059e5a0  8d45cc                    LEA EAX,[EBP + -0x34]
0059e5a3  0f1145cc                  MOVUPS xmmword ptr [EBP + -0x34],XMM0
0059e5a7  c745ec00000000            MOV dword ptr [EBP + -0x14],0x0
0059e5ae  0f57c0                    XORPS XMM0,XMM0
0059e5b1  c745f000000000            MOV dword ptr [EBP + -0x10],0x0
0059e5b8  0f1145dc                  MOVUPS xmmword ptr [EBP + -0x24],XMM0
0059e5bc  6a00                      PUSH 0x0
0059e5be  f30f1045c4                MOVSS XMM0,dword ptr [EBP + -0x3c]
0059e5c3  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0059e5cb  51                        PUSH ECX
0059e5cc  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
0059e5d3  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0059e5d8  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0059e5e0  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0059e5e5  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
0059e5ea  f30f110424                MOVSS dword ptr [ESP],XMM0
0059e5ef  50                        PUSH EAX
0059e5f0  51                        PUSH ECX
0059e5f1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0059e5f7  8d45b4                    LEA EAX,[EBP + -0x4c]
0059e5fa  c7042400004041            MOV dword ptr [ESP],0x41400000
0059e601  6a07                      PUSH 0x7
0059e603  6a5f                      PUSH 0x5f
0059e605  50                        PUSH EAX
0059e606  e8254d1600                CALL 0x00703330
0059e60b  83ee01                    SUB ESI,0x1
0059e60e  0f85ccfeffff              JNZ 0x0059e4e0
0059e614  8b4df8                    MOV ECX,dword ptr [EBP + -0x8]
0059e617  5f                        POP EDI
0059e618  5e                        POP ESI
0059e619  33cd                      XOR ECX,EBP
0059e61b  5b                        POP EBX
0059e61c  e80a0b5500                CALL 0x00aef12b
0059e621  8be5                      MOV ESP,EBP
0059e623  5d                        POP EBP
0059e624  c20400                    RET 0x4
