; J460 NPC AI 0x00a20940 HELPER_00a20940_BossEventQueryCallback
; types=
; identities=boss_event
; entry=00a20940
00a20940  55                        PUSH EBP
00a20941  8bec                      MOV EBP,ESP
00a20943  6aff                      PUSH -0x1
00a20945  68cd15b100                PUSH 0xb115cd
00a2094a  64a100000000              MOV EAX,FS:[0x0]
00a20950  50                        PUSH EAX
00a20951  53                        PUSH EBX
00a20952  a1b493bf00                MOV EAX,[0x00bf93b4]
00a20957  33c5                      XOR EAX,EBP
00a20959  50                        PUSH EAX
00a2095a  8d45f4                    LEA EAX,[EBP + -0xc]
00a2095d  64a300000000              MOV FS:[0x0],EAX
00a20963  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00a2096a  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
00a2096d  8b01                      MOV EAX,dword ptr [ECX]
00a2096f  8b5030                    MOV EDX,dword ptr [EAX + 0x30]
00a20972  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
00a20975  ff30                      PUSH dword ptr [EAX]
00a20977  ffd2                      CALL EDX
00a20979  8ad8                      MOV BL,AL
00a2097b  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00a20982  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
00a20985  85c9                      TEST ECX,ECX
00a20987  741d                      JZ 0x00a209a6
00a20989  8b11                      MOV EDX,dword ptr [ECX]
00a2098b  8b520c                    MOV EDX,dword ptr [EDX + 0xc]
00a2098e  ffd2                      CALL EDX
00a20990  84c0                      TEST AL,AL
00a20992  7412                      JZ 0x00a209a6
00a20994  a114e8c700                MOV EAX,[0x00c7e814]
00a20999  85c0                      TEST EAX,EAX
00a2099b  7409                      JZ 0x00a209a6
00a2099d  8d4d08                    LEA ECX,[EBP + 0x8]
00a209a0  51                        PUSH ECX
00a209a1  ffd0                      CALL EAX
00a209a3  83c404                    ADD ESP,0x4
00a209a6  8ac3                      MOV AL,BL
00a209a8  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00a209ab  64890d00000000            MOV dword ptr FS:[0x0],ECX
00a209b2  59                        POP ECX
00a209b3  5b                        POP EBX
00a209b4  8be5                      MOV ESP,EBP
00a209b6  5d                        POP EBP
00a209b7  c3                        RET
