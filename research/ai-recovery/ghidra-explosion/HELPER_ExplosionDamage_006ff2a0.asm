; J460 NPC AI 0x006ff2a0 HELPER_ExplosionDamage
; types=4
; identities=4.17.0
; entry=006ff2a0
006ff2a0  53                        PUSH EBX
006ff2a1  8bdc                      MOV EBX,ESP
006ff2a3  83ec08                    SUB ESP,0x8
006ff2a6  83e4f8                    AND ESP,0xfffffff8
006ff2a9  83c404                    ADD ESP,0x4
006ff2ac  55                        PUSH EBP
006ff2ad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
006ff2b0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
006ff2b4  8bec                      MOV EBP,ESP
006ff2b6  6aff                      PUSH -0x1
006ff2b8  68b9c2af00                PUSH 0xafc2b9
006ff2bd  64a100000000              MOV EAX,FS:[0x0]
006ff2c3  50                        PUSH EAX
006ff2c4  53                        PUSH EBX
006ff2c5  81ec20010000              SUB ESP,0x120
006ff2cb  56                        PUSH ESI
006ff2cc  57                        PUSH EDI
006ff2cd  a1b493bf00                MOV EAX,[0x00bf93b4]
006ff2d2  33c5                      XOR EAX,EBP
006ff2d4  50                        PUSH EAX
006ff2d5  8d45f4                    LEA EAX,[EBP + -0xc]
006ff2d8  64a300000000              MOV FS:[0x0],EAX
006ff2de  8bf9                      MOV EDI,ECX
006ff2e0  897dc8                    MOV dword ptr [EBP + -0x38],EDI
006ff2e3  8b7318                    MOV ESI,dword ptr [EBX + 0x18]
006ff2e6  85f6                      TEST ESI,ESI
006ff2e8  7411                      JZ 0x006ff2fb
006ff2ea  837e2801                  CMP dword ptr [ESI + 0x28],0x1
006ff2ee  7443                      JZ 0x006ff333
006ff2f0  8bce                      MOV ECX,ESI
006ff2f2  e8499efaff                CALL 0x006a9140
006ff2f7  85c0                      TEST EAX,EAX
006ff2f9  7538                      JNZ 0x006ff333
006ff2fb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ff301  6a3f                      PUSH 0x3f
006ff303  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
006ff309  e872f72b00                CALL 0x009bea80
006ff30e  83f802                    CMP EAX,0x2
006ff311  750f                      JNZ 0x006ff322
006ff313  f30f104310                MOVSS XMM0,dword ptr [EBX + 0x10]
006ff318  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
006ff320  eb16                      JMP 0x006ff338
006ff322  7e0f                      JLE 0x006ff333
006ff324  f30f104310                MOVSS XMM0,dword ptr [EBX + 0x10]
006ff329  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006ff331  eb05                      JMP 0x006ff338
006ff333  f30f104310                MOVSS XMM0,dword ptr [EBX + 0x10]
006ff338  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006ff33d  f30f10430c                MOVSS XMM0,dword ptr [EBX + 0xc]
006ff342  0f2f0564aaba00            COMISS XMM0,dword ptr [0x00baaa64]
006ff349  732b                      JNC 0x006ff376
006ff34b  689045c300                PUSH 0xc34590
006ff350  8d531c                    LEA EDX,[EBX + 0x1c]
006ff353  8d4d98                    LEA ECX,[EBP + -0x68]
006ff356  e8157ed1ff                CALL 0x00417170
006ff35b  83c404                    ADD ESP,0x4
006ff35e  8b08                      MOV ECX,dword ptr [EAX]
006ff360  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006ff363  7508                      JNZ 0x006ff36d
006ff365  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006ff368  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006ff36b  7421                      JZ 0x006ff38e
006ff36d  0f2f0508aaba00            COMISS XMM0,dword ptr [0x00baaa08]
006ff374  7218                      JC 0x006ff38e
006ff376  e8e5fbfeff                CALL 0x006eef60
006ff37b  33d2                      XOR EDX,EDX
006ff37d  b907000000                MOV ECX,0x7
006ff382  f7f1                      DIV ECX
006ff384  03d1                      ADD EDX,ECX
006ff386  8bcf                      MOV ECX,EDI
006ff388  52                        PUSH EDX
006ff389  e8e2420000                CALL 0x00703670
006ff38e  85f6                      TEST ESI,ESI
006ff390  7410                      JZ 0x006ff3a2
006ff392  837e2801                  CMP dword ptr [ESI + 0x28],0x1
006ff396  750a                      JNZ 0x006ff3a2
006ff398  807b3400                  CMP byte ptr [EBX + 0x34],0x0
006ff39c  c645e701                  MOV byte ptr [EBP + -0x19],0x1
006ff3a0  7404                      JZ 0x006ff3a6
006ff3a2  c645e700                  MOV byte ptr [EBP + -0x19],0x0
006ff3a6  8b8f00830100              MOV ECX,dword ptr [EDI + 0x18300]
006ff3ac  8d4588                    LEA EAX,[EBP + -0x78]
006ff3af  f30f105dcc                MOVSS XMM3,dword ptr [EBP + -0x34]
006ff3b4  81c118120000              ADD ECX,0x1218
006ff3ba  6aff                      PUSH -0x1
006ff3bc  ff7308                    PUSH dword ptr [EBX + 0x8]
006ff3bf  50                        PUSH EAX
006ff3c0  e8cbb3d1ff                CALL 0x0041a790
006ff3c5  33ff                      XOR EDI,EDI
006ff3c7  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
006ff3ce  0f57c9                    XORPS XMM1,XMM1
006ff3d1  897dd0                    MOV dword ptr [EBP + -0x30],EDI
006ff3d4  397d94                    CMP dword ptr [EBP + -0x6c],EDI
006ff3d7  0f8679090000              JBE 0x006ffd56
006ff3dd  0f1f00                    NOP dword ptr [EAX]
006ff3e0  8b458c                    MOV EAX,dword ptr [EBP + -0x74]
006ff3e3  8b3cb8                    MOV EDI,dword ptr [EAX + EDI*0x4]
006ff3e6  897de8                    MOV dword ptr [EBP + -0x18],EDI
006ff3e9  3bfe                      CMP EDI,ESI
006ff3eb  750a                      JNZ 0x006ff3f7
006ff3ed  807b3400                  CMP byte ptr [EBX + 0x34],0x0
006ff3f1  0f844f090000              JZ 0x006ffd46
006ff3f7  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006ff3fe  0f8542090000              JNZ 0x006ffd46
006ff404  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
006ff40b  0f8435090000              JZ 0x006ffd46
006ff411  83bf8401000004            CMP dword ptr [EDI + 0x184],0x4
006ff418  0f8428090000              JZ 0x006ffd46
006ff41e  f30f10877c030000          MOVSS XMM0,dword ptr [EDI + 0x37c]
006ff426  0f2ec1                    UCOMISS XMM0,XMM1
006ff429  9f                        LAHF
006ff42a  f6c444                    TEST AH,0x44
006ff42d  0f8b13090000              JNP 0x006ffd46
006ff433  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006ff436  83f802                    CMP EAX,0x2
006ff439  0f8407090000              JZ 0x006ffd46
006ff43f  83f809                    CMP EAX,0x9
006ff442  0f84fe080000              JZ 0x006ffd46
006ff448  85f6                      TEST ESI,ESI
006ff44a  741e                      JZ 0x006ff46a
006ff44c  3d12010000                CMP EAX,0x112
006ff451  7517                      JNZ 0x006ff46a
006ff453  394628                    CMP dword ptr [ESI + 0x28],EAX
006ff456  7512                      JNZ 0x006ff46a
006ff458  a17816c700                MOV EAX,[0x00c71678]
006ff45d  83b88465020017            CMP dword ptr [EAX + 0x26584],0x17
006ff464  0f85dc080000              JNZ 0x006ffd46
006ff46a  8b4308                    MOV EAX,dword ptr [EBX + 0x8]
006ff46d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
006ff475  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
006ff47a  f30f588770030000          ADDSS XMM0,dword ptr [EDI + 0x370]
006ff482  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
006ff486  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
006ff48e  f30f5c5004                SUBSS XMM2,dword ptr [EAX + 0x4]
006ff493  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
006ff498  0f28c1                    MOVAPS XMM0,XMM1
006ff49b  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
006ff4a0  f30f59c1                  MULSS XMM0,XMM1
006ff4a4  0f28ca                    MOVAPS XMM1,XMM2
006ff4a7  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
006ff4ac  f30f59ca                  MULSS XMM1,XMM2
006ff4b0  f30f58c1                  ADDSS XMM0,XMM1
006ff4b4  e89765d3ff                CALL 0x00435a50
006ff4b9  807b1400                  CMP byte ptr [EBX + 0x14],0x0
006ff4bd  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006ff4c2  743b                      JZ 0x006ff4ff
006ff4c4  a17816c700                MOV EAX,[0x00c71678]
006ff4c9  8b9740030000              MOV EDX,dword ptr [EDI + 0x340]
006ff4cf  6a00                      PUSH 0x0
006ff4d1  6a00                      PUSH 0x0
006ff4d3  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006ff4d9  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
006ff4df  6a01                      PUSH 0x1
006ff4e1  6a00                      PUSH 0x0
006ff4e3  8945c0                    MOV dword ptr [EBP + -0x40],EAX
006ff4e6  8d45c0                    LEA EAX,[EBP + -0x40]
006ff4e9  6a02                      PUSH 0x2
006ff4eb  50                        PUSH EAX
006ff4ec  ff7308                    PUSH dword ptr [EBX + 0x8]
006ff4ef  8955c4                    MOV dword ptr [EBP + -0x3c],EDX
006ff4f2  e8f9180f00                CALL 0x007f0df0
006ff4f7  84c0                      TEST AL,AL
006ff4f9  0f8444080000              JZ 0x006ffd43
006ff4ff  85f6                      TEST ESI,ESI
006ff501  7455                      JZ 0x006ff558
006ff503  837e2804                  CMP dword ptr [ESI + 0x28],0x4
006ff507  754f                      JNZ 0x006ff558
006ff509  6a00                      PUSH 0x0
006ff50b  6838d8c500                PUSH 0xc5d838
006ff510  68dcd5c500                PUSH 0xc5d5dc
006ff515  6a00                      PUSH 0x0
006ff517  56                        PUSH ESI
006ff518  e894133f00                CALL 0x00af08b1
006ff51d  83c414                    ADD ESP,0x14
006ff520  0f108838040000            MOVUPS XMM1,xmmword ptr [EAX + 0x438]
006ff527  660f7ec8                  MOVD EAX,XMM1
006ff52b  0f28c1                    MOVAPS XMM0,XMM1
006ff52e  660f73d804                PSRLDQ XMM0,0x4
006ff533  09431c                    OR dword ptr [EBX + 0x1c],EAX
006ff536  660f7ec0                  MOVD EAX,XMM0
006ff53a  0f28c1                    MOVAPS XMM0,XMM1
006ff53d  660f73d808                PSRLDQ XMM0,0x8
006ff542  660f73d90c                PSRLDQ XMM1,0xc
006ff547  094320                    OR dword ptr [EBX + 0x20],EAX
006ff54a  660f7ec0                  MOVD EAX,XMM0
006ff54e  094324                    OR dword ptr [EBX + 0x24],EAX
006ff551  660f7ec8                  MOVD EAX,XMM1
006ff555  094328                    OR dword ptr [EBX + 0x28],EAX
006ff558  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
006ff55d  0f57c9                    XORPS XMM1,XMM1
006ff560  0f2fc1                    COMISS XMM0,XMM1
006ff563  0f8690010000              JBE 0x006ff6f9
006ff569  817f28e8030000            CMP dword ptr [EDI + 0x28],0x3e8
006ff570  0f8483010000              JZ 0x006ff6f9
006ff576  6a00                      PUSH 0x0
006ff578  68dcd6c500                PUSH 0xc5d6dc
006ff57d  68dcd5c500                PUSH 0xc5d5dc
006ff582  6a00                      PUSH 0x0
006ff584  57                        PUSH EDI
006ff585  e827133f00                CALL 0x00af08b1
006ff58a  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
006ff590  83c414                    ADD ESP,0x14
006ff593  81e100000004              AND ECX,0x4000000
006ff599  83c900                    OR ECX,0x0
006ff59c  0f8554010000              JNZ 0x006ff6f6
006ff5a2  837f2801                  CMP dword ptr [EDI + 0x28],0x1
006ff5a6  753f                      JNZ 0x006ff5e7
006ff5a8  85c0                      TEST EAX,EAX
006ff5aa  7419                      JZ 0x006ff5c5
006ff5ac  f30f10807c030000          MOVSS XMM0,dword ptr [EAX + 0x37c]
006ff5b4  0f2e05c4abba00            UCOMISS XMM0,dword ptr [0x00baabc4]
006ff5bb  9f                        LAHF
006ff5bc  f6c444                    TEST AH,0x44
006ff5bf  0f8b31010000              JNP 0x006ff6f6
006ff5c5  85f6                      TEST ESI,ESI
006ff5c7  7414                      JZ 0x006ff5dd
006ff5c9  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
006ff5cf  2500000020                AND EAX,0x20000000
006ff5d4  83c800                    OR EAX,0x0
006ff5d7  0f8519010000              JNZ 0x006ff6f6
006ff5dd  807de700                  CMP byte ptr [EBP + -0x19],0x0
006ff5e1  0f850f010000              JNZ 0x006ff6f6
006ff5e7  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
006ff5ec  8d45dc                    LEA EAX,[EBP + -0x24]
006ff5ef  f30f105dd4                MOVSS XMM3,dword ptr [EBP + -0x2c]
006ff5f4  8d4dd8                    LEA ECX,[EBP + -0x28]
006ff5f7  f30f108f7c030000          MOVSS XMM1,dword ptr [EDI + 0x37c]
006ff5ff  f30f5cc3                  SUBSS XMM0,XMM3
006ff603  c745dc00007041            MOV dword ptr [EBP + -0x24],0x41700000
006ff60a  0f2f0554a8ba00            COMISS XMM0,dword ptr [0x00baa854]
006ff611  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
006ff616  0f46c1                    CMOVBE EAX,ECX
006ff619  0f2f0d7ca8ba00            COMISS XMM1,dword ptr [0x00baa87c]
006ff620  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006ff624  760e                      JBE 0x006ff634
006ff626  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
006ff62e  f30f59c4                  MULSS XMM0,XMM4
006ff632  eb3f                      JMP 0x006ff673
006ff634  0f2f0dd0a8ba00            COMISS XMM1,dword ptr [0x00baa8d0]
006ff63b  760a                      JBE 0x006ff647
006ff63d  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
006ff645  eb24                      JMP 0x006ff66b
006ff647  0f2f0d24a9ba00            COMISS XMM1,dword ptr [0x00baa924]
006ff64e  760a                      JBE 0x006ff65a
006ff650  f30f590578a0ba00          MULSS XMM0,dword ptr [0x00baa078]
006ff658  eb11                      JMP 0x006ff66b
006ff65a  0f2f0d44aaba00            COMISS XMM1,dword ptr [0x00baaa44]
006ff661  7608                      JBE 0x006ff66b
006ff663  f30f590554a0ba00          MULSS XMM0,dword ptr [0x00baa054]
006ff66b  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
006ff673  68e04ac300                PUSH 0xc34ae0
006ff678  8d531c                    LEA EDX,[EBX + 0x1c]
006ff67b  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
006ff681  e8ea7ad1ff                CALL 0x00417170
006ff686  83c404                    ADD ESP,0x4
006ff689  8b08                      MOV ECX,dword ptr [EAX]
006ff68b  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006ff68e  750c                      JNZ 0x006ff69c
006ff690  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006ff693  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006ff696  0f8488010000              JZ 0x006ff824
006ff69c  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006ff69f  83f801                    CMP EAX,0x1
006ff6a2  0f847f010000              JZ 0x006ff827
006ff6a8  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
006ff6ad  f30f58c0                  ADDSS XMM0,XMM0
006ff6b1  f30f1055ec                MOVSS XMM2,dword ptr [EBP + -0x14]
006ff6b6  f30f5ecb                  DIVSS XMM1,XMM3
006ff6ba  f30f5ed3                  DIVSS XMM2,XMM3
006ff6be  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
006ff6c6  f30f59c8                  MULSS XMM1,XMM0
006ff6ca  f30f59d0                  MULSS XMM2,XMM0
006ff6ce  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006ff6d6  f30f59dc                  MULSS XMM3,XMM4
006ff6da  f30f59c4                  MULSS XMM0,XMM4
006ff6de  f30f58cb                  ADDSS XMM1,XMM3
006ff6e2  f30f58d0                  ADDSS XMM2,XMM0
006ff6e6  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
006ff6ee  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
006ff6f6  0f57c9                    XORPS XMM1,XMM1
006ff6f9  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006ff6fc  83f801                    CMP EAX,0x1
006ff6ff  0f8451050000              JZ 0x006ffc56
006ff705  83f803                    CMP EAX,0x3
006ff708  0f8448050000              JZ 0x006ffc56
006ff70e  3de8030000                CMP EAX,0x3e8
006ff713  0f85aa030000              JNZ 0x006ffac3
006ff719  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006ff71c  83f815                    CMP EAX,0x15
006ff71f  0f8492030000              JZ 0x006ffab7
006ff725  83f821                    CMP EAX,0x21
006ff728  0f8489030000              JZ 0x006ffab7
006ff72e  83f83f                    CMP EAX,0x3f
006ff731  0f8480030000              JZ 0x006ffab7
006ff737  83f840                    CMP EAX,0x40
006ff73a  0f8477030000              JZ 0x006ffab7
006ff740  3d9f000000                CMP EAX,0x9f
006ff745  0f846c030000              JZ 0x006ffab7
006ff74b  3d9e000000                CMP EAX,0x9e
006ff750  0f8461030000              JZ 0x006ffab7
006ff756  83f84a                    CMP EAX,0x4a
006ff759  0f8564030000              JNZ 0x006ffac3
006ff75f  837f3000                  CMP dword ptr [EDI + 0x30],0x0
006ff763  0f85dd050000              JNZ 0x006ffd46
006ff769  a17816c700                MOV EAX,[0x00c71678]
006ff76e  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006ff774  8945e0                    MOV dword ptr [EBP + -0x20],EAX
006ff777  83780812                  CMP dword ptr [EAX + 0x8],0x12
006ff77b  0f85cf010000              JNZ 0x006ff950
006ff781  e8daf7feff                CALL 0x006eef60
006ff786  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ff78c  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006ff78f  8d45a8                    LEA EAX,[EBP + -0x58]
006ff792  50                        PUSH EAX
006ff793  8bb100830100              MOV ESI,dword ptr [ECX + 0x18300]
006ff799  8bce                      MOV ECX,ESI
006ff79b  e860351100                CALL 0x00812d00
006ff7a0  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
006ff7a8  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006ff7ac  f30f5cc2                  SUBSS XMM0,XMM2
006ff7b0  f30f5ec2                  DIVSS XMM0,XMM2
006ff7b4  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006ff7bc  f30f2cc8                  CVTTSS2SI ECX,XMM0
006ff7c0  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
006ff7c5  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
006ff7cd  f30f5ec2                  DIVSS XMM0,XMM2
006ff7d1  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006ff7d9  f30f2cc0                  CVTTSS2SI EAX,XMM0
006ff7dd  85c9                      TEST ECX,ECX
006ff7df  0f88f6000000              JS 0x006ff8db
006ff7e5  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
006ff7e8  3bca                      CMP ECX,EDX
006ff7ea  0f8deb000000              JGE 0x006ff8db
006ff7f0  85c0                      TEST EAX,EAX
006ff7f2  0f88e3000000              JS 0x006ff8db
006ff7f8  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
006ff7fb  0f8dda000000              JGE 0x006ff8db
006ff801  0fafc2                    IMUL EAX,EDX
006ff804  03c1                      ADD EAX,ECX
006ff806  8bf0                      MOV ESI,EAX
006ff808  8975ec                    MOV dword ptr [EBP + -0x14],ESI
006ff80b  0f88d0000000              JS 0x006ff8e1
006ff811  8975ec                    MOV dword ptr [EBP + -0x14],ESI
006ff814  3dc0010000                CMP EAX,0x1c0
006ff819  0f8cd1000000              JL 0x006ff8f0
006ff81f  e9bd000000                JMP 0x006ff8e1
006ff824  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
006ff827  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
006ff82c  f30f1055ec                MOVSS XMM2,dword ptr [EBP + -0x14]
006ff831  f30f5ecb                  DIVSS XMM1,XMM3
006ff835  f30f5ed3                  DIVSS XMM2,XMM3
006ff839  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
006ff841  f30f59c8                  MULSS XMM1,XMM0
006ff845  f30f59d0                  MULSS XMM2,XMM0
006ff849  83f801                    CMP EAX,0x1
006ff84c  0f857cfeffff              JNZ 0x006ff6ce
006ff852  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006ff85a  f30f59dc                  MULSS XMM3,XMM4
006ff85e  c745dc00002041            MOV dword ptr [EBP + -0x24],0x41200000
006ff865  f30f59c4                  MULSS XMM0,XMM4
006ff869  f30f58cb                  ADDSS XMM1,XMM3
006ff86d  f30f58d0                  ADDSS XMM2,XMM0
006ff871  0f28c1                    MOVAPS XMM0,XMM1
006ff874  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
006ff879  f30f59c1                  MULSS XMM0,XMM1
006ff87d  0f28ca                    MOVAPS XMM1,XMM2
006ff880  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
006ff885  f30f59ca                  MULSS XMM1,XMM2
006ff889  f30f58c1                  ADDSS XMM0,XMM1
006ff88d  e8be61d3ff                CALL 0x00435a50
006ff892  0f28c8                    MOVAPS XMM1,XMM0
006ff895  8d45dc                    LEA EAX,[EBP + -0x24]
006ff898  0f2f0d1ca8ba00            COMISS XMM1,dword ptr [0x00baa81c]
006ff89f  8d4dd8                    LEA ECX,[EBP + -0x28]
006ff8a2  0f57d2                    XORPS XMM2,XMM2
006ff8a5  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
006ff8aa  0f46c1                    CMOVBE EAX,ECX
006ff8ad  0f2fca                    COMISS XMM1,XMM2
006ff8b0  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006ff8b4  f30f1055ec                MOVSS XMM2,dword ptr [EBP + -0x14]
006ff8b9  7616                      JBE 0x006ff8d1
006ff8bb  f30f5ec1                  DIVSS XMM0,XMM1
006ff8bf  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
006ff8c4  f30f59c8                  MULSS XMM1,XMM0
006ff8c8  f30f59d0                  MULSS XMM2,XMM0
006ff8cc  e915feffff                JMP 0x006ff6e6
006ff8d1  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
006ff8d6  e90bfeffff                JMP 0x006ff6e6
006ff8db  83ceff                    OR ESI,0xffffffff
006ff8de  8975ec                    MOV dword ptr [EBP + -0x14],ESI
006ff8e1  6838c1b600                PUSH 0xb6c138
006ff8e6  6a10                      PUSH 0x10
006ff8e8  e8d3193100                CALL 0x00a112c0
006ff8ed  83c408                    ADD ESP,0x8
006ff8f0  81febf010000              CMP ESI,0x1bf
006ff8f6  0f87ac010000              JA 0x006ffaa8
006ff8fc  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
006ff8ff  56                        PUSH ESI
006ff900  e8fb0e0f00                CALL 0x007f0800
006ff905  85c0                      TEST EAX,EAX
006ff907  0f8f9b010000              JG 0x006ffaa8
006ff90d  6854010000                PUSH 0x154
006ff912  e8a9fb3000                CALL 0x00a0f4c0
006ff917  8bf0                      MOV ESI,EAX
006ff919  83c404                    ADD ESP,0x4
006ff91c  897584                    MOV dword ptr [EBP + -0x7c],ESI
006ff91f  c645fc12                  MOV byte ptr [EBP + -0x4],0x12
006ff923  85f6                      TEST ESI,ESI
006ff925  740f                      JZ 0x006ff936
006ff927  8bce                      MOV ECX,ESI
006ff929  e812a30000                CALL 0x00709c40
006ff92e  c70610dab700              MOV dword ptr [ESI],0xb7da10
006ff934  eb02                      JMP 0x006ff938
006ff936  33f6                      XOR ESI,ESI
006ff938  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
006ff93c  85f6                      TEST ESI,ESI
006ff93e  0f8464010000              JZ 0x006ffaa8
006ff944  c7460412000000            MOV dword ptr [ESI + 0x4],0x12
006ff94b  e91f010000                JMP 0x006ffa6f
006ff950  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ff956  e875bc0400                CALL 0x0074b5d0
006ff95b  84c0                      TEST AL,AL
006ff95d  0f8448010000              JZ 0x006ffaab
006ff963  a17816c700                MOV EAX,[0x00c71678]
006ff968  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006ff96e  8945e0                    MOV dword ptr [EBP + -0x20],EAX
006ff971  e8eaf5feff                CALL 0x006eef60
006ff976  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ff97c  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006ff97f  8d45a0                    LEA EAX,[EBP + -0x60]
006ff982  50                        PUSH EAX
006ff983  8bb100830100              MOV ESI,dword ptr [ECX + 0x18300]
006ff989  8bce                      MOV ECX,ESI
006ff98b  e870331100                CALL 0x00812d00
006ff990  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
006ff998  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006ff99c  f30f5cc2                  SUBSS XMM0,XMM2
006ff9a0  f30f5ec2                  DIVSS XMM0,XMM2
006ff9a4  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006ff9ac  f30f2cc8                  CVTTSS2SI ECX,XMM0
006ff9b0  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
006ff9b5  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
006ff9bd  f30f5ec2                  DIVSS XMM0,XMM2
006ff9c1  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006ff9c9  f30f2cc0                  CVTTSS2SI EAX,XMM0
006ff9cd  85c9                      TEST ECX,ECX
006ff9cf  7828                      JS 0x006ff9f9
006ff9d1  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
006ff9d4  3bca                      CMP ECX,EDX
006ff9d6  7d21                      JGE 0x006ff9f9
006ff9d8  85c0                      TEST EAX,EAX
006ff9da  781d                      JS 0x006ff9f9
006ff9dc  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
006ff9df  7d18                      JGE 0x006ff9f9
006ff9e1  0fafc2                    IMUL EAX,EDX
006ff9e4  03c1                      ADD EAX,ECX
006ff9e6  8bf0                      MOV ESI,EAX
006ff9e8  8975ec                    MOV dword ptr [EBP + -0x14],ESI
006ff9eb  7812                      JS 0x006ff9ff
006ff9ed  8975ec                    MOV dword ptr [EBP + -0x14],ESI
006ff9f0  3dc0010000                CMP EAX,0x1c0
006ff9f5  7c17                      JL 0x006ffa0e
006ff9f7  eb06                      JMP 0x006ff9ff
006ff9f9  83ceff                    OR ESI,0xffffffff
006ff9fc  8975ec                    MOV dword ptr [EBP + -0x14],ESI
006ff9ff  6838c1b600                PUSH 0xb6c138
006ffa04  6a10                      PUSH 0x10
006ffa06  e8b5183100                CALL 0x00a112c0
006ffa0b  83c408                    ADD ESP,0x8
006ffa0e  81febf010000              CMP ESI,0x1bf
006ffa14  0f878e000000              JA 0x006ffaa8
006ffa1a  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
006ffa1d  56                        PUSH ESI
006ffa1e  e8dd0d0f00                CALL 0x007f0800
006ffa23  85c0                      TEST EAX,EAX
006ffa25  0f8f7d000000              JG 0x006ffaa8
006ffa2b  6858010000                PUSH 0x158
006ffa30  e88bfa3000                CALL 0x00a0f4c0
006ffa35  8bf0                      MOV ESI,EAX
006ffa37  83c404                    ADD ESP,0x4
006ffa3a  8975bc                    MOV dword ptr [EBP + -0x44],ESI
006ffa3d  c645fc28                  MOV byte ptr [EBP + -0x4],0x28
006ffa41  85f6                      TEST ESI,ESI
006ffa43  7419                      JZ 0x006ffa5e
006ffa45  8bce                      MOV ECX,ESI
006ffa47  e8f4a10000                CALL 0x00709c40
006ffa4c  c7066c94b600              MOV dword ptr [ESI],0xb6946c
006ffa52  c7865401000000000000      MOV dword ptr [ESI + 0x154],0x0
006ffa5c  eb02                      JMP 0x006ffa60
006ffa5e  33f6                      XOR ESI,ESI
006ffa60  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
006ffa64  85f6                      TEST ESI,ESI
006ffa66  7440                      JZ 0x006ffaa8
006ffa68  c7460411000000            MOV dword ptr [ESI + 0x4],0x11
006ffa6f  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
006ffa72  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
006ffa75  894624                    MOV dword ptr [ESI + 0x24],EAX
006ffa78  8b4c8124                  MOV ECX,dword ptr [ECX + EAX*0x4 + 0x24]
006ffa7c  85c9                      TEST ECX,ECX
006ffa7e  7409                      JZ 0x006ffa89
006ffa80  8b01                      MOV EAX,dword ptr [ECX]
006ffa82  6a01                      PUSH 0x1
006ffa84  ff10                      CALL dword ptr [EAX]
006ffa86  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
006ffa89  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
006ffa8c  ff75dc                    PUSH dword ptr [EBP + -0x24]
006ffa8f  89748124                  MOV dword ptr [ECX + EAX*0x4 + 0x24],ESI
006ffa93  8bce                      MOV ECX,ESI
006ffa95  c7460800000000            MOV dword ptr [ESI + 0x8],0x0
006ffa9c  c7461800000000            MOV dword ptr [ESI + 0x18],0x0
006ffaa3  e808a30000                CALL 0x00709db0
006ffaa8  8b7318                    MOV ESI,dword ptr [EBX + 0x18]
006ffaab  c74730e8030000            MOV dword ptr [EDI + 0x30],0x3e8
006ffab2  e98c020000                JMP 0x006ffd43
006ffab7  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
006ffabe  e983020000                JMP 0x006ffd46
006ffac3  f30f104b0c                MOVSS XMM1,dword ptr [EBX + 0xc]
006ffac8  8d531c                    LEA EDX,[EBX + 0x1c]
006ffacb  689045c300                PUSH 0xc34590
006ffad0  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
006ffad6  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
006ffadb  e89076d1ff                CALL 0x00417170
006ffae0  83c404                    ADD ESP,0x4
006ffae3  8b08                      MOV ECX,dword ptr [EAX]
006ffae5  0b4804                    OR ECX,dword ptr [EAX + 0x4]
006ffae8  7508                      JNZ 0x006ffaf2
006ffaea  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
006ffaed  0b480c                    OR ECX,dword ptr [EAX + 0xc]
006ffaf0  7470                      JZ 0x006ffb62
006ffaf2  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
006ffaf5  b893244992                MOV EAX,0x92492493
006ffafa  2b4f08                    SUB ECX,dword ptr [EDI + 0x8]
006ffafd  33f6                      XOR ESI,ESI
006ffaff  f7e9                      IMUL ECX
006ffb01  03d1                      ADD EDX,ECX
006ffb03  c1fa05                    SAR EDX,0x5
006ffb06  8bc2                      MOV EAX,EDX
006ffb08  c1e81f                    SHR EAX,0x1f
006ffb0b  03c2                      ADD EAX,EDX
006ffb0d  8945d8                    MOV dword ptr [EBP + -0x28],EAX
006ffb10  7423                      JZ 0x006ffb35
006ffb12  8b4f08                    MOV ECX,dword ptr [EDI + 0x8]
006ffb15  8bd0                      MOV EDX,EAX
006ffb17  8b7b18                    MOV EDI,dword ptr [EBX + 0x18]
006ffb1a  83c134                    ADD ECX,0x34
006ffb1d  0f1f00                    NOP dword ptr [EAX]
006ffb20  3939                      CMP dword ptr [ECX],EDI
006ffb22  8d4601                    LEA EAX,[ESI + 0x1]
006ffb25  8d4938                    LEA ECX,[ECX + 0x38]
006ffb28  0f45c6                    CMOVNZ EAX,ESI
006ffb2b  8bf0                      MOV ESI,EAX
006ffb2d  83ea01                    SUB EDX,0x1
006ffb30  75ee                      JNZ 0x006ffb20
006ffb32  8b7de8                    MOV EDI,dword ptr [EBP + -0x18]
006ffb35  8bce                      MOV ECX,ESI
006ffb37  b801000000                MOV EAX,0x1
006ffb3c  d3e0                      SHL EAX,CL
006ffb3e  8b7318                    MOV ESI,dword ptr [EBX + 0x18]
006ffb41  660f6ec0                  MOVD XMM0,EAX
006ffb45  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006ffb49  c1e81f                    SHR EAX,0x1f
006ffb4c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006ffb55  660f5ac0                  CVTPD2PS XMM0,XMM0
006ffb59  f30f5ec8                  DIVSS XMM1,XMM0
006ffb5d  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
006ffb62  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
006ffb68  b9c04bc300                MOV ECX,0xc34bc0
006ffb6d  50                        PUSH EAX
006ffb6e  e88d26e9ff                CALL 0x00592200
006ffb73  50                        PUSH EAX
006ffb74  8d531c                    LEA EDX,[EBX + 0x1c]
006ffb77  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
006ffb7d  e8ee75d1ff                CALL 0x00417170
006ffb82  83c404                    ADD ESP,0x4
006ffb85  8d532c                    LEA EDX,[EBX + 0x2c]
006ffb88  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
006ffb8b  56                        PUSH ESI
006ffb8c  83ec14                    SUB ESP,0x14
006ffb8f  8bcc                      MOV ECX,ESP
006ffb91  51                        PUSH ECX
006ffb92  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
006ffb95  e856d6f7ff                CALL 0x0067d1f0
006ffb9a  8b07                      MOV EAX,dword ptr [EDI]
006ffb9c  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
006ffba2  83c41c                    ADD ESP,0x1c
006ffba5  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
006ffba8  ff7318                    PUSH dword ptr [EBX + 0x18]
006ffbab  e86017d3ff                CALL 0x00431310
006ffbb0  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
006ffbb5  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
006ffbbb  6a1e                      PUSH 0x1e
006ffbbd  50                        PUSH EAX
006ffbbe  ff7330                    PUSH dword ptr [EBX + 0x30]
006ffbc1  ff732c                    PUSH dword ptr [EBX + 0x2c]
006ffbc4  51                        PUSH ECX
006ffbc5  8bcf                      MOV ECX,EDI
006ffbc7  f30f110424                MOVSS dword ptr [ESP],XMM0
006ffbcc  ffd6                      CALL ESI
006ffbce  8b431c                    MOV EAX,dword ptr [EBX + 0x1c]
006ffbd1  0b4320                    OR EAX,dword ptr [EBX + 0x20]
006ffbd4  750c                      JNZ 0x006ffbe2
006ffbd6  8b4324                    MOV EAX,dword ptr [EBX + 0x24]
006ffbd9  0b4328                    OR EAX,dword ptr [EBX + 0x28]
006ffbdc  0f8481030000              JZ 0x006fff63
006ffbe2  8b7318                    MOV ESI,dword ptr [EBX + 0x18]
006ffbe5  85f6                      TEST ESI,ESI
006ffbe7  0f8456010000              JZ 0x006ffd43
006ffbed  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
006ffbf0  83f80a                    CMP EAX,0xa
006ffbf3  7c0b                      JL 0x006ffc00
006ffbf5  3de8030000                CMP EAX,0x3e8
006ffbfa  0f8c43010000              JL 0x006ffd43
006ffc00  6a00                      PUSH 0x0
006ffc02  8bcf                      MOV ECX,EDI
006ffc04  e857c9faff                CALL 0x006ac560
006ffc09  84c0                      TEST AL,AL
006ffc0b  0f8432010000              JZ 0x006ffd43
006ffc11  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
006ffc17  b9c04bc300                MOV ECX,0xc34bc0
006ffc1c  50                        PUSH EAX
006ffc1d  e8de25e9ff                CALL 0x00592200
006ffc22  50                        PUSH EAX
006ffc23  8d531c                    LEA EDX,[EBX + 0x1c]
006ffc26  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
006ffc2c  e83f75d1ff                CALL 0x00417170
006ffc31  c7042400006040            MOV dword ptr [ESP],0x40600000
006ffc38  8bcf                      MOV ECX,EDI
006ffc3a  56                        PUSH ESI
006ffc3b  83ec10                    SUB ESP,0x10
006ffc3e  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
006ffc41  8bd4                      MOV EDX,ESP
006ffc43  0f1102                    MOVUPS xmmword ptr [EDX],XMM0
006ffc46  8b5308                    MOV EDX,dword ptr [EBX + 0x8]
006ffc49  e812b3f7ff                CALL 0x0067af60
006ffc4e  83c418                    ADD ESP,0x18
006ffc51  e9ed000000                JMP 0x006ffd43
006ffc56  f30f10430c                MOVSS XMM0,dword ptr [EBX + 0xc]
006ffc5b  0f2fc1                    COMISS XMM0,XMM1
006ffc5e  0f86e2000000              JBE 0x006ffd46
006ffc64  56                        PUSH ESI
006ffc65  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
006ffc6b  e8a016d3ff                CALL 0x00431310
006ffc70  0fb645e7                  MOVZX EAX,byte ptr [EBP + -0x19]
006ffc74  03c0                      ADD EAX,EAX
006ffc76  098578ffffff              OR dword ptr [EBP + 0xffffff78],EAX
006ffc7c  0f2f05a8a9ba00            COMISS XMM0,dword ptr [0x00baa9a8]
006ffc83  7217                      JC 0x006ffc9c
006ffc85  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
006ffc8d  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
006ffc92  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006ffc9a  eb0d                      JMP 0x006ffca9
006ffc9c  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006ffca4  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
006ffca9  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
006ffcac  2500000010                AND EAX,0x10000000
006ffcb1  83c800                    OR EAX,0x0
006ffcb4  7405                      JZ 0x006ffcbb
006ffcb6  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
006ffcbb  a17816c700                MOV EAX,[0x00c71678]
006ffcc0  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
006ffcc7  7c0d                      JL 0x006ffcd6
006ffcc9  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
006ffcd1  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
006ffcd6  837f2801                  CMP dword ptr [EDI + 0x28],0x1
006ffcda  7546                      JNZ 0x006ffd22
006ffcdc  6a00                      PUSH 0x0
006ffcde  68dcd6c500                PUSH 0xc5d6dc
006ffce3  68dcd5c500                PUSH 0xc5d5dc
006ffce8  6a00                      PUSH 0x0
006ffcea  57                        PUSH EDI
006ffceb  e8c10b3f00                CALL 0x00af08b1
006ffcf0  0f108558ffffff            MOVUPS XMM0,xmmword ptr [EBP + 0xffffff58]
006ffcf7  83ec14                    SUB ESP,0x14
006ffcfa  8bcc                      MOV ECX,ESP
006ffcfc  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
006ffcff  0f108568ffffff            MOVUPS XMM0,xmmword ptr [EBP + 0xffffff68]
006ffd06  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
006ffd0a  f30f7e8578ffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff78]
006ffd12  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
006ffd17  8bc8                      MOV ECX,EAX
006ffd19  e812bd0d00                CALL 0x007dba30
006ffd1e  84c0                      TEST AL,AL
006ffd20  7521                      JNZ 0x006ffd43
006ffd22  8b07                      MOV EAX,dword ptr [EDI]
006ffd24  8d8d58ffffff              LEA ECX,[EBP + 0xffffff58]
006ffd2a  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
006ffd2f  6a1e                      PUSH 0x1e
006ffd31  51                        PUSH ECX
006ffd32  ff7330                    PUSH dword ptr [EBX + 0x30]
006ffd35  ff732c                    PUSH dword ptr [EBX + 0x2c]
006ffd38  51                        PUSH ECX
006ffd39  8bcf                      MOV ECX,EDI
006ffd3b  f30f110424                MOVSS dword ptr [ESP],XMM0
006ffd40  ff5020                    CALL dword ptr [EAX + 0x20]
006ffd43  0f57c9                    XORPS XMM1,XMM1
006ffd46  8b7dd0                    MOV EDI,dword ptr [EBP + -0x30]
006ffd49  47                        INC EDI
006ffd4a  897dd0                    MOV dword ptr [EBP + -0x30],EDI
006ffd4d  3b7d94                    CMP EDI,dword ptr [EBP + -0x6c]
006ffd50  0f828af6ffff              JC 0x006ff3e0
006ffd56  8d4db0                    LEA ECX,[EBP + -0x50]
006ffd59  e8c2c0ecff                CALL 0x005cbe20
006ffd5e  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
006ffd63  83ec08                    SUB ESP,0x8
006ffd66  c645fc2f                  MOV byte ptr [EBP + -0x4],0x2f
006ffd6a  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
006ffd72  f30f5e0504a9ba00          DIVSS XMM0,dword ptr [0x00baa904]
006ffd7a  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
006ffd7f  d945e8                    FLD dword ptr [EBP + -0x18]
006ffd82  dd1c24                    FSTP qword ptr [ESP]
006ffd85  e8870b3f00                CALL 0x00af0911
006ffd8a  f30f100da8a7ba00          MOVSS XMM1,dword ptr [0x00baa7a8]
006ffd92  83c408                    ADD ESP,0x8
006ffd95  d95de8                    FSTP dword ptr [EBP + -0x18]
006ffd98  d945e8                    FLD dword ptr [EBP + -0x18]
006ffd9b  d95de8                    FSTP dword ptr [EBP + -0x18]
006ffd9e  f30f2c7de8                CVTTSS2SI EDI,dword ptr [EBP + -0x18]
006ffda3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ffda9  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
006ffdaf  ff7308                    PUSH dword ptr [EBX + 0x8]
006ffdb2  897dd0                    MOV dword ptr [EBP + -0x30],EDI
006ffdb5  660f6ec7                  MOVD XMM0,EDI
006ffdb9  0f5bc0                    CVTDQ2PS XMM0,XMM0
006ffdbc  f30f5ec8                  DIVSS XMM1,XMM0
006ffdc0  0f57c0                    XORPS XMM0,XMM0
006ffdc3  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
006ffdc8  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
006ffdcd  e8be2e1100                CALL 0x00812c90
006ffdd2  8945e8                    MOV dword ptr [EBP + -0x18],EAX
006ffdd5  85c0                      TEST EAX,EAX
006ffdd7  7810                      JS 0x006ffde9
006ffdd9  8d45e8                    LEA EAX,[EBP + -0x18]
006ffddc  50                        PUSH EAX
006ffddd  8d45a0                    LEA EAX,[EBP + -0x60]
006ffde0  50                        PUSH EAX
006ffde1  8d4db0                    LEA ECX,[EBP + -0x50]
006ffde4  e8d747deff                CALL 0x004e45c0
006ffde9  85ff                      TEST EDI,EDI
006ffdeb  0f8ed5000000              JLE 0x006ffec6
006ffdf1  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
006ffdf6  e845d7d1ff                CALL 0x0041d540
006ffdfb  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
006ffe00  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
006ffe05  e816d7d1ff                CALL 0x0041d520
006ffe0a  f30f104dcc                MOVSS XMM1,dword ptr [EBP + -0x34]
006ffe0f  0f57d2                    XORPS XMM2,XMM2
006ffe12  0f2fca                    COMISS XMM1,XMM2
006ffe15  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
006ffe1a  0f57c0                    XORPS XMM0,XMM0
006ffe1d  0f8688000000              JBE 0x006ffeab
006ffe23  8b7b08                    MOV EDI,dword ptr [EBX + 0x8]
006ffe26  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
006ffe30  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
006ffe38  8d45e8                    LEA EAX,[EBP + -0x18]
006ffe3b  50                        PUSH EAX
006ffe3c  8d45a0                    LEA EAX,[EBP + -0x60]
006ffe3f  50                        PUSH EAX
006ffe40  f30f5dc1                  MINSS XMM0,XMM1
006ffe44  8d4dc0                    LEA ECX,[EBP + -0x40]
006ffe47  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
006ffe4c  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
006ffe51  e88a063100                CALL 0x00a104e0
006ffe56  50                        PUSH EAX
006ffe57  8d45b8                    LEA EAX,[EBP + -0x48]
006ffe5a  8bcf                      MOV ECX,EDI
006ffe5c  50                        PUSH EAX
006ffe5d  e8be053100                CALL 0x00a10420
006ffe62  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ffe68  8d45b8                    LEA EAX,[EBP + -0x48]
006ffe6b  50                        PUSH EAX
006ffe6c  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
006ffe72  e8a967d5ff                CALL 0x00456620
006ffe77  8bf0                      MOV ESI,EAX
006ffe79  85f6                      TEST ESI,ESI
006ffe7b  741c                      JZ 0x006ffe99
006ffe7d  8b4e24                    MOV ECX,dword ptr [ESI + 0x24]
006ffe80  8d45e8                    LEA EAX,[EBP + -0x18]
006ffe83  50                        PUSH EAX
006ffe84  8d45a8                    LEA EAX,[EBP + -0x58]
006ffe87  894de8                    MOV dword ptr [EBP + -0x18],ECX
006ffe8a  50                        PUSH EAX
006ffe8b  8d4db0                    LEA ECX,[EBP + -0x50]
006ffe8e  e82d47deff                CALL 0x004e45c0
006ffe93  837e0403                  CMP dword ptr [ESI + 0x4],0x3
006ffe97  740f                      JZ 0x006ffea8
006ffe99  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
006ffe9e  f30f104dcc                MOVSS XMM1,dword ptr [EBP + -0x34]
006ffea3  0f2fc8                    COMISS XMM1,XMM0
006ffea6  7788                      JA 0x006ffe30
006ffea8  8b7dd0                    MOV EDI,dword ptr [EBP + -0x30]
006ffeab  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
006ffeb0  83ef01                    SUB EDI,0x1
006ffeb3  f30f5845d8                ADDSS XMM0,dword ptr [EBP + -0x28]
006ffeb8  897dd0                    MOV dword ptr [EBP + -0x30],EDI
006ffebb  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
006ffec0  0f8530ffffff              JNZ 0x006ffdf6
006ffec6  8b45b0                    MOV EAX,dword ptr [EBP + -0x50]
006ffec9  8b30                      MOV ESI,dword ptr [EAX]
006ffecb  8975d4                    MOV dword ptr [EBP + -0x2c],ESI
006ffece  3bf0                      CMP ESI,EAX
006ffed0  0f8458010000              JZ 0x0070002e
006ffed6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
006ffee0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006ffee6  8d45b8                    LEA EAX,[EBP + -0x48]
006ffee9  ff7610                    PUSH dword ptr [ESI + 0x10]
006ffeec  50                        PUSH EAX
006ffeed  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
006ffef3  e808301100                CALL 0x00812f00
006ffef8  6a00                      PUSH 0x0
006ffefa  6a00                      PUSH 0x0
006ffefc  6a00                      PUSH 0x0
006ffefe  6a00                      PUSH 0x0
006fff00  6a02                      PUSH 0x2
006fff02  8d45b8                    LEA EAX,[EBP + -0x48]
006fff05  50                        PUSH EAX
006fff06  8b45c8                    MOV EAX,dword ptr [EBP + -0x38]
006fff09  ff7308                    PUSH dword ptr [EBX + 0x8]
006fff0c  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006fff12  e8d90e0f00                CALL 0x007f0df0
006fff17  84c0                      TEST AL,AL
006fff19  0f84fb000000              JZ 0x0070001a
006fff1f  8b45c8                    MOV EAX,dword ptr [EBP + -0x38]
006fff22  8b7e10                    MOV EDI,dword ptr [ESI + 0x10]
006fff25  57                        PUSH EDI
006fff26  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006fff2c  e8cf080f00                CALL 0x007f0800
006fff31  8945e8                    MOV dword ptr [EBP + -0x18],EAX
006fff34  81ffbf010000              CMP EDI,0x1bf
006fff3a  772f                      JA 0x006fff6b
006fff3c  8b45c8                    MOV EAX,dword ptr [EBP + -0x38]
006fff3f  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
006fff45  8b7cb924                  MOV EDI,dword ptr [ECX + EDI*0x4 + 0x24]
006fff49  897dd0                    MOV dword ptr [EBP + -0x30],EDI
006fff4c  85ff                      TEST EDI,EDI
006fff4e  7422                      JZ 0x006fff72
006fff50  837f040b                  CMP dword ptr [EDI + 0x4],0xb
006fff54  751c                      JNZ 0x006fff72
006fff56  8bcf                      MOV ECX,EDI
006fff58  e873200100                CALL 0x00711fd0
006fff5d  84c0                      TEST AL,AL
006fff5f  7544                      JNZ 0x006fffa5
006fff61  eb0f                      JMP 0x006fff72
006fff63  8b7318                    MOV ESI,dword ptr [EBX + 0x18]
006fff66  e9d8fdffff                JMP 0x006ffd43
006fff6b  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
006fff72  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
006fff75  ff7318                    PUSH dword ptr [EBX + 0x18]
006fff78  8bb900830100              MOV EDI,dword ptr [ECX + 0x18300]
006fff7e  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
006fff84  e88713d3ff                CALL 0x00431310
006fff89  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
006fff8f  8bcf                      MOV ECX,EDI
006fff91  50                        PUSH EAX
006fff92  6a00                      PUSH 0x0
006fff94  6a00                      PUSH 0x0
006fff96  ff7610                    PUSH dword ptr [ESI + 0x10]
006fff99  e8523c1100                CALL 0x00813bf0
006fff9e  84c0                      TEST AL,AL
006fffa0  7478                      JZ 0x0070001a
006fffa2  8b7dd0                    MOV EDI,dword ptr [EBP + -0x30]
006fffa5  837de803                  CMP dword ptr [EBP + -0x18],0x3
006fffa9  756f                      JNZ 0x0070001a
006fffab  ff7308                    PUSH dword ptr [EBX + 0x8]
006fffae  8d45a0                    LEA EAX,[EBP + -0x60]
006fffb1  50                        PUSH EAX
006fffb2  8d4db8                    LEA ECX,[EBP + -0x48]
006fffb5  e8c6043100                CALL 0x00a10480
006fffba  8bd0                      MOV EDX,EAX
006fffbc  8d4dc0                    LEA ECX,[EBP + -0x40]
006fffbf  e8acf1f7ff                CALL 0x0067f170
006fffc4  8d45e8                    LEA EAX,[EBP + -0x18]
006fffc7  c745e800002042            MOV dword ptr [EBP + -0x18],0x42200000
006fffce  50                        PUSH EAX
006fffcf  8d45a8                    LEA EAX,[EBP + -0x58]
006fffd2  50                        PUSH EAX
006fffd3  e808053100                CALL 0x00a104e0
006fffd8  50                        PUSH EAX
006fffd9  8d4580                    LEA EAX,[EBP + -0x80]
006fffdc  50                        PUSH EAX
006fffdd  8d4db8                    LEA ECX,[EBP + -0x48]
006fffe0  e83b043100                CALL 0x00a10420
006fffe5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006fffeb  50                        PUSH EAX
006fffec  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
006ffff2  e8992c1100                CALL 0x00812c90
006ffff7  85c0                      TEST EAX,EAX
006ffff9  781f                      JS 0x0070001a
006ffffb  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
006ffffe  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00700004  3dc0010000                CMP EAX,0x1c0
00700009  7d06                      JGE 0x00700011
0070000b  8b448124                  MOV EAX,dword ptr [ECX + EAX*0x4 + 0x24]
0070000f  eb02                      JMP 0x00700013
00700011  33c0                      XOR EAX,EAX
00700013  57                        PUSH EDI
00700014  50                        PUSH EAX
00700015  e8c6e61100                CALL 0x0081e6e0
0070001a  8d4dd4                    LEA ECX,[EBP + -0x2c]
0070001d  e85e4ad1ff                CALL 0x00414a80
00700022  8b75d4                    MOV ESI,dword ptr [EBP + -0x2c]
00700025  3b75b0                    CMP ESI,dword ptr [EBP + -0x50]
00700028  0f85b2feffff              JNZ 0x006ffee0
0070002e  8d4db0                    LEA ECX,[EBP + -0x50]
00700031  e8ea43d2ff                CALL 0x00424420
00700036  8d4d88                    LEA ECX,[EBP + -0x78]
00700039  e87275d1ff                CALL 0x004175b0
0070003e  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00700041  64890d00000000            MOV dword ptr FS:[0x0],ECX
00700048  59                        POP ECX
00700049  5f                        POP EDI
0070004a  5e                        POP ESI
0070004b  8be5                      MOV ESP,EBP
0070004d  5d                        POP EBP
0070004e  8be3                      MOV ESP,EBX
00700050  5b                        POP EBX
00700051  c23000                    RET 0x30
