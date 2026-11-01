; J460 NPC AI 0x009562d0 HELPER_009562d0_BossEventMutation
; types=
; identities=boss_event
; entry=009562d0
009562d0  55                        PUSH EBP
009562d1  8bec                      MOV EBP,ESP
009562d3  51                        PUSH ECX
009562d4  53                        PUSH EBX
009562d5  8b5d08                    MOV EBX,dword ptr [EBP + 0x8]
009562d8  56                        PUSH ESI
009562d9  57                        PUSH EDI
009562da  8b3d9c16c700              MOV EDI,dword ptr [0x00c7169c]
009562e0  837f0802                  CMP dword ptr [EDI + 0x8],0x2
009562e4  751f                      JNZ 0x00956305
009562e6  833d9016c70000            CMP dword ptr [0x00c71690],0x0
009562ed  7416                      JZ 0x00956305
009562ef  8d4508                    LEA EAX,[EBP + 0x8]
009562f2  50                        PUSH EAX
009562f3  53                        PUSH EBX
009562f4  51                        PUSH ECX
009562f5  ff7510                    PUSH dword ptr [EBP + 0x10]
009562f8  e883eaf0ff                CALL 0x00864d80
009562fd  84c0                      TEST AL,AL
009562ff  0f858f000000              JNZ 0x00956394
00956305  8b8fd8b30400              MOV ECX,dword ptr [EDI + 0x4b3d8]
0095630b  8b87dcb30400              MOV EAX,dword ptr [EDI + 0x4b3dc]
00956311  8b550c                    MOV EDX,dword ptr [EBP + 0xc]
00956314  3bc8                      CMP ECX,EAX
00956316  7455                      JZ 0x0095636d
00956318  83faff                    CMP EDX,-0x1
0095631b  7550                      JNZ 0x0095636d
0095631d  2bc1                      SUB EAX,ECX
0095631f  33f6                      XOR ESI,ESI
00956321  c1f802                    SAR EAX,0x2
00956324  85c0                      TEST EAX,EAX
00956326  7439                      JZ 0x00956361
00956328  8b0cb1                    MOV ECX,dword ptr [ECX + ESI*0x4]
0095632b  53                        PUSH EBX
0095632c  8b01                      MOV EAX,dword ptr [ECX]
0095632e  8b4038                    MOV EAX,dword ptr [EAX + 0x38]
00956331  894508                    MOV dword ptr [EBP + 0x8],EAX
00956334  ff5508                    CALL dword ptr [EBP + 0x8]
00956337  d95d08                    FSTP dword ptr [EBP + 0x8]
0095633a  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
0095633f  0f57c9                    XORPS XMM1,XMM1
00956342  0f2ec1                    UCOMISS XMM0,XMM1
00956345  9f                        LAHF
00956346  f6c444                    TEST AH,0x44
00956349  7a4e                      JP 0x00956399
0095634b  8b87dcb30400              MOV EAX,dword ptr [EDI + 0x4b3dc]
00956351  46                        INC ESI
00956352  8b8fd8b30400              MOV ECX,dword ptr [EDI + 0x4b3d8]
00956358  2bc1                      SUB EAX,ECX
0095635a  c1f802                    SAR EAX,0x2
0095635d  3bf0                      CMP ESI,EAX
0095635f  72c7                      JC 0x00956328
00956361  0f57c0                    XORPS XMM0,XMM0
00956364  5f                        POP EDI
00956365  5e                        POP ESI
00956366  5b                        POP EBX
00956367  8be5                      MOV ESP,EBP
00956369  5d                        POP EBP
0095636a  c21000                    RET 0x10
0095636d  6a00                      PUSH 0x0
0095636f  8d4508                    LEA EAX,[EBP + 0x8]
00956372  895d10                    MOV dword ptr [EBP + 0x10],EBX
00956375  50                        PUSH EAX
00956376  8d4510                    LEA EAX,[EBP + 0x10]
00956379  c7450800000000            MOV dword ptr [EBP + 0x8],0x0
00956380  50                        PUSH EAX
00956381  a1187bc500                MOV EAX,[0x00c57b18]
00956386  b9187bc500                MOV ECX,0xc57b18
0095638b  68b00aa200                PUSH 0xa20ab0
00956390  52                        PUSH EDX
00956391  ff5074                    CALL dword ptr [EAX + 0x74]
00956394  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
00956399  5f                        POP EDI
0095639a  5e                        POP ESI
0095639b  5b                        POP EBX
0095639c  8be5                      MOV ESP,EBP
0095639e  5d                        POP EBP
0095639f  c21000                    RET 0x10
