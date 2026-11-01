; J460 NPC AI 0x00534860 AI_00534860
; types=217,870
; identities=217.0.0,217.1.0,217.2.0,217.3.0,870.0.0
; entry=00534860
00534860  55                        PUSH EBP
00534861  8bec                      MOV EBP,ESP
00534863  81ec4c010000              SUB ESP,0x14c
00534869  a1b493bf00                MOV EAX,[0x00bf93b4]
0053486e  33c5                      XOR EAX,EBP
00534870  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00534873  53                        PUSH EBX
00534874  8bd9                      MOV EBX,ECX
00534876  56                        PUSH ESI
00534877  57                        PUSH EDI
00534878  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
0053487f  0f85f8000000              JNZ 0x0053497d
00534885  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053488b  6a01                      PUSH 0x1
0053488d  81c1a8ba0100              ADD ECX,0x1baa8
00534893  51                        PUSH ECX
00534894  6840020000                PUSH 0x240
00534899  e8e2974800                CALL 0x009be080
0053489e  85c0                      TEST EAX,EAX
005348a0  751e                      JNZ 0x005348c0
005348a2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005348a8  68a3000000                PUSH 0xa3
005348ad  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
005348b3  e8f876f1ff                CALL 0x0044bfb0
005348b8  84c0                      TEST AL,AL
005348ba  0f84bd000000              JZ 0x0053497d
005348c0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005348c6  6a00                      PUSH 0x0
005348c8  ffb3ec030000              PUSH dword ptr [EBX + 0x3ec]
005348ce  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
005348d4  6840020000                PUSH 0x240
005348d9  e862984800                CALL 0x009be140
005348de  8bf0                      MOV ESI,EAX
005348e0  85f6                      TEST ESI,ESI
005348e2  7523                      JNZ 0x00534907
005348e4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005348ea  50                        PUSH EAX
005348eb  ffb3ec030000              PUSH dword ptr [EBX + 0x3ec]
005348f1  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
005348f7  68a3000000                PUSH 0xa3
005348fc  e8df9a4800                CALL 0x009be3e0
00534901  8bf0                      MOV ESI,EAX
00534903  85f6                      TEST ESI,ESI
00534905  7476                      JZ 0x0053497d
00534907  8b03                      MOV EAX,dword ptr [EBX]
00534909  8bcb                      MOV ECX,EBX
0053490b  c7838801000000000000      MOV dword ptr [EBX + 0x188],0x0
00534915  ff5028                    CALL dword ptr [EAX + 0x28]
00534918  33c9                      XOR ECX,ECX
0053491a  817b28d9000000            CMP dword ptr [EBX + 0x28],0xd9
00534921  753a                      JNZ 0x0053495d
00534923  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
00534926  83f801                    CMP EAX,0x1
00534929  742d                      JZ 0x00534958
0053492b  83f803                    CMP EAX,0x3
0053492e  7428                      JZ 0x00534958
00534930  83f802                    CMP EAX,0x2
00534933  7528                      JNZ 0x0053495d
00534935  8d4812                    LEA ECX,[EAX + 0x12]
00534938  56                        PUSH ESI
00534939  8d933c030000              LEA EDX,[EBX + 0x33c]
0053493f  e8bc461000                CALL 0x00639000
00534944  83c404                    ADD ESP,0x4
00534947  5f                        POP EDI
00534948  5e                        POP ESI
00534949  5b                        POP EBX
0053494a  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0053494d  33cd                      XOR ECX,EBP
0053494f  e8d7a75b00                CALL 0x00aef12b
00534954  8be5                      MOV ESP,EBP
00534956  5d                        POP EBP
00534957  c3                        RET
00534958  b902000000                MOV ECX,0x2
0053495d  56                        PUSH ESI
0053495e  8d933c030000              LEA EDX,[EBX + 0x33c]
00534964  e897461000                CALL 0x00639000
00534969  83c404                    ADD ESP,0x4
0053496c  5f                        POP EDI
0053496d  5e                        POP ESI
0053496e  5b                        POP EBX
0053496f  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00534972  33cd                      XOR ECX,EBP
00534974  e8b2a75b00                CALL 0x00aef12b
00534979  8be5                      MOV ESP,EBP
0053497b  5d                        POP EBP
0053497c  c3                        RET
0053497d  8b8b640b0000              MOV ECX,dword ptr [EBX + 0xb64]
00534983  85c9                      TEST ECX,ECX
00534985  0f85cd000000              JNZ 0x00534a58
0053498b  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
00534992  8d8be4010000              LEA ECX,[EBX + 0x1e4]
00534998  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
0053499e  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
005349a8  c78528ffffff8382823e      MOV dword ptr [EBP + 0xffffff28],0x3e828283
005349b2  0f57c0                    XORPS XMM0,XMM0
005349b5  c7852cffffffa5a4243e      MOV dword ptr [EBP + 0xffffff2c],0x3e24a4a5
005349bf  c78530ffffff8d8c0c3e      MOV dword ptr [EBP + 0xffffff30],0x3e0c8c8d
005349c9  3bc8                      CMP ECX,EAX
005349cb  741d                      JZ 0x005349ea
005349cd  8b8530ffffff              MOV EAX,dword ptr [EBP + 0xffffff30]
005349d3  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
005349d7  f30f7e8528ffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff28]
005349df  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
005349e4  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
005349e7  894128                    MOV dword ptr [ECX + 0x28],EAX
005349ea  837b2c02                  CMP dword ptr [EBX + 0x2c],0x2
005349ee  0f857b080000              JNZ 0x0053526f
005349f4  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
005349fb  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
00534a01  c785fcfeffff9a99193f      MOV dword ptr [EBP + 0xfffffefc],0x3f19999a
00534a0b  0f57c0                    XORPS XMM0,XMM0
00534a0e  c78500ffffffcdcccc3e      MOV dword ptr [EBP + 0xffffff00],0x3ecccccd
00534a18  c78504ffffff00000000      MOV dword ptr [EBP + 0xffffff04],0x0
00534a22  3bc8                      CMP ECX,EAX
00534a24  0f8445080000              JZ 0x0053526f
00534a2a  8b8504ffffff              MOV EAX,dword ptr [EBP + 0xffffff04]
00534a30  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00534a34  f30f7e85fcfeffff          MOVQ XMM0,qword ptr [EBP + 0xfffffefc]
00534a3c  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00534a41  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
00534a44  894128                    MOV dword ptr [ECX + 0x28],EAX
00534a47  5f                        POP EDI
00534a48  5e                        POP ESI
00534a49  5b                        POP EBX
00534a4a  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00534a4d  33cd                      XOR ECX,EBP
00534a4f  e8d7a65b00                CALL 0x00aef12b
00534a54  8be5                      MOV ESP,EBP
00534a56  5d                        POP EBP
00534a57  c3                        RET
00534a58  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
00534a5b  3d66030000                CMP EAX,0x366
00534a60  740d                      JZ 0x00534a6f
00534a62  3dd9000000                CMP EAX,0xd9
00534a67  7527                      JNZ 0x00534a90
00534a69  837b2c03                  CMP dword ptr [EBX + 0x2c],0x3
00534a6d  7521                      JNZ 0x00534a90
00534a6f  a17816c700                MOV EAX,[0x00c71678]
00534a74  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00534a7a  f30f108040720000          MOVSS XMM0,dword ptr [EAX + 0x7240]
00534a82  b806000000                MOV EAX,0x6
00534a87  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00534a8e  7705                      JA 0x00534a95
00534a90  b805000000                MOV EAX,0x5
00534a95  898384010000              MOV dword ptr [EBX + 0x184],EAX
00534a9b  bf0a000000                MOV EDI,0xa
00534aa0  83f903                    CMP ECX,0x3
00534aa3  0f84d6000000              JZ 0x00534b7f
00534aa9  83f910                    CMP ECX,0x10
00534aac  0f84cd000000              JZ 0x00534b7f
00534ab2  83f904                    CMP ECX,0x4
00534ab5  0f8587050000              JNZ 0x00535042
00534abb  6a00                      PUSH 0x0
00534abd  68fcd6b100                PUSH 0xb1d6fc
00534ac2  8d4b48                    LEA ECX,[EBX + 0x48]
00534ac5  e8b658edff                CALL 0x0040a380
00534aca  817b2866030000            CMP dword ptr [EBX + 0x28],0x366
00534ad1  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00534ad9  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
00534ae1  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00534ae9  7558                      JNZ 0x00534b43
00534aeb  8d4b48                    LEA ECX,[EBX + 0x48]
00534aee  e88d5cedff                CALL 0x0040a780
00534af3  3bc7                      CMP EAX,EDI
00534af5  752a                      JNZ 0x00534b21
00534af7  e864a41b00                CALL 0x006eef60
00534afc  33d2                      XOR EDX,EDX
00534afe  b903000000                MOV ECX,0x3
00534b03  f7f1                      DIV ECX
00534b05  85d2                      TEST EDX,EDX
00534b07  7409                      JZ 0x00534b12
00534b09  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00534b10  740f                      JZ 0x00534b21
00534b12  c783640b000010000000      MOV dword ptr [EBX + 0xb64],0x10
00534b1c  e921050000                JMP 0x00535042
00534b21  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
00534b25  740d                      JZ 0x00534b34
00534b27  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
00534b2e  0f850e050000              JNZ 0x00535042
00534b34  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
00534b3e  e9ff040000                JMP 0x00535042
00534b43  f30f108b64030000          MOVSS XMM1,dword ptr [EBX + 0x364]
00534b4b  f30f108360030000          MOVSS XMM0,dword ptr [EBX + 0x360]
00534b53  f30f59c9                  MULSS XMM1,XMM1
00534b57  f30f59c0                  MULSS XMM0,XMM0
00534b5b  f30f58c1                  ADDSS XMM0,XMM1
00534b5f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00534b67  0f2fc8                    COMISS XMM1,XMM0
00534b6a  0f86d2040000              JBE 0x00535042
00534b70  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
00534b7a  e9c3040000                JMP 0x00535042
00534b7f  6a00                      PUSH 0x0
00534b81  6854bcb100                PUSH 0xb1bc54
00534b86  8d4b48                    LEA ECX,[EBX + 0x48]
00534b89  e8f257edff                CALL 0x0040a380
00534b8e  83bb640b000010            CMP dword ptr [EBX + 0xb64],0x10
00534b95  7465                      JZ 0x00534bfc
00534b97  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00534b9e  7446                      JZ 0x00534be6
00534ba0  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00534ba8  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00534bae  50                        PUSH EAX
00534baf  8bcb                      MOV ECX,EBX
00534bb1  e81a371a00                CALL 0x006d82d0
00534bb6  8bc8                      MOV ECX,EAX
00534bb8  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00534bbc  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00534bc3  9f                        LAHF
00534bc4  f6c444                    TEST AH,0x44
00534bc7  7a16                      JP 0x00534bdf
00534bc9  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00534bce  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00534bd5  9f                        LAHF
00534bd6  f6c444                    TEST AH,0x44
00534bd9  7a04                      JP 0x00534bdf
00534bdb  33d2                      XOR EDX,EDX
00534bdd  eb15                      JMP 0x00534bf4
00534bdf  ba01000000                MOV EDX,0x1
00534be4  eb0e                      JMP 0x00534bf4
00534be6  e875a31b00                CALL 0x006eef60
00534beb  33d2                      XOR EDX,EDX
00534bed  f7f7                      DIV EDI
00534bef  f7da                      NEG EDX
00534bf1  1bd2                      SBB EDX,EDX
00534bf3  42                        INC EDX
00534bf4  85d2                      TEST EDX,EDX
00534bf6  0f841b040000              JZ 0x00535017
00534bfc  8b8368010000              MOV EAX,dword ptr [EBX + 0x168]
00534c02  2500080001                AND EAX,0x1000800
00534c07  c783640b000004000000      MOV dword ptr [EBX + 0xb64],0x4
00534c11  83c800                    OR EAX,0x0
00534c14  0f848a010000              JZ 0x00534da4
00534c1a  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00534c21  0f857d010000              JNZ 0x00534da4
00534c27  817b2866030000            CMP dword ptr [EBX + 0x28],0x366
00534c2e  8bcb                      MOV ECX,EBX
00534c30  0f85d0000000              JNZ 0x00534d06
00534c36  e8059c1800                CALL 0x006be840
00534c3b  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
00534c43  8d8d48ffffff              LEA ECX,[EBP + 0xffffff48]
00534c49  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
00534c51  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
00534c59  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
00534c61  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
00534c69  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00534c6f  50                        PUSH EAX
00534c70  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00534c78  e8b3b34d00                CALL 0x00a10030
00534c7d  8bf0                      MOV ESI,EAX
00534c7f  e8dca21b00                CALL 0x006eef60
00534c84  660f6ec0                  MOVD XMM0,EAX
00534c88  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00534c8c  c1e81f                    SHR EAX,0x1f
00534c8f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00534c98  660f5ac8                  CVTPD2PS XMM1,XMM0
00534c9c  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00534ca4  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00534cac  f30f580d84a7ba00          ADDSS XMM1,dword ptr [0x00baa784]
00534cb4  0f28d1                    MOVAPS XMM2,XMM1
00534cb7  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
00534cbc  f30f5916                  MULSS XMM2,dword ptr [ESI]
00534cc0  f30f109b6c030000          MOVSS XMM3,dword ptr [EBX + 0x36c]
00534cc8  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
00534ccf  9f                        LAHF
00534cd0  f6c444                    TEST AH,0x44
00534cd3  0f8b3e030000              JNP 0x00535017
00534cd9  f30f10839c030000          MOVSS XMM0,dword ptr [EBX + 0x39c]
00534ce1  f30f59d0                  MULSS XMM2,XMM0
00534ce5  f30f59c8                  MULSS XMM1,XMM0
00534ce9  f30f5ed3                  DIVSS XMM2,XMM3
00534ced  f30f5ecb                  DIVSS XMM1,XMM3
00534cf1  f30f589360030000          ADDSS XMM2,dword ptr [EBX + 0x360]
00534cf9  f30f119360030000          MOVSS dword ptr [EBX + 0x360],XMM2
00534d01  e901030000                JMP 0x00535007
00534d06  e8359b1800                CALL 0x006be840
00534d0b  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
00534d13  8d8d48ffffff              LEA ECX,[EBP + 0xffffff48]
00534d19  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
00534d21  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
00534d29  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
00534d31  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
00534d39  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00534d3f  50                        PUSH EAX
00534d40  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00534d48  e8e3b24d00                CALL 0x00a10030
00534d4d  8bf0                      MOV ESI,EAX
00534d4f  e80ca21b00                CALL 0x006eef60
00534d54  660f6ec0                  MOVD XMM0,EAX
00534d58  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00534d5c  c1e81f                    SHR EAX,0x1f
00534d5f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00534d68  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
00534d6b  660f5ad0                  CVTPD2PS XMM2,XMM0
00534d6f  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00534d77  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
00534d7f  f30f581584a7ba00          ADDSS XMM2,dword ptr [0x00baa784]
00534d87  0f28da                    MOVAPS XMM3,XMM2
00534d8a  f30f595604                MULSS XMM2,dword ptr [ESI + 0x4]
00534d8f  f30f591e                  MULSS XMM3,dword ptr [ESI]
00534d93  83f801                    CMP EAX,0x1
00534d96  0f841d020000              JZ 0x00534fb9
00534d9c  83f802                    CMP EAX,0x2
00534d9f  e913020000                JMP 0x00534fb7
00534da4  817b2866030000            CMP dword ptr [EBX + 0x28],0x366
00534dab  0f8556010000              JNZ 0x00534f07
00534db1  e8aaa11b00                CALL 0x006eef60
00534db6  33d2                      XOR EDX,EDX
00534db8  b903000000                MOV ECX,0x3
00534dbd  f7f1                      DIV ECX
00534dbf  85d2                      TEST EDX,EDX
00534dc1  754b                      JNZ 0x00534e0e
00534dc3  8bcb                      MOV ECX,EBX
00534dc5  e8769a1800                CALL 0x006be840
00534dca  8d8d48ffffff              LEA ECX,[EBP + 0xffffff48]
00534dd0  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00534dd8  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00534de0  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00534de6  f30f5c833c030000          SUBSS XMM0,dword ptr [EBX + 0x33c]
00534dee  f30f5c8b40030000          SUBSS XMM1,dword ptr [EBX + 0x340]
00534df6  50                        PUSH EAX
00534df7  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
00534dff  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
00534e07  e824b24d00                CALL 0x00a10030
00534e0c  eb0f                      JMP 0x00534e1d
00534e0e  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00534e14  50                        PUSH EAX
00534e15  e856a21400                CALL 0x0067f070
00534e1a  83c404                    ADD ESP,0x4
00534e1d  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00534e24  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00534e28  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00534e30  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00534e35  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00534e3d  742a                      JZ 0x00534e69
00534e3f  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00534e45  0f57d2                    XORPS XMM2,XMM2
00534e48  50                        PUSH EAX
00534e49  8bcb                      MOV ECX,EBX
00534e4b  e880341a00                CALL 0x006d82d0
00534e50  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00534e54  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00534e5c  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00534e61  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00534e69  e8f2a01b00                CALL 0x006eef60
00534e6e  660f6ec0                  MOVD XMM0,EAX
00534e72  c1e81f                    SHR EAX,0x1f
00534e75  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00534e79  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00534e82  a17816c700                MOV EAX,[0x00c71678]
00534e87  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00534e8d  660f5ac8                  CVTPD2PS XMM1,XMM0
00534e91  f30f10a060740000          MOVSS XMM4,dword ptr [EAX + 0x7460]
00534e99  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00534ea1  0f2e2540b6c700            UCOMISS XMM4,dword ptr [0x00c7b640]
00534ea8  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00534eb0  f30f109864740000          MOVSS XMM3,dword ptr [EAX + 0x7464]
00534eb8  9f                        LAHF
00534eb9  f30f580d84a7ba00          ADDSS XMM1,dword ptr [0x00baa784]
00534ec1  0f28d1                    MOVAPS XMM2,XMM1
00534ec4  f30f598d4cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff4c]
00534ecc  f30f599544ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff44]
00534ed4  f6c444                    TEST AH,0x44
00534ed7  7a11                      JP 0x00534eea
00534ed9  0f2e1d44b6c700            UCOMISS XMM3,dword ptr [0x00c7b644]
00534ee0  9f                        LAHF
00534ee1  f6c444                    TEST AH,0x44
00534ee4  0f8bd6fdffff              JNP 0x00534cc0
00534eea  f30f5925e8a7ba00          MULSS XMM4,dword ptr [0x00baa7e8]
00534ef2  f30f591de8a7ba00          MULSS XMM3,dword ptr [0x00baa7e8]
00534efa  f30f5cd4                  SUBSS XMM2,XMM4
00534efe  f30f5ccb                  SUBSS XMM1,XMM3
00534f02  e9b9fdffff                JMP 0x00534cc0
00534f07  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
00534f0d  50                        PUSH EAX
00534f0e  e85da11400                CALL 0x0067f070
00534f13  83c404                    ADD ESP,0x4
00534f16  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00534f1d  742c                      JZ 0x00534f4b
00534f1f  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
00534f25  0f57d2                    XORPS XMM2,XMM2
00534f28  50                        PUSH EAX
00534f29  8bcb                      MOV ECX,EBX
00534f2b  e8a0331a00                CALL 0x006d82d0
00534f30  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00534f34  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00534f3c  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00534f41  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00534f49  eb20                      JMP 0x00534f6b
00534f4b  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
00534f53  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00534f5b  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
00534f63  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00534f6b  e8f09f1b00                CALL 0x006eef60
00534f70  660f6ec0                  MOVD XMM0,EAX
00534f74  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00534f78  c1e81f                    SHR EAX,0x1f
00534f7b  837b2c01                  CMP dword ptr [EBX + 0x2c],0x1
00534f7f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00534f88  660f5ad0                  CVTPD2PS XMM2,XMM0
00534f8c  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00534f94  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
00534f9c  f30f581584a7ba00          ADDSS XMM2,dword ptr [0x00baa784]
00534fa4  0f28da                    MOVAPS XMM3,XMM2
00534fa7  f30f599544ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff44]
00534faf  f30f599d4cffffff          MULSS XMM3,dword ptr [EBP + 0xffffff4c]
00534fb7  750e                      JNZ 0x00534fc7
00534fb9  0f28c3                    MOVAPS XMM0,XMM3
00534fbc  f30f58d8                  ADDSS XMM3,XMM0
00534fc0  0f28c2                    MOVAPS XMM0,XMM2
00534fc3  f30f58d0                  ADDSS XMM2,XMM0
00534fc7  f30f10a36c030000          MOVSS XMM4,dword ptr [EBX + 0x36c]
00534fcf  0f2e25e49fba00            UCOMISS XMM4,dword ptr [0x00ba9fe4]
00534fd6  9f                        LAHF
00534fd7  f6c444                    TEST AH,0x44
00534fda  7b3b                      JNP 0x00535017
00534fdc  f30f108b9c030000          MOVSS XMM1,dword ptr [EBX + 0x39c]
00534fe4  0f28c1                    MOVAPS XMM0,XMM1
00534fe7  f30f59ca                  MULSS XMM1,XMM2
00534feb  f30f59c3                  MULSS XMM0,XMM3
00534fef  f30f5ecc                  DIVSS XMM1,XMM4
00534ff3  f30f5ec4                  DIVSS XMM0,XMM4
00534ff7  f30f588360030000          ADDSS XMM0,dword ptr [EBX + 0x360]
00534fff  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
00535007  f30f588b64030000          ADDSS XMM1,dword ptr [EBX + 0x364]
0053500f  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
00535017  817b2866030000            CMP dword ptr [EBX + 0x28],0x366
0053501e  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
00535026  750a                      JNZ 0x00535032
00535028  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00535030  eb08                      JMP 0x0053503a
00535032  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0053503a  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00535042  0f57c0                    XORPS XMM0,XMM0
00535045  0f2f8360030000            COMISS XMM0,dword ptr [EBX + 0x360]
0053504c  0f97c0                    SETA AL
0053504f  888348010000              MOV byte ptr [EBX + 0x148],AL
00535055  e8069f1b00                CALL 0x006eef60
0053505a  33d2                      XOR EDX,EDX
0053505c  f7f7                      DIV EDI
0053505e  85d2                      TEST EDX,EDX
00535060  755b                      JNZ 0x005350bd
00535062  e8f99e1b00                CALL 0x006eef60
00535067  51                        PUSH ECX
00535068  8bcb                      MOV ECX,EBX
0053506a  660f6ec0                  MOVD XMM0,EAX
0053506e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00535072  c1e81f                    SHR EAX,0x1f
00535075  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053507e  660f5ac0                  CVTPD2PS XMM0,XMM0
00535082  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053508a  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00535092  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0053509a  f30f110424                MOVSS dword ptr [ESP],XMM0
0053509f  e82c141800                CALL 0x006b64d0
005350a4  6a01                      PUSH 0x1
005350a6  6a00                      PUSH 0x0
005350a8  68ff000000                PUSH 0xff
005350ad  8b10                      MOV EDX,dword ptr [EAX]
005350af  8d8be4010000              LEA ECX,[EBX + 0x1e4]
005350b5  6aff                      PUSH -0x1
005350b7  51                        PUSH ECX
005350b8  8bc8                      MOV ECX,EAX
005350ba  ff523c                    CALL dword ptr [EDX + 0x3c]
005350bd  f30f104314                MOVSS XMM0,dword ptr [EBX + 0x14]
005350c2  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005350c9  7626                      JBE 0x005350f1
005350cb  e8909e1b00                CALL 0x006eef60
005350d0  a801                      TEST AL,0x1
005350d2  751d                      JNZ 0x005350f1
005350d4  51                        PUSH ECX
005350d5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005350dc  6a00                      PUSH 0x0
005350de  6a0f                      PUSH 0xf
005350e0  51                        PUSH ECX
005350e1  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
005350e8  8bcb                      MOV ECX,EBX
005350ea  6a3c                      PUSH 0x3c
005350ec  e8af1a1a00                CALL 0x006d6ba0
005350f1  817b28d9000000            CMP dword ptr [EBX + 0x28],0xd9
005350f8  7532                      JNZ 0x0053512c
005350fa  837b2c03                  CMP dword ptr [EBX + 0x2c],0x3
005350fe  752c                      JNZ 0x0053512c
00535100  8b831c0f0000              MOV EAX,dword ptr [EBX + 0xf1c]
00535106  83f8ff                    CMP EAX,-0x1
00535109  7421                      JZ 0x0053512c
0053510b  51                        PUSH ECX
0053510c  53                        PUSH EBX
0053510d  50                        PUSH EAX
0053510e  6a09                      PUSH 0x9
00535110  e8fb0f4200                CALL 0x00956110
00535115  84c0                      TEST AL,AL
00535117  7413                      JZ 0x0053512c
00535119  8d8db4feffff              LEA ECX,[EBP + 0xfffffeb4]
0053511f  e84c0bf0ff                CALL 0x00435c70
00535124  8b13                      MOV EDX,dword ptr [EBX]
00535126  8bcb                      MOV ECX,EBX
00535128  50                        PUSH EAX
00535129  ff5224                    CALL dword ptr [EDX + 0x24]
0053512c  80bb7301000000            CMP byte ptr [EBX + 0x173],0x0
00535133  0f8436010000              JZ 0x0053526f
00535139  817b28d9000000            CMP dword ptr [EBX + 0x28],0xd9
00535140  0f8529010000              JNZ 0x0053526f
00535146  837b2c03                  CMP dword ptr [EBX + 0x2c],0x3
0053514a  0f851f010000              JNZ 0x0053526f
00535150  8b8368010000              MOV EAX,dword ptr [EBX + 0x168]
00535156  2500000001                AND EAX,0x1000000
0053515b  83c800                    OR EAX,0x0
0053515e  0f850b010000              JNZ 0x0053526f
00535164  8bcb                      MOV ECX,EBX
00535166  e8d5961800                CALL 0x006be840
0053516b  f30f108b3c030000          MOVSS XMM1,dword ptr [EBX + 0x33c]
00535173  8dbb3c030000              LEA EDI,[EBX + 0x33c]
00535179  8bf0                      MOV ESI,EAX
0053517b  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00535183  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
0053518b  f30f5cc8                  SUBSS XMM1,XMM0
0053518f  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00535197  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
0053519c  f30f5cc2                  SUBSS XMM0,XMM2
005351a0  f30f119544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM2
005351a8  f30f59c9                  MULSS XMM1,XMM1
005351ac  f30f59c0                  MULSS XMM0,XMM0
005351b0  f30f58c1                  ADDSS XMM0,XMM1
005351b4  e89708f0ff                CALL 0x00435a50
005351b9  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
005351c1  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
005351c7  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
005351cf  8d8d48ffffff              LEA ECX,[EBP + 0xffffff48]
005351d5  50                        PUSH EAX
005351d6  f30f59c8                  MULSS XMM1,XMM0
005351da  f30f588d4cffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff4c]
005351e2  f30f5c0f                  SUBSS XMM1,dword ptr [EDI]
005351e6  f30f118d48ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM1
005351ee  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
005351f6  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
005351fe  f30f59c8                  MULSS XMM1,XMM0
00535202  f30f588d44ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff44]
0053520a  f30f5c4f04                SUBSS XMM1,dword ptr [EDI + 0x4]
0053520f  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
00535217  e814ae4d00                CALL 0x00a10030
0053521c  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
00535222  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00535227  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0053522b  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00535233  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0053523b  f30f119540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM2
00535243  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0053524b  e8e09cf0ff                CALL 0x0043ef30
00535250  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
00535256  c745e405000000            MOV dword ptr [EBP + -0x1c],0x5
0053525d  50                        PUSH EAX
0053525e  6a00                      PUSH 0x0
00535260  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00535266  8bcb                      MOV ECX,EBX
00535268  50                        PUSH EAX
00535269  57                        PUSH EDI
0053526a  e871601900                CALL 0x006cb2e0
0053526f  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00535272  5f                        POP EDI
00535273  5e                        POP ESI
00535274  33cd                      XOR ECX,EBP
00535276  5b                        POP EBX
00535277  e8af9e5b00                CALL 0x00aef12b
0053527c  8be5                      MOV ESP,EBP
0053527e  5d                        POP EBP
0053527f  c3                        RET
