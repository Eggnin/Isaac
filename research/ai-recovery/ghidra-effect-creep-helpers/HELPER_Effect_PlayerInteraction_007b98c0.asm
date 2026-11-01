; J460 NPC AI 0x007b98c0 HELPER_Effect_PlayerInteraction
; types=1000
; identities=1000.*
; entry=007b98c0
007b98c0  55                        PUSH EBP
007b98c1  8bec                      MOV EBP,ESP
007b98c3  56                        PUSH ESI
007b98c4  6aff                      PUSH -0x1
007b98c6  8bf1                      MOV ESI,ECX
007b98c8  e873000000                CALL 0x007b9940
007b98cd  84c0                      TEST AL,AL
007b98cf  7505                      JNZ 0x007b98d6
007b98d1  38451c                    CMP byte ptr [EBP + 0x1c],AL
007b98d4  7464                      JZ 0x007b993a
007b98d6  80be7015000000            CMP byte ptr [ESI + 0x1570],0x0
007b98dd  755b                      JNZ 0x007b993a
007b98df  6a00                      PUSH 0x0
007b98e1  8bce                      MOV ECX,ESI
007b98e3  e858000000                CALL 0x007b9940
007b98e8  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
007b98ed  84c0                      TEST AL,AL
007b98ef  7427                      JZ 0x007b9918
007b98f1  f30f118674180000          MOVSS dword ptr [ESI + 0x1874],XMM0
007b98f9  f30f10450c                MOVSS XMM0,dword ptr [EBP + 0xc]
007b98fe  f30f118678180000          MOVSS dword ptr [ESI + 0x1878],XMM0
007b9906  f30f104510                MOVSS XMM0,dword ptr [EBP + 0x10]
007b990b  f30f11867c180000          MOVSS dword ptr [ESI + 0x187c],XMM0
007b9913  5e                        POP ESI
007b9914  5d                        POP EBP
007b9915  c21800                    RET 0x18
007b9918  f30f118648180000          MOVSS dword ptr [ESI + 0x1848],XMM0
007b9920  f30f10450c                MOVSS XMM0,dword ptr [EBP + 0xc]
007b9925  f30f11864c180000          MOVSS dword ptr [ESI + 0x184c],XMM0
007b992d  f30f104510                MOVSS XMM0,dword ptr [EBP + 0x10]
007b9932  f30f118650180000          MOVSS dword ptr [ESI + 0x1850],XMM0
007b993a  5e                        POP ESI
007b993b  5d                        POP EBP
007b993c  c21800                    RET 0x18
