; J460 NPC AI 0x005492c0 AI_005492c0
; types=311
; identities=311.0.0,311.10.0
; entry=005492c0
005492c0  55                        PUSH EBP
005492c1  8bec                      MOV EBP,ESP
005492c3  83e4c0                    AND ESP,0xffffffc0
005492c6  81ec34010000              SUB ESP,0x134
005492cc  a1b493bf00                MOV EAX,[0x00bf93b4]
005492d1  33c4                      XOR EAX,ESP
005492d3  89842430010000            MOV dword ptr [ESP + 0x130],EAX
005492da  53                        PUSH EBX
005492db  56                        PUSH ESI
005492dc  57                        PUSH EDI
005492dd  8bf9                      MOV EDI,ECX
005492df  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005492e5  8b9f640b0000              MOV EBX,dword ptr [EDI + 0xb64]
005492eb  8b9100830100              MOV EDX,dword ptr [ECX + 0x18300]
005492f1  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005492f4  89542450                  MOV dword ptr [ESP + 0x50],EDX
005492f8  85db                      TEST EBX,EBX
005492fa  0f85be010000              JNZ 0x005494be
00549300  83f80a                    CMP EAX,0xa
00549303  0f8396010000              JNC 0x0054949f
00549309  895c2444                  MOV dword ptr [ESP + 0x44],EBX
0054930d  8d9f3c030000              LEA EBX,[EDI + 0x33c]
00549313  e8485c1a00                CALL 0x006eef60
00549318  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054931e  6a00                      PUSH 0x0
00549320  50                        PUSH EAX
00549321  6a00                      PUSH 0x0
00549323  57                        PUSH EDI
00549324  6840b6c700                PUSH 0xc7b640
00549329  53                        PUSH EBX
0054932a  6a0a                      PUSH 0xa
0054932c  6837010000                PUSH 0x137
00549331  e8da501b00                CALL 0x006fe410
00549336  6a00                      PUSH 0x0
00549338  68acd6c500                PUSH 0xc5d6ac
0054933d  68dcd5c500                PUSH 0xc5d5dc
00549342  6a00                      PUSH 0x0
00549344  50                        PUSH EAX
00549345  e867755a00                CALL 0x00af08b1
0054934a  8bf0                      MOV ESI,EAX
0054934c  83c414                    ADD ESP,0x14
0054934f  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00549355  8d9ebc030000              LEA EBX,[ESI + 0x3bc]
0054935b  85c9                      TEST ECX,ECX
0054935d  7414                      JZ 0x00549373
0054935f  8d442448                  LEA EAX,[ESP + 0x48]
00549363  895c2448                  MOV dword ptr [ESP + 0x48],EBX
00549367  50                        PUSH EAX
00549368  81c1cc030000              ADD ECX,0x3cc
0054936e  e89d5ef8ff                CALL 0x004cf210
00549373  53                        PUSH EBX
00549374  8bcf                      MOV ECX,EDI
00549376  893b                      MOV dword ptr [EBX],EDI
00549378  e87349f8ff                CALL 0x004cdcf0
0054937d  8b542444                  MOV EDX,dword ptr [ESP + 0x44]
00549381  8d9f3c030000              LEA EBX,[EDI + 0x33c]
00549387  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
0054938d  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00549393  83e1fb                    AND ECX,0xfffffffb
00549396  81c900000400              OR ECX,0x40000
0054939c  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
005493a6  660f6ec2                  MOVD XMM0,EDX
005493aa  42                        INC EDX
005493ab  c7865c01000000000000      MOV dword ptr [ESI + 0x15c],0x0
005493b5  c786540300009cffffff      MOV dword ptr [ESI + 0x354],0xffffff9c
005493bf  898e68010000              MOV dword ptr [ESI + 0x168],ECX
005493c5  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
005493cb  c6867101000000            MOV byte ptr [ESI + 0x171],0x0
005493d2  89542444                  MOV dword ptr [ESP + 0x44],EDX
005493d6  0f5bc0                    CVTDQ2PS XMM0,XMM0
005493d9  f30f1186b00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM0
005493e1  83fa08                    CMP EDX,0x8
005493e4  0f8c29ffffff              JL 0x00549313
005493ea  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
005493f1  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
005493f7  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00549401  c787c00b0000ffffffff      MOV dword ptr [EDI + 0xbc0],0xffffffff
0054940b  c787c40b0000ffffffff      MOV dword ptr [EDI + 0xbc4],0xffffffff
00549415  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0054941b  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0054941e  85f6                      TEST ESI,ESI
00549420  7445                      JZ 0x00549467
00549422  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00549426  8bc6                      MOV EAX,ESI
00549428  7202                      JC 0x0054942c
0054942a  8b06                      MOV EAX,dword ptr [ESI]
0054942c  b9100cb600                MOV ECX,0xb60c10
00549431  8a10                      MOV DL,byte ptr [EAX]
00549433  3a11                      CMP DL,byte ptr [ECX]
00549435  751a                      JNZ 0x00549451
00549437  84d2                      TEST DL,DL
00549439  7412                      JZ 0x0054944d
0054943b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0054943e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00549441  750e                      JNZ 0x00549451
00549443  83c002                    ADD EAX,0x2
00549446  83c102                    ADD ECX,0x2
00549449  84d2                      TEST DL,DL
0054944b  75e4                      JNZ 0x00549431
0054944d  33c0                      XOR EAX,EAX
0054944f  eb05                      JMP 0x00549456
00549451  1bc0                      SBB EAX,EAX
00549453  83c801                    OR EAX,0x1
00549456  85c0                      TEST EAX,EAX
00549458  750d                      JNZ 0x00549467
0054945a  384634                    CMP byte ptr [ESI + 0x34],AL
0054945d  742a                      JZ 0x00549489
0054945f  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00549465  7522                      JNZ 0x00549489
00549467  6a01                      PUSH 0x1
00549469  68100cb600                PUSH 0xb60c10
0054946e  8d4f48                    LEA ECX,[EDI + 0x48]
00549471  e85a11ecff                CALL 0x0040a5d0
00549476  84c0                      TEST AL,AL
00549478  740f                      JZ 0x00549489
0054947a  8d4f78                    LEA ECX,[EDI + 0x78]
0054947d  e82e0decff                CALL 0x0040a1b0
00549482  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00549489  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0054948d  7410                      JZ 0x0054949f
0054948f  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00549492  8d4f78                    LEA ECX,[EDI + 0x78]
00549495  8b4030                    MOV EAX,dword ptr [EAX + 0x30]
00549498  48                        DEC EAX
00549499  50                        PUSH EAX
0054949a  e861f8ebff                CALL 0x00408d00
0054949f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005494a9  5f                        POP EDI
005494aa  5e                        POP ESI
005494ab  5b                        POP EBX
005494ac  8b8c2430010000            MOV ECX,dword ptr [ESP + 0x130]
005494b3  33cc                      XOR ECX,ESP
005494b5  e8715c5a00                CALL 0x00aef12b
005494ba  8be5                      MOV ESP,EBP
005494bc  5d                        POP EBP
005494bd  c3                        RET
005494be  83f80a                    CMP EAX,0xa
005494c1  0f83330c0000              JNC 0x0054a0fa
005494c7  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005494ce  0f848d000000              JZ 0x00549561
005494d4  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005494da  2500000001                AND EAX,0x1000000
005494df  83c800                    OR EAX,0x0
005494e2  0f8572020000              JNZ 0x0054975a
005494e8  8d8c2490000000            LEA ECX,[ESP + 0x90]
005494ef  e83c5aefff                CALL 0x0043ef30
005494f4  8d842490000000            LEA EAX,[ESP + 0x90]
005494fb  c78424a800000000000000    MOV dword ptr [ESP + 0xa8],0x0
00549506  50                        PUSH EAX
00549507  6a09                      PUSH 0x9
00549509  8d442460                  LEA EAX,[ESP + 0x60]
0054950d  c744246000000041          MOV dword ptr [ESP + 0x60],0x41000000
00549515  50                        PUSH EAX
00549516  8d873c030000              LEA EAX,[EDI + 0x33c]
0054951c  c74424680000c040          MOV dword ptr [ESP + 0x68],0x40c00000
00549524  50                        PUSH EAX
00549525  8bcf                      MOV ECX,EDI
00549527  e8b41d1800                CALL 0x006cb2e0
0054952c  51                        PUSH ECX
0054952d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00549534  6a00                      PUSH 0x0
00549536  6a02                      PUSH 0x2
00549538  51                        PUSH ECX
00549539  c704240000803f            MOV dword ptr [ESP],0x3f800000
00549540  8bcf                      MOV ECX,EDI
00549542  6892000000                PUSH 0x92
00549547  e854d61800                CALL 0x006d6ba0
0054954c  5f                        POP EDI
0054954d  5e                        POP ESI
0054954e  5b                        POP EBX
0054954f  8b8c2430010000            MOV ECX,dword ptr [ESP + 0x130]
00549556  33cc                      XOR ECX,ESP
00549558  e8ce5b5a00                CALL 0x00aef12b
0054955d  8be5                      MOV ESP,EBP
0054955f  5d                        POP EBP
00549560  c3                        RET
00549561  803a00                    CMP byte ptr [EDX],0x0
00549564  7468                      JZ 0x005495ce
00549566  8b81f8640200              MOV EAX,dword ptr [ECX + 0x264f8]
0054956c  2b82f0110000              SUB EAX,dword ptr [EDX + 0x11f0]
00549572  755a                      JNZ 0x005495ce
00549574  50                        PUSH EAX
00549575  6800000020                PUSH 0x20000000
0054957a  8bcf                      MOV ECX,EDI
0054957c  e8afdeecff                CALL 0x00417430
00549581  84c0                      TEST AL,AL
00549583  7445                      JZ 0x005495ca
00549585  6a00                      PUSH 0x0
00549587  68100cb600                PUSH 0xb60c10
0054958c  8d4f48                    LEA ECX,[EDI + 0x48]
0054958f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00549599  e8e20decff                CALL 0x0040a380
0054959e  8d4f48                    LEA ECX,[EDI + 0x48]
005495a1  e8ba11ecff                CALL 0x0040a760
005495a6  8b9f640b0000              MOV EBX,dword ptr [EDI + 0xb64]
005495ac  c787c00b0000ffffffff      MOV dword ptr [EDI + 0xbc0],0xffffffff
005495b6  c787c40b0000ffffffff      MOV dword ptr [EDI + 0xbc4],0xffffffff
005495c0  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005495ca  8b542450                  MOV EDX,dword ptr [ESP + 0x50]
005495ce  8bb7a00b0000              MOV ESI,dword ptr [EDI + 0xba0]
005495d4  85f6                      TEST ESI,ESI
005495d6  7e22                      JLE 0x005495fa
005495d8  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
005495e0  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
005495e8  2bc8                      SUB ECX,EAX
005495ea  8d0431                    LEA EAX,[ECX + ESI*0x1]
005495ed  33f6                      XOR ESI,ESI
005495ef  85c0                      TEST EAX,EAX
005495f1  0f4ff0                    CMOVG ESI,EAX
005495f4  89b7a00b0000              MOV dword ptr [EDI + 0xba0],ESI
005495fa  83fb03                    CMP EBX,0x3
005495fd  0f856c010000              JNZ 0x0054976f
00549603  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00549609  85c0                      TEST EAX,EAX
0054960b  782b                      JS 0x00549638
0054960d  3dbf010000                CMP EAX,0x1bf
00549612  7714                      JA 0x00549628
00549614  8b4c8224                  MOV ECX,dword ptr [EDX + EAX*0x4 + 0x24]
00549618  85c9                      TEST ECX,ECX
0054961a  740c                      JZ 0x00549628
0054961c  83790407                  CMP dword ptr [ECX + 0x4],0x7
00549620  7506                      JNZ 0x00549628
00549622  83793c01                  CMP dword ptr [ECX + 0x3c],0x1
00549626  740c                      JZ 0x00549634
00549628  c787c00b0000ffffffff      MOV dword ptr [EDI + 0xbc0],0xffffffff
00549632  eb04                      JMP 0x00549638
00549634  85c0                      TEST EAX,EAX
00549636  7936                      JNS 0x0054966e
00549638  8bb7c40b0000              MOV ESI,dword ptr [EDI + 0xbc4]
0054963e  8d442460                  LEA EAX,[ESP + 0x60]
00549642  51                        PUSH ECX
00549643  c7042400000000            MOV dword ptr [ESP],0x0
0054964a  8bcf                      MOV ECX,EDI
0054964c  50                        PUSH EAX
0054964d  e8ee551700                CALL 0x006bec40
00549652  56                        PUSH ESI
00549653  50                        PUSH EAX
00549654  8d873c030000              LEA EAX,[EDI + 0x33c]
0054965a  50                        PUSH EAX
0054965b  e8d0f8ffff                CALL 0x00548f30
00549660  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00549666  85c0                      TEST EAX,EAX
00549668  0f88a6000000              JS 0x00549714
0054966e  8b742450                  MOV ESI,dword ptr [ESP + 0x50]
00549672  8d4f48                    LEA ECX,[EDI + 0x48]
00549675  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0054967f  99                        CDQ
00549680  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00549688  f77e0c                    IDIV dword ptr [ESI + 0xc]
0054968b  6a00                      PUSH 0x0
0054968d  68e80bb600                PUSH 0xb60be8
00549692  660f6ed2                  MOVD XMM2,EDX
00549696  660f6ec8                  MOVD XMM1,EAX
0054969a  0f5bd2                    CVTDQ2PS XMM2,XMM2
0054969d  0f5bc9                    CVTDQ2PS XMM1,XMM1
005496a0  f30f59d0                  MULSS XMM2,XMM0
005496a4  f30f59c8                  MULSS XMM1,XMM0
005496a8  f30f58d0                  ADDSS XMM2,XMM0
005496ac  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
005496b4  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
005496bc  f30f11973c030000          MOVSS dword ptr [EDI + 0x33c],XMM2
005496c4  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
005496cc  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
005496d4  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005496dc  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005496e4  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005496ec  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005496f4  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
005496fe  e87d0cecff                CALL 0x0040a380
00549703  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00549709  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
0054970f  e954070000                JMP 0x00549e68
00549714  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0054971c  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00549724  2bc8                      SUB ECX,EAX
00549726  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0054972c  03c1                      ADD EAX,ECX
0054972e  898710040000              MOV dword ptr [EDI + 0x410],EAX
00549734  83f81e                    CMP EAX,0x1e
00549737  0f8e27070000              JLE 0x00549e64
0054973d  6a00                      PUSH 0x0
0054973f  6800000020                PUSH 0x20000000
00549744  8bcf                      MOV ECX,EDI
00549746  e8e5dcecff                CALL 0x00417430
0054974b  84c0                      TEST AL,AL
0054974d  0f8511070000              JNZ 0x00549e64
00549753  8b07                      MOV EAX,dword ptr [EDI]
00549755  8bcf                      MOV ECX,EDI
00549757  ff5028                    CALL dword ptr [EAX + 0x28]
0054975a  5f                        POP EDI
0054975b  5e                        POP ESI
0054975c  5b                        POP EBX
0054975d  8b8c2430010000            MOV ECX,dword ptr [ESP + 0x130]
00549764  33cc                      XOR ECX,ESP
00549766  e8c0595a00                CALL 0x00aef12b
0054976b  8be5                      MOV ESP,EBP
0054976d  5d                        POP EBP
0054976e  c3                        RET
0054976f  83fb06                    CMP EBX,0x6
00549772  0f8521020000              JNZ 0x00549999
00549778  8d5f48                    LEA EBX,[EDI + 0x48]
0054977b  68dcd2b100                PUSH 0xb1d2dc
00549780  8bcb                      MOV ECX,EBX
00549782  e8a918ecff                CALL 0x0040b030
00549787  8b742450                  MOV ESI,dword ptr [ESP + 0x50]
0054978b  84c0                      TEST AL,AL
0054978d  0f84c2010000              JZ 0x00549955
00549793  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00549799  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
005497a3  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
005497a6  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
005497ac  f30f108640720000          MOVSS XMM0,dword ptr [ESI + 0x7240]
005497b4  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005497bb  7711                      JA 0x005497ce
005497bd  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
005497c0  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
005497c3  c1e805                    SHR EAX,0x5
005497c6  a801                      TEST AL,0x1
005497c8  0f8487010000              JZ 0x00549955
005497ce  e88d571a00                CALL 0x006eef60
005497d3  6a00                      PUSH 0x0
005497d5  50                        PUSH EAX
005497d6  6a00                      PUSH 0x0
005497d8  57                        PUSH EDI
005497d9  6840b6c700                PUSH 0xc7b640
005497de  8d8f3c030000              LEA ECX,[EDI + 0x33c]
005497e4  51                        PUSH ECX
005497e5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005497eb  6a63                      PUSH 0x63
005497ed  68e8030000                PUSH 0x3e8
005497f2  e8194c1b00                CALL 0x006fe410
005497f7  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
005497ff  8bc8                      MOV ECX,EAX
00549801  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
00549809  f30f591528a5ba00          MULSS XMM2,dword ptr [0x00baa528]
00549811  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
00549819  8b01                      MOV EAX,dword ptr [ECX]
0054981b  f30f1191e4000000          MOVSS dword ptr [ECX + 0xe4],XMM2
00549823  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
0054982b  ff500c                    CALL dword ptr [EAX + 0xc]
0054982e  e82d571a00                CALL 0x006eef60
00549833  33d2                      XOR EDX,EDX
00549835  b906000000                MOV ECX,0x6
0054983a  f7f1                      DIV ECX
0054983c  8d5a04                    LEA EBX,[EDX + 0x4]
0054983f  85db                      TEST EBX,EBX
00549841  0f8e0b010000              JLE 0x00549952
00549847  e814571a00                CALL 0x006eef60
0054984c  660f6ec0                  MOVD XMM0,EAX
00549850  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00549854  c1e81f                    SHR EAX,0x1f
00549857  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00549860  660f5ac0                  CVTPD2PS XMM0,XMM0
00549864  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0054986c  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00549874  f30f58c0                  ADDSS XMM0,XMM0
00549878  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
0054987e  e8dd561a00                CALL 0x006eef60
00549883  660f6ec0                  MOVD XMM0,EAX
00549887  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0054988b  c1e81f                    SHR EAX,0x1f
0054988e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00549897  660f5ac0                  CVTPD2PS XMM0,XMM0
0054989b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005498a3  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
005498a9  f30f10442444              MOVSS XMM0,dword ptr [ESP + 0x44]
005498af  e88c3cedff                CALL 0x0041d540
005498b4  f30f5944244c              MULSS XMM0,dword ptr [ESP + 0x4c]
005498ba  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
005498c2  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
005498c8  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
005498ce  f30f10442444              MOVSS XMM0,dword ptr [ESP + 0x44]
005498d4  e8473cedff                CALL 0x0041d520
005498d9  f30f5944244c              MULSS XMM0,dword ptr [ESP + 0x4c]
005498df  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
005498e7  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
005498ed  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
005498f3  e868561a00                CALL 0x006eef60
005498f8  f30f10442448              MOVSS XMM0,dword ptr [ESP + 0x48]
005498fe  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00549906  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054990c  6a00                      PUSH 0x0
0054990e  50                        PUSH EAX
0054990f  6a01                      PUSH 0x1
00549911  57                        PUSH EDI
00549912  f30f11442460              MOVSS dword ptr [ESP + 0x60],XMM0
00549918  8d442468                  LEA EAX,[ESP + 0x68]
0054991c  f30f10442454              MOVSS XMM0,dword ptr [ESP + 0x54]
00549922  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0054992a  50                        PUSH EAX
0054992b  8d442464                  LEA EAX,[ESP + 0x64]
0054992f  50                        PUSH EAX
00549930  6a63                      PUSH 0x63
00549932  68e8030000                PUSH 0x3e8
00549937  f30f11442474              MOVSS dword ptr [ESP + 0x74],XMM0
0054993d  e8ce4a1b00                CALL 0x006fe410
00549942  8bc8                      MOV ECX,EAX
00549944  8b10                      MOV EDX,dword ptr [EAX]
00549946  ff520c                    CALL dword ptr [EDX + 0xc]
00549949  83eb01                    SUB EBX,0x1
0054994c  0f85f5feffff              JNZ 0x00549847
00549952  8d5f48                    LEA EBX,[EDI + 0x48]
00549955  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00549959  740d                      JZ 0x00549968
0054995b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00549962  0f8500050000              JNZ 0x00549e68
00549968  6a00                      PUSH 0x0
0054996a  6854bcb100                PUSH 0xb1bc54
0054996f  8bcb                      MOV ECX,EBX
00549971  c787a00b00000c000000      MOV dword ptr [EDI + 0xba0],0xc
0054997b  e8000aecff                CALL 0x0040a380
00549980  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0054998a  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00549994  e9cf040000                JMP 0x00549e68
00549999  83fb07                    CMP EBX,0x7
0054999c  0f85fe010000              JNZ 0x00549ba0
005499a2  8d4f48                    LEA ECX,[EDI + 0x48]
005499a5  68dcd2b100                PUSH 0xb1d2dc
005499aa  e88116ecff                CALL 0x0040b030
005499af  8b742450                  MOV ESI,dword ptr [ESP + 0x50]
005499b3  84c0                      TEST AL,AL
005499b5  0f84b9010000              JZ 0x00549b74
005499bb  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005499c5  0f57c9                    XORPS XMM1,XMM1
005499c8  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
005499d2  f30f108640720000          MOVSS XMM0,dword ptr [ESI + 0x7240]
005499da  0f2fc1                    COMISS XMM0,XMM1
005499dd  7711                      JA 0x005499f0
005499df  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
005499e2  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
005499e5  c1e805                    SHR EAX,0x5
005499e8  a801                      TEST AL,0x1
005499ea  0f8484010000              JZ 0x00549b74
005499f0  e86b551a00                CALL 0x006eef60
005499f5  33d2                      XOR EDX,EDX
005499f7  b906000000                MOV ECX,0x6
005499fc  f7f1                      DIV ECX
005499fe  8d5a04                    LEA EBX,[EDX + 0x4]
00549a01  85db                      TEST EBX,EBX
00549a03  0f8e6b010000              JLE 0x00549b74
00549a09  0f1f8000000000            NOP dword ptr [EAX]
00549a10  e84b551a00                CALL 0x006eef60
00549a15  660f6ec0                  MOVD XMM0,EAX
00549a19  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00549a1d  c1e81f                    SHR EAX,0x1f
00549a20  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00549a29  660f5ac0                  CVTPD2PS XMM0,XMM0
00549a2d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00549a35  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00549a3d  f30f58c0                  ADDSS XMM0,XMM0
00549a41  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
00549a47  e814551a00                CALL 0x006eef60
00549a4c  660f6ec0                  MOVD XMM0,EAX
00549a50  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00549a54  c1e81f                    SHR EAX,0x1f
00549a57  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00549a60  660f5ac0                  CVTPD2PS XMM0,XMM0
00549a64  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00549a6c  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
00549a72  f30f10442444              MOVSS XMM0,dword ptr [ESP + 0x44]
00549a78  e8c33aedff                CALL 0x0041d540
00549a7d  f30f5944244c              MULSS XMM0,dword ptr [ESP + 0x4c]
00549a83  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
00549a8b  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
00549a91  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
00549a97  f30f10442444              MOVSS XMM0,dword ptr [ESP + 0x44]
00549a9d  e87e3aedff                CALL 0x0041d520
00549aa2  f30f5944244c              MULSS XMM0,dword ptr [ESP + 0x4c]
00549aa8  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
00549ab0  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
00549ab6  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
00549abc  e89f541a00                CALL 0x006eef60
00549ac1  f30f10442448              MOVSS XMM0,dword ptr [ESP + 0x48]
00549ac7  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00549acf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00549ad5  6a00                      PUSH 0x0
00549ad7  50                        PUSH EAX
00549ad8  6a01                      PUSH 0x1
00549ada  57                        PUSH EDI
00549adb  f30f11442470              MOVSS dword ptr [ESP + 0x70],XMM0
00549ae1  8d442468                  LEA EAX,[ESP + 0x68]
00549ae5  f30f10442454              MOVSS XMM0,dword ptr [ESP + 0x54]
00549aeb  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00549af3  50                        PUSH EAX
00549af4  8d442474                  LEA EAX,[ESP + 0x74]
00549af8  50                        PUSH EAX
00549af9  6a63                      PUSH 0x63
00549afb  68e8030000                PUSH 0x3e8
00549b00  f30f11842484000000        MOVSS dword ptr [ESP + 0x84],XMM0
00549b09  e802491b00                CALL 0x006fe410
00549b0e  8bf0                      MOV ESI,EAX
00549b10  8bce                      MOV ECX,ESI
00549b12  8b16                      MOV EDX,dword ptr [ESI]
00549b14  ff520c                    CALL dword ptr [EDX + 0xc]
00549b17  e844541a00                CALL 0x006eef60
00549b1c  660f6ec0                  MOVD XMM0,EAX
00549b20  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00549b24  c1e81f                    SHR EAX,0x1f
00549b27  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00549b30  660f5ac8                  CVTPD2PS XMM1,XMM0
00549b34  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00549b3c  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
00549b44  0f28c1                    MOVAPS XMM0,XMM1
00549b47  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00549b4f  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00549b57  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00549b5f  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00549b67  83eb01                    SUB EBX,0x1
00549b6a  0f85a0feffff              JNZ 0x00549a10
00549b70  8b742450                  MOV ESI,dword ptr [ESP + 0x50]
00549b74  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00549b78  740d                      JZ 0x00549b87
00549b7a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00549b81  0f85e1020000              JNZ 0x00549e68
00549b87  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00549b91  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00549b9b  e9c8020000                JMP 0x00549e68
00549ba0  83fb04                    CMP EBX,0x4
00549ba3  0f85cc030000              JNZ 0x00549f75
00549ba9  85f6                      TEST ESI,ESI
00549bab  7e21                      JLE 0x00549bce
00549bad  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00549bb5  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00549bbd  2bc8                      SUB ECX,EAX
00549bbf  33c0                      XOR EAX,EAX
00549bc1  03ce                      ADD ECX,ESI
00549bc3  85c9                      TEST ECX,ECX
00549bc5  0f4fc1                    CMOVG EAX,ECX
00549bc8  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00549bce  8bcf                      MOV ECX,EDI
00549bd0  e86b4c1700                CALL 0x006be840
00549bd5  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00549bdd  8d9f3c030000              LEA EBX,[EDI + 0x33c]
00549be3  6a00                      PUSH 0x0
00549be5  6a04                      PUSH 0x4
00549be7  0f2f803c030000            COMISS XMM0,dword ptr [EAX + 0x33c]
00549bee  8bcf                      MOV ECX,EDI
00549bf0  0f97c0                    SETA AL
00549bf3  888748010000              MOV byte ptr [EDI + 0x148],AL
00549bf9  e8122b1600                CALL 0x006ac710
00549bfe  84c0                      TEST AL,AL
00549c00  0f848f010000              JZ 0x00549d95
00549c06  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00549c0d  0f8f82010000              JG 0x00549d95
00549c13  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00549c19  25000a0001                AND EAX,0x1000a00
00549c1e  83c800                    OR EAX,0x0
00549c21  0f856e010000              JNZ 0x00549d95
00549c27  8bcf                      MOV ECX,EDI
00549c29  e8124c1700                CALL 0x006be840
00549c2e  8bcf                      MOV ECX,EDI
00549c30  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00549c38  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
00549c3e  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00549c46  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
00549c4c  e8ef4b1700                CALL 0x006be840
00549c51  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
00549c59  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
00549c61  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00549c69  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
00549c71  f30f584c2448              ADDSS XMM1,dword ptr [ESP + 0x48]
00549c77  f30f58542444              ADDSS XMM2,dword ptr [ESP + 0x44]
00549c7d  f30f5c0b                  SUBSS XMM1,dword ptr [EBX]
00549c81  f30f5c5304                SUBSS XMM2,dword ptr [EBX + 0x4]
00549c86  0f28c1                    MOVAPS XMM0,XMM1
00549c89  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
00549c8f  f30f59c1                  MULSS XMM0,XMM1
00549c93  0f28da                    MOVAPS XMM3,XMM2
00549c96  f30f11542444              MOVSS dword ptr [ESP + 0x44],XMM2
00549c9c  f30f59da                  MULSS XMM3,XMM2
00549ca0  f30f58d8                  ADDSS XMM3,XMM0
00549ca4  f30f100544acba00          MOVSS XMM0,dword ptr [0x00baac44]
00549cac  0f2fc3                    COMISS XMM0,XMM3
00549caf  f30f115c2448              MOVSS dword ptr [ESP + 0x48],XMM3
00549cb5  0f86da000000              JBE 0x00549d95
00549cbb  a17816c700                MOV EAX,[0x00c71678]
00549cc0  8bcf                      MOV ECX,EDI
00549cc2  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00549cc8  e8734b1700                CALL 0x006be840
00549ccd  6a00                      PUSH 0x0
00549ccf  6a00                      PUSH 0x0
00549cd1  6a00                      PUSH 0x0
00549cd3  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00549cd9  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00549cdf  6a00                      PUSH 0x0
00549ce1  89442474                  MOV dword ptr [ESP + 0x74],EAX
00549ce5  8d442470                  LEA EAX,[ESP + 0x70]
00549ce9  6a02                      PUSH 0x2
00549ceb  50                        PUSH EAX
00549cec  894c2478                  MOV dword ptr [ESP + 0x78],ECX
00549cf0  8bce                      MOV ECX,ESI
00549cf2  53                        PUSH EBX
00549cf3  e8f8702a00                CALL 0x007f0df0
00549cf8  84c0                      TEST AL,AL
00549cfa  0f8495000000              JZ 0x00549d95
00549d00  51                        PUSH ECX
00549d01  c704240000803f            MOV dword ptr [ESP],0x3f800000
00549d08  6a00                      PUSH 0x0
00549d0a  6a02                      PUSH 0x2
00549d0c  51                        PUSH ECX
00549d0d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00549d14  8bcf                      MOV ECX,EDI
00549d16  68e2000000                PUSH 0xe2
00549d1b  e880ce1800                CALL 0x006d6ba0
00549d20  f30f10442448              MOVSS XMM0,dword ptr [ESP + 0x48]
00549d26  e825bdeeff                CALL 0x00435a50
00549d2b  f30f101548a8ba00          MOVSS XMM2,dword ptr [0x00baa848]
00549d33  f30f5ed0                  DIVSS XMM2,XMM0
00549d37  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00549d3f  0f28ca                    MOVAPS XMM1,XMM2
00549d42  f30f59542444              MULSS XMM2,dword ptr [ESP + 0x44]
00549d48  f30f594c244c              MULSS XMM1,dword ptr [ESP + 0x4c]
00549d4e  f30f5ed0                  DIVSS XMM2,XMM0
00549d52  f30f5ec8                  DIVSS XMM1,XMM0
00549d56  0f57c0                    XORPS XMM0,XMM0
00549d59  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00549d61  0f2f44244c                COMISS XMM0,dword ptr [ESP + 0x4c]
00549d66  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00549d6e  0f97c0                    SETA AL
00549d71  888748010000              MOV byte ptr [EDI + 0x148],AL
00549d77  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00549d81  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00549d8b  c787a00b00001e000000      MOV dword ptr [EDI + 0xba0],0x1e
00549d95  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00549d9b  83f80f                    CMP EAX,0xf
00549d9e  7e18                      JLE 0x00549db8
00549da0  e8bb511a00                CALL 0x006eef60
00549da5  33d2                      XOR EDX,EDX
00549da7  b91e000000                MOV ECX,0x1e
00549dac  f7f1                      DIV ECX
00549dae  85d2                      TEST EDX,EDX
00549db0  7431                      JZ 0x00549de3
00549db2  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00549db8  3de8030000                CMP EAX,0x3e8
00549dbd  7d24                      JGE 0x00549de3
00549dbf  6a00                      PUSH 0x0
00549dc1  6800000020                PUSH 0x20000000
00549dc6  8bcf                      MOV ECX,EDI
00549dc8  e863d6ecff                CALL 0x00417430
00549dcd  84c0                      TEST AL,AL
00549dcf  7461                      JZ 0x00549e32
00549dd1  e88a511a00                CALL 0x006eef60
00549dd6  33d2                      XOR EDX,EDX
00549dd8  b932000000                MOV ECX,0x32
00549ddd  f7f1                      DIV ECX
00549ddf  85d2                      TEST EDX,EDX
00549de1  754f                      JNZ 0x00549e32
00549de3  8bb7c00b0000              MOV ESI,dword ptr [EDI + 0xbc0]
00549de9  8d442460                  LEA EAX,[ESP + 0x60]
00549ded  51                        PUSH ECX
00549dee  c7042400000000            MOV dword ptr [ESP],0x0
00549df5  8bcf                      MOV ECX,EDI
00549df7  50                        PUSH EAX
00549df8  e8434e1700                CALL 0x006bec40
00549dfd  56                        PUSH ESI
00549dfe  50                        PUSH EAX
00549dff  53                        PUSH EBX
00549e00  e82bf1ffff                CALL 0x00548f30
00549e05  85c0                      TEST EAX,EAX
00549e07  7829                      JS 0x00549e32
00549e09  6a00                      PUSH 0x0
00549e0b  8d4f48                    LEA ECX,[EDI + 0x48]
00549e0e  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00549e14  68100cb600                PUSH 0xb60c10
00549e19  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00549e23  e85805ecff                CALL 0x0040a380
00549e28  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
00549e32  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
00549e38  85d2                      TEST EDX,EDX
00549e3a  7f0e                      JG 0x00549e4a
00549e3c  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00549e41  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00549e48  761a                      JBE 0x00549e64
00549e4a  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00549e52  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00549e5a  2bc8                      SUB ECX,EAX
00549e5c  03ca                      ADD ECX,EDX
00549e5e  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00549e64  8b742450                  MOV ESI,dword ptr [ESP + 0x50]
00549e68  bb05000000                MOV EBX,0x5
00549e6d  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
00549e74  7452                      JZ 0x00549ec8
00549e76  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00549e7e  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
00549e85  9f                        LAHF
00549e86  f6c444                    TEST AH,0x44
00549e89  7a15                      JP 0x00549ea0
00549e8b  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00549e93  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00549e9a  9f                        LAHF
00549e9b  f6c444                    TEST AH,0x44
00549e9e  7b28                      JNP 0x00549ec8
00549ea0  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00549ea8  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00549eb0  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00549eb8  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00549ec0  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00549ec8  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00549ece  85c0                      TEST EAX,EAX
00549ed0  7826                      JS 0x00549ef8
00549ed2  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
00549ed9  741d                      JZ 0x00549ef8
00549edb  3dbf010000                CMP EAX,0x1bf
00549ee0  7716                      JA 0x00549ef8
00549ee2  8b4c8624                  MOV ECX,dword ptr [ESI + EAX*0x4 + 0x24]
00549ee6  85c9                      TEST ECX,ECX
00549ee8  740e                      JZ 0x00549ef8
00549eea  83790407                  CMP dword ptr [ECX + 0x4],0x7
00549eee  7508                      JNZ 0x00549ef8
00549ef0  66899c466c0e0000          MOV word ptr [ESI + EAX*0x2 + 0xe6c],BX
00549ef8  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
00549eff  0f8455f8ffff              JZ 0x0054975a
00549f05  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00549f0d  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00549f14  9f                        LAHF
00549f15  f6c444                    TEST AH,0x44
00549f18  7a19                      JP 0x00549f33
00549f1a  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00549f22  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00549f29  9f                        LAHF
00549f2a  f6c444                    TEST AH,0x44
00549f2d  0f8b27f8ffff              JNP 0x0054975a
00549f33  ffb738030000              PUSH dword ptr [EDI + 0x338]
00549f39  8bce                      MOV ECX,ESI
00549f3b  ffb734030000              PUSH dword ptr [EDI + 0x334]
00549f41  e83a682a00                CALL 0x007f0780
00549f46  83f801                    CMP EAX,0x1
00549f49  0f840bf8ffff              JZ 0x0054975a
00549f4f  8d4c2468                  LEA ECX,[ESP + 0x68]
00549f53  e818bdeeff                CALL 0x00435c70
00549f58  8b17                      MOV EDX,dword ptr [EDI]
00549f5a  8bcf                      MOV ECX,EDI
00549f5c  50                        PUSH EAX
00549f5d  ff5224                    CALL dword ptr [EDX + 0x24]
00549f60  5f                        POP EDI
00549f61  5e                        POP ESI
00549f62  5b                        POP EBX
00549f63  8b8c2430010000            MOV ECX,dword ptr [ESP + 0x130]
00549f6a  33cc                      XOR ECX,ESP
00549f6c  e8ba515a00                CALL 0x00aef12b
00549f71  8be5                      MOV ESP,EBP
00549f73  5d                        POP EBP
00549f74  c3                        RET
00549f75  83fb08                    CMP EBX,0x8
00549f78  0f85e6feffff              JNZ 0x00549e64
00549f7e  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
00549f86  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00549f8e  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
00549f96  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00549f9e  0f28c1                    MOVAPS XMM0,XMM1
00549fa1  f30f114c2444              MOVSS dword ptr [ESP + 0x44],XMM1
00549fa7  f30f59c1                  MULSS XMM0,XMM1
00549fab  0f28ca                    MOVAPS XMM1,XMM2
00549fae  f30f11542448              MOVSS dword ptr [ESP + 0x48],XMM2
00549fb4  f30f59ca                  MULSS XMM1,XMM2
00549fb8  f30f58c1                  ADDSS XMM0,XMM1
00549fbc  e88fbaeeff                CALL 0x00435a50
00549fc1  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
00549fc9  0f28d0                    MOVAPS XMM2,XMM0
00549fcc  0f2fca                    COMISS XMM1,XMM2
00549fcf  7638                      JBE 0x0054a009
00549fd1  83fe0f                    CMP ESI,0xf
00549fd4  7d33                      JGE 0x0054a009
00549fd6  e8854f1a00                CALL 0x006eef60
00549fdb  33d2                      XOR EDX,EDX
00549fdd  8bb7a00b0000              MOV ESI,dword ptr [EDI + 0xba0]
00549fe3  bb05000000                MOV EBX,0x5
00549fe8  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00549ff2  f7f3                      DIV EBX
00549ff4  f7da                      NEG EDX
00549ff6  1bd2                      SBB EDX,EDX
00549ff8  81e2e8030000              AND EDX,0x3e8
00549ffe  899710040000              MOV dword ptr [EDI + 0x410],EDX
0054a004  e9ce000000                JMP 0x0054a0d7
0054a009  f30f100554a3ba00          MOVSS XMM0,dword ptr [0x00baa354]
0054a011  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0054a019  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
0054a020  f30f5ec2                  DIVSS XMM0,XMM2
0054a024  f30f104c2448              MOVSS XMM1,dword ptr [ESP + 0x48]
0054a02a  f30f10542444              MOVSS XMM2,dword ptr [ESP + 0x44]
0054a030  9f                        LAHF
0054a031  f30f59c8                  MULSS XMM1,XMM0
0054a035  f30f59d0                  MULSS XMM2,XMM0
0054a039  f6c444                    TEST AH,0x44
0054a03c  7b46                      JNP 0x0054a084
0054a03e  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0054a046  f30f59c8                  MULSS XMM1,XMM0
0054a04a  f30f59d0                  MULSS XMM2,XMM0
0054a04e  f30f5ecb                  DIVSS XMM1,XMM3
0054a052  f30f5ed3                  DIVSS XMM2,XMM3
0054a056  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
0054a05e  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0054a066  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0054a06e  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0054a076  8bb7a00b0000              MOV ESI,dword ptr [EDI + 0xba0]
0054a07c  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0054a084  f30f10a79c030000          MOVSS XMM4,dword ptr [EDI + 0x39c]
0054a08c  0f2e2554a4ba00            UCOMISS XMM4,dword ptr [0x00baa454]
0054a093  660f6ed6                  MOVD XMM2,ESI
0054a097  0f5bd2                    CVTDQ2PS XMM2,XMM2
0054a09a  9f                        LAHF
0054a09b  f30f59153ca0ba00          MULSS XMM2,dword ptr [0x00baa03c]
0054a0a3  f30f5815e0a3ba00          ADDSS XMM2,dword ptr [0x00baa3e0]
0054a0ab  f6c444                    TEST AH,0x44
0054a0ae  7b16                      JNP 0x0054a0c6
0054a0b0  0f28ca                    MOVAPS XMM1,XMM2
0054a0b3  0f28c2                    MOVAPS XMM0,XMM2
0054a0b6  f30f58cc                  ADDSS XMM1,XMM4
0054a0ba  f30f59c4                  MULSS XMM0,XMM4
0054a0be  f30f5cc8                  SUBSS XMM1,XMM0
0054a0c2  f30f5ed1                  DIVSS XMM2,XMM1
0054a0c6  f30f59da                  MULSS XMM3,XMM2
0054a0ca  bb05000000                MOV EBX,0x5
0054a0cf  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
0054a0d7  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0054a0df  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0054a0e7  2bc8                      SUB ECX,EAX
0054a0e9  03ce                      ADD ECX,ESI
0054a0eb  8b742450                  MOV ESI,dword ptr [ESP + 0x50]
0054a0ef  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
0054a0f5  e973fdffff                JMP 0x00549e6d
0054a0fa  0f855af6ffff              JNZ 0x0054975a
0054a100  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0054a106  85c9                      TEST ECX,ECX
0054a108  0f8445f6ffff              JZ 0x00549753
0054a10e  81792837010000            CMP dword ptr [ECX + 0x28],0x137
0054a115  0f8538f6ffff              JNZ 0x00549753
0054a11b  6a01                      PUSH 0x1
0054a11d  83c148                    ADD ECX,0x48
0054a120  e87b10ecff                CALL 0x0040b1a0
0054a125  85c0                      TEST EAX,EAX
0054a127  0f84e1010000              JZ 0x0054a30e
0054a12d  80780c00                  CMP byte ptr [EAX + 0xc],0x0
0054a131  0f84d7010000              JZ 0x0054a30e
0054a137  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0054a13b  8bcf                      MOV ECX,EDI
0054a13d  f30f5e0524a3ba00          DIVSS XMM0,dword ptr [0x00baa324]
0054a145  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
0054a14b  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0054a150  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
0054a156  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
0054a15e  f30f5c87b00b0000          SUBSS XMM0,dword ptr [EDI + 0xbb0]
0054a166  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
0054a16d  f30f59053ca1ba00          MULSS XMM0,dword ptr [0x00baa13c]
0054a175  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0054a17b  e8f0d5efff                CALL 0x00447770
0054a180  8bcf                      MOV ECX,EDI
0054a182  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0054a18a  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
0054a192  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
0054a198  f30f11542450              MOVSS dword ptr [ESP + 0x50],XMM2
0054a19e  e8cdd5efff                CALL 0x00447770
0054a1a3  f30f1044244c              MOVSS XMM0,dword ptr [ESP + 0x4c]
0054a1a9  8bcf                      MOV ECX,EDI
0054a1ab  f30f58442458              ADDSS XMM0,dword ptr [ESP + 0x58]
0054a1b1  f30f104c2450              MOVSS XMM1,dword ptr [ESP + 0x50]
0054a1b7  f30f5c8034030000          SUBSS XMM0,dword ptr [EAX + 0x334]
0054a1bf  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
0054a1c5  0f57c0                    XORPS XMM0,XMM0
0054a1c8  f30f58c8                  ADDSS XMM1,XMM0
0054a1cc  f30f5c8838030000          SUBSS XMM1,dword ptr [EAX + 0x338]
0054a1d4  f30f114c2450              MOVSS dword ptr [ESP + 0x50],XMM1
0054a1da  e891d5efff                CALL 0x00447770
0054a1df  f30f105c2448              MOVSS XMM3,dword ptr [ESP + 0x48]
0054a1e5  83ec08                    SUB ESP,0x8
0054a1e8  0f28c3                    MOVAPS XMM0,XMM3
0054a1eb  0f28cb                    MOVAPS XMM1,XMM3
0054a1ee  f30f59442458              MULSS XMM0,dword ptr [ESP + 0x58]
0054a1f4  f30f594c2454              MULSS XMM1,dword ptr [ESP + 0x54]
0054a1fa  f30f588038030000          ADDSS XMM0,dword ptr [EAX + 0x338]
0054a202  f30f588834030000          ADDSS XMM1,dword ptr [EAX + 0x334]
0054a20a  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0054a212  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0054a21a  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0054a222  f30f1044244c              MOVSS XMM0,dword ptr [ESP + 0x4c]
0054a228  f30f5e0524a3ba00          DIVSS XMM0,dword ptr [0x00baa324]
0054a230  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0054a238  f30f5c0548a8ba00          SUBSS XMM0,dword ptr [0x00baa848]
0054a240  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
0054a246  f30f59c3                  MULSS XMM0,XMM3
0054a24a  f30f580548a8ba00          ADDSS XMM0,dword ptr [0x00baa848]
0054a252  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
0054a25a  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0054a262  f30f5cc3                  SUBSS XMM0,XMM3
0054a266  f30f5905a4aeba00          MULSS XMM0,dword ptr [0x00baaea4]
0054a26e  f30f11442460              MOVSS dword ptr [ESP + 0x60],XMM0
0054a274  d9442460                  FLD dword ptr [ESP + 0x60]
0054a278  dd1c24                    FSTP qword ptr [ESP]
0054a27b  e897665a00                CALL 0x00af0917
0054a280  d95c2460                  FSTP dword ptr [ESP + 0x60]
0054a284  d9442460                  FLD dword ptr [ESP + 0x60]
0054a288  83c408                    ADD ESP,0x8
0054a28b  e8e0645a00                CALL 0x00af0770
0054a290  f30f104c2450              MOVSS XMM1,dword ptr [ESP + 0x50]
0054a296  f30f1044244c              MOVSS XMM0,dword ptr [ESP + 0x4c]
0054a29c  f30f59c0                  MULSS XMM0,XMM0
0054a2a0  898754030000              MOV dword ptr [EDI + 0x354],EAX
0054a2a6  f30f59c9                  MULSS XMM1,XMM1
0054a2aa  f30f58c8                  ADDSS XMM1,XMM0
0054a2ae  f30f10442444              MOVSS XMM0,dword ptr [ESP + 0x44]
0054a2b4  f30f59c0                  MULSS XMM0,XMM0
0054a2b8  f30f58c1                  ADDSS XMM0,XMM1
0054a2bc  e88fb7eeff                CALL 0x00435a50
0054a2c1  f30f59442448              MULSS XMM0,dword ptr [ESP + 0x48]
0054a2c7  8d4f48                    LEA ECX,[EDI + 0x48]
0054a2ca  6a00                      PUSH 0x0
0054a2cc  0f57c9                    XORPS XMM1,XMM1
0054a2cf  f30f59059ca0ba00          MULSS XMM0,dword ptr [0x00baa09c]
0054a2d7  f30f5fc1                  MAXSS XMM0,XMM1
0054a2db  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
0054a2e3  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
0054a2e9  e8320fecff                CALL 0x0040b220
0054a2ee  f30f10442458              MOVSS XMM0,dword ptr [ESP + 0x58]
0054a2f4  f30f114054                MOVSS dword ptr [EAX + 0x54],XMM0
0054a2f9  5f                        POP EDI
0054a2fa  5e                        POP ESI
0054a2fb  5b                        POP EBX
0054a2fc  8b8c2430010000            MOV ECX,dword ptr [ESP + 0x130]
0054a303  33cc                      XOR ECX,ESP
0054a305  e8214e5a00                CALL 0x00aef12b
0054a30a  8be5                      MOV ESP,EBP
0054a30c  5d                        POP EBP
0054a30d  c3                        RET
0054a30e  8bcf                      MOV ECX,EDI
0054a310  e85bd4efff                CALL 0x00447770
0054a315  8b8834030000              MOV ECX,dword ptr [EAX + 0x334]
0054a31b  898f3c030000              MOV dword ptr [EDI + 0x33c],ECX
0054a321  8b8038030000              MOV EAX,dword ptr [EAX + 0x338]
0054a327  8b8c243c010000            MOV ECX,dword ptr [ESP + 0x13c]
0054a32e  898740030000              MOV dword ptr [EDI + 0x340],EAX
0054a334  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
0054a33b  5f                        POP EDI
0054a33c  5e                        POP ESI
0054a33d  5b                        POP EBX
0054a33e  33cc                      XOR ECX,ESP
0054a340  e8e64d5a00                CALL 0x00aef12b
0054a345  8be5                      MOV ESP,EBP
0054a347  5d                        POP EBP
0054a348  c3                        RET
