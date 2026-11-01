; J460 NPC AI 0x00708250 HELPER_Entity_TimeScaleCore
; types=1
; identities=1.*
; entry=00708250
00708250  55                        PUSH EBP
00708251  8bec                      MOV EBP,ESP
00708253  83ec14                    SUB ESP,0x14
00708256  53                        PUSH EBX
00708257  56                        PUSH ESI
00708258  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0070825e  8d45f8                    LEA EAX,[EBP + -0x8]
00708261  57                        PUSH EDI
00708262  50                        PUSH EAX
00708263  8d45ec                    LEA EAX,[EBP + -0x14]
00708266  c745f84f000000            MOV dword ptr [EBP + -0x8],0x4f
0070826d  50                        PUSH EAX
0070826e  8d8ed8bb0100              LEA ECX,[ESI + 0x1bbd8]
00708274  e82706d2ff                CALL 0x004288a0
00708279  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
0070827c  80780d00                  CMP byte ptr [EAX + 0xd],0x0
00708280  0f85b5000000              JNZ 0x0070833b
00708286  8378104f                  CMP dword ptr [EAX + 0x10],0x4f
0070828a  0f8fab000000              JG 0x0070833b
00708290  3b86d8bb0100              CMP EAX,dword ptr [ESI + 0x1bbd8]
00708296  0f849f000000              JZ 0x0070833b
0070829c  8b86acba0100              MOV EAX,dword ptr [ESI + 0x1baac]
007082a2  33d2                      XOR EDX,EDX
007082a4  8b9ea8ba0100              MOV EBX,dword ptr [ESI + 0x1baa8]
007082aa  8bc8                      MOV ECX,EAX
007082ac  2bcb                      SUB ECX,EBX
007082ae  8955fc                    MOV dword ptr [EBP + -0x4],EDX
007082b1  c1f902                    SAR ECX,0x2
007082b4  33ff                      XOR EDI,EDI
007082b6  85c9                      TEST ECX,ECX
007082b8  7478                      JZ 0x00708332
007082ba  8945f8                    MOV dword ptr [EBP + -0x8],EAX
007082bd  8bd3                      MOV EDX,EBX
007082bf  90                        NOP
007082c0  8bc8                      MOV ECX,EAX
007082c2  2bc3                      SUB EAX,EBX
007082c4  c1f802                    SAR EAX,0x2
007082c7  85c0                      TEST EAX,EAX
007082c9  751f                      JNZ 0x007082ea
007082cb  68bce6b700                PUSH 0xb7e6bc
007082d0  6a10                      PUSH 0x10
007082d2  e8e98f3000                CALL 0x00a112c0
007082d7  8b8eacba0100              MOV ECX,dword ptr [ESI + 0x1baac]
007082dd  83c408                    ADD ESP,0x8
007082e0  8b96a8ba0100              MOV EDX,dword ptr [ESI + 0x1baa8]
007082e6  8bc1                      MOV EAX,ECX
007082e8  eb03                      JMP 0x007082ed
007082ea  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
007082ed  2bca                      SUB ECX,EDX
007082ef  c1f902                    SAR ECX,0x2
007082f2  3bf9                      CMP EDI,ECX
007082f4  7303                      JNC 0x007082f9
007082f6  8d14ba                    LEA EDX,[EDX + EDI*0x4]
007082f9  8b0a                      MOV ECX,dword ptr [EDX]
007082fb  83792c00                  CMP dword ptr [ECX + 0x2c],0x0
007082ff  7517                      JNZ 0x00708318
00708301  83b9bc03000000            CMP dword ptr [ECX + 0x3bc],0x0
00708308  750e                      JNZ 0x00708318
0070830a  e851350d00                CALL 0x007db860
0070830f  0145fc                    ADD dword ptr [EBP + -0x4],EAX
00708312  8b86acba0100              MOV EAX,dword ptr [ESI + 0x1baac]
00708318  8b9ea8ba0100              MOV EBX,dword ptr [ESI + 0x1baa8]
0070831e  8bc8                      MOV ECX,EAX
00708320  2bcb                      SUB ECX,EBX
00708322  8945f8                    MOV dword ptr [EBP + -0x8],EAX
00708325  47                        INC EDI
00708326  c1f902                    SAR ECX,0x2
00708329  8bd3                      MOV EDX,EBX
0070832b  3bf9                      CMP EDI,ECX
0070832d  7291                      JC 0x007082c0
0070832f  8b55fc                    MOV EDX,dword ptr [EBP + -0x4]
00708332  8bc2                      MOV EAX,EDX
00708334  5f                        POP EDI
00708335  5e                        POP ESI
00708336  5b                        POP EBX
00708337  8be5                      MOV ESP,EBP
00708339  5d                        POP EBP
0070833a  c3                        RET
0070833b  5f                        POP EDI
0070833c  5e                        POP ESI
0070833d  33c0                      XOR EAX,EAX
0070833f  5b                        POP EBX
00708340  8be5                      MOV ESP,EBP
00708342  5d                        POP EBP
00708343  c3                        RET
