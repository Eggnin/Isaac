; J460 NPC AI 0x007dba30 HELPER_Player_SourceImmunity
; types=1
; identities=1.*
; entry=007dba30
007dba30  55                        PUSH EBP
007dba31  8bec                      MOV EBP,ESP
007dba33  53                        PUSH EBX
007dba34  56                        PUSH ESI
007dba35  6a00                      PUSH 0x0
007dba37  6878020000                PUSH 0x278
007dba3c  8bf1                      MOV ESI,ECX
007dba3e  32db                      XOR BL,BL
007dba40  e89b4cf9ff                CALL 0x007706e0
007dba45  84c0                      TEST AL,AL
007dba47  7514                      JNZ 0x007dba5d
007dba49  6878020000                PUSH 0x278
007dba4e  8d8e08150000              LEA ECX,[ESI + 0x1508]
007dba54  e8974b1500                CALL 0x009305f0
007dba59  84c0                      TEST AL,AL
007dba5b  7430                      JZ 0x007dba8d
007dba5d  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
007dba60  83f821                    CMP EAX,0x21
007dba63  7f3c                      JG 0x007dbaa1
007dba65  7470                      JZ 0x007dbad7
007dba67  85c0                      TEST EAX,EAX
007dba69  742a                      JZ 0x007dba95
007dba6b  83f809                    CMP EAX,0x9
007dba6e  750a                      JNZ 0x007dba7a
007dba70  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
007dba73  83e802                    SUB EAX,0x2
007dba76  7502                      JNZ 0x007dba7a
007dba78  b301                      MOV BL,0x1
007dba7a  80bed426000000            CMP byte ptr [ESI + 0x26d4],0x0
007dba81  7540                      JNZ 0x007dbac3
007dba83  84db                      TEST BL,BL
007dba85  753c                      JNZ 0x007dbac3
007dba87  889ed4260000              MOV byte ptr [ESI + 0x26d4],BL
007dba8d  32c0                      XOR AL,AL
007dba8f  5e                        POP ESI
007dba90  5b                        POP EBX
007dba91  5d                        POP EBP
007dba92  c22800                    RET 0x28
007dba95  817d0c10270000            CMP dword ptr [EBP + 0xc],0x2710
007dba9c  0f94c3                    SETZ BL
007dba9f  ebd9                      JMP 0x007dba7a
007dbaa1  3de8030000                CMP EAX,0x3e8
007dbaa6  75d2                      JNZ 0x007dba7a
007dbaa8  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
007dbaab  83c0ea                    ADD EAX,-0x16
007dbaae  3db6000000                CMP EAX,0xb6
007dbab3  77c5                      JA 0x007dba7a
007dbab5  0fb680e8ba7d00            MOVZX EAX,byte ptr [EAX + 0x7dbae8]
007dbabc  ff2485e0ba7d00            JMP dword ptr [EAX*0x4 + 0x7dbae0]
007dbac3  c686d426000001            MOV byte ptr [ESI + 0x26d4],0x1
007dbaca  84db                      TEST BL,BL
007dbacc  74bf                      JZ 0x007dba8d
007dbace  83bed02600001e            CMP dword ptr [ESI + 0x26d0],0x1e
007dbad5  7db6                      JGE 0x007dba8d
007dbad7  5e                        POP ESI
007dbad8  b001                      MOV AL,0x1
007dbada  5b                        POP EBX
007dbadb  5d                        POP EBP
007dbadc  c22800                    RET 0x28
