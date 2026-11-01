; J460 NPC AI 0x00506320 AI_00506320
; types=202
; identities=202.0.0,202.10.0,202.10.1,202.11.0,202.11.1
; entry=00506320
00506320  55                        PUSH EBP
00506321  8bec                      MOV EBP,ESP
00506323  81ecf4000000              SUB ESP,0xf4
00506329  a1b493bf00                MOV EAX,[0x00bf93b4]
0050632e  33c5                      XOR EAX,EBP
00506330  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00506333  53                        PUSH EBX
00506334  56                        PUSH ESI
00506335  57                        PUSH EDI
00506336  8bf9                      MOV EDI,ECX
00506338  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
0050633f  7550                      JNZ 0x00506391
00506341  83bfd403000000            CMP dword ptr [EDI + 0x3d4],0x0
00506348  0f8530080000              JNZ 0x00506b7e
0050634e  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00506355  0f8523080000              JNZ 0x00506b7e
0050635b  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
00506361  85c0                      TEST EAX,EAX
00506363  0f8815080000              JS 0x00506b7e
00506369  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050636f  689f0f0000                PUSH 0xf9f
00506374  50                        PUSH EAX
00506375  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0050637b  e86002f5ff                CALL 0x004565e0
00506380  5f                        POP EDI
00506381  5e                        POP ESI
00506382  5b                        POP EBX
00506383  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00506386  33cd                      XOR ECX,EBP
00506388  e89e8d5e00                CALL 0x00aef12b
0050638d  8be5                      MOV ESP,EBP
0050638f  5d                        POP EBP
00506390  c3                        RET
00506391  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00506397  85c0                      TEST EAX,EAX
00506399  0f8524020000              JNZ 0x005065c3
0050639f  8d8f14040000              LEA ECX,[EDI + 0x414]
005063a5  e8460c2e00                CALL 0x007e6ff0
005063aa  8b357816c700              MOV ESI,dword ptr [0x00c71678]
005063b0  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
005063b6  99                        CDQ
005063b7  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
005063bf  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
005063c5  f7790c                    IDIV dword ptr [ECX + 0xc]
005063c8  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
005063cf  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
005063d9  660f6ec8                  MOVD XMM1,EAX
005063dd  660f6ed2                  MOVD XMM2,EDX
005063e1  0f5bd2                    CVTDQ2PS XMM2,XMM2
005063e4  0f5bc9                    CVTDQ2PS XMM1,XMM1
005063e7  f30f59d0                  MULSS XMM2,XMM0
005063eb  f30f59c8                  MULSS XMM1,XMM0
005063ef  f30f58d0                  ADDSS XMM2,XMM0
005063f3  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
005063fb  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
00506403  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
0050640b  818f6801000001000040      OR dword ptr [EDI + 0x168],0x40000001
00506415  818f6c01000008200000      OR dword ptr [EDI + 0x16c],0x2008
0050641f  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
00506422  83f803                    CMP EAX,0x3
00506425  7753                      JA 0x0050647a
00506427  ff2485906b5000            JMP dword ptr [EAX*0x4 + 0x506b90]
0050647a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0050647d  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00506487  83f80a                    CMP EAX,0xa
0050648a  7440                      JZ 0x005064cc
0050648c  83f80b                    CMP EAX,0xb
0050648f  743b                      JZ 0x005064cc
00506491  c787a00b000014000000      MOV dword ptr [EDI + 0xba0],0x14
0050649b  8bce                      MOV ECX,ESI
0050649d  ffb60c830100              PUSH dword ptr [ESI + 0x1830c]
005064a3  ffb604830100              PUSH dword ptr [ESI + 0x18304]
005064a9  e812a72300                CALL 0x00740bc0
005064ae  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
005064b1  d1e8                      SHR EAX,0x1
005064b3  a801                      TEST AL,0x1
005064b5  0f84a8000000              JZ 0x00506563
005064bb  6a00                      PUSH 0x0
005064bd  8d4f48                    LEA ECX,[EDI + 0x48]
005064c0  68f4edb100                PUSH 0xb1edf4
005064c5  e8b63ef0ff                CALL 0x0040a380
005064ca  eb7a                      JMP 0x00506546
005064cc  c787a00b000016000000      MOV dword ptr [EDI + 0xba0],0x16
005064d6  8bce                      MOV ECX,ESI
005064d8  ffb60c830100              PUSH dword ptr [ESI + 0x1830c]
005064de  ffb604830100              PUSH dword ptr [ESI + 0x18304]
005064e4  e8d7a62300                CALL 0x00740bc0
005064e9  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
005064ec  d1e8                      SHR EAX,0x1
005064ee  a801                      TEST AL,0x1
005064f0  7525                      JNZ 0x00506517
005064f2  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
005064f6  756b                      JNZ 0x00506563
005064f8  8bcf                      MOV ECX,EDI
005064fa  e821071d00                CALL 0x006d6c20
005064ff  85c0                      TEST EAX,EAX
00506501  7f60                      JG 0x00506563
00506503  a17816c700                MOV EAX,[0x00c71678]
00506508  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0050650e  83b8ec11000000            CMP dword ptr [EAX + 0x11ec],0x0
00506515  7f4c                      JG 0x00506563
00506517  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0050651b  b9d40cb600                MOV ECX,0xb60cd4
00506520  b8e00cb600                MOV EAX,0xb60ce0
00506525  0f45c1                    CMOVNZ EAX,ECX
00506528  8d4f48                    LEA ECX,[EDI + 0x48]
0050652b  6a01                      PUSH 0x1
0050652d  50                        PUSH EAX
0050652e  e89d40f0ff                CALL 0x0040a5d0
00506533  84c0                      TEST AL,AL
00506535  740f                      JZ 0x00506546
00506537  8d4f78                    LEA ECX,[EDI + 0x78]
0050653a  e8713cf0ff                CALL 0x0040a1b0
0050653f  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00506546  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0050654c  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
00506553  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00506559  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00506563  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
00506569  e8020cf0ff                CALL 0x00407170
0050656e  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00506574  3bc8                      CMP ECX,EAX
00506576  741e                      JZ 0x00506596
00506578  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
0050657b  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0050657e  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
00506582  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00506586  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
0050658b  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00506590  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
00506593  894128                    MOV dword ptr [ECX + 0x28],EAX
00506596  c787f40100000000803f      MOV dword ptr [EDI + 0x1f4],0x3f800000
005065a0  c787f80100000000803f      MOV dword ptr [EDI + 0x1f8],0x3f800000
005065aa  c787fc0100000000803f      MOV dword ptr [EDI + 0x1fc],0x3f800000
005065b4  c787000200000000803f      MOV dword ptr [EDI + 0x200],0x3f800000
005065be  e94d050000                JMP 0x00506b10
005065c3  83f803                    CMP EAX,0x3
005065c6  0f85cd010000              JNZ 0x00506799
005065cc  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005065cf  83f80a                    CMP EAX,0xa
005065d2  0f84cb000000              JZ 0x005066a3
005065d8  83f80b                    CMP EAX,0xb
005065db  0f84c2000000              JZ 0x005066a3
005065e1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005065e5  7409                      JZ 0x005065f0
005065e7  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005065ee  7539                      JNZ 0x00506629
005065f0  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
005065f3  83f803                    CMP EAX,0x3
005065f6  7731                      JA 0x00506629
005065f8  ff2485a06b5000            JMP dword ptr [EAX*0x4 + 0x506ba0]
00506629  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00506630  0f8f36010000              JG 0x0050676c
00506636  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
00506639  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00506643  83f803                    CMP EAX,0x3
00506646  0f8720010000              JA 0x0050676c
0050664c  ff2485b06b5000            JMP dword ptr [EAX*0x4 + 0x506bb0]
005066a3  837f3000                  CMP dword ptr [EDI + 0x30],0x0
005066a7  b9c401b600                MOV ECX,0xb601c4
005066ac  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
005066af  b828d4b100                MOV EAX,0xb1d428
005066b4  0f45c8                    CMOVNZ ECX,EAX
005066b7  898d4cffffff              MOV dword ptr [EBP + 0xffffff4c],ECX
005066bd  85f6                      TEST ESI,ESI
005066bf  744b                      JZ 0x0050670c
005066c1  837e1410                  CMP dword ptr [ESI + 0x14],0x10
005066c5  8bc6                      MOV EAX,ESI
005066c7  7207                      JC 0x005066d0
005066c9  8b06                      MOV EAX,dword ptr [ESI]
005066cb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
005066d0  8a10                      MOV DL,byte ptr [EAX]
005066d2  3a11                      CMP DL,byte ptr [ECX]
005066d4  751a                      JNZ 0x005066f0
005066d6  84d2                      TEST DL,DL
005066d8  7412                      JZ 0x005066ec
005066da  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005066dd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005066e0  750e                      JNZ 0x005066f0
005066e2  83c002                    ADD EAX,0x2
005066e5  83c102                    ADD ECX,0x2
005066e8  84d2                      TEST DL,DL
005066ea  75e4                      JNZ 0x005066d0
005066ec  33c0                      XOR EAX,EAX
005066ee  eb05                      JMP 0x005066f5
005066f0  1bc0                      SBB EAX,EAX
005066f2  83c801                    OR EAX,0x1
005066f5  85c0                      TEST EAX,EAX
005066f7  750d                      JNZ 0x00506706
005066f9  384634                    CMP byte ptr [ESI + 0x34],AL
005066fc  742c                      JZ 0x0050672a
005066fe  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00506704  7524                      JNZ 0x0050672a
00506706  8b8d4cffffff              MOV ECX,dword ptr [EBP + 0xffffff4c]
0050670c  6a01                      PUSH 0x1
0050670e  51                        PUSH ECX
0050670f  8d4f48                    LEA ECX,[EDI + 0x48]
00506712  e8b93ef0ff                CALL 0x0040a5d0
00506717  84c0                      TEST AL,AL
00506719  740f                      JZ 0x0050672a
0050671b  8d4f78                    LEA ECX,[EDI + 0x78]
0050671e  e88d3af0ff                CALL 0x0040a1b0
00506723  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0050672a  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00506731  7f39                      JG 0x0050676c
00506733  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00506737  b9b40cb600                MOV ECX,0xb60cb4
0050673c  b8c40cb600                MOV EAX,0xb60cc4
00506741  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0050674b  0f45c1                    CMOVNZ EAX,ECX
0050674e  8d4f48                    LEA ECX,[EDI + 0x48]
00506751  6a01                      PUSH 0x1
00506753  50                        PUSH EAX
00506754  e8773ef0ff                CALL 0x0040a5d0
00506759  84c0                      TEST AL,AL
0050675b  740f                      JZ 0x0050676c
0050675d  8d4f78                    LEA ECX,[EDI + 0x78]
00506760  e84b3af0ff                CALL 0x0040a1b0
00506765  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0050676c  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
00506772  85d2                      TEST EDX,EDX
00506774  0f8e96030000              JLE 0x00506b10
0050677a  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00506782  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0050678a  2bc8                      SUB ECX,EAX
0050678c  03ca                      ADD ECX,EDX
0050678e  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
00506794  e977030000                JMP 0x00506b10
00506799  83f808                    CMP EAX,0x8
0050679c  0f850d030000              JNZ 0x00506aaf
005067a2  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005067a5  83f80a                    CMP EAX,0xa
005067a8  0f84d5010000              JZ 0x00506983
005067ae  83f80b                    CMP EAX,0xb
005067b1  0f84cc010000              JZ 0x00506983
005067b7  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
005067bd  e86e87f3ff                CALL 0x0043ef30
005067c2  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
005067ca  8d4f48                    LEA ECX,[EDI + 0x48]
005067cd  f30f5c0528a1ba00          SUBSS XMM0,dword ptr [0x00baa128]
005067d5  68dcd2b100                PUSH 0xb1d2dc
005067da  c78554ffffff00005041      MOV dword ptr [EBP + 0xffffff54],0x41500000
005067e4  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
005067ec  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
005067f4  f30f590588a4ba00          MULSS XMM0,dword ptr [0x00baa488]
005067fc  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
00506804  e82748f0ff                CALL 0x0040b030
00506809  84c0                      TEST AL,AL
0050680b  0f84ea000000              JZ 0x005068fb
00506811  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00506819  8d4f48                    LEA ECX,[EDI + 0x48]
0050681c  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
00506824  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0050682c  683404b600                PUSH 0xb60434
00506831  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
00506839  e89249f0ff                CALL 0x0040b1d0
0050683e  85c0                      TEST EAX,EAX
00506840  741b                      JZ 0x0050685d
00506842  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00506846  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
0050684b  f30f5e1524a3ba00          DIVSS XMM2,dword ptr [0x00baa324]
00506853  f30f5e1d24a3ba00          DIVSS XMM3,dword ptr [0x00baa324]
0050685b  eb10                      JMP 0x0050686d
0050685d  f30f10954cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff4c]
00506865  f30f109d40ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff40]
0050686d  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00506875  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0050687b  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
00506883  8bcf                      MOV ECX,EDI
00506885  50                        PUSH EAX
00506886  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
0050688e  f30f589f40030000          ADDSS XMM3,dword ptr [EDI + 0x340]
00506896  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
0050689e  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
005068a4  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
005068ac  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
005068b4  6a00                      PUSH 0x0
005068b6  50                        PUSH EAX
005068b7  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
005068bd  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
005068c5  50                        PUSH EAX
005068c6  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
005068ce  f30f119d40ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM3
005068d6  e8054a1c00                CALL 0x006cb2e0
005068db  51                        PUSH ECX
005068dc  c704240000803f            MOV dword ptr [ESP],0x3f800000
005068e3  6a00                      PUSH 0x0
005068e5  6a02                      PUSH 0x2
005068e7  51                        PUSH ECX
005068e8  c704240000803f            MOV dword ptr [ESP],0x3f800000
005068ef  8bcf                      MOV ECX,EDI
005068f1  6806010000                PUSH 0x106
005068f6  e8a5021d00                CALL 0x006d6ba0
005068fb  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005068ff  7409                      JZ 0x0050690a
00506901  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00506908  7543                      JNZ 0x0050694d
0050690a  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0050690d  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00506917  83f803                    CMP EAX,0x3
0050691a  7731                      JA 0x0050694d
0050691c  ff2485c06b5000            JMP dword ptr [EAX*0x4 + 0x506bc0]
0050694d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00506953  e858a42300                CALL 0x00740db0
00506958  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
0050695b  d1e8                      SHR EAX,0x1
0050695d  a801                      TEST AL,0x1
0050695f  0f84ab010000              JZ 0x00506b10
00506965  6a00                      PUSH 0x0
00506967  681ceeb100                PUSH 0xb1ee1c
0050696c  8d4f48                    LEA ECX,[EDI + 0x48]
0050696f  e80c3af0ff                CALL 0x0040a380
00506974  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0050697e  e98d010000                JMP 0x00506b10
00506983  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00506987  0f8481000000              JZ 0x00506a0e
0050698d  68dcd2b100                PUSH 0xb1d2dc
00506992  8d4f78                    LEA ECX,[EDI + 0x78]
00506995  e83644f0ff                CALL 0x0040add0
0050699a  84c0                      TEST AL,AL
0050699c  7461                      JZ 0x005069ff
0050699e  51                        PUSH ECX
0050699f  c704240000803f            MOV dword ptr [ESP],0x3f800000
005069a6  6a00                      PUSH 0x0
005069a8  6a00                      PUSH 0x0
005069aa  51                        PUSH ECX
005069ab  c704240000803f            MOV dword ptr [ESP],0x3f800000
005069b2  8bcf                      MOV ECX,EDI
005069b4  6806010000                PUSH 0x106
005069b9  e8e2011d00                CALL 0x006d6ba0
005069be  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
005069c4  e86785f3ff                CALL 0x0043ef30
005069c9  50                        PUSH EAX
005069ca  33c0                      XOR EAX,EAX
005069cc  c78544ffffff00002041      MOV dword ptr [EBP + 0xffffff44],0x41200000
005069d6  394730                    CMP dword ptr [EDI + 0x30],EAX
005069d9  8d8f3c030000              LEA ECX,[EDI + 0x33c]
005069df  c78548ffffff00000000      MOV dword ptr [EBP + 0xffffff48],0x0
005069e9  0f95c0                    SETNZ AL
005069ec  83c006                    ADD EAX,0x6
005069ef  50                        PUSH EAX
005069f0  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
005069f6  50                        PUSH EAX
005069f7  51                        PUSH ECX
005069f8  8bcf                      MOV ECX,EDI
005069fa  e8e1481c00                CALL 0x006cb2e0
005069ff  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00506a03  7409                      JZ 0x00506a0e
00506a05  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00506a0c  7515                      JNZ 0x00506a23
00506a0e  33c0                      XOR EAX,EAX
00506a10  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00506a1a  394730                    CMP dword ptr [EDI + 0x30],EAX
00506a1d  0f94c0                    SETZ AL
00506a20  894730                    MOV dword ptr [EDI + 0x30],EAX
00506a23  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00506a29  ffb10c830100              PUSH dword ptr [ECX + 0x1830c]
00506a2f  ffb104830100              PUSH dword ptr [ECX + 0x18304]
00506a35  e886a12300                CALL 0x00740bc0
00506a3a  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
00506a3d  d1e8                      SHR EAX,0x1
00506a3f  a801                      TEST AL,0x1
00506a41  7531                      JNZ 0x00506a74
00506a43  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
00506a47  0f85c3000000              JNZ 0x00506b10
00506a4d  8bcf                      MOV ECX,EDI
00506a4f  e8cc011d00                CALL 0x006d6c20
00506a54  85c0                      TEST EAX,EAX
00506a56  0f8fb4000000              JG 0x00506b10
00506a5c  a17816c700                MOV EAX,[0x00c71678]
00506a61  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00506a67  83b8ec11000000            CMP dword ptr [EAX + 0x11ec],0x0
00506a6e  0f8f9c000000              JG 0x00506b10
00506a74  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00506a78  b92c0db600                MOV ECX,0xb60d2c
00506a7d  b8380db600                MOV EAX,0xb60d38
00506a82  0f45c1                    CMOVNZ EAX,ECX
00506a85  8d4f48                    LEA ECX,[EDI + 0x48]
00506a88  6a01                      PUSH 0x1
00506a8a  50                        PUSH EAX
00506a8b  e8403bf0ff                CALL 0x0040a5d0
00506a90  84c0                      TEST AL,AL
00506a92  740f                      JZ 0x00506aa3
00506a94  8d4f78                    LEA ECX,[EDI + 0x78]
00506a97  e81437f0ff                CALL 0x0040a1b0
00506a9c  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00506aa3  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00506aad  eb61                      JMP 0x00506b10
00506aaf  83f810                    CMP EAX,0x10
00506ab2  755c                      JNZ 0x00506b10
00506ab4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00506ab8  7409                      JZ 0x00506ac3
00506aba  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00506ac1  754d                      JNZ 0x00506b10
00506ac3  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00506ac6  83f80a                    CMP EAX,0xa
00506ac9  7416                      JZ 0x00506ae1
00506acb  83f80b                    CMP EAX,0xb
00506ace  7411                      JZ 0x00506ae1
00506ad0  6a00                      PUSH 0x0
00506ad2  68f4edb100                PUSH 0xb1edf4
00506ad7  8d4f48                    LEA ECX,[EDI + 0x48]
00506ada  e8a138f0ff                CALL 0x0040a380
00506adf  eb2f                      JMP 0x00506b10
00506ae1  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00506ae5  b9d40cb600                MOV ECX,0xb60cd4
00506aea  b8e00cb600                MOV EAX,0xb60ce0
00506aef  0f45c1                    CMOVNZ EAX,ECX
00506af2  8d4f48                    LEA ECX,[EDI + 0x48]
00506af5  6a01                      PUSH 0x1
00506af7  50                        PUSH EAX
00506af8  e8d33af0ff                CALL 0x0040a5d0
00506afd  84c0                      TEST AL,AL
00506aff  740f                      JZ 0x00506b10
00506b01  8d4f78                    LEA ECX,[EDI + 0x78]
00506b04  e8a736f0ff                CALL 0x0040a1b0
00506b09  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00506b10  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00506b17  7435                      JZ 0x00506b4e
00506b19  83bf2c03000000            CMP dword ptr [EDI + 0x32c],0x0
00506b20  8db72c030000              LEA ESI,[EDI + 0x32c]
00506b26  7c26                      JL 0x00506b4e
00506b28  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00506b2e  6aff                      PUSH -0x1
00506b30  ffb104830100              PUSH dword ptr [ECX + 0x18304]
00506b36  e885a02300                CALL 0x00740bc0
00506b3b  56                        PUSH ESI
00506b3c  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00506b42  51                        PUSH ECX
00506b43  8d8880000000              LEA ECX,[EAX + 0x80]
00506b49  e872dafdff                CALL 0x004e45c0
00506b4e  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00506b56  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00506b5e  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00506b66  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00506b6e  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00506b76  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00506b7e  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00506b81  5f                        POP EDI
00506b82  5e                        POP ESI
00506b83  33cd                      XOR ECX,EBP
00506b85  5b                        POP EBX
00506b86  e8a0855e00                CALL 0x00aef12b
00506b8b  8be5                      MOV ESP,EBP
00506b8d  5d                        POP EBP
00506b8e  c3                        RET
