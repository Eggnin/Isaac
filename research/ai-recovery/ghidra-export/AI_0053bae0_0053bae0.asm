; J460 NPC AI 0x0053bae0 AI_0053bae0
; types=222
; identities=222.0.0
; entry=0053bae0
0053bae0  55                        PUSH EBP
0053bae1  8bec                      MOV EBP,ESP
0053bae3  6aff                      PUSH -0x1
0053bae5  680d48af00                PUSH 0xaf480d
0053baea  64a100000000              MOV EAX,FS:[0x0]
0053baf0  50                        PUSH EAX
0053baf1  83ec24                    SUB ESP,0x24
0053baf4  53                        PUSH EBX
0053baf5  56                        PUSH ESI
0053baf6  57                        PUSH EDI
0053baf7  a1b493bf00                MOV EAX,[0x00bf93b4]
0053bafc  33c5                      XOR EAX,EBP
0053bafe  50                        PUSH EAX
0053baff  8d45f4                    LEA EAX,[EBP + -0xc]
0053bb02  64a300000000              MOV FS:[0x0],EAX
0053bb08  8bf1                      MOV ESI,ECX
0053bb0a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053bb10  ffb6ec030000              PUSH dword ptr [ESI + 0x3ec]
0053bb16  81c1a8ba0100              ADD ECX,0x1baa8
0053bb1c  51                        PUSH ECX
0053bb1d  e80e2a4800                CALL 0x009be530
0053bb22  8bf8                      MOV EDI,EAX
0053bb24  85ff                      TEST EDI,EDI
0053bb26  7446                      JZ 0x0053bb6e
0053bb28  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0053bb2f  753d                      JNZ 0x0053bb6e
0053bb31  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053bb37  56                        PUSH ESI
0053bb38  81c1e4660200              ADD ECX,0x266e4
0053bb3e  e8bda04a00                CALL 0x009e5c00
0053bb43  8b06                      MOV EAX,dword ptr [ESI]
0053bb45  8bce                      MOV ECX,ESI
0053bb47  ff5028                    CALL dword ptr [EAX + 0x28]
0053bb4a  6a00                      PUSH 0x0
0053bb4c  8d863c030000              LEA EAX,[ESI + 0x33c]
0053bb52  8bcf                      MOV ECX,EDI
0053bb54  50                        PUSH EAX
0053bb55  6a01                      PUSH 0x1
0053bb57  e874de2100                CALL 0x007599d0
0053bb5c  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0053bb5f  64890d00000000            MOV dword ptr FS:[0x0],ECX
0053bb66  59                        POP ECX
0053bb67  5f                        POP EDI
0053bb68  5e                        POP ESI
0053bb69  5b                        POP EBX
0053bb6a  8be5                      MOV ESP,EBP
0053bb6c  5d                        POP EBP
0053bb6d  c3                        RET
0053bb6e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053bb74  6a01                      PUSH 0x1
0053bb76  81c1a8ba0100              ADD ECX,0x1baa8
0053bb7c  51                        PUSH ECX
0053bb7d  6a09                      PUSH 0x9
0053bb7f  e8fc244800                CALL 0x009be080
0053bb84  85c0                      TEST EAX,EAX
0053bb86  745f                      JZ 0x0053bbe7
0053bb88  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0053bb8e  2500000020                AND EAX,0x20000000
0053bb93  83c800                    OR EAX,0x0
0053bb96  754f                      JNZ 0x0053bbe7
0053bb98  6aff                      PUSH -0x1
0053bb9a  50                        PUSH EAX
0053bb9b  50                        PUSH EAX
0053bb9c  6a0d                      PUSH 0xd
0053bb9e  8bce                      MOV ECX,ESI
0053bba0  e88b531800                CALL 0x006c0f30
0053bba5  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0053bbad  f30f118eb80b0000          MOVSS dword ptr [ESI + 0xbb8],XMM1
0053bbb5  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053bbbd  f30f1186bc0b0000          MOVSS dword ptr [ESI + 0xbbc],XMM0
0053bbc5  f30f118eb00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM1
0053bbcd  f30f1186b40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM0
0053bbd5  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0053bbd8  64890d00000000            MOV dword ptr FS:[0x0],ECX
0053bbdf  59                        POP ECX
0053bbe0  5f                        POP EDI
0053bbe1  5e                        POP ESI
0053bbe2  5b                        POP EBX
0053bbe3  8be5                      MOV ESP,EBP
0053bbe5  5d                        POP EBP
0053bbe6  c3                        RET
0053bbe7  a17816c700                MOV EAX,[0x00c71678]
0053bbec  6a00                      PUSH 0x0
0053bbee  6a01                      PUSH 0x1
0053bbf0  6aff                      PUSH -0x1
0053bbf2  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0053bbf8  8d45d0                    LEA EAX,[EBP + -0x30]
0053bbfb  6aff                      PUSH -0x1
0053bbfd  68de000000                PUSH 0xde
0053bc02  81c118120000              ADD ECX,0x1218
0053bc08  50                        PUSH EAX
0053bc09  e852f3edff                CALL 0x0041af60
0053bc0e  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0053bc15  8d8ebc030000              LEA ECX,[ESI + 0x3bc]
0053bc1b  833900                    CMP dword ptr [ECX],0x0
0053bc1e  8b5dd4                    MOV EBX,dword ptr [EBP + -0x2c]
0053bc21  895dec                    MOV dword ptr [EBP + -0x14],EBX
0053bc24  751c                      JNZ 0x0053bc42
0053bc26  837ddc00                  CMP dword ptr [EBP + -0x24],0x0
0053bc2a  7616                      JBE 0x0053bc42
0053bc2c  8b03                      MOV EAX,dword ptr [EBX]
0053bc2e  8901                      MOV dword ptr [ECX],EAX
0053bc30  85c0                      TEST EAX,EAX
0053bc32  740e                      JZ 0x0053bc42
0053bc34  51                        PUSH ECX
0053bc35  8bc8                      MOV ECX,EAX
0053bc37  e8b420f9ff                CALL 0x004cdcf0
0053bc3c  8d8ebc030000              LEA ECX,[ESI + 0x3bc]
0053bc42  837e3001                  CMP dword ptr [ESI + 0x30],0x1
0053bc46  7535                      JNZ 0x0053bc7d
0053bc48  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
0053bc50  8d9684030000              LEA EDX,[ESI + 0x384]
0053bc56  f30f100a                  MOVSS XMM1,dword ptr [EDX]
0053bc5a  0f2fc1                    COMISS XMM0,XMM1
0053bc5d  761e                      JBE 0x0053bc7d
0053bc5f  f30f5c055ca7ba00          SUBSS XMM0,dword ptr [0x00baa75c]
0053bc67  8d45e4                    LEA EAX,[EBP + -0x1c]
0053bc6a  0f2fc1                    COMISS XMM0,XMM1
0053bc6d  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
0053bc72  0f46c2                    CMOVBE EAX,EDX
0053bc75  8b00                      MOV EAX,dword ptr [EAX]
0053bc77  898680030000              MOV dword ptr [ESI + 0x380],EAX
0053bc7d  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
0053bc83  85c0                      TEST EAX,EAX
0053bc85  7561                      JNZ 0x0053bce8
0053bc87  8b09                      MOV ECX,dword ptr [ECX]
0053bc89  898684010000              MOV dword ptr [ESI + 0x184],EAX
0053bc8f  3bf1                      CMP ESI,ECX
0053bc91  7516                      JNZ 0x0053bca9
0053bc93  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
0053bc99  898634030000              MOV dword ptr [ESI + 0x334],EAX
0053bc9f  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0053bca7  eb14                      JMP 0x0053bcbd
0053bca9  8b8134030000              MOV EAX,dword ptr [ECX + 0x334]
0053bcaf  898634030000              MOV dword ptr [ESI + 0x334],EAX
0053bcb5  f30f108138030000          MOVSS XMM0,dword ptr [ECX + 0x338]
0053bcbd  f30f118638030000          MOVSS dword ptr [ESI + 0x338],XMM0
0053bcc5  c786c00b000001000000      MOV dword ptr [ESI + 0xbc0],0x1
0053bccf  c786b40b000000002042      MOV dword ptr [ESI + 0xbb4],0x42200000
0053bcd9  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
0053bce3  e9a6030000                JMP 0x0053c08e
0053bce8  83f804                    CMP EAX,0x4
0053bceb  0f859d030000              JNZ 0x0053c08e
0053bcf1  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
0053bcf5  8d4e48                    LEA ECX,[ESI + 0x48]
0053bcf8  7409                      JZ 0x0053bd03
0053bcfa  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
0053bd01  750c                      JNZ 0x0053bd0f
0053bd03  6a00                      PUSH 0x0
0053bd05  6804deb100                PUSH 0xb1de04
0053bd0a  e871e6ecff                CALL 0x0040a380
0053bd0f  51                        PUSH ECX
0053bd10  8d45e0                    LEA EAX,[EBP + -0x20]
0053bd13  c7042400000000            MOV dword ptr [ESP],0x0
0053bd1a  50                        PUSH EAX
0053bd1b  8bce                      MOV ECX,ESI
0053bd1d  e81e2f1800                CALL 0x006bec40
0053bd22  33c9                      XOR ECX,ECX
0053bd24  0f57c9                    XORPS XMM1,XMM1
0053bd27  33ff                      XOR EDI,EDI
0053bd29  f30f114df0                MOVSS dword ptr [EBP + -0x10],XMM1
0053bd2e  33db                      XOR EBX,EBX
0053bd30  0f57c0                    XORPS XMM0,XMM0
0053bd33  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0053bd37  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
0053bd3c  f30f5c963c030000          SUBSS XMM2,dword ptr [ESI + 0x33c]
0053bd44  f30f5c9e40030000          SUBSS XMM3,dword ptr [ESI + 0x340]
0053bd4c  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
0053bd51  f30f115de4                MOVSS dword ptr [EBP + -0x1c],XMM3
0053bd56  394ddc                    CMP dword ptr [EBP + -0x24],ECX
0053bd59  764d                      JBE 0x0053bda8
0053bd5b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0053bd60  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
0053bd63  8b1488                    MOV EDX,dword ptr [EAX + ECX*0x4]
0053bd66  3bf2                      CMP ESI,EDX
0053bd68  8bc7                      MOV EAX,EDI
0053bd6a  0f45c3                    CMOVNZ EAX,EBX
0053bd6d  8bd8                      MOV EBX,EAX
0053bd6f  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
0053bd75  3982bc030000              CMP dword ptr [EDX + 0x3bc],EAX
0053bd7b  7509                      JNZ 0x0053bd86
0053bd7d  f30f588a9c030000          ADDSS XMM1,dword ptr [EDX + 0x39c]
0053bd85  47                        INC EDI
0053bd86  41                        INC ECX
0053bd87  3b4ddc                    CMP ECX,dword ptr [EBP + -0x24]
0053bd8a  72d4                      JC 0x0053bd60
0053bd8c  f30f114df0                MOVSS dword ptr [EBP + -0x10],XMM1
0053bd91  85ff                      TEST EDI,EDI
0053bd93  7e13                      JLE 0x0053bda8
0053bd95  660f6ec7                  MOVD XMM0,EDI
0053bd99  0f5bc0                    CVTDQ2PS XMM0,XMM0
0053bd9c  f30f5ec8                  DIVSS XMM1,XMM0
0053bda0  0f57c0                    XORPS XMM0,XMM0
0053bda3  f30f114df0                MOVSS dword ptr [EBP + -0x10],XMM1
0053bda8  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0053bdae  3bce                      CMP ECX,ESI
0053bdb0  0f8595010000              JNZ 0x0053bf4b
0053bdb6  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
0053bdbd  7459                      JZ 0x0053be18
0053bdbf  8d45e0                    LEA EAX,[EBP + -0x20]
0053bdc2  0f28d0                    MOVAPS XMM2,XMM0
0053bdc5  50                        PUSH EAX
0053bdc6  8bce                      MOV ECX,ESI
0053bdc8  e803c51900                CALL 0x006d82d0
0053bdcd  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
0053bdd5  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0053bdd9  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0053bdde  f30f590dbca6ba00          MULSS XMM1,dword ptr [0x00baa6bc]
0053bde6  f30f5915bca6ba00          MULSS XMM2,dword ptr [0x00baa6bc]
0053bdee  f30f59c8                  MULSS XMM1,XMM0
0053bdf2  f30f59d0                  MULSS XMM2,XMM0
0053bdf6  f30f588e34030000          ADDSS XMM1,dword ptr [ESI + 0x334]
0053bdfe  f30f589638030000          ADDSS XMM2,dword ptr [ESI + 0x338]
0053be06  f30f118e34030000          MOVSS dword ptr [ESI + 0x334],XMM1
0053be0e  f30f119638030000          MOVSS dword ptr [ESI + 0x338],XMM2
0053be16  eb7b                      JMP 0x0053be93
0053be18  0f28c2                    MOVAPS XMM0,XMM2
0053be1b  0f28cb                    MOVAPS XMM1,XMM3
0053be1e  f30f59c2                  MULSS XMM0,XMM2
0053be22  f30f59cb                  MULSS XMM1,XMM3
0053be26  f30f58c1                  ADDSS XMM0,XMM1
0053be2a  e8219cefff                CALL 0x00435a50
0053be2f  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
0053be34  0f57c9                    XORPS XMM1,XMM1
0053be37  0f2fc1                    COMISS XMM0,XMM1
0053be3a  761a                      JBE 0x0053be56
0053be3c  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0053be44  f30f5ec8                  DIVSS XMM1,XMM0
0053be48  0f28c1                    MOVAPS XMM0,XMM1
0053be4b  f30f594de4                MULSS XMM1,dword ptr [EBP + -0x1c]
0053be50  f30f59d0                  MULSS XMM2,XMM0
0053be54  eb05                      JMP 0x0053be5b
0053be56  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
0053be5b  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
0053be63  f30f58d2                  ADDSS XMM2,XMM2
0053be67  f30f58c9                  ADDSS XMM1,XMM1
0053be6b  f30f59d0                  MULSS XMM2,XMM0
0053be6f  f30f59c8                  MULSS XMM1,XMM0
0053be73  f30f589634030000          ADDSS XMM2,dword ptr [ESI + 0x334]
0053be7b  f30f588e38030000          ADDSS XMM1,dword ptr [ESI + 0x338]
0053be83  f30f119634030000          MOVSS dword ptr [ESI + 0x334],XMM2
0053be8b  f30f118e38030000          MOVSS dword ptr [ESI + 0x338],XMM1
0053be93  83bec00b000000            CMP dword ptr [ESI + 0xbc0],0x0
0053be9a  f30f108eb40b0000          MOVSS XMM1,dword ptr [ESI + 0xbb4]
0053bea2  7425                      JZ 0x0053bec9
0053bea4  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
0053beac  0f2f0d7ca9ba00            COMISS XMM1,dword ptr [0x00baa97c]
0053beb3  f30f118eb40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM1
0053bebb  7633                      JBE 0x0053bef0
0053bebd  c786c00b000000000000      MOV dword ptr [ESI + 0xbc0],0x0
0053bec7  eb27                      JMP 0x0053bef0
0053bec9  f30f5c0dd0a2ba00          SUBSS XMM1,dword ptr [0x00baa2d0]
0053bed1  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
0053bed9  0f2fc1                    COMISS XMM0,XMM1
0053bedc  f30f118eb40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM1
0053bee4  760a                      JBE 0x0053bef0
0053bee6  c786c00b000001000000      MOV dword ptr [ESI + 0xbc0],0x1
0053bef0  f30f104df0                MOVSS XMM1,dword ptr [EBP + -0x10]
0053bef5  f30f590d10a1ba00          MULSS XMM1,dword ptr [0x00baa110]
0053befd  f30f1086b80b0000          MOVSS XMM0,dword ptr [ESI + 0xbb8]
0053bf05  f30f1015a8a7ba00          MOVSS XMM2,dword ptr [0x00baa7a8]
0053bf0d  f30f5cc1                  SUBSS XMM0,XMM1
0053bf11  f30f100d88adba00          MOVSS XMM1,dword ptr [0x00baad88]
0053bf19  0f2fc8                    COMISS XMM1,XMM0
0053bf1c  f30f1186b80b0000          MOVSS dword ptr [ESI + 0xbb8],XMM0
0053bf24  766f                      JBE 0x0053bf95
0053bf26  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
0053bf30  f30f1086b80b0000          MOVSS XMM0,dword ptr [ESI + 0xbb8]
0053bf38  f30f58c2                  ADDSS XMM0,XMM2
0053bf3c  0f2fc8                    COMISS XMM1,XMM0
0053bf3f  f30f1186b80b0000          MOVSS dword ptr [ESI + 0xbb8],XMM0
0053bf47  77e7                      JA 0x0053bf30
0053bf49  eb4a                      JMP 0x0053bf95
0053bf4b  85c9                      TEST ECX,ECX
0053bf4d  743e                      JZ 0x0053bf8d
0053bf4f  8b8134030000              MOV EAX,dword ptr [ECX + 0x334]
0053bf55  898634030000              MOV dword ptr [ESI + 0x334],EAX
0053bf5b  8b8138030000              MOV EAX,dword ptr [ECX + 0x338]
0053bf61  8bce                      MOV ECX,ESI
0053bf63  898638030000              MOV dword ptr [ESI + 0x338],EAX
0053bf69  e802b8f0ff                CALL 0x00447770
0053bf6e  8bce                      MOV ECX,ESI
0053bf70  8b80b40b0000              MOV EAX,dword ptr [EAX + 0xbb4]
0053bf76  8986b40b0000              MOV dword ptr [ESI + 0xbb4],EAX
0053bf7c  e8efb7f0ff                CALL 0x00447770
0053bf81  8b80b80b0000              MOV EAX,dword ptr [EAX + 0xbb8]
0053bf87  8986b80b0000              MOV dword ptr [ESI + 0xbb8],EAX
0053bf8d  f30f1015a8a7ba00          MOVSS XMM2,dword ptr [0x00baa7a8]
0053bf95  0f57c9                    XORPS XMM1,XMM1
0053bf98  0f57c0                    XORPS XMM0,XMM0
0053bf9b  f30f2acb                  CVTSI2SS XMM1,EBX
0053bf9f  f30f2ac7                  CVTSI2SS XMM0,EDI
0053bfa3  f30f59ca                  MULSS XMM1,XMM2
0053bfa7  f30f5ec8                  DIVSS XMM1,XMM0
0053bfab  f30f118eb00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM1
0053bfb3  f30f588eb80b0000          ADDSS XMM1,dword ptr [ESI + 0xbb8]
0053bfbb  0f28c1                    MOVAPS XMM0,XMM1
0053bfbe  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
0053bfc3  e85815eeff                CALL 0x0041d520
0053bfc8  f30f108eb40b0000          MOVSS XMM1,dword ptr [ESI + 0xbb4]
0053bfd0  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0053bfd5  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
0053bfda  f30f114df0                MOVSS dword ptr [EBP + -0x10],XMM1
0053bfdf  e85c15eeff                CALL 0x0041d540
0053bfe4  f30f104df0                MOVSS XMM1,dword ptr [EBP + -0x10]
0053bfe9  0f28d0                    MOVAPS XMM2,XMM0
0053bfec  f30f59d1                  MULSS XMM2,XMM1
0053bff0  f30f594de8                MULSS XMM1,dword ptr [EBP + -0x18]
0053bff5  f30f589634030000          ADDSS XMM2,dword ptr [ESI + 0x334]
0053bffd  f30f588e38030000          ADDSS XMM1,dword ptr [ESI + 0x338]
0053c005  f30f5c963c030000          SUBSS XMM2,dword ptr [ESI + 0x33c]
0053c00d  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
0053c015  0f28da                    MOVAPS XMM3,XMM2
0053c018  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
0053c01d  f30f59da                  MULSS XMM3,XMM2
0053c021  0f28c1                    MOVAPS XMM0,XMM1
0053c024  f30f114df0                MOVSS dword ptr [EBP + -0x10],XMM1
0053c029  f30f59c1                  MULSS XMM0,XMM1
0053c02d  f30f58d8                  ADDSS XMM3,XMM0
0053c031  0f2f1dd0a9ba00            COMISS XMM3,dword ptr [0x00baa9d0]
0053c038  7641                      JBE 0x0053c07b
0053c03a  0f28c3                    MOVAPS XMM0,XMM3
0053c03d  e80e9aefff                CALL 0x00435a50
0053c042  f30f1055e4                MOVSS XMM2,dword ptr [EBP + -0x1c]
0053c047  0f57c9                    XORPS XMM1,XMM1
0053c04a  0f2fc1                    COMISS XMM0,XMM1
0053c04d  f30f104df0                MOVSS XMM1,dword ptr [EBP + -0x10]
0053c052  7617                      JBE 0x0053c06b
0053c054  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0053c05c  f30f5ed8                  DIVSS XMM3,XMM0
0053c060  0f28c3                    MOVAPS XMM0,XMM3
0053c063  f30f59cb                  MULSS XMM1,XMM3
0053c067  f30f59d0                  MULSS XMM2,XMM0
0053c06b  f30f5915a4a7ba00          MULSS XMM2,dword ptr [0x00baa7a4]
0053c073  f30f590da4a7ba00          MULSS XMM1,dword ptr [0x00baa7a4]
0053c07b  8b5dec                    MOV EBX,dword ptr [EBP + -0x14]
0053c07e  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0053c086  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
0053c08e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0053c095  807dd000                  CMP byte ptr [EBP + -0x30],0x0
0053c099  7517                      JNZ 0x0053c0b2
0053c09b  6a00                      PUSH 0x0
0053c09d  6a00                      PUSH 0x0
0053c09f  8bd3                      MOV EDX,EBX
0053c0a1  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0053c0a8  b101                      MOV CL,0x1
0053c0aa  e801885200                CALL 0x00a648b0
0053c0af  83c408                    ADD ESP,0x8
0053c0b2  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0053c0b5  64890d00000000            MOV dword ptr FS:[0x0],ECX
0053c0bc  59                        POP ECX
0053c0bd  5f                        POP EDI
0053c0be  5e                        POP ESI
0053c0bf  5b                        POP EBX
0053c0c0  8be5                      MOV ESP,EBP
0053c0c2  5d                        POP EBP
0053c0c3  c3                        RET
