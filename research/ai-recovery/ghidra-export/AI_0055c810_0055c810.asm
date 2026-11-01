; J460 NPC AI 0x0055c810 AI_0055c810
; types=814
; identities=814.0.0
; entry=0055c810
0055c810  53                        PUSH EBX
0055c811  8bdc                      MOV EBX,ESP
0055c813  83ec08                    SUB ESP,0x8
0055c816  83e4f8                    AND ESP,0xfffffff8
0055c819  83c404                    ADD ESP,0x4
0055c81c  55                        PUSH EBP
0055c81d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0055c820  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0055c824  8bec                      MOV EBP,ESP
0055c826  83ec38                    SUB ESP,0x38
0055c829  a1b493bf00                MOV EAX,[0x00bf93b4]
0055c82e  33c5                      XOR EAX,EBP
0055c830  8945fc                    MOV dword ptr [EBP + -0x4],EAX
0055c833  56                        PUSH ESI
0055c834  57                        PUSH EDI
0055c835  8bf9                      MOV EDI,ECX
0055c837  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
0055c83e  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0055c844  83f806                    CMP EAX,0x6
0055c847  0f8759060000              JA 0x0055cea6
0055c84d  ff2485d4ce5500            JMP dword ptr [EAX*0x4 + 0x55ced4]
0055c854  c7878401000006000000      MOV dword ptr [EDI + 0x184],0x6
0055c85e  c78750030000000000c1      MOV dword ptr [EDI + 0x350],0xc1000000
0055c868  c787b00b00000000b442      MOV dword ptr [EDI + 0xbb0],0x42b40000
0055c872  e925060000                JMP 0x0055ce9c
0055c877  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0055c881  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0055c88b  8b87b80b0000              MOV EAX,dword ptr [EDI + 0xbb8]
0055c891  898760030000              MOV dword ptr [EDI + 0x360],EAX
0055c897  8b87bc0b0000              MOV EAX,dword ptr [EDI + 0xbbc]
0055c89d  898764030000              MOV dword ptr [EDI + 0x364],EAX
0055c8a3  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0055c8ab  0f28c1                    MOVAPS XMM0,XMM1
0055c8ae  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0055c8b6  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
0055c8be  f30f59c8                  MULSS XMM1,XMM0
0055c8c2  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0055c8ca  0f28c1                    MOVAPS XMM0,XMM1
0055c8cd  f30f588750030000          ADDSS XMM0,dword ptr [EDI + 0x350]
0055c8d5  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
0055c8dd  f30f58c1                  ADDSS XMM0,XMM1
0055c8e1  0f2f05b4adba00            COMISS XMM0,dword ptr [0x00baadb4]
0055c8e8  764d                      JBE 0x0055c937
0055c8ea  c787b00b00000000b442      MOV dword ptr [EDI + 0xbb0],0x42b40000
0055c8f4  c78750030000000000c1      MOV dword ptr [EDI + 0x350],0xc1000000
0055c8fe  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0055c906  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0055c90e  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0055c916  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0055c91e  c7878401000006000000      MOV dword ptr [EDI + 0x184],0x6
0055c928  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0055c932  e965050000                JMP 0x0055ce9c
0055c937  6a00                      PUSH 0x0
0055c939  68ecfcb500                PUSH 0xb5fcec
0055c93e  8d4f48                    LEA ECX,[EDI + 0x48]
0055c941  e83adaeaff                CALL 0x0040a380
0055c946  e95b050000                JMP 0x0055cea6
0055c94b  8d45d0                    LEA EAX,[EBP + -0x30]
0055c94e  50                        PUSH EAX
0055c94f  e84cfdffff                CALL 0x0055c6a0
0055c954  6a00                      PUSH 0x0
0055c956  8d4f48                    LEA ECX,[EDI + 0x48]
0055c959  ff34856015b600            PUSH dword ptr [EAX*0x4 + 0xb61560]
0055c960  e81bdaeaff                CALL 0x0040a380
0055c965  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
0055c96a  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
0055c972  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055c979  7454                      JZ 0x0055c9cf
0055c97b  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0055c983  8d45d4                    LEA EAX,[EBP + -0x2c]
0055c986  50                        PUSH EAX
0055c987  8bcf                      MOV ECX,EDI
0055c989  e842b91700                CALL 0x006d82d0
0055c98e  8bc8                      MOV ECX,EAX
0055c990  f30f1001                  MOVSS XMM0,dword ptr [ECX]
0055c994  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0055c99b  9f                        LAHF
0055c99c  f6c444                    TEST AH,0x44
0055c99f  7a16                      JP 0x0055c9b7
0055c9a1  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0055c9a6  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0055c9ad  9f                        LAHF
0055c9ae  f6c444                    TEST AH,0x44
0055c9b1  0f8bef040000              JNP 0x0055cea6
0055c9b7  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0055c9bf  8d45d4                    LEA EAX,[EBP + -0x2c]
0055c9c2  50                        PUSH EAX
0055c9c3  8bcf                      MOV ECX,EDI
0055c9c5  e806b91700                CALL 0x006d82d0
0055c9ca  e9c3000000                JMP 0x0055ca92
0055c9cf  e88c251900                CALL 0x006eef60
0055c9d4  a803                      TEST AL,0x3
0055c9d6  0f85ca040000              JNZ 0x0055cea6
0055c9dc  8bcf                      MOV ECX,EDI
0055c9de  e85d1e1600                CALL 0x006be840
0055c9e3  6a00                      PUSH 0x0
0055c9e5  6800020000                PUSH 0x200
0055c9ea  8bcf                      MOV ECX,EDI
0055c9ec  8bf0                      MOV ESI,EAX
0055c9ee  e83daaebff                CALL 0x00417430
0055c9f3  84c0                      TEST AL,AL
0055c9f5  0f858b000000              JNZ 0x0055ca86
0055c9fb  e860251900                CALL 0x006eef60
0055ca00  a801                      TEST AL,0x1
0055ca02  756c                      JNZ 0x0055ca70
0055ca04  a17816c700                MOV EAX,[0x00c71678]
0055ca09  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
0055ca0f  6a00                      PUSH 0x0
0055ca11  6a00                      PUSH 0x0
0055ca13  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
0055ca19  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
0055ca1f  6a00                      PUSH 0x0
0055ca21  6a00                      PUSH 0x0
0055ca23  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
0055ca26  8d45d4                    LEA EAX,[EBP + -0x2c]
0055ca29  6a03                      PUSH 0x3
0055ca2b  50                        PUSH EAX
0055ca2c  8d873c030000              LEA EAX,[EDI + 0x33c]
0055ca32  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0055ca35  50                        PUSH EAX
0055ca36  8bca                      MOV ECX,EDX
0055ca38  e8b3432900                CALL 0x007f0df0
0055ca3d  84c0                      TEST AL,AL
0055ca3f  742f                      JZ 0x0055ca70
0055ca41  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0055ca49  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0055ca51  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0055ca59  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
0055ca61  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0055ca6b  e936040000                JMP 0x0055cea6
0055ca70  e8eb241900                CALL 0x006eef60
0055ca75  33d2                      XOR EDX,EDX
0055ca77  b903000000                MOV ECX,0x3
0055ca7c  f7f1                      DIV ECX
0055ca7e  85d2                      TEST EDX,EDX
0055ca80  0f8520040000              JNZ 0x0055cea6
0055ca86  8d45d4                    LEA EAX,[EBP + -0x2c]
0055ca89  50                        PUSH EAX
0055ca8a  e8e1251200                CALL 0x0067f070
0055ca8f  83c404                    ADD ESP,0x4
0055ca92  8b08                      MOV ECX,dword ptr [EAX]
0055ca94  898fb80b0000              MOV dword ptr [EDI + 0xbb8],ECX
0055ca9a  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0055ca9d  8987bc0b0000              MOV dword ptr [EDI + 0xbbc],EAX
0055caa3  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0055caad  e9f4030000                JMP 0x0055cea6
0055cab2  8d45d8                    LEA EAX,[EBP + -0x28]
0055cab5  50                        PUSH EAX
0055cab6  e8e5fbffff                CALL 0x0055c6a0
0055cabb  8b577c                    MOV EDX,dword ptr [EDI + 0x7c]
0055cabe  8d4f78                    LEA ECX,[EDI + 0x78]
0055cac1  8945dc                    MOV dword ptr [EBP + -0x24],EAX
0055cac4  85d2                      TEST EDX,EDX
0055cac6  7406                      JZ 0x0055cace
0055cac8  807a3400                  CMP byte ptr [EDX + 0x34],0x0
0055cacc  752a                      JNZ 0x0055caf8
0055cace  8b3485000bb600            MOV ESI,dword ptr [EAX*0x4 + 0xb60b00]
0055cad5  8d45e4                    LEA EAX,[EBP + -0x1c]
0055cad8  50                        PUSH EAX
0055cad9  e81261efff                CALL 0x00452bf0
0055cade  8bd6                      MOV EDX,ESI
0055cae0  c745d001000000            MOV dword ptr [EBP + -0x30],0x1
0055cae7  8bc8                      MOV ECX,EAX
0055cae9  e8c296efff                CALL 0x004561b0
0055caee  84c0                      TEST AL,AL
0055caf0  7406                      JZ 0x0055caf8
0055caf2  c645e301                  MOV byte ptr [EBP + -0x1d],0x1
0055caf6  eb0a                      JMP 0x0055cb02
0055caf8  f645d001                  TEST byte ptr [EBP + -0x30],0x1
0055cafc  c645e300                  MOV byte ptr [EBP + -0x1d],0x0
0055cb00  7436                      JZ 0x0055cb38
0055cb02  8b55f8                    MOV EDX,dword ptr [EBP + -0x8]
0055cb05  83fa10                    CMP EDX,0x10
0055cb08  722e                      JC 0x0055cb38
0055cb0a  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
0055cb0d  42                        INC EDX
0055cb0e  8bc1                      MOV EAX,ECX
0055cb10  81fa00100000              CMP EDX,0x1000
0055cb16  7216                      JC 0x0055cb2e
0055cb18  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0055cb1b  83c223                    ADD EDX,0x23
0055cb1e  2bc1                      SUB EAX,ECX
0055cb20  83c0fc                    ADD EAX,-0x4
0055cb23  83f81f                    CMP EAX,0x1f
0055cb26  7606                      JBE 0x0055cb2e
0055cb28  ff159488b100              CALL dword ptr [0x00b18894]
0055cb2e  52                        PUSH EDX
0055cb2f  51                        PUSH ECX
0055cb30  e827265900                CALL 0x00aef15c
0055cb35  83c408                    ADD ESP,0x8
0055cb38  807de300                  CMP byte ptr [EBP + -0x1d],0x0
0055cb3c  8d4f48                    LEA ECX,[EDI + 0x48]
0055cb3f  8b45dc                    MOV EAX,dword ptr [EBP + -0x24]
0055cb42  6a00                      PUSH 0x0
0055cb44  8b0485000bb600            MOV EAX,dword ptr [EAX*0x4 + 0xb60b00]
0055cb4b  50                        PUSH EAX
0055cb4c  7407                      JZ 0x0055cb55
0055cb4e  e87ddaeaff                CALL 0x0040a5d0
0055cb53  eb05                      JMP 0x0055cb5a
0055cb55  e826d8eaff                CALL 0x0040a380
0055cb5a  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
0055cb5f  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
0055cb67  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055cb6e  0f849c000000              JZ 0x0055cc10
0055cb74  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0055cb7c  8d45d4                    LEA EAX,[EBP + -0x2c]
0055cb7f  50                        PUSH EAX
0055cb80  8bcf                      MOV ECX,EDI
0055cb82  e849b71700                CALL 0x006d82d0
0055cb87  f30f104dd4                MOVSS XMM1,dword ptr [EBP + -0x2c]
0055cb8c  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
0055cb93  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
0055cb98  9f                        LAHF
0055cb99  f6c444                    TEST AH,0x44
0055cb9c  7a62                      JP 0x0055cc00
0055cb9e  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0055cba5  9f                        LAHF
0055cba6  f6c444                    TEST AH,0x44
0055cba9  7a55                      JP 0x0055cc00
0055cbab  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0055cbb3  0f2e1554a4ba00            UCOMISS XMM2,dword ptr [0x00baa454]
0055cbba  f30f100d38a4ba00          MOVSS XMM1,dword ptr [0x00baa438]
0055cbc2  9f                        LAHF
0055cbc3  f6c444                    TEST AH,0x44
0055cbc6  7b13                      JNP 0x0055cbdb
0055cbc8  0f28c2                    MOVAPS XMM0,XMM2
0055cbcb  f30f59d1                  MULSS XMM2,XMM1
0055cbcf  f30f58c1                  ADDSS XMM0,XMM1
0055cbd3  f30f5cc2                  SUBSS XMM0,XMM2
0055cbd7  f30f5ec8                  DIVSS XMM1,XMM0
0055cbdb  0f28c1                    MOVAPS XMM0,XMM1
0055cbde  f30f598fbc0b0000          MULSS XMM1,dword ptr [EDI + 0xbbc]
0055cbe6  f30f5987b80b0000          MULSS XMM0,dword ptr [EDI + 0xbb8]
0055cbee  f30f118fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM1
0055cbf6  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0055cbfe  eb10                      JMP 0x0055cc10
0055cc00  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
0055cc08  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
0055cc10  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
0055cc18  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
0055cc1f  f30f1097bc0b0000          MOVSS XMM2,dword ptr [EDI + 0xbbc]
0055cc27  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
0055cc2c  9f                        LAHF
0055cc2d  f30f1155d0                MOVSS dword ptr [EBP + -0x30],XMM2
0055cc32  f6c444                    TEST AH,0x44
0055cc35  0f8a97000000              JP 0x0055ccd2
0055cc3b  0f2e1544b6c700            UCOMISS XMM2,dword ptr [0x00c7b644]
0055cc42  9f                        LAHF
0055cc43  f6c444                    TEST AH,0x44
0055cc46  0f8a86000000              JP 0x0055ccd2
0055cc4c  8bcf                      MOV ECX,EDI
0055cc4e  e8ed1b1600                CALL 0x006be840
0055cc53  8d4dd4                    LEA ECX,[EBP + -0x2c]
0055cc56  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0055cc5e  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0055cc66  8d45cc                    LEA EAX,[EBP + -0x34]
0055cc69  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0055cc71  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0055cc79  50                        PUSH EAX
0055cc7a  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
0055cc7f  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
0055cc84  e8a7334b00                CALL 0x00a10030
0055cc89  6a00                      PUSH 0x0
0055cc8b  6800080001                PUSH 0x1000800
0055cc90  8bcf                      MOV ECX,EDI
0055cc92  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0055cc96  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
0055cc9b  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0055cca0  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
0055cca5  e886a7ebff                CALL 0x00417430
0055ccaa  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
0055ccaf  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
0055ccb4  84c0                      TEST AL,AL
0055ccb6  741a                      JZ 0x0055ccd2
0055ccb8  f30f590d50adba00          MULSS XMM1,dword ptr [0x00baad50]
0055ccc0  f30f591550adba00          MULSS XMM2,dword ptr [0x00baad50]
0055ccc8  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
0055cccd  f30f1155d0                MOVSS dword ptr [EBP + -0x30],XMM2
0055ccd2  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0055ccd8  2500020000                AND EAX,0x200
0055ccdd  83c800                    OR EAX,0x0
0055cce0  7423                      JZ 0x0055cd05
0055cce2  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055cce9  751a                      JNZ 0x0055cd05
0055cceb  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0055ccf3  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
0055ccfb  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
0055cd00  f30f1155d0                MOVSS dword ptr [EBP + -0x30],XMM2
0055cd05  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0055cd0d  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0055cd12  0f28c2                    MOVAPS XMM0,XMM2
0055cd15  e846d0f3ff                CALL 0x00499d60
0055cd1a  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0055cd22  0f28d0                    MOVAPS XMM2,XMM0
0055cd25  f30f591548a9ba00          MULSS XMM2,dword ptr [0x00baa948]
0055cd2d  f30f102540cbba00          MOVSS XMM4,dword ptr [0x00bacb40]
0055cd35  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
0055cd3d  f30f5cd1                  SUBSS XMM2,XMM1
0055cd41  0f28c2                    MOVAPS XMM0,XMM2
0055cd44  0f54c4                    ANDPS XMM0,XMM4
0055cd47  0f2fc3                    COMISS XMM0,XMM3
0055cd4a  7623                      JBE 0x0055cd6f
0055cd4c  0f28cb                    MOVAPS XMM1,XMM3
0055cd4f  0f28c2                    MOVAPS XMM0,XMM2
0055cd52  e8c9cff3ff                CALL 0x00499d20
0055cd57  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
0055cd5f  0f28d0                    MOVAPS XMM2,XMM0
0055cd62  f30f104dd8                MOVSS XMM1,dword ptr [EBP + -0x28]
0055cd67  f30f102540cbba00          MOVSS XMM4,dword ptr [0x00bacb40]
0055cd6f  0f2f1578aaba00            COMISS XMM2,dword ptr [0x00baaa78]
0055cd76  7606                      JBE 0x0055cd7e
0055cd78  f30f5cd3                  SUBSS XMM2,XMM3
0055cd7c  eb11                      JMP 0x0055cd8f
0055cd7e  f30f10057caeba00          MOVSS XMM0,dword ptr [0x00baae7c]
0055cd86  0f2fc2                    COMISS XMM0,XMM2
0055cd89  7604                      JBE 0x0055cd8f
0055cd8b  f30f58d3                  ADDSS XMM2,XMM3
0055cd8f  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
0055cd97  f30f58d1                  ADDSS XMM2,XMM1
0055cd9b  0f28ca                    MOVAPS XMM1,XMM2
0055cd9e  0f54cc                    ANDPS XMM1,XMM4
0055cda1  0f2fcb                    COMISS XMM1,XMM3
0055cda4  7616                      JBE 0x0055cdbc
0055cda6  0f28cb                    MOVAPS XMM1,XMM3
0055cda9  0f28c2                    MOVAPS XMM0,XMM2
0055cdac  e86fcff3ff                CALL 0x00499d20
0055cdb1  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
0055cdb9  0f28d0                    MOVAPS XMM2,XMM0
0055cdbc  0f2f1578aaba00            COMISS XMM2,dword ptr [0x00baaa78]
0055cdc3  7606                      JBE 0x0055cdcb
0055cdc5  f30f5cd3                  SUBSS XMM2,XMM3
0055cdc9  eb11                      JMP 0x0055cddc
0055cdcb  f30f10057caeba00          MOVSS XMM0,dword ptr [0x00baae7c]
0055cdd3  0f2fc2                    COMISS XMM0,XMM2
0055cdd6  7604                      JBE 0x0055cddc
0055cdd8  f30f58d3                  ADDSS XMM2,XMM3
0055cddc  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
0055cde4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0055cde8  0f84ae000000              JZ 0x0055ce9c
0055cdee  68e416b600                PUSH 0xb616e4
0055cdf3  8d4f78                    LEA ECX,[EDI + 0x78]
0055cdf6  e8d5dfeaff                CALL 0x0040add0
0055cdfb  84c0                      TEST AL,AL
0055cdfd  0f848a000000              JZ 0x0055ce8d
0055ce03  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055ce0a  740a                      JZ 0x0055ce16
0055ce0c  f30f101504a8ba00          MOVSS XMM2,dword ptr [0x00baa804]
0055ce14  eb35                      JMP 0x0055ce4b
0055ce16  e845211900                CALL 0x006eef60
0055ce1b  660f6ec0                  MOVD XMM0,EAX
0055ce1f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055ce23  c1e81f                    SHR EAX,0x1f
0055ce26  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055ce2f  660f5ad0                  CVTPD2PS XMM2,XMM0
0055ce33  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0055ce3b  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
0055ce43  f30f5815a4a7ba00          ADDSS XMM2,dword ptr [0x00baa7a4]
0055ce4b  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
0055ce50  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0055ce58  f30f59ca                  MULSS XMM1,XMM2
0055ce5c  f30f59c8                  MULSS XMM1,XMM0
0055ce60  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
0055ce68  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0055ce70  f30f104dd0                MOVSS XMM1,dword ptr [EBP + -0x30]
0055ce75  f30f59ca                  MULSS XMM1,XMM2
0055ce79  f30f59c8                  MULSS XMM1,XMM0
0055ce7d  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0055ce85  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0055ce8d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0055ce91  7409                      JZ 0x0055ce9c
0055ce93  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0055ce9a  750a                      JNZ 0x0055cea6
0055ce9c  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0055cea6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055ceae  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0055ceb6  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0055ceb9  33cd                      XOR ECX,EBP
0055cebb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055cec3  5f                        POP EDI
0055cec4  5e                        POP ESI
0055cec5  e861225900                CALL 0x00aef12b
0055ceca  8be5                      MOV ESP,EBP
0055cecc  5d                        POP EBP
0055cecd  8be3                      MOV ESP,EBX
0055cecf  5b                        POP EBX
0055ced0  c3                        RET
