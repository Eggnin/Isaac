; J460 NPC AI 0x004ec240 AI_004ec240
; types=832
; identities=832.0.0,832.1.0
; entry=004ec240
004ec240  55                        PUSH EBP
004ec241  8bec                      MOV EBP,ESP
004ec243  6aff                      PUSH -0x1
004ec245  68a53daf00                PUSH 0xaf3da5
004ec24a  64a100000000              MOV EAX,FS:[0x0]
004ec250  50                        PUSH EAX
004ec251  83ec64                    SUB ESP,0x64
004ec254  a1b493bf00                MOV EAX,[0x00bf93b4]
004ec259  33c5                      XOR EAX,EBP
004ec25b  8945f0                    MOV dword ptr [EBP + -0x10],EAX
004ec25e  53                        PUSH EBX
004ec25f  56                        PUSH ESI
004ec260  57                        PUSH EDI
004ec261  50                        PUSH EAX
004ec262  8d45f4                    LEA EAX,[EBP + -0xc]
004ec265  64a300000000              MOV FS:[0x0],EAX
004ec26b  8bf9                      MOV EDI,ECX
004ec26d  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ec271  750a                      JNZ 0x004ec27d
004ec273  e858e80000                CALL 0x004faad0
004ec278  e955090000                JMP 0x004ecbd2
004ec27d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004ec283  83f809                    CMP EAX,0x9
004ec286  0f8714090000              JA 0x004ecba0
004ec28c  0fb68000cc4e00            MOVZX EAX,byte ptr [EAX + 0x4ecc00]
004ec293  ff2485f0cb4e00            JMP dword ptr [EAX*0x4 + 0x4ecbf0]
004ecba0  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
004ecba6  83fa1e                    CMP EDX,0x1e
004ecba9  7f0d                      JG 0x004ecbb8
004ecbab  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004ecbb2  751e                      JNZ 0x004ecbd2
004ecbb4  85d2                      TEST EDX,EDX
004ecbb6  7e1a                      JLE 0x004ecbd2
004ecbb8  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004ecbc0  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004ecbc8  2bc8                      SUB ECX,EAX
004ecbca  03ca                      ADD ECX,EDX
004ecbcc  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
004ecbd2  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004ecbd5  64890d00000000            MOV dword ptr FS:[0x0],ECX
004ecbdc  59                        POP ECX
004ecbdd  5f                        POP EDI
004ecbde  5e                        POP ESI
004ecbdf  5b                        POP EBX
004ecbe0  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
004ecbe3  33cd                      XOR ECX,EBP
004ecbe5  e841256000                CALL 0x00aef12b
004ecbea  8be5                      MOV ESP,EBP
004ecbec  5d                        POP EBP
004ecbed  c3                        RET
