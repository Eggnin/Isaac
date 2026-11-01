; J460 NPC AI 0x00463100 AI_00463100
; types=102
; identities=102.0.0,102.1.0,102.2.0
; entry=00463100
00463100  53                        PUSH EBX
00463101  8bdc                      MOV EBX,ESP
00463103  83ec08                    SUB ESP,0x8
00463106  83e4f8                    AND ESP,0xfffffff8
00463109  83c404                    ADD ESP,0x4
0046310c  55                        PUSH EBP
0046310d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00463110  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00463114  8bec                      MOV EBP,ESP
00463116  6aff                      PUSH -0x1
00463118  684027af00                PUSH 0xaf2740
0046311d  64a100000000              MOV EAX,FS:[0x0]
00463123  50                        PUSH EAX
00463124  53                        PUSH EBX
00463125  81ecb8020000              SUB ESP,0x2b8
0046312b  a1b493bf00                MOV EAX,[0x00bf93b4]
00463130  33c5                      XOR EAX,EBP
00463132  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00463135  56                        PUSH ESI
00463136  57                        PUSH EDI
00463137  50                        PUSH EAX
00463138  8d45f4                    LEA EAX,[EBP + -0xc]
0046313b  64a300000000              MOV FS:[0x0],EAX
00463141  8bf9                      MOV EDI,ECX
00463143  89bdc8fdffff              MOV dword ptr [EBP + 0xfffffdc8],EDI
00463149  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00463151  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00463159  2bc8                      SUB ECX,EAX
0046315b  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00463162  898dacfdffff              MOV dword ptr [EBP + 0xfffffdac],ECX
00463168  757d                      JNZ 0x004631e7
0046316a  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00463170  898734030000              MOV dword ptr [EDI + 0x334],EAX
00463176  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0046317c  898738030000              MOV dword ptr [EDI + 0x338],EAX
00463182  c687c40b000000            MOV byte ptr [EDI + 0xbc4],0x0
00463189  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00463193  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0046319d  e8bebd2800                CALL 0x006eef60
004631a2  33d2                      XOR EDX,EDX
004631a4  b93c000000                MOV ECX,0x3c
004631a9  f7f1                      DIV ECX
004631ab  02d1                      ADD DL,CL
004631ad  8897c60b0000              MOV byte ptr [EDI + 0xbc6],DL
004631b3  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004631b7  0f850f340000              JNZ 0x004665cc
004631bd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004631c3  6a4f                      PUSH 0x4f
004631c5  8d8984bb0100              LEA ECX,[ECX + 0x1bb84]
004631cb  e88035ffff                CALL 0x00456750
004631d0  84c0                      TEST AL,AL
004631d2  0f84f4330000              JZ 0x004665cc
004631d8  c787400c00000000b442      MOV dword ptr [EDI + 0xc40],0x42b40000
004631e2  e9e5330000                JMP 0x004665cc
004631e7  80bfc40b000000            CMP byte ptr [EDI + 0xbc4],0x0
004631ee  be14000000                MOV ESI,0x14
004631f3  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004631fb  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
00463203  753d                      JNZ 0x00463242
00463205  e856bd2800                CALL 0x006eef60
0046320a  33d2                      XOR EDX,EDX
0046320c  f7f6                      DIV ESI
0046320e  85d2                      TEST EDX,EDX
00463210  7530                      JNZ 0x00463242
00463212  e849bd2800                CALL 0x006eef60
00463217  b964000000                MOV ECX,0x64
0046321c  33d2                      XOR EDX,EDX
0046321e  f7f1                      DIV ECX
00463220  51                        PUSH ECX
00463221  c704240000803f            MOV dword ptr [ESP],0x3f800000
00463228  6a00                      PUSH 0x0
0046322a  8d422d                    LEA EAX,[EDX + 0x2d]
0046322d  50                        PUSH EAX
0046322e  51                        PUSH ECX
0046322f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00463236  8bcf                      MOV ECX,EDI
00463238  688f000000                PUSH 0x8f
0046323d  e85e392700                CALL 0x006d6ba0
00463242  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00463247  0f57db                    XORPS XMM3,XMM3
0046324a  0f2fc3                    COMISS XMM0,XMM3
0046324d  7625                      JBE 0x00463274
0046324f  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00463252  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00463255  741d                      JZ 0x00463274
00463257  817810e8030000            CMP dword ptr [EAX + 0x10],0x3e8
0046325e  750c                      JNZ 0x0046326c
00463260  83781413                  CMP dword ptr [EAX + 0x14],0x13
00463264  7506                      JNZ 0x0046326c
00463266  c70000000000              MOV dword ptr [EAX],0x0
0046326c  83c038                    ADD EAX,0x38
0046326f  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00463272  75e3                      JNZ 0x00463257
00463274  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00463277  f30f101580a3ba00          MOVSS XMM2,dword ptr [0x00baa380]
0046327f  f30f100d54a3ba00          MOVSS XMM1,dword ptr [0x00baa354]
00463287  85c0                      TEST EAX,EAX
00463289  7527                      JNZ 0x004632b2
0046328b  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
00463293  f30f59c2                  MULSS XMM0,XMM2
00463297  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
0046329e  0f8672010000              JBE 0x00463416
004632a4  80bfc40b000000            CMP byte ptr [EDI + 0xbc4],0x0
004632ab  7460                      JZ 0x0046330d
004632ad  e964010000                JMP 0x00463416
004632b2  83f801                    CMP EAX,0x1
004632b5  7527                      JNZ 0x004632de
004632b7  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004632bf  f30f59c1                  MULSS XMM0,XMM1
004632c3  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004632ca  0f8646010000              JBE 0x00463416
004632d0  80bfc40b000000            CMP byte ptr [EDI + 0xbc4],0x0
004632d7  7434                      JZ 0x0046330d
004632d9  e938010000                JMP 0x00463416
004632de  83f802                    CMP EAX,0x2
004632e1  0f852f010000              JNZ 0x00463416
004632e7  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004632ef  f30f59c1                  MULSS XMM0,XMM1
004632f3  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004632fa  0f8616010000              JBE 0x00463416
00463300  80bfc40b000000            CMP byte ptr [EDI + 0xbc4],0x0
00463307  0f8509010000              JNZ 0x00463416
0046330d  c687c40b000001            MOV byte ptr [EDI + 0xbc4],0x1
00463314  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0046331e  83f801                    CMP EAX,0x1
00463321  7409                      JZ 0x0046332c
00463323  83f802                    CMP EAX,0x2
00463326  0f85ea000000              JNZ 0x00463416
0046332c  e82fbc2800                CALL 0x006eef60
00463331  6a00                      PUSH 0x0
00463333  68acd6c500                PUSH 0xc5d6ac
00463338  68dcd5c500                PUSH 0xc5d5dc
0046333d  6a00                      PUSH 0x0
0046333f  50                        PUSH EAX
00463340  6a00                      PUSH 0x0
00463342  57                        PUSH EDI
00463343  6840b6c700                PUSH 0xc7b640
00463348  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0046334e  51                        PUSH ECX
0046334f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00463355  6a00                      PUSH 0x0
00463357  6a60                      PUSH 0x60
00463359  e8c257fcff                CALL 0x00428b20
0046335e  50                        PUSH EAX
0046335f  e84dd56800                CALL 0x00af08b1
00463364  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
0046336a  83c414                    ADD ESP,0x14
0046336d  8db0bc030000              LEA ESI,[EAX + 0x3bc]
00463373  85c9                      TEST ECX,ECX
00463375  7418                      JZ 0x0046338f
00463377  8d85e0fdffff              LEA EAX,[EBP + 0xfffffde0]
0046337d  89b5e0fdffff              MOV dword ptr [EBP + 0xfffffde0],ESI
00463383  81c1cc030000              ADD ECX,0x3cc
00463389  50                        PUSH EAX
0046338a  e881be0600                CALL 0x004cf210
0046338f  56                        PUSH ESI
00463390  8bcf                      MOV ECX,EDI
00463392  893e                      MOV dword ptr [ESI],EDI
00463394  e857a90600                CALL 0x004cdcf0
00463399  e8c2bb2800                CALL 0x006eef60
0046339e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004633a4  6a00                      PUSH 0x0
004633a6  68acd6c500                PUSH 0xc5d6ac
004633ab  68dcd5c500                PUSH 0xc5d5dc
004633b0  6a00                      PUSH 0x0
004633b2  50                        PUSH EAX
004633b3  6a00                      PUSH 0x0
004633b5  57                        PUSH EDI
004633b6  6840b6c700                PUSH 0xc7b640
004633bb  8d873c030000              LEA EAX,[EDI + 0x33c]
004633c1  50                        PUSH EAX
004633c2  6a00                      PUSH 0x0
004633c4  6a60                      PUSH 0x60
004633c6  e85557fcff                CALL 0x00428b20
004633cb  50                        PUSH EAX
004633cc  e8e0d46800                CALL 0x00af08b1
004633d1  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
004633d7  83c414                    ADD ESP,0x14
004633da  8db0bc030000              LEA ESI,[EAX + 0x3bc]
004633e0  85c9                      TEST ECX,ECX
004633e2  7418                      JZ 0x004633fc
004633e4  8d85e0fdffff              LEA EAX,[EBP + 0xfffffde0]
004633ea  89b5e0fdffff              MOV dword ptr [EBP + 0xfffffde0],ESI
004633f0  81c1cc030000              ADD ECX,0x3cc
004633f6  50                        PUSH EAX
004633f7  e814be0600                CALL 0x004cf210
004633fc  56                        PUSH ESI
004633fd  8bcf                      MOV ECX,EDI
004633ff  893e                      MOV dword ptr [ESI],EDI
00463401  e8eaa80600                CALL 0x004cdcf0
00463406  f30f101580a3ba00          MOVSS XMM2,dword ptr [0x00baa380]
0046340e  0f57db                    XORPS XMM3,XMM3
00463411  be14000000                MOV ESI,0x14
00463416  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00463419  85c0                      TEST EAX,EAX
0046341b  7524                      JNZ 0x00463441
0046341d  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
00463425  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0046342d  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
00463434  7648                      JBE 0x0046347e
00463436  80bfc40b000001            CMP byte ptr [EDI + 0xbc4],0x1
0046343d  742e                      JZ 0x0046346d
0046343f  eb3d                      JMP 0x0046347e
00463441  83f801                    CMP EAX,0x1
00463444  74d7                      JZ 0x0046341d
00463446  83f802                    CMP EAX,0x2
00463449  7533                      JNZ 0x0046347e
0046344b  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
00463453  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0046345b  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
00463462  761a                      JBE 0x0046347e
00463464  80bfc40b000001            CMP byte ptr [EDI + 0xbc4],0x1
0046346b  7511                      JNZ 0x0046347e
0046346d  c687c40b000002            MOV byte ptr [EDI + 0xbc4],0x2
00463474  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0046347e  8a87c40b0000              MOV AL,byte ptr [EDI + 0xbc4]
00463484  8885effdffff              MOV byte ptr [EBP + 0xfffffdef],AL
0046348a  3c02                      CMP AL,0x2
0046348c  721a                      JC 0x004634a8
0046348e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00463496  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0046349e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004634a6  eb54                      JMP 0x004634fc
004634a8  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004634b0  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004634b8  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004634c0  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004634c8  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004634d0  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004634d8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004634e0  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004634e8  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004634f0  8a87c40b0000              MOV AL,byte ptr [EDI + 0xbc4]
004634f6  8885effdffff              MOV byte ptr [EBP + 0xfffffdef],AL
004634fc  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00463504  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0046350c  0f2fc1                    COMISS XMM0,XMM1
0046350f  7627                      JBE 0x00463538
00463511  f30f5cc1                  SUBSS XMM0,XMM1
00463515  f30f5887bc0b0000          ADDSS XMM0,dword ptr [EDI + 0xbbc]
0046351d  0f2f0594aaba00            COMISS XMM0,dword ptr [0x00baaa94]
00463524  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
0046352c  760a                      JBE 0x00463538
0046352e  c787bc0b000000004843      MOV dword ptr [EDI + 0xbbc],0x43480000
00463538  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
00463540  3c01                      CMP AL,0x1
00463542  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
00463545  b91e000000                MOV ECX,0x1e
0046354a  0f45ce                    CMOVNZ ECX,ESI
0046354d  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
00463555  3c02                      CMP AL,0x2
00463557  7221                      JC 0x0046357a
00463559  b919000000                MOV ECX,0x19
0046355e  8bc1                      MOV EAX,ECX
00463560  d1e8                      SHR EAX,0x1
00463562  83fa01                    CMP EDX,0x1
00463565  0f45c1                    CMOVNZ EAX,ECX
00463568  8bc8                      MOV ECX,EAX
0046356a  d1e9                      SHR ECX,0x1
0046356c  83fa02                    CMP EDX,0x2
0046356f  0f45c8                    CMOVNZ ECX,EAX
00463572  8a85effdffff              MOV AL,byte ptr [EBP + 0xfffffdef]
00463578  eb2e                      JMP 0x004635a8
0046357a  8bc1                      MOV EAX,ECX
0046357c  d1e8                      SHR EAX,0x1
0046357e  83fa01                    CMP EDX,0x1
00463581  0f45c1                    CMOVNZ EAX,ECX
00463584  8bc8                      MOV ECX,EAX
00463586  d1e9                      SHR ECX,0x1
00463588  83fa02                    CMP EDX,0x2
0046358b  0f45c8                    CMOVNZ ECX,EAX
0046358e  8a85effdffff              MOV AL,byte ptr [EBP + 0xfffffdef]
00463594  3c01                      CMP AL,0x1
00463596  7510                      JNZ 0x004635a8
00463598  f30f1005a4a7ba00          MOVSS XMM0,dword ptr [0x00baa7a4]
004635a0  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
004635a8  83fa01                    CMP EDX,0x1
004635ab  7405                      JZ 0x004635b2
004635ad  83fa02                    CMP EDX,0x2
004635b0  750c                      JNZ 0x004635be
004635b2  f30f59c2                  MULSS XMM0,XMM2
004635b6  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
004635be  8b97640b0000              MOV EDX,dword ptr [EDI + 0xb64]
004635c4  be0a000000                MOV ESI,0xa
004635c9  c78590fdffff03000000      MOV dword ptr [EBP + 0xfffffd90],0x3
004635d3  83fa08                    CMP EDX,0x8
004635d6  0f849a030000              JZ 0x00463976
004635dc  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
004635e4  0f2f051ca8ba00            COMISS XMM0,dword ptr [0x00baa81c]
004635eb  7606                      JBE 0x004635f3
004635ed  3c02                      CMP AL,0x2
004635ef  7213                      JC 0x00463604
004635f1  eb08                      JMP 0x004635fb
004635f3  3c02                      CMP AL,0x2
004635f5  0f827b030000              JC 0x00463976
004635fb  83fa03                    CMP EDX,0x3
004635fe  0f8572030000              JNZ 0x00463976
00463604  660f6ec9                  MOVD XMM1,ECX
00463608  0f28d3                    MOVAPS XMM2,XMM3
0046360b  0f5bc9                    CVTDQ2PS XMM1,XMM1
0046360e  8bcf                      MOV ECX,EDI
00463610  e84b912400                CALL 0x006ac760
00463615  85c0                      TEST EAX,EAX
00463617  0f8459030000              JZ 0x00463976
0046361d  8d8df0fdffff              LEA ECX,[EBP + 0xfffffdf0]
00463623  e808b9fdff                CALL 0x0043ef30
00463628  e833b92800                CALL 0x006eef60
0046362d  33d2                      XOR EDX,EDX
0046362f  f7f6                      DIV ESI
00463631  85d2                      TEST EDX,EDX
00463633  752c                      JNZ 0x00463661
00463635  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00463638  83f801                    CMP EAX,0x1
0046363b  7405                      JZ 0x00463642
0046363d  83f802                    CMP EAX,0x2
00463640  751f                      JNZ 0x00463661
00463642  8b854cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe4c]
00463648  838d48feffff01            OR dword ptr [EBP + 0xfffffe48],0x1
0046364f  89854cfeffff              MOV dword ptr [EBP + 0xfffffe4c],EAX
00463655  c78504feffff9a99993f      MOV dword ptr [EBP + 0xfffffe04],0x3f99999a
0046365f  eb0a                      JMP 0x0046366b
00463661  c78584feffff04000000      MOV dword ptr [EBP + 0xfffffe84],0x4
0046366b  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
00463673  b901000000                MOV ECX,0x1
00463678  0f2f05d0a9ba00            COMISS XMM0,dword ptr [0x00baa9d0]
0046367f  b802000000                MOV EAX,0x2
00463684  c785f8fdffffcdccccbd      MOV dword ptr [EBP + 0xfffffdf8],0xbdcccccd
0046368e  c785fcfdffffcdccccbd      MOV dword ptr [EBP + 0xfffffdfc],0xbdcccccd
00463698  0f47c8                    CMOVA ECX,EAX
0046369b  0f2f0544aaba00            COMISS XMM0,dword ptr [0x00baaa44]
004636a2  0f478d90fdffff            CMOVA ECX,dword ptr [EBP + 0xfffffd90]
004636a9  898db4fdffff              MOV dword ptr [EBP + 0xfffffdb4],ECX
004636af  8bf1                      MOV ESI,ECX
004636b1  8bcf                      MOV ECX,EDI
004636b3  e888b12500                CALL 0x006be840
004636b8  80bfc40b000002            CMP byte ptr [EDI + 0xbc4],0x2
004636bf  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
004636c7  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004636cf  f30f5c9f3c030000          SUBSS XMM3,dword ptr [EDI + 0x33c]
004636d7  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004636df  0f28e3                    MOVAPS XMM4,XMM3
004636e2  f30f119d9cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM3
004636ea  f30f1195e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM2
004636f2  f30f1195a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM2
004636fa  f30f11a5e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM4
00463702  7251                      JC 0x00463755
00463704  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00463708  f30f11a5e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM4
00463710  7543                      JNZ 0x00463755
00463712  0f28cb                    MOVAPS XMM1,XMM3
00463715  0f28c2                    MOVAPS XMM0,XMM2
00463718  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0046371f  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00463726  0f2fc8                    COMISS XMM1,XMM0
00463729  7615                      JBE 0x00463740
0046372b  0f57d2                    XORPS XMM2,XMM2
0046372e  f30f1195e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM2
00463736  f30f1195a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM2
0046373e  eb0d                      JMP 0x0046374d
00463740  c7859cfdffff00000000      MOV dword ptr [EBP + 0xfffffd9c],0x0
0046374a  0f57e4                    XORPS XMM4,XMM4
0046374d  f30f11a5e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM4
00463755  0f28c2                    MOVAPS XMM0,XMM2
00463758  0f28cc                    MOVAPS XMM1,XMM4
0046375b  f30f59c2                  MULSS XMM0,XMM2
0046375f  f30f59cc                  MULSS XMM1,XMM4
00463763  f30f58c1                  ADDSS XMM0,XMM1
00463767  e8e422fdff                CALL 0x00435a50
0046376c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00463773  762f                      JBE 0x004637a4
00463775  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0046377d  f30f5ec8                  DIVSS XMM1,XMM0
00463781  0f28c1                    MOVAPS XMM0,XMM1
00463784  f30f598de4fdffff          MULSS XMM1,dword ptr [EBP + 0xfffffde4]
0046378c  f30f5985e8fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffde8]
00463794  f30f118da0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM1
0046379c  f30f11859cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM0
004637a4  e8b7b72800                CALL 0x006eef60
004637a9  0f57c0                    XORPS XMM0,XMM0
004637ac  f20f2ac0                  CVTSI2SD XMM0,EAX
004637b0  c1e81f                    SHR EAX,0x1f
004637b3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004637bc  660f5ac0                  CVTPD2PS XMM0,XMM0
004637c0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004637c8  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004637d0  f30f58c0                  ADDSS XMM0,XMM0
004637d4  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
004637dc  e83f9dfbff                CALL 0x0041d520
004637e1  0f28d8                    MOVAPS XMM3,XMM0
004637e4  f30f1085e0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde0]
004637ec  f30f119de8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM3
004637f4  e8479dfbff                CALL 0x0041d540
004637f9  f30f108de8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde8]
00463801  0f28d0                    MOVAPS XMM2,XMM0
00463804  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0046380c  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
00463814  f30f588da0fdffff          ADDSS XMM1,dword ptr [EBP + 0xfffffda0]
0046381c  f30f58959cfdffff          ADDSS XMM2,dword ptr [EBP + 0xfffffd9c]
00463824  0f28c1                    MOVAPS XMM0,XMM1
00463827  f30f118de8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM1
0046382f  f30f59c1                  MULSS XMM0,XMM1
00463833  f30f118da0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM1
0046383b  0f28ca                    MOVAPS XMM1,XMM2
0046383e  f30f59ca                  MULSS XMM1,XMM2
00463842  f30f1195e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM2
0046384a  f30f11959cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM2
00463852  f30f58c1                  ADDSS XMM0,XMM1
00463856  e8f521fdff                CALL 0x00435a50
0046385b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00463862  f30f1095e4fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffde4]
0046386a  f30f109de8fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffde8]
00463872  7627                      JBE 0x0046389b
00463874  f30f108ddcfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffddc]
0046387c  f30f5ec8                  DIVSS XMM1,XMM0
00463880  0f28c1                    MOVAPS XMM0,XMM1
00463883  f30f59d9                  MULSS XMM3,XMM1
00463887  f30f59d0                  MULSS XMM2,XMM0
0046388b  f30f119da0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM3
00463893  f30f11959cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM2
0046389b  80bfc40b000002            CMP byte ptr [EDI + 0xbc4],0x2
004638a2  726b                      JC 0x0046390f
004638a4  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004638a7  85c0                      TEST EAX,EAX
004638a9  7522                      JNZ 0x004638cd
004638ab  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004638b3  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004638bb  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
004638c3  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004638cb  eb2a                      JMP 0x004638f7
004638cd  83f801                    CMP EAX,0x1
004638d0  7405                      JZ 0x004638d7
004638d2  83f802                    CMP EAX,0x2
004638d5  7538                      JNZ 0x0046390f
004638d7  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004638df  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004638e7  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
004638ef  f30f590d04a3ba00          MULSS XMM1,dword ptr [0x00baa304]
004638f7  f30f58cb                  ADDSS XMM1,XMM3
004638fb  f30f58c2                  ADDSS XMM0,XMM2
004638ff  f30f118da0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM1
00463907  f30f11859cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM0
0046390f  8d85f0fdffff              LEA EAX,[EBP + 0xfffffdf0]
00463915  8bcf                      MOV ECX,EDI
00463917  50                        PUSH EAX
00463918  6a00                      PUSH 0x0
0046391a  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
00463920  50                        PUSH EAX
00463921  8d873c030000              LEA EAX,[EDI + 0x33c]
00463927  50                        PUSH EAX
00463928  e8b3792600                CALL 0x006cb2e0
0046392d  83ee01                    SUB ESI,0x1
00463930  0f857bfdffff              JNZ 0x004636b1
00463936  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00463939  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00463941  83f801                    CMP EAX,0x1
00463944  7405                      JZ 0x0046394b
00463946  83f802                    CMP EAX,0x2
00463949  7508                      JNZ 0x00463953
0046394b  f30f100584a7ba00          MOVSS XMM0,dword ptr [0x00baa784]
00463953  660f6e8db4fdffff          MOVD XMM1,dword ptr [EBP + 0xfffffdb4]
0046395b  0f5bc9                    CVTDQ2PS XMM1,XMM1
0046395e  f30f59c8                  MULSS XMM1,XMM0
00463962  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
0046396a  f30f5cc1                  SUBSS XMM0,XMM1
0046396e  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
00463976  0f57c0                    XORPS XMM0,XMM0
00463979  0f2f87bc0b0000            COMISS XMM0,dword ptr [EDI + 0xbbc]
00463980  760a                      JBE 0x0046398c
00463982  c787bc0b000000000000      MOV dword ptr [EDI + 0xbbc],0x0
0046398c  a17816c700                MOV EAX,[0x00c71678]
00463991  33f6                      XOR ESI,ESI
00463993  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00463999  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0046399f  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
004639a5  03c1                      ADD EAX,ECX
004639a7  85c0                      TEST EAX,EAX
004639a9  0f4ff0                    CMOVG ESI,EAX
004639ac  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004639af  89b5e0fdffff              MOV dword ptr [EBP + 0xfffffde0],ESI
004639b5  83f801                    CMP EAX,0x1
004639b8  7409                      JZ 0x004639c3
004639ba  83f802                    CMP EAX,0x2
004639bd  0f8531020000              JNZ 0x00463bf4
004639c3  f30f100dd0a8ba00          MOVSS XMM1,dword ptr [0x00baa8d0]
004639cb  0f57d2                    XORPS XMM2,XMM2
004639ce  8bcf                      MOV ECX,EDI
004639d0  e88b8d2400                CALL 0x006ac760
004639d5  85c0                      TEST EAX,EAX
004639d7  0f8417020000              JZ 0x00463bf4
004639dd  e87eb52800                CALL 0x006eef60
004639e2  83e007                    AND EAX,0x7
004639e5  0f8509020000              JNZ 0x00463bf4
004639eb  83fe09                    CMP ESI,0x9
004639ee  0f8d00020000              JGE 0x00463bf4
004639f4  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004639fc  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00463a04  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
00463a0b  0f86e3010000              JBE 0x00463bf4
00463a11  e84ab52800                CALL 0x006eef60
00463a16  83e003                    AND EAX,0x3
00463a19  8d4e02                    LEA ECX,[ESI + 0x2]
00463a1c  03c8                      ADD ECX,EAX
00463a1e  be09000000                MOV ESI,0x9
00463a23  2bb5e0fdffff              SUB ESI,dword ptr [EBP + 0xfffffde0]
00463a29  83c002                    ADD EAX,0x2
00463a2c  83f909                    CMP ECX,0x9
00463a2f  0f4ef0                    CMOVLE ESI,EAX
00463a32  89b5a8fdffff              MOV dword ptr [EBP + 0xfffffda8],ESI
00463a38  e823b52800                CALL 0x006eef60
00463a3d  660f6ec0                  MOVD XMM0,EAX
00463a41  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00463a45  c1e81f                    SHR EAX,0x1f
00463a48  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00463a51  660f5ac0                  CVTPD2PS XMM0,XMM0
00463a55  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00463a5d  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
00463a65  f30f58c0                  ADDSS XMM0,XMM0
00463a69  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
00463a71  85f6                      TEST ESI,ESI
00463a73  0f8e7b010000              JLE 0x00463bf4
00463a79  f30f100da8a7ba00          MOVSS XMM1,dword ptr [0x00baa7a8]
00463a81  660f6ec6                  MOVD XMM0,ESI
00463a85  0f5bc0                    CVTDQ2PS XMM0,XMM0
00463a88  f30f5ec8                  DIVSS XMM1,XMM0
00463a8c  f30f118d78fdffff          MOVSS dword ptr [EBP + 0xfffffd78],XMM1
00463a94  e8c7b42800                CALL 0x006eef60
00463a99  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
00463aa1  83e003                    AND EAX,0x3
00463aa4  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00463aac  be12000000                MOV ESI,0x12
00463ab1  b850000000                MOV EAX,0x50
00463ab6  c785e4fdffff01000000      MOV dword ptr [EBP + 0xfffffde4],0x1
00463ac0  0f44f0                    CMOVZ ESI,EAX
00463ac3  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
00463aca  7619                      JBE 0x00463ae5
00463acc  e88fb42800                CALL 0x006eef60
00463ad1  83e003                    AND EAX,0x3
00463ad4  740f                      JZ 0x00463ae5
00463ad6  c785e4fdffff02000000      MOV dword ptr [EBP + 0xfffffde4],0x2
00463ae0  be0e000000                MOV ESI,0xe
00463ae5  f30f1085e8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde8]
00463aed  e82e9afbff                CALL 0x0041d520
00463af2  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
00463afa  f30f1085e8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde8]
00463b02  e8399afbff                CALL 0x0041d540
00463b07  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
00463b0f  e84cb42800                CALL 0x006eef60
00463b14  f30f1085e0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde0]
00463b1c  f30f109db4fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdb4]
00463b24  0f28d0                    MOVAPS XMM2,XMM0
00463b27  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
00463b2f  0f28cb                    MOVAPS XMM1,XMM3
00463b32  6a00                      PUSH 0x0
00463b34  f30f591d54a8ba00          MULSS XMM3,dword ptr [0x00baa854]
00463b3c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00463b42  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00463b4a  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
00463b52  68acd6c500                PUSH 0xc5d6ac
00463b57  f30f589f40030000          ADDSS XMM3,dword ptr [EDI + 0x340]
00463b5f  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00463b67  68dcd5c500                PUSH 0xc5d5dc
00463b6c  6a00                      PUSH 0x0
00463b6e  50                        PUSH EAX
00463b6f  ffb5e4fdffff              PUSH dword ptr [EBP + 0xfffffde4]
00463b75  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
00463b7b  f30f1195d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM2
00463b83  57                        PUSH EDI
00463b84  50                        PUSH EAX
00463b85  8d856cfdffff              LEA EAX,[EBP + 0xfffffd6c]
00463b8b  f30f118dd4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM1
00463b93  50                        PUSH EAX
00463b94  6a00                      PUSH 0x0
00463b96  56                        PUSH ESI
00463b97  f30f11856cfdffff          MOVSS dword ptr [EBP + 0xfffffd6c],XMM0
00463b9f  f30f119d70fdffff          MOVSS dword ptr [EBP + 0xfffffd70],XMM3
00463ba7  e8744ffcff                CALL 0x00428b20
00463bac  50                        PUSH EAX
00463bad  e8ffcc6800                CALL 0x00af08b1
00463bb2  f30f1085e8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde8]
00463bba  83c414                    ADD ESP,0x14
00463bbd  f30f588578fdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffd78]
00463bc5  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00463bcc  83ada8fdffff01            SUB dword ptr [EBP + 0xfffffda8],0x1
00463bd3  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00463bd9  c6807401000001            MOV byte ptr [EAX + 0x174],0x1
00463be0  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00463be6  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
00463bee  0f85a0feffff              JNZ 0x00463a94
00463bf4  80bfc40b000001            CMP byte ptr [EDI + 0xbc4],0x1
00463bfb  0f8546020000              JNZ 0x00463e47
00463c01  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00463c05  0f853c020000              JNZ 0x00463e47
00463c0b  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
00463c11  85c0                      TEST EAX,EAX
00463c13  0f8922020000              JNS 0x00463e3b
00463c19  e842b32800                CALL 0x006eef60
00463c1e  83e003                    AND EAX,0x3
00463c21  7519                      JNZ 0x00463c3c
00463c23  c787100400000a000000      MOV dword ptr [EDI + 0x410],0xa
00463c2d  c787a00b000028000000      MOV dword ptr [EDI + 0xba0],0x28
00463c37  e90b020000                JMP 0x00463e47
00463c3c  e81fb32800                CALL 0x006eef60
00463c41  33d2                      XOR EDX,EDX
00463c43  b90a000000                MOV ECX,0xa
00463c48  f7f1                      DIV ECX
00463c4a  85d2                      TEST EDX,EDX
00463c4c  0f85f5010000              JNZ 0x00463e47
00463c52  a17816c700                MOV EAX,[0x00c71678]
00463c57  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00463c5d  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
00463c63  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
00463c69  03c1                      ADD EAX,ECX
00463c6b  33c9                      XOR ECX,ECX
00463c6d  85c0                      TEST EAX,EAX
00463c6f  0f4fc8                    CMOVG ECX,EAX
00463c72  83f901                    CMP ECX,0x1
00463c75  0f8fcc010000              JG 0x00463e47
00463c7b  c787a00b000078000000      MOV dword ptr [EDI + 0xba0],0x78
00463c85  c785e4fdffff02000000      MOV dword ptr [EBP + 0xfffffde4],0x2
00463c8f  90                        NOP
00463c90  a17816c700                MOV EAX,[0x00c71678]
00463c95  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00463c9b  e8c0b22800                CALL 0x006eef60
00463ca0  660f6ec0                  MOVD XMM0,EAX
00463ca4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00463ca8  c1e81f                    SHR EAX,0x1f
00463cab  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00463cb4  660f5ac0                  CVTPD2PS XMM0,XMM0
00463cb8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00463cc0  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00463cc8  f30f58c0                  ADDSS XMM0,XMM0
00463ccc  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
00463cd4  e84798fbff                CALL 0x0041d520
00463cd9  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
00463ce1  f30f1085e0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde0]
00463ce9  e85298fbff                CALL 0x0041d540
00463cee  f30f108db4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb4]
00463cf6  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
00463cfc  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
00463d04  6a00                      PUSH 0x0
00463d06  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
00463d0e  6a01                      PUSH 0x1
00463d10  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00463d18  6a01                      PUSH 0x1
00463d1a  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00463d22  51                        PUSH ECX
00463d23  c7042400000000            MOV dword ptr [ESP],0x0
00463d2a  8bce                      MOV ECX,ESI
00463d2c  50                        PUSH EAX
00463d2d  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
00463d33  f30f1185d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM0
00463d3b  50                        PUSH EAX
00463d3c  f30f118dd4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM1
00463d44  e8d7f73a00                CALL 0x00813520
00463d49  8bf0                      MOV ESI,EAX
00463d4b  e810b22800                CALL 0x006eef60
00463d50  660f6ec0                  MOVD XMM0,EAX
00463d54  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00463d58  c1e81f                    SHR EAX,0x1f
00463d5b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00463d64  660f5ac0                  CVTPD2PS XMM0,XMM0
00463d68  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00463d70  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00463d78  f30f58c0                  ADDSS XMM0,XMM0
00463d7c  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
00463d84  e89797fbff                CALL 0x0041d520
00463d89  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
00463d91  e8cab12800                CALL 0x006eef60
00463d96  660f6ec8                  MOVD XMM1,EAX
00463d9a  f30fe6c9                  CVTDQ2PD XMM1,XMM1
00463d9e  c1e81f                    SHR EAX,0x1f
00463da1  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
00463daa  660f5ac1                  CVTPD2PS XMM0,XMM1
00463dae  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00463db6  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
00463dbe  f30f1085e0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde0]
00463dc6  e87597fbff                CALL 0x0041d540
00463dcb  f30f108db4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb4]
00463dd3  f30f59c1                  MULSS XMM0,XMM1
00463dd7  f30f598da8fdffff          MULSS XMM1,dword ptr [EBP + 0xfffffda8]
00463ddf  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00463de7  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00463def  f30f5806                  ADDSS XMM0,dword ptr [ESI]
00463df3  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
00463df8  f30f118564fdffff          MOVSS dword ptr [EBP + 0xfffffd64],XMM0
00463e00  f30f118d68fdffff          MOVSS dword ptr [EBP + 0xfffffd68],XMM1
00463e08  e853b12800                CALL 0x006eef60
00463e0d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00463e13  50                        PUSH EAX
00463e14  6a00                      PUSH 0x0
00463e16  57                        PUSH EDI
00463e17  6840b6c700                PUSH 0xc7b640
00463e1c  8d8564fdffff              LEA EAX,[EBP + 0xfffffd64]
00463e22  50                        PUSH EAX
00463e23  6a01                      PUSH 0x1
00463e25  6a26                      PUSH 0x26
00463e27  e8f44cfcff                CALL 0x00428b20
00463e2c  83ade4fdffff01            SUB dword ptr [EBP + 0xfffffde4],0x1
00463e33  0f8557feffff              JNZ 0x00463c90
00463e39  eb0c                      JMP 0x00463e47
00463e3b  2b85acfdffff              SUB EAX,dword ptr [EBP + 0xfffffdac]
00463e41  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00463e47  8b85acfdffff              MOV EAX,dword ptr [EBP + 0xfffffdac]
00463e4d  85c0                      TEST EAX,EAX
00463e4f  0f8e6d030000              JLE 0x004641c2
00463e55  8bf0                      MOV ESI,EAX
00463e57  8985e4fdffff              MOV dword ptr [EBP + 0xfffffde4],EAX
00463e5d  0f1f00                    NOP dword ptr [EAX]
00463e60  80bfc40b000001            CMP byte ptr [EDI + 0xbc4],0x1
00463e67  0f8546030000              JNZ 0x004641b3
00463e6d  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00463e73  8d41ff                    LEA EAX,[ECX + -0x1]
00463e76  898710040000              MOV dword ptr [EDI + 0x410],EAX
00463e7c  85c9                      TEST ECX,ECX
00463e7e  0f8e2f030000              JLE 0x004641b3
00463e84  99                        CDQ
00463e85  b905000000                MOV ECX,0x5
00463e8a  f7f9                      IDIV ECX
00463e8c  85d2                      TEST EDX,EDX
00463e8e  0f851f030000              JNZ 0x004641b3
00463e94  a17816c700                MOV EAX,[0x00c71678]
00463e99  51                        PUSH ECX
00463e9a  c704240000a041            MOV dword ptr [ESP],0x41a00000
00463ea1  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00463ea7  8d8584fdffff              LEA EAX,[EBP + 0xfffffd84]
00463ead  50                        PUSH EAX
00463eae  8bce                      MOV ECX,ESI
00463eb0  e81bab3b00                CALL 0x0081e9d0
00463eb5  6a00                      PUSH 0x0
00463eb7  6a00                      PUSH 0x0
00463eb9  6a00                      PUSH 0x0
00463ebb  51                        PUSH ECX
00463ebc  c7042400000000            MOV dword ptr [ESP],0x0
00463ec3  8bce                      MOV ECX,ESI
00463ec5  50                        PUSH EAX
00463ec6  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
00463ecc  50                        PUSH EAX
00463ecd  e84ef63a00                CALL 0x00813520
00463ed2  e889b02800                CALL 0x006eef60
00463ed7  660f6ec0                  MOVD XMM0,EAX
00463edb  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00463edf  c1e81f                    SHR EAX,0x1f
00463ee2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00463eeb  660f5ac0                  CVTPD2PS XMM0,XMM0
00463eef  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00463ef7  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00463eff  f30f58c0                  ADDSS XMM0,XMM0
00463f03  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
00463f0b  e81096fbff                CALL 0x0041d520
00463f10  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
00463f18  e843b02800                CALL 0x006eef60
00463f1d  660f6ec8                  MOVD XMM1,EAX
00463f21  f30fe6c9                  CVTDQ2PD XMM1,XMM1
00463f25  c1e81f                    SHR EAX,0x1f
00463f28  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
00463f31  660f5ac1                  CVTPD2PS XMM0,XMM1
00463f35  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00463f3d  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
00463f45  f30f1085e0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde0]
00463f4d  e8ee95fbff                CALL 0x0041d540
00463f52  f30f109da8fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffda8]
00463f5a  0f28d0                    MOVAPS XMM2,XMM0
00463f5d  f30f5995b4fdffff          MULSS XMM2,dword ptr [EBP + 0xfffffdb4]
00463f65  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
00463f6d  f30f599db4fdffff          MULSS XMM3,dword ptr [EBP + 0xfffffdb4]
00463f75  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
00463f7d  f30f591d7ca8ba00          MULSS XMM3,dword ptr [0x00baa87c]
00463f85  f30f58c2                  ADDSS XMM0,XMM2
00463f89  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
00463f91  f30f108580fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd80]
00463f99  f30f58c3                  ADDSS XMM0,XMM3
00463f9d  f30f118580fdffff          MOVSS dword ptr [EBP + 0xfffffd80],XMM0
00463fa5  e8b6af2800                CALL 0x006eef60
00463faa  33d2                      XOR EDX,EDX
00463fac  f7b590fdffff              DIV dword ptr [EBP + 0xfffffd90]
00463fb2  85d2                      TEST EDX,EDX
00463fb4  0f85f1000000              JNZ 0x004640ab
00463fba  a17816c700                MOV EAX,[0x00c71678]
00463fbf  8b8dc8fdffff              MOV ECX,dword ptr [EBP + 0xfffffdc8]
00463fc5  8bb800830100              MOV EDI,dword ptr [EAX + 0x18300]
00463fcb  e870a82500                CALL 0x006be840
00463fd0  8bf0                      MOV ESI,EAX
00463fd2  8b85c8fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc8]
00463fd8  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00463fe0  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00463fe8  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
00463ff0  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00463ff8  f30f59c0                  MULSS XMM0,XMM0
00463ffc  f30f59c9                  MULSS XMM1,XMM1
00464000  f30f58c1                  ADDSS XMM0,XMM1
00464004  e8471afdff                CALL 0x00435a50
00464009  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00464011  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
00464017  83ec0c                    SUB ESP,0xc
0046401a  8bcf                      MOV ECX,EDI
0046401c  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
00464024  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0046402c  0f28c8                    MOVAPS XMM1,XMM0
0046402f  f30f598664030000          MULSS XMM0,dword ptr [ESI + 0x364]
00464037  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
0046403f  f30f598e60030000          MULSS XMM1,dword ptr [ESI + 0x360]
00464047  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
0046404f  c704240000a041            MOV dword ptr [ESP],0x41a00000
00464056  50                        PUSH EAX
00464057  f30f58d1                  ADDSS XMM2,XMM1
0046405b  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
00464063  f30f58c8                  ADDSS XMM1,XMM0
00464067  8d8594fdffff              LEA EAX,[EBP + 0xfffffd94]
0046406d  50                        PUSH EAX
0046406e  f30f1195d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM2
00464076  f30f118dd4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM1
0046407e  e8cdee3a00                CALL 0x00812f50
00464083  f30f108594fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd94]
0046408b  f30f108d98fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd98]
00464093  8bbdc8fdffff              MOV EDI,dword ptr [EBP + 0xfffffdc8]
00464099  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
004640a1  f30f118d80fdffff          MOVSS dword ptr [EBP + 0xfffffd80],XMM1
004640a9  eb10                      JMP 0x004640bb
004640ab  f30f108d80fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd80]
004640b3  f30f10857cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd7c]
004640bb  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004640c3  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
004640cb  f30f5cc2                  SUBSS XMM0,XMM2
004640cf  a17816c700                MOV EAX,[0x00c71678]
004640d4  f30f5eca                  DIVSS XMM1,XMM2
004640d8  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004640de  f30f5ec2                  DIVSS XMM0,XMM2
004640e2  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
004640ea  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004640f2  f30f2cc1                  CVTTSS2SI EAX,XMM1
004640f6  f30f2cd0                  CVTTSS2SI EDX,XMM0
004640fa  85d2                      TEST EDX,EDX
004640fc  7834                      JS 0x00464132
004640fe  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
00464101  3bd6                      CMP EDX,ESI
00464103  7d2d                      JGE 0x00464132
00464105  85c0                      TEST EAX,EAX
00464107  7829                      JS 0x00464132
00464109  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
0046410c  7d24                      JGE 0x00464132
0046410e  0fafc6                    IMUL EAX,ESI
00464111  03c2                      ADD EAX,EDX
00464113  3dbf010000                CMP EAX,0x1bf
00464118  7718                      JA 0x00464132
0046411a  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
00464125  7f0b                      JG 0x00464132
00464127  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
00464132  e829ae2800                CALL 0x006eef60
00464137  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046413d  50                        PUSH EAX
0046413e  6a02                      PUSH 0x2
00464140  57                        PUSH EDI
00464141  6840b6c700                PUSH 0xc7b640
00464146  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
0046414c  50                        PUSH EAX
0046414d  6a13                      PUSH 0x13
0046414f  68e8030000                PUSH 0x3e8
00464154  e8c749fcff                CALL 0x00428b20
00464159  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00464161  8bf0                      MOV ESI,EAX
00464163  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0046416a  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00464172  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00464179  6aff                      PUSH -0x1
0046417b  f30f1185bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM0
00464183  ffb5bcfdffff              PUSH dword ptr [EBP + 0xfffffdbc]
00464189  f30f118db8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM1
00464191  ffb5b8fdffff              PUSH dword ptr [EBP + 0xfffffdb8]
00464197  51                        PUSH ECX
00464198  8bce                      MOV ECX,ESI
0046419a  c7042400002041            MOV dword ptr [ESP],0x41200000
004641a1  e8fa802400                CALL 0x006ac2a0
004641a6  8b06                      MOV EAX,dword ptr [ESI]
004641a8  8bce                      MOV ECX,ESI
004641aa  ff500c                    CALL dword ptr [EAX + 0xc]
004641ad  8bb5e4fdffff              MOV ESI,dword ptr [EBP + 0xfffffde4]
004641b3  83ee01                    SUB ESI,0x1
004641b6  89b5e4fdffff              MOV dword ptr [EBP + 0xfffffde4],ESI
004641bc  0f859efcffff              JNZ 0x00463e60
004641c2  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004641c8  83f803                    CMP EAX,0x3
004641cb  0f851a070000              JNZ 0x004648eb
004641d1  80bfc40b000000            CMP byte ptr [EDI + 0xbc4],0x0
004641d8  0f8572000000              JNZ 0x00464250
004641de  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004641e1  85f6                      TEST ESI,ESI
004641e3  744a                      JZ 0x0046422f
004641e5  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004641e9  8bc6                      MOV EAX,ESI
004641eb  7202                      JC 0x004641ef
004641ed  8b06                      MOV EAX,dword ptr [ESI]
004641ef  b93cdfb100                MOV ECX,0xb1df3c
004641f4  8a10                      MOV DL,byte ptr [EAX]
004641f6  3a11                      CMP DL,byte ptr [ECX]
004641f8  751a                      JNZ 0x00464214
004641fa  84d2                      TEST DL,DL
004641fc  7412                      JZ 0x00464210
004641fe  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00464201  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00464204  750e                      JNZ 0x00464214
00464206  83c002                    ADD EAX,0x2
00464209  83c102                    ADD ECX,0x2
0046420c  84d2                      TEST DL,DL
0046420e  75e4                      JNZ 0x004641f4
00464210  33c0                      XOR EAX,EAX
00464212  eb05                      JMP 0x00464219
00464214  1bc0                      SBB EAX,EAX
00464216  83c801                    OR EAX,0x1
00464219  85c0                      TEST EAX,EAX
0046421b  7512                      JNZ 0x0046422f
0046421d  384634                    CMP byte ptr [ESI + 0x34],AL
00464220  742e                      JZ 0x00464250
00464222  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00464228  8d7748                    LEA ESI,[EDI + 0x48]
0046422b  7523                      JNZ 0x00464250
0046422d  eb03                      JMP 0x00464232
0046422f  8d7748                    LEA ESI,[EDI + 0x48]
00464232  6a01                      PUSH 0x1
00464234  683cdfb100                PUSH 0xb1df3c
00464239  8bce                      MOV ECX,ESI
0046423b  e89063faff                CALL 0x0040a5d0
00464240  84c0                      TEST AL,AL
00464242  740c                      JZ 0x00464250
00464244  8d4e30                    LEA ECX,[ESI + 0x30]
00464247  e8645ffaff                CALL 0x0040a1b0
0046424c  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00464250  80bfc40b000001            CMP byte ptr [EDI + 0xbc4],0x1
00464257  0f8572000000              JNZ 0x004642cf
0046425d  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00464260  85f6                      TEST ESI,ESI
00464262  744a                      JZ 0x004642ae
00464264  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00464268  8bc6                      MOV EAX,ESI
0046426a  7202                      JC 0x0046426e
0046426c  8b06                      MOV EAX,dword ptr [ESI]
0046426e  b934dfb100                MOV ECX,0xb1df34
00464273  8a10                      MOV DL,byte ptr [EAX]
00464275  3a11                      CMP DL,byte ptr [ECX]
00464277  751a                      JNZ 0x00464293
00464279  84d2                      TEST DL,DL
0046427b  7412                      JZ 0x0046428f
0046427d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00464280  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00464283  750e                      JNZ 0x00464293
00464285  83c002                    ADD EAX,0x2
00464288  83c102                    ADD ECX,0x2
0046428b  84d2                      TEST DL,DL
0046428d  75e4                      JNZ 0x00464273
0046428f  33c0                      XOR EAX,EAX
00464291  eb05                      JMP 0x00464298
00464293  1bc0                      SBB EAX,EAX
00464295  83c801                    OR EAX,0x1
00464298  85c0                      TEST EAX,EAX
0046429a  7512                      JNZ 0x004642ae
0046429c  384634                    CMP byte ptr [ESI + 0x34],AL
0046429f  742e                      JZ 0x004642cf
004642a1  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004642a7  8d7748                    LEA ESI,[EDI + 0x48]
004642aa  7523                      JNZ 0x004642cf
004642ac  eb03                      JMP 0x004642b1
004642ae  8d7748                    LEA ESI,[EDI + 0x48]
004642b1  6a01                      PUSH 0x1
004642b3  6834dfb100                PUSH 0xb1df34
004642b8  8bce                      MOV ECX,ESI
004642ba  e81163faff                CALL 0x0040a5d0
004642bf  84c0                      TEST AL,AL
004642c1  740c                      JZ 0x004642cf
004642c3  8d4e30                    LEA ECX,[ESI + 0x30]
004642c6  e8e55efaff                CALL 0x0040a1b0
004642cb  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004642cf  80bfc40b000002            CMP byte ptr [EDI + 0xbc4],0x2
004642d6  0f8272000000              JC 0x0046434e
004642dc  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004642df  85f6                      TEST ESI,ESI
004642e1  744a                      JZ 0x0046432d
004642e3  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004642e7  8bc6                      MOV EAX,ESI
004642e9  7202                      JC 0x004642ed
004642eb  8b06                      MOV EAX,dword ptr [ESI]
004642ed  b94cdfb100                MOV ECX,0xb1df4c
004642f2  8a10                      MOV DL,byte ptr [EAX]
004642f4  3a11                      CMP DL,byte ptr [ECX]
004642f6  751a                      JNZ 0x00464312
004642f8  84d2                      TEST DL,DL
004642fa  7412                      JZ 0x0046430e
004642fc  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004642ff  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00464302  750e                      JNZ 0x00464312
00464304  83c002                    ADD EAX,0x2
00464307  83c102                    ADD ECX,0x2
0046430a  84d2                      TEST DL,DL
0046430c  75e4                      JNZ 0x004642f2
0046430e  33c0                      XOR EAX,EAX
00464310  eb05                      JMP 0x00464317
00464312  1bc0                      SBB EAX,EAX
00464314  83c801                    OR EAX,0x1
00464317  85c0                      TEST EAX,EAX
00464319  7512                      JNZ 0x0046432d
0046431b  384634                    CMP byte ptr [ESI + 0x34],AL
0046431e  742e                      JZ 0x0046434e
00464320  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00464326  8d7748                    LEA ESI,[EDI + 0x48]
00464329  7523                      JNZ 0x0046434e
0046432b  eb03                      JMP 0x00464330
0046432d  8d7748                    LEA ESI,[EDI + 0x48]
00464330  6a01                      PUSH 0x1
00464332  684cdfb100                PUSH 0xb1df4c
00464337  8bce                      MOV ECX,ESI
00464339  e89262faff                CALL 0x0040a5d0
0046433e  84c0                      TEST AL,AL
00464340  740c                      JZ 0x0046434e
00464342  8d4e30                    LEA ECX,[ESI + 0x30]
00464345  e8665efaff                CALL 0x0040a1b0
0046434a  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0046434e  8a87c60b0000              MOV AL,byte ptr [EDI + 0xbc6]
00464354  8b8dacfdffff              MOV ECX,dword ptr [EBP + 0xfffffdac]
0046435a  84c0                      TEST AL,AL
0046435c  0f84a8000000              JZ 0x0046440a
00464362  0fb6d0                    MOVZX EDX,AL
00464365  8bc2                      MOV EAX,EDX
00464367  2bc1                      SUB EAX,ECX
00464369  85c0                      TEST EAX,EAX
0046436b  0f8e9b000000              JLE 0x0046440c
00464371  2bd1                      SUB EDX,ECX
00464373  33c9                      XOR ECX,ECX
00464375  85d2                      TEST EDX,EDX
00464377  0fb6c2                    MOVZX EAX,DL
0046437a  0f4fc8                    CMOVG ECX,EAX
0046437d  888fc60b0000              MOV byte ptr [EDI + 0xbc6],CL
00464383  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00464386  83f801                    CMP EAX,0x1
00464389  7405                      JZ 0x00464390
0046438b  83f802                    CMP EAX,0x2
0046438e  7540                      JNZ 0x004643d0
00464390  80bfc40b000002            CMP byte ptr [EDI + 0xbc4],0x2
00464397  7237                      JC 0x004643d0
00464399  a17816c700                MOV EAX,[0x00c71678]
0046439e  b964000000                MOV ECX,0x64
004643a3  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004643a9  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
004643af  99                        CDQ
004643b0  f7f9                      IDIV ECX
004643b2  85d2                      TEST EDX,EDX
004643b4  751a                      JNZ 0x004643d0
004643b6  e8a5ab2800                CALL 0x006eef60
004643bb  83e001                    AND EAX,0x1
004643be  7510                      JNZ 0x004643d0
004643c0  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004643ca  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004643d0  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
004643d4  0f858f010000              JNZ 0x00464569
004643da  8a87c40b0000              MOV AL,byte ptr [EDI + 0xbc4]
004643e0  3c02                      CMP AL,0x2
004643e2  0f85e8000000              JNZ 0x004644d0
004643e8  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004643f0  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004643f8  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004643ff  0f8748010000              JA 0x0046454d
00464405  e95f010000                JMP 0x00464569
0046440a  33d2                      XOR EDX,EDX
0046440c  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
00464414  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
0046441b  0f8650ffffff              JBE 0x00464371
00464421  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0046442b  c787a00b000028000000      MOV dword ptr [EDI + 0xba0],0x28
00464435  c687c60b000000            MOV byte ptr [EDI + 0xbc6],0x0
0046443c  8a87c40b0000              MOV AL,byte ptr [EDI + 0xbc4]
00464442  84c0                      TEST AL,AL
00464444  7404                      JZ 0x0046444a
00464446  3c02                      CMP AL,0x2
00464448  722f                      JC 0x00464479
0046444a  e811ab2800                CALL 0x006eef60
0046444f  33d2                      XOR EDX,EDX
00464451  b906000000                MOV ECX,0x6
00464456  f7f1                      DIV ECX
00464458  8bf2                      MOV ESI,EDX
0046445a  e801ab2800                CALL 0x006eef60
0046445f  33d2                      XOR EDX,EDX
00464461  b905000000                MOV ECX,0x5
00464466  f7f1                      DIV ECX
00464468  8d04b2                    LEA EAX,[EDX + ESI*0x4]
0046446b  03c6                      ADD EAX,ESI
0046446d  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00464473  8a87c40b0000              MOV AL,byte ptr [EDI + 0xbc4]
00464479  3c01                      CMP AL,0x1
0046447b  7519                      JNZ 0x00464496
0046447d  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00464483  40                        INC EAX
00464484  2501000080                AND EAX,0x80000001
00464489  7905                      JNS 0x00464490
0046448b  48                        DEC EAX
0046448c  83c8fe                    OR EAX,0xfffffffe
0046448f  40                        INC EAX
00464490  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00464496  e8c5aa2800                CALL 0x006eef60
0046449b  660f6ec0                  MOVD XMM0,EAX
0046449f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004644a3  c1e81f                    SHR EAX,0x1f
004644a6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004644af  660f5ac0                  CVTPD2PS XMM0,XMM0
004644b3  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004644bb  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
004644c3  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004644cb  e9b3feffff                JMP 0x00464383
004644d0  3c03                      CMP AL,0x3
004644d2  751e                      JNZ 0x004644f2
004644d4  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004644dc  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004644e4  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004644eb  7760                      JA 0x0046454d
004644ed  e977000000                JMP 0x00464569
004644f2  3c04                      CMP AL,0x4
004644f4  751b                      JNZ 0x00464511
004644f6  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004644fe  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
00464506  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
0046450d  773e                      JA 0x0046454d
0046450f  eb58                      JMP 0x00464569
00464511  3c05                      CMP AL,0x5
00464513  751b                      JNZ 0x00464530
00464515  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0046451d  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00464525  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
0046452c  771f                      JA 0x0046454d
0046452e  eb39                      JMP 0x00464569
00464530  3c06                      CMP AL,0x6
00464532  7535                      JNZ 0x00464569
00464534  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
0046453c  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00464544  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
0046454b  761c                      JBE 0x00464569
0046454d  fec0                      INC AL
0046454f  8887c40b0000              MOV byte ptr [EDI + 0xbc4],AL
00464555  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0046455f  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00464569  80bfc40b000002            CMP byte ptr [EDI + 0xbc4],0x2
00464570  0f82f41e0000              JC 0x0046646a
00464576  f30f100d54a8ba00          MOVSS XMM1,dword ptr [0x00baa854]
0046457e  0f57d2                    XORPS XMM2,XMM2
00464581  8bcf                      MOV ECX,EDI
00464583  e8d8812400                CALL 0x006ac760
00464588  85c0                      TEST EAX,EAX
0046458a  7456                      JZ 0x004645e2
0046458c  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0046458f  85c0                      TEST EAX,EAX
00464591  7540                      JNZ 0x004645d3
00464593  e8c8a92800                CALL 0x006eef60
00464598  660f6ec0                  MOVD XMM0,EAX
0046459c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004645a0  c1e81f                    SHR EAX,0x1f
004645a3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004645ac  660f5ac0                  CVTPD2PS XMM0,XMM0
004645b0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004645b8  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
004645c0  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
004645c8  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004645d0  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004645d3  83f801                    CMP EAX,0x1
004645d6  750a                      JNZ 0x004645e2
004645d8  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
004645e2  8bcf                      MOV ECX,EDI
004645e4  e857a22500                CALL 0x006be840
004645e9  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
004645ed  8bf0                      MOV ESI,EAX
004645ef  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
004645f7  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
004645ff  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00464607  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0046460f  f30f5cd0                  SUBSS XMM2,XMM0
00464613  f30f5cd9                  SUBSS XMM3,XMM1
00464617  f30f1185d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM0
0046461f  f30f118dd4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM1
00464627  f30f1195e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM2
0046462f  f30f119dc4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM3
00464637  7531                      JNZ 0x0046466a
00464639  0f28ca                    MOVAPS XMM1,XMM2
0046463c  0f28c3                    MOVAPS XMM0,XMM3
0046463f  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00464646  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0046464d  0f2fc8                    COMISS XMM1,XMM0
00464650  760d                      JBE 0x0046465f
00464652  0f57db                    XORPS XMM3,XMM3
00464655  f30f119dc4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM3
0046465d  eb03                      JMP 0x00464662
0046465f  0f57d2                    XORPS XMM2,XMM2
00464662  f30f1195e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM2
0046466a  0f28c3                    MOVAPS XMM0,XMM3
0046466d  0f28ca                    MOVAPS XMM1,XMM2
00464670  f30f59c3                  MULSS XMM0,XMM3
00464674  f30f59ca                  MULSS XMM1,XMM2
00464678  f30f58c1                  ADDSS XMM0,XMM1
0046467c  e8cf13fdff                CALL 0x00435a50
00464681  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00464688  f30f1095c4fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdc4]
00464690  761e                      JBE 0x004646b0
00464692  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0046469a  f30f5ec8                  DIVSS XMM1,XMM0
0046469e  f30f1085e8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde8]
004646a6  f30f59d1                  MULSS XMM2,XMM1
004646aa  f30f59c1                  MULSS XMM0,XMM1
004646ae  eb08                      JMP 0x004646b8
004646b0  f30f1085e8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde8]
004646b8  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004646c0  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004646c6  0f28d9                    MOVAPS XMM3,XMM1
004646c9  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004646cf  f30f59d8                  MULSS XMM3,XMM0
004646d3  8985bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EAX
004646d9  8bc1                      MOV EAX,ECX
004646db  f30f59ca                  MULSS XMM1,XMM2
004646df  2500080001                AND EAX,0x1000800
004646e4  83c800                    OR EAX,0x0
004646e7  f30f589e3c030000          ADDSS XMM3,dword ptr [ESI + 0x33c]
004646ef  f30f588e40030000          ADDSS XMM1,dword ptr [ESI + 0x340]
004646f7  f30f5c9f3c030000          SUBSS XMM3,dword ptr [EDI + 0x33c]
004646ff  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00464707  f30f119de0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM3
0046470f  f30f118db4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM1
00464717  7430                      JZ 0x00464749
00464719  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0046471c  83f801                    CMP EAX,0x1
0046471f  7405                      JZ 0x00464726
00464721  83f802                    CMP EAX,0x2
00464724  750a                      JNZ 0x00464730
00464726  c7876c0300009a99193f      MOV dword ptr [EDI + 0x36c],0x3f19999a
00464730  6a00                      PUSH 0x0
00464732  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
00464738  8d8f14040000              LEA ECX,[EDI + 0x414]
0046473e  50                        PUSH EAX
0046473f  e8fc013800                CALL 0x007e4940
00464744  e9211d0000                JMP 0x0046646a
00464749  81e100020000              AND ECX,0x200
0046474f  83c900                    OR ECX,0x0
00464752  744d                      JZ 0x004647a1
00464754  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00464757  83f801                    CMP EAX,0x1
0046475a  7405                      JZ 0x00464761
0046475c  83f802                    CMP EAX,0x2
0046475f  750a                      JNZ 0x0046476b
00464761  c7876c0300009a99193f      MOV dword ptr [EDI + 0x36c],0x3f19999a
0046476b  6a00                      PUSH 0x0
0046476d  8d8f14040000              LEA ECX,[EDI + 0x414]
00464773  e8881b3800                CALL 0x007e6300
00464778  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0046477c  0f85e81c0000              JNZ 0x0046646a
00464782  6a00                      PUSH 0x0
00464784  8d8f14040000              LEA ECX,[EDI + 0x414]
0046478a  e8711b3800                CALL 0x007e6300
0046478f  6a00                      PUSH 0x0
00464791  8d8f14040000              LEA ECX,[EDI + 0x414]
00464797  e8641b3800                CALL 0x007e6300
0046479c  e9c91c0000                JMP 0x0046646a
004647a1  0f28c1                    MOVAPS XMM0,XMM1
004647a4  0f28d3                    MOVAPS XMM2,XMM3
004647a7  f30f59c1                  MULSS XMM0,XMM1
004647ab  f30f59d3                  MULSS XMM2,XMM3
004647af  f30f58c2                  ADDSS XMM0,XMM2
004647b3  e89812fdff                CALL 0x00435a50
004647b8  0f2f05e0a8ba00            COMISS XMM0,dword ptr [0x00baa8e0]
004647bf  0f86a51c0000              JBE 0x0046646a
004647c5  f30f108de0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde0]
004647cd  f30f1085b4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb4]
004647d5  e886550300                CALL 0x00499d60
004647da  f30f5e0598a3ba00          DIVSS XMM0,dword ptr [0x00baa398]
004647e2  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004647ea  e8c1283d00                CALL 0x008370b0
004647ef  f30f590598a3ba00          MULSS XMM0,dword ptr [0x00baa398]
004647f7  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
004647ff  e81c8dfbff                CALL 0x0041d520
00464804  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
0046480c  f30f1085e0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde0]
00464814  e8278dfbff                CALL 0x0041d540
00464819  0f28c8                    MOVAPS XMM1,XMM0
0046481c  f30f59c1                  MULSS XMM0,XMM1
00464820  f30f118de4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM1
00464828  f30f108de8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde8]
00464830  f30f59c9                  MULSS XMM1,XMM1
00464834  f30f58c1                  ADDSS XMM0,XMM1
00464838  e81312fdff                CALL 0x00435a50
0046483d  f30f108de4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde4]
00464845  0f57e4                    XORPS XMM4,XMM4
00464848  0f2fc4                    COMISS XMM0,XMM4
0046484b  f30f1095e8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffde8]
00464853  7617                      JBE 0x0046486c
00464855  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0046485d  f30f5ed8                  DIVSS XMM3,XMM0
00464861  0f28c3                    MOVAPS XMM0,XMM3
00464864  f30f59d3                  MULSS XMM2,XMM3
00464868  f30f59c8                  MULSS XMM1,XMM0
0046486c  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0046486f  f30f590dcca4ba00          MULSS XMM1,dword ptr [0x00baa4cc]
00464877  f30f5915cca4ba00          MULSS XMM2,dword ptr [0x00baa4cc]
0046487f  83f801                    CMP EAX,0x1
00464882  7405                      JZ 0x00464889
00464884  83f802                    CMP EAX,0x2
00464887  7510                      JNZ 0x00464899
00464889  f30f590d78a1ba00          MULSS XMM1,dword ptr [0x00baa178]
00464891  f30f591578a1ba00          MULSS XMM2,dword ptr [0x00baa178]
00464899  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
004648a1  0f2edc                    UCOMISS XMM3,XMM4
004648a4  9f                        LAHF
004648a5  f6c444                    TEST AH,0x44
004648a8  0f8bbc1b0000              JNP 0x0046646a
004648ae  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004648b6  f30f59c8                  MULSS XMM1,XMM0
004648ba  f30f59d0                  MULSS XMM2,XMM0
004648be  f30f5ecb                  DIVSS XMM1,XMM3
004648c2  f30f5ed3                  DIVSS XMM2,XMM3
004648c6  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
004648ce  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004648d6  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004648de  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004648e6  e97f1b0000                JMP 0x0046646a
004648eb  83f808                    CMP EAX,0x8
004648ee  0f85430c0000              JNZ 0x00465537
004648f4  8a87c40b0000              MOV AL,byte ptr [EDI + 0xbc4]
004648fa  32c9                      XOR CL,CL
004648fc  888deffdffff              MOV byte ptr [EBP + 0xfffffdef],CL
00464902  84c0                      TEST AL,AL
00464904  0f8483030000              JZ 0x00464c8d
0046490a  3c02                      CMP AL,0x2
0046490c  0f8387010000              JNC 0x00464a99
00464912  3c01                      CMP AL,0x1
00464914  0f85bb0b0000              JNZ 0x004654d5
0046491a  6a00                      PUSH 0x0
0046491c  8d4f48                    LEA ECX,[EDI + 0x48]
0046491f  6874dfb100                PUSH 0xb1df74
00464924  e8575afaff                CALL 0x0040a380
00464929  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0046492c  85c0                      TEST EAX,EAX
0046492e  750a                      JNZ 0x0046493a
00464930  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00464938  eb08                      JMP 0x00464942
0046493a  f30f108f88000000          MOVSS XMM1,dword ptr [EDI + 0x88]
00464942  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0046494a  f30f59874c010000          MULSS XMM0,dword ptr [EDI + 0x14c]
00464952  f30f1015a4a7ba00          MOVSS XMM2,dword ptr [0x00baa7a4]
0046495a  f30f5cc8                  SUBSS XMM1,XMM0
0046495e  0f2fd1                    COMISS XMM2,XMM1
00464961  0f86680b0000              JBE 0x004654cf
00464967  85c0                      TEST EAX,EAX
00464969  0f84600b0000              JZ 0x004654cf
0046496f  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
00464977  0f2fc2                    COMISS XMM0,XMM2
0046497a  0f824f0b0000              JC 0x004654cf
00464980  51                        PUSH ECX
00464981  c704240000803f            MOV dword ptr [ESP],0x3f800000
00464988  6a00                      PUSH 0x0
0046498a  6a02                      PUSH 0x2
0046498c  51                        PUSH ECX
0046498d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00464994  8bcf                      MOV ECX,EDI
00464996  680c010000                PUSH 0x10c
0046499b  e800222700                CALL 0x006d6ba0
004649a0  51                        PUSH ECX
004649a1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004649a8  6a00                      PUSH 0x0
004649aa  6a02                      PUSH 0x2
004649ac  51                        PUSH ECX
004649ad  c704240000803f            MOV dword ptr [ESP],0x3f800000
004649b4  8bcf                      MOV ECX,EDI
004649b6  68b2000000                PUSH 0xb2
004649bb  e8e0212700                CALL 0x006d6ba0
004649c0  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
004649c6  e865a5fdff                CALL 0x0043ef30
004649cb  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
004649cf  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004649d7  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004649dd  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
004649e5  c78554ffffff0000c03f      MOV dword ptr [EBP + 0xffffff54],0x3fc00000
004649ef  0f856e000000              JNZ 0x00464a63
004649f5  c745d404000000            MOV dword ptr [EBP + -0x2c],0x4
004649fc  85c0                      TEST EAX,EAX
004649fe  7544                      JNZ 0x00464a44
00464a00  814d9800000100            OR dword ptr [EBP + -0x68],0x10000
00464a07  c785d0fdffff0000e040      MOV dword ptr [EBP + 0xfffffdd0],0x40e00000
00464a11  c785d4fdffff00008040      MOV dword ptr [EBP + 0xfffffdd4],0x40800000
00464a1b  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
00464a1e  89459c                    MOV dword ptr [EBP + -0x64],EAX
00464a21  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00464a27  8bcf                      MOV ECX,EDI
00464a29  50                        PUSH EAX
00464a2a  6a09                      PUSH 0x9
00464a2c  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
00464a32  50                        PUSH EAX
00464a33  8d873c030000              LEA EAX,[EDI + 0x33c]
00464a39  50                        PUSH EAX
00464a3a  e8a1682600                CALL 0x006cb2e0
00464a3f  e98b0a0000                JMP 0x004654cf
00464a44  83f801                    CMP EAX,0x1
00464a47  0f85820a0000              JNZ 0x004654cf
00464a4d  c785d0fdffff00002041      MOV dword ptr [EBP + 0xfffffdd0],0x41200000
00464a57  c785d4fdffff00000041      MOV dword ptr [EBP + 0xfffffdd4],0x41000000
00464a61  ebbe                      JMP 0x00464a21
00464a63  85c0                      TEST EAX,EAX
00464a65  7510                      JNZ 0x00464a77
00464a67  834d9801                  OR dword ptr [EBP + -0x68],0x1
00464a6b  c785d0fdffff00002041      MOV dword ptr [EBP + 0xfffffdd0],0x41200000
00464a75  eb9a                      JMP 0x00464a11
00464a77  83f801                    CMP EAX,0x1
00464a7a  0f854f0a0000              JNZ 0x004654cf
00464a80  094598                    OR dword ptr [EBP + -0x68],EAX
00464a83  c785d0fdffff00000041      MOV dword ptr [EBP + 0xfffffdd0],0x41000000
00464a8d  c785d4fdffff00000041      MOV dword ptr [EBP + 0xfffffdd4],0x41000000
00464a97  eb82                      JMP 0x00464a1b
00464a99  80bfc60b000000            CMP byte ptr [EDI + 0xbc6],0x0
00464aa0  0f8576000000              JNZ 0x00464b1c
00464aa6  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00464aa9  85f6                      TEST ESI,ESI
00464aab  744e                      JZ 0x00464afb
00464aad  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00464ab1  8bc6                      MOV EAX,ESI
00464ab3  7202                      JC 0x00464ab7
00464ab5  8b06                      MOV EAX,dword ptr [ESI]
00464ab7  b964dfb100                MOV ECX,0xb1df64
00464abc  0f1f4000                  NOP dword ptr [EAX]
00464ac0  8a10                      MOV DL,byte ptr [EAX]
00464ac2  3a11                      CMP DL,byte ptr [ECX]
00464ac4  751a                      JNZ 0x00464ae0
00464ac6  84d2                      TEST DL,DL
00464ac8  7412                      JZ 0x00464adc
00464aca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00464acd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00464ad0  750e                      JNZ 0x00464ae0
00464ad2  83c002                    ADD EAX,0x2
00464ad5  83c102                    ADD ECX,0x2
00464ad8  84d2                      TEST DL,DL
00464ada  75e4                      JNZ 0x00464ac0
00464adc  33c0                      XOR EAX,EAX
00464ade  eb05                      JMP 0x00464ae5
00464ae0  1bc0                      SBB EAX,EAX
00464ae2  83c801                    OR EAX,0x1
00464ae5  85c0                      TEST EAX,EAX
00464ae7  7512                      JNZ 0x00464afb
00464ae9  384634                    CMP byte ptr [ESI + 0x34],AL
00464aec  742e                      JZ 0x00464b1c
00464aee  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00464af4  8d7748                    LEA ESI,[EDI + 0x48]
00464af7  7523                      JNZ 0x00464b1c
00464af9  eb03                      JMP 0x00464afe
00464afb  8d7748                    LEA ESI,[EDI + 0x48]
00464afe  6a01                      PUSH 0x1
00464b00  6864dfb100                PUSH 0xb1df64
00464b05  8bce                      MOV ECX,ESI
00464b07  e8c45afaff                CALL 0x0040a5d0
00464b0c  84c0                      TEST AL,AL
00464b0e  740c                      JZ 0x00464b1c
00464b10  8d4e30                    LEA ECX,[ESI + 0x30]
00464b13  e89856faff                CALL 0x0040a1b0
00464b18  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00464b1c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00464b20  0f8427020000              JZ 0x00464d4d
00464b26  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00464b2d  0f84a3000000              JZ 0x00464bd6
00464b33  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00464b36  83781410                  CMP dword ptr [EAX + 0x14],0x10
00464b3a  7202                      JC 0x00464b3e
00464b3c  8b00                      MOV EAX,dword ptr [EAX]
00464b3e  b964dfb100                MOV ECX,0xb1df64
00464b43  8a10                      MOV DL,byte ptr [EAX]
00464b45  3a11                      CMP DL,byte ptr [ECX]
00464b47  751a                      JNZ 0x00464b63
00464b49  84d2                      TEST DL,DL
00464b4b  7412                      JZ 0x00464b5f
00464b4d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00464b50  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00464b53  750e                      JNZ 0x00464b63
00464b55  83c002                    ADD EAX,0x2
00464b58  83c102                    ADD ECX,0x2
00464b5b  84d2                      TEST DL,DL
00464b5d  75e4                      JNZ 0x00464b43
00464b5f  33c0                      XOR EAX,EAX
00464b61  eb05                      JMP 0x00464b68
00464b63  1bc0                      SBB EAX,EAX
00464b65  83c801                    OR EAX,0x1
00464b68  85c0                      TEST EAX,EAX
00464b6a  755d                      JNZ 0x00464bc9
00464b6c  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00464b74  f30f59874c010000          MULSS XMM0,dword ptr [EDI + 0x14c]
00464b7c  f30f109788000000          MOVSS XMM2,dword ptr [EDI + 0x88]
00464b84  0f28ca                    MOVAPS XMM1,XMM2
00464b87  f30f5cc8                  SUBSS XMM1,XMM0
00464b8b  f30f100560a8ba00          MOVSS XMM0,dword ptr [0x00baa860]
00464b93  0f2fc1                    COMISS XMM0,XMM1
00464b96  0f8663010000              JBE 0x00464cff
00464b9c  0f2fd0                    COMISS XMM2,XMM0
00464b9f  0f825a010000              JC 0x00464cff
00464ba5  51                        PUSH ECX
00464ba6  c704240000803f            MOV dword ptr [ESP],0x3f800000
00464bad  50                        PUSH EAX
00464bae  6a02                      PUSH 0x2
00464bb0  51                        PUSH ECX
00464bb1  c704240000803f            MOV dword ptr [ESP],0x3f800000
00464bb8  8bcf                      MOV ECX,EDI
00464bba  6881000000                PUSH 0x81
00464bbf  e8dc1f2700                CALL 0x006d6ba0
00464bc4  e936010000                JMP 0x00464cff
00464bc9  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00464bd0  0f8529010000              JNZ 0x00464cff
00464bd6  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00464bd9  85c0                      TEST EAX,EAX
00464bdb  740a                      JZ 0x00464be7
00464bdd  83781410                  CMP dword ptr [EAX + 0x14],0x10
00464be1  7209                      JC 0x00464bec
00464be3  8b00                      MOV EAX,dword ptr [EAX]
00464be5  eb05                      JMP 0x00464bec
00464be7  b8eca4b100                MOV EAX,0xb1a4ec
00464bec  b964dfb100                MOV ECX,0xb1df64
00464bf1  8a10                      MOV DL,byte ptr [EAX]
00464bf3  3a11                      CMP DL,byte ptr [ECX]
00464bf5  751a                      JNZ 0x00464c11
00464bf7  84d2                      TEST DL,DL
00464bf9  7412                      JZ 0x00464c0d
00464bfb  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00464bfe  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00464c01  750e                      JNZ 0x00464c11
00464c03  83c002                    ADD EAX,0x2
00464c06  83c102                    ADD ECX,0x2
00464c09  84d2                      TEST DL,DL
00464c0b  75e4                      JNZ 0x00464bf1
00464c0d  33c0                      XOR EAX,EAX
00464c0f  eb05                      JMP 0x00464c16
00464c11  1bc0                      SBB EAX,EAX
00464c13  83c801                    OR EAX,0x1
00464c16  85c0                      TEST EAX,EAX
00464c18  0f85e1000000              JNZ 0x00464cff
00464c1e  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00464c21  85f6                      TEST ESI,ESI
00464c23  745c                      JZ 0x00464c81
00464c25  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00464c29  8bc6                      MOV EAX,ESI
00464c2b  7202                      JC 0x00464c2f
00464c2d  8b06                      MOV EAX,dword ptr [ESI]
00464c2f  b954dfb100                MOV ECX,0xb1df54
00464c34  8a10                      MOV DL,byte ptr [EAX]
00464c36  3a11                      CMP DL,byte ptr [ECX]
00464c38  751a                      JNZ 0x00464c54
00464c3a  84d2                      TEST DL,DL
00464c3c  7412                      JZ 0x00464c50
00464c3e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00464c41  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00464c44  750e                      JNZ 0x00464c54
00464c46  83c002                    ADD EAX,0x2
00464c49  83c102                    ADD ECX,0x2
00464c4c  84d2                      TEST DL,DL
00464c4e  75e4                      JNZ 0x00464c34
00464c50  33c0                      XOR EAX,EAX
00464c52  eb05                      JMP 0x00464c59
00464c54  1bc0                      SBB EAX,EAX
00464c56  83c801                    OR EAX,0x1
00464c59  85c0                      TEST EAX,EAX
00464c5b  7524                      JNZ 0x00464c81
00464c5d  384634                    CMP byte ptr [ESI + 0x34],AL
00464c60  0f8499000000              JZ 0x00464cff
00464c66  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00464c6c  8d7748                    LEA ESI,[EDI + 0x48]
00464c6f  0f858a000000              JNZ 0x00464cff
00464c75  6a01                      PUSH 0x1
00464c77  6854dfb100                PUSH 0xb1df54
00464c7c  e967000000                JMP 0x00464ce8
00464c81  6a01                      PUSH 0x1
00464c83  8d7748                    LEA ESI,[EDI + 0x48]
00464c86  6854dfb100                PUSH 0xb1df54
00464c8b  eb5b                      JMP 0x00464ce8
00464c8d  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00464c90  85f6                      TEST ESI,ESI
00464c92  744a                      JZ 0x00464cde
00464c94  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00464c98  8bc6                      MOV EAX,ESI
00464c9a  7202                      JC 0x00464c9e
00464c9c  8b06                      MOV EAX,dword ptr [ESI]
00464c9e  b944dfb100                MOV ECX,0xb1df44
00464ca3  8a10                      MOV DL,byte ptr [EAX]
00464ca5  3a11                      CMP DL,byte ptr [ECX]
00464ca7  751a                      JNZ 0x00464cc3
00464ca9  84d2                      TEST DL,DL
00464cab  7412                      JZ 0x00464cbf
00464cad  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00464cb0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00464cb3  750e                      JNZ 0x00464cc3
00464cb5  83c002                    ADD EAX,0x2
00464cb8  83c102                    ADD ECX,0x2
00464cbb  84d2                      TEST DL,DL
00464cbd  75e4                      JNZ 0x00464ca3
00464cbf  33c0                      XOR EAX,EAX
00464cc1  eb05                      JMP 0x00464cc8
00464cc3  1bc0                      SBB EAX,EAX
00464cc5  83c801                    OR EAX,0x1
00464cc8  85c0                      TEST EAX,EAX
00464cca  7512                      JNZ 0x00464cde
00464ccc  384634                    CMP byte ptr [ESI + 0x34],AL
00464ccf  742e                      JZ 0x00464cff
00464cd1  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00464cd7  8d7748                    LEA ESI,[EDI + 0x48]
00464cda  7523                      JNZ 0x00464cff
00464cdc  eb03                      JMP 0x00464ce1
00464cde  8d7748                    LEA ESI,[EDI + 0x48]
00464ce1  6a01                      PUSH 0x1
00464ce3  6844dfb100                PUSH 0xb1df44
00464ce8  8bce                      MOV ECX,ESI
00464cea  e8e158faff                CALL 0x0040a5d0
00464cef  84c0                      TEST AL,AL
00464cf1  740c                      JZ 0x00464cff
00464cf3  8d4e30                    LEA ECX,[ESI + 0x30]
00464cf6  e8b554faff                CALL 0x0040a1b0
00464cfb  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00464cff  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00464d03  7448                      JZ 0x00464d4d
00464d05  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00464d0c  753f                      JNZ 0x00464d4d
00464d0e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00464d11  83781410                  CMP dword ptr [EAX + 0x14],0x10
00464d15  7202                      JC 0x00464d19
00464d17  8b00                      MOV EAX,dword ptr [EAX]
00464d19  b97cdfb100                MOV ECX,0xb1df7c
00464d1e  6690                      NOP
00464d20  8a10                      MOV DL,byte ptr [EAX]
00464d22  3a11                      CMP DL,byte ptr [ECX]
00464d24  751a                      JNZ 0x00464d40
00464d26  84d2                      TEST DL,DL
00464d28  7412                      JZ 0x00464d3c
00464d2a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00464d2d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00464d30  750e                      JNZ 0x00464d40
00464d32  83c002                    ADD EAX,0x2
00464d35  83c102                    ADD ECX,0x2
00464d38  84d2                      TEST DL,DL
00464d3a  75e4                      JNZ 0x00464d20
00464d3c  33c0                      XOR EAX,EAX
00464d3e  eb05                      JMP 0x00464d45
00464d40  1bc0                      SBB EAX,EAX
00464d42  83c801                    OR EAX,0x1
00464d45  85c0                      TEST EAX,EAX
00464d47  7504                      JNZ 0x00464d4d
00464d49  b101                      MOV CL,0x1
00464d4b  eb02                      JMP 0x00464d4f
00464d4d  32c9                      XOR CL,CL
00464d4f  83bdacfdffff00            CMP dword ptr [EBP + 0xfffffdac],0x0
00464d56  888deffdffff              MOV byte ptr [EBP + 0xfffffdef],CL
00464d5c  0f8e73070000              JLE 0x004654d5
00464d62  8a87c60b0000              MOV AL,byte ptr [EDI + 0xbc6]
00464d68  0f57c9                    XORPS XMM1,XMM1
00464d6b  f30f1015fca6ba00          MOVSS XMM2,dword ptr [0x00baa6fc]
00464d73  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00464d7b  f30f102584a7ba00          MOVSS XMM4,dword ptr [0x00baa784]
00464d83  8885dbfdffff              MOV byte ptr [EBP + 0xfffffddb],AL
00464d89  0f1f8000000000            NOP dword ptr [EAX]
00464d90  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
00464d96  b867666666                MOV EAX,0x66666667
00464d9b  80bfc40b000002            CMP byte ptr [EDI + 0xbc4],0x2
00464da2  1bff                      SBB EDI,EDI
00464da4  660f6ec1                  MOVD XMM0,ECX
00464da8  83e7f0                    AND EDI,0xfffffff0
00464dab  0f5bc0                    CVTDQ2PS XMM0,XMM0
00464dae  83c713                    ADD EDI,0x13
00464db1  f7e9                      IMUL ECX
00464db3  f30f5ec4                  DIVSS XMM0,XMM4
00464db7  0fb68ddbfdffff            MOVZX ECX,byte ptr [EBP + 0xfffffddb]
00464dbe  d1fa                      SAR EDX,0x1
00464dc0  8bc2                      MOV EAX,EDX
00464dc2  83c203                    ADD EDX,0x3
00464dc5  c1e81f                    SHR EAX,0x1f
00464dc8  03c2                      ADD EAX,EDX
00464dca  898590fdffff              MOV dword ptr [EBP + 0xfffffd90],EAX
00464dd0  8bc1                      MOV EAX,ECX
00464dd2  2bc7                      SUB EAX,EDI
00464dd4  99                        CDQ
00464dd5  f30f5cc1                  SUBSS XMM0,XMM1
00464dd9  f30f5ec4                  DIVSS XMM0,XMM4
00464ddd  f30f5fc1                  MAXSS XMM0,XMM1
00464de1  f30f5dc3                  MINSS XMM0,XMM3
00464de5  f30f59c2                  MULSS XMM0,XMM2
00464de9  f30f58c2                  ADDSS XMM0,XMM2
00464ded  f30f2cf0                  CVTTSS2SI ESI,XMM0
00464df1  f7fe                      IDIV ESI
00464df3  8985a8fdffff              MOV dword ptr [EBP + 0xfffffda8],EAX
00464df9  3bcf                      CMP ECX,EDI
00464dfb  0f86a9060000              JBE 0x004654aa
00464e01  85d2                      TEST EDX,EDX
00464e03  0f85a1060000              JNZ 0x004654aa
00464e09  8bbdc8fdffff              MOV EDI,dword ptr [EBP + 0xfffffdc8]
00464e0f  3b8590fdffff              CMP EAX,dword ptr [EBP + 0xfffffd90]
00464e15  0f8d95060000              JGE 0x004654b0
00464e1b  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00464e21  f30f119de8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM3
00464e29  83f812                    CMP EAX,0x12
00464e2c  750a                      JNZ 0x00464e38
00464e2e  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00464e36  eb0d                      JMP 0x00464e45
00464e38  83f813                    CMP EAX,0x13
00464e3b  7510                      JNZ 0x00464e4d
00464e3d  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00464e45  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
00464e4d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00464e53  8d8de4fdffff              LEA ECX,[EBP + 0xfffffde4]
00464e59  c785e4fdffff0b010000      MOV dword ptr [EBP + 0xfffffde4],0x10b
00464e63  e818194f00                CALL 0x00956780
00464e68  f30f1085e8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde8]
00464e70  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00464e76  83ec08                    SUB ESP,0x8
00464e79  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00464e81  f30f110424                MOVSS dword ptr [ESP],XMM0
00464e86  6a00                      PUSH 0x0
00464e88  6a02                      PUSH 0x2
00464e8a  51                        PUSH ECX
00464e8b  c704240000003f            MOV dword ptr [ESP],0x3f000000
00464e92  ffb5e4fdffff              PUSH dword ptr [EBP + 0xfffffde4]
00464e98  e8938d4c00                CALL 0x0092dc30
00464e9d  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00464ea5  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00464eab  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
00464eb3  83f812                    CMP EAX,0x12
00464eb6  750a                      JNZ 0x00464ec2
00464eb8  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00464ec0  eb0d                      JMP 0x00464ecf
00464ec2  83f813                    CMP EAX,0x13
00464ec5  7510                      JNZ 0x00464ed7
00464ec7  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00464ecf  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
00464ed7  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00464edd  8d8de4fdffff              LEA ECX,[EBP + 0xfffffde4]
00464ee3  c785e4fdffffb2000000      MOV dword ptr [EBP + 0xfffffde4],0xb2
00464eed  e88e184f00                CALL 0x00956780
00464ef2  f30f1085e8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde8]
00464efa  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00464f00  83ec08                    SUB ESP,0x8
00464f03  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00464f0b  f30f110424                MOVSS dword ptr [ESP],XMM0
00464f10  6a00                      PUSH 0x0
00464f12  6a02                      PUSH 0x2
00464f14  51                        PUSH ECX
00464f15  c704240000803f            MOV dword ptr [ESP],0x3f800000
00464f1c  ffb5e4fdffff              PUSH dword ptr [EBP + 0xfffffde4]
00464f22  e8098d4c00                CALL 0x0092dc30
00464f27  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00464f2b  0f85c6010000              JNZ 0x004650f7
00464f31  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00464f39  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00464f3f  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
00464f47  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
00464f4f  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
00464f57  e8d49ffdff                CALL 0x0043ef30
00464f5c  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00464f62  b905000000                MOV ECX,0x5
00464f67  99                        CDQ
00464f68  f7f9                      IDIV ECX
00464f6a  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
00464f72  c745d404000000            MOV dword ptr [EBP + -0x2c],0x4
00464f79  f30f118d58ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM1
00464f81  c78548ffffffcdccccbd      MOV dword ptr [EBP + 0xffffff48],0xbdcccccd
00464f8b  c7854cffffff8fc275bd      MOV dword ptr [EBP + 0xffffff4c],0xbd75c28f
00464f95  c78560ffffff6f12033b      MOV dword ptr [EBP + 0xffffff60],0x3b03126f
00464f9f  83fa04                    CMP EDX,0x4
00464fa2  7715                      JA 0x00464fb9
00464fa4  ff2495ec654600            JMP dword ptr [EDX*0x4 + 0x4665ec]
00464fab  c7459800000400            MOV dword ptr [EBP + -0x68],0x40000
00464fb2  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
00464fb9  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
00464fc1  f30f108ddcfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffddc]
00464fc9  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00464fcf  f30f118dd0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM1
00464fd7  50                        PUSH EAX
00464fd8  6a09                      PUSH 0x9
00464fda  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
00464fe0  f30f1185d4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM0
00464fe8  50                        PUSH EAX
00464fe9  8db73c030000              LEA ESI,[EDI + 0x33c]
00464fef  8bcf                      MOV ECX,EDI
00464ff1  56                        PUSH ESI
00464ff2  e8e9622600                CALL 0x006cb2e0
00464ff7  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00464ffd  b905000000                MOV ECX,0x5
00465002  99                        CDQ
00465003  f7f9                      IDIV ECX
00465005  83fa02                    CMP EDX,0x2
00465008  0f8dc2030000              JGE 0x004653d0
0046500e  83ea00                    SUB EDX,0x0
00465011  0f8487000000              JZ 0x0046509e
00465017  83ea01                    SUB EDX,0x1
0046501a  0f858c000000              JNZ 0x004650ac
00465020  c7459800000400            MOV dword ptr [EBP + -0x68],0x40000
00465027  e979000000                JMP 0x004650a5
0046502c  c7459800000800            MOV dword ptr [EBP + -0x68],0x80000
00465033  e97affffff                JMP 0x00464fb2
00465038  f685a8fdffff01            TEST byte ptr [EBP + 0xfffffda8],0x1
0046503f  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
00465047  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
0046504f  0f856cffffff              JNZ 0x00464fc1
00465055  f30f580d78a2ba00          ADDSS XMM1,dword ptr [0x00baa278]
0046505d  f30f118d58ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM1
00465065  e957ffffff                JMP 0x00464fc1
0046506a  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
00465072  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
00465075  f30f100d34a8ba00          MOVSS XMM1,dword ptr [0x00baa834]
0046507d  814d9800200400            OR dword ptr [EBP + -0x68],0x42000
00465084  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
0046508c  89459c                    MOV dword ptr [EBP + -0x64],EAX
0046508f  c78560ffffffbc74133c      MOV dword ptr [EBP + 0xffffff60],0x3c1374bc
00465099  e92bffffff                JMP 0x00464fc9
0046509e  c7459800000800            MOV dword ptr [EBP + -0x68],0x80000
004650a5  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
004650ac  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004650b4  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
004650ba  50                        PUSH EAX
004650bb  6a09                      PUSH 0x9
004650bd  8d85b8fdffff              LEA EAX,[EBP + 0xfffffdb8]
004650c3  c78560ffffff8fc2753c      MOV dword ptr [EBP + 0xffffff60],0x3c75c28f
004650cd  50                        PUSH EAX
004650ce  56                        PUSH ESI
004650cf  8bcf                      MOV ECX,EDI
004650d1  c7854cffffff9a99193e      MOV dword ptr [EBP + 0xffffff4c],0x3e19999a
004650db  c785b8fdffff00003041      MOV dword ptr [EBP + 0xfffffdb8],0x41300000
004650e5  f30f1185bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM0
004650ed  e8ee612600                CALL 0x006cb2e0
004650f2  e9d9020000                JMP 0x004653d0
004650f7  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004650ff  f30f2cf1                  CVTTSS2SI ESI,XMM1
00465103  81e603000080              AND ESI,0x80000003
00465109  7905                      JNS 0x00465110
0046510b  4e                        DEC ESI
0046510c  83cefc                    OR ESI,0xfffffffc
0046510f  46                        INC ESI
00465110  f30f1015a8a7ba00          MOVSS XMM2,dword ptr [0x00baa7a8]
00465118  83c606                    ADD ESI,0x6
0046511b  660f6ec6                  MOVD XMM0,ESI
0046511f  0f5bc0                    CVTDQ2PS XMM0,XMM0
00465122  f30f5ed0                  DIVSS XMM2,XMM0
00465126  f30f1195b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM2
0046512e  85f6                      TEST ESI,ESI
00465130  0f8e9a020000              JLE 0x004653d0
00465136  0f28c2                    MOVAPS XMM0,XMM2
00465139  f30f58c8                  ADDSS XMM1,XMM0
0046513d  0f28c1                    MOVAPS XMM0,XMM1
00465140  f30f118de4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM1
00465148  e8d383fbff                CALL 0x0041d520
0046514d  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
00465155  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
0046515d  f30f1085e4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde4]
00465165  e8d683fbff                CALL 0x0041d540
0046516a  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
00465172  c68598feffff01            MOV byte ptr [EBP + 0xfffffe98],0x1
00465179  c785acfeffff0000803f      MOV dword ptr [EBP + 0xfffffeac],0x3f800000
00465183  f30f118594fdffff          MOVSS dword ptr [EBP + 0xfffffd94],XMM0
0046518b  f30f1085e0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde0]
00465193  f30f118598fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM0
0046519b  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
004651a2  0f11859cfeffff            MOVUPS xmmword ptr [EBP + 0xfffffe9c],XMM0
004651a9  e8b29d2800                CALL 0x006eef60
004651ae  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
004651b4  660f6ec0                  MOVD XMM0,EAX
004651b8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004651bc  c1e81f                    SHR EAX,0x1f
004651bf  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004651c8  660f5ac0                  CVTPD2PS XMM0,XMM0
004651cc  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004651d4  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
004651dc  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
004651e4  0f280520c8ba00            MOVAPS XMM0,xmmword ptr [0x00bac820]
004651eb  0f1185b4feffff            MOVUPS xmmword ptr [EBP + 0xfffffeb4],XMM0
004651f2  e8791ffaff                CALL 0x00407170
004651f7  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
004651ff  0f57c0                    XORPS XMM0,XMM0
00465202  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00465205  660f1385f0feffff          MOVLPD qword ptr [EBP + 0xfffffef0],XMM0
0046520d  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00465215  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0046521d  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00465225  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0046522d  0f57c0                    XORPS XMM0,XMM0
00465230  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
00465238  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
00465240  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
00465248  c78510ffffff00007ac4      MOV dword ptr [EBP + 0xffffff10],0xc47a0000
00465252  c78514ffffff00000000      MOV dword ptr [EBP + 0xffffff14],0x0
0046525c  660f138518ffffff          MOVLPD qword ptr [EBP + 0xffffff18],XMM0
00465264  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
0046526e  c78524ffffff1e000000      MOV dword ptr [EBP + 0xffffff24],0x1e
00465278  c78528ffffff00000000      MOV dword ptr [EBP + 0xffffff28],0x0
00465282  c7852cffffff00000000      MOV dword ptr [EBP + 0xffffff2c],0x0
0046528c  c68530ffffff00            MOV byte ptr [EBP + 0xffffff30],0x0
00465293  c78534ffffff000080bf      MOV dword ptr [EBP + 0xffffff34],0xbf800000
0046529d  c78538ffffff00000000      MOV dword ptr [EBP + 0xffffff38],0x0
004652a7  c6853cffffff00            MOV byte ptr [EBP + 0xffffff3c],0x0
004652ae  83f801                    CMP EAX,0x1
004652b1  750c                      JNZ 0x004652bf
004652b3  c785a4feffffcdcc4cbd      MOV dword ptr [EBP + 0xfffffea4],0xbd4ccccd
004652bd  eb0f                      JMP 0x004652ce
004652bf  83f802                    CMP EAX,0x2
004652c2  7514                      JNZ 0x004652d8
004652c4  c785a4feffff9a9919be      MOV dword ptr [EBP + 0xfffffea4],0xbe19999a
004652ce  c785a0feffffcdccccbd      MOV dword ptr [EBP + 0xfffffea0],0xbdcccccd
004652d8  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004652e0  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004652e8  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004652ef  7634                      JBE 0x00465325
004652f1  c785f0feffff00000800      MOV dword ptr [EBP + 0xfffffef0],0x80000
004652fb  c785f4feffff00000000      MOV dword ptr [EBP + 0xfffffef4],0x0
00465305  83f801                    CMP EAX,0x1
00465308  750c                      JNZ 0x00465316
0046530a  c785b8feffff4260e53b      MOV dword ptr [EBP + 0xfffffeb8],0x3be56042
00465314  eb0f                      JMP 0x00465325
00465316  83f802                    CMP EAX,0x2
00465319  750a                      JNZ 0x00465325
0046531b  c785b8feffff4260653b      MOV dword ptr [EBP + 0xfffffeb8],0x3b656042
00465325  83bfc00b000003            CMP dword ptr [EDI + 0xbc0],0x3
0046532c  7d31                      JGE 0x0046535f
0046532e  e82d9c2800                CALL 0x006eef60
00465333  33d2                      XOR EDX,EDX
00465335  b905000000                MOV ECX,0x5
0046533a  f7f1                      DIV ECX
0046533c  85d2                      TEST EDX,EDX
0046533e  751f                      JNZ 0x0046535f
00465340  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
00465346  838df0feffff01            OR dword ptr [EBP + 0xfffffef0],0x1
0046534d  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
00465353  c785acfeffff0000c03f      MOV dword ptr [EBP + 0xfffffeac],0x3fc00000
0046535d  eb0a                      JMP 0x00465369
0046535f  c7852cffffff04000000      MOV dword ptr [EBP + 0xffffff2c],0x4
00465369  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00465371  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00465377  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0046537f  8bcf                      MOV ECX,EDI
00465381  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
00465389  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
00465391  50                        PUSH EAX
00465392  6a00                      PUSH 0x0
00465394  8d8594fdffff              LEA EAX,[EBP + 0xfffffd94]
0046539a  50                        PUSH EAX
0046539b  8d8584fdffff              LEA EAX,[EBP + 0xfffffd84]
004653a1  f30f118d84fdffff          MOVSS dword ptr [EBP + 0xfffffd84],XMM1
004653a9  50                        PUSH EAX
004653aa  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
004653b2  e8295f2600                CALL 0x006cb2e0
004653b7  f30f108de4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde4]
004653bf  f30f1095b4fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb4]
004653c7  83ee01                    SUB ESI,0x1
004653ca  0f8566fdffff              JNZ 0x00465136
004653d0  80bfc40b000000            CMP byte ptr [EDI + 0xbc4],0x0
004653d7  7522                      JNZ 0x004653fb
004653d9  6a01                      PUSH 0x1
004653db  6844dfb100                PUSH 0xb1df44
004653e0  8d4f48                    LEA ECX,[EDI + 0x48]
004653e3  e8e851faff                CALL 0x0040a5d0
004653e8  84c0                      TEST AL,AL
004653ea  740f                      JZ 0x004653fb
004653ec  8d4f78                    LEA ECX,[EDI + 0x78]
004653ef  e8bc4dfaff                CALL 0x0040a1b0
004653f4  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004653fb  80bfc40b000002            CMP byte ptr [EDI + 0xbc4],0x2
00465402  0f8285000000              JC 0x0046548d
00465408  8b85a8fdffff              MOV EAX,dword ptr [EBP + 0xfffffda8]
0046540e  40                        INC EAX
0046540f  398590fdffff              CMP dword ptr [EBP + 0xfffffd90],EAX
00465415  0f8572000000              JNZ 0x0046548d
0046541b  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0046541e  85f6                      TEST ESI,ESI
00465420  744a                      JZ 0x0046546c
00465422  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00465426  8bc6                      MOV EAX,ESI
00465428  7202                      JC 0x0046542c
0046542a  8b06                      MOV EAX,dword ptr [ESI]
0046542c  b97cdfb100                MOV ECX,0xb1df7c
00465431  8a10                      MOV DL,byte ptr [EAX]
00465433  3a11                      CMP DL,byte ptr [ECX]
00465435  751a                      JNZ 0x00465451
00465437  84d2                      TEST DL,DL
00465439  7412                      JZ 0x0046544d
0046543b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0046543e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00465441  750e                      JNZ 0x00465451
00465443  83c002                    ADD EAX,0x2
00465446  83c102                    ADD ECX,0x2
00465449  84d2                      TEST DL,DL
0046544b  75e4                      JNZ 0x00465431
0046544d  33c0                      XOR EAX,EAX
0046544f  eb05                      JMP 0x00465456
00465451  1bc0                      SBB EAX,EAX
00465453  83c801                    OR EAX,0x1
00465456  85c0                      TEST EAX,EAX
00465458  7512                      JNZ 0x0046546c
0046545a  384634                    CMP byte ptr [ESI + 0x34],AL
0046545d  742e                      JZ 0x0046548d
0046545f  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00465465  8d7748                    LEA ESI,[EDI + 0x48]
00465468  7523                      JNZ 0x0046548d
0046546a  eb03                      JMP 0x0046546f
0046546c  8d7748                    LEA ESI,[EDI + 0x48]
0046546f  6a01                      PUSH 0x1
00465471  687cdfb100                PUSH 0xb1df7c
00465476  8bce                      MOV ECX,ESI
00465478  e85351faff                CALL 0x0040a5d0
0046547d  84c0                      TEST AL,AL
0046547f  740c                      JZ 0x0046548d
00465481  8d4e30                    LEA ECX,[ESI + 0x30]
00465484  e8274dfaff                CALL 0x0040a1b0
00465489  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0046548d  f30f1015fca6ba00          MOVSS XMM2,dword ptr [0x00baa6fc]
00465495  0f57c9                    XORPS XMM1,XMM1
00465498  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
004654a0  f30f102584a7ba00          MOVSS XMM4,dword ptr [0x00baa784]
004654a8  eb06                      JMP 0x004654b0
004654aa  8bbdc8fdffff              MOV EDI,dword ptr [EBP + 0xfffffdc8]
004654b0  fe87c60b0000              INC byte ptr [EDI + 0xbc6]
004654b6  83adacfdffff01            SUB dword ptr [EBP + 0xfffffdac],0x1
004654bd  8a87c60b0000              MOV AL,byte ptr [EDI + 0xbc6]
004654c3  8885dbfdffff              MOV byte ptr [EBP + 0xfffffddb],AL
004654c9  0f85c1f8ffff              JNZ 0x00464d90
004654cf  8a8deffdffff              MOV CL,byte ptr [EBP + 0xfffffdef]
004654d5  80bfc40b000002            CMP byte ptr [EDI + 0xbc4],0x2
004654dc  730f                      JNC 0x004654ed
004654de  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004654e2  7411                      JZ 0x004654f5
004654e4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004654eb  7408                      JZ 0x004654f5
004654ed  84c9                      TEST CL,CL
004654ef  0f84750f0000              JZ 0x0046646a
004654f5  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004654ff  e85c9a2800                CALL 0x006eef60
00465504  33d2                      XOR EDX,EDX
00465506  b95a000000                MOV ECX,0x5a
0046550b  f7f1                      DIV ECX
0046550d  80c20f                    ADD DL,0xf
00465510  8897c60b0000              MOV byte ptr [EDI + 0xbc6],DL
00465516  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0046551a  0f854a0f0000              JNZ 0x0046646a
00465520  0fb6ca                    MOVZX ECX,DL
00465523  b8abaaaaaa                MOV EAX,0xaaaaaaab
00465528  f7e1                      MUL ECX
0046552a  d1ea                      SHR EDX,0x1
0046552c  8897c60b0000              MOV byte ptr [EDI + 0xbc6],DL
00465532  e9330f0000                JMP 0x0046646a
00465537  83f809                    CMP EAX,0x9
0046553a  0f85b7080000              JNZ 0x00465df7
00465540  80bfc40b000002            CMP byte ptr [EDI + 0xbc4],0x2
00465547  0f821d0f0000              JC 0x0046646a
0046554d  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00465553  85c0                      TEST EAX,EAX
00465555  0f8511010000              JNZ 0x0046566c
0046555b  50                        PUSH EAX
0046555c  8d4f48                    LEA ECX,[EDI + 0x48]
0046555f  688cdfb100                PUSH 0xb1df8c
00465564  e8174efaff                CALL 0x0040a380
00465569  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0046556c  85c0                      TEST EAX,EAX
0046556e  750a                      JNZ 0x0046557a
00465570  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00465578  eb08                      JMP 0x00465582
0046557a  f30f108f88000000          MOVSS XMM1,dword ptr [EDI + 0x88]
00465582  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0046558a  f30f59874c010000          MULSS XMM0,dword ptr [EDI + 0x14c]
00465592  f30f101570a8ba00          MOVSS XMM2,dword ptr [0x00baa870]
0046559a  f30f5cc8                  SUBSS XMM1,XMM0
0046559e  0f2fd1                    COMISS XMM2,XMM1
004655a1  7634                      JBE 0x004655d7
004655a3  85c0                      TEST EAX,EAX
004655a5  7441                      JZ 0x004655e8
004655a7  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
004655af  0f2fc2                    COMISS XMM0,XMM2
004655b2  7223                      JC 0x004655d7
004655b4  51                        PUSH ECX
004655b5  c704240000803f            MOV dword ptr [ESP],0x3f800000
004655bc  6a00                      PUSH 0x0
004655be  6a02                      PUSH 0x2
004655c0  51                        PUSH ECX
004655c1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004655c8  8bcf                      MOV ECX,EDI
004655ca  68d7000000                PUSH 0xd7
004655cf  e8cc152700                CALL 0x006d6ba0
004655d4  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004655d7  85c0                      TEST EAX,EAX
004655d9  740d                      JZ 0x004655e8
004655db  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004655e2  0f85820e0000              JNZ 0x0046646a
004655e8  e873992800                CALL 0x006eef60
004655ed  83e001                    AND EAX,0x1
004655f0  40                        INC EAX
004655f1  69c0e8030000              IMUL EAX,EAX,0x3e8
004655f7  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004655fd  e85e992800                CALL 0x006eef60
00465602  0fb6c0                    MOVZX EAX,AL
00465605  8887c50b0000              MOV byte ptr [EDI + 0xbc5],AL
0046560b  e850992800                CALL 0x006eef60
00465610  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
00465616  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
0046561d  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00465627  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0046562f  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00465637  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046563f  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
00465647  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0046564f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00465657  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046565f  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00465667  e9fe0d0000                JMP 0x0046646a
0046566c  83f801                    CMP EAX,0x1
0046566f  0f85bb020000              JNZ 0x00465930
00465675  6a00                      PUSH 0x0
00465677  8d4f48                    LEA ECX,[EDI + 0x48]
0046567a  68b4dfb100                PUSH 0xb1dfb4
0046567f  e8fc4cfaff                CALL 0x0040a380
00465684  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00465687  85c0                      TEST EAX,EAX
00465689  750a                      JNZ 0x00465695
0046568b  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00465693  eb08                      JMP 0x0046569d
00465695  f30f108f88000000          MOVSS XMM1,dword ptr [EDI + 0x88]
0046569d  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004656a5  0f57d2                    XORPS XMM2,XMM2
004656a8  f30f59874c010000          MULSS XMM0,dword ptr [EDI + 0x14c]
004656b0  f30f5cc8                  SUBSS XMM1,XMM0
004656b4  0f2fd1                    COMISS XMM2,XMM1
004656b7  0f8642020000              JBE 0x004658ff
004656bd  85c0                      TEST EAX,EAX
004656bf  0f844b020000              JZ 0x00465910
004656c5  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
004656cd  0f2fc2                    COMISS XMM0,XMM2
004656d0  0f8229020000              JC 0x004658ff
004656d6  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
004656dd  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004656e7  c785e8fdffff00000000      MOV dword ptr [EBP + 0xfffffde8],0x0
004656f1  e86a982800                CALL 0x006eef60
004656f6  660f6ec0                  MOVD XMM0,EAX
004656fa  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004656fe  c1e81f                    SHR EAX,0x1f
00465701  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046570a  a17816c700                MOV EAX,[0x00c71678]
0046570f  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00465715  660f5ac8                  CVTPD2PS XMM1,XMM0
00465719  f30f105020                MOVSS XMM2,dword ptr [EAX + 0x20]
0046571e  f30f5c5018                SUBSS XMM2,dword ptr [EAX + 0x18]
00465723  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0046572b  f30f59d1                  MULSS XMM2,XMM1
0046572f  f30f585018                ADDSS XMM2,dword ptr [EAX + 0x18]
00465734  f30f1195e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM2
0046573c  e81f982800                CALL 0x006eef60
00465741  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00465747  33d2                      XOR EDX,EDX
00465749  8db1a8ba0100              LEA ESI,[ECX + 0x1baa8]
0046574f  8995c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EDX
00465755  660f6ec0                  MOVD XMM0,EAX
00465759  c1e81f                    SHR EAX,0x1f
0046575c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00465760  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00465769  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
0046576f  f30f10501c                MOVSS XMM2,dword ptr [EAX + 0x1c]
00465774  f30f5c5014                SUBSS XMM2,dword ptr [EAX + 0x14]
00465779  660f5ac8                  CVTPD2PS XMM1,XMM0
0046577d  f30f1085e0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde0]
00465785  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0046578d  f30f59d1                  MULSS XMM2,XMM1
00465791  f30f585014                ADDSS XMM2,dword ptr [EAX + 0x14]
00465796  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0046579e  f30f11973c030000          MOVSS dword ptr [EDI + 0x33c],XMM2
004657a6  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004657a9  2b06                      SUB EAX,dword ptr [ESI]
004657ab  c1f802                    SAR EAX,0x2
004657ae  85c0                      TEST EAX,EAX
004657b0  0f849d000000              JZ 0x00465853
004657b6  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004657b9  8bc1                      MOV EAX,ECX
004657bb  2b06                      SUB EAX,dword ptr [ESI]
004657bd  c1f802                    SAR EAX,0x2
004657c0  85c0                      TEST EAX,EAX
004657c2  7518                      JNZ 0x004657dc
004657c4  68bce6b700                PUSH 0xb7e6bc
004657c9  6a10                      PUSH 0x10
004657cb  e8f0ba5a00                CALL 0x00a112c0
004657d0  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
004657d3  83c408                    ADD ESP,0x8
004657d6  8b95c4fdffff              MOV EDX,dword ptr [EBP + 0xfffffdc4]
004657dc  8b06                      MOV EAX,dword ptr [ESI]
004657de  2bc8                      SUB ECX,EAX
004657e0  c1f902                    SAR ECX,0x2
004657e3  3bd1                      CMP EDX,ECX
004657e5  7303                      JNC 0x004657ea
004657e7  8d0490                    LEA EAX,[EAX + EDX*0x4]
004657ea  8b00                      MOV EAX,dword ptr [EAX]
004657ec  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004657f4  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004657fc  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00465804  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0046580c  f30f59c0                  MULSS XMM0,XMM0
00465810  f30f59c9                  MULSS XMM1,XMM1
00465814  f30f58c1                  ADDSS XMM0,XMM1
00465818  e83302fdff                CALL 0x00435a50
0046581d  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
00465825  0f2fc8                    COMISS XMM1,XMM0
00465828  7755                      JA 0x0046587f
0046582a  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00465830  8b95c4fdffff              MOV EDX,dword ptr [EBP + 0xfffffdc4]
00465836  81c6a8ba0100              ADD ESI,0x1baa8
0046583c  42                        INC EDX
0046583d  8995c4fdffff              MOV dword ptr [EBP + 0xfffffdc4],EDX
00465843  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00465846  2b06                      SUB EAX,dword ptr [ESI]
00465848  c1f802                    SAR EAX,0x2
0046584b  3bd0                      CMP EDX,EAX
0046584d  0f8263ffffff              JC 0x004657b6
00465853  8b85e8fdffff              MOV EAX,dword ptr [EBP + 0xfffffde8]
00465859  40                        INC EAX
0046585a  50                        PUSH EAX
0046585b  6898dfb100                PUSH 0xb1df98
00465860  6a01                      PUSH 0x1
00465862  e859ba5a00                CALL 0x00a112c0
00465867  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0046586d  83c40c                    ADD ESP,0xc
00465870  83f812                    CMP EAX,0x12
00465873  7522                      JNZ 0x00465897
00465875  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0046587d  eb25                      JMP 0x004658a4
0046587f  8b85e8fdffff              MOV EAX,dword ptr [EBP + 0xfffffde8]
00465885  40                        INC EAX
00465886  8985e8fdffff              MOV dword ptr [EBP + 0xfffffde8],EAX
0046588c  83f814                    CMP EAX,0x14
0046588f  0f8c5cfeffff              JL 0x004656f1
00465895  ebc3                      JMP 0x0046585a
00465897  83f813                    CMP EAX,0x13
0046589a  7510                      JNZ 0x004658ac
0046589c  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004658a4  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
004658ac  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004658b2  8d8de4fdffff              LEA ECX,[EBP + 0xfffffde4]
004658b8  c785e4fdffffd6000000      MOV dword ptr [EBP + 0xfffffde4],0xd6
004658c2  e8b90e4f00                CALL 0x00956780
004658c7  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
004658cf  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004658d5  83ec08                    SUB ESP,0x8
004658d8  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004658e0  f30f110424                MOVSS dword ptr [ESP],XMM0
004658e5  6a00                      PUSH 0x0
004658e7  6a02                      PUSH 0x2
004658e9  51                        PUSH ECX
004658ea  c704240000803f            MOV dword ptr [ESP],0x3f800000
004658f1  ffb5e4fdffff              PUSH dword ptr [EBP + 0xfffffde4]
004658f7  e834834c00                CALL 0x0092dc30
004658fc  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004658ff  85c0                      TEST EAX,EAX
00465901  740d                      JZ 0x00465910
00465903  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0046590a  0f855a0b0000              JNZ 0x0046646a
00465910  c787c00b00001b000000      MOV dword ptr [EDI + 0xbc0],0x1b
0046591a  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00465924  c687c60b000000            MOV byte ptr [EDI + 0xbc6],0x0
0046592b  e93a0b0000                JMP 0x0046646a
00465930  33c9                      XOR ECX,ECX
00465932  0f57d2                    XORPS XMM2,XMM2
00465935  0f57f6                    XORPS XMM6,XMM6
00465938  0f57ed                    XORPS XMM5,XMM5
0046593b  898d78fdffff              MOV dword ptr [EBP + 0xfffffd78],ECX
00465941  f30f1195a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM2
00465949  f30f119590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM2
00465951  f30f11b5ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM6
00465959  f30f11addcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM5
00465961  f30f1195c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM2
00465969  f30f1195c8fdffff          MOVSS dword ptr [EBP + 0xfffffdc8],XMM2
00465971  898de0fdffff              MOV dword ptr [EBP + 0xfffffde0],ECX
00465977  398dacfdffff              CMP dword ptr [EBP + 0xfffffdac],ECX
0046597d  0f8ee70a0000              JLE 0x0046646a
00465983  3de8030000                CMP EAX,0x3e8
00465988  0f8ce7000000              JL 0x00465a75
0046598e  3dd0070000                CMP EAX,0x7d0
00465993  0f8d5d000000              JGE 0x004659f6
00465999  8d8818fcffff              LEA ECX,[EAX + 0xfffffc18]
0046599f  f30f102d8ca9ba00          MOVSS XMM5,dword ptr [0x00baa98c]
004659a7  a17816c700                MOV EAX,[0x00c71678]
004659ac  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004659b2  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
004659b7  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
004659bf  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004659c7  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
004659cc  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
004659d4  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
004659dc  f30f10053caeba00          MOVSS XMM0,dword ptr [0x00baae3c]
004659e4  f30f1185c8fdffff          MOVSS dword ptr [EBP + 0xfffffdc8],XMM0
004659ec  f30f100550a9ba00          MOVSS XMM0,dword ptr [0x00baa950]
004659f4  eb5e                      JMP 0x00465a54
004659f6  3db80b0000                CMP EAX,0xbb8
004659fb  0f8d74000000              JGE 0x00465a75
00465a01  f30f102d48aeba00          MOVSS XMM5,dword ptr [0x00baae48]
00465a09  8d8830f8ffff              LEA ECX,[EAX + 0xfffff830]
00465a0f  a17816c700                MOV EAX,[0x00c71678]
00465a14  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00465a1a  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
00465a1f  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
00465a27  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
00465a2c  f30f5c0d1ca8ba00          SUBSS XMM1,dword ptr [0x00baa81c]
00465a34  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
00465a3c  f30f100550a9ba00          MOVSS XMM0,dword ptr [0x00baa950]
00465a44  f30f118d90fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM1
00465a4c  f30f1185c8fdffff          MOVSS dword ptr [EBP + 0xfffffdc8],XMM0
00465a54  0f57f6                    XORPS XMM6,XMM6
00465a57  f30f1185c4fdffff          MOVSS dword ptr [EBP + 0xfffffdc4],XMM0
00465a5f  f30f11b5ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM6
00465a67  f30f11addcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM5
00465a6f  898d78fdffff              MOV dword ptr [EBP + 0xfffffd78],ECX
00465a75  8b97a40b0000              MOV EDX,dword ptr [EDI + 0xba4]
00465a7b  8d8d5cfdffff              LEA ECX,[EBP + 0xfffffd5c]
00465a81  e84a962100                CALL 0x0067f0d0
00465a86  8b8fa40b0000              MOV ECX,dword ptr [EDI + 0xba4]
00465a8c  8bf0                      MOV ESI,EAX
00465a8e  f30f7e05f8f4b100          MOVQ XMM0,qword ptr [0x00b1f4f8]
00465a96  898d3cfdffff              MOV dword ptr [EBP + 0xfffffd3c],ECX
00465a9c  8b0d00f5b100              MOV ECX,dword ptr [0x00b1f500]
00465aa2  898d48fdffff              MOV dword ptr [EBP + 0xfffffd48],ECX
00465aa8  8d8d3cfdffff              LEA ECX,[EBP + 0xfffffd3c]
00465aae  660fd68540fdffff          MOVQ qword ptr [EBP + 0xfffffd40],XMM0
00465ab6  e835363800                CALL 0x007e90f0
00465abb  8b8d3cfdffff              MOV ECX,dword ptr [EBP + 0xfffffd3c]
00465ac1  f30f1095dcfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffddc]
00465ac9  660f6ec1                  MOVD XMM0,ECX
00465acd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00465ad1  c1e91f                    SHR ECX,0x1f
00465ad4  f20f5804cd00cbba00        ADDSD XMM0,qword ptr [ECX*0x8 + 0xbacb00]
00465add  8b8d78fdffff              MOV ECX,dword ptr [EBP + 0xfffffd78]
00465ae3  8bc1                      MOV EAX,ECX
00465ae5  660f5ac8                  CVTPD2PS XMM1,XMM0
00465ae9  f30f590df09fba00          MULSS XMM1,dword ptr [0x00ba9ff0]
00465af1  0f28c1                    MOVAPS XMM0,XMM1
00465af4  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
00465af9  f30f5906                  MULSS XMM0,dword ptr [ESI]
00465afd  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
00465b05  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00465b0d  f30f58d0                  ADDSS XMM2,XMM0
00465b11  f30f1085ccfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdcc]
00465b19  f30f58c1                  ADDSS XMM0,XMM1
00465b1d  f30f1195dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM2
00465b25  f30f1185ccfdffff          MOVSS dword ptr [EBP + 0xfffffdcc],XMM0
00465b2d  2507000080                AND EAX,0x80000007
00465b32  7907                      JNS 0x00465b3b
00465b34  48                        DEC EAX
00465b35  83c8f8                    OR EAX,0xfffffff8
00465b38  83c001                    ADD EAX,0x1
00465b3b  0f8580020000              JNZ 0x00465dc1
00465b41  8bc1                      MOV EAX,ECX
00465b43  f30f1095c8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdc8]
00465b4b  99                        CDQ
00465b4c  83e207                    AND EDX,0x7
00465b4f  c685dbfdffff01            MOV byte ptr [EBP + 0xfffffddb],0x1
00465b56  f30f1195e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM2
00465b5e  8d3402                    LEA ESI,[EDX + EAX*0x1]
00465b61  0fb687c50b0000            MOVZX EAX,byte ptr [EDI + 0xbc5]
00465b68  c1fe03                    SAR ESI,0x3
00465b6b  660f6ec0                  MOVD XMM0,EAX
00465b6f  0f5bc0                    CVTDQ2PS XMM0,XMM0
00465b72  660f6ece                  MOVD XMM1,ESI
00465b76  f30f5e05e4aaba00          DIVSS XMM0,dword ptr [0x00baaae4]
00465b7e  0f5bc9                    CVTDQ2PS XMM1,XMM1
00465b81  f30f59c1                  MULSS XMM0,XMM1
00465b85  f30f108dc4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdc4]
00465b8d  f30f118db4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM1
00465b95  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
00465b9d  0f28c1                    MOVAPS XMM0,XMM1
00465ba0  f30f59c1                  MULSS XMM0,XMM1
00465ba4  0f28ca                    MOVAPS XMM1,XMM2
00465ba7  f30f59ca                  MULSS XMM1,XMM2
00465bab  f30f58c1                  ADDSS XMM0,XMM1
00465baf  e89cfefcff                CALL 0x00435a50
00465bb4  0f28c8                    MOVAPS XMM1,XMM0
00465bb7  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
00465bbe  762f                      JBE 0x00465bef
00465bc0  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00465bc8  f30f5ec1                  DIVSS XMM0,XMM1
00465bcc  0f28c8                    MOVAPS XMM1,XMM0
00465bcf  f30f5985c4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdc4]
00465bd7  f30f598dc8fdffff          MULSS XMM1,dword ptr [EBP + 0xfffffdc8]
00465bdf  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
00465be7  f30f118de4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM1
00465bef  f30f1085e8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde8]
00465bf7  0f28c8                    MOVAPS XMM1,XMM0
00465bfa  f30f5985b4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdb4]
00465c02  f30f598de4fdffff          MULSS XMM1,dword ptr [EBP + 0xfffffde4]
00465c0a  f30f59058ca9ba00          MULSS XMM0,dword ptr [0x00baa98c]
00465c12  f30f590d8ca9ba00          MULSS XMM1,dword ptr [0x00baa98c]
00465c1a  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
00465c22  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
00465c2a  f30f118de4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM1
00465c32  e819fefcff                CALL 0x00435a50
00465c37  f30f108de4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde4]
00465c3f  f30f10a5e8fdffff          MOVSS XMM4,dword ptr [EBP + 0xfffffde8]
00465c47  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00465c4d  6a00                      PUSH 0x0
00465c4f  f30f59c8                  MULSS XMM1,XMM0
00465c53  81c170a60200              ADD ECX,0x2a670
00465c59  6a13                      PUSH 0x13
00465c5b  f30f59e0                  MULSS XMM4,XMM0
00465c5f  68e8030000                PUSH 0x3e8
00465c64  f30f118de4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM1
00465c6c  f30f11a5e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM4
00465c74  e837f32200                CALL 0x00694fb0
00465c79  f30f10addcfdffff          MOVSS XMM5,dword ptr [EBP + 0xfffffddc]
00465c81  f30f10b5ccfdffff          MOVSS XMM6,dword ptr [EBP + 0xfffffdcc]
00465c89  660f6ec6                  MOVD XMM0,ESI
00465c8d  0f5bc0                    CVTDQ2PS XMM0,XMM0
00465c90  898588fdffff              MOV dword ptr [EBP + 0xfffffd88],EAX
00465c96  b8f6ffffff                MOV EAX,0xfffffff6
00465c9b  8985b4fdffff              MOV dword ptr [EBP + 0xfffffdb4],EAX
00465ca1  f30f59e8                  MULSS XMM5,XMM0
00465ca5  f30f59f0                  MULSS XMM6,XMM0
00465ca9  f30f58ad90fdffff          ADDSS XMM5,dword ptr [EBP + 0xfffffd90]
00465cb1  f30f58b5a8fdffff          ADDSS XMM6,dword ptr [EBP + 0xfffffda8]
00465cb9  f30f11ad98fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM5
00465cc1  f30f11b5bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM6
00465cc9  0f1f8000000000            NOP dword ptr [EAX]
00465cd0  f30f1095c8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdc8]
00465cd8  f30f109dc4fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdc4]
00465ce0  660f6ec0                  MOVD XMM0,EAX
00465ce4  a17816c700                MOV EAX,[0x00c71678]
00465ce9  0f5bc0                    CVTDQ2PS XMM0,XMM0
00465cec  51                        PUSH ECX
00465ced  8d8dd0fdffff              LEA ECX,[EBP + 0xfffffdd0]
00465cf3  c7042400002041            MOV dword ptr [ESP],0x41200000
00465cfa  51                        PUSH ECX
00465cfb  f30f59d0                  MULSS XMM2,XMM0
00465cff  f30f59d8                  MULSS XMM3,XMM0
00465d03  f30f58d5                  ADDSS XMM2,XMM5
00465d07  f30f58de                  ADDSS XMM3,XMM6
00465d0b  f30f58ca                  ADDSS XMM1,XMM2
00465d0f  f30f58e3                  ADDSS XMM4,XMM3
00465d13  f30f118dd0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM1
00465d1b  f30f11a5d4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM4
00465d23  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00465d29  e832d63a00                CALL 0x00813360
00465d2e  84c0                      TEST AL,AL
00465d30  744c                      JZ 0x00465d7e
00465d32  c685dbfdffff00            MOV byte ptr [EBP + 0xfffffddb],0x0
00465d39  e822922800                CALL 0x006eef60
00465d3e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00465d44  50                        PUSH EAX
00465d45  6a02                      PUSH 0x2
00465d47  57                        PUSH EDI
00465d48  6840b6c700                PUSH 0xc7b640
00465d4d  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
00465d53  50                        PUSH EAX
00465d54  6a13                      PUSH 0x13
00465d56  68e8030000                PUSH 0x3e8
00465d5b  e8c02dfcff                CALL 0x00428b20
00465d60  8b8d88fdffff              MOV ECX,dword ptr [EBP + 0xfffffd88]
00465d66  ff7148                    PUSH dword ptr [ECX + 0x48]
00465d69  ff7140                    PUSH dword ptr [ECX + 0x40]
00465d6c  ff713c                    PUSH dword ptr [ECX + 0x3c]
00465d6f  51                        PUSH ECX
00465d70  8bc8                      MOV ECX,EAX
00465d72  c7042400002041            MOV dword ptr [ESP],0x41200000
00465d79  e822652400                CALL 0x006ac2a0
00465d7e  8b85b4fdffff              MOV EAX,dword ptr [EBP + 0xfffffdb4]
00465d84  f30f10a5e8fdffff          MOVSS XMM4,dword ptr [EBP + 0xfffffde8]
00465d8c  40                        INC EAX
00465d8d  f30f108de4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde4]
00465d95  f30f10ad98fdffff          MOVSS XMM5,dword ptr [EBP + 0xfffffd98]
00465d9d  f30f10b5bcfdffff          MOVSS XMM6,dword ptr [EBP + 0xfffffdbc]
00465da5  8985b4fdffff              MOV dword ptr [EBP + 0xfffffdb4],EAX
00465dab  83f80a                    CMP EAX,0xa
00465dae  0f8c1cffffff              JL 0x00465cd0
00465db4  80bddbfdffff00            CMP byte ptr [EBP + 0xfffffddb],0x0
00465dbb  0f8510020000              JNZ 0x00465fd1
00465dc1  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00465dc7  3de8030000                CMP EAX,0x3e8
00465dcc  0f8c98060000              JL 0x0046646a
00465dd2  8b8de0fdffff              MOV ECX,dword ptr [EBP + 0xfffffde0]
00465dd8  40                        INC EAX
00465dd9  41                        INC ECX
00465dda  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00465de0  898de0fdffff              MOV dword ptr [EBP + 0xfffffde0],ECX
00465de6  3b8dacfdffff              CMP ECX,dword ptr [EBP + 0xfffffdac]
00465dec  0f8d78060000              JGE 0x0046646a
00465df2  e98cfbffff                JMP 0x00465983
00465df7  83f810                    CMP EAX,0x10
00465dfa  0f852d010000              JNZ 0x00465f2d
00465e00  8a87c40b0000              MOV AL,byte ptr [EDI + 0xbc4]
00465e06  3c01                      CMP AL,0x1
00465e08  0f8581000000              JNZ 0x00465e8f
00465e0e  6a00                      PUSH 0x0
00465e10  8d4f48                    LEA ECX,[EDI + 0x48]
00465e13  68c4dfb100                PUSH 0xb1dfc4
00465e18  e86345faff                CALL 0x0040a380
00465e1d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00465e20  85c0                      TEST EAX,EAX
00465e22  750a                      JNZ 0x00465e2e
00465e24  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00465e2c  eb08                      JMP 0x00465e36
00465e2e  f30f108f88000000          MOVSS XMM1,dword ptr [EDI + 0x88]
00465e36  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00465e3e  f30f59874c010000          MULSS XMM0,dword ptr [EDI + 0x14c]
00465e46  f30f10157ca8ba00          MOVSS XMM2,dword ptr [0x00baa87c]
00465e4e  f30f5cc8                  SUBSS XMM1,XMM0
00465e52  0f2fd1                    COMISS XMM2,XMM1
00465e55  0f86b6000000              JBE 0x00465f11
00465e5b  85c0                      TEST EAX,EAX
00465e5d  0f84ae000000              JZ 0x00465f11
00465e63  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
00465e6b  0f2fc2                    COMISS XMM0,XMM2
00465e6e  0f829d000000              JC 0x00465f11
00465e74  51                        PUSH ECX
00465e75  c704240000803f            MOV dword ptr [ESP],0x3f800000
00465e7c  6a00                      PUSH 0x0
00465e7e  6a02                      PUSH 0x2
00465e80  51                        PUSH ECX
00465e81  c704240000803f            MOV dword ptr [ESP],0x3f800000
00465e88  6a36                      PUSH 0x36
00465e8a  e97b000000                JMP 0x00465f0a
00465e8f  3c02                      CMP AL,0x2
00465e91  0f827a000000              JC 0x00465f11
00465e97  6a00                      PUSH 0x0
00465e99  8d4f48                    LEA ECX,[EDI + 0x48]
00465e9c  68bcdfb100                PUSH 0xb1dfbc
00465ea1  e8da44faff                CALL 0x0040a380
00465ea6  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00465ea9  85c0                      TEST EAX,EAX
00465eab  750a                      JNZ 0x00465eb7
00465ead  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00465eb5  eb08                      JMP 0x00465ebf
00465eb7  f30f108f88000000          MOVSS XMM1,dword ptr [EDI + 0x88]
00465ebf  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00465ec7  f30f59874c010000          MULSS XMM0,dword ptr [EDI + 0x14c]
00465ecf  f30f101560a8ba00          MOVSS XMM2,dword ptr [0x00baa860]
00465ed7  f30f5cc8                  SUBSS XMM1,XMM0
00465edb  0f2fd1                    COMISS XMM2,XMM1
00465ede  7631                      JBE 0x00465f11
00465ee0  85c0                      TEST EAX,EAX
00465ee2  742d                      JZ 0x00465f11
00465ee4  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
00465eec  0f2fc2                    COMISS XMM0,XMM2
00465eef  7220                      JC 0x00465f11
00465ef1  51                        PUSH ECX
00465ef2  c704240000803f            MOV dword ptr [ESP],0x3f800000
00465ef9  6a00                      PUSH 0x0
00465efb  6a02                      PUSH 0x2
00465efd  51                        PUSH ECX
00465efe  c704240000803f            MOV dword ptr [ESP],0x3f800000
00465f05  680a010000                PUSH 0x10a
00465f0a  8bcf                      MOV ECX,EDI
00465f0c  e88f0c2700                CALL 0x006d6ba0
00465f11  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00465f15  0f8445050000              JZ 0x00466460
00465f1b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00465f22  0f8542050000              JNZ 0x0046646a
00465f28  e933050000                JMP 0x00466460
00465f2d  83f806                    CMP EAX,0x6
00465f30  0f8534050000              JNZ 0x0046646a
00465f36  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00465f3c  85c0                      TEST EAX,EAX
00465f3e  0f859c000000              JNZ 0x00465fe0
00465f44  50                        PUSH EAX
00465f45  8d4f48                    LEA ECX,[EDI + 0x48]
00465f48  688cdfb100                PUSH 0xb1df8c
00465f4d  e82e44faff                CALL 0x0040a380
00465f52  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00465f55  85c0                      TEST EAX,EAX
00465f57  750a                      JNZ 0x00465f63
00465f59  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00465f61  eb08                      JMP 0x00465f6b
00465f63  f30f108f88000000          MOVSS XMM1,dword ptr [EDI + 0x88]
00465f6b  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00465f73  f30f59874c010000          MULSS XMM0,dword ptr [EDI + 0x14c]
00465f7b  f30f101570a8ba00          MOVSS XMM2,dword ptr [0x00baa870]
00465f83  f30f5cc8                  SUBSS XMM1,XMM0
00465f87  0f2fd1                    COMISS XMM2,XMM1
00465f8a  7634                      JBE 0x00465fc0
00465f8c  85c0                      TEST EAX,EAX
00465f8e  7441                      JZ 0x00465fd1
00465f90  f30f108788000000          MOVSS XMM0,dword ptr [EDI + 0x88]
00465f98  0f2fc2                    COMISS XMM0,XMM2
00465f9b  7223                      JC 0x00465fc0
00465f9d  51                        PUSH ECX
00465f9e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00465fa5  6a00                      PUSH 0x0
00465fa7  6a02                      PUSH 0x2
00465fa9  51                        PUSH ECX
00465faa  c704240000803f            MOV dword ptr [ESP],0x3f800000
00465fb1  8bcf                      MOV ECX,EDI
00465fb3  68d7000000                PUSH 0xd7
00465fb8  e8e30b2700                CALL 0x006d6ba0
00465fbd  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00465fc0  85c0                      TEST EAX,EAX
00465fc2  740d                      JZ 0x00465fd1
00465fc4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00465fcb  0f8599040000              JNZ 0x0046646a
00465fd1  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00465fdb  e98a040000                JMP 0x0046646a
00465fe0  83f801                    CMP EAX,0x1
00465fe3  0f8581040000              JNZ 0x0046646a
00465fe9  6a00                      PUSH 0x0
00465feb  68b4dfb100                PUSH 0xb1dfb4
00465ff0  8d4f48                    LEA ECX,[EDI + 0x48]
00465ff3  e88843faff                CALL 0x0040a380
00465ff8  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00466000  8d4f48                    LEA ECX,[EDI + 0x48]
00466003  33d2                      XOR EDX,EDX
00466005  e87608ffff                CALL 0x00456880
0046600a  84c0                      TEST AL,AL
0046600c  0f8435040000              JZ 0x00466447
00466012  f30f100548aaba00          MOVSS XMM0,dword ptr [0x00baaa48]
0046601a  8d8fb40b0000              LEA ECX,[EDI + 0xbb4]
00466020  0f2f01                    COMISS XMM0,dword ptr [ECX]
00466023  8d85bcfdffff              LEA EAX,[EBP + 0xfffffdbc]
00466029  c785bcfdffff00001743      MOV dword ptr [EBP + 0xfffffdbc],0x43170000
00466033  0f46c1                    CMOVBE EAX,ECX
00466036  8bcf                      MOV ECX,EDI
00466038  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0046603c  f30f1185e0fdffff          MOVSS dword ptr [EBP + 0xfffffde0],XMM0
00466044  e8f7872500                CALL 0x006be840
00466049  6840b6c700                PUSH 0xc7b640
0046604e  8b8860030000              MOV ECX,dword ptr [EAX + 0x360]
00466054  8b8064030000              MOV EAX,dword ptr [EAX + 0x364]
0046605a  898dd0fdffff              MOV dword ptr [EBP + 0xfffffdd0],ECX
00466060  8d8dd0fdffff              LEA ECX,[EBP + 0xfffffdd0]
00466066  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
0046606c  e8bfa55a00                CALL 0x00a10630
00466071  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
00466079  84c0                      TEST AL,AL
0046607b  a17816c700                MOV EAX,[0x00c71678]
00466080  8bcf                      MOV ECX,EDI
00466082  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00466088  0f848b000000              JZ 0x00466119
0046608e  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
00466096  e8a5872500                CALL 0x006be840
0046609b  8bcf                      MOV ECX,EDI
0046609d  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004660a5  f30f1185bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM0
004660ad  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004660b5  f30f118598fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM0
004660bd  e87e872500                CALL 0x006be840
004660c2  8b8860030000              MOV ECX,dword ptr [EAX + 0x360]
004660c8  8b8064030000              MOV EAX,dword ptr [EAX + 0x364]
004660ce  8985d4fdffff              MOV dword ptr [EBP + 0xfffffdd4],EAX
004660d4  8d855cfdffff              LEA EAX,[EBP + 0xfffffd5c]
004660da  898dd0fdffff              MOV dword ptr [EBP + 0xfffffdd0],ECX
004660e0  8d8dd0fdffff              LEA ECX,[EBP + 0xfffffdd0]
004660e6  50                        PUSH EAX
004660e7  e8449f5a00                CALL 0x00a10030
004660ec  f30f108de0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde0]
004660f4  0f28c1                    MOVAPS XMM0,XMM1
004660f7  51                        PUSH ECX
004660f8  f30f5900                  MULSS XMM0,dword ptr [EAX]
004660fc  f30f5885bcfdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffdbc]
00466104  f30f1185d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM0
0046610c  f30f108588fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd88]
00466114  e960000000                JMP 0x00466179
00466119  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
00466121  e81a872500                CALL 0x006be840
00466126  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0046612e  f30f1185bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM0
00466136  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0046613e  8d855cfdffff              LEA EAX,[EBP + 0xfffffd5c]
00466144  50                        PUSH EAX
00466145  f30f118598fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM0
0046614d  e81e8f2100                CALL 0x0067f070
00466152  f30f108de0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde0]
0046615a  0f28c1                    MOVAPS XMM0,XMM1
0046615d  f30f5900                  MULSS XMM0,dword ptr [EAX]
00466161  f30f5885bcfdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffdbc]
00466169  f30f1185d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM0
00466171  f30f108588fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd88]
00466179  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
0046617e  8bce                      MOV ECX,ESI
00466180  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
00466186  f30f110424                MOVSS dword ptr [ESP],XMM0
0046618b  50                        PUSH EAX
0046618c  f30f588d98fdffff          ADDSS XMM1,dword ptr [EBP + 0xfffffd98]
00466194  8d85b0fdffff              LEA EAX,[EBP + 0xfffffdb0]
0046619a  50                        PUSH EAX
0046619b  f30f118dd4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM1
004661a3  e8e8fefcff                CALL 0x00436090
004661a8  33ff                      XOR EDI,EDI
004661aa  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004661af  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
004661b7  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004661bb  f30f1185e8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM0
004661c3  89bde0fdffff              MOV dword ptr [EBP + 0xfffffde0],EDI
004661c9  e8928d2800                CALL 0x006eef60
004661ce  f30f108de8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffde8]
004661d6  660f6ec0                  MOVD XMM0,EAX
004661da  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004661de  c1e81f                    SHR EAX,0x1f
004661e1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004661ea  660f5ac0                  CVTPD2PS XMM0,XMM0
004661ee  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004661f6  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004661fe  f30f1185bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM0
00466206  f30f1085dcfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffddc]
0046620e  6690                      NOP
00466210  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00466216  33f6                      XOR ESI,ESI
00466218  81c1a8ba0100              ADD ECX,0x1baa8
0046621e  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
00466221  2b01                      SUB EAX,dword ptr [ECX]
00466223  c1f802                    SAR EAX,0x2
00466226  85c0                      TEST EAX,EAX
00466228  0f84b3010000              JZ 0x004663e1
0046622e  6690                      NOP
00466230  56                        PUSH ESI
00466231  e88a305500                CALL 0x009b92c0
00466236  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0046623e  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00466246  f30f5c85e8fdffff          SUBSS XMM0,dword ptr [EBP + 0xfffffde8]
0046624e  f30f5c8ddcfdffff          SUBSS XMM1,dword ptr [EBP + 0xfffffddc]
00466256  f30f59c0                  MULSS XMM0,XMM0
0046625a  f30f59c9                  MULSS XMM1,XMM1
0046625e  f30f58c8                  ADDSS XMM1,XMM0
00466262  f30f100548acba00          MOVSS XMM0,dword ptr [0x00baac48]
0046626a  0f2fc1                    COMISS XMM0,XMM1
0046626d  771e                      JA 0x0046628d
0046626f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00466275  46                        INC ESI
00466276  81c1a8ba0100              ADD ECX,0x1baa8
0046627c  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
0046627f  2b01                      SUB EAX,dword ptr [ECX]
00466281  c1f802                    SAR EAX,0x2
00466284  3bf0                      CMP ESI,EAX
00466286  72a8                      JC 0x00466230
00466288  e964010000                JMP 0x004663f1
0046628d  8bc7                      MOV EAX,EDI
0046628f  2503000080                AND EAX,0x80000003
00466294  7905                      JNS 0x0046629b
00466296  48                        DEC EAX
00466297  83c8fc                    OR EAX,0xfffffffc
0046629a  40                        INC EAX
0046629b  660f6ec0                  MOVD XMM0,EAX
0046629f  0f5bc0                    CVTDQ2PS XMM0,XMM0
004662a2  a17816c700                MOV EAX,[0x00c71678]
004662a7  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004662af  f30f5885bcfdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffdbc]
004662b7  f30f1185e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM0
004662bf  660f6ec7                  MOVD XMM0,EDI
004662c3  8bb800830100              MOV EDI,dword ptr [EAX + 0x18300]
004662c9  8b85c8fdffff              MOV EAX,dword ptr [EBP + 0xfffffdc8]
004662cf  8bc8                      MOV ECX,EAX
004662d1  0f5bc0                    CVTDQ2PS XMM0,XMM0
004662d4  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
004662dc  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
004662e4  f30f580548aaba00          ADDSS XMM0,dword ptr [0x00baaa48]
004662ec  f30f118598fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM0
004662f4  f30f108070030000          MOVSS XMM0,dword ptr [EAX + 0x370]
004662fc  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
00466304  e837852500                CALL 0x006be840
00466309  f30f1085e4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde4]
00466311  8bf0                      MOV ESI,EAX
00466313  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0046631b  f30f1185e4fdffff          MOVSS dword ptr [EBP + 0xfffffde4],XMM0
00466323  e8f871fbff                CALL 0x0041d520
00466328  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
00466330  f30f1085e4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde4]
00466338  e80372fbff                CALL 0x0041d540
0046633d  f30f598598fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffd98]
00466345  8d85d0fdffff              LEA EAX,[EBP + 0xfffffdd0]
0046634b  83ec0c                    SUB ESP,0xc
0046634e  8bcf                      MOV ECX,EDI
00466350  f30f108d88fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd88]
00466358  f30f598d98fdffff          MULSS XMM1,dword ptr [EBP + 0xfffffd98]
00466360  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
00466368  f30f588e40030000          ADDSS XMM1,dword ptr [ESI + 0x340]
00466370  f30f1185d0fdffff          MOVSS dword ptr [EBP + 0xfffffdd0],XMM0
00466378  f30f1085b4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb4]
00466380  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00466386  0f28d8                    MOVAPS XMM3,XMM0
00466389  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
0046638f  f30f110424                MOVSS dword ptr [ESP],XMM0
00466394  50                        PUSH EAX
00466395  8d85a4fdffff              LEA EAX,[EBP + 0xfffffda4]
0046639b  f30f118dd4fdffff          MOVSS dword ptr [EBP + 0xfffffdd4],XMM1
004663a3  50                        PUSH EAX
004663a4  e8a7cb3a00                CALL 0x00812f50
004663a9  8bbde0fdffff              MOV EDI,dword ptr [EBP + 0xfffffde0]
004663af  f30f108da4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda4]
004663b7  47                        INC EDI
004663b8  f30f1085a8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda8]
004663c0  89bde0fdffff              MOV dword ptr [EBP + 0xfffffde0],EDI
004663c6  f30f118de8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM1
004663ce  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
004663d6  83ff14                    CMP EDI,0x14
004663d9  0f8c31feffff              JL 0x00466210
004663df  eb11                      JMP 0x004663f2
004663e1  f30f118de8fdffff          MOVSS dword ptr [EBP + 0xfffffde8],XMM1
004663e9  f30f1185dcfdffff          MOVSS dword ptr [EBP + 0xfffffddc],XMM0
004663f1  47                        INC EDI
004663f2  57                        PUSH EDI
004663f3  68d8dfb100                PUSH 0xb1dfd8
004663f8  6a01                      PUSH 0x1
004663fa  e8c1ae5a00                CALL 0x00a112c0
004663ff  8bbdc8fdffff              MOV EDI,dword ptr [EBP + 0xfffffdc8]
00466405  83c408                    ADD ESP,0x8
00466408  f30f1085e8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde8]
00466410  c704240000803f            MOV dword ptr [ESP],0x3f800000
00466417  6a00                      PUSH 0x0
00466419  6a02                      PUSH 0x2
0046641b  51                        PUSH ECX
0046641c  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00466424  8bcf                      MOV ECX,EDI
00466426  f30f1085dcfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffddc]
0046642e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00466435  68d6000000                PUSH 0xd6
0046643a  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
00466442  e859072700                CALL 0x006d6ba0
00466447  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0046644b  7409                      JZ 0x00466456
0046644d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00466454  7514                      JNZ 0x0046646a
00466456  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00466460  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0046646a  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00466471  0f8449010000              JZ 0x004665c0
00466477  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0046647b  0f853f010000              JNZ 0x004665c0
00466481  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00466487  8d8574fdffff              LEA EAX,[EBP + 0xfffffd74]
0046648d  50                        PUSH EAX
0046648e  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
00466494  f30f104118                MOVSS XMM0,dword ptr [ECX + 0x18]
00466499  f30f580550a9ba00          ADDSS XMM0,dword ptr [0x00baa950]
004664a1  f30f1185bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM0
004664a9  e852c83a00                CALL 0x00812d00
004664ae  f30f101dc4abba00          MOVSS XMM3,dword ptr [0x00baabc4]
004664b6  6a02                      PUSH 0x2
004664b8  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004664bc  f30f11858cfdffff          MOVSS dword ptr [EBP + 0xfffffd8c],XMM0
004664c4  f30f1085bcfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdbc]
004664cc  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
004664d4  c7878403000000000000      MOV dword ptr [EDI + 0x384],0x0
004664de  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
004664e4  c780d012000000000000      MOV dword ptr [EAX + 0x12d0],0x0
004664ee  8d873c030000              LEA EAX,[EDI + 0x33c]
004664f4  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
004664fa  50                        PUSH EAX
004664fb  8d854cfdffff              LEA EAX,[EBP + 0xfffffd4c]
00466501  81c118120000              ADD ECX,0x1218
00466507  50                        PUSH EAX
00466508  e88342fbff                CALL 0x0041a790
0046650d  33c9                      XOR ECX,ECX
0046650f  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00466516  398d58fdffff              CMP dword ptr [EBP + 0xfffffd58],ECX
0046651c  761b                      JBE 0x00466539
0046651e  6690                      NOP
00466520  8b8550fdffff              MOV EAX,dword ptr [EBP + 0xfffffd50]
00466526  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00466529  41                        INC ECX
0046652a  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
00466531  3b8d58fdffff              CMP ECX,dword ptr [EBP + 0xfffffd58]
00466537  72e7                      JC 0x00466520
00466539  e8228a2800                CALL 0x006eef60
0046653e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00466544  50                        PUSH EAX
00466545  6a00                      PUSH 0x0
00466547  57                        PUSH EDI
00466548  6840b6c700                PUSH 0xc7b640
0046654d  8d858cfdffff              LEA EAX,[EBP + 0xfffffd8c]
00466553  50                        PUSH EAX
00466554  6a00                      PUSH 0x0
00466556  6897010000                PUSH 0x197
0046655b  e8c025fcff                CALL 0x00428b20
00466560  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00466566  8b10                      MOV EDX,dword ptr [EAX]
00466568  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0046656f  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00466575  8bc8                      MOV ECX,EAX
00466577  ff520c                    CALL dword ptr [EDX + 0xc]
0046657a  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00466580  81c1bc9f0200              ADD ECX,0x29fbc
00466586  51                        PUSH ECX
00466587  c704240ad7a33d            MOV dword ptr [ESP],0x3da3d70a
0046658e  6a1b                      PUSH 0x1b
00466590  e8dbb83700                CALL 0x007e1e70
00466595  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0046659c  80bd4cfdffff00            CMP byte ptr [EBP + 0xfffffd4c],0x0
004665a3  751b                      JNZ 0x004665c0
004665a5  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004665ac  b101                      MOV CL,0x1
004665ae  8b9550fdffff              MOV EDX,dword ptr [EBP + 0xfffffd50]
004665b4  6a00                      PUSH 0x0
004665b6  6a00                      PUSH 0x0
004665b8  e8f3e25f00                CALL 0x00a648b0
004665bd  83c408                    ADD ESP,0x8
004665c0  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
004665c6  8987b80b0000              MOV dword ptr [EDI + 0xbb8],EAX
004665cc  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004665cf  64890d00000000            MOV dword ptr FS:[0x0],ECX
004665d6  59                        POP ECX
004665d7  5f                        POP EDI
004665d8  5e                        POP ESI
004665d9  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004665dc  33cd                      XOR ECX,EBP
004665de  e8488b6800                CALL 0x00aef12b
004665e3  8be5                      MOV ESP,EBP
004665e5  5d                        POP EBP
004665e6  8be3                      MOV ESP,EBX
004665e8  5b                        POP EBX
004665e9  c3                        RET
