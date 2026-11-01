; J460 NPC AI 0x004fdf80 AI_004fdf80
; types=829
; identities=829.0.0,829.1.0
; entry=004fdf80
004fdf80  53                        PUSH EBX
004fdf81  8bdc                      MOV EBX,ESP
004fdf83  83ec08                    SUB ESP,0x8
004fdf86  83e4f8                    AND ESP,0xfffffff8
004fdf89  83c404                    ADD ESP,0x4
004fdf8c  55                        PUSH EBP
004fdf8d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004fdf90  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004fdf94  8bec                      MOV EBP,ESP
004fdf96  6aff                      PUSH -0x1
004fdf98  688d40af00                PUSH 0xaf408d
004fdf9d  64a100000000              MOV EAX,FS:[0x0]
004fdfa3  50                        PUSH EAX
004fdfa4  53                        PUSH EBX
004fdfa5  81ec20010000              SUB ESP,0x120
004fdfab  a1b493bf00                MOV EAX,[0x00bf93b4]
004fdfb0  33c5                      XOR EAX,EBP
004fdfb2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004fdfb5  56                        PUSH ESI
004fdfb6  57                        PUSH EDI
004fdfb7  50                        PUSH EAX
004fdfb8  8d45f4                    LEA EAX,[EBP + -0xc]
004fdfbb  64a300000000              MOV FS:[0x0],EAX
004fdfc1  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
004fdfc7  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004fdfcd  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004fdfd5  660fd645e0                MOVQ qword ptr [EBP + -0x20],XMM0
004fdfda  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
004fdfe0  8bb250650200              MOV ESI,dword ptr [EDX + 0x26550]
004fdfe6  0b720c                    OR ESI,dword ptr [EDX + 0xc]
004fdfe9  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
004fdfef  8b81ec030000              MOV EAX,dword ptr [ECX + 0x3ec]
004fdff5  034120                    ADD EAX,dword ptr [ECX + 0x20]
004fdff8  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004fdffb  a174f6b100                MOV EAX,[0x00b1f674]
004fe000  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004fe003  e8f8b31f00                CALL 0x006f9400
004fe008  8bf8                      MOV EDI,EAX
004fe00a  0bfe                      OR EDI,ESI
004fe00c  e88fb51f00                CALL 0x006f95a0
004fe011  f7d0                      NOT EAX
004fe013  23c7                      AND EAX,EDI
004fe015  a801                      TEST AL,0x1
004fe017  740a                      JZ 0x004fe023
004fe019  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004fe021  eb15                      JMP 0x004fe038
004fe023  a17816c700                MOV EAX,[0x00c71678]
004fe028  f30f10801c650200          MOVSS XMM0,dword ptr [EAX + 0x2651c]
004fe030  f30f598018650200          MULSS XMM0,dword ptr [EAX + 0x26518]
004fe038  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
004fe03e  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004fe041  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
004fe044  c1e809                    SHR EAX,0x9
004fe047  a801                      TEST AL,0x1
004fe049  7510                      JNZ 0x004fe05b
004fe04b  0f2f05a4a3ba00            COMISS XMM0,dword ptr [0x00baa3a4]
004fe052  c6850fffffff00            MOV byte ptr [EBP + 0xffffff0f],0x0
004fe059  7607                      JBE 0x004fe062
004fe05b  c6850fffffff01            MOV byte ptr [EBP + 0xffffff0f],0x1
004fe062  8bbd14ffffff              MOV EDI,dword ptr [EBP + 0xffffff14]
004fe068  817f283d030000            CMP dword ptr [EDI + 0x28],0x33d
004fe06f  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004fe072  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
004fe078  7537                      JNZ 0x004fe0b1
004fe07a  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004fe07f  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004fe086  7629                      JBE 0x004fe0b1
004fe088  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004fe08b  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004fe08e  7421                      JZ 0x004fe0b1
004fe090  f6403001                  TEST byte ptr [EAX + 0x30],0x1
004fe094  7513                      JNZ 0x004fe0a9
004fe096  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
004fe099  394810                    CMP dword ptr [EAX + 0x10],ECX
004fe09c  7405                      JZ 0x004fe0a3
004fe09e  394818                    CMP dword ptr [EAX + 0x18],ECX
004fe0a1  7506                      JNZ 0x004fe0a9
004fe0a3  c70000000000              MOV dword ptr [EAX],0x0
004fe0a9  83c038                    ADD EAX,0x38
004fe0ac  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004fe0af  75df                      JNZ 0x004fe090
004fe0b1  660f6e9f10040000          MOVD XMM3,dword ptr [EDI + 0x410]
004fe0b9  0f57d2                    XORPS XMM2,XMM2
004fe0bc  f30f100d44aaba00          MOVSS XMM1,dword ptr [0x00baaa44]
004fe0c4  8bcf                      MOV ECX,EDI
004fe0c6  0f5bdb                    CVTDQ2PS XMM3,XMM3
004fe0c9  6a01                      PUSH 0x1
004fe0cb  e870ad1d00                CALL 0x006d8e40
004fe0d0  c787300f000000000000      MOV dword ptr [EDI + 0xf30],0x0
004fe0da  c787340f00000000803f      MOV dword ptr [EDI + 0xf34],0x3f800000
004fe0e4  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004fe0ea  83f808                    CMP EAX,0x8
004fe0ed  0f8765130000              JA 0x004ff458
004fe0f3  ff2485f8f54f00            JMP dword ptr [EAX*0x4 + 0x4ff5f8]
004fe0fa  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004fe104  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004fe10e  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
004fe118  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004fe120  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004fe128  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004fe130  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
004fe138  e91b130000                JMP 0x004ff458
004fe13d  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
004fe145  8bcf                      MOV ECX,EDI
004fe147  6a00                      PUSH 0x0
004fe149  e8d2a91d00                CALL 0x006d8b20
004fe14e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fe152  0f8429010000              JZ 0x004fe281
004fe158  68dcd2b100                PUSH 0xb1d2dc
004fe15d  8d4f78                    LEA ECX,[EDI + 0x78]
004fe160  e86bccf0ff                CALL 0x0040add0
004fe165  84c0                      TEST AL,AL
004fe167  0f8401010000              JZ 0x004fe26e
004fe16d  83bd00ffffff01            CMP dword ptr [EBP + 0xffffff00],0x1
004fe174  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004fe17e  0f85ea000000              JNZ 0x004fe26e
004fe184  e8d70d1f00                CALL 0x006eef60
004fe189  50                        PUSH EAX
004fe18a  6a00                      PUSH 0x0
004fe18c  57                        PUSH EDI
004fe18d  6840b6c700                PUSH 0xc7b640
004fe192  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004fe198  51                        PUSH ECX
004fe199  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fe19f  6a3d                      PUSH 0x3d
004fe1a1  68e8030000                PUSH 0x3e8
004fe1a6  e875a9f2ff                CALL 0x00428b20
004fe1ab  8bf0                      MOV ESI,EAX
004fe1ad  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
004fe1b3  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004fe1b9  85c9                      TEST ECX,ECX
004fe1bb  741e                      JZ 0x004fe1db
004fe1bd  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004fe1c3  81c1cc030000              ADD ECX,0x3cc
004fe1c9  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004fe1cf  50                        PUSH EAX
004fe1d0  e83b10fdff                CALL 0x004cf210
004fe1d5  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004fe1db  50                        PUSH EAX
004fe1dc  8bcf                      MOV ECX,EDI
004fe1de  8938                      MOV dword ptr [EAX],EDI
004fe1e0  e80bfbfcff                CALL 0x004cdcf0
004fe1e5  8b8770030000              MOV EAX,dword ptr [EDI + 0x370]
004fe1eb  51                        PUSH ECX
004fe1ec  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fe1f3  6a00                      PUSH 0x0
004fe1f5  6a02                      PUSH 0x2
004fe1f7  51                        PUSH ECX
004fe1f8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fe1ff  8bcf                      MOV ECX,EDI
004fe201  6a34                      PUSH 0x34
004fe203  898654040000              MOV dword ptr [ESI + 0x454],EAX
004fe209  c7865804000000004842      MOV dword ptr [ESI + 0x458],0x42480000
004fe213  c7865c04000005000000      MOV dword ptr [ESI + 0x45c],0x5
004fe21d  c7866004000005000000      MOV dword ptr [ESI + 0x460],0x5
004fe227  e874891d00                CALL 0x006d6ba0
004fe22c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fe232  6a04                      PUSH 0x4
004fe234  e837542000                CALL 0x00703670
004fe239  f30f101de0a3ba00          MOVSS XMM3,dword ptr [0x00baa3e0]
004fe241  51                        PUSH ECX
004fe242  0f28d3                    MOVAPS XMM2,XMM3
004fe245  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
004fe24c  0f28cb                    MOVAPS XMM1,XMM3
004fe24f  8d4dc0                    LEA ECX,[EBP + -0x40]
004fe252  e89956f2ff                CALL 0x004238f0
004fe257  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004fe25f  8bcf                      MOV ECX,EDI
004fe261  50                        PUSH EAX
004fe262  8d873c030000              LEA EAX,[EDI + 0x33c]
004fe268  50                        PUSH EAX
004fe269  e8e2821b00                CALL 0x006b6550
004fe26e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fe272  740d                      JZ 0x004fe281
004fe274  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004fe27b  0f85d7110000              JNZ 0x004ff458
004fe281  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fe288  7421                      JZ 0x004fe2ab
004fe28a  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004fe290  8bcf                      MOV ECX,EDI
004fe292  50                        PUSH EAX
004fe293  e898aa1d00                CALL 0x006d8d30
004fe298  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004fe29e  51                        PUSH ECX
004fe29f  8bc8                      MOV ECX,EAX
004fe2a1  e88a235100                CALL 0x00a10630
004fe2a6  0fb6d0                    MOVZX EDX,AL
004fe2a9  eb13                      JMP 0x004fe2be
004fe2ab  e8b00c1f00                CALL 0x006eef60
004fe2b0  33d2                      XOR EDX,EDX
004fe2b2  b90a000000                MOV ECX,0xa
004fe2b7  f7f1                      DIV ECX
004fe2b9  f7da                      NEG EDX
004fe2bb  1bd2                      SBB EDX,EDX
004fe2bd  42                        INC EDX
004fe2be  85d2                      TEST EDX,EDX
004fe2c0  7419                      JZ 0x004fe2db
004fe2c2  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004fe2cc  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
004fe2d6  e97d110000                JMP 0x004ff458
004fe2db  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fe2e2  0f8470110000              JZ 0x004ff458
004fe2e8  80bd0fffffff00            CMP byte ptr [EBP + 0xffffff0f],0x0
004fe2ef  b960d5b100                MOV ECX,0xb1d560
004fe2f4  b88c01b600                MOV EAX,0xb6018c
004fe2f9  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004fe303  0f44c1                    CMOVZ EAX,ECX
004fe306  8d4f48                    LEA ECX,[EDI + 0x48]
004fe309  6a00                      PUSH 0x0
004fe30b  50                        PUSH EAX
004fe30c  e86fc0f0ff                CALL 0x0040a380
004fe311  e942110000                JMP 0x004ff458
004fe316  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
004fe31e  8bcf                      MOV ECX,EDI
004fe320  6a00                      PUSH 0x0
004fe322  e8f9a71d00                CALL 0x006d8b20
004fe327  6a00                      PUSH 0x0
004fe329  8d7748                    LEA ESI,[EDI + 0x48]
004fe32c  68dcd2b100                PUSH 0xb1d2dc
004fe331  8bce                      MOV ECX,ESI
004fe333  e848c0f0ff                CALL 0x0040a380
004fe338  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fe33c  0f8405020000              JZ 0x004fe547
004fe342  68dcd2b100                PUSH 0xb1d2dc
004fe347  8d4f78                    LEA ECX,[EDI + 0x78]
004fe34a  e881caf0ff                CALL 0x0040add0
004fe34f  84c0                      TEST AL,AL
004fe351  0f84f0010000              JZ 0x004fe547
004fe357  8bcf                      MOV ECX,EDI
004fe359  e8e2041c00                CALL 0x006be840
004fe35e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fe365  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004fe36d  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004fe375  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004fe37d  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004fe385  7427                      JZ 0x004fe3ae
004fe387  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004fe38d  8bcf                      MOV ECX,EDI
004fe38f  50                        PUSH EAX
004fe390  e89ba91d00                CALL 0x006d8d30
004fe395  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004fe399  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004fe3a1  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004fe3a6  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
004fe3ae  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
004fe3b4  e8770bf4ff                CALL 0x0043ef30
004fe3b9  83bd00ffffff01            CMP dword ptr [EBP + 0xffffff00],0x1
004fe3c0  740c                      JZ 0x004fe3ce
004fe3c2  c78540ffffffcdcccc3e      MOV dword ptr [EBP + 0xffffff40],0x3ecccccd
004fe3cc  eb0a                      JMP 0x004fe3d8
004fe3ce  c7852cffffff3333b33f      MOV dword ptr [EBP + 0xffffff2c],0x3fb33333
004fe3d8  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
004fe3e0  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004fe3e8  f30f109508ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff08]
004fe3f0  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004fe3f8  0f28c1                    MOVAPS XMM0,XMM1
004fe3fb  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
004fe403  f30f59c1                  MULSS XMM0,XMM1
004fe407  0f28ca                    MOVAPS XMM1,XMM2
004fe40a  f30f119508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM2
004fe412  f30f59ca                  MULSS XMM1,XMM2
004fe416  f30f58c1                  ADDSS XMM0,XMM1
004fe41a  e83176f3ff                CALL 0x00435a50
004fe41f  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004fe426  f30f109504ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff04]
004fe42e  761d                      JBE 0x004fe44d
004fe430  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004fe438  f30f5ec8                  DIVSS XMM1,XMM0
004fe43c  0f28c1                    MOVAPS XMM0,XMM1
004fe43f  f30f598d08ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff08]
004fe447  f30f59d0                  MULSS XMM2,XMM0
004fe44b  eb08                      JMP 0x004fe455
004fe44d  f30f108d08ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff08]
004fe455  f30f5915e8a7ba00          MULSS XMM2,dword ptr [0x00baa7e8]
004fe45d  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004fe463  8bcf                      MOV ECX,EDI
004fe465  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
004fe46d  50                        PUSH EAX
004fe46e  6a02                      PUSH 0x2
004fe470  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004fe476  f30f1195ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM2
004fe47e  50                        PUSH EAX
004fe47f  8d873c030000              LEA EAX,[EDI + 0x33c]
004fe485  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
004fe48d  50                        PUSH EAX
004fe48e  e84dce1c00                CALL 0x006cb2e0
004fe493  8d4dc0                    LEA ECX,[EBP + -0x40]
004fe496  e8d58cf0ff                CALL 0x00407170
004fe49b  f30f1087e4000000          MOVSS XMM0,dword ptr [EDI + 0xe4]
004fe4a3  8d973c030000              LEA EDX,[EDI + 0x33c]
004fe4a9  f30f5905e49fba00          MULSS XMM0,dword ptr [0x00ba9fe4]
004fe4b1  b902000000                MOV ECX,0x2
004fe4b6  6840b6c700                PUSH 0xc7b640
004fe4bb  50                        PUSH EAX
004fe4bc  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004fe4c2  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fe4ca  f30f1087e8000000          MOVSS XMM0,dword ptr [EDI + 0xe8]
004fe4d2  f30f5905ecadba00          MULSS XMM0,dword ptr [0x00baadec]
004fe4da  50                        PUSH EAX
004fe4db  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fe4e3  e808981d00                CALL 0x006d7cf0
004fe4e8  8b8d00ffffff              MOV ECX,dword ptr [EBP + 0xffffff00]
004fe4ee  83c40c                    ADD ESP,0xc
004fe4f1  83f901                    CMP ECX,0x1
004fe4f4  750a                      JNZ 0x004fe500
004fe4f6  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004fe4fe  eb08                      JMP 0x004fe508
004fe500  f30f1005b0a4ba00          MOVSS XMM0,dword ptr [0x00baa4b0]
004fe508  51                        PUSH ECX
004fe509  f30f110424                MOVSS dword ptr [ESP],XMM0
004fe50e  ba9e000000                MOV EDX,0x9e
004fe513  6a00                      PUSH 0x0
004fe515  6a02                      PUSH 0x2
004fe517  51                        PUSH ECX
004fe518  b86c000000                MOV EAX,0x6c
004fe51d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fe524  0f45c2                    CMOVNZ EAX,EDX
004fe527  8bcf                      MOV ECX,EDI
004fe529  50                        PUSH EAX
004fe52a  e871861d00                CALL 0x006d6ba0
004fe52f  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004fe537  0f2f85f4feffff            COMISS XMM0,dword ptr [EBP + 0xfffffef4]
004fe53e  0f97c0                    SETA AL
004fe541  888748010000              MOV byte ptr [EDI + 0x148],AL
004fe547  83bd00ffffff01            CMP dword ptr [EBP + 0xffffff00],0x1
004fe54e  7547                      JNZ 0x004fe597
004fe550  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fe554  7454                      JZ 0x004fe5aa
004fe556  687cddb100                PUSH 0xb1dd7c
004fe55b  8d4f78                    LEA ECX,[EDI + 0x78]
004fe55e  e86dc8f0ff                CALL 0x0040add0
004fe563  84c0                      TEST AL,AL
004fe565  7430                      JZ 0x004fe597
004fe567  83bfc40b000003            CMP dword ptr [EDI + 0xbc4],0x3
004fe56e  7d27                      JGE 0x004fe597
004fe570  6a01                      PUSH 0x1
004fe572  68dcd2b100                PUSH 0xb1d2dc
004fe577  8bce                      MOV ECX,ESI
004fe579  e852c0f0ff                CALL 0x0040a5d0
004fe57e  84c0                      TEST AL,AL
004fe580  740f                      JZ 0x004fe591
004fe582  8d4e30                    LEA ECX,[ESI + 0x30]
004fe585  e826bcf0ff                CALL 0x0040a1b0
004fe58a  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004fe58e  8d7748                    LEA ESI,[EDI + 0x48]
004fe591  ff87c40b0000              INC dword ptr [EDI + 0xbc4]
004fe597  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fe59b  740d                      JZ 0x004fe5aa
004fe59d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004fe5a4  0f85ae0e0000              JNZ 0x004ff458
004fe5aa  80bd0fffffff00            CMP byte ptr [EBP + 0xffffff0f],0x0
004fe5b1  b98c01b600                MOV ECX,0xb6018c
004fe5b6  b860d5b100                MOV EAX,0xb1d560
004fe5bb  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004fe5c5  0f44c8                    CMOVZ ECX,EAX
004fe5c8  898d04ffffff              MOV dword ptr [EBP + 0xffffff04],ECX
004fe5ce  8b4e34                    MOV ECX,dword ptr [ESI + 0x34]
004fe5d1  85c9                      TEST ECX,ECX
004fe5d3  7450                      JZ 0x004fe625
004fe5d5  83791410                  CMP dword ptr [ECX + 0x14],0x10
004fe5d9  8bc1                      MOV EAX,ECX
004fe5db  7202                      JC 0x004fe5df
004fe5dd  8b01                      MOV EAX,dword ptr [ECX]
004fe5df  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
004fe5e5  8a10                      MOV DL,byte ptr [EAX]
004fe5e7  3a11                      CMP DL,byte ptr [ECX]
004fe5e9  751a                      JNZ 0x004fe605
004fe5eb  84d2                      TEST DL,DL
004fe5ed  7412                      JZ 0x004fe601
004fe5ef  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004fe5f2  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004fe5f5  750e                      JNZ 0x004fe605
004fe5f7  83c002                    ADD EAX,0x2
004fe5fa  83c102                    ADD ECX,0x2
004fe5fd  84d2                      TEST DL,DL
004fe5ff  75e4                      JNZ 0x004fe5e5
004fe601  33c0                      XOR EAX,EAX
004fe603  eb05                      JMP 0x004fe60a
004fe605  1bc0                      SBB EAX,EAX
004fe607  83c801                    OR EAX,0x1
004fe60a  85c0                      TEST EAX,EAX
004fe60c  7517                      JNZ 0x004fe625
004fe60e  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004fe611  80783400                  CMP byte ptr [EAX + 0x34],0x0
004fe615  0f843d0e0000              JZ 0x004ff458
004fe61b  807e4400                  CMP byte ptr [ESI + 0x44],0x0
004fe61f  0f85330e0000              JNZ 0x004ff458
004fe625  6a01                      PUSH 0x1
004fe627  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
004fe62d  8bce                      MOV ECX,ESI
004fe62f  e89cbff0ff                CALL 0x0040a5d0
004fe634  84c0                      TEST AL,AL
004fe636  0f841c0e0000              JZ 0x004ff458
004fe63c  8d4e30                    LEA ECX,[ESI + 0x30]
004fe63f  e86cbbf0ff                CALL 0x0040a1b0
004fe644  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004fe648  e90b0e0000                JMP 0x004ff458
004fe64d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fe651  8d4778                    LEA EAX,[EDI + 0x78]
004fe654  7419                      JZ 0x004fe66f
004fe656  68dcd2b100                PUSH 0xb1d2dc
004fe65b  8bc8                      MOV ECX,EAX
004fe65d  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
004fe663  e808c8f0ff                CALL 0x0040ae70
004fe668  84c0                      TEST AL,AL
004fe66a  8d4778                    LEA EAX,[EDI + 0x78]
004fe66d  7547                      JNZ 0x004fe6b6
004fe66f  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004fe675  8bce                      MOV ECX,ESI
004fe677  8d873c030000              LEA EAX,[EDI + 0x33c]
004fe67d  50                        PUSH EAX
004fe67e  e80d463100                CALL 0x00812c90
004fe683  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
004fe689  8bd0                      MOV EDX,EAX
004fe68b  8bc1                      MOV EAX,ECX
004fe68d  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
004fe693  85d2                      TEST EDX,EDX
004fe695  781f                      JS 0x004fe6b6
004fe697  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
004fe69d  81fac0010000              CMP EDX,0x1c0
004fe6a3  7d11                      JGE 0x004fe6b6
004fe6a5  c784966c07000084030000    MOV dword ptr [ESI + EDX*0x4 + 0x76c],0x384
004fe6b0  898508ffffff              MOV dword ptr [EBP + 0xffffff08],EAX
004fe6b6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fe6ba  0f84d3050000              JZ 0x004fec93
004fe6c0  68dcd2b100                PUSH 0xb1d2dc
004fe6c5  8bc8                      MOV ECX,EAX
004fe6c7  e804c7f0ff                CALL 0x0040add0
004fe6cc  84c0                      TEST AL,AL
004fe6ce  0f84bf050000              JZ 0x004fec93
004fe6d4  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004fe6da  8bce                      MOV ECX,ESI
004fe6dc  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
004fe6df  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
004fe6e5  8d873c030000              LEA EAX,[EDI + 0x33c]
004fe6eb  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004fe6f3  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004fe6fb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004fe703  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004fe70b  0f57c0                    XORPS XMM0,XMM0
004fe70e  50                        PUSH EAX
004fe70f  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004fe717  e874453100                CALL 0x00812c90
004fe71c  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
004fe722  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
004fe728  c78500ffffff00000000      MOV dword ptr [EBP + 0xffffff00],0x0
004fe732  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fe739  7462                      JZ 0x004fe79d
004fe73b  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004fe741  0f57d2                    XORPS XMM2,XMM2
004fe744  50                        PUSH EAX
004fe745  8bcf                      MOV ECX,EDI
004fe747  e8849b1d00                CALL 0x006d82d0
004fe74c  8b9500ffffff              MOV EDX,dword ptr [EBP + 0xffffff00]
004fe752  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004fe758  f30f101500aaba00          MOVSS XMM2,dword ptr [0x00baaa00]
004fe760  660f6ec2                  MOVD XMM0,EDX
004fe764  0f5bc0                    CVTDQ2PS XMM0,XMM0
004fe767  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
004fe76f  f30f5cd0                  SUBSS XMM2,XMM0
004fe773  0f28c2                    MOVAPS XMM0,XMM2
004fe776  f30f595004                MULSS XMM2,dword ptr [EAX + 0x4]
004fe77b  f30f5900                  MULSS XMM0,dword ptr [EAX]
004fe77f  f30f585104                ADDSS XMM2,dword ptr [ECX + 0x4]
004fe784  f30f5801                  ADDSS XMM0,dword ptr [ECX]
004fe788  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004fe790  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fe798  e9c8000000                JMP 0x004fe865
004fe79d  e8be071f00                CALL 0x006eef60
004fe7a2  a803                      TEST AL,0x3
004fe7a4  7534                      JNZ 0x004fe7da
004fe7a6  51                        PUSH ECX
004fe7a7  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004fe7ad  c7042400000000            MOV dword ptr [ESP],0x0
004fe7b4  50                        PUSH EAX
004fe7b5  8bcf                      MOV ECX,EDI
004fe7b7  e884041c00                CALL 0x006bec40
004fe7bc  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004fe7c0  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004fe7c5  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004fe7cd  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fe7d5  e985000000                JMP 0x004fe85f
004fe7da  e881071f00                CALL 0x006eef60
004fe7df  0f57c0                    XORPS XMM0,XMM0
004fe7e2  f20f2ac0                  CVTSI2SD XMM0,EAX
004fe7e6  c1e81f                    SHR EAX,0x1f
004fe7e9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fe7f2  660f5ac0                  CVTPD2PS XMM0,XMM0
004fe7f6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fe7fe  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004fe806  f30f58c0                  ADDSS XMM0,XMM0
004fe80a  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fe812  e829edf1ff                CALL 0x0041d540
004fe817  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004fe81f  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004fe827  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004fe82f  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fe837  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fe83f  e8dcecf1ff                CALL 0x0041d520
004fe844  0f28d0                    MOVAPS XMM2,XMM0
004fe847  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
004fe84f  f30f5915b4a9ba00          MULSS XMM2,dword ptr [0x00baa9b4]
004fe857  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
004fe85f  8b9500ffffff              MOV EDX,dword ptr [EBP + 0xffffff00]
004fe865  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fe86c  f30f1195fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM2
004fe874  f30f1195f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM2
004fe87c  7405                      JZ 0x004fe883
004fe87e  83fa03                    CMP EDX,0x3
004fe881  7e43                      JLE 0x004fe8c6
004fe883  51                        PUSH ECX
004fe884  c7042400008042            MOV dword ptr [ESP],0x42800000
004fe88b  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004fe891  50                        PUSH EAX
004fe892  8d45e4                    LEA EAX,[EBP + -0x1c]
004fe895  8bce                      MOV ECX,ESI
004fe897  50                        PUSH EAX
004fe898  e883fc3100                CALL 0x0081e520
004fe89d  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004fe8a1  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004fe8a6  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004fe8ae  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004fe8b6  f30f1195fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM2
004fe8be  f30f1195f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM2
004fe8c6  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004fe8ce  f30f5cc8                  SUBSS XMM1,XMM0
004fe8d2  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004fe8da  f30f5cc2                  SUBSS XMM0,XMM2
004fe8de  f30f59c9                  MULSS XMM1,XMM1
004fe8e2  f30f59c0                  MULSS XMM0,XMM0
004fe8e6  f30f58c1                  ADDSS XMM0,XMM1
004fe8ea  e86171f3ff                CALL 0x00435a50
004fe8ef  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
004fe8f7  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004fe8ff  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
004fe907  f30f5cc1                  SUBSS XMM0,XMM1
004fe90b  f30f5ec1                  DIVSS XMM0,XMM1
004fe90f  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004fe917  f30f2cc8                  CVTTSS2SI ECX,XMM0
004fe91b  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fe923  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
004fe929  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004fe931  f30f5ec1                  DIVSS XMM0,XMM1
004fe935  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004fe93d  f30f2cc0                  CVTTSS2SI EAX,XMM0
004fe941  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
004fe947  85c9                      TEST ECX,ECX
004fe949  782d                      JS 0x004fe978
004fe94b  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
004fe94e  3bca                      CMP ECX,EDX
004fe950  7d26                      JGE 0x004fe978
004fe952  85c0                      TEST EAX,EAX
004fe954  7822                      JS 0x004fe978
004fe956  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
004fe959  7d1d                      JGE 0x004fe978
004fe95b  0fafc2                    IMUL EAX,EDX
004fe95e  03c1                      ADD EAX,ECX
004fe960  3dbf010000                CMP EAX,0x1bf
004fe965  7711                      JA 0x004fe978
004fe967  81bc866c070000f4010000    CMP dword ptr [ESI + EAX*0x4 + 0x76c],0x1f4
004fe972  0f8d7e000000              JGE 0x004fe9f6
004fe978  6a00                      PUSH 0x0
004fe97a  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004fe980  50                        PUSH EAX
004fe981  8d8f14040000              LEA ECX,[EDI + 0x414]
004fe987  e8e4862e00                CALL 0x007e7070
004fe98c  84c0                      TEST AL,AL
004fe98e  7466                      JZ 0x004fe9f6
004fe990  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004fe998  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
004fe9a0  0f2fc8                    COMISS XMM1,XMM0
004fe9a3  7651                      JBE 0x004fe9f6
004fe9a5  0f2f8514ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff14]
004fe9ac  7648                      JBE 0x004fe9f6
004fe9ae  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
004fe9b4  8b85fcfeffff              MOV EAX,dword ptr [EBP + 0xfffffefc]
004fe9ba  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004fe9c2  85c9                      TEST ECX,ECX
004fe9c4  781d                      JS 0x004fe9e3
004fe9c6  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
004fe9c9  3bca                      CMP ECX,EDX
004fe9cb  7d16                      JGE 0x004fe9e3
004fe9cd  85c0                      TEST EAX,EAX
004fe9cf  7812                      JS 0x004fe9e3
004fe9d1  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
004fe9d4  7d0d                      JGE 0x004fe9e3
004fe9d6  0fafc2                    IMUL EAX,EDX
004fe9d9  03c1                      ADD EAX,ECX
004fe9db  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
004fe9e1  eb0a                      JMP 0x004fe9ed
004fe9e3  c785f4feffffffffffff      MOV dword ptr [EBP + 0xfffffef4],0xffffffff
004fe9ed  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fe9f4  7516                      JNZ 0x004fea0c
004fe9f6  8b8500ffffff              MOV EAX,dword ptr [EBP + 0xffffff00]
004fe9fc  40                        INC EAX
004fe9fd  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
004fea03  83f80a                    CMP EAX,0xa
004fea06  0f8c26fdffff              JL 0x004fe732
004fea0c  8b8504ffffff              MOV EAX,dword ptr [EBP + 0xffffff04]
004fea12  3b85f4feffff              CMP EAX,dword ptr [EBP + 0xfffffef4]
004fea18  0f84f9000000              JZ 0x004feb17
004fea1e  6a00                      PUSH 0x0
004fea20  50                        PUSH EAX
004fea21  8bce                      MOV ECX,ESI
004fea23  e8f83d3200                CALL 0x00822820
004fea28  84c0                      TEST AL,AL
004fea2a  0f84e7000000              JZ 0x004feb17
004fea30  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004fea36  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
004fea3c  c78514ffffff89000000      MOV dword ptr [EBP + 0xffffff14],0x89
004fea46  e8357d4500                CALL 0x00956780
004fea4b  83ec08                    SUB ESP,0x8
004fea4e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004fea56  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fea5d  6a00                      PUSH 0x0
004fea5f  6a02                      PUSH 0x2
004fea61  51                        PUSH ECX
004fea62  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fea69  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004fea6f  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
004fea75  e8b6f14200                CALL 0x0092dc30
004fea7a  8d4dcc                    LEA ECX,[EBP + -0x34]
004fea7d  e81e9effff                CALL 0x004f88a0
004fea82  c745cc0e000000            MOV dword ptr [EBP + -0x34],0xe
004fea89  e8d2041f00                CALL 0x006eef60
004fea8e  83e001                    AND EAX,0x1
004fea91  40                        INC EAX
004fea92  6bc07d                    IMUL EAX,EAX,0x7d
004fea95  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004fea98  e8c3041f00                CALL 0x006eef60
004fea9d  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004feaa0  e8bb041f00                CALL 0x006eef60
004feaa5  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
004feaab  8bce                      MOV ECX,ESI
004feaad  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004feab0  8d45cc                    LEA EAX,[EBP + -0x34]
004feab3  50                        PUSH EAX
004feab4  ffb504ffffff              PUSH dword ptr [EBP + 0xffffff04]
004feaba  e891d22e00                CALL 0x007ebd50
004feabf  8b8504ffffff              MOV EAX,dword ptr [EBP + 0xffffff04]
004feac5  3dbf010000                CMP EAX,0x1bf
004feaca  771a                      JA 0x004feae6
004feacc  8b4c8624                  MOV ECX,dword ptr [ESI + EAX*0x4 + 0x24]
004fead0  85c9                      TEST ECX,ECX
004fead2  7412                      JZ 0x004feae6
004fead4  8379040e                  CMP dword ptr [ECX + 0x4],0xe
004fead8  750c                      JNZ 0x004feae6
004feada  8b01                      MOV EAX,dword ptr [ECX]
004feadc  c7411801000000            MOV dword ptr [ECX + 0x18],0x1
004feae3  ff5004                    CALL dword ptr [EAX + 0x4]
004feae6  8d4dc0                    LEA ECX,[EBP + -0x40]
004feae9  e88286f0ff                CALL 0x00407170
004feaee  6a00                      PUSH 0x0
004feaf0  51                        PUSH ECX
004feaf1  c704240050c347            MOV dword ptr [ESP],0x47c35000
004feaf8  50                        PUSH EAX
004feaf9  51                        PUSH ECX
004feafa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004feb00  8d873c030000              LEA EAX,[EDI + 0x33c]
004feb06  c704240000a040            MOV dword ptr [ESP],0x40a00000
004feb0d  6a04                      PUSH 0x4
004feb0f  6a04                      PUSH 0x4
004feb11  50                        PUSH EAX
004feb12  e819482000                CALL 0x00703330
004feb17  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
004feb1d  99                        CDQ
004feb1e  f77e0c                    IDIV dword ptr [ESI + 0xc]
004feb21  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004feb29  660f6ec0                  MOVD XMM0,EAX
004feb2d  0f5bc0                    CVTDQ2PS XMM0,XMM0
004feb30  660f6eca                  MOVD XMM1,EDX
004feb34  0f5bc9                    CVTDQ2PS XMM1,XMM1
004feb37  f30f59c2                  MULSS XMM0,XMM2
004feb3b  f30f59ca                  MULSS XMM1,XMM2
004feb3f  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
004feb47  f30f58ca                  ADDSS XMM1,XMM2
004feb4b  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004feb53  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004feb5b  0f2f8738030000            COMISS XMM0,dword ptr [EDI + 0x338]
004feb62  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
004feb6a  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004feb74  0f8607010000              JBE 0x004fec81
004feb7a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004feb7e  8d7748                    LEA ESI,[EDI + 0x48]
004feb81  750f                      JNZ 0x004feb92
004feb83  c78514ffffffffffffff      MOV dword ptr [EBP + 0xffffff14],0xffffffff
004feb8d  e993000000                JMP 0x004fec25
004feb92  d98788000000              FLD dword ptr [EDI + 0x88]
004feb98  83ec08                    SUB ESP,0x8
004feb9b  dd1c24                    FSTP qword ptr [ESP]
004feb9e  e8741d5f00                CALL 0x00af0917
004feba3  8b7634                    MOV ESI,dword ptr [ESI + 0x34]
004feba6  83c408                    ADD ESP,0x8
004feba9  d99d10ffffff              FSTP dword ptr [EBP + 0xffffff10]
004febaf  d98510ffffff              FLD dword ptr [EBP + 0xffffff10]
004febb5  d99d10ffffff              FSTP dword ptr [EBP + 0xffffff10]
004febbb  f30f2c8510ffffff          CVTTSS2SI EAX,dword ptr [EBP + 0xffffff10]
004febc3  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004febc9  85f6                      TEST ESI,ESI
004febcb  740c                      JZ 0x004febd9
004febcd  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004febd1  8bc6                      MOV EAX,ESI
004febd3  7209                      JC 0x004febde
004febd5  8b06                      MOV EAX,dword ptr [ESI]
004febd7  eb05                      JMP 0x004febde
004febd9  b8eca4b100                MOV EAX,0xb1a4ec
004febde  b9fc0bb600                MOV ECX,0xb60bfc
004febe3  8a10                      MOV DL,byte ptr [EAX]
004febe5  3a11                      CMP DL,byte ptr [ECX]
004febe7  751a                      JNZ 0x004fec03
004febe9  84d2                      TEST DL,DL
004febeb  7412                      JZ 0x004febff
004febed  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004febf0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004febf3  750e                      JNZ 0x004fec03
004febf5  83c002                    ADD EAX,0x2
004febf8  83c102                    ADD ECX,0x2
004febfb  84d2                      TEST DL,DL
004febfd  75e4                      JNZ 0x004febe3
004febff  33c0                      XOR EAX,EAX
004fec01  eb05                      JMP 0x004fec08
004fec03  1bc0                      SBB EAX,EAX
004fec05  83c801                    OR EAX,0x1
004fec08  85c0                      TEST EAX,EAX
004fec0a  7516                      JNZ 0x004fec22
004fec0c  85f6                      TEST ESI,ESI
004fec0e  7433                      JZ 0x004fec43
004fec10  384634                    CMP byte ptr [ESI + 0x34],AL
004fec13  742e                      JZ 0x004fec43
004fec15  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004fec1b  8d7748                    LEA ESI,[EDI + 0x48]
004fec1e  7523                      JNZ 0x004fec43
004fec20  eb03                      JMP 0x004fec25
004fec22  8d7748                    LEA ESI,[EDI + 0x48]
004fec25  6a01                      PUSH 0x1
004fec27  68fc0bb600                PUSH 0xb60bfc
004fec2c  8bce                      MOV ECX,ESI
004fec2e  e89db9f0ff                CALL 0x0040a5d0
004fec33  84c0                      TEST AL,AL
004fec35  740c                      JZ 0x004fec43
004fec37  8d4e30                    LEA ECX,[ESI + 0x30]
004fec3a  e871b5f0ff                CALL 0x0040a1b0
004fec3f  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004fec43  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fec47  8bb508ffffff              MOV ESI,dword ptr [EBP + 0xffffff08]
004fec4d  7412                      JZ 0x004fec61
004fec4f  660f6e8d14ffffff          MOVD XMM1,dword ptr [EBP + 0xffffff14]
004fec57  8bce                      MOV ECX,ESI
004fec59  0f5bc9                    CVTDQ2PS XMM1,XMM1
004fec5c  e89fa1f0ff                CALL 0x00408e00
004fec61  c787300f000000000000      MOV dword ptr [EDI + 0xf30],0x0
004fec6b  c787340f0000000080bf      MOV dword ptr [EDI + 0xf34],0xbf800000
004fec75  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
004fec7f  eb18                      JMP 0x004fec99
004fec81  8bb508ffffff              MOV ESI,dword ptr [EBP + 0xffffff08]
004fec87  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
004fec91  eb06                      JMP 0x004fec99
004fec93  8bb508ffffff              MOV ESI,dword ptr [EBP + 0xffffff08]
004fec99  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fec9d  7441                      JZ 0x004fece0
004fec9f  687cddb100                PUSH 0xb1dd7c
004feca4  8bce                      MOV ECX,ESI
004feca6  e825c1f0ff                CALL 0x0040add0
004fecab  84c0                      TEST AL,AL
004fecad  741e                      JZ 0x004feccd
004fecaf  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
004fecb9  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004fecc3  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004feccd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004fecd1  740d                      JZ 0x004fece0
004fecd3  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004fecda  0f8578070000              JNZ 0x004ff458
004fece0  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004fecea  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004fecf2  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004fecfa  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004fed02  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004fed0a  e949070000                JMP 0x004ff458
004fed0f  51                        PUSH ECX
004fed10  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
004fed16  c7042400000000            MOV dword ptr [ESP],0x0
004fed1d  50                        PUSH EAX
004fed1e  8bcf                      MOV ECX,EDI
004fed20  e81bff1b00                CALL 0x006bec40
004fed25  8bcf                      MOV ECX,EDI
004fed27  e814fb1b00                CALL 0x006be840
004fed2c  ff7720                    PUSH dword ptr [EDI + 0x20]
004fed2f  8bcf                      MOV ECX,EDI
004fed31  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
004fed37  6a1e                      PUSH 0x1e
004fed39  e8d2d91a00                CALL 0x006ac710
004fed3e  84c0                      TEST AL,AL
004fed40  7426                      JZ 0x004fed68
004fed42  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
004fed48  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
004fed50  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
004fed58  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004fed60  f30f118fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM1
004fed68  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fed6f  0f85e7020000              JNZ 0x004ff05c
004fed75  6a00                      PUSH 0x0
004fed77  6a00                      PUSH 0x0
004fed79  6a00                      PUSH 0x0
004fed7b  6a00                      PUSH 0x0
004fed7d  6a00                      PUSH 0x0
004fed7f  8d8df8feffff              LEA ECX,[EBP + 0xfffffef8]
004fed85  51                        PUSH ECX
004fed86  8d873c030000              LEA EAX,[EDI + 0x33c]
004fed8c  8bce                      MOV ECX,ESI
004fed8e  50                        PUSH EAX
004fed8f  e85c202f00                CALL 0x007f0df0
004fed94  84c0                      TEST AL,AL
004fed96  0f84c0020000              JZ 0x004ff05c
004fed9c  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004feda4  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004fedac  f30f5c85fcfeffff          SUBSS XMM0,dword ptr [EBP + 0xfffffefc]
004fedb4  f30f5c8df8feffff          SUBSS XMM1,dword ptr [EBP + 0xfffffef8]
004fedbc  f30f59c0                  MULSS XMM0,XMM0
004fedc0  f30f59c9                  MULSS XMM1,XMM1
004fedc4  f30f58c1                  ADDSS XMM0,XMM1
004fedc8  e8836cf3ff                CALL 0x00435a50
004fedcd  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004fedd5  8d4ddc                    LEA ECX,[EBP + -0x24]
004fedd8  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004fede0  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004fede8  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
004fedf0  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004fedf8  e883a22e00                CALL 0x007e9080
004fedfd  f30f109504ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff04]
004fee05  f30f109df4feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffef4]
004fee0d  f30f599514ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff14]
004fee15  f30f599d14ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff14]
004fee1d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004fee25  d99d10ffffff              FSTP dword ptr [EBP + 0xffffff10]
004fee2b  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004fee33  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004fee3b  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
004fee43  f30f59d0                  MULSS XMM2,XMM0
004fee47  f30f59d8                  MULSS XMM3,XMM0
004fee4b  f30f5895f8feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffef8]
004fee53  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004fee5b  f30f589dfcfeffff          ADDSS XMM3,dword ptr [EBP + 0xfffffefc]
004fee63  f30f5cca                  SUBSS XMM1,XMM2
004fee67  f30f1195f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM2
004fee6f  f30f5cc3                  SUBSS XMM0,XMM3
004fee73  f30f119dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM3
004fee7b  f30f59c9                  MULSS XMM1,XMM1
004fee7f  f30f59c0                  MULSS XMM0,XMM0
004fee83  f30f58c1                  ADDSS XMM0,XMM1
004fee87  e8c46bf3ff                CALL 0x00435a50
004fee8c  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004fee94  8d4ddc                    LEA ECX,[EBP + -0x24]
004fee97  a17816c700                MOV EAX,[0x00c71678]
004fee9c  f30f100d14aaba00          MOVSS XMM1,dword ptr [0x00baaa14]
004feea4  f30f5fc8                  MAXSS XMM1,XMM0
004feea8  8bb0f8640200              MOV ESI,dword ptr [EAX + 0x264f8]
004feeae  2bb728030000              SUB ESI,dword ptr [EDI + 0x328]
004feeb4  f30f5d0de49fba00          MINSS XMM1,dword ptr [0x00ba9fe4]
004feebc  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
004feec4  e8b7a12e00                CALL 0x007e9080
004feec9  660f6ec6                  MOVD XMM0,ESI
004feecd  8d4ddc                    LEA ECX,[EBP + -0x24]
004feed0  0f5bc0                    CVTDQ2PS XMM0,XMM0
004feed3  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004feedb  d88d10ffffff              FMUL dword ptr [EBP + 0xffffff10]
004feee1  d99d10ffffff              FSTP dword ptr [EBP + 0xffffff10]
004feee7  e894a12e00                CALL 0x007e9080
004feeec  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004feef4  d80d30abba00              FMUL dword ptr [0x00baab30]
004feefa  f30f58c0                  ADDSS XMM0,XMM0
004feefe  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004fef06  d88510ffffff              FADD dword ptr [EBP + 0xffffff10]
004fef0c  d99d10ffffff              FSTP dword ptr [EBP + 0xffffff10]
004fef12  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004fef1a  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004fef22  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004fef2a  e811e6f1ff                CALL 0x0041d540
004fef2f  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004fef37  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004fef3f  e8dce5f1ff                CALL 0x0041d520
004fef44  0f28d0                    MOVAPS XMM2,XMM0
004fef47  0f57ed                    XORPS XMM5,XMM5
004fef4a  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004fef52  0f28ca                    MOVAPS XMM1,XMM2
004fef55  f30f599504ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff04]
004fef5d  0f28d8                    MOVAPS XMM3,XMM0
004fef60  f30f599d04ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff04]
004fef68  f30f59cd                  MULSS XMM1,XMM5
004fef6c  f30f59c5                  MULSS XMM0,XMM5
004fef70  f30f5cd9                  SUBSS XMM3,XMM1
004fef74  f30f58d0                  ADDSS XMM2,XMM0
004fef78  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fef80  f30f589df8feffff          ADDSS XMM3,dword ptr [EBP + 0xfffffef8]
004fef88  f30f119df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM3
004fef90  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
004fef98  f30f58c2                  ADDSS XMM0,XMM2
004fef9c  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
004fefa4  8d45e4                    LEA EAX,[EBP + -0x1c]
004fefa7  50                        PUSH EAX
004fefa8  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
004fefae  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
004fefb6  f30f5c9f3c030000          SUBSS XMM3,dword ptr [EDI + 0x33c]
004fefbe  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fefc6  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004fefce  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
004fefd6  f30f119decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM3
004fefde  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fefe6  e845105100                CALL 0x00a10030
004fefeb  f30f109510ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff10]
004feff3  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
004feffa  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
004ff000  f30f1018                  MOVSS XMM3,dword ptr [EAX]
004ff004  f30f106004                MOVSS XMM4,dword ptr [EAX + 0x4]
004ff009  f30f591da4a3ba00          MULSS XMM3,dword ptr [0x00baa3a4]
004ff011  f30f5925a4a3ba00          MULSS XMM4,dword ptr [0x00baa3a4]
004ff019  9f                        LAHF
004ff01a  f6c444                    TEST AH,0x44
004ff01d  7b5e                      JNP 0x004ff07d
004ff01f  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004ff027  0f28c1                    MOVAPS XMM0,XMM1
004ff02a  f30f59cc                  MULSS XMM1,XMM4
004ff02e  f30f59c3                  MULSS XMM0,XMM3
004ff032  f30f5eca                  DIVSS XMM1,XMM2
004ff036  f30f5ec2                  DIVSS XMM0,XMM2
004ff03a  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004ff042  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004ff04a  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004ff052  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004ff05a  eb21                      JMP 0x004ff07d
004ff05c  6a01                      PUSH 0x1
004ff05e  68f3010000                PUSH 0x1f3
004ff063  8d8f14040000              LEA ECX,[EDI + 0x414]
004ff069  51                        PUSH ECX
004ff06a  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
004ff070  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004ff077  50                        PUSH EAX
004ff078  e843432e00                CALL 0x007e33c0
004ff07d  51                        PUSH ECX
004ff07e  8d45e4                    LEA EAX,[EBP + -0x1c]
004ff081  c7042400000000            MOV dword ptr [ESP],0x0
004ff088  50                        PUSH EAX
004ff089  8bcf                      MOV ECX,EDI
004ff08b  e8b0fb1b00                CALL 0x006bec40
004ff090  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004ff097  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004ff09b  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004ff0a0  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004ff0a8  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004ff0b0  f30f59c9                  MULSS XMM1,XMM1
004ff0b4  f30f59c0                  MULSS XMM0,XMM0
004ff0b8  f30f58c8                  ADDSS XMM1,XMM0
004ff0bc  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
004ff0c4  7435                      JZ 0x004ff0fb
004ff0c6  6a09                      PUSH 0x9
004ff0c8  8bcf                      MOV ECX,EDI
004ff0ca  e891911d00                CALL 0x006d8260
004ff0cf  84c0                      TEST AL,AL
004ff0d1  7571                      JNZ 0x004ff144
004ff0d3  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
004ff0db  8bcf                      MOV ECX,EDI
004ff0dd  6a07                      PUSH 0x7
004ff0df  6a00                      PUSH 0x0
004ff0e1  e87abd1c00                CALL 0x006cae60
004ff0e6  84c0                      TEST AL,AL
004ff0e8  755a                      JNZ 0x004ff144
004ff0ea  81bf1004000096000000      CMP dword ptr [EDI + 0x410],0x96
004ff0f4  7f4e                      JG 0x004ff144
004ff0f6  e9b7010000                JMP 0x004ff2b2
004ff0fb  e860fe1e00                CALL 0x006eef60
004ff100  33d2                      XOR EDX,EDX
004ff102  b90a000000                MOV ECX,0xa
004ff107  f7f1                      DIV ECX
004ff109  85d2                      TEST EDX,EDX
004ff10b  0f85a1010000              JNZ 0x004ff2b2
004ff111  f30f10052cacba00          MOVSS XMM0,dword ptr [0x00baac2c]
004ff119  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
004ff121  0f2fc1                    COMISS XMM0,XMM1
004ff124  771e                      JA 0x004ff144
004ff126  83bf100400005a            CMP dword ptr [EDI + 0x410],0x5a
004ff12d  0f8e7f010000              JLE 0x004ff2b2
004ff133  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
004ff13b  0f2fc1                    COMISS XMM0,XMM1
004ff13e  0f866e010000              JBE 0x004ff2b2
004ff144  8d873c030000              LEA EAX,[EDI + 0x33c]
004ff14a  8bce                      MOV ECX,ESI
004ff14c  50                        PUSH EAX
004ff14d  e83e3b3100                CALL 0x00812c90
004ff152  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004ff158  85c0                      TEST EAX,EAX
004ff15a  0f88d5000000              JS 0x004ff235
004ff160  ffb740030000              PUSH dword ptr [EDI + 0x340]
004ff166  8bce                      MOV ECX,ESI
004ff168  ffb73c030000              PUSH dword ptr [EDI + 0x33c]
004ff16e  e80d162f00                CALL 0x007f0780
004ff173  85c0                      TEST EAX,EAX
004ff175  0f85ba000000              JNZ 0x004ff235
004ff17b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004ff182  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
004ff188  7518                      JNZ 0x004ff1a2
004ff18a  3dc0010000                CMP EAX,0x1c0
004ff18f  7d11                      JGE 0x004ff1a2
004ff191  81bc866c070000f4010000    CMP dword ptr [ESI + EAX*0x4 + 0x76c],0x1f4
004ff19c  0f8d93000000              JGE 0x004ff235
004ff1a2  99                        CDQ
004ff1a3  8d4f48                    LEA ECX,[EDI + 0x48]
004ff1a6  f77e0c                    IDIV dword ptr [ESI + 0xc]
004ff1a9  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004ff1b1  80bd0fffffff00            CMP byte ptr [EBP + 0xffffff0f],0x0
004ff1b8  6a00                      PUSH 0x0
004ff1ba  660f6ec0                  MOVD XMM0,EAX
004ff1be  660f6eca                  MOVD XMM1,EDX
004ff1c2  bae80bb600                MOV EDX,0xb60be8
004ff1c7  0f5bc9                    CVTDQ2PS XMM1,XMM1
004ff1ca  0f5bc0                    CVTDQ2PS XMM0,XMM0
004ff1cd  f30f59ca                  MULSS XMM1,XMM2
004ff1d1  f30f59c2                  MULSS XMM0,XMM2
004ff1d5  f30f58ca                  ADDSS XMM1,XMM2
004ff1d9  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
004ff1e1  f30f118f3c030000          MOVSS dword ptr [EDI + 0x33c],XMM1
004ff1e9  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
004ff1f1  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004ff1fb  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
004ff203  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004ff209  898738030000              MOV dword ptr [EDI + 0x338],EAX
004ff20f  b8080cb600                MOV EAX,0xb60c08
004ff214  0f44c2                    CMOVZ EAX,EDX
004ff217  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004ff221  50                        PUSH EAX
004ff222  e859b1f0ff                CALL 0x0040a380
004ff227  6a01                      PUSH 0x1
004ff229  8bcf                      MOV ECX,EDI
004ff22b  e880121c00                CALL 0x006c04b0
004ff230  e923020000                JMP 0x004ff458
004ff235  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
004ff23b  81fa96000000              CMP EDX,0x96
004ff241  7e6f                      JLE 0x004ff2b2
004ff243  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004ff24a  7466                      JZ 0x004ff2b2
004ff24c  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004ff254  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004ff25c  2bc8                      SUB ECX,EAX
004ff25e  b889888888                MOV EAX,0x88888889
004ff263  03ca                      ADD ECX,EDX
004ff265  f7e9                      IMUL ECX
004ff267  b889888888                MOV EAX,0x88888889
004ff26c  03d1                      ADD EDX,ECX
004ff26e  c1fa04                    SAR EDX,0x4
004ff271  8bca                      MOV ECX,EDX
004ff273  c1e91f                    SHR ECX,0x1f
004ff276  03ca                      ADD ECX,EDX
004ff278  f7af10040000              IMUL dword ptr [EDI + 0x410]
004ff27e  039710040000              ADD EDX,dword ptr [EDI + 0x410]
004ff284  c1fa04                    SAR EDX,0x4
004ff287  8bc2                      MOV EAX,EDX
004ff289  c1e81f                    SHR EAX,0x1f
004ff28c  03c2                      ADD EAX,EDX
004ff28e  3bc1                      CMP EAX,ECX
004ff290  7d20                      JGE 0x004ff2b2
004ff292  8b07                      MOV EAX,dword ptr [EDI]
004ff294  8d4dc4                    LEA ECX,[EBP + -0x3c]
004ff297  8b5020                    MOV EDX,dword ptr [EAX + 0x20]
004ff29a  e8d169f3ff                CALL 0x00435c70
004ff29f  6a1e                      PUSH 0x1e
004ff2a1  50                        PUSH EAX
004ff2a2  6a00                      PUSH 0x0
004ff2a4  6a00                      PUSH 0x0
004ff2a6  51                        PUSH ECX
004ff2a7  8bcf                      MOV ECX,EDI
004ff2a9  c704240000a040            MOV dword ptr [ESP],0x40a00000
004ff2b0  ffd2                      CALL EDX
004ff2b2  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004ff2ba  6a00                      PUSH 0x0
004ff2bc  6a00                      PUSH 0x0
004ff2be  6aff                      PUSH -0x1
004ff2c0  6892000000                PUSH 0x92
004ff2c5  68e8030000                PUSH 0x3e8
004ff2ca  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004ff2d2  2bc8                      SUB ECX,EAX
004ff2d4  8d45dc                    LEA EAX,[EBP + -0x24]
004ff2d7  018f10040000              ADD dword ptr [EDI + 0x410],ECX
004ff2dd  8d8e18120000              LEA ECX,[ESI + 0x1218]
004ff2e3  50                        PUSH EAX
004ff2e4  e877bcf1ff                CALL 0x0041af60
004ff2e9  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004ff2f0  8db73c030000              LEA ESI,[EDI + 0x33c]
004ff2f6  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004ff2f9  33c9                      XOR ECX,ECX
004ff2fb  85d2                      TEST EDX,EDX
004ff2fd  7447                      JZ 0x004ff346
004ff2ff  f30f1016                  MOVSS XMM2,dword ptr [ESI]
004ff303  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
004ff308  f30f102538aaba00          MOVSS XMM4,dword ptr [0x00baaa38]
004ff310  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004ff313  0f28ca                    MOVAPS XMM1,XMM2
004ff316  0f28c3                    MOVAPS XMM0,XMM3
004ff319  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004ff31c  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004ff324  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004ff32c  f30f59c0                  MULSS XMM0,XMM0
004ff330  f30f59c9                  MULSS XMM1,XMM1
004ff334  f30f58c1                  ADDSS XMM0,XMM1
004ff338  0f2fe0                    COMISS XMM4,XMM0
004ff33b  0f87eb000000              JA 0x004ff42c
004ff341  41                        INC ECX
004ff342  3bca                      CMP ECX,EDX
004ff344  72ca                      JC 0x004ff310
004ff346  e815fc1e00                CALL 0x006eef60
004ff34b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ff351  50                        PUSH EAX
004ff352  6a00                      PUSH 0x0
004ff354  6a00                      PUSH 0x0
004ff356  6840b6c700                PUSH 0xc7b640
004ff35b  56                        PUSH ESI
004ff35c  6892000000                PUSH 0x92
004ff361  68e8030000                PUSH 0x3e8
004ff366  e8b597f2ff                CALL 0x00428b20
004ff36b  83bd00ffffff01            CMP dword ptr [EBP + 0xffffff00],0x1
004ff372  0f85b4000000              JNZ 0x004ff42c
004ff378  e8e3fb1e00                CALL 0x006eef60
004ff37d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ff383  50                        PUSH EAX
004ff384  6a00                      PUSH 0x0
004ff386  6a00                      PUSH 0x0
004ff388  6840b6c700                PUSH 0xc7b640
004ff38d  56                        PUSH ESI
004ff38e  6a3e                      PUSH 0x3e
004ff390  68e8030000                PUSH 0x3e8
004ff395  e88697f2ff                CALL 0x00428b20
004ff39a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ff3a0  6a00                      PUSH 0x0
004ff3a2  6a00                      PUSH 0x0
004ff3a4  6800000001                PUSH 0x1000000
004ff3a9  83ec10                    SUB ESP,0x10
004ff3ac  c7805803000000002041      MOV dword ptr [EAX + 0x358],0x41200000
004ff3b6  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
004ff3bd  8bc4                      MOV EAX,ESP
004ff3bf  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
004ff3c5  6a00                      PUSH 0x0
004ff3c7  83ec08                    SUB ESP,0x8
004ff3ca  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
004ff3cd  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
004ff3d5  c7042400002041            MOV dword ptr [ESP],0x41200000
004ff3dc  56                        PUSH ESI
004ff3dd  e8befe1f00                CALL 0x006ff2a0
004ff3e2  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004ff3e8  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
004ff3ee  c78514ffffff89000000      MOV dword ptr [EBP + 0xffffff14],0x89
004ff3f8  e883734500                CALL 0x00956780
004ff3fd  83ec08                    SUB ESP,0x8
004ff400  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004ff406  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004ff40e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ff415  6a00                      PUSH 0x0
004ff417  6a02                      PUSH 0x2
004ff419  51                        PUSH ECX
004ff41a  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ff421  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
004ff427  e804e84200                CALL 0x0092dc30
004ff42c  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004ff433  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
004ff437  751f                      JNZ 0x004ff458
004ff439  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004ff440  b101                      MOV CL,0x1
004ff442  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
004ff445  6a00                      PUSH 0x0
004ff447  6a00                      PUSH 0x0
004ff449  e862545600                CALL 0x00a648b0
004ff44e  83c408                    ADD ESP,0x8
004ff451  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004ff458  6a00                      PUSH 0x0
004ff45a  8bcf                      MOV ECX,EDI
004ff45c  e84f101c00                CALL 0x006c04b0
004ff461  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004ff469  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
004ff470  9f                        LAHF
004ff471  f6c444                    TEST AH,0x44
004ff474  7a19                      JP 0x004ff48f
004ff476  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004ff47e  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004ff485  9f                        LAHF
004ff486  f6c444                    TEST AH,0x44
004ff489  0f8b4a010000              JNP 0x004ff5d9
004ff48f  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
004ff496  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
004ff49e  0f8585000000              JNZ 0x004ff529
004ff4a4  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004ff4ac  f30f5805bca0ba00          ADDSS XMM0,dword ptr [0x00baa0bc]
004ff4b4  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
004ff4bc  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
004ff4c4  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
004ff4cc  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004ff4d4  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004ff4dc  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004ff4e4  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004ff4ec  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004ff4f4  f30f59c8                  MULSS XMM1,XMM0
004ff4f8  f30f59d0                  MULSS XMM2,XMM0
004ff4fc  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004ff504  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ff50c  f30f5ed0                  DIVSS XMM2,XMM0
004ff510  f30f5ec8                  DIVSS XMM1,XMM0
004ff514  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004ff51c  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004ff524  e9b0000000                JMP 0x004ff5d9
004ff529  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
004ff531  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
004ff539  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004ff541  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004ff549  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004ff551  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
004ff559  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004ff561  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004ff569  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004ff571  f30f5cc1                  SUBSS XMM0,XMM1
004ff575  f30f5ec1                  DIVSS XMM0,XMM1
004ff579  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004ff581  f30f2cd0                  CVTTSS2SI EDX,XMM0
004ff585  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004ff58d  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004ff595  f30f5ec1                  DIVSS XMM0,XMM1
004ff599  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004ff5a1  f30f2cc8                  CVTTSS2SI ECX,XMM0
004ff5a5  85d2                      TEST EDX,EDX
004ff5a7  7830                      JS 0x004ff5d9
004ff5a9  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
004ff5af  8b700c                    MOV ESI,dword ptr [EAX + 0xc]
004ff5b2  3bd6                      CMP EDX,ESI
004ff5b4  7d23                      JGE 0x004ff5d9
004ff5b6  85c9                      TEST ECX,ECX
004ff5b8  781f                      JS 0x004ff5d9
004ff5ba  3b4810                    CMP ECX,dword ptr [EAX + 0x10]
004ff5bd  7d1a                      JGE 0x004ff5d9
004ff5bf  0fafce                    IMUL ECX,ESI
004ff5c2  03ca                      ADD ECX,EDX
004ff5c4  7813                      JS 0x004ff5d9
004ff5c6  81f9c0010000              CMP ECX,0x1c0
004ff5cc  7d0b                      JGE 0x004ff5d9
004ff5ce  c784886c07000084030000    MOV dword ptr [EAX + ECX*0x4 + 0x76c],0x384
004ff5d9  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004ff5dc  64890d00000000            MOV dword ptr FS:[0x0],ECX
004ff5e3  59                        POP ECX
004ff5e4  5f                        POP EDI
004ff5e5  5e                        POP ESI
004ff5e6  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004ff5e9  33cd                      XOR ECX,EBP
004ff5eb  e83bfb5e00                CALL 0x00aef12b
004ff5f0  8be5                      MOV ESP,EBP
004ff5f2  5d                        POP EBP
004ff5f3  8be3                      MOV ESP,EBX
004ff5f5  5b                        POP EBX
004ff5f6  c3                        RET
