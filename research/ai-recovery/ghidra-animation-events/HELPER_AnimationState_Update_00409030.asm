; J460 NPC AI 0x00409030 HELPER_AnimationState_Update
; types=0
; identities=*
; entry=00409030
00409030  55                        PUSH EBP
00409031  8bec                      MOV EBP,ESP
00409033  83ec10                    SUB ESP,0x10
00409036  56                        PUSH ESI
00409037  8bf1                      MOV ESI,ECX
00409039  57                        PUSH EDI
0040903a  8b7e04                    MOV EDI,dword ptr [ESI + 0x4]
0040903d  85ff                      TEST EDI,EDI
0040903f  0f84a6000000              JZ 0x004090eb
00409045  807e1400                  CMP byte ptr [ESI + 0x14],0x0
00409049  0f849c000000              JZ 0x004090eb
0040904f  8b06                      MOV EAX,dword ptr [ESI]
00409051  83ec08                    SUB ESP,0x8
00409054  f30f104610                MOVSS XMM0,dword ptr [ESI + 0x10]
00409059  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
0040905e  f30f588004010000          ADDSS XMM0,dword ptr [EAX + 0x104]
00409066  f30f1145fc                MOVSS dword ptr [EBP + -0x4],XMM0
0040906b  d945fc                    FLD dword ptr [EBP + -0x4]
0040906e  dd1c24                    FSTP qword ptr [ESP]
00409071  e8a1786e00                CALL 0x00af0917
00409076  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
00409079  83c408                    ADD ESP,0x8
0040907c  d95df8                    FSTP dword ptr [EBP + -0x8]
0040907f  d945f8                    FLD dword ptr [EBP + -0x8]
00409082  d95df8                    FSTP dword ptr [EBP + -0x8]
00409085  f30f2c45f8                CVTTSS2SI EAX,dword ptr [EBP + -0x8]
0040908a  3bc1                      CMP EAX,ECX
0040908c  7c4b                      JL 0x004090d9
0040908e  807f3400                  CMP byte ptr [EDI + 0x34],0x0
00409092  740d                      JZ 0x004090a1
00409094  8bce                      MOV ECX,ESI
00409096  e815110000                CALL 0x0040a1b0
0040909b  5f                        POP EDI
0040909c  5e                        POP ESI
0040909d  8be5                      MOV ESP,EBP
0040909f  5d                        POP EBP
004090a0  c3                        RET
004090a1  d945f4                    FLD dword ptr [EBP + -0xc]
004090a4  8d79ff                    LEA EDI,[ECX + -0x1]
004090a7  83ec08                    SUB ESP,0x8
004090aa  dd1c24                    FSTP qword ptr [ESP]
004090ad  e865786e00                CALL 0x00af0917
004090b2  d95df4                    FSTP dword ptr [EBP + -0xc]
004090b5  d945f4                    FLD dword ptr [EBP + -0xc]
004090b8  83c408                    ADD ESP,0x8
004090bb  d95df4                    FSTP dword ptr [EBP + -0xc]
004090be  f30f2c45f4                CVTTSS2SI EAX,dword ptr [EBP + -0xc]
004090c3  3bf8                      CMP EDI,EAX
004090c5  7c08                      JL 0x004090cf
004090c7  57                        PUSH EDI
004090c8  8bce                      MOV ECX,ESI
004090ca  e831fcffff                CALL 0x00408d00
004090cf  c6461400                  MOV byte ptr [ESI + 0x14],0x0
004090d3  5f                        POP EDI
004090d4  5e                        POP ESI
004090d5  8be5                      MOV ESP,EBP
004090d7  5d                        POP EBP
004090d8  c3                        RET
004090d9  50                        PUSH EAX
004090da  8bce                      MOV ECX,ESI
004090dc  e81ffcffff                CALL 0x00408d00
004090e1  f30f1045fc                MOVSS XMM0,dword ptr [EBP + -0x4]
004090e6  f30f114610                MOVSS dword ptr [ESI + 0x10],XMM0
004090eb  5f                        POP EDI
004090ec  5e                        POP ESI
004090ed  8be5                      MOV ESP,EBP
004090ef  5d                        POP EBP
004090f0  c3                        RET
