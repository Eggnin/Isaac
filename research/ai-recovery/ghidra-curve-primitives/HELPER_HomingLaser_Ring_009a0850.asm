; J460 NPC AI 0x009a0850 HELPER_HomingLaser_Ring
; types=7
; identities=7.*
; entry=009a0850
009a0850  53                        PUSH EBX
009a0851  8bdc                      MOV EBX,ESP
009a0853  83ec08                    SUB ESP,0x8
009a0856  83e4f8                    AND ESP,0xfffffff8
009a0859  83c404                    ADD ESP,0x4
009a085c  55                        PUSH EBP
009a085d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
009a0860  896c2404                  MOV dword ptr [ESP + 0x4],EBP
009a0864  8bec                      MOV EBP,ESP
009a0866  6aff                      PUSH -0x1
009a0868  680ddab000                PUSH 0xb0da0d
009a086d  64a100000000              MOV EAX,FS:[0x0]
009a0873  50                        PUSH EAX
009a0874  53                        PUSH EBX
009a0875  83ec40                    SUB ESP,0x40
009a0878  56                        PUSH ESI
009a0879  57                        PUSH EDI
009a087a  a1b493bf00                MOV EAX,[0x00bf93b4]
009a087f  33c5                      XOR EAX,EBP
009a0881  50                        PUSH EAX
009a0882  8d45f4                    LEA EAX,[EBP + -0xc]
009a0885  64a300000000              MOV FS:[0x0],EAX
009a088b  0f28c2                    MOVAPS XMM0,XMM2
009a088e  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
009a0893  894de0                    MOV dword ptr [EBP + -0x20],ECX
009a0896  f30f59053ca2ba00          MULSS XMM0,dword ptr [0x00baa23c]
009a089e  8d7148                    LEA ESI,[ECX + 0x48]
009a08a1  33ff                      XOR EDI,EDI
009a08a3  8975c8                    MOV dword ptr [EBP + -0x38],ESI
009a08a6  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
009a08ab  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
009a08b0  660f6ec7                  MOVD XMM0,EDI
009a08b4  0f57c9                    XORPS XMM1,XMM1
009a08b7  0f5bc0                    CVTDQ2PS XMM0,XMM0
009a08ba  f30f5e05a4a7ba00          DIVSS XMM0,dword ptr [0x00baa7a4]
009a08c2  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
009a08ca  f30f58c0                  ADDSS XMM0,XMM0
009a08ce  f30f5cc8                  SUBSS XMM1,XMM0
009a08d2  0f28c1                    MOVAPS XMM0,XMM1
009a08d5  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
009a08da  e841cca7ff                CALL 0x0041d520
009a08df  f30f5945d4                MULSS XMM0,dword ptr [EBP + -0x2c]
009a08e4  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
009a08e9  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
009a08ee  e84dcca7ff                CALL 0x0041d540
009a08f3  f30f5945d4                MULSS XMM0,dword ptr [EBP + -0x2c]
009a08f8  8b4308                    MOV EAX,dword ptr [EBX + 0x8]
009a08fb  f30f104dd8                MOVSS XMM1,dword ptr [EBP + -0x28]
009a0900  f30f5800                  ADDSS XMM0,dword ptr [EAX]
009a0904  f30f584804                ADDSS XMM1,dword ptr [EAX + 0x4]
009a0909  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
009a090e  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
009a0913  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
009a0918  f30f5c054ca5ba00          SUBSS XMM0,dword ptr [0x00baa54c]
009a0920  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
009a0925  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
009a092a  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
009a092f  e8eccba7ff                CALL 0x0041d520
009a0934  f30f5945e4                MULSS XMM0,dword ptr [EBP + -0x1c]
009a0939  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
009a093e  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
009a0943  e8f8cba7ff                CALL 0x0041d540
009a0948  f30f5945e4                MULSS XMM0,dword ptr [EBP + -0x1c]
009a094d  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
009a0950  f30f105dd0                MOVSS XMM3,dword ptr [EBP + -0x30]
009a0955  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
009a095a  f30f104dd8                MOVSS XMM1,dword ptr [EBP + -0x28]
009a095f  f30f5cd0                  SUBSS XMM2,XMM0
009a0963  f30f5845e8                ADDSS XMM0,dword ptr [EBP + -0x18]
009a0968  8b414c                    MOV EAX,dword ptr [ECX + 0x4c]
009a096b  f30f5ccb                  SUBSS XMM1,XMM3
009a096f  f30f585dd8                ADDSS XMM3,dword ptr [EBP + -0x28]
009a0974  f30f1155b8                MOVSS dword ptr [EBP + -0x48],XMM2
009a0979  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
009a097e  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
009a0983  f30f115dc4                MOVSS dword ptr [EBP + -0x3c],XMM3
009a0988  3b4150                    CMP EAX,dword ptr [ECX + 0x50]
009a098b  7417                      JZ 0x009a09a4
009a098d  0f1045b0                  MOVUPS XMM0,xmmword ptr [EBP + -0x50]
009a0991  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
009a0994  f30f7e45c0                MOVQ XMM0,qword ptr [EBP + -0x40]
009a0999  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
009a099e  83460418                  ADD dword ptr [ESI + 0x4],0x18
009a09a2  eb0c                      JMP 0x009a09b0
009a09a4  8d4db0                    LEA ECX,[EBP + -0x50]
009a09a7  51                        PUSH ECX
009a09a8  50                        PUSH EAX
009a09a9  8bce                      MOV ECX,ESI
009a09ab  e8000e0000                CALL 0x009a17b0
009a09b0  47                        INC EDI
009a09b1  83ff06                    CMP EDI,0x6
009a09b4  0f8ef6feffff              JLE 0x009a08b0
009a09ba  837b0c01                  CMP dword ptr [EBX + 0xc],0x1
009a09be  0f8571020000              JNZ 0x009a0c35
009a09c4  33c0                      XOR EAX,EAX
009a09c6  33ff                      XOR EDI,EDI
009a09c8  8945dc                    MOV dword ptr [EBP + -0x24],EAX
009a09cb  8945bc                    MOV dword ptr [EBP + -0x44],EAX
009a09ce  897dc0                    MOV dword ptr [EBP + -0x40],EDI
009a09d1  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
009a09d4  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
009a09d7  897dfc                    MOV dword ptr [EBP + -0x4],EDI
009a09da  33c9                      XOR ECX,ECX
009a09dc  a17816c700                MOV EAX,[0x00c71678]
009a09e1  894dd8                    MOV dword ptr [EBP + -0x28],ECX
009a09e4  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
009a09ea  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
009a09ed  398864120000              CMP dword ptr [EAX + 0x1264],ECX
009a09f3  0f86be000000              JBE 0x009a0ab7
009a09f9  0f1f8000000000            NOP dword ptr [EAX]
009a0a00  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
009a0a06  6a00                      PUSH 0x0
009a0a08  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
009a0a0b  8bce                      MOV ECX,ESI
009a0a0d  8975d0                    MOV dword ptr [EBP + -0x30],ESI
009a0a10  e84bbbd0ff                CALL 0x006ac560
009a0a15  8b4b10                    MOV ECX,dword ptr [EBX + 0x10]
009a0a18  84c0                      TEST AL,AL
009a0a1a  7418                      JZ 0x009a0a34
009a0a1c  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
009a0a22  2510000020                AND EAX,0x20000010
009a0a27  83c800                    OR EAX,0x0
009a0a2a  7508                      JNZ 0x009a0a34
009a0a2c  c645ef01                  MOV byte ptr [EBP + -0x11],0x1
009a0a30  3bf1                      CMP ESI,ECX
009a0a32  7504                      JNZ 0x009a0a38
009a0a34  c645ef00                  MOV byte ptr [EBP + -0x11],0x0
009a0a38  a17816c700                MOV EAX,[0x00c71678]
009a0a3d  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
009a0a44  7c21                      JL 0x009a0a67
009a0a46  837e2803                  CMP dword ptr [ESI + 0x28],0x3
009a0a4a  751b                      JNZ 0x009a0a67
009a0a4c  837e2c43                  CMP dword ptr [ESI + 0x2c],0x43
009a0a50  7515                      JNZ 0x009a0a67
009a0a52  ffb1c8030000              PUSH dword ptr [ECX + 0x3c8]
009a0a58  8bce                      MOV ECX,ESI
009a0a5a  e84185d0ff                CALL 0x006a8fa0
009a0a5f  84c0                      TEST AL,AL
009a0a61  7504                      JNZ 0x009a0a67
009a0a63  b001                      MOV AL,0x1
009a0a65  eb02                      JMP 0x009a0a69
009a0a67  32c0                      XOR AL,AL
009a0a69  807def00                  CMP byte ptr [EBP + -0x11],0x0
009a0a6d  7504                      JNZ 0x009a0a73
009a0a6f  84c0                      TEST AL,AL
009a0a71  7425                      JZ 0x009a0a98
009a0a73  3b7dd4                    CMP EDI,dword ptr [EBP + -0x2c]
009a0a76  740a                      JZ 0x009a0a82
009a0a78  8937                      MOV dword ptr [EDI],ESI
009a0a7a  83c704                    ADD EDI,0x4
009a0a7d  897dc0                    MOV dword ptr [EBP + -0x40],EDI
009a0a80  eb16                      JMP 0x009a0a98
009a0a82  8d45d0                    LEA EAX,[EBP + -0x30]
009a0a85  50                        PUSH EAX
009a0a86  57                        PUSH EDI
009a0a87  8d4dbc                    LEA ECX,[EBP + -0x44]
009a0a8a  e891bea8ff                CALL 0x0042c920
009a0a8f  8b45c4                    MOV EAX,dword ptr [EBP + -0x3c]
009a0a92  8b7dc0                    MOV EDI,dword ptr [EBP + -0x40]
009a0a95  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
009a0a98  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
009a0a9b  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
009a0a9e  41                        INC ECX
009a0a9f  894dd8                    MOV dword ptr [EBP + -0x28],ECX
009a0aa2  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
009a0aa8  0f8252ffffff              JC 0x009a0a00
009a0aae  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
009a0ab1  8b75c8                    MOV ESI,dword ptr [EBP + -0x38]
009a0ab4  8945dc                    MOV dword ptr [EBP + -0x24],EAX
009a0ab7  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
009a0aba  b8abaaaa2a                MOV EAX,0x2aaaaaab
009a0abf  2b0e                      SUB ECX,dword ptr [ESI]
009a0ac1  f7e9                      IMUL ECX
009a0ac3  c745d8ffffffff            MOV dword ptr [EBP + -0x28],0xffffffff
009a0aca  c1fa02                    SAR EDX,0x2
009a0acd  8bc2                      MOV EAX,EDX
009a0acf  c745e401000000            MOV dword ptr [EBP + -0x1c],0x1
009a0ad6  c1e81f                    SHR EAX,0x1f
009a0ad9  48                        DEC EAX
009a0ada  03c2                      ADD EAX,EDX
009a0adc  83f801                    CMP EAX,0x1
009a0adf  0f86c5000000              JBE 0x009a0baa
009a0ae5  ba18000000                MOV EDX,0x18
009a0aea  8955e8                    MOV dword ptr [EBP + -0x18],EDX
009a0aed  0f1f00                    NOP dword ptr [EAX]
009a0af0  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
009a0af3  8bc7                      MOV EAX,EDI
009a0af5  2bc1                      SUB EAX,ECX
009a0af7  33f6                      XOR ESI,ESI
009a0af9  c1f802                    SAR EAX,0x2
009a0afc  8945c8                    MOV dword ptr [EBP + -0x38],EAX
009a0aff  85c0                      TEST EAX,EAX
009a0b01  745b                      JZ 0x009a0b5e
009a0b03  0f1f4000                  NOP dword ptr [EAX]
009a0b07  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
009a0b10  8b04b1                    MOV EAX,dword ptr [ECX + ESI*0x4]
009a0b13  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
009a0b19  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
009a0b1f  894dcc                    MOV dword ptr [EBP + -0x34],ECX
009a0b22  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
009a0b25  51                        PUSH ECX
009a0b26  8945d0                    MOV dword ptr [EBP + -0x30],EAX
009a0b29  6a00                      PUSH 0x0
009a0b2b  035148                    ADD EDX,dword ptr [ECX + 0x48]
009a0b2e  8d4dcc                    LEA ECX,[EBP + -0x34]
009a0b31  8d4218                    LEA EAX,[EDX + 0x18]
009a0b34  50                        PUSH EAX
009a0b35  e8f6b8ffff                CALL 0x0099c430
009a0b3a  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
009a0b3d  83c40c                    ADD ESP,0xc
009a0b40  f30f104814                MOVSS XMM1,dword ptr [EAX + 0x14]
009a0b45  f30f59c9                  MULSS XMM1,XMM1
009a0b49  0f2fc8                    COMISS XMM1,XMM0
009a0b4c  0f878b000000              JA 0x009a0bdd
009a0b52  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
009a0b55  46                        INC ESI
009a0b56  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
009a0b59  3b75c8                    CMP ESI,dword ptr [EBP + -0x38]
009a0b5c  72b2                      JC 0x009a0b10
009a0b5e  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
009a0b61  8b75d8                    MOV ESI,dword ptr [EBP + -0x28]
009a0b64  40                        INC EAX
009a0b65  83c218                    ADD EDX,0x18
009a0b68  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
009a0b6b  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
009a0b6e  8955e8                    MOV dword ptr [EBP + -0x18],EDX
009a0b71  8b484c                    MOV ECX,dword ptr [EAX + 0x4c]
009a0b74  2b4848                    SUB ECX,dword ptr [EAX + 0x48]
009a0b77  b8abaaaa2a                MOV EAX,0x2aaaaaab
009a0b7c  f7e9                      IMUL ECX
009a0b7e  c1fa02                    SAR EDX,0x2
009a0b81  8bc2                      MOV EAX,EDX
009a0b83  4a                        DEC EDX
009a0b84  c1e81f                    SHR EAX,0x1f
009a0b87  03c2                      ADD EAX,EDX
009a0b89  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
009a0b8c  3945e4                    CMP dword ptr [EBP + -0x1c],EAX
009a0b8f  0f825bffffff              JC 0x009a0af0
009a0b95  83feff                    CMP ESI,-0x1
009a0b98  7e10                      JLE 0x009a0baa
009a0b9a  f30f100d80a2ba00          MOVSS XMM1,dword ptr [0x00baa280]
009a0ba2  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
009a0ba5  e8b6d5ffff                CALL 0x0099e160
009a0baa  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
009a0bad  85c9                      TEST ECX,ECX
009a0baf  0f8480000000              JZ 0x009a0c35
009a0bb5  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
009a0bb8  8bc1                      MOV EAX,ECX
009a0bba  2bd1                      SUB EDX,ECX
009a0bbc  83e2fc                    AND EDX,0xfffffffc
009a0bbf  81fa00100000              CMP EDX,0x1000
009a0bc5  7264                      JC 0x009a0c2b
009a0bc7  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
009a0bca  83c223                    ADD EDX,0x23
009a0bcd  2bc1                      SUB EAX,ECX
009a0bcf  83c0fc                    ADD EAX,-0x4
009a0bd2  83f81f                    CMP EAX,0x1f
009a0bd5  7654                      JBE 0x009a0c2b
009a0bd7  ff159488b100              CALL dword ptr [0x00b18894]
009a0bdd  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
009a0be0  0345e8                    ADD EAX,dword ptr [EBP + -0x18]
009a0be3  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
009a0be8  f30f1100                  MOVSS dword ptr [EAX],XMM0
009a0bec  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
009a0bf1  f30f114004                MOVSS dword ptr [EAX + 0x4],XMM0
009a0bf6  8b45dc                    MOV EAX,dword ptr [EBP + -0x24]
009a0bf9  8d14b0                    LEA EDX,[EAX + ESI*0x4]
009a0bfc  8bc7                      MOV EAX,EDI
009a0bfe  8d4a04                    LEA ECX,[EDX + 0x4]
009a0c01  2bc1                      SUB EAX,ECX
009a0c03  50                        PUSH EAX
009a0c04  51                        PUSH ECX
009a0c05  52                        PUSH EDX
009a0c06  e8b2fc1400                CALL 0x00af08bd
009a0c0b  8b75d8                    MOV ESI,dword ptr [EBP + -0x28]
009a0c0e  83ef04                    SUB EDI,0x4
009a0c11  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
009a0c14  83c40c                    ADD ESP,0xc
009a0c17  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
009a0c1a  83feff                    CMP ESI,-0x1
009a0c1d  897dc0                    MOV dword ptr [EBP + -0x40],EDI
009a0c20  0f44f0                    CMOVZ ESI,EAX
009a0c23  8975d8                    MOV dword ptr [EBP + -0x28],ESI
009a0c26  e939ffffff                JMP 0x009a0b64
009a0c2b  52                        PUSH EDX
009a0c2c  51                        PUSH ECX
009a0c2d  e82ae51400                CALL 0x00aef15c
009a0c32  83c408                    ADD ESP,0x8
009a0c35  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
009a0c38  64890d00000000            MOV dword ptr FS:[0x0],ECX
009a0c3f  59                        POP ECX
009a0c40  5f                        POP EDI
009a0c41  5e                        POP ESI
009a0c42  8be5                      MOV ESP,EBP
009a0c44  5d                        POP EBP
009a0c45  8be3                      MOV ESP,EBX
009a0c47  5b                        POP EBX
009a0c48  c20c00                    RET 0xc
