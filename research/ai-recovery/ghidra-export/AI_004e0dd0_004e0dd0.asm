; J460 NPC AI 0x004e0dd0 AI_004e0dd0
; types=831
; identities=831.0.0,831.10.0,831.20.0
; entry=004e0dd0
004e0dd0  53                        PUSH EBX
004e0dd1  8bdc                      MOV EBX,ESP
004e0dd3  83ec08                    SUB ESP,0x8
004e0dd6  83e4f8                    AND ESP,0xfffffff8
004e0dd9  83c404                    ADD ESP,0x4
004e0ddc  55                        PUSH EBP
004e0ddd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004e0de0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004e0de4  8bec                      MOV EBP,ESP
004e0de6  6aff                      PUSH -0x1
004e0de8  68433baf00                PUSH 0xaf3b43
004e0ded  64a100000000              MOV EAX,FS:[0x0]
004e0df3  50                        PUSH EAX
004e0df4  53                        PUSH EBX
004e0df5  81ecd0000000              SUB ESP,0xd0
004e0dfb  a1b493bf00                MOV EAX,[0x00bf93b4]
004e0e00  33c5                      XOR EAX,EBP
004e0e02  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004e0e05  56                        PUSH ESI
004e0e06  57                        PUSH EDI
004e0e07  50                        PUSH EAX
004e0e08  8d45f4                    LEA EAX,[EBP + -0xc]
004e0e0b  64a300000000              MOV FS:[0x0],EAX
004e0e11  8bf9                      MOV EDI,ECX
004e0e13  89bd58ffffff              MOV dword ptr [EBP + 0xffffff58],EDI
004e0e19  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
004e0e21  8b8f740b0000              MOV ECX,dword ptr [EDI + 0xb74]
004e0e27  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004e0e2f  2bf0                      SUB ESI,EAX
004e0e31  89b550ffffff              MOV dword ptr [EBP + 0xffffff50],ESI
004e0e37  83f903                    CMP ECX,0x3
004e0e3a  7521                      JNZ 0x004e0e5d
004e0e3c  8b877c0b0000              MOV EAX,dword ptr [EDI + 0xb7c]
004e0e42  3b87c8030000              CMP EAX,dword ptr [EDI + 0x3c8]
004e0e48  0f85a51c0000              JNZ 0x004e2af3
004e0e4e  c787800b000000000000      MOV dword ptr [EDI + 0xb80],0x0
004e0e58  e9961c0000                JMP 0x004e2af3
004e0e5d  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004e0e60  83f901                    CMP ECX,0x1
004e0e63  0f8587020000              JNZ 0x004e10f0
004e0e69  85c0                      TEST EAX,EAX
004e0e6b  0f85821c0000              JNZ 0x004e2af3
004e0e71  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004e0e77  85c0                      TEST EAX,EAX
004e0e79  0f8e21020000              JLE 0x004e10a0
004e0e7f  8bc8                      MOV ECX,EAX
004e0e81  660f6ec1                  MOVD XMM0,ECX
004e0e85  8bc1                      MOV EAX,ECX
004e0e87  0f5bc0                    CVTDQ2PS XMM0,XMM0
004e0e8a  f30f598784030000          MULSS XMM0,dword ptr [EDI + 0x384]
004e0e92  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
004e0e9a  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004e0ea1  0f86f9010000              JBE 0x004e10a0
004e0ea7  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004e0ead  8d41ff                    LEA EAX,[ECX + -0x1]
004e0eb0  8d8d60ffffff              LEA ECX,[EBP + 0xffffff60]
004e0eb6  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004e0ebc  c78560ffffffed000000      MOV dword ptr [EBP + 0xffffff60],0xed
004e0ec6  e8b5584700                CALL 0x00956780
004e0ecb  83ec08                    SUB ESP,0x8
004e0ece  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004e0ed6  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e0edd  6a00                      PUSH 0x0
004e0edf  6a02                      PUSH 0x2
004e0ee1  51                        PUSH ECX
004e0ee2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e0ee9  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004e0eef  ffb560ffffff              PUSH dword ptr [EBP + 0xffffff60]
004e0ef5  e836cd4400                CALL 0x0092dc30
004e0efa  83bfa40b000001            CMP dword ptr [EDI + 0xba4],0x1
004e0f01  b95405b600                MOV ECX,0xb60554
004e0f06  b84805b600                MOV EAX,0xb60548
004e0f0b  0f45c1                    CMOVNZ EAX,ECX
004e0f0e  8bcf                      MOV ECX,EDI
004e0f10  50                        PUSH EAX
004e0f11  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
004e0f17  50                        PUSH EAX
004e0f18  e8d35b1d00                CALL 0x006b6af0
004e0f1d  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
004e0f25  0f57c9                    XORPS XMM1,XMM1
004e0f28  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004e0f30  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004e0f38  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
004e0f40  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e0f48  f30f58c1                  ADDSS XMM0,XMM1
004e0f4c  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
004e0f54  e807e02000                CALL 0x006eef60
004e0f59  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e0f5f  50                        PUSH EAX
004e0f60  6a02                      PUSH 0x2
004e0f62  6a00                      PUSH 0x0
004e0f64  6840b6c700                PUSH 0xc7b640
004e0f69  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
004e0f6f  50                        PUSH EAX
004e0f70  6a02                      PUSH 0x2
004e0f72  68e8030000                PUSH 0x3e8
004e0f77  e8a47bf4ff                CALL 0x00428b20
004e0f7c  6a01                      PUSH 0x1
004e0f7e  8bf0                      MOV ESI,EAX
004e0f80  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e0f86  6a00                      PUSH 0x0
004e0f88  68ff000000                PUSH 0xff
004e0f8d  6aff                      PUSH -0x1
004e0f8f  8b16                      MOV EDX,dword ptr [ESI]
004e0f91  51                        PUSH ECX
004e0f92  8bce                      MOV ECX,ESI
004e0f94  ff523c                    CALL dword ptr [EDX + 0x3c]
004e0f97  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
004e0f9f  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
004e0fa9  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
004e0fb1  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
004e0fbb  e8a0df2000                CALL 0x006eef60
004e0fc0  83bfa40b000001            CMP dword ptr [EDI + 0xba4],0x1
004e0fc7  750a                      JNZ 0x004e0fd3
004e0fc9  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
004e0fd1  eb08                      JMP 0x004e0fdb
004e0fd3  f30f100584adba00          MOVSS XMM0,dword ptr [0x00baad84]
004e0fdb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e0fe1  0f57c9                    XORPS XMM1,XMM1
004e0fe4  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
004e0fec  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
004e0ff4  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004e0ffc  50                        PUSH EAX
004e0ffd  6a00                      PUSH 0x0
004e0fff  57                        PUSH EDI
004e1000  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
004e1006  c78530ffffff0000a040      MOV dword ptr [EBP + 0xffffff30],0x40a00000
004e1010  50                        PUSH EAX
004e1011  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
004e1019  8d8554ffffff              LEA EAX,[EBP + 0xffffff54]
004e101f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e1027  f30f58c1                  ADDSS XMM0,XMM1
004e102b  50                        PUSH EAX
004e102c  6a0a                      PUSH 0xa
004e102e  683f030000                PUSH 0x33f
004e1033  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
004e103b  e8e07af4ff                CALL 0x00428b20
004e1040  8bf0                      MOV ESI,EAX
004e1042  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004e1048  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
004e104e  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004e1055  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
004e105b  8b08                      MOV ECX,dword ptr [EAX]
004e105d  85c9                      TEST ECX,ECX
004e105f  741e                      JZ 0x004e107f
004e1061  898560ffffff              MOV dword ptr [EBP + 0xffffff60],EAX
004e1067  81c1cc030000              ADD ECX,0x3cc
004e106d  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
004e1073  50                        PUSH EAX
004e1074  e897e1feff                CALL 0x004cf210
004e1079  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004e107f  50                        PUSH EAX
004e1080  8bcf                      MOV ECX,EDI
004e1082  8938                      MOV dword ptr [EAX],EDI
004e1084  e867ccfeff                CALL 0x004cdcf0
004e1089  8b06                      MOV EAX,dword ptr [ESI]
004e108b  8bce                      MOV ECX,ESI
004e108d  ff500c                    CALL dword ptr [EAX + 0xc]
004e1090  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004e1096  8bc8                      MOV ECX,EAX
004e1098  85c0                      TEST EAX,EAX
004e109a  0f8fe1fdffff              JG 0x004e0e81
004e10a0  660f6ec0                  MOVD XMM0,EAX
004e10a4  8d4f48                    LEA ECX,[EDI + 0x48]
004e10a7  0f5bc0                    CVTDQ2PS XMM0,XMM0
004e10aa  6a02                      PUSH 0x2
004e10ac  f30f59051ca9ba00          MULSS XMM0,dword ptr [0x00baa91c]
004e10b4  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004e10bc  e85fa1f2ff                CALL 0x0040b220
004e10c1  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
004e10c9  8d4f48                    LEA ECX,[EDI + 0x48]
004e10cc  6a01                      PUSH 0x1
004e10ce  f30f118094000000          MOVSS dword ptr [EAX + 0x94],XMM0
004e10d6  e845a1f2ff                CALL 0x0040b220
004e10db  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
004e10e3  f30f118094000000          MOVSS dword ptr [EAX + 0x94],XMM0
004e10eb  e9031a0000                JMP 0x004e2af3
004e10f0  83f814                    CMP EAX,0x14
004e10f3  0f8582060000              JNZ 0x004e177b
004e10f9  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e10ff  83f80d                    CMP EAX,0xd
004e1102  0f87eb190000              JA 0x004e2af3
004e1108  0fb680282b4e00            MOVZX EAX,byte ptr [EAX + 0x4e2b28]
004e110f  ff2485142b4e00            JMP dword ptr [EAX*0x4 + 0x4e2b14]
004e1116  6a00                      PUSH 0x0
004e1118  6854bcb100                PUSH 0xb1bc54
004e111d  8d4f48                    LEA ECX,[EDI + 0x48]
004e1120  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e112a  e85192f2ff                CALL 0x0040a380
004e112f  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004e1136  7410                      JZ 0x004e1148
004e1138  ba3c000000                MOV EDX,0x3c
004e113d  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004e1143  e99b190000                JMP 0x004e2ae3
004e1148  e813de2000                CALL 0x006eef60
004e114d  33d2                      XOR EDX,EDX
004e114f  b996000000                MOV ECX,0x96
004e1154  f7f1                      DIV ECX
004e1156  83c23c                    ADD EDX,0x3c
004e1159  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004e115f  e97f190000                JMP 0x004e2ae3
004e1164  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004e1167  85c0                      TEST EAX,EAX
004e1169  0f84c3010000              JZ 0x004e1332
004e116f  80783400                  CMP byte ptr [EAX + 0x34],0x0
004e1173  0f84ab010000              JZ 0x004e1324
004e1179  8d8f14040000              LEA ECX,[EDI + 0x414]
004e117f  6a00                      PUSH 0x0
004e1181  51                        PUSH ECX
004e1182  c704240000403f            MOV dword ptr [ESP],0x3f400000
004e1189  e8b2413000                CALL 0x007e5340
004e118e  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004e1196  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
004e119e  f30f101dc4a3ba00          MOVSS XMM3,dword ptr [0x00baa3c4]
004e11a6  0f2ed4                    UCOMISS XMM2,XMM4
004e11a9  9f                        LAHF
004e11aa  f6c444                    TEST AH,0x44
004e11ad  7b16                      JNP 0x004e11c5
004e11af  0f28ca                    MOVAPS XMM1,XMM2
004e11b2  0f28c2                    MOVAPS XMM0,XMM2
004e11b5  f30f58cb                  ADDSS XMM1,XMM3
004e11b9  f30f59c3                  MULSS XMM0,XMM3
004e11bd  f30f5cc8                  SUBSS XMM1,XMM0
004e11c1  f30f5ed9                  DIVSS XMM3,XMM1
004e11c5  f30f599f60030000          MULSS XMM3,dword ptr [EDI + 0x360]
004e11cd  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
004e11d5  0f2ed4                    UCOMISS XMM2,XMM4
004e11d8  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
004e11e0  9f                        LAHF
004e11e1  f6c444                    TEST AH,0x44
004e11e4  7b13                      JNP 0x004e11f9
004e11e6  0f28c2                    MOVAPS XMM0,XMM2
004e11e9  f30f59d1                  MULSS XMM2,XMM1
004e11ed  f30f58c1                  ADDSS XMM0,XMM1
004e11f1  f30f5cc2                  SUBSS XMM0,XMM2
004e11f5  f30f5ec8                  DIVSS XMM1,XMM0
004e11f9  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
004e1201  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004e1209  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004e120f  85c0                      TEST EAX,EAX
004e1211  7e10                      JLE 0x004e1223
004e1213  2bc6                      SUB EAX,ESI
004e1215  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004e121b  85c0                      TEST EAX,EAX
004e121d  0f8fd0180000              JG 0x004e2af3
004e1223  e838dd2000                CALL 0x006eef60
004e1228  33d2                      XOR EDX,EDX
004e122a  b90f000000                MOV ECX,0xf
004e122f  f7f1                      DIV ECX
004e1231  85d2                      TEST EDX,EDX
004e1233  0f85ba180000              JNZ 0x004e2af3
004e1239  52                        PUSH EDX
004e123a  8d4f48                    LEA ECX,[EDI + 0x48]
004e123d  6850deb100                PUSH 0xb1de50
004e1242  e83991f2ff                CALL 0x0040a380
004e1247  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004e1251  e80add2000                CALL 0x006eef60
004e1256  33d2                      XOR EDX,EDX
004e1258  b996000000                MOV ECX,0x96
004e125d  f7f1                      DIV ECX
004e125f  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
004e1265  8bcf                      MOV ECX,EDI
004e1267  83c23c                    ADD EDX,0x3c
004e126a  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004e1270  ff772c                    PUSH dword ptr [EDI + 0x2c]
004e1273  ff7728                    PUSH dword ptr [EDI + 0x28]
004e1276  50                        PUSH EAX
004e1277  e8e4f91e00                CALL 0x006d0c60
004e127c  33c9                      XOR ECX,ECX
004e127e  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004e1285  898d60ffffff              MOV dword ptr [EBP + 0xffffff60],ECX
004e128b  398d50ffffff              CMP dword ptr [EBP + 0xffffff50],ECX
004e1291  0f867d000000              JBE 0x004e1314
004e1297  8b8548ffffff              MOV EAX,dword ptr [EBP + 0xffffff48]
004e129d  0f1f00                    NOP dword ptr [EAX]
004e12a0  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004e12a3  3bf7                      CMP ESI,EDI
004e12a5  745e                      JZ 0x004e1305
004e12a7  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004e12ad  2500000020                AND EAX,0x20000000
004e12b2  83c800                    OR EAX,0x0
004e12b5  7404                      JZ 0x004e12bb
004e12b7  b201                      MOV DL,0x1
004e12b9  eb02                      JMP 0x004e12bd
004e12bb  32d2                      XOR DL,DL
004e12bd  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004e12c3  2500000020                AND EAX,0x20000000
004e12c8  83c800                    OR EAX,0x0
004e12cb  7404                      JZ 0x004e12d1
004e12cd  b001                      MOV AL,0x1
004e12cf  eb02                      JMP 0x004e12d3
004e12d1  32c0                      XOR AL,AL
004e12d3  3ad0                      CMP DL,AL
004e12d5  7528                      JNZ 0x004e12ff
004e12d7  e884dc2000                CALL 0x006eef60
004e12dc  33d2                      XOR EDX,EDX
004e12de  b996000000                MOV ECX,0x96
004e12e3  f7f1                      DIV ECX
004e12e5  8b86a00b0000              MOV EAX,dword ptr [ESI + 0xba0]
004e12eb  8b8d60ffffff              MOV ECX,dword ptr [EBP + 0xffffff60]
004e12f1  83c23c                    ADD EDX,0x3c
004e12f4  3bc2                      CMP EAX,EDX
004e12f6  0f4cc2                    CMOVL EAX,EDX
004e12f9  8986a00b0000              MOV dword ptr [ESI + 0xba0],EAX
004e12ff  8b8548ffffff              MOV EAX,dword ptr [EBP + 0xffffff48]
004e1305  41                        INC ECX
004e1306  898d60ffffff              MOV dword ptr [EBP + 0xffffff60],ECX
004e130c  3b8d50ffffff              CMP ECX,dword ptr [EBP + 0xffffff50]
004e1312  728c                      JC 0x004e12a0
004e1314  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
004e131a  e89162f3ff                CALL 0x004175b0
004e131f  e9cf170000                JMP 0x004e2af3
004e1324  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004e132b  8d4f48                    LEA ECX,[EDI + 0x48]
004e132e  7511                      JNZ 0x004e1341
004e1330  eb03                      JMP 0x004e1335
004e1332  8d4f48                    LEA ECX,[EDI + 0x48]
004e1335  6a00                      PUSH 0x0
004e1337  6854bcb100                PUSH 0xb1bc54
004e133c  e83f90f2ff                CALL 0x0040a380
004e1341  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e1349  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004e1351  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e1359  e995170000                JMP 0x004e2af3
004e135e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e1366  8d7748                    LEA ESI,[EDI + 0x48]
004e1369  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004e1371  8bce                      MOV ECX,ESI
004e1373  68dcd2b100                PUSH 0xb1d2dc
004e1378  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e1380  e8ab9cf2ff                CALL 0x0040b030
004e1385  84c0                      TEST AL,AL
004e1387  0f84da000000              JZ 0x004e1467
004e138d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004e1393  8d8d60ffffff              LEA ECX,[EBP + 0xffffff60]
004e1399  c78560ffffff09010000      MOV dword ptr [EBP + 0xffffff60],0x109
004e13a3  e8d8534700                CALL 0x00956780
004e13a8  83ec08                    SUB ESP,0x8
004e13ab  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004e13b3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e13ba  6a00                      PUSH 0x0
004e13bc  6a02                      PUSH 0x2
004e13be  51                        PUSH ECX
004e13bf  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e13c6  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004e13cc  ffb560ffffff              PUSH dword ptr [EBP + 0xffffff60]
004e13d2  e859c84400                CALL 0x0092dc30
004e13d7  6840b6c700                PUSH 0xc7b640
004e13dc  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004e13e2  c7854cffffff00000000      MOV dword ptr [EBP + 0xffffff4c],0x0
004e13ec  50                        PUSH EAX
004e13ed  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
004e13f3  c78550ffffff0000c0c0      MOV dword ptr [EBP + 0xffffff50],0xc0c00000
004e13fd  50                        PUSH EAX
004e13fe  8d973c030000              LEA EDX,[EDI + 0x33c]
004e1404  b902000000                MOV ECX,0x2
004e1409  e8e2681f00                CALL 0x006d7cf0
004e140e  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004e1416  0f57c9                    XORPS XMM1,XMM1
004e1419  f30f58c1                  ADDSS XMM0,XMM1
004e141d  83c40c                    ADD ESP,0xc
004e1420  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
004e1428  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e1430  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
004e1438  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
004e1440  e81bdb2000                CALL 0x006eef60
004e1445  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e144b  50                        PUSH EAX
004e144c  6a00                      PUSH 0x0
004e144e  57                        PUSH EDI
004e144f  6840b6c700                PUSH 0xc7b640
004e1454  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
004e145a  50                        PUSH EAX
004e145b  6a00                      PUSH 0x0
004e145d  6a17                      PUSH 0x17
004e145f  e8bc76f4ff                CALL 0x00428b20
004e1464  8d7748                    LEA ESI,[EDI + 0x48]
004e1467  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e146b  740d                      JZ 0x004e147a
004e146d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004e1474  0f8579160000              JNZ 0x004e2af3
004e147a  6a00                      PUSH 0x0
004e147c  6854bcb100                PUSH 0xb1bc54
004e1481  8bce                      MOV ECX,ESI
004e1483  e8f88ef2ff                CALL 0x0040a380
004e1488  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e1492  e95c160000                JMP 0x004e2af3
004e1497  6a00                      PUSH 0x0
004e1499  8d7748                    LEA ESI,[EDI + 0x48]
004e149c  68e802b600                PUSH 0xb602e8
004e14a1  8bce                      MOV ECX,ESI
004e14a3  e8d88ef2ff                CALL 0x0040a380
004e14a8  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004e14b0  0f57d2                    XORPS XMM2,XMM2
004e14b3  f30f580554a3ba00          ADDSS XMM0,dword ptr [0x00baa354]
004e14bb  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004e14c3  8bcf                      MOV ECX,EDI
004e14c5  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004e14cd  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e14d5  f30f5887b40b0000          ADDSS XMM0,dword ptr [EDI + 0xbb4]
004e14dd  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
004e14e5  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004e14ed  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
004e14f5  e866b21c00                CALL 0x006ac760
004e14fa  85c0                      TEST EAX,EAX
004e14fc  0f845b010000              JZ 0x004e165d
004e1502  e859da2000                CALL 0x006eef60
004e1507  660f6ec0                  MOVD XMM0,EAX
004e150b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e150f  c1e81f                    SHR EAX,0x1f
004e1512  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e151b  660f5ac8                  CVTPD2PS XMM1,XMM0
004e151f  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004e1527  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004e152f  f30f580d80a2ba00          ADDSS XMM1,dword ptr [0x00baa280]
004e1537  0f28c1                    MOVAPS XMM0,XMM1
004e153a  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004e1542  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004e154a  f30f118d58ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM1
004e1552  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004e155a  e801da2000                CALL 0x006eef60
004e155f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e1565  8db73c030000              LEA ESI,[EDI + 0x33c]
004e156b  50                        PUSH EAX
004e156c  6a00                      PUSH 0x0
004e156e  57                        PUSH EDI
004e156f  6840b6c700                PUSH 0xc7b640
004e1574  56                        PUSH ESI
004e1575  6a16                      PUSH 0x16
004e1577  68e8030000                PUSH 0x3e8
004e157c  e89f75f4ff                CALL 0x00428b20
004e1581  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
004e1589  f30f1180e4000000          MOVSS dword ptr [EAX + 0xe4],XMM0
004e1591  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
004e1599  f30f1180e8000000          MOVSS dword ptr [EAX + 0xe8],XMM0
004e15a1  c7805c0400001e000000      MOV dword ptr [EAX + 0x45c],0x1e
004e15ab  c780600400001e000000      MOV dword ptr [EAX + 0x460],0x1e
004e15b5  e8a6d92000                CALL 0x006eef60
004e15ba  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e15c0  50                        PUSH EAX
004e15c1  6a00                      PUSH 0x0
004e15c3  6a00                      PUSH 0x0
004e15c5  6840b6c700                PUSH 0xc7b640
004e15ca  56                        PUSH ESI
004e15cb  6a07                      PUSH 0x7
004e15cd  68e8030000                PUSH 0x3e8
004e15d2  e84975f4ff                CALL 0x00428b20
004e15d7  8bf0                      MOV ESI,EAX
004e15d9  e882d92000                CALL 0x006eef60
004e15de  8bce                      MOV ECX,ESI
004e15e0  660f6ec0                  MOVD XMM0,EAX
004e15e4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e15e8  c1e81f                    SHR EAX,0x1f
004e15eb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e15f4  8b06                      MOV EAX,dword ptr [ESI]
004e15f6  660f5ac8                  CVTPD2PS XMM1,XMM0
004e15fa  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004e1602  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
004e160a  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
004e1612  0f28c1                    MOVAPS XMM0,XMM1
004e1615  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004e161d  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004e1625  f30f598d58ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff58]
004e162d  f30f598560ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff60]
004e1635  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
004e163d  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
004e1645  ff500c                    CALL dword ptr [EAX + 0xc]
004e1648  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004e1650  8d7748                    LEA ESI,[EDI + 0x48]
004e1653  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004e165b  eb10                      JMP 0x004e166d
004e165d  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
004e1665  f30f108d58ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff58]
004e166d  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
004e1674  0f2fc8                    COMISS XMM1,XMM0
004e1677  0f8676140000              JBE 0x004e2af3
004e167d  51                        PUSH ECX
004e167e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e1685  6a00                      PUSH 0x0
004e1687  6a02                      PUSH 0x2
004e1689  51                        PUSH ECX
004e168a  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e1691  8bcf                      MOV ECX,EDI
004e1693  6802010000                PUSH 0x102
004e1698  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
004e16a2  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
004e16ac  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004e16b6  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e16c0  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004e16ca  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004e16d4  e8c7541f00                CALL 0x006d6ba0
004e16d9  6a00                      PUSH 0x0
004e16db  6874d5b100                PUSH 0xb1d574
004e16e0  8bce                      MOV ECX,ESI
004e16e2  e8998cf2ff                CALL 0x0040a380
004e16e7  6840b6c700                PUSH 0xc7b640
004e16ec  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004e16f2  b902000000                MOV ECX,0x2
004e16f7  50                        PUSH EAX
004e16f8  6840b6c700                PUSH 0xc7b640
004e16fd  8d973c030000              LEA EDX,[EDI + 0x33c]
004e1703  e8e8651f00                CALL 0x006d7cf0
004e1708  83c40c                    ADD ESP,0xc
004e170b  e850d82000                CALL 0x006eef60
004e1710  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e1716  50                        PUSH EAX
004e1717  6a00                      PUSH 0x0
004e1719  57                        PUSH EDI
004e171a  6840b6c700                PUSH 0xc7b640
004e171f  8d873c030000              LEA EAX,[EDI + 0x33c]
004e1725  50                        PUSH EAX
004e1726  6a16                      PUSH 0x16
004e1728  68e8030000                PUSH 0x3e8
004e172d  e8ee73f4ff                CALL 0x00428b20
004e1732  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
004e173a  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
004e1742  f30f591500a5ba00          MULSS XMM2,dword ptr [0x00baa500]
004e174a  c7805c0400001e000000      MOV dword ptr [EAX + 0x45c],0x1e
004e1754  f30f590d00a5ba00          MULSS XMM1,dword ptr [0x00baa500]
004e175c  c780600400001e000000      MOV dword ptr [EAX + 0x460],0x1e
004e1766  f30f1190e4000000          MOVSS dword ptr [EAX + 0xe4],XMM2
004e176e  f30f1188e8000000          MOVSS dword ptr [EAX + 0xe8],XMM1
004e1776  e978130000                JMP 0x004e2af3
004e177b  83f80a                    CMP EAX,0xa
004e177e  0f857b050000              JNZ 0x004e1cff
004e1784  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e178a  85c0                      TEST EAX,EAX
004e178c  0f8435050000              JZ 0x004e1cc7
004e1792  83f804                    CMP EAX,0x4
004e1795  0f8558130000              JNZ 0x004e2af3
004e179b  6a00                      PUSH 0x0
004e179d  68e4dcb100                PUSH 0xb1dce4
004e17a2  8d4f48                    LEA ECX,[EDI + 0x48]
004e17a5  e8d68bf2ff                CALL 0x0040a380
004e17aa  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004e17b0  85c0                      TEST EAX,EAX
004e17b2  7409                      JZ 0x004e17bd
004e17b4  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
004e17bb  7413                      JZ 0x004e17d0
004e17bd  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
004e17c3  e8a844f5ff                CALL 0x00435c70
004e17c8  8b17                      MOV EDX,dword ptr [EDI]
004e17ca  8bcf                      MOV ECX,EDI
004e17cc  50                        PUSH EAX
004e17cd  ff5224                    CALL dword ptr [EDX + 0x24]
004e17d0  e88bd72000                CALL 0x006eef60
004e17d5  a803                      TEST AL,0x3
004e17d7  7542                      JNZ 0x004e181b
004e17d9  e882d72000                CALL 0x006eef60
004e17de  51                        PUSH ECX
004e17df  8bcf                      MOV ECX,EDI
004e17e1  660f6ec0                  MOVD XMM0,EAX
004e17e5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e17e9  c1e81f                    SHR EAX,0x1f
004e17ec  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e17f5  660f5ac8                  CVTPD2PS XMM1,XMM0
004e17f9  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004e1801  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004e1809  f30f580df8a1ba00          ADDSS XMM1,dword ptr [0x00baa1f8]
004e1811  f30f110c24                MOVSS dword ptr [ESP],XMM1
004e1816  e8b54c1d00                CALL 0x006b64d0
004e181b  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
004e1821  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004e1829  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004e182c  a174f6b100                MOV EAX,[0x00b1f674]
004e1831  51                        PUSH ECX
004e1832  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004e1835  8bcf                      MOV ECX,EDI
004e1837  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
004e183d  c7042400000000            MOV dword ptr [ESP],0x0
004e1844  50                        PUSH EAX
004e1845  660fd645e0                MOVQ qword ptr [EBP + -0x20],XMM0
004e184a  e8f1d31d00                CALL 0x006bec40
004e184f  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
004e1855  85f6                      TEST ESI,ESI
004e1857  7474                      JZ 0x004e18cd
004e1859  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
004e1861  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004e1869  f30f109550ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff50]
004e1871  f30f5cc8                  SUBSS XMM1,XMM0
004e1875  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004e187d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e1885  f30f5cc2                  SUBSS XMM0,XMM2
004e1889  f30f119540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM2
004e1891  f30f59c9                  MULSS XMM1,XMM1
004e1895  f30f59c0                  MULSS XMM0,XMM0
004e1899  f30f58c1                  ADDSS XMM0,XMM1
004e189d  e8ae41f5ff                CALL 0x00435a50
004e18a2  0f2f05d4aaba00            COMISS XMM0,dword ptr [0x00baaad4]
004e18a9  7642                      JBE 0x004e18ed
004e18ab  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
004e18b3  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004e18bb  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004e18c3  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
004e18cb  eb20                      JMP 0x004e18ed
004e18cd  f30f108550ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff50]
004e18d5  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
004e18dd  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
004e18e5  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004e18ed  8d4ddc                    LEA ECX,[EBP + -0x24]
004e18f0  e88b773000                CALL 0x007e9080
004e18f5  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004e18fd  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e1905  f30f5c8540ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff40]
004e190d  f30f5c8d5cffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff5c]
004e1915  d99d3cffffff              FSTP dword ptr [EBP + 0xffffff3c]
004e191b  f30f59c0                  MULSS XMM0,XMM0
004e191f  f30f59c9                  MULSS XMM1,XMM1
004e1923  f30f58c1                  ADDSS XMM0,XMM1
004e1927  e82441f5ff                CALL 0x00435a50
004e192c  f30f5c0594aaba00          SUBSS XMM0,dword ptr [0x00baaa94]
004e1934  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
004e193c  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
004e1942  50                        PUSH EAX
004e1943  8d8d34ffffff              LEA ECX,[EBP + 0xffffff34]
004e1949  f30f5e05b0abba00          DIVSS XMM0,dword ptr [0x00baabb0]
004e1951  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
004e1959  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004e1961  f30f59c1                  MULSS XMM0,XMM1
004e1965  f30f5cc8                  SUBSS XMM1,XMM0
004e1969  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
004e1971  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004e1979  f30f118d58ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM1
004e1981  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
004e1989  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
004e1991  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004e1999  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
004e19a1  e88ae65200                CALL 0x00a10030
004e19a6  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
004e19ac  83feff                    CMP ESI,-0x1
004e19af  744a                      JZ 0x004e19fb
004e19b1  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
004e19b7  0f57d2                    XORPS XMM2,XMM2
004e19ba  50                        PUSH EAX
004e19bb  8bcf                      MOV ECX,EDI
004e19bd  e80e691f00                CALL 0x006d82d0
004e19c2  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
004e19c8  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004e19cc  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004e19d4  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004e19d9  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004e19e1  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
004e19e9  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004e19f1  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
004e19f9  eb20                      JMP 0x004e1a1b
004e19fb  f30f108550ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff50]
004e1a03  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004e1a0b  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
004e1a13  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004e1a1b  a17816c700                MOV EAX,[0x00c71678]
004e1a20  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004e1a26  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
004e1a2c  660f6ec0                  MOVD XMM0,EAX
004e1a30  0f5bc0                    CVTDQ2PS XMM0,XMM0
004e1a33  f30f5e0550a9ba00          DIVSS XMM0,dword ptr [0x00baa950]
004e1a3b  f30f58853cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff3c]
004e1a43  f30f5905a8a7ba00          MULSS XMM0,dword ptr [0x00baa7a8]
004e1a4b  e8d0baf3ff                CALL 0x0041d520
004e1a50  f30f598558ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff58]
004e1a58  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004e1a60  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
004e1a68  e8d3baf3ff                CALL 0x0041d540
004e1a6d  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004e1a75  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
004e1a7d  e89ebaf3ff                CALL 0x0041d520
004e1a82  f30f109d5cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff5c]
004e1a8a  f30f10ad60ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff60]
004e1a92  0f28e3                    MOVAPS XMM4,XMM3
004e1a95  f30f59a53cffffff          MULSS XMM4,dword ptr [EBP + 0xffffff3c]
004e1a9d  0f28cd                    MOVAPS XMM1,XMM5
004e1aa0  f30f59ad3cffffff          MULSS XMM5,dword ptr [EBP + 0xffffff3c]
004e1aa8  f30f59c8                  MULSS XMM1,XMM0
004e1aac  f30f59d8                  MULSS XMM3,XMM0
004e1ab0  f30f5ce1                  SUBSS XMM4,XMM1
004e1ab4  f30f58dd                  ADDSS XMM3,XMM5
004e1ab8  f30f11a560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM4
004e1ac0  f30f119d5cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM3
004e1ac8  83feff                    CMP ESI,-0x1
004e1acb  0f85a7010000              JNZ 0x004e1c78
004e1ad1  ff772c                    PUSH dword ptr [EDI + 0x2c]
004e1ad4  0f57c0                    XORPS XMM0,XMM0
004e1ad7  c78558ffffff00000000      MOV dword ptr [EBP + 0xffffff58],0x0
004e1ae1  ff7728                    PUSH dword ptr [EDI + 0x28]
004e1ae4  8d45dc                    LEA EAX,[EBP + -0x24]
004e1ae7  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004e1aef  50                        PUSH EAX
004e1af0  8bcf                      MOV ECX,EDI
004e1af2  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
004e1afa  e861f11e00                CALL 0x006d0c60
004e1aff  33f6                      XOR ESI,ESI
004e1b01  3975e8                    CMP dword ptr [EBP + -0x18],ESI
004e1b04  0f8656010000              JBE 0x004e1c60
004e1b0a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004e1b10  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004e1b13  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
004e1b16  3bc7                      CMP EAX,EDI
004e1b18  0f84c4000000              JZ 0x004e1be2
004e1b1e  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004e1b26  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
004e1b2e  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
004e1b36  f30f5c903c030000          SUBSS XMM2,dword ptr [EAX + 0x33c]
004e1b3e  0f28c1                    MOVAPS XMM0,XMM1
004e1b41  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
004e1b49  f30f59c1                  MULSS XMM0,XMM1
004e1b4d  0f28ca                    MOVAPS XMM1,XMM2
004e1b50  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
004e1b58  f30f59ca                  MULSS XMM1,XMM2
004e1b5c  f30f58c1                  ADDSS XMM0,XMM1
004e1b60  e8eb3ef5ff                CALL 0x00435a50
004e1b65  8b8558ffffff              MOV EAX,dword ptr [EBP + 0xffffff58]
004e1b6b  0f28d0                    MOVAPS XMM2,XMM0
004e1b6e  0f2f15e49fba00            COMISS XMM2,dword ptr [0x00ba9fe4]
004e1b75  7671                      JBE 0x004e1be8
004e1b77  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
004e1b7f  0f28ca                    MOVAPS XMM1,XMM2
004e1b82  f30f109d30ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff30]
004e1b8a  40                        INC EAX
004e1b8b  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004e1b93  898558ffffff              MOV dword ptr [EBP + 0xffffff58],EAX
004e1b99  f30f10251ca8ba00          MOVSS XMM4,dword ptr [0x00baa81c]
004e1ba1  f30f5ec2                  DIVSS XMM0,XMM2
004e1ba5  f30f5eda                  DIVSS XMM3,XMM2
004e1ba9  f30f58cc                  ADDSS XMM1,XMM4
004e1bad  f30f5ec1                  DIVSS XMM0,XMM1
004e1bb1  f30f5ed9                  DIVSS XMM3,XMM1
004e1bb5  f30f59c4                  MULSS XMM0,XMM4
004e1bb9  f30f59dc                  MULSS XMM3,XMM4
004e1bbd  f30f58853cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff3c]
004e1bc5  f30f589d40ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff40]
004e1bcd  0f28c8                    MOVAPS XMM1,XMM0
004e1bd0  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
004e1bd8  f30f119d40ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM3
004e1be0  eb16                      JMP 0x004e1bf8
004e1be2  8b8558ffffff              MOV EAX,dword ptr [EBP + 0xffffff58]
004e1be8  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
004e1bf0  f30f109d40ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff40]
004e1bf8  46                        INC ESI
004e1bf9  3b75e8                    CMP ESI,dword ptr [EBP + -0x18]
004e1bfc  0f820effffff              JC 0x004e1b10
004e1c02  85c0                      TEST EAX,EAX
004e1c04  7e5a                      JLE 0x004e1c60
004e1c06  660f6ec0                  MOVD XMM0,EAX
004e1c0a  8d8d4cffffff              LEA ECX,[EBP + 0xffffff4c]
004e1c10  0f5bc0                    CVTDQ2PS XMM0,XMM0
004e1c13  f30f5ed8                  DIVSS XMM3,XMM0
004e1c17  f30f5ec8                  DIVSS XMM1,XMM0
004e1c1b  f30f589d60ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff60]
004e1c23  f30f588d5cffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff5c]
004e1c2b  f30f119d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM3
004e1c33  f30f118d50ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM1
004e1c3b  e880e35200                CALL 0x00a0ffc0
004e1c40  f30f108550ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff50]
004e1c48  f30f10954cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff4c]
004e1c50  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004e1c58  f30f119560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM2
004e1c60  8d4ddc                    LEA ECX,[EBP + -0x24]
004e1c63  e84859f3ff                CALL 0x004175b0
004e1c68  f30f109d5cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff5c]
004e1c70  f30f10a560ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff60]
004e1c78  f30f592504a3ba00          MULSS XMM4,dword ptr [0x00baa304]
004e1c80  f30f591d04a3ba00          MULSS XMM3,dword ptr [0x00baa304]
004e1c88  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004e1c90  f30f59e1                  MULSS XMM4,XMM1
004e1c94  f30f59d9                  MULSS XMM3,XMM1
004e1c98  f30f58a760030000          ADDSS XMM4,dword ptr [EDI + 0x360]
004e1ca0  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
004e1ca8  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
004e1cb0  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004e1cb8  c7876c0300009a99593f      MOV dword ptr [EDI + 0x36c],0x3f59999a
004e1cc2  e92c0e0000                JMP 0x004e2af3
004e1cc7  838f6801000001            OR dword ptr [EDI + 0x168],0x1
004e1cce  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
004e1cd5  c787180f000004000000      MOV dword ptr [EDI + 0xf18],0x4
004e1cdf  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e1ce9  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004e1cf0  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004e1cfa  e9e40d0000                JMP 0x004e2ae3
004e1cff  660f6e9fa00b0000          MOVD XMM3,dword ptr [EDI + 0xba0]
004e1d07  0f57d2                    XORPS XMM2,XMM2
004e1d0a  f30f100d50a9ba00          MOVSS XMM1,dword ptr [0x00baa950]
004e1d12  8bcf                      MOV ECX,EDI
004e1d14  0f5bdb                    CVTDQ2PS XMM3,XMM3
004e1d17  6a01                      PUSH 0x1
004e1d19  e822711f00                CALL 0x006d8e40
004e1d1e  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e1d24  85c0                      TEST EAX,EAX
004e1d26  0f84ef0c0000              JZ 0x004e2a1b
004e1d2c  83f804                    CMP EAX,0x4
004e1d2f  0f84d1010000              JZ 0x004e1f06
004e1d35  83f808                    CMP EAX,0x8
004e1d38  0f85bd090000              JNZ 0x004e26fb
004e1d3e  6a00                      PUSH 0x0
004e1d40  8bcf                      MOV ECX,EDI
004e1d42  e809731f00                CALL 0x006d9050
004e1d47  68dcd2b100                PUSH 0xb1d2dc
004e1d4c  8d4f48                    LEA ECX,[EDI + 0x48]
004e1d4f  e8dc92f2ff                CALL 0x0040b030
004e1d54  84c0                      TEST AL,AL
004e1d56  0f8443010000              JZ 0x004e1e9f
004e1d5c  51                        PUSH ECX
004e1d5d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e1d64  6a00                      PUSH 0x0
004e1d66  6a0a                      PUSH 0xa
004e1d68  51                        PUSH ECX
004e1d69  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
004e1d70  8bcf                      MOV ECX,EDI
004e1d72  68d5000000                PUSH 0xd5
004e1d77  e8244e1f00                CALL 0x006d6ba0
004e1d7c  660f6e87c40b0000          MOVD XMM0,dword ptr [EDI + 0xbc4]
004e1d84  b903000000                MOV ECX,0x3
004e1d89  8b8558ffffff              MOV EAX,dword ptr [EBP + 0xffffff58]
004e1d8f  81c73c030000              ADD EDI,0x33c
004e1d95  0f5bc0                    CVTDQ2PS XMM0,XMM0
004e1d98  05e4010000                ADD EAX,0x1e4
004e1d9d  c7854cffffff00000000      MOV dword ptr [EBP + 0xffffff4c],0x0
004e1da7  6840b6c700                PUSH 0xc7b640
004e1dac  50                        PUSH EAX
004e1dad  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
004e1db3  c78550ffffff0000a0c1      MOV dword ptr [EBP + 0xffffff50],0xc1a00000
004e1dbd  50                        PUSH EAX
004e1dbe  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004e1dc6  8bd7                      MOV EDX,EDI
004e1dc8  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004e1dd0  e81b5f1f00                CALL 0x006d7cf0
004e1dd5  83c40c                    ADD ESP,0xc
004e1dd8  e883d12000                CALL 0x006eef60
004e1ddd  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
004e1de5  8bf0                      MOV ESI,EAX
004e1de7  e854b7f3ff                CALL 0x0041d540
004e1dec  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004e1df4  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
004e1dfc  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
004e1e04  e817b7f3ff                CALL 0x0041d520
004e1e09  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004e1e11  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
004e1e17  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e1e1d  56                        PUSH ESI
004e1e1e  6a00                      PUSH 0x0
004e1e20  ffb558ffffff              PUSH dword ptr [EBP + 0xffffff58]
004e1e26  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
004e1e2e  50                        PUSH EAX
004e1e2f  57                        PUSH EDI
004e1e30  6a14                      PUSH 0x14
004e1e32  683f030000                PUSH 0x33f
004e1e37  e8e46cf4ff                CALL 0x00428b20
004e1e3c  8bf0                      MOV ESI,EAX
004e1e3e  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
004e1e44  8b16                      MOV EDX,dword ptr [ESI]
004e1e46  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004e1e4d  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
004e1e53  8bce                      MOV ECX,ESI
004e1e55  ff520c                    CALL dword ptr [EDX + 0xc]
004e1e58  6a01                      PUSH 0x1
004e1e5a  68e802b600                PUSH 0xb602e8
004e1e5f  8d4e48                    LEA ECX,[ESI + 0x48]
004e1e62  c786640b000006000000      MOV dword ptr [ESI + 0xb64],0x6
004e1e6c  e80f85f2ff                CALL 0x0040a380
004e1e71  8bbd58ffffff              MOV EDI,dword ptr [EBP + 0xffffff58]
004e1e77  c786b00b0000000000c1      MOV dword ptr [ESI + 0xbb0],0xc1000000
004e1e81  c786b40b0000000070c1      MOV dword ptr [ESI + 0xbb4],0xc1700000
004e1e8b  c78650030000000070c1      MOV dword ptr [ESI + 0x350],0xc1700000
004e1e95  c7868801000002000000      MOV dword ptr [ESI + 0x188],0x2
004e1e9f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e1ea3  7409                      JZ 0x004e1eae
004e1ea5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004e1eac  753b                      JNZ 0x004e1ee9
004e1eae  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004e1eb5  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e1ebf  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004e1ec9  7407                      JZ 0x004e1ed2
004e1ecb  ba5a000000                MOV EDX,0x5a
004e1ed0  eb11                      JMP 0x004e1ee3
004e1ed2  e889d02000                CALL 0x006eef60
004e1ed7  33d2                      XOR EDX,EDX
004e1ed9  b9b4000000                MOV ECX,0xb4
004e1ede  f7f1                      DIV ECX
004e1ee0  83c25a                    ADD EDX,0x5a
004e1ee3  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004e1ee9  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e1ef1  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004e1ef9  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e1f01  e9f5070000                JMP 0x004e26fb
004e1f06  8b0d18ddb100              MOV ECX,dword ptr [0x00b1dd18]
004e1f0c  a11cddb100                MOV EAX,[0x00b1dd1c]
004e1f11  c7458c0f000000            MOV dword ptr [EBP + -0x74],0xf
004e1f18  c7458808000000            MOV dword ptr [EBP + -0x78],0x8
004e1f1f  898d78ffffff              MOV dword ptr [EBP + 0xffffff78],ECX
004e1f25  89857cffffff              MOV dword ptr [EBP + 0xffffff7c],EAX
004e1f2b  c6458000                  MOV byte ptr [EBP + -0x80],0x0
004e1f2f  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004e1f36  c745b80f000000            MOV dword ptr [EBP + -0x48],0xf
004e1f3d  c745b408000000            MOV dword ptr [EBP + -0x4c],0x8
004e1f44  894da4                    MOV dword ptr [EBP + -0x5c],ECX
004e1f47  8945a8                    MOV dword ptr [EBP + -0x58],EAX
004e1f4a  c645ac00                  MOV byte ptr [EBP + -0x54],0x0
004e1f4e  f30f7e05c0dab100          MOVQ XMM0,qword ptr [0x00b1dac0]
004e1f56  a0c8dab100                MOV AL,[0x00b1dac8]
004e1f5b  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004e1f62  c745cc09000000            MOV dword ptr [EBP + -0x34],0x9
004e1f69  660fd645bc                MOVQ qword ptr [EBP + -0x44],XMM0
004e1f6e  8845c4                    MOV byte ptr [EBP + -0x3c],AL
004e1f71  c645c500                  MOV byte ptr [EBP + -0x3b],0x0
004e1f75  a188dab100                MOV EAX,[0x00b1da88]
004e1f7a  8b0d8cdab100              MOV ECX,dword ptr [0x00b1da8c]
004e1f80  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004e1f87  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
004e1f8e  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004e1f91  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004e1f94  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
004e1f98  51                        PUSH ECX
004e1f99  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
004e1f9d  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
004e1fa3  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004e1faa  8bcf                      MOV ECX,EDI
004e1fac  50                        PUSH EAX
004e1fad  8d45a4                    LEA EAX,[EBP + -0x5c]
004e1fb0  50                        PUSH EAX
004e1fb1  8d45bc                    LEA EAX,[EBP + -0x44]
004e1fb4  50                        PUSH EAX
004e1fb5  8d45d4                    LEA EAX,[EBP + -0x2c]
004e1fb8  50                        PUSH EAX
004e1fb9  e8b2f81d00                CALL 0x006c1870
004e1fbe  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
004e1fc2  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004e1fc5  83fa10                    CMP EDX,0x10
004e1fc8  722c                      JC 0x004e1ff6
004e1fca  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004e1fcd  42                        INC EDX
004e1fce  8bc1                      MOV EAX,ECX
004e1fd0  81fa00100000              CMP EDX,0x1000
004e1fd6  7214                      JC 0x004e1fec
004e1fd8  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e1fdb  83c223                    ADD EDX,0x23
004e1fde  2bc1                      SUB EAX,ECX
004e1fe0  83c0fc                    ADD EAX,-0x4
004e1fe3  83f81f                    CMP EAX,0x1f
004e1fe6  0f87dc000000              JA 0x004e20c8
004e1fec  52                        PUSH EDX
004e1fed  51                        PUSH ECX
004e1fee  e869d16000                CALL 0x00aef15c
004e1ff3  83c408                    ADD ESP,0x8
004e1ff6  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
004e1ffa  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004e1ffd  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004e2004  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004e200b  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004e200f  83fa10                    CMP EDX,0x10
004e2012  722c                      JC 0x004e2040
004e2014  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004e2017  42                        INC EDX
004e2018  8bc1                      MOV EAX,ECX
004e201a  81fa00100000              CMP EDX,0x1000
004e2020  7214                      JC 0x004e2036
004e2022  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e2025  83c223                    ADD EDX,0x23
004e2028  2bc1                      SUB EAX,ECX
004e202a  83c0fc                    ADD EAX,-0x4
004e202d  83f81f                    CMP EAX,0x1f
004e2030  0f8792000000              JA 0x004e20c8
004e2036  52                        PUSH EDX
004e2037  51                        PUSH ECX
004e2038  e81fd16000                CALL 0x00aef15c
004e203d  83c408                    ADD ESP,0x8
004e2040  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004e2044  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004e2047  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
004e204e  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004e2055  c645bc00                  MOV byte ptr [EBP + -0x44],0x0
004e2059  83fa10                    CMP EDX,0x10
004e205c  7228                      JC 0x004e2086
004e205e  8b4da4                    MOV ECX,dword ptr [EBP + -0x5c]
004e2061  42                        INC EDX
004e2062  8bc1                      MOV EAX,ECX
004e2064  81fa00100000              CMP EDX,0x1000
004e206a  7210                      JC 0x004e207c
004e206c  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e206f  83c223                    ADD EDX,0x23
004e2072  2bc1                      SUB EAX,ECX
004e2074  83c0fc                    ADD EAX,-0x4
004e2077  83f81f                    CMP EAX,0x1f
004e207a  774c                      JA 0x004e20c8
004e207c  52                        PUSH EDX
004e207d  51                        PUSH ECX
004e207e  e8d9d06000                CALL 0x00aef15c
004e2083  83c408                    ADD ESP,0x8
004e2086  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e208d  8b558c                    MOV EDX,dword ptr [EBP + -0x74]
004e2090  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
004e2097  c745b80f000000            MOV dword ptr [EBP + -0x48],0xf
004e209e  c645a400                  MOV byte ptr [EBP + -0x5c],0x0
004e20a2  83fa10                    CMP EDX,0x10
004e20a5  7231                      JC 0x004e20d8
004e20a7  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
004e20ad  42                        INC EDX
004e20ae  8bc1                      MOV EAX,ECX
004e20b0  81fa00100000              CMP EDX,0x1000
004e20b6  7216                      JC 0x004e20ce
004e20b8  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e20bb  83c223                    ADD EDX,0x23
004e20be  2bc1                      SUB EAX,ECX
004e20c0  83c0fc                    ADD EAX,-0x4
004e20c3  83f81f                    CMP EAX,0x1f
004e20c6  7606                      JBE 0x004e20ce
004e20c8  ff159488b100              CALL dword ptr [0x00b18894]
004e20ce  52                        PUSH EDX
004e20cf  51                        PUSH ECX
004e20d0  e887d06000                CALL 0x00aef15c
004e20d5  83c408                    ADD ESP,0x8
004e20d8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e20e0  8bcf                      MOV ECX,EDI
004e20e2  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004e20ea  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e20f2  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004e20f9  746d                      JZ 0x004e2168
004e20fb  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
004e2101  0f57d2                    XORPS XMM2,XMM2
004e2104  50                        PUSH EAX
004e2105  e8c6611f00                CALL 0x006d82d0
004e210a  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
004e2112  f30f106004                MOVSS XMM4,dword ptr [EAX + 0x4]
004e2117  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004e211b  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
004e2123  f30f5925b0a4ba00          MULSS XMM4,dword ptr [0x00baa4b0]
004e212b  f30f5905c0a4ba00          MULSS XMM0,dword ptr [0x00baa4c0]
004e2133  f30f5925c0a4ba00          MULSS XMM4,dword ptr [0x00baa4c0]
004e213b  f30f59c3                  MULSS XMM0,XMM3
004e213f  f30f59e3                  MULSS XMM4,XMM3
004e2143  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004e214b  f30f58a764030000          ADDSS XMM4,dword ptr [EDI + 0x364]
004e2153  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004e215b  f30f11a764030000          MOVSS dword ptr [EDI + 0x364],XMM4
004e2163  e9b3030000                JMP 0x004e251b
004e2168  6a00                      PUSH 0x0
004e216a  68000b0001                PUSH 0x1000b00
004e216f  e8bc52f3ff                CALL 0x00417430
004e2174  84c0                      TEST AL,AL
004e2176  7509                      JNZ 0x004e2181
004e2178  83bf380f000000            CMP dword ptr [EDI + 0xf38],0x0
004e217f  740a                      JZ 0x004e218b
004e2181  c787c00b00000a000000      MOV dword ptr [EDI + 0xbc0],0xa
004e218b  6a00                      PUSH 0x0
004e218d  6800020000                PUSH 0x200
004e2192  8bcf                      MOV ECX,EDI
004e2194  e89752f3ff                CALL 0x00417430
004e2199  84c0                      TEST AL,AL
004e219b  7455                      JZ 0x004e21f2
004e219d  e8becd2000                CALL 0x006eef60
004e21a2  33d2                      XOR EDX,EDX
004e21a4  b905000000                MOV ECX,0x5
004e21a9  f7f1                      DIV ECX
004e21ab  85d2                      TEST EDX,EDX
004e21ad  0f85e7010000              JNZ 0x004e239a
004e21b3  e8a8cd2000                CALL 0x006eef60
004e21b8  660f6ec0                  MOVD XMM0,EAX
004e21bc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e21c0  c1e81f                    SHR EAX,0x1f
004e21c3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e21cc  660f5ac0                  CVTPD2PS XMM0,XMM0
004e21d0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e21d8  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004e21e0  e85b051a00                CALL 0x00682740
004e21e5  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e21ed  e9a8010000                JMP 0x004e239a
004e21f2  6a00                      PUSH 0x0
004e21f4  6800010000                PUSH 0x100
004e21f9  8bcf                      MOV ECX,EDI
004e21fb  e83052f3ff                CALL 0x00417430
004e2200  84c0                      TEST AL,AL
004e2202  7560                      JNZ 0x004e2264
004e2204  83bf380f000000            CMP dword ptr [EDI + 0xf38],0x0
004e220b  7557                      JNZ 0x004e2264
004e220d  6a00                      PUSH 0x0
004e220f  6800080001                PUSH 0x1000800
004e2214  8bcf                      MOV ECX,EDI
004e2216  e81552f3ff                CALL 0x00417430
004e221b  84c0                      TEST AL,AL
004e221d  0f8477010000              JZ 0x004e239a
004e2223  8bcf                      MOV ECX,EDI
004e2225  e816c61d00                CALL 0x006be840
004e222a  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004e2232  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e223a  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004e2242  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004e224a  e8117bfbff                CALL 0x00499d60
004e224f  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e2257  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e225f  e936010000                JMP 0x004e239a
004e2264  8bcf                      MOV ECX,EDI
004e2266  e8d5c51d00                CALL 0x006be840
004e226b  ff7720                    PUSH dword ptr [EDI + 0x20]
004e226e  8bcf                      MOV ECX,EDI
004e2270  898538ffffff              MOV dword ptr [EBP + 0xffffff38],EAX
004e2276  6a05                      PUSH 0x5
004e2278  e893a41c00                CALL 0x006ac710
004e227d  84c0                      TEST AL,AL
004e227f  0f8415010000              JZ 0x004e239a
004e2285  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004e228d  8d8f14040000              LEA ECX,[EDI + 0x414]
004e2293  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
004e229b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e22a3  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004e22ab  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004e22b3  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
004e22bb  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004e22c3  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
004e22cb  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e22d3  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004e22db  e8800f3000                CALL 0x007e3260
004e22e0  8b9538ffffff              MOV EDX,dword ptr [EBP + 0xffffff38]
004e22e6  6a01                      PUSH 0x1
004e22e8  6884030000                PUSH 0x384
004e22ed  51                        PUSH ECX
004e22ee  8b823c030000              MOV EAX,dword ptr [EDX + 0x33c]
004e22f4  8d8f14040000              LEA ECX,[EDI + 0x414]
004e22fa  8b9240030000              MOV EDX,dword ptr [EDX + 0x340]
004e2300  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
004e2306  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
004e230c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e2313  50                        PUSH EAX
004e2314  899538ffffff              MOV dword ptr [EBP + 0xffffff38],EDX
004e231a  e8a1103000                CALL 0x007e33c0
004e231f  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004e2327  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004e232f  e82c7afbff                CALL 0x00499d60
004e2334  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e233c  8bb550ffffff              MOV ESI,dword ptr [EBP + 0xffffff50]
004e2342  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e234a  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
004e2352  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
004e235a  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
004e2362  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
004e236a  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
004e2372  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004e237a  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
004e2382  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004e238a  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
004e2392  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e239a  29b7c00b0000              SUB dword ptr [EDI + 0xbc0],ESI
004e23a0  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004e23a8  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004e23b0  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
004e23b8  e883b1f3ff                CALL 0x0041d540
004e23bd  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004e23c5  f30f108550ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff50]
004e23cd  e84eb1f3ff                CALL 0x0041d520
004e23d2  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004e23da  0f28d8                    MOVAPS XMM3,XMM0
004e23dd  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
004e23e5  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
004e23ed  f30f119d50ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM3
004e23f5  f30f59c2                  MULSS XMM0,XMM2
004e23f9  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004e2401  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004e2409  0f28c3                    MOVAPS XMM0,XMM3
004e240c  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
004e2414  f30f59c2                  MULSS XMM0,XMM2
004e2418  f30f10151ca8ba00          MOVSS XMM2,dword ptr [0x00baa81c]
004e2420  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
004e2428  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004e2430  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004e2438  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004e2440  e80b061a00                CALL 0x00682a50
004e2445  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004e244d  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004e2454  746b                      JZ 0x004e24c1
004e2456  e805cb2000                CALL 0x006eef60
004e245b  a803                      TEST AL,0x3
004e245d  7562                      JNZ 0x004e24c1
004e245f  f30f109f9c010000          MOVSS XMM3,dword ptr [EDI + 0x19c]
004e2467  f30f10a7a0010000          MOVSS XMM4,dword ptr [EDI + 0x1a0]
004e246f  0f28c3                    MOVAPS XMM0,XMM3
004e2472  f30f10ad50ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff50]
004e247a  f30f58db                  ADDSS XMM3,XMM3
004e247e  f30f108d60ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff60]
004e2486  0f28d4                    MOVAPS XMM2,XMM4
004e2489  f30f59c1                  MULSS XMM0,XMM1
004e248d  f30f58e4                  ADDSS XMM4,XMM4
004e2491  f30f59d5                  MULSS XMM2,XMM5
004e2495  f30f58d0                  ADDSS XMM2,XMM0
004e2499  f30f59e2                  MULSS XMM4,XMM2
004e249d  f30f59da                  MULSS XMM3,XMM2
004e24a1  f30f5cec                  SUBSS XMM5,XMM4
004e24a5  f30f5ccb                  SUBSS XMM1,XMM3
004e24a9  0f28c5                    MOVAPS XMM0,XMM5
004e24ac  e8af78fbff                CALL 0x00499d60
004e24b1  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e24b9  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e24c1  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004e24c8  7f51                      JG 0x004e251b
004e24ca  e891ca2000                CALL 0x006eef60
004e24cf  660f6ec0                  MOVD XMM0,EAX
004e24d3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e24d7  c1e81f                    SHR EAX,0x1f
004e24da  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e24e3  660f5ac0                  CVTPD2PS XMM0,XMM0
004e24e7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e24ef  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004e24f7  e844021a00                CALL 0x00682740
004e24fc  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e2504  e857ca2000                CALL 0x006eef60
004e2509  33d2                      XOR EDX,EDX
004e250b  b978000000                MOV ECX,0x78
004e2510  f7f1                      DIV ECX
004e2512  83c22d                    ADD EDX,0x2d
004e2515  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
004e251b  e840ca2000                CALL 0x006eef60
004e2520  33d2                      XOR EDX,EDX
004e2522  b950000000                MOV ECX,0x50
004e2527  f7f1                      DIV ECX
004e2529  85d2                      TEST EDX,EDX
004e252b  751f                      JNZ 0x004e254c
004e252d  51                        PUSH ECX
004e252e  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
004e2535  52                        PUSH EDX
004e2536  6a3c                      PUSH 0x3c
004e2538  51                        PUSH ECX
004e2539  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e2540  8bcf                      MOV ECX,EDI
004e2542  68a7000000                PUSH 0xa7
004e2547  e854461f00                CALL 0x006d6ba0
004e254c  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004e2552  8bc8                      MOV ECX,EAX
004e2554  85c0                      TEST EAX,EAX
004e2556  7e12                      JLE 0x004e256a
004e2558  2bc6                      SUB EAX,ESI
004e255a  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004e2560  8bc8                      MOV ECX,EAX
004e2562  85c0                      TEST EAX,EAX
004e2564  0f8f7f000000              JG 0x004e25e9
004e256a  6a14                      PUSH 0x14
004e256c  683f030000                PUSH 0x33f
004e2571  8d45dc                    LEA EAX,[EBP + -0x24]
004e2574  8bcf                      MOV ECX,EDI
004e2576  50                        PUSH EAX
004e2577  33f6                      XOR ESI,ESI
004e2579  e8e2e61e00                CALL 0x006d0c60
004e257e  33c9                      XOR ECX,ECX
004e2580  394de8                    CMP dword ptr [EBP + -0x18],ECX
004e2583  7656                      JBE 0x004e25db
004e2585  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004e258b  2500000020                AND EAX,0x20000000
004e2590  8bf8                      MOV EDI,EAX
004e2592  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004e2595  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e2598  8b8068010000              MOV EAX,dword ptr [EAX + 0x168]
004e259e  2500000020                AND EAX,0x20000000
004e25a3  83c800                    OR EAX,0x0
004e25a6  7404                      JZ 0x004e25ac
004e25a8  b201                      MOV DL,0x1
004e25aa  eb02                      JMP 0x004e25ae
004e25ac  32d2                      XOR DL,DL
004e25ae  8bc7                      MOV EAX,EDI
004e25b0  83c800                    OR EAX,0x0
004e25b3  7404                      JZ 0x004e25b9
004e25b5  b001                      MOV AL,0x1
004e25b7  eb02                      JMP 0x004e25bb
004e25b9  32c0                      XOR AL,AL
004e25bb  3ad0                      CMP DL,AL
004e25bd  7501                      JNZ 0x004e25c0
004e25bf  46                        INC ESI
004e25c0  41                        INC ECX
004e25c1  3b4de8                    CMP ECX,dword ptr [EBP + -0x18]
004e25c4  72cc                      JC 0x004e2592
004e25c6  8bbd58ffffff              MOV EDI,dword ptr [EBP + 0xffffff58]
004e25cc  83fe03                    CMP ESI,0x3
004e25cf  720a                      JC 0x004e25db
004e25d1  c787a00b00003c000000      MOV dword ptr [EDI + 0xba0],0x3c
004e25db  8d4ddc                    LEA ECX,[EBP + -0x24]
004e25de  e8cd4ff3ff                CALL 0x004175b0
004e25e3  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
004e25e9  85c9                      TEST ECX,ECX
004e25eb  0f8f0a010000              JG 0x004e26fb
004e25f1  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004e25f8  741b                      JZ 0x004e2615
004e25fa  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
004e2602  8bcf                      MOV ECX,EDI
004e2604  6a07                      PUSH 0x7
004e2606  6a00                      PUSH 0x0
004e2608  e853881e00                CALL 0x006cae60
004e260d  84c0                      TEST AL,AL
004e260f  0f84e6000000              JZ 0x004e26fb
004e2615  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004e261c  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004e2626  0f849f000000              JZ 0x004e26cb
004e262c  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
004e2632  0f57d2                    XORPS XMM2,XMM2
004e2635  50                        PUSH EAX
004e2636  8bcf                      MOV ECX,EDI
004e2638  e8635f1f00                CALL 0x006d85a0
004e263d  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004e2641  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004e2646  e81577fbff                CALL 0x00499d60
004e264b  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e2653  e8e8001a00                CALL 0x00682740
004e2658  0f2f0510a9ba00            COMISS XMM0,dword ptr [0x00baa910]
004e265f  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
004e2667  724c                      JC 0x004e26b5
004e2669  f30f100d24aaba00          MOVSS XMM1,dword ptr [0x00baaa24]
004e2671  0f2fc8                    COMISS XMM1,XMM0
004e2674  723f                      JC 0x004e26b5
004e2676  d98550ffffff              FLD dword ptr [EBP + 0xffffff50]
004e267c  83ec08                    SUB ESP,0x8
004e267f  dd1c24                    FSTP qword ptr [ESP]
004e2682  e890e26000                CALL 0x00af0917
004e2687  d99d50ffffff              FSTP dword ptr [EBP + 0xffffff50]
004e268d  d98550ffffff              FLD dword ptr [EBP + 0xffffff50]
004e2693  83c408                    ADD ESP,0x8
004e2696  d99d50ffffff              FSTP dword ptr [EBP + 0xffffff50]
004e269c  f30f2c8550ffffff          CVTTSS2SI EAX,dword ptr [EBP + 0xffffff50]
004e26a4  8bcf                      MOV ECX,EDI
004e26a6  6a01                      PUSH 0x1
004e26a8  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004e26ae  e89d691f00                CALL 0x006d9050
004e26b3  eb2d                      JMP 0x004e26e2
004e26b5  b85a000000                MOV EAX,0x5a
004e26ba  8bcf                      MOV ECX,EDI
004e26bc  6a01                      PUSH 0x1
004e26be  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004e26c4  e887691f00                CALL 0x006d9050
004e26c9  eb17                      JMP 0x004e26e2
004e26cb  e890c82000                CALL 0x006eef60
004e26d0  33d2                      XOR EDX,EDX
004e26d2  b95a000000                MOV ECX,0x5a
004e26d7  f7f1                      DIV ECX
004e26d9  83c22d                    ADD EDX,0x2d
004e26dc  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
004e26e2  6a00                      PUSH 0x0
004e26e4  6854ddb100                PUSH 0xb1dd54
004e26e9  8d4f48                    LEA ECX,[EDI + 0x48]
004e26ec  e88f7cf2ff                CALL 0x0040a380
004e26f1  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004e26fb  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004e2700  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004e2707  761c                      JBE 0x004e2725
004e2709  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
004e2711  b801000000                MOV EAX,0x1
004e2716  f30f2cc8                  CVTTSS2SI ECX,XMM0
004e271a  3bc8                      CMP ECX,EAX
004e271c  0f4fc1                    CMOVG EAX,ECX
004e271f  2987a00b0000              SUB dword ptr [EDI + 0xba0],EAX
004e2725  e836c82000                CALL 0x006eef60
004e272a  33d2                      XOR EDX,EDX
004e272c  b906000000                MOV ECX,0x6
004e2731  f7f1                      DIV ECX
004e2733  85d2                      TEST EDX,EDX
004e2735  7542                      JNZ 0x004e2779
004e2737  e824c82000                CALL 0x006eef60
004e273c  51                        PUSH ECX
004e273d  8bcf                      MOV ECX,EDI
004e273f  660f6ec0                  MOVD XMM0,EAX
004e2743  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e2747  c1e81f                    SHR EAX,0x1f
004e274a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e2753  660f5ac0                  CVTPD2PS XMM0,XMM0
004e2757  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e275f  f30f590500a5ba00          MULSS XMM0,dword ptr [0x00baa500]
004e2767  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004e276f  f30f110424                MOVSS dword ptr [ESP],XMM0
004e2774  e8573d1d00                CALL 0x006b64d0
004e2779  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004e2780  0f846d030000              JZ 0x004e2af3
004e2786  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004e278e  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004e2794  50                        PUSH EAX
004e2795  8db73c030000              LEA ESI,[EDI + 0x33c]
004e279b  8bcf                      MOV ECX,EDI
004e279d  56                        PUSH ESI
004e279e  e81d3f1d00                CALL 0x006b66c0
004e27a3  e8b8c72000                CALL 0x006eef60
004e27a8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e27ae  50                        PUSH EAX
004e27af  6a00                      PUSH 0x0
004e27b1  6a00                      PUSH 0x0
004e27b3  6840b6c700                PUSH 0xc7b640
004e27b8  56                        PUSH ESI
004e27b9  6884000000                PUSH 0x84
004e27be  68e8030000                PUSH 0x3e8
004e27c3  e85863f4ff                CALL 0x00428b20
004e27c8  f30f101d20a1ba00          MOVSS XMM3,dword ptr [0x00baa120]
004e27d0  8bf0                      MOV ESI,EAX
004e27d2  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
004e27da  0f28d3                    MOVAPS XMM2,XMM3
004e27dd  51                        PUSH ECX
004e27de  8d8d64ffffff              LEA ECX,[EBP + 0xffffff64]
004e27e4  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e27eb  e80011f4ff                CALL 0x004238f0
004e27f0  8b16                      MOV EDX,dword ptr [ESI]
004e27f2  8bce                      MOV ECX,ESI
004e27f4  6a01                      PUSH 0x1
004e27f6  6a00                      PUSH 0x0
004e27f8  68ff000000                PUSH 0xff
004e27fd  6aff                      PUSH -0x1
004e27ff  50                        PUSH EAX
004e2800  ff523c                    CALL dword ptr [EDX + 0x3c]
004e2803  8b06                      MOV EAX,dword ptr [ESI]
004e2805  8bce                      MOV ECX,ESI
004e2807  ff500c                    CALL dword ptr [EAX + 0xc]
004e280a  6800002000                PUSH 0x200000
004e280f  6800000001                PUSH 0x1000000
004e2814  8bcf                      MOV ECX,EDI
004e2816  e8154cf3ff                CALL 0x00417430
004e281b  84c0                      TEST AL,AL
004e281d  0f85d0020000              JNZ 0x004e2af3
004e2823  c78554ffffff00000000      MOV dword ptr [EBP + 0xffffff54],0x0
004e282d  c78558ffffff0000e0c1      MOV dword ptr [EBP + 0xffffff58],0xc1e00000
004e2837  c78560ffffff04000000      MOV dword ptr [EBP + 0xffffff60],0x4
004e2841  e81ac72000                CALL 0x006eef60
004e2846  660f6ec0                  MOVD XMM0,EAX
004e284a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e284e  c1e81f                    SHR EAX,0x1f
004e2851  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e285a  660f5ac8                  CVTPD2PS XMM1,XMM0
004e285e  f30f10052caeba00          MOVSS XMM0,dword ptr [0x00baae2c]
004e2866  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004e286e  f30f590db4a9ba00          MULSS XMM1,dword ptr [0x00baa9b4]
004e2876  f30f5cc1                  SUBSS XMM0,XMM1
004e287a  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004e2882  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
004e288a  e8b1acf3ff                CALL 0x0041d540
004e288f  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
004e2897  f30f108550ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff50]
004e289f  e87cacf3ff                CALL 0x0041d520
004e28a4  0f28d0                    MOVAPS XMM2,XMM0
004e28a7  8d4d90                    LEA ECX,[EBP + -0x70]
004e28aa  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
004e28b2  0f28c8                    MOVAPS XMM1,XMM0
004e28b5  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
004e28bd  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
004e28c5  0f28ca                    MOVAPS XMM1,XMM2
004e28c8  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
004e28d0  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
004e28d8  e89348f2ff                CALL 0x00407170
004e28dd  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004e28e5  8d8d2cffffff              LEA ECX,[EBP + 0xffffff2c]
004e28eb  8d9524ffffff              LEA EDX,[EBP + 0xffffff24]
004e28f1  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
004e28f9  51                        PUSH ECX
004e28fa  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004e2902  50                        PUSH EAX
004e2903  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
004e290b  8d8554ffffff              LEA EAX,[EBP + 0xffffff54]
004e2911  b902000000                MOV ECX,0x2
004e2916  50                        PUSH EAX
004e2917  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
004e291f  f30f119528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM2
004e2927  e8c4531f00                CALL 0x006d7cf0
004e292c  83c40c                    ADD ESP,0xc
004e292f  8bf0                      MOV ESI,EAX
004e2931  e82ac62000                CALL 0x006eef60
004e2936  6a01                      PUSH 0x1
004e2938  6a00                      PUSH 0x0
004e293a  68ff000000                PUSH 0xff
004e293f  660f6ec0                  MOVD XMM0,EAX
004e2943  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e2949  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e294d  c1e81f                    SHR EAX,0x1f
004e2950  6aff                      PUSH -0x1
004e2952  51                        PUSH ECX
004e2953  8bce                      MOV ECX,ESI
004e2955  c78654030000f4010000      MOV dword ptr [ESI + 0x354],0x1f4
004e295f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e2968  8b06                      MOV EAX,dword ptr [ESI]
004e296a  660f5ac0                  CVTPD2PS XMM0,XMM0
004e296e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e2976  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004e297e  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
004e2986  ff503c                    CALL dword ptr [EAX + 0x3c]
004e2989  83ad60ffffff01            SUB dword ptr [EBP + 0xffffff60],0x1
004e2990  0f85abfeffff              JNZ 0x004e2841
004e2996  6a00                      PUSH 0x0
004e2998  6a0f                      PUSH 0xf
004e299a  ba01000000                MOV EDX,0x1
004e299f  b930094e00                MOV ECX,0x4e0930
004e29a4  e857851200                CALL 0x0060af00
004e29a9  8b8f3c030000              MOV ECX,dword ptr [EDI + 0x33c]
004e29af  8bd0                      MOV EDX,EAX
004e29b1  83c408                    ADD ESP,0x8
004e29b4  898a3c030000              MOV dword ptr [EDX + 0x33c],ECX
004e29ba  8b8f40030000              MOV ECX,dword ptr [EDI + 0x340]
004e29c0  898a40030000              MOV dword ptr [EDX + 0x340],ECX
004e29c6  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
004e29cd  7408                      JZ 0x004e29d7
004e29cf  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004e29d5  eb03                      JMP 0x004e29da
004e29d7  83c8ff                    OR EAX,0xffffffff
004e29da  898250040000              MOV dword ptr [EDX + 0x450],EAX
004e29e0  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004e29e6  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004e29ec  81e100010020              AND ECX,0x20000100
004e29f2  098a68010000              OR dword ptr [EDX + 0x168],ECX
004e29f8  2500004000                AND EAX,0x400000
004e29fd  09826c010000              OR dword ptr [EDX + 0x16c],EAX
004e2a03  8bca                      MOV ECX,EDX
004e2a05  8b87380c0000              MOV EAX,dword ptr [EDI + 0xc38]
004e2a0b  898278040000              MOV dword ptr [EDX + 0x478],EAX
004e2a11  8b02                      MOV EAX,dword ptr [EDX]
004e2a13  ff500c                    CALL dword ptr [EAX + 0xc]
004e2a16  e9d8000000                JMP 0x004e2af3
004e2a1b  6a00                      PUSH 0x0
004e2a1d  6818ddb100                PUSH 0xb1dd18
004e2a22  8d4f48                    LEA ECX,[EDI + 0x48]
004e2a25  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
004e2a2f  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e2a39  e8a27cf2ff                CALL 0x0040a6e0
004e2a3e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004e2a45  7407                      JZ 0x004e2a4e
004e2a47  ba3c000000                MOV EDX,0x3c
004e2a4c  eb11                      JMP 0x004e2a5f
004e2a4e  e80dc52000                CALL 0x006eef60
004e2a53  33d2                      XOR EDX,EDX
004e2a55  b996000000                MOV ECX,0x96
004e2a5a  f7f1                      DIV ECX
004e2a5c  83c23c                    ADD EDX,0x3c
004e2a5f  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004e2a65  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004e2a6f  e8ecc42000                CALL 0x006eef60
004e2a74  660f6ec0                  MOVD XMM0,EAX
004e2a78  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e2a7c  c1e81f                    SHR EAX,0x1f
004e2a7f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e2a88  660f5ac0                  CVTPD2PS XMM0,XMM0
004e2a8c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e2a94  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004e2a9c  e89ffc1900                CALL 0x00682740
004e2aa1  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004e2aa9  8d4f48                    LEA ECX,[EDI + 0x48]
004e2aac  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e2ab4  6a02                      PUSH 0x2
004e2ab6  c787a40b000002000000      MOV dword ptr [EDI + 0xba4],0x2
004e2ac0  e85b87f2ff                CALL 0x0040b220
004e2ac5  6a01                      PUSH 0x1
004e2ac7  8d4f48                    LEA ECX,[EDI + 0x48]
004e2aca  c780940000000000c042      MOV dword ptr [EAX + 0x94],0x42c00000
004e2ad4  e84787f2ff                CALL 0x0040b220
004e2ad9  c780940000000000c042      MOV dword ptr [EAX + 0x94],0x42c00000
004e2ae3  683cc7c500                PUSH 0xc5c73c
004e2ae8  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e2aee  e8fd46f2ff                CALL 0x004071f0
004e2af3  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e2af6  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e2afd  59                        POP ECX
004e2afe  5f                        POP EDI
004e2aff  5e                        POP ESI
004e2b00  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004e2b03  33cd                      XOR ECX,EBP
004e2b05  e821c66000                CALL 0x00aef12b
004e2b0a  8be5                      MOV ESP,EBP
004e2b0c  5d                        POP EBP
004e2b0d  8be3                      MOV ESP,EBX
004e2b0f  5b                        POP EBX
004e2b10  c3                        RET
