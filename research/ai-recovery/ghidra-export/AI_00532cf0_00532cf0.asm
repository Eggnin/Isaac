; J460 NPC AI 0x00532cf0 AI_00532cf0
; types=212,286
; identities=212.0.0,212.1.0,212.2.0,212.3.0,212.4.0,286.0.0
; entry=00532cf0
00532cf0  55                        PUSH EBP
00532cf1  8bec                      MOV EBP,ESP
00532cf3  83e4f8                    AND ESP,0xfffffff8
00532cf6  81ec40010000              SUB ESP,0x140
00532cfc  a1b493bf00                MOV EAX,[0x00bf93b4]
00532d01  33c4                      XOR EAX,ESP
00532d03  8984243c010000            MOV dword ptr [ESP + 0x13c],EAX
00532d0a  56                        PUSH ESI
00532d0b  57                        PUSH EDI
00532d0c  8bf9                      MOV EDI,ECX
00532d0e  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00532d16  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
00532d1e  2bf0                      SUB ESI,EAX
00532d20  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00532d26  89742434                  MOV dword ptr [ESP + 0x34],ESI
00532d2a  85c0                      TEST EAX,EAX
00532d2c  0f85f1010000              JNZ 0x00532f23
00532d32  817f28d4000000            CMP dword ptr [EDI + 0x28],0xd4
00532d39  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00532d43  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00532d4d  7522                      JNZ 0x00532d71
00532d4f  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00532d52  83f801                    CMP EAX,0x1
00532d55  741a                      JZ 0x00532d71
00532d57  83f804                    CMP EAX,0x4
00532d5a  7415                      JZ 0x00532d71
00532d5c  838f6801000001            OR dword ptr [EDI + 0x168],0x1
00532d63  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
00532d6a  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00532d71  e8eac11b00                CALL 0x006eef60
00532d76  660f6ec0                  MOVD XMM0,EAX
00532d7a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00532d7e  c1e81f                    SHR EAX,0x1f
00532d81  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00532d8a  660f5ac0                  CVTPD2PS XMM0,XMM0
00532d8e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00532d96  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00532d9e  f30f58c0                  ADDSS XMM0,XMM0
00532da2  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00532da8  e893a7eeff                CALL 0x0041d540
00532dad  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00532db3  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00532db9  e862a7eeff                CALL 0x0041d520
00532dbe  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
00532dc4  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00532dcc  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00532dd4  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00532dd7  3d1e010000                CMP EAX,0x11e
00532ddc  744c                      JZ 0x00532e2a
00532dde  0f281550bfba00            MOVAPS XMM2,xmmword ptr [0x00babf50]
00532de5  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00532deb  8d542440                  LEA EDX,[ESP + 0x40]
00532def  c7442460cdcccc3d          MOV dword ptr [ESP + 0x60],0x3dcccccd
00532df7  c7442464cdcccc3d          MOV dword ptr [ESP + 0x64],0x3dcccccd
00532dff  0f57c9                    XORPS XMM1,XMM1
00532e02  c7442468cdcccc3d          MOV dword ptr [ESP + 0x68],0x3dcccccd
00532e0a  3bca                      CMP ECX,EDX
00532e0c  741c                      JZ 0x00532e2a
00532e0e  f30f7e442460              MOVQ XMM0,qword ptr [ESP + 0x60]
00532e14  8b442468                  MOV EAX,dword ptr [ESP + 0x68]
00532e18  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00532e1d  0f1111                    MOVUPS xmmword ptr [ECX],XMM2
00532e20  894128                    MOV dword ptr [ECX + 0x28],EAX
00532e23  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
00532e27  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00532e2a  3dd4000000                CMP EAX,0xd4
00532e2f  0f85320d0000              JNZ 0x00533b67
00532e35  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00532e39  0f85280d0000              JNZ 0x00533b67
00532e3f  e81cc11b00                CALL 0x006eef60
00532e44  6a00                      PUSH 0x0
00532e46  50                        PUSH EAX
00532e47  6a03                      PUSH 0x3
00532e49  57                        PUSH EDI
00532e4a  6840b6c700                PUSH 0xc7b640
00532e4f  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00532e55  51                        PUSH ECX
00532e56  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00532e5c  6a7b                      PUSH 0x7b
00532e5e  68e8030000                PUSH 0x3e8
00532e63  e8a8b51c00                CALL 0x006fe410
00532e68  8bf0                      MOV ESI,EAX
00532e6a  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00532e70  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
00532e7a  c786e0000000000070c1      MOV dword ptr [ESI + 0xe0],0xc1700000
00532e84  8b08                      MOV ECX,dword ptr [EAX]
00532e86  85c9                      TEST ECX,ECX
00532e88  741a                      JZ 0x00532ea4
00532e8a  89442414                  MOV dword ptr [ESP + 0x14],EAX
00532e8e  81c1cc030000              ADD ECX,0x3cc
00532e94  8d442414                  LEA EAX,[ESP + 0x14]
00532e98  50                        PUSH EAX
00532e99  e872c3f9ff                CALL 0x004cf210
00532e9e  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00532ea4  50                        PUSH EAX
00532ea5  8bcf                      MOV ECX,EDI
00532ea7  8938                      MOV dword ptr [EAX],EDI
00532ea9  e842aef9ff                CALL 0x004cdcf0
00532eae  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
00532eb6  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
00532ebe  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00532ec6  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00532ece  81c7c0030000              ADD EDI,0x3c0
00532ed4  c6866404000001            MOV byte ptr [ESI + 0x464],0x1
00532edb  f30f118e68040000          MOVSS dword ptr [ESI + 0x468],XMM1
00532ee3  f30f11866c040000          MOVSS dword ptr [ESI + 0x46c],XMM0
00532eeb  8b0f                      MOV ECX,dword ptr [EDI]
00532eed  85c9                      TEST ECX,ECX
00532eef  7414                      JZ 0x00532f05
00532ef1  8d442414                  LEA EAX,[ESP + 0x14]
00532ef5  897c2414                  MOV dword ptr [ESP + 0x14],EDI
00532ef9  50                        PUSH EAX
00532efa  81c1cc030000              ADD ECX,0x3cc
00532f00  e80bc3f9ff                CALL 0x004cf210
00532f05  57                        PUSH EDI
00532f06  8bce                      MOV ECX,ESI
00532f08  8937                      MOV dword ptr [EDI],ESI
00532f0a  e8e1adf9ff                CALL 0x004cdcf0
00532f0f  5f                        POP EDI
00532f10  5e                        POP ESI
00532f11  8b8c243c010000            MOV ECX,dword ptr [ESP + 0x13c]
00532f18  33cc                      XOR ECX,ESP
00532f1a  e80cc25b00                CALL 0x00aef12b
00532f1f  8be5                      MOV ESP,EBP
00532f21  5d                        POP EBP
00532f22  c3                        RET
00532f23  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
00532f2b  f30f590de0a3ba00          MULSS XMM1,dword ptr [0x00baa3e0]
00532f33  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
00532f3b  83f804                    CMP EAX,0x4
00532f3e  0f855c070000              JNZ 0x005336a0
00532f44  6a00                      PUSH 0x0
00532f46  8d7748                    LEA ESI,[EDI + 0x48]
00532f49  6854bcb100                PUSH 0xb1bc54
00532f4e  8bce                      MOV ECX,ESI
00532f50  e82b74edff                CALL 0x0040a380
00532f55  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00532f5b  2500020000                AND EAX,0x200
00532f60  83c800                    OR EAX,0x0
00532f63  741b                      JZ 0x00532f80
00532f65  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00532f6c  7512                      JNZ 0x00532f80
00532f6e  6a00                      PUSH 0x0
00532f70  8d8f14040000              LEA ECX,[EDI + 0x414]
00532f76  e885332b00                CALL 0x007e6300
00532f7b  e912010000                JMP 0x00533092
00532f80  817f28d4000000            CMP dword ptr [EDI + 0x28],0xd4
00532f87  f30f1015b8a2ba00          MOVSS XMM2,dword ptr [0x00baa2b8]
00532f8f  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
00532f95  7514                      JNZ 0x00532fab
00532f97  837f2c04                  CMP dword ptr [EDI + 0x2c],0x4
00532f9b  750e                      JNZ 0x00532fab
00532f9d  f30f101554a2ba00          MOVSS XMM2,dword ptr [0x00baa254]
00532fa5  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
00532fab  0f57c9                    XORPS XMM1,XMM1
00532fae  0f28da                    MOVAPS XMM3,XMM2
00532fb1  0f2f8f60030000            COMISS XMM1,dword ptr [EDI + 0x360]
00532fb8  0f28c2                    MOVAPS XMM0,XMM2
00532fbb  f30f115c2410              MOVSS dword ptr [ESP + 0x10],XMM3
00532fc1  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00532fc8  7609                      JBE 0x00532fd3
00532fca  0f28d8                    MOVAPS XMM3,XMM0
00532fcd  f30f115c2410              MOVSS dword ptr [ESP + 0x10],XMM3
00532fd3  0f2f8f64030000            COMISS XMM1,dword ptr [EDI + 0x364]
00532fda  7609                      JBE 0x00532fe5
00532fdc  0f28d0                    MOVAPS XMM2,XMM0
00532fdf  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
00532fe5  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00532fec  7458                      JZ 0x00533046
00532fee  8d442424                  LEA EAX,[ESP + 0x24]
00532ff2  0f57d2                    XORPS XMM2,XMM2
00532ff5  50                        PUSH EAX
00532ff6  8bcf                      MOV ECX,EDI
00532ff8  e8d3521a00                CALL 0x006d82d0
00532ffd  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00533003  8bf0                      MOV ESI,EAX
00533005  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0053300b  f30f59c0                  MULSS XMM0,XMM0
0053300f  f30f59c9                  MULSS XMM1,XMM1
00533013  f30f58c1                  ADDSS XMM0,XMM1
00533017  e8342af0ff                CALL 0x00435a50
0053301c  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00533024  0f57c9                    XORPS XMM1,XMM1
00533027  f30f1054240c              MOVSS XMM2,dword ptr [ESP + 0xc]
0053302d  0f28d8                    MOVAPS XMM3,XMM0
00533030  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
00533035  f30f591e                  MULSS XMM3,dword ptr [ESI]
00533039  8d7748                    LEA ESI,[EDI + 0x48]
0053303c  f30f58d0                  ADDSS XMM2,XMM0
00533040  f30f585c2410              ADDSS XMM3,dword ptr [ESP + 0x10]
00533046  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0053304e  0f2ee1                    UCOMISS XMM4,XMM1
00533051  9f                        LAHF
00533052  f6c444                    TEST AH,0x44
00533055  7b3b                      JNP 0x00533092
00533057  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0053305f  0f28c1                    MOVAPS XMM0,XMM1
00533062  f30f59ca                  MULSS XMM1,XMM2
00533066  f30f59c3                  MULSS XMM0,XMM3
0053306a  f30f5ecc                  DIVSS XMM1,XMM4
0053306e  f30f5ec4                  DIVSS XMM0,XMM4
00533072  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0053307a  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00533082  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0053308a  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00533092  817f28d4000000            CMP dword ptr [EDI + 0x28],0xd4
00533099  0f85ec080000              JNZ 0x0053398b
0053309f  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
005330a3  0f857d010000              JNZ 0x00533226
005330a9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005330af  33f6                      XOR ESI,ESI
005330b1  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
005330b7  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
005330bd  c1f802                    SAR EAX,0x2
005330c0  85c0                      TEST EAX,EAX
005330c2  0f84c3080000              JZ 0x0053398b
005330c8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
005330d0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005330d6  56                        PUSH ESI
005330d7  e89447eeff                CALL 0x00417870
005330dc  8bd0                      MOV EDX,EAX
005330de  83ba8801000000            CMP dword ptr [EDX + 0x188],0x0
005330e5  0f8418010000              JZ 0x00533203
005330eb  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005330f3  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005330fb  f30f5c8a3c030000          SUBSS XMM1,dword ptr [EDX + 0x33c]
00533103  f30f5c8240030000          SUBSS XMM0,dword ptr [EDX + 0x340]
0053310b  f30f59c9                  MULSS XMM1,XMM1
0053310f  f30f59c0                  MULSS XMM0,XMM0
00533113  f30f58c1                  ADDSS XMM0,XMM1
00533117  f30f100d18acba00          MOVSS XMM1,dword ptr [0x00baac18]
0053311f  0f2fc8                    COMISS XMM1,XMM0
00533122  0f86db000000              JBE 0x00533203
00533128  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0053312b  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00533133  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0053313b  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00533141  8944246c                  MOV dword ptr [ESP + 0x6c],EAX
00533145  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00533148  89442470                  MOV dword ptr [ESP + 0x70],EAX
0053314c  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0053314f  89442474                  MOV dword ptr [ESP + 0x74],EAX
00533153  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00533156  89442478                  MOV dword ptr [ESP + 0x78],EAX
0053315a  8bc1                      MOV EAX,ECX
0053315c  f30f1144247c              MOVSS dword ptr [ESP + 0x7c],XMM0
00533162  2500010000                AND EAX,0x100
00533167  83c800                    OR EAX,0x0
0053316a  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00533172  f30f118c2480000000        MOVSS dword ptr [ESP + 0x80],XMM1
0053317b  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00533183  f30f11842484000000        MOVSS dword ptr [ESP + 0x84],XMM0
0053318c  f30f118c2488000000        MOVSS dword ptr [ESP + 0x88],XMM1
00533195  c744240c01000000          MOV dword ptr [ESP + 0xc],0x1
0053319d  7508                      JNZ 0x005331a7
0053319f  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
005331a7  81e100000020              AND ECX,0x20000000
005331ad  c744241002000000          MOV dword ptr [ESP + 0x10],0x2
005331b5  83c900                    OR ECX,0x0
005331b8  7508                      JNZ 0x005331c2
005331ba  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
005331c2  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
005331c8  33c0                      XOR EAX,EAX
005331ca  81e100004000              AND ECX,0x400000
005331d0  0bc1                      OR EAX,ECX
005331d2  7407                      JZ 0x005331db
005331d4  b804000000                MOV EAX,0x4
005331d9  eb02                      JMP 0x005331dd
005331db  33c0                      XOR EAX,EAX
005331dd  0b442410                  OR EAX,dword ptr [ESP + 0x10]
005331e1  8bca                      MOV ECX,EDX
005331e3  0b44240c                  OR EAX,dword ptr [ESP + 0xc]
005331e7  6a00                      PUSH 0x0
005331e9  89842490000000            MOV dword ptr [ESP + 0x90],EAX
005331f0  8d442470                  LEA EAX,[ESP + 0x70]
005331f4  6ad3                      PUSH -0x2d
005331f6  50                        PUSH EAX
005331f7  89bc249c000000            MOV dword ptr [ESP + 0x9c],EDI
005331fe  e89dae1700                CALL 0x006ae0a0
00533203  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00533209  46                        INC ESI
0053320a  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00533210  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00533216  c1f802                    SAR EAX,0x2
00533219  3bf0                      CMP ESI,EAX
0053321b  0f82affeffff              JC 0x005330d0
00533221  e965070000                JMP 0x0053398b
00533226  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0053322a  0f8523030000              JNZ 0x00533553
00533230  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00533237  0f84ab000000              JZ 0x005332e8
0053323d  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00533244  0f8f41070000              JG 0x0053398b
0053324a  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00533252  8d442418                  LEA EAX,[ESP + 0x18]
00533256  50                        PUSH EAX
00533257  8bcf                      MOV ECX,EDI
00533259  e842531a00                CALL 0x006d85a0
0053325e  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
00533264  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0053326b  9f                        LAHF
0053326c  f6c444                    TEST AH,0x44
0053326f  7a17                      JP 0x00533288
00533271  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
00533277  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0053327e  9f                        LAHF
0053327f  f6c444                    TEST AH,0x44
00533282  0f8b03070000              JNP 0x0053398b
00533288  8d4c2418                  LEA ECX,[ESP + 0x18]
0053328c  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00533296  e8c5bf1400                CALL 0x0067f260
0053329b  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
005332a1  8bce                      MOV ECX,ESI
005332a3  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
005332a9  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
005332af  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
005332b5  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
005332bb  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
005332c1  6a01                      PUSH 0x1
005332c3  ff3485f00ab600            PUSH dword ptr [EAX*0x4 + 0xb60af0]
005332ca  e80173edff                CALL 0x0040a5d0
005332cf  84c0                      TEST AL,AL
005332d1  0f84b4060000              JZ 0x0053398b
005332d7  8d4e30                    LEA ECX,[ESI + 0x30]
005332da  e8d16eedff                CALL 0x0040a1b0
005332df  c6464401                  MOV byte ptr [ESI + 0x44],0x1
005332e3  e9a3060000                JMP 0x0053398b
005332e8  a17816c700                MOV EAX,[0x00c71678]
005332ed  8d8f3c030000              LEA ECX,[EDI + 0x33c]
005332f3  51                        PUSH ECX
005332f4  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005332fa  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
00533300  e83b174100                CALL 0x00944a40
00533305  84c0                      TEST AL,AL
00533307  0f847e060000              JZ 0x0053398b
0053330d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00533313  33f6                      XOR ESI,ESI
00533315  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
0053331b  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00533321  c1f802                    SAR EAX,0x2
00533324  85c0                      TEST EAX,EAX
00533326  0f845f060000              JZ 0x0053398b
0053332c  0f1f4000                  NOP dword ptr [EAX]
00533330  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00533336  56                        PUSH ESI
00533337  e83445eeff                CALL 0x00417870
0053333c  83b88801000000            CMP dword ptr [EAX + 0x188],0x0
00533343  746c                      JZ 0x005333b1
00533345  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0053334d  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00533355  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
0053335d  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00533365  f30f58803c030000          ADDSS XMM0,dword ptr [EAX + 0x33c]
0053336d  f30f101540cbba00          MOVSS XMM2,dword ptr [0x00bacb40]
00533375  f30f588840030000          ADDSS XMM1,dword ptr [EAX + 0x340]
0053337d  f30f101d9ca8ba00          MOVSS XMM3,dword ptr [0x00baa89c]
00533385  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0053338d  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00533395  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0053339b  0f54c2                    ANDPS XMM0,XMM2
0053339e  0f2fd8                    COMISS XMM3,XMM0
005333a1  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
005333a7  732b                      JNC 0x005333d4
005333a9  0f54ca                    ANDPS XMM1,XMM2
005333ac  0f2fd9                    COMISS XMM3,XMM1
005333af  7323                      JNC 0x005333d4
005333b1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005333b7  46                        INC ESI
005333b8  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
005333be  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
005333c4  c1f802                    SAR EAX,0x2
005333c7  3bf0                      CMP ESI,EAX
005333c9  0f8261ffffff              JC 0x00533330
005333cf  e9b7050000                JMP 0x0053398b
005333d4  8d4c2418                  LEA ECX,[ESP + 0x18]
005333d8  e883be1400                CALL 0x0067f260
005333dd  83f8ff                    CMP EAX,-0x1
005333e0  0f84a5050000              JZ 0x0053398b
005333e6  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
005333ec  8d4f48                    LEA ECX,[EDI + 0x48]
005333ef  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005333f9  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
005333ff  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
00533405  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
0053340b  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
00533411  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00533417  6a01                      PUSH 0x1
00533419  ff3485f00ab600            PUSH dword ptr [EAX*0x4 + 0xb60af0]
00533420  e8ab71edff                CALL 0x0040a5d0
00533425  84c0                      TEST AL,AL
00533427  740f                      JZ 0x00533438
00533429  8d4f78                    LEA ECX,[EDI + 0x78]
0053342c  e87f6dedff                CALL 0x0040a1b0
00533431  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00533438  e823bb1b00                CALL 0x006eef60
0053343d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00533445  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0053344d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00533453  6a00                      PUSH 0x0
00533455  50                        PUSH EAX
00533456  6a00                      PUSH 0x0
00533458  6a00                      PUSH 0x0
0053345a  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
00533460  8d442428                  LEA EAX,[ESP + 0x28]
00533464  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0053346c  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
00533474  6840b6c700                PUSH 0xc7b640
00533479  50                        PUSH EAX
0053347a  68c6000000                PUSH 0xc6
0053347f  68e8030000                PUSH 0x3e8
00533484  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
0053348a  e881af1c00                CALL 0x006fe410
0053348f  8bf0                      MOV ESI,EAX
00533491  57                        PUSH EDI
00533492  8bce                      MOV ECX,ESI
00533494  e81730f2ff                CALL 0x004564b0
00533499  0f57c0                    XORPS XMM0,XMM0
0053349c  c784248c00000000000000    MOV dword ptr [ESP + 0x8c],0x0
005334a7  0f1144247c                MOVUPS xmmword ptr [ESP + 0x7c],XMM0
005334ac  8d44246c                  LEA EAX,[ESP + 0x6c]
005334b0  c784249000000000000000    MOV dword ptr [ESP + 0x90],0x0
005334bb  0f2805c0bcba00            MOVAPS XMM0,xmmword ptr [0x00babcc0]
005334c2  8d4e48                    LEA ECX,[ESI + 0x48]
005334c5  50                        PUSH EAX
005334c6  c784249800000000000000    MOV dword ptr [ESP + 0x98],0x0
005334d1  0f11442470                MOVUPS xmmword ptr [ESP + 0x70],XMM0
005334d6  e8f53eedff                CALL 0x004073d0
005334db  f30f10154079c300          MOVSS XMM2,dword ptr [0x00c37940]
005334e3  8d4c2424                  LEA ECX,[ESP + 0x24]
005334e7  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
005334ef  f30f59155ca7ba00          MULSS XMM2,dword ptr [0x00baa75c]
005334f7  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
005334ff  f30f1196e8000000          MOVSS dword ptr [ESI + 0xe8],XMM2
00533507  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0053350f  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
00533515  e8b6bc1400                CALL 0x0067f1d0
0053351a  8bce                      MOV ECX,ESI
0053351c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00533520  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00533525  8b06                      MOV EAX,dword ptr [ESI]
00533527  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
0053352f  f30f118e38030000          MOVSS dword ptr [ESI + 0x338],XMM1
00533537  c7865c04000017000000      MOV dword ptr [ESI + 0x45c],0x17
00533541  c7866004000017000000      MOV dword ptr [ESI + 0x460],0x17
0053354b  ff500c                    CALL dword ptr [EAX + 0xc]
0053354e  e938040000                JMP 0x0053398b
00533553  837f2c04                  CMP dword ptr [EDI + 0x2c],0x4
00533557  0f852e040000              JNZ 0x0053398b
0053355d  6a00                      PUSH 0x0
0053355f  6800000001                PUSH 0x1000000
00533564  8bcf                      MOV ECX,EDI
00533566  e8c53eeeff                CALL 0x00417430
0053356b  84c0                      TEST AL,AL
0053356d  0f8518040000              JNZ 0x0053398b
00533573  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0053357a  0f8f0b040000              JG 0x0053398b
00533580  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00533587  8bcf                      MOV ECX,EDI
00533589  742f                      JZ 0x005335ba
0053358b  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00533593  6a07                      PUSH 0x7
00533595  6a00                      PUSH 0x0
00533597  e8c4781900                CALL 0x006cae60
0053359c  84c0                      TEST AL,AL
0053359e  0f85c1000000              JNZ 0x00533665
005335a4  6a09                      PUSH 0x9
005335a6  8bcf                      MOV ECX,EDI
005335a8  e8b34c1a00                CALL 0x006d8260
005335ad  84c0                      TEST AL,AL
005335af  0f85b0000000              JNZ 0x00533665
005335b5  e9d1030000                JMP 0x0053398b
005335ba  6a00                      PUSH 0x0
005335bc  6a06                      PUSH 0x6
005335be  e84d911700                CALL 0x006ac710
005335c3  84c0                      TEST AL,AL
005335c5  0f84c0030000              JZ 0x0053398b
005335cb  8bcf                      MOV ECX,EDI
005335cd  e86eb21800                CALL 0x006be840
005335d2  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005335da  8bf0                      MOV ESI,EAX
005335dc  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005335e4  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
005335ec  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
005335f4  f30f59c0                  MULSS XMM0,XMM0
005335f8  f30f59c9                  MULSS XMM1,XMM1
005335fc  f30f58c1                  ADDSS XMM0,XMM1
00533600  e84b24f0ff                CALL 0x00435a50
00533605  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0053360d  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00533615  0f28c8                    MOVAPS XMM1,XMM0
00533618  f30f598664030000          MULSS XMM0,dword ptr [ESI + 0x364]
00533620  f30f598e60030000          MULSS XMM1,dword ptr [ESI + 0x360]
00533628  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
00533630  f30f588e3c030000          ADDSS XMM1,dword ptr [ESI + 0x33c]
00533638  f30f5cd1                  SUBSS XMM2,XMM1
0053363c  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00533644  f30f5cc8                  SUBSS XMM1,XMM0
00533648  f30f100534acba00          MOVSS XMM0,dword ptr [0x00baac34]
00533650  f30f59d2                  MULSS XMM2,XMM2
00533654  f30f59c9                  MULSS XMM1,XMM1
00533658  f30f58ca                  ADDSS XMM1,XMM2
0053365c  0f2fc1                    COMISS XMM0,XMM1
0053365f  0f8626030000              JBE 0x0053398b
00533665  6a01                      PUSH 0x1
00533667  6854ddb100                PUSH 0xb1dd54
0053366c  8d4f48                    LEA ECX,[EDI + 0x48]
0053366f  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00533679  e8526fedff                CALL 0x0040a5d0
0053367e  84c0                      TEST AL,AL
00533680  740f                      JZ 0x00533691
00533682  8d4f78                    LEA ECX,[EDI + 0x78]
00533685  e8266bedff                CALL 0x0040a1b0
0053368a  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00533691  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
0053369b  e9eb020000                JMP 0x0053398b
005336a0  83f808                    CMP EAX,0x8
005336a3  0f85e2020000              JNZ 0x0053398b
005336a9  817f28d4000000            CMP dword ptr [EDI + 0x28],0xd4
005336b0  f30f590d04a3ba00          MULSS XMM1,dword ptr [0x00baa304]
005336b8  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
005336c0  0f85c5020000              JNZ 0x0053398b
005336c6  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
005336ca  0f85d9000000              JNZ 0x005337a9
005336d0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005336d4  0f84c0000000              JZ 0x0053379a
005336da  68dcd2b100                PUSH 0xb1d2dc
005336df  8d4f78                    LEA ECX,[EDI + 0x78]
005336e2  e8e976edff                CALL 0x0040add0
005336e7  84c0                      TEST AL,AL
005336e9  0f8498000000              JZ 0x00533787
005336ef  68080fb600                PUSH 0xb60f08
005336f4  8d44241c                  LEA EAX,[ESP + 0x1c]
005336f8  8bcf                      MOV ECX,EDI
005336fa  50                        PUSH EAX
005336fb  e8f0331800                CALL 0x006b6af0
00533700  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00533708  8d442418                  LEA EAX,[ESP + 0x18]
0053370c  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00533714  f30f584c2418              ADDSS XMM1,dword ptr [ESP + 0x18]
0053371a  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00533720  660f6e87c00b0000          MOVD XMM0,dword ptr [EDI + 0xbc0]
00533728  0f5bc0                    CVTDQ2PS XMM0,XMM0
0053372b  6a00                      PUSH 0x0
0053372d  57                        PUSH EDI
0053372e  50                        PUSH EAX
0053372f  6a10                      PUSH 0x10
00533731  51                        PUSH ECX
00533732  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
0053373a  8d442440                  LEA EAX,[ESP + 0x40]
0053373e  c744242c00000000          MOV dword ptr [ESP + 0x2c],0x0
00533746  f30f114c2440              MOVSS dword ptr [ESP + 0x40],XMM1
0053374c  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
00533754  f30f110424                MOVSS dword ptr [ESP],XMM0
00533759  50                        PUSH EAX
0053375a  6a01                      PUSH 0x1
0053375c  e8afbb4300                CALL 0x0096f310
00533761  83c41c                    ADD ESP,0x1c
00533764  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
0053376b  740a                      JZ 0x00533777
0053376d  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
00533775  eb08                      JMP 0x0053377f
00533777  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
0053377f  f30f118058030000          MOVSS dword ptr [EAX + 0x358],XMM0
00533787  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053378b  740d                      JZ 0x0053379a
0053378d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00533794  0f85f1010000              JNZ 0x0053398b
0053379a  c787a00b00003c000000      MOV dword ptr [EDI + 0xba0],0x3c
005337a4  e9d8010000                JMP 0x00533981
005337a9  837f2c04                  CMP dword ptr [EDI + 0x2c],0x4
005337ad  0f85d8010000              JNZ 0x0053398b
005337b3  8d4f48                    LEA ECX,[EDI + 0x48]
005337b6  68dcd2b100                PUSH 0xb1d2dc
005337bb  e87078edff                CALL 0x0040b030
005337c0  84c0                      TEST AL,AL
005337c2  742c                      JZ 0x005337f0
005337c4  51                        PUSH ECX
005337c5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005337cc  6a00                      PUSH 0x0
005337ce  6a02                      PUSH 0x2
005337d0  51                        PUSH ECX
005337d1  c704240000803f            MOV dword ptr [ESP],0x3f800000
005337d8  8bcf                      MOV ECX,EDI
005337da  6a6a                      PUSH 0x6a
005337dc  e8bf331a00                CALL 0x006d6ba0
005337e1  c787a00b0000ffffffff      MOV dword ptr [EDI + 0xba0],0xffffffff
005337eb  83c9ff                    OR ECX,0xffffffff
005337ee  eb12                      JMP 0x00533802
005337f0  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
005337f6  8d4106                    LEA EAX,[ECX + 0x6]
005337f9  83f805                    CMP EAX,0x5
005337fc  0f8766010000              JA 0x00533968
00533802  85f6                      TEST ESI,ESI
00533804  0f8e5e010000              JLE 0x00533968
0053380a  8bc6                      MOV EAX,ESI
0053380c  89742414                  MOV dword ptr [ESP + 0x14],ESI
00533810  83f9ff                    CMP ECX,-0x1
00533813  750d                      JNZ 0x00533822
00533815  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
0053381d  8d4105                    LEA EAX,[ECX + 0x5]
00533820  eb16                      JMP 0x00533838
00533822  83f9fa                    CMP ECX,-0x6
00533825  0f8529010000              JNZ 0x00533954
0053382b  f30f1005a0a9ba00          MOVSS XMM0,dword ptr [0x00baa9a0]
00533833  b808000000                MOV EAX,0x8
00533838  660f6ec8                  MOVD XMM1,EAX
0053383c  33f6                      XOR ESI,ESI
0053383e  0f5bc9                    CVTDQ2PS XMM1,XMM1
00533841  89442420                  MOV dword ptr [ESP + 0x20],EAX
00533845  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0053384b  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
00533851  660f6ec6                  MOVD XMM0,ESI
00533855  0f5bc0                    CVTDQ2PS XMM0,XMM0
00533858  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00533860  f30f5ec1                  DIVSS XMM0,XMM1
00533864  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0053386c  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00533872  e8c99ceeff                CALL 0x0041d540
00533877  f30f59442410              MULSS XMM0,dword ptr [ESP + 0x10]
0053387d  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00533883  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00533889  e8929ceeff                CALL 0x0041d520
0053388e  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00533894  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0053389c  f30f59442410              MULSS XMM0,dword ptr [ESP + 0x10]
005338a2  a17816c700                MOV EAX,[0x00c71678]
005338a7  51                        PUSH ECX
005338a8  8d4c243c                  LEA ECX,[ESP + 0x3c]
005338ac  c7042400002041            MOV dword ptr [ESP],0x41200000
005338b3  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
005338b9  0f28c8                    MOVAPS XMM1,XMM0
005338bc  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
005338c4  51                        PUSH ECX
005338c5  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005338cb  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
005338d1  f30f114c2444              MOVSS dword ptr [ESP + 0x44],XMM1
005338d7  e884fa2d00                CALL 0x00813360
005338dc  84c0                      TEST AL,AL
005338de  7459                      JZ 0x00533939
005338e0  e87bb61b00                CALL 0x006eef60
005338e5  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
005338eb  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
005338f3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005338f9  6a00                      PUSH 0x0
005338fb  50                        PUSH EAX
005338fc  6a00                      PUSH 0x0
005338fe  57                        PUSH EDI
005338ff  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00533905  8d442434                  LEA EAX,[ESP + 0x34]
00533909  f30f1044243c              MOVSS XMM0,dword ptr [ESP + 0x3c]
0053390f  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00533917  6840b6c700                PUSH 0xc7b640
0053391c  50                        PUSH EAX
0053391d  6893000000                PUSH 0x93
00533922  68e8030000                PUSH 0x3e8
00533927  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0053392d  e8deaa1c00                CALL 0x006fe410
00533932  8bc8                      MOV ECX,EAX
00533934  8b10                      MOV EDX,dword ptr [EAX]
00533936  ff520c                    CALL dword ptr [EDX + 0xc]
00533939  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
0053393f  46                        INC ESI
00533940  3b742420                  CMP ESI,dword ptr [ESP + 0x20]
00533944  0f8c07ffffff              JL 0x00533851
0053394a  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
00533950  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
00533954  49                        DEC ECX
00533955  83e801                    SUB EAX,0x1
00533958  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
0053395e  89442414                  MOV dword ptr [ESP + 0x14],EAX
00533962  0f85a8feffff              JNZ 0x00533810
00533968  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053396c  7409                      JZ 0x00533977
0053396e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00533975  7514                      JNZ 0x0053398b
00533977  c787a00b00001e000000      MOV dword ptr [EDI + 0xba0],0x1e
00533981  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053398b  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
00533991  85c0                      TEST EAX,EAX
00533993  7e0a                      JLE 0x0053399f
00533995  2b442434                  SUB EAX,dword ptr [ESP + 0x34]
00533999  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0053399f  8bcf                      MOV ECX,EDI
005339a1  e87a321a00                CALL 0x006d6c20
005339a6  85c0                      TEST EAX,EAX
005339a8  7f73                      JG 0x00533a1d
005339aa  a17816c700                MOV EAX,[0x00c71678]
005339af  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005339b5  80b82972000000            CMP byte ptr [EAX + 0x7229],0x0
005339bc  7409                      JZ 0x005339c7
005339be  83b8ec11000008            CMP dword ptr [EAX + 0x11ec],0x8
005339c5  7f56                      JG 0x00533a1d
005339c7  83bf640b000012            CMP dword ptr [EDI + 0xb64],0x12
005339ce  744d                      JZ 0x00533a1d
005339d0  817f28d4000000            CMP dword ptr [EDI + 0x28],0xd4
005339d7  7506                      JNZ 0x005339df
005339d9  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005339dd  743e                      JZ 0x00533a1d
005339df  51                        PUSH ECX
005339e0  c704240000803f            MOV dword ptr [ESP],0x3f800000
005339e7  6a00                      PUSH 0x0
005339e9  6a3c                      PUSH 0x3c
005339eb  51                        PUSH ECX
005339ec  c704240000803f            MOV dword ptr [ESP],0x3f800000
005339f3  8bcf                      MOV ECX,EDI
005339f5  683c010000                PUSH 0x13c
005339fa  c787640b000012000000      MOV dword ptr [EDI + 0xb64],0x12
00533a04  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00533a0e  e88d311a00                CALL 0x006d6ba0
00533a13  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00533a1d  817f281e010000            CMP dword ptr [EDI + 0x28],0x11e
00533a24  0f8593000000              JNZ 0x00533abd
00533a2a  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00533a30  83f8ff                    CMP EAX,-0x1
00533a33  0f8484000000              JZ 0x00533abd
00533a39  51                        PUSH ECX
00533a3a  57                        PUSH EDI
00533a3b  50                        PUSH EAX
00533a3c  6a09                      PUSH 0x9
00533a3e  e8cd264200                CALL 0x00956110
00533a43  84c0                      TEST AL,AL
00533a45  7476                      JZ 0x00533abd
00533a47  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00533a4f  8d4c246c                  LEA ECX,[ESP + 0x6c]
00533a53  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00533a5b  8b07                      MOV EAX,dword ptr [EDI]
00533a5d  51                        PUSH ECX
00533a5e  8bcf                      MOV ECX,EDI
00533a60  c744247000000000          MOV dword ptr [ESP + 0x70],0x0
00533a68  c744247400000000          MOV dword ptr [ESP + 0x74],0x0
00533a70  c744247800000000          MOV dword ptr [ESP + 0x78],0x0
00533a78  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
00533a80  f30f118c2480000000        MOVSS dword ptr [ESP + 0x80],XMM1
00533a89  f30f11842484000000        MOVSS dword ptr [ESP + 0x84],XMM0
00533a92  f30f118c2488000000        MOVSS dword ptr [ESP + 0x88],XMM1
00533a9b  f30f1184248c000000        MOVSS dword ptr [ESP + 0x8c],XMM0
00533aa4  c784249000000000000000    MOV dword ptr [ESP + 0x90],0x0
00533aaf  c784249400000000000000    MOV dword ptr [ESP + 0x94],0x0
00533aba  ff5024                    CALL dword ptr [EAX + 0x24]
00533abd  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00533ac4  750d                      JNZ 0x00533ad3
00533ac6  83bf640b000012            CMP dword ptr [EDI + 0xb64],0x12
00533acd  0f8594000000              JNZ 0x00533b67
00533ad3  817f281e010000            CMP dword ptr [EDI + 0x28],0x11e
00533ada  0f8587000000              JNZ 0x00533b67
00533ae0  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00533ae6  2500000001                AND EAX,0x1000000
00533aeb  83c800                    OR EAX,0x0
00533aee  7577                      JNZ 0x00533b67
00533af0  8d8c2498000000            LEA ECX,[ESP + 0x98]
00533af7  e834b4f0ff                CALL 0x0043ef30
00533afc  e85fb41b00                CALL 0x006eef60
00533b01  8d8c2498000000            LEA ECX,[ESP + 0x98]
00533b08  c74424240000e040          MOV dword ptr [ESP + 0x24],0x40e00000
00533b10  51                        PUSH ECX
00533b11  6a09                      PUSH 0x9
00533b13  660f6ec0                  MOVD XMM0,EAX
00533b17  8d4c242c                  LEA ECX,[ESP + 0x2c]
00533b1b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00533b1f  c1e81f                    SHR EAX,0x1f
00533b22  51                        PUSH ECX
00533b23  8bcf                      MOV ECX,EDI
00533b25  c74424340000c040          MOV dword ptr [ESP + 0x34],0x40c00000
00533b2d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00533b36  8d873c030000              LEA EAX,[EDI + 0x33c]
00533b3c  50                        PUSH EAX
00533b3d  660f5ac0                  CVTPD2PS XMM0,XMM0
00533b41  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00533b49  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00533b51  f30f5c0578aaba00          SUBSS XMM0,dword ptr [0x00baaa78]
00533b59  f30f118424c0000000        MOVSS dword ptr [ESP + 0xc0],XMM0
00533b62  e879771900                CALL 0x006cb2e0
00533b67  8b8c2444010000            MOV ECX,dword ptr [ESP + 0x144]
00533b6e  5f                        POP EDI
00533b6f  5e                        POP ESI
00533b70  33cc                      XOR ECX,ESP
00533b72  e8b4b55b00                CALL 0x00aef12b
00533b77  8be5                      MOV ESP,EBP
00533b79  5d                        POP EBP
00533b7a  c3                        RET
