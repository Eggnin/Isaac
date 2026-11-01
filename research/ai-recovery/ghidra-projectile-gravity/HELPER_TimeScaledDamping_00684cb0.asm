; J460 NPC AI 0x00684cb0 HELPER_TimeScaledDamping
; types=9
; identities=9.*
; entry=00684cb0
00684cb0  0f28d9                    MOVAPS XMM3,XMM1
00684cb3  0f28d0                    MOVAPS XMM2,XMM0
00684cb6  0f2e1d54a4ba00            UCOMISS XMM3,dword ptr [0x00baa454]
00684cbd  9f                        LAHF
00684cbe  f6c444                    TEST AH,0x44
00684cc1  7b16                      JNP 0x00684cd9
00684cc3  0f28ca                    MOVAPS XMM1,XMM2
00684cc6  f30f59c3                  MULSS XMM0,XMM3
00684cca  f30f58cb                  ADDSS XMM1,XMM3
00684cce  f30f5cc8                  SUBSS XMM1,XMM0
00684cd2  f30f5ed1                  DIVSS XMM2,XMM1
00684cd6  0f28c2                    MOVAPS XMM0,XMM2
00684cd9  c3                        RET
