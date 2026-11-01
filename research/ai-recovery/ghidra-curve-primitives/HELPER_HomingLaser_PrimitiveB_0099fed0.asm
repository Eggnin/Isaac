; J460 NPC AI 0x0099fed0 HELPER_HomingLaser_PrimitiveB
; types=7
; identities=7.*
; entry=0099fed0
0099fed0  55                        PUSH EBP
0099fed1  8bec                      MOV EBP,ESP
0099fed3  83e4f0                    AND ESP,0xfffffff0
0099fed6  83ec78                    SUB ESP,0x78
0099fed9  56                        PUSH ESI
0099feda  57                        PUSH EDI
0099fedb  8bf9                      MOV EDI,ECX
0099fedd  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
0099fee3  f30f11542424              MOVSS dword ptr [ESP + 0x24],XMM2
0099fee9  f30f115c2454              MOVSS dword ptr [ESP + 0x54],XMM3
0099feef  f30f104f0c                MOVSS XMM1,dword ptr [EDI + 0xc]
0099fef4  f30f5c4f04                SUBSS XMM1,dword ptr [EDI + 0x4]
0099fef9  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
0099fefe  f30f105710                MOVSS XMM2,dword ptr [EDI + 0x10]
0099ff03  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
0099ff09  f30f104708                MOVSS XMM0,dword ptr [EDI + 0x8]
0099ff0e  f30f5cd0                  SUBSS XMM2,XMM0
0099ff12  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0099ff18  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
0099ff1e  0f28c1                    MOVAPS XMM0,XMM1
0099ff21  f30f59c1                  MULSS XMM0,XMM1
0099ff25  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
0099ff2b  0f28ca                    MOVAPS XMM1,XMM2
0099ff2e  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
0099ff34  f30f59ca                  MULSS XMM1,XMM2
0099ff38  f30f58c1                  ADDSS XMM0,XMM1
0099ff3c  e80f5ba9ff                CALL 0x00435a50
0099ff41  0f57c9                    XORPS XMM1,XMM1
0099ff44  0f2fc1                    COMISS XMM0,XMM1
0099ff47  762c                      JBE 0x0099ff75
0099ff49  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0099ff51  f30f5ec8                  DIVSS XMM1,XMM0
0099ff55  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0099ff5b  f30f59c1                  MULSS XMM0,XMM1
0099ff5f  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0099ff65  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
0099ff6b  f30f59c1                  MULSS XMM0,XMM1
0099ff6f  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0099ff75  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0099ff7d  e8bed5a7ff                CALL 0x0041d540
0099ff82  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0099ff88  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0099ff90  e88bd5a7ff                CALL 0x0041d520
0099ff95  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
0099ff9b  0f28e0                    MOVAPS XMM4,XMM0
0099ff9e  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
0099ffa4  0f28cc                    MOVAPS XMM1,XMM4
0099ffa7  f30f105c2418              MOVSS XMM3,dword ptr [ESP + 0x18]
0099ffad  0f28e8                    MOVAPS XMM5,XMM0
0099ffb0  f30f59ea                  MULSS XMM5,XMM2
0099ffb4  0f28f2                    MOVAPS XMM6,XMM2
0099ffb7  8b4f4c                    MOV ECX,dword ptr [EDI + 0x4c]
0099ffba  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099ffbf  f30f59742428              MULSS XMM6,dword ptr [ESP + 0x28]
0099ffc5  0f28fb                    MOVAPS XMM7,XMM3
0099ffc8  2b4f48                    SUB ECX,dword ptr [EDI + 0x48]
0099ffcb  f30f597c2428              MULSS XMM7,dword ptr [ESP + 0x28]
0099ffd1  f30f59e2                  MULSS XMM4,XMM2
0099ffd5  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
0099ffdd  f30f59cb                  MULSS XMM1,XMM3
0099ffe1  f30f59c3                  MULSS XMM0,XMM3
0099ffe5  f30f5ce9                  SUBSS XMM5,XMM1
0099ffe9  f30f1174243c              MOVSS dword ptr [ESP + 0x3c],XMM6
0099ffef  0f28ce                    MOVAPS XMM1,XMM6
0099fff2  f30f117c2440              MOVSS dword ptr [ESP + 0x40],XMM7
0099fff8  f30f58e0                  ADDSS XMM4,XMM0
0099fffc  f30f59ca                  MULSS XMM1,XMM2
009a0000  f30f593598a1ba00          MULSS XMM6,dword ptr [0x00baa198]
009a0008  0f28c7                    MOVAPS XMM0,XMM7
009a000b  f30f596c2424              MULSS XMM5,dword ptr [ESP + 0x24]
009a0011  f30f59642424              MULSS XMM4,dword ptr [ESP + 0x24]
009a0017  f30f59ea                  MULSS XMM5,XMM2
009a001b  f30f59e2                  MULSS XMM4,XMM2
009a001f  f30f593d98a1ba00          MULSS XMM7,dword ptr [0x00baa198]
009a0027  f30f59c2                  MULSS XMM0,XMM2
009a002b  0f28d1                    MOVAPS XMM2,XMM1
009a002e  f30f5cd5                  SUBSS XMM2,XMM5
009a0032  f30f116c2444              MOVSS dword ptr [ESP + 0x44],XMM5
009a0038  f7e9                      IMUL ECX
009a003a  f30f1164244c              MOVSS dword ptr [ESP + 0x4c],XMM4
009a0040  f30f11742420              MOVSS dword ptr [ESP + 0x20],XMM6
009a0046  f30f117c2424              MOVSS dword ptr [ESP + 0x24],XMM7
009a004c  f30f11542434              MOVSS dword ptr [ESP + 0x34],XMM2
009a0052  0f28d0                    MOVAPS XMM2,XMM0
009a0055  f30f5cd4                  SUBSS XMM2,XMM4
009a0059  c1fa02                    SAR EDX,0x2
009a005c  8bc2                      MOV EAX,EDX
009a005e  c1e81f                    SHR EAX,0x1f
009a0061  f30f11542438              MOVSS dword ptr [ESP + 0x38],XMM2
009a0067  0f28d5                    MOVAPS XMM2,XMM5
009a006a  f30f58d1                  ADDSS XMM2,XMM1
009a006e  0f28cc                    MOVAPS XMM1,XMM4
009a0071  f30f58c8                  ADDSS XMM1,XMM0
009a0075  f30f1154242c              MOVSS dword ptr [ESP + 0x2c],XMM2
009a007b  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
009a0081  03c2                      ADD EAX,EDX
009a0083  0f8587000000              JNZ 0x009a0110
009a0089  f30f1054241c              MOVSS XMM2,dword ptr [ESP + 0x1c]
009a008f  0f28ce                    MOVAPS XMM1,XMM6
009a0092  f30f584c2458              ADDSS XMM1,dword ptr [ESP + 0x58]
009a0098  8b4704                    MOV EAX,dword ptr [EDI + 0x4]
009a009b  0f28c2                    MOVAPS XMM0,XMM2
009a009e  8b4f08                    MOV ECX,dword ptr [EDI + 0x8]
009a00a1  f30f58c7                  ADDSS XMM0,XMM7
009a00a5  89442460                  MOV dword ptr [ESP + 0x60],EAX
009a00a9  89442468                  MOV dword ptr [ESP + 0x68],EAX
009a00ad  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
009a00b0  894c2464                  MOV dword ptr [ESP + 0x64],ECX
009a00b4  894c246c                  MOV dword ptr [ESP + 0x6c],ECX
009a00b8  f30f114c2470              MOVSS dword ptr [ESP + 0x70],XMM1
009a00be  f30f11442474              MOVSS dword ptr [ESP + 0x74],XMM0
009a00c4  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
009a00c7  741f                      JZ 0x009a00e8
009a00c9  0f10442460                MOVUPS XMM0,xmmword ptr [ESP + 0x60]
009a00ce  f30f104c2458              MOVSS XMM1,dword ptr [ESP + 0x58]
009a00d4  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
009a00d7  f30f7e442470              MOVQ XMM0,qword ptr [ESP + 0x70]
009a00dd  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
009a00e2  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
009a00e6  eb73                      JMP 0x009a015b
009a00e8  8d4c2460                  LEA ECX,[ESP + 0x60]
009a00ec  51                        PUSH ECX
009a00ed  50                        PUSH EAX
009a00ee  8d4f48                    LEA ECX,[EDI + 0x48]
009a00f1  e8ba160000                CALL 0x009a17b0
009a00f6  f30f104c2458              MOVSS XMM1,dword ptr [ESP + 0x58]
009a00fc  f30f1054241c              MOVSS XMM2,dword ptr [ESP + 0x1c]
009a0102  f30f10742420              MOVSS XMM6,dword ptr [ESP + 0x20]
009a0108  f30f107c2424              MOVSS XMM7,dword ptr [ESP + 0x24]
009a010e  eb4b                      JMP 0x009a015b
009a0110  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
009a0113  8d4f48                    LEA ECX,[EDI + 0x48]
009a0116  83e818                    SUB EAX,0x18
009a0119  50                        PUSH EAX
009a011a  8d442434                  LEA EAX,[ESP + 0x34]
009a011e  50                        PUSH EAX
009a011f  e8ec140000                CALL 0x009a1610
009a0124  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
009a0127  0f28c6                    MOVAPS XMM0,XMM6
009a012a  f30f1048e8                MOVSS XMM1,dword ptr [EAX + -0x18]
009a012f  f30f1050ec                MOVSS XMM2,dword ptr [EAX + -0x14]
009a0134  f30f58c1                  ADDSS XMM0,XMM1
009a0138  f30f114c2458              MOVSS dword ptr [ESP + 0x58],XMM1
009a013e  f30f1154241c              MOVSS dword ptr [ESP + 0x1c],XMM2
009a0144  f30f1154245c              MOVSS dword ptr [ESP + 0x5c],XMM2
009a014a  f30f1140f8                MOVSS dword ptr [EAX + -0x8],XMM0
009a014f  0f28c2                    MOVAPS XMM0,XMM2
009a0152  f30f58c7                  ADDSS XMM0,XMM7
009a0156  f30f1140fc                MOVSS dword ptr [EAX + -0x4],XMM0
009a015b  0f28c1                    MOVAPS XMM0,XMM1
009a015e  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
009a0161  0f28e2                    MOVAPS XMM4,XMM2
009a0164  0f28e9                    MOVAPS XMM5,XMM1
009a0167  0f28de                    MOVAPS XMM3,XMM6
009a016a  f30f5844243c              ADDSS XMM0,dword ptr [ESP + 0x3c]
009a0170  f30f58642438              ADDSS XMM4,dword ptr [ESP + 0x38]
009a0176  f30f586c2434              ADDSS XMM5,dword ptr [ESP + 0x34]
009a017c  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
009a0182  0f28c2                    MOVAPS XMM0,XMM2
009a0185  f30f58442440              ADDSS XMM0,dword ptr [ESP + 0x40]
009a018b  f30f58dd                  ADDSS XMM3,XMM5
009a018f  f30f116c2460              MOVSS dword ptr [ESP + 0x60],XMM5
009a0195  f30f11642464              MOVSS dword ptr [ESP + 0x64],XMM4
009a019b  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
009a01a1  0f28c1                    MOVAPS XMM0,XMM1
009a01a4  0f28cd                    MOVAPS XMM1,XMM5
009a01a7  f30f115c2470              MOVSS dword ptr [ESP + 0x70],XMM3
009a01ad  f30f5cce                  SUBSS XMM1,XMM6
009a01b1  f30f5844242c              ADDSS XMM0,dword ptr [ESP + 0x2c]
009a01b7  f30f114c2468              MOVSS dword ptr [ESP + 0x68],XMM1
009a01bd  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
009a01c3  0f28c2                    MOVAPS XMM0,XMM2
009a01c6  0f28d7                    MOVAPS XMM2,XMM7
009a01c9  f30f58d4                  ADDSS XMM2,XMM4
009a01cd  f30f58442428              ADDSS XMM0,dword ptr [ESP + 0x28]
009a01d3  f30f11542474              MOVSS dword ptr [ESP + 0x74],XMM2
009a01d9  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
009a01df  0f28c4                    MOVAPS XMM0,XMM4
009a01e2  f30f5cc7                  SUBSS XMM0,XMM7
009a01e6  f30f1144246c              MOVSS dword ptr [ESP + 0x6c],XMM0
009a01ec  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
009a01ef  7419                      JZ 0x009a020a
009a01f1  0f10442460                MOVUPS XMM0,xmmword ptr [ESP + 0x60]
009a01f6  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
009a01f9  f30f7e442470              MOVQ XMM0,qword ptr [ESP + 0x70]
009a01ff  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
009a0204  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
009a0208  eb0e                      JMP 0x009a0218
009a020a  8d4c2460                  LEA ECX,[ESP + 0x60]
009a020e  51                        PUSH ECX
009a020f  50                        PUSH EAX
009a0210  8d4f48                    LEA ECX,[EDI + 0x48]
009a0213  e898150000                CALL 0x009a17b0
009a0218  f30f1064243c              MOVSS XMM4,dword ptr [ESP + 0x3c]
009a021e  f30f106c2440              MOVSS XMM5,dword ptr [ESP + 0x40]
009a0224  0f28cc                    MOVAPS XMM1,XMM4
009a0227  f30f105c2444              MOVSS XMM3,dword ptr [ESP + 0x44]
009a022d  0f28c5                    MOVAPS XMM0,XMM5
009a0230  f30f1054244c              MOVSS XMM2,dword ptr [ESP + 0x4c]
009a0236  f30f58dc                  ADDSS XMM3,XMM4
009a023a  f30f5c4c2444              SUBSS XMM1,dword ptr [ESP + 0x44]
009a0240  f30f5c44244c              SUBSS XMM0,dword ptr [ESP + 0x4c]
009a0246  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
009a0249  f30f58d5                  ADDSS XMM2,XMM5
009a024d  f30f11642460              MOVSS dword ptr [ESP + 0x60],XMM4
009a0253  f30f116c2464              MOVSS dword ptr [ESP + 0x64],XMM5
009a0259  f30f114c2468              MOVSS dword ptr [ESP + 0x68],XMM1
009a025f  f30f1144246c              MOVSS dword ptr [ESP + 0x6c],XMM0
009a0265  f30f115c2470              MOVSS dword ptr [ESP + 0x70],XMM3
009a026b  f30f11542474              MOVSS dword ptr [ESP + 0x74],XMM2
009a0271  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
009a0274  7419                      JZ 0x009a028f
009a0276  0f10442460                MOVUPS XMM0,xmmword ptr [ESP + 0x60]
009a027b  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
009a027e  f30f7e442470              MOVQ XMM0,qword ptr [ESP + 0x70]
009a0284  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
009a0289  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
009a028d  eb0e                      JMP 0x009a029d
009a028f  8d4c2460                  LEA ECX,[ESP + 0x60]
009a0293  51                        PUSH ECX
009a0294  50                        PUSH EAX
009a0295  8d4f48                    LEA ECX,[EDI + 0x48]
009a0298  e813150000                CALL 0x009a17b0
009a029d  f30f10642438              MOVSS XMM4,dword ptr [ESP + 0x38]
009a02a3  f30f106c2434              MOVSS XMM5,dword ptr [ESP + 0x34]
009a02a9  0f28cc                    MOVAPS XMM1,XMM4
009a02ac  f30f10542420              MOVSS XMM2,dword ptr [ESP + 0x20]
009a02b2  0f28c5                    MOVAPS XMM0,XMM5
009a02b5  f30f105c2424              MOVSS XMM3,dword ptr [ESP + 0x24]
009a02bb  f30f5cca                  SUBSS XMM1,XMM2
009a02bf  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
009a02c2  f30f5cc3                  SUBSS XMM0,XMM3
009a02c6  f30f58d4                  ADDSS XMM2,XMM4
009a02ca  f30f11642460              MOVSS dword ptr [ESP + 0x60],XMM4
009a02d0  f30f58dd                  ADDSS XMM3,XMM5
009a02d4  f30f116c2464              MOVSS dword ptr [ESP + 0x64],XMM5
009a02da  f30f114c2470              MOVSS dword ptr [ESP + 0x70],XMM1
009a02e0  f30f11442474              MOVSS dword ptr [ESP + 0x74],XMM0
009a02e6  f30f11542468              MOVSS dword ptr [ESP + 0x68],XMM2
009a02ec  f30f115c246c              MOVSS dword ptr [ESP + 0x6c],XMM3
009a02f2  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
009a02f5  7419                      JZ 0x009a0310
009a02f7  0f10442460                MOVUPS XMM0,xmmword ptr [ESP + 0x60]
009a02fc  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
009a02ff  f30f7e442470              MOVQ XMM0,qword ptr [ESP + 0x70]
009a0305  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
009a030a  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
009a030e  eb0e                      JMP 0x009a031e
009a0310  8d4c2460                  LEA ECX,[ESP + 0x60]
009a0314  51                        PUSH ECX
009a0315  50                        PUSH EAX
009a0316  8d4f48                    LEA ECX,[EDI + 0x48]
009a0319  e892140000                CALL 0x009a17b0
009a031e  f30f106c242c              MOVSS XMM5,dword ptr [ESP + 0x2c]
009a0324  f30f10742428              MOVSS XMM6,dword ptr [ESP + 0x28]
009a032a  f30f592dd0a2ba00          MULSS XMM5,dword ptr [0x00baa2d0]
009a0332  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
009a0335  f30f105c2458              MOVSS XMM3,dword ptr [ESP + 0x58]
009a033b  0f28d3                    MOVAPS XMM2,XMM3
009a033e  f30f5935d0a2ba00          MULSS XMM6,dword ptr [0x00baa2d0]
009a0346  f30f5cd5                  SUBSS XMM2,XMM5
009a034a  f30f1064241c              MOVSS XMM4,dword ptr [ESP + 0x1c]
009a0350  f30f58eb                  ADDSS XMM5,XMM3
009a0354  0f28cc                    MOVAPS XMM1,XMM4
009a0357  f30f5cce                  SUBSS XMM1,XMM6
009a035b  0f28c4                    MOVAPS XMM0,XMM4
009a035e  f30f58c6                  ADDSS XMM0,XMM6
009a0362  f30f115c2460              MOVSS dword ptr [ESP + 0x60],XMM3
009a0368  f30f11642464              MOVSS dword ptr [ESP + 0x64],XMM4
009a036e  f30f11542470              MOVSS dword ptr [ESP + 0x70],XMM2
009a0374  f30f116c2468              MOVSS dword ptr [ESP + 0x68],XMM5
009a037a  f30f114c2474              MOVSS dword ptr [ESP + 0x74],XMM1
009a0380  f30f1144246c              MOVSS dword ptr [ESP + 0x6c],XMM0
009a0386  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
009a0389  7419                      JZ 0x009a03a4
009a038b  0f10442460                MOVUPS XMM0,xmmword ptr [ESP + 0x60]
009a0390  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
009a0393  f30f7e442470              MOVQ XMM0,qword ptr [ESP + 0x70]
009a0399  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
009a039e  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
009a03a2  eb0e                      JMP 0x009a03b2
009a03a4  8d4c2460                  LEA ECX,[ESP + 0x60]
009a03a8  51                        PUSH ECX
009a03a9  50                        PUSH EAX
009a03aa  8d4f48                    LEA ECX,[EDI + 0x48]
009a03ad  e8fe130000                CALL 0x009a17b0
009a03b2  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
009a03b8  8d44244c                  LEA EAX,[ESP + 0x4c]
009a03bc  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
009a03c3  8b0f                      MOV ECX,dword ptr [EDI]
009a03c5  50                        PUSH EAX
009a03c6  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
009a03cc  8d44245c                  LEA EAX,[ESP + 0x5c]
009a03d0  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
009a03d6  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
009a03dd  50                        PUSH EAX
009a03de  8d44244c                  LEA EAX,[ESP + 0x4c]
009a03e2  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
009a03e8  50                        PUSH EAX
009a03e9  e882f8fcff                CALL 0x0096fc70
009a03ee  f30f1008                  MOVSS XMM1,dword ptr [EAX]
009a03f2  f30f114f0c                MOVSS dword ptr [EDI + 0xc],XMM1
009a03f7  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
009a03fc  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
009a0402  f30f114710                MOVSS dword ptr [EDI + 0x10],XMM0
009a0407  f30f5c44241c              SUBSS XMM0,dword ptr [ESP + 0x1c]
009a040d  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
009a0413  f30f5c4c2458              SUBSS XMM1,dword ptr [ESP + 0x58]
009a0419  f30f59c0                  MULSS XMM0,XMM0
009a041d  f30f59c9                  MULSS XMM1,XMM1
009a0421  f30f58c1                  ADDSS XMM0,XMM1
009a0425  e82656a9ff                CALL 0x00435a50
009a042a  f30f10742454              MOVSS XMM6,dword ptr [ESP + 0x54]
009a0430  0f57c9                    XORPS XMM1,XMM1
009a0433  f30f106c2428              MOVSS XMM5,dword ptr [ESP + 0x28]
009a0439  f30f1064242c              MOVSS XMM4,dword ptr [ESP + 0x2c]
009a043f  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
009a0445  f30f105c2418              MOVSS XMM3,dword ptr [ESP + 0x18]
009a044b  0f2ef1                    UCOMISS XMM6,XMM1
009a044e  9f                        LAHF
009a044f  f6c444                    TEST AH,0x44
009a0452  7b37                      JNP 0x009a048b
009a0454  0f2fc6                    COMISS XMM0,XMM6
009a0457  7632                      JBE 0x009a048b
009a0459  f30f104c2458              MOVSS XMM1,dword ptr [ESP + 0x58]
009a045f  0f28c2                    MOVAPS XMM0,XMM2
009a0462  f30f1064241c              MOVSS XMM4,dword ptr [ESP + 0x1c]
009a0468  f30f59c6                  MULSS XMM0,XMM6
009a046c  f30f5cc8                  SUBSS XMM1,XMM0
009a0470  0f28c3                    MOVAPS XMM0,XMM3
009a0473  f30f59c6                  MULSS XMM0,XMM6
009a0477  f30f5ce0                  SUBSS XMM4,XMM0
009a047b  f30f114f0c                MOVSS dword ptr [EDI + 0xc],XMM1
009a0480  0f28c6                    MOVAPS XMM0,XMM6
009a0483  0f28e9                    MOVAPS XMM5,XMM1
009a0486  f30f116710                MOVSS dword ptr [EDI + 0x10],XMM4
009a048b  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
009a048e  0f28cd                    MOVAPS XMM1,XMM5
009a0491  f30f59d0                  MULSS XMM2,XMM0
009a0495  f30f59d8                  MULSS XMM3,XMM0
009a0499  0f28c4                    MOVAPS XMM0,XMM4
009a049c  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
009a04a4  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
009a04ac  f30f5cca                  SUBSS XMM1,XMM2
009a04b0  f30f116c2460              MOVSS dword ptr [ESP + 0x60],XMM5
009a04b6  f30f58d5                  ADDSS XMM2,XMM5
009a04ba  f30f11642464              MOVSS dword ptr [ESP + 0x64],XMM4
009a04c0  f30f5cc3                  SUBSS XMM0,XMM3
009a04c4  f30f58dc                  ADDSS XMM3,XMM4
009a04c8  f30f114c2470              MOVSS dword ptr [ESP + 0x70],XMM1
009a04ce  f30f11542468              MOVSS dword ptr [ESP + 0x68],XMM2
009a04d4  f30f11442474              MOVSS dword ptr [ESP + 0x74],XMM0
009a04da  f30f115c246c              MOVSS dword ptr [ESP + 0x6c],XMM3
009a04e0  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
009a04e3  741f                      JZ 0x009a0504
009a04e5  0f10442460                MOVUPS XMM0,xmmword ptr [ESP + 0x60]
009a04ea  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
009a04ed  f30f7e442470              MOVQ XMM0,qword ptr [ESP + 0x70]
009a04f3  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
009a04f8  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
009a04fc  5f                        POP EDI
009a04fd  5e                        POP ESI
009a04fe  8be5                      MOV ESP,EBP
009a0500  5d                        POP EBP
009a0501  c20400                    RET 0x4
009a0504  8d4c2460                  LEA ECX,[ESP + 0x60]
009a0508  51                        PUSH ECX
009a0509  50                        PUSH EAX
009a050a  8d4f48                    LEA ECX,[EDI + 0x48]
009a050d  e89e120000                CALL 0x009a17b0
009a0512  5f                        POP EDI
009a0513  5e                        POP ESI
009a0514  8be5                      MOV ESP,EBP
009a0516  5d                        POP EBP
009a0517  c20400                    RET 0x4
