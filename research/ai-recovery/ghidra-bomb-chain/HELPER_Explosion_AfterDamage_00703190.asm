; J460 NPC AI 0x00703190 HELPER_Explosion_AfterDamage
; types=4
; identities=4.*
; entry=00703190
00703190  55                        PUSH EBP
00703191  8bec                      MOV EBP,ESP
00703193  6aff                      PUSH -0x1
00703195  6820c3af00                PUSH 0xafc320
0070319a  64a100000000              MOV EAX,FS:[0x0]
007031a0  50                        PUSH EAX
007031a1  83ec7c                    SUB ESP,0x7c
007031a4  53                        PUSH EBX
007031a5  56                        PUSH ESI
007031a6  57                        PUSH EDI
007031a7  a1b493bf00                MOV EAX,[0x00bf93b4]
007031ac  33c5                      XOR EAX,EBP
007031ae  50                        PUSH EAX
007031af  8d45f4                    LEA EAX,[EBP + -0xc]
007031b2  64a300000000              MOV FS:[0x0],EAX
007031b8  f30f1155f0                MOVSS dword ptr [EBP + -0x10],XMM2
007031bd  8bf9                      MOV EDI,ECX
007031bf  e89cbdfeff                CALL 0x006eef60
007031c4  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
007031c7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
007031cd  50                        PUSH EAX
007031ce  6a00                      PUSH 0x0
007031d0  ff750c                    PUSH dword ptr [EBP + 0xc]
007031d3  6840b6c700                PUSH 0xc7b640
007031d8  56                        PUSH ESI
007031d9  6a12                      PUSH 0x12
007031db  68e8030000                PUSH 0x3e8
007031e0  e83b59d2ff                CALL 0x00428b20
007031e5  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
007031ea  8bd8                      MOV EBX,EAX
007031ec  0f28c8                    MOVAPS XMM1,XMM0
007031ef  8bcb                      MOV ECX,EBX
007031f1  f30f590d3c79c300          MULSS XMM1,dword ptr [0x00c3793c]
007031f9  f30f59054079c300          MULSS XMM0,dword ptr [0x00c37940]
00703201  8b03                      MOV EAX,dword ptr [EBX]
00703203  f30f118be4000000          MOVSS dword ptr [EBX + 0xe4],XMM1
0070320b  f30f1183e8000000          MOVSS dword ptr [EBX + 0xe8],XMM0
00703213  ff500c                    CALL dword ptr [EAX + 0xc]
00703216  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
0070321c  e85ffedcff                CALL 0x004d3080
00703221  f30f1055f0                MOVSS XMM2,dword ptr [EBP + -0x10]
00703226  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0070322d  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00703231  8bbf00830100              MOV EDI,dword ptr [EDI + 0x18300]
00703237  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
0070323c  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00703241  c78578ffffffe8030000      MOV dword ptr [EBP + 0xffffff78],0x3e8
0070324b  c7857cffffff12000000      MOV dword ptr [EBP + 0xffffff7c],0x12
00703255  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0070325a  8b83ec030000              MOV EAX,dword ptr [EBX + 0x3ec]
00703260  8945ac                    MOV dword ptr [EBP + -0x54],EAX
00703263  b889888888                MOV EAX,0x88888889
00703268  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
0070326d  8b7704                    MOV ESI,dword ptr [EDI + 0x4]
00703270  8b8e8c000000              MOV ECX,dword ptr [ESI + 0x8c]
00703276  2b8e88000000              SUB ECX,dword ptr [ESI + 0x88]
0070327c  f7e9                      IMUL ECX
0070327e  03d1                      ADD EDX,ECX
00703280  c1fa06                    SAR EDX,0x6
00703283  8bc2                      MOV EAX,EDX
00703285  c1e81f                    SHR EAX,0x1f
00703288  40                        INC EAX
00703289  03c2                      ADD EAX,EDX
0070328b  3d80000000                CMP EAX,0x80
00703290  763e                      JBE 0x007032d0
00703292  8b4f04                    MOV ECX,dword ptr [EDI + 0x4]
00703295  8d450c                    LEA EAX,[EBP + 0xc]
00703298  81c188000000              ADD ECX,0x88
0070329e  ff31                      PUSH dword ptr [ECX]
007032a0  50                        PUSH EAX
007032a1  e8da3cddff                CALL 0x004d6f80
007032a6  8b7704                    MOV ESI,dword ptr [EDI + 0x4]
007032a9  b889888888                MOV EAX,0x88888889
007032ae  8b8e8c000000              MOV ECX,dword ptr [ESI + 0x8c]
007032b4  2b8e88000000              SUB ECX,dword ptr [ESI + 0x88]
007032ba  f7e9                      IMUL ECX
007032bc  03d1                      ADD EDX,ECX
007032be  c1fa06                    SAR EDX,0x6
007032c1  8bc2                      MOV EAX,EDX
007032c3  c1e81f                    SHR EAX,0x1f
007032c6  40                        INC EAX
007032c7  03c2                      ADD EAX,EDX
007032c9  3d80000000                CMP EAX,0x80
007032ce  77c2                      JA 0x00703292
007032d0  8b868c000000              MOV EAX,dword ptr [ESI + 0x8c]
007032d6  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
007032dc  51                        PUSH ECX
007032dd  3b8690000000              CMP EAX,dword ptr [ESI + 0x90]
007032e3  7410                      JZ 0x007032f5
007032e5  8bc8                      MOV ECX,EAX
007032e7  e844fedcff                CALL 0x004d3130
007032ec  83868c00000078            ADD dword ptr [ESI + 0x8c],0x78
007032f3  eb0c                      JMP 0x00703301
007032f5  50                        PUSH EAX
007032f6  8d8e88000000              LEA ECX,[ESI + 0x88]
007032fc  e82f42ddff                CALL 0x004d7530
00703301  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
00703307  e8d43bddff                CALL 0x004d6ee0
0070330c  8bc3                      MOV EAX,EBX
0070330e  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00703311  64890d00000000            MOV dword ptr FS:[0x0],ECX
00703318  59                        POP ECX
00703319  5f                        POP EDI
0070331a  5e                        POP ESI
0070331b  5b                        POP EBX
0070331c  8be5                      MOV ESP,EBP
0070331e  5d                        POP EBP
0070331f  c20800                    RET 0x8
