; J460 NPC AI 0x0099f2c0 HELPER_HomingLaser_TurnHorizontal
; types=7
; identities=7.*
; entry=0099f2c0
0099f2c0  53                        PUSH EBX
0099f2c1  8bdc                      MOV EBX,ESP
0099f2c3  83ec08                    SUB ESP,0x8
0099f2c6  83e4f8                    AND ESP,0xfffffff8
0099f2c9  83c404                    ADD ESP,0x4
0099f2cc  55                        PUSH EBP
0099f2cd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0099f2d0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0099f2d4  8bec                      MOV EBP,ESP
0099f2d6  6aff                      PUSH -0x1
0099f2d8  68e0d9b000                PUSH 0xb0d9e0
0099f2dd  64a100000000              MOV EAX,FS:[0x0]
0099f2e3  50                        PUSH EAX
0099f2e4  53                        PUSH EBX
0099f2e5  83ec68                    SUB ESP,0x68
0099f2e8  56                        PUSH ESI
0099f2e9  57                        PUSH EDI
0099f2ea  a1b493bf00                MOV EAX,[0x00bf93b4]
0099f2ef  33c5                      XOR EAX,EBP
0099f2f1  50                        PUSH EAX
0099f2f2  8d45f4                    LEA EAX,[EBP + -0xc]
0099f2f5  64a300000000              MOV FS:[0x0],EAX
0099f2fb  8bf9                      MOV EDI,ECX
0099f2fd  f30f10470c                MOVSS XMM0,dword ptr [EDI + 0xc]
0099f302  0f28c8                    MOVAPS XMM1,XMM0
0099f305  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
0099f30a  f30f5c4f04                SUBSS XMM1,dword ptr [EDI + 0x4]
0099f30f  f30f104710                MOVSS XMM0,dword ptr [EDI + 0x10]
0099f314  0f28d0                    MOVAPS XMM2,XMM0
0099f317  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0099f31c  f30f5c5708                SUBSS XMM2,dword ptr [EDI + 0x8]
0099f321  0f28c1                    MOVAPS XMM0,XMM1
0099f324  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0099f329  f30f59c1                  MULSS XMM0,XMM1
0099f32d  0f28ca                    MOVAPS XMM1,XMM2
0099f330  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
0099f335  f30f59ca                  MULSS XMM1,XMM2
0099f339  f30f58c1                  ADDSS XMM0,XMM1
0099f33d  e80e67a9ff                CALL 0x00435a50
0099f342  0f57c9                    XORPS XMM1,XMM1
0099f345  0f2fc1                    COMISS XMM0,XMM1
0099f348  7628                      JBE 0x0099f372
0099f34a  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0099f352  f30f5ec8                  DIVSS XMM1,XMM0
0099f356  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
0099f35b  f30f59c1                  MULSS XMM0,XMM1
0099f35f  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0099f364  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
0099f369  f30f59c1                  MULSS XMM0,XMM1
0099f36d  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
0099f372  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0099f37a  e8c1e1a7ff                CALL 0x0041d540
0099f37f  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
0099f384  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
0099f38c  e88fe1a7ff                CALL 0x0041d520
0099f391  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
0099f396  f30f106de8                MOVSS XMM5,dword ptr [EBP + -0x18]
0099f39b  f30f596dc8                MULSS XMM5,dword ptr [EBP + -0x38]
0099f3a0  f30f59c8                  MULSS XMM1,XMM0
0099f3a4  f30f5ce9                  SUBSS XMM5,XMM1
0099f3a8  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
0099f3ad  f30f59c8                  MULSS XMM1,XMM0
0099f3b1  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
0099f3b6  f30f5945c8                MULSS XMM0,dword ptr [EBP + -0x38]
0099f3bb  f30f116dd0                MOVSS dword ptr [EBP + -0x30],XMM5
0099f3c0  f30f58c8                  ADDSS XMM1,XMM0
0099f3c4  f30f104708                MOVSS XMM0,dword ptr [EDI + 0x8]
0099f3c9  f30f5c45d8                SUBSS XMM0,dword ptr [EBP + -0x28]
0099f3ce  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
0099f3d3  f30f104f04                MOVSS XMM1,dword ptr [EDI + 0x4]
0099f3d8  f30f5c4dcc                SUBSS XMM1,dword ptr [EBP + -0x34]
0099f3dd  f30f59c0                  MULSS XMM0,XMM0
0099f3e1  f30f59c9                  MULSS XMM1,XMM1
0099f3e5  f30f58c1                  ADDSS XMM0,XMM1
0099f3e9  e86266a9ff                CALL 0x00435a50
0099f3ee  8b07                      MOV EAX,dword ptr [EDI]
0099f3f0  33c9                      XOR ECX,ECX
0099f3f2  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
0099f3f7  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0099f3ff  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
0099f406  8b90c8030000              MOV EDX,dword ptr [EAX + 0x3c8]
0099f40c  a17816c700                MOV EAX,[0x00c71678]
0099f411  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
0099f416  8955c8                    MOV dword ptr [EBP + -0x38],EDX
0099f419  894dcc                    MOV dword ptr [EBP + -0x34],ECX
0099f41c  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0099f422  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
0099f425  398864120000              CMP dword ptr [EAX + 0x1264],ECX
0099f42b  0f8607060000              JBE 0x0099fa38
0099f431  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
0099f437  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
0099f43a  3bf2                      CMP ESI,EDX
0099f43c  747c                      JZ 0x0099f4ba
0099f43e  a17816c700                MOV EAX,[0x00c71678]
0099f443  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0099f44a  7c08                      JL 0x0099f454
0099f44c  8b5628                    MOV EDX,dword ptr [ESI + 0x28]
0099f44f  83fa01                    CMP EDX,0x1
0099f452  740d                      JZ 0x0099f461
0099f454  8b5628                    MOV EDX,dword ptr [ESI + 0x28]
0099f457  8d42f6                    LEA EAX,[EDX + -0xa]
0099f45a  3ddd030000                CMP EAX,0x3dd
0099f45f  7759                      JA 0x0099f4ba
0099f461  8b8688010000              MOV EAX,dword ptr [ESI + 0x188]
0099f467  83f801                    CMP EAX,0x1
0099f46a  744e                      JZ 0x0099f4ba
0099f46c  85c0                      TEST EAX,EAX
0099f46e  744a                      JZ 0x0099f4ba
0099f470  80beb003000000            CMP byte ptr [ESI + 0x3b0],0x0
0099f477  7541                      JNZ 0x0099f4ba
0099f479  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0099f480  7538                      JNZ 0x0099f4ba
0099f482  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0099f488  8b8e68010000              MOV ECX,dword ptr [ESI + 0x168]
0099f48e  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0099f491  8bc1                      MOV EAX,ECX
0099f493  83e010                    AND EAX,0x10
0099f496  83c800                    OR EAX,0x0
0099f499  7410                      JZ 0x0099f4ab
0099f49b  81fa22030000              CMP EDX,0x322
0099f4a1  7408                      JZ 0x0099f4ab
0099f4a3  81fa62030000              CMP EDX,0x362
0099f4a9  750f                      JNZ 0x0099f4ba
0099f4ab  81e110000020              AND ECX,0x20000010
0099f4b1  c645ef01                  MOV byte ptr [EBP + -0x11],0x1
0099f4b5  83c900                    OR ECX,0x0
0099f4b8  7404                      JZ 0x0099f4be
0099f4ba  c645ef00                  MOV byte ptr [EBP + -0x11],0x0
0099f4be  a17816c700                MOV EAX,[0x00c71678]
0099f4c3  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0099f4ca  7c1e                      JL 0x0099f4ea
0099f4cc  837e2803                  CMP dword ptr [ESI + 0x28],0x3
0099f4d0  7518                      JNZ 0x0099f4ea
0099f4d2  837e2c43                  CMP dword ptr [ESI + 0x2c],0x43
0099f4d6  7512                      JNZ 0x0099f4ea
0099f4d8  ff75c8                    PUSH dword ptr [EBP + -0x38]
0099f4db  8bce                      MOV ECX,ESI
0099f4dd  e8be9ad0ff                CALL 0x006a8fa0
0099f4e2  84c0                      TEST AL,AL
0099f4e4  7504                      JNZ 0x0099f4ea
0099f4e6  b001                      MOV AL,0x1
0099f4e8  eb02                      JMP 0x0099f4ec
0099f4ea  32c0                      XOR AL,AL
0099f4ec  807def00                  CMP byte ptr [EBP + -0x11],0x0
0099f4f0  7508                      JNZ 0x0099f4fa
0099f4f2  84c0                      TEST AL,AL
0099f4f4  0f8484010000              JZ 0x0099f67e
0099f4fa  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0099f502  f30f109e40030000          MOVSS XMM3,dword ptr [ESI + 0x340]
0099f50a  f30f106704                MOVSS XMM4,dword ptr [EDI + 0x4]
0099f50f  f30f106f08                MOVSS XMM5,dword ptr [EDI + 0x8]
0099f514  f30f107de4                MOVSS XMM7,dword ptr [EBP + -0x1c]
0099f519  f30f1075e8                MOVSS XMM6,dword ptr [EBP + -0x18]
0099f51e  0f28d7                    MOVAPS XMM2,XMM7
0099f521  f30f114da8                MOVSS dword ptr [EBP + -0x58],XMM1
0099f526  0f28c6                    MOVAPS XMM0,XMM6
0099f529  f30f115dac                MOVSS dword ptr [EBP + -0x54],XMM3
0099f52e  f30f5ccc                  SUBSS XMM1,XMM4
0099f532  f30f5cdd                  SUBSS XMM3,XMM5
0099f536  f30f59c1                  MULSS XMM0,XMM1
0099f53a  f30f594dd0                MULSS XMM1,dword ptr [EBP + -0x30]
0099f53f  f30f59d3                  MULSS XMM2,XMM3
0099f543  f30f595dd4                MULSS XMM3,dword ptr [EBP + -0x2c]
0099f548  f30f58d0                  ADDSS XMM2,XMM0
0099f54c  f30f58d9                  ADDSS XMM3,XMM1
0099f550  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
0099f555  0f2f15a0a9ba00            COMISS XMM2,dword ptr [0x00baa9a0]
0099f55c  f30f1155c0                MOVSS dword ptr [EBP + -0x40],XMM2
0099f561  f30f115dbc                MOVSS dword ptr [EBP + -0x44],XMM3
0099f566  0f8617010000              JBE 0x0099f683
0099f56c  0f2fca                    COMISS XMM1,XMM2
0099f56f  0f860e010000              JBE 0x0099f683
0099f575  8b0f                      MOV ECX,dword ptr [EDI]
0099f577  0f28cb                    MOVAPS XMM1,XMM3
0099f57a  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0099f581  f30f108170030000          MOVSS XMM0,dword ptr [ECX + 0x370]
0099f589  f30f588670030000          ADDSS XMM0,dword ptr [ESI + 0x370]
0099f591  0f2fc8                    COMISS XMM1,XMM0
0099f594  0f86e4000000              JBE 0x0099f67e
0099f59a  8b8184010000              MOV EAX,dword ptr [ECX + 0x184]
0099f5a0  85c0                      TEST EAX,EAX
0099f5a2  0f84a5000000              JZ 0x0099f64d
0099f5a8  83f803                    CMP EAX,0x3
0099f5ab  0f849c000000              JZ 0x0099f64d
0099f5b1  0f108928040000            MOVUPS XMM1,xmmword ptr [ECX + 0x428]
0099f5b8  0f28c1                    MOVAPS XMM0,XMM1
0099f5bb  660f7ec9                  MOVD ECX,XMM1
0099f5bf  660f73d808                PSRLDQ XMM0,0x8
0099f5c4  660f7ec2                  MOVD EDX,XMM0
0099f5c8  0f28c1                    MOVAPS XMM0,XMM1
0099f5cb  230db04bc300              AND ECX,dword ptr [0x00c34bb0]
0099f5d1  660f73d80c                PSRLDQ XMM0,0xc
0099f5d6  2315b84bc300              AND EDX,dword ptr [0x00c34bb8]
0099f5dc  660f7ec0                  MOVD EAX,XMM0
0099f5e0  660f73d904                PSRLDQ XMM1,0x4
0099f5e5  2305bc4bc300              AND EAX,dword ptr [0x00c34bbc]
0099f5eb  8945c4                    MOV dword ptr [EBP + -0x3c],EAX
0099f5ee  660f7ec8                  MOVD EAX,XMM1
0099f5f2  2305b44bc300              AND EAX,dword ptr [0x00c34bb4]
0099f5f8  0bc8                      OR ECX,EAX
0099f5fa  7551                      JNZ 0x0099f64d
0099f5fc  0b55c4                    OR EDX,dword ptr [EBP + -0x3c]
0099f5ff  754c                      JNZ 0x0099f64d
0099f601  a17816c700                MOV EAX,[0x00c71678]
0099f606  8d4da8                    LEA ECX,[EBP + -0x58]
0099f609  0f28c6                    MOVAPS XMM0,XMM6
0099f60c  f30f59c2                  MULSS XMM0,XMM2
0099f610  52                        PUSH EDX
0099f611  52                        PUSH EDX
0099f612  52                        PUSH EDX
0099f613  f30f58c4                  ADDSS XMM0,XMM4
0099f617  52                        PUSH EDX
0099f618  6a03                      PUSH 0x3
0099f61a  51                        PUSH ECX
0099f61b  8d4da0                    LEA ECX,[EBP + -0x60]
0099f61e  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
0099f623  0f28c7                    MOVAPS XMM0,XMM7
0099f626  f30f59c2                  MULSS XMM0,XMM2
0099f62a  51                        PUSH ECX
0099f62b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0099f631  f30f58c5                  ADDSS XMM0,XMM5
0099f635  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0099f63a  e8b117e5ff                CALL 0x007f0df0
0099f63f  84c0                      TEST AL,AL
0099f641  743b                      JZ 0x0099f67e
0099f643  f30f1055c0                MOVSS XMM2,dword ptr [EBP + -0x40]
0099f648  f30f105dbc                MOVSS XMM3,dword ptr [EBP + -0x44]
0099f64d  0f57c0                    XORPS XMM0,XMM0
0099f650  8975d8                    MOV dword ptr [EBP + -0x28],ESI
0099f653  0f2fd8                    COMISS XMM3,XMM0
0099f656  0f28ca                    MOVAPS XMM1,XMM2
0099f659  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
0099f65e  760f                      JBE 0x0099f66f
0099f660  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0099f668  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
0099f66d  eb1c                      JMP 0x0099f68b
0099f66f  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0099f677  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
0099f67c  eb0d                      JMP 0x0099f68b
0099f67e  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
0099f683  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
0099f688  8b75d8                    MOV ESI,dword ptr [EBP + -0x28]
0099f68b  8b4dcc                    MOV ECX,dword ptr [EBP + -0x34]
0099f68e  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
0099f691  41                        INC ECX
0099f692  8b55c8                    MOV EDX,dword ptr [EBP + -0x38]
0099f695  894dcc                    MOV dword ptr [EBP + -0x34],ECX
0099f698  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
0099f69e  0f828dfdffff              JC 0x0099f431
0099f6a4  85f6                      TEST ESI,ESI
0099f6a6  0f848c030000              JZ 0x0099fa38
0099f6ac  f30f1055d0                MOVSS XMM2,dword ptr [EBP + -0x30]
0099f6b1  8b4748                    MOV EAX,dword ptr [EDI + 0x48]
0099f6b4  8b4f4c                    MOV ECX,dword ptr [EDI + 0x4c]
0099f6b7  f30f106de4                MOVSS XMM5,dword ptr [EBP + -0x1c]
0099f6bc  2bc8                      SUB ECX,EAX
0099f6be  f30f105f04                MOVSS XMM3,dword ptr [EDI + 0x4]
0099f6c3  0f28fd                    MOVAPS XMM7,XMM5
0099f6c6  f30f106708                MOVSS XMM4,dword ptr [EDI + 0x8]
0099f6cb  f30f59d0                  MULSS XMM2,XMM0
0099f6cf  8945c8                    MOV dword ptr [EBP + -0x38],EAX
0099f6d2  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099f6d7  f7e9                      IMUL ECX
0099f6d9  f30f59f9                  MULSS XMM7,XMM1
0099f6dd  f30f1155d0                MOVSS dword ptr [EBP + -0x30],XMM2
0099f6e2  f30f1155a0                MOVSS dword ptr [EBP + -0x60],XMM2
0099f6e7  f30f1055d4                MOVSS XMM2,dword ptr [EBP + -0x2c]
0099f6ec  f30f58fc                  ADDSS XMM7,XMM4
0099f6f0  f30f59d0                  MULSS XMM2,XMM0
0099f6f4  c1fa02                    SAR EDX,0x2
0099f6f7  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
0099f6fc  8bc2                      MOV EAX,EDX
0099f6fe  0f28f0                    MOVAPS XMM6,XMM0
0099f701  c1e81f                    SHR EAX,0x1f
0099f704  f30f59f1                  MULSS XMM6,XMM1
0099f708  03c2                      ADD EAX,EDX
0099f70a  f30f1155d4                MOVSS dword ptr [EBP + -0x2c],XMM2
0099f70f  f30f1155a4                MOVSS dword ptr [EBP + -0x5c],XMM2
0099f714  f30f117dcc                MOVSS dword ptr [EBP + -0x34],XMM7
0099f719  f30f58f3                  ADDSS XMM6,XMM3
0099f71d  f30f117dac                MOVSS dword ptr [EBP + -0x54],XMM7
0099f722  f30f1175d8                MOVSS dword ptr [EBP + -0x28],XMM6
0099f727  f30f1175a8                MOVSS dword ptr [EBP + -0x58],XMM6
0099f72c  83f801                    CMP EAX,0x1
0099f72f  7604                      JBE 0x0099f735
0099f731  83474ce8                  ADD dword ptr [EDI + 0x4c],-0x18
0099f735  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
0099f738  8bc8                      MOV ECX,EAX
0099f73a  2b4dc8                    SUB ECX,dword ptr [EBP + -0x38]
0099f73d  b8abaaaa2a                MOV EAX,0x2aaaaaab
0099f742  f7e9                      IMUL ECX
0099f744  c1fa02                    SAR EDX,0x2
0099f747  8bc2                      MOV EAX,EDX
0099f749  c1e81f                    SHR EAX,0x1f
0099f74c  03c2                      ADD EAX,EDX
0099f74e  83f801                    CMP EAX,0x1
0099f751  7604                      JBE 0x0099f757
0099f753  83474ce8                  ADD dword ptr [EDI + 0x4c],-0x18
0099f757  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
0099f75a  f30f101524a9ba00          MOVSS XMM2,dword ptr [0x00baa924]
0099f762  3945c8                    CMP dword ptr [EBP + -0x38],EAX
0099f765  756a                      JNZ 0x0099f7d1
0099f767  0f28c8                    MOVAPS XMM1,XMM0
0099f76a  0f28c5                    MOVAPS XMM0,XMM5
0099f76d  f30f59ca                  MULSS XMM1,XMM2
0099f771  f30f59c2                  MULSS XMM0,XMM2
0099f775  f30f58cb                  ADDSS XMM1,XMM3
0099f779  f30f115d88                MOVSS dword ptr [EBP + -0x78],XMM3
0099f77e  f30f11658c                MOVSS dword ptr [EBP + -0x74],XMM4
0099f783  f30f58c4                  ADDSS XMM0,XMM4
0099f787  f30f115d90                MOVSS dword ptr [EBP + -0x70],XMM3
0099f78c  f30f116594                MOVSS dword ptr [EBP + -0x6c],XMM4
0099f791  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
0099f796  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
0099f79b  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
0099f79e  7417                      JZ 0x0099f7b7
0099f7a0  0f104588                  MOVUPS XMM0,xmmword ptr [EBP + -0x78]
0099f7a4  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099f7a7  f30f7e4598                MOVQ XMM0,qword ptr [EBP + -0x68]
0099f7ac  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099f7b1  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
0099f7b5  eb17                      JMP 0x0099f7ce
0099f7b7  8d4d88                    LEA ECX,[EBP + -0x78]
0099f7ba  51                        PUSH ECX
0099f7bb  50                        PUSH EAX
0099f7bc  8d4f48                    LEA ECX,[EDI + 0x48]
0099f7bf  e8ec1f0000                CALL 0x009a17b0
0099f7c4  f30f1075d8                MOVSS XMM6,dword ptr [EBP + -0x28]
0099f7c9  f30f107dcc                MOVSS XMM7,dword ptr [EBP + -0x34]
0099f7ce  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
0099f7d1  0f28ee                    MOVAPS XMM5,XMM6
0099f7d4  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
0099f7d9  0f28e7                    MOVAPS XMM4,XMM7
0099f7dc  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
0099f7e4  0f28de                    MOVAPS XMM3,XMM6
0099f7e7  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
0099f7ec  0f28d7                    MOVAPS XMM2,XMM7
0099f7ef  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
0099f7f7  f30f5ce8                  SUBSS XMM5,XMM0
0099f7fb  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
0099f800  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
0099f808  f30f5ce0                  SUBSS XMM4,XMM0
0099f80c  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
0099f811  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
0099f819  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0099f81e  0f28ce                    MOVAPS XMM1,XMM6
0099f821  f30f1075e4                MOVSS XMM6,dword ptr [EBP + -0x1c]
0099f826  f30f5cd8                  SUBSS XMM3,XMM0
0099f82a  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
0099f82f  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
0099f837  f30f59357ca8ba00          MULSS XMM6,dword ptr [0x00baa87c]
0099f83f  f30f5cd0                  SUBSS XMM2,XMM0
0099f843  0f28c7                    MOVAPS XMM0,XMM7
0099f846  f30f5c4de8                SUBSS XMM1,dword ptr [EBP + -0x18]
0099f84b  f30f5cc6                  SUBSS XMM0,XMM6
0099f84f  f30f1075d8                MOVSS XMM6,dword ptr [EBP + -0x28]
0099f854  f30f115d90                MOVSS dword ptr [EBP + -0x70],XMM3
0099f859  f30f116d98                MOVSS dword ptr [EBP + -0x68],XMM5
0099f85e  f30f115594                MOVSS dword ptr [EBP + -0x6c],XMM2
0099f863  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
0099f868  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0099f86d  f30f11659c                MOVSS dword ptr [EBP + -0x64],XMM4
0099f872  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
0099f875  7417                      JZ 0x0099f88e
0099f877  0f104588                  MOVUPS XMM0,xmmword ptr [EBP + -0x78]
0099f87b  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099f87e  f30f7e4598                MOVQ XMM0,qword ptr [EBP + -0x68]
0099f883  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099f888  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
0099f88c  eb17                      JMP 0x0099f8a5
0099f88e  8d4d88                    LEA ECX,[EBP + -0x78]
0099f891  51                        PUSH ECX
0099f892  50                        PUSH EAX
0099f893  8d4f48                    LEA ECX,[EDI + 0x48]
0099f896  e8151f0000                CALL 0x009a17b0
0099f89b  f30f1075d8                MOVSS XMM6,dword ptr [EBP + -0x28]
0099f8a0  f30f107dcc                MOVSS XMM7,dword ptr [EBP + -0x34]
0099f8a5  f30f104dd0                MOVSS XMM1,dword ptr [EBP + -0x30]
0099f8aa  f30f1055d4                MOVSS XMM2,dword ptr [EBP + -0x2c]
0099f8af  0f28e9                    MOVAPS XMM5,XMM1
0099f8b2  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
0099f8b7  0f28e2                    MOVAPS XMM4,XMM2
0099f8ba  f30f592d50a9ba00          MULSS XMM5,dword ptr [0x00baa950]
0099f8c2  0f28d9                    MOVAPS XMM3,XMM1
0099f8c5  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
0099f8c8  f30f592550a9ba00          MULSS XMM4,dword ptr [0x00baa950]
0099f8d0  f30f58ee                  ADDSS XMM5,XMM6
0099f8d4  f30f591d84a7ba00          MULSS XMM3,dword ptr [0x00baa784]
0099f8dc  f30f58e7                  ADDSS XMM4,XMM7
0099f8e0  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
0099f8e8  f30f58de                  ADDSS XMM3,XMM6
0099f8ec  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
0099f8f4  f30f58d7                  ADDSS XMM2,XMM7
0099f8f8  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0099f900  f30f58ce                  ADDSS XMM1,XMM6
0099f904  f30f116d98                MOVSS dword ptr [EBP + -0x68],XMM5
0099f909  f30f115d90                MOVSS dword ptr [EBP + -0x70],XMM3
0099f90e  f30f58c7                  ADDSS XMM0,XMM7
0099f912  f30f11659c                MOVSS dword ptr [EBP + -0x64],XMM4
0099f917  f30f115594                MOVSS dword ptr [EBP + -0x6c],XMM2
0099f91c  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
0099f921  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0099f926  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
0099f929  7417                      JZ 0x0099f942
0099f92b  0f104588                  MOVUPS XMM0,xmmword ptr [EBP + -0x78]
0099f92f  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099f932  f30f7e4598                MOVQ XMM0,qword ptr [EBP + -0x68]
0099f937  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099f93c  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
0099f940  eb0d                      JMP 0x0099f94f
0099f942  8d4d88                    LEA ECX,[EBP + -0x78]
0099f945  51                        PUSH ECX
0099f946  50                        PUSH EAX
0099f947  8d4f48                    LEA ECX,[EDI + 0x48]
0099f94a  e8611e0000                CALL 0x009a17b0
0099f94f  8b0f                      MOV ECX,dword ptr [EDI]
0099f951  8d45a0                    LEA EAX,[EBP + -0x60]
0099f954  50                        PUSH EAX
0099f955  8d45a8                    LEA EAX,[EBP + -0x58]
0099f958  50                        PUSH EAX
0099f959  8d45b0                    LEA EAX,[EBP + -0x50]
0099f95c  50                        PUSH EAX
0099f95d  e80e03fdff                CALL 0x0096fc70
0099f962  f30f1065d0                MOVSS XMM4,dword ptr [EBP + -0x30]
0099f967  f30f592524a9ba00          MULSS XMM4,dword ptr [0x00baa924]
0099f96f  f30f1018                  MOVSS XMM3,dword ptr [EAX]
0099f973  0f28cb                    MOVAPS XMM1,XMM3
0099f976  f30f115f0c                MOVSS dword ptr [EDI + 0xc],XMM3
0099f97b  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0099f980  f30f5ccc                  SUBSS XMM1,XMM4
0099f984  f30f1065d4                MOVSS XMM4,dword ptr [EBP + -0x2c]
0099f989  0f28c2                    MOVAPS XMM0,XMM2
0099f98c  f30f592524a9ba00          MULSS XMM4,dword ptr [0x00baa924]
0099f994  f30f115710                MOVSS dword ptr [EDI + 0x10],XMM2
0099f999  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
0099f99c  f30f5cc4                  SUBSS XMM0,XMM4
0099f9a0  f30f115d88                MOVSS dword ptr [EBP + -0x78],XMM3
0099f9a5  f30f11558c                MOVSS dword ptr [EBP + -0x74],XMM2
0099f9aa  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
0099f9af  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
0099f9b4  0f28c3                    MOVAPS XMM0,XMM3
0099f9b7  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
0099f9bc  0f28c2                    MOVAPS XMM0,XMM2
0099f9bf  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
0099f9c4  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
0099f9c7  7417                      JZ 0x0099f9e0
0099f9c9  0f104588                  MOVUPS XMM0,xmmword ptr [EBP + -0x78]
0099f9cd  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099f9d0  f30f7e4598                MOVQ XMM0,qword ptr [EBP + -0x68]
0099f9d5  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099f9da  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
0099f9de  eb0d                      JMP 0x0099f9ed
0099f9e0  8d4d88                    LEA ECX,[EBP + -0x78]
0099f9e3  51                        PUSH ECX
0099f9e4  50                        PUSH EAX
0099f9e5  8d4f48                    LEA ECX,[EDI + 0x48]
0099f9e8  e8c31d0000                CALL 0x009a17b0
0099f9ed  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0099f9f0  3b4738                    CMP EAX,dword ptr [EDI + 0x38]
0099f9f3  7443                      JZ 0x0099fa38
0099f9f5  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
0099f9f8  f30f104f0c                MOVSS XMM1,dword ptr [EDI + 0xc]
0099f9fd  f30f104710                MOVSS XMM0,dword ptr [EDI + 0x10]
0099fa02  f30f5c40fc                SUBSS XMM0,dword ptr [EAX + -0x4]
0099fa07  f30f5c48f8                SUBSS XMM1,dword ptr [EAX + -0x8]
0099fa0c  f30f59c0                  MULSS XMM0,XMM0
0099fa10  f30f59c9                  MULSS XMM1,XMM1
0099fa14  f30f58c1                  ADDSS XMM0,XMM1
0099fa18  e83360a9ff                CALL 0x00435a50
0099fa1d  0f2f0504a9ba00            COMISS XMM0,dword ptr [0x00baa904]
0099fa24  7612                      JBE 0x0099fa38
0099fa26  8b471c                    MOV EAX,dword ptr [EDI + 0x1c]
0099fa29  894720                    MOV dword ptr [EDI + 0x20],EAX
0099fa2c  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0099fa2f  894738                    MOV dword ptr [EDI + 0x38],EAX
0099fa32  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0099fa35  89472c                    MOV dword ptr [EDI + 0x2c],EAX
0099fa38  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0099fa3b  64890d00000000            MOV dword ptr FS:[0x0],ECX
0099fa42  59                        POP ECX
0099fa43  5f                        POP EDI
0099fa44  5e                        POP ESI
0099fa45  8be5                      MOV ESP,EBP
0099fa47  5d                        POP EBP
0099fa48  8be3                      MOV ESP,EBX
0099fa4a  5b                        POP EBX
0099fa4b  c20400                    RET 0x4
