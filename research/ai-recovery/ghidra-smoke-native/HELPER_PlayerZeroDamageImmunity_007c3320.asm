; J460 NPC AI 0x007c3320 HELPER_PlayerZeroDamageImmunity
; types=1
; identities=1.*
; entry=007c3320
007c3320  55                        PUSH EBP
007c3321  8bec                      MOV EBP,ESP
007c3323  83e4f8                    AND ESP,0xfffffff8
007c3326  51                        PUSH ECX
007c3327  56                        PUSH ESI
007c3328  6a00                      PUSH 0x0
007c332a  6852020000                PUSH 0x252
007c332f  8bf1                      MOV ESI,ECX
007c3331  e8aad3faff                CALL 0x007706e0
007c3336  84c0                      TEST AL,AL
007c3338  7532                      JNZ 0x007c336c
007c333a  6a00                      PUSH 0x0
007c333c  688c000000                PUSH 0x8c
007c3341  8bce                      MOV ECX,ESI
007c3343  e898d3faff                CALL 0x007706e0
007c3348  84c0                      TEST AL,AL
007c334a  7520                      JNZ 0x007c336c
007c334c  38862c200000              CMP byte ptr [ESI + 0x202c],AL
007c3352  7511                      JNZ 0x007c3365
007c3354  3886a9200000              CMP byte ptr [ESI + 0x20a9],AL
007c335a  7509                      JNZ 0x007c3365
007c335c  83beec17000003            CMP dword ptr [ESI + 0x17ec],0x3
007c3363  7d07                      JGE 0x007c336c
007c3365  32c0                      XOR AL,AL
007c3367  5e                        POP ESI
007c3368  8be5                      MOV ESP,EBP
007c336a  5d                        POP EBP
007c336b  c3                        RET
007c336c  b001                      MOV AL,0x1
007c336e  5e                        POP ESI
007c336f  8be5                      MOV ESP,EBP
007c3371  5d                        POP EBP
007c3372  c3                        RET
