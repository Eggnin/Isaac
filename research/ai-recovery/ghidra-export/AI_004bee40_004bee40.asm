; J460 NPC AI 0x004bee40 AI_004bee40
; types=297
; identities=297.0.0
; entry=004bee40
004bee40  55                        PUSH EBP
004bee41  8bec                      MOV EBP,ESP
004bee43  6aff                      PUSH -0x1
004bee45  685535af00                PUSH 0xaf3555
004bee4a  64a100000000              MOV EAX,FS:[0x0]
004bee50  50                        PUSH EAX
004bee51  83ec44                    SUB ESP,0x44
004bee54  a1b493bf00                MOV EAX,[0x00bf93b4]
004bee59  33c5                      XOR EAX,EBP
004bee5b  8945f0                    MOV dword ptr [EBP + -0x10],EAX
004bee5e  53                        PUSH EBX
004bee5f  56                        PUSH ESI
004bee60  57                        PUSH EDI
004bee61  50                        PUSH EAX
004bee62  8d45f4                    LEA EAX,[EBP + -0xc]
004bee65  64a300000000              MOV FS:[0x0],EAX
004bee6b  8bf9                      MOV EDI,ECX
004bee6d  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004bee72  0f57c9                    XORPS XMM1,XMM1
004bee75  0f2fc1                    COMISS XMM0,XMM1
004bee78  761e                      JBE 0x004bee98
004bee7a  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004bee7d  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004bee80  7416                      JZ 0x004bee98
004bee82  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
004bee85  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
004bee88  7506                      JNZ 0x004bee90
004bee8a  c70000000000              MOV dword ptr [EAX],0x0
004bee90  83c038                    ADD EAX,0x38
004bee93  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004bee96  75ea                      JNZ 0x004bee82
004bee98  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004bee9f  0f85a0010000              JNZ 0x004bf045
004beea5  a17816c700                MOV EAX,[0x00c71678]
004beeaa  8d7748                    LEA ESI,[EDI + 0x48]
004beead  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004beeb3  803900                    CMP byte ptr [ECX],0x0
004beeb6  0f8484000000              JZ 0x004bef40
004beebc  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004beec2  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004beec8  7576                      JNZ 0x004bef40
004beeca  6a01                      PUSH 0x1
004beecc  6818ddb100                PUSH 0xb1dd18
004beed1  8bce                      MOV ECX,ESI
004beed3  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004beedd  898710040000              MOV dword ptr [EDI + 0x410],EAX
004beee3  e8e8b6f4ff                CALL 0x0040a5d0
004beee8  84c0                      TEST AL,AL
004beeea  741d                      JZ 0x004bef09
004beeec  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004beeef  85c0                      TEST EAX,EAX
004beef1  7416                      JZ 0x004bef09
004beef3  8d4e30                    LEA ECX,[ESI + 0x30]
004beef6  0f57c9                    XORPS XMM1,XMM1
004beef9  e8029ff4ff                CALL 0x00408e00
004beefe  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004bef01  85c0                      TEST EAX,EAX
004bef03  7404                      JZ 0x004bef09
004bef05  c6464400                  MOV byte ptr [ESI + 0x44],0x0
004bef09  6a01                      PUSH 0x1
004bef0b  68d4feb500                PUSH 0xb5fed4
004bef10  8d4f48                    LEA ECX,[EDI + 0x48]
004bef13  e8d8bbf4ff                CALL 0x0040aaf0
004bef18  84c0                      TEST AL,AL
004bef1a  0f8425010000              JZ 0x004bf045
004bef20  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004bef27  0f8418010000              JZ 0x004bf045
004bef2d  8d8f98000000              LEA ECX,[EDI + 0x98]
004bef33  0f57c9                    XORPS XMM1,XMM1
004bef36  e8c59ef4ff                CALL 0x00408e00
004bef3b  e905010000                JMP 0x004bf045
004bef40  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
004bef47  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004bef4d  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004bef53  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004bef5d  8b5e34                    MOV EBX,dword ptr [ESI + 0x34]
004bef60  85db                      TEST EBX,EBX
004bef62  7442                      JZ 0x004befa6
004bef64  837b1410                  CMP dword ptr [EBX + 0x14],0x10
004bef68  8bc3                      MOV EAX,EBX
004bef6a  7202                      JC 0x004bef6e
004bef6c  8b03                      MOV EAX,dword ptr [EBX]
004bef6e  b9dcfeb500                MOV ECX,0xb5fedc
004bef73  8a10                      MOV DL,byte ptr [EAX]
004bef75  3a11                      CMP DL,byte ptr [ECX]
004bef77  751a                      JNZ 0x004bef93
004bef79  84d2                      TEST DL,DL
004bef7b  7412                      JZ 0x004bef8f
004bef7d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004bef80  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004bef83  750e                      JNZ 0x004bef93
004bef85  83c002                    ADD EAX,0x2
004bef88  83c102                    ADD ECX,0x2
004bef8b  84d2                      TEST DL,DL
004bef8d  75e4                      JNZ 0x004bef73
004bef8f  33c0                      XOR EAX,EAX
004bef91  eb05                      JMP 0x004bef98
004bef93  1bc0                      SBB EAX,EAX
004bef95  83c801                    OR EAX,0x1
004bef98  85c0                      TEST EAX,EAX
004bef9a  750a                      JNZ 0x004befa6
004bef9c  384334                    CMP byte ptr [EBX + 0x34],AL
004bef9f  7423                      JZ 0x004befc4
004befa1  384644                    CMP byte ptr [ESI + 0x44],AL
004befa4  751e                      JNZ 0x004befc4
004befa6  6a01                      PUSH 0x1
004befa8  68dcfeb500                PUSH 0xb5fedc
004befad  8bce                      MOV ECX,ESI
004befaf  e81cb6f4ff                CALL 0x0040a5d0
004befb4  84c0                      TEST AL,AL
004befb6  740c                      JZ 0x004befc4
004befb8  8d4e30                    LEA ECX,[ESI + 0x30]
004befbb  e8f0b1f4ff                CALL 0x0040a1b0
004befc0  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004befc4  8bb79c000000              MOV ESI,dword ptr [EDI + 0x9c]
004befca  85f6                      TEST ESI,ESI
004befcc  7448                      JZ 0x004bf016
004befce  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004befd2  8bc6                      MOV EAX,ESI
004befd4  7202                      JC 0x004befd8
004befd6  8b06                      MOV EAX,dword ptr [ESI]
004befd8  b95cffb500                MOV ECX,0xb5ff5c
004befdd  0f1f00                    NOP dword ptr [EAX]
004befe0  8a10                      MOV DL,byte ptr [EAX]
004befe2  3a11                      CMP DL,byte ptr [ECX]
004befe4  751a                      JNZ 0x004bf000
004befe6  84d2                      TEST DL,DL
004befe8  7412                      JZ 0x004beffc
004befea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004befed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004beff0  750e                      JNZ 0x004bf000
004beff2  83c002                    ADD EAX,0x2
004beff5  83c102                    ADD ECX,0x2
004beff8  84d2                      TEST DL,DL
004beffa  75e4                      JNZ 0x004befe0
004beffc  33c0                      XOR EAX,EAX
004beffe  eb05                      JMP 0x004bf005
004bf000  1bc0                      SBB EAX,EAX
004bf002  83c801                    OR EAX,0x1
004bf005  85c0                      TEST EAX,EAX
004bf007  750d                      JNZ 0x004bf016
004bf009  384634                    CMP byte ptr [ESI + 0x34],AL
004bf00c  742d                      JZ 0x004bf03b
004bf00e  3887ac000000              CMP byte ptr [EDI + 0xac],AL
004bf014  7525                      JNZ 0x004bf03b
004bf016  6a01                      PUSH 0x1
004bf018  685cffb500                PUSH 0xb5ff5c
004bf01d  8d4f48                    LEA ECX,[EDI + 0x48]
004bf020  e8cbbaf4ff                CALL 0x0040aaf0
004bf025  84c0                      TEST AL,AL
004bf027  7412                      JZ 0x004bf03b
004bf029  8d8f98000000              LEA ECX,[EDI + 0x98]
004bf02f  e87cb1f4ff                CALL 0x0040a1b0
004bf034  c687ac00000001            MOV byte ptr [EDI + 0xac],0x1
004bf03b  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004bf045  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
004bf04c  0f8593000000              JNZ 0x004bf0e5
004bf052  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004bf056  740d                      JZ 0x004bf065
004bf058  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004bf05f  0f858e020000              JNZ 0x004bf2f3
004bf065  6a01                      PUSH 0x1
004bf067  6818ddb100                PUSH 0xb1dd18
004bf06c  8d4f48                    LEA ECX,[EDI + 0x48]
004bf06f  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004bf079  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004bf083  e848b5f4ff                CALL 0x0040a5d0
004bf088  84c0                      TEST AL,AL
004bf08a  7420                      JZ 0x004bf0ac
004bf08c  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004bf08f  85c0                      TEST EAX,EAX
004bf091  7419                      JZ 0x004bf0ac
004bf093  8d4f78                    LEA ECX,[EDI + 0x78]
004bf096  0f57c9                    XORPS XMM1,XMM1
004bf099  e8629df4ff                CALL 0x00408e00
004bf09e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004bf0a1  85c0                      TEST EAX,EAX
004bf0a3  7407                      JZ 0x004bf0ac
004bf0a5  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004bf0ac  6a01                      PUSH 0x1
004bf0ae  68d4feb500                PUSH 0xb5fed4
004bf0b3  8d4f48                    LEA ECX,[EDI + 0x48]
004bf0b6  e835baf4ff                CALL 0x0040aaf0
004bf0bb  84c0                      TEST AL,AL
004bf0bd  7417                      JZ 0x004bf0d6
004bf0bf  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004bf0c6  740e                      JZ 0x004bf0d6
004bf0c8  8d8f98000000              LEA ECX,[EDI + 0x98]
004bf0ce  0f57c9                    XORPS XMM1,XMM1
004bf0d1  e82a9df4ff                CALL 0x00408e00
004bf0d6  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004bf0e0  e90e020000                JMP 0x004bf2f3
004bf0e5  a118ddb100                MOV EAX,[0x00b1dd18]
004bf0ea  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
004bf0f0  c745d40f000000            MOV dword ptr [EBP + -0x2c],0xf
004bf0f7  c745d008000000            MOV dword ptr [EBP + -0x30],0x8
004bf0fe  8945c0                    MOV dword ptr [EBP + -0x40],EAX
004bf101  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
004bf104  c645c800                  MOV byte ptr [EBP + -0x38],0x0
004bf108  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004bf10f  a130ddb100                MOV EAX,[0x00b1dd30]
004bf114  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
004bf11a  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
004bf121  c745e808000000            MOV dword ptr [EBP + -0x18],0x8
004bf128  8945d8                    MOV dword ptr [EBP + -0x28],EAX
004bf12b  894ddc                    MOV dword ptr [EBP + -0x24],ECX
004bf12e  c645e000                  MOV byte ptr [EBP + -0x20],0x0
004bf132  51                        PUSH ECX
004bf133  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004bf137  8d45c0                    LEA EAX,[EBP + -0x40]
004bf13a  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004bf141  8bcf                      MOV ECX,EDI
004bf143  50                        PUSH EAX
004bf144  8d45d8                    LEA EAX,[EBP + -0x28]
004bf147  50                        PUSH EAX
004bf148  e8e3212000                CALL 0x006c1330
004bf14d  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004bf151  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
004bf154  83fa10                    CMP EDX,0x10
004bf157  7228                      JC 0x004bf181
004bf159  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004bf15c  42                        INC EDX
004bf15d  8bc1                      MOV EAX,ECX
004bf15f  81fa00100000              CMP EDX,0x1000
004bf165  7210                      JC 0x004bf177
004bf167  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004bf16a  83c223                    ADD EDX,0x23
004bf16d  2bc1                      SUB EAX,ECX
004bf16f  83c0fc                    ADD EAX,-0x4
004bf172  83f81f                    CMP EAX,0x1f
004bf175  7749                      JA 0x004bf1c0
004bf177  52                        PUSH EDX
004bf178  51                        PUSH ECX
004bf179  e8deff6200                CALL 0x00aef15c
004bf17e  83c408                    ADD ESP,0x8
004bf181  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004bf188  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
004bf18b  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004bf192  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
004bf199  c645d800                  MOV byte ptr [EBP + -0x28],0x0
004bf19d  83fa10                    CMP EDX,0x10
004bf1a0  722e                      JC 0x004bf1d0
004bf1a2  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
004bf1a5  42                        INC EDX
004bf1a6  8bc1                      MOV EAX,ECX
004bf1a8  81fa00100000              CMP EDX,0x1000
004bf1ae  7216                      JC 0x004bf1c6
004bf1b0  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004bf1b3  83c223                    ADD EDX,0x23
004bf1b6  2bc1                      SUB EAX,ECX
004bf1b8  83c0fc                    ADD EAX,-0x4
004bf1bb  83f81f                    CMP EAX,0x1f
004bf1be  7606                      JBE 0x004bf1c6
004bf1c0  ff159488b100              CALL dword ptr [0x00b18894]
004bf1c6  52                        PUSH EDX
004bf1c7  51                        PUSH ECX
004bf1c8  e88fff6200                CALL 0x00aef15c
004bf1cd  83c408                    ADD ESP,0x8
004bf1d0  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004bf1d6  2500080001                AND EAX,0x1000800
004bf1db  c787340c00009a99193f      MOV dword ptr [EDI + 0xc34],0x3f19999a
004bf1e5  83c800                    OR EAX,0x0
004bf1e8  7444                      JZ 0x004bf22e
004bf1ea  8bcf                      MOV ECX,EDI
004bf1ec  e84ff61f00                CALL 0x006be840
004bf1f1  6a00                      PUSH 0x0
004bf1f3  8d8f14040000              LEA ECX,[EDI + 0x414]
004bf1f9  8b903c030000              MOV EDX,dword ptr [EAX + 0x33c]
004bf1ff  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004bf205  8945b8                    MOV dword ptr [EBP + -0x48],EAX
004bf208  8d45b4                    LEA EAX,[EBP + -0x4c]
004bf20b  50                        PUSH EAX
004bf20c  8955b4                    MOV dword ptr [EBP + -0x4c],EDX
004bf20f  e82c573200                CALL 0x007e4940
004bf214  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004bf21c  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004bf224  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004bf22c  eb2e                      JMP 0x004bf25c
004bf22e  51                        PUSH ECX
004bf22f  8d45b4                    LEA EAX,[EBP + -0x4c]
004bf232  c7042400000000            MOV dword ptr [ESP],0x0
004bf239  50                        PUSH EAX
004bf23a  8bcf                      MOV ECX,EDI
004bf23c  e8fff91f00                CALL 0x006bec40
004bf241  6a01                      PUSH 0x1
004bf243  6884030000                PUSH 0x384
004bf248  51                        PUSH ECX
004bf249  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
004bf250  8d8f14040000              LEA ECX,[EDI + 0x414]
004bf256  50                        PUSH EAX
004bf257  e864413200                CALL 0x007e33c0
004bf25c  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
004bf263  0f848a000000              JZ 0x004bf2f3
004bf269  e8f2fc2200                CALL 0x006eef60
004bf26e  33d2                      XOR EDX,EDX
004bf270  b91e000000                MOV ECX,0x1e
004bf275  f7f1                      DIV ECX
004bf277  85d2                      TEST EDX,EDX
004bf279  7578                      JNZ 0x004bf2f3
004bf27b  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004bf283  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004bf289  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
004bf28e  83f812                    CMP EAX,0x12
004bf291  750a                      JNZ 0x004bf29d
004bf293  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004bf29b  eb0d                      JMP 0x004bf2aa
004bf29d  83f813                    CMP EAX,0x13
004bf2a0  750d                      JNZ 0x004bf2af
004bf2a2  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004bf2aa  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
004bf2af  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004bf2b5  8d4db8                    LEA ECX,[EBP + -0x48]
004bf2b8  c745b8a5000000            MOV dword ptr [EBP + -0x48],0xa5
004bf2bf  e8bc744900                CALL 0x00956780
004bf2c4  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
004bf2c9  83ec08                    SUB ESP,0x8
004bf2cc  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004bf2d4  f30f110424                MOVSS dword ptr [ESP],XMM0
004bf2d9  6a00                      PUSH 0x0
004bf2db  6a78                      PUSH 0x78
004bf2dd  51                        PUSH ECX
004bf2de  c704240000803f            MOV dword ptr [ESP],0x3f800000
004bf2e5  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004bf2eb  ff75b8                    PUSH dword ptr [EBP + -0x48]
004bf2ee  e83de94600                CALL 0x0092dc30
004bf2f3  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004bf2f6  64890d00000000            MOV dword ptr FS:[0x0],ECX
004bf2fd  59                        POP ECX
004bf2fe  5f                        POP EDI
004bf2ff  5e                        POP ESI
004bf300  5b                        POP EBX
004bf301  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
004bf304  33cd                      XOR ECX,EBP
004bf306  e820fe6200                CALL 0x00aef12b
004bf30b  8be5                      MOV ESP,EBP
004bf30d  5d                        POP EBP
004bf30e  c3                        RET
