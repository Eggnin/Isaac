; J460 NPC AI 0x00466600 AI_00466600
; types=71,72,73
; identities=71.0.0,71.1.0,72.0.0,72.1.0,73.0.0,73.1.0
; entry=00466600
00466600  53                        PUSH EBX
00466601  8bdc                      MOV EBX,ESP
00466603  83ec08                    SUB ESP,0x8
00466606  83e4f8                    AND ESP,0xfffffff8
00466609  83c404                    ADD ESP,0x4
0046660c  55                        PUSH EBP
0046660d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00466610  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00466614  8bec                      MOV EBP,ESP
00466616  6aff                      PUSH -0x1
00466618  687d27af00                PUSH 0xaf277d
0046661d  64a100000000              MOV EAX,FS:[0x0]
00466623  50                        PUSH EAX
00466624  53                        PUSH EBX
00466625  81ec80000000              SUB ESP,0x80
0046662b  56                        PUSH ESI
0046662c  57                        PUSH EDI
0046662d  a1b493bf00                MOV EAX,[0x00bf93b4]
00466632  33c5                      XOR EAX,EBP
00466634  50                        PUSH EAX
00466635  8d45f4                    LEA EAX,[EBP + -0xc]
00466638  64a300000000              MOV FS:[0x0],EAX
0046663e  8bf9                      MOV EDI,ECX
00466640  897dcc                    MOV dword ptr [EBP + -0x34],EDI
00466643  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0046664a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0046664d  8945dc                    MOV dword ptr [EBP + -0x24],EAX
00466650  757b                      JNZ 0x004666cd
00466652  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0046665c  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00466666  83f801                    CMP EAX,0x1
00466669  0f85e10f0000              JNZ 0x00467650
0046666f  0f281550bfba00            MOVAPS XMM2,xmmword ptr [0x00babf50]
00466676  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
0046667c  81c7e4010000              ADD EDI,0x1e4
00466682  c74594b81e053e            MOV dword ptr [EBP + -0x6c],0x3e051eb8
00466689  c74598b81e053e            MOV dword ptr [EBP + -0x68],0x3e051eb8
00466690  0f57c9                    XORPS XMM1,XMM1
00466693  c7459cb81e053e            MOV dword ptr [EBP + -0x64],0x3e051eb8
0046669a  3bf8                      CMP EDI,EAX
0046669c  0f84ae0f0000              JZ 0x00467650
004666a2  f30f7e4594                MOVQ XMM0,qword ptr [EBP + -0x6c]
004666a7  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
004666aa  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
004666af  0f1117                    MOVUPS xmmword ptr [EDI],XMM2
004666b2  894728                    MOV dword ptr [EDI + 0x28],EAX
004666b5  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
004666b9  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004666bc  64890d00000000            MOV dword ptr FS:[0x0],ECX
004666c3  59                        POP ECX
004666c4  5f                        POP EDI
004666c5  5e                        POP ESI
004666c6  8be5                      MOV ESP,EBP
004666c8  5d                        POP EBP
004666c9  8be3                      MOV ESP,EBX
004666cb  5b                        POP EBX
004666cc  c3                        RET
004666cd  837f3001                  CMP dword ptr [EDI + 0x30],0x1
004666d1  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
004666d9  f30f1015e0a3ba00          MOVSS XMM2,dword ptr [0x00baa3e0]
004666e1  7504                      JNZ 0x004666e7
004666e3  f30f59ca                  MULSS XMM1,XMM2
004666e7  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
004666ef  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
004666f2  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004666f7  83f948                    CMP ECX,0x48
004666fa  750a                      JNZ 0x00466706
004666fc  f30f100564a2ba00          MOVSS XMM0,dword ptr [0x00baa264]
00466704  eb0d                      JMP 0x00466713
00466706  83f949                    CMP ECX,0x49
00466709  750d                      JNZ 0x00466718
0046670b  f30f1005e8a2ba00          MOVSS XMM0,dword ptr [0x00baa2e8]
00466713  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00466718  f30f59ca                  MULSS XMM1,XMM2
0046671c  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
00466724  85c0                      TEST EAX,EAX
00466726  0f8571010000              JNZ 0x0046689d
0046672c  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00466732  83bfc00b000078            CMP dword ptr [EDI + 0xbc0],0x78
00466739  0f8e5e010000              JLE 0x0046689d
0046673f  e81c882800                CALL 0x006eef60
00466744  33d2                      XOR EDX,EDX
00466746  b9c8000000                MOV ECX,0xc8
0046674b  f7f1                      DIV ECX
0046674d  85d2                      TEST EDX,EDX
0046674f  0f8545010000              JNZ 0x0046689a
00466755  33c9                      XOR ECX,ECX
00466757  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0046675d  33f6                      XOR ESI,ESI
0046675f  8955ec                    MOV dword ptr [EBP + -0x14],EDX
00466762  8955a0                    MOV dword ptr [EBP + -0x60],EDX
00466765  8975a4                    MOV dword ptr [EBP + -0x5c],ESI
00466768  894de4                    MOV dword ptr [EBP + -0x1c],ECX
0046676b  894da8                    MOV dword ptr [EBP + -0x58],ECX
0046676e  894dfc                    MOV dword ptr [EBP + -0x4],ECX
00466771  a17816c700                MOV EAX,[0x00c71678]
00466776  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046677c  8945d0                    MOV dword ptr [EBP + -0x30],EAX
0046677f  398864120000              CMP dword ptr [EAX + 0x1264],ECX
00466785  0f869a000000              JBE 0x00466825
0046678b  33ff                      XOR EDI,EDI
0046678d  0f1f00                    NOP dword ptr [EAX]
00466790  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
00466796  8b04b8                    MOV EAX,dword ptr [EAX + EDI*0x4]
00466799  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
0046679c  83f847                    CMP EAX,0x47
0046679f  7519                      JNZ 0x004667ba
004667a1  c745e4d2030000            MOV dword ptr [EBP + -0x1c],0x3d2
004667a8  3bf1                      CMP ESI,ECX
004667aa  744a                      JZ 0x004667f6
004667ac  c706d2030000              MOV dword ptr [ESI],0x3d2
004667b2  83c604                    ADD ESI,0x4
004667b5  8975a4                    MOV dword ptr [EBP + -0x5c],ESI
004667b8  eb4f                      JMP 0x00466809
004667ba  83f848                    CMP EAX,0x48
004667bd  7519                      JNZ 0x004667d8
004667bf  c745e4d3030000            MOV dword ptr [EBP + -0x1c],0x3d3
004667c6  3bf1                      CMP ESI,ECX
004667c8  742c                      JZ 0x004667f6
004667ca  c706d3030000              MOV dword ptr [ESI],0x3d3
004667d0  83c604                    ADD ESI,0x4
004667d3  8975a4                    MOV dword ptr [EBP + -0x5c],ESI
004667d6  eb31                      JMP 0x00466809
004667d8  83f849                    CMP EAX,0x49
004667db  752c                      JNZ 0x00466809
004667dd  c745e4d4030000            MOV dword ptr [EBP + -0x1c],0x3d4
004667e4  3bf1                      CMP ESI,ECX
004667e6  740e                      JZ 0x004667f6
004667e8  c706d4030000              MOV dword ptr [ESI],0x3d4
004667ee  83c604                    ADD ESI,0x4
004667f1  8975a4                    MOV dword ptr [EBP + -0x5c],ESI
004667f4  eb13                      JMP 0x00466809
004667f6  8d45e4                    LEA EAX,[EBP + -0x1c]
004667f9  50                        PUSH EAX
004667fa  56                        PUSH ESI
004667fb  8d4da0                    LEA ECX,[EBP + -0x60]
004667fe  e88d1dfcff                CALL 0x00428590
00466803  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
00466806  8b75a4                    MOV ESI,dword ptr [EBP + -0x5c]
00466809  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
0046680c  47                        INC EDI
0046680d  3bb864120000              CMP EDI,dword ptr [EAX + 0x1264]
00466813  0f8277ffffff              JC 0x00466790
00466819  8b55a0                    MOV EDX,dword ptr [EBP + -0x60]
0046681c  8b7dcc                    MOV EDI,dword ptr [EBP + -0x34]
0046681f  894de4                    MOV dword ptr [EBP + -0x1c],ECX
00466822  8955ec                    MOV dword ptr [EBP + -0x14],EDX
00466825  2bf2                      SUB ESI,EDX
00466827  c1fe02                    SAR ESI,0x2
0046682a  85f6                      TEST ESI,ESI
0046682c  742f                      JZ 0x0046685d
0046682e  e82d872800                CALL 0x006eef60
00466833  33d2                      XOR EDX,EDX
00466835  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00466838  f7f6                      DIV ESI
0046683a  51                        PUSH ECX
0046683b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00466842  8d0491                    LEA EAX,[ECX + EDX*0x4]
00466845  6a00                      PUSH 0x0
00466847  6a3c                      PUSH 0x3c
00466849  51                        PUSH ECX
0046684a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00466851  8bcf                      MOV ECX,EDI
00466853  ff30                      PUSH dword ptr [EAX]
00466855  e846032700                CALL 0x006d6ba0
0046685a  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
0046685d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00466864  85d2                      TEST EDX,EDX
00466866  7432                      JZ 0x0046689a
00466868  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
0046686b  8bc2                      MOV EAX,EDX
0046686d  2bca                      SUB ECX,EDX
0046686f  83e1fc                    AND ECX,0xfffffffc
00466872  81f900100000              CMP ECX,0x1000
00466878  7216                      JC 0x00466890
0046687a  8b52fc                    MOV EDX,dword ptr [EDX + -0x4]
0046687d  83c123                    ADD ECX,0x23
00466880  2bc2                      SUB EAX,EDX
00466882  83c0fc                    ADD EAX,-0x4
00466885  83f81f                    CMP EAX,0x1f
00466888  7606                      JBE 0x00466890
0046688a  ff159488b100              CALL dword ptr [0x00b18894]
00466890  51                        PUSH ECX
00466891  52                        PUSH EDX
00466892  e8c5886800                CALL 0x00aef15c
00466897  83c408                    ADD ESP,0x8
0046689a  8b45dc                    MOV EAX,dword ptr [EBP + -0x24]
0046689d  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004668a4  0f8494000000              JZ 0x0046693e
004668aa  85c0                      TEST EAX,EAX
004668ac  7543                      JNZ 0x004668f1
004668ae  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004668b1  83f847                    CMP EAX,0x47
004668b4  751b                      JNZ 0x004668d1
004668b6  51                        PUSH ECX
004668b7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004668be  6a00                      PUSH 0x0
004668c0  6a14                      PUSH 0x14
004668c2  51                        PUSH ECX
004668c3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004668ca  68ce030000                PUSH 0x3ce
004668cf  eb66                      JMP 0x00466937
004668d1  83f848                    CMP EAX,0x48
004668d4  7543                      JNZ 0x00466919
004668d6  51                        PUSH ECX
004668d7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004668de  6a00                      PUSH 0x0
004668e0  6a14                      PUSH 0x14
004668e2  51                        PUSH ECX
004668e3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004668ea  68c9030000                PUSH 0x3c9
004668ef  eb46                      JMP 0x00466937
004668f1  83f801                    CMP EAX,0x1
004668f4  7548                      JNZ 0x0046693e
004668f6  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004668f9  83f847                    CMP EAX,0x47
004668fc  75d3                      JNZ 0x004668d1
004668fe  51                        PUSH ECX
004668ff  c704240000803f            MOV dword ptr [ESP],0x3f800000
00466906  6a00                      PUSH 0x0
00466908  6a14                      PUSH 0x14
0046690a  51                        PUSH ECX
0046690b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00466912  68c8030000                PUSH 0x3c8
00466917  eb1e                      JMP 0x00466937
00466919  83f849                    CMP EAX,0x49
0046691c  7520                      JNZ 0x0046693e
0046691e  51                        PUSH ECX
0046691f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00466926  6a00                      PUSH 0x0
00466928  6a14                      PUSH 0x14
0046692a  51                        PUSH ECX
0046692b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00466932  68ca030000                PUSH 0x3ca
00466937  8bcf                      MOV ECX,EDI
00466939  e862022700                CALL 0x006d6ba0
0046693e  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00466944  0f57d2                    XORPS XMM2,XMM2
00466947  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0046694d  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
00466950  8bc1                      MOV EAX,ECX
00466952  2500020000                AND EAX,0x200
00466957  83c800                    OR EAX,0x0
0046695a  7412                      JZ 0x0046696e
0046695c  6a00                      PUSH 0x0
0046695e  8d8f14040000              LEA ECX,[EDI + 0x414]
00466964  e897f93700                CALL 0x007e6300
00466969  e95a010000                JMP 0x00466ac8
0046696e  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
00466973  f30f59879c030000          MULSS XMM0,dword ptr [EDI + 0x39c]
0046697b  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
00466983  0f2fda                    COMISS XMM3,XMM2
00466986  f30f5e876c030000          DIVSS XMM0,dword ptr [EDI + 0x36c]
0046698e  7609                      JBE 0x00466999
00466990  0f28c8                    MOVAPS XMM1,XMM0
00466993  f30f58cb                  ADDSS XMM1,XMM3
00466997  eb07                      JMP 0x004669a0
00466999  0f28cb                    MOVAPS XMM1,XMM3
0046699c  f30f5cc8                  SUBSS XMM1,XMM0
004669a0  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004669a8  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004669b0  0f2fca                    COMISS XMM1,XMM2
004669b3  7606                      JBE 0x004669bb
004669b5  f30f58c1                  ADDSS XMM0,XMM1
004669b9  eb07                      JMP 0x004669c2
004669bb  f30f5cc8                  SUBSS XMM1,XMM0
004669bf  0f28c1                    MOVAPS XMM0,XMM1
004669c2  81e100080001              AND ECX,0x1000800
004669c8  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004669d0  83c900                    OR ECX,0x0
004669d3  0f84ef000000              JZ 0x00466ac8
004669d9  8bcf                      MOV ECX,EDI
004669db  e8607e2500                CALL 0x006be840
004669e0  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004669e8  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004669f0  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004669f8  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00466a00  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00466a07  0f28c1                    MOVAPS XMM0,XMM1
00466a0a  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00466a0f  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00466a16  f30f59c1                  MULSS XMM0,XMM1
00466a1a  0f28ca                    MOVAPS XMM1,XMM2
00466a1d  f30f59ca                  MULSS XMM1,XMM2
00466a21  f30f1155d8                MOVSS dword ptr [EBP + -0x28],XMM2
00466a26  f30f58c1                  ADDSS XMM0,XMM1
00466a2a  e821f0fcff                CALL 0x00435a50
00466a2f  0f57c9                    XORPS XMM1,XMM1
00466a32  0f2fc1                    COMISS XMM0,XMM1
00466a35  763b                      JBE 0x00466a72
00466a37  f30f109770030000          MOVSS XMM2,dword ptr [EDI + 0x370]
00466a3f  f30f5815a0a9ba00          ADDSS XMM2,dword ptr [0x00baa9a0]
00466a47  f30f5cd0                  SUBSS XMM2,XMM0
00466a4b  f30f59158ca0ba00          MULSS XMM2,dword ptr [0x00baa08c]
00466a53  f30f5fd1                  MAXSS XMM2,XMM1
00466a57  f30f5d15d0a2ba00          MINSS XMM2,dword ptr [0x00baa2d0]
00466a5f  f30f5ed0                  DIVSS XMM2,XMM0
00466a63  0f28da                    MOVAPS XMM3,XMM2
00466a66  f30f5955e4                MULSS XMM2,dword ptr [EBP + -0x1c]
00466a6b  f30f595dd8                MULSS XMM3,dword ptr [EBP + -0x28]
00466a70  eb0a                      JMP 0x00466a7c
00466a72  f30f105dd8                MOVSS XMM3,dword ptr [EBP + -0x28]
00466a77  f30f1055e4                MOVSS XMM2,dword ptr [EBP + -0x1c]
00466a7c  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
00466a84  0f2ee1                    UCOMISS XMM4,XMM1
00466a87  9f                        LAHF
00466a88  f6c444                    TEST AH,0x44
00466a8b  7b3b                      JNP 0x00466ac8
00466a8d  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00466a95  0f28c1                    MOVAPS XMM0,XMM1
00466a98  f30f59ca                  MULSS XMM1,XMM2
00466a9c  f30f59c3                  MULSS XMM0,XMM3
00466aa0  f30f5ecc                  DIVSS XMM1,XMM4
00466aa4  f30f5ec4                  DIVSS XMM0,XMM4
00466aa8  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00466ab0  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00466ab8  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00466ac0  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00466ac8  837f2849                  CMP dword ptr [EDI + 0x28],0x49
00466acc  7430                      JZ 0x00466afe
00466ace  6a00                      PUSH 0x0
00466ad0  8d4f48                    LEA ECX,[EDI + 0x48]
00466ad3  e84847faff                CALL 0x0040b220
00466ad8  6a00                      PUSH 0x0
00466ada  8d4f48                    LEA ECX,[EDI + 0x48]
00466add  f30f10403c                MOVSS XMM0,dword ptr [EAX + 0x3c]
00466ae2  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00466aea  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
00466aef  e82c47faff                CALL 0x0040b220
00466af4  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
00466af9  f30f11403c                MOVSS dword ptr [EAX + 0x3c],XMM0
00466afe  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00466b05  0f84450b0000              JZ 0x00467650
00466b0b  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00466b11  33c0                      XOR EAX,EAX
00466b13  81e100000020              AND ECX,0x20000000
00466b19  0bc1                      OR EAX,ECX
00466b1b  0f852f0b0000              JNZ 0x00467650
00466b21  e83a842800                CALL 0x006eef60
00466b26  0f57c0                    XORPS XMM0,XMM0
00466b29  f20f2ac0                  CVTSI2SD XMM0,EAX
00466b2d  c1e81f                    SHR EAX,0x1f
00466b30  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00466b39  660f5ac0                  CVTPD2PS XMM0,XMM0
00466b3d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00466b45  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00466b4d  f30f58c0                  ADDSS XMM0,XMM0
00466b51  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
00466b56  e8e569fbff                CALL 0x0041d540
00466b5b  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00466b63  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
00466b68  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
00466b6d  e8ae69fbff                CALL 0x0041d520
00466b72  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00466b7a  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00466b7d  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00466b82  83f847                    CMP EAX,0x47
00466b85  0f85f8040000              JNZ 0x00467083
00466b8b  e8d0832800                CALL 0x006eef60
00466b90  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
00466b95  6a00                      PUSH 0x0
00466b97  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00466b9d  0f28c8                    MOVAPS XMM1,XMM0
00466ba0  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00466ba8  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
00466bb0  68acd6c500                PUSH 0xc5d6ac
00466bb5  68dcd5c500                PUSH 0xc5d5dc
00466bba  6a00                      PUSH 0x0
00466bbc  50                        PUSH EAX
00466bbd  ff7730                    PUSH dword ptr [EDI + 0x30]
00466bc0  8d45c0                    LEA EAX,[EBP + -0x40]
00466bc3  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
00466bc8  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
00466bcd  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00466bd5  57                        PUSH EDI
00466bd6  50                        PUSH EAX
00466bd7  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
00466bdc  8d45d4                    LEA EAX,[EBP + -0x2c]
00466bdf  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
00466be4  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
00466be9  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
00466bf1  50                        PUSH EAX
00466bf2  ff772c                    PUSH dword ptr [EDI + 0x2c]
00466bf5  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00466bfa  6a48                      PUSH 0x48
00466bfc  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
00466c01  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
00466c06  e8151ffcff                CALL 0x00428b20
00466c0b  50                        PUSH EAX
00466c0c  e8a09c6800                CALL 0x00af08b1
00466c11  8bc8                      MOV ECX,EAX
00466c13  83c414                    ADD ESP,0x14
00466c16  8bb168010000              MOV ESI,dword ptr [ECX + 0x168]
00466c1c  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
00466c22  83e6fb                    AND ESI,0xfffffffb
00466c25  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
00466c2b  8945cc                    MOV dword ptr [EBP + -0x34],EAX
00466c2e  89b168010000              MOV dword ptr [ECX + 0x168],ESI
00466c34  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00466c3a  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00466c40  2500000080                AND EAX,0x80000000
00466c45  83c800                    OR EAX,0x0
00466c48  741b                      JZ 0x00466c65
00466c4a  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
00466c4d  81ce00000080              OR ESI,0x80000000
00466c53  89b168010000              MOV dword ptr [ECX + 0x168],ESI
00466c59  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
00466c5f  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00466c65  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00466c6b  81e200000010              AND EDX,0x10000000
00466c71  8945a0                    MOV dword ptr [EBP + -0x60],EAX
00466c74  33c0                      XOR EAX,EAX
00466c76  0bc2                      OR EAX,EDX
00466c78  7414                      JZ 0x00466c8e
00466c7a  c7818403000000007041      MOV dword ptr [ECX + 0x384],0x41700000
00466c84  c7818003000000007041      MOV dword ptr [ECX + 0x380],0x41700000
00466c8e  e8cd822800                CALL 0x006eef60
00466c93  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00466c9b  f30f5c45ec                SUBSS XMM0,dword ptr [EBP + -0x14]
00466ca0  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
00466ca5  f30f105de4                MOVSS XMM3,dword ptr [EBP + -0x1c]
00466caa  f30f590d0cadba00          MULSS XMM1,dword ptr [0x00baad0c]
00466cb2  6a00                      PUSH 0x0
00466cb4  f30f591d0cadba00          MULSS XMM3,dword ptr [0x00baad0c]
00466cbc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00466cc2  68acd6c500                PUSH 0xc5d6ac
00466cc7  68dcd5c500                PUSH 0xc5d5dc
00466ccc  6a00                      PUSH 0x0
00466cce  50                        PUSH EAX
00466ccf  ff7730                    PUSH dword ptr [EDI + 0x30]
00466cd2  8d45c8                    LEA EAX,[EBP + -0x38]
00466cd5  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
00466cda  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00466ce2  f30f5c45e4                SUBSS XMM0,dword ptr [EBP + -0x1c]
00466ce7  57                        PUSH EDI
00466ce8  50                        PUSH EAX
00466ce9  8d45b0                    LEA EAX,[EBP + -0x50]
00466cec  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
00466cf1  50                        PUSH EAX
00466cf2  ff772c                    PUSH dword ptr [EDI + 0x2c]
00466cf5  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
00466cfa  6a48                      PUSH 0x48
00466cfc  f30f115dd8                MOVSS dword ptr [EBP + -0x28],XMM3
00466d01  f30f115dcc                MOVSS dword ptr [EBP + -0x34],XMM3
00466d06  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
00466d0b  e8101efcff                CALL 0x00428b20
00466d10  50                        PUSH EAX
00466d11  e89b9b6800                CALL 0x00af08b1
00466d16  8bc8                      MOV ECX,EAX
00466d18  83c414                    ADD ESP,0x14
00466d1b  8bb168010000              MOV ESI,dword ptr [ECX + 0x168]
00466d21  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
00466d27  83e6fb                    AND ESI,0xfffffffb
00466d2a  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
00466d30  8945cc                    MOV dword ptr [EBP + -0x34],EAX
00466d33  89b168010000              MOV dword ptr [ECX + 0x168],ESI
00466d39  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00466d3f  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00466d45  2500000080                AND EAX,0x80000000
00466d4a  83c800                    OR EAX,0x0
00466d4d  741b                      JZ 0x00466d6a
00466d4f  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
00466d52  81ce00000080              OR ESI,0x80000000
00466d58  89b168010000              MOV dword ptr [ECX + 0x168],ESI
00466d5e  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
00466d64  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00466d6a  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00466d70  81e200000010              AND EDX,0x10000000
00466d76  8945a0                    MOV dword ptr [EBP + -0x60],EAX
00466d79  33c0                      XOR EAX,EAX
00466d7b  0bc2                      OR EAX,EDX
00466d7d  7414                      JZ 0x00466d93
00466d7f  c7818403000000007041      MOV dword ptr [ECX + 0x384],0x41700000
00466d89  c7818003000000007041      MOV dword ptr [ECX + 0x380],0x41700000
00466d93  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00466d97  0f84d9010000              JZ 0x00466f76
00466d9d  837ddc01                  CMP dword ptr [EBP + -0x24],0x1
00466da1  0f84cf010000              JZ 0x00466f76
00466da7  e8b4812800                CALL 0x006eef60
00466dac  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
00466db1  6a00                      PUSH 0x0
00466db3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00466db9  68acd6c500                PUSH 0xc5d6ac
00466dbe  68dcd5c500                PUSH 0xc5d5dc
00466dc3  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
00466dc8  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
00466dcd  6a00                      PUSH 0x0
00466dcf  50                        PUSH EAX
00466dd0  ff7730                    PUSH dword ptr [EDI + 0x30]
00466dd3  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
00466dd8  8d45b0                    LEA EAX,[EBP + -0x50]
00466ddb  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
00466de0  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00466de8  57                        PUSH EDI
00466de9  50                        PUSH EAX
00466dea  8d45a4                    LEA EAX,[EBP + -0x5c]
00466ded  50                        PUSH EAX
00466dee  ff772c                    PUSH dword ptr [EDI + 0x2c]
00466df1  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
00466df6  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00466dfe  f30f5c45e4                SUBSS XMM0,dword ptr [EBP + -0x1c]
00466e03  6a48                      PUSH 0x48
00466e05  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00466e0a  e8111dfcff                CALL 0x00428b20
00466e0f  50                        PUSH EAX
00466e10  e89c9a6800                CALL 0x00af08b1
00466e15  8bf0                      MOV ESI,EAX
00466e17  83c414                    ADD ESP,0x14
00466e1a  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
00466e20  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00466e26  83e0fb                    AND EAX,0xfffffffb
00466e29  6a00                      PUSH 0x0
00466e2b  894dd0                    MOV dword ptr [EBP + -0x30],ECX
00466e2e  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
00466e34  8bcf                      MOV ECX,EDI
00466e36  6800000080                PUSH 0x80000000
00466e3b  8945cc                    MOV dword ptr [EBP + -0x34],EAX
00466e3e  898668010000              MOV dword ptr [ESI + 0x168],EAX
00466e44  e8e705fbff                CALL 0x00417430
00466e49  84c0                      TEST AL,AL
00466e4b  7417                      JZ 0x00466e64
00466e4d  8b45cc                    MOV EAX,dword ptr [EBP + -0x34]
00466e50  0d00000080                OR EAX,0x80000000
00466e55  898668010000              MOV dword ptr [ESI + 0x168],EAX
00466e5b  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
00466e5e  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00466e64  6800000010                PUSH 0x10000000
00466e69  6a00                      PUSH 0x0
00466e6b  8bcf                      MOV ECX,EDI
00466e6d  e8be05fbff                CALL 0x00417430
00466e72  84c0                      TEST AL,AL
00466e74  7414                      JZ 0x00466e8a
00466e76  c7868403000000007041      MOV dword ptr [ESI + 0x384],0x41700000
00466e80  c7868003000000007041      MOV dword ptr [ESI + 0x380],0x41700000
00466e8a  e8d1802800                CALL 0x006eef60
00466e8f  f30f1045c4                MOVSS XMM0,dword ptr [EBP + -0x3c]
00466e94  6a00                      PUSH 0x0
00466e96  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00466e9c  68acd6c500                PUSH 0xc5d6ac
00466ea1  68dcd5c500                PUSH 0xc5d5dc
00466ea6  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
00466eab  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
00466eb0  6a00                      PUSH 0x0
00466eb2  50                        PUSH EAX
00466eb3  ff7730                    PUSH dword ptr [EDI + 0x30]
00466eb6  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00466ebb  8d45a4                    LEA EAX,[EBP + -0x5c]
00466ebe  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00466ec6  f30f5c45ec                SUBSS XMM0,dword ptr [EBP + -0x14]
00466ecb  57                        PUSH EDI
00466ecc  50                        PUSH EAX
00466ecd  8d45b0                    LEA EAX,[EBP + -0x50]
00466ed0  50                        PUSH EAX
00466ed1  ff772c                    PUSH dword ptr [EDI + 0x2c]
00466ed4  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
00466ed9  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
00466ede  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00466ee6  6a48                      PUSH 0x48
00466ee8  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
00466eed  e82e1cfcff                CALL 0x00428b20
00466ef2  50                        PUSH EAX
00466ef3  e8b9996800                CALL 0x00af08b1
00466ef8  8bf0                      MOV ESI,EAX
00466efa  83c414                    ADD ESP,0x14
00466efd  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
00466f03  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00466f09  83e0fb                    AND EAX,0xfffffffb
00466f0c  6a00                      PUSH 0x0
00466f0e  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
00466f11  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
00466f17  8bcf                      MOV ECX,EDI
00466f19  6800000080                PUSH 0x80000000
00466f1e  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00466f21  898668010000              MOV dword ptr [ESI + 0x168],EAX
00466f27  e80405fbff                CALL 0x00417430
00466f2c  84c0                      TEST AL,AL
00466f2e  7417                      JZ 0x00466f47
00466f30  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
00466f33  0d00000080                OR EAX,0x80000000
00466f38  898668010000              MOV dword ptr [ESI + 0x168],EAX
00466f3e  8b45c4                    MOV EAX,dword ptr [EBP + -0x3c]
00466f41  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00466f47  6800000010                PUSH 0x10000000
00466f4c  6a00                      PUSH 0x0
00466f4e  8bcf                      MOV ECX,EDI
00466f50  e8db04fbff                CALL 0x00417430
00466f55  84c0                      TEST AL,AL
00466f57  0f84e8000000              JZ 0x00467045
00466f5d  c7868403000000007041      MOV dword ptr [ESI + 0x384],0x41700000
00466f67  c7868003000000007041      MOV dword ptr [ESI + 0x380],0x41700000
00466f71  e9cf000000                JMP 0x00467045
00466f76  e8e57f2800                CALL 0x006eef60
00466f7b  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
00466f80  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00466f88  6a00                      PUSH 0x0
00466f8a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00466f90  68acd6c500                PUSH 0xc5d6ac
00466f95  68dcd5c500                PUSH 0xc5d5dc
00466f9a  6a00                      PUSH 0x0
00466f9c  50                        PUSH EAX
00466f9d  ff7730                    PUSH dword ptr [EDI + 0x30]
00466fa0  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
00466fa5  8d45a4                    LEA EAX,[EBP + -0x5c]
00466fa8  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00466fb0  f30f5c45e4                SUBSS XMM0,dword ptr [EBP + -0x1c]
00466fb5  57                        PUSH EDI
00466fb6  6840b6c700                PUSH 0xc7b640
00466fbb  50                        PUSH EAX
00466fbc  ff772c                    PUSH dword ptr [EDI + 0x2c]
00466fbf  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00466fc4  6a48                      PUSH 0x48
00466fc6  e8551bfcff                CALL 0x00428b20
00466fcb  50                        PUSH EAX
00466fcc  e8e0986800                CALL 0x00af08b1
00466fd1  8bc8                      MOV ECX,EAX
00466fd3  83c414                    ADD ESP,0x14
00466fd6  8b9168010000              MOV EDX,dword ptr [ECX + 0x168]
00466fdc  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
00466fe2  83e2fb                    AND EDX,0xfffffffb
00466fe5  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
00466feb  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00466fee  899168010000              MOV dword ptr [ECX + 0x168],EDX
00466ff4  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00466ffa  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
00467000  2500000080                AND EAX,0x80000000
00467005  83c800                    OR EAX,0x0
00467008  741b                      JZ 0x00467025
0046700a  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
0046700d  81ca00000080              OR EDX,0x80000000
00467013  899168010000              MOV dword ptr [ECX + 0x168],EDX
00467019  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
0046701f  8bb76c010000              MOV ESI,dword ptr [EDI + 0x16c]
00467025  81e600000010              AND ESI,0x10000000
0046702b  33c0                      XOR EAX,EAX
0046702d  0bc6                      OR EAX,ESI
0046702f  7414                      JZ 0x00467045
00467031  c7818403000000007041      MOV dword ptr [ECX + 0x384],0x41700000
0046703b  c7818003000000007041      MOV dword ptr [ECX + 0x380],0x41700000
00467045  837ddc00                  CMP dword ptr [EBP + -0x24],0x0
00467049  0f8501060000              JNZ 0x00467650
0046704f  51                        PUSH ECX
00467050  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467057  6a00                      PUSH 0x0
00467059  6a14                      PUSH 0x14
0046705b  51                        PUSH ECX
0046705c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467063  8bcf                      MOV ECX,EDI
00467065  68d1030000                PUSH 0x3d1
0046706a  e831fb2600                CALL 0x006d6ba0
0046706f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00467072  64890d00000000            MOV dword ptr FS:[0x0],ECX
00467079  59                        POP ECX
0046707a  5f                        POP EDI
0046707b  5e                        POP ESI
0046707c  8be5                      MOV ESP,EBP
0046707e  5d                        POP EBP
0046707f  8be3                      MOV ESP,EBX
00467081  5b                        POP EBX
00467082  c3                        RET
00467083  83f848                    CMP EAX,0x48
00467086  0f85fe010000              JNZ 0x0046728a
0046708c  e8cf7e2800                CALL 0x006eef60
00467091  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
00467096  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0046709e  6a00                      PUSH 0x0
004670a0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004670a6  68acd6c500                PUSH 0xc5d6ac
004670ab  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
004670b0  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004670b5  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004670bd  68dcd5c500                PUSH 0xc5d5dc
004670c2  6a00                      PUSH 0x0
004670c4  50                        PUSH EAX
004670c5  ff7730                    PUSH dword ptr [EDI + 0x30]
004670c8  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
004670cd  8d45a4                    LEA EAX,[EBP + -0x5c]
004670d0  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
004670d5  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004670dd  57                        PUSH EDI
004670de  50                        PUSH EAX
004670df  8d45b0                    LEA EAX,[EBP + -0x50]
004670e2  50                        PUSH EAX
004670e3  ff772c                    PUSH dword ptr [EDI + 0x2c]
004670e6  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004670eb  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004670f0  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004670f8  6a49                      PUSH 0x49
004670fa  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004670ff  e81c1afcff                CALL 0x00428b20
00467104  50                        PUSH EAX
00467105  e8a7976800                CALL 0x00af08b1
0046710a  8bf0                      MOV ESI,EAX
0046710c  83c414                    ADD ESP,0x14
0046710f  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
00467115  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
0046711b  83e0fb                    AND EAX,0xfffffffb
0046711e  6a00                      PUSH 0x0
00467120  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
00467123  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
00467129  8bcf                      MOV ECX,EDI
0046712b  6800000080                PUSH 0x80000000
00467130  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00467133  898668010000              MOV dword ptr [ESI + 0x168],EAX
00467139  e8f202fbff                CALL 0x00417430
0046713e  84c0                      TEST AL,AL
00467140  7417                      JZ 0x00467159
00467142  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
00467145  0d00000080                OR EAX,0x80000000
0046714a  898668010000              MOV dword ptr [ESI + 0x168],EAX
00467150  8b45c4                    MOV EAX,dword ptr [EBP + -0x3c]
00467153  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00467159  6800000010                PUSH 0x10000000
0046715e  6a00                      PUSH 0x0
00467160  8bcf                      MOV ECX,EDI
00467162  e8c902fbff                CALL 0x00417430
00467167  84c0                      TEST AL,AL
00467169  7414                      JZ 0x0046717f
0046716b  c7868403000000007041      MOV dword ptr [ESI + 0x384],0x41700000
00467175  c7868003000000007041      MOV dword ptr [ESI + 0x380],0x41700000
0046717f  e8dc7d2800                CALL 0x006eef60
00467184  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
00467189  f30f59050cadba00          MULSS XMM0,dword ptr [0x00baad0c]
00467191  6a00                      PUSH 0x0
00467193  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00467199  68acd6c500                PUSH 0xc5d6ac
0046719e  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
004671a3  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004671a8  f30f59050cadba00          MULSS XMM0,dword ptr [0x00baad0c]
004671b0  68dcd5c500                PUSH 0xc5d5dc
004671b5  6a00                      PUSH 0x0
004671b7  50                        PUSH EAX
004671b8  ff7730                    PUSH dword ptr [EDI + 0x30]
004671bb  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
004671c0  8d45a4                    LEA EAX,[EBP + -0x5c]
004671c3  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004671cb  f30f5c45ec                SUBSS XMM0,dword ptr [EBP + -0x14]
004671d0  57                        PUSH EDI
004671d1  50                        PUSH EAX
004671d2  8d45b0                    LEA EAX,[EBP + -0x50]
004671d5  50                        PUSH EAX
004671d6  ff772c                    PUSH dword ptr [EDI + 0x2c]
004671d9  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004671de  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004671e6  f30f5c45e4                SUBSS XMM0,dword ptr [EBP + -0x1c]
004671eb  6a49                      PUSH 0x49
004671ed  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004671f2  e82919fcff                CALL 0x00428b20
004671f7  50                        PUSH EAX
004671f8  e8b4966800                CALL 0x00af08b1
004671fd  8bf0                      MOV ESI,EAX
004671ff  83c414                    ADD ESP,0x14
00467202  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
00467208  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
0046720e  83e0fb                    AND EAX,0xfffffffb
00467211  6a00                      PUSH 0x0
00467213  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
00467216  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
0046721c  8bcf                      MOV ECX,EDI
0046721e  6800000080                PUSH 0x80000000
00467223  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00467226  898668010000              MOV dword ptr [ESI + 0x168],EAX
0046722c  e8ff01fbff                CALL 0x00417430
00467231  84c0                      TEST AL,AL
00467233  7417                      JZ 0x0046724c
00467235  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
00467238  0d00000080                OR EAX,0x80000000
0046723d  898668010000              MOV dword ptr [ESI + 0x168],EAX
00467243  8b45c4                    MOV EAX,dword ptr [EBP + -0x3c]
00467246  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0046724c  6800000010                PUSH 0x10000000
00467251  6a00                      PUSH 0x0
00467253  8bcf                      MOV ECX,EDI
00467255  e8d601fbff                CALL 0x00417430
0046725a  84c0                      TEST AL,AL
0046725c  0f84ee030000              JZ 0x00467650
00467262  c7868403000000007041      MOV dword ptr [ESI + 0x384],0x41700000
0046726c  c7868003000000007041      MOV dword ptr [ESI + 0x380],0x41700000
00467276  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00467279  64890d00000000            MOV dword ptr FS:[0x0],ECX
00467280  59                        POP ECX
00467281  5f                        POP EDI
00467282  5e                        POP ESI
00467283  8be5                      MOV ESP,EBP
00467285  5d                        POP EBP
00467286  8be3                      MOV ESP,EBX
00467288  5b                        POP EBX
00467289  c3                        RET
0046728a  51                        PUSH ECX
0046728b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00467292  6a00                      PUSH 0x0
00467294  6a02                      PUSH 0x2
00467296  51                        PUSH ECX
00467297  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0046729e  8bcf                      MOV ECX,EDI
004672a0  6809010000                PUSH 0x109
004672a5  e8f6f82600                CALL 0x006d6ba0
004672aa  8d8f14040000              LEA ECX,[EDI + 0x414]
004672b0  e83bfd3700                CALL 0x007e6ff0
004672b5  8b8f34040000              MOV ECX,dword ptr [EDI + 0x434]
004672bb  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004672c1  81f9bf010000              CMP ECX,0x1bf
004672c7  770f                      JA 0x004672d8
004672c9  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
004672cf  8b84886c070000            MOV EAX,dword ptr [EAX + ECX*0x4 + 0x76c]
004672d6  eb02                      JMP 0x004672da
004672d8  33c0                      XOR EAX,EAX
004672da  8b55dc                    MOV EDX,dword ptr [EBP + -0x24]
004672dd  83fa01                    CMP EDX,0x1
004672e0  740b                      JZ 0x004672ed
004672e2  3db80b0000                CMP EAX,0xbb8
004672e7  0f8463030000              JZ 0x00467650
004672ed  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
004672f0  33c0                      XOR EAX,EAX
004672f2  83f901                    CMP ECX,0x1
004672f5  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
004672f8  0f94c0                    SETZ AL
004672fb  8d044517000000            LEA EAX,[EAX*0x2 + 0x17]
00467302  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00467305  83fa01                    CMP EDX,0x1
00467308  0f8575020000              JNZ 0x00467583
0046730e  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00467316  81c600830100              ADD ESI,0x18300
0046731c  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
00467321  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00467329  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0046732e  ff75bc                    PUSH dword ptr [EBP + -0x44]
00467331  8b0e                      MOV ECX,dword ptr [ESI]
00467333  ff75b8                    PUSH dword ptr [EBP + -0x48]
00467336  e845943800                CALL 0x007f0780
0046733b  85c0                      TEST EAX,EAX
0046733d  0f850d030000              JNZ 0x00467650
00467343  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
00467346  8945e0                    MOV dword ptr [EBP + -0x20],EAX
00467349  8945dc                    MOV dword ptr [EBP + -0x24],EAX
0046734c  0f1f4000                  NOP dword ptr [EAX]
00467350  8b36                      MOV ESI,dword ptr [ESI]
00467352  85c0                      TEST EAX,EAX
00467354  7558                      JNZ 0x004673ae
00467356  8bcf                      MOV ECX,EDI
00467358  e8e3742500                CALL 0x006be840
0046735d  6a00                      PUSH 0x0
0046735f  6a00                      PUSH 0x0
00467361  6a00                      PUSH 0x0
00467363  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0046736b  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00467373  8d45a4                    LEA EAX,[EBP + -0x5c]
00467376  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0046737e  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00467386  51                        PUSH ECX
00467387  c7042400008c42            MOV dword ptr [ESP],0x428c0000
0046738e  50                        PUSH EAX
0046738f  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00467397  8d45b0                    LEA EAX,[EBP + -0x50]
0046739a  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
004673a2  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
004673a7  f30f114da8                MOVSS dword ptr [EBP + -0x58],XMM1
004673ac  eb18                      JMP 0x004673c6
004673ae  6a00                      PUSH 0x0
004673b0  6a00                      PUSH 0x0
004673b2  6a00                      PUSH 0x0
004673b4  51                        PUSH ECX
004673b5  8d873c030000              LEA EAX,[EDI + 0x33c]
004673bb  c704240000c842            MOV dword ptr [ESP],0x42c80000
004673c2  50                        PUSH EAX
004673c3  8d45e8                    LEA EAX,[EBP + -0x18]
004673c6  50                        PUSH EAX
004673c7  8bce                      MOV ECX,ESI
004673c9  e852c13a00                CALL 0x00813520
004673ce  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004673d2  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004673d7  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004673dc  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004673e1  e87a7b2800                CALL 0x006eef60
004673e6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004673ec  6a00                      PUSH 0x0
004673ee  68acd6c500                PUSH 0xc5d6ac
004673f3  68dcd5c500                PUSH 0xc5d5dc
004673f8  6a00                      PUSH 0x0
004673fa  50                        PUSH EAX
004673fb  6a00                      PUSH 0x0
004673fd  57                        PUSH EDI
004673fe  6840b6c700                PUSH 0xc7b640
00467403  8d45e0                    LEA EAX,[EBP + -0x20]
00467406  50                        PUSH EAX
00467407  6a00                      PUSH 0x0
00467409  6a55                      PUSH 0x55
0046740b  e81017fcff                CALL 0x00428b20
00467410  50                        PUSH EAX
00467411  e89b946800                CALL 0x00af08b1
00467416  f30f102d04a9ba00          MOVSS XMM5,dword ptr [0x00baa904]
0046741e  8bd0                      MOV EDX,EAX
00467420  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
00467425  83c414                    ADD ESP,0x14
00467428  f30f5cc5                  SUBSS XMM0,XMM5
0046742c  a17816c700                MOV EAX,[0x00c71678]
00467431  0500830100                ADD EAX,0x18300
00467436  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00467439  f30f5ec5                  DIVSS XMM0,XMM5
0046743d  8b08                      MOV ECX,dword ptr [EAX]
0046743f  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00467447  f30f2cc0                  CVTTSS2SI EAX,XMM0
0046744b  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
00467450  8945d8                    MOV dword ptr [EBP + -0x28],EAX
00467453  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
0046745b  f30f5ec5                  DIVSS XMM0,XMM5
0046745f  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00467467  f30f2cf0                  CVTTSS2SI ESI,XMM0
0046746b  85c0                      TEST EAX,EAX
0046746d  7836                      JS 0x004674a5
0046746f  8b410c                    MOV EAX,dword ptr [ECX + 0xc]
00467472  3945d8                    CMP dword ptr [EBP + -0x28],EAX
00467475  7d2e                      JGE 0x004674a5
00467477  85f6                      TEST ESI,ESI
00467479  782a                      JS 0x004674a5
0046747b  3b7110                    CMP ESI,dword ptr [ECX + 0x10]
0046747e  7d25                      JGE 0x004674a5
00467480  0fafc6                    IMUL EAX,ESI
00467483  0345d8                    ADD EAX,dword ptr [EBP + -0x28]
00467486  3dbf010000                CMP EAX,0x1bf
0046748b  7718                      JA 0x004674a5
0046748d  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
00467498  7f0b                      JG 0x004674a5
0046749a  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
004674a5  f30f10a23c030000          MOVSS XMM4,dword ptr [EDX + 0x33c]
004674ad  f30f108250030000          MOVSS XMM0,dword ptr [EDX + 0x350]
004674b5  8b826c010000              MOV EAX,dword ptr [EDX + 0x16c]
004674bb  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
004674c3  8b75bc                    MOV ESI,dword ptr [EBP + -0x44]
004674c6  f30f11a234030000          MOVSS dword ptr [EDX + 0x334],XMM4
004674ce  f30f109a40030000          MOVSS XMM3,dword ptr [EDX + 0x340]
004674d6  f30f119a38030000          MOVSS dword ptr [EDX + 0x338],XMM3
004674de  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004674e6  f30f118a3c030000          MOVSS dword ptr [EDX + 0x33c],XMM1
004674ee  f30f5ce1                  SUBSS XMM4,XMM1
004674f2  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
004674fa  83a268010000fb            AND dword ptr [EDX + 0x168],0xfffffffb
00467501  f30f5cda                  SUBSS XMM3,XMM2
00467505  89826c010000              MOV dword ptr [EDX + 0x16c],EAX
0046750b  8b45dc                    MOV EAX,dword ptr [EBP + -0x24]
0046750e  f30f5925bca0ba00          MULSS XMM4,dword ptr [0x00baa0bc]
00467516  40                        INC EAX
00467517  c782640b000006000000      MOV dword ptr [EDX + 0xb64],0x6
00467521  f30f119240030000          MOVSS dword ptr [EDX + 0x340],XMM2
00467529  f30f591dbca0ba00          MULSS XMM3,dword ptr [0x00baa0bc]
00467531  c782bc0b0000000000c1      MOV dword ptr [EDX + 0xbbc],0xc1000000
0046753b  f30f118250030000          MOVSS dword ptr [EDX + 0x350],XMM0
00467543  f30f11a260030000          MOVSS dword ptr [EDX + 0x360],XMM4
0046754b  f30f119a64030000          MOVSS dword ptr [EDX + 0x364],XMM3
00467553  f30f11a2b00b0000          MOVSS dword ptr [EDX + 0xbb0],XMM4
0046755b  f30f119ab40b0000          MOVSS dword ptr [EDX + 0xbb4],XMM3
00467563  8945dc                    MOV dword ptr [EBP + -0x24],EAX
00467566  83f802                    CMP EAX,0x2
00467569  0f8ce1fdffff              JL 0x00467350
0046756f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00467572  64890d00000000            MOV dword ptr FS:[0x0],ECX
00467579  59                        POP ECX
0046757a  5f                        POP EDI
0046757b  5e                        POP ESI
0046757c  8be5                      MOV ESP,EBP
0046757e  5d                        POP EBP
0046757f  8be3                      MOV ESP,EBX
00467581  5b                        POP EBX
00467582  c3                        RET
00467583  83f901                    CMP ECX,0x1
00467586  7433                      JZ 0x004675bb
00467588  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00467590  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
00467596  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
0046759b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004675a3  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
004675a8  ff75cc                    PUSH dword ptr [EBP + -0x34]
004675ab  ff75c8                    PUSH dword ptr [EBP + -0x38]
004675ae  e8cd913800                CALL 0x007f0780
004675b3  85c0                      TEST EAX,EAX
004675b5  0f8595000000              JNZ 0x00467650
004675bb  e8a0792800                CALL 0x006eef60
004675c0  6a00                      PUSH 0x0
004675c2  68acd6c500                PUSH 0xc5d6ac
004675c7  68dcd5c500                PUSH 0xc5d5dc
004675cc  6a00                      PUSH 0x0
004675ce  50                        PUSH EAX
004675cf  6a00                      PUSH 0x0
004675d1  57                        PUSH EDI
004675d2  6840b6c700                PUSH 0xc7b640
004675d7  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004675dd  51                        PUSH ECX
004675de  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004675e4  6a00                      PUSH 0x0
004675e6  ff75bc                    PUSH dword ptr [EBP + -0x44]
004675e9  e83215fcff                CALL 0x00428b20
004675ee  50                        PUSH EAX
004675ef  e8bd926800                CALL 0x00af08b1
004675f4  8bf0                      MOV ESI,EAX
004675f6  83c414                    ADD ESP,0x14
004675f9  8bcf                      MOV ECX,EDI
004675fb  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
00467603  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
0046760b  6800000010                PUSH 0x10000000
00467610  6a00                      PUSH 0x0
00467612  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
0046761a  e811fefaff                CALL 0x00417430
0046761f  84c0                      TEST AL,AL
00467621  741a                      JZ 0x0046763d
00467623  837dc401                  CMP dword ptr [EBP + -0x3c],0x1
00467627  7514                      JNZ 0x0046763d
00467629  c7868003000000002041      MOV dword ptr [ESI + 0x380],0x41200000
00467633  c7868403000000002041      MOV dword ptr [ESI + 0x384],0x41200000
0046763d  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00467643  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0046764a  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00467650  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00467653  64890d00000000            MOV dword ptr FS:[0x0],ECX
0046765a  59                        POP ECX
0046765b  5f                        POP EDI
0046765c  5e                        POP ESI
0046765d  8be5                      MOV ESP,EBP
0046765f  5d                        POP EBP
00467660  8be3                      MOV ESP,EBX
00467662  5b                        POP EBX
00467663  c3                        RET
