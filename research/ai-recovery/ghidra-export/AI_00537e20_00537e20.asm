; J460 NPC AI 0x00537e20 AI_00537e20
; types=231,964
; identities=231.0.0,231.1.0,964.0.0
; entry=00537e20
00537e20  53                        PUSH EBX
00537e21  8bdc                      MOV EBX,ESP
00537e23  83ec08                    SUB ESP,0x8
00537e26  83e4f8                    AND ESP,0xfffffff8
00537e29  83c404                    ADD ESP,0x4
00537e2c  55                        PUSH EBP
00537e2d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00537e30  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00537e34  8bec                      MOV EBP,ESP
00537e36  83ec10                    SUB ESP,0x10
00537e39  56                        PUSH ESI
00537e3a  57                        PUSH EDI
00537e3b  8bf9                      MOV EDI,ECX
00537e3d  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00537e44  7541                      JNZ 0x00537e87
00537e46  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00537e4c  818f6801000000000080      OR dword ptr [EDI + 0x168],0x80000000
00537e56  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00537e5c  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00537e66  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00537e6c  898734030000              MOV dword ptr [EDI + 0x334],EAX
00537e72  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00537e78  898738030000              MOV dword ptr [EDI + 0x338],EAX
00537e7e  5f                        POP EDI
00537e7f  5e                        POP ESI
00537e80  8be5                      MOV ESP,EBP
00537e82  5d                        POP EBP
00537e83  8be3                      MOV ESP,EBX
00537e85  5b                        POP EBX
00537e86  c3                        RET
00537e87  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00537e8f  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00537e97  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00537e9f  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00537ea7  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00537eaf  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00537eb7  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00537ebf  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00537ec7  817f28e7000000            CMP dword ptr [EDI + 0x28],0xe7
00537ece  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00537ed6  0f858e020000              JNZ 0x0053816a
00537edc  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00537ee0  7508                      JNZ 0x00537eea
00537ee2  8d4f48                    LEA ECX,[EDI + 0x48]
00537ee5  e974020000                JMP 0x0053815e
00537eea  e851691800                CALL 0x006be840
00537eef  0f57e4                    XORPS XMM4,XMM4
00537ef2  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00537efa  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00537f02  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00537f05  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00537f0d  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00537f15  85c0                      TEST EAX,EAX
00537f17  0f84ba000000              JZ 0x00537fd7
00537f1d  80783400                  CMP byte ptr [EAX + 0x34],0x0
00537f21  0f84b0000000              JZ 0x00537fd7
00537f27  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00537f2e  741f                      JZ 0x00537f4f
00537f30  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00537f38  8d45f0                    LEA EAX,[EBP + -0x10]
00537f3b  50                        PUSH EAX
00537f3c  8bcf                      MOV ECX,EDI
00537f3e  e85d061a00                CALL 0x006d85a0
00537f43  0f57e4                    XORPS XMM4,XMM4
00537f46  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00537f4a  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00537f4f  0f2ed4                    UCOMISS XMM2,XMM4
00537f52  9f                        LAHF
00537f53  f6c444                    TEST AH,0x44
00537f56  7b7f                      JNP 0x00537fd7
00537f58  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
00537f60  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
00537f68  0f54c3                    ANDPS XMM0,XMM3
00537f6b  0f2fc8                    COMISS XMM1,XMM0
00537f6e  7667                      JBE 0x00537fd7
00537f70  f30f1005a0a9ba00          MOVSS XMM0,dword ptr [0x00baa9a0]
00537f78  0f28ca                    MOVAPS XMM1,XMM2
00537f7b  0f54cb                    ANDPS XMM1,XMM3
00537f7e  0f2fc1                    COMISS XMM0,XMM1
00537f81  7654                      JBE 0x00537fd7
00537f83  0f2fd4                    COMISS XMM2,XMM4
00537f86  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00537f89  8d4f48                    LEA ECX,[EDI + 0x48]
00537f8c  7627                      JBE 0x00537fb5
00537f8e  85c0                      TEST EAX,EAX
00537f90  750e                      JNZ 0x00537fa0
00537f92  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00537f96  ff75fc                    PUSH dword ptr [EBP + -0x4]
00537f99  685c0cb600                PUSH 0xb60c5c
00537f9e  eb32                      JMP 0x00537fd2
00537fa0  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00537fa7  0f9445fc                  SETZ byte ptr [EBP + -0x4]
00537fab  ff75fc                    PUSH dword ptr [EBP + -0x4]
00537fae  685c0cb600                PUSH 0xb60c5c
00537fb3  eb1d                      JMP 0x00537fd2
00537fb5  85c0                      TEST EAX,EAX
00537fb7  7506                      JNZ 0x00537fbf
00537fb9  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00537fbd  eb0b                      JMP 0x00537fca
00537fbf  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00537fc6  0f9445fc                  SETZ byte ptr [EBP + -0x4]
00537fca  ff75fc                    PUSH dword ptr [EBP + -0x4]
00537fcd  68880cb600                PUSH 0xb60c88
00537fd2  e8a923edff                CALL 0x0040a380
00537fd7  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00537fdb  8d4748                    LEA EAX,[EDI + 0x48]
00537fde  0f8478010000              JZ 0x0053815c
00537fe4  68b0d3b100                PUSH 0xb1d3b0
00537fe9  8d4f78                    LEA ECX,[EDI + 0x78]
00537fec  e8df2dedff                CALL 0x0040add0
00537ff1  84c0                      TEST AL,AL
00537ff3  0f8451010000              JZ 0x0053814a
00537ff9  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00537fff  8d4dfc                    LEA ECX,[EBP + -0x4]
00538002  c745fcf9000000            MOV dword ptr [EBP + -0x4],0xf9
00538009  e872e74100                CALL 0x00956780
0053800e  83ec08                    SUB ESP,0x8
00538011  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00538019  c704240000803f            MOV dword ptr [ESP],0x3f800000
00538020  6a00                      PUSH 0x0
00538022  6a02                      PUSH 0x2
00538024  51                        PUSH ECX
00538025  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053802c  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00538032  ff75fc                    PUSH dword ptr [EBP + -0x4]
00538035  e8f65b3f00                CALL 0x0092dc30
0053803a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00538040  8d4dfc                    LEA ECX,[EBP + -0x4]
00538043  c745fc02010000            MOV dword ptr [EBP + -0x4],0x102
0053804a  e831e74100                CALL 0x00956780
0053804f  83ec08                    SUB ESP,0x8
00538052  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0053805a  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00538061  6a00                      PUSH 0x0
00538063  6a02                      PUSH 0x2
00538065  51                        PUSH ECX
00538066  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053806d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00538073  ff75fc                    PUSH dword ptr [EBP + -0x4]
00538076  e8b55b3f00                CALL 0x0092dc30
0053807b  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00538083  8d4f48                    LEA ECX,[EDI + 0x48]
00538086  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
0053808e  0f28e2                    MOVAPS XMM4,XMM2
00538091  f30f5c2504a9ba00          SUBSS XMM4,dword ptr [0x00baa904]
00538099  f30f581504a9ba00          ADDSS XMM2,dword ptr [0x00baa904]
005380a1  0f28eb                    MOVAPS XMM5,XMM3
005380a4  f30f5c2d7ca8ba00          SUBSS XMM5,dword ptr [0x00baa87c]
005380ac  f30f581d7ca8ba00          ADDSS XMM3,dword ptr [0x00baa87c]
005380b4  685c0cb600                PUSH 0xb60c5c
005380b9  e81224edff                CALL 0x0040a4d0
005380be  8ac8                      MOV CL,AL
005380c0  84c9                      TEST CL,CL
005380c2  7410                      JZ 0x005380d4
005380c4  c745f000002042            MOV dword ptr [EBP + -0x10],0x42200000
005380cb  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
005380d2  eb0e                      JMP 0x005380e2
005380d4  c745f8000020c2            MOV dword ptr [EBP + -0x8],0xc2200000
005380db  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
005380e2  84c9                      TEST CL,CL
005380e4  8d55f0                    LEA EDX,[EBP + -0x10]
005380e7  8d45f8                    LEA EAX,[EBP + -0x8]
005380ea  0f45c2                    CMOVNZ EAX,EDX
005380ed  83ec10                    SUB ESP,0x10
005380f0  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005380f4  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
005380f9  f30f58d0                  ADDSS XMM2,XMM0
005380fd  8bc4                      MOV EAX,ESP
005380ff  f30f58e0                  ADDSS XMM4,XMM0
00538103  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
0053810a  83ec14                    SUB ESP,0x14
0053810d  f30f58d9                  ADDSS XMM3,XMM1
00538111  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
00538114  8d45f0                    LEA EAX,[EBP + -0x10]
00538117  f30f58e9                  ADDSS XMM5,XMM1
0053811b  f30f1155f0                MOVSS dword ptr [EBP + -0x10],XMM2
00538120  c744241000004842          MOV dword ptr [ESP + 0x10],0x42480000
00538128  57                        PUSH EDI
00538129  50                        PUSH EAX
0053812a  8d45f8                    LEA EAX,[EBP + -0x8]
0053812d  f30f115df4                MOVSS dword ptr [EBP + -0xc],XMM3
00538132  f30f101d54a8ba00          MOVSS XMM3,dword ptr [0x00baa854]
0053813a  50                        PUSH EAX
0053813b  f30f1165f8                MOVSS dword ptr [EBP + -0x8],XMM4
00538140  f30f116dfc                MOVSS dword ptr [EBP + -0x4],XMM5
00538145  e8866e1c00                CALL 0x006fefd0
0053814a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053814e  8d4748                    LEA EAX,[EDI + 0x48]
00538151  7409                      JZ 0x0053815c
00538153  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053815a  750e                      JNZ 0x0053816a
0053815c  8bc8                      MOV ECX,EAX
0053815e  6a00                      PUSH 0x0
00538160  6854bcb100                PUSH 0xb1bc54
00538165  e81622edff                CALL 0x0040a380
0053816a  817f28c4030000            CMP dword ptr [EDI + 0x28],0x3c4
00538171  7538                      JNZ 0x005381ab
00538173  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
00538179  898780030000              MOV dword ptr [EDI + 0x380],EAX
0053817f  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00538182  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
00538185  3bc1                      CMP EAX,ECX
00538187  7422                      JZ 0x005381ab
00538189  0f1f8000000000            NOP dword ptr [EAX]
00538190  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00538198  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0053819c  83c038                    ADD EAX,0x38
0053819f  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
005381a7  3bc1                      CMP EAX,ECX
005381a9  75e5                      JNZ 0x00538190
005381ab  5f                        POP EDI
005381ac  5e                        POP ESI
005381ad  8be5                      MOV ESP,EBP
005381af  5d                        POP EBP
005381b0  8be3                      MOV ESP,EBX
005381b2  5b                        POP EBX
005381b3  c3                        RET
