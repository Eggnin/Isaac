; J460 NPC AI 0x004f76f0 AI_004f76f0
; types=864
; identities=864.0.0
; entry=004f76f0
004f76f0  55                        PUSH EBP
004f76f1  8bec                      MOV EBP,ESP
004f76f3  83ec3c                    SUB ESP,0x3c
004f76f6  53                        PUSH EBX
004f76f7  56                        PUSH ESI
004f76f8  57                        PUSH EDI
004f76f9  8bf9                      MOV EDI,ECX
004f76fb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f7701  ffb10c830100              PUSH dword ptr [ECX + 0x1830c]
004f7707  ffb104830100              PUSH dword ptr [ECX + 0x18304]
004f770d  e8ae942400                CALL 0x00740bc0
004f7712  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
004f7715  d1e8                      SHR EAX,0x1
004f7717  a801                      TEST AL,0x1
004f7719  7526                      JNZ 0x004f7741
004f771b  8bcf                      MOV ECX,EDI
004f771d  e8fef41d00                CALL 0x006d6c20
004f7722  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004f7728  85c0                      TEST EAX,EAX
004f772a  7f0f                      JG 0x004f773b
004f772c  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
004f7732  83b8ec11000008            CMP dword ptr [EAX + 0x11ec],0x8
004f7739  7e0c                      JLE 0x004f7747
004f773b  c645ff00                  MOV byte ptr [EBP + -0x1],0x0
004f773f  eb0a                      JMP 0x004f774b
004f7741  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004f7747  c645ff01                  MOV byte ptr [EBP + -0x1],0x1
004f774b  8b82acba0100              MOV EAX,dword ptr [EDX + 0x1baac]
004f7751  8db2a8ba0100              LEA ESI,[EDX + 0x1baa8]
004f7757  2b06                      SUB EAX,dword ptr [ESI]
004f7759  33db                      XOR EBX,EBX
004f775b  f30f10157cacba00          MOVSS XMM2,dword ptr [0x00baac7c]
004f7763  c1f802                    SAR EAX,0x2
004f7766  c645f800                  MOV byte ptr [EBP + -0x8],0x0
004f776a  c745f000000000            MOV dword ptr [EBP + -0x10],0x0
004f7771  f30f1155f4                MOVSS dword ptr [EBP + -0xc],XMM2
004f7776  85c0                      TEST EAX,EAX
004f7778  0f84c1000000              JZ 0x004f783f
004f777e  6690                      NOP
004f7780  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004f7783  0f28da                    MOVAPS XMM3,XMM2
004f7786  8bc1                      MOV EAX,ECX
004f7788  f30f115dec                MOVSS dword ptr [EBP + -0x14],XMM3
004f778d  2b06                      SUB EAX,dword ptr [ESI]
004f778f  c1f802                    SAR EAX,0x2
004f7792  85c0                      TEST EAX,EAX
004f7794  7522                      JNZ 0x004f77b8
004f7796  68bce6b700                PUSH 0xb7e6bc
004f779b  6a10                      PUSH 0x10
004f779d  e81e9b5100                CALL 0x00a112c0
004f77a2  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004f77a5  83c408                    ADD ESP,0x8
004f77a8  f30f1055f4                MOVSS XMM2,dword ptr [EBP + -0xc]
004f77ad  f30f105dec                MOVSS XMM3,dword ptr [EBP + -0x14]
004f77b2  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004f77b8  8b06                      MOV EAX,dword ptr [ESI]
004f77ba  2bc8                      SUB ECX,EAX
004f77bc  c1f902                    SAR ECX,0x2
004f77bf  3bd9                      CMP EBX,ECX
004f77c1  7303                      JNC 0x004f77c6
004f77c3  8d0498                    LEA EAX,[EAX + EBX*0x4]
004f77c6  8b00                      MOV EAX,dword ptr [EAX]
004f77c8  be01000000                MOV ESI,0x1
004f77cd  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004f77d5  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004f77dd  8b4df8                    MOV ECX,dword ptr [EBP + -0x8]
004f77e0  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
004f77e8  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
004f77f0  83b82c160000ff            CMP dword ptr [EAX + 0x162c],-0x1
004f77f7  0fb6c9                    MOVZX ECX,CL
004f77fa  0f45ce                    CMOVNZ ECX,ESI
004f77fd  f30f59c9                  MULSS XMM1,XMM1
004f7801  894df8                    MOV dword ptr [EBP + -0x8],ECX
004f7804  f30f59c0                  MULSS XMM0,XMM0
004f7808  f30f58c8                  ADDSS XMM1,XMM0
004f780c  0f2fd1                    COMISS XMM2,XMM1
004f780f  7608                      JBE 0x004f7819
004f7811  0f28d1                    MOVAPS XMM2,XMM1
004f7814  f30f1155f4                MOVSS dword ptr [EBP + -0xc],XMM2
004f7819  0f2fd9                    COMISS XMM3,XMM1
004f781c  8db2a8ba0100              LEA ESI,[EDX + 0x1baa8]
004f7822  0f4645f0                  CMOVBE EAX,dword ptr [EBP + -0x10]
004f7826  43                        INC EBX
004f7827  8bc8                      MOV ECX,EAX
004f7829  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004f782c  2b06                      SUB EAX,dword ptr [ESI]
004f782e  c1f802                    SAR EAX,0x2
004f7831  894df0                    MOV dword ptr [EBP + -0x10],ECX
004f7834  3bd8                      CMP EBX,EAX
004f7836  0f8244ffffff              JC 0x004f7780
004f783c  894df0                    MOV dword ptr [EBP + -0x10],ECX
004f783f  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004f7845  0f57c9                    XORPS XMM1,XMM1
004f7848  f30f114df4                MOVSS dword ptr [EBP + -0xc],XMM1
004f784d  83e800                    SUB EAX,0x0
004f7850  0f8473030000              JZ 0x004f7bc9
004f7856  83e803                    SUB EAX,0x3
004f7859  0f8412020000              JZ 0x004f7a71
004f785f  83e801                    SUB EAX,0x1
004f7862  0f85f8030000              JNZ 0x004f7c60
004f7868  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f7870  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004f7878  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f7880  39477c                    CMP dword ptr [EDI + 0x7c],EAX
004f7883  7408                      JZ 0x004f788d
004f7885  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004f788b  756e                      JNZ 0x004f78fb
004f788d  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004f7890  85f6                      TEST ESI,ESI
004f7892  7445                      JZ 0x004f78d9
004f7894  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004f7898  8bc6                      MOV EAX,ESI
004f789a  7202                      JC 0x004f789e
004f789c  8b06                      MOV EAX,dword ptr [ESI]
004f789e  b954bcb100                MOV ECX,0xb1bc54
004f78a3  8a10                      MOV DL,byte ptr [EAX]
004f78a5  3a11                      CMP DL,byte ptr [ECX]
004f78a7  751a                      JNZ 0x004f78c3
004f78a9  84d2                      TEST DL,DL
004f78ab  7412                      JZ 0x004f78bf
004f78ad  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f78b0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f78b3  750e                      JNZ 0x004f78c3
004f78b5  83c002                    ADD EAX,0x2
004f78b8  83c102                    ADD ECX,0x2
004f78bb  84d2                      TEST DL,DL
004f78bd  75e4                      JNZ 0x004f78a3
004f78bf  33c0                      XOR EAX,EAX
004f78c1  eb05                      JMP 0x004f78c8
004f78c3  1bc0                      SBB EAX,EAX
004f78c5  83c801                    OR EAX,0x1
004f78c8  85c0                      TEST EAX,EAX
004f78ca  750d                      JNZ 0x004f78d9
004f78cc  384634                    CMP byte ptr [ESI + 0x34],AL
004f78cf  742a                      JZ 0x004f78fb
004f78d1  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004f78d7  7522                      JNZ 0x004f78fb
004f78d9  6a01                      PUSH 0x1
004f78db  6854bcb100                PUSH 0xb1bc54
004f78e0  8d4f48                    LEA ECX,[EDI + 0x48]
004f78e3  e8e82cf1ff                CALL 0x0040a5d0
004f78e8  84c0                      TEST AL,AL
004f78ea  740f                      JZ 0x004f78fb
004f78ec  8d4f78                    LEA ECX,[EDI + 0x78]
004f78ef  e8bc28f1ff                CALL 0x0040a1b0
004f78f4  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004f78fb  e860761f00                CALL 0x006eef60
004f7900  a803                      TEST AL,0x3
004f7902  7542                      JNZ 0x004f7946
004f7904  e857761f00                CALL 0x006eef60
004f7909  51                        PUSH ECX
004f790a  8bcf                      MOV ECX,EDI
004f790c  660f6ec0                  MOVD XMM0,EAX
004f7910  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f7914  c1e81f                    SHR EAX,0x1f
004f7917  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f7920  660f5ac8                  CVTPD2PS XMM1,XMM0
004f7924  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004f792c  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004f7934  f30f580df8a1ba00          ADDSS XMM1,dword ptr [0x00baa1f8]
004f793c  f30f110c24                MOVSS dword ptr [ESP],XMM1
004f7941  e88aeb1b00                CALL 0x006b64d0
004f7946  f30f10af60030000          MOVSS XMM5,dword ptr [EDI + 0x360]
004f794e  0f57c9                    XORPS XMM1,XMM1
004f7951  0f2fcd                    COMISS XMM1,XMM5
004f7954  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
004f795c  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
004f7964  0f28dc                    MOVAPS XMM3,XMM4
004f7967  7603                      JBE 0x004f796c
004f7969  0f28e0                    MOVAPS XMM4,XMM0
004f796c  0f2f8f64030000            COMISS XMM1,dword ptr [EDI + 0x364]
004f7973  7603                      JBE 0x004f7978
004f7975  0f28d8                    MOVAPS XMM3,XMM0
004f7978  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
004f7980  0f2ed1                    UCOMISS XMM2,XMM1
004f7983  9f                        LAHF
004f7984  f6c444                    TEST AH,0x44
004f7987  7b37                      JNP 0x004f79c0
004f7989  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004f7991  0f28c1                    MOVAPS XMM0,XMM1
004f7994  f30f59cb                  MULSS XMM1,XMM3
004f7998  f30f59c4                  MULSS XMM0,XMM4
004f799c  f30f5eca                  DIVSS XMM1,XMM2
004f79a0  f30f5ec2                  DIVSS XMM0,XMM2
004f79a4  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004f79ac  f30f58c5                  ADDSS XMM0,XMM5
004f79b0  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004f79b8  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004f79c0  f30f11a7b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM4
004f79c8  f30f119fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM3
004f79d0  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004f79d7  0f8f83020000              JG 0x004f7c60
004f79dd  807df800                  CMP byte ptr [EBP + -0x8],0x0
004f79e1  0f8579020000              JNZ 0x004f7c60
004f79e7  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004f79ea  85f6                      TEST ESI,ESI
004f79ec  7448                      JZ 0x004f7a36
004f79ee  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004f79f2  8bc6                      MOV EAX,ESI
004f79f4  7202                      JC 0x004f79f8
004f79f6  8b06                      MOV EAX,dword ptr [ESI]
004f79f8  b9f4fdb500                MOV ECX,0xb5fdf4
004f79fd  0f1f00                    NOP dword ptr [EAX]
004f7a00  8a10                      MOV DL,byte ptr [EAX]
004f7a02  3a11                      CMP DL,byte ptr [ECX]
004f7a04  751a                      JNZ 0x004f7a20
004f7a06  84d2                      TEST DL,DL
004f7a08  7412                      JZ 0x004f7a1c
004f7a0a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f7a0d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f7a10  750e                      JNZ 0x004f7a20
004f7a12  83c002                    ADD EAX,0x2
004f7a15  83c102                    ADD ECX,0x2
004f7a18  84d2                      TEST DL,DL
004f7a1a  75e4                      JNZ 0x004f7a00
004f7a1c  33c0                      XOR EAX,EAX
004f7a1e  eb05                      JMP 0x004f7a25
004f7a20  1bc0                      SBB EAX,EAX
004f7a22  83c801                    OR EAX,0x1
004f7a25  85c0                      TEST EAX,EAX
004f7a27  750d                      JNZ 0x004f7a36
004f7a29  384634                    CMP byte ptr [ESI + 0x34],AL
004f7a2c  742a                      JZ 0x004f7a58
004f7a2e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004f7a34  7522                      JNZ 0x004f7a58
004f7a36  6a01                      PUSH 0x1
004f7a38  68f4fdb500                PUSH 0xb5fdf4
004f7a3d  8d4f48                    LEA ECX,[EDI + 0x48]
004f7a40  e88b2bf1ff                CALL 0x0040a5d0
004f7a45  84c0                      TEST AL,AL
004f7a47  740f                      JZ 0x004f7a58
004f7a49  8d4f78                    LEA ECX,[EDI + 0x78]
004f7a4c  e85f27f1ff                CALL 0x0040a1b0
004f7a51  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004f7a58  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004f7a62  c787c00b00000a000000      MOV dword ptr [EDI + 0xbc0],0xa
004f7a6c  e9ef010000                JMP 0x004f7c60
004f7a71  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004f7a79  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004f7a81  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004f7a89  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f7a8d  7409                      JZ 0x004f7a98
004f7a8f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f7a96  7570                      JNZ 0x004f7b08
004f7a98  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004f7a9b  85f6                      TEST ESI,ESI
004f7a9d  7447                      JZ 0x004f7ae6
004f7a9f  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004f7aa3  8bc6                      MOV EAX,ESI
004f7aa5  7202                      JC 0x004f7aa9
004f7aa7  8b06                      MOV EAX,dword ptr [ESI]
004f7aa9  b9bc0ab600                MOV ECX,0xb60abc
004f7aae  6690                      NOP
004f7ab0  8a10                      MOV DL,byte ptr [EAX]
004f7ab2  3a11                      CMP DL,byte ptr [ECX]
004f7ab4  751a                      JNZ 0x004f7ad0
004f7ab6  84d2                      TEST DL,DL
004f7ab8  7412                      JZ 0x004f7acc
004f7aba  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f7abd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f7ac0  750e                      JNZ 0x004f7ad0
004f7ac2  83c002                    ADD EAX,0x2
004f7ac5  83c102                    ADD ECX,0x2
004f7ac8  84d2                      TEST DL,DL
004f7aca  75e4                      JNZ 0x004f7ab0
004f7acc  33c0                      XOR EAX,EAX
004f7ace  eb05                      JMP 0x004f7ad5
004f7ad0  1bc0                      SBB EAX,EAX
004f7ad2  83c801                    OR EAX,0x1
004f7ad5  85c0                      TEST EAX,EAX
004f7ad7  750d                      JNZ 0x004f7ae6
004f7ad9  384634                    CMP byte ptr [ESI + 0x34],AL
004f7adc  742a                      JZ 0x004f7b08
004f7ade  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004f7ae4  7522                      JNZ 0x004f7b08
004f7ae6  6a01                      PUSH 0x1
004f7ae8  68bc0ab600                PUSH 0xb60abc
004f7aed  8d4f48                    LEA ECX,[EDI + 0x48]
004f7af0  e8db2af1ff                CALL 0x0040a5d0
004f7af5  84c0                      TEST AL,AL
004f7af7  740f                      JZ 0x004f7b08
004f7af9  8d4f78                    LEA ECX,[EDI + 0x78]
004f7afc  e8af26f1ff                CALL 0x0040a1b0
004f7b01  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004f7b08  807df800                  CMP byte ptr [EBP + -0x8],0x0
004f7b0c  0f844e010000              JZ 0x004f7c60
004f7b12  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004f7b15  85f6                      TEST ESI,ESI
004f7b17  7445                      JZ 0x004f7b5e
004f7b19  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004f7b1d  8bc6                      MOV EAX,ESI
004f7b1f  7202                      JC 0x004f7b23
004f7b21  8b06                      MOV EAX,dword ptr [ESI]
004f7b23  b944d6b100                MOV ECX,0xb1d644
004f7b28  8a10                      MOV DL,byte ptr [EAX]
004f7b2a  3a11                      CMP DL,byte ptr [ECX]
004f7b2c  751a                      JNZ 0x004f7b48
004f7b2e  84d2                      TEST DL,DL
004f7b30  7412                      JZ 0x004f7b44
004f7b32  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f7b35  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f7b38  750e                      JNZ 0x004f7b48
004f7b3a  83c002                    ADD EAX,0x2
004f7b3d  83c102                    ADD ECX,0x2
004f7b40  84d2                      TEST DL,DL
004f7b42  75e4                      JNZ 0x004f7b28
004f7b44  33c0                      XOR EAX,EAX
004f7b46  eb05                      JMP 0x004f7b4d
004f7b48  1bc0                      SBB EAX,EAX
004f7b4a  83c801                    OR EAX,0x1
004f7b4d  85c0                      TEST EAX,EAX
004f7b4f  750d                      JNZ 0x004f7b5e
004f7b51  384634                    CMP byte ptr [ESI + 0x34],AL
004f7b54  742a                      JZ 0x004f7b80
004f7b56  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004f7b5c  7522                      JNZ 0x004f7b80
004f7b5e  6a01                      PUSH 0x1
004f7b60  6844d6b100                PUSH 0xb1d644
004f7b65  8d4f48                    LEA ECX,[EDI + 0x48]
004f7b68  e8632af1ff                CALL 0x0040a5d0
004f7b6d  84c0                      TEST AL,AL
004f7b6f  740f                      JZ 0x004f7b80
004f7b71  8d4f78                    LEA ECX,[EDI + 0x78]
004f7b74  e83726f1ff                CALL 0x0040a1b0
004f7b79  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004f7b80  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004f7b8a  c787c00b00000a000000      MOV dword ptr [EDI + 0xbc0],0xa
004f7b94  f30f108fbc0b0000          MOVSS XMM1,dword ptr [EDI + 0xbbc]
004f7b9c  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004f7ba4  f30f5887b80b0000          ADDSS XMM0,dword ptr [EDI + 0xbb8]
004f7bac  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004f7bb4  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004f7bbc  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004f7bc4  e997000000                JMP 0x004f7c60
004f7bc9  838f6801000001            OR dword ptr [EDI + 0x168],0x1
004f7bd0  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
004f7bd7  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004f7bde  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004f7be8  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004f7bf2  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004f7bf5  85f6                      TEST ESI,ESI
004f7bf7  7445                      JZ 0x004f7c3e
004f7bf9  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004f7bfd  8bc6                      MOV EAX,ESI
004f7bff  7202                      JC 0x004f7c03
004f7c01  8b06                      MOV EAX,dword ptr [ESI]
004f7c03  b9bc0ab600                MOV ECX,0xb60abc
004f7c08  8a10                      MOV DL,byte ptr [EAX]
004f7c0a  3a11                      CMP DL,byte ptr [ECX]
004f7c0c  751a                      JNZ 0x004f7c28
004f7c0e  84d2                      TEST DL,DL
004f7c10  7412                      JZ 0x004f7c24
004f7c12  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f7c15  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f7c18  750e                      JNZ 0x004f7c28
004f7c1a  83c002                    ADD EAX,0x2
004f7c1d  83c102                    ADD ECX,0x2
004f7c20  84d2                      TEST DL,DL
004f7c22  75e4                      JNZ 0x004f7c08
004f7c24  33c0                      XOR EAX,EAX
004f7c26  eb05                      JMP 0x004f7c2d
004f7c28  1bc0                      SBB EAX,EAX
004f7c2a  83c801                    OR EAX,0x1
004f7c2d  85c0                      TEST EAX,EAX
004f7c2f  750d                      JNZ 0x004f7c3e
004f7c31  384634                    CMP byte ptr [ESI + 0x34],AL
004f7c34  742a                      JZ 0x004f7c60
004f7c36  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004f7c3c  7522                      JNZ 0x004f7c60
004f7c3e  6a01                      PUSH 0x1
004f7c40  68bc0ab600                PUSH 0xb60abc
004f7c45  8d4f48                    LEA ECX,[EDI + 0x48]
004f7c48  e88329f1ff                CALL 0x0040a5d0
004f7c4d  84c0                      TEST AL,AL
004f7c4f  740f                      JZ 0x004f7c60
004f7c51  8d4f78                    LEA ECX,[EDI + 0x78]
004f7c54  e85725f1ff                CALL 0x0040a1b0
004f7c59  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004f7c60  8b45f0                    MOV EAX,dword ptr [EBP + -0x10]
004f7c63  0f57c0                    XORPS XMM0,XMM0
004f7c66  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
004f7c6b  85c0                      TEST EAX,EAX
004f7c6d  0f8485000000              JZ 0x004f7cf8
004f7c73  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004f7c7b  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004f7c83  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004f7c8b  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004f7c93  0f28c1                    MOVAPS XMM0,XMM1
004f7c96  f30f114df8                MOVSS dword ptr [EBP + -0x8],XMM1
004f7c9b  f30f59c1                  MULSS XMM0,XMM1
004f7c9f  0f28ca                    MOVAPS XMM1,XMM2
004f7ca2  f30f1155f0                MOVSS dword ptr [EBP + -0x10],XMM2
004f7ca7  f30f59ca                  MULSS XMM1,XMM2
004f7cab  f30f58c1                  ADDSS XMM0,XMM1
004f7caf  e89cddf3ff                CALL 0x00435a50
004f7cb4  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004f7cbb  f30f104df8                MOVSS XMM1,dword ptr [EBP + -0x8]
004f7cc0  f30f1055f0                MOVSS XMM2,dword ptr [EBP + -0x10]
004f7cc5  7617                      JBE 0x004f7cde
004f7cc7  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
004f7ccf  f30f5ed8                  DIVSS XMM3,XMM0
004f7cd3  0f28c3                    MOVAPS XMM0,XMM3
004f7cd6  f30f59d3                  MULSS XMM2,XMM3
004f7cda  f30f59c8                  MULSS XMM1,XMM0
004f7cde  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
004f7ce6  f30f59155ca7ba00          MULSS XMM2,dword ptr [0x00baa75c]
004f7cee  f30f114df8                MOVSS dword ptr [EBP + -0x8],XMM1
004f7cf3  f30f1155f4                MOVSS dword ptr [EBP + -0xc],XMM2
004f7cf8  6a02                      PUSH 0x2
004f7cfa  8d4f48                    LEA ECX,[EDI + 0x48]
004f7cfd  e81e35f1ff                CALL 0x0040b220
004f7d02  f30f104040                MOVSS XMM0,dword ptr [EAX + 0x40]
004f7d07  0f2e45f8                  UCOMISS XMM0,dword ptr [EBP + -0x8]
004f7d0b  8d4840                    LEA ECX,[EAX + 0x40]
004f7d0e  9f                        LAHF
004f7d0f  f6c444                    TEST AH,0x44
004f7d12  7a13                      JP 0x004f7d27
004f7d14  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
004f7d19  0f2e45f4                  UCOMISS XMM0,dword ptr [EBP + -0xc]
004f7d1d  9f                        LAHF
004f7d1e  f6c444                    TEST AH,0x44
004f7d21  0f8ba5000000              JNP 0x004f7dcc
004f7d27  6a02                      PUSH 0x2
004f7d29  8d4f48                    LEA ECX,[EDI + 0x48]
004f7d2c  e8ef34f1ff                CALL 0x0040b220
004f7d31  f30f104df4                MOVSS XMM1,dword ptr [EBP + -0xc]
004f7d36  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004f7d3e  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
004f7d46  f30f5c4844                SUBSS XMM1,dword ptr [EAX + 0x44]
004f7d4b  f30f1055f8                MOVSS XMM2,dword ptr [EBP + -0x8]
004f7d50  f30f5c5040                SUBSS XMM2,dword ptr [EAX + 0x40]
004f7d55  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
004f7d5a  0f28c1                    MOVAPS XMM0,XMM1
004f7d5d  f30f114df4                MOVSS dword ptr [EBP + -0xc],XMM1
004f7d62  f30f59c1                  MULSS XMM0,XMM1
004f7d66  0f28ca                    MOVAPS XMM1,XMM2
004f7d69  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004f7d6e  f30f59ca                  MULSS XMM1,XMM2
004f7d72  f30f58c1                  ADDSS XMM0,XMM1
004f7d76  e8d5dcf3ff                CALL 0x00435a50
004f7d7b  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
004f7d80  0f2fc1                    COMISS XMM0,XMM1
004f7d83  761f                      JBE 0x004f7da4
004f7d85  f30f5ec8                  DIVSS XMM1,XMM0
004f7d89  0f28c1                    MOVAPS XMM0,XMM1
004f7d8c  f30f5945f8                MULSS XMM0,dword ptr [EBP + -0x8]
004f7d91  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
004f7d96  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
004f7d9b  f30f59c1                  MULSS XMM0,XMM1
004f7d9f  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
004f7da4  6a02                      PUSH 0x2
004f7da6  8d4f48                    LEA ECX,[EDI + 0x48]
004f7da9  e87234f1ff                CALL 0x0040b220
004f7dae  f30f1045f8                MOVSS XMM0,dword ptr [EBP + -0x8]
004f7db3  f30f584040                ADDSS XMM0,dword ptr [EAX + 0x40]
004f7db8  f30f114040                MOVSS dword ptr [EAX + 0x40],XMM0
004f7dbd  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
004f7dc2  f30f584044                ADDSS XMM0,dword ptr [EAX + 0x44]
004f7dc7  f30f114044                MOVSS dword ptr [EAX + 0x44],XMM0
004f7dcc  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
004f7dd2  85d2                      TEST EDX,EDX
004f7dd4  7e1a                      JLE 0x004f7df0
004f7dd6  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004f7dde  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004f7de6  2bc8                      SUB ECX,EAX
004f7de8  03ca                      ADD ECX,EDX
004f7dea  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
004f7df0  807dff00                  CMP byte ptr [EBP + -0x1],0x0
004f7df4  7459                      JZ 0x004f7e4f
004f7df6  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
004f7dfe  8d4dc4                    LEA ECX,[EBP + -0x3c]
004f7e01  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004f7e09  8b07                      MOV EAX,dword ptr [EDI]
004f7e0b  51                        PUSH ECX
004f7e0c  8bcf                      MOV ECX,EDI
004f7e0e  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
004f7e15  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
004f7e1c  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
004f7e23  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
004f7e2a  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
004f7e2f  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004f7e34  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004f7e39  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004f7e3e  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004f7e45  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004f7e4c  ff5024                    CALL dword ptr [EAX + 0x24]
004f7e4f  5f                        POP EDI
004f7e50  5e                        POP ESI
004f7e51  5b                        POP EBX
004f7e52  8be5                      MOV ESP,EBP
004f7e54  5d                        POP EBP
004f7e55  c3                        RET
