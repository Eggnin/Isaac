; J460 NPC AI 0x006ccdd0 HELPER_Entity_NPC_FireBossProjectiles
; types=
; identities=common_boss_attack
; entry=006ccdd0
006ccdd0  55                        PUSH EBP
006ccdd1  8bec                      MOV EBP,ESP
006ccdd3  83e4f8                    AND ESP,0xfffffff8
006ccdd6  83ec54                    SUB ESP,0x54
006ccdd9  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006ccde1  33c0                      XOR EAX,EAX
006ccde3  53                        PUSH EBX
006ccde4  56                        PUSH ESI
006ccde5  57                        PUSH EDI
006ccde6  8bf9                      MOV EDI,ECX
006ccde8  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
006ccdee  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
006ccdf4  81e200004000              AND EDX,0x400000
006ccdfa  0bc2                      OR EAX,EDX
006ccdfc  740e                      JZ 0x006cce0c
006ccdfe  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
006cce06  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
006cce0c  837d0800                  CMP dword ptr [EBP + 0x8],0x0
006cce10  0f8ee2050000              JLE 0x006cd3f8
006cce16  f30f104510                MOVSS XMM0,dword ptr [EBP + 0x10]
006cce1b  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
006cce23  8b7514                    MOV ESI,dword ptr [EBP + 0x14]
006cce26  f30f58050ca2ba00          ADDSS XMM0,dword ptr [0x00baa20c]
006cce2e  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
006cce34  0f1f4000                  NOP dword ptr [EAX]
006cce38  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
006cce40  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
006cce43  f30f1011                  MOVSS XMM2,dword ptr [ECX]
006cce47  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
006cce4e  9f                        LAHF
006cce4f  f6c444                    TEST AH,0x44
006cce52  7a7a                      JP 0x006ccece
006cce54  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
006cce59  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
006cce60  9f                        LAHF
006cce61  f6c444                    TEST AH,0x44
006cce64  7a68                      JP 0x006ccece
006cce66  e8f5200200                CALL 0x006eef60
006cce6b  660f6ec0                  MOVD XMM0,EAX
006cce6f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006cce73  c1e81f                    SHR EAX,0x1f
006cce76  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006cce7f  660f5ac0                  CVTPD2PS XMM0,XMM0
006cce83  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006cce8b  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
006cce93  f30f58c0                  ADDSS XMM0,XMM0
006cce97  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
006cce9d  e89e06d5ff                CALL 0x0041d540
006ccea2  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
006cceaa  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
006cceb0  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
006cceb6  e86506d5ff                CALL 0x0041d520
006ccebb  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
006ccec3  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
006ccec9  e92e010000                JMP 0x006ccffc
006ccece  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
006cced3  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
006ccedb  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
006ccee3  0f28c1                    MOVAPS XMM0,XMM1
006ccee6  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
006cceec  f30f59c1                  MULSS XMM0,XMM1
006ccef0  0f28ca                    MOVAPS XMM1,XMM2
006ccef3  f30f59ca                  MULSS XMM1,XMM2
006ccef7  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
006ccefd  f30f58c1                  ADDSS XMM0,XMM1
006ccf01  e84a8bd6ff                CALL 0x00435a50
006ccf06  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006ccf0d  762b                      JBE 0x006ccf3a
006ccf0f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006ccf17  f30f5ec8                  DIVSS XMM1,XMM0
006ccf1b  0f28c1                    MOVAPS XMM0,XMM1
006ccf1e  f30f59442410              MULSS XMM0,dword ptr [ESP + 0x10]
006ccf24  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
006ccf2a  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
006ccf30  f30f59c1                  MULSS XMM0,XMM1
006ccf34  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
006ccf3a  e821200200                CALL 0x006eef60
006ccf3f  0f57c0                    XORPS XMM0,XMM0
006ccf42  f20f2ac0                  CVTSI2SD XMM0,EAX
006ccf46  c1e81f                    SHR EAX,0x1f
006ccf49  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006ccf52  660f5ac0                  CVTPD2PS XMM0,XMM0
006ccf56  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006ccf5e  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
006ccf66  f30f58c0                  ADDSS XMM0,XMM0
006ccf6a  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
006ccf70  e8eb1f0200                CALL 0x006eef60
006ccf75  0f57c0                    XORPS XMM0,XMM0
006ccf78  f20f2ac0                  CVTSI2SD XMM0,EAX
006ccf7c  c1e81f                    SHR EAX,0x1f
006ccf7f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006ccf88  660f5ac0                  CVTPD2PS XMM0,XMM0
006ccf8c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006ccf94  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
006ccf9a  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
006ccfa0  e89b05d5ff                CALL 0x0041d540
006ccfa5  f30f5944241c              MULSS XMM0,dword ptr [ESP + 0x1c]
006ccfab  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
006ccfb1  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
006ccfb9  f30f590530a7ba00          MULSS XMM0,dword ptr [0x00baa730]
006ccfc1  f30f58c1                  ADDSS XMM0,XMM1
006ccfc5  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
006ccfcb  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
006ccfd1  e84a05d5ff                CALL 0x0041d520
006ccfd6  f30f5944241c              MULSS XMM0,dword ptr [ESP + 0x1c]
006ccfdc  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
006ccfe2  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
006ccfea  f30f590530a7ba00          MULSS XMM0,dword ptr [0x00baa730]
006ccff2  f30f58c1                  ADDSS XMM0,XMM1
006ccff6  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
006ccffc  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
006cd002  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
006cd008  e8531f0200                CALL 0x006eef60
006cd00d  f30f104660                MOVSS XMM0,dword ptr [ESI + 0x60]
006cd012  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
006cd01a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cd020  6a00                      PUSH 0x0
006cd022  50                        PUSH EAX
006cd023  6a00                      PUSH 0x0
006cd025  57                        PUSH EDI
006cd026  8d442438                  LEA EAX,[ESP + 0x38]
006cd02a  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
006cd030  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
006cd038  f30f584664                ADDSS XMM0,dword ptr [ESI + 0x64]
006cd03d  50                        PUSH EAX
006cd03e  8d442444                  LEA EAX,[ESP + 0x44]
006cd042  50                        PUSH EAX
006cd043  ffb694000000              PUSH dword ptr [ESI + 0x94]
006cd049  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
006cd04f  6a09                      PUSH 0x9
006cd051  e8ba130300                CALL 0x006fe410
006cd056  6a00                      PUSH 0x0
006cd058  680cd7c500                PUSH 0xc5d70c
006cd05d  68dcd5c500                PUSH 0xc5d5dc
006cd062  6a00                      PUSH 0x0
006cd064  50                        PUSH EAX
006cd065  e847384200                CALL 0x00af08b1
006cd06a  f30f10442438              MOVSS XMM0,dword ptr [ESP + 0x38]
006cd070  8bd8                      MOV EBX,EAX
006cd072  83c414                    ADD ESP,0x14
006cd075  f30f118318040000          MOVSS dword ptr [EBX + 0x418],XMM0
006cd07d  e8de1e0200                CALL 0x006eef60
006cd082  660f6ec0                  MOVD XMM0,EAX
006cd086  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006cd08a  c1e81f                    SHR EAX,0x1f
006cd08d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006cd096  660f5ac8                  CVTPD2PS XMM1,XMM0
006cd09a  f30f100584a7ba00          MOVSS XMM0,dword ptr [0x00baa784]
006cd0a2  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
006cd0aa  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
006cd0b2  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
006cd0ba  f30f5cc1                  SUBSS XMM0,XMM1
006cd0be  f30f5c4510                SUBSS XMM0,dword ptr [EBP + 0x10]
006cd0c3  f30f118314040000          MOVSS dword ptr [EBX + 0x414],XMM0
006cd0cb  e8901e0200                CALL 0x006eef60
006cd0d0  8bf0                      MOV ESI,EAX
006cd0d2  83e601                    AND ESI,0x1
006cd0d5  e8861e0200                CALL 0x006eef60
006cd0da  660f6ec0                  MOVD XMM0,EAX
006cd0de  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006cd0e2  c1e81f                    SHR EAX,0x1f
006cd0e5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006cd0ee  8b03                      MOV EAX,dword ptr [EBX]
006cd0f0  660f5ac8                  CVTPD2PS XMM1,XMM0
006cd0f4  660f6ec6                  MOVD XMM0,ESI
006cd0f8  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
006cd100  c1ee1f                    SHR ESI,0x1f
006cd103  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006cd107  f30f590dd0a0ba00          MULSS XMM1,dword ptr [0x00baa0d0]
006cd10f  f20f5804f500cbba00        ADDSD XMM0,qword ptr [ESI*0x8 + 0xbacb00]
006cd118  8b7514                    MOV ESI,dword ptr [EBP + 0x14]
006cd11b  660f5ac0                  CVTPD2PS XMM0,XMM0
006cd11f  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
006cd127  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
006cd12f  f30f58c1                  ADDSS XMM0,XMM1
006cd133  0f57c9                    XORPS XMM1,XMM1
006cd136  f30f594614                MULSS XMM0,dword ptr [ESI + 0x14]
006cd13b  f30f59442420              MULSS XMM0,dword ptr [ESP + 0x20]
006cd141  f30f118320040000          MOVSS dword ptr [EBX + 0x420],XMM0
006cd149  f30f10869c000000          MOVSS XMM0,dword ptr [ESI + 0x9c]
006cd151  0f2fc8                    COMISS XMM1,XMM0
006cd154  7608                      JBE 0x006cd15e
006cd156  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006cd15e  51                        PUSH ECX
006cd15f  8bcb                      MOV ECX,EBX
006cd161  f30f110424                MOVSS dword ptr [ESP],XMM0
006cd166  ff5040                    CALL dword ptr [EAX + 0x40]
006cd169  8b4658                    MOV EAX,dword ptr [ESI + 0x58]
006cd16c  8d4e2c                    LEA ECX,[ESI + 0x2c]
006cd16f  098338040000              OR dword ptr [EBX + 0x438],EAX
006cd175  8b465c                    MOV EAX,dword ptr [ESI + 0x5c]
006cd178  09833c040000              OR dword ptr [EBX + 0x43c],EAX
006cd17e  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
006cd183  f30f588310040000          ADDSS XMM0,dword ptr [EBX + 0x410]
006cd18b  8b03                      MOV EAX,dword ptr [EBX]
006cd18d  6a01                      PUSH 0x1
006cd18f  6a00                      PUSH 0x0
006cd191  68ff000000                PUSH 0xff
006cd196  f30f118310040000          MOVSS dword ptr [EBX + 0x410],XMM0
006cd19e  f30f108318040000          MOVSS XMM0,dword ptr [EBX + 0x418]
006cd1a6  f30f58460c                ADDSS XMM0,dword ptr [ESI + 0xc]
006cd1ab  6aff                      PUSH -0x1
006cd1ad  51                        PUSH ECX
006cd1ae  8bcb                      MOV ECX,EBX
006cd1b0  f30f118318040000          MOVSS dword ptr [EBX + 0x418],XMM0
006cd1b8  f30f104608                MOVSS XMM0,dword ptr [ESI + 0x8]
006cd1bd  f30f588314040000          ADDSS XMM0,dword ptr [EBX + 0x414]
006cd1c5  f30f118314040000          MOVSS dword ptr [EBX + 0x414],XMM0
006cd1cd  f30f104e10                MOVSS XMM1,dword ptr [ESI + 0x10]
006cd1d2  0f28c1                    MOVAPS XMM0,XMM1
006cd1d5  f30f598b64030000          MULSS XMM1,dword ptr [EBX + 0x364]
006cd1dd  f30f598360030000          MULSS XMM0,dword ptr [EBX + 0x360]
006cd1e5  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
006cd1ed  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
006cd1f5  ff503c                    CALL dword ptr [EAX + 0x3c]
006cd1f8  8b8bbc030000              MOV ECX,dword ptr [EBX + 0x3bc]
006cd1fe  8d83bc030000              LEA EAX,[EBX + 0x3bc]
006cd204  85c9                      TEST ECX,ECX
006cd206  741a                      JZ 0x006cd222
006cd208  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
006cd20c  81c1cc030000              ADD ECX,0x3cc
006cd212  8d44241c                  LEA EAX,[ESP + 0x1c]
006cd216  50                        PUSH EAX
006cd217  e8f41fe0ff                CALL 0x004cf210
006cd21c  8d83bc030000              LEA EAX,[EBX + 0x3bc]
006cd222  50                        PUSH EAX
006cd223  8bcf                      MOV ECX,EDI
006cd225  8938                      MOV dword ptr [EAX],EDI
006cd227  e8c40ae0ff                CALL 0x004cdcf0
006cd22c  8b4624                    MOV EAX,dword ptr [ESI + 0x24]
006cd22f  89832c040000              MOV dword ptr [EBX + 0x42c],EAX
006cd235  f30f104668                MOVSS XMM0,dword ptr [ESI + 0x68]
006cd23a  f30f104e6c                MOVSS XMM1,dword ptr [ESI + 0x6c]
006cd23f  f30f118334030000          MOVSS dword ptr [EBX + 0x334],XMM0
006cd247  f30f118b38030000          MOVSS dword ptr [EBX + 0x338],XMM1
006cd24f  8b8680000000              MOV EAX,dword ptr [ESI + 0x80]
006cd255  8b8e84000000              MOV ECX,dword ptr [ESI + 0x84]
006cd25b  898b54040000              MOV dword ptr [EBX + 0x454],ECX
006cd261  8bcf                      MOV ECX,EDI
006cd263  898350040000              MOV dword ptr [EBX + 0x450],EAX
006cd269  8b8688000000              MOV EAX,dword ptr [ESI + 0x88]
006cd26f  898358040000              MOV dword ptr [EBX + 0x458],EAX
006cd275  8b868c000000              MOV EAX,dword ptr [ESI + 0x8c]
006cd27b  6a00                      PUSH 0x0
006cd27d  89835c040000              MOV dword ptr [EBX + 0x45c],EAX
006cd283  8b86a0000000              MOV EAX,dword ptr [ESI + 0xa0]
006cd289  6800000001                PUSH 0x1000000
006cd28e  898370040000              MOV dword ptr [EBX + 0x470],EAX
006cd294  e897a1d4ff                CALL 0x00417430
006cd299  84c0                      TEST AL,AL
006cd29b  0f84d5000000              JZ 0x006cd376
006cd2a1  83be940000000b            CMP dword ptr [ESI + 0x94],0xb
006cd2a8  0f85c8000000              JNZ 0x006cd376
006cd2ae  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006cd2b1  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
006cd2b9  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
006cd2c1  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006cd2c7  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
006cd2cd  89442438                  MOV dword ptr [ESP + 0x38],EAX
006cd2d1  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006cd2d4  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
006cd2d8  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
006cd2db  89442440                  MOV dword ptr [ESP + 0x40],EAX
006cd2df  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
006cd2e2  89442444                  MOV dword ptr [ESP + 0x44],EAX
006cd2e6  8bc1                      MOV EAX,ECX
006cd2e8  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
006cd2ee  2500010000                AND EAX,0x100
006cd2f3  83c800                    OR EAX,0x0
006cd2f6  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
006cd2fe  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
006cd304  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
006cd30c  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
006cd312  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
006cd318  c744241c01000000          MOV dword ptr [ESP + 0x1c],0x1
006cd320  7508                      JNZ 0x006cd32a
006cd322  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
006cd32a  81e100000020              AND ECX,0x20000000
006cd330  83c900                    OR ECX,0x0
006cd333  7407                      JZ 0x006cd33c
006cd335  b902000000                MOV ECX,0x2
006cd33a  eb02                      JMP 0x006cd33e
006cd33c  33c9                      XOR ECX,ECX
006cd33e  81e200004000              AND EDX,0x400000
006cd344  33c0                      XOR EAX,EAX
006cd346  0bc2                      OR EAX,EDX
006cd348  7407                      JZ 0x006cd351
006cd34a  b804000000                MOV EAX,0x4
006cd34f  eb02                      JMP 0x006cd353
006cd351  33c0                      XOR EAX,EAX
006cd353  0bc1                      OR EAX,ECX
006cd355  897c245c                  MOV dword ptr [ESP + 0x5c],EDI
006cd359  0b44241c                  OR EAX,dword ptr [ESP + 0x1c]
006cd35d  8bcb                      MOV ECX,EBX
006cd35f  6a00                      PUSH 0x0
006cd361  6a00                      PUSH 0x0
006cd363  89442460                  MOV dword ptr [ESP + 0x60],EAX
006cd367  8d442440                  LEA EAX,[ESP + 0x40]
006cd36b  686affffff                PUSH 0xffffff6a
006cd370  50                        PUSH EAX
006cd371  e89a88feff                CALL 0x006b5c10
006cd376  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
006cd37d  7408                      JZ 0x006cd387
006cd37f  8b97640c0000              MOV EDX,dword ptr [EDI + 0xc64]
006cd385  eb03                      JMP 0x006cd38a
006cd387  83caff                    OR EDX,0xffffffff
006cd38a  f30f108f380c0000          MOVSS XMM1,dword ptr [EDI + 0xc38]
006cd392  8bcb                      MOV ECX,EBX
006cd394  57                        PUSH EDI
006cd395  ffb76c010000              PUSH dword ptr [EDI + 0x16c]
006cd39b  ffb768010000              PUSH dword ptr [EDI + 0x168]
006cd3a1  e86adcffff                CALL 0x006cb010
006cd3a6  8b8bbc030000              MOV ECX,dword ptr [EBX + 0x3bc]
006cd3ac  8d83bc030000              LEA EAX,[EBX + 0x3bc]
006cd3b2  83c40c                    ADD ESP,0xc
006cd3b5  85c9                      TEST ECX,ECX
006cd3b7  741a                      JZ 0x006cd3d3
006cd3b9  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
006cd3bd  81c1cc030000              ADD ECX,0x3cc
006cd3c3  8d44241c                  LEA EAX,[ESP + 0x1c]
006cd3c7  50                        PUSH EAX
006cd3c8  e8431ee0ff                CALL 0x004cf210
006cd3cd  8d83bc030000              LEA EAX,[EBX + 0x3bc]
006cd3d3  50                        PUSH EAX
006cd3d4  8bcf                      MOV ECX,EDI
006cd3d6  8938                      MOV dword ptr [EAX],EDI
006cd3d8  e81309e0ff                CALL 0x004cdcf0
006cd3dd  836d0801                  SUB dword ptr [EBP + 0x8],0x1
006cd3e1  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006cd3e4  894334                    MOV dword ptr [EBX + 0x34],EAX
006cd3e7  0f8553faffff              JNZ 0x006cce40
006cd3ed  8bc3                      MOV EAX,EBX
006cd3ef  5f                        POP EDI
006cd3f0  5e                        POP ESI
006cd3f1  5b                        POP EBX
006cd3f2  8be5                      MOV ESP,EBP
006cd3f4  5d                        POP EBP
006cd3f5  c21000                    RET 0x10
006cd3f8  5f                        POP EDI
006cd3f9  5e                        POP ESI
006cd3fa  33c0                      XOR EAX,EAX
006cd3fc  5b                        POP EBX
006cd3fd  8be5                      MOV ESP,EBP
006cd3ff  5d                        POP EBP
006cd400  c21000                    RET 0x10
