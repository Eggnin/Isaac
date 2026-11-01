; J460 NPC AI 0x004c5980 HELPER_004c5980_MatriarchProjectileTailCandidate
; types=413
; identities=matriarch.attack_helper
; entry=004c5980
004c5980  55                        PUSH EBP
004c5981  8bec                      MOV EBP,ESP
004c5983  56                        PUSH ESI
004c5984  57                        PUSH EDI
004c5985  8bfa                      MOV EDI,EDX
004c5987  8bf1                      MOV ESI,ECX
004c5989  e8d2952200                CALL 0x006eef60
004c598e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c5994  50                        PUSH EAX
004c5995  56                        PUSH ESI
004c5996  6a00                      PUSH 0x0
004c5998  ff750c                    PUSH dword ptr [EBP + 0xc]
004c599b  57                        PUSH EDI
004c599c  6a02                      PUSH 0x2
004c599e  68e8030000                PUSH 0x3e8
004c59a3  e87831f6ff                CALL 0x00428b20
004c59a8  8b5508                    MOV EDX,dword ptr [EBP + 0x8]
004c59ab  5f                        POP EDI
004c59ac  5e                        POP ESI
004c59ad  8b0a                      MOV ECX,dword ptr [EDX]
004c59af  89884c030000              MOV dword ptr [EAX + 0x34c],ECX
004c59b5  8b4a04                    MOV ECX,dword ptr [EDX + 0x4]
004c59b8  898850030000              MOV dword ptr [EAX + 0x350],ECX
004c59be  5d                        POP EBP
004c59bf  c3                        RET
