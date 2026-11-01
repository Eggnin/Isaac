; J460 NPC AI 0x00459d20 AI_00459d20
; types=66
; identities=66.0.0,66.10.0,66.20.0,66.30.0
; entry=00459d20
00459d20  53                        PUSH EBX
00459d21  8bdc                      MOV EBX,ESP
00459d23  83ec08                    SUB ESP,0x8
00459d26  83e4f8                    AND ESP,0xfffffff8
00459d29  83c404                    ADD ESP,0x4
00459d2c  55                        PUSH EBP
00459d2d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00459d30  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00459d34  8bec                      MOV EBP,ESP
00459d36  6aff                      PUSH -0x1
00459d38  68d525af00                PUSH 0xaf25d5
00459d3d  64a100000000              MOV EAX,FS:[0x0]
00459d43  50                        PUSH EAX
00459d44  53                        PUSH EBX
00459d45  81ec90000000              SUB ESP,0x90
00459d4b  a1b493bf00                MOV EAX,[0x00bf93b4]
00459d50  33c5                      XOR EAX,EBP
00459d52  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00459d55  56                        PUSH ESI
00459d56  57                        PUSH EDI
00459d57  50                        PUSH EAX
00459d58  8d45f4                    LEA EAX,[EBP + -0xc]
00459d5b  64a300000000              MOV FS:[0x0],EAX
00459d61  8bf9                      MOV EDI,ECX
00459d63  897d98                    MOV dword ptr [EBP + -0x68],EDI
00459d66  e8d54a2600                CALL 0x006be840
00459d6b  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00459d72  8db73c030000              LEA ESI,[EDI + 0x33c]
00459d78  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
00459d80  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
00459d88  f30f5c1e                  SUBSS XMM3,dword ptr [ESI]
00459d8c  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
00459d91  f30f115d9c                MOVSS dword ptr [EBP + -0x64],XMM3
00459d96  f30f1155a4                MOVSS dword ptr [EBP + -0x5c],XMM2
00459d9b  f30f115d8c                MOVSS dword ptr [EBP + -0x74],XMM3
00459da0  f30f115590                MOVSS dword ptr [EBP + -0x70],XMM2
00459da5  7550                      JNZ 0x00459df7
00459da7  0f280d50bfba00            MOVAPS XMM1,xmmword ptr [0x00babf50]
00459dae  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00459db4  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
00459dba  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00459dc4  c74580cdcccc3d            MOV dword ptr [EBP + -0x80],0x3dcccccd
00459dcb  0f57c0                    XORPS XMM0,XMM0
00459dce  c74584cdcccc3d            MOV dword ptr [EBP + -0x7c],0x3dcccccd
00459dd5  c74588cdcccc3d            MOV dword ptr [EBP + -0x78],0x3dcccccd
00459ddc  3bc8                      CMP ECX,EAX
00459dde  7417                      JZ 0x00459df7
00459de0  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
00459de3  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00459de7  f30f7e4580                MOVQ XMM0,qword ptr [EBP + -0x80]
00459dec  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00459df1  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
00459df4  894128                    MOV dword ptr [ECX + 0x28],EAX
00459df7  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00459dfa  f30f100d14abba00          MOVSS XMM1,dword ptr [0x00baab14]
00459e02  85c0                      TEST EAX,EAX
00459e04  0f85b10d0000              JNZ 0x0045abbb
00459e0a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00459e12  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00459e1a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00459e20  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00459e28  85c0                      TEST EAX,EAX
00459e2a  750f                      JNZ 0x00459e3b
00459e2c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00459e36  e9d7190000                JMP 0x0045b812
00459e3b  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00459e43  0f57e4                    XORPS XMM4,XMM4
00459e46  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
00459e4e  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00459e56  0f2fc8                    COMISS XMM1,XMM0
00459e59  766b                      JBE 0x00459ec6
00459e5b  a17816c700                MOV EAX,[0x00c71678]
00459e60  8d4da0                    LEA ECX,[EBP + -0x60]
00459e63  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00459e69  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
00459e6e  f30f104814                MOVSS XMM1,dword ptr [EAX + 0x14]
00459e73  f30f10501c                MOVSS XMM2,dword ptr [EAX + 0x1c]
00459e78  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
00459e7d  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
00459e82  8d4594                    LEA EAX,[EBP + -0x6c]
00459e85  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
00459e8a  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00459e8e  0f2fc1                    COMISS XMM0,XMM1
00459e91  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
00459e96  f30f115594                MOVSS dword ptr [EBP + -0x6c],XMM2
00459e9b  0f47ce                    CMOVA ECX,ESI
00459e9e  0f2f11                    COMISS XMM2,dword ptr [ECX]
00459ea1  0f47c1                    CMOVA EAX,ECX
00459ea4  8d4f48                    LEA ECX,[EDI + 0x48]
00459ea7  0f2fe3                    COMISS XMM4,XMM3
00459eaa  8b00                      MOV EAX,dword ptr [EAX]
00459eac  8906                      MOV dword ptr [ESI],EAX
00459eae  0f97c0                    SETA AL
00459eb1  888748010000              MOV byte ptr [EDI + 0x148],AL
00459eb7  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00459ec1  e9ce0a0000                JMP 0x0045a994
00459ec6  8d4f48                    LEA ECX,[EDI + 0x48]
00459ec9  83f804                    CMP EAX,0x4
00459ecc  0f85f4010000              JNZ 0x0045a0c6
00459ed2  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00459ed9  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
00459edc  c745d457616c6b            MOV dword ptr [EBP + -0x2c],0x6b6c6157
00459ee3  c645d800                  MOV byte ptr [EBP + -0x28],0x0
00459ee7  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00459eee  c745c00f000000            MOV dword ptr [EBP + -0x40],0xf
00459ef5  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00459ef8  c745ac57616c6b            MOV dword ptr [EBP + -0x54],0x6b6c6157
00459eff  c645b000                  MOV byte ptr [EBP + -0x50],0x0
00459f03  51                        PUSH ECX
00459f04  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00459f08  8d45d4                    LEA EAX,[EBP + -0x2c]
00459f0b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00459f12  8bcf                      MOV ECX,EDI
00459f14  50                        PUSH EAX
00459f15  8d45ac                    LEA EAX,[EBP + -0x54]
00459f18  50                        PUSH EAX
00459f19  e812742600                CALL 0x006c1330
00459f1e  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00459f22  8b55c0                    MOV EDX,dword ptr [EBP + -0x40]
00459f25  83fa10                    CMP EDX,0x10
00459f28  7228                      JC 0x00459f52
00459f2a  8b4dac                    MOV ECX,dword ptr [EBP + -0x54]
00459f2d  42                        INC EDX
00459f2e  8bc1                      MOV EAX,ECX
00459f30  81fa00100000              CMP EDX,0x1000
00459f36  7210                      JC 0x00459f48
00459f38  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00459f3b  83c223                    ADD EDX,0x23
00459f3e  2bc1                      SUB EAX,ECX
00459f40  83c0fc                    ADD EAX,-0x4
00459f43  83f81f                    CMP EAX,0x1f
00459f46  7749                      JA 0x00459f91
00459f48  52                        PUSH EDX
00459f49  51                        PUSH ECX
00459f4a  e80d526900                CALL 0x00aef15c
00459f4f  83c408                    ADD ESP,0x8
00459f52  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00459f59  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00459f5c  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
00459f63  c745c00f000000            MOV dword ptr [EBP + -0x40],0xf
00459f6a  c645ac00                  MOV byte ptr [EBP + -0x54],0x0
00459f6e  83fa10                    CMP EDX,0x10
00459f71  722e                      JC 0x00459fa1
00459f73  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00459f76  42                        INC EDX
00459f77  8bc1                      MOV EAX,ECX
00459f79  81fa00100000              CMP EDX,0x1000
00459f7f  7216                      JC 0x00459f97
00459f81  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00459f84  83c223                    ADD EDX,0x23
00459f87  2bc1                      SUB EAX,ECX
00459f89  83c0fc                    ADD EAX,-0x4
00459f8c  83f81f                    CMP EAX,0x1f
00459f8f  7606                      JBE 0x00459f97
00459f91  ff159488b100              CALL dword ptr [0x00b18894]
00459f97  52                        PUSH EDX
00459f98  51                        PUSH ECX
00459f99  e8be516900                CALL 0x00aef15c
00459f9e  83c408                    ADD ESP,0x8
00459fa1  6a00                      PUSH 0x0
00459fa3  8d8f14040000              LEA ECX,[EDI + 0x414]
00459fa9  e8a2c63800                CALL 0x007e6650
00459fae  e8ad4f2900                CALL 0x006eef60
00459fb3  33d2                      XOR EDX,EDX
00459fb5  b95a000000                MOV ECX,0x5a
00459fba  f7f1                      DIV ECX
00459fbc  85d2                      TEST EDX,EDX
00459fbe  755c                      JNZ 0x0045a01c
00459fc0  a17816c700                MOV EAX,[0x00c71678]
00459fc5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00459fcb  8bb0c4120000              MOV ESI,dword ptr [EAX + 0x12c4]
00459fd1  8bb8cc120000              MOV EDI,dword ptr [EAX + 0x12cc]
00459fd7  03b0c0120000              ADD ESI,dword ptr [EAX + 0x12c0]
00459fdd  03b8c8120000              ADD EDI,dword ptr [EAX + 0x12c8]
00459fe3  e8784f2900                CALL 0x006eef60
00459fe8  83e001                    AND EAX,0x1
00459feb  33d2                      XOR EDX,EDX
00459fed  40                        INC EAX
00459fee  85f6                      TEST ESI,ESI
00459ff0  0f4fd6                    CMOVG EDX,ESI
00459ff3  33c9                      XOR ECX,ECX
00459ff5  85ff                      TEST EDI,EDI
00459ff7  0f4fcf                    CMOVG ECX,EDI
00459ffa  8b7d98                    MOV EDI,dword ptr [EBP + -0x68]
00459ffd  2bd1                      SUB EDX,ECX
00459fff  3bd0                      CMP EDX,EAX
0045a001  7d19                      JGE 0x0045a01c
0045a003  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0045a00d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045a017  e9830b0000                JMP 0x0045ab9f
0045a01c  e83f4f2900                CALL 0x006eef60
0045a021  33d2                      XOR EDX,EDX
0045a023  b9b4000000                MOV ECX,0xb4
0045a028  f7f1                      DIV ECX
0045a02a  85d2                      TEST EDX,EDX
0045a02c  752d                      JNZ 0x0045a05b
0045a02e  a17816c700                MOV EAX,[0x00c71678]
0045a033  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045a039  39902c720000              CMP dword ptr [EAX + 0x722c],EDX
0045a03f  7f1a                      JG 0x0045a05b
0045a041  395730                    CMP dword ptr [EDI + 0x30],EDX
0045a044  7515                      JNZ 0x0045a05b
0045a046  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0045a050  899710040000              MOV dword ptr [EDI + 0x410],EDX
0045a056  e9440b0000                JMP 0x0045ab9f
0045a05b  e8004f2900                CALL 0x006eef60
0045a060  33d2                      XOR EDX,EDX
0045a062  b964000000                MOV ECX,0x64
0045a067  f7f1                      DIV ECX
0045a069  85d2                      TEST EDX,EDX
0045a06b  0f852e0b0000              JNZ 0x0045ab9f
0045a071  a17816c700                MOV EAX,[0x00c71678]
0045a076  33c9                      XOR ECX,ECX
0045a078  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
0045a07e  8b82c8120000              MOV EAX,dword ptr [EDX + 0x12c8]
0045a084  0382cc120000              ADD EAX,dword ptr [EDX + 0x12cc]
0045a08a  8bb2c4120000              MOV ESI,dword ptr [EDX + 0x12c4]
0045a090  03b2c0120000              ADD ESI,dword ptr [EDX + 0x12c0]
0045a096  85c0                      TEST EAX,EAX
0045a098  0f4fc8                    CMOVG ECX,EAX
0045a09b  33c0                      XOR EAX,EAX
0045a09d  85f6                      TEST ESI,ESI
0045a09f  0f4fc6                    CMOVG EAX,ESI
0045a0a2  2bc1                      SUB EAX,ECX
0045a0a4  83f804                    CMP EAX,0x4
0045a0a7  0f8df20a0000              JGE 0x0045ab9f
0045a0ad  c787640b00000e000000      MOV dword ptr [EDI + 0xb64],0xe
0045a0b7  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045a0c1  e9d90a0000                JMP 0x0045ab9f
0045a0c6  83f80d                    CMP EAX,0xd
0045a0c9  0f8578030000              JNZ 0x0045a447
0045a0cf  683cd5b100                PUSH 0xb1d53c
0045a0d4  e8f703fbff                CALL 0x0040a4d0
0045a0d9  84c0                      TEST AL,AL
0045a0db  0f859e000000              JNZ 0x0045a17f
0045a0e1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045a0e5  7442                      JZ 0x0045a129
0045a0e7  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0045a0ed  753a                      JNZ 0x0045a129
0045a0ef  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0045a0f2  83781410                  CMP dword ptr [EAX + 0x14],0x10
0045a0f6  7202                      JC 0x0045a0fa
0045a0f8  8b00                      MOV EAX,dword ptr [EAX]
0045a0fa  b93cd5b100                MOV ECX,0xb1d53c
0045a0ff  90                        NOP
0045a100  8a10                      MOV DL,byte ptr [EAX]
0045a102  3a11                      CMP DL,byte ptr [ECX]
0045a104  751a                      JNZ 0x0045a120
0045a106  84d2                      TEST DL,DL
0045a108  7412                      JZ 0x0045a11c
0045a10a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045a10d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045a110  750e                      JNZ 0x0045a120
0045a112  83c002                    ADD EAX,0x2
0045a115  83c102                    ADD ECX,0x2
0045a118  84d2                      TEST DL,DL
0045a11a  75e4                      JNZ 0x0045a100
0045a11c  33c0                      XOR EAX,EAX
0045a11e  eb05                      JMP 0x0045a125
0045a120  1bc0                      SBB EAX,EAX
0045a122  83c801                    OR EAX,0x1
0045a125  85c0                      TEST EAX,EAX
0045a127  7456                      JZ 0x0045a17f
0045a129  6a00                      PUSH 0x0
0045a12b  683cd5b100                PUSH 0xb1d53c
0045a130  8d4f48                    LEA ECX,[EDI + 0x48]
0045a133  e84802fbff                CALL 0x0040a380
0045a138  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045a13e  8d4d98                    LEA ECX,[EBP + -0x68]
0045a141  c74598a1030000            MOV dword ptr [EBP + -0x68],0x3a1
0045a148  e833c64f00                CALL 0x00956780
0045a14d  83ec08                    SUB ESP,0x8
0045a150  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045a158  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a15f  6a00                      PUSH 0x0
0045a161  6a02                      PUSH 0x2
0045a163  51                        PUSH ECX
0045a164  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a16b  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045a171  ff7598                    PUSH dword ptr [EBP + -0x68]
0045a174  e8b73a4d00                CALL 0x0092dc30
0045a179  8db73c030000              LEA ESI,[EDI + 0x33c]
0045a17f  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0045a185  40                        INC EAX
0045a186  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045a18c  83f814                    CMP EAX,0x14
0045a18f  0f8594050000              JNZ 0x0045a729
0045a195  51                        PUSH ECX
0045a196  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a19d  6a00                      PUSH 0x0
0045a19f  6a02                      PUSH 0x2
0045a1a1  51                        PUSH ECX
0045a1a2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a1a9  8bcf                      MOV ECX,EDI
0045a1ab  6a72                      PUSH 0x72
0045a1ad  e8eec92700                CALL 0x006d6ba0
0045a1b2  51                        PUSH ECX
0045a1b3  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a1ba  6a00                      PUSH 0x0
0045a1bc  6a02                      PUSH 0x2
0045a1be  51                        PUSH ECX
0045a1bf  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
0045a1c6  8bcf                      MOV ECX,EDI
0045a1c8  6809010000                PUSH 0x109
0045a1cd  e8cec92700                CALL 0x006d6ba0
0045a1d2  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0045a1d6  0f85f1000000              JNZ 0x0045a2cd
0045a1dc  8d45bc                    LEA EAX,[EBP + -0x44]
0045a1df  50                        PUSH EAX
0045a1e0  e88b4e2200                CALL 0x0067f070
0045a1e5  83c404                    ADD ESP,0x4
0045a1e8  c7459802000000            MOV dword ptr [EBP + -0x68],0x2
0045a1ef  8bcf                      MOV ECX,EDI
0045a1f1  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0045a1f5  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
0045a1fd  6800000010                PUSH 0x10000000
0045a202  6a00                      PUSH 0x0
0045a204  f30f114d9c                MOVSS dword ptr [EBP + -0x64],XMM1
0045a209  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0045a20e  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
0045a216  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
0045a21b  e810d2fbff                CALL 0x00417430
0045a220  84c0                      TEST AL,AL
0045a222  741c                      JZ 0x0045a240
0045a224  6a00                      PUSH 0x0
0045a226  51                        PUSH ECX
0045a227  6a01                      PUSH 0x1
0045a229  6a37                      PUSH 0x37
0045a22b  8bcf                      MOV ECX,EDI
0045a22d  e8ae252500                CALL 0x006ac7e0
0045a232  b903000000                MOV ECX,0x3
0045a237  2bc8                      SUB ECX,EAX
0045a239  894d98                    MOV dword ptr [EBP + -0x68],ECX
0045a23c  85c9                      TEST ECX,ECX
0045a23e  7e41                      JLE 0x0045a281
0045a240  e81b4d2900                CALL 0x006eef60
0045a245  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
0045a24a  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0045a24e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045a254  50                        PUSH EAX
0045a255  6a00                      PUSH 0x0
0045a257  57                        PUSH EDI
0045a258  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0045a25d  8d45bc                    LEA EAX,[EBP + -0x44]
0045a260  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
0045a265  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
0045a26a  6840b6c700                PUSH 0xc7b640
0045a26f  50                        PUSH EAX
0045a270  6a01                      PUSH 0x1
0045a272  6a37                      PUSH 0x37
0045a274  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0045a279  e8a2e8fcff                CALL 0x00428b20
0045a27e  8b4d98                    MOV ECX,dword ptr [EBP + -0x68]
0045a281  83f901                    CMP ECX,0x1
0045a284  0f8e15090000              JLE 0x0045ab9f
0045a28a  e8d14c2900                CALL 0x006eef60
0045a28f  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0045a293  f30f5c459c                SUBSS XMM0,dword ptr [EBP + -0x64]
0045a298  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045a29e  50                        PUSH EAX
0045a29f  6a00                      PUSH 0x0
0045a2a1  57                        PUSH EDI
0045a2a2  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
0045a2a7  8d4594                    LEA EAX,[EBP + -0x6c]
0045a2aa  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0045a2af  f30f5c4590                SUBSS XMM0,dword ptr [EBP + -0x70]
0045a2b4  6840b6c700                PUSH 0xc7b640
0045a2b9  50                        PUSH EAX
0045a2ba  6a01                      PUSH 0x1
0045a2bc  6a37                      PUSH 0x37
0045a2be  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
0045a2c3  e858e8fcff                CALL 0x00428b20
0045a2c8  e9d2080000                JMP 0x0045ab9f
0045a2cd  33c9                      XOR ECX,ECX
0045a2cf  c7459800000000            MOV dword ptr [EBP + -0x68],0x0
0045a2d6  894d9c                    MOV dword ptr [EBP + -0x64],ECX
0045a2d9  0f1f8000000000            NOP dword ptr [EAX]
0045a2e0  83f914                    CMP ECX,0x14
0045a2e3  0f8db6080000              JGE 0x0045ab9f
0045a2e9  a17816c700                MOV EAX,[0x00c71678]
0045a2ee  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0045a2f4  e8674c2900                CALL 0x006eef60
0045a2f9  6a00                      PUSH 0x0
0045a2fb  6a00                      PUSH 0x0
0045a2fd  6a00                      PUSH 0x0
0045a2ff  660f6ec0                  MOVD XMM0,EAX
0045a303  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0045a307  c1e81f                    SHR EAX,0x1f
0045a30a  51                        PUSH ECX
0045a30b  8bce                      MOV ECX,ESI
0045a30d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0045a316  8d873c030000              LEA EAX,[EDI + 0x33c]
0045a31c  660f5ac0                  CVTPD2PS XMM0,XMM0
0045a320  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0045a328  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
0045a330  f30f5805e0aaba00          ADDSS XMM0,dword ptr [0x00baaae0]
0045a338  f30f110424                MOVSS dword ptr [ESP],XMM0
0045a33d  50                        PUSH EAX
0045a33e  8d458c                    LEA EAX,[EBP + -0x74]
0045a341  50                        PUSH EAX
0045a342  e8d9913b00                CALL 0x00813520
0045a347  8bcf                      MOV ECX,EDI
0045a349  e8f2442600                CALL 0x006be840
0045a34e  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0045a356  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0045a35e  f30f5c4590                SUBSS XMM0,dword ptr [EBP + -0x70]
0045a363  f30f5c4d8c                SUBSS XMM1,dword ptr [EBP + -0x74]
0045a368  f30f59c0                  MULSS XMM0,XMM0
0045a36c  f30f59c9                  MULSS XMM1,XMM1
0045a370  f30f58c1                  ADDSS XMM0,XMM1
0045a374  e8d7b6fdff                CALL 0x00435a50
0045a379  0f2f0544aaba00            COMISS XMM0,dword ptr [0x00baaa44]
0045a380  0f86a9000000              JBE 0x0045a42f
0045a386  e8d54b2900                CALL 0x006eef60
0045a38b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045a391  6a00                      PUSH 0x0
0045a393  68acd6c500                PUSH 0xc5d6ac
0045a398  68dcd5c500                PUSH 0xc5d5dc
0045a39d  6a00                      PUSH 0x0
0045a39f  50                        PUSH EAX
0045a3a0  6a00                      PUSH 0x0
0045a3a2  57                        PUSH EDI
0045a3a3  6840b6c700                PUSH 0xc7b640
0045a3a8  8d458c                    LEA EAX,[EBP + -0x74]
0045a3ab  50                        PUSH EAX
0045a3ac  6a0a                      PUSH 0xa
0045a3ae  ff7728                    PUSH dword ptr [EDI + 0x28]
0045a3b1  e86ae7fcff                CALL 0x00428b20
0045a3b6  50                        PUSH EAX
0045a3b7  e8f5646900                CALL 0x00af08b1
0045a3bc  8bf0                      MOV ESI,EAX
0045a3be  83c414                    ADD ESP,0x14
0045a3c1  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0045a3c7  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0045a3cd  85c9                      TEST ECX,ECX
0045a3cf  7418                      JZ 0x0045a3e9
0045a3d1  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
0045a3d4  81c1cc030000              ADD ECX,0x3cc
0045a3da  8d45a4                    LEA EAX,[EBP + -0x5c]
0045a3dd  50                        PUSH EAX
0045a3de  e82d4e0700                CALL 0x004cf210
0045a3e3  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0045a3e9  50                        PUSH EAX
0045a3ea  8bcf                      MOV ECX,EDI
0045a3ec  8938                      MOV dword ptr [EAX],EDI
0045a3ee  e8fd380700                CALL 0x004cdcf0
0045a3f3  51                        PUSH ECX
0045a3f4  ffb7780c0000              PUSH dword ptr [EDI + 0xc78]
0045a3fa  8bce                      MOV ECX,ESI
0045a3fc  e8ff5e2700                CALL 0x006d0300
0045a401  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0045a407  33c0                      XOR EAX,EAX
0045a409  81e100000010              AND ECX,0x10000000
0045a40f  0bc1                      OR EAX,ECX
0045a411  7413                      JZ 0x0045a426
0045a413  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0045a419  83a66c010000df            AND dword ptr [ESI + 0x16c],0xffffffdf
0045a420  898668010000              MOV dword ptr [ESI + 0x168],EAX
0045a426  8b4598                    MOV EAX,dword ptr [EBP + -0x68]
0045a429  40                        INC EAX
0045a42a  894598                    MOV dword ptr [EBP + -0x68],EAX
0045a42d  eb03                      JMP 0x0045a432
0045a42f  8b4598                    MOV EAX,dword ptr [EBP + -0x68]
0045a432  8b4d9c                    MOV ECX,dword ptr [EBP + -0x64]
0045a435  41                        INC ECX
0045a436  894d9c                    MOV dword ptr [EBP + -0x64],ECX
0045a439  83f802                    CMP EAX,0x2
0045a43c  0f8c9efeffff              JL 0x0045a2e0
0045a442  e958070000                JMP 0x0045ab9f
0045a447  83f80e                    CMP EAX,0xe
0045a44a  0f85e1020000              JNZ 0x0045a731
0045a450  6868d5b100                PUSH 0xb1d568
0045a455  e87600fbff                CALL 0x0040a4d0
0045a45a  84c0                      TEST AL,AL
0045a45c  0f859d000000              JNZ 0x0045a4ff
0045a462  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045a466  7441                      JZ 0x0045a4a9
0045a468  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0045a46e  7539                      JNZ 0x0045a4a9
0045a470  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0045a473  83781410                  CMP dword ptr [EAX + 0x14],0x10
0045a477  7202                      JC 0x0045a47b
0045a479  8b00                      MOV EAX,dword ptr [EAX]
0045a47b  b968d5b100                MOV ECX,0xb1d568
0045a480  8a10                      MOV DL,byte ptr [EAX]
0045a482  3a11                      CMP DL,byte ptr [ECX]
0045a484  751a                      JNZ 0x0045a4a0
0045a486  84d2                      TEST DL,DL
0045a488  7412                      JZ 0x0045a49c
0045a48a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045a48d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045a490  750e                      JNZ 0x0045a4a0
0045a492  83c002                    ADD EAX,0x2
0045a495  83c102                    ADD ECX,0x2
0045a498  84d2                      TEST DL,DL
0045a49a  75e4                      JNZ 0x0045a480
0045a49c  33c0                      XOR EAX,EAX
0045a49e  eb05                      JMP 0x0045a4a5
0045a4a0  1bc0                      SBB EAX,EAX
0045a4a2  83c801                    OR EAX,0x1
0045a4a5  85c0                      TEST EAX,EAX
0045a4a7  7456                      JZ 0x0045a4ff
0045a4a9  6a00                      PUSH 0x0
0045a4ab  6868d5b100                PUSH 0xb1d568
0045a4b0  8d4f48                    LEA ECX,[EDI + 0x48]
0045a4b3  e8c8fefaff                CALL 0x0040a380
0045a4b8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045a4be  8d4d98                    LEA ECX,[EBP + -0x68]
0045a4c1  c74598a1030000            MOV dword ptr [EBP + -0x68],0x3a1
0045a4c8  e8b3c24f00                CALL 0x00956780
0045a4cd  83ec08                    SUB ESP,0x8
0045a4d0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045a4d8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a4df  6a00                      PUSH 0x0
0045a4e1  6a02                      PUSH 0x2
0045a4e3  51                        PUSH ECX
0045a4e4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a4eb  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045a4f1  ff7598                    PUSH dword ptr [EBP + -0x68]
0045a4f4  e837374d00                CALL 0x0092dc30
0045a4f9  8db73c030000              LEA ESI,[EDI + 0x33c]
0045a4ff  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0045a505  40                        INC EAX
0045a506  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045a50c  83f812                    CMP EAX,0x12
0045a50f  0f8514020000              JNZ 0x0045a729
0045a515  51                        PUSH ECX
0045a516  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a51d  6a00                      PUSH 0x0
0045a51f  6a02                      PUSH 0x2
0045a521  51                        PUSH ECX
0045a522  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
0045a529  8bcf                      MOV ECX,EDI
0045a52b  6809010000                PUSH 0x109
0045a530  e86bc62700                CALL 0x006d6ba0
0045a535  51                        PUSH ECX
0045a536  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a53d  6a00                      PUSH 0x0
0045a53f  6a02                      PUSH 0x2
0045a541  51                        PUSH ECX
0045a542  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a549  8bcf                      MOV ECX,EDI
0045a54b  6a68                      PUSH 0x68
0045a54d  e84ec62700                CALL 0x006d6ba0
0045a552  a17816c700                MOV EAX,[0x00c71678]
0045a557  c745a404000000            MOV dword ptr [EBP + -0x5c],0x4
0045a55e  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045a564  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
0045a569  f30f105818                MOVSS XMM3,dword ptr [EAX + 0x18]
0045a56e  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
0045a573  f30f105020                MOVSS XMM2,dword ptr [EAX + 0x20]
0045a578  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
0045a57d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0045a585  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0045a58a  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0045a58f  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0045a593  8d75cc                    LEA ESI,[EBP + -0x34]
0045a596  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
0045a59b  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
0045a5a0  f30f115de0                MOVSS dword ptr [EBP + -0x20],XMM3
0045a5a5  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
0045a5aa  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
0045a5af  897590                    MOV dword ptr [EBP + -0x70],ESI
0045a5b2  8bcf                      MOV ECX,EDI
0045a5b4  e887422600                CALL 0x006be840
0045a5b9  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0045a5c1  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0045a5c9  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0045a5ce  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0045a5d2  f30f59c0                  MULSS XMM0,XMM0
0045a5d6  f30f59c9                  MULSS XMM1,XMM1
0045a5da  f30f58c1                  ADDSS XMM0,XMM1
0045a5de  e86db4fdff                CALL 0x00435a50
0045a5e3  0f2f05a0a9ba00            COMISS XMM0,dword ptr [0x00baa9a0]
0045a5ea  0f8624010000              JBE 0x0045a714
0045a5f0  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0045a5f8  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0045a5fe  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
0045a603  83f812                    CMP EAX,0x12
0045a606  750a                      JNZ 0x0045a612
0045a608  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0045a610  eb0d                      JMP 0x0045a61f
0045a612  83f813                    CMP EAX,0x13
0045a615  750d                      JNZ 0x0045a624
0045a617  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0045a61f  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
0045a624  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045a62a  8d4d9c                    LEA ECX,[EBP + -0x64]
0045a62d  c7459c68000000            MOV dword ptr [EBP + -0x64],0x68
0045a634  e847c14f00                CALL 0x00956780
0045a639  f30f104598                MOVSS XMM0,dword ptr [EBP + -0x68]
0045a63e  83ec08                    SUB ESP,0x8
0045a641  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045a649  f30f110424                MOVSS dword ptr [ESP],XMM0
0045a64e  6a00                      PUSH 0x0
0045a650  6a02                      PUSH 0x2
0045a652  51                        PUSH ECX
0045a653  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a65a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045a660  ff759c                    PUSH dword ptr [EBP + -0x64]
0045a663  e8c8354d00                CALL 0x0092dc30
0045a668  e8f3482900                CALL 0x006eef60
0045a66d  6a00                      PUSH 0x0
0045a66f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045a675  68acd6c500                PUSH 0xc5d6ac
0045a67a  68dcd5c500                PUSH 0xc5d5dc
0045a67f  6a00                      PUSH 0x0
0045a681  50                        PUSH EAX
0045a682  6a00                      PUSH 0x0
0045a684  57                        PUSH EDI
0045a685  6840b6c700                PUSH 0xc7b640
0045a68a  ff7590                    PUSH dword ptr [EBP + -0x70]
0045a68d  6a0a                      PUSH 0xa
0045a68f  ff7728                    PUSH dword ptr [EDI + 0x28]
0045a692  e889e4fcff                CALL 0x00428b20
0045a697  50                        PUSH EAX
0045a698  e814626900                CALL 0x00af08b1
0045a69d  8bf0                      MOV ESI,EAX
0045a69f  83c414                    ADD ESP,0x14
0045a6a2  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0045a6a8  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0045a6ae  c786c00b000001000000      MOV dword ptr [ESI + 0xbc0],0x1
0045a6b8  85c9                      TEST ECX,ECX
0045a6ba  7418                      JZ 0x0045a6d4
0045a6bc  894598                    MOV dword ptr [EBP + -0x68],EAX
0045a6bf  81c1cc030000              ADD ECX,0x3cc
0045a6c5  8d4598                    LEA EAX,[EBP + -0x68]
0045a6c8  50                        PUSH EAX
0045a6c9  e8424b0700                CALL 0x004cf210
0045a6ce  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0045a6d4  50                        PUSH EAX
0045a6d5  8bcf                      MOV ECX,EDI
0045a6d7  8938                      MOV dword ptr [EAX],EDI
0045a6d9  e812360700                CALL 0x004cdcf0
0045a6de  51                        PUSH ECX
0045a6df  ffb7780c0000              PUSH dword ptr [EDI + 0xc78]
0045a6e5  8bce                      MOV ECX,ESI
0045a6e7  e8145c2700                CALL 0x006d0300
0045a6ec  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0045a6f2  33c0                      XOR EAX,EAX
0045a6f4  81e100000010              AND ECX,0x10000000
0045a6fa  0bc1                      OR EAX,ECX
0045a6fc  7413                      JZ 0x0045a711
0045a6fe  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0045a704  83a66c010000df            AND dword ptr [ESI + 0x16c],0xffffffdf
0045a70b  898668010000              MOV dword ptr [ESI + 0x168],EAX
0045a711  8b7590                    MOV ESI,dword ptr [EBP + -0x70]
0045a714  83c608                    ADD ESI,0x8
0045a717  836da401                  SUB dword ptr [EBP + -0x5c],0x1
0045a71b  897590                    MOV dword ptr [EBP + -0x70],ESI
0045a71e  0f858efeffff              JNZ 0x0045a5b2
0045a724  e976040000                JMP 0x0045ab9f
0045a729  83f830                    CMP EAX,0x30
0045a72c  e945020000                JMP 0x0045a976
0045a731  83f808                    CMP EAX,0x8
0045a734  0f8551020000              JNZ 0x0045a98b
0045a73a  6854d5b100                PUSH 0xb1d554
0045a73f  e88cfdfaff                CALL 0x0040a4d0
0045a744  84c0                      TEST AL,AL
0045a746  0f859d000000              JNZ 0x0045a7e9
0045a74c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045a750  7447                      JZ 0x0045a799
0045a752  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0045a758  753f                      JNZ 0x0045a799
0045a75a  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0045a75d  83781410                  CMP dword ptr [EAX + 0x14],0x10
0045a761  7202                      JC 0x0045a765
0045a763  8b00                      MOV EAX,dword ptr [EAX]
0045a765  b954d5b100                MOV ECX,0xb1d554
0045a76a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0045a770  8a10                      MOV DL,byte ptr [EAX]
0045a772  3a11                      CMP DL,byte ptr [ECX]
0045a774  751a                      JNZ 0x0045a790
0045a776  84d2                      TEST DL,DL
0045a778  7412                      JZ 0x0045a78c
0045a77a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045a77d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045a780  750e                      JNZ 0x0045a790
0045a782  83c002                    ADD EAX,0x2
0045a785  83c102                    ADD ECX,0x2
0045a788  84d2                      TEST DL,DL
0045a78a  75e4                      JNZ 0x0045a770
0045a78c  33c0                      XOR EAX,EAX
0045a78e  eb05                      JMP 0x0045a795
0045a790  1bc0                      SBB EAX,EAX
0045a792  83c801                    OR EAX,0x1
0045a795  85c0                      TEST EAX,EAX
0045a797  7450                      JZ 0x0045a7e9
0045a799  6a00                      PUSH 0x0
0045a79b  6854d5b100                PUSH 0xb1d554
0045a7a0  8d4f48                    LEA ECX,[EDI + 0x48]
0045a7a3  e8d8fbfaff                CALL 0x0040a380
0045a7a8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045a7ae  8d4da4                    LEA ECX,[EBP + -0x5c]
0045a7b1  c745a49f030000            MOV dword ptr [EBP + -0x5c],0x39f
0045a7b8  e8c3bf4f00                CALL 0x00956780
0045a7bd  83ec08                    SUB ESP,0x8
0045a7c0  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045a7c6  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045a7ce  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a7d5  6a00                      PUSH 0x0
0045a7d7  6a02                      PUSH 0x2
0045a7d9  51                        PUSH ECX
0045a7da  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a7e1  ff75a4                    PUSH dword ptr [EBP + -0x5c]
0045a7e4  e847344d00                CALL 0x0092dc30
0045a7e9  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0045a7ef  40                        INC EAX
0045a7f0  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045a7f6  83f816                    CMP EAX,0x16
0045a7f9  0f8574010000              JNZ 0x0045a973
0045a7ff  6a00                      PUSH 0x0
0045a801  6800010000                PUSH 0x100
0045a806  8bcf                      MOV ECX,EDI
0045a808  e823ccfbff                CALL 0x00417430
0045a80d  84c0                      TEST AL,AL
0045a80f  7462                      JZ 0x0045a873
0045a811  a19c16c700                MOV EAX,[0x00c7169c]
0045a816  8b8804a40200              MOV ECX,dword ptr [EAX + 0x2a404]
0045a81c  8b8008a40200              MOV EAX,dword ptr [EAX + 0x2a408]
0045a822  2bc1                      SUB EAX,ECX
0045a824  83e0fc                    AND EAX,0xfffffffc
0045a827  3d08010000                CMP EAX,0x108
0045a82c  7f04                      JG 0x0045a832
0045a82e  33c0                      XOR EAX,EAX
0045a830  eb06                      JMP 0x0045a838
0045a832  8b8108010000              MOV EAX,dword ptr [ECX + 0x108]
0045a838  6a01                      PUSH 0x1
0045a83a  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
0045a83d  8d45b4                    LEA EAX,[EBP + -0x4c]
0045a840  6a00                      PUSH 0x0
0045a842  50                        PUSH EAX
0045a843  a17816c700                MOV EAX,[0x00c71678]
0045a848  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0045a84f  c745c000000000            MOV dword ptr [EBP + -0x40],0x0
0045a856  c745bca0000000            MOV dword ptr [EBP + -0x44],0xa0
0045a85d  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0045a863  81c110730000              ADD ECX,0x7310
0045a869  e8b2594d00                CALL 0x00930220
0045a86e  e92c030000                JMP 0x0045ab9f
0045a873  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045a879  33d2                      XOR EDX,EDX
0045a87b  8955a4                    MOV dword ptr [EBP + -0x5c],EDX
0045a87e  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
0045a884  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
0045a88a  c1f802                    SAR EAX,0x2
0045a88d  85c0                      TEST EAX,EAX
0045a88f  0f84a0000000              JZ 0x0045a935
0045a895  52                        PUSH EDX
0045a896  e8d5cffbff                CALL 0x00417870
0045a89b  57                        PUSH EDI
0045a89c  8d4dc4                    LEA ECX,[EBP + -0x3c]
0045a89f  8bf0                      MOV ESI,EAX
0045a8a1  e86a6afdff                CALL 0x00431310
0045a8a6  6a00                      PUSH 0x0
0045a8a8  83ec2c                    SUB ESP,0x2c
0045a8ab  8d45c4                    LEA EAX,[EBP + -0x3c]
0045a8ae  8bcc                      MOV ECX,ESP
0045a8b0  51                        PUSH ECX
0045a8b1  c7411000000000            MOV dword ptr [ECX + 0x10],0x0
0045a8b8  c7411400000000            MOV dword ptr [ECX + 0x14],0x0
0045a8bf  c7411800000000            MOV dword ptr [ECX + 0x18],0x0
0045a8c6  c7411c00000000            MOV dword ptr [ECX + 0x1c],0x0
0045a8cd  c704246666663f            MOV dword ptr [ESP],0x3f666666
0045a8d4  68a0000000                PUSH 0xa0
0045a8d9  c7010000803f              MOV dword ptr [ECX],0x3f800000
0045a8df  c741040000803f            MOV dword ptr [ECX + 0x4],0x3f800000
0045a8e6  c741086666a63f            MOV dword ptr [ECX + 0x8],0x3fa66666
0045a8ed  c7410c0000803f            MOV dword ptr [ECX + 0xc],0x3f800000
0045a8f4  c74120a1a0203e            MOV dword ptr [ECX + 0x20],0x3e20a0a1
0045a8fb  c74124a1a0203e            MOV dword ptr [ECX + 0x24],0x3e20a0a1
0045a902  c74128a1a0203e            MOV dword ptr [ECX + 0x28],0x3e20a0a1
0045a909  8bce                      MOV ECX,ESI
0045a90b  50                        PUSH EAX
0045a90c  e83f2e2500                CALL 0x006ad750
0045a911  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045a917  8b55a4                    MOV EDX,dword ptr [EBP + -0x5c]
0045a91a  42                        INC EDX
0045a91b  8955a4                    MOV dword ptr [EBP + -0x5c],EDX
0045a91e  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
0045a924  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
0045a92a  c1f802                    SAR EAX,0x2
0045a92d  3bd0                      CMP EDX,EAX
0045a92f  0f8260ffffff              JC 0x0045a895
0045a935  6a00                      PUSH 0x0
0045a937  6a03                      PUSH 0x3
0045a939  6a0e                      PUSH 0xe
0045a93b  81c134c00100              ADD ECX,0x1c034
0045a941  e8ca285500                CALL 0x009ad210
0045a946  a17816c700                MOV EAX,[0x00c71678]
0045a94b  baa0000000                MOV EDX,0xa0
0045a950  c745a49d030000            MOV dword ptr [EBP + -0x5c],0x39d
0045a957  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0045a95d  8b812c720000              MOV EAX,dword ptr [ECX + 0x722c]
0045a963  3bc2                      CMP EAX,EDX
0045a965  0f4cc2                    CMOVL EAX,EDX
0045a968  89812c720000              MOV dword ptr [ECX + 0x722c],EAX
0045a96e  e9f2010000                JMP 0x0045ab65
0045a973  83f834                    CMP EAX,0x34
0045a976  0f8e23020000              JLE 0x0045ab9f
0045a97c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045a986  e914020000                JMP 0x0045ab9f
0045a98b  83f806                    CMP EAX,0x6
0045a98e  0f850b020000              JNZ 0x0045ab9f
0045a994  6a00                      PUSH 0x0
0045a996  68f0d3b100                PUSH 0xb1d3f0
0045a99b  e8e0f9faff                CALL 0x0040a380
0045a9a0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045a9a4  740d                      JZ 0x0045a9b3
0045a9a6  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045a9ad  0f85ec010000              JNZ 0x0045ab9f
0045a9b3  51                        PUSH ECX
0045a9b4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a9bb  6a00                      PUSH 0x0
0045a9bd  6a02                      PUSH 0x2
0045a9bf  51                        PUSH ECX
0045a9c0  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a9c7  8bcf                      MOV ECX,EDI
0045a9c9  6a77                      PUSH 0x77
0045a9cb  e8d0c12700                CALL 0x006d6ba0
0045a9d0  51                        PUSH ECX
0045a9d1  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045a9d8  6a00                      PUSH 0x0
0045a9da  6a02                      PUSH 0x2
0045a9dc  51                        PUSH ECX
0045a9dd  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
0045a9e4  8bcf                      MOV ECX,EDI
0045a9e6  6809010000                PUSH 0x109
0045a9eb  e8b0c12700                CALL 0x006d6ba0
0045a9f0  6aff                      PUSH -0x1
0045a9f2  ff7730                    PUSH dword ptr [EDI + 0x30]
0045a9f5  8bcf                      MOV ECX,EDI
0045a9f7  6a1e                      PUSH 0x1e
0045a9f9  ff7728                    PUSH dword ptr [EDI + 0x28]
0045a9fc  e82f652600                CALL 0x006c0f30
0045aa01  6a00                      PUSH 0x0
0045aa03  6898d5b100                PUSH 0xb1d598
0045aa08  8d4f48                    LEA ECX,[EDI + 0x48]
0045aa0b  c787640b000000000000      MOV dword ptr [EDI + 0xb64],0x0
0045aa15  e866f9faff                CALL 0x0040a380
0045aa1a  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0045aa21  f30f100554a8ba00          MOVSS XMM0,dword ptr [0x00baa854]
0045aa29  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0045aa2e  740d                      JZ 0x0045aa3d
0045aa30  f30f1005d8adba00          MOVSS XMM0,dword ptr [0x00baadd8]
0045aa38  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0045aa3d  e81e452900                CALL 0x006eef60
0045aa42  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
0045aa47  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0045aa4b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045aa51  6a00                      PUSH 0x0
0045aa53  68acd6c500                PUSH 0xc5d6ac
0045aa58  68dcd5c500                PUSH 0xc5d5dc
0045aa5d  6a00                      PUSH 0x0
0045aa5f  50                        PUSH EAX
0045aa60  6a00                      PUSH 0x0
0045aa62  57                        PUSH EDI
0045aa63  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0045aa68  8d45bc                    LEA EAX,[EBP + -0x44]
0045aa6b  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0045aa70  f30f5c05e8a7ba00          SUBSS XMM0,dword ptr [0x00baa7e8]
0045aa78  6840b6c700                PUSH 0xc7b640
0045aa7d  50                        PUSH EAX
0045aa7e  6a14                      PUSH 0x14
0045aa80  ff7728                    PUSH dword ptr [EDI + 0x28]
0045aa83  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0045aa88  e893e0fcff                CALL 0x00428b20
0045aa8d  50                        PUSH EAX
0045aa8e  e81e5e6900                CALL 0x00af08b1
0045aa93  f30f108f380c0000          MOVSS XMM1,dword ptr [EDI + 0xc38]
0045aa9b  8bf0                      MOV ESI,EAX
0045aa9d  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0045aaa3  83c414                    ADD ESP,0x14
0045aaa6  f30f118e380c0000          MOVSS dword ptr [ESI + 0xc38],XMM1
0045aaae  f30f598eb4030000          MULSS XMM1,dword ptr [ESI + 0x3b4]
0045aab6  0f28c1                    MOVAPS XMM0,XMM1
0045aab9  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0045aac1  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0045aac9  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0045aad1  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0045aad9  8b08                      MOV ECX,dword ptr [EAX]
0045aadb  85c9                      TEST ECX,ECX
0045aadd  7418                      JZ 0x0045aaf7
0045aadf  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
0045aae2  81c1cc030000              ADD ECX,0x3cc
0045aae8  8d45a4                    LEA EAX,[EBP + -0x5c]
0045aaeb  50                        PUSH EAX
0045aaec  e81f470700                CALL 0x004cf210
0045aaf1  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0045aaf7  50                        PUSH EAX
0045aaf8  8bcf                      MOV ECX,EDI
0045aafa  8938                      MOV dword ptr [EAX],EDI
0045aafc  e8ef310700                CALL 0x004cdcf0
0045ab01  51                        PUSH ECX
0045ab02  ffb7780c0000              PUSH dword ptr [EDI + 0xc78]
0045ab08  8bce                      MOV ECX,ESI
0045ab0a  e8f1572700                CALL 0x006d0300
0045ab0f  8a8748010000              MOV AL,byte ptr [EDI + 0x148]
0045ab15  8bcf                      MOV ECX,EDI
0045ab17  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0045ab1e  6800000010                PUSH 0x10000000
0045ab23  888648010000              MOV byte ptr [ESI + 0x148],AL
0045ab29  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0045ab2f  6a00                      PUSH 0x0
0045ab31  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0045ab37  e8f4c8fbff                CALL 0x00417430
0045ab3c  84c0                      TEST AL,AL
0045ab3e  7414                      JZ 0x0045ab54
0045ab40  c786800300000000f041      MOV dword ptr [ESI + 0x380],0x41f00000
0045ab4a  c786840300000000f041      MOV dword ptr [ESI + 0x384],0x41f00000
0045ab54  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
0045ab5e  c745a4a2030000            MOV dword ptr [EBP + -0x5c],0x3a2
0045ab65  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045ab6b  8d4da4                    LEA ECX,[EBP + -0x5c]
0045ab6e  e80dbc4f00                CALL 0x00956780
0045ab73  83ec08                    SUB ESP,0x8
0045ab76  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045ab7e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ab85  6a00                      PUSH 0x0
0045ab87  6a02                      PUSH 0x2
0045ab89  51                        PUSH ECX
0045ab8a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ab91  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045ab97  ff75a4                    PUSH dword ptr [EBP + -0x5c]
0045ab9a  e891304d00                CALL 0x0092dc30
0045ab9f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045aba3  0f841c0c0000              JZ 0x0045b7c5
0045aba9  6844ddb100                PUSH 0xb1dd44
0045abae  8d4f78                    LEA ECX,[EDI + 0x78]
0045abb1  e81a02fbff                CALL 0x0040add0
0045abb6  e9c50b0000                JMP 0x0045b780
0045abbb  83f80a                    CMP EAX,0xa
0045abbe  0f8539030000              JNZ 0x0045aefd
0045abc4  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0045abcb  751a                      JNZ 0x0045abe7
0045abcd  8d4dc4                    LEA ECX,[EBP + -0x3c]
0045abd0  e89bb0fdff                CALL 0x00435c70
0045abd5  8b17                      MOV EDX,dword ptr [EDI]
0045abd7  8bcf                      MOV ECX,EDI
0045abd9  50                        PUSH EAX
0045abda  ff5224                    CALL dword ptr [EDX + 0x24]
0045abdd  f30f1055a4                MOVSS XMM2,dword ptr [EBP + -0x5c]
0045abe2  f30f105d9c                MOVSS XMM3,dword ptr [EBP + -0x64]
0045abe7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0045abef  f30f59053ca4ba00          MULSS XMM0,dword ptr [0x00baa43c]
0045abf7  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0045abfd  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0045ac05  85c0                      TEST EAX,EAX
0045ac07  7569                      JNZ 0x0045ac72
0045ac09  0f57c9                    XORPS XMM1,XMM1
0045ac0c  f30f59d2                  MULSS XMM2,XMM2
0045ac10  0f2fcb                    COMISS XMM1,XMM3
0045ac13  f30f59db                  MULSS XMM3,XMM3
0045ac17  0f97c0                    SETA AL
0045ac1a  888748010000              MOV byte ptr [EDI + 0x148],AL
0045ac20  f30f58d3                  ADDSS XMM2,XMM3
0045ac24  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0045ac2e  0f28c2                    MOVAPS XMM0,XMM2
0045ac31  e81aaefdff                CALL 0x00435a50
0045ac36  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0045ac3e  b950000000                MOV ECX,0x50
0045ac43  c7878003000000007041      MOV dword ptr [EDI + 0x380],0x41700000
0045ac4d  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
0045ac57  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
0045ac61  f30f2cc0                  CVTTSS2SI EAX,XMM0
0045ac65  2bc8                      SUB ECX,EAX
0045ac67  898f10040000              MOV dword ptr [EDI + 0x410],ECX
0045ac6d  e9a00b0000                JMP 0x0045b812
0045ac72  83f803                    CMP EAX,0x3
0045ac75  0f85a6000000              JNZ 0x0045ad21
0045ac7b  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
0045ac82  7542                      JNZ 0x0045acc6
0045ac84  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0045ac8c  8d4f48                    LEA ECX,[EDI + 0x48]
0045ac8f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0045ac97  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0045ac9f  6a00                      PUSH 0x0
0045aca1  683cddb100                PUSH 0xb1dd3c
0045aca6  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0045acae  e82dfafaff                CALL 0x0040a6e0
0045acb3  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0045acb9  48                        DEC EAX
0045acba  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045acc0  85c0                      TEST EAX,EAX
0045acc2  7f5d                      JG 0x0045ad21
0045acc4  eb0a                      JMP 0x0045acd0
0045acc6  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045acd0  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045acd6  8d4da4                    LEA ECX,[EBP + -0x5c]
0045acd9  c745a49e030000            MOV dword ptr [EBP + -0x5c],0x39e
0045ace0  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045acea  e891ba4f00                CALL 0x00956780
0045acef  83ec08                    SUB ESP,0x8
0045acf2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045acfa  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ad01  6a00                      PUSH 0x0
0045ad03  6a02                      PUSH 0x2
0045ad05  51                        PUSH ECX
0045ad06  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ad0d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045ad13  ff75a4                    PUSH dword ptr [EBP + -0x5c]
0045ad16  e8152f4d00                CALL 0x0092dc30
0045ad1b  8db73c030000              LEA ESI,[EDI + 0x33c]
0045ad21  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0045ad28  0f85970a0000              JNZ 0x0045b7c5
0045ad2e  ff8710040000              INC dword ptr [EDI + 0x410]
0045ad34  8d4f48                    LEA ECX,[EDI + 0x48]
0045ad37  6a00                      PUSH 0x0
0045ad39  683cddb100                PUSH 0xb1dd3c
0045ad3e  e83df6faff                CALL 0x0040a380
0045ad43  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
0045ad4a  755e                      JNZ 0x0045adaa
0045ad4c  81bf10040000b4000000      CMP dword ptr [EDI + 0x410],0xb4
0045ad56  7e07                      JLE 0x0045ad5f
0045ad58  8b07                      MOV EAX,dword ptr [EDI]
0045ad5a  8bcf                      MOV ECX,EDI
0045ad5c  ff5028                    CALL dword ptr [EAX + 0x28]
0045ad5f  8d8fb00b0000              LEA ECX,[EDI + 0xbb0]
0045ad65  6840b6c700                PUSH 0xc7b640
0045ad6a  e891585b00                CALL 0x00a10600
0045ad6f  84c0                      TEST AL,AL
0045ad71  746c                      JZ 0x0045addf
0045ad73  8d45bc                    LEA EAX,[EBP + -0x44]
0045ad76  50                        PUSH EAX
0045ad77  8d4d8c                    LEA ECX,[EBP + -0x74]
0045ad7a  e8b1525b00                CALL 0x00a10030
0045ad7f  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0045ad83  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0045ad88  f30f591580a3ba00          MULSS XMM2,dword ptr [0x00baa380]
0045ad90  f30f590d80a3ba00          MULSS XMM1,dword ptr [0x00baa380]
0045ad98  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
0045ada0  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
0045ada8  eb35                      JMP 0x0045addf
0045adaa  8d45bc                    LEA EAX,[EBP + -0x44]
0045adad  50                        PUSH EAX
0045adae  8d4d8c                    LEA ECX,[EBP + -0x74]
0045adb1  e87a525b00                CALL 0x00a10030
0045adb6  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0045adba  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0045adbf  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0045adc7  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0045adcf  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0045add7  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0045addf  6a00                      PUSH 0x0
0045ade1  6800020000                PUSH 0x200
0045ade6  8bcf                      MOV ECX,EDI
0045ade8  e843c6fbff                CALL 0x00417430
0045aded  6a00                      PUSH 0x0
0045adef  84c0                      TEST AL,AL
0045adf1  7410                      JZ 0x0045ae03
0045adf3  8d8f14040000              LEA ECX,[EDI + 0x414]
0045adf9  e802b53800                CALL 0x007e6300
0045adfe  e98a000000                JMP 0x0045ae8d
0045ae03  6800080001                PUSH 0x1000800
0045ae08  8bcf                      MOV ECX,EDI
0045ae0a  e821c6fbff                CALL 0x00417430
0045ae0f  8d8fb00b0000              LEA ECX,[EDI + 0xbb0]
0045ae15  84c0                      TEST AL,AL
0045ae17  7420                      JZ 0x0045ae39
0045ae19  f30f1011                  MOVSS XMM2,dword ptr [ECX]
0045ae1d  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
0045ae22  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0045ae29  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0045ae30  f30f1111                  MOVSS dword ptr [ECX],XMM2
0045ae34  f30f114904                MOVSS dword ptr [ECX + 0x4],XMM1
0045ae39  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0045ae41  0f57e4                    XORPS XMM4,XMM4
0045ae44  0f2edc                    UCOMISS XMM3,XMM4
0045ae47  9f                        LAHF
0045ae48  f6c444                    TEST AH,0x44
0045ae4b  7b40                      JNP 0x0045ae8d
0045ae4d  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0045ae55  f30f105104                MOVSS XMM2,dword ptr [ECX + 0x4]
0045ae5a  0f28c1                    MOVAPS XMM0,XMM1
0045ae5d  f30f5901                  MULSS XMM0,dword ptr [ECX]
0045ae61  f30f59d1                  MULSS XMM2,XMM1
0045ae65  f30f5ec3                  DIVSS XMM0,XMM3
0045ae69  f30f5ed3                  DIVSS XMM2,XMM3
0045ae6d  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0045ae75  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0045ae7d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0045ae85  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0045ae8d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045ae93  8d45bc                    LEA EAX,[EBP + -0x44]
0045ae96  83ec0c                    SUB ESP,0xc
0045ae99  0f57db                    XORPS XMM3,XMM3
0045ae9c  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0045aea2  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0045aeaa  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045aeb2  c7042400000000            MOV dword ptr [ESP],0x0
0045aeb9  56                        PUSH ESI
0045aeba  50                        PUSH EAX
0045aebb  e890803b00                CALL 0x00812f50
0045aec0  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0045aec4  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0045aec9  f30f5c45c0                SUBSS XMM0,dword ptr [EBP + -0x40]
0045aece  f30f5c4dbc                SUBSS XMM1,dword ptr [EBP + -0x44]
0045aed3  f30f59c0                  MULSS XMM0,XMM0
0045aed7  f30f59c9                  MULSS XMM1,XMM1
0045aedb  f30f58c1                  ADDSS XMM0,XMM1
0045aedf  e86cabfdff                CALL 0x00435a50
0045aee4  0f2f05e0aaba00            COMISS XMM0,dword ptr [0x00baaae0]
0045aeeb  0f86d4080000              JBE 0x0045b7c5
0045aef1  8b07                      MOV EAX,dword ptr [EDI]
0045aef3  8bcf                      MOV ECX,EDI
0045aef5  ff5028                    CALL dword ptr [EAX + 0x28]
0045aef8  e9c8080000                JMP 0x0045b7c5
0045aefd  83f814                    CMP EAX,0x14
0045af00  0f85d0030000              JNZ 0x0045b2d6
0045af06  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0045af0c  33c0                      XOR EAX,EAX
0045af0e  81e100000010              AND ECX,0x10000000
0045af14  0bc1                      OR EAX,ECX
0045af16  753b                      JNZ 0x0045af53
0045af18  3987bc030000              CMP dword ptr [EDI + 0x3bc],EAX
0045af1e  7433                      JZ 0x0045af53
0045af20  8bcf                      MOV ECX,EDI
0045af22  e849c8feff                CALL 0x00447770
0045af27  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
0045af2f  0f28c2                    MOVAPS XMM0,XMM2
0045af32  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
0045af3a  0f2f8080030000            COMISS XMM0,dword ptr [EAX + 0x380]
0045af41  7610                      JBE 0x0045af53
0045af43  f30f5c1554a4ba00          SUBSS XMM2,dword ptr [0x00baa454]
0045af4b  f30f119780030000          MOVSS dword ptr [EDI + 0x380],XMM2
0045af53  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0045af5a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0045af62  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0045af6a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0045af72  740a                      JZ 0x0045af7e
0045af74  f30f1005e4adba00          MOVSS XMM0,dword ptr [0x00baade4]
0045af7c  eb08                      JMP 0x0045af86
0045af7e  f30f100568a8ba00          MOVSS XMM0,dword ptr [0x00baa868]
0045af86  a17816c700                MOV EAX,[0x00c71678]
0045af8b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0045af93  8b80c8690200              MOV EAX,dword ptr [EAX + 0x269c8]
0045af99  83f801                    CMP EAX,0x1
0045af9c  7405                      JZ 0x0045afa3
0045af9e  83f803                    CMP EAX,0x3
0045afa1  7510                      JNZ 0x0045afb3
0045afa3  f30f5905c0a4ba00          MULSS XMM0,dword ptr [0x00baa4c0]
0045afab  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0045afb3  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0045afba  6a00                      PUSH 0x0
0045afbc  753a                      JNZ 0x0045aff8
0045afbe  6828ddb100                PUSH 0xb1dd28
0045afc3  8d4f48                    LEA ECX,[EDI + 0x48]
0045afc6  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0045afd0  c7878401000002000000      MOV dword ptr [EDI + 0x184],0x2
0045afda  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045afe4  e897f3faff                CALL 0x0040a380
0045afe9  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0045aff3  e91a080000                JMP 0x0045b812
0045aff8  6800020000                PUSH 0x200
0045affd  8bcf                      MOV ECX,EDI
0045afff  e82cc4fbff                CALL 0x00417430
0045b004  84c0                      TEST AL,AL
0045b006  740d                      JZ 0x0045b015
0045b008  6a00                      PUSH 0x0
0045b00a  8d8f14040000              LEA ECX,[EDI + 0x414]
0045b010  e8ebb23800                CALL 0x007e6300
0045b015  6a00                      PUSH 0x0
0045b017  6800080001                PUSH 0x1000800
0045b01c  8bcf                      MOV ECX,EDI
0045b01e  e80dc4fbff                CALL 0x00417430
0045b023  f30f103594aaba00          MOVSS XMM6,dword ptr [0x00baaa94]
0045b02b  84c0                      TEST AL,AL
0045b02d  0f84df000000              JZ 0x0045b112
0045b033  8bcf                      MOV ECX,EDI
0045b035  e806382600                CALL 0x006be840
0045b03a  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0045b042  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0045b04a  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0045b04f  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
0045b053  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0045b05a  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0045b061  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0045b066  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
0045b06b  f30f59c0                  MULSS XMM0,XMM0
0045b06f  f30f59d2                  MULSS XMM2,XMM2
0045b073  f30f58c2                  ADDSS XMM0,XMM2
0045b077  e8d4a9fdff                CALL 0x00435a50
0045b07c  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
0045b084  8d458c                    LEA EAX,[EBP + -0x74]
0045b087  f30f5cc8                  SUBSS XMM1,XMM0
0045b08b  51                        PUSH ECX
0045b08c  8d4dbc                    LEA ECX,[EBP + -0x44]
0045b08f  f30f590da0a0ba00          MULSS XMM1,dword ptr [0x00baa0a0]
0045b097  f30f5f0de49fba00          MAXSS XMM1,dword ptr [0x00ba9fe4]
0045b09f  f30f5d0d54a5ba00          MINSS XMM1,dword ptr [0x00baa554]
0045b0a7  f30f110c24                MOVSS dword ptr [ESP],XMM1
0045b0ac  50                        PUSH EAX
0045b0ad  e84e505b00                CALL 0x00a10100
0045b0b2  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0045b0ba  0f57ff                    XORPS XMM7,XMM7
0045b0bd  f30f103594aaba00          MOVSS XMM6,dword ptr [0x00baaa94]
0045b0c5  8bc8                      MOV ECX,EAX
0045b0c7  0f2edf                    UCOMISS XMM3,XMM7
0045b0ca  9f                        LAHF
0045b0cb  f6c444                    TEST AH,0x44
0045b0ce  7b45                      JNP 0x0045b115
0045b0d0  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0045b0d8  f30f105104                MOVSS XMM2,dword ptr [ECX + 0x4]
0045b0dd  0f28c1                    MOVAPS XMM0,XMM1
0045b0e0  f30f5901                  MULSS XMM0,dword ptr [ECX]
0045b0e4  f30f59d1                  MULSS XMM2,XMM1
0045b0e8  f30f5ec3                  DIVSS XMM0,XMM3
0045b0ec  f30f5ed3                  DIVSS XMM2,XMM3
0045b0f0  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0045b0f8  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0045b100  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0045b108  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0045b110  eb03                      JMP 0x0045b115
0045b112  0f57ff                    XORPS XMM7,XMM7
0045b115  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0045b11c  a17816c700                MOV EAX,[0x00c71678]
0045b121  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045b127  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
0045b12c  f30f105814                MOVSS XMM3,dword ptr [EAX + 0x14]
0045b131  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
0045b136  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
0045b13b  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
0045b140  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
0045b145  0f857a060000              JNZ 0x0045b7c5
0045b14b  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0045b153  f30f58ce                  ADDSS XMM1,XMM6
0045b157  0f2fc7                    COMISS XMM0,XMM7
0045b15a  c645ab00                  MOV byte ptr [EBP + -0x55],0x0
0045b15e  7616                      JBE 0x0045b176
0045b160  f30f102e                  MOVSS XMM5,dword ptr [ESI]
0045b164  0f2fe9                    COMISS XMM5,XMM1
0045b167  7615                      JBE 0x0045b17e
0045b169  0f28d3                    MOVAPS XMM2,XMM3
0045b16c  f30f5cd6                  SUBSS XMM2,XMM6
0045b170  f30f1116                  MOVSS dword ptr [ESI],XMM2
0045b174  eb26                      JMP 0x0045b19c
0045b176  f30f10af3c030000          MOVSS XMM5,dword ptr [EDI + 0x33c]
0045b17e  0f2ff8                    COMISS XMM7,XMM0
0045b181  0f28e1                    MOVAPS XMM4,XMM1
0045b184  0f28d5                    MOVAPS XMM2,XMM5
0045b187  7617                      JBE 0x0045b1a0
0045b189  0f28c3                    MOVAPS XMM0,XMM3
0045b18c  f30f5cc6                  SUBSS XMM0,XMM6
0045b190  0f2fc5                    COMISS XMM0,XMM5
0045b193  760b                      JBE 0x0045b1a0
0045b195  f30f1126                  MOVSS dword ptr [ESI],XMM4
0045b199  0f28d4                    MOVAPS XMM2,XMM4
0045b19c  c645ab01                  MOV byte ptr [EBP + -0x55],0x1
0045b1a0  0f2fd1                    COMISS XMM2,XMM1
0045b1a3  f30f5cde                  SUBSS XMM3,XMM6
0045b1a7  760a                      JBE 0x0045b1b3
0045b1a9  f30f119f3c030000          MOVSS dword ptr [EDI + 0x33c],XMM3
0045b1b1  eb09                      JMP 0x0045b1bc
0045b1b3  0f2fda                    COMISS XMM3,XMM2
0045b1b6  7608                      JBE 0x0045b1c0
0045b1b8  f30f110e                  MOVSS dword ptr [ESI],XMM1
0045b1bc  c645ab01                  MOV byte ptr [EBP + -0x55],0x1
0045b1c0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045b1c6  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
0045b1cc  e8afe15500                CALL 0x009b9380
0045b1d1  85c0                      TEST EAX,EAX
0045b1d3  7474                      JZ 0x0045b249
0045b1d5  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0045b1d9  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
0045b1e1  f30f100544aaba00          MOVSS XMM0,dword ptr [0x00baaa44]
0045b1e9  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0045b1f0  0f2fc1                    COMISS XMM0,XMM1
0045b1f3  7654                      JBE 0x0045b249
0045b1f5  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
0045b1fc  744b                      JZ 0x0045b249
0045b1fe  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045b204  8d4da4                    LEA ECX,[EBP + -0x5c]
0045b207  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
0045b211  c745a4a3030000            MOV dword ptr [EBP + -0x5c],0x3a3
0045b218  e863b54f00                CALL 0x00956780
0045b21d  83ec08                    SUB ESP,0x8
0045b220  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045b228  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045b22f  6a00                      PUSH 0x0
0045b231  6a02                      PUSH 0x2
0045b233  51                        PUSH ECX
0045b234  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045b23b  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045b241  ff75a4                    PUSH dword ptr [EBP + -0x5c]
0045b244  e8e7294d00                CALL 0x0092dc30
0045b249  a17816c700                MOV EAX,[0x00c71678]
0045b24e  f30f105598                MOVSS XMM2,dword ptr [EBP + -0x68]
0045b253  f30f100df8a1ba00          MOVSS XMM1,dword ptr [0x00baa1f8]
0045b25b  0f28c2                    MOVAPS XMM0,XMM2
0045b25e  f30f5c459c                SUBSS XMM0,dword ptr [EBP + -0x64]
0045b263  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045b269  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
0045b270  f30f59c1                  MULSS XMM0,XMM1
0045b274  750f                      JNZ 0x0045b285
0045b276  0f28c2                    MOVAPS XMM0,XMM2
0045b279  f30f5c0514abba00          SUBSS XMM0,dword ptr [0x00baab14]
0045b281  f30f59c1                  MULSS XMM0,XMM1
0045b285  807dab00                  CMP byte ptr [EBP + -0x55],0x0
0045b289  0f8436050000              JZ 0x0045b7c5
0045b28f  f30f5c1504a9ba00          SUBSS XMM2,dword ptr [0x00baa904]
0045b297  0f28c8                    MOVAPS XMM1,XMM0
0045b29a  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0045b2a4  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0045b2ac  0f2fca                    COMISS XMM1,XMM2
0045b2af  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
0045b2b7  0f8608050000              JBE 0x0045b7c5
0045b2bd  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0045b2c5  f30f5cc8                  SUBSS XMM1,XMM0
0045b2c9  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
0045b2d1  e9ef040000                JMP 0x0045b7c5
0045b2d6  83f81e                    CMP EAX,0x1e
0045b2d9  0f85ee040000              JNZ 0x0045b7cd
0045b2df  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0045b2e7  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0045b2ef  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0045b2f5  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0045b2fd  85c0                      TEST EAX,EAX
0045b2ff  7515                      JNZ 0x0045b316
0045b301  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
0045b30b  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045b311  e9fc040000                JMP 0x0045b812
0045b316  83f807                    CMP EAX,0x7
0045b319  753f                      JNZ 0x0045b35a
0045b31b  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0045b322  751b                      JNZ 0x0045b33f
0045b324  6a00                      PUSH 0x0
0045b326  8d4f48                    LEA ECX,[EDI + 0x48]
0045b329  6898d5b100                PUSH 0xb1d598
0045b32e  e84df0faff                CALL 0x0040a380
0045b333  ff8710040000              INC dword ptr [EDI + 0x410]
0045b339  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0045b33f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045b343  7409                      JZ 0x0045b34e
0045b345  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045b34c  750c                      JNZ 0x0045b35a
0045b34e  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045b358  eb09                      JMP 0x0045b363
0045b35a  83f804                    CMP EAX,0x4
0045b35d  0f854f010000              JNZ 0x0045b4b2
0045b363  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0045b36a  c745e404000000            MOV dword ptr [EBP + -0x1c],0x4
0045b371  c745d457616c6b            MOV dword ptr [EBP + -0x2c],0x6b6c6157
0045b378  c645d800                  MOV byte ptr [EBP + -0x28],0x0
0045b37c  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0045b383  c745c00f000000            MOV dword ptr [EBP + -0x40],0xf
0045b38a  c745bc04000000            MOV dword ptr [EBP + -0x44],0x4
0045b391  c745ac57616c6b            MOV dword ptr [EBP + -0x54],0x6b6c6157
0045b398  c645b000                  MOV byte ptr [EBP + -0x50],0x0
0045b39c  51                        PUSH ECX
0045b39d  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
0045b3a1  8d45d4                    LEA EAX,[EBP + -0x2c]
0045b3a4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045b3ab  8bcf                      MOV ECX,EDI
0045b3ad  50                        PUSH EAX
0045b3ae  8d45ac                    LEA EAX,[EBP + -0x54]
0045b3b1  50                        PUSH EAX
0045b3b2  e8795f2600                CALL 0x006c1330
0045b3b7  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
0045b3bb  8b55c0                    MOV EDX,dword ptr [EBP + -0x40]
0045b3be  83fa10                    CMP EDX,0x10
0045b3c1  7228                      JC 0x0045b3eb
0045b3c3  8b4dac                    MOV ECX,dword ptr [EBP + -0x54]
0045b3c6  42                        INC EDX
0045b3c7  8bc1                      MOV EAX,ECX
0045b3c9  81fa00100000              CMP EDX,0x1000
0045b3cf  7210                      JC 0x0045b3e1
0045b3d1  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0045b3d4  83c223                    ADD EDX,0x23
0045b3d7  2bc1                      SUB EAX,ECX
0045b3d9  83c0fc                    ADD EAX,-0x4
0045b3dc  83f81f                    CMP EAX,0x1f
0045b3df  7749                      JA 0x0045b42a
0045b3e1  52                        PUSH EDX
0045b3e2  51                        PUSH ECX
0045b3e3  e8743d6900                CALL 0x00aef15c
0045b3e8  83c408                    ADD ESP,0x8
0045b3eb  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0045b3f2  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0045b3f5  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
0045b3fc  c745c00f000000            MOV dword ptr [EBP + -0x40],0xf
0045b403  c645ac00                  MOV byte ptr [EBP + -0x54],0x0
0045b407  83fa10                    CMP EDX,0x10
0045b40a  722e                      JC 0x0045b43a
0045b40c  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0045b40f  42                        INC EDX
0045b410  8bc1                      MOV EAX,ECX
0045b412  81fa00100000              CMP EDX,0x1000
0045b418  7216                      JC 0x0045b430
0045b41a  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0045b41d  83c223                    ADD EDX,0x23
0045b420  2bc1                      SUB EAX,ECX
0045b422  83c0fc                    ADD EAX,-0x4
0045b425  83f81f                    CMP EAX,0x1f
0045b428  7606                      JBE 0x0045b430
0045b42a  ff159488b100              CALL dword ptr [0x00b18894]
0045b430  52                        PUSH EDX
0045b431  51                        PUSH ECX
0045b432  e8253d6900                CALL 0x00aef15c
0045b437  83c408                    ADD ESP,0x8
0045b43a  6a00                      PUSH 0x0
0045b43c  8d8f14040000              LEA ECX,[EDI + 0x414]
0045b442  e809b23800                CALL 0x007e6650
0045b447  e8143b2900                CALL 0x006eef60
0045b44c  33d2                      XOR EDX,EDX
0045b44e  b95a000000                MOV ECX,0x5a
0045b453  f7f1                      DIV ECX
0045b455  85d2                      TEST EDX,EDX
0045b457  0f8516030000              JNZ 0x0045b773
0045b45d  a17816c700                MOV EAX,[0x00c71678]
0045b462  33c9                      XOR ECX,ECX
0045b464  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
0045b46a  8b82c8120000              MOV EAX,dword ptr [EDX + 0x12c8]
0045b470  0382cc120000              ADD EAX,dword ptr [EDX + 0x12cc]
0045b476  8bb2c4120000              MOV ESI,dword ptr [EDX + 0x12c4]
0045b47c  03b2c0120000              ADD ESI,dword ptr [EDX + 0x12c0]
0045b482  85c0                      TEST EAX,EAX
0045b484  0f4fc8                    CMOVG ECX,EAX
0045b487  33c0                      XOR EAX,EAX
0045b489  85f6                      TEST ESI,ESI
0045b48b  0f4fc6                    CMOVG EAX,ESI
0045b48e  2bc1                      SUB EAX,ECX
0045b490  83f802                    CMP EAX,0x2
0045b493  0f8dda020000              JGE 0x0045b773
0045b499  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0045b4a3  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045b4ad  e9c1020000                JMP 0x0045b773
0045b4b2  83f80d                    CMP EAX,0xd
0045b4b5  0f85b8020000              JNZ 0x0045b773
0045b4bb  8d4f48                    LEA ECX,[EDI + 0x48]
0045b4be  6854ddb100                PUSH 0xb1dd54
0045b4c3  e808f0faff                CALL 0x0040a4d0
0045b4c8  84c0                      TEST AL,AL
0045b4ca  0f859f000000              JNZ 0x0045b56f
0045b4d0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045b4d4  7443                      JZ 0x0045b519
0045b4d6  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0045b4dc  753b                      JNZ 0x0045b519
0045b4de  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0045b4e1  83781410                  CMP dword ptr [EAX + 0x14],0x10
0045b4e5  7202                      JC 0x0045b4e9
0045b4e7  8b00                      MOV EAX,dword ptr [EAX]
0045b4e9  b954ddb100                MOV ECX,0xb1dd54
0045b4ee  6690                      NOP
0045b4f0  8a10                      MOV DL,byte ptr [EAX]
0045b4f2  3a11                      CMP DL,byte ptr [ECX]
0045b4f4  751a                      JNZ 0x0045b510
0045b4f6  84d2                      TEST DL,DL
0045b4f8  7412                      JZ 0x0045b50c
0045b4fa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045b4fd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045b500  750e                      JNZ 0x0045b510
0045b502  83c002                    ADD EAX,0x2
0045b505  83c102                    ADD ECX,0x2
0045b508  84d2                      TEST DL,DL
0045b50a  75e4                      JNZ 0x0045b4f0
0045b50c  33c0                      XOR EAX,EAX
0045b50e  eb05                      JMP 0x0045b515
0045b510  1bc0                      SBB EAX,EAX
0045b512  83c801                    OR EAX,0x1
0045b515  85c0                      TEST EAX,EAX
0045b517  7456                      JZ 0x0045b56f
0045b519  6a00                      PUSH 0x0
0045b51b  6854ddb100                PUSH 0xb1dd54
0045b520  8d4f48                    LEA ECX,[EDI + 0x48]
0045b523  e858eefaff                CALL 0x0040a380
0045b528  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045b52e  8d4da4                    LEA ECX,[EBP + -0x5c]
0045b531  c745a4a1030000            MOV dword ptr [EBP + -0x5c],0x3a1
0045b538  e843b24f00                CALL 0x00956780
0045b53d  83ec08                    SUB ESP,0x8
0045b540  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045b548  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045b54f  6a00                      PUSH 0x0
0045b551  6a02                      PUSH 0x2
0045b553  51                        PUSH ECX
0045b554  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045b55b  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045b561  ff75a4                    PUSH dword ptr [EBP + -0x5c]
0045b564  e8c7264d00                CALL 0x0092dc30
0045b569  8db73c030000              LEA ESI,[EDI + 0x33c]
0045b56f  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0045b575  40                        INC EAX
0045b576  898710040000              MOV dword ptr [EDI + 0x410],EAX
0045b57c  83f810                    CMP EAX,0x10
0045b57f  0f85df010000              JNZ 0x0045b764
0045b585  51                        PUSH ECX
0045b586  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045b58d  6a00                      PUSH 0x0
0045b58f  6a02                      PUSH 0x2
0045b591  51                        PUSH ECX
0045b592  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
0045b599  8bcf                      MOV ECX,EDI
0045b59b  6809010000                PUSH 0x109
0045b5a0  e8fbb52700                CALL 0x006d6ba0
0045b5a5  51                        PUSH ECX
0045b5a6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045b5ad  6a00                      PUSH 0x0
0045b5af  6a02                      PUSH 0x2
0045b5b1  51                        PUSH ECX
0045b5b2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045b5b9  8bcf                      MOV ECX,EDI
0045b5bb  6a72                      PUSH 0x72
0045b5bd  e8deb52700                CALL 0x006d6ba0
0045b5c2  8d45bc                    LEA EAX,[EBP + -0x44]
0045b5c5  50                        PUSH EAX
0045b5c6  e8a53a2200                CALL 0x0067f070
0045b5cb  83c404                    ADD ESP,0x4
0045b5ce  c7459002000000            MOV dword ptr [EBP + -0x70],0x2
0045b5d5  8bcf                      MOV ECX,EDI
0045b5d7  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0045b5db  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0045b5e3  6800000010                PUSH 0x10000000
0045b5e8  6a00                      PUSH 0x0
0045b5ea  f30f114d9c                MOVSS dword ptr [EBP + -0x64],XMM1
0045b5ef  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0045b5f4  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0045b5fc  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
0045b601  e82abefbff                CALL 0x00417430
0045b606  84c0                      TEST AL,AL
0045b608  7430                      JZ 0x0045b63a
0045b60a  6a00                      PUSH 0x0
0045b60c  51                        PUSH ECX
0045b60d  6a01                      PUSH 0x1
0045b60f  6a1a                      PUSH 0x1a
0045b611  8bcf                      MOV ECX,EDI
0045b613  e8c8112500                CALL 0x006ac7e0
0045b618  6a00                      PUSH 0x0
0045b61a  b902000000                MOV ECX,0x2
0045b61f  2bc8                      SUB ECX,EAX
0045b621  51                        PUSH ECX
0045b622  6a00                      PUSH 0x0
0045b624  894d90                    MOV dword ptr [EBP + -0x70],ECX
0045b627  8bcf                      MOV ECX,EDI
0045b629  6a29                      PUSH 0x29
0045b62b  e8b0112500                CALL 0x006ac7e0
0045b630  8b4d90                    MOV ECX,dword ptr [EBP + -0x70]
0045b633  2bc8                      SUB ECX,EAX
0045b635  894d90                    MOV dword ptr [EBP + -0x70],ECX
0045b638  eb05                      JMP 0x0045b63f
0045b63a  b902000000                MOV ECX,0x2
0045b63f  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0045b643  0f8591000000              JNZ 0x0045b6da
0045b649  85c9                      TEST ECX,ECX
0045b64b  7e41                      JLE 0x0045b68e
0045b64d  e80e392900                CALL 0x006eef60
0045b652  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
0045b657  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0045b65b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045b661  50                        PUSH EAX
0045b662  6a00                      PUSH 0x0
0045b664  57                        PUSH EDI
0045b665  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0045b66a  8d45bc                    LEA EAX,[EBP + -0x44]
0045b66d  f30f104598                MOVSS XMM0,dword ptr [EBP + -0x68]
0045b672  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
0045b677  6840b6c700                PUSH 0xc7b640
0045b67c  50                        PUSH EAX
0045b67d  6a01                      PUSH 0x1
0045b67f  6a1a                      PUSH 0x1a
0045b681  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0045b686  e895d4fcff                CALL 0x00428b20
0045b68b  8b4d90                    MOV ECX,dword ptr [EBP + -0x70]
0045b68e  83f901                    CMP ECX,0x1
0045b691  0f8edc000000              JLE 0x0045b773
0045b697  e8c4382900                CALL 0x006eef60
0045b69c  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0045b6a0  f30f5c459c                SUBSS XMM0,dword ptr [EBP + -0x64]
0045b6a5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045b6ab  50                        PUSH EAX
0045b6ac  6a00                      PUSH 0x0
0045b6ae  57                        PUSH EDI
0045b6af  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0045b6b4  8d45bc                    LEA EAX,[EBP + -0x44]
0045b6b7  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0045b6bc  f30f5c4598                SUBSS XMM0,dword ptr [EBP + -0x68]
0045b6c1  6840b6c700                PUSH 0xc7b640
0045b6c6  50                        PUSH EAX
0045b6c7  6a01                      PUSH 0x1
0045b6c9  6a1a                      PUSH 0x1a
0045b6cb  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0045b6d0  e84bd4fcff                CALL 0x00428b20
0045b6d5  e999000000                JMP 0x0045b773
0045b6da  85c9                      TEST ECX,ECX
0045b6dc  7e41                      JLE 0x0045b71f
0045b6de  e87d382900                CALL 0x006eef60
0045b6e3  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
0045b6e8  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0045b6ec  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045b6f2  50                        PUSH EAX
0045b6f3  6a00                      PUSH 0x0
0045b6f5  57                        PUSH EDI
0045b6f6  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0045b6fb  8d45bc                    LEA EAX,[EBP + -0x44]
0045b6fe  f30f104598                MOVSS XMM0,dword ptr [EBP + -0x68]
0045b703  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
0045b708  6840b6c700                PUSH 0xc7b640
0045b70d  50                        PUSH EAX
0045b70e  6a00                      PUSH 0x0
0045b710  6a29                      PUSH 0x29
0045b712  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0045b717  e804d4fcff                CALL 0x00428b20
0045b71c  8b4d90                    MOV ECX,dword ptr [EBP + -0x70]
0045b71f  83f901                    CMP ECX,0x1
0045b722  7e4f                      JLE 0x0045b773
0045b724  e837382900                CALL 0x006eef60
0045b729  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0045b72d  f30f5c459c                SUBSS XMM0,dword ptr [EBP + -0x64]
0045b732  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045b738  50                        PUSH EAX
0045b739  6a00                      PUSH 0x0
0045b73b  57                        PUSH EDI
0045b73c  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0045b741  8d45bc                    LEA EAX,[EBP + -0x44]
0045b744  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0045b749  f30f5c4598                SUBSS XMM0,dword ptr [EBP + -0x68]
0045b74e  6840b6c700                PUSH 0xc7b640
0045b753  50                        PUSH EAX
0045b754  6a00                      PUSH 0x0
0045b756  6a29                      PUSH 0x29
0045b758  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0045b75d  e8bed3fcff                CALL 0x00428b20
0045b762  eb0f                      JMP 0x0045b773
0045b764  83f829                    CMP EAX,0x29
0045b767  7e0a                      JLE 0x0045b773
0045b769  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045b773  6844ddb100                PUSH 0xb1dd44
0045b778  8d4f48                    LEA ECX,[EDI + 0x48]
0045b77b  e8b0f8faff                CALL 0x0040b030
0045b780  84c0                      TEST AL,AL
0045b782  7441                      JZ 0x0045b7c5
0045b784  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0045b78a  8d4da4                    LEA ECX,[EBP + -0x5c]
0045b78d  c745a4a0030000            MOV dword ptr [EBP + -0x5c],0x3a0
0045b794  e8e7af4f00                CALL 0x00956780
0045b799  83ec08                    SUB ESP,0x8
0045b79c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0045b7a4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045b7ab  6a00                      PUSH 0x0
0045b7ad  6a02                      PUSH 0x2
0045b7af  51                        PUSH ECX
0045b7b0  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045b7b7  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0045b7bd  ff75a4                    PUSH dword ptr [EBP + -0x5c]
0045b7c0  e86b244d00                CALL 0x0092dc30
0045b7c5  f30f100d14abba00          MOVSS XMM1,dword ptr [0x00baab14]
0045b7cd  a17816c700                MOV EAX,[0x00c71678]
0045b7d2  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045b7d8  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
0045b7df  7531                      JNZ 0x0045b812
0045b7e1  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0045b7e9  0f2fc8                    COMISS XMM1,XMM0
0045b7ec  7624                      JBE 0x0045b812
0045b7ee  f30f5cc8                  SUBSS XMM1,XMM0
0045b7f2  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0045b7fa  f30f5cc8                  SUBSS XMM1,XMM0
0045b7fe  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0045b806  f30f58c8                  ADDSS XMM1,XMM0
0045b80a  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0045b812  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0045b815  64890d00000000            MOV dword ptr FS:[0x0],ECX
0045b81c  59                        POP ECX
0045b81d  5f                        POP EDI
0045b81e  5e                        POP ESI
0045b81f  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0045b822  33cd                      XOR ECX,EBP
0045b824  e802396900                CALL 0x00aef12b
0045b829  8be5                      MOV ESP,EBP
0045b82b  5d                        POP EBP
0045b82c  8be3                      MOV ESP,EBX
0045b82e  5b                        POP EBX
0045b82f  c3                        RET
