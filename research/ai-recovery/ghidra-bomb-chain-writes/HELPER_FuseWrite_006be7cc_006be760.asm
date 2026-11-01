; J460 NPC AI 0x006be7cc HELPER_FuseWrite_006be7cc
; types=4
; identities=4.*
; entry=006be760
006be760  55                        PUSH EBP
006be761  8bec                      MOV EBP,ESP
006be763  83ec2c                    SUB ESP,0x2c
006be766  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
006be76e  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006be776  56                        PUSH ESI
006be777  8bf1                      MOV ESI,ECX
006be779  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
006be780  8d4dd8                    LEA ECX,[EBP + -0x28]
006be783  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
006be78a  51                        PUSH ECX
006be78b  8bce                      MOV ECX,ESI
006be78d  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
006be794  8b06                      MOV EAX,dword ptr [ESI]
006be796  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
006be79d  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
006be7a2  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
006be7a7  f30f114df0                MOVSS dword ptr [EBP + -0x10],XMM1
006be7ac  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
006be7b1  c745f800000000            MOV dword ptr [EBP + -0x8],0x0
006be7b8  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
006be7bf  ff5024                    CALL dword ptr [EAX + 0x24]
006be7c2  c786640b000011000000      MOV dword ptr [ESI + 0xb64],0x11
006be7cc  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
006be7d6  5e                        POP ESI
006be7d7  8be5                      MOV ESP,EBP
006be7d9  5d                        POP EBP
006be7da  c3                        RET
