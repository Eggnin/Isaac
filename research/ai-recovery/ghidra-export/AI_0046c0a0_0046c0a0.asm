; J460 NPC AI 0x0046c0a0 AI_0046c0a0
; types=20,43
; identities=20.0.0,43.0.0,43.1.0
; entry=0046c0a0
0046c0a0  53                        PUSH EBX
0046c0a1  8bdc                      MOV EBX,ESP
0046c0a3  83ec08                    SUB ESP,0x8
0046c0a6  83e4f8                    AND ESP,0xfffffff8
0046c0a9  83c404                    ADD ESP,0x4
0046c0ac  55                        PUSH EBP
0046c0ad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0046c0b0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0046c0b4  8bec                      MOV EBP,ESP
0046c0b6  6aff                      PUSH -0x1
0046c0b8  685028af00                PUSH 0xaf2850
0046c0bd  64a100000000              MOV EAX,FS:[0x0]
0046c0c3  50                        PUSH EAX
0046c0c4  53                        PUSH EBX
0046c0c5  81ec18020000              SUB ESP,0x218
0046c0cb  a1b493bf00                MOV EAX,[0x00bf93b4]
0046c0d0  33c5                      XOR EAX,EBP
0046c0d2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0046c0d5  56                        PUSH ESI
0046c0d6  57                        PUSH EDI
0046c0d7  50                        PUSH EAX
0046c0d8  8d45f4                    LEA EAX,[EBP + -0xc]
0046c0db  64a300000000              MOV FS:[0x0],EAX
0046c0e1  8bf9                      MOV EDI,ECX
0046c0e3  837f282b                  CMP dword ptr [EDI + 0x28],0x2b
0046c0e7  750d                      JNZ 0x0046c0f6
0046c0e9  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046c0ed  c6856bfeffff01            MOV byte ptr [EBP + 0xfffffe6b],0x1
0046c0f4  7407                      JZ 0x0046c0fd
0046c0f6  c6856bfeffff00            MOV byte ptr [EBP + 0xfffffe6b],0x0
0046c0fd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0046c105  8d853cfeffff              LEA EAX,[EBP + 0xfffffe3c]
0046c10b  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0046c113  51                        PUSH ECX
0046c114  c7042400000000            MOV dword ptr [ESP],0x0
0046c11b  50                        PUSH EAX
0046c11c  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0046c124  0f57c0                    XORPS XMM0,XMM0
0046c127  f30f11856cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM0
0046c12f  e80c2b2500                CALL 0x006bec40
0046c134  f30f108d6cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe6c]
0046c13c  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
0046c142  0f28c1                    MOVAPS XMM0,XMM1
0046c145  89b550feffff              MOV dword ptr [EBP + 0xfffffe50],ESI
0046c14b  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
0046c153  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
0046c15b  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0046c163  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0046c16b  f30f118d38feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM1
0046c173  f30f118d34feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM1
0046c17b  83feff                    CMP ESI,-0x1
0046c17e  0f84d5040000              JZ 0x0046c659
0046c184  51                        PUSH ECX
0046c185  57                        PUSH EDI
0046c186  56                        PUSH ESI
0046c187  6a00                      PUSH 0x0
0046c189  e842a14e00                CALL 0x009562d0
0046c18e  f30f108d6cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe6c]
0046c196  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0046c19c  0f28d1                    MOVAPS XMM2,XMM1
0046c19f  f30f5cd0                  SUBSS XMM2,XMM0
0046c1a3  f30f119548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM2
0046c1ab  83f8ff                    CMP EAX,-0x1
0046c1ae  0f8451010000              JZ 0x0046c305
0046c1b4  51                        PUSH ECX
0046c1b5  57                        PUSH EDI
0046c1b6  50                        PUSH EAX
0046c1b7  6a01                      PUSH 0x1
0046c1b9  e812a14e00                CALL 0x009562d0
0046c1be  f30f108d48feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe48]
0046c1c6  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0046c1cc  f30f58c8                  ADDSS XMM1,XMM0
0046c1d0  f30f118d48feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM1
0046c1d8  f30f118d60feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM1
0046c1e0  83f8ff                    CMP EAX,-0x1
0046c1e3  0f8432010000              JZ 0x0046c31b
0046c1e9  51                        PUSH ECX
0046c1ea  57                        PUSH EDI
0046c1eb  50                        PUSH EAX
0046c1ec  6a02                      PUSH 0x2
0046c1ee  e8dda04e00                CALL 0x009562d0
0046c1f3  f30f108d6cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe6c]
0046c1fb  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0046c201  f30f5cc8                  SUBSS XMM1,XMM0
0046c205  f30f118d4cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM1
0046c20d  83f8ff                    CMP EAX,-0x1
0046c210  0f840d010000              JZ 0x0046c323
0046c216  51                        PUSH ECX
0046c217  57                        PUSH EDI
0046c218  50                        PUSH EAX
0046c219  6a03                      PUSH 0x3
0046c21b  e8b0a04e00                CALL 0x009562d0
0046c220  f30f10954cfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe4c]
0046c228  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0046c22e  f30f58d0                  ADDSS XMM2,XMM0
0046c232  f30f119554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM2
0046c23a  0f28ca                    MOVAPS XMM1,XMM2
0046c23d  f30f118d4cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM1
0046c245  f30f118d64feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM1
0046c24d  83f8ff                    CMP EAX,-0x1
0046c250  0f8410010000              JZ 0x0046c366
0046c256  51                        PUSH ECX
0046c257  57                        PUSH EDI
0046c258  50                        PUSH EAX
0046c259  6a04                      PUSH 0x4
0046c25b  e870a04e00                CALL 0x009562d0
0046c260  f30f108d6cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe6c]
0046c268  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0046c26e  f30f5cc8                  SUBSS XMM1,XMM0
0046c272  f30f118d34feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM1
0046c27a  83f8ff                    CMP EAX,-0x1
0046c27d  0f8407010000              JZ 0x0046c38a
0046c283  51                        PUSH ECX
0046c284  57                        PUSH EDI
0046c285  50                        PUSH EAX
0046c286  6a05                      PUSH 0x5
0046c288  e843a04e00                CALL 0x009562d0
0046c28d  f30f109534feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe34]
0046c295  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0046c29b  f30f58d0                  ADDSS XMM2,XMM0
0046c29f  f30f119528feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM2
0046c2a7  0f28ca                    MOVAPS XMM1,XMM2
0046c2aa  f30f118d34feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM1
0046c2b2  83f8ff                    CMP EAX,-0x1
0046c2b5  0f84f0000000              JZ 0x0046c3ab
0046c2bb  51                        PUSH ECX
0046c2bc  57                        PUSH EDI
0046c2bd  50                        PUSH EAX
0046c2be  6a06                      PUSH 0x6
0046c2c0  e80ba04e00                CALL 0x009562d0
0046c2c5  f30f108d6cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe6c]
0046c2cd  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0046c2d3  f30f5cc8                  SUBSS XMM1,XMM0
0046c2d7  f30f118d38feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM1
0046c2df  83f8ff                    CMP EAX,-0x1
0046c2e2  0f84d0000000              JZ 0x0046c3b8
0046c2e8  51                        PUSH ECX
0046c2e9  57                        PUSH EDI
0046c2ea  50                        PUSH EAX
0046c2eb  6a07                      PUSH 0x7
0046c2ed  e8de9f4e00                CALL 0x009562d0
0046c2f2  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0046c2f8  f30f108d38feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe38]
0046c300  e9be000000                JMP 0x0046c3c3
0046c305  f30f58d1                  ADDSS XMM2,XMM1
0046c309  f30f119548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM2
0046c311  f30f119560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM2
0046c319  eb08                      JMP 0x0046c323
0046c31b  f30f108d6cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe6c]
0046c323  f30f10856cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe6c]
0046c32b  f30f58c8                  ADDSS XMM1,XMM0
0046c32f  0f28d1                    MOVAPS XMM2,XMM1
0046c332  f30f118d4cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM1
0046c33a  f30f118d64feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM1
0046c342  0f28c8                    MOVAPS XMM1,XMM0
0046c345  f30f58c8                  ADDSS XMM1,XMM0
0046c349  f30f119554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM2
0046c351  f30f118d34feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM1
0046c359  f30f118d28feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM1
0046c361  0f28c8                    MOVAPS XMM1,XMM0
0046c364  eb5a                      JMP 0x0046c3c0
0046c366  f30f10856cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe6c]
0046c36e  0f28c8                    MOVAPS XMM1,XMM0
0046c371  f30f58c8                  ADDSS XMM1,XMM0
0046c375  f30f118d34feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM1
0046c37d  f30f118d28feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM1
0046c385  0f28c8                    MOVAPS XMM1,XMM0
0046c388  eb36                      JMP 0x0046c3c0
0046c38a  f30f10856cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe6c]
0046c392  f30f58c8                  ADDSS XMM1,XMM0
0046c396  f30f118d34feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM1
0046c39e  f30f118d28feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM1
0046c3a6  0f28c8                    MOVAPS XMM1,XMM0
0046c3a9  eb15                      JMP 0x0046c3c0
0046c3ab  f30f10856cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe6c]
0046c3b3  0f28c8                    MOVAPS XMM1,XMM0
0046c3b6  eb08                      JMP 0x0046c3c0
0046c3b8  f30f10856cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe6c]
0046c3c0  83c8ff                    OR EAX,0xffffffff
0046c3c3  f30f58c1                  ADDSS XMM0,XMM1
0046c3c7  89855cfeffff              MOV dword ptr [EBP + 0xfffffe5c],EAX
0046c3cd  f30f108d48feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe48]
0046c3d5  f30f59c9                  MULSS XMM1,XMM1
0046c3d9  f30f118538feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM0
0046c3e1  f30f108554feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe54]
0046c3e9  f30f59c0                  MULSS XMM0,XMM0
0046c3ed  f30f58c1                  ADDSS XMM0,XMM1
0046c3f1  e85a96fcff                CALL 0x00435a50
0046c3f6  0f28d0                    MOVAPS XMM2,XMM0
0046c3f9  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0046c401  0f2fd0                    COMISS XMM2,XMM0
0046c404  7647                      JBE 0x0046c44d
0046c406  0f2f956cfeffff            COMISS XMM2,dword ptr [EBP + 0xfffffe6c]
0046c40d  763e                      JBE 0x0046c44d
0046c40f  0f28c8                    MOVAPS XMM1,XMM0
0046c412  f30f5eca                  DIVSS XMM1,XMM2
0046c416  0f28c1                    MOVAPS XMM0,XMM1
0046c419  f30f598548feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe48]
0046c421  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
0046c429  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0046c431  f30f108554feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe54]
0046c439  f30f59c1                  MULSS XMM0,XMM1
0046c43d  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
0046c445  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
0046c44d  f30f108d28feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe28]
0046c455  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
0046c45d  f30f59c0                  MULSS XMM0,XMM0
0046c461  f30f59c9                  MULSS XMM1,XMM1
0046c465  f30f58c1                  ADDSS XMM0,XMM1
0046c469  e8e295fcff                CALL 0x00435a50
0046c46e  0f28c8                    MOVAPS XMM1,XMM0
0046c471  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0046c479  0f2fc8                    COMISS XMM1,XMM0
0046c47c  7635                      JBE 0x0046c4b3
0046c47e  0f2f8d6cfeffff            COMISS XMM1,dword ptr [EBP + 0xfffffe6c]
0046c485  762c                      JBE 0x0046c4b3
0046c487  f30f5ec1                  DIVSS XMM0,XMM1
0046c48b  f30f108d28feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe28]
0046c493  f30f59c8                  MULSS XMM1,XMM0
0046c497  f30f118d34feffff          MOVSS dword ptr [EBP + 0xfffffe34],XMM1
0046c49f  f30f108d38feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe38]
0046c4a7  f30f59c8                  MULSS XMM1,XMM0
0046c4ab  f30f118d38feffff          MOVSS dword ptr [EBP + 0xfffffe38],XMM1
0046c4b3  8b855cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe5c]
0046c4b9  83f8ff                    CMP EAX,-0x1
0046c4bc  740e                      JZ 0x0046c4cc
0046c4be  51                        PUSH ECX
0046c4bf  57                        PUSH EDI
0046c4c0  50                        PUSH EAX
0046c4c1  6a09                      PUSH 0x9
0046c4c3  e8489c4e00                CALL 0x00956110
0046c4c8  84c0                      TEST AL,AL
0046c4ca  7546                      JNZ 0x0046c512
0046c4cc  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0046c4d2  83f8ff                    CMP EAX,-0x1
0046c4d5  740e                      JZ 0x0046c4e5
0046c4d7  51                        PUSH ECX
0046c4d8  57                        PUSH EDI
0046c4d9  50                        PUSH EAX
0046c4da  6a08                      PUSH 0x8
0046c4dc  e82f9c4e00                CALL 0x00956110
0046c4e1  84c0                      TEST AL,AL
0046c4e3  752d                      JNZ 0x0046c512
0046c4e5  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0046c4eb  83f8ff                    CMP EAX,-0x1
0046c4ee  740e                      JZ 0x0046c4fe
0046c4f0  51                        PUSH ECX
0046c4f1  57                        PUSH EDI
0046c4f2  50                        PUSH EAX
0046c4f3  6a0a                      PUSH 0xa
0046c4f5  e8169c4e00                CALL 0x00956110
0046c4fa  84c0                      TEST AL,AL
0046c4fc  7514                      JNZ 0x0046c512
0046c4fe  6a0b                      PUSH 0xb
0046c500  8bcf                      MOV ECX,EDI
0046c502  e859bd2600                CALL 0x006d8260
0046c507  c6856afeffff00            MOV byte ptr [EBP + 0xfffffe6a],0x0
0046c50e  84c0                      TEST AL,AL
0046c510  7407                      JZ 0x0046c519
0046c512  c6856afeffff01            MOV byte ptr [EBP + 0xfffffe6a],0x1
0046c519  f30f108d48feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe48]
0046c521  f30f10854cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe4c]
0046c529  f30f59c0                  MULSS XMM0,XMM0
0046c52d  f30f59c9                  MULSS XMM1,XMM1
0046c531  f30f58c1                  ADDSS XMM0,XMM1
0046c535  e81695fcff                CALL 0x00435a50
0046c53a  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
0046c541  7620                      JBE 0x0046c563
0046c543  f30f109548feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe48]
0046c54b  f30f10854cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe4c]
0046c553  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
0046c55b  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0046c563  f30f108d34feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe34]
0046c56b  f30f108538feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe38]
0046c573  f30f59c0                  MULSS XMM0,XMM0
0046c577  f30f59c9                  MULSS XMM1,XMM1
0046c57b  f30f58c1                  ADDSS XMM0,XMM1
0046c57f  e8cc94fcff                CALL 0x00435a50
0046c584  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
0046c58b  7620                      JBE 0x0046c5ad
0046c58d  f30f108534feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe34]
0046c595  f30f108d38feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe38]
0046c59d  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0046c5a5  f30f118fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM1
0046c5ad  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
0046c5b5  8d8d3cfeffff              LEA ECX,[EBP + 0xfffffe3c]
0046c5bb  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0046c5c3  83ec0c                    SUB ESP,0xc
0046c5c6  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
0046c5ce  f30f5915e0aaba00          MULSS XMM2,dword ptr [0x00baaae0]
0046c5d6  a17816c700                MOV EAX,[0x00c71678]
0046c5db  f30f590de0aaba00          MULSS XMM1,dword ptr [0x00baaae0]
0046c5e3  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
0046c5eb  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
0046c5f1  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0046c5f9  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
0046c5ff  f30f111c24                MOVSS dword ptr [ESP],XMM3
0046c604  51                        PUSH ECX
0046c605  8d8d2cfeffff              LEA ECX,[EBP + 0xfffffe2c]
0046c60b  f30f11953cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM2
0046c613  51                        PUSH ECX
0046c614  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0046c61a  f30f118d40feffff          MOVSS dword ptr [EBP + 0xfffffe40],XMM1
0046c622  e829693a00                CALL 0x00812f50
0046c627  f30f108d2cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe2c]
0046c62f  f30f118d28feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM1
0046c637  f30f118d3cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM1
0046c63f  f30f108d30feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe30]
0046c647  f30f118d54feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM1
0046c64f  f30f118d40feffff          MOVSS dword ptr [EBP + 0xfffffe40],XMM1
0046c657  eb2c                      JMP 0x0046c685
0046c659  f30f108540feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe40]
0046c661  8a8547feffff              MOV AL,byte ptr [EBP + 0xfffffe47]
0046c667  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
0046c66f  f30f10853cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe3c]
0046c677  f30f118528feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM0
0046c67f  88856afeffff              MOV byte ptr [EBP + 0xfffffe6a],AL
0046c685  837f282b                  CMP dword ptr [EDI + 0x28],0x2b
0046c689  0f8523010000              JNZ 0x0046c7b2
0046c68f  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0046c693  0f8519010000              JNZ 0x0046c7b2
0046c699  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0046c69f  83f807                    CMP EAX,0x7
0046c6a2  7409                      JZ 0x0046c6ad
0046c6a4  83f804                    CMP EAX,0x4
0046c6a7  0f8505010000              JNZ 0x0046c7b2
0046c6ad  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0046c6b1  0f84fb000000              JZ 0x0046c7b2
0046c6b7  6874d5b100                PUSH 0xb1d574
0046c6bc  8d4f78                    LEA ECX,[EDI + 0x78]
0046c6bf  e80ce7f9ff                CALL 0x0040add0
0046c6c4  84c0                      TEST AL,AL
0046c6c6  0f84e6000000              JZ 0x0046c7b2
0046c6cc  a17816c700                MOV EAX,[0x00c71678]
0046c6d1  f30f101d7ca9ba00          MOVSS XMM3,dword ptr [0x00baa97c]
0046c6d9  6a08                      PUSH 0x8
0046c6db  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0046c6e1  8d873c030000              LEA EAX,[EDI + 0x33c]
0046c6e7  50                        PUSH EAX
0046c6e8  8d8514feffff              LEA EAX,[EBP + 0xfffffe14]
0046c6ee  81c118120000              ADD ECX,0x1218
0046c6f4  50                        PUSH EAX
0046c6f5  e896e0faff                CALL 0x0041a790
0046c6fa  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0046c701  33c9                      XOR ECX,ECX
0046c703  8b9520feffff              MOV EDX,dword ptr [EBP + 0xfffffe20]
0046c709  898d5cfeffff              MOV dword ptr [EBP + 0xfffffe5c],ECX
0046c70f  85d2                      TEST EDX,EDX
0046c711  746d                      JZ 0x0046c780
0046c713  0f1f4000                  NOP dword ptr [EAX]
0046c717  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0046c720  8b8518feffff              MOV EAX,dword ptr [EBP + 0xfffffe18]
0046c726  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0046c729  898530feffff              MOV dword ptr [EBP + 0xfffffe30],EAX
0046c72f  8378283d                  CMP dword ptr [EAX + 0x28],0x3d
0046c733  753a                      JNZ 0x0046c76f
0046c735  83782c00                  CMP dword ptr [EAX + 0x2c],0x0
0046c739  7534                      JNZ 0x0046c76f
0046c73b  8b00                      MOV EAX,dword ptr [EAX]
0046c73d  8d4dc4                    LEA ECX,[EBP + -0x3c]
0046c740  57                        PUSH EDI
0046c741  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0046c744  e8c74bfcff                CALL 0x00431310
0046c749  6a1e                      PUSH 0x1e
0046c74b  8d45c4                    LEA EAX,[EBP + -0x3c]
0046c74e  50                        PUSH EAX
0046c74f  6a00                      PUSH 0x0
0046c751  6a00                      PUSH 0x0
0046c753  51                        PUSH ECX
0046c754  8b8d30feffff              MOV ECX,dword ptr [EBP + 0xfffffe30]
0046c75a  c704240000f041            MOV dword ptr [ESP],0x41f00000
0046c761  ffd6                      CALL ESI
0046c763  8b9520feffff              MOV EDX,dword ptr [EBP + 0xfffffe20]
0046c769  8b8d5cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe5c]
0046c76f  41                        INC ECX
0046c770  898d5cfeffff              MOV dword ptr [EBP + 0xfffffe5c],ECX
0046c776  3bca                      CMP ECX,EDX
0046c778  72a6                      JC 0x0046c720
0046c77a  8bb550feffff              MOV ESI,dword ptr [EBP + 0xfffffe50]
0046c780  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0046c787  80bd14feffff00            CMP byte ptr [EBP + 0xfffffe14],0x0
0046c78e  7522                      JNZ 0x0046c7b2
0046c790  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0046c797  b101                      MOV CL,0x1
0046c799  8b9518feffff              MOV EDX,dword ptr [EBP + 0xfffffe18]
0046c79f  6a00                      PUSH 0x0
0046c7a1  6a00                      PUSH 0x0
0046c7a3  e808815f00                CALL 0x00a648b0
0046c7a8  83c408                    ADD ESP,0x8
0046c7ab  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0046c7b2  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0046c7b8  85c0                      TEST EAX,EAX
0046c7ba  0f85b8010000              JNZ 0x0046c978
0046c7c0  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0046c7ca  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0046c7d0  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0046c7d3  83f814                    CMP EAX,0x14
0046c7d6  0f859f000000              JNZ 0x0046c87b
0046c7dc  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0046c7e0  0f85f5000000              JNZ 0x0046c8db
0046c7e6  394734                    CMP dword ptr [EDI + 0x34],EAX
0046c7e9  0f84ec000000              JZ 0x0046c8db
0046c7ef  e86c272800                CALL 0x006eef60
0046c7f4  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0046c7fc  f30f58059ca8ba00          ADDSS XMM0,dword ptr [0x00baa89c]
0046c804  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046c80a  50                        PUSH EAX
0046c80b  ff7730                    PUSH dword ptr [EDI + 0x30]
0046c80e  8d8760030000              LEA EAX,[EDI + 0x360]
0046c814  57                        PUSH EDI
0046c815  50                        PUSH EAX
0046c816  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0046c81e  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0046c824  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0046c82c  f30f58856cfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe6c]
0046c834  50                        PUSH EAX
0046c835  ff772c                    PUSH dword ptr [EDI + 0x2c]
0046c838  ff7728                    PUSH dword ptr [EDI + 0x28]
0046c83b  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
0046c843  e8d8c2fbff                CALL 0x00428b20
0046c848  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0046c850  f30f5c059ca8ba00          SUBSS XMM0,dword ptr [0x00baa89c]
0046c858  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0046c860  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0046c868  f30f5c856cfeffff          SUBSS XMM0,dword ptr [EBP + 0xfffffe6c]
0046c870  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0046c878  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0046c87b  83f82b                    CMP EAX,0x2b
0046c87e  755b                      JNZ 0x0046c8db
0046c880  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046c884  7555                      JNZ 0x0046c8db
0046c886  0f280d20c1ba00            MOVAPS XMM1,xmmword ptr [0x00bac120]
0046c88d  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0046c893  8d85dcfdffff              LEA EAX,[EBP + 0xfffffddc]
0046c899  c785fcfdffff00000000      MOV dword ptr [EBP + 0xfffffdfc],0x0
0046c8a3  c78500feffff00000000      MOV dword ptr [EBP + 0xfffffe00],0x0
0046c8ad  0f57c0                    XORPS XMM0,XMM0
0046c8b0  c78504feffff00000000      MOV dword ptr [EBP + 0xfffffe04],0x0
0046c8ba  3bc8                      CMP ECX,EAX
0046c8bc  741d                      JZ 0x0046c8db
0046c8be  8b8504feffff              MOV EAX,dword ptr [EBP + 0xfffffe04]
0046c8c4  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0046c8c8  f30f7e85fcfdffff          MOVQ XMM0,qword ptr [EBP + 0xfffffdfc]
0046c8d0  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0046c8d5  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
0046c8d8  894128                    MOV dword ptr [ECX + 0x28],EAX
0046c8db  51                        PUSH ECX
0046c8dc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046c8e2  e889bb2c00                CALL 0x00738470
0046c8e7  83f819                    CMP EAX,0x19
0046c8ea  0f8580190000              JNZ 0x0046e270
0046c8f0  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
0046c8f7  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0046c8fd  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0046c903  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
0046c90d  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
0046c917  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0046c91a  85f6                      TEST ESI,ESI
0046c91c  0f841d0f0000              JZ 0x0046d83f
0046c922  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0046c926  8bc6                      MOV EAX,ESI
0046c928  7202                      JC 0x0046c92c
0046c92a  8b06                      MOV EAX,dword ptr [ESI]
0046c92c  b9c8e0b100                MOV ECX,0xb1e0c8
0046c931  8a10                      MOV DL,byte ptr [EAX]
0046c933  3a11                      CMP DL,byte ptr [ECX]
0046c935  751a                      JNZ 0x0046c951
0046c937  84d2                      TEST DL,DL
0046c939  7412                      JZ 0x0046c94d
0046c93b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0046c93e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0046c941  750e                      JNZ 0x0046c951
0046c943  83c002                    ADD EAX,0x2
0046c946  83c102                    ADD ECX,0x2
0046c949  84d2                      TEST DL,DL
0046c94b  75e4                      JNZ 0x0046c931
0046c94d  33c0                      XOR EAX,EAX
0046c94f  eb05                      JMP 0x0046c956
0046c951  1bc0                      SBB EAX,EAX
0046c953  83c801                    OR EAX,0x1
0046c956  85c0                      TEST EAX,EAX
0046c958  0f85e10e0000              JNZ 0x0046d83f
0046c95e  384634                    CMP byte ptr [ESI + 0x34],AL
0046c961  0f8409190000              JZ 0x0046e270
0046c967  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0046c96d  0f85fd180000              JNZ 0x0046e270
0046c973  e9c70e0000                JMP 0x0046d83f
0046c978  83f803                    CMP EAX,0x3
0046c97b  0f8581040000              JNZ 0x0046ce02
0046c981  6a01                      PUSH 0x1
0046c983  68e4dcb100                PUSH 0xb1dce4
0046c988  8d4f48                    LEA ECX,[EDI + 0x48]
0046c98b  e840dcf9ff                CALL 0x0040a5d0
0046c990  84c0                      TEST AL,AL
0046c992  7425                      JZ 0x0046c9b9
0046c994  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0046c997  85c0                      TEST EAX,EAX
0046c999  741e                      JZ 0x0046c9b9
0046c99b  f30f108d6cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe6c]
0046c9a3  8d4f78                    LEA ECX,[EDI + 0x78]
0046c9a6  e855c4f9ff                CALL 0x00408e00
0046c9ab  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0046c9ae  85c0                      TEST EAX,EAX
0046c9b0  7407                      JZ 0x0046c9b9
0046c9b2  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
0046c9b9  837f282b                  CMP dword ptr [EDI + 0x28],0x2b
0046c9bd  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0046c9c7  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
0046c9d1  0f8537010000              JNZ 0x0046cb0e
0046c9d7  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0046c9db  0f852d010000              JNZ 0x0046cb0e
0046c9e1  8bcf                      MOV ECX,EDI
0046c9e3  e8581e2500                CALL 0x006be840
0046c9e8  8bf0                      MOV ESI,EAX
0046c9ea  e871252800                CALL 0x006eef60
0046c9ef  0f57c0                    XORPS XMM0,XMM0
0046c9f2  f20f2ac0                  CVTSI2SD XMM0,EAX
0046c9f6  c1e81f                    SHR EAX,0x1f
0046c9f9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046ca02  660f5ac8                  CVTPD2PS XMM1,XMM0
0046ca06  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0046ca0e  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0046ca16  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0046ca1e  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
0046ca26  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0046ca2d  f30f580d7ca8ba00          ADDSS XMM1,dword ptr [0x00baa87c]
0046ca35  0f2fc8                    COMISS XMM1,XMM0
0046ca38  7607                      JBE 0x0046ca41
0046ca3a  be01000000                MOV ESI,0x1
0046ca3f  eb10                      JMP 0x0046ca51
0046ca41  e81a252800                CALL 0x006eef60
0046ca46  0fb6f0                    MOVZX ESI,AL
0046ca49  83f6ff                    XOR ESI,0xffffffff
0046ca4c  83e601                    AND ESI,0x1
0046ca4f  03f6                      ADD ESI,ESI
0046ca51  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0046ca54  83f82b                    CMP EAX,0x2b
0046ca57  755d                      JNZ 0x0046cab6
0046ca59  39b7c40b0000              CMP dword ptr [EDI + 0xbc4],ESI
0046ca5f  7555                      JNZ 0x0046cab6
0046ca61  e8fa242800                CALL 0x006eef60
0046ca66  f30f1015e0a3ba00          MOVSS XMM2,dword ptr [0x00baa3e0]
0046ca6e  660f6ec0                  MOVD XMM0,EAX
0046ca72  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0046ca76  c1e81f                    SHR EAX,0x1f
0046ca79  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046ca82  660f5ac0                  CVTPD2PS XMM0,XMM0
0046ca86  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046ca8e  0f2fd0                    COMISS XMM2,XMM0
0046ca91  7623                      JBE 0x0046cab6
0046ca93  e8c8242800                CALL 0x006eef60
0046ca98  83e001                    AND EAX,0x1
0046ca9b  40                        INC EAX
0046ca9c  03f0                      ADD ESI,EAX
0046ca9e  b855555555                MOV EAX,0x55555555
0046caa3  f7ee                      IMUL ESI
0046caa5  2bd6                      SUB EDX,ESI
0046caa7  d1fa                      SAR EDX,0x1
0046caa9  8bca                      MOV ECX,EDX
0046caab  c1e91f                    SHR ECX,0x1f
0046caae  03ca                      ADD ECX,EDX
0046cab0  8d0431                    LEA EAX,[ECX + ESI*0x1]
0046cab3  8d3448                    LEA ESI,[EAX + ECX*0x2]
0046cab6  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0046cabc  33c0                      XOR EAX,EAX
0046cabe  81e100000010              AND ECX,0x10000000
0046cac4  0bc1                      OR EAX,ECX
0046cac6  741a                      JZ 0x0046cae2
0046cac8  a17816c700                MOV EAX,[0x00c71678]
0046cacd  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046cad3  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0046cad6  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0046cada  b800000000                MOV EAX,0x0
0046cadf  0f45f0                    CMOVNZ ESI,EAX
0046cae2  8b8550feffff              MOV EAX,dword ptr [EBP + 0xfffffe50]
0046cae8  89b7c40b0000              MOV dword ptr [EDI + 0xbc4],ESI
0046caee  83f8ff                    CMP EAX,-0x1
0046caf1  754a                      JNZ 0x0046cb3d
0046caf3  83fe02                    CMP ESI,0x2
0046caf6  7452                      JZ 0x0046cb4a
0046caf8  83fe01                    CMP ESI,0x1
0046cafb  0f842d010000              JZ 0x0046cc2e
0046cb01  85f6                      TEST ESI,ESI
0046cb03  0f84b2010000              JZ 0x0046ccbb
0046cb09  e952010000                JMP 0x0046cc60
0046cb0e  e84d242800                CALL 0x006eef60
0046cb13  33d2                      XOR EDX,EDX
0046cb15  b903000000                MOV ECX,0x3
0046cb1a  f7f1                      DIV ECX
0046cb1c  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0046cb1f  8bf2                      MOV ESI,EDX
0046cb21  83f814                    CMP EAX,0x14
0046cb24  0f852affffff              JNZ 0x0046ca54
0046cb2a  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0046cb2e  7586                      JNZ 0x0046cab6
0046cb30  83fe02                    CMP ESI,0x2
0046cb33  7581                      JNZ 0x0046cab6
0046cb35  8d71fe                    LEA ESI,[ECX + -0x2]
0046cb38  e979ffffff                JMP 0x0046cab6
0046cb3d  80bd6afeffff00            CMP byte ptr [EBP + 0xfffffe6a],0x0
0046cb44  0f84ba000000              JZ 0x0046cc04
0046cb4a  51                        PUSH ECX
0046cb4b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046cb52  6a00                      PUSH 0x0
0046cb54  6a02                      PUSH 0x2
0046cb56  51                        PUSH ECX
0046cb57  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046cb5e  8bcf                      MOV ECX,EDI
0046cb60  6a0e                      PUSH 0xe
0046cb62  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0046cb6c  e82fa02600                CALL 0x006d6ba0
0046cb71  6a01                      PUSH 0x1
0046cb73  68e4e0b100                PUSH 0xb1e0e4
0046cb78  8d4f48                    LEA ECX,[EDI + 0x48]
0046cb7b  e850daf9ff                CALL 0x0040a5d0
0046cb80  84c0                      TEST AL,AL
0046cb82  740f                      JZ 0x0046cb93
0046cb84  8d4f78                    LEA ECX,[EDI + 0x78]
0046cb87  e824d6f9ff                CALL 0x0040a1b0
0046cb8c  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0046cb93  80bd6bfeffff00            CMP byte ptr [EBP + 0xfffffe6b],0x0
0046cb9a  744a                      JZ 0x0046cbe6
0046cb9c  c7855cfeffffa9030000      MOV dword ptr [EBP + 0xfffffe5c],0x3a9
0046cba6  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0046cbac  8d8d5cfeffff              LEA ECX,[EBP + 0xfffffe5c]
0046cbb2  e8c99b4e00                CALL 0x00956780
0046cbb7  83ec08                    SUB ESP,0x8
0046cbba  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0046cbc2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046cbc9  6a00                      PUSH 0x0
0046cbcb  6a02                      PUSH 0x2
0046cbcd  51                        PUSH ECX
0046cbce  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046cbd5  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0046cbdb  ffb55cfeffff              PUSH dword ptr [EBP + 0xfffffe5c]
0046cbe1  e84a104c00                CALL 0x0092dc30
0046cbe6  837f282b                  CMP dword ptr [EDI + 0x28],0x2b
0046cbea  756e                      JNZ 0x0046cc5a
0046cbec  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0046cbf0  8b8550feffff              MOV EAX,dword ptr [EBP + 0xfffffe50]
0046cbf6  7568                      JNZ 0x0046cc60
0046cbf8  c7874c0100000000c03f      MOV dword ptr [EDI + 0x14c],0x3fc00000
0046cc02  eb5c                      JMP 0x0046cc60
0046cc04  f30f108d38feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe38]
0046cc0c  f30f108534feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe34]
0046cc14  f30f59c9                  MULSS XMM1,XMM1
0046cc18  f30f59c0                  MULSS XMM0,XMM0
0046cc1c  f30f58c1                  ADDSS XMM0,XMM1
0046cc20  e82b8efcff                CALL 0x00435a50
0046cc25  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
0046cc2c  7663                      JBE 0x0046cc91
0046cc2e  6a01                      PUSH 0x1
0046cc30  68dce0b100                PUSH 0xb1e0dc
0046cc35  8d4f48                    LEA ECX,[EDI + 0x48]
0046cc38  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0046cc42  e889d9f9ff                CALL 0x0040a5d0
0046cc47  84c0                      TEST AL,AL
0046cc49  740f                      JZ 0x0046cc5a
0046cc4b  8d4f78                    LEA ECX,[EDI + 0x78]
0046cc4e  e85dd5f9ff                CALL 0x0040a1b0
0046cc53  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0046cc5a  8b8550feffff              MOV EAX,dword ptr [EBP + 0xfffffe50]
0046cc60  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
0046cc67  0f8503160000              JNZ 0x0046e270
0046cc6d  83f8ff                    CMP EAX,-0x1
0046cc70  0f84aa000000              JZ 0x0046cd20
0046cc76  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0046cc7e  f30f109d6cfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe6c]
0046cc86  0f2fc3                    COMISS XMM0,XMM3
0046cc89  0f93c0                    SETNC AL
0046cc8c  e9b4000000                JMP 0x0046cd45
0046cc91  f30f108d48feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe48]
0046cc99  f30f10854cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe4c]
0046cca1  f30f59c0                  MULSS XMM0,XMM0
0046cca5  f30f59c9                  MULSS XMM1,XMM1
0046cca9  f30f58c1                  ADDSS XMM0,XMM1
0046ccad  e89e8dfcff                CALL 0x00435a50
0046ccb2  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
0046ccb9  769f                      JBE 0x0046cc5a
0046ccbb  51                        PUSH ECX
0046ccbc  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046ccc3  6a00                      PUSH 0x0
0046ccc5  6a02                      PUSH 0x2
0046ccc7  51                        PUSH ECX
0046ccc8  c704240000003f            MOV dword ptr [ESP],0x3f000000
0046cccf  8bcf                      MOV ECX,EDI
0046ccd1  6a0e                      PUSH 0xe
0046ccd3  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0046ccdd  e8be9e2600                CALL 0x006d6ba0
0046cce2  6a01                      PUSH 0x1
0046cce4  68e4dcb100                PUSH 0xb1dce4
0046cce9  8d4f48                    LEA ECX,[EDI + 0x48]
0046ccec  e8dfd8f9ff                CALL 0x0040a5d0
0046ccf1  84c0                      TEST AL,AL
0046ccf3  740f                      JZ 0x0046cd04
0046ccf5  8d4f78                    LEA ECX,[EDI + 0x78]
0046ccf8  e8b3d4f9ff                CALL 0x0040a1b0
0046ccfd  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0046cd04  80bd6bfeffff00            CMP byte ptr [EBP + 0xfffffe6b],0x0
0046cd0b  0f84d5feffff              JZ 0x0046cbe6
0046cd11  c7855cfeffffa8030000      MOV dword ptr [EBP + 0xfffffe5c],0x3a8
0046cd1b  e986feffff                JMP 0x0046cba6
0046cd20  8bcf                      MOV ECX,EDI
0046cd22  e8191b2500                CALL 0x006be840
0046cd27  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0046cd2f  f30f109d6cfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe6c]
0046cd37  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
0046cd3f  0f2fd9                    COMISS XMM3,XMM1
0046cd42  0f97c0                    SETA AL
0046cd45  888748010000              MOV byte ptr [EDI + 0x148],AL
0046cd4b  837f282b                  CMP dword ptr [EDI + 0x28],0x2b
0046cd4f  0f851b150000              JNZ 0x0046e270
0046cd55  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0046cd59  0f8511150000              JNZ 0x0046e270
0046cd5f  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
0046cd67  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0046cd6f  51                        PUSH ECX
0046cd70  8d4dc0                    LEA ECX,[EBP + -0x40]
0046cd73  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0046cd7a  e8716bfbff                CALL 0x004238f0
0046cd7f  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0046cd86  8bf0                      MOV ESI,EAX
0046cd88  7508                      JNZ 0x0046cd92
0046cd8a  f30f101d78aaba00          MOVSS XMM3,dword ptr [0x00baaa78]
0046cd92  f30f591d88a0ba00          MULSS XMM3,dword ptr [0x00baa088]
0046cd9a  0f28c3                    MOVAPS XMM0,XMM3
0046cd9d  f30f119d6cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM3
0046cda5  e89607fbff                CALL 0x0041d540
0046cdaa  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0046cdb2  f30f10856cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe6c]
0046cdba  e86107fbff                CALL 0x0041d520
0046cdbf  51                        PUSH ECX
0046cdc0  c7042400008040            MOV dword ptr [ESP],0x40800000
0046cdc7  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0046cdcd  56                        PUSH ESI
0046cdce  6a16                      PUSH 0x16
0046cdd0  50                        PUSH EAX
0046cdd1  8d953cfeffff              LEA EDX,[EBP + 0xfffffe3c]
0046cdd7  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
0046cddf  8bcf                      MOV ECX,EDI
0046cde1  c7853cfeffff00000000      MOV dword ptr [EBP + 0xfffffe3c],0x0
0046cdeb  c78540feffff000090c1      MOV dword ptr [EBP + 0xfffffe40],0xc1900000
0046cdf5  e896ea1900                CALL 0x0060b890
0046cdfa  83c410                    ADD ESP,0x10
0046cdfd  e96e140000                JMP 0x0046e270
0046ce02  83f808                    CMP EAX,0x8
0046ce05  0f857a030000              JNZ 0x0046d185
0046ce0b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0046ce0f  0f8461030000              JZ 0x0046d176
0046ce15  68dcd2b100                PUSH 0xb1d2dc
0046ce1a  8d4f78                    LEA ECX,[EDI + 0x78]
0046ce1d  e8aedff9ff                CALL 0x0040add0
0046ce22  84c0                      TEST AL,AL
0046ce24  0f8439030000              JZ 0x0046d163
0046ce2a  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0046ce2d  83f814                    CMP EAX,0x14
0046ce30  0f8518010000              JNZ 0x0046cf4e
0046ce36  51                        PUSH ECX
0046ce37  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046ce3e  6a00                      PUSH 0x0
0046ce40  6a02                      PUSH 0x2
0046ce42  51                        PUSH ECX
0046ce43  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046ce4a  8bcf                      MOV ECX,EDI
0046ce4c  6a10                      PUSH 0x10
0046ce4e  e84d9d2600                CALL 0x006d6ba0
0046ce53  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0046ce59  83feff                    CMP ESI,-0x1
0046ce5c  7460                      JZ 0x0046cebe
0046ce5e  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0046ce66  0f2f856cfeffff            COMISS XMM0,dword ptr [EBP + 0xfffffe6c]
0046ce6d  0f93c0                    SETNC AL
0046ce70  888748010000              MOV byte ptr [EDI + 0x148],AL
0046ce76  e8b520fdff                CALL 0x0043ef30
0046ce7b  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0046ce83  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
0046ce8b  50                        PUSH EAX
0046ce8c  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0046ce94  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0046ce9c  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
0046cea4  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
0046ceac  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0046ceb4  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
0046cebc  eb27                      JMP 0x0046cee5
0046cebe  e86d20fdff                CALL 0x0043ef30
0046cec3  8bcf                      MOV ECX,EDI
0046cec5  8bf0                      MOV ESI,EAX
0046cec7  e874192500                CALL 0x006be840
0046cecc  56                        PUSH ESI
0046cecd  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0046ced3  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
0046ced9  898d60feffff              MOV dword ptr [EBP + 0xfffffe60],ECX
0046cedf  899564feffff              MOV dword ptr [EBP + 0xfffffe64],EDX
0046cee5  51                        PUSH ECX
0046cee6  c7042400000000            MOV dword ptr [ESP],0x0
0046ceed  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0046cef3  50                        PUSH EAX
0046cef4  6a0d                      PUSH 0xd
0046cef6  8bcf                      MOV ECX,EDI
0046cef8  e8d3fe2500                CALL 0x006ccdd0
0046cefd  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0046cf05  51                        PUSH ECX
0046cf06  0f28d8                    MOVAPS XMM3,XMM0
0046cf09  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0046cf10  0f28d0                    MOVAPS XMM2,XMM0
0046cf13  8d4dc0                    LEA ECX,[EBP + -0x40]
0046cf16  0f28c8                    MOVAPS XMM1,XMM0
0046cf19  e8d269fbff                CALL 0x004238f0
0046cf1e  f30f101554a3ba00          MOVSS XMM2,dword ptr [0x00baa354]
0046cf26  8bcf                      MOV ECX,EDI
0046cf28  50                        PUSH EAX
0046cf29  8d873c030000              LEA EAX,[EDI + 0x33c]
0046cf2f  50                        PUSH EAX
0046cf30  e8fb982400                CALL 0x006b6830
0046cf35  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
0046cf3f  c780500300000000e8c1      MOV dword ptr [EAX + 0x350],0xc1e80000
0046cf49  e915020000                JMP 0x0046d163
0046cf4e  83f82b                    CMP EAX,0x2b
0046cf51  0f850c020000              JNZ 0x0046d163
0046cf57  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0046cf5b  0f859c000000              JNZ 0x0046cffd
0046cf61  c78560feffff00000000      MOV dword ptr [EBP + 0xfffffe60],0x0
0046cf6b  c78564feffff0000a0c1      MOV dword ptr [EBP + 0xfffffe64],0xc1a00000
0046cf75  83feff                    CMP ESI,-0x1
0046cf78  742f                      JZ 0x0046cfa9
0046cf7a  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
0046cf82  0f2f8d6cfeffff            COMISS XMM1,dword ptr [EBP + 0xfffffe6c]
0046cf89  0f93c0                    SETNC AL
0046cf8c  888748010000              MOV byte ptr [EDI + 0x148],AL
0046cf92  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
0046cf9a  e8c1cd0200                CALL 0x00499d60
0046cf9f  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
0046cfa7  eb1b                      JMP 0x0046cfc4
0046cfa9  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0046cfb0  740a                      JZ 0x0046cfbc
0046cfb2  f30f10856cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe6c]
0046cfba  eb08                      JMP 0x0046cfc4
0046cfbc  f30f100578aaba00          MOVSS XMM0,dword ptr [0x00baaa78]
0046cfc4  6a00                      PUSH 0x0
0046cfc6  57                        PUSH EDI
0046cfc7  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0046cfcd  50                        PUSH EAX
0046cfce  6a1e                      PUSH 0x1e
0046cfd0  51                        PUSH ECX
0046cfd1  f30f110424                MOVSS dword ptr [ESP],XMM0
0046cfd6  8d873c030000              LEA EAX,[EDI + 0x33c]
0046cfdc  50                        PUSH EAX
0046cfdd  6a01                      PUSH 0x1
0046cfdf  e82c235000                CALL 0x0096f310
0046cfe4  8bc8                      MOV ECX,EAX
0046cfe6  83c41c                    ADD ESP,0x1c
0046cfe9  8b01                      MOV EAX,dword ptr [ECX]
0046cfeb  c7815803000000803b45      MOV dword ptr [ECX + 0x358],0x453b8000
0046cff5  ff500c                    CALL dword ptr [EAX + 0xc]
0046cff8  e966010000                JMP 0x0046d163
0046cffd  83feff                    CMP ESI,-0x1
0046d000  7466                      JZ 0x0046d068
0046d002  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0046d00a  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0046d010  0f2f856cfeffff            COMISS XMM0,dword ptr [EBP + 0xfffffe6c]
0046d017  0f93c0                    SETNC AL
0046d01a  888748010000              MOV byte ptr [EDI + 0x148],AL
0046d020  e80b1ffdff                CALL 0x0043ef30
0046d025  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0046d02d  f30f59057ca9ba00          MULSS XMM0,dword ptr [0x00baa97c]
0046d035  50                        PUSH EAX
0046d036  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0046d03e  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0046d046  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
0046d04e  f30f59057ca9ba00          MULSS XMM0,dword ptr [0x00baa97c]
0046d056  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0046d05e  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
0046d066  eb2d                      JMP 0x0046d095
0046d068  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
0046d06e  e8bd1efdff                CALL 0x0043ef30
0046d073  8bcf                      MOV ECX,EDI
0046d075  8bf0                      MOV ESI,EAX
0046d077  e8c4172500                CALL 0x006be840
0046d07c  56                        PUSH ESI
0046d07d  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0046d083  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
0046d089  898d60feffff              MOV dword ptr [EBP + 0xfffffe60],ECX
0046d08f  899564feffff              MOV dword ptr [EBP + 0xfffffe64],EDX
0046d095  51                        PUSH ECX
0046d096  c7042400002041            MOV dword ptr [ESP],0x41200000
0046d09d  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0046d0a3  50                        PUSH EAX
0046d0a4  6a01                      PUSH 0x1
0046d0a6  8bcf                      MOV ECX,EDI
0046d0a8  e823fd2500                CALL 0x006ccdd0
0046d0ad  8bc8                      MOV ECX,EAX
0046d0af  6a01                      PUSH 0x1
0046d0b1  6a00                      PUSH 0x0
0046d0b3  68ff000000                PUSH 0xff
0046d0b8  f30f108118040000          MOVSS XMM0,dword ptr [ECX + 0x418]
0046d0c0  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
0046d0c8  8b813c040000              MOV EAX,dword ptr [ECX + 0x43c]
0046d0ce  8389380400000a            OR dword ptr [ECX + 0x438],0xa
0046d0d5  89813c040000              MOV dword ptr [ECX + 0x43c],EAX
0046d0db  8b01                      MOV EAX,dword ptr [ECX]
0046d0dd  f30f118118040000          MOVSS dword ptr [ECX + 0x418],XMM0
0046d0e5  f30f108114040000          MOVSS XMM0,dword ptr [ECX + 0x414]
0046d0ed  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0046d0f5  6aff                      PUSH -0x1
0046d0f7  68544ec300                PUSH 0xc34e54
0046d0fc  c78120040000cdcccc3f      MOV dword ptr [ECX + 0x420],0x3fcccccd
0046d106  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
0046d10e  f30f118114040000          MOVSS dword ptr [ECX + 0x414],XMM0
0046d116  ff503c                    CALL dword ptr [EAX + 0x3c]
0046d119  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0046d11f  8d8d5cfeffff              LEA ECX,[EBP + 0xfffffe5c]
0046d125  c7855cfeffffaa030000      MOV dword ptr [EBP + 0xfffffe5c],0x3aa
0046d12f  e84c964e00                CALL 0x00956780
0046d134  83ec08                    SUB ESP,0x8
0046d137  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0046d13f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046d146  6a00                      PUSH 0x0
0046d148  6a02                      PUSH 0x2
0046d14a  51                        PUSH ECX
0046d14b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046d152  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0046d158  ffb55cfeffff              PUSH dword ptr [EBP + 0xfffffe5c]
0046d15e  e8cd0a4c00                CALL 0x0092dc30
0046d163  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0046d167  740d                      JZ 0x0046d176
0046d169  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0046d170  0f85fa100000              JNZ 0x0046e270
0046d176  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0046d180  e9eb100000                JMP 0x0046e270
0046d185  83f804                    CMP EAX,0x4
0046d188  0f8537060000              JNZ 0x0046d7c5
0046d18e  83feff                    CMP ESI,-0x1
0046d191  0f84e7000000              JZ 0x0046d27e
0046d197  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0046d19b  7415                      JZ 0x0046d1b2
0046d19d  f30f10055ca7ba00          MOVSS XMM0,dword ptr [0x00baa75c]
0046d1a5  0f2f8788000000            COMISS XMM0,dword ptr [EDI + 0x88]
0046d1ac  0f86cc000000              JBE 0x0046d27e
0046d1b2  80bd6afeffff00            CMP byte ptr [EBP + 0xfffffe6a],0x0
0046d1b9  0f84bf000000              JZ 0x0046d27e
0046d1bf  51                        PUSH ECX
0046d1c0  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046d1c7  6a00                      PUSH 0x0
0046d1c9  6a02                      PUSH 0x2
0046d1cb  51                        PUSH ECX
0046d1cc  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046d1d3  8bcf                      MOV ECX,EDI
0046d1d5  6a0e                      PUSH 0xe
0046d1d7  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0046d1e1  e8ba992600                CALL 0x006d6ba0
0046d1e6  6a01                      PUSH 0x1
0046d1e8  68e4e0b100                PUSH 0xb1e0e4
0046d1ed  8d4f48                    LEA ECX,[EDI + 0x48]
0046d1f0  e8dbd3f9ff                CALL 0x0040a5d0
0046d1f5  84c0                      TEST AL,AL
0046d1f7  740f                      JZ 0x0046d208
0046d1f9  8d4f78                    LEA ECX,[EDI + 0x78]
0046d1fc  e8afcff9ff                CALL 0x0040a1b0
0046d201  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0046d208  80bd6bfeffff00            CMP byte ptr [EBP + 0xfffffe6b],0x0
0046d20f  744a                      JZ 0x0046d25b
0046d211  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0046d217  8d8d5cfeffff              LEA ECX,[EBP + 0xfffffe5c]
0046d21d  c7855cfeffffa9030000      MOV dword ptr [EBP + 0xfffffe5c],0x3a9
0046d227  e854954e00                CALL 0x00956780
0046d22c  83ec08                    SUB ESP,0x8
0046d22f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0046d237  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046d23e  6a00                      PUSH 0x0
0046d240  6a02                      PUSH 0x2
0046d242  51                        PUSH ECX
0046d243  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046d24a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0046d250  ffb55cfeffff              PUSH dword ptr [EBP + 0xfffffe5c]
0046d256  e8d5094c00                CALL 0x0092dc30
0046d25b  837f282b                  CMP dword ptr [EDI + 0x28],0x2b
0046d25f  0f850b100000              JNZ 0x0046e270
0046d265  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0046d269  0f8501100000              JNZ 0x0046e270
0046d26f  c7874c0100000000c03f      MOV dword ptr [EDI + 0x14c],0x3fc00000
0046d279  e9f20f0000                JMP 0x0046e270
0046d27e  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0046d286  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0046d28d  9f                        LAHF
0046d28e  f6c444                    TEST AH,0x44
0046d291  0f8abe000000              JP 0x0046d355
0046d297  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0046d29f  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0046d2a6  9f                        LAHF
0046d2a7  f6c444                    TEST AH,0x44
0046d2aa  0f8aa5000000              JP 0x0046d355
0046d2b0  a17816c700                MOV EAX,[0x00c71678]
0046d2b5  ffb540feffff              PUSH dword ptr [EBP + 0xfffffe40]
0046d2bb  ffb53cfeffff              PUSH dword ptr [EBP + 0xfffffe3c]
0046d2c1  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046d2c7  8bc8                      MOV ECX,EAX
0046d2c9  89855cfeffff              MOV dword ptr [EBP + 0xfffffe5c],EAX
0046d2cf  e8ac343800                CALL 0x007f0780
0046d2d4  85c0                      TEST EAX,EAX
0046d2d6  7558                      JNZ 0x0046d330
0046d2d8  8b8d5cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe5c]
0046d2de  8d853cfeffff              LEA EAX,[EBP + 0xfffffe3c]
0046d2e4  50                        PUSH EAX
0046d2e5  e8a6593a00                CALL 0x00812c90
0046d2ea  8b8d5cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe5c]
0046d2f0  99                        CDQ
0046d2f1  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
0046d2f9  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
0046d2fc  f7f9                      IDIV ECX
0046d2fe  660f6ed2                  MOVD XMM2,EDX
0046d302  660f6ec8                  MOVD XMM1,EAX
0046d306  0f5bd2                    CVTDQ2PS XMM2,XMM2
0046d309  0f5bc9                    CVTDQ2PS XMM1,XMM1
0046d30c  f30f59d0                  MULSS XMM2,XMM0
0046d310  f30f59c8                  MULSS XMM1,XMM0
0046d314  f30f58d0                  ADDSS XMM2,XMM0
0046d318  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
0046d320  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
0046d328  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
0046d330  83feff                    CMP ESI,-0x1
0046d333  7420                      JZ 0x0046d355
0046d335  f30f108528feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe28]
0046d33d  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0046d345  f30f108554feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe54]
0046d34d  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0046d355  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0046d35d  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0046d364  9f                        LAHF
0046d365  f6c444                    TEST AH,0x44
0046d368  7a32                      JP 0x0046d39c
0046d36a  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0046d372  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0046d379  9f                        LAHF
0046d37a  f6c444                    TEST AH,0x44
0046d37d  7a1d                      JP 0x0046d39c
0046d37f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0046d387  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0046d38f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0046d397  e9d40e0000                JMP 0x0046e270
0046d39c  8d7748                    LEA ESI,[EDI + 0x48]
0046d39f  6860d5b100                PUSH 0xb1d560
0046d3a4  8bce                      MOV ECX,ESI
0046d3a6  e8e5dcf9ff                CALL 0x0040b090
0046d3ab  6874d5b100                PUSH 0xb1d574
0046d3b0  8bce                      MOV ECX,ESI
0046d3b2  888569feffff              MOV byte ptr [EBP + 0xfffffe69],AL
0046d3b8  e8d3dcf9ff                CALL 0x0040b090
0046d3bd  80bd69feffff00            CMP byte ptr [EBP + 0xfffffe69],0x0
0046d3c4  888547feffff              MOV byte ptr [EBP + 0xfffffe47],AL
0046d3ca  740d                      JZ 0x0046d3d9
0046d3cc  84c0                      TEST AL,AL
0046d3ce  7509                      JNZ 0x0046d3d9
0046d3d0  b903000000                MOV ECX,0x3
0046d3d5  33d2                      XOR EDX,EDX
0046d3d7  eb0a                      JMP 0x0046d3e3
0046d3d9  b905000000                MOV ECX,0x5
0046d3de  ba04000000                MOV EDX,0x4
0046d3e3  899788010000              MOV dword ptr [EDI + 0x188],EDX
0046d3e9  898f84010000              MOV dword ptr [EDI + 0x184],ECX
0046d3ef  8bce                      MOV ECX,ESI
0046d3f1  6874d5b100                PUSH 0xb1d574
0046d3f6  e835dcf9ff                CALL 0x0040b030
0046d3fb  84c0                      TEST AL,AL
0046d3fd  0f84af000000              JZ 0x0046d4b2
0046d403  51                        PUSH ECX
0046d404  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046d40b  6a00                      PUSH 0x0
0046d40d  6a02                      PUSH 0x2
0046d40f  51                        PUSH ECX
0046d410  c704240000003f            MOV dword ptr [ESP],0x3f000000
0046d417  8bcf                      MOV ECX,EDI
0046d419  6a30                      PUSH 0x30
0046d41b  e880972600                CALL 0x006d6ba0
0046d420  e83b1b2800                CALL 0x006eef60
0046d425  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046d42b  50                        PUSH EAX
0046d42c  6a02                      PUSH 0x2
0046d42e  57                        PUSH EDI
0046d42f  6840b6c700                PUSH 0xc7b640
0046d434  8d873c030000              LEA EAX,[EDI + 0x33c]
0046d43a  50                        PUSH EAX
0046d43b  6a10                      PUSH 0x10
0046d43d  68e8030000                PUSH 0x3e8
0046d442  e8d9b6fbff                CALL 0x00428b20
0046d447  8bf0                      MOV ESI,EAX
0046d449  e8121b2800                CALL 0x006eef60
0046d44e  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
0046d456  f6d0                      NOT AL
0046d458  51                        PUSH ECX
0046d459  2401                      AND AL,0x1
0046d45b  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
0046d465  0f28d8                    MOVAPS XMM3,XMM0
0046d468  888648010000              MOV byte ptr [ESI + 0x148],AL
0046d46e  0f28d0                    MOVAPS XMM2,XMM0
0046d471  c786e000000000007041      MOV dword ptr [ESI + 0xe0],0x41700000
0046d47b  0f28c8                    MOVAPS XMM1,XMM0
0046d47e  c704243333333f            MOV dword ptr [ESP],0x3f333333
0046d485  8d4dc0                    LEA ECX,[EBP + -0x40]
0046d488  e86364fbff                CALL 0x004238f0
0046d48d  8b16                      MOV EDX,dword ptr [ESI]
0046d48f  8bce                      MOV ECX,ESI
0046d491  6a01                      PUSH 0x1
0046d493  6a00                      PUSH 0x0
0046d495  68ff000000                PUSH 0xff
0046d49a  6aff                      PUSH -0x1
0046d49c  50                        PUSH EAX
0046d49d  ff523c                    CALL dword ptr [EDX + 0x3c]
0046d4a0  57                        PUSH EDI
0046d4a1  8bce                      MOV ECX,ESI
0046d4a3  e80890feff                CALL 0x004564b0
0046d4a8  8b06                      MOV EAX,dword ptr [ESI]
0046d4aa  8bce                      MOV ECX,ESI
0046d4ac  ff500c                    CALL dword ptr [EAX + 0xc]
0046d4af  8d7748                    LEA ESI,[EDI + 0x48]
0046d4b2  80bd47feffff00            CMP byte ptr [EBP + 0xfffffe47],0x0
0046d4b9  0f85da010000              JNZ 0x0046d699
0046d4bf  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
0046d4c7  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0046d4cf  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
0046d4d7  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0046d4df  0f28c1                    MOVAPS XMM0,XMM1
0046d4e2  f30f118d5cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM1
0046d4ea  f30f59c1                  MULSS XMM0,XMM1
0046d4ee  0f28ca                    MOVAPS XMM1,XMM2
0046d4f1  f30f119554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM2
0046d4f9  f30f59ca                  MULSS XMM1,XMM2
0046d4fd  f30f58c1                  ADDSS XMM0,XMM1
0046d501  e84a85fcff                CALL 0x00435a50
0046d506  83bd50feffffff            CMP dword ptr [EBP + 0xfffffe50],-0x1
0046d50d  0f28d8                    MOVAPS XMM3,XMM0
0046d510  f30f119d30feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM3
0046d518  0f84ae000000              JZ 0x0046d5cc
0046d51e  80bd69feffff00            CMP byte ptr [EBP + 0xfffffe69],0x0
0046d525  0f84a1000000              JZ 0x0046d5cc
0046d52b  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0046d531  50                        PUSH EAX
0046d532  8d8f60030000              LEA ECX,[EDI + 0x360]
0046d538  e8f32a5a00                CALL 0x00a10030
0046d53d  f30f108d4cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe4c]
0046d545  f30f109d48feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe48]
0046d54d  0f28e1                    MOVAPS XMM4,XMM1
0046d550  0f28c3                    MOVAPS XMM0,XMM3
0046d553  f30f5900                  MULSS XMM0,dword ptr [EAX]
0046d557  f30f596004                MULSS XMM4,dword ptr [EAX + 0x4]
0046d55c  f30f58e0                  ADDSS XMM4,XMM0
0046d560  f30f10856cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe6c]
0046d568  0f2fc4                    COMISS XMM0,XMM4
0046d56b  7604                      JBE 0x0046d571
0046d56d  f30f59e0                  MULSS XMM4,XMM0
0046d571  0f28d4                    MOVAPS XMM2,XMM4
0046d574  8d8f60030000              LEA ECX,[EDI + 0x360]
0046d57a  f30f59d4                  MULSS XMM2,XMM4
0046d57e  6840b6c700                PUSH 0xc7b640
0046d583  f30f59d4                  MULSS XMM2,XMM4
0046d587  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0046d58e  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
0046d596  f30f581580a2ba00          ADDSS XMM2,dword ptr [0x00baa280]
0046d59e  e85d305a00                CALL 0x00a10600
0046d5a3  84c0                      TEST AL,AL
0046d5a5  7408                      JZ 0x0046d5af
0046d5a7  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0046d5af  0f28e2                    MOVAPS XMM4,XMM2
0046d5b2  f30f59d1                  MULSS XMM2,XMM1
0046d5b6  f30f59e3                  MULSS XMM4,XMM3
0046d5ba  f30f109d30feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe30]
0046d5c2  f30f59d3                  MULSS XMM2,XMM3
0046d5c6  f30f59e3                  MULSS XMM4,XMM3
0046d5ca  eb10                      JMP 0x0046d5dc
0046d5cc  f30f10a554feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe54]
0046d5d4  f30f10955cfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe5c]
0046d5dc  f30f108d6cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe6c]
0046d5e4  0f2ed9                    UCOMISS XMM3,XMM1
0046d5e7  9f                        LAHF
0046d5e8  f6c444                    TEST AH,0x44
0046d5eb  7a08                      JP 0x0046d5f5
0046d5ed  f30f101d20a0ba00          MOVSS XMM3,dword ptr [0x00baa020]
0046d5f5  837f282b                  CMP dword ptr [EDI + 0x28],0x2b
0046d5f9  f30f1005b0a4ba00          MOVSS XMM0,dword ptr [0x00baa4b0]
0046d601  f30f5ec3                  DIVSS XMM0,XMM3
0046d605  750e                      JNZ 0x0046d615
0046d607  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0046d60b  7508                      JNZ 0x0046d615
0046d60d  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
0046d615  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0046d61d  0f2ed9                    UCOMISS XMM3,XMM1
0046d620  f30f59e0                  MULSS XMM4,XMM0
0046d624  9f                        LAHF
0046d625  f30f59d0                  MULSS XMM2,XMM0
0046d629  f6c444                    TEST AH,0x44
0046d62c  7b42                      JNP 0x0046d670
0046d62e  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0046d636  f30f59e0                  MULSS XMM4,XMM0
0046d63a  f30f59d0                  MULSS XMM2,XMM0
0046d63e  f30f5ee3                  DIVSS XMM4,XMM3
0046d642  f30f5ed3                  DIVSS XMM2,XMM3
0046d646  f30f58a760030000          ADDSS XMM4,dword ptr [EDI + 0x360]
0046d64e  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0046d656  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
0046d65e  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0046d666  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0046d66e  eb08                      JMP 0x0046d678
0046d670  f30f10a760030000          MOVSS XMM4,dword ptr [EDI + 0x360]
0046d678  f30f591de0a3ba00          MULSS XMM3,dword ptr [0x00baa3e0]
0046d680  0f2fe1                    COMISS XMM4,XMM1
0046d683  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
0046d68b  0f97c0                    SETA AL
0046d68e  888748010000              MOV byte ptr [EDI + 0x148],AL
0046d694  e9d70b0000                JMP 0x0046e270
0046d699  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0046d69d  740d                      JZ 0x0046d6ac
0046d69f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0046d6a6  0f85d3fcffff              JNZ 0x0046d37f
0046d6ac  83bd50feffffff            CMP dword ptr [EBP + 0xfffffe50],-0x1
0046d6b3  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0046d6bb  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0046d6c3  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046d6cb  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0046d6d3  7522                      JNZ 0x0046d6f7
0046d6d5  e886182800                CALL 0x006eef60
0046d6da  a801                      TEST AL,0x1
0046d6dc  7550                      JNZ 0x0046d72e
0046d6de  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
0046d6e8  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0046d6f2  e9790b0000                JMP 0x0046e270
0046d6f7  f30f108d48feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe48]
0046d6ff  f30f10854cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe4c]
0046d707  f30f59c0                  MULSS XMM0,XMM0
0046d70b  f30f59c9                  MULSS XMM1,XMM1
0046d70f  f30f58c1                  ADDSS XMM0,XMM1
0046d713  e83883fcff                CALL 0x00435a50
0046d718  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
0046d720  0f2fc8                    COMISS XMM1,XMM0
0046d723  77b9                      JA 0x0046d6de
0046d725  80bd6afeffff00            CMP byte ptr [EBP + 0xfffffe6a],0x0
0046d72c  75b0                      JNZ 0x0046d6de
0046d72e  51                        PUSH ECX
0046d72f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046d736  6a00                      PUSH 0x0
0046d738  6a02                      PUSH 0x2
0046d73a  51                        PUSH ECX
0046d73b  c70424cdcccc3e            MOV dword ptr [ESP],0x3ecccccd
0046d742  8bcf                      MOV ECX,EDI
0046d744  6a0e                      PUSH 0xe
0046d746  e855942600                CALL 0x006d6ba0
0046d74b  6a01                      PUSH 0x1
0046d74d  68e4dcb100                PUSH 0xb1dce4
0046d752  8bce                      MOV ECX,ESI
0046d754  e877cef9ff                CALL 0x0040a5d0
0046d759  84c0                      TEST AL,AL
0046d75b  740c                      JZ 0x0046d769
0046d75d  8d4e30                    LEA ECX,[ESI + 0x30]
0046d760  e84bcaf9ff                CALL 0x0040a1b0
0046d765  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0046d769  80bd6bfeffff00            CMP byte ptr [EBP + 0xfffffe6b],0x0
0046d770  0f84fa0a0000              JZ 0x0046e270
0046d776  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0046d77c  8d8d5cfeffff              LEA ECX,[EBP + 0xfffffe5c]
0046d782  c7855cfeffffa8030000      MOV dword ptr [EBP + 0xfffffe5c],0x3a8
0046d78c  e8ef8f4e00                CALL 0x00956780
0046d791  83ec08                    SUB ESP,0x8
0046d794  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0046d79c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046d7a3  6a00                      PUSH 0x0
0046d7a5  6a02                      PUSH 0x2
0046d7a7  51                        PUSH ECX
0046d7a8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046d7af  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0046d7b5  ffb55cfeffff              PUSH dword ptr [EBP + 0xfffffe5c]
0046d7bb  e870044c00                CALL 0x0092dc30
0046d7c0  e9ab0a0000                JMP 0x0046e270
0046d7c5  83f806                    CMP EAX,0x6
0046d7c8  0f859c000000              JNZ 0x0046d86a
0046d7ce  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0046d7d8  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
0046d7e2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0046d7e6  0f84840a0000              JZ 0x0046e270
0046d7ec  6860d5b100                PUSH 0xb1d560
0046d7f1  8d4f78                    LEA ECX,[EDI + 0x78]
0046d7f4  e877d6f9ff                CALL 0x0040ae70
0046d7f9  84c0                      TEST AL,AL
0046d7fb  0f846f0a0000              JZ 0x0046e270
0046d801  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0046d80b  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0046d815  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
0046d81f  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0046d827  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0046d82f  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046d837  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0046d83f  6a01                      PUSH 0x1
0046d841  68c8e0b100                PUSH 0xb1e0c8
0046d846  8d4f48                    LEA ECX,[EDI + 0x48]
0046d849  e882cdf9ff                CALL 0x0040a5d0
0046d84e  84c0                      TEST AL,AL
0046d850  0f841a0a0000              JZ 0x0046e270
0046d856  8d4f78                    LEA ECX,[EDI + 0x78]
0046d859  e852c9f9ff                CALL 0x0040a1b0
0046d85e  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0046d865  e9060a0000                JMP 0x0046e270
0046d86a  83f807                    CMP EAX,0x7
0046d86d  0f85fd090000              JNZ 0x0046e270
0046d873  8db734030000              LEA ESI,[EDI + 0x334]
0046d879  6840b6c700                PUSH 0xc7b640
0046d87e  8bce                      MOV ECX,ESI
0046d880  e87b2d5a00                CALL 0x00a10600
0046d885  84c0                      TEST AL,AL
0046d887  0f8453010000              JZ 0x0046d9e0
0046d88d  83bfc00b000002            CMP dword ptr [EDI + 0xbc0],0x2
0046d894  f30f108528feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe28]
0046d89c  f30f11853cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM0
0046d8a4  f30f108554feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe54]
0046d8ac  f30f118540feffff          MOVSS dword ptr [EBP + 0xfffffe40],XMM0
0046d8b4  0f8590000000              JNZ 0x0046d94a
0046d8ba  8bcf                      MOV ECX,EDI
0046d8bc  e87f0f2500                CALL 0x006be840
0046d8c1  8bf0                      MOV ESI,EAX
0046d8c3  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
0046d8c9  50                        PUSH EAX
0046d8ca  8b8e60030000              MOV ECX,dword ptr [ESI + 0x360]
0046d8d0  8b9664030000              MOV EDX,dword ptr [ESI + 0x364]
0046d8d6  898d2cfeffff              MOV dword ptr [EBP + 0xfffffe2c],ECX
0046d8dc  8d8d2cfeffff              LEA ECX,[EBP + 0xfffffe2c]
0046d8e2  899530feffff              MOV dword ptr [EBP + 0xfffffe30],EDX
0046d8e8  e843275a00                CALL 0x00a10030
0046d8ed  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
0046d8f5  8db734030000              LEA ESI,[EDI + 0x334]
0046d8fb  f30f588770030000          ADDSS XMM0,dword ptr [EDI + 0x370]
0046d903  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0046d907  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0046d90c  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0046d913  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
0046d91b  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0046d922  f30f59d0                  MULSS XMM2,XMM0
0046d926  f30f59c8                  MULSS XMM1,XMM0
0046d92a  f30f589528feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffe28]
0046d932  f30f588d54feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffe54]
0046d93a  f30f11953cfeffff          MOVSS dword ptr [EBP + 0xfffffe3c],XMM2
0046d942  f30f118d40feffff          MOVSS dword ptr [EBP + 0xfffffe40],XMM1
0046d94a  a17816c700                MOV EAX,[0x00c71678]
0046d94f  ffb540feffff              PUSH dword ptr [EBP + 0xfffffe40]
0046d955  ffb53cfeffff              PUSH dword ptr [EBP + 0xfffffe3c]
0046d95b  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0046d961  8bc8                      MOV ECX,EAX
0046d963  89855cfeffff              MOV dword ptr [EBP + 0xfffffe5c],EAX
0046d969  e8122e3800                CALL 0x007f0780
0046d96e  85c0                      TEST EAX,EAX
0046d970  756e                      JNZ 0x0046d9e0
0046d972  8b8d5cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe5c]
0046d978  8d853cfeffff              LEA EAX,[EBP + 0xfffffe3c]
0046d97e  50                        PUSH EAX
0046d97f  e80c533a00                CALL 0x00812c90
0046d984  8b8d5cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe5c]
0046d98a  99                        CDQ
0046d98b  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
0046d993  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
0046d996  f7f9                      IDIV ECX
0046d998  660f6ed2                  MOVD XMM2,EDX
0046d99c  660f6ec8                  MOVD XMM1,EAX
0046d9a0  0f5bd2                    CVTDQ2PS XMM2,XMM2
0046d9a3  0f5bc9                    CVTDQ2PS XMM1,XMM1
0046d9a6  f30f59d0                  MULSS XMM2,XMM0
0046d9aa  f30f59c8                  MULSS XMM1,XMM0
0046d9ae  f30f58d0                  ADDSS XMM2,XMM0
0046d9b2  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
0046d9ba  f30f1116                  MOVSS dword ptr [ESI],XMM2
0046d9be  f30f114e04                MOVSS dword ptr [ESI + 0x4],XMM1
0046d9c3  83bfc00b000002            CMP dword ptr [EDI + 0xbc0],0x2
0046d9ca  7514                      JNZ 0x0046d9e0
0046d9cc  f30f11973c030000          MOVSS dword ptr [EDI + 0x33c],XMM2
0046d9d4  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
0046d9da  898740030000              MOV dword ptr [EDI + 0x340],EAX
0046d9e0  8d4f48                    LEA ECX,[EDI + 0x48]
0046d9e3  6874d5b100                PUSH 0xb1d574
0046d9e8  e8a3d6f9ff                CALL 0x0040b090
0046d9ed  6840b6c700                PUSH 0xc7b640
0046d9f2  8bce                      MOV ECX,ESI
0046d9f4  888569feffff              MOV byte ptr [EBP + 0xfffffe69],AL
0046d9fa  e8312c5a00                CALL 0x00a10630
0046d9ff  84c0                      TEST AL,AL
0046da01  0f84dd010000              JZ 0x0046dbe4
0046da07  80bd69feffff00            CMP byte ptr [EBP + 0xfffffe69],0x0
0046da0e  0f85d0010000              JNZ 0x0046dbe4
0046da14  83bd50feffffff            CMP dword ptr [EBP + 0xfffffe50],-0x1
0046da1b  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0046da25  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0046da2f  0f84d1000000              JZ 0x0046db06
0046da35  8d8d3cfeffff              LEA ECX,[EBP + 0xfffffe3c]
0046da3b  51                        PUSH ECX
0046da3c  8d8f60030000              LEA ECX,[EDI + 0x360]
0046da42  e8e9255a00                CALL 0x00a10030
0046da47  f30f10854cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe4c]
0046da4f  8d8f60030000              LEA ECX,[EDI + 0x360]
0046da55  f30f108d48feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe48]
0046da5d  6840b6c700                PUSH 0xc7b640
0046da62  f30f594004                MULSS XMM0,dword ptr [EAX + 0x4]
0046da67  f30f5908                  MULSS XMM1,dword ptr [EAX]
0046da6b  f30f58c1                  ADDSS XMM0,XMM1
0046da6f  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0046da76  f30f5905aca4ba00          MULSS XMM0,dword ptr [0x00baa4ac]
0046da7e  f30f580520a1ba00          ADDSS XMM0,dword ptr [0x00baa120]
0046da86  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
0046da8e  e86d2b5a00                CALL 0x00a10600
0046da93  84c0                      TEST AL,AL
0046da95  7410                      JZ 0x0046daa7
0046da97  f30f1005cca4ba00          MOVSS XMM0,dword ptr [0x00baa4cc]
0046da9f  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
0046daa7  8d853cfeffff              LEA EAX,[EBP + 0xfffffe3c]
0046daad  50                        PUSH EAX
0046daae  8d8d60feffff              LEA ECX,[EBP + 0xfffffe60]
0046dab4  e877255a00                CALL 0x00a10030
0046dab9  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0046dac1  0f2ea56cfeffff            UCOMISS XMM4,dword ptr [EBP + 0xfffffe6c]
0046dac8  f30f10954cfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe4c]
0046dad0  0f28da                    MOVAPS XMM3,XMM2
0046dad3  f30f595004                MULSS XMM2,dword ptr [EAX + 0x4]
0046dad8  f30f5918                  MULSS XMM3,dword ptr [EAX]
0046dadc  9f                        LAHF
0046dadd  f6c444                    TEST AH,0x44
0046dae0  0f8b16010000              JNP 0x0046dbfc
0046dae6  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0046daee  0f28c1                    MOVAPS XMM0,XMM1
0046daf1  f30f59ca                  MULSS XMM1,XMM2
0046daf5  f30f59c3                  MULSS XMM0,XMM3
0046daf9  f30f5ecc                  DIVSS XMM1,XMM4
0046dafd  f30f5ec4                  DIVSS XMM0,XMM4
0046db01  e9bc000000                JMP 0x0046dbc2
0046db06  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0046db0a  8d853cfeffff              LEA EAX,[EBP + 0xfffffe3c]
0046db10  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
0046db15  8d8d60feffff              LEA ECX,[EBP + 0xfffffe60]
0046db1b  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0046db23  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0046db2b  50                        PUSH EAX
0046db2c  f30f118530feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM0
0046db34  f30f118d5cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM1
0046db3c  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
0046db44  f30f118d64feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM1
0046db4c  e8df245a00                CALL 0x00a10030
0046db51  f30f109d30feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe30]
0046db59  f30f591d58a0ba00          MULSS XMM3,dword ptr [0x00baa058]
0046db61  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0046db65  f30f5915f8a1ba00          MULSS XMM2,dword ptr [0x00baa1f8]
0046db6d  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0046db72  f30f10a55cfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe5c]
0046db7a  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
0046db82  f30f58da                  ADDSS XMM3,XMM2
0046db86  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
0046db8e  0f2e956cfeffff            UCOMISS XMM2,dword ptr [EBP + 0xfffffe6c]
0046db95  f30f592558a0ba00          MULSS XMM4,dword ptr [0x00baa058]
0046db9d  9f                        LAHF
0046db9e  f30f58e1                  ADDSS XMM4,XMM1
0046dba2  f6c444                    TEST AH,0x44
0046dba5  7b55                      JNP 0x0046dbfc
0046dba7  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0046dbaf  0f28c1                    MOVAPS XMM0,XMM1
0046dbb2  f30f59cc                  MULSS XMM1,XMM4
0046dbb6  f30f59c3                  MULSS XMM0,XMM3
0046dbba  f30f5eca                  DIVSS XMM1,XMM2
0046dbbe  f30f5ec2                  DIVSS XMM0,XMM2
0046dbc2  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0046dbca  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0046dbd2  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0046dbda  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0046dbe2  eb18                      JMP 0x0046dbfc
0046dbe4  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0046dbec  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0046dbf4  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0046dbfc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0046dc00  0f84f6050000              JZ 0x0046e1fc
0046dc06  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0046dc0d  0f84e9050000              JZ 0x0046e1fc
0046dc13  80bd69feffff00            CMP byte ptr [EBP + 0xfffffe69],0x0
0046dc1a  0f8450060000              JZ 0x0046e270
0046dc20  6874d5b100                PUSH 0xb1d574
0046dc25  8d4f48                    LEA ECX,[EDI + 0x48]
0046dc28  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0046dc32  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
0046dc3c  e8efd3f9ff                CALL 0x0040b030
0046dc41  84c0                      TEST AL,AL
0046dc43  0f84e7000000              JZ 0x0046dd30
0046dc49  51                        PUSH ECX
0046dc4a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046dc51  6a00                      PUSH 0x0
0046dc53  6a02                      PUSH 0x2
0046dc55  51                        PUSH ECX
0046dc56  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046dc5d  8bcf                      MOV ECX,EDI
0046dc5f  6a30                      PUSH 0x30
0046dc61  e83a8f2600                CALL 0x006d6ba0
0046dc66  8d8d08feffff              LEA ECX,[EBP + 0xfffffe08]
0046dc6c  e8ff88feff                CALL 0x00456570
0046dc71  a17816c700                MOV EAX,[0x00c71678]
0046dc76  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0046dc7e  f30f118508feffff          MOVSS dword ptr [EBP + 0xfffffe08],XMM0
0046dc86  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0046dc8e  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0046dc94  c78520feffff0a000000      MOV dword ptr [EBP + 0xfffffe20],0xa
0046dc9e  c78518feffffcdcccc3c      MOV dword ptr [EBP + 0xfffffe18],0x3ccccccd
0046dca8  c78514feffff295c0f3d      MOV dword ptr [EBP + 0xfffffe14],0x3d0f5c29
0046dcb2  ff81fc700000              INC dword ptr [ECX + 0x70fc]
0046dcb8  8b81fc700000              MOV EAX,dword ptr [ECX + 0x70fc]
0046dcbe  f30f11850cfeffff          MOVSS dword ptr [EBP + 0xfffffe0c],XMM0
0046dcc6  2501000080                AND EAX,0x80000001
0046dccb  7905                      JNS 0x0046dcd2
0046dccd  48                        DEC EAX
0046dcce  83c8fe                    OR EAX,0xfffffffe
0046dcd1  40                        INC EAX
0046dcd2  8d9508feffff              LEA EDX,[EBP + 0xfffffe08]
0046dcd8  52                        PUSH EDX
0046dcd9  50                        PUSH EAX
0046dcda  e831023b00                CALL 0x0081df10
0046dcdf  8d4dc0                    LEA ECX,[EBP + -0x40]
0046dce2  e88994f9ff                CALL 0x00407170
0046dce7  837f282b                  CMP dword ptr [EDI + 0x28],0x2b
0046dceb  751e                      JNZ 0x0046dd0b
0046dced  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0046dcf1  7518                      JNZ 0x0046dd0b
0046dcf3  0f2805c0c9ba00            MOVAPS XMM0,xmmword ptr [0x00bac9c0]
0046dcfa  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0046dcfe  0f280500c1ba00            MOVAPS XMM0,xmmword ptr [0x00bac100]
0046dd05  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0046dd09  eb0b                      JMP 0x0046dd16
0046dd0b  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0046dd12  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0046dd16  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0046dd1e  8d45c0                    LEA EAX,[EBP + -0x40]
0046dd21  50                        PUSH EAX
0046dd22  8d873c030000              LEA EAX,[EDI + 0x33c]
0046dd28  8bcf                      MOV ECX,EDI
0046dd2a  50                        PUSH EAX
0046dd2b  e890892400                CALL 0x006b66c0
0046dd30  68dcd2b100                PUSH 0xb1d2dc
0046dd35  8d4f48                    LEA ECX,[EDI + 0x48]
0046dd38  e8f3d2f9ff                CALL 0x0040b030
0046dd3d  84c0                      TEST AL,AL
0046dd3f  0f842b050000              JZ 0x0046e270
0046dd45  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0046dd48  83f814                    CMP EAX,0x14
0046dd4b  7527                      JNZ 0x0046dd74
0046dd4d  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
0046dd53  e8d811fdff                CALL 0x0043ef30
0046dd58  50                        PUSH EAX
0046dd59  51                        PUSH ECX
0046dd5a  c7042400000000            MOV dword ptr [ESP],0x0
0046dd61  8bcf                      MOV ECX,EDI
0046dd63  6840b6c700                PUSH 0xc7b640
0046dd68  6a12                      PUSH 0x12
0046dd6a  e861f02500                CALL 0x006ccdd0
0046dd6f  e9fc040000                JMP 0x0046e270
0046dd74  83f82b                    CMP EAX,0x2b
0046dd77  0f85f3040000              JNZ 0x0046e270
0046dd7d  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0046dd83  85c0                      TEST EAX,EAX
0046dd85  0f8528010000              JNZ 0x0046deb3
0046dd8b  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0046dd8e  83f801                    CMP EAX,0x1
0046dd91  0f85c8000000              JNZ 0x0046de5f
0046dd97  e8c4112800                CALL 0x006eef60
0046dd9c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046dda2  6a00                      PUSH 0x0
0046dda4  68acd5c500                PUSH 0xc5d5ac
0046dda9  68dcd5c500                PUSH 0xc5d5dc
0046ddae  6a00                      PUSH 0x0
0046ddb0  50                        PUSH EAX
0046ddb1  6a00                      PUSH 0x0
0046ddb3  57                        PUSH EDI
0046ddb4  6840b6c700                PUSH 0xc7b640
0046ddb9  8d873c030000              LEA EAX,[EDI + 0x33c]
0046ddbf  50                        PUSH EAX
0046ddc0  6a1a                      PUSH 0x1a
0046ddc2  68e8030000                PUSH 0x3e8
0046ddc7  e854adfbff                CALL 0x00428b20
0046ddcc  50                        PUSH EAX
0046ddcd  e8df2a6800                CALL 0x00af08b1
0046ddd2  8bf0                      MOV ESI,EAX
0046ddd4  83c414                    ADD ESP,0x14
0046ddd7  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0046dddd  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0046dde3  85c9                      TEST ECX,ECX
0046dde5  741e                      JZ 0x0046de05
0046dde7  898530feffff              MOV dword ptr [EBP + 0xfffffe30],EAX
0046dded  81c1cc030000              ADD ECX,0x3cc
0046ddf3  8d8530feffff              LEA EAX,[EBP + 0xfffffe30]
0046ddf9  50                        PUSH EAX
0046ddfa  e811140600                CALL 0x004cf210
0046ddff  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0046de05  50                        PUSH EAX
0046de06  8bcf                      MOV ECX,EDI
0046de08  8938                      MOV dword ptr [EAX],EDI
0046de0a  e8e1fe0500                CALL 0x004cdcf0
0046de0f  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
0046de17  8bce                      MOV ECX,ESI
0046de19  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
0046de21  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
0046de29  8b06                      MOV EAX,dword ptr [ESI]
0046de2b  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
0046de33  c7865c04000000000000      MOV dword ptr [ESI + 0x45c],0x0
0046de3d  f30f1196e4000000          MOVSS dword ptr [ESI + 0xe4],XMM2
0046de45  c7866004000000000000      MOV dword ptr [ESI + 0x460],0x0
0046de4f  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0046de57  ff500c                    CALL dword ptr [EAX + 0xc]
0046de5a  e911040000                JMP 0x0046e270
0046de5f  85c0                      TEST EAX,EAX
0046de61  0f8509040000              JNZ 0x0046e270
0046de67  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0046de6d  e8be10fdff                CALL 0x0043ef30
0046de72  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0046de78  c7852cffffff3333b33f      MOV dword ptr [EBP + 0xffffff2c],0x3fb33333
0046de82  50                        PUSH EAX
0046de83  6a08                      PUSH 0x8
0046de85  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0046de8b  c78560feffff00002041      MOV dword ptr [EBP + 0xfffffe60],0x41200000
0046de95  50                        PUSH EAX
0046de96  8d873c030000              LEA EAX,[EDI + 0x33c]
0046de9c  c78564feffff00000000      MOV dword ptr [EBP + 0xfffffe64],0x0
0046dea6  50                        PUSH EAX
0046dea7  8bcf                      MOV ECX,EDI
0046dea9  e832d42500                CALL 0x006cb2e0
0046deae  e9bd030000                JMP 0x0046e270
0046deb3  83f801                    CMP EAX,0x1
0046deb6  0f85b4030000              JNZ 0x0046e270
0046debc  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0046debf  83f801                    CMP EAX,0x1
0046dec2  0f859c010000              JNZ 0x0046e064
0046dec8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046dece  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0046ded4  e8d787feff                CALL 0x004566b0
0046ded9  83f803                    CMP EAX,0x3
0046dedc  0f8d8e030000              JGE 0x0046e270
0046dee2  6800000010                PUSH 0x10000000
0046dee7  6a00                      PUSH 0x0
0046dee9  8bcf                      MOV ECX,EDI
0046deeb  e84095faff                CALL 0x00417430
0046def0  84c0                      TEST AL,AL
0046def2  7417                      JZ 0x0046df0b
0046def4  6a00                      PUSH 0x0
0046def6  51                        PUSH ECX
0046def7  6a01                      PUSH 0x1
0046def9  6a0f                      PUSH 0xf
0046defb  8bcf                      MOV ECX,EDI
0046defd  e8dee82300                CALL 0x006ac7e0
0046df02  83f803                    CMP EAX,0x3
0046df05  0f8365030000              JNC 0x0046e270
0046df0b  c78560feffff0000a040      MOV dword ptr [EBP + 0xfffffe60],0x40a00000
0046df15  c78564feffff00000000      MOV dword ptr [EBP + 0xfffffe64],0x0
0046df1f  e83c102800                CALL 0x006eef60
0046df24  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046df2a  8db73c030000              LEA ESI,[EDI + 0x33c]
0046df30  6a00                      PUSH 0x0
0046df32  68acd6c500                PUSH 0xc5d6ac
0046df37  68dcd5c500                PUSH 0xc5d5dc
0046df3c  6a00                      PUSH 0x0
0046df3e  50                        PUSH EAX
0046df3f  6a00                      PUSH 0x0
0046df41  57                        PUSH EDI
0046df42  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0046df48  50                        PUSH EAX
0046df49  56                        PUSH ESI
0046df4a  6a01                      PUSH 0x1
0046df4c  6a0f                      PUSH 0xf
0046df4e  e8cdabfbff                CALL 0x00428b20
0046df53  50                        PUSH EAX
0046df54  e858296800                CALL 0x00af08b1
0046df59  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046df5f  83c414                    ADD ESP,0x14
0046df62  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0046df6a  f30f5c0584a7ba00          SUBSS XMM0,dword ptr [0x00baa784]
0046df72  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0046df7a  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0046df80  e82b87feff                CALL 0x004566b0
0046df85  83f803                    CMP EAX,0x3
0046df88  0f8db1000000              JGE 0x0046e03f
0046df8e  6800000010                PUSH 0x10000000
0046df93  6a00                      PUSH 0x0
0046df95  8bcf                      MOV ECX,EDI
0046df97  e89494faff                CALL 0x00417430
0046df9c  84c0                      TEST AL,AL
0046df9e  7417                      JZ 0x0046dfb7
0046dfa0  6a00                      PUSH 0x0
0046dfa2  51                        PUSH ECX
0046dfa3  6a01                      PUSH 0x1
0046dfa5  6a0f                      PUSH 0xf
0046dfa7  8bcf                      MOV ECX,EDI
0046dfa9  e832e82300                CALL 0x006ac7e0
0046dfae  83f803                    CMP EAX,0x3
0046dfb1  0f8388000000              JNC 0x0046e03f
0046dfb7  51                        PUSH ECX
0046dfb8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046dfbf  6a00                      PUSH 0x0
0046dfc1  6a02                      PUSH 0x2
0046dfc3  51                        PUSH ECX
0046dfc4  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
0046dfcb  8bcf                      MOV ECX,EDI
0046dfcd  6809010000                PUSH 0x109
0046dfd2  e8c98b2600                CALL 0x006d6ba0
0046dfd7  e8840f2800                CALL 0x006eef60
0046dfdc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046dfe2  6a00                      PUSH 0x0
0046dfe4  68acd6c500                PUSH 0xc5d6ac
0046dfe9  68dcd5c500                PUSH 0xc5d5dc
0046dfee  6a00                      PUSH 0x0
0046dff0  50                        PUSH EAX
0046dff1  6a00                      PUSH 0x0
0046dff3  57                        PUSH EDI
0046dff4  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
0046dffa  c78560feffff0000a0c0      MOV dword ptr [EBP + 0xfffffe60],0xc0a00000
0046e004  50                        PUSH EAX
0046e005  56                        PUSH ESI
0046e006  6a01                      PUSH 0x1
0046e008  6a0f                      PUSH 0xf
0046e00a  c78564feffff00000080      MOV dword ptr [EBP + 0xfffffe64],0x80000000
0046e014  e807abfbff                CALL 0x00428b20
0046e019  50                        PUSH EAX
0046e01a  e892286800                CALL 0x00af08b1
0046e01f  83c414                    ADD ESP,0x14
0046e022  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0046e02a  f30f5c0584a7ba00          SUBSS XMM0,dword ptr [0x00baa784]
0046e032  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0046e03a  e931020000                JMP 0x0046e270
0046e03f  51                        PUSH ECX
0046e040  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046e047  6a00                      PUSH 0x0
0046e049  6a02                      PUSH 0x2
0046e04b  51                        PUSH ECX
0046e04c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046e053  8bcf                      MOV ECX,EDI
0046e055  6809010000                PUSH 0x109
0046e05a  e8418b2600                CALL 0x006d6ba0
0046e05f  e90c020000                JMP 0x0046e270
0046e064  85c0                      TEST EAX,EAX
0046e066  0f8504020000              JNZ 0x0046e270
0046e06c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046e072  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0046e078  e83386feff                CALL 0x004566b0
0046e07d  83f805                    CMP EAX,0x5
0046e080  0f8dea010000              JGE 0x0046e270
0046e086  837f282b                  CMP dword ptr [EDI + 0x28],0x2b
0046e08a  be04000000                MOV ESI,0x4
0046e08f  89b554feffff              MOV dword ptr [EBP + 0xfffffe54],ESI
0046e095  751b                      JNZ 0x0046e0b2
0046e097  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0046e09b  7515                      JNZ 0x0046e0b2
0046e09d  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0046e0a5  be02000000                MOV ESI,0x2
0046e0aa  89b554feffff              MOV dword ptr [EBP + 0xfffffe54],ESI
0046e0b0  eb08                      JMP 0x0046e0ba
0046e0b2  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0046e0ba  51                        PUSH ECX
0046e0bb  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046e0c2  6a00                      PUSH 0x0
0046e0c4  6a02                      PUSH 0x2
0046e0c6  51                        PUSH ECX
0046e0c7  f30f110424                MOVSS dword ptr [ESP],XMM0
0046e0cc  8bcf                      MOV ECX,EDI
0046e0ce  6809010000                PUSH 0x109
0046e0d3  e8c88a2600                CALL 0x006d6ba0
0046e0d8  6800000010                PUSH 0x10000000
0046e0dd  6a00                      PUSH 0x0
0046e0df  8bcf                      MOV ECX,EDI
0046e0e1  e84a93faff                CALL 0x00417430
0046e0e6  84c0                      TEST AL,AL
0046e0e8  7420                      JZ 0x0046e10a
0046e0ea  6a00                      PUSH 0x0
0046e0ec  51                        PUSH ECX
0046e0ed  6a00                      PUSH 0x0
0046e0ef  6a3d                      PUSH 0x3d
0046e0f1  8bcf                      MOV ECX,EDI
0046e0f3  e8e8e62300                CALL 0x006ac7e0
0046e0f8  b904000000                MOV ECX,0x4
0046e0fd  2bc8                      SUB ECX,EAX
0046e0ff  3bf1                      CMP ESI,ECX
0046e101  0f4df1                    CMOVGE ESI,ECX
0046e104  89b554feffff              MOV dword ptr [EBP + 0xfffffe54],ESI
0046e10a  85f6                      TEST ESI,ESI
0046e10c  0f8e5e010000              JLE 0x0046e270
0046e112  c7855cfeffff9cc5c500      MOV dword ptr [EBP + 0xfffffe5c],0xc5c59c
0046e11c  0f1f4000                  NOP dword ptr [EAX]
0046e120  e83b0e2800                CALL 0x006eef60
0046e125  8bf0                      MOV ESI,EAX
0046e127  e8340e2800                CALL 0x006eef60
0046e12c  660f6ec0                  MOVD XMM0,EAX
0046e130  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0046e134  c1e81f                    SHR EAX,0x1f
0046e137  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046e140  660f5ac8                  CVTPD2PS XMM1,XMM0
0046e144  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0046e14c  f30f590d04a7ba00          MULSS XMM1,dword ptr [0x00baa704]
0046e154  f30f58c9                  ADDSS XMM1,XMM1
0046e158  0f28c1                    MOVAPS XMM0,XMM1
0046e15b  f30f118d30feffff          MOVSS dword ptr [EBP + 0xfffffe30],XMM1
0046e163  e8d8f3faff                CALL 0x0041d540
0046e168  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
0046e170  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0046e178  f30f118524feffff          MOVSS dword ptr [EBP + 0xfffffe24],XMM0
0046e180  f30f108530feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe30]
0046e188  e893f3faff                CALL 0x0041d520
0046e18d  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
0046e195  8d8524feffff              LEA EAX,[EBP + 0xfffffe24]
0046e19b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046e1a1  6a00                      PUSH 0x0
0046e1a3  68acd6c500                PUSH 0xc5d6ac
0046e1a8  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0046e1b0  68dcd5c500                PUSH 0xc5d5dc
0046e1b5  6a00                      PUSH 0x0
0046e1b7  56                        PUSH ESI
0046e1b8  8bb55cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe5c]
0046e1be  6a00                      PUSH 0x0
0046e1c0  57                        PUSH EDI
0046e1c1  56                        PUSH ESI
0046e1c2  50                        PUSH EAX
0046e1c3  6a00                      PUSH 0x0
0046e1c5  6a3d                      PUSH 0x3d
0046e1c7  f30f118528feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM0
0046e1cf  e84ca9fbff                CALL 0x00428b20
0046e1d4  50                        PUSH EAX
0046e1d5  e8d7266800                CALL 0x00af08b1
0046e1da  83c608                    ADD ESI,0x8
0046e1dd  83c414                    ADD ESP,0x14
0046e1e0  83ad54feffff01            SUB dword ptr [EBP + 0xfffffe54],0x1
0046e1e7  89b55cfeffff              MOV dword ptr [EBP + 0xfffffe5c],ESI
0046e1ed  c6807401000001            MOV byte ptr [EAX + 0x174],0x1
0046e1f4  0f8526ffffff              JNZ 0x0046e120
0046e1fa  eb74                      JMP 0x0046e270
0046e1fc  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0046e204  f30f1106                  MOVSS dword ptr [ESI],XMM0
0046e208  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0046e210  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
0046e215  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
0046e21b  83f902                    CMP ECX,0x2
0046e21e  750c                      JNZ 0x0046e22c
0046e220  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0046e22a  33c9                      XOR ECX,ECX
0046e22c  837f282b                  CMP dword ptr [EDI + 0x28],0x2b
0046e230  7509                      JNZ 0x0046e23b
0046e232  83f101                    XOR ECX,0x1
0046e235  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
0046e23b  85c9                      TEST ECX,ECX
0046e23d  b806000000                MOV EAX,0x6
0046e242  ba03000000                MOV EDX,0x3
0046e247  0f44c2                    CMOVZ EAX,EDX
0046e24a  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
0046e250  7414                      JZ 0x0046e266
0046e252  6a00                      PUSH 0x0
0046e254  68e4e0b100                PUSH 0xb1e0e4
0046e259  8d4f48                    LEA ECX,[EDI + 0x48]
0046e25c  e81fc1f9ff                CALL 0x0040a380
0046e261  e9a2efffff                JMP 0x0046d208
0046e266  c7874c0100000000803f      MOV dword ptr [EDI + 0x14c],0x3f800000
0046e270  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0046e273  64890d00000000            MOV dword ptr FS:[0x0],ECX
0046e27a  59                        POP ECX
0046e27b  5f                        POP EDI
0046e27c  5e                        POP ESI
0046e27d  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0046e280  33cd                      XOR ECX,EBP
0046e282  e8a40e6800                CALL 0x00aef12b
0046e287  8be5                      MOV ESP,EBP
0046e289  5d                        POP EBP
0046e28a  8be3                      MOV ESP,EBX
0046e28c  5b                        POP EBX
0046e28d  c3                        RET
