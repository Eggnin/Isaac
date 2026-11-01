; J460 NPC AI 0x0045cd60 AI_0045cd60
; types=82,83
; identities=82.0.0,83.0.0
; entry=0045cd60
0045cd60  53                        PUSH EBX
0045cd61  8bdc                      MOV EBX,ESP
0045cd63  83ec08                    SUB ESP,0x8
0045cd66  83e4f8                    AND ESP,0xfffffff8
0045cd69  83c404                    ADD ESP,0x4
0045cd6c  55                        PUSH EBP
0045cd6d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0045cd70  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0045cd74  8bec                      MOV EBP,ESP
0045cd76  6aff                      PUSH -0x1
0045cd78  686526af00                PUSH 0xaf2665
0045cd7d  64a100000000              MOV EAX,FS:[0x0]
0045cd83  50                        PUSH EAX
0045cd84  53                        PUSH EBX
0045cd85  81eca8010000              SUB ESP,0x1a8
0045cd8b  a1b493bf00                MOV EAX,[0x00bf93b4]
0045cd90  33c5                      XOR EAX,EBP
0045cd92  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0045cd95  56                        PUSH ESI
0045cd96  57                        PUSH EDI
0045cd97  50                        PUSH EAX
0045cd98  8d45f4                    LEA EAX,[EBP + -0xc]
0045cd9b  64a300000000              MOV FS:[0x0],EAX
0045cda1  8bf9                      MOV EDI,ECX
0045cda3  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0045cda9  85c9                      TEST ECX,ECX
0045cdab  0f84f6090000              JZ 0x0045d7a7
0045cdb1  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0045cdb4  83f852                    CMP EAX,0x52
0045cdb7  0f853c030000              JNZ 0x0045d0f9
0045cdbd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0045cdc5  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0045cdcd  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0045cdd5  83f904                    CMP ECX,0x4
0045cdd8  0f8579010000              JNZ 0x0045cf57
0045cdde  8d8f14040000              LEA ECX,[EDI + 0x414]
0045cde4  6a00                      PUSH 0x0
0045cde6  51                        PUSH ECX
0045cde7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045cdee  e84d853800                CALL 0x007e5340
0045cdf3  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0045cdfa  c745e404000000            MOV dword ptr [EBP + -0x1c],0x4
0045ce01  c745d457616c6b            MOV dword ptr [EBP + -0x2c],0x6b6c6157
0045ce08  c645d800                  MOV byte ptr [EBP + -0x28],0x0
0045ce0c  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0045ce13  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0045ce1a  c745cc04000000            MOV dword ptr [EBP + -0x34],0x4
0045ce21  c745bc57616c6b            MOV dword ptr [EBP + -0x44],0x6b6c6157
0045ce28  c645c000                  MOV byte ptr [EBP + -0x40],0x0
0045ce2c  51                        PUSH ECX
0045ce2d  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0045ce31  8d45d4                    LEA EAX,[EBP + -0x2c]
0045ce34  c7042400004040            MOV dword ptr [ESP],0x40400000
0045ce3b  8bcf                      MOV ECX,EDI
0045ce3d  50                        PUSH EAX
0045ce3e  8d45bc                    LEA EAX,[EBP + -0x44]
0045ce41  50                        PUSH EAX
0045ce42  e8e9442600                CALL 0x006c1330
0045ce47  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0045ce4b  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0045ce4e  83fa10                    CMP EDX,0x10
0045ce51  7228                      JC 0x0045ce7b
0045ce53  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0045ce56  42                        INC EDX
0045ce57  8bc1                      MOV EAX,ECX
0045ce59  81fa00100000              CMP EDX,0x1000
0045ce5f  7210                      JC 0x0045ce71
0045ce61  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0045ce64  83c223                    ADD EDX,0x23
0045ce67  2bc1                      SUB EAX,ECX
0045ce69  83c0fc                    ADD EAX,-0x4
0045ce6c  83f81f                    CMP EAX,0x1f
0045ce6f  7749                      JA 0x0045ceba
0045ce71  52                        PUSH EDX
0045ce72  51                        PUSH ECX
0045ce73  e8e4226900                CALL 0x00aef15c
0045ce78  83c408                    ADD ESP,0x8
0045ce7b  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0045ce82  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0045ce85  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
0045ce8c  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0045ce93  c645bc00                  MOV byte ptr [EBP + -0x44],0x0
0045ce97  83fa10                    CMP EDX,0x10
0045ce9a  722e                      JC 0x0045ceca
0045ce9c  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0045ce9f  42                        INC EDX
0045cea0  8bc1                      MOV EAX,ECX
0045cea2  81fa00100000              CMP EDX,0x1000
0045cea8  7216                      JC 0x0045cec0
0045ceaa  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0045cead  83c223                    ADD EDX,0x23
0045ceb0  2bc1                      SUB EAX,ECX
0045ceb2  83c0fc                    ADD EAX,-0x4
0045ceb5  83f81f                    CMP EAX,0x1f
0045ceb8  7606                      JBE 0x0045cec0
0045ceba  ff159488b100              CALL dword ptr [0x00b18894]
0045cec0  52                        PUSH EDX
0045cec1  51                        PUSH ECX
0045cec2  e895226900                CALL 0x00aef15c
0045cec7  83c408                    ADD ESP,0x8
0045ceca  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0045ced0  33c0                      XOR EAX,EAX
0045ced2  81e100000010              AND ECX,0x10000000
0045ced8  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0045cedf  0bc1                      OR EAX,ECX
0045cee1  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0045cee8  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0045ceec  7418                      JZ 0x0045cf06
0045ceee  a17816c700                MOV EAX,[0x00c71678]
0045cef3  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045cef9  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0045cefc  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0045cf00  0f85ab080000              JNZ 0x0045d7b1
0045cf06  e855202900                CALL 0x006eef60
0045cf0b  33d2                      XOR EDX,EDX
0045cf0d  b928000000                MOV ECX,0x28
0045cf12  f7f1                      DIV ECX
0045cf14  85d2                      TEST EDX,EDX
0045cf16  0f8595080000              JNZ 0x0045d7b1
0045cf1c  6a01                      PUSH 0x1
0045cf1e  6854ddb100                PUSH 0xb1dd54
0045cf23  8d4f48                    LEA ECX,[EDI + 0x48]
0045cf26  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0045cf30  899710040000              MOV dword ptr [EDI + 0x410],EDX
0045cf36  e895d6faff                CALL 0x0040a5d0
0045cf3b  84c0                      TEST AL,AL
0045cf3d  0f846e080000              JZ 0x0045d7b1
0045cf43  8d4f78                    LEA ECX,[EDI + 0x78]
0045cf46  e865d2faff                CALL 0x0040a1b0
0045cf4b  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0045cf52  e95a080000                JMP 0x0045d7b1
0045cf57  83f908                    CMP ECX,0x8
0045cf5a  0f8551080000              JNZ 0x0045d7b1
0045cf60  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0045cf66  8d4801                    LEA ECX,[EAX + 0x1]
0045cf69  898f10040000              MOV dword ptr [EDI + 0x410],ECX
0045cf6f  83f809                    CMP EAX,0x9
0045cf72  0f859a050000              JNZ 0x0045d512
0045cf78  51                        PUSH ECX
0045cf79  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045cf80  6a00                      PUSH 0x0
0045cf82  6a02                      PUSH 0x2
0045cf84  51                        PUSH ECX
0045cf85  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045cf8c  8bcf                      MOV ECX,EDI
0045cf8e  68d5000000                PUSH 0xd5
0045cf93  e8089c2700                CALL 0x006d6ba0
0045cf98  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
0045cf9e  e88d1ffeff                CALL 0x0043ef30
0045cfa3  8bcf                      MOV ECX,EDI
0045cfa5  8bf0                      MOV ESI,EAX
0045cfa7  e894182600                CALL 0x006be840
0045cfac  56                        PUSH ESI
0045cfad  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0045cfb3  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
0045cfb9  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0045cfbf  51                        PUSH ECX
0045cfc0  c7042400002041            MOV dword ptr [ESP],0x41200000
0045cfc7  50                        PUSH EAX
0045cfc8  898d60feffff              MOV dword ptr [EBP + 0xfffffe60],ECX
0045cfce  8bcf                      MOV ECX,EDI
0045cfd0  6a01                      PUSH 0x1
0045cfd2  899564feffff              MOV dword ptr [EBP + 0xfffffe64],EDX
0045cfd8  e8f3fd2600                CALL 0x006ccdd0
0045cfdd  8bd0                      MOV EDX,EAX
0045cfdf  f30f108218040000          MOVSS XMM0,dword ptr [EDX + 0x418]
0045cfe7  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
0045cfef  f30f108a60030000          MOVSS XMM1,dword ptr [EDX + 0x360]
0045cff7  f30f109264030000          MOVSS XMM2,dword ptr [EDX + 0x364]
0045cfff  f30f590de4a2ba00          MULSS XMM1,dword ptr [0x00baa2e4]
0045d007  8b8a3c040000              MOV ECX,dword ptr [EDX + 0x43c]
0045d00d  f30f5915e4a2ba00          MULSS XMM2,dword ptr [0x00baa2e4]
0045d015  818a3804000002010000      OR dword ptr [EDX + 0x438],0x102
0045d01f  f30f118218040000          MOVSS dword ptr [EDX + 0x418],XMM0
0045d027  f30f108214040000          MOVSS XMM0,dword ptr [EDX + 0x414]
0045d02f  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0045d037  898a3c040000              MOV dword ptr [EDX + 0x43c],ECX
0045d03d  c78220040000cdcccc3f      MOV dword ptr [EDX + 0x420],0x3fcccccd
0045d047  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
0045d04f  f30f118214040000          MOVSS dword ptr [EDX + 0x414],XMM0
0045d057  f30f108210040000          MOVSS XMM0,dword ptr [EDX + 0x410]
0045d05f  f30f5c05c0a8ba00          SUBSS XMM0,dword ptr [0x00baa8c0]
0045d067  f30f118210040000          MOVSS dword ptr [EDX + 0x410],XMM0
0045d06f  f30f118a60030000          MOVSS dword ptr [EDX + 0x360],XMM1
0045d077  f30f119264030000          MOVSS dword ptr [EDX + 0x364],XMM2
0045d07f  8a8f48010000              MOV CL,byte ptr [EDI + 0x148]
0045d085  f30f10823c030000          MOVSS XMM0,dword ptr [EDX + 0x33c]
0045d08d  f30f108a40030000          MOVSS XMM1,dword ptr [EDX + 0x340]
0045d095  84c9                      TEST CL,CL
0045d097  7416                      JZ 0x0045d0af
0045d099  c78550feffff000020c1      MOV dword ptr [EBP + 0xfffffe50],0xc1200000
0045d0a3  c78554feffff00000000      MOV dword ptr [EBP + 0xfffffe54],0x0
0045d0ad  eb14                      JMP 0x0045d0c3
0045d0af  c78560feffff00002041      MOV dword ptr [EBP + 0xfffffe60],0x41200000
0045d0b9  c78564feffff00000000      MOV dword ptr [EBP + 0xfffffe64],0x0
0045d0c3  84c9                      TEST CL,CL
0045d0c5  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0045d0cb  8db550feffff              LEA ESI,[EBP + 0xfffffe50]
0045d0d1  8bca                      MOV ECX,EDX
0045d0d3  0f45c6                    CMOVNZ EAX,ESI
0045d0d6  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0045d0da  f30f584804                ADDSS XMM1,dword ptr [EAX + 0x4]
0045d0df  8b02                      MOV EAX,dword ptr [EDX]
0045d0e1  f30f11823c030000          MOVSS dword ptr [EDX + 0x33c],XMM0
0045d0e9  f30f118a40030000          MOVSS dword ptr [EDX + 0x340],XMM1
0045d0f1  ff500c                    CALL dword ptr [EAX + 0xc]
0045d0f4  e9b8060000                JMP 0x0045d7b1
0045d0f9  83f853                    CMP EAX,0x53
0045d0fc  0f85af060000              JNZ 0x0045d7b1
0045d102  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0045d107  0f57ed                    XORPS XMM5,XMM5
0045d10a  0f2fc5                    COMISS XMM0,XMM5
0045d10d  7622                      JBE 0x0045d131
0045d10f  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0045d112  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0045d115  741a                      JZ 0x0045d131
0045d117  83781052                  CMP dword ptr [EAX + 0x10],0x52
0045d11b  7506                      JNZ 0x0045d123
0045d11d  c70000000000              MOV dword ptr [EAX],0x0
0045d123  83c038                    ADD EAX,0x38
0045d126  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0045d129  75ec                      JNZ 0x0045d117
0045d12b  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0045d131  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0045d139  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0045d141  c7878401000002000000      MOV dword ptr [EDI + 0x184],0x2
0045d14b  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0045d153  83f908                    CMP ECX,0x8
0045d156  0f84c4030000              JZ 0x0045d520
0045d15c  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0045d166  83f904                    CMP ECX,0x4
0045d169  0f858b020000              JNZ 0x0045d3fa
0045d16f  8d8f14040000              LEA ECX,[EDI + 0x414]
0045d175  6a00                      PUSH 0x0
0045d177  e8d4943800                CALL 0x007e6650
0045d17c  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0045d183  c745cc04000000            MOV dword ptr [EBP + -0x34],0x4
0045d18a  c745bc57616c6b            MOV dword ptr [EBP + -0x44],0x6b6c6157
0045d191  c645c000                  MOV byte ptr [EBP + -0x40],0x0
0045d195  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0045d19c  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0045d1a3  c745e404000000            MOV dword ptr [EBP + -0x1c],0x4
0045d1aa  c745d457616c6b            MOV dword ptr [EBP + -0x2c],0x6b6c6157
0045d1b1  c645d800                  MOV byte ptr [EBP + -0x28],0x0
0045d1b5  51                        PUSH ECX
0045d1b6  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
0045d1ba  8d45bc                    LEA EAX,[EBP + -0x44]
0045d1bd  c7042400000040            MOV dword ptr [ESP],0x40000000
0045d1c4  8bcf                      MOV ECX,EDI
0045d1c6  50                        PUSH EAX
0045d1c7  8d45d4                    LEA EAX,[EBP + -0x2c]
0045d1ca  50                        PUSH EAX
0045d1cb  e860412600                CALL 0x006c1330
0045d1d0  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
0045d1d4  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0045d1d7  83fa10                    CMP EDX,0x10
0045d1da  7228                      JC 0x0045d204
0045d1dc  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0045d1df  42                        INC EDX
0045d1e0  8bc1                      MOV EAX,ECX
0045d1e2  81fa00100000              CMP EDX,0x1000
0045d1e8  7210                      JC 0x0045d1fa
0045d1ea  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0045d1ed  83c223                    ADD EDX,0x23
0045d1f0  2bc1                      SUB EAX,ECX
0045d1f2  83c0fc                    ADD EAX,-0x4
0045d1f5  83f81f                    CMP EAX,0x1f
0045d1f8  7749                      JA 0x0045d243
0045d1fa  52                        PUSH EDX
0045d1fb  51                        PUSH ECX
0045d1fc  e85b1f6900                CALL 0x00aef15c
0045d201  83c408                    ADD ESP,0x8
0045d204  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0045d20b  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0045d20e  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0045d215  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0045d21c  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0045d220  83fa10                    CMP EDX,0x10
0045d223  722e                      JC 0x0045d253
0045d225  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0045d228  42                        INC EDX
0045d229  8bc1                      MOV EAX,ECX
0045d22b  81fa00100000              CMP EDX,0x1000
0045d231  7216                      JC 0x0045d249
0045d233  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0045d236  83c223                    ADD EDX,0x23
0045d239  2bc1                      SUB EAX,ECX
0045d23b  83c0fc                    ADD EAX,-0x4
0045d23e  83f81f                    CMP EAX,0x1f
0045d241  7606                      JBE 0x0045d249
0045d243  ff159488b100              CALL dword ptr [0x00b18894]
0045d249  52                        PUSH EDX
0045d24a  51                        PUSH ECX
0045d24b  e80c1f6900                CALL 0x00aef15c
0045d250  83c408                    ADD ESP,0x8
0045d253  51                        PUSH ECX
0045d254  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0045d25a  c7042400000000            MOV dword ptr [ESP],0x0
0045d261  50                        PUSH EAX
0045d262  8bcf                      MOV ECX,EDI
0045d264  e8d7192600                CALL 0x006bec40
0045d269  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0045d26d  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0045d275  f30f118558feffff          MOVSS dword ptr [EBP + 0xfffffe58],XMM0
0045d27d  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0045d282  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0045d28a  f30f11855cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM0
0045d292  e8c91c2900                CALL 0x006eef60
0045d297  33d2                      XOR EDX,EDX
0045d299  b91e000000                MOV ECX,0x1e
0045d29e  f7f1                      DIV ECX
0045d2a0  85d2                      TEST EDX,EDX
0045d2a2  756d                      JNZ 0x0045d311
0045d2a4  f30f108d5cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe5c]
0045d2ac  f30f108558feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe58]
0045d2b4  f30f59c0                  MULSS XMM0,XMM0
0045d2b8  f30f59c9                  MULSS XMM1,XMM1
0045d2bc  f30f58c1                  ADDSS XMM0,XMM1
0045d2c0  e88b87fdff                CALL 0x00435a50
0045d2c5  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
0045d2cd  0f2fc8                    COMISS XMM1,XMM0
0045d2d0  763f                      JBE 0x0045d311
0045d2d2  6a01                      PUSH 0x1
0045d2d4  6854ddb100                PUSH 0xb1dd54
0045d2d9  8d4f48                    LEA ECX,[EDI + 0x48]
0045d2dc  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0045d2e6  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045d2f0  e8dbd2faff                CALL 0x0040a5d0
0045d2f5  84c0                      TEST AL,AL
0045d2f7  0f84b4040000              JZ 0x0045d7b1
0045d2fd  8d4f78                    LEA ECX,[EDI + 0x78]
0045d300  e8abcefaff                CALL 0x0040a1b0
0045d305  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0045d30c  e9a0040000                JMP 0x0045d7b1
0045d311  e84a1c2900                CALL 0x006eef60
0045d316  33d2                      XOR EDX,EDX
0045d318  b978000000                MOV ECX,0x78
0045d31d  f7f1                      DIV ECX
0045d31f  85d2                      TEST EDX,EDX
0045d321  7436                      JZ 0x0045d359
0045d323  f30f108d5cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe5c]
0045d32b  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0045d332  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
0045d33a  0f2fc1                    COMISS XMM0,XMM1
0045d33d  0f866e040000              JBE 0x0045d7b1
0045d343  e8181c2900                CALL 0x006eef60
0045d348  33d2                      XOR EDX,EDX
0045d34a  b950000000                MOV ECX,0x50
0045d34f  f7f1                      DIV ECX
0045d351  85d2                      TEST EDX,EDX
0045d353  0f8558040000              JNZ 0x0045d7b1
0045d359  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0045d35f  25000a0001                AND EAX,0x1000a00
0045d364  83c800                    OR EAX,0x0
0045d367  0f8544040000              JNZ 0x0045d7b1
0045d36d  51                        PUSH ECX
0045d36e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045d375  50                        PUSH EAX
0045d376  6a02                      PUSH 0x2
0045d378  51                        PUSH ECX
0045d379  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045d380  8bcf                      MOV ECX,EDI
0045d382  6a77                      PUSH 0x77
0045d384  e817982700                CALL 0x006d6ba0
0045d389  0f57c0                    XORPS XMM0,XMM0
0045d38c  8d4f48                    LEA ECX,[EDI + 0x48]
0045d38f  0f2f8558feffff            COMISS XMM0,dword ptr [EBP + 0xfffffe58]
0045d396  6a01                      PUSH 0x1
0045d398  6868d6b100                PUSH 0xb1d668
0045d39d  0f97c0                    SETA AL
0045d3a0  888748010000              MOV byte ptr [EDI + 0x148],AL
0045d3a6  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0045d3b0  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0045d3b6  898734030000              MOV dword ptr [EDI + 0x334],EAX
0045d3bc  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0045d3c2  898738030000              MOV dword ptr [EDI + 0x338],EAX
0045d3c8  e803d2faff                CALL 0x0040a5d0
0045d3cd  84c0                      TEST AL,AL
0045d3cf  740f                      JZ 0x0045d3e0
0045d3d1  8d4f78                    LEA ECX,[EDI + 0x78]
0045d3d4  e8d7cdfaff                CALL 0x0040a1b0
0045d3d9  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0045d3e0  e87b1b2900                CALL 0x006eef60
0045d3e5  33d2                      XOR EDX,EDX
0045d3e7  b903000000                MOV ECX,0x3
0045d3ec  f7f1                      DIV ECX
0045d3ee  42                        INC EDX
0045d3ef  899710040000              MOV dword ptr [EDI + 0x410],EDX
0045d3f5  e9b7030000                JMP 0x0045d7b1
0045d3fa  83f909                    CMP ECX,0x9
0045d3fd  0f85ae030000              JNZ 0x0045d7b1
0045d403  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0045d409  8d4801                    LEA ECX,[EAX + 0x1]
0045d40c  898f10040000              MOV dword ptr [EDI + 0x410],ECX
0045d412  83f80d                    CMP EAX,0xd
0045d415  0f85f7000000              JNZ 0x0045d512
0045d41b  51                        PUSH ECX
0045d41c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045d423  6a00                      PUSH 0x0
0045d425  6a02                      PUSH 0x2
0045d427  51                        PUSH ECX
0045d428  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045d42f  8bcf                      MOV ECX,EDI
0045d431  6a6c                      PUSH 0x6c
0045d433  e868972700                CALL 0x006d6ba0
0045d438  8bcf                      MOV ECX,EDI
0045d43a  e801142600                CALL 0x006be840
0045d43f  8bcf                      MOV ECX,EDI
0045d441  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0045d449  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
0045d451  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0045d459  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
0045d461  e8da132600                CALL 0x006be840
0045d466  8db73c030000              LEA ESI,[EDI + 0x33c]
0045d46c  8d8d60feffff              LEA ECX,[EBP + 0xfffffe60]
0045d472  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
0045d47a  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
0045d482  8d8550feffff              LEA EAX,[EBP + 0xfffffe50]
0045d488  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0045d490  50                        PUSH EAX
0045d491  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
0045d499  f30f588d64feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffe64]
0045d4a1  f30f589554feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffe54]
0045d4a9  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0045d4ad  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
0045d4b2  f30f118d60feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM1
0045d4ba  f30f119564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM2
0045d4c2  e8692b5b00                CALL 0x00a10030
0045d4c7  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
0045d4cd  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0045d4d2  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0045d4d6  f30f591508a8ba00          MULSS XMM2,dword ptr [0x00baa808]
0045d4de  f30f590508a8ba00          MULSS XMM0,dword ptr [0x00baa808]
0045d4e6  f30f11954cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM2
0045d4ee  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0045d4f6  e8351afeff                CALL 0x0043ef30
0045d4fb  50                        PUSH EAX
0045d4fc  6a02                      PUSH 0x2
0045d4fe  8d8548feffff              LEA EAX,[EBP + 0xfffffe48]
0045d504  8bcf                      MOV ECX,EDI
0045d506  50                        PUSH EAX
0045d507  56                        PUSH ESI
0045d508  e8d3dd2600                CALL 0x006cb2e0
0045d50d  e99f020000                JMP 0x0045d7b1
0045d512  83f91e                    CMP ECX,0x1e
0045d515  0f8e96020000              JLE 0x0045d7b1
0045d51b  e987020000                JMP 0x0045d7a7
0045d520  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045d524  a17816c700                MOV EAX,[0x00c71678]
0045d529  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045d52f  f30f106014                MOVSS XMM4,dword ptr [EAX + 0x14]
0045d534  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
0045d539  f30f10781c                MOVSS XMM7,dword ptr [EAX + 0x1c]
0045d53e  f30f107020                MOVSS XMM6,dword ptr [EAX + 0x20]
0045d543  f30f11a558feffff          MOVSS dword ptr [EBP + 0xfffffe58],XMM4
0045d54b  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
0045d553  f30f11bd54feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM7
0045d55b  f30f11b55cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM6
0045d563  0f8448020000              JZ 0x0045d7b1
0045d569  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045d570  0f85d1000000              JNZ 0x0045d647
0045d576  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0045d579  83781410                  CMP dword ptr [EAX + 0x14],0x10
0045d57d  7202                      JC 0x0045d581
0045d57f  8b00                      MOV EAX,dword ptr [EAX]
0045d581  b968d6b100                MOV ECX,0xb1d668
0045d586  8a10                      MOV DL,byte ptr [EAX]
0045d588  3a11                      CMP DL,byte ptr [ECX]
0045d58a  751a                      JNZ 0x0045d5a6
0045d58c  84d2                      TEST DL,DL
0045d58e  7412                      JZ 0x0045d5a2
0045d590  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045d593  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045d596  750e                      JNZ 0x0045d5a6
0045d598  83c002                    ADD EAX,0x2
0045d59b  83c102                    ADD ECX,0x2
0045d59e  84d2                      TEST DL,DL
0045d5a0  75e4                      JNZ 0x0045d586
0045d5a2  33c0                      XOR EAX,EAX
0045d5a4  eb05                      JMP 0x0045d5ab
0045d5a6  1bc0                      SBB EAX,EAX
0045d5a8  83c801                    OR EAX,0x1
0045d5ab  85c0                      TEST EAX,EAX
0045d5ad  0f8594000000              JNZ 0x0045d647
0045d5b3  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0045d5b6  85f6                      TEST ESI,ESI
0045d5b8  7451                      JZ 0x0045d60b
0045d5ba  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0045d5be  8bc6                      MOV EAX,ESI
0045d5c0  7202                      JC 0x0045d5c4
0045d5c2  8b06                      MOV EAX,dword ptr [ESI]
0045d5c4  b9a4ddb100                MOV ECX,0xb1dda4
0045d5c9  0f1f8000000000            NOP dword ptr [EAX]
0045d5d0  8a10                      MOV DL,byte ptr [EAX]
0045d5d2  3a11                      CMP DL,byte ptr [ECX]
0045d5d4  751a                      JNZ 0x0045d5f0
0045d5d6  84d2                      TEST DL,DL
0045d5d8  7412                      JZ 0x0045d5ec
0045d5da  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045d5dd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045d5e0  750e                      JNZ 0x0045d5f0
0045d5e2  83c002                    ADD EAX,0x2
0045d5e5  83c102                    ADD ECX,0x2
0045d5e8  84d2                      TEST DL,DL
0045d5ea  75e4                      JNZ 0x0045d5d0
0045d5ec  33c0                      XOR EAX,EAX
0045d5ee  eb05                      JMP 0x0045d5f5
0045d5f0  1bc0                      SBB EAX,EAX
0045d5f2  83c801                    OR EAX,0x1
0045d5f5  85c0                      TEST EAX,EAX
0045d5f7  7512                      JNZ 0x0045d60b
0045d5f9  384634                    CMP byte ptr [ESI + 0x34],AL
0045d5fc  7449                      JZ 0x0045d647
0045d5fe  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0045d604  8d7748                    LEA ESI,[EDI + 0x48]
0045d607  753e                      JNZ 0x0045d647
0045d609  eb03                      JMP 0x0045d60e
0045d60b  8d7748                    LEA ESI,[EDI + 0x48]
0045d60e  6a01                      PUSH 0x1
0045d610  68a4ddb100                PUSH 0xb1dda4
0045d615  8bce                      MOV ECX,ESI
0045d617  e8b4cffaff                CALL 0x0040a5d0
0045d61c  84c0                      TEST AL,AL
0045d61e  740c                      JZ 0x0045d62c
0045d620  8d4e30                    LEA ECX,[ESI + 0x30]
0045d623  e888cbfaff                CALL 0x0040a1b0
0045d628  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0045d62c  f30f10bd54feffff          MOVSS XMM7,dword ptr [EBP + 0xfffffe54]
0045d634  0f57ed                    XORPS XMM5,XMM5
0045d637  f30f10b55cfeffff          MOVSS XMM6,dword ptr [EBP + 0xfffffe5c]
0045d63f  f30f10a558feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe58]
0045d647  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045d64b  0f8460010000              JZ 0x0045d7b1
0045d651  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045d658  0f8453010000              JZ 0x0045d7b1
0045d65e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0045d661  83781410                  CMP dword ptr [EAX + 0x14],0x10
0045d665  7202                      JC 0x0045d669
0045d667  8b00                      MOV EAX,dword ptr [EAX]
0045d669  b9a4ddb100                MOV ECX,0xb1dda4
0045d66e  6690                      NOP
0045d670  8a10                      MOV DL,byte ptr [EAX]
0045d672  3a11                      CMP DL,byte ptr [ECX]
0045d674  751a                      JNZ 0x0045d690
0045d676  84d2                      TEST DL,DL
0045d678  7412                      JZ 0x0045d68c
0045d67a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045d67d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0045d680  750e                      JNZ 0x0045d690
0045d682  83c002                    ADD EAX,0x2
0045d685  83c102                    ADD ECX,0x2
0045d688  84d2                      TEST DL,DL
0045d68a  75e4                      JNZ 0x0045d670
0045d68c  33c0                      XOR EAX,EAX
0045d68e  eb05                      JMP 0x0045d695
0045d690  1bc0                      SBB EAX,EAX
0045d692  83c801                    OR EAX,0x1
0045d695  85c0                      TEST EAX,EAX
0045d697  0f8514010000              JNZ 0x0045d7b1
0045d69d  388748010000              CMP byte ptr [EDI + 0x148],AL
0045d6a3  740a                      JZ 0x0045d6af
0045d6a5  f30f1015e4adba00          MOVSS XMM2,dword ptr [0x00baade4]
0045d6ad  eb08                      JMP 0x0045d6b7
0045d6af  f30f101568a8ba00          MOVSS XMM2,dword ptr [0x00baa868]
0045d6b7  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0045d6bf  e87cab2700                CALL 0x006d8240
0045d6c4  85c0                      TEST EAX,EAX
0045d6c6  7e10                      JLE 0x0045d6d8
0045d6c8  f30f5915c0a4ba00          MULSS XMM2,dword ptr [0x00baa4c0]
0045d6d0  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0045d6d8  0f2fd5                    COMISS XMM2,XMM5
0045d6db  f30f101d94aaba00          MOVSS XMM3,dword ptr [0x00baaa94]
0045d6e3  7622                      JBE 0x0045d707
0045d6e5  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0045d6ed  0f28cf                    MOVAPS XMM1,XMM7
0045d6f0  f30f58cb                  ADDSS XMM1,XMM3
0045d6f4  0f2fc1                    COMISS XMM0,XMM1
0045d6f7  760e                      JBE 0x0045d707
0045d6f9  f30f5ce3                  SUBSS XMM4,XMM3
0045d6fd  f30f11a73c030000          MOVSS dword ptr [EDI + 0x33c],XMM4
0045d705  eb1e                      JMP 0x0045d725
0045d707  0f2fea                    COMISS XMM5,XMM2
0045d70a  7666                      JBE 0x0045d772
0045d70c  f30f5ce3                  SUBSS XMM4,XMM3
0045d710  0f2fa73c030000            COMISS XMM4,dword ptr [EDI + 0x33c]
0045d717  7659                      JBE 0x0045d772
0045d719  f30f58fb                  ADDSS XMM7,XMM3
0045d71d  f30f11bf3c030000          MOVSS dword ptr [EDI + 0x33c],XMM7
0045d725  ff8f10040000              DEC dword ptr [EDI + 0x410]
0045d72b  0f28c6                    MOVAPS XMM0,XMM6
0045d72e  f30f5c8564feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffe64]
0045d736  f30f5c3504a9ba00          SUBSS XMM6,dword ptr [0x00baa904]
0045d73e  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
0045d746  0f28c8                    MOVAPS XMM1,XMM0
0045d749  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0045d751  0f2fce                    COMISS XMM1,XMM6
0045d754  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
0045d75c  7614                      JBE 0x0045d772
0045d75e  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0045d766  f30f5cc8                  SUBSS XMM1,XMM0
0045d76a  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
0045d772  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0045d779  7f36                      JG 0x0045d7b1
0045d77b  0f2fea                    COMISS XMM5,XMM2
0045d77e  7611                      JBE 0x0045d791
0045d780  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0045d788  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
0045d78f  7716                      JA 0x0045d7a7
0045d791  0f2fd5                    COMISS XMM2,XMM5
0045d794  761b                      JBE 0x0045d7b1
0045d796  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0045d79e  0f2f8734030000            COMISS XMM0,dword ptr [EDI + 0x334]
0045d7a5  760a                      JBE 0x0045d7b1
0045d7a7  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0045d7b1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0045d7b4  64890d00000000            MOV dword ptr FS:[0x0],ECX
0045d7bb  59                        POP ECX
0045d7bc  5f                        POP EDI
0045d7bd  5e                        POP ESI
0045d7be  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0045d7c1  33cd                      XOR ECX,EBP
0045d7c3  e863196900                CALL 0x00aef12b
0045d7c8  8be5                      MOV ESP,EBP
0045d7ca  5d                        POP EBP
0045d7cb  8be3                      MOV ESP,EBX
0045d7cd  5b                        POP EBX
0045d7ce  c3                        RET
