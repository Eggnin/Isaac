; J460 NPC AI 0x006ac760 HELPER_Entity_TimeoutCrossed
; types=9
; identities=9.*
; entry=006ac760
006ac760  55                        PUSH EBP
006ac761  8bec                      MOV EBP,ESP
006ac763  83e4f8                    AND ESP,0xfffffff8
006ac766  83ec0c                    SUB ESP,0xc
006ac769  56                        PUSH ESI
006ac76a  8bf1                      MOV ESI,ECX
006ac76c  f30f11542408              MOVSS dword ptr [ESP + 0x8],XMM2
006ac772  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
006ac778  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
006ac77e  2500400000                AND EAX,0x4000
006ac783  83c800                    OR EAX,0x0
006ac786  7543                      JNZ 0x006ac7cb
006ac788  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ac78e  e8bd0b0500                CALL 0x006fd350
006ac793  84c0                      TEST AL,AL
006ac795  7534                      JNZ 0x006ac7cb
006ac797  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
006ac79d  0f28c1                    MOVAPS XMM0,XMM1
006ac7a0  f30f5886a4030000          ADDSS XMM0,dword ptr [ESI + 0x3a4]
006ac7a8  f30f588ea0030000          ADDSS XMM1,dword ptr [ESI + 0x3a0]
006ac7b0  f30f5e44240c              DIVSS XMM0,dword ptr [ESP + 0xc]
006ac7b6  f30f5e4c240c              DIVSS XMM1,dword ptr [ESP + 0xc]
006ac7bc  f30f2cc0                  CVTTSS2SI EAX,XMM0
006ac7c0  f30f2cc9                  CVTTSS2SI ECX,XMM1
006ac7c4  2bc1                      SUB EAX,ECX
006ac7c6  5e                        POP ESI
006ac7c7  8be5                      MOV ESP,EBP
006ac7c9  5d                        POP EBP
006ac7ca  c3                        RET
006ac7cb  33c0                      XOR EAX,EAX
006ac7cd  5e                        POP ESI
006ac7ce  8be5                      MOV ESP,EBP
006ac7d0  5d                        POP EBP
006ac7d1  c3                        RET
