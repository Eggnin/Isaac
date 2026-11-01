; J460 NPC AI 0x0040add0 HELPER_AnimationState_IsEventTriggered
; types=0
; identities=*
; entry=0040add0
0040add0  55                        PUSH EBP
0040add1  8bec                      MOV EBP,ESP
0040add3  51                        PUSH ECX
0040add4  53                        PUSH EBX
0040add5  8bd9                      MOV EBX,ECX
0040add7  56                        PUSH ESI
0040add8  57                        PUSH EDI
0040add9  895dfc                    MOV dword ptr [EBP + -0x4],EBX
0040addc  837b0400                  CMP dword ptr [EBX + 0x4],0x0
0040ade0  750f                      JNZ 0x0040adf1
0040ade2  6804a5b100                PUSH 0xb1a504
0040ade7  6a10                      PUSH 0x10
0040ade9  e8d2646000                CALL 0x00a112c0
0040adee  83c408                    ADD ESP,0x8
0040adf1  8b33                      MOV ESI,dword ptr [EBX]
0040adf3  33ff                      XOR EDI,EDI
0040adf5  8b9e90000000              MOV EBX,dword ptr [ESI + 0x90]
0040adfb  85db                      TEST EBX,EBX
0040adfd  7444                      JZ 0x0040ae43
0040adff  8bb68c000000              MOV ESI,dword ptr [ESI + 0x8c]
0040ae05  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0040ae09  8bc6                      MOV EAX,ESI
0040ae0b  7202                      JC 0x0040ae0f
0040ae0d  8b06                      MOV EAX,dword ptr [ESI]
0040ae0f  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
0040ae12  8a10                      MOV DL,byte ptr [EAX]
0040ae14  3a11                      CMP DL,byte ptr [ECX]
0040ae16  751a                      JNZ 0x0040ae32
0040ae18  84d2                      TEST DL,DL
0040ae1a  7412                      JZ 0x0040ae2e
0040ae1c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0040ae1f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0040ae22  750e                      JNZ 0x0040ae32
0040ae24  83c002                    ADD EAX,0x2
0040ae27  83c102                    ADD ECX,0x2
0040ae2a  84d2                      TEST DL,DL
0040ae2c  75e4                      JNZ 0x0040ae12
0040ae2e  33c0                      XOR EAX,EAX
0040ae30  eb05                      JMP 0x0040ae37
0040ae32  1bc0                      SBB EAX,EAX
0040ae34  83c801                    OR EAX,0x1
0040ae37  85c0                      TEST EAX,EAX
0040ae39  7413                      JZ 0x0040ae4e
0040ae3b  47                        INC EDI
0040ae3c  83c618                    ADD ESI,0x18
0040ae3f  3bfb                      CMP EDI,EBX
0040ae41  72c2                      JC 0x0040ae05
0040ae43  32c0                      XOR AL,AL
0040ae45  5f                        POP EDI
0040ae46  5e                        POP ESI
0040ae47  5b                        POP EBX
0040ae48  8be5                      MOV ESP,EBP
0040ae4a  5d                        POP EBP
0040ae4b  c20400                    RET 0x4
0040ae4e  85ff                      TEST EDI,EDI
0040ae50  78f1                      JS 0x0040ae43
0040ae52  8bcf                      MOV ECX,EDI
0040ae54  b801000000                MOV EAX,0x1
0040ae59  d3e0                      SHL EAX,CL
0040ae5b  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0040ae5e  5f                        POP EDI
0040ae5f  5e                        POP ESI
0040ae60  5b                        POP EBX
0040ae61  854118                    TEST dword ptr [ECX + 0x18],EAX
0040ae64  0f95c0                    SETNZ AL
0040ae67  8be5                      MOV ESP,EBP
0040ae69  5d                        POP EBP
0040ae6a  c20400                    RET 0x4
