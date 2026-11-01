; J460 NPC AI 0x0051c040 AI_0051c040
; types=57,223
; identities=223.0.0,57.0.0,57.1.0,57.2.0
; entry=0051c040
0051c040  53                        PUSH EBX
0051c041  8bdc                      MOV EBX,ESP
0051c043  83ec08                    SUB ESP,0x8
0051c046  83e4f8                    AND ESP,0xfffffff8
0051c049  83c404                    ADD ESP,0x4
0051c04c  55                        PUSH EBP
0051c04d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0051c050  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0051c054  8bec                      MOV EBP,ESP
0051c056  6aff                      PUSH -0x1
0051c058  68f044af00                PUSH 0xaf44f0
0051c05d  64a100000000              MOV EAX,FS:[0x0]
0051c063  50                        PUSH EAX
0051c064  53                        PUSH EBX
0051c065  81ec10010000              SUB ESP,0x110
0051c06b  a1b493bf00                MOV EAX,[0x00bf93b4]
0051c070  33c5                      XOR EAX,EBP
0051c072  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0051c075  56                        PUSH ESI
0051c076  57                        PUSH EDI
0051c077  50                        PUSH EAX
0051c078  8d45f4                    LEA EAX,[EBP + -0xc]
0051c07b  64a300000000              MOV FS:[0x0],EAX
0051c081  8bf1                      MOV ESI,ECX
0051c083  89b53cffffff              MOV dword ptr [EBP + 0xffffff3c],ESI
0051c089  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
0051c08f  85c0                      TEST EAX,EAX
0051c091  0f85c4000000              JNZ 0x0051c15b
0051c097  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0051c09a  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
0051c0a4  3ddf000000                CMP EAX,0xdf
0051c0a9  755c                      JNZ 0x0051c107
0051c0ab  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
0051c0b2  8d8ee4010000              LEA ECX,[ESI + 0x1e4]
0051c0b8  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0051c0be  c78500ffffff8382823e      MOV dword ptr [EBP + 0xffffff00],0x3e828283
0051c0c8  c78504ffffffa5a4243e      MOV dword ptr [EBP + 0xffffff04],0x3e24a4a5
0051c0d2  0f57c0                    XORPS XMM0,XMM0
0051c0d5  c78508ffffff8d8c0c3e      MOV dword ptr [EBP + 0xffffff08],0x3e0c8c8d
0051c0df  3bc8                      CMP ECX,EAX
0051c0e1  0f84220a0000              JZ 0x0051cb09
0051c0e7  8b8508ffffff              MOV EAX,dword ptr [EBP + 0xffffff08]
0051c0ed  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0051c0f1  f30f7e8500ffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff00]
0051c0f9  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0051c0fe  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
0051c101  894128                    MOV dword ptr [ECX + 0x28],EAX
0051c104  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0051c107  83f839                    CMP EAX,0x39
0051c10a  0f85f9090000              JNZ 0x0051cb09
0051c110  837e2c02                  CMP dword ptr [ESI + 0x2c],0x2
0051c114  0f85ef090000              JNZ 0x0051cb09
0051c11a  81c6e4010000              ADD ESI,0x1e4
0051c120  81fe804ec300              CMP ESI,0xc34e80
0051c126  0f84dd090000              JZ 0x0051cb09
0051c12c  0f1005804ec300            MOVUPS XMM0,xmmword ptr [0x00c34e80]
0051c133  0f1106                    MOVUPS xmmword ptr [ESI],XMM0
0051c136  0f1005904ec300            MOVUPS XMM0,xmmword ptr [0x00c34e90]
0051c13d  0f114610                  MOVUPS xmmword ptr [ESI + 0x10],XMM0
0051c141  f30f7e05a04ec300          MOVQ XMM0,qword ptr [0x00c34ea0]
0051c149  660fd64620                MOVQ qword ptr [ESI + 0x20],XMM0
0051c14e  a1a84ec300                MOV EAX,[0x00c34ea8]
0051c153  894628                    MOV dword ptr [ESI + 0x28],EAX
0051c156  e9ae090000                JMP 0x0051cb09
0051c15b  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
0051c163  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0051c16b  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
0051c173  83f804                    CMP EAX,0x4
0051c176  0f8561010000              JNZ 0x0051c2dd
0051c17c  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0051c182  2500080001                AND EAX,0x1000800
0051c187  83c800                    OR EAX,0x0
0051c18a  7454                      JZ 0x0051c1e0
0051c18c  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
0051c193  754b                      JNZ 0x0051c1e0
0051c195  e8a6261a00                CALL 0x006be840
0051c19a  6a00                      PUSH 0x0
0051c19c  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0051c1a2  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0051c1a8  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
0051c1ae  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
0051c1b4  898d38ffffff              MOV dword ptr [EBP + 0xffffff38],ECX
0051c1ba  8d8e14040000              LEA ECX,[ESI + 0x414]
0051c1c0  50                        PUSH EAX
0051c1c1  e87a872c00                CALL 0x007e4940
0051c1c6  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
0051c1ce  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0051c1d6  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
0051c1de  eb0d                      JMP 0x0051c1ed
0051c1e0  6a00                      PUSH 0x0
0051c1e2  8d8e14040000              LEA ECX,[ESI + 0x414]
0051c1e8  e813a12c00                CALL 0x007e6300
0051c1ed  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
0051c1f4  7438                      JZ 0x0051c22e
0051c1f6  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0051c1fe  8bce                      MOV ECX,ESI
0051c200  6a07                      PUSH 0x7
0051c202  6a00                      PUSH 0x0
0051c204  e857ec1a00                CALL 0x006cae60
0051c209  84c0                      TEST AL,AL
0051c20b  7543                      JNZ 0x0051c250
0051c20d  6a09                      PUSH 0x9
0051c20f  8bce                      MOV ECX,ESI
0051c211  e84ac01b00                CALL 0x006d8260
0051c216  84c0                      TEST AL,AL
0051c218  7536                      JNZ 0x0051c250
0051c21a  6a00                      PUSH 0x0
0051c21c  68b800b600                PUSH 0xb600b8
0051c221  8d4e48                    LEA ECX,[ESI + 0x48]
0051c224  e857e1eeff                CALL 0x0040a380
0051c229  e913050000                JMP 0x0051c741
0051c22e  e82d2d1d00                CALL 0x006eef60
0051c233  33d2                      XOR EDX,EDX
0051c235  b91e000000                MOV ECX,0x1e
0051c23a  f7f1                      DIV ECX
0051c23c  85d2                      TEST EDX,EDX
0051c23e  0f8585000000              JNZ 0x0051c2c9
0051c244  8bce                      MOV ECX,ESI
0051c246  e8d5a91b00                CALL 0x006d6c20
0051c24b  83f808                    CMP EAX,0x8
0051c24e  7d79                      JGE 0x0051c2c9
0051c250  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0051c256  25000a0001                AND EAX,0x1000a00
0051c25b  83c800                    OR EAX,0x0
0051c25e  7569                      JNZ 0x0051c2c9
0051c260  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
0051c267  c786640b000008000000      MOV dword ptr [ESI + 0xb64],0x8
0051c271  898610040000              MOV dword ptr [ESI + 0x410],EAX
0051c277  751a                      JNZ 0x0051c293
0051c279  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0051c281  f30f1186200f0000          MOVSS dword ptr [ESI + 0xf20],XMM0
0051c289  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0051c291  eb2e                      JMP 0x0051c2c1
0051c293  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0051c29b  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
0051c2a1  50                        PUSH EAX
0051c2a2  8bce                      MOV ECX,ESI
0051c2a4  e8f7c21b00                CALL 0x006d85a0
0051c2a9  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
0051c2b1  f30f1186200f0000          MOVSS dword ptr [ESI + 0xf20],XMM0
0051c2b9  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0051c2c1  f30f1186240f0000          MOVSS dword ptr [ESI + 0xf24],XMM0
0051c2c9  6a00                      PUSH 0x0
0051c2cb  68b800b600                PUSH 0xb600b8
0051c2d0  8d4e48                    LEA ECX,[ESI + 0x48]
0051c2d3  e8a8e0eeff                CALL 0x0040a380
0051c2d8  e964040000                JMP 0x0051c741
0051c2dd  6a00                      PUSH 0x0
0051c2df  8d4e48                    LEA ECX,[ESI + 0x48]
0051c2e2  6854ddb100                PUSH 0xb1dd54
0051c2e7  e894e0eeff                CALL 0x0040a380
0051c2ec  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
0051c2f0  8d7e78                    LEA EDI,[ESI + 0x78]
0051c2f3  0f8438040000              JZ 0x0051c731
0051c2f9  68dcd2b100                PUSH 0xb1d2dc
0051c2fe  8bcf                      MOV ECX,EDI
0051c300  e8cbeaeeff                CALL 0x0040add0
0051c305  84c0                      TEST AL,AL
0051c307  741d                      JZ 0x0051c326
0051c309  51                        PUSH ECX
0051c30a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051c311  6a00                      PUSH 0x0
0051c313  6a02                      PUSH 0x2
0051c315  51                        PUSH ECX
0051c316  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0051c31d  8bce                      MOV ECX,ESI
0051c31f  6a30                      PUSH 0x30
0051c321  e87aa81b00                CALL 0x006d6ba0
0051c326  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
0051c32a  0f8401040000              JZ 0x0051c731
0051c330  68dcd2b100                PUSH 0xb1d2dc
0051c335  8bcf                      MOV ECX,EDI
0051c337  e894eaeeff                CALL 0x0040add0
0051c33c  84c0                      TEST AL,AL
0051c33e  0f84de030000              JZ 0x0051c722
0051c344  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0051c347  83f839                    CMP EAX,0x39
0051c34a  0f8598000000              JNZ 0x0051c3e8
0051c350  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0051c356  e8d52bf2ff                CALL 0x0043ef30
0051c35b  837e2c02                  CMP dword ptr [ESI + 0x2c],0x2
0051c35f  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0051c365  51                        PUSH ECX
0051c366  8d863c030000              LEA EAX,[ESI + 0x33c]
0051c36c  c78554ffffff3333b33f      MOV dword ptr [EBP + 0xffffff54],0x3fb33333
0051c376  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
0051c37c  7546                      JNZ 0x0051c3c4
0051c37e  814d9800200000            OR dword ptr [EBP + -0x68],0x2000
0051c385  814d9c00040000            OR dword ptr [EBP + -0x64],0x400
0051c38c  6a09                      PUSH 0x9
0051c38e  51                        PUSH ECX
0051c38f  50                        PUSH EAX
0051c390  8bce                      MOV ECX,ESI
0051c392  c7854cffffff295c8fbd      MOV dword ptr [EBP + 0xffffff4c],0xbd8f5c29
0051c39c  c78558ffffffdb0fc93e      MOV dword ptr [EBP + 0xffffff58],0x3ec90fdb
0051c3a6  c78538ffffff00000041      MOV dword ptr [EBP + 0xffffff38],0x41000000
0051c3b0  c7853cffffff00000041      MOV dword ptr [EBP + 0xffffff3c],0x41000000
0051c3ba  e821ef1a00                CALL 0x006cb2e0
0051c3bf  e95e030000                JMP 0x0051c722
0051c3c4  6a08                      PUSH 0x8
0051c3c6  51                        PUSH ECX
0051c3c7  50                        PUSH EAX
0051c3c8  8bce                      MOV ECX,ESI
0051c3ca  c78538ffffff00002041      MOV dword ptr [EBP + 0xffffff38],0x41200000
0051c3d4  c7853cffffff00000000      MOV dword ptr [EBP + 0xffffff3c],0x0
0051c3de  e8fdee1a00                CALL 0x006cb2e0
0051c3e3  e93a030000                JMP 0x0051c722
0051c3e8  3ddf000000                CMP EAX,0xdf
0051c3ed  0f852f030000              JNZ 0x0051c722
0051c3f3  8bce                      MOV ECX,ESI
0051c3f5  e826a81b00                CALL 0x006d6c20
0051c3fa  83f806                    CMP EAX,0x6
0051c3fd  0f8d4b010000              JGE 0x0051c54e
0051c403  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
0051c40a  7415                      JZ 0x0051c421
0051c40c  8d8e200f0000              LEA ECX,[ESI + 0xf20]
0051c412  6840b6c700                PUSH 0xc7b640
0051c417  e8e4414f00                CALL 0x00a10600
0051c41c  0fb6c0                    MOVZX EAX,AL
0051c41f  eb15                      JMP 0x0051c436
0051c421  e83a2b1d00                CALL 0x006eef60
0051c426  33d2                      XOR EDX,EDX
0051c428  b907000000                MOV ECX,0x7
0051c42d  f7f1                      DIV ECX
0051c42f  33c0                      XOR EAX,EAX
0051c431  85d2                      TEST EDX,EDX
0051c433  0f95c0                    SETNZ AL
0051c436  85c0                      TEST EAX,EAX
0051c438  0f8410010000              JZ 0x0051c54e
0051c43e  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
0051c444  50                        PUSH EAX
0051c445  e8262c1600                CALL 0x0067f070
0051c44a  83c404                    ADD ESP,0x4
0051c44d  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0051c451  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
0051c459  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
0051c461  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0051c466  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
0051c46e  f30f118d34ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM1
0051c476  e8e52a1d00                CALL 0x006eef60
0051c47b  f30f108d30ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff30]
0051c483  8dbe3c030000              LEA EDI,[ESI + 0x33c]
0051c489  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
0051c491  f30f580f                  ADDSS XMM1,dword ptr [EDI]
0051c495  f30f584704                ADDSS XMM0,dword ptr [EDI + 0x4]
0051c49a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051c4a0  6a00                      PUSH 0x0
0051c4a2  50                        PUSH EAX
0051c4a3  6a00                      PUSH 0x0
0051c4a5  56                        PUSH ESI
0051c4a6  6840b6c700                PUSH 0xc7b640
0051c4ab  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
0051c4b1  89bd24ffffff              MOV dword ptr [EBP + 0xffffff24],EDI
0051c4b7  50                        PUSH EAX
0051c4b8  6a00                      PUSH 0x0
0051c4ba  68d9000000                PUSH 0xd9
0051c4bf  f30f118d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM1
0051c4c7  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0051c4cf  e83c1f1e00                CALL 0x006fe410
0051c4d4  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0051c4da  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0051c4e1  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0051c4e7  e8742a1d00                CALL 0x006eef60
0051c4ec  f30f100f                  MOVSS XMM1,dword ptr [EDI]
0051c4f0  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
0051c4f5  f30f5c8d30ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff30]
0051c4fd  f30f5c8534ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff34]
0051c505  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051c50b  6a00                      PUSH 0x0
0051c50d  50                        PUSH EAX
0051c50e  6a00                      PUSH 0x0
0051c510  56                        PUSH ESI
0051c511  6840b6c700                PUSH 0xc7b640
0051c516  8d8528ffffff              LEA EAX,[EBP + 0xffffff28]
0051c51c  f30f118d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM1
0051c524  50                        PUSH EAX
0051c525  6a00                      PUSH 0x0
0051c527  68d9000000                PUSH 0xd9
0051c52c  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0051c534  e8d71e1e00                CALL 0x006fe410
0051c539  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0051c53f  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0051c546  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0051c54c  eb54                      JMP 0x0051c5a2
0051c54e  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0051c554  e8d729f2ff                CALL 0x0043ef30
0051c559  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0051c55f  c78554ffffff3333b33f      MOV dword ptr [EBP + 0xffffff54],0x3fb33333
0051c569  51                        PUSH ECX
0051c56a  6a08                      PUSH 0x8
0051c56c  8d8d28ffffff              LEA ECX,[EBP + 0xffffff28]
0051c572  c745d403000000            MOV dword ptr [EBP + -0x2c],0x3
0051c579  8d863c030000              LEA EAX,[ESI + 0x33c]
0051c57f  c78528ffffff00002041      MOV dword ptr [EBP + 0xffffff28],0x41200000
0051c589  51                        PUSH ECX
0051c58a  50                        PUSH EAX
0051c58b  8bce                      MOV ECX,ESI
0051c58d  c7852cffffff00000000      MOV dword ptr [EBP + 0xffffff2c],0x0
0051c597  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
0051c59d  e83eed1a00                CALL 0x006cb2e0
0051c5a2  a17816c700                MOV EAX,[0x00c71678]
0051c5a7  6a00                      PUSH 0x0
0051c5a9  6a00                      PUSH 0x0
0051c5ab  6aff                      PUSH -0x1
0051c5ad  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0051c5b3  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0051c5b9  6aff                      PUSH -0x1
0051c5bb  68d9000000                PUSH 0xd9
0051c5c0  81c118120000              ADD ECX,0x1218
0051c5c6  50                        PUSH EAX
0051c5c7  e894e9efff                CALL 0x0041af60
0051c5cc  83bd18ffffff00            CMP dword ptr [EBP + 0xffffff18],0x0
0051c5d3  0f861e010000              JBE 0x0051c6f7
0051c5d9  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
0051c5e3  33f6                      XOR ESI,ESI
0051c5e5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
0051c5f0  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
0051c5f6  8b3cb0                    MOV EDI,dword ptr [EAX + ESI*0x4]
0051c5f9  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
0051c5ff  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0051c607  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
0051c60b  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
0051c613  f30f5c5004                SUBSS XMM2,dword ptr [EAX + 0x4]
0051c618  0f28c1                    MOVAPS XMM0,XMM1
0051c61b  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
0051c623  f30f59c1                  MULSS XMM0,XMM1
0051c627  0f28ca                    MOVAPS XMM1,XMM2
0051c62a  f30f119534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM2
0051c632  f30f59ca                  MULSS XMM1,XMM2
0051c636  f30f58c1                  ADDSS XMM0,XMM1
0051c63a  e81194f1ff                CALL 0x00435a50
0051c63f  f30f100d44aaba00          MOVSS XMM1,dword ptr [0x00baaa44]
0051c647  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
0051c64d  f30f109d30ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff30]
0051c655  f30f5cc8                  SUBSS XMM1,XMM0
0051c659  f30f10a534ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff34]
0051c661  8d8d2cffffff              LEA ECX,[EBP + 0xffffff2c]
0051c667  0f57ed                    XORPS XMM5,XMM5
0051c66a  0f2fe9                    COMISS XMM5,XMM1
0051c66d  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
0051c675  0f46c1                    CMOVBE EAX,ECX
0051c678  0f2fc5                    COMISS XMM0,XMM5
0051c67b  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0051c67f  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0051c687  760f                      JBE 0x0051c698
0051c689  f30f5ec8                  DIVSS XMM1,XMM0
0051c68d  0f28c1                    MOVAPS XMM0,XMM1
0051c690  f30f59e1                  MULSS XMM4,XMM1
0051c694  f30f59d8                  MULSS XMM3,XMM0
0051c698  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
0051c6a0  0f2ed5                    UCOMISS XMM2,XMM5
0051c6a3  9f                        LAHF
0051c6a4  f6c444                    TEST AH,0x44
0051c6a7  7b3b                      JNP 0x0051c6e4
0051c6a9  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0051c6b1  0f28c1                    MOVAPS XMM0,XMM1
0051c6b4  f30f59cc                  MULSS XMM1,XMM4
0051c6b8  f30f59c3                  MULSS XMM0,XMM3
0051c6bc  f30f5eca                  DIVSS XMM1,XMM2
0051c6c0  f30f5ec2                  DIVSS XMM0,XMM2
0051c6c4  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0051c6cc  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0051c6d4  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0051c6dc  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0051c6e4  46                        INC ESI
0051c6e5  3bb518ffffff              CMP ESI,dword ptr [EBP + 0xffffff18]
0051c6eb  0f82fffeffff              JC 0x0051c5f0
0051c6f1  8bb53cffffff              MOV ESI,dword ptr [EBP + 0xffffff3c]
0051c6f7  80bd0cffffff00            CMP byte ptr [EBP + 0xffffff0c],0x0
0051c6fe  7522                      JNZ 0x0051c722
0051c700  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0051c707  b101                      MOV CL,0x1
0051c709  8b9510ffffff              MOV EDX,dword ptr [EBP + 0xffffff10]
0051c70f  6a00                      PUSH 0x0
0051c711  6a00                      PUSH 0x0
0051c713  e898815400                CALL 0x00a648b0
0051c718  83c408                    ADD ESP,0x8
0051c71b  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0051c722  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
0051c726  7409                      JZ 0x0051c731
0051c728  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
0051c72f  750a                      JNZ 0x0051c73b
0051c731  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
0051c73b  ff8610040000              INC dword ptr [ESI + 0x410]
0051c741  817e28df000000            CMP dword ptr [ESI + 0x28],0xdf
0051c748  7565                      JNZ 0x0051c7af
0051c74a  e811281d00                CALL 0x006eef60
0051c74f  33d2                      XOR EDX,EDX
0051c751  b90a000000                MOV ECX,0xa
0051c756  f7f1                      DIV ECX
0051c758  85d2                      TEST EDX,EDX
0051c75a  7553                      JNZ 0x0051c7af
0051c75c  e8ff271d00                CALL 0x006eef60
0051c761  51                        PUSH ECX
0051c762  8bce                      MOV ECX,ESI
0051c764  660f6ec0                  MOVD XMM0,EAX
0051c768  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0051c76c  c1e81f                    SHR EAX,0x1f
0051c76f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051c778  660f5ac0                  CVTPD2PS XMM0,XMM0
0051c77c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0051c784  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0051c78c  f30f110424                MOVSS dword ptr [ESP],XMM0
0051c791  e83a9d1900                CALL 0x006b64d0
0051c796  6a01                      PUSH 0x1
0051c798  6a00                      PUSH 0x0
0051c79a  68ff000000                PUSH 0xff
0051c79f  8b10                      MOV EDX,dword ptr [EAX]
0051c7a1  8d8ee4010000              LEA ECX,[ESI + 0x1e4]
0051c7a7  6aff                      PUSH -0x1
0051c7a9  51                        PUSH ECX
0051c7aa  8bc8                      MOV ECX,EAX
0051c7ac  ff523c                    CALL dword ptr [EDX + 0x3c]
0051c7af  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0051c7b6  0f844d030000              JZ 0x0051cb09
0051c7bc  6683be760c000000          CMP word ptr [ESI + 0xc76],0x0
0051c7c4  0f853f030000              JNZ 0x0051cb09
0051c7ca  e891271d00                CALL 0x006eef60
0051c7cf  0f57c0                    XORPS XMM0,XMM0
0051c7d2  f20f2ac0                  CVTSI2SD XMM0,EAX
0051c7d6  c1e81f                    SHR EAX,0x1f
0051c7d9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051c7e2  660f5ac0                  CVTPD2PS XMM0,XMM0
0051c7e6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0051c7ee  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0051c7f6  f30f58c0                  ADDSS XMM0,XMM0
0051c7fa  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0051c802  e8390df0ff                CALL 0x0041d540
0051c807  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0051c80f  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0051c817  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0051c81f  e8fc0cf0ff                CALL 0x0041d520
0051c824  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0051c82c  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0051c82f  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0051c837  83f839                    CMP EAX,0x39
0051c83a  0f850c020000              JNZ 0x0051ca4c
0051c840  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
0051c843  85c0                      TEST EAX,EAX
0051c845  0f85a6000000              JNZ 0x0051c8f1
0051c84b  e810271d00                CALL 0x006eef60
0051c850  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
0051c858  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
0051c860  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051c866  6a00                      PUSH 0x0
0051c868  50                        PUSH EAX
0051c869  6a00                      PUSH 0x0
0051c86b  56                        PUSH ESI
0051c86c  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0051c874  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
0051c87a  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
0051c882  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
0051c88a  6840b6c700                PUSH 0xc7b640
0051c88f  50                        PUSH EAX
0051c890  6a00                      PUSH 0x0
0051c892  6a20                      PUSH 0x20
0051c894  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0051c89c  e86f1b1e00                CALL 0x006fe410
0051c8a1  e8ba261d00                CALL 0x006eef60
0051c8a6  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0051c8ae  f30f5c8534ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff34]
0051c8b6  6a00                      PUSH 0x0
0051c8b8  50                        PUSH EAX
0051c8b9  6a00                      PUSH 0x0
0051c8bb  56                        PUSH ESI
0051c8bc  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0051c8c4  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
0051c8ca  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0051c8d2  f30f5c8530ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff30]
0051c8da  6840b6c700                PUSH 0xc7b640
0051c8df  50                        PUSH EAX
0051c8e0  6a00                      PUSH 0x0
0051c8e2  6a20                      PUSH 0x20
0051c8e4  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0051c8ec  e90d020000                JMP 0x0051cafe
0051c8f1  83f802                    CMP EAX,0x2
0051c8f4  0f85ac000000              JNZ 0x0051c9a6
0051c8fa  e861261d00                CALL 0x006eef60
0051c8ff  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
0051c907  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
0051c90f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051c915  6a00                      PUSH 0x0
0051c917  50                        PUSH EAX
0051c918  6a00                      PUSH 0x0
0051c91a  56                        PUSH ESI
0051c91b  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0051c923  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
0051c929  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
0051c931  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
0051c939  6840b6c700                PUSH 0xc7b640
0051c93e  50                        PUSH EAX
0051c93f  6a00                      PUSH 0x0
0051c941  685e030000                PUSH 0x35e
0051c946  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0051c94e  e8bd1a1e00                CALL 0x006fe410
0051c953  e808261d00                CALL 0x006eef60
0051c958  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0051c960  f30f5c8534ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff34]
0051c968  6a00                      PUSH 0x0
0051c96a  50                        PUSH EAX
0051c96b  6a00                      PUSH 0x0
0051c96d  56                        PUSH ESI
0051c96e  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0051c976  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
0051c97c  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0051c984  f30f5c8530ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff30]
0051c98c  6840b6c700                PUSH 0xc7b640
0051c991  50                        PUSH EAX
0051c992  6a00                      PUSH 0x0
0051c994  685e030000                PUSH 0x35e
0051c999  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0051c9a1  e958010000                JMP 0x0051cafe
0051c9a6  e8b5251d00                CALL 0x006eef60
0051c9ab  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
0051c9b3  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
0051c9bb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051c9c1  6a00                      PUSH 0x0
0051c9c3  50                        PUSH EAX
0051c9c4  6a00                      PUSH 0x0
0051c9c6  56                        PUSH ESI
0051c9c7  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0051c9cf  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
0051c9d5  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
0051c9dd  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
0051c9e5  6840b6c700                PUSH 0xc7b640
0051c9ea  50                        PUSH EAX
0051c9eb  6a00                      PUSH 0x0
0051c9ed  6a28                      PUSH 0x28
0051c9ef  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0051c9f7  e8141a1e00                CALL 0x006fe410
0051c9fc  e85f251d00                CALL 0x006eef60
0051ca01  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0051ca09  f30f5c8534ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff34]
0051ca11  6a00                      PUSH 0x0
0051ca13  50                        PUSH EAX
0051ca14  6a00                      PUSH 0x0
0051ca16  56                        PUSH ESI
0051ca17  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0051ca1f  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
0051ca25  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0051ca2d  f30f5c8530ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff30]
0051ca35  6840b6c700                PUSH 0xc7b640
0051ca3a  50                        PUSH EAX
0051ca3b  6a00                      PUSH 0x0
0051ca3d  6a28                      PUSH 0x28
0051ca3f  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0051ca47  e9b2000000                JMP 0x0051cafe
0051ca4c  3ddf000000                CMP EAX,0xdf
0051ca51  0f85b2000000              JNZ 0x0051cb09
0051ca57  e804251d00                CALL 0x006eef60
0051ca5c  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
0051ca64  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
0051ca6c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051ca72  6a00                      PUSH 0x0
0051ca74  50                        PUSH EAX
0051ca75  6a00                      PUSH 0x0
0051ca77  56                        PUSH ESI
0051ca78  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0051ca80  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
0051ca86  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
0051ca8e  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
0051ca96  6840b6c700                PUSH 0xc7b640
0051ca9b  50                        PUSH EAX
0051ca9c  6a00                      PUSH 0x0
0051ca9e  68dc000000                PUSH 0xdc
0051caa3  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0051caab  e860191e00                CALL 0x006fe410
0051cab0  e8ab241d00                CALL 0x006eef60
0051cab5  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0051cabd  f30f5c8534ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff34]
0051cac5  6a00                      PUSH 0x0
0051cac7  50                        PUSH EAX
0051cac8  6a00                      PUSH 0x0
0051caca  56                        PUSH ESI
0051cacb  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
0051cad3  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0051cad9  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0051cae1  f30f5c8530ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff30]
0051cae9  6840b6c700                PUSH 0xc7b640
0051caee  50                        PUSH EAX
0051caef  6a00                      PUSH 0x0
0051caf1  68dc000000                PUSH 0xdc
0051caf6  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0051cafe  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051cb04  e807191e00                CALL 0x006fe410
0051cb09  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0051cb0c  64890d00000000            MOV dword ptr FS:[0x0],ECX
0051cb13  59                        POP ECX
0051cb14  5f                        POP EDI
0051cb15  5e                        POP ESI
0051cb16  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0051cb19  33cd                      XOR ECX,EBP
0051cb1b  e80b265d00                CALL 0x00aef12b
0051cb20  8be5                      MOV ESP,EBP
0051cb22  5d                        POP EBP
0051cb23  8be3                      MOV ESP,EBX
0051cb25  5b                        POP EBX
0051cb26  c3                        RET
