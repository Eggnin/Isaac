; J460 NPC AI 0x00539b90 AI_00539b90
; types=228,251
; identities=228.0.0,228.10.0,251.0.0,251.10.0
; entry=00539b90
00539b90  53                        PUSH EBX
00539b91  8bdc                      MOV EBX,ESP
00539b93  83ec08                    SUB ESP,0x8
00539b96  83e4f8                    AND ESP,0xfffffff8
00539b99  83c404                    ADD ESP,0x4
00539b9c  55                        PUSH EBP
00539b9d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00539ba0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00539ba4  8bec                      MOV EBP,ESP
00539ba6  6aff                      PUSH -0x1
00539ba8  68652aaf00                PUSH 0xaf2a65
00539bad  64a100000000              MOV EAX,FS:[0x0]
00539bb3  50                        PUSH EAX
00539bb4  53                        PUSH EBX
00539bb5  81ec40010000              SUB ESP,0x140
00539bbb  a1b493bf00                MOV EAX,[0x00bf93b4]
00539bc0  33c5                      XOR EAX,EBP
00539bc2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00539bc5  56                        PUSH ESI
00539bc6  57                        PUSH EDI
00539bc7  50                        PUSH EAX
00539bc8  8d45f4                    LEA EAX,[EBP + -0xc]
00539bcb  64a300000000              MOV FS:[0x0],EAX
00539bd1  8bf9                      MOV EDI,ECX
00539bd3  89bdf8feffff              MOV dword ptr [EBP + 0xfffffef8],EDI
00539bd9  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00539bdf  85c0                      TEST EAX,EAX
00539be1  0f8572050000              JNZ 0x0053a159
00539be7  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00539bea  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00539bf4  85c0                      TEST EAX,EAX
00539bf6  0f85aa040000              JNZ 0x0053a0a6
00539bfc  6a01                      PUSH 0x1
00539bfe  68a811b600                PUSH 0xb611a8
00539c03  8d4f48                    LEA ECX,[EDI + 0x48]
00539c06  898710040000              MOV dword ptr [EDI + 0x410],EAX
00539c0c  e8df0eedff                CALL 0x0040aaf0
00539c11  84c0                      TEST AL,AL
00539c13  7417                      JZ 0x00539c2c
00539c15  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
00539c1c  740e                      JZ 0x00539c2c
00539c1e  8d8f98000000              LEA ECX,[EDI + 0x98]
00539c24  0f57c9                    XORPS XMM1,XMM1
00539c27  e8d4f1ecff                CALL 0x00408e00
00539c2c  817f3409010000            CMP dword ptr [EDI + 0x34],0x109
00539c33  751e                      JNZ 0x00539c53
00539c35  837f3801                  CMP dword ptr [EDI + 0x38],0x1
00539c39  7518                      JNZ 0x00539c53
00539c3b  817f28fb000000            CMP dword ptr [EDI + 0x28],0xfb
00539c42  750f                      JNZ 0x00539c53
00539c44  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
00539c4e  e99b040000                JMP 0x0053a0ee
00539c53  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00539c59  8db73c030000              LEA ESI,[EDI + 0x33c]
00539c5f  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
00539c67  0f57c9                    XORPS XMM1,XMM1
00539c6a  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00539c74  c787c00b0000ffffffff      MOV dword ptr [EDI + 0xbc0],0xffffffff
00539c7e  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
00539c84  f30f101e                  MOVSS XMM3,dword ptr [ESI]
00539c88  f30f106014                MOVSS XMM4,dword ptr [EAX + 0x14]
00539c8d  f30f5c257ca8ba00          SUBSS XMM4,dword ptr [0x00baa87c]
00539c95  f30f107818                MOVSS XMM7,dword ptr [EAX + 0x18]
00539c9a  f30f10681c                MOVSS XMM5,dword ptr [EAX + 0x1c]
00539c9f  f30f58f9                  ADDSS XMM7,XMM1
00539ca3  f30f100d34acba00          MOVSS XMM1,dword ptr [0x00baac34]
00539cab  f30f107020                MOVSS XMM6,dword ptr [EAX + 0x20]
00539cb0  f30f582d7ca8ba00          ADDSS XMM5,dword ptr [0x00baa87c]
00539cb8  0f28c4                    MOVAPS XMM0,XMM4
00539cbb  f30f11a5f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM4
00539cc3  f30f102540cbba00          MOVSS XMM4,dword ptr [0x00bacb40]
00539ccb  f30f5cc3                  SUBSS XMM0,XMM3
00539ccf  f30f58f2                  ADDSS XMM6,XMM2
00539cd3  0f54c4                    ANDPS XMM0,XMM4
00539cd6  0f2fc8                    COMISS XMM1,XMM0
00539cd9  762b                      JBE 0x00539d06
00539cdb  f30f109df0feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffef0]
00539ce3  0f28c8                    MOVAPS XMM1,XMM0
00539ce6  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00539cee  f30f119f34030000          MOVSS dword ptr [EDI + 0x334],XMM3
00539cf6  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00539cfe  f30f109f3c030000          MOVSS XMM3,dword ptr [EDI + 0x33c]
00539d06  0f28c5                    MOVAPS XMM0,XMM5
00539d09  f30f5cc3                  SUBSS XMM0,XMM3
00539d0d  0f54c4                    ANDPS XMM0,XMM4
00539d10  0f2fc8                    COMISS XMM1,XMM0
00539d13  7623                      JBE 0x00539d38
00539d15  0f28c8                    MOVAPS XMM1,XMM0
00539d18  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00539d20  f30f11af34030000          MOVSS dword ptr [EDI + 0x334],XMM5
00539d28  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00539d30  f30f109f3c030000          MOVSS XMM3,dword ptr [EDI + 0x33c]
00539d38  f30f10af40030000          MOVSS XMM5,dword ptr [EDI + 0x340]
00539d40  0f28c7                    MOVAPS XMM0,XMM7
00539d43  f30f5cc5                  SUBSS XMM0,XMM5
00539d47  0f54c4                    ANDPS XMM0,XMM4
00539d4a  0f2fc8                    COMISS XMM1,XMM0
00539d4d  7632                      JBE 0x00539d81
00539d4f  0f28cf                    MOVAPS XMM1,XMM7
00539d52  f30f119f34030000          MOVSS dword ptr [EDI + 0x334],XMM3
00539d5a  f30f5c0d7ca8ba00          SUBSS XMM1,dword ptr [0x00baa87c]
00539d62  f30f11bf38030000          MOVSS dword ptr [EDI + 0x338],XMM7
00539d6a  f30f109f3c030000          MOVSS XMM3,dword ptr [EDI + 0x33c]
00539d72  f30f5ccd                  SUBSS XMM1,XMM5
00539d76  f30f10af40030000          MOVSS XMM5,dword ptr [EDI + 0x340]
00539d7e  0f54cc                    ANDPS XMM1,XMM4
00539d81  0f28c6                    MOVAPS XMM0,XMM6
00539d84  f30f5cc5                  SUBSS XMM0,XMM5
00539d88  0f54c4                    ANDPS XMM0,XMM4
00539d8b  0f2fc8                    COMISS XMM1,XMM0
00539d8e  7622                      JBE 0x00539db2
00539d90  0f28ce                    MOVAPS XMM1,XMM6
00539d93  f30f119f34030000          MOVSS dword ptr [EDI + 0x334],XMM3
00539d9b  f30f5c0d7ca8ba00          SUBSS XMM1,dword ptr [0x00baa87c]
00539da3  f30f11b738030000          MOVSS dword ptr [EDI + 0x338],XMM6
00539dab  f30f5ccd                  SUBSS XMM1,XMM5
00539daf  0f54cc                    ANDPS XMM1,XMM4
00539db2  0f2fca                    COMISS XMM1,XMM2
00539db5  0f860c010000              JBE 0x00539ec7
00539dbb  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
00539dc1  33c9                      XOR ECX,ECX
00539dc3  f30f1026                  MOVSS XMM4,dword ptr [ESI]
00539dc7  f30f106e04                MOVSS XMM5,dword ptr [ESI + 0x4]
00539dcc  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00539dd4  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
00539ddc  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
00539de2  0f1f4000                  NOP dword ptr [EAX]
00539de6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
00539df0  0f28c4                    MOVAPS XMM0,XMM4
00539df3  f30f58812cc8c500          ADDSS XMM0,dword ptr [ECX + 0xc5c82c]
00539dfb  f30f5cc2                  SUBSS XMM0,XMM2
00539dff  f30f5ec2                  DIVSS XMM0,XMM2
00539e03  f30f58c1                  ADDSS XMM0,XMM1
00539e07  f30f2cf0                  CVTTSS2SI ESI,XMM0
00539e0b  0f28c5                    MOVAPS XMM0,XMM5
00539e0e  f30f588130c8c500          ADDSS XMM0,dword ptr [ECX + 0xc5c830]
00539e16  f30f5cc3                  SUBSS XMM0,XMM3
00539e1a  f30f5ec2                  DIVSS XMM0,XMM2
00539e1e  f30f58c1                  ADDSS XMM0,XMM1
00539e22  f30f2cd0                  CVTTSS2SI EDX,XMM0
00539e26  85f6                      TEST ESI,ESI
00539e28  7848                      JS 0x00539e72
00539e2a  8b780c                    MOV EDI,dword ptr [EAX + 0xc]
00539e2d  3bf7                      CMP ESI,EDI
00539e2f  89bdf0feffff              MOV dword ptr [EBP + 0xfffffef0],EDI
00539e35  8bbdf8feffff              MOV EDI,dword ptr [EBP + 0xfffffef8]
00539e3b  7d35                      JGE 0x00539e72
00539e3d  85d2                      TEST EDX,EDX
00539e3f  7831                      JS 0x00539e72
00539e41  3b5010                    CMP EDX,dword ptr [EAX + 0x10]
00539e44  7d2c                      JGE 0x00539e72
00539e46  8b85f0feffff              MOV EAX,dword ptr [EBP + 0xfffffef0]
00539e4c  0fafc2                    IMUL EAX,EDX
00539e4f  03c6                      ADD EAX,ESI
00539e51  3dbf010000                CMP EAX,0x1bf
00539e56  7714                      JA 0x00539e6c
00539e58  8bb5f4feffff              MOV ESI,dword ptr [EBP + 0xfffffef4]
00539e5e  8b748624                  MOV ESI,dword ptr [ESI + EAX*0x4 + 0x24]
00539e62  85f6                      TEST ESI,ESI
00539e64  7406                      JZ 0x00539e6c
00539e66  837e3c03                  CMP dword ptr [ESI + 0x3c],0x3
00539e6a  7414                      JZ 0x00539e80
00539e6c  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
00539e72  83c108                    ADD ECX,0x8
00539e75  83f920                    CMP ECX,0x20
00539e78  0f8272ffffff              JC 0x00539df0
00539e7e  eb41                      JMP 0x00539ec1
00539e80  8b4624                    MOV EAX,dword ptr [ESI + 0x24]
00539e83  99                        CDQ
00539e84  f7bdf0feffff              IDIV dword ptr [EBP + 0xfffffef0]
00539e8a  660f6ec0                  MOVD XMM0,EAX
00539e8e  660f6eca                  MOVD XMM1,EDX
00539e92  0f5bc9                    CVTDQ2PS XMM1,XMM1
00539e95  0f5bc0                    CVTDQ2PS XMM0,XMM0
00539e98  f30f59ca                  MULSS XMM1,XMM2
00539e9c  f30f59c2                  MULSS XMM0,XMM2
00539ea0  f30f58ca                  ADDSS XMM1,XMM2
00539ea4  f30f58c3                  ADDSS XMM0,XMM3
00539ea8  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
00539eb0  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00539eb8  8b4624                    MOV EAX,dword ptr [ESI + 0x24]
00539ebb  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00539ec1  8db73c030000              LEA ESI,[EDI + 0x33c]
00539ec7  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
00539ecf  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00539ed4  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
00539edc  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
00539ee0  0f28c1                    MOVAPS XMM0,XMM1
00539ee3  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
00539eeb  f30f59c1                  MULSS XMM0,XMM1
00539eef  0f28ca                    MOVAPS XMM1,XMM2
00539ef2  f30f1195f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM2
00539efa  f30f59ca                  MULSS XMM1,XMM2
00539efe  f30f58c1                  ADDSS XMM0,XMM1
00539f02  e849bbefff                CALL 0x00435a50
00539f07  f30f1015d0a9ba00          MOVSS XMM2,dword ptr [0x00baa9d0]
00539f0f  0f2fc2                    COMISS XMM0,XMM2
00539f12  765c                      JBE 0x00539f70
00539f14  f30f5ed0                  DIVSS XMM2,XMM0
00539f18  f30f108df0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef0]
00539f20  f30f5c1554a4ba00          SUBSS XMM2,dword ptr [0x00baa454]
00539f28  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00539f30  f30f59156ca0ba00          MULSS XMM2,dword ptr [0x00baa06c]
00539f38  f30f59ca                  MULSS XMM1,XMM2
00539f3c  f30f59c8                  MULSS XMM1,XMM0
00539f40  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
00539f48  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00539f50  f30f108df8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef8]
00539f58  f30f59ca                  MULSS XMM1,XMM2
00539f5c  f30f59c8                  MULSS XMM1,XMM0
00539f60  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00539f68  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00539f70  33c9                      XOR ECX,ECX
00539f72  b807000000                MOV EAX,0x7
00539f77  898df4feffff              MOV dword ptr [EBP + 0xfffffef4],ECX
00539f7d  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00539f83  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00539f8a  7c08                      JL 0x00539f94
00539f8c  85c9                      TEST ECX,ECX
00539f8e  0f84f9000000              JZ 0x0053a08d
00539f94  e8c74f1b00                CALL 0x006eef60
00539f99  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00539f9f  6a00                      PUSH 0x0
00539fa1  68acd6c500                PUSH 0xc5d6ac
00539fa6  68dcd5c500                PUSH 0xc5d5dc
00539fab  6a00                      PUSH 0x0
00539fad  50                        PUSH EAX
00539fae  6a00                      PUSH 0x0
00539fb0  57                        PUSH EDI
00539fb1  6840b6c700                PUSH 0xc7b640
00539fb6  56                        PUSH ESI
00539fb7  6a0a                      PUSH 0xa
00539fb9  ff7728                    PUSH dword ptr [EDI + 0x28]
00539fbc  e85febeeff                CALL 0x00428b20
00539fc1  50                        PUSH EAX
00539fc2  e8ea685b00                CALL 0x00af08b1
00539fc7  8bf0                      MOV ESI,EAX
00539fc9  83c414                    ADD ESP,0x14
00539fcc  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00539fd2  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00539fd8  85c9                      TEST ECX,ECX
00539fda  741e                      JZ 0x00539ffa
00539fdc  8985f0feffff              MOV dword ptr [EBP + 0xfffffef0],EAX
00539fe2  81c1cc030000              ADD ECX,0x3cc
00539fe8  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00539fee  50                        PUSH EAX
00539fef  e81c52f9ff                CALL 0x004cf210
00539ff4  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00539ffa  50                        PUSH EAX
00539ffb  8bcf                      MOV ECX,EDI
00539ffd  8938                      MOV dword ptr [EAX],EDI
00539fff  e8ec3cf9ff                CALL 0x004cdcf0
0053a004  660f6e85f4feffff          MOVD XMM0,dword ptr [EBP + 0xfffffef4]
0053a00c  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
0053a012  0f5bc0                    CVTDQ2PS XMM0,XMM0
0053a015  898634030000              MOV dword ptr [ESI + 0x334],EAX
0053a01b  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
0053a021  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0053a028  898638030000              MOV dword ptr [ESI + 0x338],EAX
0053a02e  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0053a034  f30f5e05b8a7ba00          DIVSS XMM0,dword ptr [0x00baa7b8]
0053a03c  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0053a042  f30f1186b40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM0
0053a04a  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0053a051  7c21                      JL 0x0053a074
0053a053  660f6e85f8feffff          MOVD XMM0,dword ptr [EBP + 0xfffffef8]
0053a05b  0f5bc0                    CVTDQ2PS XMM0,XMM0
0053a05e  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
0053a068  f30f58c0                  ADDSS XMM0,XMM0
0053a06c  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
0053a074  8b06                      MOV EAX,dword ptr [ESI]
0053a076  8bce                      MOV ECX,ESI
0053a078  ff500c                    CALL dword ptr [EAX + 0xc]
0053a07b  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
0053a081  8db73c030000              LEA ESI,[EDI + 0x33c]
0053a087  8b8df4feffff              MOV ECX,dword ptr [EBP + 0xfffffef4]
0053a08d  48                        DEC EAX
0053a08e  41                        INC ECX
0053a08f  898df4feffff              MOV dword ptr [EBP + 0xfffffef4],ECX
0053a095  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
0053a09b  83f8ff                    CMP EAX,-0x1
0053a09e  0f8fdffeffff              JG 0x00539f83
0053a0a4  eb48                      JMP 0x0053a0ee
0053a0a6  83f80a                    CMP EAX,0xa
0053a0a9  7543                      JNZ 0x0053a0ee
0053a0ab  6a00                      PUSH 0x0
0053a0ad  8d4f48                    LEA ECX,[EDI + 0x48]
0053a0b0  68f811b600                PUSH 0xb611f8
0053a0b5  e8c602edff                CALL 0x0040a380
0053a0ba  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0053a0c0  818f6801000000000400      OR dword ptr [EDI + 0x168],0x40000
0053a0ca  c7875403000018fcffff      MOV dword ptr [EDI + 0x354],0xfffffc18
0053a0d4  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0053a0de  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
0053a0e8  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0053a0ee  817f28fb000000            CMP dword ptr [EDI + 0x28],0xfb
0053a0f5  0f851d0a0000              JNZ 0x0053ab18
0053a0fb  0f280d40bfba00            MOVAPS XMM1,xmmword ptr [0x00babf40]
0053a102  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
0053a108  81c7e4010000              ADD EDI,0x1e4
0053a10e  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
0053a118  c785d4feffff00000000      MOV dword ptr [EBP + 0xfffffed4],0x0
0053a122  0f57c0                    XORPS XMM0,XMM0
0053a125  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
0053a12f  3bf8                      CMP EDI,EAX
0053a131  0f84e1090000              JZ 0x0053ab18
0053a137  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
0053a13d  0f114710                  MOVUPS xmmword ptr [EDI + 0x10],XMM0
0053a141  f30f7e85d0feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffed0]
0053a149  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
0053a14e  0f110f                    MOVUPS xmmword ptr [EDI],XMM1
0053a151  894728                    MOV dword ptr [EDI + 0x28],EAX
0053a154  e9bf090000                JMP 0x0053ab18
0053a159  83f803                    CMP EAX,0x3
0053a15c  0f855a020000              JNZ 0x0053a3bc
0053a162  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0053a165  85c0                      TEST EAX,EAX
0053a167  7562                      JNZ 0x0053a1cb
0053a169  398710040000              CMP dword ptr [EDI + 0x410],EAX
0053a16f  752b                      JNZ 0x0053a19c
0053a171  6a01                      PUSH 0x1
0053a173  68a811b600                PUSH 0xb611a8
0053a178  8d4f48                    LEA ECX,[EDI + 0x48]
0053a17b  e87009edff                CALL 0x0040aaf0
0053a180  84c0                      TEST AL,AL
0053a182  7412                      JZ 0x0053a196
0053a184  8d8f98000000              LEA ECX,[EDI + 0x98]
0053a18a  e82100edff                CALL 0x0040a1b0
0053a18f  c687ac00000001            MOV byte ptr [EDI + 0xac],0x1
0053a196  ff8710040000              INC dword ptr [EDI + 0x410]
0053a19c  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
0053a1a3  740d                      JZ 0x0053a1b2
0053a1a5  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
0053a1ac  0f853c080000              JNZ 0x0053a9ee
0053a1b2  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053a1bc  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0053a1c6  e923080000                JMP 0x0053a9ee
0053a1cb  83f80a                    CMP EAX,0xa
0053a1ce  0f851a080000              JNZ 0x0053a9ee
0053a1d4  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0053a1da  85c0                      TEST EAX,EAX
0053a1dc  0f84bd000000              JZ 0x0053a29f
0053a1e2  83b8640b000008            CMP dword ptr [EAX + 0xb64],0x8
0053a1e9  0f84b0000000              JZ 0x0053a29f
0053a1ef  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0053a1f7  f30f10a840030000          MOVSS XMM5,dword ptr [EAX + 0x340]
0053a1ff  0f28c1                    MOVAPS XMM0,XMM1
0053a202  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
0053a20a  f30f5cafe0000000          SUBSS XMM5,dword ptr [EDI + 0xe0]
0053a212  f30f109f38030000          MOVSS XMM3,dword ptr [EDI + 0x338]
0053a21a  f30f10b03c030000          MOVSS XMM6,dword ptr [EAX + 0x33c]
0053a222  f30f5cb7dc000000          SUBSS XMM6,dword ptr [EDI + 0xdc]
0053a22a  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0053a231  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0053a239  f30f58c0                  ADDSS XMM0,XMM0
0053a23d  f30f10a734030000          MOVSS XMM4,dword ptr [EDI + 0x334]
0053a245  f30f5ceb                  SUBSS XMM5,XMM3
0053a249  f30f5cf4                  SUBSS XMM6,XMM4
0053a24d  f30f59c0                  MULSS XMM0,XMM0
0053a251  f30f59e9                  MULSS XMM5,XMM1
0053a255  f30f5cd0                  SUBSS XMM2,XMM0
0053a259  f30f59f1                  MULSS XMM6,XMM1
0053a25d  0f57c0                    XORPS XMM0,XMM0
0053a260  f30f58f4                  ADDSS XMM6,XMM4
0053a264  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
0053a26c  f30f58d5                  ADDSS XMM2,XMM5
0053a270  f30f58f0                  ADDSS XMM6,XMM0
0053a274  f30f58d3                  ADDSS XMM2,XMM3
0053a278  f30f11b73c030000          MOVSS dword ptr [EDI + 0x33c],XMM6
0053a280  f30f5815b8a7ba00          ADDSS XMM2,dword ptr [0x00baa7b8]
0053a288  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
0053a290  c7876c03000000000000      MOV dword ptr [EDI + 0x36c],0x0
0053a29a  e94f070000                JMP 0x0053a9ee
0053a29f  817f28e4000000            CMP dword ptr [EDI + 0x28],0xe4
0053a2a6  0f8504010000              JNZ 0x0053a3b0
0053a2ac  e8af4c1b00                CALL 0x006eef60
0053a2b1  8bf8                      MOV EDI,EAX
0053a2b3  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0053a2b9  50                        PUSH EAX
0053a2ba  e8b14d1400                CALL 0x0067f070
0053a2bf  83c404                    ADD ESP,0x4
0053a2c2  8bf0                      MOV ESI,EAX
0053a2c4  e8974c1b00                CALL 0x006eef60
0053a2c9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053a2cf  6a00                      PUSH 0x0
0053a2d1  68acd5c500                PUSH 0xc5d5ac
0053a2d6  660f6ec0                  MOVD XMM0,EAX
0053a2da  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053a2de  c1e81f                    SHR EAX,0x1f
0053a2e1  68dcd5c500                PUSH 0xc5d5dc
0053a2e6  6a00                      PUSH 0x0
0053a2e8  57                        PUSH EDI
0053a2e9  6a00                      PUSH 0x0
0053a2eb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053a2f4  8b85f8feffff              MOV EAX,dword ptr [EBP + 0xfffffef8]
0053a2fa  8bf8                      MOV EDI,EAX
0053a2fc  57                        PUSH EDI
0053a2fd  6840b6c700                PUSH 0xc7b640
0053a302  660f5ac8                  CVTPD2PS XMM1,XMM0
0053a306  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0053a30e  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
0053a316  0f28c1                    MOVAPS XMM0,XMM1
0053a319  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
0053a31e  f30f5906                  MULSS XMM0,dword ptr [ESI]
0053a322  f30f588840030000          ADDSS XMM1,dword ptr [EAX + 0x340]
0053a32a  f30f58803c030000          ADDSS XMM0,dword ptr [EAX + 0x33c]
0053a332  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0053a338  50                        PUSH EAX
0053a339  6a16                      PUSH 0x16
0053a33b  68e8030000                PUSH 0x3e8
0053a340  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0053a348  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
0053a350  e8cbe7eeff                CALL 0x00428b20
0053a355  50                        PUSH EAX
0053a356  e856655b00                CALL 0x00af08b1
0053a35b  83c414                    ADD ESP,0x14
0053a35e  8bf0                      MOV ESI,EAX
0053a360  e8fb4b1b00                CALL 0x006eef60
0053a365  660f6ec0                  MOVD XMM0,EAX
0053a369  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053a36d  c1e81f                    SHR EAX,0x1f
0053a370  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053a379  660f5ac8                  CVTPD2PS XMM1,XMM0
0053a37d  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0053a385  f30f580dd4a1ba00          ADDSS XMM1,dword ptr [0x00baa1d4]
0053a38d  0f28c1                    MOVAPS XMM0,XMM1
0053a390  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0053a398  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0053a3a0  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0053a3a8  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0053a3b0  8b07                      MOV EAX,dword ptr [EDI]
0053a3b2  8bcf                      MOV ECX,EDI
0053a3b4  ff5028                    CALL dword ptr [EAX + 0x28]
0053a3b7  e932060000                JMP 0x0053a9ee
0053a3bc  83f804                    CMP EAX,0x4
0053a3bf  0f8541050000              JNZ 0x0053a906
0053a3c5  8bb79c000000              MOV ESI,dword ptr [EDI + 0x9c]
0053a3cb  85f6                      TEST ESI,ESI
0053a3cd  744c                      JZ 0x0053a41b
0053a3cf  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053a3d3  8bc6                      MOV EAX,ESI
0053a3d5  7202                      JC 0x0053a3d9
0053a3d7  8b06                      MOV EAX,dword ptr [ESI]
0053a3d9  b9d4feb500                MOV ECX,0xb5fed4
0053a3de  6690                      NOP
0053a3e0  8a10                      MOV DL,byte ptr [EAX]
0053a3e2  3a11                      CMP DL,byte ptr [ECX]
0053a3e4  751a                      JNZ 0x0053a400
0053a3e6  84d2                      TEST DL,DL
0053a3e8  7412                      JZ 0x0053a3fc
0053a3ea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053a3ed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053a3f0  750e                      JNZ 0x0053a400
0053a3f2  83c002                    ADD EAX,0x2
0053a3f5  83c102                    ADD ECX,0x2
0053a3f8  84d2                      TEST DL,DL
0053a3fa  75e4                      JNZ 0x0053a3e0
0053a3fc  33c0                      XOR EAX,EAX
0053a3fe  eb05                      JMP 0x0053a405
0053a400  1bc0                      SBB EAX,EAX
0053a402  83c801                    OR EAX,0x1
0053a405  85c0                      TEST EAX,EAX
0053a407  7512                      JNZ 0x0053a41b
0053a409  384634                    CMP byte ptr [ESI + 0x34],AL
0053a40c  742e                      JZ 0x0053a43c
0053a40e  3887ac000000              CMP byte ptr [EDI + 0xac],AL
0053a414  8d7748                    LEA ESI,[EDI + 0x48]
0053a417  7523                      JNZ 0x0053a43c
0053a419  eb03                      JMP 0x0053a41e
0053a41b  8d7748                    LEA ESI,[EDI + 0x48]
0053a41e  6a01                      PUSH 0x1
0053a420  68d4feb500                PUSH 0xb5fed4
0053a425  8bce                      MOV ECX,ESI
0053a427  e8c406edff                CALL 0x0040aaf0
0053a42c  84c0                      TEST AL,AL
0053a42e  740c                      JZ 0x0053a43c
0053a430  8d4e50                    LEA ECX,[ESI + 0x50]
0053a433  e878fdecff                CALL 0x0040a1b0
0053a438  c6466401                  MOV byte ptr [ESI + 0x64],0x1
0053a43c  817f3409010000            CMP dword ptr [EDI + 0x34],0x109
0053a443  751e                      JNZ 0x0053a463
0053a445  837f3801                  CMP dword ptr [EDI + 0x38],0x1
0053a449  7518                      JNZ 0x0053a463
0053a44b  817f28fb000000            CMP dword ptr [EDI + 0x28],0xfb
0053a452  750f                      JNZ 0x0053a463
0053a454  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0053a45e  e98b050000                JMP 0x0053a9ee
0053a463  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053a469  2500080001                AND EAX,0x1000800
0053a46e  83c800                    OR EAX,0x0
0053a471  745f                      JZ 0x0053a4d2
0053a473  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053a47a  7556                      JNZ 0x0053a4d2
0053a47c  8bcf                      MOV ECX,EDI
0053a47e  e8bd431800                CALL 0x006be840
0053a483  6a00                      PUSH 0x0
0053a485  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0053a48b  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0053a491  8985f0feffff              MOV dword ptr [EBP + 0xfffffef0],EAX
0053a497  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0053a49d  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
0053a4a3  8d8f14040000              LEA ECX,[EDI + 0x414]
0053a4a9  50                        PUSH EAX
0053a4aa  e891a42a00                CALL 0x007e4940
0053a4af  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0053a4b6  7e4a                      JLE 0x0053a502
0053a4b8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0053a4c0  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0053a4c8  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0053a4d0  eb30                      JMP 0x0053a502
0053a4d2  6a01                      PUSH 0x1
0053a4d4  6a00                      PUSH 0x0
0053a4d6  83ec08                    SUB ESP,0x8
0053a4d9  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0053a4df  8bcf                      MOV ECX,EDI
0053a4e1  c74424040000c03f          MOV dword ptr [ESP + 0x4],0x3fc00000
0053a4e9  c7042400000000            MOV dword ptr [ESP],0x0
0053a4f0  50                        PUSH EAX
0053a4f1  e84a471800                CALL 0x006bec40
0053a4f6  50                        PUSH EAX
0053a4f7  8d8f14040000              LEA ECX,[EDI + 0x414]
0053a4fd  e8be8e2a00                CALL 0x007e33c0
0053a502  f30f109f3c030000          MOVSS XMM3,dword ptr [EDI + 0x33c]
0053a50a  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0053a512  0f28cb                    MOVAPS XMM1,XMM3
0053a515  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
0053a51d  f30f58c8                  ADDSS XMM1,XMM0
0053a521  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0053a529  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0053a531  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0053a539  c685fffeffff00            MOV byte ptr [EBP + 0xfffffeff],0x0
0053a540  f30f5cca                  SUBSS XMM1,XMM2
0053a544  f30f119df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM3
0053a54c  f30f1195f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM2
0053a554  f30f5c8738030000          SUBSS XMM0,dword ptr [EDI + 0x338]
0053a55c  f30f59c9                  MULSS XMM1,XMM1
0053a560  f30f59c0                  MULSS XMM0,XMM0
0053a564  f30f58c1                  ADDSS XMM0,XMM1
0053a568  0f2f0534acba00            COMISS XMM0,dword ptr [0x00baac34]
0053a56f  0f864e010000              JBE 0x0053a6c3
0053a575  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053a57c  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0053a582  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0053a58a  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
0053a590  0f28cb                    MOVAPS XMM1,XMM3
0053a593  f30f5cca                  SUBSS XMM1,XMM2
0053a597  50                        PUSH EAX
0053a598  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
0053a5a0  0f84b0000000              JZ 0x0053a656
0053a5a6  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
0053a5ae  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0053a5b6  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0053a5be  f30f5c8738030000          SUBSS XMM0,dword ptr [EDI + 0x338]
0053a5c6  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0053a5ce  e85d5a4d00                CALL 0x00a10030
0053a5d3  f30f109df0feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffef0]
0053a5db  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0053a5e3  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0053a5e7  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0053a5ec  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
0053a5f4  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0053a5fc  f30f589738030000          ADDSS XMM2,dword ptr [EDI + 0x338]
0053a604  f30f58d9                  ADDSS XMM3,XMM1
0053a608  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0053a610  f30f5c9df8feffff          SUBSS XMM3,dword ptr [EBP + 0xfffffef8]
0053a618  f30f5915a4a3ba00          MULSS XMM2,dword ptr [0x00baa3a4]
0053a620  f30f591da4a3ba00          MULSS XMM3,dword ptr [0x00baa3a4]
0053a628  f30f59d0                  MULSS XMM2,XMM0
0053a62c  f30f59d8                  MULSS XMM3,XMM0
0053a630  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0053a638  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0053a640  f30f58c3                  ADDSS XMM0,XMM3
0053a644  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0053a64c  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0053a654  eb66                      JMP 0x0053a6bc
0053a656  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0053a65e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0053a666  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0053a66e  f30f5c8738030000          SUBSS XMM0,dword ptr [EDI + 0x338]
0053a676  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0053a67e  e8ad594d00                CALL 0x00a10030
0053a683  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0053a687  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0053a68c  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
0053a694  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0053a69c  f30f5895f0feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffef0]
0053a6a4  f30f588f38030000          ADDSS XMM1,dword ptr [EDI + 0x338]
0053a6ac  f30f11973c030000          MOVSS dword ptr [EDI + 0x33c],XMM2
0053a6b4  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
0053a6bc  c685fffeffff01            MOV byte ptr [EBP + 0xfffffeff],0x1
0053a6c3  6a09                      PUSH 0x9
0053a6c5  8bcf                      MOV ECX,EDI
0053a6c7  e8c4db1900                CALL 0x006d8290
0053a6cc  84c0                      TEST AL,AL
0053a6ce  741d                      JZ 0x0053a6ed
0053a6d0  80bdfffeffff00            CMP byte ptr [EBP + 0xfffffeff],0x0
0053a6d7  7414                      JZ 0x0053a6ed
0053a6d9  e882481b00                CALL 0x006eef60
0053a6de  83e003                    AND EAX,0x3
0053a6e1  750a                      JNZ 0x0053a6ed
0053a6e3  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
0053a6ed  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0053a6f5  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
0053a6fb  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0053a703  2bc8                      SUB ECX,EAX
0053a705  80bdfffeffff00            CMP byte ptr [EBP + 0xfffffeff],0x0
0053a70c  8d040e                    LEA EAX,[ESI + ECX*0x1]
0053a70f  898710040000              MOV dword ptr [EDI + 0x410],EAX
0053a715  7453                      JZ 0x0053a76a
0053a717  a17816c700                MOV EAX,[0x00c71678]
0053a71c  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0053a722  83b8b01b000035            CMP dword ptr [EAX + 0x1bb0],0x35
0053a729  7436                      JZ 0x0053a761
0053a72b  e830481b00                CALL 0x006eef60
0053a730  33d2                      XOR EDX,EDX
0053a732  b91e000000                MOV ECX,0x1e
0053a737  f7f1                      DIV ECX
0053a739  83c23c                    ADD EDX,0x3c
0053a73c  3bf2                      CMP ESI,EDX
0053a73e  7e21                      JLE 0x0053a761
0053a740  ff7720                    PUSH dword ptr [EDI + 0x20]
0053a743  51                        PUSH ECX
0053a744  8bcf                      MOV ECX,EDI
0053a746  e8c51f1700                CALL 0x006ac710
0053a74b  84c0                      TEST AL,AL
0053a74d  7412                      JZ 0x0053a761
0053a74f  e80c481b00                CALL 0x006eef60
0053a754  33d2                      XOR EDX,EDX
0053a756  b905000000                MOV ECX,0x5
0053a75b  f7f1                      DIV ECX
0053a75d  85d2                      TEST EDX,EDX
0053a75f  7470                      JZ 0x0053a7d1
0053a761  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
0053a768  7f67                      JG 0x0053a7d1
0053a76a  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
0053a770  85c9                      TEST ECX,ECX
0053a772  0f8876020000              JS 0x0053a9ee
0053a778  a17816c700                MOV EAX,[0x00c71678]
0053a77d  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
0053a783  8b4204                    MOV EAX,dword ptr [EDX + 0x4]
0053a786  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
0053a789  85c0                      TEST EAX,EAX
0053a78b  740b                      JZ 0x0053a798
0053a78d  83780810                  CMP dword ptr [EAX + 0x8],0x10
0053a791  7505                      JNZ 0x0053a798
0053a793  833823                    CMP dword ptr [EAX],0x23
0053a796  7439                      JZ 0x0053a7d1
0053a798  8b448a24                  MOV EAX,dword ptr [EDX + ECX*0x4 + 0x24]
0053a79c  85c0                      TEST EAX,EAX
0053a79e  7527                      JNZ 0x0053a7c7
0053a7a0  8b848a6c070000            MOV EAX,dword ptr [EDX + ECX*0x4 + 0x76c]
0053a7a7  3db80b0000                CMP EAX,0xbb8
0053a7ac  7c0d                      JL 0x0053a7bb
0053a7ae  3d9f0f0000                CMP EAX,0xf9f
0053a7b3  0f8f35020000              JG 0x0053a9ee
0053a7b9  eb16                      JMP 0x0053a7d1
0053a7bb  3de8030000                CMP EAX,0x3e8
0053a7c0  7c0f                      JL 0x0053a7d1
0053a7c2  e927020000                JMP 0x0053a9ee
0053a7c7  83783c02                  CMP dword ptr [EAX + 0x3c],0x2
0053a7cb  0f8d1d020000              JGE 0x0053a9ee
0053a7d1  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0053a7db  8db734030000              LEA ESI,[EDI + 0x334]
0053a7e1  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0053a7e8  7c7a                      JL 0x0053a864
0053a7ea  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0053a7ee  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0053a7f4  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0053a7fc  f30f5cc8                  SUBSS XMM1,XMM0
0053a800  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0053a808  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0053a810  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0053a815  51                        PUSH ECX
0053a816  c7042400007042            MOV dword ptr [ESP],0x42700000
0053a81d  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
0053a823  50                        PUSH EAX
0053a824  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
0053a82c  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0053a834  e8c7584d00                CALL 0x00a10100
0053a839  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
0053a841  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0053a845  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0053a84d  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0053a852  f30f588738030000          ADDSS XMM0,dword ptr [EDI + 0x338]
0053a85a  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0053a862  eb46                      JMP 0x0053a8aa
0053a864  a17816c700                MOV EAX,[0x00c71678]
0053a869  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
0053a86f  83ec0c                    SUB ESP,0xc
0053a872  0f57db                    XORPS XMM3,XMM3
0053a875  c744240800002041          MOV dword ptr [ESP + 0x8],0x41200000
0053a87d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0053a885  c704240000f041            MOV dword ptr [ESP],0x41f00000
0053a88c  56                        PUSH ESI
0053a88d  51                        PUSH ECX
0053a88e  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0053a894  e8b7862d00                CALL 0x00812f50
0053a899  8b08                      MOV ECX,dword ptr [EAX]
0053a89b  898f34030000              MOV dword ptr [EDI + 0x334],ECX
0053a8a1  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0053a8a4  898738030000              MOV dword ptr [EDI + 0x338],EAX
0053a8aa  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0053a8b0  e87b46f0ff                CALL 0x0043ef30
0053a8b5  50                        PUSH EAX
0053a8b6  6a09                      PUSH 0x9
0053a8b8  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0053a8be  c785e4feffff00002041      MOV dword ptr [EBP + 0xfffffee4],0x41200000
0053a8c8  50                        PUSH EAX
0053a8c9  56                        PUSH ESI
0053a8ca  8bcf                      MOV ECX,EDI
0053a8cc  c785e8feffff0000c040      MOV dword ptr [EBP + 0xfffffee8],0x40c00000
0053a8d6  e8050a1900                CALL 0x006cb2e0
0053a8db  817f28fb000000            CMP dword ptr [EDI + 0x28],0xfb
0053a8e2  0f8506010000              JNZ 0x0053a9ee
0053a8e8  a17816c700                MOV EAX,[0x00c71678]
0053a8ed  c7801c6502000000803f      MOV dword ptr [EAX + 0x2651c],0x3f800000
0053a8f7  c7801465020096000000      MOV dword ptr [EAX + 0x26514],0x96
0053a901  e9e8000000                JMP 0x0053a9ee
0053a906  83f808                    CMP EAX,0x8
0053a909  0f85df000000              JNZ 0x0053a9ee
0053a90f  817f28fb000000            CMP dword ptr [EDI + 0x28],0xfb
0053a916  753d                      JNZ 0x0053a955
0053a918  8d87f0000000              LEA EAX,[EDI + 0xf0]
0053a91e  50                        PUSH EAX
0053a91f  8d4da8                    LEA ECX,[EBP + -0x58]
0053a922  e899c8ecff                CALL 0x004071c0
0053a927  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0053a92c  8d45a8                    LEA EAX,[EBP + -0x58]
0053a92f  f30f5c0520a1ba00          SUBSS XMM0,dword ptr [0x00baa120]
0053a937  8d4f48                    LEA ECX,[EDI + 0x48]
0053a93a  50                        PUSH EAX
0053a93b  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0053a940  e88bcaecff                CALL 0x004073d0
0053a945  0f57c0                    XORPS XMM0,XMM0
0053a948  0f2f45b4                  COMISS XMM0,dword ptr [EBP + -0x4c]
0053a94c  0f92c0                    SETC AL
0053a94f  888771010000              MOV byte ptr [EDI + 0x171],AL
0053a955  6a00                      PUSH 0x0
0053a957  6800080001                PUSH 0x1000800
0053a95c  8bcf                      MOV ECX,EDI
0053a95e  e8cdcaedff                CALL 0x00417430
0053a963  8bcf                      MOV ECX,EDI
0053a965  84c0                      TEST AL,AL
0053a967  7533                      JNZ 0x0053a99c
0053a969  6a01                      PUSH 0x1
0053a96b  6884030000                PUSH 0x384
0053a970  83ec08                    SUB ESP,0x8
0053a973  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0053a979  c744240400000040          MOV dword ptr [ESP + 0x4],0x40000000
0053a981  c7042400000000            MOV dword ptr [ESP],0x0
0053a988  50                        PUSH EAX
0053a989  e8b2421800                CALL 0x006bec40
0053a98e  50                        PUSH EAX
0053a98f  8d8f14040000              LEA ECX,[EDI + 0x414]
0053a995  e8268a2a00                CALL 0x007e33c0
0053a99a  eb52                      JMP 0x0053a9ee
0053a99c  e89f3e1800                CALL 0x006be840
0053a9a1  6a00                      PUSH 0x0
0053a9a3  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0053a9a9  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0053a9af  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
0053a9b5  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0053a9bb  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
0053a9c1  8d8f14040000              LEA ECX,[EDI + 0x414]
0053a9c7  50                        PUSH EAX
0053a9c8  e8739f2a00                CALL 0x007e4940
0053a9cd  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0053a9d4  7e18                      JLE 0x0053a9ee
0053a9d6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0053a9de  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0053a9e6  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0053a9ee  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053a9f4  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
0053a9fc  2500020000                AND EAX,0x200
0053aa01  83c800                    OR EAX,0x0
0053aa04  7414                      JZ 0x0053aa1a
0053aa06  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0053aa0e  f30f59c1                  MULSS XMM0,XMM1
0053aa12  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0053aa1a  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0053aa1e  0f85f4000000              JNZ 0x0053ab18
0053aa24  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0053aa2c  f30f59c1                  MULSS XMM0,XMM1
0053aa30  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0053aa37  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
0053aa3e  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
0053aa42  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0053aa4a  a118ddb100                MOV EAX,[0x00b1dd18]
0053aa4f  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
0053aa55  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0053aa58  894dc0                    MOV dword ptr [EBP + -0x40],ECX
0053aa5b  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0053aa62  a130ddb100                MOV EAX,[0x00b1dd30]
0053aa67  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
0053aa6d  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0053aa74  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0053aa7b  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
0053aa7e  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0053aa81  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0053aa85  51                        PUSH ECX
0053aa86  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0053aa8a  8d45bc                    LEA EAX,[EBP + -0x44]
0053aa8d  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0053aa94  8bcf                      MOV ECX,EDI
0053aa96  50                        PUSH EAX
0053aa97  8d45d4                    LEA EAX,[EBP + -0x2c]
0053aa9a  50                        PUSH EAX
0053aa9b  e890681800                CALL 0x006c1330
0053aaa0  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0053aaa3  83fa10                    CMP EDX,0x10
0053aaa6  7228                      JC 0x0053aad0
0053aaa8  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0053aaab  42                        INC EDX
0053aaac  8bc1                      MOV EAX,ECX
0053aaae  81fa00100000              CMP EDX,0x1000
0053aab4  7210                      JC 0x0053aac6
0053aab6  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0053aab9  83c223                    ADD EDX,0x23
0053aabc  2bc1                      SUB EAX,ECX
0053aabe  83c0fc                    ADD EAX,-0x4
0053aac1  83f81f                    CMP EAX,0x1f
0053aac4  7742                      JA 0x0053ab08
0053aac6  52                        PUSH EDX
0053aac7  51                        PUSH ECX
0053aac8  e88f465b00                CALL 0x00aef15c
0053aacd  83c408                    ADD ESP,0x8
0053aad0  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0053aad3  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0053aada  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0053aae1  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0053aae5  83fa10                    CMP EDX,0x10
0053aae8  722e                      JC 0x0053ab18
0053aaea  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0053aaed  42                        INC EDX
0053aaee  8bc1                      MOV EAX,ECX
0053aaf0  81fa00100000              CMP EDX,0x1000
0053aaf6  7216                      JC 0x0053ab0e
0053aaf8  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0053aafb  83c223                    ADD EDX,0x23
0053aafe  2bc1                      SUB EAX,ECX
0053ab00  83c0fc                    ADD EAX,-0x4
0053ab03  83f81f                    CMP EAX,0x1f
0053ab06  7606                      JBE 0x0053ab0e
0053ab08  ff159488b100              CALL dword ptr [0x00b18894]
0053ab0e  52                        PUSH EDX
0053ab0f  51                        PUSH ECX
0053ab10  e847465b00                CALL 0x00aef15c
0053ab15  83c408                    ADD ESP,0x8
0053ab18  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0053ab1b  64890d00000000            MOV dword ptr FS:[0x0],ECX
0053ab22  59                        POP ECX
0053ab23  5f                        POP EDI
0053ab24  5e                        POP ESI
0053ab25  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0053ab28  33cd                      XOR ECX,EBP
0053ab2a  e8fc455b00                CALL 0x00aef12b
0053ab2f  8be5                      MOV ESP,EBP
0053ab31  5d                        POP EBP
0053ab32  8be3                      MOV ESP,EBX
0053ab34  5b                        POP EBX
0053ab35  c3                        RET
