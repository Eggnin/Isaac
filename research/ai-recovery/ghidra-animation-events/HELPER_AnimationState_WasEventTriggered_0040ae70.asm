; J460 NPC AI 0x0040ae70 HELPER_AnimationState_WasEventTriggered
; types=0
; identities=*
; entry=0040ae70
0040ae70  55                        PUSH EBP
0040ae71  8bec                      MOV EBP,ESP
0040ae73  51                        PUSH ECX
0040ae74  53                        PUSH EBX
0040ae75  8bd9                      MOV EBX,ECX
0040ae77  56                        PUSH ESI
0040ae78  57                        PUSH EDI
0040ae79  895dfc                    MOV dword ptr [EBP + -0x4],EBX
0040ae7c  837b0400                  CMP dword ptr [EBX + 0x4],0x0
0040ae80  750f                      JNZ 0x0040ae91
0040ae82  6804a5b100                PUSH 0xb1a504
0040ae87  6a10                      PUSH 0x10
0040ae89  e832646000                CALL 0x00a112c0
0040ae8e  83c408                    ADD ESP,0x8
0040ae91  8b33                      MOV ESI,dword ptr [EBX]
0040ae93  33ff                      XOR EDI,EDI
0040ae95  8b9e90000000              MOV EBX,dword ptr [ESI + 0x90]
0040ae9b  85db                      TEST EBX,EBX
0040ae9d  7444                      JZ 0x0040aee3
0040ae9f  8bb68c000000              MOV ESI,dword ptr [ESI + 0x8c]
0040aea5  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0040aea9  8bc6                      MOV EAX,ESI
0040aeab  7202                      JC 0x0040aeaf
0040aead  8b06                      MOV EAX,dword ptr [ESI]
0040aeaf  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
0040aeb2  8a10                      MOV DL,byte ptr [EAX]
0040aeb4  3a11                      CMP DL,byte ptr [ECX]
0040aeb6  751a                      JNZ 0x0040aed2
0040aeb8  84d2                      TEST DL,DL
0040aeba  7412                      JZ 0x0040aece
0040aebc  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0040aebf  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0040aec2  750e                      JNZ 0x0040aed2
0040aec4  83c002                    ADD EAX,0x2
0040aec7  83c102                    ADD ECX,0x2
0040aeca  84d2                      TEST DL,DL
0040aecc  75e4                      JNZ 0x0040aeb2
0040aece  33c0                      XOR EAX,EAX
0040aed0  eb05                      JMP 0x0040aed7
0040aed2  1bc0                      SBB EAX,EAX
0040aed4  83c801                    OR EAX,0x1
0040aed7  85c0                      TEST EAX,EAX
0040aed9  7413                      JZ 0x0040aeee
0040aedb  47                        INC EDI
0040aedc  83c618                    ADD ESI,0x18
0040aedf  3bfb                      CMP EDI,EBX
0040aee1  72c2                      JC 0x0040aea5
0040aee3  32c0                      XOR AL,AL
0040aee5  5f                        POP EDI
0040aee6  5e                        POP ESI
0040aee7  5b                        POP EBX
0040aee8  8be5                      MOV ESP,EBP
0040aeea  5d                        POP EBP
0040aeeb  c20400                    RET 0x4
0040aeee  85ff                      TEST EDI,EDI
0040aef0  78f1                      JS 0x0040aee3
0040aef2  8bcf                      MOV ECX,EDI
0040aef4  b801000000                MOV EAX,0x1
0040aef9  d3e0                      SHL EAX,CL
0040aefb  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0040aefe  5f                        POP EDI
0040aeff  5e                        POP ESI
0040af00  5b                        POP EBX
0040af01  85411c                    TEST dword ptr [ECX + 0x1c],EAX
0040af04  0f95c0                    SETNZ AL
0040af07  8be5                      MOV ESP,EBP
0040af09  5d                        POP EBP
0040af0a  c20400                    RET 0x4
