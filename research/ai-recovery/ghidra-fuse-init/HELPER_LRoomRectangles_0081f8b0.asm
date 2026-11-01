; J460 NPC AI 0x0081f8b0 HELPER_LRoomRectangles
; types=0
; identities=*
; entry=0081f8b0
0081f8b0  55                        PUSH EBP
0081f8b1  8bec                      MOV EBP,ESP
0081f8b3  83e4f8                    AND ESP,0xfffffff8
0081f8b6  83ec1c                    SUB ESP,0x1c
0081f8b9  53                        PUSH EBX
0081f8ba  56                        PUSH ESI
0081f8bb  57                        PUSH EDI
0081f8bc  8bf9                      MOV EDI,ECX
0081f8be  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
0081f8c1  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
0081f8c4  8b4848                    MOV ECX,dword ptr [EAX + 0x48]
0081f8c7  8d41f7                    LEA EAX,[ECX + -0x9]
0081f8ca  83f803                    CMP EAX,0x3
0081f8cd  0f87cd010000              JA 0x0081faa0
0081f8d3  c1e105                    SHL ECX,0x5
0081f8d6  81c1805bc300              ADD ECX,0xc35b80
0081f8dc  8b01                      MOV EAX,dword ptr [ECX]
0081f8de  8b7118                    MOV ESI,dword ptr [ECX + 0x18]
0081f8e1  8b5914                    MOV EBX,dword ptr [ECX + 0x14]
0081f8e4  8b511c                    MOV EDX,dword ptr [ECX + 0x1c]
0081f8e7  89442418                  MOV dword ptr [ESP + 0x18],EAX
0081f8eb  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
0081f8ee  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0081f8f2  8b4108                    MOV EAX,dword ptr [ECX + 0x8]
0081f8f5  89442410                  MOV dword ptr [ESP + 0x10],EAX
0081f8f9  8b410c                    MOV EAX,dword ptr [ECX + 0xc]
0081f8fc  89442414                  MOV dword ptr [ESP + 0x14],EAX
0081f900  8b4110                    MOV EAX,dword ptr [ECX + 0x10]
0081f903  8944240c                  MOV dword ptr [ESP + 0xc],EAX
0081f907  85f6                      TEST ESI,ESI
0081f909  7819                      JS 0x0081f924
0081f90b  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
0081f90e  3bf1                      CMP ESI,ECX
0081f910  7d12                      JGE 0x0081f924
0081f912  85d2                      TEST EDX,EDX
0081f914  780e                      JS 0x0081f924
0081f916  3b5710                    CMP EDX,dword ptr [EDI + 0x10]
0081f919  7d09                      JGE 0x0081f924
0081f91b  8bc1                      MOV EAX,ECX
0081f91d  0fafc2                    IMUL EAX,EDX
0081f920  03c6                      ADD EAX,ESI
0081f922  eb06                      JMP 0x0081f92a
0081f924  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
0081f927  83c8ff                    OR EAX,0xffffffff
0081f92a  99                        CDQ
0081f92b  f7f9                      IDIV ECX
0081f92d  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0081f935  f30f103d7ca8ba00          MOVSS XMM7,dword ptr [0x00baa87c]
0081f93d  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
0081f945  660f6ec2                  MOVD XMM0,EDX
0081f949  0f5bc0                    CVTDQ2PS XMM0,XMM0
0081f94c  8b54240c                  MOV EDX,dword ptr [ESP + 0xc]
0081f950  f30f59c2                  MULSS XMM0,XMM2
0081f954  f30f58c2                  ADDSS XMM0,XMM2
0081f958  f30f58c7                  ADDSS XMM0,XMM7
0081f95c  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0081f962  660f6ec0                  MOVD XMM0,EAX
0081f966  0f5bc0                    CVTDQ2PS XMM0,XMM0
0081f969  f30f59c2                  MULSS XMM0,XMM2
0081f96d  f30f58c1                  ADDSS XMM0,XMM1
0081f971  f30f58c7                  ADDSS XMM0,XMM7
0081f975  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0081f97b  85d2                      TEST EDX,EDX
0081f97d  7816                      JS 0x0081f995
0081f97f  3bd1                      CMP EDX,ECX
0081f981  7d12                      JGE 0x0081f995
0081f983  85db                      TEST EBX,EBX
0081f985  780e                      JS 0x0081f995
0081f987  3b5f10                    CMP EBX,dword ptr [EDI + 0x10]
0081f98a  7d09                      JGE 0x0081f995
0081f98c  8bc1                      MOV EAX,ECX
0081f98e  0fafc3                    IMUL EAX,EBX
0081f991  03c2                      ADD EAX,EDX
0081f993  eb03                      JMP 0x0081f998
0081f995  83c8ff                    OR EAX,0xffffffff
0081f998  99                        CDQ
0081f999  f7f9                      IDIV ECX
0081f99b  8b5c2410                  MOV EBX,dword ptr [ESP + 0x10]
0081f99f  660f6eea                  MOVD XMM5,EDX
0081f9a3  660f6ef0                  MOVD XMM6,EAX
0081f9a7  0f5bed                    CVTDQ2PS XMM5,XMM5
0081f9aa  0f5bf6                    CVTDQ2PS XMM6,XMM6
0081f9ad  f30f59ea                  MULSS XMM5,XMM2
0081f9b1  f30f59f2                  MULSS XMM6,XMM2
0081f9b5  f30f58ea                  ADDSS XMM5,XMM2
0081f9b9  f30f58f1                  ADDSS XMM6,XMM1
0081f9bd  f30f5cef                  SUBSS XMM5,XMM7
0081f9c1  f30f5cf7                  SUBSS XMM6,XMM7
0081f9c5  85db                      TEST EBX,EBX
0081f9c7  781a                      JS 0x0081f9e3
0081f9c9  3bd9                      CMP EBX,ECX
0081f9cb  7d16                      JGE 0x0081f9e3
0081f9cd  8b542414                  MOV EDX,dword ptr [ESP + 0x14]
0081f9d1  85d2                      TEST EDX,EDX
0081f9d3  780e                      JS 0x0081f9e3
0081f9d5  3b5710                    CMP EDX,dword ptr [EDI + 0x10]
0081f9d8  7d09                      JGE 0x0081f9e3
0081f9da  8bc1                      MOV EAX,ECX
0081f9dc  0fafc2                    IMUL EAX,EDX
0081f9df  03c3                      ADD EAX,EBX
0081f9e1  eb03                      JMP 0x0081f9e6
0081f9e3  83c8ff                    OR EAX,0xffffffff
0081f9e6  99                        CDQ
0081f9e7  f7f9                      IDIV ECX
0081f9e9  8b5c2418                  MOV EBX,dword ptr [ESP + 0x18]
0081f9ed  660f6eda                  MOVD XMM3,EDX
0081f9f1  660f6ee0                  MOVD XMM4,EAX
0081f9f5  0f5bdb                    CVTDQ2PS XMM3,XMM3
0081f9f8  0f5be4                    CVTDQ2PS XMM4,XMM4
0081f9fb  f30f59da                  MULSS XMM3,XMM2
0081f9ff  f30f59e2                  MULSS XMM4,XMM2
0081fa03  f30f58da                  ADDSS XMM3,XMM2
0081fa07  f30f58e1                  ADDSS XMM4,XMM1
0081fa0b  f30f58df                  ADDSS XMM3,XMM7
0081fa0f  f30f58e7                  ADDSS XMM4,XMM7
0081fa13  85db                      TEST EBX,EBX
0081fa15  781a                      JS 0x0081fa31
0081fa17  3bd9                      CMP EBX,ECX
0081fa19  7d16                      JGE 0x0081fa31
0081fa1b  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
0081fa1f  85d2                      TEST EDX,EDX
0081fa21  780e                      JS 0x0081fa31
0081fa23  3b5710                    CMP EDX,dword ptr [EDI + 0x10]
0081fa26  7d09                      JGE 0x0081fa31
0081fa28  8bc1                      MOV EAX,ECX
0081fa2a  0fafc2                    IMUL EAX,EDX
0081fa2d  03c3                      ADD EAX,EBX
0081fa2f  eb03                      JMP 0x0081fa34
0081fa31  83c8ff                    OR EAX,0xffffffff
0081fa34  99                        CDQ
0081fa35  f7f9                      IDIV ECX
0081fa37  660f6ec0                  MOVD XMM0,EAX
0081fa3b  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0081fa3e  0f5bc0                    CVTDQ2PS XMM0,XMM0
0081fa41  660f6eca                  MOVD XMM1,EDX
0081fa45  0f5bc9                    CVTDQ2PS XMM1,XMM1
0081fa48  f30f59c2                  MULSS XMM0,XMM2
0081fa4c  f30f59ca                  MULSS XMM1,XMM2
0081fa50  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
0081fa58  f30f115808                MOVSS dword ptr [EAX + 0x8],XMM3
0081fa5d  f30f58ca                  ADDSS XMM1,XMM2
0081fa61  f30f11600c                MOVSS dword ptr [EAX + 0xc],XMM4
0081fa66  f30f116810                MOVSS dword ptr [EAX + 0x10],XMM5
0081fa6b  f30f117014                MOVSS dword ptr [EAX + 0x14],XMM6
0081fa70  f30f5cc7                  SUBSS XMM0,XMM7
0081fa74  f30f5ccf                  SUBSS XMM1,XMM7
0081fa78  f30f114004                MOVSS dword ptr [EAX + 0x4],XMM0
0081fa7d  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0081fa83  f30f114018                MOVSS dword ptr [EAX + 0x18],XMM0
0081fa88  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0081fa8e  f30f1108                  MOVSS dword ptr [EAX],XMM1
0081fa92  f30f11401c                MOVSS dword ptr [EAX + 0x1c],XMM0
0081fa97  5f                        POP EDI
0081fa98  5e                        POP ESI
0081fa99  5b                        POP EBX
0081fa9a  8be5                      MOV ESP,EBP
0081fa9c  5d                        POP EBP
0081fa9d  c20400                    RET 0x4
0081faa0  8b7508                    MOV ESI,dword ptr [EBP + 0x8]
0081faa3  8b4f18                    MOV ECX,dword ptr [EDI + 0x18]
0081faa6  8b4714                    MOV EAX,dword ptr [EDI + 0x14]
0081faa9  8b5718                    MOV EDX,dword ptr [EDI + 0x18]
0081faac  894e04                    MOV dword ptr [ESI + 0x4],ECX
0081faaf  8b4f20                    MOV ECX,dword ptr [EDI + 0x20]
0081fab2  894e0c                    MOV dword ptr [ESI + 0xc],ECX
0081fab5  8b4f14                    MOV ECX,dword ptr [EDI + 0x14]
0081fab8  8906                      MOV dword ptr [ESI],EAX
0081faba  8b471c                    MOV EAX,dword ptr [EDI + 0x1c]
0081fabd  894e10                    MOV dword ptr [ESI + 0x10],ECX
0081fac0  8bc8                      MOV ECX,EAX
0081fac2  895614                    MOV dword ptr [ESI + 0x14],EDX
0081fac5  8b5720                    MOV EDX,dword ptr [EDI + 0x20]
0081fac8  894608                    MOV dword ptr [ESI + 0x8],EAX
0081facb  8bc6                      MOV EAX,ESI
0081facd  5f                        POP EDI
0081face  894e18                    MOV dword ptr [ESI + 0x18],ECX
0081fad1  89561c                    MOV dword ptr [ESI + 0x1c],EDX
0081fad4  5e                        POP ESI
0081fad5  5b                        POP EBX
0081fad6  8be5                      MOV ESP,EBP
0081fad8  5d                        POP EBP
0081fad9  c20400                    RET 0x4
