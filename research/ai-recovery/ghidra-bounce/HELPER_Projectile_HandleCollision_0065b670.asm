; J460 NPC AI 0x0065b670 HELPER_Projectile_HandleCollision
; types=9
; identities=9.*
; entry=0065b670
0065b670  55                        PUSH EBP
0065b671  8bec                      MOV EBP,ESP
0065b673  83e4f8                    AND ESP,0xfffffff8
0065b676  83ec5c                    SUB ESP,0x5c
0065b679  a1b493bf00                MOV EAX,[0x00bf93b4]
0065b67e  33c4                      XOR EAX,ESP
0065b680  89442458                  MOV dword ptr [ESP + 0x58],EAX
0065b684  53                        PUSH EBX
0065b685  8b5d08                    MOV EBX,dword ptr [EBP + 0x8]
0065b688  56                        PUSH ESI
0065b689  57                        PUSH EDI
0065b68a  ff750c                    PUSH dword ptr [EBP + 0xc]
0065b68d  8bf9                      MOV EDI,ECX
0065b68f  53                        PUSH EBX
0065b690  57                        PUSH EDI
0065b691  897c2434                  MOV dword ptr [ESP + 0x34],EDI
0065b695  e8c6702000                CALL 0x00862760
0065b69a  83f801                    CMP EAX,0x1
0065b69d  0f844e0e0000              JZ 0x0065c4f1
0065b6a3  83f8ff                    CMP EAX,-0x1
0065b6a6  7516                      JNZ 0x0065b6be
0065b6a8  32c0                      XOR AL,AL
0065b6aa  5f                        POP EDI
0065b6ab  5e                        POP ESI
0065b6ac  5b                        POP EBX
0065b6ad  8b4c2458                  MOV ECX,dword ptr [ESP + 0x58]
0065b6b1  33cc                      XOR ECX,ESP
0065b6b3  e8733a4900                CALL 0x00aef12b
0065b6b8  8be5                      MOV ESP,EBP
0065b6ba  5d                        POP EBP
0065b6bb  c20800                    RET 0x8
0065b6be  837f2c0e                  CMP dword ptr [EDI + 0x2c],0xe
0065b6c2  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
0065b6c5  0f94c0                    SETZ AL
0065b6c8  88442412                  MOV byte ptr [ESP + 0x12],AL
0065b6cc  84c9                      TEST CL,CL
0065b6ce  0f84fa010000              JZ 0x0065b8ce
0065b6d4  8b7328                    MOV ESI,dword ptr [EBX + 0x28]
0065b6d7  81fe93030000              CMP ESI,0x393
0065b6dd  0f8596000000              JNZ 0x0065b779
0065b6e3  837b2c01                  CMP dword ptr [EBX + 0x2c],0x1
0065b6e7  0f858c000000              JNZ 0x0065b779
0065b6ed  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
0065b6f4  f30f109b6c030000          MOVSS XMM3,dword ptr [EBX + 0x36c]
0065b6fc  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
0065b703  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0065b70b  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0065b713  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
0065b71b  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
0065b723  9f                        LAHF
0065b724  f6c444                    TEST AH,0x44
0065b727  0f8bc60d0000              JNP 0x0065c4f3
0065b72d  f30f10839c030000          MOVSS XMM0,dword ptr [EBX + 0x39c]
0065b735  f30f59c8                  MULSS XMM1,XMM0
0065b739  f30f59d0                  MULSS XMM2,XMM0
0065b73d  f30f5ecb                  DIVSS XMM1,XMM3
0065b741  f30f5ed3                  DIVSS XMM2,XMM3
0065b745  f30f588b60030000          ADDSS XMM1,dword ptr [EBX + 0x360]
0065b74d  f30f589364030000          ADDSS XMM2,dword ptr [EBX + 0x364]
0065b755  f30f118b60030000          MOVSS dword ptr [EBX + 0x360],XMM1
0065b75d  f30f119364030000          MOVSS dword ptr [EBX + 0x364],XMM2
0065b765  5f                        POP EDI
0065b766  5e                        POP ESI
0065b767  5b                        POP EBX
0065b768  8b4c2458                  MOV ECX,dword ptr [ESP + 0x58]
0065b76c  33cc                      XOR ECX,ESP
0065b76e  e8b8394900                CALL 0x00aef12b
0065b773  8be5                      MOV ESP,EBP
0065b775  5d                        POP EBP
0065b776  c20800                    RET 0x8
0065b779  8bcb                      MOV ECX,EBX
0065b77b  e8b00d0500                CALL 0x006ac530
0065b780  84c0                      TEST AL,AL
0065b782  7450                      JZ 0x0065b7d4
0065b784  6800000200                PUSH 0x20000
0065b789  6a00                      PUSH 0x0
0065b78b  8bcb                      MOV ECX,EBX
0065b78d  e89ebcdbff                CALL 0x00417430
0065b792  84c0                      TEST AL,AL
0065b794  743e                      JZ 0x0065b7d4
0065b796  8d4c2438                  LEA ECX,[ESP + 0x38]
0065b79a  e8d1a4ddff                CALL 0x00435c70
0065b79f  8b13                      MOV EDX,dword ptr [EBX]
0065b7a1  6a1e                      PUSH 0x1e
0065b7a3  50                        PUSH EAX
0065b7a4  6a00                      PUSH 0x0
0065b7a6  6a00                      PUSH 0x0
0065b7a8  51                        PUSH ECX
0065b7a9  8bcb                      MOV ECX,EBX
0065b7ab  c704240000803f            MOV dword ptr [ESP],0x3f800000
0065b7b2  ff5220                    CALL dword ptr [EDX + 0x20]
0065b7b5  8a442412                  MOV AL,byte ptr [ESP + 0x12]
0065b7b9  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
0065b7c0  5f                        POP EDI
0065b7c1  5e                        POP ESI
0065b7c2  5b                        POP EBX
0065b7c3  8b4c2458                  MOV ECX,dword ptr [ESP + 0x58]
0065b7c7  33cc                      XOR ECX,ESP
0065b7c9  e85d394900                CALL 0x00aef12b
0065b7ce  8be5                      MOV ESP,EBP
0065b7d0  5d                        POP EBP
0065b7d1  c20800                    RET 0x8
0065b7d4  81fef5000000              CMP ESI,0xf5
0065b7da  0f85eb000000              JNZ 0x0065b8cb
0065b7e0  8b03                      MOV EAX,dword ptr [EBX]
0065b7e2  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0065b7ea  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0065b7f2  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0065b7f8  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
0065b7fb  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0065b801  89442428                  MOV dword ptr [ESP + 0x28],EAX
0065b805  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0065b808  89442438                  MOV dword ptr [ESP + 0x38],EAX
0065b80c  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0065b80f  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
0065b813  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0065b816  89442440                  MOV dword ptr [ESP + 0x40],EAX
0065b81a  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
0065b81d  89442444                  MOV dword ptr [ESP + 0x44],EAX
0065b821  8bc1                      MOV EAX,ECX
0065b823  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0065b829  2500010000                AND EAX,0x100
0065b82e  83c800                    OR EAX,0x0
0065b831  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0065b839  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
0065b83f  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0065b847  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
0065b84d  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
0065b853  7407                      JZ 0x0065b85c
0065b855  be01000000                MOV ESI,0x1
0065b85a  eb02                      JMP 0x0065b85e
0065b85c  33f6                      XOR ESI,ESI
0065b85e  81e100000020              AND ECX,0x20000000
0065b864  83c900                    OR ECX,0x0
0065b867  7407                      JZ 0x0065b870
0065b869  b902000000                MOV ECX,0x2
0065b86e  eb02                      JMP 0x0065b872
0065b870  33c9                      XOR ECX,ECX
0065b872  81e200004000              AND EDX,0x400000
0065b878  33c0                      XOR EAX,EAX
0065b87a  0bc2                      OR EAX,EDX
0065b87c  7407                      JZ 0x0065b885
0065b87e  b804000000                MOV EAX,0x4
0065b883  eb02                      JMP 0x0065b887
0065b885  33c0                      XOR EAX,EAX
0065b887  0bc1                      OR EAX,ECX
0065b889  897c245c                  MOV dword ptr [ESP + 0x5c],EDI
0065b88d  0bc6                      OR EAX,ESI
0065b88f  6a1e                      PUSH 0x1e
0065b891  8944245c                  MOV dword ptr [ESP + 0x5c],EAX
0065b895  8d44243c                  LEA EAX,[ESP + 0x3c]
0065b899  50                        PUSH EAX
0065b89a  6a00                      PUSH 0x0
0065b89c  6a40                      PUSH 0x40
0065b89e  51                        PUSH ECX
0065b89f  8bcb                      MOV ECX,EBX
0065b8a1  c704240000803f            MOV dword ptr [ESP],0x3f800000
0065b8a8  ff54243c                  CALL dword ptr [ESP + 0x3c]
0065b8ac  8a442412                  MOV AL,byte ptr [ESP + 0x12]
0065b8b0  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
0065b8b7  5f                        POP EDI
0065b8b8  5e                        POP ESI
0065b8b9  5b                        POP EBX
0065b8ba  8b4c2458                  MOV ECX,dword ptr [ESP + 0x58]
0065b8be  33cc                      XOR ECX,ESP
0065b8c0  e866384900                CALL 0x00aef12b
0065b8c5  8be5                      MOV ESP,EBP
0065b8c7  5d                        POP EBP
0065b8c8  c20800                    RET 0x8
0065b8cb  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
0065b8ce  817f3462030000            CMP dword ptr [EDI + 0x34],0x362
0065b8d5  7527                      JNZ 0x0065b8fe
0065b8d7  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
0065b8da  83f803                    CMP EAX,0x3
0065b8dd  0f840e0c0000              JZ 0x0065c4f1
0065b8e3  83f801                    CMP EAX,0x1
0065b8e6  7516                      JNZ 0x0065b8fe
0065b8e8  8b87c8030000              MOV EAX,dword ptr [EDI + 0x3c8]
0065b8ee  85c0                      TEST EAX,EAX
0065b8f0  740c                      JZ 0x0065b8fe
0065b8f2  3998c8030000              CMP dword ptr [EAX + 0x3c8],EBX
0065b8f8  0f85f30b0000              JNZ 0x0065c4f1
0065b8fe  84c9                      TEST CL,CL
0065b900  0f8531060000              JNZ 0x0065bf37
0065b906  837b2801                  CMP dword ptr [EBX + 0x28],0x1
0065b90a  0f853d060000              JNZ 0x0065bf4d
0065b910  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
0065b916  2500000080                AND EAX,0x80000000
0065b91b  83c800                    OR EAX,0x0
0065b91e  0f84ec000000              JZ 0x0065ba10
0065b924  8bb7c8030000              MOV ESI,dword ptr [EDI + 0x3c8]
0065b92a  85f6                      TEST ESI,ESI
0065b92c  0f84bf0b0000              JZ 0x0065c4f1
0065b932  6a00                      PUSH 0x0
0065b934  6800010020                PUSH 0x20000100
0065b939  8bce                      MOV ECX,ESI
0065b93b  e8f0badbff                CALL 0x00417430
0065b940  84c0                      TEST AL,AL
0065b942  0f84a90b0000              JZ 0x0065c4f1
0065b948  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
0065b94b  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
0065b953  f30f108b40030000          MOVSS XMM1,dword ptr [EBX + 0x340]
0065b95b  8b8b68010000              MOV ECX,dword ptr [EBX + 0x168]
0065b961  8b936c010000              MOV EDX,dword ptr [EBX + 0x16c]
0065b967  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
0065b96b  8b4334                    MOV EAX,dword ptr [EBX + 0x34]
0065b96e  89442440                  MOV dword ptr [ESP + 0x40],EAX
0065b972  8b4338                    MOV EAX,dword ptr [EBX + 0x38]
0065b975  89442444                  MOV dword ptr [ESP + 0x44],EAX
0065b979  8bc1                      MOV EAX,ECX
0065b97b  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0065b981  2500010000                AND EAX,0x100
0065b986  83c800                    OR EAX,0x0
0065b989  f30f108360030000          MOVSS XMM0,dword ptr [EBX + 0x360]
0065b991  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
0065b997  f30f108b64030000          MOVSS XMM1,dword ptr [EBX + 0x364]
0065b99f  c744243801000000          MOV dword ptr [ESP + 0x38],0x1
0065b9a7  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
0065b9ad  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
0065b9b3  c744241401000000          MOV dword ptr [ESP + 0x14],0x1
0065b9bb  7508                      JNZ 0x0065b9c5
0065b9bd  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
0065b9c5  81e100000020              AND ECX,0x20000000
0065b9cb  83c900                    OR ECX,0x0
0065b9ce  7407                      JZ 0x0065b9d7
0065b9d0  b902000000                MOV ECX,0x2
0065b9d5  eb02                      JMP 0x0065b9d9
0065b9d7  33c9                      XOR ECX,ECX
0065b9d9  81e200004000              AND EDX,0x400000
0065b9df  33c0                      XOR EAX,EAX
0065b9e1  0bc2                      OR EAX,EDX
0065b9e3  7407                      JZ 0x0065b9ec
0065b9e5  b804000000                MOV EAX,0x4
0065b9ea  eb02                      JMP 0x0065b9ee
0065b9ec  33c0                      XOR EAX,EAX
0065b9ee  0bc1                      OR EAX,ECX
0065b9f0  895c245c                  MOV dword ptr [ESP + 0x5c],EBX
0065b9f4  0b442414                  OR EAX,dword ptr [ESP + 0x14]
0065b9f8  8bce                      MOV ECX,ESI
0065b9fa  89442458                  MOV dword ptr [ESP + 0x58],EAX
0065b9fe  8d442438                  LEA EAX,[ESP + 0x38]
0065ba02  50                        PUSH EAX
0065ba03  e808130500                CALL 0x006acd10
0065ba08  84c0                      TEST AL,AL
0065ba0a  0f85e10a0000              JNZ 0x0065c4f1
0065ba10  a17816c700                MOV EAX,[0x00c71678]
0065ba15  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0065ba1c  7c10                      JL 0x0065ba2e
0065ba1e  53                        PUSH EBX
0065ba1f  8bcf                      MOV ECX,EDI
0065ba21  e87ad50400                CALL 0x006a8fa0
0065ba26  84c0                      TEST AL,AL
0065ba28  0f85c30a0000              JNZ 0x0065c4f1
0065ba2e  6a00                      PUSH 0x0
0065ba30  68dcd6c500                PUSH 0xc5d6dc
0065ba35  68dcd5c500                PUSH 0xc5d5dc
0065ba3a  6a00                      PUSH 0x0
0065ba3c  53                        PUSH EBX
0065ba3d  e86f4e4900                CALL 0x00af08b1
0065ba42  8bd8                      MOV EBX,EAX
0065ba44  83c414                    ADD ESP,0x14
0065ba47  895c2434                  MOV dword ptr [ESP + 0x34],EBX
0065ba4b  80bba920000000            CMP byte ptr [EBX + 0x20a9],0x0
0065ba52  0f85990a0000              JNZ 0x0065c4f1
0065ba58  f30f1083e8000000          MOVSS XMM0,dword ptr [EBX + 0xe8]
0065ba60  f30f5f05d0a2ba00          MAXSS XMM0,dword ptr [0x00baa2d0]
0065ba68  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
0065ba70  f30f590530aeba00          MULSS XMM0,dword ptr [0x00baae30]
0065ba78  0f2f8750030000            COMISS XMM0,dword ptr [EDI + 0x350]
0065ba7f  0f876c0a0000              JA 0x0065c4f1
0065ba85  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
0065ba8b  0f57c0                    XORPS XMM0,XMM0
0065ba8e  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
0065ba94  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0065ba98  8bc1                      MOV EAX,ECX
0065ba9a  2500800000                AND EAX,0x8000
0065ba9f  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
0065baa6  83c800                    OR EAX,0x0
0065baa9  c644241300                MOV byte ptr [ESP + 0x13],0x0
0065baae  660f13442418              MOVLPD qword ptr [ESP + 0x18],XMM0
0065bab4  7412                      JZ 0x0065bac8
0065bab6  c744242402000000          MOV dword ptr [ESP + 0x24],0x2
0065babe  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
0065bac6  eb10                      JMP 0x0065bad8
0065bac8  8b44241c                  MOV EAX,dword ptr [ESP + 0x1c]
0065bacc  89442414                  MOV dword ptr [ESP + 0x14],EAX
0065bad0  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
0065bad4  89442424                  MOV dword ptr [ESP + 0x24],EAX
0065bad8  83e102                    AND ECX,0x2
0065badb  83c900                    OR ECX,0x0
0065bade  0f856f020000              JNZ 0x0065bd53
0065bae4  51                        PUSH ECX
0065bae5  6a5b                      PUSH 0x5b
0065bae7  8bcb                      MOV ECX,EBX
0065bae9  e8f24b1100                CALL 0x007706e0
0065baee  0f57c9                    XORPS XMM1,XMM1
0065baf1  84c0                      TEST AL,AL
0065baf3  7520                      JNZ 0x0065bb15
0065baf5  6a00                      PUSH 0x0
0065baf7  6877010000                PUSH 0x177
0065bafc  8bcb                      MOV ECX,EBX
0065bafe  e8dd4b1100                CALL 0x007706e0
0065bb03  84c0                      TEST AL,AL
0065bb05  750b                      JNZ 0x0065bb12
0065bb07  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0065bb0d  e9a3000000                JMP 0x0065bbb5
0065bb12  0f57c9                    XORPS XMM1,XMM1
0065bb15  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0065bb1b  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
0065bb21  83780810                  CMP dword ptr [EAX + 0x8],0x10
0065bb25  7554                      JNZ 0x0065bb7b
0065bb27  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0065bb2f  8d44242c                  LEA EAX,[ESP + 0x2c]
0065bb33  f30f5c833c030000          SUBSS XMM0,dword ptr [EBX + 0x33c]
0065bb3b  50                        PUSH EAX
0065bb3c  8d4c241c                  LEA ECX,[ESP + 0x1c]
0065bb40  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0065bb46  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0065bb4e  f30f5c8340030000          SUBSS XMM0,dword ptr [EBX + 0x340]
0065bb56  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0065bb5c  e8cf443b00                CALL 0x00a10030
0065bb61  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
0065bb69  33c9                      XOR ECX,ECX
0065bb6b  0f2f00                    COMISS XMM0,dword ptr [EAX]
0065bb6e  0f97c1                    SETA CL
0065bb71  85c9                      TEST ECX,ECX
0065bb73  0f85da010000              JNZ 0x0065bd53
0065bb79  eb3a                      JMP 0x0065bbb5
0065bb7b  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
0065bb83  0f2fc1                    COMISS XMM0,XMM1
0065bb86  762d                      JBE 0x0065bbb5
0065bb88  f30f108714040000          MOVSS XMM0,dword ptr [EDI + 0x414]
0065bb90  f30f59879c030000          MULSS XMM0,dword ptr [EDI + 0x39c]
0065bb98  f30f108f10040000          MOVSS XMM1,dword ptr [EDI + 0x410]
0065bba0  f30f5cc8                  SUBSS XMM1,XMM0
0065bba4  f30f100530aeba00          MOVSS XMM0,dword ptr [0x00baae30]
0065bbac  0f2fc1                    COMISS XMM0,XMM1
0065bbaf  0f879e010000              JA 0x0065bd53
0065bbb5  8bb614660200              MOV ESI,dword ptr [ESI + 0x26614]
0065bbbb  8bcb                      MOV ECX,EBX
0065bbbd  6a00                      PUSH 0x0
0065bbbf  68f2000000                PUSH 0xf2
0065bbc4  e8174b1100                CALL 0x007706e0
0065bbc9  84c0                      TEST AL,AL
0065bbcb  0f84a8000000              JZ 0x0065bc79
0065bbd1  33c9                      XOR ECX,ECX
0065bbd3  83fe02                    CMP ESI,0x2
0065bbd6  0f9dc1                    SETGE CL
0065bbd9  8d0c4d02000000            LEA ECX,[ECX*0x2 + 0x2]
0065bbe0  e82b340200                CALL 0x0067f010
0065bbe5  85c0                      TEST EAX,EAX
0065bbe7  0f858c000000              JNZ 0x0065bc79
0065bbed  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0065bbf3  8d4c2414                  LEA ECX,[ESP + 0x14]
0065bbf7  c74424145f030000          MOV dword ptr [ESP + 0x14],0x35f
0065bbff  e87cab2f00                CALL 0x00956780
0065bc04  83ec08                    SUB ESP,0x8
0065bc07  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0065bc0f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0065bc16  6a00                      PUSH 0x0
0065bc18  6a02                      PUSH 0x2
0065bc1a  51                        PUSH ECX
0065bc1b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0065bc22  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0065bc28  ff742428                  PUSH dword ptr [ESP + 0x28]
0065bc2c  e8ff1f2d00                CALL 0x0092dc30
0065bc31  8b03                      MOV EAX,dword ptr [EBX]
0065bc33  8d4c2438                  LEA ECX,[ESP + 0x38]
0065bc37  6a01                      PUSH 0x1
0065bc39  6a01                      PUSH 0x1
0065bc3b  68ff000000                PUSH 0xff
0065bc40  0f57c0                    XORPS XMM0,XMM0
0065bc43  c74424648180803e          MOV dword ptr [ESP + 0x64],0x3e808081
0065bc4b  6a0f                      PUSH 0xf
0065bc4d  0f11442458                MOVUPS xmmword ptr [ESP + 0x58],XMM0
0065bc52  51                        PUSH ECX
0065bc53  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0065bc5a  8bcb                      MOV ECX,EBX
0065bc5c  0f1144244c                MOVUPS xmmword ptr [ESP + 0x4c],XMM0
0065bc61  c74424708180803e          MOV dword ptr [ESP + 0x70],0x3e808081
0065bc69  c74424748180003f          MOV dword ptr [ESP + 0x74],0x3f008081
0065bc71  ff503c                    CALL dword ptr [EAX + 0x3c]
0065bc74  e9da000000                JMP 0x0065bd53
0065bc79  8b03                      MOV EAX,dword ptr [EBX]
0065bc7b  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0065bc83  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0065bc8b  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0065bc91  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
0065bc94  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0065bc9a  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
0065bc9e  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0065bca1  89442438                  MOV dword ptr [ESP + 0x38],EAX
0065bca5  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0065bca8  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
0065bcac  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0065bcaf  89442440                  MOV dword ptr [ESP + 0x40],EAX
0065bcb3  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
0065bcb6  89442444                  MOV dword ptr [ESP + 0x44],EAX
0065bcba  8bc1                      MOV EAX,ECX
0065bcbc  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0065bcc2  2500010000                AND EAX,0x100
0065bcc7  83c800                    OR EAX,0x0
0065bcca  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0065bcd2  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
0065bcd8  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0065bce0  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
0065bce6  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
0065bcec  7407                      JZ 0x0065bcf5
0065bcee  be01000000                MOV ESI,0x1
0065bcf3  eb02                      JMP 0x0065bcf7
0065bcf5  33f6                      XOR ESI,ESI
0065bcf7  81e100000020              AND ECX,0x20000000
0065bcfd  83c900                    OR ECX,0x0
0065bd00  7407                      JZ 0x0065bd09
0065bd02  b902000000                MOV ECX,0x2
0065bd07  eb02                      JMP 0x0065bd0b
0065bd09  33c9                      XOR ECX,ECX
0065bd0b  81e200004000              AND EDX,0x400000
0065bd11  33c0                      XOR EAX,EAX
0065bd13  0bc2                      OR EAX,EDX
0065bd15  7407                      JZ 0x0065bd1e
0065bd17  b804000000                MOV EAX,0x4
0065bd1c  eb02                      JMP 0x0065bd20
0065bd1e  33c0                      XOR EAX,EAX
0065bd20  f30f108788030000          MOVSS XMM0,dword ptr [EDI + 0x388]
0065bd28  0bc1                      OR EAX,ECX
0065bd2a  0bc6                      OR EAX,ESI
0065bd2c  897c245c                  MOV dword ptr [ESP + 0x5c],EDI
0065bd30  6a1e                      PUSH 0x1e
0065bd32  8944245c                  MOV dword ptr [ESP + 0x5c],EAX
0065bd36  8d44243c                  LEA EAX,[ESP + 0x3c]
0065bd3a  50                        PUSH EAX
0065bd3b  ff74241c                  PUSH dword ptr [ESP + 0x1c]
0065bd3f  ff742430                  PUSH dword ptr [ESP + 0x30]
0065bd43  51                        PUSH ECX
0065bd44  8bcb                      MOV ECX,EBX
0065bd46  f30f110424                MOVSS dword ptr [ESP],XMM0
0065bd4b  ff542440                  CALL dword ptr [ESP + 0x40]
0065bd4f  88442413                  MOV byte ptr [ESP + 0x13],AL
0065bd53  8b9738040000              MOV EDX,dword ptr [EDI + 0x438]
0065bd59  8bc2                      MOV EAX,EDX
0065bd5b  8bb73c040000              MOV ESI,dword ptr [EDI + 0x43c]
0065bd61  2500020000                AND EAX,0x200
0065bd66  83c800                    OR EAX,0x0
0065bd69  89542418                  MOV dword ptr [ESP + 0x18],EDX
0065bd6d  8bce                      MOV ECX,ESI
0065bd6f  0f8443010000              JZ 0x0065beb8
0065bd75  807c241300                CMP byte ptr [ESP + 0x13],0x0
0065bd7a  89542418                  MOV dword ptr [ESP + 0x18],EDX
0065bd7e  0f8434010000              JZ 0x0065beb8
0065bd84  83bb6813000000            CMP dword ptr [EBX + 0x1368],0x0
0065bd8b  89542418                  MOV dword ptr [ESP + 0x18],EDX
0065bd8f  0f8e23010000              JLE 0x0065beb8
0065bd95  6aff                      PUSH -0x1
0065bd97  8bcb                      MOV ECX,EBX
0065bd99  e862d60f00                CALL 0x00759400
0065bd9e  e8bd310900                CALL 0x006eef60
0065bda3  33d2                      XOR EDX,EDX
0065bda5  b903000000                MOV ECX,0x3
0065bdaa  f7f1                      DIV ECX
0065bdac  8b8368130000              MOV EAX,dword ptr [EBX + 0x1368]
0065bdb2  42                        INC EDX
0065bdb3  3bd0                      CMP EDX,EAX
0065bdb5  0f4cc2                    CMOVL EAX,EDX
0065bdb8  89442418                  MOV dword ptr [ESP + 0x18],EAX
0065bdbc  85c0                      TEST EAX,EAX
0065bdbe  0f8ee4000000              JLE 0x0065bea8
0065bdc4  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0065bdca  8bd8                      MOV EBX,EAX
0065bdcc  8bf9                      MOV EDI,ECX
0065bdce  6690                      NOP
0065bdd0  e88b310900                CALL 0x006eef60
0065bdd5  8bf0                      MOV ESI,EAX
0065bdd7  e884310900                CALL 0x006eef60
0065bddc  660f6ec0                  MOVD XMM0,EAX
0065bde0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0065bde4  c1e81f                    SHR EAX,0x1f
0065bde7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0065bdf0  660f5ac0                  CVTPD2PS XMM0,XMM0
0065bdf4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0065bdfc  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0065be04  f30f58c0                  ADDSS XMM0,XMM0
0065be08  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0065be0e  e84d310900                CALL 0x006eef60
0065be13  660f6ec0                  MOVD XMM0,EAX
0065be17  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0065be1b  c1e81f                    SHR EAX,0x1f
0065be1e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0065be27  660f5ac0                  CVTPD2PS XMM0,XMM0
0065be2b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0065be33  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
0065be3b  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0065be43  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0065be49  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0065be4f  e8ec16dcff                CALL 0x0041d540
0065be54  f30f59442414              MULSS XMM0,dword ptr [ESP + 0x14]
0065be5a  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0065be60  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0065be66  e8b516dcff                CALL 0x0041d520
0065be6b  f30f59442414              MULSS XMM0,dword ptr [ESP + 0x14]
0065be71  8d44242c                  LEA EAX,[ESP + 0x2c]
0065be75  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065be7b  6a00                      PUSH 0x0
0065be7d  56                        PUSH ESI
0065be7e  6a01                      PUSH 0x1
0065be80  6a00                      PUSH 0x0
0065be82  50                        PUSH EAX
0065be83  57                        PUSH EDI
0065be84  6a14                      PUSH 0x14
0065be86  6a05                      PUSH 0x5
0065be88  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
0065be8e  e87d250a00                CALL 0x006fe410
0065be93  83eb01                    SUB EBX,0x1
0065be96  0f8534ffffff              JNZ 0x0065bdd0
0065be9c  8b7c2428                  MOV EDI,dword ptr [ESP + 0x28]
0065bea0  8b5c2434                  MOV EBX,dword ptr [ESP + 0x34]
0065bea4  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
0065bea8  f7d8                      NEG EAX
0065beaa  8bcb                      MOV ECX,EBX
0065beac  50                        PUSH EAX
0065bead  e84ed50f00                CALL 0x00759400
0065beb2  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065beb8  81e100000800              AND ECX,0x80000
0065bebe  33c0                      XOR EAX,EAX
0065bec0  0bc1                      OR EAX,ECX
0065bec2  744a                      JZ 0x0065bf0e
0065bec4  8b03                      MOV EAX,dword ptr [EBX]
0065bec6  8d4c2438                  LEA ECX,[ESP + 0x38]
0065beca  6a01                      PUSH 0x1
0065becc  6a01                      PUSH 0x1
0065bece  6aff                      PUSH -0x1
0065bed0  0f57c0                    XORPS XMM0,XMM0
0065bed3  c783140400001e000000      MOV dword ptr [EBX + 0x414],0x1e
0065bedd  6a1e                      PUSH 0x1e
0065bedf  0f11442458                MOVUPS xmmword ptr [ESP + 0x58],XMM0
0065bee4  51                        PUSH ECX
0065bee5  0f280540c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac540]
0065beec  8bcb                      MOV ECX,EBX
0065beee  0f1144244c                MOVUPS xmmword ptr [ESP + 0x4c],XMM0
0065bef3  c744246ccdcccc3e          MOV dword ptr [ESP + 0x6c],0x3ecccccd
0065befb  c7442470cdcccc3e          MOV dword ptr [ESP + 0x70],0x3ecccccd
0065bf03  c7442474cdcccc3e          MOV dword ptr [ESP + 0x74],0x3ecccccd
0065bf0b  ff503c                    CALL dword ptr [EAX + 0x3c]
0065bf0e  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0065bf15  8a4c2412                  MOV CL,byte ptr [ESP + 0x12]
0065bf19  0f85bc050000              JNZ 0x0065c4db
0065bf1f  b101                      MOV CL,0x1
0065bf21  8ac1                      MOV AL,CL
0065bf23  5f                        POP EDI
0065bf24  5e                        POP ESI
0065bf25  5b                        POP EBX
0065bf26  8b4c2458                  MOV ECX,dword ptr [ESP + 0x58]
0065bf2a  33cc                      XOR ECX,ESP
0065bf2c  e8fa314900                CALL 0x00aef12b
0065bf31  8be5                      MOV ESP,EBP
0065bf33  5d                        POP EBP
0065bf34  c20800                    RET 0x8
0065bf37  6a00                      PUSH 0x0
0065bf39  8bcb                      MOV ECX,EBX
0065bf3b  e820060500                CALL 0x006ac560
0065bf40  84c0                      TEST AL,AL
0065bf42  7511                      JNZ 0x0065bf55
0065bf44  817b2862030000            CMP dword ptr [EBX + 0x28],0x362
0065bf4b  7408                      JZ 0x0065bf55
0065bf4d  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0065bf53  eb5c                      JMP 0x0065bfb1
0065bf55  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0065bf5b  85c9                      TEST ECX,ECX
0065bf5d  0f8422020000              JZ 0x0065c185
0065bf63  e848a30500                CALL 0x006b62b0
0065bf68  8bcb                      MOV ECX,EBX
0065bf6a  8bf0                      MOV ESI,EAX
0065bf6c  e83fa30500                CALL 0x006b62b0
0065bf71  3bf0                      CMP ESI,EAX
0065bf73  0f850c020000              JNZ 0x0065c185
0065bf79  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0065bf7f  81782890030000            CMP dword ptr [EAX + 0x28],0x390
0065bf86  0f854b050000              JNZ 0x0065c4d7
0065bf8c  83782c0a                  CMP dword ptr [EAX + 0x2c],0xa
0065bf90  0f8541050000              JNZ 0x0065c4d7
0065bf96  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0065bf9c  8b86f8640200              MOV EAX,dword ptr [ESI + 0x264f8]
0065bfa2  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
0065bfa8  83f805                    CMP EAX,0x5
0065bfab  0f8fd4010000              JG 0x0065c185
0065bfb1  807d0c00                  CMP byte ptr [EBP + 0xc],0x0
0065bfb5  8a542412                  MOV DL,byte ptr [ESP + 0x12]
0065bfb9  8aca                      MOV CL,DL
0065bfbb  0f851a050000              JNZ 0x0065c4db
0065bfc1  837b2803                  CMP dword ptr [EBX + 0x28],0x3
0065bfc5  0f8510050000              JNZ 0x0065c4db
0065bfcb  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
0065bfce  83f83e                    CMP EAX,0x3e
0065bfd1  7415                      JZ 0x0065bfe8
0065bfd3  83f843                    CMP EAX,0x43
0065bfd6  7410                      JZ 0x0065bfe8
0065bfd8  3dce000000                CMP EAX,0xce
0065bfdd  756d                      JNZ 0x0065c04c
0065bfdf  817b30be020000            CMP dword ptr [EBX + 0x30],0x2be
0065bfe6  7477                      JZ 0x0065c05f
0065bfe8  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
0065bfee  2500000080                AND EAX,0x80000000
0065bff3  83c800                    OR EAX,0x0
0065bff6  0f85f5040000              JNZ 0x0065c4f1
0065bffc  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
0065c003  83be1466020002            CMP dword ptr [ESI + 0x26614],0x2
0065c00a  0f9dc0                    SETGE AL
0065c00d  8d044502000000            LEA EAX,[EAX*0x2 + 0x2]
0065c014  89442418                  MOV dword ptr [ESP + 0x18],EAX
0065c018  8b432c                    MOV EAX,dword ptr [EBX + 0x2c]
0065c01b  83f83e                    CMP EAX,0x3e
0065c01e  7405                      JZ 0x0065c025
0065c020  83f843                    CMP EAX,0x43
0065c023  7552                      JNZ 0x0065c077
0065c025  8b8b10040000              MOV ECX,dword ptr [EBX + 0x410]
0065c02b  6a00                      PUSH 0x0
0065c02d  68f2000000                PUSH 0xf2
0065c032  e8a9461100                CALL 0x007706e0
0065c037  84c0                      TEST AL,AL
0065c039  743c                      JZ 0x0065c077
0065c03b  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
0065c03f  e8cc2f0200                CALL 0x0067f010
0065c044  85c0                      TEST EAX,EAX
0065c046  752f                      JNZ 0x0065c077
0065c048  b501                      MOV CH,0x1
0065c04a  eb2d                      JMP 0x0065c079
0065c04c  3ded000000                CMP EAX,0xed
0065c051  7495                      JZ 0x0065bfe8
0065c053  3dd3000000                CMP EAX,0xd3
0065c058  748e                      JZ 0x0065bfe8
0065c05a  83f864                    CMP EAX,0x64
0065c05d  7489                      JZ 0x0065bfe8
0065c05f  8aca                      MOV CL,DL
0065c061  8ac1                      MOV AL,CL
0065c063  5f                        POP EDI
0065c064  5e                        POP ESI
0065c065  5b                        POP EBX
0065c066  8b4c2458                  MOV ECX,dword ptr [ESP + 0x58]
0065c06a  33cc                      XOR ECX,ESP
0065c06c  e8ba304900                CALL 0x00aef12b
0065c071  8be5                      MOV ESP,EBP
0065c073  5d                        POP EBP
0065c074  c20800                    RET 0x8
0065c077  32ed                      XOR CH,CH
0065c079  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
0065c07f  8a542412                  MOV DL,byte ptr [ESP + 0x12]
0065c083  83e002                    AND EAX,0x2
0065c086  83c800                    OR EAX,0x0
0065c089  8aca                      MOV CL,DL
0065c08b  0f854a040000              JNZ 0x0065c4db
0065c091  84ed                      TEST CH,CH
0065c093  0f8542040000              JNZ 0x0065c4db
0065c099  8b03                      MOV EAX,dword ptr [EBX]
0065c09b  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0065c0a3  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0065c0ab  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0065c0b1  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
0065c0b4  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0065c0ba  89442418                  MOV dword ptr [ESP + 0x18],EAX
0065c0be  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0065c0c1  89442438                  MOV dword ptr [ESP + 0x38],EAX
0065c0c5  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0065c0c8  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
0065c0cc  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0065c0cf  89442440                  MOV dword ptr [ESP + 0x40],EAX
0065c0d3  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
0065c0d6  89442444                  MOV dword ptr [ESP + 0x44],EAX
0065c0da  8bc1                      MOV EAX,ECX
0065c0dc  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0065c0e2  2500010000                AND EAX,0x100
0065c0e7  83c800                    OR EAX,0x0
0065c0ea  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0065c0f2  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
0065c0f8  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0065c100  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
0065c106  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
0065c10c  7407                      JZ 0x0065c115
0065c10e  be01000000                MOV ESI,0x1
0065c113  eb02                      JMP 0x0065c117
0065c115  33f6                      XOR ESI,ESI
0065c117  81e100000020              AND ECX,0x20000000
0065c11d  83c900                    OR ECX,0x0
0065c120  7407                      JZ 0x0065c129
0065c122  b902000000                MOV ECX,0x2
0065c127  eb02                      JMP 0x0065c12b
0065c129  33c9                      XOR ECX,ECX
0065c12b  81e200004000              AND EDX,0x400000
0065c131  33c0                      XOR EAX,EAX
0065c133  0bc2                      OR EAX,EDX
0065c135  7407                      JZ 0x0065c13e
0065c137  b804000000                MOV EAX,0x4
0065c13c  eb02                      JMP 0x0065c140
0065c13e  33c0                      XOR EAX,EAX
0065c140  f30f108788030000          MOVSS XMM0,dword ptr [EDI + 0x388]
0065c148  0bc1                      OR EAX,ECX
0065c14a  0bc6                      OR EAX,ESI
0065c14c  897c245c                  MOV dword ptr [ESP + 0x5c],EDI
0065c150  6a1e                      PUSH 0x1e
0065c152  8944245c                  MOV dword ptr [ESP + 0x5c],EAX
0065c156  8d44243c                  LEA EAX,[ESP + 0x3c]
0065c15a  50                        PUSH EAX
0065c15b  6a00                      PUSH 0x0
0065c15d  6a00                      PUSH 0x0
0065c15f  51                        PUSH ECX
0065c160  8bcb                      MOV ECX,EBX
0065c162  f30f110424                MOVSS dword ptr [ESP],XMM0
0065c167  ff54242c                  CALL dword ptr [ESP + 0x2c]
0065c16b  8a4c2412                  MOV CL,byte ptr [ESP + 0x12]
0065c16f  8ac1                      MOV AL,CL
0065c171  5f                        POP EDI
0065c172  5e                        POP ESI
0065c173  5b                        POP EBX
0065c174  8b4c2458                  MOV ECX,dword ptr [ESP + 0x58]
0065c178  33cc                      XOR ECX,ESP
0065c17a  e8ac2f4900                CALL 0x00aef12b
0065c17f  8be5                      MOV ESP,EBP
0065c181  5d                        POP EBP
0065c182  c20800                    RET 0x8
0065c185  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
0065c18b  8bb738040000              MOV ESI,dword ptr [EDI + 0x438]
0065c191  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0065c195  8bc6                      MOV EAX,ESI
0065c197  2500000080                AND EAX,0x80000000
0065c19c  83c800                    OR EAX,0x0
0065c19f  7423                      JZ 0x0065c1c4
0065c1a1  6a00                      PUSH 0x0
0065c1a3  6800000020                PUSH 0x20000000
0065c1a8  8bcb                      MOV ECX,EBX
0065c1aa  e881b2dbff                CALL 0x00417430
0065c1af  84c0                      TEST AL,AL
0065c1b1  0f853a030000              JNZ 0x0065c4f1
0065c1b7  817b2862030000            CMP dword ptr [EBX + 0x28],0x362
0065c1be  0f842d030000              JZ 0x0065c4f1
0065c1c4  8bc6                      MOV EAX,ESI
0065c1c6  2580000000                AND EAX,0x80
0065c1cb  83c800                    OR EAX,0x0
0065c1ce  7522                      JNZ 0x0065c1f2
0065c1d0  6800001000                PUSH 0x100000
0065c1d5  6800000020                PUSH 0x20000000
0065c1da  8bcb                      MOV ECX,EBX
0065c1dc  e84fb2dbff                CALL 0x00417430
0065c1e1  84c0                      TEST AL,AL
0065c1e3  750d                      JNZ 0x0065c1f2
0065c1e5  817b2862030000            CMP dword ptr [EBX + 0x28],0x362
0065c1ec  0f85ff020000              JNZ 0x0065c4f1
0065c1f2  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0065c1f8  85c0                      TEST EAX,EAX
0065c1fa  7466                      JZ 0x0065c262
0065c1fc  8b4828                    MOV ECX,dword ptr [EAX + 0x28]
0065c1ff  81f990030000              CMP ECX,0x390
0065c205  7532                      JNZ 0x0065c239
0065c207  83782c0a                  CMP dword ptr [EAX + 0x2c],0xa
0065c20b  7555                      JNZ 0x0065c262
0065c20d  394b28                    CMP dword ptr [EBX + 0x28],ECX
0065c210  7550                      JNZ 0x0065c262
0065c212  837b2c0a                  CMP dword ptr [EBX + 0x2c],0xa
0065c216  754a                      JNZ 0x0065c262
0065c218  8a4c2412                  MOV CL,byte ptr [ESP + 0x12]
0065c21c  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
0065c223  8ac1                      MOV AL,CL
0065c225  5f                        POP EDI
0065c226  5e                        POP ESI
0065c227  5b                        POP EBX
0065c228  8b4c2458                  MOV ECX,dword ptr [ESP + 0x58]
0065c22c  33cc                      XOR ECX,ESP
0065c22e  e8f82e4900                CALL 0x00aef12b
0065c233  8be5                      MOV ESP,EBP
0065c235  5d                        POP EBP
0065c236  c20800                    RET 0x8
0065c239  81f912010000              CMP ECX,0x112
0065c23f  7408                      JZ 0x0065c249
0065c241  81f913010000              CMP ECX,0x113
0065c247  7519                      JNZ 0x0065c262
0065c249  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
0065c24c  3d12010000                CMP EAX,0x112
0065c251  0f8480020000              JZ 0x0065c4d7
0065c257  3d13010000                CMP EAX,0x113
0065c25c  0f8475020000              JZ 0x0065c4d7
0065c262  83e602                    AND ESI,0x2
0065c265  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
0065c26c  83ce00                    OR ESI,0x0
0065c26f  0f8562020000              JNZ 0x0065c4d7
0065c275  8b03                      MOV EAX,dword ptr [EBX]
0065c277  8b772c                    MOV ESI,dword ptr [EDI + 0x2c]
0065c27a  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0065c280  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
0065c283  89442424                  MOV dword ptr [ESP + 0x24],EAX
0065c287  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0065c28d  8bd0                      MOV EDX,EAX
0065c28f  81e200010000              AND EDX,0x100
0065c295  83fe08                    CMP ESI,0x8
0065c298  0f85ab000000              JNZ 0x0065c349
0065c29e  83ca00                    OR EDX,0x0
0065c2a1  8b7728                    MOV ESI,dword ptr [EDI + 0x28]
0065c2a4  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0065c2ac  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0065c2b4  89742438                  MOV dword ptr [ESP + 0x38],ESI
0065c2b8  8b7734                    MOV ESI,dword ptr [EDI + 0x34]
0065c2bb  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0065c2c1  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0065c2c9  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
0065c2cf  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0065c2d7  89742440                  MOV dword ptr [ESP + 0x40],ESI
0065c2db  8b7738                    MOV ESI,dword ptr [EDI + 0x38]
0065c2de  c744243c08000000          MOV dword ptr [ESP + 0x3c],0x8
0065c2e6  89742444                  MOV dword ptr [ESP + 0x44],ESI
0065c2ea  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
0065c2f0  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
0065c2f6  7407                      JZ 0x0065c2ff
0065c2f8  be01000000                MOV ESI,0x1
0065c2fd  eb02                      JMP 0x0065c301
0065c2ff  33f6                      XOR ESI,ESI
0065c301  2500000020                AND EAX,0x20000000
0065c306  83c800                    OR EAX,0x0
0065c309  7407                      JZ 0x0065c312
0065c30b  ba02000000                MOV EDX,0x2
0065c310  eb02                      JMP 0x0065c314
0065c312  33d2                      XOR EDX,EDX
0065c314  81e100004000              AND ECX,0x400000
0065c31a  33c0                      XOR EAX,EAX
0065c31c  0bc1                      OR EAX,ECX
0065c31e  7407                      JZ 0x0065c327
0065c320  b804000000                MOV EAX,0x4
0065c325  eb02                      JMP 0x0065c329
0065c327  33c0                      XOR EAX,EAX
0065c329  0bc2                      OR EAX,EDX
0065c32b  0bc6                      OR EAX,ESI
0065c32d  6a1e                      PUSH 0x1e
0065c32f  8944245c                  MOV dword ptr [ESP + 0x5c],EAX
0065c333  8d44243c                  LEA EAX,[ESP + 0x3c]
0065c337  50                        PUSH EAX
0065c338  6a00                      PUSH 0x0
0065c33a  6a00                      PUSH 0x0
0065c33c  51                        PUSH ECX
0065c33d  c7042400000c42            MOV dword ptr [ESP],0x420c0000
0065c344  e9b4000000                JMP 0x0065c3fd
0065c349  83ca00                    OR EDX,0x0
0065c34c  8b7f28                    MOV EDI,dword ptr [EDI + 0x28]
0065c34f  897c2438                  MOV dword ptr [ESP + 0x38],EDI
0065c353  8b7c2428                  MOV EDI,dword ptr [ESP + 0x28]
0065c357  8974243c                  MOV dword ptr [ESP + 0x3c],ESI
0065c35b  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0065c363  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0065c36b  8b7734                    MOV ESI,dword ptr [EDI + 0x34]
0065c36e  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0065c374  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0065c37c  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
0065c382  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0065c38a  89742440                  MOV dword ptr [ESP + 0x40],ESI
0065c38e  8b7738                    MOV ESI,dword ptr [EDI + 0x38]
0065c391  89742444                  MOV dword ptr [ESP + 0x44],ESI
0065c395  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
0065c39b  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
0065c3a1  7407                      JZ 0x0065c3aa
0065c3a3  be01000000                MOV ESI,0x1
0065c3a8  eb02                      JMP 0x0065c3ac
0065c3aa  33f6                      XOR ESI,ESI
0065c3ac  2500000020                AND EAX,0x20000000
0065c3b1  83c800                    OR EAX,0x0
0065c3b4  7407                      JZ 0x0065c3bd
0065c3b6  ba02000000                MOV EDX,0x2
0065c3bb  eb02                      JMP 0x0065c3bf
0065c3bd  33d2                      XOR EDX,EDX
0065c3bf  81e100004000              AND ECX,0x400000
0065c3c5  33c0                      XOR EAX,EAX
0065c3c7  0bc1                      OR EAX,ECX
0065c3c9  7407                      JZ 0x0065c3d2
0065c3cb  b804000000                MOV EAX,0x4
0065c3d0  eb02                      JMP 0x0065c3d4
0065c3d2  33c0                      XOR EAX,EAX
0065c3d4  f30f108788030000          MOVSS XMM0,dword ptr [EDI + 0x388]
0065c3dc  0bc2                      OR EAX,EDX
0065c3de  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
0065c3e6  0bc6                      OR EAX,ESI
0065c3e8  6a1e                      PUSH 0x1e
0065c3ea  8944245c                  MOV dword ptr [ESP + 0x5c],EAX
0065c3ee  8d44243c                  LEA EAX,[ESP + 0x3c]
0065c3f2  50                        PUSH EAX
0065c3f3  6a00                      PUSH 0x0
0065c3f5  6a00                      PUSH 0x0
0065c3f7  51                        PUSH ECX
0065c3f8  f30f110424                MOVSS dword ptr [ESP],XMM0
0065c3fd  8bcb                      MOV ECX,EBX
0065c3ff  897c2470                  MOV dword ptr [ESP + 0x70],EDI
0065c403  ff542438                  CALL dword ptr [ESP + 0x38]
0065c407  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065c40d  33c0                      XOR EAX,EAX
0065c40f  81e100000800              AND ECX,0x80000
0065c415  0bc1                      OR EAX,ECX
0065c417  0f84ba000000              JZ 0x0065c4d7
0065c41d  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0065c420  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0065c428  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0065c430  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
0065c436  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
0065c43c  89442438                  MOV dword ptr [ESP + 0x38],EAX
0065c440  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0065c443  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
0065c447  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0065c44a  89442440                  MOV dword ptr [ESP + 0x40],EAX
0065c44e  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
0065c451  89442444                  MOV dword ptr [ESP + 0x44],EAX
0065c455  8bc1                      MOV EAX,ECX
0065c457  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0065c45d  2500010000                AND EAX,0x100
0065c462  83c800                    OR EAX,0x0
0065c465  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0065c46d  f30f114c244c              MOVSS dword ptr [ESP + 0x4c],XMM1
0065c473  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0065c47b  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
0065c481  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
0065c487  7407                      JZ 0x0065c490
0065c489  be01000000                MOV ESI,0x1
0065c48e  eb02                      JMP 0x0065c492
0065c490  33f6                      XOR ESI,ESI
0065c492  81e100000020              AND ECX,0x20000000
0065c498  83c900                    OR ECX,0x0
0065c49b  7407                      JZ 0x0065c4a4
0065c49d  b902000000                MOV ECX,0x2
0065c4a2  eb02                      JMP 0x0065c4a6
0065c4a4  33c9                      XOR ECX,ECX
0065c4a6  81e200004000              AND EDX,0x400000
0065c4ac  33c0                      XOR EAX,EAX
0065c4ae  0bc2                      OR EAX,EDX
0065c4b0  7407                      JZ 0x0065c4b9
0065c4b2  b804000000                MOV EAX,0x4
0065c4b7  eb02                      JMP 0x0065c4bb
0065c4b9  33c0                      XOR EAX,EAX
0065c4bb  0bc1                      OR EAX,ECX
0065c4bd  897c245c                  MOV dword ptr [ESP + 0x5c],EDI
0065c4c1  0bc6                      OR EAX,ESI
0065c4c3  8bcb                      MOV ECX,EBX
0065c4c5  6a00                      PUSH 0x0
0065c4c7  8944245c                  MOV dword ptr [ESP + 0x5c],EAX
0065c4cb  8d44243c                  LEA EAX,[ESP + 0x3c]
0065c4cf  6a5a                      PUSH 0x5a
0065c4d1  50                        PUSH EAX
0065c4d2  e8e90e0500                CALL 0x006ad3c0
0065c4d7  8a4c2412                  MOV CL,byte ptr [ESP + 0x12]
0065c4db  8ac1                      MOV AL,CL
0065c4dd  5f                        POP EDI
0065c4de  5e                        POP ESI
0065c4df  5b                        POP EBX
0065c4e0  8b4c2458                  MOV ECX,dword ptr [ESP + 0x58]
0065c4e4  33cc                      XOR ECX,ESP
0065c4e6  e8402c4900                CALL 0x00aef12b
0065c4eb  8be5                      MOV ESP,EBP
0065c4ed  5d                        POP EBP
0065c4ee  c20800                    RET 0x8
0065c4f1  b001                      MOV AL,0x1
0065c4f3  8b4c2464                  MOV ECX,dword ptr [ESP + 0x64]
0065c4f7  5f                        POP EDI
0065c4f8  5e                        POP ESI
0065c4f9  5b                        POP EBX
0065c4fa  33cc                      XOR ECX,ESP
0065c4fc  e82a2c4900                CALL 0x00aef12b
0065c501  8be5                      MOV ESP,EBP
0065c503  5d                        POP EBP
0065c504  c20800                    RET 0x8
