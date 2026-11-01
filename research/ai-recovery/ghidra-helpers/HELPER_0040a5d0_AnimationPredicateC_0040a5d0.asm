; J460 NPC AI 0x0040a5d0 HELPER_0040a5d0_AnimationPredicateC
; types=
; identities=animation
; entry=0040a5d0
0040a5d0  55                        PUSH EBP
0040a5d1  8bec                      MOV EBP,ESP
0040a5d3  83ec08                    SUB ESP,0x8
0040a5d6  53                        PUSH EBX
0040a5d7  8bc1                      MOV EAX,ECX
0040a5d9  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
0040a5dc  56                        PUSH ESI
0040a5dd  57                        PUSH EDI
0040a5de  33ff                      XOR EDI,EDI
0040a5e0  8945fc                    MOV dword ptr [EBP + -0x4],EAX
0040a5e3  8b5878                    MOV EBX,dword ptr [EAX + 0x78]
0040a5e6  85db                      TEST EBX,EBX
0040a5e8  744d                      JZ 0x0040a637
0040a5ea  8b4074                    MOV EAX,dword ptr [EAX + 0x74]
0040a5ed  8bf0                      MOV ESI,EAX
0040a5ef  8945f8                    MOV dword ptr [EBP + -0x8],EAX
0040a5f2  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0040a5f6  8bc6                      MOV EAX,ESI
0040a5f8  7206                      JC 0x0040a600
0040a5fa  8b06                      MOV EAX,dword ptr [ESI]
0040a5fc  0f1f4000                  NOP dword ptr [EAX]
0040a600  8a10                      MOV DL,byte ptr [EAX]
0040a602  3a11                      CMP DL,byte ptr [ECX]
0040a604  751a                      JNZ 0x0040a620
0040a606  84d2                      TEST DL,DL
0040a608  7412                      JZ 0x0040a61c
0040a60a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0040a60d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0040a610  750e                      JNZ 0x0040a620
0040a612  83c002                    ADD EAX,0x2
0040a615  83c102                    ADD ECX,0x2
0040a618  84d2                      TEST DL,DL
0040a61a  75e4                      JNZ 0x0040a600
0040a61c  33c0                      XOR EAX,EAX
0040a61e  eb05                      JMP 0x0040a625
0040a620  1bc0                      SBB EAX,EAX
0040a622  83c801                    OR EAX,0x1
0040a625  85c0                      TEST EAX,EAX
0040a627  7429                      JZ 0x0040a652
0040a629  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
0040a62c  47                        INC EDI
0040a62d  81c63c010000              ADD ESI,0x13c
0040a633  3bfb                      CMP EDI,EBX
0040a635  72bb                      JC 0x0040a5f2
0040a637  51                        PUSH ECX
0040a638  6814a6b100                PUSH 0xb1a614
0040a63d  6a01                      PUSH 0x1
0040a63f  e87c6c6000                CALL 0x00a112c0
0040a644  83c40c                    ADD ESP,0xc
0040a647  32c0                      XOR AL,AL
0040a649  5f                        POP EDI
0040a64a  5e                        POP ESI
0040a64b  5b                        POP EBX
0040a64c  8be5                      MOV ESP,EBP
0040a64e  5d                        POP EBP
0040a64f  c20800                    RET 0x8
0040a652  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0040a655  69c73c010000              IMUL EAX,EDI,0x13c
0040a65b  83c130                    ADD ECX,0x30
0040a65e  0345f8                    ADD EAX,dword ptr [EBP + -0x8]
0040a661  807d0c00                  CMP byte ptr [EBP + 0xc],0x0
0040a665  50                        PUSH EAX
0040a666  7410                      JZ 0x0040a678
0040a668  e8c3e1ffff                CALL 0x00408830
0040a66d  b001                      MOV AL,0x1
0040a66f  5f                        POP EDI
0040a670  5e                        POP ESI
0040a671  5b                        POP EBX
0040a672  8be5                      MOV ESP,EBP
0040a674  5d                        POP EBP
0040a675  c20800                    RET 0x8
0040a678  e8f3e2ffff                CALL 0x00408970
0040a67d  5f                        POP EDI
0040a67e  5e                        POP ESI
0040a67f  b001                      MOV AL,0x1
0040a681  5b                        POP EBX
0040a682  8be5                      MOV ESP,EBP
0040a684  5d                        POP EBP
0040a685  c20800                    RET 0x8
