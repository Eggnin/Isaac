; J460 NPC AI 0x004c8090 AI_004c8090
; types=274,275
; identities=274.0.0,274.1.0,274.2.0,275.0.0,275.1.0,275.2.0
; entry=004c8090
004c8090  53                        PUSH EBX
004c8091  8bdc                      MOV EBX,ESP
004c8093  83ec08                    SUB ESP,0x8
004c8096  83e4f8                    AND ESP,0xfffffff8
004c8099  83c404                    ADD ESP,0x4
004c809c  55                        PUSH EBP
004c809d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004c80a0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004c80a4  8bec                      MOV EBP,ESP
004c80a6  6aff                      PUSH -0x1
004c80a8  68db36af00                PUSH 0xaf36db
004c80ad  64a100000000              MOV EAX,FS:[0x0]
004c80b3  50                        PUSH EAX
004c80b4  53                        PUSH EBX
004c80b5  81ecc0020000              SUB ESP,0x2c0
004c80bb  a1b493bf00                MOV EAX,[0x00bf93b4]
004c80c0  33c5                      XOR EAX,EBP
004c80c2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004c80c5  56                        PUSH ESI
004c80c6  57                        PUSH EDI
004c80c7  50                        PUSH EAX
004c80c8  8d45f4                    LEA EAX,[EBP + -0xc]
004c80cb  64a300000000              MOV FS:[0x0],EAX
004c80d1  8bf9                      MOV EDI,ECX
004c80d3  89bdc4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EDI
004c80d9  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004c80e0  0f859c000000              JNZ 0x004c8182
004c80e6  818f6801000000000400      OR dword ptr [EDI + 0x168],0x40000
004c80f0  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004c80f6  c787dc00000000000000      MOV dword ptr [EDI + 0xdc],0x0
004c8100  c787e000000000001c42      MOV dword ptr [EDI + 0xe0],0x421c0000
004c810a  c7873c0300000000a043      MOV dword ptr [EDI + 0x33c],0x43a00000
004c8114  c7874003000000008243      MOV dword ptr [EDI + 0x340],0x43820000
004c811e  c787340300000000a043      MOV dword ptr [EDI + 0x334],0x43a00000
004c8128  c7873803000000008243      MOV dword ptr [EDI + 0x338],0x43820000
004c8132  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
004c813c  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
004c8146  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004c8150  c787c40b0000ffffffff      MOV dword ptr [EDI + 0xbc4],0xffffffff
004c815a  c787b80b0000ffffffff      MOV dword ptr [EDI + 0xbb8],0xffffffff
004c8164  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004c816b  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004c8171  c787640b000002000000      MOV dword ptr [EDI + 0xb64],0x2
004c817b  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
004c8182  c78584fdffff00000000      MOV dword ptr [EBP + 0xfffffd84],0x0
004c818c  c78588fdffff00000000      MOV dword ptr [EBP + 0xfffffd88],0x0
004c8196  c68570fdffff00            MOV byte ptr [EBP + 0xfffffd70],0x0
004c819d  c78574fdffff00000000      MOV dword ptr [EBP + 0xfffffd74],0x0
004c81a7  c78578fdffff00000000      MOV dword ptr [EBP + 0xfffffd78],0x0
004c81b1  c7857cfdffff00000000      MOV dword ptr [EBP + 0xfffffd7c],0x0
004c81bb  6a00                      PUSH 0x0
004c81bd  6a00                      PUSH 0x0
004c81bf  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004c81c6  a17816c700                MOV EAX,[0x00c71678]
004c81cb  6aff                      PUSH -0x1
004c81cd  6a01                      PUSH 0x1
004c81cf  6812010000                PUSH 0x112
004c81d4  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c81da  8d8560fdffff              LEA EAX,[EBP + 0xfffffd60]
004c81e0  81c118120000              ADD ECX,0x1218
004c81e6  50                        PUSH EAX
004c81e7  e8742df5ff                CALL 0x0041af60
004c81ec  80bd60fdffff00            CMP byte ptr [EBP + 0xfffffd60],0x0
004c81f3  8bc8                      MOV ECX,EAX
004c81f5  c68570fdffff01            MOV byte ptr [EBP + 0xfffffd70],0x1
004c81fc  8b5104                    MOV EDX,dword ptr [ECX + 0x4]
004c81ff  8b4108                    MOV EAX,dword ptr [ECX + 0x8]
004c8202  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
004c8205  8995b4fdffff              MOV dword ptr [EBP + 0xfffffdb4],EDX
004c820b  899574fdffff              MOV dword ptr [EBP + 0xfffffd74],EDX
004c8211  898578fdffff              MOV dword ptr [EBP + 0xfffffd78],EAX
004c8217  89b57cfdffff              MOV dword ptr [EBP + 0xfffffd7c],ESI
004c821d  7522                      JNZ 0x004c8241
004c821f  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004c8223  b101                      MOV CL,0x1
004c8225  8b9564fdffff              MOV EDX,dword ptr [EBP + 0xfffffd64]
004c822b  6a00                      PUSH 0x0
004c822d  6a00                      PUSH 0x0
004c822f  e87cc65900                CALL 0x00a648b0
004c8234  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004c8238  83c408                    ADD ESP,0x8
004c823b  8b95b4fdffff              MOV EDX,dword ptr [EBP + 0xfffffdb4]
004c8241  85f6                      TEST ESI,ESI
004c8243  741e                      JZ 0x004c8263
004c8245  6a00                      PUSH 0x0
004c8247  68acd6c500                PUSH 0xc5d6ac
004c824c  68dcd5c500                PUSH 0xc5d5dc
004c8251  6a00                      PUSH 0x0
004c8253  ff32                      PUSH dword ptr [EDX]
004c8255  e857866200                CALL 0x00af08b1
004c825a  83c414                    ADD ESP,0x14
004c825d  898584fdffff              MOV dword ptr [EBP + 0xfffffd84],EAX
004c8263  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c8269  8d8530fdffff              LEA EAX,[EBP + 0xfffffd30]
004c826f  6a00                      PUSH 0x0
004c8271  6a00                      PUSH 0x0
004c8273  6aff                      PUSH -0x1
004c8275  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004c827b  6a02                      PUSH 0x2
004c827d  6812010000                PUSH 0x112
004c8282  81c118120000              ADD ECX,0x1218
004c8288  50                        PUSH EAX
004c8289  e8d22cf5ff                CALL 0x0041af60
004c828e  80bd30fdffff00            CMP byte ptr [EBP + 0xfffffd30],0x0
004c8295  c68570fdffff01            MOV byte ptr [EBP + 0xfffffd70],0x1
004c829c  8b5004                    MOV EDX,dword ptr [EAX + 0x4]
004c829f  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004c82a2  8b700c                    MOV ESI,dword ptr [EAX + 0xc]
004c82a5  8995b4fdffff              MOV dword ptr [EBP + 0xfffffdb4],EDX
004c82ab  899574fdffff              MOV dword ptr [EBP + 0xfffffd74],EDX
004c82b1  898d78fdffff              MOV dword ptr [EBP + 0xfffffd78],ECX
004c82b7  89b57cfdffff              MOV dword ptr [EBP + 0xfffffd7c],ESI
004c82bd  7522                      JNZ 0x004c82e1
004c82bf  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
004c82c3  b101                      MOV CL,0x1
004c82c5  8b9534fdffff              MOV EDX,dword ptr [EBP + 0xfffffd34]
004c82cb  6a00                      PUSH 0x0
004c82cd  6a00                      PUSH 0x0
004c82cf  e8dcc55900                CALL 0x00a648b0
004c82d4  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004c82d8  83c408                    ADD ESP,0x8
004c82db  8b95b4fdffff              MOV EDX,dword ptr [EBP + 0xfffffdb4]
004c82e1  85f6                      TEST ESI,ESI
004c82e3  7422                      JZ 0x004c8307
004c82e5  6a00                      PUSH 0x0
004c82e7  68acd6c500                PUSH 0xc5d6ac
004c82ec  68dcd5c500                PUSH 0xc5d5dc
004c82f1  6a00                      PUSH 0x0
004c82f3  ff32                      PUSH dword ptr [EDX]
004c82f5  e8b7856200                CALL 0x00af08b1
004c82fa  8bf0                      MOV ESI,EAX
004c82fc  83c414                    ADD ESP,0x14
004c82ff  89b588fdffff              MOV dword ptr [EBP + 0xfffffd88],ESI
004c8305  eb02                      JMP 0x004c8309
004c8307  33f6                      XOR ESI,ESI
004c8309  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004c8310  817f2812010000            CMP dword ptr [EDI + 0x28],0x112
004c8317  c785b4fdffff1e000000      MOV dword ptr [EBP + 0xfffffdb4],0x1e
004c8321  0f8588010000              JNZ 0x004c84af
004c8327  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004c832e  0f8582010000              JNZ 0x004c84b6
004c8334  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
004c833b  0f846e010000              JZ 0x004c84af
004c8341  83bd84fdffff00            CMP dword ptr [EBP + 0xfffffd84],0x0
004c8348  740c                      JZ 0x004c8356
004c834a  c687c20b000000            MOV byte ptr [EDI + 0xbc2],0x0
004c8351  e9a4000000                JMP 0x004c83fa
004c8356  a17816c700                MOV EAX,[0x00c71678]
004c835b  8a8fc20b0000              MOV CL,byte ptr [EDI + 0xbc2]
004c8361  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004c8367  99                        CDQ
004c8368  f7bdb4fdffff              IDIV dword ptr [EBP + 0xfffffdb4]
004c836e  85d2                      TEST EDX,EDX
004c8370  7508                      JNZ 0x004c837a
004c8372  fec1                      INC CL
004c8374  888fc20b0000              MOV byte ptr [EDI + 0xbc2],CL
004c837a  80f91e                    CMP CL,0x1e
004c837d  727b                      JC 0x004c83fa
004c837f  e8dc6b2200                CALL 0x006eef60
004c8384  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004c838c  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c8394  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
004c839c  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
004c83a4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c83aa  6a00                      PUSH 0x0
004c83ac  68acd6c500                PUSH 0xc5d6ac
004c83b1  68dcd5c500                PUSH 0xc5d5dc
004c83b6  6a00                      PUSH 0x0
004c83b8  50                        PUSH EAX
004c83b9  6a00                      PUSH 0x0
004c83bb  57                        PUSH EDI
004c83bc  6840b6c700                PUSH 0xc7b640
004c83c1  8d85acfdffff              LEA EAX,[EBP + 0xfffffdac]
004c83c7  f30f118dacfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM1
004c83cf  50                        PUSH EAX
004c83d0  6a01                      PUSH 0x1
004c83d2  6812010000                PUSH 0x112
004c83d7  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
004c83df  e83c07f6ff                CALL 0x00428b20
004c83e4  50                        PUSH EAX
004c83e5  e8c7846200                CALL 0x00af08b1
004c83ea  8bc8                      MOV ECX,EAX
004c83ec  83c414                    ADD ESP,0x14
004c83ef  898d84fdffff              MOV dword ptr [EBP + 0xfffffd84],ECX
004c83f5  8b01                      MOV EAX,dword ptr [ECX]
004c83f7  ff500c                    CALL dword ptr [EAX + 0xc]
004c83fa  85f6                      TEST ESI,ESI
004c83fc  740c                      JZ 0x004c840a
004c83fe  c687c30b000000            MOV byte ptr [EDI + 0xbc3],0x0
004c8405  e9a5000000                JMP 0x004c84af
004c840a  a17816c700                MOV EAX,[0x00c71678]
004c840f  be1e000000                MOV ESI,0x1e
004c8414  8a8fc30b0000              MOV CL,byte ptr [EDI + 0xbc3]
004c841a  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004c8420  99                        CDQ
004c8421  f7fe                      IDIV ESI
004c8423  85d2                      TEST EDX,EDX
004c8425  7508                      JNZ 0x004c842f
004c8427  fec1                      INC CL
004c8429  888fc30b0000              MOV byte ptr [EDI + 0xbc3],CL
004c842f  80f91e                    CMP CL,0x1e
004c8432  727b                      JC 0x004c84af
004c8434  e8276b2200                CALL 0x006eef60
004c8439  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004c8441  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c8449  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
004c8451  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
004c8459  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c845f  6a00                      PUSH 0x0
004c8461  68acd6c500                PUSH 0xc5d6ac
004c8466  68dcd5c500                PUSH 0xc5d5dc
004c846b  6a00                      PUSH 0x0
004c846d  50                        PUSH EAX
004c846e  6a00                      PUSH 0x0
004c8470  57                        PUSH EDI
004c8471  6840b6c700                PUSH 0xc7b640
004c8476  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
004c847c  f30f118d9cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM1
004c8484  50                        PUSH EAX
004c8485  6a02                      PUSH 0x2
004c8487  6812010000                PUSH 0x112
004c848c  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
004c8494  e88706f6ff                CALL 0x00428b20
004c8499  50                        PUSH EAX
004c849a  e812846200                CALL 0x00af08b1
004c849f  8bc8                      MOV ECX,EAX
004c84a1  83c414                    ADD ESP,0x14
004c84a4  898d88fdffff              MOV dword ptr [EBP + 0xfffffd88],ECX
004c84aa  8b01                      MOV EAX,dword ptr [ECX]
004c84ac  ff500c                    CALL dword ptr [EAX + 0xc]
004c84af  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004c84b6  8b35dc87b100              MOV ESI,dword ptr [0x00b187dc]
004c84bc  89b5c0fdffff              MOV dword ptr [EBP + 0xfffffdc0],ESI
004c84c2  0f849c010000              JZ 0x004c8664
004c84c8  8b8d84fdffff              MOV ECX,dword ptr [EBP + 0xfffffd84]
004c84ce  85c9                      TEST ECX,ECX
004c84d0  7457                      JZ 0x004c8529
004c84d2  8b01                      MOV EAX,dword ptr [ECX]
004c84d4  8d5580                    LEA EDX,[EBP + -0x80]
004c84d7  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
004c84df  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004c84e7  52                        PUSH EDX
004c84e8  c7458000000000            MOV dword ptr [EBP + -0x80],0x0
004c84ef  c7458400000000            MOV dword ptr [EBP + -0x7c],0x0
004c84f6  c7458800000000            MOV dword ptr [EBP + -0x78],0x0
004c84fd  c7458c00000000            MOV dword ptr [EBP + -0x74],0x0
004c8504  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
004c8509  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004c850e  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
004c8513  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004c8518  c745a000000000            MOV dword ptr [EBP + -0x60],0x0
004c851f  c745a400000000            MOV dword ptr [EBP + -0x5c],0x0
004c8526  ff5024                    CALL dword ptr [EAX + 0x24]
004c8529  8b8d88fdffff              MOV ECX,dword ptr [EBP + 0xfffffd88]
004c852f  85c9                      TEST ECX,ECX
004c8531  7457                      JZ 0x004c858a
004c8533  8b01                      MOV EAX,dword ptr [ECX]
004c8535  8d55c0                    LEA EDX,[EBP + -0x40]
004c8538  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
004c8540  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004c8548  52                        PUSH EDX
004c8549  c745c000000000            MOV dword ptr [EBP + -0x40],0x0
004c8550  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
004c8557  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
004c855e  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
004c8565  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
004c856a  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004c856f  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
004c8574  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004c8579  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004c8580  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004c8587  ff5024                    CALL dword ptr [EAX + 0x24]
004c858a  f30f101dc4abba00          MOVSS XMM3,dword ptr [0x00baabc4]
004c8592  8d973c030000              LEA EDX,[EDI + 0x33c]
004c8598  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004c85a2  8b02                      MOV EAX,dword ptr [EDX]
004c85a4  898734030000              MOV dword ptr [EDI + 0x334],EAX
004c85aa  8b4204                    MOV EAX,dword ptr [EDX + 0x4]
004c85ad  898738030000              MOV dword ptr [EDI + 0x338],EAX
004c85b3  a17816c700                MOV EAX,[0x00c71678]
004c85b8  6a02                      PUSH 0x2
004c85ba  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
004c85c1  52                        PUSH EDX
004c85c2  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c85c8  8d8540fdffff              LEA EAX,[EBP + 0xfffffd40]
004c85ce  81c118120000              ADD ECX,0x1218
004c85d4  50                        PUSH EAX
004c85d5  e8b621f5ff                CALL 0x0041a790
004c85da  33c9                      XOR ECX,ECX
004c85dc  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
004c85e3  398d4cfdffff              CMP dword ptr [EBP + 0xfffffd4c],ECX
004c85e9  761e                      JBE 0x004c8609
004c85eb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004c85f0  8b8544fdffff              MOV EAX,dword ptr [EBP + 0xfffffd44]
004c85f6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004c85f9  41                        INC ECX
004c85fa  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
004c8601  3b8d4cfdffff              CMP ECX,dword ptr [EBP + 0xfffffd4c]
004c8607  72e7                      JC 0x004c85f0
004c8609  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004c860f  ff772c                    PUSH dword ptr [EDI + 0x2c]
004c8612  ff7728                    PUSH dword ptr [EDI + 0x28]
004c8615  8d4914                    LEA ECX,[ECX + 0x14]
004c8618  e893264600                CALL 0x0092acb0
004c861d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004c8624  80bd40fdffff00            CMP byte ptr [EBP + 0xfffffd40],0x0
004c862b  7537                      JNZ 0x004c8664
004c862d  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
004c8633  85d2                      TEST EDX,EDX
004c8635  7405                      JZ 0x004c863c
004c8637  83c230                    ADD EDX,0x30
004c863a  eb05                      JMP 0x004c8641
004c863c  ba18f6c700                MOV EDX,0xc7f618
004c8641  8b8d44fdffff              MOV ECX,dword ptr [EBP + 0xfffffd44]
004c8647  85c9                      TEST ECX,ECX
004c8649  7412                      JZ 0x004c865d
004c864b  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
004c864e  83c1fc                    ADD ECX,-0x4
004c8651  2902                      SUB dword ptr [EDX],EAX
004c8653  51                        PUSH ECX
004c8654  835a0400                  SBB dword ptr [EDX + 0x4],0x0
004c8658  ffd6                      CALL ESI
004c865a  83c404                    ADD ESP,0x4
004c865d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004c8664  a17816c700                MOV EAX,[0x00c71678]
004c8669  ba08000000                MOV EDX,0x8
004c866e  c785b4fdffff00000000      MOV dword ptr [EBP + 0xfffffdb4],0x0
004c8678  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004c867e  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004c8684  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c868a  83b86412000000            CMP dword ptr [EAX + 0x1264],0x0
004c8691  0f86b9000000              JBE 0x004c8750
004c8697  33ff                      XOR EDI,EDI
004c8699  0f1f8000000000            NOP dword ptr [EAX]
004c86a0  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
004c86a6  8b0cb8                    MOV ECX,dword ptr [EAX + EDI*0x4]
004c86a9  a17816c700                MOV EAX,[0x00c71678]
004c86ae  898dccfdffff              MOV dword ptr [EBP + 0xfffffdcc],ECX
004c86b4  8d7128                    LEA ESI,[ECX + 0x28]
004c86b7  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004c86be  7c05                      JL 0x004c86c5
004c86c0  833e01                    CMP dword ptr [ESI],0x1
004c86c3  740c                      JZ 0x004c86d1
004c86c5  8b06                      MOV EAX,dword ptr [ESI]
004c86c7  83e80a                    SUB EAX,0xa
004c86ca  3ddd030000                CMP EAX,0x3dd
004c86cf  7766                      JA 0x004c8737
004c86d1  8b01                      MOV EAX,dword ptr [ECX]
004c86d3  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
004c86d6  ffd0                      CALL EAX
004c86d8  84c0                      TEST AL,AL
004c86da  7455                      JZ 0x004c8731
004c86dc  8b0e                      MOV ECX,dword ptr [ESI]
004c86de  81f962030000              CMP ECX,0x362
004c86e4  744b                      JZ 0x004c8731
004c86e6  8b85ccfdffff              MOV EAX,dword ptr [EBP + 0xfffffdcc]
004c86ec  8b8068010000              MOV EAX,dword ptr [EAX + 0x168]
004c86f2  2500000020                AND EAX,0x20000000
004c86f7  83c800                    OR EAX,0x0
004c86fa  7535                      JNZ 0x004c8731
004c86fc  81f912010000              CMP ECX,0x112
004c8702  742d                      JZ 0x004c8731
004c8704  8b95bcfdffff              MOV EDX,dword ptr [EBP + 0xfffffdbc]
004c870a  81f913010000              CMP ECX,0x113
004c8710  7425                      JZ 0x004c8737
004c8712  ff85b4fdffff              INC dword ptr [EBP + 0xfffffdb4]
004c8718  83f913                    CMP ECX,0x13
004c871b  7509                      JNZ 0x004c8726
004c871d  4a                        DEC EDX
004c871e  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004c8724  eb11                      JMP 0x004c8737
004c8726  83ea04                    SUB EDX,0x4
004c8729  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004c872f  eb06                      JMP 0x004c8737
004c8731  8b95bcfdffff              MOV EDX,dword ptr [EBP + 0xfffffdbc]
004c8737  8b85d4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdd4]
004c873d  47                        INC EDI
004c873e  3bb864120000              CMP EDI,dword ptr [EAX + 0x1264]
004c8744  0f8256ffffff              JC 0x004c86a0
004c874a  8bbdc4fdffff              MOV EDI,dword ptr [EBP + 0xfffffdc4]
004c8750  f30f103580a3ba00          MOVSS XMM6,dword ptr [0x00baa380]
004c8758  33c0                      XOR EAX,EAX
004c875a  f30f102504a3ba00          MOVSS XMM4,dword ptr [0x00baa304]
004c8762  85d2                      TEST EDX,EDX
004c8764  f30f102dd0a2ba00          MOVSS XMM5,dword ptr [0x00baa2d0]
004c876c  f30f1015d4a1ba00          MOVSS XMM2,dword ptr [0x00baa1d4]
004c8774  0f48d0                    CMOVS EDX,EAX
004c8777  83bf640b00000d            CMP dword ptr [EDI + 0xb64],0xd
004c877e  f30f103d54a4ba00          MOVSS XMM7,dword ptr [0x00baa454]
004c8786  f30f101d28a5ba00          MOVSS XMM3,dword ptr [0x00baa528]
004c878e  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004c8794  0f84ee010000              JZ 0x004c8988
004c879a  817f2812010000            CMP dword ptr [EDI + 0x28],0x112
004c87a1  0f85e1010000              JNZ 0x004c8988
004c87a7  8a87c00b0000              MOV AL,byte ptr [EDI + 0xbc0]
004c87ad  84c0                      TEST AL,AL
004c87af  7522                      JNZ 0x004c87d3
004c87b1  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
004c87b9  0f28c1                    MOVAPS XMM0,XMM1
004c87bc  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004c87c4  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004c87cb  762c                      JBE 0x004c87f9
004c87cd  f30f59ce                  MULSS XMM1,XMM6
004c87d1  eb52                      JMP 0x004c8825
004c87d3  3c01                      CMP AL,0x1
004c87d5  7522                      JNZ 0x004c87f9
004c87d7  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
004c87df  0f28c1                    MOVAPS XMM0,XMM1
004c87e2  f30f59c4                  MULSS XMM0,XMM4
004c87e6  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004c87ed  0f8695010000              JBE 0x004c8988
004c87f3  f30f59cd                  MULSS XMM1,XMM5
004c87f7  eb2c                      JMP 0x004c8825
004c87f9  3c02                      CMP AL,0x2
004c87fb  0f8587010000              JNZ 0x004c8988
004c8801  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
004c8809  0f28c1                    MOVAPS XMM0,XMM1
004c880c  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004c8814  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004c881b  0f8667010000              JBE 0x004c8988
004c8821  f30f59ca                  MULSS XMM1,XMM2
004c8825  f30f118f80030000          MOVSS dword ptr [EDI + 0x380],XMM1
004c882d  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004c8837  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004c8841  c687c10b000000            MOV byte ptr [EDI + 0xbc1],0x0
004c8848  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004c884e  f30f11bdccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM7
004c8856  83f812                    CMP EAX,0x12
004c8859  750a                      JNZ 0x004c8865
004c885b  f30f119dccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM3
004c8863  eb0d                      JMP 0x004c8872
004c8865  83f813                    CMP EAX,0x13
004c8868  7508                      JNZ 0x004c8872
004c886a  f30f11adccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM5
004c8872  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c8878  8d8dd4fdffff              LEA ECX,[EBP + 0xfffffdd4]
004c887e  c785d4fdfffff2000000      MOV dword ptr [EBP + 0xfffffdd4],0xf2
004c8888  e8f3de4800                CALL 0x00956780
004c888d  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004c8895  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c889b  83ec08                    SUB ESP,0x8
004c889e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c88a6  f30f110424                MOVSS dword ptr [ESP],XMM0
004c88ab  6a00                      PUSH 0x0
004c88ad  6a78                      PUSH 0x78
004c88af  51                        PUSH ECX
004c88b0  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c88b7  ffb5d4fdffff              PUSH dword ptr [EBP + 0xfffffdd4]
004c88bd  e86e534600                CALL 0x0092dc30
004c88c2  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004c88ca  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004c88d0  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004c88d8  83f812                    CMP EAX,0x12
004c88db  750a                      JNZ 0x004c88e7
004c88dd  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004c88e5  eb0d                      JMP 0x004c88f4
004c88e7  83f813                    CMP EAX,0x13
004c88ea  7510                      JNZ 0x004c88fc
004c88ec  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004c88f4  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004c88fc  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c8902  8d8dd4fdffff              LEA ECX,[EBP + 0xfffffdd4]
004c8908  c785d4fdfffff3000000      MOV dword ptr [EBP + 0xfffffdd4],0xf3
004c8912  e869de4800                CALL 0x00956780
004c8917  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004c891f  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c8925  83ec08                    SUB ESP,0x8
004c8928  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c8930  f30f110424                MOVSS dword ptr [ESP],XMM0
004c8935  6a00                      PUSH 0x0
004c8937  6a78                      PUSH 0x78
004c8939  51                        PUSH ECX
004c893a  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c8941  ffb5d4fdffff              PUSH dword ptr [EBP + 0xfffffdd4]
004c8947  e8e4524600                CALL 0x0092dc30
004c894c  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
004c8952  85c0                      TEST EAX,EAX
004c8954  7414                      JZ 0x004c896a
004c8956  c780640b00000d000000      MOV dword ptr [EAX + 0xb64],0xd
004c8960  c7801004000000000000      MOV dword ptr [EAX + 0x410],0x0
004c896a  8b8588fdffff              MOV EAX,dword ptr [EBP + 0xfffffd88]
004c8970  85c0                      TEST EAX,EAX
004c8972  7414                      JZ 0x004c8988
004c8974  c780640b00000d000000      MOV dword ptr [EAX + 0xb64],0xd
004c897e  c7801004000000000000      MOV dword ptr [EAX + 0x410],0x0
004c8988  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c898e  f30f102d54a8ba00          MOVSS XMM5,dword ptr [0x00baa854]
004c8996  83f802                    CMP EAX,0x2
004c8999  0f85ec080000              JNZ 0x004c928b
004c899f  817f2813010000            CMP dword ptr [EDI + 0x28],0x113
004c89a6  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004c89ad  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004c89b7  0f856f020000              JNZ 0x004c8c2c
004c89bd  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c89c0  85f6                      TEST ESI,ESI
004c89c2  743f                      JZ 0x004c8a03
004c89c4  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
004c89cc  83ec08                    SUB ESP,0x8
004c89cf  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004c89d7  d985ccfdffff              FLD dword ptr [EBP + 0xfffffdcc]
004c89dd  dd1c24                    FSTP qword ptr [ESP]
004c89e0  e8327f6200                CALL 0x00af0917
004c89e5  8b4e30                    MOV ECX,dword ptr [ESI + 0x30]
004c89e8  83c408                    ADD ESP,0x8
004c89eb  f30f102d54a8ba00          MOVSS XMM5,dword ptr [0x00baa854]
004c89f3  d99dccfdffff              FSTP dword ptr [EBP + 0xfffffdcc]
004c89f9  f30f2c85ccfdffff          CVTTSS2SI EAX,dword ptr [EBP + 0xfffffdcc]
004c8a01  eb05                      JMP 0x004c8a08
004c8a03  83c8ff                    OR EAX,0xffffffff
004c8a06  33c9                      XOR ECX,ECX
004c8a08  660f6ec9                  MOVD XMM1,ECX
004c8a0c  0f5bc9                    CVTDQ2PS XMM1,XMM1
004c8a0f  660f6ed8                  MOVD XMM3,EAX
004c8a13  0f28c1                    MOVAPS XMM0,XMM1
004c8a16  f30f118dd4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM1
004c8a1e  f30f5cc5                  SUBSS XMM0,XMM5
004c8a22  0f5bdb                    CVTDQ2PS XMM3,XMM3
004c8a25  0f2ec1                    UCOMISS XMM0,XMM1
004c8a28  f30f119dc4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM3
004c8a30  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004c8a38  9f                        LAHF
004c8a39  f6c444                    TEST AH,0x44
004c8a3c  7a27                      JP 0x004c8a65
004c8a3e  68d81bb800                PUSH 0xb81bd8
004c8a43  6a10                      PUSH 0x10
004c8a45  e876885400                CALL 0x00a112c0
004c8a4a  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004c8a52  83c408                    ADD ESP,0x8
004c8a55  f30f108dd4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdd4]
004c8a5d  f30f109dc4fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdc4]
004c8a65  f30f5cc8                  SUBSS XMM1,XMM0
004c8a69  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004c8a71  f30f5cd8                  SUBSS XMM3,XMM0
004c8a75  f30f103514abba00          MOVSS XMM6,dword ptr [0x00baab14]
004c8a7d  f30f102da4aaba00          MOVSS XMM5,dword ptr [0x00baaaa4]
004c8a85  f30f5cd6                  SUBSS XMM2,XMM6
004c8a89  f30f5ed9                  DIVSS XMM3,XMM1
004c8a8d  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
004c8a95  f30f5f1de49fba00          MAXSS XMM3,dword ptr [0x00ba9fe4]
004c8a9d  f30f5d1d54a4ba00          MINSS XMM3,dword ptr [0x00baa454]
004c8aa5  0f28c3                    MOVAPS XMM0,XMM3
004c8aa8  f30f58c3                  ADDSS XMM0,XMM3
004c8aac  f30f5cc8                  SUBSS XMM1,XMM0
004c8ab0  0f28c3                    MOVAPS XMM0,XMM3
004c8ab3  f30f59c3                  MULSS XMM0,XMM3
004c8ab7  f30f59c8                  MULSS XMM1,XMM0
004c8abb  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004c8ac3  f30f5cc5                  SUBSS XMM0,XMM5
004c8ac7  f30f59d1                  MULSS XMM2,XMM1
004c8acb  f30f59c1                  MULSS XMM0,XMM1
004c8acf  f30f58d6                  ADDSS XMM2,XMM6
004c8ad3  f30f58c5                  ADDSS XMM0,XMM5
004c8ad7  f30f11973c030000          MOVSS dword ptr [EDI + 0x33c],XMM2
004c8adf  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
004c8ae7  0f28c3                    MOVAPS XMM0,XMM3
004c8aea  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004c8af2  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004c8afa  f30f5cd6                  SUBSS XMM2,XMM6
004c8afe  f30f5c1d54a4ba00          SUBSS XMM3,dword ptr [0x00baa454]
004c8b06  f30f5ccd                  SUBSS XMM1,XMM5
004c8b0a  f30f5905a8adba00          MULSS XMM0,dword ptr [0x00baada8]
004c8b12  f30f5e1554a8ba00          DIVSS XMM2,dword ptr [0x00baa854]
004c8b1a  f30f5e0d54a8ba00          DIVSS XMM1,dword ptr [0x00baa854]
004c8b22  f30f59c3                  MULSS XMM0,XMM3
004c8b26  f30f59d0                  MULSS XMM2,XMM0
004c8b2a  f30f59c8                  MULSS XMM1,XMM0
004c8b2e  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004c8b36  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004c8b3e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c8b42  7505                      JNZ 0x004c8b49
004c8b44  83c8ff                    OR EAX,0xffffffff
004c8b47  eb32                      JMP 0x004c8b7b
004c8b49  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
004c8b51  83ec08                    SUB ESP,0x8
004c8b54  f30f1185d4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM0
004c8b5c  d985d4fdffff              FLD dword ptr [EBP + 0xfffffdd4]
004c8b62  dd1c24                    FSTP qword ptr [ESP]
004c8b65  e8ad7d6200                CALL 0x00af0917
004c8b6a  d99dd4fdffff              FSTP dword ptr [EBP + 0xfffffdd4]
004c8b70  f30f2c85d4fdffff          CVTTSS2SI EAX,dword ptr [EBP + 0xfffffdd4]
004c8b78  83c408                    ADD ESP,0x8
004c8b7b  f30f108dccfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdcc]
004c8b83  660f6ec0                  MOVD XMM0,EAX
004c8b87  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c8b8a  0f2fc8                    COMISS XMM1,XMM0
004c8b8d  0f8699000000              JBE 0x004c8c2c
004c8b93  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c8b99  6a05                      PUSH 0x5
004c8b9b  e8d0aa2300                CALL 0x00703670
004c8ba0  a17816c700                MOV EAX,[0x00c71678]
004c8ba5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004c8bab  8bb0f8110000              MOV ESI,dword ptr [EAX + 0x11f8]
004c8bb1  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
004c8bb8  7572                      JNZ 0x004c8c2c
004c8bba  8b4654                    MOV EAX,dword ptr [ESI + 0x54]
004c8bbd  8b4e58                    MOV ECX,dword ptr [ESI + 0x58]
004c8bc0  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c8bc6  3bc8                      CMP ECX,EAX
004c8bc8  7533                      JNZ 0x004c8bfd
004c8bca  85c9                      TEST ECX,ECX
004c8bcc  7f1b                      JG 0x004c8be9
004c8bce  6878bbb700                PUSH 0xb7bb78
004c8bd3  6a10                      PUSH 0x10
004c8bd5  e8e6865400                CALL 0x00a112c0
004c8bda  8b4654                    MOV EAX,dword ptr [ESI + 0x54]
004c8bdd  83c408                    ADD ESP,0x8
004c8be0  8b4e58                    MOV ECX,dword ptr [ESI + 0x58]
004c8be3  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c8be9  8b465c                    MOV EAX,dword ptr [ESI + 0x5c]
004c8bec  40                        INC EAX
004c8bed  99                        CDQ
004c8bee  f7bdd4fdffff              IDIV dword ptr [EBP + 0xfffffdd4]
004c8bf4  49                        DEC ECX
004c8bf5  89565c                    MOV dword ptr [ESI + 0x5c],EDX
004c8bf8  894e58                    MOV dword ptr [ESI + 0x58],ECX
004c8bfb  eb09                      JMP 0x004c8c06
004c8bfd  8b565c                    MOV EDX,dword ptr [ESI + 0x5c]
004c8c00  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c8c06  8d040a                    LEA EAX,[EDX + ECX*0x1]
004c8c09  99                        CDQ
004c8c0a  f7bdd4fdffff              IDIV dword ptr [EBP + 0xfffffdd4]
004c8c10  8b4650                    MOV EAX,dword ptr [ESI + 0x50]
004c8c13  c704d00000a043            MOV dword ptr [EAX + EDX*0x8],0x43a00000
004c8c1a  c744d00400005243          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x43520000
004c8c22  ff4658                    INC dword ptr [ESI + 0x58]
004c8c25  c6868c00000001            MOV byte ptr [ESI + 0x8c],0x1
004c8c2c  a17816c700                MOV EAX,[0x00c71678]
004c8c31  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004c8c37  8b86381c0000              MOV EAX,dword ptr [ESI + 0x1c38]
004c8c3d  81c6041c0000              ADD ESI,0x1c04
004c8c43  89b5d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],ESI
004c8c49  8985c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EAX
004c8c4f  85c0                      TEST EAX,EAX
004c8c51  0f84d1040000              JZ 0x004c9128
004c8c57  807e4400                  CMP byte ptr [ESI + 0x44],0x0
004c8c5b  0f8531020000              JNZ 0x004c8e92
004c8c61  8b7014                    MOV ESI,dword ptr [EAX + 0x14]
004c8c64  8bc8                      MOV ECX,EAX
004c8c66  83fe10                    CMP ESI,0x10
004c8c69  7202                      JC 0x004c8c6d
004c8c6b  8b08                      MOV ECX,dword ptr [EAX]
004c8c6d  babc01b600                MOV EDX,0xb601bc
004c8c72  8a01                      MOV AL,byte ptr [ECX]
004c8c74  3a02                      CMP AL,byte ptr [EDX]
004c8c76  8885cbfdffff              MOV byte ptr [EBP + 0xfffffdcb],AL
004c8c7c  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
004c8c82  7530                      JNZ 0x004c8cb4
004c8c84  80bdcbfdffff00            CMP byte ptr [EBP + 0xfffffdcb],0x0
004c8c8b  7423                      JZ 0x004c8cb0
004c8c8d  8a4101                    MOV AL,byte ptr [ECX + 0x1]
004c8c90  3a4201                    CMP AL,byte ptr [EDX + 0x1]
004c8c93  8885cbfdffff              MOV byte ptr [EBP + 0xfffffdcb],AL
004c8c99  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
004c8c9f  7513                      JNZ 0x004c8cb4
004c8ca1  83c102                    ADD ECX,0x2
004c8ca4  83c202                    ADD EDX,0x2
004c8ca7  80bdcbfdffff00            CMP byte ptr [EBP + 0xfffffdcb],0x0
004c8cae  75c2                      JNZ 0x004c8c72
004c8cb0  33c9                      XOR ECX,ECX
004c8cb2  eb05                      JMP 0x004c8cb9
004c8cb4  1bc9                      SBB ECX,ECX
004c8cb6  83c901                    OR ECX,0x1
004c8cb9  85c9                      TEST ECX,ECX
004c8cbb  0f85c1010000              JNZ 0x004c8e82
004c8cc1  8bc8                      MOV ECX,EAX
004c8cc3  83fe10                    CMP ESI,0x10
004c8cc6  7202                      JC 0x004c8cca
004c8cc8  8b08                      MOV ECX,dword ptr [EAX]
004c8cca  ba28d4b100                MOV EDX,0xb1d428
004c8ccf  90                        NOP
004c8cd0  8a01                      MOV AL,byte ptr [ECX]
004c8cd2  3a02                      CMP AL,byte ptr [EDX]
004c8cd4  8885cbfdffff              MOV byte ptr [EBP + 0xfffffdcb],AL
004c8cda  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
004c8ce0  7530                      JNZ 0x004c8d12
004c8ce2  80bdcbfdffff00            CMP byte ptr [EBP + 0xfffffdcb],0x0
004c8ce9  7423                      JZ 0x004c8d0e
004c8ceb  8a4101                    MOV AL,byte ptr [ECX + 0x1]
004c8cee  3a4201                    CMP AL,byte ptr [EDX + 0x1]
004c8cf1  8885cbfdffff              MOV byte ptr [EBP + 0xfffffdcb],AL
004c8cf7  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
004c8cfd  7513                      JNZ 0x004c8d12
004c8cff  83c102                    ADD ECX,0x2
004c8d02  83c202                    ADD EDX,0x2
004c8d05  80bdcbfdffff00            CMP byte ptr [EBP + 0xfffffdcb],0x0
004c8d0c  75c2                      JNZ 0x004c8cd0
004c8d0e  33c9                      XOR ECX,ECX
004c8d10  eb05                      JMP 0x004c8d17
004c8d12  1bc9                      SBB ECX,ECX
004c8d14  83c901                    OR ECX,0x1
004c8d17  85c9                      TEST ECX,ECX
004c8d19  7505                      JNZ 0x004c8d20
004c8d1b  384834                    CMP byte ptr [EAX + 0x34],CL
004c8d1e  7424                      JZ 0x004c8d44
004c8d20  8bb5d4fdffff              MOV ESI,dword ptr [EBP + 0xfffffdd4]
004c8d26  8bce                      MOV ECX,ESI
004c8d28  6a01                      PUSH 0x1
004c8d2a  6828d4b100                PUSH 0xb1d428
004c8d2f  e89c18f4ff                CALL 0x0040a5d0
004c8d34  84c0                      TEST AL,AL
004c8d36  740c                      JZ 0x004c8d44
004c8d38  8d4e30                    LEA ECX,[ESI + 0x30]
004c8d3b  e87014f4ff                CALL 0x0040a1b0
004c8d40  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c8d44  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004c8d4a  8b82a8ba0100              MOV EAX,dword ptr [EDX + 0x1baa8]
004c8d50  3b82acba0100              CMP EAX,dword ptr [EDX + 0x1baac]
004c8d56  741c                      JZ 0x004c8d74
004c8d58  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004c8d60  8b08                      MOV ECX,dword ptr [EAX]
004c8d62  83c004                    ADD EAX,0x4
004c8d65  c6811004000001            MOV byte ptr [ECX + 0x410],0x1
004c8d6c  3b82acba0100              CMP EAX,dword ptr [EDX + 0x1baac]
004c8d72  75ec                      JNZ 0x004c8d60
004c8d74  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c8d77  85f6                      TEST ESI,ESI
004c8d79  7450                      JZ 0x004c8dcb
004c8d7b  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c8d7f  8bc6                      MOV EAX,ESI
004c8d81  7202                      JC 0x004c8d85
004c8d83  8b06                      MOV EAX,dword ptr [ESI]
004c8d85  b998d5b100                MOV ECX,0xb1d598
004c8d8a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004c8d90  8a10                      MOV DL,byte ptr [EAX]
004c8d92  3a11                      CMP DL,byte ptr [ECX]
004c8d94  751a                      JNZ 0x004c8db0
004c8d96  84d2                      TEST DL,DL
004c8d98  7412                      JZ 0x004c8dac
004c8d9a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c8d9d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c8da0  750e                      JNZ 0x004c8db0
004c8da2  83c002                    ADD EAX,0x2
004c8da5  83c102                    ADD ECX,0x2
004c8da8  84d2                      TEST DL,DL
004c8daa  75e4                      JNZ 0x004c8d90
004c8dac  33c0                      XOR EAX,EAX
004c8dae  eb05                      JMP 0x004c8db5
004c8db0  1bc0                      SBB EAX,EAX
004c8db2  83c801                    OR EAX,0x1
004c8db5  85c0                      TEST EAX,EAX
004c8db7  7512                      JNZ 0x004c8dcb
004c8db9  384634                    CMP byte ptr [ESI + 0x34],AL
004c8dbc  742e                      JZ 0x004c8dec
004c8dbe  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c8dc4  8d7748                    LEA ESI,[EDI + 0x48]
004c8dc7  7523                      JNZ 0x004c8dec
004c8dc9  eb03                      JMP 0x004c8dce
004c8dcb  8d7748                    LEA ESI,[EDI + 0x48]
004c8dce  6a01                      PUSH 0x1
004c8dd0  6898d5b100                PUSH 0xb1d598
004c8dd5  8bce                      MOV ECX,ESI
004c8dd7  e8f417f4ff                CALL 0x0040a5d0
004c8ddc  84c0                      TEST AL,AL
004c8dde  740c                      JZ 0x004c8dec
004c8de0  8d4e30                    LEA ECX,[ESI + 0x30]
004c8de3  e8c813f4ff                CALL 0x0040a1b0
004c8de8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c8dec  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004c8df4  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004c8dfa  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
004c8e01  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004c8e09  83f812                    CMP EAX,0x12
004c8e0c  750a                      JNZ 0x004c8e18
004c8e0e  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004c8e16  eb0d                      JMP 0x004c8e25
004c8e18  83f813                    CMP EAX,0x13
004c8e1b  7510                      JNZ 0x004c8e2d
004c8e1d  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004c8e25  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004c8e2d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c8e33  8d8dd4fdffff              LEA ECX,[EBP + 0xfffffdd4]
004c8e39  c785d4fdfffff1000000      MOV dword ptr [EBP + 0xfffffdd4],0xf1
004c8e43  e838d94800                CALL 0x00956780
004c8e48  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004c8e50  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c8e56  83ec08                    SUB ESP,0x8
004c8e59  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c8e61  f30f110424                MOVSS dword ptr [ESP],XMM0
004c8e66  6a00                      PUSH 0x0
004c8e68  6a02                      PUSH 0x2
004c8e6a  51                        PUSH ECX
004c8e6b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c8e72  ffb5d4fdffff              PUSH dword ptr [EBP + 0xfffffdd4]
004c8e78  e8b34d4600                CALL 0x0092dc30
004c8e7d  e9a6020000                JMP 0x004c9128
004c8e82  8bb5d4fdffff              MOV ESI,dword ptr [EBP + 0xfffffdd4]
004c8e88  807e4400                  CMP byte ptr [ESI + 0x44],0x0
004c8e8c  0f84a2000000              JZ 0x004c8f34
004c8e92  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c8e96  8bc8                      MOV ECX,EAX
004c8e98  7202                      JC 0x004c8e9c
004c8e9a  8b08                      MOV ECX,dword ptr [EAX]
004c8e9c  babc01b600                MOV EDX,0xb601bc
004c8ea1  8a01                      MOV AL,byte ptr [ECX]
004c8ea3  3a02                      CMP AL,byte ptr [EDX]
004c8ea5  8885cbfdffff              MOV byte ptr [EBP + 0xfffffdcb],AL
004c8eab  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
004c8eb1  7530                      JNZ 0x004c8ee3
004c8eb3  80bdcbfdffff00            CMP byte ptr [EBP + 0xfffffdcb],0x0
004c8eba  7423                      JZ 0x004c8edf
004c8ebc  8a4101                    MOV AL,byte ptr [ECX + 0x1]
004c8ebf  3a4201                    CMP AL,byte ptr [EDX + 0x1]
004c8ec2  8885cbfdffff              MOV byte ptr [EBP + 0xfffffdcb],AL
004c8ec8  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
004c8ece  7513                      JNZ 0x004c8ee3
004c8ed0  83c102                    ADD ECX,0x2
004c8ed3  83c202                    ADD EDX,0x2
004c8ed6  80bdcbfdffff00            CMP byte ptr [EBP + 0xfffffdcb],0x0
004c8edd  75c2                      JNZ 0x004c8ea1
004c8edf  33c9                      XOR ECX,ECX
004c8ee1  eb05                      JMP 0x004c8ee8
004c8ee3  1bc9                      SBB ECX,ECX
004c8ee5  83c901                    OR ECX,0x1
004c8ee8  85c9                      TEST ECX,ECX
004c8eea  753e                      JNZ 0x004c8f2a
004c8eec  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004c8ef2  6a08                      PUSH 0x8
004c8ef4  e877a72300                CALL 0x00703670
004c8ef9  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004c8eff  8b82a8ba0100              MOV EAX,dword ptr [EDX + 0x1baa8]
004c8f05  3b82acba0100              CMP EAX,dword ptr [EDX + 0x1baac]
004c8f0b  0f8417020000              JZ 0x004c9128
004c8f11  8b08                      MOV ECX,dword ptr [EAX]
004c8f13  83c004                    ADD EAX,0x4
004c8f16  c6811004000000            MOV byte ptr [ECX + 0x410],0x0
004c8f1d  3b82acba0100              CMP EAX,dword ptr [EDX + 0x1baac]
004c8f23  75ec                      JNZ 0x004c8f11
004c8f25  e9fe010000                JMP 0x004c9128
004c8f2a  807e4400                  CMP byte ptr [ESI + 0x44],0x0
004c8f2e  0f85f4010000              JNZ 0x004c9128
004c8f34  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c8f38  7202                      JC 0x004c8f3c
004c8f3a  8b00                      MOV EAX,dword ptr [EAX]
004c8f3c  b9c401b600                MOV ECX,0xb601c4
004c8f41  8a10                      MOV DL,byte ptr [EAX]
004c8f43  3a11                      CMP DL,byte ptr [ECX]
004c8f45  751a                      JNZ 0x004c8f61
004c8f47  84d2                      TEST DL,DL
004c8f49  7412                      JZ 0x004c8f5d
004c8f4b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c8f4e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c8f51  750e                      JNZ 0x004c8f61
004c8f53  83c002                    ADD EAX,0x2
004c8f56  83c102                    ADD ECX,0x2
004c8f59  84d2                      TEST DL,DL
004c8f5b  75e4                      JNZ 0x004c8f41
004c8f5d  33c0                      XOR EAX,EAX
004c8f5f  eb05                      JMP 0x004c8f66
004c8f61  1bc0                      SBB EAX,EAX
004c8f63  83c801                    OR EAX,0x1
004c8f66  85c0                      TEST EAX,EAX
004c8f68  0f85ba010000              JNZ 0x004c9128
004c8f6e  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004c8f74  33d2                      XOR EDX,EDX
004c8f76  81c6a8ba0100              ADD ESI,0x1baa8
004c8f7c  8995ccfdffff              MOV dword ptr [EBP + 0xfffffdcc],EDX
004c8f82  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004c8f85  2b06                      SUB EAX,dword ptr [ESI]
004c8f87  c1f802                    SAR EAX,0x2
004c8f8a  85c0                      TEST EAX,EAX
004c8f8c  0f8496010000              JZ 0x004c9128
004c8f92  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004c8f95  8bc1                      MOV EAX,ECX
004c8f97  2b06                      SUB EAX,dword ptr [ESI]
004c8f99  c1f802                    SAR EAX,0x2
004c8f9c  85c0                      TEST EAX,EAX
004c8f9e  7518                      JNZ 0x004c8fb8
004c8fa0  68bce6b700                PUSH 0xb7e6bc
004c8fa5  6a10                      PUSH 0x10
004c8fa7  e814835400                CALL 0x00a112c0
004c8fac  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004c8faf  83c408                    ADD ESP,0x8
004c8fb2  8b95ccfdffff              MOV EDX,dword ptr [EBP + 0xfffffdcc]
004c8fb8  8b06                      MOV EAX,dword ptr [ESI]
004c8fba  2bc8                      SUB ECX,EAX
004c8fbc  c1f902                    SAR ECX,0x2
004c8fbf  3bd1                      CMP EDX,ECX
004c8fc1  7303                      JNC 0x004c8fc6
004c8fc3  8d0490                    LEA EAX,[EAX + EDX*0x4]
004c8fc6  8b00                      MOV EAX,dword ptr [EAX]
004c8fc8  83782c00                  CMP dword ptr [EAX + 0x2c],0x0
004c8fcc  7511                      JNZ 0x004c8fdf
004c8fce  f30f100584abba00          MOVSS XMM0,dword ptr [0x00baab84]
004c8fd6  0f2f8040030000            COMISS XMM0,dword ptr [EAX + 0x340]
004c8fdd  7724                      JA 0x004c9003
004c8fdf  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004c8fe5  42                        INC EDX
004c8fe6  81c6a8ba0100              ADD ESI,0x1baa8
004c8fec  8995ccfdffff              MOV dword ptr [EBP + 0xfffffdcc],EDX
004c8ff2  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004c8ff5  2b06                      SUB EAX,dword ptr [ESI]
004c8ff7  c1f802                    SAR EAX,0x2
004c8ffa  3bd0                      CMP EDX,EAX
004c8ffc  7294                      JC 0x004c8f92
004c8ffe  e925010000                JMP 0x004c9128
004c9003  8bb5d4fdffff              MOV ESI,dword ptr [EBP + 0xfffffdd4]
004c9009  8b7634                    MOV ESI,dword ptr [ESI + 0x34]
004c900c  85f6                      TEST ESI,ESI
004c900e  744b                      JZ 0x004c905b
004c9010  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c9014  8bc6                      MOV EAX,ESI
004c9016  7202                      JC 0x004c901a
004c9018  8b06                      MOV EAX,dword ptr [ESI]
004c901a  b9bc01b600                MOV ECX,0xb601bc
004c901f  90                        NOP
004c9020  8a10                      MOV DL,byte ptr [EAX]
004c9022  3a11                      CMP DL,byte ptr [ECX]
004c9024  751a                      JNZ 0x004c9040
004c9026  84d2                      TEST DL,DL
004c9028  7412                      JZ 0x004c903c
004c902a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c902d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c9030  750e                      JNZ 0x004c9040
004c9032  83c002                    ADD EAX,0x2
004c9035  83c102                    ADD ECX,0x2
004c9038  84d2                      TEST DL,DL
004c903a  75e4                      JNZ 0x004c9020
004c903c  33c0                      XOR EAX,EAX
004c903e  eb05                      JMP 0x004c9045
004c9040  1bc0                      SBB EAX,EAX
004c9042  83c801                    OR EAX,0x1
004c9045  85c0                      TEST EAX,EAX
004c9047  7512                      JNZ 0x004c905b
004c9049  384634                    CMP byte ptr [ESI + 0x34],AL
004c904c  7435                      JZ 0x004c9083
004c904e  8b8dd4fdffff              MOV ECX,dword ptr [EBP + 0xfffffdd4]
004c9054  384144                    CMP byte ptr [ECX + 0x44],AL
004c9057  752a                      JNZ 0x004c9083
004c9059  eb06                      JMP 0x004c9061
004c905b  8b8dd4fdffff              MOV ECX,dword ptr [EBP + 0xfffffdd4]
004c9061  6a01                      PUSH 0x1
004c9063  68bc01b600                PUSH 0xb601bc
004c9068  e86315f4ff                CALL 0x0040a5d0
004c906d  84c0                      TEST AL,AL
004c906f  7412                      JZ 0x004c9083
004c9071  8bb5d4fdffff              MOV ESI,dword ptr [EBP + 0xfffffdd4]
004c9077  8d4e30                    LEA ECX,[ESI + 0x30]
004c907a  e83111f4ff                CALL 0x0040a1b0
004c907f  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c9083  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004c908b  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004c9091  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004c9099  83f812                    CMP EAX,0x12
004c909c  750a                      JNZ 0x004c90a8
004c909e  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004c90a6  eb0d                      JMP 0x004c90b5
004c90a8  83f813                    CMP EAX,0x13
004c90ab  7510                      JNZ 0x004c90bd
004c90ad  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004c90b5  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004c90bd  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c90c3  8d8dd4fdffff              LEA ECX,[EBP + 0xfffffdd4]
004c90c9  c785d4fdffffee000000      MOV dword ptr [EBP + 0xfffffdd4],0xee
004c90d3  e8a8d64800                CALL 0x00956780
004c90d8  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004c90e0  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c90e6  83ec08                    SUB ESP,0x8
004c90e9  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c90f1  f30f110424                MOVSS dword ptr [ESP],XMM0
004c90f6  6a00                      PUSH 0x0
004c90f8  6a02                      PUSH 0x2
004c90fa  51                        PUSH ECX
004c90fb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c9102  ffb5d4fdffff              PUSH dword ptr [EBP + 0xfffffdd4]
004c9108  e8234b4600                CALL 0x0092dc30
004c910d  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004c9113  81c1bc9f0200              ADD ECX,0x29fbc
004c9119  51                        PUSH ECX
004c911a  c704240ad7a33d            MOV dword ptr [ESP],0x3da3d70a
004c9121  6a17                      PUSH 0x17
004c9123  e8488d3100                CALL 0x007e1e70
004c9128  817f2812010000            CMP dword ptr [EDI + 0x28],0x112
004c912f  0f85e8000000              JNZ 0x004c921d
004c9135  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c9139  0f8446010000              JZ 0x004c9285
004c913f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c9146  0f84d1000000              JZ 0x004c921d
004c914c  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c914f  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c9153  7202                      JC 0x004c9157
004c9155  8b00                      MOV EAX,dword ptr [EAX]
004c9157  b998d5b100                MOV ECX,0xb1d598
004c915c  0f1f4000                  NOP dword ptr [EAX]
004c9160  8a10                      MOV DL,byte ptr [EAX]
004c9162  3a11                      CMP DL,byte ptr [ECX]
004c9164  751a                      JNZ 0x004c9180
004c9166  84d2                      TEST DL,DL
004c9168  7412                      JZ 0x004c917c
004c916a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c916d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c9170  750e                      JNZ 0x004c9180
004c9172  83c002                    ADD EAX,0x2
004c9175  83c102                    ADD ECX,0x2
004c9178  84d2                      TEST DL,DL
004c917a  75e4                      JNZ 0x004c9160
004c917c  33c0                      XOR EAX,EAX
004c917e  eb05                      JMP 0x004c9185
004c9180  1bc0                      SBB EAX,EAX
004c9182  83c801                    OR EAX,0x1
004c9185  85c0                      TEST EAX,EAX
004c9187  0f8590000000              JNZ 0x004c921d
004c918d  a17816c700                MOV EAX,[0x00c71678]
004c9192  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004c9198  8bb0f8110000              MOV ESI,dword ptr [EAX + 0x11f8]
004c919e  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
004c91a5  0f8572000000              JNZ 0x004c921d
004c91ab  8b4654                    MOV EAX,dword ptr [ESI + 0x54]
004c91ae  8b4e58                    MOV ECX,dword ptr [ESI + 0x58]
004c91b1  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c91b7  3bc8                      CMP ECX,EAX
004c91b9  7533                      JNZ 0x004c91ee
004c91bb  85c9                      TEST ECX,ECX
004c91bd  7f1b                      JG 0x004c91da
004c91bf  6878bbb700                PUSH 0xb7bb78
004c91c4  6a10                      PUSH 0x10
004c91c6  e8f5805400                CALL 0x00a112c0
004c91cb  8b4654                    MOV EAX,dword ptr [ESI + 0x54]
004c91ce  83c408                    ADD ESP,0x8
004c91d1  8b4e58                    MOV ECX,dword ptr [ESI + 0x58]
004c91d4  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c91da  8b465c                    MOV EAX,dword ptr [ESI + 0x5c]
004c91dd  40                        INC EAX
004c91de  99                        CDQ
004c91df  f7bdd4fdffff              IDIV dword ptr [EBP + 0xfffffdd4]
004c91e5  49                        DEC ECX
004c91e6  89565c                    MOV dword ptr [ESI + 0x5c],EDX
004c91e9  894e58                    MOV dword ptr [ESI + 0x58],ECX
004c91ec  eb09                      JMP 0x004c91f7
004c91ee  8b565c                    MOV EDX,dword ptr [ESI + 0x5c]
004c91f1  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c91f7  8d040a                    LEA EAX,[EDX + ECX*0x1]
004c91fa  99                        CDQ
004c91fb  f7bdd4fdffff              IDIV dword ptr [EBP + 0xfffffdd4]
004c9201  8b4650                    MOV EAX,dword ptr [ESI + 0x50]
004c9204  c704d00000a043            MOV dword ptr [EAX + EDX*0x8],0x43a00000
004c920b  c744d00400005243          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x43520000
004c9213  ff4658                    INC dword ptr [ESI + 0x58]
004c9216  c6868c00000001            MOV byte ptr [ESI + 0x8c],0x1
004c921d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c9221  7462                      JZ 0x004c9285
004c9223  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c922a  7559                      JNZ 0x004c9285
004c922c  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c922f  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c9233  7202                      JC 0x004c9237
004c9235  8b00                      MOV EAX,dword ptr [EAX]
004c9237  b998d5b100                MOV ECX,0xb1d598
004c923c  0f1f4000                  NOP dword ptr [EAX]
004c9240  8a10                      MOV DL,byte ptr [EAX]
004c9242  3a11                      CMP DL,byte ptr [ECX]
004c9244  751a                      JNZ 0x004c9260
004c9246  84d2                      TEST DL,DL
004c9248  7412                      JZ 0x004c925c
004c924a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c924d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c9250  750e                      JNZ 0x004c9260
004c9252  83c002                    ADD EAX,0x2
004c9255  83c102                    ADD ECX,0x2
004c9258  84d2                      TEST DL,DL
004c925a  75e4                      JNZ 0x004c9240
004c925c  33c0                      XOR EAX,EAX
004c925e  eb05                      JMP 0x004c9265
004c9260  1bc0                      SBB EAX,EAX
004c9262  83c801                    OR EAX,0x1
004c9265  85c0                      TEST EAX,EAX
004c9267  751c                      JNZ 0x004c9285
004c9269  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004c9273  8887b0030000              MOV byte ptr [EDI + 0x3b0],AL
004c9279  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004c9283  eb0f                      JMP 0x004c9294
004c9285  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c928b  83f803                    CMP EAX,0x3
004c928e  0f85820a0000              JNZ 0x004c9d16
004c9294  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004c929c  be0a000000                MOV ESI,0xa
004c92a1  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004c92a9  b802000000                MOV EAX,0x2
004c92ae  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004c92b5  0f47f0                    CMOVA ESI,EAX
004c92b8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c92bc  0f846b010000              JZ 0x004c942d
004c92c2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c92c9  0f840d010000              JZ 0x004c93dc
004c92cf  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c92d2  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c92d6  7202                      JC 0x004c92da
004c92d8  8b00                      MOV EAX,dword ptr [EAX]
004c92da  b954bcb100                MOV ECX,0xb1bc54
004c92df  90                        NOP
004c92e0  8a10                      MOV DL,byte ptr [EAX]
004c92e2  3a11                      CMP DL,byte ptr [ECX]
004c92e4  751a                      JNZ 0x004c9300
004c92e6  84d2                      TEST DL,DL
004c92e8  7412                      JZ 0x004c92fc
004c92ea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c92ed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c92f0  750e                      JNZ 0x004c9300
004c92f2  83c002                    ADD EAX,0x2
004c92f5  83c102                    ADD ECX,0x2
004c92f8  84d2                      TEST DL,DL
004c92fa  75e4                      JNZ 0x004c92e0
004c92fc  33c0                      XOR EAX,EAX
004c92fe  eb05                      JMP 0x004c9305
004c9300  1bc0                      SBB EAX,EAX
004c9302  83c801                    OR EAX,0x1
004c9305  85c0                      TEST EAX,EAX
004c9307  0f85cf000000              JNZ 0x004c93dc
004c930d  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
004c9315  83ec08                    SUB ESP,0x8
004c9318  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004c9320  d985ccfdffff              FLD dword ptr [EBP + 0xfffffdcc]
004c9326  dd1c24                    FSTP qword ptr [ESP]
004c9329  e8e9756200                CALL 0x00af0917
004c932e  d99dccfdffff              FSTP dword ptr [EBP + 0xfffffdcc]
004c9334  f30f2c85ccfdffff          CVTTSS2SI EAX,dword ptr [EBP + 0xfffffdcc]
004c933c  83c408                    ADD ESP,0x8
004c933f  85c0                      TEST EAX,EAX
004c9341  0f8595000000              JNZ 0x004c93dc
004c9347  e8145c2200                CALL 0x006eef60
004c934c  33d2                      XOR EDX,EDX
004c934e  f7f6                      DIV ESI
004c9350  85d2                      TEST EDX,EDX
004c9352  0f8584000000              JNZ 0x004c93dc
004c9358  817f2812010000            CMP dword ptr [EDI + 0x28],0x112
004c935f  0f8577000000              JNZ 0x004c93dc
004c9365  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c9368  85f6                      TEST ESI,ESI
004c936a  744f                      JZ 0x004c93bb
004c936c  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c9370  8bc6                      MOV EAX,ESI
004c9372  7202                      JC 0x004c9376
004c9374  8b06                      MOV EAX,dword ptr [ESI]
004c9376  b9e401b600                MOV ECX,0xb601e4
004c937b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004c9380  8a10                      MOV DL,byte ptr [EAX]
004c9382  3a11                      CMP DL,byte ptr [ECX]
004c9384  751a                      JNZ 0x004c93a0
004c9386  84d2                      TEST DL,DL
004c9388  7412                      JZ 0x004c939c
004c938a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c938d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c9390  750e                      JNZ 0x004c93a0
004c9392  83c002                    ADD EAX,0x2
004c9395  83c102                    ADD ECX,0x2
004c9398  84d2                      TEST DL,DL
004c939a  75e4                      JNZ 0x004c9380
004c939c  33c0                      XOR EAX,EAX
004c939e  eb05                      JMP 0x004c93a5
004c93a0  1bc0                      SBB EAX,EAX
004c93a2  83c801                    OR EAX,0x1
004c93a5  85c0                      TEST EAX,EAX
004c93a7  7512                      JNZ 0x004c93bb
004c93a9  384634                    CMP byte ptr [ESI + 0x34],AL
004c93ac  742e                      JZ 0x004c93dc
004c93ae  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c93b4  8d7748                    LEA ESI,[EDI + 0x48]
004c93b7  7523                      JNZ 0x004c93dc
004c93b9  eb03                      JMP 0x004c93be
004c93bb  8d7748                    LEA ESI,[EDI + 0x48]
004c93be  6a01                      PUSH 0x1
004c93c0  68e401b600                PUSH 0xb601e4
004c93c5  8bce                      MOV ECX,ESI
004c93c7  e80412f4ff                CALL 0x0040a5d0
004c93cc  84c0                      TEST AL,AL
004c93ce  740c                      JZ 0x004c93dc
004c93d0  8d4e30                    LEA ECX,[ESI + 0x30]
004c93d3  e8d80df4ff                CALL 0x0040a1b0
004c93d8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c93dc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c93e0  744b                      JZ 0x004c942d
004c93e2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c93e9  7442                      JZ 0x004c942d
004c93eb  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c93ee  83781410                  CMP dword ptr [EAX + 0x14],0x10
004c93f2  7202                      JC 0x004c93f6
004c93f4  8b00                      MOV EAX,dword ptr [EAX]
004c93f6  b9e401b600                MOV ECX,0xb601e4
004c93fb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004c9400  8a10                      MOV DL,byte ptr [EAX]
004c9402  3a11                      CMP DL,byte ptr [ECX]
004c9404  751a                      JNZ 0x004c9420
004c9406  84d2                      TEST DL,DL
004c9408  7412                      JZ 0x004c941c
004c940a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c940d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c9410  750e                      JNZ 0x004c9420
004c9412  83c002                    ADD EAX,0x2
004c9415  83c102                    ADD ECX,0x2
004c9418  84d2                      TEST DL,DL
004c941a  75e4                      JNZ 0x004c9400
004c941c  33c0                      XOR EAX,EAX
004c941e  eb05                      JMP 0x004c9425
004c9420  1bc0                      SBB EAX,EAX
004c9422  83c801                    OR EAX,0x1
004c9425  85c0                      TEST EAX,EAX
004c9427  0f84e0010000              JZ 0x004c960d
004c942d  817f2812010000            CMP dword ptr [EDI + 0x28],0x112
004c9434  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
004c9437  7566                      JNZ 0x004c949f
004c9439  85c9                      TEST ECX,ECX
004c943b  7456                      JZ 0x004c9493
004c943d  83791410                  CMP dword ptr [ECX + 0x14],0x10
004c9441  8bc1                      MOV EAX,ECX
004c9443  7202                      JC 0x004c9447
004c9445  8b01                      MOV EAX,dword ptr [ECX]
004c9447  b954bcb100                MOV ECX,0xb1bc54
004c944c  0f1f4000                  NOP dword ptr [EAX]
004c9450  8a10                      MOV DL,byte ptr [EAX]
004c9452  3a11                      CMP DL,byte ptr [ECX]
004c9454  751a                      JNZ 0x004c9470
004c9456  84d2                      TEST DL,DL
004c9458  7412                      JZ 0x004c946c
004c945a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c945d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c9460  750e                      JNZ 0x004c9470
004c9462  83c002                    ADD EAX,0x2
004c9465  83c102                    ADD ECX,0x2
004c9468  84d2                      TEST DL,DL
004c946a  75e4                      JNZ 0x004c9450
004c946c  33c0                      XOR EAX,EAX
004c946e  eb05                      JMP 0x004c9475
004c9470  1bc0                      SBB EAX,EAX
004c9472  83c801                    OR EAX,0x1
004c9475  85c0                      TEST EAX,EAX
004c9477  751a                      JNZ 0x004c9493
004c9479  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c947c  80783400                  CMP byte ptr [EAX + 0x34],0x0
004c9480  0f8487010000              JZ 0x004c960d
004c9486  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c948d  0f857a010000              JNZ 0x004c960d
004c9493  6a01                      PUSH 0x1
004c9495  6854bcb100                PUSH 0xb1bc54
004c949a  e953010000                JMP 0x004c95f2
004c949f  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
004c94a7  f30f101dfca6ba00          MOVSS XMM3,dword ptr [0x00baa6fc]
004c94af  0f28c1                    MOVAPS XMM0,XMM1
004c94b2  f30f58c1                  ADDSS XMM0,XMM1
004c94b6  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
004c94be  f30f5ec3                  DIVSS XMM0,XMM3
004c94c2  0f2fd0                    COMISS XMM2,XMM0
004c94c5  7668                      JBE 0x004c952f
004c94c7  85c9                      TEST ECX,ECX
004c94c9  7458                      JZ 0x004c9523
004c94cb  83791410                  CMP dword ptr [ECX + 0x14],0x10
004c94cf  8bc1                      MOV EAX,ECX
004c94d1  7202                      JC 0x004c94d5
004c94d3  8b01                      MOV EAX,dword ptr [ECX]
004c94d5  b9c401b600                MOV ECX,0xb601c4
004c94da  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004c94e0  8a10                      MOV DL,byte ptr [EAX]
004c94e2  3a11                      CMP DL,byte ptr [ECX]
004c94e4  751a                      JNZ 0x004c9500
004c94e6  84d2                      TEST DL,DL
004c94e8  7412                      JZ 0x004c94fc
004c94ea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c94ed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c94f0  750e                      JNZ 0x004c9500
004c94f2  83c002                    ADD EAX,0x2
004c94f5  83c102                    ADD ECX,0x2
004c94f8  84d2                      TEST DL,DL
004c94fa  75e4                      JNZ 0x004c94e0
004c94fc  33c0                      XOR EAX,EAX
004c94fe  eb05                      JMP 0x004c9505
004c9500  1bc0                      SBB EAX,EAX
004c9502  83c801                    OR EAX,0x1
004c9505  85c0                      TEST EAX,EAX
004c9507  751a                      JNZ 0x004c9523
004c9509  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c950c  80783400                  CMP byte ptr [EAX + 0x34],0x0
004c9510  0f84f7000000              JZ 0x004c960d
004c9516  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c951d  0f85ea000000              JNZ 0x004c960d
004c9523  6a01                      PUSH 0x1
004c9525  68c401b600                PUSH 0xb601c4
004c952a  e9c3000000                JMP 0x004c95f2
004c952f  f30f5ecb                  DIVSS XMM1,XMM3
004c9533  0f2fd1                    COMISS XMM2,XMM1
004c9536  7660                      JBE 0x004c9598
004c9538  85c9                      TEST ECX,ECX
004c953a  7453                      JZ 0x004c958f
004c953c  83791410                  CMP dword ptr [ECX + 0x14],0x10
004c9540  8bc1                      MOV EAX,ECX
004c9542  7202                      JC 0x004c9546
004c9544  8b01                      MOV EAX,dword ptr [ECX]
004c9546  b928d4b100                MOV ECX,0xb1d428
004c954b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004c9550  8a10                      MOV DL,byte ptr [EAX]
004c9552  3a11                      CMP DL,byte ptr [ECX]
004c9554  751a                      JNZ 0x004c9570
004c9556  84d2                      TEST DL,DL
004c9558  7412                      JZ 0x004c956c
004c955a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c955d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c9560  750e                      JNZ 0x004c9570
004c9562  83c002                    ADD EAX,0x2
004c9565  83c102                    ADD ECX,0x2
004c9568  84d2                      TEST DL,DL
004c956a  75e4                      JNZ 0x004c9550
004c956c  33c0                      XOR EAX,EAX
004c956e  eb05                      JMP 0x004c9575
004c9570  1bc0                      SBB EAX,EAX
004c9572  83c801                    OR EAX,0x1
004c9575  85c0                      TEST EAX,EAX
004c9577  7516                      JNZ 0x004c958f
004c9579  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c957c  80783400                  CMP byte ptr [EAX + 0x34],0x0
004c9580  0f8487000000              JZ 0x004c960d
004c9586  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c958d  757e                      JNZ 0x004c960d
004c958f  6a01                      PUSH 0x1
004c9591  6828d4b100                PUSH 0xb1d428
004c9596  eb5a                      JMP 0x004c95f2
004c9598  85c9                      TEST ECX,ECX
004c959a  744f                      JZ 0x004c95eb
004c959c  83791410                  CMP dword ptr [ECX + 0x14],0x10
004c95a0  8bc1                      MOV EAX,ECX
004c95a2  7202                      JC 0x004c95a6
004c95a4  8b01                      MOV EAX,dword ptr [ECX]
004c95a6  b93cd4b100                MOV ECX,0xb1d43c
004c95ab  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004c95b0  8a10                      MOV DL,byte ptr [EAX]
004c95b2  3a11                      CMP DL,byte ptr [ECX]
004c95b4  751a                      JNZ 0x004c95d0
004c95b6  84d2                      TEST DL,DL
004c95b8  7412                      JZ 0x004c95cc
004c95ba  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c95bd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c95c0  750e                      JNZ 0x004c95d0
004c95c2  83c002                    ADD EAX,0x2
004c95c5  83c102                    ADD ECX,0x2
004c95c8  84d2                      TEST DL,DL
004c95ca  75e4                      JNZ 0x004c95b0
004c95cc  33c0                      XOR EAX,EAX
004c95ce  eb05                      JMP 0x004c95d5
004c95d0  1bc0                      SBB EAX,EAX
004c95d2  83c801                    OR EAX,0x1
004c95d5  85c0                      TEST EAX,EAX
004c95d7  7512                      JNZ 0x004c95eb
004c95d9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004c95dc  80783400                  CMP byte ptr [EAX + 0x34],0x0
004c95e0  742b                      JZ 0x004c960d
004c95e2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c95e9  7522                      JNZ 0x004c960d
004c95eb  6a01                      PUSH 0x1
004c95ed  683cd4b100                PUSH 0xb1d43c
004c95f2  8d4f48                    LEA ECX,[EDI + 0x48]
004c95f5  e8d60ff4ff                CALL 0x0040a5d0
004c95fa  84c0                      TEST AL,AL
004c95fc  740f                      JZ 0x004c960d
004c95fe  8d4f78                    LEA ECX,[EDI + 0x78]
004c9601  e8aa0bf4ff                CALL 0x0040a1b0
004c9606  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004c960d  8bb588fdffff              MOV ESI,dword ptr [EBP + 0xfffffd88]
004c9613  b801000000                MOV EAX,0x1
004c9618  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c961e  85f6                      TEST ESI,ESI
004c9620  741c                      JZ 0x004c963e
004c9622  8b8e640b0000              MOV ECX,dword ptr [ESI + 0xb64]
004c9628  83f903                    CMP ECX,0x3
004c962b  7411                      JZ 0x004c963e
004c962d  33d2                      XOR EDX,EDX
004c962f  0fb6c0                    MOVZX EAX,AL
004c9632  83f90d                    CMP ECX,0xd
004c9635  0f45c2                    CMOVNZ EAX,EDX
004c9638  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c963e  8bb584fdffff              MOV ESI,dword ptr [EBP + 0xfffffd84]
004c9644  85f6                      TEST ESI,ESI
004c9646  741c                      JZ 0x004c9664
004c9648  8b8e640b0000              MOV ECX,dword ptr [ESI + 0xb64]
004c964e  83f903                    CMP ECX,0x3
004c9651  7411                      JZ 0x004c9664
004c9653  33d2                      XOR EDX,EDX
004c9655  0fb6c0                    MOVZX EAX,AL
004c9658  83f90d                    CMP ECX,0xd
004c965b  0f45c2                    CMOVNZ EAX,EDX
004c965e  8885d4fdffff              MOV byte ptr [EBP + 0xfffffdd4],AL
004c9664  817f2813010000            CMP dword ptr [EDI + 0x28],0x113
004c966b  b001                      MOV AL,0x1
004c966d  8985ccfdffff              MOV dword ptr [EBP + 0xfffffdcc],EAX
004c9673  0f8592000000              JNZ 0x004c970b
004c9679  a17816c700                MOV EAX,[0x00c71678]
004c967e  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
004c9686  6a02                      PUSH 0x2
004c9688  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004c968e  8d873c030000              LEA EAX,[EDI + 0x33c]
004c9694  50                        PUSH EAX
004c9695  8d8560fdffff              LEA EAX,[EBP + 0xfffffd60]
004c969b  81c118120000              ADD ECX,0x1218
004c96a1  50                        PUSH EAX
004c96a2  e8e910f5ff                CALL 0x0041a790
004c96a7  8b85ccfdffff              MOV EAX,dword ptr [EBP + 0xfffffdcc]
004c96ad  33c9                      XOR ECX,ECX
004c96af  83bd6cfdffff05            CMP dword ptr [EBP + 0xfffffd6c],0x5
004c96b6  0fb6c0                    MOVZX EAX,AL
004c96b9  0f47c1                    CMOVA EAX,ECX
004c96bc  8985ccfdffff              MOV dword ptr [EBP + 0xfffffdcc],EAX
004c96c2  388d60fdffff              CMP byte ptr [EBP + 0xfffffd60],CL
004c96c8  7541                      JNZ 0x004c970b
004c96ca  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
004c96d0  85d2                      TEST EDX,EDX
004c96d2  7405                      JZ 0x004c96d9
004c96d4  83c230                    ADD EDX,0x30
004c96d7  eb05                      JMP 0x004c96de
004c96d9  ba18f6c700                MOV EDX,0xc7f618
004c96de  8b8d64fdffff              MOV ECX,dword ptr [EBP + 0xfffffd64]
004c96e4  85c9                      TEST ECX,ECX
004c96e6  741c                      JZ 0x004c9704
004c96e8  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
004c96eb  83c1fc                    ADD ECX,-0x4
004c96ee  2902                      SUB dword ptr [EDX],EAX
004c96f0  51                        PUSH ECX
004c96f1  835a0400                  SBB dword ptr [EDX + 0x4],0x0
004c96f5  ff95c0fdffff              CALL dword ptr [EBP + 0xfffffdc0]
004c96fb  8b85ccfdffff              MOV EAX,dword ptr [EBP + 0xfffffdcc]
004c9701  83c404                    ADD ESP,0x4
004c9704  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004c970b  80bdd4fdffff00            CMP byte ptr [EBP + 0xfffffdd4],0x0
004c9712  0f84fe050000              JZ 0x004c9d16
004c9718  84c0                      TEST AL,AL
004c971a  0f84f6050000              JZ 0x004c9d16
004c9720  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004c9726  85c0                      TEST EAX,EAX
004c9728  0f8ee2050000              JLE 0x004c9d10
004c972e  99                        CDQ
004c972f  b91e000000                MOV ECX,0x1e
004c9734  f7f9                      IDIV ECX
004c9736  85d2                      TEST EDX,EDX
004c9738  0f85d2050000              JNZ 0x004c9d10
004c973e  e81d582200                CALL 0x006eef60
004c9743  33d2                      XOR EDX,EDX
004c9745  b964000000                MOV ECX,0x64
004c974a  f7f1                      DIV ECX
004c974c  83fa46                    CMP EDX,0x46
004c974f  0f83bb050000              JNC 0x004c9d10
004c9755  8bcf                      MOV ECX,EDI
004c9757  33f6                      XOR ESI,ESI
004c9759  e8e2501f00                CALL 0x006be840
004c975e  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
004c9766  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004c976e  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004c9776  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004c977d  0f2fc8                    COMISS XMM1,XMM0
004c9780  0f86ec000000              JBE 0x004c9872
004c9786  8bcf                      MOV ECX,EDI
004c9788  be14000000                MOV ESI,0x14
004c978d  e8ae501f00                CALL 0x006be840
004c9792  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004c979a  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c97a2  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004c97aa  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004c97b2  f30f59c0                  MULSS XMM0,XMM0
004c97b6  f30f59c9                  MULSS XMM1,XMM1
004c97ba  f30f58c1                  ADDSS XMM0,XMM1
004c97be  e88dc2f6ff                CALL 0x00435a50
004c97c3  0f2f0508abba00            COMISS XMM0,dword ptr [0x00baab08]
004c97ca  b828000000                MOV EAX,0x28
004c97cf  8bcf                      MOV ECX,EDI
004c97d1  0f47f0                    CMOVA ESI,EAX
004c97d4  e867501f00                CALL 0x006be840
004c97d9  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004c97e1  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c97e9  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004c97f1  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004c97f9  f30f59c0                  MULSS XMM0,XMM0
004c97fd  f30f59c9                  MULSS XMM1,XMM1
004c9801  f30f58c1                  ADDSS XMM0,XMM1
004c9805  e846c2f6ff                CALL 0x00435a50
004c980a  f30f100d78aaba00          MOVSS XMM1,dword ptr [0x00baaa78]
004c9812  8d4e14                    LEA ECX,[ESI + 0x14]
004c9815  8b97c40b0000              MOV EDX,dword ptr [EDI + 0xbc4]
004c981b  0f2fc8                    COMISS XMM1,XMM0
004c981e  0f46ce                    CMOVBE ECX,ESI
004c9821  81fa00100000              CMP EDX,0x1000
004c9827  8d4132                    LEA EAX,[ECX + 0x32]
004c982a  0f45c1                    CMOVNZ EAX,ECX
004c982d  83fa07                    CMP EDX,0x7
004c9830  8d701e                    LEA ESI,[EAX + 0x1e]
004c9833  0f45f0                    CMOVNZ ESI,EAX
004c9836  83fa08                    CMP EDX,0x8
004c9839  7513                      JNZ 0x004c984e
004c983b  660f6ec6                  MOVD XMM0,ESI
004c983f  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c9842  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004c984a  f30f2cf0                  CVTTSS2SI ESI,XMM0
004c984e  83bfb80b000008            CMP dword ptr [EDI + 0xbb8],0x8
004c9855  7513                      JNZ 0x004c986a
004c9857  660f6ec6                  MOVD XMM0,ESI
004c985b  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c985e  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004c9866  f30f2cf0                  CVTTSS2SI ESI,XMM0
004c986a  33c0                      XOR EAX,EAX
004c986c  83faff                    CMP EDX,-0x1
004c986f  0f44f0                    CMOVZ ESI,EAX
004c9872  8b97c40b0000              MOV EDX,dword ptr [EDI + 0xbc4]
004c9878  b819000000                MOV EAX,0x19
004c987d  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
004c9885  83faff                    CMP EDX,-0x1
004c9888  b9af000000                MOV ECX,0xaf
004c988d  0f45c8                    CMOVNZ ECX,EAX
004c9890  83fa08                    CMP EDX,0x8
004c9893  8d411e                    LEA EAX,[ECX + 0x1e]
004c9896  0f45c1                    CMOVNZ EAX,ECX
004c9899  83fa07                    CMP EDX,0x7
004c989c  8d481e                    LEA ECX,[EAX + 0x1e]
004c989f  0f45c8                    CMOVNZ ECX,EAX
004c98a2  898dc4fdffff              MOV dword ptr [EBP + 0xfffffdc4],ECX
004c98a8  83fa09                    CMP EDX,0x9
004c98ab  7515                      JNZ 0x004c98c2
004c98ad  660f6ec1                  MOVD XMM0,ECX
004c98b1  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c98b4  f30f59c1                  MULSS XMM0,XMM1
004c98b8  f30f2cc8                  CVTTSS2SI ECX,XMM0
004c98bc  898dc4fdffff              MOV dword ptr [EBP + 0xfffffdc4],ECX
004c98c2  83bfb80b000009            CMP dword ptr [EDI + 0xbb8],0x9
004c98c9  7515                      JNZ 0x004c98e0
004c98cb  660f6ec1                  MOVD XMM0,ECX
004c98cf  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c98d2  f30f59c1                  MULSS XMM0,XMM1
004c98d6  f30f2cc0                  CVTTSS2SI EAX,XMM0
004c98da  8985c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EAX
004c98e0  8b9588fdffff              MOV EDX,dword ptr [EBP + 0xfffffd88]
004c98e6  8bc2                      MOV EAX,EDX
004c98e8  f7d8                      NEG EAX
004c98ea  1bc0                      SBB EAX,EAX
004c98ec  83e00c                    AND EAX,0xc
004c98ef  83bd84fdffff00            CMP dword ptr [EBP + 0xfffffd84],0x0
004c98f6  8d4809                    LEA ECX,[EAX + 0x9]
004c98f9  0f44c8                    CMOVZ ECX,EAX
004c98fc  898dccfdffff              MOV dword ptr [EBP + 0xfffffdcc],ECX
004c9902  85d2                      TEST EDX,EDX
004c9904  7510                      JNZ 0x004c9916
004c9906  8bc1                      MOV EAX,ECX
004c9908  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c990e  399584fdffff              CMP dword ptr [EBP + 0xfffffd84],EDX
004c9914  7460                      JZ 0x004c9976
004c9916  8bcf                      MOV ECX,EDI
004c9918  e8234f1f00                CALL 0x006be840
004c991d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004c9925  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c992d  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004c9935  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004c993d  8b85ccfdffff              MOV EAX,dword ptr [EBP + 0xfffffdcc]
004c9943  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c9949  f30f59c0                  MULSS XMM0,XMM0
004c994d  f30f59c9                  MULSS XMM1,XMM1
004c9951  f30f58c1                  ADDSS XMM0,XMM1
004c9955  e8f6c0f6ff                CALL 0x00435a50
004c995a  f30f100decaaba00          MOVSS XMM1,dword ptr [0x00baaaec]
004c9962  0f2fc8                    COMISS XMM1,XMM0
004c9965  8b85ccfdffff              MOV EAX,dword ptr [EBP + 0xfffffdcc]
004c996b  7609                      JBE 0x004c9976
004c996d  83c014                    ADD EAX,0x14
004c9970  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c9976  81bfb80b000001100000      CMP dword ptr [EDI + 0xbb8],0x1001
004c9980  7531                      JNZ 0x004c99b3
004c9982  81bfc40b000001100000      CMP dword ptr [EDI + 0xbc4],0x1001
004c998c  7525                      JNZ 0x004c99b3
004c998e  660f6ec0                  MOVD XMM0,EAX
004c9992  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c9995  c785ccfdffff14000000      MOV dword ptr [EBP + 0xfffffdcc],0x14
004c999f  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
004c99a7  f30f2cc0                  CVTTSS2SI EAX,XMM0
004c99ab  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004c99b1  eb3a                      JMP 0x004c99ed
004c99b3  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004c99b9  b928000000                MOV ECX,0x28
004c99be  83f808                    CMP EAX,0x8
004c99c1  ba14000000                MOV EDX,0x14
004c99c6  0f45ca                    CMOVNZ ECX,EDX
004c99c9  898dccfdffff              MOV dword ptr [EBP + 0xfffffdcc],ECX
004c99cf  83f807                    CMP EAX,0x7
004c99d2  7519                      JNZ 0x004c99ed
004c99d4  660f6ec1                  MOVD XMM0,ECX
004c99d8  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c99db  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004c99e3  f30f2cc0                  CVTTSS2SI EAX,XMM0
004c99e7  8985ccfdffff              MOV dword ptr [EBP + 0xfffffdcc],EAX
004c99ed  8bcf                      MOV ECX,EDI
004c99ef  e84c4e1f00                CALL 0x006be840
004c99f4  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004c99fc  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004c9a04  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004c9a0c  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004c9a14  f30f59c0                  MULSS XMM0,XMM0
004c9a18  f30f59c9                  MULSS XMM1,XMM1
004c9a1c  f30f58c1                  ADDSS XMM0,XMM1
004c9a20  e82bc0f6ff                CALL 0x00435a50
004c9a25  0f2f0508abba00            COMISS XMM0,dword ptr [0x00baab08]
004c9a2c  761d                      JBE 0x004c9a4b
004c9a2e  660f6e85bcfdffff          MOVD XMM0,dword ptr [EBP + 0xfffffdbc]
004c9a36  0f5bc0                    CVTDQ2PS XMM0,XMM0
004c9a39  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
004c9a41  f30f2cc0                  CVTTSS2SI EAX,XMM0
004c9a45  8985bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EAX
004c9a4b  33c9                      XOR ECX,ECX
004c9a4d  398d88fdffff              CMP dword ptr [EBP + 0xfffffd88],ECX
004c9a53  741c                      JZ 0x004c9a71
004c9a55  398d84fdffff              CMP dword ptr [EBP + 0xfffffd84],ECX
004c9a5b  7414                      JZ 0x004c9a71
004c9a5d  83bfc40b000009            CMP dword ptr [EDI + 0xbc4],0x9
004c9a64  b90f000000                MOV ECX,0xf
004c9a69  b81e000000                MOV EAX,0x1e
004c9a6e  0f44c8                    CMOVZ ECX,EAX
004c9a71  817f2813010000            CMP dword ptr [EDI + 0x28],0x113
004c9a78  757d                      JNZ 0x004c9af7
004c9a7a  33f6                      XOR ESI,ESI
004c9a7c  c785c4fdffffa0860100      MOV dword ptr [EBP + 0xfffffdc4],0x186a0
004c9a86  c785d4fdffffa0860100      MOV dword ptr [EBP + 0xfffffdd4],0x186a0
004c9a90  c785c0fdffffa0860100      MOV dword ptr [EBP + 0xfffffdc0],0x186a0
004c9a9a  c785bcfdffffa0860100      MOV dword ptr [EBP + 0xfffffdbc],0x186a0
004c9aa4  c785ccfdffffa0860100      MOV dword ptr [EBP + 0xfffffdcc],0x186a0
004c9aae  e8ad542200                CALL 0x006eef60
004c9ab3  8b8dccfdffff              MOV ECX,dword ptr [EBP + 0xfffffdcc]
004c9ab9  33d2                      XOR EDX,EDX
004c9abb  f7f1                      DIV ECX
004c9abd  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004c9ac3  8987b80b0000              MOV dword ptr [EDI + 0xbb8],EAX
004c9ac9  3bd6                      CMP EDX,ESI
004c9acb  7d70                      JGE 0x004c9b3d
004c9acd  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004c9ad7  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004c9ae1  c687c10b000000            MOV byte ptr [EDI + 0xbc1],0x0
004c9ae8  c787c40b000008000000      MOV dword ptr [EDI + 0xbc4],0x8
004c9af2  e91f020000                JMP 0x004c9d16
004c9af7  8b95c4fdffff              MOV EDX,dword ptr [EBP + 0xfffffdc4]
004c9afd  8b85ccfdffff              MOV EAX,dword ptr [EBP + 0xfffffdcc]
004c9b03  03d6                      ADD EDX,ESI
004c9b05  8995c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EDX
004c9b0b  0395d4fdffff              ADD EDX,dword ptr [EBP + 0xfffffdd4]
004c9b11  03c2                      ADD EAX,EDX
004c9b13  8995d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EDX
004c9b19  8985c0fdffff              MOV dword ptr [EBP + 0xfffffdc0],EAX
004c9b1f  0385bcfdffff              ADD EAX,dword ptr [EBP + 0xfffffdbc]
004c9b25  03c8                      ADD ECX,EAX
004c9b27  8985bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EAX
004c9b2d  898dccfdffff              MOV dword ptr [EBP + 0xfffffdcc],ECX
004c9b33  0f8575ffffff              JNZ 0x004c9aae
004c9b39  33d2                      XOR EDX,EDX
004c9b3b  eb80                      JMP 0x004c9abd
004c9b3d  3b95c4fdffff              CMP EDX,dword ptr [EBP + 0xfffffdc4]
004c9b43  7d3e                      JGE 0x004c9b83
004c9b45  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
004c9b4f  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004c9b59  c687c10b000000            MOV byte ptr [EDI + 0xbc1],0x0
004c9b60  c787c40b000009000000      MOV dword ptr [EDI + 0xbc4],0x9
004c9b6a  817f2813010000            CMP dword ptr [EDI + 0x28],0x113
004c9b71  0f859f010000              JNZ 0x004c9d16
004c9b77  c687c10b000001            MOV byte ptr [EDI + 0xbc1],0x1
004c9b7e  e993010000                JMP 0x004c9d16
004c9b83  3b95d4fdffff              CMP EDX,dword ptr [EBP + 0xfffffdd4]
004c9b89  7d7b                      JGE 0x004c9c06
004c9b8b  e8d0532200                CALL 0x006eef60
004c9b90  33d2                      XOR EDX,EDX
004c9b92  b90a000000                MOV ECX,0xa
004c9b97  f7f1                      DIV ECX
004c9b99  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
004c9b9f  8b8d88fdffff              MOV ECX,dword ptr [EBP + 0xfffffd88]
004c9ba5  83fa05                    CMP EDX,0x5
004c9ba8  0f468588fdffff            CMOVBE EAX,dword ptr [EBP + 0xfffffd88]
004c9baf  85c0                      TEST EAX,EAX
004c9bb1  0f45c8                    CMOVNZ ECX,EAX
004c9bb4  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
004c9bba  85c9                      TEST ECX,ECX
004c9bbc  0f45c1                    CMOVNZ EAX,ECX
004c9bbf  85c0                      TEST EAX,EAX
004c9bc1  7434                      JZ 0x004c9bf7
004c9bc3  51                        PUSH ECX
004c9bc4  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c9bcb  6a00                      PUSH 0x0
004c9bcd  6a02                      PUSH 0x2
004c9bcf  51                        PUSH ECX
004c9bd0  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
004c9bd7  8bcf                      MOV ECX,EDI
004c9bd9  68ef000000                PUSH 0xef
004c9bde  c780640b000008000000      MOV dword ptr [EAX + 0xb64],0x8
004c9be8  c7801004000000000000      MOV dword ptr [EAX + 0x410],0x0
004c9bf2  e8a9cf2000                CALL 0x006d6ba0
004c9bf7  c787c40b000001100000      MOV dword ptr [EDI + 0xbc4],0x1001
004c9c01  e910010000                JMP 0x004c9d16
004c9c06  3b95c0fdffff              CMP EDX,dword ptr [EBP + 0xfffffdc0]
004c9c0c  7d3d                      JGE 0x004c9c4b
004c9c0e  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
004c9c18  e843532200                CALL 0x006eef60
004c9c1d  33d2                      XOR EDX,EDX
004c9c1f  b903000000                MOV ECX,0x3
004c9c24  f7f1                      DIV ECX
004c9c26  02d2                      ADD DL,DL
004c9c28  fec2                      INC DL
004c9c2a  8897c10b0000              MOV byte ptr [EDI + 0xbc1],DL
004c9c30  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c9c36  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004c9c40  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c9c46  e9cb000000                JMP 0x004c9d16
004c9c4b  3b95bcfdffff              CMP EDX,dword ptr [EBP + 0xfffffdbc]
004c9c51  7d51                      JGE 0x004c9ca4
004c9c53  8bb588fdffff              MOV ESI,dword ptr [EBP + 0xfffffd88]
004c9c59  c787640b00000e000000      MOV dword ptr [EDI + 0xb64],0xe
004c9c63  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004c9c6d  c687c10b000000            MOV byte ptr [EDI + 0xbc1],0x0
004c9c74  85f6                      TEST ESI,ESI
004c9c76  740a                      JZ 0x004c9c82
004c9c78  c786640b00000e000000      MOV dword ptr [ESI + 0xb64],0xe
004c9c82  8bb584fdffff              MOV ESI,dword ptr [EBP + 0xfffffd84]
004c9c88  85f6                      TEST ESI,ESI
004c9c8a  740a                      JZ 0x004c9c96
004c9c8c  c786640b00000e000000      MOV dword ptr [ESI + 0xb64],0xe
004c9c96  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004c9c9c  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004c9ca2  eb72                      JMP 0x004c9d16
004c9ca4  3bd1                      CMP EDX,ECX
004c9ca6  7d6e                      JGE 0x004c9d16
004c9ca8  8bb588fdffff              MOV ESI,dword ptr [EBP + 0xfffffd88]
004c9cae  85f6                      TEST ESI,ESI
004c9cb0  7414                      JZ 0x004c9cc6
004c9cb2  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
004c9cbc  c786640b000009000000      MOV dword ptr [ESI + 0xb64],0x9
004c9cc6  8bb584fdffff              MOV ESI,dword ptr [EBP + 0xfffffd84]
004c9ccc  85f6                      TEST ESI,ESI
004c9cce  7414                      JZ 0x004c9ce4
004c9cd0  c78610040000eeffffff      MOV dword ptr [ESI + 0x410],0xffffffee
004c9cda  c786640b000009000000      MOV dword ptr [ESI + 0xb64],0x9
004c9ce4  51                        PUSH ECX
004c9ce5  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c9cec  6a00                      PUSH 0x0
004c9cee  6a02                      PUSH 0x2
004c9cf0  51                        PUSH ECX
004c9cf1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004c9cf8  8bcf                      MOV ECX,EDI
004c9cfa  68f1000000                PUSH 0xf1
004c9cff  e89cce2000                CALL 0x006d6ba0
004c9d04  c787c40b000000100000      MOV dword ptr [EDI + 0xbc4],0x1000
004c9d0e  eb06                      JMP 0x004c9d16
004c9d10  ff8710040000              INC dword ptr [EDI + 0x410]
004c9d16  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
004c9d1d  0f852d020000              JNZ 0x004c9f50
004c9d23  8a87c10b0000              MOV AL,byte ptr [EDI + 0xbc1]
004c9d29  84c0                      TEST AL,AL
004c9d2b  0f851b010000              JNZ 0x004c9e4c
004c9d31  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c9d34  85f6                      TEST ESI,ESI
004c9d36  744a                      JZ 0x004c9d82
004c9d38  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c9d3c  8bc6                      MOV EAX,ESI
004c9d3e  7202                      JC 0x004c9d42
004c9d40  8b06                      MOV EAX,dword ptr [ESI]
004c9d42  b938deb100                MOV ECX,0xb1de38
004c9d47  8a10                      MOV DL,byte ptr [EAX]
004c9d49  3a11                      CMP DL,byte ptr [ECX]
004c9d4b  751a                      JNZ 0x004c9d67
004c9d4d  84d2                      TEST DL,DL
004c9d4f  7412                      JZ 0x004c9d63
004c9d51  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c9d54  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c9d57  750e                      JNZ 0x004c9d67
004c9d59  83c002                    ADD EAX,0x2
004c9d5c  83c102                    ADD ECX,0x2
004c9d5f  84d2                      TEST DL,DL
004c9d61  75e4                      JNZ 0x004c9d47
004c9d63  33c0                      XOR EAX,EAX
004c9d65  eb05                      JMP 0x004c9d6c
004c9d67  1bc0                      SBB EAX,EAX
004c9d69  83c801                    OR EAX,0x1
004c9d6c  85c0                      TEST EAX,EAX
004c9d6e  7512                      JNZ 0x004c9d82
004c9d70  384634                    CMP byte ptr [ESI + 0x34],AL
004c9d73  742e                      JZ 0x004c9da3
004c9d75  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c9d7b  8d7748                    LEA ESI,[EDI + 0x48]
004c9d7e  7523                      JNZ 0x004c9da3
004c9d80  eb03                      JMP 0x004c9d85
004c9d82  8d7748                    LEA ESI,[EDI + 0x48]
004c9d85  6a01                      PUSH 0x1
004c9d87  6838deb100                PUSH 0xb1de38
004c9d8c  8bce                      MOV ECX,ESI
004c9d8e  e83d08f4ff                CALL 0x0040a5d0
004c9d93  84c0                      TEST AL,AL
004c9d95  740c                      JZ 0x004c9da3
004c9d97  8d4e30                    LEA ECX,[ESI + 0x30]
004c9d9a  e81104f4ff                CALL 0x0040a1b0
004c9d9f  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c9da3  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004c9dab  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004c9db1  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004c9db9  83f812                    CMP EAX,0x12
004c9dbc  750a                      JNZ 0x004c9dc8
004c9dbe  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004c9dc6  eb0d                      JMP 0x004c9dd5
004c9dc8  83f813                    CMP EAX,0x13
004c9dcb  7510                      JNZ 0x004c9ddd
004c9dcd  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004c9dd5  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004c9ddd  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004c9de3  8d8dd4fdffff              LEA ECX,[EBP + 0xfffffdd4]
004c9de9  c785d4fdfffff0000000      MOV dword ptr [EBP + 0xfffffdd4],0xf0
004c9df3  e888c94800                CALL 0x00956780
004c9df8  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004c9e00  83ec08                    SUB ESP,0x8
004c9e03  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004c9e0b  f30f110424                MOVSS dword ptr [ESP],XMM0
004c9e10  6a00                      PUSH 0x0
004c9e12  6a3c                      PUSH 0x3c
004c9e14  51                        PUSH ECX
004c9e15  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
004c9e1c  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004c9e22  ffb5d4fdffff              PUSH dword ptr [EBP + 0xfffffdd4]
004c9e28  e8033e4600                CALL 0x0092dc30
004c9e2d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c9e31  740d                      JZ 0x004c9e40
004c9e33  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c9e3a  0f8510010000              JNZ 0x004c9f50
004c9e40  c687c10b000001            MOV byte ptr [EDI + 0xbc1],0x1
004c9e47  e904010000                JMP 0x004c9f50
004c9e4c  3c01                      CMP AL,0x1
004c9e4e  0f85fc000000              JNZ 0x004c9f50
004c9e54  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c9e57  85f6                      TEST ESI,ESI
004c9e59  7450                      JZ 0x004c9eab
004c9e5b  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c9e5f  8bc6                      MOV EAX,ESI
004c9e61  7202                      JC 0x004c9e65
004c9e63  8b06                      MOV EAX,dword ptr [ESI]
004c9e65  b9f001b600                MOV ECX,0xb601f0
004c9e6a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004c9e70  8a10                      MOV DL,byte ptr [EAX]
004c9e72  3a11                      CMP DL,byte ptr [ECX]
004c9e74  751a                      JNZ 0x004c9e90
004c9e76  84d2                      TEST DL,DL
004c9e78  7412                      JZ 0x004c9e8c
004c9e7a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c9e7d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c9e80  750e                      JNZ 0x004c9e90
004c9e82  83c002                    ADD EAX,0x2
004c9e85  83c102                    ADD ECX,0x2
004c9e88  84d2                      TEST DL,DL
004c9e8a  75e4                      JNZ 0x004c9e70
004c9e8c  33c0                      XOR EAX,EAX
004c9e8e  eb05                      JMP 0x004c9e95
004c9e90  1bc0                      SBB EAX,EAX
004c9e92  83c801                    OR EAX,0x1
004c9e95  85c0                      TEST EAX,EAX
004c9e97  7512                      JNZ 0x004c9eab
004c9e99  384634                    CMP byte ptr [ESI + 0x34],AL
004c9e9c  742e                      JZ 0x004c9ecc
004c9e9e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c9ea4  8d7748                    LEA ESI,[EDI + 0x48]
004c9ea7  7523                      JNZ 0x004c9ecc
004c9ea9  eb03                      JMP 0x004c9eae
004c9eab  8d7748                    LEA ESI,[EDI + 0x48]
004c9eae  6a01                      PUSH 0x1
004c9eb0  68f001b600                PUSH 0xb601f0
004c9eb5  8bce                      MOV ECX,ESI
004c9eb7  e81407f4ff                CALL 0x0040a5d0
004c9ebc  84c0                      TEST AL,AL
004c9ebe  740c                      JZ 0x004c9ecc
004c9ec0  8d4e30                    LEA ECX,[ESI + 0x30]
004c9ec3  e8e802f4ff                CALL 0x0040a1b0
004c9ec8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c9ecc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c9ed0  7463                      JZ 0x004c9f35
004c9ed2  68dcd2b100                PUSH 0xb1d2dc
004c9ed7  8d4f78                    LEA ECX,[EDI + 0x78]
004c9eda  e8f10ef4ff                CALL 0x0040add0
004c9edf  84c0                      TEST AL,AL
004c9ee1  7443                      JZ 0x004c9f26
004c9ee3  6a00                      PUSH 0x0
004c9ee5  57                        PUSH EDI
004c9ee6  8d85acfdffff              LEA EAX,[EBP + 0xfffffdac]
004c9eec  c785acfdffff00000000      MOV dword ptr [EBP + 0xfffffdac],0x0
004c9ef6  50                        PUSH EAX
004c9ef7  6a28                      PUSH 0x28
004c9ef9  51                        PUSH ECX
004c9efa  8d873c030000              LEA EAX,[EDI + 0x33c]
004c9f00  c704240000b442            MOV dword ptr [ESP],0x42b40000
004c9f07  50                        PUSH EAX
004c9f08  6a06                      PUSH 0x6
004c9f0a  c785b0fdffff00002042      MOV dword ptr [EBP + 0xfffffdb0],0x42200000
004c9f14  e8f7534a00                CALL 0x0096f310
004c9f19  83c41c                    ADD ESP,0x1c
004c9f1c  c7805803000000401c46      MOV dword ptr [EAX + 0x358],0x461c4000
004c9f26  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c9f2a  7409                      JZ 0x004c9f35
004c9f2c  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c9f33  751b                      JNZ 0x004c9f50
004c9f35  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004c9f3f  c687c10b000000            MOV byte ptr [EDI + 0xbc1],0x0
004c9f46  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004c9f50  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
004c9f57  be05000000                MOV ESI,0x5
004c9f5c  0f857d150000              JNZ 0x004cb4df
004c9f62  8a8fc10b0000              MOV CL,byte ptr [EDI + 0xbc1]
004c9f68  c785c4fdffff96000000      MOV dword ptr [EBP + 0xfffffdc4],0x96
004c9f72  84c9                      TEST CL,CL
004c9f74  0f8517010000              JNZ 0x004ca091
004c9f7a  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004c9f7d  85f6                      TEST ESI,ESI
004c9f7f  744a                      JZ 0x004c9fcb
004c9f81  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004c9f85  8bc6                      MOV EAX,ESI
004c9f87  7202                      JC 0x004c9f8b
004c9f89  8b06                      MOV EAX,dword ptr [ESI]
004c9f8b  b938deb100                MOV ECX,0xb1de38
004c9f90  8a10                      MOV DL,byte ptr [EAX]
004c9f92  3a11                      CMP DL,byte ptr [ECX]
004c9f94  751a                      JNZ 0x004c9fb0
004c9f96  84d2                      TEST DL,DL
004c9f98  7412                      JZ 0x004c9fac
004c9f9a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004c9f9d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004c9fa0  750e                      JNZ 0x004c9fb0
004c9fa2  83c002                    ADD EAX,0x2
004c9fa5  83c102                    ADD ECX,0x2
004c9fa8  84d2                      TEST DL,DL
004c9faa  75e4                      JNZ 0x004c9f90
004c9fac  33c0                      XOR EAX,EAX
004c9fae  eb05                      JMP 0x004c9fb5
004c9fb0  1bc0                      SBB EAX,EAX
004c9fb2  83c801                    OR EAX,0x1
004c9fb5  85c0                      TEST EAX,EAX
004c9fb7  7512                      JNZ 0x004c9fcb
004c9fb9  384634                    CMP byte ptr [ESI + 0x34],AL
004c9fbc  742e                      JZ 0x004c9fec
004c9fbe  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004c9fc4  8d7748                    LEA ESI,[EDI + 0x48]
004c9fc7  7523                      JNZ 0x004c9fec
004c9fc9  eb03                      JMP 0x004c9fce
004c9fcb  8d7748                    LEA ESI,[EDI + 0x48]
004c9fce  6a01                      PUSH 0x1
004c9fd0  6838deb100                PUSH 0xb1de38
004c9fd5  8bce                      MOV ECX,ESI
004c9fd7  e8f405f4ff                CALL 0x0040a5d0
004c9fdc  84c0                      TEST AL,AL
004c9fde  740c                      JZ 0x004c9fec
004c9fe0  8d4e30                    LEA ECX,[ESI + 0x30]
004c9fe3  e8c801f4ff                CALL 0x0040a1b0
004c9fe8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004c9fec  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004c9ff0  7409                      JZ 0x004c9ffb
004c9ff2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004c9ff9  7507                      JNZ 0x004ca002
004c9ffb  c687c10b000001            MOV byte ptr [EDI + 0xbc1],0x1
004ca002  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004ca00a  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004ca010  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004ca018  83f812                    CMP EAX,0x12
004ca01b  750a                      JNZ 0x004ca027
004ca01d  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004ca025  eb0d                      JMP 0x004ca034
004ca027  83f813                    CMP EAX,0x13
004ca02a  7510                      JNZ 0x004ca03c
004ca02c  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004ca034  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004ca03c  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004ca042  8d8dd4fdffff              LEA ECX,[EBP + 0xfffffdd4]
004ca048  c785d4fdfffff0000000      MOV dword ptr [EBP + 0xfffffdd4],0xf0
004ca052  e829c74800                CALL 0x00956780
004ca057  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004ca05f  83ec08                    SUB ESP,0x8
004ca062  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004ca06a  f30f110424                MOVSS dword ptr [ESP],XMM0
004ca06f  6a00                      PUSH 0x0
004ca071  6a3c                      PUSH 0x3c
004ca073  51                        PUSH ECX
004ca074  c704240000003f            MOV dword ptr [ESP],0x3f000000
004ca07b  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004ca081  ffb5d4fdffff              PUSH dword ptr [EBP + 0xfffffdd4]
004ca087  e8a43b4600                CALL 0x0092dc30
004ca08c  e94e140000                JMP 0x004cb4df
004ca091  80f901                    CMP CL,0x1
004ca094  0f8544010000              JNZ 0x004ca1de
004ca09a  817f2812010000            CMP dword ptr [EDI + 0x28],0x112
004ca0a1  757c                      JNZ 0x004ca11f
004ca0a3  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
004ca0a6  85c9                      TEST ECX,ECX
004ca0a8  7451                      JZ 0x004ca0fb
004ca0aa  83791410                  CMP dword ptr [ECX + 0x14],0x10
004ca0ae  8bc1                      MOV EAX,ECX
004ca0b0  7202                      JC 0x004ca0b4
004ca0b2  8b01                      MOV EAX,dword ptr [ECX]
004ca0b4  b9cc01b600                MOV ECX,0xb601cc
004ca0b9  0f1f8000000000            NOP dword ptr [EAX]
004ca0c0  8a10                      MOV DL,byte ptr [EAX]
004ca0c2  3a11                      CMP DL,byte ptr [ECX]
004ca0c4  751a                      JNZ 0x004ca0e0
004ca0c6  84d2                      TEST DL,DL
004ca0c8  7412                      JZ 0x004ca0dc
004ca0ca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004ca0cd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004ca0d0  750e                      JNZ 0x004ca0e0
004ca0d2  83c002                    ADD EAX,0x2
004ca0d5  83c102                    ADD ECX,0x2
004ca0d8  84d2                      TEST DL,DL
004ca0da  75e4                      JNZ 0x004ca0c0
004ca0dc  33c0                      XOR EAX,EAX
004ca0de  eb05                      JMP 0x004ca0e5
004ca0e0  1bc0                      SBB EAX,EAX
004ca0e2  83c801                    OR EAX,0x1
004ca0e5  85c0                      TEST EAX,EAX
004ca0e7  7512                      JNZ 0x004ca0fb
004ca0e9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004ca0ec  80783400                  CMP byte ptr [EAX + 0x34],0x0
004ca0f0  747b                      JZ 0x004ca16d
004ca0f2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ca0f9  7572                      JNZ 0x004ca16d
004ca0fb  6a01                      PUSH 0x1
004ca0fd  68cc01b600                PUSH 0xb601cc
004ca102  8d4f48                    LEA ECX,[EDI + 0x48]
004ca105  e8c604f4ff                CALL 0x0040a5d0
004ca10a  84c0                      TEST AL,AL
004ca10c  745f                      JZ 0x004ca16d
004ca10e  8d4f78                    LEA ECX,[EDI + 0x78]
004ca111  e89a00f4ff                CALL 0x0040a1b0
004ca116  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004ca11d  eb4e                      JMP 0x004ca16d
004ca11f  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
004ca127  f30f101dfca6ba00          MOVSS XMM3,dword ptr [0x00baa6fc]
004ca12f  0f28c1                    MOVAPS XMM0,XMM1
004ca132  f30f58c1                  ADDSS XMM0,XMM1
004ca136  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
004ca13e  6a00                      PUSH 0x0
004ca140  f30f5ec3                  DIVSS XMM0,XMM3
004ca144  0f2fd0                    COMISS XMM2,XMM0
004ca147  7607                      JBE 0x004ca150
004ca149  68d801b600                PUSH 0xb601d8
004ca14e  eb15                      JMP 0x004ca165
004ca150  f30f5ecb                  DIVSS XMM1,XMM3
004ca154  0f2fd1                    COMISS XMM2,XMM1
004ca157  7607                      JBE 0x004ca160
004ca159  68cc01b600                PUSH 0xb601cc
004ca15e  eb05                      JMP 0x004ca165
004ca160  681002b600                PUSH 0xb60210
004ca165  8d4f48                    LEA ECX,[EDI + 0x48]
004ca168  e81302f4ff                CALL 0x0040a380
004ca16d  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004ca170  3d12010000                CMP EAX,0x112
004ca175  752d                      JNZ 0x004ca1a4
004ca177  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004ca17b  740d                      JZ 0x004ca18a
004ca17d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ca184  0f8555130000              JNZ 0x004cb4df
004ca18a  e8d14d2200                CALL 0x006eef60
004ca18f  33d2                      XOR EDX,EDX
004ca191  b909000000                MOV ECX,0x9
004ca196  f7f1                      DIV ECX
004ca198  80c202                    ADD DL,0x2
004ca19b  8897c10b0000              MOV byte ptr [EDI + 0xbc1],DL
004ca1a1  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004ca1a4  3d13010000                CMP EAX,0x113
004ca1a9  0f8530130000              JNZ 0x004cb4df
004ca1af  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004ca1b3  740d                      JZ 0x004ca1c2
004ca1b5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ca1bc  0f851d130000              JNZ 0x004cb4df
004ca1c2  e8994d2200                CALL 0x006eef60
004ca1c7  33d2                      XOR EDX,EDX
004ca1c9  b91a000000                MOV ECX,0x1a
004ca1ce  f7f1                      DIV ECX
004ca1d0  80c202                    ADD DL,0x2
004ca1d3  8897c10b0000              MOV byte ptr [EDI + 0xbc1],DL
004ca1d9  e901130000                JMP 0x004cb4df
004ca1de  8ac1                      MOV AL,CL
004ca1e0  2c02                      SUB AL,0x2
004ca1e2  3c61                      CMP AL,0x61
004ca1e4  0f8764120000              JA 0x004cb44e
004ca1ea  817f2812010000            CMP dword ptr [EDI + 0x28],0x112
004ca1f1  8d4f48                    LEA ECX,[EDI + 0x48]
004ca1f4  7507                      JNZ 0x004ca1fd
004ca1f6  b81c02b600                MOV EAX,0xb6021c
004ca1fb  eb43                      JMP 0x004ca240
004ca1fd  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
004ca205  f30f101dfca6ba00          MOVSS XMM3,dword ptr [0x00baa6fc]
004ca20d  0f28c1                    MOVAPS XMM0,XMM1
004ca210  f30f58c1                  ADDSS XMM0,XMM1
004ca214  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
004ca21c  f30f5ec3                  DIVSS XMM0,XMM3
004ca220  0f2fd0                    COMISS XMM2,XMM0
004ca223  7607                      JBE 0x004ca22c
004ca225  b8f801b600                MOV EAX,0xb601f8
004ca22a  eb14                      JMP 0x004ca240
004ca22c  f30f5ecb                  DIVSS XMM1,XMM3
004ca230  b81c02b600                MOV EAX,0xb6021c
004ca235  ba0402b600                MOV EDX,0xb60204
004ca23a  0f2fd1                    COMISS XMM2,XMM1
004ca23d  0f46c2                    CMOVBE EAX,EDX
004ca240  6a00                      PUSH 0x0
004ca242  50                        PUSH EAX
004ca243  e83801f4ff                CALL 0x0040a380
004ca248  e8134d2200                CALL 0x006eef60
004ca24d  b928000000                MOV ECX,0x28
004ca252  33d2                      XOR EDX,EDX
004ca254  f7f1                      DIV ECX
004ca256  51                        PUSH ECX
004ca257  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ca25e  6a00                      PUSH 0x0
004ca260  8d421e                    LEA EAX,[EDX + 0x1e]
004ca263  50                        PUSH EAX
004ca264  51                        PUSH ECX
004ca265  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ca26c  8bcf                      MOV ECX,EDI
004ca26e  68f5000000                PUSH 0xf5
004ca273  e828c92000                CALL 0x006d6ba0
004ca278  8a87c10b0000              MOV AL,byte ptr [EDI + 0xbc1]
004ca27e  f30f1005a4a7ba00          MOVSS XMM0,dword ptr [0x00baa7a4]
004ca286  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
004ca28e  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca296  c785bcfdffff3c000000      MOV dword ptr [EBP + 0xfffffdbc],0x3c
004ca2a0  3c02                      CMP AL,0x2
004ca2a2  757e                      JNZ 0x004ca322
004ca2a4  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
004ca2a7  c785a8fdffff06000000      MOV dword ptr [EBP + 0xfffffda8],0x6
004ca2b1  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca2b9  c785a0fdffff02000000      MOV dword ptr [EBP + 0xfffffda0],0x2
004ca2c3  c745a8a692ab3c            MOV dword ptr [EBP + -0x58],0x3cab92a6
004ca2ca  c745aca6922b3c            MOV dword ptr [EBP + -0x54],0x3c2b92a6
004ca2d1  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca2db  89b56cffffff              MOV dword ptr [EBP + 0xffffff6c],ESI
004ca2e1  81f913010000              CMP ECX,0x113
004ca2e7  751a                      JNZ 0x004ca303
004ca2e9  f30f100504a8ba00          MOVSS XMM0,dword ptr [0x00baa804]
004ca2f1  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca2f9  c7856cffffff06000000      MOV dword ptr [EBP + 0xffffff6c],0x6
004ca303  33c0                      XOR EAX,EAX
004ca305  81f913010000              CMP ECX,0x113
004ca30b  0f94c0                    SETZ AL
004ca30e  8d04450a000000            LEA EAX,[EAX*0x2 + 0xa]
004ca315  898598fdffff              MOV dword ptr [EBP + 0xfffffd98],EAX
004ca31b  8bf0                      MOV ESI,EAX
004ca31d  e9000a0000                JMP 0x004cad22
004ca322  3c03                      CMP AL,0x3
004ca324  757a                      JNZ 0x004ca3a0
004ca326  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
004ca329  89b5a8fdffff              MOV dword ptr [EBP + 0xfffffda8],ESI
004ca32f  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca337  c785a0fdffff02000000      MOV dword ptr [EBP + 0xfffffda0],0x2
004ca341  c745a8fdad803c            MOV dword ptr [EBP + -0x58],0x3c80adfd
004ca348  c745acfdad80bc            MOV dword ptr [EBP + -0x54],0xbc80adfd
004ca34f  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca359  c7856cffffff04000000      MOV dword ptr [EBP + 0xffffff6c],0x4
004ca363  81f913010000              CMP ECX,0x113
004ca369  7516                      JNZ 0x004ca381
004ca36b  f30f100504a8ba00          MOVSS XMM0,dword ptr [0x00baa804]
004ca373  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca37b  89b56cffffff              MOV dword ptr [EBP + 0xffffff6c],ESI
004ca381  33c0                      XOR EAX,EAX
004ca383  81f913010000              CMP ECX,0x113
004ca389  0f94c0                    SETZ AL
004ca38c  8d044508000000            LEA EAX,[EAX*0x2 + 0x8]
004ca393  898598fdffff              MOV dword ptr [EBP + 0xfffffd98],EAX
004ca399  8bf0                      MOV ESI,EAX
004ca39b  e982090000                JMP 0x004cad22
004ca3a0  3c04                      CMP AL,0x4
004ca3a2  7550                      JNZ 0x004ca3f4
004ca3a4  817f2813010000            CMP dword ptr [EDI + 0x28],0x113
004ca3ab  c785a8fdffff03000000      MOV dword ptr [EBP + 0xfffffda8],0x3
004ca3b5  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca3bd  c785a0fdffff01000000      MOV dword ptr [EBP + 0xfffffda0],0x1
004ca3c7  c745a85120163e            MOV dword ptr [EBP + -0x58],0x3e162051
004ca3ce  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca3d8  7510                      JNZ 0x004ca3ea
004ca3da  f30f100504a8ba00          MOVSS XMM0,dword ptr [0x00baa804]
004ca3e2  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca3ea  be02000000                MOV ESI,0x2
004ca3ef  e928090000                JMP 0x004cad1c
004ca3f4  3c05                      CMP AL,0x5
004ca3f6  0f8580000000              JNZ 0x004ca47c
004ca3fc  f30f100534a8ba00          MOVSS XMM0,dword ptr [0x00baa834]
004ca404  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
004ca407  c785a8fdffff06000000      MOV dword ptr [EBP + 0xfffffda8],0x6
004ca411  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca419  c785a0fdffff01000000      MOV dword ptr [EBP + 0xfffffda0],0x1
004ca423  c785bcfdffff3c000000      MOV dword ptr [EBP + 0xfffffdbc],0x3c
004ca42d  c745a87cd9203f            MOV dword ptr [EBP + -0x58],0x3f20d97c
004ca434  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca43e  81f913010000              CMP ECX,0x113
004ca444  7517                      JNZ 0x004ca45d
004ca446  f30f100550a8ba00          MOVSS XMM0,dword ptr [0x00baa850]
004ca44e  c745a85077d63e            MOV dword ptr [EBP + -0x58],0x3ed67750
004ca455  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca45d  33c0                      XOR EAX,EAX
004ca45f  81f913010000              CMP ECX,0x113
004ca465  0f94c0                    SETZ AL
004ca468  8d044502000000            LEA EAX,[EAX*0x2 + 0x2]
004ca46f  898598fdffff              MOV dword ptr [EBP + 0xfffffd98],EAX
004ca475  8bf0                      MOV ESI,EAX
004ca477  e9a6080000                JMP 0x004cad22
004ca47c  3c06                      CMP AL,0x6
004ca47e  755e                      JNZ 0x004ca4de
004ca480  f30f100504a8ba00          MOVSS XMM0,dword ptr [0x00baa804]
004ca488  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
004ca48b  c785a8fdffff08000000      MOV dword ptr [EBP + 0xfffffda8],0x8
004ca495  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca49d  c785a0fdffff01000000      MOV dword ptr [EBP + 0xfffffda0],0x1
004ca4a7  c785bcfdffff5a000000      MOV dword ptr [EBP + 0xfffffdbc],0x5a
004ca4b1  c745a87cd9203f            MOV dword ptr [EBP + -0x58],0x3f20d97c
004ca4b8  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca4c2  81f913010000              CMP ECX,0x113
004ca4c8  7593                      JNZ 0x004ca45d
004ca4ca  f30f100528a8ba00          MOVSS XMM0,dword ptr [0x00baa828]
004ca4d2  c745a8920a063f            MOV dword ptr [EBP + -0x58],0x3f060a92
004ca4d9  e977ffffff                JMP 0x004ca455
004ca4de  3c07                      CMP AL,0x7
004ca4e0  7562                      JNZ 0x004ca544
004ca4e2  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
004ca4ea  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
004ca4ed  c785a8fdffff09000000      MOV dword ptr [EBP + 0xfffffda8],0x9
004ca4f7  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca4ff  c785a0fdffff01000000      MOV dword ptr [EBP + 0xfffffda0],0x1
004ca509  c785bcfdffff78000000      MOV dword ptr [EBP + 0xfffffdbc],0x78
004ca513  c745a8920a063f            MOV dword ptr [EBP + -0x58],0x3f060a92
004ca51a  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca524  81f913010000              CMP ECX,0x113
004ca52a  0f852dffffff              JNZ 0x004ca45d
004ca530  f30f100514a8ba00          MOVSS XMM0,dword ptr [0x00baa814]
004ca538  c745a87cd9203f            MOV dword ptr [EBP + -0x58],0x3f20d97c
004ca53f  e911ffffff                JMP 0x004ca455
004ca544  3c08                      CMP AL,0x8
004ca546  7562                      JNZ 0x004ca5aa
004ca548  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
004ca550  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
004ca553  c785a8fdffff0c000000      MOV dword ptr [EBP + 0xfffffda8],0xc
004ca55d  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca565  c785a0fdffff01000000      MOV dword ptr [EBP + 0xfffffda0],0x1
004ca56f  c785bcfdffff78000000      MOV dword ptr [EBP + 0xfffffdbc],0x78
004ca579  c745a85077d63e            MOV dword ptr [EBP + -0x58],0x3ed67750
004ca580  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca58a  81f913010000              CMP ECX,0x113
004ca590  0f85c7feffff              JNZ 0x004ca45d
004ca596  f30f1005f4a7ba00          MOVSS XMM0,dword ptr [0x00baa7f4]
004ca59e  c745a866a83b3f            MOV dword ptr [EBP + -0x58],0x3f3ba866
004ca5a5  e9abfeffff                JMP 0x004ca455
004ca5aa  3c09                      CMP AL,0x9
004ca5ac  0f85a7000000              JNZ 0x004ca659
004ca5b2  817f2813010000            CMP dword ptr [EDI + 0x28],0x113
004ca5b9  be14000000                MOV ESI,0x14
004ca5be  f30f1015e8a7ba00          MOVSS XMM2,dword ptr [0x00baa7e8]
004ca5c6  89b598fdffff              MOV dword ptr [EBP + 0xfffffd98],ESI
004ca5cc  c785a8fdffff1e000000      MOV dword ptr [EBP + 0xfffffda8],0x1e
004ca5d6  f30f119590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM2
004ca5de  c785a0fdffff03000000      MOV dword ptr [EBP + 0xfffffda0],0x3
004ca5e8  c745a8effb163b            MOV dword ptr [EBP + -0x58],0x3b16fbef
004ca5ef  c745aceffb163b            MOV dword ptr [EBP + -0x54],0x3b16fbef
004ca5f6  c745b0effb163b            MOV dword ptr [EBP + -0x50],0x3b16fbef
004ca5fd  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca607  c7856cffffff03000000      MOV dword ptr [EBP + 0xffffff6c],0x3
004ca611  c78570ffffff06000000      MOV dword ptr [EBP + 0xffffff70],0x6
004ca61b  0f8501070000              JNZ 0x004cad22
004ca621  f30f100534a8ba00          MOVSS XMM0,dword ptr [0x00baa834]
004ca629  be1e000000                MOV ESI,0x1e
004ca62e  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca636  c785a8fdffff14000000      MOV dword ptr [EBP + 0xfffffda8],0x14
004ca640  c7856cffffff05000000      MOV dword ptr [EBP + 0xffffff6c],0x5
004ca64a  c78570ffffff0a000000      MOV dword ptr [EBP + 0xffffff70],0xa
004ca654  e9c3060000                JMP 0x004cad1c
004ca659  3c0a                      CMP AL,0xa
004ca65b  7544                      JNZ 0x004ca6a1
004ca65d  817f2813010000            CMP dword ptr [EDI + 0x28],0x113
004ca664  be19000000                MOV ESI,0x19
004ca669  f30f10155ca7ba00          MOVSS XMM2,dword ptr [0x00baa75c]
004ca671  b81e000000                MOV EAX,0x1e
004ca676  c785a8fdffff0a000000      MOV dword ptr [EBP + 0xfffffda8],0xa
004ca680  0f45f0                    CMOVNZ ESI,EAX
004ca683  f30f119590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM2
004ca68b  c745a82ee34d3c            MOV dword ptr [EBP + -0x58],0x3c4de32e
004ca692  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca69c  e971060000                JMP 0x004cad12
004ca6a1  3c0b                      CMP AL,0xb
004ca6a3  756a                      JNZ 0x004ca70f
004ca6a5  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
004ca6ad  be14000000                MOV ESI,0x14
004ca6b2  89b5a8fdffff              MOV dword ptr [EBP + 0xfffffda8],ESI
004ca6b8  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca6c0  c785a0fdffff02000000      MOV dword ptr [EBP + 0xfffffda0],0x2
004ca6ca  c785c4fdfffff0000000      MOV dword ptr [EBP + 0xfffffdc4],0xf0
004ca6d4  c745a81f42893a            MOV dword ptr [EBP + -0x58],0x3a89421f
004ca6db  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca6e5  c78528ffffff6f12033b      MOV dword ptr [EBP + 0xffffff28],0x3b03126f
004ca6ef  c745ac1f42893a            MOV dword ptr [EBP + -0x54],0x3a89421f
004ca6f6  c7856cffffff0a000000      MOV dword ptr [EBP + 0xffffff6c],0xa
004ca700  c7852cffffff6f12033b      MOV dword ptr [EBP + 0xffffff2c],0x3b03126f
004ca70a  e90d060000                JMP 0x004cad1c
004ca70f  3c0c                      CMP AL,0xc
004ca711  756e                      JNZ 0x004ca781
004ca713  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
004ca71b  be14000000                MOV ESI,0x14
004ca720  c785a8fdffff0e000000      MOV dword ptr [EBP + 0xfffffda8],0xe
004ca72a  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca732  c785a0fdffff02000000      MOV dword ptr [EBP + 0xfffffda0],0x2
004ca73c  c785c4fdfffff0000000      MOV dword ptr [EBP + 0xfffffdc4],0xf0
004ca746  c745a8a692abbb            MOV dword ptr [EBP + -0x58],0xbbab92a6
004ca74d  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca757  c78528ffffffa69b443b      MOV dword ptr [EBP + 0xffffff28],0x3b449ba6
004ca761  c745aca692ab3b            MOV dword ptr [EBP + -0x54],0x3bab92a6
004ca768  c7856cffffff00000000      MOV dword ptr [EBP + 0xffffff6c],0x0
004ca772  c7852cffffffa69b443b      MOV dword ptr [EBP + 0xffffff2c],0x3b449ba6
004ca77c  e99b050000                JMP 0x004cad1c
004ca781  3c0d                      CMP AL,0xd
004ca783  756e                      JNZ 0x004ca7f3
004ca785  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
004ca78d  be0c000000                MOV ESI,0xc
004ca792  c785a8fdffff14000000      MOV dword ptr [EBP + 0xfffffda8],0x14
004ca79c  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca7a4  c785a0fdffff02000000      MOV dword ptr [EBP + 0xfffffda0],0x2
004ca7ae  c785c4fdfffff0000000      MOV dword ptr [EBP + 0xfffffdc4],0xf0
004ca7b8  c745a81f4209bb            MOV dword ptr [EBP + -0x58],0xbb09421f
004ca7bf  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca7c9  c78528ffffff4260653b      MOV dword ptr [EBP + 0xffffff28],0x3b656042
004ca7d3  c745ac1f4209bb            MOV dword ptr [EBP + -0x54],0xbb09421f
004ca7da  c7856cffffff0a000000      MOV dword ptr [EBP + 0xffffff6c],0xa
004ca7e4  c7852cffffff4260653b      MOV dword ptr [EBP + 0xffffff2c],0x3b656042
004ca7ee  e929050000                JMP 0x004cad1c
004ca7f3  3c12                      CMP AL,0x12
004ca7f5  7535                      JNZ 0x004ca82c
004ca7f7  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
004ca7ff  be0c000000                MOV ESI,0xc
004ca804  c785a8fdffff0a000000      MOV dword ptr [EBP + 0xfffffda8],0xa
004ca80e  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca816  c745a82ee3cd3b            MOV dword ptr [EBP + -0x58],0x3bcde32e
004ca81d  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca827  e9e6040000                JMP 0x004cad12
004ca82c  3c13                      CMP AL,0x13
004ca82e  7541                      JNZ 0x004ca871
004ca830  be03000000                MOV ESI,0x3
004ca835  c785a8fdffff06000000      MOV dword ptr [EBP + 0xfffffda8],0x6
004ca83f  f30f118d90fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM1
004ca847  c785bcfdffff78000000      MOV dword ptr [EBP + 0xfffffdbc],0x78
004ca851  c785c4fdfffff0000000      MOV dword ptr [EBP + 0xfffffdc4],0xf0
004ca85b  c745a8fdad003f            MOV dword ptr [EBP + -0x58],0x3f00adfd
004ca862  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca86c  e9a1040000                JMP 0x004cad12
004ca871  3c14                      CMP AL,0x14
004ca873  7535                      JNZ 0x004ca8aa
004ca875  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
004ca87d  be32000000                MOV ESI,0x32
004ca882  c785a8fdffff19000000      MOV dword ptr [EBP + 0xfffffda8],0x19
004ca88c  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca894  c745a800000000            MOV dword ptr [EBP + -0x58],0x0
004ca89b  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca8a5  e968040000                JMP 0x004cad12
004ca8aa  3c15                      CMP AL,0x15
004ca8ac  7528                      JNZ 0x004ca8d6
004ca8ae  c785a8fdffff03000000      MOV dword ptr [EBP + 0xfffffda8],0x3
004ca8b8  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004ca8c0  c745a88cf60e3d            MOV dword ptr [EBP + -0x58],0x3d0ef68c
004ca8c7  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca8d1  e93c040000                JMP 0x004cad12
004ca8d6  3c16                      CMP AL,0x16
004ca8d8  7544                      JNZ 0x004ca91e
004ca8da  f30f101504a8ba00          MOVSS XMM2,dword ptr [0x00baa804]
004ca8e2  c785a8fdffff06000000      MOV dword ptr [EBP + 0xfffffda8],0x6
004ca8ec  f30f119590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM2
004ca8f4  c785bcfdffff78000000      MOV dword ptr [EBP + 0xfffffdbc],0x78
004ca8fe  c785c4fdffff78000000      MOV dword ptr [EBP + 0xfffffdc4],0x78
004ca908  c745a8db0fc93e            MOV dword ptr [EBP + -0x58],0x3ec90fdb
004ca90f  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca919  e9f4030000                JMP 0x004cad12
004ca91e  3c17                      CMP AL,0x17
004ca920  755a                      JNZ 0x004ca97c
004ca922  f30f101504a8ba00          MOVSS XMM2,dword ptr [0x00baa804]
004ca92a  be14000000                MOV ESI,0x14
004ca92f  c785a8fdffff05000000      MOV dword ptr [EBP + 0xfffffda8],0x5
004ca939  f30f119590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM2
004ca941  c785a0fdffff02000000      MOV dword ptr [EBP + 0xfffffda0],0x2
004ca94b  c785bcfdffff78000000      MOV dword ptr [EBP + 0xfffffdbc],0x78
004ca955  c745a800000000            MOV dword ptr [EBP + -0x58],0x0
004ca95c  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca966  c745ac00000000            MOV dword ptr [EBP + -0x54],0x0
004ca96d  c7856cffffff0a000000      MOV dword ptr [EBP + 0xffffff6c],0xa
004ca977  e9a0030000                JMP 0x004cad1c
004ca97c  3c18                      CMP AL,0x18
004ca97e  7537                      JNZ 0x004ca9b7
004ca980  be02000000                MOV ESI,0x2
004ca985  c785a8fdffff04000000      MOV dword ptr [EBP + 0xfffffda8],0x4
004ca98f  f30f118d90fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM1
004ca997  c785bcfdffff3d000000      MOV dword ptr [EBP + 0xfffffdbc],0x3d
004ca9a1  c745a8db0fc93f            MOV dword ptr [EBP + -0x58],0x3fc90fdb
004ca9a8  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca9b2  e95b030000                JMP 0x004cad12
004ca9b7  3c0e                      CMP AL,0xe
004ca9b9  7560                      JNZ 0x004caa1b
004ca9bb  f30f10155ca7ba00          MOVSS XMM2,dword ptr [0x00baa75c]
004ca9c3  be0a000000                MOV ESI,0xa
004ca9c8  89b5a8fdffff              MOV dword ptr [EBP + 0xfffffda8],ESI
004ca9ce  f30f119590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM2
004ca9d6  c785a0fdffff02000000      MOV dword ptr [EBP + 0xfffffda0],0x2
004ca9e0  c745a800000000            MOV dword ptr [EBP + -0x58],0x0
004ca9e7  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004ca9f1  c78528ffffff4260653b      MOV dword ptr [EBP + 0xffffff28],0x3b656042
004ca9fb  c745ac00000000            MOV dword ptr [EBP + -0x54],0x0
004caa02  c7856cffffff05000000      MOV dword ptr [EBP + 0xffffff6c],0x5
004caa0c  c7852cffffff4260653b      MOV dword ptr [EBP + 0xffffff2c],0x3b656042
004caa16  e901030000                JMP 0x004cad1c
004caa1b  3c0f                      CMP AL,0xf
004caa1d  0f85ac000000              JNZ 0x004caacf
004caa23  660f6e8f10040000          MOVD XMM1,dword ptr [EDI + 0x410]
004caa2b  0f57c0                    XORPS XMM0,XMM0
004caa2e  0f5bc9                    CVTDQ2PS XMM1,XMM1
004caa31  be06000000                MOV ESI,0x6
004caa36  c785a8fdffff0a000000      MOV dword ptr [EBP + 0xfffffda8],0xa
004caa40  c785a0fdffff02000000      MOV dword ptr [EBP + 0xfffffda0],0x2
004caa4a  c785c4fdfffff0000000      MOV dword ptr [EBP + 0xfffffdc4],0xf0
004caa54  c745a800000000            MOV dword ptr [EBP + -0x58],0x0
004caa5b  f30f1015b8a7ba00          MOVSS XMM2,dword ptr [0x00baa7b8]
004caa63  f30f5cc8                  SUBSS XMM1,XMM0
004caa67  f30f119590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM2
004caa6f  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004caa79  c745ac00000000            MOV dword ptr [EBP + -0x54],0x0
004caa80  c7856cffffff03000000      MOV dword ptr [EBP + 0xffffff6c],0x3
004caa8a  f30f5e0dd4aaba00          DIVSS XMM1,dword ptr [0x00baaad4]
004caa92  f30f5fc8                  MAXSS XMM1,XMM0
004caa96  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004caa9e  f30f5dc8                  MINSS XMM1,XMM0
004caaa2  f30f590d04a3ba00          MULSS XMM1,dword ptr [0x00baa304]
004caaaa  f30f5cc1                  SUBSS XMM0,XMM1
004caaae  f30f100d44a0ba00          MOVSS XMM1,dword ptr [0x00baa044]
004caab6  f30f5ec8                  DIVSS XMM1,XMM0
004caaba  f30f118d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM1
004caac2  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
004caaca  e94d020000                JMP 0x004cad1c
004caacf  3c10                      CMP AL,0x10
004caad1  0f85af000000              JNZ 0x004cab86
004caad7  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004caadf  0f57d2                    XORPS XMM2,XMM2
004caae2  0f5bc0                    CVTDQ2PS XMM0,XMM0
004caae5  be0a000000                MOV ESI,0xa
004caaea  c785a8fdffff08000000      MOV dword ptr [EBP + 0xfffffda8],0x8
004caaf4  89b598fdffff              MOV dword ptr [EBP + 0xfffffd98],ESI
004caafa  c785a0fdffff02000000      MOV dword ptr [EBP + 0xfffffda0],0x2
004cab04  c785c4fdfffff0000000      MOV dword ptr [EBP + 0xfffffdc4],0xf0
004cab0e  f30f118d90fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM1
004cab16  f30f5cc2                  SUBSS XMM0,XMM2
004cab1a  f30f5e05d4aaba00          DIVSS XMM0,dword ptr [0x00baaad4]
004cab22  f30f5fc2                  MAXSS XMM0,XMM2
004cab26  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004cab2e  f30f590538a8ba00          MULSS XMM0,dword ptr [0x00baa838]
004cab36  f30f58c2                  ADDSS XMM0,XMM2
004cab3a  e8012af5ff                CALL 0x0041d540
004cab3f  f30f590544a0ba00          MULSS XMM0,dword ptr [0x00baa044]
004cab47  33c9                      XOR ECX,ECX
004cab49  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004cab51  0f57c0                    XORPS XMM0,XMM0
004cab54  8b85ccfdffff              MOV EAX,dword ptr [EBP + 0xfffffdcc]
004cab5a  898528ffffff              MOV dword ptr [EBP + 0xffffff28],EAX
004cab60  89852cffffff              MOV dword ptr [EBP + 0xffffff2c],EAX
004cab66  33c0                      XOR EAX,EAX
004cab68  660fd645a8                MOVQ qword ptr [EBP + -0x58],XMM0
004cab6d  0f1f00                    NOP dword ptr [EAX]
004cab70  898c0568ffffff            MOV dword ptr [EBP + EAX*0x1 + 0xffffff68],ECX
004cab77  8d4004                    LEA EAX,[EAX + 0x4]
004cab7a  83c105                    ADD ECX,0x5
004cab7d  3bce                      CMP ECX,ESI
004cab7f  7cef                      JL 0x004cab70
004cab81  e99c010000                JMP 0x004cad22
004cab86  3c11                      CMP AL,0x11
004cab88  0f85bf000000              JNZ 0x004cac4d
004cab8e  0f57c0                    XORPS XMM0,XMM0
004cab91  c785a8fdffff06000000      MOV dword ptr [EBP + 0xfffffda8],0x6
004cab9b  f30f2a8710040000          CVTSI2SS XMM0,dword ptr [EDI + 0x410]
004caba3  c785a0fdffff01000000      MOV dword ptr [EBP + 0xfffffda0],0x1
004cabad  be02000000                MOV ESI,0x2
004cabb2  89b598fdffff              MOV dword ptr [EBP + 0xfffffd98],ESI
004cabb8  c785c4fdfffff0000000      MOV dword ptr [EBP + 0xfffffdc4],0xf0
004cabc2  0f57c9                    XORPS XMM1,XMM1
004cabc5  f30f5cc1                  SUBSS XMM0,XMM1
004cabc9  f30f5e05d4aaba00          DIVSS XMM0,dword ptr [0x00baaad4]
004cabd1  f30f5fc1                  MAXSS XMM0,XMM1
004cabd5  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004cabdd  f30f5905a8a7ba00          MULSS XMM0,dword ptr [0x00baa7a8]
004cabe5  f30f58c1                  ADDSS XMM0,XMM1
004cabe9  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004cabf1  e84a29f5ff                CALL 0x0041d540
004cabf6  f30f59c0                  MULSS XMM0,XMM0
004cabfa  c745a800000000            MOV dword ptr [EBP + -0x58],0x0
004cac01  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004cac0b  f30f590594a1ba00          MULSS XMM0,dword ptr [0x00baa194]
004cac13  f30f5805a4a3ba00          ADDSS XMM0,dword ptr [0x00baa3a4]
004cac1b  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
004cac23  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004cac2b  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004cac33  e8e828f5ff                CALL 0x0041d520
004cac38  f30f590560a0ba00          MULSS XMM0,dword ptr [0x00baa060]
004cac40  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
004cac48  e9d5000000                JMP 0x004cad22
004cac4d  3c19                      CMP AL,0x19
004cac4f  754e                      JNZ 0x004cac9f
004cac51  be24000000                MOV ESI,0x24
004cac56  c785a8fdffff14000000      MOV dword ptr [EBP + 0xfffffda8],0x14
004cac60  c785a0fdffff02000000      MOV dword ptr [EBP + 0xfffffda0],0x2
004cac6a  f30f118d90fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM1
004cac72  89b5bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],ESI
004cac78  c745a8db0fc93e            MOV dword ptr [EBP + -0x58],0x3ec90fdb
004cac7f  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004cac89  c745acdb0fc93e            MOV dword ptr [EBP + -0x54],0x3ec90fdb
004cac90  c7856cffffff12000000      MOV dword ptr [EBP + 0xffffff6c],0x12
004cac9a  e97d000000                JMP 0x004cad1c
004cac9f  3c1a                      CMP AL,0x1a
004caca1  7523                      JNZ 0x004cacc6
004caca3  be0a000000                MOV ESI,0xa
004caca8  c785a8fdffff0f000000      MOV dword ptr [EBP + 0xfffffda8],0xf
004cacb2  f30f118d90fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM1
004cacba  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004cacc4  eb4c                      JMP 0x004cad12
004cacc6  3c1b                      CMP AL,0x1b
004cacc8  7519                      JNZ 0x004cace3
004cacca  f30f118d90fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM1
004cacd2  c745a800000000            MOV dword ptr [EBP + -0x58],0x0
004cacd9  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
004cace3  b90a000000                MOV ECX,0xa
004cace8  0f45f1                    CMOVNZ ESI,ECX
004caceb  33d2                      XOR EDX,EDX
004caced  3c1b                      CMP AL,0x1b
004cacef  b83c000000                MOV EAX,0x3c
004cacf4  0f94c2                    SETZ DL
004cacf7  8d149506000000            LEA EDX,[EDX*0x4 + 0x6]
004cacfe  8995a8fdffff              MOV dword ptr [EBP + 0xfffffda8],EDX
004cad04  ba96000000                MOV EDX,0x96
004cad09  0f45d0                    CMOVNZ EDX,EAX
004cad0c  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004cad12  c785a0fdffff01000000      MOV dword ptr [EBP + 0xfffffda0],0x1
004cad1c  89b598fdffff              MOV dword ptr [EBP + 0xfffffd98],ESI
004cad22  33c9                      XOR ECX,ECX
004cad24  898dc0fdffff              MOV dword ptr [EBP + 0xfffffdc0],ECX
004cad2a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004cad30  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004cad36  8985b0fdffff              MOV dword ptr [EBP + 0xfffffdb0],EAX
004cad3c  2b848d68ffffff            SUB EAX,dword ptr [EBP + ECX*0x4 + 0xffffff68]
004cad43  99                        CDQ
004cad44  f7fe                      IDIV ESI
004cad46  85d2                      TEST EDX,EDX
004cad48  0f85a7060000              JNZ 0x004cb3f5
004cad4e  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
004cad54  e8d741f7ff                CALL 0x0043ef30
004cad59  8a8fc10b0000              MOV CL,byte ptr [EDI + 0xbc1]
004cad5f  8bb5d8feffff              MOV ESI,dword ptr [EBP + 0xfffffed8]
004cad65  8ac1                      MOV AL,CL
004cad67  8b95dcfeffff              MOV EDX,dword ptr [EBP + 0xfffffedc]
004cad6d  81ce80000000              OR ESI,0x80
004cad73  2c02                      SUB AL,0x2
004cad75  c78584feffff0000a040      MOV dword ptr [EBP + 0xfffffe84],0x40a00000
004cad7f  c78594feffff6666e63f      MOV dword ptr [EBP + 0xfffffe94],0x3fe66666
004cad89  c7858cfeffff8fc275bd      MOV dword ptr [EBP + 0xfffffe8c],0xbd75c28f
004cad93  c78588feffff000000c0      MOV dword ptr [EBP + 0xfffffe88],0xc0000000
004cad9d  c785f0feffff00000000      MOV dword ptr [EBP + 0xfffffef0],0x0
004cada7  c785f4feffff0000803f      MOV dword ptr [EBP + 0xfffffef4],0x3f800000
004cadb1  c785f8feffffcdcc4c3e      MOV dword ptr [EBP + 0xfffffef8],0x3e4ccccd
004cadbb  8995d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EDX
004cadc1  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
004cadc7  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
004cadcd  89b5ccfdffff              MOV dword ptr [EBP + 0xfffffdcc],ESI
004cadd3  8995b0fdffff              MOV dword ptr [EBP + 0xfffffdb0],EDX
004cadd9  3c02                      CMP AL,0x2
004caddb  7721                      JA 0x004cadfe
004caddd  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004cade5  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
004cadeb  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cadee  f30f594485a8              MULSS XMM0,dword ptr [EBP + EAX*0x4 + -0x58]
004cadf4  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
004cadfc  eb5b                      JMP 0x004cae59
004cadfe  8ac1                      MOV AL,CL
004cae00  2c05                      SUB AL,0x5
004cae02  3c03                      CMP AL,0x3
004cae04  0f87c9010000              JA 0x004cafd3
004cae0a  8b85bcfdffff              MOV EAX,dword ptr [EBP + 0xfffffdbc]
004cae10  99                        CDQ
004cae11  2bc2                      SUB EAX,EDX
004cae13  8bc8                      MOV ECX,EAX
004cae15  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004cae1b  99                        CDQ
004cae1c  f7bdbcfdffff              IDIV dword ptr [EBP + 0xfffffdbc]
004cae22  d1f9                      SAR ECX,0x1
004cae24  2bd1                      SUB EDX,ECX
004cae26  8bc2                      MOV EAX,EDX
004cae28  99                        CDQ
004cae29  33c2                      XOR EAX,EDX
004cae2b  660f6ec1                  MOVD XMM0,ECX
004cae2f  2bc2                      SUB EAX,EDX
004cae31  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cae34  660f6ec8                  MOVD XMM1,EAX
004cae38  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
004cae3e  0f5bc9                    CVTDQ2PS XMM1,XMM1
004cae41  f30f594c85a8              MULSS XMM1,dword ptr [EBP + EAX*0x4 + -0x58]
004cae47  f30f5ec8                  DIVSS XMM1,XMM0
004cae4b  f30f118d98feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM1
004cae53  8b95d4fdffff              MOV EDX,dword ptr [EBP + 0xfffffdd4]
004cae59  8bc6                      MOV EAX,ESI
004cae5b  2500000100                AND EAX,0x10000
004cae60  83c800                    OR EAX,0x0
004cae63  740e                      JZ 0x004cae73
004cae65  0f280500c0ba00            MOVAPS XMM0,xmmword ptr [0x00bac000]
004cae6c  0f1185bcfeffff            MOVUPS xmmword ptr [EBP + 0xfffffebc],XMM0
004cae73  8bc6                      MOV EAX,ESI
004cae75  2500004000                AND EAX,0x400000
004cae7a  83c800                    OR EAX,0x0
004cae7d  740e                      JZ 0x004cae8d
004cae7f  0f280520c9ba00            MOVAPS XMM0,xmmword ptr [0x00bac920]
004cae86  0f1185bcfeffff            MOVUPS xmmword ptr [EBP + 0xfffffebc],XMM0
004cae8d  8bc6                      MOV EAX,ESI
004cae8f  2500002000                AND EAX,0x200000
004cae94  83c800                    OR EAX,0x0
004cae97  740e                      JZ 0x004caea7
004cae99  0f280540c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac540]
004caea0  0f1185bcfeffff            MOVUPS xmmword ptr [EBP + 0xfffffebc],XMM0
004caea7  8bc6                      MOV EAX,ESI
004caea9  2500008000                AND EAX,0x800000
004caeae  83c800                    OR EAX,0x0
004caeb1  740e                      JZ 0x004caec1
004caeb3  0f280520c9ba00            MOVAPS XMM0,xmmword ptr [0x00bac920]
004caeba  0f1185bcfeffff            MOVUPS xmmword ptr [EBP + 0xfffffebc],XMM0
004caec1  8bc6                      MOV EAX,ESI
004caec3  2500000400                AND EAX,0x40000
004caec8  83c800                    OR EAX,0x0
004caecb  750c                      JNZ 0x004caed9
004caecd  8bc6                      MOV EAX,ESI
004caecf  2500000800                AND EAX,0x80000
004caed4  83c800                    OR EAX,0x0
004caed7  7465                      JZ 0x004caf3e
004caed9  f30f1085a0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea0]
004caee1  8bc6                      MOV EAX,ESI
004caee3  2500000800                AND EAX,0x80000
004caee8  83c800                    OR EAX,0x0
004caeeb  7408                      JZ 0x004caef5
004caeed  f30f590550adba00          MULSS XMM0,dword ptr [0x00baad50]
004caef5  f30f5c05dcacba00          SUBSS XMM0,dword ptr [0x00baacdc]
004caefd  0f57c9                    XORPS XMM1,XMM1
004caf00  c785bcfeffff9a99193f      MOV dword ptr [EBP + 0xfffffebc],0x3f19999a
004caf0a  c785c0feffff9a99193f      MOV dword ptr [EBP + 0xfffffec0],0x3f19999a
004caf14  c785c4feffff9a99193f      MOV dword ptr [EBP + 0xfffffec4],0x3f19999a
004caf1e  f30f5e0550a0ba00          DIVSS XMM0,dword ptr [0x00baa050]
004caf26  f30f5fc1                  MAXSS XMM0,XMM1
004caf2a  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004caf32  f30f58c1                  ADDSS XMM0,XMM1
004caf36  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
004caf3e  817f2813010000            CMP dword ptr [EDI + 0x28],0x113
004caf45  8a87c10b0000              MOV AL,byte ptr [EDI + 0xbc1]
004caf4b  7520                      JNZ 0x004caf6d
004caf4d  81fe80000000              CMP ESI,0x80
004caf53  7518                      JNZ 0x004caf6d
004caf55  85d2                      TEST EDX,EDX
004caf57  7514                      JNZ 0x004caf6d
004caf59  3c19                      CMP AL,0x19
004caf5b  0f84e2030000              JZ 0x004cb343
004caf61  3c03                      CMP AL,0x3
004caf63  0f84da030000              JZ 0x004cb343
004caf69  3c02                      CMP AL,0x2
004caf6b  7508                      JNZ 0x004caf75
004caf6d  3c11                      CMP AL,0x11
004caf6f  0f85ce030000              JNZ 0x004cb343
004caf75  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004caf7d  be02000000                MOV ESI,0x2
004caf82  0f5bc0                    CVTDQ2PS XMM0,XMM0
004caf85  89b514ffffff              MOV dword ptr [EBP + 0xffffff14],ESI
004caf8b  c785bcfeffff0000803f      MOV dword ptr [EBP + 0xfffffebc],0x3f800000
004caf95  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004caf9d  e87e25f5ff                CALL 0x0041d520
004cafa2  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
004cafaa  c785c4feffff00000000      MOV dword ptr [EBP + 0xfffffec4],0x0
004cafb4  c785c8feffffcdcc4c3f      MOV dword ptr [EBP + 0xfffffec8],0x3f4ccccd
004cafbe  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004cafc6  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
004cafce  e976030000                JMP 0x004cb349
004cafd3  80f909                    CMP CL,0x9
004cafd6  7531                      JNZ 0x004cb009
004cafd8  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
004cafde  8bc1                      MOV EAX,ECX
004cafe0  99                        CDQ
004cafe1  f7bd98fdffff              IDIV dword ptr [EBP + 0xfffffd98]
004cafe7  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
004cafed  2bca                      SUB ECX,EDX
004cafef  660f6ec1                  MOVD XMM0,ECX
004caff3  0f5bc0                    CVTDQ2PS XMM0,XMM0
004caff6  f30f594485a8              MULSS XMM0,dword ptr [EBP + EAX*0x4 + -0x58]
004caffc  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
004cb004  e94afeffff                JMP 0x004cae53
004cb009  80f90a                    CMP CL,0xa
004cb00c  7536                      JNZ 0x004cb044
004cb00e  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004cb016  81ce00000100              OR ESI,0x10000
004cb01c  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
004cb022  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cb025  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
004cb02b  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
004cb031  f30f594485a8              MULSS XMM0,dword ptr [EBP + EAX*0x4 + -0x58]
004cb037  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
004cb03f  e915feffff                JMP 0x004cae59
004cb044  8ac1                      MOV AL,CL
004cb046  2c0b                      SUB AL,0xb
004cb048  3c06                      CMP AL,0x6
004cb04a  0f87bd000000              JA 0x004cb10d
004cb050  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004cb058  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
004cb05e  c785ccfdffff00000000      MOV dword ptr [EBP + 0xfffffdcc],0x0
004cb068  c785d4fdffff00000400      MOV dword ptr [EBP + 0xfffffdd4],0x40000
004cb072  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cb075  f30f594485a8              MULSS XMM0,dword ptr [EBP + EAX*0x4 + -0x58]
004cb07b  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
004cb083  a801                      TEST AL,0x1
004cb085  750a                      JNZ 0x004cb091
004cb087  c785d4fdffff00000800      MOV dword ptr [EBP + 0xfffffdd4],0x80000
004cb091  0995ccfdffff              OR dword ptr [EBP + 0xfffffdcc],EDX
004cb097  09b5d4fdffff              OR dword ptr [EBP + 0xfffffdd4],ESI
004cb09d  f30f10848528ffffff        MOVSS XMM0,dword ptr [EBP + EAX*0x4 + 0xffffff28]
004cb0a6  8bb5d4fdffff              MOV ESI,dword ptr [EBP + 0xfffffdd4]
004cb0ac  8b95ccfdffff              MOV EDX,dword ptr [EBP + 0xfffffdcc]
004cb0b2  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
004cb0b8  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
004cb0be  f30f1185a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM0
004cb0c6  80f90e                    CMP CL,0xe
004cb0c9  7521                      JNZ 0x004cb0ec
004cb0cb  81ce00004000              OR ESI,0x400000
004cb0d1  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
004cb0d7  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
004cb0dd  c7858cfeffff7b14aebd      MOV dword ptr [EBP + 0xfffffe8c],0xbdae147b
004cb0e7  e96dfdffff                JMP 0x004cae59
004cb0ec  80f90f                    CMP CL,0xf
004cb0ef  0f8464fdffff              JZ 0x004cae59
004cb0f5  80f911                    CMP CL,0x11
004cb0f8  0f845bfdffff              JZ 0x004cae59
004cb0fe  c7858cfeffff7b14aebd      MOV dword ptr [EBP + 0xfffffe8c],0xbdae147b
004cb108  e94cfdffff                JMP 0x004cae59
004cb10d  8ac1                      MOV AL,CL
004cb10f  2c12                      SUB AL,0x12
004cb111  3c02                      CMP AL,0x2
004cb113  0f877f000000              JA 0x004cb198
004cb119  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004cb121  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
004cb127  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cb12a  f30f104c85a8              MOVSS XMM1,dword ptr [EBP + EAX*0x4 + -0x58]
004cb130  f30f59c8                  MULSS XMM1,XMM0
004cb134  f30f118d98feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM1
004cb13c  80f913                    CMP CL,0x13
004cb13f  7536                      JNZ 0x004cb177
004cb141  660f6e8dbcfdffff          MOVD XMM1,dword ptr [EBP + 0xfffffdbc]
004cb149  f30f5905a8a7ba00          MULSS XMM0,dword ptr [0x00baa7a8]
004cb151  0f5bc9                    CVTDQ2PS XMM1,XMM1
004cb154  f30f5ec1                  DIVSS XMM0,XMM1
004cb158  e8e323f5ff                CALL 0x0041d540
004cb15d  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
004cb163  8b95d4fdffff              MOV EDX,dword ptr [EBP + 0xfffffdd4]
004cb169  f30f594485a8              MULSS XMM0,dword ptr [EBP + EAX*0x4 + -0x58]
004cb16f  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
004cb177  81ce00004000              OR ESI,0x400000
004cb17d  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
004cb183  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
004cb189  c7858cfeffff7b14aebd      MOV dword ptr [EBP + 0xfffffe8c],0xbdae147b
004cb193  e9c1fcffff                JMP 0x004cae59
004cb198  8ac1                      MOV AL,CL
004cb19a  2c15                      SUB AL,0x15
004cb19c  3c02                      CMP AL,0x2
004cb19e  0f87b1000000              JA 0x004cb255
004cb1a4  660f6e9710040000          MOVD XMM2,dword ptr [EDI + 0x410]
004cb1ac  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
004cb1b2  0f5bd2                    CVTDQ2PS XMM2,XMM2
004cb1b5  f30f104485a8              MOVSS XMM0,dword ptr [EBP + EAX*0x4 + -0x58]
004cb1bb  f30f59c2                  MULSS XMM0,XMM2
004cb1bf  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
004cb1c7  80f916                    CMP CL,0x16
004cb1ca  7405                      JZ 0x004cb1d1
004cb1cc  80f917                    CMP CL,0x17
004cb1cf  7563                      JNZ 0x004cb234
004cb1d1  660f6e8dbcfdffff          MOVD XMM1,dword ptr [EBP + 0xfffffdbc]
004cb1d9  f30f5915a8a7ba00          MULSS XMM2,dword ptr [0x00baa7a8]
004cb1e1  0f5bc9                    CVTDQ2PS XMM1,XMM1
004cb1e4  f30f5ed1                  DIVSS XMM2,XMM1
004cb1e8  0f28c2                    MOVAPS XMM0,XMM2
004cb1eb  e85023f5ff                CALL 0x0041d540
004cb1f0  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
004cb1f6  0f28d0                    MOVAPS XMM2,XMM0
004cb1f9  8b95d4fdffff              MOV EDX,dword ptr [EBP + 0xfffffdd4]
004cb1ff  f30f595485a8              MULSS XMM2,dword ptr [EBP + EAX*0x4 + -0x58]
004cb205  f30f119598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM2
004cb20d  a801                      TEST AL,0x1
004cb20f  7523                      JNZ 0x004cb234
004cb211  660f6e85a8fdffff          MOVD XMM0,dword ptr [EBP + 0xfffffda8]
004cb219  f30f100d08a7ba00          MOVSS XMM1,dword ptr [0x00baa708]
004cb221  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cb224  f30f5ec8                  DIVSS XMM1,XMM0
004cb228  f30f58ca                  ADDSS XMM1,XMM2
004cb22c  f30f118d98feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM1
004cb234  81ce00008000              OR ESI,0x800000
004cb23a  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
004cb240  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
004cb246  c7858cfeffff7b14aebd      MOV dword ptr [EBP + 0xfffffe8c],0xbdae147b
004cb250  e904fcffff                JMP 0x004cae59
004cb255  80f918                    CMP CL,0x18
004cb258  754a                      JNZ 0x004cb2a4
004cb25a  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004cb262  660f6e8dbcfdffff          MOVD XMM1,dword ptr [EBP + 0xfffffdbc]
004cb26a  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cb26d  0f5bc9                    CVTDQ2PS XMM1,XMM1
004cb270  f30f5905a8a7ba00          MULSS XMM0,dword ptr [0x00baa7a8]
004cb278  f30f5ec1                  DIVSS XMM0,XMM1
004cb27c  e8bf22f5ff                CALL 0x0041d540
004cb281  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
004cb287  c7858cfeffff7b14aebd      MOV dword ptr [EBP + 0xfffffe8c],0xbdae147b
004cb291  f30f594485a8              MULSS XMM0,dword ptr [EBP + EAX*0x4 + -0x58]
004cb297  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
004cb29f  e9affbffff                JMP 0x004cae53
004cb2a4  8ac1                      MOV AL,CL
004cb2a6  2c19                      SUB AL,0x19
004cb2a8  3c02                      CMP AL,0x2
004cb2aa  0f87a9fbffff              JA 0x004cae59
004cb2b0  80f919                    CMP CL,0x19
004cb2b3  7550                      JNZ 0x004cb305
004cb2b5  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004cb2bd  660f6e8dbcfdffff          MOVD XMM1,dword ptr [EBP + 0xfffffdbc]
004cb2c5  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cb2c8  0f5bc9                    CVTDQ2PS XMM1,XMM1
004cb2cb  f30f5905a8a7ba00          MULSS XMM0,dword ptr [0x00baa7a8]
004cb2d3  f30f5ec1                  DIVSS XMM0,XMM1
004cb2d7  e86422f5ff                CALL 0x0041d540
004cb2dc  8b85c0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc0]
004cb2e2  f30f594485a8              MULSS XMM0,dword ptr [EBP + EAX*0x4 + -0x58]
004cb2e8  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
004cb2f0  83f801                    CMP EAX,0x1
004cb2f3  0f845afbffff              JZ 0x004cae53
004cb2f9  8a8fc10b0000              MOV CL,byte ptr [EDI + 0xbc1]
004cb2ff  8b95d4fdffff              MOV EDX,dword ptr [EBP + 0xfffffdd4]
004cb305  81ce00002000              OR ESI,0x200000
004cb30b  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
004cb311  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
004cb317  80f91b                    CMP CL,0x1b
004cb31a  0f8539fbffff              JNZ 0x004cae59
004cb320  8bb5ccfdffff              MOV ESI,dword ptr [EBP + 0xfffffdcc]
004cb326  8b95b0fdffff              MOV EDX,dword ptr [EBP + 0xfffffdb0]
004cb32c  81ce00006000              OR ESI,0x600000
004cb332  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
004cb338  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
004cb33e  e916fbffff                JMP 0x004cae59
004cb343  8bb514ffffff              MOV ESI,dword ptr [EBP + 0xffffff14]
004cb349  817f2813010000            CMP dword ptr [EDI + 0x28],0x113
004cb350  0f57d2                    XORPS XMM2,XMM2
004cb353  0f57c9                    XORPS XMM1,XMM1
004cb356  7524                      JNZ 0x004cb37c
004cb358  f30f100d34a8ba00          MOVSS XMM1,dword ptr [0x00baa834]
004cb360  83fe02                    CMP ESI,0x2
004cb363  750f                      JNZ 0x004cb374
004cb365  f30f100d9ca8ba00          MOVSS XMM1,dword ptr [0x00baa89c]
004cb36d  c68524ffffff01            MOV byte ptr [EBP + 0xffffff24],0x1
004cb374  f30f590d38a5ba00          MULSS XMM1,dword ptr [0x00baa538]
004cb37c  f30f108590fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd90]
004cb384  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
004cb38a  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004cb392  f30f118558fdffff          MOVSS dword ptr [EBP + 0xfffffd58],XMM0
004cb39a  8bcf                      MOV ECX,EDI
004cb39c  660f6e85a8fdffff          MOVD XMM0,dword ptr [EBP + 0xfffffda8]
004cb3a4  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cb3a7  50                        PUSH EAX
004cb3a8  6a09                      PUSH 0x9
004cb3aa  8d8558fdffff              LEA EAX,[EBP + 0xfffffd58]
004cb3b0  50                        PUSH EAX
004cb3b1  8d8550fdffff              LEA EAX,[EBP + 0xfffffd50]
004cb3b7  f30f118d54fdffff          MOVSS dword ptr [EBP + 0xfffffd54],XMM1
004cb3bf  f30f11855cfdffff          MOVSS dword ptr [EBP + 0xfffffd5c],XMM0
004cb3c7  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004cb3cf  f30f58c2                  ADDSS XMM0,XMM2
004cb3d3  50                        PUSH EAX
004cb3d4  f30f118550fdffff          MOVSS dword ptr [EBP + 0xfffffd50],XMM0
004cb3dc  e8fffe1f00                CALL 0x006cb2e0
004cb3e1  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
004cb3e7  8b8dc0fdffff              MOV ECX,dword ptr [EBP + 0xfffffdc0]
004cb3ed  8bb598fdffff              MOV ESI,dword ptr [EBP + 0xfffffd98]
004cb3f3  eb06                      JMP 0x004cb3fb
004cb3f5  8b95b0fdffff              MOV EDX,dword ptr [EBP + 0xfffffdb0]
004cb3fb  41                        INC ECX
004cb3fc  898dc0fdffff              MOV dword ptr [EBP + 0xfffffdc0],ECX
004cb402  3b8da0fdffff              CMP ECX,dword ptr [EBP + 0xfffffda0]
004cb408  0f8c22f9ffff              JL 0x004cad30
004cb40e  3b95c4fdffff              CMP EDX,dword ptr [EBP + 0xfffffdc4]
004cb414  7e07                      JLE 0x004cb41d
004cb416  c687c10b000064            MOV byte ptr [EDI + 0xbc1],0x64
004cb41d  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004cb423  2580000000                AND EAX,0x80
004cb428  83c800                    OR EAX,0x0
004cb42b  7413                      JZ 0x004cb440
004cb42d  83bf2002000003            CMP dword ptr [EDI + 0x220],0x3
004cb434  7d0a                      JGE 0x004cb440
004cb436  c7872002000003000000      MOV dword ptr [EDI + 0x220],0x3
004cb440  8d4201                    LEA EAX,[EDX + 0x1]
004cb443  898710040000              MOV dword ptr [EDI + 0x410],EAX
004cb449  e991000000                JMP 0x004cb4df
004cb44e  80f964                    CMP CL,0x64
004cb451  0f8588000000              JNZ 0x004cb4df
004cb457  817f2812010000            CMP dword ptr [EDI + 0x28],0x112
004cb45e  8d4f48                    LEA ECX,[EDI + 0x48]
004cb461  7507                      JNZ 0x004cb46a
004cb463  b83c02b600                MOV EAX,0xb6023c
004cb468  eb43                      JMP 0x004cb4ad
004cb46a  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
004cb472  f30f101dfca6ba00          MOVSS XMM3,dword ptr [0x00baa6fc]
004cb47a  0f28c1                    MOVAPS XMM0,XMM1
004cb47d  f30f58c1                  ADDSS XMM0,XMM1
004cb481  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
004cb489  f30f5ec3                  DIVSS XMM0,XMM3
004cb48d  0f2fd0                    COMISS XMM2,XMM0
004cb490  7607                      JBE 0x004cb499
004cb492  b84802b600                MOV EAX,0xb60248
004cb497  eb14                      JMP 0x004cb4ad
004cb499  f30f5ecb                  DIVSS XMM1,XMM3
004cb49d  b83c02b600                MOV EAX,0xb6023c
004cb4a2  ba2802b600                MOV EDX,0xb60228
004cb4a7  0f2fd1                    COMISS XMM2,XMM1
004cb4aa  0f46c2                    CMOVBE EAX,EDX
004cb4ad  6a00                      PUSH 0x0
004cb4af  50                        PUSH EAX
004cb4b0  e8cbeef3ff                CALL 0x0040a380
004cb4b5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004cb4b9  7409                      JZ 0x004cb4c4
004cb4bb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004cb4c2  751b                      JNZ 0x004cb4df
004cb4c4  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004cb4ce  c687c10b000000            MOV byte ptr [EDI + 0xbc1],0x0
004cb4d5  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004cb4df  83bf640b00000d            CMP dword ptr [EDI + 0xb64],0xd
004cb4e6  be01000000                MOV ESI,0x1
004cb4eb  0f85f7060000              JNZ 0x004cbbe8
004cb4f1  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004cb4f8  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004cb502  80bfc10b000000            CMP byte ptr [EDI + 0xbc1],0x0
004cb509  0f858d000000              JNZ 0x004cb59c
004cb50f  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004cb512  85f6                      TEST ESI,ESI
004cb514  744a                      JZ 0x004cb560
004cb516  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004cb51a  8bc6                      MOV EAX,ESI
004cb51c  7202                      JC 0x004cb520
004cb51e  8b06                      MOV EAX,dword ptr [ESI]
004cb520  b9b0d5b100                MOV ECX,0xb1d5b0
004cb525  8a10                      MOV DL,byte ptr [EAX]
004cb527  3a11                      CMP DL,byte ptr [ECX]
004cb529  751a                      JNZ 0x004cb545
004cb52b  84d2                      TEST DL,DL
004cb52d  7412                      JZ 0x004cb541
004cb52f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004cb532  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004cb535  750e                      JNZ 0x004cb545
004cb537  83c002                    ADD EAX,0x2
004cb53a  83c102                    ADD ECX,0x2
004cb53d  84d2                      TEST DL,DL
004cb53f  75e4                      JNZ 0x004cb525
004cb541  33c0                      XOR EAX,EAX
004cb543  eb05                      JMP 0x004cb54a
004cb545  1bc0                      SBB EAX,EAX
004cb547  83c801                    OR EAX,0x1
004cb54a  85c0                      TEST EAX,EAX
004cb54c  7512                      JNZ 0x004cb560
004cb54e  384634                    CMP byte ptr [ESI + 0x34],AL
004cb551  742e                      JZ 0x004cb581
004cb553  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004cb559  8d7748                    LEA ESI,[EDI + 0x48]
004cb55c  7523                      JNZ 0x004cb581
004cb55e  eb03                      JMP 0x004cb563
004cb560  8d7748                    LEA ESI,[EDI + 0x48]
004cb563  6a01                      PUSH 0x1
004cb565  68b0d5b100                PUSH 0xb1d5b0
004cb56a  8bce                      MOV ECX,ESI
004cb56c  e85ff0f3ff                CALL 0x0040a5d0
004cb571  84c0                      TEST AL,AL
004cb573  740c                      JZ 0x004cb581
004cb575  8d4e30                    LEA ECX,[ESI + 0x30]
004cb578  e833ecf3ff                CALL 0x0040a1b0
004cb57d  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004cb581  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004cb585  7409                      JZ 0x004cb590
004cb587  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004cb58e  7507                      JNZ 0x004cb597
004cb590  c687c10b000001            MOV byte ptr [EDI + 0xbc1],0x1
004cb597  be01000000                MOV ESI,0x1
004cb59c  8a87c10b0000              MOV AL,byte ptr [EDI + 0xbc1]
004cb5a2  fec8                      DEC AL
004cb5a4  3c08                      CMP AL,0x8
004cb5a6  0f876b050000              JA 0x004cbb17
004cb5ac  6a00                      PUSH 0x0
004cb5ae  683402b600                PUSH 0xb60234
004cb5b3  8d4f48                    LEA ECX,[EDI + 0x48]
004cb5b6  e8c5edf3ff                CALL 0x0040a380
004cb5bb  83bdb4fdffff00            CMP dword ptr [EBP + 0xfffffdb4],0x0
004cb5c2  0f854f050000              JNZ 0x004cbb17
004cb5c8  32c9                      XOR CL,CL
004cb5ca  32d2                      XOR DL,DL
004cb5cc  33c0                      XOR EAX,EAX
004cb5ce  898da0fdffff              MOV dword ptr [EBP + 0xfffffda0],ECX
004cb5d4  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004cb5da  8985c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EAX
004cb5e0  eb05                      JMP 0x004cb5e7
004cb5e2  be01000000                MOV ESI,0x1
004cb5e7  8a87c00b0000              MOV AL,byte ptr [EDI + 0xbc0]
004cb5ed  8885cbfdffff              MOV byte ptr [EBP + 0xfffffdcb],AL
004cb5f3  84c0                      TEST AL,AL
004cb5f5  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
004cb5fb  c785c0fdffff00000000      MOV dword ptr [EBP + 0xfffffdc0],0x0
004cb605  0f85a0000000              JNZ 0x004cb6ab
004cb60b  8a87c10b0000              MOV AL,byte ptr [EDI + 0xbc1]
004cb611  8885d3fdffff              MOV byte ptr [EBP + 0xfffffdd3],AL
004cb617  3c01                      CMP AL,0x1
004cb619  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
004cb61f  7535                      JNZ 0x004cb656
004cb621  85c0                      TEST EAX,EAX
004cb623  c785b0fdffff00000000      MOV dword ptr [EBP + 0xfffffdb0],0x0
004cb62d  be3f000000                MOV ESI,0x3f
004cb632  c785d4fdffff02000000      MOV dword ptr [EBP + 0xfffffdd4],0x2
004cb63c  0f45b5b0fdffff            CMOVNZ ESI,dword ptr [EBP + 0xfffffdb0]
004cb643  83f801                    CMP EAX,0x1
004cb646  0f854a010000              JNZ 0x004cb796
004cb64c  8d703f                    LEA ESI,[EAX + 0x3f]
004cb64f  8bc8                      MOV ECX,EAX
004cb651  e93a010000                JMP 0x004cb790
004cb656  80bdd3fdffff02            CMP byte ptr [EBP + 0xfffffdd3],0x2
004cb65d  7533                      JNZ 0x004cb692
004cb65f  85c0                      TEST EAX,EAX
004cb661  c785b0fdffff00000000      MOV dword ptr [EBP + 0xfffffdb0],0x0
004cb66b  be41000000                MOV ESI,0x41
004cb670  c785d4fdffff02000000      MOV dword ptr [EBP + 0xfffffdd4],0x2
004cb67a  0f45b5b0fdffff            CMOVNZ ESI,dword ptr [EBP + 0xfffffdb0]
004cb681  83f801                    CMP EAX,0x1
004cb684  0f850c010000              JNZ 0x004cb796
004cb68a  8d7041                    LEA ESI,[EAX + 0x41]
004cb68d  e9fc000000                JMP 0x004cb78e
004cb692  80bdd3fdffff03            CMP byte ptr [EBP + 0xfffffdd3],0x3
004cb699  7210                      JC 0x004cb6ab
004cb69b  ba01000000                MOV EDX,0x1
004cb6a0  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004cb6a6  e920040000                JMP 0x004cbacb
004cb6ab  80bdcbfdffff01            CMP byte ptr [EBP + 0xfffffdcb],0x1
004cb6b2  8895d3fdffff              MOV byte ptr [EBP + 0xfffffdd3],DL
004cb6b8  0f85ff000000              JNZ 0x004cb7bd
004cb6be  8a87c10b0000              MOV AL,byte ptr [EDI + 0xbc1]
004cb6c4  8885d3fdffff              MOV byte ptr [EBP + 0xfffffdd3],AL
004cb6ca  3c01                      CMP AL,0x1
004cb6cc  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
004cb6d2  753c                      JNZ 0x004cb710
004cb6d4  0fb6c9                    MOVZX ECX,CL
004cb6d7  85c0                      TEST EAX,EAX
004cb6d9  c785d4fdffff01000000      MOV dword ptr [EBP + 0xfffffdd4],0x1
004cb6e3  0f44ce                    CMOVZ ECX,ESI
004cb6e6  be33000000                MOV ESI,0x33
004cb6eb  898da0fdffff              MOV dword ptr [EBP + 0xfffffda0],ECX
004cb6f1  33c9                      XOR ECX,ECX
004cb6f3  85c0                      TEST EAX,EAX
004cb6f5  0f94c1                    SETZ CL
004cb6f8  898dc0fdffff              MOV dword ptr [EBP + 0xfffffdc0],ECX
004cb6fe  33c9                      XOR ECX,ECX
004cb700  85c0                      TEST EAX,EAX
004cb702  0f45f1                    CMOVNZ ESI,ECX
004cb705  8b8da0fdffff              MOV ECX,dword ptr [EBP + 0xfffffda0]
004cb70b  e986000000                JMP 0x004cb796
004cb710  80bdd3fdffff02            CMP byte ptr [EBP + 0xfffffdd3],0x2
004cb717  7524                      JNZ 0x004cb73d
004cb719  c785d4fdffff02000000      MOV dword ptr [EBP + 0xfffffdd4],0x2
004cb723  85c0                      TEST EAX,EAX
004cb725  7508                      JNZ 0x004cb72f
004cb727  8d702f                    LEA ESI,[EAX + 0x2f]
004cb72a  e91d010000                JMP 0x004cb84c
004cb72f  83f801                    CMP EAX,0x1
004cb732  0f8593030000              JNZ 0x004cbacb
004cb738  8d702f                    LEA ESI,[EAX + 0x2f]
004cb73b  eb47                      JMP 0x004cb784
004cb73d  80bdd3fdffff03            CMP byte ptr [EBP + 0xfffffdd3],0x3
004cb744  755d                      JNZ 0x004cb7a3
004cb746  c785d4fdffff04000000      MOV dword ptr [EBP + 0xfffffdd4],0x4
004cb750  85c0                      TEST EAX,EAX
004cb752  7508                      JNZ 0x004cb75c
004cb754  8d7032                    LEA ESI,[EAX + 0x32]
004cb757  e9f0000000                JMP 0x004cb84c
004cb75c  83f801                    CMP EAX,0x1
004cb75f  7508                      JNZ 0x004cb769
004cb761  8d702d                    LEA ESI,[EAX + 0x2d]
004cb764  e9e3000000                JMP 0x004cb84c
004cb769  83f802                    CMP EAX,0x2
004cb76c  7508                      JNZ 0x004cb776
004cb76e  8d7032                    LEA ESI,[EAX + 0x32]
004cb771  e9d6000000                JMP 0x004cb84c
004cb776  83f803                    CMP EAX,0x3
004cb779  0f854c030000              JNZ 0x004cbacb
004cb77f  be31000000                MOV ESI,0x31
004cb784  c785c0fdffff01000000      MOV dword ptr [EBP + 0xfffffdc0],0x1
004cb78e  b101                      MOV CL,0x1
004cb790  898da0fdffff              MOV dword ptr [EBP + 0xfffffda0],ECX
004cb796  85f6                      TEST ESI,ESI
004cb798  0f842d030000              JZ 0x004cbacb
004cb79e  e9b3000000                JMP 0x004cb856
004cb7a3  80bdd3fdffff04            CMP byte ptr [EBP + 0xfffffdd3],0x4
004cb7aa  0f821b030000              JC 0x004cbacb
004cb7b0  b201                      MOV DL,0x1
004cb7b2  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004cb7b8  e90e030000                JMP 0x004cbacb
004cb7bd  80bdcbfdffff02            CMP byte ptr [EBP + 0xfffffdcb],0x2
004cb7c4  8a95d3fdffff              MOV DL,byte ptr [EBP + 0xfffffdd3]
004cb7ca  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004cb7d0  0f85f5020000              JNZ 0x004cbacb
004cb7d6  8a97c10b0000              MOV DL,byte ptr [EDI + 0xbc1]
004cb7dc  8895cbfdffff              MOV byte ptr [EBP + 0xfffffdcb],DL
004cb7e2  80fa01                    CMP DL,0x1
004cb7e5  7525                      JNZ 0x004cb80c
004cb7e7  8a95d3fdffff              MOV DL,byte ptr [EBP + 0xfffffdd3]
004cb7ed  c785d4fdffff01000000      MOV dword ptr [EBP + 0xfffffdd4],0x1
004cb7f7  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004cb7fd  85c0                      TEST EAX,EAX
004cb7ff  0f85c6020000              JNZ 0x004cbacb
004cb805  be0f010000                MOV ESI,0x10f
004cb80a  eb2c                      JMP 0x004cb838
004cb80c  80fa02                    CMP DL,0x2
004cb80f  0f854b030000              JNZ 0x004cbb60
004cb815  8a95d3fdffff              MOV DL,byte ptr [EBP + 0xfffffdd3]
004cb81b  c785d4fdffff01000000      MOV dword ptr [EBP + 0xfffffdd4],0x1
004cb825  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004cb82b  85c0                      TEST EAX,EAX
004cb82d  0f8598020000              JNZ 0x004cbacb
004cb833  be10010000                MOV ESI,0x110
004cb838  b001                      MOV AL,0x1
004cb83a  8985a0fdffff              MOV dword ptr [EBP + 0xfffffda0],EAX
004cb840  8a85d3fdffff              MOV AL,byte ptr [EBP + 0xfffffdd3]
004cb846  8985bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EAX
004cb84c  c785c0fdffff01000000      MOV dword ptr [EBP + 0xfffffdc0],0x1
004cb856  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004cb85c  ba01000000                MOV EDX,0x1
004cb861  c785a8fdffff00000000      MOV dword ptr [EBP + 0xfffffda8],0x0
004cb86b  0f57e4                    XORPS XMM4,XMM4
004cb86e  c785a4fdffff00000000      MOV dword ptr [EBP + 0xfffffda4],0x0
004cb878  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004cb87e  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
004cb883  f30f105014                MOVSS XMM2,dword ptr [EAX + 0x14]
004cb888  8b85d4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdd4]
004cb88e  f30f5c0d50a9ba00          SUBSS XMM1,dword ptr [0x00baa950]
004cb896  f30f581550a9ba00          ADDSS XMM2,dword ptr [0x00baa950]
004cb89e  48                        DEC EAX
004cb89f  83f801                    CMP EAX,0x1
004cb8a2  0f4cc2                    CMOVL EAX,EDX
004cb8a5  f30f118db0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM1
004cb8ad  f30f1195b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM2
004cb8b5  660f6ed8                  MOVD XMM3,EAX
004cb8b9  0f5bdb                    CVTDQ2PS XMM3,XMM3
004cb8bc  0f2ee3                    UCOMISS XMM4,XMM3
004cb8bf  f30f119dccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM3
004cb8c7  9f                        LAHF
004cb8c8  f6c444                    TEST AH,0x44
004cb8cb  7a30                      JP 0x004cb8fd
004cb8cd  68d81bb800                PUSH 0xb81bd8
004cb8d2  6a10                      PUSH 0x10
004cb8d4  e8e7595400                CALL 0x00a112c0
004cb8d9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004cb8df  83c408                    ADD ESP,0x8
004cb8e2  f30f108db0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb0]
004cb8ea  0f57e4                    XORPS XMM4,XMM4
004cb8ed  f30f1095b4fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb4]
004cb8f5  f30f109dccfdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdcc]
004cb8fd  660f6e85c4fdffff          MOVD XMM0,dword ptr [EBP + 0xfffffdc4]
004cb905  f30f5cdc                  SUBSS XMM3,XMM4
004cb909  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cb90c  6a00                      PUSH 0x0
004cb90e  6a00                      PUSH 0x0
004cb910  6a00                      PUSH 0x0
004cb912  51                        PUSH ECX
004cb913  f30f5cca                  SUBSS XMM1,XMM2
004cb917  c7042400000000            MOV dword ptr [ESP],0x0
004cb91e  f30f5cc4                  SUBSS XMM0,XMM4
004cb922  f30f5ec3                  DIVSS XMM0,XMM3
004cb926  f30f5fc4                  MAXSS XMM0,XMM4
004cb92a  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004cb932  f30f59c8                  MULSS XMM1,XMM0
004cb936  f30f58ca                  ADDSS XMM1,XMM2
004cb93a  f30f118da4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM1
004cb942  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004cb948  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
004cb94d  8d85a4fdffff              LEA EAX,[EBP + 0xfffffda4]
004cb953  f30f5c0550a9ba00          SUBSS XMM0,dword ptr [0x00baa950]
004cb95b  50                        PUSH EAX
004cb95c  8d858cfdffff              LEA EAX,[EBP + 0xfffffd8c]
004cb962  50                        PUSH EAX
004cb963  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
004cb96b  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004cb971  e8aa7b3400                CALL 0x00813520
004cb976  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004cb97c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004cb980  f30f1185a4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM0
004cb988  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004cb98d  8d85a4fdffff              LEA EAX,[EBP + 0xfffffda4]
004cb993  50                        PUSH EAX
004cb994  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
004cb99c  e8af7f2300                CALL 0x00703950
004cb9a1  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004cb9a7  6a00                      PUSH 0x0
004cb9a9  ffb5c0fdffff              PUSH dword ptr [EBP + 0xfffffdc0]
004cb9af  81c170a60200              ADD ECX,0x2a670
004cb9b5  8985b0fdffff              MOV dword ptr [EBP + 0xfffffdb0],EAX
004cb9bb  56                        PUSH ESI
004cb9bc  e8ef951c00                CALL 0x00694fb0
004cb9c1  f30f104040                MOVSS XMM0,dword ptr [EAX + 0x40]
004cb9c6  8d4840                    LEA ECX,[EAX + 0x40]
004cb9c9  0f2f403c                  COMISS XMM0,dword ptr [EAX + 0x3c]
004cb9cd  8d503c                    LEA EDX,[EAX + 0x3c]
004cb9d0  f30f1085a4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda4]
004cb9d8  f30f108da8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda8]
004cb9e0  0f47d1                    CMOVA EDX,ECX
004cb9e3  8b8db0fdffff              MOV ECX,dword ptr [EBP + 0xfffffdb0]
004cb9e9  f30f1012                  MOVSS XMM2,dword ptr [EDX]
004cb9ed  f30f595038                MULSS XMM2,dword ptr [EAX + 0x38]
004cb9f2  f30f5c813c030000          SUBSS XMM0,dword ptr [ECX + 0x33c]
004cb9fa  f30f5c8940030000          SUBSS XMM1,dword ptr [ECX + 0x340]
004cba02  f30f589170030000          ADDSS XMM2,dword ptr [ECX + 0x370]
004cba0a  f30f59c0                  MULSS XMM0,XMM0
004cba0e  f30f581504a9ba00          ADDSS XMM2,dword ptr [0x00baa904]
004cba16  f30f59c9                  MULSS XMM1,XMM1
004cba1a  f30f58c8                  ADDSS XMM1,XMM0
004cba1e  0f28c2                    MOVAPS XMM0,XMM2
004cba21  f30f59c2                  MULSS XMM0,XMM2
004cba25  0f2fc1                    COMISS XMM0,XMM1
004cba28  765d                      JBE 0x004cba87
004cba2a  a17816c700                MOV EAX,[0x00c71678]
004cba2f  6a00                      PUSH 0x0
004cba31  6a00                      PUSH 0x0
004cba33  6a00                      PUSH 0x0
004cba35  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
004cba3b  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
004cba41  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
004cba47  51                        PUSH ECX
004cba48  898594fdffff              MOV dword ptr [EBP + 0xfffffd94],EAX
004cba4e  8d8594fdffff              LEA EAX,[EBP + 0xfffffd94]
004cba54  f30f111424                MOVSS dword ptr [ESP],XMM2
004cba59  50                        PUSH EAX
004cba5a  8d8578fdffff              LEA EAX,[EBP + 0xfffffd78]
004cba60  898d98fdffff              MOV dword ptr [EBP + 0xfffffd98],ECX
004cba66  50                        PUSH EAX
004cba67  8bca                      MOV ECX,EDX
004cba69  e8b27a3400                CALL 0x00813520
004cba6e  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004cba72  f30f1185a4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM0
004cba7a  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004cba7f  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
004cba87  e8d4342200                CALL 0x006eef60
004cba8c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004cba92  50                        PUSH EAX
004cba93  6a00                      PUSH 0x0
004cba95  57                        PUSH EDI
004cba96  6840b6c700                PUSH 0xc7b640
004cba9b  8d85a4fdffff              LEA EAX,[EBP + 0xfffffda4]
004cbaa1  50                        PUSH EAX
004cbaa2  ffb5c0fdffff              PUSH dword ptr [EBP + 0xfffffdc0]
004cbaa8  56                        PUSH ESI
004cbaa9  e872d0f5ff                CALL 0x00428b20
004cbaae  85c0                      TEST EAX,EAX
004cbab0  7407                      JZ 0x004cbab9
004cbab2  8b10                      MOV EDX,dword ptr [EAX]
004cbab4  8bc8                      MOV ECX,EAX
004cbab6  ff520c                    CALL dword ptr [EDX + 0xc]
004cbab9  8b8da0fdffff              MOV ECX,dword ptr [EBP + 0xfffffda0]
004cbabf  8b95bcfdffff              MOV EDX,dword ptr [EBP + 0xfffffdbc]
004cbac5  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
004cbacb  40                        INC EAX
004cbacc  8985c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EAX
004cbad2  84c9                      TEST CL,CL
004cbad4  7508                      JNZ 0x004cbade
004cbad6  84d2                      TEST DL,DL
004cbad8  0f8404fbffff              JZ 0x004cb5e2
004cbade  fe87c10b0000              INC byte ptr [EDI + 0xbc1]
004cbae4  84d2                      TEST DL,DL
004cbae6  742f                      JZ 0x004cbb17
004cbae8  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
004cbaee  c687c10b00000a            MOV byte ptr [EDI + 0xbc1],0xa
004cbaf5  85c0                      TEST EAX,EAX
004cbaf7  740a                      JZ 0x004cbb03
004cbaf9  c7801004000002000000      MOV dword ptr [EAX + 0x410],0x2
004cbb03  8b8588fdffff              MOV EAX,dword ptr [EBP + 0xfffffd88]
004cbb09  85c0                      TEST EAX,EAX
004cbb0b  740a                      JZ 0x004cbb17
004cbb0d  c7801004000002000000      MOV dword ptr [EAX + 0x410],0x2
004cbb17  80bfc10b00000a            CMP byte ptr [EDI + 0xbc1],0xa
004cbb1e  0f85c4000000              JNZ 0x004cbbe8
004cbb24  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004cbb27  85f6                      TEST ESI,ESI
004cbb29  746c                      JZ 0x004cbb97
004cbb2b  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004cbb2f  8bc6                      MOV EAX,ESI
004cbb31  7202                      JC 0x004cbb35
004cbb33  8b06                      MOV EAX,dword ptr [ESI]
004cbb35  b96c02b600                MOV ECX,0xb6026c
004cbb3a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004cbb40  8a10                      MOV DL,byte ptr [EAX]
004cbb42  3a11                      CMP DL,byte ptr [ECX]
004cbb44  7536                      JNZ 0x004cbb7c
004cbb46  84d2                      TEST DL,DL
004cbb48  7412                      JZ 0x004cbb5c
004cbb4a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004cbb4d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004cbb50  752a                      JNZ 0x004cbb7c
004cbb52  83c002                    ADD EAX,0x2
004cbb55  83c102                    ADD ECX,0x2
004cbb58  84d2                      TEST DL,DL
004cbb5a  75e4                      JNZ 0x004cbb40
004cbb5c  33c0                      XOR EAX,EAX
004cbb5e  eb21                      JMP 0x004cbb81
004cbb60  80bdcbfdffff03            CMP byte ptr [EBP + 0xfffffdcb],0x3
004cbb67  0fb695d3fdffff            MOVZX EDX,byte ptr [EBP + 0xfffffdd3]
004cbb6e  0f43d6                    CMOVNC EDX,ESI
004cbb71  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
004cbb77  e94fffffff                JMP 0x004cbacb
004cbb7c  1bc0                      SBB EAX,EAX
004cbb7e  83c801                    OR EAX,0x1
004cbb81  85c0                      TEST EAX,EAX
004cbb83  7512                      JNZ 0x004cbb97
004cbb85  384634                    CMP byte ptr [ESI + 0x34],AL
004cbb88  742e                      JZ 0x004cbbb8
004cbb8a  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004cbb90  8d7748                    LEA ESI,[EDI + 0x48]
004cbb93  7523                      JNZ 0x004cbbb8
004cbb95  eb03                      JMP 0x004cbb9a
004cbb97  8d7748                    LEA ESI,[EDI + 0x48]
004cbb9a  6a01                      PUSH 0x1
004cbb9c  686c02b600                PUSH 0xb6026c
004cbba1  8bce                      MOV ECX,ESI
004cbba3  e828eaf3ff                CALL 0x0040a5d0
004cbba8  84c0                      TEST AL,AL
004cbbaa  740c                      JZ 0x004cbbb8
004cbbac  8d4e30                    LEA ECX,[ESI + 0x30]
004cbbaf  e8fce5f3ff                CALL 0x0040a1b0
004cbbb4  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004cbbb8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004cbbbc  7409                      JZ 0x004cbbc7
004cbbbe  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004cbbc5  7521                      JNZ 0x004cbbe8
004cbbc7  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004cbbd1  fe87c00b0000              INC byte ptr [EDI + 0xbc0]
004cbbd7  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
004cbbde  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004cbbe8  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004cbbee  83f80e                    CMP EAX,0xe
004cbbf1  0f85a9040000              JNZ 0x004cc0a0
004cbbf7  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004cbbfa  85f6                      TEST ESI,ESI
004cbbfc  744d                      JZ 0x004cbc4b
004cbbfe  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004cbc02  8bc6                      MOV EAX,ESI
004cbc04  7202                      JC 0x004cbc08
004cbc06  8b06                      MOV EAX,dword ptr [ESI]
004cbc08  b920d4b100                MOV ECX,0xb1d420
004cbc0d  0f1f00                    NOP dword ptr [EAX]
004cbc10  8a10                      MOV DL,byte ptr [EAX]
004cbc12  3a11                      CMP DL,byte ptr [ECX]
004cbc14  751a                      JNZ 0x004cbc30
004cbc16  84d2                      TEST DL,DL
004cbc18  7412                      JZ 0x004cbc2c
004cbc1a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004cbc1d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004cbc20  750e                      JNZ 0x004cbc30
004cbc22  83c002                    ADD EAX,0x2
004cbc25  83c102                    ADD ECX,0x2
004cbc28  84d2                      TEST DL,DL
004cbc2a  75e4                      JNZ 0x004cbc10
004cbc2c  33c0                      XOR EAX,EAX
004cbc2e  eb05                      JMP 0x004cbc35
004cbc30  1bc0                      SBB EAX,EAX
004cbc32  83c801                    OR EAX,0x1
004cbc35  85c0                      TEST EAX,EAX
004cbc37  7512                      JNZ 0x004cbc4b
004cbc39  384634                    CMP byte ptr [ESI + 0x34],AL
004cbc3c  742e                      JZ 0x004cbc6c
004cbc3e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004cbc44  8d7748                    LEA ESI,[EDI + 0x48]
004cbc47  7523                      JNZ 0x004cbc6c
004cbc49  eb03                      JMP 0x004cbc4e
004cbc4b  8d7748                    LEA ESI,[EDI + 0x48]
004cbc4e  6a01                      PUSH 0x1
004cbc50  6820d4b100                PUSH 0xb1d420
004cbc55  8bce                      MOV ECX,ESI
004cbc57  e874e9f3ff                CALL 0x0040a5d0
004cbc5c  84c0                      TEST AL,AL
004cbc5e  740c                      JZ 0x004cbc6c
004cbc60  8d4e30                    LEA ECX,[ESI + 0x30]
004cbc63  e848e5f3ff                CALL 0x0040a1b0
004cbc68  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004cbc6c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004cbc70  0f84bd060000              JZ 0x004cc333
004cbc76  6820d4b100                PUSH 0xb1d420
004cbc7b  8d4f78                    LEA ECX,[EDI + 0x78]
004cbc7e  e84df1f3ff                CALL 0x0040add0
004cbc83  84c0                      TEST AL,AL
004cbc85  0f84f8030000              JZ 0x004cc083
004cbc8b  51                        PUSH ECX
004cbc8c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004cbc93  32c0                      XOR AL,AL
004cbc95  6a00                      PUSH 0x0
004cbc97  6a78                      PUSH 0x78
004cbc99  51                        PUSH ECX
004cbc9a  c704240000803f            MOV dword ptr [ESP],0x3f800000
004cbca1  8bcf                      MOV ECX,EDI
004cbca3  68f3000000                PUSH 0xf3
004cbca8  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004cbcae  e8edae2000                CALL 0x006d6ba0
004cbcb3  e8a8322200                CALL 0x006eef60
004cbcb8  33d2                      XOR EDX,EDX
004cbcba  b905000000                MOV ECX,0x5
004cbcbf  f7f1                      DIV ECX
004cbcc1  8b8dd4fdffff              MOV ECX,dword ptr [EBP + 0xfffffdd4]
004cbcc7  33c0                      XOR EAX,EAX
004cbcc9  8995ccfdffff              MOV dword ptr [EBP + 0xfffffdcc],EDX
004cbccf  8985c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EAX
004cbcd5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
004cbce0  c785b4fdffff00000000      MOV dword ptr [EBP + 0xfffffdb4],0x0
004cbcea  85d2                      TEST EDX,EDX
004cbcec  7538                      JNZ 0x004cbd26
004cbcee  ba01000000                MOV EDX,0x1
004cbcf3  0fb6c9                    MOVZX ECX,CL
004cbcf6  85c0                      TEST EAX,EAX
004cbcf8  c785b0fdffff00000000      MOV dword ptr [EBP + 0xfffffdb0],0x0
004cbd02  8bf2                      MOV ESI,EDX
004cbd04  0f44ce                    CMOVZ ECX,ESI
004cbd07  be2f000000                MOV ESI,0x2f
004cbd0c  0f45b5b0fdffff            CMOVNZ ESI,dword ptr [EBP + 0xfffffdb0]
004cbd13  898dd4fdffff              MOV dword ptr [EBP + 0xfffffdd4],ECX
004cbd19  85f6                      TEST ESI,ESI
004cbd1b  0f844d030000              JZ 0x004cc06e
004cbd21  e9b5000000                JMP 0x004cbddb
004cbd26  83fa01                    CMP EDX,0x1
004cbd29  7530                      JNZ 0x004cbd5b
004cbd2b  85c0                      TEST EAX,EAX
004cbd2d  c785b0fdffff00000000      MOV dword ptr [EBP + 0xfffffdb0],0x0
004cbd37  be2e000000                MOV ESI,0x2e
004cbd3c  ba02000000                MOV EDX,0x2
004cbd41  0f45b5b0fdffff            CMOVNZ ESI,dword ptr [EBP + 0xfffffdb0]
004cbd48  83f801                    CMP EAX,0x1
004cbd4b  75cc                      JNZ 0x004cbd19
004cbd4d  8d7232                    LEA ESI,[EDX + 0x32]
004cbd50  8885d4fdffff              MOV byte ptr [EBP + 0xfffffdd4],AL
004cbd56  e980000000                JMP 0x004cbddb
004cbd5b  83fa02                    CMP EDX,0x2
004cbd5e  7522                      JNZ 0x004cbd82
004cbd60  85c0                      TEST EAX,EAX
004cbd62  c785b0fdffff00000000      MOV dword ptr [EBP + 0xfffffdb0],0x0
004cbd6c  be31000000                MOV ESI,0x31
004cbd71  0f45b5b0fdffff            CMOVNZ ESI,dword ptr [EBP + 0xfffffdb0]
004cbd78  83f801                    CMP EAX,0x1
004cbd7b  759c                      JNZ 0x004cbd19
004cbd7d  8d7231                    LEA ESI,[EDX + 0x31]
004cbd80  eb53                      JMP 0x004cbdd5
004cbd82  83fa03                    CMP EDX,0x3
004cbd85  752d                      JNZ 0x004cbdb4
004cbd87  85c0                      TEST EAX,EAX
004cbd89  c785b0fdffff00000000      MOV dword ptr [EBP + 0xfffffdb0],0x0
004cbd93  be32000000                MOV ESI,0x32
004cbd98  ba02000000                MOV EDX,0x2
004cbd9d  0f45b5b0fdffff            CMOVNZ ESI,dword ptr [EBP + 0xfffffdb0]
004cbda4  83f801                    CMP EAX,0x1
004cbda7  0f856cffffff              JNZ 0x004cbd19
004cbdad  8d722e                    LEA ESI,[EDX + 0x2e]
004cbdb0  8ac0                      MOV AL,AL
004cbdb2  eb21                      JMP 0x004cbdd5
004cbdb4  83fa04                    CMP EDX,0x4
004cbdb7  0f85b7020000              JNZ 0x004cc074
004cbdbd  ba01000000                MOV EDX,0x1
004cbdc2  85c0                      TEST EAX,EAX
004cbdc4  0f85a4020000              JNZ 0x004cc06e
004cbdca  8d7212                    LEA ESI,[EDX + 0x12]
004cbdcd  8995b4fdffff              MOV dword ptr [EBP + 0xfffffdb4],EDX
004cbdd3  8ac2                      MOV AL,DL
004cbdd5  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004cbddb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004cbde1  0f57e4                    XORPS XMM4,XMM4
004cbde4  c78584fdffff00000000      MOV dword ptr [EBP + 0xfffffd84],0x0
004cbdee  c78580fdffff00000000      MOV dword ptr [EBP + 0xfffffd80],0x0
004cbdf8  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004cbdfe  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
004cbe03  f30f105014                MOVSS XMM2,dword ptr [EAX + 0x14]
004cbe08  8d42ff                    LEA EAX,[EDX + -0x1]
004cbe0b  f30f5c0d50a9ba00          SUBSS XMM1,dword ptr [0x00baa950]
004cbe13  f30f581550a9ba00          ADDSS XMM2,dword ptr [0x00baa950]
004cbe1b  83f801                    CMP EAX,0x1
004cbe1e  ba01000000                MOV EDX,0x1
004cbe23  0f4cc2                    CMOVL EAX,EDX
004cbe26  f30f118db0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM1
004cbe2e  f30f119588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM2
004cbe36  660f6ed8                  MOVD XMM3,EAX
004cbe3a  0f5bdb                    CVTDQ2PS XMM3,XMM3
004cbe3d  0f2ee3                    UCOMISS XMM4,XMM3
004cbe40  f30f119dc0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM3
004cbe48  9f                        LAHF
004cbe49  f6c444                    TEST AH,0x44
004cbe4c  7a35                      JP 0x004cbe83
004cbe4e  68d81bb800                PUSH 0xb81bd8
004cbe53  6a10                      PUSH 0x10
004cbe55  e866545400                CALL 0x00a112c0
004cbe5a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004cbe60  83c408                    ADD ESP,0x8
004cbe63  f30f108db0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb0]
004cbe6b  0f57e4                    XORPS XMM4,XMM4
004cbe6e  f30f109588fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd88]
004cbe76  ba01000000                MOV EDX,0x1
004cbe7b  f30f109dc0fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdc0]
004cbe83  0f57c0                    XORPS XMM0,XMM0
004cbe86  f30f5cdc                  SUBSS XMM3,XMM4
004cbe8a  f30f2a85c4fdffff          CVTSI2SS XMM0,dword ptr [EBP + 0xfffffdc4]
004cbe92  83fe13                    CMP ESI,0x13
004cbe95  f30f5cca                  SUBSS XMM1,XMM2
004cbe99  f30f5cc4                  SUBSS XMM0,XMM4
004cbe9d  f30f5ec3                  DIVSS XMM0,XMM3
004cbea1  f30f5fc4                  MAXSS XMM0,XMM4
004cbea5  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004cbead  f30f59c8                  MULSS XMM1,XMM0
004cbeb1  f30f58ca                  ADDSS XMM1,XMM2
004cbeb5  f30f118d80fdffff          MOVSS dword ptr [EBP + 0xfffffd80],XMM1
004cbebd  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
004cbec3  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
004cbec8  b804000000                MOV EAX,0x4
004cbecd  f30f5c0550a9ba00          SUBSS XMM0,dword ptr [0x00baa950]
004cbed5  0f45c2                    CMOVNZ EAX,EDX
004cbed8  898588fdffff              MOV dword ptr [EBP + 0xfffffd88],EAX
004cbede  f30f118584fdffff          MOVSS dword ptr [EBP + 0xfffffd84],XMM0
004cbee6  6a00                      PUSH 0x0
004cbee8  6a00                      PUSH 0x0
004cbeea  6a00                      PUSH 0x0
004cbeec  51                        PUSH ECX
004cbeed  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004cbef3  8d8580fdffff              LEA EAX,[EBP + 0xfffffd80]
004cbef9  c7042400000000            MOV dword ptr [ESP],0x0
004cbf00  50                        PUSH EAX
004cbf01  8d8578fdffff              LEA EAX,[EBP + 0xfffffd78]
004cbf07  50                        PUSH EAX
004cbf08  e813763400                CALL 0x00813520
004cbf0d  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004cbf11  f30f118580fdffff          MOVSS dword ptr [EBP + 0xfffffd80],XMM0
004cbf19  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004cbf1e  f30f118584fdffff          MOVSS dword ptr [EBP + 0xfffffd84],XMM0
004cbf26  83fe13                    CMP ESI,0x13
004cbf29  0f84f8000000              JZ 0x004cc027
004cbf2f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004cbf35  8d8580fdffff              LEA EAX,[EBP + 0xfffffd80]
004cbf3b  50                        PUSH EAX
004cbf3c  e80f7a2300                CALL 0x00703950
004cbf41  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004cbf47  6a00                      PUSH 0x0
004cbf49  ffb5b4fdffff              PUSH dword ptr [EBP + 0xfffffdb4]
004cbf4f  81c170a60200              ADD ECX,0x2a670
004cbf55  8985b0fdffff              MOV dword ptr [EBP + 0xfffffdb0],EAX
004cbf5b  56                        PUSH ESI
004cbf5c  e84f901c00                CALL 0x00694fb0
004cbf61  f30f104040                MOVSS XMM0,dword ptr [EAX + 0x40]
004cbf66  8d4840                    LEA ECX,[EAX + 0x40]
004cbf69  0f2f403c                  COMISS XMM0,dword ptr [EAX + 0x3c]
004cbf6d  8d503c                    LEA EDX,[EAX + 0x3c]
004cbf70  f30f108580fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd80]
004cbf78  f30f108d84fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd84]
004cbf80  0f47d1                    CMOVA EDX,ECX
004cbf83  8b8db0fdffff              MOV ECX,dword ptr [EBP + 0xfffffdb0]
004cbf89  f30f1012                  MOVSS XMM2,dword ptr [EDX]
004cbf8d  f30f595038                MULSS XMM2,dword ptr [EAX + 0x38]
004cbf92  f30f5c813c030000          SUBSS XMM0,dword ptr [ECX + 0x33c]
004cbf9a  f30f5c8940030000          SUBSS XMM1,dword ptr [ECX + 0x340]
004cbfa2  f30f589170030000          ADDSS XMM2,dword ptr [ECX + 0x370]
004cbfaa  f30f59c0                  MULSS XMM0,XMM0
004cbfae  f30f581504a9ba00          ADDSS XMM2,dword ptr [0x00baa904]
004cbfb6  f30f59c9                  MULSS XMM1,XMM1
004cbfba  f30f58c8                  ADDSS XMM1,XMM0
004cbfbe  0f28c2                    MOVAPS XMM0,XMM2
004cbfc1  f30f59c2                  MULSS XMM0,XMM2
004cbfc5  0f2fc1                    COMISS XMM0,XMM1
004cbfc8  765d                      JBE 0x004cc027
004cbfca  a17816c700                MOV EAX,[0x00c71678]
004cbfcf  6a00                      PUSH 0x0
004cbfd1  6a00                      PUSH 0x0
004cbfd3  6a00                      PUSH 0x0
004cbfd5  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
004cbfdb  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
004cbfe1  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
004cbfe7  51                        PUSH ECX
004cbfe8  8985b8fdffff              MOV dword ptr [EBP + 0xfffffdb8],EAX
004cbfee  8d85b8fdffff              LEA EAX,[EBP + 0xfffffdb8]
004cbff4  f30f111424                MOVSS dword ptr [ESP],XMM2
004cbff9  50                        PUSH EAX
004cbffa  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
004cc000  898dbcfdffff              MOV dword ptr [EBP + 0xfffffdbc],ECX
004cc006  50                        PUSH EAX
004cc007  8bca                      MOV ECX,EDX
004cc009  e812753400                CALL 0x00813520
004cc00e  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004cc012  f30f118580fdffff          MOVSS dword ptr [EBP + 0xfffffd80],XMM0
004cc01a  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004cc01f  f30f118584fdffff          MOVSS dword ptr [EBP + 0xfffffd84],XMM0
004cc027  e8342f2200                CALL 0x006eef60
004cc02c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004cc032  50                        PUSH EAX
004cc033  6a00                      PUSH 0x0
004cc035  57                        PUSH EDI
004cc036  6840b6c700                PUSH 0xc7b640
004cc03b  8d8580fdffff              LEA EAX,[EBP + 0xfffffd80]
004cc041  50                        PUSH EAX
004cc042  ffb5b4fdffff              PUSH dword ptr [EBP + 0xfffffdb4]
004cc048  56                        PUSH ESI
004cc049  e8d2caf5ff                CALL 0x00428b20
004cc04e  83ad88fdffff01            SUB dword ptr [EBP + 0xfffffd88],0x1
004cc055  740b                      JZ 0x004cc062
004cc057  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004cc05d  e984feffff                JMP 0x004cbee6
004cc062  8b85c4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc4]
004cc068  8b8dd4fdffff              MOV ECX,dword ptr [EBP + 0xfffffdd4]
004cc06e  8b95ccfdffff              MOV EDX,dword ptr [EBP + 0xfffffdcc]
004cc074  40                        INC EAX
004cc075  8985c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EAX
004cc07b  84c9                      TEST CL,CL
004cc07d  0f845dfcffff              JZ 0x004cbce0
004cc083  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004cc087  0f84a6020000              JZ 0x004cc333
004cc08d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004cc094  0f8499020000              JZ 0x004cc333
004cc09a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004cc0a0  83f807                    CMP EAX,0x7
004cc0a3  0f854b020000              JNZ 0x004cc2f4
004cc0a9  80bfc10b000001            CMP byte ptr [EDI + 0xbc1],0x1
004cc0b0  7572                      JNZ 0x004cc124
004cc0b2  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004cc0b5  85f6                      TEST ESI,ESI
004cc0b7  744a                      JZ 0x004cc103
004cc0b9  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004cc0bd  8bc6                      MOV EAX,ESI
004cc0bf  7202                      JC 0x004cc0c3
004cc0c1  8b06                      MOV EAX,dword ptr [ESI]
004cc0c3  b97402b600                MOV ECX,0xb60274
004cc0c8  8a10                      MOV DL,byte ptr [EAX]
004cc0ca  3a11                      CMP DL,byte ptr [ECX]
004cc0cc  751a                      JNZ 0x004cc0e8
004cc0ce  84d2                      TEST DL,DL
004cc0d0  7412                      JZ 0x004cc0e4
004cc0d2  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004cc0d5  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004cc0d8  750e                      JNZ 0x004cc0e8
004cc0da  83c002                    ADD EAX,0x2
004cc0dd  83c102                    ADD ECX,0x2
004cc0e0  84d2                      TEST DL,DL
004cc0e2  75e4                      JNZ 0x004cc0c8
004cc0e4  33c0                      XOR EAX,EAX
004cc0e6  eb05                      JMP 0x004cc0ed
004cc0e8  1bc0                      SBB EAX,EAX
004cc0ea  83c801                    OR EAX,0x1
004cc0ed  85c0                      TEST EAX,EAX
004cc0ef  7512                      JNZ 0x004cc103
004cc0f1  384634                    CMP byte ptr [ESI + 0x34],AL
004cc0f4  742e                      JZ 0x004cc124
004cc0f6  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004cc0fc  8d7748                    LEA ESI,[EDI + 0x48]
004cc0ff  7523                      JNZ 0x004cc124
004cc101  eb03                      JMP 0x004cc106
004cc103  8d7748                    LEA ESI,[EDI + 0x48]
004cc106  6a01                      PUSH 0x1
004cc108  687402b600                PUSH 0xb60274
004cc10d  8bce                      MOV ECX,ESI
004cc10f  e8bce4f3ff                CALL 0x0040a5d0
004cc114  84c0                      TEST AL,AL
004cc116  740c                      JZ 0x004cc124
004cc118  8d4e30                    LEA ECX,[ESI + 0x30]
004cc11b  e890e0f3ff                CALL 0x0040a1b0
004cc120  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004cc124  80bfc10b000003            CMP byte ptr [EDI + 0xbc1],0x3
004cc12b  7572                      JNZ 0x004cc19f
004cc12d  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004cc130  85f6                      TEST ESI,ESI
004cc132  744a                      JZ 0x004cc17e
004cc134  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004cc138  8bc6                      MOV EAX,ESI
004cc13a  7202                      JC 0x004cc13e
004cc13c  8b06                      MOV EAX,dword ptr [ESI]
004cc13e  b95402b600                MOV ECX,0xb60254
004cc143  8a10                      MOV DL,byte ptr [EAX]
004cc145  3a11                      CMP DL,byte ptr [ECX]
004cc147  751a                      JNZ 0x004cc163
004cc149  84d2                      TEST DL,DL
004cc14b  7412                      JZ 0x004cc15f
004cc14d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004cc150  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004cc153  750e                      JNZ 0x004cc163
004cc155  83c002                    ADD EAX,0x2
004cc158  83c102                    ADD ECX,0x2
004cc15b  84d2                      TEST DL,DL
004cc15d  75e4                      JNZ 0x004cc143
004cc15f  33c0                      XOR EAX,EAX
004cc161  eb05                      JMP 0x004cc168
004cc163  1bc0                      SBB EAX,EAX
004cc165  83c801                    OR EAX,0x1
004cc168  85c0                      TEST EAX,EAX
004cc16a  7512                      JNZ 0x004cc17e
004cc16c  384634                    CMP byte ptr [ESI + 0x34],AL
004cc16f  742e                      JZ 0x004cc19f
004cc171  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004cc177  8d7748                    LEA ESI,[EDI + 0x48]
004cc17a  7523                      JNZ 0x004cc19f
004cc17c  eb03                      JMP 0x004cc181
004cc17e  8d7748                    LEA ESI,[EDI + 0x48]
004cc181  6a01                      PUSH 0x1
004cc183  685402b600                PUSH 0xb60254
004cc188  8bce                      MOV ECX,ESI
004cc18a  e841e4f3ff                CALL 0x0040a5d0
004cc18f  84c0                      TEST AL,AL
004cc191  740c                      JZ 0x004cc19f
004cc193  8d4e30                    LEA ECX,[ESI + 0x30]
004cc196  e815e0f3ff                CALL 0x0040a1b0
004cc19b  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004cc19f  80bfc10b000005            CMP byte ptr [EDI + 0xbc1],0x5
004cc1a6  7574                      JNZ 0x004cc21c
004cc1a8  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004cc1ab  85f6                      TEST ESI,ESI
004cc1ad  744c                      JZ 0x004cc1fb
004cc1af  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004cc1b3  8bc6                      MOV EAX,ESI
004cc1b5  7202                      JC 0x004cc1b9
004cc1b7  8b06                      MOV EAX,dword ptr [ESI]
004cc1b9  b96002b600                MOV ECX,0xb60260
004cc1be  6690                      NOP
004cc1c0  8a10                      MOV DL,byte ptr [EAX]
004cc1c2  3a11                      CMP DL,byte ptr [ECX]
004cc1c4  751a                      JNZ 0x004cc1e0
004cc1c6  84d2                      TEST DL,DL
004cc1c8  7412                      JZ 0x004cc1dc
004cc1ca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004cc1cd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004cc1d0  750e                      JNZ 0x004cc1e0
004cc1d2  83c002                    ADD EAX,0x2
004cc1d5  83c102                    ADD ECX,0x2
004cc1d8  84d2                      TEST DL,DL
004cc1da  75e4                      JNZ 0x004cc1c0
004cc1dc  33c0                      XOR EAX,EAX
004cc1de  eb05                      JMP 0x004cc1e5
004cc1e0  1bc0                      SBB EAX,EAX
004cc1e2  83c801                    OR EAX,0x1
004cc1e5  85c0                      TEST EAX,EAX
004cc1e7  7512                      JNZ 0x004cc1fb
004cc1e9  384634                    CMP byte ptr [ESI + 0x34],AL
004cc1ec  742e                      JZ 0x004cc21c
004cc1ee  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004cc1f4  8d7748                    LEA ESI,[EDI + 0x48]
004cc1f7  7523                      JNZ 0x004cc21c
004cc1f9  eb03                      JMP 0x004cc1fe
004cc1fb  8d7748                    LEA ESI,[EDI + 0x48]
004cc1fe  6a01                      PUSH 0x1
004cc200  686002b600                PUSH 0xb60260
004cc205  8bce                      MOV ECX,ESI
004cc207  e8c4e3f3ff                CALL 0x0040a5d0
004cc20c  84c0                      TEST AL,AL
004cc20e  740c                      JZ 0x004cc21c
004cc210  8d4e30                    LEA ECX,[ESI + 0x30]
004cc213  e898dff3ff                CALL 0x0040a1b0
004cc218  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004cc21c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004cc220  0f840d010000              JZ 0x004cc333
004cc226  6880d9b100                PUSH 0xb1d980
004cc22b  8d4f78                    LEA ECX,[EDI + 0x78]
004cc22e  e89debf3ff                CALL 0x0040add0
004cc233  84c0                      TEST AL,AL
004cc235  0f84a4000000              JZ 0x004cc2df
004cc23b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004cc241  6a0c                      PUSH 0xc
004cc243  e828742300                CALL 0x00703670
004cc248  51                        PUSH ECX
004cc249  c704240000803f            MOV dword ptr [ESP],0x3f800000
004cc250  6a00                      PUSH 0x0
004cc252  6a02                      PUSH 0x2
004cc254  51                        PUSH ECX
004cc255  c70424cdcccc3e            MOV dword ptr [ESP],0x3ecccccd
004cc25c  8bcf                      MOV ECX,EDI
004cc25e  6a34                      PUSH 0x34
004cc260  e83ba92000                CALL 0x006d6ba0
004cc265  8d8dd8fdffff              LEA ECX,[EBP + 0xfffffdd8]
004cc26b  e8c02cf7ff                CALL 0x0043ef30
004cc270  8b8534feffff              MOV EAX,dword ptr [EBP + 0xfffffe34]
004cc276  ba32000000                MOV EDX,0x32
004cc27b  818d30feffff80000000      OR dword ptr [EBP + 0xfffffe30],0x80
004cc285  b919000000                MOV ECX,0x19
004cc28a  898534feffff              MOV dword ptr [EBP + 0xfffffe34],EAX
004cc290  8a87c10b0000              MOV AL,byte ptr [EDI + 0xbc1]
004cc296  3c03                      CMP AL,0x3
004cc298  c785dcfdffff00002041      MOV dword ptr [EBP + 0xfffffddc],0x41200000
004cc2a2  c785ecfdffff0000c03f      MOV dword ptr [EBP + 0xfffffdec],0x3fc00000
004cc2ac  0f45ca                    CMOVNZ ECX,EDX
004cc2af  c785e8fdffff9a99993f      MOV dword ptr [EBP + 0xfffffde8],0x3f99999a
004cc2b9  3c05                      CMP AL,0x5
004cc2bb  b814000000                MOV EAX,0x14
004cc2c0  0f44c8                    CMOVZ ECX,EAX
004cc2c3  8d85d8fdffff              LEA EAX,[EBP + 0xfffffdd8]
004cc2c9  50                        PUSH EAX
004cc2ca  51                        PUSH ECX
004cc2cb  c7042400000000            MOV dword ptr [ESP],0x0
004cc2d2  6840b6c700                PUSH 0xc7b640
004cc2d7  51                        PUSH ECX
004cc2d8  8bcf                      MOV ECX,EDI
004cc2da  e8f10a2000                CALL 0x006ccdd0
004cc2df  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004cc2e3  744e                      JZ 0x004cc333
004cc2e5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004cc2ec  7445                      JZ 0x004cc333
004cc2ee  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004cc2f4  83f810                    CMP EAX,0x10
004cc2f7  0f85d8040000              JNZ 0x004cc7d5
004cc2fd  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
004cc300  85c9                      TEST ECX,ECX
004cc302  7463                      JZ 0x004cc367
004cc304  83791410                  CMP dword ptr [ECX + 0x14],0x10
004cc308  8bc1                      MOV EAX,ECX
004cc30a  7202                      JC 0x004cc30e
004cc30c  8b01                      MOV EAX,dword ptr [ECX]
004cc30e  b93ce1b100                MOV ECX,0xb1e13c
004cc313  8a10                      MOV DL,byte ptr [EAX]
004cc315  3a11                      CMP DL,byte ptr [ECX]
004cc317  7533                      JNZ 0x004cc34c
004cc319  84d2                      TEST DL,DL
004cc31b  7412                      JZ 0x004cc32f
004cc31d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004cc320  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004cc323  7527                      JNZ 0x004cc34c
004cc325  83c002                    ADD EAX,0x2
004cc328  83c102                    ADD ECX,0x2
004cc32b  84d2                      TEST DL,DL
004cc32d  75e4                      JNZ 0x004cc313
004cc32f  33c0                      XOR EAX,EAX
004cc331  eb1e                      JMP 0x004cc351
004cc333  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004cc33d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004cc347  e989040000                JMP 0x004cc7d5
004cc34c  1bc0                      SBB EAX,EAX
004cc34e  83c801                    OR EAX,0x1
004cc351  85c0                      TEST EAX,EAX
004cc353  7512                      JNZ 0x004cc367
004cc355  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004cc358  80783400                  CMP byte ptr [EAX + 0x34],0x0
004cc35c  742b                      JZ 0x004cc389
004cc35e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004cc365  7522                      JNZ 0x004cc389
004cc367  6a01                      PUSH 0x1
004cc369  683ce1b100                PUSH 0xb1e13c
004cc36e  8d4f48                    LEA ECX,[EDI + 0x48]
004cc371  e85ae2f3ff                CALL 0x0040a5d0
004cc376  84c0                      TEST AL,AL
004cc378  740f                      JZ 0x004cc389
004cc37a  8d4f78                    LEA ECX,[EDI + 0x78]
004cc37d  e82edef3ff                CALL 0x0040a1b0
004cc382  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004cc389  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004cc38d  7505                      JNZ 0x004cc394
004cc38f  83c8ff                    OR EAX,0xffffffff
004cc392  eb2e                      JMP 0x004cc3c2
004cc394  d98788000000              FLD dword ptr [EDI + 0x88]
004cc39a  83ec08                    SUB ESP,0x8
004cc39d  dd1c24                    FSTP qword ptr [ESP]
004cc3a0  e872456200                CALL 0x00af0917
004cc3a5  d99db0fdffff              FSTP dword ptr [EBP + 0xfffffdb0]
004cc3ab  d985b0fdffff              FLD dword ptr [EBP + 0xfffffdb0]
004cc3b1  83c408                    ADD ESP,0x8
004cc3b4  d99db0fdffff              FSTP dword ptr [EBP + 0xfffffdb0]
004cc3ba  f30f2c85b0fdffff          CVTTSS2SI EAX,dword ptr [EBP + 0xfffffdb0]
004cc3c2  660f6ec0                  MOVD XMM0,EAX
004cc3c6  0f57c9                    XORPS XMM1,XMM1
004cc3c9  0f5bc0                    CVTDQ2PS XMM0,XMM0
004cc3cc  51                        PUSH ECX
004cc3cd  c704240000003f            MOV dword ptr [ESP],0x3f000000
004cc3d4  6a00                      PUSH 0x0
004cc3d6  6a64                      PUSH 0x64
004cc3d8  51                        PUSH ECX
004cc3d9  f30f5cc1                  SUBSS XMM0,XMM1
004cc3dd  c704240000803f            MOV dword ptr [ESP],0x3f800000
004cc3e4  68ef000000                PUSH 0xef
004cc3e9  8bcf                      MOV ECX,EDI
004cc3eb  c785acfdffff0000a043      MOV dword ptr [EBP + 0xfffffdac],0x43a00000
004cc3f5  c785b0fdffff00005243      MOV dword ptr [EBP + 0xfffffdb0],0x43520000
004cc3ff  f30f5e0554a8ba00          DIVSS XMM0,dword ptr [0x00baa854]
004cc407  f30f5fc1                  MAXSS XMM0,XMM1
004cc40b  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004cc413  f30f1185d4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM0
004cc41b  e880a72000                CALL 0x006d6ba0
004cc420  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004cc426  6a05                      PUSH 0x5
004cc428  e843722300                CALL 0x00703670
004cc42d  a17816c700                MOV EAX,[0x00c71678]
004cc432  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004cc438  8bb0f8110000              MOV ESI,dword ptr [EAX + 0x11f8]
004cc43e  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
004cc445  7516                      JNZ 0x004cc45d
004cc447  8d85acfdffff              LEA EAX,[EBP + 0xfffffdac]
004cc44d  50                        PUSH EAX
004cc44e  8d4e50                    LEA ECX,[ESI + 0x50]
004cc451  e8da8c4700                CALL 0x00945130
004cc456  c6868c00000001            MOV byte ptr [ESI + 0x8c],0x1
004cc45d  a17816c700                MOV EAX,[0x00c71678]
004cc462  33f6                      XOR ESI,ESI
004cc464  89b5b4fdffff              MOV dword ptr [EBP + 0xfffffdb4],ESI
004cc46a  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004cc470  8985ccfdffff              MOV dword ptr [EBP + 0xfffffdcc],EAX
004cc476  39b064120000              CMP dword ptr [EAX + 0x1264],ESI
004cc47c  7672                      JBE 0x004cc4f0
004cc47e  6690                      NOP
004cc480  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
004cc486  51                        PUSH ECX
004cc487  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
004cc48a  e891ca1d00                CALL 0x006a8f20
004cc48f  84c0                      TEST AL,AL
004cc491  7448                      JZ 0x004cc4db
004cc493  8b85ccfdffff              MOV EAX,dword ptr [EBP + 0xfffffdcc]
004cc499  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
004cc49f  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
004cc4a2  8985b0fdffff              MOV dword ptr [EBP + 0xfffffdb0],EAX
004cc4a8  8b4828                    MOV ECX,dword ptr [EAX + 0x28]
004cc4ab  81f912010000              CMP ECX,0x112
004cc4b1  7428                      JZ 0x004cc4db
004cc4b3  81f913010000              CMP ECX,0x113
004cc4b9  7420                      JZ 0x004cc4db
004cc4bb  8b00                      MOV EAX,dword ptr [EAX]
004cc4bd  8d4dc0                    LEA ECX,[EBP + -0x40]
004cc4c0  57                        PUSH EDI
004cc4c1  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
004cc4c4  e8474ef6ff                CALL 0x00431310
004cc4c9  8b8db0fdffff              MOV ECX,dword ptr [EBP + 0xfffffdb0]
004cc4cf  8d45c0                    LEA EAX,[EBP + -0x40]
004cc4d2  50                        PUSH EAX
004cc4d3  ffd6                      CALL ESI
004cc4d5  8bb5b4fdffff              MOV ESI,dword ptr [EBP + 0xfffffdb4]
004cc4db  8b85ccfdffff              MOV EAX,dword ptr [EBP + 0xfffffdcc]
004cc4e1  46                        INC ESI
004cc4e2  89b5b4fdffff              MOV dword ptr [EBP + 0xfffffdb4],ESI
004cc4e8  3bb064120000              CMP ESI,dword ptr [EAX + 0x1264]
004cc4ee  7290                      JC 0x004cc480
004cc4f0  f30f109dd4fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdd4]
004cc4f8  f30f1025fca6ba00          MOVSS XMM4,dword ptr [0x00baa6fc]
004cc500  0f28c3                    MOVAPS XMM0,XMM3
004cc503  f30f103514abba00          MOVSS XMM6,dword ptr [0x00baab14]
004cc50b  f30f58c3                  ADDSS XMM0,XMM3
004cc50f  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004cc517  0f28d6                    MOVAPS XMM2,XMM6
004cc51a  f30f102da4aaba00          MOVSS XMM5,dword ptr [0x00baaaa4]
004cc522  f30f5ce0                  SUBSS XMM4,XMM0
004cc526  0f28c3                    MOVAPS XMM0,XMM3
004cc529  f30f59c3                  MULSS XMM0,XMM3
004cc52d  f30f59e0                  MULSS XMM4,XMM0
004cc531  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004cc539  f30f5cd0                  SUBSS XMM2,XMM0
004cc53d  f30f59d4                  MULSS XMM2,XMM4
004cc541  f30f58d0                  ADDSS XMM2,XMM0
004cc545  0f28c5                    MOVAPS XMM0,XMM5
004cc548  f30f5cc1                  SUBSS XMM0,XMM1
004cc54c  f30f11973c030000          MOVSS dword ptr [EDI + 0x33c],XMM2
004cc554  f30f59c4                  MULSS XMM0,XMM4
004cc558  f30f58c1                  ADDSS XMM0,XMM1
004cc55c  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
004cc564  0f28c3                    MOVAPS XMM0,XMM3
004cc567  f30f5cb734030000          SUBSS XMM6,dword ptr [EDI + 0x334]
004cc56f  f30f5caf38030000          SUBSS XMM5,dword ptr [EDI + 0x338]
004cc577  f30f5c1d54a4ba00          SUBSS XMM3,dword ptr [0x00baa454]
004cc57f  f30f5905a8adba00          MULSS XMM0,dword ptr [0x00baada8]
004cc587  f30f5e3554a8ba00          DIVSS XMM6,dword ptr [0x00baa854]
004cc58f  f30f5e2d54a8ba00          DIVSS XMM5,dword ptr [0x00baa854]
004cc597  f30f59c3                  MULSS XMM0,XMM3
004cc59b  f30f59f0                  MULSS XMM6,XMM0
004cc59f  f30f59e8                  MULSS XMM5,XMM0
004cc5a3  f30f11b760030000          MOVSS dword ptr [EDI + 0x360],XMM6
004cc5ab  f30f11af64030000          MOVSS dword ptr [EDI + 0x364],XMM5
004cc5b3  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004cc5b6  3d12010000                CMP EAX,0x112
004cc5bb  0f8593010000              JNZ 0x004cc754
004cc5c1  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004cc5c7  8bcf                      MOV ECX,EDI
004cc5c9  838f6801000001            OR dword ptr [EDI + 0x168],0x1
004cc5d0  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004cc5d7  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004cc5e1  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004cc5e7  e844201e00                CALL 0x006ae630
004cc5ec  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004cc5f0  0f845b010000              JZ 0x004cc751
004cc5f6  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004cc5fd  0f854e010000              JNZ 0x004cc751
004cc603  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004cc606  83781410                  CMP dword ptr [EAX + 0x14],0x10
004cc60a  7202                      JC 0x004cc60e
004cc60c  8b00                      MOV EAX,dword ptr [EAX]
004cc60e  b93ce1b100                MOV ECX,0xb1e13c
004cc613  8a10                      MOV DL,byte ptr [EAX]
004cc615  3a11                      CMP DL,byte ptr [ECX]
004cc617  751a                      JNZ 0x004cc633
004cc619  84d2                      TEST DL,DL
004cc61b  7412                      JZ 0x004cc62f
004cc61d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004cc620  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004cc623  750e                      JNZ 0x004cc633
004cc625  83c002                    ADD EAX,0x2
004cc628  83c102                    ADD ECX,0x2
004cc62b  84d2                      TEST DL,DL
004cc62d  75e4                      JNZ 0x004cc613
004cc62f  33c0                      XOR EAX,EAX
004cc631  eb05                      JMP 0x004cc638
004cc633  1bc0                      SBB EAX,EAX
004cc635  83c801                    OR EAX,0x1
004cc638  85c0                      TEST EAX,EAX
004cc63a  0f8511010000              JNZ 0x004cc751
004cc640  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004cc648  8bcf                      MOV ECX,EDI
004cc64a  6aff                      PUSH -0x1
004cc64c  50                        PUSH EAX
004cc64d  ff772c                    PUSH dword ptr [EDI + 0x2c]
004cc650  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004cc658  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004cc660  6813010000                PUSH 0x113
004cc665  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004cc66d  e8be481f00                CALL 0x006c0f30
004cc672  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
004cc678  8d7748                    LEA ESI,[EDI + 0x48]
004cc67b  83a768010000fe            AND dword ptr [EDI + 0x168],0xfffffffe
004cc682  898780030000              MOV dword ptr [EDI + 0x380],EAX
004cc688  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004cc68e  c787640b000002000000      MOV dword ptr [EDI + 0xb64],0x2
004cc698  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004cc69e  8b4e34                    MOV ECX,dword ptr [ESI + 0x34]
004cc6a1  898db0fdffff              MOV dword ptr [EBP + 0xfffffdb0],ECX
004cc6a7  85c9                      TEST ECX,ECX
004cc6a9  7450                      JZ 0x004cc6fb
004cc6ab  83791410                  CMP dword ptr [ECX + 0x14],0x10
004cc6af  8bc1                      MOV EAX,ECX
004cc6b1  7202                      JC 0x004cc6b5
004cc6b3  8b01                      MOV EAX,dword ptr [ECX]
004cc6b5  b998d5b100                MOV ECX,0xb1d598
004cc6ba  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004cc6c0  8a10                      MOV DL,byte ptr [EAX]
004cc6c2  3a11                      CMP DL,byte ptr [ECX]
004cc6c4  751a                      JNZ 0x004cc6e0
004cc6c6  84d2                      TEST DL,DL
004cc6c8  7412                      JZ 0x004cc6dc
004cc6ca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004cc6cd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004cc6d0  750e                      JNZ 0x004cc6e0
004cc6d2  83c002                    ADD EAX,0x2
004cc6d5  83c102                    ADD ECX,0x2
004cc6d8  84d2                      TEST DL,DL
004cc6da  75e4                      JNZ 0x004cc6c0
004cc6dc  33c0                      XOR EAX,EAX
004cc6de  eb05                      JMP 0x004cc6e5
004cc6e0  1bc0                      SBB EAX,EAX
004cc6e2  83c801                    OR EAX,0x1
004cc6e5  85c0                      TEST EAX,EAX
004cc6e7  7512                      JNZ 0x004cc6fb
004cc6e9  8b85b0fdffff              MOV EAX,dword ptr [EBP + 0xfffffdb0]
004cc6ef  80783400                  CMP byte ptr [EAX + 0x34],0x0
004cc6f3  7427                      JZ 0x004cc71c
004cc6f5  807e4400                  CMP byte ptr [ESI + 0x44],0x0
004cc6f9  7521                      JNZ 0x004cc71c
004cc6fb  6a01                      PUSH 0x1
004cc6fd  6898d5b100                PUSH 0xb1d598
004cc702  8bce                      MOV ECX,ESI
004cc704  e8c7def3ff                CALL 0x0040a5d0
004cc709  84c0                      TEST AL,AL
004cc70b  740f                      JZ 0x004cc71c
004cc70d  8d4e30                    LEA ECX,[ESI + 0x30]
004cc710  e89bdaf3ff                CALL 0x0040a1b0
004cc715  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004cc719  8d7748                    LEA ESI,[EDI + 0x48]
004cc71c  51                        PUSH ECX
004cc71d  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004cc724  6a00                      PUSH 0x0
004cc726  6a02                      PUSH 0x2
004cc728  51                        PUSH ECX
004cc729  c704240000803f            MOV dword ptr [ESP],0x3f800000
004cc730  8bcf                      MOV ECX,EDI
004cc732  68f1000000                PUSH 0xf1
004cc737  e864a42000                CALL 0x006d6ba0
004cc73c  6a01                      PUSH 0x1
004cc73e  8bce                      MOV ECX,ESI
004cc740  e8dbeaf3ff                CALL 0x0040b220
004cc745  83888c00000001            OR dword ptr [EAX + 0x8c],0x1
004cc74c  e9a0020000                JMP 0x004cc9f1
004cc751  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004cc754  3d13010000                CMP EAX,0x113
004cc759  757a                      JNZ 0x004cc7d5
004cc75b  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004cc761  8bcf                      MOV ECX,EDI
004cc763  838f6801000001            OR dword ptr [EDI + 0x168],0x1
004cc76a  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004cc771  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004cc77b  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004cc781  e8aa1e1e00                CALL 0x006ae630
004cc786  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004cc78a  7449                      JZ 0x004cc7d5
004cc78c  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004cc793  7540                      JNZ 0x004cc7d5
004cc795  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004cc798  83781410                  CMP dword ptr [EAX + 0x14],0x10
004cc79c  7202                      JC 0x004cc7a0
004cc79e  8b00                      MOV EAX,dword ptr [EAX]
004cc7a0  b93ce1b100                MOV ECX,0xb1e13c
004cc7a5  8a10                      MOV DL,byte ptr [EAX]
004cc7a7  3a11                      CMP DL,byte ptr [ECX]
004cc7a9  751a                      JNZ 0x004cc7c5
004cc7ab  84d2                      TEST DL,DL
004cc7ad  7412                      JZ 0x004cc7c1
004cc7af  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004cc7b2  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004cc7b5  750e                      JNZ 0x004cc7c5
004cc7b7  83c002                    ADD EAX,0x2
004cc7ba  83c102                    ADD ECX,0x2
004cc7bd  84d2                      TEST DL,DL
004cc7bf  75e4                      JNZ 0x004cc7a5
004cc7c1  33c0                      XOR EAX,EAX
004cc7c3  eb05                      JMP 0x004cc7ca
004cc7c5  1bc0                      SBB EAX,EAX
004cc7c7  83c801                    OR EAX,0x1
004cc7ca  85c0                      TEST EAX,EAX
004cc7cc  7507                      JNZ 0x004cc7d5
004cc7ce  8bcf                      MOV ECX,EDI
004cc7d0  e82b8c2000                CALL 0x006d5400
004cc7d5  a17816c700                MOV EAX,[0x00c71678]
004cc7da  b93c000000                MOV ECX,0x3c
004cc7df  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004cc7e5  99                        CDQ
004cc7e6  f7f9                      IDIV ECX
004cc7e8  85d2                      TEST EDX,EDX
004cc7ea  757c                      JNZ 0x004cc868
004cc7ec  8bcf                      MOV ECX,EDI
004cc7ee  c787340300000000a043      MOV dword ptr [EDI + 0x334],0x43a00000
004cc7f8  c7873803000000008243      MOV dword ptr [EDI + 0x338],0x43820000
004cc802  e839201f00                CALL 0x006be840
004cc807  8b803c030000              MOV EAX,dword ptr [EAX + 0x33c]
004cc80d  898734030000              MOV dword ptr [EDI + 0x334],EAX
004cc813  e848272200                CALL 0x006eef60
004cc818  660f6ec0                  MOVD XMM0,EAX
004cc81c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004cc820  c1e81f                    SHR EAX,0x1f
004cc823  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004cc82c  660f5ac0                  CVTPD2PS XMM0,XMM0
004cc830  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004cc838  f30f590578aaba00          MULSS XMM0,dword ptr [0x00baaa78]
004cc840  f30f5c05b4a9ba00          SUBSS XMM0,dword ptr [0x00baa9b4]
004cc848  f30f588734030000          ADDSS XMM0,dword ptr [EDI + 0x334]
004cc850  f30f5f05b0aaba00          MAXSS XMM0,dword ptr [0x00baaab0]
004cc858  f30f5d0560abba00          MINSS XMM0,dword ptr [0x00baab60]
004cc860  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004cc868  83bf640b00000d            CMP dword ptr [EDI + 0xb64],0xd
004cc86f  7514                      JNZ 0x004cc885
004cc871  c787340300000000a043      MOV dword ptr [EDI + 0x334],0x43a00000
004cc87b  c7873803000000008243      MOV dword ptr [EDI + 0x338],0x43820000
004cc885  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004cc88d  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004cc895  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004cc89d  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004cc8a5  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
004cc8ac  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
004cc8b4  9f                        LAHF
004cc8b5  f6c444                    TEST AH,0x44
004cc8b8  7a19                      JP 0x004cc8d3
004cc8ba  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004cc8c2  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004cc8c9  9f                        LAHF
004cc8ca  f6c444                    TEST AH,0x44
004cc8cd  0f8b1e010000              JNP 0x004cc9f1
004cc8d3  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004cc8d9  83f810                    CMP EAX,0x10
004cc8dc  0f840f010000              JZ 0x004cc9f1
004cc8e2  83f802                    CMP EAX,0x2
004cc8e5  0f8406010000              JZ 0x004cc9f1
004cc8eb  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004cc8f3  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004cc8fb  0f28c8                    MOVAPS XMM1,XMM0
004cc8fe  f30f1185d4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM0
004cc906  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004cc90e  f30f1195b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM2
004cc916  0f28c1                    MOVAPS XMM0,XMM1
004cc919  f30f118dccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM1
004cc921  f30f59c1                  MULSS XMM0,XMM1
004cc925  0f28ca                    MOVAPS XMM1,XMM2
004cc928  f30f59ca                  MULSS XMM1,XMM2
004cc92c  f30f58c1                  ADDSS XMM0,XMM1
004cc930  e81b91f6ff                CALL 0x00435a50
004cc935  0f2f057ca8ba00            COMISS XMM0,dword ptr [0x00baa87c]
004cc93c  0f869f000000              JBE 0x004cc9e1
004cc942  f30f100db0a4ba00          MOVSS XMM1,dword ptr [0x00baa4b0]
004cc94a  0f2fc1                    COMISS XMM0,XMM1
004cc94d  f30f1095b4fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb4]
004cc955  7628                      JBE 0x004cc97f
004cc957  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004cc95e  761f                      JBE 0x004cc97f
004cc960  f30f5ec8                  DIVSS XMM1,XMM0
004cc964  0f28c1                    MOVAPS XMM0,XMM1
004cc967  f30f59d0                  MULSS XMM2,XMM0
004cc96b  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004cc973  f30f59c1                  MULSS XMM0,XMM1
004cc977  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004cc97f  f30f5e95b0fdffff          DIVSS XMM2,dword ptr [EBP + 0xfffffdb0]
004cc987  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004cc98f  f30f5cd0                  SUBSS XMM2,XMM0
004cc993  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004cc99b  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
004cc9a3  f30f58d0                  ADDSS XMM2,XMM0
004cc9a7  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004cc9af  f30f5e85b0fdffff          DIVSS XMM0,dword ptr [EBP + 0xfffffdb0]
004cc9b7  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004cc9bf  f30f5cc1                  SUBSS XMM0,XMM1
004cc9c3  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
004cc9cb  f30f58c1                  ADDSS XMM0,XMM1
004cc9cf  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004cc9d7  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004cc9df  eb08                      JMP 0x004cc9e9
004cc9e1  f30f1085d4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdd4]
004cc9e9  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
004cc9f1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004cc9f4  64890d00000000            MOV dword ptr FS:[0x0],ECX
004cc9fb  59                        POP ECX
004cc9fc  5f                        POP EDI
004cc9fd  5e                        POP ESI
004cc9fe  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004cca01  33cd                      XOR ECX,EBP
004cca03  e823276200                CALL 0x00aef12b
004cca08  8be5                      MOV ESP,EBP
004cca0a  5d                        POP EBP
004cca0b  8be3                      MOV ESP,EBX
004cca0d  5b                        POP EBX
004cca0e  c3                        RET
