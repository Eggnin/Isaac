; J460 NPC AI 0x0053c0d0 AI_0053c0d0
; types=240,241,242,304
; identities=240.0.0,240.1.0,240.2.0,240.3.0,241.0.0,241.1.0,242.0.0,304.0.0
; entry=0053c0d0
0053c0d0  53                        PUSH EBX
0053c0d1  8bdc                      MOV EBX,ESP
0053c0d3  83ec08                    SUB ESP,0x8
0053c0d6  83e4f8                    AND ESP,0xfffffff8
0053c0d9  83c404                    ADD ESP,0x4
0053c0dc  55                        PUSH EBP
0053c0dd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0053c0e0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0053c0e4  8bec                      MOV EBP,ESP
0053c0e6  6aff                      PUSH -0x1
0053c0e8  684048af00                PUSH 0xaf4840
0053c0ed  64a100000000              MOV EAX,FS:[0x0]
0053c0f3  50                        PUSH EAX
0053c0f4  53                        PUSH EBX
0053c0f5  81ec30020000              SUB ESP,0x230
0053c0fb  a1b493bf00                MOV EAX,[0x00bf93b4]
0053c100  33c5                      XOR EAX,EBP
0053c102  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0053c105  56                        PUSH ESI
0053c106  57                        PUSH EDI
0053c107  50                        PUSH EAX
0053c108  8d45f4                    LEA EAX,[EBP + -0xc]
0053c10b  64a300000000              MOV FS:[0x0],EAX
0053c111  8bf9                      MOV EDI,ECX
0053c113  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0053c11b  a17816c700                MOV EAX,[0x00c71678]
0053c120  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0053c128  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
0053c130  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0053c138  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053c140  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0053c148  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0053c14e  f30f107814                MOVSS XMM7,dword ptr [EAX + 0x14]
0053c153  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
0053c158  f30f58f9                  ADDSS XMM7,XMM1
0053c15c  f30f10581c                MOVSS XMM3,dword ptr [EAX + 0x1c]
0053c161  f30f58c1                  ADDSS XMM0,XMM1
0053c165  f30f106020                MOVSS XMM4,dword ptr [EAX + 0x20]
0053c16a  f30f5cd9                  SUBSS XMM3,XMM1
0053c16e  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0053c176  f30f5ce1                  SUBSS XMM4,XMM1
0053c17a  f30f11bd34feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM7
0053c182  2bc8                      SUB ECX,EAX
0053c184  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
0053c18c  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0053c18f  f30f119d38feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM3
0053c197  898d40feffff              MOV dword ptr [EBP + 0xfffffe40],ECX
0053c19d  f30f11a530feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM4
0053c1a5  3df0000000                CMP EAX,0xf0
0053c1aa  7511                      JNZ 0x0053c1bd
0053c1ac  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
0053c1af  83f901                    CMP ECX,0x1
0053c1b2  7405                      JZ 0x0053c1b9
0053c1b4  83f903                    CMP ECX,0x3
0053c1b7  7504                      JNZ 0x0053c1bd
0053c1b9  b201                      MOV DL,0x1
0053c1bb  eb02                      JMP 0x0053c1bf
0053c1bd  32d2                      XOR DL,DL
0053c1bf  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0053c1c5  889567feffff              MOV byte ptr [EBP + 0xfffffe67],DL
0053c1cb  85c9                      TEST ECX,ECX
0053c1cd  0f84a11e0000              JZ 0x0053e074
0053c1d3  83f904                    CMP ECX,0x4
0053c1d6  0f84030c0000              JZ 0x0053cddf
0053c1dc  83f908                    CMP ECX,0x8
0053c1df  0f8588210000              JNZ 0x0053e36d
0053c1e5  2df0000000                SUB EAX,0xf0
0053c1ea  0f84cb030000              JZ 0x0053c5bb
0053c1f0  83e801                    SUB EAX,0x1
0053c1f3  0f84be010000              JZ 0x0053c3b7
0053c1f9  83e801                    SUB EAX,0x1
0053c1fc  0f857c0b0000              JNZ 0x0053cd7e
0053c202  68dcd2b100                PUSH 0xb1d2dc
0053c207  8d4f48                    LEA ECX,[EDI + 0x48]
0053c20a  e821eeecff                CALL 0x0040b030
0053c20f  84c0                      TEST AL,AL
0053c211  0f8452010000              JZ 0x0053c369
0053c217  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0053c21d  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0053c225  48                        DEC EAX
0053c226  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053c22e  f30f118d4cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM1
0053c236  f30f118d58feffff          MOVSS dword ptr [EBP + 0xfffffe58],XMM1
0053c23e  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
0053c246  f30f11855cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM0
0053c24e  83f803                    CMP EAX,0x3
0053c251  7760                      JA 0x0053c2b3
0053c253  ff24858ce35300            JMP dword ptr [EAX*0x4 + 0x53e38c]
0053c25a  f30f10055ca7ba00          MOVSS XMM0,dword ptr [0x00baa75c]
0053c262  c7855cfeffff00000041      MOV dword ptr [EBP + 0xfffffe5c],0x41000000
0053c26c  eb3d                      JMP 0x0053c2ab
0053c26e  f30f1005ccadba00          MOVSS XMM0,dword ptr [0x00baadcc]
0053c276  c7855cfeffff000000c1      MOV dword ptr [EBP + 0xfffffe5c],0xc1000000
0053c280  eb29                      JMP 0x0053c2ab
0053c282  c78558feffff00000041      MOV dword ptr [EBP + 0xfffffe58],0x41000000
0053c28c  eb1a                      JMP 0x0053c2a8
0053c28e  f30f580d5ca7ba00          ADDSS XMM1,dword ptr [0x00baa75c]
0053c296  c78558feffff000000c1      MOV dword ptr [EBP + 0xfffffe58],0xc1000000
0053c2a0  f30f118d4cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM1
0053c2a8  0f57c0                    XORPS XMM0,XMM0
0053c2ab  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
0053c2b3  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
0053c2b9  e8722cf0ff                CALL 0x0043ef30
0053c2be  f30f10854cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe4c]
0053c2c6  83ec0c                    SUB ESP,0xc
0053c2c9  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0053c2d1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053c2d7  8bf0                      MOV ESI,EAX
0053c2d9  f30f101d84a7ba00          MOVSS XMM3,dword ptr [0x00baa784]
0053c2e1  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
0053c2e7  c74424080000a040          MOV dword ptr [ESP + 0x8],0x40a00000
0053c2ef  c74424040000a040          MOV dword ptr [ESP + 0x4],0x40a00000
0053c2f7  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0053c2fd  f30f118544feffff          MOVSS dword ptr [EBP + 0xfffffe44],XMM0
0053c305  f30f108554feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe54]
0053c30d  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0053c315  c704240000a040            MOV dword ptr [ESP],0x40a00000
0053c31c  50                        PUSH EAX
0053c31d  8d852cfeffff              LEA EAX,[EBP + 0xfffffe2c]
0053c323  50                        PUSH EAX
0053c324  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0053c32c  e81f6c2d00                CALL 0x00812f50
0053c331  56                        PUSH ESI
0053c332  6a02                      PUSH 0x2
0053c334  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
0053c33a  8bcf                      MOV ECX,EDI
0053c33c  50                        PUSH EAX
0053c33d  8d852cfeffff              LEA EAX,[EBP + 0xfffffe2c]
0053c343  50                        PUSH EAX
0053c344  e897ef1800                CALL 0x006cb2e0
0053c349  51                        PUSH ECX
0053c34a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053c351  6a00                      PUSH 0x0
0053c353  6a02                      PUSH 0x2
0053c355  51                        PUSH ECX
0053c356  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053c35d  8bcf                      MOV ECX,EDI
0053c35f  683d010000                PUSH 0x13d
0053c364  e837a81900                CALL 0x006d6ba0
0053c369  e8f22b1b00                CALL 0x006eef60
0053c36e  a801                      TEST AL,0x1
0053c370  0f85080a0000              JNZ 0x0053cd7e
0053c376  83bfc00b000003            CMP dword ptr [EDI + 0xbc0],0x3
0053c37d  7d1c                      JGE 0x0053c39b
0053c37f  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0053c387  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0053c38e  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0053c396  e9e3090000                JMP 0x0053cd7e
0053c39b  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0053c3a3  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0053c3aa  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0053c3b2  e9c7090000                JMP 0x0053cd7e
0053c3b7  68dcd2b100                PUSH 0xb1d2dc
0053c3bc  8d4f48                    LEA ECX,[EDI + 0x48]
0053c3bf  e86cececff                CALL 0x0040b030
0053c3c4  84c0                      TEST AL,AL
0053c3c6  0f84b2090000              JZ 0x0053cd7e
0053c3cc  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0053c3d2  0f57c9                    XORPS XMM1,XMM1
0053c3d5  f30f1015b4a9ba00          MOVSS XMM2,dword ptr [0x00baa9b4]
0053c3dd  48                        DEC EAX
0053c3de  f30f118d54feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM1
0053c3e6  83f803                    CMP EAX,0x3
0053c3e9  7726                      JA 0x0053c411
0053c3eb  ff24859ce35300            JMP dword ptr [EAX*0x4 + 0x53e39c]
0053c3f2  0f28ca                    MOVAPS XMM1,XMM2
0053c3f5  eb12                      JMP 0x0053c409
0053c3f7  f30f100d50aeba00          MOVSS XMM1,dword ptr [0x00baae50]
0053c3ff  eb08                      JMP 0x0053c409
0053c401  f30f100d78aaba00          MOVSS XMM1,dword ptr [0x00baaa78]
0053c409  f30f118d54feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM1
0053c411  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0053c415  0f8539010000              JNZ 0x0053c554
0053c41b  0f28c1                    MOVAPS XMM0,XMM1
0053c41e  f30f58c2                  ADDSS XMM0,XMM2
0053c422  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0053c42a  f30f118530feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM0
0053c432  e80911eeff                CALL 0x0041d540
0053c437  0f28c8                    MOVAPS XMM1,XMM0
0053c43a  f30f108530feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe30]
0053c442  f30f118d40feffff          MOVSS dword ptr [EBP + 0xfffffe40],XMM1
0053c44a  e8d110eeff                CALL 0x0041d520
0053c44f  f30f108d40feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe40]
0053c457  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
0053c45d  0f28d0                    MOVAPS XMM2,XMM0
0053c460  f30f58c9                  ADDSS XMM1,XMM1
0053c464  f30f10874c030000          MOVSS XMM0,dword ptr [EDI + 0x34c]
0053c46c  f30f58d2                  ADDSS XMM2,XMM2
0053c470  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0053c478  6a00                      PUSH 0x0
0053c47a  57                        PUSH EDI
0053c47b  6840b6c700                PUSH 0xc7b640
0053c480  6a2d                      PUSH 0x2d
0053c482  f30f5cc1                  SUBSS XMM0,XMM1
0053c486  f30f118d40feffff          MOVSS dword ptr [EBP + 0xfffffe40],XMM1
0053c48e  51                        PUSH ECX
0053c48f  f30f119530feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM2
0053c497  f30f118558feffff          MOVSS dword ptr [EBP + 0xfffffe58],XMM0
0053c49f  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
0053c4a7  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0053c4af  f30f5cc2                  SUBSS XMM0,XMM2
0053c4b3  f30f11855cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM0
0053c4bb  f30f108554feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe54]
0053c4c3  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
0053c4cb  f30f110424                MOVSS dword ptr [ESP],XMM0
0053c4d0  50                        PUSH EAX
0053c4d1  6a01                      PUSH 0x1
0053c4d3  e8382e4300                CALL 0x0096f310
0053c4d8  83c41c                    ADD ESP,0x1c
0053c4db  8bc8                      MOV ECX,EAX
0053c4dd  8b10                      MOV EDX,dword ptr [EAX]
0053c4df  c7805803000000007a44      MOV dword ptr [EAX + 0x358],0x447a0000
0053c4e9  ff520c                    CALL dword ptr [EDX + 0xc]
0053c4ec  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0053c4f4  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
0053c4fa  f30f58874c030000          ADDSS XMM0,dword ptr [EDI + 0x34c]
0053c502  6a00                      PUSH 0x0
0053c504  57                        PUSH EDI
0053c505  6840b6c700                PUSH 0xc7b640
0053c50a  6a2d                      PUSH 0x2d
0053c50c  f30f588540feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe40]
0053c514  51                        PUSH ECX
0053c515  f30f118558feffff          MOVSS dword ptr [EBP + 0xfffffe58],XMM0
0053c51d  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
0053c525  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0053c52d  f30f588530feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe30]
0053c535  f30f11855cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM0
0053c53d  f30f108554feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe54]
0053c545  f30f5805d0a8ba00          ADDSS XMM0,dword ptr [0x00baa8d0]
0053c54d  f30f110424                MOVSS dword ptr [ESP],XMM0
0053c552  eb46                      JMP 0x0053c59a
0053c554  f30f10874c030000          MOVSS XMM0,dword ptr [EDI + 0x34c]
0053c55c  8d8550feffff              LEA EAX,[EBP + 0xfffffe50]
0053c562  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0053c56a  6a00                      PUSH 0x0
0053c56c  57                        PUSH EDI
0053c56d  6840b6c700                PUSH 0xc7b640
0053c572  6a2d                      PUSH 0x2d
0053c574  f30f118550feffff          MOVSS dword ptr [EBP + 0xfffffe50],XMM0
0053c57c  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
0053c584  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0053c58c  51                        PUSH ECX
0053c58d  f30f110c24                MOVSS dword ptr [ESP],XMM1
0053c592  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
0053c59a  50                        PUSH EAX
0053c59b  6a01                      PUSH 0x1
0053c59d  e86e2d4300                CALL 0x0096f310
0053c5a2  83c41c                    ADD ESP,0x1c
0053c5a5  8bc8                      MOV ECX,EAX
0053c5a7  c7805803000000007a44      MOV dword ptr [EAX + 0x358],0x447a0000
0053c5b1  8b10                      MOV EDX,dword ptr [EAX]
0053c5b3  ff520c                    CALL dword ptr [EDX + 0xc]
0053c5b6  e9a3070000                JMP 0x0053cd5e
0053c5bb  84d2                      TEST DL,DL
0053c5bd  0f842d060000              JZ 0x0053cbf0
0053c5c3  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0053c5ca  7d22                      JGE 0x0053c5ee
0053c5cc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053c5d0  740d                      JZ 0x0053c5df
0053c5d2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053c5d9  0f8568070000              JNZ 0x0053cd47
0053c5df  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053c5e9  e959070000                JMP 0x0053cd47
0053c5ee  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053c5f2  7409                      JZ 0x0053c5fd
0053c5f4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053c5fb  750f                      JNZ 0x0053c60c
0053c5fd  6a00                      PUSH 0x0
0053c5ff  682412b600                PUSH 0xb61224
0053c604  8d4f48                    LEA ECX,[EDI + 0x48]
0053c607  e874ddecff                CALL 0x0040a380
0053c60c  68dcd2b100                PUSH 0xb1d2dc
0053c611  8d4f48                    LEA ECX,[EDI + 0x48]
0053c614  e817eaecff                CALL 0x0040b030
0053c619  84c0                      TEST AL,AL
0053c61b  742a                      JZ 0x0053c647
0053c61d  51                        PUSH ECX
0053c61e  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
0053c625  6a00                      PUSH 0x0
0053c627  6a02                      PUSH 0x2
0053c629  51                        PUSH ECX
0053c62a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053c631  8bcf                      MOV ECX,EDI
0053c633  683d010000                PUSH 0x13d
0053c638  e863a51900                CALL 0x006d6ba0
0053c63d  c787a00b00005a000000      MOV dword ptr [EDI + 0xba0],0x5a
0053c647  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053c64e  742f                      JZ 0x0053c67f
0053c650  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0053c656  83e802                    SUB EAX,0x2
0053c659  83f848                    CMP EAX,0x48
0053c65c  7721                      JA 0x0053c67f
0053c65e  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0053c666  8bcf                      MOV ECX,EDI
0053c668  6a07                      PUSH 0x7
0053c66a  6a00                      PUSH 0x0
0053c66c  e8efe71800                CALL 0x006cae60
0053c671  84c0                      TEST AL,AL
0053c673  750a                      JNZ 0x0053c67f
0053c675  c787a00b000001000000      MOV dword ptr [EDI + 0xba0],0x1
0053c67f  33c0                      XOR EAX,EAX
0053c681  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0053c685  0f94c0                    SETZ AL
0053c688  33c9                      XOR ECX,ECX
0053c68a  83c002                    ADD EAX,0x2
0053c68d  898d60feffff              MOV dword ptr [EBP + 0xfffffe60],ECX
0053c693  898530feffff              MOV dword ptr [EBP + 0xfffffe30],EAX
0053c699  398d40feffff              CMP dword ptr [EBP + 0xfffffe40],ECX
0053c69f  0f8ea2060000              JLE 0x0053cd47
0053c6a5  f30f10155ca7ba00          MOVSS XMM2,dword ptr [0x00baa75c]
0053c6ad  f30f101d1ca8ba00          MOVSS XMM3,dword ptr [0x00baa81c]
0053c6b5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
0053c6c0  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0053c6c6  85c0                      TEST EAX,EAX
0053c6c8  0f8e79060000              JLE 0x0053cd47
0053c6ce  48                        DEC EAX
0053c6cf  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0053c6d5  85c0                      TEST EAX,EAX
0053c6d7  0f8ef5040000              JLE 0x0053cbd2
0053c6dd  99                        CDQ
0053c6de  f7bd30feffff              IDIV dword ptr [EBP + 0xfffffe30]
0053c6e4  83fa01                    CMP EDX,0x1
0053c6e7  0f85cd040000              JNZ 0x0053cbba
0053c6ed  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0053c6f3  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0053c6fb  48                        DEC EAX
0053c6fc  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0053c704  f30f118d44feffff          MOVSS dword ptr [EBP + 0xfffffe44],XMM1
0053c70c  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0053c714  c7855cfeffff00000000      MOV dword ptr [EBP + 0xfffffe5c],0x0
0053c71e  c78558feffff00000000      MOV dword ptr [EBP + 0xfffffe58],0x0
0053c728  83f803                    CMP EAX,0x3
0053c72b  7755                      JA 0x0053c782
0053c72d  ff2485ace35300            JMP dword ptr [EAX*0x4 + 0x53e3ac]
0053c734  c7855cfeffff00000041      MOV dword ptr [EBP + 0xfffffe5c],0x41000000
0053c73e  f30f58c2                  ADDSS XMM0,XMM2
0053c742  eb36                      JMP 0x0053c77a
0053c744  c7855cfeffff000000c1      MOV dword ptr [EBP + 0xfffffe5c],0xc1000000
0053c74e  f30f58c3                  ADDSS XMM0,XMM3
0053c752  eb26                      JMP 0x0053c77a
0053c754  c78558feffff00000041      MOV dword ptr [EBP + 0xfffffe58],0x41000000
0053c75e  eb16                      JMP 0x0053c776
0053c760  f30f58ca                  ADDSS XMM1,XMM2
0053c764  c78558feffff000000c1      MOV dword ptr [EBP + 0xfffffe58],0xc1000000
0053c76e  f30f118d44feffff          MOVSS dword ptr [EBP + 0xfffffe44],XMM1
0053c776  f30f5cc3                  SUBSS XMM0,XMM3
0053c77a  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0053c782  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0053c788  e8a327f0ff                CALL 0x0043ef30
0053c78d  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
0053c795  f30f580534a8ba00          ADDSS XMM0,dword ptr [0x00baa834]
0053c79d  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
0053c7a5  e8b6271b00                CALL 0x006eef60
0053c7aa  660f6ec0                  MOVD XMM0,EAX
0053c7ae  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053c7b2  c1e81f                    SHR EAX,0x1f
0053c7b5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053c7be  660f5ac0                  CVTPD2PS XMM0,XMM0
0053c7c2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053c7ca  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
0053c7d2  f30f58c0                  ADDSS XMM0,XMM0
0053c7d6  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
0053c7de  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
0053c7e6  f30f5c0534a1ba00          SUBSS XMM0,dword ptr [0x00baa134]
0053c7ee  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
0053c7f6  e865271b00                CALL 0x006eef60
0053c7fb  0f280db0c7ba00            MOVAPS XMM1,xmmword ptr [0x00bac7b0]
0053c802  f30f10955cfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe5c]
0053c80a  0f118d7cffffff            MOVUPS xmmword ptr [EBP + 0xffffff7c],XMM1
0053c811  c785e8fdffff0000003f      MOV dword ptr [EBP + 0xfffffde8],0x3f000000
0053c81b  660f6ec0                  MOVD XMM0,EAX
0053c81f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053c823  c1e81f                    SHR EAX,0x1f
0053c826  c745d404000000            MOV dword ptr [EBP + -0x2c],0x4
0053c82d  f30f100d54a3ba00          MOVSS XMM1,dword ptr [0x00baa354]
0053c835  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053c83e  8b85e8fdffff              MOV EAX,dword ptr [EBP + 0xfffffde8]
0053c844  894594                    MOV dword ptr [EBP + -0x6c],EAX
0053c847  f30f11953cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM2
0053c84f  660f5ac0                  CVTPD2PS XMM0,XMM0
0053c853  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053c85b  f30f590554a1ba00          MULSS XMM0,dword ptr [0x00baa154]
0053c863  f30f580554a1ba00          ADDSS XMM0,dword ptr [0x00baa154]
0053c86b  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
0053c873  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0053c87a  0f11856cffffff            MOVUPS xmmword ptr [EBP + 0xffffff6c],XMM0
0053c881  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
0053c889  0f14c1                    UNPCKLPS XMM0,XMM1
0053c88c  f30f108d58feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe58]
0053c894  660fd6458c                MOVQ qword ptr [EBP + -0x74],XMM0
0053c899  0f28c1                    MOVAPS XMM0,XMM1
0053c89c  f30f59c1                  MULSS XMM0,XMM1
0053c8a0  f30f118d54feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM1
0053c8a8  0f28ca                    MOVAPS XMM1,XMM2
0053c8ab  f30f59ca                  MULSS XMM1,XMM2
0053c8af  f30f58c1                  ADDSS XMM0,XMM1
0053c8b3  e89891efff                CALL 0x00435a50
0053c8b8  0f57c9                    XORPS XMM1,XMM1
0053c8bb  0f2fc1                    COMISS XMM0,XMM1
0053c8be  7633                      JBE 0x0053c8f3
0053c8c0  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0053c8c8  f30f5ec8                  DIVSS XMM1,XMM0
0053c8cc  0f28c1                    MOVAPS XMM0,XMM1
0053c8cf  f30f598554feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe54]
0053c8d7  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
0053c8df  f30f10853cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe3c]
0053c8e7  f30f59c1                  MULSS XMM0,XMM1
0053c8eb  f30f11853cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM0
0053c8f3  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0053c8fb  e8400ceeff                CALL 0x0041d540
0053c900  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
0053c908  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0053c910  e80b0ceeff                CALL 0x0041d520
0053c915  f30f118534feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM0
0053c91d  e83e261b00                CALL 0x006eef60
0053c922  f30f10ad3cfeffff          MOVSS XMM5,dword ptr [EBP + 0xfffffe3c]
0053c92a  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0053c930  f30f109d34feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe34]
0053c938  0f57c9                    XORPS XMM1,XMM1
0053c93b  f30f10a538feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe38]
0053c943  0f28c5                    MOVAPS XMM0,XMM5
0053c946  f30f59a554feffff          MULSS XMM4,dword ptr [EBP + 0xfffffe54]
0053c94e  51                        PUSH ECX
0053c94f  f30f59ad38feffff          MULSS XMM5,dword ptr [EBP + 0xfffffe38]
0053c957  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
0053c95d  f20f2ac8                  CVTSI2SD XMM1,EAX
0053c961  c1e81f                    SHR EAX,0x1f
0053c964  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0053c968  f30f59c3                  MULSS XMM0,XMM3
0053c96c  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0053c975  f30f599d54feffff          MULSS XMM3,dword ptr [EBP + 0xfffffe54]
0053c97d  a17816c700                MOV EAX,[0x00c71678]
0053c982  f30f5ce0                  SUBSS XMM4,XMM0
0053c986  660f5ac9                  CVTPD2PS XMM1,XMM1
0053c98a  f30f58dd                  ADDSS XMM3,XMM5
0053c98e  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0053c996  f30f5c0dd0a2ba00          SUBSS XMM1,dword ptr [0x00baa2d0]
0053c99e  f30f59e1                  MULSS XMM4,XMM1
0053c9a2  f30f59d9                  MULSS XMM3,XMM1
0053c9a6  f30f59255ca7ba00          MULSS XMM4,dword ptr [0x00baa75c]
0053c9ae  f30f591d5ca7ba00          MULSS XMM3,dword ptr [0x00baa75c]
0053c9b6  f30f58a544feffff          ADDSS XMM4,dword ptr [EBP + 0xfffffe44]
0053c9be  f30f589d48feffff          ADDSS XMM3,dword ptr [EBP + 0xfffffe48]
0053c9c6  f30f11a544feffff          MOVSS dword ptr [EBP + 0xfffffe44],XMM4
0053c9ce  f30f119d48feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM3
0053c9d6  0f8586000000              JNZ 0x0053ca62
0053c9dc  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
0053c9e4  f30f580520a1ba00          ADDSS XMM0,dword ptr [0x00baa120]
0053c9ec  6a04                      PUSH 0x4
0053c9ee  51                        PUSH ECX
0053c9ef  83ec0c                    SUB ESP,0xc
0053c9f2  c78568ffffff00000040      MOV dword ptr [EBP + 0xffffff68],0x40000000
0053c9fc  8d8d44feffff              LEA ECX,[EBP + 0xfffffe44]
0053ca02  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
0053ca0a  f30f108558feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe58]
0053ca12  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
0053ca1a  c744240800004040          MOV dword ptr [ESP + 0x8],0x40400000
0053ca22  c744240400004040          MOV dword ptr [ESP + 0x4],0x40400000
0053ca2a  c7042400004040            MOV dword ptr [ESP],0x40400000
0053ca31  f30f58c4                  ADDSS XMM0,XMM4
0053ca35  51                        PUSH ECX
0053ca36  8d8d1cfeffff              LEA ECX,[EBP + 0xfffffe1c]
0053ca3c  f30f118544feffff          MOVSS dword ptr [EBP + 0xfffffe44],XMM0
0053ca44  f30f10855cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe5c]
0053ca4c  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
0053ca54  f30f58c3                  ADDSS XMM0,XMM3
0053ca58  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0053ca60  eb2a                      JMP 0x0053ca8c
0053ca62  6a00                      PUSH 0x0
0053ca64  51                        PUSH ECX
0053ca65  83ec0c                    SUB ESP,0xc
0053ca68  8d8d44feffff              LEA ECX,[EBP + 0xfffffe44]
0053ca6e  c744240800004040          MOV dword ptr [ESP + 0x8],0x40400000
0053ca76  c744240400004040          MOV dword ptr [ESP + 0x4],0x40400000
0053ca7e  c7042400004040            MOV dword ptr [ESP],0x40400000
0053ca85  51                        PUSH ECX
0053ca86  8d8d24feffff              LEA ECX,[EBP + 0xfffffe24]
0053ca8c  f30f101dfca6ba00          MOVSS XMM3,dword ptr [0x00baa6fc]
0053ca94  51                        PUSH ECX
0053ca95  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0053ca9b  e8b0642d00                CALL 0x00812f50
0053caa0  50                        PUSH EAX
0053caa1  8bcf                      MOV ECX,EDI
0053caa3  e838e81800                CALL 0x006cb2e0
0053caa8  e8b3241b00                CALL 0x006eef60
0053caad  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053cab3  50                        PUSH EAX
0053cab4  6a00                      PUSH 0x0
0053cab6  6a00                      PUSH 0x0
0053cab8  6840b6c700                PUSH 0xc7b640
0053cabd  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
0053cac3  50                        PUSH EAX
0053cac4  6a50                      PUSH 0x50
0053cac6  68e8030000                PUSH 0x3e8
0053cacb  e850c0eeff                CALL 0x00428b20
0053cad0  8bf0                      MOV ESI,EAX
0053cad2  e889241b00                CALL 0x006eef60
0053cad7  8d8ef0000000              LEA ECX,[ESI + 0xf0]
0053cadd  660f6ec0                  MOVD XMM0,EAX
0053cae1  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0053cae5  c1e81f                    SHR EAX,0x1f
0053cae8  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053caf1  8d856cffffff              LEA EAX,[EBP + 0xffffff6c]
0053caf7  660f5ac0                  CVTPD2PS XMM0,XMM0
0053cafb  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053cb03  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0053cb0b  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
0053cb13  3bc8                      CMP ECX,EAX
0053cb15  7425                      JZ 0x0053cb3c
0053cb17  0f10856cffffff            MOVUPS XMM0,xmmword ptr [EBP + 0xffffff6c]
0053cb1e  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0053cb21  0f10857cffffff            MOVUPS XMM0,xmmword ptr [EBP + 0xffffff7c]
0053cb28  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0053cb2c  f30f7e458c                MOVQ XMM0,qword ptr [EBP + -0x74]
0053cb31  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0053cb36  8b4594                    MOV EAX,dword ptr [EBP + -0x6c]
0053cb39  894128                    MOV dword ptr [ECX + 0x28],EAX
0053cb3c  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
0053cb46  8d8d4cfeffff              LEA ECX,[EBP + 0xfffffe4c]
0053cb4c  c78650030000000030c1      MOV dword ptr [ESI + 0x350],0xc1300000
0053cb56  c7865803000000007041      MOV dword ptr [ESI + 0x358],0x41700000
0053cb60  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0053cb66  c7854cfeffff99000000      MOV dword ptr [EBP + 0xfffffe4c],0x99
0053cb70  e80b9c4100                CALL 0x00956780
0053cb75  83ec08                    SUB ESP,0x8
0053cb78  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0053cb80  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
0053cb87  6a00                      PUSH 0x0
0053cb89  6a02                      PUSH 0x2
0053cb8b  51                        PUSH ECX
0053cb8c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053cb93  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0053cb99  ffb54cfeffff              PUSH dword ptr [EBP + 0xfffffe4c]
0053cb9f  e88c103f00                CALL 0x0092dc30
0053cba4  f30f10155ca7ba00          MOVSS XMM2,dword ptr [0x00baa75c]
0053cbac  f30f101d1ca8ba00          MOVSS XMM3,dword ptr [0x00baa81c]
0053cbb4  8b8d60feffff              MOV ECX,dword ptr [EBP + 0xfffffe60]
0053cbba  41                        INC ECX
0053cbbb  898d60feffff              MOV dword ptr [EBP + 0xfffffe60],ECX
0053cbc1  3b8d40feffff              CMP ECX,dword ptr [EBP + 0xfffffe40]
0053cbc7  0f8cf3faffff              JL 0x0053c6c0
0053cbcd  e975010000                JMP 0x0053cd47
0053cbd2  6a00                      PUSH 0x0
0053cbd4  68ec08b600                PUSH 0xb608ec
0053cbd9  8d4f48                    LEA ECX,[EDI + 0x48]
0053cbdc  e89fd7ecff                CALL 0x0040a380
0053cbe1  c787a00b0000ffffffff      MOV dword ptr [EDI + 0xba0],0xffffffff
0053cbeb  e957010000                JMP 0x0053cd47
0053cbf0  68dcd2b100                PUSH 0xb1d2dc
0053cbf5  8d4f48                    LEA ECX,[EDI + 0x48]
0053cbf8  e833e4ecff                CALL 0x0040b030
0053cbfd  84c0                      TEST AL,AL
0053cbff  0f8442010000              JZ 0x0053cd47
0053cc05  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0053cc0b  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0053cc13  48                        DEC EAX
0053cc14  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053cc1c  f30f118d4cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM1
0053cc24  f30f118d58feffff          MOVSS dword ptr [EBP + 0xfffffe58],XMM1
0053cc2c  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
0053cc34  f30f11855cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM0
0053cc3c  83f803                    CMP EAX,0x3
0053cc3f  7765                      JA 0x0053cca6
0053cc41  ff2485bce35300            JMP dword ptr [EAX*0x4 + 0x53e3bc]
0053cc48  f30f10055ca7ba00          MOVSS XMM0,dword ptr [0x00baa75c]
0053cc50  c7855cfeffff00000041      MOV dword ptr [EBP + 0xfffffe5c],0x41000000
0053cc5a  eb42                      JMP 0x0053cc9e
0053cc5c  f30f1005ccadba00          MOVSS XMM0,dword ptr [0x00baadcc]
0053cc64  c7855cfeffff000000c1      MOV dword ptr [EBP + 0xfffffe5c],0xc1000000
0053cc6e  eb2e                      JMP 0x0053cc9e
0053cc70  c78558feffff00000041      MOV dword ptr [EBP + 0xfffffe58],0x41000000
0053cc7a  eb1a                      JMP 0x0053cc96
0053cc7c  f30f580d5ca7ba00          ADDSS XMM1,dword ptr [0x00baa75c]
0053cc84  c78558feffff000000c1      MOV dword ptr [EBP + 0xfffffe58],0xc1000000
0053cc8e  f30f118d4cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM1
0053cc96  f30f1005a0adba00          MOVSS XMM0,dword ptr [0x00baada0]
0053cc9e  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
0053cca6  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
0053ccac  e87f22f0ff                CALL 0x0043ef30
0053ccb1  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0053ccb5  751d                      JNZ 0x0053ccd4
0053ccb7  8b85c4feffff              MOV EAX,dword ptr [EBP + 0xfffffec4]
0053ccbd  838dc0feffff01            OR dword ptr [EBP + 0xfffffec0],0x1
0053ccc4  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
0053ccca  c78584feffffcdcc4c3f      MOV dword ptr [EBP + 0xfffffe84],0x3f4ccccd
0053ccd4  f30f10854cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe4c]
0053ccdc  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
0053cce2  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0053ccea  a17816c700                MOV EAX,[0x00c71678]
0053ccef  51                        PUSH ECX
0053ccf0  6a00                      PUSH 0x0
0053ccf2  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
0053ccf8  51                        PUSH ECX
0053ccf9  83ec08                    SUB ESP,0x8
0053ccfc  f30f118544feffff          MOVSS dword ptr [EBP + 0xfffffe44],XMM0
0053cd04  f30f108554feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe54]
0053cd0c  8d8d44feffff              LEA ECX,[EBP + 0xfffffe44]
0053cd12  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0053cd1a  c704240000a040            MOV dword ptr [ESP],0x40a00000
0053cd21  51                        PUSH ECX
0053cd22  8d8d24feffff              LEA ECX,[EBP + 0xfffffe24]
0053cd28  51                        PUSH ECX
0053cd29  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0053cd2f  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0053cd37  e85493efff                CALL 0x00436090
0053cd3c  83c404                    ADD ESP,0x4
0053cd3f  8bcf                      MOV ECX,EDI
0053cd41  50                        PUSH EAX
0053cd42  e899e51800                CALL 0x006cb2e0
0053cd47  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053cd4b  7431                      JZ 0x0053cd7e
0053cd4d  68d4d2b100                PUSH 0xb1d2d4
0053cd52  8d4f78                    LEA ECX,[EDI + 0x78]
0053cd55  e876e0ecff                CALL 0x0040add0
0053cd5a  84c0                      TEST AL,AL
0053cd5c  7420                      JZ 0x0053cd7e
0053cd5e  51                        PUSH ECX
0053cd5f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053cd66  6a00                      PUSH 0x0
0053cd68  6a02                      PUSH 0x2
0053cd6a  51                        PUSH ECX
0053cd6b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053cd72  8bcf                      MOV ECX,EDI
0053cd74  683d010000                PUSH 0x13d
0053cd79  e8229e1900                CALL 0x006d6ba0
0053cd7e  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0053cd86  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0053cd8e  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0053cd96  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0053cd9e  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0053cda6  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0053cdae  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053cdb2  740d                      JZ 0x0053cdc1
0053cdb4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053cdbb  0f85ac150000              JNZ 0x0053e36d
0053cdc1  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0053cdc7  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053cdd1  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
0053cdd4  89877c030000              MOV dword ptr [EDI + 0x37c],EAX
0053cdda  e98e150000                JMP 0x0053e36d
0053cddf  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053cde3  7577                      JNZ 0x0053ce5c
0053cde5  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0053cde8  85f6                      TEST ESI,ESI
0053cdea  744f                      JZ 0x0053ce3b
0053cdec  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053cdf0  8bc6                      MOV EAX,ESI
0053cdf2  7202                      JC 0x0053cdf6
0053cdf4  8b06                      MOV EAX,dword ptr [ESI]
0053cdf6  b9e4dcb100                MOV ECX,0xb1dce4
0053cdfb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0053ce00  8a10                      MOV DL,byte ptr [EAX]
0053ce02  3a11                      CMP DL,byte ptr [ECX]
0053ce04  751a                      JNZ 0x0053ce20
0053ce06  84d2                      TEST DL,DL
0053ce08  7412                      JZ 0x0053ce1c
0053ce0a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053ce0d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053ce10  750e                      JNZ 0x0053ce20
0053ce12  83c002                    ADD EAX,0x2
0053ce15  83c102                    ADD ECX,0x2
0053ce18  84d2                      TEST DL,DL
0053ce1a  75e4                      JNZ 0x0053ce00
0053ce1c  33c0                      XOR EAX,EAX
0053ce1e  eb05                      JMP 0x0053ce25
0053ce20  1bc0                      SBB EAX,EAX
0053ce22  83c801                    OR EAX,0x1
0053ce25  85c0                      TEST EAX,EAX
0053ce27  7512                      JNZ 0x0053ce3b
0053ce29  384634                    CMP byte ptr [ESI + 0x34],AL
0053ce2c  742e                      JZ 0x0053ce5c
0053ce2e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0053ce34  8d7748                    LEA ESI,[EDI + 0x48]
0053ce37  7523                      JNZ 0x0053ce5c
0053ce39  eb03                      JMP 0x0053ce3e
0053ce3b  8d7748                    LEA ESI,[EDI + 0x48]
0053ce3e  6a01                      PUSH 0x1
0053ce40  68e4dcb100                PUSH 0xb1dce4
0053ce45  8bce                      MOV ECX,ESI
0053ce47  e884d7ecff                CALL 0x0040a5d0
0053ce4c  84c0                      TEST AL,AL
0053ce4e  740c                      JZ 0x0053ce5c
0053ce50  8d4e30                    LEA ECX,[ESI + 0x30]
0053ce53  e858d3ecff                CALL 0x0040a1b0
0053ce58  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0053ce5c  8bcf                      MOV ECX,EDI
0053ce5e  8db73c030000              LEA ESI,[EDI + 0x33c]
0053ce64  e8d7191800                CALL 0x006be840
0053ce69  f30f101e                  MOVSS XMM3,dword ptr [ESI]
0053ce6d  0f57d2                    XORPS XMM2,XMM2
0053ce70  f30f106604                MOVSS XMM4,dword ptr [ESI + 0x4]
0053ce75  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0053ce7d  f30f5c983c030000          SUBSS XMM3,dword ptr [EAX + 0x33c]
0053ce85  f30f5ca040030000          SUBSS XMM4,dword ptr [EAX + 0x340]
0053ce8d  8b8f1c0f0000              MOV ECX,dword ptr [EDI + 0xf1c]
0053ce93  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0053ce9b  f30f119d3cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM3
0053cea3  f30f11a554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM4
0053ceab  83f9ff                    CMP ECX,-0x1
0053ceae  0f848d000000              JZ 0x0053cf41
0053ceb4  8d8524feffff              LEA EAX,[EBP + 0xfffffe24]
0053ceba  8bcf                      MOV ECX,EDI
0053cebc  50                        PUSH EAX
0053cebd  e80eb41900                CALL 0x006d82d0
0053cec2  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0053cec6  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0053cecd  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0053ced2  0f28c1                    MOVAPS XMM0,XMM1
0053ced5  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0053cedc  f30f59c1                  MULSS XMM0,XMM1
0053cee0  f30f118d3cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM1
0053cee8  0f28ca                    MOVAPS XMM1,XMM2
0053ceeb  f30f59ca                  MULSS XMM1,XMM2
0053ceef  f30f119554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM2
0053cef7  f30f58c1                  ADDSS XMM0,XMM1
0053cefb  e8508befff                CALL 0x00435a50
0053cf00  f30f109d3cfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe3c]
0053cf08  0f57d2                    XORPS XMM2,XMM2
0053cf0b  f30f10a554feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe54]
0053cf13  f30f591dd0a9ba00          MULSS XMM3,dword ptr [0x00baa9d0]
0053cf1b  8b8f1c0f0000              MOV ECX,dword ptr [EDI + 0xf1c]
0053cf21  f30f5925d0a9ba00          MULSS XMM4,dword ptr [0x00baa9d0]
0053cf29  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0053cf31  f30f119d3cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM3
0053cf39  f30f11a554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM4
0053cf41  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0053cf47  48                        DEC EAX
0053cf48  83f803                    CMP EAX,0x3
0053cf4b  7741                      JA 0x0053cf8e
0053cf4d  ff2485cce35300            JMP dword ptr [EAX*0x4 + 0x53e3cc]
0053cf54  f30f10854cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe4c]
0053cf5c  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0053cf64  eb28                      JMP 0x0053cf8e
0053cf66  f30f108530feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe30]
0053cf6e  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0053cf76  eb16                      JMP 0x0053cf8e
0053cf78  f30f108534feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe34]
0053cf80  eb08                      JMP 0x0053cf8a
0053cf82  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
0053cf8a  f30f1106                  MOVSS dword ptr [ESI],XMM0
0053cf8e  83f9ff                    CMP ECX,-0x1
0053cf91  7420                      JZ 0x0053cfb3
0053cf93  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0053cf97  8d9734030000              LEA EDX,[EDI + 0x334]
0053cf9d  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
0053cfa2  f30f5cc3                  SUBSS XMM0,XMM3
0053cfa6  f30f5ccc                  SUBSS XMM1,XMM4
0053cfaa  f30f1102                  MOVSS dword ptr [EDX],XMM0
0053cfae  e9b6000000                JMP 0x0053d069
0053cfb3  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053cfb9  2500080001                AND EAX,0x1000800
0053cfbe  83c800                    OR EAX,0x0
0053cfc1  0f847d000000              JZ 0x0053d044
0053cfc7  0f28c3                    MOVAPS XMM0,XMM3
0053cfca  0f28cc                    MOVAPS XMM1,XMM4
0053cfcd  f30f59c3                  MULSS XMM0,XMM3
0053cfd1  f30f59cc                  MULSS XMM1,XMM4
0053cfd5  f30f58c1                  ADDSS XMM0,XMM1
0053cfd9  0f2ec2                    UCOMISS XMM0,XMM2
0053cfdc  9f                        LAHF
0053cfdd  f6c444                    TEST AH,0x44
0053cfe0  7b43                      JNP 0x0053d025
0053cfe2  e8698aefff                CALL 0x00435a50
0053cfe7  f30f109d3cfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe3c]
0053cfef  0f57ed                    XORPS XMM5,XMM5
0053cff2  0f2fc5                    COMISS XMM0,XMM5
0053cff5  f30f10a554feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe54]
0053cffd  7629                      JBE 0x0053d028
0053cfff  f30f100d24a9ba00          MOVSS XMM1,dword ptr [0x00baa924]
0053d007  f30f5ec8                  DIVSS XMM1,XMM0
0053d00b  f30f59d9                  MULSS XMM3,XMM1
0053d00f  f30f59e1                  MULSS XMM4,XMM1
0053d013  f30f119d3cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM3
0053d01b  f30f11a554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM4
0053d023  eb03                      JMP 0x0053d028
0053d025  0f57ed                    XORPS XMM5,XMM5
0053d028  f30f581e                  ADDSS XMM3,dword ptr [ESI]
0053d02c  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0053d031  8d9734030000              LEA EDX,[EDI + 0x334]
0053d037  0f28cc                    MOVAPS XMM1,XMM4
0053d03a  f30f58c8                  ADDSS XMM1,XMM0
0053d03e  f30f111a                  MOVSS dword ptr [EDX],XMM3
0053d042  eb28                      JMP 0x0053d06c
0053d044  51                        PUSH ECX
0053d045  8d8524feffff              LEA EAX,[EBP + 0xfffffe24]
0053d04b  c7042400000000            MOV dword ptr [ESP],0x0
0053d052  50                        PUSH EAX
0053d053  8bcf                      MOV ECX,EDI
0053d055  e8e61b1800                CALL 0x006bec40
0053d05a  8d9734030000              LEA EDX,[EDI + 0x334]
0053d060  8b08                      MOV ECX,dword ptr [EAX]
0053d062  890a                      MOV dword ptr [EDX],ECX
0053d064  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0053d069  0f57ed                    XORPS XMM5,XMM5
0053d06c  8bc2                      MOV EAX,EDX
0053d06e  f30f114804                MOVSS dword ptr [EAX + 0x4],XMM1
0053d073  83bfc00b000003            CMP dword ptr [EDI + 0xbc0],0x3
0053d07a  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0053d07d  f30f1035d0a2ba00          MOVSS XMM6,dword ptr [0x00baa2d0]
0053d085  f30f103d40cbba00          MOVSS XMM7,dword ptr [0x00bacb40]
0053d08d  0f8ddf010000              JGE 0x0053d272
0053d093  3df2000000                CMP EAX,0xf2
0053d098  756d                      JNZ 0x0053d107
0053d09a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053d0a1  7564                      JNZ 0x0053d107
0053d0a3  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0053d0ab  f30f109d38feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe38]
0053d0b3  0f28c8                    MOVAPS XMM1,XMM0
0053d0b6  f30f588d34feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffe34]
0053d0be  f30f1016                  MOVSS XMM2,dword ptr [ESI]
0053d0c2  f30f5cd8                  SUBSS XMM3,XMM0
0053d0c6  f30f5fd1                  MAXSS XMM2,XMM1
0053d0ca  f30f5dd3                  MINSS XMM2,XMM3
0053d0ce  0f2e16                    UCOMISS XMM2,dword ptr [ESI]
0053d0d1  9f                        LAHF
0053d0d2  f6c444                    TEST AH,0x44
0053d0d5  7b1b                      JNP 0x0053d0f2
0053d0d7  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0053d0df  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0053d0e6  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0053d0ee  f30f1116                  MOVSS dword ptr [ESI],XMM2
0053d0f2  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
0053d0fa  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0053d102  e912010000                JMP 0x0053d219
0053d107  f30f100a                  MOVSS XMM1,dword ptr [EDX]
0053d10b  f30f101e                  MOVSS XMM3,dword ptr [ESI]
0053d10f  0f2fd9                    COMISS XMM3,XMM1
0053d112  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0053d11a  7605                      JBE 0x0053d121
0053d11c  0f2fc5                    COMISS XMM0,XMM5
0053d11f  7710                      JA 0x0053d131
0053d121  0f2fcb                    COMISS XMM1,XMM3
0053d124  0f28d0                    MOVAPS XMM2,XMM0
0053d127  0f28e0                    MOVAPS XMM4,XMM0
0053d12a  761a                      JBE 0x0053d146
0053d12c  0f2fe8                    COMISS XMM5,XMM0
0053d12f  7615                      JBE 0x0053d146
0053d131  0f28d0                    MOVAPS XMM2,XMM0
0053d134  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0053d13b  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
0053d143  0f28e2                    MOVAPS XMM4,XMM2
0053d146  f30f5ccb                  SUBSS XMM1,XMM3
0053d14a  0f54cf                    ANDPS XMM1,XMM7
0053d14d  0f2f0d1ca8ba00            COMISS XMM1,dword ptr [0x00baa81c]
0053d154  0f86df000000              JBE 0x0053d239
0053d15a  0510ffffff                ADD EAX,0xffffff10
0053d15f  83f840                    CMP EAX,0x40
0053d162  0f87d1000000              JA 0x0053d239
0053d168  0fb680f0e35300            MOVZX EAX,byte ptr [EAX + 0x53e3f0]
0053d16f  ff2485dce35300            JMP dword ptr [EAX*0x4 + 0x53e3dc]
0053d176  f30f108560feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe60]
0053d17e  f30f59d0                  MULSS XMM2,XMM0
0053d182  f30f5987b40b0000          MULSS XMM0,dword ptr [EDI + 0xbb4]
0053d18a  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0053d192  e99a000000                JMP 0x0053d231
0053d197  80bd67feffff00            CMP byte ptr [EBP + 0xfffffe67],0x0
0053d19e  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0053d1a6  7422                      JZ 0x0053d1ca
0053d1a8  f30f591554a3ba00          MULSS XMM2,dword ptr [0x00baa354]
0053d1b0  f30f590d54a3ba00          MULSS XMM1,dword ptr [0x00baa354]
0053d1b8  f30f599560feffff          MULSS XMM2,dword ptr [EBP + 0xfffffe60]
0053d1c0  f30f598d60feffff          MULSS XMM1,dword ptr [EBP + 0xfffffe60]
0053d1c8  eb5f                      JMP 0x0053d229
0053d1ca  f30f598d60feffff          MULSS XMM1,dword ptr [EBP + 0xfffffe60]
0053d1d2  0f28d4                    MOVAPS XMM2,XMM4
0053d1d5  f30f599560feffff          MULSS XMM2,dword ptr [EBP + 0xfffffe60]
0053d1dd  eb4a                      JMP 0x0053d229
0053d1df  f30f108560feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe60]
0053d1e7  f30f59d0                  MULSS XMM2,XMM0
0053d1eb  f30f5987b40b0000          MULSS XMM0,dword ptr [EDI + 0xbb4]
0053d1f3  f30f59d6                  MULSS XMM2,XMM6
0053d1f7  f30f59c6                  MULSS XMM0,XMM6
0053d1fb  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0053d203  eb2c                      JMP 0x0053d231
0053d205  f30f108d60feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe60]
0053d20d  f30f59d1                  MULSS XMM2,XMM1
0053d211  f30f598fb40b0000          MULSS XMM1,dword ptr [EDI + 0xbb4]
0053d219  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
0053d221  f30f5915d4a1ba00          MULSS XMM2,dword ptr [0x00baa1d4]
0053d229  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0053d231  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0053d239  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
0053d240  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0053d248  7514                      JNZ 0x0053d25e
0053d24a  0f2fc5                    COMISS XMM0,XMM5
0053d24d  0f57c9                    XORPS XMM1,XMM1
0053d250  0f97c0                    SETA AL
0053d253  888748010000              MOV byte ptr [EDI + 0x148],AL
0053d259  e94d020000                JMP 0x0053d4ab
0053d25e  0f2fe8                    COMISS XMM5,XMM0
0053d261  0f57c9                    XORPS XMM1,XMM1
0053d264  0f97c0                    SETA AL
0053d267  888748010000              MOV byte ptr [EDI + 0x148],AL
0053d26d  e939020000                JMP 0x0053d4ab
0053d272  3df2000000                CMP EAX,0xf2
0053d277  0f859c000000              JNZ 0x0053d319
0053d27d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053d284  0f858f000000              JNZ 0x0053d319
0053d28a  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
0053d292  f30f109d30feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe30]
0053d29a  0f28c8                    MOVAPS XMM1,XMM0
0053d29d  f30f588d4cfeffff          ADDSS XMM1,dword ptr [EBP + 0xfffffe4c]
0053d2a5  f30f5cd8                  SUBSS XMM3,XMM0
0053d2a9  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0053d2b1  0f28d0                    MOVAPS XMM2,XMM0
0053d2b4  f30f5fd1                  MAXSS XMM2,XMM1
0053d2b8  f30f5dd3                  MINSS XMM2,XMM3
0053d2bc  0f2ed0                    UCOMISS XMM2,XMM0
0053d2bf  9f                        LAHF
0053d2c0  f6c444                    TEST AH,0x44
0053d2c3  7b1f                      JNP 0x0053d2e4
0053d2c5  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0053d2cd  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0053d2d4  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0053d2dc  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
0053d2e4  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
0053d2ec  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0053d2f4  f30f5915d4a1ba00          MULSS XMM2,dword ptr [0x00baa1d4]
0053d2fc  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
0053d304  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0053d30c  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0053d314  e96d010000                JMP 0x0053d486
0053d319  f30f100554a8ba00          MOVSS XMM0,dword ptr [0x00baa854]
0053d321  3df0000000                CMP EAX,0xf0
0053d326  750a                      JNZ 0x0053d332
0053d328  f30f100584a7ba00          MOVSS XMM0,dword ptr [0x00baa784]
0053d330  eb0f                      JMP 0x0053d341
0053d332  3df1000000                CMP EAX,0xf1
0053d337  7508                      JNZ 0x0053d341
0053d339  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
0053d341  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053d348  0f57db                    XORPS XMM3,XMM3
0053d34b  7403                      JZ 0x0053d350
0053d34d  0f57c0                    XORPS XMM0,XMM0
0053d350  f30f588738030000          ADDSS XMM0,dword ptr [EDI + 0x338]
0053d358  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
0053d360  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0053d368  0f2fd0                    COMISS XMM2,XMM0
0053d36b  7605                      JBE 0x0053d372
0053d36d  0f2fcb                    COMISS XMM1,XMM3
0053d370  770a                      JA 0x0053d37c
0053d372  0f2fc2                    COMISS XMM0,XMM2
0053d375  7614                      JBE 0x0053d38b
0053d377  0f2fd9                    COMISS XMM3,XMM1
0053d37a  760f                      JBE 0x0053d38b
0053d37c  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0053d383  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
0053d38b  f30f5cc2                  SUBSS XMM0,XMM2
0053d38f  0f54c7                    ANDPS XMM0,XMM7
0053d392  0f2f051ca8ba00            COMISS XMM0,dword ptr [0x00baa81c]
0053d399  0f86e7000000              JBE 0x0053d486
0053d39f  0510ffffff                ADD EAX,0xffffff10
0053d3a4  83f840                    CMP EAX,0x40
0053d3a7  0f87d9000000              JA 0x0053d486
0053d3ad  0fb68048e45300            MOVZX EAX,byte ptr [EAX + 0x53e448]
0053d3b4  ff248534e45300            JMP dword ptr [EAX*0x4 + 0x53e434]
0053d3bb  f30f108d60feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe60]
0053d3c3  0f28c1                    MOVAPS XMM0,XMM1
0053d3c6  f30f598fb40b0000          MULSS XMM1,dword ptr [EDI + 0xbb4]
0053d3ce  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
0053d3d6  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0053d3de  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0053d3e6  e99b000000                JMP 0x0053d486
0053d3eb  80bd67feffff00            CMP byte ptr [EBP + 0xfffffe67],0x0
0053d3f2  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0053d3fa  f30f1097b40b0000          MOVSS XMM2,dword ptr [EDI + 0xbb4]
0053d402  7410                      JZ 0x0053d414
0053d404  f30f590d54a3ba00          MULSS XMM1,dword ptr [0x00baa354]
0053d40c  f30f591554a3ba00          MULSS XMM2,dword ptr [0x00baa354]
0053d414  f30f598d60feffff          MULSS XMM1,dword ptr [EBP + 0xfffffe60]
0053d41c  f30f599560feffff          MULSS XMM2,dword ptr [EBP + 0xfffffe60]
0053d424  eb50                      JMP 0x0053d476
0053d426  f30f108d60feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe60]
0053d42e  0f28c1                    MOVAPS XMM0,XMM1
0053d431  f30f598fb40b0000          MULSS XMM1,dword ptr [EDI + 0xbb4]
0053d439  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
0053d441  f30f59ce                  MULSS XMM1,XMM6
0053d445  f30f59c6                  MULSS XMM0,XMM6
0053d449  eb8b                      JMP 0x0053d3d6
0053d44b  f30f109560feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe60]
0053d453  0f28ca                    MOVAPS XMM1,XMM2
0053d456  f30f5997b40b0000          MULSS XMM2,dword ptr [EDI + 0xbb4]
0053d45e  f30f598fb00b0000          MULSS XMM1,dword ptr [EDI + 0xbb0]
0053d466  f30f5915d4a1ba00          MULSS XMM2,dword ptr [0x00baa1d4]
0053d46e  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
0053d476  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0053d47e  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0053d486  83bfc00b000003            CMP dword ptr [EDI + 0xbc0],0x3
0053d48d  0f57c9                    XORPS XMM1,XMM1
0053d490  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0053d498  7505                      JNZ 0x0053d49f
0053d49a  0f2fc1                    COMISS XMM0,XMM1
0053d49d  eb03                      JMP 0x0053d4a2
0053d49f  0f2fc8                    COMISS XMM1,XMM0
0053d4a2  0f97c0                    SETA AL
0053d4a5  888749010000              MOV byte ptr [EDI + 0x149],AL
0053d4ab  817f2830010000            CMP dword ptr [EDI + 0x28],0x130
0053d4b2  0f855c050000              JNZ 0x0053da14
0053d4b8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053d4bc  0f84ad000000              JZ 0x0053d56f
0053d4c2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053d4c9  0f85a0000000              JNZ 0x0053d56f
0053d4cf  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0053d4d2  83781410                  CMP dword ptr [EAX + 0x14],0x10
0053d4d6  7202                      JC 0x0053d4da
0053d4d8  8b00                      MOV EAX,dword ptr [EAX]
0053d4da  b954ddb100                MOV ECX,0xb1dd54
0053d4df  90                        NOP
0053d4e0  8a10                      MOV DL,byte ptr [EAX]
0053d4e2  3a11                      CMP DL,byte ptr [ECX]
0053d4e4  751a                      JNZ 0x0053d500
0053d4e6  84d2                      TEST DL,DL
0053d4e8  7412                      JZ 0x0053d4fc
0053d4ea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053d4ed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053d4f0  750e                      JNZ 0x0053d500
0053d4f2  83c002                    ADD EAX,0x2
0053d4f5  83c102                    ADD ECX,0x2
0053d4f8  84d2                      TEST DL,DL
0053d4fa  75e4                      JNZ 0x0053d4e0
0053d4fc  33c0                      XOR EAX,EAX
0053d4fe  eb05                      JMP 0x0053d505
0053d500  1bc0                      SBB EAX,EAX
0053d502  83c801                    OR EAX,0x1
0053d505  85c0                      TEST EAX,EAX
0053d507  750c                      JNZ 0x0053d515
0053d509  c787c40b000002000000      MOV dword ptr [EDI + 0xbc4],0x2
0053d513  eb5a                      JMP 0x0053d56f
0053d515  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053d51c  7551                      JNZ 0x0053d56f
0053d51e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0053d521  85c0                      TEST EAX,EAX
0053d523  740a                      JZ 0x0053d52f
0053d525  83781410                  CMP dword ptr [EAX + 0x14],0x10
0053d529  7209                      JC 0x0053d534
0053d52b  8b00                      MOV EAX,dword ptr [EAX]
0053d52d  eb05                      JMP 0x0053d534
0053d52f  b8eca4b100                MOV EAX,0xb1a4ec
0053d534  b9f011b600                MOV ECX,0xb611f0
0053d539  0f1f8000000000            NOP dword ptr [EAX]
0053d540  8a10                      MOV DL,byte ptr [EAX]
0053d542  3a11                      CMP DL,byte ptr [ECX]
0053d544  751a                      JNZ 0x0053d560
0053d546  84d2                      TEST DL,DL
0053d548  7412                      JZ 0x0053d55c
0053d54a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053d54d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053d550  750e                      JNZ 0x0053d560
0053d552  83c002                    ADD EAX,0x2
0053d555  83c102                    ADD ECX,0x2
0053d558  84d2                      TEST DL,DL
0053d55a  75e4                      JNZ 0x0053d540
0053d55c  33c0                      XOR EAX,EAX
0053d55e  eb05                      JMP 0x0053d565
0053d560  1bc0                      SBB EAX,EAX
0053d562  83c801                    OR EAX,0x1
0053d565  85c0                      TEST EAX,EAX
0053d567  7506                      JNZ 0x0053d56f
0053d569  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
0053d56f  f30f100550a9ba00          MOVSS XMM0,dword ptr [0x00baa950]
0053d577  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0053d57d  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0053d585  83f803                    CMP EAX,0x3
0053d588  7c0a                      JL 0x0053d594
0053d58a  f30f10057ca9ba00          MOVSS XMM0,dword ptr [0x00baa97c]
0053d592  eb0d                      JMP 0x0053d5a1
0053d594  83f801                    CMP EAX,0x1
0053d597  7510                      JNZ 0x0053d5a9
0053d599  f30f1005a0a9ba00          MOVSS XMM0,dword ptr [0x00baa9a0]
0053d5a1  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0053d5a9  83bfc40b000002            CMP dword ptr [EDI + 0xbc4],0x2
0053d5b0  0f8573020000              JNZ 0x0053d829
0053d5b6  0f28d1                    MOVAPS XMM2,XMM1
0053d5b9  8bcf                      MOV ECX,EDI
0053d5bb  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
0053d5c3  e898f11600                CALL 0x006ac760
0053d5c8  85c0                      TEST EAX,EAX
0053d5ca  0f840c020000              JZ 0x0053d7dc
0053d5d0  6a00                      PUSH 0x0
0053d5d2  6800080001                PUSH 0x1000800
0053d5d7  8bcf                      MOV ECX,EDI
0053d5d9  e8529eedff                CALL 0x00417430
0053d5de  84c0                      TEST AL,AL
0053d5e0  0f85f6010000              JNZ 0x0053d7dc
0053d5e6  a17816c700                MOV EAX,[0x00c71678]
0053d5eb  f30f109d60feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe60]
0053d5f3  6aff                      PUSH -0x1
0053d5f5  56                        PUSH ESI
0053d5f6  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0053d5fc  8d8514feffff              LEA EAX,[EBP + 0xfffffe14]
0053d602  81c118120000              ADD ECX,0x1218
0053d608  50                        PUSH EAX
0053d609  e882d1edff                CALL 0x0041a790
0053d60e  33f6                      XOR ESI,ESI
0053d610  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0053d617  89b538feffff              MOV dword ptr [EBP + 0xfffffe38],ESI
0053d61d  39b520feffff              CMP dword ptr [EBP + 0xfffffe20],ESI
0053d623  0f867b010000              JBE 0x0053d7a4
0053d629  0f1f8000000000            NOP dword ptr [EAX]
0053d630  8b8518feffff              MOV EAX,dword ptr [EBP + 0xfffffe18]
0053d636  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
0053d639  89b530feffff              MOV dword ptr [EBP + 0xfffffe30],ESI
0053d63f  83be8801000000            CMP dword ptr [ESI + 0x188],0x0
0053d646  0f843f010000              JZ 0x0053d78b
0053d64c  3bf7                      CMP ESI,EDI
0053d64e  0f8437010000              JZ 0x0053d78b
0053d654  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0053d65c  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
0053d664  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0053d66c  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0053d674  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0053d67c  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0053d684  f30f1087ec000000          MOVSS XMM0,dword ptr [EDI + 0xec]
0053d68c  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0053d694  f30f118534feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM0
0053d69c  e89ffeedff                CALL 0x0041d540
0053d6a1  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
0053d6a9  f30f108534feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe34]
0053d6b1  e86afeedff                CALL 0x0041d520
0053d6b6  f30f108d4cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe4c]
0053d6be  f30f598d60feffff          MULSS XMM1,dword ptr [EBP + 0xfffffe60]
0053d6c6  f30f598548feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe48]
0053d6ce  f30f5cc8                  SUBSS XMM1,XMM0
0053d6d2  f30f1005a0a8ba00          MOVSS XMM0,dword ptr [0x00baa8a0]
0053d6da  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0053d6e1  0f2fc1                    COMISS XMM0,XMM1
0053d6e4  0f86a1000000              JBE 0x0053d78b
0053d6ea  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
0053d6ed  83f901                    CMP ECX,0x1
0053d6f0  7405                      JZ 0x0053d6f7
0053d6f2  83f903                    CMP ECX,0x3
0053d6f5  753d                      JNZ 0x0053d734
0053d6f7  56                        PUSH ESI
0053d6f8  8bcf                      MOV ECX,EDI
0053d6fa  e861a61900                CALL 0x006d7d60
0053d6ff  84c0                      TEST AL,AL
0053d701  742e                      JZ 0x0053d731
0053d703  8b06                      MOV EAX,dword ptr [ESI]
0053d705  8d8decfdffff              LEA ECX,[EBP + 0xfffffdec]
0053d70b  57                        PUSH EDI
0053d70c  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0053d70f  e8fc3befff                CALL 0x00431310
0053d714  f30f108788030000          MOVSS XMM0,dword ptr [EDI + 0x388]
0053d71c  8d85ecfdffff              LEA EAX,[EBP + 0xfffffdec]
0053d722  6a1e                      PUSH 0x1e
0053d724  50                        PUSH EAX
0053d725  6a00                      PUSH 0x0
0053d727  6a00                      PUSH 0x0
0053d729  51                        PUSH ECX
0053d72a  f30f110424                MOVSS dword ptr [ESP],XMM0
0053d72f  eb52                      JMP 0x0053d783
0053d731  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
0053d734  a17816c700                MOV EAX,[0x00c71678]
0053d739  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0053d740  7c05                      JL 0x0053d747
0053d742  83f901                    CMP ECX,0x1
0053d745  740a                      JZ 0x0053d751
0053d747  8d41f6                    LEA EAX,[ECX + -0xa]
0053d74a  3ddd030000                CMP EAX,0x3dd
0053d74f  773a                      JA 0x0053d78b
0053d751  56                        PUSH ESI
0053d752  8bcf                      MOV ECX,EDI
0053d754  e807a61900                CALL 0x006d7d60
0053d759  84c0                      TEST AL,AL
0053d75b  742e                      JZ 0x0053d78b
0053d75d  8b06                      MOV EAX,dword ptr [ESI]
0053d75f  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0053d765  57                        PUSH EDI
0053d766  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0053d769  e8a23befff                CALL 0x00431310
0053d76e  6a1e                      PUSH 0x1e
0053d770  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0053d776  50                        PUSH EAX
0053d777  6a00                      PUSH 0x0
0053d779  6a00                      PUSH 0x0
0053d77b  51                        PUSH ECX
0053d77c  c704240000a040            MOV dword ptr [ESP],0x40a00000
0053d783  8b8d30feffff              MOV ECX,dword ptr [EBP + 0xfffffe30]
0053d789  ffd6                      CALL ESI
0053d78b  8bb538feffff              MOV ESI,dword ptr [EBP + 0xfffffe38]
0053d791  46                        INC ESI
0053d792  89b538feffff              MOV dword ptr [EBP + 0xfffffe38],ESI
0053d798  3bb520feffff              CMP ESI,dword ptr [EBP + 0xfffffe20]
0053d79e  0f828cfeffff              JC 0x0053d630
0053d7a4  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0053d7ab  80bd14feffff00            CMP byte ptr [EBP + 0xfffffe14],0x0
0053d7b2  7522                      JNZ 0x0053d7d6
0053d7b4  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0053d7bb  b101                      MOV CL,0x1
0053d7bd  8b9518feffff              MOV EDX,dword ptr [EBP + 0xfffffe18]
0053d7c3  6a00                      PUSH 0x0
0053d7c5  6a00                      PUSH 0x0
0053d7c7  e8e4705200                CALL 0x00a648b0
0053d7cc  83c408                    ADD ESP,0x8
0053d7cf  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0053d7d6  8db73c030000              LEA ESI,[EDI + 0x33c]
0053d7dc  83bfc40b000002            CMP dword ptr [EDI + 0xbc4],0x2
0053d7e3  7544                      JNZ 0x0053d829
0053d7e5  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0053d7ec  7f3b                      JG 0x0053d829
0053d7ee  51                        PUSH ECX
0053d7ef  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053d7f6  6a00                      PUSH 0x0
0053d7f8  c787a00b000078000000      MOV dword ptr [EDI + 0xba0],0x78
0053d802  8b06                      MOV EAX,dword ptr [ESI]
0053d804  6a02                      PUSH 0x2
0053d806  51                        PUSH ECX
0053d807  8987b80b0000              MOV dword ptr [EDI + 0xbb8],EAX
0053d80d  8bcf                      MOV ECX,EDI
0053d80f  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0053d812  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053d819  683d010000                PUSH 0x13d
0053d81e  8987bc0b0000              MOV dword ptr [EDI + 0xbbc],EAX
0053d824  e877931900                CALL 0x006d6ba0
0053d829  33d2                      XOR EDX,EDX
0053d82b  83bfc00b000003            CMP dword ptr [EDI + 0xbc0],0x3
0053d832  0f9cc2                    SETL DL
0053d835  33f6                      XOR ESI,ESI
0053d837  8d1495f2ffffff            LEA EDX,[EDX*0x4 + 0xfffffff2]
0053d83e  83c278                    ADD EDX,0x78
0053d841  89954cfeffff              MOV dword ptr [EBP + 0xfffffe4c],EDX
0053d847  39b540feffff              CMP dword ptr [EBP + 0xfffffe40],ESI
0053d84d  0f8ec1010000              JLE 0x0053da14
0053d853  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0053d859  0f1f8000000000            NOP dword ptr [EAX]
0053d860  85c0                      TEST EAX,EAX
0053d862  0f8eac010000              JLE 0x0053da14
0053d868  8bc8                      MOV ECX,EAX
0053d86a  3bc2                      CMP EAX,EDX
0053d86c  0f8e86010000              JLE 0x0053d9f8
0053d872  a801                      TEST AL,0x1
0053d874  0f857e010000              JNZ 0x0053d9f8
0053d87a  f30f1087ec000000          MOVSS XMM0,dword ptr [EDI + 0xec]
0053d882  f30f5805b4a9ba00          ADDSS XMM0,dword ptr [0x00baa9b4]
0053d88a  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0053d892  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0053d89a  e8a1fcedff                CALL 0x0041d540
0053d89f  f30f118530feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM0
0053d8a7  f30f108548feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe48]
0053d8af  e86cfcedff                CALL 0x0041d520
0053d8b4  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
0053d8bc  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0053d8c4  e877fcedff                CALL 0x0041d540
0053d8c9  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0053d8d1  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0053d8d9  e842fcedff                CALL 0x0041d520
0053d8de  f30f118534feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM0
0053d8e6  e875161b00                CALL 0x006eef60
0053d8eb  f30f10bd30feffff          MOVSS XMM7,dword ptr [EBP + 0xfffffe30]
0053d8f3  f30f10b538feffff          MOVSS XMM6,dword ptr [EBP + 0xfffffe38]
0053d8fb  0f28c6                    MOVAPS XMM0,XMM6
0053d8fe  f30f598534feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe34]
0053d906  660f6ec8                  MOVD XMM1,EAX
0053d90a  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0053d90e  c1e81f                    SHR EAX,0x1f
0053d911  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0053d91a  b878000000                MOV EAX,0x78
0053d91f  2b87a00b0000              SUB EAX,dword ptr [EDI + 0xba0]
0053d925  99                        CDQ
0053d926  2bc2                      SUB EAX,EDX
0053d928  660f5ad9                  CVTPD2PS XMM3,XMM1
0053d92c  d1f8                      SAR EAX,0x1
0053d92e  0f28cf                    MOVAPS XMM1,XMM7
0053d931  660f6ed0                  MOVD XMM2,EAX
0053d935  f30f598d48feffff          MULSS XMM1,dword ptr [EBP + 0xfffffe48]
0053d93d  f30f591df49fba00          MULSS XMM3,dword ptr [0x00ba9ff4]
0053d945  0f5bd2                    CVTDQ2PS XMM2,XMM2
0053d948  f30f5cc8                  SUBSS XMM1,XMM0
0053d94c  0f28c7                    MOVAPS XMM0,XMM7
0053d94f  f30f5c1dd0a2ba00          SUBSS XMM3,dword ptr [0x00baa2d0]
0053d957  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
0053d95f  f30f59bd34feffff          MULSS XMM7,dword ptr [EBP + 0xfffffe34]
0053d967  f30f59c2                  MULSS XMM0,XMM2
0053d96b  f30f59cb                  MULSS XMM1,XMM3
0053d96f  f30f5887b80b0000          ADDSS XMM0,dword ptr [EDI + 0xbb8]
0053d977  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
0053d97f  f30f58c8                  ADDSS XMM1,XMM0
0053d983  0f28c6                    MOVAPS XMM0,XMM6
0053d986  f30f598548feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe48]
0053d98e  f30f59f2                  MULSS XMM6,XMM2
0053d992  f30f58f8                  ADDSS XMM7,XMM0
0053d996  f30f118d58feffff          MOVSS dword ptr [EBP + 0xfffffe58],XMM1
0053d99e  f30f58b7bc0b0000          ADDSS XMM6,dword ptr [EDI + 0xbbc]
0053d9a6  f30f59fb                  MULSS XMM7,XMM3
0053d9aa  f30f593d7ca8ba00          MULSS XMM7,dword ptr [0x00baa87c]
0053d9b2  f30f58fe                  ADDSS XMM7,XMM6
0053d9b6  f30f11bd5cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM7
0053d9be  e89d151b00                CALL 0x006eef60
0053d9c3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053d9c9  50                        PUSH EAX
0053d9ca  6a00                      PUSH 0x0
0053d9cc  57                        PUSH EDI
0053d9cd  6840b6c700                PUSH 0xc7b640
0053d9d2  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
0053d9d8  50                        PUSH EAX
0053d9d9  6a16                      PUSH 0x16
0053d9db  68e8030000                PUSH 0x3e8
0053d9e0  e83bb1eeff                CALL 0x00428b20
0053d9e5  8bc8                      MOV ECX,EAX
0053d9e7  8b10                      MOV EDX,dword ptr [EAX]
0053d9e9  ff520c                    CALL dword ptr [EDX + 0xc]
0053d9ec  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
0053d9f2  8b954cfeffff              MOV EDX,dword ptr [EBP + 0xfffffe4c]
0053d9f8  8bc1                      MOV EAX,ECX
0053d9fa  85c9                      TEST ECX,ECX
0053d9fc  7e09                      JLE 0x0053da07
0053d9fe  8d41ff                    LEA EAX,[ECX + -0x1]
0053da01  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0053da07  46                        INC ESI
0053da08  3bb540feffff              CMP ESI,dword ptr [EBP + 0xfffffe40]
0053da0e  0f8c4cfeffff              JL 0x0053d860
0053da14  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0053da1c  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0053da24  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0053da27  f30f59c0                  MULSS XMM0,XMM0
0053da2b  f30f59c9                  MULSS XMM1,XMM1
0053da2f  f30f58c1                  ADDSS XMM0,XMM1
0053da33  0f2f0510a0ba00            COMISS XMM0,dword ptr [0x00baa010]
0053da3a  0f8653010000              JBE 0x0053db93
0053da40  3d30010000                CMP EAX,0x130
0053da45  0f85c5000000              JNZ 0x0053db10
0053da4b  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
0053da51  83f802                    CMP EAX,0x2
0053da54  7576                      JNZ 0x0053dacc
0053da56  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0053da59  85f6                      TEST ESI,ESI
0053da5b  7460                      JZ 0x0053dabd
0053da5d  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053da61  8bc6                      MOV EAX,ESI
0053da63  7202                      JC 0x0053da67
0053da65  8b06                      MOV EAX,dword ptr [ESI]
0053da67  b9e011b600                MOV ECX,0xb611e0
0053da6c  0f1f4000                  NOP dword ptr [EAX]
0053da70  8a10                      MOV DL,byte ptr [EAX]
0053da72  3a11                      CMP DL,byte ptr [ECX]
0053da74  751a                      JNZ 0x0053da90
0053da76  84d2                      TEST DL,DL
0053da78  7412                      JZ 0x0053da8c
0053da7a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053da7d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053da80  750e                      JNZ 0x0053da90
0053da82  83c002                    ADD EAX,0x2
0053da85  83c102                    ADD ECX,0x2
0053da88  84d2                      TEST DL,DL
0053da8a  75e4                      JNZ 0x0053da70
0053da8c  33c0                      XOR EAX,EAX
0053da8e  eb05                      JMP 0x0053da95
0053da90  1bc0                      SBB EAX,EAX
0053da92  83c801                    OR EAX,0x1
0053da95  85c0                      TEST EAX,EAX
0053da97  7524                      JNZ 0x0053dabd
0053da99  384634                    CMP byte ptr [ESI + 0x34],AL
0053da9c  0f84a9010000              JZ 0x0053dc4b
0053daa2  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0053daa8  8d7748                    LEA ESI,[EDI + 0x48]
0053daab  0f859a010000              JNZ 0x0053dc4b
0053dab1  6a01                      PUSH 0x1
0053dab3  68e011b600                PUSH 0xb611e0
0053dab8  e9b6000000                JMP 0x0053db73
0053dabd  6a01                      PUSH 0x1
0053dabf  8d7748                    LEA ESI,[EDI + 0x48]
0053dac2  68e011b600                PUSH 0xb611e0
0053dac7  e9a7000000                JMP 0x0053db73
0053dacc  85c0                      TEST EAX,EAX
0053dace  0f8577010000              JNZ 0x0053dc4b
0053dad4  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0053dad7  85f6                      TEST ESI,ESI
0053dad9  0f848a000000              JZ 0x0053db69
0053dadf  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053dae3  8bc6                      MOV EAX,ESI
0053dae5  7202                      JC 0x0053dae9
0053dae7  8b06                      MOV EAX,dword ptr [ESI]
0053dae9  b9e4dcb100                MOV ECX,0xb1dce4
0053daee  6690                      NOP
0053daf0  8a10                      MOV DL,byte ptr [EAX]
0053daf2  3a11                      CMP DL,byte ptr [ECX]
0053daf4  7550                      JNZ 0x0053db46
0053daf6  84d2                      TEST DL,DL
0053daf8  7448                      JZ 0x0053db42
0053dafa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053dafd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053db00  7544                      JNZ 0x0053db46
0053db02  83c002                    ADD EAX,0x2
0053db05  83c102                    ADD ECX,0x2
0053db08  84d2                      TEST DL,DL
0053db0a  75e4                      JNZ 0x0053daf0
0053db0c  33c0                      XOR EAX,EAX
0053db0e  eb3b                      JMP 0x0053db4b
0053db10  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0053db13  85f6                      TEST ESI,ESI
0053db15  7452                      JZ 0x0053db69
0053db17  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053db1b  8bc6                      MOV EAX,ESI
0053db1d  7202                      JC 0x0053db21
0053db1f  8b06                      MOV EAX,dword ptr [ESI]
0053db21  b9e4dcb100                MOV ECX,0xb1dce4
0053db26  8a10                      MOV DL,byte ptr [EAX]
0053db28  3a11                      CMP DL,byte ptr [ECX]
0053db2a  751a                      JNZ 0x0053db46
0053db2c  84d2                      TEST DL,DL
0053db2e  7412                      JZ 0x0053db42
0053db30  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053db33  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053db36  750e                      JNZ 0x0053db46
0053db38  83c002                    ADD EAX,0x2
0053db3b  83c102                    ADD ECX,0x2
0053db3e  84d2                      TEST DL,DL
0053db40  75e4                      JNZ 0x0053db26
0053db42  33c0                      XOR EAX,EAX
0053db44  eb05                      JMP 0x0053db4b
0053db46  1bc0                      SBB EAX,EAX
0053db48  83c801                    OR EAX,0x1
0053db4b  85c0                      TEST EAX,EAX
0053db4d  751a                      JNZ 0x0053db69
0053db4f  384634                    CMP byte ptr [ESI + 0x34],AL
0053db52  0f84f3000000              JZ 0x0053dc4b
0053db58  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0053db5e  8d7748                    LEA ESI,[EDI + 0x48]
0053db61  0f85e4000000              JNZ 0x0053dc4b
0053db67  eb03                      JMP 0x0053db6c
0053db69  8d7748                    LEA ESI,[EDI + 0x48]
0053db6c  6a01                      PUSH 0x1
0053db6e  68e4dcb100                PUSH 0xb1dce4
0053db73  8bce                      MOV ECX,ESI
0053db75  e856caecff                CALL 0x0040a5d0
0053db7a  84c0                      TEST AL,AL
0053db7c  0f84c9000000              JZ 0x0053dc4b
0053db82  8d4e30                    LEA ECX,[ESI + 0x30]
0053db85  e826c6ecff                CALL 0x0040a1b0
0053db8a  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0053db8e  e9b8000000                JMP 0x0053dc4b
0053db93  3d30010000                CMP EAX,0x130
0053db98  757e                      JNZ 0x0053dc18
0053db9a  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
0053dba0  83f802                    CMP EAX,0x2
0053dba3  756f                      JNZ 0x0053dc14
0053dba5  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0053dba8  85f6                      TEST ESI,ESI
0053dbaa  7459                      JZ 0x0053dc05
0053dbac  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053dbb0  8bc6                      MOV EAX,ESI
0053dbb2  7202                      JC 0x0053dbb6
0053dbb4  8b06                      MOV EAX,dword ptr [ESI]
0053dbb6  b9d011b600                MOV ECX,0xb611d0
0053dbbb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0053dbc0  8a10                      MOV DL,byte ptr [EAX]
0053dbc2  3a11                      CMP DL,byte ptr [ECX]
0053dbc4  751a                      JNZ 0x0053dbe0
0053dbc6  84d2                      TEST DL,DL
0053dbc8  7412                      JZ 0x0053dbdc
0053dbca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053dbcd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053dbd0  750e                      JNZ 0x0053dbe0
0053dbd2  83c002                    ADD EAX,0x2
0053dbd5  83c102                    ADD ECX,0x2
0053dbd8  84d2                      TEST DL,DL
0053dbda  75e4                      JNZ 0x0053dbc0
0053dbdc  33c0                      XOR EAX,EAX
0053dbde  eb05                      JMP 0x0053dbe5
0053dbe0  1bc0                      SBB EAX,EAX
0053dbe2  83c801                    OR EAX,0x1
0053dbe5  85c0                      TEST EAX,EAX
0053dbe7  751c                      JNZ 0x0053dc05
0053dbe9  384634                    CMP byte ptr [ESI + 0x34],AL
0053dbec  745d                      JZ 0x0053dc4b
0053dbee  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0053dbf4  8d7748                    LEA ESI,[EDI + 0x48]
0053dbf7  7552                      JNZ 0x0053dc4b
0053dbf9  6a01                      PUSH 0x1
0053dbfb  68d011b600                PUSH 0xb611d0
0053dc00  e96effffff                JMP 0x0053db73
0053dc05  6a01                      PUSH 0x1
0053dc07  8d7748                    LEA ESI,[EDI + 0x48]
0053dc0a  68d011b600                PUSH 0xb611d0
0053dc0f  e95fffffff                JMP 0x0053db73
0053dc14  85c0                      TEST EAX,EAX
0053dc16  7533                      JNZ 0x0053dc4b
0053dc18  6a01                      PUSH 0x1
0053dc1a  68e4dcb100                PUSH 0xb1dce4
0053dc1f  8d4f48                    LEA ECX,[EDI + 0x48]
0053dc22  e8a9c9ecff                CALL 0x0040a5d0
0053dc27  84c0                      TEST AL,AL
0053dc29  7420                      JZ 0x0053dc4b
0053dc2b  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0053dc2e  85c0                      TEST EAX,EAX
0053dc30  7419                      JZ 0x0053dc4b
0053dc32  0f57c9                    XORPS XMM1,XMM1
0053dc35  8d4f78                    LEA ECX,[EDI + 0x78]
0053dc38  e8c3b1ecff                CALL 0x00408e00
0053dc3d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0053dc40  85c0                      TEST EAX,EAX
0053dc42  7407                      JZ 0x0053dc4b
0053dc44  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
0053dc4b  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0053dc51  85c0                      TEST EAX,EAX
0053dc53  780c                      JS 0x0053dc61
0053dc55  2b8540feffff              SUB EAX,dword ptr [EBP + 0xfffffe40]
0053dc5b  898710040000              MOV dword ptr [EDI + 0x410],EAX
0053dc61  817f2830010000            CMP dword ptr [EDI + 0x28],0x130
0053dc68  0f852e020000              JNZ 0x0053de9c
0053dc6e  f30f1087ec000000          MOVSS XMM0,dword ptr [EDI + 0xec]
0053dc76  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0053dc7e  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0053dc86  e8b5f8edff                CALL 0x0041d540
0053dc8b  f30f59853cfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffe3c]
0053dc93  f30f118540feffff          MOVSS dword ptr [EBP + 0xfffffe40],XMM0
0053dc9b  f30f108548feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe48]
0053dca3  e878f8edff                CALL 0x0041d520
0053dca8  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053dcaf  f30f598554feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe54]
0053dcb7  f30f108d40feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe40]
0053dcbf  f30f1015c4abba00          MOVSS XMM2,dword ptr [0x00baabc4]
0053dcc7  f30f5cc8                  SUBSS XMM1,XMM0
0053dccb  f30f118d40feffff          MOVSS dword ptr [EBP + 0xfffffe40],XMM1
0053dcd3  7433                      JZ 0x0053dd08
0053dcd5  6a07                      PUSH 0x7
0053dcd7  6a00                      PUSH 0x0
0053dcd9  0f28ca                    MOVAPS XMM1,XMM2
0053dcdc  8bcf                      MOV ECX,EDI
0053dcde  e87dd11800                CALL 0x006cae60
0053dce3  f30f108d40feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe40]
0053dceb  f30f1015c4abba00          MOVSS XMM2,dword ptr [0x00baabc4]
0053dcf3  f30f101da0a8ba00          MOVSS XMM3,dword ptr [0x00baa8a0]
0053dcfb  f30f102540cbba00          MOVSS XMM4,dword ptr [0x00bacb40]
0053dd03  0fb6c0                    MOVZX EAX,AL
0053dd06  eb1e                      JMP 0x0053dd26
0053dd08  f30f102540cbba00          MOVSS XMM4,dword ptr [0x00bacb40]
0053dd10  0f28c1                    MOVAPS XMM0,XMM1
0053dd13  f30f101da0a8ba00          MOVSS XMM3,dword ptr [0x00baa8a0]
0053dd1b  0f54c4                    ANDPS XMM0,XMM4
0053dd1e  33c0                      XOR EAX,EAX
0053dd20  0f2fd8                    COMISS XMM3,XMM0
0053dd23  0f97c0                    SETA AL
0053dd26  85c0                      TEST EAX,EAX
0053dd28  0f84ad000000              JZ 0x0053dddb
0053dd2e  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
0053dd35  0f85a0000000              JNZ 0x0053dddb
0053dd3b  51                        PUSH ECX
0053dd3c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053dd43  6a00                      PUSH 0x0
0053dd45  6a02                      PUSH 0x2
0053dd47  51                        PUSH ECX
0053dd48  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053dd4f  8bcf                      MOV ECX,EDI
0053dd51  6a0d                      PUSH 0xd
0053dd53  e8488e1900                CALL 0x006d6ba0
0053dd58  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0053dd5b  85f6                      TEST ESI,ESI
0053dd5d  744c                      JZ 0x0053ddab
0053dd5f  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053dd63  8bc6                      MOV EAX,ESI
0053dd65  7202                      JC 0x0053dd69
0053dd67  8b06                      MOV EAX,dword ptr [ESI]
0053dd69  b954ddb100                MOV ECX,0xb1dd54
0053dd6e  6690                      NOP
0053dd70  8a10                      MOV DL,byte ptr [EAX]
0053dd72  3a11                      CMP DL,byte ptr [ECX]
0053dd74  751a                      JNZ 0x0053dd90
0053dd76  84d2                      TEST DL,DL
0053dd78  7412                      JZ 0x0053dd8c
0053dd7a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053dd7d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053dd80  750e                      JNZ 0x0053dd90
0053dd82  83c002                    ADD EAX,0x2
0053dd85  83c102                    ADD ECX,0x2
0053dd88  84d2                      TEST DL,DL
0053dd8a  75e4                      JNZ 0x0053dd70
0053dd8c  33c0                      XOR EAX,EAX
0053dd8e  eb05                      JMP 0x0053dd95
0053dd90  1bc0                      SBB EAX,EAX
0053dd92  83c801                    OR EAX,0x1
0053dd95  85c0                      TEST EAX,EAX
0053dd97  7512                      JNZ 0x0053ddab
0053dd99  384634                    CMP byte ptr [ESI + 0x34],AL
0053dd9c  742e                      JZ 0x0053ddcc
0053dd9e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0053dda4  8d7748                    LEA ESI,[EDI + 0x48]
0053dda7  7523                      JNZ 0x0053ddcc
0053dda9  eb03                      JMP 0x0053ddae
0053ddab  8d7748                    LEA ESI,[EDI + 0x48]
0053ddae  6a01                      PUSH 0x1
0053ddb0  6854ddb100                PUSH 0xb1dd54
0053ddb5  8bce                      MOV ECX,ESI
0053ddb7  e814c8ecff                CALL 0x0040a5d0
0053ddbc  84c0                      TEST AL,AL
0053ddbe  740c                      JZ 0x0053ddcc
0053ddc0  8d4e30                    LEA ECX,[ESI + 0x30]
0053ddc3  e8e8c3ecff                CALL 0x0040a1b0
0053ddc8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0053ddcc  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
0053ddd6  e992050000                JMP 0x0053e36d
0053dddb  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053dde2  7417                      JZ 0x0053ddfb
0053dde4  6a07                      PUSH 0x7
0053dde6  6a00                      PUSH 0x0
0053dde8  0f28ca                    MOVAPS XMM1,XMM2
0053ddeb  8bcf                      MOV ECX,EDI
0053dded  e86ed01800                CALL 0x006cae60
0053ddf2  33c9                      XOR ECX,ECX
0053ddf4  84c0                      TEST AL,AL
0053ddf6  0f94c1                    SETZ CL
0053ddf9  eb0b                      JMP 0x0053de06
0053ddfb  0f54cc                    ANDPS XMM1,XMM4
0053ddfe  33c9                      XOR ECX,ECX
0053de00  0f2fcb                    COMISS XMM1,XMM3
0053de03  0f93c1                    SETNC CL
0053de06  85c9                      TEST ECX,ECX
0053de08  0f845f050000              JZ 0x0053e36d
0053de0e  83bfc40b000002            CMP dword ptr [EDI + 0xbc4],0x2
0053de15  0f8552050000              JNZ 0x0053e36d
0053de1b  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0053de1e  85f6                      TEST ESI,ESI
0053de20  744a                      JZ 0x0053de6c
0053de22  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053de26  8bc6                      MOV EAX,ESI
0053de28  7202                      JC 0x0053de2c
0053de2a  8b06                      MOV EAX,dword ptr [ESI]
0053de2c  b9f011b600                MOV ECX,0xb611f0
0053de31  8a10                      MOV DL,byte ptr [EAX]
0053de33  3a11                      CMP DL,byte ptr [ECX]
0053de35  751a                      JNZ 0x0053de51
0053de37  84d2                      TEST DL,DL
0053de39  7412                      JZ 0x0053de4d
0053de3b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053de3e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053de41  750e                      JNZ 0x0053de51
0053de43  83c002                    ADD EAX,0x2
0053de46  83c102                    ADD ECX,0x2
0053de49  84d2                      TEST DL,DL
0053de4b  75e4                      JNZ 0x0053de31
0053de4d  33c0                      XOR EAX,EAX
0053de4f  eb05                      JMP 0x0053de56
0053de51  1bc0                      SBB EAX,EAX
0053de53  83c801                    OR EAX,0x1
0053de56  85c0                      TEST EAX,EAX
0053de58  7512                      JNZ 0x0053de6c
0053de5a  384634                    CMP byte ptr [ESI + 0x34],AL
0053de5d  742e                      JZ 0x0053de8d
0053de5f  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0053de65  8d7748                    LEA ESI,[EDI + 0x48]
0053de68  7523                      JNZ 0x0053de8d
0053de6a  eb03                      JMP 0x0053de6f
0053de6c  8d7748                    LEA ESI,[EDI + 0x48]
0053de6f  6a01                      PUSH 0x1
0053de71  68f011b600                PUSH 0xb611f0
0053de76  8bce                      MOV ECX,ESI
0053de78  e853c7ecff                CALL 0x0040a5d0
0053de7d  84c0                      TEST AL,AL
0053de7f  740c                      JZ 0x0053de8d
0053de81  8d4e30                    LEA ECX,[ESI + 0x30]
0053de84  e827c3ecff                CALL 0x0040a1b0
0053de89  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0053de8d  c787c40b000003000000      MOV dword ptr [EDI + 0xbc4],0x3
0053de97  e9d1040000                JMP 0x0053e36d
0053de9c  85c0                      TEST EAX,EAX
0053de9e  0f89c9040000              JNS 0x0053e36d
0053dea4  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053deaa  2500020000                AND EAX,0x200
0053deaf  83c800                    OR EAX,0x0
0053deb2  7416                      JZ 0x0053deca
0053deb4  e8a7101b00                CALL 0x006eef60
0053deb9  33d2                      XOR EDX,EDX
0053debb  b964000000                MOV ECX,0x64
0053dec0  f7f1                      DIV ECX
0053dec2  85d2                      TEST EDX,EDX
0053dec4  0f85a3040000              JNZ 0x0053e36d
0053deca  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053ded0  2500080001                AND EAX,0x1000800
0053ded5  83c800                    OR EAX,0x0
0053ded8  0f858f040000              JNZ 0x0053e36d
0053dede  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053dee5  741f                      JZ 0x0053df06
0053dee7  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0053deef  8bcf                      MOV ECX,EDI
0053def1  6a07                      PUSH 0x7
0053def3  50                        PUSH EAX
0053def4  e867cf1800                CALL 0x006cae60
0053def9  0fb6c0                    MOVZX EAX,AL
0053defc  85c0                      TEST EAX,EAX
0053defe  0f8469040000              JZ 0x0053e36d
0053df04  eb2e                      JMP 0x0053df34
0053df06  a17816c700                MOV EAX,[0x00c71678]
0053df0b  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0053df11  51                        PUSH ECX
0053df12  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0053df18  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
0053df1e  e81d6b4000                CALL 0x00944a40
0053df23  84c0                      TEST AL,AL
0053df25  750d                      JNZ 0x0053df34
0053df27  817f28f2000000            CMP dword ptr [EDI + 0x28],0xf2
0053df2e  0f8539040000              JNZ 0x0053e36d
0053df34  817f28f1000000            CMP dword ptr [EDI + 0x28],0xf1
0053df3b  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0053df45  0f85b0000000              JNZ 0x0053dffb
0053df4b  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0053df51  0f57e4                    XORPS XMM4,XMM4
0053df54  48                        DEC EAX
0053df55  83f803                    CMP EAX,0x3
0053df58  7723                      JA 0x0053df7d
0053df5a  ff24858ce45300            JMP dword ptr [EAX*0x4 + 0x53e48c]
0053df61  f30f1025b4a9ba00          MOVSS XMM4,dword ptr [0x00baa9b4]
0053df69  eb12                      JMP 0x0053df7d
0053df6b  f30f102550aeba00          MOVSS XMM4,dword ptr [0x00baae50]
0053df73  eb08                      JMP 0x0053df7d
0053df75  f30f102578aaba00          MOVSS XMM4,dword ptr [0x00baaa78]
0053df7d  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
0053df85  0f57db                    XORPS XMM3,XMM3
0053df88  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0053df90  51                        PUSH ECX
0053df91  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0053df97  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0053df9e  e84d59eeff                CALL 0x004238f0
0053dfa3  f30f592588a0ba00          MULSS XMM4,dword ptr [0x00baa088]
0053dfab  8bf0                      MOV ESI,EAX
0053dfad  0f28c4                    MOVAPS XMM0,XMM4
0053dfb0  f30f11a548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM4
0053dfb8  e883f5edff                CALL 0x0041d540
0053dfbd  f30f118558feffff          MOVSS dword ptr [EBP + 0xfffffe58],XMM0
0053dfc5  f30f108548feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe48]
0053dfcd  e84ef5edff                CALL 0x0041d520
0053dfd2  51                        PUSH ECX
0053dfd3  c7042400008040            MOV dword ptr [ESP],0x40800000
0053dfda  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
0053dfe0  56                        PUSH ESI
0053dfe1  6a12                      PUSH 0x12
0053dfe3  50                        PUSH EAX
0053dfe4  ba40b6c700                MOV EDX,0xc7b640
0053dfe9  f30f11855cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM0
0053dff1  8bcf                      MOV ECX,EDI
0053dff3  e898d80c00                CALL 0x0060b890
0053dff8  83c410                    ADD ESP,0x10
0053dffb  80bd67feffff00            CMP byte ptr [EBP + 0xfffffe67],0x0
0053e002  8d4f48                    LEA ECX,[EDI + 0x48]
0053e005  6a00                      PUSH 0x0
0053e007  7416                      JZ 0x0053e01f
0053e009  68b808b600                PUSH 0xb608b8
0053e00e  e86dc3ecff                CALL 0x0040a380
0053e013  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
0053e01d  eb0a                      JMP 0x0053e029
0053e01f  6854ddb100                PUSH 0xb1dd54
0053e024  e857c3ecff                CALL 0x0040a380
0053e029  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053e030  7404                      JZ 0x0053e036
0053e032  33d2                      XOR EDX,EDX
0053e034  eb0e                      JMP 0x0053e044
0053e036  e8250f1b00                CALL 0x006eef60
0053e03b  33d2                      XOR EDX,EDX
0053e03d  b92d000000                MOV ECX,0x2d
0053e042  f7f1                      DIV ECX
0053e044  8d420f                    LEA EAX,[EDX + 0xf]
0053e047  c7877c03000000004843      MOV dword ptr [EDI + 0x37c],0x43480000
0053e051  898710040000              MOV dword ptr [EDI + 0x410],EAX
0053e057  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0053e05d  898734030000              MOV dword ptr [EDI + 0x334],EAX
0053e063  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0053e069  898738030000              MOV dword ptr [EDI + 0x338],EAX
0053e06f  e9f9020000                JMP 0x0053e36d
0053e074  f30f10b73c030000          MOVSS XMM6,dword ptr [EDI + 0x33c]
0053e07c  0f28d7                    MOVAPS XMM2,XMM7
0053e07f  f30f102d40cbba00          MOVSS XMM5,dword ptr [0x00bacb40]
0053e087  f30f5cd6                  SUBSS XMM2,XMM6
0053e08b  f30f100d34acba00          MOVSS XMM1,dword ptr [0x00baac34]
0053e093  0f54d5                    ANDPS XMM2,XMM5
0053e096  0f2fca                    COMISS XMM1,XMM2
0053e099  767c                      JBE 0x0053e117
0053e09b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0053e0a3  0f28ca                    MOVAPS XMM1,XMM2
0053e0a6  f30f11bf34030000          MOVSS dword ptr [EDI + 0x334],XMM7
0053e0ae  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0053e0b6  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
0053e0c0  c7878401000002000000      MOV dword ptr [EDI + 0x184],0x2
0053e0ca  c787ec0000000000b4c2      MOV dword ptr [EDI + 0xec],0xc2b40000
0053e0d4  817f28f1000000            CMP dword ptr [EDI + 0x28],0xf1
0053e0db  7414                      JZ 0x0053e0f1
0053e0dd  c7874c03000000000000      MOV dword ptr [EDI + 0x34c],0x0
0053e0e7  c787500300000000c8c1      MOV dword ptr [EDI + 0x350],0xc1c80000
0053e0f1  c787740300006666e63f      MOV dword ptr [EDI + 0x374],0x3fe66666
0053e0fb  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0053e105  c787b40b00000000a040      MOV dword ptr [EDI + 0xbb4],0x40a00000
0053e10f  f30f10b73c030000          MOVSS XMM6,dword ptr [EDI + 0x33c]
0053e117  0f28c3                    MOVAPS XMM0,XMM3
0053e11a  f30f5cc6                  SUBSS XMM0,XMM6
0053e11e  0f54c5                    ANDPS XMM0,XMM5
0053e121  0f2fc8                    COMISS XMM1,XMM0
0053e124  7674                      JBE 0x0053e19a
0053e126  0f28c8                    MOVAPS XMM1,XMM0
0053e129  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0053e131  f30f119f34030000          MOVSS dword ptr [EDI + 0x334],XMM3
0053e139  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0053e141  c787c00b000004000000      MOV dword ptr [EDI + 0xbc0],0x4
0053e14b  c7878401000002000000      MOV dword ptr [EDI + 0x184],0x2
0053e155  c787ec0000000000b442      MOV dword ptr [EDI + 0xec],0x42b40000
0053e15f  817f28f1000000            CMP dword ptr [EDI + 0x28],0xf1
0053e166  7414                      JZ 0x0053e17c
0053e168  c7874c03000000000000      MOV dword ptr [EDI + 0x34c],0x0
0053e172  c787500300000000c8c1      MOV dword ptr [EDI + 0x350],0xc1c80000
0053e17c  c787740300006666e63f      MOV dword ptr [EDI + 0x374],0x3fe66666
0053e186  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0053e190  c787b40b00000000a040      MOV dword ptr [EDI + 0xbb4],0x40a00000
0053e19a  f30f109d4cfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe4c]
0053e1a2  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
0053e1aa  0f28c3                    MOVAPS XMM0,XMM3
0053e1ad  f30f5cc2                  SUBSS XMM0,XMM2
0053e1b1  0f54c5                    ANDPS XMM0,XMM5
0053e1b4  0f2fc8                    COMISS XMM1,XMM0
0053e1b7  7669                      JBE 0x0053e222
0053e1b9  0f28c8                    MOVAPS XMM1,XMM0
0053e1bc  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0053e1c4  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0053e1cc  f30f119f38030000          MOVSS dword ptr [EDI + 0x338],XMM3
0053e1d4  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0053e1de  c7878401000001000000      MOV dword ptr [EDI + 0x184],0x1
0053e1e8  c787ec00000000000000      MOV dword ptr [EDI + 0xec],0x0
0053e1f2  c7874c03000000000000      MOV dword ptr [EDI + 0x34c],0x0
0053e1fc  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
0053e206  c787b00b00000000a040      MOV dword ptr [EDI + 0xbb0],0x40a00000
0053e210  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
0053e21a  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
0053e222  0f28c4                    MOVAPS XMM0,XMM4
0053e225  f30f5cc2                  SUBSS XMM0,XMM2
0053e229  0f54c5                    ANDPS XMM0,XMM5
0053e22c  0f2fc8                    COMISS XMM1,XMM0
0053e22f  765e                      JBE 0x0053e28f
0053e231  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0053e239  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0053e241  f30f11a738030000          MOVSS dword ptr [EDI + 0x338],XMM4
0053e249  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
0053e253  c7878401000001000000      MOV dword ptr [EDI + 0x184],0x1
0053e25d  c787ec00000000003443      MOV dword ptr [EDI + 0xec],0x43340000
0053e267  c7874c03000000000000      MOV dword ptr [EDI + 0x34c],0x0
0053e271  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
0053e27b  c787b00b00000000a040      MOV dword ptr [EDI + 0xbb0],0x40a00000
0053e285  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
0053e28f  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
0053e295  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
0053e29b  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
0053e2a1  898740030000              MOV dword ptr [EDI + 0x340],EAX
0053e2a7  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0053e2aa  85f6                      TEST ESI,ESI
0053e2ac  744d                      JZ 0x0053e2fb
0053e2ae  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053e2b2  8bc6                      MOV EAX,ESI
0053e2b4  7202                      JC 0x0053e2b8
0053e2b6  8b06                      MOV EAX,dword ptr [ESI]
0053e2b8  b9e4dcb100                MOV ECX,0xb1dce4
0053e2bd  0f1f00                    NOP dword ptr [EAX]
0053e2c0  8a10                      MOV DL,byte ptr [EAX]
0053e2c2  3a11                      CMP DL,byte ptr [ECX]
0053e2c4  751a                      JNZ 0x0053e2e0
0053e2c6  84d2                      TEST DL,DL
0053e2c8  7412                      JZ 0x0053e2dc
0053e2ca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053e2cd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053e2d0  750e                      JNZ 0x0053e2e0
0053e2d2  83c002                    ADD EAX,0x2
0053e2d5  83c102                    ADD ECX,0x2
0053e2d8  84d2                      TEST DL,DL
0053e2da  75e4                      JNZ 0x0053e2c0
0053e2dc  33c0                      XOR EAX,EAX
0053e2de  eb05                      JMP 0x0053e2e5
0053e2e0  1bc0                      SBB EAX,EAX
0053e2e2  83c801                    OR EAX,0x1
0053e2e5  85c0                      TEST EAX,EAX
0053e2e7  7512                      JNZ 0x0053e2fb
0053e2e9  384634                    CMP byte ptr [ESI + 0x34],AL
0053e2ec  742e                      JZ 0x0053e31c
0053e2ee  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0053e2f4  8d7748                    LEA ESI,[EDI + 0x48]
0053e2f7  7523                      JNZ 0x0053e31c
0053e2f9  eb03                      JMP 0x0053e2fe
0053e2fb  8d7748                    LEA ESI,[EDI + 0x48]
0053e2fe  6a01                      PUSH 0x1
0053e300  68e4dcb100                PUSH 0xb1dce4
0053e305  8bce                      MOV ECX,ESI
0053e307  e8c4c2ecff                CALL 0x0040a5d0
0053e30c  84c0                      TEST AL,AL
0053e30e  740c                      JZ 0x0053e31c
0053e310  8d4e30                    LEA ECX,[ESI + 0x30]
0053e313  e898beecff                CALL 0x0040a1b0
0053e318  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0053e31c  817f28f0000000            CMP dword ptr [EDI + 0x28],0xf0
0053e323  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053e32d  753e                      JNZ 0x0053e36d
0053e32f  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0053e333  7538                      JNZ 0x0053e36d
0053e335  81c7e4010000              ADD EDI,0x1e4
0053e33b  81ffa44dc300              CMP EDI,0xc34da4
0053e341  742a                      JZ 0x0053e36d
0053e343  0f1005a44dc300            MOVUPS XMM0,xmmword ptr [0x00c34da4]
0053e34a  0f1107                    MOVUPS xmmword ptr [EDI],XMM0
0053e34d  0f1005b44dc300            MOVUPS XMM0,xmmword ptr [0x00c34db4]
0053e354  0f114710                  MOVUPS xmmword ptr [EDI + 0x10],XMM0
0053e358  f30f7e05c44dc300          MOVQ XMM0,qword ptr [0x00c34dc4]
0053e360  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
0053e365  a1cc4dc300                MOV EAX,[0x00c34dcc]
0053e36a  894728                    MOV dword ptr [EDI + 0x28],EAX
0053e36d  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0053e370  64890d00000000            MOV dword ptr FS:[0x0],ECX
0053e377  59                        POP ECX
0053e378  5f                        POP EDI
0053e379  5e                        POP ESI
0053e37a  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0053e37d  33cd                      XOR ECX,EBP
0053e37f  e8a70d5b00                CALL 0x00aef12b
0053e384  8be5                      MOV ESP,EBP
0053e386  5d                        POP EBP
0053e387  8be3                      MOV ESP,EBX
0053e389  5b                        POP EBX
0053e38a  c3                        RET
