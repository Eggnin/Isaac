; J460 NPC AI 0x0048ae30 AI_0048ae30
; types=266
; identities=266.0.0,266.1.0,266.2.0
; entry=0048ae30
0048ae30  53                        PUSH EBX
0048ae31  8bdc                      MOV EBX,ESP
0048ae33  83ec08                    SUB ESP,0x8
0048ae36  83e4f8                    AND ESP,0xfffffff8
0048ae39  83c404                    ADD ESP,0x4
0048ae3c  55                        PUSH EBP
0048ae3d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0048ae40  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0048ae44  8bec                      MOV EBP,ESP
0048ae46  6aff                      PUSH -0x1
0048ae48  68102daf00                PUSH 0xaf2d10
0048ae4d  64a100000000              MOV EAX,FS:[0x0]
0048ae53  50                        PUSH EAX
0048ae54  53                        PUSH EBX
0048ae55  81ec28010000              SUB ESP,0x128
0048ae5b  a1b493bf00                MOV EAX,[0x00bf93b4]
0048ae60  33c5                      XOR EAX,EBP
0048ae62  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0048ae65  56                        PUSH ESI
0048ae66  57                        PUSH EDI
0048ae67  50                        PUSH EAX
0048ae68  8d45f4                    LEA EAX,[EBP + -0xc]
0048ae6b  64a300000000              MOV FS:[0x0],EAX
0048ae71  8bf9                      MOV EDI,ECX
0048ae73  89bd04ffffff              MOV dword ptr [EBP + 0xffffff04],EDI
0048ae79  33c0                      XOR EAX,EAX
0048ae7b  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
0048ae81  8885ccfeffff              MOV byte ptr [EBP + 0xfffffecc],AL
0048ae87  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
0048ae8d  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
0048ae93  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
0048ae99  6a00                      PUSH 0x0
0048ae9b  8945fc                    MOV dword ptr [EBP + -0x4],EAX
0048ae9e  a17816c700                MOV EAX,[0x00c71678]
0048aea3  6a00                      PUSH 0x0
0048aea5  6aff                      PUSH -0x1
0048aea7  6a00                      PUSH 0x0
0048aea9  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0048aeaf  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0048aeb5  680a010000                PUSH 0x10a
0048aeba  81c118120000              ADD ECX,0x1218
0048aec0  50                        PUSH EAX
0048aec1  e89a00f9ff                CALL 0x0041af60
0048aec6  80bddcfeffff00            CMP byte ptr [EBP + 0xfffffedc],0x0
0048aecd  8bc8                      MOV ECX,EAX
0048aecf  c685ccfeffff01            MOV byte ptr [EBP + 0xfffffecc],0x1
0048aed6  8b5104                    MOV EDX,dword ptr [ECX + 0x4]
0048aed9  8b4108                    MOV EAX,dword ptr [ECX + 0x8]
0048aedc  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
0048aedf  899508ffffff              MOV dword ptr [EBP + 0xffffff08],EDX
0048aee5  8995d0feffff              MOV dword ptr [EBP + 0xfffffed0],EDX
0048aeeb  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
0048aef1  89b5d8feffff              MOV dword ptr [EBP + 0xfffffed8],ESI
0048aef7  7522                      JNZ 0x0048af1b
0048aef9  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0048aefd  b101                      MOV CL,0x1
0048aeff  8b95e0feffff              MOV EDX,dword ptr [EBP + 0xfffffee0]
0048af05  6a00                      PUSH 0x0
0048af07  6a00                      PUSH 0x0
0048af09  e8a2995d00                CALL 0x00a648b0
0048af0e  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0048af12  83c408                    ADD ESP,0x8
0048af15  8b9508ffffff              MOV EDX,dword ptr [EBP + 0xffffff08]
0048af1b  85f6                      TEST ESI,ESI
0048af1d  741e                      JZ 0x0048af3d
0048af1f  6a00                      PUSH 0x0
0048af21  68acd6c500                PUSH 0xc5d6ac
0048af26  68dcd5c500                PUSH 0xc5d5dc
0048af2b  6a00                      PUSH 0x0
0048af2d  ff32                      PUSH dword ptr [EDX]
0048af2f  e87d596600                CALL 0x00af08b1
0048af34  83c414                    ADD ESP,0x14
0048af37  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
0048af3d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0048af44  e817402600                CALL 0x006eef60
0048af49  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0048af51  33d2                      XOR EDX,EDX
0048af53  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0048af5b  b919000000                MOV ECX,0x19
0048af60  0f57db                    XORPS XMM3,XMM3
0048af63  f7f1                      DIV ECX
0048af65  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0048af6d  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0048af75  8d421e                    LEA EAX,[EDX + 0x1e]
0048af78  f30f2cf0                  CVTTSS2SI ESI,XMM0
0048af7c  0faff0                    IMUL ESI,EAX
0048af7f  a17816c700                MOV EAX,[0x00c71678]
0048af84  c680a02e020001            MOV byte ptr [EAX + 0x22ea0],0x1
0048af8b  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0048af91  89b5fcfeffff              MOV dword ptr [EBP + 0xfffffefc],ESI
0048af97  83f80d                    CMP EAX,0xd
0048af9a  0f8719120000              JA 0x0048c1b9
0048afa0  0fb6809cc34800            MOVZX EAX,byte ptr [EAX + 0x48c39c]
0048afa7  ff248580c34800            JMP dword ptr [EAX*0x4 + 0x48c380]
0048afae  818f6801000000000400      OR dword ptr [EDI + 0x168],0x40000
0048afb8  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0048afbc  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0048afc2  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048afcc  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
0048afd6  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
0048afe0  89b710040000              MOV dword ptr [EDI + 0x410],ESI
0048afe6  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0048afec  0f8591010000              JNZ 0x0048b183
0048aff2  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0048affa  8d4f48                    LEA ECX,[EDI + 0x48]
0048affd  f30f58c3                  ADDSS XMM0,XMM3
0048b001  c787dc00000000000000      MOV dword ptr [EDI + 0xdc],0x0
0048b00b  6a00                      PUSH 0x0
0048b00d  6890d9b100                PUSH 0xb1d990
0048b012  c787e00000000000d041      MOV dword ptr [EDI + 0xe0],0x41d00000
0048b01c  c78774030000cdcc0c40      MOV dword ptr [EDI + 0x374],0x400ccccd
0048b026  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0048b02e  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0048b036  f30f5c0504a9ba00          SUBSS XMM0,dword ptr [0x00baa904]
0048b03e  c78754030000c0e0ffff      MOV dword ptr [EDI + 0x354],0xffffe0c0
0048b048  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0048b050  e8ebf8f7ff                CALL 0x0040a940
0048b055  e8063f2600                CALL 0x006eef60
0048b05a  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
0048b060  8bf0                      MOV ESI,EAX
0048b062  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0048b068  50                        PUSH EAX
0048b069  8b8f00830100              MOV ECX,dword ptr [EDI + 0x18300]
0048b06f  e88c7c3800                CALL 0x00812d00
0048b074  56                        PUSH ESI
0048b075  6a00                      PUSH 0x0
0048b077  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
0048b07d  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0048b081  8bcf                      MOV ECX,EDI
0048b083  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0048b08b  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0048b091  6840b6c700                PUSH 0xc7b640
0048b096  50                        PUSH EAX
0048b097  6a01                      PUSH 0x1
0048b099  680a010000                PUSH 0x10a
0048b09e  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0048b0a6  c78510ffffff00002f43      MOV dword ptr [EBP + 0xffffff10],0x432f0000
0048b0b0  e86bdaf9ff                CALL 0x00428b20
0048b0b5  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
0048b0bb  e8a03e2600                CALL 0x006eef60
0048b0c0  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
0048b0c6  8bf0                      MOV ESI,EAX
0048b0c8  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0048b0ce  50                        PUSH EAX
0048b0cf  8b8f00830100              MOV ECX,dword ptr [EDI + 0x18300]
0048b0d5  e8267c3800                CALL 0x00812d00
0048b0da  56                        PUSH ESI
0048b0db  6a00                      PUSH 0x0
0048b0dd  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
0048b0e3  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0048b0e7  8bcf                      MOV ECX,EDI
0048b0e9  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
0048b0f1  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0048b0f7  6840b6c700                PUSH 0xc7b640
0048b0fc  50                        PUSH EAX
0048b0fd  6a02                      PUSH 0x2
0048b0ff  680a010000                PUSH 0x10a
0048b104  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0048b10c  c785f0feffff00002f43      MOV dword ptr [EBP + 0xfffffef0],0x432f0000
0048b116  e805daf9ff                CALL 0x00428b20
0048b11b  8b8d08ffffff              MOV ECX,dword ptr [EBP + 0xffffff08]
0048b121  c6817101000000            MOV byte ptr [ECX + 0x171],0x0
0048b128  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048b12e  c6807101000000            MOV byte ptr [EAX + 0x171],0x0
0048b135  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0048b13b  50                        PUSH EAX
0048b13c  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0048b142  e8b97b3800                CALL 0x00812d00
0048b147  8bbd04ffffff              MOV EDI,dword ptr [EBP + 0xffffff04]
0048b14d  0f57c9                    XORPS XMM1,XMM1
0048b150  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0048b154  f30f58c1                  ADDSS XMM0,XMM1
0048b158  c7873803000000001b43      MOV dword ptr [EDI + 0x338],0x431b0000
0048b162  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0048b16a  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0048b172  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
0048b178  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
0048b17e  e936100000                JMP 0x0048c1b9
0048b183  a17816c700                MOV EAX,[0x00c71678]
0048b188  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
0048b18e  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0048b194  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
0048b199  f30f5805e8a7ba00          ADDSS XMM0,dword ptr [0x00baa7e8]
0048b1a1  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0048b1a9  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0048b1af  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
0048b1b5  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0048b1bb  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
0048b1c1  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
0048b1c8  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0048b1ce  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
0048b1d5  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0048b1db  85c9                      TEST ECX,ECX
0048b1dd  7428                      JZ 0x0048b207
0048b1df  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0048b1e7  f30f5c893c030000          SUBSS XMM1,dword ptr [ECX + 0x33c]
0048b1ef  f30f5c8140030000          SUBSS XMM0,dword ptr [ECX + 0x340]
0048b1f7  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
0048b1ff  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0048b207  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0048b20b  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
0048b212  0f85a70f0000              JNZ 0x0048c1bf
0048b218  c6874801000001            MOV byte ptr [EDI + 0x148],0x1
0048b21f  e99b0f0000                JMP 0x0048c1bf
0048b224  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0048b228  0f8595010000              JNZ 0x0048b3c3
0048b22e  6890d9b100                PUSH 0xb1d990
0048b233  8d4f48                    LEA ECX,[EDI + 0x48]
0048b236  e8b5f7f7ff                CALL 0x0040a9f0
0048b23b  84c0                      TEST AL,AL
0048b23d  750f                      JNZ 0x0048b24e
0048b23f  6a00                      PUSH 0x0
0048b241  6890d9b100                PUSH 0xb1d990
0048b246  8d4f48                    LEA ECX,[EDI + 0x48]
0048b249  e8f2f6f7ff                CALL 0x0040a940
0048b24e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048b252  7409                      JZ 0x0048b25d
0048b254  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048b25b  750f                      JNZ 0x0048b26c
0048b25d  6a00                      PUSH 0x0
0048b25f  6854bcb100                PUSH 0xb1bc54
0048b264  8d4f48                    LEA ECX,[EDI + 0x48]
0048b267  e814f1f7ff                CALL 0x0040a380
0048b26c  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
0048b272  8d41ff                    LEA EAX,[ECX + -0x1]
0048b275  898710040000              MOV dword ptr [EDI + 0x410],EAX
0048b27b  85c9                      TEST ECX,ECX
0048b27d  0f89360f0000              JNS 0x0048c1b9
0048b283  e8d83c2600                CALL 0x006eef60
0048b288  33d2                      XOR EDX,EDX
0048b28a  b903000000                MOV ECX,0x3
0048b28f  f7f1                      DIV ECX
0048b291  3b97c40b0000              CMP EDX,dword ptr [EDI + 0xbc4]
0048b297  750e                      JNZ 0x0048b2a7
0048b299  e8c23c2600                CALL 0x006eef60
0048b29e  33d2                      XOR EDX,EDX
0048b2a0  b903000000                MOV ECX,0x3
0048b2a5  f7f1                      DIV ECX
0048b2a7  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
0048b2ad  85d2                      TEST EDX,EDX
0048b2af  7567                      JNZ 0x0048b318
0048b2b1  6a01                      PUSH 0x1
0048b2b3  68dcd2b100                PUSH 0xb1d2dc
0048b2b8  8d4f48                    LEA ECX,[EDI + 0x48]
0048b2bb  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0048b2c5  e806f3f7ff                CALL 0x0040a5d0
0048b2ca  84c0                      TEST AL,AL
0048b2cc  740f                      JZ 0x0048b2dd
0048b2ce  8d4f78                    LEA ECX,[EDI + 0x78]
0048b2d1  e8daeef7ff                CALL 0x0040a1b0
0048b2d6  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0048b2dd  e87e3c2600                CALL 0x006eef60
0048b2e2  83e003                    AND EAX,0x3
0048b2e5  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
0048b2ec  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0048b2f2  e8693c2600                CALL 0x006eef60
0048b2f7  33d2                      XOR EDX,EDX
0048b2f9  b964000000                MOV ECX,0x64
0048b2fe  f7f1                      DIV ECX
0048b300  83fa1e                    CMP EDX,0x1e
0048b303  0f83b00e0000              JNC 0x0048c1b9
0048b309  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0048b313  e9a10e0000                JMP 0x0048c1b9
0048b318  83fa01                    CMP EDX,0x1
0048b31b  7534                      JNZ 0x0048b351
0048b31d  52                        PUSH EDX
0048b31e  68ccd2b100                PUSH 0xb1d2cc
0048b323  8d4f48                    LEA ECX,[EDI + 0x48]
0048b326  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0048b330  e89bf2f7ff                CALL 0x0040a5d0
0048b335  84c0                      TEST AL,AL
0048b337  0f847c0e0000              JZ 0x0048c1b9
0048b33d  8d4f78                    LEA ECX,[EDI + 0x78]
0048b340  e86beef7ff                CALL 0x0040a1b0
0048b345  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0048b34c  e9680e0000                JMP 0x0048c1b9
0048b351  83fa02                    CMP EDX,0x2
0048b354  0f855f0e0000              JNZ 0x0048c1b9
0048b35a  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0048b364  e8f73b2600                CALL 0x006eef60
0048b369  33d2                      XOR EDX,EDX
0048b36b  b964000000                MOV ECX,0x64
0048b370  f7f1                      DIV ECX
0048b372  6a01                      PUSH 0x1
0048b374  8d4f48                    LEA ECX,[EDI + 0x48]
0048b377  83fa14                    CMP EDX,0x14
0048b37a  7311                      JNC 0x0048b38d
0048b37c  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0048b386  68ccd2b100                PUSH 0xb1d2cc
0048b38b  eb0f                      JMP 0x0048b39c
0048b38d  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0048b397  6898d9b100                PUSH 0xb1d998
0048b39c  e82ff2f7ff                CALL 0x0040a5d0
0048b3a1  84c0                      TEST AL,AL
0048b3a3  740f                      JZ 0x0048b3b4
0048b3a5  8d4f78                    LEA ECX,[EDI + 0x78]
0048b3a8  e803eef7ff                CALL 0x0040a1b0
0048b3ad  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0048b3b4  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048b3be  e9f60d0000                JMP 0x0048c1b9
0048b3c3  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
0048b3ca  e9ea0d0000                JMP 0x0048c1b9
0048b3cf  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0048b3d3  0f8583020000              JNZ 0x0048b65c
0048b3d9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048b3dd  7409                      JZ 0x0048b3e8
0048b3df  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048b3e6  7510                      JNZ 0x0048b3f8
0048b3e8  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048b3f2  89b710040000              MOV dword ptr [EDI + 0x410],ESI
0048b3f8  8d4f48                    LEA ECX,[EDI + 0x48]
0048b3fb  e880f3f7ff                CALL 0x0040a780
0048b400  8bf0                      MOV ESI,EAX
0048b402  83fe1f                    CMP ESI,0x1f
0048b405  7536                      JNZ 0x0048b43d
0048b407  8bcf                      MOV ECX,EDI
0048b409  e832342300                CALL 0x006be840
0048b40e  8d8fb80b0000              LEA ECX,[EDI + 0xbb8]
0048b414  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0048b41c  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0048b424  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0048b42c  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0048b434  f30f1101                  MOVSS dword ptr [ECX],XMM0
0048b438  f30f114904                MOVSS dword ptr [ECX + 0x4],XMM1
0048b43d  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0048b443  83f801                    CMP EAX,0x1
0048b446  7f05                      JG 0x0048b44d
0048b448  83fe1f                    CMP ESI,0x1f
0048b44b  eb57                      JMP 0x0048b4a4
0048b44d  83f803                    CMP EAX,0x3
0048b450  750f                      JNZ 0x0048b461
0048b452  83fe1f                    CMP ESI,0x1f
0048b455  7453                      JZ 0x0048b4aa
0048b457  83fe24                    CMP ESI,0x24
0048b45a  744e                      JZ 0x0048b4aa
0048b45c  83fe29                    CMP ESI,0x29
0048b45f  eb43                      JMP 0x0048b4a4
0048b461  83f805                    CMP EAX,0x5
0048b464  7514                      JNZ 0x0048b47a
0048b466  83fe1f                    CMP ESI,0x1f
0048b469  743f                      JZ 0x0048b4aa
0048b46b  83fe22                    CMP ESI,0x22
0048b46e  743a                      JZ 0x0048b4aa
0048b470  83fe25                    CMP ESI,0x25
0048b473  7435                      JZ 0x0048b4aa
0048b475  83fe28                    CMP ESI,0x28
0048b478  eb25                      JMP 0x0048b49f
0048b47a  83f807                    CMP EAX,0x7
0048b47d  0f85360d0000              JNZ 0x0048c1b9
0048b483  83fe1f                    CMP ESI,0x1f
0048b486  7422                      JZ 0x0048b4aa
0048b488  83fe21                    CMP ESI,0x21
0048b48b  741d                      JZ 0x0048b4aa
0048b48d  83fe23                    CMP ESI,0x23
0048b490  7418                      JZ 0x0048b4aa
0048b492  83fe25                    CMP ESI,0x25
0048b495  7413                      JZ 0x0048b4aa
0048b497  83fe27                    CMP ESI,0x27
0048b49a  740e                      JZ 0x0048b4aa
0048b49c  83fe29                    CMP ESI,0x29
0048b49f  7409                      JZ 0x0048b4aa
0048b4a1  83fe2b                    CMP ESI,0x2b
0048b4a4  0f850f0d0000              JNZ 0x0048c1b9
0048b4aa  51                        PUSH ECX
0048b4ab  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048b4b2  6a00                      PUSH 0x0
0048b4b4  6a14                      PUSH 0x14
0048b4b6  51                        PUSH ECX
0048b4b7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048b4be  8bcf                      MOV ECX,EDI
0048b4c0  6a10                      PUSH 0x10
0048b4c2  e8d9b62400                CALL 0x006d6ba0
0048b4c7  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0048b4ce  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0048b4d4  0f85f4000000              JNZ 0x0048b5ce
0048b4da  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0048b4e2  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0048b4ea  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0048b4f2  0f28c1                    MOVAPS XMM0,XMM1
0048b4f5  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
0048b4fd  0f57c9                    XORPS XMM1,XMM1
0048b500  f30f5cc1                  SUBSS XMM0,XMM1
0048b504  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0048b50c  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0048b514  f30f5c0528aeba00          SUBSS XMM0,dword ptr [0x00baae28]
0048b51c  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0048b524  e8073afbff                CALL 0x0043ef30
0048b529  8bcf                      MOV ECX,EDI
0048b52b  c78528ffffff6666e63f      MOV dword ptr [EBP + 0xffffff28],0x3fe66666
0048b535  e806332300                CALL 0x006be840
0048b53a  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0048b542  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
0048b54a  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
0048b552  f30f10a040030000          MOVSS XMM4,dword ptr [EAX + 0x340]
0048b55a  f30f5cd9                  SUBSS XMM3,XMM1
0048b55e  f30f5ce2                  SUBSS XMM4,XMM2
0048b562  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0048b568  50                        PUSH EAX
0048b569  51                        PUSH ECX
0048b56a  f30f591d54a3ba00          MULSS XMM3,dword ptr [0x00baa354]
0048b572  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0048b578  8bcf                      MOV ECX,EDI
0048b57a  c7042400002041            MOV dword ptr [ESP],0x41200000
0048b581  f30f592554a3ba00          MULSS XMM4,dword ptr [0x00baa354]
0048b589  50                        PUSH EAX
0048b58a  f30f58d9                  ADDSS XMM3,XMM1
0048b58e  6a0c                      PUSH 0xc
0048b590  f30f58e2                  ADDSS XMM4,XMM2
0048b594  f30f119d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM3
0048b59c  f30f11a510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM4
0048b5a4  e827182400                CALL 0x006ccdd0
0048b5a9  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
0048b5b1  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0048b5b9  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
0048b5c1  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0048b5c9  e9eb0b0000                JMP 0x0048c1b9
0048b5ce  e85d39fbff                CALL 0x0043ef30
0048b5d3  8bf0                      MOV ESI,EAX
0048b5d5  8d8fb80b0000              LEA ECX,[EDI + 0xbb8]
0048b5db  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0048b5e1  50                        PUSH EAX
0048b5e2  e8494a5800                CALL 0x00a10030
0048b5e7  0f57c9                    XORPS XMM1,XMM1
0048b5ea  8bcf                      MOV ECX,EDI
0048b5ec  56                        PUSH ESI
0048b5ed  6a05                      PUSH 0x5
0048b5ef  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0048b5f3  f30f5905fca7ba00          MULSS XMM0,dword ptr [0x00baa7fc]
0048b5fb  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0048b600  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0048b606  f30f5915fca7ba00          MULSS XMM2,dword ptr [0x00baa7fc]
0048b60e  50                        PUSH EAX
0048b60f  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0048b617  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0048b61d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0048b625  f30f5cc1                  SUBSS XMM0,XMM1
0048b629  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
0048b631  50                        PUSH EAX
0048b632  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
0048b63a  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0048b642  f30f5c0528aeba00          SUBSS XMM0,dword ptr [0x00baae28]
0048b64a  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0048b652  e889fc2300                CALL 0x006cb2e0
0048b657  e95d0b0000                JMP 0x0048c1b9
0048b65c  6880d9b100                PUSH 0xb1d980
0048b661  8d4f48                    LEA ECX,[EDI + 0x48]
0048b664  e8c7f9f7ff                CALL 0x0040b030
0048b669  84c0                      TEST AL,AL
0048b66b  745f                      JZ 0x0048b6cc
0048b66d  51                        PUSH ECX
0048b66e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048b675  6a00                      PUSH 0x0
0048b677  6a14                      PUSH 0x14
0048b679  51                        PUSH ECX
0048b67a  c704243333333f            MOV dword ptr [ESP],0x3f333333
0048b681  8bcf                      MOV ECX,EDI
0048b683  6a30                      PUSH 0x30
0048b685  e816b52400                CALL 0x006d6ba0
0048b68a  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
0048b691  83ec10                    SUB ESP,0x10
0048b694  f30f101d44aaba00          MOVSS XMM3,dword ptr [0x00baaa44]
0048b69c  8bc4                      MOV EAX,ESP
0048b69e  f30f101510a9ba00          MOVSS XMM2,dword ptr [0x00baa910]
0048b6a6  83ec08                    SUB ESP,0x8
0048b6a9  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0048b6ac  c744240400004842          MOV dword ptr [ESP + 0x4],0x42480000
0048b6b4  8d873c030000              LEA EAX,[EDI + 0x33c]
0048b6ba  6a00                      PUSH 0x0
0048b6bc  6a00                      PUSH 0x0
0048b6be  6a00                      PUSH 0x0
0048b6c0  57                        PUSH EDI
0048b6c1  50                        PUSH EAX
0048b6c2  e899362700                CALL 0x006fed60
0048b6c7  e9ed0a0000                JMP 0x0048c1b9
0048b6cc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048b6d0  740d                      JZ 0x0048b6df
0048b6d2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048b6d9  0f85da0a0000              JNZ 0x0048c1b9
0048b6df  6a00                      PUSH 0x0
0048b6e1  6854bcb100                PUSH 0xb1bc54
0048b6e6  8d4f48                    LEA ECX,[EDI + 0x48]
0048b6e9  e892ecf7ff                CALL 0x0040a380
0048b6ee  e9bc0a0000                JMP 0x0048c1af
0048b6f3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048b6f7  8d4f48                    LEA ECX,[EDI + 0x48]
0048b6fa  7409                      JZ 0x0048b705
0048b6fc  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048b703  7510                      JNZ 0x0048b715
0048b705  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048b70f  89b710040000              MOV dword ptr [EDI + 0x410],ESI
0048b715  e866f0f7ff                CALL 0x0040a780
0048b71a  83f814                    CMP EAX,0x14
0048b71d  0f85960a0000              JNZ 0x0048c1b9
0048b723  51                        PUSH ECX
0048b724  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048b72b  6a00                      PUSH 0x0
0048b72d  6a3c                      PUSH 0x3c
0048b72f  51                        PUSH ECX
0048b730  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048b737  8bcf                      MOV ECX,EDI
0048b739  6833010000                PUSH 0x133
0048b73e  e85db42400                CALL 0x006d6ba0
0048b743  be14000000                MOV ESI,0x14
0048b748  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
0048b750  a17816c700                MOV EAX,[0x00c71678]
0048b755  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0048b75b  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
0048b760  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0048b768  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
0048b76d  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
0048b775  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0048b77d  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
0048b782  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
0048b78a  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
0048b78f  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0048b797  e8c4372600                CALL 0x006eef60
0048b79c  660f6ec0                  MOVD XMM0,EAX
0048b7a0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048b7a4  c1e81f                    SHR EAX,0x1f
0048b7a7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048b7b0  660f5ac0                  CVTPD2PS XMM0,XMM0
0048b7b4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048b7bc  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
0048b7c4  e897372600                CALL 0x006eef60
0048b7c9  f30f108d08ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff08]
0048b7d1  f30f5c8d00ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff00]
0048b7d9  6a00                      PUSH 0x0
0048b7db  660f6ec0                  MOVD XMM0,EAX
0048b7df  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048b7e3  c1e81f                    SHR EAX,0x1f
0048b7e6  6a00                      PUSH 0x0
0048b7e8  6a00                      PUSH 0x0
0048b7ea  51                        PUSH ECX
0048b7eb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048b7f1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048b7fa  c7042400000000            MOV dword ptr [ESP],0x0
0048b801  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0048b807  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0048b80d  50                        PUSH EAX
0048b80e  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0048b814  660f5ac0                  CVTPD2PS XMM0,XMM0
0048b818  50                        PUSH EAX
0048b819  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048b821  f30f59c1                  MULSS XMM0,XMM1
0048b825  f30f588500ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff00]
0048b82d  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0048b835  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0048b83d  f30f5c85f8feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffef8]
0048b845  f30f598504ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff04]
0048b84d  f30f5885f8feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffef8]
0048b855  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0048b85d  e8be7c3800                CALL 0x00813520
0048b862  e8f9362600                CALL 0x006eef60
0048b867  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048b86d  50                        PUSH EAX
0048b86e  6a00                      PUSH 0x0
0048b870  57                        PUSH EDI
0048b871  6840b6c700                PUSH 0xc7b640
0048b876  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0048b87c  50                        PUSH EAX
0048b87d  6a37                      PUSH 0x37
0048b87f  68e8030000                PUSH 0x3e8
0048b884  e897d2f9ff                CALL 0x00428b20
0048b889  83ee01                    SUB ESI,0x1
0048b88c  0f85befeffff              JNZ 0x0048b750
0048b892  e922090000                JMP 0x0048c1b9
0048b897  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
0048b89e  0f8526020000              JNZ 0x0048baca
0048b8a4  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0048b8aa  8bc8                      MOV ECX,EAX
0048b8ac  85c0                      TEST EAX,EAX
0048b8ae  7527                      JNZ 0x0048b8d7
0048b8b0  51                        PUSH ECX
0048b8b1  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048b8b8  50                        PUSH EAX
0048b8b9  6a02                      PUSH 0x2
0048b8bb  51                        PUSH ECX
0048b8bc  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048b8c3  8bcf                      MOV ECX,EDI
0048b8c5  6a74                      PUSH 0x74
0048b8c7  e8d4b22400                CALL 0x006d6ba0
0048b8cc  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0048b8d2  0f57db                    XORPS XMM3,XMM3
0048b8d5  8bc8                      MOV ECX,EAX
0048b8d7  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0048b8df  0f57d2                    XORPS XMM2,XMM2
0048b8e2  0f28c1                    MOVAPS XMM0,XMM1
0048b8e5  f30f2ad0                  CVTSI2SS XMM2,EAX
0048b8e9  f30f5c05f8aaba00          SUBSS XMM0,dword ptr [0x00baaaf8]
0048b8f1  f30f5cd3                  SUBSS XMM2,XMM3
0048b8f5  f30f5cc1                  SUBSS XMM0,XMM1
0048b8f9  f30f5e1510a9ba00          DIVSS XMM2,dword ptr [0x00baa910]
0048b901  f30f5fd3                  MAXSS XMM2,XMM3
0048b905  f30f5d1554a4ba00          MINSS XMM2,dword ptr [0x00baa454]
0048b90d  f30f59c2                  MULSS XMM0,XMM2
0048b911  f30f58c1                  ADDSS XMM0,XMM1
0048b915  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0048b91d  83f823                    CMP EAX,0x23
0048b920  0f8578010000              JNZ 0x0048ba9e
0048b926  51                        PUSH ECX
0048b927  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048b92e  6a00                      PUSH 0x0
0048b930  6a3c                      PUSH 0x3c
0048b932  51                        PUSH ECX
0048b933  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048b93a  8bcf                      MOV ECX,EDI
0048b93c  6833010000                PUSH 0x133
0048b941  e85ab22400                CALL 0x006d6ba0
0048b946  be14000000                MOV ESI,0x14
0048b94b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0048b950  a17816c700                MOV EAX,[0x00c71678]
0048b955  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0048b95b  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
0048b960  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0048b968  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
0048b96d  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
0048b975  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0048b97d  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
0048b982  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
0048b98a  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
0048b98f  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0048b997  e8c4352600                CALL 0x006eef60
0048b99c  660f6ec0                  MOVD XMM0,EAX
0048b9a0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048b9a4  c1e81f                    SHR EAX,0x1f
0048b9a7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048b9b0  660f5ac0                  CVTPD2PS XMM0,XMM0
0048b9b4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048b9bc  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
0048b9c4  e897352600                CALL 0x006eef60
0048b9c9  f30f108d08ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff08]
0048b9d1  f30f5c8d00ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff00]
0048b9d9  6a00                      PUSH 0x0
0048b9db  660f6ec0                  MOVD XMM0,EAX
0048b9df  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048b9e3  c1e81f                    SHR EAX,0x1f
0048b9e6  6a00                      PUSH 0x0
0048b9e8  6a00                      PUSH 0x0
0048b9ea  51                        PUSH ECX
0048b9eb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048b9f1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048b9fa  c7042400000000            MOV dword ptr [ESP],0x0
0048ba01  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0048ba07  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0048ba0d  50                        PUSH EAX
0048ba0e  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0048ba14  660f5ac0                  CVTPD2PS XMM0,XMM0
0048ba18  50                        PUSH EAX
0048ba19  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048ba21  f30f59c1                  MULSS XMM0,XMM1
0048ba25  f30f588500ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff00]
0048ba2d  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0048ba35  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0048ba3d  f30f5c85f8feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffef8]
0048ba45  f30f598504ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff04]
0048ba4d  f30f5885f8feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffef8]
0048ba55  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0048ba5d  e8be7a3800                CALL 0x00813520
0048ba62  e8f9342600                CALL 0x006eef60
0048ba67  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048ba6d  50                        PUSH EAX
0048ba6e  6a00                      PUSH 0x0
0048ba70  57                        PUSH EDI
0048ba71  6840b6c700                PUSH 0xc7b640
0048ba76  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0048ba7c  50                        PUSH EAX
0048ba7d  6a37                      PUSH 0x37
0048ba7f  68e8030000                PUSH 0x3e8
0048ba84  e897d0f9ff                CALL 0x00428b20
0048ba89  83ee01                    SUB ESI,0x1
0048ba8c  0f85befeffff              JNZ 0x0048b950
0048ba92  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
0048ba98  8bb5fcfeffff              MOV ESI,dword ptr [EBP + 0xfffffefc]
0048ba9e  8d4101                    LEA EAX,[ECX + 0x1]
0048baa1  898710040000              MOV dword ptr [EDI + 0x410],EAX
0048baa7  83f82d                    CMP EAX,0x2d
0048baaa  7c1e                      JL 0x0048baca
0048baac  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
0048bab6  e8a5342600                CALL 0x006eef60
0048babb  33d2                      XOR EDX,EDX
0048babd  b93c000000                MOV ECX,0x3c
0048bac2  f7f1                      DIV ECX
0048bac4  899710040000              MOV dword ptr [EDI + 0x410],EDX
0048baca  83bfc00b000002            CMP dword ptr [EDI + 0xbc0],0x2
0048bad1  7528                      JNZ 0x0048bafb
0048bad3  ff8f10040000              DEC dword ptr [EDI + 0x410]
0048bad9  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0048bae0  7f19                      JG 0x0048bafb
0048bae2  6a00                      PUSH 0x0
0048bae4  6898d9b100                PUSH 0xb1d998
0048bae9  8d4f48                    LEA ECX,[EDI + 0x48]
0048baec  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
0048baf6  e885e8f7ff                CALL 0x0040a380
0048bafb  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048baff  0f84b4060000              JZ 0x0048c1b9
0048bb05  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048bb0c  7448                      JZ 0x0048bb56
0048bb0e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048bb11  83781410                  CMP dword ptr [EAX + 0x14],0x10
0048bb15  7202                      JC 0x0048bb19
0048bb17  8b00                      MOV EAX,dword ptr [EAX]
0048bb19  b998d9b100                MOV ECX,0xb1d998
0048bb1e  6690                      NOP
0048bb20  8a10                      MOV DL,byte ptr [EAX]
0048bb22  3a11                      CMP DL,byte ptr [ECX]
0048bb24  751a                      JNZ 0x0048bb40
0048bb26  84d2                      TEST DL,DL
0048bb28  7412                      JZ 0x0048bb3c
0048bb2a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048bb2d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048bb30  750e                      JNZ 0x0048bb40
0048bb32  83c002                    ADD EAX,0x2
0048bb35  83c102                    ADD ECX,0x2
0048bb38  84d2                      TEST DL,DL
0048bb3a  75e4                      JNZ 0x0048bb20
0048bb3c  33c0                      XOR EAX,EAX
0048bb3e  eb05                      JMP 0x0048bb45
0048bb40  1bc0                      SBB EAX,EAX
0048bb42  83c801                    OR EAX,0x1
0048bb45  85c0                      TEST EAX,EAX
0048bb47  744a                      JZ 0x0048bb93
0048bb49  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048bb50  0f8563060000              JNZ 0x0048c1b9
0048bb56  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048bb59  83781410                  CMP dword ptr [EAX + 0x14],0x10
0048bb5d  7202                      JC 0x0048bb61
0048bb5f  8b00                      MOV EAX,dword ptr [EAX]
0048bb61  b998d9b100                MOV ECX,0xb1d998
0048bb66  8a10                      MOV DL,byte ptr [EAX]
0048bb68  3a11                      CMP DL,byte ptr [ECX]
0048bb6a  751a                      JNZ 0x0048bb86
0048bb6c  84d2                      TEST DL,DL
0048bb6e  7412                      JZ 0x0048bb82
0048bb70  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048bb73  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0048bb76  750e                      JNZ 0x0048bb86
0048bb78  83c002                    ADD EAX,0x2
0048bb7b  83c102                    ADD ECX,0x2
0048bb7e  84d2                      TEST DL,DL
0048bb80  75e4                      JNZ 0x0048bb66
0048bb82  33c0                      XOR EAX,EAX
0048bb84  eb05                      JMP 0x0048bb8b
0048bb86  1bc0                      SBB EAX,EAX
0048bb88  83c801                    OR EAX,0x1
0048bb8b  85c0                      TEST EAX,EAX
0048bb8d  0f8526060000              JNZ 0x0048c1b9
0048bb93  83bfc00b000003            CMP dword ptr [EDI + 0xbc0],0x3
0048bb9a  0f85a9000000              JNZ 0x0048bc49
0048bba0  8d4f48                    LEA ECX,[EDI + 0x48]
0048bba3  e8d8ebf7ff                CALL 0x0040a780
0048bba8  83f822                    CMP EAX,0x22
0048bbab  752a                      JNZ 0x0048bbd7
0048bbad  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048bbb3  6a08                      PUSH 0x8
0048bbb5  e8b67a2700                CALL 0x00703670
0048bbba  51                        PUSH ECX
0048bbbb  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048bbc2  6a00                      PUSH 0x0
0048bbc4  6a02                      PUSH 0x2
0048bbc6  51                        PUSH ECX
0048bbc7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048bbce  8bcf                      MOV ECX,EDI
0048bbd0  6a74                      PUSH 0x74
0048bbd2  e8c9af2400                CALL 0x006d6ba0
0048bbd7  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0048bbdf  8d4f48                    LEA ECX,[EDI + 0x48]
0048bbe2  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
0048bbea  f30f5c05f8aaba00          SUBSS XMM0,dword ptr [0x00baaaf8]
0048bbf2  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0048bbfa  e881ebf7ff                CALL 0x0040a780
0048bbff  f30f109508ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff08]
0048bc07  0f57c9                    XORPS XMM1,XMM1
0048bc0a  f30f5c95fcfeffff          SUBSS XMM2,dword ptr [EBP + 0xfffffefc]
0048bc12  660f6ec0                  MOVD XMM0,EAX
0048bc16  0f5bc0                    CVTDQ2PS XMM0,XMM0
0048bc19  f30f5c05e8a8ba00          SUBSS XMM0,dword ptr [0x00baa8e8]
0048bc21  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
0048bc29  f30f5fc1                  MAXSS XMM0,XMM1
0048bc2d  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
0048bc35  f30f59d0                  MULSS XMM2,XMM0
0048bc39  f30f5895fcfeffff          ADDSS XMM2,dword ptr [EBP + 0xfffffefc]
0048bc41  f30f119738030000          MOVSS dword ptr [EDI + 0x338],XMM2
0048bc49  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048bc4d  7409                      JZ 0x0048bc58
0048bc4f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048bc56  7510                      JNZ 0x0048bc68
0048bc58  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048bc62  89b710040000              MOV dword ptr [EDI + 0x410],ESI
0048bc68  8d4f48                    LEA ECX,[EDI + 0x48]
0048bc6b  e810ebf7ff                CALL 0x0040a780
0048bc70  83f829                    CMP EAX,0x29
0048bc73  0f8e40050000              JLE 0x0048c1b9
0048bc79  83f842                    CMP EAX,0x42
0048bc7c  0f8d37050000              JGE 0x0048c1b9
0048bc82  a801                      TEST AL,0x1
0048bc84  0f842f050000              JZ 0x0048c1b9
0048bc8a  51                        PUSH ECX
0048bc8b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048bc92  6a00                      PUSH 0x0
0048bc94  6a3c                      PUSH 0x3c
0048bc96  51                        PUSH ECX
0048bc97  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048bc9e  8bcf                      MOV ECX,EDI
0048bca0  6834010000                PUSH 0x134
0048bca5  e8f6ae2400                CALL 0x006d6ba0
0048bcaa  f30f1005f0abba00          MOVSS XMM0,dword ptr [0x00baabf0]
0048bcb2  e8999dfaff                CALL 0x00435a50
0048bcb7  0f28d0                    MOVAPS XMM2,XMM0
0048bcba  c78508ffffff03000000      MOV dword ptr [EBP + 0xffffff08],0x3
0048bcc4  f30f1195f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM2
0048bccc  0f1f4000                  NOP dword ptr [EAX]
0048bcd0  f30f101d24a9ba00          MOVSS XMM3,dword ptr [0x00baa924]
0048bcd8  0f57c9                    XORPS XMM1,XMM1
0048bcdb  0f2fd1                    COMISS XMM2,XMM1
0048bcde  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
0048bce6  f30f119d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM3
0048bcee  7627                      JBE 0x0048bd17
0048bcf0  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0048bcf8  f30f5ec2                  DIVSS XMM0,XMM2
0048bcfc  0f28d0                    MOVAPS XMM2,XMM0
0048bcff  f30f59c3                  MULSS XMM0,XMM3
0048bd03  f30f59d1                  MULSS XMM2,XMM1
0048bd07  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0048bd0f  f30f119504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM2
0048bd17  e844322600                CALL 0x006eef60
0048bd1c  0f57c0                    XORPS XMM0,XMM0
0048bd1f  f20f2ac0                  CVTSI2SD XMM0,EAX
0048bd23  c1e81f                    SHR EAX,0x1f
0048bd26  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048bd2f  660f5ac0                  CVTPD2PS XMM0,XMM0
0048bd33  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048bd3b  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0048bd43  f30f58c0                  ADDSS XMM0,XMM0
0048bd47  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0048bd4f  e80c322600                CALL 0x006eef60
0048bd54  0f57c0                    XORPS XMM0,XMM0
0048bd57  f20f2ac0                  CVTSI2SD XMM0,EAX
0048bd5b  c1e81f                    SHR EAX,0x1f
0048bd5e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048bd67  660f5ac0                  CVTPD2PS XMM0,XMM0
0048bd6b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048bd73  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0048bd7b  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
0048bd83  e8b817f9ff                CALL 0x0041d540
0048bd88  f30f5985f4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffef4]
0048bd90  f30f108d04ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff04]
0048bd98  f30f590d04a8ba00          MULSS XMM1,dword ptr [0x00baa804]
0048bda0  f30f5905b0a7ba00          MULSS XMM0,dword ptr [0x00baa7b0]
0048bda8  f30f58c1                  ADDSS XMM0,XMM1
0048bdac  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
0048bdb4  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
0048bdbc  e85f17f9ff                CALL 0x0041d520
0048bdc1  f30f5985f4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffef4]
0048bdc9  f30f108d00ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff00]
0048bdd1  f30f590d04a8ba00          MULSS XMM1,dword ptr [0x00baa804]
0048bdd9  f30f5905b0a7ba00          MULSS XMM0,dword ptr [0x00baa7b0]
0048bde1  f30f58c1                  ADDSS XMM0,XMM1
0048bde5  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0048bded  e86e312600                CALL 0x006eef60
0048bdf2  0f57c0                    XORPS XMM0,XMM0
0048bdf5  f20f2ac0                  CVTSI2SD XMM0,EAX
0048bdf9  c1e81f                    SHR EAX,0x1f
0048bdfc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048be05  660f5ac0                  CVTPD2PS XMM0,XMM0
0048be09  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048be11  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0048be19  f30f58c0                  ADDSS XMM0,XMM0
0048be1d  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0048be25  e81617f9ff                CALL 0x0041d540
0048be2a  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0048be32  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
0048be3a  e8e116f9ff                CALL 0x0041d520
0048be3f  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0048be47  e814312600                CALL 0x006eef60
0048be4c  0f57c0                    XORPS XMM0,XMM0
0048be4f  f20f2ac0                  CVTSI2SD XMM0,EAX
0048be53  c1e81f                    SHR EAX,0x1f
0048be56  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048be5f  660f5ac8                  CVTPD2PS XMM1,XMM0
0048be63  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0048be6b  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
0048be73  f30f598d0cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff0c]
0048be7b  0f28c1                    MOVAPS XMM0,XMM1
0048be7e  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
0048be86  f30f59c1                  MULSS XMM0,XMM1
0048be8a  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
0048be92  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
0048be9a  f30f59c9                  MULSS XMM1,XMM1
0048be9e  f30f58c1                  ADDSS XMM0,XMM1
0048bea2  e8a99bfaff                CALL 0x00435a50
0048bea7  0f57c9                    XORPS XMM1,XMM1
0048beaa  0f2fc1                    COMISS XMM0,XMM1
0048bead  7634                      JBE 0x0048bee3
0048beaf  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0048beb7  f30f5ec8                  DIVSS XMM1,XMM0
0048bebb  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
0048bec3  f30f59c1                  MULSS XMM0,XMM1
0048bec7  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0048becf  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
0048bed7  f30f59c1                  MULSS XMM0,XMM1
0048bedb  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0048bee3  e878302600                CALL 0x006eef60
0048bee8  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0048bef0  660f6ec0                  MOVD XMM0,EAX
0048bef4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048bef8  c1e81f                    SHR EAX,0x1f
0048befb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048bf04  660f5ad0                  CVTPD2PS XMM2,XMM0
0048bf08  0f57c0                    XORPS XMM0,XMM0
0048bf0b  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0048bf13  f30f58c8                  ADDSS XMM1,XMM0
0048bf17  f30f5915d0a8ba00          MULSS XMM2,dword ptr [0x00baa8d0]
0048bf1f  f30f5cc8                  SUBSS XMM1,XMM0
0048bf23  f30f581554a4ba00          ADDSS XMM2,dword ptr [0x00baa454]
0048bf2b  0f28c2                    MOVAPS XMM0,XMM2
0048bf2e  f30f59850cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff0c]
0048bf36  f30f58c8                  ADDSS XMM1,XMM0
0048bf3a  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
0048bf42  f30f59c2                  MULSS XMM0,XMM2
0048bf46  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
0048bf4e  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0048bf56  f30f5c0d1ca8ba00          SUBSS XMM1,dword ptr [0x00baa81c]
0048bf5e  f30f5c0d28aeba00          SUBSS XMM1,dword ptr [0x00baae28]
0048bf66  f30f58c8                  ADDSS XMM1,XMM0
0048bf6a  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
0048bf72  e8e92f2600                CALL 0x006eef60
0048bf77  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048bf7d  6a00                      PUSH 0x0
0048bf7f  680cd7c500                PUSH 0xc5d70c
0048bf84  68dcd5c500                PUSH 0xc5d5dc
0048bf89  6a00                      PUSH 0x0
0048bf8b  50                        PUSH EAX
0048bf8c  6a00                      PUSH 0x0
0048bf8e  57                        PUSH EDI
0048bf8f  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0048bf95  50                        PUSH EAX
0048bf96  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0048bf9c  50                        PUSH EAX
0048bf9d  6a00                      PUSH 0x0
0048bf9f  6a09                      PUSH 0x9
0048bfa1  e87acbf9ff                CALL 0x00428b20
0048bfa6  50                        PUSH EAX
0048bfa7  e805496600                CALL 0x00af08b1
0048bfac  83c414                    ADD ESP,0x14
0048bfaf  c745e0a7a6263f            MOV dword ptr [EBP + -0x20],0x3f26a6a7
0048bfb6  8bf0                      MOV ESI,EAX
0048bfb8  c745e4d2d0d03e            MOV dword ptr [EBP + -0x1c],0x3ed0d0d2
0048bfbf  0f57c0                    XORPS XMM0,XMM0
0048bfc2  c745e8a5a4243e            MOV dword ptr [EBP + -0x18],0x3e24a4a5
0048bfc9  8d4dc0                    LEA ECX,[EBP + -0x40]
0048bfcc  6a01                      PUSH 0x1
0048bfce  8b06                      MOV EAX,dword ptr [ESI]
0048bfd0  6a00                      PUSH 0x0
0048bfd2  68ff000000                PUSH 0xff
0048bfd7  6aff                      PUSH -0x1
0048bfd9  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0048bfdd  51                        PUSH ECX
0048bfde  0f2805b0c4ba00            MOVAPS XMM0,xmmword ptr [0x00bac4b0]
0048bfe5  8bce                      MOV ECX,ESI
0048bfe7  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0048bfeb  ff503c                    CALL dword ptr [EAX + 0x3c]
0048bfee  f30f108610040000          MOVSS XMM0,dword ptr [ESI + 0x410]
0048bff6  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
0048bffe  c7862004000000000040      MOV dword ptr [ESI + 0x420],0x40000000
0048c008  f30f118610040000          MOVSS dword ptr [ESI + 0x410],XMM0
0048c010  e84b2f2600                CALL 0x006eef60
0048c015  818e3804000000400000      OR dword ptr [ESI + 0x438],0x4000
0048c01f  f30f1095f0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef0]
0048c027  660f6ec0                  MOVD XMM0,EAX
0048c02b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048c02f  c1e81f                    SHR EAX,0x1f
0048c032  83ad08ffffff01            SUB dword ptr [EBP + 0xffffff08],0x1
0048c039  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048c042  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
0048c048  89863c040000              MOV dword ptr [ESI + 0x43c],EAX
0048c04e  660f5ac0                  CVTPD2PS XMM0,XMM0
0048c052  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048c05a  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
0048c062  f30f588614040000          ADDSS XMM0,dword ptr [ESI + 0x414]
0048c06a  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
0048c072  0f8558fcffff              JNZ 0x0048bcd0
0048c078  e93c010000                JMP 0x0048c1b9
0048c07d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048c081  8d4f48                    LEA ECX,[EDI + 0x48]
0048c084  0f841f010000              JZ 0x0048c1a9
0048c08a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048c091  0f8412010000              JZ 0x0048c1a9
0048c097  e8e4e6f7ff                CALL 0x0040a780
0048c09c  83f819                    CMP EAX,0x19
0048c09f  0f8514010000              JNZ 0x0048c1b9
0048c0a5  51                        PUSH ECX
0048c0a6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048c0ad  6a00                      PUSH 0x0
0048c0af  6a3c                      PUSH 0x3c
0048c0b1  51                        PUSH ECX
0048c0b2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048c0b9  8bcf                      MOV ECX,EDI
0048c0bb  6833010000                PUSH 0x133
0048c0c0  e8dbaa2400                CALL 0x006d6ba0
0048c0c5  6a00                      PUSH 0x0
0048c0c7  6a00                      PUSH 0x0
0048c0c9  6a01                      PUSH 0x1
0048c0cb  51                        PUSH ECX
0048c0cc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048c0d2  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0048c0d8  c7042400000000            MOV dword ptr [ESP],0x0
0048c0df  50                        PUSH EAX
0048c0e0  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0048c0e6  c785e4feffff00005c43      MOV dword ptr [EBP + 0xfffffee4],0x435c0000
0048c0f0  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0048c0f6  50                        PUSH EAX
0048c0f7  c785e8feffff00007043      MOV dword ptr [EBP + 0xfffffee8],0x43700000
0048c101  e81a743800                CALL 0x00813520
0048c106  e8552e2600                CALL 0x006eef60
0048c10b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048c111  50                        PUSH EAX
0048c112  6a00                      PUSH 0x0
0048c114  57                        PUSH EDI
0048c115  6840b6c700                PUSH 0xc7b640
0048c11a  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0048c120  50                        PUSH EAX
0048c121  6a00                      PUSH 0x0
0048c123  6a20                      PUSH 0x20
0048c125  e8f6c9f9ff                CALL 0x00428b20
0048c12a  a17816c700                MOV EAX,[0x00c71678]
0048c12f  6a00                      PUSH 0x0
0048c131  6a00                      PUSH 0x0
0048c133  6a01                      PUSH 0x1
0048c135  51                        PUSH ECX
0048c136  c7042400000000            MOV dword ptr [ESP],0x0
0048c13d  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
0048c143  51                        PUSH ECX
0048c144  8d8dd4feffff              LEA ECX,[EBP + 0xfffffed4]
0048c14a  c785e4feffff0000d243      MOV dword ptr [EBP + 0xfffffee4],0x43d20000
0048c154  51                        PUSH ECX
0048c155  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0048c15b  c785e8feffff00007043      MOV dword ptr [EBP + 0xfffffee8],0x43700000
0048c165  e8b6733800                CALL 0x00813520
0048c16a  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0048c16e  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0048c176  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0048c17b  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0048c183  e8d82d2600                CALL 0x006eef60
0048c188  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048c18e  50                        PUSH EAX
0048c18f  6a00                      PUSH 0x0
0048c191  57                        PUSH EDI
0048c192  6840b6c700                PUSH 0xc7b640
0048c197  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0048c19d  50                        PUSH EAX
0048c19e  6a00                      PUSH 0x0
0048c1a0  6a20                      PUSH 0x20
0048c1a2  e879c9f9ff                CALL 0x00428b20
0048c1a7  eb10                      JMP 0x0048c1b9
0048c1a9  89b710040000              MOV dword ptr [EDI + 0x410],ESI
0048c1af  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048c1b9  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
0048c1bf  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0048c1c3  7471                      JZ 0x0048c236
0048c1c5  85c9                      TEST ECX,ECX
0048c1c7  0f84a8010000              JZ 0x0048c375
0048c1cd  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
0048c1d0  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
0048c1d3  7429                      JZ 0x0048c1fe
0048c1d5  8b11                      MOV EDX,dword ptr [ECX]
0048c1d7  8d4610                    LEA EAX,[ESI + 0x10]
0048c1da  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0048c1de  6a00                      PUSH 0x0
0048c1e0  50                        PUSH EAX
0048c1e1  ff760c                    PUSH dword ptr [ESI + 0xc]
0048c1e4  ff7608                    PUSH dword ptr [ESI + 0x8]
0048c1e7  51                        PUSH ECX
0048c1e8  f30f110424                MOVSS dword ptr [ESP],XMM0
0048c1ed  ff5220                    CALL dword ptr [EDX + 0x20]
0048c1f0  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
0048c1f6  83c638                    ADD ESI,0x38
0048c1f9  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
0048c1fc  75d7                      JNZ 0x0048c1d5
0048c1fe  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0048c201  89470c                    MOV dword ptr [EDI + 0xc],EAX
0048c204  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
0048c20a  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
0048c211  c7471800000000            MOV dword ptr [EDI + 0x18],0x0
0048c218  c7471c00000000            MOV dword ptr [EDI + 0x1c],0x0
0048c21f  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0048c223  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0048c22a  898780030000              MOV dword ptr [EDI + 0x380],EAX
0048c230  0f85c7000000              JNZ 0x0048c2fd
0048c236  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0048c23e  8bcf                      MOV ECX,EDI
0048c240  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0048c248  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
0048c24e  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
0048c256  898740030000              MOV dword ptr [EDI + 0x340],EAX
0048c25c  a17816c700                MOV EAX,[0x00c71678]
0048c261  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0048c269  c7876403000000000000      MOV dword ptr [EDI + 0x364],0x0
0048c273  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0048c279  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
0048c27e  f30f580550a9ba00          ADDSS XMM0,dword ptr [0x00baa950]
0048c286  f30f5fd0                  MAXSS XMM2,XMM0
0048c28a  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
0048c28f  f30f5c0550a9ba00          SUBSS XMM0,dword ptr [0x00baa950]
0048c297  f30f5dd0                  MINSS XMM2,XMM0
0048c29b  f30f11973c030000          MOVSS dword ptr [EDI + 0x33c],XMM2
0048c2a3  e898252300                CALL 0x006be840
0048c2a8  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0048c2af  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0048c2b7  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0048c2bf  f30f5905d0a0ba00          MULSS XMM0,dword ptr [0x00baa0d0]
0048c2c7  f30f5f0574adba00          MAXSS XMM0,dword ptr [0x00baad74]
0048c2cf  f30f5d0530a6ba00          MINSS XMM0,dword ptr [0x00baa630]
0048c2d7  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0048c2df  7416                      JZ 0x0048c2f7
0048c2e1  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0048c2e7  81a768010000fffffbff      AND dword ptr [EDI + 0x168],0xfffbffff
0048c2f1  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0048c2f7  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0048c2fb  745a                      JZ 0x0048c357
0048c2fd  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
0048c303  85c0                      TEST EAX,EAX
0048c305  7450                      JZ 0x0048c357
0048c307  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0048c30f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0048c317  f30f588734030000          ADDSS XMM0,dword ptr [EDI + 0x334]
0048c31f  f30f588f38030000          ADDSS XMM1,dword ptr [EDI + 0x338]
0048c327  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0048c32f  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
0048c337  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0048c33f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0048c347  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0048c34f  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0048c357  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0048c35a  64890d00000000            MOV dword ptr FS:[0x0],ECX
0048c361  59                        POP ECX
0048c362  5f                        POP EDI
0048c363  5e                        POP ESI
0048c364  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0048c367  33cd                      XOR ECX,EBP
0048c369  e8bd2d6600                CALL 0x00aef12b
0048c36e  8be5                      MOV ESP,EBP
0048c370  5d                        POP EBP
0048c371  8be3                      MOV ESP,EBX
0048c373  5b                        POP EBX
0048c374  c3                        RET
0048c375  8b07                      MOV EAX,dword ptr [EDI]
0048c377  8bcf                      MOV ECX,EDI
0048c379  ff5028                    CALL dword ptr [EAX + 0x28]
0048c37c  ebd9                      JMP 0x0048c357
