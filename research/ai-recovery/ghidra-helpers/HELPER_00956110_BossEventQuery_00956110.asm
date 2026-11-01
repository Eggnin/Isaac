; J460 NPC AI 0x00956110 HELPER_00956110_BossEventQuery
; types=
; identities=boss_event
; entry=00956110
00956110  55                        PUSH EBP
00956111  8bec                      MOV EBP,ESP
00956113  51                        PUSH ECX
00956114  53                        PUSH EBX
00956115  8b5d08                    MOV EBX,dword ptr [EBP + 0x8]
00956118  56                        PUSH ESI
00956119  57                        PUSH EDI
0095611a  8b3d9c16c700              MOV EDI,dword ptr [0x00c7169c]
00956120  837f0802                  CMP dword ptr [EDI + 0x8],0x2
00956124  7528                      JNZ 0x0095614e
00956126  833d9016c70000            CMP dword ptr [0x00c71690],0x0
0095612d  741f                      JZ 0x0095614e
0095612f  8d450b                    LEA EAX,[EBP + 0xb]
00956132  50                        PUSH EAX
00956133  53                        PUSH EBX
00956134  6a00                      PUSH 0x0
00956136  ff7510                    PUSH dword ptr [EBP + 0x10]
00956139  e8f2eaf0ff                CALL 0x00864c30
0095613e  84c0                      TEST AL,AL
00956140  740c                      JZ 0x0095614e
00956142  8a450b                    MOV AL,byte ptr [EBP + 0xb]
00956145  5f                        POP EDI
00956146  5e                        POP ESI
00956147  5b                        POP EBX
00956148  8be5                      MOV ESP,EBP
0095614a  5d                        POP EBP
0095614b  c21000                    RET 0x10
0095614e  8b8fd8b30400              MOV ECX,dword ptr [EDI + 0x4b3d8]
00956154  8b87dcb30400              MOV EAX,dword ptr [EDI + 0x4b3dc]
0095615a  8b550c                    MOV EDX,dword ptr [EBP + 0xc]
0095615d  3bc8                      CMP ECX,EAX
0095615f  744b                      JZ 0x009561ac
00956161  83faff                    CMP EDX,-0x1
00956164  7546                      JNZ 0x009561ac
00956166  2bc1                      SUB EAX,ECX
00956168  33f6                      XOR ESI,ESI
0095616a  c1f802                    SAR EAX,0x2
0095616d  85c0                      TEST EAX,EAX
0095616f  7425                      JZ 0x00956196
00956171  8b0cb1                    MOV ECX,dword ptr [ECX + ESI*0x4]
00956174  53                        PUSH EBX
00956175  8b01                      MOV EAX,dword ptr [ECX]
00956177  8b4030                    MOV EAX,dword ptr [EAX + 0x30]
0095617a  ffd0                      CALL EAX
0095617c  84c0                      TEST AL,AL
0095617e  7521                      JNZ 0x009561a1
00956180  8b87dcb30400              MOV EAX,dword ptr [EDI + 0x4b3dc]
00956186  46                        INC ESI
00956187  8b8fd8b30400              MOV ECX,dword ptr [EDI + 0x4b3d8]
0095618d  2bc1                      SUB EAX,ECX
0095618f  c1f802                    SAR EAX,0x2
00956192  3bf0                      CMP ESI,EAX
00956194  72db                      JC 0x00956171
00956196  32c0                      XOR AL,AL
00956198  5f                        POP EDI
00956199  5e                        POP ESI
0095619a  5b                        POP EBX
0095619b  8be5                      MOV ESP,EBP
0095619d  5d                        POP EBP
0095619e  c21000                    RET 0x10
009561a1  b001                      MOV AL,0x1
009561a3  5f                        POP EDI
009561a4  5e                        POP ESI
009561a5  5b                        POP EBX
009561a6  8be5                      MOV ESP,EBP
009561a8  5d                        POP EBP
009561a9  c21000                    RET 0x10
009561ac  a1187bc500                MOV EAX,[0x00c57b18]
009561b1  8d4d08                    LEA ECX,[EBP + 0x8]
009561b4  6a00                      PUSH 0x0
009561b6  6a00                      PUSH 0x0
009561b8  51                        PUSH ECX
009561b9  8b4074                    MOV EAX,dword ptr [EAX + 0x74]
009561bc  b9187bc500                MOV ECX,0xc57b18
009561c1  684009a200                PUSH 0xa20940
009561c6  52                        PUSH EDX
009561c7  895d08                    MOV dword ptr [EBP + 0x8],EBX
009561ca  ffd0                      CALL EAX
009561cc  5f                        POP EDI
009561cd  5e                        POP ESI
009561ce  5b                        POP EBX
009561cf  8be5                      MOV ESP,EBP
009561d1  5d                        POP EBP
009561d2  c21000                    RET 0x10
