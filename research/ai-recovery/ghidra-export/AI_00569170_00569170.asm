; J460 NPC AI 0x00569170 AI_00569170
; types=912
; identities=912.0.0,912.10.0,912.100.0,912.100.1,912.100.2,912.20.0,912.30.0
; entry=00569170
00569170  53                        PUSH EBX
00569171  8bdc                      MOV EBX,ESP
00569173  83ec08                    SUB ESP,0x8
00569176  83e4f8                    AND ESP,0xfffffff8
00569179  83c404                    ADD ESP,0x4
0056917c  55                        PUSH EBP
0056917d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00569180  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00569184  8bec                      MOV EBP,ESP
00569186  6aff                      PUSH -0x1
00569188  68534faf00                PUSH 0xaf4f53
0056918d  64a100000000              MOV EAX,FS:[0x0]
00569193  50                        PUSH EAX
00569194  53                        PUSH EBX
00569195  81ece8010000              SUB ESP,0x1e8
0056919b  a1b493bf00                MOV EAX,[0x00bf93b4]
005691a0  33c5                      XOR EAX,EBP
005691a2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
005691a5  56                        PUSH ESI
005691a6  57                        PUSH EDI
005691a7  50                        PUSH EAX
005691a8  8d45f4                    LEA EAX,[EBP + -0xc]
005691ab  64a300000000              MOV FS:[0x0],EAX
005691b1  8bf9                      MOV EDI,ECX
005691b3  89bdb4feffff              MOV dword ptr [EBP + 0xfffffeb4],EDI
005691b9  a17816c700                MOV EAX,[0x00c71678]
005691be  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
005691c6  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005691cc  89b58cfeffff              MOV dword ptr [EBP + 0xfffffe8c],ESI
005691d2  f30f105618                MOVSS XMM2,dword ptr [ESI + 0x18]
005691d7  f30f106e14                MOVSS XMM5,dword ptr [ESI + 0x14]
005691dc  0f28da                    MOVAPS XMM3,XMM2
005691df  f30f581d04a9ba00          ADDSS XMM3,dword ptr [0x00baa904]
005691e7  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
005691ef  f30f10661c                MOVSS XMM4,dword ptr [ESI + 0x1c]
005691f4  0f28c5                    MOVAPS XMM0,XMM5
005691f7  f30f104e20                MOVSS XMM1,dword ptr [ESI + 0x20]
005691fc  2bc8                      SUB ECX,EAX
005691fe  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
00569205  f30f119d7cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM3
0056920d  0f28da                    MOVAPS XMM3,XMM2
00569210  f30f5c1d04a9ba00          SUBSS XMM3,dword ptr [0x00baa904]
00569218  f30f11ad94feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM5
00569220  f30f1195ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM2
00569228  f30f11a590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM4
00569230  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
00569238  f30f119dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM3
00569240  f30f101da0a9ba00          MOVSS XMM3,dword ptr [0x00baa9a0]
00569248  f30f5cc3                  SUBSS XMM0,XMM3
0056924c  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
00569252  f30f118d60feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM1
0056925a  f30f11855cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM0
00569262  0f85dc010000              JNZ 0x00569444
00569268  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0056926b  85c0                      TEST EAX,EAX
0056926d  7515                      JNZ 0x00569284
0056926f  388773010000              CMP byte ptr [EDI + 0x173],AL
00569275  0f84a7000000              JZ 0x00569322
0056927b  8bcf                      MOV ECX,EDI
0056927d  e80ef8ffff                CALL 0x00568a90
00569282  eb7e                      JMP 0x00569302
00569284  83f801                    CMP EAX,0x1
00569287  0f8495000000              JZ 0x00569322
0056928d  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00569293  85c0                      TEST EAX,EAX
00569295  745b                      JZ 0x005692f2
00569297  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0056929f  f30f109880030000          MOVSS XMM3,dword ptr [EAX + 0x380]
005692a7  0f2fd8                    COMISS XMM3,XMM0
005692aa  760a                      JBE 0x005692b6
005692ac  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
005692b4  eb08                      JMP 0x005692be
005692b6  f30f119f80030000          MOVSS dword ptr [EDI + 0x380],XMM3
005692be  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005692c5  745b                      JZ 0x00569322
005692c7  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
005692cd  8d4d9c                    LEA ECX,[EBP + -0x64]
005692d0  8b06                      MOV EAX,dword ptr [ESI]
005692d2  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
005692d5  e896c9ecff                CALL 0x00435c70
005692da  50                        PUSH EAX
005692db  8bce                      MOV ECX,ESI
005692dd  ffd2                      CALL EDX
005692df  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
005692e5  e8a6f7ffff                CALL 0x00568a90
005692ea  8bb58cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe8c]
005692f0  eb10                      JMP 0x00569302
005692f2  8d4d9c                    LEA ECX,[EBP + -0x64]
005692f5  e876c9ecff                CALL 0x00435c70
005692fa  8b17                      MOV EDX,dword ptr [EDI]
005692fc  8bcf                      MOV ECX,EDI
005692fe  50                        PUSH EAX
005692ff  ff5224                    CALL dword ptr [EDX + 0x24]
00569302  f30f108ddcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffedc]
0056930a  f30f1095ecfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeec]
00569312  f30f10a590feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe90]
0056931a  f30f10ad94feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffe94]
00569322  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00569326  7551                      JNZ 0x00569379
00569328  8bb6f8110000              MOV ESI,dword ptr [ESI + 0x11f8]
0056932e  f30f5cca                  SUBSS XMM1,XMM2
00569332  f30f58e5                  ADDSS XMM4,XMM5
00569336  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
0056933d  f30f590da0a2ba00          MULSS XMM1,dword ptr [0x00baa2a0]
00569345  f30f5925d0a2ba00          MULSS XMM4,dword ptr [0x00baa2d0]
0056934d  f30f58ca                  ADDSS XMM1,XMM2
00569351  f30f11a5c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM4
00569359  f30f118dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM1
00569361  7516                      JNZ 0x00569379
00569363  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
00569369  50                        PUSH EAX
0056936a  8d4e50                    LEA ECX,[ESI + 0x50]
0056936d  e8bebd3d00                CALL 0x00945130
00569372  c6868c00000001            MOV byte ptr [ESI + 0x8c],0x1
00569379  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
0056937e  0f57c0                    XORPS XMM0,XMM0
00569381  0f2fc8                    COMISS XMM1,XMM0
00569384  0f86cf330000              JBE 0x0056c759
0056938a  33c9                      XOR ECX,ECX
0056938c  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
00569393  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
00569396  b893244992                MOV EAX,0x92492493
0056939b  898decfeffff              MOV dword ptr [EBP + 0xfffffeec],ECX
005693a1  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
005693a4  2bce                      SUB ECX,ESI
005693a6  f7e9                      IMUL ECX
005693a8  03d1                      ADD EDX,ECX
005693aa  c1fa05                    SAR EDX,0x5
005693ad  8bc2                      MOV EAX,EDX
005693af  c1e81f                    SHR EAX,0x1f
005693b2  03c2                      ADD EAX,EDX
005693b4  0f849f330000              JZ 0x0056c759
005693ba  33c9                      XOR ECX,ECX
005693bc  0f1f4000                  NOP dword ptr [EAX]
005693c0  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005693c3  39443110                  CMP dword ptr [ECX + ESI*0x1 + 0x10],EAX
005693c7  7406                      JZ 0x005693cf
005693c9  39443118                  CMP dword ptr [ECX + ESI*0x1 + 0x18],EAX
005693cd  7529                      JNZ 0x005693f8
005693cf  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005693d5  2500000020                AND EAX,0x20000000
005693da  83c800                    OR EAX,0x0
005693dd  7404                      JZ 0x005693e3
005693df  b201                      MOV DL,0x1
005693e1  eb02                      JMP 0x005693e5
005693e3  32d2                      XOR DL,DL
005693e5  8b443130                  MOV EAX,dword ptr [ECX + ESI*0x1 + 0x30]
005693e9  d1e8                      SHR EAX,0x1
005693eb  2401                      AND AL,0x1
005693ed  3ac2                      CMP AL,DL
005693ef  7507                      JNZ 0x005693f8
005693f1  c7043100000000            MOV dword ptr [ECX + ESI*0x1],0x0
005693f8  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
005693fd  b893244992                MOV EAX,0x92492493
00569402  f30f580431                ADDSS XMM0,dword ptr [ECX + ESI*0x1]
00569407  ff85ecfeffff              INC dword ptr [EBP + 0xfffffeec]
0056940d  83c138                    ADD ECX,0x38
00569410  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
00569416  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
0056941b  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
0056941e  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
00569421  2bce                      SUB ECX,ESI
00569423  f7e9                      IMUL ECX
00569425  03d1                      ADD EDX,ECX
00569427  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
0056942d  c1fa05                    SAR EDX,0x5
00569430  8bc2                      MOV EAX,EDX
00569432  c1e81f                    SHR EAX,0x1f
00569435  03c2                      ADD EAX,EDX
00569437  3985ecfeffff              CMP dword ptr [EBP + 0xfffffeec],EAX
0056943d  7281                      JC 0x005693c0
0056943f  e915330000                JMP 0x0056c759
00569444  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0056944a  85c0                      TEST EAX,EAX
0056944c  0f852e050000              JNZ 0x00569980
00569452  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00569458  81f9804ec300              CMP ECX,0xc34e80
0056945e  742a                      JZ 0x0056948a
00569460  0f1005804ec300            MOVUPS XMM0,xmmword ptr [0x00c34e80]
00569467  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0056946a  0f1005904ec300            MOVUPS XMM0,xmmword ptr [0x00c34e90]
00569471  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00569475  f30f7e05a04ec300          MOVQ XMM0,qword ptr [0x00c34ea0]
0056947d  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00569482  a1a84ec300                MOV EAX,[0x00c34ea8]
00569487  894128                    MOV dword ptr [ECX + 0x28],EAX
0056948a  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0056948e  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
00569498  0f85bb040000              JNZ 0x00569959
0056949e  8d45e4                    LEA EAX,[EBP + -0x1c]
005694a1  8bce                      MOV ECX,ESI
005694a3  50                        PUSH EAX
005694a4  e857982a00                CALL 0x00812d00
005694a9  f30f10857cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe7c]
005694b1  8b00                      MOV EAX,dword ptr [EAX]
005694b3  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
005694b9  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
005694c1  c787500300000000a042      MOV dword ptr [EDI + 0x350],0x42a00000
005694cb  c78754030000401f0000      MOV dword ptr [EDI + 0x354],0x1f40
005694d5  33ff                      XOR EDI,EDI
005694d7  57                        PUSH EDI
005694d8  8bce                      MOV ECX,ESI
005694da  e801d32a00                CALL 0x008167e0
005694df  47                        INC EDI
005694e0  83ff08                    CMP EDI,0x8
005694e3  72f2                      JC 0x005694d7
005694e5  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
005694e8  33d2                      XOR EDX,EDX
005694ea  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005694f0  8bbdb4feffff              MOV EDI,dword ptr [EBP + 0xfffffeb4]
005694f6  8db1a8ba0100              LEA ESI,[ECX + 0x1baa8]
005694fc  8995ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EDX
00569502  c7401800000000            MOV dword ptr [EAX + 0x18],0x0
00569509  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
0056950f  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
00569514  f30f584014                ADDSS XMM0,dword ptr [EAX + 0x14]
00569519  f30f104820                MOVSS XMM1,dword ptr [EAX + 0x20]
0056951e  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00569521  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
00569529  2b06                      SUB EAX,dword ptr [ESI]
0056952b  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00569533  c1f802                    SAR EAX,0x2
00569536  f30f118dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM1
0056953e  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
00569546  85c0                      TEST EAX,EAX
00569548  0f849d000000              JZ 0x005695eb
0056954e  8bf9                      MOV EDI,ECX
00569550  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
00569553  8bc1                      MOV EAX,ECX
00569555  2b06                      SUB EAX,dword ptr [ESI]
00569557  c1f802                    SAR EAX,0x2
0056955a  85c0                      TEST EAX,EAX
0056955c  751e                      JNZ 0x0056957c
0056955e  68bce6b700                PUSH 0xb7e6bc
00569563  6a10                      PUSH 0x10
00569565  e8567d4a00                CALL 0x00a112c0
0056956a  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0056956d  83c408                    ADD ESP,0x8
00569570  8b95ecfeffff              MOV EDX,dword ptr [EBP + 0xfffffeec]
00569576  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
0056957c  8b36                      MOV ESI,dword ptr [ESI]
0056957e  2bce                      SUB ECX,ESI
00569580  c1f902                    SAR ECX,0x2
00569583  3bd1                      CMP EDX,ECX
00569585  7303                      JNC 0x0056958a
00569587  8d3496                    LEA ESI,[ESI + EDX*0x4]
0056958a  8b36                      MOV ESI,dword ptr [ESI]
0056958c  8d8fa8ba0100              LEA ECX,[EDI + 0x1baa8]
00569592  6a00                      PUSH 0x0
00569594  6a00                      PUSH 0x0
00569596  51                        PUSH ECX
00569597  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
0056959d  50                        PUSH EAX
0056959e  56                        PUSH ESI
0056959f  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
005695a5  50                        PUSH EAX
005695a6  e8e5304500                CALL 0x009bc690
005695ab  50                        PUSH EAX
005695ac  8bce                      MOV ECX,ESI
005695ae  e89d432600                CALL 0x007cd950
005695b3  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
005695b9  8b87acba0100              MOV EAX,dword ptr [EDI + 0x1baac]
005695bf  8db7a8ba0100              LEA ESI,[EDI + 0x1baa8]
005695c5  8b95ecfeffff              MOV EDX,dword ptr [EBP + 0xfffffeec]
005695cb  2b06                      SUB EAX,dword ptr [ESI]
005695cd  42                        INC EDX
005695ce  c1f802                    SAR EAX,0x2
005695d1  8995ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EDX
005695d7  3bd0                      CMP EDX,EAX
005695d9  0f8271ffffff              JC 0x00569550
005695df  8bbdb4feffff              MOV EDI,dword ptr [EBP + 0xfffffeb4]
005695e5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005695eb  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
005695f1  33c9                      XOR ECX,ECX
005695f3  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
005695f9  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
005695ff  398864120000              CMP dword ptr [EAX + 0x1264],ECX
00569605  7655                      JBE 0x0056965c
00569607  8bf8                      MOV EDI,EAX
00569609  0f1f8000000000            NOP dword ptr [EAX]
00569610  8b875c120000              MOV EAX,dword ptr [EDI + 0x125c]
00569616  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
00569619  85f6                      TEST ESI,ESI
0056961b  742a                      JZ 0x00569647
0056961d  837e2803                  CMP dword ptr [ESI + 0x28],0x3
00569621  7524                      JNZ 0x00569647
00569623  6a00                      PUSH 0x0
00569625  8d45e4                    LEA EAX,[EBP + -0x1c]
00569628  8bce                      MOV ECX,ESI
0056962a  50                        PUSH EAX
0056962b  e8701e0d00                CALL 0x0063b4a0
00569630  8b08                      MOV ECX,dword ptr [EAX]
00569632  898e3c030000              MOV dword ptr [ESI + 0x33c],ECX
00569638  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0056963b  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
00569641  898640030000              MOV dword ptr [ESI + 0x340],EAX
00569647  41                        INC ECX
00569648  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
0056964e  3b8f64120000              CMP ECX,dword ptr [EDI + 0x1264]
00569654  72ba                      JC 0x00569610
00569656  8bbdb4feffff              MOV EDI,dword ptr [EBP + 0xfffffeb4]
0056965c  8bcf                      MOV ECX,EDI
0056965e  e85df6ffff                CALL 0x00568cc0
00569663  e8f8581800                CALL 0x006eef60
00569668  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056966e  50                        PUSH EAX
0056966f  6a00                      PUSH 0x0
00569671  6a00                      PUSH 0x0
00569673  6840b6c700                PUSH 0xc7b640
00569678  8d855cfeffff              LEA EAX,[EBP + 0xfffffe5c]
0056967e  50                        PUSH EAX
0056967f  688c000000                PUSH 0x8c
00569684  68e8030000                PUSH 0x3e8
00569689  e892f4ebff                CALL 0x00428b20
0056968e  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
00569695  b930000000                MOV ECX,0x30
0056969a  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
005696a0  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
005696a7  8d7048                    LEA ESI,[EAX + 0x48]
005696aa  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
005696b1  89b5d0feffff              MOV dword ptr [EBP + 0xfffffed0],ESI
005696b7  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
005696bb  e84038eaff                CALL 0x0040cf00
005696c0  0f10052019b600            MOVUPS XMM0,xmmword ptr [0x00b61920]
005696c7  8bd0                      MOV EDX,EAX
005696c9  c745e427000000            MOV dword ptr [EBP + -0x1c],0x27
005696d0  c745e82f000000            MOV dword ptr [EBP + -0x18],0x2f
005696d7  0f1102                    MOVUPS xmmword ptr [EDX],XMM0
005696da  0f10053019b600            MOVUPS XMM0,xmmword ptr [0x00b61930]
005696e1  0f114210                  MOVUPS xmmword ptr [EDX + 0x10],XMM0
005696e5  8b0d4019b600              MOV ECX,dword ptr [0x00b61940]
005696eb  894a20                    MOV dword ptr [EDX + 0x20],ECX
005696ee  66a14419b600              MOV AX,[0x00b61944]
005696f4  66894224                  MOV word ptr [EDX + 0x24],AX
005696f8  a04619b600                MOV AL,[0x00b61946]
005696fd  884226                    MOV byte ptr [EDX + 0x26],AL
00569700  c6422700                  MOV byte ptr [EDX + 0x27],0x0
00569704  8955d4                    MOV dword ptr [EBP + -0x2c],EDX
00569707  6a01                      PUSH 0x1
00569709  8d45d4                    LEA EAX,[EBP + -0x2c]
0056970c  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00569713  50                        PUSH EAX
00569714  8bce                      MOV ECX,ESI
00569716  e83526eaff                CALL 0x0040bd50
0056971b  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00569722  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00569725  83fa10                    CMP EDX,0x10
00569728  722e                      JC 0x00569758
0056972a  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0056972d  42                        INC EDX
0056972e  8bc1                      MOV EAX,ECX
00569730  81fa00100000              CMP EDX,0x1000
00569736  7216                      JC 0x0056974e
00569738  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0056973b  83c223                    ADD EDX,0x23
0056973e  2bc1                      SUB EAX,ECX
00569740  83c0fc                    ADD EAX,-0x4
00569743  83f81f                    CMP EAX,0x1f
00569746  7606                      JBE 0x0056974e
00569748  ff159488b100              CALL dword ptr [0x00b18894]
0056974e  52                        PUSH EDX
0056974f  51                        PUSH ECX
00569750  e8075a5800                CALL 0x00aef15c
00569755  83c408                    ADD ESP,0x8
00569758  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
0056975e  be01000000                MOV ESI,0x1
00569763  39b0c8000000              CMP dword ptr [EAX + 0xc8],ESI
00569769  7627                      JBE 0x00569792
0056976b  8bbdd0feffff              MOV EDI,dword ptr [EBP + 0xfffffed0]
00569771  56                        PUSH ESI
00569772  8bcf                      MOV ECX,EDI
00569774  e8a71aeaff                CALL 0x0040b220
00569779  46                        INC ESI
0056977a  c6407400                  MOV byte ptr [EAX + 0x74],0x0
0056977e  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
00569784  3bb0c8000000              CMP ESI,dword ptr [EAX + 0xc8]
0056978a  72e5                      JC 0x00569771
0056978c  8bbdb4feffff              MOV EDI,dword ptr [EBP + 0xfffffeb4]
00569792  8bb5d0feffff              MOV ESI,dword ptr [EBP + 0xfffffed0]
00569798  8bce                      MOV ECX,ESI
0056979a  6a01                      PUSH 0x1
0056979c  6854bcb100                PUSH 0xb1bc54
005697a1  e82a0eeaff                CALL 0x0040a5d0
005697a6  84c0                      TEST AL,AL
005697a8  741d                      JZ 0x005697c7
005697aa  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
005697ad  85c0                      TEST EAX,EAX
005697af  7416                      JZ 0x005697c7
005697b1  8d4e30                    LEA ECX,[ESI + 0x30]
005697b4  0f57c9                    XORPS XMM1,XMM1
005697b7  e844f6e9ff                CALL 0x00408e00
005697bc  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
005697bf  85c0                      TEST EAX,EAX
005697c1  7404                      JZ 0x005697c7
005697c3  c6464400                  MOV byte ptr [ESI + 0x44],0x0
005697c7  6a00                      PUSH 0x0
005697c9  8bce                      MOV ECX,ESI
005697cb  e8501aeaff                CALL 0x0040b220
005697d0  c7407800000000            MOV dword ptr [EAX + 0x78],0x0
005697d7  c7407c00000000            MOV dword ptr [EAX + 0x7c],0x0
005697de  c7808000000002000000      MOV dword ptr [EAX + 0x80],0x2
005697e8  c7808400000001000000      MOV dword ptr [EAX + 0x84],0x1
005697f2  c7808800000001000000      MOV dword ptr [EAX + 0x88],0x1
005697fc  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
00569802  c7805c03000000000000      MOV dword ptr [EAX + 0x35c],0x0
0056980c  e84f571800                CALL 0x006eef60
00569811  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00569817  50                        PUSH EAX
00569818  6a00                      PUSH 0x0
0056981a  6a00                      PUSH 0x0
0056981c  6840b6c700                PUSH 0xc7b640
00569821  8d855cfeffff              LEA EAX,[EBP + 0xfffffe5c]
00569827  50                        PUSH EAX
00569828  688c000000                PUSH 0x8c
0056982d  68e8030000                PUSH 0x3e8
00569832  e8e9f2ebff                CALL 0x00428b20
00569837  6a27                      PUSH 0x27
00569839  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
00569840  8d4dd4                    LEA ECX,[EBP + -0x2c]
00569843  682019b600                PUSH 0xb61920
00569848  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
0056984e  8d7048                    LEA ESI,[EAX + 0x48]
00569851  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00569858  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0056985f  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00569863  e86834eaff                CALL 0x0040ccd0
00569868  6a01                      PUSH 0x1
0056986a  8d45d4                    LEA EAX,[EBP + -0x2c]
0056986d  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00569874  50                        PUSH EAX
00569875  8bce                      MOV ECX,ESI
00569877  e8d424eaff                CALL 0x0040bd50
0056987c  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00569883  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00569886  83fa10                    CMP EDX,0x10
00569889  722e                      JC 0x005698b9
0056988b  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0056988e  42                        INC EDX
0056988f  8bc1                      MOV EAX,ECX
00569891  81fa00100000              CMP EDX,0x1000
00569897  7216                      JC 0x005698af
00569899  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0056989c  83c223                    ADD EDX,0x23
0056989f  2bc1                      SUB EAX,ECX
005698a1  83c0fc                    ADD EAX,-0x4
005698a4  83f81f                    CMP EAX,0x1f
005698a7  7606                      JBE 0x005698af
005698a9  ff159488b100              CALL dword ptr [0x00b18894]
005698af  52                        PUSH EDX
005698b0  51                        PUSH ECX
005698b1  e8a6585800                CALL 0x00aef15c
005698b6  83c408                    ADD ESP,0x8
005698b9  6a00                      PUSH 0x0
005698bb  8bce                      MOV ECX,ESI
005698bd  e85e19eaff                CALL 0x0040b220
005698c2  6a01                      PUSH 0x1
005698c4  6854bcb100                PUSH 0xb1bc54
005698c9  8bce                      MOV ECX,ESI
005698cb  c6407400                  MOV byte ptr [EAX + 0x74],0x0
005698cf  e8fc0ceaff                CALL 0x0040a5d0
005698d4  84c0                      TEST AL,AL
005698d6  741d                      JZ 0x005698f5
005698d8  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
005698db  85c0                      TEST EAX,EAX
005698dd  7416                      JZ 0x005698f5
005698df  8d4e30                    LEA ECX,[ESI + 0x30]
005698e2  0f57c9                    XORPS XMM1,XMM1
005698e5  e816f5e9ff                CALL 0x00408e00
005698ea  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
005698ed  85c0                      TEST EAX,EAX
005698ef  7404                      JZ 0x005698f5
005698f1  c6464400                  MOV byte ptr [ESI + 0x44],0x0
005698f5  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
005698fb  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
00569901  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00569907  c785d0feffff70020000      MOV dword ptr [EBP + 0xfffffed0],0x270
00569911  c7805c03000001000000      MOV dword ptr [EAX + 0x35c],0x1
0056991b  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00569925  e856ce3e00                CALL 0x00956780
0056992a  83ec08                    SUB ESP,0x8
0056992d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00569935  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056993c  6a00                      PUSH 0x0
0056993e  6a02                      PUSH 0x2
00569940  51                        PUSH ECX
00569941  c704240000803f            MOV dword ptr [ESP],0x3f800000
00569948  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0056994e  ffb5d0feffff              PUSH dword ptr [EBP + 0xfffffed0]
00569954  e8d7423c00                CALL 0x0092dc30
00569959  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0056995f  898734030000              MOV dword ptr [EDI + 0x334],EAX
00569965  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0056996b  898738030000              MOV dword ptr [EDI + 0x338],EAX
00569971  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0056997b  e9272d0000                JMP 0x0056c6a7
00569980  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00569984  0f851d2d0000              JNZ 0x0056c6a7
0056998a  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00569992  83c0fd                    ADD EAX,-0x3
00569995  83f810                    CMP EAX,0x10
00569998  0f872a280000              JA 0x0056c1c8
0056999e  ff248578c75600            JMP dword ptr [EAX*0x4 + 0x56c778]
005699a5  68eca4b100                PUSH 0xb1a4ec
005699aa  8d4f48                    LEA ECX,[EDI + 0x48]
005699ad  e89e0beaff                CALL 0x0040a550
005699b2  84c0                      TEST AL,AL
005699b4  741f                      JZ 0x005699d5
005699b6  6a00                      PUSH 0x0
005699b8  6854bcb100                PUSH 0xb1bc54
005699bd  8d4f48                    LEA ECX,[EDI + 0x48]
005699c0  e8bb09eaff                CALL 0x0040a380
005699c5  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005699cd  f30f101da0a9ba00          MOVSS XMM3,dword ptr [0x00baa9a0]
005699d5  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005699db  85c0                      TEST EAX,EAX
005699dd  7e0c                      JLE 0x005699eb
005699df  2b85e4feffff              SUB EAX,dword ptr [EBP + 0xfffffee4]
005699e5  898710040000              MOV dword ptr [EDI + 0x410],EAX
005699eb  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
005699f1  85c9                      TEST ECX,ECX
005699f3  0f84b8010000              JZ 0x00569bb1
005699f9  8b8130030000              MOV EAX,dword ptr [ECX + 0x330]
005699ff  32d2                      XOR DL,DL
00569a01  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
00569a09  f30f102d3ca8ba00          MOVSS XMM5,dword ptr [0x00baa83c]
00569a11  f30f58d3                  ADDSS XMM2,XMM3
00569a15  f30f10997c030000          MOVSS XMM3,dword ptr [ECX + 0x37c]
00569a1d  f30f104844                MOVSS XMM1,dword ptr [EAX + 0x44]
00569a22  0f28c1                    MOVAPS XMM0,XMM1
00569a25  8895e3feffff              MOV byte ptr [EBP + 0xfffffee3],DL
00569a2b  f30f5805a4a7ba00          ADDSS XMM0,dword ptr [0x00baa7a4]
00569a33  f30f1195ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM2
00569a3b  0f2fd8                    COMISS XMM3,XMM0
00569a3e  720a                      JC 0x00569a4a
00569a40  f30f5c1530aaba00          SUBSS XMM2,dword ptr [0x00baaa30]
00569a48  eb5b                      JMP 0x00569aa5
00569a4a  0f2ed9                    UCOMISS XMM3,XMM1
00569a4d  9f                        LAHF
00569a4e  f6c444                    TEST AH,0x44
00569a51  7a52                      JP 0x00569aa5
00569a53  f30f108938030000          MOVSS XMM1,dword ptr [ECX + 0x338]
00569a5b  f30f108134030000          MOVSS XMM0,dword ptr [ECX + 0x334]
00569a63  f30f59c0                  MULSS XMM0,XMM0
00569a67  f30f59c9                  MULSS XMM1,XMM1
00569a6b  f30f58c1                  ADDSS XMM0,XMM1
00569a6f  e8dcbfecff                CALL 0x00435a50
00569a74  0f2f05fca6ba00            COMISS XMM0,dword ptr [0x00baa6fc]
00569a7b  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
00569a81  f30f1095ecfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeec]
00569a89  720c                      JC 0x00569a97
00569a8b  f30f102d54a8ba00          MOVSS XMM5,dword ptr [0x00baa854]
00569a93  b201                      MOV DL,0x1
00569a95  eb0e                      JMP 0x00569aa5
00569a97  f30f102d3ca8ba00          MOVSS XMM5,dword ptr [0x00baa83c]
00569a9f  8a95e3feffff              MOV DL,byte ptr [EBP + 0xfffffee3]
00569aa5  f30f10819c030000          MOVSS XMM0,dword ptr [ECX + 0x39c]
00569aad  f30f5e879c030000          DIVSS XMM0,dword ptr [EDI + 0x39c]
00569ab5  f30f108964030000          MOVSS XMM1,dword ptr [ECX + 0x364]
00569abd  f30f109960030000          MOVSS XMM3,dword ptr [ECX + 0x360]
00569ac5  0f28e1                    MOVAPS XMM4,XMM1
00569ac8  f30f59dd                  MULSS XMM3,XMM5
00569acc  f30f59e5                  MULSS XMM4,XMM5
00569ad0  f30f59d8                  MULSS XMM3,XMM0
00569ad4  f30f59e0                  MULSS XMM4,XMM0
00569ad8  0f57c0                    XORPS XMM0,XMM0
00569adb  0f2fc1                    COMISS XMM0,XMM1
00569ade  f30f58993c030000          ADDSS XMM3,dword ptr [ECX + 0x33c]
00569ae6  f30f58a140030000          ADDSS XMM4,dword ptr [ECX + 0x340]
00569aee  0f86ce260000              JBE 0x0056c1c2
00569af4  0f2fd4                    COMISS XMM2,XMM4
00569af7  0f86c5260000              JBE 0x0056c1c2
00569afd  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
00569b05  f30f588594feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe94]
00569b0d  6a01                      PUSH 0x1
00569b0f  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00569b17  84d2                      TEST DL,DL
00569b19  744d                      JZ 0x00569b68
00569b1b  0f2fc3                    COMISS XMM0,XMM3
00569b1e  b97819b600                MOV ECX,0xb61978
00569b23  b81019b600                MOV EAX,0xb61910
00569b28  0f46c1                    CMOVBE EAX,ECX
00569b2b  8d4f48                    LEA ECX,[EDI + 0x48]
00569b2e  50                        PUSH EAX
00569b2f  e84c08eaff                CALL 0x0040a380
00569b34  687819b600                PUSH 0xb61978
00569b39  8d4f48                    LEA ECX,[EDI + 0x48]
00569b3c  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00569b46  e88509eaff                CALL 0x0040a4d0
00569b4b  51                        PUSH ECX
00569b4c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00569b53  0fb6c0                    MOVZX EAX,AL
00569b56  6a00                      PUSH 0x0
00569b58  83f001                    XOR EAX,0x1
00569b5b  6a02                      PUSH 0x2
00569b5d  056c020000                ADD EAX,0x26c
00569b62  50                        PUSH EAX
00569b63  e94d260000                JMP 0x0056c1b5
00569b68  0f2fc3                    COMISS XMM0,XMM3
00569b6b  b95819b600                MOV ECX,0xb61958
00569b70  b86819b600                MOV EAX,0xb61968
00569b75  0f46c1                    CMOVBE EAX,ECX
00569b78  8d4f48                    LEA ECX,[EDI + 0x48]
00569b7b  50                        PUSH EAX
00569b7c  e8ff07eaff                CALL 0x0040a380
00569b81  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
00569b8b  e8d0531800                CALL 0x006eef60
00569b90  b903000000                MOV ECX,0x3
00569b95  33d2                      XOR EDX,EDX
00569b97  f7f1                      DIV ECX
00569b99  51                        PUSH ECX
00569b9a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00569ba1  6a00                      PUSH 0x0
00569ba3  6a02                      PUSH 0x2
00569ba5  8d826c020000              LEA EAX,[EDX + 0x26c]
00569bab  50                        PUSH EAX
00569bac  e904260000                JMP 0x0056c1b5
00569bb1  8b8fc40b0000              MOV ECX,dword ptr [EDI + 0xbc4]
00569bb7  83f9ff                    CMP ECX,-0x1
00569bba  755b                      JNZ 0x00569c17
00569bbc  8d4f78                    LEA ECX,[EDI + 0x78]
00569bbf  e8ecd7e9ff                CALL 0x004073b0
00569bc4  84c0                      TEST AL,AL
00569bc6  0f84f6250000              JZ 0x0056c1c2
00569bcc  51                        PUSH ECX
00569bcd  c704240000803f            MOV dword ptr [ESP],0x3f800000
00569bd4  0f28d0                    MOVAPS XMM2,XMM0
00569bd7  6a00                      PUSH 0x0
00569bd9  6a02                      PUSH 0x2
00569bdb  686e020000                PUSH 0x26e
00569be0  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00569bea  e881c81400                CALL 0x006b6470
00569bef  6a00                      PUSH 0x0
00569bf1  684819b600                PUSH 0xb61948
00569bf6  8d4f48                    LEA ECX,[EDI + 0x48]
00569bf9  e88207eaff                CALL 0x0040a380
00569bfe  c787640b00000c000000      MOV dword ptr [EDI + 0xb64],0xc
00569c08  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00569c12  e9ab250000                JMP 0x0056c1c2
00569c17  85c9                      TEST ECX,ECX
00569c19  0f8edd000000              JLE 0x00569cfc
00569c1f  8d4f78                    LEA ECX,[EDI + 0x78]
00569c22  e889d7e9ff                CALL 0x004073b0
00569c27  84c0                      TEST AL,AL
00569c29  0f8493250000              JZ 0x0056c1c2
00569c2f  6a14                      PUSH 0x14
00569c31  6890030000                PUSH 0x390
00569c36  8d45dc                    LEA EAX,[EBP + -0x24]
00569c39  8bcf                      MOV ECX,EDI
00569c3b  50                        PUSH EAX
00569c3c  e81f701600                CALL 0x006d0c60
00569c41  33c0                      XOR EAX,EAX
00569c43  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
00569c4a  33d2                      XOR EDX,EDX
00569c4c  3945e8                    CMP dword ptr [EBP + -0x18],EAX
00569c4f  0f8693000000              JBE 0x00569ce8
00569c55  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00569c5d  33f6                      XOR ESI,ESI
00569c5f  f30f580d30aaba00          ADDSS XMM1,dword ptr [0x00baaa30]
00569c67  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00569c70  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
00569c73  8b0c81                    MOV ECX,dword ptr [ECX + EAX*0x4]
00569c76  0f2f8940030000            COMISS XMM1,dword ptr [ECX + 0x340]
00569c7d  7615                      JBE 0x00569c94
00569c7f  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00569c87  0f2f813c030000            COMISS XMM0,dword ptr [ECX + 0x33c]
00569c8e  7603                      JBE 0x00569c93
00569c90  42                        INC EDX
00569c91  eb01                      JMP 0x00569c94
00569c93  46                        INC ESI
00569c94  40                        INC EAX
00569c95  3b45e8                    CMP EAX,dword ptr [EBP + -0x18]
00569c98  72d6                      JC 0x00569c70
00569c9a  89b5ecfeffff              MOV dword ptr [EBP + 0xfffffeec],ESI
00569ca0  8bce                      MOV ECX,ESI
00569ca2  85d2                      TEST EDX,EDX
00569ca4  7f04                      JG 0x00569caa
00569ca6  85c9                      TEST ECX,ECX
00569ca8  7e3e                      JLE 0x00569ce8
00569caa  3bca                      CMP ECX,EDX
00569cac  c785e8feffff5819b600      MOV dword ptr [EBP + 0xfffffee8],0xb61958
00569cb6  b86819b600                MOV EAX,0xb61968
00569cbb  8d4f48                    LEA ECX,[EDI + 0x48]
00569cbe  0f4d85e8feffff            CMOVGE EAX,dword ptr [EBP + 0xfffffee8]
00569cc5  6a00                      PUSH 0x0
00569cc7  50                        PUSH EAX
00569cc8  e8b306eaff                CALL 0x0040a380
00569ccd  b801000000                MOV EAX,0x1
00569cd2  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
00569cdc  2b87a00b0000              SUB EAX,dword ptr [EDI + 0xba0]
00569ce2  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00569ce8  8d4ddc                    LEA ECX,[EBP + -0x24]
00569ceb  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00569cf2  e8b9d8eaff                CALL 0x004175b0
00569cf7  e9c6240000                JMP 0x0056c1c2
00569cfc  85c0                      TEST EAX,EAX
00569cfe  0f8fbe240000              JG 0x0056c1c2
00569d04  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
00569d0a  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00569d12  69c154060000              IMUL EAX,ECX,0x654
00569d18  0574040000                ADD EAX,0x474
00569d1d  660f6ec8                  MOVD XMM1,EAX
00569d21  0f5bc9                    CVTDQ2PS XMM1,XMM1
00569d24  0f2fc1                    COMISS XMM0,XMM1
00569d27  723b                      JC 0x00569d64
00569d29  8d4101                    LEA EAX,[ECX + 0x1]
00569d2c  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
00569d36  6a00                      PUSH 0x0
00569d38  68b419b600                PUSH 0xb619b4
00569d3d  8d4f48                    LEA ECX,[EDI + 0x48]
00569d40  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00569d46  e83506eaff                CALL 0x0040a380
00569d4b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00569d55  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00569d5f  e95e240000                JMP 0x0056c1c2
00569d64  8bcf                      MOV ECX,EDI
00569d66  e8b5ce1600                CALL 0x006d6c20
00569d6b  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
00569d71  e8ea511800                CALL 0x006eef60
00569d76  33d2                      XOR EDX,EDX
00569d78  b906000000                MOV ECX,0x6
00569d7d  f7f1                      DIV ECX
00569d7f  85d2                      TEST EDX,EDX
00569d81  754e                      JNZ 0x00569dd1
00569d83  83bfa80b000002            CMP dword ptr [EDI + 0xba8],0x2
00569d8a  7e45                      JLE 0x00569dd1
00569d8c  52                        PUSH EDX
00569d8d  68f001b600                PUSH 0xb601f0
00569d92  8d4f48                    LEA ECX,[EDI + 0x48]
00569d95  c787640b000013000000      MOV dword ptr [EDI + 0xb64],0x13
00569d9f  e8dc05eaff                CALL 0x0040a380
00569da4  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00569dac  51                        PUSH ECX
00569dad  c704240000803f            MOV dword ptr [ESP],0x3f800000
00569db4  6a00                      PUSH 0x0
00569db6  6a02                      PUSH 0x2
00569db8  686f020000                PUSH 0x26f
00569dbd  e8aec61400                CALL 0x006b6470
00569dc2  c787a80b0000ffffffff      MOV dword ptr [EDI + 0xba8],0xffffffff
00569dcc  e908010000                JMP 0x00569ed9
00569dd1  e88a511800                CALL 0x006eef60
00569dd6  33d2                      XOR EDX,EDX
00569dd8  b903000000                MOV ECX,0x3
00569ddd  f7f1                      DIV ECX
00569ddf  85d2                      TEST EDX,EDX
00569de1  754d                      JNZ 0x00569e30
00569de3  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
00569ded  e86e511800                CALL 0x006eef60
00569df2  83e001                    AND EAX,0x1
00569df5  b99019b600                MOV ECX,0xb61990
00569dfa  b8a419b600                MOV EAX,0xb619a4
00569dff  0f44c1                    CMOVZ EAX,ECX
00569e02  8d4f48                    LEA ECX,[EDI + 0x48]
00569e05  6a00                      PUSH 0x0
00569e07  50                        PUSH EAX
00569e08  e87305eaff                CALL 0x0040a380
00569e0d  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00569e15  51                        PUSH ECX
00569e16  c704240000803f            MOV dword ptr [ESP],0x3f800000
00569e1d  6a00                      PUSH 0x0
00569e1f  6a02                      PUSH 0x2
00569e21  6876020000                PUSH 0x276
00569e26  e845c61400                CALL 0x006b6470
00569e2b  e9a9000000                JMP 0x00569ed9
00569e30  33c9                      XOR ECX,ECX
00569e32  83bdecfeffff04            CMP dword ptr [EBP + 0xfffffeec],0x4
00569e39  0f9cc1                    SETL CL
00569e3c  83c102                    ADD ECX,0x2
00569e3f  e8cc511100                CALL 0x0067f010
00569e44  85c0                      TEST EAX,EAX
00569e46  7567                      JNZ 0x00569eaf
00569e48  83bdecfeffff0e            CMP dword ptr [EBP + 0xfffffeec],0xe
00569e4f  7f5e                      JG 0x00569eaf
00569e51  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00569e5b  e800511800                CALL 0x006eef60
00569e60  83e001                    AND EAX,0x1
00569e63  b91019b600                MOV ECX,0xb61910
00569e68  b87819b600                MOV EAX,0xb61978
00569e6d  0f44c1                    CMOVZ EAX,ECX
00569e70  8d4f48                    LEA ECX,[EDI + 0x48]
00569e73  6a00                      PUSH 0x0
00569e75  50                        PUSH EAX
00569e76  e80505eaff                CALL 0x0040a380
00569e7b  687819b600                PUSH 0xb61978
00569e80  8d4f48                    LEA ECX,[EDI + 0x48]
00569e83  e84806eaff                CALL 0x0040a4d0
00569e88  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00569e90  51                        PUSH ECX
00569e91  c704240000803f            MOV dword ptr [ESP],0x3f800000
00569e98  0fb6c0                    MOVZX EAX,AL
00569e9b  6a00                      PUSH 0x0
00569e9d  83f001                    XOR EAX,0x1
00569ea0  6a02                      PUSH 0x2
00569ea2  056c020000                ADD EAX,0x26c
00569ea7  50                        PUSH EAX
00569ea8  e8c3c51400                CALL 0x006b6470
00569ead  eb2a                      JMP 0x00569ed9
00569eaf  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00569eb9  e8a2501800                CALL 0x006eef60
00569ebe  83e001                    AND EAX,0x1
00569ec1  b9e419b600                MOV ECX,0xb619e4
00569ec6  b88419b600                MOV EAX,0xb61984
00569ecb  0f44c1                    CMOVZ EAX,ECX
00569ece  8d4f48                    LEA ECX,[EDI + 0x48]
00569ed1  6a00                      PUSH 0x0
00569ed3  50                        PUSH EAX
00569ed4  e8a704eaff                CALL 0x0040a380
00569ed9  ff87a80b0000              INC dword ptr [EDI + 0xba8]
00569edf  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00569ee9  e9d4220000                JMP 0x0056c1c2
00569eee  8d7748                    LEA ESI,[EDI + 0x48]
00569ef1  68d4d2b100                PUSH 0xb1d2d4
00569ef6  8bce                      MOV ECX,ESI
00569ef8  e83311eaff                CALL 0x0040b030
00569efd  84c0                      TEST AL,AL
00569eff  7449                      JZ 0x00569f4a
00569f01  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00569f09  51                        PUSH ECX
00569f0a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00569f11  6a00                      PUSH 0x0
00569f13  6a02                      PUSH 0x2
00569f15  6872020000                PUSH 0x272
00569f1a  e8c1c93e00                CALL 0x009568e0
00569f1f  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00569f27  51                        PUSH ECX
00569f28  c704240000803f            MOV dword ptr [ESP],0x3f800000
00569f2f  6a00                      PUSH 0x0
00569f31  6a02                      PUSH 0x2
00569f33  681c020000                PUSH 0x21c
00569f38  e8a3c93e00                CALL 0x009568e0
00569f3d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00569f43  6a08                      PUSH 0x8
00569f45  e826971900                CALL 0x00703670
00569f4a  68dcd2b100                PUSH 0xb1d2dc
00569f4f  8bce                      MOV ECX,ESI
00569f51  e8da10eaff                CALL 0x0040b030
00569f56  84c0                      TEST AL,AL
00569f58  0f8437010000              JZ 0x0056a095
00569f5e  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00569f66  51                        PUSH ECX
00569f67  c704240000803f            MOV dword ptr [ESP],0x3f800000
00569f6e  6a00                      PUSH 0x0
00569f70  6a02                      PUSH 0x2
00569f72  6873020000                PUSH 0x273
00569f77  e864c93e00                CALL 0x009568e0
00569f7c  f30f1015b0a4ba00          MOVSS XMM2,dword ptr [0x00baa4b0]
00569f84  51                        PUSH ECX
00569f85  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00569f8c  6a00                      PUSH 0x0
00569f8e  6a02                      PUSH 0x2
00569f90  68fc000000                PUSH 0xfc
00569f95  e846c93e00                CALL 0x009568e0
00569f9a  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00569fa2  51                        PUSH ECX
00569fa3  c704240000803f            MOV dword ptr [ESP],0x3f800000
00569faa  6a00                      PUSH 0x0
00569fac  6a02                      PUSH 0x2
00569fae  682d010000                PUSH 0x12d
00569fb3  e828c93e00                CALL 0x009568e0
00569fb8  68b8d4b100                PUSH 0xb1d4b8
00569fbd  8d45e4                    LEA EAX,[EBP + -0x1c]
00569fc0  8bcf                      MOV ECX,EDI
00569fc2  50                        PUSH EAX
00569fc3  e828cb1400                CALL 0x006b6af0
00569fc8  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00569fd0  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
00569fd8  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00569fdc  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00569fe4  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00569fec  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
00569ff4  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00569ff9  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0056a001  e85a4f1800                CALL 0x006eef60
0056a006  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
0056a00e  f30f5885bcfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffebc]
0056a016  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056a01c  50                        PUSH EAX
0056a01d  6a00                      PUSH 0x0
0056a01f  57                        PUSH EDI
0056a020  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0056a028  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
0056a02e  c785c0feffff00000000      MOV dword ptr [EBP + 0xfffffec0],0x0
0056a038  50                        PUSH EAX
0056a039  8d8584feffff              LEA EAX,[EBP + 0xfffffe84]
0056a03f  c785c4feffff00007041      MOV dword ptr [EBP + 0xfffffec4],0x41700000
0056a049  50                        PUSH EAX
0056a04a  f30f118584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM0
0056a052  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0056a05a  f30f5885dcfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffedc]
0056a062  68b6000000                PUSH 0xb6
0056a067  68e8030000                PUSH 0x3e8
0056a06c  f30f580550a9ba00          ADDSS XMM0,dword ptr [0x00baa950]
0056a074  f30f118588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM0
0056a07c  e89feaebff                CALL 0x00428b20
0056a081  8bf0                      MOV ESI,EAX
0056a083  57                        PUSH EDI
0056a084  8bce                      MOV ECX,ESI
0056a086  e815f21300                CALL 0x006a92a0
0056a08b  8b16                      MOV EDX,dword ptr [ESI]
0056a08d  8bce                      MOV ECX,ESI
0056a08f  ff520c                    CALL dword ptr [EDX + 0xc]
0056a092  8d7748                    LEA ESI,[EDI + 0x48]
0056a095  68eca4b100                PUSH 0xb1a4ec
0056a09a  8bce                      MOV ECX,ESI
0056a09c  e8af04eaff                CALL 0x0040a550
0056a0a1  84c0                      TEST AL,AL
0056a0a3  0f8419210000              JZ 0x0056c1c2
0056a0a9  8bce                      MOV ECX,ESI
0056a0ab  6a00                      PUSH 0x0
0056a0ad  6854bcb100                PUSH 0xb1bc54
0056a0b2  e8c902eaff                CALL 0x0040a380
0056a0b7  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0056a0c1  c7871004000032000000      MOV dword ptr [EDI + 0x410],0x32
0056a0cb  e9f2200000                JMP 0x0056c1c2
0056a0d0  83bfec0b000000            CMP dword ptr [EDI + 0xbec],0x0
0056a0d7  0f84e7000000              JZ 0x0056a1c4
0056a0dd  68b8d4b100                PUSH 0xb1d4b8
0056a0e2  8d45e4                    LEA EAX,[EBP + -0x1c]
0056a0e5  8bcf                      MOV ECX,EDI
0056a0e7  50                        PUSH EAX
0056a0e8  e803ca1400                CALL 0x006b6af0
0056a0ed  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
0056a0f3  51                        PUSH ECX
0056a0f4  c7042400002041            MOV dword ptr [ESP],0x41200000
0056a0fb  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
0056a101  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0056a105  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0056a10d  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0056a115  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
0056a11d  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
0056a125  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0056a12a  8d45e4                    LEA EAX,[EBP + -0x1c]
0056a12d  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0056a135  50                        PUSH EAX
0056a136  f30f5805a0a9ba00          ADDSS XMM0,dword ptr [0x00baa9a0]
0056a13e  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0056a146  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
0056a14e  e8ad5f4a00                CALL 0x00a10100
0056a153  f30f109634030000          MOVSS XMM2,dword ptr [ESI + 0x334]
0056a15b  0f28c2                    MOVAPS XMM0,XMM2
0056a15e  f30f59d2                  MULSS XMM2,XMM2
0056a162  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0056a166  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
0056a16e  f30f108638030000          MOVSS XMM0,dword ptr [ESI + 0x338]
0056a176  0f28c8                    MOVAPS XMM1,XMM0
0056a179  f30f59c0                  MULSS XMM0,XMM0
0056a17d  f30f584804                ADDSS XMM1,dword ptr [EAX + 0x4]
0056a182  f30f58c2                  ADDSS XMM0,XMM2
0056a186  f30f118dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM1
0056a18e  e8bdb8ecff                CALL 0x00435a50
0056a193  51                        PUSH ECX
0056a194  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0056a19a  f30f110424                MOVSS dword ptr [ESP],XMM0
0056a19f  50                        PUSH EAX
0056a1a0  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
0056a1a6  e8555f4a00                CALL 0x00a10100
0056a1ab  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0056a1af  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0056a1b4  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
0056a1bc  f30f118e38030000          MOVSS dword ptr [ESI + 0x338],XMM1
0056a1c4  8d7748                    LEA ESI,[EDI + 0x48]
0056a1c7  68dcd2b100                PUSH 0xb1d2dc
0056a1cc  8bce                      MOV ECX,ESI
0056a1ce  e85d0eeaff                CALL 0x0040b030
0056a1d3  84c0                      TEST AL,AL
0056a1d5  0f84bafeffff              JZ 0x0056a095
0056a1db  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056a1e3  51                        PUSH ECX
0056a1e4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056a1eb  6a00                      PUSH 0x0
0056a1ed  6a02                      PUSH 0x2
0056a1ef  6a34                      PUSH 0x34
0056a1f1  e8eac63e00                CALL 0x009568e0
0056a1f6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056a1fc  6a0c                      PUSH 0xc
0056a1fe  e86d941900                CALL 0x00703670
0056a203  68b8d4b100                PUSH 0xb1d4b8
0056a208  8d45e4                    LEA EAX,[EBP + -0x1c]
0056a20b  8bcf                      MOV ECX,EDI
0056a20d  50                        PUSH EAX
0056a20e  e8ddc81400                CALL 0x006b6af0
0056a213  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0056a21b  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0056a221  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0056a226  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0056a22a  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0056a232  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0056a23a  f30f580d50a9ba00          ADDSS XMM1,dword ptr [0x00baa950]
0056a242  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0056a24a  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
0056a252  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
0056a25a  f30f118db0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM1
0056a262  85c9                      TEST ECX,ECX
0056a264  7467                      JZ 0x0056a2cd
0056a266  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
0056a26c  81896801000000000400      OR dword ptr [ECX + 0x168],0x40000
0056a276  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
0056a27c  8bbfec0b0000              MOV EDI,dword ptr [EDI + 0xbec]
0056a282  8b8db4feffff              MOV ECX,dword ptr [EBP + 0xfffffeb4]
0056a288  51                        PUSH ECX
0056a289  8d4dc4                    LEA ECX,[EBP + -0x3c]
0056a28c  8b07                      MOV EAX,dword ptr [EDI]
0056a28e  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
0056a291  e87a70ecff                CALL 0x00431310
0056a296  8d45c4                    LEA EAX,[EBP + -0x3c]
0056a299  8bcf                      MOV ECX,EDI
0056a29b  50                        PUSH EAX
0056a29c  ffd6                      CALL ESI
0056a29e  8bbdb4feffff              MOV EDI,dword ptr [EBP + 0xfffffeb4]
0056a2a4  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0056a2aa  81792890030000            CMP dword ptr [ECX + 0x28],0x390
0056a2b1  750c                      JNZ 0x0056a2bf
0056a2b3  83792c64                  CMP dword ptr [ECX + 0x2c],0x64
0056a2b7  7506                      JNZ 0x0056a2bf
0056a2b9  51                        PUSH ECX
0056a2ba  e891daffff                CALL 0x00567d50
0056a2bf  6a01                      PUSH 0x1
0056a2c1  8bcf                      MOV ECX,EDI
0056a2c3  e8b8e6ffff                CALL 0x00568980
0056a2c8  e99e020000                JMP 0x0056a56b
0056a2cd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056a2d3  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0056a2d9  50                        PUSH EAX
0056a2da  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0056a2e0  e81b8a2a00                CALL 0x00812d00
0056a2e5  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
0056a2eb  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0056a2ef  f30f5c85e8feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffee8]
0056a2f7  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
0056a2ff  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0056a304  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
0056a30a  f30f5c85bcfeffff          SUBSS XMM0,dword ptr [EBP + 0xfffffebc]
0056a312  50                        PUSH EAX
0056a313  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
0056a31b  e8105d4a00                CALL 0x00a10030
0056a320  befaffffff                MOV ESI,0xfffffffa
0056a325  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
0056a330  0f57c0                    XORPS XMM0,XMM0
0056a333  f30f2ac6                  CVTSI2SS XMM0,ESI
0056a337  f30f5905a0a9ba00          MULSS XMM0,dword ptr [0x00baa9a0]
0056a33f  f30f5e05a4a7ba00          DIVSS XMM0,dword ptr [0x00baa7a4]
0056a347  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0056a34f  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0056a357  e8e431ebff                CALL 0x0041d540
0056a35c  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0056a364  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0056a36c  e8af31ebff                CALL 0x0041d520
0056a371  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
0056a379  e8e24b1800                CALL 0x006eef60
0056a37e  f30f10adc8feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffec8]
0056a386  0f57c9                    XORPS XMM1,XMM1
0056a389  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0056a391  0f28e5                    MOVAPS XMM4,XMM5
0056a394  f30f59a5e8feffff          MULSS XMM4,dword ptr [EBP + 0xfffffee8]
0056a39c  f30f5985bcfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffebc]
0056a3a4  f20f2ac8                  CVTSI2SD XMM1,EAX
0056a3a8  c1e81f                    SHR EAX,0x1f
0056a3ab  f30f59adbcfeffff          MULSS XMM5,dword ptr [EBP + 0xfffffebc]
0056a3b3  f30f5ce0                  SUBSS XMM4,XMM0
0056a3b7  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0056a3c0  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0056a3c8  8bc6                      MOV EAX,ESI
0056a3ca  f30f5985e8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee8]
0056a3d2  83e001                    AND EAX,0x1
0056a3d5  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
0056a3db  660f5ac9                  CVTPD2PS XMM1,XMM1
0056a3df  f30f58e8                  ADDSS XMM5,XMM0
0056a3e3  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0056a3eb  f30f590da4a7ba00          MULSS XMM1,dword ptr [0x00baa7a4]
0056a3f3  f30f580dfca6ba00          ADDSS XMM1,dword ptr [0x00baa6fc]
0056a3fb  f30f59e1                  MULSS XMM4,XMM1
0056a3ff  f30f59e9                  MULSS XMM5,XMM1
0056a403  f30f11a5d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM4
0056a40b  f30f11add8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM5
0056a413  7453                      JZ 0x0056a468
0056a415  f30f1085acfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeac]
0056a41d  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0056a423  f30f1015d8adba00          MOVSS XMM2,dword ptr [0x00baadd8]
0056a42b  f30f58c4                  ADDSS XMM0,XMM4
0056a42f  51                        PUSH ECX
0056a430  c70424000000c1            MOV dword ptr [ESP],0xc1000000
0056a437  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
0056a43d  50                        PUSH EAX
0056a43e  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
0056a446  f30f1085b0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb0]
0056a44e  f30f58c5                  ADDSS XMM0,XMM5
0056a452  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
0056a45a  e8f1e6f6ff                CALL 0x004d8b50
0056a45f  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
0056a465  83c408                    ADD ESP,0x8
0056a468  85c0                      TEST EAX,EAX
0056a46a  0f85f1000000              JNZ 0x0056a561
0056a470  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0056a478  e8c330ebff                CALL 0x0041d540
0056a47d  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0056a485  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0056a48d  e88e30ebff                CALL 0x0041d520
0056a492  f30f109de8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee8]
0056a49a  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
0056a4a0  f30f108dccfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffecc]
0056a4a8  0f28d3                    MOVAPS XMM2,XMM3
0056a4ab  f30f5995c8feffff          MULSS XMM2,dword ptr [EBP + 0xfffffec8]
0056a4b3  f30f599dccfeffff          MULSS XMM3,dword ptr [EBP + 0xfffffecc]
0056a4bb  f30f59c8                  MULSS XMM1,XMM0
0056a4bf  f30f5cd1                  SUBSS XMM2,XMM1
0056a4c3  f30f108dc8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec8]
0056a4cb  f30f59c8                  MULSS XMM1,XMM0
0056a4cf  f30f591548a8ba00          MULSS XMM2,dword ptr [0x00baa848]
0056a4d7  f30f58cb                  ADDSS XMM1,XMM3
0056a4db  f30f1195d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM2
0056a4e3  f30f590d48a8ba00          MULSS XMM1,dword ptr [0x00baa848]
0056a4eb  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
0056a4f3  e8384aedff                CALL 0x0043ef30
0056a4f8  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
0056a500  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0056a506  f30f5885acfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffeac]
0056a50e  50                        PUSH EAX
0056a50f  6a00                      PUSH 0x0
0056a511  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0056a517  c785fcfeffff0ad723bd      MOV dword ptr [EBP + 0xfffffefc],0xbd23d70a
0056a521  50                        PUSH EAX
0056a522  f30f118584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM0
0056a52a  8d8584feffff              LEA EAX,[EBP + 0xfffffe84]
0056a530  f30f1085d8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed8]
0056a538  8bcf                      MOV ECX,EDI
0056a53a  f30f5885b0feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffeb0]
0056a542  50                        PUSH EAX
0056a543  c78504ffffff3333b33f      MOV dword ptr [EBP + 0xffffff04],0x3fb33333
0056a54d  f30f118588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM0
0056a555  e8860d1600                CALL 0x006cb2e0
0056a55a  c7403001000000            MOV dword ptr [EAX + 0x30],0x1
0056a561  46                        INC ESI
0056a562  83fe06                    CMP ESI,0x6
0056a565  0f8ec5fdffff              JLE 0x0056a330
0056a56b  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056a573  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0056a579  50                        PUSH EAX
0056a57a  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
0056a580  8bcf                      MOV ECX,EDI
0056a582  50                        PUSH EAX
0056a583  e838c11400                CALL 0x006b66c0
0056a588  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056a58e  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
0056a594  6a0d                      PUSH 0xd
0056a596  83ec08                    SUB ESP,0x8
0056a599  c7442404cdcccc3c          MOV dword ptr [ESP + 0x4],0x3ccccccd
0056a5a1  c704240ad7233d            MOV dword ptr [ESP],0x3d23d70a
0056a5a8  50                        PUSH EAX
0056a5a9  e8c2911900                CALL 0x00703770
0056a5ae  e9dffaffff                JMP 0x0056a092
0056a5b3  8d7748                    LEA ESI,[EDI + 0x48]
0056a5b6  68d4d2b100                PUSH 0xb1d2d4
0056a5bb  8bce                      MOV ECX,ESI
0056a5bd  e86e0aeaff                CALL 0x0040b030
0056a5c2  84c0                      TEST AL,AL
0056a5c4  741e                      JZ 0x0056a5e4
0056a5c6  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056a5ce  51                        PUSH ECX
0056a5cf  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056a5d6  6a00                      PUSH 0x0
0056a5d8  6a02                      PUSH 0x2
0056a5da  6883020000                PUSH 0x283
0056a5df  e88cbe1400                CALL 0x006b6470
0056a5e4  68dcd2b100                PUSH 0xb1d2dc
0056a5e9  8bce                      MOV ECX,ESI
0056a5eb  e8400aeaff                CALL 0x0040b030
0056a5f0  84c0                      TEST AL,AL
0056a5f2  0f84dd030000              JZ 0x0056a9d5
0056a5f8  68b8d4b100                PUSH 0xb1d4b8
0056a5fd  8d45e4                    LEA EAX,[EBP + -0x1c]
0056a600  8bcf                      MOV ECX,EDI
0056a602  50                        PUSH EAX
0056a603  e8e8c41400                CALL 0x006b6af0
0056a608  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0056a610  0f57d2                    XORPS XMM2,XMM2
0056a613  33c9                      XOR ECX,ECX
0056a615  c78578feffff0000a0c1      MOV dword ptr [EBP + 0xfffffe78],0xc1a00000
0056a61f  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
0056a625  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0056a62a  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0056a62e  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0056a636  898d74feffff              MOV dword ptr [EBP + 0xfffffe74],ECX
0056a63c  c785ecfeffff0f000000      MOV dword ptr [EBP + 0xfffffeec],0xf
0056a646  f30f58c2                  ADDSS XMM0,XMM2
0056a64a  f30f580d50a9ba00          ADDSS XMM1,dword ptr [0x00baa950]
0056a652  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
0056a65a  f30f118dccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM1
0056a662  660f6ec1                  MOVD XMM0,ECX
0056a666  0f5bc0                    CVTDQ2PS XMM0,XMM0
0056a669  f30f5cc2                  SUBSS XMM0,XMM2
0056a66d  f30f5e05b8a7ba00          DIVSS XMM0,dword ptr [0x00baa7b8]
0056a675  f30f5fc2                  MAXSS XMM0,XMM2
0056a679  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
0056a681  f30f590500aaba00          MULSS XMM0,dword ptr [0x00baaa00]
0056a689  f30f5805d0a8ba00          ADDSS XMM0,dword ptr [0x00baa8d0]
0056a691  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0056a699  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
0056a6a1  e89a2eebff                CALL 0x0041d540
0056a6a6  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0056a6ae  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
0056a6b6  e8652eebff                CALL 0x0041d520
0056a6bb  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
0056a6c3  e898481800                CALL 0x006eef60
0056a6c8  8bf0                      MOV ESI,EAX
0056a6ca  e891481800                CALL 0x006eef60
0056a6cf  f30f10155ca7ba00          MOVSS XMM2,dword ptr [0x00baa75c]
0056a6d7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056a6dd  56                        PUSH ESI
0056a6de  660f6ec8                  MOVD XMM1,EAX
0056a6e2  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0056a6e6  c1e81f                    SHR EAX,0x1f
0056a6e9  6a00                      PUSH 0x0
0056a6eb  57                        PUSH EDI
0056a6ec  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0056a6f5  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
0056a6fb  50                        PUSH EAX
0056a6fc  8d8584feffff              LEA EAX,[EBP + 0xfffffe84]
0056a702  50                        PUSH EAX
0056a703  660f5ac9                  CVTPD2PS XMM1,XMM1
0056a707  6a1e                      PUSH 0x1e
0056a709  6890030000                PUSH 0x390
0056a70e  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0056a716  f30f59ca                  MULSS XMM1,XMM2
0056a71a  f30f580da4a7ba00          ADDSS XMM1,dword ptr [0x00baa7a4]
0056a722  0f28c1                    MOVAPS XMM0,XMM1
0056a725  f30f598dbcfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffebc]
0056a72d  f30f5985dcfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffedc]
0056a735  f30f118dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM1
0056a73d  f30f108dbcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffebc]
0056a745  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
0056a74d  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
0056a755  f30f59c2                  MULSS XMM0,XMM2
0056a759  f30f59ca                  MULSS XMM1,XMM2
0056a75d  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
0056a765  f30f5885c8feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffec8]
0056a76d  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
0056a775  f30f118584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM0
0056a77d  0f28c1                    MOVAPS XMM0,XMM1
0056a780  f30f5885ccfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffecc]
0056a788  f30f118588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM0
0056a790  e88be3ebff                CALL 0x00428b20
0056a795  8bcf                      MOV ECX,EDI
0056a797  8bf0                      MOV ESI,EAX
0056a799  e8a2401500                CALL 0x006be840
0056a79e  8b96c4030000              MOV EDX,dword ptr [ESI + 0x3c4]
0056a7a4  8bc8                      MOV ECX,EAX
0056a7a6  898d98feffff              MOV dword ptr [EBP + 0xfffffe98],ECX
0056a7ac  8d86c4030000              LEA EAX,[ESI + 0x3c4]
0056a7b2  85d2                      TEST EDX,EDX
0056a7b4  7424                      JZ 0x0056a7da
0056a7b6  898580feffff              MOV dword ptr [EBP + 0xfffffe80],EAX
0056a7bc  8d8acc030000              LEA ECX,[EDX + 0x3cc]
0056a7c2  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
0056a7c8  50                        PUSH EAX
0056a7c9  e8424af6ff                CALL 0x004cf210
0056a7ce  8b8d98feffff              MOV ECX,dword ptr [EBP + 0xfffffe98]
0056a7d4  8d86c4030000              LEA EAX,[ESI + 0x3c4]
0056a7da  8908                      MOV dword ptr [EAX],ECX
0056a7dc  85c9                      TEST ECX,ECX
0056a7de  7406                      JZ 0x0056a7e6
0056a7e0  50                        PUSH EAX
0056a7e1  e80a35f6ff                CALL 0x004cdcf0
0056a7e6  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
0056a7ec  8986a40b0000              MOV dword ptr [ESI + 0xba4],EAX
0056a7f2  e869471800                CALL 0x006eef60
0056a7f7  8bce                      MOV ECX,ESI
0056a7f9  660f6ec0                  MOVD XMM0,EAX
0056a7fd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056a801  c1e81f                    SHR EAX,0x1f
0056a804  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0056a80d  8b06                      MOV EAX,dword ptr [ESI]
0056a80f  660f5ac8                  CVTPD2PS XMM1,XMM0
0056a813  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0056a81b  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
0056a823  f30f580d54a3ba00          ADDSS XMM1,dword ptr [0x00baa354]
0056a82b  f30f118e380c0000          MOVSS dword ptr [ESI + 0xc38],XMM1
0056a833  f30f598eb4030000          MULSS XMM1,dword ptr [ESI + 0x3b4]
0056a83b  0f28c1                    MOVAPS XMM0,XMM1
0056a83e  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0056a846  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0056a84e  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0056a856  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0056a85e  ff500c                    CALL dword ptr [EAX + 0xc]
0056a861  e8fa461800                CALL 0x006eef60
0056a866  8db7e4010000              LEA ESI,[EDI + 0x1e4]
0056a86c  b903000000                MOV ECX,0x3
0056a871  8d95a4feffff              LEA EDX,[EBP + 0xfffffea4]
0056a877  660f6ec0                  MOVD XMM0,EAX
0056a87b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056a87f  c1e81f                    SHR EAX,0x1f
0056a882  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0056a88b  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
0056a891  50                        PUSH EAX
0056a892  8d8574feffff              LEA EAX,[EBP + 0xfffffe74]
0056a898  56                        PUSH ESI
0056a899  660f5ac8                  CVTPD2PS XMM1,XMM0
0056a89d  50                        PUSH EAX
0056a89e  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0056a8a6  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
0056a8ae  f30f580da4a7ba00          ADDSS XMM1,dword ptr [0x00baa7a4]
0056a8b6  0f28c1                    MOVAPS XMM0,XMM1
0056a8b9  f30f598dbcfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffebc]
0056a8c1  f30f5985dcfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffedc]
0056a8c9  f30f118d68feffff          MOVSS dword ptr [EBP + 0xfffffe68],XMM1
0056a8d1  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
0056a8d9  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
0056a8e1  f30f5885b0feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffeb0]
0056a8e9  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
0056a8f1  f30f1085ccfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffecc]
0056a8f9  f30f5885d8feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffed8]
0056a901  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
0056a909  e8e2d31600                CALL 0x006d7cf0
0056a90e  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
0056a914  83c40c                    ADD ESP,0xc
0056a917  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
0056a91d  83c008                    ADD EAX,0x8
0056a920  41                        INC ECX
0056a921  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
0056a927  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
0056a92d  0f57d2                    XORPS XMM2,XMM2
0056a930  83f84f                    CMP EAX,0x4f
0056a933  0f8c29fdffff              JL 0x0056a662
0056a939  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
0056a941  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0056a947  51                        PUSH ECX
0056a948  c7042400002040            MOV dword ptr [ESP],0x40200000
0056a94f  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0056a955  50                        PUSH EAX
0056a956  56                        PUSH ESI
0056a957  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
0056a95d  c785a4feffff00000000      MOV dword ptr [EBP + 0xfffffea4],0x0
0056a967  57                        PUSH EDI
0056a968  50                        PUSH EAX
0056a969  ba06000000                MOV EDX,0x6
0056a96e  c785a8feffff0000c040      MOV dword ptr [EBP + 0xfffffea8],0x40c00000
0056a978  c785d8feffff05000000      MOV dword ptr [EBP + 0xfffffed8],0x5
0056a982  e829881400                CALL 0x006b31b0
0056a987  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056a98f  83c410                    ADD ESP,0x10
0056a992  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056a999  6a00                      PUSH 0x0
0056a99b  6a02                      PUSH 0x2
0056a99d  6884020000                PUSH 0x284
0056a9a2  e8c9ba1400                CALL 0x006b6470
0056a9a7  51                        PUSH ECX
0056a9a8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056a9af  6a00                      PUSH 0x0
0056a9b1  6a02                      PUSH 0x2
0056a9b3  e8a8451800                CALL 0x006eef60
0056a9b8  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056a9c0  f7d0                      NOT EAX
0056a9c2  83e001                    AND EAX,0x1
0056a9c5  8d044578020000            LEA EAX,[EAX*0x2 + 0x278]
0056a9cc  50                        PUSH EAX
0056a9cd  e89eba1400                CALL 0x006b6470
0056a9d2  8d7748                    LEA ESI,[EDI + 0x48]
0056a9d5  68eca4b100                PUSH 0xb1a4ec
0056a9da  8bce                      MOV ECX,ESI
0056a9dc  e86ffbe9ff                CALL 0x0040a550
0056a9e1  84c0                      TEST AL,AL
0056a9e3  0f84d9170000              JZ 0x0056c1c2
0056a9e9  6a00                      PUSH 0x0
0056a9eb  6854bcb100                PUSH 0xb1bc54
0056a9f0  8bce                      MOV ECX,ESI
0056a9f2  e889f9e9ff                CALL 0x0040a380
0056a9f7  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0056aa01  c787100400005a000000      MOV dword ptr [EDI + 0x410],0x5a
0056aa0b  e9b2170000                JMP 0x0056c1c2
0056aa10  8d4f48                    LEA ECX,[EDI + 0x48]
0056aa13  68dcd2b100                PUSH 0xb1d2dc
0056aa18  e81306eaff                CALL 0x0040b030
0056aa1d  84c0                      TEST AL,AL
0056aa1f  0f849d170000              JZ 0x0056c1c2
0056aa25  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056aa2b  6a08                      PUSH 0x8
0056aa2d  e83e8c1900                CALL 0x00703670
0056aa32  68b8d4b100                PUSH 0xb1d4b8
0056aa37  8d45c4                    LEA EAX,[EBP + -0x3c]
0056aa3a  8bcf                      MOV ECX,EDI
0056aa3c  50                        PUSH EAX
0056aa3d  e8dec11400                CALL 0x006b6c20
0056aa42  f30f1065e4                MOVSS XMM4,dword ptr [EBP + -0x1c]
0056aa47  0f2f25e49fba00            COMISS XMM4,dword ptr [0x00ba9fe4]
0056aa4e  0f8609030000              JBE 0x0056ad5d
0056aa54  f30f10974c030000          MOVSS XMM2,dword ptr [EDI + 0x34c]
0056aa5c  f30f1045c4                MOVSS XMM0,dword ptr [EBP + -0x3c]
0056aa61  f30f108f50030000          MOVSS XMM1,dword ptr [EDI + 0x350]
0056aa69  f30f58c2                  ADDSS XMM0,XMM2
0056aa6d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056aa73  6a05                      PUSH 0x5
0056aa75  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
0056aa7a  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
0056aa7f  f30f58c1                  ADDSS XMM0,XMM1
0056aa83  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
0056aa88  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
0056aa8d  f30f58c2                  ADDSS XMM0,XMM2
0056aa91  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
0056aa96  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
0056aa9b  f30f58c1                  ADDSS XMM0,XMM1
0056aa9f  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
0056aaa4  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
0056aaa9  f30f58c2                  ADDSS XMM0,XMM2
0056aaad  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
0056aab2  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
0056aab7  f30f58c1                  ADDSS XMM0,XMM1
0056aabb  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0056aac0  e89b6cecff                CALL 0x00431760
0056aac5  84c0                      TEST AL,AL
0056aac7  7420                      JZ 0x0056aae9
0056aac9  6a01                      PUSH 0x1
0056aacb  8bcf                      MOV ECX,EDI
0056aacd  e83eb41400                CALL 0x006b5f10
0056aad2  8d4dc4                    LEA ECX,[EBP + -0x3c]
0056aad5  51                        PUSH ECX
0056aad6  8bc8                      MOV ECX,EAX
0056aad8  c7400401000000            MOV dword ptr [EAX + 0x4],0x1
0056aadf  e80c44ecff                CALL 0x0042eef0
0056aae4  f30f1065e4                MOVSS XMM4,dword ptr [EBP + -0x1c]
0056aae9  f30f105de8                MOVSS XMM3,dword ptr [EBP + -0x18]
0056aaee  8d45c4                    LEA EAX,[EBP + -0x3c]
0056aaf1  6aff                      PUSH -0x1
0056aaf3  50                        PUSH EAX
0056aaf4  f30f58dc                  ADDSS XMM3,XMM4
0056aaf8  8d856cfeffff              LEA EAX,[EBP + 0xfffffe6c]
0056aafe  8d8e18120000              LEA ECX,[ESI + 0x1218]
0056ab04  50                        PUSH EAX
0056ab05  e886fceaff                CALL 0x0041a790
0056ab0a  33f6                      XOR ESI,ESI
0056ab0c  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
0056ab13  89b5ecfeffff              MOV dword ptr [EBP + 0xfffffeec],ESI
0056ab19  39b578feffff              CMP dword ptr [EBP + 0xfffffe78],ESI
0056ab1f  0f8626020000              JBE 0x0056ad4b
0056ab25  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
0056ab30  8b8570feffff              MOV EAX,dword ptr [EBP + 0xfffffe70]
0056ab36  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
0056ab39  89b5dcfeffff              MOV dword ptr [EBP + 0xfffffedc],ESI
0056ab3f  3bf7                      CMP ESI,EDI
0056ab41  0f84eb010000              JZ 0x0056ad32
0056ab47  83be8801000000            CMP dword ptr [ESI + 0x188],0x0
0056ab4e  0f84de010000              JZ 0x0056ad32
0056ab54  83be8401000004            CMP dword ptr [ESI + 0x184],0x4
0056ab5b  0f84d1010000              JZ 0x0056ad32
0056ab61  817e2890030000            CMP dword ptr [ESI + 0x28],0x390
0056ab68  750a                      JNZ 0x0056ab74
0056ab6a  837e2c64                  CMP dword ptr [ESI + 0x2c],0x64
0056ab6e  7504                      JNZ 0x0056ab74
0056ab70  b001                      MOV AL,0x1
0056ab72  eb02                      JMP 0x0056ab76
0056ab74  32c0                      XOR AL,AL
0056ab76  84c0                      TEST AL,AL
0056ab78  0f85b4010000              JNZ 0x0056ad32
0056ab7e  6840b6c700                PUSH 0xc7b640
0056ab83  8d8534feffff              LEA EAX,[EBP + 0xfffffe34]
0056ab89  8bce                      MOV ECX,ESI
0056ab8b  50                        PUSH EAX
0056ab8c  e80ff01300                CALL 0x006a9ba0
0056ab91  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0056ab97  c785a8feffff00000000      MOV dword ptr [EBP + 0xfffffea8],0x0
0056aba1  50                        PUSH EAX
0056aba2  8d9534feffff              LEA EDX,[EBP + 0xfffffe34]
0056aba8  c785a4feffff00000000      MOV dword ptr [EBP + 0xfffffea4],0x0
0056abb2  8d4dc4                    LEA ECX,[EBP + -0x3c]
0056abb5  e8b6a83d00                CALL 0x00945470
0056abba  83c404                    ADD ESP,0x4
0056abbd  84c0                      TEST AL,AL
0056abbf  0f8414010000              JZ 0x0056acd9
0056abc5  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0056abcd  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0056abd5  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
0056abdd  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0056abe5  0f28c1                    MOVAPS XMM0,XMM1
0056abe8  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
0056abf0  f30f59c1                  MULSS XMM0,XMM1
0056abf4  0f28ca                    MOVAPS XMM1,XMM2
0056abf7  f30f1195bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM2
0056abff  f30f59ca                  MULSS XMM1,XMM2
0056ac03  f30f58c1                  ADDSS XMM0,XMM1
0056ac07  e844aeecff                CALL 0x00435a50
0056ac0c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0056ac13  7621                      JBE 0x0056ac36
0056ac15  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0056ac1d  f30f5ec8                  DIVSS XMM1,XMM0
0056ac21  0f28c1                    MOVAPS XMM0,XMM1
0056ac24  f30f598dbcfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffebc]
0056ac2c  f30f5985e8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee8]
0056ac34  eb10                      JMP 0x0056ac46
0056ac36  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
0056ac3e  f30f108dbcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffebc]
0056ac46  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0056ac4e  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0056ac56  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
0056ac5e  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
0056ac66  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0056ac6e  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0056ac76  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0056ac79  83f801                    CMP EAX,0x1
0056ac7c  742d                      JZ 0x0056acab
0056ac7e  83f803                    CMP EAX,0x3
0056ac81  7428                      JZ 0x0056acab
0056ac83  8b06                      MOV EAX,dword ptr [ESI]
0056ac85  8d8d0cfeffff              LEA ECX,[EBP + 0xfffffe0c]
0056ac8b  57                        PUSH EDI
0056ac8c  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0056ac8f  e87c66ecff                CALL 0x00431310
0056ac94  6a1e                      PUSH 0x1e
0056ac96  8d850cfeffff              LEA EAX,[EBP + 0xfffffe0c]
0056ac9c  50                        PUSH EAX
0056ac9d  6a00                      PUSH 0x0
0056ac9f  6a00                      PUSH 0x0
0056aca1  51                        PUSH ECX
0056aca2  c704240000c842            MOV dword ptr [ESP],0x42c80000
0056aca9  eb20                      JMP 0x0056accb
0056acab  8b06                      MOV EAX,dword ptr [ESI]
0056acad  8d4d9c                    LEA ECX,[EBP + -0x64]
0056acb0  57                        PUSH EDI
0056acb1  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0056acb4  e85766ecff                CALL 0x00431310
0056acb9  6a1e                      PUSH 0x1e
0056acbb  8d459c                    LEA EAX,[EBP + -0x64]
0056acbe  50                        PUSH EAX
0056acbf  6a00                      PUSH 0x0
0056acc1  6a00                      PUSH 0x0
0056acc3  51                        PUSH ECX
0056acc4  c7042400000040            MOV dword ptr [ESP],0x40000000
0056accb  8b8ddcfeffff              MOV ECX,dword ptr [EBP + 0xfffffedc]
0056acd1  ffd6                      CALL ESI
0056acd3  8bb5dcfeffff              MOV ESI,dword ptr [EBP + 0xfffffedc]
0056acd9  817e2890030000            CMP dword ptr [ESI + 0x28],0x390
0056ace0  7550                      JNZ 0x0056ad32
0056ace2  837e2c14                  CMP dword ptr [ESI + 0x2c],0x14
0056ace6  754a                      JNZ 0x0056ad32
0056ace8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0056acee  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0056acf4  c785e8feffff82020000      MOV dword ptr [EBP + 0xfffffee8],0x282
0056acfe  e87dba3e00                CALL 0x00956780
0056ad03  83ec08                    SUB ESP,0x8
0056ad06  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0056ad0c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0056ad14  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056ad1b  6a00                      PUSH 0x0
0056ad1d  6a02                      PUSH 0x2
0056ad1f  51                        PUSH ECX
0056ad20  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056ad27  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
0056ad2d  e8fe2e3c00                CALL 0x0092dc30
0056ad32  8bb5ecfeffff              MOV ESI,dword ptr [EBP + 0xfffffeec]
0056ad38  46                        INC ESI
0056ad39  89b5ecfeffff              MOV dword ptr [EBP + 0xfffffeec],ESI
0056ad3f  3bb578feffff              CMP ESI,dword ptr [EBP + 0xfffffe78]
0056ad45  0f82e5fdffff              JC 0x0056ab30
0056ad4b  8d8d6cfeffff              LEA ECX,[EBP + 0xfffffe6c]
0056ad51  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0056ad58  e853c8eaff                CALL 0x004175b0
0056ad5d  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0056ad63  85c0                      TEST EAX,EAX
0056ad65  0f844cf3ffff              JZ 0x0056a0b7
0056ad6b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0056ad73  f30f580544aaba00          ADDSS XMM0,dword ptr [0x00baaa44]
0056ad7b  0f2f8040030000            COMISS XMM0,dword ptr [EAX + 0x340]
0056ad82  0f862ff3ffff              JBE 0x0056a0b7
0056ad88  8bcf                      MOV ECX,EDI
0056ad8a  e8b13a1500                CALL 0x006be840
0056ad8f  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0056ad95  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0056ad9d  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0056ada5  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0056adab  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
0056adb3  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
0056adbb  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
0056adc3  f30f118dccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM1
0056adcb  e8f0514a00                CALL 0x00a0ffc0
0056add0  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056add8  51                        PUSH ECX
0056add9  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056ade0  6a00                      PUSH 0x0
0056ade2  6a02                      PUSH 0x2
0056ade4  6a4d                      PUSH 0x4d
0056ade6  e885b61400                CALL 0x006b6470
0056adeb  51                        PUSH ECX
0056adec  8d45e4                    LEA EAX,[EBP + -0x1c]
0056adef  c7042400008041            MOV dword ptr [ESP],0x41800000
0056adf6  50                        PUSH EAX
0056adf7  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0056adfd  e8fe524a00                CALL 0x00a10100
0056ae02  8b97ec0b0000              MOV EDX,dword ptr [EDI + 0xbec]
0056ae08  8b08                      MOV ECX,dword ptr [EAX]
0056ae0a  898a60030000              MOV dword ptr [EDX + 0x360],ECX
0056ae10  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0056ae13  898264030000              MOV dword ptr [EDX + 0x364],EAX
0056ae19  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
0056ae1f  f30f108e38030000          MOVSS XMM1,dword ptr [ESI + 0x338]
0056ae27  f30f108634030000          MOVSS XMM0,dword ptr [ESI + 0x334]
0056ae2f  f30f59c0                  MULSS XMM0,XMM0
0056ae33  f30f59c9                  MULSS XMM1,XMM1
0056ae37  f30f58c1                  ADDSS XMM0,XMM1
0056ae3b  e810acecff                CALL 0x00435a50
0056ae40  f30f580554a1ba00          ADDSS XMM0,dword ptr [0x00baa154]
0056ae48  51                        PUSH ECX
0056ae49  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0056ae4f  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0056ae55  f30f5d05fca6ba00          MINSS XMM0,dword ptr [0x00baa6fc]
0056ae5d  f30f110424                MOVSS dword ptr [ESP],XMM0
0056ae62  50                        PUSH EAX
0056ae63  e898524a00                CALL 0x00a10100
0056ae68  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0056ae6c  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0056ae71  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
0056ae79  f30f118e38030000          MOVSS dword ptr [ESI + 0x338],XMM1
0056ae81  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
0056ae87  8b8630030000              MOV EAX,dword ptr [ESI + 0x330]
0056ae8d  f30f10867c030000          MOVSS XMM0,dword ptr [ESI + 0x37c]
0056ae95  0f2e4044                  UCOMISS XMM0,dword ptr [EAX + 0x44]
0056ae99  9f                        LAHF
0056ae9a  f6c444                    TEST AH,0x44
0056ae9d  0f8a14f2ffff              JP 0x0056a0b7
0056aea3  8bcf                      MOV ECX,EDI
0056aea5  e896391500                CALL 0x006be840
0056aeaa  50                        PUSH EAX
0056aeab  8bce                      MOV ECX,ESI
0056aead  e86ee41300                CALL 0x006a9320
0056aeb2  e900f2ffff                JMP 0x0056a0b7
0056aeb7  8d7748                    LEA ESI,[EDI + 0x48]
0056aeba  68dc19b600                PUSH 0xb619dc
0056aebf  8bce                      MOV ECX,ESI
0056aec1  e86a01eaff                CALL 0x0040b030
0056aec6  84c0                      TEST AL,AL
0056aec8  7419                      JZ 0x0056aee3
0056aeca  f30f10857cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe7c]
0056aed2  8bcf                      MOV ECX,EDI
0056aed4  6a04                      PUSH 0x4
0056aed6  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0056aede  e8ddd9ffff                CALL 0x005688c0
0056aee3  68dcd2b100                PUSH 0xb1d2dc
0056aee8  8bce                      MOV ECX,ESI
0056aeea  e84101eaff                CALL 0x0040b030
0056aeef  84c0                      TEST AL,AL
0056aef1  0f8453010000              JZ 0x0056b04a
0056aef7  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0056aefd  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056af05  51                        PUSH ECX
0056af06  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056af0d  6a00                      PUSH 0x0
0056af0f  6a02                      PUSH 0x2
0056af11  6a34                      PUSH 0x34
0056af13  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
0056af19  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
0056af23  e8b8b93e00                CALL 0x009568e0
0056af28  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056af2e  6a0c                      PUSH 0xc
0056af30  e83b871900                CALL 0x00703670
0056af35  68b8d4b100                PUSH 0xb1d4b8
0056af3a  8d45e4                    LEA EAX,[EBP + -0x1c]
0056af3d  8bcf                      MOV ECX,EDI
0056af3f  50                        PUSH EAX
0056af40  e8abbb1400                CALL 0x006b6af0
0056af45  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056af4d  8db7e4010000              LEA ESI,[EDI + 0x1e4]
0056af53  56                        PUSH ESI
0056af54  8bcf                      MOV ECX,EDI
0056af56  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0056af5a  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0056af5f  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0056af65  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0056af6d  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0056af75  50                        PUSH EAX
0056af76  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
0056af7e  f30f580550a9ba00          ADDSS XMM0,dword ptr [0x00baa950]
0056af86  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
0056af8e  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0056af96  e825b71400                CALL 0x006b66c0
0056af9b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056afa1  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0056afa7  6a0d                      PUSH 0xd
0056afa9  83ec08                    SUB ESP,0x8
0056afac  c7442404cdcccc3c          MOV dword ptr [ESP + 0x4],0x3ccccccd
0056afb4  c704240ad7233d            MOV dword ptr [ESP],0x3d23d70a
0056afbb  50                        PUSH EAX
0056afbc  e8af871900                CALL 0x00703770
0056afc1  68d019b600                PUSH 0xb619d0
0056afc6  8d45e4                    LEA EAX,[EBP + -0x1c]
0056afc9  8bcf                      MOV ECX,EDI
0056afcb  50                        PUSH EAX
0056afcc  e81fbb1400                CALL 0x006b6af0
0056afd1  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0056afd9  8bcf                      MOV ECX,EDI
0056afdb  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056afe3  56                        PUSH ESI
0056afe4  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0056afe9  f30f5808                  ADDSS XMM1,dword ptr [EAX]
0056afed  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0056aff5  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0056affb  50                        PUSH EAX
0056affc  f30f580de49fba00          ADDSS XMM1,dword ptr [0x00ba9fe4]
0056b004  f30f580550a9ba00          ADDSS XMM0,dword ptr [0x00baa950]
0056b00c  f30f118dd4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM1
0056b014  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0056b01c  e89fb61400                CALL 0x006b66c0
0056b021  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056b027  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0056b02d  6a0d                      PUSH 0xd
0056b02f  83ec08                    SUB ESP,0x8
0056b032  c7442404cdcccc3c          MOV dword ptr [ESP + 0x4],0x3ccccccd
0056b03a  c704240ad7233d            MOV dword ptr [ESP],0x3d23d70a
0056b041  50                        PUSH EAX
0056b042  e829871900                CALL 0x00703770
0056b047  8d7748                    LEA ESI,[EDI + 0x48]
0056b04a  68dcd2b100                PUSH 0xb1d2dc
0056b04f  8bce                      MOV ECX,ESI
0056b051  e83a00eaff                CALL 0x0040b090
0056b056  84c0                      TEST AL,AL
0056b058  7510                      JNZ 0x0056b06a
0056b05a  8d4f78                    LEA ECX,[EDI + 0x78]
0056b05d  e84ec3e9ff                CALL 0x004073b0
0056b062  84c0                      TEST AL,AL
0056b064  0f844f020000              JZ 0x0056b2b9
0056b06a  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0056b072  0f57d2                    XORPS XMM2,XMM2
0056b075  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0056b07d  8bcf                      MOV ECX,EDI
0056b07f  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
0056b087  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
0056b08f  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0056b097  e8c4161400                CALL 0x006ac760
0056b09c  85c0                      TEST EAX,EAX
0056b09e  0f8415020000              JZ 0x0056b2b9
0056b0a4  6a14                      PUSH 0x14
0056b0a6  6890030000                PUSH 0x390
0056b0ab  8d45dc                    LEA EAX,[EBP + -0x24]
0056b0ae  8bcf                      MOV ECX,EDI
0056b0b0  50                        PUSH EAX
0056b0b1  e8aa5b1600                CALL 0x006d0c60
0056b0b6  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
0056b0bd  33c9                      XOR ECX,ECX
0056b0bf  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0056b0c2  898dbcfeffff              MOV dword ptr [EBP + 0xfffffebc],ECX
0056b0c8  85d2                      TEST EDX,EDX
0056b0ca  0f84da010000              JZ 0x0056b2aa
0056b0d0  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0056b0d3  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
0056b0d6  89b5e8feffff              MOV dword ptr [EBP + 0xfffffee8],ESI
0056b0dc  85f6                      TEST ESI,ESI
0056b0de  0f84b4010000              JZ 0x0056b298
0056b0e4  a17816c700                MOV EAX,[0x00c71678]
0056b0e9  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0056b0f0  7c06                      JL 0x0056b0f8
0056b0f2  837e2801                  CMP dword ptr [ESI + 0x28],0x1
0056b0f6  7411                      JZ 0x0056b109
0056b0f8  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0056b0fb  83e80a                    SUB EAX,0xa
0056b0fe  3ddd030000                CMP EAX,0x3dd
0056b103  0f878c010000              JA 0x0056b295
0056b109  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0056b111  0f2f8640030000            COMISS XMM0,dword ptr [ESI + 0x340]
0056b118  0f8677010000              JBE 0x0056b295
0056b11e  e83d3e1800                CALL 0x006eef60
0056b123  8b8e3c030000              MOV ECX,dword ptr [ESI + 0x33c]
0056b129  8b9640030000              MOV EDX,dword ptr [ESI + 0x340]
0056b12f  50                        PUSH EAX
0056b130  6a00                      PUSH 0x0
0056b132  57                        PUSH EDI
0056b133  6840b6c700                PUSH 0xc7b640
0056b138  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0056b13e  898da4feffff              MOV dword ptr [EBP + 0xfffffea4],ECX
0056b144  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056b14a  50                        PUSH EAX
0056b14b  6a3e                      PUSH 0x3e
0056b14d  68e8030000                PUSH 0x3e8
0056b152  8995a8feffff              MOV dword ptr [EBP + 0xfffffea8],EDX
0056b158  e8c3d9ebff                CALL 0x00428b20
0056b15d  8bc8                      MOV ECX,EAX
0056b15f  8b10                      MOV EDX,dword ptr [EAX]
0056b161  ff520c                    CALL dword ptr [EDX + 0xc]
0056b164  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0056b16a  8d4d9c                    LEA ECX,[EBP + -0x64]
0056b16d  818e6801000000000400      OR dword ptr [ESI + 0x168],0x40000
0056b177  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0056b17d  8b06                      MOV EAX,dword ptr [ESI]
0056b17f  57                        PUSH EDI
0056b180  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
0056b183  e88861ecff                CALL 0x00431310
0056b188  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
0056b18e  8d459c                    LEA EAX,[EBP + -0x64]
0056b191  50                        PUSH EAX
0056b192  ffd6                      CALL ESI
0056b194  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
0056b19a  e8913dedff                CALL 0x0043ef30
0056b19f  c785fcfeffff0000c03f      MOV dword ptr [EBP + 0xfffffefc],0x3fc00000
0056b1a9  e8b23d1800                CALL 0x006eef60
0056b1ae  660f6ec0                  MOVD XMM0,EAX
0056b1b2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056b1b6  c1e81f                    SHR EAX,0x1f
0056b1b9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0056b1c2  660f5ac8                  CVTPD2PS XMM1,XMM0
0056b1c6  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0056b1ce  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0056b1d6  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
0056b1de  f30f5cc1                  SUBSS XMM0,XMM1
0056b1e2  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0056b1ea  e8713d1800                CALL 0x006eef60
0056b1ef  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
0056b1f5  c745840f000000            MOV dword ptr [EBP + -0x7c],0xf
0056b1fc  660f6ec0                  MOVD XMM0,EAX
0056b200  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056b204  c1e81f                    SHR EAX,0x1f
0056b207  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0056b210  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
0056b216  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
0056b21c  898574feffff              MOV dword ptr [EBP + 0xfffffe74],EAX
0056b222  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0056b228  50                        PUSH EAX
0056b229  660f5ac8                  CVTPD2PS XMM1,XMM0
0056b22d  8d8574feffff              LEA EAX,[EBP + 0xfffffe74]
0056b233  898d78feffff              MOV dword ptr [EBP + 0xfffffe78],ECX
0056b239  8bcf                      MOV ECX,EDI
0056b23b  6a00                      PUSH 0x0
0056b23d  6840b6c700                PUSH 0xc7b640
0056b242  50                        PUSH EAX
0056b243  f30f100584adba00          MOVSS XMM0,dword ptr [0x00baad84]
0056b24b  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0056b253  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0056b25b  f30f5cc1                  SUBSS XMM0,XMM1
0056b25f  f30f5c87b40b0000          SUBSS XMM0,dword ptr [EDI + 0xbb4]
0056b267  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0056b26f  e86c001600                CALL 0x006cb2e0
0056b274  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0056b27c  f30f5805fca6ba00          ADDSS XMM0,dword ptr [0x00baa6fc]
0056b284  8b8dbcfeffff              MOV ECX,dword ptr [EBP + 0xfffffebc]
0056b28a  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0056b28d  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0056b295  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0056b298  41                        INC ECX
0056b299  898dbcfeffff              MOV dword ptr [EBP + 0xfffffebc],ECX
0056b29f  3bca                      CMP ECX,EDX
0056b2a1  0f822cfeffff              JC 0x0056b0d3
0056b2a7  8d7748                    LEA ESI,[EDI + 0x48]
0056b2aa  8d4ddc                    LEA ECX,[EBP + -0x24]
0056b2ad  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0056b2b4  e8f7c2eaff                CALL 0x004175b0
0056b2b9  68eca4b100                PUSH 0xb1a4ec
0056b2be  8bce                      MOV ECX,ESI
0056b2c0  e88bf2e9ff                CALL 0x0040a550
0056b2c5  84c0                      TEST AL,AL
0056b2c7  740e                      JZ 0x0056b2d7
0056b2c9  6a00                      PUSH 0x0
0056b2cb  6854bcb100                PUSH 0xb1bc54
0056b2d0  8bce                      MOV ECX,ESI
0056b2d2  e8a9f0e9ff                CALL 0x0040a380
0056b2d7  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
0056b2dd  8d4f78                    LEA ECX,[EDI + 0x78]
0056b2e0  0395e4feffff              ADD EDX,dword ptr [EBP + 0xfffffee4]
0056b2e6  899710040000              MOV dword ptr [EDI + 0x410],EDX
0056b2ec  e8bfc0e9ff                CALL 0x004073b0
0056b2f1  84c0                      TEST AL,AL
0056b2f3  0f84c90e0000              JZ 0x0056c1c2
0056b2f9  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
0056b2ff  83fa2d                    CMP EDX,0x2d
0056b302  0f8ec00e0000              JLE 0x0056c1c8
0056b308  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0056b312  c7871004000032000000      MOV dword ptr [EDI + 0x410],0x32
0056b31c  e9a70e0000                JMP 0x0056c1c8
0056b321  68eca4b100                PUSH 0xb1a4ec
0056b326  8d4f48                    LEA ECX,[EDI + 0x48]
0056b329  e822f2e9ff                CALL 0x0040a550
0056b32e  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0056b335  0f8c52020000              JL 0x0056b58d
0056b33b  84c0                      TEST AL,AL
0056b33d  740f                      JZ 0x0056b34e
0056b33f  6a00                      PUSH 0x0
0056b341  68c019b600                PUSH 0xb619c0
0056b346  8d4f48                    LEA ECX,[EDI + 0x48]
0056b349  e832f0e9ff                CALL 0x0040a380
0056b34e  68dc19b600                PUSH 0xb619dc
0056b353  8d4f48                    LEA ECX,[EDI + 0x48]
0056b356  e8d5fce9ff                CALL 0x0040b030
0056b35b  84c0                      TEST AL,AL
0056b35d  7419                      JZ 0x0056b378
0056b35f  f30f1085d0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed0]
0056b367  8bcf                      MOV ECX,EDI
0056b369  6a00                      PUSH 0x0
0056b36b  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0056b373  e848d5ffff                CALL 0x005688c0
0056b378  68d4d2b100                PUSH 0xb1d2d4
0056b37d  8d4f48                    LEA ECX,[EDI + 0x48]
0056b380  e8abfce9ff                CALL 0x0040b030
0056b385  84c0                      TEST AL,AL
0056b387  741e                      JZ 0x0056b3a7
0056b389  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056b391  51                        PUSH ECX
0056b392  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056b399  6a00                      PUSH 0x0
0056b39b  6a02                      PUSH 0x2
0056b39d  6874020000                PUSH 0x274
0056b3a2  e8c9b01400                CALL 0x006b6470
0056b3a7  68dcd2b100                PUSH 0xb1d2dc
0056b3ac  8d4f48                    LEA ECX,[EDI + 0x48]
0056b3af  e87cfce9ff                CALL 0x0040b030
0056b3b4  84c0                      TEST AL,AL
0056b3b6  7422                      JZ 0x0056b3da
0056b3b8  e8a33b1800                CALL 0x006eef60
0056b3bd  83e001                    AND EAX,0x1
0056b3c0  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
0056b3ca  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0056b3d0  c787b00b00000000f041      MOV dword ptr [EDI + 0xbb0],0x41f00000
0056b3da  68dcd2b100                PUSH 0xb1d2dc
0056b3df  8d4f48                    LEA ECX,[EDI + 0x48]
0056b3e2  e8a9fce9ff                CALL 0x0040b090
0056b3e7  84c0                      TEST AL,AL
0056b3e9  7510                      JNZ 0x0056b3fb
0056b3eb  8d4f78                    LEA ECX,[EDI + 0x78]
0056b3ee  e8bdbfe9ff                CALL 0x004073b0
0056b3f3  84c0                      TEST AL,AL
0056b3f5  0f844d010000              JZ 0x0056b548
0056b3fb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056b401  6a04                      PUSH 0x4
0056b403  e868821900                CALL 0x00703670
0056b408  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
0056b410  0f57d2                    XORPS XMM2,XMM2
0056b413  8bcf                      MOV ECX,EDI
0056b415  e846131400                CALL 0x006ac760
0056b41a  85c0                      TEST EAX,EAX
0056b41c  0f8426010000              JZ 0x0056b548
0056b422  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
0056b42a  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
0056b432  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0056b43a  e8213b1800                CALL 0x006eef60
0056b43f  660f6ec0                  MOVD XMM0,EAX
0056b443  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056b447  c1e81f                    SHR EAX,0x1f
0056b44a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0056b453  660f5ac8                  CVTPD2PS XMM1,XMM0
0056b457  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
0056b45f  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
0056b467  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0056b46f  f30f5c85d8feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffed8]
0056b477  f30f59c1                  MULSS XMM0,XMM1
0056b47b  f30f5885d8feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffed8]
0056b483  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
0056b48b  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
0056b493  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
0056b49b  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
0056b4a3  e8b83a1800                CALL 0x006eef60
0056b4a8  8d4d98                    LEA ECX,[EBP + -0x68]
0056b4ab  660f6ec0                  MOVD XMM0,EAX
0056b4af  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056b4b3  c1e81f                    SHR EAX,0x1f
0056b4b6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0056b4bf  660f5ac0                  CVTPD2PS XMM0,XMM0
0056b4c3  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0056b4cb  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0056b4d3  f30f5885bcfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffebc]
0056b4db  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
0056b4e3  e888bce9ff                CALL 0x00407170
0056b4e8  6800000200                PUSH 0x20000
0056b4ed  51                        PUSH ECX
0056b4ee  c704240050c347            MOV dword ptr [ESP],0x47c35000
0056b4f5  50                        PUSH EAX
0056b4f6  51                        PUSH ECX
0056b4f7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056b4fd  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
0056b503  c704240000c040            MOV dword ptr [ESP],0x40c00000
0056b50a  6a01                      PUSH 0x1
0056b50c  6a04                      PUSH 0x4
0056b50e  50                        PUSH EAX
0056b50f  e81c7e1900                CALL 0x00703330
0056b514  e8473a1800                CALL 0x006eef60
0056b519  33d2                      XOR EDX,EDX
0056b51b  b903000000                MOV ECX,0x3
0056b520  f7f1                      DIV ECX
0056b522  85d2                      TEST EDX,EDX
0056b524  7522                      JNZ 0x0056b548
0056b526  6840b6c700                PUSH 0xc7b640
0056b52b  68804ec300                PUSH 0xc34e80
0056b530  6840b6c700                PUSH 0xc7b640
0056b535  8d95b8feffff              LEA EDX,[EBP + 0xfffffeb8]
0056b53b  b902000000                MOV ECX,0x2
0056b540  e8abc71600                CALL 0x006d7cf0
0056b545  83c40c                    ADD ESP,0xc
0056b548  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0056b54e  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
0056b554  03c1                      ADD EAX,ECX
0056b556  898710040000              MOV dword ptr [EDI + 0x410],EAX
0056b55c  83f878                    CMP EAX,0x78
0056b55f  0f8e630c0000              JLE 0x0056c1c8
0056b565  6a00                      PUSH 0x0
0056b567  68101ab600                PUSH 0xb61a10
0056b56c  8d4f48                    LEA ECX,[EDI + 0x48]
0056b56f  e80ceee9ff                CALL 0x0040a380
0056b574  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0056b57e  c78710040000ffffffff      MOV dword ptr [EDI + 0x410],0xffffffff
0056b588  e9350c0000                JMP 0x0056c1c2
0056b58d  84c0                      TEST AL,AL
0056b58f  0f842d0c0000              JZ 0x0056c1c2
0056b595  8d4f48                    LEA ECX,[EDI + 0x48]
0056b598  e90eebffff                JMP 0x0056a0ab
0056b59d  68dcd2b100                PUSH 0xb1d2dc
0056b5a2  8d4f48                    LEA ECX,[EDI + 0x48]
0056b5a5  e886fae9ff                CALL 0x0040b030
0056b5aa  84c0                      TEST AL,AL
0056b5ac  0f84100c0000              JZ 0x0056c1c2
0056b5b2  8bcf                      MOV ECX,EDI
0056b5b4  e887321500                CALL 0x006be840
0056b5b9  8db73c030000              LEA ESI,[EDI + 0x33c]
0056b5bf  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0056b5c7  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
0056b5cb  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0056b5d3  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0056b5d8  0f28c2                    MOVAPS XMM0,XMM2
0056b5db  f30f1195b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM2
0056b5e3  f30f5905e49fba00          MULSS XMM0,dword ptr [0x00ba9fe4]
0056b5eb  f30f118d98feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM1
0056b5f3  f30f118dccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM1
0056b5fb  f30f58c1                  ADDSS XMM0,XMM1
0056b5ff  f30f1195c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM2
0056b607  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0056b60f  0f28c1                    MOVAPS XMM0,XMM1
0056b612  f30f59c1                  MULSS XMM0,XMM1
0056b616  0f28ca                    MOVAPS XMM1,XMM2
0056b619  f30f59ca                  MULSS XMM1,XMM2
0056b61d  f30f58c1                  ADDSS XMM0,XMM1
0056b621  e82aa4ecff                CALL 0x00435a50
0056b626  0f28c8                    MOVAPS XMM1,XMM0
0056b629  f30f1085d8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed8]
0056b631  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0056b639  0f2fc8                    COMISS XMM1,XMM0
0056b63c  762f                      JBE 0x0056b66d
0056b63e  f30f5cc8                  SUBSS XMM1,XMM0
0056b642  0f28c1                    MOVAPS XMM0,XMM1
0056b645  f30f5905e49fba00          MULSS XMM0,dword ptr [0x00ba9fe4]
0056b64d  f30f588d98feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffe98]
0056b655  f30f5885b0feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffeb0]
0056b65d  f30f118dccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM1
0056b665  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
0056b66d  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056b675  51                        PUSH ECX
0056b676  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056b67d  6a00                      PUSH 0x0
0056b67f  6a02                      PUSH 0x2
0056b681  68d5000000                PUSH 0xd5
0056b686  e8e5ad1400                CALL 0x006b6470
0056b68b  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056b693  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0056b699  50                        PUSH EAX
0056b69a  56                        PUSH ESI
0056b69b  8bcf                      MOV ECX,EDI
0056b69d  e88eb11400                CALL 0x006b6830
0056b6a2  e8b9381800                CALL 0x006eef60
0056b6a7  51                        PUSH ECX
0056b6a8  8bf0                      MOV ESI,EAX
0056b6aa  c7042400008041            MOV dword ptr [ESP],0x41800000
0056b6b1  8d45e4                    LEA EAX,[EBP + -0x1c]
0056b6b4  50                        PUSH EAX
0056b6b5  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0056b6bb  e8404a4a00                CALL 0x00a10100
0056b6c0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056b6c6  56                        PUSH ESI
0056b6c7  6a00                      PUSH 0x0
0056b6c9  57                        PUSH EDI
0056b6ca  50                        PUSH EAX
0056b6cb  8d873c030000              LEA EAX,[EDI + 0x33c]
0056b6d1  50                        PUSH EAX
0056b6d2  6a64                      PUSH 0x64
0056b6d4  6890030000                PUSH 0x390
0056b6d9  e842d4ebff                CALL 0x00428b20
0056b6de  51                        PUSH ECX
0056b6df  8bf0                      MOV ESI,EAX
0056b6e1  c7042400000040            MOV dword ptr [ESP],0x40000000
0056b6e8  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0056b6ee  50                        PUSH EAX
0056b6ef  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0056b6f5  e8064a4a00                CALL 0x00a10100
0056b6fa  57                        PUSH EDI
0056b6fb  8bce                      MOV ECX,ESI
0056b6fd  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0056b701  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0056b706  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
0056b70e  f30f118e38030000          MOVSS dword ptr [ESI + 0x338],XMM1
0056b716  e885db1300                CALL 0x006a92a0
0056b71b  56                        PUSH ESI
0056b71c  8bcf                      MOV ECX,EDI
0056b71e  e8fd541600                CALL 0x006d0c20
0056b723  8bcf                      MOV ECX,EDI
0056b725  e816311500                CALL 0x006be840
0056b72a  50                        PUSH EAX
0056b72b  8bce                      MOV ECX,ESI
0056b72d  e8eedb1300                CALL 0x006a9320
0056b732  8b06                      MOV EAX,dword ptr [ESI]
0056b734  8bce                      MOV ECX,ESI
0056b736  ff500c                    CALL dword ptr [EAX + 0xc]
0056b739  e979e9ffff                JMP 0x0056a0b7
0056b73e  68eca4b100                PUSH 0xb1a4ec
0056b743  8d4f48                    LEA ECX,[EDI + 0x48]
0056b746  e805eee9ff                CALL 0x0040a550
0056b74b  84c0                      TEST AL,AL
0056b74d  0f846f0a0000              JZ 0x0056c1c2
0056b753  6a00                      PUSH 0x0
0056b755  6854bcb100                PUSH 0xb1bc54
0056b75a  8d4f48                    LEA ECX,[EDI + 0x48]
0056b75d  e81eece9ff                CALL 0x0040a380
0056b762  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0056b76c  e9510a0000                JMP 0x0056c1c2
0056b771  8d4f48                    LEA ECX,[EDI + 0x48]
0056b774  68dcd2b100                PUSH 0xb1d2dc
0056b779  e8b2f8e9ff                CALL 0x0040b030
0056b77e  84c0                      TEST AL,AL
0056b780  0f848f040000              JZ 0x0056bc15
0056b786  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0056b78c  85c0                      TEST EAX,EAX
0056b78e  740e                      JZ 0x0056b79e
0056b790  83f801                    CMP EAX,0x1
0056b793  7409                      JZ 0x0056b79e
0056b795  83f803                    CMP EAX,0x3
0056b798  0f854a010000              JNZ 0x0056b8e8
0056b79e  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
0056b7a4  6a01                      PUSH 0x1
0056b7a6  e8e504eeff                CALL 0x0044bc90
0056b7ab  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
0056b7b1  833800                    CMP dword ptr [EAX],0x0
0056b7b4  7412                      JZ 0x0056b7c8
0056b7b6  6a01                      PUSH 0x1
0056b7b8  e8d304eeff                CALL 0x0044bc90
0056b7bd  8b08                      MOV ECX,dword ptr [EAX]
0056b7bf  8b01                      MOV EAX,dword ptr [ECX]
0056b7c1  ff5028                    CALL dword ptr [EAX + 0x28]
0056b7c4  6a01                      PUSH 0x1
0056b7c6  eb22                      JMP 0x0056b7ea
0056b7c8  6a02                      PUSH 0x2
0056b7ca  e8c104eeff                CALL 0x0044bc90
0056b7cf  833800                    CMP dword ptr [EAX],0x0
0056b7d2  742a                      JZ 0x0056b7fe
0056b7d4  6a02                      PUSH 0x2
0056b7d6  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
0056b7dc  e8af04eeff                CALL 0x0044bc90
0056b7e1  8b08                      MOV ECX,dword ptr [EAX]
0056b7e3  8b01                      MOV EAX,dword ptr [ECX]
0056b7e5  ff5028                    CALL dword ptr [EAX + 0x28]
0056b7e8  6a02                      PUSH 0x2
0056b7ea  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
0056b7f0  e89b04eeff                CALL 0x0044bc90
0056b7f5  33d2                      XOR EDX,EDX
0056b7f7  8bc8                      MOV ECX,EAX
0056b7f9  e852a31400                CALL 0x006b5b50
0056b7fe  f30f10874c030000          MOVSS XMM0,dword ptr [EDI + 0x34c]
0056b806  8d45e4                    LEA EAX,[EBP + -0x1c]
0056b809  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0056b811  68b8d4b100                PUSH 0xb1d4b8
0056b816  50                        PUSH EAX
0056b817  8bcf                      MOV ECX,EDI
0056b819  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0056b821  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0056b829  f30f588750030000          ADDSS XMM0,dword ptr [EDI + 0x350]
0056b831  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
0056b839  e8b2b21400                CALL 0x006b6af0
0056b83e  f30f108dd8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed8]
0056b846  ba09000000                MOV EDX,0x9
0056b84b  f30f1085b0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb0]
0056b853  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
0056b85b  f30f5808                  ADDSS XMM1,dword ptr [EAX]
0056b85f  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
0056b864  51                        PUSH ECX
0056b865  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056b86c  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0056b872  6840b6c700                PUSH 0xc7b640
0056b877  50                        PUSH EAX
0056b878  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0056b87e  8d8d84feffff              LEA ECX,[EBP + 0xfffffe84]
0056b884  83c060                    ADD EAX,0x60
0056b887  f30f118d84feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM1
0056b88f  57                        PUSH EDI
0056b890  50                        PUSH EAX
0056b891  f30f118588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM0
0056b899  e812791400                CALL 0x006b31b0
0056b89e  83c414                    ADD ESP,0x14
0056b8a1  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0056b8a7  8d9584feffff              LEA EDX,[EBP + 0xfffffe84]
0056b8ad  b904000000                MOV ECX,0x4
0056b8b2  6840b6c700                PUSH 0xc7b640
0056b8b7  50                        PUSH EAX
0056b8b8  6840b6c700                PUSH 0xc7b640
0056b8bd  e82ec41600                CALL 0x006d7cf0
0056b8c2  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056b8ca  83c408                    ADD ESP,0x8
0056b8cd  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056b8d4  6a00                      PUSH 0x0
0056b8d6  6a02                      PUSH 0x2
0056b8d8  688d000000                PUSH 0x8d
0056b8dd  e88eab1400                CALL 0x006b6470
0056b8e2  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0056b8e8  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0056b8ee  83f802                    CMP EAX,0x2
0056b8f1  0f8523010000              JNZ 0x0056ba1a
0056b8f7  f30f10874c030000          MOVSS XMM0,dword ptr [EDI + 0x34c]
0056b8ff  8d45e4                    LEA EAX,[EBP + -0x1c]
0056b902  f30f5801                  ADDSS XMM0,dword ptr [ECX]
0056b906  68b8d4b100                PUSH 0xb1d4b8
0056b90b  50                        PUSH EAX
0056b90c  c785a4feffff00000000      MOV dword ptr [EBP + 0xfffffea4],0x0
0056b916  c785a8feffff000020c1      MOV dword ptr [EBP + 0xfffffea8],0xc1200000
0056b920  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0056b928  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0056b92d  8bcf                      MOV ECX,EDI
0056b92f  f30f588750030000          ADDSS XMM0,dword ptr [EDI + 0x350]
0056b937  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
0056b93f  e8acb11400                CALL 0x006b6af0
0056b944  f30f108dd8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed8]
0056b94c  f30f1085b0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb0]
0056b954  6a00                      PUSH 0x0
0056b956  f30f5808                  ADDSS XMM1,dword ptr [EAX]
0056b95a  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
0056b95f  57                        PUSH EDI
0056b960  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0056b966  50                        PUSH EAX
0056b967  f30f5c0de49fba00          SUBSS XMM1,dword ptr [0x00ba9fe4]
0056b96f  f30f5c05c0adba00          SUBSS XMM0,dword ptr [0x00baadc0]
0056b977  6a2f                      PUSH 0x2f
0056b979  51                        PUSH ECX
0056b97a  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
0056b980  c704240000b442            MOV dword ptr [ESP],0x42b40000
0056b987  50                        PUSH EAX
0056b988  6a06                      PUSH 0x6
0056b98a  f30f118dc0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM1
0056b992  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
0056b99a  e871394000                CALL 0x0096f310
0056b99f  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0056b9a6  83c41c                    ADD ESP,0x1c
0056b9a9  8bf0                      MOV ESI,EAX
0056b9ab  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
0056b9b2  0f114598                  MOVUPS xmmword ptr [EBP + -0x68],XMM0
0056b9b6  8d4598                    LEA EAX,[EBP + -0x68]
0056b9b9  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
0056b9c0  0f2805f0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7f0]
0056b9c7  8b0e                      MOV ECX,dword ptr [ESI]
0056b9c9  6a01                      PUSH 0x1
0056b9cb  6a00                      PUSH 0x0
0056b9cd  68ff000000                PUSH 0xff
0056b9d2  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
0056b9d5  8bce                      MOV ECX,ESI
0056b9d7  6aff                      PUSH -0x1
0056b9d9  50                        PUSH EAX
0056b9da  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
0056b9de  c745c000000000            MOV dword ptr [EBP + -0x40],0x0
0056b9e5  ffd2                      CALL EDX
0056b9e7  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056b9ef  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0056b9f5  50                        PUSH EAX
0056b9f6  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
0056b9fc  c7865803000000007a44      MOV dword ptr [ESI + 0x358],0x447a0000
0056ba06  50                        PUSH EAX
0056ba07  8bcf                      MOV ECX,EDI
0056ba09  e822ae1400                CALL 0x006b6830
0056ba0e  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0056ba14  8bb58cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe8c]
0056ba1a  83f803                    CMP EAX,0x3
0056ba1d  0f85eb010000              JNZ 0x0056bc0e
0056ba23  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056ba2b  8d87e4010000              LEA EAX,[EDI + 0x1e4]
0056ba31  50                        PUSH EAX
0056ba32  8d873c030000              LEA EAX,[EDI + 0x33c]
0056ba38  8bcf                      MOV ECX,EDI
0056ba3a  50                        PUSH EAX
0056ba3b  e8f0ad1400                CALL 0x006b6830
0056ba40  8db7f00b0000              LEA ESI,[EDI + 0xbf0]
0056ba46  6a00                      PUSH 0x0
0056ba48  8bce                      MOV ECX,ESI
0056ba4a  e84102eeff                CALL 0x0044bc90
0056ba4f  833800                    CMP dword ptr [EAX],0x0
0056ba52  0f84c0000000              JZ 0x0056bb18
0056ba58  6a00                      PUSH 0x0
0056ba5a  8bce                      MOV ECX,ESI
0056ba5c  e82f02eeff                CALL 0x0044bc90
0056ba61  6a00                      PUSH 0x0
0056ba63  8b08                      MOV ECX,dword ptr [EAX]
0056ba65  e836d81300                CALL 0x006a92a0
0056ba6a  6a00                      PUSH 0x0
0056ba6c  8bce                      MOV ECX,ESI
0056ba6e  e81d02eeff                CALL 0x0044bc90
0056ba73  8d4f78                    LEA ECX,[EDI + 0x78]
0056ba76  8b30                      MOV ESI,dword ptr [EAX]
0056ba78  8d45d4                    LEA EAX,[EBP + -0x2c]
0056ba7b  50                        PUSH EAX
0056ba7c  e86f71eeff                CALL 0x00452bf0
0056ba81  6a00                      PUSH 0x0
0056ba83  50                        PUSH EAX
0056ba84  8d4e48                    LEA ECX,[ESI + 0x48]
0056ba87  c745fc05000000            MOV dword ptr [EBP + -0x4],0x5
0056ba8e  e8cde8e9ff                CALL 0x0040a360
0056ba93  8d4dd4                    LEA ECX,[EBP + -0x2c]
0056ba96  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0056ba9d  e89e15eaff                CALL 0x0040d040
0056baa2  6a00                      PUSH 0x0
0056baa4  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
0056baaa  e8e101eeff                CALL 0x0044bc90
0056baaf  8d4f48                    LEA ECX,[EDI + 0x48]
0056bab2  8b30                      MOV ESI,dword ptr [EAX]
0056bab4  e8c7ece9ff                CALL 0x0040a780
0056bab9  50                        PUSH EAX
0056baba  8d4e48                    LEA ECX,[ESI + 0x48]
0056babd  e85eece9ff                CALL 0x0040a720
0056bac2  f30f100d3c3dc300          MOVSS XMM1,dword ptr [0x00c33d3c]
0056baca  8db7f00b0000              LEA ESI,[EDI + 0xbf0]
0056bad0  f30f1005403dc300          MOVSS XMM0,dword ptr [0x00c33d40]
0056bad8  8bce                      MOV ECX,ESI
0056bada  f30f588f34030000          ADDSS XMM1,dword ptr [EDI + 0x334]
0056bae2  f30f588738030000          ADDSS XMM0,dword ptr [EDI + 0x338]
0056baea  6a00                      PUSH 0x0
0056baec  e89f01eeff                CALL 0x0044bc90
0056baf1  6a00                      PUSH 0x0
0056baf3  8bce                      MOV ECX,ESI
0056baf5  8b00                      MOV EAX,dword ptr [EAX]
0056baf7  f30f118834030000          MOVSS dword ptr [EAX + 0x334],XMM1
0056baff  f30f118038030000          MOVSS dword ptr [EAX + 0x338],XMM0
0056bb07  e88401eeff                CALL 0x0044bc90
0056bb0c  8b00                      MOV EAX,dword ptr [EAX]
0056bb0e  c780580300000000c842      MOV dword ptr [EAX + 0x358],0x42c80000
0056bb18  6aff                      PUSH -0x1
0056bb1a  6a00                      PUSH 0x0
0056bb1c  6a0a                      PUSH 0xa
0056bb1e  6890030000                PUSH 0x390
0056bb23  8bcf                      MOV ECX,EDI
0056bb25  e806541500                CALL 0x006c0f30
0056bb2a  6a00                      PUSH 0x0
0056bb2c  8bce                      MOV ECX,ESI
0056bb2e  e85d01eeff                CALL 0x0044bc90
0056bb33  33d2                      XOR EDX,EDX
0056bb35  8bc8                      MOV ECX,EAX
0056bb37  e814a01400                CALL 0x006b5b50
0056bb3c  6a00                      PUSH 0x0
0056bb3e  68c8e7b100                PUSH 0xb1e7c8
0056bb43  8d4f48                    LEA ECX,[EDI + 0x48]
0056bb46  e835e8e9ff                CALL 0x0040a380
0056bb4b  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
0056bb51  83a768010000ee            AND dword ptr [EDI + 0x168],0xffffffee
0056bb58  8b8d8cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe8c]
0056bb5e  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0056bb68  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0056bb72  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0056bb7c  898780030000              MOV dword ptr [EDI + 0x380],EAX
0056bb82  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0056bb88  c7876003000000000000      MOV dword ptr [EDI + 0x360],0x0
0056bb92  c7876403000000008041      MOV dword ptr [EDI + 0x364],0x41800000
0056bb9c  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0056bba6  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0056bbac  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0056bbb2  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
0056bbb9  c7874c03000000000000      MOV dword ptr [EDI + 0x34c],0x0
0056bbc3  c7875003000000007042      MOV dword ptr [EDI + 0x350],0x42700000
0056bbcd  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0056bbd5  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0056bbdd  8b89f8110000              MOV ECX,dword ptr [ECX + 0x11f8]
0056bbe3  50                        PUSH EAX
0056bbe4  f30f1185a4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM0
0056bbec  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0056bbf4  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
0056bbfc  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
0056bc04  e807913d00                CALL 0x00944d10
0056bc09  e94b0b0000                JMP 0x0056c759
0056bc0e  40                        INC EAX
0056bc0f  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0056bc15  83bfc00b000003            CMP dword ptr [EDI + 0xbc0],0x3
0056bc1c  0f856b050000              JNZ 0x0056c18d
0056bc22  6a00                      PUSH 0x0
0056bc24  6a02                      PUSH 0x2
0056bc26  8bcf                      MOV ECX,EDI
0056bc28  e8e30a1400                CALL 0x006ac710
0056bc2d  84c0                      TEST AL,AL
0056bc2f  0f8458050000              JZ 0x0056c18d
0056bc35  8b4610                    MOV EAX,dword ptr [ESI + 0x10]
0056bc38  48                        DEC EAX
0056bc39  c785dcfeffff01000000      MOV dword ptr [EBP + 0xfffffedc],0x1
0056bc43  83f801                    CMP EAX,0x1
0056bc46  0f8e41050000              JLE 0x0056c18d
0056bc4c  bf01000000                MOV EDI,0x1
0056bc51  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
0056bc54  32c0                      XOR AL,AL
0056bc56  8885e3feffff              MOV byte ptr [EBP + 0xfffffee3],AL
0056bc5c  ba01000000                MOV EDX,0x1
0056bc61  8995e8feffff              MOV dword ptr [EBP + 0xfffffee8],EDX
0056bc67  8d41ff                    LEA EAX,[ECX + -0x1]
0056bc6a  3bc2                      CMP EAX,EDX
0056bc6c  0f8ef6030000              JLE 0x0056c068
0056bc72  85d2                      TEST EDX,EDX
0056bc74  0f88e5030000              JS 0x0056c05f
0056bc7a  3bd1                      CMP EDX,ECX
0056bc7c  0f8ddd030000              JGE 0x0056c05f
0056bc82  85ff                      TEST EDI,EDI
0056bc84  0f88d5030000              JS 0x0056c05f
0056bc8a  3b7e10                    CMP EDI,dword ptr [ESI + 0x10]
0056bc8d  0f8dcc030000              JGE 0x0056c05f
0056bc93  0fafcf                    IMUL ECX,EDI
0056bc96  03ca                      ADD ECX,EDX
0056bc98  0f88c1030000              JS 0x0056c05f
0056bc9e  8b548e24                  MOV EDX,dword ptr [ESI + ECX*0x4 + 0x24]
0056bca2  8995ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EDX
0056bca8  85d2                      TEST EDX,EDX
0056bcaa  0f84af030000              JZ 0x0056c05f
0056bcb0  837a040f                  CMP dword ptr [EDX + 0x4],0xf
0056bcb4  0f85a5030000              JNZ 0x0056c05f
0056bcba  8d4d98                    LEA ECX,[EBP + -0x68]
0056bcbd  e8aeb4e9ff                CALL 0x00407170
0056bcc2  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
0056bcc8  8bf0                      MOV ESI,EAX
0056bcca  8b4224                    MOV EAX,dword ptr [EDX + 0x24]
0056bccd  99                        CDQ
0056bcce  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0056bcd6  8b8f00830100              MOV ECX,dword ptr [EDI + 0x18300]
0056bcdc  6a00                      PUSH 0x0
0056bcde  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
0056bce1  f7f9                      IDIV ECX
0056bce3  51                        PUSH ECX
0056bce4  c704240050c347            MOV dword ptr [ESP],0x47c35000
0056bceb  56                        PUSH ESI
0056bcec  51                        PUSH ECX
0056bced  660f6ec0                  MOVD XMM0,EAX
0056bcf1  8bcf                      MOV ECX,EDI
0056bcf3  660f6eca                  MOVD XMM1,EDX
0056bcf7  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0056bcfd  0f5bc9                    CVTDQ2PS XMM1,XMM1
0056bd00  c704240000c040            MOV dword ptr [ESP],0x40c00000
0056bd07  6a01                      PUSH 0x1
0056bd09  6a04                      PUSH 0x4
0056bd0b  50                        PUSH EAX
0056bd0c  0f5bc0                    CVTDQ2PS XMM0,XMM0
0056bd0f  f30f59ca                  MULSS XMM1,XMM2
0056bd13  f30f59c2                  MULSS XMM0,XMM2
0056bd17  f30f58ca                  ADDSS XMM1,XMM2
0056bd1b  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
0056bd23  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
0056bd2b  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
0056bd33  e8f8751900                CALL 0x00703330
0056bd38  e823321800                CALL 0x006eef60
0056bd3d  33d2                      XOR EDX,EDX
0056bd3f  b903000000                MOV ECX,0x3
0056bd44  f7f1                      DIV ECX
0056bd46  85d2                      TEST EDX,EDX
0056bd48  0f853a010000              JNZ 0x0056be88
0056bd4e  a17816c700                MOV EAX,[0x00c71678]
0056bd53  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0056bd5b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0056bd61  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
0056bd67  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
0056bd6a  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0056bd6d  99                        CDQ
0056bd6e  f7f9                      IDIV ECX
0056bd70  660f6ec2                  MOVD XMM0,EDX
0056bd74  0f5bc0                    CVTDQ2PS XMM0,XMM0
0056bd77  f30f59c1                  MULSS XMM0,XMM1
0056bd7b  f30f58c1                  ADDSS XMM0,XMM1
0056bd7f  f30f118580feffff          MOVSS dword ptr [EBP + 0xfffffe80],XMM0
0056bd87  660f6ec0                  MOVD XMM0,EAX
0056bd8b  0f5bc0                    CVTDQ2PS XMM0,XMM0
0056bd8e  f30f59c1                  MULSS XMM0,XMM1
0056bd92  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
0056bd9a  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
0056bda2  e8b9311800                CALL 0x006eef60
0056bda7  660f6ec0                  MOVD XMM0,EAX
0056bdab  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056bdaf  c1e81f                    SHR EAX,0x1f
0056bdb2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0056bdbb  660f5ac0                  CVTPD2PS XMM0,XMM0
0056bdbf  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0056bdc7  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0056bdcf  f30f58c0                  ADDSS XMM0,XMM0
0056bdd3  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
0056bddb  e84017ebff                CALL 0x0041d520
0056bde0  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
0056bde8  e873311800                CALL 0x006eef60
0056bded  660f6ec8                  MOVD XMM1,EAX
0056bdf1  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0056bdf5  c1e81f                    SHR EAX,0x1f
0056bdf8  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0056be01  660f5ac1                  CVTPD2PS XMM0,XMM1
0056be05  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0056be0d  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0056be15  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
0056be1d  f30f1085d8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed8]
0056be25  e81617ebff                CALL 0x0041d540
0056be2a  f30f109598feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe98]
0056be32  8d9574feffff              LEA EDX,[EBP + 0xfffffe74]
0056be38  f30f5985b0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffeb0]
0056be40  b902000000                MOV ECX,0x2
0056be45  6840b6c700                PUSH 0xc7b640
0056be4a  f30f5995b0feffff          MULSS XMM2,dword ptr [EBP + 0xfffffeb0]
0056be52  68804ec300                PUSH 0xc34e80
0056be57  f30f108dbcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffebc]
0056be5f  f30f588580feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe80]
0056be67  f30f58ca                  ADDSS XMM1,XMM2
0056be6b  6840b6c700                PUSH 0xc7b640
0056be70  f30f118574feffff          MOVSS dword ptr [EBP + 0xfffffe74],XMM0
0056be78  f30f118d78feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM1
0056be80  e86bbe1600                CALL 0x006d7cf0
0056be85  83c40c                    ADD ESP,0xc
0056be88  e8d3301800                CALL 0x006eef60
0056be8d  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
0056be93  50                        PUSH EAX
0056be94  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
0056be9a  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0056bea2  8b8f00830100              MOV ECX,dword ptr [EDI + 0x18300]
0056bea8  6a00                      PUSH 0x0
0056beaa  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0056bead  99                        CDQ
0056beae  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
0056beb1  f7f9                      IDIV ECX
0056beb3  ffb5b4feffff              PUSH dword ptr [EBP + 0xfffffeb4]
0056beb9  8bcf                      MOV ECX,EDI
0056bebb  6840b6c700                PUSH 0xc7b640
0056bec0  660f6ec0                  MOVD XMM0,EAX
0056bec4  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
0056beca  660f6eca                  MOVD XMM1,EDX
0056bece  0f5bc9                    CVTDQ2PS XMM1,XMM1
0056bed1  50                        PUSH EAX
0056bed2  6a07                      PUSH 0x7
0056bed4  68e8030000                PUSH 0x3e8
0056bed9  0f5bc0                    CVTDQ2PS XMM0,XMM0
0056bedc  f30f59ca                  MULSS XMM1,XMM2
0056bee0  f30f59c2                  MULSS XMM0,XMM2
0056bee4  f30f58ca                  ADDSS XMM1,XMM2
0056bee8  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
0056bef0  f30f118d64feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM1
0056bef8  f30f118568feffff          MOVSS dword ptr [EBP + 0xfffffe68],XMM0
0056bf00  e81bccebff                CALL 0x00428b20
0056bf05  8bf0                      MOV ESI,EAX
0056bf07  e854301800                CALL 0x006eef60
0056bf0c  8bbdb4feffff              MOV EDI,dword ptr [EBP + 0xfffffeb4]
0056bf12  8bce                      MOV ECX,ESI
0056bf14  6a01                      PUSH 0x1
0056bf16  6a00                      PUSH 0x0
0056bf18  660f6ec0                  MOVD XMM0,EAX
0056bf1c  81c7e4010000              ADD EDI,0x1e4
0056bf22  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056bf26  c1e81f                    SHR EAX,0x1f
0056bf29  68ff000000                PUSH 0xff
0056bf2e  6aff                      PUSH -0x1
0056bf30  57                        PUSH EDI
0056bf31  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0056bf3a  8b06                      MOV EAX,dword ptr [ESI]
0056bf3c  660f5ac8                  CVTPD2PS XMM1,XMM0
0056bf40  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0056bf48  f30f580d30a6ba00          ADDSS XMM1,dword ptr [0x00baa630]
0056bf50  0f28c1                    MOVAPS XMM0,XMM1
0056bf53  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0056bf5b  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0056bf63  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0056bf6b  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0056bf73  ff503c                    CALL dword ptr [EAX + 0x3c]
0056bf76  8b06                      MOV EAX,dword ptr [ESI]
0056bf78  8bce                      MOV ECX,ESI
0056bf7a  ff500c                    CALL dword ptr [EAX + 0xc]
0056bf7d  a17816c700                MOV EAX,[0x00c71678]
0056bf82  8bb5ecfeffff              MOV ESI,dword ptr [EBP + 0xfffffeec]
0056bf88  c785d8feffff01000000      MOV dword ptr [EBP + 0xfffffed8],0x1
0056bf92  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0056bf9a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0056bfa0  8b4624                    MOV EAX,dword ptr [ESI + 0x24]
0056bfa3  99                        CDQ
0056bfa4  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
0056bfa7  f7f9                      IDIV ECX
0056bfa9  51                        PUSH ECX
0056bfaa  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056bfb1  6840b6c700                PUSH 0xc7b640
0056bfb6  57                        PUSH EDI
0056bfb7  660f6ec0                  MOVD XMM0,EAX
0056bfbb  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
0056bfc1  660f6eca                  MOVD XMM1,EDX
0056bfc5  0f5bc9                    CVTDQ2PS XMM1,XMM1
0056bfc8  6a00                      PUSH 0x0
0056bfca  0f5bc0                    CVTDQ2PS XMM0,XMM0
0056bfcd  f30f59ca                  MULSS XMM1,XMM2
0056bfd1  f30f59c2                  MULSS XMM0,XMM2
0056bfd5  f30f58ca                  ADDSS XMM1,XMM2
0056bfd9  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
0056bfe1  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
0056bfe6  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0056bfeb  50                        PUSH EAX
0056bfec  0f28da                    MOVAPS XMM3,XMM2
0056bfef  8d4de4                    LEA ECX,[EBP + -0x1c]
0056bff2  ba02000000                MOV EDX,0x2
0056bff7  e8b4711400                CALL 0x006b31b0
0056bffc  8b4624                    MOV EAX,dword ptr [ESI + 0x24]
0056bfff  83c414                    ADD ESP,0x14
0056c002  8bb58cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe8c]
0056c008  3dbf010000                CMP EAX,0x1bf
0056c00d  7727                      JA 0x0056c036
0056c00f  8b4c8624                  MOV ECX,dword ptr [ESI + EAX*0x4 + 0x24]
0056c013  85c9                      TEST ECX,ECX
0056c015  741f                      JZ 0x0056c036
0056c017  83790401                  CMP dword ptr [ECX + 0x4],0x1
0056c01b  7419                      JZ 0x0056c036
0056c01d  c784866c07000084030000    MOV dword ptr [ESI + EAX*0x4 + 0x76c],0x384
0056c028  c744862400000000          MOV dword ptr [ESI + EAX*0x4 + 0x24],0x0
0056c030  8b01                      MOV EAX,dword ptr [ECX]
0056c032  6a01                      PUSH 0x1
0056c034  ff10                      CALL dword ptr [EAX]
0056c036  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
0056c039  8b95e8feffff              MOV EDX,dword ptr [EBP + 0xfffffee8]
0056c03f  42                        INC EDX
0056c040  c685e3feffff01            MOV byte ptr [EBP + 0xfffffee3],0x1
0056c047  8995e8feffff              MOV dword ptr [EBP + 0xfffffee8],EDX
0056c04d  8d41ff                    LEA EAX,[ECX + -0x1]
0056c050  3bd0                      CMP EDX,EAX
0056c052  7d2c                      JGE 0x0056c080
0056c054  8bbddcfeffff              MOV EDI,dword ptr [EBP + 0xfffffedc]
0056c05a  e913fcffff                JMP 0x0056bc72
0056c05f  80bde3feffff00            CMP byte ptr [EBP + 0xfffffee3],0x0
0056c066  7518                      JNZ 0x0056c080
0056c068  8b4610                    MOV EAX,dword ptr [ESI + 0x10]
0056c06b  47                        INC EDI
0056c06c  48                        DEC EAX
0056c06d  89bddcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDI
0056c073  3bf8                      CMP EDI,EAX
0056c075  0f8cd6fbffff              JL 0x0056bc51
0056c07b  e907010000                JMP 0x0056c187
0056c080  8bbddcfeffff              MOV EDI,dword ptr [EBP + 0xfffffedc]
0056c086  8bce                      MOV ECX,ESI
0056c088  57                        PUSH EDI
0056c089  6a00                      PUSH 0x0
0056c08b  e8d06d2a00                CALL 0x00812e60
0056c090  50                        PUSH EAX
0056c091  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0056c097  8bce                      MOV ECX,ESI
0056c099  50                        PUSH EAX
0056c09a  e8616e2a00                CALL 0x00812f00
0056c09f  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0056c0a7  51                        PUSH ECX
0056c0a8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056c0af  6a00                      PUSH 0x0
0056c0b1  6a02                      PUSH 0x2
0056c0b3  51                        PUSH ECX
0056c0b4  6a4d                      PUSH 0x4d
0056c0b6  e885a83e00                CALL 0x00956940
0056c0bb  6a00                      PUSH 0x0
0056c0bd  6a00                      PUSH 0x0
0056c0bf  6aff                      PUSH -0x1
0056c0c1  688c000000                PUSH 0x8c
0056c0c6  68e8030000                PUSH 0x3e8
0056c0cb  8d859cfeffff              LEA EAX,[EBP + 0xfffffe9c]
0056c0d1  8d8e18120000              LEA ECX,[ESI + 0x1218]
0056c0d7  50                        PUSH EAX
0056c0d8  e883eeeaff                CALL 0x0041af60
0056c0dd  c745fc06000000            MOV dword ptr [EBP + -0x4],0x6
0056c0e4  33c9                      XOR ECX,ECX
0056c0e6  8b95a8feffff              MOV EDX,dword ptr [EBP + 0xfffffea8]
0056c0ec  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
0056c0f2  85d2                      TEST EDX,EDX
0056c0f4  7476                      JZ 0x0056c16c
0056c0f6  8b85a0feffff              MOV EAX,dword ptr [EBP + 0xfffffea0]
0056c0fc  0f1f4000                  NOP dword ptr [EAX]
0056c100  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
0056c103  85c9                      TEST ECX,ECX
0056c105  7454                      JZ 0x0056c15b
0056c107  817928e8030000            CMP dword ptr [ECX + 0x28],0x3e8
0056c10e  754b                      JNZ 0x0056c15b
0056c110  8b4610                    MOV EAX,dword ptr [ESI + 0x10]
0056c113  48                        DEC EAX
0056c114  3bf8                      CMP EDI,EAX
0056c116  750d                      JNZ 0x0056c125
0056c118  8b01                      MOV EAX,dword ptr [ECX]
0056c11a  ff5028                    CALL dword ptr [EAX + 0x28]
0056c11d  8b95a8feffff              MOV EDX,dword ptr [EBP + 0xfffffea8]
0056c123  eb30                      JMP 0x0056c155
0056c125  f30f10813c030000          MOVSS XMM0,dword ptr [ECX + 0x33c]
0056c12d  f30f108940030000          MOVSS XMM1,dword ptr [ECX + 0x340]
0056c135  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0056c13d  f30f580d04a9ba00          ADDSS XMM1,dword ptr [0x00baa904]
0056c145  f30f11813c030000          MOVSS dword ptr [ECX + 0x33c],XMM0
0056c14d  f30f118940030000          MOVSS dword ptr [ECX + 0x340],XMM1
0056c155  8b85a0feffff              MOV EAX,dword ptr [EBP + 0xfffffea0]
0056c15b  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
0056c161  41                        INC ECX
0056c162  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
0056c168  3bca                      CMP ECX,EDX
0056c16a  7294                      JC 0x0056c100
0056c16c  6a00                      PUSH 0x0
0056c16e  8bce                      MOV ECX,ESI
0056c170  e81b622800                CALL 0x007f2390
0056c175  8d8d9cfeffff              LEA ECX,[EBP + 0xfffffe9c]
0056c17b  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0056c182  e829b4eaff                CALL 0x004175b0
0056c187  8bbdb4feffff              MOV EDI,dword ptr [EBP + 0xfffffeb4]
0056c18d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0056c191  742f                      JZ 0x0056c1c2
0056c193  68d4d2b100                PUSH 0xb1d2d4
0056c198  8d4f78                    LEA ECX,[EDI + 0x78]
0056c19b  e830ece9ff                CALL 0x0040add0
0056c1a0  84c0                      TEST AL,AL
0056c1a2  741e                      JZ 0x0056c1c2
0056c1a4  51                        PUSH ECX
0056c1a5  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056c1ac  6a00                      PUSH 0x0
0056c1ae  6a02                      PUSH 0x2
0056c1b0  68d4000000                PUSH 0xd4
0056c1b5  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056c1bd  e8aea21400                CALL 0x006b6470
0056c1c2  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
0056c1c8  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
0056c1ce  85c0                      TEST EAX,EAX
0056c1d0  0f8ed3020000              JLE 0x0056c4a9
0056c1d6  85c9                      TEST ECX,ECX
0056c1d8  0f8e72020000              JLE 0x0056c450
0056c1de  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
0056c1e6  f30f10257ca8ba00          MOVSS XMM4,dword ptr [0x00baa87c]
0056c1ee  6690                      NOP
0056c1f0  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
0056c1f6  0f28cc                    MOVAPS XMM1,XMM4
0056c1f9  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
0056c201  f30f581554a4ba00          ADDSS XMM2,dword ptr [0x00baa454]
0056c209  660f6ec0                  MOVD XMM0,EAX
0056c20d  0f5bc0                    CVTDQ2PS XMM0,XMM0
0056c210  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
0056c218  f30f59c3                  MULSS XMM0,XMM3
0056c21c  f30f5cc8                  SUBSS XMM1,XMM0
0056c220  f30f5f0da4a7ba00          MAXSS XMM1,dword ptr [0x00baa7a4]
0056c228  0f2fd1                    COMISS XMM2,XMM1
0056c22b  0f8210020000              JC 0x0056c441
0056c231  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
0056c239  bf0a000000                MOV EDI,0xa
0056c23e  f30f108d94feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe94]
0056c246  f30f5cc4                  SUBSS XMM0,XMM4
0056c24a  f30f58cc                  ADDSS XMM1,XMM4
0056c24e  8bb58cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe8c]
0056c254  c785ccfeffff00000000      MOV dword ptr [EBP + 0xfffffecc],0x0
0056c25e  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
0056c268  f30f5cc1                  SUBSS XMM0,XMM1
0056c26c  f30f118d98feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM1
0056c274  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
0056c27c  f30f108560feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe60]
0056c284  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
0056c28c  f30f118580feffff          MOVSS dword ptr [EBP + 0xfffffe80],XMM0
0056c294  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
0056c29c  f30f5e0504a9ba00          DIVSS XMM0,dword ptr [0x00baa904]
0056c2a4  f30f58c3                  ADDSS XMM0,XMM3
0056c2a8  f30f2cc0                  CVTTSS2SI EAX,XMM0
0056c2ac  8985e8feffff              MOV dword ptr [EBP + 0xfffffee8],EAX
0056c2b2  e8a92c1800                CALL 0x006eef60
0056c2b7  f30f108d80feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe80]
0056c2bf  f30f118dccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM1
0056c2c7  660f6ec0                  MOVD XMM0,EAX
0056c2cb  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056c2cf  c1e81f                    SHR EAX,0x1f
0056c2d2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0056c2db  660f5ac0                  CVTPD2PS XMM0,XMM0
0056c2df  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0056c2e7  f30f5985b0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffeb0]
0056c2ef  f30f588598feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe98]
0056c2f7  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
0056c2ff  f30f5c0504a9ba00          SUBSS XMM0,dword ptr [0x00baa904]
0056c307  f30f5e0504a9ba00          DIVSS XMM0,dword ptr [0x00baa904]
0056c30f  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0056c317  f30f2cc8                  CVTTSS2SI ECX,XMM0
0056c31b  85c9                      TEST ECX,ECX
0056c31d  7835                      JS 0x0056c354
0056c31f  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
0056c322  3bca                      CMP ECX,EDX
0056c324  7d2e                      JGE 0x0056c354
0056c326  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
0056c32c  85c0                      TEST EAX,EAX
0056c32e  7824                      JS 0x0056c354
0056c330  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
0056c333  7d1f                      JGE 0x0056c354
0056c335  0fafc2                    IMUL EAX,EDX
0056c338  03c1                      ADD EAX,ECX
0056c33a  3dbf010000                CMP EAX,0x1bf
0056c33f  7713                      JA 0x0056c354
0056c341  83bc866c07000064          CMP dword ptr [ESI + EAX*0x4 + 0x76c],0x64
0056c349  7e09                      JLE 0x0056c354
0056c34b  4f                        DEC EDI
0056c34c  85ff                      TEST EDI,EDI
0056c34e  0f8f5effffff              JG 0x0056c2b2
0056c354  6884030000                PUSH 0x384
0056c359  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
0056c35f  8bce                      MOV ECX,ESI
0056c361  50                        PUSH EAX
0056c362  e8191af6ff                CALL 0x004cdd80
0056c367  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0056c36d  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0056c373  c785e8feffff81020000      MOV dword ptr [EBP + 0xfffffee8],0x281
0056c37d  e8fea33e00                CALL 0x00956780
0056c382  83ec08                    SUB ESP,0x8
0056c385  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0056c38d  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056c394  6a00                      PUSH 0x0
0056c396  6a02                      PUSH 0x2
0056c398  51                        PUSH ECX
0056c399  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056c3a0  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0056c3a6  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
0056c3ac  e87f183c00                CALL 0x0092dc30
0056c3b1  e8aa2b1800                CALL 0x006eef60
0056c3b6  8bbdb4feffff              MOV EDI,dword ptr [EBP + 0xfffffeb4]
0056c3bc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056c3c2  50                        PUSH EAX
0056c3c3  6a00                      PUSH 0x0
0056c3c5  57                        PUSH EDI
0056c3c6  6840b6c700                PUSH 0xc7b640
0056c3cb  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
0056c3d1  50                        PUSH EAX
0056c3d2  6a14                      PUSH 0x14
0056c3d4  6890030000                PUSH 0x390
0056c3d9  e842c7ebff                CALL 0x00428b20
0056c3de  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
0056c3e6  8bc8                      MOV ECX,EAX
0056c3e8  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0056c3f0  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
0056c3f8  8b01                      MOV EAX,dword ptr [ECX]
0056c3fa  f30f118134030000          MOVSS dword ptr [ECX + 0x334],XMM0
0056c402  f30f5c0d04a9ba00          SUBSS XMM1,dword ptr [0x00baa904]
0056c40a  f30f118938030000          MOVSS dword ptr [ECX + 0x338],XMM1
0056c412  ff500c                    CALL dword ptr [EAX + 0xc]
0056c415  ff87c40b0000              INC dword ptr [EDI + 0xbc4]
0056c41b  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
0056c421  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
0056c429  f30f10257ca8ba00          MOVSS XMM4,dword ptr [0x00baa87c]
0056c431  8b8de4feffff              MOV ECX,dword ptr [EBP + 0xfffffee4]
0056c437  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0056c441  83e901                    SUB ECX,0x1
0056c444  898de4feffff              MOV dword ptr [EBP + 0xfffffee4],ECX
0056c44a  0f85a0fdffff              JNZ 0x0056c1f0
0056c450  83f823                    CMP EAX,0x23
0056c453  7c54                      JL 0x0056c4a9
0056c455  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0056c45b  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
0056c461  c787c40b0000ffffffff      MOV dword ptr [EDI + 0xbc4],0xffffffff
0056c46b  c785e8feffff75020000      MOV dword ptr [EBP + 0xfffffee8],0x275
0056c475  e806a33e00                CALL 0x00956780
0056c47a  83ec08                    SUB ESP,0x8
0056c47d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0056c485  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056c48c  6a00                      PUSH 0x0
0056c48e  6a02                      PUSH 0x2
0056c490  51                        PUSH ECX
0056c491  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056c498  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0056c49e  ffb5e8feffff              PUSH dword ptr [EBP + 0xfffffee8]
0056c4a4  e887173c00                CALL 0x0092dc30
0056c4a9  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0056c4b1  f30f1095d0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed0]
0056c4b9  0f2ec2                    UCOMISS XMM0,XMM2
0056c4bc  9f                        LAHF
0056c4bd  f6c444                    TEST AH,0x44
0056c4c0  7a6d                      JP 0x0056c52f
0056c4c2  f30f10857cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe7c]
0056c4ca  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0056c4d2  0f2ec2                    UCOMISS XMM0,XMM2
0056c4d5  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
0056c4dd  9f                        LAHF
0056c4de  f6c444                    TEST AH,0x44
0056c4e1  7a27                      JP 0x0056c50a
0056c4e3  68d81bb800                PUSH 0xb81bd8
0056c4e8  6a10                      PUSH 0x10
0056c4ea  e8d14d4a00                CALL 0x00a112c0
0056c4ef  f30f108decfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeec]
0056c4f7  83c408                    ADD ESP,0x8
0056c4fa  f30f1095d0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed0]
0056c502  f30f10857cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe7c]
0056c50a  f30f5cc8                  SUBSS XMM1,XMM0
0056c50e  f30f5cd0                  SUBSS XMM2,XMM0
0056c512  0f57c0                    XORPS XMM0,XMM0
0056c515  f30f5eca                  DIVSS XMM1,XMM2
0056c519  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056c521  f30f5fc8                  MAXSS XMM1,XMM0
0056c525  f30f5dca                  MINSS XMM1,XMM2
0056c529  f30f58c8                  ADDSS XMM1,XMM0
0056c52d  eb0b                      JMP 0x0056c53a
0056c52f  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056c537  0f57c9                    XORPS XMM1,XMM1
0056c53a  33f6                      XOR ESI,ESI
0056c53c  39b7c8000000              CMP dword ptr [EDI + 0xc8],ESI
0056c542  0f8686000000              JBE 0x0056c5ce
0056c548  0f28c1                    MOVAPS XMM0,XMM1
0056c54b  8d4748                    LEA EAX,[EDI + 0x48]
0056c54e  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0056c556  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0056c55d  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
0056c565  f30f5cd0                  SUBSS XMM2,XMM0
0056c569  f30f1195d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM2
0056c571  56                        PUSH ESI
0056c572  8bc8                      MOV ECX,EAX
0056c574  e8a7ece9ff                CALL 0x0040b220
0056c579  f30f1085d8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed8]
0056c581  8d4f48                    LEA ECX,[EDI + 0x48]
0056c584  56                        PUSH ESI
0056c585  f30f114048                MOVSS dword ptr [EAX + 0x48],XMM0
0056c58a  f30f11404c                MOVSS dword ptr [EAX + 0x4c],XMM0
0056c58f  f30f114050                MOVSS dword ptr [EAX + 0x50],XMM0
0056c594  c740540000803f            MOV dword ptr [EAX + 0x54],0x3f800000
0056c59b  e880ece9ff                CALL 0x0040b220
0056c5a0  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
0056c5a8  46                        INC ESI
0056c5a9  c740580000803f            MOV dword ptr [EAX + 0x58],0x3f800000
0056c5b0  c7405c0000803f            MOV dword ptr [EAX + 0x5c],0x3f800000
0056c5b7  c740600000803f            MOV dword ptr [EAX + 0x60],0x3f800000
0056c5be  f30f114064                MOVSS dword ptr [EAX + 0x64],XMM0
0056c5c3  8d4748                    LEA EAX,[EDI + 0x48]
0056c5c6  3bb7c8000000              CMP ESI,dword ptr [EDI + 0xc8]
0056c5cc  72a3                      JC 0x0056c571
0056c5ce  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0056c5d4  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
0056c5da  85c9                      TEST ECX,ECX
0056c5dc  0f84c5000000              JZ 0x0056c6a7
0056c5e2  8b8130030000              MOV EAX,dword ptr [ECX + 0x330]
0056c5e8  f30f10817c030000          MOVSS XMM0,dword ptr [ECX + 0x37c]
0056c5f0  f30f104844                MOVSS XMM1,dword ptr [EAX + 0x44]
0056c5f5  f30f580da4a7ba00          ADDSS XMM1,dword ptr [0x00baa7a4]
0056c5fd  0f2fc1                    COMISS XMM0,XMM1
0056c600  0f82a1000000              JC 0x0056c6a7
0056c606  0f57c0                    XORPS XMM0,XMM0
0056c609  0f2f8164030000            COMISS XMM0,dword ptr [ECX + 0x364]
0056c610  0f8691000000              JBE 0x0056c6a7
0056c616  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0056c61e  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
0056c626  0f2f8140030000            COMISS XMM0,dword ptr [ECX + 0x340]
0056c62d  7678                      JBE 0x0056c6a7
0056c62f  81792890030000            CMP dword ptr [ECX + 0x28],0x390
0056c636  7533                      JNZ 0x0056c66b
0056c638  83792c64                  CMP dword ptr [ECX + 0x2c],0x64
0056c63c  752d                      JNZ 0x0056c66b
0056c63e  57                        PUSH EDI
0056c63f  e8dc451600                CALL 0x006d0c20
0056c644  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0056c64a  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
0056c650  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
0056c657  7512                      JNZ 0x0056c66b
0056c659  51                        PUSH ECX
0056c65a  e8f1b6ffff                CALL 0x00567d50
0056c65f  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0056c665  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
0056c66b  8b01                      MOV EAX,dword ptr [ECX]
0056c66d  8d4d9c                    LEA ECX,[EBP + -0x64]
0056c670  57                        PUSH EDI
0056c671  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
0056c674  e8974cecff                CALL 0x00431310
0056c679  8b8dd0feffff              MOV ECX,dword ptr [EBP + 0xfffffed0]
0056c67f  8d459c                    LEA EAX,[EBP + -0x64]
0056c682  50                        PUSH EAX
0056c683  ffd6                      CALL ESI
0056c685  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
0056c68c  7419                      JZ 0x0056c6a7
0056c68e  6a00                      PUSH 0x0
0056c690  686811b600                PUSH 0xb61168
0056c695  8d4f48                    LEA ECX,[EDI + 0x48]
0056c698  e8e3dce9ff                CALL 0x0040a380
0056c69d  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
0056c6a7  8b97bc030000              MOV EDX,dword ptr [EDI + 0x3bc]
0056c6ad  8d8760030000              LEA EAX,[EDI + 0x360]
0056c6b3  85d2                      TEST EDX,EDX
0056c6b5  7439                      JZ 0x0056c6f0
0056c6b7  f30f108238030000          MOVSS XMM0,dword ptr [EDX + 0x338]
0056c6bf  33c9                      XOR ECX,ECX
0056c6c1  3b4f30                    CMP ECX,dword ptr [EDI + 0x30]
0056c6c4  be03000000                MOV ESI,0x3
0056c6c9  f30f108a34030000          MOVSS XMM1,dword ptr [EDX + 0x334]
0056c6d1  1bc9                      SBB ECX,ECX
0056c6d3  234f30                    AND ECX,dword ptr [EDI + 0x30]
0056c6d6  83f903                    CMP ECX,0x3
0056c6d9  0f42f1                    CMOVC ESI,ECX
0056c6dc  f30f5804f5383dc300        ADDSS XMM0,dword ptr [ESI*0x8 + 0xc33d38]
0056c6e5  f30f580cf5343dc300        ADDSS XMM1,dword ptr [ESI*0x8 + 0xc33d34]
0056c6ee  eb10                      JMP 0x0056c700
0056c6f0  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0056c6f8  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0056c700  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0056c708  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0056c710  8bc8                      MOV ECX,EAX
0056c712  f30f1108                  MOVSS dword ptr [EAX],XMM1
0056c716  f30f114104                MOVSS dword ptr [ECX + 0x4],XMM0
0056c71b  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0056c721  85c9                      TEST ECX,ECX
0056c723  7408                      JZ 0x0056c72d
0056c725  8b8988010000              MOV ECX,dword ptr [ECX + 0x188]
0056c72b  eb06                      JMP 0x0056c733
0056c72d  8b8f88010000              MOV ECX,dword ptr [EDI + 0x188]
0056c733  85c9                      TEST ECX,ECX
0056c735  7522                      JNZ 0x0056c759
0056c737  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0056c73b  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0056c743  f30f1100                  MOVSS dword ptr [EAX],XMM0
0056c747  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0056c74c  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0056c754  f30f114004                MOVSS dword ptr [EAX + 0x4],XMM0
0056c759  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0056c75c  64890d00000000            MOV dword ptr FS:[0x0],ECX
0056c763  59                        POP ECX
0056c764  5f                        POP EDI
0056c765  5e                        POP ESI
0056c766  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0056c769  33cd                      XOR ECX,EBP
0056c76b  e8bb295800                CALL 0x00aef12b
0056c770  8be5                      MOV ESP,EBP
0056c772  5d                        POP EBP
0056c773  8be3                      MOV ESP,EBX
0056c775  5b                        POP EBX
0056c776  c3                        RET
