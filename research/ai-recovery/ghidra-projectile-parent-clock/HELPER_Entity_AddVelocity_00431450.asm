; J460 NPC AI 0x00431450 HELPER_Entity_AddVelocity
; types=9
; identities=9.*
; entry=00431450
00431450  55                        PUSH EBP
00431451  8bec                      MOV EBP,ESP
00431453  807d0c00                  CMP byte ptr [EBP + 0xc],0x0
00431457  740a                      JZ 0x00431463
00431459  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00431461  eb08                      JMP 0x0043146b
00431463  f30f10919c030000          MOVSS XMM2,dword ptr [ECX + 0x39c]
0043146b  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0043146e  0f28c2                    MOVAPS XMM0,XMM2
00431471  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00431476  f30f5900                  MULSS XMM0,dword ptr [EAX]
0043147a  f30f59ca                  MULSS XMM1,XMM2
0043147e  f30f588160030000          ADDSS XMM0,dword ptr [ECX + 0x360]
00431486  f30f588964030000          ADDSS XMM1,dword ptr [ECX + 0x364]
0043148e  f30f118160030000          MOVSS dword ptr [ECX + 0x360],XMM0
00431496  f30f118964030000          MOVSS dword ptr [ECX + 0x364],XMM1
0043149e  5d                        POP EBP
0043149f  c20800                    RET 0x8
