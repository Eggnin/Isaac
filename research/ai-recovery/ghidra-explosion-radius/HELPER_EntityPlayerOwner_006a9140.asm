; J460 NPC AI 0x006a9140 HELPER_EntityPlayerOwner
; types=4
; identities=4.*
; entry=006a9140
006a9140  55                        PUSH EBP
006a9141  8bec                      MOV EBP,ESP
006a9143  6aff                      PUSH -0x1
006a9145  681da4af00                PUSH 0xafa41d
006a914a  64a100000000              MOV EAX,FS:[0x0]
006a9150  50                        PUSH EAX
006a9151  83ec18                    SUB ESP,0x18
006a9154  56                        PUSH ESI
006a9155  57                        PUSH EDI
006a9156  a1b493bf00                MOV EAX,[0x00bf93b4]
006a915b  33c5                      XOR EAX,EBP
006a915d  50                        PUSH EAX
006a915e  8d45f4                    LEA EAX,[EBP + -0xc]
006a9161  64a300000000              MOV FS:[0x0],EAX
006a9167  8bf9                      MOV EDI,ECX
006a9169  6a18                      PUSH 0x18
006a916b  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
006a9172  c745ec00000000            MOV dword ptr [EBP + -0x14],0x0
006a9179  e842633600                CALL 0x00a0f4c0
006a917e  83c404                    ADD ESP,0x4
006a9181  8900                      MOV dword ptr [EAX],EAX
006a9183  894004                    MOV dword ptr [EAX + 0x4],EAX
006a9186  894008                    MOV dword ptr [EAX + 0x8],EAX
006a9189  66c7400c0101              MOV word ptr [EAX + 0xc],0x101
006a918f  8945e8                    MOV dword ptr [EBP + -0x18],EAX
006a9192  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
006a9199  8bc7                      MOV EAX,EDI
006a919b  8945f0                    MOV dword ptr [EBP + -0x10],EAX
006a919e  85ff                      TEST EDI,EDI
006a91a0  7450                      JZ 0x006a91f2
006a91a2  8bf7                      MOV ESI,EDI
006a91a4  83782801                  CMP dword ptr [EAX + 0x28],0x1
006a91a8  0f84be000000              JZ 0x006a926c
006a91ae  8d45f0                    LEA EAX,[EBP + -0x10]
006a91b1  50                        PUSH EAX
006a91b2  8d45dc                    LEA EAX,[EBP + -0x24]
006a91b5  50                        PUSH EAX
006a91b6  8d4de8                    LEA ECX,[EBP + -0x18]
006a91b9  e882d2d6ff                CALL 0x00416440
006a91be  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
006a91c1  80780d00                  CMP byte ptr [EAX + 0xd],0x0
006a91c5  750a                      JNZ 0x006a91d1
006a91c7  3b7010                    CMP ESI,dword ptr [EAX + 0x10]
006a91ca  7205                      JC 0x006a91d1
006a91cc  3b45e8                    CMP EAX,dword ptr [EBP + -0x18]
006a91cf  7521                      JNZ 0x006a91f2
006a91d1  8d45f0                    LEA EAX,[EBP + -0x10]
006a91d4  50                        PUSH EAX
006a91d5  8d4de8                    LEA ECX,[EBP + -0x18]
006a91d8  e843eb0000                CALL 0x006b7d20
006a91dd  c60001                    MOV byte ptr [EAX],0x1
006a91e0  8b45f0                    MOV EAX,dword ptr [EBP + -0x10]
006a91e3  8b80bc030000              MOV EAX,dword ptr [EAX + 0x3bc]
006a91e9  8bf0                      MOV ESI,EAX
006a91eb  8945f0                    MOV dword ptr [EBP + -0x10],EAX
006a91ee  85c0                      TEST EAX,EAX
006a91f0  75b2                      JNZ 0x006a91a4
006a91f2  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
006a91f5  8d45e8                    LEA EAX,[EBP + -0x18]
006a91f8  8bc8                      MOV ECX,EAX
006a91fa  ff7604                    PUSH dword ptr [ESI + 0x4]
006a91fd  50                        PUSH EAX
006a91fe  e8dd36d8ff                CALL 0x0042c8e0
006a9203  897604                    MOV dword ptr [ESI + 0x4],ESI
006a9206  8936                      MOV dword ptr [ESI],ESI
006a9208  897608                    MOV dword ptr [ESI + 0x8],ESI
006a920b  c745ec00000000            MOV dword ptr [EBP + -0x14],0x0
006a9212  897df0                    MOV dword ptr [EBP + -0x10],EDI
006a9215  85ff                      TEST EDI,EDI
006a9217  7451                      JZ 0x006a926a
006a9219  8bf7                      MOV ESI,EDI
006a921b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
006a9220  837f2801                  CMP dword ptr [EDI + 0x28],0x1
006a9224  7446                      JZ 0x006a926c
006a9226  8d45f0                    LEA EAX,[EBP + -0x10]
006a9229  50                        PUSH EAX
006a922a  8d45dc                    LEA EAX,[EBP + -0x24]
006a922d  50                        PUSH EAX
006a922e  8d4de8                    LEA ECX,[EBP + -0x18]
006a9231  e80ad2d6ff                CALL 0x00416440
006a9236  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
006a9239  80780d00                  CMP byte ptr [EAX + 0xd],0x0
006a923d  750a                      JNZ 0x006a9249
006a923f  3b7010                    CMP ESI,dword ptr [EAX + 0x10]
006a9242  7205                      JC 0x006a9249
006a9244  3b45e8                    CMP EAX,dword ptr [EBP + -0x18]
006a9247  7521                      JNZ 0x006a926a
006a9249  8d45f0                    LEA EAX,[EBP + -0x10]
006a924c  50                        PUSH EAX
006a924d  8d4de8                    LEA ECX,[EBP + -0x18]
006a9250  e8cbea0000                CALL 0x006b7d20
006a9255  c60001                    MOV byte ptr [EAX],0x1
006a9258  8b45f0                    MOV EAX,dword ptr [EBP + -0x10]
006a925b  8bb0c8030000              MOV ESI,dword ptr [EAX + 0x3c8]
006a9261  8bfe                      MOV EDI,ESI
006a9263  897df0                    MOV dword ptr [EBP + -0x10],EDI
006a9266  85ff                      TEST EDI,EDI
006a9268  75b6                      JNZ 0x006a9220
006a926a  33f6                      XOR ESI,ESI
006a926c  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
006a926f  ff7004                    PUSH dword ptr [EAX + 0x4]
006a9272  8d45e8                    LEA EAX,[EBP + -0x18]
006a9275  50                        PUSH EAX
006a9276  8bc8                      MOV ECX,EAX
006a9278  e86336d8ff                CALL 0x0042c8e0
006a927d  6a18                      PUSH 0x18
006a927f  ff75e8                    PUSH dword ptr [EBP + -0x18]
006a9282  e8d55e4400                CALL 0x00aef15c
006a9287  83c408                    ADD ESP,0x8
006a928a  8bc6                      MOV EAX,ESI
006a928c  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
006a928f  64890d00000000            MOV dword ptr FS:[0x0],ECX
006a9296  59                        POP ECX
006a9297  5f                        POP EDI
006a9298  5e                        POP ESI
006a9299  8be5                      MOV ESP,EBP
006a929b  5d                        POP EBP
006a929c  c3                        RET
