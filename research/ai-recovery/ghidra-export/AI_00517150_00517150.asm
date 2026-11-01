; J460 NPC AI 0x00517150 AI_00517150
; types=30
; identities=30.0.0,30.1.0,30.2.0
; entry=00517150
00517150  55                        PUSH EBP
00517151  8bec                      MOV EBP,ESP
00517153  83e4f8                    AND ESP,0xfffffff8
00517156  81ec54010000              SUB ESP,0x154
0051715c  a1b493bf00                MOV EAX,[0x00bf93b4]
00517161  33c4                      XOR EAX,ESP
00517163  89842450010000            MOV dword ptr [ESP + 0x150],EAX
0051716a  53                        PUSH EBX
0051716b  8bd9                      MOV EBX,ECX
0051716d  56                        PUSH ESI
0051716e  57                        PUSH EDI
0051716f  83bb640b000000            CMP dword ptr [EBX + 0xb64],0x0
00517176  0f857a010000              JNZ 0x005172f6
0051717c  a17816c700                MOV EAX,[0x00c71678]
00517181  8b80c8690200              MOV EAX,dword ptr [EAX + 0x269c8]
00517187  83f801                    CMP EAX,0x1
0051718a  740f                      JZ 0x0051719b
0051718c  83f803                    CMP EAX,0x3
0051718f  740a                      JZ 0x0051719b
00517191  f30f1015b8a7ba00          MOVSS XMM2,dword ptr [0x00baa7b8]
00517199  eb4c                      JMP 0x005171e7
0051719b  e8c07d1d00                CALL 0x006eef60
005171a0  f30f109384030000          MOVSS XMM2,dword ptr [EBX + 0x384]
005171a8  0f57c0                    XORPS XMM0,XMM0
005171ab  f30f5915a4a3ba00          MULSS XMM2,dword ptr [0x00baa3a4]
005171b3  f20f2ac0                  CVTSI2SD XMM0,EAX
005171b7  c1e81f                    SHR EAX,0x1f
005171ba  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005171c3  660f5ac8                  CVTPD2PS XMM1,XMM0
005171c7  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
005171cf  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005171d7  f30f5fd0                  MAXSS XMM2,XMM0
005171db  f30f5cd0                  SUBSS XMM2,XMM0
005171df  f30f59d1                  MULSS XMM2,XMM1
005171e3  f30f58d0                  ADDSS XMM2,XMM0
005171e7  f30f119380030000          MOVSS dword ptr [EBX + 0x380],XMM2
005171ef  c783b00b000000000000      MOV dword ptr [EBX + 0xbb0],0x0
005171f9  8b833c030000              MOV EAX,dword ptr [EBX + 0x33c]
005171ff  898334030000              MOV dword ptr [EBX + 0x334],EAX
00517205  8b8340030000              MOV EAX,dword ptr [EBX + 0x340]
0051720b  898338030000              MOV dword ptr [EBX + 0x338],EAX
00517211  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
00517214  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
0051721e  83f801                    CMP EAX,0x1
00517221  7562                      JNZ 0x00517285
00517223  0f280de0c2ba00            MOVAPS XMM1,xmmword ptr [0x00bac2e0]
0051722a  8d44242c                  LEA EAX,[ESP + 0x2c]
0051722e  81c3e4010000              ADD EBX,0x1e4
00517234  c744244c00000000          MOV dword ptr [ESP + 0x4c],0x0
0051723c  c74424500000003f          MOV dword ptr [ESP + 0x50],0x3f000000
00517244  0f57c0                    XORPS XMM0,XMM0
00517247  c744245400000000          MOV dword ptr [ESP + 0x54],0x0
0051724f  3bd8                      CMP EBX,EAX
00517251  0f846d0b0000              JZ 0x00517dc4
00517257  8b442454                  MOV EAX,dword ptr [ESP + 0x54]
0051725b  0f114310                  MOVUPS xmmword ptr [EBX + 0x10],XMM0
0051725f  f30f7e44244c              MOVQ XMM0,qword ptr [ESP + 0x4c]
00517265  660fd64320                MOVQ qword ptr [EBX + 0x20],XMM0
0051726a  0f110b                    MOVUPS xmmword ptr [EBX],XMM1
0051726d  894328                    MOV dword ptr [EBX + 0x28],EAX
00517270  5f                        POP EDI
00517271  5e                        POP ESI
00517272  5b                        POP EBX
00517273  8b8c2450010000            MOV ECX,dword ptr [ESP + 0x150]
0051727a  33cc                      XOR ECX,ESP
0051727c  e8aa7e5d00                CALL 0x00aef12b
00517281  8be5                      MOV ESP,EBP
00517283  5d                        POP EBP
00517284  c3                        RET
00517285  83f802                    CMP EAX,0x2
00517288  0f85360b0000              JNZ 0x00517dc4
0051728e  0f281520bfba00            MOVAPS XMM2,xmmword ptr [0x00babf20]
00517295  8d442458                  LEA EAX,[ESP + 0x58]
00517299  81c3e4010000              ADD EBX,0x1e4
0051729f  c74424780000803f          MOV dword ptr [ESP + 0x78],0x3f800000
005172a7  c744247c0000803f          MOV dword ptr [ESP + 0x7c],0x3f800000
005172af  0f57c9                    XORPS XMM1,XMM1
005172b2  c78424800000000000803f    MOV dword ptr [ESP + 0x80],0x3f800000
005172bd  3bd8                      CMP EBX,EAX
005172bf  0f84ff0a0000              JZ 0x00517dc4
005172c5  f30f7e442478              MOVQ XMM0,qword ptr [ESP + 0x78]
005172cb  8b842480000000            MOV EAX,dword ptr [ESP + 0x80]
005172d2  660fd64320                MOVQ qword ptr [EBX + 0x20],XMM0
005172d7  0f1113                    MOVUPS xmmword ptr [EBX],XMM2
005172da  894328                    MOV dword ptr [EBX + 0x28],EAX
005172dd  0f114b10                  MOVUPS xmmword ptr [EBX + 0x10],XMM1
005172e1  5f                        POP EDI
005172e2  5e                        POP ESI
005172e3  5b                        POP EBX
005172e4  8b8c2450010000            MOV ECX,dword ptr [ESP + 0x150]
005172eb  33cc                      XOR ECX,ESP
005172ed  e8397e5d00                CALL 0x00aef12b
005172f2  8be5                      MOV ESP,EBP
005172f4  5d                        POP EBP
005172f5  c3                        RET
005172f6  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
005172fe  0f57c9                    XORPS XMM1,XMM1
00517301  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00517309  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
00517311  f30f104314                MOVSS XMM0,dword ptr [EBX + 0x14]
00517316  0f2fc1                    COMISS XMM0,XMM1
00517319  7666                      JBE 0x00517381
0051731b  8b4308                    MOV EAX,dword ptr [EBX + 0x8]
0051731e  0f57c0                    XORPS XMM0,XMM0
00517321  3b430c                    CMP EAX,dword ptr [EBX + 0xc]
00517324  745b                      JZ 0x00517381
00517326  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
00517329  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
0051732c  894c2414                  MOV dword ptr [ESP + 0x14],ECX
00517330  8bca                      MOV ECX,EDX
00517332  83e104                    AND ECX,0x4
00517335  83c900                    OR ECX,0x0
00517338  742c                      JZ 0x00517366
0051733a  8b4830                    MOV ECX,dword ptr [EAX + 0x30]
0051733d  d1e9                      SHR ECX,0x1
0051733f  f6c101                    TEST CL,0x1
00517342  7522                      JNZ 0x00517366
00517344  83781001                  CMP dword ptr [EAX + 0x10],0x1
00517348  741c                      JZ 0x00517366
0051734a  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
0051734d  83f901                    CMP ECX,0x1
00517350  7414                      JZ 0x00517366
00517352  83f903                    CMP ECX,0x3
00517355  740f                      JZ 0x00517366
00517357  81e200100000              AND EDX,0x1000
0051735d  83ca00                    OR EDX,0x0
00517360  7504                      JNZ 0x00517366
00517362  8910                      MOV dword ptr [EAX],EDX
00517364  eb04                      JMP 0x0051736a
00517366  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0051736a  83c038                    ADD EAX,0x38
0051736d  3b430c                    CMP EAX,dword ptr [EBX + 0xc]
00517370  75b4                      JNZ 0x00517326
00517372  0f2fc1                    COMISS XMM0,XMM1
00517375  760a                      JBE 0x00517381
00517377  c783b00b000000000000      MOV dword ptr [EBX + 0xbb0],0x0
00517381  8bcb                      MOV ECX,EBX
00517383  e8b8741a00                CALL 0x006be840
00517388  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00517390  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00517398  f30f5c8340030000          SUBSS XMM0,dword ptr [EBX + 0x340]
005173a0  f30f5c8b3c030000          SUBSS XMM1,dword ptr [EBX + 0x33c]
005173a8  f30f59c0                  MULSS XMM0,XMM0
005173ac  f30f59c9                  MULSS XMM1,XMM1
005173b0  f30f58c1                  ADDSS XMM0,XMM1
005173b4  e897e6f1ff                CALL 0x00435a50
005173b9  f30f108b80030000          MOVSS XMM1,dword ptr [EBX + 0x380]
005173c1  8d9384030000              LEA EDX,[EBX + 0x384]
005173c7  f30f1032                  MOVSS XMM6,dword ptr [EDX]
005173cb  0f2fce                    COMISS XMM1,XMM6
005173ce  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
005173d4  0f8267080000              JC 0x00517c41
005173da  8b8b640b0000              MOV ECX,dword ptr [EBX + 0xb64]
005173e0  83f903                    CMP ECX,0x3
005173e3  0f850b010000              JNZ 0x005174f4
005173e9  8b8368010000              MOV EAX,dword ptr [EBX + 0x168]
005173ef  25000a0001                AND EAX,0x1000a00
005173f4  83c800                    OR EAX,0x0
005173f7  0f85f7000000              JNZ 0x005174f4
005173fd  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00517404  7418                      JZ 0x0051741e
00517406  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0051740e  8bcb                      MOV ECX,EBX
00517410  6a07                      PUSH 0x7
00517412  50                        PUSH EAX
00517413  e8483a1b00                CALL 0x006cae60
00517418  8844240f                  MOV byte ptr [ESP + 0xf],AL
0051741c  eb36                      JMP 0x00517454
0051741e  e83d7b1d00                CALL 0x006eef60
00517423  33d2                      XOR EDX,EDX
00517425  b932000000                MOV ECX,0x32
0051742a  f7f1                      DIV ECX
0051742c  85d2                      TEST EDX,EDX
0051742e  751f                      JNZ 0x0051744f
00517430  f30f1005c0aaba00          MOVSS XMM0,dword ptr [0x00baaac0]
00517438  0f2f44241c                COMISS XMM0,dword ptr [ESP + 0x1c]
0051743d  7709                      JA 0x00517448
0051743f  e81c7b1d00                CALL 0x006eef60
00517444  a803                      TEST AL,0x3
00517446  7507                      JNZ 0x0051744f
00517448  c644240f01                MOV byte ptr [ESP + 0xf],0x1
0051744d  eb05                      JMP 0x00517454
0051744f  c644240f00                MOV byte ptr [ESP + 0xf],0x0
00517454  8b831c0f0000              MOV EAX,dword ptr [EBX + 0xf1c]
0051745a  83f8ff                    CMP EAX,-0x1
0051745d  740e                      JZ 0x0051746d
0051745f  51                        PUSH ECX
00517460  53                        PUSH EBX
00517461  50                        PUSH EAX
00517462  6a0a                      PUSH 0xa
00517464  e8a7ec4300                CALL 0x00956110
00517469  84c0                      TEST AL,AL
0051746b  7524                      JNZ 0x00517491
0051746d  807c240f00                CMP byte ptr [ESP + 0xf],0x0
00517472  743c                      JZ 0x005174b0
00517474  837b2c02                  CMP dword ptr [EBX + 0x2c],0x2
00517478  7523                      JNZ 0x0051749d
0051747a  8bcb                      MOV ECX,EBX
0051747c  e89ff71b00                CALL 0x006d6c20
00517481  83f808                    CMP EAX,0x8
00517484  7d0b                      JGE 0x00517491
00517486  8bc8                      MOV ECX,EAX
00517488  e8837b1600                CALL 0x0067f010
0051748d  85c0                      TEST EAX,EAX
0051748f  740c                      JZ 0x0051749d
00517491  c783640b000009000000      MOV dword ptr [EBX + 0xb64],0x9
0051749b  eb13                      JMP 0x005174b0
0051749d  6a01                      PUSH 0x1
0051749f  8bcb                      MOV ECX,EBX
005174a1  c783640b000008000000      MOV dword ptr [EBX + 0xb64],0x8
005174ab  e8a01b1c00                CALL 0x006d9050
005174b0  6a01                      PUSH 0x1
005174b2  68ecfeb500                PUSH 0xb5feec
005174b7  8d4b48                    LEA ECX,[EBX + 0x48]
005174ba  e81131efff                CALL 0x0040a5d0
005174bf  84c0                      TEST AL,AL
005174c1  0f84cd080000              JZ 0x00517d94
005174c7  8b437c                    MOV EAX,dword ptr [EBX + 0x7c]
005174ca  85c0                      TEST EAX,EAX
005174cc  0f84c2080000              JZ 0x00517d94
005174d2  8d4b78                    LEA ECX,[EBX + 0x78]
005174d5  0f57c9                    XORPS XMM1,XMM1
005174d8  e82319efff                CALL 0x00408e00
005174dd  8b437c                    MOV EAX,dword ptr [EBX + 0x7c]
005174e0  85c0                      TEST EAX,EAX
005174e2  0f84ac080000              JZ 0x00517d94
005174e8  c6838c00000000            MOV byte ptr [EBX + 0x8c],0x0
005174ef  e9a0080000                JMP 0x00517d94
005174f4  8b7b7c                    MOV EDI,dword ptr [EBX + 0x7c]
005174f7  83f908                    CMP ECX,0x8
005174fa  0f85d1060000              JNZ 0x00517bd1
00517500  85ff                      TEST EDI,EDI
00517502  7445                      JZ 0x00517549
00517504  837f1410                  CMP dword ptr [EDI + 0x14],0x10
00517508  8bc7                      MOV EAX,EDI
0051750a  7202                      JC 0x0051750e
0051750c  8b07                      MOV EAX,dword ptr [EDI]
0051750e  b9dcd2b100                MOV ECX,0xb1d2dc
00517513  8a10                      MOV DL,byte ptr [EAX]
00517515  3a11                      CMP DL,byte ptr [ECX]
00517517  751a                      JNZ 0x00517533
00517519  84d2                      TEST DL,DL
0051751b  7412                      JZ 0x0051752f
0051751d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00517520  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00517523  750e                      JNZ 0x00517533
00517525  83c002                    ADD EAX,0x2
00517528  83c102                    ADD ECX,0x2
0051752b  84d2                      TEST DL,DL
0051752d  75e4                      JNZ 0x00517513
0051752f  33c0                      XOR EAX,EAX
00517531  eb05                      JMP 0x00517538
00517533  1bc0                      SBB EAX,EAX
00517535  83c801                    OR EAX,0x1
00517538  85c0                      TEST EAX,EAX
0051753a  750d                      JNZ 0x00517549
0051753c  384734                    CMP byte ptr [EDI + 0x34],AL
0051753f  742a                      JZ 0x0051756b
00517541  38838c000000              CMP byte ptr [EBX + 0x8c],AL
00517547  7522                      JNZ 0x0051756b
00517549  6a01                      PUSH 0x1
0051754b  68dcd2b100                PUSH 0xb1d2dc
00517550  8d4b48                    LEA ECX,[EBX + 0x48]
00517553  e87830efff                CALL 0x0040a5d0
00517558  84c0                      TEST AL,AL
0051755a  740f                      JZ 0x0051756b
0051755c  8d4b78                    LEA ECX,[EBX + 0x78]
0051755f  e84c2cefff                CALL 0x0040a1b0
00517564  c6838c00000001            MOV byte ptr [EBX + 0x8c],0x1
0051756b  83bb1c0f0000ff            CMP dword ptr [EBX + 0xf1c],-0x1
00517572  751a                      JNZ 0x0051758e
00517574  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0051757c  f30f1183200f0000          MOVSS dword ptr [EBX + 0xf20],XMM0
00517584  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0051758c  eb42                      JMP 0x005175d0
0051758e  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00517596  8d442410                  LEA EAX,[ESP + 0x10]
0051759a  50                        PUSH EAX
0051759b  8bcb                      MOV ECX,EBX
0051759d  e8fe0f1c00                CALL 0x006d85a0
005175a2  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
005175a8  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
005175af  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
005175b5  9f                        LAHF
005175b6  f6c444                    TEST AH,0x44
005175b9  7a0d                      JP 0x005175c8
005175bb  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005175c2  9f                        LAHF
005175c3  f6c444                    TEST AH,0x44
005175c6  7b10                      JNP 0x005175d8
005175c8  f30f118b200f0000          MOVSS dword ptr [EBX + 0xf20],XMM1
005175d0  f30f1183240f0000          MOVSS dword ptr [EBX + 0xf24],XMM0
005175d8  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
005175dc  0f84a8070000              JZ 0x00517d8a
005175e2  68dcd2b100                PUSH 0xb1d2dc
005175e7  8d4b78                    LEA ECX,[EBX + 0x78]
005175ea  e8e137efff                CALL 0x0040add0
005175ef  84c0                      TEST AL,AL
005175f1  0f84be050000              JZ 0x00517bb5
005175f7  e864791d00                CALL 0x006eef60
005175fc  660f6ec0                  MOVD XMM0,EAX
00517600  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00517604  c1e81f                    SHR EAX,0x1f
00517607  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00517610  660f5ac8                  CVTPD2PS XMM1,XMM0
00517614  f30f1005e0aaba00          MOVSS XMM0,dword ptr [0x00baaae0]
0051761c  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00517624  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
0051762c  f30f5cc1                  SUBSS XMM0,XMM1
00517630  0f2f44241c                COMISS XMM0,dword ptr [ESP + 0x1c]
00517635  760b                      JBE 0x00517642
00517637  837b3424                  CMP dword ptr [EBX + 0x34],0x24
0051763b  c644240f01                MOV byte ptr [ESP + 0xf],0x1
00517640  7505                      JNZ 0x00517647
00517642  c644240f00                MOV byte ptr [ESP + 0xf],0x0
00517647  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
0051764a  51                        PUSH ECX
0051764b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00517652  6a00                      PUSH 0x0
00517654  6a02                      PUSH 0x2
00517656  51                        PUSH ECX
00517657  8bcb                      MOV ECX,EBX
00517659  85c0                      TEST EAX,EAX
0051765b  0f85fc000000              JNZ 0x0051775d
00517661  c704240000803f            MOV dword ptr [ESP],0x3f800000
00517668  68b2000000                PUSH 0xb2
0051766d  e82ef51b00                CALL 0x006d6ba0
00517672  807c240f00                CMP byte ptr [ESP + 0xf],0x0
00517677  742d                      JZ 0x005176a6
00517679  8bcb                      MOV ECX,EBX
0051767b  e8c0711a00                CALL 0x006be840
00517680  f30f101d44b6c700          MOVSS XMM3,dword ptr [0x00c7b644]
00517688  f30f102540b6c700          MOVSS XMM4,dword ptr [0x00c7b640]
00517690  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00517696  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0051769c  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
005176a0  89442420                  MOV dword ptr [ESP + 0x20],EAX
005176a4  eb1c                      JMP 0x005176c2
005176a6  f30f102540b6c700          MOVSS XMM4,dword ptr [0x00c7b640]
005176ae  f30f101d44b6c700          MOVSS XMM3,dword ptr [0x00c7b644]
005176b6  f30f1164241c              MOVSS dword ptr [ESP + 0x1c],XMM4
005176bc  f30f115c2420              MOVSS dword ptr [ESP + 0x20],XMM3
005176c2  f30f1083200f0000          MOVSS XMM0,dword ptr [EBX + 0xf20]
005176ca  8d44241c                  LEA EAX,[ESP + 0x1c]
005176ce  f30f1008                  MOVSS XMM1,dword ptr [EAX]
005176d2  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
005176d7  0f2ec4                    UCOMISS XMM0,XMM4
005176da  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
005176e0  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
005176e6  9f                        LAHF
005176e7  f6c444                    TEST AH,0x44
005176ea  7a11                      JP 0x005176fd
005176ec  f30f1083240f0000          MOVSS XMM0,dword ptr [EBX + 0xf24]
005176f4  0f2ec3                    UCOMISS XMM0,XMM3
005176f7  9f                        LAHF
005176f8  f6c444                    TEST AH,0x44
005176fb  7b2c                      JNP 0x00517729
005176fd  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
00517705  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
0051770d  f30f588b3c030000          ADDSS XMM1,dword ptr [EBX + 0x33c]
00517715  f30f589340030000          ADDSS XMM2,dword ptr [EBX + 0x340]
0051771d  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00517723  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
00517729  8d8c24b0000000            LEA ECX,[ESP + 0xb0]
00517730  e8fb77f2ff                CALL 0x0043ef30
00517735  8bf0                      MOV ESI,EAX
00517737  e824781d00                CALL 0x006eef60
0051773c  56                        PUSH ESI
0051773d  51                        PUSH ECX
0051773e  83e001                    AND EAX,0x1
00517741  c7042400002041            MOV dword ptr [ESP],0x41200000
00517748  8d4c2418                  LEA ECX,[ESP + 0x18]
0051774c  83c003                    ADD EAX,0x3
0051774f  51                        PUSH ECX
00517750  50                        PUSH EAX
00517751  8bcb                      MOV ECX,EBX
00517753  e878561b00                CALL 0x006ccdd0
00517758  e958040000                JMP 0x00517bb5
0051775d  83f801                    CMP EAX,0x1
00517760  0f8514020000              JNZ 0x0051797a
00517766  c704243333333f            MOV dword ptr [ESP],0x3f333333
0051776d  68d5000000                PUSH 0xd5
00517772  e829f41b00                CALL 0x006d6ba0
00517777  807c240f00                CMP byte ptr [ESP + 0xf],0x0
0051777c  c783a00b0000ceffffff      MOV dword ptr [EBX + 0xba0],0xffffffce
00517786  742d                      JZ 0x005177b5
00517788  8bcb                      MOV ECX,EBX
0051778a  e8b1701a00                CALL 0x006be840
0051778f  f30f101d44b6c700          MOVSS XMM3,dword ptr [0x00c7b644]
00517797  f30f102540b6c700          MOVSS XMM4,dword ptr [0x00c7b640]
0051779f  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
005177a5  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
005177ab  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
005177af  89442420                  MOV dword ptr [ESP + 0x20],EAX
005177b3  eb1c                      JMP 0x005177d1
005177b5  f30f102540b6c700          MOVSS XMM4,dword ptr [0x00c7b640]
005177bd  f30f101d44b6c700          MOVSS XMM3,dword ptr [0x00c7b644]
005177c5  f30f1164241c              MOVSS dword ptr [ESP + 0x1c],XMM4
005177cb  f30f115c2420              MOVSS dword ptr [ESP + 0x20],XMM3
005177d1  f30f1083200f0000          MOVSS XMM0,dword ptr [EBX + 0xf20]
005177d9  8d44241c                  LEA EAX,[ESP + 0x1c]
005177dd  f30f1008                  MOVSS XMM1,dword ptr [EAX]
005177e1  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
005177e6  0f2ec4                    UCOMISS XMM0,XMM4
005177e9  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
005177ef  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
005177f5  9f                        LAHF
005177f6  f6c444                    TEST AH,0x44
005177f9  7a11                      JP 0x0051780c
005177fb  f30f1083240f0000          MOVSS XMM0,dword ptr [EBX + 0xf24]
00517803  0f2ec3                    UCOMISS XMM0,XMM3
00517806  9f                        LAHF
00517807  f6c444                    TEST AH,0x44
0051780a  7b2c                      JNP 0x00517838
0051780c  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
00517814  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
0051781c  f30f588b3c030000          ADDSS XMM1,dword ptr [EBX + 0x33c]
00517824  f30f589340030000          ADDSS XMM2,dword ptr [EBX + 0x340]
0051782c  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00517832  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
00517838  8d8c24b0000000            LEA ECX,[ESP + 0xb0]
0051783f  e8ec76f2ff                CALL 0x0043ef30
00517844  50                        PUSH EAX
00517845  51                        PUSH ECX
00517846  c7042400002041            MOV dword ptr [ESP],0x41200000
0051784d  8d442418                  LEA EAX,[ESP + 0x18]
00517851  50                        PUSH EAX
00517852  6a01                      PUSH 0x1
00517854  8bcb                      MOV ECX,EBX
00517856  e875551b00                CALL 0x006ccdd0
0051785b  8bf0                      MOV ESI,EAX
0051785d  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
00517865  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
0051786d  f30f590de4a2ba00          MULSS XMM1,dword ptr [0x00baa2e4]
00517875  838e3804000002            OR dword ptr [ESI + 0x438],0x2
0051787c  807c240f00                CMP byte ptr [ESP + 0xf],0x0
00517881  f30f5915e4a2ba00          MULSS XMM2,dword ptr [0x00baa2e4]
00517889  8b8e3c040000              MOV ECX,dword ptr [ESI + 0x43c]
0051788f  898e3c040000              MOV dword ptr [ESI + 0x43c],ECX
00517895  c78620040000cdcccc3f      MOV dword ptr [ESI + 0x420],0x3fcccccd
0051789f  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
005178a5  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
005178ab  7441                      JZ 0x005178ee
005178ad  e8ae761d00                CALL 0x006eef60
005178b2  f30f104c241c              MOVSS XMM1,dword ptr [ESP + 0x1c]
005178b8  f30f10542410              MOVSS XMM2,dword ptr [ESP + 0x10]
005178be  660f6ec0                  MOVD XMM0,EAX
005178c2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005178c6  c1e81f                    SHR EAX,0x1f
005178c9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005178d2  660f5ac0                  CVTPD2PS XMM0,XMM0
005178d6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005178de  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
005178e6  f30f59c8                  MULSS XMM1,XMM0
005178ea  f30f59d0                  MULSS XMM2,XMM0
005178ee  f30f108618040000          MOVSS XMM0,dword ptr [ESI + 0x418]
005178f6  8d8c2484000000            LEA ECX,[ESP + 0x84]
005178fd  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
00517905  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
0051790d  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
00517915  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
0051791d  f30f108614040000          MOVSS XMM0,dword ptr [ESI + 0x414]
00517925  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0051792d  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
00517935  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
0051793d  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00517945  0f28d8                    MOVAPS XMM3,XMM0
00517948  0f28d0                    MOVAPS XMM2,XMM0
0051794b  0f28c8                    MOVAPS XMM1,XMM0
0051794e  e82de1f1ff                CALL 0x00435a80
00517953  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
0051795a  6a01                      PUSH 0x1
0051795c  6a00                      PUSH 0x0
0051795e  68ff000000                PUSH 0xff
00517963  0f118424a0000000          MOVUPS xmmword ptr [ESP + 0xa0],XMM0
0051796b  8b06                      MOV EAX,dword ptr [ESI]
0051796d  6aff                      PUSH -0x1
0051796f  51                        PUSH ECX
00517970  8bce                      MOV ECX,ESI
00517972  ff503c                    CALL dword ptr [EAX + 0x3c]
00517975  e93b020000                JMP 0x00517bb5
0051797a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00517981  68b5000000                PUSH 0xb5
00517986  e815f21b00                CALL 0x006d6ba0
0051798b  f30f1093200f0000          MOVSS XMM2,dword ptr [EBX + 0xf20]
00517993  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
0051799a  9f                        LAHF
0051799b  f6c444                    TEST AH,0x44
0051799e  0f8a9a000000              JP 0x00517a3e
005179a4  f30f1083240f0000          MOVSS XMM0,dword ptr [EBX + 0xf24]
005179ac  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005179b3  9f                        LAHF
005179b4  f6c444                    TEST AH,0x44
005179b7  0f8a81000000              JP 0x00517a3e
005179bd  807c240f00                CMP byte ptr [ESP + 0xf],0x0
005179c2  8dbb3c030000              LEA EDI,[EBX + 0x33c]
005179c8  a17816c700                MOV EAX,[0x00c71678]
005179cd  745e                      JZ 0x00517a2d
005179cf  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005179d5  8bcb                      MOV ECX,EBX
005179d7  e8646e1a00                CALL 0x006be840
005179dc  6a00                      PUSH 0x0
005179de  6a00                      PUSH 0x0
005179e0  6a00                      PUSH 0x0
005179e2  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
005179ea  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
005179f2  8d442428                  LEA EAX,[ESP + 0x28]
005179f6  f30f580f                  ADDSS XMM1,dword ptr [EDI]
005179fa  f30f585704                ADDSS XMM2,dword ptr [EDI + 0x4]
005179ff  51                        PUSH ECX
00517a00  c7042400008c42            MOV dword ptr [ESP],0x428c0000
00517a07  8bce                      MOV ECX,ESI
00517a09  50                        PUSH EAX
00517a0a  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00517a12  8d442438                  LEA EAX,[ESP + 0x38]
00517a16  50                        PUSH EAX
00517a17  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00517a1f  f30f114c2434              MOVSS dword ptr [ESP + 0x34],XMM1
00517a25  f30f11542438              MOVSS dword ptr [ESP + 0x38],XMM2
00517a2b  eb68                      JMP 0x00517a95
00517a2d  6a00                      PUSH 0x0
00517a2f  6a00                      PUSH 0x0
00517a31  6a00                      PUSH 0x0
00517a33  51                        PUSH ECX
00517a34  c704240000c842            MOV dword ptr [ESP],0x42c80000
00517a3b  57                        PUSH EDI
00517a3c  eb4c                      JMP 0x00517a8a
00517a3e  f30f1083240f0000          MOVSS XMM0,dword ptr [EBX + 0xf24]
00517a46  f30f5915a0a9ba00          MULSS XMM2,dword ptr [0x00baa9a0]
00517a4e  a17816c700                MOV EAX,[0x00c71678]
00517a53  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
00517a5b  6a00                      PUSH 0x0
00517a5d  f30f58933c030000          ADDSS XMM2,dword ptr [EBX + 0x33c]
00517a65  6a00                      PUSH 0x0
00517a67  f30f588340030000          ADDSS XMM0,dword ptr [EBX + 0x340]
00517a6f  6a00                      PUSH 0x0
00517a71  51                        PUSH ECX
00517a72  8d4c242c                  LEA ECX,[ESP + 0x2c]
00517a76  c7042400000000            MOV dword ptr [ESP],0x0
00517a7d  f30f1154242c              MOVSS dword ptr [ESP + 0x2c],XMM2
00517a83  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00517a89  51                        PUSH ECX
00517a8a  8d4c2438                  LEA ECX,[ESP + 0x38]
00517a8e  51                        PUSH ECX
00517a8f  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00517a95  e886ba2f00                CALL 0x00813520
00517a9a  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00517a9e  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00517aa4  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00517aa9  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00517aaf  e8ac741d00                CALL 0x006eef60
00517ab4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00517aba  6a00                      PUSH 0x0
00517abc  50                        PUSH EAX
00517abd  6a00                      PUSH 0x0
00517abf  53                        PUSH EBX
00517ac0  6840b6c700                PUSH 0xc7b640
00517ac5  8d442424                  LEA EAX,[ESP + 0x24]
00517ac9  50                        PUSH EAX
00517aca  6a00                      PUSH 0x0
00517acc  6a55                      PUSH 0x55
00517ace  e83d691e00                CALL 0x006fe410
00517ad3  6a00                      PUSH 0x0
00517ad5  68acd6c500                PUSH 0xc5d6ac
00517ada  68dcd5c500                PUSH 0xc5d5dc
00517adf  6a00                      PUSH 0x0
00517ae1  50                        PUSH EAX
00517ae2  e8ca8d5d00                CALL 0x00af08b1
00517ae7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00517aed  83c414                    ADD ESP,0x14
00517af0  8bf8                      MOV EDI,EAX
00517af2  8d442410                  LEA EAX,[ESP + 0x10]
00517af6  8bb100830100              MOV ESI,dword ptr [ECX + 0x18300]
00517afc  8bce                      MOV ECX,ESI
00517afe  50                        PUSH EAX
00517aff  e88cb12f00                CALL 0x00812c90
00517b04  6884030000                PUSH 0x384
00517b09  50                        PUSH EAX
00517b0a  8bce                      MOV ECX,ESI
00517b0c  e8cfeaf3ff                CALL 0x004565e0
00517b11  f30f10a73c030000          MOVSS XMM4,dword ptr [EDI + 0x33c]
00517b19  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
00517b21  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
00517b29  f30f11a734030000          MOVSS dword ptr [EDI + 0x334],XMM4
00517b31  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
00517b39  f30f119f38030000          MOVSS dword ptr [EDI + 0x338],XMM3
00517b41  f30f10933c030000          MOVSS XMM2,dword ptr [EBX + 0x33c]
00517b49  f30f11973c030000          MOVSS dword ptr [EDI + 0x33c],XMM2
00517b51  f30f5ce2                  SUBSS XMM4,XMM2
00517b55  f30f108b40030000          MOVSS XMM1,dword ptr [EBX + 0x340]
00517b5d  f30f5cd9                  SUBSS XMM3,XMM1
00517b61  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
00517b69  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
00517b71  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00517b7b  f30f5925bca0ba00          MULSS XMM4,dword ptr [0x00baa0bc]
00517b83  c787bc0b0000000000c1      MOV dword ptr [EDI + 0xbbc],0xc1000000
00517b8d  f30f591dbca0ba00          MULSS XMM3,dword ptr [0x00baa0bc]
00517b95  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
00517b9d  f30f11a7b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM4
00517ba5  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
00517bad  f30f119fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM3
00517bb5  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
00517bb9  0f84cb010000              JZ 0x00517d8a
00517bbf  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
00517bc6  0f85c8010000              JNZ 0x00517d94
00517bcc  e9b9010000                JMP 0x00517d8a
00517bd1  85ff                      TEST EDI,EDI
00517bd3  7445                      JZ 0x00517c1a
00517bd5  837f1410                  CMP dword ptr [EDI + 0x14],0x10
00517bd9  8bc7                      MOV EAX,EDI
00517bdb  7202                      JC 0x00517bdf
00517bdd  8b07                      MOV EAX,dword ptr [EDI]
00517bdf  b93cd6b100                MOV ECX,0xb1d63c
00517be4  8a10                      MOV DL,byte ptr [EAX]
00517be6  3a11                      CMP DL,byte ptr [ECX]
00517be8  751a                      JNZ 0x00517c04
00517bea  84d2                      TEST DL,DL
00517bec  7412                      JZ 0x00517c00
00517bee  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00517bf1  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00517bf4  750e                      JNZ 0x00517c04
00517bf6  83c002                    ADD EAX,0x2
00517bf9  83c102                    ADD ECX,0x2
00517bfc  84d2                      TEST DL,DL
00517bfe  75e4                      JNZ 0x00517be4
00517c00  33c0                      XOR EAX,EAX
00517c02  eb05                      JMP 0x00517c09
00517c04  1bc0                      SBB EAX,EAX
00517c06  83c801                    OR EAX,0x1
00517c09  85c0                      TEST EAX,EAX
00517c0b  750d                      JNZ 0x00517c1a
00517c0d  384734                    CMP byte ptr [EDI + 0x34],AL
00517c10  74a3                      JZ 0x00517bb5
00517c12  38838c000000              CMP byte ptr [EBX + 0x8c],AL
00517c18  759b                      JNZ 0x00517bb5
00517c1a  6a01                      PUSH 0x1
00517c1c  683cd6b100                PUSH 0xb1d63c
00517c21  8d4b48                    LEA ECX,[EBX + 0x48]
00517c24  e8a729efff                CALL 0x0040a5d0
00517c29  84c0                      TEST AL,AL
00517c2b  7488                      JZ 0x00517bb5
00517c2d  8d4b78                    LEA ECX,[EBX + 0x78]
00517c30  e87b25efff                CALL 0x0040a1b0
00517c35  c6838c00000001            MOV byte ptr [EBX + 0x8c],0x1
00517c3c  e974ffffff                JMP 0x00517bb5
00517c41  f30f1093b00b0000          MOVSS XMM2,dword ptr [EBX + 0xbb0]
00517c49  8d8380030000              LEA EAX,[EBX + 0x380]
00517c4f  f30f109b9c030000          MOVSS XMM3,dword ptr [EBX + 0x39c]
00517c57  0f28c2                    MOVAPS XMM0,XMM2
00517c5a  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
00517c62  f30f59c3                  MULSS XMM0,XMM3
00517c66  f30f58c1                  ADDSS XMM0,XMM1
00517c6a  0f2fc6                    COMISS XMM0,XMM6
00517c6d  f30f118380030000          MOVSS dword ptr [EBX + 0x380],XMM0
00517c75  0f47c2                    CMOVA EAX,EDX
00517c78  837b3424                  CMP dword ptr [EBX + 0x34],0x24
00517c7c  f30f1020                  MOVSS XMM4,dword ptr [EAX]
00517c80  f30f11a380030000          MOVSS dword ptr [EBX + 0x380],XMM4
00517c88  750a                      JNZ 0x00517c94
00517c8a  f30f100d6ca0ba00          MOVSS XMM1,dword ptr [0x00baa06c]
00517c92  eb08                      JMP 0x00517c9c
00517c94  f30f100d8ca0ba00          MOVSS XMM1,dword ptr [0x00baa08c]
00517c9c  0f28c3                    MOVAPS XMM0,XMM3
00517c9f  f30f59c1                  MULSS XMM0,XMM1
00517ca3  f30f58c2                  ADDSS XMM0,XMM2
00517ca7  f30f1183b00b0000          MOVSS dword ptr [EBX + 0xbb0],XMM0
00517caf  837b2c02                  CMP dword ptr [EBX + 0x2c],0x2
00517cb3  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
00517cbb  7537                      JNZ 0x00517cf4
00517cbd  f30f1015a4a3ba00          MOVSS XMM2,dword ptr [0x00baa3a4]
00517cc5  0f2edd                    UCOMISS XMM3,XMM5
00517cc8  9f                        LAHF
00517cc9  f6c444                    TEST AH,0x44
00517ccc  7b16                      JNP 0x00517ce4
00517cce  0f28cb                    MOVAPS XMM1,XMM3
00517cd1  0f28c3                    MOVAPS XMM0,XMM3
00517cd4  f30f58ca                  ADDSS XMM1,XMM2
00517cd8  f30f59c2                  MULSS XMM0,XMM2
00517cdc  f30f5cc8                  SUBSS XMM1,XMM0
00517ce0  f30f5ed1                  DIVSS XMM2,XMM1
00517ce4  f30f5993b00b0000          MULSS XMM2,dword ptr [EBX + 0xbb0]
00517cec  f30f1193b00b0000          MOVSS dword ptr [EBX + 0xbb0],XMM2
00517cf4  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
00517cfc  0f2edd                    UCOMISS XMM3,XMM5
00517cff  9f                        LAHF
00517d00  f6c444                    TEST AH,0x44
00517d03  7b13                      JNP 0x00517d18
00517d05  0f28c3                    MOVAPS XMM0,XMM3
00517d08  f30f59d9                  MULSS XMM3,XMM1
00517d0c  f30f58c1                  ADDSS XMM0,XMM1
00517d10  f30f5cc3                  SUBSS XMM0,XMM3
00517d14  f30f5ec8                  DIVSS XMM1,XMM0
00517d18  f30f5ee6                  DIVSS XMM4,XMM6
00517d1c  f30f598bb00b0000          MULSS XMM1,dword ptr [EBX + 0xbb0]
00517d24  f30f5f25e49fba00          MAXSS XMM4,dword ptr [0x00ba9fe4]
00517d2c  f30f118bb00b0000          MOVSS dword ptr [EBX + 0xbb0],XMM1
00517d34  f30f59253ca8ba00          MULSS XMM4,dword ptr [0x00baa83c]
00517d3c  0f28c4                    MOVAPS XMM0,XMM4
00517d3f  e85c7f5d00                CALL 0x00aefca0
00517d44  6a01                      PUSH 0x1
00517d46  bf0d000000                MOV EDI,0xd
00517d4b  8d4b48                    LEA ECX,[EBX + 0x48]
00517d4e  68ecfeb500                PUSH 0xb5feec
00517d53  2bf8                      SUB EDI,EAX
00517d55  e87628efff                CALL 0x0040a5d0
00517d5a  84c0                      TEST AL,AL
00517d5c  742c                      JZ 0x00517d8a
00517d5e  8b437c                    MOV EAX,dword ptr [EBX + 0x7c]
00517d61  85c0                      TEST EAX,EAX
00517d63  7425                      JZ 0x00517d8a
00517d65  33c0                      XOR EAX,EAX
00517d67  8d4b78                    LEA ECX,[EBX + 0x78]
00517d6a  3bc7                      CMP EAX,EDI
00517d6c  1bc0                      SBB EAX,EAX
00517d6e  23c7                      AND EAX,EDI
00517d70  660f6ec8                  MOVD XMM1,EAX
00517d74  0f5bc9                    CVTDQ2PS XMM1,XMM1
00517d77  e88410efff                CALL 0x00408e00
00517d7c  8b437c                    MOV EAX,dword ptr [EBX + 0x7c]
00517d7f  85c0                      TEST EAX,EAX
00517d81  7407                      JZ 0x00517d8a
00517d83  c6838c00000000            MOV byte ptr [EBX + 0x8c],0x0
00517d8a  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
00517d94  f30f108b34030000          MOVSS XMM1,dword ptr [EBX + 0x334]
00517d9c  f30f108338030000          MOVSS XMM0,dword ptr [EBX + 0x338]
00517da4  f30f5c8b3c030000          SUBSS XMM1,dword ptr [EBX + 0x33c]
00517dac  f30f5c8340030000          SUBSS XMM0,dword ptr [EBX + 0x340]
00517db4  f30f118b60030000          MOVSS dword ptr [EBX + 0x360],XMM1
00517dbc  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
00517dc4  8b8c245c010000            MOV ECX,dword ptr [ESP + 0x15c]
00517dcb  5f                        POP EDI
00517dcc  5e                        POP ESI
00517dcd  5b                        POP EBX
00517dce  33cc                      XOR ECX,ESP
00517dd0  e856735d00                CALL 0x00aef12b
00517dd5  8be5                      MOV ESP,EBP
00517dd7  5d                        POP EBP
00517dd8  c3                        RET
