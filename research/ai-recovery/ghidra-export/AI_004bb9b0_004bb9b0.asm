; J460 NPC AI 0x004bb9b0 AI_004bb9b0
; types=967
; identities=967.0.0
; entry=004bb9b0
004bb9b0  55                        PUSH EBP
004bb9b1  8bec                      MOV EBP,ESP
004bb9b3  83ec1c                    SUB ESP,0x1c
004bb9b6  53                        PUSH EBX
004bb9b7  56                        PUSH ESI
004bb9b8  57                        PUSH EDI
004bb9b9  8bf9                      MOV EDI,ECX
004bb9bb  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004bb9c1  83e800                    SUB EAX,0x0
004bb9c4  0f84c3030000              JZ 0x004bbd8d
004bb9ca  83e803                    SUB EAX,0x3
004bb9cd  0f8417010000              JZ 0x004bbaea
004bb9d3  83e801                    SUB EAX,0x1
004bb9d6  0f8514040000              JNZ 0x004bbdf0
004bb9dc  39477c                    CMP dword ptr [EDI + 0x7c],EAX
004bb9df  7408                      JZ 0x004bb9e9
004bb9e1  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004bb9e7  750f                      JNZ 0x004bb9f8
004bb9e9  6a00                      PUSH 0x0
004bb9eb  68e0fdb500                PUSH 0xb5fde0
004bb9f0  8d4f48                    LEA ECX,[EDI + 0x48]
004bb9f3  e888e9f4ff                CALL 0x0040a380
004bb9f8  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004bb9fe  85c0                      TEST EAX,EAX
004bba00  0f8eea030000              JLE 0x004bbdf0
004bba06  83c0ff                    ADD EAX,-0x1
004bba09  898710040000              MOV dword ptr [EDI + 0x410],EAX
004bba0f  0f85db030000              JNZ 0x004bbdf0
004bba15  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
004bba1c  0f85b9000000              JNZ 0x004bbadb
004bba22  8b5f7c                    MOV EBX,dword ptr [EDI + 0x7c]
004bba25  85db                      TEST EBX,EBX
004bba27  7445                      JZ 0x004bba6e
004bba29  837b1410                  CMP dword ptr [EBX + 0x14],0x10
004bba2d  8bc3                      MOV EAX,EBX
004bba2f  7202                      JC 0x004bba33
004bba31  8b03                      MOV EAX,dword ptr [EBX]
004bba33  b9f4fdb500                MOV ECX,0xb5fdf4
004bba38  8a10                      MOV DL,byte ptr [EAX]
004bba3a  3a11                      CMP DL,byte ptr [ECX]
004bba3c  751a                      JNZ 0x004bba58
004bba3e  84d2                      TEST DL,DL
004bba40  7412                      JZ 0x004bba54
004bba42  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004bba45  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004bba48  750e                      JNZ 0x004bba58
004bba4a  83c002                    ADD EAX,0x2
004bba4d  83c102                    ADD ECX,0x2
004bba50  84d2                      TEST DL,DL
004bba52  75e4                      JNZ 0x004bba38
004bba54  33c0                      XOR EAX,EAX
004bba56  eb05                      JMP 0x004bba5d
004bba58  1bc0                      SBB EAX,EAX
004bba5a  83c801                    OR EAX,0x1
004bba5d  85c0                      TEST EAX,EAX
004bba5f  750d                      JNZ 0x004bba6e
004bba61  384334                    CMP byte ptr [EBX + 0x34],AL
004bba64  742a                      JZ 0x004bba90
004bba66  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004bba6c  7522                      JNZ 0x004bba90
004bba6e  6a01                      PUSH 0x1
004bba70  68f4fdb500                PUSH 0xb5fdf4
004bba75  8d4f48                    LEA ECX,[EDI + 0x48]
004bba78  e853ebf4ff                CALL 0x0040a5d0
004bba7d  84c0                      TEST AL,AL
004bba7f  740f                      JZ 0x004bba90
004bba81  8d4f78                    LEA ECX,[EDI + 0x78]
004bba84  e827e7f4ff                CALL 0x0040a1b0
004bba89  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004bba90  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004bba96  8d4dec                    LEA ECX,[EBP + -0x14]
004bba99  c745ec23000000            MOV dword ptr [EBP + -0x14],0x23
004bbaa0  e8dbac4900                CALL 0x00956780
004bbaa5  83ec08                    SUB ESP,0x8
004bbaa8  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004bbab0  c704246666a63f            MOV dword ptr [ESP],0x3fa66666
004bbab7  6a00                      PUSH 0x0
004bbab9  6a0a                      PUSH 0xa
004bbabb  51                        PUSH ECX
004bbabc  c704240000003f            MOV dword ptr [ESP],0x3f000000
004bbac3  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004bbac9  ff75ec                    PUSH dword ptr [EBP + -0x14]
004bbacc  e85f214700                CALL 0x0092dc30
004bbad1  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004bbadb  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004bbae5  e906030000                JMP 0x004bbdf0
004bbaea  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004bbaee  8d4f48                    LEA ECX,[EDI + 0x48]
004bbaf1  7409                      JZ 0x004bbafc
004bbaf3  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004bbafa  750c                      JNZ 0x004bbb08
004bbafc  6a00                      PUSH 0x0
004bbafe  68d8fdb500                PUSH 0xb5fdd8
004bbb03  e878e8f4ff                CALL 0x0040a380
004bbb08  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
004bbb10  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004bbb18  f30f5cc3                  SUBSS XMM0,XMM3
004bbb1c  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
004bbb24  f30f102500aaba00          MOVSS XMM4,dword ptr [0x00baaa00]
004bbb2c  a17816c700                MOV EAX,[0x00c71678]
004bbb31  f30f5ec3                  DIVSS XMM0,XMM3
004bbb35  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004bbb3b  894dfc                    MOV dword ptr [EBP + -0x4],ECX
004bbb3e  f30f58c2                  ADDSS XMM0,XMM2
004bbb42  f30f2cd0                  CVTTSS2SI EDX,XMM0
004bbb46  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004bbb4e  f30f5cc4                  SUBSS XMM0,XMM4
004bbb52  f30f5ec3                  DIVSS XMM0,XMM3
004bbb56  f30f58c2                  ADDSS XMM0,XMM2
004bbb5a  f30f2cc0                  CVTTSS2SI EAX,XMM0
004bbb5e  85d2                      TEST EDX,EDX
004bbb60  781a                      JS 0x004bbb7c
004bbb62  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
004bbb65  3bd6                      CMP EDX,ESI
004bbb67  7d13                      JGE 0x004bbb7c
004bbb69  85c0                      TEST EAX,EAX
004bbb6b  780f                      JS 0x004bbb7c
004bbb6d  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
004bbb70  7d0a                      JGE 0x004bbb7c
004bbb72  0faff0                    IMUL ESI,EAX
004bbb75  03f2                      ADD ESI,EDX
004bbb77  8975f8                    MOV dword ptr [EBP + -0x8],ESI
004bbb7a  eb07                      JMP 0x004bbb83
004bbb7c  c745f8ffffffff            MOV dword ptr [EBP + -0x8],0xffffffff
004bbb83  33d2                      XOR EDX,EDX
004bbb85  8955ec                    MOV dword ptr [EBP + -0x14],EDX
004bbb88  399164120000              CMP dword ptr [ECX + 0x1264],EDX
004bbb8e  0f865c020000              JBE 0x004bbdf0
004bbb94  8b815c120000              MOV EAX,dword ptr [ECX + 0x125c]
004bbb9a  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
004bbb9d  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
004bbba0  817828c5030000            CMP dword ptr [EAX + 0x28],0x3c5
004bbba7  0f85c9010000              JNZ 0x004bbd76
004bbbad  83b8640b000004            CMP dword ptr [EAX + 0xb64],0x4
004bbbb4  0f85bc010000              JNZ 0x004bbd76
004bbbba  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004bbbc2  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004bbbca  f30f5cc3                  SUBSS XMM0,XMM3
004bbbce  f30f5ccc                  SUBSS XMM1,XMM4
004bbbd2  f30f5ec3                  DIVSS XMM0,XMM3
004bbbd6  f30f5ecb                  DIVSS XMM1,XMM3
004bbbda  f30f58c2                  ADDSS XMM0,XMM2
004bbbde  f30f58ca                  ADDSS XMM1,XMM2
004bbbe2  f30f2cd0                  CVTTSS2SI EDX,XMM0
004bbbe6  f30f2cc1                  CVTTSS2SI EAX,XMM1
004bbbea  85d2                      TEST EDX,EDX
004bbbec  781c                      JS 0x004bbc0a
004bbbee  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
004bbbf1  8975f0                    MOV dword ptr [EBP + -0x10],ESI
004bbbf4  3bd6                      CMP EDX,ESI
004bbbf6  7d12                      JGE 0x004bbc0a
004bbbf8  85c0                      TEST EAX,EAX
004bbbfa  780e                      JS 0x004bbc0a
004bbbfc  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
004bbbff  7d09                      JGE 0x004bbc0a
004bbc01  8bde                      MOV EBX,ESI
004bbc03  0fafd8                    IMUL EBX,EAX
004bbc06  03da                      ADD EBX,EDX
004bbc08  eb09                      JMP 0x004bbc13
004bbc0a  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
004bbc0d  83cbff                    OR EBX,0xffffffff
004bbc10  8975f0                    MOV dword ptr [EBP + -0x10],ESI
004bbc13  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
004bbc16  0f57c0                    XORPS XMM0,XMM0
004bbc19  99                        CDQ
004bbc1a  0f57c9                    XORPS XMM1,XMM1
004bbc1d  f7fe                      IDIV ESI
004bbc1f  0f57d2                    XORPS XMM2,XMM2
004bbc22  8bf0                      MOV ESI,EAX
004bbc24  8bca                      MOV ECX,EDX
004bbc26  8bc3                      MOV EAX,EBX
004bbc28  99                        CDQ
004bbc29  f77df0                    IDIV dword ptr [EBP + -0x10]
004bbc2c  f30f2ac9                  CVTSI2SS XMM1,ECX
004bbc30  f30f2ac2                  CVTSI2SS XMM0,EDX
004bbc34  f30f59cb                  MULSS XMM1,XMM3
004bbc38  f30f59c3                  MULSS XMM0,XMM3
004bbc3c  f30f58cb                  ADDSS XMM1,XMM3
004bbc40  f30f2ad6                  CVTSI2SS XMM2,ESI
004bbc44  f30f58c3                  ADDSS XMM0,XMM3
004bbc48  f30f59d3                  MULSS XMM2,XMM3
004bbc4c  f30f5cc8                  SUBSS XMM1,XMM0
004bbc50  0f57c0                    XORPS XMM0,XMM0
004bbc53  f30f2ac0                  CVTSI2SS XMM0,EAX
004bbc57  f30f58d4                  ADDSS XMM2,XMM4
004bbc5b  f30f114df4                MOVSS dword ptr [EBP + -0xc],XMM1
004bbc60  f30f59c3                  MULSS XMM0,XMM3
004bbc64  f30f58c4                  ADDSS XMM0,XMM4
004bbc68  f30f5cd0                  SUBSS XMM2,XMM0
004bbc6c  0f28c1                    MOVAPS XMM0,XMM1
004bbc6f  f30f59c1                  MULSS XMM0,XMM1
004bbc73  0f28ca                    MOVAPS XMM1,XMM2
004bbc76  f30f1155f0                MOVSS dword ptr [EBP + -0x10],XMM2
004bbc7b  f30f59ca                  MULSS XMM1,XMM2
004bbc7f  f30f58c1                  ADDSS XMM0,XMM1
004bbc83  e8c89df7ff                CALL 0x00435a50
004bbc88  0f57c9                    XORPS XMM1,XMM1
004bbc8b  0f2fc1                    COMISS XMM0,XMM1
004bbc8e  762b                      JBE 0x004bbcbb
004bbc90  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004bbc98  f30f5ec8                  DIVSS XMM1,XMM0
004bbc9c  f30f1055f4                MOVSS XMM2,dword ptr [EBP + -0xc]
004bbca1  0f28c1                    MOVAPS XMM0,XMM1
004bbca4  f30f59d0                  MULSS XMM2,XMM0
004bbca8  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
004bbcad  f30f59c1                  MULSS XMM0,XMM1
004bbcb1  f30f1155f4                MOVSS dword ptr [EBP + -0xc],XMM2
004bbcb6  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
004bbcbb  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
004bbcbe  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
004bbcc6  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
004bbcce  0f28c1                    MOVAPS XMM0,XMM1
004bbcd1  f30f59c1                  MULSS XMM0,XMM1
004bbcd5  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
004bbcda  0f28ca                    MOVAPS XMM1,XMM2
004bbcdd  f30f59ca                  MULSS XMM1,XMM2
004bbce1  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
004bbce6  f30f58c1                  ADDSS XMM0,XMM1
004bbcea  e8619df7ff                CALL 0x00435a50
004bbcef  f30f105de8                MOVSS XMM3,dword ptr [EBP + -0x18]
004bbcf4  0f57c9                    XORPS XMM1,XMM1
004bbcf7  0f2fc1                    COMISS XMM0,XMM1
004bbcfa  f30f1065e4                MOVSS XMM4,dword ptr [EBP + -0x1c]
004bbcff  7617                      JBE 0x004bbd18
004bbd01  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004bbd09  f30f5ec8                  DIVSS XMM1,XMM0
004bbd0d  0f28c1                    MOVAPS XMM0,XMM1
004bbd10  f30f59e1                  MULSS XMM4,XMM1
004bbd14  f30f59d8                  MULSS XMM3,XMM0
004bbd18  8b75f8                    MOV ESI,dword ptr [EBP + -0x8]
004bbd1b  3bde                      CMP EBX,ESI
004bbd1d  7433                      JZ 0x004bbd52
004bbd1f  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
004bbd22  56                        PUSH ESI
004bbd23  53                        PUSH EBX
004bbd24  81c168740000              ADD ECX,0x7468
004bbd2a  e821775200                CALL 0x009e3450
004bbd2f  84c0                      TEST AL,AL
004bbd31  7428                      JZ 0x004bbd5b
004bbd33  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
004bbd38  f30f104df0                MOVSS XMM1,dword ptr [EBP + -0x10]
004bbd3d  f30f59c3                  MULSS XMM0,XMM3
004bbd41  f30f59cc                  MULSS XMM1,XMM4
004bbd45  f30f58c1                  ADDSS XMM0,XMM1
004bbd49  0f2f0598a1ba00            COMISS XMM0,dword ptr [0x00baa198]
004bbd50  7609                      JBE 0x004bbd5b
004bbd52  6a0f                      PUSH 0xf
004bbd54  8bcf                      MOV ECX,EDI
004bbd56  e8d5faffff                CALL 0x004bb830
004bbd5b  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
004bbd63  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
004bbd6b  f30f102500aaba00          MOVSS XMM4,dword ptr [0x00baaa00]
004bbd73  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
004bbd76  8b45ec                    MOV EAX,dword ptr [EBP + -0x14]
004bbd79  40                        INC EAX
004bbd7a  8bd0                      MOV EDX,EAX
004bbd7c  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004bbd7f  3b8164120000              CMP EAX,dword ptr [ECX + 0x1264]
004bbd85  0f8209feffff              JC 0x004bbb94
004bbd8b  eb63                      JMP 0x004bbdf0
004bbd8d  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004bbd93  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004bbd99  83e1fb                    AND ECX,0xfffffffb
004bbd9c  83c911                    OR ECX,0x11
004bbd9f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004bbda9  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004bbdaf  8d4f48                    LEA ECX,[EDI + 0x48]
004bbdb2  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004bbdb8  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004bbdc2  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004bbdc8  6a00                      PUSH 0x0
004bbdca  898734030000              MOV dword ptr [EDI + 0x334],EAX
004bbdd0  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004bbdd6  68d8fdb500                PUSH 0xb5fdd8
004bbddb  898738030000              MOV dword ptr [EDI + 0x338],EAX
004bbde1  c7875c03000001000000      MOV dword ptr [EDI + 0x35c],0x1
004bbdeb  e890e5f4ff                CALL 0x0040a380
004bbdf0  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
004bbdf6  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
004bbdfc  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
004bbe02  898740030000              MOV dword ptr [EDI + 0x340],EAX
004bbe08  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004bbe10  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004bbe18  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004bbe20  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004bbe28  5f                        POP EDI
004bbe29  5e                        POP ESI
004bbe2a  5b                        POP EBX
004bbe2b  8be5                      MOV ESP,EBP
004bbe2d  5d                        POP EBP
004bbe2e  c3                        RET
