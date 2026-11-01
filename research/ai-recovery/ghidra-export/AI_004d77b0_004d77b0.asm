; J460 NPC AI 0x004d77b0 AI_004d77b0
; types=853
; identities=853.0.0
; entry=004d77b0
004d77b0  53                        PUSH EBX
004d77b1  8bdc                      MOV EBX,ESP
004d77b3  83ec08                    SUB ESP,0x8
004d77b6  83e4f8                    AND ESP,0xfffffff8
004d77b9  83c404                    ADD ESP,0x4
004d77bc  55                        PUSH EBP
004d77bd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004d77c0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004d77c4  8bec                      MOV EBP,ESP
004d77c6  6aff                      PUSH -0x1
004d77c8  685d39af00                PUSH 0xaf395d
004d77cd  64a100000000              MOV EAX,FS:[0x0]
004d77d3  50                        PUSH EAX
004d77d4  53                        PUSH EBX
004d77d5  81ecc0000000              SUB ESP,0xc0
004d77db  a1b493bf00                MOV EAX,[0x00bf93b4]
004d77e0  33c5                      XOR EAX,EBP
004d77e2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004d77e5  56                        PUSH ESI
004d77e6  57                        PUSH EDI
004d77e7  50                        PUSH EAX
004d77e8  8d45f4                    LEA EAX,[EBP + -0xc]
004d77eb  64a300000000              MOV FS:[0x0],EAX
004d77f1  8bf9                      MOV EDI,ECX
004d77f3  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004d77fb  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004d7801  8bb200830100              MOV ESI,dword ptr [EDX + 0x18300]
004d7807  8975a8                    MOV dword ptr [EBP + -0x58],ESI
004d780a  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004d7812  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004d781a  0f57db                    XORPS XMM3,XMM3
004d781d  f30f10a764030000          MOVSS XMM4,dword ptr [EDI + 0x364]
004d7825  2bc8                      SUB ECX,EAX
004d7827  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004d782d  f30f102d70cbba00          MOVSS XMM5,dword ptr [0x00bacb70]
004d7835  894db0                    MOV dword ptr [EBP + -0x50],ECX
004d7838  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004d783d  f30f1165bc                MOVSS dword ptr [EBP + -0x44],XMM4
004d7842  85c0                      TEST EAX,EAX
004d7844  0f84790a0000              JZ 0x004d82c3
004d784a  83f803                    CMP EAX,0x3
004d784d  0f848e030000              JZ 0x004d7be1
004d7853  83f810                    CMP EAX,0x10
004d7856  0f852d010000              JNZ 0x004d7989
004d785c  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004d7863  7525                      JNZ 0x004d788a
004d7865  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004d786d  b903000000                MOV ECX,0x3
004d7872  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004d787a  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
004d7880  898764030000              MOV dword ptr [EDI + 0x364],EAX
004d7886  33c0                      XOR EAX,EAX
004d7888  eb19                      JMP 0x004d78a3
004d788a  33d2                      XOR EDX,EDX
004d788c  b802000000                MOV EAX,0x2
004d7891  817f34b7030000            CMP dword ptr [EDI + 0x34],0x3b7
004d7898  b904000000                MOV ECX,0x4
004d789d  0f28d0                    MOVAPS XMM2,XMM0
004d78a0  0f44c2                    CMOVZ EAX,EDX
004d78a3  898788010000              MOV dword ptr [EDI + 0x188],EAX
004d78a9  898f84010000              MOV dword ptr [EDI + 0x184],ECX
004d78af  837e0810                  CMP dword ptr [ESI + 0x8],0x10
004d78b3  0f8532010000              JNZ 0x004d79eb
004d78b9  8bce                      MOV ECX,ESI
004d78bb  e8e0003500                CALL 0x008279a0
004d78c0  84c0                      TEST AL,AL
004d78c2  740e                      JZ 0x004d78d2
004d78c4  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004d78ce  33c0                      XOR EAX,EAX
004d78d0  eb05                      JMP 0x004d78d7
004d78d2  b803000000                MOV EAX,0x3
004d78d7  898784010000              MOV dword ptr [EDI + 0x184],EAX
004d78dd  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004d78e5  0f28c1                    MOVAPS XMM0,XMM1
004d78e8  f30f590d54a3ba00          MULSS XMM1,dword ptr [0x00baa354]
004d78f0  f30f59c3                  MULSS XMM0,XMM3
004d78f4  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004d78fc  f30f58c2                  ADDSS XMM0,XMM2
004d7900  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004d7908  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004d7910  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004d7917  0f84270c0000              JZ 0x004d8544
004d791d  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
004d7927  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004d7931  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004d793b  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004d7945  51                        PUSH ECX
004d7946  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d794d  6a00                      PUSH 0x0
004d794f  6a02                      PUSH 0x2
004d7951  51                        PUSH ECX
004d7952  c704240000803f            MOV dword ptr [ESP],0x3f800000
004d7959  8bcf                      MOV ECX,EDI
004d795b  6802010000                PUSH 0x102
004d7960  e83bf21f00                CALL 0x006d6ba0
004d7965  6a00                      PUSH 0x0
004d7967  8d4f48                    LEA ECX,[EDI + 0x48]
004d796a  6874d5b100                PUSH 0xb1d574
004d796f  e80c2af3ff                CALL 0x0040a380
004d7974  0f57db                    XORPS XMM3,XMM3
004d7977  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
004d797c  f30f1065bc                MOVSS XMM4,dword ptr [EBP + -0x44]
004d7981  f30f102d70cbba00          MOVSS XMM5,dword ptr [0x00bacb70]
004d7989  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
004d7990  0f85f40b0000              JNZ 0x004d858a
004d7996  0f2f9f60030000            COMISS XMM3,dword ptr [EDI + 0x360]
004d799d  0f97c0                    SETA AL
004d79a0  888748010000              MOV byte ptr [EDI + 0x148],AL
004d79a6  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004d79a9  85f6                      TEST ESI,ESI
004d79ab  0f84ca0b0000              JZ 0x004d857b
004d79b1  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004d79b5  8bc6                      MOV EAX,ESI
004d79b7  7202                      JC 0x004d79bb
004d79b9  8b06                      MOV EAX,dword ptr [ESI]
004d79bb  b93404b600                MOV ECX,0xb60434
004d79c0  8a10                      MOV DL,byte ptr [EAX]
004d79c2  3a11                      CMP DL,byte ptr [ECX]
004d79c4  0f85840b0000              JNZ 0x004d854e
004d79ca  84d2                      TEST DL,DL
004d79cc  7416                      JZ 0x004d79e4
004d79ce  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004d79d1  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004d79d4  0f85740b0000              JNZ 0x004d854e
004d79da  83c002                    ADD EAX,0x2
004d79dd  83c102                    ADD ECX,0x2
004d79e0  84d2                      TEST DL,DL
004d79e2  75dc                      JNZ 0x004d79c0
004d79e4  33c0                      XOR EAX,EAX
004d79e6  e9680b0000                JMP 0x004d8553
004d79eb  f30f108f50030000          MOVSS XMM1,dword ptr [EDI + 0x350]
004d79f3  f30f100530aeba00          MOVSS XMM0,dword ptr [0x00baae30]
004d79fb  0f2fc1                    COMISS XMM0,XMM1
004d79fe  7614                      JBE 0x004d7a14
004d7a00  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004d7a0a  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004d7a14  83bfc00b000002            CMP dword ptr [EDI + 0xbc0],0x2
004d7a1b  0f8521010000              JNZ 0x004d7b42
004d7a21  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004d7a29  b903000000                MOV ECX,0x3
004d7a2e  99                        CDQ
004d7a2f  f7f9                      IDIV ECX
004d7a31  6bc22c                    IMUL EAX,EDX,0x2c
004d7a34  05b8c6c500                ADD EAX,0xc5c6b8
004d7a39  50                        PUSH EAX
004d7a3a  51                        PUSH ECX
004d7a3b  6a00                      PUSH 0x0
004d7a3d  8d4f48                    LEA ECX,[EDI + 0x48]
004d7a40  e8db37f3ff                CALL 0x0040b220
004d7a45  83c404                    ADD ESP,0x4
004d7a48  8d4848                    LEA ECX,[EAX + 0x48]
004d7a4b  e8a0f7f2ff                CALL 0x004071f0
004d7a50  c7878401000006000000      MOV dword ptr [EDI + 0x184],0x6
004d7a5a  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004d7a62  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
004d7a6a  0f28c8                    MOVAPS XMM1,XMM0
004d7a6d  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004d7a72  f30f59c8                  MULSS XMM1,XMM0
004d7a76  0f28c2                    MOVAPS XMM0,XMM2
004d7a79  f30f59c2                  MULSS XMM0,XMM2
004d7a7d  f30f1155b0                MOVSS dword ptr [EBP + -0x50],XMM2
004d7a82  f30f58c1                  ADDSS XMM0,XMM1
004d7a86  e8c5dff5ff                CALL 0x00435a50
004d7a8b  0f57db                    XORPS XMM3,XMM3
004d7a8e  0f2fc3                    COMISS XMM0,XMM3
004d7a91  762e                      JBE 0x004d7ac1
004d7a93  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004d7a9b  f30f5ec8                  DIVSS XMM1,XMM0
004d7a9f  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
004d7aa4  f30f59c1                  MULSS XMM0,XMM1
004d7aa8  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004d7ab0  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
004d7ab5  f30f59c1                  MULSS XMM0,XMM1
004d7ab9  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004d7ac1  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004d7ac8  0f84a9feffff              JZ 0x004d7977
004d7ace  8d4dc0                    LEA ECX,[EBP + -0x40]
004d7ad1  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
004d7adb  e890f6f2ff                CALL 0x00407170
004d7ae0  50                        PUSH EAX
004d7ae1  51                        PUSH ECX
004d7ae2  6a00                      PUSH 0x0
004d7ae4  8d4f48                    LEA ECX,[EDI + 0x48]
004d7ae7  e83437f3ff                CALL 0x0040b220
004d7aec  83c404                    ADD ESP,0x4
004d7aef  8d4848                    LEA ECX,[EAX + 0x48]
004d7af2  e8f9f6f2ff                CALL 0x004071f0
004d7af7  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004d7aff  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004d7b07  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004d7b0f  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004d7b17  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004d7b1f  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004d7b27  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004d7b2d  81a768010000fffffffb      AND dword ptr [EDI + 0x168],0xfbffffff
004d7b37  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004d7b3d  e932feffff                JMP 0x004d7974
004d7b42  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004d7b4a  f30f580554a3ba00          ADDSS XMM0,dword ptr [0x00baa354]
004d7b52  f30f58c8                  ADDSS XMM1,XMM0
004d7b56  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004d7b5e  0f57c5                    XORPS XMM0,XMM5
004d7b61  0f2fc8                    COMISS XMM1,XMM0
004d7b64  f30f118f50030000          MOVSS dword ptr [EDI + 0x350],XMM1
004d7b6c  0f86d2090000              JBE 0x004d8544
004d7b72  83bf8401000004            CMP dword ptr [EDI + 0x184],0x4
004d7b79  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
004d7b83  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004d7b8d  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004d7b97  752f                      JNZ 0x004d7bc8
004d7b99  ffb740030000              PUSH dword ptr [EDI + 0x340]
004d7b9f  8bce                      MOV ECX,ESI
004d7ba1  ffb73c030000              PUSH dword ptr [EDI + 0x33c]
004d7ba7  e8d48b3100                CALL 0x007f0780
004d7bac  85c0                      TEST EAX,EAX
004d7bae  7418                      JZ 0x004d7bc8
004d7bb0  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
004d7bb6  e8b5e0f5ff                CALL 0x00435c70
004d7bbb  8b17                      MOV EDX,dword ptr [EDI]
004d7bbd  8bcf                      MOV ECX,EDI
004d7bbf  50                        PUSH EAX
004d7bc0  ff5224                    CALL dword ptr [EDX + 0x24]
004d7bc3  e9acfdffff                JMP 0x004d7974
004d7bc8  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004d7bd2  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004d7bdc  e964fdffff                JMP 0x004d7945
004d7be1  837e0810                  CMP dword ptr [ESI + 0x8],0x10
004d7be5  751b                      JNZ 0x004d7c02
004d7be7  8b82f8640200              MOV EAX,dword ptr [EDX + 0x264f8]
004d7bed  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
004d7bf3  83f801                    CMP EAX,0x1
004d7bf6  7f0a                      JG 0x004d7c02
004d7bf8  c7873c04000000000000      MOV dword ptr [EDI + 0x43c],0x0
004d7c02  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004d7c09  7406                      JZ 0x004d7c11
004d7c0b  33c9                      XOR ECX,ECX
004d7c0d  33d2                      XOR EDX,EDX
004d7c0f  eb08                      JMP 0x004d7c19
004d7c11  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
004d7c17  8bd1                      MOV EDX,ECX
004d7c19  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004d7c1f  25000b0000                AND EAX,0xb00
004d7c24  83c800                    OR EAX,0x0
004d7c27  7508                      JNZ 0x004d7c31
004d7c29  3987380f0000              CMP dword ptr [EDI + 0xf38],EAX
004d7c2f  740c                      JZ 0x004d7c3d
004d7c31  b805000000                MOV EAX,0x5
004d7c36  8bca                      MOV ECX,EDX
004d7c38  3bd0                      CMP EDX,EAX
004d7c3a  0f4fc8                    CMOVG ECX,EAX
004d7c3d  2b4db0                    SUB ECX,dword ptr [EBP + -0x50]
004d7c40  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004d7c47  898f3c040000              MOV dword ptr [EDI + 0x43c],ECX
004d7c4d  0f8529010000              JNZ 0x004d7d7c
004d7c53  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004d7c5b  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004d7c62  760f                      JBE 0x004d7c73
004d7c64  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
004d7c6e  e921010000                JMP 0x004d7d94
004d7c73  6a00                      PUSH 0x0
004d7c75  6a04                      PUSH 0x4
004d7c77  8bcf                      MOV ECX,EDI
004d7c79  e8924a1d00                CALL 0x006ac710
004d7c7e  84c0                      TEST AL,AL
004d7c80  0f840e010000              JZ 0x004d7d94
004d7c86  e8d5722100                CALL 0x006eef60
004d7c8b  83e003                    AND EAX,0x3
004d7c8e  0f8500010000              JNZ 0x004d7d94
004d7c94  f30f101da0a9ba00          MOVSS XMM3,dword ptr [0x00baa9a0]
004d7c9c  8d873c030000              LEA EAX,[EDI + 0x33c]
004d7ca2  6a29                      PUSH 0x29
004d7ca4  50                        PUSH EAX
004d7ca5  8d4590                    LEA EAX,[EBP + -0x70]
004d7ca8  8d8e18120000              LEA ECX,[ESI + 0x1218]
004d7cae  50                        PUSH EAX
004d7caf  e8dc2af4ff                CALL 0x0041a790
004d7cb4  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004d7cbb  33c9                      XOR ECX,ECX
004d7cbd  8b559c                    MOV EDX,dword ptr [EBP + -0x64]
004d7cc0  894dbc                    MOV dword ptr [EBP + -0x44],ECX
004d7cc3  85d2                      TEST EDX,EDX
004d7cc5  0f8483000000              JZ 0x004d7d4e
004d7ccb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004d7cd0  8b4594                    MOV EAX,dword ptr [EBP + -0x6c]
004d7cd3  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004d7cd6  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004d7cdc  2500010000                AND EAX,0x100
004d7ce1  83c800                    OR EAX,0x0
004d7ce4  7422                      JZ 0x004d7d08
004d7ce6  6a00                      PUSH 0x0
004d7ce8  8bce                      MOV ECX,ESI
004d7cea  e871481d00                CALL 0x006ac560
004d7cef  84c0                      TEST AL,AL
004d7cf1  7410                      JZ 0x004d7d03
004d7cf3  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004d7cf9  2500000020                AND EAX,0x20000000
004d7cfe  83c800                    OR EAX,0x0
004d7d01  743e                      JZ 0x004d7d41
004d7d03  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004d7d06  eb19                      JMP 0x004d7d21
004d7d08  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004d7d0b  83f801                    CMP EAX,0x1
004d7d0e  7517                      JNZ 0x004d7d27
004d7d10  8bce                      MOV ECX,ESI
004d7d12  8945b0                    MOV dword ptr [EBP + -0x50],EAX
004d7d15  e8a6b52e00                CALL 0x007c32c0
004d7d1a  84c0                      TEST AL,AL
004d7d1c  7423                      JZ 0x004d7d41
004d7d1e  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
004d7d21  8b559c                    MOV EDX,dword ptr [EBP + -0x64]
004d7d24  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004d7d27  3d55030000                CMP EAX,0x355
004d7d2c  7509                      JNZ 0x004d7d37
004d7d2e  83bec40b000001            CMP dword ptr [ESI + 0xbc4],0x1
004d7d35  740a                      JZ 0x004d7d41
004d7d37  41                        INC ECX
004d7d38  894dbc                    MOV dword ptr [EBP + -0x44],ECX
004d7d3b  3bca                      CMP ECX,EDX
004d7d3d  7291                      JC 0x004d7cd0
004d7d3f  eb0a                      JMP 0x004d7d4b
004d7d41  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
004d7d4b  8b75a8                    MOV ESI,dword ptr [EBP + -0x58]
004d7d4e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d7d55  807d9000                  CMP byte ptr [EBP + -0x70],0x0
004d7d59  7539                      JNZ 0x004d7d94
004d7d5b  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004d7d62  b101                      MOV CL,0x1
004d7d64  8b5594                    MOV EDX,dword ptr [EBP + -0x6c]
004d7d67  6a00                      PUSH 0x0
004d7d69  6a00                      PUSH 0x0
004d7d6b  e840cb5800                CALL 0x00a648b0
004d7d70  83c408                    ADD ESP,0x8
004d7d73  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004d7d7a  eb18                      JMP 0x004d7d94
004d7d7c  e8df712100                CALL 0x006eef60
004d7d81  33d2                      XOR EDX,EDX
004d7d83  b919000000                MOV ECX,0x19
004d7d88  f7f1                      DIV ECX
004d7d8a  85d2                      TEST EDX,EDX
004d7d8c  7506                      JNZ 0x004d7d94
004d7d8e  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
004d7d94  83bf3c04000000            CMP dword ptr [EDI + 0x43c],0x0
004d7d9b  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004d7da3  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004d7da8  0f8ff9030000              JG 0x004d81a7
004d7dae  8bcf                      MOV ECX,EDI
004d7db0  e88b6a1e00                CALL 0x006be840
004d7db5  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004d7dbd  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004d7dc5  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004d7dcb  2500010000                AND EAX,0x100
004d7dd0  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004d7dd5  83c800                    OR EAX,0x0
004d7dd8  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004d7ddd  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
004d7de2  f30f1155b0                MOVSS dword ptr [EBP + -0x50],XMM2
004d7de7  0f85f0000000              JNZ 0x004d7edd
004d7ded  3987380f0000              CMP dword ptr [EDI + 0xf38],EAX
004d7df3  0f85e4000000              JNZ 0x004d7edd
004d7df9  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
004d7e00  7524                      JNZ 0x004d7e26
004d7e02  6a00                      PUSH 0x0
004d7e04  6a00                      PUSH 0x0
004d7e06  6a00                      PUSH 0x0
004d7e08  6a00                      PUSH 0x0
004d7e0a  6a01                      PUSH 0x1
004d7e0c  8d4dac                    LEA ECX,[EBP + -0x54]
004d7e0f  51                        PUSH ECX
004d7e10  8d873c030000              LEA EAX,[EDI + 0x33c]
004d7e16  8bce                      MOV ECX,ESI
004d7e18  50                        PUSH EAX
004d7e19  e8d28f3100                CALL 0x007f0df0
004d7e1e  84c0                      TEST AL,AL
004d7e20  0f85ad000000              JNZ 0x004d7ed3
004d7e26  6a00                      PUSH 0x0
004d7e28  6800080000                PUSH 0x800
004d7e2d  8bcf                      MOV ECX,EDI
004d7e2f  e8fcf5f3ff                CALL 0x00417430
004d7e34  84c0                      TEST AL,AL
004d7e36  7460                      JZ 0x004d7e98
004d7e38  f30f104db8                MOVSS XMM1,dword ptr [EBP + -0x48]
004d7e3d  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
004d7e43  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
004d7e48  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
004d7e4e  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004d7e56  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004d7e5e  50                        PUSH EAX
004d7e5f  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
004d7e67  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
004d7e6f  e8bc815300                CALL 0x00a10030
004d7e74  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004d7e79  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004d7e7d  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
004d7e84  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
004d7e8b  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
004d7e93  e9bc000000                JMP 0x004d7f54
004d7e98  6a00                      PUSH 0x0
004d7e9a  6800020000                PUSH 0x200
004d7e9f  8bcf                      MOV ECX,EDI
004d7ea1  e88af5f3ff                CALL 0x00417430
004d7ea6  84c0                      TEST AL,AL
004d7ea8  0f84ae000000              JZ 0x004d7f5c
004d7eae  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
004d7eb4  50                        PUSH EAX
004d7eb5  e8b6711a00                CALL 0x0067f070
004d7eba  83c404                    ADD ESP,0x4
004d7ebd  8b08                      MOV ECX,dword ptr [EAX]
004d7ebf  898f18040000              MOV dword ptr [EDI + 0x418],ECX
004d7ec5  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004d7ec8  89871c040000              MOV dword ptr [EDI + 0x41c],EAX
004d7ece  e989000000                JMP 0x004d7f5c
004d7ed3  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
004d7ed8  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
004d7edd  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004d7ee5  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004d7eed  0f28c8                    MOVAPS XMM1,XMM0
004d7ef0  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004d7ef5  f30f59c8                  MULSS XMM1,XMM0
004d7ef9  0f28c2                    MOVAPS XMM0,XMM2
004d7efc  f30f59c2                  MULSS XMM0,XMM2
004d7f00  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
004d7f05  f30f58c1                  ADDSS XMM0,XMM1
004d7f09  e842dbf5ff                CALL 0x00435a50
004d7f0e  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004d7f15  f30f104db8                MOVSS XMM1,dword ptr [EBP + -0x48]
004d7f1a  761e                      JBE 0x004d7f3a
004d7f1c  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004d7f24  f30f5ed0                  DIVSS XMM2,XMM0
004d7f28  0f28c2                    MOVAPS XMM0,XMM2
004d7f2b  f30f59c8                  MULSS XMM1,XMM0
004d7f2f  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
004d7f34  f30f59c2                  MULSS XMM0,XMM2
004d7f38  eb05                      JMP 0x004d7f3f
004d7f3a  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
004d7f3f  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
004d7f47  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
004d7f4f  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004d7f54  f30f118f18040000          MOVSS dword ptr [EDI + 0x418],XMM1
004d7f5c  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
004d7f64  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004d7f6b  f30f10af1c040000          MOVSS XMM5,dword ptr [EDI + 0x41c]
004d7f73  9f                        LAHF
004d7f74  f6c444                    TEST AH,0x44
004d7f77  7a31                      JP 0x004d7faa
004d7f79  0f2e2d44b6c700            UCOMISS XMM5,dword ptr [0x00c7b644]
004d7f80  9f                        LAHF
004d7f81  f6c444                    TEST AH,0x44
004d7f84  7a24                      JP 0x004d7faa
004d7f86  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004d7f8c  50                        PUSH EAX
004d7f8d  e8de701a00                CALL 0x0067f070
004d7f92  83c404                    ADD ESP,0x4
004d7f95  8b08                      MOV ECX,dword ptr [EAX]
004d7f97  898f18040000              MOV dword ptr [EDI + 0x418],ECX
004d7f9d  f30f106804                MOVSS XMM5,dword ptr [EAX + 0x4]
004d7fa2  f30f11af1c040000          MOVSS dword ptr [EDI + 0x41c],XMM5
004d7faa  f30f1015a4a7ba00          MOVSS XMM2,dword ptr [0x00baa7a4]
004d7fb2  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
004d7fba  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
004d7fc2  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
004d7fc9  0f1f8000000000            NOP dword ptr [EAX]
004d7fd0  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
004d7fd8  f30f59c2                  MULSS XMM0,XMM2
004d7fdc  f30f59ea                  MULSS XMM5,XMM2
004d7fe0  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004d7fe8  f30f58af40030000          ADDSS XMM5,dword ptr [EDI + 0x340]
004d7ff0  f30f5cc1                  SUBSS XMM0,XMM1
004d7ff4  f30f5c2d00aaba00          SUBSS XMM5,dword ptr [0x00baaa00]
004d7ffc  f30f5ec1                  DIVSS XMM0,XMM1
004d8000  f30f5ee9                  DIVSS XMM5,XMM1
004d8004  f30f58c3                  ADDSS XMM0,XMM3
004d8008  f30f58eb                  ADDSS XMM5,XMM3
004d800c  f30f2cd0                  CVTTSS2SI EDX,XMM0
004d8010  f30f2ccd                  CVTTSS2SI ECX,XMM5
004d8014  85d2                      TEST EDX,EDX
004d8016  7817                      JS 0x004d802f
004d8018  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
004d801b  3bd0                      CMP EDX,EAX
004d801d  7d10                      JGE 0x004d802f
004d801f  85c9                      TEST ECX,ECX
004d8021  780c                      JS 0x004d802f
004d8023  3b4e10                    CMP ECX,dword ptr [ESI + 0x10]
004d8026  7d07                      JGE 0x004d802f
004d8028  0fafc1                    IMUL EAX,ECX
004d802b  03c2                      ADD EAX,EDX
004d802d  eb03                      JMP 0x004d8032
004d802f  83c8ff                    OR EAX,0xffffffff
004d8032  50                        PUSH EAX
004d8033  8bce                      MOV ECX,ESI
004d8035  e8c6873100                CALL 0x007f0800
004d803a  85c0                      TEST EAX,EAX
004d803c  0f84cb000000              JZ 0x004d810d
004d8042  e8196f2100                CALL 0x006eef60
004d8047  f30f100db4a9ba00          MOVSS XMM1,dword ptr [0x00baa9b4]
004d804f  660f6ec0                  MOVD XMM0,EAX
004d8053  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d8057  c1e81f                    SHR EAX,0x1f
004d805a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d8063  660f5ac0                  CVTPD2PS XMM0,XMM0
004d8067  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004d806f  f30f590578aaba00          MULSS XMM0,dword ptr [0x00baaa78]
004d8077  f30f5cc8                  SUBSS XMM1,XMM0
004d807b  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
004d8083  0f28c1                    MOVAPS XMM0,XMM1
004d8086  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
004d808b  e8b054f4ff                CALL 0x0041d540
004d8090  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004d8095  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
004d809a  e88154f4ff                CALL 0x0041d520
004d809f  f30f108f1c040000          MOVSS XMM1,dword ptr [EDI + 0x41c]
004d80a7  0f28e0                    MOVAPS XMM4,XMM0
004d80aa  f30f109f18040000          MOVSS XMM3,dword ptr [EDI + 0x418]
004d80b2  0f28c1                    MOVAPS XMM0,XMM1
004d80b5  f30f106db8                MOVSS XMM5,dword ptr [EBP + -0x48]
004d80ba  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
004d80bd  0f28d5                    MOVAPS XMM2,XMM5
004d80c0  f30f59d3                  MULSS XMM2,XMM3
004d80c4  40                        INC EAX
004d80c5  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004d80c8  f30f59c4                  MULSS XMM0,XMM4
004d80cc  f30f59e9                  MULSS XMM5,XMM1
004d80d0  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
004d80d8  f30f5cd0                  SUBSS XMM2,XMM0
004d80dc  f30f59dc                  MULSS XMM3,XMM4
004d80e0  f30f119718040000          MOVSS dword ptr [EDI + 0x418],XMM2
004d80e8  f30f58eb                  ADDSS XMM5,XMM3
004d80ec  f30f1015a4a7ba00          MOVSS XMM2,dword ptr [0x00baa7a4]
004d80f4  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
004d80fc  f30f11af1c040000          MOVSS dword ptr [EDI + 0x41c],XMM5
004d8104  83f80a                    CMP EAX,0xa
004d8107  0f8cc3feffff              JL 0x004d7fd0
004d810d  e84e6e2100                CALL 0x006eef60
004d8112  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004d811a  660f6ec0                  MOVD XMM0,EAX
004d811e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d8122  c1e81f                    SHR EAX,0x1f
004d8125  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d812e  660f5ac0                  CVTPD2PS XMM0,XMM0
004d8132  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004d813a  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
004d8142  f30f5cc8                  SUBSS XMM1,XMM0
004d8146  f30f118f20040000          MOVSS dword ptr [EDI + 0x420],XMM1
004d814e  e80d6e2100                CALL 0x006eef60
004d8153  660f6ec0                  MOVD XMM0,EAX
004d8157  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d815b  c1e81f                    SHR EAX,0x1f
004d815e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d8167  660f5ac0                  CVTPD2PS XMM0,XMM0
004d816b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004d8173  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
004d817b  f30f580554a1ba00          ADDSS XMM0,dword ptr [0x00baa154]
004d8183  f30f5945b4                MULSS XMM0,dword ptr [EBP + -0x4c]
004d8188  f30f118724040000          MOVSS dword ptr [EDI + 0x424],XMM0
004d8190  e8cb6d2100                CALL 0x006eef60
004d8195  33d2                      XOR EDX,EDX
004d8197  b91e000000                MOV ECX,0x1e
004d819c  f7f1                      DIV ECX
004d819e  83c20a                    ADD EDX,0xa
004d81a1  89973c040000              MOV dword ptr [EDI + 0x43c],EDX
004d81a7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004d81af  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004d81b7  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004d81bf  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004d81c7  f30f109724040000          MOVSS XMM2,dword ptr [EDI + 0x424]
004d81cf  f30f109f1c040000          MOVSS XMM3,dword ptr [EDI + 0x41c]
004d81d7  0f28c2                    MOVAPS XMM0,XMM2
004d81da  f30f598718040000          MULSS XMM0,dword ptr [EDI + 0x418]
004d81e2  f30f59da                  MULSS XMM3,XMM2
004d81e6  f30f59c1                  MULSS XMM0,XMM1
004d81ea  f30f59d9                  MULSS XMM3,XMM1
004d81ee  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004d81f6  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
004d81fe  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004d8206  f30f108720040000          MOVSS XMM0,dword ptr [EDI + 0x420]
004d820e  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004d8216  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004d821e  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004d8223  e81853f4ff                CALL 0x0041d540
004d8228  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004d822d  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
004d8232  e8e952f4ff                CALL 0x0041d520
004d8237  f30f10a718040000          MOVSS XMM4,dword ptr [EDI + 0x418]
004d823f  0f28d0                    MOVAPS XMM2,XMM0
004d8242  f30f108f1c040000          MOVSS XMM1,dword ptr [EDI + 0x41c]
004d824a  0f28ec                    MOVAPS XMM5,XMM4
004d824d  f30f596db4                MULSS XMM5,dword ptr [EBP + -0x4c]
004d8252  0f28c1                    MOVAPS XMM0,XMM1
004d8255  f30f594db4                MULSS XMM1,dword ptr [EBP + -0x4c]
004d825a  0f57db                    XORPS XMM3,XMM3
004d825d  f30f59c2                  MULSS XMM0,XMM2
004d8261  f30f59e2                  MULSS XMM4,XMM2
004d8265  f30f5ce8                  SUBSS XMM5,XMM0
004d8269  f30f58e1                  ADDSS XMM4,XMM1
004d826d  f30f11af18040000          MOVSS dword ptr [EDI + 0x418],XMM5
004d8275  f30f11a71c040000          MOVSS dword ptr [EDI + 0x41c],XMM4
004d827d  837e0810                  CMP dword ptr [ESI + 0x8],0x10
004d8281  7533                      JNZ 0x004d82b6
004d8283  0f2feb                    COMISS XMM5,XMM3
004d8286  c7871c04000000000000      MOV dword ptr [EDI + 0x41c],0x0
004d8290  0f57e4                    XORPS XMM4,XMM4
004d8293  7617                      JBE 0x004d82ac
004d8295  c787180400000000803f      MOV dword ptr [EDI + 0x418],0x3f800000
004d829f  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
004d82a7  e9d5f6ffff                JMP 0x004d7981
004d82ac  c78718040000000080bf      MOV dword ptr [EDI + 0x418],0xbf800000
004d82b6  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
004d82be  e9bef6ffff                JMP 0x004d7981
004d82c3  83bf2c03000000            CMP dword ptr [EDI + 0x32c],0x0
004d82ca  f30f7e0504f5b100          MOVQ XMM0,qword ptr [0x00b1f504]
004d82d2  a10cf5b100                MOV EAX,[0x00b1f50c]
004d82d7  8bb7ec030000              MOV ESI,dword ptr [EDI + 0x3ec]
004d82dd  660fd64584                MOVQ qword ptr [EBP + -0x7c],XMM0
004d82e2  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004d82e5  7c13                      JL 0x004d82fa
004d82e7  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004d82ed  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004d82f4  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004d82fa  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
004d82fe  0f8572010000              JNZ 0x004d8476
004d8304  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004d830b  0f8565010000              JNZ 0x004d8476
004d8311  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004d8318  837f3000                  CMP dword ptr [EDI + 0x30],0x0
004d831c  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004d8322  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004d8328  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
004d832f  0f869a050000              JBE 0x004d88cf
004d8335  85f6                      TEST ESI,ESI
004d8337  7510                      JNZ 0x004d8349
004d8339  6854bfb600                PUSH 0xb6bf54
004d833e  6a10                      PUSH 0x10
004d8340  e87b8f5300                CALL 0x00a112c0
004d8345  83c408                    ADD ESP,0x8
004d8348  cc                        INT3
004d8349  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
004d834c  8bc6                      MOV EAX,ESI
004d834e  d3e8                      SHR EAX,CL
004d8350  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
004d8353  33c6                      XOR EAX,ESI
004d8355  8bd0                      MOV EDX,EAX
004d8357  d3e2                      SHL EDX,CL
004d8359  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004d835c  33d0                      XOR EDX,EAX
004d835e  8bf2                      MOV ESI,EDX
004d8360  d3ee                      SHR ESI,CL
004d8362  33f2                      XOR ESI,EDX
004d8364  8bc6                      MOV EAX,ESI
004d8366  c1e81f                    SHR EAX,0x1f
004d8369  660f6ec6                  MOVD XMM0,ESI
004d836d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d8371  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d837a  660f5ac8                  CVTPD2PS XMM1,XMM0
004d837e  f30f590df09fba00          MULSS XMM1,dword ptr [0x00ba9ff0]
004d8386  f30f590dfca8ba00          MULSS XMM1,dword ptr [0x00baa8fc]
004d838e  f30f5c0d70a8ba00          SUBSS XMM1,dword ptr [0x00baa870]
004d8396  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
004d839b  85f6                      TEST ESI,ESI
004d839d  7515                      JNZ 0x004d83b4
004d839f  6854bfb600                PUSH 0xb6bf54
004d83a4  6a10                      PUSH 0x10
004d83a6  e8158f5300                CALL 0x00a112c0
004d83ab  83c408                    ADD ESP,0x8
004d83ae  cc                        INT3
004d83b4  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
004d83b7  8bc6                      MOV EAX,ESI
004d83b9  d3e8                      SHR EAX,CL
004d83bb  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
004d83be  33c6                      XOR EAX,ESI
004d83c0  8bd0                      MOV EDX,EAX
004d83c2  d3e2                      SHL EDX,CL
004d83c4  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004d83c7  33d0                      XOR EDX,EAX
004d83c9  8bf2                      MOV ESI,EDX
004d83cb  d3ee                      SHR ESI,CL
004d83cd  33f2                      XOR ESI,EDX
004d83cf  8bc6                      MOV EAX,ESI
004d83d1  c1e81f                    SHR EAX,0x1f
004d83d4  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004d83dc  660f6ec6                  MOVD XMM0,ESI
004d83e0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d83e4  f30f118d74ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM1
004d83ec  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d83f5  660f5ac0                  CVTPD2PS XMM0,XMM0
004d83f9  f30f5905f09fba00          MULSS XMM0,dword ptr [0x00ba9ff0]
004d8401  f30f5905fca8ba00          MULSS XMM0,dword ptr [0x00baa8fc]
004d8409  f30f5c0570a8ba00          SUBSS XMM0,dword ptr [0x00baa870]
004d8411  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004d8419  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
004d8421  e83a6b2100                CALL 0x006eef60
004d8426  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d842c  50                        PUSH EAX
004d842d  6a00                      PUSH 0x0
004d842f  6a00                      PUSH 0x0
004d8431  6840b6c700                PUSH 0xc7b640
004d8436  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004d843c  50                        PUSH EAX
004d843d  6a00                      PUSH 0x0
004d843f  ff7728                    PUSH dword ptr [EDI + 0x28]
004d8442  e8d906f5ff                CALL 0x00428b20
004d8447  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
004d844d  8b10                      MOV EDX,dword ptr [EAX]
004d844f  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
004d8456  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
004d845c  8bc8                      MOV ECX,EAX
004d845e  ff520c                    CALL dword ptr [EDX + 0xc]
004d8461  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
004d8464  40                        INC EAX
004d8465  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
004d8468  3b4730                    CMP EAX,dword ptr [EDI + 0x30]
004d846b  0f82c4feffff              JC 0x004d8335
004d8471  e959040000                JMP 0x004d88cf
004d8476  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004d8480  e8db6a2100                CALL 0x006eef60
004d8485  660f6ec0                  MOVD XMM0,EAX
004d8489  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004d848d  c1e81f                    SHR EAX,0x1f
004d8490  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004d8499  660f5ac0                  CVTPD2PS XMM0,XMM0
004d849d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004d84a5  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004d84ad  f30f58c0                  ADDSS XMM0,XMM0
004d84b1  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004d84b6  e88550f4ff                CALL 0x0041d540
004d84bb  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004d84c0  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
004d84c5  e85650f4ff                CALL 0x0041d520
004d84ca  f30f104db4                MOVSS XMM1,dword ptr [EBP + -0x4c]
004d84cf  f30f118f18040000          MOVSS dword ptr [EDI + 0x418],XMM1
004d84d7  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
004d84df  85f6                      TEST ESI,ESI
004d84e1  7510                      JNZ 0x004d84f3
004d84e3  6854bfb600                PUSH 0xb6bf54
004d84e8  6a10                      PUSH 0x10
004d84ea  e8d18d5300                CALL 0x00a112c0
004d84ef  83c408                    ADD ESP,0x8
004d84f2  cc                        INT3
004d84f3  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
004d84f6  8bc6                      MOV EAX,ESI
004d84f8  d3e8                      SHR EAX,CL
004d84fa  0f57db                    XORPS XMM3,XMM3
004d84fd  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
004d8500  33c6                      XOR EAX,ESI
004d8502  8bd0                      MOV EDX,EAX
004d8504  d3e2                      SHL EDX,CL
004d8506  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004d8509  33d0                      XOR EDX,EAX
004d850b  8bf2                      MOV ESI,EDX
004d850d  b889888888                MOV EAX,0x88888889
004d8512  d3ee                      SHR ESI,CL
004d8514  33f2                      XOR ESI,EDX
004d8516  f7e6                      MUL ESI
004d8518  c1ea04                    SHR EDX,0x4
004d851b  8bc2                      MOV EAX,EDX
004d851d  c1e004                    SHL EAX,0x4
004d8520  2bc2                      SUB EAX,EDX
004d8522  03c0                      ADD EAX,EAX
004d8524  2bf0                      SUB ESI,EAX
004d8526  83c60a                    ADD ESI,0xa
004d8529  89b73c040000              MOV dword ptr [EDI + 0x43c],ESI
004d852f  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
004d8537  f30f10a71c040000          MOVSS XMM4,dword ptr [EDI + 0x41c]
004d853f  e93df4ffff                JMP 0x004d7981
004d8544  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
004d8549  e93bf4ffff                JMP 0x004d7989
004d854e  1bc0                      SBB EAX,EAX
004d8550  83c801                    OR EAX,0x1
004d8553  85c0                      TEST EAX,EAX
004d8555  7524                      JNZ 0x004d857b
004d8557  384634                    CMP byte ptr [ESI + 0x34],AL
004d855a  0f84ee020000              JZ 0x004d884e
004d8560  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004d8566  8d7748                    LEA ESI,[EDI + 0x48]
004d8569  0f85df020000              JNZ 0x004d884e
004d856f  6a01                      PUSH 0x1
004d8571  683404b600                PUSH 0xb60434
004d8576  e9bc020000                JMP 0x004d8837
004d857b  6a01                      PUSH 0x1
004d857d  8d7748                    LEA ESI,[EDI + 0x48]
004d8580  683404b600                PUSH 0xb60434
004d8585  e9ad020000                JMP 0x004d8837
004d858a  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004d858d  85c0                      TEST EAX,EAX
004d858f  7413                      JZ 0x004d85a4
004d8591  80783400                  CMP byte ptr [EAX + 0x34],0x0
004d8595  750d                      JNZ 0x004d85a4
004d8597  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004d859e  0f85aa020000              JNZ 0x004d884e
004d85a4  0f2fd8                    COMISS XMM3,XMM0
004d85a7  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
004d85ae  760a                      JBE 0x004d85ba
004d85b0  c6874801000001            MOV byte ptr [EDI + 0x148],0x1
004d85b7  0f57c5                    XORPS XMM0,XMM5
004d85ba  0f28c8                    MOVAPS XMM1,XMM0
004d85bd  0f28c4                    MOVAPS XMM0,XMM4
004d85c0  e89b17fcff                CALL 0x00499d60
004d85c5  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004d85cd  83ec08                    SUB ESP,0x8
004d85d0  f30f580588a8ba00          ADDSS XMM0,dword ptr [0x00baa888]
004d85d8  f30f5e0510a9ba00          DIVSS XMM0,dword ptr [0x00baa910]
004d85e0  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004d85e5  d945b0                    FLD dword ptr [EBP + -0x50]
004d85e8  dd1c24                    FSTP qword ptr [ESP]
004d85eb  e827836100                CALL 0x00af0917
004d85f0  d95db0                    FSTP dword ptr [EBP + -0x50]
004d85f3  d945b0                    FLD dword ptr [EBP + -0x50]
004d85f6  83c408                    ADD ESP,0x8
004d85f9  d95db0                    FSTP dword ptr [EBP + -0x50]
004d85fc  f30f2c45b0                CVTTSS2SI EAX,dword ptr [EBP + -0x50]
004d8601  83c002                    ADD EAX,0x2
004d8604  83f803                    CMP EAX,0x3
004d8607  0f87cf010000              JA 0x004d87dc
004d860d  ff2485f4884d00            JMP dword ptr [EAX*0x4 + 0x4d88f4]
004d8614  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004d8617  85f6                      TEST ESI,ESI
004d8619  7462                      JZ 0x004d867d
004d861b  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004d861f  8bc6                      MOV EAX,ESI
004d8621  7202                      JC 0x004d8625
004d8623  8b06                      MOV EAX,dword ptr [ESI]
004d8625  b95c04b600                MOV ECX,0xb6045c
004d862a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004d8630  8a10                      MOV DL,byte ptr [EAX]
004d8632  3a11                      CMP DL,byte ptr [ECX]
004d8634  751a                      JNZ 0x004d8650
004d8636  84d2                      TEST DL,DL
004d8638  7412                      JZ 0x004d864c
004d863a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004d863d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004d8640  750e                      JNZ 0x004d8650
004d8642  83c002                    ADD EAX,0x2
004d8645  83c102                    ADD ECX,0x2
004d8648  84d2                      TEST DL,DL
004d864a  75e4                      JNZ 0x004d8630
004d864c  33c0                      XOR EAX,EAX
004d864e  eb05                      JMP 0x004d8655
004d8650  1bc0                      SBB EAX,EAX
004d8652  83c801                    OR EAX,0x1
004d8655  85c0                      TEST EAX,EAX
004d8657  7524                      JNZ 0x004d867d
004d8659  384634                    CMP byte ptr [ESI + 0x34],AL
004d865c  0f84ec010000              JZ 0x004d884e
004d8662  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004d8668  8d7748                    LEA ESI,[EDI + 0x48]
004d866b  0f85dd010000              JNZ 0x004d884e
004d8671  6a01                      PUSH 0x1
004d8673  685c04b600                PUSH 0xb6045c
004d8678  e9ba010000                JMP 0x004d8837
004d867d  6a01                      PUSH 0x1
004d867f  8d7748                    LEA ESI,[EDI + 0x48]
004d8682  685c04b600                PUSH 0xb6045c
004d8687  e9ab010000                JMP 0x004d8837
004d868c  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004d868f  85f6                      TEST ESI,ESI
004d8691  745c                      JZ 0x004d86ef
004d8693  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004d8697  8bc6                      MOV EAX,ESI
004d8699  7202                      JC 0x004d869d
004d869b  8b06                      MOV EAX,dword ptr [ESI]
004d869d  b96404b600                MOV ECX,0xb60464
004d86a2  8a10                      MOV DL,byte ptr [EAX]
004d86a4  3a11                      CMP DL,byte ptr [ECX]
004d86a6  751a                      JNZ 0x004d86c2
004d86a8  84d2                      TEST DL,DL
004d86aa  7412                      JZ 0x004d86be
004d86ac  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004d86af  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004d86b2  750e                      JNZ 0x004d86c2
004d86b4  83c002                    ADD EAX,0x2
004d86b7  83c102                    ADD ECX,0x2
004d86ba  84d2                      TEST DL,DL
004d86bc  75e4                      JNZ 0x004d86a2
004d86be  33c0                      XOR EAX,EAX
004d86c0  eb05                      JMP 0x004d86c7
004d86c2  1bc0                      SBB EAX,EAX
004d86c4  83c801                    OR EAX,0x1
004d86c7  85c0                      TEST EAX,EAX
004d86c9  7524                      JNZ 0x004d86ef
004d86cb  384634                    CMP byte ptr [ESI + 0x34],AL
004d86ce  0f847a010000              JZ 0x004d884e
004d86d4  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004d86da  8d7748                    LEA ESI,[EDI + 0x48]
004d86dd  0f856b010000              JNZ 0x004d884e
004d86e3  6a01                      PUSH 0x1
004d86e5  686404b600                PUSH 0xb60464
004d86ea  e948010000                JMP 0x004d8837
004d86ef  6a01                      PUSH 0x1
004d86f1  8d7748                    LEA ESI,[EDI + 0x48]
004d86f4  686404b600                PUSH 0xb60464
004d86f9  e939010000                JMP 0x004d8837
004d86fe  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004d8701  85f6                      TEST ESI,ESI
004d8703  745c                      JZ 0x004d8761
004d8705  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004d8709  8bc6                      MOV EAX,ESI
004d870b  7202                      JC 0x004d870f
004d870d  8b06                      MOV EAX,dword ptr [ESI]
004d870f  b93c04b600                MOV ECX,0xb6043c
004d8714  8a10                      MOV DL,byte ptr [EAX]
004d8716  3a11                      CMP DL,byte ptr [ECX]
004d8718  751a                      JNZ 0x004d8734
004d871a  84d2                      TEST DL,DL
004d871c  7412                      JZ 0x004d8730
004d871e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004d8721  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004d8724  750e                      JNZ 0x004d8734
004d8726  83c002                    ADD EAX,0x2
004d8729  83c102                    ADD ECX,0x2
004d872c  84d2                      TEST DL,DL
004d872e  75e4                      JNZ 0x004d8714
004d8730  33c0                      XOR EAX,EAX
004d8732  eb05                      JMP 0x004d8739
004d8734  1bc0                      SBB EAX,EAX
004d8736  83c801                    OR EAX,0x1
004d8739  85c0                      TEST EAX,EAX
004d873b  7524                      JNZ 0x004d8761
004d873d  384634                    CMP byte ptr [ESI + 0x34],AL
004d8740  0f8408010000              JZ 0x004d884e
004d8746  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004d874c  8d7748                    LEA ESI,[EDI + 0x48]
004d874f  0f85f9000000              JNZ 0x004d884e
004d8755  6a01                      PUSH 0x1
004d8757  683c04b600                PUSH 0xb6043c
004d875c  e9d6000000                JMP 0x004d8837
004d8761  6a01                      PUSH 0x1
004d8763  8d7748                    LEA ESI,[EDI + 0x48]
004d8766  683c04b600                PUSH 0xb6043c
004d876b  e9c7000000                JMP 0x004d8837
004d8770  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004d8773  85f6                      TEST ESI,ESI
004d8775  7459                      JZ 0x004d87d0
004d8777  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004d877b  8bc6                      MOV EAX,ESI
004d877d  7202                      JC 0x004d8781
004d877f  8b06                      MOV EAX,dword ptr [ESI]
004d8781  b94804b600                MOV ECX,0xb60448
004d8786  8a10                      MOV DL,byte ptr [EAX]
004d8788  3a11                      CMP DL,byte ptr [ECX]
004d878a  751a                      JNZ 0x004d87a6
004d878c  84d2                      TEST DL,DL
004d878e  7412                      JZ 0x004d87a2
004d8790  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004d8793  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004d8796  750e                      JNZ 0x004d87a6
004d8798  83c002                    ADD EAX,0x2
004d879b  83c102                    ADD ECX,0x2
004d879e  84d2                      TEST DL,DL
004d87a0  75e4                      JNZ 0x004d8786
004d87a2  33c0                      XOR EAX,EAX
004d87a4  eb05                      JMP 0x004d87ab
004d87a6  1bc0                      SBB EAX,EAX
004d87a8  83c801                    OR EAX,0x1
004d87ab  85c0                      TEST EAX,EAX
004d87ad  7521                      JNZ 0x004d87d0
004d87af  384634                    CMP byte ptr [ESI + 0x34],AL
004d87b2  0f8496000000              JZ 0x004d884e
004d87b8  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004d87be  8d7748                    LEA ESI,[EDI + 0x48]
004d87c1  0f8587000000              JNZ 0x004d884e
004d87c7  6a01                      PUSH 0x1
004d87c9  684804b600                PUSH 0xb60448
004d87ce  eb67                      JMP 0x004d8837
004d87d0  6a01                      PUSH 0x1
004d87d2  8d7748                    LEA ESI,[EDI + 0x48]
004d87d5  684804b600                PUSH 0xb60448
004d87da  eb5b                      JMP 0x004d8837
004d87dc  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004d87df  85f6                      TEST ESI,ESI
004d87e1  744a                      JZ 0x004d882d
004d87e3  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004d87e7  8bc6                      MOV EAX,ESI
004d87e9  7202                      JC 0x004d87ed
004d87eb  8b06                      MOV EAX,dword ptr [ESI]
004d87ed  b98804b600                MOV ECX,0xb60488
004d87f2  8a10                      MOV DL,byte ptr [EAX]
004d87f4  3a11                      CMP DL,byte ptr [ECX]
004d87f6  751a                      JNZ 0x004d8812
004d87f8  84d2                      TEST DL,DL
004d87fa  7412                      JZ 0x004d880e
004d87fc  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004d87ff  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004d8802  750e                      JNZ 0x004d8812
004d8804  83c002                    ADD EAX,0x2
004d8807  83c102                    ADD ECX,0x2
004d880a  84d2                      TEST DL,DL
004d880c  75e4                      JNZ 0x004d87f2
004d880e  33c0                      XOR EAX,EAX
004d8810  eb05                      JMP 0x004d8817
004d8812  1bc0                      SBB EAX,EAX
004d8814  83c801                    OR EAX,0x1
004d8817  85c0                      TEST EAX,EAX
004d8819  7512                      JNZ 0x004d882d
004d881b  384634                    CMP byte ptr [ESI + 0x34],AL
004d881e  742e                      JZ 0x004d884e
004d8820  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004d8826  8d7748                    LEA ESI,[EDI + 0x48]
004d8829  7523                      JNZ 0x004d884e
004d882b  eb03                      JMP 0x004d8830
004d882d  8d7748                    LEA ESI,[EDI + 0x48]
004d8830  6a01                      PUSH 0x1
004d8832  688804b600                PUSH 0xb60488
004d8837  8bce                      MOV ECX,ESI
004d8839  e8921df3ff                CALL 0x0040a5d0
004d883e  84c0                      TEST AL,AL
004d8840  740c                      JZ 0x004d884e
004d8842  8d4e30                    LEA ECX,[ESI + 0x30]
004d8845  e86619f3ff                CALL 0x0040a1b0
004d884a  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004d884e  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
004d8851  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
004d8854  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
004d8857  85c0                      TEST EAX,EAX
004d8859  747b                      JZ 0x004d88d6
004d885b  83780810                  CMP dword ptr [EAX + 0x8],0x10
004d885f  7575                      JNZ 0x004d88d6
004d8861  833823                    CMP dword ptr [EAX],0x23
004d8864  7570                      JNZ 0x004d88d6
004d8866  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004d886e  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004d8875  765f                      JBE 0x004d88d6
004d8877  f30f104920                MOVSS XMM1,dword ptr [ECX + 0x20]
004d887c  f30f5c0dd0a8ba00          SUBSS XMM1,dword ptr [0x00baa8d0]
004d8884  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004d888c  0f2fc1                    COMISS XMM0,XMM1
004d888f  7645                      JBE 0x004d88d6
004d8891  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004d8899  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
004d889e  f30f114da4                MOVSS dword ptr [EBP + -0x5c],XMM1
004d88a3  e8b8662100                CALL 0x006eef60
004d88a8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004d88ae  50                        PUSH EAX
004d88af  6a42                      PUSH 0x42
004d88b1  6a00                      PUSH 0x0
004d88b3  6840b6c700                PUSH 0xc7b640
004d88b8  8d45a0                    LEA EAX,[EBP + -0x60]
004d88bb  50                        PUSH EAX
004d88bc  6a10                      PUSH 0x10
004d88be  68e8030000                PUSH 0x3e8
004d88c3  e85802f5ff                CALL 0x00428b20
004d88c8  8bc8                      MOV ECX,EAX
004d88ca  8b10                      MOV EDX,dword ptr [EAX]
004d88cc  ff520c                    CALL dword ptr [EDX + 0xc]
004d88cf  8b07                      MOV EAX,dword ptr [EDI]
004d88d1  8bcf                      MOV ECX,EDI
004d88d3  ff5028                    CALL dword ptr [EAX + 0x28]
004d88d6  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004d88d9  64890d00000000            MOV dword ptr FS:[0x0],ECX
004d88e0  59                        POP ECX
004d88e1  5f                        POP EDI
004d88e2  5e                        POP ESI
004d88e3  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004d88e6  33cd                      XOR ECX,EBP
004d88e8  e83e686100                CALL 0x00aef12b
004d88ed  8be5                      MOV ESP,EBP
004d88ef  5d                        POP EBP
004d88f0  8be3                      MOV ESP,EBX
004d88f2  5b                        POP EBX
004d88f3  c3                        RET
