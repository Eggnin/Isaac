; J460 NPC AI 0x005135d0 AI_005135d0
; types=41,254,283
; identities=254.0.0,283.0.0,41.0.0,41.1.0,41.2.0,41.3.0,41.4.0
; entry=005135d0
005135d0  53                        PUSH EBX
005135d1  8bdc                      MOV EBX,ESP
005135d3  83ec08                    SUB ESP,0x8
005135d6  83e4f8                    AND ESP,0xfffffff8
005135d9  83c404                    ADD ESP,0x4
005135dc  55                        PUSH EBP
005135dd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005135e0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005135e4  8bec                      MOV EBP,ESP
005135e6  6aff                      PUSH -0x1
005135e8  684d43af00                PUSH 0xaf434d
005135ed  64a100000000              MOV EAX,FS:[0x0]
005135f3  50                        PUSH EAX
005135f4  53                        PUSH EBX
005135f5  83ec78                    SUB ESP,0x78
005135f8  a1b493bf00                MOV EAX,[0x00bf93b4]
005135fd  33c5                      XOR EAX,EBP
005135ff  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00513602  56                        PUSH ESI
00513603  57                        PUSH EDI
00513604  50                        PUSH EAX
00513605  8d45f4                    LEA EAX,[EBP + -0xc]
00513608  64a300000000              MOV FS:[0x0],EAX
0051360e  8bf9                      MOV EDI,ECX
00513610  c7857cffffff00000000      MOV dword ptr [EBP + 0xffffff7c],0x0
0051361a  837f2829                  CMP dword ptr [EDI + 0x28],0x29
0051361e  0f859d000000              JNZ 0x005136c1
00513624  837f2c04                  CMP dword ptr [EDI + 0x2c],0x4
00513628  0f8593000000              JNZ 0x005136c1
0051362e  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00513631  c645a701                  MOV byte ptr [EBP + -0x59],0x1
00513635  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00513638  742c                      JZ 0x00513666
0051363a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00513640  817810e8030000            CMP dword ptr [EAX + 0x10],0x3e8
00513647  7515                      JNZ 0x0051365e
00513649  81781493000000            CMP dword ptr [EAX + 0x14],0x93
00513650  750c                      JNZ 0x0051365e
00513652  83781801                  CMP dword ptr [EAX + 0x18],0x1
00513656  7406                      JZ 0x0051365e
00513658  c70000000000              MOV dword ptr [EAX],0x0
0051365e  83c038                    ADD EAX,0x38
00513661  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00513664  75da                      JNZ 0x00513640
00513666  f30f109f50030000          MOVSS XMM3,dword ptr [EDI + 0x350]
0051366e  0f57d2                    XORPS XMM2,XMM2
00513671  0f2fd3                    COMISS XMM2,XMM3
00513674  7709                      JA 0x0051367f
00513676  0f2f97b80b0000            COMISS XMM2,dword ptr [EDI + 0xbb8]
0051367d  7646                      JBE 0x005136c5
0051367f  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00513687  0f28c8                    MOVAPS XMM1,XMM0
0051368a  f30f580590a4ba00          ADDSS XMM0,dword ptr [0x00baa490]
00513692  f30f58cb                  ADDSS XMM1,XMM3
00513696  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0051369e  0f2fca                    COMISS XMM1,XMM2
005136a1  f30f118f50030000          MOVSS dword ptr [EDI + 0x350],XMM1
005136a9  761a                      JBE 0x005136c5
005136ab  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
005136b5  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
005136bf  eb04                      JMP 0x005136c5
005136c1  c645a700                  MOV byte ptr [EBP + -0x59],0x0
005136c5  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
005136cc  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005136cf  0f857a010000              JNZ 0x0051384f
005136d5  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005136df  3dfe000000                CMP EAX,0xfe
005136e4  750f                      JNZ 0x005136f5
005136e6  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
005136f0  e9e3180000                JMP 0x00514fd8
005136f5  83f829                    CMP EAX,0x29
005136f8  0f85da180000              JNZ 0x00514fd8
005136fe  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
00513702  0f85d0180000              JNZ 0x00514fd8
00513708  a17816c700                MOV EAX,[0x00c71678]
0051370d  6a00                      PUSH 0x0
0051370f  6a00                      PUSH 0x0
00513711  6aff                      PUSH -0x1
00513713  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00513719  8d45dc                    LEA EAX,[EBP + -0x24]
0051371c  6aff                      PUSH -0x1
0051371e  6848030000                PUSH 0x348
00513723  81c118120000              ADD ECX,0x1218
00513729  50                        PUSH EAX
0051372a  e83178f0ff                CALL 0x0041af60
0051372f  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00513736  33f6                      XOR ESI,ESI
00513738  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0051373b  33c9                      XOR ECX,ECX
0051373d  85d2                      TEST EDX,EDX
0051373f  0f84c7000000              JZ 0x0051380c
00513745  f30f105594                MOVSS XMM2,dword ptr [EBP + -0x6c]
0051374a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00513750  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
00513753  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00513756  83b8bc03000000            CMP dword ptr [EAX + 0x3bc],0x0
0051375d  753a                      JNZ 0x00513799
0051375f  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00513767  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0051376f  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
00513777  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
0051377f  f30f59c9                  MULSS XMM1,XMM1
00513783  f30f59c0                  MULSS XMM0,XMM0
00513787  f30f58c8                  ADDSS XMM1,XMM0
0051378b  85f6                      TEST ESI,ESI
0051378d  7405                      JZ 0x00513794
0051378f  0f2fd1                    COMISS XMM2,XMM1
00513792  7605                      JBE 0x00513799
00513794  8bf0                      MOV ESI,EAX
00513796  0f28d1                    MOVAPS XMM2,XMM1
00513799  41                        INC ECX
0051379a  3bca                      CMP ECX,EDX
0051379c  72b2                      JC 0x00513750
0051379e  85f6                      TEST ESI,ESI
005137a0  746a                      JZ 0x0051380c
005137a2  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
005137a8  8d87c0030000              LEA EAX,[EDI + 0x3c0]
005137ae  85c9                      TEST ECX,ECX
005137b0  741e                      JZ 0x005137d0
005137b2  89857cffffff              MOV dword ptr [EBP + 0xffffff7c],EAX
005137b8  81c1cc030000              ADD ECX,0x3cc
005137be  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
005137c4  50                        PUSH EAX
005137c5  e846bafbff                CALL 0x004cf210
005137ca  8d87c0030000              LEA EAX,[EDI + 0x3c0]
005137d0  50                        PUSH EAX
005137d1  8bce                      MOV ECX,ESI
005137d3  8930                      MOV dword ptr [EAX],ESI
005137d5  e816a5fbff                CALL 0x004cdcf0
005137da  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
005137e0  81c6bc030000              ADD ESI,0x3bc
005137e6  85c9                      TEST ECX,ECX
005137e8  7418                      JZ 0x00513802
005137ea  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
005137f0  89b57cffffff              MOV dword ptr [EBP + 0xffffff7c],ESI
005137f6  81c1cc030000              ADD ECX,0x3cc
005137fc  50                        PUSH EAX
005137fd  e80ebafbff                CALL 0x004cf210
00513802  56                        PUSH ESI
00513803  8bcf                      MOV ECX,EDI
00513805  893e                      MOV dword ptr [ESI],EDI
00513807  e8e4a4fbff                CALL 0x004cdcf0
0051380c  838f6801000011            OR dword ptr [EDI + 0x168],0x11
00513813  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
0051381a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00513821  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
00513825  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0051382c  0f85a6170000              JNZ 0x00514fd8
00513832  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00513839  b101                      MOV CL,0x1
0051383b  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0051383e  6a00                      PUSH 0x0
00513840  6a00                      PUSH 0x0
00513842  e869105500                CALL 0x00a648b0
00513847  83c408                    ADD ESP,0x8
0051384a  e989170000                JMP 0x00514fd8
0051384f  83f829                    CMP EAX,0x29
00513852  0f85ca000000              JNZ 0x00513922
00513858  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0051385c  0f85c0000000              JNZ 0x00513922
00513862  838f6801000011            OR dword ptr [EDI + 0x168],0x11
00513869  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
00513870  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00513877  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0051387f  f30f101540b6c700          MOVSS XMM2,dword ptr [0x00c7b640]
00513887  f30f100d44b6c700          MOVSS XMM1,dword ptr [0x00c7b644]
0051388f  0f2ec2                    UCOMISS XMM0,XMM2
00513892  9f                        LAHF
00513893  f6c444                    TEST AH,0x44
00513896  7a2e                      JP 0x005138c6
00513898  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005138a0  0f2ec1                    UCOMISS XMM0,XMM1
005138a3  9f                        LAHF
005138a4  f6c444                    TEST AH,0x44
005138a7  7a1d                      JP 0x005138c6
005138a9  6a01                      PUSH 0x1
005138ab  8d8f14040000              LEA ECX,[EDI + 0x414]
005138b1  e84a2a2d00                CALL 0x007e6300
005138b6  f30f100d44b6c700          MOVSS XMM1,dword ptr [0x00c7b644]
005138be  f30f101540b6c700          MOVSS XMM2,dword ptr [0x00c7b640]
005138c6  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
005138cc  85c0                      TEST EAX,EAX
005138ce  7409                      JZ 0x005138d9
005138d0  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
005138d7  7449                      JZ 0x00513922
005138d9  8b07                      MOV EAX,dword ptr [EDI]
005138db  8d4dac                    LEA ECX,[EBP + -0x54]
005138de  51                        PUSH ECX
005138df  8bcf                      MOV ECX,EDI
005138e1  c745ac00000000            MOV dword ptr [EBP + -0x54],0x0
005138e8  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
005138ef  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
005138f6  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
005138fd  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
00513902  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
00513907  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
0051390c  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
00513911  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00513918  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
0051391f  ff5024                    CALL dword ptr [EAX + 0x24]
00513922  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0051392a  8db73c030000              LEA ESI,[EDI + 0x33c]
00513930  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00513934  f30f5cc2                  SUBSS XMM0,XMM2
00513938  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
00513940  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
00513948  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051394e  f30f5ec2                  DIVSS XMM0,XMM2
00513952  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00513958  f30f58c4                  ADDSS XMM0,XMM4
0051395c  f30f2cd0                  CVTTSS2SI EDX,XMM0
00513960  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00513965  f30f5cc3                  SUBSS XMM0,XMM3
00513969  f30f5ec2                  DIVSS XMM0,XMM2
0051396d  f30f58c4                  ADDSS XMM0,XMM4
00513971  f30f2cc0                  CVTTSS2SI EAX,XMM0
00513975  85d2                      TEST EDX,EDX
00513977  7858                      JS 0x005139d1
00513979  3b510c                    CMP EDX,dword ptr [ECX + 0xc]
0051397c  7d53                      JGE 0x005139d1
0051397e  85c0                      TEST EAX,EAX
00513980  784f                      JS 0x005139d1
00513982  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
00513985  7d4a                      JGE 0x005139d1
00513987  0faf410c                  IMUL EAX,dword ptr [ECX + 0xc]
0051398b  03c2                      ADD EAX,EDX
0051398d  3dbf010000                CMP EAX,0x1bf
00513992  773d                      JA 0x005139d1
00513994  05db010000                ADD EAX,0x1db
00513999  c74598e8030000            MOV dword ptr [EBP + -0x68],0x3e8
005139a0  8d0481                    LEA EAX,[ECX + EAX*0x4]
005139a3  894588                    MOV dword ptr [EBP + -0x78],EAX
005139a6  8b00                      MOV EAX,dword ptr [EAX]
005139a8  8945a0                    MOV dword ptr [EBP + -0x60],EAX
005139ab  99                        CDQ
005139ac  f77d98                    IDIV dword ptr [EBP + -0x68]
005139af  81fa84030000              CMP EDX,0x384
005139b5  7d1a                      JGE 0x005139d1
005139b7  8b45a0                    MOV EAX,dword ptr [EBP + -0x60]
005139ba  8b4d88                    MOV ECX,dword ptr [EBP + -0x78]
005139bd  2bc2                      SUB EAX,EDX
005139bf  0584030000                ADD EAX,0x384
005139c4  8901                      MOV dword ptr [ECX],EAX
005139c6  a17816c700                MOV EAX,[0x00c71678]
005139cb  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005139d1  8b8714040000              MOV EAX,dword ptr [EDI + 0x414]
005139d7  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005139df  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005139e7  f30f5cc2                  SUBSS XMM0,XMM2
005139eb  f30f5ccb                  SUBSS XMM1,XMM3
005139ef  f30f5ec2                  DIVSS XMM0,XMM2
005139f3  f30f5eca                  DIVSS XMM1,XMM2
005139f7  f30f58c4                  ADDSS XMM0,XMM4
005139fb  f30f58cc                  ADDSS XMM1,XMM4
005139ff  f30f2cc0                  CVTTSS2SI EAX,XMM0
00513a03  894588                    MOV dword ptr [EBP + -0x78],EAX
00513a06  f30f2cc0                  CVTTSS2SI EAX,XMM0
00513a0a  85c0                      TEST EAX,EAX
00513a0c  7834                      JS 0x00513a42
00513a0e  8b410c                    MOV EAX,dword ptr [ECX + 0xc]
00513a11  394588                    CMP dword ptr [EBP + -0x78],EAX
00513a14  7d2c                      JGE 0x00513a42
00513a16  f30f2cf1                  CVTTSS2SI ESI,XMM1
00513a1a  85f6                      TEST ESI,ESI
00513a1c  8db73c030000              LEA ESI,[EDI + 0x33c]
00513a22  781e                      JS 0x00513a42
00513a24  f30f2cf1                  CVTTSS2SI ESI,XMM1
00513a28  3b7110                    CMP ESI,dword ptr [ECX + 0x10]
00513a2b  8db73c030000              LEA ESI,[EDI + 0x33c]
00513a31  7d0f                      JGE 0x00513a42
00513a33  f30f2cc9                  CVTTSS2SI ECX,XMM1
00513a37  0fafc1                    IMUL EAX,ECX
00513a3a  f30f2cc8                  CVTTSS2SI ECX,XMM0
00513a3e  03c1                      ADD EAX,ECX
00513a40  eb03                      JMP 0x00513a45
00513a42  83c8ff                    OR EAX,0xffffffff
00513a45  f30f101d80a3ba00          MOVSS XMM3,dword ptr [0x00baa380]
00513a4d  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
00513a55  0f28d3                    MOVAPS XMM2,XMM3
00513a58  f30f1025d0a3ba00          MOVSS XMM4,dword ptr [0x00baa3d0]
00513a60  898734040000              MOV dword ptr [EDI + 0x434],EAX
00513a66  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00513a6e  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00513a76  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
00513a7b  2bc8                      SUB ECX,EAX
00513a7d  837f2829                  CMP dword ptr [EDI + 0x28],0x29
00513a81  753a                      JNZ 0x00513abd
00513a83  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00513a86  83f801                    CMP EAX,0x1
00513a89  750a                      JNZ 0x00513a95
00513a8b  f30f1015c0a4ba00          MOVSS XMM2,dword ptr [0x00baa4c0]
00513a93  eb28                      JMP 0x00513abd
00513a95  83f802                    CMP EAX,0x2
00513a98  750a                      JNZ 0x00513aa4
00513a9a  f30f101504a3ba00          MOVSS XMM2,dword ptr [0x00baa304]
00513aa2  eb19                      JMP 0x00513abd
00513aa4  83f803                    CMP EAX,0x3
00513aa7  7507                      JNZ 0x00513ab0
00513aa9  f30f1165a0                MOVSS dword ptr [EBP + -0x60],XMM4
00513aae  eb0d                      JMP 0x00513abd
00513ab0  83f804                    CMP EAX,0x4
00513ab3  7508                      JNZ 0x00513abd
00513ab5  f30f101528a3ba00          MOVSS XMM2,dword ptr [0x00baa328]
00513abd  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00513ac3  83f804                    CMP EAX,0x4
00513ac6  0f8498070000              JZ 0x00514264
00513acc  83f807                    CMP EAX,0x7
00513acf  0f848f070000              JZ 0x00514264
00513ad5  807da700                  CMP byte ptr [EBP + -0x59],0x0
00513ad9  0f84ab040000              JZ 0x00513f8a
00513adf  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00513ae6  0f84f6030000              JZ 0x00513ee2
00513aec  f30f108f98010000          MOVSS XMM1,dword ptr [EDI + 0x198]
00513af4  f30f108794010000          MOVSS XMM0,dword ptr [EDI + 0x194]
00513afc  f30f59c0                  MULSS XMM0,XMM0
00513b00  f30f59c9                  MULSS XMM1,XMM1
00513b04  f30f58c1                  ADDSS XMM0,XMM1
00513b08  e8431ff2ff                CALL 0x00435a50
00513b0d  0f2f05e8a7ba00            COMISS XMM0,dword ptr [0x00baa7e8]
00513b14  0f86c8030000              JBE 0x00513ee2
00513b1a  8d45e4                    LEA EAX,[EBP + -0x1c]
00513b1d  50                        PUSH EAX
00513b1e  8d8f94010000              LEA ECX,[EDI + 0x194]
00513b24  e807c54f00                CALL 0x00a10030
00513b29  f30f108fa0010000          MOVSS XMM1,dword ptr [EDI + 0x1a0]
00513b31  f30f10879c010000          MOVSS XMM0,dword ptr [EDI + 0x19c]
00513b39  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
00513b3e  f30f5900                  MULSS XMM0,dword ptr [EAX]
00513b42  f30f58c8                  ADDSS XMM1,XMM0
00513b46  0f2f0de0a3ba00            COMISS XMM1,dword ptr [0x00baa3e0]
00513b4d  0f868f030000              JBE 0x00513ee2
00513b53  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00513b59  6a04                      PUSH 0x4
00513b5b  e810fb1e00                CALL 0x00703670
00513b60  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00513b66  8d4d98                    LEA ECX,[EBP + -0x68]
00513b69  c7459830000000            MOV dword ptr [EBP + -0x68],0x30
00513b70  e80b2c4400                CALL 0x00956780
00513b75  83ec08                    SUB ESP,0x8
00513b78  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00513b80  c704240000803f            MOV dword ptr [ESP],0x3f800000
00513b87  6a00                      PUSH 0x0
00513b89  6a02                      PUSH 0x2
00513b8b  51                        PUSH ECX
00513b8c  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
00513b93  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00513b99  ff7598                    PUSH dword ptr [EBP + -0x68]
00513b9c  e88fa04100                CALL 0x0092dc30
00513ba1  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00513ba7  8d4d98                    LEA ECX,[EBP + -0x68]
00513baa  c74598e3010000            MOV dword ptr [EBP + -0x68],0x1e3
00513bb1  e8ca2b4400                CALL 0x00956780
00513bb6  83ec08                    SUB ESP,0x8
00513bb9  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00513bc1  c704240000803f            MOV dword ptr [ESP],0x3f800000
00513bc8  6a00                      PUSH 0x0
00513bca  6a2d                      PUSH 0x2d
00513bcc  51                        PUSH ECX
00513bcd  c704243333333f            MOV dword ptr [ESP],0x3f333333
00513bd4  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00513bda  ff7598                    PUSH dword ptr [EBP + -0x68]
00513bdd  e84ea04100                CALL 0x0092dc30
00513be2  a17816c700                MOV EAX,[0x00c71678]
00513be7  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00513bed  8d873c030000              LEA EAX,[EDI + 0x33c]
00513bf3  50                        PUSH EAX
00513bf4  8bce                      MOV ECX,ESI
00513bf6  e895f02f00                CALL 0x00812c90
00513bfb  8b760c                    MOV ESI,dword ptr [ESI + 0xc]
00513bfe  8bc8                      MOV ECX,EAX
00513c00  99                        CDQ
00513c01  f7fe                      IDIV ESI
00513c03  8bc1                      MOV EAX,ECX
00513c05  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
00513c0d  6840b6c700                PUSH 0xc7b640
00513c12  8d4da8                    LEA ECX,[EBP + -0x58]
00513c15  660f6ec2                  MOVD XMM0,EDX
00513c19  99                        CDQ
00513c1a  f7fe                      IDIV ESI
00513c1c  0f5bc0                    CVTDQ2PS XMM0,XMM0
00513c1f  f30f59c3                  MULSS XMM0,XMM3
00513c23  f30f58c3                  ADDSS XMM0,XMM3
00513c27  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
00513c2c  660f6ec0                  MOVD XMM0,EAX
00513c30  0f5bc0                    CVTDQ2PS XMM0,XMM0
00513c33  f30f59c3                  MULSS XMM0,XMM3
00513c37  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
00513c3f  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
00513c44  e82735efff                CALL 0x00407170
00513c49  50                        PUSH EAX
00513c4a  6840b6c700                PUSH 0xc7b640
00513c4f  8d973c030000              LEA EDX,[EDI + 0x33c]
00513c55  b902000000                MOV ECX,0x2
00513c5a  e891401c00                CALL 0x006d7cf0
00513c5f  83c40c                    ADD ESP,0xc
00513c62  e8f9b21d00                CALL 0x006eef60
00513c67  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00513c6d  50                        PUSH EAX
00513c6e  6a00                      PUSH 0x0
00513c70  6a00                      PUSH 0x0
00513c72  6840b6c700                PUSH 0xc7b640
00513c77  8d4590                    LEA EAX,[EBP + -0x70]
00513c7a  50                        PUSH EAX
00513c7b  6a0f                      PUSH 0xf
00513c7d  68e8030000                PUSH 0x3e8
00513c82  e8994ef1ff                CALL 0x00428b20
00513c87  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00513c8e  8bf0                      MOV ESI,EAX
00513c90  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
00513c94  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
00513c9b  0f280510c0ba00            MOVAPS XMM0,xmmword ptr [0x00bac010]
00513ca2  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
00513ca6  8b06                      MOV EAX,dword ptr [ESI]
00513ca8  8d4da8                    LEA ECX,[EBP + -0x58]
00513cab  6a01                      PUSH 0x1
00513cad  6a00                      PUSH 0x0
00513caf  68ff000000                PUSH 0xff
00513cb4  6aff                      PUSH -0x1
00513cb6  51                        PUSH ECX
00513cb7  8bce                      MOV ECX,ESI
00513cb9  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00513cc0  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00513cc7  ff503c                    CALL dword ptr [EAX + 0x3c]
00513cca  8b06                      MOV EAX,dword ptr [ESI]
00513ccc  8bce                      MOV ECX,ESI
00513cce  ff500c                    CALL dword ptr [EAX + 0xc]
00513cd1  c74598ffffffff            MOV dword ptr [EBP + -0x68],0xffffffff
00513cd8  e883b21d00                CALL 0x006eef60
00513cdd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00513ce3  50                        PUSH EAX
00513ce4  6a00                      PUSH 0x0
00513ce6  57                        PUSH EDI
00513ce7  6840b6c700                PUSH 0xc7b640
00513cec  8d4590                    LEA EAX,[EBP + -0x70]
00513cef  50                        PUSH EAX
00513cf0  6894000000                PUSH 0x94
00513cf5  68e8030000                PUSH 0x3e8
00513cfa  e8214ef1ff                CALL 0x00428b20
00513cff  0f280520c9ba00            MOVAPS XMM0,xmmword ptr [0x00bac920]
00513d06  8d4da8                    LEA ECX,[EBP + -0x58]
00513d09  6a01                      PUSH 0x1
00513d0b  8bf0                      MOV ESI,EAX
00513d0d  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
00513d14  6a00                      PUSH 0x0
00513d16  68ff000000                PUSH 0xff
00513d1b  6aff                      PUSH -0x1
00513d1d  8b06                      MOV EAX,dword ptr [ESI]
00513d1f  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
00513d23  897584                    MOV dword ptr [EBP + -0x7c],ESI
00513d26  0f57c0                    XORPS XMM0,XMM0
00513d29  c745cc000080bf            MOV dword ptr [EBP + -0x34],0xbf800000
00513d30  51                        PUSH ECX
00513d31  8bce                      MOV ECX,ESI
00513d33  c745d0000080bf            MOV dword ptr [EBP + -0x30],0xbf800000
00513d3a  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
00513d3e  ff503c                    CALL dword ptr [EAX + 0x3c]
00513d41  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00513d47  81c6bc030000              ADD ESI,0x3bc
00513d4d  85c9                      TEST ECX,ECX
00513d4f  7412                      JZ 0x00513d63
00513d51  8d4588                    LEA EAX,[EBP + -0x78]
00513d54  897588                    MOV dword ptr [EBP + -0x78],ESI
00513d57  50                        PUSH EAX
00513d58  81c1cc030000              ADD ECX,0x3cc
00513d5e  e8adb4fbff                CALL 0x004cf210
00513d63  56                        PUSH ESI
00513d64  8bcf                      MOV ECX,EDI
00513d66  893e                      MOV dword ptr [ESI],EDI
00513d68  e8839ffbff                CALL 0x004cdcf0
00513d6d  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00513d75  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00513d7d  e8de5ff8ff                CALL 0x00499d60
00513d82  8b4d98                    MOV ECX,dword ptr [EBP + -0x68]
00513d85  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00513d8d  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
00513d90  660f6ec9                  MOVD XMM1,ECX
00513d94  41                        INC ECX
00513d95  894d98                    MOV dword ptr [EBP + -0x68],ECX
00513d98  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
00513da0  0f5bc9                    CVTDQ2PS XMM1,XMM1
00513da3  f30f590db4a9ba00          MULSS XMM1,dword ptr [0x00baa9b4]
00513dab  f30f58c1                  ADDSS XMM0,XMM1
00513daf  f30f118074040000          MOVSS dword ptr [EAX + 0x474],XMM0
00513db7  83f901                    CMP ECX,0x1
00513dba  0f8e18ffffff              JLE 0x00513cd8
00513dc0  c787b80b00000000a0c0      MOV dword ptr [EDI + 0xbb8],0xc0a00000
00513dca  8db73c030000              LEA ESI,[EDI + 0x33c]
00513dd0  f30f109fa0010000          MOVSS XMM3,dword ptr [EDI + 0x1a0]
00513dd8  f30f108f9c010000          MOVSS XMM1,dword ptr [EDI + 0x19c]
00513de0  0f28d3                    MOVAPS XMM2,XMM3
00513de3  f30f599798010000          MULSS XMM2,dword ptr [EDI + 0x198]
00513deb  0f28c1                    MOVAPS XMM0,XMM1
00513dee  f30f598794010000          MULSS XMM0,dword ptr [EDI + 0x194]
00513df6  f30f10a760030000          MOVSS XMM4,dword ptr [EDI + 0x360]
00513dfe  f30f58d0                  ADDSS XMM2,XMM0
00513e02  0f28c2                    MOVAPS XMM0,XMM2
00513e05  f30f59d3                  MULSS XMM2,XMM3
00513e09  f30f59c1                  MULSS XMM0,XMM1
00513e0d  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
00513e15  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00513e1d  f30f5ce0                  SUBSS XMM4,XMM0
00513e21  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00513e29  f30f5cc2                  SUBSS XMM0,XMM2
00513e2d  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
00513e35  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00513e3d  c787a40b0000d3ffffff      MOV dword ptr [EDI + 0xba4],0xffffffd3
00513e47  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00513e4f  f30f118718040000          MOVSS dword ptr [EDI + 0x418],XMM0
00513e57  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00513e5f  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
00513e67  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00513e6f  f30f118720040000          MOVSS dword ptr [EDI + 0x420],XMM0
00513e77  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00513e7f  f30f118724040000          MOVSS dword ptr [EDI + 0x424],XMM0
00513e87  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00513e91  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00513e99  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00513ea1  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00513ea9  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00513eb1  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00513eb8  7428                      JZ 0x00513ee2
00513eba  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00513ec2  f30f59256ca0ba00          MULSS XMM4,dword ptr [0x00baa06c]
00513eca  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
00513ed2  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
00513eda  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00513ee2  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00513eea  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00513ef2  f30f59c0                  MULSS XMM0,XMM0
00513ef6  f30f59c9                  MULSS XMM1,XMM1
00513efa  f30f58c1                  ADDSS XMM0,XMM1
00513efe  e84d1bf2ff                CALL 0x00435a50
00513f03  f30f5c05e8a7ba00          SUBSS XMM0,dword ptr [0x00baa7e8]
00513f0b  f30f59053ca1ba00          MULSS XMM0,dword ptr [0x00baa13c]
00513f13  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00513f1a  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
00513f1f  7669                      JBE 0x00513f8a
00513f21  6a00                      PUSH 0x0
00513f23  6a03                      PUSH 0x3
00513f25  8bcf                      MOV ECX,EDI
00513f27  e8e4871900                CALL 0x006ac710
00513f2c  84c0                      TEST AL,AL
00513f2e  745a                      JZ 0x00513f8a
00513f30  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00513f37  8d4da8                    LEA ECX,[EBP + -0x58]
00513f3a  8b07                      MOV EAX,dword ptr [EDI]
00513f3c  6a01                      PUSH 0x1
00513f3e  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
00513f42  6a01                      PUSH 0x1
00513f44  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
00513f49  f30f5805d0a0ba00          ADDSS XMM0,dword ptr [0x00baa0d0]
00513f51  6a01                      PUSH 0x1
00513f53  6a03                      PUSH 0x3
00513f55  51                        PUSH ECX
00513f56  8bcf                      MOV ECX,EDI
00513f58  c745b800004040            MOV dword ptr [EBP + -0x48],0x40400000
00513f5f  c745bc9a99993e            MOV dword ptr [EBP + -0x44],0x3e99999a
00513f66  c745c000000000            MOV dword ptr [EBP + -0x40],0x0
00513f6d  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
00513f72  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
00513f79  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00513f80  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00513f87  ff503c                    CALL dword ptr [EAX + 0x3c]
00513f8a  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
00513f91  0f84d7080000              JZ 0x0051486e
00513f97  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00513f9e  0f8509020000              JNZ 0x005141ad
00513fa4  6a00                      PUSH 0x0
00513fa6  68000a0001                PUSH 0x1000a00
00513fab  8bcf                      MOV ECX,EDI
00513fad  e87e34f0ff                CALL 0x00417430
00513fb2  84c0                      TEST AL,AL
00513fb4  0f85f3010000              JNZ 0x005141ad
00513fba  817f281b010000            CMP dword ptr [EDI + 0x28],0x11b
00513fc1  0f859c000000              JNZ 0x00514063
00513fc7  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00513fce  8bcf                      MOV ECX,EDI
00513fd0  7410                      JZ 0x00513fe2
00513fd2  6a09                      PUSH 0x9
00513fd4  e887421c00                CALL 0x006d8260
00513fd9  33c9                      XOR ECX,ECX
00513fdb  84c0                      TEST AL,AL
00513fdd  0f94c1                    SETZ CL
00513fe0  eb79                      JMP 0x0051405b
00513fe2  e859a81a00                CALL 0x006be840
00513fe7  51                        PUSH ECX
00513fe8  c7042400002042            MOV dword ptr [ESP],0x42200000
00513fef  8d8f34030000              LEA ECX,[EDI + 0x334]
00513ff5  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00513ffd  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00514002  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0051400a  8d45e4                    LEA EAX,[EBP + -0x1c]
0051400d  50                        PUSH EAX
0051400e  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
00514013  e8e8c04f00                CALL 0x00a10100
00514018  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0051401d  33c9                      XOR ECX,ECX
0051401f  f30f105584                MOVSS XMM2,dword ptr [EBP + -0x7c]
00514024  f30f104d88                MOVSS XMM1,dword ptr [EBP + -0x78]
00514029  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
0051402e  f30f5cd0                  SUBSS XMM2,XMM0
00514032  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00514036  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
0051403a  f30f599764030000          MULSS XMM2,dword ptr [EDI + 0x364]
00514042  f30f5cc8                  SUBSS XMM1,XMM0
00514046  0f57c0                    XORPS XMM0,XMM0
00514049  f30f598f60030000          MULSS XMM1,dword ptr [EDI + 0x360]
00514051  f30f58d1                  ADDSS XMM2,XMM1
00514055  0f2fc2                    COMISS XMM0,XMM2
00514058  0f97c1                    SETA CL
0051405b  85c9                      TEST ECX,ECX
0051405d  0f854a010000              JNZ 0x005141ad
00514063  f30f1045a0                MOVSS XMM0,dword ptr [EBP + -0x60]
00514068  8d8734030000              LEA EAX,[EDI + 0x334]
0051406e  f30f59876c030000          MULSS XMM0,dword ptr [EDI + 0x36c]
00514076  8bcf                      MOV ECX,EDI
00514078  6a00                      PUSH 0x0
0051407a  50                        PUSH EAX
0051407b  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00514083  e828d4f1ff                CALL 0x004314b0
00514088  807da700                  CMP byte ptr [EBP + -0x59],0x0
0051408c  0f8486000000              JZ 0x00514118
00514092  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
0051409a  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
005140a2  f30f59c0                  MULSS XMM0,XMM0
005140a6  f30f59c9                  MULSS XMM1,XMM1
005140aa  f30f58c1                  ADDSS XMM0,XMM1
005140ae  e89d19f2ff                CALL 0x00435a50
005140b3  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
005140bb  0f2fc8                    COMISS XMM1,XMM0
005140be  7658                      JBE 0x00514118
005140c0  8d45e4                    LEA EAX,[EBP + -0x1c]
005140c3  50                        PUSH EAX
005140c4  8d8f34030000              LEA ECX,[EDI + 0x334]
005140ca  e861bf4f00                CALL 0x00a10030
005140cf  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
005140d7  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
005140dc  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005140e0  f30f5905f4a0ba00          MULSS XMM0,dword ptr [0x00baa0f4]
005140e8  f30f591df4a0ba00          MULSS XMM3,dword ptr [0x00baa0f4]
005140f0  f30f59c2                  MULSS XMM0,XMM2
005140f4  f30f59da                  MULSS XMM3,XMM2
005140f8  f30f588734030000          ADDSS XMM0,dword ptr [EDI + 0x334]
00514100  f30f589f38030000          ADDSS XMM3,dword ptr [EDI + 0x338]
00514108  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00514110  f30f119f38030000          MOVSS dword ptr [EDI + 0x338],XMM3
00514118  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051411e  8d4590                    LEA EAX,[EBP + -0x70]
00514121  ffb734040000              PUSH dword ptr [EDI + 0x434]
00514127  50                        PUSH EAX
00514128  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0051412e  e8cded2f00                CALL 0x00812f00
00514133  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
0051413b  0f57d2                    XORPS XMM2,XMM2
0051413e  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
00514146  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0051414e  0f54cb                    ANDPS XMM1,XMM3
00514151  0f54c3                    ANDPS XMM0,XMM3
00514154  0f2fc8                    COMISS XMM1,XMM0
00514157  762e                      JBE 0x00514187
00514159  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00514161  f30f104d94                MOVSS XMM1,dword ptr [EBP + -0x6c]
00514166  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0051416e  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00514176  f30f58c8                  ADDSS XMM1,XMM0
0051417a  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
00514182  e9f2060000                JMP 0x00514879
00514187  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0051418b  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
00514190  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
00514198  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
005141a0  f30f58c8                  ADDSS XMM1,XMM0
005141a4  f30f110e                  MOVSS dword ptr [ESI],XMM1
005141a8  e9cc060000                JMP 0x00514879
005141ad  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
005141b4  0f57d2                    XORPS XMM2,XMM2
005141b7  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005141bf  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
005141c7  f30f118718040000          MOVSS dword ptr [EDI + 0x418],XMM0
005141cf  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005141d7  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
005141df  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005141e7  f30f118720040000          MOVSS dword ptr [EDI + 0x420],XMM0
005141ef  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005141f7  f30f118724040000          MOVSS dword ptr [EDI + 0x424],XMM0
005141ff  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00514209  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00514211  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00514219  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00514221  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00514229  0f844a060000              JZ 0x00514879
0051422f  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00514237  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
0051423f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00514247  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0051424f  f30f59056ca0ba00          MULSS XMM0,dword ptr [0x00baa06c]
00514257  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0051425f  e915060000                JMP 0x00514879
00514264  817f28fe000000            CMP dword ptr [EDI + 0x28],0xfe
0051426b  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00514273  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
00514278  0f8592020000              JNZ 0x00514510
0051427e  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00514284  0f28d1                    MOVAPS XMM2,XMM1
00514287  2bc1                      SUB EAX,ECX
00514289  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
0051428e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00514295  898710040000              MOV dword ptr [EDI + 0x410],EAX
0051429b  0f8488000000              JZ 0x00514329
005142a1  8d4590                    LEA EAX,[EBP + -0x70]
005142a4  0f57d2                    XORPS XMM2,XMM2
005142a7  50                        PUSH EAX
005142a8  8bcf                      MOV ECX,EDI
005142aa  e821401c00                CALL 0x006d82d0
005142af  e8acac1d00                CALL 0x006eef60
005142b4  33d2                      XOR EDX,EDX
005142b6  f30f105d90                MOVSS XMM3,dword ptr [EBP + -0x70]
005142bb  b90f000000                MOV ECX,0xf
005142c0  f30f106594                MOVSS XMM4,dword ptr [EBP + -0x6c]
005142c5  f7f1                      DIV ECX
005142c7  0f28c4                    MOVAPS XMM0,XMM4
005142ca  0f28cb                    MOVAPS XMM1,XMM3
005142cd  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
005142d4  83c21e                    ADD EDX,0x1e
005142d7  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
005142de  0f2fc8                    COMISS XMM1,XMM0
005142e1  899710040000              MOV dword ptr [EDI + 0x410],EDX
005142e7  0f57c0                    XORPS XMM0,XMM0
005142ea  760f                      JBE 0x005142fb
005142ec  33c9                      XOR ECX,ECX
005142ee  b802000000                MOV EAX,0x2
005142f3  0f2fc3                    COMISS XMM0,XMM3
005142f6  0f47c1                    CMOVA EAX,ECX
005142f9  eb0f                      JMP 0x0051430a
005142fb  33c0                      XOR EAX,EAX
005142fd  0f2fc4                    COMISS XMM0,XMM4
00514300  0f96c0                    SETBE AL
00514303  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
0051430a  f30f59db                  MULSS XMM3,XMM3
0051430e  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00514314  f30f59e4                  MULSS XMM4,XMM4
00514318  f30f58dc                  ADDSS XMM3,XMM4
0051431c  0f28c3                    MOVAPS XMM0,XMM3
0051431f  e82c17f2ff                CALL 0x00435a50
00514324  0f28d0                    MOVAPS XMM2,XMM0
00514327  eb32                      JMP 0x0051435b
00514329  85c9                      TEST ECX,ECX
0051432b  7436                      JZ 0x00514363
0051432d  85c0                      TEST EAX,EAX
0051432f  7f32                      JG 0x00514363
00514331  e82aac1d00                CALL 0x006eef60
00514336  33d2                      XOR EDX,EDX
00514338  b90f000000                MOV ECX,0xf
0051433d  f7f1                      DIV ECX
0051433f  83c21e                    ADD EDX,0x1e
00514342  899710040000              MOV dword ptr [EDI + 0x410],EDX
00514348  e813ac1d00                CALL 0x006eef60
0051434d  f30f105584                MOVSS XMM2,dword ptr [EBP + -0x7c]
00514352  83e003                    AND EAX,0x3
00514355  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0051435b  f30f101d80a3ba00          MOVSS XMM3,dword ptr [0x00baa380]
00514363  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00514369  83f803                    CMP EAX,0x3
0051436c  0f871d030000              JA 0x0051468f
00514372  ff2485f84f5100            JMP dword ptr [EAX*0x4 + 0x514ff8]
00514379  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00514381  0f28ca                    MOVAPS XMM1,XMM2
00514384  f30f590de49fba00          MULSS XMM1,dword ptr [0x00ba9fe4]
0051438c  f30f59d3                  MULSS XMM2,XMM3
00514390  f30f59c8                  MULSS XMM1,XMM0
00514394  f30f59d0                  MULSS XMM2,XMM0
00514398  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
005143a0  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
005143a8  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005143b0  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
005143b8  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
005143bf  0f84ca020000              JZ 0x0051468f
005143c5  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
005143cf  f30f1006                  MOVSS XMM0,dword ptr [ESI]
005143d3  f30f5cc1                  SUBSS XMM0,XMM1
005143d7  f30f1106                  MOVSS dword ptr [ESI],XMM0
005143db  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005143e0  f30f5c8764030000          SUBSS XMM0,dword ptr [EDI + 0x364]
005143e8  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
005143ed  e99d020000                JMP 0x0051468f
005143f2  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
005143fa  0f28ca                    MOVAPS XMM1,XMM2
005143fd  f30f590de49fba00          MULSS XMM1,dword ptr [0x00ba9fe4]
00514405  f30f59d3                  MULSS XMM2,XMM3
00514409  f30f59c8                  MULSS XMM1,XMM0
0051440d  f30f59d0                  MULSS XMM2,XMM0
00514411  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00514419  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
00514421  f30f5cc2                  SUBSS XMM0,XMM2
00514425  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0051442d  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00514435  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0051443c  0f844d020000              JZ 0x0051468f
00514442  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
0051444c  eb81                      JMP 0x005143cf
0051444e  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00514456  0f28c2                    MOVAPS XMM0,XMM2
00514459  f30f5915e49fba00          MULSS XMM2,dword ptr [0x00ba9fe4]
00514461  f30f59c3                  MULSS XMM0,XMM3
00514465  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
0051446d  f30f59d1                  MULSS XMM2,XMM1
00514471  f30f59c1                  MULSS XMM0,XMM1
00514475  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0051447d  f30f5cd8                  SUBSS XMM3,XMM0
00514481  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00514489  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
00514491  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00514498  0f84f1010000              JZ 0x0051468f
0051449e  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
005144a8  f30f1006                  MOVSS XMM0,dword ptr [ESI]
005144ac  f30f5cc3                  SUBSS XMM0,XMM3
005144b0  e922ffffff                JMP 0x005143d7
005144b5  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
005144bd  0f28ca                    MOVAPS XMM1,XMM2
005144c0  f30f5915e49fba00          MULSS XMM2,dword ptr [0x00ba9fe4]
005144c8  f30f59cb                  MULSS XMM1,XMM3
005144cc  f30f59d0                  MULSS XMM2,XMM0
005144d0  f30f59c8                  MULSS XMM1,XMM0
005144d4  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
005144dc  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
005144e4  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
005144ec  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005144f4  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
005144fb  0f848e010000              JZ 0x0051468f
00514501  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0051450b  e9bffeffff                JMP 0x005143cf
00514510  807da700                  CMP byte ptr [EBP + -0x59],0x0
00514514  0f8462010000              JZ 0x0051467c
0051451a  0f57c0                    XORPS XMM0,XMM0
0051451d  0f2f87b80b0000            COMISS XMM0,dword ptr [EDI + 0xbb8]
00514524  0f876a010000              JA 0x00514694
0051452a  0f2f8750030000            COMISS XMM0,dword ptr [EDI + 0x350]
00514531  0f875d010000              JA 0x00514694
00514537  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
0051453d  85c0                      TEST EAX,EAX
0051453f  790f                      JNS 0x00514550
00514541  40                        INC EAX
00514542  0f28cc                    MOVAPS XMM1,XMM4
00514545  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
0051454b  e944010000                JMP 0x00514694
00514550  6a00                      PUSH 0x0
00514552  51                        PUSH ECX
00514553  8d8f14040000              LEA ECX,[EDI + 0x414]
00514559  f30f111424                MOVSS dword ptr [ESP],XMM2
0051455e  e8dd0d2d00                CALL 0x007e5340
00514563  807da700                  CMP byte ptr [EBP + -0x59],0x0
00514567  0f8422010000              JZ 0x0051468f
0051456d  83bf640b000007            CMP dword ptr [EDI + 0xb64],0x7
00514574  7545                      JNZ 0x005145bb
00514576  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
0051457e  0f57d2                    XORPS XMM2,XMM2
00514581  8bcf                      MOV ECX,EDI
00514583  e8d8811900                CALL 0x006ac760
00514588  85c0                      TEST EAX,EAX
0051458a  0f84ff000000              JZ 0x0051468f
00514590  e8cba91d00                CALL 0x006eef60
00514595  33d2                      XOR EDX,EDX
00514597  b90a000000                MOV ECX,0xa
0051459c  f7f1                      DIV ECX
0051459e  85d2                      TEST EDX,EDX
005145a0  0f85e9000000              JNZ 0x0051468f
005145a6  8997a40b0000              MOV dword ptr [EDI + 0xba4],EDX
005145ac  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
005145b6  e9d4000000                JMP 0x0051468f
005145bb  8b8fa40b0000              MOV ECX,dword ptr [EDI + 0xba4]
005145c1  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005145c7  41                        INC ECX
005145c8  25000a0001                AND EAX,0x1000a00
005145cd  898fa40b0000              MOV dword ptr [EDI + 0xba4],ECX
005145d3  83c800                    OR EAX,0x0
005145d6  7517                      JNZ 0x005145ef
005145d8  83f95a                    CMP ECX,0x5a
005145db  7e1c                      JLE 0x005145f9
005145dd  e87ea91d00                CALL 0x006eef60
005145e2  33d2                      XOR EDX,EDX
005145e4  b914000000                MOV ECX,0x14
005145e9  f7f1                      DIV ECX
005145eb  85d2                      TEST EDX,EDX
005145ed  750a                      JNZ 0x005145f9
005145ef  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005145f9  8bcf                      MOV ECX,EDI
005145fb  e840a21a00                CALL 0x006be840
00514600  6a01                      PUSH 0x1
00514602  6a00                      PUSH 0x0
00514604  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0051460a  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00514610  51                        PUSH ECX
00514611  894594                    MOV dword ptr [EBP + -0x6c],EAX
00514614  8d4590                    LEA EAX,[EBP + -0x70]
00514617  894d90                    MOV dword ptr [EBP + -0x70],ECX
0051461a  8d8f14040000              LEA ECX,[EDI + 0x414]
00514620  c70424c3f5283f            MOV dword ptr [ESP],0x3f28f5c3
00514627  50                        PUSH EAX
00514628  e893ed2c00                CALL 0x007e33c0
0051462d  8d9760030000              LEA EDX,[EDI + 0x360]
00514633  8d4de4                    LEA ECX,[EBP + -0x1c]
00514636  e835ab1600                CALL 0x0067f170
0051463b  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00514643  8bf0                      MOV ESI,EAX
00514645  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0051464d  f30f59c0                  MULSS XMM0,XMM0
00514651  f30f59c9                  MULSS XMM1,XMM1
00514655  f30f58c1                  ADDSS XMM0,XMM1
00514659  e8f213f2ff                CALL 0x00435a50
0051465e  0f28c8                    MOVAPS XMM1,XMM0
00514661  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
00514666  f30f590e                  MULSS XMM1,dword ptr [ESI]
0051466a  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00514672  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0051467a  eb13                      JMP 0x0051468f
0051467c  6a00                      PUSH 0x0
0051467e  51                        PUSH ECX
0051467f  8d8f14040000              LEA ECX,[EDI + 0x414]
00514685  f30f111424                MOVSS dword ptr [ESP],XMM2
0051468a  e8b10c2d00                CALL 0x007e5340
0051468f  f30f104da0                MOVSS XMM1,dword ptr [EBP + -0x60]
00514694  f30f598f6c030000          MULSS XMM1,dword ptr [EDI + 0x36c]
0051469c  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0051469f  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
005146a7  83f829                    CMP EAX,0x29
005146aa  753e                      JNZ 0x005146ea
005146ac  e8afa81d00                CALL 0x006eef60
005146b1  33d2                      XOR EDX,EDX
005146b3  b964000000                MOV ECX,0x64
005146b8  f7f1                      DIV ECX
005146ba  85d2                      TEST EDX,EDX
005146bc  0f8582000000              JNZ 0x00514744
005146c2  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005146c5  85c0                      TEST EAX,EAX
005146c7  7418                      JZ 0x005146e1
005146c9  83f804                    CMP EAX,0x4
005146cc  7413                      JZ 0x005146e1
005146ce  83f801                    CMP EAX,0x1
005146d1  7405                      JZ 0x005146d8
005146d3  83f802                    CMP EAX,0x2
005146d6  756c                      JNZ 0x00514744
005146d8  c745a03b040000            MOV dword ptr [EBP + -0x60],0x43b
005146df  eb29                      JMP 0x0051470a
005146e1  c745a03a040000            MOV dword ptr [EBP + -0x60],0x43a
005146e8  eb20                      JMP 0x0051470a
005146ea  3dfe000000                CMP EAX,0xfe
005146ef  7553                      JNZ 0x00514744
005146f1  e86aa81d00                CALL 0x006eef60
005146f6  33d2                      XOR EDX,EDX
005146f8  b964000000                MOV ECX,0x64
005146fd  f7f1                      DIV ECX
005146ff  85d2                      TEST EDX,EDX
00514701  7541                      JNZ 0x00514744
00514703  c745a03c040000            MOV dword ptr [EBP + -0x60],0x43c
0051470a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00514710  8d4da0                    LEA ECX,[EBP + -0x60]
00514713  e868204400                CALL 0x00956780
00514718  83ec08                    SUB ESP,0x8
0051471b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00514723  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051472a  6a00                      PUSH 0x0
0051472c  6a3c                      PUSH 0x3c
0051472e  51                        PUSH ECX
0051472f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00514736  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0051473c  ff75a0                    PUSH dword ptr [EBP + -0x60]
0051473f  e8ec944100                CALL 0x0092dc30
00514744  807da700                  CMP byte ptr [EBP + -0x59],0x0
00514748  7432                      JZ 0x0051477c
0051474a  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
00514751  0f57d2                    XORPS XMM2,XMM2
00514754  0f8c17010000              JL 0x00514871
0051475a  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
00514762  0f2fc2                    COMISS XMM0,XMM2
00514765  0f8206010000              JC 0x00514871
0051476b  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00514773  0f2fc2                    COMISS XMM0,XMM2
00514776  0f82f5000000              JC 0x00514871
0051477c  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00514782  83f8ff                    CMP EAX,-0x1
00514785  0f8438010000              JZ 0x005148c3
0051478b  51                        PUSH ECX
0051478c  57                        PUSH EDI
0051478d  50                        PUSH EAX
0051478e  6a09                      PUSH 0x9
00514790  e87b194400                CALL 0x00956110
00514795  84c0                      TEST AL,AL
00514797  745d                      JZ 0x005147f6
00514799  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
005147a1  8d4590                    LEA EAX,[EBP + -0x70]
005147a4  50                        PUSH EAX
005147a5  8bcf                      MOV ECX,EDI
005147a7  e8243b1c00                CALL 0x006d82d0
005147ac  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
005147b1  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
005147b8  9f                        LAHF
005147b9  f6c444                    TEST AH,0x44
005147bc  7a12                      JP 0x005147d0
005147be  f30f104594                MOVSS XMM0,dword ptr [EBP + -0x6c]
005147c3  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005147ca  9f                        LAHF
005147cb  f6c444                    TEST AH,0x44
005147ce  7b26                      JNP 0x005147f6
005147d0  8d5590                    LEA EDX,[EBP + -0x70]
005147d3  8d4de4                    LEA ECX,[EBP + -0x1c]
005147d6  e895a91600                CALL 0x0067f170
005147db  8b08                      MOV ECX,dword ptr [EAX]
005147dd  898f34030000              MOV dword ptr [EDI + 0x334],ECX
005147e3  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005147e6  898738030000              MOV dword ptr [EDI + 0x338],EAX
005147ec  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005147f6  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005147fa  7409                      JZ 0x00514805
005147fc  817f281b010000            CMP dword ptr [EDI + 0x28],0x11b
00514803  7539                      JNZ 0x0051483e
00514805  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
0051480c  7530                      JNZ 0x0051483e
0051480e  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00514816  f30f590560a5ba00          MULSS XMM0,dword ptr [0x00baa560]
0051481e  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00514826  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0051482e  f30f590560a5ba00          MULSS XMM0,dword ptr [0x00baa560]
00514836  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0051483e  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00514846  f30f5905f0a4ba00          MULSS XMM0,dword ptr [0x00baa4f0]
0051484e  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00514856  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0051485e  f30f5905f0a4ba00          MULSS XMM0,dword ptr [0x00baa4f0]
00514866  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0051486e  0f57d2                    XORPS XMM2,XMM2
00514871  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
00514879  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
00514880  0f858b030000              JNZ 0x00514c11
00514886  f30f10af34030000          MOVSS XMM5,dword ptr [EDI + 0x334]
0051488e  f30f10a738030000          MOVSS XMM4,dword ptr [EDI + 0x338]
00514896  0f28cd                    MOVAPS XMM1,XMM5
00514899  0f28c4                    MOVAPS XMM0,XMM4
0051489c  0f54cb                    ANDPS XMM1,XMM3
0051489f  0f54c3                    ANDPS XMM0,XMM3
005148a2  0f2fc8                    COMISS XMM1,XMM0
005148a5  0f878b030000              JA 0x00514c36
005148ab  0f2fd4                    COMISS XMM2,XMM4
005148ae  0f8699030000              JBE 0x00514c4d
005148b4  bee4cdb100                MOV ESI,0xb1cde4
005148b9  b801000000                MOV EAX,0x1
005148be  e994030000                JMP 0x00514c57
005148c3  ff7720                    PUSH dword ptr [EDI + 0x20]
005148c6  8bcf                      MOV ECX,EDI
005148c8  6a03                      PUSH 0x3
005148ca  e8417e1900                CALL 0x006ac710
005148cf  84c0                      TEST AL,AL
005148d1  749b                      JZ 0x0051486e
005148d3  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005148d9  25000a0001                AND EAX,0x1000a00
005148de  83c800                    OR EAX,0x0
005148e1  758b                      JNZ 0x0051486e
005148e3  a17816c700                MOV EAX,[0x00c71678]
005148e8  8bcf                      MOV ECX,EDI
005148ea  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005148f0  e84b9f1a00                CALL 0x006be840
005148f5  8bcf                      MOV ECX,EDI
005148f7  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005148ff  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00514904  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0051490c  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
00514911  e82a9f1a00                CALL 0x006be840
00514916  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0051491e  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
00514923  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
0051492b  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
00514930  e82ba61d00                CALL 0x006eef60
00514935  f30f104d84                MOVSS XMM1,dword ptr [EBP + -0x7c]
0051493a  83ec0c                    SUB ESP,0xc
0051493d  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
00514945  8bce                      MOV ECX,ESI
00514947  660f6ec0                  MOVD XMM0,EAX
0051494b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0051494f  c1e81f                    SHR EAX,0x1f
00514952  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051495b  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
00514963  8d4580                    LEA EAX,[EBP + -0x80]
00514966  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
0051496e  c704240000a041            MOV dword ptr [ESP],0x41a00000
00514975  50                        PUSH EAX
00514976  660f5ac0                  CVTPD2PS XMM0,XMM0
0051497a  8d459c                    LEA EAX,[EBP + -0x64]
0051497d  50                        PUSH EAX
0051497e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00514986  f30f59055ca8ba00          MULSS XMM0,dword ptr [0x00baa85c]
0051498e  f30f59c8                  MULSS XMM1,XMM0
00514992  f30f584d88                ADDSS XMM1,dword ptr [EBP + -0x78]
00514997  f30f114d80                MOVSS dword ptr [EBP + -0x80],XMM1
0051499c  f30f104da0                MOVSS XMM1,dword ptr [EBP + -0x60]
005149a1  f30f59c8                  MULSS XMM1,XMM0
005149a5  f30f584d94                ADDSS XMM1,dword ptr [EBP + -0x6c]
005149aa  f30f114d84                MOVSS dword ptr [EBP + -0x7c],XMM1
005149af  e89ce52f00                CALL 0x00812f50
005149b4  a17816c700                MOV EAX,[0x00c71678]
005149b9  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
005149c1  f30f10257ca8ba00          MOVSS XMM4,dword ptr [0x00baa87c]
005149c9  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005149cf  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
005149d5  99                        CDQ
005149d6  f77e0c                    IDIV dword ptr [ESI + 0xc]
005149d9  660f6ed2                  MOVD XMM2,EDX
005149dd  0f5bd2                    CVTDQ2PS XMM2,XMM2
005149e0  660f6ec8                  MOVD XMM1,EAX
005149e4  0f5bc9                    CVTDQ2PS XMM1,XMM1
005149e7  f30f59d3                  MULSS XMM2,XMM3
005149eb  f30f59cb                  MULSS XMM1,XMM3
005149ef  f30f58d3                  ADDSS XMM2,XMM3
005149f3  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
005149fb  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
00514a03  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
00514a08  f30f5c559c                SUBSS XMM2,dword ptr [EBP + -0x64]
00514a0d  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
00514a12  f30f5c4da0                SUBSS XMM1,dword ptr [EBP + -0x60]
00514a17  0f28c2                    MOVAPS XMM0,XMM2
00514a1a  f30f115588                MOVSS dword ptr [EBP + -0x78],XMM2
00514a1f  0f54c3                    ANDPS XMM0,XMM3
00514a22  0f2fe0                    COMISS XMM4,XMM0
00514a25  f30f114d94                MOVSS dword ptr [EBP + -0x6c],XMM1
00514a2a  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
00514a2f  770f                      JA 0x00514a40
00514a31  0f28c1                    MOVAPS XMM0,XMM1
00514a34  0f54c3                    ANDPS XMM0,XMM3
00514a37  0f2fe0                    COMISS XMM4,XMM0
00514a3a  0f8679010000              JBE 0x00514bb9
00514a40  0f28c1                    MOVAPS XMM0,XMM1
00514a43  f30f59c1                  MULSS XMM0,XMM1
00514a47  0f28ca                    MOVAPS XMM1,XMM2
00514a4a  f30f59ca                  MULSS XMM1,XMM2
00514a4e  f30f58c1                  ADDSS XMM0,XMM1
00514a52  e8f90ff2ff                CALL 0x00435a50
00514a57  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
00514a5f  0f2fc8                    COMISS XMM1,XMM0
00514a62  0f8649010000              JBE 0x00514bb1
00514a68  6a00                      PUSH 0x0
00514a6a  6a00                      PUSH 0x0
00514a6c  6a00                      PUSH 0x0
00514a6e  6a00                      PUSH 0x0
00514a70  6a00                      PUSH 0x0
00514a72  8d459c                    LEA EAX,[EBP + -0x64]
00514a75  8bce                      MOV ECX,ESI
00514a77  50                        PUSH EAX
00514a78  8d45e4                    LEA EAX,[EBP + -0x1c]
00514a7b  50                        PUSH EAX
00514a7c  e86fc32d00                CALL 0x007f0df0
00514a81  84c0                      TEST AL,AL
00514a83  750d                      JNZ 0x00514a92
00514a85  817f28fe000000            CMP dword ptr [EDI + 0x28],0xfe
00514a8c  0f851f010000              JNZ 0x00514bb1
00514a92  f30f104d94                MOVSS XMM1,dword ptr [EBP + -0x6c]
00514a97  f30f105584                MOVSS XMM2,dword ptr [EBP + -0x7c]
00514a9c  0f28c1                    MOVAPS XMM0,XMM1
00514a9f  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00514aa6  0f2fd0                    COMISS XMM2,XMM0
00514aa9  0f57c0                    XORPS XMM0,XMM0
00514aac  7639                      JBE 0x00514ae7
00514aae  0f2f4588                  COMISS XMM0,dword ptr [EBP + -0x78]
00514ab2  c7873803000000000000      MOV dword ptr [EDI + 0x338],0x0
00514abc  760a                      JBE 0x00514ac8
00514abe  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00514ac6  eb0d                      JMP 0x00514ad5
00514ac8  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00514ad0  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
00514ad5  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
00514add  0f57c9                    XORPS XMM1,XMM1
00514ae0  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
00514ae5  eb36                      JMP 0x00514b1d
00514ae7  0f2fc1                    COMISS XMM0,XMM1
00514aea  c7873403000000000000      MOV dword ptr [EDI + 0x334],0x0
00514af4  760a                      JBE 0x00514b00
00514af6  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00514afe  eb08                      JMP 0x00514b08
00514b00  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00514b08  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
00514b0d  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
00514b15  0f57c9                    XORPS XMM1,XMM1
00514b18  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
00514b1d  6a00                      PUSH 0x0
00514b1f  6800080001                PUSH 0x1000800
00514b24  8bcf                      MOV ECX,EDI
00514b26  e80529f0ff                CALL 0x00417430
00514b2b  84c0                      TEST AL,AL
00514b2d  7428                      JZ 0x00514b57
00514b2f  f30f105598                MOVSS XMM2,dword ptr [EBP + -0x68]
00514b34  f30f104da0                MOVSS XMM1,dword ptr [EBP + -0x60]
00514b39  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00514b40  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00514b47  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
00514b4f  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
00514b57  837f2829                  CMP dword ptr [EDI + 0x28],0x29
00514b5b  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00514b65  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
00514b6f  7540                      JNZ 0x00514bb1
00514b71  837f2c04                  CMP dword ptr [EDI + 0x2c],0x4
00514b75  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
00514b7d  753a                      JNZ 0x00514bb9
00514b7f  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00514b87  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00514b8f  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00514b97  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00514b9f  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00514ba7  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00514baf  eb08                      JMP 0x00514bb9
00514bb1  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
00514bb9  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00514bbd  7409                      JZ 0x00514bc8
00514bbf  817f281b010000            CMP dword ptr [EDI + 0x28],0x11b
00514bc6  7541                      JNZ 0x00514c09
00514bc8  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
00514bcf  0f57d2                    XORPS XMM2,XMM2
00514bd2  753d                      JNZ 0x00514c11
00514bd4  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00514bdc  f30f590560a5ba00          MULSS XMM0,dword ptr [0x00baa560]
00514be4  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00514bec  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00514bf4  f30f590560a5ba00          MULSS XMM0,dword ptr [0x00baa560]
00514bfc  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00514c04  e970fcffff                JMP 0x00514879
00514c09  0f57d2                    XORPS XMM2,XMM2
00514c0c  e968fcffff                JMP 0x00514879
00514c11  f30f10af60030000          MOVSS XMM5,dword ptr [EDI + 0x360]
00514c19  f30f10a764030000          MOVSS XMM4,dword ptr [EDI + 0x364]
00514c21  0f28cd                    MOVAPS XMM1,XMM5
00514c24  0f28c4                    MOVAPS XMM0,XMM4
00514c27  0f54cb                    ANDPS XMM1,XMM3
00514c2a  0f54c3                    ANDPS XMM0,XMM3
00514c2d  0f2fc8                    COMISS XMM1,XMM0
00514c30  0f8675fcffff              JBE 0x005148ab
00514c36  33c9                      XOR ECX,ECX
00514c38  b802000000                MOV EAX,0x2
00514c3d  0f2fd5                    COMISS XMM2,XMM5
00514c40  be940db600                MOV ESI,0xb60d94
00514c45  0f47c1                    CMOVA EAX,ECX
00514c48  894598                    MOV dword ptr [EBP + -0x68],EAX
00514c4b  eb0a                      JMP 0x00514c57
00514c4d  bedccdb100                MOV ESI,0xb1cddc
00514c52  b803000000                MOV EAX,0x3
00514c57  8bd0                      MOV EDX,EAX
00514c59  8d4de4                    LEA ECX,[EBP + -0x1c]
00514c5c  e86fa51600                CALL 0x0067f1d0
00514c61  8b08                      MOV ECX,dword ptr [EAX]
00514c63  898f300f0000              MOV dword ptr [EDI + 0xf30],ECX
00514c69  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00514c6c  8987340f0000              MOV dword ptr [EDI + 0xf34],EAX
00514c72  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
00514c78  85d2                      TEST EDX,EDX
00514c7a  7e1a                      JLE 0x00514c96
00514c7c  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00514c84  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00514c8c  2bc8                      SUB ECX,EAX
00514c8e  03ca                      ADD ECX,EDX
00514c90  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
00514c96  807da700                  CMP byte ptr [EBP + -0x59],0x0
00514c9a  7465                      JZ 0x00514d01
00514c9c  8d45d4                    LEA EAX,[EBP + -0x2c]
00514c9f  50                        PUSH EAX
00514ca0  8d4f78                    LEA ECX,[EDI + 0x78]
00514ca3  e848dff3ff                CALL 0x00452bf0
00514ca8  8bd6                      MOV EDX,ESI
00514caa  c7857cffffff01000000      MOV dword ptr [EBP + 0xffffff7c],0x1
00514cb4  8bc8                      MOV ECX,EAX
00514cb6  e8e537feff                CALL 0x004f84a0
00514cbb  84c0                      TEST AL,AL
00514cbd  753c                      JNZ 0x00514cfb
00514cbf  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
00514cc7  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00514ccf  0f28cb                    MOVAPS XMM1,XMM3
00514cd2  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00514cd9  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00514ce0  0f2fc8                    COMISS XMM1,XMM0
00514ce3  761c                      JBE 0x00514d01
00514ce5  0fb68f48010000            MOVZX ECX,byte ptr [EDI + 0x148]
00514cec  33c0                      XOR EAX,EAX
00514cee  0f57c0                    XORPS XMM0,XMM0
00514cf1  0f2fc3                    COMISS XMM0,XMM3
00514cf4  0f97c0                    SETA AL
00514cf7  3bc8                      CMP ECX,EAX
00514cf9  7406                      JZ 0x00514d01
00514cfb  c6458f01                  MOV byte ptr [EBP + -0x71],0x1
00514cff  eb04                      JMP 0x00514d05
00514d01  c6458f00                  MOV byte ptr [EBP + -0x71],0x0
00514d05  f6857cffffff01            TEST byte ptr [EBP + 0xffffff7c],0x1
00514d0c  7408                      JZ 0x00514d16
00514d0e  8d4dd4                    LEA ECX,[EBP + -0x2c]
00514d11  e82a83efff                CALL 0x0040d040
00514d16  807d8f00                  CMP byte ptr [EBP + -0x71],0x0
00514d1a  740a                      JZ 0x00514d26
00514d1c  c787a00b00000f000000      MOV dword ptr [EDI + 0xba0],0xf
00514d26  807da700                  CMP byte ptr [EBP + -0x59],0x0
00514d2a  742a                      JZ 0x00514d56
00514d2c  0f57d2                    XORPS XMM2,XMM2
00514d2f  0f2f97b80b0000            COMISS XMM2,dword ptr [EDI + 0xbb8]
00514d36  0f87a0000000              JA 0x00514ddc
00514d3c  0f2f9750030000            COMISS XMM2,dword ptr [EDI + 0x350]
00514d43  0f8793000000              JA 0x00514ddc
00514d49  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
00514d50  0f8c86000000              JL 0x00514ddc
00514d56  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
00514d5e  8d4f48                    LEA ECX,[EDI + 0x48]
00514d61  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00514d69  0f28c3                    MOVAPS XMM0,XMM3
00514d6c  f30f59c9                  MULSS XMM1,XMM1
00514d70  f30f59c3                  MULSS XMM0,XMM3
00514d74  f30f58c1                  ADDSS XMM0,XMM1
00514d78  f30f100d6ca0ba00          MOVSS XMM1,dword ptr [0x00baa06c]
00514d80  0f2fc8                    COMISS XMM1,XMM0
00514d83  761a                      JBE 0x00514d9f
00514d85  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00514d89  7451                      JZ 0x00514ddc
00514d8b  8d4f78                    LEA ECX,[EDI + 0x78]
00514d8e  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
00514d95  0f57c9                    XORPS XMM1,XMM1
00514d98  e86340efff                CALL 0x00408e00
00514d9d  eb3d                      JMP 0x00514ddc
00514d9f  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00514da7  0f541d40cbba00            ANDPS XMM3,xmmword ptr [0x00bacb40]
00514dae  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00514db5  0f2fd8                    COMISS XMM3,XMM0
00514db8  6a00                      PUSH 0x0
00514dba  56                        PUSH ESI
00514dbb  761a                      JBE 0x00514dd7
00514dbd  e8be55efff                CALL 0x0040a380
00514dc2  0f57c0                    XORPS XMM0,XMM0
00514dc5  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
00514dcc  0f97c0                    SETA AL
00514dcf  888748010000              MOV byte ptr [EDI + 0x148],AL
00514dd5  eb05                      JMP 0x00514ddc
00514dd7  e8a455efff                CALL 0x0040a380
00514ddc  817f281b010000            CMP dword ptr [EDI + 0x28],0x11b
00514de3  0f85b1000000              JNZ 0x00514e9a
00514de9  ff7720                    PUSH dword ptr [EDI + 0x20]
00514dec  8bcf                      MOV ECX,EDI
00514dee  6a07                      PUSH 0x7
00514df0  e81b791900                CALL 0x006ac710
00514df5  84c0                      TEST AL,AL
00514df7  0f849d000000              JZ 0x00514e9a
00514dfd  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00514e03  2500000001                AND EAX,0x1000000
00514e08  83c800                    OR EAX,0x0
00514e0b  0f8589000000              JNZ 0x00514e9a
00514e11  e84aa11d00                CALL 0x006eef60
00514e16  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00514e1c  6a00                      PUSH 0x0
00514e1e  68acd5c500                PUSH 0xc5d5ac
00514e23  68dcd5c500                PUSH 0xc5d5dc
00514e28  6a00                      PUSH 0x0
00514e2a  50                        PUSH EAX
00514e2b  6a00                      PUSH 0x0
00514e2d  57                        PUSH EDI
00514e2e  6840b6c700                PUSH 0xc7b640
00514e33  8d873c030000              LEA EAX,[EDI + 0x33c]
00514e39  50                        PUSH EAX
00514e3a  6a16                      PUSH 0x16
00514e3c  68e8030000                PUSH 0x3e8
00514e41  e8da3cf1ff                CALL 0x00428b20
00514e46  50                        PUSH EAX
00514e47  e865ba5d00                CALL 0x00af08b1
00514e4c  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00514e54  8bc8                      MOV ECX,EAX
00514e56  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00514e5e  83c414                    ADD ESP,0x14
00514e61  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00514e69  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00514e71  8b01                      MOV EAX,dword ptr [ECX]
00514e73  f30f1189e4000000          MOVSS dword ptr [ECX + 0xe4],XMM1
00514e7b  c7815c04000014000000      MOV dword ptr [ECX + 0x45c],0x14
00514e85  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
00514e8d  c7816004000014000000      MOV dword ptr [ECX + 0x460],0x14
00514e97  ff500c                    CALL dword ptr [EAX + 0xc]
00514e9a  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00514ea1  0f8431010000              JZ 0x00514fd8
00514ea7  837f2829                  CMP dword ptr [EDI + 0x28],0x29
00514eab  0f8527010000              JNZ 0x00514fd8
00514eb1  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00514eb5  0f851d010000              JNZ 0x00514fd8
00514ebb  e8a0a01d00                CALL 0x006eef60
00514ec0  8bf0                      MOV ESI,EAX
00514ec2  8d4580                    LEA EAX,[EBP + -0x80]
00514ec5  50                        PUSH EAX
00514ec6  e8a5a11600                CALL 0x0067f070
00514ecb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00514ed1  83c404                    ADD ESP,0x4
00514ed4  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00514ed9  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00514edd  8d45e4                    LEA EAX,[EBP + -0x1c]
00514ee0  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00514ee8  56                        PUSH ESI
00514ee9  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00514ef1  6a00                      PUSH 0x0
00514ef3  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00514efb  6a00                      PUSH 0x0
00514efd  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
00514f05  6840b6c700                PUSH 0xc7b640
00514f0a  50                        PUSH EAX
00514f0b  6a00                      PUSH 0x0
00514f0d  6848030000                PUSH 0x348
00514f12  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00514f17  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
00514f1c  e8ff3bf1ff                CALL 0x00428b20
00514f21  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
00514f28  8bf0                      MOV ESI,EAX
00514f2a  7416                      JZ 0x00514f42
00514f2c  ffb7640c0000              PUSH dword ptr [EDI + 0xc64]
00514f32  8bce                      MOV ECX,ESI
00514f34  ff7630                    PUSH dword ptr [ESI + 0x30]
00514f37  ff762c                    PUSH dword ptr [ESI + 0x2c]
00514f3a  ff7628                    PUSH dword ptr [ESI + 0x28]
00514f3d  e8eebf1a00                CALL 0x006c0f30
00514f42  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00514f48  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00514f4e  85c9                      TEST ECX,ECX
00514f50  7418                      JZ 0x00514f6a
00514f52  894594                    MOV dword ptr [EBP + -0x6c],EAX
00514f55  81c1cc030000              ADD ECX,0x3cc
00514f5b  8d4594                    LEA EAX,[EBP + -0x6c]
00514f5e  50                        PUSH EAX
00514f5f  e8aca2fbff                CALL 0x004cf210
00514f64  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00514f6a  50                        PUSH EAX
00514f6b  8bcf                      MOV ECX,EDI
00514f6d  8938                      MOV dword ptr [EAX],EDI
00514f6f  e87c8dfbff                CALL 0x004cdcf0
00514f74  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00514f7a  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00514f80  85c9                      TEST ECX,ECX
00514f82  7418                      JZ 0x00514f9c
00514f84  894594                    MOV dword ptr [EBP + -0x6c],EAX
00514f87  81c1cc030000              ADD ECX,0x3cc
00514f8d  8d4594                    LEA EAX,[EBP + -0x6c]
00514f90  50                        PUSH EAX
00514f91  e87aa2fbff                CALL 0x004cf210
00514f96  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00514f9c  50                        PUSH EAX
00514f9d  8bce                      MOV ECX,ESI
00514f9f  8930                      MOV dword ptr [EAX],ESI
00514fa1  e84a8dfbff                CALL 0x004cdcf0
00514fa6  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00514fac  8bce                      MOV ECX,ESI
00514fae  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00514fb5  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00514fbb  8b06                      MOV EAX,dword ptr [ESI]
00514fbd  ff500c                    CALL dword ptr [EAX + 0xc]
00514fc0  6a00                      PUSH 0x0
00514fc2  ff7730                    PUSH dword ptr [EDI + 0x30]
00514fc5  8bcf                      MOV ECX,EDI
00514fc7  6a03                      PUSH 0x3
00514fc9  ff7728                    PUSH dword ptr [EDI + 0x28]
00514fcc  e85fbf1a00                CALL 0x006c0f30
00514fd1  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
00514fd8  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00514fdb  64890d00000000            MOV dword ptr FS:[0x0],ECX
00514fe2  59                        POP ECX
00514fe3  5f                        POP EDI
00514fe4  5e                        POP ESI
00514fe5  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00514fe8  33cd                      XOR ECX,EBP
00514fea  e83ca15d00                CALL 0x00aef12b
00514fef  8be5                      MOV ESP,EBP
00514ff1  5d                        POP EBP
00514ff2  8be3                      MOV ESP,EBX
00514ff4  5b                        POP EBX
00514ff5  c3                        RET
