; J460 NPC AI 0x0050c370 AI_0050c370
; types=22,205,817
; identities=205.0.0,22.0.0,22.1.0,22.2.0,22.3.0,817.0.0,817.1.0
; entry=0050c370
0050c370  53                        PUSH EBX
0050c371  8bdc                      MOV EBX,ESP
0050c373  83ec08                    SUB ESP,0x8
0050c376  83e4f8                    AND ESP,0xfffffff8
0050c379  83c404                    ADD ESP,0x4
0050c37c  55                        PUSH EBP
0050c37d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0050c380  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0050c384  8bec                      MOV EBP,ESP
0050c386  6aff                      PUSH -0x1
0050c388  689542af00                PUSH 0xaf4295
0050c38d  64a100000000              MOV EAX,FS:[0x0]
0050c393  50                        PUSH EAX
0050c394  53                        PUSH EBX
0050c395  81ec80000000              SUB ESP,0x80
0050c39b  a1b493bf00                MOV EAX,[0x00bf93b4]
0050c3a0  33c5                      XOR EAX,EBP
0050c3a2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0050c3a5  56                        PUSH ESI
0050c3a6  57                        PUSH EDI
0050c3a7  50                        PUSH EAX
0050c3a8  8d45f4                    LEA EAX,[EBP + -0xc]
0050c3ab  64a300000000              MOV FS:[0x0],EAX
0050c3b1  8bf9                      MOV EDI,ECX
0050c3b3  897d94                    MOV dword ptr [EBP + -0x6c],EDI
0050c3b6  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0050c3bc  85c0                      TEST EAX,EAX
0050c3be  754a                      JNZ 0x0050c40a
0050c3c0  817f2831030000            CMP dword ptr [EDI + 0x28],0x331
0050c3c7  7528                      JNZ 0x0050c3f1
0050c3c9  50                        PUSH EAX
0050c3ca  685cffb500                PUSH 0xb5ff5c
0050c3cf  8d4f48                    LEA ECX,[EDI + 0x48]
0050c3d2  e869e5efff                CALL 0x0040a940
0050c3d7  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0050c3db  7514                      JNZ 0x0050c3f1
0050c3dd  c787500300000000c0c0      MOV dword ptr [EDI + 0x350],0xc0c00000
0050c3e7  c7878401000006000000      MOV dword ptr [EDI + 0x184],0x6
0050c3f1  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050c3fb  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0050c405  e93b0f0000                JMP 0x0050d345
0050c40a  83f804                    CMP EAX,0x4
0050c40d  0f8572020000              JNZ 0x0050c685
0050c413  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050c41a  7520                      JNZ 0x0050c43c
0050c41c  e81f241b00                CALL 0x006be840
0050c421  50                        PUSH EAX
0050c422  8bcf                      MOV ECX,EDI
0050c424  e837b91c00                CALL 0x006d7d60
0050c429  84c0                      TEST AL,AL
0050c42b  750f                      JNZ 0x0050c43c
0050c42d  8d8f14040000              LEA ECX,[EDI + 0x414]
0050c433  6a01                      PUSH 0x1
0050c435  e8c69e2d00                CALL 0x007e6300
0050c43a  eb77                      JMP 0x0050c4b3
0050c43c  6a00                      PUSH 0x0
0050c43e  51                        PUSH ECX
0050c43f  8d45e4                    LEA EAX,[EBP + -0x1c]
0050c442  c7042400000000            MOV dword ptr [ESP],0x0
0050c449  50                        PUSH EAX
0050c44a  8bcf                      MOV ECX,EDI
0050c44c  e8ef271b00                CALL 0x006bec40
0050c451  50                        PUSH EAX
0050c452  8d8f14040000              LEA ECX,[EDI + 0x414]
0050c458  e8e3842d00                CALL 0x007e4940
0050c45d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050c464  740e                      JZ 0x0050c474
0050c466  6a0a                      PUSH 0xa
0050c468  8bcf                      MOV ECX,EDI
0050c46a  e821be1c00                CALL 0x006d8290
0050c46f  0fb6c0                    MOVZX EAX,AL
0050c472  eb0b                      JMP 0x0050c47f
0050c474  33c0                      XOR EAX,EAX
0050c476  3987500b0000              CMP dword ptr [EDI + 0xb50],EAX
0050c47c  0f9fc0                    SETG AL
0050c47f  85c0                      TEST EAX,EAX
0050c481  7430                      JZ 0x0050c4b3
0050c483  e8d82a1e00                CALL 0x006eef60
0050c488  b964000000                MOV ECX,0x64
0050c48d  33d2                      XOR EDX,EDX
0050c48f  f7f1                      DIV ECX
0050c491  51                        PUSH ECX
0050c492  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050c499  6a00                      PUSH 0x0
0050c49b  8d422d                    LEA EAX,[EDX + 0x2d]
0050c49e  50                        PUSH EAX
0050c49f  51                        PUSH ECX
0050c4a0  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050c4a7  8bcf                      MOV ECX,EDI
0050c4a9  688f000000                PUSH 0x8f
0050c4ae  e8eda61c00                CALL 0x006d6ba0
0050c4b3  817f2831030000            CMP dword ptr [EDI + 0x28],0x331
0050c4ba  7553                      JNZ 0x0050c50f
0050c4bc  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0050c4c0  754d                      JNZ 0x0050c50f
0050c4c2  6a00                      PUSH 0x0
0050c4c4  8d4f48                    LEA ECX,[EDI + 0x48]
0050c4c7  6818ddb100                PUSH 0xb1dd18
0050c4cc  e8afdeefff                CALL 0x0040a380
0050c4d1  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
0050c4d9  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0050c4e1  0f28d3                    MOVAPS XMM2,XMM3
0050c4e4  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0050c4eb  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0050c4f2  0f2fd1                    COMISS XMM2,XMM1
0050c4f5  0f86ff000000              JBE 0x0050c5fa
0050c4fb  0f57c0                    XORPS XMM0,XMM0
0050c4fe  0f2fc3                    COMISS XMM0,XMM3
0050c501  0f97c0                    SETA AL
0050c504  888748010000              MOV byte ptr [EDI + 0x148],AL
0050c50a  e9eb000000                JMP 0x0050c5fa
0050c50f  a118ddb100                MOV EAX,[0x00b1dd18]
0050c514  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
0050c51a  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0050c521  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
0050c528  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0050c52b  894dc0                    MOV dword ptr [EBP + -0x40],ECX
0050c52e  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
0050c532  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0050c539  a130ddb100                MOV EAX,[0x00b1dd30]
0050c53e  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
0050c544  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050c54b  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0050c552  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
0050c555  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0050c558  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0050c55c  51                        PUSH ECX
0050c55d  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0050c561  8d45bc                    LEA EAX,[EBP + -0x44]
0050c564  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0050c56b  8bcf                      MOV ECX,EDI
0050c56d  50                        PUSH EAX
0050c56e  8d45d4                    LEA EAX,[EBP + -0x2c]
0050c571  50                        PUSH EAX
0050c572  e8b94d1b00                CALL 0x006c1330
0050c577  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0050c57b  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0050c57e  83fa10                    CMP EDX,0x10
0050c581  7228                      JC 0x0050c5ab
0050c583  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0050c586  42                        INC EDX
0050c587  8bc1                      MOV EAX,ECX
0050c589  81fa00100000              CMP EDX,0x1000
0050c58f  7210                      JC 0x0050c5a1
0050c591  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050c594  83c223                    ADD EDX,0x23
0050c597  2bc1                      SUB EAX,ECX
0050c599  83c0fc                    ADD EAX,-0x4
0050c59c  83f81f                    CMP EAX,0x1f
0050c59f  7749                      JA 0x0050c5ea
0050c5a1  52                        PUSH EDX
0050c5a2  51                        PUSH ECX
0050c5a3  e8b42b5e00                CALL 0x00aef15c
0050c5a8  83c408                    ADD ESP,0x8
0050c5ab  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0050c5b2  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0050c5b5  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0050c5bc  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050c5c3  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0050c5c7  83fa10                    CMP EDX,0x10
0050c5ca  722e                      JC 0x0050c5fa
0050c5cc  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0050c5cf  42                        INC EDX
0050c5d0  8bc1                      MOV EAX,ECX
0050c5d2  81fa00100000              CMP EDX,0x1000
0050c5d8  7216                      JC 0x0050c5f0
0050c5da  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050c5dd  83c223                    ADD EDX,0x23
0050c5e0  2bc1                      SUB EAX,ECX
0050c5e2  83c0fc                    ADD EAX,-0x4
0050c5e5  83f81f                    CMP EAX,0x1f
0050c5e8  7606                      JBE 0x0050c5f0
0050c5ea  ff159488b100              CALL dword ptr [0x00b18894]
0050c5f0  52                        PUSH EDX
0050c5f1  51                        PUSH ECX
0050c5f2  e8652b5e00                CALL 0x00aef15c
0050c5f7  83c408                    ADD ESP,0x8
0050c5fa  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050c5fe  741a                      JZ 0x0050c61a
0050c600  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0050c607  7411                      JZ 0x0050c61a
0050c609  6a00                      PUSH 0x0
0050c60b  68a8dcb100                PUSH 0xb1dca8
0050c610  8d4f48                    LEA ECX,[EDI + 0x48]
0050c613  e828e3efff                CALL 0x0040a940
0050c618  eb2a                      JMP 0x0050c644
0050c61a  6a01                      PUSH 0x1
0050c61c  68a8dcb100                PUSH 0xb1dca8
0050c621  8d4f48                    LEA ECX,[EDI + 0x48]
0050c624  e8c7e4efff                CALL 0x0040aaf0
0050c629  84c0                      TEST AL,AL
0050c62b  7417                      JZ 0x0050c644
0050c62d  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
0050c634  740e                      JZ 0x0050c644
0050c636  8d8f98000000              LEA ECX,[EDI + 0x98]
0050c63c  0f57c9                    XORPS XMM1,XMM1
0050c63f  e8bcc7efff                CALL 0x00408e00
0050c644  837f2816                  CMP dword ptr [EDI + 0x28],0x16
0050c648  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050c650  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0050c658  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050c660  0f8579040000              JNZ 0x0050cadf
0050c666  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0050c66a  0f856f040000              JNZ 0x0050cadf
0050c670  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0050c678  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050c680  e95a040000                JMP 0x0050cadf
0050c685  837f2816                  CMP dword ptr [EDI + 0x28],0x16
0050c689  0f8513010000              JNZ 0x0050c7a2
0050c68f  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0050c693  740a                      JZ 0x0050c69f
0050c695  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0050c699  0f8503010000              JNZ 0x0050c7a2
0050c69f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050c6a7  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0050c6af  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0050c6b6  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
0050c6bd  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
0050c6c1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050c6c9  a118ddb100                MOV EAX,[0x00b1dd18]
0050c6ce  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
0050c6d4  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0050c6d7  894dc0                    MOV dword ptr [EBP + -0x40],ECX
0050c6da  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0050c6e1  a130ddb100                MOV EAX,[0x00b1dd30]
0050c6e6  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
0050c6ec  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050c6f3  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0050c6fa  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
0050c6fd  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0050c700  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0050c704  51                        PUSH ECX
0050c705  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
0050c709  8d45bc                    LEA EAX,[EBP + -0x44]
0050c70c  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0050c713  8bcf                      MOV ECX,EDI
0050c715  50                        PUSH EAX
0050c716  8d45d4                    LEA EAX,[EBP + -0x2c]
0050c719  50                        PUSH EAX
0050c71a  e8114c1b00                CALL 0x006c1330
0050c71f  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
0050c723  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0050c726  83fa10                    CMP EDX,0x10
0050c729  7228                      JC 0x0050c753
0050c72b  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0050c72e  42                        INC EDX
0050c72f  8bc1                      MOV EAX,ECX
0050c731  81fa00100000              CMP EDX,0x1000
0050c737  7210                      JC 0x0050c749
0050c739  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050c73c  83c223                    ADD EDX,0x23
0050c73f  2bc1                      SUB EAX,ECX
0050c741  83c0fc                    ADD EAX,-0x4
0050c744  83f81f                    CMP EAX,0x1f
0050c747  7749                      JA 0x0050c792
0050c749  52                        PUSH EDX
0050c74a  51                        PUSH ECX
0050c74b  e80c2a5e00                CALL 0x00aef15c
0050c750  83c408                    ADD ESP,0x8
0050c753  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0050c75a  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0050c75d  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0050c764  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050c76b  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0050c76f  83fa10                    CMP EDX,0x10
0050c772  722e                      JC 0x0050c7a2
0050c774  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0050c777  42                        INC EDX
0050c778  8bc1                      MOV EAX,ECX
0050c77a  81fa00100000              CMP EDX,0x1000
0050c780  7216                      JC 0x0050c798
0050c782  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050c785  83c223                    ADD EDX,0x23
0050c788  2bc1                      SUB EAX,ECX
0050c78a  83c0fc                    ADD EAX,-0x4
0050c78d  83f81f                    CMP EAX,0x1f
0050c790  7606                      JBE 0x0050c798
0050c792  ff159488b100              CALL dword ptr [0x00b18894]
0050c798  52                        PUSH EDX
0050c799  51                        PUSH ECX
0050c79a  e8bd295e00                CALL 0x00aef15c
0050c79f  83c408                    ADD ESP,0x8
0050c7a2  8d8f98000000              LEA ECX,[EDI + 0x98]
0050c7a8  68dcd2b100                PUSH 0xb1d2dc
0050c7ad  e81ee6efff                CALL 0x0040add0
0050c7b2  84c0                      TEST AL,AL
0050c7b4  0f8409030000              JZ 0x0050cac3
0050c7ba  51                        PUSH ECX
0050c7bb  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050c7c2  33c0                      XOR EAX,EAX
0050c7c4  817f28cd000000            CMP dword ptr [EDI + 0x28],0xcd
0050c7cb  6a00                      PUSH 0x0
0050c7cd  6a02                      PUSH 0x2
0050c7cf  51                        PUSH ECX
0050c7d0  0f94c0                    SETZ AL
0050c7d3  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050c7da  059e000000                ADD EAX,0x9e
0050c7df  8bcf                      MOV ECX,EDI
0050c7e1  50                        PUSH EAX
0050c7e2  e8b9a31c00                CALL 0x006d6ba0
0050c7e7  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050c7ea  83f816                    CMP EAX,0x16
0050c7ed  0f8508020000              JNZ 0x0050c9fb
0050c7f3  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0050c7f6  83f801                    CMP EAX,0x1
0050c7f9  7549                      JNZ 0x0050c844
0050c7fb  e860271e00                CALL 0x006eef60
0050c800  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050c806  50                        PUSH EAX
0050c807  6a00                      PUSH 0x0
0050c809  57                        PUSH EDI
0050c80a  6840b6c700                PUSH 0xc7b640
0050c80f  8d873c030000              LEA EAX,[EDI + 0x33c]
0050c815  50                        PUSH EAX
0050c816  6a01                      PUSH 0x1
0050c818  6a17                      PUSH 0x17
0050c81a  e801c3f1ff                CALL 0x00428b20
0050c81f  f30f108084030000          MOVSS XMM0,dword ptr [EAX + 0x384]
0050c827  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0050c82f  f30f118084030000          MOVSS dword ptr [EAX + 0x384],XMM0
0050c837  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0050c83f  e96c020000                JMP 0x0050cab0
0050c844  83f802                    CMP EAX,0x2
0050c847  0f85d4000000              JNZ 0x0050c921
0050c84d  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0050c854  740a                      JZ 0x0050c860
0050c856  f30f1005b4adba00          MOVSS XMM0,dword ptr [0x00baadb4]
0050c85e  eb08                      JMP 0x0050c868
0050c860  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
0050c868  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0050c86d  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
0050c872  c745a000000000            MOV dword ptr [EBP + -0x60],0x0
0050c879  e8e2261e00                CALL 0x006eef60
0050c87e  f30f104da4                MOVSS XMM1,dword ptr [EBP + -0x5c]
0050c883  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0050c88b  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0050c893  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0050c89b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050c8a1  50                        PUSH EAX
0050c8a2  6a01                      PUSH 0x1
0050c8a4  57                        PUSH EDI
0050c8a5  8d459c                    LEA EAX,[EBP + -0x64]
0050c8a8  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
0050c8ad  50                        PUSH EAX
0050c8ae  8d458c                    LEA EAX,[EBP + -0x74]
0050c8b1  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
0050c8b6  50                        PUSH EAX
0050c8b7  6a01                      PUSH 0x1
0050c8b9  6a26                      PUSH 0x26
0050c8bb  e860c2f1ff                CALL 0x00428b20
0050c8c0  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0050c8c6  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0050c8cd  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0050c8d3  8d4da8                    LEA ECX,[EBP + -0x58]
0050c8d6  e895a8efff                CALL 0x00407170
0050c8db  f30f108f380c0000          MOVSS XMM1,dword ptr [EDI + 0xc38]
0050c8e3  8d4d9c                    LEA ECX,[EBP + -0x64]
0050c8e6  0f28c1                    MOVAPS XMM0,XMM1
0050c8e9  8d973c030000              LEA EDX,[EDI + 0x33c]
0050c8ef  f30f5905e49fba00          MULSS XMM0,dword ptr [0x00ba9fe4]
0050c8f7  51                        PUSH ECX
0050c8f8  f30f590decadba00          MULSS XMM1,dword ptr [0x00baadec]
0050c900  b902000000                MOV ECX,0x2
0050c905  50                        PUSH EAX
0050c906  8d458c                    LEA EAX,[EBP + -0x74]
0050c909  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0050c90e  50                        PUSH EAX
0050c90f  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
0050c914  e8d7b31c00                CALL 0x006d7cf0
0050c919  83c40c                    ADD ESP,0xc
0050c91c  e9a2010000                JMP 0x0050cac3
0050c921  83f803                    CMP EAX,0x3
0050c924  0f8534010000              JNZ 0x0050ca5e
0050c92a  33f6                      XOR ESI,ESI
0050c92c  c7459806000000            MOV dword ptr [EBP + -0x68],0x6
0050c933  e828261e00                CALL 0x006eef60
0050c938  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050c93e  50                        PUSH EAX
0050c93f  6a01                      PUSH 0x1
0050c941  57                        PUSH EDI
0050c942  6840b6c700                PUSH 0xc7b640
0050c947  8d873c030000              LEA EAX,[EDI + 0x33c]
0050c94d  50                        PUSH EAX
0050c94e  6a00                      PUSH 0x0
0050c950  68de000000                PUSH 0xde
0050c955  e8c6c1f1ff                CALL 0x00428b20
0050c95a  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
0050c960  85f6                      TEST ESI,ESI
0050c962  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
0050c965  0f44f0                    CMOVZ ESI,EAX
0050c968  05bc030000                ADD EAX,0x3bc
0050c96d  894590                    MOV dword ptr [EBP + -0x70],EAX
0050c970  85c9                      TEST ECX,ECX
0050c972  7415                      JZ 0x0050c989
0050c974  8945a0                    MOV dword ptr [EBP + -0x60],EAX
0050c977  81c1cc030000              ADD ECX,0x3cc
0050c97d  8d45a0                    LEA EAX,[EBP + -0x60]
0050c980  50                        PUSH EAX
0050c981  e88a28fcff                CALL 0x004cf210
0050c986  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
0050c989  8930                      MOV dword ptr [EAX],ESI
0050c98b  85f6                      TEST ESI,ESI
0050c98d  7408                      JZ 0x0050c997
0050c98f  50                        PUSH EAX
0050c990  8bce                      MOV ECX,ESI
0050c992  e85913fcff                CALL 0x004cdcf0
0050c997  8b4da4                    MOV ECX,dword ptr [EBP + -0x5c]
0050c99a  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
0050c9a0  83a168010000fb            AND dword ptr [ECX + 0x168],0xfffffffb
0050c9a7  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
0050c9ad  e8ae251e00                CALL 0x006eef60
0050c9b2  33d2                      XOR EDX,EDX
0050c9b4  b964000000                MOV ECX,0x64
0050c9b9  f7f1                      DIV ECX
0050c9bb  8b45a4                    MOV EAX,dword ptr [EBP + -0x5c]
0050c9be  81c2c8000000              ADD EDX,0xc8
0050c9c4  660f6ec2                  MOVD XMM0,EDX
0050c9c8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050c9cc  c1ea1f                    SHR EDX,0x1f
0050c9cf  836d9801                  SUB dword ptr [EBP + -0x68],0x1
0050c9d3  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
0050c9dc  660f5ac0                  CVTPD2PS XMM0,XMM0
0050c9e0  f30f588080030000          ADDSS XMM0,dword ptr [EAX + 0x380]
0050c9e8  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0050c9f0  0f853dffffff              JNZ 0x0050c933
0050c9f6  e9c8000000                JMP 0x0050cac3
0050c9fb  3d31030000                CMP EAX,0x331
0050ca00  755c                      JNZ 0x0050ca5e
0050ca02  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0050ca06  8db73c030000              LEA ESI,[EDI + 0x33c]
0050ca0c  7518                      JNZ 0x0050ca26
0050ca0e  e84d251e00                CALL 0x006eef60
0050ca13  50                        PUSH EAX
0050ca14  6a00                      PUSH 0x0
0050ca16  57                        PUSH EDI
0050ca17  6840b6c700                PUSH 0xc7b640
0050ca1c  56                        PUSH ESI
0050ca1d  6a00                      PUSH 0x0
0050ca1f  6828030000                PUSH 0x328
0050ca24  eb16                      JMP 0x0050ca3c
0050ca26  e835251e00                CALL 0x006eef60
0050ca2b  50                        PUSH EAX
0050ca2c  6a00                      PUSH 0x0
0050ca2e  57                        PUSH EDI
0050ca2f  6840b6c700                PUSH 0xc7b640
0050ca34  56                        PUSH ESI
0050ca35  6a00                      PUSH 0x0
0050ca37  682a030000                PUSH 0x32a
0050ca3c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050ca42  e8d9c0f1ff                CALL 0x00428b20
0050ca47  8bc8                      MOV ECX,EAX
0050ca49  8b816c010000              MOV EAX,dword ptr [ECX + 0x16c]
0050ca4f  83a168010000fb            AND dword ptr [ECX + 0x168],0xfffffffb
0050ca56  89816c010000              MOV dword ptr [ECX + 0x16c],EAX
0050ca5c  eb65                      JMP 0x0050cac3
0050ca5e  e8fd241e00                CALL 0x006eef60
0050ca63  837f2816                  CMP dword ptr [EDI + 0x28],0x16
0050ca67  ba12000000                MOV EDX,0x12
0050ca6c  6a00                      PUSH 0x0
0050ca6e  68acd6c500                PUSH 0xc5d6ac
0050ca73  68dcd5c500                PUSH 0xc5d5dc
0050ca78  6a00                      PUSH 0x0
0050ca7a  50                        PUSH EAX
0050ca7b  6a00                      PUSH 0x0
0050ca7d  57                        PUSH EDI
0050ca7e  6840b6c700                PUSH 0xc7b640
0050ca83  8d873c030000              LEA EAX,[EDI + 0x33c]
0050ca89  b955000000                MOV ECX,0x55
0050ca8e  50                        PUSH EAX
0050ca8f  0f44ca                    CMOVZ ECX,EDX
0050ca92  6a00                      PUSH 0x0
0050ca94  51                        PUSH ECX
0050ca95  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050ca9b  e880c0f1ff                CALL 0x00428b20
0050caa0  50                        PUSH EAX
0050caa1  e80b3e5e00                CALL 0x00af08b1
0050caa6  83c414                    ADD ESP,0x14
0050caa9  c6807401000001            MOV byte ptr [EAX + 0x174],0x1
0050cab0  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0050cab6  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0050cabc  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0050cac3  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
0050caca  7409                      JZ 0x0050cad5
0050cacc  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
0050cad3  750a                      JNZ 0x0050cadf
0050cad5  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050cadf  8bcf                      MOV ECX,EDI
0050cae1  e83aa11c00                CALL 0x006d6c20
0050cae6  837f2816                  CMP dword ptr [EDI + 0x28],0x16
0050caea  8bf0                      MOV ESI,EAX
0050caec  c745a005000000            MOV dword ptr [EBP + -0x60],0x5
0050caf3  0f8581000000              JNZ 0x0050cb7a
0050caf9  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0050cafd  757b                      JNZ 0x0050cb7a
0050caff  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050cb05  8d45dc                    LEA EAX,[EBP + -0x24]
0050cb08  6a00                      PUSH 0x0
0050cb0a  6a01                      PUSH 0x1
0050cb0c  6aff                      PUSH -0x1
0050cb0e  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0050cb14  6aff                      PUSH -0x1
0050cb16  68de000000                PUSH 0xde
0050cb1b  81c118120000              ADD ECX,0x1218
0050cb21  50                        PUSH EAX
0050cb22  e839e4f0ff                CALL 0x0041af60
0050cb27  33c9                      XOR ECX,ECX
0050cb29  394de8                    CMP dword ptr [EBP + -0x18],ECX
0050cb2c  7627                      JBE 0x0050cb55
0050cb2e  8b7de0                    MOV EDI,dword ptr [EBP + -0x20]
0050cb31  8b048f                    MOV EAX,dword ptr [EDI + ECX*0x4]
0050cb34  3980bc030000              CMP dword ptr [EAX + 0x3bc],EAX
0050cb3a  7410                      JZ 0x0050cb4c
0050cb3c  8b80ec030000              MOV EAX,dword ptr [EAX + 0x3ec]
0050cb42  33d2                      XOR EDX,EDX
0050cb44  f775a0                    DIV dword ptr [EBP + -0x60]
0050cb47  85d2                      TEST EDX,EDX
0050cb49  7501                      JNZ 0x0050cb4c
0050cb4b  4e                        DEC ESI
0050cb4c  41                        INC ECX
0050cb4d  3b4de8                    CMP ECX,dword ptr [EBP + -0x18]
0050cb50  72df                      JC 0x0050cb31
0050cb52  8b7d94                    MOV EDI,dword ptr [EBP + -0x6c]
0050cb55  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
0050cb59  751f                      JNZ 0x0050cb7a
0050cb5b  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
0050cb62  b101                      MOV CL,0x1
0050cb64  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0050cb67  6a00                      PUSH 0x0
0050cb69  6a00                      PUSH 0x0
0050cb6b  e8407d5500                CALL 0x00a648b0
0050cb70  83c408                    ADD ESP,0x8
0050cb73  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0050cb7a  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0050cb82  0f57c9                    XORPS XMM1,XMM1
0050cb85  f30f5c879c030000          SUBSS XMM0,dword ptr [EDI + 0x39c]
0050cb8d  0f2fc8                    COMISS XMM1,XMM0
0050cb90  7251                      JC 0x0050cbe3
0050cb92  e8c9231e00                CALL 0x006eef60
0050cb97  33d2                      XOR EDX,EDX
0050cb99  b905000000                MOV ECX,0x5
0050cb9e  f7f1                      DIV ECX
0050cba0  83c204                    ADD EDX,0x4
0050cba3  3bf2                      CMP ESI,EDX
0050cba5  7c39                      JL 0x0050cbe0
0050cba7  e8b4231e00                CALL 0x006eef60
0050cbac  33d2                      XOR EDX,EDX
0050cbae  b932000000                MOV ECX,0x32
0050cbb3  f7f1                      DIV ECX
0050cbb5  83c214                    ADD EDX,0x14
0050cbb8  660f6ec2                  MOVD XMM0,EDX
0050cbbc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050cbc0  c1ea1f                    SHR EDX,0x1f
0050cbc3  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
0050cbcc  660f5ac0                  CVTPD2PS XMM0,XMM0
0050cbd0  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
0050cbd8  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0050cbe0  0f57c9                    XORPS XMM1,XMM1
0050cbe3  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0050cbea  7f0d                      JG 0x0050cbf9
0050cbec  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050cbf3  0f8482020000              JZ 0x0050ce7b
0050cbf9  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0050cc01  0f2fc8                    COMISS XMM1,XMM0
0050cc04  0f8261020000              JC 0x0050ce6b
0050cc0a  8bcf                      MOV ECX,EDI
0050cc0c  e82f1c1b00                CALL 0x006be840
0050cc11  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0050cc19  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0050cc21  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0050cc29  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0050cc31  0f28ca                    MOVAPS XMM1,XMM2
0050cc34  f30f1155a4                MOVSS dword ptr [EBP + -0x5c],XMM2
0050cc39  f30f59ca                  MULSS XMM1,XMM2
0050cc3d  f30f59c0                  MULSS XMM0,XMM0
0050cc41  f30f58c1                  ADDSS XMM0,XMM1
0050cc45  e8068ef2ff                CALL 0x00435a50
0050cc4a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050cc51  0f28c8                    MOVAPS XMM1,XMM0
0050cc54  744f                      JZ 0x0050cca5
0050cc56  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0050cc5e  8d45e4                    LEA EAX,[EBP + -0x1c]
0050cc61  50                        PUSH EAX
0050cc62  8bcf                      MOV ECX,EDI
0050cc64  e837b91c00                CALL 0x006d85a0
0050cc69  8bc8                      MOV ECX,EAX
0050cc6b  f30f1001                  MOVSS XMM0,dword ptr [ECX]
0050cc6f  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0050cc76  9f                        LAHF
0050cc77  f6c444                    TEST AH,0x44
0050cc7a  7a1c                      JP 0x0050cc98
0050cc7c  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0050cc81  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0050cc88  9f                        LAHF
0050cc89  f6c444                    TEST AH,0x44
0050cc8c  7a0a                      JP 0x0050cc98
0050cc8e  8b8f1c0f0000              MOV ECX,dword ptr [EDI + 0xf1c]
0050cc94  33c0                      XOR EAX,EAX
0050cc96  eb20                      JMP 0x0050ccb8
0050cc98  8b8f1c0f0000              MOV ECX,dword ptr [EDI + 0xf1c]
0050cc9e  b801000000                MOV EAX,0x1
0050cca3  eb13                      JMP 0x0050ccb8
0050cca5  f30f100508abba00          MOVSS XMM0,dword ptr [0x00baab08]
0050ccad  33c0                      XOR EAX,EAX
0050ccaf  0f2fc1                    COMISS XMM0,XMM1
0050ccb2  0f97c0                    SETA AL
0050ccb5  83c9ff                    OR ECX,0xffffffff
0050ccb8  85c0                      TEST EAX,EAX
0050ccba  0f849f010000              JZ 0x0050ce5f
0050ccc0  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050ccc6  25000a0001                AND EAX,0x1000a00
0050cccb  83c800                    OR EAX,0x0
0050ccce  0f858b010000              JNZ 0x0050ce5f
0050ccd4  83f9ff                    CMP ECX,-0x1
0050ccd7  7553                      JNZ 0x0050cd2c
0050ccd9  a17816c700                MOV EAX,[0x00c71678]
0050ccde  8bcf                      MOV ECX,EDI
0050cce0  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0050cce6  e8551b1b00                CALL 0x006be840
0050cceb  6a00                      PUSH 0x0
0050cced  6a00                      PUSH 0x0
0050ccef  6a00                      PUSH 0x0
0050ccf1  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0050ccf7  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0050ccfd  6a00                      PUSH 0x0
0050ccff  8945a0                    MOV dword ptr [EBP + -0x60],EAX
0050cd02  8d873c030000              LEA EAX,[EDI + 0x33c]
0050cd08  6a02                      PUSH 0x2
0050cd0a  50                        PUSH EAX
0050cd0b  8d459c                    LEA EAX,[EBP + -0x64]
0050cd0e  894d9c                    MOV dword ptr [EBP + -0x64],ECX
0050cd11  50                        PUSH EAX
0050cd12  8bce                      MOV ECX,ESI
0050cd14  e8d7402e00                CALL 0x007f0df0
0050cd19  84c0                      TEST AL,AL
0050cd1b  750f                      JNZ 0x0050cd2c
0050cd1d  c787b00b00000000e040      MOV dword ptr [EDI + 0xbb0],0x40e00000
0050cd27  e94f010000                JMP 0x0050ce7b
0050cd2c  f30f100d8ca9ba00          MOVSS XMM1,dword ptr [0x00baa98c]
0050cd34  c787b00b000000009642      MOV dword ptr [EDI + 0xbb0],0x42960000
0050cd3e  817f28cd000000            CMP dword ptr [EDI + 0x28],0xcd
0050cd45  754a                      JNZ 0x0050cd91
0050cd47  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050cd4e  7404                      JZ 0x0050cd54
0050cd50  33d2                      XOR EDX,EDX
0050cd52  eb16                      JMP 0x0050cd6a
0050cd54  e807221e00                CALL 0x006eef60
0050cd59  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0050cd61  33d2                      XOR EDX,EDX
0050cd63  b914000000                MOV ECX,0x14
0050cd68  f7f1                      DIV ECX
0050cd6a  8d4237                    LEA EAX,[EDX + 0x37]
0050cd6d  660f6ec0                  MOVD XMM0,EAX
0050cd71  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050cd75  c1e81f                    SHR EAX,0x1f
0050cd78  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050cd81  660f5ac0                  CVTPD2PS XMM0,XMM0
0050cd85  f30f58c1                  ADDSS XMM0,XMM1
0050cd89  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0050cd91  837f2816                  CMP dword ptr [EDI + 0x28],0x16
0050cd95  7510                      JNZ 0x0050cda7
0050cd97  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0050cd9b  750a                      JNZ 0x0050cda7
0050cd9d  c787b00b000000005243      MOV dword ptr [EDI + 0xbb0],0x43520000
0050cda7  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050cdae  751a                      JNZ 0x0050cdca
0050cdb0  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0050cdb8  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0050cdc0  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0050cdc8  eb25                      JMP 0x0050cdef
0050cdca  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0050cdd2  8d459c                    LEA EAX,[EBP + -0x64]
0050cdd5  50                        PUSH EAX
0050cdd6  8bcf                      MOV ECX,EDI
0050cdd8  e8c3b71c00                CALL 0x006d85a0
0050cddd  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
0050cde2  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0050cdea  f30f1045a0                MOVSS XMM0,dword ptr [EBP + -0x60]
0050cdef  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
0050cdf7  f30f108f200f0000          MOVSS XMM1,dword ptr [EDI + 0xf20]
0050cdff  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
0050ce06  9f                        LAHF
0050ce07  f6c444                    TEST AH,0x44
0050ce0a  7a0d                      JP 0x0050ce19
0050ce0c  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0050ce13  9f                        LAHF
0050ce14  f6c444                    TEST AH,0x44
0050ce17  7b05                      JNP 0x0050ce1e
0050ce19  f30f114da4                MOVSS dword ptr [EBP + -0x5c],XMM1
0050ce1e  6a01                      PUSH 0x1
0050ce20  68b4dcb100                PUSH 0xb1dcb4
0050ce25  8d4f48                    LEA ECX,[EDI + 0x48]
0050ce28  e8c3dcefff                CALL 0x0040aaf0
0050ce2d  84c0                      TEST AL,AL
0050ce2f  7412                      JZ 0x0050ce43
0050ce31  8d8f98000000              LEA ECX,[EDI + 0x98]
0050ce37  e874d3efff                CALL 0x0040a1b0
0050ce3c  c687ac00000001            MOV byte ptr [EDI + 0xac],0x1
0050ce43  0f57c0                    XORPS XMM0,XMM0
0050ce46  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0050ce50  0f2f45a4                  COMISS XMM0,dword ptr [EBP + -0x5c]
0050ce54  0f97c0                    SETA AL
0050ce57  888748010000              MOV byte ptr [EDI + 0x148],AL
0050ce5d  eb1c                      JMP 0x0050ce7b
0050ce5f  c787b00b000000004040      MOV dword ptr [EDI + 0xbb0],0x40400000
0050ce69  eb10                      JMP 0x0050ce7b
0050ce6b  f30f5c879c030000          SUBSS XMM0,dword ptr [EDI + 0x39c]
0050ce73  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0050ce7b  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0050ce82  0f84aa040000              JZ 0x0050d332
0050ce88  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0050ce90  0f2f05ecadba00            COMISS XMM0,dword ptr [0x00baadec]
0050ce97  0f8695040000              JBE 0x0050d332
0050ce9d  8bcf                      MOV ECX,EDI
0050ce9f  e87c9d1c00                CALL 0x006d6c20
0050cea4  f30f10055ca7ba00          MOVSS XMM0,dword ptr [0x00baa75c]
0050ceac  83ec08                    SUB ESP,0x8
0050ceaf  660f6ec8                  MOVD XMM1,EAX
0050ceb3  0f5bc9                    CVTDQ2PS XMM1,XMM1
0050ceb6  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
0050cebe  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
0050cec6  f30f5ec1                  DIVSS XMM0,XMM1
0050ceca  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
0050cecf  d945a0                    FLD dword ptr [EBP + -0x60]
0050ced2  dd1c24                    FSTP qword ptr [ESP]
0050ced5  e8373a5e00                CALL 0x00af0911
0050ceda  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050cedd  83c408                    ADD ESP,0x8
0050cee0  d95da0                    FSTP dword ptr [EBP + -0x60]
0050cee3  d945a0                    FLD dword ptr [EBP + -0x60]
0050cee6  d95da0                    FSTP dword ptr [EBP + -0x60]
0050cee9  f30f2c75a0                CVTTSS2SI ESI,dword ptr [EBP + -0x60]
0050ceee  83f816                    CMP EAX,0x16
0050cef1  7527                      JNZ 0x0050cf1a
0050cef3  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0050cef6  83f801                    CMP EAX,0x1
0050cef9  740f                      JZ 0x0050cf0a
0050cefb  83f802                    CMP EAX,0x2
0050cefe  740a                      JZ 0x0050cf0a
0050cf00  83f803                    CMP EAX,0x3
0050cf03  7537                      JNZ 0x0050cf3c
0050cf05  8d70fe                    LEA ESI,[EAX + -0x2]
0050cf08  eb32                      JMP 0x0050cf3c
0050cf0a  e851201e00                CALL 0x006eef60
0050cf0f  83e001                    AND EAX,0x1
0050cf12  40                        INC EAX
0050cf13  3bc6                      CMP EAX,ESI
0050cf15  0f4cf0                    CMOVL ESI,EAX
0050cf18  eb22                      JMP 0x0050cf3c
0050cf1a  3dcd000000                CMP EAX,0xcd
0050cf1f  7507                      JNZ 0x0050cf28
0050cf21  be01000000                MOV ESI,0x1
0050cf26  eb14                      JMP 0x0050cf3c
0050cf28  3d31030000                CMP EAX,0x331
0050cf2d  750d                      JNZ 0x0050cf3c
0050cf2f  8d46ff                    LEA EAX,[ESI + -0x1]
0050cf32  be01000000                MOV ESI,0x1
0050cf37  3bc6                      CMP EAX,ESI
0050cf39  0f4ff0                    CMOVG ESI,EAX
0050cf3c  0fbf87760c0000            MOVSX EAX,word ptr [EDI + 0xc76]
0050cf43  33c9                      XOR ECX,ECX
0050cf45  2bf0                      SUB ESI,EAX
0050cf47  85f6                      TEST ESI,ESI
0050cf49  0f4fce                    CMOVG ECX,ESI
0050cf4c  894da0                    MOV dword ptr [EBP + -0x60],ECX
0050cf4f  85c9                      TEST ECX,ECX
0050cf51  0f8edb030000              JLE 0x0050d332
0050cf57  be0e000000                MOV ESI,0xe
0050cf5c  0f1f4000                  NOP dword ptr [EAX]
0050cf60  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050cf63  c745a400000000            MOV dword ptr [EBP + -0x5c],0x0
0050cf6a  83f816                    CMP EAX,0x16
0050cf6d  0f856f020000              JNZ 0x0050d1e2
0050cf73  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0050cf77  0f8504010000              JNZ 0x0050d081
0050cf7d  c7459400000000            MOV dword ptr [EBP + -0x6c],0x0
0050cf84  e8d71f1e00                CALL 0x006eef60
0050cf89  8bf0                      MOV ESI,EAX
0050cf8b  e8d01f1e00                CALL 0x006eef60
0050cf90  660f6ec0                  MOVD XMM0,EAX
0050cf94  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050cf98  c1e81f                    SHR EAX,0x1f
0050cf9b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050cfa4  660f5ac0                  CVTPD2PS XMM0,XMM0
0050cfa8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050cfb0  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0050cfb8  f30f58c0                  ADDSS XMM0,XMM0
0050cfbc  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0050cfc1  e89a1f1e00                CALL 0x006eef60
0050cfc6  660f6ec0                  MOVD XMM0,EAX
0050cfca  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050cfce  c1e81f                    SHR EAX,0x1f
0050cfd1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050cfda  660f5ac0                  CVTPD2PS XMM0,XMM0
0050cfde  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050cfe6  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0050cfee  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
0050cff6  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
0050cffb  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
0050d000  e83b05f1ff                CALL 0x0041d540
0050d005  f30f594598                MULSS XMM0,dword ptr [EBP + -0x68]
0050d00a  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0050d012  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
0050d017  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
0050d01c  e8ff04f1ff                CALL 0x0041d520
0050d021  f30f594598                MULSS XMM0,dword ptr [EBP + -0x68]
0050d026  8d4584                    LEA EAX,[EBP + -0x7c]
0050d029  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050d02f  56                        PUSH ESI
0050d030  8b7594                    MOV ESI,dword ptr [EBP + -0x6c]
0050d033  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0050d03b  6a00                      PUSH 0x0
0050d03d  57                        PUSH EDI
0050d03e  6840b6c700                PUSH 0xc7b640
0050d043  50                        PUSH EAX
0050d044  ffb6d415b600              PUSH dword ptr [ESI + 0xb615d4]
0050d04a  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
0050d04f  ffb6d015b600              PUSH dword ptr [ESI + 0xb615d0]
0050d055  e8c6baf1ff                CALL 0x00428b20
0050d05a  83c608                    ADD ESI,0x8
0050d05d  897594                    MOV dword ptr [EBP + -0x6c],ESI
0050d060  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0050d067  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0050d06d  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0050d073  83fe68                    CMP ESI,0x68
0050d076  0f8208ffffff              JC 0x0050cf84
0050d07c  e9a2020000                JMP 0x0050d323
0050d081  e8da1e1e00                CALL 0x006eef60
0050d086  33d2                      XOR EDX,EDX
0050d088  b90b000000                MOV ECX,0xb
0050d08d  f7f1                      DIV ECX
0050d08f  8d4102                    LEA EAX,[ECX + 0x2]
0050d092  83fa07                    CMP EDX,0x7
0050d095  7609                      JBE 0x0050d0a0
0050d097  c7459812000000            MOV dword ptr [EBP + -0x68],0x12
0050d09e  eb06                      JMP 0x0050d0a6
0050d0a0  0f44c6                    CMOVZ EAX,ESI
0050d0a3  894598                    MOV dword ptr [EBP + -0x68],EAX
0050d0a6  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0050d0a9  83f801                    CMP EAX,0x1
0050d0ac  750c                      JNZ 0x0050d0ba
0050d0ae  c7459817000000            MOV dword ptr [EBP + -0x68],0x17
0050d0b5  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
0050d0b8  eb13                      JMP 0x0050d0cd
0050d0ba  83f802                    CMP EAX,0x2
0050d0bd  750e                      JNZ 0x0050d0cd
0050d0bf  c745984d000000            MOV dword ptr [EBP + -0x68],0x4d
0050d0c6  c745a400000000            MOV dword ptr [EBP + -0x5c],0x0
0050d0cd  e88e1e1e00                CALL 0x006eef60
0050d0d2  660f6ec0                  MOVD XMM0,EAX
0050d0d6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050d0da  c1e81f                    SHR EAX,0x1f
0050d0dd  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050d0e6  660f5ac0                  CVTPD2PS XMM0,XMM0
0050d0ea  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050d0f2  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0050d0fa  f30f58c0                  ADDSS XMM0,XMM0
0050d0fe  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
0050d103  e8581e1e00                CALL 0x006eef60
0050d108  660f6ec0                  MOVD XMM0,EAX
0050d10c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050d110  c1e81f                    SHR EAX,0x1f
0050d113  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050d11c  660f5ac0                  CVTPD2PS XMM0,XMM0
0050d120  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050d128  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
0050d130  f30f5f0530a6ba00          MAXSS XMM0,dword ptr [0x00baa630]
0050d138  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
0050d13d  e81e1e1e00                CALL 0x006eef60
0050d142  f30f104594                MOVSS XMM0,dword ptr [EBP + -0x6c]
0050d147  8bf0                      MOV ESI,EAX
0050d149  e8f203f1ff                CALL 0x0041d540
0050d14e  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
0050d153  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0050d15b  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
0050d163  f30f104594                MOVSS XMM0,dword ptr [EBP + -0x6c]
0050d168  e8b303f1ff                CALL 0x0041d520
0050d16d  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
0050d172  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
0050d178  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050d17e  56                        PUSH ESI
0050d17f  6a00                      PUSH 0x0
0050d181  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0050d189  57                        PUSH EDI
0050d18a  6840b6c700                PUSH 0xc7b640
0050d18f  50                        PUSH EAX
0050d190  ff75a4                    PUSH dword ptr [EBP + -0x5c]
0050d193  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
0050d198  ff7598                    PUSH dword ptr [EBP + -0x68]
0050d19b  e880b9f1ff                CALL 0x00428b20
0050d1a0  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0050d1a6  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0050d1ad  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0050d1b3  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0050d1b7  0f8566010000              JNZ 0x0050d323
0050d1bd  f30f108084030000          MOVSS XMM0,dword ptr [EAX + 0x384]
0050d1c5  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0050d1cd  f30f118084030000          MOVSS dword ptr [EAX + 0x384],XMM0
0050d1d5  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0050d1dd  e941010000                JMP 0x0050d323
0050d1e2  8db73c030000              LEA ESI,[EDI + 0x33c]
0050d1e8  3d31030000                CMP EAX,0x331
0050d1ed  0f85e2000000              JNZ 0x0050d2d5
0050d1f3  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0050d1f7  751b                      JNZ 0x0050d214
0050d1f9  e8621d1e00                CALL 0x006eef60
0050d1fe  50                        PUSH EAX
0050d1ff  6a00                      PUSH 0x0
0050d201  57                        PUSH EDI
0050d202  6840b6c700                PUSH 0xc7b640
0050d207  56                        PUSH ESI
0050d208  6a00                      PUSH 0x0
0050d20a  6828030000                PUSH 0x328
0050d20f  e9f1000000                JMP 0x0050d305
0050d214  a17816c700                MOV EAX,[0x00c71678]
0050d219  6a00                      PUSH 0x0
0050d21b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0050d221  f30f108140720000          MOVSS XMM0,dword ptr [ECX + 0x7240]
0050d229  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0050d230  0f97c0                    SETA AL
0050d233  50                        PUSH EAX
0050d234  6a01                      PUSH 0x1
0050d236  51                        PUSH ECX
0050d237  c704240000a042            MOV dword ptr [ESP],0x42a00000
0050d23e  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
0050d244  56                        PUSH ESI
0050d245  50                        PUSH EAX
0050d246  e8d5623000                CALL 0x00813520
0050d24b  8bf0                      MOV ESI,EAX
0050d24d  e80e1d1e00                CALL 0x006eef60
0050d252  660f6ec0                  MOVD XMM0,EAX
0050d256  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050d25a  c1e81f                    SHR EAX,0x1f
0050d25d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050d266  660f5ac0                  CVTPD2PS XMM0,XMM0
0050d26a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050d272  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0050d27a  f30f58c0                  ADDSS XMM0,XMM0
0050d27e  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
0050d283  e8b802f1ff                CALL 0x0041d540
0050d288  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0050d290  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0050d294  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
0050d299  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
0050d29e  e87d02f1ff                CALL 0x0041d520
0050d2a3  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0050d2ab  8d45e4                    LEA EAX,[EBP + -0x1c]
0050d2ae  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0050d2b4  8bd7                      MOV EDX,EDI
0050d2b6  f30f1015c0adba00          MOVSS XMM2,dword ptr [0x00baadc0]
0050d2be  6a00                      PUSH 0x0
0050d2c0  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
0050d2c5  50                        PUSH EAX
0050d2c6  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0050d2cb  e8f0f10400                CALL 0x0055c4c0
0050d2d0  83c408                    ADD ESP,0x8
0050d2d3  eb4e                      JMP 0x0050d323
0050d2d5  e8861c1e00                CALL 0x006eef60
0050d2da  8bf0                      MOV ESI,EAX
0050d2dc  83e601                    AND ESI,0x1
0050d2df  e87c1c1e00                CALL 0x006eef60
0050d2e4  50                        PUSH EAX
0050d2e5  6a00                      PUSH 0x0
0050d2e7  57                        PUSH EDI
0050d2e8  6840b6c700                PUSH 0xc7b640
0050d2ed  8d873c030000              LEA EAX,[EDI + 0x33c]
0050d2f3  85f6                      TEST ESI,ESI
0050d2f5  50                        PUSH EAX
0050d2f6  b85e000000                MOV EAX,0x5e
0050d2fb  b91d000000                MOV ECX,0x1d
0050d300  56                        PUSH ESI
0050d301  0f45c1                    CMOVNZ EAX,ECX
0050d304  50                        PUSH EAX
0050d305  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050d30b  e810b8f1ff                CALL 0x00428b20
0050d310  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0050d316  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0050d31c  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0050d323  836da001                  SUB dword ptr [EBP + -0x60],0x1
0050d327  be0e000000                MOV ESI,0xe
0050d32c  0f852efcffff              JNZ 0x0050cf60
0050d332  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050d339  740a                      JZ 0x0050d345
0050d33b  c7876c0300000000803f      MOV dword ptr [EDI + 0x36c],0x3f800000
0050d345  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0050d348  64890d00000000            MOV dword ptr FS:[0x0],ECX
0050d34f  59                        POP ECX
0050d350  5f                        POP EDI
0050d351  5e                        POP ESI
0050d352  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0050d355  33cd                      XOR ECX,EBP
0050d357  e8cf1d5e00                CALL 0x00aef12b
0050d35c  8be5                      MOV ESP,EBP
0050d35e  5d                        POP EBP
0050d35f  8be3                      MOV ESP,EBX
0050d361  5b                        POP EBX
0050d362  c3                        RET
