; J460 NPC AI 0x005522d0 AI_005522d0
; types=888
; identities=888.0.0
; entry=005522d0
005522d0  55                        PUSH EBP
005522d1  8bec                      MOV EBP,ESP
005522d3  6aff                      PUSH -0x1
005522d5  68854baf00                PUSH 0xaf4b85
005522da  64a100000000              MOV EAX,FS:[0x0]
005522e0  50                        PUSH EAX
005522e1  81ec14010000              SUB ESP,0x114
005522e7  a1b493bf00                MOV EAX,[0x00bf93b4]
005522ec  33c5                      XOR EAX,EBP
005522ee  8945f0                    MOV dword ptr [EBP + -0x10],EAX
005522f1  53                        PUSH EBX
005522f2  56                        PUSH ESI
005522f3  57                        PUSH EDI
005522f4  50                        PUSH EAX
005522f5  8d45f4                    LEA EAX,[EBP + -0xc]
005522f8  64a300000000              MOV FS:[0x0],EAX
005522fe  8bf9                      MOV EDI,ECX
00552300  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00552306  83f809                    CMP EAX,0x9
00552309  0f87e0090000              JA 0x00552cef
0055230f  0fb680202d5500            MOVZX EAX,byte ptr [EAX + 0x552d20]
00552316  ff24850c2d5500            JMP dword ptr [EAX*0x4 + 0x552d0c]
00552cef  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00552cf2  64890d00000000            MOV dword ptr FS:[0x0],ECX
00552cf9  59                        POP ECX
00552cfa  5f                        POP EDI
00552cfb  5e                        POP ESI
00552cfc  5b                        POP EBX
00552cfd  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00552d00  33cd                      XOR ECX,EBP
00552d02  e824c45900                CALL 0x00aef12b
00552d07  8be5                      MOV ESP,EBP
00552d09  5d                        POP EBP
00552d0a  c3                        RET
