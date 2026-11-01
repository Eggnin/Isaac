; J460 NPC AI 0x00461fc0 AI_00461fc0
; types=97
; identities=97.0.0
; entry=00461fc0
00461fc0  53                        PUSH EBX
00461fc1  8bdc                      MOV EBX,ESP
00461fc3  83ec08                    SUB ESP,0x8
00461fc6  83e4f8                    AND ESP,0xfffffff8
00461fc9  83c404                    ADD ESP,0x4
00461fcc  55                        PUSH EBP
00461fcd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00461fd0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00461fd4  8bec                      MOV EBP,ESP
00461fd6  6aff                      PUSH -0x1
00461fd8  68f826af00                PUSH 0xaf26f8
00461fdd  64a100000000              MOV EAX,FS:[0x0]
00461fe3  50                        PUSH EAX
00461fe4  53                        PUSH EBX
00461fe5  81ec88000000              SUB ESP,0x88
00461feb  a1b493bf00                MOV EAX,[0x00bf93b4]
00461ff0  33c5                      XOR EAX,EBP
00461ff2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00461ff5  56                        PUSH ESI
00461ff6  57                        PUSH EDI
00461ff7  50                        PUSH EAX
00461ff8  8d45f4                    LEA EAX,[EBP + -0xc]
00461ffb  64a300000000              MOV FS:[0x0],EAX
00462001  8bf9                      MOV EDI,ECX
00462003  897d88                    MOV dword ptr [EBP + -0x78],EDI
00462006  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0046200c  33c9                      XOR ECX,ECX
0046200e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00462015  0f45cf                    CMOVNZ ECX,EDI
00462018  894da8                    MOV dword ptr [EBP + -0x58],ECX
0046201b  85c9                      TEST ECX,ECX
0046201d  7567                      JNZ 0x00462086
0046201f  8b97bc030000              MOV EDX,dword ptr [EDI + 0x3bc]
00462025  85d2                      TEST EDX,EDX
00462027  742a                      JZ 0x00462053
00462029  83be1466020002            CMP dword ptr [ESI + 0x26614],0x2
00462030  7c06                      JL 0x00462038
00462032  837a2801                  CMP dword ptr [EDX + 0x28],0x1
00462036  740d                      JZ 0x00462045
00462038  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
0046203b  83e80a                    SUB EAX,0xa
0046203e  3ddd030000                CMP EAX,0x3dd
00462043  770e                      JA 0x00462053
00462045  83ba1c0f0000ff            CMP dword ptr [EDX + 0xf1c],-0x1
0046204c  7405                      JZ 0x00462053
0046204e  8955a8                    MOV dword ptr [EBP + -0x58],EDX
00462051  eb33                      JMP 0x00462086
00462053  8b97ec0b0000              MOV EDX,dword ptr [EDI + 0xbec]
00462059  85d2                      TEST EDX,EDX
0046205b  7429                      JZ 0x00462086
0046205d  83be1466020002            CMP dword ptr [ESI + 0x26614],0x2
00462064  7c06                      JL 0x0046206c
00462066  837a2801                  CMP dword ptr [EDX + 0x28],0x1
0046206a  740d                      JZ 0x00462079
0046206c  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
0046206f  83e80a                    SUB EAX,0xa
00462072  3ddd030000                CMP EAX,0x3dd
00462077  770d                      JA 0x00462086
00462079  83ba1c0f0000ff            CMP dword ptr [EDX + 0xf1c],-0x1
00462080  0f45ca                    CMOVNZ ECX,EDX
00462083  894da8                    MOV dword ptr [EBP + -0x58],ECX
00462086  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0046208d  0f8520030000              JNZ 0x004623b3
00462093  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00462099  33c0                      XOR EAX,EAX
0046209b  81e100000010              AND ECX,0x10000000
004620a1  0bc1                      OR EAX,ECX
004620a3  0f85b5000000              JNZ 0x0046215e
004620a9  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
004620af  50                        PUSH EAX
004620b0  50                        PUSH EAX
004620b1  6aff                      PUSH -0x1
004620b3  6aff                      PUSH -0x1
004620b5  6a62                      PUSH 0x62
004620b7  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
004620bd  81c118120000              ADD ECX,0x1218
004620c3  50                        PUSH EAX
004620c4  e8978efbff                CALL 0x0041af60
004620c9  33f6                      XOR ESI,ESI
004620cb  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004620d2  39b57cffffff              CMP dword ptr [EBP + 0xffffff7c],ESI
004620d8  7642                      JBE 0x0046211c
004620da  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004620e0  8b8574ffffff              MOV EAX,dword ptr [EBP + 0xffffff74]
004620e6  6a00                      PUSH 0x0
004620e8  68acd6c500                PUSH 0xc5d6ac
004620ed  68dcd5c500                PUSH 0xc5d5dc
004620f2  6a00                      PUSH 0x0
004620f4  ff34b0                    PUSH dword ptr [EAX + ESI*0x4]
004620f7  e8b5e76800                CALL 0x00af08b1
004620fc  83c414                    ADD ESP,0x14
004620ff  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
00462102  85c0                      TEST EAX,EAX
00462104  740d                      JZ 0x00462113
00462106  83b8c003000000            CMP dword ptr [EAX + 0x3c0],0x0
0046210d  0f8457020000              JZ 0x0046236a
00462113  46                        INC ESI
00462114  3bb57cffffff              CMP ESI,dword ptr [EBP + 0xffffff7c]
0046211a  72c4                      JC 0x004620e0
0046211c  33f6                      XOR ESI,ESI
0046211e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00462125  80bd70ffffff00            CMP byte ptr [EBP + 0xffffff70],0x0
0046212c  7522                      JNZ 0x00462150
0046212e  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00462135  b101                      MOV CL,0x1
00462137  8b9574ffffff              MOV EDX,dword ptr [EBP + 0xffffff74]
0046213d  6a00                      PUSH 0x0
0046213f  6a00                      PUSH 0x0
00462141  e86a276000                CALL 0x00a648b0
00462146  83c408                    ADD ESP,0x8
00462149  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00462150  85f6                      TEST ESI,ESI
00462152  0f857b010000              JNZ 0x004622d3
00462158  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0046215e  6a00                      PUSH 0x0
00462160  6a00                      PUSH 0x0
00462162  6a00                      PUSH 0x0
00462164  51                        PUSH ECX
00462165  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0046216b  8d873c030000              LEA EAX,[EDI + 0x33c]
00462171  c7042400002042            MOV dword ptr [ESP],0x42200000
00462178  50                        PUSH EAX
00462179  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
0046217f  50                        PUSH EAX
00462180  e89b133b00                CALL 0x00813520
00462185  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0046218d  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
00462195  f30f5cc2                  SUBSS XMM0,XMM2
00462199  a17816c700                MOV EAX,[0x00c71678]
0046219e  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004621a4  f30f5ec2                  DIVSS XMM0,XMM2
004621a8  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004621b0  f30f2cf0                  CVTTSS2SI ESI,XMM0
004621b4  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
004621bc  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004621c4  f30f5ec2                  DIVSS XMM0,XMM2
004621c8  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004621d0  f30f2cd0                  CVTTSS2SI EDX,XMM0
004621d4  85f6                      TEST ESI,ESI
004621d6  7834                      JS 0x0046220c
004621d8  8b410c                    MOV EAX,dword ptr [ECX + 0xc]
004621db  3bf0                      CMP ESI,EAX
004621dd  7d2d                      JGE 0x0046220c
004621df  85d2                      TEST EDX,EDX
004621e1  7829                      JS 0x0046220c
004621e3  3b5110                    CMP EDX,dword ptr [ECX + 0x10]
004621e6  7d24                      JGE 0x0046220c
004621e8  0fafc2                    IMUL EAX,EDX
004621eb  03c6                      ADD EAX,ESI
004621ed  3dbf010000                CMP EAX,0x1bf
004621f2  7718                      JA 0x0046220c
004621f4  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
004621ff  7f0b                      JG 0x0046220c
00462201  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
0046220c  e84fcd2800                CALL 0x006eef60
00462211  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00462217  6a00                      PUSH 0x0
00462219  68acd6c500                PUSH 0xc5d6ac
0046221e  68dcd5c500                PUSH 0xc5d5dc
00462223  6a00                      PUSH 0x0
00462225  50                        PUSH EAX
00462226  6a00                      PUSH 0x0
00462228  57                        PUSH EDI
00462229  6840b6c700                PUSH 0xc7b640
0046222e  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
00462234  50                        PUSH EAX
00462235  6a00                      PUSH 0x0
00462237  6a62                      PUSH 0x62
00462239  e8e268fcff                CALL 0x00428b20
0046223e  50                        PUSH EAX
0046223f  e86de66800                CALL 0x00af08b1
00462244  8bf0                      MOV ESI,EAX
00462246  83c414                    ADD ESP,0x14
00462249  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
0046224f  8d86c0030000              LEA EAX,[ESI + 0x3c0]
00462255  85c9                      TEST ECX,ECX
00462257  7418                      JZ 0x00462271
00462259  894588                    MOV dword ptr [EBP + -0x78],EAX
0046225c  81c1cc030000              ADD ECX,0x3cc
00462262  8d4588                    LEA EAX,[EBP + -0x78]
00462265  50                        PUSH EAX
00462266  e8a5cf0600                CALL 0x004cf210
0046226b  8d86c0030000              LEA EAX,[ESI + 0x3c0]
00462271  50                        PUSH EAX
00462272  8bcf                      MOV ECX,EDI
00462274  8938                      MOV dword ptr [EAX],EDI
00462276  e875ba0600                CALL 0x004cdcf0
0046227b  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00462281  8d87bc030000              LEA EAX,[EDI + 0x3bc]
00462287  85c9                      TEST ECX,ECX
00462289  7418                      JZ 0x004622a3
0046228b  894588                    MOV dword ptr [EBP + -0x78],EAX
0046228e  81c1cc030000              ADD ECX,0x3cc
00462294  8d4588                    LEA EAX,[EBP + -0x78]
00462297  50                        PUSH EAX
00462298  e873cf0600                CALL 0x004cf210
0046229d  8d87bc030000              LEA EAX,[EDI + 0x3bc]
004622a3  50                        PUSH EAX
004622a4  8bce                      MOV ECX,ESI
004622a6  8930                      MOV dword ptr [EAX],ESI
004622a8  e843ba0600                CALL 0x004cdcf0
004622ad  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
004622b3  33c0                      XOR EAX,EAX
004622b5  81e100000010              AND ECX,0x10000000
004622bb  0bc1                      OR EAX,ECX
004622bd  7414                      JZ 0x004622d3
004622bf  c7868003000000004842      MOV dword ptr [ESI + 0x380],0x42480000
004622c9  c7868403000000004842      MOV dword ptr [ESI + 0x384],0x42480000
004622d3  8b8680030000              MOV EAX,dword ptr [ESI + 0x380]
004622d9  8987b80b0000              MOV dword ptr [EDI + 0xbb8],EAX
004622df  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004622e9  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004622f1  f30f118718040000          MOVSS dword ptr [EDI + 0x418],XMM0
004622f9  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00462301  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
00462309  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00462311  f30f118720040000          MOVSS dword ptr [EDI + 0x420],XMM0
00462319  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00462321  f30f118724040000          MOVSS dword ptr [EDI + 0x424],XMM0
00462329  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0046232f  838f6801000001            OR dword ptr [EDI + 0x168],0x1
00462336  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00462340  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00462347  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0046234d  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
00462353  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
00462359  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
0046235f  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
00462365  e96e0d0000                JMP 0x004630d8
0046236a  05c0030000                ADD EAX,0x3c0
0046236f  8bcf                      MOV ECX,EDI
00462371  50                        PUSH EAX
00462372  8938                      MOV dword ptr [EAX],EDI
00462374  e877b90600                CALL 0x004cdcf0
00462379  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0046237f  8d87bc030000              LEA EAX,[EDI + 0x3bc]
00462385  85c9                      TEST ECX,ECX
00462387  7418                      JZ 0x004623a1
00462389  894588                    MOV dword ptr [EBP + -0x78],EAX
0046238c  81c1cc030000              ADD ECX,0x3cc
00462392  8d4588                    LEA EAX,[EBP + -0x78]
00462395  50                        PUSH EAX
00462396  e875ce0600                CALL 0x004cf210
0046239b  8d87bc030000              LEA EAX,[EDI + 0x3bc]
004623a1  8b75a4                    MOV ESI,dword ptr [EBP + -0x5c]
004623a4  8bce                      MOV ECX,ESI
004623a6  50                        PUSH EAX
004623a7  8930                      MOV dword ptr [EAX],ESI
004623a9  e842b90600                CALL 0x004cdcf0
004623ae  e96bfdffff                JMP 0x0046211e
004623b3  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004623b7  0f8595000000              JNZ 0x00462452
004623bd  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004623c3  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004623c9  85c9                      TEST ECX,ECX
004623cb  7468                      JZ 0x00462435
004623cd  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004623d4  0f850d010000              JNZ 0x004624e7
004623da  8d87bc030000              LEA EAX,[EDI + 0x3bc]
004623e0  8908                      MOV dword ptr [EAX],ECX
004623e2  50                        PUSH EAX
004623e3  e808b90600                CALL 0x004cdcf0
004623e8  8b06                      MOV EAX,dword ptr [ESI]
004623ea  05c0030000                ADD EAX,0x3c0
004623ef  894590                    MOV dword ptr [EBP + -0x70],EAX
004623f2  8b08                      MOV ECX,dword ptr [EAX]
004623f4  85c9                      TEST ECX,ECX
004623f6  7415                      JZ 0x0046240d
004623f8  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
004623fb  81c1cc030000              ADD ECX,0x3cc
00462401  8d45a4                    LEA EAX,[EBP + -0x5c]
00462404  50                        PUSH EAX
00462405  e806ce0600                CALL 0x004cf210
0046240a  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
0046240d  50                        PUSH EAX
0046240e  8bcf                      MOV ECX,EDI
00462410  8938                      MOV dword ptr [EAX],EDI
00462412  e8d9b80600                CALL 0x004cdcf0
00462417  8b0e                      MOV ECX,dword ptr [ESI]
00462419  85c9                      TEST ECX,ECX
0046241b  7412                      JZ 0x0046242f
0046241d  8d45a4                    LEA EAX,[EBP + -0x5c]
00462420  8975a4                    MOV dword ptr [EBP + -0x5c],ESI
00462423  81c1cc030000              ADD ECX,0x3cc
00462429  50                        PUSH EAX
0046242a  e8e1cd0600                CALL 0x004cf210
0046242f  c70600000000              MOV dword ptr [ESI],0x0
00462435  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0046243b  83a768010000fe            AND dword ptr [EDI + 0x168],0xfffffffe
00462442  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00462448  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00462452  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00462459  0f8588000000              JNZ 0x004624e7
0046245f  837f2861                  CMP dword ptr [EDI + 0x28],0x61
00462463  7570                      JNZ 0x004624d5
00462465  80bfb003000000            CMP byte ptr [EDI + 0x3b0],0x0
0046246c  745b                      JZ 0x004624c9
0046246e  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00462474  8d4d94                    LEA ECX,[EBP + -0x6c]
00462477  83a768010000fe            AND dword ptr [EDI + 0x168],0xfffffffe
0046247e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00462484  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
0046248b  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00462491  c74594ba030000            MOV dword ptr [EBP + -0x6c],0x3ba
00462498  e8e3424f00                CALL 0x00956780
0046249d  83ec08                    SUB ESP,0x8
004624a0  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004624a6  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004624ae  c704240000803f            MOV dword ptr [ESP],0x3f800000
004624b5  6a00                      PUSH 0x0
004624b7  6a02                      PUSH 0x2
004624b9  51                        PUSH ECX
004624ba  c704240000803f            MOV dword ptr [ESP],0x3f800000
004624c1  ff7594                    PUSH dword ptr [EBP + -0x6c]
004624c4  e867b74c00                CALL 0x0092dc30
004624c9  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
004624d3  eb12                      JMP 0x004624e7
004624d5  8b07                      MOV EAX,dword ptr [EDI]
004624d7  8d4dc4                    LEA ECX,[EBP + -0x3c]
004624da  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
004624dd  e88e37fdff                CALL 0x00435c70
004624e2  50                        PUSH EAX
004624e3  8bcf                      MOV ECX,EDI
004624e5  ffd2                      CALL EDX
004624e7  837f2861                  CMP dword ptr [EDI + 0x28],0x61
004624eb  f30f102d40cbba00          MOVSS XMM5,dword ptr [0x00bacb40]
004624f3  0f8504020000              JNZ 0x004626fd
004624f9  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
00462500  0f84f7010000              JZ 0x004626fd
00462506  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0046250c  85c0                      TEST EAX,EAX
0046250e  0f84e9010000              JZ 0x004626fd
00462514  f30f108880030000          MOVSS XMM1,dword ptr [EAX + 0x380]
0046251c  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00462524  0f2ec1                    UCOMISS XMM0,XMM1
00462527  9f                        LAHF
00462528  f6c444                    TEST AH,0x44
0046252b  0f8bcc010000              JNP 0x004626fd
00462531  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
00462539  e822ca2800                CALL 0x006eef60
0046253e  83e001                    AND EAX,0x1
00462541  0f85ae010000              JNZ 0x004626f5
00462547  3945a8                    CMP dword ptr [EBP + -0x58],EAX
0046254a  0f85a5010000              JNZ 0x004626f5
00462550  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00462558  a17816c700                MOV EAX,[0x00c71678]
0046255d  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00462565  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046256d  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00462575  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0046257b  8d873c030000              LEA EAX,[EDI + 0x33c]
00462581  50                        PUSH EAX
00462582  8bce                      MOV ECX,ESI
00462584  e857083b00                CALL 0x00812de0
00462589  99                        CDQ
0046258a  8bcf                      MOV ECX,EDI
0046258c  f77e0c                    IDIV dword ptr [ESI + 0xc]
0046258f  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00462597  660f6eca                  MOVD XMM1,EDX
0046259b  0f5bc9                    CVTDQ2PS XMM1,XMM1
0046259e  f30f59c8                  MULSS XMM1,XMM0
004625a2  f30f58c8                  ADDSS XMM1,XMM0
004625a6  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
004625ab  660f6ec8                  MOVD XMM1,EAX
004625af  0f5bc9                    CVTDQ2PS XMM1,XMM1
004625b2  f30f59c8                  MULSS XMM1,XMM0
004625b6  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
004625be  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
004625c3  e878c22500                CALL 0x006be840
004625c8  8bcf                      MOV ECX,EDI
004625ca  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004625d2  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004625d7  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004625df  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
004625e4  e857c22500                CALL 0x006be840
004625e9  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
004625f1  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
004625f6  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
004625fe  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
00462603  e858c92800                CALL 0x006eef60
00462608  f30f1055a0                MOVSS XMM2,dword ptr [EBP + -0x60]
0046260d  0f57e4                    XORPS XMM4,XMM4
00462610  f30f105d98                MOVSS XMM3,dword ptr [EBP + -0x68]
00462615  f30f102d40cbba00          MOVSS XMM5,dword ptr [0x00bacb40]
0046261d  660f6ec0                  MOVD XMM0,EAX
00462621  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00462625  c1e81f                    SHR EAX,0x1f
00462628  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00462631  660f5ac8                  CVTPD2PS XMM1,XMM0
00462635  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0046263d  f30f590d5ca8ba00          MULSS XMM1,dword ptr [0x00baa85c]
00462645  0f28c1                    MOVAPS XMM0,XMM1
00462648  f30f594d90                MULSS XMM1,dword ptr [EBP + -0x70]
0046264d  f30f5945a4                MULSS XMM0,dword ptr [EBP + -0x5c]
00462652  f30f584d80                ADDSS XMM1,dword ptr [EBP + -0x80]
00462657  f30f584594                ADDSS XMM0,dword ptr [EBP + -0x6c]
0046265c  f30f5cd9                  SUBSS XMM3,XMM1
00462660  f30f5cd0                  SUBSS XMM2,XMM0
00462664  0f28c3                    MOVAPS XMM0,XMM3
00462667  0f54c5                    ANDPS XMM0,XMM5
0046266a  0f28ca                    MOVAPS XMM1,XMM2
0046266d  0f54cd                    ANDPS XMM1,XMM5
00462670  0f2fc8                    COMISS XMM1,XMM0
00462673  7629                      JBE 0x0046269e
00462675  0f2fe2                    COMISS XMM4,XMM2
00462678  7612                      JBE 0x0046268c
0046267a  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00462682  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0046268a  eb2d                      JMP 0x004626b9
0046268c  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00462694  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0046269c  eb1b                      JMP 0x004626b9
0046269e  0f2fe3                    COMISS XMM4,XMM3
004626a1  760c                      JBE 0x004626af
004626a3  c787380300000000803f      MOV dword ptr [EDI + 0x338],0x3f800000
004626ad  eb0a                      JMP 0x004626b9
004626af  c78738030000000080bf      MOV dword ptr [EDI + 0x338],0xbf800000
004626b9  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004626c1  f30f590554a5ba00          MULSS XMM0,dword ptr [0x00baa554]
004626c9  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004626d1  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004626d9  f30f590554a5ba00          MULSS XMM0,dword ptr [0x00baa554]
004626e1  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004626e9  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
004626f3  eb0b                      JMP 0x00462700
004626f5  f30f102d40cbba00          MOVSS XMM5,dword ptr [0x00bacb40]
004626fd  0f57e4                    XORPS XMM4,XMM4
00462700  c745ac00000000            MOV dword ptr [EBP + -0x54],0x0
00462707  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
0046270e  c745c00f000000            MOV dword ptr [EBP + -0x40],0xf
00462715  c645ac00                  MOV byte ptr [EBP + -0x54],0x0
00462719  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
00462720  b9d0c2c500                MOV ECX,0xc5c2d0
00462725  837f2861                  CMP dword ptr [EDI + 0x28],0x61
00462729  7516                      JNZ 0x00462741
0046272b  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
00462732  b9c0c2c500                MOV ECX,0xc5c2c0
00462737  b8b0c2c500                MOV EAX,0xc5c2b0
0046273c  0f45c8                    CMOVNZ ECX,EAX
0046273f  eb17                      JMP 0x00462758
00462741  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00462745  7511                      JNZ 0x00462758
00462747  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
0046274e  b8c0c2c500                MOV EAX,0xc5c2c0
00462753  0f45c1                    CMOVNZ EAX,ECX
00462756  8bc8                      MOV ECX,EAX
00462758  f30f109fb00b0000          MOVSS XMM3,dword ptr [EDI + 0xbb0]
00462760  f30f1097b40b0000          MOVSS XMM2,dword ptr [EDI + 0xbb4]
00462768  0f28cb                    MOVAPS XMM1,XMM3
0046276b  0f28c2                    MOVAPS XMM0,XMM2
0046276e  0f54cd                    ANDPS XMM1,XMM5
00462771  0f54c5                    ANDPS XMM0,XMM5
00462774  0f2fc8                    COMISS XMM1,XMM0
00462777  760f                      JBE 0x00462788
00462779  33d2                      XOR EDX,EDX
0046277b  b808000000                MOV EAX,0x8
00462780  0f2fe3                    COMISS XMM4,XMM3
00462783  0f47c2                    CMOVA EAX,EDX
00462786  eb0f                      JMP 0x00462797
00462788  33c0                      XOR EAX,EAX
0046278a  0f2fe2                    COMISS XMM4,XMM2
0046278d  0f96c0                    SETBE AL
00462790  8d04c504000000            LEA EAX,[EAX*0x8 + 0x4]
00462797  8b1408                    MOV EDX,dword ptr [EAX + ECX*0x1]
0046279a  8bca                      MOV ECX,EDX
0046279c  8d7101                    LEA ESI,[ECX + 0x1]
0046279f  90                        NOP
004627a0  8a01                      MOV AL,byte ptr [ECX]
004627a2  41                        INC ECX
004627a3  84c0                      TEST AL,AL
004627a5  75f9                      JNZ 0x004627a0
004627a7  2bce                      SUB ECX,ESI
004627a9  51                        PUSH ECX
004627aa  52                        PUSH EDX
004627ab  8d4dac                    LEA ECX,[EBP + -0x54]
004627ae  e81da5faff                CALL 0x0040ccd0
004627b3  837dc010                  CMP dword ptr [EBP + -0x40],0x10
004627b7  8d45ac                    LEA EAX,[EBP + -0x54]
004627ba  6a01                      PUSH 0x1
004627bc  0f4345ac                  CMOVNC EAX,dword ptr [EBP + -0x54]
004627c0  8d4f48                    LEA ECX,[EDI + 0x48]
004627c3  50                        PUSH EAX
004627c4  e8077efaff                CALL 0x0040a5d0
004627c9  84c0                      TEST AL,AL
004627cb  7420                      JZ 0x004627ed
004627cd  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004627d0  85c0                      TEST EAX,EAX
004627d2  7419                      JZ 0x004627ed
004627d4  8d4f78                    LEA ECX,[EDI + 0x78]
004627d7  0f57c9                    XORPS XMM1,XMM1
004627da  e82166faff                CALL 0x00408e00
004627df  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004627e2  85c0                      TEST EAX,EAX
004627e4  7407                      JZ 0x004627ed
004627e6  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004627ed  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
004627f5  33f6                      XOR ESI,ESI
004627f7  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
004627ff  a17816c700                MOV EAX,[0x00c71678]
00462804  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
0046280c  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00462814  f30f588fb40b0000          ADDSS XMM1,dword ptr [EDI + 0xbb4]
0046281c  f30f591544a2ba00          MULSS XMM2,dword ptr [0x00baa244]
00462824  f30f590d44a2ba00          MULSS XMM1,dword ptr [0x00baa244]
0046282c  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
00462834  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
0046283c  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00462844  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0046284c  f30f5cc1                  SUBSS XMM0,XMM1
00462850  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00462856  894da0                    MOV dword ptr [EBP + -0x60],ECX
00462859  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
0046285c  f30f5ec1                  DIVSS XMM0,XMM1
00462860  894da4                    MOV dword ptr [EBP + -0x5c],ECX
00462863  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0046286b  f30f2cc0                  CVTTSS2SI EAX,XMM0
0046286f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00462877  8d79ff                    LEA EDI,[ECX + -0x1]
0046287a  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
00462882  85c0                      TEST EAX,EAX
00462884  0f4ff0                    CMOVG ESI,EAX
00462887  8b45a0                    MOV EAX,dword ptr [EBP + -0x60]
0046288a  33c9                      XOR ECX,ECX
0046288c  f30f5ec1                  DIVSS XMM0,XMM1
00462890  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
00462893  48                        DEC EAX
00462894  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0046289c  f30f2cd0                  CVTTSS2SI EDX,XMM0
004628a0  85d2                      TEST EDX,EDX
004628a2  0f4fca                    CMOVG ECX,EDX
004628a5  3bc8                      CMP ECX,EAX
004628a7  0f4cc1                    CMOVL EAX,ECX
004628aa  0faf45a4                  IMUL EAX,dword ptr [EBP + -0x5c]
004628ae  3bf7                      CMP ESI,EDI
004628b0  0f4cfe                    CMOVL EDI,ESI
004628b3  03c7                      ADD EAX,EDI
004628b5  8b7d88                    MOV EDI,dword ptr [EBP + -0x78]
004628b8  99                        CDQ
004628b9  f77da4                    IDIV dword ptr [EBP + -0x5c]
004628bc  660f6ec2                  MOVD XMM0,EDX
004628c0  0f5bc0                    CVTDQ2PS XMM0,XMM0
004628c3  f30f59c1                  MULSS XMM0,XMM1
004628c7  f30f58c1                  ADDSS XMM0,XMM1
004628cb  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
004628d0  660f6ec0                  MOVD XMM0,EAX
004628d4  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004628da  0f5bc0                    CVTDQ2PS XMM0,XMM0
004628dd  f30f59c1                  MULSS XMM0,XMM1
004628e1  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
004628e9  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004628ee  85c0                      TEST EAX,EAX
004628f0  7409                      JZ 0x004628fb
004628f2  83f802                    CMP EAX,0x2
004628f5  0f8525060000              JNZ 0x00462f20
004628fb  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00462901  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00462907  25000a0001                AND EAX,0x1000a00
0046290c  83c800                    OR EAX,0x0
0046290f  0f850b060000              JNZ 0x00462f20
00462915  81e100000010              AND ECX,0x10000000
0046291b  0bc1                      OR EAX,ECX
0046291d  7410                      JZ 0x0046292f
0046291f  8b45a0                    MOV EAX,dword ptr [EBP + -0x60]
00462922  c6459f00                  MOV byte ptr [EBP + -0x61],0x0
00462926  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00462929  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0046292d  7504                      JNZ 0x00462933
0046292f  c6459f01                  MOV byte ptr [EBP + -0x61],0x1
00462933  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
00462936  85c9                      TEST ECX,ECX
00462938  0f842c020000              JZ 0x00462b6a
0046293e  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00462946  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0046294e  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00462956  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0046295e  8b811c0f0000              MOV EAX,dword ptr [ECX + 0xf1c]
00462964  83f8ff                    CMP EAX,-0x1
00462967  0f84b6050000              JZ 0x00462f23
0046296d  51                        PUSH ECX
0046296e  51                        PUSH ECX
0046296f  50                        PUSH EAX
00462970  6a09                      PUSH 0x9
00462972  e899374f00                CALL 0x00956110
00462977  84c0                      TEST AL,AL
00462979  0f84a1050000              JZ 0x00462f20
0046297f  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
00462982  0f57d2                    XORPS XMM2,XMM2
00462985  3bc7                      CMP EAX,EDI
00462987  7510                      JNZ 0x00462999
00462989  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
0046298f  51                        PUSH ECX
00462990  8bc8                      MOV ECX,EAX
00462992  e839592700                CALL 0x006d82d0
00462997  eb0b                      JMP 0x004629a4
00462999  8d4d84                    LEA ECX,[EBP + -0x7c]
0046299c  51                        PUSH ECX
0046299d  8bc8                      MOV ECX,EAX
0046299f  e8fc5b2700                CALL 0x006d85a0
004629a4  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004629a8  f30f101d40b6c700          MOVSS XMM3,dword ptr [0x00c7b640]
004629b0  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004629b5  f30f101544b6c700          MOVSS XMM2,dword ptr [0x00c7b644]
004629bd  0f2ecb                    UCOMISS XMM1,XMM3
004629c0  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
004629c8  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
004629d0  9f                        LAHF
004629d1  f6c444                    TEST AH,0x44
004629d4  7a29                      JP 0x004629ff
004629d6  0f2ec2                    UCOMISS XMM0,XMM2
004629d9  9f                        LAHF
004629da  f6c444                    TEST AH,0x44
004629dd  7a20                      JP 0x004629ff
004629df  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004629e7  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004629ef  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
004629f7  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
004629ff  0f2ecb                    UCOMISS XMM1,XMM3
00462a02  9f                        LAHF
00462a03  f6c444                    TEST AH,0x44
00462a06  7a0d                      JP 0x00462a15
00462a08  0f2ec2                    UCOMISS XMM0,XMM2
00462a0b  9f                        LAHF
00462a0c  f6c444                    TEST AH,0x44
00462a0f  0f8b0b050000              JNP 0x00462f20
00462a15  8d9578ffffff              LEA EDX,[EBP + 0xffffff78]
00462a1b  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
00462a21  e84ac72100                CALL 0x0067f170
00462a26  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00462a2a  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00462a2f  f30f58c9                  ADDSS XMM1,XMM1
00462a33  f30f58c0                  ADDSS XMM0,XMM0
00462a37  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
00462a3f  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00462a47  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00462a51  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00462a58  0f85da050000              JNZ 0x00463038
00462a5e  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00462a64  25000a0001                AND EAX,0x1000a00
00462a69  83c800                    OR EAX,0x0
00462a6c  0f85c6050000              JNZ 0x00463038
00462a72  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
00462a7a  f30f591db8a3ba00          MULSS XMM3,dword ptr [0x00baa3b8]
00462a82  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
00462a89  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
00462a91  9f                        LAHF
00462a92  f6c444                    TEST AH,0x44
00462a95  7b43                      JNP 0x00462ada
00462a97  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00462a9f  0f28c2                    MOVAPS XMM0,XMM2
00462aa2  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
00462aaa  f30f5ec3                  DIVSS XMM0,XMM3
00462aae  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00462ab6  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00462abe  f30f599738030000          MULSS XMM2,dword ptr [EDI + 0x338]
00462ac6  f30f5ed3                  DIVSS XMM2,XMM3
00462aca  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00462ad2  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00462ada  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
00462ae2  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00462aea  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
00462af2  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00462afa  f30f5897b40b0000          ADDSS XMM2,dword ptr [EDI + 0xbb4]
00462b02  f30f105d94                MOVSS XMM3,dword ptr [EBP + -0x6c]
00462b07  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
00462b0f  f30f1197b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM2
00462b17  f30f105580                MOVSS XMM2,dword ptr [EBP + -0x80]
00462b1c  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00462b24  0f28ca                    MOVAPS XMM1,XMM2
00462b27  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00462b2e  0f28c3                    MOVAPS XMM0,XMM3
00462b31  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00462b38  0f2fc8                    COMISS XMM1,XMM0
00462b3b  0f86d1040000              JBE 0x00463012
00462b41  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00462b49  f30f591d20a1ba00          MULSS XMM3,dword ptr [0x00baa120]
00462b51  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00462b59  f30f58d8                  ADDSS XMM3,XMM0
00462b5d  f30f119f40030000          MOVSS dword ptr [EDI + 0x340],XMM3
00462b65  e938050000                JMP 0x004630a2
00462b6a  ff7720                    PUSH dword ptr [EDI + 0x20]
00462b6d  8bcf                      MOV ECX,EDI
00462b6f  6a04                      PUSH 0x4
00462b71  e89a9b2400                CALL 0x006ac710
00462b76  84c0                      TEST AL,AL
00462b78  0f84a2030000              JZ 0x00462f20
00462b7e  807d9f00                  CMP byte ptr [EBP + -0x61],0x0
00462b82  0f8498030000              JZ 0x00462f20
00462b88  8bcf                      MOV ECX,EDI
00462b8a  e8b1bc2500                CALL 0x006be840
00462b8f  8bcf                      MOV ECX,EDI
00462b91  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00462b99  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
00462b9e  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00462ba6  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
00462bab  e890bc2500                CALL 0x006be840
00462bb0  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
00462bb8  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
00462bbd  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
00462bc5  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
00462bca  e891c32800                CALL 0x006eef60
00462bcf  f30f105d80                MOVSS XMM3,dword ptr [EBP + -0x80]
00462bd4  f30f105594                MOVSS XMM2,dword ptr [EBP + -0x6c]
00462bd9  f30f102540cbba00          MOVSS XMM4,dword ptr [0x00bacb40]
00462be1  660f6ec0                  MOVD XMM0,EAX
00462be5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00462be9  c1e81f                    SHR EAX,0x1f
00462bec  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00462bf5  660f5ac8                  CVTPD2PS XMM1,XMM0
00462bf9  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00462c01  f30f590d5ca8ba00          MULSS XMM1,dword ptr [0x00baa85c]
00462c09  0f28c1                    MOVAPS XMM0,XMM1
00462c0c  f30f594da0                MULSS XMM1,dword ptr [EBP + -0x60]
00462c11  f30f5945a4                MULSS XMM0,dword ptr [EBP + -0x5c]
00462c16  f30f584d98                ADDSS XMM1,dword ptr [EBP + -0x68]
00462c1b  f30f584590                ADDSS XMM0,dword ptr [EBP + -0x70]
00462c20  f30f5cd1                  SUBSS XMM2,XMM1
00462c24  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
00462c2c  f30f5cd8                  SUBSS XMM3,XMM0
00462c30  f30f1155a0                MOVSS dword ptr [EBP + -0x60],XMM2
00462c35  0f28c3                    MOVAPS XMM0,XMM3
00462c38  f30f115d8c                MOVSS dword ptr [EBP + -0x74],XMM3
00462c3d  0f54c4                    ANDPS XMM0,XMM4
00462c40  0f2fc8                    COMISS XMM1,XMM0
00462c43  770f                      JA 0x00462c54
00462c45  0f28c2                    MOVAPS XMM0,XMM2
00462c48  0f54c4                    ANDPS XMM0,XMM4
00462c4b  0f2fc8                    COMISS XMM1,XMM0
00462c4e  0f86cc020000              JBE 0x00462f20
00462c54  0f28c2                    MOVAPS XMM0,XMM2
00462c57  0f28cb                    MOVAPS XMM1,XMM3
00462c5a  f30f59c2                  MULSS XMM0,XMM2
00462c5e  f30f59cb                  MULSS XMM1,XMM3
00462c62  f30f58c1                  ADDSS XMM0,XMM1
00462c66  e8e52dfdff                CALL 0x00435a50
00462c6b  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
00462c73  0f28f0                    MOVAPS XMM6,XMM0
00462c76  0f2fce                    COMISS XMM1,XMM6
00462c79  f30f11b57cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM6
00462c81  0f8699020000              JBE 0x00462f20
00462c87  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00462c8f  0f57d2                    XORPS XMM2,XMM2
00462c92  0f2ff2                    COMISS XMM6,XMM2
00462c95  0f8672010000              JBE 0x00462e0d
00462c9b  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
00462ca0  0f57ed                    XORPS XMM5,XMM5
00462ca3  f30f107da0                MOVSS XMM7,dword ptr [EBP + -0x60]
00462ca8  a17816c700                MOV EAX,[0x00c71678]
00462cad  f30f5ec6                  DIVSS XMM0,XMM6
00462cb1  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00462cb7  89856cffffff              MOV dword ptr [EBP + 0xffffff6c],EAX
00462cbd  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
00462cc0  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
00462cc3  894d98                    MOV dword ptr [EBP + -0x68],ECX
00462cc6  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
00462cc9  f30f5efe                  DIVSS XMM7,XMM6
00462ccd  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00462cd5  f30f593d1ca8ba00          MULSS XMM7,dword ptr [0x00baa81c]
00462cdd  f30f105d80                MOVSS XMM3,dword ptr [EBP + -0x80]
00462ce2  f30f106594                MOVSS XMM4,dword ptr [EBP + -0x6c]
00462ce7  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
00462cef  f30f1035d0a2ba00          MOVSS XMM6,dword ptr [0x00baa2d0]
00462cf7  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
00462cfc  f30f117da0                MOVSS dword ptr [EBP + -0x60],XMM7
00462d01  f30f5cd8                  SUBSS XMM3,XMM0
00462d05  33ff                      XOR EDI,EDI
00462d07  0f280570caba00            MOVAPS XMM0,xmmword ptr [0x00baca70]
00462d0e  8d71ff                    LEA ESI,[ECX + -0x1]
00462d11  0f1145cc                  MOVUPS xmmword ptr [EBP + -0x34],XMM0
00462d15  897590                    MOV dword ptr [EBP + -0x70],ESI
00462d18  0f2805d0cbba00            MOVAPS XMM0,xmmword ptr [0x00bacbd0]
00462d1f  f30f5ce7                  SUBSS XMM4,XMM7
00462d23  f30f103d50adba00          MOVSS XMM7,dword ptr [0x00baad50]
00462d2b  0f1145dc                  MOVUPS xmmword ptr [EBP + -0x24],XMM0
00462d2f  90                        NOP
00462d30  0f28c3                    MOVAPS XMM0,XMM3
00462d33  33c0                      XOR EAX,EAX
00462d35  f30f5844fdcc              ADDSS XMM0,dword ptr [EBP + EDI*0x8 + -0x34]
00462d3b  f30f5cc2                  SUBSS XMM0,XMM2
00462d3f  f30f5ec2                  DIVSS XMM0,XMM2
00462d43  f30f58c6                  ADDSS XMM0,XMM6
00462d47  f30f2cc8                  CVTTSS2SI ECX,XMM0
00462d4b  0f28c4                    MOVAPS XMM0,XMM4
00462d4e  f30f5844fdd0              ADDSS XMM0,dword ptr [EBP + EDI*0x8 + -0x30]
00462d54  85c9                      TEST ECX,ECX
00462d56  0f4fc1                    CMOVG EAX,ECX
00462d59  3b4590                    CMP EAX,dword ptr [EBP + -0x70]
00462d5c  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
00462d64  0f4cf0                    CMOVL ESI,EAX
00462d67  33c9                      XOR ECX,ECX
00462d69  f30f5ec2                  DIVSS XMM0,XMM2
00462d6d  f30f58c6                  ADDSS XMM0,XMM6
00462d71  f30f2cd0                  CVTTSS2SI EDX,XMM0
00462d75  85d2                      TEST EDX,EDX
00462d77  0f4fca                    CMOVG ECX,EDX
00462d7a  8b55a4                    MOV EDX,dword ptr [EBP + -0x5c]
00462d7d  4a                        DEC EDX
00462d7e  3bca                      CMP ECX,EDX
00462d80  8bc2                      MOV EAX,EDX
00462d82  0f4cc1                    CMOVL EAX,ECX
00462d85  8b4d98                    MOV ECX,dword ptr [EBP + -0x68]
00462d88  0fafc1                    IMUL EAX,ECX
00462d8b  03c6                      ADD EAX,ESI
00462d8d  3dbf010000                CMP EAX,0x1bf
00462d92  772f                      JA 0x00462dc3
00462d94  8b8d6cffffff              MOV ECX,dword ptr [EBP + 0xffffff6c]
00462d9a  8b84816c070000            MOV EAX,dword ptr [ECX + EAX*0x4 + 0x76c]
00462da1  3dde030000                CMP EAX,0x3de
00462da6  7418                      JZ 0x00462dc0
00462da8  3de8030000                CMP EAX,0x3e8
00462dad  7c05                      JL 0x00462db4
00462daf  0f28cf                    MOVAPS XMM1,XMM7
00462db2  eb0c                      JMP 0x00462dc0
00462db4  85c0                      TEST EAX,EAX
00462db6  7e08                      JLE 0x00462dc0
00462db8  f30f5c0df8a1ba00          SUBSS XMM1,dword ptr [0x00baa1f8]
00462dc0  8b4d98                    MOV ECX,dword ptr [EBP + -0x68]
00462dc3  8b7590                    MOV ESI,dword ptr [EBP + -0x70]
00462dc6  47                        INC EDI
00462dc7  83ff04                    CMP EDI,0x4
00462dca  0f8260ffffff              JC 0x00462d30
00462dd0  f30f582d1ca8ba00          ADDSS XMM5,dword ptr [0x00baa81c]
00462dd8  f30f10857cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff7c]
00462de0  f30f107da0                MOVSS XMM7,dword ptr [EBP + -0x60]
00462de5  0f2fc5                    COMISS XMM0,XMM5
00462de8  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
00462ded  0f870effffff              JA 0x00462d01
00462df3  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
00462dfa  8b7d88                    MOV EDI,dword ptr [EBP + -0x78]
00462dfd  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
00462e02  f30f117da0                MOVSS dword ptr [EBP + -0x60],XMM7
00462e07  0f8613010000              JBE 0x00462f20
00462e0d  6a00                      PUSH 0x0
00462e0f  68000a0001                PUSH 0x1000a00
00462e14  8bcf                      MOV ECX,EDI
00462e16  e81546fbff                CALL 0x00417430
00462e1b  84c0                      TEST AL,AL
00462e1d  0f85fd000000              JNZ 0x00462f20
00462e23  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00462e2b  f30f105d8c                MOVSS XMM3,dword ptr [EBP + -0x74]
00462e30  f30f1055a0                MOVSS XMM2,dword ptr [EBP + -0x60]
00462e35  0f28cb                    MOVAPS XMM1,XMM3
00462e38  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00462e3f  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00462e47  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00462e4f  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00462e57  0f28c2                    MOVAPS XMM0,XMM2
00462e5a  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00462e61  0f2fc8                    COMISS XMM1,XMM0
00462e64  0f57c0                    XORPS XMM0,XMM0
00462e67  7629                      JBE 0x00462e92
00462e69  0f2fc3                    COMISS XMM0,XMM3
00462e6c  7612                      JBE 0x00462e80
00462e6e  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00462e76  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00462e7e  eb2d                      JMP 0x00462ead
00462e80  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00462e88  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00462e90  eb1b                      JMP 0x00462ead
00462e92  0f2fc2                    COMISS XMM0,XMM2
00462e95  760c                      JBE 0x00462ea3
00462e97  c787380300000000803f      MOV dword ptr [EDI + 0x338],0x3f800000
00462ea1  eb0a                      JMP 0x00462ead
00462ea3  c78738030000000080bf      MOV dword ptr [EDI + 0x338],0xbf800000
00462ead  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00462eb5  8d4d88                    LEA ECX,[EBP + -0x78]
00462eb8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00462ebe  f30f58c0                  ADDSS XMM0,XMM0
00462ec2  c74588bb030000            MOV dword ptr [EBP + -0x78],0x3bb
00462ec9  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00462ed1  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00462ed9  f30f58c0                  ADDSS XMM0,XMM0
00462edd  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00462ee5  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00462eef  e88c384f00                CALL 0x00956780
00462ef4  83ec08                    SUB ESP,0x8
00462ef7  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00462eff  c704240000803f            MOV dword ptr [ESP],0x3f800000
00462f06  6a00                      PUSH 0x0
00462f08  6a02                      PUSH 0x2
00462f0a  51                        PUSH ECX
00462f0b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00462f12  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00462f18  ff7588                    PUSH dword ptr [EBP + -0x78]
00462f1b  e810ad4c00                CALL 0x0092dc30
00462f20  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
00462f23  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00462f2a  0f8521fbffff              JNZ 0x00462a51
00462f30  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
00462f36  85c9                      TEST ECX,ECX
00462f38  7417                      JZ 0x00462f51
00462f3a  8b811c0f0000              MOV EAX,dword ptr [ECX + 0xf1c]
00462f40  3bcf                      CMP ECX,EDI
00462f42  89871c0f0000              MOV dword ptr [EDI + 0xf1c],EAX
00462f48  0f95c0                    SETNZ AL
00462f4b  88872c0f0000              MOV byte ptr [EDI + 0xf2c],AL
00462f51  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
00462f58  8d8f14040000              LEA ECX,[EDI + 0x414]
00462f5e  750a                      JNZ 0x00462f6a
00462f60  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00462f68  eb08                      JMP 0x00462f72
00462f6a  f30f1005c4a3ba00          MOVSS XMM0,dword ptr [0x00baa3c4]
00462f72  6a00                      PUSH 0x0
00462f74  51                        PUSH ECX
00462f75  f30f110424                MOVSS dword ptr [ESP],XMM0
00462f7a  e8c1233800                CALL 0x007e5340
00462f7f  837da800                  CMP dword ptr [EBP + -0x58],0x0
00462f83  740d                      JZ 0x00462f92
00462f85  89b71c0f0000              MOV dword ptr [EDI + 0xf1c],ESI
00462f8b  c6872c0f000000            MOV byte ptr [EDI + 0xf2c],0x0
00462f92  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
00462f9a  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
00462fa2  f30f1015c4a3ba00          MOVSS XMM2,dword ptr [0x00baa3c4]
00462faa  0f2edc                    UCOMISS XMM3,XMM4
00462fad  9f                        LAHF
00462fae  f6c444                    TEST AH,0x44
00462fb1  7b16                      JNP 0x00462fc9
00462fb3  0f28cb                    MOVAPS XMM1,XMM3
00462fb6  0f28c3                    MOVAPS XMM0,XMM3
00462fb9  f30f58ca                  ADDSS XMM1,XMM2
00462fbd  f30f59c2                  MULSS XMM0,XMM2
00462fc1  f30f5cc8                  SUBSS XMM1,XMM0
00462fc5  f30f5ed1                  DIVSS XMM2,XMM1
00462fc9  f30f599760030000          MULSS XMM2,dword ptr [EDI + 0x360]
00462fd1  f30f100d90a3ba00          MOVSS XMM1,dword ptr [0x00baa390]
00462fd9  0f2edc                    UCOMISS XMM3,XMM4
00462fdc  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00462fe4  9f                        LAHF
00462fe5  f6c444                    TEST AH,0x44
00462fe8  7b13                      JNP 0x00462ffd
00462fea  0f28c3                    MOVAPS XMM0,XMM3
00462fed  f30f59d9                  MULSS XMM3,XMM1
00462ff1  f30f58c1                  ADDSS XMM0,XMM1
00462ff5  f30f5cc3                  SUBSS XMM0,XMM3
00462ff9  f30f5ec8                  DIVSS XMM1,XMM0
00462ffd  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
00463005  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0046300d  e990000000                JMP 0x004630a2
00463012  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0046301a  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
00463022  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0046302a  f30f58d0                  ADDSS XMM2,XMM0
0046302e  f30f11973c030000          MOVSS dword ptr [EDI + 0x33c],XMM2
00463036  eb6a                      JMP 0x004630a2
00463038  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00463042  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0046304a  f30f118718040000          MOVSS dword ptr [EDI + 0x418],XMM0
00463052  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046305a  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
00463062  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0046306a  f30f118720040000          MOVSS dword ptr [EDI + 0x420],XMM0
00463072  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046307a  f30f118724040000          MOVSS dword ptr [EDI + 0x424],XMM0
00463082  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0046308a  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00463092  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046309a  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004630a2  8b55c0                    MOV EDX,dword ptr [EBP + -0x40]
004630a5  83fa10                    CMP EDX,0x10
004630a8  722e                      JC 0x004630d8
004630aa  8b4dac                    MOV ECX,dword ptr [EBP + -0x54]
004630ad  42                        INC EDX
004630ae  8bc1                      MOV EAX,ECX
004630b0  81fa00100000              CMP EDX,0x1000
004630b6  7216                      JC 0x004630ce
004630b8  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004630bb  83c223                    ADD EDX,0x23
004630be  2bc1                      SUB EAX,ECX
004630c0  83c0fc                    ADD EAX,-0x4
004630c3  83f81f                    CMP EAX,0x1f
004630c6  7606                      JBE 0x004630ce
004630c8  ff159488b100              CALL dword ptr [0x00b18894]
004630ce  52                        PUSH EDX
004630cf  51                        PUSH ECX
004630d0  e887c06800                CALL 0x00aef15c
004630d5  83c408                    ADD ESP,0x8
004630d8  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004630db  64890d00000000            MOV dword ptr FS:[0x0],ECX
004630e2  59                        POP ECX
004630e3  5f                        POP EDI
004630e4  5e                        POP ESI
004630e5  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004630e8  33cd                      XOR ECX,EBP
004630ea  e83cc06800                CALL 0x00aef12b
004630ef  8be5                      MOV ESP,EBP
004630f1  5d                        POP EBP
004630f2  8be3                      MOV ESP,EBX
004630f4  5b                        POP EBX
004630f5  c3                        RET
