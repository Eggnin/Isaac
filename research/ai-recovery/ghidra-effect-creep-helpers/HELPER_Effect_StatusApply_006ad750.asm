; J460 NPC AI 0x006ad750 HELPER_Effect_StatusApply
; types=1000
; identities=1000.*
; entry=006ad750
006ad750  55                        PUSH EBP
006ad751  8bec                      MOV EBP,ESP
006ad753  83e4f8                    AND ESP,0xfffffff8
006ad756  51                        PUSH ECX
006ad757  53                        PUSH EBX
006ad758  56                        PUSH ESI
006ad759  57                        PUSH EDI
006ad75a  8b7d08                    MOV EDI,dword ptr [EBP + 0x8]
006ad75d  8bf1                      MOV ESI,ECX
006ad75f  57                        PUSH EDI
006ad760  e8abf5ffff                CALL 0x006acd10
006ad765  84c0                      TEST AL,AL
006ad767  0f85f0000000              JNZ 0x006ad85d
006ad76d  57                        PUSH EDI
006ad76e  ff750c                    PUSH dword ptr [EBP + 0xc]
006ad771  8bce                      MOV ECX,ESI
006ad773  e8d8fbffff                CALL 0x006ad350
006ad778  8bce                      MOV ECX,ESI
006ad77a  8bd0                      MOV EDX,EAX
006ad77c  e82fb6ffff                CALL 0x006a8db0
006ad781  84c0                      TEST AL,AL
006ad783  7417                      JZ 0x006ad79c
006ad785  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
006ad78b  85c9                      TEST ECX,ECX
006ad78d  740d                      JZ 0x006ad79c
006ad78f  90                        NOP
006ad790  8bf1                      MOV ESI,ECX
006ad792  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
006ad798  85c9                      TEST ECX,ECX
006ad79a  75f4                      JNZ 0x006ad790
006ad79c  85d2                      TEST EDX,EDX
006ad79e  7e75                      JLE 0x006ad815
006ad7a0  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
006ad7a6  8bc1                      MOV EAX,ECX
006ad7a8  8bbe6c010000              MOV EDI,dword ptr [ESI + 0x16c]
006ad7ae  83e001                    AND EAX,0x1
006ad7b1  83c800                    OR EAX,0x0
006ad7b4  0f858f000000              JNZ 0x006ad849
006ad7ba  8a5d40                    MOV BL,byte ptr [EBP + 0x40]
006ad7bd  398638020000              CMP dword ptr [ESI + 0x238],EAX
006ad7c3  7e08                      JLE 0x006ad7cd
006ad7c5  84db                      TEST BL,BL
006ad7c7  0f847c000000              JZ 0x006ad849
006ad7cd  8b06                      MOV EAX,dword ptr [ESI]
006ad7cf  81c980000000              OR ECX,0x80
006ad7d5  019620020000              ADD dword ptr [ESI + 0x220],EDX
006ad7db  6a01                      PUSH 0x1
006ad7dd  6a00                      PUSH 0x0
006ad7df  68ff000000                PUSH 0xff
006ad7e4  898e68010000              MOV dword ptr [ESI + 0x168],ECX
006ad7ea  8d4d14                    LEA ECX,[EBP + 0x14]
006ad7ed  52                        PUSH EDX
006ad7ee  51                        PUSH ECX
006ad7ef  8bce                      MOV ECX,ESI
006ad7f1  89be6c010000              MOV dword ptr [ESI + 0x16c],EDI
006ad7f7  ff503c                    CALL dword ptr [EAX + 0x3c]
006ad7fa  84db                      TEST BL,BL
006ad7fc  754b                      JNZ 0x006ad849
006ad7fe  8bce                      MOV ECX,ESI
006ad800  e89b0f0000                CALL 0x006ae7a0
006ad805  84c0                      TEST AL,AL
006ad807  7440                      JZ 0x006ad849
006ad809  c78638020000f0000000      MOV dword ptr [ESI + 0x238],0xf0
006ad813  eb34                      JMP 0x006ad849
006ad815  7932                      JNS 0x006ad849
006ad817  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
006ad81d  8bc1                      MOV EAX,ECX
006ad81f  8b966c010000              MOV EDX,dword ptr [ESI + 0x16c]
006ad825  83e001                    AND EAX,0x1
006ad828  83c800                    OR EAX,0x0
006ad82b  751c                      JNZ 0x006ad849
006ad82d  81c980000000              OR ECX,0x80
006ad833  c7862002000002000000      MOV dword ptr [ESI + 0x220],0x2
006ad83d  898e68010000              MOV dword ptr [ESI + 0x168],ECX
006ad843  89966c010000              MOV dword ptr [ESI + 0x16c],EDX
006ad849  f30f104510                MOVSS XMM0,dword ptr [EBP + 0x10]
006ad84e  8bce                      MOV ECX,ESI
006ad850  f30f1186ac030000          MOVSS dword ptr [ESI + 0x3ac],XMM0
006ad858  e8c3b1ffff                CALL 0x006a8a20
006ad85d  5f                        POP EDI
006ad85e  5e                        POP ESI
006ad85f  5b                        POP EBX
006ad860  8be5                      MOV ESP,EBP
006ad862  5d                        POP EBP
006ad863  c23c00                    RET 0x3c
