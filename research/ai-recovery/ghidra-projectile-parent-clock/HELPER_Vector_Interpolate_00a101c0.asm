; J460 NPC AI 0x00a101c0 HELPER_Vector_Interpolate
; types=9
; identities=9.*
; entry=00a101c0
00a101c0  55                        PUSH EBP
00a101c1  8bec                      MOV EBP,ESP
00a101c3  807d0c00                  CMP byte ptr [EBP + 0xc],0x0
00a101c7  7410                      JZ 0x00a101d9
00a101c9  f30f5f1de49fba00          MAXSS XMM3,dword ptr [0x00ba9fe4]
00a101d1  f30f5d1d54a4ba00          MINSS XMM3,dword ptr [0x00baa454]
00a101d9  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
00a101dc  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00a101e0  f30f5c02                  SUBSS XMM0,dword ptr [EDX]
00a101e4  f30f59c3                  MULSS XMM0,XMM3
00a101e8  f30f5802                  ADDSS XMM0,dword ptr [EDX]
00a101ec  f30f1101                  MOVSS dword ptr [ECX],XMM0
00a101f0  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00a101f5  8bc1                      MOV EAX,ECX
00a101f7  f30f5c4204                SUBSS XMM0,dword ptr [EDX + 0x4]
00a101fc  f30f59c3                  MULSS XMM0,XMM3
00a10200  f30f584204                ADDSS XMM0,dword ptr [EDX + 0x4]
00a10205  f30f114104                MOVSS dword ptr [ECX + 0x4],XMM0
00a1020a  5d                        POP EBP
00a1020b  c3                        RET
