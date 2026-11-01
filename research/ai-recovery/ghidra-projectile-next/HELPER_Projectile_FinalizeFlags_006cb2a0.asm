; J460 NPC AI 0x006cb2a0 HELPER_Projectile_FinalizeFlags
; types=9
; identities=9.*
; entry=006cb2a0
006cb2a0  55                        PUSH EBP
006cb2a1  8bec                      MOV EBP,ESP
006cb2a3  83e4f8                    AND ESP,0xfffffff8
006cb2a6  80b9630c000000            CMP byte ptr [ECX + 0xc63],0x0
006cb2ad  7408                      JZ 0x006cb2b7
006cb2af  8b91640c0000              MOV EDX,dword ptr [ECX + 0xc64]
006cb2b5  eb03                      JMP 0x006cb2ba
006cb2b7  83caff                    OR EDX,0xffffffff
006cb2ba  f30f1089380c0000          MOVSS XMM1,dword ptr [ECX + 0xc38]
006cb2c2  51                        PUSH ECX
006cb2c3  ffb16c010000              PUSH dword ptr [ECX + 0x16c]
006cb2c9  ffb168010000              PUSH dword ptr [ECX + 0x168]
006cb2cf  8b4d08                    MOV ECX,dword ptr [EBP + 0x8]
006cb2d2  e839fdffff                CALL 0x006cb010
006cb2d7  83c40c                    ADD ESP,0xc
006cb2da  8be5                      MOV ESP,EBP
006cb2dc  5d                        POP EBP
006cb2dd  c20400                    RET 0x4
