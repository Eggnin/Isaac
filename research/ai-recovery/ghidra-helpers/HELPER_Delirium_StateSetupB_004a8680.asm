; J460 NPC AI 0x004a8680 HELPER_Delirium_StateSetupB
; types=412
; identities=delirium.state_setup
; entry=004a8680
004a8680  55                        PUSH EBP
004a8681  8bec                      MOV EBP,ESP
004a8683  83ec2c                    SUB ESP,0x2c
004a8686  53                        PUSH EBX
004a8687  56                        PUSH ESI
004a8688  57                        PUSH EDI
004a8689  8bf9                      MOV EDI,ECX
004a868b  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
004a8690  897de8                    MOV dword ptr [EBP + -0x18],EDI
004a8693  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004a8696  83f813                    CMP EAX,0x13
004a8699  0f857d040000              JNZ 0x004a8b1c
004a869f  e8bc682400                CALL 0x006eef60
004a86a4  33d2                      XOR EDX,EDX
004a86a6  b906000000                MOV ECX,0x6
004a86ab  f7f1                      DIV ECX
004a86ad  8bcf                      MOV ECX,EDI
004a86af  8bdf                      MOV EBX,EDI
004a86b1  83c204                    ADD EDX,0x4
004a86b4  8955ec                    MOV dword ptr [EBP + -0x14],EDX
004a86b7  e884612100                CALL 0x006be840
004a86bc  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004a86c4  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
004a86cc  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004a86d4  f30f5c9040030000          SUBSS XMM2,dword ptr [EAX + 0x340]
004a86dc  0f28c1                    MOVAPS XMM0,XMM1
004a86df  f30f114dfc                MOVSS dword ptr [EBP + -0x4],XMM1
004a86e4  f30f59c1                  MULSS XMM0,XMM1
004a86e8  0f28ca                    MOVAPS XMM1,XMM2
004a86eb  f30f59ca                  MULSS XMM1,XMM2
004a86ef  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
004a86f4  f30f58c1                  ADDSS XMM0,XMM1
004a86f8  e853d3f8ff                CALL 0x00435a50
004a86fd  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004a8704  7628                      JBE 0x004a872e
004a8706  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004a870e  f30f5ec8                  DIVSS XMM1,XMM0
004a8712  f30f1045fc                MOVSS XMM0,dword ptr [EBP + -0x4]
004a8717  f30f59c1                  MULSS XMM0,XMM1
004a871b  f30f1145fc                MOVSS dword ptr [EBP + -0x4],XMM0
004a8720  f30f1045f8                MOVSS XMM0,dword ptr [EBP + -0x8]
004a8725  f30f59c1                  MULSS XMM0,XMM1
004a8729  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
004a872e  e82d682400                CALL 0x006eef60
004a8733  33d2                      XOR EDX,EDX
004a8735  b95a000000                MOV ECX,0x5a
004a873a  f7f1                      DIV ECX
004a873c  83ea2d                    SUB EDX,0x2d
004a873f  660f6ec2                  MOVD XMM0,EDX
004a8743  0f5bc0                    CVTDQ2PS XMM0,XMM0
004a8746  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004a874e  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
004a8753  e8e84df7ff                CALL 0x0041d540
004a8758  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
004a875d  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
004a8762  e8b94df7ff                CALL 0x0041d520
004a8767  f30f1065fc                MOVSS XMM4,dword ptr [EBP + -0x4]
004a876c  be01000000                MOV ESI,0x1
004a8771  0f28ec                    MOVAPS XMM5,XMM4
004a8774  f30f105df8                MOVSS XMM3,dword ptr [EBP + -0x8]
004a8779  0f28cb                    MOVAPS XMM1,XMM3
004a877c  f30f596df4                MULSS XMM5,dword ptr [EBP + -0xc]
004a8781  8975f0                    MOV dword ptr [EBP + -0x10],ESI
004a8784  f30f595df4                MULSS XMM3,dword ptr [EBP + -0xc]
004a8789  f30f59c8                  MULSS XMM1,XMM0
004a878d  f30f59e0                  MULSS XMM4,XMM0
004a8791  f30f5ce9                  SUBSS XMM5,XMM1
004a8795  f30f58e3                  ADDSS XMM4,XMM3
004a8799  f30f116ddc                MOVSS dword ptr [EBP + -0x24],XMM5
004a879e  f30f1165fc                MOVSS dword ptr [EBP + -0x4],XMM4
004a87a3  3975ec                    CMP dword ptr [EBP + -0x14],ESI
004a87a6  0f8cbb030000              JL 0x004a8b67
004a87ac  0f1f4000                  NOP dword ptr [EAX]
004a87b0  660f6ece                  MOVD XMM1,ESI
004a87b4  0f5bc9                    CVTDQ2PS XMM1,XMM1
004a87b7  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
004a87bf  0f28c1                    MOVAPS XMM0,XMM1
004a87c2  f30f59cc                  MULSS XMM1,XMM4
004a87c6  f30f59c5                  MULSS XMM0,XMM5
004a87ca  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004a87d2  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004a87da  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
004a87df  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004a87e4  e877672400                CALL 0x006eef60
004a87e9  33d2                      XOR EDX,EDX
004a87eb  b988130000                MOV ECX,0x1388
004a87f0  f7f1                      DIV ECX
004a87f2  660f6ec2                  MOVD XMM0,EDX
004a87f6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a87fa  c1ea1f                    SHR EDX,0x1f
004a87fd  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004a8806  660f5ac0                  CVTPD2PS XMM0,XMM0
004a880a  f30f5e05c4abba00          DIVSS XMM0,dword ptr [0x00baabc4]
004a8812  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
004a8817  e844672400                CALL 0x006eef60
004a881c  33d2                      XOR EDX,EDX
004a881e  b988130000                MOV ECX,0x1388
004a8823  f7f1                      DIV ECX
004a8825  660f6ec2                  MOVD XMM0,EDX
004a8829  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004a882d  c1ea1f                    SHR EDX,0x1f
004a8830  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004a8839  660f5ac0                  CVTPD2PS XMM0,XMM0
004a883d  f30f5e05c4abba00          DIVSS XMM0,dword ptr [0x00baabc4]
004a8845  f30f5845d4                ADDSS XMM0,dword ptr [EBP + -0x2c]
004a884a  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004a884f  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
004a8854  f30f5845f4                ADDSS XMM0,dword ptr [EBP + -0xc]
004a8859  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004a885e  e8fd662400                CALL 0x006eef60
004a8863  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a8869  50                        PUSH EAX
004a886a  6a00                      PUSH 0x0
004a886c  57                        PUSH EDI
004a886d  6840b6c700                PUSH 0xc7b640
004a8872  8d45d4                    LEA EAX,[EBP + -0x2c]
004a8875  50                        PUSH EAX
004a8876  ff772c                    PUSH dword ptr [EDI + 0x2c]
004a8879  ff7728                    PUSH dword ptr [EDI + 0x28]
004a887c  e89f02f8ff                CALL 0x00428b20
004a8881  8bf8                      MOV EDI,EAX
004a8883  83fe01                    CMP ESI,0x1
004a8886  751c                      JNZ 0x004a88a4
004a8888  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004a888d  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
004a8895  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
004a889d  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004a88a4  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004a88aa  8db7bc030000              LEA ESI,[EDI + 0x3bc]
004a88b0  85c9                      TEST ECX,ECX
004a88b2  7412                      JZ 0x004a88c6
004a88b4  8d45f4                    LEA EAX,[EBP + -0xc]
004a88b7  8975f4                    MOV dword ptr [EBP + -0xc],ESI
004a88ba  50                        PUSH EAX
004a88bb  81c1cc030000              ADD ECX,0x3cc
004a88c1  e84a690200                CALL 0x004cf210
004a88c6  891e                      MOV dword ptr [ESI],EBX
004a88c8  85db                      TEST EBX,EBX
004a88ca  7408                      JZ 0x004a88d4
004a88cc  56                        PUSH ESI
004a88cd  8bcb                      MOV ECX,EBX
004a88cf  e81c540200                CALL 0x004cdcf0
004a88d4  8b8bc0030000              MOV ECX,dword ptr [EBX + 0x3c0]
004a88da  8db3c0030000              LEA ESI,[EBX + 0x3c0]
004a88e0  85c9                      TEST ECX,ECX
004a88e2  7412                      JZ 0x004a88f6
004a88e4  8d45f4                    LEA EAX,[EBP + -0xc]
004a88e7  8975f4                    MOV dword ptr [EBP + -0xc],ESI
004a88ea  50                        PUSH EAX
004a88eb  81c1cc030000              ADD ECX,0x3cc
004a88f1  e81a690200                CALL 0x004cf210
004a88f6  56                        PUSH ESI
004a88f7  8bcf                      MOV ECX,EDI
004a88f9  893e                      MOV dword ptr [ESI],EDI
004a88fb  e8f0530200                CALL 0x004cdcf0
004a8900  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004a8906  8d9f040c0000              LEA EBX,[EDI + 0xc04]
004a890c  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004a8912  83e1fb                    AND ECX,0xfffffffb
004a8915  81c900000480              OR ECX,0x80040000
004a891b  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004a8921  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004a8927  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004a8931  8b530c                    MOV EDX,dword ptr [EBX + 0xc]
004a8934  f6c201                    TEST DL,0x1
004a8937  7518                      JNZ 0x004a8951
004a8939  8b4310                    MOV EAX,dword ptr [EBX + 0x10]
004a893c  83c002                    ADD EAX,0x2
004a893f  d1e8                      SHR EAX,0x1
004a8941  394308                    CMP dword ptr [EBX + 0x8],EAX
004a8944  770b                      JA 0x004a8951
004a8946  51                        PUSH ECX
004a8947  8bcb                      MOV ECX,EBX
004a8949  e8c20affff                CALL 0x00499410
004a894e  8b530c                    MOV EDX,dword ptr [EBX + 0xc]
004a8951  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
004a8954  8d0409                    LEA EAX,[ECX + ECX*0x1]
004a8957  8d70ff                    LEA ESI,[EAX + -0x1]
004a895a  23f2                      AND ESI,EDX
004a895c  89730c                    MOV dword ptr [EBX + 0xc],ESI
004a895f  0f44f0                    CMOVZ ESI,EAX
004a8962  49                        DEC ECX
004a8963  4e                        DEC ESI
004a8964  8bc6                      MOV EAX,ESI
004a8966  8975e0                    MOV dword ptr [EBP + -0x20],ESI
004a8969  d1e8                      SHR EAX,0x1
004a896b  23c8                      AND ECX,EAX
004a896d  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
004a8970  894df8                    MOV dword ptr [EBP + -0x8],ECX
004a8973  8945f4                    MOV dword ptr [EBP + -0xc],EAX
004a8976  833c8800                  CMP dword ptr [EAX + ECX*0x4],0x0
004a897a  7519                      JNZ 0x004a8995
004a897c  6a10                      PUSH 0x10
004a897e  e83d6b5600                CALL 0x00a0f4c0
004a8983  8b4b04                    MOV ECX,dword ptr [EBX + 0x4]
004a8986  83c404                    ADD ESP,0x4
004a8989  8b55f8                    MOV EDX,dword ptr [EBP + -0x8]
004a898c  890491                    MOV dword ptr [ECX + EDX*0x4],EAX
004a898f  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
004a8992  8945f4                    MOV dword ptr [EBP + -0xc],EAX
004a8995  8b5df4                    MOV EBX,dword ptr [EBP + -0xc]
004a8998  83e601                    AND ESI,0x1
004a899b  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
004a899e  8b9740030000              MOV EDX,dword ptr [EDI + 0x340]
004a89a4  8b8f3c030000              MOV ECX,dword ptr [EDI + 0x33c]
004a89aa  8b0483                    MOV EAX,dword ptr [EBX + EAX*0x4]
004a89ad  8d9f180c0000              LEA EBX,[EDI + 0xc18]
004a89b3  890cf0                    MOV dword ptr [EAX + ESI*0x8],ECX
004a89b6  8954f004                  MOV dword ptr [EAX + ESI*0x8 + 0x4],EDX
004a89ba  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004a89bd  ff87140c0000              INC dword ptr [EDI + 0xc14]
004a89c3  8987100c0000              MOV dword ptr [EDI + 0xc10],EAX
004a89c9  8b530c                    MOV EDX,dword ptr [EBX + 0xc]
004a89cc  f6c201                    TEST DL,0x1
004a89cf  7518                      JNZ 0x004a89e9
004a89d1  8b4310                    MOV EAX,dword ptr [EBX + 0x10]
004a89d4  83c002                    ADD EAX,0x2
004a89d7  d1e8                      SHR EAX,0x1
004a89d9  394308                    CMP dword ptr [EBX + 0x8],EAX
004a89dc  770b                      JA 0x004a89e9
004a89de  51                        PUSH ECX
004a89df  8bcb                      MOV ECX,EBX
004a89e1  e82a0affff                CALL 0x00499410
004a89e6  8b530c                    MOV EDX,dword ptr [EBX + 0xc]
004a89e9  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
004a89ec  8d0409                    LEA EAX,[ECX + ECX*0x1]
004a89ef  8d70ff                    LEA ESI,[EAX + -0x1]
004a89f2  23f2                      AND ESI,EDX
004a89f4  89730c                    MOV dword ptr [EBX + 0xc],ESI
004a89f7  0f44f0                    CMOVZ ESI,EAX
004a89fa  49                        DEC ECX
004a89fb  4e                        DEC ESI
004a89fc  8bc6                      MOV EAX,ESI
004a89fe  8975e0                    MOV dword ptr [EBP + -0x20],ESI
004a8a01  d1e8                      SHR EAX,0x1
004a8a03  23c8                      AND ECX,EAX
004a8a05  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
004a8a08  894df4                    MOV dword ptr [EBP + -0xc],ECX
004a8a0b  8945f8                    MOV dword ptr [EBP + -0x8],EAX
004a8a0e  833c8800                  CMP dword ptr [EAX + ECX*0x4],0x0
004a8a12  7519                      JNZ 0x004a8a2d
004a8a14  6a10                      PUSH 0x10
004a8a16  e8a56a5600                CALL 0x00a0f4c0
004a8a1b  8b4b04                    MOV ECX,dword ptr [EBX + 0x4]
004a8a1e  83c404                    ADD ESP,0x4
004a8a21  8b55f4                    MOV EDX,dword ptr [EBP + -0xc]
004a8a24  890491                    MOV dword ptr [ECX + EDX*0x4],EAX
004a8a27  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
004a8a2a  8945f8                    MOV dword ptr [EBP + -0x8],EAX
004a8a2d  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
004a8a30  83e601                    AND ESI,0x1
004a8a33  8b5df8                    MOV EBX,dword ptr [EBP + -0x8]
004a8a36  8b8f60030000              MOV ECX,dword ptr [EDI + 0x360]
004a8a3c  8b9764030000              MOV EDX,dword ptr [EDI + 0x364]
004a8a42  6a01                      PUSH 0x1
004a8a44  8b0483                    MOV EAX,dword ptr [EBX + EAX*0x4]
004a8a47  8954f004                  MOV dword ptr [EAX + ESI*0x8 + 0x4],EDX
004a8a4b  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004a8a4e  890cf0                    MOV dword ptr [EAX + ESI*0x8],ECX
004a8a51  8d4f48                    LEA ECX,[EDI + 0x48]
004a8a54  ff87280c0000              INC dword ptr [EDI + 0xc28]
004a8a5a  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004a8a5d  8987240c0000              MOV dword ptr [EDI + 0xc24],EAX
004a8a63  8b827c0c0000              MOV EAX,dword ptr [EDX + 0xc7c]
004a8a69  89877c0c0000              MOV dword ptr [EDI + 0xc7c],EAX
004a8a6f  ff722c                    PUSH dword ptr [EDX + 0x2c]
004a8a72  8b5228                    MOV EDX,dword ptr [EDX + 0x28]
004a8a75  e896d2ffff                CALL 0x004a5d10
004a8a7a  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004a8a7d  83c408                    ADD ESP,0x8
004a8a80  897de0                    MOV dword ptr [EBP + -0x20],EDI
004a8a83  85f6                      TEST ESI,ESI
004a8a85  7445                      JZ 0x004a8acc
004a8a87  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004a8a8b  8bc6                      MOV EAX,ESI
004a8a8d  7202                      JC 0x004a8a91
004a8a8f  8b06                      MOV EAX,dword ptr [ESI]
004a8a91  b980e0b100                MOV ECX,0xb1e080
004a8a96  8a10                      MOV DL,byte ptr [EAX]
004a8a98  3a11                      CMP DL,byte ptr [ECX]
004a8a9a  751a                      JNZ 0x004a8ab6
004a8a9c  84d2                      TEST DL,DL
004a8a9e  7412                      JZ 0x004a8ab2
004a8aa0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004a8aa3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004a8aa6  750e                      JNZ 0x004a8ab6
004a8aa8  83c002                    ADD EAX,0x2
004a8aab  83c102                    ADD ECX,0x2
004a8aae  84d2                      TEST DL,DL
004a8ab0  75e4                      JNZ 0x004a8a96
004a8ab2  33c0                      XOR EAX,EAX
004a8ab4  eb05                      JMP 0x004a8abb
004a8ab6  1bc0                      SBB EAX,EAX
004a8ab8  83c801                    OR EAX,0x1
004a8abb  85c0                      TEST EAX,EAX
004a8abd  750d                      JNZ 0x004a8acc
004a8abf  384634                    CMP byte ptr [ESI + 0x34],AL
004a8ac2  742a                      JZ 0x004a8aee
004a8ac4  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004a8aca  7522                      JNZ 0x004a8aee
004a8acc  6a01                      PUSH 0x1
004a8ace  6880e0b100                PUSH 0xb1e080
004a8ad3  8d4f48                    LEA ECX,[EDI + 0x48]
004a8ad6  e8f51af6ff                CALL 0x0040a5d0
004a8adb  84c0                      TEST AL,AL
004a8add  740f                      JZ 0x004a8aee
004a8adf  8d4f78                    LEA ECX,[EDI + 0x78]
004a8ae2  e8c916f6ff                CALL 0x0040a1b0
004a8ae7  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004a8aee  8b07                      MOV EAX,dword ptr [EDI]
004a8af0  8bcf                      MOV ECX,EDI
004a8af2  ff500c                    CALL dword ptr [EAX + 0xc]
004a8af5  8b75f0                    MOV ESI,dword ptr [EBP + -0x10]
004a8af8  f30f1065fc                MOVSS XMM4,dword ptr [EBP + -0x4]
004a8afd  46                        INC ESI
004a8afe  f30f106ddc                MOVSS XMM5,dword ptr [EBP + -0x24]
004a8b03  8b5de0                    MOV EBX,dword ptr [EBP + -0x20]
004a8b06  8b7de8                    MOV EDI,dword ptr [EBP + -0x18]
004a8b09  8975f0                    MOV dword ptr [EBP + -0x10],ESI
004a8b0c  3b75ec                    CMP ESI,dword ptr [EBP + -0x14]
004a8b0f  0f8e9bfcffff              JLE 0x004a87b0
004a8b15  5f                        POP EDI
004a8b16  5e                        POP ESI
004a8b17  5b                        POP EBX
004a8b18  8be5                      MOV ESP,EBP
004a8b1a  5d                        POP EBP
004a8b1b  c3                        RET
004a8b1c  3d0a010000                CMP EAX,0x10a
004a8b21  7544                      JNZ 0x004a8b67
004a8b23  e838642400                CALL 0x006eef60
004a8b28  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a8b2e  8db73c030000              LEA ESI,[EDI + 0x33c]
004a8b34  50                        PUSH EAX
004a8b35  6a00                      PUSH 0x0
004a8b37  57                        PUSH EDI
004a8b38  6840b6c700                PUSH 0xc7b640
004a8b3d  56                        PUSH ESI
004a8b3e  6a01                      PUSH 0x1
004a8b40  ff7728                    PUSH dword ptr [EDI + 0x28]
004a8b43  e8d8fff7ff                CALL 0x00428b20
004a8b48  e813642400                CALL 0x006eef60
004a8b4d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a8b53  50                        PUSH EAX
004a8b54  6a00                      PUSH 0x0
004a8b56  57                        PUSH EDI
004a8b57  6840b6c700                PUSH 0xc7b640
004a8b5c  56                        PUSH ESI
004a8b5d  6a02                      PUSH 0x2
004a8b5f  ff7728                    PUSH dword ptr [EDI + 0x28]
004a8b62  e8b9fff7ff                CALL 0x00428b20
004a8b67  5f                        POP EDI
004a8b68  5e                        POP ESI
004a8b69  5b                        POP EBX
004a8b6a  8be5                      MOV ESP,EBP
004a8b6c  5d                        POP EBP
004a8b6d  c3                        RET
