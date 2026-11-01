; J460 NPC AI 0x00452eb0 HELPER_00452eb0_BigHornAttackHelperC
; types=411
; identities=big_horn.attack_helper
; entry=00452eb0
00452eb0  55                        PUSH EBP
00452eb1  8bec                      MOV EBP,ESP
00452eb3  6aff                      PUSH -0x1
00452eb5  685d24af00                PUSH 0xaf245d
00452eba  64a100000000              MOV EAX,FS:[0x0]
00452ec0  50                        PUSH EAX
00452ec1  83ec1c                    SUB ESP,0x1c
00452ec4  53                        PUSH EBX
00452ec5  56                        PUSH ESI
00452ec6  57                        PUSH EDI
00452ec7  a1b493bf00                MOV EAX,[0x00bf93b4]
00452ecc  33c5                      XOR EAX,EBP
00452ece  50                        PUSH EAX
00452ecf  8d45f4                    LEA EAX,[EBP + -0xc]
00452ed2  64a300000000              MOV FS:[0x0],EAX
00452ed8  8bd9                      MOV EBX,ECX
00452eda  a17816c700                MOV EAX,[0x00c71678]
00452edf  6a00                      PUSH 0x0
00452ee1  6a00                      PUSH 0x0
00452ee3  6aff                      PUSH -0x1
00452ee5  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00452eeb  8d45dc                    LEA EAX,[EBP + -0x24]
00452eee  6aff                      PUSH -0x1
00452ef0  6a04                      PUSH 0x4
00452ef2  81c118120000              ADD ECX,0x1218
00452ef8  50                        PUSH EAX
00452ef9  e86280fcff                CALL 0x0041af60
00452efe  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00452f05  33c0                      XOR EAX,EAX
00452f07  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
00452f0a  85c9                      TEST ECX,ECX
00452f0c  0f847d010000              JZ 0x0045308f
00452f12  f30f109b70030000          MOVSS XMM3,dword ptr [EBX + 0x370]
00452f1a  8dbbc0030000              LEA EDI,[EBX + 0x3c0]
00452f20  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
00452f28  0f57c0                    XORPS XMM0,XMM0
00452f2b  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
00452f2e  f30f10a33c030000          MOVSS XMM4,dword ptr [EBX + 0x33c]
00452f36  f30f10ab40030000          MOVSS XMM5,dword ptr [EBX + 0x340]
00452f3e  f30f58e0                  ADDSS XMM4,XMM0
00452f42  f30f582dd0a8ba00          ADDSS XMM5,dword ptr [0x00baa8d0]
00452f4a  f30f1015f8acba00          MOVSS XMM2,dword ptr [0x00baacf8]
00452f52  f30f59db                  MULSS XMM3,XMM3
00452f56  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
00452f60  8b3482                    MOV ESI,dword ptr [EDX + EAX*0x4]
00452f63  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00452f6b  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
00452f73  f30f5cc4                  SUBSS XMM0,XMM4
00452f77  f30f5ccd                  SUBSS XMM1,XMM5
00452f7b  f30f59c0                  MULSS XMM0,XMM0
00452f7f  f30f59c9                  MULSS XMM1,XMM1
00452f83  f30f58c8                  ADDSS XMM1,XMM0
00452f87  0f2fd9                    COMISS XMM3,XMM1
00452f8a  7617                      JBE 0x00452fa3
00452f8c  83befc03000000            CMP dword ptr [ESI + 0x3fc],0x0
00452f93  750e                      JNZ 0x00452fa3
00452f95  0f2f9664030000            COMISS XMM2,dword ptr [ESI + 0x364]
00452f9c  7605                      JBE 0x00452fa3
00452f9e  833f00                    CMP dword ptr [EDI],0x0
00452fa1  740a                      JZ 0x00452fad
00452fa3  40                        INC EAX
00452fa4  3bc1                      CMP EAX,ECX
00452fa6  72b8                      JC 0x00452f60
00452fa8  e9e2000000                JMP 0x0045308f
00452fad  ff83c00b0000              INC dword ptr [EBX + 0xbc0]
00452fb3  8bce                      MOV ECX,ESI
00452fb5  e886392500                CALL 0x006a6940
00452fba  8b0f                      MOV ECX,dword ptr [EDI]
00452fbc  85c9                      TEST ECX,ECX
00452fbe  7412                      JZ 0x00452fd2
00452fc0  8d45ec                    LEA EAX,[EBP + -0x14]
00452fc3  897dec                    MOV dword ptr [EBP + -0x14],EDI
00452fc6  81c1cc030000              ADD ECX,0x3cc
00452fcc  50                        PUSH EAX
00452fcd  e83ec20700                CALL 0x004cf210
00452fd2  57                        PUSH EDI
00452fd3  8bce                      MOV ECX,ESI
00452fd5  8937                      MOV dword ptr [EDI],ESI
00452fd7  e814ad0700                CALL 0x004cdcf0
00452fdc  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00452fe2  81c6bc030000              ADD ESI,0x3bc
00452fe8  85c9                      TEST ECX,ECX
00452fea  7412                      JZ 0x00452ffe
00452fec  8d45ec                    LEA EAX,[EBP + -0x14]
00452fef  8975ec                    MOV dword ptr [EBP + -0x14],ESI
00452ff2  81c1cc030000              ADD ECX,0x3cc
00452ff8  50                        PUSH EAX
00452ff9  e812c20700                CALL 0x004cf210
00452ffe  56                        PUSH ESI
00452fff  8bcb                      MOV ECX,EBX
00453001  891e                      MOV dword ptr [ESI],EBX
00453003  e8e8ac0700                CALL 0x004cdcf0
00453008  6a00                      PUSH 0x0
0045300a  8d4b48                    LEA ECX,[EBX + 0x48]
0045300d  6884d5b100                PUSH 0xb1d584
00453012  e86973fbff                CALL 0x0040a380
00453017  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
0045301f  8b83640c0000              MOV EAX,dword ptr [EBX + 0xc64]
00453025  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
0045302a  83f812                    CMP EAX,0x12
0045302d  750a                      JNZ 0x00453039
0045302f  f30f1005cca4ba00          MOVSS XMM0,dword ptr [0x00baa4cc]
00453037  eb0d                      JMP 0x00453046
00453039  83f813                    CMP EAX,0x13
0045303c  750d                      JNZ 0x0045304b
0045303e  f30f100580a2ba00          MOVSS XMM0,dword ptr [0x00baa280]
00453046  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
0045304b  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00453051  8d4dec                    LEA ECX,[EBP + -0x14]
00453054  c745ec9d000000            MOV dword ptr [EBP + -0x14],0x9d
0045305b  e820375000                CALL 0x00956780
00453060  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
00453065  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045306b  83ec08                    SUB ESP,0x8
0045306e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00453076  f30f110424                MOVSS dword ptr [ESP],XMM0
0045307b  6a00                      PUSH 0x0
0045307d  6a00                      PUSH 0x0
0045307f  51                        PUSH ECX
00453080  c704240000803f            MOV dword ptr [ESP],0x3f800000
00453087  ff75ec                    PUSH dword ptr [EBP + -0x14]
0045308a  e8a1ab4d00                CALL 0x0092dc30
0045308f  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
00453093  7530                      JNZ 0x004530c5
00453095  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
0045309b  85d2                      TEST EDX,EDX
0045309d  7405                      JZ 0x004530a4
0045309f  83c230                    ADD EDX,0x30
004530a2  eb05                      JMP 0x004530a9
004530a4  ba18f6c700                MOV EDX,0xc7f618
004530a9  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004530ac  85c0                      TEST EAX,EAX
004530ae  7415                      JZ 0x004530c5
004530b0  8d48fc                    LEA ECX,[EAX + -0x4]
004530b3  8b01                      MOV EAX,dword ptr [ECX]
004530b5  2902                      SUB dword ptr [EDX],EAX
004530b7  51                        PUSH ECX
004530b8  835a0400                  SBB dword ptr [EDX + 0x4],0x0
004530bc  ff15dc87b100              CALL dword ptr [0x00b187dc]
004530c2  83c404                    ADD ESP,0x4
004530c5  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004530c8  64890d00000000            MOV dword ptr FS:[0x0],ECX
004530cf  59                        POP ECX
004530d0  5f                        POP EDI
004530d1  5e                        POP ESI
004530d2  5b                        POP EBX
004530d3  8be5                      MOV ESP,EBP
004530d5  5d                        POP EBP
004530d6  c3                        RET
