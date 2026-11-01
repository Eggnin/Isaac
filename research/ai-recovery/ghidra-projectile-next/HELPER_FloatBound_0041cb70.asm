; J460 NPC AI 0x0041cb70 HELPER_FloatBound
; types=0
; identities=*
; entry=0041cb70
0041cb70  f30f1002                  MOVSS XMM0,dword ptr [EDX]
0041cb74  0f2f01                    COMISS XMM0,dword ptr [ECX]
0041cb77  0f47ca                    CMOVA ECX,EDX
0041cb7a  8bc1                      MOV EAX,ECX
0041cb7c  c3                        RET
