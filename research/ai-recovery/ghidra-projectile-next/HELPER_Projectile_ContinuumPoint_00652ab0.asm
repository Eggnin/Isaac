; J460 NPC AI 0x00652ab0 HELPER_Projectile_ContinuumPoint
; types=9
; identities=9.*
; entry=00652ab0
00652ab0  55                        PUSH EBP
00652ab1  8bec                      MOV EBP,ESP
00652ab3  f30f105d10                MOVSS XMM3,dword ptr [EBP + 0x10]
00652ab8  83ec0c                    SUB ESP,0xc
00652abb  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
00652ac1  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
00652ac7  f30f111c24                MOVSS dword ptr [ESP],XMM3
00652acc  ff750c                    PUSH dword ptr [EBP + 0xc]
00652acf  ff7508                    PUSH dword ptr [EBP + 0x8]
00652ad2  e809071c00                CALL 0x008131e0
00652ad7  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
00652ada  5d                        POP EBP
00652adb  c20c00                    RET 0xc
