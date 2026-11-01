; J460 NPC AI 0x0045fc00 AI_0045fc00
; types=263
; identities=263.0.0
; entry=0045fc00
0045fc00  55                        PUSH EBP
0045fc01  8bec                      MOV EBP,ESP
0045fc03  83e4f8                    AND ESP,0xfffffff8
0045fc06  81ecd0000000              SUB ESP,0xd0
0045fc0c  a1b493bf00                MOV EAX,[0x00bf93b4]
0045fc11  33c4                      XOR EAX,ESP
0045fc13  898424cc000000            MOV dword ptr [ESP + 0xcc],EAX
0045fc1a  56                        PUSH ESI
0045fc1b  57                        PUSH EDI
0045fc1c  8bf9                      MOV EDI,ECX
0045fc1e  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0045fc25  7561                      JNZ 0x0045fc88
0045fc27  83bfc80b000000            CMP dword ptr [EDI + 0xbc8],0x0
0045fc2e  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0045fc38  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045fc42  7518                      JNZ 0x0045fc5c
0045fc44  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0045fc4c  f30f5c0504a9ba00          SUBSS XMM0,dword ptr [0x00baa904]
0045fc54  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0045fc5c  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0045fc62  898734030000              MOV dword ptr [EDI + 0x334],EAX
0045fc68  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0045fc6e  898738030000              MOV dword ptr [EDI + 0x338],EAX
0045fc74  5f                        POP EDI
0045fc75  5e                        POP ESI
0045fc76  8b8c24cc000000            MOV ECX,dword ptr [ESP + 0xcc]
0045fc7d  33cc                      XOR ECX,ESP
0045fc7f  e8a7f46800                CALL 0x00aef12b
0045fc84  8be5                      MOV ESP,EBP
0045fc86  5d                        POP EBP
0045fc87  c3                        RET
0045fc88  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0045fc90  8db73c030000              LEA ESI,[EDI + 0x33c]
0045fc96  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0045fc9e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0045fca6  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0045fcae  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0045fcb6  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0045fcba  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0045fcbf  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0045fcc7  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0045fccf  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0045fcd5  83f803                    CMP EAX,0x3
0045fcd8  0f85d6020000              JNZ 0x0045ffb4
0045fcde  6a00                      PUSH 0x0
0045fce0  6854bcb100                PUSH 0xb1bc54
0045fce5  8d4f48                    LEA ECX,[EDI + 0x48]
0045fce8  e893a6faff                CALL 0x0040a380
0045fced  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0045fcf3  33f6                      XOR ESI,ESI
0045fcf5  81e200000010              AND EDX,0x10000000
0045fcfb  8bc6                      MOV EAX,ESI
0045fcfd  0bc2                      OR EAX,EDX
0045fcff  7418                      JZ 0x0045fd19
0045fd01  a17816c700                MOV EAX,[0x00c71678]
0045fd06  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045fd0c  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0045fd0f  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0045fd13  0f85110a0000              JNZ 0x0046072a
0045fd19  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0045fd21  b90a000000                MOV ECX,0xa
0045fd26  f30f5e8f84030000          DIVSS XMM1,dword ptr [EDI + 0x384]
0045fd2e  b814000000                MOV EAX,0x14
0045fd33  f30f1005f8a1ba00          MOVSS XMM0,dword ptr [0x00baa1f8]
0045fd3b  0f2fc1                    COMISS XMM0,XMM1
0045fd3e  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0045fd46  0f47c1                    CMOVA EAX,ECX
0045fd49  89442408                  MOV dword ptr [ESP + 0x8],EAX
0045fd4d  a17816c700                MOV EAX,[0x00c71678]
0045fd52  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045fd58  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0045fd5e  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0045fd64  03c1                      ADD EAX,ECX
0045fd66  33c9                      XOR ECX,ECX
0045fd68  85c0                      TEST EAX,EAX
0045fd6a  0f4fc8                    CMOVG ECX,EAX
0045fd6d  8d41fe                    LEA EAX,[ECX + -0x2]
0045fd70  83f804                    CMP EAX,0x4
0045fd73  7732                      JA 0x0045fda7
0045fd75  ff248540074600            JMP dword ptr [EAX*0x4 + 0x460740]
0045fda7  83f904                    CMP ECX,0x4
0045fdaa  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0045fdb0  0f9ec0                    SETLE AL
0045fdb3  0bf2                      OR ESI,EDX
0045fdb5  744e                      JZ 0x0045fe05
0045fdb7  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0045fdbb  6a00                      PUSH 0x0
0045fdbd  51                        PUSH ECX
0045fdbe  6a00                      PUSH 0x0
0045fdc0  8bcf                      MOV ECX,EDI
0045fdc2  7534                      JNZ 0x0045fdf8
0045fdc4  682e030000                PUSH 0x32e
0045fdc9  e812ca2400                CALL 0x006ac7e0
0045fdce  6a00                      PUSH 0x0
0045fdd0  51                        PUSH ECX
0045fdd1  6a00                      PUSH 0x0
0045fdd3  6a5e                      PUSH 0x5e
0045fdd5  8bcf                      MOV ECX,EDI
0045fdd7  8bf0                      MOV ESI,EAX
0045fdd9  e802ca2400                CALL 0x006ac7e0
0045fdde  6a00                      PUSH 0x0
0045fde0  51                        PUSH ECX
0045fde1  6a00                      PUSH 0x0
0045fde3  6a55                      PUSH 0x55
0045fde5  8bcf                      MOV ECX,EDI
0045fde7  03f0                      ADD ESI,EAX
0045fde9  e8f2c92400                CALL 0x006ac7e0
0045fdee  03c6                      ADD EAX,ESI
0045fdf0  83f803                    CMP EAX,0x3
0045fdf3  0f9cc0                    SETL AL
0045fdf6  eb0d                      JMP 0x0045fe05
0045fdf8  6a22                      PUSH 0x22
0045fdfa  e8e1c92400                CALL 0x006ac7e0
0045fdff  83f803                    CMP EAX,0x3
0045fe02  0f92c0                    SETC AL
0045fe05  84c0                      TEST AL,AL
0045fe07  7450                      JZ 0x0045fe59
0045fe09  6a00                      PUSH 0x0
0045fe0b  ff74240c                  PUSH dword ptr [ESP + 0xc]
0045fe0f  8bcf                      MOV ECX,EDI
0045fe11  e8fac82400                CALL 0x006ac710
0045fe16  84c0                      TEST AL,AL
0045fe18  743f                      JZ 0x0045fe59
0045fe1a  e841f12800                CALL 0x006eef60
0045fe1f  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
0045fe25  660f6ec0                  MOVD XMM0,EAX
0045fe29  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0045fe2d  c1e81f                    SHR EAX,0x1f
0045fe30  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0045fe39  660f5ac0                  CVTPD2PS XMM0,XMM0
0045fe3d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0045fe45  0f2fc8                    COMISS XMM1,XMM0
0045fe48  760f                      JBE 0x0045fe59
0045fe4a  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0045fe54  e990000000                JMP 0x0045fee9
0045fe59  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0045fe5d  7466                      JZ 0x0045fec5
0045fe5f  a17816c700                MOV EAX,[0x00c71678]
0045fe64  33f6                      XOR ESI,ESI
0045fe66  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045fe6c  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0045fe72  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0045fe78  03c1                      ADD EAX,ECX
0045fe7a  85c0                      TEST EAX,EAX
0045fe7c  0f4ff0                    CMOVG ESI,EAX
0045fe7f  83fe02                    CMP ESI,0x2
0045fe82  7e41                      JLE 0x0045fec5
0045fe84  6a00                      PUSH 0x0
0045fe86  ff74240c                  PUSH dword ptr [ESP + 0xc]
0045fe8a  8bcf                      MOV ECX,EDI
0045fe8c  e87fc82400                CALL 0x006ac710
0045fe91  84c0                      TEST AL,AL
0045fe93  7430                      JZ 0x0045fec5
0045fe95  b80c000000                MOV EAX,0xc
0045fe9a  99                        CDQ
0045fe9b  f7fe                      IDIV ESI
0045fe9d  8bc8                      MOV ECX,EAX
0045fe9f  e86cf12100                CALL 0x0067f010
0045fea4  85c0                      TEST EAX,EAX
0045fea6  751d                      JNZ 0x0045fec5
0045fea8  50                        PUSH EAX
0045fea9  68000a0001                PUSH 0x1000a00
0045feae  8bcf                      MOV ECX,EDI
0045feb0  e87b75fbff                CALL 0x00417430
0045feb5  84c0                      TEST AL,AL
0045feb7  750c                      JNZ 0x0045fec5
0045feb9  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0045fec3  eb24                      JMP 0x0045fee9
0045fec5  6a00                      PUSH 0x0
0045fec7  ff74240c                  PUSH dword ptr [ESP + 0xc]
0045fecb  8bcf                      MOV ECX,EDI
0045fecd  e83ec82400                CALL 0x006ac710
0045fed2  84c0                      TEST AL,AL
0045fed4  741d                      JZ 0x0045fef3
0045fed6  e885f02800                CALL 0x006eef60
0045fedb  a801                      TEST AL,0x1
0045fedd  7514                      JNZ 0x0045fef3
0045fedf  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0045fee9  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0045fef3  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0045fef7  0f852d080000              JNZ 0x0046072a
0045fefd  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0045ff07  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0045ff11  e84af02800                CALL 0x006eef60
0045ff16  83e003                    AND EAX,0x3
0045ff19  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
0045ff1f  e83cf02800                CALL 0x006eef60
0045ff24  660f6ec0                  MOVD XMM0,EAX
0045ff28  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0045ff2c  c1e81f                    SHR EAX,0x1f
0045ff2f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0045ff38  660f5ac0                  CVTPD2PS XMM0,XMM0
0045ff3c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0045ff44  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0045ff4c  f30f5c0578aaba00          SUBSS XMM0,dword ptr [0x00baaa78]
0045ff54  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0045ff5c  e8ffef2800                CALL 0x006eef60
0045ff61  a801                      TEST AL,0x1
0045ff63  750a                      JNZ 0x0045ff6f
0045ff65  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0045ff6d  eb08                      JMP 0x0045ff77
0045ff6f  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0045ff77  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0045ff7f  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
0045ff85  8d41ff                    LEA EAX,[ECX + -0x1]
0045ff88  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045ff8e  85c9                      TEST ECX,ECX
0045ff90  0f8e94070000              JLE 0x0046072a
0045ff96  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0045ffa0  5f                        POP EDI
0045ffa1  5e                        POP ESI
0045ffa2  8b8c24cc000000            MOV ECX,dword ptr [ESP + 0xcc]
0045ffa9  33cc                      XOR ECX,ESP
0045ffab  e87bf16800                CALL 0x00aef12b
0045ffb0  8be5                      MOV ESP,EBP
0045ffb2  5d                        POP EBP
0045ffb3  c3                        RET
0045ffb4  83f808                    CMP EAX,0x8
0045ffb7  0f8531010000              JNZ 0x004600ee
0045ffbd  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0045ffc3  85c0                      TEST EAX,EAX
0045ffc5  755f                      JNZ 0x00460026
0045ffc7  50                        PUSH EAX
0045ffc8  6838deb100                PUSH 0xb1de38
0045ffcd  8d4f48                    LEA ECX,[EDI + 0x48]
0045ffd0  e8aba3faff                CALL 0x0040a380
0045ffd5  51                        PUSH ECX
0045ffd6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ffdd  6a00                      PUSH 0x0
0045ffdf  6a3c                      PUSH 0x3c
0045ffe1  51                        PUSH ECX
0045ffe2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ffe9  6838010000                PUSH 0x138
0045ffee  8bcf                      MOV ECX,EDI
0045fff0  e8ab6b2700                CALL 0x006d6ba0
0045fff5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045fff9  740d                      JZ 0x00460008
0045fffb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00460002  0f8522070000              JNZ 0x0046072a
00460008  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00460012  5f                        POP EDI
00460013  5e                        POP ESI
00460014  8b8c24cc000000            MOV ECX,dword ptr [ESP + 0xcc]
0046001b  33cc                      XOR ECX,ESP
0046001d  e809f16800                CALL 0x00aef12b
00460022  8be5                      MOV ESP,EBP
00460024  5d                        POP EBP
00460025  c3                        RET
00460026  83f801                    CMP EAX,0x1
00460029  0f85fb060000              JNZ 0x0046072a
0046002f  6a00                      PUSH 0x0
00460031  682cdeb100                PUSH 0xb1de2c
00460036  8d4f48                    LEA ECX,[EDI + 0x48]
00460039  e842a3faff                CALL 0x0040a380
0046003e  68dcd2b100                PUSH 0xb1d2dc
00460043  8d4f48                    LEA ECX,[EDI + 0x48]
00460046  e8e5affaff                CALL 0x0040b030
0046004b  84c0                      TEST AL,AL
0046004d  746e                      JZ 0x004600bd
0046004f  51                        PUSH ECX
00460050  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460057  6a00                      PUSH 0x0
00460059  6a02                      PUSH 0x2
0046005b  51                        PUSH ECX
0046005c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460063  8bcf                      MOV ECX,EDI
00460065  6831010000                PUSH 0x131
0046006a  e8316b2700                CALL 0x006d6ba0
0046006f  6a00                      PUSH 0x0
00460071  57                        PUSH EDI
00460072  8d442410                  LEA EAX,[ESP + 0x10]
00460076  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
0046007e  50                        PUSH EAX
0046007f  6a0a                      PUSH 0xa
00460081  51                        PUSH ECX
00460082  8d873c030000              LEA EAX,[EDI + 0x33c]
00460088  c704240000b442            MOV dword ptr [ESP],0x42b40000
0046008f  50                        PUSH EAX
00460090  6a01                      PUSH 0x1
00460092  c74424280000f0c1          MOV dword ptr [ESP + 0x28],0xc1f00000
0046009a  e871f25000                CALL 0x0096f310
0046009f  83c41c                    ADD ESP,0x1c
004600a2  8bc8                      MOV ECX,EAX
004600a4  8b10                      MOV EDX,dword ptr [EAX]
004600a6  c780580300000000c842      MOV dword ptr [EAX + 0x358],0x42c80000
004600b0  c780d404000001000000      MOV dword ptr [EAX + 0x4d4],0x1
004600ba  ff520c                    CALL dword ptr [EDX + 0xc]
004600bd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004600c1  740d                      JZ 0x004600d0
004600c3  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004600ca  0f855a060000              JNZ 0x0046072a
004600d0  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004600da  5f                        POP EDI
004600db  5e                        POP ESI
004600dc  8b8c24cc000000            MOV ECX,dword ptr [ESP + 0xcc]
004600e3  33cc                      XOR ECX,ESP
004600e5  e841f06800                CALL 0x00aef12b
004600ea  8be5                      MOV ESP,EBP
004600ec  5d                        POP EBP
004600ed  c3                        RET
004600ee  83f809                    CMP EAX,0x9
004600f1  0f85f4030000              JNZ 0x004604eb
004600f7  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004600fd  85c0                      TEST EAX,EAX
004600ff  752c                      JNZ 0x0046012d
00460101  50                        PUSH EAX
00460102  6838deb100                PUSH 0xb1de38
00460107  8d4f48                    LEA ECX,[EDI + 0x48]
0046010a  e871a2faff                CALL 0x0040a380
0046010f  51                        PUSH ECX
00460110  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460117  6a00                      PUSH 0x0
00460119  6a3c                      PUSH 0x3c
0046011b  51                        PUSH ECX
0046011c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460123  6836010000                PUSH 0x136
00460128  e9c1feffff                JMP 0x0045ffee
0046012d  83f801                    CMP EAX,0x1
00460130  0f85f4050000              JNZ 0x0046072a
00460136  6a00                      PUSH 0x0
00460138  8d4f48                    LEA ECX,[EDI + 0x48]
0046013b  682cdeb100                PUSH 0xb1de2c
00460140  e83ba2faff                CALL 0x0040a380
00460145  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00460149  8d4f48                    LEA ECX,[EDI + 0x48]
0046014c  68dcd2b100                PUSH 0xb1d2dc
00460151  0f85f7010000              JNZ 0x0046034e
00460157  e834affaff                CALL 0x0040b090
0046015c  84c0                      TEST AL,AL
0046015e  0f844c030000              JZ 0x004604b0
00460164  8d4c2428                  LEA ECX,[ESP + 0x28]
00460168  e8c3edfdff                CALL 0x0043ef30
0046016d  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00460171  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
00460177  f30f11842490000000        MOVSS dword ptr [ESP + 0x90],XMM0
00460180  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00460185  c744242c00009441          MOV dword ptr [ESP + 0x2c],0x41940000
0046018d  c74424348fc275bd          MOV dword ptr [ESP + 0x34],0xbd75c28f
00460195  c7442430000000c0          MOV dword ptr [ESP + 0x30],0xc0000000
0046019d  f30f11842494000000        MOVSS dword ptr [ESP + 0x94],XMM0
004601a6  c744243c0000e03f          MOV dword ptr [ESP + 0x3c],0x3fe00000
004601ae  83f803                    CMP EAX,0x3
004601b1  0f87f9020000              JA 0x004604b0
004601b7  ff248554074600            JMP dword ptr [EAX*0x4 + 0x460754]
0046034e  e8ddacfaff                CALL 0x0040b030
00460353  84c0                      TEST AL,AL
00460355  0f8455010000              JZ 0x004604b0
0046035b  51                        PUSH ECX
0046035c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460363  6a00                      PUSH 0x0
00460365  6a02                      PUSH 0x2
00460367  51                        PUSH ECX
00460368  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046036f  8bcf                      MOV ECX,EDI
00460371  6830010000                PUSH 0x130
00460376  e825682700                CALL 0x006d6ba0
0046037b  8d4c2428                  LEA ECX,[ESP + 0x28]
0046037f  e8acebfdff                CALL 0x0043ef30
00460384  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00460388  8b842484000000            MOV EAX,dword ptr [ESP + 0x84]
0046038f  818c248000000080200000    OR dword ptr [ESP + 0x80],0x2080
0046039a  f30f11842490000000        MOVSS dword ptr [ESP + 0x90],XMM0
004603a3  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
004603a8  c744242c00009441          MOV dword ptr [ESP + 0x2c],0x41940000
004603b0  c74424348fc275bd          MOV dword ptr [ESP + 0x34],0xbd75c28f
004603b8  c7442430000000c0          MOV dword ptr [ESP + 0x30],0xc0000000
004603c0  c644242800                MOV byte ptr [ESP + 0x28],0x0
004603c5  89842484000000            MOV dword ptr [ESP + 0x84],EAX
004603cc  f30f11842494000000        MOVSS dword ptr [ESP + 0x94],XMM0
004603d5  c74424386666863f          MOV dword ptr [ESP + 0x38],0x3f866666
004603dd  c744243c6666e63f          MOV dword ptr [ESP + 0x3c],0x3fe66666
004603e5  e876eb2800                CALL 0x006eef60
004603ea  83e003                    AND EAX,0x3
004603ed  ff248564074600            JMP dword ptr [EAX*0x4 + 0x460764]
004604b0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004604b4  740d                      JZ 0x004604c3
004604b6  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004604bd  0f8567020000              JNZ 0x0046072a
004604c3  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004604cd  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
004604d7  5f                        POP EDI
004604d8  5e                        POP ESI
004604d9  8b8c24cc000000            MOV ECX,dword ptr [ESP + 0xcc]
004604e0  33cc                      XOR ECX,ESP
004604e2  e844ec6800                CALL 0x00aef12b
004604e7  8be5                      MOV ESP,EBP
004604e9  5d                        POP EBP
004604ea  c3                        RET
004604eb  83f80d                    CMP EAX,0xd
004604ee  0f8536020000              JNZ 0x0046072a
004604f4  6a00                      PUSH 0x0
004604f6  6850deb100                PUSH 0xb1de50
004604fb  8d4f48                    LEA ECX,[EDI + 0x48]
004604fe  e87d9efaff                CALL 0x0040a380
00460503  51                        PUSH ECX
00460504  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046050b  6a00                      PUSH 0x0
0046050d  6a3c                      PUSH 0x3c
0046050f  51                        PUSH ECX
00460510  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460517  8bcf                      MOV ECX,EDI
00460519  6a70                      PUSH 0x70
0046051b  e880662700                CALL 0x006d6ba0
00460520  68dcd2b100                PUSH 0xb1d2dc
00460525  8d4f48                    LEA ECX,[EDI + 0x48]
00460528  e803abfaff                CALL 0x0040b030
0046052d  84c0                      TEST AL,AL
0046052f  0f84d2010000              JZ 0x00460707
00460535  51                        PUSH ECX
00460536  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046053d  6a00                      PUSH 0x0
0046053f  6a02                      PUSH 0x2
00460541  51                        PUSH ECX
00460542  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460549  8bcf                      MOV ECX,EDI
0046054b  6a72                      PUSH 0x72
0046054d  e84e662700                CALL 0x006d6ba0
00460552  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00460556  7574                      JNZ 0x004605cc
00460558  8bcf                      MOV ECX,EDI
0046055a  e8e1e22500                CALL 0x006be840
0046055f  51                        PUSH ECX
00460560  c704240000c8c2            MOV dword ptr [ESP],0xc2c80000
00460567  6a01                      PUSH 0x1
00460569  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00460571  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00460577  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0046057f  8d442418                  LEA EAX,[ESP + 0x18]
00460583  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00460589  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00460591  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00460599  ff742414                  PUSH dword ptr [ESP + 0x14]
0046059d  ff742414                  PUSH dword ptr [ESP + 0x14]
004605a1  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
004605a7  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004605af  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004605b7  57                        PUSH EDI
004605b8  50                        PUSH EAX
004605b9  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
004605bf  e88c212600                CALL 0x006c2750
004605c4  83c418                    ADD ESP,0x18
004605c7  e93b010000                JMP 0x00460707
004605cc  e88fe92800                CALL 0x006eef60
004605d1  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004605d9  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004605e1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004605e7  6a00                      PUSH 0x0
004605e9  50                        PUSH EAX
004605ea  6a00                      PUSH 0x0
004605ec  57                        PUSH EDI
004605ed  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
004605f3  8d442428                  LEA EAX,[ESP + 0x28]
004605f7  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004605ff  f30f5c0550a9ba00          SUBSS XMM0,dword ptr [0x00baa950]
00460607  6840b6c700                PUSH 0xc7b640
0046060c  50                        PUSH EAX
0046060d  6a00                      PUSH 0x0
0046060f  6a22                      PUSH 0x22
00460611  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
00460617  e8f4dd2900                CALL 0x006fe410
0046061c  6a00                      PUSH 0x0
0046061e  68acd6c500                PUSH 0xc5d6ac
00460623  68dcd5c500                PUSH 0xc5d5dc
00460628  6a00                      PUSH 0x0
0046062a  50                        PUSH EAX
0046062b  e881026900                CALL 0x00af08b1
00460630  83c414                    ADD ESP,0x14
00460633  8bf0                      MOV ESI,EAX
00460635  8d873c030000              LEA EAX,[EDI + 0x33c]
0046063b  89742410                  MOV dword ptr [ESP + 0x10],ESI
0046063f  6a00                      PUSH 0x0
00460641  6a00                      PUSH 0x0
00460643  6a00                      PUSH 0x0
00460645  51                        PUSH ECX
00460646  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046064c  c7042400001643            MOV dword ptr [ESP],0x43160000
00460653  50                        PUSH EAX
00460654  8d442434                  LEA EAX,[ESP + 0x34]
00460658  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0046065e  50                        PUSH EAX
0046065f  e8bc2e3b00                CALL 0x00813520
00460664  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0046066a  8d4648                    LEA EAX,[ESI + 0x48]
0046066d  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
00460675  8bc8                      MOV ECX,EAX
00460677  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0046067d  6a01                      PUSH 0x1
0046067f  6844deb100                PUSH 0xb1de44
00460684  f30f118638030000          MOVSS dword ptr [ESI + 0x338],XMM0
0046068c  c786640b000006000000      MOV dword ptr [ESI + 0xb64],0x6
00460696  c7861004000005000000      MOV dword ptr [ESI + 0x410],0x5
004606a0  89442410                  MOV dword ptr [ESP + 0x10],EAX
004606a4  e8279ffaff                CALL 0x0040a5d0
004606a9  84c0                      TEST AL,AL
004606ab  7414                      JZ 0x004606c1
004606ad  8b742408                  MOV ESI,dword ptr [ESP + 0x8]
004606b1  8d4e30                    LEA ECX,[ESI + 0x30]
004606b4  e8f79afaff                CALL 0x0040a1b0
004606b9  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004606bd  8b742410                  MOV ESI,dword ptr [ESP + 0x10]
004606c1  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
004606c5  7410                      JZ 0x004606d7
004606c7  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
004606cf  8d4e78                    LEA ECX,[ESI + 0x78]
004606d2  e82987faff                CALL 0x00408e00
004606d7  6800000010                PUSH 0x10000000
004606dc  6a00                      PUSH 0x0
004606de  8bcf                      MOV ECX,EDI
004606e0  c78654030000a0860100      MOV dword ptr [ESI + 0x354],0x186a0
004606ea  e8416dfbff                CALL 0x00417430
004606ef  84c0                      TEST AL,AL
004606f1  7414                      JZ 0x00460707
004606f3  c7868003000000002041      MOV dword ptr [ESI + 0x380],0x41200000
004606fd  c7868403000000002041      MOV dword ptr [ESI + 0x384],0x41200000
00460707  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0046070b  7409                      JZ 0x00460716
0046070d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00460714  7514                      JNZ 0x0046072a
00460716  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00460720  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0046072a  8b8c24d4000000            MOV ECX,dword ptr [ESP + 0xd4]
00460731  5f                        POP EDI
00460732  5e                        POP ESI
00460733  33cc                      XOR ECX,ESP
00460735  e8f1e96800                CALL 0x00aef12b
0046073a  8be5                      MOV ESP,EBP
0046073c  5d                        POP EBP
0046073d  c3                        RET
