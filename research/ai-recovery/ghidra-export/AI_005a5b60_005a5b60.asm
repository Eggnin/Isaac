; J460 NPC AI 0x005a5b60 AI_005a5b60
; types=294
; identities=294.0.0
; entry=005a5b60
005a5b60  53                        PUSH EBX
005a5b61  8bdc                      MOV EBX,ESP
005a5b63  83ec08                    SUB ESP,0x8
005a5b66  83e4f8                    AND ESP,0xfffffff8
005a5b69  83c404                    ADD ESP,0x4
005a5b6c  55                        PUSH EBP
005a5b6d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005a5b70  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005a5b74  8bec                      MOV EBP,ESP
005a5b76  6aff                      PUSH -0x1
005a5b78  683b59af00                PUSH 0xaf593b
005a5b7d  64a100000000              MOV EAX,FS:[0x0]
005a5b83  50                        PUSH EAX
005a5b84  53                        PUSH EBX
005a5b85  81ecb8000000              SUB ESP,0xb8
005a5b8b  a1b493bf00                MOV EAX,[0x00bf93b4]
005a5b90  33c5                      XOR EAX,EBP
005a5b92  8945ec                    MOV dword ptr [EBP + -0x14],EAX
005a5b95  56                        PUSH ESI
005a5b96  57                        PUSH EDI
005a5b97  50                        PUSH EAX
005a5b98  8d45f4                    LEA EAX,[EBP + -0xc]
005a5b9b  64a300000000              MOV FS:[0x0],EAX
005a5ba1  8bf9                      MOV EDI,ECX
005a5ba3  a17816c700                MOV EAX,[0x00c71678]
005a5ba8  6a00                      PUSH 0x0
005a5baa  6a00                      PUSH 0x0
005a5bac  6aff                      PUSH -0x1
005a5bae  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a5bb4  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
005a5bba  6aff                      PUSH -0x1
005a5bbc  6896010000                PUSH 0x196
005a5bc1  81c118120000              ADD ECX,0x1218
005a5bc7  50                        PUSH EAX
005a5bc8  e89353e7ff                CALL 0x0041af60
005a5bcd  6a00                      PUSH 0x0
005a5bcf  6a01                      PUSH 0x1
005a5bd1  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
005a5bd8  a17816c700                MOV EAX,[0x00c71678]
005a5bdd  6aff                      PUSH -0x1
005a5bdf  6aff                      PUSH -0x1
005a5be1  6826010000                PUSH 0x126
005a5be6  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a5bec  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
005a5bf2  81c118120000              ADD ECX,0x1218
005a5bf8  50                        PUSH EAX
005a5bf9  e86253e7ff                CALL 0x0041af60
005a5bfe  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
005a5c02  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
005a5c08  85f6                      TEST ESI,ESI
005a5c0a  0f8518030000              JNZ 0x005a5f28
005a5c10  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
005a5c16  c787640b000002000000      MOV dword ptr [EDI + 0xb64],0x2
005a5c20  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
005a5c26  89b55cffffff              MOV dword ptr [EBP + 0xffffff5c],ESI
005a5c2c  89b560ffffff              MOV dword ptr [EBP + 0xffffff60],ESI
005a5c32  0f57c9                    XORPS XMM1,XMM1
005a5c35  89b564ffffff              MOV dword ptr [EBP + 0xffffff64],ESI
005a5c3b  0f57d2                    XORPS XMM2,XMM2
005a5c3e  3bc8                      CMP ECX,EAX
005a5c40  7419                      JZ 0x005a5c5b
005a5c42  f30f7e855cffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff5c]
005a5c4a  8bc6                      MOV EAX,ESI
005a5c4c  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
005a5c51  0f1111                    MOVUPS xmmword ptr [ECX],XMM2
005a5c54  894128                    MOV dword ptr [ECX + 0x28],EAX
005a5c57  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
005a5c5b  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
005a5c61  ba01000000                MOV EDX,0x1
005a5c66  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
005a5c6c  83e1fb                    AND ECX,0xfffffffb
005a5c6f  f30f102504a9ba00          MOVSS XMM4,dword ptr [0x00baa904]
005a5c77  83c911                    OR ECX,0x11
005a5c7a  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
005a5c80  a17816c700                MOV EAX,[0x00c71678]
005a5c85  898f68010000              MOV dword ptr [EDI + 0x168],ECX
005a5c8b  83c9ff                    OR ECX,0xffffffff
005a5c8e  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005a5c98  33f6                      XOR ESI,ESI
005a5c9a  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
005a5ca4  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
005a5cab  c7875c03000001000000      MOV dword ptr [EDI + 0x35c],0x1
005a5cb5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005a5cbb  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005a5cc3  f30f100d44b6c700          MOVSS XMM1,dword ptr [0x00c7b644]
005a5ccb  8945bc                    MOV dword ptr [EBP + -0x44],EAX
005a5cce  b844070000                MOV EAX,0x744
005a5cd3  894da8                    MOV dword ptr [EBP + -0x58],ECX
005a5cd6  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
005a5cdb  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
005a5ce0  897594                    MOV dword ptr [EBP + -0x6c],ESI
005a5ce3  8955ac                    MOV dword ptr [EBP + -0x54],EDX
005a5ce6  8945b8                    MOV dword ptr [EBP + -0x48],EAX
005a5ce9  0f1f8000000000            NOP dword ptr [EAX]
005a5cf0  83fe07                    CMP ESI,0x7
005a5cf3  0f8766010000              JA 0x005a5e5f
005a5cf9  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
005a5cfc  8bce                      MOV ECX,ESI
005a5cfe  c1e905                    SHR ECX,0x5
005a5d01  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005a5d04  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
005a5d07  85548838                  TEST dword ptr [EAX + ECX*0x4 + 0x38],EDX
005a5d0b  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
005a5d0e  0f8448010000              JZ 0x005a5e5c
005a5d14  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
005a5d17  8b0410                    MOV EAX,dword ptr [EAX + EDX*0x1]
005a5d1a  8b4a0c                    MOV ECX,dword ptr [EDX + 0xc]
005a5d1d  99                        CDQ
005a5d1e  f7f9                      IDIV ECX
005a5d20  837da8ff                  CMP dword ptr [EBP + -0x58],-0x1
005a5d24  660f6ed2                  MOVD XMM2,EDX
005a5d28  660f6ed8                  MOVD XMM3,EAX
005a5d2c  0f5bd2                    CVTDQ2PS XMM2,XMM2
005a5d2f  0f5bdb                    CVTDQ2PS XMM3,XMM3
005a5d32  f30f59d4                  MULSS XMM2,XMM4
005a5d36  f30f59dc                  MULSS XMM3,XMM4
005a5d3a  f30f58d4                  ADDSS XMM2,XMM4
005a5d3e  f30f581d00aaba00          ADDSS XMM3,dword ptr [0x00baaa00]
005a5d46  f30f11558c                MOVSS dword ptr [EBP + -0x74],XMM2
005a5d4b  f30f115d9c                MOVSS dword ptr [EBP + -0x64],XMM3
005a5d50  746d                      JZ 0x005a5dbf
005a5d52  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005a5d5a  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005a5d62  f30f5cca                  SUBSS XMM1,XMM2
005a5d66  f30f5cc3                  SUBSS XMM0,XMM3
005a5d6a  f30f59c9                  MULSS XMM1,XMM1
005a5d6e  f30f59c0                  MULSS XMM0,XMM0
005a5d72  f30f58c1                  ADDSS XMM0,XMM1
005a5d76  e8d5fce8ff                CALL 0x00435a50
005a5d7b  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005a5d83  f30f5c4da4                SUBSS XMM1,dword ptr [EBP + -0x5c]
005a5d88  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
005a5d8d  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005a5d95  f30f5c45a0                SUBSS XMM0,dword ptr [EBP + -0x60]
005a5d9a  f30f59c9                  MULSS XMM1,XMM1
005a5d9e  f30f59c0                  MULSS XMM0,XMM0
005a5da2  f30f58c1                  ADDSS XMM0,XMM1
005a5da6  e8a5fce8ff                CALL 0x00435a50
005a5dab  0f2f45b4                  COMISS XMM0,dword ptr [EBP + -0x4c]
005a5daf  0f868f000000              JBE 0x005a5e44
005a5db5  f30f10558c                MOVSS XMM2,dword ptr [EBP + -0x74]
005a5dba  f30f105d9c                MOVSS XMM3,dword ptr [EBP + -0x64]
005a5dbf  33f6                      XOR ESI,ESI
005a5dc1  397584                    CMP dword ptr [EBP + -0x7c],ESI
005a5dc4  764f                      JBE 0x005a5e15
005a5dc6  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
005a5dcc  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
005a5dcf  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
005a5dd7  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
005a5ddf  f30f5cca                  SUBSS XMM1,XMM2
005a5de3  f30f5cc3                  SUBSS XMM0,XMM3
005a5de7  f30f59c9                  MULSS XMM1,XMM1
005a5deb  f30f59c0                  MULSS XMM0,XMM0
005a5def  f30f58c1                  ADDSS XMM0,XMM1
005a5df3  e858fce8ff                CALL 0x00435a50
005a5df8  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
005a5e00  0f2fc8                    COMISS XMM1,XMM0
005a5e03  773c                      JA 0x005a5e41
005a5e05  f30f10558c                MOVSS XMM2,dword ptr [EBP + -0x74]
005a5e0a  46                        INC ESI
005a5e0b  f30f105d9c                MOVSS XMM3,dword ptr [EBP + -0x64]
005a5e10  3b7584                    CMP ESI,dword ptr [EBP + -0x7c]
005a5e13  72b1                      JC 0x005a5dc6
005a5e15  8b7594                    MOV ESI,dword ptr [EBP + -0x6c]
005a5e18  8bce                      MOV ECX,ESI
005a5e1a  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
005a5e1f  f30f104d9c                MOVSS XMM1,dword ptr [EBP + -0x64]
005a5e24  f30f102504a9ba00          MOVSS XMM4,dword ptr [0x00baa904]
005a5e2c  8b55ac                    MOV EDX,dword ptr [EBP + -0x54]
005a5e2f  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
005a5e32  894da8                    MOV dword ptr [EBP + -0x58],ECX
005a5e35  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
005a5e3a  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
005a5e3f  eb1e                      JMP 0x005a5e5f
005a5e41  8b7594                    MOV ESI,dword ptr [EBP + -0x6c]
005a5e44  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
005a5e47  8b55ac                    MOV EDX,dword ptr [EBP + -0x54]
005a5e4a  f30f102504a9ba00          MOVSS XMM4,dword ptr [0x00baa904]
005a5e52  f30f104da0                MOVSS XMM1,dword ptr [EBP + -0x60]
005a5e57  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
005a5e5c  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
005a5e5f  83c004                    ADD EAX,0x4
005a5e62  d1c2                      ROL EDX,0x1
005a5e64  46                        INC ESI
005a5e65  8945b8                    MOV dword ptr [EBP + -0x48],EAX
005a5e68  897594                    MOV dword ptr [EBP + -0x6c],ESI
005a5e6b  8955ac                    MOV dword ptr [EBP + -0x54],EDX
005a5e6e  3d64070000                CMP EAX,0x764
005a5e73  0f8c77feffff              JL 0x005a5cf0
005a5e79  83f9ff                    CMP ECX,-0x1
005a5e7c  7416                      JZ 0x005a5e94
005a5e7e  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
005a5e84  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
005a5e8c  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
005a5e94  660f6e97c00b0000          MOVD XMM2,dword ptr [EDI + 0xbc0]
005a5e9c  0f5bd2                    CVTDQ2PS XMM2,XMM2
005a5e9f  f30f5915b4a9ba00          MULSS XMM2,dword ptr [0x00baa9b4]
005a5ea7  0f28c2                    MOVAPS XMM0,XMM2
005a5eaa  f30f591588a0ba00          MULSS XMM2,dword ptr [0x00baa088]
005a5eb2  f30f5c05b4a9ba00          SUBSS XMM0,dword ptr [0x00baa9b4]
005a5eba  f30f1155b4                MOVSS dword ptr [EBP + -0x4c],XMM2
005a5ebf  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
005a5ec7  0f28c2                    MOVAPS XMM0,XMM2
005a5eca  e85176e7ff                CALL 0x0041d520
005a5ecf  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
005a5ed4  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
005a5ed9  e86276e7ff                CALL 0x0041d540
005a5ede  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
005a5ee3  f30f590590a8ba00          MULSS XMM0,dword ptr [0x00baa890]
005a5eeb  f30f591590a8ba00          MULSS XMM2,dword ptr [0x00baa890]
005a5ef3  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
005a5efb  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
005a5f03  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
005a5f0b  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005a5f13  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
005a5f1b  f30f119738030000          MOVSS dword ptr [EDI + 0x338],XMM2
005a5f23  e9bd0b0000                JMP 0x005a6ae5
005a5f28  8d4748                    LEA EAX,[EDI + 0x48]
005a5f2b  8945b8                    MOV dword ptr [EBP + -0x48],EAX
005a5f2e  83fe02                    CMP ESI,0x2
005a5f31  751f                      JNZ 0x005a5f52
005a5f33  6a00                      PUSH 0x0
005a5f35  68d8fdb500                PUSH 0xb5fdd8
005a5f3a  8bc8                      MOV ECX,EAX
005a5f3c  e83f44e6ff                CALL 0x0040a380
005a5f41  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005a5f4b  be03000000                MOV ESI,0x3
005a5f50  eb03                      JMP 0x005a5f55
005a5f52  8945b8                    MOV dword ptr [EBP + -0x48],EAX
005a5f55  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a5f59  7456                      JZ 0x005a5fb1
005a5f5b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a5f62  754d                      JNZ 0x005a5fb1
005a5f64  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a5f67  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a5f6b  7202                      JC 0x005a5f6f
005a5f6d  8b00                      MOV EAX,dword ptr [EAX]
005a5f6f  b9f4fdb500                MOV ECX,0xb5fdf4
005a5f74  8a10                      MOV DL,byte ptr [EAX]
005a5f76  3a11                      CMP DL,byte ptr [ECX]
005a5f78  751a                      JNZ 0x005a5f94
005a5f7a  84d2                      TEST DL,DL
005a5f7c  7412                      JZ 0x005a5f90
005a5f7e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a5f81  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a5f84  750e                      JNZ 0x005a5f94
005a5f86  83c002                    ADD EAX,0x2
005a5f89  83c102                    ADD ECX,0x2
005a5f8c  84d2                      TEST DL,DL
005a5f8e  75e4                      JNZ 0x005a5f74
005a5f90  33c0                      XOR EAX,EAX
005a5f92  eb05                      JMP 0x005a5f99
005a5f94  1bc0                      SBB EAX,EAX
005a5f96  83c801                    OR EAX,0x1
005a5f99  85c0                      TEST EAX,EAX
005a5f9b  7514                      JNZ 0x005a5fb1
005a5f9d  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
005a5fa0  50                        PUSH EAX
005a5fa1  68d8fdb500                PUSH 0xb5fdd8
005a5fa6  e8d543e6ff                CALL 0x0040a380
005a5fab  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
005a5fb1  83fe03                    CMP ESI,0x3
005a5fb4  0f8539010000              JNZ 0x005a60f3
005a5fba  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a5fbe  0f8485000000              JZ 0x005a6049
005a5fc4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a5fcb  0f8478000000              JZ 0x005a6049
005a5fd1  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a5fd4  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a5fd8  7202                      JC 0x005a5fdc
005a5fda  8b00                      MOV EAX,dword ptr [EAX]
005a5fdc  b9f4fdb500                MOV ECX,0xb5fdf4
005a5fe1  8a10                      MOV DL,byte ptr [EAX]
005a5fe3  3a11                      CMP DL,byte ptr [ECX]
005a5fe5  751a                      JNZ 0x005a6001
005a5fe7  84d2                      TEST DL,DL
005a5fe9  7412                      JZ 0x005a5ffd
005a5feb  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a5fee  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a5ff1  750e                      JNZ 0x005a6001
005a5ff3  83c002                    ADD EAX,0x2
005a5ff6  83c102                    ADD ECX,0x2
005a5ff9  84d2                      TEST DL,DL
005a5ffb  75e4                      JNZ 0x005a5fe1
005a5ffd  33c0                      XOR EAX,EAX
005a5fff  eb05                      JMP 0x005a6006
005a6001  1bc0                      SBB EAX,EAX
005a6003  83c801                    OR EAX,0x1
005a6006  85c0                      TEST EAX,EAX
005a6008  0f848b000000              JZ 0x005a6099
005a600e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a6011  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a6015  7202                      JC 0x005a6019
005a6017  8b00                      MOV EAX,dword ptr [EAX]
005a6019  b9d8fdb500                MOV ECX,0xb5fdd8
005a601e  6690                      NOP
005a6020  8a10                      MOV DL,byte ptr [EAX]
005a6022  3a11                      CMP DL,byte ptr [ECX]
005a6024  751a                      JNZ 0x005a6040
005a6026  84d2                      TEST DL,DL
005a6028  7412                      JZ 0x005a603c
005a602a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a602d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a6030  750e                      JNZ 0x005a6040
005a6032  83c002                    ADD EAX,0x2
005a6035  83c102                    ADD ECX,0x2
005a6038  84d2                      TEST DL,DL
005a603a  75e4                      JNZ 0x005a6020
005a603c  33c0                      XOR EAX,EAX
005a603e  eb05                      JMP 0x005a6045
005a6040  1bc0                      SBB EAX,EAX
005a6042  83c801                    OR EAX,0x1
005a6045  85c0                      TEST EAX,EAX
005a6047  7450                      JZ 0x005a6099
005a6049  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
005a604c  6a00                      PUSH 0x0
005a604e  68f4fdb500                PUSH 0xb5fdf4
005a6053  e82843e6ff                CALL 0x0040a380
005a6058  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a605e  8d4dbc                    LEA ECX,[EBP + -0x44]
005a6061  c745bc23000000            MOV dword ptr [EBP + -0x44],0x23
005a6068  e813073b00                CALL 0x00956780
005a606d  83ec08                    SUB ESP,0x8
005a6070  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a6076  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a607e  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a6085  6a00                      PUSH 0x0
005a6087  6a14                      PUSH 0x14
005a6089  51                        PUSH ECX
005a608a  c704240000003f            MOV dword ptr [ESP],0x3f000000
005a6091  ff75bc                    PUSH dword ptr [EBP + -0x44]
005a6094  e8977b3800                CALL 0x0092dc30
005a6099  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a609d  7454                      JZ 0x005a60f3
005a609f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a60a6  754b                      JNZ 0x005a60f3
005a60a8  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a60ab  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a60af  7202                      JC 0x005a60b3
005a60b1  8b00                      MOV EAX,dword ptr [EAX]
005a60b3  b9f4fdb500                MOV ECX,0xb5fdf4
005a60b8  8a10                      MOV DL,byte ptr [EAX]
005a60ba  3a11                      CMP DL,byte ptr [ECX]
005a60bc  751a                      JNZ 0x005a60d8
005a60be  84d2                      TEST DL,DL
005a60c0  7412                      JZ 0x005a60d4
005a60c2  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a60c5  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a60c8  750e                      JNZ 0x005a60d8
005a60ca  83c002                    ADD EAX,0x2
005a60cd  83c102                    ADD ECX,0x2
005a60d0  84d2                      TEST DL,DL
005a60d2  75e4                      JNZ 0x005a60b8
005a60d4  33c0                      XOR EAX,EAX
005a60d6  eb05                      JMP 0x005a60dd
005a60d8  1bc0                      SBB EAX,EAX
005a60da  83c801                    OR EAX,0x1
005a60dd  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
005a60e0  85c0                      TEST EAX,EAX
005a60e2  7512                      JNZ 0x005a60f6
005a60e4  50                        PUSH EAX
005a60e5  68d8fdb500                PUSH 0xb5fdd8
005a60ea  8bce                      MOV ECX,ESI
005a60ec  e88f42e6ff                CALL 0x0040a380
005a60f1  eb03                      JMP 0x005a60f6
005a60f3  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
005a60f6  83bf640b00000d            CMP dword ptr [EDI + 0xb64],0xd
005a60fd  0f8558020000              JNZ 0x005a635b
005a6103  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a6107  0f848c000000              JZ 0x005a6199
005a610d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a6114  0f847f000000              JZ 0x005a6199
005a611a  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a611d  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a6121  7202                      JC 0x005a6125
005a6123  8b00                      MOV EAX,dword ptr [EAX]
005a6125  b944d6b100                MOV ECX,0xb1d644
005a612a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
005a6130  8a10                      MOV DL,byte ptr [EAX]
005a6132  3a11                      CMP DL,byte ptr [ECX]
005a6134  751a                      JNZ 0x005a6150
005a6136  84d2                      TEST DL,DL
005a6138  7412                      JZ 0x005a614c
005a613a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a613d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a6140  750e                      JNZ 0x005a6150
005a6142  83c002                    ADD EAX,0x2
005a6145  83c102                    ADD ECX,0x2
005a6148  84d2                      TEST DL,DL
005a614a  75e4                      JNZ 0x005a6130
005a614c  33c0                      XOR EAX,EAX
005a614e  eb05                      JMP 0x005a6155
005a6150  1bc0                      SBB EAX,EAX
005a6152  83c801                    OR EAX,0x1
005a6155  85c0                      TEST EAX,EAX
005a6157  0f8495000000              JZ 0x005a61f2
005a615d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a6160  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a6164  7202                      JC 0x005a6168
005a6166  8b00                      MOV EAX,dword ptr [EAX]
005a6168  b9e0fdb500                MOV ECX,0xb5fde0
005a616d  0f1f00                    NOP dword ptr [EAX]
005a6170  8a10                      MOV DL,byte ptr [EAX]
005a6172  3a11                      CMP DL,byte ptr [ECX]
005a6174  751a                      JNZ 0x005a6190
005a6176  84d2                      TEST DL,DL
005a6178  7412                      JZ 0x005a618c
005a617a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a617d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a6180  750e                      JNZ 0x005a6190
005a6182  83c002                    ADD EAX,0x2
005a6185  83c102                    ADD ECX,0x2
005a6188  84d2                      TEST DL,DL
005a618a  75e4                      JNZ 0x005a6170
005a618c  33c0                      XOR EAX,EAX
005a618e  eb05                      JMP 0x005a6195
005a6190  1bc0                      SBB EAX,EAX
005a6192  83c801                    OR EAX,0x1
005a6195  85c0                      TEST EAX,EAX
005a6197  7459                      JZ 0x005a61f2
005a6199  6a00                      PUSH 0x0
005a619b  6844d6b100                PUSH 0xb1d644
005a61a0  8bce                      MOV ECX,ESI
005a61a2  e8d941e6ff                CALL 0x0040a380
005a61a7  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a61ad  8d4dbc                    LEA ECX,[EBP + -0x44]
005a61b0  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a61ba  c745bc24000000            MOV dword ptr [EBP + -0x44],0x24
005a61c1  e8ba053b00                CALL 0x00956780
005a61c6  83ec08                    SUB ESP,0x8
005a61c9  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a61cf  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a61d7  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a61de  6a00                      PUSH 0x0
005a61e0  6a14                      PUSH 0x14
005a61e2  51                        PUSH ECX
005a61e3  c704240000003f            MOV dword ptr [ESP],0x3f000000
005a61ea  ff75bc                    PUSH dword ptr [EBP + -0x44]
005a61ed  e83e7a3800                CALL 0x0092dc30
005a61f2  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
005a61f5  85f6                      TEST ESI,ESI
005a61f7  0f845e010000              JZ 0x005a635b
005a61fd  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a6204  7549                      JNZ 0x005a624f
005a6206  8bc6                      MOV EAX,ESI
005a6208  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a620c  7202                      JC 0x005a6210
005a620e  8b00                      MOV EAX,dword ptr [EAX]
005a6210  b944d6b100                MOV ECX,0xb1d644
005a6215  8a10                      MOV DL,byte ptr [EAX]
005a6217  3a11                      CMP DL,byte ptr [ECX]
005a6219  751a                      JNZ 0x005a6235
005a621b  84d2                      TEST DL,DL
005a621d  7412                      JZ 0x005a6231
005a621f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a6222  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a6225  750e                      JNZ 0x005a6235
005a6227  83c002                    ADD EAX,0x2
005a622a  83c102                    ADD ECX,0x2
005a622d  84d2                      TEST DL,DL
005a622f  75e4                      JNZ 0x005a6215
005a6231  33c0                      XOR EAX,EAX
005a6233  eb05                      JMP 0x005a623a
005a6235  1bc0                      SBB EAX,EAX
005a6237  83c801                    OR EAX,0x1
005a623a  85c0                      TEST EAX,EAX
005a623c  7511                      JNZ 0x005a624f
005a623e  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
005a6241  50                        PUSH EAX
005a6242  68e0fdb500                PUSH 0xb5fde0
005a6247  e83441e6ff                CALL 0x0040a380
005a624c  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
005a624f  85f6                      TEST ESI,ESI
005a6251  0f8404010000              JZ 0x005a635b
005a6257  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a625e  0f84f7000000              JZ 0x005a635b
005a6264  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a6267  85c0                      TEST EAX,EAX
005a6269  740a                      JZ 0x005a6275
005a626b  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a626f  7209                      JC 0x005a627a
005a6271  8b00                      MOV EAX,dword ptr [EAX]
005a6273  eb05                      JMP 0x005a627a
005a6275  b8eca4b100                MOV EAX,0xb1a4ec
005a627a  b9e0fdb500                MOV ECX,0xb5fde0
005a627f  90                        NOP
005a6280  8a10                      MOV DL,byte ptr [EAX]
005a6282  3a11                      CMP DL,byte ptr [ECX]
005a6284  751a                      JNZ 0x005a62a0
005a6286  84d2                      TEST DL,DL
005a6288  7412                      JZ 0x005a629c
005a628a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a628d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a6290  750e                      JNZ 0x005a62a0
005a6292  83c002                    ADD EAX,0x2
005a6295  83c102                    ADD ECX,0x2
005a6298  84d2                      TEST DL,DL
005a629a  75e4                      JNZ 0x005a6280
005a629c  33c0                      XOR EAX,EAX
005a629e  eb05                      JMP 0x005a62a5
005a62a0  1bc0                      SBB EAX,EAX
005a62a2  83c801                    OR EAX,0x1
005a62a5  85c0                      TEST EAX,EAX
005a62a7  0f85ae000000              JNZ 0x005a635b
005a62ad  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005a62b3  b90a000000                MOV ECX,0xa
005a62b8  40                        INC EAX
005a62b9  898710040000              MOV dword ptr [EDI + 0x410],EAX
005a62bf  99                        CDQ
005a62c0  f7f9                      IDIV ECX
005a62c2  85d2                      TEST EDX,EDX
005a62c4  0f857e000000              JNZ 0x005a6348
005a62ca  a17816c700                MOV EAX,[0x00c71678]
005a62cf  51                        PUSH ECX
005a62d0  891424                    MOV dword ptr [ESP],EDX
005a62d3  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005a62d9  8d45b0                    LEA EAX,[EBP + -0x50]
005a62dc  50                        PUSH EAX
005a62dd  8bce                      MOV ECX,ESI
005a62df  e8ec862700                CALL 0x0081e9d0
005a62e4  6a00                      PUSH 0x0
005a62e6  6a00                      PUSH 0x0
005a62e8  6a00                      PUSH 0x0
005a62ea  51                        PUSH ECX
005a62eb  c7042400000000            MOV dword ptr [ESP],0x0
005a62f2  8bce                      MOV ECX,ESI
005a62f4  50                        PUSH EAX
005a62f5  8d4588                    LEA EAX,[EBP + -0x78]
005a62f8  50                        PUSH EAX
005a62f9  e822d22600                CALL 0x00813520
005a62fe  e85d8c1400                CALL 0x006eef60
005a6303  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005a6309  6a00                      PUSH 0x0
005a630b  68acd6c500                PUSH 0xc5d6ac
005a6310  68dcd5c500                PUSH 0xc5d5dc
005a6315  6a00                      PUSH 0x0
005a6317  50                        PUSH EAX
005a6318  6a00                      PUSH 0x0
005a631a  6a00                      PUSH 0x0
005a631c  6840b6c700                PUSH 0xc7b640
005a6321  8d873c030000              LEA EAX,[EDI + 0x33c]
005a6327  50                        PUSH EAX
005a6328  6a00                      PUSH 0x0
005a632a  682b010000                PUSH 0x12b
005a632f  e8ec27e8ff                CALL 0x00428b20
005a6334  50                        PUSH EAX
005a6335  e877a55400                CALL 0x00af08b1
005a633a  83c414                    ADD ESP,0x14
005a633d  85c0                      TEST EAX,EAX
005a633f  7407                      JZ 0x005a6348
005a6341  8b10                      MOV EDX,dword ptr [EAX]
005a6343  8bc8                      MOV ECX,EAX
005a6345  ff520c                    CALL dword ptr [EDX + 0xc]
005a6348  83bf1004000050            CMP dword ptr [EDI + 0x410],0x50
005a634f  7e0a                      JLE 0x005a635b
005a6351  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005a635b  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005a6361  83f808                    CMP EAX,0x8
005a6364  7409                      JZ 0x005a636f
005a6366  83f809                    CMP EAX,0x9
005a6369  0f85ef020000              JNZ 0x005a665e
005a636f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a6373  0f8483000000              JZ 0x005a63fc
005a6379  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a6380  0f8476000000              JZ 0x005a63fc
005a6386  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a6389  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a638d  7202                      JC 0x005a6391
005a638f  8b00                      MOV EAX,dword ptr [EAX]
005a6391  b944d6b100                MOV ECX,0xb1d644
005a6396  8a10                      MOV DL,byte ptr [EAX]
005a6398  3a11                      CMP DL,byte ptr [ECX]
005a639a  751a                      JNZ 0x005a63b6
005a639c  84d2                      TEST DL,DL
005a639e  7412                      JZ 0x005a63b2
005a63a0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a63a3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a63a6  750e                      JNZ 0x005a63b6
005a63a8  83c002                    ADD EAX,0x2
005a63ab  83c102                    ADD ECX,0x2
005a63ae  84d2                      TEST DL,DL
005a63b0  75e4                      JNZ 0x005a6396
005a63b2  33c0                      XOR EAX,EAX
005a63b4  eb05                      JMP 0x005a63bb
005a63b6  1bc0                      SBB EAX,EAX
005a63b8  83c801                    OR EAX,0x1
005a63bb  85c0                      TEST EAX,EAX
005a63bd  0f8493000000              JZ 0x005a6456
005a63c3  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a63c6  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a63ca  7202                      JC 0x005a63ce
005a63cc  8b00                      MOV EAX,dword ptr [EAX]
005a63ce  b9e0fdb500                MOV ECX,0xb5fde0
005a63d3  8a10                      MOV DL,byte ptr [EAX]
005a63d5  3a11                      CMP DL,byte ptr [ECX]
005a63d7  751a                      JNZ 0x005a63f3
005a63d9  84d2                      TEST DL,DL
005a63db  7412                      JZ 0x005a63ef
005a63dd  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a63e0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a63e3  750e                      JNZ 0x005a63f3
005a63e5  83c002                    ADD EAX,0x2
005a63e8  83c102                    ADD ECX,0x2
005a63eb  84d2                      TEST DL,DL
005a63ed  75e4                      JNZ 0x005a63d3
005a63ef  33c0                      XOR EAX,EAX
005a63f1  eb05                      JMP 0x005a63f8
005a63f3  1bc0                      SBB EAX,EAX
005a63f5  83c801                    OR EAX,0x1
005a63f8  85c0                      TEST EAX,EAX
005a63fa  745a                      JZ 0x005a6456
005a63fc  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
005a63ff  6a00                      PUSH 0x0
005a6401  6844d6b100                PUSH 0xb1d644
005a6406  e8753fe6ff                CALL 0x0040a380
005a640b  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a6411  8d4dbc                    LEA ECX,[EBP + -0x44]
005a6414  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005a641e  c745bc24000000            MOV dword ptr [EBP + -0x44],0x24
005a6425  e856033b00                CALL 0x00956780
005a642a  83ec08                    SUB ESP,0x8
005a642d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a6433  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a643b  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a6442  6a00                      PUSH 0x0
005a6444  6a14                      PUSH 0x14
005a6446  51                        PUSH ECX
005a6447  c704240000003f            MOV dword ptr [ESP],0x3f000000
005a644e  ff75bc                    PUSH dword ptr [EBP + -0x44]
005a6451  e8da773800                CALL 0x0092dc30
005a6456  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
005a6459  85f6                      TEST ESI,ESI
005a645b  0f84fd010000              JZ 0x005a665e
005a6461  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a6468  7550                      JNZ 0x005a64ba
005a646a  8bc6                      MOV EAX,ESI
005a646c  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a6470  7202                      JC 0x005a6474
005a6472  8b00                      MOV EAX,dword ptr [EAX]
005a6474  b944d6b100                MOV ECX,0xb1d644
005a6479  0f1f8000000000            NOP dword ptr [EAX]
005a6480  8a10                      MOV DL,byte ptr [EAX]
005a6482  3a11                      CMP DL,byte ptr [ECX]
005a6484  751a                      JNZ 0x005a64a0
005a6486  84d2                      TEST DL,DL
005a6488  7412                      JZ 0x005a649c
005a648a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a648d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a6490  750e                      JNZ 0x005a64a0
005a6492  83c002                    ADD EAX,0x2
005a6495  83c102                    ADD ECX,0x2
005a6498  84d2                      TEST DL,DL
005a649a  75e4                      JNZ 0x005a6480
005a649c  33c0                      XOR EAX,EAX
005a649e  eb05                      JMP 0x005a64a5
005a64a0  1bc0                      SBB EAX,EAX
005a64a2  83c801                    OR EAX,0x1
005a64a5  85c0                      TEST EAX,EAX
005a64a7  7511                      JNZ 0x005a64ba
005a64a9  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
005a64ac  50                        PUSH EAX
005a64ad  68e0fdb500                PUSH 0xb5fde0
005a64b2  e8c93ee6ff                CALL 0x0040a380
005a64b7  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
005a64ba  85f6                      TEST ESI,ESI
005a64bc  0f849c010000              JZ 0x005a665e
005a64c2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a64c9  0f848f010000              JZ 0x005a665e
005a64cf  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a64d2  85c0                      TEST EAX,EAX
005a64d4  740a                      JZ 0x005a64e0
005a64d6  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a64da  7209                      JC 0x005a64e5
005a64dc  8b00                      MOV EAX,dword ptr [EAX]
005a64de  eb05                      JMP 0x005a64e5
005a64e0  b8eca4b100                MOV EAX,0xb1a4ec
005a64e5  b9e0fdb500                MOV ECX,0xb5fde0
005a64ea  660f1f440000              NOP word ptr [EAX + EAX*0x1]
005a64f0  8a10                      MOV DL,byte ptr [EAX]
005a64f2  3a11                      CMP DL,byte ptr [ECX]
005a64f4  751a                      JNZ 0x005a6510
005a64f6  84d2                      TEST DL,DL
005a64f8  7412                      JZ 0x005a650c
005a64fa  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a64fd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a6500  750e                      JNZ 0x005a6510
005a6502  83c002                    ADD EAX,0x2
005a6505  83c102                    ADD ECX,0x2
005a6508  84d2                      TEST DL,DL
005a650a  75e4                      JNZ 0x005a64f0
005a650c  33c0                      XOR EAX,EAX
005a650e  eb05                      JMP 0x005a6515
005a6510  1bc0                      SBB EAX,EAX
005a6512  83c801                    OR EAX,0x1
005a6515  85c0                      TEST EAX,EAX
005a6517  0f8541010000              JNZ 0x005a665e
005a651d  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005a6523  40                        INC EAX
005a6524  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
005a652b  898710040000              MOV dword ptr [EDI + 0x410],EAX
005a6531  0f8514010000              JNZ 0x005a664b
005a6537  83f80f                    CMP EAX,0xf
005a653a  0f850b010000              JNZ 0x005a664b
005a6540  a17816c700                MOV EAX,[0x00c71678]
005a6545  83ec0c                    SUB ESP,0xc
005a6548  f30f101dc0adba00          MOVSS XMM3,dword ptr [0x00baadc0]
005a6550  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a6556  8d873c030000              LEA EAX,[EDI + 0x33c]
005a655c  c7442408000020c1          MOV dword ptr [ESP + 0x8],0xc1200000
005a6564  c7442404000020c1          MOV dword ptr [ESP + 0x4],0xc1200000
005a656c  c70424000020c1            MOV dword ptr [ESP],0xc1200000
005a6573  50                        PUSH EAX
005a6574  8d4590                    LEA EAX,[EBP + -0x70]
005a6577  50                        PUSH EAX
005a6578  e8d3c92600                CALL 0x00812f50
005a657d  83bd74ffffff00            CMP dword ptr [EBP + 0xffffff74],0x0
005a6584  897dbc                    MOV dword ptr [EBP + -0x44],EDI
005a6587  760b                      JBE 0x005a6594
005a6589  8b856cffffff              MOV EAX,dword ptr [EBP + 0xffffff6c]
005a658f  8b00                      MOV EAX,dword ptr [EAX]
005a6591  8945bc                    MOV dword ptr [EBP + -0x44],EAX
005a6594  660f6e87c00b0000          MOVD XMM0,dword ptr [EDI + 0xbc0]
005a659c  8d45b0                    LEA EAX,[EBP + -0x50]
005a659f  6a00                      PUSH 0x0
005a65a1  0f5bc0                    CVTDQ2PS XMM0,XMM0
005a65a4  57                        PUSH EDI
005a65a5  50                        PUSH EAX
005a65a6  6a0f                      PUSH 0xf
005a65a8  51                        PUSH ECX
005a65a9  8d4590                    LEA EAX,[EBP + -0x70]
005a65ac  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
005a65b3  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
005a65bb  c745b40000a0c0            MOV dword ptr [EBP + -0x4c],0xc0a00000
005a65c2  f30f110424                MOVSS dword ptr [ESP],XMM0
005a65c7  50                        PUSH EAX
005a65c8  6a03                      PUSH 0x3
005a65ca  e8418d3c00                CALL 0x0096f310
005a65cf  8bf0                      MOV ESI,EAX
005a65d1  83c41c                    ADD ESP,0x1c
005a65d4  85f6                      TEST ESI,ESI
005a65d6  7473                      JZ 0x005a664b
005a65d8  0f57c0                    XORPS XMM0,XMM0
005a65db  c745e09a99193f            MOV dword ptr [EBP + -0x20],0x3f19999a
005a65e2  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
005a65e6  8d45c0                    LEA EAX,[EBP + -0x40]
005a65e9  c745e49a99993e            MOV dword ptr [EBP + -0x1c],0x3e99999a
005a65f0  0f280540c2ba00            MOVAPS XMM0,xmmword ptr [0x00bac240]
005a65f7  8d4e48                    LEA ECX,[ESI + 0x48]
005a65fa  50                        PUSH EAX
005a65fb  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
005a65ff  c745e8cdcccc3d            MOV dword ptr [EBP + -0x18],0x3dcccccd
005a6606  e8c50de6ff                CALL 0x004073d0
005a660b  8b86c8030000              MOV EAX,dword ptr [ESI + 0x3c8]
005a6611  8d8ec8030000              LEA ECX,[ESI + 0x3c8]
005a6617  85c0                      TEST EAX,EAX
005a6619  7418                      JZ 0x005a6633
005a661b  894db4                    MOV dword ptr [EBP + -0x4c],ECX
005a661e  8d88cc030000              LEA ECX,[EAX + 0x3cc]
005a6624  8d45b4                    LEA EAX,[EBP + -0x4c]
005a6627  50                        PUSH EAX
005a6628  e8e38bf2ff                CALL 0x004cf210
005a662d  8d8ec8030000              LEA ECX,[ESI + 0x3c8]
005a6633  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
005a6636  8901                      MOV dword ptr [ECX],EAX
005a6638  85c0                      TEST EAX,EAX
005a663a  7408                      JZ 0x005a6644
005a663c  51                        PUSH ECX
005a663d  8bc8                      MOV ECX,EAX
005a663f  e8ac76f2ff                CALL 0x004cdcf0
005a6644  8b06                      MOV EAX,dword ptr [ESI]
005a6646  8bce                      MOV ECX,ESI
005a6648  ff500c                    CALL dword ptr [EAX + 0xc]
005a664b  83bf1004000024            CMP dword ptr [EDI + 0x410],0x24
005a6652  7e0a                      JLE 0x005a665e
005a6654  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005a665e  83bf640b00000a            CMP dword ptr [EDI + 0xb64],0xa
005a6665  0f8542040000              JNZ 0x005a6aad
005a666b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005a666f  0f8484000000              JZ 0x005a66f9
005a6675  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a667c  747b                      JZ 0x005a66f9
005a667e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a6681  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a6685  7202                      JC 0x005a6689
005a6687  8b00                      MOV EAX,dword ptr [EAX]
005a6689  b944d6b100                MOV ECX,0xb1d644
005a668e  6690                      NOP
005a6690  8a10                      MOV DL,byte ptr [EAX]
005a6692  3a11                      CMP DL,byte ptr [ECX]
005a6694  751a                      JNZ 0x005a66b0
005a6696  84d2                      TEST DL,DL
005a6698  7412                      JZ 0x005a66ac
005a669a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a669d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a66a0  750e                      JNZ 0x005a66b0
005a66a2  83c002                    ADD EAX,0x2
005a66a5  83c102                    ADD ECX,0x2
005a66a8  84d2                      TEST DL,DL
005a66aa  75e4                      JNZ 0x005a6690
005a66ac  33c0                      XOR EAX,EAX
005a66ae  eb05                      JMP 0x005a66b5
005a66b0  1bc0                      SBB EAX,EAX
005a66b2  83c801                    OR EAX,0x1
005a66b5  85c0                      TEST EAX,EAX
005a66b7  0f8496000000              JZ 0x005a6753
005a66bd  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a66c0  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a66c4  7202                      JC 0x005a66c8
005a66c6  8b00                      MOV EAX,dword ptr [EAX]
005a66c8  b9e0fdb500                MOV ECX,0xb5fde0
005a66cd  0f1f00                    NOP dword ptr [EAX]
005a66d0  8a10                      MOV DL,byte ptr [EAX]
005a66d2  3a11                      CMP DL,byte ptr [ECX]
005a66d4  751a                      JNZ 0x005a66f0
005a66d6  84d2                      TEST DL,DL
005a66d8  7412                      JZ 0x005a66ec
005a66da  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a66dd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a66e0  750e                      JNZ 0x005a66f0
005a66e2  83c002                    ADD EAX,0x2
005a66e5  83c102                    ADD ECX,0x2
005a66e8  84d2                      TEST DL,DL
005a66ea  75e4                      JNZ 0x005a66d0
005a66ec  33c0                      XOR EAX,EAX
005a66ee  eb05                      JMP 0x005a66f5
005a66f0  1bc0                      SBB EAX,EAX
005a66f2  83c801                    OR EAX,0x1
005a66f5  85c0                      TEST EAX,EAX
005a66f7  745a                      JZ 0x005a6753
005a66f9  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
005a66fc  6a00                      PUSH 0x0
005a66fe  6844d6b100                PUSH 0xb1d644
005a6703  e8783ce6ff                CALL 0x0040a380
005a6708  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005a670e  8d4dbc                    LEA ECX,[EBP + -0x44]
005a6711  c78710040000ffffffff      MOV dword ptr [EDI + 0x410],0xffffffff
005a671b  c745bc24000000            MOV dword ptr [EBP + -0x44],0x24
005a6722  e859003b00                CALL 0x00956780
005a6727  83ec08                    SUB ESP,0x8
005a672a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005a6730  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005a6738  c704240000803f            MOV dword ptr [ESP],0x3f800000
005a673f  6a00                      PUSH 0x0
005a6741  6a14                      PUSH 0x14
005a6743  51                        PUSH ECX
005a6744  c704240000003f            MOV dword ptr [ESP],0x3f000000
005a674b  ff75bc                    PUSH dword ptr [EBP + -0x44]
005a674e  e8dd743800                CALL 0x0092dc30
005a6753  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
005a6756  85f6                      TEST ESI,ESI
005a6758  0f844f030000              JZ 0x005a6aad
005a675e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a6765  7549                      JNZ 0x005a67b0
005a6767  8bc6                      MOV EAX,ESI
005a6769  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a676d  7202                      JC 0x005a6771
005a676f  8b00                      MOV EAX,dword ptr [EAX]
005a6771  b944d6b100                MOV ECX,0xb1d644
005a6776  8a10                      MOV DL,byte ptr [EAX]
005a6778  3a11                      CMP DL,byte ptr [ECX]
005a677a  751a                      JNZ 0x005a6796
005a677c  84d2                      TEST DL,DL
005a677e  7412                      JZ 0x005a6792
005a6780  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a6783  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a6786  750e                      JNZ 0x005a6796
005a6788  83c002                    ADD EAX,0x2
005a678b  83c102                    ADD ECX,0x2
005a678e  84d2                      TEST DL,DL
005a6790  75e4                      JNZ 0x005a6776
005a6792  33c0                      XOR EAX,EAX
005a6794  eb05                      JMP 0x005a679b
005a6796  1bc0                      SBB EAX,EAX
005a6798  83c801                    OR EAX,0x1
005a679b  85c0                      TEST EAX,EAX
005a679d  7511                      JNZ 0x005a67b0
005a679f  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
005a67a2  50                        PUSH EAX
005a67a3  68e0fdb500                PUSH 0xb5fde0
005a67a8  e8d33be6ff                CALL 0x0040a380
005a67ad  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
005a67b0  85f6                      TEST ESI,ESI
005a67b2  0f84f5020000              JZ 0x005a6aad
005a67b8  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005a67bf  0f84e8020000              JZ 0x005a6aad
005a67c5  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005a67c8  85c0                      TEST EAX,EAX
005a67ca  740a                      JZ 0x005a67d6
005a67cc  83781410                  CMP dword ptr [EAX + 0x14],0x10
005a67d0  7209                      JC 0x005a67db
005a67d2  8b00                      MOV EAX,dword ptr [EAX]
005a67d4  eb05                      JMP 0x005a67db
005a67d6  b8eca4b100                MOV EAX,0xb1a4ec
005a67db  b9e0fdb500                MOV ECX,0xb5fde0
005a67e0  8a10                      MOV DL,byte ptr [EAX]
005a67e2  3a11                      CMP DL,byte ptr [ECX]
005a67e4  751a                      JNZ 0x005a6800
005a67e6  84d2                      TEST DL,DL
005a67e8  7412                      JZ 0x005a67fc
005a67ea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005a67ed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005a67f0  750e                      JNZ 0x005a6800
005a67f2  83c002                    ADD EAX,0x2
005a67f5  83c102                    ADD ECX,0x2
005a67f8  84d2                      TEST DL,DL
005a67fa  75e4                      JNZ 0x005a67e0
005a67fc  33c0                      XOR EAX,EAX
005a67fe  eb05                      JMP 0x005a6805
005a6800  1bc0                      SBB EAX,EAX
005a6802  83c801                    OR EAX,0x1
005a6805  85c0                      TEST EAX,EAX
005a6807  0f85a0020000              JNZ 0x005a6aad
005a680d  8bcf                      MOV ECX,EDI
005a680f  e82c801100                CALL 0x006be840
005a6814  8b4d80                    MOV ECX,dword ptr [EBP + -0x80]
005a6817  83ec10                    SUB ESP,0x10
005a681a  8bd4                      MOV EDX,ESP
005a681c  8945ac                    MOV dword ptr [EBP + -0x54],EAX
005a681f  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
005a6825  57                        PUSH EDI
005a6826  894a08                    MOV dword ptr [EDX + 0x8],ECX
005a6829  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
005a682c  c60201                    MOV byte ptr [EDX],0x1
005a682f  894204                    MOV dword ptr [EDX + 0x4],EAX
005a6832  894a0c                    MOV dword ptr [EDX + 0xc],ECX
005a6835  e8f67dffff                CALL 0x0059e630
005a683a  8bc8                      MOV ECX,EAX
005a683c  8bf7                      MOV ESI,EDI
005a683e  894dbc                    MOV dword ptr [EBP + -0x44],ECX
005a6841  85c9                      TEST ECX,ECX
005a6843  0f849d000000              JZ 0x005a68e6
005a6849  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
005a684c  85c0                      TEST EAX,EAX
005a684e  0f8492000000              JZ 0x005a68e6
005a6854  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
005a685c  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
005a6864  f30f5c8140030000          SUBSS XMM0,dword ptr [ECX + 0x340]
005a686c  f30f5c893c030000          SUBSS XMM1,dword ptr [ECX + 0x33c]
005a6874  f30f59c0                  MULSS XMM0,XMM0
005a6878  f30f59c9                  MULSS XMM1,XMM1
005a687c  f30f58c1                  ADDSS XMM0,XMM1
005a6880  e8cbf1e8ff                CALL 0x00435a50
005a6885  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
005a6888  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
005a688d  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
005a6895  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
005a689d  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005a68a5  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005a68ad  f30f59c0                  MULSS XMM0,XMM0
005a68b1  f30f59c9                  MULSS XMM1,XMM1
005a68b5  f30f58c1                  ADDSS XMM0,XMM1
005a68b9  e892f1e8ff                CALL 0x00435a50
005a68be  f30f104db4                MOVSS XMM1,dword ptr [EBP + -0x4c]
005a68c3  0f2fc8                    COMISS XMM1,XMM0
005a68c6  761b                      JBE 0x005a68e3
005a68c8  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
005a68ce  8bcf                      MOV ECX,EDI
005a68d0  8b75bc                    MOV ESI,dword ptr [EBP + -0x44]
005a68d3  99                        CDQ
005a68d4  c745b4b4000000            MOV dword ptr [EBP + -0x4c],0xb4
005a68db  f77db4                    IDIV dword ptr [EBP + -0x4c]
005a68de  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
005a68e1  eb1b                      JMP 0x005a68fe
005a68e3  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
005a68e6  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
005a68ec  99                        CDQ
005a68ed  c745b4b4000000            MOV dword ptr [EBP + -0x4c],0xb4
005a68f4  f77db4                    IDIV dword ptr [EBP + -0x4c]
005a68f7  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
005a68fa  85c0                      TEST EAX,EAX
005a68fc  746a                      JZ 0x005a6968
005a68fe  f30f1005d0a8ba00          MOVSS XMM0,dword ptr [0x00baa8d0]
005a6906  85d2                      TEST EDX,EDX
005a6908  7512                      JNZ 0x005a691c
005a690a  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005a6912  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005a691a  eb10                      JMP 0x005a692c
005a691c  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
005a6924  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005a692c  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
005a6933  0f2fc1                    COMISS XMM0,XMM1
005a6936  7630                      JBE 0x005a6968
005a6938  85f6                      TEST ESI,ESI
005a693a  7414                      JZ 0x005a6950
005a693c  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
005a6946  c786c40b000000000000      MOV dword ptr [ESI + 0xbc4],0x0
005a6950  85c9                      TEST ECX,ECX
005a6952  7414                      JZ 0x005a6968
005a6954  c7811004000000000000      MOV dword ptr [ECX + 0x410],0x0
005a695e  c786c40b000001000000      MOV dword ptr [ESI + 0xbc4],0x1
005a6968  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
005a696e  85c0                      TEST EAX,EAX
005a6970  7807                      JS 0x005a6979
005a6972  40                        INC EAX
005a6973  898710040000              MOV dword ptr [EDI + 0x410],EAX
005a6979  83f805                    CMP EAX,0x5
005a697c  0f8518010000              JNZ 0x005a6a9a
005a6982  a17816c700                MOV EAX,[0x00c71678]
005a6987  83ec0c                    SUB ESP,0xc
005a698a  f30f101dc0adba00          MOVSS XMM3,dword ptr [0x00baadc0]
005a6992  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005a6998  8d873c030000              LEA EAX,[EDI + 0x33c]
005a699e  c7442408000020c1          MOV dword ptr [ESP + 0x8],0xc1200000
005a69a6  c7442404000020c1          MOV dword ptr [ESP + 0x4],0xc1200000
005a69ae  c70424000020c1            MOV dword ptr [ESP],0xc1200000
005a69b5  50                        PUSH EAX
005a69b6  8d4598                    LEA EAX,[EBP + -0x68]
005a69b9  50                        PUSH EAX
005a69ba  e891c52600                CALL 0x00812f50
005a69bf  83bd74ffffff00            CMP dword ptr [EBP + 0xffffff74],0x0
005a69c6  897dbc                    MOV dword ptr [EBP + -0x44],EDI
005a69c9  760b                      JBE 0x005a69d6
005a69cb  8b856cffffff              MOV EAX,dword ptr [EBP + 0xffffff6c]
005a69d1  8b00                      MOV EAX,dword ptr [EAX]
005a69d3  8945bc                    MOV dword ptr [EBP + -0x44],EAX
005a69d6  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
005a69dd  0f85b7000000              JNZ 0x005a6a9a
005a69e3  660f6e87c00b0000          MOVD XMM0,dword ptr [EDI + 0xbc0]
005a69eb  8d45b0                    LEA EAX,[EBP + -0x50]
005a69ee  6a00                      PUSH 0x0
005a69f0  0f5bc0                    CVTDQ2PS XMM0,XMM0
005a69f3  57                        PUSH EDI
005a69f4  50                        PUSH EAX
005a69f5  6a0f                      PUSH 0xf
005a69f7  51                        PUSH ECX
005a69f8  8d4598                    LEA EAX,[EBP + -0x68]
005a69fb  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
005a6a02  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
005a6a0a  c745b40000a0c0            MOV dword ptr [EBP + -0x4c],0xc0a00000
005a6a11  f30f110424                MOVSS dword ptr [ESP],XMM0
005a6a16  50                        PUSH EAX
005a6a17  6a03                      PUSH 0x3
005a6a19  e8f2883c00                CALL 0x0096f310
005a6a1e  8bf0                      MOV ESI,EAX
005a6a20  83c41c                    ADD ESP,0x1c
005a6a23  85f6                      TEST ESI,ESI
005a6a25  7473                      JZ 0x005a6a9a
005a6a27  0f57c0                    XORPS XMM0,XMM0
005a6a2a  c745e09a99193f            MOV dword ptr [EBP + -0x20],0x3f19999a
005a6a31  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
005a6a35  8d45c0                    LEA EAX,[EBP + -0x40]
005a6a38  c745e49a99993e            MOV dword ptr [EBP + -0x1c],0x3e99999a
005a6a3f  0f280540c2ba00            MOVAPS XMM0,xmmword ptr [0x00bac240]
005a6a46  8d4e48                    LEA ECX,[ESI + 0x48]
005a6a49  50                        PUSH EAX
005a6a4a  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
005a6a4e  c745e8cdcccc3d            MOV dword ptr [EBP + -0x18],0x3dcccccd
005a6a55  e87609e6ff                CALL 0x004073d0
005a6a5a  8b86c8030000              MOV EAX,dword ptr [ESI + 0x3c8]
005a6a60  8d8ec8030000              LEA ECX,[ESI + 0x3c8]
005a6a66  85c0                      TEST EAX,EAX
005a6a68  7418                      JZ 0x005a6a82
005a6a6a  894db4                    MOV dword ptr [EBP + -0x4c],ECX
005a6a6d  8d88cc030000              LEA ECX,[EAX + 0x3cc]
005a6a73  8d45b4                    LEA EAX,[EBP + -0x4c]
005a6a76  50                        PUSH EAX
005a6a77  e89487f2ff                CALL 0x004cf210
005a6a7c  8d8ec8030000              LEA ECX,[ESI + 0x3c8]
005a6a82  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
005a6a85  8901                      MOV dword ptr [ECX],EAX
005a6a87  85c0                      TEST EAX,EAX
005a6a89  7408                      JZ 0x005a6a93
005a6a8b  51                        PUSH ECX
005a6a8c  8bc8                      MOV ECX,EAX
005a6a8e  e85d72f2ff                CALL 0x004cdcf0
005a6a93  8b06                      MOV EAX,dword ptr [ESI]
005a6a95  8bce                      MOV ECX,ESI
005a6a97  ff500c                    CALL dword ptr [EAX + 0xc]
005a6a9a  83bf100400001a            CMP dword ptr [EDI + 0x410],0x1a
005a6aa1  7e0a                      JLE 0x005a6aad
005a6aa3  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005a6aad  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005a6ab5  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005a6abd  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005a6ac5  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005a6acd  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
005a6ad3  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
005a6ad9  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
005a6adf  898740030000              MOV dword ptr [EDI + 0x340],EAX
005a6ae5  80bd78ffffff00            CMP byte ptr [EBP + 0xffffff78],0x0
005a6aec  8b35dc87b100              MOV ESI,dword ptr [0x00b187dc]
005a6af2  752d                      JNZ 0x005a6b21
005a6af4  a178dec700                MOV EAX,[0x00c7de78]
005a6af9  8d5030                    LEA EDX,[EAX + 0x30]
005a6afc  85c0                      TEST EAX,EAX
005a6afe  7505                      JNZ 0x005a6b05
005a6b00  ba18f6c700                MOV EDX,0xc7f618
005a6b05  8b8d7cffffff              MOV ECX,dword ptr [EBP + 0xffffff7c]
005a6b0b  85c9                      TEST ECX,ECX
005a6b0d  7417                      JZ 0x005a6b26
005a6b0f  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
005a6b12  83c1fc                    ADD ECX,-0x4
005a6b15  2902                      SUB dword ptr [EDX],EAX
005a6b17  51                        PUSH ECX
005a6b18  835a0400                  SBB dword ptr [EDX + 0x4],0x0
005a6b1c  ffd6                      CALL ESI
005a6b1e  83c404                    ADD ESP,0x4
005a6b21  a178dec700                MOV EAX,[0x00c7de78]
005a6b26  80bd68ffffff00            CMP byte ptr [EBP + 0xffffff68],0x0
005a6b2d  7527                      JNZ 0x005a6b56
005a6b2f  8d5030                    LEA EDX,[EAX + 0x30]
005a6b32  85c0                      TEST EAX,EAX
005a6b34  7505                      JNZ 0x005a6b3b
005a6b36  ba18f6c700                MOV EDX,0xc7f618
005a6b3b  8b856cffffff              MOV EAX,dword ptr [EBP + 0xffffff6c]
005a6b41  85c0                      TEST EAX,EAX
005a6b43  7411                      JZ 0x005a6b56
005a6b45  8d48fc                    LEA ECX,[EAX + -0x4]
005a6b48  8b01                      MOV EAX,dword ptr [ECX]
005a6b4a  2902                      SUB dword ptr [EDX],EAX
005a6b4c  51                        PUSH ECX
005a6b4d  835a0400                  SBB dword ptr [EDX + 0x4],0x0
005a6b51  ffd6                      CALL ESI
005a6b53  83c404                    ADD ESP,0x4
005a6b56  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
005a6b59  64890d00000000            MOV dword ptr FS:[0x0],ECX
005a6b60  59                        POP ECX
005a6b61  5f                        POP EDI
005a6b62  5e                        POP ESI
005a6b63  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
005a6b66  33cd                      XOR ECX,EBP
005a6b68  e8be855400                CALL 0x00aef12b
005a6b6d  8be5                      MOV ESP,EBP
005a6b6f  5d                        POP EBP
005a6b70  8be3                      MOV ESP,EBX
005a6b72  5b                        POP EBX
005a6b73  c3                        RET
