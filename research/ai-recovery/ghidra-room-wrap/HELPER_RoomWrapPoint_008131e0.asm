; J460 NPC AI 0x008131e0 HELPER_RoomWrapPoint
; types=0
; identities=*
; entry=008131e0
008131e0  55                        PUSH EBP
008131e1  8bec                      MOV EBP,ESP
008131e3  83e4f8                    AND ESP,0xfffffff8
008131e6  83ec10                    SUB ESP,0x10
008131e9  f30f104518                MOVSS XMM0,dword ptr [EBP + 0x18]
008131ee  8d442408                  LEA EAX,[ESP + 0x8]
008131f2  56                        PUSH ESI
008131f3  8b750c                    MOV ESI,dword ptr [EBP + 0xc]
008131f6  57                        PUSH EDI
008131f7  83ec0c                    SUB ESP,0xc
008131fa  f30f115c2418              MOVSS dword ptr [ESP + 0x18],XMM3
00813200  8bf9                      MOV EDI,ECX
00813202  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00813208  f30f104514                MOVSS XMM0,dword ptr [EBP + 0x14]
0081320d  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
00813213  f30f104510                MOVSS XMM0,dword ptr [EBP + 0x10]
00813218  f30f110424                MOVSS dword ptr [ESP],XMM0
0081321d  56                        PUSH ESI
0081321e  50                        PUSH EAX
0081321f  e82cfdffff                CALL 0x00812f50
00813224  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00813228  f30f107c2410              MOVSS XMM7,dword ptr [ESP + 0x10]
0081322e  f30f10642414              MOVSS XMM4,dword ptr [ESP + 0x14]
00813234  0f2ef8                    UCOMISS XMM7,XMM0
00813237  9f                        LAHF
00813238  f6c444                    TEST AH,0x44
0081323b  7a1f                      JP 0x0081325c
0081323d  0f2e6604                  UCOMISS XMM4,dword ptr [ESI + 0x4]
00813241  9f                        LAHF
00813242  f6c444                    TEST AH,0x44
00813245  7a15                      JP 0x0081325c
00813247  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0081324a  8b0e                      MOV ECX,dword ptr [ESI]
0081324c  8b5604                    MOV EDX,dword ptr [ESI + 0x4]
0081324f  8908                      MOV dword ptr [EAX],ECX
00813251  895004                    MOV dword ptr [EAX + 0x4],EDX
00813254  5f                        POP EDI
00813255  5e                        POP ESI
00813256  8be5                      MOV ESP,EBP
00813258  5d                        POP EBP
00813259  c21400                    RET 0x14
0081325c  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
00813261  0f28ec                    MOVAPS XMM5,XMM4
00813264  f30f5c6e04                SUBSS XMM5,dword ptr [ESI + 0x4]
00813269  0f28cf                    MOVAPS XMM1,XMM7
0081326c  0f28d0                    MOVAPS XMM2,XMM0
0081326f  f30f5cc8                  SUBSS XMM1,XMM0
00813273  32c0                      XOR AL,AL
00813275  0f57c0                    XORPS XMM0,XMM0
00813278  0f2ee8                    UCOMISS XMM5,XMM0
0081327b  9f                        LAHF
0081327c  f6c444                    TEST AH,0x44
0081327f  7b1c                      JNP 0x0081329d
00813281  0f2ec8                    UCOMISS XMM1,XMM0
00813284  9f                        LAHF
00813285  f6c444                    TEST AH,0x44
00813288  7b15                      JNP 0x0081329f
0081328a  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00813291  0f542d40cbba00            ANDPS XMM5,xmmword ptr [0x00bacb40]
00813298  0f2fe9                    COMISS XMM5,XMM1
0081329b  7602                      JBE 0x0081329f
0081329d  b001                      MOV AL,0x1
0081329f  f30f106c240c              MOVSS XMM5,dword ptr [ESP + 0xc]
008132a5  f30f107510                MOVSS XMM6,dword ptr [EBP + 0x10]
008132aa  f30f10471c                MOVSS XMM0,dword ptr [EDI + 0x1c]
008132af  f30f104f20                MOVSS XMM1,dword ptr [EDI + 0x20]
008132b4  f30f586f14                ADDSS XMM5,dword ptr [EDI + 0x14]
008132b9  f30f587718                ADDSS XMM6,dword ptr [EDI + 0x18]
008132be  f30f5c4514                SUBSS XMM0,dword ptr [EBP + 0x14]
008132c3  f30f5c4d18                SUBSS XMM1,dword ptr [EBP + 0x18]
008132c8  84c0                      TEST AL,AL
008132ca  7445                      JZ 0x00813311
008132cc  0f28ca                    MOVAPS XMM1,XMM2
008132cf  0f2ff9                    COMISS XMM7,XMM1
008132d2  761c                      JBE 0x008132f0
008132d4  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
008132d7  f30f5cc5                  SUBSS XMM0,XMM5
008132db  f30f115804                MOVSS dword ptr [EAX + 0x4],XMM3
008132e0  f30f58d0                  ADDSS XMM2,XMM0
008132e4  f30f1110                  MOVSS dword ptr [EAX],XMM2
008132e8  5f                        POP EDI
008132e9  5e                        POP ESI
008132ea  8be5                      MOV ESP,EBP
008132ec  5d                        POP EBP
008132ed  c21400                    RET 0x14
008132f0  0f2fcf                    COMISS XMM1,XMM7
008132f3  764d                      JBE 0x00813342
008132f5  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
008132f8  f30f5cc5                  SUBSS XMM0,XMM5
008132fc  f30f115804                MOVSS dword ptr [EAX + 0x4],XMM3
00813301  f30f5cd0                  SUBSS XMM2,XMM0
00813305  f30f1110                  MOVSS dword ptr [EAX],XMM2
00813309  5f                        POP EDI
0081330a  5e                        POP ESI
0081330b  8be5                      MOV ESP,EBP
0081330d  5d                        POP EBP
0081330e  c21400                    RET 0x14
00813311  0f28c3                    MOVAPS XMM0,XMM3
00813314  0f2fe0                    COMISS XMM4,XMM0
00813317  761c                      JBE 0x00813335
00813319  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0081331c  f30f5cce                  SUBSS XMM1,XMM6
00813320  f30f1110                  MOVSS dword ptr [EAX],XMM2
00813324  f30f58d9                  ADDSS XMM3,XMM1
00813328  f30f115804                MOVSS dword ptr [EAX + 0x4],XMM3
0081332d  5f                        POP EDI
0081332e  5e                        POP ESI
0081332f  8be5                      MOV ESP,EBP
00813331  5d                        POP EBP
00813332  c21400                    RET 0x14
00813335  0f2fc4                    COMISS XMM0,XMM4
00813338  7608                      JBE 0x00813342
0081333a  f30f5cce                  SUBSS XMM1,XMM6
0081333e  f30f5cd9                  SUBSS XMM3,XMM1
00813342  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
00813345  5f                        POP EDI
00813346  5e                        POP ESI
00813347  f30f1110                  MOVSS dword ptr [EAX],XMM2
0081334b  f30f115804                MOVSS dword ptr [EAX + 0x4],XMM3
00813350  8be5                      MOV ESP,EBP
00813352  5d                        POP EBP
00813353  c21400                    RET 0x14
