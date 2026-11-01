; J460 NPC AI 0x006ace60 HELPER_Entity_TakeDamage
; types=4
; identities=4.*
; entry=006ace60
006ace60  55                        PUSH EBP
006ace61  8bec                      MOV EBP,ESP
006ace63  83e4f8                    AND ESP,0xfffffff8
006ace66  83ec3c                    SUB ESP,0x3c
006ace69  53                        PUSH EBX
006ace6a  56                        PUSH ESI
006ace6b  57                        PUSH EDI
006ace6c  8bf9                      MOV EDI,ECX
006ace6e  837f2801                  CMP dword ptr [EDI + 0x28],0x1
006ace72  750f                      JNZ 0x006ace83
006ace74  681872b600                PUSH 0xb67218
006ace79  6a10                      PUSH 0x10
006ace7b  e840443600                CALL 0x00a112c0
006ace80  83c408                    ADD ESP,0x8
006ace83  8b5d0c                    MOV EBX,dword ptr [EBP + 0xc]
006ace86  8bf3                      MOV ESI,EBX
006ace88  81e600200000              AND ESI,0x2000
006ace8e  8bc6                      MOV EAX,ESI
006ace90  83c800                    OR EAX,0x0
006ace93  7512                      JNZ 0x006acea7
006ace95  ff7514                    PUSH dword ptr [EBP + 0x14]
006ace98  8bcf                      MOV ECX,EDI
006ace9a  e871feffff                CALL 0x006acd10
006ace9f  84c0                      TEST AL,AL
006acea1  0f8592020000              JNZ 0x006ad139
006acea7  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
006aceac  0f57c9                    XORPS XMM1,XMM1
006aceaf  0f2fc1                    COMISS XMM0,XMM1
006aceb2  0f8697020000              JBE 0x006ad14f
006aceb8  6a00                      PUSH 0x0
006aceba  8bcf                      MOV ECX,EDI
006acebc  e89ff6ffff                CALL 0x006ac560
006acec1  84c0                      TEST AL,AL
006acec3  750f                      JNZ 0x006aced4
006acec5  817f28b6030000            CMP dword ptr [EDI + 0x28],0x3b6
006acecc  0f8575020000              JNZ 0x006ad147
006aced2  eb4b                      JMP 0x006acf1f
006aced4  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006aced7  3d25030000                CMP EAX,0x325
006acedc  0f8465020000              JZ 0x006ad147
006acee2  3d40030000                CMP EAX,0x340
006acee7  752f                      JNZ 0x006acf18
006acee9  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
006aceed  756d                      JNZ 0x006acf5c
006aceef  8b9fc8030000              MOV EBX,dword ptr [EDI + 0x3c8]
006acef5  85db                      TEST EBX,EBX
006acef7  7463                      JZ 0x006acf5c
006acef9  817b2889030000            CMP dword ptr [EBX + 0x28],0x389
006acf00  755a                      JNZ 0x006acf5c
006acf02  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
006acf08  83f810                    CMP EAX,0x10
006acf0b  0f8485000000              JZ 0x006acf96
006acf11  83f805                    CMP EAX,0x5
006acf14  7546                      JNZ 0x006acf5c
006acf16  eb7e                      JMP 0x006acf96
006acf18  3db6030000                CMP EAX,0x3b6
006acf1d  7512                      JNZ 0x006acf31
006acf1f  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
006acf23  7537                      JNZ 0x006acf5c
006acf25  8b9fbc030000              MOV EBX,dword ptr [EDI + 0x3bc]
006acf2b  85db                      TEST EBX,EBX
006acf2d  742d                      JZ 0x006acf5c
006acf2f  eb65                      JMP 0x006acf96
006acf31  3d79030000                CMP EAX,0x379
006acf36  7524                      JNZ 0x006acf5c
006acf38  8b9fbc030000              MOV EBX,dword ptr [EDI + 0x3bc]
006acf3e  85db                      TEST EBX,EBX
006acf40  741a                      JZ 0x006acf5c
006acf42  817b2899030000            CMP dword ptr [EBX + 0x28],0x399
006acf49  7511                      JNZ 0x006acf5c
006acf4b  39bbc0030000              CMP dword ptr [EBX + 0x3c0],EDI
006acf51  7543                      JNZ 0x006acf96
006acf53  83bb8801000000            CMP dword ptr [EBX + 0x188],0x0
006acf5a  753a                      JNZ 0x006acf96
006acf5c  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
006acf62  2500000020                AND EAX,0x20000000
006acf67  c644240c01                MOV byte ptr [ESP + 0xc],0x1
006acf6c  83c800                    OR EAX,0x0
006acf6f  7505                      JNZ 0x006acf76
006acf71  c644240c00                MOV byte ptr [ESP + 0xc],0x0
006acf76  ff74240c                  PUSH dword ptr [ESP + 0xc]
006acf7a  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006acf80  8d542410                  LEA EDX,[ESP + 0x10]
006acf84  e887ade3ff                CALL 0x004e7d10
006acf89  8bd8                      MOV EBX,EAX
006acf8b  83c404                    ADD ESP,0x4
006acf8e  85db                      TEST EBX,EBX
006acf90  0f84ae010000              JZ 0x006ad144
006acf96  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
006acf9c  8d4c240c                  LEA ECX,[ESP + 0xc]
006acfa0  c744240cf5010000          MOV dword ptr [ESP + 0xc],0x1f5
006acfa8  e8d3972a00                CALL 0x00956780
006acfad  83ec08                    SUB ESP,0x8
006acfb0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006acfb8  c704240000803f            MOV dword ptr [ESP],0x3f800000
006acfbf  6a00                      PUSH 0x0
006acfc1  6a0a                      PUSH 0xa
006acfc3  51                        PUSH ECX
006acfc4  c704240000803f            MOV dword ptr [ESP],0x3f800000
006acfcb  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
006acfd1  ff742420                  PUSH dword ptr [ESP + 0x20]
006acfd5  e8560c2800                CALL 0x0092dc30
006acfda  8b8fd8030000              MOV ECX,dword ptr [EDI + 0x3d8]
006acfe0  85c9                      TEST ECX,ECX
006acfe2  7405                      JZ 0x006acfe9
006acfe4  8b01                      MOV EAX,dword ptr [ECX]
006acfe6  ff5028                    CALL dword ptr [EAX + 0x28]
006acfe9  e8721f0400                CALL 0x006eef60
006acfee  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006acff4  6a00                      PUSH 0x0
006acff6  50                        PUSH EAX
006acff7  6a00                      PUSH 0x0
006acff9  53                        PUSH EBX
006acffa  6840b6c700                PUSH 0xc7b640
006acfff  8d873c030000              LEA EAX,[EDI + 0x33c]
006ad005  50                        PUSH EAX
006ad006  68a0000000                PUSH 0xa0
006ad00b  68e8030000                PUSH 0x3e8
006ad010  e8fb130500                CALL 0x006fe410
006ad015  8bf0                      MOV ESI,EAX
006ad017  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
006ad01d  8d86bc030000              LEA EAX,[ESI + 0x3bc]
006ad023  85c9                      TEST ECX,ECX
006ad025  741a                      JZ 0x006ad041
006ad027  8944240c                  MOV dword ptr [ESP + 0xc],EAX
006ad02b  81c1cc030000              ADD ECX,0x3cc
006ad031  8d44240c                  LEA EAX,[ESP + 0xc]
006ad035  50                        PUSH EAX
006ad036  e8d521e2ff                CALL 0x004cf210
006ad03b  8d86bc030000              LEA EAX,[ESI + 0x3bc]
006ad041  8918                      MOV dword ptr [EAX],EBX
006ad043  85db                      TEST EBX,EBX
006ad045  7408                      JZ 0x006ad04f
006ad047  50                        PUSH EAX
006ad048  8bcb                      MOV ECX,EBX
006ad04a  e8a10ce2ff                CALL 0x004cdcf0
006ad04f  8b8ec4030000              MOV ECX,dword ptr [ESI + 0x3c4]
006ad055  8d9ec4030000              LEA EBX,[ESI + 0x3c4]
006ad05b  85c9                      TEST ECX,ECX
006ad05d  7414                      JZ 0x006ad073
006ad05f  8d44240c                  LEA EAX,[ESP + 0xc]
006ad063  895c240c                  MOV dword ptr [ESP + 0xc],EBX
006ad067  50                        PUSH EAX
006ad068  81c1cc030000              ADD ECX,0x3cc
006ad06e  e89d21e2ff                CALL 0x004cf210
006ad073  53                        PUSH EBX
006ad074  8bcf                      MOV ECX,EDI
006ad076  893b                      MOV dword ptr [EBX],EDI
006ad078  e8730ce2ff                CALL 0x004cdcf0
006ad07d  c7866804000000000000      MOV dword ptr [ESI + 0x468],0x0
006ad087  c7866c0400000000c0c1      MOV dword ptr [ESI + 0x46c],0xc1c00000
006ad091  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
006ad095  7469                      JZ 0x006ad100
006ad097  684cd8b100                PUSH 0xb1d84c
006ad09c  8d4f78                    LEA ECX,[EDI + 0x78]
006ad09f  e83cdcd5ff                CALL 0x0040ace0
006ad0a4  85c0                      TEST EAX,EAX
006ad0a6  7458                      JZ 0x006ad100
006ad0a8  f30f1018                  MOVSS XMM3,dword ptr [EAX]
006ad0ac  0f57d2                    XORPS XMM2,XMM2
006ad0af  f30f5cda                  SUBSS XMM3,XMM2
006ad0b3  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
006ad0b8  f30f5c155ca7ba00          SUBSS XMM2,dword ptr [0x00baa75c]
006ad0c0  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
006ad0c8  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
006ad0d0  f30f5e1d24a3ba00          DIVSS XMM3,dword ptr [0x00baa324]
006ad0d8  f30f5e1524a3ba00          DIVSS XMM2,dword ptr [0x00baa324]
006ad0e0  f30f589f4c030000          ADDSS XMM3,dword ptr [EDI + 0x34c]
006ad0e8  f30f589750030000          ADDSS XMM2,dword ptr [EDI + 0x350]
006ad0f0  f30f119e4c030000          MOVSS dword ptr [ESI + 0x34c],XMM3
006ad0f8  f30f119650030000          MOVSS dword ptr [ESI + 0x350],XMM2
006ad100  8b06                      MOV EAX,dword ptr [ESI]
006ad102  8bce                      MOV ECX,ESI
006ad104  ff500c                    CALL dword ptr [EAX + 0xc]
006ad107  8b8fd8030000              MOV ECX,dword ptr [EDI + 0x3d8]
006ad10d  8d9fd8030000              LEA EBX,[EDI + 0x3d8]
006ad113  3bce                      CMP ECX,ESI
006ad115  7422                      JZ 0x006ad139
006ad117  85c9                      TEST ECX,ECX
006ad119  7414                      JZ 0x006ad12f
006ad11b  8d44240c                  LEA EAX,[ESP + 0xc]
006ad11f  895c240c                  MOV dword ptr [ESP + 0xc],EBX
006ad123  50                        PUSH EAX
006ad124  81c1cc030000              ADD ECX,0x3cc
006ad12a  e8e120e2ff                CALL 0x004cf210
006ad12f  53                        PUSH EBX
006ad130  8bce                      MOV ECX,ESI
006ad132  8933                      MOV dword ptr [EBX],ESI
006ad134  e8b70be2ff                CALL 0x004cdcf0
006ad139  32c0                      XOR AL,AL
006ad13b  5f                        POP EDI
006ad13c  5e                        POP ESI
006ad13d  5b                        POP EBX
006ad13e  8be5                      MOV ESP,EBP
006ad140  5d                        POP EBP
006ad141  c21400                    RET 0x14
006ad144  8b5d0c                    MOV EBX,dword ptr [EBP + 0xc]
006ad147  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
006ad14c  0f57c9                    XORPS XMM1,XMM1
006ad14f  8bc3                      MOV EAX,EBX
006ad151  83e002                    AND EAX,0x2
006ad154  83c800                    OR EAX,0x0
006ad157  7418                      JZ 0x006ad171
006ad159  0f2fc1                    COMISS XMM0,XMM1
006ad15c  7613                      JBE 0x006ad171
006ad15e  83bf1002000000            CMP dword ptr [EDI + 0x210],0x0
006ad165  7fd2                      JG 0x006ad139
006ad167  c787100200000a000000      MOV dword ptr [EDI + 0x210],0xa
006ad171  8bc3                      MOV EAX,EBX
006ad173  83e040                    AND EAX,0x40
006ad176  83c800                    OR EAX,0x0
006ad179  7412                      JZ 0x006ad18d
006ad17b  83bf1402000000            CMP dword ptr [EDI + 0x214],0x0
006ad182  7fb5                      JG 0x006ad139
006ad184  8b4518                    MOV EAX,dword ptr [EBP + 0x18]
006ad187  898714020000              MOV dword ptr [EDI + 0x214],EAX
006ad18d  83ce00                    OR ESI,0x0
006ad190  0f8594000000              JNZ 0x006ad22a
006ad196  8b07                      MOV EAX,dword ptr [EDI]
006ad198  8bcf                      MOV ECX,EDI
006ad19a  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
006ad19d  ffd0                      CALL EAX
006ad19f  84c0                      TEST AL,AL
006ad1a1  0f8483000000              JZ 0x006ad22a
006ad1a7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ad1ad  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
006ad1b3  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
006ad1b9  c1f802                    SAR EAX,0x2
006ad1bc  83f801                    CMP EAX,0x1
006ad1bf  7669                      JBE 0x006ad22a
006ad1c1  33db                      XOR EBX,EBX
006ad1c3  56                        PUSH ESI
006ad1c4  e8a7a6d6ff                CALL 0x00417870
006ad1c9  8b88681e0000              MOV ECX,dword ptr [EAX + 0x1e68]
006ad1cf  85c9                      TEST ECX,ECX
006ad1d1  7417                      JZ 0x006ad1ea
006ad1d3  8b911c160000              MOV EDX,dword ptr [ECX + 0x161c]
006ad1d9  83faff                    CMP EDX,-0x1
006ad1dc  740c                      JZ 0x006ad1ea
006ad1de  3b901c160000              CMP EDX,dword ptr [EAX + 0x161c]
006ad1e4  7d04                      JGE 0x006ad1ea
006ad1e6  3bc1                      CMP EAX,ECX
006ad1e8  750a                      JNZ 0x006ad1f4
006ad1ea  83b8bc03000000            CMP dword ptr [EAX + 0x3bc],0x0
006ad1f1  7501                      JNZ 0x006ad1f4
006ad1f3  43                        INC EBX
006ad1f4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ad1fa  46                        INC ESI
006ad1fb  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
006ad201  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
006ad207  c1f802                    SAR EAX,0x2
006ad20a  3bf0                      CMP ESI,EAX
006ad20c  72b5                      JC 0x006ad1c3
006ad20e  f30f104d08                MOVSS XMM1,dword ptr [EBP + 0x8]
006ad213  83fb01                    CMP EBX,0x1
006ad216  8b5d0c                    MOV EBX,dword ptr [EBP + 0xc]
006ad219  7e14                      JLE 0x006ad22f
006ad21b  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
006ad223  f30f114d08                MOVSS dword ptr [EBP + 0x8],XMM1
006ad228  eb05                      JMP 0x006ad22f
006ad22a  f30f104d08                MOVSS XMM1,dword ptr [EBP + 0x8]
006ad22f  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
006ad235  33c0                      XOR EAX,EAX
006ad237  81e100004000              AND ECX,0x400000
006ad23d  0bc1                      OR EAX,ECX
006ad23f  740c                      JZ 0x006ad24d
006ad241  0f28c1                    MOVAPS XMM0,XMM1
006ad244  f30f58c8                  ADDSS XMM1,XMM0
006ad248  f30f114d08                MOVSS dword ptr [EBP + 0x8],XMM1
006ad24d  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
006ad255  0f57d2                    XORPS XMM2,XMM2
006ad258  0f2fc2                    COMISS XMM0,XMM2
006ad25b  0f86d8feffff              JBE 0x006ad139
006ad261  ff7518                    PUSH dword ptr [EBP + 0x18]
006ad264  8b7510                    MOV ESI,dword ptr [EBP + 0x10]
006ad267  0f28d1                    MOVAPS XMM2,XMM1
006ad26a  ff7514                    PUSH dword ptr [EBP + 0x14]
006ad26d  56                        PUSH ESI
006ad26e  53                        PUSH EBX
006ad26f  57                        PUSH EDI
006ad270  e8eb721b00                CALL 0x00864560
006ad275  84c0                      TEST AL,AL
006ad277  0f84bcfeffff              JZ 0x006ad139
006ad27d  8d4c2410                  LEA ECX,[ESP + 0x10]
006ad281  e80aafffff                CALL 0x006a8190
006ad286  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
006ad28b  8d4c2420                  LEA ECX,[ESP + 0x20]
006ad28f  ff7514                    PUSH dword ptr [EBP + 0x14]
006ad292  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
006ad298  895c241c                  MOV dword ptr [ESP + 0x1c],EBX
006ad29c  89742420                  MOV dword ptr [ESP + 0x20],ESI
006ad2a0  e8bbc6deff                CALL 0x00499960
006ad2a5  8d442410                  LEA EAX,[ESP + 0x10]
006ad2a9  50                        PUSH EAX
006ad2aa  8d4f08                    LEA ECX,[EDI + 0x8]
006ad2ad  e8feaa0000                CALL 0x006b7db0
006ad2b2  f30f104d08                MOVSS XMM1,dword ptr [EBP + 0x8]
006ad2b7  8b4514                    MOV EAX,dword ptr [EBP + 0x14]
006ad2ba  0f28c1                    MOVAPS XMM0,XMM1
006ad2bd  f30f584714                ADDSS XMM0,dword ptr [EDI + 0x14]
006ad2c2  095f18                    OR dword ptr [EDI + 0x18],EBX
006ad2c5  09771c                    OR dword ptr [EDI + 0x1c],ESI
006ad2c8  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
006ad2cd  8b4824                    MOV ECX,dword ptr [EAX + 0x24]
006ad2d0  85c9                      TEST ECX,ECX
006ad2d2  740e                      JZ 0x006ad2e2
006ad2d4  e867beffff                CALL 0x006a9140
006ad2d9  f30f104d08                MOVSS XMM1,dword ptr [EBP + 0x8]
006ad2de  8bf0                      MOV ESI,EAX
006ad2e0  eb02                      JMP 0x006ad2e4
006ad2e2  33f6                      XOR ESI,ESI
006ad2e4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ad2ea  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
006ad2f1  7c06                      JL 0x006ad2f9
006ad2f3  837f2801                  CMP dword ptr [EDI + 0x28],0x1
006ad2f7  740d                      JZ 0x006ad306
006ad2f9  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006ad2fc  83e80a                    SUB EAX,0xa
006ad2ff  3ddd030000                CMP EAX,0x3dd
006ad304  772b                      JA 0x006ad331
006ad306  85f6                      TEST ESI,ESI
006ad308  7427                      JZ 0x006ad331
006ad30a  56                        PUSH ESI
006ad30b  6a0f                      PUSH 0xf
006ad30d  81c1e0bb0100              ADD ECX,0x1bbe0
006ad313  0f28d9                    MOVAPS XMM3,XMM1
006ad316  e8a587d7ff                CALL 0x00425ac0
006ad31b  f30f104508                MOVSS XMM0,dword ptr [EBP + 0x8]
006ad320  e87b294400                CALL 0x00aefca0
006ad325  0186b8160000              ADD dword ptr [ESI + 0x16b8],EAX
006ad32b  0186bc160000              ADD dword ptr [ESI + 0x16bc],EAX
006ad331  5f                        POP EDI
006ad332  5e                        POP ESI
006ad333  b001                      MOV AL,0x1
006ad335  5b                        POP EBX
006ad336  8be5                      MOV ESP,EBP
006ad338  5d                        POP EBP
006ad339  c21400                    RET 0x14
