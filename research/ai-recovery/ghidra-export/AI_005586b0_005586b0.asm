; J460 NPC AI 0x005586b0 AI_005586b0
; types=808
; identities=808.0.0
; entry=005586b0
005586b0  55                        PUSH EBP
005586b1  8bec                      MOV EBP,ESP
005586b3  6aff                      PUSH -0x1
005586b5  68c04caf00                PUSH 0xaf4cc0
005586ba  64a100000000              MOV EAX,FS:[0x0]
005586c0  50                        PUSH EAX
005586c1  81ec44010000              SUB ESP,0x144
005586c7  a1b493bf00                MOV EAX,[0x00bf93b4]
005586cc  33c5                      XOR EAX,EBP
005586ce  8945f0                    MOV dword ptr [EBP + -0x10],EAX
005586d1  53                        PUSH EBX
005586d2  56                        PUSH ESI
005586d3  57                        PUSH EDI
005586d4  50                        PUSH EAX
005586d5  8d45f4                    LEA EAX,[EBP + -0xc]
005586d8  64a300000000              MOV FS:[0x0],EAX
005586de  8bf9                      MOV EDI,ECX
005586e0  89bdccfeffff              MOV dword ptr [EBP + 0xfffffecc],EDI
005586e6  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
005586ee  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
005586f4  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
005586fc  2bf0                      SUB ESI,EAX
005586fe  85c9                      TEST ECX,ECX
00558700  7e0f                      JLE 0x00558711
00558702  2bce                      SUB ECX,ESI
00558704  33c0                      XOR EAX,EAX
00558706  85c9                      TEST ECX,ECX
00558708  0f4fc1                    CMOVG EAX,ECX
0055870b  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00558711  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00558717  83f80d                    CMP EAX,0xd
0055871a  0f874c080000              JA 0x00558f6c
00558720  ff2485988f5500            JMP dword ptr [EAX*0x4 + 0x558f98]
00558f6c  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00558f73  7407                      JZ 0x00558f7c
00558f75  8bcf                      MOV ECX,EDI
00558f77  e864edffff                CALL 0x00557ce0
00558f7c  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00558f7f  64890d00000000            MOV dword ptr FS:[0x0],ECX
00558f86  59                        POP ECX
00558f87  5f                        POP EDI
00558f88  5e                        POP ESI
00558f89  5b                        POP EBX
00558f8a  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00558f8d  33cd                      XOR ECX,EBP
00558f8f  e897615900                CALL 0x00aef12b
00558f94  8be5                      MOV ESP,EBP
00558f96  5d                        POP EBP
00558f97  c3                        RET
