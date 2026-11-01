; J460 NPC AI 0x004a9860 HELPER_Delirium_CycleAndAttackDispatchB
; types=412
; identities=delirium.cycle_id_dispatch
; entry=004a9860
004a9860  55                        PUSH EBP
004a9861  8bec                      MOV EBP,ESP
004a9863  83ec4c                    SUB ESP,0x4c
004a9866  53                        PUSH EBX
004a9867  56                        PUSH ESI
004a9868  57                        PUSH EDI
004a9869  8bf9                      MOV EDI,ECX
004a986b  0f57c0                    XORPS XMM0,XMM0
004a986e  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004a9876  0f2ec8                    UCOMISS XMM1,XMM0
004a9879  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004a987e  9f                        LAHF
004a987f  f6c444                    TEST AH,0x44
004a9882  0f8b3b100000              JNP 0x004aa8c3
004a9888  8b87e00b0000              MOV EAX,dword ptr [EDI + 0xbe0]
004a988e  8bd8                      MOV EBX,EAX
004a9890  8b97e40b0000              MOV EDX,dword ptr [EDI + 0xbe4]
004a9896  8bcb                      MOV ECX,EBX
004a9898  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
004a98a0  8945d0                    MOV dword ptr [EBP + -0x30],EAX
004a98a3  8bc2                      MOV EAX,EDX
004a98a5  0facc107                  SHRD ECX,EAX,0x7
004a98a9  8bc2                      MOV EAX,EDX
004a98ab  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
004a98b0  0fb6f1                    MOVZX ESI,CL
004a98b3  8bcb                      MOV ECX,EBX
004a98b5  0facd319                  SHRD EBX,EDX,0x19
004a98b9  0facc10f                  SHRD ECX,EAX,0xf
004a98bd  81e3ff030000              AND EBX,0x3ff
004a98c3  0f2ec2                    UCOMISS XMM0,XMM2
004a98c6  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004a98c9  895dfc                    MOV dword ptr [EBP + -0x4],EBX
004a98cc  9f                        LAHF
004a98cd  f6c444                    TEST AH,0x44
004a98d0  7a1c                      JP 0x004a98ee
004a98d2  68d81bb800                PUSH 0xb81bd8
004a98d7  6a10                      PUSH 0x10
004a98d9  e8e2795600                CALL 0x00a112c0
004a98de  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
004a98e3  83c408                    ADD ESP,0x8
004a98e6  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004a98eb  0f57c0                    XORPS XMM0,XMM0
004a98ee  f30f5cc8                  SUBSS XMM1,XMM0
004a98f2  f30f5cd0                  SUBSS XMM2,XMM0
004a98f6  f30f5eca                  DIVSS XMM1,XMM2
004a98fa  f30f5fc8                  MAXSS XMM1,XMM0
004a98fe  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
004a9906  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
004a990e  f30f59c8                  MULSS XMM1,XMM0
004a9912  f30f5cc1                  SUBSS XMM0,XMM1
004a9916  e885636400                CALL 0x00aefca0
004a991b  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
004a9923  8bc8                      MOV ECX,EAX
004a9925  f30f109f64030000          MOVSS XMM3,dword ptr [EDI + 0x364]
004a992d  8bd9                      MOV EBX,ECX
004a992f  f30f102528a5ba00          MOVSS XMM4,dword ptr [0x00baa528]
004a9937  894de8                    MOV dword ptr [EBP + -0x18],ECX
004a993a  8d4101                    LEA EAX,[ECX + 0x1]
004a993d  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9942  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004a9945  b803000000                MOV EAX,0x3
004a994a  8bd0                      MOV EDX,EAX
004a994c  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a9951  2bd1                      SUB EDX,ECX
004a9953  85f6                      TEST ESI,ESI
004a9955  8955e4                    MOV dword ptr [EBP + -0x1c],EDX
004a9958  0f45d8                    CMOVNZ EBX,EAX
004a995b  8d46ff                    LEA EAX,[ESI + -0x1]
004a995e  0f44c6                    CMOVZ EAX,ESI
004a9961  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004a9964  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004a9967  3d93010000                CMP EAX,0x193
004a996c  0f8f62090000              JG 0x004aa2d4
004a9972  0f844f010000              JZ 0x004a9ac7
004a9978  83e813                    SUB EAX,0x13
004a997b  3dfe000000                CMP EAX,0xfe
004a9980  0f874b0a0000              JA 0x004aa3d1
004a9986  0fb68024a94a00            MOVZX EAX,byte ptr [EAX + 0x4aa924]
004a998d  ff2485cca84a00            JMP dword ptr [EAX*0x4 + 0x4aa8cc]
004a9994  660f6ec3                  MOVD XMM0,EBX
004a9998  8bc3                      MOV EAX,EBX
004a999a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a999e  c1e81f                    SHR EAX,0x1f
004a99a1  f30f59157ca2ba00          MULSS XMM2,dword ptr [0x00baa27c]
004a99a9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a99b2  f30f591d7ca2ba00          MULSS XMM3,dword ptr [0x00baa27c]
004a99ba  660f5ac8                  CVTPD2PS XMM1,XMM0
004a99be  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004a99c6  f30f59d1                  MULSS XMM2,XMM1
004a99ca  f30f59d9                  MULSS XMM3,XMM1
004a99ce  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a99d3  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a99d8  e9f4090000                JMP 0x004aa3d1
004a99dd  660f6ec3                  MOVD XMM0,EBX
004a99e1  8bc3                      MOV EAX,EBX
004a99e3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a99e7  c1e81f                    SHR EAX,0x1f
004a99ea  f30f5915a0a1ba00          MULSS XMM2,dword ptr [0x00baa1a0]
004a99f2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a99fb  f30f591da0a1ba00          MULSS XMM3,dword ptr [0x00baa1a0]
004a9a03  660f5ac8                  CVTPD2PS XMM1,XMM0
004a9a07  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004a9a0f  f30f59d1                  MULSS XMM2,XMM1
004a9a13  f30f59d9                  MULSS XMM3,XMM1
004a9a17  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9a1c  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a9a21  e9ab090000                JMP 0x004aa3d1
004a9a26  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
004a9a2a  750a                      JNZ 0x004a9a36
004a9a2c  f30f100db0a4ba00          MOVSS XMM1,dword ptr [0x00baa4b0]
004a9a34  eb08                      JMP 0x004a9a3e
004a9a36  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004a9a3e  0f57c0                    XORPS XMM0,XMM0
004a9a41  8bc3                      MOV EAX,EBX
004a9a43  f20f2ac3                  CVTSI2SD XMM0,EBX
004a9a47  c1e81f                    SHR EAX,0x1f
004a9a4a  f30f5c0d54a4ba00          SUBSS XMM1,dword ptr [0x00baa454]
004a9a52  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a9a5b  f30f59d1                  MULSS XMM2,XMM1
004a9a5f  660f5ac0                  CVTPD2PS XMM0,XMM0
004a9a63  f30f59d9                  MULSS XMM3,XMM1
004a9a67  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
004a9a6f  f30f59d0                  MULSS XMM2,XMM0
004a9a73  f30f59d8                  MULSS XMM3,XMM0
004a9a77  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9a7c  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a9a81  e94b090000                JMP 0x004aa3d1
004a9a86  660f6ec3                  MOVD XMM0,EBX
004a9a8a  8bc3                      MOV EAX,EBX
004a9a8c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a9a90  c1e81f                    SHR EAX,0x1f
004a9a93  f30f59d4                  MULSS XMM2,XMM4
004a9a97  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a9aa0  f30f59dc                  MULSS XMM3,XMM4
004a9aa4  660f5ac0                  CVTPD2PS XMM0,XMM0
004a9aa8  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
004a9ab0  f30f59d0                  MULSS XMM2,XMM0
004a9ab4  f30f59d8                  MULSS XMM3,XMM0
004a9ab8  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9abd  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a9ac2  e90a090000                JMP 0x004aa3d1
004a9ac7  660f6ec3                  MOVD XMM0,EBX
004a9acb  8bc3                      MOV EAX,EBX
004a9acd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a9ad1  c1e81f                    SHR EAX,0x1f
004a9ad4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a9add  660f5ac0                  CVTPD2PS XMM0,XMM0
004a9ae1  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
004a9ae9  f30f59d0                  MULSS XMM2,XMM0
004a9aed  f30f59d8                  MULSS XMM3,XMM0
004a9af1  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9af6  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a9afb  e9d1080000                JMP 0x004aa3d1
004a9b00  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004a9b04  750a                      JNZ 0x004a9b10
004a9b06  f30f100d90a4ba00          MOVSS XMM1,dword ptr [0x00baa490]
004a9b0e  eb08                      JMP 0x004a9b18
004a9b10  f30f100db0a4ba00          MOVSS XMM1,dword ptr [0x00baa4b0]
004a9b18  0f57c0                    XORPS XMM0,XMM0
004a9b1b  8bc3                      MOV EAX,EBX
004a9b1d  f20f2ac3                  CVTSI2SD XMM0,EBX
004a9b21  c1e81f                    SHR EAX,0x1f
004a9b24  f30f5c0d54a4ba00          SUBSS XMM1,dword ptr [0x00baa454]
004a9b2c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a9b35  f30f59d1                  MULSS XMM2,XMM1
004a9b39  660f5ac0                  CVTPD2PS XMM0,XMM0
004a9b3d  f30f59d9                  MULSS XMM3,XMM1
004a9b41  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
004a9b49  f30f59d0                  MULSS XMM2,XMM0
004a9b4d  f30f59d8                  MULSS XMM3,XMM0
004a9b51  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9b56  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a9b5b  e971080000                JMP 0x004aa3d1
004a9b60  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004a9b64  8b75fc                    MOV ESI,dword ptr [EBP + -0x4]
004a9b67  0f8567080000              JNZ 0x004aa3d4
004a9b6d  660f6ec3                  MOVD XMM0,EBX
004a9b71  8bc3                      MOV EAX,EBX
004a9b73  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a9b77  c1e81f                    SHR EAX,0x1f
004a9b7a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a9b83  660f5ac8                  CVTPD2PS XMM1,XMM0
004a9b87  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004a9b8f  f30f59157ca2ba00          MULSS XMM2,dword ptr [0x00baa27c]
004a9b97  f30f591d7ca2ba00          MULSS XMM3,dword ptr [0x00baa27c]
004a9b9f  f30f59d1                  MULSS XMM2,XMM1
004a9ba3  f30f59d9                  MULSS XMM3,XMM1
004a9ba7  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9bac  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a9bb1  e91e080000                JMP 0x004aa3d4
004a9bb6  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004a9bbd  e90f080000                JMP 0x004aa3d1
004a9bc2  83bf640b000006            CMP dword ptr [EDI + 0xb64],0x6
004a9bc9  0f8502080000              JNZ 0x004aa3d1
004a9bcf  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
004a9bd7  0f57c0                    XORPS XMM0,XMM0
004a9bda  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004a9be2  0f2ec2                    UCOMISS XMM0,XMM2
004a9be5  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
004a9bea  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004a9bef  9f                        LAHF
004a9bf0  f6c444                    TEST AH,0x44
004a9bf3  7a1c                      JP 0x004a9c11
004a9bf5  68d81bb800                PUSH 0xb81bd8
004a9bfa  6a10                      PUSH 0x10
004a9bfc  e8bf765600                CALL 0x00a112c0
004a9c01  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
004a9c06  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004a9c0b  0f57c0                    XORPS XMM0,XMM0
004a9c0e  83c408                    ADD ESP,0x8
004a9c11  f30f5cc8                  SUBSS XMM1,XMM0
004a9c15  f30f5cd0                  SUBSS XMM2,XMM0
004a9c19  f30f5eca                  DIVSS XMM1,XMM2
004a9c1d  f30f5fc8                  MAXSS XMM1,XMM0
004a9c21  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004a9c29  f30f5dc8                  MINSS XMM1,XMM0
004a9c2d  e989070000                JMP 0x004aa3bb
004a9c32  8b75fc                    MOV ESI,dword ptr [EBP + -0x4]
004a9c35  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004a9c3b  83fe1e                    CMP ESI,0x1e
004a9c3e  7311                      JNC 0x004a9c51
004a9c40  83f808                    CMP EAX,0x8
004a9c43  7515                      JNZ 0x004a9c5a
004a9c45  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004a9c4f  eb09                      JMP 0x004a9c5a
004a9c51  83f808                    CMP EAX,0x8
004a9c54  0f8513ffffff              JNZ 0x004a9b6d
004a9c5a  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
004a9c62  0f57c0                    XORPS XMM0,XMM0
004a9c65  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004a9c6d  0f2ec2                    UCOMISS XMM0,XMM2
004a9c70  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004a9c75  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
004a9c7a  9f                        LAHF
004a9c7b  f6c444                    TEST AH,0x44
004a9c7e  7a1c                      JP 0x004a9c9c
004a9c80  68d81bb800                PUSH 0xb81bd8
004a9c85  6a10                      PUSH 0x10
004a9c87  e834765600                CALL 0x00a112c0
004a9c8c  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
004a9c91  83c408                    ADD ESP,0x8
004a9c94  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004a9c99  0f57c0                    XORPS XMM0,XMM0
004a9c9c  f30f5cc8                  SUBSS XMM1,XMM0
004a9ca0  f30f5cd0                  SUBSS XMM2,XMM0
004a9ca4  f30f5eca                  DIVSS XMM1,XMM2
004a9ca8  f30f5fc8                  MAXSS XMM1,XMM0
004a9cac  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
004a9cb4  f30f59c1                  MULSS XMM0,XMM1
004a9cb8  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
004a9cc0  e8db5f6400                CALL 0x00aefca0
004a9cc5  f30f1055f8                MOVSS XMM2,dword ptr [EBP + -0x8]
004a9cca  8bc8                      MOV ECX,EAX
004a9ccc  f30f105df4                MOVSS XMM3,dword ptr [EBP + -0xc]
004a9cd1  8bd9                      MOV EBX,ECX
004a9cd3  894de8                    MOV dword ptr [EBP + -0x18],ECX
004a9cd6  8d4101                    LEA EAX,[ECX + 0x1]
004a9cd9  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004a9cdc  e98cfeffff                JMP 0x004a9b6d
004a9ce1  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004a9ce5  8b75fc                    MOV ESI,dword ptr [EBP + -0x4]
004a9ce8  0f85e6060000              JNZ 0x004aa3d4
004a9cee  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004a9cf4  83fe1e                    CMP ESI,0x1e
004a9cf7  7316                      JNC 0x004a9d0f
004a9cf9  83f809                    CMP EAX,0x9
004a9cfc  7405                      JZ 0x004a9d03
004a9cfe  83f80a                    CMP EAX,0xa
004a9d01  751a                      JNZ 0x004a9d1d
004a9d03  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004a9d0d  eb0e                      JMP 0x004a9d1d
004a9d0f  83f809                    CMP EAX,0x9
004a9d12  7409                      JZ 0x004a9d1d
004a9d14  83f80a                    CMP EAX,0xa
004a9d17  0f85b7060000              JNZ 0x004aa3d4
004a9d1d  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
004a9d25  0f57c0                    XORPS XMM0,XMM0
004a9d28  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004a9d30  0f2ec2                    UCOMISS XMM0,XMM2
004a9d33  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004a9d38  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
004a9d3d  9f                        LAHF
004a9d3e  f6c444                    TEST AH,0x44
004a9d41  7a1c                      JP 0x004a9d5f
004a9d43  68d81bb800                PUSH 0xb81bd8
004a9d48  6a10                      PUSH 0x10
004a9d4a  e871755600                CALL 0x00a112c0
004a9d4f  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
004a9d54  83c408                    ADD ESP,0x8
004a9d57  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004a9d5c  0f57c0                    XORPS XMM0,XMM0
004a9d5f  f30f5cc8                  SUBSS XMM1,XMM0
004a9d63  f30f5cd0                  SUBSS XMM2,XMM0
004a9d67  f30f5eca                  DIVSS XMM1,XMM2
004a9d6b  f30f5fc8                  MAXSS XMM1,XMM0
004a9d6f  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
004a9d77  f30f59c1                  MULSS XMM0,XMM1
004a9d7b  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
004a9d83  e8185f6400                CALL 0x00aefca0
004a9d88  8bc8                      MOV ECX,EAX
004a9d8a  894de8                    MOV dword ptr [EBP + -0x18],ECX
004a9d8d  8bd9                      MOV EBX,ECX
004a9d8f  8d4101                    LEA EAX,[ECX + 0x1]
004a9d92  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004a9d95  e93a060000                JMP 0x004aa3d4
004a9d9a  660f6ec3                  MOVD XMM0,EBX
004a9d9e  8bc3                      MOV EAX,EBX
004a9da0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a9da4  c1e81f                    SHR EAX,0x1f
004a9da7  f30f591550adba00          MULSS XMM2,dword ptr [0x00baad50]
004a9daf  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a9db8  f30f591d50adba00          MULSS XMM3,dword ptr [0x00baad50]
004a9dc0  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
004a9dc6  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
004a9dcc  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
004a9dd2  660f5ac8                  CVTPD2PS XMM1,XMM0
004a9dd6  898740030000              MOV dword ptr [EDI + 0x340],EAX
004a9ddc  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004a9de4  f30f59d1                  MULSS XMM2,XMM1
004a9de8  f30f59d9                  MULSS XMM3,XMM1
004a9dec  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9df1  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a9df6  e9d6050000                JMP 0x004aa3d1
004a9dfb  660f6ec3                  MOVD XMM0,EBX
004a9dff  8bc3                      MOV EAX,EBX
004a9e01  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a9e05  c1e81f                    SHR EAX,0x1f
004a9e08  c745ec02000000            MOV dword ptr [EBP + -0x14],0x2
004a9e0f  f30f5915a0a1ba00          MULSS XMM2,dword ptr [0x00baa1a0]
004a9e17  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a9e20  f30f591da0a1ba00          MULSS XMM3,dword ptr [0x00baa1a0]
004a9e28  660f5ac8                  CVTPD2PS XMM1,XMM0
004a9e2c  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004a9e34  f30f59d1                  MULSS XMM2,XMM1
004a9e38  f30f59d9                  MULSS XMM3,XMM1
004a9e3c  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9e41  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a9e46  e986050000                JMP 0x004aa3d1
004a9e4b  660f6ec3                  MOVD XMM0,EBX
004a9e4f  8bc3                      MOV EAX,EBX
004a9e51  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a9e55  c1e81f                    SHR EAX,0x1f
004a9e58  c745ec01000000            MOV dword ptr [EBP + -0x14],0x1
004a9e5f  f30f5915a0a1ba00          MULSS XMM2,dword ptr [0x00baa1a0]
004a9e67  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a9e70  f30f591da0a1ba00          MULSS XMM3,dword ptr [0x00baa1a0]
004a9e78  660f5ac8                  CVTPD2PS XMM1,XMM0
004a9e7c  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004a9e84  f30f59d1                  MULSS XMM2,XMM1
004a9e88  f30f59d9                  MULSS XMM3,XMM1
004a9e8c  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9e91  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a9e96  e936050000                JMP 0x004aa3d1
004a9e9b  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
004a9ea3  0f57c0                    XORPS XMM0,XMM0
004a9ea6  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004a9eae  0f2ec2                    UCOMISS XMM0,XMM2
004a9eb1  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004a9eb6  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
004a9ebb  9f                        LAHF
004a9ebc  f6c444                    TEST AH,0x44
004a9ebf  7a1c                      JP 0x004a9edd
004a9ec1  68d81bb800                PUSH 0xb81bd8
004a9ec6  6a10                      PUSH 0x10
004a9ec8  e8f3735600                CALL 0x00a112c0
004a9ecd  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
004a9ed2  83c408                    ADD ESP,0x8
004a9ed5  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004a9eda  0f57c0                    XORPS XMM0,XMM0
004a9edd  f30f5cc8                  SUBSS XMM1,XMM0
004a9ee1  f30f5cd0                  SUBSS XMM2,XMM0
004a9ee5  f30f5eca                  DIVSS XMM1,XMM2
004a9ee9  f30f5fc8                  MAXSS XMM1,XMM0
004a9eed  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
004a9ef5  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
004a9efd  f30f58c9                  ADDSS XMM1,XMM1
004a9f01  f30f5cc1                  SUBSS XMM0,XMM1
004a9f05  e8965d6400                CALL 0x00aefca0
004a9f0a  8bc8                      MOV ECX,EAX
004a9f0c  f30f1055f8                MOVSS XMM2,dword ptr [EBP + -0x8]
004a9f11  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
004a9f19  8d4101                    LEA EAX,[ECX + 0x1]
004a9f1c  660f6ec1                  MOVD XMM0,ECX
004a9f20  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004a9f23  8bc1                      MOV EAX,ECX
004a9f25  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a9f29  c1e81f                    SHR EAX,0x1f
004a9f2c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004a9f35  660f5ac8                  CVTPD2PS XMM1,XMM0
004a9f39  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004a9f41  f30f59d1                  MULSS XMM2,XMM1
004a9f45  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9f4a  f30f1055f4                MOVSS XMM2,dword ptr [EBP + -0xc]
004a9f4f  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
004a9f57  f30f59d1                  MULSS XMM2,XMM1
004a9f5b  f30f1155f4                MOVSS dword ptr [EBP + -0xc],XMM2
004a9f60  e967040000                JMP 0x004aa3cc
004a9f65  660f6ec3                  MOVD XMM0,EBX
004a9f69  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a9f6d  c1eb1f                    SHR EBX,0x1f
004a9f70  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
004a9f77  f30f5915a0a1ba00          MULSS XMM2,dword ptr [0x00baa1a0]
004a9f7f  f20f5804dd00cbba00        ADDSD XMM0,qword ptr [EBX*0x8 + 0xbacb00]
004a9f88  f30f591da0a1ba00          MULSS XMM3,dword ptr [0x00baa1a0]
004a9f90  660f5ac8                  CVTPD2PS XMM1,XMM0
004a9f94  0f57c0                    XORPS XMM0,XMM0
004a9f97  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004a9f9f  f30f59d1                  MULSS XMM2,XMM1
004a9fa3  f30f59d9                  MULSS XMM3,XMM1
004a9fa7  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004a9faf  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a9fb4  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
004a9fbc  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004a9fc1  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
004a9fc6  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
004a9fcb  7528                      JNZ 0x004a9ff5
004a9fcd  0f2ec2                    UCOMISS XMM0,XMM2
004a9fd0  9f                        LAHF
004a9fd1  f6c444                    TEST AH,0x44
004a9fd4  0f8a37fcffff              JP 0x004a9c11
004a9fda  68d81bb800                PUSH 0xb81bd8
004a9fdf  6a10                      PUSH 0x10
004a9fe1  e8da725600                CALL 0x00a112c0
004a9fe6  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
004a9feb  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
004a9ff0  e916fcffff                JMP 0x004a9c0b
004a9ff5  0f2ec2                    UCOMISS XMM0,XMM2
004a9ff8  9f                        LAHF
004a9ff9  f6c444                    TEST AH,0x44
004a9ffc  0f8a95030000              JP 0x004aa397
004aa002  68d81bb800                PUSH 0xb81bd8
004aa007  6a10                      PUSH 0x10
004aa009  e8b2725600                CALL 0x00a112c0
004aa00e  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
004aa013  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
004aa018  e974030000                JMP 0x004aa391
004aa01d  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
004aa020  8bc3                      MOV EAX,EBX
004aa022  660f6ec3                  MOVD XMM0,EBX
004aa026  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004aa02a  c1e81f                    SHR EAX,0x1f
004aa02d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004aa036  660f5ac8                  CVTPD2PS XMM1,XMM0
004aa03a  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004aa042  83f90a                    CMP ECX,0xa
004aa045  7522                      JNZ 0x004aa069
004aa047  0f57c0                    XORPS XMM0,XMM0
004aa04a  f30f59d0                  MULSS XMM2,XMM0
004aa04e  f30f59d8                  MULSS XMM3,XMM0
004aa052  f30f59d1                  MULSS XMM2,XMM1
004aa056  f30f59d9                  MULSS XMM3,XMM1
004aa05a  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004aa05f  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004aa064  e968030000                JMP 0x004aa3d1
004aa069  8b75fc                    MOV ESI,dword ptr [EBP + -0x4]
004aa06c  83f901                    CMP ECX,0x1
004aa06f  0f841afbffff              JZ 0x004a9b8f
004aa075  f30f59d4                  MULSS XMM2,XMM4
004aa079  f30f59dc                  MULSS XMM3,XMM4
004aa07d  e91dfbffff                JMP 0x004a9b9f
004aa082  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
004aa088  898784030000              MOV dword ptr [EDI + 0x384],EAX
004aa08e  660f6ec3                  MOVD XMM0,EBX
004aa092  8bc3                      MOV EAX,EBX
004aa094  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004aa098  c1e81f                    SHR EAX,0x1f
004aa09b  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
004aa0a3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004aa0ac  f30f591d04a3ba00          MULSS XMM3,dword ptr [0x00baa304]
004aa0b4  660f5ac8                  CVTPD2PS XMM1,XMM0
004aa0b8  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004aa0c0  f30f59d1                  MULSS XMM2,XMM1
004aa0c4  f30f59d9                  MULSS XMM3,XMM1
004aa0c8  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004aa0cd  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004aa0d2  e9fa020000                JMP 0x004aa3d1
004aa0d7  8b75fc                    MOV ESI,dword ptr [EBP + -0x4]
004aa0da  83fe3c                    CMP ESI,0x3c
004aa0dd  7611                      JBE 0x004aa0f0
004aa0df  8bca                      MOV ECX,EDX
004aa0e1  e82a4f1d00                CALL 0x0067f010
004aa0e6  85c0                      TEST EAX,EAX
004aa0e8  7506                      JNZ 0x004aa0f0
004aa0ea  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004aa0f0  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
004aa0f8  0f57c0                    XORPS XMM0,XMM0
004aa0fb  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004aa103  0f2ec2                    UCOMISS XMM0,XMM2
004aa106  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004aa10b  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
004aa110  9f                        LAHF
004aa111  f6c444                    TEST AH,0x44
004aa114  7a1c                      JP 0x004aa132
004aa116  68d81bb800                PUSH 0xb81bd8
004aa11b  6a10                      PUSH 0x10
004aa11d  e89e715600                CALL 0x00a112c0
004aa122  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
004aa127  83c408                    ADD ESP,0x8
004aa12a  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004aa12f  0f57c0                    XORPS XMM0,XMM0
004aa132  f30f5cc8                  SUBSS XMM1,XMM0
004aa136  f30f5cd0                  SUBSS XMM2,XMM0
004aa13a  f30f5eca                  DIVSS XMM1,XMM2
004aa13e  f30f5fc8                  MAXSS XMM1,XMM0
004aa142  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
004aa14a  f30f59c8                  MULSS XMM1,XMM0
004aa14e  f30f58c1                  ADDSS XMM0,XMM1
004aa152  e92cfcffff                JMP 0x004a9d83
004aa157  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
004aa15b  0f85c7000000              JNZ 0x004aa228
004aa161  8bca                      MOV ECX,EDX
004aa163  e8a84e1d00                CALL 0x0067f010
004aa168  85c0                      TEST EAX,EAX
004aa16a  7506                      JNZ 0x004aa172
004aa16c  898710040000              MOV dword ptr [EDI + 0x410],EAX
004aa172  660f6ec3                  MOVD XMM0,EBX
004aa176  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004aa17a  c1eb1f                    SHR EBX,0x1f
004aa17d  f30f1055f8                MOVSS XMM2,dword ptr [EBP + -0x8]
004aa182  f20f5804dd00cbba00        ADDSD XMM0,qword ptr [EBX*0x8 + 0xbacb00]
004aa18b  f30f5915a0a1ba00          MULSS XMM2,dword ptr [0x00baa1a0]
004aa193  660f5ac8                  CVTPD2PS XMM1,XMM0
004aa197  0f57c0                    XORPS XMM0,XMM0
004aa19a  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004aa1a2  f30f59d1                  MULSS XMM2,XMM1
004aa1a6  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004aa1ab  f30f1055f4                MOVSS XMM2,dword ptr [EBP + -0xc]
004aa1b0  f30f5915a0a1ba00          MULSS XMM2,dword ptr [0x00baa1a0]
004aa1b8  f30f59d1                  MULSS XMM2,XMM1
004aa1bc  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004aa1c4  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004aa1c9  f30f1155f4                MOVSS dword ptr [EBP + -0xc],XMM2
004aa1ce  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
004aa1d6  0f2ec2                    UCOMISS XMM0,XMM2
004aa1d9  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
004aa1de  9f                        LAHF
004aa1df  f6c444                    TEST AH,0x44
004aa1e2  7a1c                      JP 0x004aa200
004aa1e4  68d81bb800                PUSH 0xb81bd8
004aa1e9  6a10                      PUSH 0x10
004aa1eb  e8d0705600                CALL 0x00a112c0
004aa1f0  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
004aa1f5  83c408                    ADD ESP,0x8
004aa1f8  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004aa1fd  0f57c0                    XORPS XMM0,XMM0
004aa200  f30f5cc8                  SUBSS XMM1,XMM0
004aa204  f30f5cd0                  SUBSS XMM2,XMM0
004aa208  f30f5eca                  DIVSS XMM1,XMM2
004aa20c  f30f5fc8                  MAXSS XMM1,XMM0
004aa210  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
004aa218  f30f59c8                  MULSS XMM1,XMM0
004aa21c  f30f58c8                  ADDSS XMM1,XMM0
004aa220  0f28c1                    MOVAPS XMM0,XMM1
004aa223  e997010000                JMP 0x004aa3bf
004aa228  660f6ec3                  MOVD XMM0,EBX
004aa22c  0f57c9                    XORPS XMM1,XMM1
004aa22f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004aa233  c1eb1f                    SHR EBX,0x1f
004aa236  f30f59d1                  MULSS XMM2,XMM1
004aa23a  f20f5804dd00cbba00        ADDSD XMM0,qword ptr [EBX*0x8 + 0xbacb00]
004aa243  f30f59d9                  MULSS XMM3,XMM1
004aa247  660f5ac0                  CVTPD2PS XMM0,XMM0
004aa24b  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
004aa253  f30f59d0                  MULSS XMM2,XMM0
004aa257  f30f59d8                  MULSS XMM3,XMM0
004aa25b  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004aa263  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004aa268  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
004aa270  0f2eca                    UCOMISS XMM1,XMM2
004aa273  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004aa278  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004aa27d  9f                        LAHF
004aa27e  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
004aa283  f6c444                    TEST AH,0x44
004aa286  7a1c                      JP 0x004aa2a4
004aa288  68d81bb800                PUSH 0xb81bd8
004aa28d  6a10                      PUSH 0x10
004aa28f  e82c705600                CALL 0x00a112c0
004aa294  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
004aa299  83c408                    ADD ESP,0x8
004aa29c  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004aa2a1  0f57c9                    XORPS XMM1,XMM1
004aa2a4  f30f5cc1                  SUBSS XMM0,XMM1
004aa2a8  f30f5cd1                  SUBSS XMM2,XMM1
004aa2ac  f30f5ec2                  DIVSS XMM0,XMM2
004aa2b0  f30f5fc1                  MAXSS XMM0,XMM1
004aa2b4  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
004aa2bc  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004aa2c4  f30f59c1                  MULSS XMM0,XMM1
004aa2c8  f30f5cc8                  SUBSS XMM1,XMM0
004aa2cc  0f28c1                    MOVAPS XMM0,XMM1
004aa2cf  e9eb000000                JMP 0x004aa3bf
004aa2d4  2d94010000                SUB EAX,0x194
004aa2d9  83f806                    CMP EAX,0x6
004aa2dc  0f87ef000000              JA 0x004aa3d1
004aa2e2  ff248524aa4a00            JMP dword ptr [EAX*0x4 + 0x4aaa24]
004aa2e9  660f6ec3                  MOVD XMM0,EBX
004aa2ed  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004aa2f1  c1eb1f                    SHR EBX,0x1f
004aa2f4  f20f5804dd00cbba00        ADDSD XMM0,qword ptr [EBX*0x8 + 0xbacb00]
004aa2fd  660f5ac0                  CVTPD2PS XMM0,XMM0
004aa301  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
004aa309  f30f59d0                  MULSS XMM2,XMM0
004aa30d  f30f59d8                  MULSS XMM3,XMM0
004aa311  eb38                      JMP 0x004aa34b
004aa313  660f6ec3                  MOVD XMM0,EBX
004aa317  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004aa31b  c1eb1f                    SHR EBX,0x1f
004aa31e  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
004aa326  f20f5804dd00cbba00        ADDSD XMM0,qword ptr [EBX*0x8 + 0xbacb00]
004aa32f  f30f591d04a3ba00          MULSS XMM3,dword ptr [0x00baa304]
004aa337  660f5ac8                  CVTPD2PS XMM1,XMM0
004aa33b  f30f5e0dfca6ba00          DIVSS XMM1,dword ptr [0x00baa6fc]
004aa343  f30f59d1                  MULSS XMM2,XMM1
004aa347  f30f59d9                  MULSS XMM3,XMM1
004aa34b  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004aa353  0f57c0                    XORPS XMM0,XMM0
004aa356  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004aa35b  f30f109784030000          MOVSS XMM2,dword ptr [EDI + 0x384]
004aa363  0f2ec2                    UCOMISS XMM0,XMM2
004aa366  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
004aa36b  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004aa370  9f                        LAHF
004aa371  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
004aa376  f6c444                    TEST AH,0x44
004aa379  7a1c                      JP 0x004aa397
004aa37b  68d81bb800                PUSH 0xb81bd8
004aa380  6a10                      PUSH 0x10
004aa382  e8396f5600                CALL 0x00a112c0
004aa387  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004aa38c  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
004aa391  83c408                    ADD ESP,0x8
004aa394  0f57c0                    XORPS XMM0,XMM0
004aa397  f30f5cc8                  SUBSS XMM1,XMM0
004aa39b  f30f5cd0                  SUBSS XMM2,XMM0
004aa39f  f30f5eca                  DIVSS XMM1,XMM2
004aa3a3  f30f5fc8                  MAXSS XMM1,XMM0
004aa3a7  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
004aa3af  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
004aa3b7  f30f58c9                  ADDSS XMM1,XMM1
004aa3bb  f30f5cc1                  SUBSS XMM0,XMM1
004aa3bf  e8dc586400                CALL 0x00aefca0
004aa3c4  8bc8                      MOV ECX,EAX
004aa3c6  8d4101                    LEA EAX,[ECX + 0x1]
004aa3c9  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004aa3cc  8bd9                      MOV EBX,ECX
004aa3ce  894de8                    MOV dword ptr [EBP + -0x18],ECX
004aa3d1  8b75fc                    MOV ESI,dword ptr [EBP + -0x4]
004aa3d4  8d049d00000000            LEA EAX,[EBX*0x4 + 0x0]
004aa3db  3bf0                      CMP ESI,EAX
004aa3dd  7727                      JA 0x004aa406
004aa3df  80bf5101000000            CMP byte ptr [EDI + 0x151],0x0
004aa3e6  0f84d7040000              JZ 0x004aa8c3
004aa3ec  8d4f78                    LEA ECX,[EDI + 0x78]
004aa3ef  e83cecf5ff                CALL 0x00409030
004aa3f4  8d8f98000000              LEA ECX,[EDI + 0x98]
004aa3fa  e831ecf5ff                CALL 0x00409030
004aa3ff  5f                        POP EDI
004aa400  5e                        POP ESI
004aa401  5b                        POP EBX
004aa402  8be5                      MOV ESP,EBP
004aa404  5d                        POP EBP
004aa405  c3                        RET
004aa406  f20f1005c0a6ba00          MOVSD XMM0,qword ptr [0x00baa6c0]
004aa40e  33c9                      XOR ECX,ECX
004aa410  f20f100d58a6ba00          MOVSD XMM1,qword ptr [0x00baa658]
004aa418  f20f1015a0a5ba00          MOVSD XMM2,qword ptr [0x00baa5a0]
004aa420  894df0                    MOV dword ptr [EBP + -0x10],ECX
004aa423  f20f1145c8                MOVSD qword ptr [EBP + -0x38],XMM0
004aa428  f20f114dc0                MOVSD qword ptr [EBP + -0x40],XMM1
004aa42d  f20f1155b8                MOVSD qword ptr [EBP + -0x48],XMM2
004aa432  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004aa435  83c0ec                    ADD EAX,-0x14
004aa438  83f836                    CMP EAX,0x36
004aa43b  0f87cf030000              JA 0x004aa810
004aa441  0fb6805caa4a00            MOVZX EAX,byte ptr [EAX + 0x4aaa5c]
004aa448  ff248540aa4a00            JMP dword ptr [EAX*0x4 + 0x4aaa40]
004aa44f  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
004aa456  0f85b4030000              JNZ 0x004aa810
004aa45c  8b75e4                    MOV ESI,dword ptr [EBP + -0x1c]
004aa45f  85f6                      TEST ESI,ESI
004aa461  7411                      JZ 0x004aa474
004aa463  e8f84a2400                CALL 0x006eef60
004aa468  33d2                      XOR EDX,EDX
004aa46a  f7f6                      DIV ESI
004aa46c  85d2                      TEST EDX,EDX
004aa46e  0f8599030000              JNZ 0x004aa80d
004aa474  e8e74a2400                CALL 0x006eef60
004aa479  83e001                    AND EAX,0x1
004aa47c  83e800                    SUB EAX,0x0
004aa47f  0f84b6000000              JZ 0x004aa53b
004aa485  83e801                    SUB EAX,0x1
004aa488  0f857f030000              JNZ 0x004aa80d
004aa48e  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004aa496  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004aa49c  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004aa4a6  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004aa4ab  83f812                    CMP EAX,0x12
004aa4ae  750a                      JNZ 0x004aa4ba
004aa4b0  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004aa4b8  eb0d                      JMP 0x004aa4c7
004aa4ba  83f813                    CMP EAX,0x13
004aa4bd  750d                      JNZ 0x004aa4cc
004aa4bf  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004aa4c7  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004aa4cc  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004aa4d2  8d4ddc                    LEA ECX,[EBP + -0x24]
004aa4d5  c745dc0e000000            MOV dword ptr [EBP + -0x24],0xe
004aa4dc  e89fc24a00                CALL 0x00956780
004aa4e1  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
004aa4e6  83ec08                    SUB ESP,0x8
004aa4e9  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004aa4f1  f30f110424                MOVSS dword ptr [ESP],XMM0
004aa4f6  6a00                      PUSH 0x0
004aa4f8  6a02                      PUSH 0x2
004aa4fa  51                        PUSH ECX
004aa4fb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004aa502  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004aa508  ff75dc                    PUSH dword ptr [EBP + -0x24]
004aa50b  e820374800                CALL 0x0092dc30
004aa510  6a01                      PUSH 0x1
004aa512  68e4e0b100                PUSH 0xb1e0e4
004aa517  8d4f48                    LEA ECX,[EDI + 0x48]
004aa51a  e8b100f6ff                CALL 0x0040a5d0
004aa51f  84c0                      TEST AL,AL
004aa521  0f84e6020000              JZ 0x004aa80d
004aa527  8d4f78                    LEA ECX,[EDI + 0x78]
004aa52a  e881fcf5ff                CALL 0x0040a1b0
004aa52f  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004aa536  e9d2020000                JMP 0x004aa80d
004aa53b  6a01                      PUSH 0x1
004aa53d  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004aa547  68dce0b100                PUSH 0xb1e0dc
004aa54c  ebc9                      JMP 0x004aa517
004aa54e  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
004aa555  0f85b5020000              JNZ 0x004aa810
004aa55b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004aa565  e9a6020000                JMP 0x004aa810
004aa56a  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
004aa56e  0f859c020000              JNZ 0x004aa810
004aa574  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
004aa57b  0f858f020000              JNZ 0x004aa810
004aa581  8b75e4                    MOV ESI,dword ptr [EBP + -0x1c]
004aa584  85f6                      TEST ESI,ESI
004aa586  7414                      JZ 0x004aa59c
004aa588  e8d3492400                CALL 0x006eef60
004aa58d  33d2                      XOR EDX,EDX
004aa58f  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
004aa592  f7f6                      DIV ESI
004aa594  85d2                      TEST EDX,EDX
004aa596  0f8574020000              JNZ 0x004aa810
004aa59c  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004aa5a3  0f8567020000              JNZ 0x004aa810
004aa5a9  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004aa5b3  e958020000                JMP 0x004aa810
004aa5b8  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
004aa5bf  0f854b020000              JNZ 0x004aa810
004aa5c5  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
004aa5c8  660f6ec8                  MOVD XMM1,EAX
004aa5cc  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004aa5d0  c1e81f                    SHR EAX,0x1f
004aa5d3  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004aa5dc  e81e636400                CALL 0x00af08ff
004aa5e1  f20f2cf0                  CVTTSD2SI ESI,XMM0
004aa5e5  85f6                      TEST ESI,ESI
004aa5e7  7411                      JZ 0x004aa5fa
004aa5e9  e872492400                CALL 0x006eef60
004aa5ee  33d2                      XOR EDX,EDX
004aa5f0  f7f6                      DIV ESI
004aa5f2  85d2                      TEST EDX,EDX
004aa5f4  0f8513020000              JNZ 0x004aa80d
004aa5fa  e861492400                CALL 0x006eef60
004aa5ff  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004aa609  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004aa60f  6a01                      PUSH 0x1
004aa611  83e001                    AND EAX,0x1
004aa614  751f                      JNZ 0x004aa635
004aa616  85c9                      TEST ECX,ECX
004aa618  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004aa622  b8ecd2b100                MOV EAX,0xb1d2ec
004aa627  b908ddb100                MOV ECX,0xb1dd08
004aa62c  0f45c1                    CMOVNZ EAX,ECX
004aa62f  50                        PUSH EAX
004aa630  e9e2feffff                JMP 0x004aa517
004aa635  85c9                      TEST ECX,ECX
004aa637  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004aa641  b8ccd2b100                MOV EAX,0xb1d2cc
004aa646  b9f8dcb100                MOV ECX,0xb1dcf8
004aa64b  0f45c1                    CMOVNZ EAX,ECX
004aa64e  50                        PUSH EAX
004aa64f  e9c3feffff                JMP 0x004aa517
004aa654  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
004aa65b  0f85af010000              JNZ 0x004aa810
004aa661  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
004aa665  0f84a5010000              JZ 0x004aa810
004aa66b  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
004aa66e  660f6ec8                  MOVD XMM1,EAX
004aa672  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004aa676  c1e81f                    SHR EAX,0x1f
004aa679  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004aa682  e878626400                CALL 0x00af08ff
004aa687  f20f2cf0                  CVTTSD2SI ESI,XMM0
004aa68b  85f6                      TEST ESI,ESI
004aa68d  7411                      JZ 0x004aa6a0
004aa68f  e8cc482400                CALL 0x006eef60
004aa694  33d2                      XOR EDX,EDX
004aa696  f7f6                      DIV ESI
004aa698  85d2                      TEST EDX,EDX
004aa69a  0f856d010000              JNZ 0x004aa80d
004aa6a0  e8bb482400                CALL 0x006eef60
004aa6a5  a801                      TEST AL,0x1
004aa6a7  7520                      JNZ 0x004aa6c9
004aa6a9  6a01                      PUSH 0x1
004aa6ab  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004aa6b5  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004aa6bf  68ccd2b100                PUSH 0xb1d2cc
004aa6c4  e94efeffff                JMP 0x004aa517
004aa6c9  e892482400                CALL 0x006eef60
004aa6ce  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004aa6d6  83e003                    AND EAX,0x3
004aa6d9  8b8f640c0000              MOV ECX,dword ptr [EDI + 0xc64]
004aa6df  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004aa6e4  83f912                    CMP ECX,0x12
004aa6e7  750a                      JNZ 0x004aa6f3
004aa6e9  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004aa6f1  eb0d                      JMP 0x004aa700
004aa6f3  83f913                    CMP ECX,0x13
004aa6f6  750d                      JNZ 0x004aa705
004aa6f8  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004aa700  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004aa705  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004aa70b  8d4ddc                    LEA ECX,[EBP + -0x24]
004aa70e  83c073                    ADD EAX,0x73
004aa711  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004aa714  e867c04a00                CALL 0x00956780
004aa719  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
004aa71e  83ec08                    SUB ESP,0x8
004aa721  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004aa729  f30f110424                MOVSS dword ptr [ESP],XMM0
004aa72e  6a00                      PUSH 0x0
004aa730  6a02                      PUSH 0x2
004aa732  51                        PUSH ECX
004aa733  c704240000803f            MOV dword ptr [ESP],0x3f800000
004aa73a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004aa740  ff75dc                    PUSH dword ptr [EBP + -0x24]
004aa743  e8e8344800                CALL 0x0092dc30
004aa748  6a01                      PUSH 0x1
004aa74a  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004aa754  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004aa75e  68ecd2b100                PUSH 0xb1d2ec
004aa763  e9affdffff                JMP 0x004aa517
004aa768  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004aa76b  83f81e                    CMP EAX,0x1e
004aa76e  7503                      JNZ 0x004aa773
004aa770  0f28d1                    MOVAPS XMM2,XMM1
004aa773  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
004aa77a  0f8590000000              JNZ 0x004aa810
004aa780  83f80a                    CMP EAX,0xa
004aa783  0f8487000000              JZ 0x004aa810
004aa789  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
004aa78c  660f6ec8                  MOVD XMM1,EAX
004aa790  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004aa794  c1e81f                    SHR EAX,0x1f
004aa797  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004aa7a0  f20f59ca                  MULSD XMM1,XMM2
004aa7a4  e856616400                CALL 0x00af08ff
004aa7a9  f20f2cf0                  CVTTSD2SI ESI,XMM0
004aa7ad  85f6                      TEST ESI,ESI
004aa7af  740d                      JZ 0x004aa7be
004aa7b1  e8aa472400                CALL 0x006eef60
004aa7b6  33d2                      XOR EDX,EDX
004aa7b8  f7f6                      DIV ESI
004aa7ba  85d2                      TEST EDX,EDX
004aa7bc  754f                      JNZ 0x004aa80d
004aa7be  837f2c1e                  CMP dword ptr [EDI + 0x2c],0x1e
004aa7c2  7435                      JZ 0x004aa7f9
004aa7c4  e897472400                CALL 0x006eef60
004aa7c9  33d2                      XOR EDX,EDX
004aa7cb  b903000000                MOV ECX,0x3
004aa7d0  f7f1                      DIV ECX
004aa7d2  83ea00                    SUB EDX,0x0
004aa7d5  7422                      JZ 0x004aa7f9
004aa7d7  83ea01                    SUB EDX,0x1
004aa7da  7411                      JZ 0x004aa7ed
004aa7dc  83ea01                    SUB EDX,0x1
004aa7df  7522                      JNZ 0x004aa803
004aa7e1  c787640b00000e000000      MOV dword ptr [EDI + 0xb64],0xe
004aa7eb  eb16                      JMP 0x004aa803
004aa7ed  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004aa7f7  eb0a                      JMP 0x004aa803
004aa7f9  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004aa803  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004aa80d  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
004aa810  85c9                      TEST ECX,ECX
004aa812  744e                      JZ 0x004aa862
004aa814  3b4de8                    CMP ECX,dword ptr [EBP + -0x18]
004aa817  771f                      JA 0x004aa838
004aa819  80bf5101000000            CMP byte ptr [EDI + 0x151],0x0
004aa820  7416                      JZ 0x004aa838
004aa822  8d4f78                    LEA ECX,[EDI + 0x78]
004aa825  e806e8f5ff                CALL 0x00409030
004aa82a  8d8f98000000              LEA ECX,[EDI + 0x98]
004aa830  e8fbe7f5ff                CALL 0x00409030
004aa835  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
004aa838  f30f1045f8                MOVSS XMM0,dword ptr [EBP + -0x8]
004aa83d  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004aa845  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
004aa84d  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
004aa852  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004aa85a  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
004aa862  3b4dec                    CMP ECX,dword ptr [EBP + -0x14]
004aa865  730a                      JNC 0x004aa871
004aa867  8bcf                      MOV ECX,EDI
004aa869  e822812100                CALL 0x006c2990
004aa86e  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
004aa871  f20f1045c8                MOVSD XMM0,qword ptr [EBP + -0x38]
004aa876  41                        INC ECX
004aa877  f20f104dc0                MOVSD XMM1,qword ptr [EBP + -0x40]
004aa87c  f20f1055b8                MOVSD XMM2,qword ptr [EBP + -0x48]
004aa881  894df0                    MOV dword ptr [EBP + -0x10],ECX
004aa884  3bcb                      CMP ECX,EBX
004aa886  0f86a6fbffff              JBE 0x004aa432
004aa88c  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004aa88f  8b45fc                    MOV EAX,dword ptr [EBP + -0x4]
004aa892  81e1ff030000              AND ECX,0x3ff
004aa898  c1e00a                    SHL EAX,0xa
004aa89b  0bc8                      OR ECX,EAX
004aa89d  c787e40b000000000000      MOV dword ptr [EDI + 0xbe4],0x0
004aa8a7  8b45d4                    MOV EAX,dword ptr [EBP + -0x2c]
004aa8aa  c1e108                    SHL ECX,0x8
004aa8ad  0fb6c0                    MOVZX EAX,AL
004aa8b0  0bc8                      OR ECX,EAX
004aa8b2  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
004aa8b5  c1e107                    SHL ECX,0x7
004aa8b8  83e07f                    AND EAX,0x7f
004aa8bb  0bc8                      OR ECX,EAX
004aa8bd  898fe00b0000              MOV dword ptr [EDI + 0xbe0],ECX
004aa8c3  5f                        POP EDI
004aa8c4  5e                        POP ESI
004aa8c5  5b                        POP EBX
004aa8c6  8be5                      MOV ESP,EBP
004aa8c8  5d                        POP EBP
004aa8c9  c3                        RET
