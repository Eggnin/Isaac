; J460 NPC AI 0x0051b570 AI_0051b570
; types=88
; identities=88.0.0,88.1.0,88.2.0
; entry=0051b570
0051b570  53                        PUSH EBX
0051b571  8bdc                      MOV EBX,ESP
0051b573  83ec08                    SUB ESP,0x8
0051b576  83e4f8                    AND ESP,0xfffffff8
0051b579  83c404                    ADD ESP,0x4
0051b57c  55                        PUSH EBP
0051b57d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0051b580  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0051b584  8bec                      MOV EBP,ESP
0051b586  6aff                      PUSH -0x1
0051b588  68c544af00                PUSH 0xaf44c5
0051b58d  64a100000000              MOV EAX,FS:[0x0]
0051b593  50                        PUSH EAX
0051b594  53                        PUSH EBX
0051b595  81ec78010000              SUB ESP,0x178
0051b59b  a1b493bf00                MOV EAX,[0x00bf93b4]
0051b5a0  33c5                      XOR EAX,EBP
0051b5a2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0051b5a5  56                        PUSH ESI
0051b5a6  57                        PUSH EDI
0051b5a7  50                        PUSH EAX
0051b5a8  8d45f4                    LEA EAX,[EBP + -0xc]
0051b5ab  64a300000000              MOV FS:[0x0],EAX
0051b5b1  8bf9                      MOV EDI,ECX
0051b5b3  89bde4feffff              MOV dword ptr [EBP + 0xfffffee4],EDI
0051b5b9  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0051b5c0  0f85d7000000              JNZ 0x0051b69d
0051b5c6  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0051b5c9  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0051b5d3  83f801                    CMP EAX,0x1
0051b5d6  755e                      JNZ 0x0051b636
0051b5d8  0f2815e0c2ba00            MOVAPS XMM2,xmmword ptr [0x00bac2e0]
0051b5df  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
0051b5e5  81c7e4010000              ADD EDI,0x1e4
0051b5eb  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
0051b5f5  c785d4feffff0000003f      MOV dword ptr [EBP + 0xfffffed4],0x3f000000
0051b5ff  0f57c9                    XORPS XMM1,XMM1
0051b602  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
0051b60c  3bf8                      CMP EDI,EAX
0051b60e  0f84020a0000              JZ 0x0051c016
0051b614  f30f7e85d0feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffed0]
0051b61c  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
0051b622  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
0051b627  0f1117                    MOVUPS xmmword ptr [EDI],XMM2
0051b62a  894728                    MOV dword ptr [EDI + 0x28],EAX
0051b62d  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
0051b631  e9e0090000                JMP 0x0051c016
0051b636  83f802                    CMP EAX,0x2
0051b639  0f85d7090000              JNZ 0x0051c016
0051b63f  0f281520bfba00            MOVAPS XMM2,xmmword ptr [0x00babf20]
0051b646  8d8584feffff              LEA EAX,[EBP + 0xfffffe84]
0051b64c  81c7e4010000              ADD EDI,0x1e4
0051b652  c785a4feffff0000803f      MOV dword ptr [EBP + 0xfffffea4],0x3f800000
0051b65c  c785a8feffff0000803f      MOV dword ptr [EBP + 0xfffffea8],0x3f800000
0051b666  0f57c9                    XORPS XMM1,XMM1
0051b669  c785acfeffff0000803f      MOV dword ptr [EBP + 0xfffffeac],0x3f800000
0051b673  3bf8                      CMP EDI,EAX
0051b675  0f849b090000              JZ 0x0051c016
0051b67b  f30f7e85a4feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffea4]
0051b683  8b85acfeffff              MOV EAX,dword ptr [EBP + 0xfffffeac]
0051b689  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
0051b68e  0f1117                    MOVUPS xmmword ptr [EDI],XMM2
0051b691  894728                    MOV dword ptr [EDI + 0x28],EAX
0051b694  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
0051b698  e979090000                JMP 0x0051c016
0051b69d  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
0051b6a2  0f57c0                    XORPS XMM0,XMM0
0051b6a5  0f2fc8                    COMISS XMM1,XMM0
0051b6a8  7650                      JBE 0x0051b6fa
0051b6aa  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0051b6ad  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0051b6b0  7448                      JZ 0x0051b6fa
0051b6b2  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
0051b6b5  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
0051b6b8  898df4feffff              MOV dword ptr [EBP + 0xfffffef4],ECX
0051b6be  8bca                      MOV ECX,EDX
0051b6c0  83e104                    AND ECX,0x4
0051b6c3  83c900                    OR ECX,0x0
0051b6c6  742a                      JZ 0x0051b6f2
0051b6c8  8b4830                    MOV ECX,dword ptr [EAX + 0x30]
0051b6cb  d1e9                      SHR ECX,0x1
0051b6cd  f6c101                    TEST CL,0x1
0051b6d0  7520                      JNZ 0x0051b6f2
0051b6d2  83781001                  CMP dword ptr [EAX + 0x10],0x1
0051b6d6  741a                      JZ 0x0051b6f2
0051b6d8  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
0051b6db  83f901                    CMP ECX,0x1
0051b6de  7412                      JZ 0x0051b6f2
0051b6e0  83f903                    CMP ECX,0x3
0051b6e3  740d                      JZ 0x0051b6f2
0051b6e5  81e200100000              AND EDX,0x1000
0051b6eb  83ca00                    OR EDX,0x0
0051b6ee  7502                      JNZ 0x0051b6f2
0051b6f0  8910                      MOV dword ptr [EAX],EDX
0051b6f2  83c038                    ADD EAX,0x38
0051b6f5  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0051b6f8  75b8                      JNZ 0x0051b6b2
0051b6fa  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0051b702  8bcf                      MOV ECX,EDI
0051b704  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
0051b70c  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0051b714  e827311a00                CALL 0x006be840
0051b719  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0051b721  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0051b729  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0051b731  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0051b739  f30f59c0                  MULSS XMM0,XMM0
0051b73d  f30f59c9                  MULSS XMM1,XMM1
0051b741  f30f58c1                  ADDSS XMM0,XMM1
0051b745  e806a3f1ff                CALL 0x00435a50
0051b74a  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0051b751  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0051b759  0f8564020000              JNZ 0x0051b9c3
0051b75f  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0051b765  2500080001                AND EAX,0x1000800
0051b76a  83c800                    OR EAX,0x0
0051b76d  7456                      JZ 0x0051b7c5
0051b76f  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051b776  754d                      JNZ 0x0051b7c5
0051b778  8bcf                      MOV ECX,EDI
0051b77a  e8c1301a00                CALL 0x006be840
0051b77f  6a00                      PUSH 0x0
0051b781  8d8f14040000              LEA ECX,[EDI + 0x414]
0051b787  8b903c030000              MOV EDX,dword ptr [EAX + 0x33c]
0051b78d  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0051b793  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
0051b799  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0051b79f  50                        PUSH EAX
0051b7a0  8995f0feffff              MOV dword ptr [EBP + 0xfffffef0],EDX
0051b7a6  e895912c00                CALL 0x007e4940
0051b7ab  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0051b7b3  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0051b7bb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0051b7c3  eb0d                      JMP 0x0051b7d2
0051b7c5  8d8f14040000              LEA ECX,[EDI + 0x414]
0051b7cb  6a00                      PUSH 0x0
0051b7cd  e82eab2c00                CALL 0x007e6300
0051b7d2  a118ddb100                MOV EAX,[0x00b1dd18]
0051b7d7  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
0051b7dd  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0051b7e4  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
0051b7eb  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0051b7ee  894dc0                    MOV dword ptr [EBP + -0x40],ECX
0051b7f1  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
0051b7f5  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0051b7fc  a130ddb100                MOV EAX,[0x00b1dd30]
0051b801  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
0051b807  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0051b80e  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0051b815  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
0051b818  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0051b81b  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0051b81f  51                        PUSH ECX
0051b820  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0051b824  8d45bc                    LEA EAX,[EBP + -0x44]
0051b827  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0051b82e  8bcf                      MOV ECX,EDI
0051b830  50                        PUSH EAX
0051b831  8d45d4                    LEA EAX,[EBP + -0x2c]
0051b834  50                        PUSH EAX
0051b835  e8f65a1a00                CALL 0x006c1330
0051b83a  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0051b83e  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0051b841  83fa10                    CMP EDX,0x10
0051b844  7228                      JC 0x0051b86e
0051b846  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0051b849  42                        INC EDX
0051b84a  8bc1                      MOV EAX,ECX
0051b84c  81fa00100000              CMP EDX,0x1000
0051b852  7210                      JC 0x0051b864
0051b854  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0051b857  83c223                    ADD EDX,0x23
0051b85a  2bc1                      SUB EAX,ECX
0051b85c  83c0fc                    ADD EAX,-0x4
0051b85f  83f81f                    CMP EAX,0x1f
0051b862  7749                      JA 0x0051b8ad
0051b864  52                        PUSH EDX
0051b865  51                        PUSH ECX
0051b866  e8f1385d00                CALL 0x00aef15c
0051b86b  83c408                    ADD ESP,0x8
0051b86e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0051b875  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0051b878  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0051b87f  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0051b886  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0051b88a  83fa10                    CMP EDX,0x10
0051b88d  722e                      JC 0x0051b8bd
0051b88f  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0051b892  42                        INC EDX
0051b893  8bc1                      MOV EAX,ECX
0051b895  81fa00100000              CMP EDX,0x1000
0051b89b  7216                      JC 0x0051b8b3
0051b89d  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0051b8a0  83c223                    ADD EDX,0x23
0051b8a3  2bc1                      SUB EAX,ECX
0051b8a5  83c0fc                    ADD EAX,-0x4
0051b8a8  83f81f                    CMP EAX,0x1f
0051b8ab  7606                      JBE 0x0051b8b3
0051b8ad  ff159488b100              CALL dword ptr [0x00b18894]
0051b8b3  52                        PUSH EDX
0051b8b4  51                        PUSH ECX
0051b8b5  e8a2385d00                CALL 0x00aef15c
0051b8ba  83c408                    ADD ESP,0x8
0051b8bd  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051b8c4  7418                      JZ 0x0051b8de
0051b8c6  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0051b8ce  8bcf                      MOV ECX,EDI
0051b8d0  6a07                      PUSH 0x7
0051b8d2  6a00                      PUSH 0x0
0051b8d4  e887f51a00                CALL 0x006cae60
0051b8d9  0fb6d0                    MOVZX EDX,AL
0051b8dc  eb13                      JMP 0x0051b8f1
0051b8de  e87d361d00                CALL 0x006eef60
0051b8e3  33d2                      XOR EDX,EDX
0051b8e5  b932000000                MOV ECX,0x32
0051b8ea  f7f1                      DIV ECX
0051b8ec  f7da                      NEG EDX
0051b8ee  1bd2                      SBB EDX,EDX
0051b8f0  42                        INC EDX
0051b8f1  85d2                      TEST EDX,EDX
0051b8f3  0f84bb000000              JZ 0x0051b9b4
0051b8f9  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0051b8ff  25000a0001                AND EAX,0x1000a00
0051b904  83c800                    OR EAX,0x0
0051b907  0f85a7000000              JNZ 0x0051b9b4
0051b90d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051b914  751e                      JNZ 0x0051b934
0051b916  f30f1005c0aaba00          MOVSS XMM0,dword ptr [0x00baaac0]
0051b91e  0f2f85ecfeffff            COMISS XMM0,dword ptr [EBP + 0xfffffeec]
0051b925  770d                      JA 0x0051b934
0051b927  e834361d00                CALL 0x006eef60
0051b92c  a803                      TEST AL,0x3
0051b92e  0f8580000000              JNZ 0x0051b9b4
0051b934  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0051b938  7517                      JNZ 0x0051b951
0051b93a  8bcf                      MOV ECX,EDI
0051b93c  e8dfb21b00                CALL 0x006d6c20
0051b941  83f808                    CMP EAX,0x8
0051b944  7d6e                      JGE 0x0051b9b4
0051b946  8bc8                      MOV ECX,EAX
0051b948  e8c3361600                CALL 0x0067f010
0051b94d  85c0                      TEST EAX,EAX
0051b94f  7563                      JNZ 0x0051b9b4
0051b951  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051b958  751a                      JNZ 0x0051b974
0051b95a  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0051b962  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0051b96a  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0051b972  eb2e                      JMP 0x0051b9a2
0051b974  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0051b97c  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0051b982  50                        PUSH EAX
0051b983  8bcf                      MOV ECX,EDI
0051b985  e816cc1b00                CALL 0x006d85a0
0051b98a  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
0051b992  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0051b99a  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0051b9a2  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
0051b9aa  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0051b9b4  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
0051b9be  e953060000                JMP 0x0051c016
0051b9c3  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051b9ca  751a                      JNZ 0x0051b9e6
0051b9cc  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0051b9d4  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0051b9dc  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0051b9e4  eb48                      JMP 0x0051ba2e
0051b9e6  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0051b9ee  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0051b9f4  50                        PUSH EAX
0051b9f5  8bcf                      MOV ECX,EDI
0051b9f7  e8a4cb1b00                CALL 0x006d85a0
0051b9fc  f30f108df0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef0]
0051ba04  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
0051ba0b  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0051ba13  9f                        LAHF
0051ba14  f6c444                    TEST AH,0x44
0051ba17  7a0d                      JP 0x0051ba26
0051ba19  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0051ba20  9f                        LAHF
0051ba21  f6c444                    TEST AH,0x44
0051ba24  7b10                      JNP 0x0051ba36
0051ba26  f30f118f200f0000          MOVSS dword ptr [EDI + 0xf20],XMM1
0051ba2e  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
0051ba36  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0051ba39  85f6                      TEST ESI,ESI
0051ba3b  744e                      JZ 0x0051ba8b
0051ba3d  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0051ba41  8bc6                      MOV EAX,ESI
0051ba43  7202                      JC 0x0051ba47
0051ba45  8b06                      MOV EAX,dword ptr [ESI]
0051ba47  b9dcd2b100                MOV ECX,0xb1d2dc
0051ba4c  0f1f4000                  NOP dword ptr [EAX]
0051ba50  8a10                      MOV DL,byte ptr [EAX]
0051ba52  3a11                      CMP DL,byte ptr [ECX]
0051ba54  751a                      JNZ 0x0051ba70
0051ba56  84d2                      TEST DL,DL
0051ba58  7412                      JZ 0x0051ba6c
0051ba5a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0051ba5d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0051ba60  750e                      JNZ 0x0051ba70
0051ba62  83c002                    ADD EAX,0x2
0051ba65  83c102                    ADD ECX,0x2
0051ba68  84d2                      TEST DL,DL
0051ba6a  75e4                      JNZ 0x0051ba50
0051ba6c  33c0                      XOR EAX,EAX
0051ba6e  eb05                      JMP 0x0051ba75
0051ba70  1bc0                      SBB EAX,EAX
0051ba72  83c801                    OR EAX,0x1
0051ba75  85c0                      TEST EAX,EAX
0051ba77  7512                      JNZ 0x0051ba8b
0051ba79  384634                    CMP byte ptr [ESI + 0x34],AL
0051ba7c  742e                      JZ 0x0051baac
0051ba7e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0051ba84  8d7748                    LEA ESI,[EDI + 0x48]
0051ba87  7523                      JNZ 0x0051baac
0051ba89  eb03                      JMP 0x0051ba8e
0051ba8b  8d7748                    LEA ESI,[EDI + 0x48]
0051ba8e  6a01                      PUSH 0x1
0051ba90  68dcd2b100                PUSH 0xb1d2dc
0051ba95  8bce                      MOV ECX,ESI
0051ba97  e834ebeeff                CALL 0x0040a5d0
0051ba9c  84c0                      TEST AL,AL
0051ba9e  740c                      JZ 0x0051baac
0051baa0  8d4e30                    LEA ECX,[ESI + 0x30]
0051baa3  e808e7eeff                CALL 0x0040a1b0
0051baa8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0051baac  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051bab0  0f8456050000              JZ 0x0051c00c
0051bab6  68dcd2b100                PUSH 0xb1d2dc
0051babb  8d4f78                    LEA ECX,[EDI + 0x78]
0051babe  e80df3eeff                CALL 0x0040add0
0051bac3  84c0                      TEST AL,AL
0051bac5  0f8432050000              JZ 0x0051bffd
0051bacb  e890341d00                CALL 0x006eef60
0051bad0  660f6ec0                  MOVD XMM0,EAX
0051bad4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0051bad8  c1e81f                    SHR EAX,0x1f
0051badb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051bae4  660f5ac8                  CVTPD2PS XMM1,XMM0
0051bae8  f30f1005e0aaba00          MOVSS XMM0,dword ptr [0x00baaae0]
0051baf0  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0051baf8  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
0051bb00  f30f5cc1                  SUBSS XMM0,XMM1
0051bb04  0f2f85ecfeffff            COMISS XMM0,dword ptr [EBP + 0xfffffeec]
0051bb0b  763e                      JBE 0x0051bb4b
0051bb0d  837f3424                  CMP dword ptr [EDI + 0x34],0x24
0051bb11  7438                      JZ 0x0051bb4b
0051bb13  8bcf                      MOV ECX,EDI
0051bb15  c685fffeffff01            MOV byte ptr [EBP + 0xfffffeff],0x1
0051bb1c  e81f2d1a00                CALL 0x006be840
0051bb21  f30f101544b6c700          MOVSS XMM2,dword ptr [0x00c7b644]
0051bb29  f30f101d40b6c700          MOVSS XMM3,dword ptr [0x00c7b640]
0051bb31  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0051bb37  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0051bb3d  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
0051bb43  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
0051bb49  eb27                      JMP 0x0051bb72
0051bb4b  f30f101d40b6c700          MOVSS XMM3,dword ptr [0x00c7b640]
0051bb53  f30f101544b6c700          MOVSS XMM2,dword ptr [0x00c7b644]
0051bb5b  c685fffeffff00            MOV byte ptr [EBP + 0xfffffeff],0x0
0051bb62  f30f119de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM3
0051bb6a  f30f1195ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM2
0051bb72  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051bb79  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0051bb7f  f30f1001                  MOVSS XMM0,dword ptr [ECX]
0051bb83  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0051bb8b  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0051bb90  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0051bb98  7465                      JZ 0x0051bbff
0051bb9a  f30f108f200f0000          MOVSS XMM1,dword ptr [EDI + 0xf20]
0051bba2  0f2ecb                    UCOMISS XMM1,XMM3
0051bba5  9f                        LAHF
0051bba6  f6c444                    TEST AH,0x44
0051bba9  7a1c                      JP 0x0051bbc7
0051bbab  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
0051bbb3  0f2ec2                    UCOMISS XMM0,XMM2
0051bbb6  9f                        LAHF
0051bbb7  f6c444                    TEST AH,0x44
0051bbba  7a0b                      JP 0x0051bbc7
0051bbbc  f30f1009                  MOVSS XMM1,dword ptr [ECX]
0051bbc0  f30f105104                MOVSS XMM2,dword ptr [ECX + 0x4]
0051bbc5  eb28                      JMP 0x0051bbef
0051bbc7  f30f1097240f0000          MOVSS XMM2,dword ptr [EDI + 0xf24]
0051bbcf  f30f591544aaba00          MULSS XMM2,dword ptr [0x00baaa44]
0051bbd7  f30f590d44aaba00          MULSS XMM1,dword ptr [0x00baaa44]
0051bbdf  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
0051bbe7  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0051bbef  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
0051bbf7  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
0051bbff  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0051bc02  51                        PUSH ECX
0051bc03  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051bc0a  6a00                      PUSH 0x0
0051bc0c  6a02                      PUSH 0x2
0051bc0e  51                        PUSH ECX
0051bc0f  8bcf                      MOV ECX,EDI
0051bc11  85c0                      TEST EAX,EAX
0051bc13  7546                      JNZ 0x0051bc5b
0051bc15  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051bc1c  68b2000000                PUSH 0xb2
0051bc21  e87aaf1b00                CALL 0x006d6ba0
0051bc26  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0051bc2c  e8ff32f2ff                CALL 0x0043ef30
0051bc31  8bf0                      MOV ESI,EAX
0051bc33  e828331d00                CALL 0x006eef60
0051bc38  56                        PUSH ESI
0051bc39  51                        PUSH ECX
0051bc3a  83e001                    AND EAX,0x1
0051bc3d  c7042400002041            MOV dword ptr [ESP],0x41200000
0051bc44  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
0051bc4a  83c003                    ADD EAX,0x3
0051bc4d  51                        PUSH ECX
0051bc4e  50                        PUSH EAX
0051bc4f  8bcf                      MOV ECX,EDI
0051bc51  e87a111b00                CALL 0x006ccdd0
0051bc56  e9a2030000                JMP 0x0051bffd
0051bc5b  83f801                    CMP EAX,0x1
0051bc5e  0f8556010000              JNZ 0x0051bdba
0051bc64  c704243333333f            MOV dword ptr [ESP],0x3f333333
0051bc6b  68d5000000                PUSH 0xd5
0051bc70  e82baf1b00                CALL 0x006d6ba0
0051bc75  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0051bc7b  e8b032f2ff                CALL 0x0043ef30
0051bc80  50                        PUSH EAX
0051bc81  51                        PUSH ECX
0051bc82  c7042400002041            MOV dword ptr [ESP],0x41200000
0051bc89  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0051bc8f  50                        PUSH EAX
0051bc90  6a01                      PUSH 0x1
0051bc92  8bcf                      MOV ECX,EDI
0051bc94  e837111b00                CALL 0x006ccdd0
0051bc99  8bf0                      MOV ESI,EAX
0051bc9b  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
0051bca3  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
0051bcab  f30f590de4a2ba00          MULSS XMM1,dword ptr [0x00baa2e4]
0051bcb3  838e3804000002            OR dword ptr [ESI + 0x438],0x2
0051bcba  80bdfffeffff00            CMP byte ptr [EBP + 0xfffffeff],0x0
0051bcc1  f30f5915e4a2ba00          MULSS XMM2,dword ptr [0x00baa2e4]
0051bcc9  8b8e3c040000              MOV ECX,dword ptr [ESI + 0x43c]
0051bccf  898e3c040000              MOV dword ptr [ESI + 0x43c],ECX
0051bcd5  c78620040000cdcccc3f      MOV dword ptr [ESI + 0x420],0x3fcccccd
0051bcdf  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
0051bce7  f30f1195ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM2
0051bcef  7445                      JZ 0x0051bd36
0051bcf1  e86a321d00                CALL 0x006eef60
0051bcf6  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
0051bcfe  f30f1095ecfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeec]
0051bd06  660f6ec0                  MOVD XMM0,EAX
0051bd0a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0051bd0e  c1e81f                    SHR EAX,0x1f
0051bd11  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051bd1a  660f5ac0                  CVTPD2PS XMM0,XMM0
0051bd1e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0051bd26  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
0051bd2e  f30f59c8                  MULSS XMM1,XMM0
0051bd32  f30f59d0                  MULSS XMM2,XMM0
0051bd36  f30f108618040000          MOVSS XMM0,dword ptr [ESI + 0x418]
0051bd3e  8d4da8                    LEA ECX,[EBP + -0x58]
0051bd41  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
0051bd49  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
0051bd51  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
0051bd59  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
0051bd61  f30f108614040000          MOVSS XMM0,dword ptr [ESI + 0x414]
0051bd69  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0051bd71  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
0051bd79  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
0051bd81  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0051bd89  0f28d8                    MOVAPS XMM3,XMM0
0051bd8c  0f28d0                    MOVAPS XMM2,XMM0
0051bd8f  0f28c8                    MOVAPS XMM1,XMM0
0051bd92  e8e99cf1ff                CALL 0x00435a80
0051bd97  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
0051bd9e  6a01                      PUSH 0x1
0051bda0  6a00                      PUSH 0x0
0051bda2  68ff000000                PUSH 0xff
0051bda7  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
0051bdab  8b06                      MOV EAX,dword ptr [ESI]
0051bdad  6aff                      PUSH -0x1
0051bdaf  51                        PUSH ECX
0051bdb0  8bce                      MOV ECX,ESI
0051bdb2  ff503c                    CALL dword ptr [EAX + 0x3c]
0051bdb5  e943020000                JMP 0x0051bffd
0051bdba  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051bdc1  68b5000000                PUSH 0xb5
0051bdc6  e8d5ad1b00                CALL 0x006d6ba0
0051bdcb  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051bdd2  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0051bdd8  7459                      JZ 0x0051be33
0051bdda  f30f1087200f0000          MOVSS XMM0,dword ptr [EDI + 0xf20]
0051bde2  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
0051bdea  6a00                      PUSH 0x0
0051bdec  6a00                      PUSH 0x0
0051bdee  6a00                      PUSH 0x0
0051bdf0  f30f5801                  ADDSS XMM0,dword ptr [ECX]
0051bdf4  51                        PUSH ECX
0051bdf5  c7042400000000            MOV dword ptr [ESP],0x0
0051bdfc  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0051be04  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
0051be0c  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
0051be14  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
0051be19  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
0051be1f  51                        PUSH ECX
0051be20  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
0051be26  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0051be2e  e990000000                JMP 0x0051bec3
0051be33  80bdfffeffff00            CMP byte ptr [EBP + 0xfffffeff],0x0
0051be3a  7472                      JZ 0x0051beae
0051be3c  a17816c700                MOV EAX,[0x00c71678]
0051be41  8bcf                      MOV ECX,EDI
0051be43  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0051be49  e8f2291a00                CALL 0x006be840
0051be4e  6a00                      PUSH 0x0
0051be50  6a00                      PUSH 0x0
0051be52  6a00                      PUSH 0x0
0051be54  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0051be5c  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
0051be64  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0051be6a  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0051be72  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
0051be7a  51                        PUSH ECX
0051be7b  c7042400008c42            MOV dword ptr [ESP],0x428c0000
0051be82  8bce                      MOV ECX,ESI
0051be84  50                        PUSH EAX
0051be85  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0051be8d  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0051be93  50                        PUSH EAX
0051be94  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
0051be9c  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
0051bea4  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
0051beac  eb21                      JMP 0x0051becf
0051beae  6a00                      PUSH 0x0
0051beb0  6a00                      PUSH 0x0
0051beb2  6a00                      PUSH 0x0
0051beb4  51                        PUSH ECX
0051beb5  c704240000c842            MOV dword ptr [ESP],0x42c80000
0051bebc  51                        PUSH ECX
0051bebd  8d8d7cfeffff              LEA ECX,[EBP + 0xfffffe7c]
0051bec3  a17816c700                MOV EAX,[0x00c71678]
0051bec8  51                        PUSH ECX
0051bec9  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0051becf  e84c762f00                CALL 0x00813520
0051bed4  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0051bed8  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0051bee0  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0051bee5  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0051beed  e86e301d00                CALL 0x006eef60
0051bef2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051bef8  6a00                      PUSH 0x0
0051befa  68acd6c500                PUSH 0xc5d6ac
0051beff  68dcd5c500                PUSH 0xc5d5dc
0051bf04  6a00                      PUSH 0x0
0051bf06  50                        PUSH EAX
0051bf07  6a00                      PUSH 0x0
0051bf09  57                        PUSH EDI
0051bf0a  6840b6c700                PUSH 0xc7b640
0051bf0f  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
0051bf15  50                        PUSH EAX
0051bf16  6a00                      PUSH 0x0
0051bf18  6a55                      PUSH 0x55
0051bf1a  e801ccf0ff                CALL 0x00428b20
0051bf1f  50                        PUSH EAX
0051bf20  e88c495d00                CALL 0x00af08b1
0051bf25  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051bf2b  83c414                    ADD ESP,0x14
0051bf2e  8bf8                      MOV EDI,EAX
0051bf30  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
0051bf36  8bb100830100              MOV ESI,dword ptr [ECX + 0x18300]
0051bf3c  8bce                      MOV ECX,ESI
0051bf3e  50                        PUSH EAX
0051bf3f  e84c6d2f00                CALL 0x00812c90
0051bf44  6884030000                PUSH 0x384
0051bf49  50                        PUSH EAX
0051bf4a  8bce                      MOV ECX,ESI
0051bf4c  e88fa6f3ff                CALL 0x004565e0
0051bf51  f30f10a73c030000          MOVSS XMM4,dword ptr [EDI + 0x33c]
0051bf59  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
0051bf5f  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
0051bf67  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
0051bf6f  f30f11a734030000          MOVSS dword ptr [EDI + 0x334],XMM4
0051bf77  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
0051bf7f  f30f119f38030000          MOVSS dword ptr [EDI + 0x338],XMM3
0051bf87  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0051bf8f  f30f11973c030000          MOVSS dword ptr [EDI + 0x33c],XMM2
0051bf97  f30f5ce2                  SUBSS XMM4,XMM2
0051bf9b  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0051bfa3  f30f5cd9                  SUBSS XMM3,XMM1
0051bfa7  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
0051bfaf  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
0051bfb7  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0051bfc1  f30f5925bca0ba00          MULSS XMM4,dword ptr [0x00baa0bc]
0051bfc9  c787bc0b0000000000c1      MOV dword ptr [EDI + 0xbbc],0xc1000000
0051bfd3  f30f591dbca0ba00          MULSS XMM3,dword ptr [0x00baa0bc]
0051bfdb  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
0051bfe3  f30f11a7b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM4
0051bfeb  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0051bff3  f30f119fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM3
0051bffb  8bf8                      MOV EDI,EAX
0051bffd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051c001  7409                      JZ 0x0051c00c
0051c003  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0051c00a  750a                      JNZ 0x0051c016
0051c00c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0051c016  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0051c019  64890d00000000            MOV dword ptr FS:[0x0],ECX
0051c020  59                        POP ECX
0051c021  5f                        POP EDI
0051c022  5e                        POP ESI
0051c023  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0051c026  33cd                      XOR ECX,EBP
0051c028  e8fe305d00                CALL 0x00aef12b
0051c02d  8be5                      MOV ESP,EBP
0051c02f  5d                        POP EBP
0051c030  8be3                      MOV ESP,EBX
0051c032  5b                        POP EBX
0051c033  c3                        RET
