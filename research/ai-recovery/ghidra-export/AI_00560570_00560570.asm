; J460 NPC AI 0x00560570 AI_00560570
; types=811
; identities=811.0.0,811.0.1,811.0.2,811.0.3,811.0.4,811.0.5,811.0.6
; entry=00560570
00560570  55                        PUSH EBP
00560571  8bec                      MOV EBP,ESP
00560573  6aff                      PUSH -0x1
00560575  68b54daf00                PUSH 0xaf4db5
0056057a  64a100000000              MOV EAX,FS:[0x0]
00560580  50                        PUSH EAX
00560581  83ec40                    SUB ESP,0x40
00560584  a1b493bf00                MOV EAX,[0x00bf93b4]
00560589  33c5                      XOR EAX,EBP
0056058b  8945f0                    MOV dword ptr [EBP + -0x10],EAX
0056058e  56                        PUSH ESI
0056058f  57                        PUSH EDI
00560590  50                        PUSH EAX
00560591  8d45f4                    LEA EAX,[EBP + -0xc]
00560594  64a300000000              MOV FS:[0x0],EAX
0056059a  8bf9                      MOV EDI,ECX
0056059c  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005605a2  83f808                    CMP EAX,0x8
005605a5  0f8756060000              JA 0x00560c01
005605ab  ff24857c0c5600            JMP dword ptr [EAX*0x4 + 0x560c7c]
00560c01  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00560c08  7456                      JZ 0x00560c60
00560c0a  837f3006                  CMP dword ptr [EDI + 0x30],0x6
00560c0e  7550                      JNZ 0x00560c60
00560c10  a17816c700                MOV EAX,[0x00c71678]
00560c15  8db73c030000              LEA ESI,[EDI + 0x33c]
00560c1b  0f57c9                    XORPS XMM1,XMM1
00560c1e  6a00                      PUSH 0x0
00560c20  6a00                      PUSH 0x0
00560c22  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00560c28  f30f108140720000          MOVSS XMM0,dword ptr [ECX + 0x7240]
00560c30  0f2fc1                    COMISS XMM0,XMM1
00560c33  0f97c0                    SETA AL
00560c36  50                        PUSH EAX
00560c37  6a01                      PUSH 0x1
00560c39  51                        PUSH ECX
00560c3a  c704240000a042            MOV dword ptr [ESP],0x42a00000
00560c41  8d45b4                    LEA EAX,[EBP + -0x4c]
00560c44  56                        PUSH ESI
00560c45  50                        PUSH EAX
00560c46  e8d5282b00                CALL 0x00813520
00560c4b  f30f101514aeba00          MOVSS XMM2,dword ptr [0x00baae14]
00560c53  8bd7                      MOV EDX,EDI
00560c55  50                        PUSH EAX
00560c56  8bce                      MOV ECX,ESI
00560c58  e863b8ffff                CALL 0x0055c4c0
00560c5d  83c408                    ADD ESP,0x8
00560c60  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00560c63  64890d00000000            MOV dword ptr FS:[0x0],ECX
00560c6a  59                        POP ECX
00560c6b  5f                        POP EDI
00560c6c  5e                        POP ESI
00560c6d  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00560c70  33cd                      XOR ECX,EBP
00560c72  e8b4e45800                CALL 0x00aef12b
00560c77  8be5                      MOV ESP,EBP
00560c79  5d                        POP EBP
00560c7a  c3                        RET
