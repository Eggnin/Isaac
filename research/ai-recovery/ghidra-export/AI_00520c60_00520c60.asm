; J460 NPC AI 0x00520c60 AI_00520c60
; types=42,203,235,236
; identities=203.0.0,235.0.0,236.0.0,42.0.0,42.1.0,42.2.0
; entry=00520c60
00520c60  55                        PUSH EBP
00520c61  8bec                      MOV EBP,ESP
00520c63  81ec14010000              SUB ESP,0x114
00520c69  a1b493bf00                MOV EAX,[0x00bf93b4]
00520c6e  33c5                      XOR EAX,EBP
00520c70  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00520c73  53                        PUSH EBX
00520c74  56                        PUSH ESI
00520c75  57                        PUSH EDI
00520c76  8bf9                      MOV EDI,ECX
00520c78  89bd18ffffff              MOV dword ptr [EBP + 0xffffff18],EDI
00520c7e  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
00520c85  7550                      JNZ 0x00520cd7
00520c87  83bfd403000000            CMP dword ptr [EDI + 0x3d4],0x0
00520c8e  0f85080e0000              JNZ 0x00521a9c
00520c94  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00520c9b  0f85fb0d0000              JNZ 0x00521a9c
00520ca1  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
00520ca7  85c0                      TEST EAX,EAX
00520ca9  0f88ed0d0000              JS 0x00521a9c
00520caf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00520cb5  689f0f0000                PUSH 0xf9f
00520cba  50                        PUSH EAX
00520cbb  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00520cc1  e81a59f3ff                CALL 0x004565e0
00520cc6  5f                        POP EDI
00520cc7  5e                        POP ESI
00520cc8  5b                        POP EBX
00520cc9  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00520ccc  33cd                      XOR ECX,EBP
00520cce  e858e45c00                CALL 0x00aef12b
00520cd3  8be5                      MOV ESP,EBP
00520cd5  5d                        POP EBP
00520cd6  c3                        RET
00520cd7  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
00520cdd  85f6                      TEST ESI,ESI
00520cdf  0f8531010000              JNZ 0x00520e16
00520ce5  8d8f14040000              LEA ECX,[EDI + 0x414]
00520ceb  e800632c00                CALL 0x007e6ff0
00520cf0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00520cf6  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
00520cfc  99                        CDQ
00520cfd  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00520d05  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00520d0b  f7790c                    IDIV dword ptr [ECX + 0xc]
00520d0e  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00520d15  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
00520d1f  660f6ec8                  MOVD XMM1,EAX
00520d23  660f6ed2                  MOVD XMM2,EDX
00520d27  0f5bd2                    CVTDQ2PS XMM2,XMM2
00520d2a  0f5bc9                    CVTDQ2PS XMM1,XMM1
00520d2d  f30f59d0                  MULSS XMM2,XMM0
00520d31  f30f59c8                  MULSS XMM1,XMM0
00520d35  f30f58d0                  ADDSS XMM2,XMM0
00520d39  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
00520d41  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
00520d49  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
00520d51  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00520d57  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00520d5d  81c901000040              OR ECX,0x40000001
00520d63  8b5728                    MOV EDX,dword ptr [EDI + 0x28]
00520d66  83c808                    OR EAX,0x8
00520d69  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00520d6f  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00520d75  83fa2a                    CMP EDX,0x2a
00520d78  7411                      JZ 0x00520d8b
00520d7a  0d00200000                OR EAX,0x2000
00520d7f  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00520d85  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00520d8b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00520d95  81faeb000000              CMP EDX,0xeb
00520d9b  751e                      JNZ 0x00520dbb
00520d9d  6a00                      PUSH 0x0
00520d9f  68b004b600                PUSH 0xb604b0
00520da4  8d4f48                    LEA ECX,[EDI + 0x48]
00520da7  e8d495eeff                CALL 0x0040a380
00520dac  6a00                      PUSH 0x0
00520dae  687cdeb100                PUSH 0xb1de7c
00520db3  8d4f48                    LEA ECX,[EDI + 0x48]
00520db6  e8859beeff                CALL 0x0040a940
00520dbb  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
00520dc1  e8aa63eeff                CALL 0x00407170
00520dc6  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00520dcc  3bc8                      CMP ECX,EAX
00520dce  741e                      JZ 0x00520dee
00520dd0  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00520dd3  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00520dd6  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
00520dda  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00520dde  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
00520de3  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00520de8  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
00520deb  894128                    MOV dword ptr [ECX + 0x28],EAX
00520dee  c787f40100000000803f      MOV dword ptr [EDI + 0x1f4],0x3f800000
00520df8  c787f80100000000803f      MOV dword ptr [EDI + 0x1f8],0x3f800000
00520e02  c787fc0100000000803f      MOV dword ptr [EDI + 0x1fc],0x3f800000
00520e0c  c787000200000000803f      MOV dword ptr [EDI + 0x200],0x3f800000
00520e16  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00520e1c  ffb10c830100              PUSH dword ptr [ECX + 0x1830c]
00520e22  ffb104830100              PUSH dword ptr [ECX + 0x18304]
00520e28  e893fd2100                CALL 0x00740bc0
00520e2d  c68523ffffff01            MOV byte ptr [EBP + 0xffffff23],0x1
00520e34  8b5844                    MOV EBX,dword ptr [EAX + 0x44]
00520e37  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00520e3a  d1eb                      SHR EBX,0x1
00520e3c  80e301                    AND BL,0x1
00520e3f  3deb000000                CMP EAX,0xeb
00520e44  7576                      JNZ 0x00520ebc
00520e46  84db                      TEST BL,BL
00520e48  0f8463020000              JZ 0x005210b1
00520e4e  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
00520e55  c68523ffffff00            MOV byte ptr [EBP + 0xffffff23],0x0
00520e5c  0f844f020000              JZ 0x005210b1
00520e62  6a00                      PUSH 0x0
00520e64  8d8f98000000              LEA ECX,[EDI + 0x98]
00520e6a  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00520e74  e8b779eeff                CALL 0x00408830
00520e79  6a00                      PUSH 0x0
00520e7b  8d4f48                    LEA ECX,[EDI + 0x48]
00520e7e  68cc0eb600                PUSH 0xb60ecc
00520e83  e8f894eeff                CALL 0x0040a380
00520e88  85f6                      TEST ESI,ESI
00520e8a  0f8529020000              JNZ 0x005210b9
00520e90  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00520e96  8d4f48                    LEA ECX,[EDI + 0x48]
00520e99  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
00520ea0  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00520ea6  e8b598eeff                CALL 0x0040a760
00520eab  5f                        POP EDI
00520eac  5e                        POP ESI
00520ead  5b                        POP EBX
00520eae  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00520eb1  33cd                      XOR ECX,EBP
00520eb3  e873e25c00                CALL 0x00aef12b
00520eb8  8be5                      MOV ESP,EBP
00520eba  5d                        POP EBP
00520ebb  c3                        RET
00520ebc  3dec000000                CMP EAX,0xec
00520ec1  0f8562010000              JNZ 0x00521029
00520ec7  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00520ecd  b9f0000000                MOV ECX,0xf0
00520ed2  99                        CDQ
00520ed3  f7f9                      IDIV ECX
00520ed5  85d2                      TEST EDX,EDX
00520ed7  7514                      JNZ 0x00520eed
00520ed9  84db                      TEST BL,BL
00520edb  7528                      JNZ 0x00520f05
00520edd  52                        PUSH EDX
00520ede  8d4f48                    LEA ECX,[EDI + 0x48]
00520ee1  68c40eb600                PUSH 0xb60ec4
00520ee6  e89594eeff                CALL 0x0040a380
00520eeb  eb6a                      JMP 0x00520f57
00520eed  81fa96000000              CMP EDX,0x96
00520ef3  7d0a                      JGE 0x00520eff
00520ef5  84db                      TEST BL,BL
00520ef7  745e                      JZ 0x00520f57
00520ef9  81fa96000000              CMP EDX,0x96
00520eff  7404                      JZ 0x00520f05
00520f01  84db                      TEST BL,BL
00520f03  7452                      JZ 0x00520f57
00520f05  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
00520f0c  7449                      JZ 0x00520f57
00520f0e  84db                      TEST BL,BL
00520f10  740a                      JZ 0x00520f1c
00520f12  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00520f1c  6a00                      PUSH 0x0
00520f1e  8d8f98000000              LEA ECX,[EDI + 0x98]
00520f24  e80779eeff                CALL 0x00408830
00520f29  6a00                      PUSH 0x0
00520f2b  8d4f48                    LEA ECX,[EDI + 0x48]
00520f2e  68cc0eb600                PUSH 0xb60ecc
00520f33  e84894eeff                CALL 0x0040a380
00520f38  85f6                      TEST ESI,ESI
00520f3a  751b                      JNZ 0x00520f57
00520f3c  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00520f42  8d4f48                    LEA ECX,[EDI + 0x48]
00520f45  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
00520f4c  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00520f52  e80998eeff                CALL 0x0040a760
00520f57  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00520f5b  745f                      JZ 0x00520fbc
00520f5d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00520f64  7556                      JNZ 0x00520fbc
00520f66  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00520f69  83781410                  CMP dword ptr [EAX + 0x14],0x10
00520f6d  7202                      JC 0x00520f71
00520f6f  8b00                      MOV EAX,dword ptr [EAX]
00520f71  b9c40eb600                MOV ECX,0xb60ec4
00520f76  8a10                      MOV DL,byte ptr [EAX]
00520f78  3a11                      CMP DL,byte ptr [ECX]
00520f7a  751a                      JNZ 0x00520f96
00520f7c  84d2                      TEST DL,DL
00520f7e  7412                      JZ 0x00520f92
00520f80  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00520f83  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00520f86  750e                      JNZ 0x00520f96
00520f88  83c002                    ADD EAX,0x2
00520f8b  83c102                    ADD ECX,0x2
00520f8e  84d2                      TEST DL,DL
00520f90  75e4                      JNZ 0x00520f76
00520f92  33c0                      XOR EAX,EAX
00520f94  eb05                      JMP 0x00520f9b
00520f96  1bc0                      SBB EAX,EAX
00520f98  83c801                    OR EAX,0x1
00520f9b  85c0                      TEST EAX,EAX
00520f9d  751d                      JNZ 0x00520fbc
00520f9f  50                        PUSH EAX
00520fa0  68b004b600                PUSH 0xb604b0
00520fa5  8d4f48                    LEA ECX,[EDI + 0x48]
00520fa8  e8d393eeff                CALL 0x0040a380
00520fad  6a00                      PUSH 0x0
00520faf  687cdeb100                PUSH 0xb1de7c
00520fb4  8d4f48                    LEA ECX,[EDI + 0x48]
00520fb7  e88499eeff                CALL 0x0040a940
00520fbc  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
00520fc3  0f84e1000000              JZ 0x005210aa
00520fc9  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
00520fd0  0f84d4000000              JZ 0x005210aa
00520fd6  8b879c000000              MOV EAX,dword ptr [EDI + 0x9c]
00520fdc  83781410                  CMP dword ptr [EAX + 0x14],0x10
00520fe0  7202                      JC 0x00520fe4
00520fe2  8b00                      MOV EAX,dword ptr [EAX]
00520fe4  b97cdeb100                MOV ECX,0xb1de7c
00520fe9  0f1f8000000000            NOP dword ptr [EAX]
00520ff0  8a10                      MOV DL,byte ptr [EAX]
00520ff2  3a11                      CMP DL,byte ptr [ECX]
00520ff4  751a                      JNZ 0x00521010
00520ff6  84d2                      TEST DL,DL
00520ff8  7412                      JZ 0x0052100c
00520ffa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00520ffd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00521000  750e                      JNZ 0x00521010
00521002  83c002                    ADD EAX,0x2
00521005  83c102                    ADD ECX,0x2
00521008  84d2                      TEST DL,DL
0052100a  75e4                      JNZ 0x00520ff0
0052100c  33c0                      XOR EAX,EAX
0052100e  eb05                      JMP 0x00521015
00521010  1bc0                      SBB EAX,EAX
00521012  83c801                    OR EAX,0x1
00521015  85c0                      TEST EAX,EAX
00521017  0f858d000000              JNZ 0x005210aa
0052101d  c68523ffffff01            MOV byte ptr [EBP + 0xffffff23],0x1
00521024  e988000000                JMP 0x005210b1
00521029  3dcb000000                CMP EAX,0xcb
0052102e  7428                      JZ 0x00521058
00521030  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
00521037  7471                      JZ 0x005210aa
00521039  8bcf                      MOV ECX,EDI
0052103b  e8e05b1b00                CALL 0x006d6c20
00521040  85c0                      TEST EAX,EAX
00521042  7f14                      JG 0x00521058
00521044  a17816c700                MOV EAX,[0x00c71678]
00521049  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0052104f  83b8ec11000000            CMP dword ptr [EAX + 0x11ec],0x0
00521056  7e0d                      JLE 0x00521065
00521058  84db                      TEST BL,BL
0052105a  7455                      JZ 0x005210b1
0052105c  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
00521063  7445                      JZ 0x005210aa
00521065  6a00                      PUSH 0x0
00521067  8d8f98000000              LEA ECX,[EDI + 0x98]
0052106d  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00521077  e8b477eeff                CALL 0x00408830
0052107c  6a00                      PUSH 0x0
0052107e  8d4f48                    LEA ECX,[EDI + 0x48]
00521081  681ceeb100                PUSH 0xb1ee1c
00521086  e8f592eeff                CALL 0x0040a380
0052108b  85f6                      TEST ESI,ESI
0052108d  751b                      JNZ 0x005210aa
0052108f  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00521095  8d4f48                    LEA ECX,[EDI + 0x48]
00521098  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
0052109f  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
005210a5  e8b696eeff                CALL 0x0040a760
005210aa  c68523ffffff00            MOV byte ptr [EBP + 0xffffff23],0x0
005210b1  85f6                      TEST ESI,ESI
005210b3  0f84e3090000              JZ 0x00521a9c
005210b9  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005210c0  8d8f3c030000              LEA ECX,[EDI + 0x33c]
005210c6  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005210ce  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005210d6  f30f5c09                  SUBSS XMM1,dword ptr [ECX]
005210da  f30f5c4104                SUBSS XMM0,dword ptr [ECX + 0x4]
005210df  898d08ffffff              MOV dword ptr [EBP + 0xffffff08],ECX
005210e5  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005210ed  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005210f5  743b                      JZ 0x00521132
005210f7  83bf2c03000000            CMP dword ptr [EDI + 0x32c],0x0
005210fe  8db72c030000              LEA ESI,[EDI + 0x32c]
00521104  7c2c                      JL 0x00521132
00521106  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052110c  6aff                      PUSH -0x1
0052110e  ffb104830100              PUSH dword ptr [ECX + 0x18304]
00521114  e8a7fa2100                CALL 0x00740bc0
00521119  56                        PUSH ESI
0052111a  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
00521120  51                        PUSH ECX
00521121  8d8880000000              LEA ECX,[EAX + 0x80]
00521127  e89434fcff                CALL 0x004e45c0
0052112c  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00521132  80bd23ffffff00            CMP byte ptr [EBP + 0xffffff23],0x0
00521139  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052113c  0f843a090000              JZ 0x00521a7c
00521142  83f82a                    CMP EAX,0x2a
00521145  0f846a050000              JZ 0x005216b5
0052114b  3deb000000                CMP EAX,0xeb
00521150  0f84bd020000              JZ 0x00521413
00521156  3dec000000                CMP EAX,0xec
0052115b  0f84b2020000              JZ 0x00521413
00521161  3dcb000000                CMP EAX,0xcb
00521166  0f852a090000              JNZ 0x00521a96
0052116c  837f3004                  CMP dword ptr [EDI + 0x30],0x4
00521170  720f                      JC 0x00521181
00521172  68140fb600                PUSH 0xb60f14
00521177  6a10                      PUSH 0x10
00521179  e842014f00                CALL 0x00a112c0
0052117e  83c408                    ADD ESP,0x8
00521181  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00521187  83f803                    CMP EAX,0x3
0052118a  0f8532010000              JNZ 0x005212c2
00521190  33d2                      XOR EDX,EDX
00521192  8d4f48                    LEA ECX,[EDI + 0x48]
00521195  3b5730                    CMP EDX,dword ptr [EDI + 0x30]
00521198  6a00                      PUSH 0x0
0052119a  1bd2                      SBB EDX,EDX
0052119c  235730                    AND EDX,dword ptr [EDI + 0x30]
0052119f  3bd0                      CMP EDX,EAX
005211a1  0f42c2                    CMOVC EAX,EDX
005211a4  ff34856015b600            PUSH dword ptr [EAX*0x4 + 0xb61560]
005211ab  e8d091eeff                CALL 0x0040a380
005211b0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005211b6  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
005211bc  803800                    CMP byte ptr [EAX],0x0
005211bf  0f84d1080000              JZ 0x00521a96
005211c5  8b89f8640200              MOV ECX,dword ptr [ECX + 0x264f8]
005211cb  2b88f0110000              SUB ECX,dword ptr [EAX + 0x11f0]
005211d1  83f91e                    CMP ECX,0x1e
005211d4  0f8ebc080000              JLE 0x00521a96
005211da  b8b7600bb6                MOV EAX,0xb60b60b7
005211df  f7e9                      IMUL ECX
005211e1  03d1                      ADD EDX,ECX
005211e3  c1fa06                    SAR EDX,0x6
005211e6  8bc2                      MOV EAX,EDX
005211e8  c1e81f                    SHR EAX,0x1f
005211eb  03c2                      ADD EAX,EDX
005211ed  6bc05a                    IMUL EAX,EAX,0x5a
005211f0  2bc8                      SUB ECX,EAX
005211f2  0f859e080000              JNZ 0x00521a96
005211f8  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
00521200  0f57db                    XORPS XMM3,XMM3
00521203  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0052120b  51                        PUSH ECX
0052120c  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
00521212  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0052121c  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00521223  e8c826f0ff                CALL 0x004238f0
00521228  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
0052122b  8bf0                      MOV ESI,EAX
0052122d  660f6ec1                  MOVD XMM0,ECX
00521231  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00521235  c1e91f                    SHR ECX,0x1f
00521238  f20f5804cd00cbba00        ADDSD XMM0,qword ptr [ECX*0x8 + 0xbacb00]
00521241  660f5ac0                  CVTPD2PS XMM0,XMM0
00521245  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
0052124d  f30f5c0578aaba00          SUBSS XMM0,dword ptr [0x00baaa78]
00521255  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0052125d  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
00521265  e8d6c2efff                CALL 0x0041d540
0052126a  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00521272  f30f10851cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff1c]
0052127a  e8a1c2efff                CALL 0x0041d520
0052127f  51                        PUSH ECX
00521280  c7042400008040            MOV dword ptr [ESP],0x40800000
00521287  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
0052128d  56                        PUSH ESI
0052128e  6a1a                      PUSH 0x1a
00521290  50                        PUSH EAX
00521291  8d9504ffffff              LEA EDX,[EBP + 0xffffff04]
00521297  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
0052129f  8bcf                      MOV ECX,EDI
005212a1  c78504ffffff00000000      MOV dword ptr [EBP + 0xffffff04],0x0
005212ab  c78508ffffff0000c0c0      MOV dword ptr [EBP + 0xffffff08],0xc0c00000
005212b5  e8d6a50e00                CALL 0x0060b890
005212ba  83c410                    ADD ESP,0x10
005212bd  e9d4070000                JMP 0x00521a96
005212c2  83f808                    CMP EAX,0x8
005212c5  0f85cb070000              JNZ 0x00521a96
005212cb  33c9                      XOR ECX,ECX
005212cd  b803000000                MOV EAX,0x3
005212d2  3b4f30                    CMP ECX,dword ptr [EDI + 0x30]
005212d5  6a00                      PUSH 0x0
005212d7  1bc9                      SBB ECX,ECX
005212d9  234f30                    AND ECX,dword ptr [EDI + 0x30]
005212dc  3bc8                      CMP ECX,EAX
005212de  0f42c1                    CMOVC EAX,ECX
005212e1  8d4f48                    LEA ECX,[EDI + 0x48]
005212e4  ff34854015b600            PUSH dword ptr [EAX*0x4 + 0xb61540]
005212eb  e89090eeff                CALL 0x0040a380
005212f0  68dcd2b100                PUSH 0xb1d2dc
005212f5  8d4f48                    LEA ECX,[EDI + 0x48]
005212f8  e8339deeff                CALL 0x0040b030
005212fd  84c0                      TEST AL,AL
005212ff  0f84df000000              JZ 0x005213e4
00521305  68080fb600                PUSH 0xb60f08
0052130a  8d4f48                    LEA ECX,[EDI + 0x48]
0052130d  e8be9eeeff                CALL 0x0040b1d0
00521312  6a00                      PUSH 0x0
00521314  57                        PUSH EDI
00521315  8db73c030000              LEA ESI,[EDI + 0x33c]
0052131b  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0052131f  f30f5e0524a3ba00          DIVSS XMM0,dword ptr [0x00baa324]
00521327  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0052132f  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00521334  f30f5e0524a3ba00          DIVSS XMM0,dword ptr [0x00baa324]
0052133c  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0052133f  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
00521347  660f6ec0                  MOVD XMM0,EAX
0052134b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0052134f  c1e81f                    SHR EAX,0x1f
00521352  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052135b  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
00521361  50                        PUSH EAX
00521362  6a0f                      PUSH 0xf
00521364  51                        PUSH ECX
00521365  660f5ac0                  CVTPD2PS XMM0,XMM0
00521369  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00521371  f30f5c0578aaba00          SUBSS XMM0,dword ptr [0x00baaa78]
00521379  f30f110424                MOVSS dword ptr [ESP],XMM0
0052137e  56                        PUSH ESI
0052137f  6a01                      PUSH 0x1
00521381  e88adf4400                CALL 0x0096f310
00521386  83c41c                    ADD ESP,0x1c
00521389  8bf0                      MOV ESI,EAX
0052138b  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0052138f  750a                      JNZ 0x0052139b
00521391  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
00521399  eb08                      JMP 0x005213a3
0052139b  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
005213a3  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
005213ab  8bce                      MOV ECX,ESI
005213ad  8b06                      MOV EAX,dword ptr [ESI]
005213af  ff500c                    CALL dword ptr [EAX + 0xc]
005213b2  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
005213b8  8d9fc4030000              LEA EBX,[EDI + 0x3c4]
005213be  85c9                      TEST ECX,ECX
005213c0  7418                      JZ 0x005213da
005213c2  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
005213c8  899d1cffffff              MOV dword ptr [EBP + 0xffffff1c],EBX
005213ce  50                        PUSH EAX
005213cf  81c1cc030000              ADD ECX,0x3cc
005213d5  e836defaff                CALL 0x004cf210
005213da  53                        PUSH EBX
005213db  8bce                      MOV ECX,ESI
005213dd  8933                      MOV dword ptr [EBX],ESI
005213df  e80cc9faff                CALL 0x004cdcf0
005213e4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005213e8  740d                      JZ 0x005213f7
005213ea  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005213f1  0f859f060000              JNZ 0x00521a96
005213f7  83bfc403000000            CMP dword ptr [EDI + 0x3c4],0x0
005213fe  0f8592060000              JNZ 0x00521a96
00521404  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0052140e  e983060000                JMP 0x00521a96
00521413  a17816c700                MOV EAX,[0x00c71678]
00521418  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0052141e  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
00521424  83b86412000000            CMP dword ptr [EAX + 0x1264],0x0
0052142b  0f8665060000              JBE 0x00521a96
00521431  f30f1035d0a2ba00          MOVSS XMM6,dword ptr [0x00baa2d0]
00521439  33ff                      XOR EDI,EDI
0052143b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00521440  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
00521446  8b34b8                    MOV ESI,dword ptr [EAX + EDI*0x4]
00521449  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
00521450  0f853b020000              JNZ 0x00521691
00521456  8b5e28                    MOV EBX,dword ptr [ESI + 0x28]
00521459  83fb01                    CMP EBX,0x1
0052145c  740e                      JZ 0x0052146c
0052145e  83fb02                    CMP EBX,0x2
00521461  7409                      JZ 0x0052146c
00521463  83fb09                    CMP EBX,0x9
00521466  0f8525020000              JNZ 0x00521691
0052146c  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
00521474  f30f109e40030000          MOVSS XMM3,dword ptr [ESI + 0x340]
0052147c  0f28c2                    MOVAPS XMM0,XMM2
0052147f  0f28cb                    MOVAPS XMM1,XMM3
00521482  83fb01                    CMP EBX,0x1
00521485  755f                      JNZ 0x005214e6
00521487  8b86681e0000              MOV EAX,dword ptr [ESI + 0x1e68]
0052148d  85c0                      TEST EAX,EAX
0052148f  744f                      JZ 0x005214e0
00521491  f30f10a03c030000          MOVSS XMM4,dword ptr [EAX + 0x33c]
00521499  0f28ca                    MOVAPS XMM1,XMM2
0052149c  f30f10a840030000          MOVSS XMM5,dword ptr [EAX + 0x340]
005214a4  f30f5ccc                  SUBSS XMM1,XMM4
005214a8  0f28c3                    MOVAPS XMM0,XMM3
005214ab  f30f5cc5                  SUBSS XMM0,XMM5
005214af  f30f59c9                  MULSS XMM1,XMM1
005214b3  f30f59c0                  MULSS XMM0,XMM0
005214b7  f30f58c1                  ADDSS XMM0,XMM1
005214bb  f30f100df8abba00          MOVSS XMM1,dword ptr [0x00baabf8]
005214c3  0f2fc8                    COMISS XMM1,XMM0
005214c6  7618                      JBE 0x005214e0
005214c8  0f28c2                    MOVAPS XMM0,XMM2
005214cb  0f28cb                    MOVAPS XMM1,XMM3
005214ce  f30f58c4                  ADDSS XMM0,XMM4
005214d2  f30f58cd                  ADDSS XMM1,XMM5
005214d6  f30f59c6                  MULSS XMM0,XMM6
005214da  f30f59ce                  MULSS XMM1,XMM6
005214de  eb06                      JMP 0x005214e6
005214e0  0f28c2                    MOVAPS XMM0,XMM2
005214e3  0f28cb                    MOVAPS XMM1,XMM3
005214e6  f30f1011                  MOVSS XMM2,dword ptr [ECX]
005214ea  f30f105904                MOVSS XMM3,dword ptr [ECX + 0x4]
005214ef  f30f1195fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM2
005214f7  f30f5cd0                  SUBSS XMM2,XMM0
005214fb  f30f119df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM3
00521503  f30f5cd9                  SUBSS XMM3,XMM1
00521507  0f28ca                    MOVAPS XMM1,XMM2
0052150a  f30f119500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM2
00521512  0f28c3                    MOVAPS XMM0,XMM3
00521515  f30f59ca                  MULSS XMM1,XMM2
00521519  f30f59c3                  MULSS XMM0,XMM3
0052151d  f30f119d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM3
00521525  f30f58c1                  ADDSS XMM0,XMM1
00521529  e82245f1ff                CALL 0x00435a50
0052152e  0f57c9                    XORPS XMM1,XMM1
00521531  0f2fc1                    COMISS XMM0,XMM1
00521534  7633                      JBE 0x00521569
00521536  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0052153e  f30f5ec8                  DIVSS XMM1,XMM0
00521542  0f28c1                    MOVAPS XMM0,XMM1
00521545  f30f598500ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff00]
0052154d  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
00521555  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
0052155d  f30f59c1                  MULSS XMM0,XMM1
00521561  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
00521569  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
00521571  c7851cffffff6666663f      MOV dword ptr [EBP + 0xffffff1c],0x3f666666
0052157b  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00521583  83fb01                    CMP EBX,0x1
00521586  751a                      JNZ 0x005215a2
00521588  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
00521590  c7851cffffff9a99193f      MOV dword ptr [EBP + 0xffffff1c],0x3f19999a
0052159a  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
005215a2  f30f108dfcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffefc]
005215aa  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
005215b2  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
005215ba  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
005215c2  f30f59c0                  MULSS XMM0,XMM0
005215c6  f30f59c9                  MULSS XMM1,XMM1
005215ca  f30f58c1                  ADDSS XMM0,XMM1
005215ce  e87d44f1ff                CALL 0x00435a50
005215d3  f30f100d08abba00          MOVSS XMM1,dword ptr [0x00baab08]
005215db  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
005215e1  f30f5cc8                  SUBSS XMM1,XMM0
005215e5  f30f10966c030000          MOVSS XMM2,dword ptr [ESI + 0x36c]
005215ed  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
005215f5  8d8df8feffff              LEA ECX,[EBP + 0xfffffef8]
005215fb  0f57ed                    XORPS XMM5,XMM5
005215fe  f30f1035d0a2ba00          MOVSS XMM6,dword ptr [0x00baa2d0]
00521606  c785fcfeffff00000000      MOV dword ptr [EBP + 0xfffffefc],0x0
00521610  f30f59c8                  MULSS XMM1,XMM0
00521614  f30f5e0d08abba00          DIVSS XMM1,dword ptr [0x00baab08]
0052161c  0f2fcd                    COMISS XMM1,XMM5
0052161f  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
00521627  0f46c8                    CMOVBE ECX,EAX
0052162a  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
00521630  0f2f01                    COMISS XMM0,dword ptr [ECX]
00521633  0f47c1                    CMOVA EAX,ECX
00521636  0f2ed5                    UCOMISS XMM2,XMM5
00521639  f30f1018                  MOVSS XMM3,dword ptr [EAX]
0052163d  0f28e3                    MOVAPS XMM4,XMM3
00521640  f30f599d10ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff10]
00521648  f30f59a500ffffff          MULSS XMM4,dword ptr [EBP + 0xffffff00]
00521650  9f                        LAHF
00521651  f6c444                    TEST AH,0x44
00521654  7b3b                      JNP 0x00521691
00521656  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
0052165e  0f28c1                    MOVAPS XMM0,XMM1
00521661  f30f59cb                  MULSS XMM1,XMM3
00521665  f30f59c4                  MULSS XMM0,XMM4
00521669  f30f5eca                  DIVSS XMM1,XMM2
0052166d  f30f5ec2                  DIVSS XMM0,XMM2
00521671  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
00521679  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
00521681  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
00521689  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
00521691  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
00521697  47                        INC EDI
00521698  8b8d08ffffff              MOV ECX,dword ptr [EBP + 0xffffff08]
0052169e  3bb864120000              CMP EDI,dword ptr [EAX + 0x1264]
005216a4  0f8296fdffff              JC 0x00521440
005216aa  8bbd18ffffff              MOV EDI,dword ptr [EBP + 0xffffff18]
005216b0  e9e1030000                JMP 0x00521a96
005216b5  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
005216bb  85d2                      TEST EDX,EDX
005216bd  7e1a                      JLE 0x005216d9
005216bf  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
005216c7  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
005216cf  2bc8                      SUB ECX,EAX
005216d1  03ca                      ADD ECX,EDX
005216d3  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
005216d9  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
005216e1  8bcf                      MOV ECX,EDI
005216e3  6a00                      PUSH 0x0
005216e5  e836741b00                CALL 0x006d8b20
005216ea  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
005216f1  7f78                      JG 0x0052176b
005216f3  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005216fa  8bcf                      MOV ECX,EDI
005216fc  7429                      JZ 0x00521727
005216fe  6a09                      PUSH 0x9
00521700  e85b6b1b00                CALL 0x006d8260
00521705  84c0                      TEST AL,AL
00521707  7462                      JZ 0x0052176b
00521709  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
0052170f  8bcf                      MOV ECX,EDI
00521711  50                        PUSH EAX
00521712  e819761b00                CALL 0x006d8d30
00521717  6840b6c700                PUSH 0xc7b640
0052171c  8bc8                      MOV ECX,EAX
0052171e  e80def4e00                CALL 0x00a10630
00521723  84c0                      TEST AL,AL
00521725  eb16                      JMP 0x0052173d
00521727  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
0052172f  6a07                      PUSH 0x7
00521731  6a00                      PUSH 0x0
00521733  e828971a00                CALL 0x006cae60
00521738  0fb6c0                    MOVZX EAX,AL
0052173b  85c0                      TEST EAX,EAX
0052173d  742c                      JZ 0x0052176b
0052173f  6a01                      PUSH 0x1
00521741  68dcd2b100                PUSH 0xb1d2dc
00521746  8d4f48                    LEA ECX,[EDI + 0x48]
00521749  c787a00b000054000000      MOV dword ptr [EDI + 0xba0],0x54
00521753  e8788eeeff                CALL 0x0040a5d0
00521758  84c0                      TEST AL,AL
0052175a  740f                      JZ 0x0052176b
0052175c  8d4f78                    LEA ECX,[EDI + 0x78]
0052175f  e84c8aeeff                CALL 0x0040a1b0
00521764  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0052176b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052176f  0f84ec020000              JZ 0x00521a61
00521775  68dcd2b100                PUSH 0xb1d2dc
0052177a  8d4f78                    LEA ECX,[EDI + 0x78]
0052177d  e84e96eeff                CALL 0x0040add0
00521782  84c0                      TEST AL,AL
00521784  0f84d7020000              JZ 0x00521a61
0052178a  51                        PUSH ECX
0052178b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00521792  6a00                      PUSH 0x0
00521794  6a02                      PUSH 0x2
00521796  51                        PUSH ECX
00521797  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052179e  8bcf                      MOV ECX,EDI
005217a0  6806010000                PUSH 0x106
005217a5  e8f6531b00                CALL 0x006d6ba0
005217aa  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
005217b0  e87bd7f1ff                CALL 0x0043ef30
005217b5  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005217b9  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
005217c1  f30f5c0528a1ba00          SUBSS XMM0,dword ptr [0x00baa128]
005217c9  c78554ffffff00005041      MOV dword ptr [EBP + 0xffffff54],0x41500000
005217d3  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
005217db  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
005217e3  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
005217eb  0f852e010000              JNZ 0x0052191f
005217f1  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
005217f9  f30f5905e4a2ba00          MULSS XMM0,dword ptr [0x00baa2e4]
00521801  834da802                  OR dword ptr [EBP + -0x58],0x2
00521805  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052180c  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
0052180f  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
00521817  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
0052181f  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
00521826  c78564ffffffcdcccc3f      MOV dword ptr [EBP + 0xffffff64],0x3fcccccd
00521830  8945ac                    MOV dword ptr [EBP + -0x54],EAX
00521833  c78558ffffff0000f4c1      MOV dword ptr [EBP + 0xffffff58],0xc1f40000
0052183d  c7855cffffff1f856b3f      MOV dword ptr [EBP + 0xffffff5c],0x3f6b851f
00521847  0f11458c                  MOVUPS xmmword ptr [EBP + -0x74],XMM0
0052184b  0f84ce000000              JZ 0x0052191f
00521851  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00521857  8bcf                      MOV ECX,EDI
00521859  50                        PUSH EAX
0052185a  e8d1741b00                CALL 0x006d8d30
0052185f  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00521867  8db73c030000              LEA ESI,[EDI + 0x33c]
0052186d  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00521872  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
00521877  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
0052187b  f30f59c0                  MULSS XMM0,XMM0
0052187f  f30f59c9                  MULSS XMM1,XMM1
00521883  f30f58c1                  ADDSS XMM0,XMM1
00521887  e8c441f1ff                CALL 0x00435a50
0052188c  f30f108d18ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff18]
00521894  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0052189c  f30f5ec1                  DIVSS XMM0,XMM1
005218a0  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
005218a8  0f28c8                    MOVAPS XMM1,XMM0
005218ab  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
005218b3  e8d82dfcff                CALL 0x004e4690
005218b8  f30f5c0554a4ba00          SUBSS XMM0,dword ptr [0x00baa454]
005218c0  f30f108d18ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff18]
005218c8  f30f101584a7ba00          MOVSS XMM2,dword ptr [0x00baa784]
005218d0  f30f5905bcadba00          MULSS XMM0,dword ptr [0x00baadbc]
005218d8  f30f5f056ca0ba00          MAXSS XMM0,dword ptr [0x00baa06c]
005218e0  f30f5cc8                  SUBSS XMM1,XMM0
005218e4  f30f590d20a8ba00          MULSS XMM1,dword ptr [0x00baa820]
005218ec  f30f5cd1                  SUBSS XMM2,XMM1
005218f0  f30f5ed0                  DIVSS XMM2,XMM0
005218f4  f30f1005a0adba00          MOVSS XMM0,dword ptr [0x00baada0]
005218fc  f30f5f1524aeba00          MAXSS XMM2,dword ptr [0x00baae24]
00521904  0f2fc2                    COMISS XMM0,XMM2
00521907  760a                      JBE 0x00521913
00521909  f30f119558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM2
00521911  eb12                      JMP 0x00521925
00521913  c78558ffffff0000a0c0      MOV dword ptr [EBP + 0xffffff58],0xc0a00000
0052191d  eb06                      JMP 0x00521925
0052191f  8db73c030000              LEA ESI,[EDI + 0x33c]
00521925  33c0                      XOR EAX,EAX
00521927  bb03000000                MOV EBX,0x3
0052192c  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00521930  8bcf                      MOV ECX,EDI
00521932  0f45d8                    CMOVNZ EBX,EAX
00521935  e806cf1900                CALL 0x006be840
0052193a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00521941  f30f101e                  MOVSS XMM3,dword ptr [ESI]
00521945  f30f106604                MOVSS XMM4,dword ptr [ESI + 0x4]
0052194a  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00521952  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0052195a  f30f5cd3                  SUBSS XMM2,XMM3
0052195e  f30f5ccc                  SUBSS XMM1,XMM4
00521962  f30f11950cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM2
0052196a  f30f119504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM2
00521972  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
0052197a  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
00521982  7459                      JZ 0x005219dd
00521984  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
0052198a  8bcf                      MOV ECX,EDI
0052198c  50                        PUSH EAX
0052198d  e89e731b00                CALL 0x006d8d30
00521992  56                        PUSH ESI
00521993  8bc8                      MOV ECX,EAX
00521995  e896ec4e00                CALL 0x00a10630
0052199a  84c0                      TEST AL,AL
0052199c  743f                      JZ 0x005219dd
0052199e  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
005219a4  8bcf                      MOV ECX,EDI
005219a6  50                        PUSH EAX
005219a7  e884731b00                CALL 0x006d8d30
005219ac  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
005219b1  f30f1010                  MOVSS XMM2,dword ptr [EAX]
005219b5  f30f5ccc                  SUBSS XMM1,XMM4
005219b9  f30f5cd3                  SUBSS XMM2,XMM3
005219bd  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
005219c5  f30f11950cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM2
005219cd  f30f119504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM2
005219d5  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
005219dd  e85e681b00                CALL 0x006d8240
005219e2  85c0                      TEST EAX,EAX
005219e4  7f10                      JG 0x005219f6
005219e6  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
005219ee  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
005219f6  0f28c1                    MOVAPS XMM0,XMM1
005219f9  f30f59c1                  MULSS XMM0,XMM1
005219fd  0f28ca                    MOVAPS XMM1,XMM2
00521a00  f30f59ca                  MULSS XMM1,XMM2
00521a04  f30f58c1                  ADDSS XMM0,XMM1
00521a08  e84340f1ff                CALL 0x00435a50
00521a0d  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00521a14  7634                      JBE 0x00521a4a
00521a16  f30f108d1cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff1c]
00521a1e  f30f5ec8                  DIVSS XMM1,XMM0
00521a22  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
00521a2a  f30f59c1                  MULSS XMM0,XMM1
00521a2e  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00521a36  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
00521a3e  f30f59c1                  MULSS XMM0,XMM1
00521a42  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
00521a4a  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
00521a50  8bcf                      MOV ECX,EDI
00521a52  50                        PUSH EAX
00521a53  53                        PUSH EBX
00521a54  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
00521a5a  50                        PUSH EAX
00521a5b  56                        PUSH ESI
00521a5c  e87f981a00                CALL 0x006cb2e0
00521a61  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00521a65  8d4f48                    LEA ECX,[EDI + 0x48]
00521a68  7409                      JZ 0x00521a73
00521a6a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00521a71  7523                      JNZ 0x00521a96
00521a73  6a00                      PUSH 0x0
00521a75  6854bcb100                PUSH 0xb1bc54
00521a7a  eb15                      JMP 0x00521a91
00521a7c  3dcb000000                CMP EAX,0xcb
00521a81  7513                      JNZ 0x00521a96
00521a83  84db                      TEST BL,BL
00521a85  740f                      JZ 0x00521a96
00521a87  6a00                      PUSH 0x0
00521a89  8d4f48                    LEA ECX,[EDI + 0x48]
00521a8c  681ceeb100                PUSH 0xb1ee1c
00521a91  e8ea88eeff                CALL 0x0040a380
00521a96  ff8710040000              INC dword ptr [EDI + 0x410]
00521a9c  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00521a9f  5f                        POP EDI
00521aa0  5e                        POP ESI
00521aa1  33cd                      XOR ECX,EBP
00521aa3  5b                        POP EBX
00521aa4  e882d65c00                CALL 0x00aef12b
00521aa9  8be5                      MOV ESP,EBP
00521aab  5d                        POP EBP
00521aac  c3                        RET
