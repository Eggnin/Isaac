; J460 NPC AI 0x00524a10 AI_00524a10
; types=59
; identities=59.0.0
; entry=00524a10
00524a10  53                        PUSH EBX
00524a11  8bdc                      MOV EBX,ESP
00524a13  83ec08                    SUB ESP,0x8
00524a16  83e4f8                    AND ESP,0xfffffff8
00524a19  83c404                    ADD ESP,0x4
00524a1c  55                        PUSH EBP
00524a1d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00524a20  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00524a24  8bec                      MOV EBP,ESP
00524a26  81ecd0000000              SUB ESP,0xd0
00524a2c  a1b493bf00                MOV EAX,[0x00bf93b4]
00524a31  33c5                      XOR EAX,EBP
00524a33  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00524a36  56                        PUSH ESI
00524a37  57                        PUSH EDI
00524a38  8bf9                      MOV EDI,ECX
00524a3a  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00524a40  85c9                      TEST ECX,ECX
00524a42  756a                      JNZ 0x00524aae
00524a44  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00524a4a  8d4f48                    LEA ECX,[EDI + 0x48]
00524a4d  898734030000              MOV dword ptr [EDI + 0x334],EAX
00524a53  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00524a59  6a01                      PUSH 0x1
00524a5b  898738030000              MOV dword ptr [EDI + 0x338],EAX
00524a61  6898d5b100                PUSH 0xb1d598
00524a66  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00524a70  e85b5beeff                CALL 0x0040a5d0
00524a75  84c0                      TEST AL,AL
00524a77  740f                      JZ 0x00524a88
00524a79  8d4f78                    LEA ECX,[EDI + 0x78]
00524a7c  e82f57eeff                CALL 0x0040a1b0
00524a81  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00524a88  6a01                      PUSH 0x1
00524a8a  8bcf                      MOV ECX,EDI
00524a8c  e81fba1900                CALL 0x006c04b0
00524a91  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
00524a9b  5f                        POP EDI
00524a9c  5e                        POP ESI
00524a9d  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00524aa0  33cd                      XOR ECX,EBP
00524aa2  e884a65c00                CALL 0x00aef12b
00524aa7  8be5                      MOV ESP,EBP
00524aa9  5d                        POP EBP
00524aaa  8be3                      MOV ESP,EBX
00524aac  5b                        POP EBX
00524aad  c3                        RET
00524aae  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
00524ab3  0f57c0                    XORPS XMM0,XMM0
00524ab6  0f2fc8                    COMISS XMM1,XMM0
00524ab9  7656                      JBE 0x00524b11
00524abb  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00524abe  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00524ac1  744e                      JZ 0x00524b11
00524ac3  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
00524ac6  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
00524ac9  898d4cffffff              MOV dword ptr [EBP + 0xffffff4c],ECX
00524acf  8bca                      MOV ECX,EDX
00524ad1  83e104                    AND ECX,0x4
00524ad4  83c900                    OR ECX,0x0
00524ad7  742a                      JZ 0x00524b03
00524ad9  8b4830                    MOV ECX,dword ptr [EAX + 0x30]
00524adc  d1e9                      SHR ECX,0x1
00524ade  f6c101                    TEST CL,0x1
00524ae1  7520                      JNZ 0x00524b03
00524ae3  83781001                  CMP dword ptr [EAX + 0x10],0x1
00524ae7  741a                      JZ 0x00524b03
00524ae9  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
00524aec  83f901                    CMP ECX,0x1
00524aef  7412                      JZ 0x00524b03
00524af1  83f903                    CMP ECX,0x3
00524af4  740d                      JZ 0x00524b03
00524af6  81e200100000              AND EDX,0x1000
00524afc  83ca00                    OR EDX,0x0
00524aff  7502                      JNZ 0x00524b03
00524b01  8910                      MOV dword ptr [EAX],EDX
00524b03  83c038                    ADD EAX,0x38
00524b06  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00524b09  75b8                      JNZ 0x00524ac3
00524b0b  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00524b11  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00524b19  f30f590524a3ba00          MULSS XMM0,dword ptr [0x00baa324]
00524b21  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00524b29  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00524b2d  740d                      JZ 0x00524b3c
00524b2f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00524b36  0f85a1000000              JNZ 0x00524bdd
00524b3c  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00524b46  83f903                    CMP ECX,0x3
00524b49  0f848e000000              JZ 0x00524bdd
00524b4f  83f906                    CMP ECX,0x6
00524b52  0f8585000000              JNZ 0x00524bdd
00524b58  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00524b62  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00524b65  85f6                      TEST ESI,ESI
00524b67  744a                      JZ 0x00524bb3
00524b69  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00524b6d  8bc6                      MOV EAX,ESI
00524b6f  7202                      JC 0x00524b73
00524b71  8b06                      MOV EAX,dword ptr [ESI]
00524b73  b94c0fb600                MOV ECX,0xb60f4c
00524b78  8a10                      MOV DL,byte ptr [EAX]
00524b7a  3a11                      CMP DL,byte ptr [ECX]
00524b7c  751a                      JNZ 0x00524b98
00524b7e  84d2                      TEST DL,DL
00524b80  7412                      JZ 0x00524b94
00524b82  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00524b85  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00524b88  750e                      JNZ 0x00524b98
00524b8a  83c002                    ADD EAX,0x2
00524b8d  83c102                    ADD ECX,0x2
00524b90  84d2                      TEST DL,DL
00524b92  75e4                      JNZ 0x00524b78
00524b94  33c0                      XOR EAX,EAX
00524b96  eb05                      JMP 0x00524b9d
00524b98  1bc0                      SBB EAX,EAX
00524b9a  83c801                    OR EAX,0x1
00524b9d  85c0                      TEST EAX,EAX
00524b9f  7512                      JNZ 0x00524bb3
00524ba1  384634                    CMP byte ptr [ESI + 0x34],AL
00524ba4  742e                      JZ 0x00524bd4
00524ba6  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00524bac  8d7748                    LEA ESI,[EDI + 0x48]
00524baf  7523                      JNZ 0x00524bd4
00524bb1  eb03                      JMP 0x00524bb6
00524bb3  8d7748                    LEA ESI,[EDI + 0x48]
00524bb6  6a01                      PUSH 0x1
00524bb8  684c0fb600                PUSH 0xb60f4c
00524bbd  8bce                      MOV ECX,ESI
00524bbf  e80c5aeeff                CALL 0x0040a5d0
00524bc4  84c0                      TEST AL,AL
00524bc6  740c                      JZ 0x00524bd4
00524bc8  8d4e30                    LEA ECX,[ESI + 0x30]
00524bcb  e8e055eeff                CALL 0x0040a1b0
00524bd0  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00524bd4  6a01                      PUSH 0x1
00524bd6  8bcf                      MOV ECX,EDI
00524bd8  e8d3b81900                CALL 0x006c04b0
00524bdd  51                        PUSH ECX
00524bde  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
00524be4  c7042400000000            MOV dword ptr [ESP],0x0
00524beb  50                        PUSH EAX
00524bec  8bcf                      MOV ECX,EDI
00524bee  e84da01900                CALL 0x006bec40
00524bf3  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00524bfb  8db73c030000              LEA ESI,[EDI + 0x33c]
00524c01  f30f5c8d4cffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff4c]
00524c09  f30f1016                  MOVSS XMM2,dword ptr [ESI]
00524c0d  f30f5c9548ffffff          SUBSS XMM2,dword ptr [EBP + 0xffffff48]
00524c15  0f28c1                    MOVAPS XMM0,XMM1
00524c18  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
00524c20  f30f59c1                  MULSS XMM0,XMM1
00524c24  0f28ca                    MOVAPS XMM1,XMM2
00524c27  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
00524c2f  f30f59ca                  MULSS XMM1,XMM2
00524c33  f30f58c1                  ADDSS XMM0,XMM1
00524c37  e8140ef1ff                CALL 0x00435a50
00524c3c  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
00524c42  0f28c8                    MOVAPS XMM1,XMM0
00524c45  f30f118d44ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM1
00524c4d  85d2                      TEST EDX,EDX
00524c4f  7e1a                      JLE 0x00524c6b
00524c51  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00524c59  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00524c61  2bc8                      SUB ECX,EAX
00524c63  03d1                      ADD EDX,ECX
00524c65  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00524c6b  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00524c71  83f803                    CMP EAX,0x3
00524c74  0f857c030000              JNZ 0x00524ff6
00524c7a  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00524c80  33c0                      XOR EAX,EAX
00524c82  81e100000010              AND ECX,0x10000000
00524c88  0bc1                      OR EAX,ECX
00524c8a  7418                      JZ 0x00524ca4
00524c8c  a17816c700                MOV EAX,[0x00c71678]
00524c91  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00524c97  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00524c9a  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00524c9e  0f8506010000              JNZ 0x00524daa
00524ca4  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00524cab  7425                      JZ 0x00524cd2
00524cad  85d2                      TEST EDX,EDX
00524caf  0f8ff5000000              JG 0x00524daa
00524cb5  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00524cbd  8bcf                      MOV ECX,EDI
00524cbf  6a07                      PUSH 0x7
00524cc1  6a00                      PUSH 0x0
00524cc3  e898611a00                CALL 0x006cae60
00524cc8  84c0                      TEST AL,AL
00524cca  0f84da000000              JZ 0x00524daa
00524cd0  eb16                      JMP 0x00524ce8
00524cd2  e889a21c00                CALL 0x006eef60
00524cd7  33d2                      XOR EDX,EDX
00524cd9  b91e000000                MOV ECX,0x1e
00524cde  f7f1                      DIV ECX
00524ce0  85d2                      TEST EDX,EDX
00524ce2  0f85c2000000              JNZ 0x00524daa
00524ce8  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00524cee  25000a0001                AND EAX,0x1000a00
00524cf3  83c800                    OR EAX,0x0
00524cf6  0f85ae000000              JNZ 0x00524daa
00524cfc  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00524d02  83f8ff                    CMP EAX,-0x1
00524d05  7463                      JZ 0x00524d6a
00524d07  6a01                      PUSH 0x1
00524d09  8bcf                      MOV ECX,EDI
00524d0b  e840431b00                CALL 0x006d9050
00524d10  f30f108f240f0000          MOVSS XMM1,dword ptr [EDI + 0xf24]
00524d18  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
00524d20  f30f1097200f0000          MOVSS XMM2,dword ptr [EDI + 0xf20]
00524d28  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
00524d30  0f28c1                    MOVAPS XMM0,XMM1
00524d33  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
00524d3b  f30f59c1                  MULSS XMM0,XMM1
00524d3f  0f28ca                    MOVAPS XMM1,XMM2
00524d42  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
00524d4a  f30f59ca                  MULSS XMM1,XMM2
00524d4e  f30f58c1                  ADDSS XMM0,XMM1
00524d52  e8f90cf1ff                CALL 0x00435a50
00524d57  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00524d5d  0f28c8                    MOVAPS XMM1,XMM0
00524d60  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00524d68  eb08                      JMP 0x00524d72
00524d6a  f30f108d44ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff44]
00524d72  f30f100594aaba00          MOVSS XMM0,dword ptr [0x00baaa94]
00524d7a  0f2fc1                    COMISS XMM0,XMM1
00524d7d  762b                      JBE 0x00524daa
00524d7f  83f8ff                    CMP EAX,-0x1
00524d82  8d4f48                    LEA ECX,[EDI + 0x48]
00524d85  0f95c0                    SETNZ AL
00524d88  0fb6c0                    MOVZX EAX,AL
00524d8b  50                        PUSH EAX
00524d8c  6854ddb100                PUSH 0xb1dd54
00524d91  e8ea55eeff                CALL 0x0040a380
00524d96  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00524da0  c787a00b00003c000000      MOV dword ptr [EDI + 0xba0],0x3c
00524daa  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00524db1  7446                      JZ 0x00524df9
00524db3  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00524dbb  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
00524dc1  50                        PUSH EAX
00524dc2  8bcf                      MOV ECX,EDI
00524dc4  e807351b00                CALL 0x006d82d0
00524dc9  8bc8                      MOV ECX,EAX
00524dcb  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00524dcf  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00524dd6  9f                        LAHF
00524dd7  f6c444                    TEST AH,0x44
00524dda  7a16                      JP 0x00524df2
00524ddc  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00524de1  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00524de8  9f                        LAHF
00524de9  f6c444                    TEST AH,0x44
00524dec  7a04                      JP 0x00524df2
00524dee  33d2                      XOR EDX,EDX
00524df0  eb1a                      JMP 0x00524e0c
00524df2  ba01000000                MOV EDX,0x1
00524df7  eb13                      JMP 0x00524e0c
00524df9  e862a11c00                CALL 0x006eef60
00524dfe  33d2                      XOR EDX,EDX
00524e00  b914000000                MOV ECX,0x14
00524e05  f7f1                      DIV ECX
00524e07  f7da                      NEG EDX
00524e09  1bd2                      SBB EDX,EDX
00524e0b  42                        INC EDX
00524e0c  85d2                      TEST EDX,EDX
00524e0e  0f8475070000              JZ 0x00525589
00524e14  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00524e1b  744c                      JZ 0x00524e69
00524e1d  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00524e25  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
00524e2b  50                        PUSH EAX
00524e2c  8bcf                      MOV ECX,EDI
00524e2e  e89d341b00                CALL 0x006d82d0
00524e33  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00524e37  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
00524e3f  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00524e44  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
00524e4c  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
00524e54  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
00524e5c  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
00524e64  e989000000                JMP 0x00524ef2
00524e69  f30f1015d0a9ba00          MOVSS XMM2,dword ptr [0x00baa9d0]
00524e71  f30f5e9544ffffff          DIVSS XMM2,dword ptr [EBP + 0xffffff44]
00524e79  a17816c700                MOV EAX,[0x00c71678]
00524e7e  6a00                      PUSH 0x0
00524e80  6a00                      PUSH 0x0
00524e82  6a00                      PUSH 0x0
00524e84  51                        PUSH ECX
00524e85  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
00524e8b  c7042400000000            MOV dword ptr [ESP],0x0
00524e92  51                        PUSH ECX
00524e93  8d8d48ffffff              LEA ECX,[EBP + 0xffffff48]
00524e99  51                        PUSH ECX
00524e9a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00524ea0  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
00524ea8  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00524eb0  f30f59ca                  MULSS XMM1,XMM2
00524eb4  f30f5cc1                  SUBSS XMM0,XMM1
00524eb8  f30f108d4cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff4c]
00524ec0  f30f59ca                  MULSS XMM1,XMM2
00524ec4  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00524ecc  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00524ed4  f30f5cc1                  SUBSS XMM0,XMM1
00524ed8  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00524ee0  e83be62e00                CALL 0x00813520
00524ee5  8b08                      MOV ECX,dword ptr [EAX]
00524ee7  898f34030000              MOV dword ptr [EDI + 0x334],ECX
00524eed  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00524ef2  f30f119738030000          MOVSS dword ptr [EDI + 0x338],XMM2
00524efa  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00524f02  0f2fc2                    COMISS XMM0,XMM2
00524f05  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00524f08  765e                      JBE 0x00524f68
00524f0a  85c9                      TEST ECX,ECX
00524f0c  7451                      JZ 0x00524f5f
00524f0e  83791410                  CMP dword ptr [ECX + 0x14],0x10
00524f12  8bc1                      MOV EAX,ECX
00524f14  7202                      JC 0x00524f18
00524f16  8b01                      MOV EAX,dword ptr [ECX]
00524f18  b9400fb600                MOV ECX,0xb60f40
00524f1d  0f1f00                    NOP dword ptr [EAX]
00524f20  8a10                      MOV DL,byte ptr [EAX]
00524f22  3a11                      CMP DL,byte ptr [ECX]
00524f24  751a                      JNZ 0x00524f40
00524f26  84d2                      TEST DL,DL
00524f28  7412                      JZ 0x00524f3c
00524f2a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00524f2d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00524f30  750e                      JNZ 0x00524f40
00524f32  83c002                    ADD EAX,0x2
00524f35  83c102                    ADD ECX,0x2
00524f38  84d2                      TEST DL,DL
00524f3a  75e4                      JNZ 0x00524f20
00524f3c  33c0                      XOR EAX,EAX
00524f3e  eb05                      JMP 0x00524f45
00524f40  1bc0                      SBB EAX,EAX
00524f42  83c801                    OR EAX,0x1
00524f45  85c0                      TEST EAX,EAX
00524f47  7516                      JNZ 0x00524f5f
00524f49  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00524f4c  80783400                  CMP byte ptr [EAX + 0x34],0x0
00524f50  0f8487000000              JZ 0x00524fdd
00524f56  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00524f5d  757e                      JNZ 0x00524fdd
00524f5f  6a01                      PUSH 0x1
00524f61  68400fb600                PUSH 0xb60f40
00524f66  eb5a                      JMP 0x00524fc2
00524f68  85c9                      TEST ECX,ECX
00524f6a  744f                      JZ 0x00524fbb
00524f6c  83791410                  CMP dword ptr [ECX + 0x14],0x10
00524f70  8bc1                      MOV EAX,ECX
00524f72  7202                      JC 0x00524f76
00524f74  8b01                      MOV EAX,dword ptr [ECX]
00524f76  b95cd8b100                MOV ECX,0xb1d85c
00524f7b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00524f80  8a10                      MOV DL,byte ptr [EAX]
00524f82  3a11                      CMP DL,byte ptr [ECX]
00524f84  751a                      JNZ 0x00524fa0
00524f86  84d2                      TEST DL,DL
00524f88  7412                      JZ 0x00524f9c
00524f8a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00524f8d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00524f90  750e                      JNZ 0x00524fa0
00524f92  83c002                    ADD EAX,0x2
00524f95  83c102                    ADD ECX,0x2
00524f98  84d2                      TEST DL,DL
00524f9a  75e4                      JNZ 0x00524f80
00524f9c  33c0                      XOR EAX,EAX
00524f9e  eb05                      JMP 0x00524fa5
00524fa0  1bc0                      SBB EAX,EAX
00524fa2  83c801                    OR EAX,0x1
00524fa5  85c0                      TEST EAX,EAX
00524fa7  7512                      JNZ 0x00524fbb
00524fa9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00524fac  80783400                  CMP byte ptr [EAX + 0x34],0x0
00524fb0  742b                      JZ 0x00524fdd
00524fb2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00524fb9  7522                      JNZ 0x00524fdd
00524fbb  6a01                      PUSH 0x1
00524fbd  685cd8b100                PUSH 0xb1d85c
00524fc2  8d4f48                    LEA ECX,[EDI + 0x48]
00524fc5  e80656eeff                CALL 0x0040a5d0
00524fca  84c0                      TEST AL,AL
00524fcc  740f                      JZ 0x00524fdd
00524fce  8d4f78                    LEA ECX,[EDI + 0x78]
00524fd1  e8da51eeff                CALL 0x0040a1b0
00524fd6  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00524fdd  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
00524fe7  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00524ff1  e923060000                JMP 0x00525619
00524ff6  83f806                    CMP EAX,0x6
00524ff9  0f85d4030000              JNZ 0x005253d3
00524fff  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00525003  0f8410060000              JZ 0x00525619
00525009  8d4f78                    LEA ECX,[EDI + 0x78]
0052500c  6860d5b100                PUSH 0xb1d560
00525011  e85a5eeeff                CALL 0x0040ae70
00525016  84c0                      TEST AL,AL
00525018  0f84fb050000              JZ 0x00525619
0052501e  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00525024  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0052502e  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
00525031  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
00525037  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052503b  0f841a030000              JZ 0x0052535b
00525041  6874d5b100                PUSH 0xb1d574
00525046  8d4f78                    LEA ECX,[EDI + 0x78]
00525049  e8825deeff                CALL 0x0040add0
0052504e  84c0                      TEST AL,AL
00525050  7413                      JZ 0x00525065
00525052  6a01                      PUSH 0x1
00525054  8bcf                      MOV ECX,EDI
00525056  e855b41900                CALL 0x006c04b0
0052505b  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
00525065  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00525069  0f84ec020000              JZ 0x0052535b
0052506f  6874d5b100                PUSH 0xb1d574
00525074  8d4f78                    LEA ECX,[EDI + 0x78]
00525077  e8f45deeff                CALL 0x0040ae70
0052507c  84c0                      TEST AL,AL
0052507e  0f84d7020000              JZ 0x0052535b
00525084  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00525088  0f84bf000000              JZ 0x0052514d
0052508e  68dcd2b100                PUSH 0xb1d2dc
00525093  8d4f78                    LEA ECX,[EDI + 0x78]
00525096  e8355deeff                CALL 0x0040add0
0052509b  84c0                      TEST AL,AL
0052509d  0f84aa000000              JZ 0x0052514d
005250a3  6800000010                PUSH 0x10000000
005250a8  6a00                      PUSH 0x0
005250aa  8bcf                      MOV ECX,EDI
005250ac  e87f23efff                CALL 0x00417430
005250b1  84c0                      TEST AL,AL
005250b3  7418                      JZ 0x005250cd
005250b5  a17816c700                MOV EAX,[0x00c71678]
005250ba  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005250c0  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005250c3  f6404401                  TEST byte ptr [EAX + 0x44],0x1
005250c7  0f8580000000              JNZ 0x0052514d
005250cd  51                        PUSH ECX
005250ce  c704240000803f            MOV dword ptr [ESP],0x3f800000
005250d5  6a00                      PUSH 0x0
005250d7  6a02                      PUSH 0x2
005250d9  51                        PUSH ECX
005250da  c704240000803f            MOV dword ptr [ESP],0x3f800000
005250e1  8bcf                      MOV ECX,EDI
005250e3  6a48                      PUSH 0x48
005250e5  e8b61a1b00                CALL 0x006d6ba0
005250ea  6a00                      PUSH 0x0
005250ec  68000a0001                PUSH 0x1000a00
005250f1  8bcf                      MOV ECX,EDI
005250f3  e83823efff                CALL 0x00417430
005250f8  84c0                      TEST AL,AL
005250fa  7551                      JNZ 0x0052514d
005250fc  51                        PUSH ECX
005250fd  c704240000803f            MOV dword ptr [ESP],0x3f800000
00525104  6a00                      PUSH 0x0
00525106  6a02                      PUSH 0x2
00525108  51                        PUSH ECX
00525109  c704240000803f            MOV dword ptr [ESP],0x3f800000
00525110  8bcf                      MOV ECX,EDI
00525112  68e2000000                PUSH 0xe2
00525117  e8841a1b00                CALL 0x006d6ba0
0052511c  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
00525122  e8099ef1ff                CALL 0x0043ef30
00525127  50                        PUSH EAX
00525128  6a06                      PUSH 0x6
0052512a  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
00525130  c78538ffffff0000e040      MOV dword ptr [EBP + 0xffffff38],0x40e00000
0052513a  50                        PUSH EAX
0052513b  56                        PUSH ESI
0052513c  8bcf                      MOV ECX,EDI
0052513e  c7853cffffff00000000      MOV dword ptr [EBP + 0xffffff3c],0x0
00525148  e893611a00                CALL 0x006cb2e0
0052514d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00525154  0f8411010000              JZ 0x0052526b
0052515a  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
00525162  8bcf                      MOV ECX,EDI
00525164  6a02                      PUSH 0x2
00525166  e8b5391b00                CALL 0x006d8b20
0052516b  6a01                      PUSH 0x1
0052516d  6a00                      PUSH 0x0
0052516f  51                        PUSH ECX
00525170  c7042400004040            MOV dword ptr [ESP],0x40400000
00525177  8d8f14040000              LEA ECX,[EDI + 0x414]
0052517d  6840b6c700                PUSH 0xc7b640
00525182  e839e22b00                CALL 0x007e33c0
00525187  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
0052518d  8bcf                      MOV ECX,EDI
0052518f  50                        PUSH EAX
00525190  e89b3b1b00                CALL 0x006d8d30
00525195  a17816c700                MOV EAX,[0x00c71678]
0052519a  ffb544ffffff              PUSH dword ptr [EBP + 0xffffff44]
005251a0  ffb540ffffff              PUSH dword ptr [EBP + 0xffffff40]
005251a6  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005251ac  8bce                      MOV ECX,ESI
005251ae  e8cdb52c00                CALL 0x007f0780
005251b3  85c0                      TEST EAX,EAX
005251b5  744e                      JZ 0x00525205
005251b7  6a00                      PUSH 0x0
005251b9  6a00                      PUSH 0x0
005251bb  6a01                      PUSH 0x1
005251bd  51                        PUSH ECX
005251be  c7042400002042            MOV dword ptr [ESP],0x42200000
005251c5  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
005251cb  50                        PUSH EAX
005251cc  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
005251d2  8bce                      MOV ECX,ESI
005251d4  50                        PUSH EAX
005251d5  e846e32e00                CALL 0x00813520
005251da  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005251de  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
005251e6  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
005251ee  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
005251f3  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
005251fb  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00525203  eb20                      JMP 0x00525225
00525205  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
0052520d  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00525215  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
0052521d  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00525225  f30f1015a0a9ba00          MOVSS XMM2,dword ptr [0x00baa9a0]
0052522d  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00525233  83ec08                    SUB ESP,0x8
00525236  8bcf                      MOV ECX,EDI
00525238  50                        PUSH EAX
00525239  e802451900                CALL 0x006b9740
0052523e  84c0                      TEST AL,AL
00525240  0f85d3030000              JNZ 0x00525619
00525246  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
0052524e  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00525256  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0052525e  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00525266  e9ae030000                JMP 0x00525619
0052526b  51                        PUSH ECX
0052526c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00525272  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
00525278  c704240000a041            MOV dword ptr [ESP],0x41a00000
0052527f  50                        PUSH EAX
00525280  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00525286  e845972f00                CALL 0x0081e9d0
0052528b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00525291  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
00525297  50                        PUSH EAX
00525298  e8b3e61d00                CALL 0x00703950
0052529d  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
005252a5  f30f108d4cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff4c]
005252ad  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
005252b5  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
005252bd  f30f59c9                  MULSS XMM1,XMM1
005252c1  f30f59c0                  MULSS XMM0,XMM0
005252c5  f30f58c8                  ADDSS XMM1,XMM0
005252c9  0f2f0d44acba00            COMISS XMM1,dword ptr [0x00baac44]
005252d0  0f8643030000              JBE 0x00525619
005252d6  f30f1005a4acba00          MOVSS XMM0,dword ptr [0x00baaca4]
005252de  0f2fc1                    COMISS XMM0,XMM1
005252e1  0f8632030000              JBE 0x00525619
005252e7  a17816c700                MOV EAX,[0x00c71678]
005252ec  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005252f2  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
005252f8  50                        PUSH EAX
005252f9  8bce                      MOV ECX,ESI
005252fb  e890d92e00                CALL 0x00812c90
00525300  3dbf010000                CMP EAX,0x1bf
00525305  7711                      JA 0x00525318
00525307  81bc866c070000f4010000    CMP dword ptr [ESI + EAX*0x4 + 0x76c],0x1f4
00525312  0f8d01030000              JGE 0x00525619
00525318  99                        CDQ
00525319  f77e0c                    IDIV dword ptr [ESI + 0xc]
0052531c  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00525324  660f6ed2                  MOVD XMM2,EDX
00525328  660f6ec8                  MOVD XMM1,EAX
0052532c  0f5bd2                    CVTDQ2PS XMM2,XMM2
0052532f  0f5bc9                    CVTDQ2PS XMM1,XMM1
00525332  f30f59d0                  MULSS XMM2,XMM0
00525336  f30f59c8                  MULSS XMM1,XMM0
0052533a  f30f58d0                  ADDSS XMM2,XMM0
0052533e  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
00525346  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
0052534e  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
00525356  e9be020000                JMP 0x00525619
0052535b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00525362  7421                      JZ 0x00525385
00525364  6a01                      PUSH 0x1
00525366  6a00                      PUSH 0x0
00525368  51                        PUSH ECX
00525369  c704240000803f            MOV dword ptr [ESP],0x3f800000
00525370  8d8f14040000              LEA ECX,[EDI + 0x414]
00525376  6840b6c700                PUSH 0xc7b640
0052537b  e840e02b00                CALL 0x007e33c0
00525380  e994020000                JMP 0x00525619
00525385  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
0052538d  f30f591588a4ba00          MULSS XMM2,dword ptr [0x00baa488]
00525395  f30f581554a0ba00          ADDSS XMM2,dword ptr [0x00baa054]
0052539d  f30f5d1554a4ba00          MINSS XMM2,dword ptr [0x00baa454]
005253a5  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
005253ad  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005253b5  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005253bd  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
005253c1  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
005253c6  f30f59ca                  MULSS XMM1,XMM2
005253ca  f30f59c2                  MULSS XMM0,XMM2
005253ce  e936020000                JMP 0x00525609
005253d3  83f810                    CMP EAX,0x10
005253d6  7541                      JNZ 0x00525419
005253d8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005253dc  0f84a7010000              JZ 0x00525589
005253e2  6860d5b100                PUSH 0xb1d560
005253e7  8d4f78                    LEA ECX,[EDI + 0x78]
005253ea  e8e159eeff                CALL 0x0040add0
005253ef  84c0                      TEST AL,AL
005253f1  0f8492010000              JZ 0x00525589
005253f7  51                        PUSH ECX
005253f8  c704240000803f            MOV dword ptr [ESP],0x3f800000
005253ff  6a00                      PUSH 0x0
00525401  6a02                      PUSH 0x2
00525403  51                        PUSH ECX
00525404  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052540b  8bcf                      MOV ECX,EDI
0052540d  6a48                      PUSH 0x48
0052540f  e88c171b00                CALL 0x006d6ba0
00525414  e970010000                JMP 0x00525589
00525419  83f808                    CMP EAX,0x8
0052541c  0f85f7010000              JNZ 0x00525619
00525422  6a00                      PUSH 0x0
00525424  8bcf                      MOV ECX,EDI
00525426  e8253c1b00                CALL 0x006d9050
0052542b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052542f  0f8454010000              JZ 0x00525589
00525435  68dcd2b100                PUSH 0xb1d2dc
0052543a  8d4f78                    LEA ECX,[EDI + 0x78]
0052543d  e88e59eeff                CALL 0x0040add0
00525442  84c0                      TEST AL,AL
00525444  0f843f010000              JZ 0x00525589
0052544a  8bcf                      MOV ECX,EDI
0052544c  e8ef931900                CALL 0x006be840
00525451  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00525458  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00525460  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
00525468  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00525470  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00525478  7446                      JZ 0x005254c0
0052547a  8d8f200f0000              LEA ECX,[EDI + 0xf20]
00525480  6840b6c700                PUSH 0xc7b640
00525485  e8a6b14e00                CALL 0x00a10630
0052548a  84c0                      TEST AL,AL
0052548c  7432                      JZ 0x005254c0
0052548e  f30f1011                  MOVSS XMM2,dword ptr [ECX]
00525492  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
00525497  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
0052549f  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
005254a7  f30f5816                  ADDSS XMM2,dword ptr [ESI]
005254ab  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
005254b0  f30f119548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM2
005254b8  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
005254c0  51                        PUSH ECX
005254c1  c704240000803f            MOV dword ptr [ESP],0x3f800000
005254c8  6a00                      PUSH 0x0
005254ca  6a02                      PUSH 0x2
005254cc  51                        PUSH ECX
005254cd  c704243333333f            MOV dword ptr [ESP],0x3f333333
005254d4  8bcf                      MOV ECX,EDI
005254d6  68d5000000                PUSH 0xd5
005254db  e8c0161b00                CALL 0x006d6ba0
005254e0  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
005254e6  e8459af1ff                CALL 0x0043ef30
005254eb  50                        PUSH EAX
005254ec  51                        PUSH ECX
005254ed  c7042400002041            MOV dword ptr [ESP],0x41200000
005254f4  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
005254fa  50                        PUSH EAX
005254fb  6a01                      PUSH 0x1
005254fd  8bcf                      MOV ECX,EDI
005254ff  e8cc781a00                CALL 0x006ccdd0
00525504  f30f108018040000          MOVSS XMM0,dword ptr [EAX + 0x418]
0052550c  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
00525514  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
0052551c  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
00525524  f30f590de4a2ba00          MULSS XMM1,dword ptr [0x00baa2e4]
0052552c  8b883c040000              MOV ECX,dword ptr [EAX + 0x43c]
00525532  f30f5915e4a2ba00          MULSS XMM2,dword ptr [0x00baa2e4]
0052553a  83883804000002            OR dword ptr [EAX + 0x438],0x2
00525541  f30f118018040000          MOVSS dword ptr [EAX + 0x418],XMM0
00525549  f30f108014040000          MOVSS XMM0,dword ptr [EAX + 0x414]
00525551  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00525559  89883c040000              MOV dword ptr [EAX + 0x43c],ECX
0052555f  c78020040000cdcccc3f      MOV dword ptr [EAX + 0x420],0x3fcccccd
00525569  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
00525571  f30f118014040000          MOVSS dword ptr [EAX + 0x414],XMM0
00525579  f30f118860030000          MOVSS dword ptr [EAX + 0x360],XMM1
00525581  f30f119064030000          MOVSS dword ptr [EAX + 0x364],XMM2
00525589  83bf640b000006            CMP dword ptr [EDI + 0xb64],0x6
00525590  7517                      JNZ 0x005255a9
00525592  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00525596  7411                      JZ 0x005255a9
00525598  6874d5b100                PUSH 0xb1d574
0052559d  8d4f78                    LEA ECX,[EDI + 0x78]
005255a0  e8cb58eeff                CALL 0x0040ae70
005255a5  84c0                      TEST AL,AL
005255a7  7520                      JNZ 0x005255c9
005255a9  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
005255b0  7534                      JNZ 0x005255e6
005255b2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005255b6  7411                      JZ 0x005255c9
005255b8  6860d5b100                PUSH 0xb1d560
005255bd  8d4f78                    LEA ECX,[EDI + 0x78]
005255c0  e8ab58eeff                CALL 0x0040ae70
005255c5  84c0                      TEST AL,AL
005255c7  751d                      JNZ 0x005255e6
005255c9  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005255d3  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
005255d9  8906                      MOV dword ptr [ESI],EAX
005255db  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
005255e1  894604                    MOV dword ptr [ESI + 0x4],EAX
005255e4  eb33                      JMP 0x00525619
005255e6  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
005255f0  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005255f8  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00525600  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
00525604  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
00525609  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00525611  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00525619  6a00                      PUSH 0x0
0052561b  8bcf                      MOV ECX,EDI
0052561d  e88eae1900                CALL 0x006c04b0
00525622  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00525625  5f                        POP EDI
00525626  33cd                      XOR ECX,EBP
00525628  5e                        POP ESI
00525629  e8fd9a5c00                CALL 0x00aef12b
0052562e  8be5                      MOV ESP,EBP
00525630  5d                        POP EBP
00525631  8be3                      MOV ESP,EBX
00525633  5b                        POP EBX
00525634  c3                        RET
