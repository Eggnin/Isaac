; J460 NPC AI 0x00812f50 HELPER_RoomClampedPoint
; types=0
; identities=*
; entry=00812f50
00812f50  55                        PUSH EBP
00812f51  8bec                      MOV EBP,ESP
00812f53  83e4f8                    AND ESP,0xfffffff8
00812f56  83ec34                    SUB ESP,0x34
00812f59  56                        PUSH ESI
00812f5a  8bf1                      MOV ESI,ECX
00812f5c  0f28c3                    MOVAPS XMM0,XMM3
00812f5f  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00812f65  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00812f68  85c0                      TEST EAX,EAX
00812f6a  0f844a020000              JZ 0x008131ba
00812f70  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
00812f73  85c0                      TEST EAX,EAX
00812f75  0f843f020000              JZ 0x008131ba
00812f7b  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
00812f7e  83c0f7                    ADD EAX,-0x9
00812f81  83f803                    CMP EAX,0x3
00812f84  0f87de010000              JA 0x00813168
00812f8a  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
00812f8d  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00812f91  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00812f97  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00812f9c  8d442418                  LEA EAX,[ESP + 0x18]
00812fa0  50                        PUSH EAX
00812fa1  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00812fa7  e804c90000                CALL 0x0081f8b0
00812fac  f30f100d70cbba00          MOVSS XMM1,dword ptr [0x00bacb70]
00812fb4  f30f105d18                MOVSS XMM3,dword ptr [EBP + 0x18]
00812fb9  f30f106d14                MOVSS XMM5,dword ptr [EBP + 0x14]
00812fbe  0f57d9                    XORPS XMM3,XMM1
00812fc1  f30f585c2424              ADDSS XMM3,dword ptr [ESP + 0x24]
00812fc7  f30f10542408              MOVSS XMM2,dword ptr [ESP + 0x8]
00812fcd  0f57e9                    XORPS XMM5,XMM1
00812fd0  f30f107c2418              MOVSS XMM7,dword ptr [ESP + 0x18]
00812fd6  0f28c2                    MOVAPS XMM0,XMM2
00812fd9  f30f1064242c              MOVSS XMM4,dword ptr [ESP + 0x2c]
00812fdf  0f57c1                    XORPS XMM0,XMM1
00812fe2  f30f5cf8                  SUBSS XMM7,XMM0
00812fe6  0f28f5                    MOVAPS XMM6,XMM5
00812fe9  f30f58742420              ADDSS XMM6,dword ptr [ESP + 0x20]
00812fef  f30f586c2430              ADDSS XMM5,dword ptr [ESP + 0x30]
00812ff5  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
00812ffb  f30f105c2428              MOVSS XMM3,dword ptr [ESP + 0x28]
00813001  f30f5cd8                  SUBSS XMM3,XMM0
00813005  f30f104510                MOVSS XMM0,dword ptr [EBP + 0x10]
0081300a  0f57c1                    XORPS XMM0,XMM1
0081300d  0f28ce                    MOVAPS XMM1,XMM6
00813010  f30f5ce0                  SUBSS XMM4,XMM0
00813014  0f28c5                    MOVAPS XMM0,XMM5
00813017  f30f5ccf                  SUBSS XMM1,XMM7
0081301b  f30f5cc3                  SUBSS XMM0,XMM3
0081301f  f30f115c2414              MOVSS dword ptr [ESP + 0x14],XMM3
00813025  0f2fc1                    COMISS XMM0,XMM1
00813028  7706                      JA 0x00813030
0081302a  f30f10642408              MOVSS XMM4,dword ptr [ESP + 0x8]
00813030  f30f585614                ADDSS XMM2,dword ptr [ESI + 0x14]
00813035  f30f10461c                MOVSS XMM0,dword ptr [ESI + 0x1c]
0081303a  f30f5c4514                SUBSS XMM0,dword ptr [EBP + 0x14]
0081303f  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
00813045  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00813048  f30f5fda                  MAXSS XMM3,XMM2
0081304c  f30f10542410              MOVSS XMM2,dword ptr [ESP + 0x10]
00813052  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
00813055  f30f5dd8                  MINSS XMM3,XMM0
00813059  f30f104510                MOVSS XMM0,dword ptr [EBP + 0x10]
0081305e  f30f584618                ADDSS XMM0,dword ptr [ESI + 0x18]
00813063  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
00813066  f30f5fd0                  MAXSS XMM2,XMM0
0081306a  f30f104620                MOVSS XMM0,dword ptr [ESI + 0x20]
0081306f  f30f5c4518                SUBSS XMM0,dword ptr [EBP + 0x18]
00813074  f30f5dd0                  MINSS XMM2,XMM0
00813078  83f809                    CMP EAX,0x9
0081307b  753f                      JNZ 0x008130bc
0081307d  0f2ffb                    COMISS XMM7,XMM3
00813080  0f86cf000000              JBE 0x00813155
00813086  0f2fe2                    COMISS XMM4,XMM2
00813089  0f86c6000000              JBE 0x00813155
0081308f  0f28cf                    MOVAPS XMM1,XMM7
00813092  0f28c4                    MOVAPS XMM0,XMM4
00813095  f30f5ccb                  SUBSS XMM1,XMM3
00813099  f30f5cc2                  SUBSS XMM0,XMM2
0081309d  0f2fc1                    COMISS XMM0,XMM1
008130a0  0f86ac000000              JBE 0x00813152
008130a6  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
008130a9  0f28df                    MOVAPS XMM3,XMM7
008130ac  f30f1118                  MOVSS dword ptr [EAX],XMM3
008130b0  f30f115004                MOVSS dword ptr [EAX + 0x4],XMM2
008130b5  5e                        POP ESI
008130b6  8be5                      MOV ESP,EBP
008130b8  5d                        POP EBP
008130b9  c21400                    RET 0x14
008130bc  83f80a                    CMP EAX,0xa
008130bf  753b                      JNZ 0x008130fc
008130c1  0f2fde                    COMISS XMM3,XMM6
008130c4  0f868b000000              JBE 0x00813155
008130ca  0f2fe2                    COMISS XMM4,XMM2
008130cd  0f8682000000              JBE 0x00813155
008130d3  0f28cb                    MOVAPS XMM1,XMM3
008130d6  0f28c4                    MOVAPS XMM0,XMM4
008130d9  f30f5cce                  SUBSS XMM1,XMM6
008130dd  f30f5cc2                  SUBSS XMM0,XMM2
008130e1  0f2fc1                    COMISS XMM0,XMM1
008130e4  766c                      JBE 0x00813152
008130e6  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
008130e9  0f28de                    MOVAPS XMM3,XMM6
008130ec  f30f1118                  MOVSS dword ptr [EAX],XMM3
008130f0  f30f115004                MOVSS dword ptr [EAX + 0x4],XMM2
008130f5  5e                        POP ESI
008130f6  8be5                      MOV ESP,EBP
008130f8  5d                        POP EBP
008130f9  c21400                    RET 0x14
008130fc  83f80b                    CMP EAX,0xb
008130ff  7519                      JNZ 0x0081311a
00813101  f30f106c2414              MOVSS XMM5,dword ptr [ESP + 0x14]
00813107  0f2feb                    COMISS XMM5,XMM3
0081310a  7649                      JBE 0x00813155
0081310c  0f2fd4                    COMISS XMM2,XMM4
0081310f  7644                      JBE 0x00813155
00813111  0f28cd                    MOVAPS XMM1,XMM5
00813114  f30f5ccb                  SUBSS XMM1,XMM3
00813118  eb16                      JMP 0x00813130
0081311a  83f80c                    CMP EAX,0xc
0081311d  7536                      JNZ 0x00813155
0081311f  0f2fdd                    COMISS XMM3,XMM5
00813122  7631                      JBE 0x00813155
00813124  0f2fd4                    COMISS XMM2,XMM4
00813127  762c                      JBE 0x00813155
00813129  0f28cb                    MOVAPS XMM1,XMM3
0081312c  f30f5ccd                  SUBSS XMM1,XMM5
00813130  0f28c2                    MOVAPS XMM0,XMM2
00813133  f30f5cc4                  SUBSS XMM0,XMM4
00813137  0f2fc1                    COMISS XMM0,XMM1
0081313a  7616                      JBE 0x00813152
0081313c  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0081313f  0f28dd                    MOVAPS XMM3,XMM5
00813142  f30f1118                  MOVSS dword ptr [EAX],XMM3
00813146  f30f115004                MOVSS dword ptr [EAX + 0x4],XMM2
0081314b  5e                        POP ESI
0081314c  8be5                      MOV ESP,EBP
0081314e  5d                        POP EBP
0081314f  c21400                    RET 0x14
00813152  0f28d4                    MOVAPS XMM2,XMM4
00813155  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
00813158  f30f1118                  MOVSS dword ptr [EAX],XMM3
0081315c  f30f115004                MOVSS dword ptr [EAX + 0x4],XMM2
00813161  5e                        POP ESI
00813162  8be5                      MOV ESP,EBP
00813164  5d                        POP EBP
00813165  c21400                    RET 0x14
00813168  f30f584614                ADDSS XMM0,dword ptr [ESI + 0x14]
0081316d  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
00813170  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
00813173  f30f1009                  MOVSS XMM1,dword ptr [ECX]
00813177  f30f5fc8                  MAXSS XMM1,XMM0
0081317b  f30f10461c                MOVSS XMM0,dword ptr [ESI + 0x1c]
00813180  f30f5c4514                SUBSS XMM0,dword ptr [EBP + 0x14]
00813185  f30f5dc8                  MINSS XMM1,XMM0
00813189  f30f104510                MOVSS XMM0,dword ptr [EBP + 0x10]
0081318e  f30f584618                ADDSS XMM0,dword ptr [ESI + 0x18]
00813193  f30f1108                  MOVSS dword ptr [EAX],XMM1
00813197  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
0081319c  f30f5fc8                  MAXSS XMM1,XMM0
008131a0  f30f104620                MOVSS XMM0,dword ptr [ESI + 0x20]
008131a5  f30f5c4518                SUBSS XMM0,dword ptr [EBP + 0x18]
008131aa  f30f5dc8                  MINSS XMM1,XMM0
008131ae  f30f114804                MOVSS dword ptr [EAX + 0x4],XMM1
008131b3  5e                        POP ESI
008131b4  8be5                      MOV ESP,EBP
008131b6  5d                        POP EBP
008131b7  c21400                    RET 0x14
008131ba  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
008131bd  5e                        POP ESI
008131be  8b08                      MOV ECX,dword ptr [EAX]
008131c0  8b5004                    MOV EDX,dword ptr [EAX + 0x4]
008131c3  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
008131c6  8908                      MOV dword ptr [EAX],ECX
008131c8  895004                    MOV dword ptr [EAX + 0x4],EDX
008131cb  8be5                      MOV ESP,EBP
008131cd  5d                        POP EBP
008131ce  c21400                    RET 0x14
