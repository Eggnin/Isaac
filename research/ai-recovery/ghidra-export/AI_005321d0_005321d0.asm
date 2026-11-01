; J460 NPC AI 0x005321d0 AI_005321d0
; types=204,247
; identities=204.0.0,247.0.0
; entry=005321d0
005321d0  55                        PUSH EBP
005321d1  8bec                      MOV EBP,ESP
005321d3  6aff                      PUSH -0x1
005321d5  688547af00                PUSH 0xaf4785
005321da  64a100000000              MOV EAX,FS:[0x0]
005321e0  50                        PUSH EAX
005321e1  81ec04010000              SUB ESP,0x104
005321e7  a1b493bf00                MOV EAX,[0x00bf93b4]
005321ec  33c5                      XOR EAX,EBP
005321ee  8945f0                    MOV dword ptr [EBP + -0x10],EAX
005321f1  53                        PUSH EBX
005321f2  56                        PUSH ESI
005321f3  57                        PUSH EDI
005321f4  50                        PUSH EAX
005321f5  8d45f4                    LEA EAX,[EBP + -0xc]
005321f8  64a300000000              MOV FS:[0x0],EAX
005321fe  8bf1                      MOV ESI,ECX
00532200  817e28cc000000            CMP dword ptr [ESI + 0x28],0xcc
00532207  750a                      JNZ 0x00532213
00532209  837e3063                  CMP dword ptr [ESI + 0x30],0x63
0053220d  7404                      JZ 0x00532213
0053220f  b301                      MOV BL,0x1
00532211  eb02                      JMP 0x00532215
00532213  32db                      XOR BL,BL
00532215  83be640b000000            CMP dword ptr [ESI + 0xb64],0x0
0053221c  7528                      JNZ 0x00532246
0053221e  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
00532228  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
00532232  84db                      TEST BL,BL
00532234  0f84970a0000              JZ 0x00532cd1
0053223a  c686b003000001            MOV byte ptr [ESI + 0x3b0],0x1
00532241  e98b0a0000                JMP 0x00532cd1
00532246  83be9c00000000            CMP dword ptr [ESI + 0x9c],0x0
0053224d  c686b003000000            MOV byte ptr [ESI + 0x3b0],0x0
00532254  750f                      JNZ 0x00532265
00532256  6a00                      PUSH 0x0
00532258  8d4e48                    LEA ECX,[ESI + 0x48]
0053225b  6854bcb100                PUSH 0xb1bc54
00532260  e8db86edff                CALL 0x0040a940
00532265  a118ddb100                MOV EAX,[0x00b1dd18]
0053226a  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
00532270  c745d40f000000            MOV dword ptr [EBP + -0x2c],0xf
00532277  c745d008000000            MOV dword ptr [EBP + -0x30],0x8
0053227e  8945c0                    MOV dword ptr [EBP + -0x40],EAX
00532281  894dc4                    MOV dword ptr [EBP + -0x3c],ECX
00532284  c645c800                  MOV byte ptr [EBP + -0x38],0x0
00532288  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0053228f  a130ddb100                MOV EAX,[0x00b1dd30]
00532294  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
0053229a  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
005322a1  c745e808000000            MOV dword ptr [EBP + -0x18],0x8
005322a8  8945d8                    MOV dword ptr [EBP + -0x28],EAX
005322ab  894ddc                    MOV dword ptr [EBP + -0x24],ECX
005322ae  c645e000                  MOV byte ptr [EBP + -0x20],0x0
005322b2  51                        PUSH ECX
005322b3  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
005322b7  8d45c0                    LEA EAX,[EBP + -0x40]
005322ba  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
005322c1  8bce                      MOV ECX,ESI
005322c3  50                        PUSH EAX
005322c4  8d45d8                    LEA EAX,[EBP + -0x28]
005322c7  50                        PUSH EAX
005322c8  e863f01800                CALL 0x006c1330
005322cd  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
005322d1  8b55ec                    MOV EDX,dword ptr [EBP + -0x14]
005322d4  83fa10                    CMP EDX,0x10
005322d7  7228                      JC 0x00532301
005322d9  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
005322dc  42                        INC EDX
005322dd  8bc1                      MOV EAX,ECX
005322df  81fa00100000              CMP EDX,0x1000
005322e5  7210                      JC 0x005322f7
005322e7  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005322ea  83c223                    ADD EDX,0x23
005322ed  2bc1                      SUB EAX,ECX
005322ef  83c0fc                    ADD EAX,-0x4
005322f2  83f81f                    CMP EAX,0x1f
005322f5  7749                      JA 0x00532340
005322f7  52                        PUSH EDX
005322f8  51                        PUSH ECX
005322f9  e85ece5b00                CALL 0x00aef15c
005322fe  83c408                    ADD ESP,0x8
00532301  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00532308  8b55d4                    MOV EDX,dword ptr [EBP + -0x2c]
0053230b  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00532312  c745ec0f000000            MOV dword ptr [EBP + -0x14],0xf
00532319  c645d800                  MOV byte ptr [EBP + -0x28],0x0
0053231d  83fa10                    CMP EDX,0x10
00532320  722e                      JC 0x00532350
00532322  8b4dc0                    MOV ECX,dword ptr [EBP + -0x40]
00532325  42                        INC EDX
00532326  8bc1                      MOV EAX,ECX
00532328  81fa00100000              CMP EDX,0x1000
0053232e  7216                      JC 0x00532346
00532330  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00532333  83c223                    ADD EDX,0x23
00532336  2bc1                      SUB EAX,ECX
00532338  83c0fc                    ADD EAX,-0x4
0053233b  83f81f                    CMP EAX,0x1f
0053233e  7606                      JBE 0x00532346
00532340  ff159488b100              CALL dword ptr [0x00b18894]
00532346  52                        PUSH EDX
00532347  51                        PUSH ECX
00532348  e80fce5b00                CALL 0x00aef15c
0053234d  83c408                    ADD ESP,0x8
00532350  0f57db                    XORPS XMM3,XMM3
00532353  84db                      TEST BL,BL
00532355  0f8435010000              JZ 0x00532490
0053235b  f30f104614                MOVSS XMM0,dword ptr [ESI + 0x14]
00532360  0f2fc3                    COMISS XMM0,XMM3
00532363  0f8627010000              JBE 0x00532490
00532369  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
0053236f  0f57c0                    XORPS XMM0,XMM0
00532372  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0053237a  83f804                    CMP EAX,0x4
0053237d  7435                      JZ 0x005323b4
0053237f  83f808                    CMP EAX,0x8
00532382  7579                      JNZ 0x005323fd
00532384  683811b600                PUSH 0xb61138
00532389  8d8e98000000              LEA ECX,[ESI + 0x98]
0053238f  e8dc8aedff                CALL 0x0040ae70
00532394  84c0                      TEST AL,AL
00532396  7514                      JNZ 0x005323ac
00532398  682811b600                PUSH 0xb61128
0053239d  8d8e98000000              LEA ECX,[ESI + 0x98]
005323a3  e8c88aedff                CALL 0x0040ae70
005323a8  84c0                      TEST AL,AL
005323aa  7551                      JNZ 0x005323fd
005323ac  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
005323b4  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
005323b7  3b460c                    CMP EAX,dword ptr [ESI + 0xc]
005323ba  7441                      JZ 0x005323fd
005323bc  0f1f4000                  NOP dword ptr [EAX]
005323c0  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
005323c3  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
005323c6  898df4feffff              MOV dword ptr [EBP + 0xfffffef4],ECX
005323cc  8bca                      MOV ECX,EDX
005323ce  81e100800000              AND ECX,0x8000
005323d4  83c900                    OR ECX,0x0
005323d7  7514                      JNZ 0x005323ed
005323d9  81e200004000              AND EDX,0x400000
005323df  0bd1                      OR EDX,ECX
005323e1  7504                      JNZ 0x005323e7
005323e3  f30f5800                  ADDSS XMM0,dword ptr [EAX]
005323e7  c70000000000              MOV dword ptr [EAX],0x0
005323ed  83c038                    ADD EAX,0x38
005323f0  3b460c                    CMP EAX,dword ptr [ESI + 0xc]
005323f3  75cb                      JNZ 0x005323c0
005323f5  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
005323fd  83be640b000004            CMP dword ptr [ESI + 0xb64],0x4
00532404  0f57db                    XORPS XMM3,XMM3
00532407  0f8583000000              JNZ 0x00532490
0053240d  f30f1095fcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffefc]
00532415  0f2fd3                    COMISS XMM2,XMM3
00532418  7676                      JBE 0x00532490
0053241a  f30f104e14                MOVSS XMM1,dword ptr [ESI + 0x14]
0053241f  8b8e10040000              MOV ECX,dword ptr [ESI + 0x410]
00532425  0f28c1                    MOVAPS XMM0,XMM1
00532428  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00532430  f30f590dd0a0ba00          MULSS XMM1,dword ptr [0x00baa0d0]
00532438  f30f2cc0                  CVTTSS2SI EAX,XMM0
0053243c  f30f1086b80b0000          MOVSS XMM0,dword ptr [ESI + 0xbb8]
00532444  99                        CDQ
00532445  f30f5cc1                  SUBSS XMM0,XMM1
00532449  2bc2                      SUB EAX,EDX
0053244b  d1f8                      SAR EAX,0x1
0053244d  03c8                      ADD ECX,EAX
0053244f  b80a000000                MOV EAX,0xa
00532454  3bc8                      CMP ECX,EAX
00532456  f30f5fc3                  MAXSS XMM0,XMM3
0053245a  0f4cc1                    CMOVL EAX,ECX
0053245d  0f2f157ca8ba00            COMISS XMM2,dword ptr [0x00baa87c]
00532464  898610040000              MOV dword ptr [ESI + 0x410],EAX
0053246a  f30f1186b80b0000          MOVSS dword ptr [ESI + 0xbb8],XMM0
00532472  761c                      JBE 0x00532490
00532474  6a00                      PUSH 0x0
00532476  689c0db600                PUSH 0xb60d9c
0053247b  8d4e48                    LEA ECX,[ESI + 0x48]
0053247e  e8bd84edff                CALL 0x0040a940
00532483  c786b80b000000000000      MOV dword ptr [ESI + 0xbb8],0x0
0053248d  0f57db                    XORPS XMM3,XMM3
00532490  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
00532497  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0053249f  0f8419010000              JZ 0x005325be
005324a5  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
005324ab  83e010                    AND EAX,0x10
005324ae  83c800                    OR EAX,0x0
005324b1  0f84b0000000              JZ 0x00532567
005324b7  83be9c00000000            CMP dword ptr [ESI + 0x9c],0x0
005324be  7449                      JZ 0x00532509
005324c0  80beac00000000            CMP byte ptr [ESI + 0xac],0x0
005324c7  7440                      JZ 0x00532509
005324c9  8b869c000000              MOV EAX,dword ptr [ESI + 0x9c]
005324cf  83781410                  CMP dword ptr [EAX + 0x14],0x10
005324d3  7202                      JC 0x005324d7
005324d5  8b00                      MOV EAX,dword ptr [EAX]
005324d7  b99c0db600                MOV ECX,0xb60d9c
005324dc  0f1f4000                  NOP dword ptr [EAX]
005324e0  8a10                      MOV DL,byte ptr [EAX]
005324e2  3a11                      CMP DL,byte ptr [ECX]
005324e4  751a                      JNZ 0x00532500
005324e6  84d2                      TEST DL,DL
005324e8  7412                      JZ 0x005324fc
005324ea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005324ed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005324f0  750e                      JNZ 0x00532500
005324f2  83c002                    ADD EAX,0x2
005324f5  83c102                    ADD ECX,0x2
005324f8  84d2                      TEST DL,DL
005324fa  75e4                      JNZ 0x005324e0
005324fc  33c0                      XOR EAX,EAX
005324fe  eb05                      JMP 0x00532505
00532500  1bc0                      SBB EAX,EAX
00532502  83c801                    OR EAX,0x1
00532505  85c0                      TEST EAX,EAX
00532507  745e                      JZ 0x00532567
00532509  84db                      TEST BL,BL
0053250b  745a                      JZ 0x00532567
0053250d  6a00                      PUSH 0x0
0053250f  68000a0001                PUSH 0x1000a00
00532514  8bce                      MOV ECX,ESI
00532516  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
0053251e  e80d4feeff                CALL 0x00417430
00532523  84c0                      TEST AL,AL
00532525  740a                      JZ 0x00532531
00532527  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
0053252f  eb08                      JMP 0x00532539
00532531  f30f108dfcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffefc]
00532539  f30f598e9c030000          MULSS XMM1,dword ptr [ESI + 0x39c]
00532541  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00532549  f30f5e0db4a9ba00          DIVSS XMM1,dword ptr [0x00baa9b4]
00532551  f30f588ebc0b0000          ADDSS XMM1,dword ptr [ESI + 0xbbc]
00532559  f30f5dc8                  MINSS XMM1,XMM0
0053255d  f30f118ebc0b0000          MOVSS dword ptr [ESI + 0xbbc],XMM1
00532565  eb45                      JMP 0x005325ac
00532567  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
0053256f  f30f108ebc0b0000          MOVSS XMM1,dword ptr [ESI + 0xbbc]
00532577  f30f58c0                  ADDSS XMM0,XMM0
0053257b  f30f5e05b4a9ba00          DIVSS XMM0,dword ptr [0x00baa9b4]
00532583  f30f5cc8                  SUBSS XMM1,XMM0
00532587  f30f5fcb                  MAXSS XMM1,XMM3
0053258b  f30f118ebc0b0000          MOVSS dword ptr [ESI + 0xbbc],XMM1
00532593  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0053259b  84db                      TEST BL,BL
0053259d  750d                      JNZ 0x005325ac
0053259f  c786bc0b000000000000      MOV dword ptr [ESI + 0xbbc],0x0
005325a9  0f28cb                    MOVAPS XMM1,XMM3
005325ac  0f28d9                    MOVAPS XMM3,XMM1
005325af  0f57d2                    XORPS XMM2,XMM2
005325b2  6a01                      PUSH 0x1
005325b4  0f28c8                    MOVAPS XMM1,XMM0
005325b7  8bce                      MOV ECX,ESI
005325b9  e882681a00                CALL 0x006d8e40
005325be  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
005325c4  83f804                    CMP EAX,0x4
005325c7  0f854c020000              JNZ 0x00532819
005325cd  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
005325d3  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
005325d9  84db                      TEST BL,BL
005325db  740d                      JZ 0x005325ea
005325dd  838e6801000010            OR dword ptr [ESI + 0x168],0x10
005325e4  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
005325ea  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
005325f0  81e100080001              AND ECX,0x1000800
005325f6  83c900                    OR ECX,0x0
005325f9  745f                      JZ 0x0053265a
005325fb  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
00532602  7556                      JNZ 0x0053265a
00532604  8bce                      MOV ECX,ESI
00532606  e835c21800                CALL 0x006be840
0053260b  6a00                      PUSH 0x0
0053260d  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00532613  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00532619  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
0053261f  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
00532625  898df8feffff              MOV dword ptr [EBP + 0xfffffef8],ECX
0053262b  8d8e14040000              LEA ECX,[ESI + 0x414]
00532631  50                        PUSH EAX
00532632  e809232b00                CALL 0x007e4940
00532637  83be500b000000            CMP dword ptr [ESI + 0xb50],0x0
0053263e  7e5a                      JLE 0x0053269a
00532640  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
00532648  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00532650  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
00532658  eb40                      JMP 0x0053269a
0053265a  8bce                      MOV ECX,ESI
0053265c  e8dfc11800                CALL 0x006be840
00532661  6a01                      PUSH 0x1
00532663  682c010000                PUSH 0x12c
00532668  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0053266e  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00532674  51                        PUSH ECX
00532675  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
0053267b  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
00532681  898df8feffff              MOV dword ptr [EBP + 0xfffffef8],ECX
00532687  8d8e14040000              LEA ECX,[ESI + 0x414]
0053268d  c704240000003f            MOV dword ptr [ESP],0x3f000000
00532694  50                        PUSH EAX
00532695  e8260d2b00                CALL 0x007e33c0
0053269a  83be1004000000            CMP dword ptr [ESI + 0x410],0x0
005326a1  7f0f                      JG 0x005326b2
005326a3  6a00                      PUSH 0x0
005326a5  6854bcb100                PUSH 0xb1bc54
005326aa  8d4e48                    LEA ECX,[ESI + 0x48]
005326ad  e88e82edff                CALL 0x0040a940
005326b2  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
005326b9  7451                      JZ 0x0053270c
005326bb  f30f1086bc0b0000          MOVSS XMM0,dword ptr [ESI + 0xbbc]
005326c3  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
005326ca  731b                      JNC 0x005326e7
005326cc  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
005326d4  8bce                      MOV ECX,ESI
005326d6  6a07                      PUSH 0x7
005326d8  6a00                      PUSH 0x0
005326da  e881871900                CALL 0x006cae60
005326df  84c0                      TEST AL,AL
005326e1  0f84ed000000              JZ 0x005327d4
005326e7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005326ef  f30f1186200f0000          MOVSS dword ptr [ESI + 0xf20],XMM0
005326f7  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005326ff  f30f1186240f0000          MOVSS dword ptr [ESI + 0xf24],XMM0
00532707  e9aa000000                JMP 0x005327b6
0053270c  83be1004000000            CMP dword ptr [ESI + 0x410],0x0
00532713  0f8fbb000000              JG 0x005327d4
00532719  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0053271f  2500020000                AND EAX,0x200
00532724  83c800                    OR EAX,0x0
00532727  7511                      JNZ 0x0053273a
00532729  50                        PUSH EAX
0053272a  6800080001                PUSH 0x1000800
0053272f  8bce                      MOV ECX,ESI
00532731  e8fa4ceeff                CALL 0x00417430
00532736  84c0                      TEST AL,AL
00532738  7422                      JZ 0x0053275c
0053273a  e821c81b00                CALL 0x006eef60
0053273f  33d2                      XOR EDX,EDX
00532741  b932000000                MOV ECX,0x32
00532746  f7f1                      DIV ECX
00532748  85d2                      TEST EDX,EDX
0053274a  7510                      JNZ 0x0053275c
0053274c  c786640b000009000000      MOV dword ptr [ESI + 0xb64],0x9
00532756  899610040000              MOV dword ptr [ESI + 0x410],EDX
0053275c  83be1004000000            CMP dword ptr [ESI + 0x410],0x0
00532763  7f6f                      JG 0x005327d4
00532765  e8f6c71b00                CALL 0x006eef60
0053276a  33d2                      XOR EDX,EDX
0053276c  b903000000                MOV ECX,0x3
00532771  f7f1                      DIV ECX
00532773  85d2                      TEST EDX,EDX
00532775  755d                      JNZ 0x005327d4
00532777  8b96a00b0000              MOV EDX,dword ptr [ESI + 0xba0]
0053277d  85d2                      TEST EDX,EDX
0053277f  7e1e                      JLE 0x0053279f
00532781  f30f2c86a4030000          CVTTSS2SI EAX,dword ptr [ESI + 0x3a4]
00532789  f30f2c8ea0030000          CVTTSS2SI ECX,dword ptr [ESI + 0x3a0]
00532791  2bc8                      SUB ECX,EAX
00532793  03d1                      ADD EDX,ECX
00532795  8996a00b0000              MOV dword ptr [ESI + 0xba0],EDX
0053279b  85d2                      TEST EDX,EDX
0053279d  7f35                      JG 0x005327d4
0053279f  f30f100dd4aaba00          MOVSS XMM1,dword ptr [0x00baaad4]
005327a7  8bce                      MOV ECX,ESI
005327a9  6a07                      PUSH 0x7
005327ab  6a00                      PUSH 0x0
005327ad  e8ae861900                CALL 0x006cae60
005327b2  84c0                      TEST AL,AL
005327b4  741e                      JZ 0x005327d4
005327b6  c786a00b000046000000      MOV dword ptr [ESI + 0xba0],0x46
005327c0  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
005327ca  c786640b000008000000      MOV dword ptr [ESI + 0xb64],0x8
005327d4  83be640b000008            CMP dword ptr [ESI + 0xb64],0x8
005327db  7427                      JZ 0x00532804
005327dd  f30f100db8a7ba00          MOVSS XMM1,dword ptr [0x00baa7b8]
005327e5  0f57d2                    XORPS XMM2,XMM2
005327e8  8bce                      MOV ECX,ESI
005327ea  e8719f1700                CALL 0x006ac760
005327ef  85c0                      TEST EAX,EAX
005327f1  7411                      JZ 0x00532804
005327f3  8b8610040000              MOV EAX,dword ptr [ESI + 0x410]
005327f9  85c0                      TEST EAX,EAX
005327fb  7e07                      JLE 0x00532804
005327fd  48                        DEC EAX
005327fe  898610040000              MOV dword ptr [ESI + 0x410],EAX
00532804  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
0053280c  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00532814  e9b0040000                JMP 0x00532cc9
00532819  83f809                    CMP EAX,0x9
0053281c  0f85c4000000              JNZ 0x005328e6
00532822  682811b600                PUSH 0xb61128
00532827  8d8e98000000              LEA ECX,[ESI + 0x98]
0053282d  e89e85edff                CALL 0x0040add0
00532832  84c0                      TEST AL,AL
00532834  7420                      JZ 0x00532856
00532836  51                        PUSH ECX
00532837  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053283e  6a00                      PUSH 0x0
00532840  6a02                      PUSH 0x2
00532842  51                        PUSH ECX
00532843  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053284a  8bce                      MOV ECX,ESI
0053284c  68a6000000                PUSH 0xa6
00532851  e84a431a00                CALL 0x006d6ba0
00532856  ff8610040000              INC dword ptr [ESI + 0x410]
0053285c  84db                      TEST BL,BL
0053285e  7413                      JZ 0x00532873
00532860  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00532866  83a668010000ef            AND dword ptr [ESI + 0x168],0xffffffef
0053286d  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00532873  6a00                      PUSH 0x0
00532875  68dcd2b100                PUSH 0xb1d2dc
0053287a  8d4e48                    LEA ECX,[ESI + 0x48]
0053287d  e8be80edff                CALL 0x0040a940
00532882  8bce                      MOV ECX,ESI
00532884  e8b7bf1800                CALL 0x006be840
00532889  0f57c9                    XORPS XMM1,XMM1
0053288c  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00532894  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
0053289c  0f2fc8                    COMISS XMM1,XMM0
0053289f  0f97c0                    SETA AL
005328a2  888648010000              MOV byte ptr [ESI + 0x148],AL
005328a8  83be9c00000000            CMP dword ptr [ESI + 0x9c],0x0
005328af  740d                      JZ 0x005328be
005328b1  80beac00000000            CMP byte ptr [ESI + 0xac],0x0
005328b8  0f85fb030000              JNZ 0x00532cb9
005328be  6a00                      PUSH 0x0
005328c0  6854bcb100                PUSH 0xb1bc54
005328c5  8d4e48                    LEA ECX,[ESI + 0x48]
005328c8  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
005328d2  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
005328dc  e85f80edff                CALL 0x0040a940
005328e1  e9d3030000                JMP 0x00532cb9
005328e6  83f808                    CMP EAX,0x8
005328e9  0f85e2030000              JNZ 0x00532cd1
005328ef  682811b600                PUSH 0xb61128
005328f4  8d8e98000000              LEA ECX,[ESI + 0x98]
005328fa  e8d184edff                CALL 0x0040add0
005328ff  84c0                      TEST AL,AL
00532901  7420                      JZ 0x00532923
00532903  51                        PUSH ECX
00532904  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053290b  6a00                      PUSH 0x0
0053290d  6a02                      PUSH 0x2
0053290f  51                        PUSH ECX
00532910  c704240000803f            MOV dword ptr [ESP],0x3f800000
00532917  8bce                      MOV ECX,ESI
00532919  68a6000000                PUSH 0xa6
0053291e  e87d421a00                CALL 0x006d6ba0
00532923  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
0053292a  0f8488000000              JZ 0x005329b8
00532930  68dcd2b100                PUSH 0xb1d2dc
00532935  8d8e98000000              LEA ECX,[ESI + 0x98]
0053293b  e83085edff                CALL 0x0040ae70
00532940  84c0                      TEST AL,AL
00532942  7574                      JNZ 0x005329b8
00532944  6a00                      PUSH 0x0
00532946  68000a0001                PUSH 0x1000a00
0053294b  8bce                      MOV ECX,ESI
0053294d  e8de4aeeff                CALL 0x00417430
00532952  84c0                      TEST AL,AL
00532954  741a                      JZ 0x00532970
00532956  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0053295e  f30f1186200f0000          MOVSS dword ptr [ESI + 0xf20],XMM0
00532966  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053296e  eb40                      JMP 0x005329b0
00532970  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
00532978  8bce                      MOV ECX,ESI
0053297a  6a00                      PUSH 0x0
0053297c  e89f611a00                CALL 0x006d8b20
00532981  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00532987  8bce                      MOV ECX,ESI
00532989  50                        PUSH EAX
0053298a  e8a1631a00                CALL 0x006d8d30
0053298f  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00532993  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0053299b  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
005329a0  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
005329a8  f30f118e200f0000          MOVSS dword ptr [ESI + 0xf20],XMM1
005329b0  f30f1186240f0000          MOVSS dword ptr [ESI + 0xf24],XMM0
005329b8  ff8610040000              INC dword ptr [ESI + 0x410]
005329be  84db                      TEST BL,BL
005329c0  7413                      JZ 0x005329d5
005329c2  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
005329c8  83a668010000ef            AND dword ptr [ESI + 0x168],0xffffffef
005329cf  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
005329d5  6a00                      PUSH 0x0
005329d7  8d5e48                    LEA EBX,[ESI + 0x48]
005329da  68dcd2b100                PUSH 0xb1d2dc
005329df  8bcb                      MOV ECX,EBX
005329e1  e85a7fedff                CALL 0x0040a940
005329e6  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
005329ed  740c                      JZ 0x005329fb
005329ef  0f57c0                    XORPS XMM0,XMM0
005329f2  0f2f86200f0000            COMISS XMM0,dword ptr [ESI + 0xf20]
005329f9  eb1d                      JMP 0x00532a18
005329fb  8bce                      MOV ECX,ESI
005329fd  e83ebe1800                CALL 0x006be840
00532a02  0f57c9                    XORPS XMM1,XMM1
00532a05  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00532a0d  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
00532a15  0f2fc8                    COMISS XMM1,XMM0
00532a18  0f97c0                    SETA AL
00532a1b  888648010000              MOV byte ptr [ESI + 0x148],AL
00532a21  8b96a00b0000              MOV EDX,dword ptr [ESI + 0xba0]
00532a27  85d2                      TEST EDX,EDX
00532a29  7e1a                      JLE 0x00532a45
00532a2b  f30f2c86a4030000          CVTTSS2SI EAX,dword ptr [ESI + 0x3a4]
00532a33  f30f2c8ea0030000          CVTTSS2SI ECX,dword ptr [ESI + 0x3a0]
00532a3b  2bc8                      SUB ECX,EAX
00532a3d  03ca                      ADD ECX,EDX
00532a3f  898ea00b0000              MOV dword ptr [ESI + 0xba0],ECX
00532a45  68dcd2b100                PUSH 0xb1d2dc
00532a4a  8d8e98000000              LEA ECX,[ESI + 0x98]
00532a50  e87b83edff                CALL 0x0040add0
00532a55  84c0                      TEST AL,AL
00532a57  0f842e010000              JZ 0x00532b8b
00532a5d  8bce                      MOV ECX,ESI
00532a5f  e8dcbd1800                CALL 0x006be840
00532a64  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
00532a6b  8d9e3c030000              LEA EBX,[ESI + 0x33c]
00532a71  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00532a79  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00532a81  f30f5c03                  SUBSS XMM0,dword ptr [EBX]
00532a85  f30f5c4b04                SUBSS XMM1,dword ptr [EBX + 0x4]
00532a8a  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
00532a92  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
00532a9a  7420                      JZ 0x00532abc
00532a9c  f30f1086200f0000          MOVSS XMM0,dword ptr [ESI + 0xf20]
00532aa4  f30f108e240f0000          MOVSS XMM1,dword ptr [ESI + 0xf24]
00532aac  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
00532ab4  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
00532abc  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00532ac3  9f                        LAHF
00532ac4  f6c444                    TEST AH,0x44
00532ac7  7a11                      JP 0x00532ada
00532ac9  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
00532ad0  9f                        LAHF
00532ad1  f6c444                    TEST AH,0x44
00532ad4  0f8bae000000              JNP 0x00532b88
00532ada  51                        PUSH ECX
00532adb  c704240000803f            MOV dword ptr [ESP],0x3f800000
00532ae2  6a00                      PUSH 0x0
00532ae4  6a02                      PUSH 0x2
00532ae6  51                        PUSH ECX
00532ae7  c704240000803f            MOV dword ptr [ESP],0x3f800000
00532aee  8bce                      MOV ECX,ESI
00532af0  68b2000000                PUSH 0xb2
00532af5  e8a6401a00                CALL 0x006d6ba0
00532afa  f30f108df8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef8]
00532b02  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
00532b0a  f30f59c0                  MULSS XMM0,XMM0
00532b0e  f30f59c9                  MULSS XMM1,XMM1
00532b12  f30f58c1                  ADDSS XMM0,XMM1
00532b16  e8352ff0ff                CALL 0x00435a50
00532b1b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00532b22  7634                      JBE 0x00532b58
00532b24  f30f100db8a7ba00          MOVSS XMM1,dword ptr [0x00baa7b8]
00532b2c  f30f5ec8                  DIVSS XMM1,XMM0
00532b30  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
00532b38  f30f59c1                  MULSS XMM0,XMM1
00532b3c  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
00532b44  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
00532b4c  f30f59c1                  MULSS XMM0,XMM1
00532b50  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
00532b58  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
00532b5e  e8cdc3f0ff                CALL 0x0043ef30
00532b63  817e28cc000000            CMP dword ptr [ESI + 0x28],0xcc
00532b6a  b902000000                MOV ECX,0x2
00532b6f  50                        PUSH EAX
00532b70  b805000000                MOV EAX,0x5
00532b75  0f44c1                    CMOVZ EAX,ECX
00532b78  8bce                      MOV ECX,ESI
00532b7a  50                        PUSH EAX
00532b7b  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
00532b81  50                        PUSH EAX
00532b82  53                        PUSH EBX
00532b83  e858871900                CALL 0x006cb2e0
00532b88  8d5e48                    LEA EBX,[ESI + 0x48]
00532b8b  6834d5b100                PUSH 0xb1d534
00532b90  8d8e98000000              LEA ECX,[ESI + 0x98]
00532b96  e83582edff                CALL 0x0040add0
00532b9b  84c0                      TEST AL,AL
00532b9d  0f84d8000000              JZ 0x00532c7b
00532ba3  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
00532baa  7418                      JZ 0x00532bc4
00532bac  6840b6c700                PUSH 0xc7b640
00532bb1  8d8e200f0000              LEA ECX,[ESI + 0xf20]
00532bb7  e874da4d00                CALL 0x00a10630
00532bbc  84c0                      TEST AL,AL
00532bbe  0f84b7000000              JZ 0x00532c7b
00532bc4  687011b600                PUSH 0xb61170
00532bc9  8d8e98000000              LEA ECX,[ESI + 0x98]
00532bcf  e80c81edff                CALL 0x0040ace0
00532bd4  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00532bdc  f30f101544b6c700          MOVSS XMM2,dword ptr [0x00c7b644]
00532be4  85c0                      TEST EAX,EAX
00532be6  7409                      JZ 0x00532bf1
00532be8  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00532bec  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00532bf1  8d4dac                    LEA ECX,[EBP + -0x54]
00532bf4  e87745edff                CALL 0x00407170
00532bf9  f30f5e0d24a3ba00          DIVSS XMM1,dword ptr [0x00baa324]
00532c01  6840b6c700                PUSH 0xc7b640
00532c06  50                        PUSH EAX
00532c07  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
00532c0d  b901000000                MOV ECX,0x1
00532c12  50                        PUSH EAX
00532c13  8d95f0feffff              LEA EDX,[EBP + 0xfffffef0]
00532c19  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
00532c23  c785fcfeffff0000c0c0      MOV dword ptr [EBP + 0xfffffefc],0xc0c00000
00532c2d  f30f5e1524a3ba00          DIVSS XMM2,dword ptr [0x00baa324]
00532c35  f30f588e3c030000          ADDSS XMM1,dword ptr [ESI + 0x33c]
00532c3d  f30f589640030000          ADDSS XMM2,dword ptr [ESI + 0x340]
00532c45  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
00532c4d  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
00532c55  e896501a00                CALL 0x006d7cf0
00532c5a  83c40c                    ADD ESP,0xc
00532c5d  c780e40000000000403f      MOV dword ptr [EAX + 0xe4],0x3f400000
00532c67  c780e80000000000403f      MOV dword ptr [EAX + 0xe8],0x3f400000
00532c71  c780580300000000c842      MOV dword ptr [EAX + 0x358],0x42c80000
00532c7b  83be9c00000000            CMP dword ptr [ESI + 0x9c],0x0
00532c82  7409                      JZ 0x00532c8d
00532c84  80beac00000000            CMP byte ptr [ESI + 0xac],0x0
00532c8b  752c                      JNZ 0x00532cb9
00532c8d  6a00                      PUSH 0x0
00532c8f  6854bcb100                PUSH 0xb1bc54
00532c94  8bcb                      MOV ECX,EBX
00532c96  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
00532ca0  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
00532caa  e8917cedff                CALL 0x0040a940
00532caf  c786bc0b000000000000      MOV dword ptr [ESI + 0xbbc],0x0
00532cb9  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
00532cc1  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00532cc9  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
00532cd1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00532cd4  64890d00000000            MOV dword ptr FS:[0x0],ECX
00532cdb  59                        POP ECX
00532cdc  5f                        POP EDI
00532cdd  5e                        POP ESI
00532cde  5b                        POP EBX
00532cdf  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
00532ce2  33cd                      XOR ECX,EBP
00532ce4  e842c45b00                CALL 0x00aef12b
00532ce9  8be5                      MOV ESP,EBP
00532ceb  5d                        POP EBP
00532cec  c3                        RET
