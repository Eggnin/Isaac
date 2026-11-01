; J460 NPC AI 0x0048ee30 AI_0048ee30
; types=295
; identities=295.0.0
; entry=0048ee30
0048ee30  55                        PUSH EBP
0048ee31  8bec                      MOV EBP,ESP
0048ee33  81ece4000000              SUB ESP,0xe4
0048ee39  a1b493bf00                MOV EAX,[0x00bf93b4]
0048ee3e  33c5                      XOR EAX,EBP
0048ee40  8945fc                    MOV dword ptr [EBP + -0x4],EAX
0048ee43  53                        PUSH EBX
0048ee44  56                        PUSH ESI
0048ee45  57                        PUSH EDI
0048ee46  8bf9                      MOV EDI,ECX
0048ee48  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0048ee4e  85c0                      TEST EAX,EAX
0048ee50  7531                      JNZ 0x0048ee83
0048ee52  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0048ee58  818f6801000001000900      OR dword ptr [EDI + 0x168],0x90001
0048ee62  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0048ee68  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048ee72  5f                        POP EDI
0048ee73  5e                        POP ESI
0048ee74  5b                        POP EBX
0048ee75  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0048ee78  33cd                      XOR ECX,EBP
0048ee7a  e8ac026600                CALL 0x00aef12b
0048ee7f  8be5                      MOV ESP,EBP
0048ee81  5d                        POP EBP
0048ee82  c3                        RET
0048ee83  83f803                    CMP EAX,0x3
0048ee86  0f85a5000000              JNZ 0x0048ef31
0048ee8c  51                        PUSH ECX
0048ee8d  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
0048ee93  c7042400000000            MOV dword ptr [ESP],0x0
0048ee9a  50                        PUSH EAX
0048ee9b  e8a0fd2200                CALL 0x006bec40
0048eea0  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0048eea8  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0048eeb0  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
0048eeb5  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
0048eeb9  f30f59c0                  MULSS XMM0,XMM0
0048eebd  f30f59c9                  MULSS XMM1,XMM1
0048eec1  f30f58c1                  ADDSS XMM0,XMM1
0048eec5  e8866bfaff                CALL 0x00435a50
0048eeca  f30f100d50a9ba00          MOVSS XMM1,dword ptr [0x00baa950]
0048eed2  0f2fc8                    COMISS XMM1,XMM0
0048eed5  7636                      JBE 0x0048ef0d
0048eed7  6a00                      PUSH 0x0
0048eed9  8d4f48                    LEA ECX,[EDI + 0x48]
0048eedc  682cd5b100                PUSH 0xb1d52c
0048eee1  e89ab4f7ff                CALL 0x0040a380
0048eee6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048eeea  7410                      JZ 0x0048eefc
0048eeec  f30f100d24a9ba00          MOVSS XMM1,dword ptr [0x00baa924]
0048eef4  8d4f78                    LEA ECX,[EDI + 0x78]
0048eef7  e8049ff7ff                CALL 0x00408e00
0048eefc  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0048ef06  b808000000                MOV EAX,0x8
0048ef0b  eb06                      JMP 0x0048ef13
0048ef0d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0048ef13  ff8710040000              INC dword ptr [EDI + 0x410]
0048ef19  81bf10040000b4000000      CMP dword ptr [EDI + 0x410],0xb4
0048ef23  7e0c                      JLE 0x0048ef31
0048ef25  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0048ef2f  eb12                      JMP 0x0048ef43
0048ef31  83f808                    CMP EAX,0x8
0048ef34  740d                      JZ 0x0048ef43
0048ef36  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0048ef3d  0f849f010000              JZ 0x0048f0e2
0048ef43  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0048ef46  85f6                      TEST ESI,ESI
0048ef48  744c                      JZ 0x0048ef96
0048ef4a  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0048ef4e  8bc6                      MOV EAX,ESI
0048ef50  7202                      JC 0x0048ef54
0048ef52  8b06                      MOV EAX,dword ptr [ESI]
0048ef54  b92cd5b100                MOV ECX,0xb1d52c
0048ef59  0f1f8000000000            NOP dword ptr [EAX]
0048ef60  8a10                      MOV DL,byte ptr [EAX]
0048ef62  3a11                      CMP DL,byte ptr [ECX]
0048ef64  751a                      JNZ 0x0048ef80
0048ef66  84d2                      TEST DL,DL
0048ef68  7412                      JZ 0x0048ef7c
0048ef6a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048ef6d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048ef70  750e                      JNZ 0x0048ef80
0048ef72  83c002                    ADD EAX,0x2
0048ef75  83c102                    ADD ECX,0x2
0048ef78  84d2                      TEST DL,DL
0048ef7a  75e4                      JNZ 0x0048ef60
0048ef7c  33c0                      XOR EAX,EAX
0048ef7e  eb05                      JMP 0x0048ef85
0048ef80  1bc0                      SBB EAX,EAX
0048ef82  83c801                    OR EAX,0x1
0048ef85  85c0                      TEST EAX,EAX
0048ef87  750d                      JNZ 0x0048ef96
0048ef89  384634                    CMP byte ptr [ESI + 0x34],AL
0048ef8c  742a                      JZ 0x0048efb8
0048ef8e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0048ef94  7522                      JNZ 0x0048efb8
0048ef96  6a01                      PUSH 0x1
0048ef98  682cd5b100                PUSH 0xb1d52c
0048ef9d  8d4f48                    LEA ECX,[EDI + 0x48]
0048efa0  e82bb6f7ff                CALL 0x0040a5d0
0048efa5  84c0                      TEST AL,AL
0048efa7  740f                      JZ 0x0048efb8
0048efa9  8d4f78                    LEA ECX,[EDI + 0x78]
0048efac  e8ffb1f7ff                CALL 0x0040a1b0
0048efb1  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0048efb8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048efbc  7416                      JZ 0x0048efd4
0048efbe  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048efc5  740d                      JZ 0x0048efd4
0048efc7  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0048efce  0f840e010000              JZ 0x0048f0e2
0048efd4  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0048efdc  8d4dd4                    LEA ECX,[EBP + -0x2c]
0048efdf  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0048efe7  8b07                      MOV EAX,dword ptr [EDI]
0048efe9  51                        PUSH ECX
0048efea  8bcf                      MOV ECX,EDI
0048efec  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
0048eff3  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
0048effa  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
0048f001  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0048f008  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
0048f00d  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0048f012  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
0048f017  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
0048f01c  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
0048f023  c745f800000000            MOV dword ptr [EBP + -0x8],0x0
0048f02a  ff5024                    CALL dword ptr [EAX + 0x24]
0048f02d  8d4dd0                    LEA ECX,[EBP + -0x30]
0048f030  e83b81f7ff                CALL 0x00407170
0048f035  50                        PUSH EAX
0048f036  6a00                      PUSH 0x0
0048f038  51                        PUSH ECX
0048f039  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048f040  8db73c030000              LEA ESI,[EDI + 0x33c]
0048f046  57                        PUSH EDI
0048f047  51                        PUSH ECX
0048f048  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048f04e  c704240000aa42            MOV dword ptr [ESP],0x42aa0000
0048f055  56                        PUSH ESI
0048f056  e8854b2700                CALL 0x00703be0
0048f05b  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
0048f062  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048f068  6a00                      PUSH 0x0
0048f06a  6a00                      PUSH 0x0
0048f06c  6a04                      PUSH 0x4
0048f06e  83ec10                    SUB ESP,0x10
0048f071  8bc4                      MOV EAX,ESP
0048f073  57                        PUSH EDI
0048f074  6a00                      PUSH 0x0
0048f076  83ec08                    SUB ESP,0x8
0048f079  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0048f07c  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0048f084  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
0048f08a  c7042400002042            MOV dword ptr [ESP],0x42200000
0048f091  56                        PUSH ESI
0048f092  e809022700                CALL 0x006ff2a0
0048f097  8d8d28ffffff              LEA ECX,[EBP + 0xffffff28]
0048f09d  e88efefaff                CALL 0x0043ef30
0048f0a2  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0048f0a5  8bcf                      MOV ECX,EDI
0048f0a7  814d8080000000            OR dword ptr [EBP + -0x80],0x80
0048f0ae  894584                    MOV dword ptr [EBP + -0x7c],EAX
0048f0b1  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
0048f0b7  50                        PUSH EAX
0048f0b8  6a08                      PUSH 0x8
0048f0ba  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
0048f0c0  c745bc05000000            MOV dword ptr [EBP + -0x44],0x5
0048f0c7  50                        PUSH EAX
0048f0c8  56                        PUSH ESI
0048f0c9  c78520ffffff00002041      MOV dword ptr [EBP + 0xffffff20],0x41200000
0048f0d3  c78524ffffff00000000      MOV dword ptr [EBP + 0xffffff24],0x0
0048f0dd  e8fec12300                CALL 0x006cb2e0
0048f0e2  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0048f0ea  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0048f0f2  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0048f0f5  33cd                      XOR ECX,EBP
0048f0f7  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0048f0ff  5f                        POP EDI
0048f100  5e                        POP ESI
0048f101  5b                        POP EBX
0048f102  e824006600                CALL 0x00aef12b
0048f107  8be5                      MOV ESP,EBP
0048f109  5d                        POP EBP
0048f10a  c3                        RET
