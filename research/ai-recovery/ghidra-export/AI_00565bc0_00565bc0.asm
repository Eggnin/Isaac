; J460 NPC AI 0x00565bc0 AI_00565bc0
; types=837
; identities=837.0.0
; entry=00565bc0
00565bc0  55                        PUSH EBP
00565bc1  8bec                      MOV EBP,ESP
00565bc3  83e4f8                    AND ESP,0xfffffff8
00565bc6  51                        PUSH ECX
00565bc7  53                        PUSH EBX
00565bc8  56                        PUSH ESI
00565bc9  57                        PUSH EDI
00565bca  8bf9                      MOV EDI,ECX
00565bcc  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00565bd2  85c0                      TEST EAX,EAX
00565bd4  0f840b010000              JZ 0x00565ce5
00565bda  83f803                    CMP EAX,0x3
00565bdd  7470                      JZ 0x00565c4f
00565bdf  83f808                    CMP EAX,0x8
00565be2  0f85a6010000              JNZ 0x00565d8e
00565be8  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
00565bf0  0f57d2                    XORPS XMM2,XMM2
00565bf3  e8686b1400                CALL 0x006ac760
00565bf8  85c0                      TEST EAX,EAX
00565bfa  7434                      JZ 0x00565c30
00565bfc  e85f931800                CALL 0x006eef60
00565c01  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00565c07  6a00                      PUSH 0x0
00565c09  50                        PUSH EAX
00565c0a  6a00                      PUSH 0x0
00565c0c  6a00                      PUSH 0x0
00565c0e  6840b6c700                PUSH 0xc7b640
00565c13  8d873c030000              LEA EAX,[EDI + 0x33c]
00565c19  50                        PUSH EAX
00565c1a  6885000000                PUSH 0x85
00565c1f  68e8030000                PUSH 0x3e8
00565c24  e8e7871900                CALL 0x006fe410
00565c29  8bc8                      MOV ECX,EAX
00565c2b  8b10                      MOV EDX,dword ptr [EAX]
00565c2d  ff520c                    CALL dword ptr [EDX + 0xc]
00565c30  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00565c34  740d                      JZ 0x00565c43
00565c36  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00565c3d  0f854b010000              JNZ 0x00565d8e
00565c43  8b07                      MOV EAX,dword ptr [EDI]
00565c45  8bcf                      MOV ECX,EDI
00565c47  ff5028                    CALL dword ptr [EAX + 0x28]
00565c4a  e93f010000                JMP 0x00565d8e
00565c4f  6a00                      PUSH 0x0
00565c51  6854bcb100                PUSH 0xb1bc54
00565c56  8d4f48                    LEA ECX,[EDI + 0x48]
00565c59  e82247eaff                CALL 0x0040a380
00565c5e  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00565c66  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00565c6e  2bc8                      SUB ECX,EAX
00565c70  018f10040000              ADD dword ptr [EDI + 0x410],ECX
00565c76  83bf100400001e            CMP dword ptr [EDI + 0x410],0x1e
00565c7d  0f8e0b010000              JLE 0x00565d8e
00565c83  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00565c89  8d4c240c                  LEA ECX,[ESP + 0xc]
00565c8d  c744240c8c010000          MOV dword ptr [ESP + 0xc],0x18c
00565c95  e8e60a3f00                CALL 0x00956780
00565c9a  83ec08                    SUB ESP,0x8
00565c9d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00565ca5  c704240000803f            MOV dword ptr [ESP],0x3f800000
00565cac  6a00                      PUSH 0x0
00565cae  6a02                      PUSH 0x2
00565cb0  51                        PUSH ECX
00565cb1  c704240000803f            MOV dword ptr [ESP],0x3f800000
00565cb8  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00565cbe  ff742420                  PUSH dword ptr [ESP + 0x20]
00565cc2  e8697f3c00                CALL 0x0092dc30
00565cc7  6a00                      PUSH 0x0
00565cc9  680cd3b100                PUSH 0xb1d30c
00565cce  8d4f48                    LEA ECX,[EDI + 0x48]
00565cd1  e8aa46eaff                CALL 0x0040a380
00565cd6  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00565ce0  e9a9000000                JMP 0x00565d8e
00565ce5  6aff                      PUSH -0x1
00565ce7  8db73c030000              LEA ESI,[EDI + 0x33c]
00565ced  56                        PUSH ESI
00565cee  56                        PUSH ESI
00565cef  e83c32feff                CALL 0x00548f30
00565cf4  8bd0                      MOV EDX,EAX
00565cf6  85d2                      TEST EDX,EDX
00565cf8  790e                      JNS 0x00565d08
00565cfa  8b07                      MOV EAX,dword ptr [EDI]
00565cfc  8bcf                      MOV ECX,EDI
00565cfe  ff5028                    CALL dword ptr [EAX + 0x28]
00565d01  5f                        POP EDI
00565d02  5e                        POP ESI
00565d03  5b                        POP EBX
00565d04  8be5                      MOV ESP,EBP
00565d06  5d                        POP EBP
00565d07  c3                        RET
00565d08  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00565d0e  81fac0010000              CMP EDX,0x1c0
00565d14  7d13                      JGE 0x00565d29
00565d16  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
00565d1c  bb05000000                MOV EBX,0x5
00565d21  66899c506c0e0000          MOV word ptr [EAX + EDX*0x2 + 0xe6c],BX
00565d29  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
00565d2f  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00565d37  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
00565d3a  8bc2                      MOV EAX,EDX
00565d3c  99                        CDQ
00565d3d  f7f9                      IDIV ECX
00565d3f  660f6ed2                  MOVD XMM2,EDX
00565d43  660f6ec8                  MOVD XMM1,EAX
00565d47  0f5bd2                    CVTDQ2PS XMM2,XMM2
00565d4a  0f5bc9                    CVTDQ2PS XMM1,XMM1
00565d4d  f30f59d0                  MULSS XMM2,XMM0
00565d51  f30f59c8                  MULSS XMM1,XMM0
00565d55  f30f58d0                  ADDSS XMM2,XMM0
00565d59  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
00565d61  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
00565d69  f30f1116                  MOVSS dword ptr [ESI],XMM2
00565d6d  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
00565d75  f30f114e04                MOVSS dword ptr [ESI + 0x4],XMM1
00565d7a  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00565d84  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00565d8e  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00565d96  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00565d9e  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00565da6  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00565dae  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00565db6  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00565dbe  5f                        POP EDI
00565dbf  5e                        POP ESI
00565dc0  5b                        POP EBX
00565dc1  8be5                      MOV ESP,EBP
00565dc3  5d                        POP EBP
00565dc4  c3                        RET
