; J460 NPC AI 0x00468180 AI_00468180
; types=101
; identities=101.0.0,101.1.0
; entry=00468180
00468180  55                        PUSH EBP
00468181  8bec                      MOV EBP,ESP
00468183  83e4f8                    AND ESP,0xfffffff8
00468186  81ec40030000              SUB ESP,0x340
0046818c  a1b493bf00                MOV EAX,[0x00bf93b4]
00468191  33c4                      XOR EAX,ESP
00468193  8984243c030000            MOV dword ptr [ESP + 0x33c],EAX
0046819a  56                        PUSH ESI
0046819b  57                        PUSH EDI
0046819c  8bf9                      MOV EDI,ECX
0046819e  897c2444                  MOV dword ptr [ESP + 0x44],EDI
004681a2  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004681a8  85c0                      TEST EAX,EAX
004681aa  7536                      JNZ 0x004681e2
004681ac  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004681b2  898734030000              MOV dword ptr [EDI + 0x334],EAX
004681b8  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004681be  898738030000              MOV dword ptr [EDI + 0x338],EAX
004681c4  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004681ce  5f                        POP EDI
004681cf  5e                        POP ESI
004681d0  8b8c243c030000            MOV ECX,dword ptr [ESP + 0x33c]
004681d7  33cc                      XOR ECX,ESP
004681d9  e84d6f6800                CALL 0x00aef12b
004681de  8be5                      MOV ESP,EBP
004681e0  5d                        POP EBP
004681e1  c3                        RET
004681e2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004681e6  f30f101570cbba00          MOVSS XMM2,dword ptr [0x00bacb70]
004681ee  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
004681f6  740d                      JZ 0x00468205
004681f8  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004681ff  0f85a0010000              JNZ 0x004683a5
00468205  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
0046820c  0f8f93010000              JG 0x004683a5
00468212  83f807                    CMP EAX,0x7
00468215  0f851a010000              JNZ 0x00468335
0046821b  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00468222  740a                      JZ 0x0046822e
00468224  8b07                      MOV EAX,dword ptr [EDI]
00468226  ff5028                    CALL dword ptr [EAX + 0x28]
00468229  e977010000                JMP 0x004683a5
0046822e  8b97c40b0000              MOV EDX,dword ptr [EDI + 0xbc4]
00468234  33c9                      XOR ECX,ECX
00468236  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046823a  0f95c1                    SETNZ CL
0046823d  83c103                    ADD ECX,0x3
00468240  8d4201                    LEA EAX,[EDX + 0x1]
00468243  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
00468249  3bd1                      CMP EDX,ECX
0046824b  0f8c86000000              JL 0x004682d7
00468251  e80a6d2800                CALL 0x006eef60
00468256  33d2                      XOR EDX,EDX
00468258  b907000000                MOV ECX,0x7
0046825d  f7f1                      DIV ECX
0046825f  85d2                      TEST EDX,EDX
00468261  7474                      JZ 0x004682d7
00468263  6a00                      PUSH 0x0
00468265  68dccdb100                PUSH 0xb1cddc
0046826a  8d4f48                    LEA ECX,[EDI + 0x48]
0046826d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00468277  e80421faff                CALL 0x0040a380
0046827c  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00468282  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0046828c  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00468294  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0046829b  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
004682a3  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
004682aa  6aff                      PUSH -0x1
004682ac  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
004682b2  ff742440                  PUSH dword ptr [ESP + 0x40]
004682b6  f30f104038                MOVSS XMM0,dword ptr [EAX + 0x38]
004682bb  f30f114c2440              MOVSS dword ptr [ESP + 0x40],XMM1
004682c1  ff742440                  PUSH dword ptr [ESP + 0x40]
004682c5  51                        PUSH ECX
004682c6  8bcf                      MOV ECX,EDI
004682c8  f30f110424                MOVSS dword ptr [ESP],XMM0
004682cd  e8ce3f2400                CALL 0x006ac2a0
004682d2  e9ce000000                JMP 0x004683a5
004682d7  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
004682dd  b904000000                MOV ECX,0x4
004682e2  83f804                    CMP EAX,0x4
004682e5  0f4fc1                    CMOVG EAX,ECX
004682e8  48                        DEC EAX
004682e9  89442414                  MOV dword ptr [ESP + 0x14],EAX
004682ed  99                        CDQ
004682ee  2bc2                      SUB EAX,EDX
004682f0  d1f8                      SAR EAX,0x1
004682f2  740f                      JZ 0x00468303
004682f4  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004682f8  7409                      JZ 0x00468303
004682fa  6a01                      PUSH 0x1
004682fc  6828e0b100                PUSH 0xb1e028
00468301  eb07                      JMP 0x0046830a
00468303  6a01                      PUSH 0x1
00468305  6804e0b100                PUSH 0xb1e004
0046830a  8d4f48                    LEA ECX,[EDI + 0x48]
0046830d  e8be22faff                CALL 0x0040a5d0
00468312  84c0                      TEST AL,AL
00468314  740f                      JZ 0x00468325
00468316  8d4f78                    LEA ECX,[EDI + 0x78]
00468319  e8921efaff                CALL 0x0040a1b0
0046831e  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00468325  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
00468329  f6d0                      NOT AL
0046832b  2401                      AND AL,0x1
0046832d  888748010000              MOV byte ptr [EDI + 0x148],AL
00468333  eb70                      JMP 0x004683a5
00468335  83f806                    CMP EAX,0x6
00468338  7552                      JNZ 0x0046838c
0046833a  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00468340  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
0046834a  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00468352  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
0046835a  0f57c2                    XORPS XMM0,XMM2
0046835d  6aff                      PUSH -0x1
0046835f  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00468365  0f57ca                    XORPS XMM1,XMM2
00468368  ff742440                  PUSH dword ptr [ESP + 0x40]
0046836c  f30f104038                MOVSS XMM0,dword ptr [EAX + 0x38]
00468371  f30f114c2440              MOVSS dword ptr [ESP + 0x40],XMM1
00468377  ff742440                  PUSH dword ptr [ESP + 0x40]
0046837b  f30f59c3                  MULSS XMM0,XMM3
0046837f  51                        PUSH ECX
00468380  f30f110424                MOVSS dword ptr [ESP],XMM0
00468385  e8163f2400                CALL 0x006ac2a0
0046838a  eb19                      JMP 0x004683a5
0046838c  6a00                      PUSH 0x0
0046838e  6854bcb100                PUSH 0xb1bc54
00468393  8d4f48                    LEA ECX,[EDI + 0x48]
00468396  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004683a0  e8db1ffaff                CALL 0x0040a380
004683a5  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004683ab  83f804                    CMP EAX,0x4
004683ae  7409                      JZ 0x004683b9
004683b0  83f807                    CMP EAX,0x7
004683b3  0f85cb0f0000              JNZ 0x00469384
004683b9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004683bd  0f84c10f0000              JZ 0x00469384
004683c3  6874d5b100                PUSH 0xb1d574
004683c8  8d4f78                    LEA ECX,[EDI + 0x78]
004683cb  e8002afaff                CALL 0x0040add0
004683d0  84c0                      TEST AL,AL
004683d2  0f84ac0f0000              JZ 0x00469384
004683d8  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
004683df  8db73c030000              LEA ESI,[EDI + 0x33c]
004683e5  51                        PUSH ECX
004683e6  c704240000803f            MOV dword ptr [ESP],0x3f800000
004683ed  6a00                      PUSH 0x0
004683ef  6a02                      PUSH 0x2
004683f1  51                        PUSH ECX
004683f2  8bcf                      MOV ECX,EDI
004683f4  0f8564010000              JNZ 0x0046855e
004683fa  c704243333333f            MOV dword ptr [ESP],0x3f333333
00468401  6a34                      PUSH 0x34
00468403  e898e72600                CALL 0x006d6ba0
00468408  8d8c24dc000000            LEA ECX,[ESP + 0xdc]
0046840f  e85ce1feff                CALL 0x00456570
00468414  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046841a  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0046841e  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
00468423  c78424f40000000d000000    MOV dword ptr [ESP + 0xf4],0xd
0046842e  8bb100830100              MOV ESI,dword ptr [ECX + 0x18300]
00468434  c78424ec000000cdcccc3c    MOV dword ptr [ESP + 0xec],0x3ccccccd
0046843f  c78424e80000000ad7233d    MOV dword ptr [ESP + 0xe8],0x3d23d70a
0046844a  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00468450  ff86fc700000              INC dword ptr [ESI + 0x70fc]
00468456  8b86fc700000              MOV EAX,dword ptr [ESI + 0x70fc]
0046845c  f30f118424dc000000        MOVSS dword ptr [ESP + 0xdc],XMM0
00468465  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
0046846b  f30f118c24e0000000        MOVSS dword ptr [ESP + 0xe0],XMM1
00468474  2501000080                AND EAX,0x80000001
00468479  7905                      JNS 0x00468480
0046847b  48                        DEC EAX
0046847c  83c8fe                    OR EAX,0xfffffffe
0046847f  40                        INC EAX
00468480  89442428                  MOV dword ptr [ESP + 0x28],EAX
00468484  83f802                    CMP EAX,0x2
00468487  7225                      JC 0x004684ae
00468489  6858c8b600                PUSH 0xb6c858
0046848e  6a10                      PUSH 0x10
00468490  e82b8e5a00                CALL 0x00a112c0
00468495  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046849b  83c408                    ADD ESP,0x8
0046849e  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
004684a4  f30f104c2424              MOVSS XMM1,dword ptr [ESP + 0x24]
004684aa  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
004684ae  0507040000                ADD EAX,0x407
004684b3  6a0c                      PUSH 0xc
004684b5  8d14c500000000            LEA EDX,[EAX*0x8 + 0x0]
004684bc  2bd0                      SUB EDX,EAX
004684be  8b8424f4000000            MOV EAX,dword ptr [ESP + 0xf4]
004684c5  f30f110496                MOVSS dword ptr [ESI + EDX*0x4],XMM0
004684ca  f30f108424e8000000        MOVSS XMM0,dword ptr [ESP + 0xe8]
004684d3  f30f114c9604              MOVSS dword ptr [ESI + EDX*0x4 + 0x4],XMM1
004684d9  f30f11449608              MOVSS dword ptr [ESI + EDX*0x4 + 0x8],XMM0
004684df  c744960c0ad7233d          MOV dword ptr [ESI + EDX*0x4 + 0xc],0x3d23d70a
004684e7  c7449610cdcccc3c          MOV dword ptr [ESI + EDX*0x4 + 0x10],0x3ccccccd
004684ef  89449614                  MOV dword ptr [ESI + EDX*0x4 + 0x14],EAX
004684f3  c74496180d000000          MOV dword ptr [ESI + EDX*0x4 + 0x18],0xd
004684fb  e870b12900                CALL 0x00703670
00468500  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00468508  8d8424dc010000            LEA EAX,[ESP + 0x1dc]
0046850f  0f57c0                    XORPS XMM0,XMM0
00468512  c78424fc01000000000000    MOV dword ptr [ESP + 0x1fc],0x0
0046851d  0f118424ec010000          MOVUPS xmmword ptr [ESP + 0x1ec],XMM0
00468525  8db73c030000              LEA ESI,[EDI + 0x33c]
0046852b  8bcf                      MOV ECX,EDI
0046852d  0f2805a0beba00            MOVAPS XMM0,xmmword ptr [0x00babea0]
00468534  50                        PUSH EAX
00468535  56                        PUSH ESI
00468536  c784240802000000000000    MOV dword ptr [ESP + 0x208],0x0
00468541  c784240c02000000000000    MOV dword ptr [ESP + 0x20c],0x0
0046854c  0f118424e4010000          MOVUPS xmmword ptr [ESP + 0x1e4],XMM0
00468554  e8f7df2400                CALL 0x006b6550
00468559  e930010000                JMP 0x0046868e
0046855e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00468565  6a30                      PUSH 0x30
00468567  e834e62600                CALL 0x006d6ba0
0046856c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00468572  6a08                      PUSH 0x8
00468574  e8f7b02900                CALL 0x00703670
00468579  e8e2692800                CALL 0x006eef60
0046857e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00468584  6a00                      PUSH 0x0
00468586  50                        PUSH EAX
00468587  6a02                      PUSH 0x2
00468589  57                        PUSH EDI
0046858a  6840b6c700                PUSH 0xc7b640
0046858f  56                        PUSH ESI
00468590  6a10                      PUSH 0x10
00468592  68e8030000                PUSH 0x3e8
00468597  e8745e2900                CALL 0x006fe410
0046859c  8bf0                      MOV ESI,EAX
0046859e  e8bd692800                CALL 0x006eef60
004685a3  6a01                      PUSH 0x1
004685a5  f6d0                      NOT AL
004685a7  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
004685b1  6a00                      PUSH 0x0
004685b3  2401                      AND AL,0x1
004685b5  c786e000000000007041      MOV dword ptr [ESI + 0xe0],0x41700000
004685bf  68ff000000                PUSH 0xff
004685c4  0f57c0                    XORPS XMM0,XMM0
004685c7  888648010000              MOV byte ptr [ESI + 0x148],AL
004685cd  8b06                      MOV EAX,dword ptr [ESI]
004685cf  8d8c2414020000            LEA ECX,[ESP + 0x214]
004685d6  6aff                      PUSH -0x1
004685d8  0f11842428020000          MOVUPS xmmword ptr [ESP + 0x228],XMM0
004685e0  51                        PUSH ECX
004685e1  0f2805b0bdba00            MOVAPS XMM0,xmmword ptr [0x00babdb0]
004685e8  8bce                      MOV ECX,ESI
004685ea  c784243c02000000000000    MOV dword ptr [ESP + 0x23c],0x0
004685f5  c784244002000000000000    MOV dword ptr [ESP + 0x240],0x0
00468600  c784244402000000000000    MOV dword ptr [ESP + 0x244],0x0
0046860b  0f1184241c020000          MOVUPS xmmword ptr [ESP + 0x21c],XMM0
00468613  ff503c                    CALL dword ptr [EAX + 0x3c]
00468616  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0046861c  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00468622  85c9                      TEST ECX,ECX
00468624  741a                      JZ 0x00468640
00468626  89442454                  MOV dword ptr [ESP + 0x54],EAX
0046862a  81c1cc030000              ADD ECX,0x3cc
00468630  8d442454                  LEA EAX,[ESP + 0x54]
00468634  50                        PUSH EAX
00468635  e8d66b0600                CALL 0x004cf210
0046863a  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00468640  50                        PUSH EAX
00468641  8bcf                      MOV ECX,EDI
00468643  8938                      MOV dword ptr [EAX],EDI
00468645  e8a6560600                CALL 0x004cdcf0
0046864a  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
00468652  8bce                      MOV ECX,ESI
00468654  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0046865c  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00468664  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0046866c  8b06                      MOV EAX,dword ptr [ESI]
0046866e  c6866404000001            MOV byte ptr [ESI + 0x464],0x1
00468675  f30f118e68040000          MOVSS dword ptr [ESI + 0x468],XMM1
0046867d  f30f11866c040000          MOVSS dword ptr [ESI + 0x46c],XMM0
00468685  ff500c                    CALL dword ptr [EAX + 0xc]
00468688  8db73c030000              LEA ESI,[EDI + 0x33c]
0046868e  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00468694  33c0                      XOR EAX,EAX
00468696  f30f100d08abba00          MOVSS XMM1,dword ptr [0x00baab08]
0046869e  81e100000010              AND ECX,0x10000000
004686a4  0bc1                      OR EAX,ECX
004686a6  7408                      JZ 0x004686b0
004686a8  f30f100d24a9ba00          MOVSS XMM1,dword ptr [0x00baa924]
004686b0  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
004686b7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004686bd  6a00                      PUSH 0x0
004686bf  6a00                      PUSH 0x0
004686c1  6800000001                PUSH 0x1000000
004686c6  83ec10                    SUB ESP,0x10
004686c9  8bc4                      MOV EAX,ESP
004686cb  57                        PUSH EDI
004686cc  6a00                      PUSH 0x0
004686ce  83ec08                    SUB ESP,0x8
004686d1  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
004686d4  c744240400003042          MOV dword ptr [ESP + 0x4],0x42300000
004686dc  f30f110c24                MOVSS dword ptr [ESP],XMM1
004686e1  56                        PUSH ESI
004686e2  e8b96b2900                CALL 0x006ff2a0
004686e7  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
004686ee  7572                      JNZ 0x00468762
004686f0  8d8c2460020000            LEA ECX,[ESP + 0x260]
004686f7  e83468fdff                CALL 0x0043ef30
004686fc  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00468700  7530                      JNZ 0x00468732
00468702  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00468709  0f1184248c020000          MOVUPS xmmword ptr [ESP + 0x28c],XMM0
00468711  c78424ac0200000000803f    MOV dword ptr [ESP + 0x2ac],0x3f800000
0046871c  c78424b00200000000803f    MOV dword ptr [ESP + 0x2b0],0x3f800000
00468727  c78424b40200000000803f    MOV dword ptr [ESP + 0x2b4],0x3f800000
00468732  8d842460020000            LEA EAX,[ESP + 0x260]
00468739  c78424bc00000000002041    MOV dword ptr [ESP + 0xbc],0x41200000
00468744  50                        PUSH EAX
00468745  6a08                      PUSH 0x8
00468747  8d8424c4000000            LEA EAX,[ESP + 0xc4]
0046874e  c78424c800000000000000    MOV dword ptr [ESP + 0xc8],0x0
00468759  50                        PUSH EAX
0046875a  56                        PUSH ESI
0046875b  8bcf                      MOV ECX,EDI
0046875d  e87e2b2600                CALL 0x006cb2e0
00468762  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00468766  0f85180c0000              JNZ 0x00469384
0046876c  e8ef672800                CALL 0x006eef60
00468771  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00468777  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0046877d  89442450                  MOV dword ptr [ESP + 0x50],EAX
00468781  8d442450                  LEA EAX,[ESP + 0x50]
00468785  50                        PUSH EAX
00468786  8d442424                  LEA EAX,[ESP + 0x24]
0046878a  894c2420                  MOV dword ptr [ESP + 0x20],ECX
0046878e  50                        PUSH EAX
0046878f  57                        PUSH EDI
00468790  6840b6c700                PUSH 0xc7b640
00468795  51                        PUSH ECX
00468796  8d442424                  LEA EAX,[ESP + 0x24]
0046879a  89742440                  MOV dword ptr [ESP + 0x40],ESI
0046879e  50                        PUSH EAX
0046879f  8d442464                  LEA EAX,[ESP + 0x64]
004687a3  c744243800000000          MOV dword ptr [ESP + 0x38],0x0
004687ab  50                        PUSH EAX
004687ac  c744242c19000000          MOV dword ptr [ESP + 0x2c],0x19
004687b4  c7442468e8030000          MOV dword ptr [ESP + 0x68],0x3e8
004687bc  e81fbf3f00                CALL 0x008646e0
004687c1  a17816c700                MOV EAX,[0x00c71678]
004687c6  8b54244c                  MOV EDX,dword ptr [ESP + 0x4c]
004687ca  89542418                  MOV dword ptr [ESP + 0x18],EDX
004687ce  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004687d5  0f8ca1020000              JL 0x00468a7c
004687db  8b8020660200              MOV EAX,dword ptr [EAX + 0x26620]
004687e1  89442408                  MOV dword ptr [ESP + 0x8],EAX
004687e5  e876672800                CALL 0x006eef60
004687ea  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004687f2  8bf0                      MOV ESI,EAX
004687f4  a174f6b100                MOV EAX,[0x00b1f674]
004687f9  8b542418                  MOV EDX,dword ptr [ESP + 0x18]
004687fd  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
00468801  8974240c                  MOV dword ptr [ESP + 0xc],ESI
00468805  660fd68424c8000000        MOVQ qword ptr [ESP + 0xc8],XMM0
0046880e  89442440                  MOV dword ptr [ESP + 0x40],EAX
00468812  898424d0000000            MOV dword ptr [ESP + 0xd0],EAX
00468819  83fa05                    CMP EDX,0x5
0046881c  0f8589000000              JNZ 0x004688ab
00468822  81f92c010000              CMP ECX,0x12c
00468828  0f8704020000              JA 0x00468a32
0046882e  0f8457010000              JZ 0x0046898b
00468834  83f946                    CMP ECX,0x46
00468837  0f84a5000000              JZ 0x004688e2
0046883d  83f964                    CMP ECX,0x64
00468840  7569                      JNZ 0x004688ab
00468842  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
00468846  8b742408                  MOV ESI,dword ptr [ESP + 0x8]
0046884a  83f819                    CMP EAX,0x19
0046884d  7438                      JZ 0x00468887
0046884f  89442434                  MOV dword ptr [ESP + 0x34],EAX
00468853  8d4e20                    LEA ECX,[ESI + 0x20]
00468856  8d442434                  LEA EAX,[ESP + 0x34]
0046885a  50                        PUSH EAX
0046885b  8d842484010000            LEA EAX,[ESP + 0x184]
00468862  50                        PUSH EAX
00468863  e83800fcff                CALL 0x004288a0
00468868  8b8c2488010000            MOV ECX,dword ptr [ESP + 0x188]
0046886f  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
00468873  80790d00                  CMP byte ptr [ECX + 0xd],0x0
00468877  750a                      JNZ 0x00468883
00468879  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
0046887c  7c05                      JL 0x00468883
0046887e  3b4e20                    CMP ECX,dword ptr [ESI + 0x20]
00468881  7504                      JNZ 0x00468887
00468883  b101                      MOV CL,0x1
00468885  eb02                      JMP 0x00468889
00468887  32c9                      XOR CL,CL
00468889  85c0                      TEST EAX,EAX
0046888b  7404                      JZ 0x00468891
0046888d  84c9                      TEST CL,CL
0046888f  7412                      JZ 0x004688a3
00468891  8b06                      MOV EAX,dword ptr [ESI]
00468893  8bce                      MOV ECX,ESI
00468895  6a00                      PUSH 0x0
00468897  8b8084000000              MOV EAX,dword ptr [EAX + 0x84]
0046889d  ffd0                      CALL EAX
0046889f  89442420                  MOV dword ptr [ESP + 0x20],EAX
004688a3  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
004688a7  8b542418                  MOV EDX,dword ptr [ESP + 0x18]
004688ab  8b74242c                  MOV ESI,dword ptr [ESP + 0x2c]
004688af  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004688b5  2500000020                AND EAX,0x20000000
004688ba  83c800                    OR EAX,0x0
004688bd  0f84f2010000              JZ 0x00468ab5
004688c3  81fae8030000              CMP EDX,0x3e8
004688c9  0f85e6010000              JNZ 0x00468ab5
004688cf  8d41ea                    LEA EAX,[ECX + -0x16]
004688d2  83f804                    CMP EAX,0x4
004688d5  0f87da010000              JA 0x00468ab5
004688db  ff2485aca04600            JMP dword ptr [EAX*0x4 + 0x46a0ac]
004688e2  8b542420                  MOV EDX,dword ptr [ESP + 0x20]
004688e6  8bc2                      MOV EAX,EDX
004688e8  c1e80b                    SHR EAX,0xb
004688eb  89442414                  MOV dword ptr [ESP + 0x14],EAX
004688ef  90                        NOP
004688f0  85d2                      TEST EDX,EDX
004688f2  742c                      JZ 0x00468920
004688f4  8b442408                  MOV EAX,dword ptr [ESP + 0x8]
004688f8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004688fe  6a00                      PUSH 0x0
00468900  52                        PUSH EDX
00468901  8b00                      MOV EAX,dword ptr [EAX]
00468903  8d8940a70100              LEA ECX,[ECX + 0x1a740]
00468909  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
0046890c  e86fc12c00                CALL 0x00734a80
00468911  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
00468915  50                        PUSH EAX
00468916  ffd6                      CALL ESI
00468918  84c0                      TEST AL,AL
0046891a  7487                      JZ 0x004688a3
0046891c  8b74240c                  MOV ESI,dword ptr [ESP + 0xc]
00468920  a17816c700                MOV EAX,[0x00c71678]
00468925  0540a70100                ADD EAX,0x1a740
0046892a  89442434                  MOV dword ptr [ESP + 0x34],EAX
0046892e  85f6                      TEST ESI,ESI
00468930  7510                      JNZ 0x00468942
00468932  6854bfb600                PUSH 0xb6bf54
00468937  6a10                      PUSH 0x10
00468939  e882895a00                CALL 0x00a112c0
0046893e  83c408                    ADD ESP,0x8
00468941  cc                        INT3
00468942  8b8c24c8000000            MOV ECX,dword ptr [ESP + 0xc8]
00468949  8bd6                      MOV EDX,ESI
0046894b  d3ea                      SHR EDX,CL
0046894d  8b8c24cc000000            MOV ECX,dword ptr [ESP + 0xcc]
00468954  33d6                      XOR EDX,ESI
00468956  8bc2                      MOV EAX,EDX
00468958  d3e0                      SHL EAX,CL
0046895a  8b4c2440                  MOV ECX,dword ptr [ESP + 0x40]
0046895e  33c2                      XOR EAX,EDX
00468960  8bf0                      MOV ESI,EAX
00468962  d3ee                      SHR ESI,CL
00468964  8b4c2434                  MOV ECX,dword ptr [ESP + 0x34]
00468968  33f0                      XOR ESI,EAX
0046896a  56                        PUSH ESI
0046896b  89742410                  MOV dword ptr [ESP + 0x10],ESI
0046896f  e88cbf2c00                CALL 0x00734900
00468974  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
00468978  8bd0                      MOV EDX,EAX
0046897a  83e101                    AND ECX,0x1
0046897d  c1e10b                    SHL ECX,0xb
00468980  0bd1                      OR EDX,ECX
00468982  89542420                  MOV dword ptr [ESP + 0x20],EDX
00468986  e965ffffff                JMP 0x004688f0
0046898b  8b542420                  MOV EDX,dword ptr [ESP + 0x20]
0046898f  90                        NOP
00468990  85d2                      TEST EDX,EDX
00468992  7414                      JZ 0x004689a8
00468994  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
00468998  52                        PUSH EDX
00468999  8b01                      MOV EAX,dword ptr [ECX]
0046899b  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0046899e  ffd0                      CALL EAX
004689a0  84c0                      TEST AL,AL
004689a2  0f84fbfeffff              JZ 0x004688a3
004689a8  85f6                      TEST ESI,ESI
004689aa  7510                      JNZ 0x004689bc
004689ac  6854bfb600                PUSH 0xb6bf54
004689b1  6a10                      PUSH 0x10
004689b3  e808895a00                CALL 0x00a112c0
004689b8  83c408                    ADD ESP,0x8
004689bb  cc                        INT3
004689bc  8b8c24c8000000            MOV ECX,dword ptr [ESP + 0xc8]
004689c3  8bc6                      MOV EAX,ESI
004689c5  d3e8                      SHR EAX,CL
004689c7  8b8c24cc000000            MOV ECX,dword ptr [ESP + 0xcc]
004689ce  33c6                      XOR EAX,ESI
004689d0  8bd0                      MOV EDX,EAX
004689d2  d3e2                      SHL EDX,CL
004689d4  8b4c2440                  MOV ECX,dword ptr [ESP + 0x40]
004689d8  33d0                      XOR EDX,EAX
004689da  6a01                      PUSH 0x1
004689dc  6a0a                      PUSH 0xa
004689de  8bf2                      MOV ESI,EDX
004689e0  6a0a                      PUSH 0xa
004689e2  d3ee                      SHR ESI,CL
004689e4  33f2                      XOR ESI,EDX
004689e6  6a19                      PUSH 0x19
004689e8  56                        PUSH ESI
004689e9  e892b72c00                CALL 0x00734180
004689ee  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004689f6  8b0d74f6b100              MOV ECX,dword ptr [0x00b1f674]
004689fc  6a00                      PUSH 0x0
004689fe  6a01                      PUSH 0x1
00468a00  6a01                      PUSH 0x1
00468a02  50                        PUSH EAX
00468a03  8d8424dc010000            LEA EAX,[ESP + 0x1dc]
00468a0a  89b424dc010000            MOV dword ptr [ESP + 0x1dc],ESI
00468a11  50                        PUSH EAX
00468a12  660fd68424e4010000        MOVQ qword ptr [ESP + 0x1e4],XMM0
00468a1b  898c24ec010000            MOV dword ptr [ESP + 0x1ec],ECX
00468a22  e819c93f00                CALL 0x00865340
00468a27  8bd0                      MOV EDX,EAX
00468a29  89542420                  MOV dword ptr [ESP + 0x20],EDX
00468a2d  e95effffff                JMP 0x00468990
00468a32  81f95e010000              CMP ECX,0x15e
00468a38  0f856dfeffff              JNZ 0x004688ab
00468a3e  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
00468a42  8b7c2408                  MOV EDI,dword ptr [ESP + 0x8]
00468a46  85c9                      TEST ECX,ECX
00468a48  740e                      JZ 0x00468a58
00468a4a  8b07                      MOV EAX,dword ptr [EDI]
00468a4c  51                        PUSH ECX
00468a4d  8bcf                      MOV ECX,EDI
00468a4f  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
00468a52  ffd0                      CALL EAX
00468a54  84c0                      TEST AL,AL
00468a56  741b                      JZ 0x00468a73
00468a58  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00468a5e  6a00                      PUSH 0x0
00468a60  8d8940a70100              LEA ECX,[ECX + 0x1a740]
00468a66  e835b22c00                CALL 0x00733ca0
00468a6b  8bc8                      MOV ECX,EAX
00468a6d  894c2420                  MOV dword ptr [ESP + 0x20],ECX
00468a71  ebd3                      JMP 0x00468a46
00468a73  8b7c2444                  MOV EDI,dword ptr [ESP + 0x44]
00468a77  e927feffff                JMP 0x004688a3
00468a7c  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
00468a80  e92afeffff                JMP 0x004688af
00468a85  c74424102e000000          MOV dword ptr [ESP + 0x10],0x2e
00468a8d  eb26                      JMP 0x00468ab5
00468a8f  c744241035000000          MOV dword ptr [ESP + 0x10],0x35
00468a97  eb1c                      JMP 0x00468ab5
00468a99  c7442410cc000000          MOV dword ptr [ESP + 0x10],0xcc
00468aa1  eb12                      JMP 0x00468ab5
00468aa3  c74424102c000000          MOV dword ptr [ESP + 0x10],0x2c
00468aab  eb08                      JMP 0x00468ab5
00468aad  c74424102d000000          MOV dword ptr [ESP + 0x10],0x2d
00468ab5  8b8e80650200              MOV ECX,dword ptr [ESI + 0x26580]
00468abb  6a00                      PUSH 0x0
00468abd  52                        PUSH EDX
00468abe  e8cd752800                CALL 0x006f0090
00468ac3  89442414                  MOV dword ptr [ESP + 0x14],EAX
00468ac7  85c0                      TEST EAX,EAX
00468ac9  0f8467080000              JZ 0x00469336
00468acf  e8bcf95f00                CALL 0x00a68490
00468ad4  8954240c                  MOV dword ptr [ESP + 0xc],EDX
00468ad8  8bc8                      MOV ECX,EAX
00468ada  badb34b6d7                MOV EDX,0xd7b634db
00468adf  bf82de1b43                MOV EDI,0x431bde82
00468ae4  f7e2                      MUL EDX
00468ae6  89442458                  MOV dword ptr [ESP + 0x58],EAX
00468aea  8bf2                      MOV ESI,EDX
00468aec  8bc1                      MOV EAX,ECX
00468aee  b9db34b6d7                MOV ECX,0xd7b634db
00468af3  f7e7                      MUL EDI
00468af5  8bf8                      MOV EDI,EAX
00468af7  89542428                  MOV dword ptr [ESP + 0x28],EDX
00468afb  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
00468aff  f7e1                      MUL ECX
00468b01  8bc8                      MOV ECX,EAX
00468b03  89542424                  MOV dword ptr [ESP + 0x24],EDX
00468b07  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
00468b0b  ba82de1b43                MOV EDX,0x431bde82
00468b10  f7e2                      MUL EDX
00468b12  03ce                      ADD ECX,ESI
00468b14  8954240c                  MOV dword ptr [ESP + 0xc],EDX
00468b18  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
00468b1c  83d200                    ADC EDX,0x0
00468b1f  89442440                  MOV dword ptr [ESP + 0x40],EAX
00468b23  8b742440                  MOV ESI,dword ptr [ESP + 0x40]
00468b27  03f9                      ADD EDI,ECX
00468b29  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
00468b2d  83d100                    ADC ECX,0x0
00468b30  897c2458                  MOV dword ptr [ESP + 0x58],EDI
00468b34  8b7c2414                  MOV EDI,dword ptr [ESP + 0x14]
00468b38  33c0                      XOR EAX,EAX
00468b3a  03d1                      ADD EDX,ECX
00468b3c  8b4c240c                  MOV ECX,dword ptr [ESP + 0xc]
00468b40  13c0                      ADC EAX,EAX
00468b42  03f2                      ADD ESI,EDX
00468b44  13c8                      ADC ECX,EAX
00468b46  0facce12                  SHRD ESI,ECX,0x12
00468b4a  89742440                  MOV dword ptr [ESP + 0x40],ESI
00468b4e  8b742444                  MOV ESI,dword ptr [ESP + 0x44]
00468b52  c1e912                    SHR ECX,0x12
00468b55  894c240c                  MOV dword ptr [ESP + 0xc],ECX
00468b59  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
00468b5c  894734                    MOV dword ptr [EDI + 0x34],EAX
00468b5f  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
00468b62  894738                    MOV dword ptr [EDI + 0x38],EAX
00468b65  8d87c8030000              LEA EAX,[EDI + 0x3c8]
00468b6b  8b08                      MOV ECX,dword ptr [EAX]
00468b6d  85c9                      TEST ECX,ECX
00468b6f  741a                      JZ 0x00468b8b
00468b71  89442448                  MOV dword ptr [ESP + 0x48],EAX
00468b75  81c1cc030000              ADD ECX,0x3cc
00468b7b  8d442448                  LEA EAX,[ESP + 0x48]
00468b7f  50                        PUSH EAX
00468b80  e88b660600                CALL 0x004cf210
00468b85  8d87c8030000              LEA EAX,[EDI + 0x3c8]
00468b8b  50                        PUSH EAX
00468b8c  8bce                      MOV ECX,ESI
00468b8e  8930                      MOV dword ptr [EAX],ESI
00468b90  e85b510600                CALL 0x004cdcf0
00468b95  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
00468b9b  8bcf                      MOV ECX,EDI
00468b9d  ff742450                  PUSH dword ptr [ESP + 0x50]
00468ba1  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
00468ba7  8b8640030000              MOV EAX,dword ptr [ESI + 0x340]
00468bad  ff742424                  PUSH dword ptr [ESP + 0x24]
00468bb1  898740030000              MOV dword ptr [EDI + 0x340],EAX
00468bb7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00468bbf  ff742418                  PUSH dword ptr [ESP + 0x18]
00468bc3  8b07                      MOV EAX,dword ptr [EDI]
00468bc5  ff742424                  PUSH dword ptr [ESP + 0x24]
00468bc9  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00468bd1  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00468bd9  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00468be1  ff5004                    CALL dword ptr [EAX + 0x4]
00468be4  8b44242c                  MOV EAX,dword ptr [ESP + 0x2c]
00468be8  57                        PUSH EDI
00468be9  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
00468bef  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
00468bf5  8d4101                    LEA EAX,[ECX + 0x1]
00468bf8  898214120000              MOV dword ptr [EDX + 0x1214],EAX
00468bfe  894f20                    MOV dword ptr [EDI + 0x20],ECX
00468c01  8d8a18120000              LEA ECX,[EDX + 0x1218]
00468c07  e8f4f8faff                CALL 0x00418500
00468c0c  6a01                      PUSH 0x1
00468c0e  8bce                      MOV ECX,ESI
00468c10  e87bcf2400                CALL 0x006b5b90
00468c15  84c0                      TEST AL,AL
00468c17  0f8458050000              JZ 0x00469175
00468c1d  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00468c23  33c0                      XOR EAX,EAX
00468c25  81e100000010              AND ECX,0x10000000
00468c2b  0bc1                      OR EAX,ECX
00468c2d  0f840a020000              JZ 0x00468e3d
00468c33  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00468c39  8b542418                  MOV EDX,dword ptr [ESP + 0x18]
00468c3d  0d00000010                OR EAX,0x10000000
00468c42  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00468c48  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00468c4e  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00468c54  83fa09                    CMP EDX,0x9
00468c57  7414                      JZ 0x00468c6d
00468c59  83fa07                    CMP EDX,0x7
00468c5c  740f                      JZ 0x00468c6d
00468c5e  83c820                    OR EAX,0x20
00468c61  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00468c67  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00468c6d  8b9664020000              MOV EDX,dword ptr [ESI + 0x264]
00468c73  85d2                      TEST EDX,EDX
00468c75  0f84a8000000              JZ 0x00468d23
00468c7b  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
00468c7e  f30f108a3c030000          MOVSS XMM1,dword ptr [EDX + 0x33c]
00468c86  f30f108240030000          MOVSS XMM0,dword ptr [EDX + 0x340]
00468c8e  89442474                  MOV dword ptr [ESP + 0x74],EAX
00468c92  8b422c                    MOV EAX,dword ptr [EDX + 0x2c]
00468c95  89442478                  MOV dword ptr [ESP + 0x78],EAX
00468c99  8b4234                    MOV EAX,dword ptr [EDX + 0x34]
00468c9c  8944247c                  MOV dword ptr [ESP + 0x7c],EAX
00468ca0  8b4238                    MOV EAX,dword ptr [EDX + 0x38]
00468ca3  89842480000000            MOV dword ptr [ESP + 0x80],EAX
00468caa  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
00468cb0  f30f118c2468010000        MOVSS dword ptr [ESP + 0x168],XMM1
00468cb9  2500010000                AND EAX,0x100
00468cbe  83c800                    OR EAX,0x0
00468cc1  f30f1184246c010000        MOVSS dword ptr [ESP + 0x16c],XMM0
00468cca  f30f118c2484000000        MOVSS dword ptr [ESP + 0x84],XMM1
00468cd3  f30f108a60030000          MOVSS XMM1,dword ptr [EDX + 0x360]
00468cdb  f30f11842488000000        MOVSS dword ptr [ESP + 0x88],XMM0
00468ce4  f30f108264030000          MOVSS XMM0,dword ptr [EDX + 0x364]
00468cec  f30f118c2470010000        MOVSS dword ptr [ESP + 0x170],XMM1
00468cf5  f30f11842474010000        MOVSS dword ptr [ESP + 0x174],XMM0
00468cfe  f30f118c248c000000        MOVSS dword ptr [ESP + 0x8c],XMM1
00468d07  f30f11842490000000        MOVSS dword ptr [ESP + 0x90],XMM0
00468d10  0f8488000000              JZ 0x00468d9e
00468d16  c744240801000000          MOV dword ptr [ESP + 0x8],0x1
00468d1e  e985000000                JMP 0x00468da8
00468d23  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00468d2b  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00468d33  c744247400000000          MOV dword ptr [ESP + 0x74],0x0
00468d3b  c744247800000000          MOV dword ptr [ESP + 0x78],0x0
00468d43  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
00468d4b  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
00468d56  f30f118c2478010000        MOVSS dword ptr [ESP + 0x178],XMM1
00468d5f  f30f1184247c010000        MOVSS dword ptr [ESP + 0x17c],XMM0
00468d68  f30f118c2484000000        MOVSS dword ptr [ESP + 0x84],XMM1
00468d71  f30f11842488000000        MOVSS dword ptr [ESP + 0x88],XMM0
00468d7a  f30f118c2448010000        MOVSS dword ptr [ESP + 0x148],XMM1
00468d83  f30f1184244c010000        MOVSS dword ptr [ESP + 0x14c],XMM0
00468d8c  f30f118c248c000000        MOVSS dword ptr [ESP + 0x8c],XMM1
00468d95  f30f11842490000000        MOVSS dword ptr [ESP + 0x90],XMM0
00468d9e  33c0                      XOR EAX,EAX
00468da0  89442408                  MOV dword ptr [ESP + 0x8],EAX
00468da4  85d2                      TEST EDX,EDX
00468da6  741a                      JZ 0x00468dc2
00468da8  8b8268010000              MOV EAX,dword ptr [EDX + 0x168]
00468dae  2500000020                AND EAX,0x20000000
00468db3  83c800                    OR EAX,0x0
00468db6  7410                      JZ 0x00468dc8
00468db8  c744242802000000          MOV dword ptr [ESP + 0x28],0x2
00468dc0  eb12                      JMP 0x00468dd4
00468dc2  33c0                      XOR EAX,EAX
00468dc4  89442408                  MOV dword ptr [ESP + 0x8],EAX
00468dc8  c744242800000000          MOV dword ptr [ESP + 0x28],0x0
00468dd0  85d2                      TEST EDX,EDX
00468dd2  7419                      JZ 0x00468ded
00468dd4  8b8a6c010000              MOV ECX,dword ptr [EDX + 0x16c]
00468dda  33c0                      XOR EAX,EAX
00468ddc  81e100004000              AND ECX,0x400000
00468de2  0bc1                      OR EAX,ECX
00468de4  7407                      JZ 0x00468ded
00468de6  b904000000                MOV ECX,0x4
00468deb  eb02                      JMP 0x00468def
00468ded  33c9                      XOR ECX,ECX
00468def  8b442408                  MOV EAX,dword ptr [ESP + 0x8]
00468df3  0b442428                  OR EAX,dword ptr [ESP + 0x28]
00468df7  6a00                      PUSH 0x0
00468df9  0bc1                      OR EAX,ECX
00468dfb  8994249c000000            MOV dword ptr [ESP + 0x9c],EDX
00468e02  6a00                      PUSH 0x0
00468e04  8984249c000000            MOV dword ptr [ESP + 0x9c],EAX
00468e0b  8bcf                      MOV ECX,EDI
00468e0d  6aff                      PUSH -0x1
00468e0f  8d842480000000            LEA EAX,[ESP + 0x80]
00468e16  50                        PUSH EAX
00468e17  e8544a2400                CALL 0x006ad870
00468e1c  8b542418                  MOV EDX,dword ptr [ESP + 0x18]
00468e20  8d42f6                    LEA EAX,[EDX + -0xa]
00468e23  3ddd030000                CMP EAX,0x3dd
00468e28  773f                      JA 0x00468e69
00468e2a  6a01                      PUSH 0x1
00468e2c  ff742414                  PUSH dword ptr [ESP + 0x14]
00468e30  8d4f48                    LEA ECX,[EDI + 0x48]
00468e33  e8d8ce0300                CALL 0x004a5d10
00468e38  83c408                    ADD ESP,0x8
00468e3b  eb2c                      JMP 0x00468e69
00468e3d  6a00                      PUSH 0x0
00468e3f  6800000020                PUSH 0x20000000
00468e44  8bce                      MOV ECX,ESI
00468e46  e8e5e5faff                CALL 0x00417430
00468e4b  84c0                      TEST AL,AL
00468e4d  741a                      JZ 0x00468e69
00468e4f  6a00                      PUSH 0x0
00468e51  6a00                      PUSH 0x0
00468e53  6aff                      PUSH -0x1
00468e55  8d8c24b0010000            LEA ECX,[ESP + 0x1b0]
00468e5c  e80fcefcff                CALL 0x00435c70
00468e61  50                        PUSH EAX
00468e62  8bcf                      MOV ECX,EDI
00468e64  e8074a2400                CALL 0x006ad870
00468e69  6a00                      PUSH 0x0
00468e6b  68acd6c500                PUSH 0xc5d6ac
00468e70  68dcd5c500                PUSH 0xc5d5dc
00468e75  6a00                      PUSH 0x0
00468e77  56                        PUSH ESI
00468e78  e8347a6800                CALL 0x00af08b1
00468e7d  83c414                    ADD ESP,0x14
00468e80  89442418                  MOV dword ptr [ESP + 0x18],EAX
00468e84  6a00                      PUSH 0x0
00468e86  68acd6c500                PUSH 0xc5d6ac
00468e8b  68dcd5c500                PUSH 0xc5d5dc
00468e90  6a00                      PUSH 0x0
00468e92  57                        PUSH EDI
00468e93  e8197a6800                CALL 0x00af08b1
00468e98  8b4c242c                  MOV ECX,dword ptr [ESP + 0x2c]
00468e9c  83c414                    ADD ESP,0x14
00468e9f  89442408                  MOV dword ptr [ESP + 0x8],EAX
00468ea3  85c9                      TEST ECX,ECX
00468ea5  0f84ca020000              JZ 0x00469175
00468eab  85c0                      TEST EAX,EAX
00468ead  0f84c2020000              JZ 0x00469175
00468eb3  6a00                      PUSH 0x0
00468eb5  6a01                      PUSH 0x1
00468eb7  8bc8                      MOV ECX,EAX
00468eb9  e872e5faff                CALL 0x00417430
00468ebe  84c0                      TEST AL,AL
00468ec0  0f85b3010000              JNZ 0x00469079
00468ec6  6800000001                PUSH 0x1000000
00468ecb  6a00                      PUSH 0x0
00468ecd  8bce                      MOV ECX,ESI
00468ecf  e85ce5faff                CALL 0x00417430
00468ed4  84c0                      TEST AL,AL
00468ed6  0f84ad000000              JZ 0x00468f89
00468edc  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00468ee4  8d8424f8000000            LEA EAX,[ESP + 0xf8]
00468eeb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00468ef3  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
00468ef7  6a5a                      PUSH 0x5a
00468ef9  50                        PUSH EAX
00468efa  c784240001000000000000    MOV dword ptr [ESP + 0x100],0x0
00468f05  c784240401000000000000    MOV dword ptr [ESP + 0x104],0x0
00468f10  c784240801000000000000    MOV dword ptr [ESP + 0x108],0x0
00468f1b  c784240c01000000000000    MOV dword ptr [ESP + 0x10c],0x0
00468f26  f30f118c2458010000        MOVSS dword ptr [ESP + 0x158],XMM1
00468f2f  f30f1184245c010000        MOVSS dword ptr [ESP + 0x15c],XMM0
00468f38  f30f118c2410010000        MOVSS dword ptr [ESP + 0x110],XMM1
00468f41  f30f11842414010000        MOVSS dword ptr [ESP + 0x114],XMM0
00468f4a  f30f118c2460010000        MOVSS dword ptr [ESP + 0x160],XMM1
00468f53  f30f11842464010000        MOVSS dword ptr [ESP + 0x164],XMM0
00468f5c  f30f118c2418010000        MOVSS dword ptr [ESP + 0x118],XMM1
00468f65  f30f1184241c010000        MOVSS dword ptr [ESP + 0x11c],XMM0
00468f6e  c784242001000000000000    MOV dword ptr [ESP + 0x120],0x0
00468f79  c784242401000000000000    MOV dword ptr [ESP + 0x124],0x0
00468f84  e847e92400                CALL 0x006b78d0
00468f89  6a00                      PUSH 0x0
00468f8b  6800000001                PUSH 0x1000000
00468f90  8bce                      MOV ECX,ESI
00468f92  e899e4faff                CALL 0x00417430
00468f97  8b742408                  MOV ESI,dword ptr [ESP + 0x8]
00468f9b  84c0                      TEST AL,AL
00468f9d  0f84da000000              JZ 0x0046907d
00468fa3  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00468fab  8d842420010000            LEA EAX,[ESP + 0x120]
00468fb2  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00468fba  8bce                      MOV ECX,ESI
00468fbc  6a00                      PUSH 0x0
00468fbe  6a00                      PUSH 0x0
00468fc0  6a5a                      PUSH 0x5a
00468fc2  50                        PUSH EAX
00468fc3  c784243001000000000000    MOV dword ptr [ESP + 0x130],0x0
00468fce  c784243401000000000000    MOV dword ptr [ESP + 0x134],0x0
00468fd9  c784243801000000000000    MOV dword ptr [ESP + 0x138],0x0
00468fe4  c784243c01000000000000    MOV dword ptr [ESP + 0x13c],0x0
00468fef  f30f118c2470010000        MOVSS dword ptr [ESP + 0x170],XMM1
00468ff8  f30f11842474010000        MOVSS dword ptr [ESP + 0x174],XMM0
00469001  f30f118c2440010000        MOVSS dword ptr [ESP + 0x140],XMM1
0046900a  f30f11842444010000        MOVSS dword ptr [ESP + 0x144],XMM0
00469013  f30f114c2468              MOVSS dword ptr [ESP + 0x68],XMM1
00469019  f30f1144246c              MOVSS dword ptr [ESP + 0x6c],XMM0
0046901f  f30f118c2448010000        MOVSS dword ptr [ESP + 0x148],XMM1
00469028  f30f1184244c010000        MOVSS dword ptr [ESP + 0x14c],XMM0
00469031  c784245001000000000000    MOV dword ptr [ESP + 0x150],0x0
0046903c  c784245401000000000000    MOV dword ptr [ESP + 0x154],0x0
00469047  e8c4cb2400                CALL 0x006b5c10
0046904c  83be3c02000000            CMP dword ptr [ESI + 0x23c],0x0
00469053  7e28                      JLE 0x0046907d
00469055  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0046905b  818e6801000000000001      OR dword ptr [ESI + 0x168],0x1000000
00469065  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0046906b  8b86b8030000              MOV EAX,dword ptr [ESI + 0x3b8]
00469071  8986b4030000              MOV dword ptr [ESI + 0x3b4],EAX
00469077  eb04                      JMP 0x0046907d
00469079  8b742408                  MOV ESI,dword ptr [ESP + 0x8]
0046907d  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
00469081  8bce                      MOV ECX,ESI
00469083  f30f1088480f0000          MOVSS XMM1,dword ptr [EAX + 0xf48]
0046908b  f30f598e380c0000          MULSS XMM1,dword ptr [ESI + 0xc38]
00469093  f30f118e380c0000          MOVSS dword ptr [ESI + 0xc38],XMM1
0046909b  f30f598eb4030000          MULSS XMM1,dword ptr [ESI + 0x3b4]
004690a3  0f28c1                    MOVAPS XMM0,XMM1
004690a6  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004690ae  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004690b6  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
004690be  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
004690c6  f30f1080480f0000          MOVSS XMM0,dword ptr [EAX + 0xf48]
004690ce  f30f5986480f0000          MULSS XMM0,dword ptr [ESI + 0xf48]
004690d6  f30f1186480f0000          MOVSS dword ptr [ESI + 0xf48],XMM0
004690de  f30f1080440f0000          MOVSS XMM0,dword ptr [EAX + 0xf44]
004690e6  f30f5986440f0000          MULSS XMM0,dword ptr [ESI + 0xf44]
004690ee  f30f1186440f0000          MOVSS dword ptr [ESI + 0xf44],XMM0
004690f6  f30f1080440f0000          MOVSS XMM0,dword ptr [EAX + 0xf44]
004690fe  f30f598684030000          MULSS XMM0,dword ptr [ESI + 0x384]
00469106  f30f118684030000          MOVSS dword ptr [ESI + 0x384],XMM0
0046910e  f30f1080440f0000          MOVSS XMM0,dword ptr [EAX + 0xf44]
00469116  8b06                      MOV EAX,dword ptr [ESI]
00469118  f30f598680030000          MULSS XMM0,dword ptr [ESI + 0x380]
00469120  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
00469123  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
0046912b  ffd0                      CALL EAX
0046912d  84c0                      TEST AL,AL
0046912f  7444                      JZ 0x00469175
00469131  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00469135  81c6540f0000              ADD ESI,0xf54
0046913b  8b81540f0000              MOV EAX,dword ptr [ECX + 0xf54]
00469141  8b0e                      MOV ECX,dword ptr [ESI]
00469143  89442428                  MOV dword ptr [ESP + 0x28],EAX
00469147  3bc8                      CMP ECX,EAX
00469149  742a                      JZ 0x00469175
0046914b  85c9                      TEST ECX,ECX
0046914d  7418                      JZ 0x00469167
0046914f  8d442430                  LEA EAX,[ESP + 0x30]
00469153  89742430                  MOV dword ptr [ESP + 0x30],ESI
00469157  50                        PUSH EAX
00469158  81c1cc030000              ADD ECX,0x3cc
0046915e  e8ad600600                CALL 0x004cf210
00469163  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
00469167  8906                      MOV dword ptr [ESI],EAX
00469169  85c0                      TEST EAX,EAX
0046916b  7408                      JZ 0x00469175
0046916d  56                        PUSH ESI
0046916e  8bc8                      MOV ECX,EAX
00469170  e87b4b0600                CALL 0x004cdcf0
00469175  57                        PUSH EDI
00469176  e875e72900                CALL 0x007078f0
0046917b  84c0                      TEST AL,AL
0046917d  7407                      JZ 0x00469186
0046917f  51                        PUSH ECX
00469180  57                        PUSH EDI
00469181  e83ae82900                CALL 0x007079c0
00469186  80bf7201000000            CMP byte ptr [EDI + 0x172],0x0
0046918d  0f840d010000              JZ 0x004692a0
00469193  8b54242c                  MOV EDX,dword ptr [ESP + 0x2c]
00469197  8b8258770600              MOV EAX,dword ptr [EDX + 0x67758]
0046919d  3b825c770600              CMP EAX,dword ptr [EDX + 0x6775c]
004691a3  0f84f7000000              JZ 0x004692a0
004691a9  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004691ac  8db280770600              LEA ESI,[EDX + 0x67780]
004691b2  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
004691b5  898424d8000000            MOV dword ptr [ESP + 0xd8],EAX
004691bc  8d8424d4000000            LEA EAX,[ESP + 0xd4]
004691c3  50                        PUSH EAX
004691c4  8d442428                  LEA EAX,[ESP + 0x28]
004691c8  898c24d8000000            MOV dword ptr [ESP + 0xd8],ECX
004691cf  50                        PUSH EAX
004691d0  8bce                      MOV ECX,ESI
004691d2  e8c9925700                CALL 0x009e24a0
004691d7  8b06                      MOV EAX,dword ptr [ESI]
004691d9  39442424                  CMP dword ptr [ESP + 0x24],EAX
004691dd  7537                      JNZ 0x00469216
004691df  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004691e2  8bce                      MOV ECX,ESI
004691e4  8984249c000000            MOV dword ptr [ESP + 0x9c],EAX
004691eb  8d84249c000000            LEA EAX,[ESP + 0x9c]
004691f2  50                        PUSH EAX
004691f3  8d442464                  LEA EAX,[ESP + 0x64]
004691f7  c78424a4000000ffffffff    MOV dword ptr [ESP + 0xa4],0xffffffff
00469202  50                        PUSH EAX
00469203  e898925700                CALL 0x009e24a0
00469208  8b00                      MOV EAX,dword ptr [EAX]
0046920a  89442424                  MOV dword ptr [ESP + 0x24],EAX
0046920e  3b06                      CMP EAX,dword ptr [ESI]
00469210  0f848a000000              JZ 0x004692a0
00469216  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0046921c  33d2                      XOR EDX,EDX
0046921e  81c6a8ba0100              ADD ESI,0x1baa8
00469224  89542408                  MOV dword ptr [ESP + 0x8],EDX
00469228  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0046922b  2b06                      SUB EAX,dword ptr [ESI]
0046922d  c1f802                    SAR EAX,0x2
00469230  85c0                      TEST EAX,EAX
00469232  746c                      JZ 0x004692a0
00469234  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
00469237  8bc1                      MOV EAX,ECX
00469239  2b06                      SUB EAX,dword ptr [ESI]
0046923b  c1f802                    SAR EAX,0x2
0046923e  85c0                      TEST EAX,EAX
00469240  7516                      JNZ 0x00469258
00469242  68bce6b700                PUSH 0xb7e6bc
00469247  6a10                      PUSH 0x10
00469249  e872805a00                CALL 0x00a112c0
0046924e  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
00469251  83c408                    ADD ESP,0x8
00469254  8b542408                  MOV EDX,dword ptr [ESP + 0x8]
00469258  8b06                      MOV EAX,dword ptr [ESI]
0046925a  2bc8                      SUB ECX,EAX
0046925c  c1f902                    SAR ECX,0x2
0046925f  3bd1                      CMP EDX,ECX
00469261  7303                      JNC 0x00469266
00469263  8d0490                    LEA EAX,[EAX + EDX*0x4]
00469266  8b08                      MOV ECX,dword ptr [EAX]
00469268  6840b6c700                PUSH 0xc7b640
0046926d  ff742420                  PUSH dword ptr [ESP + 0x20]
00469271  81c1c81f0000              ADD ECX,0x1fc8
00469277  57                        PUSH EDI
00469278  6a06                      PUSH 0x6
0046927a  e801745700                CALL 0x009e0680
0046927f  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00469285  8b542408                  MOV EDX,dword ptr [ESP + 0x8]
00469289  81c6a8ba0100              ADD ESI,0x1baa8
0046928f  42                        INC EDX
00469290  89542408                  MOV dword ptr [ESP + 0x8],EDX
00469294  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00469297  2b06                      SUB EAX,dword ptr [ESI]
00469299  c1f802                    SAR EAX,0x2
0046929c  3bd0                      CMP EDX,EAX
0046929e  7294                      JC 0x00469234
004692a0  e8ebf15f00                CALL 0x00a68490
004692a5  89542424                  MOV dword ptr [ESP + 0x24],EDX
004692a9  8bc8                      MOV ECX,EAX
004692ab  badb34b6d7                MOV EDX,0xd7b634db
004692b0  bf82de1b43                MOV EDI,0x431bde82
004692b5  f7e2                      MUL EDX
004692b7  8bf2                      MOV ESI,EDX
004692b9  89442458                  MOV dword ptr [ESP + 0x58],EAX
004692bd  8bc1                      MOV EAX,ECX
004692bf  b9db34b6d7                MOV ECX,0xd7b634db
004692c4  f7e7                      MUL EDI
004692c6  89542430                  MOV dword ptr [ESP + 0x30],EDX
004692ca  8bf8                      MOV EDI,EAX
004692cc  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
004692d0  f7e1                      MUL ECX
004692d2  8954241c                  MOV dword ptr [ESP + 0x1c],EDX
004692d6  8bc8                      MOV ECX,EAX
004692d8  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
004692dc  ba82de1b43                MOV EDX,0x431bde82
004692e1  f7e2                      MUL EDX
004692e3  03ce                      ADD ECX,ESI
004692e5  89542434                  MOV dword ptr [ESP + 0x34],EDX
004692e9  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
004692ed  83d200                    ADC EDX,0x0
004692f0  89442448                  MOV dword ptr [ESP + 0x48],EAX
004692f4  03f9                      ADD EDI,ECX
004692f6  8b4c2430                  MOV ECX,dword ptr [ESP + 0x30]
004692fa  897c2458                  MOV dword ptr [ESP + 0x58],EDI
004692fe  83d100                    ADC ECX,0x0
00469301  8b7c2444                  MOV EDI,dword ptr [ESP + 0x44]
00469305  33c0                      XOR EAX,EAX
00469307  03d1                      ADD EDX,ECX
00469309  8b4c2448                  MOV ECX,dword ptr [ESP + 0x48]
0046930d  13c0                      ADC EAX,EAX
0046930f  03ca                      ADD ECX,EDX
00469311  8b542434                  MOV EDX,dword ptr [ESP + 0x34]
00469315  13d0                      ADC EDX,EAX
00469317  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
0046931b  0facd112                  SHRD ECX,EDX,0x12
0046931f  c1ea12                    SHR EDX,0x12
00469322  2b4c2440                  SUB ECX,dword ptr [ESP + 0x40]
00469326  1b54240c                  SBB EDX,dword ptr [ESP + 0xc]
0046932a  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
00469330  111534b6c700              ADC dword ptr [0x00c7b634],EDX
00469336  6a00                      PUSH 0x0
00469338  68acd5c500                PUSH 0xc5d5ac
0046933d  68dcd5c500                PUSH 0xc5d5dc
00469342  6a00                      PUSH 0x0
00469344  50                        PUSH EAX
00469345  e867756800                CALL 0x00af08b1
0046934a  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
00469352  8bc8                      MOV ECX,EAX
00469354  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
0046935c  83c414                    ADD ESP,0x14
0046935f  f30f591530a6ba00          MULSS XMM2,dword ptr [0x00baa630]
00469367  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
0046936f  8b01                      MOV EAX,dword ptr [ECX]
00469371  f30f1191e4000000          MOVSS dword ptr [ECX + 0xe4],XMM2
00469379  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
00469381  ff500c                    CALL dword ptr [EAX + 0xc]
00469384  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0046938c  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
00469394  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0046939c  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004693a4  2bf0                      SUB ESI,EAX
004693a6  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004693ac  83c0fd                    ADD EAX,-0x3
004693af  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004693b7  83f806                    CMP EAX,0x6
004693ba  0f87760c0000              JA 0x0046a036
004693c0  ff2485c0a04600            JMP dword ptr [EAX*0x4 + 0x46a0c0]
004693c7  6a00                      PUSH 0x0
004693c9  68ccd2b100                PUSH 0xb1d2cc
004693ce  8d4f48                    LEA ECX,[EDI + 0x48]
004693d1  e8aa0ffaff                CALL 0x0040a380
004693d6  68dcd2b100                PUSH 0xb1d2dc
004693db  8d4f48                    LEA ECX,[EDI + 0x48]
004693de  e84d1cfaff                CALL 0x0040b030
004693e3  84c0                      TEST AL,AL
004693e5  0f844b0c0000              JZ 0x0046a036
004693eb  51                        PUSH ECX
004693ec  c704240000803f            MOV dword ptr [ESP],0x3f800000
004693f3  6a00                      PUSH 0x0
004693f5  6a02                      PUSH 0x2
004693f7  51                        PUSH ECX
004693f8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004693ff  8bcf                      MOV ECX,EDI
00469401  6a10                      PUSH 0x10
00469403  e898d72600                CALL 0x006d6ba0
00469408  f30f101580a3ba00          MOVSS XMM2,dword ptr [0x00baa380]
00469410  8d842434020000            LEA EAX,[ESP + 0x234]
00469417  0f57c0                    XORPS XMM0,XMM0
0046941a  c7842454020000cdcccc3e    MOV dword ptr [ESP + 0x254],0x3ecccccd
00469425  0f11842444020000          MOVUPS xmmword ptr [ESP + 0x244],XMM0
0046942d  8db73c030000              LEA ESI,[EDI + 0x33c]
00469433  8bcf                      MOV ECX,EDI
00469435  0f2805a0bcba00            MOVAPS XMM0,xmmword ptr [0x00babca0]
0046943c  50                        PUSH EAX
0046943d  56                        PUSH ESI
0046943e  0f1184243c020000          MOVUPS xmmword ptr [ESP + 0x23c],XMM0
00469446  c78424600200005c8fc23e    MOV dword ptr [ESP + 0x260],0x3ec28f5c
00469451  c78424640200007b14ae3e    MOV dword ptr [ESP + 0x264],0x3eae147b
0046945c  e8cfd32400                CALL 0x006b6830
00469461  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
0046946b  c780500300000000d0c1      MOV dword ptr [EAX + 0x350],0xc1d00000
00469475  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00469479  0f8504020000              JNZ 0x00469683
0046947f  e8dc5a2800                CALL 0x006eef60
00469484  8bf0                      MOV ESI,EAX
00469486  8bcf                      MOV ECX,EDI
00469488  6800000010                PUSH 0x10000000
0046948d  83e601                    AND ESI,0x1
00469490  6a00                      PUSH 0x0
00469492  83c602                    ADD ESI,0x2
00469495  e896dffaff                CALL 0x00417430
0046949a  84c0                      TEST AL,AL
0046949c  741a                      JZ 0x004694b8
0046949e  6a00                      PUSH 0x0
004694a0  51                        PUSH ECX
004694a1  6a00                      PUSH 0x0
004694a3  6a55                      PUSH 0x55
004694a5  8bcf                      MOV ECX,EDI
004694a7  e834332400                CALL 0x006ac7e0
004694ac  b903000000                MOV ECX,0x3
004694b1  2bc8                      SUB ECX,EAX
004694b3  3bf1                      CMP ESI,ECX
004694b5  0f4df1                    CMOVGE ESI,ECX
004694b8  85f6                      TEST ESI,ESI
004694ba  0f8e760b0000              JLE 0x0046a036
004694c0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004694c6  8d873c030000              LEA EAX,[EDI + 0x33c]
004694cc  81c100830100              ADD ECX,0x18300
004694d2  6a00                      PUSH 0x0
004694d4  6a00                      PUSH 0x0
004694d6  6a00                      PUSH 0x0
004694d8  51                        PUSH ECX
004694d9  8b09                      MOV ECX,dword ptr [ECX]
004694db  c704240000c842            MOV dword ptr [ESP],0x42c80000
004694e2  50                        PUSH EAX
004694e3  8d842480000000            LEA EAX,[ESP + 0x80]
004694ea  50                        PUSH EAX
004694eb  e830a03a00                CALL 0x00813520
004694f0  e86b5a2800                CALL 0x006eef60
004694f5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004694fb  6a00                      PUSH 0x0
004694fd  50                        PUSH EAX
004694fe  6a00                      PUSH 0x0
00469500  57                        PUSH EDI
00469501  6840b6c700                PUSH 0xc7b640
00469506  8d842480000000            LEA EAX,[ESP + 0x80]
0046950d  50                        PUSH EAX
0046950e  6a00                      PUSH 0x0
00469510  6a55                      PUSH 0x55
00469512  e8f94e2900                CALL 0x006fe410
00469517  6a00                      PUSH 0x0
00469519  68acd6c500                PUSH 0xc5d6ac
0046951e  68dcd5c500                PUSH 0xc5d5dc
00469523  6a00                      PUSH 0x0
00469525  50                        PUSH EAX
00469526  e886736800                CALL 0x00af08b1
0046952b  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00469533  8bd0                      MOV EDX,EAX
00469535  f30f10842480000000        MOVSS XMM0,dword ptr [ESP + 0x80]
0046953e  83c414                    ADD ESP,0x14
00469541  f30f5cc1                  SUBSS XMM0,XMM1
00469545  a17816c700                MOV EAX,[0x00c71678]
0046954a  0500830100                ADD EAX,0x18300
0046954f  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
00469553  f30f5ec1                  DIVSS XMM0,XMM1
00469557  8b08                      MOV ECX,dword ptr [EAX]
00469559  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00469561  f30f2cc0                  CVTTSS2SI EAX,XMM0
00469565  f30f10442470              MOVSS XMM0,dword ptr [ESP + 0x70]
0046956b  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
00469573  8944240c                  MOV dword ptr [ESP + 0xc],EAX
00469577  837c240c00                CMP dword ptr [ESP + 0xc],0x0
0046957c  f30f5ec1                  DIVSS XMM0,XMM1
00469580  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00469588  f30f2cc0                  CVTTSS2SI EAX,XMM0
0046958c  7c3d                      JL 0x004695cb
0046958e  8b790c                    MOV EDI,dword ptr [ECX + 0xc]
00469591  397c240c                  CMP dword ptr [ESP + 0xc],EDI
00469595  8b7c2444                  MOV EDI,dword ptr [ESP + 0x44]
00469599  7d30                      JGE 0x004695cb
0046959b  85c0                      TEST EAX,EAX
0046959d  782c                      JS 0x004695cb
0046959f  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
004695a2  7d27                      JGE 0x004695cb
004695a4  0faf410c                  IMUL EAX,dword ptr [ECX + 0xc]
004695a8  0344240c                  ADD EAX,dword ptr [ESP + 0xc]
004695ac  3dbf010000                CMP EAX,0x1bf
004695b1  7718                      JA 0x004695cb
004695b3  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
004695be  7f0b                      JG 0x004695cb
004695c0  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
004695cb  f30f10a23c030000          MOVSS XMM4,dword ptr [EDX + 0x33c]
004695d3  8d873c030000              LEA EAX,[EDI + 0x33c]
004695d9  f30f108250030000          MOVSS XMM0,dword ptr [EDX + 0x350]
004695e1  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
004695e5  f30f11a234030000          MOVSS dword ptr [EDX + 0x334],XMM4
004695ed  f30f109a40030000          MOVSS XMM3,dword ptr [EDX + 0x340]
004695f5  f30f119a38030000          MOVSS dword ptr [EDX + 0x338],XMM3
004695fd  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00469601  f30f118a3c030000          MOVSS dword ptr [EDX + 0x33c],XMM1
00469609  f30f5ce1                  SUBSS XMM4,XMM1
0046960d  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
00469615  f30f119240030000          MOVSS dword ptr [EDX + 0x340],XMM2
0046961d  f30f5cda                  SUBSS XMM3,XMM2
00469621  c782640b000006000000      MOV dword ptr [EDX + 0xb64],0x6
0046962b  c782bc0b0000000000c1      MOV dword ptr [EDX + 0xbbc],0xc1000000
00469635  f30f5925bca0ba00          MULSS XMM4,dword ptr [0x00baa0bc]
0046963d  f30f591dbca0ba00          MULSS XMM3,dword ptr [0x00baa0bc]
00469645  f30f11a260030000          MOVSS dword ptr [EDX + 0x360],XMM4
0046964d  f30f11a2b00b0000          MOVSS dword ptr [EDX + 0xbb0],XMM4
00469655  f30f119a64030000          MOVSS dword ptr [EDX + 0x364],XMM3
0046965d  f30f119ab40b0000          MOVSS dword ptr [EDX + 0xbb4],XMM3
00469665  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
0046966d  f30f118250030000          MOVSS dword ptr [EDX + 0x350],XMM0
00469675  83ee01                    SUB ESI,0x1
00469678  0f8554feffff              JNZ 0x004694d2
0046967e  e9b3090000                JMP 0x0046a036
00469683  6800000010                PUSH 0x10000000
00469688  6a00                      PUSH 0x0
0046968a  8bcf                      MOV ECX,EDI
0046968c  e89fddfaff                CALL 0x00417430
00469691  84c0                      TEST AL,AL
00469693  7417                      JZ 0x004696ac
00469695  6a00                      PUSH 0x0
00469697  51                        PUSH ECX
00469698  6a01                      PUSH 0x1
0046969a  6a1d                      PUSH 0x1d
0046969c  8bcf                      MOV ECX,EDI
0046969e  e83d312400                CALL 0x006ac7e0
004696a3  83f803                    CMP EAX,0x3
004696a6  0f838a090000              JNC 0x0046a036
004696ac  e8af582800                CALL 0x006eef60
004696b1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004696b7  6a00                      PUSH 0x0
004696b9  50                        PUSH EAX
004696ba  6a00                      PUSH 0x0
004696bc  57                        PUSH EDI
004696bd  6840b6c700                PUSH 0xc7b640
004696c2  56                        PUSH ESI
004696c3  6a01                      PUSH 0x1
004696c5  6a1d                      PUSH 0x1d
004696c7  e8444d2900                CALL 0x006fe410
004696cc  6a00                      PUSH 0x0
004696ce  68acd6c500                PUSH 0xc5d6ac
004696d3  68dcd5c500                PUSH 0xc5d5dc
004696d8  6a00                      PUSH 0x0
004696da  50                        PUSH EAX
004696db  e8d1716800                CALL 0x00af08b1
004696e0  83c414                    ADD ESP,0x14
004696e3  8bf0                      MOV ESI,EAX
004696e5  8bcf                      MOV ECX,EDI
004696e7  89742430                  MOV dword ptr [ESP + 0x30],ESI
004696eb  e850512500                CALL 0x006be840
004696f0  6a01                      PUSH 0x1
004696f2  681cdeb100                PUSH 0xb1de1c
004696f7  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004696ff  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00469707  8d4648                    LEA EAX,[ESI + 0x48]
0046970a  8bc8                      MOV ECX,EAX
0046970c  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
00469714  f30f118e38030000          MOVSS dword ptr [ESI + 0x338],XMM1
0046971c  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
00469726  c7861004000005000000      MOV dword ptr [ESI + 0x410],0x5
00469730  89442424                  MOV dword ptr [ESP + 0x24],EAX
00469734  e8970efaff                CALL 0x0040a5d0
00469739  84c0                      TEST AL,AL
0046973b  7414                      JZ 0x00469751
0046973d  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
00469741  8d4e30                    LEA ECX,[ESI + 0x30]
00469744  e8670afaff                CALL 0x0040a1b0
00469749  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0046974d  8b742430                  MOV ESI,dword ptr [ESP + 0x30]
00469751  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00469755  0f84db080000              JZ 0x0046a036
0046975b  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
00469763  8d4e78                    LEA ECX,[ESI + 0x78]
00469766  e895f6f9ff                CALL 0x00408e00
0046976b  e9c6080000                JMP 0x0046a036
00469770  6800000010                PUSH 0x10000000
00469775  6a00                      PUSH 0x0
00469777  8bcf                      MOV ECX,EDI
00469779  e8b2dcfaff                CALL 0x00417430
0046977e  84c0                      TEST AL,AL
00469780  7418                      JZ 0x0046979a
00469782  a17816c700                MOV EAX,[0x00c71678]
00469787  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046978d  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00469790  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00469794  0f859c080000              JNZ 0x0046a036
0046979a  e8c1572800                CALL 0x006eef60
0046979f  33d2                      XOR EDX,EDX
004697a1  b914000000                MOV ECX,0x14
004697a6  f7f1                      DIV ECX
004697a8  85d2                      TEST EDX,EDX
004697aa  0f8586080000              JNZ 0x0046a036
004697b0  a17816c700                MOV EAX,[0x00c71678]
004697b5  c784240803000006000000    MOV dword ptr [ESP + 0x308],0x6
004697c0  c784240c03000009000000    MOV dword ptr [ESP + 0x30c],0x9
004697cb  c784241003000009000000    MOV dword ptr [ESP + 0x310],0x9
004697d6  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004697dc  c784241403000008000000    MOV dword ptr [ESP + 0x314],0x8
004697e7  c784241803000008000000    MOV dword ptr [ESP + 0x318],0x8
004697f2  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
004697f8  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
004697fe  03c8                      ADD ECX,EAX
00469800  33c0                      XOR EAX,EAX
00469802  85c9                      TEST ECX,ECX
00469804  0f4fc1                    CMOVG EAX,ECX
00469807  83f804                    CMP EAX,0x4
0046980a  7d0c                      JGE 0x00469818
0046980c  e84f572800                CALL 0x006eef60
00469811  b905000000                MOV ECX,0x5
00469816  eb0a                      JMP 0x00469822
00469818  e843572800                CALL 0x006eef60
0046981d  b903000000                MOV ECX,0x3
00469822  33d2                      XOR EDX,EDX
00469824  f7f1                      DIV ECX
00469826  8b849408030000            MOV EAX,dword ptr [ESP + EDX*0x4 + 0x308]
0046982d  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
00469833  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0046983d  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00469847  e9ea070000                JMP 0x0046a036
0046984c  6a00                      PUSH 0x0
0046984e  68ecd2b100                PUSH 0xb1d2ec
00469853  8d4f48                    LEA ECX,[EDI + 0x48]
00469856  e8250bfaff                CALL 0x0040a380
0046985b  6860d5b100                PUSH 0xb1d560
00469860  8d4f48                    LEA ECX,[EDI + 0x48]
00469863  e82818faff                CALL 0x0040b090
00469868  84c0                      TEST AL,AL
0046986a  7415                      JZ 0x00469881
0046986c  6874d5b100                PUSH 0xb1d574
00469871  8d4f48                    LEA ECX,[EDI + 0x48]
00469874  e81718faff                CALL 0x0040b090
00469879  84c0                      TEST AL,AL
0046987b  7504                      JNZ 0x00469881
0046987d  33c0                      XOR EAX,EAX
0046987f  eb05                      JMP 0x00469886
00469881  b804000000                MOV EAX,0x4
00469886  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0046988d  898788010000              MOV dword ptr [EDI + 0x188],EAX
00469893  0f859d070000              JNZ 0x0046a036
00469899  33c0                      XOR EAX,EAX
0046989b  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
004698a5  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004698a9  0f95c0                    SETNZ AL
004698ac  83c003                    ADD EAX,0x3
004698af  8bc8                      MOV ECX,EAX
004698b1  8944244c                  MOV dword ptr [ESP + 0x4c],EAX
004698b5  e856572100                CALL 0x0067f010
004698ba  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
004698be  8d8c241c030000            LEA ECX,[ESP + 0x31c]
004698c5  ba05000000                MOV EDX,0x5
004698ca  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004698d0  c7410400000000            MOV dword ptr [ECX + 0x4],0x0
004698d7  8d4908                    LEA ECX,[ECX + 0x8]
004698da  c741f800000000            MOV dword ptr [ECX + -0x8],0x0
004698e1  83ea01                    SUB EDX,0x1
004698e4  75ea                      JNZ 0x004698d0
004698e6  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004698ee  8d873c030000              LEA EAX,[EDI + 0x33c]
004698f4  f30f1184241c030000        MOVSS dword ptr [ESP + 0x31c],XMM0
004698fd  33f6                      XOR ESI,ESI
004698ff  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00469904  89442450                  MOV dword ptr [ESP + 0x50],EAX
00469908  8d842424030000            LEA EAX,[ESP + 0x324]
0046990f  f30f11842420030000        MOVSS dword ptr [ESP + 0x320],XMM0
00469918  89742428                  MOV dword ptr [ESP + 0x28],ESI
0046991c  c744240c10000000          MOV dword ptr [ESP + 0xc],0x10
00469924  89442424                  MOV dword ptr [ESP + 0x24],EAX
00469928  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00469930  8bcf                      MOV ECX,EDI
00469932  c744243c00000000          MOV dword ptr [ESP + 0x3c],0x0
0046993a  c744243800000000          MOV dword ptr [ESP + 0x38],0x0
00469942  e8f94e2500                CALL 0x006be840
00469947  89442430                  MOV dword ptr [ESP + 0x30],EAX
0046994b  3974241c                  CMP dword ptr [ESP + 0x1c],ESI
0046994f  0f8555010000              JNZ 0x00469aaa
00469955  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0046995d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00469963  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
00469969  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00469971  f30f11442454              MOVSS dword ptr [ESP + 0x54],XMM0
00469977  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0046997f  8bb100830100              MOV ESI,dword ptr [ECX + 0x18300]
00469985  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0046998b  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
00469993  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00469999  e8c2552800                CALL 0x006eef60
0046999e  6a00                      PUSH 0x0
004699a0  6a00                      PUSH 0x0
004699a2  6a00                      PUSH 0x0
004699a4  660f6ec0                  MOVD XMM0,EAX
004699a8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004699ac  c1e81f                    SHR EAX,0x1f
004699af  51                        PUSH ECX
004699b0  8bce                      MOV ECX,ESI
004699b2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004699bb  c704240000a041            MOV dword ptr [ESP],0x41a00000
004699c2  8d8424b4000000            LEA EAX,[ESP + 0xb4]
004699c9  50                        PUSH EAX
004699ca  8d8424a0010000            LEA EAX,[ESP + 0x1a0]
004699d1  50                        PUSH EAX
004699d2  660f5ac8                  CVTPD2PS XMM1,XMM0
004699d6  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004699de  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
004699e6  0f28c1                    MOVAPS XMM0,XMM1
004699e9  f30f594c244c              MULSS XMM1,dword ptr [ESP + 0x4c]
004699ef  f30f59442448              MULSS XMM0,dword ptr [ESP + 0x48]
004699f5  f30f584c246c              ADDSS XMM1,dword ptr [ESP + 0x6c]
004699fb  f30f58442460              ADDSS XMM0,dword ptr [ESP + 0x60]
00469a01  f30f118c24c0000000        MOVSS dword ptr [ESP + 0xc0],XMM1
00469a0a  f30f118424bc000000        MOVSS dword ptr [ESP + 0xbc],XMM0
00469a13  e8089b3a00                CALL 0x00813520
00469a18  8bf0                      MOV ESI,EAX
00469a1a  e841552800                CALL 0x006eef60
00469a1f  660f6ec0                  MOVD XMM0,EAX
00469a23  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00469a27  c1e81f                    SHR EAX,0x1f
00469a2a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00469a33  660f5ac0                  CVTPD2PS XMM0,XMM0
00469a37  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00469a3f  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00469a47  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
00469a4f  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00469a55  e806552800                CALL 0x006eef60
00469a5a  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
00469a60  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
00469a65  660f6ec0                  MOVD XMM0,EAX
00469a69  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00469a6d  c1e81f                    SHR EAX,0x1f
00469a70  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00469a79  660f5ac0                  CVTPD2PS XMM0,XMM0
00469a7d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00469a85  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00469a8d  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
00469a95  f30f5806                  ADDSS XMM0,dword ptr [ESI]
00469a99  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
00469a9f  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00469aa5  e987010000                JMP 0x00469c31
00469aaa  e8b1542800                CALL 0x006eef60
00469aaf  8bf8                      MOV EDI,EAX
00469ab1  c744241405000000          MOV dword ptr [ESP + 0x14],0x5
00469ab9  83e703                    AND EDI,0x3
00469abc  0f1f4000                  NOP dword ptr [EAX]
00469ac0  85ff                      TEST EDI,EDI
00469ac2  757a                      JNZ 0x00469b3e
00469ac4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00469aca  8bb100830100              MOV ESI,dword ptr [ECX + 0x18300]
00469ad0  e88b542800                CALL 0x006eef60
00469ad5  8b4c2430                  MOV ECX,dword ptr [ESP + 0x30]
00469ad9  57                        PUSH EDI
00469ada  57                        PUSH EDI
00469adb  660f6ec0                  MOVD XMM0,EAX
00469adf  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00469ae3  c1e81f                    SHR EAX,0x1f
00469ae6  6a01                      PUSH 0x1
00469ae8  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00469af1  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
00469af7  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
00469afd  898424b8000000            MOV dword ptr [ESP + 0xb8],EAX
00469b04  8d8424b8000000            LEA EAX,[ESP + 0xb8]
00469b0b  51                        PUSH ECX
00469b0c  660f5ac0                  CVTPD2PS XMM0,XMM0
00469b10  898c24c0000000            MOV dword ptr [ESP + 0xc0],ECX
00469b17  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00469b1f  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
00469b27  f30f5805a0a9ba00          ADDSS XMM0,dword ptr [0x00baa9a0]
00469b2f  f30f110424                MOVSS dword ptr [ESP],XMM0
00469b34  50                        PUSH EAX
00469b35  8d8424a8010000            LEA EAX,[ESP + 0x1a8]
00469b3c  eb4f                      JMP 0x00469b8d
00469b3e  a17816c700                MOV EAX,[0x00c71678]
00469b43  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00469b49  e812542800                CALL 0x006eef60
00469b4e  6a00                      PUSH 0x0
00469b50  6a00                      PUSH 0x0
00469b52  6a01                      PUSH 0x1
00469b54  660f6ec0                  MOVD XMM0,EAX
00469b58  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00469b5c  c1e81f                    SHR EAX,0x1f
00469b5f  51                        PUSH ECX
00469b60  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00469b69  8d8424ac010000            LEA EAX,[ESP + 0x1ac]
00469b70  660f5ac0                  CVTPD2PS XMM0,XMM0
00469b74  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00469b7c  f30f590554abba00          MULSS XMM0,dword ptr [0x00baab54]
00469b84  f30f110424                MOVSS dword ptr [ESP],XMM0
00469b89  ff742460                  PUSH dword ptr [ESP + 0x60]
00469b8d  50                        PUSH EAX
00469b8e  8bce                      MOV ECX,ESI
00469b90  e88b993a00                CALL 0x00813520
00469b95  8bf0                      MOV ESI,EAX
00469b97  e8c4532800                CALL 0x006eef60
00469b9c  660f6ec0                  MOVD XMM0,EAX
00469ba0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00469ba4  c1e81f                    SHR EAX,0x1f
00469ba7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00469bb0  660f5ac0                  CVTPD2PS XMM0,XMM0
00469bb4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00469bbc  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00469bc4  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
00469bcc  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00469bd2  e889532800                CALL 0x006eef60
00469bd7  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
00469bdd  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
00469be2  660f6ec0                  MOVD XMM0,EAX
00469be6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00469bea  c1e81f                    SHR EAX,0x1f
00469bed  836c241401                SUB dword ptr [ESP + 0x14],0x1
00469bf2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00469bfb  660f5ac0                  CVTPD2PS XMM0,XMM0
00469bff  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00469c07  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00469c0f  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
00469c17  f30f5806                  ADDSS XMM0,dword ptr [ESI]
00469c1b  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
00469c21  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00469c27  0f8593feffff              JNZ 0x00469ac0
00469c2d  8b7c2444                  MOV EDI,dword ptr [ESP + 0x44]
00469c31  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
00469c35  8bc1                      MOV EAX,ECX
00469c37  83c108                    ADD ECX,0x8
00469c3a  894c2424                  MOV dword ptr [ESP + 0x24],ECX
00469c3e  f30f1100                  MOVSS dword ptr [EAX],XMM0
00469c42  f30f114804                MOVSS dword ptr [EAX + 0x4],XMM1
00469c47  e814532800                CALL 0x006eef60
00469c4c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00469c52  6a00                      PUSH 0x0
00469c54  50                        PUSH EAX
00469c55  6a00                      PUSH 0x0
00469c57  57                        PUSH EDI
00469c58  6840b6c700                PUSH 0xc7b640
00469c5d  8d44244c                  LEA EAX,[ESP + 0x4c]
00469c61  50                        PUSH EAX
00469c62  ff772c                    PUSH dword ptr [EDI + 0x2c]
00469c65  6a65                      PUSH 0x65
00469c67  e8a4472900                CALL 0x006fe410
00469c6c  8bf0                      MOV ESI,EAX
00469c6e  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
00469c72  6a01                      PUSH 0x1
00469c74  6804e0b100                PUSH 0xb1e004
00469c79  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00469c7f  818e6801000000000080      OR dword ptr [ESI + 0x168],0x80000000
00469c89  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
00469c8f  c786c00b000001000000      MOV dword ptr [ESI + 0xbc0],0x1
00469c99  c786640b000007000000      MOV dword ptr [ESI + 0xb64],0x7
00469ca3  8b97c40b0000              MOV EDX,dword ptr [EDI + 0xbc4]
00469ca9  8d4a01                    LEA ECX,[EDX + 0x1]
00469cac  898fc40b0000              MOV dword ptr [EDI + 0xbc4],ECX
00469cb2  8d4e48                    LEA ECX,[ESI + 0x48]
00469cb5  8996c40b0000              MOV dword ptr [ESI + 0xbc4],EDX
00469cbb  8986a40b0000              MOV dword ptr [ESI + 0xba4],EAX
00469cc1  e80a09faff                CALL 0x0040a5d0
00469cc6  84c0                      TEST AL,AL
00469cc8  7423                      JZ 0x00469ced
00469cca  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
00469ccd  8d4648                    LEA EAX,[ESI + 0x48]
00469cd0  85c9                      TEST ECX,ECX
00469cd2  7419                      JZ 0x00469ced
00469cd4  8d4830                    LEA ECX,[EAX + 0x30]
00469cd7  0f57c9                    XORPS XMM1,XMM1
00469cda  e821f1f9ff                CALL 0x00408e00
00469cdf  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
00469ce2  8d4648                    LEA EAX,[ESI + 0x48]
00469ce5  85c9                      TEST ECX,ECX
00469ce7  7404                      JZ 0x00469ced
00469ce9  c6404400                  MOV byte ptr [EAX + 0x44],0x0
00469ced  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
00469cf7  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00469cff  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00469d06  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00469d0c  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00469d14  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00469d1b  6aff                      PUSH -0x1
00469d1d  f30f11442468              MOVSS dword ptr [ESP + 0x68],XMM0
00469d23  ff742468                  PUSH dword ptr [ESP + 0x68]
00469d27  f30f104038                MOVSS XMM0,dword ptr [EAX + 0x38]
00469d2c  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00469d34  f30f114c2468              MOVSS dword ptr [ESP + 0x68],XMM1
00469d3a  ff742468                  PUSH dword ptr [ESP + 0x68]
00469d3e  51                        PUSH ECX
00469d3f  8bce                      MOV ECX,ESI
00469d41  f30f110424                MOVSS dword ptr [ESP],XMM0
00469d46  e855252400                CALL 0x006ac2a0
00469d4b  8b742428                  MOV ESI,dword ptr [ESP + 0x28]
00469d4f  8344240c0a                ADD dword ptr [ESP + 0xc],0xa
00469d54  46                        INC ESI
00469d55  89742428                  MOV dword ptr [ESP + 0x28],ESI
00469d59  3b74244c                  CMP ESI,dword ptr [ESP + 0x4c]
00469d5d  0f8ccdfbffff              JL 0x00469930
00469d63  e9ce020000                JMP 0x0046a036
00469d68  6a00                      PUSH 0x0
00469d6a  68dccdb100                PUSH 0xb1cddc
00469d6f  8d4f48                    LEA ECX,[EDI + 0x48]
00469d72  e80906faff                CALL 0x0040a380
00469d77  6874d5b100                PUSH 0xb1d574
00469d7c  8d4f48                    LEA ECX,[EDI + 0x48]
00469d7f  e80c13faff                CALL 0x0040b090
00469d84  0fb6c0                    MOVZX EAX,AL
00469d87  8d4f48                    LEA ECX,[EDI + 0x48]
00469d8a  f7d8                      NEG EAX
00469d8c  6874d5b100                PUSH 0xb1d574
00469d91  1bc0                      SBB EAX,EAX
00469d93  83e004                    AND EAX,0x4
00469d96  898788010000              MOV dword ptr [EDI + 0x188],EAX
00469d9c  e8ef12faff                CALL 0x0040b090
00469da1  84c0                      TEST AL,AL
00469da3  0f844c010000              JZ 0x00469ef5
00469da9  85f6                      TEST ESI,ESI
00469dab  0f8e44010000              JLE 0x00469ef5
00469db1  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00469db7  40                        INC EAX
00469db8  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00469dbc  898710040000              MOV dword ptr [EDI + 0x410],EAX
00469dc2  0f8524010000              JNZ 0x00469eec
00469dc8  83f818                    CMP EAX,0x18
00469dcb  0f8d1b010000              JGE 0x00469eec
00469dd1  e88a512800                CALL 0x006eef60
00469dd6  660f6ec0                  MOVD XMM0,EAX
00469dda  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00469dde  c1e81f                    SHR EAX,0x1f
00469de1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00469dea  660f5ac8                  CVTPD2PS XMM1,XMM0
00469dee  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
00469df6  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00469dfe  0f5bc0                    CVTDQ2PS XMM0,XMM0
00469e01  f30f590d04a7ba00          MULSS XMM1,dword ptr [0x00baa704]
00469e09  f30f58c0                  ADDSS XMM0,XMM0
00469e0d  f30f58c9                  ADDSS XMM1,XMM1
00469e11  f30f580524a9ba00          ADDSS XMM0,dword ptr [0x00baa924]
00469e19  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
00469e1f  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00469e25  0f28c1                    MOVAPS XMM0,XMM1
00469e28  e81337fbff                CALL 0x0041d540
00469e2d  f30f59442414              MULSS XMM0,dword ptr [ESP + 0x14]
00469e33  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00469e3b  f30f118424b4000000        MOVSS dword ptr [ESP + 0xb4],XMM0
00469e44  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
00469e4a  e8d136fbff                CALL 0x0041d520
00469e4f  f30f59442414              MULSS XMM0,dword ptr [ESP + 0x14]
00469e55  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00469e5d  f30f118424b8000000        MOVSS dword ptr [ESP + 0xb8],XMM0
00469e66  e8f5502800                CALL 0x006eef60
00469e6b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00469e71  6a00                      PUSH 0x0
00469e73  50                        PUSH EAX
00469e74  6a00                      PUSH 0x0
00469e76  57                        PUSH EDI
00469e77  6840b6c700                PUSH 0xc7b640
00469e7c  8d8424c8000000            LEA EAX,[ESP + 0xc8]
00469e83  50                        PUSH EAX
00469e84  6a19                      PUSH 0x19
00469e86  68e8030000                PUSH 0x3e8
00469e8b  e880452900                CALL 0x006fe410
00469e90  6a00                      PUSH 0x0
00469e92  68acd5c500                PUSH 0xc5d5ac
00469e97  68dcd5c500                PUSH 0xc5d5dc
00469e9c  6a00                      PUSH 0x0
00469e9e  50                        PUSH EAX
00469e9f  e80d6a6800                CALL 0x00af08b1
00469ea4  660f6e8f10040000          MOVD XMM1,dword ptr [EDI + 0x410]
00469eac  8bc8                      MOV ECX,EAX
00469eae  0f5bc9                    CVTDQ2PS XMM1,XMM1
00469eb1  83c414                    ADD ESP,0x14
00469eb4  8b01                      MOV EAX,dword ptr [ECX]
00469eb6  f30f590dd0a0ba00          MULSS XMM1,dword ptr [0x00baa0d0]
00469ebe  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
00469ec6  0f28c1                    MOVAPS XMM0,XMM1
00469ec9  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00469ed1  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00469ed9  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
00469ee1  f30f1181e4000000          MOVSS dword ptr [ECX + 0xe4],XMM0
00469ee9  ff500c                    CALL dword ptr [EAX + 0xc]
00469eec  83ee01                    SUB ESI,0x1
00469eef  0f85bcfeffff              JNZ 0x00469db1
00469ef5  8d4f48                    LEA ECX,[EDI + 0x48]
00469ef8  e88308faff                CALL 0x0040a780
00469efd  85c0                      TEST EAX,EAX
00469eff  0f8531010000              JNZ 0x0046a036
00469f05  8bcf                      MOV ECX,EDI
00469f07  e834492500                CALL 0x006be840
00469f0c  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00469f14  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
00469f1a  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00469f22  898740030000              MOV dword ptr [EDI + 0x340],EAX
00469f28  e909010000                JMP 0x0046a036
00469f2d  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
00469f33  85c0                      TEST EAX,EAX
00469f35  7e1c                      JLE 0x00469f53
00469f37  2bc6                      SUB EAX,ESI
00469f39  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
00469f3f  85c0                      TEST EAX,EAX
00469f41  0f8fef000000              JG 0x0046a036
00469f47  6a01                      PUSH 0x1
00469f49  6804e0b100                PUSH 0xb1e004
00469f4e  e9db000000                JMP 0x0046a02e
00469f53  6860d5b100                PUSH 0xb1d560
00469f58  8d4f48                    LEA ECX,[EDI + 0x48]
00469f5b  e83011faff                CALL 0x0040b090
00469f60  84c0                      TEST AL,AL
00469f62  7518                      JNZ 0x00469f7c
00469f64  6874d5b100                PUSH 0xb1d574
00469f69  8d4f48                    LEA ECX,[EDI + 0x48]
00469f6c  e81f11faff                CALL 0x0040b090
00469f71  84c0                      TEST AL,AL
00469f73  7407                      JZ 0x00469f7c
00469f75  b804000000                MOV EAX,0x4
00469f7a  eb02                      JMP 0x00469f7e
00469f7c  33c0                      XOR EAX,EAX
00469f7e  898788010000              MOV dword ptr [EDI + 0x188],EAX
00469f84  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00469f8b  7447                      JZ 0x00469fd4
00469f8d  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
00469f93  b904000000                MOV ECX,0x4
00469f98  83f804                    CMP EAX,0x4
00469f9b  0f4fc1                    CMOVG EAX,ECX
00469f9e  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
00469fa2  99                        CDQ
00469fa3  2bc2                      SUB EAX,EDX
00469fa5  d1f8                      SAR EAX,0x1
00469fa7  740b                      JZ 0x00469fb4
00469fa9  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00469fad  b828e0b100                MOV EAX,0xb1e028
00469fb2  7505                      JNZ 0x00469fb9
00469fb4  b804e0b100                MOV EAX,0xb1e004
00469fb9  6a00                      PUSH 0x0
00469fbb  50                        PUSH EAX
00469fbc  8d4f48                    LEA ECX,[EDI + 0x48]
00469fbf  e8bc03faff                CALL 0x0040a380
00469fc4  8b44241c                  MOV EAX,dword ptr [ESP + 0x1c]
00469fc8  f6d0                      NOT AL
00469fca  2401                      AND AL,0x1
00469fcc  888748010000              MOV byte ptr [EDI + 0x148],AL
00469fd2  eb62                      JMP 0x0046a036
00469fd4  8d4f48                    LEA ECX,[EDI + 0x48]
00469fd7  e8a407faff                CALL 0x0040a780
00469fdc  85c0                      TEST EAX,EAX
00469fde  7556                      JNZ 0x0046a036
00469fe0  8bcf                      MOV ECX,EDI
00469fe2  e859482500                CALL 0x006be840
00469fe7  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00469fef  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00469ff7  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00469fff  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
0046a007  eb2d                      JMP 0x0046a036
0046a009  6860d5b100                PUSH 0xb1d560
0046a00e  8d4f48                    LEA ECX,[EDI + 0x48]
0046a011  e87a10faff                CALL 0x0040b090
0046a016  33c9                      XOR ECX,ECX
0046a018  84c0                      TEST AL,AL
0046a01a  b804000000                MOV EAX,0x4
0046a01f  0f45c1                    CMOVNZ EAX,ECX
0046a022  51                        PUSH ECX
0046a023  898788010000              MOV dword ptr [EDI + 0x188],EAX
0046a029  68e4cdb100                PUSH 0xb1cde4
0046a02e  8d4f48                    LEA ECX,[EDI + 0x48]
0046a031  e84a03faff                CALL 0x0040a380
0046a036  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0046a03b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0046a042  7620                      JBE 0x0046a064
0046a044  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0046a047  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0046a04a  7418                      JZ 0x0046a064
0046a04c  0f1f4000                  NOP dword ptr [EAX]
0046a050  83781065                  CMP dword ptr [EAX + 0x10],0x65
0046a054  7506                      JNZ 0x0046a05c
0046a056  c70000000000              MOV dword ptr [EAX],0x0
0046a05c  83c038                    ADD EAX,0x38
0046a05f  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0046a062  75ec                      JNZ 0x0046a050
0046a064  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0046a06b  7428                      JZ 0x0046a095
0046a06d  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0046a074  751f                      JNZ 0x0046a095
0046a076  a17816c700                MOV EAX,[0x00c71678]
0046a07b  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046a081  c780147200001e000000      MOV dword ptr [EAX + 0x7214],0x1e
0046a08b  c7801872000007000000      MOV dword ptr [EAX + 0x7218],0x7
0046a095  8b8c2444030000            MOV ECX,dword ptr [ESP + 0x344]
0046a09c  5f                        POP EDI
0046a09d  5e                        POP ESI
0046a09e  33cc                      XOR ECX,ESP
0046a0a0  e886506800                CALL 0x00aef12b
0046a0a5  8be5                      MOV ESP,EBP
0046a0a7  5d                        POP EBP
0046a0a8  c3                        RET
