; J460 NPC AI 0x00452d40 HELPER_00452d40_BigHornAttackHelperB
; types=411
; identities=big_horn.attack_helper
; entry=00452d40
00452d40  55                        PUSH EBP
00452d41  8bec                      MOV EBP,ESP
00452d43  6aff                      PUSH -0x1
00452d45  685d24af00                PUSH 0xaf245d
00452d4a  64a100000000              MOV EAX,FS:[0x0]
00452d50  50                        PUSH EAX
00452d51  83ec1c                    SUB ESP,0x1c
00452d54  53                        PUSH EBX
00452d55  56                        PUSH ESI
00452d56  57                        PUSH EDI
00452d57  a1b493bf00                MOV EAX,[0x00bf93b4]
00452d5c  33c5                      XOR EAX,EBP
00452d5e  50                        PUSH EAX
00452d5f  8d45f4                    LEA EAX,[EBP + -0xc]
00452d62  64a300000000              MOV FS:[0x0],EAX
00452d68  894df0                    MOV dword ptr [EBP + -0x10],ECX
00452d6b  a17816c700                MOV EAX,[0x00c71678]
00452d70  33db                      XOR EBX,EBX
00452d72  53                        PUSH EBX
00452d73  53                        PUSH EBX
00452d74  6aff                      PUSH -0x1
00452d76  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00452d7c  8d45dc                    LEA EAX,[EBP + -0x24]
00452d7f  6aff                      PUSH -0x1
00452d81  6a04                      PUSH 0x4
00452d83  81c118120000              ADD ECX,0x1218
00452d89  50                        PUSH EAX
00452d8a  e8d181fcff                CALL 0x0041af60
00452d8f  895dfc                    MOV dword ptr [EBP + -0x4],EBX
00452d92  33ff                      XOR EDI,EDI
00452d94  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
00452d97  85c0                      TEST EAX,EAX
00452d99  0f84b9000000              JZ 0x00452e58
00452d9f  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
00452da2  8b55f0                    MOV EDX,dword ptr [EBP + -0x10]
00452da5  8b34b9                    MOV ESI,dword ptr [ECX + EDI*0x4]
00452da8  f30f108274030000          MOVSS XMM0,dword ptr [EDX + 0x374]
00452db0  f30f108a78030000          MOVSS XMM1,dword ptr [EDX + 0x378]
00452db8  f30f10923c030000          MOVSS XMM2,dword ptr [EDX + 0x33c]
00452dc0  f30f109a40030000          MOVSS XMM3,dword ptr [EDX + 0x340]
00452dc8  f30f10a63c030000          MOVSS XMM4,dword ptr [ESI + 0x33c]
00452dd0  f30f10ae40030000          MOVSS XMM5,dword ptr [ESI + 0x340]
00452dd8  f30f5ee0                  DIVSS XMM4,XMM0
00452ddc  f30f5ed0                  DIVSS XMM2,XMM0
00452de0  f30f5ee9                  DIVSS XMM5,XMM1
00452de4  f30f5ed9                  DIVSS XMM3,XMM1
00452de8  f30f108270030000          MOVSS XMM0,dword ptr [EDX + 0x370]
00452df0  f30f5ce2                  SUBSS XMM4,XMM2
00452df4  f30f5ceb                  SUBSS XMM5,XMM3
00452df8  f30f59c0                  MULSS XMM0,XMM0
00452dfc  f30f59e4                  MULSS XMM4,XMM4
00452e00  f30f59ed                  MULSS XMM5,XMM5
00452e04  f30f58ec                  ADDSS XMM5,XMM4
00452e08  0f2fc5                    COMISS XMM0,XMM5
00452e0b  7642                      JBE 0x00452e4f
00452e0d  83befc03000000            CMP dword ptr [ESI + 0x3fc],0x0
00452e14  7539                      JNZ 0x00452e4f
00452e16  8bce                      MOV ECX,ESI
00452e18  e8233b2500                CALL 0x006a6940
00452e1d  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00452e23  81c6bc030000              ADD ESI,0x3bc
00452e29  85c9                      TEST ECX,ECX
00452e2b  7412                      JZ 0x00452e3f
00452e2d  8d45ec                    LEA EAX,[EBP + -0x14]
00452e30  8975ec                    MOV dword ptr [EBP + -0x14],ESI
00452e33  81c1cc030000              ADD ECX,0x3cc
00452e39  50                        PUSH EAX
00452e3a  e8d1c30700                CALL 0x004cf210
00452e3f  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
00452e42  43                        INC EBX
00452e43  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
00452e46  8b55f0                    MOV EDX,dword ptr [EBP + -0x10]
00452e49  c70600000000              MOV dword ptr [ESI],0x0
00452e4f  47                        INC EDI
00452e50  3bf8                      CMP EDI,EAX
00452e52  0f824dffffff              JC 0x00452da5
00452e58  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
00452e5c  752f                      JNZ 0x00452e8d
00452e5e  a178dec700                MOV EAX,[0x00c7de78]
00452e63  85c0                      TEST EAX,EAX
00452e65  7405                      JZ 0x00452e6c
00452e67  83c030                    ADD EAX,0x30
00452e6a  eb05                      JMP 0x00452e71
00452e6c  b818f6c700                MOV EAX,0xc7f618
00452e71  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
00452e74  85c9                      TEST ECX,ECX
00452e76  7415                      JZ 0x00452e8d
00452e78  8d51fc                    LEA EDX,[ECX + -0x4]
00452e7b  8b0a                      MOV ECX,dword ptr [EDX]
00452e7d  2908                      SUB dword ptr [EAX],ECX
00452e7f  52                        PUSH EDX
00452e80  83580400                  SBB dword ptr [EAX + 0x4],0x0
00452e84  ff15dc87b100              CALL dword ptr [0x00b187dc]
00452e8a  83c404                    ADD ESP,0x4
00452e8d  8bc3                      MOV EAX,EBX
00452e8f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00452e92  64890d00000000            MOV dword ptr FS:[0x0],ECX
00452e99  59                        POP ECX
00452e9a  5f                        POP EDI
00452e9b  5e                        POP ESI
00452e9c  5b                        POP EBX
00452e9d  8be5                      MOV ESP,EBP
00452e9f  5d                        POP EBP
00452ea0  c3                        RET
