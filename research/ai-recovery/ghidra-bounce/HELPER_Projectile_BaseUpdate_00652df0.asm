; J460 NPC AI 0x00652df0 HELPER_Projectile_BaseUpdate
; types=9
; identities=9.*
; entry=00652df0
00652df0  55                        PUSH EBP
00652df1  8bec                      MOV EBP,ESP
00652df3  83e4f8                    AND ESP,0xfffffff8
00652df6  83ec0c                    SUB ESP,0xc
00652df9  a17816c700                MOV EAX,[0x00c71678]
00652dfe  53                        PUSH EBX
00652dff  56                        PUSH ESI
00652e00  57                        PUSH EDI
00652e01  8bf1                      MOV ESI,ECX
00652e03  56                        PUSH ESI
00652e04  51                        PUSH ECX
00652e05  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00652e0b  e8d0751900                CALL 0x007ea3e0
00652e10  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
00652e16  8bbe38040000              MOV EDI,dword ptr [ESI + 0x438]
00652e1c  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00652e24  89442414                  MOV dword ptr [ESP + 0x14],EAX
00652e28  8bc7                      MOV EAX,EDI
00652e2a  2580000080                AND EAX,0x80000080
00652e2f  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00652e35  3d80000080                CMP EAX,0x80000080
00652e3a  7521                      JNZ 0x00652e5d
00652e3c  a17816c700                MOV EAX,[0x00c71678]
00652e41  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00652e47  83b82c72000000            CMP dword ptr [EAX + 0x722c],0x0
00652e4e  0f8ed0000000              JLE 0x00652f24
00652e54  f30f59c1                  MULSS XMM0,XMM1
00652e58  e9c7000000                JMP 0x00652f24
00652e5d  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
00652e63  85c0                      TEST EAX,EAX
00652e65  7414                      JZ 0x00652e7b
00652e67  8b8068010000              MOV EAX,dword ptr [EAX + 0x168]
00652e6d  2500000020                AND EAX,0x20000000
00652e72  83c800                    OR EAX,0x0
00652e75  0f85a9000000              JNZ 0x00652f24
00652e7b  8b1d7816c700              MOV EBX,dword ptr [0x00c71678]
00652e81  68e8000000                PUSH 0xe8
00652e86  8b8300830100              MOV EAX,dword ptr [EBX + 0x18300]
00652e8c  0510730000                ADD EAX,0x7310
00652e91  8bc8                      MOV ECX,EAX
00652e93  89442414                  MOV dword ptr [ESP + 0x14],EAX
00652e97  e854d72d00                CALL 0x009305f0
00652e9c  84c0                      TEST AL,AL
00652e9e  7562                      JNZ 0x00652f02
00652ea0  83bb8465020016            CMP dword ptr [EBX + 0x26584],0x16
00652ea7  740f                      JZ 0x00652eb8
00652ea9  8b8300830100              MOV EAX,dword ptr [EBX + 0x18300]
00652eaf  83b81012000001            CMP dword ptr [EAX + 0x1210],0x1
00652eb6  744a                      JZ 0x00652f02
00652eb8  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
00652ebc  6a42                      PUSH 0x42
00652ebe  e8bdda2d00                CALL 0x00930980
00652ec3  85c0                      TEST EAX,EAX
00652ec5  744f                      JZ 0x00652f16
00652ec7  660f6e4808                MOVD XMM1,dword ptr [EAX + 0x8]
00652ecc  0f57c0                    XORPS XMM0,XMM0
00652ecf  0f5bc9                    CVTDQ2PS XMM1,XMM1
00652ed2  f30f5cc8                  SUBSS XMM1,XMM0
00652ed6  f30f5e0dd0a8ba00          DIVSS XMM1,dword ptr [0x00baa8d0]
00652ede  f30f5fc8                  MAXSS XMM1,XMM0
00652ee2  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00652eea  f30f5dc8                  MINSS XMM1,XMM0
00652eee  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00652ef6  f30f5cc1                  SUBSS XMM0,XMM1
00652efa  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
00652f00  eb1a                      JMP 0x00652f1c
00652f02  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00652f08  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00652f10  f30f59c1                  MULSS XMM0,XMM1
00652f14  eb0e                      JMP 0x00652f24
00652f16  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00652f1c  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00652f24  81e700000001              AND EDI,0x1000000
00652f2a  83cf00                    OR EDI,0x0
00652f2d  7404                      JZ 0x00652f33
00652f2f  f30f59c1                  MULSS XMM0,XMM1
00652f33  83be1c03000000            CMP dword ptr [ESI + 0x31c],0x0
00652f3a  7f09                      JG 0x00652f45
00652f3c  83bef003000000            CMP dword ptr [ESI + 0x3f0],0x0
00652f43  7e08                      JLE 0x00652f4d
00652f45  f30f59058ca0ba00          MULSS XMM0,dword ptr [0x00baa08c]
00652f4d  5f                        POP EDI
00652f4e  5e                        POP ESI
00652f4f  5b                        POP EBX
00652f50  8be5                      MOV ESP,EBP
00652f52  5d                        POP EBP
00652f53  c3                        RET
