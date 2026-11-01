; J460 NPC AI 0x00542be0 AI_00542be0
; types=300
; identities=300.0.0
; entry=00542be0
00542be0  55                        PUSH EBP
00542be1  8bec                      MOV EBP,ESP
00542be3  81ecbc000000              SUB ESP,0xbc
00542be9  a1b493bf00                MOV EAX,[0x00bf93b4]
00542bee  33c5                      XOR EAX,EBP
00542bf0  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00542bf3  56                        PUSH ESI
00542bf4  8bf1                      MOV ESI,ECX
00542bf6  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
00542bfc  85c0                      TEST EAX,EAX
00542bfe  755f                      JNZ 0x00542c5f
00542c00  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
00542c07  c786640b000003000000      MOV dword ptr [ESI + 0xb64],0x3
00542c11  7407                      JZ 0x00542c1a
00542c13  b81e000000                MOV EAX,0x1e
00542c18  eb18                      JMP 0x00542c32
00542c1a  e841c31a00                CALL 0x006eef60
00542c1f  33d2                      XOR EDX,EDX
00542c21  b905000000                MOV ECX,0x5
00542c26  f7f1                      DIV ECX
00542c28  42                        INC EDX
00542c29  8bc2                      MOV EAX,EDX
00542c2b  c1e004                    SHL EAX,0x4
00542c2e  2bc2                      SUB EAX,EDX
00542c30  03c0                      ADD EAX,EAX
00542c32  898610040000              MOV dword ptr [ESI + 0x410],EAX
00542c38  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
00542c3e  898634030000              MOV dword ptr [ESI + 0x334],EAX
00542c44  8b8640030000              MOV EAX,dword ptr [ESI + 0x340]
00542c4a  898638030000              MOV dword ptr [ESI + 0x338],EAX
00542c50  5e                        POP ESI
00542c51  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00542c54  33cd                      XOR ECX,EBP
00542c56  e8d0c45a00                CALL 0x00aef12b
00542c5b  8be5                      MOV ESP,EBP
00542c5d  5d                        POP EBP
00542c5e  c3                        RET
00542c5f  f30f104e14                MOVSS XMM1,dword ptr [ESI + 0x14]
00542c64  0f57c0                    XORPS XMM0,XMM0
00542c67  0f2fc8                    COMISS XMM1,XMM0
00542c6a  8bd0                      MOV EDX,EAX
00542c6c  763b                      JBE 0x00542ca9
00542c6e  83f803                    CMP EAX,0x3
00542c71  7536                      JNZ 0x00542ca9
00542c73  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
00542c76  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
00542c79  3bc1                      CMP EAX,ECX
00542c7b  742c                      JZ 0x00542ca9
00542c7d  f30f100dd4a1ba00          MOVSS XMM1,dword ptr [0x00baa1d4]
00542c85  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
00542c90  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00542c94  f30f59c1                  MULSS XMM0,XMM1
00542c98  f30f1100                  MOVSS dword ptr [EAX],XMM0
00542c9c  83c038                    ADD EAX,0x38
00542c9f  3bc1                      CMP EAX,ECX
00542ca1  75ed                      JNZ 0x00542c90
00542ca3  8b96640b0000              MOV EDX,dword ptr [ESI + 0xb64]
00542ca9  83c2fd                    ADD EDX,-0x3
00542cac  83fa0d                    CMP EDX,0xd
00542caf  0f87a0030000              JA 0x00543055
00542cb5  0fb682bc305400            MOVZX EAX,byte ptr [EDX + 0x5430bc]
00542cbc  ff2485ac305400            JMP dword ptr [EAX*0x4 + 0x5430ac]
00543055  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
0054305d  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00543065  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00543068  33cd                      XOR ECX,EBP
0054306a  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
00543072  f30f108e34030000          MOVSS XMM1,dword ptr [ESI + 0x334]
0054307a  f30f108638030000          MOVSS XMM0,dword ptr [ESI + 0x338]
00543082  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0054308a  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
00543092  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
0054309a  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
005430a2  5e                        POP ESI
005430a3  e883c05a00                CALL 0x00aef12b
005430a8  8be5                      MOV ESP,EBP
005430aa  5d                        POP EBP
005430ab  c3                        RET
