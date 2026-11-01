; J460 NPC AI 0x00864560 HELPER_Damage_CallbackGate
; types=4
; identities=4.*
; entry=00864560
00864560  55                        PUSH EBP
00864561  8bec                      MOV EBP,ESP
00864563  6aff                      PUSH -0x1
00864565  68c042b000                PUSH 0xb042c0
0086456a  64a100000000              MOV EAX,FS:[0x0]
00864570  50                        PUSH EAX
00864571  83ec20                    SUB ESP,0x20
00864574  53                        PUSH EBX
00864575  56                        PUSH ESI
00864576  57                        PUSH EDI
00864577  a1b493bf00                MOV EAX,[0x00bf93b4]
0086457c  33c5                      XOR EAX,EBP
0086457e  50                        PUSH EAX
0086457f  8d45f4                    LEA EAX,[EBP + -0xc]
00864582  64a300000000              MOV FS:[0x0],EAX
00864588  8965f0                    MOV dword ptr [EBP + -0x10],ESP
0086458b  8b159016c700              MOV EDX,dword ptr [0x00c71690]
00864591  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
00864594  c745dc0b000000            MOV dword ptr [EBP + -0x24],0xb
0086459b  8b4210                    MOV EAX,dword ptr [EDX + 0x10]
0086459e  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
008645a1  8945d8                    MOV dword ptr [EBP + -0x28],EAX
008645a4  8b02                      MOV EAX,dword ptr [EDX]
008645a6  894de0                    MOV dword ptr [EBP + -0x20],ECX
008645a9  f70000080000              TEST dword ptr [EAX],0x800
008645af  0f84b7000000              JZ 0x0086466c
008645b5  ff7518                    PUSH dword ptr [EBP + 0x18]
008645b8  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
008645bf  8d450c                    LEA EAX,[EBP + 0xc]
008645c2  ff7514                    PUSH dword ptr [EBP + 0x14]
008645c5  ff7510                    PUSH dword ptr [EBP + 0x10]
008645c8  ff750c                    PUSH dword ptr [EBP + 0xc]
008645cb  51                        PUSH ECX
008645cc  f30f111424                MOVSS dword ptr [ESP],XMM2
008645d1  56                        PUSH ESI
008645d2  51                        PUSH ECX
008645d3  50                        PUSH EAX
008645d4  8d4dd8                    LEA ECX,[EBP + -0x28]
008645d7  e874ff0000                CALL 0x00874550
008645dc  8b5d10                    MOV EBX,dword ptr [EBP + 0x10]
008645df  8b7d0c                    MOV EDI,dword ptr [EBP + 0xc]
008645e2  83fbff                    CMP EBX,-0x1
008645e5  7475                      JZ 0x0086465c
008645e7  57                        PUSH EDI
008645e8  8d4d0c                    LEA ECX,[EBP + 0xc]
008645eb  e8003be4ff                CALL 0x006a80f0
008645f0  6aff                      PUSH -0x1
008645f2  57                        PUSH EDI
008645f3  ff150084b100              CALL dword ptr [0x00b18400]
008645f9  6afe                      PUSH -0x2
008645fb  57                        PUSH EDI
008645fc  8bf0                      MOV ESI,EAX
008645fe  ff152883b100              CALL dword ptr [0x00b18328]
00864604  83c410                    ADD ESP,0x10
00864607  85f6                      TEST ESI,ESI
00864609  7451                      JZ 0x0086465c
0086460b  57                        PUSH EDI
0086460c  8d4d0c                    LEA ECX,[EBP + 0xc]
0086460f  e8dc3ae4ff                CALL 0x006a80f0
00864614  57                        PUSH EDI
00864615  ff15d483b100              CALL dword ptr [0x00b183d4]
0086461b  83c404                    ADD ESP,0x4
0086461e  50                        PUSH EAX
0086461f  57                        PUSH EDI
00864620  ff15e883b100              CALL dword ptr [0x00b183e8]
00864626  85c0                      TEST EAX,EAX
00864628  6afe                      PUSH -0x2
0086462a  57                        PUSH EDI
0086462b  0f95c3                    SETNZ BL
0086462e  ff152883b100              CALL dword ptr [0x00b18328]
00864634  ff7510                    PUSH dword ptr [EBP + 0x10]
00864637  68d8b9f0ff                PUSH 0xfff0b9d8
0086463c  57                        PUSH EDI
0086463d  ff151c83b100              CALL dword ptr [0x00b1831c]
00864643  83c41c                    ADD ESP,0x1c
00864646  8ac3                      MOV AL,BL
00864648  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0086464b  64890d00000000            MOV dword ptr FS:[0x0],ECX
00864652  59                        POP ECX
00864653  5f                        POP EDI
00864654  5e                        POP ESI
00864655  5b                        POP EBX
00864656  8be5                      MOV ESP,EBP
00864658  5d                        POP EBP
00864659  c21400                    RET 0x14
0086465c  53                        PUSH EBX
0086465d  68d8b9f0ff                PUSH 0xfff0b9d8
00864662  57                        PUSH EDI
00864663  ff151c83b100              CALL dword ptr [0x00b1831c]
00864669  83c40c                    ADD ESP,0xc
0086466c  b001                      MOV AL,0x1
0086466e  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00864671  64890d00000000            MOV dword ptr FS:[0x0],ECX
00864678  59                        POP ECX
00864679  5f                        POP EDI
0086467a  5e                        POP ESI
0086467b  5b                        POP EBX
0086467c  8be5                      MOV ESP,EBP
0086467e  5d                        POP EBP
0086467f  c21400                    RET 0x14
