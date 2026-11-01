; J460 NPC AI 0x0040af10 HELPER_AnimationState_NextEventTrigger
; types=0
; identities=*
; entry=0040af10
0040af10  55                        PUSH EBP
0040af11  8bec                      MOV EBP,ESP
0040af13  83ec0c                    SUB ESP,0xc
0040af16  53                        PUSH EBX
0040af17  56                        PUSH ESI
0040af18  8bf1                      MOV ESI,ECX
0040af1a  57                        PUSH EDI
0040af1b  8975f4                    MOV dword ptr [EBP + -0xc],ESI
0040af1e  837e0400                  CMP dword ptr [ESI + 0x4],0x0
0040af22  750f                      JNZ 0x0040af33
0040af24  6804a5b100                PUSH 0xb1a504
0040af29  6a10                      PUSH 0x10
0040af2b  e890636000                CALL 0x00a112c0
0040af30  83c408                    ADD ESP,0x8
0040af33  8b36                      MOV ESI,dword ptr [ESI]
0040af35  33db                      XOR EBX,EBX
0040af37  8bbe90000000              MOV EDI,dword ptr [ESI + 0x90]
0040af3d  85ff                      TEST EDI,EDI
0040af3f  7444                      JZ 0x0040af85
0040af41  8bb68c000000              MOV ESI,dword ptr [ESI + 0x8c]
0040af47  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0040af4b  8bc6                      MOV EAX,ESI
0040af4d  7202                      JC 0x0040af51
0040af4f  8b06                      MOV EAX,dword ptr [ESI]
0040af51  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
0040af54  8a10                      MOV DL,byte ptr [EAX]
0040af56  3a11                      CMP DL,byte ptr [ECX]
0040af58  751a                      JNZ 0x0040af74
0040af5a  84d2                      TEST DL,DL
0040af5c  7412                      JZ 0x0040af70
0040af5e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0040af61  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0040af64  750e                      JNZ 0x0040af74
0040af66  83c002                    ADD EAX,0x2
0040af69  83c102                    ADD ECX,0x2
0040af6c  84d2                      TEST DL,DL
0040af6e  75e4                      JNZ 0x0040af54
0040af70  33c0                      XOR EAX,EAX
0040af72  eb05                      JMP 0x0040af79
0040af74  1bc0                      SBB EAX,EAX
0040af76  83c801                    OR EAX,0x1
0040af79  85c0                      TEST EAX,EAX
0040af7b  7414                      JZ 0x0040af91
0040af7d  43                        INC EBX
0040af7e  83c618                    ADD ESI,0x18
0040af81  3bdf                      CMP EBX,EDI
0040af83  72c2                      JC 0x0040af47
0040af85  83c8ff                    OR EAX,0xffffffff
0040af88  5f                        POP EDI
0040af89  5e                        POP ESI
0040af8a  5b                        POP EBX
0040af8b  8be5                      MOV ESP,EBP
0040af8d  5d                        POP EBP
0040af8e  c20400                    RET 0x4
0040af91  85db                      TEST EBX,EBX
0040af93  78f0                      JS 0x0040af85
0040af95  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
0040af98  83cfff                    OR EDI,0xffffffff
0040af9b  33c9                      XOR ECX,ECX
0040af9d  897df8                    MOV dword ptr [EBP + -0x8],EDI
0040afa0  0bf7                      OR ESI,EDI
0040afa2  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0040afa5  894508                    MOV dword ptr [EBP + 0x8],EAX
0040afa8  39482c                    CMP dword ptr [EAX + 0x2c],ECX
0040afab  7640                      JBE 0x0040afed
0040afad  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
0040afb0  8b5508                    MOV EDX,dword ptr [EBP + 0x8]
0040afb3  8945fc                    MOV dword ptr [EBP + -0x4],EAX
0040afb6  391cc8                    CMP dword ptr [EAX + ECX*0x8],EBX
0040afb9  752c                      JNZ 0x0040afe7
0040afbb  8b7cc804                  MOV EDI,dword ptr [EAX + ECX*0x8 + 0x4]
0040afbf  8bd7                      MOV EDX,EDI
0040afc1  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
0040afc4  f30f2c4010                CVTTSS2SI EAX,dword ptr [EAX + 0x10]
0040afc9  2bd0                      SUB EDX,EAX
0040afcb  85d2                      TEST EDX,EDX
0040afcd  7e0f                      JLE 0x0040afde
0040afcf  85f6                      TEST ESI,ESI
0040afd1  7804                      JS 0x0040afd7
0040afd3  3bd6                      CMP EDX,ESI
0040afd5  7d07                      JGE 0x0040afde
0040afd7  897df8                    MOV dword ptr [EBP + -0x8],EDI
0040afda  8bf2                      MOV ESI,EDX
0040afdc  eb03                      JMP 0x0040afe1
0040afde  8b7df8                    MOV EDI,dword ptr [EBP + -0x8]
0040afe1  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
0040afe4  8b5508                    MOV EDX,dword ptr [EBP + 0x8]
0040afe7  41                        INC ECX
0040afe8  3b4a2c                    CMP ECX,dword ptr [EDX + 0x2c]
0040afeb  72c9                      JC 0x0040afb6
0040afed  8bc7                      MOV EAX,EDI
0040afef  5f                        POP EDI
0040aff0  5e                        POP ESI
0040aff1  5b                        POP EBX
0040aff2  8be5                      MOV ESP,EBP
0040aff4  5d                        POP EBP
0040aff5  c20400                    RET 0x4
