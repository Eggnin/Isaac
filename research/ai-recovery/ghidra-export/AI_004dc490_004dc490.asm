; J460 NPC AI 0x004dc490 AI_004dc490
; types=852
; identities=852.0.0
; entry=004dc490
004dc490  55                        PUSH EBP
004dc491  8bec                      MOV EBP,ESP
004dc493  83e4f8                    AND ESP,0xfffffff8
004dc496  83ec40                    SUB ESP,0x40
004dc499  56                        PUSH ESI
004dc49a  8bf1                      MOV ESI,ECX
004dc49c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004dc4a2  57                        PUSH EDI
004dc4a3  ffb10c830100              PUSH dword ptr [ECX + 0x1830c]
004dc4a9  ffb104830100              PUSH dword ptr [ECX + 0x18304]
004dc4af  e80c472600                CALL 0x00740bc0
004dc4b4  83be740b000003            CMP dword ptr [ESI + 0xb74],0x3
004dc4bb  0f854d010000              JNZ 0x004dc60e
004dc4c1  8b867c0b0000              MOV EAX,dword ptr [ESI + 0xb7c]
004dc4c7  81782854030000            CMP dword ptr [EAX + 0x28],0x354
004dc4ce  0f85cb000000              JNZ 0x004dc59f
004dc4d4  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004dc4dc  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004dc4e4  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004dc4ec  f30f5c9640030000          SUBSS XMM2,dword ptr [ESI + 0x340]
004dc4f4  0f28c1                    MOVAPS XMM0,XMM1
004dc4f7  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
004dc4fd  f30f59c1                  MULSS XMM0,XMM1
004dc501  0f28ca                    MOVAPS XMM1,XMM2
004dc504  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
004dc50a  f30f59ca                  MULSS XMM1,XMM2
004dc50e  f30f58c1                  ADDSS XMM0,XMM1
004dc512  e83995f5ff                CALL 0x00435a50
004dc517  0f57c9                    XORPS XMM1,XMM1
004dc51a  0f2fc1                    COMISS XMM0,XMM1
004dc51d  762f                      JBE 0x004dc54e
004dc51f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004dc527  f30f5ec8                  DIVSS XMM1,XMM0
004dc52b  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
004dc531  0f28c1                    MOVAPS XMM0,XMM1
004dc534  f30f59d0                  MULSS XMM2,XMM0
004dc538  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
004dc53e  f30f59c1                  MULSS XMM0,XMM1
004dc542  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
004dc548  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
004dc54e  8b96c00b0000              MOV EDX,dword ptr [ESI + 0xbc0]
004dc554  8d4c2418                  LEA ECX,[ESP + 0x18]
004dc558  e8732c1a00                CALL 0x0067f1d0
004dc55d  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
004dc563  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
004dc569  f30f5908                  MULSS XMM1,dword ptr [EAX]
004dc56d  f30f594004                MULSS XMM0,dword ptr [EAX + 0x4]
004dc572  f30f58c1                  ADDSS XMM0,XMM1
004dc576  0f57c9                    XORPS XMM1,XMM1
004dc579  0f2fc1                    COMISS XMM0,XMM1
004dc57c  7621                      JBE 0x004dc59f
004dc57e  8b86c00b0000              MOV EAX,dword ptr [ESI + 0xbc0]
004dc584  83c002                    ADD EAX,0x2
004dc587  2503000080                AND EAX,0x80000003
004dc58c  7905                      JNS 0x004dc593
004dc58e  48                        DEC EAX
004dc58f  83c8fc                    OR EAX,0xfffffffc
004dc592  40                        INC EAX
004dc593  8986c00b0000              MOV dword ptr [ESI + 0xbc0],EAX
004dc599  5f                        POP EDI
004dc59a  5e                        POP ESI
004dc59b  8be5                      MOV ESP,EBP
004dc59d  5d                        POP EBP
004dc59e  c3                        RET
004dc59f  a17816c700                MOV EAX,[0x00c71678]
004dc5a4  8b8e7c0b0000              MOV ECX,dword ptr [ESI + 0xb7c]
004dc5aa  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004dc5b1  7c06                      JL 0x004dc5b9
004dc5b3  83792801                  CMP dword ptr [ECX + 0x28],0x1
004dc5b7  7411                      JZ 0x004dc5ca
004dc5b9  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
004dc5bc  83e80a                    SUB EAX,0xa
004dc5bf  3ddd030000                CMP EAX,0x3dd
004dc5c4  0f87b4040000              JA 0x004dca7e
004dc5ca  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
004dc5d0  2500000020                AND EAX,0x20000000
004dc5d5  83c800                    OR EAX,0x0
004dc5d8  7404                      JZ 0x004dc5de
004dc5da  b101                      MOV CL,0x1
004dc5dc  eb02                      JMP 0x004dc5e0
004dc5de  32c9                      XOR CL,CL
004dc5e0  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004dc5e6  2500000020                AND EAX,0x20000000
004dc5eb  83c800                    OR EAX,0x0
004dc5ee  7404                      JZ 0x004dc5f4
004dc5f0  b001                      MOV AL,0x1
004dc5f2  eb02                      JMP 0x004dc5f6
004dc5f4  32c0                      XOR AL,AL
004dc5f6  3ac8                      CMP CL,AL
004dc5f8  0f8580040000              JNZ 0x004dca7e
004dc5fe  c786800b000000000000      MOV dword ptr [ESI + 0xb80],0x0
004dc608  5f                        POP EDI
004dc609  5e                        POP ESI
004dc60a  8be5                      MOV ESP,EBP
004dc60c  5d                        POP EBP
004dc60d  c3                        RET
004dc60e  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
004dc616  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
004dc61c  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004dc624  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
004dc62a  8b8f00830100              MOV ECX,dword ptr [EDI + 0x18300]
004dc630  894c2414                  MOV dword ptr [ESP + 0x14],ECX
004dc634  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
004dc63c  85c0                      TEST EAX,EAX
004dc63e  0f84ef010000              JZ 0x004dc833
004dc644  83f803                    CMP EAX,0x3
004dc647  0f85f5020000              JNZ 0x004dc942
004dc64d  8b96c00b0000              MOV EDX,dword ptr [ESI + 0xbc0]
004dc653  8d4c240c                  LEA ECX,[ESP + 0xc]
004dc657  e8742b1a00                CALL 0x0067f1d0
004dc65c  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
004dc662  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
004dc66a  8b7c2414                  MOV EDI,dword ptr [ESP + 0x14]
004dc66e  8bcf                      MOV ECX,EDI
004dc670  f30f10969c030000          MOVSS XMM2,dword ptr [ESI + 0x39c]
004dc678  f30f59c2                  MULSS XMM0,XMM2
004dc67c  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
004dc684  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
004dc68c  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
004dc692  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
004dc69a  f30f59c2                  MULSS XMM0,XMM2
004dc69e  f30f588664030000          ADDSS XMM0,dword ptr [ESI + 0x364]
004dc6a6  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
004dc6ae  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
004dc6b4  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004dc6bc  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
004dc6c4  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004dc6ca  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
004dc6d0  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004dc6d8  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
004dc6e0  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
004dc6e6  ff74241c                  PUSH dword ptr [ESP + 0x1c]
004dc6ea  ff74241c                  PUSH dword ptr [ESP + 0x1c]
004dc6ee  e88d403100                CALL 0x007f0780
004dc6f3  83f801                    CMP EAX,0x1
004dc6f6  7e1b                      JLE 0x004dc713
004dc6f8  8b86c00b0000              MOV EAX,dword ptr [ESI + 0xbc0]
004dc6fe  83c002                    ADD EAX,0x2
004dc701  2503000080                AND EAX,0x80000003
004dc706  7905                      JNS 0x004dc70d
004dc708  48                        DEC EAX
004dc709  83c8fc                    OR EAX,0xfffffffc
004dc70c  40                        INC EAX
004dc70d  8986c00b0000              MOV dword ptr [ESI + 0xbc0],EAX
004dc713  6a00                      PUSH 0x0
004dc715  6854bcb100                PUSH 0xb1bc54
004dc71a  8d4e48                    LEA ECX,[ESI + 0x48]
004dc71d  e85edcf2ff                CALL 0x0040a380
004dc722  8b8634040000              MOV EAX,dword ptr [ESI + 0x434]
004dc728  99                        CDQ
004dc729  f77f0c                    IDIV dword ptr [EDI + 0xc]
004dc72c  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
004dc734  f30f1064240c              MOVSS XMM4,dword ptr [ESP + 0xc]
004dc73a  f30f106c2410              MOVSS XMM5,dword ptr [ESP + 0x10]
004dc740  0f542540cbba00            ANDPS XMM4,xmmword ptr [0x00bacb40]
004dc747  0f542d40cbba00            ANDPS XMM5,xmmword ptr [0x00bacb40]
004dc74e  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
004dc756  660f6eda                  MOVD XMM3,EDX
004dc75a  660f6ed0                  MOVD XMM2,EAX
004dc75e  0f5bdb                    CVTDQ2PS XMM3,XMM3
004dc761  0f5bd2                    CVTDQ2PS XMM2,XMM2
004dc764  f30f59d8                  MULSS XMM3,XMM0
004dc768  f30f59d0                  MULSS XMM2,XMM0
004dc76c  0f2fec                    COMISS XMM5,XMM4
004dc76f  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
004dc777  f30f58d8                  ADDSS XMM3,XMM0
004dc77b  f30f581500aaba00          ADDSS XMM2,dword ptr [0x00baaa00]
004dc783  7657                      JBE 0x004dc7dc
004dc785  f30f1015e0a3ba00          MOVSS XMM2,dword ptr [0x00baa3e0]
004dc78d  0f2ecc                    UCOMISS XMM1,XMM4
004dc790  9f                        LAHF
004dc791  f6c444                    TEST AH,0x44
004dc794  7b13                      JNP 0x004dc7a9
004dc796  0f28c1                    MOVAPS XMM0,XMM1
004dc799  f30f59ca                  MULSS XMM1,XMM2
004dc79d  f30f58c2                  ADDSS XMM0,XMM2
004dc7a1  f30f5cc1                  SUBSS XMM0,XMM1
004dc7a5  f30f5ed0                  DIVSS XMM2,XMM0
004dc7a9  f30f5c9e3c030000          SUBSS XMM3,dword ptr [ESI + 0x33c]
004dc7b1  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
004dc7b9  f30f5ce2                  SUBSS XMM4,XMM2
004dc7bd  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
004dc7c3  f30f5cd8                  SUBSS XMM3,XMM0
004dc7c7  f30f59dc                  MULSS XMM3,XMM4
004dc7cb  f30f58d8                  ADDSS XMM3,XMM0
004dc7cf  f30f119e60030000          MOVSS dword ptr [ESI + 0x360],XMM3
004dc7d7  e966010000                JMP 0x004dc942
004dc7dc  f30f101de0a3ba00          MOVSS XMM3,dword ptr [0x00baa3e0]
004dc7e4  0f2ecc                    UCOMISS XMM1,XMM4
004dc7e7  9f                        LAHF
004dc7e8  f6c444                    TEST AH,0x44
004dc7eb  7b13                      JNP 0x004dc800
004dc7ed  0f28c1                    MOVAPS XMM0,XMM1
004dc7f0  f30f59cb                  MULSS XMM1,XMM3
004dc7f4  f30f58c3                  ADDSS XMM0,XMM3
004dc7f8  f30f5cc1                  SUBSS XMM0,XMM1
004dc7fc  f30f5ed8                  DIVSS XMM3,XMM0
004dc800  f30f5c9640030000          SUBSS XMM2,dword ptr [ESI + 0x340]
004dc808  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
004dc810  f30f5ce3                  SUBSS XMM4,XMM3
004dc814  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
004dc81a  f30f5cd0                  SUBSS XMM2,XMM0
004dc81e  f30f59d4                  MULSS XMM2,XMM4
004dc822  f30f58d0                  ADDSS XMM2,XMM0
004dc826  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
004dc82e  e90f010000                JMP 0x004dc942
004dc833  8b4630                    MOV EAX,dword ptr [ESI + 0x30]
004dc836  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004dc83e  83e003                    AND EAX,0x3
004dc841  8986c00b0000              MOV dword ptr [ESI + 0xbc0],EAX
004dc847  c786640b000003000000      MOV dword ptr [ESI + 0xb64],0x3
004dc851  c686b003000001            MOV byte ptr [ESI + 0x3b0],0x1
004dc858  c786180f000004000000      MOV dword ptr [ESI + 0xf18],0x4
004dc862  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
004dc86a  f30f5cc2                  SUBSS XMM0,XMM2
004dc86e  f30f5ec2                  DIVSS XMM0,XMM2
004dc872  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004dc87a  f30f2cd0                  CVTTSS2SI EDX,XMM0
004dc87e  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004dc886  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004dc88e  f30f5ec2                  DIVSS XMM0,XMM2
004dc892  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004dc89a  f30f2cc0                  CVTTSS2SI EAX,XMM0
004dc89e  85d2                      TEST EDX,EDX
004dc8a0  7816                      JS 0x004dc8b8
004dc8a2  3b510c                    CMP EDX,dword ptr [ECX + 0xc]
004dc8a5  7d11                      JGE 0x004dc8b8
004dc8a7  85c0                      TEST EAX,EAX
004dc8a9  780d                      JS 0x004dc8b8
004dc8ab  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
004dc8ae  7d08                      JGE 0x004dc8b8
004dc8b0  0faf410c                  IMUL EAX,dword ptr [ECX + 0xc]
004dc8b4  03c2                      ADD EAX,EDX
004dc8b6  eb03                      JMP 0x004dc8bb
004dc8b8  83c8ff                    OR EAX,0xffffffff
004dc8bb  818e6801000011000100      OR dword ptr [ESI + 0x168],0x10011
004dc8c5  8d8ee4010000              LEA ECX,[ESI + 0x1e4]
004dc8cb  838e6c01000008            OR dword ptr [ESI + 0x16c],0x8
004dc8d2  898634040000              MOV dword ptr [ESI + 0x434],EAX
004dc8d8  c7868401000006000000      MOV dword ptr [ESI + 0x184],0x6
004dc8e2  81f9804ec300              CMP ECX,0xc34e80
004dc8e8  742a                      JZ 0x004dc914
004dc8ea  0f1005804ec300            MOVUPS XMM0,xmmword ptr [0x00c34e80]
004dc8f1  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004dc8f4  0f1005904ec300            MOVUPS XMM0,xmmword ptr [0x00c34e90]
004dc8fb  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004dc8ff  f30f7e05a04ec300          MOVQ XMM0,qword ptr [0x00c34ea0]
004dc907  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004dc90c  a1a84ec300                MOV EAX,[0x00c34ea8]
004dc911  894128                    MOV dword ptr [ECX + 0x28],EAX
004dc914  8bce                      MOV ECX,ESI
004dc916  c786c40b000000000000      MOV dword ptr [ESI + 0xbc4],0x0
004dc920  e8fba21f00                CALL 0x006d6c20
004dc925  85c0                      TEST EAX,EAX
004dc927  7f0f                      JG 0x004dc938
004dc929  8b8700830100              MOV EAX,dword ptr [EDI + 0x18300]
004dc92f  80b82972000000            CMP byte ptr [EAX + 0x7229],0x0
004dc936  740a                      JZ 0x004dc942
004dc938  c786c40b000001000000      MOV dword ptr [ESI + 0xbc4],0x1
004dc942  83bec40b000000            CMP dword ptr [ESI + 0xbc4],0x0
004dc949  7430                      JZ 0x004dc97b
004dc94b  8bce                      MOV ECX,ESI
004dc94d  e8cea21f00                CALL 0x006d6c20
004dc952  85c0                      TEST EAX,EAX
004dc954  7f25                      JG 0x004dc97b
004dc956  8b8f00830100              MOV ECX,dword ptr [EDI + 0x18300]
004dc95c  803900                    CMP byte ptr [ECX],0x0
004dc95f  741a                      JZ 0x004dc97b
004dc961  8b87f8640200              MOV EAX,dword ptr [EDI + 0x264f8]
004dc967  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004dc96d  83f850                    CMP EAX,0x50
004dc970  7e09                      JLE 0x004dc97b
004dc972  80b92972000000            CMP byte ptr [ECX + 0x7229],0x0
004dc979  7436                      JZ 0x004dc9b1
004dc97b  ffb70c830100              PUSH dword ptr [EDI + 0x1830c]
004dc981  8bcf                      MOV ECX,EDI
004dc983  ffb704830100              PUSH dword ptr [EDI + 0x18304]
004dc989  e832422600                CALL 0x00740bc0
004dc98e  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
004dc991  d1e8                      SHR EAX,0x1
004dc993  a801                      TEST AL,0x1
004dc995  751a                      JNZ 0x004dc9b1
004dc997  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004dc99d  6897000000                PUSH 0x97
004dc9a2  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
004dc9a8  e803f6f6ff                CALL 0x0044bfb0
004dc9ad  84c0                      TEST AL,AL
004dc9af  7457                      JZ 0x004dca08
004dc9b1  8b0d40b6c700              MOV ECX,dword ptr [0x00c7b640]
004dc9b7  a144b6c700                MOV EAX,[0x00c7b644]
004dc9bc  894c2430                  MOV dword ptr [ESP + 0x30],ECX
004dc9c0  894c2438                  MOV dword ptr [ESP + 0x38],ECX
004dc9c4  8d4c2420                  LEA ECX,[ESP + 0x20]
004dc9c8  89442434                  MOV dword ptr [ESP + 0x34],EAX
004dc9cc  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
004dc9d0  8b06                      MOV EAX,dword ptr [ESI]
004dc9d2  51                        PUSH ECX
004dc9d3  8bce                      MOV ECX,ESI
004dc9d5  c744242400000000          MOV dword ptr [ESP + 0x24],0x0
004dc9dd  c744242800000000          MOV dword ptr [ESP + 0x28],0x0
004dc9e5  c744242c00000000          MOV dword ptr [ESP + 0x2c],0x0
004dc9ed  c744243000000000          MOV dword ptr [ESP + 0x30],0x0
004dc9f5  c744244400000000          MOV dword ptr [ESP + 0x44],0x0
004dc9fd  c744244800000000          MOV dword ptr [ESP + 0x48],0x0
004dca05  ff5024                    CALL dword ptr [EAX + 0x24]
004dca08  8a8673010000              MOV AL,byte ptr [ESI + 0x173]
004dca0e  84c0                      TEST AL,AL
004dca10  746c                      JZ 0x004dca7e
004dca12  83be2c03000000            CMP dword ptr [ESI + 0x32c],0x0
004dca19  8dbe2c030000              LEA EDI,[ESI + 0x32c]
004dca1f  7c2e                      JL 0x004dca4f
004dca21  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004dca27  6aff                      PUSH -0x1
004dca29  ffb104830100              PUSH dword ptr [ECX + 0x18304]
004dca2f  e88c412600                CALL 0x00740bc0
004dca34  57                        PUSH EDI
004dca35  8d4c241c                  LEA ECX,[ESP + 0x1c]
004dca39  51                        PUSH ECX
004dca3a  8d8880000000              LEA ECX,[EAX + 0x80]
004dca40  e87b7b0000                CALL 0x004e45c0
004dca45  8a8673010000              MOV AL,byte ptr [ESI + 0x173]
004dca4b  84c0                      TEST AL,AL
004dca4d  742f                      JZ 0x004dca7e
004dca4f  837e2c00                  CMP dword ptr [ESI + 0x2c],0x0
004dca53  7529                      JNZ 0x004dca7e
004dca55  e806252100                CALL 0x006eef60
004dca5a  6a00                      PUSH 0x0
004dca5c  50                        PUSH EAX
004dca5d  6a02                      PUSH 0x2
004dca5f  56                        PUSH ESI
004dca60  6840b6c700                PUSH 0xc7b640
004dca65  8d8e3c030000              LEA ECX,[ESI + 0x33c]
004dca6b  51                        PUSH ECX
004dca6c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004dca72  6a0f                      PUSH 0xf
004dca74  68e8030000                PUSH 0x3e8
004dca79  e892192200                CALL 0x006fe410
004dca7e  5f                        POP EDI
004dca7f  5e                        POP ESI
004dca80  8be5                      MOV ESP,EBP
004dca82  5d                        POP EBP
004dca83  c3                        RET
