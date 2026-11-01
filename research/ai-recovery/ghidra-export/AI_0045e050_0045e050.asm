; J460 NPC AI 0x0045e050 AI_0045e050
; types=268
; identities=268.0.0
; entry=0045e050
0045e050  55                        PUSH EBP
0045e051  8bec                      MOV EBP,ESP
0045e053  83e4f8                    AND ESP,0xfffffff8
0045e056  83ec70                    SUB ESP,0x70
0045e059  a1b493bf00                MOV EAX,[0x00bf93b4]
0045e05e  33c4                      XOR EAX,ESP
0045e060  8944246c                  MOV dword ptr [ESP + 0x6c],EAX
0045e064  56                        PUSH ESI
0045e065  57                        PUSH EDI
0045e066  8bf9                      MOV EDI,ECX
0045e068  897c2420                  MOV dword ptr [ESP + 0x20],EDI
0045e06c  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
0045e074  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0045e07c  2bf0                      SUB ESI,EAX
0045e07e  e8bd072600                CALL 0x006be840
0045e083  51                        PUSH ECX
0045e084  c7042400000000            MOV dword ptr [ESP],0x0
0045e08b  8bcf                      MOV ECX,EDI
0045e08d  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0045e095  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0045e09d  8d442428                  LEA EAX,[ESP + 0x28]
0045e0a1  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0045e0a9  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0045e0b1  50                        PUSH EAX
0045e0b2  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0045e0b8  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
0045e0be  e87d0b2600                CALL 0x006bec40
0045e0c3  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0045e0ca  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0045e0ce  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0045e0d6  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0045e0dc  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0045e0e1  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0045e0e9  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0045e0ef  7525                      JNZ 0x0045e116
0045e0f1  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045e0fb  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045e105  5f                        POP EDI
0045e106  5e                        POP ESI
0045e107  8b4c246c                  MOV ECX,dword ptr [ESP + 0x6c]
0045e10b  33cc                      XOR ECX,ESP
0045e10d  e819106900                CALL 0x00aef12b
0045e112  8be5                      MOV ESP,EBP
0045e114  5d                        POP EBP
0045e115  c3                        RET
0045e116  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0045e11b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0045e122  c7876c0300009a99593f      MOV dword ptr [EDI + 0x36c],0x3f59999a
0045e12c  7629                      JBE 0x0045e157
0045e12e  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
0045e131  83e004                    AND EAX,0x4
0045e134  83c800                    OR EAX,0x0
0045e137  741e                      JZ 0x0045e157
0045e139  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0045e13c  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0045e13f  7416                      JZ 0x0045e157
0045e141  8b4810                    MOV ECX,dword ptr [EAX + 0x10]
0045e144  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
0045e147  7506                      JNZ 0x0045e14f
0045e149  c70000000000              MOV dword ptr [EAX],0x0
0045e14f  83c038                    ADD EAX,0x38
0045e152  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0045e155  75ea                      JNZ 0x0045e141
0045e157  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
0045e15d  85c0                      TEST EAX,EAX
0045e15f  7e08                      JLE 0x0045e169
0045e161  2bc6                      SUB EAX,ESI
0045e163  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
0045e169  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0045e16f  83f804                    CMP EAX,0x4
0045e172  0f854a050000              JNZ 0x0045e6c2
0045e178  01b710040000              ADD dword ptr [EDI + 0x410],ESI
0045e17e  8d7748                    LEA ESI,[EDI + 0x48]
0045e181  8b4e34                    MOV ECX,dword ptr [ESI + 0x34]
0045e184  85c9                      TEST ECX,ECX
0045e186  7447                      JZ 0x0045e1cf
0045e188  83791410                  CMP dword ptr [ECX + 0x14],0x10
0045e18c  8bc1                      MOV EAX,ECX
0045e18e  7202                      JC 0x0045e192
0045e190  8b01                      MOV EAX,dword ptr [ECX]
0045e192  b9e4dcb100                MOV ECX,0xb1dce4
0045e197  8a10                      MOV DL,byte ptr [EAX]
0045e199  3a11                      CMP DL,byte ptr [ECX]
0045e19b  751a                      JNZ 0x0045e1b7
0045e19d  84d2                      TEST DL,DL
0045e19f  7412                      JZ 0x0045e1b3
0045e1a1  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045e1a4  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045e1a7  750e                      JNZ 0x0045e1b7
0045e1a9  83c002                    ADD EAX,0x2
0045e1ac  83c102                    ADD ECX,0x2
0045e1af  84d2                      TEST DL,DL
0045e1b1  75e4                      JNZ 0x0045e197
0045e1b3  33c0                      XOR EAX,EAX
0045e1b5  eb05                      JMP 0x0045e1bc
0045e1b7  1bc0                      SBB EAX,EAX
0045e1b9  83c801                    OR EAX,0x1
0045e1bc  85c0                      TEST EAX,EAX
0045e1be  750f                      JNZ 0x0045e1cf
0045e1c0  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
0045e1c3  80783400                  CMP byte ptr [EAX + 0x34],0x0
0045e1c7  7427                      JZ 0x0045e1f0
0045e1c9  807e4400                  CMP byte ptr [ESI + 0x44],0x0
0045e1cd  7521                      JNZ 0x0045e1f0
0045e1cf  6a01                      PUSH 0x1
0045e1d1  68e4dcb100                PUSH 0xb1dce4
0045e1d6  8bce                      MOV ECX,ESI
0045e1d8  e8f3c3faff                CALL 0x0040a5d0
0045e1dd  84c0                      TEST AL,AL
0045e1df  740f                      JZ 0x0045e1f0
0045e1e1  8d4e30                    LEA ECX,[ESI + 0x30]
0045e1e4  e8c7bffaff                CALL 0x0040a1b0
0045e1e9  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0045e1ed  8d7748                    LEA ESI,[EDI + 0x48]
0045e1f0  6a00                      PUSH 0x0
0045e1f2  8d8f14040000              LEA ECX,[EDI + 0x414]
0045e1f8  e853843800                CALL 0x007e6650
0045e1fd  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0045e203  33c0                      XOR EAX,EAX
0045e205  81e100000010              AND ECX,0x10000000
0045e20b  0bc1                      OR EAX,ECX
0045e20d  7418                      JZ 0x0045e227
0045e20f  a17816c700                MOV EAX,[0x00c71678]
0045e214  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045e21a  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0045e21d  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0045e221  0f857e0c0000              JNZ 0x0045eea5
0045e227  a17816c700                MOV EAX,[0x00c71678]
0045e22c  8b9740030000              MOV EDX,dword ptr [EDI + 0x340]
0045e232  89542430                  MOV dword ptr [ESP + 0x30],EDX
0045e236  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045e23c  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
0045e242  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0045e248  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
0045e24c  8d44242c                  LEA EAX,[ESP + 0x2c]
0045e250  50                        PUSH EAX
0045e251  e8ea674e00                CALL 0x00944a40
0045e256  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0045e25e  b90f000000                MOV ECX,0xf
0045e263  f30f5e8f84030000          DIVSS XMM1,dword ptr [EDI + 0x384]
0045e26b  8844240b                  MOV byte ptr [ESP + 0xb],AL
0045e26f  b81e000000                MOV EAX,0x1e
0045e274  f30f1005f8a1ba00          MOVSS XMM0,dword ptr [0x00baa1f8]
0045e27c  0f2fc1                    COMISS XMM0,XMM1
0045e27f  0f47c1                    CMOVA EAX,ECX
0045e282  8944240c                  MOV dword ptr [ESP + 0xc],EAX
0045e286  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0045e28c  2500400000                AND EAX,0x4000
0045e291  83c800                    OR EAX,0x0
0045e294  753a                      JNZ 0x0045e2d0
0045e296  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045e29c  e8aff02900                CALL 0x006fd350
0045e2a1  84c0                      TEST AL,AL
0045e2a3  752b                      JNZ 0x0045e2d0
0045e2a5  a17816c700                MOV EAX,[0x00c71678]
0045e2aa  8b4c240c                  MOV ECX,dword ptr [ESP + 0xc]
0045e2ae  03c9                      ADD ECX,ECX
0045e2b0  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0045e2b6  034720                    ADD EAX,dword ptr [EDI + 0x20]
0045e2b9  99                        CDQ
0045e2ba  f7f9                      IDIV ECX
0045e2bc  85d2                      TEST EDX,EDX
0045e2be  7510                      JNZ 0x0045e2d0
0045e2c0  e89b0c2900                CALL 0x006eef60
0045e2c5  83e003                    AND EAX,0x3
0045e2c8  3c03                      CMP AL,0x3
0045e2ca  7304                      JNC 0x0045e2d0
0045e2cc  b101                      MOV CL,0x1
0045e2ce  eb02                      JMP 0x0045e2d2
0045e2d0  32c9                      XOR CL,CL
0045e2d2  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0045e2d8  2500080001                AND EAX,0x1000800
0045e2dd  83c800                    OR EAX,0x0
0045e2e0  7504                      JNZ 0x0045e2e6
0045e2e2  84c9                      TEST CL,CL
0045e2e4  742a                      JZ 0x0045e310
0045e2e6  a17816c700                MOV EAX,[0x00c71678]
0045e2eb  0f57c0                    XORPS XMM0,XMM0
0045e2ee  0f2f8018650200            COMISS XMM0,dword ptr [EAX + 0x26518]
0045e2f5  7219                      JC 0x0045e310
0045e2f7  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0045e301  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045e30b  e9950b0000                JMP 0x0045eea5
0045e310  807c240b00                CMP byte ptr [ESP + 0xb],0x0
0045e315  0f8437020000              JZ 0x0045e552
0045e31b  ff7720                    PUSH dword ptr [EDI + 0x20]
0045e31e  8bcf                      MOV ECX,EDI
0045e320  ff742410                  PUSH dword ptr [ESP + 0x10]
0045e324  e8e7e32400                CALL 0x006ac710
0045e329  84c0                      TEST AL,AL
0045e32b  0f8421020000              JZ 0x0045e552
0045e331  e82a0c2900                CALL 0x006eef60
0045e336  33d2                      XOR EDX,EDX
0045e338  b903000000                MOV ECX,0x3
0045e33d  f7f1                      DIV ECX
0045e33f  85d2                      TEST EDX,EDX
0045e341  0f850b020000              JNZ 0x0045e552
0045e347  3997c40b0000              CMP dword ptr [EDI + 0xbc4],EDX
0045e34d  0f8fff010000              JG 0x0045e552
0045e353  51                        PUSH ECX
0045e354  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045e35b  52                        PUSH EDX
0045e35c  6a02                      PUSH 0x2
0045e35e  51                        PUSH ECX
0045e35f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045e366  8bcf                      MOV ECX,EDI
0045e368  6a76                      PUSH 0x76
0045e36a  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0045e374  899710040000              MOV dword ptr [EDI + 0x410],EDX
0045e37a  e821882700                CALL 0x006d6ba0
0045e37f  f30f10642410              MOVSS XMM4,dword ptr [ESP + 0x10]
0045e385  0f57c9                    XORPS XMM1,XMM1
0045e388  f30f105c241c              MOVSS XMM3,dword ptr [ESP + 0x1c]
0045e38e  0f28d4                    MOVAPS XMM2,XMM4
0045e391  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0045e398  0f28c3                    MOVAPS XMM0,XMM3
0045e39b  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0045e3a2  0f2fd0                    COMISS XMM2,XMM0
0045e3a5  7667                      JBE 0x0045e40e
0045e3a7  33c0                      XOR EAX,EAX
0045e3a9  0f2fcc                    COMISS XMM1,XMM4
0045e3ac  0f57e4                    XORPS XMM4,XMM4
0045e3af  0f96c0                    SETBE AL
0045e3b2  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
0045e3b9  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0045e3bf  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0045e3c7  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0045e3cd  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0045e3d5  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0045e3db  ff2485e8ee4500            JMP dword ptr [EAX*0x4 + 0x45eee8]
0045e40e  0f2fcb                    COMISS XMM1,XMM3
0045e411  761c                      JBE 0x0045e42f
0045e413  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0045e41d  f30f102578aaba00          MOVSS XMM4,dword ptr [0x00baaa78]
0045e425  c744242c0000f0c1          MOV dword ptr [ESP + 0x2c],0xc1f00000
0045e42d  eb15                      JMP 0x0045e444
0045e42f  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
0045e439  0f57e4                    XORPS XMM4,XMM4
0045e43c  c744242c0000f041          MOV dword ptr [ESP + 0x2c],0x41f00000
0045e444  c74424300000c8c1          MOV dword ptr [ESP + 0x30],0xc1c80000
0045e44c  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
0045e454  0f57db                    XORPS XMM3,XMM3
0045e457  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0045e45f  51                        PUSH ECX
0045e460  8d4c244c                  LEA ECX,[ESP + 0x4c]
0045e464  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0045e46b  e88054fcff                CALL 0x004238f0
0045e470  f30f592588a0ba00          MULSS XMM4,dword ptr [0x00baa088]
0045e478  8bf0                      MOV ESI,EAX
0045e47a  0f28c4                    MOVAPS XMM0,XMM4
0045e47d  f30f1164241c              MOVSS dword ptr [ESP + 0x1c],XMM4
0045e483  e8b8f0fbff                CALL 0x0041d540
0045e488  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0045e48e  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
0045e494  e887f0fbff                CALL 0x0041d520
0045e499  51                        PUSH ECX
0045e49a  c7042400008040            MOV dword ptr [ESP],0x40800000
0045e4a1  8d442418                  LEA EAX,[ESP + 0x18]
0045e4a5  56                        PUSH ESI
0045e4a6  6a1c                      PUSH 0x1c
0045e4a8  50                        PUSH EAX
0045e4a9  8d54243c                  LEA EDX,[ESP + 0x3c]
0045e4ad  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0045e4b3  8bcf                      MOV ECX,EDI
0045e4b5  e8d6d31a00                CALL 0x0060b890
0045e4ba  83c410                    ADD ESP,0x10
0045e4bd  8bcf                      MOV ECX,EDI
0045e4bf  e8ec82ffff                CALL 0x004567b0
0045e4c4  84c0                      TEST AL,AL
0045e4c6  0f85d9090000              JNZ 0x0045eea5
0045e4cc  ff772c                    PUSH dword ptr [EDI + 0x2c]
0045e4cf  8d442430                  LEA EAX,[ESP + 0x30]
0045e4d3  ff7728                    PUSH dword ptr [EDI + 0x28]
0045e4d6  50                        PUSH EAX
0045e4d7  e884272700                CALL 0x006d0c60
0045e4dc  8b742438                  MOV ESI,dword ptr [ESP + 0x38]
0045e4e0  33d2                      XOR EDX,EDX
0045e4e2  85f6                      TEST ESI,ESI
0045e4e4  745e                      JZ 0x0045e544
0045e4e6  8b7c2430                  MOV EDI,dword ptr [ESP + 0x30]
0045e4ea  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0045e4f0  8b0c97                    MOV ECX,dword ptr [EDI + EDX*0x4]
0045e4f3  85c9                      TEST ECX,ECX
0045e4f5  7444                      JZ 0x0045e53b
0045e4f7  a17816c700                MOV EAX,[0x00c71678]
0045e4fc  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0045e503  7c06                      JL 0x0045e50b
0045e505  83792801                  CMP dword ptr [ECX + 0x28],0x1
0045e509  740d                      JZ 0x0045e518
0045e50b  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0045e50e  83e80a                    SUB EAX,0xa
0045e511  3ddd030000                CMP EAX,0x3dd
0045e516  7723                      JA 0x0045e53b
0045e518  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
0045e51f  751a                      JNZ 0x0045e53b
0045e521  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
0045e527  2500000020                AND EAX,0x20000000
0045e52c  83c800                    OR EAX,0x0
0045e52f  750a                      JNZ 0x0045e53b
0045e531  c781c40b00005a000000      MOV dword ptr [ECX + 0xbc4],0x5a
0045e53b  42                        INC EDX
0045e53c  3bd6                      CMP EDX,ESI
0045e53e  72b0                      JC 0x0045e4f0
0045e540  8b7c2420                  MOV EDI,dword ptr [ESP + 0x20]
0045e544  8d4c242c                  LEA ECX,[ESP + 0x2c]
0045e548  e86390fbff                CALL 0x004175b0
0045e54d  e953090000                JMP 0x0045eea5
0045e552  a17816c700                MOV EAX,[0x00c71678]
0045e557  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045e55d  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0045e563  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0045e569  03c8                      ADD ECX,EAX
0045e56b  33c0                      XOR EAX,EAX
0045e56d  85c9                      TEST ECX,ECX
0045e56f  0f4fc1                    CMOVG EAX,ECX
0045e572  83f803                    CMP EAX,0x3
0045e575  7d4f                      JGE 0x0045e5c6
0045e577  ff7720                    PUSH dword ptr [EDI + 0x20]
0045e57a  8bcf                      MOV ECX,EDI
0045e57c  ff742410                  PUSH dword ptr [ESP + 0x10]
0045e580  e88be12400                CALL 0x006ac710
0045e585  84c0                      TEST AL,AL
0045e587  743d                      JZ 0x0045e5c6
0045e589  e8d2092900                CALL 0x006eef60
0045e58e  33d2                      XOR EDX,EDX
0045e590  b903000000                MOV ECX,0x3
0045e595  f7f1                      DIV ECX
0045e597  85d2                      TEST EDX,EDX
0045e599  752b                      JNZ 0x0045e5c6
0045e59b  51                        PUSH ECX
0045e59c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045e5a3  52                        PUSH EDX
0045e5a4  6a02                      PUSH 0x2
0045e5a6  51                        PUSH ECX
0045e5a7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045e5ae  8bcf                      MOV ECX,EDI
0045e5b0  6a74                      PUSH 0x74
0045e5b2  e8e9852700                CALL 0x006d6ba0
0045e5b7  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0045e5c1  e9df080000                JMP 0x0045eea5
0045e5c6  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0045e5cc  2500400000                AND EAX,0x4000
0045e5d1  83c800                    OR EAX,0x0
0045e5d4  0f85cb080000              JNZ 0x0045eea5
0045e5da  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045e5e0  e86bed2900                CALL 0x006fd350
0045e5e5  84c0                      TEST AL,AL
0045e5e7  0f85b8080000              JNZ 0x0045eea5
0045e5ed  a17816c700                MOV EAX,[0x00c71678]
0045e5f2  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0045e5f8  034720                    ADD EAX,dword ptr [EDI + 0x20]
0045e5fb  99                        CDQ
0045e5fc  f77c240c                  IDIV dword ptr [ESP + 0xc]
0045e600  85d2                      TEST EDX,EDX
0045e602  0f859d080000              JNZ 0x0045eea5
0045e608  e853092900                CALL 0x006eef60
0045e60d  33d2                      XOR EDX,EDX
0045e60f  b903000000                MOV ECX,0x3
0045e614  f7f1                      DIV ECX
0045e616  85d2                      TEST EDX,EDX
0045e618  0f8587080000              JNZ 0x0045eea5
0045e61e  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0045e628  8b4e34                    MOV ECX,dword ptr [ESI + 0x34]
0045e62b  85c9                      TEST ECX,ECX
0045e62d  7449                      JZ 0x0045e678
0045e62f  83791410                  CMP dword ptr [ECX + 0x14],0x10
0045e633  8bc1                      MOV EAX,ECX
0045e635  7202                      JC 0x0045e639
0045e637  8b01                      MOV EAX,dword ptr [ECX]
0045e639  b9c0ddb100                MOV ECX,0xb1ddc0
0045e63e  6690                      NOP
0045e640  8a10                      MOV DL,byte ptr [EAX]
0045e642  3a11                      CMP DL,byte ptr [ECX]
0045e644  751a                      JNZ 0x0045e660
0045e646  84d2                      TEST DL,DL
0045e648  7412                      JZ 0x0045e65c
0045e64a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045e64d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045e650  750e                      JNZ 0x0045e660
0045e652  83c002                    ADD EAX,0x2
0045e655  83c102                    ADD ECX,0x2
0045e658  84d2                      TEST DL,DL
0045e65a  75e4                      JNZ 0x0045e640
0045e65c  33c0                      XOR EAX,EAX
0045e65e  eb05                      JMP 0x0045e665
0045e660  1bc0                      SBB EAX,EAX
0045e662  83c801                    OR EAX,0x1
0045e665  85c0                      TEST EAX,EAX
0045e667  750f                      JNZ 0x0045e678
0045e669  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
0045e66c  80783400                  CMP byte ptr [EAX + 0x34],0x0
0045e670  7424                      JZ 0x0045e696
0045e672  807e4400                  CMP byte ptr [ESI + 0x44],0x0
0045e676  751e                      JNZ 0x0045e696
0045e678  6a01                      PUSH 0x1
0045e67a  68c0ddb100                PUSH 0xb1ddc0
0045e67f  8bce                      MOV ECX,ESI
0045e681  e84abffaff                CALL 0x0040a5d0
0045e686  84c0                      TEST AL,AL
0045e688  740c                      JZ 0x0045e696
0045e68a  8d4e30                    LEA ECX,[ESI + 0x30]
0045e68d  e81ebbfaff                CALL 0x0040a1b0
0045e692  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0045e696  51                        PUSH ECX
0045e697  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045e69e  6a00                      PUSH 0x0
0045e6a0  6a02                      PUSH 0x2
0045e6a2  51                        PUSH ECX
0045e6a3  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045e6aa  8bcf                      MOV ECX,EDI
0045e6ac  6a70                      PUSH 0x70
0045e6ae  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045e6b8  e8e3842700                CALL 0x006d6ba0
0045e6bd  e9e3070000                JMP 0x0045eea5
0045e6c2  83f808                    CMP EAX,0x8
0045e6c5  0f8541010000              JNZ 0x0045e80c
0045e6cb  01b710040000              ADD dword ptr [EDI + 0x410],ESI
0045e6d1  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0045e6d7  83f803                    CMP EAX,0x3
0045e6da  7731                      JA 0x0045e70d
0045e6dc  ff2485f8ee4500            JMP dword ptr [EAX*0x4 + 0x45eef8]
0045e70d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045e711  0f84eb060000              JZ 0x0045ee02
0045e717  68dcd2b100                PUSH 0xb1d2dc
0045e71c  8d4f78                    LEA ECX,[EDI + 0x78]
0045e71f  e8acc6faff                CALL 0x0040add0
0045e724  84c0                      TEST AL,AL
0045e726  0f84c3060000              JZ 0x0045edef
0045e72c  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0045e732  0f57db                    XORPS XMM3,XMM3
0045e735  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0045e73d  f30f101544b6c700          MOVSS XMM2,dword ptr [0x00c7b644]
0045e745  f30f102500aeba00          MOVSS XMM4,dword ptr [0x00baae00]
0045e74d  83f803                    CMP EAX,0x3
0045e750  7746                      JA 0x0045e798
0045e752  ff248508ef4500            JMP dword ptr [EAX*0x4 + 0x45ef08]
0045e798  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0045e7a0  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
0045e7a8  6a00                      PUSH 0x0
0045e7aa  57                        PUSH EDI
0045e7ab  8d442434                  LEA EAX,[ESP + 0x34]
0045e7af  c744243400000000          MOV dword ptr [ESP + 0x34],0x0
0045e7b7  50                        PUSH EAX
0045e7b8  6a0a                      PUSH 0xa
0045e7ba  51                        PUSH ECX
0045e7bb  f30f111c24                MOVSS dword ptr [ESP],XMM3
0045e7c0  8d442428                  LEA EAX,[ESP + 0x28]
0045e7c4  50                        PUSH EAX
0045e7c5  6a01                      PUSH 0x1
0045e7c7  c744244c0000c8c1          MOV dword ptr [ESP + 0x4c],0xc1c80000
0045e7cf  f30f114c2430              MOVSS dword ptr [ESP + 0x30],XMM1
0045e7d5  f30f11542434              MOVSS dword ptr [ESP + 0x34],XMM2
0045e7db  e8300b5100                CALL 0x0096f310
0045e7e0  83c41c                    ADD ESP,0x1c
0045e7e3  c780d404000002000000      MOV dword ptr [EAX + 0x4d4],0x2
0045e7ed  83bfc00b000003            CMP dword ptr [EDI + 0xbc0],0x3
0045e7f4  750a                      JNZ 0x0045e800
0045e7f6  c7805803000000002041      MOV dword ptr [EAX + 0x358],0x41200000
0045e800  8b10                      MOV EDX,dword ptr [EAX]
0045e802  8bc8                      MOV ECX,EAX
0045e804  ff520c                    CALL dword ptr [EDX + 0xc]
0045e807  e9e3050000                JMP 0x0045edef
0045e80c  83f80d                    CMP EAX,0xd
0045e80f  0f8507030000              JNZ 0x0045eb1c
0045e815  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0045e818  85f6                      TEST ESI,ESI
0045e81a  744f                      JZ 0x0045e86b
0045e81c  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0045e820  8bc6                      MOV EAX,ESI
0045e822  7202                      JC 0x0045e826
0045e824  8b06                      MOV EAX,dword ptr [ESI]
0045e826  b9ccd2b100                MOV ECX,0xb1d2cc
0045e82b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0045e830  8a10                      MOV DL,byte ptr [EAX]
0045e832  3a11                      CMP DL,byte ptr [ECX]
0045e834  751a                      JNZ 0x0045e850
0045e836  84d2                      TEST DL,DL
0045e838  7412                      JZ 0x0045e84c
0045e83a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045e83d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045e840  750e                      JNZ 0x0045e850
0045e842  83c002                    ADD EAX,0x2
0045e845  83c102                    ADD ECX,0x2
0045e848  84d2                      TEST DL,DL
0045e84a  75e4                      JNZ 0x0045e830
0045e84c  33c0                      XOR EAX,EAX
0045e84e  eb05                      JMP 0x0045e855
0045e850  1bc0                      SBB EAX,EAX
0045e852  83c801                    OR EAX,0x1
0045e855  85c0                      TEST EAX,EAX
0045e857  7512                      JNZ 0x0045e86b
0045e859  384634                    CMP byte ptr [ESI + 0x34],AL
0045e85c  742e                      JZ 0x0045e88c
0045e85e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0045e864  8d7748                    LEA ESI,[EDI + 0x48]
0045e867  7523                      JNZ 0x0045e88c
0045e869  eb03                      JMP 0x0045e86e
0045e86b  8d7748                    LEA ESI,[EDI + 0x48]
0045e86e  6a01                      PUSH 0x1
0045e870  68ccd2b100                PUSH 0xb1d2cc
0045e875  8bce                      MOV ECX,ESI
0045e877  e854bdfaff                CALL 0x0040a5d0
0045e87c  84c0                      TEST AL,AL
0045e87e  740c                      JZ 0x0045e88c
0045e880  8d4e30                    LEA ECX,[ESI + 0x30]
0045e883  e828b9faff                CALL 0x0040a1b0
0045e888  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0045e88c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045e890  8d7778                    LEA ESI,[EDI + 0x78]
0045e893  0f8469050000              JZ 0x0045ee02
0045e899  68e0ddb100                PUSH 0xb1dde0
0045e89e  8bce                      MOV ECX,ESI
0045e8a0  e82bc5faff                CALL 0x0040add0
0045e8a5  84c0                      TEST AL,AL
0045e8a7  7420                      JZ 0x0045e8c9
0045e8a9  51                        PUSH ECX
0045e8aa  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045e8b1  6a00                      PUSH 0x0
0045e8b3  6a02                      PUSH 0x2
0045e8b5  51                        PUSH ECX
0045e8b6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045e8bd  8bcf                      MOV ECX,EDI
0045e8bf  683a010000                PUSH 0x13a
0045e8c4  e8d7822700                CALL 0x006d6ba0
0045e8c9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045e8cd  0f842f050000              JZ 0x0045ee02
0045e8d3  68dcd2b100                PUSH 0xb1d2dc
0045e8d8  8bce                      MOV ECX,ESI
0045e8da  e8f1c4faff                CALL 0x0040add0
0045e8df  84c0                      TEST AL,AL
0045e8e1  0f8408050000              JZ 0x0045edef
0045e8e7  51                        PUSH ECX
0045e8e8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045e8ef  6a00                      PUSH 0x0
0045e8f1  6a02                      PUSH 0x2
0045e8f3  51                        PUSH ECX
0045e8f4  c704243333333f            MOV dword ptr [ESP],0x3f333333
0045e8fb  8bcf                      MOV ECX,EDI
0045e8fd  6809010000                PUSH 0x109
0045e902  e899822700                CALL 0x006d6ba0
0045e907  a17816c700                MOV EAX,[0x00c71678]
0045e90c  33f6                      XOR ESI,ESI
0045e90e  6800000010                PUSH 0x10000000
0045e913  6a00                      PUSH 0x0
0045e915  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045e91b  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0045e921  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0045e927  03c1                      ADD EAX,ECX
0045e929  8bcf                      MOV ECX,EDI
0045e92b  85c0                      TEST EAX,EAX
0045e92d  0f4ff0                    CMOVG ESI,EAX
0045e930  e8fb8afbff                CALL 0x00417430
0045e935  84c0                      TEST AL,AL
0045e937  7410                      JZ 0x0045e949
0045e939  6a00                      PUSH 0x0
0045e93b  51                        PUSH ECX
0045e93c  6a00                      PUSH 0x0
0045e93e  6a55                      PUSH 0x55
0045e940  8bcf                      MOV ECX,EDI
0045e942  e899de2400                CALL 0x006ac7e0
0045e947  8bf0                      MOV ESI,EAX
0045e949  b903000000                MOV ECX,0x3
0045e94e  2bce                      SUB ECX,ESI
0045e950  0f8899040000              JS 0x0045edef
0045e956  8b157816c700              MOV EDX,dword ptr [0x00c71678]
0045e95c  8db73c030000              LEA ESI,[EDI + 0x33c]
0045e962  81c200830100              ADD EDX,0x18300
0045e968  41                        INC ECX
0045e969  894c2410                  MOV dword ptr [ESP + 0x10],ECX
0045e96d  0f1f00                    NOP dword ptr [EAX]
0045e970  6a00                      PUSH 0x0
0045e972  6a00                      PUSH 0x0
0045e974  6a00                      PUSH 0x0
0045e976  51                        PUSH ECX
0045e977  8b0a                      MOV ECX,dword ptr [EDX]
0045e979  8d44243c                  LEA EAX,[ESP + 0x3c]
0045e97d  c704240000c842            MOV dword ptr [ESP],0x42c80000
0045e984  56                        PUSH ESI
0045e985  50                        PUSH EAX
0045e986  e8954b3b00                CALL 0x00813520
0045e98b  e8d0052900                CALL 0x006eef60
0045e990  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045e996  6a00                      PUSH 0x0
0045e998  50                        PUSH EAX
0045e999  6a00                      PUSH 0x0
0045e99b  57                        PUSH EDI
0045e99c  6840b6c700                PUSH 0xc7b640
0045e9a1  8d442440                  LEA EAX,[ESP + 0x40]
0045e9a5  50                        PUSH EAX
0045e9a6  6a00                      PUSH 0x0
0045e9a8  6a55                      PUSH 0x55
0045e9aa  e861fa2900                CALL 0x006fe410
0045e9af  6a00                      PUSH 0x0
0045e9b1  68acd6c500                PUSH 0xc5d6ac
0045e9b6  68dcd5c500                PUSH 0xc5d5dc
0045e9bb  6a00                      PUSH 0x0
0045e9bd  50                        PUSH EAX
0045e9be  e8ee1e6900                CALL 0x00af08b1
0045e9c3  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0045e9cb  83c414                    ADD ESP,0x14
0045e9ce  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
0045e9d4  f30f5cc1                  SUBSS XMM0,XMM1
0045e9d8  8b157816c700              MOV EDX,dword ptr [0x00c71678]
0045e9de  81c200830100              ADD EDX,0x18300
0045e9e4  89442420                  MOV dword ptr [ESP + 0x20],EAX
0045e9e8  8954240c                  MOV dword ptr [ESP + 0xc],EDX
0045e9ec  f30f5ec1                  DIVSS XMM0,XMM1
0045e9f0  8b0a                      MOV ECX,dword ptr [EDX]
0045e9f2  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0045e9fa  f30f2cf0                  CVTTSS2SI ESI,XMM0
0045e9fe  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
0045ea04  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
0045ea0c  f30f5ec1                  DIVSS XMM0,XMM1
0045ea10  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0045ea18  f30f2cc0                  CVTTSS2SI EAX,XMM0
0045ea1c  85f6                      TEST ESI,ESI
0045ea1e  783e                      JS 0x0045ea5e
0045ea20  8b510c                    MOV EDX,dword ptr [ECX + 0xc]
0045ea23  3bf2                      CMP ESI,EDX
0045ea25  7d33                      JGE 0x0045ea5a
0045ea27  85c0                      TEST EAX,EAX
0045ea29  782f                      JS 0x0045ea5a
0045ea2b  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
0045ea2e  7d2a                      JGE 0x0045ea5a
0045ea30  0fafc2                    IMUL EAX,EDX
0045ea33  03c6                      ADD EAX,ESI
0045ea35  3dbf010000                CMP EAX,0x1bf
0045ea3a  771e                      JA 0x0045ea5a
0045ea3c  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
0045ea47  8b54240c                  MOV EDX,dword ptr [ESP + 0xc]
0045ea4b  7f11                      JG 0x0045ea5e
0045ea4d  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
0045ea58  eb04                      JMP 0x0045ea5e
0045ea5a  8b54240c                  MOV EDX,dword ptr [ESP + 0xc]
0045ea5e  836c241001                SUB dword ptr [ESP + 0x10],0x1
0045ea63  8db73c030000              LEA ESI,[EDI + 0x33c]
0045ea69  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
0045ea6d  f30f10a03c030000          MOVSS XMM4,dword ptr [EAX + 0x33c]
0045ea75  f30f108050030000          MOVSS XMM0,dword ptr [EAX + 0x350]
0045ea7d  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
0045ea85  f30f11a034030000          MOVSS dword ptr [EAX + 0x334],XMM4
0045ea8d  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
0045ea95  f30f119838030000          MOVSS dword ptr [EAX + 0x338],XMM3
0045ea9d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0045eaa5  f30f11883c030000          MOVSS dword ptr [EAX + 0x33c],XMM1
0045eaad  f30f5ce1                  SUBSS XMM4,XMM1
0045eab1  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
0045eab9  f30f5cda                  SUBSS XMM3,XMM2
0045eabd  f30f119040030000          MOVSS dword ptr [EAX + 0x340],XMM2
0045eac5  f30f118050030000          MOVSS dword ptr [EAX + 0x350],XMM0
0045eacd  c780640b000006000000      MOV dword ptr [EAX + 0xb64],0x6
0045ead7  f30f5925bca0ba00          MULSS XMM4,dword ptr [0x00baa0bc]
0045eadf  c780bc0b0000000000c1      MOV dword ptr [EAX + 0xbbc],0xc1000000
0045eae9  f30f591dbca0ba00          MULSS XMM3,dword ptr [0x00baa0bc]
0045eaf1  f30f11a060030000          MOVSS dword ptr [EAX + 0x360],XMM4
0045eaf9  f30f11a0b00b0000          MOVSS dword ptr [EAX + 0xbb0],XMM4
0045eb01  f30f119864030000          MOVSS dword ptr [EAX + 0x364],XMM3
0045eb09  f30f1198b40b0000          MOVSS dword ptr [EAX + 0xbb4],XMM3
0045eb11  0f8559feffff              JNZ 0x0045e970
0045eb17  e9d3020000                JMP 0x0045edef
0045eb1c  83f806                    CMP EAX,0x6
0045eb1f  0f85f6020000              JNZ 0x0045ee1b
0045eb25  01b710040000              ADD dword ptr [EDI + 0x410],ESI
0045eb2b  8d44242c                  LEA EAX,[ESP + 0x2c]
0045eb2f  50                        PUSH EAX
0045eb30  8d4f78                    LEA ECX,[EDI + 0x78]
0045eb33  e8b840ffff                CALL 0x00452bf0
0045eb38  83781410                  CMP dword ptr [EAX + 0x14],0x10
0045eb3c  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
0045eb3f  7202                      JC 0x0045eb43
0045eb41  8b00                      MOV EAX,dword ptr [EAX]
0045eb43  6a05                      PUSH 0x5
0045eb45  68c0ddb100                PUSH 0xb1ddc0
0045eb4a  8bc8                      MOV ECX,EAX
0045eb4c  e88fdffaff                CALL 0x0040cae0
0045eb51  8b542448                  MOV EDX,dword ptr [ESP + 0x48]
0045eb55  83c408                    ADD ESP,0x8
0045eb58  8844240b                  MOV byte ptr [ESP + 0xb],AL
0045eb5c  83fa10                    CMP EDX,0x10
0045eb5f  7233                      JC 0x0045eb94
0045eb61  8b4c242c                  MOV ECX,dword ptr [ESP + 0x2c]
0045eb65  42                        INC EDX
0045eb66  8bc1                      MOV EAX,ECX
0045eb68  81fa00100000              CMP EDX,0x1000
0045eb6e  7216                      JC 0x0045eb86
0045eb70  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0045eb73  83c223                    ADD EDX,0x23
0045eb76  2bc1                      SUB EAX,ECX
0045eb78  83c0fc                    ADD EAX,-0x4
0045eb7b  83f81f                    CMP EAX,0x1f
0045eb7e  7606                      JBE 0x0045eb86
0045eb80  ff159488b100              CALL dword ptr [0x00b18894]
0045eb86  52                        PUSH EDX
0045eb87  51                        PUSH ECX
0045eb88  e8cf056900                CALL 0x00aef15c
0045eb8d  8a442413                  MOV AL,byte ptr [ESP + 0x13]
0045eb91  83c408                    ADD ESP,0x8
0045eb94  8d4f48                    LEA ECX,[EDI + 0x48]
0045eb97  84c0                      TEST AL,AL
0045eb99  0f84d6000000              JZ 0x0045ec75
0045eb9f  6804deb100                PUSH 0xb1de04
0045eba4  e8e7c4faff                CALL 0x0040b090
0045eba9  84c0                      TEST AL,AL
0045ebab  746d                      JZ 0x0045ec1a
0045ebad  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
0045ebb3  8d4c242c                  LEA ECX,[ESP + 0x2c]
0045ebb7  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0045ebbd  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0045ebc3  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0045ebc9  e8f2135b00                CALL 0x00a0ffc0
0045ebce  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
0045ebd4  f30f5905cca4ba00          MULSS XMM0,dword ptr [0x00baa4cc]
0045ebdc  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0045ebe4  f30f59c2                  MULSS XMM0,XMM2
0045ebe8  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0045ebf0  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0045ebf8  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
0045ebfe  f30f5905cca4ba00          MULSS XMM0,dword ptr [0x00baa4cc]
0045ec06  f30f59c2                  MULSS XMM0,XMM2
0045ec0a  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
0045ec12  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0045ec1a  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0045ec24  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045ec28  740d                      JZ 0x0045ec37
0045ec2a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045ec31  0f856e020000              JNZ 0x0045eea5
0045ec37  51                        PUSH ECX
0045ec38  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ec3f  6a00                      PUSH 0x0
0045ec41  6a3c                      PUSH 0x3c
0045ec43  51                        PUSH ECX
0045ec44  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0045ec4b  8bcf                      MOV ECX,EDI
0045ec4d  6a74                      PUSH 0x74
0045ec4f  e84c7f2700                CALL 0x006d6ba0
0045ec54  83bf100400004b            CMP dword ptr [EDI + 0x410],0x4b
0045ec5b  0f8e44020000              JLE 0x0045eea5
0045ec61  6a00                      PUSH 0x0
0045ec63  68fcddb100                PUSH 0xb1ddfc
0045ec68  8d4f48                    LEA ECX,[EDI + 0x48]
0045ec6b  e810b7faff                CALL 0x0040a380
0045ec70  e930020000                JMP 0x0045eea5
0045ec75  6874d5b100                PUSH 0xb1d574
0045ec7a  e8b1c3faff                CALL 0x0040b030
0045ec7f  84c0                      TEST AL,AL
0045ec81  0f8468010000              JZ 0x0045edef
0045ec87  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0045ec91  e8ca022900                CALL 0x006eef60
0045ec96  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045ec9c  6a00                      PUSH 0x0
0045ec9e  50                        PUSH EAX
0045ec9f  6a00                      PUSH 0x0
0045eca1  57                        PUSH EDI
0045eca2  6840b6c700                PUSH 0xc7b640
0045eca7  8d873c030000              LEA EAX,[EDI + 0x33c]
0045ecad  50                        PUSH EAX
0045ecae  6a3d                      PUSH 0x3d
0045ecb0  68e8030000                PUSH 0x3e8
0045ecb5  e856f72900                CALL 0x006fe410
0045ecba  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
0045ecc0  c7805c04000014000000      MOV dword ptr [EAX + 0x45c],0x14
0045ecca  8db0bc030000              LEA ESI,[EAX + 0x3bc]
0045ecd0  c7806004000014000000      MOV dword ptr [EAX + 0x460],0x14
0045ecda  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0045ece2  f30f118054040000          MOVSS dword ptr [EAX + 0x454],XMM0
0045ecea  f30f58058ca9ba00          ADDSS XMM0,dword ptr [0x00baa98c]
0045ecf2  f30f118058040000          MOVSS dword ptr [EAX + 0x458],XMM0
0045ecfa  85c9                      TEST ECX,ECX
0045ecfc  7414                      JZ 0x0045ed12
0045ecfe  8d442414                  LEA EAX,[ESP + 0x14]
0045ed02  89742414                  MOV dword ptr [ESP + 0x14],ESI
0045ed06  50                        PUSH EAX
0045ed07  81c1cc030000              ADD ECX,0x3cc
0045ed0d  e8fe040700                CALL 0x004cf210
0045ed12  56                        PUSH ESI
0045ed13  8bcf                      MOV ECX,EDI
0045ed15  893e                      MOV dword ptr [ESI],EDI
0045ed17  e8d4ef0600                CALL 0x004cdcf0
0045ed1c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045ed22  6a0f                      PUSH 0xf
0045ed24  e847492a00                CALL 0x00703670
0045ed29  51                        PUSH ECX
0045ed2a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ed31  6a00                      PUSH 0x0
0045ed33  6a02                      PUSH 0x2
0045ed35  51                        PUSH ECX
0045ed36  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ed3d  8bcf                      MOV ECX,EDI
0045ed3f  6a30                      PUSH 0x30
0045ed41  e85a7e2700                CALL 0x006d6ba0
0045ed46  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
0045ed4d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045ed53  8db73c030000              LEA ESI,[EDI + 0x33c]
0045ed59  6a00                      PUSH 0x0
0045ed5b  6a00                      PUSH 0x0
0045ed5d  6800000001                PUSH 0x1000000
0045ed62  83ec10                    SUB ESP,0x10
0045ed65  8bc4                      MOV EAX,ESP
0045ed67  57                        PUSH EDI
0045ed68  6a00                      PUSH 0x0
0045ed6a  83ec08                    SUB ESP,0x8
0045ed6d  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0045ed70  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0045ed78  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
0045ed7e  c7042400004842            MOV dword ptr [ESP],0x42480000
0045ed85  56                        PUSH ESI
0045ed86  e815052a00                CALL 0x006ff2a0
0045ed8b  8d4c242c                  LEA ECX,[ESP + 0x2c]
0045ed8f  e8dc77ffff                CALL 0x00456570
0045ed94  a17816c700                MOV EAX,[0x00c71678]
0045ed99  8d54242c                  LEA EDX,[ESP + 0x2c]
0045ed9d  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0045eda1  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0045eda7  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0045edac  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0045edb2  c74424440d000000          MOV dword ptr [ESP + 0x44],0xd
0045edba  c744243ccdcccc3c          MOV dword ptr [ESP + 0x3c],0x3ccccccd
0045edc2  c74424380ad7233d          MOV dword ptr [ESP + 0x38],0x3d23d70a
0045edca  ff81fc700000              INC dword ptr [ECX + 0x70fc]
0045edd0  8b81fc700000              MOV EAX,dword ptr [ECX + 0x70fc]
0045edd6  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0045eddc  52                        PUSH EDX
0045eddd  2501000080                AND EAX,0x80000001
0045ede2  7905                      JNS 0x0045ede9
0045ede4  48                        DEC EAX
0045ede5  83c8fe                    OR EAX,0xfffffffe
0045ede8  40                        INC EAX
0045ede9  50                        PUSH EAX
0045edea  e821f13b00                CALL 0x0081df10
0045edef  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045edf3  740d                      JZ 0x0045ee02
0045edf5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045edfc  0f85a3000000              JNZ 0x0045eea5
0045ee02  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045ee0c  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045ee16  e98a000000                JMP 0x0045eea5
0045ee1b  83f810                    CMP EAX,0x10
0045ee1e  0f8581000000              JNZ 0x0045eea5
0045ee24  6a00                      PUSH 0x0
0045ee26  6814deb100                PUSH 0xb1de14
0045ee2b  8d4f48                    LEA ECX,[EDI + 0x48]
0045ee2e  e84db5faff                CALL 0x0040a380
0045ee33  8bc6                      MOV EAX,ESI
0045ee35  8d4f48                    LEA ECX,[EDI + 0x48]
0045ee38  018710040000              ADD dword ptr [EDI + 0x410],EAX
0045ee3e  6814deb100                PUSH 0xb1de14
0045ee43  e8e8c1faff                CALL 0x0040b030
0045ee48  84c0                      TEST AL,AL
0045ee4a  741d                      JZ 0x0045ee69
0045ee4c  51                        PUSH ECX
0045ee4d  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ee54  6a00                      PUSH 0x0
0045ee56  6a02                      PUSH 0x2
0045ee58  51                        PUSH ECX
0045ee59  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045ee60  8bcf                      MOV ECX,EDI
0045ee62  6a7a                      PUSH 0x7a
0045ee64  e8377d2700                CALL 0x006d6ba0
0045ee69  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045ee6d  7409                      JZ 0x0045ee78
0045ee6f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045ee76  752d                      JNZ 0x0045eea5
0045ee78  a17816c700                MOV EAX,[0x00c71678]
0045ee7d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045ee87  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045ee91  c7801c6502000000803f      MOV dword ptr [EAX + 0x2651c],0x3f800000
0045ee9b  c78014650200b4000000      MOV dword ptr [EAX + 0x26514],0xb4
0045eea5  a17816c700                MOV EAX,[0x00c71678]
0045eeaa  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045eeb0  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
0045eeb7  751b                      JNZ 0x0045eed4
0045eeb9  f30f100514abba00          MOVSS XMM0,dword ptr [0x00baab14]
0045eec1  0f2f8740030000            COMISS XMM0,dword ptr [EDI + 0x340]
0045eec8  760a                      JBE 0x0045eed4
0045eeca  c787400300000000a043      MOV dword ptr [EDI + 0x340],0x43a00000
0045eed4  8b4c2474                  MOV ECX,dword ptr [ESP + 0x74]
0045eed8  5f                        POP EDI
0045eed9  5e                        POP ESI
0045eeda  33cc                      XOR ECX,ESP
0045eedc  e84a026900                CALL 0x00aef12b
0045eee1  8be5                      MOV ESP,EBP
0045eee3  5d                        POP EBP
0045eee4  c3                        RET
