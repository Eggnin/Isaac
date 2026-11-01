; J460 NPC AI 0x005542e0 AI_005542e0
; types=866
; identities=866.0.0,866.0.1,866.1.0
; entry=005542e0
005542e0  53                        PUSH EBX
005542e1  8bdc                      MOV EBX,ESP
005542e3  83ec08                    SUB ESP,0x8
005542e6  83e4f8                    AND ESP,0xfffffff8
005542e9  83c404                    ADD ESP,0x4
005542ec  55                        PUSH EBP
005542ed  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005542f0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005542f4  8bec                      MOV EBP,ESP
005542f6  6aff                      PUSH -0x1
005542f8  68e04baf00                PUSH 0xaf4be0
005542fd  64a100000000              MOV EAX,FS:[0x0]
00554303  50                        PUSH EAX
00554304  53                        PUSH EBX
00554305  81ec80010000              SUB ESP,0x180
0055430b  a1b493bf00                MOV EAX,[0x00bf93b4]
00554310  33c5                      XOR EAX,EBP
00554312  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00554315  56                        PUSH ESI
00554316  57                        PUSH EDI
00554317  50                        PUSH EAX
00554318  8d45f4                    LEA EAX,[EBP + -0xc]
0055431b  64a300000000              MOV FS:[0x0],EAX
00554321  8bf9                      MOV EDI,ECX
00554323  89bda8feffff              MOV dword ptr [EBP + 0xfffffea8],EDI
00554329  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00554331  33f6                      XOR ESI,ESI
00554333  89b5a0feffff              MOV dword ptr [EBP + 0xfffffea0],ESI
00554339  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00554341  2bc8                      SUB ECX,EAX
00554343  8b87c8030000              MOV EAX,dword ptr [EDI + 0x3c8]
00554349  898dacfeffff              MOV dword ptr [EBP + 0xfffffeac],ECX
0055434f  85c0                      TEST EAX,EAX
00554351  7415                      JZ 0x00554368
00554353  83782801                  CMP dword ptr [EAX + 0x28],0x1
00554357  750f                      JNZ 0x00554368
00554359  39b8c01f0000              CMP dword ptr [EAX + 0x1fc0],EDI
0055435f  0f44f0                    CMOVZ ESI,EAX
00554362  89b5a0feffff              MOV dword ptr [EBP + 0xfffffea0],ESI
00554368  8b87740b0000              MOV EAX,dword ptr [EDI + 0xb74]
0055436e  83f801                    CMP EAX,0x1
00554371  0f85b9030000              JNZ 0x00554730
00554377  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0055437c  0f57d2                    XORPS XMM2,XMM2
0055437f  0f2fc2                    COMISS XMM0,XMM2
00554382  760d                      JBE 0x00554391
00554384  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00554387  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
0055438e  89470c                    MOV dword ptr [EDI + 0xc],EAX
00554391  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00554397  83f808                    CMP EAX,0x8
0055439a  7409                      JZ 0x005543a5
0055439c  83f809                    CMP EAX,0x9
0055439f  0f85d9010000              JNZ 0x0055457e
005543a5  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005543a8  85c0                      TEST EAX,EAX
005543aa  0f84ce010000              JZ 0x0055457e
005543b0  80783400                  CMP byte ptr [EAX + 0x34],0x0
005543b4  0f84c4010000              JZ 0x0055457e
005543ba  8b87000f0000              MOV EAX,dword ptr [EDI + 0xf00]
005543c0  8bcf                      MOV ECX,EDI
005543c2  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
005543ca  8987040f0000              MOV dword ptr [EDI + 0xf04],EAX
005543d0  e88b831500                CALL 0x006ac760
005543d5  85c0                      TEST EAX,EAX
005543d7  0f84a1010000              JZ 0x0055457e
005543dd  8b357816c700              MOV ESI,dword ptr [0x00c71678]
005543e3  8bce                      MOV ECX,ESI
005543e5  e8061deeff                CALL 0x004360f0
005543ea  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
005543f0  f30f101d24a9ba00          MOVSS XMM3,dword ptr [0x00baa924]
005543f8  81c118120000              ADD ECX,0x1218
005543fe  6a0a                      PUSH 0xa
00554400  660f6ec0                  MOVD XMM0,EAX
00554404  8d873c030000              LEA EAX,[EDI + 0x33c]
0055440a  0f5bc0                    CVTDQ2PS XMM0,XMM0
0055440d  50                        PUSH EAX
0055440e  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
00554414  50                        PUSH EAX
00554415  f30f580504a8ba00          ADDSS XMM0,dword ptr [0x00baa804]
0055441d  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00554425  e86663ecff                CALL 0x0041a790
0055442a  33f6                      XOR ESI,ESI
0055442c  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00554433  89b5acfeffff              MOV dword ptr [EBP + 0xfffffeac],ESI
00554439  39b58cfeffff              CMP dword ptr [EBP + 0xfffffe8c],ESI
0055443f  0f8607010000              JBE 0x0055454c
00554445  8b8584feffff              MOV EAX,dword ptr [EBP + 0xfffffe84]
0055444b  6a00                      PUSH 0x0
0055444d  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
00554450  e80b811500                CALL 0x006ac560
00554455  84c0                      TEST AL,AL
00554457  0f84a1000000              JZ 0x005544fe
0055445d  8b8584feffff              MOV EAX,dword ptr [EBP + 0xfffffe84]
00554463  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
00554466  898da8feffff              MOV dword ptr [EBP + 0xfffffea8],ECX
0055446c  3bcf                      CMP ECX,EDI
0055446e  0f848a000000              JZ 0x005544fe
00554474  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
0055447a  2500000020                AND EAX,0x20000000
0055447f  83c800                    OR EAX,0x0
00554482  7404                      JZ 0x00554488
00554484  b001                      MOV AL,0x1
00554486  eb02                      JMP 0x0055448a
00554488  32c0                      XOR AL,AL
0055448a  84c0                      TEST AL,AL
0055448c  7570                      JNZ 0x005544fe
0055448e  8b01                      MOV EAX,dword ptr [ECX]
00554490  8d4dc4                    LEA ECX,[EBP + -0x3c]
00554493  57                        PUSH EDI
00554494  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
00554497  e874ceedff                CALL 0x00431310
0055449c  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
005544a4  8d45c4                    LEA EAX,[EBP + -0x3c]
005544a7  6a1e                      PUSH 0x1e
005544a9  50                        PUSH EAX
005544aa  6a00                      PUSH 0x0
005544ac  6800000040                PUSH 0x40000000
005544b1  51                        PUSH ECX
005544b2  8b8da8feffff              MOV ECX,dword ptr [EBP + 0xfffffea8]
005544b8  f30f110424                MOVSS dword ptr [ESP],XMM0
005544bd  ffd6                      CALL ESI
005544bf  8b8584feffff              MOV EAX,dword ptr [EBP + 0xfffffe84]
005544c5  8d4dc4                    LEA ECX,[EBP + -0x3c]
005544c8  8bb5acfeffff              MOV ESI,dword ptr [EBP + 0xfffffeac]
005544ce  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
005544d4  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
005544d7  e834ceedff                CALL 0x00431310
005544dc  6a00                      PUSH 0x0
005544de  51                        PUSH ECX
005544df  c704240000a040            MOV dword ptr [ESP],0x40a00000
005544e6  8d45c4                    LEA EAX,[EBP + -0x3c]
005544e9  6896000000                PUSH 0x96
005544ee  50                        PUSH EAX
005544ef  8bce                      MOV ECX,ESI
005544f1  e88a9d1500                CALL 0x006ae280
005544f6  8bb5acfeffff              MOV ESI,dword ptr [EBP + 0xfffffeac]
005544fc  eb3b                      JMP 0x00554539
005544fe  8b8584feffff              MOV EAX,dword ptr [EBP + 0xfffffe84]
00554504  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
00554507  83792809                  CMP dword ptr [ECX + 0x28],0x9
0055450b  752c                      JNZ 0x00554539
0055450d  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
00554514  7523                      JNZ 0x00554539
00554516  8b8138040000              MOV EAX,dword ptr [ECX + 0x438]
0055451c  2500000080                AND EAX,0x80000000
00554521  83c800                    OR EAX,0x0
00554524  7513                      JNZ 0x00554539
00554526  898138040000              MOV dword ptr [ECX + 0x438],EAX
0055452c  89813c040000              MOV dword ptr [ECX + 0x43c],EAX
00554532  c6817301000001            MOV byte ptr [ECX + 0x173],0x1
00554539  46                        INC ESI
0055453a  89b5acfeffff              MOV dword ptr [EBP + 0xfffffeac],ESI
00554540  3bb58cfeffff              CMP ESI,dword ptr [EBP + 0xfffffe8c]
00554546  0f82f9feffff              JC 0x00554445
0055454c  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00554553  80bd80feffff00            CMP byte ptr [EBP + 0xfffffe80],0x0
0055455a  7522                      JNZ 0x0055457e
0055455c  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00554563  b101                      MOV CL,0x1
00554565  8b9584feffff              MOV EDX,dword ptr [EBP + 0xfffffe84]
0055456b  6a00                      PUSH 0x0
0055456d  6a00                      PUSH 0x0
0055456f  e83c035100                CALL 0x00a648b0
00554574  83c408                    ADD ESP,0x8
00554577  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0055457e  83bf640b000012            CMP dword ptr [EDI + 0xb64],0x12
00554585  0f85c61c0000              JNZ 0x00556251
0055458b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0055458f  0f84bc1c0000              JZ 0x00556251
00554595  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0055459c  0f84af1c0000              JZ 0x00556251
005545a2  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005545a5  8d7778                    LEA ESI,[EDI + 0x78]
005545a8  85c0                      TEST EAX,EAX
005545aa  740a                      JZ 0x005545b6
005545ac  83781410                  CMP dword ptr [EAX + 0x14],0x10
005545b0  7209                      JC 0x005545bb
005545b2  8b00                      MOV EAX,dword ptr [EAX]
005545b4  eb05                      JMP 0x005545bb
005545b6  b8eca4b100                MOV EAX,0xb1a4ec
005545bb  b93ce1b100                MOV ECX,0xb1e13c
005545c0  8a10                      MOV DL,byte ptr [EAX]
005545c2  3a11                      CMP DL,byte ptr [ECX]
005545c4  751a                      JNZ 0x005545e0
005545c6  84d2                      TEST DL,DL
005545c8  7412                      JZ 0x005545dc
005545ca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005545cd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005545d0  750e                      JNZ 0x005545e0
005545d2  83c002                    ADD EAX,0x2
005545d5  83c102                    ADD ECX,0x2
005545d8  84d2                      TEST DL,DL
005545da  75e4                      JNZ 0x005545c0
005545dc  33c0                      XOR EAX,EAX
005545de  eb05                      JMP 0x005545e5
005545e0  1bc0                      SBB EAX,EAX
005545e2  83c801                    OR EAX,0x1
005545e5  85c0                      TEST EAX,EAX
005545e7  0f85641c0000              JNZ 0x00556251
005545ed  68d4d2b100                PUSH 0xb1d2d4
005545f2  8bce                      MOV ECX,ESI
005545f4  e8d767ebff                CALL 0x0040add0
005545f9  84c0                      TEST AL,AL
005545fb  744d                      JZ 0x0055464a
005545fd  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00554603  8d8dbcfeffff              LEA ECX,[EBP + 0xfffffebc]
00554609  c785bcfeffff69020000      MOV dword ptr [EBP + 0xfffffebc],0x269
00554613  e868214000                CALL 0x00956780
00554618  83ec08                    SUB ESP,0x8
0055461b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00554623  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055462a  6a00                      PUSH 0x0
0055462c  6a02                      PUSH 0x2
0055462e  51                        PUSH ECX
0055462f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00554636  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0055463c  ffb5bcfeffff              PUSH dword ptr [EBP + 0xfffffebc]
00554642  e8e9953d00                CALL 0x0092dc30
00554647  8d7778                    LEA ESI,[EDI + 0x78]
0055464a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0055464e  0f84fd1b0000              JZ 0x00556251
00554654  68dcd2b100                PUSH 0xb1d2dc
00554659  8bce                      MOV ECX,ESI
0055465b  e87067ebff                CALL 0x0040add0
00554660  84c0                      TEST AL,AL
00554662  0f84e91b0000              JZ 0x00556251
00554668  e8f3a81900                CALL 0x006eef60
0055466d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00554673  8db73c030000              LEA ESI,[EDI + 0x33c]
00554679  50                        PUSH EAX
0055467a  6a02                      PUSH 0x2
0055467c  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00554682  6840b6c700                PUSH 0xc7b640
00554687  56                        PUSH ESI
00554688  6a7f                      PUSH 0x7f
0055468a  68e8030000                PUSH 0x3e8
0055468f  e88c44edff                CALL 0x00428b20
00554694  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00554698  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
0055469d  8985acfeffff              MOV dword ptr [EBP + 0xfffffeac],EAX
005546a3  8db0bc030000              LEA ESI,[EAX + 0x3bc]
005546a9  f30f118034030000          MOVSS dword ptr [EAX + 0x334],XMM0
005546b1  f30f118838030000          MOVSS dword ptr [EAX + 0x338],XMM1
005546b9  8b0e                      MOV ECX,dword ptr [ESI]
005546bb  85c9                      TEST ECX,ECX
005546bd  7418                      JZ 0x005546d7
005546bf  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
005546c5  89b5bcfeffff              MOV dword ptr [EBP + 0xfffffebc],ESI
005546cb  50                        PUSH EAX
005546cc  81c1cc030000              ADD ECX,0x3cc
005546d2  e839abf7ff                CALL 0x004cf210
005546d7  56                        PUSH ESI
005546d8  8bcf                      MOV ECX,EDI
005546da  893e                      MOV dword ptr [ESI],EDI
005546dc  e80f96f7ff                CALL 0x004cdcf0
005546e1  8b8dacfeffff              MOV ECX,dword ptr [EBP + 0xfffffeac]
005546e7  8b01                      MOV EAX,dword ptr [ECX]
005546e9  ff500c                    CALL dword ptr [EAX + 0xc]
005546ec  8b87c8030000              MOV EAX,dword ptr [EDI + 0x3c8]
005546f2  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
005546f8  85c0                      TEST EAX,EAX
005546fa  0f84511b0000              JZ 0x00556251
00554700  8b00                      MOV EAX,dword ptr [EAX]
00554702  8d4dc4                    LEA ECX,[EBP + -0x3c]
00554705  57                        PUSH EDI
00554706  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
00554709  e802ccedff                CALL 0x00431310
0055470e  6a1e                      PUSH 0x1e
00554710  8d45c4                    LEA EAX,[EBP + -0x3c]
00554713  50                        PUSH EAX
00554714  6a00                      PUSH 0x0
00554716  6800200012                PUSH 0x12002000
0055471b  51                        PUSH ECX
0055471c  8b8dbcfeffff              MOV ECX,dword ptr [EBP + 0xfffffebc]
00554722  c7042400000000            MOV dword ptr [ESP],0x0
00554729  ffd6                      CALL ESI
0055472b  e9211b0000                JMP 0x00556251
00554730  83f803                    CMP EAX,0x3
00554733  0f85c2000000              JNZ 0x005547fb
00554739  6a00                      PUSH 0x0
0055473b  68dcd6c500                PUSH 0xc5d6dc
00554740  68dcd5c500                PUSH 0xc5d5dc
00554745  6a00                      PUSH 0x0
00554747  56                        PUSH ESI
00554748  e864c15900                CALL 0x00af08b1
0055474d  83c414                    ADD ESP,0x14
00554750  85c0                      TEST EAX,EAX
00554752  740d                      JZ 0x00554761
00554754  80b8a920000000            CMP byte ptr [EAX + 0x20a9],0x0
0055475b  0f85f01a0000              JNZ 0x00556251
00554761  a17816c700                MOV EAX,[0x00c71678]
00554766  8b8f7c0b0000              MOV ECX,dword ptr [EDI + 0xb7c]
0055476c  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00554773  7c06                      JL 0x0055477b
00554775  83792801                  CMP dword ptr [ECX + 0x28],0x1
00554779  7411                      JZ 0x0055478c
0055477b  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0055477e  83e80a                    SUB EAX,0xa
00554781  3ddd030000                CMP EAX,0x3dd
00554786  0f87c51a0000              JA 0x00556251
0055478c  51                        PUSH ECX
0055478d  8d8f000f0000              LEA ECX,[EDI + 0xf00]
00554793  e8a8ceedff                CALL 0x00431640
00554798  84c0                      TEST AL,AL
0055479a  0f85b11a0000              JNZ 0x00556251
005547a0  8b8f7c0b0000              MOV ECX,dword ptr [EDI + 0xb7c]
005547a6  e8051b1600                CALL 0x006b62b0
005547ab  50                        PUSH EAX
005547ac  8d8f000f0000              LEA ECX,[EDI + 0xf00]
005547b2  e8b9cdedff                CALL 0x00431570
005547b7  8bbf7c0b0000              MOV EDI,dword ptr [EDI + 0xb7c]
005547bd  8d4dc4                    LEA ECX,[EBP + -0x3c]
005547c0  ffb5a8feffff              PUSH dword ptr [EBP + 0xfffffea8]
005547c6  8b07                      MOV EAX,dword ptr [EDI]
005547c8  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
005547cb  e840cbedff                CALL 0x00431310
005547d0  6a1e                      PUSH 0x1e
005547d2  8d45c4                    LEA EAX,[EBP + -0x3c]
005547d5  50                        PUSH EAX
005547d6  6a00                      PUSH 0x0
005547d8  6a00                      PUSH 0x0
005547da  51                        PUSH ECX
005547db  8bcf                      MOV ECX,EDI
005547dd  c704240000f041            MOV dword ptr [ESP],0x41f00000
005547e4  ffd6                      CALL ESI
005547e6  8b85a8feffff              MOV EAX,dword ptr [EBP + 0xfffffea8]
005547ec  c780800b000000000000      MOV dword ptr [EAX + 0xb80],0x0
005547f6  e9561a0000                JMP 0x00556251
005547fb  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
005547ff  0f85e4180000              JNZ 0x005560e9
00554805  85f6                      TEST ESI,ESI
00554807  7416                      JZ 0x0055481f
00554809  80be1004000000            CMP byte ptr [ESI + 0x410],0x0
00554810  7409                      JZ 0x0055481b
00554812  83be1404000000            CMP dword ptr [ESI + 0x414],0x0
00554819  7e04                      JLE 0x0055481f
0055481b  b101                      MOV CL,0x1
0055481d  eb02                      JMP 0x00554821
0055481f  32c9                      XOR CL,CL
00554821  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00554827  888dbbfeffff              MOV byte ptr [EBP + 0xfffffebb],CL
0055482d  83f808                    CMP EAX,0x8
00554830  7405                      JZ 0x00554837
00554832  83f809                    CMP EAX,0x9
00554835  752d                      JNZ 0x00554864
00554837  84c9                      TEST CL,CL
00554839  7429                      JZ 0x00554864
0055483b  6a00                      PUSH 0x0
0055483d  6854bcb100                PUSH 0xb1bc54
00554842  8d4f48                    LEA ECX,[EDI + 0x48]
00554845  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0055484f  e82c5bebff                CALL 0x0040a380
00554854  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0055485a  c787c00b00003c000000      MOV dword ptr [EDI + 0xbc0],0x3c
00554864  83f80d                    CMP EAX,0xd
00554867  0f846a030000              JZ 0x00554bd7
0055486d  83f805                    CMP EAX,0x5
00554870  0f8461030000              JZ 0x00554bd7
00554876  a17816c700                MOV EAX,[0x00c71678]
0055487b  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00554881  51                        PUSH ECX
00554882  c70424000020c2            MOV dword ptr [ESP],0xc2200000
00554889  51                        PUSH ECX
0055488a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00554890  e8cbea2b00                CALL 0x00813360
00554895  84c0                      TEST AL,AL
00554897  0f843a030000              JZ 0x00554bd7
0055489d  85f6                      TEST ESI,ESI
0055489f  0f8432030000              JZ 0x00554bd7
005548a5  837e2801                  CMP dword ptr [ESI + 0x28],0x1
005548a9  0f8528030000              JNZ 0x00554bd7
005548af  6a00                      PUSH 0x0
005548b1  686b020000                PUSH 0x26b
005548b6  8bce                      MOV ECX,ESI
005548b8  e823be2100                CALL 0x007706e0
005548bd  84c0                      TEST AL,AL
005548bf  0f8412030000              JZ 0x00554bd7
005548c5  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
005548cc  0f8505030000              JNZ 0x00554bd7
005548d2  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
005548d8  85c9                      TEST ECX,ECX
005548da  0f85fe000000              JNZ 0x005549de
005548e0  51                        PUSH ECX
005548e1  6a04                      PUSH 0x4
005548e3  8bcf                      MOV ECX,EDI
005548e5  e8462becff                CALL 0x00417430
005548ea  84c0                      TEST AL,AL
005548ec  0f85e5020000              JNZ 0x00554bd7
005548f2  e869a61900                CALL 0x006eef60
005548f7  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005548ff  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
00554907  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0055490d  50                        PUSH EAX
0055490e  6a01                      PUSH 0x1
00554910  56                        PUSH ESI
00554911  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00554919  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
0055491f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00554927  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0055492f  6840b6c700                PUSH 0xc7b640
00554934  50                        PUSH EAX
00554935  6a00                      PUSH 0x0
00554937  6862030000                PUSH 0x362
0055493c  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00554944  e8d741edff                CALL 0x00428b20
00554949  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0055494f  8bf0                      MOV ESI,EAX
00554951  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00554957  85c9                      TEST ECX,ECX
00554959  741e                      JZ 0x00554979
0055495b  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
00554961  81c1cc030000              ADD ECX,0x3cc
00554967  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
0055496d  50                        PUSH EAX
0055496e  e89da8f7ff                CALL 0x004cf210
00554973  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00554979  8930                      MOV dword ptr [EAX],ESI
0055497b  85f6                      TEST ESI,ESI
0055497d  7408                      JZ 0x00554987
0055497f  50                        PUSH EAX
00554980  8bce                      MOV ECX,ESI
00554982  e86993f7ff                CALL 0x004cdcf0
00554987  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0055498d  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00554993  85c9                      TEST ECX,ECX
00554995  741e                      JZ 0x005549b5
00554997  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
0055499d  81c1cc030000              ADD ECX,0x3cc
005549a3  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
005549a9  50                        PUSH EAX
005549aa  e861a8f7ff                CALL 0x004cf210
005549af  8d86bc030000              LEA EAX,[ESI + 0x3bc]
005549b5  50                        PUSH EAX
005549b6  8bcf                      MOV ECX,EDI
005549b8  8938                      MOV dword ptr [EAX],EDI
005549ba  e83193f7ff                CALL 0x004cdcf0
005549bf  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
005549c5  8bce                      MOV ECX,ESI
005549c7  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
005549ce  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
005549d4  8b06                      MOV EAX,dword ptr [ESI]
005549d6  ff500c                    CALL dword ptr [EAX + 0xc]
005549d9  e9f9010000                JMP 0x00554bd7
005549de  83f910                    CMP ECX,0x10
005549e1  8d4f48                    LEA ECX,[EDI + 0x48]
005549e4  0f85d7010000              JNZ 0x00554bc1
005549ea  6898d5b100                PUSH 0xb1d598
005549ef  e8dc5aebff                CALL 0x0040a4d0
005549f4  84c0                      TEST AL,AL
005549f6  0f84db010000              JZ 0x00554bd7
005549fc  8d4f48                    LEA ECX,[EDI + 0x48]
005549ff  e87c5debff                CALL 0x0040a780
00554a04  83f806                    CMP EAX,0x6
00554a07  0f8dca010000              JGE 0x00554bd7
00554a0d  e84ea51900                CALL 0x006eef60
00554a12  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00554a1a  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
00554a22  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00554a28  50                        PUSH EAX
00554a29  6a01                      PUSH 0x1
00554a2b  56                        PUSH ESI
00554a2c  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00554a34  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
00554a3a  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00554a42  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00554a4a  6840b6c700                PUSH 0xc7b640
00554a4f  50                        PUSH EAX
00554a50  6a00                      PUSH 0x0
00554a52  6862030000                PUSH 0x362
00554a57  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00554a5f  e8bc40edff                CALL 0x00428b20
00554a64  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00554a6a  8bf0                      MOV ESI,EAX
00554a6c  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00554a72  85c9                      TEST ECX,ECX
00554a74  741e                      JZ 0x00554a94
00554a76  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
00554a7c  81c1cc030000              ADD ECX,0x3cc
00554a82  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
00554a88  50                        PUSH EAX
00554a89  e882a7f7ff                CALL 0x004cf210
00554a8e  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00554a94  8930                      MOV dword ptr [EAX],ESI
00554a96  85f6                      TEST ESI,ESI
00554a98  7408                      JZ 0x00554aa2
00554a9a  50                        PUSH EAX
00554a9b  8bce                      MOV ECX,ESI
00554a9d  e84e92f7ff                CALL 0x004cdcf0
00554aa2  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00554aa8  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00554aae  85c9                      TEST ECX,ECX
00554ab0  741e                      JZ 0x00554ad0
00554ab2  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
00554ab8  81c1cc030000              ADD ECX,0x3cc
00554abe  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
00554ac4  50                        PUSH EAX
00554ac5  e846a7f7ff                CALL 0x004cf210
00554aca  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00554ad0  50                        PUSH EAX
00554ad1  8bcf                      MOV ECX,EDI
00554ad3  8938                      MOV dword ptr [EAX],EDI
00554ad5  e81692f7ff                CALL 0x004cdcf0
00554ada  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00554ae0  8bce                      MOV ECX,ESI
00554ae2  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00554ae9  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00554aef  8b06                      MOV EAX,dword ptr [ESI]
00554af1  ff500c                    CALL dword ptr [EAX + 0xc]
00554af4  6a00                      PUSH 0x0
00554af6  6898d5b100                PUSH 0xb1d598
00554afb  8d4e48                    LEA ECX,[ESI + 0x48]
00554afe  e87d58ebff                CALL 0x0040a380
00554b03  8d4f48                    LEA ECX,[EDI + 0x48]
00554b06  e8755cebff                CALL 0x0040a780
00554b0b  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00554b0f  740f                      JZ 0x00554b20
00554b11  660f6ec8                  MOVD XMM1,EAX
00554b15  8d4e78                    LEA ECX,[ESI + 0x78]
00554b18  0f5bc9                    CVTDQ2PS XMM1,XMM1
00554b1b  e8e042ebff                CALL 0x00408e00
00554b20  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00554b26  838e6801000010            OR dword ptr [ESI + 0x168],0x10
00554b2d  8b96ec0b0000              MOV EDX,dword ptr [ESI + 0xbec]
00554b33  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00554b39  8d86ec0b0000              LEA EAX,[ESI + 0xbec]
00554b3f  c7865c01000000000000      MOV dword ptr [ESI + 0x15c],0x0
00554b49  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
00554b4f  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
00554b55  85d2                      TEST EDX,EDX
00554b57  7424                      JZ 0x00554b7d
00554b59  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
00554b5f  8d8acc030000              LEA ECX,[EDX + 0x3cc]
00554b65  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
00554b6b  50                        PUSH EAX
00554b6c  e89fa6f7ff                CALL 0x004cf210
00554b71  8b8d9cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe9c]
00554b77  8d86ec0b0000              LEA EAX,[ESI + 0xbec]
00554b7d  8908                      MOV dword ptr [EAX],ECX
00554b7f  85c9                      TEST ECX,ECX
00554b81  7406                      JZ 0x00554b89
00554b83  50                        PUSH EAX
00554b84  e86791f7ff                CALL 0x004cdcf0
00554b89  c786640b000010000000      MOV dword ptr [ESI + 0xb64],0x10
00554b93  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
00554b9d  c7868401000000000000      MOV dword ptr [ESI + 0x184],0x0
00554ba7  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00554baf  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
00554bb7  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00554bbf  eb16                      JMP 0x00554bd7
00554bc1  6a00                      PUSH 0x0
00554bc3  6884ddb100                PUSH 0xb1dd84
00554bc8  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
00554bd2  e8a957ebff                CALL 0x0040a380
00554bd7  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
00554bdd  85f6                      TEST ESI,ESI
00554bdf  740b                      JZ 0x00554bec
00554be1  8bce                      MOV ECX,ESI
00554be3  e848791500                CALL 0x006ac530
00554be8  84c0                      TEST AL,AL
00554bea  750a                      JNZ 0x00554bf6
00554bec  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
00554bf2  85f6                      TEST ESI,ESI
00554bf4  7421                      JZ 0x00554c17
00554bf6  a17816c700                MOV EAX,[0x00c71678]
00554bfb  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00554c02  7c06                      JL 0x00554c0a
00554c04  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00554c08  740f                      JZ 0x00554c19
00554c0a  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
00554c0d  83e80a                    SUB EAX,0xa
00554c10  3ddd030000                CMP EAX,0x3dd
00554c15  7602                      JBE 0x00554c19
00554c17  33f6                      XOR ESI,ESI
00554c19  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00554c1f  83f810                    CMP EAX,0x10
00554c22  0f874d140000              JA 0x00556075
00554c28  0fb6808c625500            MOVZX EAX,byte ptr [EAX + 0x55628c]
00554c2f  ff248570625500            JMP dword ptr [EAX*0x4 + 0x556270]
00554c36  6a00                      PUSH 0x0
00554c38  6a04                      PUSH 0x4
00554c3a  8bcf                      MOV ECX,EDI
00554c3c  e8ef27ecff                CALL 0x00417430
00554c41  8d4f48                    LEA ECX,[EDI + 0x48]
00554c44  6a00                      PUSH 0x0
00554c46  84c0                      TEST AL,AL
00554c48  0f84d8000000              JZ 0x00554d26
00554c4e  6898d5b100                PUSH 0xb1d598
00554c53  e82857ebff                CALL 0x0040a380
00554c58  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00554c5e  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00554c64  83e1fb                    AND ECX,0xfffffffb
00554c67  83c910                    OR ECX,0x10
00554c6a  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00554c70  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00554c76  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
00554c80  e8dba21900                CALL 0x006eef60
00554c85  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00554c8b  50                        PUSH EAX
00554c8c  6a00                      PUSH 0x0
00554c8e  6a00                      PUSH 0x0
00554c90  6840b6c700                PUSH 0xc7b640
00554c95  8d873c030000              LEA EAX,[EDI + 0x33c]
00554c9b  50                        PUSH EAX
00554c9c  6a01                      PUSH 0x1
00554c9e  ff7728                    PUSH dword ptr [EDI + 0x28]
00554ca1  e87a3eedff                CALL 0x00428b20
00554ca6  8bf0                      MOV ESI,EAX
00554ca8  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
00554cae  8d86c0030000              LEA EAX,[ESI + 0x3c0]
00554cb4  85c9                      TEST ECX,ECX
00554cb6  741e                      JZ 0x00554cd6
00554cb8  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
00554cbe  81c1cc030000              ADD ECX,0x3cc
00554cc4  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
00554cca  50                        PUSH EAX
00554ccb  e840a5f7ff                CALL 0x004cf210
00554cd0  8d86c0030000              LEA EAX,[ESI + 0x3c0]
00554cd6  50                        PUSH EAX
00554cd7  8bcf                      MOV ECX,EDI
00554cd9  8938                      MOV dword ptr [EAX],EDI
00554cdb  e81090f7ff                CALL 0x004cdcf0
00554ce0  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
00554ce6  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
00554cec  85c9                      TEST ECX,ECX
00554cee  741e                      JZ 0x00554d0e
00554cf0  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
00554cf6  81c1cc030000              ADD ECX,0x3cc
00554cfc  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
00554d02  50                        PUSH EAX
00554d03  e808a5f7ff                CALL 0x004cf210
00554d08  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
00554d0e  50                        PUSH EAX
00554d0f  8bce                      MOV ECX,ESI
00554d11  8930                      MOV dword ptr [EAX],ESI
00554d13  e8d88ff7ff                CALL 0x004cdcf0
00554d18  8b06                      MOV EAX,dword ptr [ESI]
00554d1a  8bce                      MOV ECX,ESI
00554d1c  ff500c                    CALL dword ptr [EAX + 0xc]
00554d1f  33c0                      XOR EAX,EAX
00554d21  8d4810                    LEA ECX,[EAX + 0x10]
00554d24  eb14                      JMP 0x00554d3a
00554d26  6854bcb100                PUSH 0xb1bc54
00554d2b  e85056ebff                CALL 0x0040a380
00554d30  b804000000                MOV EAX,0x4
00554d35  b903000000                MOV ECX,0x3
00554d3a  898f640b0000              MOV dword ptr [EDI + 0xb64],ECX
00554d40  898788010000              MOV dword ptr [EDI + 0x188],EAX
00554d46  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00554d50  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00554d56  818f6801000011001080      OR dword ptr [EDI + 0x168],0x80100011
00554d60  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00554d66  a17816c700                MOV EAX,[0x00c71678]
00554d6b  c787180f000005000000      MOV dword ptr [EDI + 0xf18],0x5
00554d75  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00554d7c  57                        PUSH EDI
00554d7d  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00554d83  81c118120000              ADD ECX,0x1218
00554d89  e86267ecff                CALL 0x0041b4f0
00554d8e  e9e2120000                JMP 0x00556075
00554d93  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00554d96  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00554d9e  85c0                      TEST EAX,EAX
00554da0  0f8435050000              JZ 0x005552db
00554da6  80783400                  CMP byte ptr [EAX + 0x34],0x0
00554daa  0f84fa040000              JZ 0x005552aa
00554db0  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00554db8  8b85a0feffff              MOV EAX,dword ptr [EBP + 0xfffffea0]
00554dbe  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00554dc6  85c0                      TEST EAX,EAX
00554dc8  7507                      JNZ 0x00554dd1
00554dca  8bcf                      MOV ECX,EDI
00554dcc  e86f9a1600                CALL 0x006be840
00554dd1  51                        PUSH ECX
00554dd2  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
00554dd8  8bcf                      MOV ECX,EDI
00554dda  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
00554de0  c7042400000000            MOV dword ptr [ESP],0x0
00554de7  50                        PUSH EAX
00554de8  e8539e1600                CALL 0x006bec40
00554ded  f30f1085b0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb0]
00554df5  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00554dfd  0f28d0                    MOVAPS XMM2,XMM0
00554e00  f30f11859cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM0
00554e08  f30f5cd1                  SUBSS XMM2,XMM1
00554e0c  f30f1085b4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb4]
00554e14  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
00554e1c  0f28c8                    MOVAPS XMM1,XMM0
00554e1f  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00554e27  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
00554e2f  f30f119594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM2
00554e37  0f28c1                    MOVAPS XMM0,XMM1
00554e3a  f30f118d70feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM1
00554e42  f30f59c1                  MULSS XMM0,XMM1
00554e46  0f28ca                    MOVAPS XMM1,XMM2
00554e49  f30f59ca                  MULSS XMM1,XMM2
00554e4d  f30f58c1                  ADDSS XMM0,XMM1
00554e51  e8fa0beeff                CALL 0x00435a50
00554e56  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00554e5c  f30f118574feffff          MOVSS dword ptr [EBP + 0xfffffe74],XMM0
00554e64  85c0                      TEST EAX,EAX
00554e66  7e0c                      JLE 0x00554e74
00554e68  2b85acfeffff              SUB EAX,dword ptr [EBP + 0xfffffeac]
00554e6e  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00554e74  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00554e7c  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00554e84  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00554e8c  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00554e94  2bc8                      SUB ECX,EAX
00554e96  018fa40b0000              ADD dword ptr [EDI + 0xba4],ECX
00554e9c  80bdbbfeffff00            CMP byte ptr [EBP + 0xfffffebb],0x0
00554ea3  f30f102d04a9ba00          MOVSS XMM5,dword ptr [0x00baa904]
00554eab  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
00554eb3  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00554ebb  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
00554ec3  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
00554ecb  7408                      JZ 0x00554ed5
00554ecd  f30f102da0a9ba00          MOVSS XMM5,dword ptr [0x00baa9a0]
00554ed5  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00554edb  f30f10a5bcfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffebc]
00554ee3  85c9                      TEST ECX,ECX
00554ee5  0f84b0000000              JZ 0x00554f9b
00554eeb  8b85a8feffff              MOV EAX,dword ptr [EBP + 0xfffffea8]
00554ef1  0f28d4                    MOVAPS XMM2,XMM4
00554ef4  f30f10b740030000          MOVSS XMM6,dword ptr [EDI + 0x340]
00554efc  0f28cc                    MOVAPS XMM1,XMM4
00554eff  f30f10b93c030000          MOVSS XMM7,dword ptr [ECX + 0x33c]
00554f07  0f28de                    MOVAPS XMM3,XMM6
00554f0a  f30f5c9940030000          SUBSS XMM3,dword ptr [ECX + 0x340]
00554f12  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
00554f1a  0f28c6                    MOVAPS XMM0,XMM6
00554f1d  f30f5cd7                  SUBSS XMM2,XMM7
00554f21  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
00554f29  f30f59db                  MULSS XMM3,XMM3
00554f2d  f30f59d2                  MULSS XMM2,XMM2
00554f31  f30f59c9                  MULSS XMM1,XMM1
00554f35  f30f59c0                  MULSS XMM0,XMM0
00554f39  f30f58da                  ADDSS XMM3,XMM2
00554f3d  f30f58c8                  ADDSS XMM1,XMM0
00554f41  0f2fcb                    COMISS XMM1,XMM3
00554f44  7655                      JBE 0x00554f9b
00554f46  f30f108140030000          MOVSS XMM0,dword ptr [ECX + 0x340]
00554f4e  0f28d7                    MOVAPS XMM2,XMM7
00554f51  f30f102d7ca8ba00          MOVSS XMM5,dword ptr [0x00baa87c]
00554f59  0f28ca                    MOVAPS XMM1,XMM2
00554f5c  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
00554f64  f30f5ccc                  SUBSS XMM1,XMM4
00554f68  f30f5cc6                  SUBSS XMM0,XMM6
00554f6c  f30f11959cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM2
00554f74  f30f59c9                  MULSS XMM1,XMM1
00554f78  f30f59c0                  MULSS XMM0,XMM0
00554f7c  f30f58c1                  ADDSS XMM0,XMM1
00554f80  0f2f0578acba00            COMISS XMM0,dword ptr [0x00baac78]
00554f87  761a                      JBE 0x00554fa3
00554f89  f30f10055ca7ba00          MOVSS XMM0,dword ptr [0x00baa75c]
00554f91  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
00554f99  eb08                      JMP 0x00554fa3
00554f9b  f30f1095b0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeb0]
00554fa3  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00554fab  f30f5ce2                  SUBSS XMM4,XMM2
00554faf  f30f5c8598feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffe98]
00554fb7  51                        PUSH ECX
00554fb8  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00554fbe  f30f112c24                MOVSS dword ptr [ESP],XMM5
00554fc3  50                        PUSH EAX
00554fc4  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00554fca  f30f11a5b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM4
00554fd2  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00554fda  e821b14b00                CALL 0x00a10100
00554fdf  f30f108d98feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe98]
00554fe7  f30f10859cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe9c]
00554fef  f30f5800                  ADDSS XMM0,dword ptr [EAX]
00554ff3  f30f584804                ADDSS XMM1,dword ptr [EAX + 0x4]
00554ff8  0f28e0                    MOVAPS XMM4,XMM0
00554ffb  f30f11859cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM0
00555003  f30f5ca5bcfeffff          SUBSS XMM4,dword ptr [EBP + 0xfffffebc]
0055500b  0f28d9                    MOVAPS XMM3,XMM1
0055500e  f30f118d98feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM1
00555016  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
0055501e  0f28c4                    MOVAPS XMM0,XMM4
00555021  f30f59e4                  MULSS XMM4,XMM4
00555025  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
0055502d  0f28cb                    MOVAPS XMM1,XMM3
00555030  f30f590d6ca0ba00          MULSS XMM1,dword ptr [0x00baa06c]
00555038  f30f59db                  MULSS XMM3,XMM3
0055503c  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00555044  f30f118db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM1
0055504c  f30f58e3                  ADDSS XMM4,XMM3
00555050  0f28c4                    MOVAPS XMM0,XMM4
00555053  e8f809eeff                CALL 0x00435a50
00555058  0f57c9                    XORPS XMM1,XMM1
0055505b  f30f1095acfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeac]
00555063  f30f5cc1                  SUBSS XMM0,XMM1
00555067  f30f5cd1                  SUBSS XMM2,XMM1
0055506b  51                        PUSH ECX
0055506c  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00555072  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00555078  f30f5e0594aaba00          DIVSS XMM0,dword ptr [0x00baaa94]
00555080  f30f5fc1                  MAXSS XMM0,XMM1
00555084  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
0055508c  f30f59d0                  MULSS XMM2,XMM0
00555090  f30f58d1                  ADDSS XMM2,XMM1
00555094  f30f111424                MOVSS dword ptr [ESP],XMM2
00555099  50                        PUSH EAX
0055509a  e861b04b00                CALL 0x00a10100
0055509f  f30f109d78feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe78]
005550a7  8bc8                      MOV ECX,EAX
005550a9  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
005550b0  9f                        LAHF
005550b1  f6c444                    TEST AH,0x44
005550b4  7b40                      JNP 0x005550f6
005550b6  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
005550be  f30f105104                MOVSS XMM2,dword ptr [ECX + 0x4]
005550c3  0f28c1                    MOVAPS XMM0,XMM1
005550c6  f30f5901                  MULSS XMM0,dword ptr [ECX]
005550ca  f30f59d1                  MULSS XMM2,XMM1
005550ce  f30f5ec3                  DIVSS XMM0,XMM3
005550d2  f30f5ed3                  DIVSS XMM2,XMM3
005550d6  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
005550de  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
005550e6  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005550ee  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
005550f6  6a00                      PUSH 0x0
005550f8  68dcd6c500                PUSH 0xc5d6dc
005550fd  68dcd5c500                PUSH 0xc5d5dc
00555102  6a00                      PUSH 0x0
00555104  ffb5a0feffff              PUSH dword ptr [EBP + 0xfffffea0]
0055510a  e8a2b75900                CALL 0x00af08b1
0055510f  83c414                    ADD ESP,0x14
00555112  85c0                      TEST EAX,EAX
00555114  740d                      JZ 0x00555123
00555116  80b8a920000000            CMP byte ptr [EAX + 0x20a9],0x0
0055511d  0f85520f0000              JNZ 0x00556075
00555123  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0055512a  0f8f450f0000              JG 0x00556075
00555130  85f6                      TEST ESI,ESI
00555132  7457                      JZ 0x0055518b
00555134  83be640b000003            CMP dword ptr [ESI + 0xb64],0x3
0055513b  0f85340f0000              JNZ 0x00556075
00555141  83bec00b000000            CMP dword ptr [ESI + 0xbc0],0x0
00555148  0f8f270f0000              JG 0x00556075
0055514e  f30f10859cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe9c]
00555156  f30f108d98feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe98]
0055515e  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
00555166  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
0055516e  f30f59c0                  MULSS XMM0,XMM0
00555172  f30f59c9                  MULSS XMM1,XMM1
00555176  f30f58c8                  ADDSS XMM1,XMM0
0055517a  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
00555182  0f2fc1                    COMISS XMM0,XMM1
00555185  0f86ea0e0000              JBE 0x00556075
0055518b  80bdbbfeffff00            CMP byte ptr [EBP + 0xfffffebb],0x0
00555192  0f85dd0e0000              JNZ 0x00556075
00555198  f30f100500aaba00          MOVSS XMM0,dword ptr [0x00baaa00]
005551a0  0f2f8574feffff            COMISS XMM0,dword ptr [EBP + 0xfffffe74]
005551a7  0f86c80e0000              JBE 0x00556075
005551ad  f30f108d70feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe70]
005551b5  f30f109594feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe94]
005551bd  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
005551c4  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
005551cb  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
005551d3  f30f5dca                  MINSS XMM1,XMM2
005551d7  0f2fc1                    COMISS XMM0,XMM1
005551da  0f86950e0000              JBE 0x00556075
005551e0  6a00                      PUSH 0x0
005551e2  6868d6b100                PUSH 0xb1d668
005551e7  8d4f48                    LEA ECX,[EDI + 0x48]
005551ea  e89151ebff                CALL 0x0040a380
005551ef  ffb5a8feffff              PUSH dword ptr [EBP + 0xfffffea8]
005551f5  8bcf                      MOV ECX,EDI
005551f7  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00555201  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0055520b  e810411500                CALL 0x006a9320
00555210  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00555218  51                        PUSH ECX
00555219  c704240000803f            MOV dword ptr [ESP],0x3f800000
00555220  6a00                      PUSH 0x0
00555222  6a02                      PUSH 0x2
00555224  51                        PUSH ECX
00555225  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0055522d  8bcf                      MOV ECX,EDI
0055522f  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00555237  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055523e  6a70                      PUSH 0x70
00555240  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00555248  e853191800                CALL 0x006d6ba0
0055524d  85f6                      TEST ESI,ESI
0055524f  0f84200e0000              JZ 0x00556075
00555255  6a00                      PUSH 0x0
00555257  6868d6b100                PUSH 0xb1d668
0055525c  8d4e48                    LEA ECX,[ESI + 0x48]
0055525f  e81c51ebff                CALL 0x0040a380
00555264  ffb5a8feffff              PUSH dword ptr [EBP + 0xfffffea8]
0055526a  8bce                      MOV ECX,ESI
0055526c  c786640b000008000000      MOV dword ptr [ESI + 0xb64],0x8
00555276  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
00555280  e89b401500                CALL 0x006a9320
00555285  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0055528d  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
00555295  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0055529d  f30f118638030000          MOVSS dword ptr [ESI + 0x338],XMM0
005552a5  e9cb0d0000                JMP 0x00556075
005552aa  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
005552b2  8d4f48                    LEA ECX,[EDI + 0x48]
005552b5  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005552bd  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005552c4  0f85ab0d0000              JNZ 0x00556075
005552ca  6a00                      PUSH 0x0
005552cc  6854bcb100                PUSH 0xb1bc54
005552d1  e8aa50ebff                CALL 0x0040a380
005552d6  e99a0d0000                JMP 0x00556075
005552db  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
005552e3  8d4f48                    LEA ECX,[EDI + 0x48]
005552e6  6a00                      PUSH 0x0
005552e8  6854bcb100                PUSH 0xb1bc54
005552ed  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005552f5  e88650ebff                CALL 0x0040a380
005552fa  e9760d0000                JMP 0x00556075
005552ff  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00555307  8d4f48                    LEA ECX,[EDI + 0x48]
0055530a  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00555312  68dcd2b100                PUSH 0xb1d2dc
00555317  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055531f  e80c5debff                CALL 0x0040b030
00555324  84c0                      TEST AL,AL
00555326  7450                      JZ 0x00555378
00555328  51                        PUSH ECX
00555329  c704240000803f            MOV dword ptr [ESP],0x3f800000
00555330  6a00                      PUSH 0x0
00555332  6a02                      PUSH 0x2
00555334  51                        PUSH ECX
00555335  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055533c  8bcf                      MOV ECX,EDI
0055533e  6831010000                PUSH 0x131
00555343  e858181800                CALL 0x006d6ba0
00555348  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0055534e  6a0a                      PUSH 0xa
00555350  e81be31a00                CALL 0x00703670
00555355  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0055535b  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00555365  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
00555368  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
0055536e  c787100400000c000000      MOV dword ptr [EDI + 0x410],0xc
00555378  68dcd2b100                PUSH 0xb1d2dc
0055537d  8d4f48                    LEA ECX,[EDI + 0x48]
00555380  e80b5debff                CALL 0x0040b090
00555385  84c0                      TEST AL,AL
00555387  0f84ea000000              JZ 0x00555477
0055538d  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00555395  0f57d2                    XORPS XMM2,XMM2
00555398  8bcf                      MOV ECX,EDI
0055539a  e8c1731500                CALL 0x006ac760
0055539f  85c0                      TEST EAX,EAX
005553a1  0f84d0000000              JZ 0x00555477
005553a7  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
005553ae  0f8ec3000000              JLE 0x00555477
005553b4  83bda0feffff00            CMP dword ptr [EBP + 0xfffffea0],0x0
005553bb  7413                      JZ 0x005553d0
005553bd  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
005553c3  e8f808fbff                CALL 0x00505cc0
005553c8  84c0                      TEST AL,AL
005553ca  0f84a7000000              JZ 0x00555477
005553d0  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
005553d6  e8559beeff                CALL 0x0043ef30
005553db  837f3000                  CMP dword ptr [EDI + 0x30],0x0
005553df  c78554ffffff02000000      MOV dword ptr [EBP + 0xffffff54],0x2
005553e9  c78518ffffff80000000      MOV dword ptr [EBP + 0xffffff18],0x80
005553f3  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
005553fd  c785ccfeffff9a99993e      MOV dword ptr [EBP + 0xfffffecc],0x3e99999a
00555407  7436                      JZ 0x0055543f
00555409  0f280560c8ba00            MOVAPS XMM0,xmmword ptr [0x00bac860]
00555410  8d45c0                    LEA EAX,[EBP + -0x40]
00555413  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00555417  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0055541e  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
00555424  0f57c0                    XORPS XMM0,XMM0
00555427  c745e4000000bf            MOV dword ptr [EBP + -0x1c],0xbf000000
0055542e  50                        PUSH EAX
0055542f  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00555433  c745e8cdcc4cbe            MOV dword ptr [EBP + -0x18],0xbe4ccccd
0055543a  e8b11debff                CALL 0x004071f0
0055543f  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
00555445  c785b0feffff00000041      MOV dword ptr [EBP + 0xfffffeb0],0x41000000
0055544f  50                        PUSH EAX
00555450  6a09                      PUSH 0x9
00555452  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
00555458  c785b4feffff00000041      MOV dword ptr [EBP + 0xfffffeb4],0x41000000
00555462  50                        PUSH EAX
00555463  8d873c030000              LEA EAX,[EDI + 0x33c]
00555469  8bcf                      MOV ECX,EDI
0055546b  50                        PUSH EAX
0055546c  e86f5e1700                CALL 0x006cb2e0
00555471  ff8f10040000              DEC dword ptr [EDI + 0x410]
00555477  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0055547b  740d                      JZ 0x0055548a
0055547d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00555484  0f85eb0b0000              JNZ 0x00556075
0055548a  6a00                      PUSH 0x0
0055548c  8bcf                      MOV ECX,EDI
0055548e  e88db71700                CALL 0x006d0c20
00555493  6a00                      PUSH 0x0
00555495  6854bcb100                PUSH 0xb1bc54
0055549a  8d4f48                    LEA ECX,[EDI + 0x48]
0055549d  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005554a7  e8d44eebff                CALL 0x0040a380
005554ac  e9c40b0000                JMP 0x00556075
005554b1  6a00                      PUSH 0x0
005554b3  8d4f48                    LEA ECX,[EDI + 0x48]
005554b6  68c413b600                PUSH 0xb613c4
005554bb  e8c04eebff                CALL 0x0040a380
005554c0  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005554c8  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005554d0  8bb7c8030000              MOV ESI,dword ptr [EDI + 0x3c8]
005554d6  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005554de  85f6                      TEST ESI,ESI
005554e0  7511                      JNZ 0x005554f3
005554e2  8bcf                      MOV ECX,EDI
005554e4  e857931600                CALL 0x006be840
005554e9  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005554f1  8bf0                      MOV ESI,EAX
005554f3  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005554fb  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00555501  51                        PUSH ECX
00555502  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0055550a  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00555510  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
00555518  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00555520  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00555528  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
00555530  c704243333b33f            MOV dword ptr [ESP],0x3fb33333
00555537  50                        PUSH EAX
00555538  f30f590d6ca0ba00          MULSS XMM1,dword ptr [0x00baa06c]
00555540  f30f59156ca0ba00          MULSS XMM2,dword ptr [0x00baa06c]
00555548  f30f118db0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM1
00555550  f30f1195b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM2
00555558  e8a3ab4b00                CALL 0x00a10100
0055555d  6a00                      PUSH 0x0
0055555f  8bcf                      MOV ECX,EDI
00555561  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00555565  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0055556c  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00555574  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00555579  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
0055557f  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00555586  50                        PUSH EAX
00555587  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
0055558f  e81cbfedff                CALL 0x004314b0
00555594  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0055559a  85c0                      TEST EAX,EAX
0055559c  740d                      JZ 0x005555ab
0055559e  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
005555a5  0f84ca0a0000              JZ 0x00556075
005555ab  6a00                      PUSH 0x0
005555ad  6868d6b100                PUSH 0xb1d668
005555b2  8d4f48                    LEA ECX,[EDI + 0x48]
005555b5  e8c64debff                CALL 0x0040a380
005555ba  8d4f48                    LEA ECX,[EDI + 0x48]
005555bd  e89e51ebff                CALL 0x0040a760
005555c2  56                        PUSH ESI
005555c3  8bcf                      MOV ECX,EDI
005555c5  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
005555cf  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
005555d9  e8423d1500                CALL 0x006a9320
005555de  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005555e6  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005555ee  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005555f6  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005555fe  e9720a0000                JMP 0x00556075
00555603  8d4f78                    LEA ECX,[EDI + 0x78]
00555606  e8a51debff                CALL 0x004073b0
0055560b  84c0                      TEST AL,AL
0055560d  0f84ca040000              JZ 0x00555add
00555613  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0055561b  8bcf                      MOV ECX,EDI
0055561d  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00555625  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0055562d  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00555635  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
0055563d  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00555645  f30f5915a4a7ba00          MULSS XMM2,dword ptr [0x00baa7a4]
0055564d  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
00555655  f30f59d1                  MULSS XMM2,XMM1
00555659  f30f59c1                  MULSS XMM0,XMM1
0055565d  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00555665  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
0055566d  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00555675  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0055567d  0f57d2                    XORPS XMM2,XMM2
00555680  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00555688  e8d3701500                CALL 0x006ac760
0055568d  85c0                      TEST EAX,EAX
0055568f  0f84c1020000              JZ 0x00555956
00555695  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0055569d  8b85a0feffff              MOV EAX,dword ptr [EBP + 0xfffffea0]
005556a3  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
005556ab  85c0                      TEST EAX,EAX
005556ad  7424                      JZ 0x005556d3
005556af  8bc8                      MOV ECX,EAX
005556b1  e80aa22700                CALL 0x007cf8c0
005556b6  84c0                      TEST AL,AL
005556b8  7519                      JNZ 0x005556d3
005556ba  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005556c0  8d893ca30200              LEA ECX,[ECX + 0x2a33c]
005556c6  e825073d00                CALL 0x00925df0
005556cb  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
005556d3  f30f10874c030000          MOVSS XMM0,dword ptr [EDI + 0x34c]
005556db  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
005556e1  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
005556e9  8bcf                      MOV ECX,EDI
005556eb  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005556f3  f30f118574feffff          MOVSS dword ptr [EBP + 0xfffffe74],XMM0
005556fb  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00555703  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
0055570b  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
00555713  68c013b600                PUSH 0xb613c0
00555718  50                        PUSH EAX
00555719  f30f118570feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM0
00555721  e8ca131600                CALL 0x006b6af0
00555726  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
0055572e  f30f108d74feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe74]
00555736  f30f588570feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe70]
0055573e  f30f588d78feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffe78]
00555746  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
0055574b  f30f5808                  ADDSS XMM1,dword ptr [EAX]
0055574f  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
00555757  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
0055575f  e8fc971900                CALL 0x006eef60
00555764  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0055576c  8bf0                      MOV ESI,EAX
0055576e  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
00555776  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0055577e  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
00555786  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
0055578e  f30f119594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM2
00555796  f30f118db0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM1
0055579e  e8bd971900                CALL 0x006eef60
005557a3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005557a9  56                        PUSH ESI
005557aa  6a00                      PUSH 0x0
005557ac  660f6ec0                  MOVD XMM0,EAX
005557b0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005557b4  c1e81f                    SHR EAX,0x1f
005557b7  57                        PUSH EDI
005557b8  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005557c1  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
005557c7  50                        PUSH EAX
005557c8  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
005557ce  50                        PUSH EAX
005557cf  660f5ac8                  CVTPD2PS XMM1,XMM0
005557d3  6a3b                      PUSH 0x3b
005557d5  68e8030000                PUSH 0x3e8
005557da  f30f100574adba00          MOVSS XMM0,dword ptr [0x00baad74]
005557e2  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005557ea  f30f590da4a7ba00          MULSS XMM1,dword ptr [0x00baa7a4]
005557f2  f30f5cc1                  SUBSS XMM0,XMM1
005557f6  f30f588594feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe94]
005557fe  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00555806  e81533edff                CALL 0x00428b20
0055580b  51                        PUSH ECX
0055580c  6a02                      PUSH 0x2
0055580e  8d8d7cfeffff              LEA ECX,[EBP + 0xfffffe7c]
00555814  8bf0                      MOV ESI,EAX
00555816  e8b5bc4b00                CALL 0x00a114d0
0055581b  8d8d7cfeffff              LEA ECX,[EBP + 0xfffffe7c]
00555821  51                        PUSH ECX
00555822  51                        PUSH ECX
00555823  6a00                      PUSH 0x0
00555825  8d4e48                    LEA ECX,[ESI + 0x48]
00555828  e8f359ebff                CALL 0x0040b220
0055582d  83c404                    ADD ESP,0x4
00555830  8d4878                    LEA ECX,[EAX + 0x78]
00555833  e888bd4b00                CALL 0x00a115c0
00555838  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0055583c  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00555844  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
0055584c  51                        PUSH ECX
0055584d  f30f110424                MOVSS dword ptr [ESP],XMM0
00555852  7415                      JZ 0x00555869
00555854  f30f101daca1ba00          MOVSS XMM3,dword ptr [0x00baa1ac]
0055585c  8d4dc0                    LEA ECX,[EBP + -0x40]
0055585f  f30f101598a1ba00          MOVSS XMM2,dword ptr [0x00baa198]
00555867  eb16                      JMP 0x0055587f
00555869  f30f101d98a1ba00          MOVSS XMM3,dword ptr [0x00baa198]
00555871  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
00555877  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
0055587f  e86ce0ecff                CALL 0x004238f0
00555884  50                        PUSH EAX
00555885  51                        PUSH ECX
00555886  6a00                      PUSH 0x0
00555888  8d4e48                    LEA ECX,[ESI + 0x48]
0055588b  e89059ebff                CALL 0x0040b220
00555890  83c404                    ADD ESP,0x4
00555893  8d4848                    LEA ECX,[EAX + 0x48]
00555896  e85519ebff                CALL 0x004071f0
0055589b  e8c0961900                CALL 0x006eef60
005558a0  660f6ec0                  MOVD XMM0,EAX
005558a4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005558a8  c1e81f                    SHR EAX,0x1f
005558ab  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005558b4  660f5ac0                  CVTPD2PS XMM0,XMM0
005558b8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005558c0  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
005558c8  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
005558d0  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
005558d8  e883961900                CALL 0x006eef60
005558dd  33d2                      XOR EDX,EDX
005558df  b90a000000                MOV ECX,0xa
005558e4  f7f1                      DIV ECX
005558e6  03d1                      ADD EDX,ECX
005558e8  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
005558ee  899660040000              MOV dword ptr [ESI + 0x460],EDX
005558f4  e867961900                CALL 0x006eef60
005558f9  660f6ec0                  MOVD XMM0,EAX
005558fd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00555901  c1e81f                    SHR EAX,0x1f
00555904  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055590d  660f5ac8                  CVTPD2PS XMM1,XMM0
00555911  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00555919  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
00555921  f30f580d80a2ba00          ADDSS XMM1,dword ptr [0x00baa280]
00555929  0f28c1                    MOVAPS XMM0,XMM1
0055592c  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00555934  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0055593c  c7865403000030f8ffff      MOV dword ptr [ESI + 0x354],0xfffff830
00555946  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0055594e  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00555956  8b8dacfeffff              MOV ECX,dword ptr [EBP + 0xfffffeac]
0055595c  8db73c030000              LEA ESI,[EDI + 0x33c]
00555962  018f10040000              ADD dword ptr [EDI + 0x410],ECX
00555968  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
0055596e  51                        PUSH ECX
0055596f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00555975  c704240000c8c2            MOV dword ptr [ESP],0xc2c80000
0055597c  56                        PUSH ESI
0055597d  50                        PUSH EAX
0055597e  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00555984  e80707eeff                CALL 0x00436090
00555989  56                        PUSH ESI
0055598a  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00555990  e89bac4b00                CALL 0x00a10630
00555995  84c0                      TEST AL,AL
00555997  746e                      JZ 0x00555a07
00555999  f30f1085b0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb0]
005559a1  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
005559a7  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005559af  50                        PUSH EAX
005559b0  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
005559b6  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
005559be  f30f1085b4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb4]
005559c6  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005559ce  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
005559d6  e855a64b00                CALL 0x00a10030
005559db  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
005559e3  c685bbfeffff01            MOV byte ptr [EBP + 0xfffffebb],0x1
005559ea  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
005559ef  f30f5900                  MULSS XMM0,dword ptr [EAX]
005559f3  f30f598f38030000          MULSS XMM1,dword ptr [EDI + 0x338]
005559fb  f30f58c8                  ADDSS XMM1,XMM0
005559ff  0f57c0                    XORPS XMM0,XMM0
00555a02  0f2fc1                    COMISS XMM0,XMM1
00555a05  7707                      JA 0x00555a0e
00555a07  c685bbfeffff00            MOV byte ptr [EBP + 0xfffffebb],0x0
00555a0e  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00555a15  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00555a1b  7558                      JNZ 0x00555a75
00555a1d  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
00555a23  e8b8e22b00                CALL 0x00813ce0
00555a28  83f803                    CMP EAX,0x3
00555a2b  7c48                      JL 0x00555a75
00555a2d  8b97640b0000              MOV EDX,dword ptr [EDI + 0xb64]
00555a33  b80c000000                MOV EAX,0xc
00555a38  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00555a3e  83fa09                    CMP EDX,0x9
00555a41  c78594feffff3c000000      MOV dword ptr [EBP + 0xfffffe94],0x3c
00555a4b  0f448594feffff            CMOVZ EAX,dword ptr [EBP + 0xfffffe94]
00555a52  3bc8                      CMP ECX,EAX
00555a54  7f1f                      JG 0x00555a75
00555a56  83f90c                    CMP ECX,0xc
00555a59  0f8e16060000              JLE 0x00556075
00555a5f  83fa09                    CMP EDX,0x9
00555a62  0f850d060000              JNZ 0x00556075
00555a68  80bdbbfeffff00            CMP byte ptr [EBP + 0xfffffebb],0x0
00555a6f  0f8400060000              JZ 0x00556075
00555a75  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
00555a7b  e860e22b00                CALL 0x00813ce0
00555a80  83f803                    CMP EAX,0x3
00555a83  7d30                      JGE 0x00555ab5
00555a85  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00555a8d  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00555a95  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00555a9d  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00555aa5  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00555aad  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00555ab5  6a00                      PUSH 0x0
00555ab7  6818d4b100                PUSH 0xb1d418
00555abc  8d4f48                    LEA ECX,[EDI + 0x48]
00555abf  e8bc48ebff                CALL 0x0040a380
00555ac4  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00555ace  c787c00b00005a000000      MOV dword ptr [EDI + 0xbc0],0x5a
00555ad8  e998050000                JMP 0x00556075
00555add  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00555ae3  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00555ae9  e8f2e12b00                CALL 0x00813ce0
00555aee  83f803                    CMP EAX,0x3
00555af1  7d28                      JGE 0x00555b1b
00555af3  6a00                      PUSH 0x0
00555af5  6818d4b100                PUSH 0xb1d418
00555afa  8d4f48                    LEA ECX,[EDI + 0x48]
00555afd  e87e48ebff                CALL 0x0040a380
00555b02  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00555b0c  c787c00b00001e000000      MOV dword ptr [EDI + 0xbc0],0x1e
00555b16  e95a050000                JMP 0x00556075
00555b1b  83bfc403000000            CMP dword ptr [EDI + 0x3c4],0x0
00555b22  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00555b2a  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00555b32  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00555b3a  0f849b000000              JZ 0x00555bdb
00555b40  51                        PUSH ECX
00555b41  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00555b47  c7042400000000            MOV dword ptr [ESP],0x0
00555b4e  50                        PUSH EAX
00555b4f  8bcf                      MOV ECX,EDI
00555b51  e8ea901600                CALL 0x006bec40
00555b56  6a00                      PUSH 0x0
00555b58  51                        PUSH ECX
00555b59  c70424cdcc4c3e            MOV dword ptr [ESP],0x3e4ccccd
00555b60  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00555b66  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00555b6a  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00555b6f  0f28c1                    MOVAPS XMM0,XMM1
00555b72  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00555b7a  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00555b80  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
00555b88  50                        PUSH EAX
00555b89  f30f1195a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM2
00555b91  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
00555b99  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00555ba1  0f28c2                    MOVAPS XMM0,XMM2
00555ba4  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00555bac  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
00555bb4  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00555bbc  e83fa54b00                CALL 0x00a10100
00555bc1  50                        PUSH EAX
00555bc2  8bcf                      MOV ECX,EDI
00555bc4  e8e7b8edff                CALL 0x004314b0
00555bc9  f30f108dbcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffebc]
00555bd1  f30f1095a8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffea8]
00555bd9  eb27                      JMP 0x00555c02
00555bdb  8bcf                      MOV ECX,EDI
00555bdd  e85e8c1600                CALL 0x006be840
00555be2  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00555bea  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
00555bf2  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
00555bfa  f30f1195a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM2
00555c02  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00555c08  85c0                      TEST EAX,EAX
00555c0a  0f88f9000000              JS 0x00555d09
00555c10  8b8dacfeffff              MOV ECX,dword ptr [EBP + 0xfffffeac]
00555c16  03c1                      ADD EAX,ECX
00555c18  898710040000              MOV dword ptr [EDI + 0x410],EAX
00555c1e  83f80e                    CMP EAX,0xe
00555c21  7e64                      JLE 0x00555c87
00555c23  6840b6c700                PUSH 0xc7b640
00555c28  8d8f34030000              LEA ECX,[EDI + 0x334]
00555c2e  e8cda94b00                CALL 0x00a10600
00555c33  84c0                      TEST AL,AL
00555c35  7450                      JZ 0x00555c87
00555c37  0f28c1                    MOVAPS XMM0,XMM1
00555c3a  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00555c40  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00555c48  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00555c4e  50                        PUSH EAX
00555c4f  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00555c57  0f28c2                    MOVAPS XMM0,XMM2
00555c5a  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00555c62  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00555c6a  e8c1a34b00                CALL 0x00a10030
00555c6f  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
00555c76  8b08                      MOV ECX,dword ptr [EAX]
00555c78  898f34030000              MOV dword ptr [EDI + 0x334],ECX
00555c7e  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00555c81  898738030000              MOV dword ptr [EDI + 0x338],EAX
00555c87  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00555c8f  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00555c95  f30f5c85bcfeffff          SUBSS XMM0,dword ptr [EBP + 0xfffffebc]
00555c9d  51                        PUSH ECX
00555c9e  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00555ca5  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00555cab  50                        PUSH EAX
00555cac  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00555cb4  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00555cbc  f30f5c85a8feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffea8]
00555cc4  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00555ccc  e82fa44b00                CALL 0x00a10100
00555cd1  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00555cd9  0f28c1                    MOVAPS XMM0,XMM1
00555cdc  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00555ce1  f30f5900                  MULSS XMM0,dword ptr [EAX]
00555ce5  f30f59d1                  MULSS XMM2,XMM1
00555ce9  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00555cf1  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00555cf9  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00555d01  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00555d09  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00555d0d  8d4f48                    LEA ECX,[EDI + 0x48]
00555d10  740d                      JZ 0x00555d1f
00555d12  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00555d19  0f8556030000              JNZ 0x00556075
00555d1f  f30f109f38030000          MOVSS XMM3,dword ptr [EDI + 0x338]
00555d27  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
00555d2f  0f28c3                    MOVAPS XMM0,XMM3
00555d32  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
00555d39  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00555d40  0f2fd0                    COMISS XMM2,XMM0
00555d43  6a00                      PUSH 0x0
00555d45  7619                      JBE 0x00555d60
00555d47  68a810b600                PUSH 0xb610a8
00555d4c  e82f46ebff                CALL 0x0040a380
00555d51  0f57c0                    XORPS XMM0,XMM0
00555d54  0f2f8734030000            COMISS XMM0,dword ptr [EDI + 0x334]
00555d5b  0f97c0                    SETA AL
00555d5e  eb1b                      JMP 0x00555d7b
00555d60  0f57c0                    XORPS XMM0,XMM0
00555d63  bab4edb100                MOV EDX,0xb1edb4
00555d68  0f2fc3                    COMISS XMM0,XMM3
00555d6b  b8acedb100                MOV EAX,0xb1edac
00555d70  0f46c2                    CMOVBE EAX,EDX
00555d73  50                        PUSH EAX
00555d74  e80746ebff                CALL 0x0040a380
00555d79  32c0                      XOR AL,AL
00555d7b  888748010000              MOV byte ptr [EDI + 0x148],AL
00555d81  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
00555d87  85d2                      TEST EDX,EDX
00555d89  7843                      JS 0x00555dce
00555d8b  51                        PUSH ECX
00555d8c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00555d93  6a00                      PUSH 0x0
00555d95  6a02                      PUSH 0x2
00555d97  51                        PUSH ECX
00555d98  c704240000803f            MOV dword ptr [ESP],0x3f800000
00555d9f  8bcf                      MOV ECX,EDI
00555da1  6a77                      PUSH 0x77
00555da3  e8f80d1800                CALL 0x006d6ba0
00555da8  51                        PUSH ECX
00555da9  c704240000803f            MOV dword ptr [ESP],0x3f800000
00555db0  6a00                      PUSH 0x0
00555db2  6a02                      PUSH 0x2
00555db4  51                        PUSH ECX
00555db5  c704240000803f            MOV dword ptr [ESP],0x3f800000
00555dbc  8bcf                      MOV ECX,EDI
00555dbe  68e3010000                PUSH 0x1e3
00555dc3  e8d80d1800                CALL 0x006d6ba0
00555dc8  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
00555dce  8bca                      MOV ECX,EDX
00555dd0  33c0                      XOR EAX,EAX
00555dd2  f7d9                      NEG ECX
00555dd4  85d2                      TEST EDX,EDX
00555dd6  0f48c1                    CMOVS EAX,ECX
00555dd9  898710040000              MOV dword ptr [EDI + 0x410],EAX
00555ddf  e991020000                JMP 0x00556075
00555de4  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00555dec  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00555df4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00555dfc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00555e00  740d                      JZ 0x00555e0f
00555e02  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00555e09  0f8566020000              JNZ 0x00556075
00555e0f  83bda0feffff00            CMP dword ptr [EBP + 0xfffffea0],0x0
00555e16  0f8459020000              JZ 0x00556075
00555e1c  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
00555e23  0f854c020000              JNZ 0x00556075
00555e29  e832911900                CALL 0x006eef60
00555e2e  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00555e36  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
00555e3e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00555e44  50                        PUSH EAX
00555e45  6a01                      PUSH 0x1
00555e47  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00555e4d  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00555e55  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
00555e5b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00555e63  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00555e6b  6840b6c700                PUSH 0xc7b640
00555e70  50                        PUSH EAX
00555e71  6a00                      PUSH 0x0
00555e73  6862030000                PUSH 0x362
00555e78  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00555e80  e89b2cedff                CALL 0x00428b20
00555e85  8bb5a8feffff              MOV ESI,dword ptr [EBP + 0xfffffea8]
00555e8b  8bf8                      MOV EDI,EAX
00555e8d  57                        PUSH EDI
00555e8e  8bce                      MOV ECX,ESI
00555e90  e84b341500                CALL 0x006a92e0
00555e95  56                        PUSH ESI
00555e96  8bcf                      MOV ECX,EDI
00555e98  e803341500                CALL 0x006a92a0
00555e9d  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00555ea3  8b07                      MOV EAX,dword ptr [EDI]
00555ea5  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
00555eac  898f6c010000              MOV dword ptr [EDI + 0x16c],ECX
00555eb2  8bcf                      MOV ECX,EDI
00555eb4  ff500c                    CALL dword ptr [EAX + 0xc]
00555eb7  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
00555ebf  8d4e48                    LEA ECX,[ESI + 0x48]
00555ec2  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
00555eca  f30f5c0d1ca8ba00          SUBSS XMM1,dword ptr [0x00baa81c]
00555ed2  f30f5c05e49fba00          SUBSS XMM0,dword ptr [0x00ba9fe4]
00555eda  6a00                      PUSH 0x0
00555edc  6868d6b100                PUSH 0xb1d668
00555ee1  f30f118e3c030000          MOVSS dword ptr [ESI + 0x33c],XMM1
00555ee9  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
00555ef1  e88a44ebff                CALL 0x0040a380
00555ef6  8d4e48                    LEA ECX,[ESI + 0x48]
00555ef9  e86248ebff                CALL 0x0040a760
00555efe  6a00                      PUSH 0x0
00555f00  8bce                      MOV ECX,ESI
00555f02  c786640b000008000000      MOV dword ptr [ESI + 0xb64],0x8
00555f0c  c78610040000f8ffffff      MOV dword ptr [ESI + 0x410],0xfffffff8
00555f16  e805341500                CALL 0x006a9320
00555f1b  51                        PUSH ECX
00555f1c  0f57db                    XORPS XMM3,XMM3
00555f1f  c78634030000000080bf      MOV dword ptr [ESI + 0x334],0xbf800000
00555f29  0f57d2                    XORPS XMM2,XMM2
00555f2c  c7863803000000000000      MOV dword ptr [ESI + 0x338],0x0
00555f36  0f57c9                    XORPS XMM1,XMM1
00555f39  c704240000803f            MOV dword ptr [ESP],0x3f800000
00555f40  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
00555f46  e8a5d9ecff                CALL 0x004238f0
00555f4b  8b16                      MOV EDX,dword ptr [ESI]
00555f4d  8bce                      MOV ECX,ESI
00555f4f  6a01                      PUSH 0x1
00555f51  6a01                      PUSH 0x1
00555f53  68ff000000                PUSH 0xff
00555f58  6a14                      PUSH 0x14
00555f5a  50                        PUSH EAX
00555f5b  ff523c                    CALL dword ptr [EDX + 0x3c]
00555f5e  6a00                      PUSH 0x0
00555f60  6868d6b100                PUSH 0xb1d668
00555f65  8d4f48                    LEA ECX,[EDI + 0x48]
00555f68  e81344ebff                CALL 0x0040a380
00555f6d  8d4f48                    LEA ECX,[EDI + 0x48]
00555f70  e8eb47ebff                CALL 0x0040a760
00555f75  6a00                      PUSH 0x0
00555f77  8bcf                      MOV ECX,EDI
00555f79  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00555f83  c78710040000f8ffffff      MOV dword ptr [EDI + 0x410],0xfffffff8
00555f8d  e88e331500                CALL 0x006a9320
00555f92  51                        PUSH ECX
00555f93  c787340300000000803f      MOV dword ptr [EDI + 0x334],0x3f800000
00555f9d  0f57db                    XORPS XMM3,XMM3
00555fa0  c7873803000000000000      MOV dword ptr [EDI + 0x338],0x0
00555faa  c704240000803f            MOV dword ptr [ESP],0x3f800000
00555fb1  0f57d2                    XORPS XMM2,XMM2
00555fb4  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
00555fba  0f57c9                    XORPS XMM1,XMM1
00555fbd  e82ed9ecff                CALL 0x004238f0
00555fc2  8b17                      MOV EDX,dword ptr [EDI]
00555fc4  8bcf                      MOV ECX,EDI
00555fc6  6a01                      PUSH 0x1
00555fc8  6a01                      PUSH 0x1
00555fca  68ff000000                PUSH 0xff
00555fcf  6a14                      PUSH 0x14
00555fd1  50                        PUSH EAX
00555fd2  ff523c                    CALL dword ptr [EDX + 0x3c]
00555fd5  0f2805e0bcba00            MOVAPS XMM0,xmmword ptr [0x00babce0]
00555fdc  8d4594                    LEA EAX,[EBP + -0x6c]
00555fdf  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00555fe7  8bfe                      MOV EDI,ESI
00555fe9  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
00555fed  8bcf                      MOV ECX,EDI
00555fef  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
00555ff6  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00555ffd  50                        PUSH EAX
00555ffe  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
00556002  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00556009  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
00556010  e88b061600                CALL 0x006b66a0
00556015  51                        PUSH ECX
00556016  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055601d  6a00                      PUSH 0x0
0055601f  6a02                      PUSH 0x2
00556021  51                        PUSH ECX
00556022  c704240000803f            MOV dword ptr [ESP],0x3f800000
00556029  8bcf                      MOV ECX,EDI
0055602b  6831010000                PUSH 0x131
00556030  e86b0b1800                CALL 0x006d6ba0
00556035  51                        PUSH ECX
00556036  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055603d  6a00                      PUSH 0x0
0055603f  6a02                      PUSH 0x2
00556041  51                        PUSH ECX
00556042  c704240000803f            MOV dword ptr [ESP],0x3f800000
00556049  8bcf                      MOV ECX,EDI
0055604b  68e3010000                PUSH 0x1e3
00556050  e84b0b1800                CALL 0x006d6ba0
00556055  51                        PUSH ECX
00556056  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
0055605d  6a00                      PUSH 0x0
0055605f  6a02                      PUSH 0x2
00556061  51                        PUSH ECX
00556062  c704240000803f            MOV dword ptr [ESP],0x3f800000
00556069  8bcf                      MOV ECX,EDI
0055606b  6850020000                PUSH 0x250
00556070  e82b0b1800                CALL 0x006d6ba0
00556075  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0055607b  85c0                      TEST EAX,EAX
0055607d  0f84a5010000              JZ 0x00556228
00556083  81782862030000            CMP dword ptr [EAX + 0x28],0x362
0055608a  0f8598010000              JNZ 0x00556228
00556090  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
00556097  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0055609f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005560a7  740a                      JZ 0x005560b3
005560a9  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
005560b1  eb11                      JMP 0x005560c4
005560b3  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
005560ba  7408                      JZ 0x005560c4
005560bc  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
005560c4  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005560cc  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005560d4  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005560dc  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005560e4  e93f010000                JMP 0x00556228
005560e9  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005560ef  85c0                      TEST EAX,EAX
005560f1  0f84a8000000              JZ 0x0055619f
005560f7  83f803                    CMP EAX,0x3
005560fa  742a                      JZ 0x00556126
005560fc  83f810                    CMP EAX,0x10
005560ff  0f8523010000              JNZ 0x00556228
00556105  68eca4b100                PUSH 0xb1a4ec
0055610a  8d4f48                    LEA ECX,[EDI + 0x48]
0055610d  e83e44ebff                CALL 0x0040a550
00556112  84c0                      TEST AL,AL
00556114  0f840e010000              JZ 0x00556228
0055611a  8b07                      MOV EAX,dword ptr [EDI]
0055611c  8bcf                      MOV ECX,EDI
0055611e  ff5028                    CALL dword ptr [EAX + 0x28]
00556121  e902010000                JMP 0x00556228
00556126  68dcd2b100                PUSH 0xb1d2dc
0055612b  8d4f48                    LEA ECX,[EDI + 0x48]
0055612e  e8fd4eebff                CALL 0x0040b030
00556133  84c0                      TEST AL,AL
00556135  740d                      JZ 0x00556144
00556137  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0055613d  6a06                      PUSH 0x6
0055613f  e82cd51a00                CALL 0x00703670
00556144  68eca4b100                PUSH 0xb1a4ec
00556149  8d4f48                    LEA ECX,[EDI + 0x48]
0055614c  e8ff43ebff                CALL 0x0040a550
00556151  84c0                      TEST AL,AL
00556153  740f                      JZ 0x00556164
00556155  6a00                      PUSH 0x0
00556157  68b413b600                PUSH 0xb613b4
0055615c  8d4f48                    LEA ECX,[EDI + 0x48]
0055615f  e81c42ebff                CALL 0x0040a380
00556164  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0055616a  0385acfeffff              ADD EAX,dword ptr [EBP + 0xfffffeac]
00556170  898710040000              MOV dword ptr [EDI + 0x410],EAX
00556176  3d96000000                CMP EAX,0x96
0055617b  0f8ea7000000              JLE 0x00556228
00556181  6a00                      PUSH 0x0
00556183  68fce2b100                PUSH 0xb1e2fc
00556188  8d4f48                    LEA ECX,[EDI + 0x48]
0055618b  e8f041ebff                CALL 0x0040a380
00556190  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0055619a  e989000000                JMP 0x00556228
0055619f  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
005561a7  51                        PUSH ECX
005561a8  c704240000803f            MOV dword ptr [ESP],0x3f800000
005561af  6a00                      PUSH 0x0
005561b1  6a02                      PUSH 0x2
005561b3  6868020000                PUSH 0x268
005561b8  e8b3021600                CALL 0x006b6470
005561bd  6a00                      PUSH 0x0
005561bf  6840dab100                PUSH 0xb1da40
005561c4  8d4f48                    LEA ECX,[EDI + 0x48]
005561c7  e8b441ebff                CALL 0x0040a380
005561cc  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
005561d2  83e1fb                    AND ECX,0xfffffffb
005561d5  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005561df  83c911                    OR ECX,0x11
005561e2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005561ec  818f6c01000008200000      OR dword ptr [EDI + 0x16c],0x2008
005561f6  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
005561fd  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00556203  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0055620d  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00556217  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
0055621e  c7875c03000000000000      MOV dword ptr [EDI + 0x35c],0x0
00556228  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0055622f  7420                      JZ 0x00556251
00556231  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00556239  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00556241  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00556249  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00556251  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00556254  64890d00000000            MOV dword ptr FS:[0x0],ECX
0055625b  59                        POP ECX
0055625c  5f                        POP EDI
0055625d  5e                        POP ESI
0055625e  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00556261  33cd                      XOR ECX,EBP
00556263  e8c38e5900                CALL 0x00aef12b
00556268  8be5                      MOV ESP,EBP
0055626a  5d                        POP EBP
0055626b  8be3                      MOV ESP,EBX
0055626d  5b                        POP EBX
0055626e  c3                        RET
