; J460 NPC AI 0x00a20ab0 HELPER_00a20ab0_BossEventMutationCallback
; types=
; identities=boss_event
; entry=00a20ab0
00a20ab0  55                        PUSH EBP
00a20ab1  8bec                      MOV EBP,ESP
00a20ab3  6aff                      PUSH -0x1
00a20ab5  68fd15b100                PUSH 0xb115fd
00a20aba  64a100000000              MOV EAX,FS:[0x0]
00a20ac0  50                        PUSH EAX
00a20ac1  51                        PUSH ECX
00a20ac2  53                        PUSH EBX
00a20ac3  a1b493bf00                MOV EAX,[0x00bf93b4]
00a20ac8  33c5                      XOR EAX,EBP
00a20aca  50                        PUSH EAX
00a20acb  8d45f4                    LEA EAX,[EBP + -0xc]
00a20ace  64a300000000              MOV FS:[0x0],EAX
00a20ad4  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00a20adb  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
00a20ade  8b01                      MOV EAX,dword ptr [ECX]
00a20ae0  8b4038                    MOV EAX,dword ptr [EAX + 0x38]
00a20ae3  8945f0                    MOV dword ptr [EBP + -0x10],EAX
00a20ae6  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
00a20ae9  ff30                      PUSH dword ptr [EAX]
00a20aeb  ff55f0                    CALL dword ptr [EBP + -0x10]
00a20aee  8b4514                    MOV EAX,dword ptr [EBP + 0x14]
00a20af1  d95d10                    FSTP dword ptr [EBP + 0x10]
00a20af4  f30f104510                MOVSS XMM0,dword ptr [EBP + 0x10]
00a20af9  0f2e05e49fba00            UCOMISS XMM0,dword ptr [0x00ba9fe4]
00a20b00  f30f1100                  MOVSS dword ptr [EAX],XMM0
00a20b04  9f                        LAHF
00a20b05  f6c444                    TEST AH,0x44
00a20b08  7b04                      JNP 0x00a20b0e
00a20b0a  b301                      MOV BL,0x1
00a20b0c  eb02                      JMP 0x00a20b10
00a20b0e  32db                      XOR BL,BL
00a20b10  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00a20b17  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
00a20b1a  85c9                      TEST ECX,ECX
00a20b1c  741d                      JZ 0x00a20b3b
00a20b1e  8b01                      MOV EAX,dword ptr [ECX]
00a20b20  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
00a20b23  ffd0                      CALL EAX
00a20b25  84c0                      TEST AL,AL
00a20b27  7412                      JZ 0x00a20b3b
00a20b29  a114e8c700                MOV EAX,[0x00c7e814]
00a20b2e  85c0                      TEST EAX,EAX
00a20b30  7409                      JZ 0x00a20b3b
00a20b32  8d4d08                    LEA ECX,[EBP + 0x8]
00a20b35  51                        PUSH ECX
00a20b36  ffd0                      CALL EAX
00a20b38  83c404                    ADD ESP,0x4
00a20b3b  8ac3                      MOV AL,BL
00a20b3d  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00a20b40  64890d00000000            MOV dword ptr FS:[0x0],ECX
00a20b47  59                        POP ECX
00a20b48  5b                        POP EBX
00a20b49  8be5                      MOV ESP,EBP
00a20b4b  5d                        POP EBP
00a20b4c  c3                        RET
