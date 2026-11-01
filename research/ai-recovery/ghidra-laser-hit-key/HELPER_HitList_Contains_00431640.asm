; J460 NPC AI 0x00431640 HELPER_HitList_Contains
; types=7
; identities=7.*
; entry=00431640
00431640  55                        PUSH EBP
00431641  8bec                      MOV EBP,ESP
00431643  53                        PUSH EBX
00431644  56                        PUSH ESI
00431645  8bf1                      MOV ESI,ECX
00431647  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
0043164a  57                        PUSH EDI
0043164b  e8604c2800                CALL 0x006b62b0
00431650  8b5e04                    MOV EBX,dword ptr [ESI + 0x4]
00431653  8bf8                      MOV EDI,EAX
00431655  8b36                      MOV ESI,dword ptr [ESI]
00431657  8bcb                      MOV ECX,EBX
00431659  2bce                      SUB ECX,ESI
0043165b  c1f902                    SAR ECX,0x2
0043165e  85c9                      TEST ECX,ECX
00431660  7e1e                      JLE 0x00431680
00431662  8bd1                      MOV EDX,ECX
00431664  d1ea                      SHR EDX,0x1
00431666  393c96                    CMP dword ptr [ESI + EDX*0x4],EDI
00431669  8d0496                    LEA EAX,[ESI + EDX*0x4]
0043166c  730c                      JNC 0x0043167a
0043166e  8d7004                    LEA ESI,[EAX + 0x4]
00431671  83c8ff                    OR EAX,0xffffffff
00431674  2bc2                      SUB EAX,EDX
00431676  03c8                      ADD ECX,EAX
00431678  eb02                      JMP 0x0043167c
0043167a  8bca                      MOV ECX,EDX
0043167c  85c9                      TEST ECX,ECX
0043167e  7fe2                      JG 0x00431662
00431680  3bf3                      CMP ESI,EBX
00431682  740d                      JZ 0x00431691
00431684  393e                      CMP dword ptr [ESI],EDI
00431686  7509                      JNZ 0x00431691
00431688  5f                        POP EDI
00431689  5e                        POP ESI
0043168a  b001                      MOV AL,0x1
0043168c  5b                        POP EBX
0043168d  5d                        POP EBP
0043168e  c20400                    RET 0x4
00431691  5f                        POP EDI
00431692  5e                        POP ESI
00431693  32c0                      XOR AL,AL
00431695  5b                        POP EBX
00431696  5d                        POP EBP
00431697  c20400                    RET 0x4
