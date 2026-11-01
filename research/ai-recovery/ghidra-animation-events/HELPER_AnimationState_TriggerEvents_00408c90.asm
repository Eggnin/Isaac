; J460 NPC AI 0x00408c90 HELPER_AnimationState_TriggerEvents
; types=0
; identities=*
; entry=00408c90
00408c90  53                        PUSH EBX
00408c91  56                        PUSH ESI
00408c92  8bf1                      MOV ESI,ECX
00408c94  57                        PUSH EDI
00408c95  8b7e04                    MOV EDI,dword ptr [ESI + 0x4]
00408c98  8bdf                      MOV EBX,EDI
00408c9a  85ff                      TEST EDI,EDI
00408c9c  7514                      JNZ 0x00408cb2
00408c9e  6804a5b100                PUSH 0xb1a504
00408ca3  6a10                      PUSH 0x10
00408ca5  e816866000                CALL 0x00a112c0
00408caa  8b7e04                    MOV EDI,dword ptr [ESI + 0x4]
00408cad  83c408                    ADD ESP,0x8
00408cb0  8bdf                      MOV EBX,EDI
00408cb2  33d2                      XOR EDX,EDX
00408cb4  39532c                    CMP dword ptr [EBX + 0x2c],EDX
00408cb7  7640                      JBE 0x00408cf9
00408cb9  f30f104e10                MOVSS XMM1,dword ptr [ESI + 0x10]
00408cbe  6690                      NOP
00408cc0  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
00408cc3  660f6e44d004              MOVD XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
00408cc9  0f5bc0                    CVTDQ2PS XMM0,XMM0
00408ccc  0f2ec1                    UCOMISS XMM0,XMM1
00408ccf  9f                        LAHF
00408cd0  f6c444                    TEST AH,0x44
00408cd3  7a1e                      JP 0x00408cf3
00408cd5  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
00408cd8  8b4e18                    MOV ECX,dword ptr [ESI + 0x18]
00408cdb  8b04d0                    MOV EAX,dword ptr [EAX + EDX*0x8]
00408cde  0fabc1                    BTS ECX,EAX
00408ce1  894e18                    MOV dword ptr [ESI + 0x18],ECX
00408ce4  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
00408ce7  8b4e1c                    MOV ECX,dword ptr [ESI + 0x1c]
00408cea  8b04d0                    MOV EAX,dword ptr [EAX + EDX*0x8]
00408ced  0fabc1                    BTS ECX,EAX
00408cf0  894e1c                    MOV dword ptr [ESI + 0x1c],ECX
00408cf3  42                        INC EDX
00408cf4  3b572c                    CMP EDX,dword ptr [EDI + 0x2c]
00408cf7  72c7                      JC 0x00408cc0
00408cf9  5f                        POP EDI
00408cfa  5e                        POP ESI
00408cfb  5b                        POP EBX
00408cfc  c3                        RET
