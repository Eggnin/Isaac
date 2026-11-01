; J460 NPC AI 0x0050f280 AI_0050f280
; types=25
; identities=25.0.0,25.1.0,25.2.0,25.3.0,25.3.1,25.4.0,25.5.0,25.6.0
; entry=0050f280
0050f280  55                        PUSH EBP
0050f281  8bec                      MOV EBP,ESP
0050f283  83e4f8                    AND ESP,0xfffffff8
0050f286  81ec30010000              SUB ESP,0x130
0050f28c  a1b493bf00                MOV EAX,[0x00bf93b4]
0050f291  33c4                      XOR EAX,ESP
0050f293  8984242c010000            MOV dword ptr [ESP + 0x12c],EAX
0050f29a  56                        PUSH ESI
0050f29b  57                        PUSH EDI
0050f29c  8bf9                      MOV EDI,ECX
0050f29e  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0050f2a5  0f8510010000              JNZ 0x0050f3bb
0050f2ab  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0050f2ae  83f803                    CMP EAX,0x3
0050f2b1  754b                      JNZ 0x0050f2fe
0050f2b3  0f280520caba00            MOVAPS XMM0,xmmword ptr [0x00baca20]
0050f2ba  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050f2c0  8d442430                  LEA EAX,[ESP + 0x30]
0050f2c4  c74424500000803f          MOV dword ptr [ESP + 0x50],0x3f800000
0050f2cc  c74424548483033f          MOV dword ptr [ESP + 0x54],0x3f038384
0050f2d4  0f57c9                    XORPS XMM1,XMM1
0050f2d7  c74424588180803b          MOV dword ptr [ESP + 0x58],0x3b808081
0050f2df  3bc8                      CMP ECX,EAX
0050f2e1  744d                      JZ 0x0050f330
0050f2e3  8b442458                  MOV EAX,dword ptr [ESP + 0x58]
0050f2e7  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0050f2ea  f30f7e442450              MOVQ XMM0,qword ptr [ESP + 0x50]
0050f2f0  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0050f2f5  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
0050f2f9  894128                    MOV dword ptr [ECX + 0x28],EAX
0050f2fc  eb32                      JMP 0x0050f330
0050f2fe  83f804                    CMP EAX,0x4
0050f301  7518                      JNZ 0x0050f31b
0050f303  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0050f309  818f6801000000000100      OR dword ptr [EDI + 0x168],0x10000
0050f313  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0050f319  eb15                      JMP 0x0050f330
0050f31b  83f805                    CMP EAX,0x5
0050f31e  7510                      JNZ 0x0050f330
0050f320  68804ec300                PUSH 0xc34e80
0050f325  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0050f32b  e8c07eefff                CALL 0x004071f0
0050f330  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050f33a  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0050f344  e817fc1d00                CALL 0x006eef60
0050f349  660f6ec0                  MOVD XMM0,EAX
0050f34d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050f351  c1e81f                    SHR EAX,0x1f
0050f354  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050f35d  660f5ac0                  CVTPD2PS XMM0,XMM0
0050f361  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050f369  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0050f371  f30f58c0                  ADDSS XMM0,XMM0
0050f375  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0050f37b  e8c0e1f0ff                CALL 0x0041d540
0050f380  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0050f386  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
0050f38c  e88fe1f0ff                CALL 0x0041d520
0050f391  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
0050f397  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0050f39f  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0050f3a7  5f                        POP EDI
0050f3a8  5e                        POP ESI
0050f3a9  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
0050f3b0  33cc                      XOR ECX,ESP
0050f3b2  e874fd5d00                CALL 0x00aef12b
0050f3b7  8be5                      MOV ESP,EBP
0050f3b9  5d                        POP EBP
0050f3ba  c3                        RET
0050f3bb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050f3c1  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
0050f3c7  81c1a8ba0100              ADD ECX,0x1baa8
0050f3cd  51                        PUSH ECX
0050f3ce  e85df14a00                CALL 0x009be530
0050f3d3  8bd0                      MOV EDX,EAX
0050f3d5  85d2                      TEST EDX,EDX
0050f3d7  0f84ed000000              JZ 0x0050f4ca
0050f3dd  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0050f3e4  0f85e7000000              JNZ 0x0050f4d1
0050f3ea  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0050f3f0  81e100000020              AND ECX,0x20000000
0050f3f6  83c900                    OR ECX,0x0
0050f3f9  0f85cb000000              JNZ 0x0050f4ca
0050f3ff  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
0050f402  f30f10823c030000          MOVSS XMM0,dword ptr [EDX + 0x33c]
0050f40a  f30f108a40030000          MOVSS XMM1,dword ptr [EDX + 0x340]
0050f412  8b8a68010000              MOV ECX,dword ptr [EDX + 0x168]
0050f418  8bb26c010000              MOV ESI,dword ptr [EDX + 0x16c]
0050f41e  8944245c                  MOV dword ptr [ESP + 0x5c],EAX
0050f422  8b422c                    MOV EAX,dword ptr [EDX + 0x2c]
0050f425  89442460                  MOV dword ptr [ESP + 0x60],EAX
0050f429  8b4234                    MOV EAX,dword ptr [EDX + 0x34]
0050f42c  89442464                  MOV dword ptr [ESP + 0x64],EAX
0050f430  8b4238                    MOV EAX,dword ptr [EDX + 0x38]
0050f433  89442468                  MOV dword ptr [ESP + 0x68],EAX
0050f437  8bc1                      MOV EAX,ECX
0050f439  f30f1144246c              MOVSS dword ptr [ESP + 0x6c],XMM0
0050f43f  2500010000                AND EAX,0x100
0050f444  83c800                    OR EAX,0x0
0050f447  f30f108260030000          MOVSS XMM0,dword ptr [EDX + 0x360]
0050f44f  f30f114c2470              MOVSS dword ptr [ESP + 0x70],XMM1
0050f455  f30f108a64030000          MOVSS XMM1,dword ptr [EDX + 0x364]
0050f45d  f30f11442474              MOVSS dword ptr [ESP + 0x74],XMM0
0050f463  f30f114c2478              MOVSS dword ptr [ESP + 0x78],XMM1
0050f469  c744241801000000          MOV dword ptr [ESP + 0x18],0x1
0050f471  7508                      JNZ 0x0050f47b
0050f473  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
0050f47b  81e100000020              AND ECX,0x20000000
0050f481  83c900                    OR ECX,0x0
0050f484  7407                      JZ 0x0050f48d
0050f486  b902000000                MOV ECX,0x2
0050f48b  eb02                      JMP 0x0050f48f
0050f48d  33c9                      XOR ECX,ECX
0050f48f  81e600004000              AND ESI,0x400000
0050f495  33c0                      XOR EAX,EAX
0050f497  0bc6                      OR EAX,ESI
0050f499  7407                      JZ 0x0050f4a2
0050f49b  b804000000                MOV EAX,0x4
0050f4a0  eb02                      JMP 0x0050f4a4
0050f4a2  33c0                      XOR EAX,EAX
0050f4a4  0bc1                      OR EAX,ECX
0050f4a6  89942480000000            MOV dword ptr [ESP + 0x80],EDX
0050f4ad  0b442418                  OR EAX,dword ptr [ESP + 0x18]
0050f4b1  8bcf                      MOV ECX,EDI
0050f4b3  6a00                      PUSH 0x0
0050f4b5  6a01                      PUSH 0x1
0050f4b7  89842484000000            MOV dword ptr [ESP + 0x84],EAX
0050f4be  8d442464                  LEA EAX,[ESP + 0x64]
0050f4c2  6aff                      PUSH -0x1
0050f4c4  50                        PUSH EAX
0050f4c5  e8a6e31900                CALL 0x006ad870
0050f4ca  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0050f4d1  f30f103554a4ba00          MOVSS XMM6,dword ptr [0x00baa454]
0050f4d9  f30f102554a3ba00          MOVSS XMM4,dword ptr [0x00baa354]
0050f4e1  0f8547010000              JNZ 0x0050f62e
0050f4e7  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0050f4ed  83f805                    CMP EAX,0x5
0050f4f0  7554                      JNZ 0x0050f546
0050f4f2  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0050f4f9  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
0050f4ff  898760030000              MOV dword ptr [EDI + 0x360],EAX
0050f505  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
0050f50b  898764030000              MOV dword ptr [EDI + 0x364],EAX
0050f511  0f8417010000              JZ 0x0050f62e
0050f517  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0050f51f  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0050f527  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0050f52f  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0050f537  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050f541  e9e8000000                JMP 0x0050f62e
0050f546  83f810                    CMP EAX,0x10
0050f549  0f85df000000              JNZ 0x0050f62e
0050f54f  f30f109750030000          MOVSS XMM2,dword ptr [EDI + 0x350]
0050f557  f30f102d20a1ba00          MOVSS XMM5,dword ptr [0x00baa120]
0050f55f  0f28c2                    MOVAPS XMM0,XMM2
0050f562  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
0050f56a  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0050f572  f30f59c5                  MULSS XMM0,XMM5
0050f576  0f2ede                    UCOMISS XMM3,XMM6
0050f579  f30f59c3                  MULSS XMM0,XMM3
0050f57d  9f                        LAHF
0050f57e  f30f5cc8                  SUBSS XMM1,XMM0
0050f582  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0050f58a  f30f59cb                  MULSS XMM1,XMM3
0050f58e  f30f58ca                  ADDSS XMM1,XMM2
0050f592  0f28d4                    MOVAPS XMM2,XMM4
0050f595  f30f118f50030000          MOVSS dword ptr [EDI + 0x350],XMM1
0050f59d  f6c444                    TEST AH,0x44
0050f5a0  7b13                      JNP 0x0050f5b5
0050f5a2  0f28c3                    MOVAPS XMM0,XMM3
0050f5a5  f30f59dc                  MULSS XMM3,XMM4
0050f5a9  f30f58c4                  ADDSS XMM0,XMM4
0050f5ad  f30f5cc3                  SUBSS XMM0,XMM3
0050f5b1  f30f5ed0                  DIVSS XMM2,XMM0
0050f5b5  f30f1087e4000000          MOVSS XMM0,dword ptr [EDI + 0xe4]
0050f5bd  0f28ce                    MOVAPS XMM1,XMM6
0050f5c0  f30f5cca                  SUBSS XMM1,XMM2
0050f5c4  0f28d6                    MOVAPS XMM2,XMM6
0050f5c7  f30f5cd0                  SUBSS XMM2,XMM0
0050f5cb  f30f59d1                  MULSS XMM2,XMM1
0050f5cf  f30f58d0                  ADDSS XMM2,XMM0
0050f5d3  0f28c2                    MOVAPS XMM0,XMM2
0050f5d6  f30f59154079c300          MULSS XMM2,dword ptr [0x00c37940]
0050f5de  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0050f5e6  f30f1197e8000000          MOVSS dword ptr [EDI + 0xe8],XMM2
0050f5ee  f30f1187e4000000          MOVSS dword ptr [EDI + 0xe4],XMM0
0050f5f6  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0050f5fe  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0050f606  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0050f60e  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0050f616  f30f59cd                  MULSS XMM1,XMM5
0050f61a  f30f59c5                  MULSS XMM0,XMM5
0050f61e  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0050f626  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0050f62e  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
0050f636  0f57c0                    XORPS XMM0,XMM0
0050f639  f30f590de0a3ba00          MULSS XMM1,dword ptr [0x00baa3e0]
0050f641  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0050f647  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0050f64d  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
0050f655  83f808                    CMP EAX,0x8
0050f658  0f8561010000              JNZ 0x0050f7bf
0050f65e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050f662  0f8430010000              JZ 0x0050f798
0050f668  68dcd2b100                PUSH 0xb1d2dc
0050f66d  8d4f78                    LEA ECX,[EDI + 0x78]
0050f670  e85bb7efff                CALL 0x0040add0
0050f675  84c0                      TEST AL,AL
0050f677  0f840c010000              JZ 0x0050f789
0050f67d  837f2c04                  CMP dword ptr [EDI + 0x2c],0x4
0050f681  0f8502010000              JNZ 0x0050f789
0050f687  8bcf                      MOV ECX,EDI
0050f689  e8b2f11a00                CALL 0x006be840
0050f68e  8db73c030000              LEA ESI,[EDI + 0x33c]
0050f694  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0050f69c  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0050f6a1  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0050f6a9  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0050f6ad  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
0050f6b3  f30f108f200f0000          MOVSS XMM1,dword ptr [EDI + 0xf20]
0050f6bb  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
0050f6c2  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0050f6c8  9f                        LAHF
0050f6c9  f6c444                    TEST AH,0x44
0050f6cc  7a15                      JP 0x0050f6e3
0050f6ce  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
0050f6d6  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0050f6dd  9f                        LAHF
0050f6de  f6c444                    TEST AH,0x44
0050f6e1  7b14                      JNP 0x0050f6f7
0050f6e3  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
0050f6eb  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
0050f6f1  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0050f6f7  8d8c2488000000            LEA ECX,[ESP + 0x88]
0050f6fe  e82df8f2ff                CALL 0x0043ef30
0050f703  68d4c7c500                PUSH 0xc5c7d4
0050f708  8d8c24b8000000            LEA ECX,[ESP + 0xb8]
0050f70f  c784242001000001000000    MOV dword ptr [ESP + 0x120],0x1
0050f71a  e8d17aefff                CALL 0x004071f0
0050f71f  51                        PUSH ECX
0050f720  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050f727  6a00                      PUSH 0x0
0050f729  6a02                      PUSH 0x2
0050f72b  51                        PUSH ECX
0050f72c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050f733  8bcf                      MOV ECX,EDI
0050f735  68f9000000                PUSH 0xf9
0050f73a  e861741c00                CALL 0x006d6ba0
0050f73f  8d44241c                  LEA EAX,[ESP + 0x1c]
0050f743  50                        PUSH EAX
0050f744  8d4c2414                  LEA ECX,[ESP + 0x14]
0050f748  e8e3085000                CALL 0x00a10030
0050f74d  8bcf                      MOV ECX,EDI
0050f74f  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0050f753  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0050f758  8d842488000000            LEA EAX,[ESP + 0x88]
0050f75f  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0050f767  50                        PUSH EAX
0050f768  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0050f770  8d442414                  LEA EAX,[ESP + 0x14]
0050f774  6a00                      PUSH 0x0
0050f776  50                        PUSH EAX
0050f777  56                        PUSH ESI
0050f778  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
0050f77e  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0050f784  e857bb1b00                CALL 0x006cb2e0
0050f789  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050f78d  7409                      JZ 0x0050f798
0050f78f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0050f796  750a                      JNZ 0x0050f7a2
0050f798  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050f7a2  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050f7aa  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0050f7b2  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050f7ba  e9c4050000                JMP 0x0050fd83
0050f7bf  83f809                    CMP EAX,0x9
0050f7c2  0f859a030000              JNZ 0x0050fb62
0050f7c8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050f7cc  740d                      JZ 0x0050f7db
0050f7ce  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0050f7d5  0f8572030000              JNZ 0x0050fb4d
0050f7db  8b07                      MOV EAX,dword ptr [EDI]
0050f7dd  8d4c245c                  LEA ECX,[ESP + 0x5c]
0050f7e1  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
0050f7e4  e88764f2ff                CALL 0x00435c70
0050f7e9  50                        PUSH EAX
0050f7ea  8bcf                      MOV ECX,EDI
0050f7ec  ffd2                      CALL EDX
0050f7ee  8d4c245c                  LEA ECX,[ESP + 0x5c]
0050f7f2  e87979efff                CALL 0x00407170
0050f7f7  6a00                      PUSH 0x0
0050f7f9  6a00                      PUSH 0x0
0050f7fb  6a04                      PUSH 0x4
0050f7fd  6a00                      PUSH 0x0
0050f7ff  51                        PUSH ECX
0050f800  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
0050f807  57                        PUSH EDI
0050f808  50                        PUSH EAX
0050f809  83ec10                    SUB ESP,0x10
0050f80c  8bc4                      MOV EAX,ESP
0050f80e  51                        PUSH ECX
0050f80f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050f815  c70000000000              MOV dword ptr [EAX],0x0
0050f81b  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
0050f822  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
0050f829  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
0050f830  8d873c030000              LEA EAX,[EDI + 0x33c]
0050f836  c704240000a042            MOV dword ptr [ESP],0x42a00000
0050f83d  50                        PUSH EAX
0050f83e  e81d081f00                CALL 0x00700060
0050f843  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050f849  6a0a                      PUSH 0xa
0050f84b  e8203e1f00                CALL 0x00703670
0050f850  33f6                      XOR ESI,ESI
0050f852  89742424                  MOV dword ptr [ESP + 0x24],ESI
0050f856  e805f71d00                CALL 0x006eef60
0050f85b  660f6ec0                  MOVD XMM0,EAX
0050f85f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050f863  c1e81f                    SHR EAX,0x1f
0050f866  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050f86f  660f5ac8                  CVTPD2PS XMM1,XMM0
0050f873  660f6ec6                  MOVD XMM0,ESI
0050f877  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0050f87f  0f5bc0                    CVTDQ2PS XMM0,XMM0
0050f882  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
0050f88a  f30f5c0580a2ba00          SUBSS XMM0,dword ptr [0x00baa280]
0050f892  f30f58c8                  ADDSS XMM1,XMM0
0050f896  f30f590df0a8ba00          MULSS XMM1,dword ptr [0x00baa8f0]
0050f89e  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
0050f8a6  0f28c1                    MOVAPS XMM0,XMM1
0050f8a9  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
0050f8af  e86cdcf0ff                CALL 0x0041d520
0050f8b4  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0050f8ba  e8a1f61d00                CALL 0x006eef60
0050f8bf  8bf0                      MOV ESI,EAX
0050f8c1  e89af61d00                CALL 0x006eef60
0050f8c6  660f6ec8                  MOVD XMM1,EAX
0050f8ca  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0050f8ce  c1e81f                    SHR EAX,0x1f
0050f8d1  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0050f8da  660f5ac1                  CVTPD2PS XMM0,XMM1
0050f8de  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050f8e6  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
0050f8ee  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
0050f8f6  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0050f8fc  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
0050f902  e839dcf0ff                CALL 0x0041d540
0050f907  f30f10542410              MOVSS XMM2,dword ptr [ESP + 0x10]
0050f90d  8d44241c                  LEA EAX,[ESP + 0x1c]
0050f911  f30f59442428              MULSS XMM0,dword ptr [ESP + 0x28]
0050f917  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050f91d  f30f59542428              MULSS XMM2,dword ptr [ESP + 0x28]
0050f923  6a00                      PUSH 0x0
0050f925  56                        PUSH ESI
0050f926  6a00                      PUSH 0x0
0050f928  57                        PUSH EDI
0050f929  50                        PUSH EAX
0050f92a  8d873c030000              LEA EAX,[EDI + 0x33c]
0050f930  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0050f936  50                        PUSH EAX
0050f937  6a3b                      PUSH 0x3b
0050f939  68e8030000                PUSH 0x3e8
0050f93e  f30f11542440              MOVSS dword ptr [ESP + 0x40],XMM2
0050f944  e8c7ea1e00                CALL 0x006fe410
0050f949  8bf0                      MOV ESI,EAX
0050f94b  e810f61d00                CALL 0x006eef60
0050f950  660f6ec0                  MOVD XMM0,EAX
0050f954  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050f958  c1e81f                    SHR EAX,0x1f
0050f95b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050f964  660f5ac0                  CVTPD2PS XMM0,XMM0
0050f968  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050f970  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0050f978  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0050f980  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
0050f988  e8d3f51d00                CALL 0x006eef60
0050f98d  b90f000000                MOV ECX,0xf
0050f992  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
0050f99a  33d2                      XOR EDX,EDX
0050f99c  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
0050f9a7  f7f1                      DIV ECX
0050f9a9  8b06                      MOV EAX,dword ptr [ESI]
0050f9ab  0f57c0                    XORPS XMM0,XMM0
0050f9ae  6a01                      PUSH 0x1
0050f9b0  6a00                      PUSH 0x0
0050f9b2  03d1                      ADD EDX,ECX
0050f9b4  c784248c00000000000000    MOV dword ptr [ESP + 0x8c],0x0
0050f9bf  68ff000000                PUSH 0xff
0050f9c4  0f11442478                MOVUPS xmmword ptr [ESP + 0x78],XMM0
0050f9c9  8d4c2468                  LEA ECX,[ESP + 0x68]
0050f9cd  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
0050f9d3  0f280500bdba00            MOVAPS XMM0,xmmword ptr [0x00babd00]
0050f9da  6aff                      PUSH -0x1
0050f9dc  899660040000              MOV dword ptr [ESI + 0x460],EDX
0050f9e2  0f1144246c                MOVUPS xmmword ptr [ESP + 0x6c],XMM0
0050f9e7  51                        PUSH ECX
0050f9e8  8bce                      MOV ECX,ESI
0050f9ea  ff503c                    CALL dword ptr [EAX + 0x3c]
0050f9ed  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
0050f9f5  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
0050f9fd  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
0050fa05  c78654030000a8fdffff      MOV dword ptr [ESI + 0x354],0xfffffda8
0050fa0f  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
0050fa17  f30f118ee4000000          MOVSS dword ptr [ESI + 0xe4],XMM1
0050fa1f  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
0050fa27  8b742424                  MOV ESI,dword ptr [ESP + 0x24]
0050fa2b  46                        INC ESI
0050fa2c  89742424                  MOV dword ptr [ESP + 0x24],ESI
0050fa30  83fe0a                    CMP ESI,0xa
0050fa33  0f8c1dfeffff              JL 0x0050f856
0050fa39  33f6                      XOR ESI,ESI
0050fa3b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0050fa40  660f6ec6                  MOVD XMM0,ESI
0050fa44  0f5bc0                    CVTDQ2PS XMM0,XMM0
0050fa47  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
0050fa4f  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0050fa57  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0050fa5d  e8bedaf0ff                CALL 0x0041d520
0050fa62  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0050fa68  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0050fa6e  e8cddaf0ff                CALL 0x0041d540
0050fa73  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0050fa79  e8e2f41d00                CALL 0x006eef60
0050fa7e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050fa84  6a00                      PUSH 0x0
0050fa86  50                        PUSH EAX
0050fa87  6a00                      PUSH 0x0
0050fa89  57                        PUSH EDI
0050fa8a  6840b6c700                PUSH 0xc7b640
0050fa8f  8d873c030000              LEA EAX,[EDI + 0x33c]
0050fa95  50                        PUSH EAX
0050fa96  68bb000000                PUSH 0xbb
0050fa9b  68e8030000                PUSH 0x3e8
0050faa0  e86be91e00                CALL 0x006fe410
0050faa5  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0050faab  8bc8                      MOV ECX,EAX
0050faad  8b10                      MOV EDX,dword ptr [EAX]
0050faaf  f30f118034030000          MOVSS dword ptr [EAX + 0x334],XMM0
0050fab7  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
0050fabd  f30f118038030000          MOVSS dword ptr [EAX + 0x338],XMM0
0050fac5  ff520c                    CALL dword ptr [EDX + 0xc]
0050fac8  46                        INC ESI
0050fac9  83fe04                    CMP ESI,0x4
0050facc  0f8c6effffff              JL 0x0050fa40
0050fad2  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0050fad9  8d44245c                  LEA EAX,[ESP + 0x5c]
0050fadd  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0050fae5  8bcf                      MOV ECX,EDI
0050fae7  50                        PUSH EAX
0050fae8  0f11442460                MOVUPS xmmword ptr [ESP + 0x60],XMM0
0050faed  8d873c030000              LEA EAX,[EDI + 0x33c]
0050faf3  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
0050fafe  0f57c0                    XORPS XMM0,XMM0
0050fb01  c784248400000000000000    MOV dword ptr [ESP + 0x84],0x0
0050fb0c  50                        PUSH EAX
0050fb0d  0f11442474                MOVUPS xmmword ptr [ESP + 0x74],XMM0
0050fb12  c784248c00000000000000    MOV dword ptr [ESP + 0x8c],0x0
0050fb1d  e82e6a1a00                CALL 0x006b6550
0050fb22  a17816c700                MOV EAX,[0x00c71678]
0050fb27  c7802c65020006000000      MOV dword ptr [EAX + 0x2652c],0x6
0050fb31  c7802865020006000000      MOV dword ptr [EAX + 0x26528],0x6
0050fb3b  c780306502000000803f      MOV dword ptr [EAX + 0x26530],0x3f800000
0050fb45  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
0050fb4d  f30f590d04a3ba00          MULSS XMM1,dword ptr [0x00baa304]
0050fb55  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
0050fb5d  e921020000                JMP 0x0050fd83
0050fb62  6a00                      PUSH 0x0
0050fb64  6804deb100                PUSH 0xb1de04
0050fb69  8d4f48                    LEA ECX,[EDI + 0x48]
0050fb6c  e80fa8efff                CALL 0x0040a380
0050fb71  837f2c04                  CMP dword ptr [EDI + 0x2c],0x4
0050fb75  0f8508020000              JNZ 0x0050fd83
0050fb7b  6a00                      PUSH 0x0
0050fb7d  68000a0001                PUSH 0x1000a00
0050fb82  8bcf                      MOV ECX,EDI
0050fb84  e8a778f0ff                CALL 0x00417430
0050fb89  84c0                      TEST AL,AL
0050fb8b  0f85f2010000              JNZ 0x0050fd83
0050fb91  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050fb98  8bcf                      MOV ECX,EDI
0050fb9a  7427                      JZ 0x0050fbc3
0050fb9c  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0050fba4  6a07                      PUSH 0x7
0050fba6  6a00                      PUSH 0x0
0050fba8  e8b3b21b00                CALL 0x006cae60
0050fbad  84c0                      TEST AL,AL
0050fbaf  0f84ce010000              JZ 0x0050fd83
0050fbb5  6a01                      PUSH 0x1
0050fbb7  8bcf                      MOV ECX,EDI
0050fbb9  e892941c00                CALL 0x006d9050
0050fbbe  e9a7010000                JMP 0x0050fd6a
0050fbc3  ff7720                    PUSH dword ptr [EDI + 0x20]
0050fbc6  6a03                      PUSH 0x3
0050fbc8  e843cb1900                CALL 0x006ac710
0050fbcd  84c0                      TEST AL,AL
0050fbcf  0f84ae010000              JZ 0x0050fd83
0050fbd5  6a00                      PUSH 0x0
0050fbd7  6800000020                PUSH 0x20000000
0050fbdc  8bcf                      MOV ECX,EDI
0050fbde  e84d78f0ff                CALL 0x00417430
0050fbe3  84c0                      TEST AL,AL
0050fbe5  7411                      JZ 0x0050fbf8
0050fbe7  8bcf                      MOV ECX,EDI
0050fbe9  e852ec1a00                CALL 0x006be840
0050fbee  83782801                  CMP dword ptr [EAX + 0x28],0x1
0050fbf2  0f848b010000              JZ 0x0050fd83
0050fbf8  a17816c700                MOV EAX,[0x00c71678]
0050fbfd  8bcf                      MOV ECX,EDI
0050fbff  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0050fc05  e836ec1a00                CALL 0x006be840
0050fc0a  8bcf                      MOV ECX,EDI
0050fc0c  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0050fc14  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0050fc1a  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0050fc22  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0050fc28  e813ec1a00                CALL 0x006be840
0050fc2d  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0050fc35  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0050fc3b  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
0050fc43  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0050fc49  e812f31d00                CALL 0x006eef60
0050fc4e  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
0050fc54  83ec0c                    SUB ESP,0xc
0050fc57  f30f10542434              MOVSS XMM2,dword ptr [ESP + 0x34]
0050fc5d  8bce                      MOV ECX,ESI
0050fc5f  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0050fc67  660f6ec0                  MOVD XMM0,EAX
0050fc6b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050fc6f  c1e81f                    SHR EAX,0x1f
0050fc72  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050fc7b  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
0050fc83  8d442428                  LEA EAX,[ESP + 0x28]
0050fc87  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
0050fc8f  c704240000a041            MOV dword ptr [ESP],0x41a00000
0050fc96  50                        PUSH EAX
0050fc97  660f5ac0                  CVTPD2PS XMM0,XMM0
0050fc9b  8d442420                  LEA EAX,[ESP + 0x20]
0050fc9f  50                        PUSH EAX
0050fca0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050fca8  f30f59055ca8ba00          MULSS XMM0,dword ptr [0x00baa85c]
0050fcb0  f30f59c8                  MULSS XMM1,XMM0
0050fcb4  f30f59d0                  MULSS XMM2,XMM0
0050fcb8  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0050fcbe  f30f58c1                  ADDSS XMM0,XMM1
0050fcc2  f30f104c2438              MOVSS XMM1,dword ptr [ESP + 0x38]
0050fcc8  f30f58ca                  ADDSS XMM1,XMM2
0050fccc  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0050fcd2  f30f114c2434              MOVSS dword ptr [ESP + 0x34],XMM1
0050fcd8  e873323000                CALL 0x00812f50
0050fcdd  f30f109f3c030000          MOVSS XMM3,dword ptr [EDI + 0x33c]
0050fce5  8db73c030000              LEA ESI,[EDI + 0x33c]
0050fceb  f30f5c5c2410              SUBSS XMM3,dword ptr [ESP + 0x10]
0050fcf1  f30f102d40cbba00          MOVSS XMM5,dword ptr [0x00bacb40]
0050fcf9  f30f10257ca8ba00          MOVSS XMM4,dword ptr [0x00baa87c]
0050fd01  f30f105604                MOVSS XMM2,dword ptr [ESI + 0x4]
0050fd06  f30f5c542414              SUBSS XMM2,dword ptr [ESP + 0x14]
0050fd0c  0f28c3                    MOVAPS XMM0,XMM3
0050fd0f  0f54c5                    ANDPS XMM0,XMM5
0050fd12  0f2fe0                    COMISS XMM4,XMM0
0050fd15  770b                      JA 0x0050fd22
0050fd17  0f28ca                    MOVAPS XMM1,XMM2
0050fd1a  0f54cd                    ANDPS XMM1,XMM5
0050fd1d  0f2fe1                    COMISS XMM4,XMM1
0050fd20  7661                      JBE 0x0050fd83
0050fd22  f30f59d2                  MULSS XMM2,XMM2
0050fd26  f30f59db                  MULSS XMM3,XMM3
0050fd2a  f30f58d3                  ADDSS XMM2,XMM3
0050fd2e  0f28c2                    MOVAPS XMM0,XMM2
0050fd31  e81a5df2ff                CALL 0x00435a50
0050fd36  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
0050fd3e  0f2fc8                    COMISS XMM1,XMM0
0050fd41  7640                      JBE 0x0050fd83
0050fd43  a17816c700                MOV EAX,[0x00c71678]
0050fd48  8d4c2410                  LEA ECX,[ESP + 0x10]
0050fd4c  6a00                      PUSH 0x0
0050fd4e  6a00                      PUSH 0x0
0050fd50  6a00                      PUSH 0x0
0050fd52  68e7030000                PUSH 0x3e7
0050fd57  6a03                      PUSH 0x3
0050fd59  51                        PUSH ECX
0050fd5a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0050fd60  56                        PUSH ESI
0050fd61  e88a102e00                CALL 0x007f0df0
0050fd66  84c0                      TEST AL,AL
0050fd68  7419                      JZ 0x0050fd83
0050fd6a  6a00                      PUSH 0x0
0050fd6c  6854ddb100                PUSH 0xb1dd54
0050fd71  8d4f48                    LEA ECX,[EDI + 0x48]
0050fd74  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0050fd7e  e8fda5efff                CALL 0x0040a380
0050fd83  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050fd89  2500020000                AND EAX,0x200
0050fd8e  83c800                    OR EAX,0x0
0050fd91  741b                      JZ 0x0050fdae
0050fd93  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050fd9a  7512                      JNZ 0x0050fdae
0050fd9c  8d8f14040000              LEA ECX,[EDI + 0x414]
0050fda2  6a00                      PUSH 0x0
0050fda4  e857652d00                CALL 0x007e6300
0050fda9  e951020000                JMP 0x0050ffff
0050fdae  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0050fdb2  f30f1005b8a2ba00          MOVSS XMM0,dword ptr [0x00baa2b8]
0050fdba  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0050fdc0  750e                      JNZ 0x0050fdd0
0050fdc2  f30f100580a2ba00          MOVSS XMM0,dword ptr [0x00baa280]
0050fdca  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0050fdd0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050fdd6  6a01                      PUSH 0x1
0050fdd8  81c1a8ba0100              ADD ECX,0x1baa8
0050fdde  51                        PUSH ECX
0050fddf  6a09                      PUSH 0x9
0050fde1  e89ae24a00                CALL 0x009be080
0050fde6  85c0                      TEST EAX,EAX
0050fde8  7420                      JZ 0x0050fe0a
0050fdea  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050fdf0  2500000020                AND EAX,0x20000000
0050fdf5  83c800                    OR EAX,0x0
0050fdf8  7510                      JNZ 0x0050fe0a
0050fdfa  f30f1015d4a1ba00          MOVSS XMM2,dword ptr [0x00baa1d4]
0050fe02  f30f11542424              MOVSS dword ptr [ESP + 0x24],XMM2
0050fe08  eb06                      JMP 0x0050fe10
0050fe0a  f30f10542424              MOVSS XMM2,dword ptr [ESP + 0x24]
0050fe10  0f57c9                    XORPS XMM1,XMM1
0050fe13  0f28da                    MOVAPS XMM3,XMM2
0050fe16  0f2f8f60030000            COMISS XMM1,dword ptr [EDI + 0x360]
0050fe1d  0f28c2                    MOVAPS XMM0,XMM2
0050fe20  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
0050fe26  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0050fe2d  7609                      JBE 0x0050fe38
0050fe2f  0f28d8                    MOVAPS XMM3,XMM0
0050fe32  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
0050fe38  0f2f8f64030000            COMISS XMM1,dword ptr [EDI + 0x364]
0050fe3f  7609                      JBE 0x0050fe4a
0050fe41  0f28d0                    MOVAPS XMM2,XMM0
0050fe44  f30f11542424              MOVSS dword ptr [ESP + 0x24],XMM2
0050fe4a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050fe51  745d                      JZ 0x0050feb0
0050fe53  0f28c2                    MOVAPS XMM0,XMM2
0050fe56  0f28cb                    MOVAPS XMM1,XMM3
0050fe59  f30f59c2                  MULSS XMM0,XMM2
0050fe5d  f30f59cb                  MULSS XMM1,XMM3
0050fe61  f30f58c1                  ADDSS XMM0,XMM1
0050fe65  e8e65bf2ff                CALL 0x00435a50
0050fe6a  8d44241c                  LEA EAX,[ESP + 0x1c]
0050fe6e  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0050fe74  50                        PUSH EAX
0050fe75  0f57d2                    XORPS XMM2,XMM2
0050fe78  8bcf                      MOV ECX,EDI
0050fe7a  e851841c00                CALL 0x006d82d0
0050fe7f  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
0050fe85  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0050fe8d  f30f10542424              MOVSS XMM2,dword ptr [ESP + 0x24]
0050fe93  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
0050fe99  0f28c1                    MOVAPS XMM0,XMM1
0050fe9c  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
0050fea1  f30f5900                  MULSS XMM0,dword ptr [EAX]
0050fea5  f30f58d1                  ADDSS XMM2,XMM1
0050fea9  0f57c9                    XORPS XMM1,XMM1
0050feac  f30f58d8                  ADDSS XMM3,XMM0
0050feb0  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0050feb8  0f2ee1                    UCOMISS XMM4,XMM1
0050febb  9f                        LAHF
0050febc  f6c444                    TEST AH,0x44
0050febf  7b38                      JNP 0x0050fef9
0050fec1  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0050fec9  f30f59d8                  MULSS XMM3,XMM0
0050fecd  f30f59d0                  MULSS XMM2,XMM0
0050fed1  f30f5edc                  DIVSS XMM3,XMM4
0050fed5  f30f5ed4                  DIVSS XMM2,XMM4
0050fed9  f30f589f60030000          ADDSS XMM3,dword ptr [EDI + 0x360]
0050fee1  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0050fee9  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
0050fef1  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0050fef9  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050feff  2500080001                AND EAX,0x1000800
0050ff04  83c800                    OR EAX,0x0
0050ff07  0f84f2000000              JZ 0x0050ffff
0050ff0d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050ff14  0f85e5000000              JNZ 0x0050ffff
0050ff1a  8bcf                      MOV ECX,EDI
0050ff1c  e81fe91a00                CALL 0x006be840
0050ff21  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0050ff29  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0050ff31  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
0050ff39  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0050ff41  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0050ff48  0f28c1                    MOVAPS XMM0,XMM1
0050ff4b  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
0050ff51  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0050ff58  f30f59c1                  MULSS XMM0,XMM1
0050ff5c  0f28ca                    MOVAPS XMM1,XMM2
0050ff5f  f30f59ca                  MULSS XMM1,XMM2
0050ff63  f30f11542424              MOVSS dword ptr [ESP + 0x24],XMM2
0050ff69  f30f58c1                  ADDSS XMM0,XMM1
0050ff6d  e8de5af2ff                CALL 0x00435a50
0050ff72  f30f101500aaba00          MOVSS XMM2,dword ptr [0x00baaa00]
0050ff7a  0f57c9                    XORPS XMM1,XMM1
0050ff7d  0f2fc1                    COMISS XMM0,XMM1
0050ff80  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
0050ff86  f30f5cd0                  SUBSS XMM2,XMM0
0050ff8a  f30f59158ca0ba00          MULSS XMM2,dword ptr [0x00baa08c]
0050ff92  f30f5fd1                  MAXSS XMM2,XMM1
0050ff96  f30f5d1554a4ba00          MINSS XMM2,dword ptr [0x00baa454]
0050ff9e  7610                      JBE 0x0050ffb0
0050ffa0  f30f5ed0                  DIVSS XMM2,XMM0
0050ffa4  f30f59da                  MULSS XMM3,XMM2
0050ffa8  f30f59542424              MULSS XMM2,dword ptr [ESP + 0x24]
0050ffae  eb06                      JMP 0x0050ffb6
0050ffb0  f30f10542424              MOVSS XMM2,dword ptr [ESP + 0x24]
0050ffb6  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0050ffbe  0f2ee1                    UCOMISS XMM4,XMM1
0050ffc1  9f                        LAHF
0050ffc2  f6c444                    TEST AH,0x44
0050ffc5  7b38                      JNP 0x0050ffff
0050ffc7  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0050ffcf  f30f59d8                  MULSS XMM3,XMM0
0050ffd3  f30f59d0                  MULSS XMM2,XMM0
0050ffd7  f30f5edc                  DIVSS XMM3,XMM4
0050ffdb  f30f5ed4                  DIVSS XMM2,XMM4
0050ffdf  f30f589f60030000          ADDSS XMM3,dword ptr [EDI + 0x360]
0050ffe7  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0050ffef  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
0050fff7  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0050ffff  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00510005  83f8ff                    CMP EAX,-0x1
00510008  747f                      JZ 0x00510089
0051000a  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00510010  6a00                      PUSH 0x0
00510012  57                        PUSH EDI
00510013  50                        PUSH EAX
00510014  6a09                      PUSH 0x9
00510016  e8c5614400                CALL 0x009561e0
0051001b  84c0                      TEST AL,AL
0051001d  746a                      JZ 0x00510089
0051001f  8b07                      MOV EAX,dword ptr [EDI]
00510021  8d4c245c                  LEA ECX,[ESP + 0x5c]
00510025  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0051002d  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00510035  51                        PUSH ECX
00510036  8bcf                      MOV ECX,EDI
00510038  c744246000000000          MOV dword ptr [ESP + 0x60],0x0
00510040  c744246400000000          MOV dword ptr [ESP + 0x64],0x0
00510048  c744246800000000          MOV dword ptr [ESP + 0x68],0x0
00510050  c744246c00000000          MOV dword ptr [ESP + 0x6c],0x0
00510058  f30f114c2470              MOVSS dword ptr [ESP + 0x70],XMM1
0051005e  f30f11442474              MOVSS dword ptr [ESP + 0x74],XMM0
00510064  f30f114c2478              MOVSS dword ptr [ESP + 0x78],XMM1
0051006a  f30f1144247c              MOVSS dword ptr [ESP + 0x7c],XMM0
00510070  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
0051007b  c784248400000000000000    MOV dword ptr [ESP + 0x84],0x0
00510086  ff5024                    CALL dword ptr [EAX + 0x24]
00510089  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00510090  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00510093  0f8493080000              JZ 0x0051092c
00510099  85c0                      TEST EAX,EAX
0051009b  757a                      JNZ 0x00510117
0051009d  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005100a3  2500000001                AND EAX,0x1000000
005100a8  83c800                    OR EAX,0x0
005100ab  0f85030a0000              JNZ 0x00510ab4
005100b1  6a00                      PUSH 0x0
005100b3  6a00                      PUSH 0x0
005100b5  6a04                      PUSH 0x4
005100b7  6a01                      PUSH 0x1
005100b9  51                        PUSH ECX
005100ba  c704240000803f            MOV dword ptr [ESP],0x3f800000
005100c1  8d87b8010000              LEA EAX,[EDI + 0x1b8]
005100c7  57                        PUSH EDI
005100c8  50                        PUSH EAX
005100c9  83ec10                    SUB ESP,0x10
005100cc  8bc4                      MOV EAX,ESP
005100ce  51                        PUSH ECX
005100cf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005100d5  c70000000000              MOV dword ptr [EAX],0x0
005100db  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
005100e2  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
005100e9  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
005100f0  8d873c030000              LEA EAX,[EDI + 0x33c]
005100f6  c7042400002042            MOV dword ptr [ESP],0x42200000
005100fd  50                        PUSH EAX
005100fe  e85dff1e00                CALL 0x00700060
00510103  5f                        POP EDI
00510104  5e                        POP ESI
00510105  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
0051010c  33cc                      XOR ECX,ESP
0051010e  e818f05d00                CALL 0x00aef12b
00510113  8be5                      MOV ESP,EBP
00510115  5d                        POP EBP
00510116  c3                        RET
00510117  83f802                    CMP EAX,0x2
0051011a  0f8561010000              JNZ 0x00510281
00510120  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00510126  2500000001                AND EAX,0x1000000
0051012b  83c800                    OR EAX,0x0
0051012e  0f8580090000              JNZ 0x00510ab4
00510134  6a00                      PUSH 0x0
00510136  6a00                      PUSH 0x0
00510138  6a04                      PUSH 0x4
0051013a  6a01                      PUSH 0x1
0051013c  51                        PUSH ECX
0051013d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00510144  8d87b8010000              LEA EAX,[EDI + 0x1b8]
0051014a  57                        PUSH EDI
0051014b  50                        PUSH EAX
0051014c  83ec10                    SUB ESP,0x10
0051014f  8db73c030000              LEA ESI,[EDI + 0x33c]
00510155  8bc4                      MOV EAX,ESP
00510157  51                        PUSH ECX
00510158  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051015e  c7042400002042            MOV dword ptr [ESP],0x42200000
00510165  56                        PUSH ESI
00510166  c70000000000              MOV dword ptr [EAX],0x0
0051016c  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
00510173  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
0051017a  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
00510181  e8dafe1e00                CALL 0x00700060
00510186  8d8c2488000000            LEA ECX,[ESP + 0x88]
0051018d  e89eedf2ff                CALL 0x0043ef30
00510192  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00510198  8b89c8690200              MOV ECX,dword ptr [ECX + 0x269c8]
0051019e  83f901                    CMP ECX,0x1
005101a1  740f                      JZ 0x005101b2
005101a3  83f903                    CMP ECX,0x3
005101a6  740a                      JZ 0x005101b2
005101a8  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
005101b0  eb08                      JMP 0x005101ba
005101b2  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
005101ba  50                        PUSH EAX
005101bb  6a06                      PUSH 0x6
005101bd  8d442424                  LEA EAX,[ESP + 0x24]
005101c1  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
005101c7  50                        PUSH EAX
005101c8  56                        PUSH ESI
005101c9  8bcf                      MOV ECX,EDI
005101cb  c744243000000000          MOV dword ptr [ESP + 0x30],0x0
005101d3  e808b11b00                CALL 0x006cb2e0
005101d8  e883ed1d00                CALL 0x006eef60
005101dd  33d2                      XOR EDX,EDX
005101df  b903000000                MOV ECX,0x3
005101e4  f7f1                      DIV ECX
005101e6  85d2                      TEST EDX,EDX
005101e8  0f85c6080000              JNZ 0x00510ab4
005101ee  f30f1006                  MOVSS XMM0,dword ptr [ESI]
005101f2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005101f8  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
005101fe  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00510203  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00510209  ff742414                  PUSH dword ptr [ESP + 0x14]
0051020d  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00510213  ff742414                  PUSH dword ptr [ESP + 0x14]
00510217  e864052e00                CALL 0x007f0780
0051021c  85c0                      TEST EAX,EAX
0051021e  0f8590080000              JNZ 0x00510ab4
00510224  e837ed1d00                CALL 0x006eef60
00510229  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051022f  6a00                      PUSH 0x0
00510231  50                        PUSH EAX
00510232  6a00                      PUSH 0x0
00510234  57                        PUSH EDI
00510235  6840b6c700                PUSH 0xc7b640
0051023a  56                        PUSH ESI
0051023b  6a01                      PUSH 0x1
0051023d  6a17                      PUSH 0x17
0051023f  e8cce11e00                CALL 0x006fe410
00510244  8bf0                      MOV ESI,EAX
00510246  8bce                      MOV ECX,ESI
00510248  8b16                      MOV EDX,dword ptr [ESI]
0051024a  ff520c                    CALL dword ptr [EDX + 0xc]
0051024d  f30f108684030000          MOVSS XMM0,dword ptr [ESI + 0x384]
00510255  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0051025d  f30f118684030000          MOVSS dword ptr [ESI + 0x384],XMM0
00510265  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
0051026d  5f                        POP EDI
0051026e  5e                        POP ESI
0051026f  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
00510276  33cc                      XOR ECX,ESP
00510278  e8aeee5d00                CALL 0x00aef12b
0051027d  8be5                      MOV ESP,EBP
0051027f  5d                        POP EBP
00510280  c3                        RET
00510281  83f803                    CMP EAX,0x3
00510284  0f85cf000000              JNZ 0x00510359
0051028a  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00510290  2500000001                AND EAX,0x1000000
00510295  83c800                    OR EAX,0x0
00510298  0f8516080000              JNZ 0x00510ab4
0051029e  8d8c2488000000            LEA ECX,[ESP + 0x88]
005102a5  e886ecf2ff                CALL 0x0043ef30
005102aa  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
005102b1  8d44245c                  LEA EAX,[ESP + 0x5c]
005102b5  0f1144245c                MOVUPS xmmword ptr [ESP + 0x5c],XMM0
005102ba  c784249c00000000000040    MOV dword ptr [ESP + 0x9c],0x40000000
005102c5  8d8c24b4000000            LEA ECX,[ESP + 0xb4]
005102cc  0f57c0                    XORPS XMM0,XMM0
005102cf  c78424940000000000803f    MOV dword ptr [ESP + 0x94],0x3f800000
005102da  50                        PUSH EAX
005102db  c784249400000000000000    MOV dword ptr [ESP + 0x94],0x0
005102e6  0f11442470                MOVUPS xmmword ptr [ESP + 0x70],XMM0
005102eb  c78424800000000000803f    MOV dword ptr [ESP + 0x80],0x3f800000
005102f6  c78424840000009a99993e    MOV dword ptr [ESP + 0x84],0x3e99999a
00510301  c784248800000000000000    MOV dword ptr [ESP + 0x88],0x0
0051030c  e8df6eefff                CALL 0x004071f0
00510311  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00510315  b808000000                MOV EAX,0x8
0051031a  7405                      JZ 0x00510321
0051031c  b810000000                MOV EAX,0x10
00510321  098424e4000000            OR dword ptr [ESP + 0xe4],EAX
00510328  8bcf                      MOV ECX,EDI
0051032a  8d842488000000            LEA EAX,[ESP + 0x88]
00510331  50                        PUSH EAX
00510332  6a00                      PUSH 0x0
00510334  6840b6c700                PUSH 0xc7b640
00510339  8d873c030000              LEA EAX,[EDI + 0x33c]
0051033f  50                        PUSH EAX
00510340  e89baf1b00                CALL 0x006cb2e0
00510345  5f                        POP EDI
00510346  5e                        POP ESI
00510347  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
0051034e  33cc                      XOR ECX,ESP
00510350  e8d6ed5d00                CALL 0x00aef12b
00510355  8be5                      MOV ESP,EBP
00510357  5d                        POP EBP
00510358  c3                        RET
00510359  83f804                    CMP EAX,0x4
0051035c  0f8528010000              JNZ 0x0051048a
00510362  e8f9eb1d00                CALL 0x006eef60
00510367  8bcf                      MOV ECX,EDI
00510369  e8d2e41a00                CALL 0x006be840
0051036e  8db73c030000              LEA ESI,[EDI + 0x33c]
00510374  8d4c241c                  LEA ECX,[ESP + 0x1c]
00510378  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00510380  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00510388  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0051038c  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00510391  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00510397  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
0051039d  e8beee1600                CALL 0x0067f260
005103a2  83f803                    CMP EAX,0x3
005103a5  7725                      JA 0x005103cc
005103a7  ff2485c80a5100            JMP dword ptr [EAX*0x4 + 0x510ac8]
005103cc  e88feb1d00                CALL 0x006eef60
005103d1  660f6ec0                  MOVD XMM0,EAX
005103d5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005103d9  c1e81f                    SHR EAX,0x1f
005103dc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005103e5  660f5ac0                  CVTPD2PS XMM0,XMM0
005103e9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005103f1  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
005103f9  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
005103ff  8d8c2488000000            LEA ECX,[ESP + 0x88]
00510406  e825ebf2ff                CALL 0x0043ef30
0051040b  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
00510411  8d8c24b4000000            LEA ECX,[ESP + 0xb4]
00510418  68d4c7c500                PUSH 0xc5c7d4
0051041d  c784242001000001000000    MOV dword ptr [ESP + 0x120],0x1
00510428  f30f118424a4000000        MOVSS dword ptr [ESP + 0xa4],XMM0
00510431  e8ba6defff                CALL 0x004071f0
00510436  e8057e1c00                CALL 0x006d8240
0051043b  85c0                      TEST EAX,EAX
0051043d  7e0a                      JLE 0x00510449
0051043f  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00510447  eb08                      JMP 0x00510451
00510449  f30f100504a8ba00          MOVSS XMM0,dword ptr [0x00baa804]
00510451  8d842488000000            LEA EAX,[ESP + 0x88]
00510458  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0051045e  50                        PUSH EAX
0051045f  6a09                      PUSH 0x9
00510461  8d442424                  LEA EAX,[ESP + 0x24]
00510465  c744242800004040          MOV dword ptr [ESP + 0x28],0x40400000
0051046d  50                        PUSH EAX
0051046e  56                        PUSH ESI
0051046f  8bcf                      MOV ECX,EDI
00510471  e86aae1b00                CALL 0x006cb2e0
00510476  5f                        POP EDI
00510477  5e                        POP ESI
00510478  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
0051047f  33cc                      XOR ECX,ESP
00510481  e8a5ec5d00                CALL 0x00aef12b
00510486  8be5                      MOV ESP,EBP
00510488  5d                        POP EBP
00510489  c3                        RET
0051048a  8bcf                      MOV ECX,EDI
0051048c  6a00                      PUSH 0x0
0051048e  6800000001                PUSH 0x1000000
00510493  83f805                    CMP EAX,0x5
00510496  0f8530020000              JNZ 0x005106cc
0051049c  e88f6ff0ff                CALL 0x00417430
005104a1  84c0                      TEST AL,AL
005104a3  0f850b060000              JNZ 0x00510ab4
005104a9  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
005104b0  8d44245c                  LEA EAX,[ESP + 0x5c]
005104b4  6a00                      PUSH 0x0
005104b6  6a00                      PUSH 0x0
005104b8  6a04                      PUSH 0x4
005104ba  6a01                      PUSH 0x1
005104bc  51                        PUSH ECX
005104bd  c704240000803f            MOV dword ptr [ESP],0x3f800000
005104c4  8db73c030000              LEA ESI,[EDI + 0x33c]
005104ca  57                        PUSH EDI
005104cb  50                        PUSH EAX
005104cc  83ec10                    SUB ESP,0x10
005104cf  c78424a800000000000000    MOV dword ptr [ESP + 0xa8],0x0
005104da  8bc4                      MOV EAX,ESP
005104dc  c78424ac00000000000000    MOV dword ptr [ESP + 0xac],0x0
005104e7  0f11842488000000          MOVUPS xmmword ptr [ESP + 0x88],XMM0
005104ef  c78424b000000000000000    MOV dword ptr [ESP + 0xb0],0x0
005104fa  0f2805c0bbba00            MOVAPS XMM0,xmmword ptr [0x00babbc0]
00510501  51                        PUSH ECX
00510502  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00510508  0f1184249c000000          MOVUPS xmmword ptr [ESP + 0x9c],XMM0
00510510  c7042400002042            MOV dword ptr [ESP],0x42200000
00510517  56                        PUSH ESI
00510518  c70000000000              MOV dword ptr [EAX],0x0
0051051e  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
00510525  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
0051052c  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
00510533  e828fb1e00                CALL 0x00700060
00510538  817f348e030000            CMP dword ptr [EDI + 0x34],0x38e
0051053f  7444                      JZ 0x00510585
00510541  8d8c2488000000            LEA ECX,[ESP + 0x88]
00510548  e8e3e9f2ff                CALL 0x0043ef30
0051054d  68d84ec300                PUSH 0xc34ed8
00510552  8d8c24b8000000            LEA ECX,[ESP + 0xb8]
00510559  e8926cefff                CALL 0x004071f0
0051055e  8d842488000000            LEA EAX,[ESP + 0x88]
00510565  c744241c00002041          MOV dword ptr [ESP + 0x1c],0x41200000
0051056d  50                        PUSH EAX
0051056e  6a09                      PUSH 0x9
00510570  8d442424                  LEA EAX,[ESP + 0x24]
00510574  c74424280000c040          MOV dword ptr [ESP + 0x28],0x40c00000
0051057c  50                        PUSH EAX
0051057d  56                        PUSH ESI
0051057e  8bcf                      MOV ECX,EDI
00510580  e85bad1b00                CALL 0x006cb2e0
00510585  33f6                      XOR ESI,ESI
00510587  e8d4e91d00                CALL 0x006eef60
0051058c  660f6ec0                  MOVD XMM0,EAX
00510590  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00510594  c1e81f                    SHR EAX,0x1f
00510597  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005105a0  8bc6                      MOV EAX,ESI
005105a2  c1e81f                    SHR EAX,0x1f
005105a5  660f5ac8                  CVTPD2PS XMM1,XMM0
005105a9  660f6ec6                  MOVD XMM0,ESI
005105ad  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005105b5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005105b9  f30f590d5ca8ba00          MULSS XMM1,dword ptr [0x00baa85c]
005105c1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005105ca  f30f5c0de8a7ba00          SUBSS XMM1,dword ptr [0x00baa7e8]
005105d2  660f5ac0                  CVTPD2PS XMM0,XMM0
005105d6  f30f590510a9ba00          MULSS XMM0,dword ptr [0x00baa910]
005105de  f30f58c8                  ADDSS XMM1,XMM0
005105e2  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
005105ea  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
005105f0  e86be91d00                CALL 0x006eef60
005105f5  660f6ec0                  MOVD XMM0,EAX
005105f9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005105fd  c1e81f                    SHR EAX,0x1f
00510600  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00510609  660f5ac0                  CVTPD2PS XMM0,XMM0
0051060d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00510615  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
0051061d  f30f58053ca8ba00          ADDSS XMM0,dword ptr [0x00baa83c]
00510625  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0051062b  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00510631  e80acff0ff                CALL 0x0041d540
00510636  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
0051063c  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00510642  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00510648  e8d3cef0ff                CALL 0x0041d520
0051064d  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
00510653  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00510659  e802e91d00                CALL 0x006eef60
0051065e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00510664  6a00                      PUSH 0x0
00510666  50                        PUSH EAX
00510667  6a00                      PUSH 0x0
00510669  57                        PUSH EDI
0051066a  8d44242c                  LEA EAX,[ESP + 0x2c]
0051066e  50                        PUSH EAX
0051066f  8d873c030000              LEA EAX,[EDI + 0x33c]
00510675  50                        PUSH EAX
00510676  688d000000                PUSH 0x8d
0051067b  68e8030000                PUSH 0x3e8
00510680  e88bdd1e00                CALL 0x006fe410
00510685  817f348e030000            CMP dword ptr [EDI + 0x34],0x38e
0051068c  8bd0                      MOV EDX,EAX
0051068e  b82c010000                MOV EAX,0x12c
00510693  b996000000                MOV ECX,0x96
00510698  0f45c8                    CMOVNZ ECX,EAX
0051069b  898a5c040000              MOV dword ptr [EDX + 0x45c],ECX
005106a1  898a60040000              MOV dword ptr [EDX + 0x460],ECX
005106a7  8bca                      MOV ECX,EDX
005106a9  8b02                      MOV EAX,dword ptr [EDX]
005106ab  ff500c                    CALL dword ptr [EAX + 0xc]
005106ae  46                        INC ESI
005106af  83fe08                    CMP ESI,0x8
005106b2  0f82cffeffff              JC 0x00510587
005106b8  5f                        POP EDI
005106b9  5e                        POP ESI
005106ba  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
005106c1  33cc                      XOR ECX,ESP
005106c3  e863ea5d00                CALL 0x00aef12b
005106c8  8be5                      MOV ESP,EBP
005106ca  5d                        POP EBP
005106cb  c3                        RET
005106cc  83f806                    CMP EAX,0x6
005106cf  0f85e9010000              JNZ 0x005108be
005106d5  e8566df0ff                CALL 0x00417430
005106da  84c0                      TEST AL,AL
005106dc  0f85d2030000              JNZ 0x00510ab4
005106e2  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
005106e9  0f84c5030000              JZ 0x00510ab4
005106ef  6a01                      PUSH 0x1
005106f1  68ac0db600                PUSH 0xb60dac
005106f6  8d4f48                    LEA ECX,[EDI + 0x48]
005106f9  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00510703  e8c89eefff                CALL 0x0040a5d0
00510708  84c0                      TEST AL,AL
0051070a  740f                      JZ 0x0051071b
0051070c  8d4f78                    LEA ECX,[EDI + 0x78]
0051070f  e89c9aefff                CALL 0x0040a1b0
00510714  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0051071b  8bcf                      MOV ECX,EDI
0051071d  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00510727  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0051072e  e8fdde1900                CALL 0x006ae630
00510733  33c0                      XOR EAX,EAX
00510735  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0051073c  8944240c                  MOV dword ptr [ESP + 0xc],EAX
00510740  8bd0                      MOV EDX,EAX
00510742  8d4c2428                  LEA ECX,[ESP + 0x28]
00510746  e885ea1600                CALL 0x0067f1d0
0051074b  e810e81d00                CALL 0x006eef60
00510750  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00510758  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00510760  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00510766  6a00                      PUSH 0x0
00510768  50                        PUSH EAX
00510769  6a00                      PUSH 0x0
0051076b  6a00                      PUSH 0x0
0051076d  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00510773  8d44242c                  LEA EAX,[ESP + 0x2c]
00510777  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0051077f  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
00510787  6840b6c700                PUSH 0xc7b640
0051078c  50                        PUSH EAX
0051078d  68c6000000                PUSH 0xc6
00510792  68e8030000                PUSH 0x3e8
00510797  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
0051079d  e86edc1e00                CALL 0x006fe410
005107a2  8bf0                      MOV ESI,EAX
005107a4  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
005107aa  8d86bc030000              LEA EAX,[ESI + 0x3bc]
005107b0  85c9                      TEST ECX,ECX
005107b2  741a                      JZ 0x005107ce
005107b4  89442410                  MOV dword ptr [ESP + 0x10],EAX
005107b8  81c1cc030000              ADD ECX,0x3cc
005107be  8d442410                  LEA EAX,[ESP + 0x10]
005107c2  50                        PUSH EAX
005107c3  e848eafbff                CALL 0x004cf210
005107c8  8d86bc030000              LEA EAX,[ESI + 0x3bc]
005107ce  50                        PUSH EAX
005107cf  8bcf                      MOV ECX,EDI
005107d1  8938                      MOV dword ptr [EAX],EDI
005107d3  e818d5fbff                CALL 0x004cdcf0
005107d8  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
005107e0  8d8ef0000000              LEA ECX,[ESI + 0xf0]
005107e6  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
005107ee  8d44245c                  LEA EAX,[ESP + 0x5c]
005107f2  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
005107fa  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
00510805  c784248400000000000000    MOV dword ptr [ESP + 0x84],0x0
00510810  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00510818  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00510820  c6866404000001            MOV byte ptr [ESI + 0x464],0x1
00510827  f30f118e68040000          MOVSS dword ptr [ESI + 0x468],XMM1
0051082f  0f280d40c1ba00            MOVAPS XMM1,xmmword ptr [0x00bac140]
00510836  f30f11866c040000          MOVSS dword ptr [ESI + 0x46c],XMM0
0051083e  0f57c0                    XORPS XMM0,XMM0
00510841  3bc8                      CMP ECX,EAX
00510843  741c                      JZ 0x00510861
00510845  8b842484000000            MOV EAX,dword ptr [ESP + 0x84]
0051084c  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00510850  f30f7e44247c              MOVQ XMM0,qword ptr [ESP + 0x7c]
00510856  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0051085b  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
0051085e  894128                    MOV dword ptr [ECX + 0x28],EAX
00510861  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
00510867  8bce                      MOV ECX,ESI
00510869  8b06                      MOV EAX,dword ptr [ESI]
0051086b  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
00510873  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00510879  f30f118638030000          MOVSS dword ptr [ESI + 0x338],XMM0
00510881  c7865c04000019000000      MOV dword ptr [ESI + 0x45c],0x19
0051088b  c7866004000019000000      MOV dword ptr [ESI + 0x460],0x19
00510895  ff500c                    CALL dword ptr [EAX + 0xc]
00510898  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
0051089c  40                        INC EAX
0051089d  8944240c                  MOV dword ptr [ESP + 0xc],EAX
005108a1  83f804                    CMP EAX,0x4
005108a4  0f8c96feffff              JL 0x00510740
005108aa  5f                        POP EDI
005108ab  5e                        POP ESI
005108ac  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
005108b3  33cc                      XOR ECX,ESP
005108b5  e871e85d00                CALL 0x00aef12b
005108ba  8be5                      MOV ESP,EBP
005108bc  5d                        POP EBP
005108bd  c3                        RET
005108be  e86d6bf0ff                CALL 0x00417430
005108c3  84c0                      TEST AL,AL
005108c5  0f85e9010000              JNZ 0x00510ab4
005108cb  8d8c2488000000            LEA ECX,[ESP + 0x88]
005108d2  e859e6f2ff                CALL 0x0043ef30
005108d7  8bc8                      MOV ECX,EAX
005108d9  e862791c00                CALL 0x006d8240
005108de  85c0                      TEST EAX,EAX
005108e0  7e0a                      JLE 0x005108ec
005108e2  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
005108ea  eb08                      JMP 0x005108f4
005108ec  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
005108f4  51                        PUSH ECX
005108f5  6a09                      PUSH 0x9
005108f7  8d442424                  LEA EAX,[ESP + 0x24]
005108fb  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00510901  50                        PUSH EAX
00510902  8d873c030000              LEA EAX,[EDI + 0x33c]
00510908  c744242c0000c040          MOV dword ptr [ESP + 0x2c],0x40c00000
00510910  50                        PUSH EAX
00510911  8bcf                      MOV ECX,EDI
00510913  e8c8a91b00                CALL 0x006cb2e0
00510918  5f                        POP EDI
00510919  5e                        POP ESI
0051091a  8b8c242c010000            MOV ECX,dword ptr [ESP + 0x12c]
00510921  33cc                      XOR ECX,ESP
00510923  e803e85d00                CALL 0x00aef12b
00510928  8be5                      MOV ESP,EBP
0051092a  5d                        POP EBP
0051092b  c3                        RET
0051092c  83f805                    CMP EAX,0x5
0051092f  0f857f010000              JNZ 0x00510ab4
00510935  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0051093b  2500400000                AND EAX,0x4000
00510940  83c800                    OR EAX,0x0
00510943  0f856b010000              JNZ 0x00510ab4
00510949  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051094f  e8fcc91e00                CALL 0x006fd350
00510954  84c0                      TEST AL,AL
00510956  0f8558010000              JNZ 0x00510ab4
0051095c  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00510964  0f57d2                    XORPS XMM2,XMM2
00510967  f30f58c2                  ADDSS XMM0,XMM2
0051096b  f30f5e05c0adba00          DIVSS XMM0,dword ptr [0x00baadc0]
00510973  f30f2cc8                  CVTTSS2SI ECX,XMM0
00510977  f30f1087a0030000          MOVSS XMM0,dword ptr [EDI + 0x3a0]
0051097f  f30f58c2                  ADDSS XMM0,XMM2
00510983  f30f5e05c0adba00          DIVSS XMM0,dword ptr [0x00baadc0]
0051098b  f30f2cc0                  CVTTSS2SI EAX,XMM0
0051098f  2bc1                      SUB EAX,ECX
00510991  0f841d010000              JZ 0x00510ab4
00510997  e8c4e51d00                CALL 0x006eef60
0051099c  8bf0                      MOV ESI,EAX
0051099e  e8bde51d00                CALL 0x006eef60
005109a3  660f6ec0                  MOVD XMM0,EAX
005109a7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005109ab  c1e81f                    SHR EAX,0x1f
005109ae  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005109b7  660f5ac0                  CVTPD2PS XMM0,XMM0
005109bb  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005109c3  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
005109cb  f30f58c0                  ADDSS XMM0,XMM0
005109cf  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
005109d5  e886e51d00                CALL 0x006eef60
005109da  660f6ec8                  MOVD XMM1,EAX
005109de  f30fe6c9                  CVTDQ2PD XMM1,XMM1
005109e2  c1e81f                    SHR EAX,0x1f
005109e5  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
005109ee  660f5ac1                  CVTPD2PS XMM0,XMM1
005109f2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005109fa  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00510a00  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00510a06  e835cbf0ff                CALL 0x0041d540
00510a0b  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
00510a11  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00510a17  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00510a1d  e8fecaf0ff                CALL 0x0041d520
00510a22  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
00510a28  8d44241c                  LEA EAX,[ESP + 0x1c]
00510a2c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00510a32  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
00510a38  6a00                      PUSH 0x0
00510a3a  56                        PUSH ESI
00510a3b  6a00                      PUSH 0x0
00510a3d  57                        PUSH EDI
00510a3e  50                        PUSH EAX
00510a3f  8d873c030000              LEA EAX,[EDI + 0x33c]
00510a45  f30f58c9                  ADDSS XMM1,XMM1
00510a49  f30f58c0                  ADDSS XMM0,XMM0
00510a4d  50                        PUSH EAX
00510a4e  688d000000                PUSH 0x8d
00510a53  68e8030000                PUSH 0x3e8
00510a58  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
00510a5e  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00510a64  e8a7d91e00                CALL 0x006fe410
00510a69  8bc8                      MOV ECX,EAX
00510a6b  8b01                      MOV EAX,dword ptr [ECX]
00510a6d  c7815c0400005a000000      MOV dword ptr [ECX + 0x45c],0x5a
00510a77  c781600400005a000000      MOV dword ptr [ECX + 0x460],0x5a
00510a81  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00510a89  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00510a91  f30f590d54a3ba00          MULSS XMM1,dword ptr [0x00baa354]
00510a99  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00510aa1  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
00510aa9  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
00510ab1  ff500c                    CALL dword ptr [EAX + 0xc]
00510ab4  8b8c2434010000            MOV ECX,dword ptr [ESP + 0x134]
00510abb  5f                        POP EDI
00510abc  5e                        POP ESI
00510abd  33cc                      XOR ECX,ESP
00510abf  e867e65d00                CALL 0x00aef12b
00510ac4  8be5                      MOV ESP,EBP
00510ac6  5d                        POP EBP
00510ac7  c3                        RET
