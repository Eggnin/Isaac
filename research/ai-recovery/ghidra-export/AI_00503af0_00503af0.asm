; J460 NPC AI 0x00503af0 AI_00503af0
; types=882
; identities=882.0.0
; entry=00503af0
00503af0  53                        PUSH EBX
00503af1  8bdc                      MOV EBX,ESP
00503af3  83ec08                    SUB ESP,0x8
00503af6  83e4f8                    AND ESP,0xfffffff8
00503af9  83c404                    ADD ESP,0x4
00503afc  55                        PUSH EBP
00503afd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00503b00  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00503b04  8bec                      MOV EBP,ESP
00503b06  81ec80000000              SUB ESP,0x80
00503b0c  a1b493bf00                MOV EAX,[0x00bf93b4]
00503b11  33c5                      XOR EAX,EBP
00503b13  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00503b16  56                        PUSH ESI
00503b17  8bf1                      MOV ESI,ECX
00503b19  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00503b1f  57                        PUSH EDI
00503b20  89758c                    MOV dword ptr [EBP + -0x74],ESI
00503b23  83be740b000001            CMP dword ptr [ESI + 0xb74],0x1
00503b2a  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
00503b30  894594                    MOV dword ptr [EBP + -0x6c],EAX
00503b33  0f8503010000              JNZ 0x00503c3c
00503b39  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
00503b3f  2500000020                AND EAX,0x20000000
00503b44  83c800                    OR EAX,0x0
00503b47  7576                      JNZ 0x00503bbf
00503b49  83be640b000010            CMP dword ptr [ESI + 0xb64],0x10
00503b50  746d                      JZ 0x00503bbf
00503b52  8dbe3c030000              LEA EDI,[ESI + 0x33c]
00503b58  57                        PUSH EDI
00503b59  e8f2fd1f00                CALL 0x00703950
00503b5e  85c0                      TEST EAX,EAX
00503b60  7458                      JZ 0x00503bba
00503b62  f30f100f                  MOVSS XMM1,dword ptr [EDI]
00503b66  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
00503b6b  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
00503b73  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
00503b7b  f30f59c0                  MULSS XMM0,XMM0
00503b7f  f30f59c9                  MULSS XMM1,XMM1
00503b83  f30f58c1                  ADDSS XMM0,XMM1
00503b87  e8c41ef3ff                CALL 0x00435a50
00503b8c  f30f5c05a0a9ba00          SUBSS XMM0,dword ptr [0x00baa9a0]
00503b94  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00503b9c  f30f5e0500aaba00          DIVSS XMM0,dword ptr [0x00baaa00]
00503ba4  f30f5cd0                  SUBSS XMM2,XMM0
00503ba8  f30f5f15e49fba00          MAXSS XMM2,dword ptr [0x00ba9fe4]
00503bb0  f30f5d1554a4ba00          MINSS XMM2,dword ptr [0x00baa454]
00503bb8  eb0d                      JMP 0x00503bc7
00503bba  0f57d2                    XORPS XMM2,XMM2
00503bbd  eb08                      JMP 0x00503bc7
00503bbf  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00503bc7  33ff                      XOR EDI,EDI
00503bc9  f30f1196b00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM2
00503bd1  39bec8000000              CMP dword ptr [ESI + 0xc8],EDI
00503bd7  7624                      JBE 0x00503bfd
00503bd9  8d4648                    LEA EAX,[ESI + 0x48]
00503bdc  0f1f4000                  NOP dword ptr [EAX]
00503be0  57                        PUSH EDI
00503be1  8bc8                      MOV ECX,EAX
00503be3  e83876f0ff                CALL 0x0040b220
00503be8  8b8eb00b0000              MOV ECX,dword ptr [ESI + 0xbb0]
00503bee  47                        INC EDI
00503bef  894854                    MOV dword ptr [EAX + 0x54],ECX
00503bf2  8d4648                    LEA EAX,[ESI + 0x48]
00503bf5  3bbec8000000              CMP EDI,dword ptr [ESI + 0xc8]
00503bfb  72e3                      JC 0x00503be0
00503bfd  83be640b000010            CMP dword ptr [ESI + 0xb64],0x10
00503c04  0f848a050000              JZ 0x00504194
00503c0a  f30f1086b00b0000          MOVSS XMM0,dword ptr [ESI + 0xbb0]
00503c12  33c0                      XOR EAX,EAX
00503c14  0f2f058ca0ba00            COMISS XMM0,dword ptr [0x00baa08c]
00503c1b  b904000000                MOV ECX,0x4
00503c20  0f47c1                    CMOVA EAX,ECX
00503c23  898688010000              MOV dword ptr [ESI + 0x188],EAX
00503c29  5f                        POP EDI
00503c2a  5e                        POP ESI
00503c2b  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00503c2e  33cd                      XOR ECX,EBP
00503c30  e8f6b45e00                CALL 0x00aef12b
00503c35  8be5                      MOV ESP,EBP
00503c37  5d                        POP EBP
00503c38  8be3                      MOV ESP,EBX
00503c3a  5b                        POP EBX
00503c3b  c3                        RET
00503c3c  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
00503c42  83f810                    CMP EAX,0x10
00503c45  0f8749050000              JA 0x00504194
00503c4b  0fb680bc415000            MOVZX EAX,byte ptr [EAX + 0x5041bc]
00503c52  ff2485a8415000            JMP dword ptr [EAX*0x4 + 0x5041a8]
00503c59  f30f108684030000          MOVSS XMM0,dword ptr [ESI + 0x384]
00503c61  8d45d0                    LEA EAX,[EBP + -0x30]
00503c64  f30f590528a3ba00          MULSS XMM0,dword ptr [0x00baa328]
00503c6c  8d8ee4010000              LEA ECX,[ESI + 0x1e4]
00503c72  50                        PUSH EAX
00503c73  c786180f000001000000      MOV dword ptr [ESI + 0xf18],0x1
00503c7d  c786640b000002000000      MOV dword ptr [ESI + 0xb64],0x2
00503c87  f30f1186b40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM0
00503c8f  0f57c0                    XORPS XMM0,XMM0
00503c92  0f1145e0                  MOVUPS xmmword ptr [EBP + -0x20],XMM0
00503c96  c786b00b000000000000      MOV dword ptr [ESI + 0xbb0],0x0
00503ca0  0f2805e0baba00            MOVAPS XMM0,xmmword ptr [0x00babae0]
00503ca7  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00503cab  c745f085eb513f            MOV dword ptr [EBP + -0x10],0x3f51eb85
00503cb2  c745f485eb513f            MOV dword ptr [EBP + -0xc],0x3f51eb85
00503cb9  c745f8cdcc4c3f            MOV dword ptr [EBP + -0x8],0x3f4ccccd
00503cc0  e82b35f0ff                CALL 0x004071f0
00503cc5  33ff                      XOR EDI,EDI
00503cc7  8d4648                    LEA EAX,[ESI + 0x48]
00503cca  39bec8000000              CMP dword ptr [ESI + 0xc8],EDI
00503cd0  761e                      JBE 0x00503cf0
00503cd2  57                        PUSH EDI
00503cd3  8bc8                      MOV ECX,EAX
00503cd5  e84675f0ff                CALL 0x0040b220
00503cda  47                        INC EDI
00503cdb  c7405400000000            MOV dword ptr [EAX + 0x54],0x0
00503ce2  8d4648                    LEA EAX,[ESI + 0x48]
00503ce5  3bbec8000000              CMP EDI,dword ptr [ESI + 0xc8]
00503ceb  72e5                      JC 0x00503cd2
00503ced  8d4648                    LEA EAX,[ESI + 0x48]
00503cf0  6a00                      PUSH 0x0
00503cf2  6898d5b100                PUSH 0xb1d598
00503cf7  8bc8                      MOV ECX,EAX
00503cf9  e88266f0ff                CALL 0x0040a380
00503cfe  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00503d04  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00503d0b  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00503d11  5f                        POP EDI
00503d12  5e                        POP ESI
00503d13  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00503d16  33cd                      XOR ECX,EBP
00503d18  e80eb45e00                CALL 0x00aef12b
00503d1d  8be5                      MOV ESP,EBP
00503d1f  5d                        POP EBP
00503d20  8be3                      MOV ESP,EBX
00503d22  5b                        POP EBX
00503d23  c3                        RET
00503d24  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
00503d2c  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00503d34  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
00503d3c  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00503d40  740d                      JZ 0x00503d4f
00503d42  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
00503d49  0f8545040000              JNZ 0x00504194
00503d4f  c786640b000003000000      MOV dword ptr [ESI + 0xb64],0x3
00503d59  5f                        POP EDI
00503d5a  5e                        POP ESI
00503d5b  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00503d5e  33cd                      XOR ECX,EBP
00503d60  e8c6b35e00                CALL 0x00aef12b
00503d65  8be5                      MOV ESP,EBP
00503d67  5d                        POP EBP
00503d68  8be3                      MOV ESP,EBX
00503d6a  5b                        POP EBX
00503d6b  c3                        RET
00503d6c  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
00503d74  8bce                      MOV ECX,ESI
00503d76  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00503d7e  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
00503d86  f30f1086b00b0000          MOVSS XMM0,dword ptr [ESI + 0xbb0]
00503d8e  f30f5905f0a4ba00          MULSS XMM0,dword ptr [0x00baa4f0]
00503d96  f30f5f0544a2ba00          MAXSS XMM0,dword ptr [0x00baa244]
00503d9e  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
00503da3  e898aa1b00                CALL 0x006be840
00503da8  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00503db0  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00503db8  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
00503dc0  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00503dc8  f30f59c0                  MULSS XMM0,XMM0
00503dcc  f30f59c9                  MULSS XMM1,XMM1
00503dd0  f30f58c1                  ADDSS XMM0,XMM1
00503dd4  e8771cf3ff                CALL 0x00435a50
00503dd9  0f57c9                    XORPS XMM1,XMM1
00503ddc  8d4590                    LEA EAX,[EBP + -0x70]
00503ddf  f30f5cc1                  SUBSS XMM0,XMM1
00503de3  8bce                      MOV ECX,ESI
00503de5  6a01                      PUSH 0x1
00503de7  6a00                      PUSH 0x0
00503de9  83ec08                    SUB ESP,0x8
00503dec  f30f5e05a0a9ba00          DIVSS XMM0,dword ptr [0x00baa9a0]
00503df4  f30f5fc1                  MAXSS XMM0,XMM1
00503df8  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
00503e00  f30f59057ca2ba00          MULSS XMM0,dword ptr [0x00baa27c]
00503e08  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
00503e10  f30f5945a0                MULSS XMM0,dword ptr [EBP + -0x60]
00503e15  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
00503e1b  c7042400000000            MOV dword ptr [ESP],0x0
00503e22  50                        PUSH EAX
00503e23  e818ae1b00                CALL 0x006bec40
00503e28  50                        PUSH EAX
00503e29  8d8e14040000              LEA ECX,[ESI + 0x414]
00503e2f  e88cf52d00                CALL 0x007e33c0
00503e34  f30f109680030000          MOVSS XMM2,dword ptr [ESI + 0x380]
00503e3c  f30f1086b40b0000          MOVSS XMM0,dword ptr [ESI + 0xbb4]
00503e44  0f2fc2                    COMISS XMM0,XMM2
00503e47  0f8681000000              JBE 0x00503ece
00503e4d  f30f108e84030000          MOVSS XMM1,dword ptr [ESI + 0x384]
00503e55  f30f590d20a2ba00          MULSS XMM1,dword ptr [0x00baa220]
00503e5d  0f1f00                    NOP dword ptr [EAX]
00503e60  f30f1086b40b0000          MOVSS XMM0,dword ptr [ESI + 0xbb4]
00503e68  f30f5cc1                  SUBSS XMM0,XMM1
00503e6c  0f2fc2                    COMISS XMM0,XMM2
00503e6f  f30f1186b40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM0
00503e77  77e7                      JA 0x00503e60
00503e79  6a00                      PUSH 0x0
00503e7b  6834d5b100                PUSH 0xb1d534
00503e80  8d4e48                    LEA ECX,[ESI + 0x48]
00503e83  c786640b000010000000      MOV dword ptr [ESI + 0xb64],0x10
00503e8d  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
00503e97  e8e464f0ff                CALL 0x0040a380
00503e9c  c6864801000000            MOV byte ptr [ESI + 0x148],0x0
00503ea3  8dbe60030000              LEA EDI,[ESI + 0x360]
00503ea9  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00503eb1  f30f1107                  MOVSS dword ptr [EDI],XMM0
00503eb5  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00503ebd  f30f114704                MOVSS dword ptr [EDI + 0x4],XMM0
00503ec2  c786c00b00005a000000      MOV dword ptr [ESI + 0xbc0],0x5a
00503ecc  eb68                      JMP 0x00503f36
00503ece  f30f109e64030000          MOVSS XMM3,dword ptr [ESI + 0x364]
00503ed6  8dbe60030000              LEA EDI,[ESI + 0x360]
00503edc  f30f1007                  MOVSS XMM0,dword ptr [EDI]
00503ee0  8d4e48                    LEA ECX,[ESI + 0x48]
00503ee3  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00503eea  0f28d3                    MOVAPS XMM2,XMM3
00503eed  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
00503ef4  0f2fd0                    COMISS XMM2,XMM0
00503ef7  6a00                      PUSH 0x0
00503ef9  7222                      JC 0x00503f1d
00503efb  0f57c9                    XORPS XMM1,XMM1
00503efe  ba44e0b100                MOV EDX,0xb1e044
00503f03  0f2fcb                    COMISS XMM1,XMM3
00503f06  b820e0b100                MOV EAX,0xb1e020
00503f0b  0f46c2                    CMOVBE EAX,EDX
00503f0e  50                        PUSH EAX
00503f0f  e86c64f0ff                CALL 0x0040a380
00503f14  c6864801000000            MOV byte ptr [ESI + 0x148],0x0
00503f1b  eb19                      JMP 0x00503f36
00503f1d  6830ddb100                PUSH 0xb1dd30
00503f22  e85964f0ff                CALL 0x0040a380
00503f27  0f57c9                    XORPS XMM1,XMM1
00503f2a  0f2f0f                    COMISS XMM1,dword ptr [EDI]
00503f2d  0f97c0                    SETA AL
00503f30  888648010000              MOV byte ptr [ESI + 0x148],AL
00503f36  8bd7                      MOV EDX,EDI
00503f38  8d4d90                    LEA ECX,[EBP + -0x70]
00503f3b  e830b21700                CALL 0x0067f170
00503f40  f30f100da4a7ba00          MOVSS XMM1,dword ptr [0x00baa7a4]
00503f48  0f57d2                    XORPS XMM2,XMM2
00503f4b  8b08                      MOV ECX,dword ptr [EAX]
00503f4d  898e300f0000              MOV dword ptr [ESI + 0xf30],ECX
00503f53  8bce                      MOV ECX,ESI
00503f55  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00503f58  8986340f0000              MOV dword ptr [ESI + 0xf34],EAX
00503f5e  e8fd871a00                CALL 0x006ac760
00503f63  85c0                      TEST EAX,EAX
00503f65  0f8429020000              JZ 0x00504194
00503f6b  f30f1086b00b0000          MOVSS XMM0,dword ptr [ESI + 0xbb0]
00503f73  0f57c9                    XORPS XMM1,XMM1
00503f76  0f2fc1                    COMISS XMM0,XMM1
00503f79  0f8615020000              JBE 0x00504194
00503f7f  51                        PUSH ECX
00503f80  8bce                      MOV ECX,ESI
00503f82  c704240000003f            MOV dword ptr [ESP],0x3f000000
00503f89  e842251b00                CALL 0x006b64d0
00503f8e  f30f1086b00b0000          MOVSS XMM0,dword ptr [ESI + 0xbb0]
00503f96  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00503f9e  8945a0                    MOV dword ptr [EBP + -0x60],EAX
00503fa1  8b08                      MOV ECX,dword ptr [EAX]
00503fa3  51                        PUSH ECX
00503fa4  f30f110424                MOVSS dword ptr [ESP],XMM0
00503fa9  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00503fb1  8b793c                    MOV EDI,dword ptr [ECX + 0x3c]
00503fb4  0f28d8                    MOVAPS XMM3,XMM0
00503fb7  0f28d0                    MOVAPS XMM2,XMM0
00503fba  8d4dd0                    LEA ECX,[EBP + -0x30]
00503fbd  0f28c8                    MOVAPS XMM1,XMM0
00503fc0  e82bf9f1ff                CALL 0x004238f0
00503fc5  8b4d8c                    MOV ECX,dword ptr [EBP + -0x74]
00503fc8  83ec2c                    SUB ESP,0x2c
00503fcb  8bd4                      MOV EDX,ESP
00503fcd  81c1e4010000              ADD ECX,0x1e4
00503fd3  8bf0                      MOV ESI,EAX
00503fd5  51                        PUSH ECX
00503fd6  8bca                      MOV ECX,EDX
00503fd8  e8e331f0ff                CALL 0x004071c0
00503fdd  8bd6                      MOV EDX,ESI
00503fdf  8d4da4                    LEA ECX,[EBP + -0x5c]
00503fe2  e8f932f0ff                CALL 0x004072e0
00503fe7  8b4da0                    MOV ECX,dword ptr [EBP + -0x60]
00503fea  83c42c                    ADD ESP,0x2c
00503fed  6a01                      PUSH 0x1
00503fef  6a00                      PUSH 0x0
00503ff1  68ff000000                PUSH 0xff
00503ff6  6aff                      PUSH -0x1
00503ff8  50                        PUSH EAX
00503ff9  ffd7                      CALL EDI
00503ffb  5f                        POP EDI
00503ffc  5e                        POP ESI
00503ffd  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00504000  33cd                      XOR ECX,EBP
00504002  e824b15e00                CALL 0x00aef12b
00504007  8be5                      MOV ESP,EBP
00504009  5d                        POP EBP
0050400a  8be3                      MOV ESP,EBX
0050400c  5b                        POP EBX
0050400d  c3                        RET
0050400e  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
00504016  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
0050401e  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
00504026  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
0050402a  7441                      JZ 0x0050406d
0050402c  6834d5b100                PUSH 0xb1d534
00504031  8d4e78                    LEA ECX,[ESI + 0x78]
00504034  e8976df0ff                CALL 0x0040add0
00504039  84c0                      TEST AL,AL
0050403b  741d                      JZ 0x0050405a
0050403d  51                        PUSH ECX
0050403e  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
00504045  6a00                      PUSH 0x0
00504047  6a02                      PUSH 0x2
00504049  51                        PUSH ECX
0050404a  c704243333333f            MOV dword ptr [ESP],0x3f333333
00504051  8bce                      MOV ECX,ESI
00504053  6a50                      PUSH 0x50
00504055  e8462b1d00                CALL 0x006d6ba0
0050405a  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
0050405e  740d                      JZ 0x0050406d
00504060  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
00504067  0f8527010000              JNZ 0x00504194
0050406d  8b96c00b0000              MOV EDX,dword ptr [ESI + 0xbc0]
00504073  85d2                      TEST EDX,EDX
00504075  7e1a                      JLE 0x00504091
00504077  f30f2c86a4030000          CVTTSS2SI EAX,dword ptr [ESI + 0x3a4]
0050407f  f30f2c8ea0030000          CVTTSS2SI ECX,dword ptr [ESI + 0x3a0]
00504087  2bc8                      SUB ECX,EAX
00504089  03ca                      ADD ECX,EDX
0050408b  898ec00b0000              MOV dword ptr [ESI + 0xbc0],ECX
00504091  8b7594                    MOV ESI,dword ptr [EBP + -0x6c]
00504094  0f57c0                    XORPS XMM0,XMM0
00504097  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
0050409c  bf04000000                MOV EDI,0x4
005040a1  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
005040a6  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
005040ab  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
005040b0  6a00                      PUSH 0x0
005040b2  6a00                      PUSH 0x0
005040b4  6a00                      PUSH 0x0
005040b6  83ec08                    SUB ESP,0x8
005040b9  8d4584                    LEA EAX,[EBP + -0x7c]
005040bc  8bce                      MOV ECX,ESI
005040be  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005040c6  c7042400000000            MOV dword ptr [ESP],0x0
005040cd  50                        PUSH EAX
005040ce  e8fda83100                CALL 0x0081e9d0
005040d3  50                        PUSH EAX
005040d4  8d4590                    LEA EAX,[EBP + -0x70]
005040d7  8bce                      MOV ECX,ESI
005040d9  50                        PUSH EAX
005040da  e841f43000                CALL 0x00813520
005040df  6a00                      PUSH 0x0
005040e1  6a00                      PUSH 0x0
005040e3  6a00                      PUSH 0x0
005040e5  8d4590                    LEA EAX,[EBP + -0x70]
005040e8  50                        PUSH EAX
005040e9  e8c2f91f00                CALL 0x00703ab0
005040ee  85c0                      TEST EAX,EAX
005040f0  744d                      JZ 0x0050413f
005040f2  f30f105590                MOVSS XMM2,dword ptr [EBP + -0x70]
005040f7  f30f105d94                MOVSS XMM3,dword ptr [EBP + -0x6c]
005040fc  0f28c2                    MOVAPS XMM0,XMM2
005040ff  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
00504107  0f28cb                    MOVAPS XMM1,XMM3
0050410a  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
00504112  f30f59c0                  MULSS XMM0,XMM0
00504116  f30f59c9                  MULSS XMM1,XMM1
0050411a  f30f58c8                  ADDSS XMM1,XMM0
0050411e  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
00504123  0f2fc8                    COMISS XMM1,XMM0
00504126  761c                      JBE 0x00504144
00504128  0f28c1                    MOVAPS XMM0,XMM1
0050412b  f30f1155a0                MOVSS dword ptr [EBP + -0x60],XMM2
00504130  0f28cb                    MOVAPS XMM1,XMM3
00504133  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
00504138  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
0050413d  eb0f                      JMP 0x0050414e
0050413f  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
00504144  f30f1055a0                MOVSS XMM2,dword ptr [EBP + -0x60]
00504149  f30f104d98                MOVSS XMM1,dword ptr [EBP + -0x68]
0050414e  83ef01                    SUB EDI,0x1
00504151  0f8559ffffff              JNZ 0x005040b0
00504157  0f2f055cacba00            COMISS XMM0,dword ptr [0x00baac5c]
0050415e  8b758c                    MOV ESI,dword ptr [EBP + -0x74]
00504161  7708                      JA 0x0050416b
00504163  39bec00b0000              CMP dword ptr [ESI + 0xbc0],EDI
00504169  7f29                      JG 0x00504194
0050416b  6a00                      PUSH 0x0
0050416d  6898d5b100                PUSH 0xb1d598
00504172  8d4e48                    LEA ECX,[ESI + 0x48]
00504175  f30f11963c030000          MOVSS dword ptr [ESI + 0x33c],XMM2
0050417d  f30f118e40030000          MOVSS dword ptr [ESI + 0x340],XMM1
00504185  e8f661f0ff                CALL 0x0040a380
0050418a  c786640b000002000000      MOV dword ptr [ESI + 0xb64],0x2
00504194  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00504197  5f                        POP EDI
00504198  33cd                      XOR ECX,EBP
0050419a  5e                        POP ESI
0050419b  e88baf5e00                CALL 0x00aef12b
005041a0  8be5                      MOV ESP,EBP
005041a2  5d                        POP EBP
005041a3  8be3                      MOV ESP,EBX
005041a5  5b                        POP EBX
005041a6  c3                        RET
