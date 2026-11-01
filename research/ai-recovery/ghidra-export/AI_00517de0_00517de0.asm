; J460 NPC AI 0x00517de0 AI_00517de0
; types=35
; identities=35.0.0,35.1.0,35.10.0,35.2.0,35.3.0
; entry=00517de0
00517de0  53                        PUSH EBX
00517de1  8bdc                      MOV EBX,ESP
00517de3  83ec08                    SUB ESP,0x8
00517de6  83e4f8                    AND ESP,0xfffffff8
00517de9  83c404                    ADD ESP,0x4
00517dec  55                        PUSH EBP
00517ded  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00517df0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00517df4  8bec                      MOV EBP,ESP
00517df6  6aff                      PUSH -0x1
00517df8  68ad43af00                PUSH 0xaf43ad
00517dfd  64a100000000              MOV EAX,FS:[0x0]
00517e03  50                        PUSH EAX
00517e04  53                        PUSH EBX
00517e05  81ec00010000              SUB ESP,0x100
00517e0b  a1b493bf00                MOV EAX,[0x00bf93b4]
00517e10  33c5                      XOR EAX,EBP
00517e12  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00517e15  56                        PUSH ESI
00517e16  57                        PUSH EDI
00517e17  50                        PUSH EAX
00517e18  8d45f4                    LEA EAX,[EBP + -0xc]
00517e1b  64a300000000              MOV FS:[0x0],EAX
00517e21  8bf9                      MOV EDI,ECX
00517e23  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00517e29  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00517e2c  85c9                      TEST ECX,ECX
00517e2e  0f85db010000              JNZ 0x0051800f
00517e34  85c0                      TEST EAX,EAX
00517e36  7409                      JZ 0x00517e41
00517e38  83f802                    CMP EAX,0x2
00517e3b  0f85bf010000              JNZ 0x00518000
00517e41  e81a711d00                CALL 0x006eef60
00517e46  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00517e49  8d973c030000              LEA EDX,[EDI + 0x33c]
00517e4f  6a00                      PUSH 0x0
00517e51  68acd6c500                PUSH 0xc5d6ac
00517e56  68dcd5c500                PUSH 0xc5d5dc
00517e5b  6a00                      PUSH 0x0
00517e5d  50                        PUSH EAX
00517e5e  6a00                      PUSH 0x0
00517e60  57                        PUSH EDI
00517e61  6840b6c700                PUSH 0xc7b640
00517e66  41                        INC ECX
00517e67  52                        PUSH EDX
00517e68  51                        PUSH ECX
00517e69  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00517e6f  6a23                      PUSH 0x23
00517e71  e8aa0cf1ff                CALL 0x00428b20
00517e76  50                        PUSH EAX
00517e77  e8358a5d00                CALL 0x00af08b1
00517e7c  8bf0                      MOV ESI,EAX
00517e7e  83c414                    ADD ESP,0x14
00517e81  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
00517e87  8d86c0030000              LEA EAX,[ESI + 0x3c0]
00517e8d  85c9                      TEST ECX,ECX
00517e8f  741e                      JZ 0x00517eaf
00517e91  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00517e97  81c1cc030000              ADD ECX,0x3cc
00517e9d  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00517ea3  50                        PUSH EAX
00517ea4  e86773fbff                CALL 0x004cf210
00517ea9  8d86c0030000              LEA EAX,[ESI + 0x3c0]
00517eaf  50                        PUSH EAX
00517eb0  8bcf                      MOV ECX,EDI
00517eb2  8938                      MOV dword ptr [EAX],EDI
00517eb4  e8375efbff                CALL 0x004cdcf0
00517eb9  8d87bc030000              LEA EAX,[EDI + 0x3bc]
00517ebf  c7868801000002000000      MOV dword ptr [ESI + 0x188],0x2
00517ec9  c7868401000003000000      MOV dword ptr [ESI + 0x184],0x3
00517ed3  8b08                      MOV ECX,dword ptr [EAX]
00517ed5  85c9                      TEST ECX,ECX
00517ed7  741e                      JZ 0x00517ef7
00517ed9  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00517edf  81c1cc030000              ADD ECX,0x3cc
00517ee5  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00517eeb  50                        PUSH EAX
00517eec  e81f73fbff                CALL 0x004cf210
00517ef1  8d87bc030000              LEA EAX,[EDI + 0x3bc]
00517ef7  50                        PUSH EAX
00517ef8  8bce                      MOV ECX,ESI
00517efa  8930                      MOV dword ptr [EAX],ESI
00517efc  e8ef5dfbff                CALL 0x004cdcf0
00517f01  8b06                      MOV EAX,dword ptr [ESI]
00517f03  8bce                      MOV ECX,ESI
00517f05  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
00517f0f  ff500c                    CALL dword ptr [EAX + 0xc]
00517f12  c78500ffffff00000000      MOV dword ptr [EBP + 0xffffff00],0x0
00517f1c  0f1f4000                  NOP dword ptr [EAX]
00517f20  e83b701d00                CALL 0x006eef60
00517f25  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00517f2b  6a00                      PUSH 0x0
00517f2d  68acd6c500                PUSH 0xc5d6ac
00517f32  68dcd5c500                PUSH 0xc5d5dc
00517f37  6a00                      PUSH 0x0
00517f39  50                        PUSH EAX
00517f3a  6a00                      PUSH 0x0
00517f3c  57                        PUSH EDI
00517f3d  6840b6c700                PUSH 0xc7b640
00517f42  8d873c030000              LEA EAX,[EDI + 0x33c]
00517f48  50                        PUSH EAX
00517f49  6a0a                      PUSH 0xa
00517f4b  6a23                      PUSH 0x23
00517f4d  e8ce0bf1ff                CALL 0x00428b20
00517f52  50                        PUSH EAX
00517f53  e859895d00                CALL 0x00af08b1
00517f58  8bf0                      MOV ESI,EAX
00517f5a  83c414                    ADD ESP,0x14
00517f5d  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00517f63  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00517f69  85c9                      TEST ECX,ECX
00517f6b  741e                      JZ 0x00517f8b
00517f6d  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00517f73  81c1cc030000              ADD ECX,0x3cc
00517f79  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00517f7f  50                        PUSH EAX
00517f80  e88b72fbff                CALL 0x004cf210
00517f85  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00517f8b  50                        PUSH EAX
00517f8c  8bcf                      MOV ECX,EDI
00517f8e  8938                      MOV dword ptr [EAX],EDI
00517f90  e85b5dfbff                CALL 0x004cdcf0
00517f95  8b9500ffffff              MOV EDX,dword ptr [EBP + 0xffffff00]
00517f9b  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
00517fa1  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00517fa7  83e1fb                    AND ECX,0xfffffffb
00517faa  81c900000400              OR ECX,0x40000
00517fb0  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
00517fba  660f6ec2                  MOVD XMM0,EDX
00517fbe  42                        INC EDX
00517fbf  c7865c01000000000000      MOV dword ptr [ESI + 0x15c],0x0
00517fc9  c78654030000d0070000      MOV dword ptr [ESI + 0x354],0x7d0
00517fd3  898e68010000              MOV dword ptr [ESI + 0x168],ECX
00517fd9  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00517fdf  c6867101000000            MOV byte ptr [ESI + 0x171],0x0
00517fe6  899500ffffff              MOV dword ptr [EBP + 0xffffff00],EDX
00517fec  0f5bc0                    CVTDQ2PS XMM0,XMM0
00517fef  f30f1186b00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM0
00517ff7  83fa08                    CMP EDX,0x8
00517ffa  0f8c20ffffff              JL 0x00517f20
00518000  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0051800a  e9e80d0000                JMP 0x00518df7
0051800f  83f801                    CMP EAX,0x1
00518012  0f8496070000              JZ 0x005187ae
00518018  83f803                    CMP EAX,0x3
0051801b  0f848d070000              JZ 0x005187ae
00518021  83f80a                    CMP EAX,0xa
00518024  0f85cd010000              JNZ 0x005181f7
0051802a  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00518030  85c0                      TEST EAX,EAX
00518032  0f84b3010000              JZ 0x005181eb
00518038  83782823                  CMP dword ptr [EAX + 0x28],0x23
0051803c  0f85a9010000              JNZ 0x005181eb
00518042  83b8bc03000000            CMP dword ptr [EAX + 0x3bc],0x0
00518049  0f849c010000              JZ 0x005181eb
0051804f  8bcf                      MOV ECX,EDI
00518051  e81af7f2ff                CALL 0x00447770
00518056  83b8640b000008            CMP dword ptr [EAX + 0xb64],0x8
0051805d  740c                      JZ 0x0051806b
0051805f  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
00518066  e98c0d0000                JMP 0x00518df7
0051806b  8bcf                      MOV ECX,EDI
0051806d  e8fef6f2ff                CALL 0x00447770
00518072  83b8bc03000000            CMP dword ptr [EAX + 0x3bc],0x0
00518079  0f84780d0000              JZ 0x00518df7
0051807f  8bcf                      MOV ECX,EDI
00518081  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
00518088  e8e3f6f2ff                CALL 0x00447770
0051808d  8bcf                      MOV ECX,EDI
0051808f  8bf0                      MOV ESI,EAX
00518091  e8daf6f2ff                CALL 0x00447770
00518096  8bc8                      MOV ECX,EAX
00518098  e8d3f6f2ff                CALL 0x00447770
0051809d  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
005180a5  8bcf                      MOV ECX,EDI
005180a7  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
005180af  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
005180b7  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
005180bf  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
005180c7  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
005180cf  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
005180d7  f30f5c87b00b0000          SUBSS XMM0,dword ptr [EDI + 0xbb0]
005180df  f30f59053ca1ba00          MULSS XMM0,dword ptr [0x00baa13c]
005180e7  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
005180ef  e87cf6f2ff                CALL 0x00447770
005180f4  f30f1095f8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef8]
005180fc  f30f108d00ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff00]
00518104  f30f59ca                  MULSS XMM1,XMM2
00518108  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00518110  f30f59d2                  MULSS XMM2,XMM2
00518114  f30f5cc1                  SUBSS XMM0,XMM1
00518118  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00518120  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00518128  f30f5c055ca7ba00          SUBSS XMM0,dword ptr [0x00baa75c]
00518130  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00518137  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0051813f  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
00518147  0f28c8                    MOVAPS XMM1,XMM0
0051814a  f30f59c1                  MULSS XMM0,XMM1
0051814e  f30f58c2                  ADDSS XMM0,XMM2
00518152  e8f9d8f1ff                CALL 0x00435a50
00518157  f30f101dd0a9ba00          MOVSS XMM3,dword ptr [0x00baa9d0]
0051815f  8bcf                      MOV ECX,EDI
00518161  f30f1095f8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef8]
00518169  f30f5cd8                  SUBSS XMM3,XMM0
0051816d  f30f10055ca8ba00          MOVSS XMM0,dword ptr [0x00baa85c]
00518175  f30f59d2                  MULSS XMM2,XMM2
00518179  f30f5f1de49fba00          MAXSS XMM3,dword ptr [0x00ba9fe4]
00518181  f30f5cc2                  SUBSS XMM0,XMM2
00518185  f30f59d8                  MULSS XMM3,XMM0
00518189  f30f5e1dd0a9ba00          DIVSS XMM3,dword ptr [0x00baa9d0]
00518191  f30f119df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM3
00518199  e8d2f5f2ff                CALL 0x00447770
0051819e  f30f108d00ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff00]
005181a6  f30f598d0cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff0c]
005181ae  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
005181b6  f30f5cc1                  SUBSS XMM0,XMM1
005181ba  f30f108df8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef8]
005181c2  f30f5c05dca8ba00          SUBSS XMM0,dword ptr [0x00baa8dc]
005181ca  f30f58c8                  ADDSS XMM1,XMM0
005181ce  f30f588fb00b0000          ADDSS XMM1,dword ptr [EDI + 0xbb0]
005181d6  f30f580d84a7ba00          ADDSS XMM1,dword ptr [0x00baa784]
005181de  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
005181e6  e90c0c0000                JMP 0x00518df7
005181eb  8b07                      MOV EAX,dword ptr [EDI]
005181ed  8bcf                      MOV ECX,EDI
005181ef  ff5028                    CALL dword ptr [EAX + 0x28]
005181f2  e9000c0000                JMP 0x00518df7
005181f7  85c0                      TEST EAX,EAX
005181f9  7409                      JZ 0x00518204
005181fb  83f802                    CMP EAX,0x2
005181fe  0f85f30b0000              JNZ 0x00518df7
00518204  83f904                    CMP ECX,0x4
00518207  0f85f4020000              JNZ 0x00518501
0051820d  a1bc0db600                MOV EAX,[0x00b60dbc]
00518212  f30f7e05b40db600          MOVQ XMM0,qword ptr [0x00b60db4]
0051821a  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
0051821d  a0c00db600                MOV AL,[0x00b60dc0]
00518222  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00518229  c745cc0d000000            MOV dword ptr [EBP + -0x34],0xd
00518230  660fd645bc                MOVQ qword ptr [EBP + -0x44],XMM0
00518235  8845c8                    MOV byte ptr [EBP + -0x38],AL
00518238  c645c900                  MOV byte ptr [EBP + -0x37],0x0
0051823c  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00518243  a1000eb600                MOV EAX,[0x00b60e00]
00518248  f30f7e05f80db600          MOVQ XMM0,qword ptr [0x00b60df8]
00518250  8945dc                    MOV dword ptr [EBP + -0x24],EAX
00518253  a0040eb600                MOV AL,[0x00b60e04]
00518258  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0051825f  c745e40d000000            MOV dword ptr [EBP + -0x1c],0xd
00518266  660fd645d4                MOVQ qword ptr [EBP + -0x2c],XMM0
0051826b  8845e0                    MOV byte ptr [EBP + -0x20],AL
0051826e  c645e100                  MOV byte ptr [EBP + -0x1f],0x0
00518272  51                        PUSH ECX
00518273  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00518277  8d45bc                    LEA EAX,[EBP + -0x44]
0051827a  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00518281  8bcf                      MOV ECX,EDI
00518283  50                        PUSH EAX
00518284  8d45d4                    LEA EAX,[EBP + -0x2c]
00518287  50                        PUSH EAX
00518288  e8a3901a00                CALL 0x006c1330
0051828d  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00518291  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00518294  83fa10                    CMP EDX,0x10
00518297  7228                      JC 0x005182c1
00518299  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0051829c  42                        INC EDX
0051829d  8bc1                      MOV EAX,ECX
0051829f  81fa00100000              CMP EDX,0x1000
005182a5  7210                      JC 0x005182b7
005182a7  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005182aa  83c223                    ADD EDX,0x23
005182ad  2bc1                      SUB EAX,ECX
005182af  83c0fc                    ADD EAX,-0x4
005182b2  83f81f                    CMP EAX,0x1f
005182b5  7749                      JA 0x00518300
005182b7  52                        PUSH EDX
005182b8  51                        PUSH ECX
005182b9  e89e6e5d00                CALL 0x00aef15c
005182be  83c408                    ADD ESP,0x8
005182c1  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005182c8  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
005182cb  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
005182d2  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
005182d9  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
005182dd  83fa10                    CMP EDX,0x10
005182e0  722e                      JC 0x00518310
005182e2  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
005182e5  42                        INC EDX
005182e6  8bc1                      MOV EAX,ECX
005182e8  81fa00100000              CMP EDX,0x1000
005182ee  7216                      JC 0x00518306
005182f0  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005182f3  83c223                    ADD EDX,0x23
005182f6  2bc1                      SUB EAX,ECX
005182f8  83c0fc                    ADD EAX,-0x4
005182fb  83f81f                    CMP EAX,0x1f
005182fe  7606                      JBE 0x00518306
00518300  ff159488b100              CALL dword ptr [0x00b18894]
00518306  52                        PUSH EDX
00518307  51                        PUSH ECX
00518308  e84f6e5d00                CALL 0x00aef15c
0051830d  83c408                    ADD ESP,0x8
00518310  6a00                      PUSH 0x0
00518312  6800080001                PUSH 0x1000800
00518317  8bcf                      MOV ECX,EDI
00518319  e812f1efff                CALL 0x00417430
0051831e  84c0                      TEST AL,AL
00518320  7456                      JZ 0x00518378
00518322  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00518329  754d                      JNZ 0x00518378
0051832b  8bcf                      MOV ECX,EDI
0051832d  e80e651a00                CALL 0x006be840
00518332  6a00                      PUSH 0x0
00518334  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0051833a  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00518340  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
00518346  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
0051834c  898d04ffffff              MOV dword ptr [EBP + 0xffffff04],ECX
00518352  8d8f14040000              LEA ECX,[EDI + 0x414]
00518358  50                        PUSH EAX
00518359  e8e2c52c00                CALL 0x007e4940
0051835e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00518366  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0051836e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00518376  eb49                      JMP 0x005183c1
00518378  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0051837c  750a                      JNZ 0x00518388
0051837e  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
00518386  eb08                      JMP 0x00518390
00518388  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
00518390  6a01                      PUSH 0x1
00518392  6884030000                PUSH 0x384
00518397  83ec08                    SUB ESP,0x8
0051839a  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
005183a0  8bcf                      MOV ECX,EDI
005183a2  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
005183a8  c7042400000000            MOV dword ptr [ESP],0x0
005183af  50                        PUSH EAX
005183b0  e88b681a00                CALL 0x006bec40
005183b5  50                        PUSH EAX
005183b6  8d8f14040000              LEA ECX,[EDI + 0x414]
005183bc  e8ffaf2c00                CALL 0x007e33c0
005183c1  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005183c8  8bcf                      MOV ECX,EDI
005183ca  7410                      JZ 0x005183dc
005183cc  6a0a                      PUSH 0xa
005183ce  e8bdfe1b00                CALL 0x006d8290
005183d3  0fb6c0                    MOVZX EAX,AL
005183d6  85c0                      TEST EAX,EAX
005183d8  7454                      JZ 0x0051842e
005183da  eb32                      JMP 0x0051840e
005183dc  e85f641a00                CALL 0x006be840
005183e1  50                        PUSH EAX
005183e2  8bcf                      MOV ECX,EDI
005183e4  e877f91b00                CALL 0x006d7d60
005183e9  84c0                      TEST AL,AL
005183eb  7441                      JZ 0x0051842e
005183ed  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
005183f4  7438                      JZ 0x0051842e
005183f6  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
005183fa  7532                      JNZ 0x0051842e
005183fc  e85f6b1d00                CALL 0x006eef60
00518401  33d2                      XOR EDX,EDX
00518403  b903000000                MOV ECX,0x3
00518408  f7f1                      DIV ECX
0051840a  85d2                      TEST EDX,EDX
0051840c  7520                      JNZ 0x0051842e
0051840e  51                        PUSH ECX
0051840f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00518416  6a00                      PUSH 0x0
00518418  6a28                      PUSH 0x28
0051841a  51                        PUSH ECX
0051841b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00518422  8bcf                      MOV ECX,EDI
00518424  68a5000000                PUSH 0xa5
00518429  e872e71b00                CALL 0x006d6ba0
0051842e  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00518435  0f84ac020000              JZ 0x005186e7
0051843b  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00518443  8bcf                      MOV ECX,EDI
00518445  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0051844d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00518455  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0051845d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00518465  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0051846d  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00518475  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0051847d  e8eef2f2ff                CALL 0x00447770
00518482  8bcf                      MOV ECX,EDI
00518484  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0051848c  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
00518494  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0051849c  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
005184a4  e8c7f2f2ff                CALL 0x00447770
005184a9  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
005184b1  8bcf                      MOV ECX,EDI
005184b3  f30f58850cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff0c]
005184bb  f30f5c8500ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff00]
005184c3  f30f118060030000          MOVSS dword ptr [EAX + 0x360],XMM0
005184cb  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
005184d3  f30f5885fcfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffefc]
005184db  f30f5c8508ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff08]
005184e3  f30f118064030000          MOVSS dword ptr [EAX + 0x364],XMM0
005184eb  e880f2f2ff                CALL 0x00447770
005184f0  8a8f48010000              MOV CL,byte ptr [EDI + 0x148]
005184f6  888848010000              MOV byte ptr [EAX + 0x148],CL
005184fc  e9e6010000                JMP 0x005186e7
00518501  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00518508  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00518510  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00518518  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00518520  0f844e010000              JZ 0x00518674
00518526  a1bc0db600                MOV EAX,[0x00b60dbc]
0051852b  f30f7e05b40db600          MOVQ XMM0,qword ptr [0x00b60db4]
00518533  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
00518536  a0c00db600                MOV AL,[0x00b60dc0]
0051853b  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00518542  c745cc0d000000            MOV dword ptr [EBP + -0x34],0xd
00518549  660fd645bc                MOVQ qword ptr [EBP + -0x44],XMM0
0051854e  8845c8                    MOV byte ptr [EBP + -0x38],AL
00518551  c645c900                  MOV byte ptr [EBP + -0x37],0x0
00518555  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0051855c  a1000eb600                MOV EAX,[0x00b60e00]
00518561  f30f7e05f80db600          MOVQ XMM0,qword ptr [0x00b60df8]
00518569  8945dc                    MOV dword ptr [EBP + -0x24],EAX
0051856c  a0040eb600                MOV AL,[0x00b60e04]
00518571  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00518578  c745e40d000000            MOV dword ptr [EBP + -0x1c],0xd
0051857f  660fd645d4                MOVQ qword ptr [EBP + -0x2c],XMM0
00518584  8845e0                    MOV byte ptr [EBP + -0x20],AL
00518587  c645e100                  MOV byte ptr [EBP + -0x1f],0x0
0051858b  51                        PUSH ECX
0051858c  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
00518590  8d45bc                    LEA EAX,[EBP + -0x44]
00518593  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0051859a  8bcf                      MOV ECX,EDI
0051859c  50                        PUSH EAX
0051859d  8d45d4                    LEA EAX,[EBP + -0x2c]
005185a0  50                        PUSH EAX
005185a1  e88a8d1a00                CALL 0x006c1330
005185a6  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
005185aa  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
005185ad  83fa10                    CMP EDX,0x10
005185b0  7228                      JC 0x005185da
005185b2  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
005185b5  42                        INC EDX
005185b6  8bc1                      MOV EAX,ECX
005185b8  81fa00100000              CMP EDX,0x1000
005185be  7210                      JC 0x005185d0
005185c0  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005185c3  83c223                    ADD EDX,0x23
005185c6  2bc1                      SUB EAX,ECX
005185c8  83c0fc                    ADD EAX,-0x4
005185cb  83f81f                    CMP EAX,0x1f
005185ce  7749                      JA 0x00518619
005185d0  52                        PUSH EDX
005185d1  51                        PUSH ECX
005185d2  e8856b5d00                CALL 0x00aef15c
005185d7  83c408                    ADD ESP,0x8
005185da  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005185e1  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
005185e4  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
005185eb  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
005185f2  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
005185f6  83fa10                    CMP EDX,0x10
005185f9  722e                      JC 0x00518629
005185fb  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
005185fe  42                        INC EDX
005185ff  8bc1                      MOV EAX,ECX
00518601  81fa00100000              CMP EDX,0x1000
00518607  7216                      JC 0x0051861f
00518609  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0051860c  83c223                    ADD EDX,0x23
0051860f  2bc1                      SUB EAX,ECX
00518611  83c0fc                    ADD EAX,-0x4
00518614  83f81f                    CMP EAX,0x1f
00518617  7606                      JBE 0x0051861f
00518619  ff159488b100              CALL dword ptr [0x00b18894]
0051861f  52                        PUSH EDX
00518620  51                        PUSH ECX
00518621  e8366b5d00                CALL 0x00aef15c
00518626  83c408                    ADD ESP,0x8
00518629  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0051862d  750a                      JNZ 0x00518639
0051862f  f30f100580a2ba00          MOVSS XMM0,dword ptr [0x00baa280]
00518637  eb08                      JMP 0x00518641
00518639  f30f1005f8a1ba00          MOVSS XMM0,dword ptr [0x00baa1f8]
00518641  6a01                      PUSH 0x1
00518643  6884030000                PUSH 0x384
00518648  83ec08                    SUB ESP,0x8
0051864b  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
00518651  8bcf                      MOV ECX,EDI
00518653  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
00518659  c7042400000000            MOV dword ptr [ESP],0x0
00518660  50                        PUSH EAX
00518661  e8da651a00                CALL 0x006bec40
00518666  50                        PUSH EAX
00518667  8d8f14040000              LEA ECX,[EDI + 0x414]
0051866d  e84ead2c00                CALL 0x007e33c0
00518672  eb73                      JMP 0x005186e7
00518674  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00518678  8d4f78                    LEA ECX,[EDI + 0x78]
0051867b  746a                      JZ 0x005186e7
0051867d  8d45bc                    LEA EAX,[EBP + -0x44]
00518680  50                        PUSH EAX
00518681  e86aa5f3ff                CALL 0x00452bf0
00518686  6a00                      PUSH 0x0
00518688  50                        PUSH EAX
00518689  8d4f48                    LEA ECX,[EDI + 0x48]
0051868c  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
00518693  e8f81fefff                CALL 0x0040a690
00518698  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0051869f  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
005186a2  83fa10                    CMP EDX,0x10
005186a5  722e                      JC 0x005186d5
005186a7  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
005186aa  42                        INC EDX
005186ab  8bc1                      MOV EAX,ECX
005186ad  81fa00100000              CMP EDX,0x1000
005186b3  7216                      JC 0x005186cb
005186b5  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005186b8  83c223                    ADD EDX,0x23
005186bb  2bc1                      SUB EAX,ECX
005186bd  83c0fc                    ADD EAX,-0x4
005186c0  83f81f                    CMP EAX,0x1f
005186c3  7606                      JBE 0x005186cb
005186c5  ff159488b100              CALL dword ptr [0x00b18894]
005186cb  52                        PUSH EDX
005186cc  51                        PUSH ECX
005186cd  e88a6a5d00                CALL 0x00aef15c
005186d2  83c408                    ADD ESP,0x8
005186d5  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
005186dc  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
005186e3  c645bc00                  MOV byte ptr [EBP + -0x44],0x0
005186e7  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005186ee  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
005186f4  7446                      JZ 0x0051873c
005186f6  85c0                      TEST EAX,EAX
005186f8  0f84f9060000              JZ 0x00518df7
005186fe  8bcf                      MOV ECX,EDI
00518700  e86bf0f2ff                CALL 0x00447770
00518705  ffb7640c0000              PUSH dword ptr [EDI + 0xc64]
0051870b  33c9                      XOR ECX,ECX
0051870d  8bf0                      MOV ESI,EAX
0051870f  394f2c                    CMP dword ptr [EDI + 0x2c],ECX
00518712  6a00                      PUSH 0x0
00518714  0f95c1                    SETNZ CL
00518717  51                        PUSH ECX
00518718  6a1a                      PUSH 0x1a
0051871a  8bce                      MOV ECX,ESI
0051871c  e80f881a00                CALL 0x006c0f30
00518721  8b8684030000              MOV EAX,dword ptr [ESI + 0x384]
00518727  c7868801000004000000      MOV dword ptr [ESI + 0x188],0x4
00518731  898680030000              MOV dword ptr [ESI + 0x380],EAX
00518737  e9bb060000                JMP 0x00518df7
0051873c  85c0                      TEST EAX,EAX
0051873e  0f85b3060000              JNZ 0x00518df7
00518744  ffb7640c0000              PUSH dword ptr [EDI + 0xc64]
0051874a  8b772c                    MOV ESI,dword ptr [EDI + 0x2c]
0051874d  8bcf                      MOV ECX,EDI
0051874f  50                        PUSH EAX
00518750  50                        PUSH EAX
00518751  6a0b                      PUSH 0xb
00518753  e8d8871a00                CALL 0x006c0f30
00518758  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
0051875e  8d4f48                    LEA ECX,[EDI + 0x48]
00518761  6a00                      PUSH 0x0
00518763  898780030000              MOV dword ptr [EDI + 0x380],EAX
00518769  e8b22aefff                CALL 0x0040b220
0051876e  c740540000803f            MOV dword ptr [EAX + 0x54],0x3f800000
00518775  83fe03                    CMP ESI,0x3
00518778  751a                      JNZ 0x00518794
0051877a  c740480b0a8a3f            MOV dword ptr [EAX + 0x48],0x3f8a0a0b
00518781  c7404ce3e1613f            MOV dword ptr [EAX + 0x4c],0x3f61e1e3
00518788  c74050e3e1613f            MOV dword ptr [EAX + 0x50],0x3f61e1e3
0051878f  e963060000                JMP 0x00518df7
00518794  c74048b2b1b13f            MOV dword ptr [EAX + 0x48],0x3fb1b1b2
0051879b  c7404cb2b1b13f            MOV dword ptr [EAX + 0x4c],0x3fb1b1b2
005187a2  c74050b2b1b13f            MOV dword ptr [EAX + 0x50],0x3fb1b1b2
005187a9  e949060000                JMP 0x00518df7
005187ae  e8ad671d00                CALL 0x006eef60
005187b3  33d2                      XOR EDX,EDX
005187b5  b90a000000                MOV ECX,0xa
005187ba  f7f1                      DIV ECX
005187bc  85d2                      TEST EDX,EDX
005187be  7542                      JNZ 0x00518802
005187c0  e89b671d00                CALL 0x006eef60
005187c5  51                        PUSH ECX
005187c6  8bcf                      MOV ECX,EDI
005187c8  660f6ec0                  MOVD XMM0,EAX
005187cc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005187d0  c1e81f                    SHR EAX,0x1f
005187d3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005187dc  660f5ac0                  CVTPD2PS XMM0,XMM0
005187e0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005187e8  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005187f0  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
005187f8  f30f110424                MOVSS dword ptr [ESP],XMM0
005187fd  e8cedc1900                CALL 0x006b64d0
00518802  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00518809  0f85b8040000              JNZ 0x00518cc7
0051880f  e84c671d00                CALL 0x006eef60
00518814  33d2                      XOR EDX,EDX
00518816  b9e8030000                MOV ECX,0x3e8
0051881b  f7f1                      DIV ECX
0051881d  85d2                      TEST EDX,EDX
0051881f  7523                      JNZ 0x00518844
00518821  8bcf                      MOV ECX,EDI
00518823  e8b8dff3ff                CALL 0x004567e0
00518828  85c0                      TEST EAX,EAX
0051882a  0f8497040000              JZ 0x00518cc7
00518830  8bcf                      MOV ECX,EDI
00518832  e8a9dff3ff                CALL 0x004567e0
00518837  83b81c0f0000ff            CMP dword ptr [EAX + 0xf1c],-0x1
0051883e  0f8483040000              JZ 0x00518cc7
00518844  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0051884b  0f84f9040000              JZ 0x00518d4a
00518851  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
00518859  8bcf                      MOV ECX,EDI
0051885b  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00518863  2bf0                      SUB ESI,EAX
00518865  e876dff3ff                CALL 0x004567e0
0051886a  8bcf                      MOV ECX,EDI
0051886c  8b80a00b0000              MOV EAX,dword ptr [EAX + 0xba0]
00518872  2bc6                      SUB EAX,ESI
00518874  bee2ffffff                MOV ESI,0xffffffe2
00518879  3bc6                      CMP EAX,ESI
0051887b  0f4ff0                    CMOVG ESI,EAX
0051887e  e85ddff3ff                CALL 0x004567e0
00518883  8bcf                      MOV ECX,EDI
00518885  89b0a00b0000              MOV dword ptr [EAX + 0xba0],ESI
0051888b  e850dff3ff                CALL 0x004567e0
00518890  8bcf                      MOV ECX,EDI
00518892  83b8640b000004            CMP dword ptr [EAX + 0xb64],0x4
00518899  0f8596020000              JNZ 0x00518b35
0051889f  e83cdff3ff                CALL 0x004567e0
005188a4  83b81c0f0000ff            CMP dword ptr [EAX + 0xf1c],-0x1
005188ab  0f84b2000000              JZ 0x00518963
005188b1  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005188b7  25000a0001                AND EAX,0x1000a00
005188bc  83c800                    OR EAX,0x0
005188bf  0f8532050000              JNZ 0x00518df7
005188c5  8bcf                      MOV ECX,EDI
005188c7  e814dff3ff                CALL 0x004567e0
005188cc  6a01                      PUSH 0x1
005188ce  8bc8                      MOV ECX,EAX
005188d0  e87b071c00                CALL 0x006d9050
005188d5  8bcf                      MOV ECX,EDI
005188d7  e804dff3ff                CALL 0x004567e0
005188dc  6840b6c700                PUSH 0xc7b640
005188e1  8d88200f0000              LEA ECX,[EAX + 0xf20]
005188e7  e8447d4f00                CALL 0x00a10630
005188ec  84c0                      TEST AL,AL
005188ee  0f8403050000              JZ 0x00518df7
005188f4  51                        PUSH ECX
005188f5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005188fc  6a00                      PUSH 0x0
005188fe  6a02                      PUSH 0x2
00518900  51                        PUSH ECX
00518901  c704240000803f            MOV dword ptr [ESP],0x3f800000
00518908  8bcf                      MOV ECX,EDI
0051890a  68e2000000                PUSH 0xe2
0051890f  e88ce21b00                CALL 0x006d6ba0
00518914  8bcf                      MOV ECX,EDI
00518916  e8c5def3ff                CALL 0x004567e0
0051891b  51                        PUSH ECX
0051891c  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
00518922  c7042400006041            MOV dword ptr [ESP],0x41600000
00518929  51                        PUSH ECX
0051892a  8d88200f0000              LEA ECX,[EAX + 0xf20]
00518930  e8cb774f00                CALL 0x00a10100
00518935  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0051893d  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00518941  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00518946  f30f5ed0                  DIVSS XMM2,XMM0
0051894a  f30f5ec8                  DIVSS XMM1,XMM0
0051894e  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00518956  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0051895e  e9ab010000                JMP 0x00518b0e
00518963  6a00                      PUSH 0x0
00518965  6a04                      PUSH 0x4
00518967  8bcf                      MOV ECX,EDI
00518969  e8a23d1900                CALL 0x006ac710
0051896e  84c0                      TEST AL,AL
00518970  0f8481040000              JZ 0x00518df7
00518976  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0051897c  25000a0001                AND EAX,0x1000a00
00518981  83c800                    OR EAX,0x0
00518984  0f856d040000              JNZ 0x00518df7
0051898a  8bcf                      MOV ECX,EDI
0051898c  e8af5e1a00                CALL 0x006be840
00518991  8bcf                      MOV ECX,EDI
00518993  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0051899b  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
005189a3  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
005189ab  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
005189b3  e8885e1a00                CALL 0x006be840
005189b8  f30f109060030000          MOVSS XMM2,dword ptr [EAX + 0x360]
005189c0  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
005189c8  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
005189d0  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
005189d8  f30f589508ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff08]
005189e0  f30f588dfcfeffff          ADDSS XMM1,dword ptr [EBP + 0xfffffefc]
005189e8  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
005189f0  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005189f8  0f28c2                    MOVAPS XMM0,XMM2
005189fb  f30f1195f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM2
00518a03  f30f59c2                  MULSS XMM0,XMM2
00518a07  0f28d9                    MOVAPS XMM3,XMM1
00518a0a  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
00518a12  f30f59d9                  MULSS XMM3,XMM1
00518a16  f30f58d8                  ADDSS XMM3,XMM0
00518a1a  f30f100544acba00          MOVSS XMM0,dword ptr [0x00baac44]
00518a22  0f2fc3                    COMISS XMM0,XMM3
00518a25  f30f119d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM3
00518a2d  0f86c4030000              JBE 0x00518df7
00518a33  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
00518a3a  9f                        LAHF
00518a3b  f6c444                    TEST AH,0x44
00518a3e  7a11                      JP 0x00518a51
00518a40  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
00518a47  9f                        LAHF
00518a48  f6c444                    TEST AH,0x44
00518a4b  0f8ba6030000              JNP 0x00518df7
00518a51  a17816c700                MOV EAX,[0x00c71678]
00518a56  8bcf                      MOV ECX,EDI
00518a58  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00518a5e  e8dd5d1a00                CALL 0x006be840
00518a63  6a00                      PUSH 0x0
00518a65  6a00                      PUSH 0x0
00518a67  6a00                      PUSH 0x0
00518a69  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00518a6f  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00518a75  6a00                      PUSH 0x0
00518a77  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00518a7d  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
00518a83  6a02                      PUSH 0x2
00518a85  50                        PUSH EAX
00518a86  8d873c030000              LEA EAX,[EDI + 0x33c]
00518a8c  898df4feffff              MOV dword ptr [EBP + 0xfffffef4],ECX
00518a92  50                        PUSH EAX
00518a93  8bce                      MOV ECX,ESI
00518a95  e856832d00                CALL 0x007f0df0
00518a9a  84c0                      TEST AL,AL
00518a9c  0f8455030000              JZ 0x00518df7
00518aa2  51                        PUSH ECX
00518aa3  c704240000803f            MOV dword ptr [ESP],0x3f800000
00518aaa  6a00                      PUSH 0x0
00518aac  6a02                      PUSH 0x2
00518aae  51                        PUSH ECX
00518aaf  c704240000803f            MOV dword ptr [ESP],0x3f800000
00518ab6  8bcf                      MOV ECX,EDI
00518ab8  68e2000000                PUSH 0xe2
00518abd  e8dee01b00                CALL 0x006d6ba0
00518ac2  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
00518aca  e881cff1ff                CALL 0x00435a50
00518acf  f30f101548a8ba00          MOVSS XMM2,dword ptr [0x00baa848]
00518ad7  f30f5ed0                  DIVSS XMM2,XMM0
00518adb  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00518ae3  0f28ca                    MOVAPS XMM1,XMM2
00518ae6  f30f5995fcfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffefc]
00518aee  f30f598df0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffef0]
00518af6  f30f5ed0                  DIVSS XMM2,XMM0
00518afa  f30f5ec8                  DIVSS XMM1,XMM0
00518afe  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00518b06  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00518b0e  8bcf                      MOV ECX,EDI
00518b10  e8cbdcf3ff                CALL 0x004567e0
00518b15  8bcf                      MOV ECX,EDI
00518b17  c780a00b00001e000000      MOV dword ptr [EAX + 0xba0],0x1e
00518b21  e8badcf3ff                CALL 0x004567e0
00518b26  c780640b000008000000      MOV dword ptr [EAX + 0xb64],0x8
00518b30  e9c2020000                JMP 0x00518df7
00518b35  e8a6dcf3ff                CALL 0x004567e0
00518b3a  83b8640b000008            CMP dword ptr [EAX + 0xb64],0x8
00518b41  0f85b0020000              JNZ 0x00518df7
00518b47  8bcf                      MOV ECX,EDI
00518b49  e892dcf3ff                CALL 0x004567e0
00518b4e  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00518b56  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00518b5e  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00518b66  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00518b6e  0f28c1                    MOVAPS XMM0,XMM1
00518b71  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
00518b79  f30f59c1                  MULSS XMM0,XMM1
00518b7d  0f28ca                    MOVAPS XMM1,XMM2
00518b80  f30f119508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM2
00518b88  f30f59ca                  MULSS XMM1,XMM2
00518b8c  f30f58c1                  ADDSS XMM0,XMM1
00518b90  e8bbcef1ff                CALL 0x00435a50
00518b95  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
00518b9d  0f2fc8                    COMISS XMM1,XMM0
00518ba0  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00518ba8  7626                      JBE 0x00518bd0
00518baa  8bcf                      MOV ECX,EDI
00518bac  e82fdcf3ff                CALL 0x004567e0
00518bb1  83b8a00b00000f            CMP dword ptr [EAX + 0xba0],0xf
00518bb8  7d16                      JGE 0x00518bd0
00518bba  8bcf                      MOV ECX,EDI
00518bbc  e81fdcf3ff                CALL 0x004567e0
00518bc1  c780640b000004000000      MOV dword ptr [EAX + 0xb64],0x4
00518bcb  e927020000                JMP 0x00518df7
00518bd0  f30f108d0cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff0c]
00518bd8  0f57c0                    XORPS XMM0,XMM0
00518bdb  0f2fc8                    COMISS XMM1,XMM0
00518bde  0f8613020000              JBE 0x00518df7
00518be4  8bcf                      MOV ECX,EDI
00518be6  e8f5dbf3ff                CALL 0x004567e0
00518beb  0f57c0                    XORPS XMM0,XMM0
00518bee  f30f101500a5ba00          MOVSS XMM2,dword ptr [0x00baa500]
00518bf6  0f57c9                    XORPS XMM1,XMM1
00518bf9  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
00518c01  0f2ed9                    UCOMISS XMM3,XMM1
00518c04  f30f2a80a00b0000          CVTSI2SS XMM0,dword ptr [EAX + 0xba0]
00518c0c  9f                        LAHF
00518c0d  f30f5c0514aeba00          SUBSS XMM0,dword ptr [0x00baae14]
00518c15  f30f5e0510a9ba00          DIVSS XMM0,dword ptr [0x00baa910]
00518c1d  f30f5fc1                  MAXSS XMM0,XMM1
00518c21  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
00518c29  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00518c31  f30f5cd0                  SUBSS XMM2,XMM0
00518c35  f30f5e950cffffff          DIVSS XMM2,dword ptr [EBP + 0xffffff0c]
00518c3d  0f28e2                    MOVAPS XMM4,XMM2
00518c40  f30f5995fcfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffefc]
00518c48  f30f59a508ffffff          MULSS XMM4,dword ptr [EBP + 0xffffff08]
00518c50  f6c444                    TEST AH,0x44
00518c53  7b3b                      JNP 0x00518c90
00518c55  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00518c5d  0f28c1                    MOVAPS XMM0,XMM1
00518c60  f30f59ca                  MULSS XMM1,XMM2
00518c64  f30f59c4                  MULSS XMM0,XMM4
00518c68  f30f5ecb                  DIVSS XMM1,XMM3
00518c6c  f30f5ec3                  DIVSS XMM0,XMM3
00518c70  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00518c78  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00518c80  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00518c88  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00518c90  8bcf                      MOV ECX,EDI
00518c92  e849dbf3ff                CALL 0x004567e0
00518c97  660f6e80a00b0000          MOVD XMM0,dword ptr [EAX + 0xba0]
00518c9f  0f5bc0                    CVTDQ2PS XMM0,XMM0
00518ca2  f30f59053ca0ba00          MULSS XMM0,dword ptr [0x00baa03c]
00518caa  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
00518cb2  f30f59876c030000          MULSS XMM0,dword ptr [EDI + 0x36c]
00518cba  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00518cc2  e930010000                JMP 0x00518df7
00518cc7  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
00518cce  747a                      JZ 0x00518d4a
00518cd0  8bcf                      MOV ECX,EDI
00518cd2  e809dbf3ff                CALL 0x004567e0
00518cd7  ffb7640c0000              PUSH dword ptr [EDI + 0xc64]
00518cdd  8bf0                      MOV ESI,EAX
00518cdf  6a00                      PUSH 0x0
00518ce1  6a00                      PUSH 0x0
00518ce3  6a0b                      PUSH 0xb
00518ce5  8bce                      MOV ECX,ESI
00518ce7  e844821a00                CALL 0x006c0f30
00518cec  8b8e84030000              MOV ECX,dword ptr [ESI + 0x384]
00518cf2  898e80030000              MOV dword ptr [ESI + 0x380],ECX
00518cf8  8d4e48                    LEA ECX,[ESI + 0x48]
00518cfb  c7868801000004000000      MOV dword ptr [ESI + 0x188],0x4
00518d05  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
00518d09  6a00                      PUSH 0x0
00518d0b  751c                      JNZ 0x00518d29
00518d0d  e80e25efff                CALL 0x0040b220
00518d12  c740480b0a8a3f            MOV dword ptr [EAX + 0x48],0x3f8a0a0b
00518d19  c7404ce3e1613f            MOV dword ptr [EAX + 0x4c],0x3f61e1e3
00518d20  c74050e3e1613f            MOV dword ptr [EAX + 0x50],0x3f61e1e3
00518d27  eb1a                      JMP 0x00518d43
00518d29  e8f224efff                CALL 0x0040b220
00518d2e  c74048b2b1b13f            MOV dword ptr [EAX + 0x48],0x3fb1b1b2
00518d35  c7404cb2b1b13f            MOV dword ptr [EAX + 0x4c],0x3fb1b1b2
00518d3c  c74050b2b1b13f            MOV dword ptr [EAX + 0x50],0x3fb1b1b2
00518d43  c740540000803f            MOV dword ptr [EAX + 0x54],0x3f800000
00518d4a  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00518d51  745d                      JZ 0x00518db0
00518d53  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
00518d57  7557                      JNZ 0x00518db0
00518d59  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
00518d5f  e8cc61f2ff                CALL 0x0043ef30
00518d64  50                        PUSH EAX
00518d65  6a06                      PUSH 0x6
00518d67  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
00518d6d  c78504ffffff00000041      MOV dword ptr [EBP + 0xffffff04],0x41000000
00518d77  50                        PUSH EAX
00518d78  8d873c030000              LEA EAX,[EDI + 0x33c]
00518d7e  c78508ffffff00000000      MOV dword ptr [EBP + 0xffffff08],0x0
00518d88  50                        PUSH EAX
00518d89  8bcf                      MOV ECX,EDI
00518d8b  e850251b00                CALL 0x006cb2e0
00518d90  51                        PUSH ECX
00518d91  c704240000803f            MOV dword ptr [ESP],0x3f800000
00518d98  6a00                      PUSH 0x0
00518d9a  6a02                      PUSH 0x2
00518d9c  51                        PUSH ECX
00518d9d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00518da4  8bcf                      MOV ECX,EDI
00518da6  6892000000                PUSH 0x92
00518dab  e8f0dd1b00                CALL 0x006d6ba0
00518db0  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00518db6  8bcf                      MOV ECX,EDI
00518db8  ffb7640c0000              PUSH dword ptr [EDI + 0xc64]
00518dbe  81a768010000fffffbff      AND dword ptr [EDI + 0x168],0xfffbffff
00518dc8  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00518dce  33c0                      XOR EAX,EAX
00518dd0  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00518dd4  6a00                      PUSH 0x0
00518dd6  0f95c0                    SETNZ AL
00518dd9  50                        PUSH EAX
00518dda  6a1a                      PUSH 0x1a
00518ddc  e84f811a00                CALL 0x006c0f30
00518de1  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
00518de7  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00518df1  898780030000              MOV dword ptr [EDI + 0x380],EAX
00518df7  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00518dfa  64890d00000000            MOV dword ptr FS:[0x0],ECX
00518e01  59                        POP ECX
00518e02  5f                        POP EDI
00518e03  5e                        POP ESI
00518e04  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00518e07  33cd                      XOR ECX,EBP
00518e09  e81d635d00                CALL 0x00aef12b
00518e0e  8be5                      MOV ESP,EBP
00518e10  5d                        POP EBP
00518e11  8be3                      MOV ESP,EBX
00518e13  5b                        POP EBX
00518e14  c3                        RET
