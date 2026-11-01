; J460 NPC AI 0x00551d30 AI_00551d30
; types=960
; identities=960.0.0,960.1.0,960.2.0,960.3.0,960.4.0
; entry=00551d30
00551d30  53                        PUSH EBX
00551d31  8bdc                      MOV EBX,ESP
00551d33  83ec08                    SUB ESP,0x8
00551d36  83e4f8                    AND ESP,0xfffffff8
00551d39  83c404                    ADD ESP,0x4
00551d3c  55                        PUSH EBP
00551d3d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00551d40  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00551d44  8bec                      MOV EBP,ESP
00551d46  83ec58                    SUB ESP,0x58
00551d49  a1b493bf00                MOV EAX,[0x00bf93b4]
00551d4e  33c5                      XOR EAX,EBP
00551d50  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00551d53  56                        PUSH ESI
00551d54  57                        PUSH EDI
00551d55  8bf9                      MOV EDI,ECX
00551d57  897dbc                    MOV dword ptr [EBP + -0x44],EDI
00551d5a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00551d60  85c0                      TEST EAX,EAX
00551d62  0f8435040000              JZ 0x0055219d
00551d68  83f803                    CMP EAX,0x3
00551d6b  0f8543050000              JNZ 0x005522b4
00551d71  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00551d74  83f804                    CMP EAX,0x4
00551d77  7409                      JZ 0x00551d82
00551d79  83f803                    CMP EAX,0x3
00551d7c  0f85d8030000              JNZ 0x0055215a
00551d82  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00551d88  83390d                    CMP dword ptr [ECX],0xd
00551d8b  0f85c9030000              JNZ 0x0055215a
00551d91  83790401                  CMP dword ptr [ECX + 0x4],0x1
00551d95  0f85bf030000              JNZ 0x0055215a
00551d9b  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00551d9e  85f6                      TEST ESI,ESI
00551da0  7460                      JZ 0x00551e02
00551da2  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00551da6  8bc6                      MOV EAX,ESI
00551da8  7202                      JC 0x00551dac
00551daa  8b06                      MOV EAX,dword ptr [ESI]
00551dac  ba28d4b100                MOV EDX,0xb1d428
00551db1  8a08                      MOV CL,byte ptr [EAX]
00551db3  3a0a                      CMP CL,byte ptr [EDX]
00551db5  884dcf                    MOV byte ptr [EBP + -0x31],CL
00551db8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00551dbe  7527                      JNZ 0x00551de7
00551dc0  807dcf00                  CMP byte ptr [EBP + -0x31],0x0
00551dc4  741d                      JZ 0x00551de3
00551dc6  8a4801                    MOV CL,byte ptr [EAX + 0x1]
00551dc9  3a4a01                    CMP CL,byte ptr [EDX + 0x1]
00551dcc  884dcf                    MOV byte ptr [EBP + -0x31],CL
00551dcf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00551dd5  7510                      JNZ 0x00551de7
00551dd7  83c002                    ADD EAX,0x2
00551dda  83c202                    ADD EDX,0x2
00551ddd  807dcf00                  CMP byte ptr [EBP + -0x31],0x0
00551de1  75ce                      JNZ 0x00551db1
00551de3  33c0                      XOR EAX,EAX
00551de5  eb05                      JMP 0x00551dec
00551de7  1bc0                      SBB EAX,EAX
00551de9  83c801                    OR EAX,0x1
00551dec  85c0                      TEST EAX,EAX
00551dee  7512                      JNZ 0x00551e02
00551df0  384634                    CMP byte ptr [ESI + 0x34],AL
00551df3  7434                      JZ 0x00551e29
00551df5  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00551dfb  8d7748                    LEA ESI,[EDI + 0x48]
00551dfe  7529                      JNZ 0x00551e29
00551e00  eb03                      JMP 0x00551e05
00551e02  8d7748                    LEA ESI,[EDI + 0x48]
00551e05  6a01                      PUSH 0x1
00551e07  6828d4b100                PUSH 0xb1d428
00551e0c  8bce                      MOV ECX,ESI
00551e0e  e8bd87ebff                CALL 0x0040a5d0
00551e13  84c0                      TEST AL,AL
00551e15  740c                      JZ 0x00551e23
00551e17  8d4e30                    LEA ECX,[ESI + 0x30]
00551e1a  e89183ebff                CALL 0x0040a1b0
00551e1f  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00551e23  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00551e29  837f2c04                  CMP dword ptr [EDI + 0x2c],0x4
00551e2d  0f8527030000              JNZ 0x0055215a
00551e33  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00551e3a  0f851a030000              JNZ 0x0055215a
00551e40  8b81f8640200              MOV EAX,dword ptr [ECX + 0x264f8]
00551e46  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00551e4c  83f804                    CMP EAX,0x4
00551e4f  0f8e05030000              JLE 0x0055215a
00551e55  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00551e5d  0f57c9                    XORPS XMM1,XMM1
00551e60  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00551e66  f30f58c1                  ADDSS XMM0,XMM1
00551e6a  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00551e70  33f6                      XOR ESI,ESI
00551e72  c1f802                    SAR EAX,0x2
00551e75  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
00551e7a  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00551e82  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
00551e8a  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00551e8f  85c0                      TEST EAX,EAX
00551e91  0f84c3020000              JZ 0x0055215a
00551e97  56                        PUSH ESI
00551e98  e8d359ecff                CALL 0x00417870
00551e9d  83782c00                  CMP dword ptr [EAX + 0x2c],0x0
00551ea1  0f85b5000000              JNZ 0x00551f5c
00551ea7  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
00551eae  0f85a8000000              JNZ 0x00551f5c
00551eb4  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00551ebc  f30f5c45c8                SUBSS XMM0,dword ptr [EBP + -0x38]
00551ec1  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00551ec8  0f2f0500aaba00            COMISS XMM0,dword ptr [0x00baaa00]
00551ecf  0f8787000000              JA 0x00551f5c
00551ed5  f30f105dc0                MOVSS XMM3,dword ptr [EBP + -0x40]
00551eda  f30f10251ca8ba00          MOVSS XMM4,dword ptr [0x00baa81c]
00551ee2  0f28cb                    MOVAPS XMM1,XMM3
00551ee5  f30f10908c030000          MOVSS XMM2,dword ptr [EAX + 0x38c]
00551eed  f30f5ccc                  SUBSS XMM1,XMM4
00551ef1  0f2fca                    COMISS XMM1,XMM2
00551ef4  760d                      JBE 0x00551f03
00551ef6  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00551efe  0f2fc1                    COMISS XMM0,XMM1
00551f01  737c                      JNC 0x00551f7f
00551f03  0f28c3                    MOVAPS XMM0,XMM3
00551f06  f30f58c4                  ADDSS XMM0,XMM4
00551f0a  0f2fd0                    COMISS XMM2,XMM0
00551f0d  7609                      JBE 0x00551f18
00551f0f  0f2f803c030000            COMISS XMM0,dword ptr [EAX + 0x33c]
00551f16  7367                      JNC 0x00551f7f
00551f18  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00551f20  0f57c0                    XORPS XMM0,XMM0
00551f23  f30f58c8                  ADDSS XMM1,XMM0
00551f27  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00551f2f  f30f580550a9ba00          ADDSS XMM0,dword ptr [0x00baa950]
00551f37  f30f5cca                  SUBSS XMM1,XMM2
00551f3b  f30f5c8090030000          SUBSS XMM0,dword ptr [EAX + 0x390]
00551f43  f30f59c9                  MULSS XMM1,XMM1
00551f47  f30f59c0                  MULSS XMM0,XMM0
00551f4b  f30f58c1                  ADDSS XMM0,XMM1
00551f4f  f30f100d24acba00          MOVSS XMM1,dword ptr [0x00baac24]
00551f57  0f2fc8                    COMISS XMM1,XMM0
00551f5a  7323                      JNC 0x00551f7f
00551f5c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00551f62  46                        INC ESI
00551f63  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00551f69  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00551f6f  c1f802                    SAR EAX,0x2
00551f72  3bf0                      CMP ESI,EAX
00551f74  0f821dffffff              JC 0x00551e97
00551f7a  e9db010000                JMP 0x0055215a
00551f7f  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
00551f85  8d4dac                    LEA ECX,[EBP + -0x54]
00551f88  f30f7e0504f5b100          MOVQ XMM0,qword ptr [0x00b1f504]
00551f90  8945ac                    MOV dword ptr [EBP + -0x54],EAX
00551f93  a10cf5b100                MOV EAX,[0x00b1f50c]
00551f98  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00551fa2  660fd645b0                MOVQ qword ptr [EBP + -0x50],XMM0
00551fa7  8945b8                    MOV dword ptr [EBP + -0x48],EAX
00551faa  e841712900                CALL 0x007e90f0
00551faf  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00551fb7  f30f5c05e8a7ba00          SUBSS XMM0,dword ptr [0x00baa7e8]
00551fbf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00551fc5  50                        PUSH EAX
00551fc6  6a00                      PUSH 0x0
00551fc8  57                        PUSH EDI
00551fc9  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
00551fce  8d45c4                    LEA EAX,[EBP + -0x3c]
00551fd1  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00551fd9  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
00551fe1  6840b6c700                PUSH 0xc7b640
00551fe6  50                        PUSH EAX
00551fe7  6a00                      PUSH 0x0
00551fe9  68b6030000                PUSH 0x3b6
00551fee  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00551ff3  e8286bedff                CALL 0x00428b20
00551ff8  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00552000  8bc8                      MOV ECX,EAX
00552002  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0055200a  8b01                      MOV EAX,dword ptr [ECX]
0055200c  f30f118134030000          MOVSS dword ptr [ECX + 0x334],XMM0
00552014  f30f118938030000          MOVSS dword ptr [ECX + 0x338],XMM1
0055201c  ff500c                    CALL dword ptr [EAX + 0xc]
0055201f  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00552025  6a00                      PUSH 0x0
00552027  8d8ea8ba0100              LEA ECX,[ESI + 0x1baa8]
0055202d  e8dec94600                CALL 0x009bea10
00552032  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
00552038  33f6                      XOR ESI,ESI
0055203a  39b064120000              CMP dword ptr [EAX + 0x1264],ESI
00552040  766f                      JBE 0x005520b1
00552042  8bf8                      MOV EDI,EAX
00552044  8b875c120000              MOV EAX,dword ptr [EDI + 0x125c]
0055204a  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
0055204d  8945c8                    MOV dword ptr [EBP + -0x38],EAX
00552050  83782804                  CMP dword ptr [EAX + 0x28],0x4
00552054  754f                      JNZ 0x005520a5
00552056  8b00                      MOV EAX,dword ptr [EAX]
00552058  8b0d40b6c700              MOV ECX,dword ptr [0x00c7b640]
0055205e  894de4                    MOV dword ptr [EBP + -0x1c],ECX
00552061  894dec                    MOV dword ptr [EBP + -0x14],ECX
00552064  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
00552067  a144b6c700                MOV EAX,[0x00c7b644]
0055206c  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
0055206f  8945e8                    MOV dword ptr [EBP + -0x18],EAX
00552072  8945f0                    MOV dword ptr [EBP + -0x10],EAX
00552075  8d45d4                    LEA EAX,[EBP + -0x2c]
00552078  50                        PUSH EAX
00552079  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
00552080  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
00552087  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
0055208e  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
00552095  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
0055209c  c745f800000000            MOV dword ptr [EBP + -0x8],0x0
005520a3  ffd2                      CALL EDX
005520a5  46                        INC ESI
005520a6  3bb764120000              CMP ESI,dword ptr [EDI + 0x1264]
005520ac  7296                      JC 0x00552044
005520ae  8b7dbc                    MOV EDI,dword ptr [EBP + -0x44]
005520b1  b924070000                MOV ECX,0x724
005520b6  33c0                      XOR EAX,EAX
005520b8  894dc8                    MOV dword ptr [EBP + -0x38],ECX
005520bb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
005520c0  40                        INC EAX
005520c1  8945c0                    MOV dword ptr [EBP + -0x40],EAX
005520c4  83f808                    CMP EAX,0x8
005520c7  7768                      JA 0x00552131
005520c9  a17816c700                MOV EAX,[0x00c71678]
005520ce  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005520d4  8b3401                    MOV ESI,dword ptr [ECX + EAX*0x1]
005520d7  85f6                      TEST ESI,ESI
005520d9  7453                      JZ 0x0055212e
005520db  837e0c01                  CMP dword ptr [ESI + 0xc],0x1
005520df  744d                      JZ 0x0055212e
005520e1  8bce                      MOV ECX,ESI
005520e3  c7460c01000000            MOV dword ptr [ESI + 0xc],0x1
005520ea  e851cd1b00                CALL 0x0070ee40
005520ef  8b8e5c010000              MOV ECX,dword ptr [ESI + 0x15c]
005520f5  83f907                    CMP ECX,0x7
005520f8  741f                      JZ 0x00552119
005520fa  8b8660010000              MOV EAX,dword ptr [ESI + 0x160]
00552100  83f807                    CMP EAX,0x7
00552103  7414                      JZ 0x00552119
00552105  83f908                    CMP ECX,0x8
00552108  740f                      JZ 0x00552119
0055210a  83f808                    CMP EAX,0x8
0055210d  740a                      JZ 0x00552119
0055210f  83f91d                    CMP ECX,0x1d
00552112  7405                      JZ 0x00552119
00552114  83f81d                    CMP EAX,0x1d
00552117  7512                      JNZ 0x0055212b
00552119  6a04                      PUSH 0x4
0055211b  6844d6b100                PUSH 0xb1d644
00552120  8d8ea4030000              LEA ECX,[ESI + 0x3a4]
00552126  e8a5abebff                CALL 0x0040ccd0
0055212b  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
0055212e  8b45c0                    MOV EAX,dword ptr [EBP + -0x40]
00552131  83c104                    ADD ECX,0x4
00552134  894dc8                    MOV dword ptr [EBP + -0x38],ECX
00552137  81f944070000              CMP ECX,0x744
0055213d  7c81                      JL 0x005520c0
0055213f  51                        PUSH ECX
00552140  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00552146  c704240ad7233d            MOV dword ptr [ESP],0x3d23d70a
0055214d  6a43                      PUSH 0x43
0055214f  8d89bc9f0200              LEA ECX,[ECX + 0x29fbc]
00552155  e816fd2800                CALL 0x007e1e70
0055215a  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00552162  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0055216a  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00552172  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0055217a  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00552182  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0055218a  5f                        POP EDI
0055218b  5e                        POP ESI
0055218c  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0055218f  33cd                      XOR ECX,EBP
00552191  e895cf5900                CALL 0x00aef12b
00552196  8be5                      MOV ESP,EBP
00552198  5d                        POP EBP
00552199  8be3                      MOV ESP,EBX
0055219b  5b                        POP EBX
0055219c  c3                        RET
0055219d  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005521a7  8d4f60                    LEA ECX,[EDI + 0x60]
005521aa  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
005521b0  898734030000              MOV dword ptr [EDI + 0x334],EAX
005521b6  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
005521bc  898738030000              MOV dword ptr [EDI + 0x338],EAX
005521c2  83791410                  CMP dword ptr [ECX + 0x14],0x10
005521c6  894dc8                    MOV dword ptr [EBP + -0x38],ECX
005521c9  7205                      JC 0x005521d0
005521cb  8b09                      MOV ECX,dword ptr [ECX]
005521cd  894dc8                    MOV dword ptr [EBP + -0x38],ECX
005521d0  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
005521d3  85f6                      TEST ESI,ESI
005521d5  744b                      JZ 0x00552222
005521d7  837e1410                  CMP dword ptr [ESI + 0x14],0x10
005521db  8bc6                      MOV EAX,ESI
005521dd  7202                      JC 0x005521e1
005521df  8b06                      MOV EAX,dword ptr [ESI]
005521e1  8a10                      MOV DL,byte ptr [EAX]
005521e3  3a11                      CMP DL,byte ptr [ECX]
005521e5  751a                      JNZ 0x00552201
005521e7  84d2                      TEST DL,DL
005521e9  7412                      JZ 0x005521fd
005521eb  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005521ee  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005521f1  750e                      JNZ 0x00552201
005521f3  83c002                    ADD EAX,0x2
005521f6  83c102                    ADD ECX,0x2
005521f9  84d2                      TEST DL,DL
005521fb  75e4                      JNZ 0x005521e1
005521fd  33c0                      XOR EAX,EAX
005521ff  eb05                      JMP 0x00552206
00552201  1bc0                      SBB EAX,EAX
00552203  83c801                    OR EAX,0x1
00552206  85c0                      TEST EAX,EAX
00552208  7515                      JNZ 0x0055221f
0055220a  384634                    CMP byte ptr [ESI + 0x34],AL
0055220d  7430                      JZ 0x0055223f
0055220f  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00552215  8d7748                    LEA ESI,[EDI + 0x48]
00552218  7525                      JNZ 0x0055223f
0055221a  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
0055221d  eb06                      JMP 0x00552225
0055221f  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
00552222  8d7748                    LEA ESI,[EDI + 0x48]
00552225  6a01                      PUSH 0x1
00552227  51                        PUSH ECX
00552228  8bce                      MOV ECX,ESI
0055222a  e8a183ebff                CALL 0x0040a5d0
0055222f  84c0                      TEST AL,AL
00552231  740c                      JZ 0x0055223f
00552233  8d4e30                    LEA ECX,[ESI + 0x30]
00552236  e8757febff                CALL 0x0040a1b0
0055223b  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0055223f  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00552245  a17816c700                MOV EAX,[0x00c71678]
0055224a  83e1fb                    AND ECX,0xfffffffb
0055224d  818f6c01000008200000      OR dword ptr [EDI + 0x16c],0x2008
00552257  81c911002544              OR ECX,0x44250011
0055225d  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00552263  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0055226a  83b80c83010002            CMP dword ptr [EAX + 0x1830c],0x2
00552271  7541                      JNZ 0x005522b4
00552273  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0055227a  8d4dd0                    LEA ECX,[EBP + -0x30]
0055227d  8b07                      MOV EAX,dword ptr [EDI]
0055227f  6a01                      PUSH 0x1
00552281  6a00                      PUSH 0x0
00552283  68ff000000                PUSH 0xff
00552288  6aff                      PUSH -0x1
0055228a  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0055228e  51                        PUSH ECX
0055228f  0f2805c0baba00            MOVAPS XMM0,xmmword ptr [0x00babac0]
00552296  8bcf                      MOV ECX,EDI
00552298  0f1145e0                  MOVUPS xmmword ptr [EBP + -0x20],XMM0
0055229c  c745f000000000            MOV dword ptr [EBP + -0x10],0x0
005522a3  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
005522aa  c745f800000000            MOV dword ptr [EBP + -0x8],0x0
005522b1  ff503c                    CALL dword ptr [EAX + 0x3c]
005522b4  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005522b7  5f                        POP EDI
005522b8  33cd                      XOR ECX,EBP
005522ba  5e                        POP ESI
005522bb  e86bce5900                CALL 0x00aef12b
005522c0  8be5                      MOV ESP,EBP
005522c2  5d                        POP EBP
005522c3  8be3                      MOV ESP,EBX
005522c5  5b                        POP EBX
005522c6  c3                        RET
