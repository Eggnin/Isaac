; J460 NPC AI 0x004f8960 AI_004f8960
; types=804
; identities=804.0.0,804.0.1,804.0.2,804.0.3
; entry=004f8960
004f8960  55                        PUSH EBP
004f8961  8bec                      MOV EBP,ESP
004f8963  83e4f8                    AND ESP,0xfffffff8
004f8966  83ec0c                    SUB ESP,0xc
004f8969  53                        PUSH EBX
004f896a  56                        PUSH ESI
004f896b  57                        PUSH EDI
004f896c  8bf9                      MOV EDI,ECX
004f896e  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
004f8975  8bb7d4030000              MOV ESI,dword ptr [EDI + 0x3d4]
004f897b  89742414                  MOV dword ptr [ESP + 0x14],ESI
004f897f  7541                      JNZ 0x004f89c2
004f8981  85f6                      TEST ESI,ESI
004f8983  0f852b030000              JNZ 0x004f8cb4
004f8989  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004f8990  0f851e030000              JNZ 0x004f8cb4
004f8996  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
004f899c  85c0                      TEST EAX,EAX
004f899e  0f8810030000              JS 0x004f8cb4
004f89a4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f89aa  689f0f0000                PUSH 0xf9f
004f89af  50                        PUSH EAX
004f89b0  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004f89b6  e825dcf5ff                CALL 0x004565e0
004f89bb  5f                        POP EDI
004f89bc  5e                        POP ESI
004f89bd  5b                        POP EBX
004f89be  8be5                      MOV ESP,EBP
004f89c0  5d                        POP EBP
004f89c1  c3                        RET
004f89c2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f89c8  ffb10c830100              PUSH dword ptr [ECX + 0x1830c]
004f89ce  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004f89d4  ffb104830100              PUSH dword ptr [ECX + 0x18304]
004f89da  89442414                  MOV dword ptr [ESP + 0x14],EAX
004f89de  e8dd812400                CALL 0x00740bc0
004f89e3  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
004f89e9  8b5844                    MOV EBX,dword ptr [EAX + 0x44]
004f89ec  d1eb                      SHR EBX,0x1
004f89ee  80e301                    AND BL,0x1
004f89f1  83f903                    CMP ECX,0x3
004f89f4  7405                      JZ 0x004f89fb
004f89f6  83f908                    CMP ECX,0x8
004f89f9  7523                      JNZ 0x004f8a1e
004f89fb  84db                      TEST BL,BL
004f89fd  741f                      JZ 0x004f8a1e
004f89ff  6a00                      PUSH 0x0
004f8a01  681ceeb100                PUSH 0xb1ee1c
004f8a06  8d4f48                    LEA ECX,[EDI + 0x48]
004f8a09  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004f8a13  e86819f1ff                CALL 0x0040a380
004f8a18  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
004f8a1e  f30f2c97a4030000          CVTTSS2SI EDX,dword ptr [EDI + 0x3a4]
004f8a26  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004f8a2e  2bd0                      SUB EDX,EAX
004f8a30  89542410                  MOV dword ptr [ESP + 0x10],EDX
004f8a34  85c9                      TEST ECX,ECX
004f8a36  0f84aa010000              JZ 0x004f8be6
004f8a3c  83f903                    CMP ECX,0x3
004f8a3f  0f8436010000              JZ 0x004f8b7b
004f8a45  83f908                    CMP ECX,0x8
004f8a48  0f8559010000              JNZ 0x004f8ba7
004f8a4e  6a00                      PUSH 0x0
004f8a50  6810d7b100                PUSH 0xb1d710
004f8a55  8d4f48                    LEA ECX,[EDI + 0x48]
004f8a58  e82319f1ff                CALL 0x0040a380
004f8a5d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f8a61  0f84f9000000              JZ 0x004f8b60
004f8a67  68b0d3b100                PUSH 0xb1d3b0
004f8a6c  8d4f78                    LEA ECX,[EDI + 0x78]
004f8a6f  e85c23f1ff                CALL 0x0040add0
004f8a74  84c0                      TEST AL,AL
004f8a76  0f84d5000000              JZ 0x004f8b51
004f8a7c  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f8a82  8d4c240c                  LEA ECX,[ESP + 0xc]
004f8a86  c744240c34000000          MOV dword ptr [ESP + 0xc],0x34
004f8a8e  e8eddc4500                CALL 0x00956780
004f8a93  83ec08                    SUB ESP,0x8
004f8a96  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f8a9e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f8aa5  6a00                      PUSH 0x0
004f8aa7  6a02                      PUSH 0x2
004f8aa9  51                        PUSH ECX
004f8aaa  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f8ab1  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f8ab7  ff742420                  PUSH dword ptr [ESP + 0x20]
004f8abb  e870514300                CALL 0x0092dc30
004f8ac0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f8ac6  6a10                      PUSH 0x10
004f8ac8  e8a3ab2000                CALL 0x00703670
004f8acd  e88e641f00                CALL 0x006eef60
004f8ad2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f8ad8  6a00                      PUSH 0x0
004f8ada  50                        PUSH EAX
004f8adb  6a01                      PUSH 0x1
004f8add  57                        PUSH EDI
004f8ade  6840b6c700                PUSH 0xc7b640
004f8ae3  8d873c030000              LEA EAX,[EDI + 0x33c]
004f8ae9  50                        PUSH EAX
004f8aea  6a48                      PUSH 0x48
004f8aec  68e8030000                PUSH 0x3e8
004f8af1  e81a592000                CALL 0x006fe410
004f8af6  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
004f8afc  89442410                  MOV dword ptr [ESP + 0x10],EAX
004f8b00  8db0bc030000              LEA ESI,[EAX + 0x3bc]
004f8b06  85c9                      TEST ECX,ECX
004f8b08  7414                      JZ 0x004f8b1e
004f8b0a  8d44240c                  LEA EAX,[ESP + 0xc]
004f8b0e  8974240c                  MOV dword ptr [ESP + 0xc],ESI
004f8b12  50                        PUSH EAX
004f8b13  81c1cc030000              ADD ECX,0x3cc
004f8b19  e8f266fdff                CALL 0x004cf210
004f8b1e  56                        PUSH ESI
004f8b1f  8bcf                      MOV ECX,EDI
004f8b21  893e                      MOV dword ptr [ESI],EDI
004f8b23  e8c851fdff                CALL 0x004cdcf0
004f8b28  8b742414                  MOV ESI,dword ptr [ESP + 0x14]
004f8b2c  33c9                      XOR ECX,ECX
004f8b2e  3b4f30                    CMP ECX,dword ptr [EDI + 0x30]
004f8b31  b803000000                MOV EAX,0x3
004f8b36  1bc9                      SBB ECX,ECX
004f8b38  234f30                    AND ECX,dword ptr [EDI + 0x30]
004f8b3b  3bc8                      CMP ECX,EAX
004f8b3d  0f42c1                    CMOVC EAX,ECX
004f8b40  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
004f8b44  8b0485680bb600            MOV EAX,dword ptr [EAX*0x4 + 0xb60b68]
004f8b4b  898174040000              MOV dword ptr [ECX + 0x474],EAX
004f8b51  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f8b55  7409                      JZ 0x004f8b60
004f8b57  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f8b5e  7547                      JNZ 0x004f8ba7
004f8b60  6a00                      PUSH 0x0
004f8b62  6854bcb100                PUSH 0xb1bc54
004f8b67  8d4f48                    LEA ECX,[EDI + 0x48]
004f8b6a  e81118f1ff                CALL 0x0040a380
004f8b6f  c787100400000a000000      MOV dword ptr [EDI + 0x410],0xa
004f8b79  eb2c                      JMP 0x004f8ba7
004f8b7b  6a00                      PUSH 0x0
004f8b7d  6854bcb100                PUSH 0xb1bc54
004f8b82  8d4f48                    LEA ECX,[EDI + 0x48]
004f8b85  e8f617f1ff                CALL 0x0040a380
004f8b8a  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
004f8b8e  298710040000              SUB dword ptr [EDI + 0x410],EAX
004f8b94  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004f8b9b  7f0a                      JG 0x004f8ba7
004f8b9d  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004f8ba7  85f6                      TEST ESI,ESI
004f8ba9  0f8505010000              JNZ 0x004f8cb4
004f8baf  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004f8bb7  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004f8bbf  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004f8bc7  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004f8bcf  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004f8bd7  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004f8bdf  5f                        POP EDI
004f8be0  5e                        POP ESI
004f8be1  5b                        POP EBX
004f8be2  8be5                      MOV ESP,EBP
004f8be4  5d                        POP EBP
004f8be5  c3                        RET
004f8be6  838f6801000001            OR dword ptr [EDI + 0x168],0x1
004f8bed  818f6c01000008200000      OR dword ptr [EDI + 0x16c],0x2008
004f8bf7  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004f8bfe  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004f8c08  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
004f8c12  c787100400000a000000      MOV dword ptr [EDI + 0x410],0xa
004f8c1c  85f6                      TEST ESI,ESI
004f8c1e  7561                      JNZ 0x004f8c81
004f8c20  8b4c240c                  MOV ECX,dword ptr [ESP + 0xc]
004f8c24  8d873c030000              LEA EAX,[EDI + 0x33c]
004f8c2a  50                        PUSH EAX
004f8c2b  e860a03100                CALL 0x00812c90
004f8c30  8d8f14040000              LEA ECX,[EDI + 0x414]
004f8c36  8bf0                      MOV ESI,EAX
004f8c38  e8b3e32e00                CALL 0x007e6ff0
004f8c3d  8b4c240c                  MOV ECX,dword ptr [ESP + 0xc]
004f8c41  8bc6                      MOV EAX,ESI
004f8c43  99                        CDQ
004f8c44  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
004f8c4c  f7790c                    IDIV dword ptr [ECX + 0xc]
004f8c4f  660f6ed2                  MOVD XMM2,EDX
004f8c53  660f6ec8                  MOVD XMM1,EAX
004f8c57  0f5bd2                    CVTDQ2PS XMM2,XMM2
004f8c5a  0f5bc9                    CVTDQ2PS XMM1,XMM1
004f8c5d  f30f59d0                  MULSS XMM2,XMM0
004f8c61  f30f59c8                  MULSS XMM1,XMM0
004f8c65  f30f58d0                  ADDSS XMM2,XMM0
004f8c69  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
004f8c71  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
004f8c79  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
004f8c81  84db                      TEST BL,BL
004f8c83  742f                      JZ 0x004f8cb4
004f8c85  6a00                      PUSH 0x0
004f8c87  681ceeb100                PUSH 0xb1ee1c
004f8c8c  8d4f48                    LEA ECX,[EDI + 0x48]
004f8c8f  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004f8c99  e8e216f1ff                CALL 0x0040a380
004f8c9e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f8ca2  7410                      JZ 0x004f8cb4
004f8ca4  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f8ca7  8d4f78                    LEA ECX,[EDI + 0x78]
004f8caa  8b4030                    MOV EAX,dword ptr [EAX + 0x30]
004f8cad  48                        DEC EAX
004f8cae  50                        PUSH EAX
004f8caf  e84c00f1ff                CALL 0x00408d00
004f8cb4  5f                        POP EDI
004f8cb5  5e                        POP ESI
004f8cb6  5b                        POP EBX
004f8cb7  8be5                      MOV ESP,EBP
004f8cb9  5d                        POP EBP
004f8cba  c3                        RET
