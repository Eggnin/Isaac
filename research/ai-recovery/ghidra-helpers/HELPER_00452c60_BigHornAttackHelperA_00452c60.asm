; J460 NPC AI 0x00452c60 HELPER_00452c60_BigHornAttackHelperA
; types=411
; identities=big_horn.attack_helper
; entry=00452c60
00452c60  f30f108274030000          MOVSS XMM0,dword ptr [EDX + 0x374]
00452c68  f30f108a78030000          MOVSS XMM1,dword ptr [EDX + 0x378]
00452c70  f30f10923c030000          MOVSS XMM2,dword ptr [EDX + 0x33c]
00452c78  f30f109a40030000          MOVSS XMM3,dword ptr [EDX + 0x340]
00452c80  56                        PUSH ESI
00452c81  8bf1                      MOV ESI,ECX
00452c83  f30f5ed0                  DIVSS XMM2,XMM0
00452c87  f30f10a63c030000          MOVSS XMM4,dword ptr [ESI + 0x33c]
00452c8f  f30f10ae40030000          MOVSS XMM5,dword ptr [ESI + 0x340]
00452c97  f30f5ee0                  DIVSS XMM4,XMM0
00452c9b  f30f5ee9                  DIVSS XMM5,XMM1
00452c9f  f30f5ed9                  DIVSS XMM3,XMM1
00452ca3  f30f108270030000          MOVSS XMM0,dword ptr [EDX + 0x370]
00452cab  f30f5ce2                  SUBSS XMM4,XMM2
00452caf  f30f5ceb                  SUBSS XMM5,XMM3
00452cb3  f30f59c0                  MULSS XMM0,XMM0
00452cb7  f30f59e4                  MULSS XMM4,XMM4
00452cbb  f30f59ed                  MULSS XMM5,XMM5
00452cbf  f30f58ec                  ADDSS XMM5,XMM4
00452cc3  0f2fc5                    COMISS XMM0,XMM5
00452cc6  7667                      JBE 0x00452d2f
00452cc8  8b8684010000              MOV EAX,dword ptr [ESI + 0x184]
00452cce  85c0                      TEST EAX,EAX
00452cd0  745d                      JZ 0x00452d2f
00452cd2  83f803                    CMP EAX,0x3
00452cd5  7458                      JZ 0x00452d2f
00452cd7  83f801                    CMP EAX,0x1
00452cda  7453                      JZ 0x00452d2f
00452cdc  83f802                    CMP EAX,0x2
00452cdf  744e                      JZ 0x00452d2f
00452ce1  83befc03000000            CMP dword ptr [ESI + 0x3fc],0x0
00452ce8  7545                      JNZ 0x00452d2f
00452cea  6871020000                PUSH 0x271
00452cef  8d8e08150000              LEA ECX,[ESI + 0x1508]
00452cf5  e8f6d84d00                CALL 0x009305f0
00452cfa  84c0                      TEST AL,AL
00452cfc  7531                      JNZ 0x00452d2f
00452cfe  6850b3b600                PUSH 0xb6b350
00452d03  8bce                      MOV ECX,ESI
00452d05  e816913500                CALL 0x007abe20
00452d0a  c6861004000000            MOV byte ptr [ESI + 0x410],0x0
00452d11  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
00452d1b  c786fc03000001000000      MOV dword ptr [ESI + 0x3fc],0x1
00452d25  c7860004000000000000      MOV dword ptr [ESI + 0x400],0x0
00452d2f  5e                        POP ESI
00452d30  c3                        RET
