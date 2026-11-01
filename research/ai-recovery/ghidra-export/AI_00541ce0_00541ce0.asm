; J460 NPC AI 0x00541ce0 AI_00541ce0
; types=290
; identities=290.0.0
; entry=00541ce0
00541ce0  55                        PUSH EBP
00541ce1  8bec                      MOV EBP,ESP
00541ce3  83e4f8                    AND ESP,0xfffffff8
00541ce6  81eca4010000              SUB ESP,0x1a4
00541cec  a1b493bf00                MOV EAX,[0x00bf93b4]
00541cf1  33c4                      XOR EAX,ESP
00541cf3  898424a0010000            MOV dword ptr [ESP + 0x1a0],EAX
00541cfa  53                        PUSH EBX
00541cfb  8bd9                      MOV EBX,ECX
00541cfd  56                        PUSH ESI
00541cfe  57                        PUSH EDI
00541cff  895c246c                  MOV dword ptr [ESP + 0x6c],EBX
00541d03  83bb640b000000            CMP dword ptr [EBX + 0xb64],0x0
00541d0a  751f                      JNZ 0x00541d2b
00541d0c  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
00541d16  5f                        POP EDI
00541d17  5e                        POP ESI
00541d18  5b                        POP EBX
00541d19  8b8c24a0010000            MOV ECX,dword ptr [ESP + 0x1a0]
00541d20  33cc                      XOR ECX,ESP
00541d22  e804d45a00                CALL 0x00aef12b
00541d27  8be5                      MOV ESP,EBP
00541d29  5d                        POP EBP
00541d2a  c3                        RET
00541d2b  51                        PUSH ECX
00541d2c  8d842480000000            LEA EAX,[ESP + 0x80]
00541d33  c7042400000000            MOV dword ptr [ESP],0x0
00541d3a  50                        PUSH EAX
00541d3b  e800cf1700                CALL 0x006bec40
00541d40  660f6e9ba00b0000          MOVD XMM3,dword ptr [EBX + 0xba0]
00541d48  8dbb3c030000              LEA EDI,[EBX + 0x33c]
00541d4e  0f5bdb                    CVTDQ2PS XMM3,XMM3
00541d51  6a01                      PUSH 0x1
00541d53  8bcb                      MOV ECX,EBX
00541d55  897c2474                  MOV dword ptr [ESP + 0x74],EDI
00541d59  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00541d5e  0f57d2                    XORPS XMM2,XMM2
00541d61  f30f5c4f04                SUBSS XMM1,dword ptr [EDI + 0x4]
00541d66  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00541d6a  f30f5c07                  SUBSS XMM0,dword ptr [EDI]
00541d6e  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00541d74  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
00541d7a  f30f100d50a9ba00          MOVSS XMM1,dword ptr [0x00baa950]
00541d82  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00541d88  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00541d8e  e8ad701900                CALL 0x006d8e40
00541d93  8b83640b0000              MOV EAX,dword ptr [EBX + 0xb64]
00541d99  83f804                    CMP EAX,0x4
00541d9c  0f85ea010000              JNZ 0x00541f8c
00541da2  8b93a00b0000              MOV EDX,dword ptr [EBX + 0xba0]
00541da8  85d2                      TEST EDX,EDX
00541daa  7e1a                      JLE 0x00541dc6
00541dac  f30f2c83a4030000          CVTTSS2SI EAX,dword ptr [EBX + 0x3a4]
00541db4  f30f2c8ba0030000          CVTTSS2SI ECX,dword ptr [EBX + 0x3a0]
00541dbc  2bc8                      SUB ECX,EAX
00541dbe  03ca                      ADD ECX,EDX
00541dc0  898ba00b0000              MOV dword ptr [EBX + 0xba0],ECX
00541dc6  6a00                      PUSH 0x0
00541dc8  8d8b14040000              LEA ECX,[EBX + 0x414]
00541dce  e82d452a00                CALL 0x007e6300
00541dd3  6a00                      PUSH 0x0
00541dd5  6854bcb100                PUSH 0xb1bc54
00541dda  8d4b48                    LEA ECX,[EBX + 0x48]
00541ddd  e89e85ecff                CALL 0x0040a380
00541de2  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00541de9  744f                      JZ 0x00541e3a
00541deb  8d44247c                  LEA EAX,[ESP + 0x7c]
00541def  0f57d2                    XORPS XMM2,XMM2
00541df2  50                        PUSH EAX
00541df3  8bcb                      MOV ECX,EBX
00541df5  e8d6641900                CALL 0x006d82d0
00541dfa  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00541dfe  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
00541e05  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00541e0a  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
00541e10  9f                        LAHF
00541e11  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00541e17  f6c444                    TEST AH,0x44
00541e1a  7a0d                      JP 0x00541e29
00541e1c  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00541e23  9f                        LAHF
00541e24  f6c444                    TEST AH,0x44
00541e27  7b1d                      JNP 0x00541e46
00541e29  0f57c9                    XORPS XMM1,XMM1
00541e2c  0f2fca                    COMISS XMM1,XMM2
00541e2f  0f97c0                    SETA AL
00541e32  888348010000              MOV byte ptr [EBX + 0x148],AL
00541e38  eb0c                      JMP 0x00541e46
00541e3a  f30f10542410              MOVSS XMM2,dword ptr [ESP + 0x10]
00541e40  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00541e46  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00541e4d  7431                      JZ 0x00541e80
00541e4f  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00541e57  8bcb                      MOV ECX,EBX
00541e59  6a07                      PUSH 0x7
00541e5b  6a00                      PUSH 0x0
00541e5d  e8fe8f1800                CALL 0x006cae60
00541e62  84c0                      TEST AL,AL
00541e64  0f8597000000              JNZ 0x00541f01
00541e6a  6a09                      PUSH 0x9
00541e6c  8bcb                      MOV ECX,EBX
00541e6e  e8ed631900                CALL 0x006d8260
00541e73  84c0                      TEST AL,AL
00541e75  0f8586000000              JNZ 0x00541f01
00541e7b  e94f0c0000                JMP 0x00542acf
00541e80  0f28c8                    MOVAPS XMM1,XMM0
00541e83  f30f59c8                  MULSS XMM1,XMM0
00541e87  0f28c2                    MOVAPS XMM0,XMM2
00541e8a  f30f59c2                  MULSS XMM0,XMM2
00541e8e  f30f58c8                  ADDSS XMM1,XMM0
00541e92  f30f100578acba00          MOVSS XMM0,dword ptr [0x00baac78]
00541e9a  0f2fc1                    COMISS XMM0,XMM1
00541e9d  0f862c0c0000              JBE 0x00542acf
00541ea3  a17816c700                MOV EAX,[0x00c71678]
00541ea8  8bcb                      MOV ECX,EBX
00541eaa  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00541eb0  e88bc91700                CALL 0x006be840
00541eb5  6a00                      PUSH 0x0
00541eb7  6a00                      PUSH 0x0
00541eb9  6a00                      PUSH 0x0
00541ebb  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00541ec1  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00541ec7  68e7030000                PUSH 0x3e7
00541ecc  89442448                  MOV dword ptr [ESP + 0x48],EAX
00541ed0  8d442444                  LEA EAX,[ESP + 0x44]
00541ed4  6a03                      PUSH 0x3
00541ed6  50                        PUSH EAX
00541ed7  894c244c                  MOV dword ptr [ESP + 0x4c],ECX
00541edb  8bce                      MOV ECX,ESI
00541edd  57                        PUSH EDI
00541ede  e80def2a00                CALL 0x007f0df0
00541ee3  84c0                      TEST AL,AL
00541ee5  0f84e40b0000              JZ 0x00542acf
00541eeb  e870d01a00                CALL 0x006eef60
00541ef0  33d2                      XOR EDX,EDX
00541ef2  b914000000                MOV ECX,0x14
00541ef7  f7f1                      DIV ECX
00541ef9  85d2                      TEST EDX,EDX
00541efb  0f85ce0b0000              JNZ 0x00542acf
00541f01  83bba00b000000            CMP dword ptr [EBX + 0xba0],0x0
00541f08  0f8fc10b0000              JG 0x00542acf
00541f0e  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00541f15  b85a000000                MOV EAX,0x5a
00541f1a  ba3c000000                MOV EDX,0x3c
00541f1f  c783640b000010000000      MOV dword ptr [EBX + 0xb64],0x10
00541f29  0f45c2                    CMOVNZ EAX,EDX
00541f2c  8983a00b0000              MOV dword ptr [EBX + 0xba0],EAX
00541f32  741a                      JZ 0x00541f4e
00541f34  8d442474                  LEA EAX,[ESP + 0x74]
00541f38  0f57d2                    XORPS XMM2,XMM2
00541f3b  50                        PUSH EAX
00541f3c  8bcb                      MOV ECX,EBX
00541f3e  e85d661900                CALL 0x006d85a0
00541f43  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00541f47  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00541f4c  eb0c                      JMP 0x00541f5a
00541f4e  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
00541f54  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00541f5a  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00541f61  9f                        LAHF
00541f62  f6c444                    TEST AH,0x44
00541f65  7a11                      JP 0x00541f78
00541f67  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
00541f6e  9f                        LAHF
00541f6f  f6c444                    TEST AH,0x44
00541f72  0f8b570b0000              JNP 0x00542acf
00541f78  0f57c9                    XORPS XMM1,XMM1
00541f7b  0f2fc8                    COMISS XMM1,XMM0
00541f7e  0f97c0                    SETA AL
00541f81  888348010000              MOV byte ptr [EBX + 0x148],AL
00541f87  e9430b0000                JMP 0x00542acf
00541f8c  83f810                    CMP EAX,0x10
00541f8f  0f853c010000              JNZ 0x005420d1
00541f95  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
00541f9d  8bcb                      MOV ECX,EBX
00541f9f  6a00                      PUSH 0x0
00541fa1  e87a6b1900                CALL 0x006d8b20
00541fa6  6a00                      PUSH 0x0
00541fa8  6868d6b100                PUSH 0xb1d668
00541fad  8d4b48                    LEA ECX,[EBX + 0x48]
00541fb0  e8cb83ecff                CALL 0x0040a380
00541fb5  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
00541fb9  740d                      JZ 0x00541fc8
00541fbb  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
00541fc2  0f85070b0000              JNZ 0x00542acf
00541fc8  e893cf1a00                CALL 0x006eef60
00541fcd  83e001                    AND EAX,0x1
00541fd0  c7831004000000000000      MOV dword ptr [EBX + 0x410],0x0
00541fda  83c808                    OR EAX,0x8
00541fdd  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00541fe4  8983640b0000              MOV dword ptr [EBX + 0xb64],EAX
00541fea  7461                      JZ 0x0054204d
00541fec  8d44247c                  LEA EAX,[ESP + 0x7c]
00541ff0  8bcb                      MOV ECX,EBX
00541ff2  50                        PUSH EAX
00541ff3  e8386d1900                CALL 0x006d8d30
00541ff8  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00541ffc  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
00542001  f30f5c17                  SUBSS XMM2,dword ptr [EDI]
00542005  f30f5c5f04                SUBSS XMM3,dword ptr [EDI + 0x4]
0054200a  0f28c2                    MOVAPS XMM0,XMM2
0054200d  f30f11542434              MOVSS dword ptr [ESP + 0x34],XMM2
00542013  0f28cb                    MOVAPS XMM1,XMM3
00542016  f30f59c2                  MULSS XMM0,XMM2
0054201a  f30f59cb                  MULSS XMM1,XMM3
0054201e  f30f115c2438              MOVSS dword ptr [ESP + 0x38],XMM3
00542024  f30f58c8                  ADDSS XMM1,XMM0
00542028  f30f1005d0a9ba00          MOVSS XMM0,dword ptr [0x00baa9d0]
00542030  0f2fc1                    COMISS XMM0,XMM1
00542033  760c                      JBE 0x00542041
00542035  c783640b000008000000      MOV dword ptr [EBX + 0xb64],0x8
0054203f  eb18                      JMP 0x00542059
00542041  c783640b000009000000      MOV dword ptr [EBX + 0xb64],0x9
0054204b  eb0c                      JMP 0x00542059
0054204d  f30f10542410              MOVSS XMM2,dword ptr [ESP + 0x10]
00542053  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
00542059  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
00542060  9f                        LAHF
00542061  f6c444                    TEST AH,0x44
00542064  7a0d                      JP 0x00542073
00542066  0f2e1d44b6c700            UCOMISS XMM3,dword ptr [0x00c7b644]
0054206d  9f                        LAHF
0054206e  f6c444                    TEST AH,0x44
00542071  7b0f                      JNP 0x00542082
00542073  0f57c0                    XORPS XMM0,XMM0
00542076  0f2fc2                    COMISS XMM0,XMM2
00542079  0f97c0                    SETA AL
0054207c  888348010000              MOV byte ptr [EBX + 0x148],AL
00542082  8d44247c                  LEA EAX,[ESP + 0x7c]
00542086  50                        PUSH EAX
00542087  8d4c2438                  LEA ECX,[ESP + 0x38]
0054208b  e8a0df4c00                CALL 0x00a10030
00542090  8b08                      MOV ECX,dword ptr [EAX]
00542092  51                        PUSH ECX
00542093  898b34030000              MOV dword ptr [EBX + 0x334],ECX
00542099  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0054209c  898338030000              MOV dword ptr [EBX + 0x338],EAX
005420a2  33c0                      XOR EAX,EAX
005420a4  83bb640b000008            CMP dword ptr [EBX + 0xb64],0x8
005420ab  c704240000803f            MOV dword ptr [ESP],0x3f800000
005420b2  6a00                      PUSH 0x0
005420b4  6a02                      PUSH 0x2
005420b6  51                        PUSH ECX
005420b7  0f95c0                    SETNZ AL
005420ba  c704240000803f            MOV dword ptr [ESP],0x3f800000
005420c1  83c00b                    ADD EAX,0xb
005420c4  8bcb                      MOV ECX,EBX
005420c6  50                        PUSH EAX
005420c7  e8d44a1900                CALL 0x006d6ba0
005420cc  e9fe090000                JMP 0x00542acf
005420d1  83f808                    CMP EAX,0x8
005420d4  0f8594000000              JNZ 0x0054216e
005420da  6a00                      PUSH 0x0
005420dc  68f001b600                PUSH 0xb601f0
005420e1  8d4b48                    LEA ECX,[EBX + 0x48]
005420e4  e89782ecff                CALL 0x0040a380
005420e9  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
005420ed  7409                      JZ 0x005420f8
005420ef  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
005420f6  750a                      JNZ 0x00542102
005420f8  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
00542102  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
0054210a  0f57d2                    XORPS XMM2,XMM2
0054210d  8bcb                      MOV ECX,EBX
0054210f  e84ca61600                CALL 0x006ac760
00542114  85c0                      TEST EAX,EAX
00542116  0f84b3090000              JZ 0x00542acf
0054211c  68dcd2b100                PUSH 0xb1d2dc
00542121  8d4b48                    LEA ECX,[EBX + 0x48]
00542124  e8678fecff                CALL 0x0040b090
00542129  84c0                      TEST AL,AL
0054212b  0f849e090000              JZ 0x00542acf
00542131  68f4d6b100                PUSH 0xb1d6f4
00542136  8d4b48                    LEA ECX,[EBX + 0x48]
00542139  e8528fecff                CALL 0x0040b090
0054213e  84c0                      TEST AL,AL
00542140  0f8589090000              JNZ 0x00542acf
00542146  8d8c2400010000            LEA ECX,[ESP + 0x100]
0054214d  e8decdefff                CALL 0x0043ef30
00542152  50                        PUSH EAX
00542153  51                        PUSH ECX
00542154  c7042400002041            MOV dword ptr [ESP],0x41200000
0054215b  8bcb                      MOV ECX,EBX
0054215d  6840b6c700                PUSH 0xc7b640
00542162  6a01                      PUSH 0x1
00542164  e867ac1800                CALL 0x006ccdd0
00542169  e961090000                JMP 0x00542acf
0054216e  83f809                    CMP EAX,0x9
00542171  0f8558090000              JNZ 0x00542acf
00542177  6a00                      PUSH 0x0
00542179  687cddb100                PUSH 0xb1dd7c
0054217e  8d4b48                    LEA ECX,[EBX + 0x48]
00542181  e8fa81ecff                CALL 0x0040a380
00542186  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
0054218a  7409                      JZ 0x00542195
0054218c  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
00542193  750a                      JNZ 0x0054219f
00542195  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
0054219f  68dcd2b100                PUSH 0xb1d2dc
005421a4  8d4b48                    LEA ECX,[EBX + 0x48]
005421a7  e8e48eecff                CALL 0x0040b090
005421ac  84c0                      TEST AL,AL
005421ae  0f841b090000              JZ 0x00542acf
005421b4  68f4d6b100                PUSH 0xb1d6f4
005421b9  8d4b48                    LEA ECX,[EBX + 0x48]
005421bc  e8cf8eecff                CALL 0x0040b090
005421c1  84c0                      TEST AL,AL
005421c3  0f8506090000              JNZ 0x00542acf
005421c9  f30f2cb3a4030000          CVTTSS2SI ESI,dword ptr [EBX + 0x3a4]
005421d1  f30f2c83a0030000          CVTTSS2SI EAX,dword ptr [EBX + 0x3a0]
005421d9  2bf0                      SUB ESI,EAX
005421db  89742428                  MOV dword ptr [ESP + 0x28],ESI
005421df  85f6                      TEST ESI,ESI
005421e1  0f8ee8080000              JLE 0x00542acf
005421e7  8b8310040000              MOV EAX,dword ptr [EBX + 0x410]
005421ed  0f1f00                    NOP dword ptr [EAX]
005421f0  660f6ec8                  MOVD XMM1,EAX
005421f4  0f5bc9                    CVTDQ2PS XMM1,XMM1
005421f7  f30f590da0a8ba00          MULSS XMM1,dword ptr [0x00baa8a0]
005421ff  0f28c1                    MOVAPS XMM0,XMM1
00542202  f30f598b38030000          MULSS XMM1,dword ptr [EBX + 0x338]
0054220a  f30f598334030000          MULSS XMM0,dword ptr [EBX + 0x334]
00542212  f30f584f04                ADDSS XMM1,dword ptr [EDI + 0x4]
00542217  f30f5807                  ADDSS XMM0,dword ptr [EDI]
0054221b  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
00542221  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00542227  e834cd1a00                CALL 0x006eef60
0054222c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00542232  6a00                      PUSH 0x0
00542234  50                        PUSH EAX
00542235  6a00                      PUSH 0x0
00542237  53                        PUSH EBX
00542238  6840b6c700                PUSH 0xc7b640
0054223d  8d44242c                  LEA EAX,[ESP + 0x2c]
00542241  50                        PUSH EAX
00542242  6a16                      PUSH 0x16
00542244  68e8030000                PUSH 0x3e8
00542249  e8c2c11b00                CALL 0x006fe410
0054224e  8bc8                      MOV ECX,EAX
00542250  8b10                      MOV EDX,dword ptr [EAX]
00542252  c780e40000000000803f      MOV dword ptr [EAX + 0xe4],0x3f800000
0054225c  c780e80000000000803f      MOV dword ptr [EAX + 0xe8],0x3f800000
00542266  ff520c                    CALL dword ptr [EDX + 0xc]
00542269  a17816c700                MOV EAX,[0x00c71678]
0054226e  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00542274  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
00542277  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
0054227a  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
0054227d  83c0f7                    ADD EAX,-0x9
00542280  83f803                    CMP EAX,0x3
00542283  0f8717030000              JA 0x005425a0
00542289  83ec0c                    SUB ESP,0xc
0054228c  8d442424                  LEA EAX,[ESP + 0x24]
00542290  0f57db                    XORPS XMM3,XMM3
00542293  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0054229b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005422a3  c7042400000000            MOV dword ptr [ESP],0x0
005422aa  50                        PUSH EAX
005422ab  8d842494000000            LEA EAX,[ESP + 0x94]
005422b2  50                        PUSH EAX
005422b3  e8980c2d00                CALL 0x00812f50
005422b8  f30f10842484000000        MOVSS XMM0,dword ptr [ESP + 0x84]
005422c1  0f2e442418                UCOMISS XMM0,dword ptr [ESP + 0x18]
005422c6  9f                        LAHF
005422c7  f6c444                    TEST AH,0x44
005422ca  7a18                      JP 0x005422e4
005422cc  f30f10842488000000        MOVSS XMM0,dword ptr [ESP + 0x88]
005422d5  0f2e44241c                UCOMISS XMM0,dword ptr [ESP + 0x1c]
005422da  9f                        LAHF
005422db  f6c444                    TEST AH,0x44
005422de  0f8b13030000              JNP 0x005425f7
005422e4  32c0                      XOR AL,AL
005422e6  84c0                      TEST AL,AL
005422e8  0f84c8070000              JZ 0x00542ab6
005422ee  e86dcc1a00                CALL 0x006eef60
005422f3  c78424f400000000000000    MOV dword ptr [ESP + 0xf4],0x0
005422fe  c78424f800000000000000    MOV dword ptr [ESP + 0xf8],0x0
00542309  c78424fc00000000000000    MOV dword ptr [ESP + 0xfc],0x0
00542314  660f6ec0                  MOVD XMM0,EAX
00542318  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0054231c  c1e81f                    SHR EAX,0x1f
0054231f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00542328  660f5ac8                  CVTPD2PS XMM1,XMM0
0054232c  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00542334  0f28c1                    MOVAPS XMM0,XMM1
00542337  f30f598b38030000          MULSS XMM1,dword ptr [EBX + 0x338]
0054233f  f30f598334030000          MULSS XMM0,dword ptr [EBX + 0x334]
00542347  f30f58c9                  ADDSS XMM1,XMM1
0054234b  f30f58c0                  ADDSS XMM0,XMM0
0054234f  f30f118c2490000000        MOVSS dword ptr [ESP + 0x90],XMM1
00542358  f30f1184248c000000        MOVSS dword ptr [ESP + 0x8c],XMM0
00542361  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00542368  0f118424d4000000          MOVUPS xmmword ptr [ESP + 0xd4],XMM0
00542370  0f57c0                    XORPS XMM0,XMM0
00542373  0f118424e4000000          MOVUPS xmmword ptr [ESP + 0xe4],XMM0
0054237b  e8e0cb1a00                CALL 0x006eef60
00542380  f30f108b34030000          MOVSS XMM1,dword ptr [EBX + 0x334]
00542388  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00542390  660f6ec0                  MOVD XMM0,EAX
00542394  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00542398  c1e81f                    SHR EAX,0x1f
0054239b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005423a4  660f5ac0                  CVTPD2PS XMM0,XMM0
005423a8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005423b0  f30f5905dcadba00          MULSS XMM0,dword ptr [0x00baaddc]
005423b8  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
005423be  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
005423c4  f30f5cc1                  SUBSS XMM0,XMM1
005423c8  f30f108b38030000          MOVSS XMM1,dword ptr [EBX + 0x338]
005423d0  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
005423d8  f30f11842494000000        MOVSS dword ptr [ESP + 0x94],XMM0
005423e1  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
005423e7  f30f5cc1                  SUBSS XMM0,XMM1
005423eb  f30f11842498000000        MOVSS dword ptr [ESP + 0x98],XMM0
005423f4  e867cb1a00                CALL 0x006eef60
005423f9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005423ff  50                        PUSH EAX
00542400  6a02                      PUSH 0x2
00542402  6a00                      PUSH 0x0
00542404  8d842498000000            LEA EAX,[ESP + 0x98]
0054240b  50                        PUSH EAX
0054240c  8d8424a4000000            LEA EAX,[ESP + 0xa4]
00542413  50                        PUSH EAX
00542414  6a02                      PUSH 0x2
00542416  68e8030000                PUSH 0x3e8
0054241b  e80067eeff                CALL 0x00428b20
00542420  6a01                      PUSH 0x1
00542422  8bf0                      MOV ESI,EAX
00542424  8d8424d8000000            LEA EAX,[ESP + 0xd8]
0054242b  6a00                      PUSH 0x0
0054242d  68ff000000                PUSH 0xff
00542432  6aff                      PUSH -0x1
00542434  8b16                      MOV EDX,dword ptr [ESI]
00542436  8bce                      MOV ECX,ESI
00542438  50                        PUSH EAX
00542439  ff523c                    CALL dword ptr [EDX + 0x3c]
0054243c  f30f10442450              MOVSS XMM0,dword ptr [ESP + 0x50]
00542442  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
0054244c  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
00542454  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
0054245e  e8fdca1a00                CALL 0x006eef60
00542463  660f6ec0                  MOVD XMM0,EAX
00542467  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0054246b  c1e81f                    SHR EAX,0x1f
0054246e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00542477  660f5ac0                  CVTPD2PS XMM0,XMM0
0054247b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00542483  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0054248b  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
00542493  e8c8ca1a00                CALL 0x006eef60
00542498  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054249e  894c2450                  MOV dword ptr [ESP + 0x50],ECX
005424a2  8944244c                  MOV dword ptr [ESP + 0x4c],EAX
005424a6  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
005424ae  c744243c07000000          MOV dword ptr [ESP + 0x3c],0x7
005424b6  8d44244c                  LEA EAX,[ESP + 0x4c]
005424ba  c7442430e8030000          MOV dword ptr [ESP + 0x30],0x3e8
005424c2  50                        PUSH EAX
005424c3  8d442410                  LEA EAX,[ESP + 0x10]
005424c7  50                        PUSH EAX
005424c8  6a00                      PUSH 0x0
005424ca  6840b6c700                PUSH 0xc7b640
005424cf  8d442428                  LEA EAX,[ESP + 0x28]
005424d3  50                        PUSH EAX
005424d4  8d442450                  LEA EAX,[ESP + 0x50]
005424d8  50                        PUSH EAX
005424d9  8d442448                  LEA EAX,[ESP + 0x48]
005424dd  50                        PUSH EAX
005424de  e8fd213200                CALL 0x008646e0
005424e3  8b357816c700              MOV ESI,dword ptr [0x00c71678]
005424e9  8b5c243c                  MOV EBX,dword ptr [ESP + 0x3c]
005424ed  83be1466020002            CMP dword ptr [ESI + 0x26614],0x2
005424f4  0f8cb4020000              JL 0x005427ae
005424fa  8bb620660200              MOV ESI,dword ptr [ESI + 0x26620]
00542500  89742414                  MOV dword ptr [ESP + 0x14],ESI
00542504  e857ca1a00                CALL 0x006eef60
00542509  837c243005                CMP dword ptr [ESP + 0x30],0x5
0054250e  8bf8                      MOV EDI,EAX
00542510  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00542518  a174f6b100                MOV EAX,[0x00b1f674]
0054251d  660fd68424a8000000        MOVQ qword ptr [ESP + 0xa8],XMM0
00542526  89442420                  MOV dword ptr [ESP + 0x20],EAX
0054252a  898424b0000000            MOV dword ptr [ESP + 0xb0],EAX
00542531  0f8577020000              JNZ 0x005427ae
00542537  81fb2c010000              CMP EBX,0x12c
0054253d  0f872e020000              JA 0x00542771
00542543  0f8480010000              JZ 0x005426c9
00542549  83fb46                    CMP EBX,0x46
0054254c  0f84d5000000              JZ 0x00542627
00542552  83fb64                    CMP EBX,0x64
00542555  0f8553020000              JNZ 0x005427ae
0054255b  8b5c240c                  MOV EBX,dword ptr [ESP + 0xc]
0054255f  895c2410                  MOV dword ptr [ESP + 0x10],EBX
00542563  83fb19                    CMP EBX,0x19
00542566  0f8492000000              JZ 0x005425fe
0054256c  8d442458                  LEA EAX,[ESP + 0x58]
00542570  895c2458                  MOV dword ptr [ESP + 0x58],EBX
00542574  50                        PUSH EAX
00542575  8d8424bc000000            LEA EAX,[ESP + 0xbc]
0054257c  8d4e20                    LEA ECX,[ESI + 0x20]
0054257f  50                        PUSH EAX
00542580  e81b63eeff                CALL 0x004288a0
00542585  8b8424c0000000            MOV EAX,dword ptr [ESP + 0xc0]
0054258c  80780d00                  CMP byte ptr [EAX + 0xd],0x0
00542590  750a                      JNZ 0x0054259c
00542592  3b5810                    CMP EBX,dword ptr [EAX + 0x10]
00542595  7c05                      JL 0x0054259c
00542597  3b4620                    CMP EAX,dword ptr [ESI + 0x20]
0054259a  7562                      JNZ 0x005425fe
0054259c  b001                      MOV AL,0x1
0054259e  eb60                      JMP 0x00542600
005425a0  f30f104114                MOVSS XMM0,dword ptr [ECX + 0x14]
005425a5  0f57d2                    XORPS XMM2,XMM2
005425a8  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
005425ae  f30f58c2                  ADDSS XMM0,XMM2
005425b2  0f2fc8                    COMISS XMM1,XMM0
005425b5  0f8229fdffff              JC 0x005422e4
005425bb  f30f10411c                MOVSS XMM0,dword ptr [ECX + 0x1c]
005425c0  f30f5cc2                  SUBSS XMM0,XMM2
005425c4  0f2fc1                    COMISS XMM0,XMM1
005425c7  0f8217fdffff              JC 0x005422e4
005425cd  f30f104118                MOVSS XMM0,dword ptr [ECX + 0x18]
005425d2  f30f104c241c              MOVSS XMM1,dword ptr [ESP + 0x1c]
005425d8  f30f58c2                  ADDSS XMM0,XMM2
005425dc  0f2fc8                    COMISS XMM1,XMM0
005425df  0f82fffcffff              JC 0x005422e4
005425e5  f30f104120                MOVSS XMM0,dword ptr [ECX + 0x20]
005425ea  f30f5cc2                  SUBSS XMM0,XMM2
005425ee  0f2fc1                    COMISS XMM0,XMM1
005425f1  0f82edfcffff              JC 0x005422e4
005425f7  b001                      MOV AL,0x1
005425f9  e9e8fcffff                JMP 0x005422e6
005425fe  32c0                      XOR AL,AL
00542600  85db                      TEST EBX,EBX
00542602  7408                      JZ 0x0054260c
00542604  84c0                      TEST AL,AL
00542606  0f84aa010000              JZ 0x005427b6
0054260c  8b06                      MOV EAX,dword ptr [ESI]
0054260e  8bce                      MOV ECX,ESI
00542610  6a00                      PUSH 0x0
00542612  ff9084000000              CALL dword ptr [EAX + 0x84]
00542618  8bd8                      MOV EBX,EAX
0054261a  895c2410                  MOV dword ptr [ESP + 0x10],EBX
0054261e  895c240c                  MOV dword ptr [ESP + 0xc],EBX
00542622  e98f010000                JMP 0x005427b6
00542627  8b5c240c                  MOV EBX,dword ptr [ESP + 0xc]
0054262b  8bc3                      MOV EAX,EBX
0054262d  c1e80b                    SHR EAX,0xb
00542630  89442440                  MOV dword ptr [ESP + 0x40],EAX
00542634  895c2410                  MOV dword ptr [ESP + 0x10],EBX
00542638  85db                      TEST EBX,EBX
0054263a  742c                      JZ 0x00542668
0054263c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00542642  8b06                      MOV EAX,dword ptr [ESI]
00542644  6a00                      PUSH 0x0
00542646  53                        PUSH EBX
00542647  8d8940a70100              LEA ECX,[ECX + 0x1a740]
0054264d  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
00542650  e82b241f00                CALL 0x00734a80
00542655  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
00542659  50                        PUSH EAX
0054265a  ffd6                      CALL ESI
0054265c  84c0                      TEST AL,AL
0054265e  0f8452010000              JZ 0x005427b6
00542664  8b742414                  MOV ESI,dword ptr [ESP + 0x14]
00542668  8b1d7816c700              MOV EBX,dword ptr [0x00c71678]
0054266e  85ff                      TEST EDI,EDI
00542670  7510                      JNZ 0x00542682
00542672  6854bfb600                PUSH 0xb6bf54
00542677  6a10                      PUSH 0x10
00542679  e842ec4c00                CALL 0x00a112c0
0054267e  83c408                    ADD ESP,0x8
00542681  cc                        INT3
00542682  8b8c24a8000000            MOV ECX,dword ptr [ESP + 0xa8]
00542689  8bd7                      MOV EDX,EDI
0054268b  d3ea                      SHR EDX,CL
0054268d  8b8c24ac000000            MOV ECX,dword ptr [ESP + 0xac]
00542694  33d7                      XOR EDX,EDI
00542696  8bc2                      MOV EAX,EDX
00542698  d3e0                      SHL EAX,CL
0054269a  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
0054269e  33c2                      XOR EAX,EDX
005426a0  8bf8                      MOV EDI,EAX
005426a2  d3ef                      SHR EDI,CL
005426a4  8d8b40a70100              LEA ECX,[EBX + 0x1a740]
005426aa  33f8                      XOR EDI,EAX
005426ac  57                        PUSH EDI
005426ad  e84e221f00                CALL 0x00734900
005426b2  8bd8                      MOV EBX,EAX
005426b4  8b442440                  MOV EAX,dword ptr [ESP + 0x40]
005426b8  83e001                    AND EAX,0x1
005426bb  c1e00b                    SHL EAX,0xb
005426be  0bd8                      OR EBX,EAX
005426c0  895c240c                  MOV dword ptr [ESP + 0xc],EBX
005426c4  e96bffffff                JMP 0x00542634
005426c9  8b5c240c                  MOV EBX,dword ptr [ESP + 0xc]
005426cd  895c2410                  MOV dword ptr [ESP + 0x10],EBX
005426d1  85db                      TEST EBX,EBX
005426d3  7412                      JZ 0x005426e7
005426d5  8b06                      MOV EAX,dword ptr [ESI]
005426d7  8bce                      MOV ECX,ESI
005426d9  53                        PUSH EBX
005426da  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
005426dd  ffd0                      CALL EAX
005426df  84c0                      TEST AL,AL
005426e1  0f84cf000000              JZ 0x005427b6
005426e7  85ff                      TEST EDI,EDI
005426e9  7510                      JNZ 0x005426fb
005426eb  6854bfb600                PUSH 0xb6bf54
005426f0  6a10                      PUSH 0x10
005426f2  e8c9eb4c00                CALL 0x00a112c0
005426f7  83c408                    ADD ESP,0x8
005426fa  cc                        INT3
005426fb  8b8c24a8000000            MOV ECX,dword ptr [ESP + 0xa8]
00542702  8bc7                      MOV EAX,EDI
00542704  d3e8                      SHR EAX,CL
00542706  8b8c24ac000000            MOV ECX,dword ptr [ESP + 0xac]
0054270d  33c7                      XOR EAX,EDI
0054270f  8bd0                      MOV EDX,EAX
00542711  d3e2                      SHL EDX,CL
00542713  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
00542717  33d0                      XOR EDX,EAX
00542719  6a01                      PUSH 0x1
0054271b  6a0a                      PUSH 0xa
0054271d  8bfa                      MOV EDI,EDX
0054271f  6a0a                      PUSH 0xa
00542721  d3ef                      SHR EDI,CL
00542723  33fa                      XOR EDI,EDX
00542725  6a19                      PUSH 0x19
00542727  57                        PUSH EDI
00542728  e8531a1f00                CALL 0x00734180
0054272d  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00542735  8b0d74f6b100              MOV ECX,dword ptr [0x00b1f674]
0054273b  6a00                      PUSH 0x0
0054273d  6a01                      PUSH 0x1
0054273f  6a01                      PUSH 0x1
00542741  50                        PUSH EAX
00542742  8d8424d4000000            LEA EAX,[ESP + 0xd4]
00542749  89bc24d4000000            MOV dword ptr [ESP + 0xd4],EDI
00542750  50                        PUSH EAX
00542751  660fd68424dc000000        MOVQ qword ptr [ESP + 0xdc],XMM0
0054275a  898c24e4000000            MOV dword ptr [ESP + 0xe4],ECX
00542761  e8da2b3200                CALL 0x00865340
00542766  8bd8                      MOV EBX,EAX
00542768  895c240c                  MOV dword ptr [ESP + 0xc],EBX
0054276c  e95cffffff                JMP 0x005426cd
00542771  81fb5e010000              CMP EBX,0x15e
00542777  7535                      JNZ 0x005427ae
00542779  8b5c240c                  MOV EBX,dword ptr [ESP + 0xc]
0054277d  895c2410                  MOV dword ptr [ESP + 0x10],EBX
00542781  85db                      TEST EBX,EBX
00542783  740e                      JZ 0x00542793
00542785  8b06                      MOV EAX,dword ptr [ESI]
00542787  8bce                      MOV ECX,ESI
00542789  53                        PUSH EBX
0054278a  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
0054278d  ffd0                      CALL EAX
0054278f  84c0                      TEST AL,AL
00542791  7423                      JZ 0x005427b6
00542793  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00542799  6a00                      PUSH 0x0
0054279b  8d8940a70100              LEA ECX,[ECX + 0x1a740]
005427a1  e8fa141f00                CALL 0x00733ca0
005427a6  8bd8                      MOV EBX,EAX
005427a8  895c240c                  MOV dword ptr [ESP + 0xc],EBX
005427ac  ebcf                      JMP 0x0054277d
005427ae  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
005427b2  89442410                  MOV dword ptr [ESP + 0x10],EAX
005427b6  8b4c2450                  MOV ECX,dword ptr [ESP + 0x50]
005427ba  6a00                      PUSH 0x0
005427bc  ff742434                  PUSH dword ptr [ESP + 0x34]
005427c0  8b8980650200              MOV ECX,dword ptr [ECX + 0x26580]
005427c6  e8c5d81a00                CALL 0x006f0090
005427cb  8bc8                      MOV ECX,EAX
005427cd  894c2420                  MOV dword ptr [ESP + 0x20],ECX
005427d1  85c9                      TEST ECX,ECX
005427d3  0f84cc020000              JZ 0x00542aa5
005427d9  e8b25c5200                CALL 0x00a68490
005427de  8bda                      MOV EBX,EDX
005427e0  8bc8                      MOV ECX,EAX
005427e2  badb34b6d7                MOV EDX,0xd7b634db
005427e7  895c2440                  MOV dword ptr [ESP + 0x40],EBX
005427eb  f7e2                      MUL EDX
005427ed  bf82de1b43                MOV EDI,0x431bde82
005427f2  89442460                  MOV dword ptr [ESP + 0x60],EAX
005427f6  8bf2                      MOV ESI,EDX
005427f8  8bc1                      MOV EAX,ECX
005427fa  b9db34b6d7                MOV ECX,0xd7b634db
005427ff  f7e7                      MUL EDI
00542801  8bf8                      MOV EDI,EAX
00542803  8954242c                  MOV dword ptr [ESP + 0x2c],EDX
00542807  8bc3                      MOV EAX,EBX
00542809  f7e1                      MUL ECX
0054280b  8bda                      MOV EBX,EDX
0054280d  8bc8                      MOV ECX,EAX
0054280f  8b442440                  MOV EAX,dword ptr [ESP + 0x40]
00542813  ba82de1b43                MOV EDX,0x431bde82
00542818  f7e2                      MUL EDX
0054281a  03ce                      ADD ECX,ESI
0054281c  89442414                  MOV dword ptr [ESP + 0x14],EAX
00542820  83d300                    ADC EBX,0x0
00542823  03f9                      ADD EDI,ECX
00542825  8b4c242c                  MOV ECX,dword ptr [ESP + 0x2c]
00542829  83d100                    ADC ECX,0x0
0054282c  897c2460                  MOV dword ptr [ESP + 0x60],EDI
00542830  33c0                      XOR EAX,EAX
00542832  03d9                      ADD EBX,ECX
00542834  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
00542838  13c0                      ADC EAX,EAX
0054283a  03cb                      ADD ECX,EBX
0054283c  8b5c2420                  MOV EBX,dword ptr [ESP + 0x20]
00542840  13d0                      ADC EDX,EAX
00542842  8db3c8030000              LEA ESI,[EBX + 0x3c8]
00542848  0facd112                  SHRD ECX,EDX,0x12
0054284c  894c2414                  MOV dword ptr [ESP + 0x14],ECX
00542850  8b0e                      MOV ECX,dword ptr [ESI]
00542852  c1ea12                    SHR EDX,0x12
00542855  89542460                  MOV dword ptr [ESP + 0x60],EDX
00542859  c7433400000000            MOV dword ptr [EBX + 0x34],0x0
00542860  c7433800000000            MOV dword ptr [EBX + 0x38],0x0
00542867  85c9                      TEST ECX,ECX
00542869  7414                      JZ 0x0054287f
0054286b  8d44245c                  LEA EAX,[ESP + 0x5c]
0054286f  8974245c                  MOV dword ptr [ESP + 0x5c],ESI
00542873  50                        PUSH EAX
00542874  81c1cc030000              ADD ECX,0x3cc
0054287a  e891c9f8ff                CALL 0x004cf210
0054287f  ff74244c                  PUSH dword ptr [ESP + 0x4c]
00542883  8b03                      MOV EAX,dword ptr [EBX]
00542885  ff742414                  PUSH dword ptr [ESP + 0x14]
00542889  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
0054288d  ff742444                  PUSH dword ptr [ESP + 0x44]
00542891  c70600000000              MOV dword ptr [ESI],0x0
00542897  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0054289d  f30f11833c030000          MOVSS dword ptr [EBX + 0x33c],XMM0
005428a5  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
005428ab  f30f118340030000          MOVSS dword ptr [EBX + 0x340],XMM0
005428b3  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005428bb  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
005428c3  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005428cb  51                        PUSH ECX
005428cc  8bcb                      MOV ECX,EBX
005428ce  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
005428d6  ff5004                    CALL dword ptr [EAX + 0x4]
005428d9  8b742450                  MOV ESI,dword ptr [ESP + 0x50]
005428dd  53                        PUSH EBX
005428de  8b9600830100              MOV EDX,dword ptr [ESI + 0x18300]
005428e4  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
005428ea  8d4101                    LEA EAX,[ECX + 0x1]
005428ed  898214120000              MOV dword ptr [EDX + 0x1214],EAX
005428f3  894b20                    MOV dword ptr [EBX + 0x20],ECX
005428f6  8d8a18120000              LEA ECX,[EDX + 0x1218]
005428fc  e8ff5bedff                CALL 0x00418500
00542901  53                        PUSH EBX
00542902  e8e94f1c00                CALL 0x007078f0
00542907  84c0                      TEST AL,AL
00542909  7407                      JZ 0x00542912
0054290b  51                        PUSH ECX
0054290c  53                        PUSH EBX
0054290d  e8ae501c00                CALL 0x007079c0
00542912  80bb7201000000            CMP byte ptr [EBX + 0x172],0x0
00542919  0f8402010000              JZ 0x00542a21
0054291f  8b8658770600              MOV EAX,dword ptr [ESI + 0x67758]
00542925  3b865c770600              CMP EAX,dword ptr [ESI + 0x6775c]
0054292b  0f84f0000000              JZ 0x00542a21
00542931  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
00542934  8d8e80770600              LEA ECX,[ESI + 0x67780]
0054293a  8b7b28                    MOV EDI,dword ptr [EBX + 0x28]
0054293d  898424a0000000            MOV dword ptr [ESP + 0xa0],EAX
00542944  8d84249c000000            LEA EAX,[ESP + 0x9c]
0054294b  50                        PUSH EAX
0054294c  8d442428                  LEA EAX,[ESP + 0x28]
00542950  89bc24a0000000            MOV dword ptr [ESP + 0xa0],EDI
00542957  50                        PUSH EAX
00542958  e843fb4900                CALL 0x009e24a0
0054295d  8b8680770600              MOV EAX,dword ptr [ESI + 0x67780]
00542963  39442424                  CMP dword ptr [ESP + 0x24],EAX
00542967  7536                      JNZ 0x0054299f
00542969  8d442474                  LEA EAX,[ESP + 0x74]
0054296d  897c2474                  MOV dword ptr [ESP + 0x74],EDI
00542971  50                        PUSH EAX
00542972  8d8424b8000000            LEA EAX,[ESP + 0xb8]
00542979  c744247cffffffff          MOV dword ptr [ESP + 0x7c],0xffffffff
00542981  50                        PUSH EAX
00542982  8d8e80770600              LEA ECX,[ESI + 0x67780]
00542988  e813fb4900                CALL 0x009e24a0
0054298d  8b00                      MOV EAX,dword ptr [EAX]
0054298f  89442424                  MOV dword ptr [ESP + 0x24],EAX
00542993  3b8680770600              CMP EAX,dword ptr [ESI + 0x67780]
00542999  0f8482000000              JZ 0x00542a21
0054299f  8b357816c700              MOV ESI,dword ptr [0x00c71678]
005429a5  33ff                      XOR EDI,EDI
005429a7  81c6a8ba0100              ADD ESI,0x1baa8
005429ad  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
005429b0  2b06                      SUB EAX,dword ptr [ESI]
005429b2  c1f802                    SAR EAX,0x2
005429b5  85c0                      TEST EAX,EAX
005429b7  7468                      JZ 0x00542a21
005429b9  0f1f8000000000            NOP dword ptr [EAX]
005429c0  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
005429c3  8bc1                      MOV EAX,ECX
005429c5  2b06                      SUB EAX,dword ptr [ESI]
005429c7  c1f802                    SAR EAX,0x2
005429ca  85c0                      TEST EAX,EAX
005429cc  7512                      JNZ 0x005429e0
005429ce  68bce6b700                PUSH 0xb7e6bc
005429d3  6a10                      PUSH 0x10
005429d5  e8e6e84c00                CALL 0x00a112c0
005429da  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
005429dd  83c408                    ADD ESP,0x8
005429e0  8b06                      MOV EAX,dword ptr [ESI]
005429e2  2bc8                      SUB ECX,EAX
005429e4  c1f902                    SAR ECX,0x2
005429e7  3bf9                      CMP EDI,ECX
005429e9  7303                      JNC 0x005429ee
005429eb  8d04b8                    LEA EAX,[EAX + EDI*0x4]
005429ee  6840b6c700                PUSH 0xc7b640
005429f3  8d4c241c                  LEA ECX,[ESP + 0x1c]
005429f7  51                        PUSH ECX
005429f8  8b08                      MOV ECX,dword ptr [EAX]
005429fa  53                        PUSH EBX
005429fb  6a06                      PUSH 0x6
005429fd  81c1c81f0000              ADD ECX,0x1fc8
00542a03  e878dc4900                CALL 0x009e0680
00542a08  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00542a0e  47                        INC EDI
00542a0f  81c6a8ba0100              ADD ESI,0x1baa8
00542a15  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00542a18  2b06                      SUB EAX,dword ptr [ESI]
00542a1a  c1f802                    SAR EAX,0x2
00542a1d  3bf8                      CMP EDI,EAX
00542a1f  729f                      JC 0x005429c0
00542a21  e86a5a5200                CALL 0x00a68490
00542a26  8bda                      MOV EBX,EDX
00542a28  8bc8                      MOV ECX,EAX
00542a2a  badb34b6d7                MOV EDX,0xd7b634db
00542a2f  895c242c                  MOV dword ptr [ESP + 0x2c],EBX
00542a33  f7e2                      MUL EDX
00542a35  bf82de1b43                MOV EDI,0x431bde82
00542a3a  89442440                  MOV dword ptr [ESP + 0x40],EAX
00542a3e  8bf2                      MOV ESI,EDX
00542a40  8bc1                      MOV EAX,ECX
00542a42  b9db34b6d7                MOV ECX,0xd7b634db
00542a47  f7e7                      MUL EDI
00542a49  8bf8                      MOV EDI,EAX
00542a4b  89542440                  MOV dword ptr [ESP + 0x40],EDX
00542a4f  8bc3                      MOV EAX,EBX
00542a51  f7e1                      MUL ECX
00542a53  8bda                      MOV EBX,EDX
00542a55  8bc8                      MOV ECX,EAX
00542a57  8b44242c                  MOV EAX,dword ptr [ESP + 0x2c]
00542a5b  ba82de1b43                MOV EDX,0x431bde82
00542a60  f7e2                      MUL EDX
00542a62  03ce                      ADD ECX,ESI
00542a64  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
00542a68  83d300                    ADC EBX,0x0
00542a6b  03f9                      ADD EDI,ECX
00542a6d  8b4c2440                  MOV ECX,dword ptr [ESP + 0x40]
00542a71  83d100                    ADC ECX,0x0
00542a74  897c2450                  MOV dword ptr [ESP + 0x50],EDI
00542a78  33c0                      XOR EAX,EAX
00542a7a  03d9                      ADD EBX,ECX
00542a7c  8b4c242c                  MOV ECX,dword ptr [ESP + 0x2c]
00542a80  13c0                      ADC EAX,EAX
00542a82  03cb                      ADD ECX,EBX
00542a84  13d0                      ADC EDX,EAX
00542a86  0facd112                  SHRD ECX,EDX,0x12
00542a8a  c1ea12                    SHR EDX,0x12
00542a8d  2b4c2414                  SUB ECX,dword ptr [ESP + 0x14]
00542a91  1b542460                  SBB EDX,dword ptr [ESP + 0x60]
00542a95  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
00542a9b  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
00542a9f  111534b6c700              ADC dword ptr [0x00c7b634],EDX
00542aa5  8b01                      MOV EAX,dword ptr [ECX]
00542aa7  ff500c                    CALL dword ptr [EAX + 0xc]
00542aaa  8b5c246c                  MOV EBX,dword ptr [ESP + 0x6c]
00542aae  8b742428                  MOV ESI,dword ptr [ESP + 0x28]
00542ab2  8b7c2470                  MOV EDI,dword ptr [ESP + 0x70]
00542ab6  ff8310040000              INC dword ptr [EBX + 0x410]
00542abc  83ee01                    SUB ESI,0x1
00542abf  8b8310040000              MOV EAX,dword ptr [EBX + 0x410]
00542ac5  89742428                  MOV dword ptr [ESP + 0x28],ESI
00542ac9  0f8521f7ffff              JNZ 0x005421f0
00542acf  8b8368010000              MOV EAX,dword ptr [EBX + 0x168]
00542ad5  2500400000                AND EAX,0x4000
00542ada  83c800                    OR EAX,0x0
00542add  7565                      JNZ 0x00542b44
00542adf  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00542ae5  8bce                      MOV ECX,ESI
00542ae7  e864a81b00                CALL 0x006fd350
00542aec  84c0                      TEST AL,AL
00542aee  7554                      JNZ 0x00542b44
00542af0  8b86f8640200              MOV EAX,dword ptr [ESI + 0x264f8]
00542af6  b907000000                MOV ECX,0x7
00542afb  99                        CDQ
00542afc  f7f9                      IDIV ECX
00542afe  85d2                      TEST EDX,EDX
00542b00  7542                      JNZ 0x00542b44
00542b02  e859c41a00                CALL 0x006eef60
00542b07  51                        PUSH ECX
00542b08  8bcb                      MOV ECX,EBX
00542b0a  660f6ec0                  MOVD XMM0,EAX
00542b0e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00542b12  c1e81f                    SHR EAX,0x1f
00542b15  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00542b1e  660f5ac0                  CVTPD2PS XMM0,XMM0
00542b22  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00542b2a  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00542b32  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
00542b3a  f30f110424                MOVSS dword ptr [ESP],XMM0
00542b3f  e88c391700                CALL 0x006b64d0
00542b44  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
00542b4b  7466                      JZ 0x00542bb3
00542b4d  8d542424                  LEA EDX,[ESP + 0x24]
00542b51  c74424281b000000          MOV dword ptr [ESP + 0x28],0x1b
00542b59  8d4c2428                  LEA ECX,[ESP + 0x28]
00542b5d  c744242400000000          MOV dword ptr [ESP + 0x24],0x0
00542b65  e876dc1700                CALL 0x006c07e0
00542b6a  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
00542b6e  85c0                      TEST EAX,EAX
00542b70  7441                      JZ 0x00542bb3
00542b72  6aff                      PUSH -0x1
00542b74  6a00                      PUSH 0x0
00542b76  ff74242c                  PUSH dword ptr [ESP + 0x2c]
00542b7a  8bcb                      MOV ECX,EBX
00542b7c  50                        PUSH EAX
00542b7d  e8aee31700                CALL 0x006c0f30
00542b82  8b8384030000              MOV EAX,dword ptr [EBX + 0x384]
00542b88  c6837301000000            MOV byte ptr [EBX + 0x173],0x0
00542b8f  898380030000              MOV dword ptr [EBX + 0x380],EAX
00542b95  c7831004000000000000      MOV dword ptr [EBX + 0x410],0x0
00542b9f  c783a00b000000000000      MOV dword ptr [EBX + 0xba0],0x0
00542ba9  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
00542bb3  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00542bbb  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00542bc3  8b8c24ac010000            MOV ECX,dword ptr [ESP + 0x1ac]
00542bca  5f                        POP EDI
00542bcb  5e                        POP ESI
00542bcc  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00542bd4  5b                        POP EBX
00542bd5  33cc                      XOR ECX,ESP
00542bd7  e84fc55a00                CALL 0x00aef12b
00542bdc  8be5                      MOV ESP,EBP
00542bde  5d                        POP EBP
00542bdf  c3                        RET
