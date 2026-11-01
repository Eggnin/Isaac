; J460 NPC AI 0x006ac710 HELPER_EntityGate
; types=1000
; identities=1000.141.*
; entry=006ac710
006ac710  55                        PUSH EBP
006ac711  8bec                      MOV EBP,ESP
006ac713  83e4f8                    AND ESP,0xfffffff8
006ac716  51                        PUSH ECX
006ac717  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
006ac71d  2500400000                AND EAX,0x4000
006ac722  83c800                    OR EAX,0x0
006ac725  56                        PUSH ESI
006ac726  752a                      JNZ 0x006ac752
006ac728  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006ac72e  8bce                      MOV ECX,ESI
006ac730  e81b0c0500                CALL 0x006fd350
006ac735  84c0                      TEST AL,AL
006ac737  7519                      JNZ 0x006ac752
006ac739  8b86f8640200              MOV EAX,dword ptr [ESI + 0x264f8]
006ac73f  03450c                    ADD EAX,dword ptr [EBP + 0xc]
006ac742  99                        CDQ
006ac743  f77d08                    IDIV dword ptr [EBP + 0x8]
006ac746  85d2                      TEST EDX,EDX
006ac748  0f94c0                    SETZ AL
006ac74b  5e                        POP ESI
006ac74c  8be5                      MOV ESP,EBP
006ac74e  5d                        POP EBP
006ac74f  c20800                    RET 0x8
006ac752  32c0                      XOR AL,AL
006ac754  5e                        POP ESI
006ac755  8be5                      MOV ESP,EBP
006ac757  5d                        POP EBP
006ac758  c20800                    RET 0x8
