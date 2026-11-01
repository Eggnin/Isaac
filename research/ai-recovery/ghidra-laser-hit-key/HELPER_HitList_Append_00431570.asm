; J460 NPC AI 0x00431570 HELPER_HitList_Append
; types=7
; identities=7.*
; entry=00431570
00431570  55                        PUSH EBP
00431571  8bec                      MOV EBP,ESP
00431573  51                        PUSH ECX
00431574  53                        PUSH EBX
00431575  8bd9                      MOV EBX,ECX
00431577  56                        PUSH ESI
00431578  57                        PUSH EDI
00431579  895dfc                    MOV dword ptr [EBP + -0x4],EBX
0043157c  8b7b04                    MOV EDI,dword ptr [EBX + 0x4]
0043157f  8bd7                      MOV EDX,EDI
00431581  8b33                      MOV ESI,dword ptr [EBX]
00431583  2bd6                      SUB EDX,ESI
00431585  c1fa02                    SAR EDX,0x2
00431588  85d2                      TEST EDX,EDX
0043158a  7e25                      JLE 0x004315b1
0043158c  8b5d08                    MOV EBX,dword ptr [EBP + 0x8]
0043158f  90                        NOP
00431590  8bca                      MOV ECX,EDX
00431592  d1e9                      SHR ECX,0x1
00431594  391c8e                    CMP dword ptr [ESI + ECX*0x4],EBX
00431597  8d048e                    LEA EAX,[ESI + ECX*0x4]
0043159a  730c                      JNC 0x004315a8
0043159c  8d7004                    LEA ESI,[EAX + 0x4]
0043159f  83c8ff                    OR EAX,0xffffffff
004315a2  2bc1                      SUB EAX,ECX
004315a4  03d0                      ADD EDX,EAX
004315a6  eb02                      JMP 0x004315aa
004315a8  8bd1                      MOV EDX,ECX
004315aa  85d2                      TEST EDX,EDX
004315ac  7fe2                      JG 0x00431590
004315ae  8b5dfc                    MOV EBX,dword ptr [EBP + -0x4]
004315b1  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
004315b4  3bf7                      CMP ESI,EDI
004315b6  7404                      JZ 0x004315bc
004315b8  3906                      CMP dword ptr [ESI],EAX
004315ba  764f                      JBE 0x0043160b
004315bc  3b7b08                    CMP EDI,dword ptr [EBX + 0x8]
004315bf  743e                      JZ 0x004315ff
004315c1  3bf7                      CMP ESI,EDI
004315c3  750f                      JNZ 0x004315d4
004315c5  8907                      MOV dword ptr [EDI],EAX
004315c7  83430404                  ADD dword ptr [EBX + 0x4],0x4
004315cb  5f                        POP EDI
004315cc  5e                        POP ESI
004315cd  5b                        POP EBX
004315ce  8be5                      MOV ESP,EBP
004315d0  5d                        POP EBP
004315d1  c20400                    RET 0x4
004315d4  8b47fc                    MOV EAX,dword ptr [EDI + -0x4]
004315d7  8907                      MOV dword ptr [EDI],EAX
004315d9  8bc7                      MOV EAX,EDI
004315db  83430404                  ADD dword ptr [EBX + 0x4],0x4
004315df  2bc6                      SUB EAX,ESI
004315e1  83e804                    SUB EAX,0x4
004315e4  50                        PUSH EAX
004315e5  2bf8                      SUB EDI,EAX
004315e7  56                        PUSH ESI
004315e8  57                        PUSH EDI
004315e9  e8cff26b00                CALL 0x00af08bd
004315ee  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
004315f1  83c40c                    ADD ESP,0xc
004315f4  8906                      MOV dword ptr [ESI],EAX
004315f6  5f                        POP EDI
004315f7  5e                        POP ESI
004315f8  5b                        POP EBX
004315f9  8be5                      MOV ESP,EBP
004315fb  5d                        POP EBP
004315fc  c20400                    RET 0x4
004315ff  8d4508                    LEA EAX,[EBP + 0x8]
00431602  8bcb                      MOV ECX,EBX
00431604  50                        PUSH EAX
00431605  56                        PUSH ESI
00431606  e815b3ffff                CALL 0x0042c920
0043160b  5f                        POP EDI
0043160c  5e                        POP ESI
0043160d  5b                        POP EBX
0043160e  8be5                      MOV ESP,EBP
00431610  5d                        POP EBP
00431611  c20400                    RET 0x4
