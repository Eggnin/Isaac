; J460 NPC AI 0x00529da0 AI_00529da0
; types=85,94,215,250,869
; identities=215.0.0,250.0.0,85.0.0,869.0.0,94.0.0
; entry=00529da0
00529da0  53                        PUSH EBX
00529da1  8bdc                      MOV EBX,ESP
00529da3  83ec08                    SUB ESP,0x8
00529da6  83e4f8                    AND ESP,0xfffffff8
00529da9  83c404                    ADD ESP,0x4
00529dac  55                        PUSH EBP
00529dad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00529db0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00529db4  8bec                      MOV EBP,ESP
00529db6  6aff                      PUSH -0x1
00529db8  682d46af00                PUSH 0xaf462d
00529dbd  64a100000000              MOV EAX,FS:[0x0]
00529dc3  50                        PUSH EAX
00529dc4  53                        PUSH EBX
00529dc5  83ec60                    SUB ESP,0x60
00529dc8  a1b493bf00                MOV EAX,[0x00bf93b4]
00529dcd  33c5                      XOR EAX,EBP
00529dcf  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00529dd2  56                        PUSH ESI
00529dd3  57                        PUSH EDI
00529dd4  50                        PUSH EAX
00529dd5  8d45f4                    LEA EAX,[EBP + -0xc]
00529dd8  64a300000000              MOV FS:[0x0],EAX
00529dde  8bf9                      MOV EDI,ECX
00529de0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00529de6  6a01                      PUSH 0x1
00529de8  81c1a8ba0100              ADD ECX,0x1baa8
00529dee  51                        PUSH ECX
00529def  6879010000                PUSH 0x179
00529df4  e887424900                CALL 0x009be080
00529df9  85c0                      TEST EAX,EAX
00529dfb  0f84db000000              JZ 0x00529edc
00529e01  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00529e07  2500000020                AND EAX,0x20000000
00529e0c  83c800                    OR EAX,0x0
00529e0f  0f85c7000000              JNZ 0x00529edc
00529e15  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
00529e1d  b101                      MOV CL,0x1
00529e1f  884dc3                    MOV byte ptr [EBP + -0x3d],CL
00529e22  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00529e2a  2bf0                      SUB ESI,EAX
00529e2c  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00529e33  7420                      JZ 0x00529e55
00529e35  a17816c700                MOV EAX,[0x00c71678]
00529e3a  884dc2                    MOV byte ptr [EBP + -0x3e],CL
00529e3d  8975b4                    MOV dword ptr [EBP + -0x4c],ESI
00529e40  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00529e46  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00529e4c  83f801                    CMP EAX,0x1
00529e4f  0f85a0000000              JNZ 0x00529ef5
00529e55  a1980fb600                MOV EAX,[0x00b60f98]
00529e5a  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00529e5d  66a19c0fb600              MOV AX,[0x00b60f9c]
00529e63  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00529e6a  c745e406000000            MOV dword ptr [EBP + -0x1c],0x6
00529e71  668945d8                  MOV word ptr [EBP + -0x28],AX
00529e75  c645da00                  MOV byte ptr [EBP + -0x26],0x0
00529e79  8d45d4                    LEA EAX,[EBP + -0x2c]
00529e7c  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00529e83  50                        PUSH EAX
00529e84  8bcf                      MOV ECX,EDI
00529e86  e8e50b1900                CALL 0x006baa70
00529e8b  8a45c3                    MOV AL,byte ptr [EBP + -0x3d]
00529e8e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00529e95  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00529e98  8845c2                    MOV byte ptr [EBP + -0x3e],AL
00529e9b  8975b4                    MOV dword ptr [EBP + -0x4c],ESI
00529e9e  83fa10                    CMP EDX,0x10
00529ea1  7252                      JC 0x00529ef5
00529ea3  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00529ea6  42                        INC EDX
00529ea7  8bc1                      MOV EAX,ECX
00529ea9  81fa00100000              CMP EDX,0x1000
00529eaf  7216                      JC 0x00529ec7
00529eb1  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00529eb4  83c223                    ADD EDX,0x23
00529eb7  2bc1                      SUB EAX,ECX
00529eb9  83c0fc                    ADD EAX,-0x4
00529ebc  83f81f                    CMP EAX,0x1f
00529ebf  7606                      JBE 0x00529ec7
00529ec1  ff159488b100              CALL dword ptr [0x00b18894]
00529ec7  52                        PUSH EDX
00529ec8  51                        PUSH ECX
00529ec9  e88e525c00                CALL 0x00aef15c
00529ece  8a45c3                    MOV AL,byte ptr [EBP + -0x3d]
00529ed1  83c408                    ADD ESP,0x8
00529ed4  8845c2                    MOV byte ptr [EBP + -0x3e],AL
00529ed7  8975b4                    MOV dword ptr [EBP + -0x4c],ESI
00529eda  eb19                      JMP 0x00529ef5
00529edc  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00529ee4  c645c200                  MOV byte ptr [EBP + -0x3e],0x0
00529ee8  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00529ef0  2bc8                      SUB ECX,EAX
00529ef2  894db4                    MOV dword ptr [EBP + -0x4c],ECX
00529ef5  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00529efb  85c9                      TEST ECX,ECX
00529efd  7515                      JNZ 0x00529f14
00529eff  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00529f09  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00529f0f  e9f30e0000                JMP 0x0052ae07
00529f14  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00529f1a  2500000020                AND EAX,0x20000000
00529f1f  83c800                    OR EAX,0x0
00529f22  7409                      JZ 0x00529f2d
00529f24  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00529f2b  7548                      JNZ 0x00529f75
00529f2d  a17816c700                MOV EAX,[0x00c71678]
00529f32  8db73c030000              LEA ESI,[EDI + 0x33c]
00529f38  83ec0c                    SUB ESP,0xc
00529f3b  8d4d90                    LEA ECX,[EBP + -0x70]
00529f3e  0f57db                    XORPS XMM3,XMM3
00529f41  c744240800002041          MOV dword ptr [ESP + 0x8],0x41200000
00529f49  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00529f51  c704240000a041            MOV dword ptr [ESP],0x41a00000
00529f58  56                        PUSH ESI
00529f59  51                        PUSH ECX
00529f5a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00529f60  e8eb8f2e00                CALL 0x00812f50
00529f65  8b08                      MOV ECX,dword ptr [EAX]
00529f67  890e                      MOV dword ptr [ESI],ECX
00529f69  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00529f6c  894604                    MOV dword ptr [ESI + 0x4],EAX
00529f6f  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00529f75  33d2                      XOR EDX,EDX
00529f77  b804000000                MOV EAX,0x4
00529f7c  83f906                    CMP ECX,0x6
00529f7f  0f44c2                    CMOVZ EAX,EDX
00529f82  898788010000              MOV dword ptr [EDI + 0x188],EAX
00529f88  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00529f8b  3dfa000000                CMP EAX,0xfa
00529f90  7407                      JZ 0x00529f99
00529f92  3d65030000                CMP EAX,0x365
00529f97  7529                      JNZ 0x00529fc2
00529f99  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00529f9f  83f8ff                    CMP EAX,-0x1
00529fa2  741e                      JZ 0x00529fc2
00529fa4  51                        PUSH ECX
00529fa5  57                        PUSH EDI
00529fa6  50                        PUSH EAX
00529fa7  6a09                      PUSH 0x9
00529fa9  e862c14200                CALL 0x00956110
00529fae  84c0                      TEST AL,AL
00529fb0  7410                      JZ 0x00529fc2
00529fb2  8d4dc4                    LEA ECX,[EBP + -0x3c]
00529fb5  e8b6bcf0ff                CALL 0x00435c70
00529fba  8b17                      MOV EDX,dword ptr [EDI]
00529fbc  8bcf                      MOV ECX,EDI
00529fbe  50                        PUSH EAX
00529fbf  ff5224                    CALL dword ptr [EDX + 0x24]
00529fc2  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00529fc8  83f806                    CMP EAX,0x6
00529fcb  0f856b030000              JNZ 0x0052a33c
00529fd1  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00529fd4  3dd7000000                CMP EAX,0xd7
00529fd9  0f8411010000              JZ 0x0052a0f0
00529fdf  3dfa000000                CMP EAX,0xfa
00529fe4  0f8406010000              JZ 0x0052a0f0
00529fea  3d65030000                CMP EAX,0x365
00529fef  0f84fb000000              JZ 0x0052a0f0
00529ff5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00529ff9  7450                      JZ 0x0052a04b
00529ffb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0052a002  7547                      JNZ 0x0052a04b
0052a004  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0052a007  83781410                  CMP dword ptr [EAX + 0x14],0x10
0052a00b  7202                      JC 0x0052a00f
0052a00d  8b00                      MOV EAX,dword ptr [EAX]
0052a00f  b960d5b100                MOV ECX,0xb1d560
0052a014  8a10                      MOV DL,byte ptr [EAX]
0052a016  3a11                      CMP DL,byte ptr [ECX]
0052a018  751a                      JNZ 0x0052a034
0052a01a  84d2                      TEST DL,DL
0052a01c  7412                      JZ 0x0052a030
0052a01e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0052a021  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0052a024  750e                      JNZ 0x0052a034
0052a026  83c002                    ADD EAX,0x2
0052a029  83c102                    ADD ECX,0x2
0052a02c  84d2                      TEST DL,DL
0052a02e  75e4                      JNZ 0x0052a014
0052a030  33c0                      XOR EAX,EAX
0052a032  eb05                      JMP 0x0052a039
0052a034  1bc0                      SBB EAX,EAX
0052a036  83c801                    OR EAX,0x1
0052a039  85c0                      TEST EAX,EAX
0052a03b  750e                      JNZ 0x0052a04b
0052a03d  50                        PUSH EAX
0052a03e  68900fb600                PUSH 0xb60f90
0052a043  8d4f48                    LEA ECX,[EDI + 0x48]
0052a046  e83503eeff                CALL 0x0040a380
0052a04b  8b87b00b0000              MOV EAX,dword ptr [EDI + 0xbb0]
0052a051  898760030000              MOV dword ptr [EDI + 0x360],EAX
0052a057  8b87b40b0000              MOV EAX,dword ptr [EDI + 0xbb4]
0052a05d  898764030000              MOV dword ptr [EDI + 0x364],EAX
0052a063  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0052a06b  0f28ca                    MOVAPS XMM1,XMM2
0052a06e  0f28c2                    MOVAPS XMM0,XMM2
0052a071  f30f590d54a3ba00          MULSS XMM1,dword ptr [0x00baa354]
0052a079  f30f588fbc0b0000          ADDSS XMM1,dword ptr [EDI + 0xbbc]
0052a081  f30f59c1                  MULSS XMM0,XMM1
0052a085  f30f118fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM1
0052a08d  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0052a094  f30f588750030000          ADDSS XMM0,dword ptr [EDI + 0x350]
0052a09c  f30f59ca                  MULSS XMM1,XMM2
0052a0a0  0f2fc1                    COMISS XMM0,XMM1
0052a0a3  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
0052a0ab  0f86560b0000              JBE 0x0052ac07
0052a0b1  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
0052a0bb  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052a0c3  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052a0cb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0052a0d3  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0052a0db  ff8710040000              INC dword ptr [EDI + 0x410]
0052a0e1  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0052a0eb  e9170b0000                JMP 0x0052ac07
0052a0f0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052a0f4  8d7778                    LEA ESI,[EDI + 0x78]
0052a0f7  0f8412010000              JZ 0x0052a20f
0052a0fd  6860d5b100                PUSH 0xb1d560
0052a102  8bce                      MOV ECX,ESI
0052a104  e8c70ceeff                CALL 0x0040add0
0052a109  84c0                      TEST AL,AL
0052a10b  7464                      JZ 0x0052a171
0052a10d  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
0052a115  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0052a11d  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0052a125  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0052a12d  f30f591508a1ba00          MULSS XMM2,dword ptr [0x00baa108]
0052a135  f30f590d08a1ba00          MULSS XMM1,dword ptr [0x00baa108]
0052a13d  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0052a145  f30f1197b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM2
0052a14d  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0052a155  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0052a15d  c787bc0b0000000080c0      MOV dword ptr [EDI + 0xbbc],0xc0800000
0052a167  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052a171  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052a175  0f8494000000              JZ 0x0052a20f
0052a17b  6860d5b100                PUSH 0xb1d560
0052a180  8bce                      MOV ECX,ESI
0052a182  e8e90ceeff                CALL 0x0040ae70
0052a187  84c0                      TEST AL,AL
0052a189  7437                      JZ 0x0052a1c2
0052a18b  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0052a193  0f28c1                    MOVAPS XMM0,XMM1
0052a196  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0052a19e  f30f5887bc0b0000          ADDSS XMM0,dword ptr [EDI + 0xbbc]
0052a1a6  f30f59c8                  MULSS XMM1,XMM0
0052a1aa  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
0052a1b2  f30f588f50030000          ADDSS XMM1,dword ptr [EDI + 0x350]
0052a1ba  f30f118f50030000          MOVSS dword ptr [EDI + 0x350],XMM1
0052a1c2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052a1c6  7447                      JZ 0x0052a20f
0052a1c8  6860d5b100                PUSH 0xb1d560
0052a1cd  8bce                      MOV ECX,ESI
0052a1cf  e89c0ceeff                CALL 0x0040ae70
0052a1d4  84c0                      TEST AL,AL
0052a1d6  7437                      JZ 0x0052a20f
0052a1d8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052a1dc  7410                      JZ 0x0052a1ee
0052a1de  6874d5b100                PUSH 0xb1d574
0052a1e3  8bce                      MOV ECX,ESI
0052a1e5  e8860ceeff                CALL 0x0040ae70
0052a1ea  84c0                      TEST AL,AL
0052a1ec  7521                      JNZ 0x0052a20f
0052a1ee  8b87b00b0000              MOV EAX,dword ptr [EDI + 0xbb0]
0052a1f4  33c9                      XOR ECX,ECX
0052a1f6  898760030000              MOV dword ptr [EDI + 0x360],EAX
0052a1fc  8b87b40b0000              MOV EAX,dword ptr [EDI + 0xbb4]
0052a202  898764030000              MOV dword ptr [EDI + 0x364],EAX
0052a208  b803000000                MOV EAX,0x3
0052a20d  eb0a                      JMP 0x0052a219
0052a20f  b805000000                MOV EAX,0x5
0052a214  b904000000                MOV ECX,0x4
0052a219  898f88010000              MOV dword ptr [EDI + 0x188],ECX
0052a21f  898784010000              MOV dword ptr [EDI + 0x184],EAX
0052a225  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052a229  7464                      JZ 0x0052a28f
0052a22b  6874d5b100                PUSH 0xb1d574
0052a230  8bce                      MOV ECX,ESI
0052a232  e8390ceeff                CALL 0x0040ae70
0052a237  84c0                      TEST AL,AL
0052a239  7454                      JZ 0x0052a28f
0052a23b  f30f108fbc0b0000          MOVSS XMM1,dword ptr [EDI + 0xbbc]
0052a243  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0052a24a  f30f598f9c030000          MULSS XMM1,dword ptr [EDI + 0x39c]
0052a252  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
0052a25a  0f2fc1                    COMISS XMM0,XMM1
0052a25d  7630                      JBE 0x0052a28f
0052a25f  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
0052a269  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052a271  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052a279  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0052a281  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0052a289  ff8710040000              INC dword ptr [EDI + 0x410]
0052a28f  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0052a297  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0052a29e  9f                        LAHF
0052a29f  f6c444                    TEST AH,0x44
0052a2a2  0f8a5f090000              JP 0x0052ac07
0052a2a8  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0052a2b0  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0052a2b7  9f                        LAHF
0052a2b8  f6c444                    TEST AH,0x44
0052a2bb  0f8a46090000              JP 0x0052ac07
0052a2c1  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052a2c9  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0052a2d1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052a2d9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052a2dd  0f8424090000              JZ 0x0052ac07
0052a2e3  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0052a2ea  0f8517090000              JNZ 0x0052ac07
0052a2f0  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0052a2f3  83781410                  CMP dword ptr [EAX + 0x14],0x10
0052a2f7  7202                      JC 0x0052a2fb
0052a2f9  8b00                      MOV EAX,dword ptr [EAX]
0052a2fb  b960d5b100                MOV ECX,0xb1d560
0052a300  8a10                      MOV DL,byte ptr [EAX]
0052a302  3a11                      CMP DL,byte ptr [ECX]
0052a304  751a                      JNZ 0x0052a320
0052a306  84d2                      TEST DL,DL
0052a308  7412                      JZ 0x0052a31c
0052a30a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0052a30d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0052a310  750e                      JNZ 0x0052a320
0052a312  83c002                    ADD EAX,0x2
0052a315  83c102                    ADD ECX,0x2
0052a318  84d2                      TEST DL,DL
0052a31a  75e4                      JNZ 0x0052a300
0052a31c  33c0                      XOR EAX,EAX
0052a31e  eb05                      JMP 0x0052a325
0052a320  1bc0                      SBB EAX,EAX
0052a322  83c801                    OR EAX,0x1
0052a325  85c0                      TEST EAX,EAX
0052a327  0f85da080000              JNZ 0x0052ac07
0052a32d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0052a337  e9cb080000                JMP 0x0052ac07
0052a33c  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0052a343  0f84ca010000              JZ 0x0052a513
0052a349  837f285e                  CMP dword ptr [EDI + 0x28],0x5e
0052a34d  0f85c0010000              JNZ 0x0052a513
0052a353  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0052a35b  0f2f05ecadba00            COMISS XMM0,dword ptr [0x00baadec]
0052a362  0f86ab010000              JBE 0x0052a513
0052a368  51                        PUSH ECX
0052a369  8d45b8                    LEA EAX,[EBP + -0x48]
0052a36c  c7042400000000            MOV dword ptr [ESP],0x0
0052a373  50                        PUSH EAX
0052a374  8bcf                      MOV ECX,EDI
0052a376  e8c5481900                CALL 0x006bec40
0052a37b  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
0052a380  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0052a388  f30f1055b8                MOVSS XMM2,dword ptr [EBP + -0x48]
0052a38d  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0052a395  0f28c1                    MOVAPS XMM0,XMM1
0052a398  f30f114dac                MOVSS dword ptr [EBP + -0x54],XMM1
0052a39d  f30f59c1                  MULSS XMM0,XMM1
0052a3a1  0f28ca                    MOVAPS XMM1,XMM2
0052a3a4  f30f1155b4                MOVSS dword ptr [EBP + -0x4c],XMM2
0052a3a9  f30f59ca                  MULSS XMM1,XMM2
0052a3ad  f30f58c1                  ADDSS XMM0,XMM1
0052a3b1  e89ab6f0ff                CALL 0x00435a50
0052a3b6  0f28c8                    MOVAPS XMM1,XMM0
0052a3b9  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0052a3c0  763f                      JBE 0x0052a401
0052a3c2  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0052a3c7  f30f5ec1                  DIVSS XMM0,XMM1
0052a3cb  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0052a3d3  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0052a3d8  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0052a3dd  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
0052a3e2  f30f5ec1                  DIVSS XMM0,XMM1
0052a3e6  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0052a3ee  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0052a3f5  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
0052a3fa  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0052a3ff  eb39                      JMP 0x0052a43a
0052a401  8d45a0                    LEA EAX,[EBP + -0x60]
0052a404  50                        PUSH EAX
0052a405  e8664c1500                CALL 0x0067f070
0052a40a  83c404                    ADD ESP,0x4
0052a40d  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0052a411  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0052a419  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
0052a41e  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0052a423  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0052a428  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0052a430  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0052a435  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0052a43a  e8214b1c00                CALL 0x006eef60
0052a43f  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
0052a444  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0052a44c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052a452  50                        PUSH EAX
0052a453  6a00                      PUSH 0x0
0052a455  57                        PUSH EDI
0052a456  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
0052a45b  8d45b8                    LEA EAX,[EBP + -0x48]
0052a45e  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0052a463  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0052a46b  50                        PUSH EAX
0052a46c  8d4598                    LEA EAX,[EBP + -0x68]
0052a46f  50                        PUSH EAX
0052a470  6a00                      PUSH 0x0
0052a472  6a55                      PUSH 0x55
0052a474  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
0052a479  e8a2e6efff                CALL 0x00428b20
0052a47e  8bf0                      MOV ESI,EAX
0052a480  e8db4a1c00                CALL 0x006eef60
0052a485  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052a48d  f30f5c45ac                SUBSS XMM0,dword ptr [EBP + -0x54]
0052a492  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052a498  50                        PUSH EAX
0052a499  6a00                      PUSH 0x0
0052a49b  57                        PUSH EDI
0052a49c  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0052a4a1  8d45b8                    LEA EAX,[EBP + -0x48]
0052a4a4  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0052a4ac  f30f5c45b4                SUBSS XMM0,dword ptr [EBP + -0x4c]
0052a4b1  50                        PUSH EAX
0052a4b2  8d45a0                    LEA EAX,[EBP + -0x60]
0052a4b5  50                        PUSH EAX
0052a4b6  6a00                      PUSH 0x0
0052a4b8  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0052a4bd  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0052a4c5  f30f5c45ac                SUBSS XMM0,dword ptr [EBP + -0x54]
0052a4ca  6a55                      PUSH 0x55
0052a4cc  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
0052a4d1  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0052a4d9  f30f5c45b4                SUBSS XMM0,dword ptr [EBP + -0x4c]
0052a4de  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0052a4e3  e838e6efff                CALL 0x00428b20
0052a4e8  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
0052a4ee  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0052a4f5  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
0052a4fb  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0052a501  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0052a508  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0052a50e  e9dc060000                JMP 0x0052abef
0052a513  83f804                    CMP EAX,0x4
0052a516  0f85d3060000              JNZ 0x0052abef
0052a51c  51                        PUSH ECX
0052a51d  8d45b8                    LEA EAX,[EBP + -0x48]
0052a520  c7042400007042            MOV dword ptr [ESP],0x42700000
0052a527  50                        PUSH EAX
0052a528  8bcf                      MOV ECX,EDI
0052a52a  e811471900                CALL 0x006bec40
0052a52f  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0052a534  8db73c030000              LEA ESI,[EDI + 0x33c]
0052a53a  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0052a53e  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052a541  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
0052a546  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
0052a54b  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0052a550  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
0052a555  3dd7000000                CMP EAX,0xd7
0052a55a  7414                      JZ 0x0052a570
0052a55c  3dfa000000                CMP EAX,0xfa
0052a561  740d                      JZ 0x0052a570
0052a563  3d65030000                CMP EAX,0x365
0052a568  7406                      JZ 0x0052a570
0052a56a  c645c300                  MOV byte ptr [EBP + -0x3d],0x0
0052a56e  eb15                      JMP 0x0052a585
0052a570  f30f1015eca9ba00          MOVSS XMM2,dword ptr [0x00baa9ec]
0052a578  8bcf                      MOV ECX,EDI
0052a57a  6a00                      PUSH 0x0
0052a57c  c645c301                  MOV byte ptr [EBP + -0x3d],0x1
0052a580  e89be51a00                CALL 0x006d8b20
0052a585  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0052a58d  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0052a594  9f                        LAHF
0052a595  f6c444                    TEST AH,0x44
0052a598  0f8a03050000              JP 0x0052aaa1
0052a59e  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0052a5a6  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0052a5ad  9f                        LAHF
0052a5ae  f6c444                    TEST AH,0x44
0052a5b1  0f8aea040000              JP 0x0052aaa1
0052a5b7  6a00                      PUSH 0x0
0052a5b9  8d4f48                    LEA ECX,[EDI + 0x48]
0052a5bc  6854bcb100                PUSH 0xb1bc54
0052a5c1  e8bafdedff                CALL 0x0040a380
0052a5c6  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
0052a5cc  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
0052a5cf  03c1                      ADD EAX,ECX
0052a5d1  898710040000              MOV dword ptr [EDI + 0x410],EAX
0052a5d7  83f90d                    CMP ECX,0xd
0052a5da  0f8e0f060000              JLE 0x0052abef
0052a5e0  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052a5e7  0f84ea000000              JZ 0x0052a6d7
0052a5ed  807dc300                  CMP byte ptr [EBP + -0x3d],0x0
0052a5f1  0f8499000000              JZ 0x0052a690
0052a5f7  8bcf                      MOV ECX,EDI
0052a5f9  e882e71a00                CALL 0x006d8d80
0052a5fe  84c0                      TEST AL,AL
0052a600  0f848a000000              JZ 0x0052a690
0052a606  8d45a0                    LEA EAX,[EBP + -0x60]
0052a609  8bcf                      MOV ECX,EDI
0052a60b  50                        PUSH EAX
0052a60c  e81fe71a00                CALL 0x006d8d30
0052a611  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052a617  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0052a61b  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0052a621  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0052a626  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0052a62b  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0052a630  ff75bc                    PUSH dword ptr [EBP + -0x44]
0052a633  ff75b8                    PUSH dword ptr [EBP + -0x48]
0052a636  e845612c00                CALL 0x007f0780
0052a63b  85c0                      TEST EAX,EAX
0052a63d  7551                      JNZ 0x0052a690
0052a63f  8d45b8                    LEA EAX,[EBP + -0x48]
0052a642  8bcf                      MOV ECX,EDI
0052a644  50                        PUSH EAX
0052a645  e8e6e61a00                CALL 0x006d8d30
0052a64a  6a01                      PUSH 0x1
0052a64c  6860d5b100                PUSH 0xb1d560
0052a651  8b08                      MOV ECX,dword ptr [EAX]
0052a653  898f34030000              MOV dword ptr [EDI + 0x334],ECX
0052a659  8d4f48                    LEA ECX,[EDI + 0x48]
0052a65c  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0052a65f  898738030000              MOV dword ptr [EDI + 0x338],EAX
0052a665  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0052a66f  e85cffedff                CALL 0x0040a5d0
0052a674  84c0                      TEST AL,AL
0052a676  0f8473050000              JZ 0x0052abef
0052a67c  8d4f78                    LEA ECX,[EDI + 0x78]
0052a67f  e82cfbedff                CALL 0x0040a1b0
0052a684  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0052a68b  e95f050000                JMP 0x0052abef
0052a690  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0052a698  8d4598                    LEA EAX,[EBP + -0x68]
0052a69b  50                        PUSH EAX
0052a69c  8bcf                      MOV ECX,EDI
0052a69e  e82ddc1a00                CALL 0x006d82d0
0052a6a3  6840b6c700                PUSH 0xc7b640
0052a6a8  8bc8                      MOV ECX,EAX
0052a6aa  e8815f4e00                CALL 0x00a10630
0052a6af  84c0                      TEST AL,AL
0052a6b1  0f8438050000              JZ 0x0052abef
0052a6b7  8b06                      MOV EAX,dword ptr [ESI]
0052a6b9  898734030000              MOV dword ptr [EDI + 0x334],EAX
0052a6bf  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0052a6c2  898738030000              MOV dword ptr [EDI + 0x338],EAX
0052a6c8  c7871004000008000000      MOV dword ptr [EDI + 0x410],0x8
0052a6d2  e918050000                JMP 0x0052abef
0052a6d7  807dc200                  CMP byte ptr [EBP + -0x3e],0x0
0052a6db  0f853a010000              JNZ 0x0052a81b
0052a6e1  f30f104d9c                MOVSS XMM1,dword ptr [EBP + -0x64]
0052a6e6  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
0052a6eb  f30f59c0                  MULSS XMM0,XMM0
0052a6ef  f30f59c9                  MULSS XMM1,XMM1
0052a6f3  f30f58c1                  ADDSS XMM0,XMM1
0052a6f7  e854b3f0ff                CALL 0x00435a50
0052a6fc  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
0052a701  e85a481c00                CALL 0x006eef60
0052a706  0f57c9                    XORPS XMM1,XMM1
0052a709  f20f2ac8                  CVTSI2SD XMM1,EAX
0052a70d  c1e81f                    SHR EAX,0x1f
0052a710  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0052a719  660f5ac9                  CVTPD2PS XMM1,XMM1
0052a71d  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0052a725  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0052a72d  f30f580dd0a9ba00          ADDSS XMM1,dword ptr [0x00baa9d0]
0052a735  0f2f4d9c                  COMISS XMM1,dword ptr [EBP + -0x64]
0052a739  770d                      JA 0x0052a748
0052a73b  83bf380f000000            CMP dword ptr [EDI + 0xf38],0x0
0052a742  0f84d3000000              JZ 0x0052a81b
0052a748  a17816c700                MOV EAX,[0x00c71678]
0052a74d  8d4db8                    LEA ECX,[EBP + -0x48]
0052a750  6a00                      PUSH 0x0
0052a752  6a00                      PUSH 0x0
0052a754  6a00                      PUSH 0x0
0052a756  6a00                      PUSH 0x0
0052a758  6a01                      PUSH 0x1
0052a75a  51                        PUSH ECX
0052a75b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0052a761  56                        PUSH ESI
0052a762  e889662c00                CALL 0x007f0df0
0052a767  84c0                      TEST AL,AL
0052a769  750d                      JNZ 0x0052a778
0052a76b  83bf8401000003            CMP dword ptr [EDI + 0x184],0x3
0052a772  0f85a3000000              JNZ 0x0052a81b
0052a778  8bcf                      MOV ECX,EDI
0052a77a  e8c1401900                CALL 0x006be840
0052a77f  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
0052a787  83ec0c                    SUB ESP,0xc
0052a78a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052a790  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0052a798  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
0052a7a0  8d45b8                    LEA EAX,[EBP + -0x48]
0052a7a3  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0052a7ab  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0052a7b1  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
0052a7b9  f30f5845b8                ADDSS XMM0,dword ptr [EBP + -0x48]
0052a7be  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
0052a7c4  f30f584dbc                ADDSS XMM1,dword ptr [EBP + -0x44]
0052a7c9  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
0052a7cf  f30f111c24                MOVSS dword ptr [ESP],XMM3
0052a7d4  50                        PUSH EAX
0052a7d5  8d45a0                    LEA EAX,[EBP + -0x60]
0052a7d8  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0052a7dd  50                        PUSH EAX
0052a7de  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0052a7e3  e868872e00                CALL 0x00812f50
0052a7e8  f30f1045a0                MOVSS XMM0,dword ptr [EBP + -0x60]
0052a7ed  f30f104da4                MOVSS XMM1,dword ptr [EBP + -0x5c]
0052a7f2  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0052a7f7  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0052a7fc  f30f114dac                MOVSS dword ptr [EBP + -0x54],XMM1
0052a801  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0052a806  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052a80e  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
0052a816  e9e6010000                JMP 0x0052aa01
0052a81b  8d45a0                    LEA EAX,[EBP + -0x60]
0052a81e  50                        PUSH EAX
0052a81f  e84c481500                CALL 0x0067f070
0052a824  83c404                    ADD ESP,0x4
0052a827  8bf0                      MOV ESI,EAX
0052a829  e832471c00                CALL 0x006eef60
0052a82e  f30f101d50a9ba00          MOVSS XMM3,dword ptr [0x00baa950]
0052a836  83ec0c                    SUB ESP,0xc
0052a839  660f6ec0                  MOVD XMM0,EAX
0052a83d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0052a841  c1e81f                    SHR EAX,0x1f
0052a844  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052a84d  c744240800007042          MOV dword ptr [ESP + 0x8],0x42700000
0052a855  8d45b8                    LEA EAX,[EBP + -0x48]
0052a858  c744240400002042          MOV dword ptr [ESP + 0x4],0x42200000
0052a860  c7042400008c42            MOV dword ptr [ESP],0x428c0000
0052a867  50                        PUSH EAX
0052a868  660f5ac8                  CVTPD2PS XMM1,XMM0
0052a86c  8d4598                    LEA EAX,[EBP + -0x68]
0052a86f  50                        PUSH EAX
0052a870  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0052a878  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
0052a880  f30f580d7ca9ba00          ADDSS XMM1,dword ptr [0x00baa97c]
0052a888  0f28c1                    MOVAPS XMM0,XMM1
0052a88b  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
0052a890  f30f5906                  MULSS XMM0,dword ptr [ESI]
0052a894  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0052a89a  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0052a8a2  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0052a8aa  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0052a8b0  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0052a8b5  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0052a8ba  e891862e00                CALL 0x00812f50
0052a8bf  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0052a8c3  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0052a8c8  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0052a8cd  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0052a8d2  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
0052a8d8  8bc8                      MOV ECX,EAX
0052a8da  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0052a8df  ff75bc                    PUSH dword ptr [EBP + -0x44]
0052a8e2  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
0052a8e7  ff75b8                    PUSH dword ptr [EBP + -0x48]
0052a8ea  89459c                    MOV dword ptr [EBP + -0x64],EAX
0052a8ed  e88e5e2c00                CALL 0x007f0780
0052a8f2  85c0                      TEST EAX,EAX
0052a8f4  0f8507010000              JNZ 0x0052aa01
0052a8fa  8b4d9c                    MOV ECX,dword ptr [EBP + -0x64]
0052a8fd  8db73c030000              LEA ESI,[EDI + 0x33c]
0052a903  50                        PUSH EAX
0052a904  50                        PUSH EAX
0052a905  50                        PUSH EAX
0052a906  50                        PUSH EAX
0052a907  50                        PUSH EAX
0052a908  56                        PUSH ESI
0052a909  8d45b8                    LEA EAX,[EBP + -0x48]
0052a90c  50                        PUSH EAX
0052a90d  e8de642c00                CALL 0x007f0df0
0052a912  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
0052a917  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0052a91c  f30f114dac                MOVSS dword ptr [EBP + -0x54],XMM1
0052a921  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0052a926  84c0                      TEST AL,AL
0052a928  0f85b9000000              JNZ 0x0052a9e7
0052a92e  e82d461c00                CALL 0x006eef60
0052a933  33d2                      XOR EDX,EDX
0052a935  b914000000                MOV ECX,0x14
0052a93a  f7f1                      DIV ECX
0052a93c  85d2                      TEST EDX,EDX
0052a93e  0f85bd000000              JNZ 0x0052aa01
0052a944  f30f1026                  MOVSS XMM4,dword ptr [ESI]
0052a948  8d4da0                    LEA ECX,[EBP + -0x60]
0052a94b  f30f101d20a1ba00          MOVSS XMM3,dword ptr [0x00baa120]
0052a953  0f28c4                    MOVAPS XMM0,XMM4
0052a956  f30f1015e0a3ba00          MOVSS XMM2,dword ptr [0x00baa3e0]
0052a95e  f30f104db4                MOVSS XMM1,dword ptr [EBP + -0x4c]
0052a963  f30f106e04                MOVSS XMM5,dword ptr [ESI + 0x4]
0052a968  f30f59c2                  MULSS XMM0,XMM2
0052a96c  a17816c700                MOV EAX,[0x00c71678]
0052a971  f30f59cb                  MULSS XMM1,XMM3
0052a975  52                        PUSH EDX
0052a976  f30f59e3                  MULSS XMM4,XMM3
0052a97a  52                        PUSH EDX
0052a97b  f30f58c8                  ADDSS XMM1,XMM0
0052a97f  0f28c5                    MOVAPS XMM0,XMM5
0052a982  f30f59c2                  MULSS XMM0,XMM2
0052a986  52                        PUSH EDX
0052a987  f30f59eb                  MULSS XMM5,XMM3
0052a98b  52                        PUSH EDX
0052a98c  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
0052a991  f30f104dac                MOVSS XMM1,dword ptr [EBP + -0x54]
0052a996  f30f59cb                  MULSS XMM1,XMM3
0052a99a  6a01                      PUSH 0x1
0052a99c  51                        PUSH ECX
0052a99d  8d4d98                    LEA ECX,[EBP + -0x68]
0052a9a0  f30f58c8                  ADDSS XMM1,XMM0
0052a9a4  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0052a9a9  f30f59c2                  MULSS XMM0,XMM2
0052a9ad  51                        PUSH ECX
0052a9ae  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0052a9b4  f30f58c4                  ADDSS XMM0,XMM4
0052a9b8  f30f114da4                MOVSS dword ptr [EBP + -0x5c],XMM1
0052a9bd  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
0052a9c2  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
0052a9c7  f30f59c2                  MULSS XMM0,XMM2
0052a9cb  f30f58c5                  ADDSS XMM0,XMM5
0052a9cf  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
0052a9d4  e817642c00                CALL 0x007f0df0
0052a9d9  84c0                      TEST AL,AL
0052a9db  7424                      JZ 0x0052aa01
0052a9dd  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0052a9e2  f30f104dac                MOVSS XMM1,dword ptr [EBP + -0x54]
0052a9e7  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052a9ef  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
0052a9f7  c787100400000f000000      MOV dword ptr [EDI + 0x410],0xf
0052aa01  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052aa04  3dd7000000                CMP EAX,0xd7
0052aa09  7412                      JZ 0x0052aa1d
0052aa0b  3dfa000000                CMP EAX,0xfa
0052aa10  740b                      JZ 0x0052aa1d
0052aa12  3d65030000                CMP EAX,0x365
0052aa17  0f85d2010000              JNZ 0x0052abef
0052aa1d  e83e451c00                CALL 0x006eef60
0052aa22  33d2                      XOR EDX,EDX
0052aa24  b903000000                MOV ECX,0x3
0052aa29  f7f1                      DIV ECX
0052aa2b  85d2                      TEST EDX,EDX
0052aa2d  0f85bc010000              JNZ 0x0052abef
0052aa33  ff75bc                    PUSH dword ptr [EBP + -0x44]
0052aa36  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052aa3c  ff75b8                    PUSH dword ptr [EBP + -0x48]
0052aa3f  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0052aa45  e8365d2c00                CALL 0x007f0780
0052aa4a  85c0                      TEST EAX,EAX
0052aa4c  0f859d010000              JNZ 0x0052abef
0052aa52  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
0052aa57  8d4f48                    LEA ECX,[EDI + 0x48]
0052aa5a  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052aa62  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
0052aa67  6a01                      PUSH 0x1
0052aa69  6860d5b100                PUSH 0xb1d560
0052aa6e  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0052aa76  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0052aa80  e84bfbedff                CALL 0x0040a5d0
0052aa85  84c0                      TEST AL,AL
0052aa87  0f8462010000              JZ 0x0052abef
0052aa8d  8d4f78                    LEA ECX,[EDI + 0x78]
0052aa90  e81bf7edff                CALL 0x0040a1b0
0052aa95  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0052aa9c  e94e010000                JMP 0x0052abef
0052aaa1  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
0052aaa4  298710040000              SUB dword ptr [EDI + 0x410],EAX
0052aaaa  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0052aaad  85f6                      TEST ESI,ESI
0052aaaf  744a                      JZ 0x0052aafb
0052aab1  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0052aab5  8bc6                      MOV EAX,ESI
0052aab7  7202                      JC 0x0052aabb
0052aab9  8b06                      MOV EAX,dword ptr [ESI]
0052aabb  b9e4dcb100                MOV ECX,0xb1dce4
0052aac0  8a10                      MOV DL,byte ptr [EAX]
0052aac2  3a11                      CMP DL,byte ptr [ECX]
0052aac4  751a                      JNZ 0x0052aae0
0052aac6  84d2                      TEST DL,DL
0052aac8  7412                      JZ 0x0052aadc
0052aaca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0052aacd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0052aad0  750e                      JNZ 0x0052aae0
0052aad2  83c002                    ADD EAX,0x2
0052aad5  83c102                    ADD ECX,0x2
0052aad8  84d2                      TEST DL,DL
0052aada  75e4                      JNZ 0x0052aac0
0052aadc  33c0                      XOR EAX,EAX
0052aade  eb05                      JMP 0x0052aae5
0052aae0  1bc0                      SBB EAX,EAX
0052aae2  83c801                    OR EAX,0x1
0052aae5  85c0                      TEST EAX,EAX
0052aae7  7512                      JNZ 0x0052aafb
0052aae9  384634                    CMP byte ptr [ESI + 0x34],AL
0052aaec  742e                      JZ 0x0052ab1c
0052aaee  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0052aaf4  8d7748                    LEA ESI,[EDI + 0x48]
0052aaf7  7523                      JNZ 0x0052ab1c
0052aaf9  eb03                      JMP 0x0052aafe
0052aafb  8d7748                    LEA ESI,[EDI + 0x48]
0052aafe  6a01                      PUSH 0x1
0052ab00  68e4dcb100                PUSH 0xb1dce4
0052ab05  8bce                      MOV ECX,ESI
0052ab07  e8c4faedff                CALL 0x0040a5d0
0052ab0c  84c0                      TEST AL,AL
0052ab0e  740c                      JZ 0x0052ab1c
0052ab10  8d4e30                    LEA ECX,[ESI + 0x30]
0052ab13  e898f6edff                CALL 0x0040a1b0
0052ab18  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0052ab1c  817f2865030000            CMP dword ptr [EDI + 0x28],0x365
0052ab23  f30f1005a4a7ba00          MOVSS XMM0,dword ptr [0x00baa7a4]
0052ab2b  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0052ab30  750d                      JNZ 0x0052ab3f
0052ab32  f30f100578a7ba00          MOVSS XMM0,dword ptr [0x00baa778]
0052ab3a  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0052ab3f  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052ab46  0f8461010000              JZ 0x0052acad
0052ab4c  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0052ab54  6a01                      PUSH 0x1
0052ab56  6a00                      PUSH 0x0
0052ab58  51                        PUSH ECX
0052ab59  f30f110424                MOVSS dword ptr [ESP],XMM0
0052ab5e  8d8f14040000              LEA ECX,[EDI + 0x414]
0052ab64  6840b6c700                PUSH 0xc7b640
0052ab69  e852882b00                CALL 0x007e33c0
0052ab6e  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0052ab74  898734030000              MOV dword ptr [EDI + 0x334],EAX
0052ab7a  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0052ab80  898738030000              MOV dword ptr [EDI + 0x338],EAX
0052ab86  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0052ab8d  7c23                      JL 0x0052abb2
0052ab8f  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0052ab97  8d45b0                    LEA EAX,[EBP + -0x50]
0052ab9a  50                        PUSH EAX
0052ab9b  8bcf                      MOV ECX,EDI
0052ab9d  e82ed71a00                CALL 0x006d82d0
0052aba2  6840b6c700                PUSH 0xc7b640
0052aba7  8bc8                      MOV ECX,EAX
0052aba9  e8525a4e00                CALL 0x00a10600
0052abae  84c0                      TEST AL,AL
0052abb0  742a                      JZ 0x0052abdc
0052abb2  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052abba  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052abc2  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0052abca  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0052abd2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052abdc  0f57ed                    XORPS XMM5,XMM5
0052abdf  0f2faf60030000            COMISS XMM5,dword ptr [EDI + 0x360]
0052abe6  0f97c0                    SETA AL
0052abe9  888748010000              MOV byte ptr [EDI + 0x148],AL
0052abef  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052abf7  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
0052abff  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052ac07  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0052ac0e  0f84f3010000              JZ 0x0052ae07
0052ac14  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052ac17  3dfa000000                CMP EAX,0xfa
0052ac1c  0f85a9010000              JNZ 0x0052adcb
0052ac22  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0052ac28  2500000001                AND EAX,0x1000000
0052ac2d  83c800                    OR EAX,0x0
0052ac30  0f85d1010000              JNZ 0x0052ae07
0052ac36  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
0052ac3d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052ac43  8db73c030000              LEA ESI,[EDI + 0x33c]
0052ac49  50                        PUSH EAX
0052ac4a  50                        PUSH EAX
0052ac4b  6a04                      PUSH 0x4
0052ac4d  83ec10                    SUB ESP,0x10
0052ac50  8bc4                      MOV EAX,ESP
0052ac52  57                        PUSH EDI
0052ac53  6a01                      PUSH 0x1
0052ac55  83ec08                    SUB ESP,0x8
0052ac58  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0052ac5b  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
0052ac63  c7042400002042            MOV dword ptr [ESP],0x42200000
0052ac6a  56                        PUSH ESI
0052ac6b  e830461d00                CALL 0x006ff2a0
0052ac70  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0052ac78  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052ac7e  6a00                      PUSH 0x0
0052ac80  56                        PUSH ESI
0052ac81  e80a851d00                CALL 0x00703190
0052ac86  e8d5421c00                CALL 0x006eef60
0052ac8b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052ac91  50                        PUSH EAX
0052ac92  6a00                      PUSH 0x0
0052ac94  6a00                      PUSH 0x0
0052ac96  6840b6c700                PUSH 0xc7b640
0052ac9b  56                        PUSH ESI
0052ac9c  6a01                      PUSH 0x1
0052ac9e  68e8030000                PUSH 0x3e8
0052aca3  e878deefff                CALL 0x00428b20
0052aca8  e95a010000                JMP 0x0052ae07
0052acad  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0052acb5  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0052acbd  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0052acc5  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0052accd  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
0052acd2  f30f59c9                  MULSS XMM1,XMM1
0052acd6  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0052acdb  f30f59c0                  MULSS XMM0,XMM0
0052acdf  f30f58c1                  ADDSS XMM0,XMM1
0052ace3  e868adf0ff                CALL 0x00435a50
0052ace8  f30f100d48a8ba00          MOVSS XMM1,dword ptr [0x00baa848]
0052acf0  0f2fc8                    COMISS XMM1,XMM0
0052acf3  7737                      JA 0x0052ad2c
0052acf5  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0052acfd  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0052ad05  f30f59c0                  MULSS XMM0,XMM0
0052ad09  f30f59c9                  MULSS XMM1,XMM1
0052ad0d  f30f58c1                  ADDSS XMM0,XMM1
0052ad11  e83aadf0ff                CALL 0x00435a50
0052ad16  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
0052ad1e  0f2fc8                    COMISS XMM1,XMM0
0052ad21  7633                      JBE 0x0052ad56
0052ad23  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0052ad2a  7d2a                      JGE 0x0052ad56
0052ad2c  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052ad34  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052ad3c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0052ad44  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0052ad4c  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052ad56  8d45a8                    LEA EAX,[EBP + -0x58]
0052ad59  50                        PUSH EAX
0052ad5a  8d4da0                    LEA ECX,[EBP + -0x60]
0052ad5d  e8ce524e00                CALL 0x00a10030
0052ad62  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0052ad6a  0f57ed                    XORPS XMM5,XMM5
0052ad6d  f30f1055b4                MOVSS XMM2,dword ptr [EBP + -0x4c]
0052ad72  0f2edd                    UCOMISS XMM3,XMM5
0052ad75  0f28e2                    MOVAPS XMM4,XMM2
0052ad78  f30f595004                MULSS XMM2,dword ptr [EAX + 0x4]
0052ad7d  f30f5920                  MULSS XMM4,dword ptr [EAX]
0052ad81  9f                        LAHF
0052ad82  f6c444                    TEST AH,0x44
0052ad85  0f8b54feffff              JNP 0x0052abdf
0052ad8b  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0052ad93  0f28c1                    MOVAPS XMM0,XMM1
0052ad96  f30f59ca                  MULSS XMM1,XMM2
0052ad9a  f30f59c4                  MULSS XMM0,XMM4
0052ad9e  f30f5ecb                  DIVSS XMM1,XMM3
0052ada2  f30f5ec3                  DIVSS XMM0,XMM3
0052ada6  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0052adae  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0052adb6  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0052adbe  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0052adc6  e914feffff                JMP 0x0052abdf
0052adcb  3d65030000                CMP EAX,0x365
0052add0  7535                      JNZ 0x0052ae07
0052add2  6a00                      PUSH 0x0
0052add4  6a03                      PUSH 0x3
0052add6  ba04000000                MOV EDX,0x4
0052addb  b9c08e5200                MOV ECX,0x528ec0
0052ade0  e81b010e00                CALL 0x0060af00
0052ade5  8b8f3c030000              MOV ECX,dword ptr [EDI + 0x33c]
0052adeb  83c408                    ADD ESP,0x8
0052adee  8b10                      MOV EDX,dword ptr [EAX]
0052adf0  89883c030000              MOV dword ptr [EAX + 0x33c],ECX
0052adf6  8b8f40030000              MOV ECX,dword ptr [EDI + 0x340]
0052adfc  898840030000              MOV dword ptr [EAX + 0x340],ECX
0052ae02  8bc8                      MOV ECX,EAX
0052ae04  ff520c                    CALL dword ptr [EDX + 0xc]
0052ae07  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0052ae0a  64890d00000000            MOV dword ptr FS:[0x0],ECX
0052ae11  59                        POP ECX
0052ae12  5f                        POP EDI
0052ae13  5e                        POP ESI
0052ae14  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0052ae17  33cd                      XOR ECX,EBP
0052ae19  e80d435c00                CALL 0x00aef12b
0052ae1e  8be5                      MOV ESP,EBP
0052ae20  5d                        POP EBP
0052ae21  8be3                      MOV ESP,EBX
0052ae23  5b                        POP EBX
0052ae24  c3                        RET
