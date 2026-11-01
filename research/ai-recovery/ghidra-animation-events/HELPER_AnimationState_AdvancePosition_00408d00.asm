; J460 NPC AI 0x00408d00 HELPER_AnimationState_AdvancePosition
; types=0
; identities=*
; entry=00408d00
00408d00  55                        PUSH EBP
00408d01  8bec                      MOV EBP,ESP
00408d03  83ec0c                    SUB ESP,0xc
00408d06  56                        PUSH ESI
00408d07  8bf1                      MOV ESI,ECX
00408d09  57                        PUSH EDI
00408d0a  83ec08                    SUB ESP,0x8
00408d0d  f30f104610                MOVSS XMM0,dword ptr [ESI + 0x10]
00408d12  f30f1145fc                MOVSS dword ptr [EBP + -0x4],XMM0
00408d17  d945fc                    FLD dword ptr [EBP + -0x4]
00408d1a  dd1c24                    FSTP qword ptr [ESP]
00408d1d  e8f57b6e00                CALL 0x00af0917
00408d22  8b7d08                    MOV EDI,dword ptr [EBP + 0x8]
00408d25  83c408                    ADD ESP,0x8
00408d28  d95df8                    FSTP dword ptr [EBP + -0x8]
00408d2b  d945f8                    FLD dword ptr [EBP + -0x8]
00408d2e  d95df8                    FSTP dword ptr [EBP + -0x8]
00408d31  f30f2c45f8                CVTTSS2SI EAX,dword ptr [EBP + -0x8]
00408d36  3bf8                      CMP EDI,EAX
00408d38  7d18                      JGE 0x00408d52
00408d3a  50                        PUSH EAX
00408d3b  57                        PUSH EDI
00408d3c  6820a5b100                PUSH 0xb1a520
00408d41  6a10                      PUSH 0x10
00408d43  e878856000                CALL 0x00a112c0
00408d48  f30f104e10                MOVSS XMM1,dword ptr [ESI + 0x10]
00408d4d  83c410                    ADD ESP,0x10
00408d50  eb05                      JMP 0x00408d57
00408d52  f30f104dfc                MOVSS XMM1,dword ptr [EBP + -0x4]
00408d57  660f6ec7                  MOVD XMM0,EDI
00408d5b  0f5bc0                    CVTDQ2PS XMM0,XMM0
00408d5e  c7461800000000            MOV dword ptr [ESI + 0x18],0x0
00408d65  0f2fc1                    COMISS XMM0,XMM1
00408d68  f30f114508                MOVSS dword ptr [EBP + 0x8],XMM0
00408d6d  763f                      JBE 0x00408dae
00408d6f  90                        NOP
00408d70  d94610                    FLD dword ptr [ESI + 0x10]
00408d73  83ec08                    SUB ESP,0x8
00408d76  dd1c24                    FSTP qword ptr [ESP]
00408d79  e8997b6e00                CALL 0x00af0917
00408d7e  d95df8                    FSTP dword ptr [EBP + -0x8]
00408d81  d945f8                    FLD dword ptr [EBP + -0x8]
00408d84  83c408                    ADD ESP,0x8
00408d87  d95df8                    FSTP dword ptr [EBP + -0x8]
00408d8a  f30f1045f8                MOVSS XMM0,dword ptr [EBP + -0x8]
00408d8f  8bce                      MOV ECX,ESI
00408d91  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00408d99  f30f114610                MOVSS dword ptr [ESI + 0x10],XMM0
00408d9e  e8edfeffff                CALL 0x00408c90
00408da3  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00408da8  0f2f4610                  COMISS XMM0,dword ptr [ESI + 0x10]
00408dac  77c2                      JA 0x00408d70
00408dae  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00408db1  33ff                      XOR EDI,EDI
00408db3  39781c                    CMP dword ptr [EAX + 0x1c],EDI
00408db6  7619                      JBE 0x00408dd1
00408db8  57                        PUSH EDI
00408db9  0f28d0                    MOVAPS XMM2,XMM0
00408dbc  8bce                      MOV ECX,ESI
00408dbe  e8cdfdffff                CALL 0x00408b90
00408dc3  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00408dc6  47                        INC EDI
00408dc7  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00408dcc  3b781c                    CMP EDI,dword ptr [EAX + 0x1c]
00408dcf  72e7                      JC 0x00408db8
00408dd1  33ff                      XOR EDI,EDI
00408dd3  397824                    CMP dword ptr [EAX + 0x24],EDI
00408dd6  7616                      JBE 0x00408dee
00408dd8  f30f105508                MOVSS XMM2,dword ptr [EBP + 0x8]
00408ddd  8bce                      MOV ECX,ESI
00408ddf  57                        PUSH EDI
00408de0  e82bfeffff                CALL 0x00408c10
00408de5  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00408de8  47                        INC EDI
00408de9  3b7824                    CMP EDI,dword ptr [EAX + 0x24]
00408dec  72ea                      JC 0x00408dd8
00408dee  5f                        POP EDI
00408def  5e                        POP ESI
00408df0  8be5                      MOV ESP,EBP
00408df2  5d                        POP EBP
00408df3  c20400                    RET 0x4
