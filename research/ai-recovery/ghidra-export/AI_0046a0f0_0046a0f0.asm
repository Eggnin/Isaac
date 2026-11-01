; J460 NPC AI 0x0046a0f0 AI_0046a0f0
; types=19,89,239
; identities=19.0.0,19.1.0,19.2.0,19.3.0,239.0.0,239.100.0,239.101.0,89.0.0
; entry=0046a0f0
0046a0f0  53                        PUSH EBX
0046a0f1  8bdc                      MOV EBX,ESP
0046a0f3  83ec08                    SUB ESP,0x8
0046a0f6  83e4f8                    AND ESP,0xfffffff8
0046a0f9  83c404                    ADD ESP,0x4
0046a0fc  55                        PUSH EBP
0046a0fd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0046a100  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0046a104  8bec                      MOV EBP,ESP
0046a106  6aff                      PUSH -0x1
0046a108  680a28af00                PUSH 0xaf280a
0046a10d  64a100000000              MOV EAX,FS:[0x0]
0046a113  50                        PUSH EAX
0046a114  53                        PUSH EBX
0046a115  81ec10010000              SUB ESP,0x110
0046a11b  a1b493bf00                MOV EAX,[0x00bf93b4]
0046a120  33c5                      XOR EAX,EBP
0046a122  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0046a125  56                        PUSH ESI
0046a126  57                        PUSH EDI
0046a127  50                        PUSH EAX
0046a128  8d45f4                    LEA EAX,[EBP + -0xc]
0046a12b  64a300000000              MOV FS:[0x0],EAX
0046a131  8bf9                      MOV EDI,ECX
0046a133  89bd14ffffff              MOV dword ptr [EBP + 0xffffff14],EDI
0046a139  837f2813                  CMP dword ptr [EDI + 0x28],0x13
0046a13d  7517                      JNZ 0x0046a156
0046a13f  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0046a142  83f802                    CMP EAX,0x2
0046a145  7405                      JZ 0x0046a14c
0046a147  83f803                    CMP EAX,0x3
0046a14a  750a                      JNZ 0x0046a156
0046a14c  e87f011300                CALL 0x0059a2d0
0046a151  e9231f0000                JMP 0x0046c079
0046a156  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0046a15d  743e                      JZ 0x0046a19d
0046a15f  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0046a166  7435                      JZ 0x0046a19d
0046a168  e823e82300                CALL 0x006a8990
0046a16d  8bd0                      MOV EDX,EAX
0046a16f  85d2                      TEST EDX,EDX
0046a171  742a                      JZ 0x0046a19d
0046a173  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046a179  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
0046a180  7c06                      JL 0x0046a188
0046a182  837a2801                  CMP dword ptr [EDX + 0x28],0x1
0046a186  740d                      JZ 0x0046a195
0046a188  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
0046a18b  83e80a                    SUB EAX,0xa
0046a18e  3ddd030000                CMP EAX,0x3dd
0046a193  7708                      JA 0x0046a19d
0046a195  52                        PUSH EDX
0046a196  8bcf                      MOV ECX,EDI
0046a198  e813e72600                CALL 0x006d88b0
0046a19d  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0046a1a4  0f84b3060000              JZ 0x0046a85d
0046a1aa  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0046a1ad  83f813                    CMP EAX,0x13
0046a1b0  7566                      JNZ 0x0046a218
0046a1b2  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0046a1b9  0f8507050000              JNZ 0x0046a6c6
0046a1bf  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0046a1c5  85c0                      TEST EAX,EAX
0046a1c7  0f84f9040000              JZ 0x0046a6c6
0046a1cd  f30f108880030000          MOVSS XMM1,dword ptr [EAX + 0x380]
0046a1d5  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0046a1dc  0f86e4040000              JBE 0x0046a6c6
0046a1e2  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0046a1e6  0f84da040000              JZ 0x0046a6c6
0046a1ec  f30f580da0a8ba00          ADDSS XMM1,dword ptr [0x00baa8a0]
0046a1f4  f30f108084030000          MOVSS XMM0,dword ptr [EAX + 0x384]
0046a1fc  0f2fc1                    COMISS XMM0,XMM1
0046a1ff  7706                      JA 0x0046a207
0046a201  f30f10c0                  MOVSS XMM0,XMM0
0046a205  eb04                      JMP 0x0046a20b
0046a207  f30f10c1                  MOVSS XMM0,XMM1
0046a20b  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0046a213  e9ae040000                JMP 0x0046a6c6
0046a218  3def000000                CMP EAX,0xef
0046a21d  0f85a3040000              JNZ 0x0046a6c6
0046a223  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
0046a22a  0f8596040000              JNZ 0x0046a6c6
0046a230  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0046a237  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0046a23e  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0046a245  8d873c030000              LEA EAX,[EDI + 0x33c]
0046a24b  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0046a252  50                        PUSH EAX
0046a253  6a00                      PUSH 0x0
0046a255  8d4de0                    LEA ECX,[EBP + -0x20]
0046a258  e8d351fcff                CALL 0x0042f430
0046a25d  8b75e4                    MOV ESI,dword ptr [EBP + -0x1c]
0046a260  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
0046a26a  89bd1cffffff              MOV dword ptr [EBP + 0xffffff1c],EDI
0046a270  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0046a276  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
0046a279  85c9                      TEST ECX,ECX
0046a27b  742d                      JZ 0x0046a2aa
0046a27d  6a00                      PUSH 0x0
0046a27f  68acd6c500                PUSH 0xc5d6ac
0046a284  68dcd5c500                PUSH 0xc5d5dc
0046a289  6a00                      PUSH 0x0
0046a28b  51                        PUSH ECX
0046a28c  e820666800                CALL 0x00af08b1
0046a291  83c414                    ADD ESP,0x14
0046a294  85c0                      TEST EAX,EAX
0046a296  750f                      JNZ 0x0046a2a7
0046a298  688cdcb100                PUSH 0xb1dc8c
0046a29d  6a10                      PUSH 0x10
0046a29f  e81c705a00                CALL 0x00a112c0
0046a2a4  83c408                    ADD ESP,0x8
0046a2a7  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
0046a2aa  8bbfc0030000              MOV EDI,dword ptr [EDI + 0x3c0]
0046a2b0  85ff                      TEST EDI,EDI
0046a2b2  0f84b2000000              JZ 0x0046a36a
0046a2b8  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0046a2be  3bf0                      CMP ESI,EAX
0046a2c0  7412                      JZ 0x0046a2d4
0046a2c2  8b01                      MOV EAX,dword ptr [ECX]
0046a2c4  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
0046a2c7  8906                      MOV dword ptr [ESI],EAX
0046a2c9  894e04                    MOV dword ptr [ESI + 0x4],ECX
0046a2cc  83c608                    ADD ESI,0x8
0046a2cf  8975e4                    MOV dword ptr [EBP + -0x1c],ESI
0046a2d2  eb0d                      JMP 0x0046a2e1
0046a2d4  51                        PUSH ECX
0046a2d5  56                        PUSH ESI
0046a2d6  8d4de0                    LEA ECX,[EBP + -0x20]
0046a2d9  e85251fcff                CALL 0x0042f430
0046a2de  8b75e4                    MOV ESI,dword ptr [EBP + -0x1c]
0046a2e1  8b07                      MOV EAX,dword ptr [EDI]
0046a2e3  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
0046a2e9  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
0046a2f3  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0046a2fb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046a303  51                        PUSH ECX
0046a304  8bcf                      MOV ECX,EDI
0046a306  c785e4feffff00000000      MOV dword ptr [EBP + 0xfffffee4],0x0
0046a310  c785e8feffff00000000      MOV dword ptr [EBP + 0xfffffee8],0x0
0046a31a  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
0046a324  c785f0feffff00000000      MOV dword ptr [EBP + 0xfffffef0],0x0
0046a32e  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
0046a336  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0046a33e  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
0046a346  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0046a34e  c78504ffffff00000000      MOV dword ptr [EBP + 0xffffff04],0x0
0046a358  c78508ffffff00000000      MOV dword ptr [EBP + 0xffffff08],0x0
0046a362  ff5024                    CALL dword ptr [EAX + 0x24]
0046a365  e906ffffff                JMP 0x0046a270
0046a36a  8bbd14ffffff              MOV EDI,dword ptr [EBP + 0xffffff14]
0046a370  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0046a376  85c0                      TEST EAX,EAX
0046a378  742a                      JZ 0x0046a3a4
0046a37a  6a00                      PUSH 0x0
0046a37c  68acd6c500                PUSH 0xc5d6ac
0046a381  68dcd5c500                PUSH 0xc5d5dc
0046a386  6a00                      PUSH 0x0
0046a388  50                        PUSH EAX
0046a389  e823656800                CALL 0x00af08b1
0046a38e  83c414                    ADD ESP,0x14
0046a391  85c0                      TEST EAX,EAX
0046a393  750f                      JNZ 0x0046a3a4
0046a395  6850d4b100                PUSH 0xb1d450
0046a39a  6a10                      PUSH 0x10
0046a39c  e81f6f5a00                CALL 0x00a112c0
0046a3a1  83c408                    ADD ESP,0x8
0046a3a4  8bbfbc030000              MOV EDI,dword ptr [EDI + 0x3bc]
0046a3aa  85ff                      TEST EDI,EDI
0046a3ac  0f84b3000000              JZ 0x0046a465
0046a3b2  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0046a3b8  3b75e8                    CMP ESI,dword ptr [EBP + -0x18]
0046a3bb  7412                      JZ 0x0046a3cf
0046a3bd  8b01                      MOV EAX,dword ptr [ECX]
0046a3bf  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
0046a3c2  8906                      MOV dword ptr [ESI],EAX
0046a3c4  894e04                    MOV dword ptr [ESI + 0x4],ECX
0046a3c7  83c608                    ADD ESI,0x8
0046a3ca  8975e4                    MOV dword ptr [EBP + -0x1c],ESI
0046a3cd  eb0d                      JMP 0x0046a3dc
0046a3cf  51                        PUSH ECX
0046a3d0  56                        PUSH ESI
0046a3d1  8d4de0                    LEA ECX,[EBP + -0x20]
0046a3d4  e85750fcff                CALL 0x0042f430
0046a3d9  8b75e4                    MOV ESI,dword ptr [EBP + -0x1c]
0046a3dc  8b07                      MOV EAX,dword ptr [EDI]
0046a3de  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
0046a3e4  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
0046a3ee  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0046a3f6  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046a3fe  51                        PUSH ECX
0046a3ff  8bcf                      MOV ECX,EDI
0046a401  c785e4feffff00000000      MOV dword ptr [EBP + 0xfffffee4],0x0
0046a40b  c785e8feffff00000000      MOV dword ptr [EBP + 0xfffffee8],0x0
0046a415  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
0046a41f  c785f0feffff00000000      MOV dword ptr [EBP + 0xfffffef0],0x0
0046a429  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
0046a431  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0046a439  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
0046a441  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0046a449  c78504ffffff00000000      MOV dword ptr [EBP + 0xffffff04],0x0
0046a453  c78508ffffff00000000      MOV dword ptr [EBP + 0xffffff08],0x0
0046a45d  ff5024                    CALL dword ptr [EAX + 0x24]
0046a460  e90bffffff                JMP 0x0046a370
0046a465  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0046a468  2bf1                      SUB ESI,ECX
0046a46a  8bbd14ffffff              MOV EDI,dword ptr [EBP + 0xffffff14]
0046a470  c1fe03                    SAR ESI,0x3
0046a473  8d56ff                    LEA EDX,[ESI + -0x1]
0046a476  89951cffffff              MOV dword ptr [EBP + 0xffffff1c],EDX
0046a47c  85d2                      TEST EDX,EDX
0046a47e  7e7a                      JLE 0x0046a4fa
0046a480  8d4201                    LEA EAX,[EDX + 0x1]
0046a483  89852cffffff              MOV dword ptr [EBP + 0xffffff2c],EAX
0046a489  0f1f8000000000            NOP dword ptr [EAX]
0046a490  85c0                      TEST EAX,EAX
0046a492  7418                      JZ 0x0046a4ac
0046a494  e8c74a2800                CALL 0x006eef60
0046a499  33d2                      XOR EDX,EDX
0046a49b  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0046a49e  f7b52cffffff              DIV dword ptr [EBP + 0xffffff2c]
0046a4a4  8bc2                      MOV EAX,EDX
0046a4a6  8b951cffffff              MOV EDX,dword ptr [EBP + 0xffffff1c]
0046a4ac  f30f100cd1                MOVSS XMM1,dword ptr [ECX + EDX*0x8]
0046a4b1  f30f1044d104              MOVSS XMM0,dword ptr [ECX + EDX*0x8 + 0x4]
0046a4b7  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
0046a4bd  8b04c1                    MOV EAX,dword ptr [ECX + EAX*0x8]
0046a4c0  8904d1                    MOV dword ptr [ECX + EDX*0x8],EAX
0046a4c3  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
0046a4c9  8b44c104                  MOV EAX,dword ptr [ECX + EAX*0x8 + 0x4]
0046a4cd  8944d104                  MOV dword ptr [ECX + EDX*0x8 + 0x4],EAX
0046a4d1  4a                        DEC EDX
0046a4d2  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
0046a4d8  89951cffffff              MOV dword ptr [EBP + 0xffffff1c],EDX
0046a4de  f30f110cc1                MOVSS dword ptr [ECX + EAX*0x8],XMM1
0046a4e3  f30f1144c104              MOVSS dword ptr [ECX + EAX*0x8 + 0x4],XMM0
0046a4e9  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
0046a4ef  48                        DEC EAX
0046a4f0  89852cffffff              MOV dword ptr [EBP + 0xffffff2c],EAX
0046a4f6  85d2                      TEST EDX,EDX
0046a4f8  7f96                      JG 0x0046a490
0046a4fa  e8614a2800                CALL 0x006eef60
0046a4ff  83e003                    AND EAX,0x3
0046a502  8d5002                    LEA EDX,[EAX + 0x2]
0046a505  33c0                      XOR EAX,EAX
0046a507  899524ffffff              MOV dword ptr [EBP + 0xffffff24],EDX
0046a50d  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
0046a513  85f6                      TEST ESI,ESI
0046a515  0f8455010000              JZ 0x0046a670
0046a51b  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0046a51e  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0046a526  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
0046a52e  898d2cffffff              MOV dword ptr [EBP + 0xffffff2c],ECX
0046a534  c78514ffffff03000000      MOV dword ptr [EBP + 0xffffff14],0x3
0046a53e  6690                      NOP
0046a540  3bc2                      CMP EAX,EDX
0046a542  0f8328010000              JNC 0x0046a670
0046a548  f30f1001                  MOVSS XMM0,dword ptr [ECX]
0046a54c  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
0046a551  f30f5cc2                  SUBSS XMM0,XMM2
0046a555  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
0046a55d  a17816c700                MOV EAX,[0x00c71678]
0046a562  f30f5ec2                  DIVSS XMM0,XMM2
0046a566  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
0046a56c  f30f5eca                  DIVSS XMM1,XMM2
0046a570  f30f58c3                  ADDSS XMM0,XMM3
0046a574  f30f58cb                  ADDSS XMM1,XMM3
0046a578  f30f2cc8                  CVTTSS2SI ECX,XMM0
0046a57c  f30f2cc1                  CVTTSS2SI EAX,XMM1
0046a580  85c9                      TEST ECX,ECX
0046a582  7816                      JS 0x0046a59a
0046a584  3b4a0c                    CMP ECX,dword ptr [EDX + 0xc]
0046a587  7d11                      JGE 0x0046a59a
0046a589  85c0                      TEST EAX,EAX
0046a58b  780d                      JS 0x0046a59a
0046a58d  3b4210                    CMP EAX,dword ptr [EDX + 0x10]
0046a590  7d08                      JGE 0x0046a59a
0046a592  0faf420c                  IMUL EAX,dword ptr [EDX + 0xc]
0046a596  03c1                      ADD EAX,ECX
0046a598  eb03                      JMP 0x0046a59d
0046a59a  83c8ff                    OR EAX,0xffffffff
0046a59d  50                        PUSH EAX
0046a59e  8bca                      MOV ECX,EDX
0046a5a0  e85b623800                CALL 0x007f0800
0046a5a5  85c0                      TEST EAX,EAX
0046a5a7  0f8589000000              JNZ 0x0046a636
0046a5ad  e8ae492800                CALL 0x006eef60
0046a5b2  33d2                      XOR EDX,EDX
0046a5b4  f7b514ffffff              DIV dword ptr [EBP + 0xffffff14]
0046a5ba  33c0                      XOR EAX,EAX
0046a5bc  2bd0                      SUB EDX,EAX
0046a5be  743e                      JZ 0x0046a5fe
0046a5c0  83ea01                    SUB EDX,0x1
0046a5c3  741f                      JZ 0x0046a5e4
0046a5c5  83ea01                    SUB EDX,0x1
0046a5c8  7557                      JNZ 0x0046a621
0046a5ca  e891492800                CALL 0x006eef60
0046a5cf  50                        PUSH EAX
0046a5d0  6a00                      PUSH 0x0
0046a5d2  57                        PUSH EDI
0046a5d3  6840b6c700                PUSH 0xc7b640
0046a5d8  ffb52cffffff              PUSH dword ptr [EBP + 0xffffff2c]
0046a5de  6a00                      PUSH 0x0
0046a5e0  6a15                      PUSH 0x15
0046a5e2  eb32                      JMP 0x0046a616
0046a5e4  e877492800                CALL 0x006eef60
0046a5e9  50                        PUSH EAX
0046a5ea  6a00                      PUSH 0x0
0046a5ec  57                        PUSH EDI
0046a5ed  6840b6c700                PUSH 0xc7b640
0046a5f2  ffb52cffffff              PUSH dword ptr [EBP + 0xffffff2c]
0046a5f8  6a00                      PUSH 0x0
0046a5fa  6a1f                      PUSH 0x1f
0046a5fc  eb18                      JMP 0x0046a616
0046a5fe  e85d492800                CALL 0x006eef60
0046a603  50                        PUSH EAX
0046a604  6a00                      PUSH 0x0
0046a606  57                        PUSH EDI
0046a607  6840b6c700                PUSH 0xc7b640
0046a60c  ffb52cffffff              PUSH dword ptr [EBP + 0xffffff2c]
0046a612  6a00                      PUSH 0x0
0046a614  6a17                      PUSH 0x17
0046a616  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046a61c  e8ffe4fbff                CALL 0x00428b20
0046a621  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0046a628  740c                      JZ 0x0046a636
0046a62a  85c0                      TEST EAX,EAX
0046a62c  7408                      JZ 0x0046a636
0046a62e  50                        PUSH EAX
0046a62f  8bcf                      MOV ECX,EDI
0046a631  e87ae22600                CALL 0x006d88b0
0046a636  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
0046a63c  8b8d2cffffff              MOV ECX,dword ptr [EBP + 0xffffff2c]
0046a642  40                        INC EAX
0046a643  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0046a64b  83c108                    ADD ECX,0x8
0046a64e  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
0046a656  8b9524ffffff              MOV EDX,dword ptr [EBP + 0xffffff24]
0046a65c  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
0046a662  898d2cffffff              MOV dword ptr [EBP + 0xffffff2c],ECX
0046a668  3bc6                      CMP EAX,ESI
0046a66a  0f82d0feffff              JC 0x0046a540
0046a670  81a768010000fffffbff      AND dword ptr [EDI + 0x168],0xfffbffff
0046a67a  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0046a680  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0046a687  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0046a68a  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0046a690  85c9                      TEST ECX,ECX
0046a692  7432                      JZ 0x0046a6c6
0046a694  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0046a697  8bc1                      MOV EAX,ECX
0046a699  2bd1                      SUB EDX,ECX
0046a69b  83e2f8                    AND EDX,0xfffffff8
0046a69e  81fa00100000              CMP EDX,0x1000
0046a6a4  7216                      JC 0x0046a6bc
0046a6a6  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0046a6a9  83c223                    ADD EDX,0x23
0046a6ac  2bc1                      SUB EAX,ECX
0046a6ae  83c0fc                    ADD EAX,-0x4
0046a6b1  83f81f                    CMP EAX,0x1f
0046a6b4  7606                      JBE 0x0046a6bc
0046a6b6  ff159488b100              CALL dword ptr [0x00b18894]
0046a6bc  52                        PUSH EDX
0046a6bd  51                        PUSH ECX
0046a6be  e8994a6800                CALL 0x00aef15c
0046a6c3  83c408                    ADD ESP,0x8
0046a6c6  837f2813                  CMP dword ptr [EDI + 0x28],0x13
0046a6ca  0f853b010000              JNZ 0x0046a80b
0046a6d0  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0046a6d4  753f                      JNZ 0x0046a715
0046a6d6  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0046a6dd  7536                      JNZ 0x0046a715
0046a6df  a144e8c700                MOV EAX,[0x00c7e844]
0046a6e4  51                        PUSH ECX
0046a6e5  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046a6ec  40                        INC EAX
0046a6ed  a344e8c700                MOV [0x00c7e844],EAX
0046a6f2  6a00                      PUSH 0x0
0046a6f4  6a02                      PUSH 0x2
0046a6f6  51                        PUSH ECX
0046a6f7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046a6fe  8bcf                      MOV ECX,EDI
0046a700  a801                      TEST AL,0x1
0046a702  7507                      JNZ 0x0046a70b
0046a704  68e7030000                PUSH 0x3e7
0046a709  eb05                      JMP 0x0046a710
0046a70b  68e8030000                PUSH 0x3e8
0046a710  e88bc42600                CALL 0x006d6ba0
0046a715  837f2813                  CMP dword ptr [EDI + 0x28],0x13
0046a719  0f85ec000000              JNZ 0x0046a80b
0046a71f  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046a723  0f85e2000000              JNZ 0x0046a80b
0046a729  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0046a72c  8db73c030000              LEA ESI,[EDI + 0x33c]
0046a732  83f801                    CMP EAX,0x1
0046a735  0f858d000000              JNZ 0x0046a7c8
0046a73b  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0046a73f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046a745  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0046a74d  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0046a752  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
0046a75a  ffb524ffffff              PUSH dword ptr [EBP + 0xffffff24]
0046a760  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0046a766  ffb520ffffff              PUSH dword ptr [EBP + 0xffffff20]
0046a76c  e80f603800                CALL 0x007f0780
0046a771  85c0                      TEST EAX,EAX
0046a773  751e                      JNZ 0x0046a793
0046a775  e8e6472800                CALL 0x006eef60
0046a77a  50                        PUSH EAX
0046a77b  6a00                      PUSH 0x0
0046a77d  57                        PUSH EDI
0046a77e  6840b6c700                PUSH 0xc7b640
0046a783  56                        PUSH ESI
0046a784  6a00                      PUSH 0x0
0046a786  6a17                      PUSH 0x17
0046a788  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046a78e  e88de3fbff                CALL 0x00428b20
0046a793  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0046a79a  756f                      JNZ 0x0046a80b
0046a79c  a140e8c700                MOV EAX,[0x00c7e840]
0046a7a1  51                        PUSH ECX
0046a7a2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046a7a9  40                        INC EAX
0046a7aa  a340e8c700                MOV [0x00c7e840],EAX
0046a7af  6a00                      PUSH 0x0
0046a7b1  6a02                      PUSH 0x2
0046a7b3  51                        PUSH ECX
0046a7b4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046a7bb  8bcf                      MOV ECX,EDI
0046a7bd  a801                      TEST AL,0x1
0046a7bf  7540                      JNZ 0x0046a801
0046a7c1  68eb030000                PUSH 0x3eb
0046a7c6  eb3e                      JMP 0x0046a806
0046a7c8  83e801                    SUB EAX,0x1
0046a7cb  74a8                      JZ 0x0046a775
0046a7cd  83e801                    SUB EAX,0x1
0046a7d0  741a                      JZ 0x0046a7ec
0046a7d2  83e801                    SUB EAX,0x1
0046a7d5  75bc                      JNZ 0x0046a793
0046a7d7  e884472800                CALL 0x006eef60
0046a7dc  50                        PUSH EAX
0046a7dd  6a00                      PUSH 0x0
0046a7df  57                        PUSH EDI
0046a7e0  6840b6c700                PUSH 0xc7b640
0046a7e5  56                        PUSH ESI
0046a7e6  6a14                      PUSH 0x14
0046a7e8  6a05                      PUSH 0x5
0046a7ea  eb9c                      JMP 0x0046a788
0046a7ec  e86f472800                CALL 0x006eef60
0046a7f1  50                        PUSH EAX
0046a7f2  6a00                      PUSH 0x0
0046a7f4  57                        PUSH EDI
0046a7f5  6840b6c700                PUSH 0xc7b640
0046a7fa  56                        PUSH ESI
0046a7fb  6a00                      PUSH 0x0
0046a7fd  6a19                      PUSH 0x19
0046a7ff  eb87                      JMP 0x0046a788
0046a801  68ec030000                PUSH 0x3ec
0046a806  e895c32600                CALL 0x006d6ba0
0046a80b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0046a812  0f8461180000              JZ 0x0046c079
0046a818  817f28ef000000            CMP dword ptr [EDI + 0x28],0xef
0046a81f  0f8454180000              JZ 0x0046c079
0046a825  a17816c700                MOV EAX,[0x00c71678]
0046a82a  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0046a830  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0046a837  7c06                      JL 0x0046a83f
0046a839  83792801                  CMP dword ptr [ECX + 0x28],0x1
0046a83d  7411                      JZ 0x0046a850
0046a83f  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0046a842  83e80a                    SUB EAX,0xa
0046a845  3ddd030000                CMP EAX,0x3dd
0046a84a  0f8729180000              JA 0x0046c079
0046a850  51                        PUSH ECX
0046a851  8bcf                      MOV ECX,EDI
0046a853  e858e02600                CALL 0x006d88b0
0046a858  e91c180000                JMP 0x0046c079
0046a85d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0046a863  85c0                      TEST EAX,EAX
0046a865  0f8580030000              JNZ 0x0046abeb
0046a86b  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0046a871  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
0046a877  8b5728                    MOV EDX,dword ptr [EDI + 0x28]
0046a87a  898710040000              MOV dword ptr [EDI + 0x410],EAX
0046a880  83fa13                    CMP EDX,0x13
0046a883  7506                      JNZ 0x0046a88b
0046a885  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046a889  740a                      JZ 0x0046a895
0046a88b  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
0046a895  a17816c700                MOV EAX,[0x00c71678]
0046a89a  6a00                      PUSH 0x0
0046a89c  6a00                      PUSH 0x0
0046a89e  6aff                      PUSH -0x1
0046a8a0  6aff                      PUSH -0x1
0046a8a2  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0046a8ac  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0046a8b2  8d45dc                    LEA EAX,[EBP + -0x24]
0046a8b5  52                        PUSH EDX
0046a8b6  81c118120000              ADD ECX,0x1218
0046a8bc  50                        PUSH EAX
0046a8bd  e89e06fbff                CALL 0x0041af60
0046a8c2  8db7bc030000              LEA ESI,[EDI + 0x3bc]
0046a8c8  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0046a8cf  8b06                      MOV EAX,dword ptr [ESI]
0046a8d1  85c0                      TEST EAX,EAX
0046a8d3  0f8521010000              JNZ 0x0046a9fa
0046a8d9  3987540f0000              CMP dword ptr [EDI + 0xf54],EAX
0046a8df  0f853f020000              JNZ 0x0046ab24
0046a8e5  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
0046a8e8  83c0ff                    ADD EAX,-0x1
0046a8eb  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
0046a8f1  0f882d020000              JS 0x0046ab24
0046a8f7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0046a900  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
0046a903  6a00                      PUSH 0x0
0046a905  68acd6c500                PUSH 0xc5d6ac
0046a90a  68dcd5c500                PUSH 0xc5d5dc
0046a90f  6a00                      PUSH 0x0
0046a911  ff3481                    PUSH dword ptr [ECX + EAX*0x4]
0046a914  e8985f6800                CALL 0x00af08b1
0046a919  8bf0                      MOV ESI,EAX
0046a91b  83c414                    ADD ESP,0x14
0046a91e  85f6                      TEST ESI,ESI
0046a920  0f84ab000000              JZ 0x0046a9d1
0046a926  3bf7                      CMP ESI,EDI
0046a928  0f84a3000000              JZ 0x0046a9d1
0046a92e  39bebc030000              CMP dword ptr [ESI + 0x3bc],EDI
0046a934  0f8497000000              JZ 0x0046a9d1
0046a93a  83bec003000000            CMP dword ptr [ESI + 0x3c0],0x0
0046a941  0f858a000000              JNZ 0x0046a9d1
0046a947  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0046a94f  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0046a957  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0046a95f  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0046a967  f30f59c0                  MULSS XMM0,XMM0
0046a96b  f30f59c9                  MULSS XMM1,XMM1
0046a96f  f30f58c1                  ADDSS XMM0,XMM1
0046a973  e8d8b0fcff                CALL 0x00435a50
0046a978  f30f100d08a9ba00          MOVSS XMM1,dword ptr [0x00baa908]
0046a980  0f2fc8                    COMISS XMM1,XMM0
0046a983  764c                      JBE 0x0046a9d1
0046a985  8bc6                      MOV EAX,ESI
0046a987  3bc7                      CMP EAX,EDI
0046a989  7446                      JZ 0x0046a9d1
0046a98b  8b80bc030000              MOV EAX,dword ptr [EAX + 0x3bc]
0046a991  85c0                      TEST EAX,EAX
0046a993  7404                      JZ 0x0046a999
0046a995  3bc6                      CMP EAX,ESI
0046a997  75ee                      JNZ 0x0046a987
0046a999  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0046a99f  8d87bc030000              LEA EAX,[EDI + 0x3bc]
0046a9a5  85c9                      TEST ECX,ECX
0046a9a7  741e                      JZ 0x0046a9c7
0046a9a9  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
0046a9af  81c1cc030000              ADD ECX,0x3cc
0046a9b5  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
0046a9bb  50                        PUSH EAX
0046a9bc  e84f480600                CALL 0x004cf210
0046a9c1  8d87bc030000              LEA EAX,[EDI + 0x3bc]
0046a9c7  50                        PUSH EAX
0046a9c8  8bce                      MOV ECX,ESI
0046a9ca  8930                      MOV dword ptr [EAX],ESI
0046a9cc  e81f330600                CALL 0x004cdcf0
0046a9d1  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
0046a9d7  83e801                    SUB EAX,0x1
0046a9da  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
0046a9e0  0f891affffff              JNS 0x0046a900
0046a9e6  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0046a9ec  8db7bc030000              LEA ESI,[EDI + 0x3bc]
0046a9f2  85c0                      TEST EAX,EAX
0046a9f4  0f842a010000              JZ 0x0046ab24
0046a9fa  8b88c0030000              MOV ECX,dword ptr [EAX + 0x3c0]
0046aa00  05c0030000                ADD EAX,0x3c0
0046aa05  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
0046aa0b  85c9                      TEST ECX,ECX
0046aa0d  741e                      JZ 0x0046aa2d
0046aa0f  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
0046aa15  81c1cc030000              ADD ECX,0x3cc
0046aa1b  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
0046aa21  50                        PUSH EAX
0046aa22  e8e9470600                CALL 0x004cf210
0046aa27  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
0046aa2d  50                        PUSH EAX
0046aa2e  8bcf                      MOV ECX,EDI
0046aa30  8938                      MOV dword ptr [EAX],EDI
0046aa32  e8b9320600                CALL 0x004cdcf0
0046aa37  837f2859                  CMP dword ptr [EDI + 0x28],0x59
0046aa3b  b930ddb100                MOV ECX,0xb1dd30
0046aa40  b880e0b100                MOV EAX,0xb1e080
0046aa45  0f44c1                    CMOVZ EAX,ECX
0046aa48  8d4f48                    LEA ECX,[EDI + 0x48]
0046aa4b  6a00                      PUSH 0x0
0046aa4d  50                        PUSH EAX
0046aa4e  e82df9f9ff                CALL 0x0040a380
0046aa53  817f28ef000000            CMP dword ptr [EDI + 0x28],0xef
0046aa5a  0f852f010000              JNZ 0x0046ab8f
0046aa60  8b97c0030000              MOV EDX,dword ptr [EDI + 0x3c0]
0046aa66  85d2                      TEST EDX,EDX
0046aa68  740a                      JZ 0x0046aa74
0046aa6a  f30f108a80030000          MOVSS XMM1,dword ptr [EDX + 0x380]
0046aa72  eb03                      JMP 0x0046aa77
0046aa74  0f57c9                    XORPS XMM1,XMM1
0046aa77  8b36                      MOV ESI,dword ptr [ESI]
0046aa79  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0046aa7f  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
0046aa85  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
0046aa8d  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
0046aa95  0f2fc8                    COMISS XMM1,XMM0
0046aa98  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
0046aaa0  0f46c8                    CMOVBE ECX,EAX
0046aaa3  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0046aaa9  f30f104050                MOVSS XMM0,dword ptr [EAX + 0x50]
0046aaae  f30f5801                  ADDSS XMM0,dword ptr [ECX]
0046aab2  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
0046aaba  f30f118784030000          MOVSS dword ptr [EDI + 0x384],XMM0
0046aac2  85f6                      TEST ESI,ESI
0046aac4  7432                      JZ 0x0046aaf8
0046aac6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
0046aad0  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
0046aad6  898680030000              MOV dword ptr [ESI + 0x380],EAX
0046aadc  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
0046aae2  898684030000              MOV dword ptr [ESI + 0x384],EAX
0046aae8  8bb6bc030000              MOV ESI,dword ptr [ESI + 0x3bc]
0046aaee  85f6                      TEST ESI,ESI
0046aaf0  75de                      JNZ 0x0046aad0
0046aaf2  8b97c0030000              MOV EDX,dword ptr [EDI + 0x3c0]
0046aaf8  85d2                      TEST EDX,EDX
0046aafa  0f848f000000              JZ 0x0046ab8f
0046ab00  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
0046ab06  898280030000              MOV dword ptr [EDX + 0x380],EAX
0046ab0c  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
0046ab12  898284030000              MOV dword ptr [EDX + 0x384],EAX
0046ab18  8b92c0030000              MOV EDX,dword ptr [EDX + 0x3c0]
0046ab1e  85d2                      TEST EDX,EDX
0046ab20  75de                      JNZ 0x0046ab00
0046ab22  eb6b                      JMP 0x0046ab8f
0046ab24  837f2859                  CMP dword ptr [EDI + 0x28],0x59
0046ab28  b944e0b100                MOV ECX,0xb1e044
0046ab2d  b870e0b100                MOV EAX,0xb1e070
0046ab32  0f44c1                    CMOVZ EAX,ECX
0046ab35  8d4f48                    LEA ECX,[EDI + 0x48]
0046ab38  6a00                      PUSH 0x0
0046ab3a  50                        PUSH EAX
0046ab3b  e840f8f9ff                CALL 0x0040a380
0046ab40  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0046ab46  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
0046ab4c  85c0                      TEST EAX,EAX
0046ab4e  7436                      JZ 0x0046ab86
0046ab50  8b7720                    MOV ESI,dword ptr [EDI + 0x20]
0046ab53  6a00                      PUSH 0x0
0046ab55  68acd6c500                PUSH 0xc5d6ac
0046ab5a  68dcd5c500                PUSH 0xc5d5dc
0046ab5f  6a00                      PUSH 0x0
0046ab61  50                        PUSH EAX
0046ab62  e84a5d6800                CALL 0x00af08b1
0046ab67  83c414                    ADD ESP,0x14
0046ab6a  89b07c0c0000              MOV dword ptr [EAX + 0xc7c],ESI
0046ab70  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
0046ab76  8b80c0030000              MOV EAX,dword ptr [EAX + 0x3c0]
0046ab7c  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
0046ab82  85c0                      TEST EAX,EAX
0046ab84  75ca                      JNZ 0x0046ab50
0046ab86  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
0046ab89  89877c0c0000              MOV dword ptr [EDI + 0xc7c],EAX
0046ab8f  8d873c030000              LEA EAX,[EDI + 0x33c]
0046ab95  8d8f040c0000              LEA ECX,[EDI + 0xc04]
0046ab9b  50                        PUSH EAX
0046ab9c  e8efe50200                CALL 0x00499190
0046aba1  8d8760030000              LEA EAX,[EDI + 0x360]
0046aba7  8d8f180c0000              LEA ECX,[EDI + 0xc18]
0046abad  50                        PUSH EAX
0046abae  e8dde50200                CALL 0x00499190
0046abb3  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0046abba  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
0046abbe  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0046abc8  0f85ab140000              JNZ 0x0046c079
0046abce  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0046abd5  b101                      MOV CL,0x1
0046abd7  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0046abda  6a00                      PUSH 0x0
0046abdc  6a00                      PUSH 0x0
0046abde  e8cd9c5f00                CALL 0x00a648b0
0046abe3  83c408                    ADD ESP,0x8
0046abe6  e98e140000                JMP 0x0046c079
0046abeb  83f804                    CMP EAX,0x4
0046abee  0f8585140000              JNZ 0x0046c079
0046abf4  8b7728                    MOV ESI,dword ptr [EDI + 0x28]
0046abf7  83fe13                    CMP ESI,0x13
0046abfa  7573                      JNZ 0x0046ac6f
0046abfc  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0046ac00  7518                      JNZ 0x0046ac1a
0046ac02  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0046ac0a  f30f590528a4ba00          MULSS XMM0,dword ptr [0x00baa428]
0046ac12  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0046ac1a  ff7720                    PUSH dword ptr [EDI + 0x20]
0046ac1d  8bcf                      MOV ECX,EDI
0046ac1f  6a0a                      PUSH 0xa
0046ac21  e8ea1a2400                CALL 0x006ac710
0046ac26  84c0                      TEST AL,AL
0046ac28  7445                      JZ 0x0046ac6f
0046ac2a  e831432800                CALL 0x006eef60
0046ac2f  51                        PUSH ECX
0046ac30  8bcf                      MOV ECX,EDI
0046ac32  660f6ec0                  MOVD XMM0,EAX
0046ac36  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0046ac3a  c1e81f                    SHR EAX,0x1f
0046ac3d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046ac46  660f5ac0                  CVTPD2PS XMM0,XMM0
0046ac4a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046ac52  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
0046ac5a  f30f5805f8a1ba00          ADDSS XMM0,dword ptr [0x00baa1f8]
0046ac62  f30f110424                MOVSS dword ptr [ESP],XMM0
0046ac67  e864b82400                CALL 0x006b64d0
0046ac6c  8b7728                    MOV ESI,dword ptr [EDI + 0x28]
0046ac6f  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0046ac76  0f855b0e0000              JNZ 0x0046bad7
0046ac7c  83fe13                    CMP ESI,0x13
0046ac7f  757d                      JNZ 0x0046acfe
0046ac81  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0046ac84  85c0                      TEST EAX,EAX
0046ac86  753c                      JNZ 0x0046acc4
0046ac88  3987c0030000              CMP dword ptr [EDI + 0x3c0],EAX
0046ac8e  0f84a0000000              JZ 0x0046ad34
0046ac94  e8c7422800                CALL 0x006eef60
0046ac99  33d2                      XOR EDX,EDX
0046ac9b  b978000000                MOV ECX,0x78
0046aca0  f7f1                      DIV ECX
0046aca2  85d2                      TEST EDX,EDX
0046aca4  0f848a000000              JZ 0x0046ad34
0046acaa  51                        PUSH ECX
0046acab  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046acb2  6a00                      PUSH 0x0
0046acb4  51                        PUSH ECX
0046acb5  51                        PUSH ECX
0046acb6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046acbd  68e9030000                PUSH 0x3e9
0046acc2  eb69                      JMP 0x0046ad2d
0046acc4  83f801                    CMP EAX,0x1
0046acc7  756b                      JNZ 0x0046ad34
0046acc9  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0046acd0  7462                      JZ 0x0046ad34
0046acd2  e889422800                CALL 0x006eef60
0046acd7  33d2                      XOR EDX,EDX
0046acd9  b978000000                MOV ECX,0x78
0046acde  f7f1                      DIV ECX
0046ace0  85d2                      TEST EDX,EDX
0046ace2  7450                      JZ 0x0046ad34
0046ace4  51                        PUSH ECX
0046ace5  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046acec  6a00                      PUSH 0x0
0046acee  51                        PUSH ECX
0046acef  51                        PUSH ECX
0046acf0  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046acf7  68ed030000                PUSH 0x3ed
0046acfc  eb2f                      JMP 0x0046ad2d
0046acfe  83fe59                    CMP ESI,0x59
0046ad01  7531                      JNZ 0x0046ad34
0046ad03  e858422800                CALL 0x006eef60
0046ad08  33d2                      XOR EDX,EDX
0046ad0a  b978000000                MOV ECX,0x78
0046ad0f  f7f1                      DIV ECX
0046ad11  85d2                      TEST EDX,EDX
0046ad13  741f                      JZ 0x0046ad34
0046ad15  51                        PUSH ECX
0046ad16  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046ad1d  6a00                      PUSH 0x0
0046ad1f  51                        PUSH ECX
0046ad20  51                        PUSH ECX
0046ad21  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046ad28  683d040000                PUSH 0x43d
0046ad2d  8bcf                      MOV ECX,EDI
0046ad2f  e86cbe2600                CALL 0x006d6ba0
0046ad34  817f28ef000000            CMP dword ptr [EDI + 0x28],0xef
0046ad3b  0f851d010000              JNZ 0x0046ae5e
0046ad41  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0046ad49  8bc7                      MOV EAX,EDI
0046ad4b  f30f5c4f14                SUBSS XMM1,dword ptr [EDI + 0x14]
0046ad50  8db0c0030000              LEA ESI,[EAX + 0x3c0]
0046ad56  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
0046ad5e  8b06                      MOV EAX,dword ptr [ESI]
0046ad60  85c0                      TEST EAX,EAX
0046ad62  7432                      JZ 0x0046ad96
0046ad64  6a00                      PUSH 0x0
0046ad66  68acd6c500                PUSH 0xc5d6ac
0046ad6b  68dcd5c500                PUSH 0xc5d5dc
0046ad70  6a00                      PUSH 0x0
0046ad72  50                        PUSH EAX
0046ad73  e8395b6800                CALL 0x00af08b1
0046ad78  83c414                    ADD ESP,0x14
0046ad7b  85c0                      TEST EAX,EAX
0046ad7d  750f                      JNZ 0x0046ad8e
0046ad7f  688cdcb100                PUSH 0xb1dc8c
0046ad84  6a10                      PUSH 0x10
0046ad86  e835655a00                CALL 0x00a112c0
0046ad8b  83c408                    ADD ESP,0x8
0046ad8e  f30f108d2cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff2c]
0046ad96  8b06                      MOV EAX,dword ptr [ESI]
0046ad98  85c0                      TEST EAX,EAX
0046ad9a  7416                      JZ 0x0046adb2
0046ad9c  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0046ada4  f30f5c4014                SUBSS XMM0,dword ptr [EAX + 0x14]
0046ada9  f30f5dc1                  MINSS XMM0,XMM1
0046adad  0f28c8                    MOVAPS XMM1,XMM0
0046adb0  eb9e                      JMP 0x0046ad50
0046adb2  8bc7                      MOV EAX,EDI
0046adb4  89bd14ffffff              MOV dword ptr [EBP + 0xffffff14],EDI
0046adba  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0046adc0  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0046adc8  f30f5c4014                SUBSS XMM0,dword ptr [EAX + 0x14]
0046adcd  0f2fc1                    COMISS XMM0,XMM1
0046add0  763e                      JBE 0x0046ae10
0046add2  8b00                      MOV EAX,dword ptr [EAX]
0046add4  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
0046adda  57                        PUSH EDI
0046addb  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0046adde  e82d65fcff                CALL 0x00431310
0046ade3  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
0046ade9  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0046adef  6a1e                      PUSH 0x1e
0046adf1  50                        PUSH EAX
0046adf2  6a00                      PUSH 0x0
0046adf4  f30f108180030000          MOVSS XMM0,dword ptr [ECX + 0x380]
0046adfc  f30f5cc1                  SUBSS XMM0,XMM1
0046ae00  6a00                      PUSH 0x0
0046ae02  51                        PUSH ECX
0046ae03  f30f110424                MOVSS dword ptr [ESP],XMM0
0046ae08  ffd6                      CALL ESI
0046ae0a  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
0046ae10  8db0c0030000              LEA ESI,[EAX + 0x3c0]
0046ae16  8b06                      MOV EAX,dword ptr [ESI]
0046ae18  85c0                      TEST EAX,EAX
0046ae1a  742a                      JZ 0x0046ae46
0046ae1c  6a00                      PUSH 0x0
0046ae1e  68acd6c500                PUSH 0xc5d6ac
0046ae23  68dcd5c500                PUSH 0xc5d5dc
0046ae28  6a00                      PUSH 0x0
0046ae2a  50                        PUSH EAX
0046ae2b  e8815a6800                CALL 0x00af08b1
0046ae30  83c414                    ADD ESP,0x14
0046ae33  85c0                      TEST EAX,EAX
0046ae35  750f                      JNZ 0x0046ae46
0046ae37  688cdcb100                PUSH 0xb1dc8c
0046ae3c  6a10                      PUSH 0x10
0046ae3e  e87d645a00                CALL 0x00a112c0
0046ae43  83c408                    ADD ESP,0x8
0046ae46  8b06                      MOV EAX,dword ptr [ESI]
0046ae48  f30f108d2cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff2c]
0046ae50  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
0046ae56  85c0                      TEST EAX,EAX
0046ae58  0f8562ffffff              JNZ 0x0046adc0
0046ae5e  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
0046ae64  83fa1e                    CMP EDX,0x1e
0046ae67  0f8f260a0000              JG 0x0046b893
0046ae6d  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0046ae71  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0046ae74  0f8436050000              JZ 0x0046b3b0
0046ae7a  3def000000                CMP EAX,0xef
0046ae7f  0f8436050000              JZ 0x0046b3bb
0046ae85  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0046ae8d  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0046ae95  f30f59c0                  MULSS XMM0,XMM0
0046ae99  f30f59c9                  MULSS XMM1,XMM1
0046ae9d  f30f58c8                  ADDSS XMM1,XMM0
0046aea1  f30f100568a1ba00          MOVSS XMM0,dword ptr [0x00baa168]
0046aea9  0f2fc1                    COMISS XMM0,XMM1
0046aeac  7676                      JBE 0x0046af24
0046aeae  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
0046aeb4  50                        PUSH EAX
0046aeb5  e8b6412100                CALL 0x0067f070
0046aeba  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0046aec2  83c404                    ADD ESP,0x4
0046aec5  0f57d2                    XORPS XMM2,XMM2
0046aec8  0f2ee2                    UCOMISS XMM4,XMM2
0046aecb  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0046aecf  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
0046aed4  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0046aedc  f30f591d20a1ba00          MULSS XMM3,dword ptr [0x00baa120]
0046aee4  9f                        LAHF
0046aee5  f6c444                    TEST AH,0x44
0046aee8  7b3d                      JNP 0x0046af27
0046aeea  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0046aef2  f30f59c8                  MULSS XMM1,XMM0
0046aef6  f30f59d8                  MULSS XMM3,XMM0
0046aefa  f30f5ecc                  DIVSS XMM1,XMM4
0046aefe  f30f5edc                  DIVSS XMM3,XMM4
0046af02  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
0046af0a  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
0046af12  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0046af1a  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0046af22  eb03                      JMP 0x0046af27
0046af24  0f57d2                    XORPS XMM2,XMM2
0046af27  f30f10a764030000          MOVSS XMM4,dword ptr [EDI + 0x364]
0046af2f  0f2fe2                    COMISS XMM4,XMM2
0046af32  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
0046af3a  7612                      JBE 0x0046af4e
0046af3c  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0046af44  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0046af4c  eb08                      JMP 0x0046af56
0046af4e  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
0046af56  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
0046af5e  0f2fda                    COMISS XMM3,XMM2
0046af61  7612                      JBE 0x0046af75
0046af63  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0046af6b  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0046af73  eb08                      JMP 0x0046af7d
0046af75  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
0046af7d  0f541d40cbba00            ANDPS XMM3,xmmword ptr [0x00bacb40]
0046af84  8d4f48                    LEA ECX,[EDI + 0x48]
0046af87  0f28cc                    MOVAPS XMM1,XMM4
0046af8a  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0046af91  0f2fcb                    COMISS XMM1,XMM3
0046af94  7715                      JA 0x0046afab
0046af96  0f2fe2                    COMISS XMM4,XMM2
0046af99  7610                      JBE 0x0046afab
0046af9b  6a00                      PUSH 0x0
0046af9d  e87e02faff                CALL 0x0040b220
0046afa2  c7403c00007041            MOV dword ptr [EAX + 0x3c],0x41700000
0046afa9  eb0e                      JMP 0x0046afb9
0046afab  6a00                      PUSH 0x0
0046afad  e86e02faff                CALL 0x0040b220
0046afb2  c7403c00000000            MOV dword ptr [EAX + 0x3c],0x0
0046afb9  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0046afc1  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
0046afc9  a17816c700                MOV EAX,[0x00c71678]
0046afce  f30f103d54a4ba00          MOVSS XMM7,dword ptr [0x00baa454]
0046afd6  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0046afde  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046afe4  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
0046afeb  f30f105820                MOVSS XMM3,dword ptr [EAX + 0x20]
0046aff0  f30f5c1d1ca8ba00          SUBSS XMM3,dword ptr [0x00baa81c]
0046aff8  f30f104814                MOVSS XMM1,dword ptr [EAX + 0x14]
0046affd  f30f106018                MOVSS XMM4,dword ptr [EAX + 0x18]
0046b002  f30f58cf                  ADDSS XMM1,XMM7
0046b006  f30f10681c                MOVSS XMM5,dword ptr [EAX + 0x1c]
0046b00b  f30f58257ca8ba00          ADDSS XMM4,dword ptr [0x00baa87c]
0046b013  f30f5cef                  SUBSS XMM5,XMM7
0046b017  f30f119d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM3
0046b01f  7508                      JNZ 0x0046b029
0046b021  f30f102514abba00          MOVSS XMM4,dword ptr [0x00baab14]
0046b029  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
0046b031  8d973c030000              LEA EDX,[EDI + 0x33c]
0046b037  f30f104204                MOVSS XMM0,dword ptr [EDX + 0x4]
0046b03c  f30f5fd1                  MAXSS XMM2,XMM1
0046b040  8b4a04                    MOV ECX,dword ptr [EDX + 0x4]
0046b043  f30f5fc4                  MAXSS XMM0,XMM4
0046b047  8b02                      MOV EAX,dword ptr [EDX]
0046b049  898d1cffffff              MOV dword ptr [EBP + 0xffffff1c],ECX
0046b04f  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0046b055  52                        PUSH EDX
0046b056  f30f5dd5                  MINSS XMM2,XMM5
0046b05a  898518ffffff              MOV dword ptr [EBP + 0xffffff18],EAX
0046b060  f30f5dc3                  MINSS XMM0,XMM3
0046b064  f30f1112                  MOVSS dword ptr [EDX],XMM2
0046b068  f30f114204                MOVSS dword ptr [EDX + 0x4],XMM0
0046b06d  e8be555a00                CALL 0x00a10630
0046b072  f30f103570cbba00          MOVSS XMM6,dword ptr [0x00bacb70]
0046b07a  88850fffffff              MOV byte ptr [EBP + 0xffffff0f],AL
0046b080  84c0                      TEST AL,AL
0046b082  0f84d6000000              JZ 0x0046b15e
0046b088  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0046b090  0f2ed1                    UCOMISS XMM2,XMM1
0046b093  0f57c9                    XORPS XMM1,XMM1
0046b096  9f                        LAHF
0046b097  f6c444                    TEST AH,0x44
0046b09a  7a10                      JP 0x0046b0ac
0046b09c  0f2fc8                    COMISS XMM1,XMM0
0046b09f  0f28f0                    MOVAPS XMM6,XMM0
0046b0a2  771c                      JA 0x0046b0c0
0046b0a4  f30f103570cbba00          MOVSS XMM6,dword ptr [0x00bacb70]
0046b0ac  0f2ed5                    UCOMISS XMM2,XMM5
0046b0af  0f28d8                    MOVAPS XMM3,XMM0
0046b0b2  9f                        LAHF
0046b0b3  f6c444                    TEST AH,0x44
0046b0b6  7a28                      JP 0x0046b0e0
0046b0b8  0f2fc1                    COMISS XMM0,XMM1
0046b0bb  0f28f0                    MOVAPS XMM6,XMM0
0046b0be  7618                      JBE 0x0046b0d8
0046b0c0  0f28de                    MOVAPS XMM3,XMM6
0046b0c3  f30f103570cbba00          MOVSS XMM6,dword ptr [0x00bacb70]
0046b0cb  0f57de                    XORPS XMM3,XMM6
0046b0ce  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
0046b0d6  eb08                      JMP 0x0046b0e0
0046b0d8  f30f103570cbba00          MOVSS XMM6,dword ptr [0x00bacb70]
0046b0e0  f30f10af40030000          MOVSS XMM5,dword ptr [EDI + 0x340]
0046b0e8  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0046b0f0  0f2eec                    UCOMISS XMM5,XMM4
0046b0f3  9f                        LAHF
0046b0f4  f6c444                    TEST AH,0x44
0046b0f7  7a08                      JP 0x0046b101
0046b0f9  0f2fc8                    COMISS XMM1,XMM0
0046b0fc  0f28e0                    MOVAPS XMM4,XMM0
0046b0ff  7718                      JA 0x0046b119
0046b101  0f2ead24ffffff            UCOMISS XMM5,dword ptr [EBP + 0xffffff24]
0046b108  0f28d0                    MOVAPS XMM2,XMM0
0046b10b  9f                        LAHF
0046b10c  f6c444                    TEST AH,0x44
0046b10f  7a16                      JP 0x0046b127
0046b111  0f2fc1                    COMISS XMM0,XMM1
0046b114  0f28e0                    MOVAPS XMM4,XMM0
0046b117  760e                      JBE 0x0046b127
0046b119  0f28d4                    MOVAPS XMM2,XMM4
0046b11c  0f57d6                    XORPS XMM2,XMM6
0046b11f  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0046b127  0f2fd9                    COMISS XMM3,XMM1
0046b12a  f30f101d50adba00          MOVSS XMM3,dword ptr [0x00baad50]
0046b132  760d                      JBE 0x0046b141
0046b134  0f28c7                    MOVAPS XMM0,XMM7
0046b137  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0046b13f  eb08                      JMP 0x0046b149
0046b141  f30f119d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM3
0046b149  0f2fd1                    COMISS XMM2,XMM1
0046b14c  7605                      JBE 0x0046b153
0046b14e  0f28c7                    MOVAPS XMM0,XMM7
0046b151  eb03                      JMP 0x0046b156
0046b153  0f28c3                    MOVAPS XMM0,XMM3
0046b156  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0046b15e  6840b6c700                PUSH 0xc7b640
0046b163  8d8fb00b0000              LEA ECX,[EDI + 0xbb0]
0046b169  e892545a00                CALL 0x00a10600
0046b16e  84c0                      TEST AL,AL
0046b170  751a                      JNZ 0x0046b18c
0046b172  38850fffffff              CMP byte ptr [EBP + 0xffffff0f],AL
0046b178  7479                      JZ 0x0046b1f3
0046b17a  e8e13d2800                CALL 0x006eef60
0046b17f  33d2                      XOR EDX,EDX
0046b181  b90a000000                MOV ECX,0xa
0046b186  f7f1                      DIV ECX
0046b188  85d2                      TEST EDX,EDX
0046b18a  7567                      JNZ 0x0046b1f3
0046b18c  e8cf3d2800                CALL 0x006eef60
0046b191  8bc8                      MOV ECX,EAX
0046b193  83e101                    AND ECX,0x1
0046b196  751e                      JNZ 0x0046b1b6
0046b198  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
0046b1a0  c78518ffffff00004040      MOV dword ptr [EBP + 0xffffff18],0x40400000
0046b1aa  c7851cffffffcdcccc3f      MOV dword ptr [EBP + 0xffffff1c],0x3fcccccd
0046b1b4  eb1c                      JMP 0x0046b1d2
0046b1b6  f30f1005b4a5ba00          MOVSS XMM0,dword ptr [0x00baa5b4]
0046b1be  c78520ffffff6666e63f      MOV dword ptr [EBP + 0xffffff20],0x3fe66666
0046b1c8  c78524ffffff00004040      MOV dword ptr [EBP + 0xffffff24],0x40400000
0046b1d2  85c9                      TEST ECX,ECX
0046b1d4  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0046b1dc  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
0046b1e2  8d951cffffff              LEA EDX,[EBP + 0xffffff1c]
0046b1e8  0f44c2                    CMOVZ EAX,EDX
0046b1eb  8b00                      MOV EAX,dword ptr [EAX]
0046b1ed  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
0046b1f3  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0046b1f9  2500020000                AND EAX,0x200
0046b1fe  83c800                    OR EAX,0x0
0046b201  743f                      JZ 0x0046b242
0046b203  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0046b20a  7536                      JNZ 0x0046b242
0046b20c  6a00                      PUSH 0x0
0046b20e  8d8f14040000              LEA ECX,[EDI + 0x414]
0046b214  c7876c0300003333733f      MOV dword ptr [EDI + 0x36c],0x3f733333
0046b21e  e82db43700                CALL 0x007e6650
0046b223  6a00                      PUSH 0x0
0046b225  8d8f14040000              LEA ECX,[EDI + 0x414]
0046b22b  e820b43700                CALL 0x007e6650
0046b230  6a00                      PUSH 0x0
0046b232  8d8f14040000              LEA ECX,[EDI + 0x414]
0046b238  e813b43700                CALL 0x007e6650
0046b23d  e911050000                JMP 0x0046b753
0046b242  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0046b24a  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
0046b251  f30f10952cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff2c]
0046b259  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
0046b261  f30f5997b00b0000          MULSS XMM2,dword ptr [EDI + 0xbb0]
0046b269  f30f598fb40b0000          MULSS XMM1,dword ptr [EDI + 0xbb4]
0046b271  9f                        LAHF
0046b272  f6c444                    TEST AH,0x44
0046b275  7b38                      JNP 0x0046b2af
0046b277  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0046b27f  f30f59d0                  MULSS XMM2,XMM0
0046b283  f30f59c8                  MULSS XMM1,XMM0
0046b287  f30f5ed3                  DIVSS XMM2,XMM3
0046b28b  f30f5ecb                  DIVSS XMM1,XMM3
0046b28f  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
0046b297  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0046b29f  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0046b2a7  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0046b2af  6a00                      PUSH 0x0
0046b2b1  6800080001                PUSH 0x1000800
0046b2b6  8bcf                      MOV ECX,EDI
0046b2b8  e873c1faff                CALL 0x00417430
0046b2bd  84c0                      TEST AL,AL
0046b2bf  0f848e040000              JZ 0x0046b753
0046b2c5  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0046b2cc  0f8581040000              JNZ 0x0046b753
0046b2d2  8bcf                      MOV ECX,EDI
0046b2d4  e867352500                CALL 0x006be840
0046b2d9  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0046b2e1  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0046b2e9  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0046b2f1  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0046b2f9  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0046b300  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0046b307  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
0046b30f  f30f118d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM1
0046b317  f30f59c0                  MULSS XMM0,XMM0
0046b31b  f30f59c9                  MULSS XMM1,XMM1
0046b31f  f30f58c1                  ADDSS XMM0,XMM1
0046b323  e828a7fcff                CALL 0x00435a50
0046b328  f30f100d5caaba00          MOVSS XMM1,dword ptr [0x00baaa5c]
0046b330  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0046b336  f30f5cc8                  SUBSS XMM1,XMM0
0046b33a  51                        PUSH ECX
0046b33b  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
0046b341  f30f590da0a0ba00          MULSS XMM1,dword ptr [0x00baa0a0]
0046b349  f30f5f0de49fba00          MAXSS XMM1,dword ptr [0x00ba9fe4]
0046b351  f30f5d0d30a6ba00          MINSS XMM1,dword ptr [0x00baa630]
0046b359  f30f110c24                MOVSS dword ptr [ESP],XMM1
0046b35e  50                        PUSH EAX
0046b35f  e89c4d5a00                CALL 0x00a10100
0046b364  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
0046b36c  8bc8                      MOV ECX,EAX
0046b36e  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
0046b375  9f                        LAHF
0046b376  f6c444                    TEST AH,0x44
0046b379  0f8bd4030000              JNP 0x0046b753
0046b37f  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0046b387  0f28c1                    MOVAPS XMM0,XMM1
0046b38a  f30f594904                MULSS XMM1,dword ptr [ECX + 0x4]
0046b38f  f30f5901                  MULSS XMM0,dword ptr [ECX]
0046b393  f30f5eca                  DIVSS XMM1,XMM2
0046b397  f30f5ec2                  DIVSS XMM0,XMM2
0046b39b  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0046b3a3  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0046b3ab  e9ba000000                JMP 0x0046b46a
0046b3b0  3def000000                CMP EAX,0xef
0046b3b5  0f85f3000000              JNZ 0x0046b4ae
0046b3bb  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0046b3c2  0f84e6000000              JZ 0x0046b4ae
0046b3c8  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0046b3cf  0f85aa000000              JNZ 0x0046b47f
0046b3d5  6a00                      PUSH 0x0
0046b3d7  68000a0001                PUSH 0x1000a00
0046b3dc  8bcf                      MOV ECX,EDI
0046b3de  e84dc0faff                CALL 0x00417430
0046b3e3  84c0                      TEST AL,AL
0046b3e5  0f8594000000              JNZ 0x0046b47f
0046b3eb  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0046b3f2  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0046b3fa  f30f591de0a3ba00          MULSS XMM3,dword ptr [0x00baa3e0]
0046b402  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
0046b40a  740a                      JZ 0x0046b416
0046b40c  f30f100d90a7ba00          MOVSS XMM1,dword ptr [0x00baa790]
0046b414  eb08                      JMP 0x0046b41e
0046b416  f30f100d40a7ba00          MOVSS XMM1,dword ptr [0x00baa740]
0046b41e  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
0046b425  0f28d1                    MOVAPS XMM2,XMM1
0046b428  f30f598f38030000          MULSS XMM1,dword ptr [EDI + 0x338]
0046b430  f30f599734030000          MULSS XMM2,dword ptr [EDI + 0x334]
0046b438  9f                        LAHF
0046b439  f6c444                    TEST AH,0x44
0046b43c  0f8b11030000              JNP 0x0046b753
0046b442  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0046b44a  f30f59d0                  MULSS XMM2,XMM0
0046b44e  f30f59c8                  MULSS XMM1,XMM0
0046b452  f30f5ed3                  DIVSS XMM2,XMM3
0046b456  f30f5ecb                  DIVSS XMM1,XMM3
0046b45a  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
0046b462  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0046b46a  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0046b472  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0046b47a  e9d4020000                JMP 0x0046b753
0046b47f  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0046b489  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0046b491  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0046b499  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046b4a1  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0046b4a9  e9a5020000                JMP 0x0046b753
0046b4ae  8d8f14040000              LEA ECX,[EDI + 0x414]
0046b4b4  6a00                      PUSH 0x0
0046b4b6  51                        PUSH ECX
0046b4b7  c7042400000040            MOV dword ptr [ESP],0x40000000
0046b4be  e87d9e3700                CALL 0x007e5340
0046b4c3  817f28ef000000            CMP dword ptr [EDI + 0x28],0xef
0046b4ca  0f8583020000              JNZ 0x0046b753
0046b4d0  6a00                      PUSH 0x0
0046b4d2  68000a0001                PUSH 0x1000a00
0046b4d7  8bcf                      MOV ECX,EDI
0046b4d9  e852bffaff                CALL 0x00417430
0046b4de  84c0                      TEST AL,AL
0046b4e0  0f856d020000              JNZ 0x0046b753
0046b4e6  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
0046b4ec  83fa32                    CMP EDX,0x32
0046b4ef  0f8e43020000              JLE 0x0046b738
0046b4f5  8bcf                      MOV ECX,EDI
0046b4f7  e844332500                CALL 0x006be840
0046b4fc  8bcf                      MOV ECX,EDI
0046b4fe  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0046b506  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0046b50e  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0046b516  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0046b51e  e81d332500                CALL 0x006be840
0046b523  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0046b52b  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
0046b533  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
0046b53b  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
0046b543  e8183a2800                CALL 0x006eef60
0046b548  f30f10a73c030000          MOVSS XMM4,dword ptr [EDI + 0x33c]
0046b550  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0046b556  f30f106904                MOVSS XMM5,dword ptr [ECX + 0x4]
0046b55b  660f6ec0                  MOVD XMM0,EAX
0046b55f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0046b563  c1e81f                    SHR EAX,0x1f
0046b566  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0046b56d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046b576  660f5ad0                  CVTPD2PS XMM2,XMM0
0046b57a  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0046b582  0f28da                    MOVAPS XMM3,XMM2
0046b585  f30f59951cffffff          MULSS XMM2,dword ptr [EBP + 0xffffff1c]
0046b58d  f30f599d24ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff24]
0046b595  f30f59155ca8ba00          MULSS XMM2,dword ptr [0x00baa85c]
0046b59d  f30f591d5ca8ba00          MULSS XMM3,dword ptr [0x00baa85c]
0046b5a5  f30f58952cffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff2c]
0046b5ad  f30f589d14ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff14]
0046b5b5  f30f5cd5                  SUBSS XMM2,XMM5
0046b5b9  f30f5cdc                  SUBSS XMM3,XMM4
0046b5bd  f30f119524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM2
0046b5c5  f30f119d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM3
0046b5cd  7435                      JZ 0x0046b604
0046b5cf  6a09                      PUSH 0x9
0046b5d1  8bcf                      MOV ECX,EDI
0046b5d3  e888cc2600                CALL 0x006d8260
0046b5d8  84c0                      TEST AL,AL
0046b5da  0f8473010000              JZ 0x0046b753
0046b5e0  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0046b5e8  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
0046b5ee  50                        PUSH EAX
0046b5ef  8bcf                      MOV ECX,EDI
0046b5f1  e8dacc2600                CALL 0x006d82d0
0046b5f6  6840b6c700                PUSH 0xc7b640
0046b5fb  8bc8                      MOV ECX,EAX
0046b5fd  e82e505a00                CALL 0x00a10630
0046b602  eb64                      JMP 0x0046b668
0046b604  f30f100d40cbba00          MOVSS XMM1,dword ptr [0x00bacb40]
0046b60c  0f28c2                    MOVAPS XMM0,XMM2
0046b60f  f30f10357ca8ba00          MOVSS XMM6,dword ptr [0x00baa87c]
0046b617  0f54c1                    ANDPS XMM0,XMM1
0046b61a  0f2ff0                    COMISS XMM6,XMM0
0046b61d  770f                      JA 0x0046b62e
0046b61f  0f28c3                    MOVAPS XMM0,XMM3
0046b622  0f54c1                    ANDPS XMM0,XMM1
0046b625  0f2ff0                    COMISS XMM6,XMM0
0046b628  0f8625010000              JBE 0x0046b753
0046b62e  a17816c700                MOV EAX,[0x00c71678]
0046b633  f30f58e3                  ADDSS XMM4,XMM3
0046b637  6a00                      PUSH 0x0
0046b639  6a00                      PUSH 0x0
0046b63b  6a00                      PUSH 0x0
0046b63d  6a00                      PUSH 0x0
0046b63f  6a00                      PUSH 0x0
0046b641  f30f58ea                  ADDSS XMM5,XMM2
0046b645  f30f11a518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM4
0046b64d  8d9518ffffff              LEA EDX,[EBP + 0xffffff18]
0046b653  52                        PUSH EDX
0046b654  51                        PUSH ECX
0046b655  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0046b65b  f30f11ad1cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM5
0046b663  e888573800                CALL 0x007f0df0
0046b668  84c0                      TEST AL,AL
0046b66a  0f84e3000000              JZ 0x0046b753
0046b670  51                        PUSH ECX
0046b671  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046b678  6a00                      PUSH 0x0
0046b67a  6a02                      PUSH 0x2
0046b67c  51                        PUSH ECX
0046b67d  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046b684  8bcf                      MOV ECX,EDI
0046b686  6a73                      PUSH 0x73
0046b688  e813b52600                CALL 0x006d6ba0
0046b68d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0046b694  742a                      JZ 0x0046b6c0
0046b696  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0046b69c  0f57d2                    XORPS XMM2,XMM2
0046b69f  50                        PUSH EAX
0046b6a0  8bcf                      MOV ECX,EDI
0046b6a2  e829cc2600                CALL 0x006d82d0
0046b6a7  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0046b6ab  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0046b6b3  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0046b6b8  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
0046b6c0  8d9520ffffff              LEA EDX,[EBP + 0xffffff20]
0046b6c6  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0046b6cc  e89f3a2100                CALL 0x0067f170
0046b6d1  8b08                      MOV ECX,dword ptr [EAX]
0046b6d3  898f34030000              MOV dword ptr [EDI + 0x334],ECX
0046b6d9  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0046b6dc  898738030000              MOV dword ptr [EDI + 0x338],EAX
0046b6e2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0046b6ec  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0046b6f6  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0046b6fe  f30f118718040000          MOVSS dword ptr [EDI + 0x418],XMM0
0046b706  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046b70e  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
0046b716  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0046b71e  f30f118720040000          MOVSS dword ptr [EDI + 0x420],XMM0
0046b726  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046b72e  f30f118724040000          MOVSS dword ptr [EDI + 0x424],XMM0
0046b736  eb1b                      JMP 0x0046b753
0046b738  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0046b740  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0046b748  2bc8                      SUB ECX,EAX
0046b74a  8d040a                    LEA EAX,[EDX + ECX*0x1]
0046b74d  898710040000              MOV dword ptr [EDI + 0x410],EAX
0046b753  837f2813                  CMP dword ptr [EDI + 0x28],0x13
0046b757  0f8550010000              JNZ 0x0046b8ad
0046b75d  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0046b761  0f8546010000              JNZ 0x0046b8ad
0046b767  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0046b76e  7418                      JZ 0x0046b788
0046b770  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0046b778  8bcf                      MOV ECX,EDI
0046b77a  6a07                      PUSH 0x7
0046b77c  6a00                      PUSH 0x0
0046b77e  e8ddf62500                CALL 0x006cae60
0046b783  0fb6c0                    MOVZX EAX,AL
0046b786  eb15                      JMP 0x0046b79d
0046b788  e8d3372800                CALL 0x006eef60
0046b78d  33d2                      XOR EDX,EDX
0046b78f  b903000000                MOV ECX,0x3
0046b794  f7f1                      DIV ECX
0046b796  33c0                      XOR EAX,EAX
0046b798  85d2                      TEST EDX,EDX
0046b79a  0f94c0                    SETZ AL
0046b79d  85c0                      TEST EAX,EAX
0046b79f  0f8408010000              JZ 0x0046b8ad
0046b7a5  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
0046b7ab  85d2                      TEST EDX,EDX
0046b7ad  0f8fe0000000              JG 0x0046b893
0046b7b3  51                        PUSH ECX
0046b7b4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046b7bb  6a00                      PUSH 0x0
0046b7bd  6a02                      PUSH 0x2
0046b7bf  51                        PUSH ECX
0046b7c0  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046b7c7  8bcf                      MOV ECX,EDI
0046b7c9  68b2000000                PUSH 0xb2
0046b7ce  e8cdb32600                CALL 0x006d6ba0
0046b7d3  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0046b7da  7407                      JZ 0x0046b7e3
0046b7dc  ba28000000                MOV EDX,0x28
0046b7e1  eb11                      JMP 0x0046b7f4
0046b7e3  e878372800                CALL 0x006eef60
0046b7e8  33d2                      XOR EDX,EDX
0046b7ea  b914000000                MOV ECX,0x14
0046b7ef  f7f1                      DIV ECX
0046b7f1  83c228                    ADD EDX,0x28
0046b7f4  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
0046b7fa  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
0046b800  e82b37fdff                CALL 0x0043ef30
0046b805  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0046b809  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0046b80f  c7853cffffff9a99993e      MOV dword ptr [EBP + 0xffffff3c],0x3e99999a
0046b819  8d8f60030000              LEA ECX,[EDI + 0x360]
0046b81f  50                        PUSH EAX
0046b820  7558                      JNZ 0x0046b87a
0046b822  c78538ffffff0000a0c0      MOV dword ptr [EBP + 0xffffff38],0xc0a00000
0046b82c  e8ff475a00                CALL 0x00a10030
0046b831  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0046b835  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0046b83a  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
0046b840  50                        PUSH EAX
0046b841  6a00                      PUSH 0x0
0046b843  f30f590dc8a7ba00          MULSS XMM1,dword ptr [0x00baa7c8]
0046b84b  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
0046b851  8bcf                      MOV ECX,EDI
0046b853  f30f5915c8a7ba00          MULSS XMM2,dword ptr [0x00baa7c8]
0046b85b  50                        PUSH EAX
0046b85c  8d873c030000              LEA EAX,[EDI + 0x33c]
0046b862  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
0046b86a  50                        PUSH EAX
0046b86b  f30f119520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM2
0046b873  e868fa2500                CALL 0x006cb2e0
0046b878  eb33                      JMP 0x0046b8ad
0046b87a  e8b1475a00                CALL 0x00a10030
0046b87f  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0046b883  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0046b888  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
0046b88e  50                        PUSH EAX
0046b88f  6a02                      PUSH 0x2
0046b891  ebb0                      JMP 0x0046b843
0046b893  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0046b89b  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0046b8a3  2bc8                      SUB ECX,EAX
0046b8a5  2bd1                      SUB EDX,ECX
0046b8a7  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
0046b8ad  8bcf                      MOV ECX,EDI
0046b8af  e81c102400                CALL 0x006ac8d0
0046b8b4  8bf0                      MOV ESI,EAX
0046b8b6  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0046b8b9  83f813                    CMP EAX,0x13
0046b8bc  7417                      JZ 0x0046b8d5
0046b8be  3def000000                CMP EAX,0xef
0046b8c3  7410                      JZ 0x0046b8d5
0046b8c5  83f859                    CMP EAX,0x59
0046b8c8  755a                      JNZ 0x0046b924
0046b8ca  6a00                      PUSH 0x0
0046b8cc  ff34b56cdcb100            PUSH dword ptr [ESI*0x4 + 0xb1dc6c]
0046b8d3  eb3c                      JMP 0x0046b911
0046b8d5  c745dc9ce0b100            MOV dword ptr [EBP + -0x24],0xb1e09c
0046b8dc  c745e090e0b100            MOV dword ptr [EBP + -0x20],0xb1e090
0046b8e3  c745e49ce0b100            MOV dword ptr [EBP + -0x1c],0xb1e09c
0046b8ea  c745e870e0b100            MOV dword ptr [EBP + -0x18],0xb1e070
0046b8f1  3def000000                CMP EAX,0xef
0046b8f6  7512                      JNZ 0x0046b90a
0046b8f8  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0046b8ff  7409                      JZ 0x0046b90a
0046b901  8b04b57cdcb100            MOV EAX,dword ptr [ESI*0x4 + 0xb1dc7c]
0046b908  eb04                      JMP 0x0046b90e
0046b90a  8b44b5dc                  MOV EAX,dword ptr [EBP + ESI*0x4 + -0x24]
0046b90e  6a00                      PUSH 0x0
0046b910  50                        PUSH EAX
0046b911  8d4f48                    LEA ECX,[EDI + 0x48]
0046b914  e867eaf9ff                CALL 0x0040a380
0046b919  85f6                      TEST ESI,ESI
0046b91b  0f94c0                    SETZ AL
0046b91e  888748010000              MOV byte ptr [EDI + 0x148],AL
0046b924  837f2813                  CMP dword ptr [EDI + 0x28],0x13
0046b928  0f85a3000000              JNZ 0x0046b9d1
0046b92e  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
0046b934  85c0                      TEST EAX,EAX
0046b936  740d                      JZ 0x0046b945
0046b938  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
0046b93f  0f848c000000              JZ 0x0046b9d1
0046b945  8b07                      MOV EAX,dword ptr [EDI]
0046b947  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
0046b94d  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
0046b950  e81ba3fcff                CALL 0x00435c70
0046b955  50                        PUSH EAX
0046b956  8bcf                      MOV ECX,EDI
0046b958  ffd2                      CALL EDX
0046b95a  ffb77c0c0000              PUSH dword ptr [EDI + 0xc7c]
0046b960  8d45dc                    LEA EAX,[EBP + -0x24]
0046b963  8bcf                      MOV ECX,EDI
0046b965  50                        PUSH EAX
0046b966  e865542600                CALL 0x006d0dd0
0046b96b  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
0046b96e  33c9                      XOR ECX,ECX
0046b970  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0046b973  85f6                      TEST ESI,ESI
0046b975  7438                      JZ 0x0046b9af
0046b977  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0046b980  8b048a                    MOV EAX,dword ptr [EDX + ECX*0x4]
0046b983  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
0046b98a  7423                      JZ 0x0046b9af
0046b98c  41                        INC ECX
0046b98d  3bce                      CMP ECX,ESI
0046b98f  72ef                      JC 0x0046b980
0046b991  85f6                      TEST ESI,ESI
0046b993  741a                      JZ 0x0046b9af
0046b995  393a                      CMP dword ptr [EDX],EDI
0046b997  7516                      JNZ 0x0046b9af
0046b999  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0046b99f  81a768010000fffffbff      AND dword ptr [EDI + 0x168],0xfffbffff
0046b9a9  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0046b9af  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
0046b9b3  751c                      JNZ 0x0046b9d1
0046b9b5  6a00                      PUSH 0x0
0046b9b7  6a00                      PUSH 0x0
0046b9b9  b101                      MOV CL,0x1
0046b9bb  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
0046b9c2  e8e98e5f00                CALL 0x00a648b0
0046b9c7  83c408                    ADD ESP,0x8
0046b9ca  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0046b9d1  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0046b9d9  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0046b9e1  0f28c1                    MOVAPS XMM0,XMM1
0046b9e4  f30f59c1                  MULSS XMM0,XMM1
0046b9e8  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
0046b9f0  0f28ca                    MOVAPS XMM1,XMM2
0046b9f3  f30f59ca                  MULSS XMM1,XMM2
0046b9f7  f30f11951cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM2
0046b9ff  f30f58c1                  ADDSS XMM0,XMM1
0046ba03  e848a0fcff                CALL 0x00435a50
0046ba08  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0046ba0f  7626                      JBE 0x0046ba37
0046ba11  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0046ba19  f30f5ed0                  DIVSS XMM2,XMM0
0046ba1d  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0046ba25  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0046ba2d  f30f59c2                  MULSS XMM0,XMM2
0046ba31  f30f59ca                  MULSS XMM1,XMM2
0046ba35  eb10                      JMP 0x0046ba47
0046ba37  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
0046ba3f  f30f108d1cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff1c]
0046ba47  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0046ba4f  8d8de4feffff              LEA ECX,[EBP + 0xfffffee4]
0046ba55  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0046ba5b  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
0046ba63  57                        PUSH EDI
0046ba64  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0046ba6c  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
0046ba72  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0046ba7a  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
0046ba80  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
0046ba88  f30f118d1cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM1
0046ba90  e87b58fcff                CALL 0x00431310
0046ba95  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0046ba9b  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0046baa1  50                        PUSH EAX
0046baa2  e8e9713a00                CALL 0x00812c90
0046baa7  3dbf010000                CMP EAX,0x1bf
0046baac  0f87f3040000              JA 0x0046bfa5
0046bab2  8b8d24ffffff              MOV ECX,dword ptr [EBP + 0xffffff24]
0046bab8  8b4c8124                  MOV ECX,dword ptr [ECX + EAX*0x4 + 0x24]
0046babc  85c9                      TEST ECX,ECX
0046babe  0f84e1040000              JZ 0x0046bfa5
0046bac4  8b01                      MOV EAX,dword ptr [ECX]
0046bac6  8d95e4feffff              LEA EDX,[EBP + 0xfffffee4]
0046bacc  52                        PUSH EDX
0046bacd  6a01                      PUSH 0x1
0046bacf  ff5010                    CALL dword ptr [EAX + 0x10]
0046bad2  e9ce040000                JMP 0x0046bfa5
0046bad7  83fe13                    CMP ESI,0x13
0046bada  757d                      JNZ 0x0046bb59
0046badc  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0046bae0  7577                      JNZ 0x0046bb59
0046bae2  8bcf                      MOV ECX,EDI
0046bae4  e887bcfdff                CALL 0x00447770
0046bae9  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0046baf1  0f28c1                    MOVAPS XMM0,XMM1
0046baf4  f30f5c8080030000          SUBSS XMM0,dword ptr [EAX + 0x380]
0046bafc  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0046bb03  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
0046bb0a  764d                      JBE 0x0046bb59
0046bb0c  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0046bb12  8bcf                      MOV ECX,EDI
0046bb14  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0046bb1c  f30f5cc1                  SUBSS XMM0,XMM1
0046bb20  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0046bb28  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
0046bb30  f30f58c1                  ADDSS XMM0,XMM1
0046bb34  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
0046bb3c  e82fbcfdff                CALL 0x00447770
0046bb41  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0046bb49  f30f5c8524ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff24]
0046bb51  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0046bb59  8bcf                      MOV ECX,EDI
0046bb5b  e810bcfdff                CALL 0x00447770
0046bb60  83b8140c000001            CMP dword ptr [EAX + 0xc14],0x1
0046bb67  0f8e38040000              JLE 0x0046bfa5
0046bb6d  8bcf                      MOV ECX,EDI
0046bb6f  e8fcbbfdff                CALL 0x00447770
0046bb74  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046bb78  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0046bb80  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
0046bb88  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0046bb90  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0046bb98  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0046bba0  f30f119524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM2
0046bba8  7575                      JNZ 0x0046bc1f
0046bbaa  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0046bbb1  9f                        LAHF
0046bbb2  f6c444                    TEST AH,0x44
0046bbb5  7a0d                      JP 0x0046bbc4
0046bbb7  0f2e1544b6c700            UCOMISS XMM2,dword ptr [0x00c7b644]
0046bbbe  9f                        LAHF
0046bbbf  f6c444                    TEST AH,0x44
0046bbc2  7b5b                      JNP 0x0046bc1f
0046bbc4  33d2                      XOR EDX,EDX
0046bbc6  8d4f48                    LEA ECX,[EDI + 0x48]
0046bbc9  0f57c9                    XORPS XMM1,XMM1
0046bbcc  0f2fca                    COMISS XMM1,XMM2
0046bbcf  6a00                      PUSH 0x0
0046bbd1  0f97c2                    SETA DL
0046bbd4  33c0                      XOR EAX,EAX
0046bbd6  0f2fc8                    COMISS XMM1,XMM0
0046bbd9  0f97c0                    SETA AL
0046bbdc  3bc2                      CMP EAX,EDX
0046bbde  740e                      JZ 0x0046bbee
0046bbe0  e83bf6f9ff                CALL 0x0040b220
0046bbe5  c7403c000070c1            MOV dword ptr [EAX + 0x3c],0xc1700000
0046bbec  eb0c                      JMP 0x0046bbfa
0046bbee  e82df6f9ff                CALL 0x0040b220
0046bbf3  c7403c00007041            MOV dword ptr [EAX + 0x3c],0x41700000
0046bbfa  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0046bc01  741c                      JZ 0x0046bc1f
0046bc03  8d4f48                    LEA ECX,[EDI + 0x48]
0046bc06  6a00                      PUSH 0x0
0046bc08  e813f6f9ff                CALL 0x0040b220
0046bc0d  f30f10403c                MOVSS XMM0,dword ptr [EAX + 0x3c]
0046bc12  f30f590550adba00          MULSS XMM0,dword ptr [0x00baad50]
0046bc1a  f30f11403c                MOVSS dword ptr [EAX + 0x3c],XMM0
0046bc1f  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0046bc26  b9bce0b100                MOV ECX,0xb1e0bc
0046bc2b  c745dc80e0b100            MOV dword ptr [EBP + -0x24],0xb1e080
0046bc32  894de0                    MOV dword ptr [EBP + -0x20],ECX
0046bc35  c745e480e0b100            MOV dword ptr [EBP + -0x1c],0xb1e080
0046bc3c  c745e8ace0b100            MOV dword ptr [EBP + -0x18],0xb1e0ac
0046bc43  7512                      JNZ 0x0046bc57
0046bc45  817f28ef000000            CMP dword ptr [EDI + 0x28],0xef
0046bc4c  b8d4e0b100                MOV EAX,0xb1e0d4
0046bc51  0f44c1                    CMOVZ EAX,ECX
0046bc54  8945e0                    MOV dword ptr [EBP + -0x20],EAX
0046bc57  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
0046bc5d  e8fe352100                CALL 0x0067f260
0046bc62  837f2859                  CMP dword ptr [EDI + 0x28],0x59
0046bc66  8d4f48                    LEA ECX,[EDI + 0x48]
0046bc69  8bf0                      MOV ESI,EAX
0046bc6b  7509                      JNZ 0x0046bc76
0046bc6d  8b04b56cdcb100            MOV EAX,dword ptr [ESI*0x4 + 0xb1dc6c]
0046bc74  eb04                      JMP 0x0046bc7a
0046bc76  8b44b5dc                  MOV EAX,dword ptr [EBP + ESI*0x4 + -0x24]
0046bc7a  6a00                      PUSH 0x0
0046bc7c  50                        PUSH EAX
0046bc7d  e8fee6f9ff                CALL 0x0040a380
0046bc82  85f6                      TEST ESI,ESI
0046bc84  8bcf                      MOV ECX,EDI
0046bc86  0f94c0                    SETZ AL
0046bc89  888748010000              MOV byte ptr [EDI + 0x148],AL
0046bc8f  e8fccc2300                CALL 0x006a8990
0046bc94  8bc8                      MOV ECX,EAX
0046bc96  85c9                      TEST ECX,ECX
0046bc98  7421                      JZ 0x0046bcbb
0046bc9a  a17816c700                MOV EAX,[0x00c71678]
0046bc9f  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0046bca6  7c06                      JL 0x0046bcae
0046bca8  83792801                  CMP dword ptr [ECX + 0x28],0x1
0046bcac  740f                      JZ 0x0046bcbd
0046bcae  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0046bcb1  83e80a                    SUB EAX,0xa
0046bcb4  3ddd030000                CMP EAX,0x3dd
0046bcb9  7602                      JBE 0x0046bcbd
0046bcbb  33c9                      XOR ECX,ECX
0046bcbd  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0046bcc5  0f57c0                    XORPS XMM0,XMM0
0046bcc8  0f2fc8                    COMISS XMM1,XMM0
0046bccb  7634                      JBE 0x0046bd01
0046bccd  f30f5c8f9c030000          SUBSS XMM1,dword ptr [EDI + 0x39c]
0046bcd5  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
0046bcdb  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
0046bce5  8d951cffffff              LEA EDX,[EBP + 0xffffff1c]
0046bceb  0f2fc8                    COMISS XMM1,XMM0
0046bcee  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
0046bcf6  0f46c2                    CMOVBE EAX,EDX
0046bcf9  8b00                      MOV EAX,dword ptr [EAX]
0046bcfb  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
0046bd01  837f2813                  CMP dword ptr [EDI + 0x28],0x13
0046bd05  0f859a020000              JNZ 0x0046bfa5
0046bd0b  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0046bd12  0f858d020000              JNZ 0x0046bfa5
0046bd18  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0046bd1c  0f8483020000              JZ 0x0046bfa5
0046bd22  85c9                      TEST ECX,ECX
0046bd24  742a                      JZ 0x0046bd50
0046bd26  83b91c0f0000ff            CMP dword ptr [ECX + 0xf1c],-0x1
0046bd2d  7421                      JZ 0x0046bd50
0046bd2f  6a08                      PUSH 0x8
0046bd31  e82ac52600                CALL 0x006d8260
0046bd36  84c0                      TEST AL,AL
0046bd38  0f8467020000              JZ 0x0046bfa5
0046bd3e  0f57c9                    XORPS XMM1,XMM1
0046bd41  0f2f8fb00b0000            COMISS XMM1,dword ptr [EDI + 0xbb0]
0046bd48  0f8257020000              JC 0x0046bfa5
0046bd4e  eb4e                      JMP 0x0046bd9e
0046bd50  a17816c700                MOV EAX,[0x00c71678]
0046bd55  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046bd5b  8378080b                  CMP dword ptr [EAX + 0x8],0xb
0046bd5f  0f8440020000              JZ 0x0046bfa5
0046bd65  e8f6312800                CALL 0x006eef60
0046bd6a  33d2                      XOR EDX,EDX
0046bd6c  b964000000                MOV ECX,0x64
0046bd71  f7f1                      DIV ECX
0046bd73  85d2                      TEST EDX,EDX
0046bd75  7427                      JZ 0x0046bd9e
0046bd77  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0046bd7c  0f57c9                    XORPS XMM1,XMM1
0046bd7f  0f2fc1                    COMISS XMM0,XMM1
0046bd82  0f861d020000              JBE 0x0046bfa5
0046bd88  e8d3312800                CALL 0x006eef60
0046bd8d  33d2                      XOR EDX,EDX
0046bd8f  b914000000                MOV ECX,0x14
0046bd94  f7f1                      DIV ECX
0046bd96  85d2                      TEST EDX,EDX
0046bd98  0f8507020000              JNZ 0x0046bfa5
0046bd9e  6800000010                PUSH 0x10000000
0046bda3  6a00                      PUSH 0x0
0046bda5  8bcf                      MOV ECX,EDI
0046bda7  e884b6faff                CALL 0x00417430
0046bdac  84c0                      TEST AL,AL
0046bdae  7418                      JZ 0x0046bdc8
0046bdb0  a17816c700                MOV EAX,[0x00c71678]
0046bdb5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046bdbb  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0046bdbe  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0046bdc2  0f85dd010000              JNZ 0x0046bfa5
0046bdc8  a17816c700                MOV EAX,[0x00c71678]
0046bdcd  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0046bdd3  51                        PUSH ECX
0046bdd4  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046bdda  8bc8                      MOV ECX,EAX
0046bddc  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
0046bde2  e8a96e3a00                CALL 0x00812c90
0046bde7  8bf0                      MOV ESI,EAX
0046bde9  89b514ffffff              MOV dword ptr [EBP + 0xffffff14],ESI
0046bdef  81febf010000              CMP ESI,0x1bf
0046bdf5  7724                      JA 0x0046be1b
0046bdf7  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
0046bdfd  8b44b024                  MOV EAX,dword ptr [EAX + ESI*0x4 + 0x24]
0046be01  85c0                      TEST EAX,EAX
0046be03  7416                      JZ 0x0046be1b
0046be05  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0046be08  83f80e                    CMP EAX,0xe
0046be0b  740e                      JZ 0x0046be1b
0046be0d  83f801                    CMP EAX,0x1
0046be10  7409                      JZ 0x0046be1b
0046be12  83f80a                    CMP EAX,0xa
0046be15  0f858a010000              JNZ 0x0046bfa5
0046be1b  51                        PUSH ECX
0046be1c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046be23  6a00                      PUSH 0x0
0046be25  6a02                      PUSH 0x2
0046be27  51                        PUSH ECX
0046be28  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046be2f  8bcf                      MOV ECX,EDI
0046be31  68de030000                PUSH 0x3de
0046be36  e865ad2600                CALL 0x006d6ba0
0046be3b  a17816c700                MOV EAX,[0x00c71678]
0046be40  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
0046be46  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046be4c  89852cffffff              MOV dword ptr [EBP + 0xffffff2c],EAX
0046be52  e899d23700                CALL 0x007e90f0
0046be57  898524ffffff              MOV dword ptr [EBP + 0xffffff24],EAX
0046be5d  85f6                      TEST ESI,ESI
0046be5f  7808                      JS 0x0046be69
0046be61  81fec0010000              CMP ESI,0x1c0
0046be67  7c23                      JL 0x0046be8c
0046be69  6838c1b600                PUSH 0xb6c138
0046be6e  6a10                      PUSH 0x10
0046be70  e84b545a00                CALL 0x00a112c0
0046be75  83c408                    ADD ESP,0x8
0046be78  85f6                      TEST ESI,ESI
0046be7a  0f8825010000              JS 0x0046bfa5
0046be80  81fec0010000              CMP ESI,0x1c0
0046be86  0f8d19010000              JGE 0x0046bfa5
0046be8c  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
0046be92  81bcb06c07000084030000    CMP dword ptr [EAX + ESI*0x4 + 0x76c],0x384
0046be9d  0f8fc1000000              JG 0x0046bf64
0046bea3  689c010000                PUSH 0x19c
0046bea8  e813365a00                CALL 0x00a0f4c0
0046bead  8bf0                      MOV ESI,EAX
0046beaf  83c404                    ADD ESP,0x4
0046beb2  89b51cffffff              MOV dword ptr [EBP + 0xffffff1c],ESI
0046beb8  c745fc0b000000            MOV dword ptr [EBP + -0x4],0xb
0046bebf  85f6                      TEST ESI,ESI
0046bec1  743f                      JZ 0x0046bf02
0046bec3  8bce                      MOV ECX,ESI
0046bec5  e876dd2900                CALL 0x00709c40
0046beca  c7064886b600              MOV dword ptr [ESI],0xb68648
0046bed0  8d8e74010000              LEA ECX,[ESI + 0x174]
0046bed6  c7865801000000000000      MOV dword ptr [ESI + 0x158],0x0
0046bee0  c7866801000000000000      MOV dword ptr [ESI + 0x168],0x0
0046beea  c7866c0100000f000000      MOV dword ptr [ESI + 0x16c],0xf
0046bef4  c6865801000000            MOV byte ptr [ESI + 0x158],0x0
0046befb  e8709dfcff                CALL 0x00435c70
0046bf00  eb02                      JMP 0x0046bf04
0046bf02  33f6                      XOR ESI,ESI
0046bf04  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0046bf0b  85f6                      TEST ESI,ESI
0046bf0d  744f                      JZ 0x0046bf5e
0046bf0f  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
0046bf15  8b8d2cffffff              MOV ECX,dword ptr [EBP + 0xffffff2c]
0046bf1b  c746040e000000            MOV dword ptr [ESI + 0x4],0xe
0046bf22  894624                    MOV dword ptr [ESI + 0x24],EAX
0046bf25  8b4c8124                  MOV ECX,dword ptr [ECX + EAX*0x4 + 0x24]
0046bf29  85c9                      TEST ECX,ECX
0046bf2b  740c                      JZ 0x0046bf39
0046bf2d  8b01                      MOV EAX,dword ptr [ECX]
0046bf2f  6a01                      PUSH 0x1
0046bf31  ff10                      CALL dword ptr [EAX]
0046bf33  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
0046bf39  8b8d2cffffff              MOV ECX,dword ptr [EBP + 0xffffff2c]
0046bf3f  ffb524ffffff              PUSH dword ptr [EBP + 0xffffff24]
0046bf45  89748124                  MOV dword ptr [ECX + EAX*0x4 + 0x24],ESI
0046bf49  8bce                      MOV ECX,ESI
0046bf4b  c7460800000000            MOV dword ptr [ESI + 0x8],0x0
0046bf52  c7461800000000            MOV dword ptr [ESI + 0x18],0x0
0046bf59  e852de2900                CALL 0x00709db0
0046bf5e  8bb514ffffff              MOV ESI,dword ptr [EBP + 0xffffff14]
0046bf64  a17816c700                MOV EAX,[0x00c71678]
0046bf69  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046bf6f  8b44b024                  MOV EAX,dword ptr [EAX + ESI*0x4 + 0x24]
0046bf73  85c0                      TEST EAX,EAX
0046bf75  742e                      JZ 0x0046bfa5
0046bf77  8378040e                  CMP dword ptr [EAX + 0x4],0xe
0046bf7b  7528                      JNZ 0x0046bfa5
0046bf7d  6a00                      PUSH 0x0
0046bf7f  6870d7c500                PUSH 0xc5d770
0046bf84  68a4d7c500                PUSH 0xc5d7a4
0046bf89  6a00                      PUSH 0x0
0046bf8b  50                        PUSH EAX
0046bf8c  e820496800                CALL 0x00af08b1
0046bf91  83c414                    ADD ESP,0x14
0046bf94  c7401801000000            MOV dword ptr [EAX + 0x18],0x1
0046bf9b  c787b00b00000000f041      MOV dword ptr [EDI + 0xbb0],0x41f00000
0046bfa5  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046bfa9  f30f100d68a8ba00          MOVSS XMM1,dword ptr [0x00baa868]
0046bfb1  750d                      JNZ 0x0046bfc0
0046bfb3  0f28c1                    MOVAPS XMM0,XMM1
0046bfb6  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
0046bfbe  eb10                      JMP 0x0046bfd0
0046bfc0  f30f10059ca8ba00          MOVSS XMM0,dword ptr [0x00baa89c]
0046bfc8  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0046bfd0  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0046bfd4  7518                      JNZ 0x0046bfee
0046bfd6  837f2813                  CMP dword ptr [EDI + 0x28],0x13
0046bfda  7512                      JNZ 0x0046bfee
0046bfdc  f30f580534a8ba00          ADDSS XMM0,dword ptr [0x00baa834]
0046bfe4  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0046bfec  eb0e                      JMP 0x0046bffc
0046bfee  837f2859                  CMP dword ptr [EDI + 0x28],0x59
0046bff2  7508                      JNZ 0x0046bffc
0046bff4  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
0046bffc  8bcf                      MOV ECX,EDI
0046bffe  e88dc92300                CALL 0x006a8990
0046c003  8bd0                      MOV EDX,EAX
0046c005  85d2                      TEST EDX,EDX
0046c007  743f                      JZ 0x0046c048
0046c009  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046c00f  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
0046c016  7c08                      JL 0x0046c020
0046c018  8b4a28                    MOV ECX,dword ptr [EDX + 0x28]
0046c01b  83f901                    CMP ECX,0x1
0046c01e  740d                      JZ 0x0046c02d
0046c020  8b4a28                    MOV ECX,dword ptr [EDX + 0x28]
0046c023  8d41f6                    LEA EAX,[ECX + -0xa]
0046c026  3ddd030000                CMP EAX,0x3dd
0046c02b  771b                      JA 0x0046c048
0046c02d  81f9ef000000              CMP ECX,0xef
0046c033  7513                      JNZ 0x0046c048
0046c035  83bac00b000000            CMP dword ptr [EDX + 0xbc0],0x0
0046c03c  740a                      JZ 0x0046c048
0046c03e  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0046c046  eb08                      JMP 0x0046c050
0046c048  f30f10157ca8ba00          MOVSS XMM2,dword ptr [0x00baa87c]
0046c050  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
0046c058  8bcf                      MOV ECX,EDI
0046c05a  6a01                      PUSH 0x1
0046c05c  e88fbd2600                CALL 0x006d7df0
0046c061  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0046c069  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0046c071  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0046c079  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0046c07c  64890d00000000            MOV dword ptr FS:[0x0],ECX
0046c083  59                        POP ECX
0046c084  5f                        POP EDI
0046c085  5e                        POP ESI
0046c086  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0046c089  33cd                      XOR ECX,EBP
0046c08b  e89b306800                CALL 0x00aef12b
0046c090  8be5                      MOV ESP,EBP
0046c092  5d                        POP EBP
0046c093  8be3                      MOV ESP,EBX
0046c095  5b                        POP EBX
0046c096  c3                        RET
