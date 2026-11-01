; J460 NPC AI 0x0096f310 HELPER_0096f310_EntityAttackObjectCandidate
; types=
; identities=entity_spawn
; entry=0096f310
0096f310  55                        PUSH EBP
0096f311  8bec                      MOV EBP,ESP
0096f313  83e4f8                    AND ESP,0xfffffff8
0096f316  51                        PUSH ECX
0096f317  53                        PUSH EBX
0096f318  56                        PUSH ESI
0096f319  57                        PUSH EDI
0096f31a  e841fcd7ff                CALL 0x006eef60
0096f31f  0fb64d20                  MOVZX ECX,byte ptr [EBP + 0x20]
0096f323  8b5d1c                    MOV EBX,dword ptr [EBP + 0x1c]
0096f326  51                        PUSH ECX
0096f327  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0096f32d  50                        PUSH EAX
0096f32e  6a00                      PUSH 0x0
0096f330  53                        PUSH EBX
0096f331  6840b6c700                PUSH 0xc7b640
0096f336  ff750c                    PUSH dword ptr [EBP + 0xc]
0096f339  ff7508                    PUSH dword ptr [EBP + 0x8]
0096f33c  6a07                      PUSH 0x7
0096f33e  e8cdf0d8ff                CALL 0x006fe410
0096f343  8bf0                      MOV ESI,EAX
0096f345  85f6                      TEST ESI,ESI
0096f347  7507                      JNZ 0x0096f350
0096f349  5f                        POP EDI
0096f34a  5e                        POP ESI
0096f34b  5b                        POP EBX
0096f34c  8be5                      MOV ESP,EBP
0096f34e  5d                        POP EBP
0096f34f  c3                        RET
0096f350  8b4d18                    MOV ECX,dword ptr [EBP + 0x18]
0096f353  f30f104510                MOVSS XMM0,dword ptr [EBP + 0x10]
0096f358  8b4514                    MOV EAX,dword ptr [EBP + 0x14]
0096f35b  f30f11861c040000          MOVSS dword ptr [ESI + 0x41c],XMM0
0096f363  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
0096f36b  898658040000              MOV dword ptr [ESI + 0x458],EAX
0096f371  8b01                      MOV EAX,dword ptr [ECX]
0096f373  89864c030000              MOV dword ptr [ESI + 0x34c],EAX
0096f379  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
0096f37c  898650030000              MOV dword ptr [ESI + 0x350],EAX
0096f382  85db                      TEST EBX,EBX
0096f384  0f848c000000              JZ 0x0096f416
0096f38a  8b8ec8030000              MOV ECX,dword ptr [ESI + 0x3c8]
0096f390  8dbec8030000              LEA EDI,[ESI + 0x3c8]
0096f396  85c9                      TEST ECX,ECX
0096f398  7414                      JZ 0x0096f3ae
0096f39a  8d44240c                  LEA EAX,[ESP + 0xc]
0096f39e  897c240c                  MOV dword ptr [ESP + 0xc],EDI
0096f3a2  50                        PUSH EAX
0096f3a3  81c1cc030000              ADD ECX,0x3cc
0096f3a9  e862feb5ff                CALL 0x004cf210
0096f3ae  57                        PUSH EDI
0096f3af  8bcb                      MOV ECX,EBX
0096f3b1  891f                      MOV dword ptr [EDI],EBX
0096f3b3  e838e9b5ff                CALL 0x004cdcf0
0096f3b8  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0096f3be  8dbebc030000              LEA EDI,[ESI + 0x3bc]
0096f3c4  85c9                      TEST ECX,ECX
0096f3c6  7414                      JZ 0x0096f3dc
0096f3c8  8d44240c                  LEA EAX,[ESP + 0xc]
0096f3cc  897c240c                  MOV dword ptr [ESP + 0xc],EDI
0096f3d0  50                        PUSH EAX
0096f3d1  81c1cc030000              ADD ECX,0x3cc
0096f3d7  e834feb5ff                CALL 0x004cf210
0096f3dc  57                        PUSH EDI
0096f3dd  8bcb                      MOV ECX,EBX
0096f3df  891f                      MOV dword ptr [EDI],EBX
0096f3e1  e80ae9b5ff                CALL 0x004cdcf0
0096f3e6  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0096f3ee  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0096f3f6  f30f5c8b3c030000          SUBSS XMM1,dword ptr [EBX + 0x33c]
0096f3fe  f30f5c8340030000          SUBSS XMM0,dword ptr [EBX + 0x340]
0096f406  f30f118e10040000          MOVSS dword ptr [ESI + 0x410],XMM1
0096f40e  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
0096f416  5f                        POP EDI
0096f417  8bc6                      MOV EAX,ESI
0096f419  5e                        POP ESI
0096f41a  5b                        POP EBX
0096f41b  8be5                      MOV ESP,EBP
0096f41d  5d                        POP EBP
0096f41e  c3                        RET
