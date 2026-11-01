; J460 NPC AI 0x006ac560 HELPER_Entity_DamageFilter
; types=
; identities=common_damage_filter
; entry=006ac560
006ac560  55                        PUSH EBP
006ac561  8bec                      MOV EBP,ESP
006ac563  83e4f8                    AND ESP,0xfffffff8
006ac566  51                        PUSH ECX
006ac567  a17816c700                MOV EAX,[0x00c71678]
006ac56c  53                        PUSH EBX
006ac56d  56                        PUSH ESI
006ac56e  57                        PUSH EDI
006ac56f  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006ac576  8bf1                      MOV ESI,ECX
006ac578  8b7d08                    MOV EDI,dword ptr [EBP + 0x8]
006ac57b  7c33                      JL 0x006ac5b0
006ac57d  85ff                      TEST EDI,EDI
006ac57f  7419                      JZ 0x006ac59a
006ac581  837f2801                  CMP dword ptr [EDI + 0x28],0x1
006ac585  7513                      JNZ 0x006ac59a
006ac587  57                        PUSH EDI
006ac588  e813caffff                CALL 0x006a8fa0
006ac58d  84c0                      TEST AL,AL
006ac58f  0f85a8000000              JNZ 0x006ac63d
006ac595  a17816c700                MOV EAX,[0x00c71678]
006ac59a  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006ac5a1  7c0d                      JL 0x006ac5b0
006ac5a3  837e2801                  CMP dword ptr [ESI + 0x28],0x1
006ac5a7  7507                      JNZ 0x006ac5b0
006ac5a9  bb01000000                MOV EBX,0x1
006ac5ae  eb11                      JMP 0x006ac5c1
006ac5b0  8b5e28                    MOV EBX,dword ptr [ESI + 0x28]
006ac5b3  8d43f6                    LEA EAX,[EBX + -0xa]
006ac5b6  3ddd030000                CMP EAX,0x3dd
006ac5bb  0f8787000000              JA 0x006ac648
006ac5c1  8b8688010000              MOV EAX,dword ptr [ESI + 0x188]
006ac5c7  83f801                    CMP EAX,0x1
006ac5ca  747c                      JZ 0x006ac648
006ac5cc  85c0                      TEST EAX,EAX
006ac5ce  7478                      JZ 0x006ac648
006ac5d0  80beb003000000            CMP byte ptr [ESI + 0x3b0],0x0
006ac5d7  756f                      JNZ 0x006ac648
006ac5d9  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
006ac5e0  7566                      JNZ 0x006ac648
006ac5e2  6a00                      PUSH 0x0
006ac5e4  6a10                      PUSH 0x10
006ac5e6  8bce                      MOV ECX,ESI
006ac5e8  e843aed6ff                CALL 0x00417430
006ac5ed  84c0                      TEST AL,AL
006ac5ef  7410                      JZ 0x006ac601
006ac5f1  81fb22030000              CMP EBX,0x322
006ac5f7  7408                      JZ 0x006ac601
006ac5f9  81fb62030000              CMP EBX,0x362
006ac5ff  7547                      JNZ 0x006ac648
006ac601  b201                      MOV DL,0x1
006ac603  85ff                      TEST EDI,EDI
006ac605  7443                      JZ 0x006ac64a
006ac607  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
006ac60d  2500000020                AND EAX,0x20000000
006ac612  83c800                    OR EAX,0x0
006ac615  7433                      JZ 0x006ac64a
006ac617  8bcf                      MOV ECX,EDI
006ac619  e8b2c3ffff                CALL 0x006a89d0
006ac61e  8bc8                      MOV ECX,EAX
006ac620  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
006ac626  2500000020                AND EAX,0x20000000
006ac62b  83c800                    OR EAX,0x0
006ac62e  750d                      JNZ 0x006ac63d
006ac630  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
006ac633  83f801                    CMP EAX,0x1
006ac636  7405                      JZ 0x006ac63d
006ac638  83f803                    CMP EAX,0x3
006ac63b  750d                      JNZ 0x006ac64a
006ac63d  32c0                      XOR AL,AL
006ac63f  5f                        POP EDI
006ac640  5e                        POP ESI
006ac641  5b                        POP EBX
006ac642  8be5                      MOV ESP,EBP
006ac644  5d                        POP EBP
006ac645  c20400                    RET 0x4
006ac648  32d2                      XOR DL,DL
006ac64a  5f                        POP EDI
006ac64b  5e                        POP ESI
006ac64c  8ac2                      MOV AL,DL
006ac64e  5b                        POP EBX
006ac64f  8be5                      MOV ESP,EBP
006ac651  5d                        POP EBP
006ac652  c20400                    RET 0x4
