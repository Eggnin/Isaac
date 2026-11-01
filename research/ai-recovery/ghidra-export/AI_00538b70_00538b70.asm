; J460 NPC AI 0x00538b70 AI_00538b70
; types=226,227,277
; identities=226.0.0,226.1.0,226.2.0,227.0.0,227.1.0,277.0.0
; entry=00538b70
00538b70  53                        PUSH EBX
00538b71  8bdc                      MOV EBX,ESP
00538b73  83ec08                    SUB ESP,0x8
00538b76  83e4f8                    AND ESP,0xfffffff8
00538b79  83c404                    ADD ESP,0x4
00538b7c  55                        PUSH EBP
00538b7d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00538b80  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00538b84  8bec                      MOV EBP,ESP
00538b86  6aff                      PUSH -0x1
00538b88  68cd47af00                PUSH 0xaf47cd
00538b8d  64a100000000              MOV EAX,FS:[0x0]
00538b93  50                        PUSH EAX
00538b94  53                        PUSH EBX
00538b95  81ec18010000              SUB ESP,0x118
00538b9b  a1b493bf00                MOV EAX,[0x00bf93b4]
00538ba0  33c5                      XOR EAX,EBP
00538ba2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00538ba5  56                        PUSH ESI
00538ba6  57                        PUSH EDI
00538ba7  50                        PUSH EAX
00538ba8  8d45f4                    LEA EAX,[EBP + -0xc]
00538bab  64a300000000              MOV FS:[0x0],EAX
00538bb1  8bf9                      MOV EDI,ECX
00538bb3  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
00538bb6  81f9e2000000              CMP ECX,0xe2
00538bbc  7512                      JNZ 0x00538bd0
00538bbe  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00538bc2  750c                      JNZ 0x00538bd0
00538bc4  8bcf                      MOV ECX,EDI
00538bc6  e885170100                CALL 0x0054a350
00538bcb  e9a10f0000                JMP 0x00539b71
00538bd0  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00538bd6  85c0                      TEST EAX,EAX
00538bd8  0f85d9000000              JNZ 0x00538cb7
00538bde  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00538be8  81f9e2000000              CMP ECX,0xe2
00538bee  7511                      JNZ 0x00538c01
00538bf0  50                        PUSH EAX
00538bf1  68d4feb500                PUSH 0xb5fed4
00538bf6  8d4f48                    LEA ECX,[EDI + 0x48]
00538bf9  e8421dedff                CALL 0x0040a940
00538bfe  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
00538c01  81f9e3000000              CMP ECX,0xe3
00538c07  740c                      JZ 0x00538c15
00538c09  81f915010000              CMP ECX,0x115
00538c0f  0f855c0f0000              JNZ 0x00539b71
00538c15  818f6801000000000100      OR dword ptr [EDI + 0x168],0x10000
00538c1f  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00538c25  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00538c2b  81f915010000              CMP ECX,0x115
00538c31  7539                      JNZ 0x00538c6c
00538c33  0f57c0                    XORPS XMM0,XMM0
00538c36  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
00538c3d  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
00538c41  8d45a8                    LEA EAX,[EBP + -0x58]
00538c44  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00538c4b  0f280540c3ba00            MOVAPS XMM0,xmmword ptr [0x00bac340]
00538c52  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00538c58  50                        PUSH EAX
00538c59  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00538c60  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
00538c64  e887e5ecff                CALL 0x004071f0
00538c69  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
00538c6c  81f9e3000000              CMP ECX,0xe3
00538c72  0f85f90e0000              JNZ 0x00539b71
00538c78  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00538c7c  0f85ef0e0000              JNZ 0x00539b71
00538c82  6a01                      PUSH 0x1
00538c84  68b011b600                PUSH 0xb611b0
00538c89  8d4f48                    LEA ECX,[EDI + 0x48]
00538c8c  c687b800000001            MOV byte ptr [EDI + 0xb8],0x1
00538c93  e8581eedff                CALL 0x0040aaf0
00538c98  84c0                      TEST AL,AL
00538c9a  0f84d10e0000              JZ 0x00539b71
00538ca0  8d8f98000000              LEA ECX,[EDI + 0x98]
00538ca6  e80515edff                CALL 0x0040a1b0
00538cab  c687ac00000001            MOV byte ptr [EDI + 0xac],0x1
00538cb2  e9ba0e0000                JMP 0x00539b71
00538cb7  83f804                    CMP EAX,0x4
00538cba  0f85b5080000              JNZ 0x00539575
00538cc0  81f9e2000000              CMP ECX,0xe2
00538cc6  0f85aa020000              JNZ 0x00538f76
00538ccc  ff7720                    PUSH dword ptr [EDI + 0x20]
00538ccf  8bcf                      MOV ECX,EDI
00538cd1  6a14                      PUSH 0x14
00538cd3  e8383a1700                CALL 0x006ac710
00538cd8  84c0                      TEST AL,AL
00538cda  7450                      JZ 0x00538d2c
00538cdc  e87f621b00                CALL 0x006eef60
00538ce1  33d2                      XOR EDX,EDX
00538ce3  b903000000                MOV ECX,0x3
00538ce8  f7f1                      DIV ECX
00538cea  85d2                      TEST EDX,EDX
00538cec  753e                      JNZ 0x00538d2c
00538cee  8bcf                      MOV ECX,EDI
00538cf0  e84b5b1800                CALL 0x006be840
00538cf5  50                        PUSH EAX
00538cf6  8bcf                      MOV ECX,EDI
00538cf8  e863f01900                CALL 0x006d7d60
00538cfd  84c0                      TEST AL,AL
00538cff  742b                      JZ 0x00538d2c
00538d01  51                        PUSH ECX
00538d02  33c0                      XOR EAX,EAX
00538d04  c704240000803f            MOV dword ptr [ESP],0x3f800000
00538d0b  39472c                    CMP dword ptr [EDI + 0x2c],EAX
00538d0e  6a00                      PUSH 0x0
00538d10  0f94c0                    SETZ AL
00538d13  6a78                      PUSH 0x78
00538d15  51                        PUSH ECX
00538d16  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00538d1d  8bcf                      MOV ECX,EDI
00538d1f  8d0445a5000000            LEA EAX,[EAX*0x2 + 0xa5]
00538d26  50                        PUSH EAX
00538d27  e874de1900                CALL 0x006d6ba0
00538d2c  6a00                      PUSH 0x0
00538d2e  6800080001                PUSH 0x1000800
00538d33  8bcf                      MOV ECX,EDI
00538d35  e8f6e6edff                CALL 0x00417430
00538d3a  84c0                      TEST AL,AL
00538d3c  745f                      JZ 0x00538d9d
00538d3e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00538d45  7556                      JNZ 0x00538d9d
00538d47  8bcf                      MOV ECX,EDI
00538d49  e8f25a1800                CALL 0x006be840
00538d4e  6a00                      PUSH 0x0
00538d50  8d8f14040000              LEA ECX,[EDI + 0x414]
00538d56  8b903c030000              MOV EDX,dword ptr [EAX + 0x33c]
00538d5c  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00538d62  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00538d68  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
00538d6e  50                        PUSH EAX
00538d6f  8995f4feffff              MOV dword ptr [EBP + 0xfffffef4],EDX
00538d75  e8c6bb2a00                CALL 0x007e4940
00538d7a  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
00538d81  7e4d                      JLE 0x00538dd0
00538d83  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00538d8b  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00538d93  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00538d9b  eb33                      JMP 0x00538dd0
00538d9d  6a01                      PUSH 0x1
00538d9f  6884030000                PUSH 0x384
00538da4  83ec08                    SUB ESP,0x8
00538da7  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
00538dad  8bcf                      MOV ECX,EDI
00538daf  c74424040000003f          MOV dword ptr [ESP + 0x4],0x3f000000
00538db7  c7042400000000            MOV dword ptr [ESP],0x0
00538dbe  50                        PUSH EAX
00538dbf  e87c5e1800                CALL 0x006bec40
00538dc4  50                        PUSH EAX
00538dc5  8d8f14040000              LEA ECX,[EDI + 0x414]
00538dcb  e8f0a52a00                CALL 0x007e33c0
00538dd0  a118ddb100                MOV EAX,[0x00b1dd18]
00538dd5  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
00538ddb  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00538de2  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
00538de9  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00538dec  894dc0                    MOV dword ptr [EBP + -0x40],ECX
00538def  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
00538df3  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00538dfa  a130ddb100                MOV EAX,[0x00b1dd30]
00538dff  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00538e05  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00538e0c  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
00538e13  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00538e16  894dd8                    MOV dword ptr [EBP + -0x28],ECX
00538e19  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
00538e1d  51                        PUSH ECX
00538e1e  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00538e22  8d45bc                    LEA EAX,[EBP + -0x44]
00538e25  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00538e2c  8bcf                      MOV ECX,EDI
00538e2e  50                        PUSH EAX
00538e2f  8d45d4                    LEA EAX,[EBP + -0x2c]
00538e32  50                        PUSH EAX
00538e33  e8f8841800                CALL 0x006c1330
00538e38  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00538e3c  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00538e3f  83fa10                    CMP EDX,0x10
00538e42  7228                      JC 0x00538e6c
00538e44  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00538e47  42                        INC EDX
00538e48  8bc1                      MOV EAX,ECX
00538e4a  81fa00100000              CMP EDX,0x1000
00538e50  7210                      JC 0x00538e62
00538e52  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00538e55  83c223                    ADD EDX,0x23
00538e58  2bc1                      SUB EAX,ECX
00538e5a  83c0fc                    ADD EAX,-0x4
00538e5d  83f81f                    CMP EAX,0x1f
00538e60  7749                      JA 0x00538eab
00538e62  52                        PUSH EDX
00538e63  51                        PUSH ECX
00538e64  e8f3625b00                CALL 0x00aef15c
00538e69  83c408                    ADD ESP,0x8
00538e6c  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00538e73  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
00538e76  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00538e7d  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00538e84  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00538e88  83fa10                    CMP EDX,0x10
00538e8b  722e                      JC 0x00538ebb
00538e8d  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00538e90  42                        INC EDX
00538e91  8bc1                      MOV EAX,ECX
00538e93  81fa00100000              CMP EDX,0x1000
00538e99  7216                      JC 0x00538eb1
00538e9b  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00538e9e  83c223                    ADD EDX,0x23
00538ea1  2bc1                      SUB EAX,ECX
00538ea3  83c0fc                    ADD EAX,-0x4
00538ea6  83f81f                    CMP EAX,0x1f
00538ea9  7606                      JBE 0x00538eb1
00538eab  ff159488b100              CALL dword ptr [0x00b18894]
00538eb1  52                        PUSH EDX
00538eb2  51                        PUSH ECX
00538eb3  e8a4625b00                CALL 0x00aef15c
00538eb8  83c408                    ADD ESP,0x8
00538ebb  ff7720                    PUSH dword ptr [EDI + 0x20]
00538ebe  8bcf                      MOV ECX,EDI
00538ec0  6a07                      PUSH 0x7
00538ec2  e849381700                CALL 0x006ac710
00538ec7  84c0                      TEST AL,AL
00538ec9  0f848a0a0000              JZ 0x00539959
00538ecf  6a00                      PUSH 0x0
00538ed1  6800000001                PUSH 0x1000000
00538ed6  8bcf                      MOV ECX,EDI
00538ed8  e853e5edff                CALL 0x00417430
00538edd  84c0                      TEST AL,AL
00538edf  0f85740a0000              JNZ 0x00539959
00538ee5  e876601b00                CALL 0x006eef60
00538eea  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00538ef0  6a00                      PUSH 0x0
00538ef2  68acd5c500                PUSH 0xc5d5ac
00538ef7  68dcd5c500                PUSH 0xc5d5dc
00538efc  6a00                      PUSH 0x0
00538efe  50                        PUSH EAX
00538eff  6a00                      PUSH 0x0
00538f01  57                        PUSH EDI
00538f02  6840b6c700                PUSH 0xc7b640
00538f07  8d873c030000              LEA EAX,[EDI + 0x33c]
00538f0d  50                        PUSH EAX
00538f0e  6a16                      PUSH 0x16
00538f10  68e8030000                PUSH 0x3e8
00538f15  e806fceeff                CALL 0x00428b20
00538f1a  50                        PUSH EAX
00538f1b  e891795b00                CALL 0x00af08b1
00538f20  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00538f28  83c414                    ADD ESP,0x14
00538f2b  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00538f33  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
00538f3b  c780780400000000003f      MOV dword ptr [EAX + 0x478],0x3f000000
00538f45  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00538f4d  c7805c0400001e000000      MOV dword ptr [EAX + 0x45c],0x1e
00538f57  f30f1188e4000000          MOVSS dword ptr [EAX + 0xe4],XMM1
00538f5f  c780600400001e000000      MOV dword ptr [EAX + 0x460],0x1e
00538f69  f30f1180e8000000          MOVSS dword ptr [EAX + 0xe8],XMM0
00538f71  e9e3090000                JMP 0x00539959
00538f76  81f9e3000000              CMP ECX,0xe3
00538f7c  740c                      JZ 0x00538f8a
00538f7e  81f915010000              CMP ECX,0x115
00538f84  0f85cf090000              JNZ 0x00539959
00538f8a  ff7720                    PUSH dword ptr [EDI + 0x20]
00538f8d  8bcf                      MOV ECX,EDI
00538f8f  6a1e                      PUSH 0x1e
00538f91  e87a371700                CALL 0x006ac710
00538f96  84c0                      TEST AL,AL
00538f98  742e                      JZ 0x00538fc8
00538f9a  e8c15f1b00                CALL 0x006eef60
00538f9f  33d2                      XOR EDX,EDX
00538fa1  b903000000                MOV ECX,0x3
00538fa6  f7f1                      DIV ECX
00538fa8  85d2                      TEST EDX,EDX
00538faa  751c                      JNZ 0x00538fc8
00538fac  51                        PUSH ECX
00538fad  c704240000803f            MOV dword ptr [ESP],0x3f800000
00538fb4  52                        PUSH EDX
00538fb5  6a78                      PUSH 0x78
00538fb7  51                        PUSH ECX
00538fb8  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00538fbf  8bcf                      MOV ECX,EDI
00538fc1  6a74                      PUSH 0x74
00538fc3  e8d8db1900                CALL 0x006d6ba0
00538fc8  a17816c700                MOV EAX,[0x00c71678]
00538fcd  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00538fd3  898df8feffff              MOV dword ptr [EBP + 0xfffffef8],ECX
00538fd9  51                        PUSH ECX
00538fda  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00538fe0  8bce                      MOV ECX,ESI
00538fe2  e8a99c2d00                CALL 0x00812c90
00538fe7  6884030000                PUSH 0x384
00538fec  50                        PUSH EAX
00538fed  8bce                      MOV ECX,ESI
00538fef  e8ecd5f1ff                CALL 0x004565e0
00538ff4  8d8f14040000              LEA ECX,[EDI + 0x414]
00538ffa  e8f1df2a00                CALL 0x007e6ff0
00538fff  6a00                      PUSH 0x0
00539001  51                        PUSH ECX
00539002  8d8f14040000              LEA ECX,[EDI + 0x414]
00539008  c704240000a03f            MOV dword ptr [ESP],0x3fa00000
0053900f  e82cc32a00                CALL 0x007e5340
00539014  f30f10a760030000          MOVSS XMM4,dword ptr [EDI + 0x360]
0053901c  0f57d2                    XORPS XMM2,XMM2
0053901f  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00539027  0f28c4                    MOVAPS XMM0,XMM4
0053902a  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
00539032  f30f59c9                  MULSS XMM1,XMM1
00539036  f30f59c4                  MULSS XMM0,XMM4
0053903a  f30f58c1                  ADDSS XMM0,XMM1
0053903e  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00539046  0f2fc8                    COMISS XMM1,XMM0
00539049  7614                      JBE 0x0053905f
0053904b  6a00                      PUSH 0x0
0053904d  6844e0b100                PUSH 0xb1e044
00539052  8d4f48                    LEA ECX,[EDI + 0x48]
00539055  e88616edff                CALL 0x0040a6e0
0053905a  e98c000000                JMP 0x005390eb
0053905f  f30f10af64030000          MOVSS XMM5,dword ptr [EDI + 0x364]
00539067  0f28cc                    MOVAPS XMM1,XMM4
0053906a  0f28c5                    MOVAPS XMM0,XMM5
0053906d  0f54cb                    ANDPS XMM1,XMM3
00539070  0f54c3                    ANDPS XMM0,XMM3
00539073  0f2fc8                    COMISS XMM1,XMM0
00539076  7658                      JBE 0x005390d0
00539078  817f28e3000000            CMP dword ptr [EDI + 0x28],0xe3
0053907f  752b                      JNZ 0x005390ac
00539081  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00539085  7525                      JNZ 0x005390ac
00539087  0f2fd4                    COMISS XMM2,XMM4
0053908a  b9c0dab100                MOV ECX,0xb1dac0
0053908f  b888dab100                MOV EAX,0xb1da88
00539094  6a00                      PUSH 0x0
00539096  0f46c1                    CMOVBE EAX,ECX
00539099  8d4f48                    LEA ECX,[EDI + 0x48]
0053909c  50                        PUSH EAX
0053909d  e8de12edff                CALL 0x0040a380
005390a2  32c0                      XOR AL,AL
005390a4  888748010000              MOV byte ptr [EDI + 0x148],AL
005390aa  eb3f                      JMP 0x005390eb
005390ac  6a00                      PUSH 0x0
005390ae  6830ddb100                PUSH 0xb1dd30
005390b3  8d4f48                    LEA ECX,[EDI + 0x48]
005390b6  e8c512edff                CALL 0x0040a380
005390bb  0f57c0                    XORPS XMM0,XMM0
005390be  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
005390c5  0f97c0                    SETA AL
005390c8  888748010000              MOV byte ptr [EDI + 0x148],AL
005390ce  eb1b                      JMP 0x005390eb
005390d0  0f2fea                    COMISS XMM5,XMM2
005390d3  8d4f48                    LEA ECX,[EDI + 0x48]
005390d6  6a00                      PUSH 0x0
005390d8  7607                      JBE 0x005390e1
005390da  6844e0b100                PUSH 0xb1e044
005390df  eb05                      JMP 0x005390e6
005390e1  6820e0b100                PUSH 0xb1e020
005390e6  e89512edff                CALL 0x0040a380
005390eb  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005390f2  8bcf                      MOV ECX,EDI
005390f4  0f849c010000              JZ 0x00539296
005390fa  6a00                      PUSH 0x0
005390fc  68000a0001                PUSH 0x1000a00
00539101  e82ae3edff                CALL 0x00417430
00539106  84c0                      TEST AL,AL
00539108  0f854b080000              JNZ 0x00539959
0053910e  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00539116  8bcf                      MOV ECX,EDI
00539118  6a07                      PUSH 0x7
0053911a  6a00                      PUSH 0x0
0053911c  e83f1d1900                CALL 0x006cae60
00539121  84c0                      TEST AL,AL
00539123  7537                      JNZ 0x0053915c
00539125  6a09                      PUSH 0x9
00539127  8bcf                      MOV ECX,EDI
00539129  e832f11900                CALL 0x006d8260
0053912e  84c0                      TEST AL,AL
00539130  0f8423080000              JZ 0x00539959
00539136  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
0053913c  8bcf                      MOV ECX,EDI
0053913e  50                        PUSH EAX
0053913f  e8ecfb1900                CALL 0x006d8d30
00539144  8db73c030000              LEA ESI,[EDI + 0x33c]
0053914a  8bc8                      MOV ECX,EAX
0053914c  56                        PUSH ESI
0053914d  e8de744d00                CALL 0x00a10630
00539152  84c0                      TEST AL,AL
00539154  0f84ff070000              JZ 0x00539959
0053915a  eb06                      JMP 0x00539162
0053915c  8db73c030000              LEA ESI,[EDI + 0x33c]
00539162  f30f10155caaba00          MOVSS XMM2,dword ptr [0x00baaa5c]
0053916a  8bcf                      MOV ECX,EDI
0053916c  6a00                      PUSH 0x0
0053916e  e8adf91900                CALL 0x006d8b20
00539173  6a01                      PUSH 0x1
00539175  8bcf                      MOV ECX,EDI
00539177  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00539181  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0053918b  e8c0fe1900                CALL 0x006d9050
00539190  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
00539196  8bcf                      MOV ECX,EDI
00539198  50                        PUSH EAX
00539199  e892fb1900                CALL 0x006d8d30
0053919e  56                        PUSH ESI
0053919f  8bc8                      MOV ECX,EAX
005391a1  e88a744d00                CALL 0x00a10630
005391a6  84c0                      TEST AL,AL
005391a8  7432                      JZ 0x005391dc
005391aa  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
005391b0  8bcf                      MOV ECX,EDI
005391b2  50                        PUSH EAX
005391b3  e878fb1900                CALL 0x006d8d30
005391b8  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005391bc  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
005391c0  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
005391c8  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
005391cd  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
005391d2  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
005391da  eb18                      JMP 0x005391f4
005391dc  8b87200f0000              MOV EAX,dword ptr [EDI + 0xf20]
005391e2  8b8f240f0000              MOV ECX,dword ptr [EDI + 0xf24]
005391e8  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
005391ee  898df8feffff              MOV dword ptr [EBP + 0xfffffef8],ECX
005391f4  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
005391fa  f30f1010                  MOVSS XMM2,dword ptr [EAX]
005391fe  f30f106004                MOVSS XMM4,dword ptr [EAX + 0x4]
00539203  0f28ca                    MOVAPS XMM1,XMM2
00539206  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0053920d  0f28c4                    MOVAPS XMM0,XMM4
00539210  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00539217  0f2fc8                    COMISS XMM1,XMM0
0053921a  7659                      JBE 0x00539275
0053921c  817f28e3000000            CMP dword ptr [EDI + 0x28],0xe3
00539223  7522                      JNZ 0x00539247
00539225  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00539229  751c                      JNZ 0x00539247
0053922b  0f57c0                    XORPS XMM0,XMM0
0053922e  c685fffeffff00            MOV byte ptr [EBP + 0xfffffeff],0x0
00539235  0f2fc2                    COMISS XMM0,XMM2
00539238  b80c0ab600                MOV EAX,0xb60a0c
0053923d  b92008b600                MOV ECX,0xb60820
00539242  0f46c1                    CMOVBE EAX,ECX
00539245  eb12                      JMP 0x00539259
00539247  0f57c0                    XORPS XMM0,XMM0
0053924a  b84407b600                MOV EAX,0xb60744
0053924f  0f2fc2                    COMISS XMM0,XMM2
00539252  0f9785fffeffff            SETA byte ptr [EBP + 0xfffffeff]
00539259  6a00                      PUSH 0x0
0053925b  50                        PUSH EAX
0053925c  8d4f48                    LEA ECX,[EDI + 0x48]
0053925f  e81c11edff                CALL 0x0040a380
00539264  8a85fffeffff              MOV AL,byte ptr [EBP + 0xfffffeff]
0053926a  888748010000              MOV byte ptr [EDI + 0x148],AL
00539270  e9e4060000                JMP 0x00539959
00539275  0f2f25e49fba00            COMISS XMM4,dword ptr [0x00ba9fe4]
0053927c  8d4f48                    LEA ECX,[EDI + 0x48]
0053927f  6a00                      PUSH 0x0
00539281  0f86df020000              JBE 0x00539566
00539287  686807b600                PUSH 0xb60768
0053928c  e8ef10edff                CALL 0x0040a380
00539291  e9c3060000                JMP 0x00539959
00539296  ff7720                    PUSH dword ptr [EDI + 0x20]
00539299  6a03                      PUSH 0x3
0053929b  e870341700                CALL 0x006ac710
005392a0  84c0                      TEST AL,AL
005392a2  0f84b1060000              JZ 0x00539959
005392a8  817f348a030000            CMP dword ptr [EDI + 0x34],0x38a
005392af  0f84a4060000              JZ 0x00539959
005392b5  6a00                      PUSH 0x0
005392b7  68000a0001                PUSH 0x1000a00
005392bc  8bcf                      MOV ECX,EDI
005392be  e86de1edff                CALL 0x00417430
005392c3  84c0                      TEST AL,AL
005392c5  0f858e060000              JNZ 0x00539959
005392cb  6a00                      PUSH 0x0
005392cd  6800000020                PUSH 0x20000000
005392d2  8bcf                      MOV ECX,EDI
005392d4  e857e1edff                CALL 0x00417430
005392d9  84c0                      TEST AL,AL
005392db  7411                      JZ 0x005392ee
005392dd  8bcf                      MOV ECX,EDI
005392df  e85c551800                CALL 0x006be840
005392e4  83782801                  CMP dword ptr [EAX + 0x28],0x1
005392e8  0f846b060000              JZ 0x00539959
005392ee  a17816c700                MOV EAX,[0x00c71678]
005392f3  8bcf                      MOV ECX,EDI
005392f5  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005392fb  e840551800                CALL 0x006be840
00539300  8bcf                      MOV ECX,EDI
00539302  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0053930a  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
00539312  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0053931a  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
00539322  e819551800                CALL 0x006be840
00539327  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0053932f  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
00539337  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
0053933f  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
00539347  e8145c1b00                CALL 0x006eef60
0053934c  f30f108dd8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed8]
00539354  83ec0c                    SUB ESP,0xc
00539357  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0053935f  8bce                      MOV ECX,ESI
00539361  660f6ec0                  MOVD XMM0,EAX
00539365  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00539369  c1e81f                    SHR EAX,0x1f
0053936c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00539375  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
0053937d  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
00539383  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
0053938b  c704240000a041            MOV dword ptr [ESP],0x41a00000
00539392  50                        PUSH EAX
00539393  660f5ac0                  CVTPD2PS XMM0,XMM0
00539397  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0053939d  50                        PUSH EAX
0053939e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005393a6  f30f59055ca8ba00          MULSS XMM0,dword ptr [0x00baa85c]
005393ae  f30f59c8                  MULSS XMM1,XMM0
005393b2  f30f588de0feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffee0]
005393ba  f30f118ddcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM1
005393c2  f30f108de8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee8]
005393ca  f30f59c8                  MULSS XMM1,XMM0
005393ce  f30f588df0feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffef0]
005393d6  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
005393de  e86d9b2d00                CALL 0x00812f50
005393e3  a17816c700                MOV EAX,[0x00c71678]
005393e8  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
005393f0  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
005393f8  f30f102d7ca8ba00          MOVSS XMM5,dword ptr [0x00baa87c]
00539400  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00539406  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
0053940c  99                        CDQ
0053940d  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
00539410  f7f9                      IDIV ECX
00539412  660f6ee2                  MOVD XMM4,EDX
00539416  0f5be4                    CVTDQ2PS XMM4,XMM4
00539419  660f6ed0                  MOVD XMM2,EAX
0053941d  f30f59e0                  MULSS XMM4,XMM0
00539421  0f5bd2                    CVTDQ2PS XMM2,XMM2
00539424  f30f58e0                  ADDSS XMM4,XMM0
00539428  f30f59d0                  MULSS XMM2,XMM0
0053942c  f30f581500aaba00          ADDSS XMM2,dword ptr [0x00baaa00]
00539434  f30f11a5e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM4
0053943c  f30f5ca5ecfeffff          SUBSS XMM4,dword ptr [EBP + 0xfffffeec]
00539444  f30f1195e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM2
0053944c  f30f5c95f0feffff          SUBSS XMM2,dword ptr [EBP + 0xfffffef0]
00539454  0f28c4                    MOVAPS XMM0,XMM4
00539457  0f54c3                    ANDPS XMM0,XMM3
0053945a  0f2fe8                    COMISS XMM5,XMM0
0053945d  770f                      JA 0x0053946e
0053945f  0f28ca                    MOVAPS XMM1,XMM2
00539462  0f54cb                    ANDPS XMM1,XMM3
00539465  0f2fe9                    COMISS XMM5,XMM1
00539468  0f86eb040000              JBE 0x00539959
0053946e  f30f59d2                  MULSS XMM2,XMM2
00539472  f30f59e4                  MULSS XMM4,XMM4
00539476  f30f58d4                  ADDSS XMM2,XMM4
0053947a  0f28c2                    MOVAPS XMM0,XMM2
0053947d  e8cec5efff                CALL 0x00435a50
00539482  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
0053948a  0f2fc8                    COMISS XMM1,XMM0
0053948d  0f86c6040000              JBE 0x00539959
00539493  6a00                      PUSH 0x0
00539495  6a00                      PUSH 0x0
00539497  6a00                      PUSH 0x0
00539499  68e7030000                PUSH 0x3e7
0053949e  6a03                      PUSH 0x3
005394a0  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
005394a6  8bce                      MOV ECX,ESI
005394a8  50                        PUSH EAX
005394a9  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
005394af  50                        PUSH EAX
005394b0  e83b792b00                CALL 0x007f0df0
005394b5  84c0                      TEST AL,AL
005394b7  0f849c040000              JZ 0x00539959
005394bd  8bb5f8feffff              MOV ESI,dword ptr [EBP + 0xfffffef8]
005394c3  f30f109decfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffeec]
005394cb  f30f10a5f0feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffef0]
005394d3  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005394dd  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005394e7  f30f5c1e                  SUBSS XMM3,dword ptr [ESI]
005394eb  f30f5c6604                SUBSS XMM4,dword ptr [ESI + 0x4]
005394f0  0f28cb                    MOVAPS XMM1,XMM3
005394f3  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
005394fa  0f28c4                    MOVAPS XMM0,XMM4
005394fd  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00539504  0f2fc8                    COMISS XMM1,XMM0
00539507  0f8668fdffff              JBE 0x00539275
0053950d  817f28e3000000            CMP dword ptr [EDI + 0x28],0xe3
00539514  7522                      JNZ 0x00539538
00539516  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0053951a  751c                      JNZ 0x00539538
0053951c  0f57c0                    XORPS XMM0,XMM0
0053951f  c685fffeffff00            MOV byte ptr [EBP + 0xfffffeff],0x0
00539526  0f2fc3                    COMISS XMM0,XMM3
00539529  b80c0ab600                MOV EAX,0xb60a0c
0053952e  b92008b600                MOV ECX,0xb60820
00539533  0f46c1                    CMOVBE EAX,ECX
00539536  eb12                      JMP 0x0053954a
00539538  0f57c0                    XORPS XMM0,XMM0
0053953b  b84407b600                MOV EAX,0xb60744
00539540  0f2fc3                    COMISS XMM0,XMM3
00539543  0f9785fffeffff            SETA byte ptr [EBP + 0xfffffeff]
0053954a  6a00                      PUSH 0x0
0053954c  50                        PUSH EAX
0053954d  8d4f48                    LEA ECX,[EDI + 0x48]
00539550  e82b0eedff                CALL 0x0040a380
00539555  8a85fffeffff              MOV AL,byte ptr [EBP + 0xfffffeff]
0053955b  888748010000              MOV byte ptr [EDI + 0x148],AL
00539561  e9f3030000                JMP 0x00539959
00539566  685c07b600                PUSH 0xb6075c
0053956b  e8100eedff                CALL 0x0040a380
00539570  e9e4030000                JMP 0x00539959
00539575  83f808                    CMP EAX,0x8
00539578  0f85db030000              JNZ 0x00539959
0053957e  f30f10155caaba00          MOVSS XMM2,dword ptr [0x00baaa5c]
00539586  8bcf                      MOV ECX,EDI
00539588  6a00                      PUSH 0x0
0053958a  e891f51900                CALL 0x006d8b20
0053958f  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
00539595  8bcf                      MOV ECX,EDI
00539597  50                        PUSH EAX
00539598  e893f71900                CALL 0x006d8d30
0053959d  8db73c030000              LEA ESI,[EDI + 0x33c]
005395a3  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005395a7  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
005395ab  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
005395b0  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
005395b5  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
005395bc  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
005395c4  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
005395cc  9f                        LAHF
005395cd  f6c444                    TEST AH,0x44
005395d0  7a0d                      JP 0x005395df
005395d2  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
005395d9  9f                        LAHF
005395da  f6c444                    TEST AH,0x44
005395dd  7b23                      JNP 0x00539602
005395df  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
005395e5  50                        PUSH EAX
005395e6  8d8df4feffff              LEA ECX,[EBP + 0xfffffef4]
005395ec  e83f6a4d00                CALL 0x00a10030
005395f1  8b08                      MOV ECX,dword ptr [EAX]
005395f3  898f200f0000              MOV dword ptr [EDI + 0xf20],ECX
005395f9  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005395fc  8987240f0000              MOV dword ptr [EDI + 0xf24],EAX
00539602  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00539606  0f8497020000              JZ 0x005398a3
0053960c  68dcd2b100                PUSH 0xb1d2dc
00539611  8d4f78                    LEA ECX,[EDI + 0x78]
00539614  e8b717edff                CALL 0x0040add0
00539619  84c0                      TEST AL,AL
0053961b  0f846f020000              JZ 0x00539890
00539621  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00539628  741d                      JZ 0x00539647
0053962a  6840b6c700                PUSH 0xc7b640
0053962f  8d8f200f0000              LEA ECX,[EDI + 0xf20]
00539635  e8f66f4d00                CALL 0x00a10630
0053963a  84c0                      TEST AL,AL
0053963c  7409                      JZ 0x00539647
0053963e  51                        PUSH ECX
0053963f  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
00539645  eb3d                      JMP 0x00539684
00539647  8bcf                      MOV ECX,EDI
00539649  e8f2511800                CALL 0x006be840
0053964e  51                        PUSH ECX
0053964f  8d8df4feffff              LEA ECX,[EBP + 0xfffffef4]
00539655  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0053965d  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00539665  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0053966b  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0053966f  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00539674  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0053967c  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
00539684  c7042400002041            MOV dword ptr [ESP],0x41200000
0053968b  50                        PUSH EAX
0053968c  e86f6a4d00                CALL 0x00a10100
00539691  8bc8                      MOV ECX,EAX
00539693  8b01                      MOV EAX,dword ptr [ECX]
00539695  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
00539698  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
0053969e  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
005396a4  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
005396aa  e88158f0ff                CALL 0x0043ef30
005396af  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005396b2  c7459401000000            MOV dword ptr [EBP + -0x6c],0x1
005396b9  3d15010000                CMP EAX,0x115
005396be  7513                      JNZ 0x005396d3
005396c0  0f2805e0c3ba00            MOVAPS XMM0,xmmword ptr [0x00bac3e0]
005396c7  0f11852cffffff            MOVUPS xmmword ptr [EBP + 0xffffff2c],XMM0
005396ce  e985010000                JMP 0x00539858
005396d3  3de3000000                CMP EAX,0xe3
005396d8  0f857a010000              JNZ 0x00539858
005396de  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005396e2  0f8570010000              JNZ 0x00539858
005396e8  8bcf                      MOV ECX,EDI
005396ea  e851511800                CALL 0x006be840
005396ef  f30f100e                  MOVSS XMM1,dword ptr [ESI]
005396f3  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005396f8  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
00539700  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
00539708  f30f59c0                  MULSS XMM0,XMM0
0053970c  f30f59c9                  MULSS XMM1,XMM1
00539710  f30f58c1                  ADDSS XMM0,XMM1
00539714  e837c3efff                CALL 0x00435a50
00539719  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
0053971f  8bcf                      MOV ECX,EDI
00539721  50                        PUSH EAX
00539722  0f28c8                    MOVAPS XMM1,XMM0
00539725  e806f61900                CALL 0x006d8d30
0053972a  56                        PUSH ESI
0053972b  8bc8                      MOV ECX,EAX
0053972d  e8fe6e4d00                CALL 0x00a10630
00539732  84c0                      TEST AL,AL
00539734  7444                      JZ 0x0053977a
00539736  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
0053973c  8bcf                      MOV ECX,EDI
0053973e  50                        PUSH EAX
0053973f  e8ecf51900                CALL 0x006d8d30
00539744  f30f100e                  MOVSS XMM1,dword ptr [ESI]
00539748  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0053974d  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
00539752  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
00539756  f30f59c0                  MULSS XMM0,XMM0
0053975a  f30f59c9                  MULSS XMM1,XMM1
0053975e  f30f58c1                  ADDSS XMM0,XMM1
00539762  e8e9c2efff                CALL 0x00435a50
00539767  0f28c8                    MOVAPS XMM1,XMM0
0053976a  f30f5f0d7ca8ba00          MAXSS XMM1,dword ptr [0x00baa87c]
00539772  f30f5d0dd4aaba00          MINSS XMM1,dword ptr [0x00baaad4]
0053977a  f30f5e0d1ca8ba00          DIVSS XMM1,dword ptr [0x00baa81c]
00539782  c78558ffffff00000000      MOV dword ptr [EBP + 0xffffff58],0x0
0053978c  c7855cffffff00200000      MOV dword ptr [EBP + 0xffffff5c],0x2000
00539796  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
0053979e  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
005397a6  e8e5aefaff                CALL 0x004e4690
005397ab  f30f5c0554a4ba00          SUBSS XMM0,dword ptr [0x00baa454]
005397b3  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
005397b9  c785f0feffff0ad7233c      MOV dword ptr [EBP + 0xfffffef0],0x3c23d70a
005397c3  8db5f8feffff              LEA ESI,[EBP + 0xfffffef8]
005397c9  f30f5905bcadba00          MULSS XMM0,dword ptr [0x00baadbc]
005397d1  0f2f056ca0ba00            COMISS XMM0,dword ptr [0x00baa06c]
005397d8  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
005397e0  0f46f0                    CMOVBE ESI,EAX
005397e3  e878571b00                CALL 0x006eef60
005397e8  f30f109de8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee8]
005397f0  f30f5c1e                  SUBSS XMM3,dword ptr [ESI]
005397f4  c7850cffffff0000803f      MOV dword ptr [EBP + 0xffffff0c],0x3f800000
005397fe  660f6ec0                  MOVD XMM0,EAX
00539802  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00539806  c1e81f                    SHR EAX,0x1f
00539809  f30f591d2ca8ba00          MULSS XMM3,dword ptr [0x00baa82c]
00539811  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053981a  660f5ac8                  CVTPD2PS XMM1,XMM0
0053981e  f30f100568a8ba00          MOVSS XMM0,dword ptr [0x00baa868]
00539826  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0053982e  f30f5cc3                  SUBSS XMM0,XMM3
00539832  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
0053983a  f30f5e06                  DIVSS XMM0,dword ptr [ESI]
0053983e  8db73c030000              LEA ESI,[EDI + 0x33c]
00539844  f30f580da4a3ba00          ADDSS XMM1,dword ptr [0x00baa3a4]
0053984c  f30f59c8                  MULSS XMM1,XMM0
00539850  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
00539858  51                        PUSH ECX
00539859  c704240000803f            MOV dword ptr [ESP],0x3f800000
00539860  6a00                      PUSH 0x0
00539862  6a02                      PUSH 0x2
00539864  51                        PUSH ECX
00539865  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053986c  8bcf                      MOV ECX,EDI
0053986e  68f9000000                PUSH 0xf9
00539873  e828d31900                CALL 0x006d6ba0
00539878  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
0053987e  8bcf                      MOV ECX,EDI
00539880  50                        PUSH EAX
00539881  6a00                      PUSH 0x0
00539883  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
00539889  50                        PUSH EAX
0053988a  56                        PUSH ESI
0053988b  e8501a1900                CALL 0x006cb2e0
00539890  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00539894  740d                      JZ 0x005398a3
00539896  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053989d  0f859e000000              JNZ 0x00539941
005398a3  817f2815010000            CMP dword ptr [EDI + 0x28],0x115
005398aa  0f8587000000              JNZ 0x00539937
005398b0  83bf1004000002            CMP dword ptr [EDI + 0x410],0x2
005398b7  7d7e                      JGE 0x00539937
005398b9  8d45bc                    LEA EAX,[EBP + -0x44]
005398bc  8d4f78                    LEA ECX,[EDI + 0x78]
005398bf  50                        PUSH EAX
005398c0  e82b93f1ff                CALL 0x00452bf0
005398c5  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
005398cc  83781410                  CMP dword ptr [EAX + 0x14],0x10
005398d0  7202                      JC 0x005398d4
005398d2  8b00                      MOV EAX,dword ptr [EAX]
005398d4  6a01                      PUSH 0x1
005398d6  50                        PUSH EAX
005398d7  8d4f48                    LEA ECX,[EDI + 0x48]
005398da  e8f10cedff                CALL 0x0040a5d0
005398df  84c0                      TEST AL,AL
005398e1  740f                      JZ 0x005398f2
005398e3  8d4f78                    LEA ECX,[EDI + 0x78]
005398e6  e8c508edff                CALL 0x0040a1b0
005398eb  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
005398f2  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005398f9  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
005398fc  83fa10                    CMP EDX,0x10
005398ff  722e                      JC 0x0053992f
00539901  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00539904  42                        INC EDX
00539905  8bc1                      MOV EAX,ECX
00539907  81fa00100000              CMP EDX,0x1000
0053990d  7216                      JC 0x00539925
0053990f  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00539912  83c223                    ADD EDX,0x23
00539915  2bc1                      SUB EAX,ECX
00539917  83c0fc                    ADD EAX,-0x4
0053991a  83f81f                    CMP EAX,0x1f
0053991d  7606                      JBE 0x00539925
0053991f  ff159488b100              CALL dword ptr [0x00b18894]
00539925  52                        PUSH EDX
00539926  51                        PUSH ECX
00539927  e830585b00                CALL 0x00aef15c
0053992c  83c408                    ADD ESP,0x8
0053992f  ff8710040000              INC dword ptr [EDI + 0x410]
00539935  eb0a                      JMP 0x00539941
00539937  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00539941  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00539949  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
00539951  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00539959  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00539960  0f84f3010000              JZ 0x00539b59
00539966  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00539969  3de2000000                CMP EAX,0xe2
0053996e  0f8554010000              JNZ 0x00539ac8
00539974  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00539978  0f85db010000              JNZ 0x00539b59
0053997e  e8dd551b00                CALL 0x006eef60
00539983  a801                      TEST AL,0x1
00539985  7547                      JNZ 0x005399ce
00539987  51                        PUSH ECX
00539988  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053998f  6a00                      PUSH 0x0
00539991  6a02                      PUSH 0x2
00539993  51                        PUSH ECX
00539994  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053999b  8bcf                      MOV ECX,EDI
0053999d  6a73                      PUSH 0x73
0053999f  e8fcd11900                CALL 0x006d6ba0
005399a4  6aff                      PUSH -0x1
005399a6  6a00                      PUSH 0x0
005399a8  6a00                      PUSH 0x0
005399aa  68e3000000                PUSH 0xe3
005399af  8bcf                      MOV ECX,EDI
005399b1  e87a751800                CALL 0x006c0f30
005399b6  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
005399bc  898780030000              MOV dword ptr [EDI + 0x380],EAX
005399c2  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
005399c9  e98b010000                JMP 0x00539b59
005399ce  6683bf760c000000          CMP word ptr [EDI + 0xc76],0x0
005399d6  0f857d010000              JNZ 0x00539b59
005399dc  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
005399e2  50                        PUSH EAX
005399e3  e888561400                CALL 0x0067f070
005399e8  83c404                    ADD ESP,0x4
005399eb  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005399ef  f30f58c0                  ADDSS XMM0,XMM0
005399f3  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
005399fb  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00539a03  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00539a08  f30f58c0                  ADDSS XMM0,XMM0
00539a0c  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
00539a14  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
00539a1c  e83f551b00                CALL 0x006eef60
00539a21  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00539a27  8db73c030000              LEA ESI,[EDI + 0x33c]
00539a2d  50                        PUSH EAX
00539a2e  6a00                      PUSH 0x0
00539a30  57                        PUSH EDI
00539a31  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
00539a37  50                        PUSH EAX
00539a38  56                        PUSH ESI
00539a39  6a00                      PUSH 0x0
00539a3b  6a12                      PUSH 0x12
00539a3d  e8def0eeff                CALL 0x00428b20
00539a42  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00539a48  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00539a4f  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00539a55  e806551b00                CALL 0x006eef60
00539a5a  a801                      TEST AL,0x1
00539a5c  0f85f7000000              JNZ 0x00539b59
00539a62  e8f9541b00                CALL 0x006eef60
00539a67  f30f108df8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef8]
00539a6f  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00539a76  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00539a7c  50                        PUSH EAX
00539a7d  6a00                      PUSH 0x0
00539a7f  57                        PUSH EDI
00539a80  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
00539a86  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
00539a8e  f30f108df0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef0]
00539a96  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00539a9d  50                        PUSH EAX
00539a9e  56                        PUSH ESI
00539a9f  6a00                      PUSH 0x0
00539aa1  6a12                      PUSH 0x12
00539aa3  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
00539aab  e870f0eeff                CALL 0x00428b20
00539ab0  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00539ab6  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00539abd  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00539ac3  e991000000                JMP 0x00539b59
00539ac8  3d15010000                CMP EAX,0x115
00539acd  0f8586000000              JNZ 0x00539b59
00539ad3  6a00                      PUSH 0x0
00539ad5  6800000001                PUSH 0x1000000
00539ada  8bcf                      MOV ECX,EDI
00539adc  e84fd9edff                CALL 0x00417430
00539ae1  84c0                      TEST AL,AL
00539ae3  7574                      JNZ 0x00539b59
00539ae5  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
00539aec  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00539af2  8db73c030000              LEA ESI,[EDI + 0x33c]
00539af8  6a00                      PUSH 0x0
00539afa  6a00                      PUSH 0x0
00539afc  6a04                      PUSH 0x4
00539afe  83ec10                    SUB ESP,0x10
00539b01  8bc4                      MOV EAX,ESP
00539b03  57                        PUSH EDI
00539b04  6a01                      PUSH 0x1
00539b06  83ec08                    SUB ESP,0x8
00539b09  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
00539b0c  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
00539b14  c7042400002042            MOV dword ptr [ESP],0x42200000
00539b1b  56                        PUSH ESI
00539b1c  e87f571c00                CALL 0x006ff2a0
00539b21  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00539b29  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00539b2f  6a00                      PUSH 0x0
00539b31  56                        PUSH ESI
00539b32  e859961c00                CALL 0x00703190
00539b37  e824541b00                CALL 0x006eef60
00539b3c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00539b42  50                        PUSH EAX
00539b43  6a00                      PUSH 0x0
00539b45  6a00                      PUSH 0x0
00539b47  6840b6c700                PUSH 0xc7b640
00539b4c  56                        PUSH ESI
00539b4d  6a01                      PUSH 0x1
00539b4f  68e8030000                PUSH 0x3e8
00539b54  e8c7efeeff                CALL 0x00428b20
00539b59  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00539b61  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00539b69  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00539b71  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00539b74  64890d00000000            MOV dword ptr FS:[0x0],ECX
00539b7b  59                        POP ECX
00539b7c  5f                        POP EDI
00539b7d  5e                        POP ESI
00539b7e  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00539b81  33cd                      XOR ECX,EBP
00539b83  e8a3555b00                CALL 0x00aef12b
00539b88  8be5                      MOV ESP,EBP
00539b8a  5d                        POP EBP
00539b8b  8be3                      MOV ESP,EBX
00539b8d  5b                        POP EBX
00539b8e  c3                        RET
