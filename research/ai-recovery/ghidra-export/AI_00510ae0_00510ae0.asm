; J460 NPC AI 0x00510ae0 AI_00510ae0
; types=26
; identities=26.0.0,26.1.0,26.2.0
; entry=00510ae0
00510ae0  55                        PUSH EBP
00510ae1  8bec                      MOV EBP,ESP
00510ae3  83e4f8                    AND ESP,0xfffffff8
00510ae6  81ec1c010000              SUB ESP,0x11c
00510aec  a1b493bf00                MOV EAX,[0x00bf93b4]
00510af1  33c4                      XOR EAX,ESP
00510af3  89842418010000            MOV dword ptr [ESP + 0x118],EAX
00510afa  53                        PUSH EBX
00510afb  56                        PUSH ESI
00510afc  57                        PUSH EDI
00510afd  8bf9                      MOV EDI,ECX
00510aff  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00510b06  0f8594000000              JNZ 0x00510ba0
00510b0c  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00510b10  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00510b1a  0f8572060000              JNZ 0x00511192
00510b20  e83be41d00                CALL 0x006eef60
00510b25  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00510b2b  6a00                      PUSH 0x0
00510b2d  50                        PUSH EAX
00510b2e  6a00                      PUSH 0x0
00510b30  57                        PUSH EDI
00510b31  6840b6c700                PUSH 0xc7b640
00510b36  8d873c030000              LEA EAX,[EDI + 0x33c]
00510b3c  50                        PUSH EAX
00510b3d  6a00                      PUSH 0x0
00510b3f  6a60                      PUSH 0x60
00510b41  e8cad81e00                CALL 0x006fe410
00510b46  6a00                      PUSH 0x0
00510b48  68acd6c500                PUSH 0xc5d6ac
00510b4d  68dcd5c500                PUSH 0xc5d5dc
00510b52  6a00                      PUSH 0x0
00510b54  50                        PUSH EAX
00510b55  e857fd5d00                CALL 0x00af08b1
00510b5a  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
00510b60  83c414                    ADD ESP,0x14
00510b63  8db0bc030000              LEA ESI,[EAX + 0x3bc]
00510b69  85c9                      TEST ECX,ECX
00510b6b  7414                      JZ 0x00510b81
00510b6d  8d44241c                  LEA EAX,[ESP + 0x1c]
00510b71  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
00510b75  50                        PUSH EAX
00510b76  81c1cc030000              ADD ECX,0x3cc
00510b7c  e88fe6fbff                CALL 0x004cf210
00510b81  56                        PUSH ESI
00510b82  8bcf                      MOV ECX,EDI
00510b84  893e                      MOV dword ptr [ESI],EDI
00510b86  e865d1fbff                CALL 0x004cdcf0
00510b8b  5f                        POP EDI
00510b8c  5e                        POP ESI
00510b8d  5b                        POP EBX
00510b8e  8b8c2418010000            MOV ECX,dword ptr [ESP + 0x118]
00510b95  33cc                      XOR ECX,ESP
00510b97  e88fe55d00                CALL 0x00aef12b
00510b9c  8be5                      MOV ESP,EBP
00510b9e  5d                        POP EBP
00510b9f  c3                        RET
00510ba0  a17816c700                MOV EAX,[0x00c71678]
00510ba5  8d9f3c030000              LEA EBX,[EDI + 0x33c]
00510bab  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00510bb3  8d4c2414                  LEA ECX,[ESP + 0x14]
00510bb7  83ec0c                    SUB ESP,0xc
00510bba  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
00510bc0  0f57db                    XORPS XMM3,XMM3
00510bc3  c744240800002041          MOV dword ptr [ESP + 0x8],0x41200000
00510bcb  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00510bd3  c704240000f041            MOV dword ptr [ESP],0x41f00000
00510bda  53                        PUSH EBX
00510bdb  51                        PUSH ECX
00510bdc  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00510be2  e869233000                CALL 0x00812f50
00510be7  8b08                      MOV ECX,dword ptr [EAX]
00510be9  890b                      MOV dword ptr [EBX],ECX
00510beb  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00510bee  894304                    MOV dword ptr [EBX + 0x4],EAX
00510bf1  e86ae31d00                CALL 0x006eef60
00510bf6  33d2                      XOR EDX,EDX
00510bf8  b90a000000                MOV ECX,0xa
00510bfd  f7f1                      DIV ECX
00510bff  85d2                      TEST EDX,EDX
00510c01  7542                      JNZ 0x00510c45
00510c03  e858e31d00                CALL 0x006eef60
00510c08  51                        PUSH ECX
00510c09  8bcf                      MOV ECX,EDI
00510c0b  660f6ec0                  MOVD XMM0,EAX
00510c0f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00510c13  c1e81f                    SHR EAX,0x1f
00510c16  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00510c1f  660f5ac0                  CVTPD2PS XMM0,XMM0
00510c23  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00510c2b  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00510c33  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
00510c3b  f30f110424                MOVSS dword ptr [ESP],XMM0
00510c40  e88b581a00                CALL 0x006b64d0
00510c45  51                        PUSH ECX
00510c46  8d442418                  LEA EAX,[ESP + 0x18]
00510c4a  c7042400000000            MOV dword ptr [ESP],0x0
00510c51  50                        PUSH EAX
00510c52  8bcf                      MOV ECX,EDI
00510c54  e8e7df1a00                CALL 0x006bec40
00510c59  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00510c60  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00510c64  f30f5c0b                  SUBSS XMM1,dword ptr [EBX]
00510c68  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
00510c6e  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00510c73  f30f5c4b04                SUBSS XMM1,dword ptr [EBX + 0x4]
00510c78  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00510c7e  7424                      JZ 0x00510ca4
00510c80  8d442414                  LEA EAX,[ESP + 0x14]
00510c84  0f57d2                    XORPS XMM2,XMM2
00510c87  50                        PUSH EAX
00510c88  8bcf                      MOV ECX,EDI
00510c8a  e841761c00                CALL 0x006d82d0
00510c8f  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00510c93  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00510c99  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00510c9e  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00510ca4  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00510caa  83f804                    CMP EAX,0x4
00510cad  0f856f010000              JNZ 0x00510e22
00510cb3  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00510cb6  85c0                      TEST EAX,EAX
00510cb8  7406                      JZ 0x00510cc0
00510cba  80783400                  CMP byte ptr [EAX + 0x34],0x0
00510cbe  750f                      JNZ 0x00510ccf
00510cc0  6a00                      PUSH 0x0
00510cc2  8d4f48                    LEA ECX,[EDI + 0x48]
00510cc5  6854bcb100                PUSH 0xb1bc54
00510cca  e8b196efff                CALL 0x0040a380
00510ccf  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00510cd3  0f8497000000              JZ 0x00510d70
00510cd9  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00510ce0  0f8f8a000000              JG 0x00510d70
00510ce6  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
00510cee  8bcf                      MOV ECX,EDI
00510cf0  6a07                      PUSH 0x7
00510cf2  6a00                      PUSH 0x0
00510cf4  e867a11b00                CALL 0x006cae60
00510cf9  84c0                      TEST AL,AL
00510cfb  7473                      JZ 0x00510d70
00510cfd  6a01                      PUSH 0x1
00510cff  68dcd2b100                PUSH 0xb1d2dc
00510d04  8d4f48                    LEA ECX,[EDI + 0x48]
00510d07  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00510d11  e8ba98efff                CALL 0x0040a5d0
00510d16  84c0                      TEST AL,AL
00510d18  740f                      JZ 0x00510d29
00510d1a  8d4f78                    LEA ECX,[EDI + 0x78]
00510d1d  e88e94efff                CALL 0x0040a1b0
00510d22  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00510d29  6a01                      PUSH 0x1
00510d2b  8bcf                      MOV ECX,EDI
00510d2d  c787a00b00001c000000      MOV dword ptr [EDI + 0xba0],0x1c
00510d37  e814831c00                CALL 0x006d9050
00510d3c  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00510d42  33c0                      XOR EAX,EAX
00510d44  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00510d4b  0f57c0                    XORPS XMM0,XMM0
00510d4e  7412                      JZ 0x00510d62
00510d50  0f2f87200f0000            COMISS XMM0,dword ptr [EDI + 0xf20]
00510d57  0f97c0                    SETA AL
00510d5a  888748010000              MOV byte ptr [EDI + 0x148],AL
00510d60  eb14                      JMP 0x00510d76
00510d62  0f2fc1                    COMISS XMM0,XMM1
00510d65  0f97c0                    SETA AL
00510d68  888748010000              MOV byte ptr [EDI + 0x148],AL
00510d6e  eb06                      JMP 0x00510d76
00510d70  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00510d76  0f28c1                    MOVAPS XMM0,XMM1
00510d79  f30f59c1                  MULSS XMM0,XMM1
00510d7d  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
00510d83  f30f59c9                  MULSS XMM1,XMM1
00510d87  f30f58c1                  ADDSS XMM0,XMM1
00510d8b  e8c04cf2ff                CALL 0x00435a50
00510d90  0f28d0                    MOVAPS XMM2,XMM0
00510d93  0f57c0                    XORPS XMM0,XMM0
00510d96  0f2fd0                    COMISS XMM2,XMM0
00510d99  0f864f030000              JBE 0x005110ee
00510d9f  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00510da3  f30f100d40a1ba00          MOVSS XMM1,dword ptr [0x00baa140]
00510dab  f30f5eca                  DIVSS XMM1,XMM2
00510daf  7508                      JNZ 0x00510db9
00510db1  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00510db9  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
00510dc1  f30f1054240c              MOVSS XMM2,dword ptr [ESP + 0xc]
00510dc7  f30f105c2410              MOVSS XMM3,dword ptr [ESP + 0x10]
00510dcd  0f2ee0                    UCOMISS XMM4,XMM0
00510dd0  f30f59d1                  MULSS XMM2,XMM1
00510dd4  9f                        LAHF
00510dd5  f30f59d9                  MULSS XMM3,XMM1
00510dd9  f6c444                    TEST AH,0x44
00510ddc  0f8b0c030000              JNP 0x005110ee
00510de2  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00510dea  0f28c1                    MOVAPS XMM0,XMM1
00510ded  f30f59cb                  MULSS XMM1,XMM3
00510df1  f30f59c2                  MULSS XMM0,XMM2
00510df5  f30f5ecc                  DIVSS XMM1,XMM4
00510df9  f30f5ec4                  DIVSS XMM0,XMM4
00510dfd  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00510e05  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00510e0d  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00510e15  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00510e1d  e9cc020000                JMP 0x005110ee
00510e22  83f808                    CMP EAX,0x8
00510e25  0f85c3020000              JNZ 0x005110ee
00510e2b  6a00                      PUSH 0x0
00510e2d  8bcf                      MOV ECX,EDI
00510e2f  e81c821c00                CALL 0x006d9050
00510e34  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00510e38  0f842e020000              JZ 0x0051106c
00510e3e  68dcd2b100                PUSH 0xb1d2dc
00510e43  8d4f78                    LEA ECX,[EDI + 0x78]
00510e46  e8859fefff                CALL 0x0040add0
00510e4b  84c0                      TEST AL,AL
00510e4d  0f8406020000              JZ 0x00511059
00510e53  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00510e57  b8b2000000                MOV EAX,0xb2
00510e5c  51                        PUSH ECX
00510e5d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00510e64  6a00                      PUSH 0x0
00510e66  6a02                      PUSH 0x2
00510e68  51                        PUSH ECX
00510e69  b992000000                MOV ECX,0x92
00510e6e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00510e75  0f45c1                    CMOVNZ EAX,ECX
00510e78  8bcf                      MOV ECX,EDI
00510e7a  50                        PUSH EAX
00510e7b  e8205d1c00                CALL 0x006d6ba0
00510e80  8bcf                      MOV ECX,EDI
00510e82  e8b9d91a00                CALL 0x006be840
00510e87  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00510e8e  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00510e96  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00510e9e  f30f5c13                  SUBSS XMM2,dword ptr [EBX]
00510ea2  f30f5c4b04                SUBSS XMM1,dword ptr [EBX + 0x4]
00510ea7  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
00510ead  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
00510eb3  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
00510eb9  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
00510ebf  7435                      JZ 0x00510ef6
00510ec1  8d8f200f0000              LEA ECX,[EDI + 0xf20]
00510ec7  6840b6c700                PUSH 0xc7b640
00510ecc  e85ff74f00                CALL 0x00a10630
00510ed1  84c0                      TEST AL,AL
00510ed3  7421                      JZ 0x00510ef6
00510ed5  f30f1011                  MOVSS XMM2,dword ptr [ECX]
00510ed9  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
00510ede  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
00510ee4  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
00510eea  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
00510ef0  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
00510ef6  e845731c00                CALL 0x006d8240
00510efb  85c0                      TEST EAX,EAX
00510efd  7f0e                      JG 0x00510f0d
00510eff  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
00510f07  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00510f0d  0f28c1                    MOVAPS XMM0,XMM1
00510f10  f30f59c1                  MULSS XMM0,XMM1
00510f14  0f28ca                    MOVAPS XMM1,XMM2
00510f17  f30f59ca                  MULSS XMM1,XMM2
00510f1b  f30f58c1                  ADDSS XMM0,XMM1
00510f1f  e82c4bf2ff                CALL 0x00435a50
00510f24  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00510f2b  762a                      JBE 0x00510f57
00510f2d  f30f104c241c              MOVSS XMM1,dword ptr [ESP + 0x1c]
00510f33  f30f5ec8                  DIVSS XMM1,XMM0
00510f37  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
00510f3d  f30f59c1                  MULSS XMM0,XMM1
00510f41  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00510f47  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00510f4d  f30f59c1                  MULSS XMM0,XMM1
00510f51  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00510f57  8d8c24f8000000            LEA ECX,[ESP + 0xf8]
00510f5e  e80d62efff                CALL 0x00407170
00510f63  6840b6c700                PUSH 0xc7b640
00510f68  50                        PUSH EAX
00510f69  8d442424                  LEA EAX,[ESP + 0x24]
00510f6d  c744242400000000          MOV dword ptr [ESP + 0x24],0x0
00510f75  50                        PUSH EAX
00510f76  8bd3                      MOV EDX,EBX
00510f78  c744242c0000c0c1          MOV dword ptr [ESP + 0x2c],0xc1c00000
00510f80  b905000000                MOV ECX,0x5
00510f85  e8666d1c00                CALL 0x006d7cf0
00510f8a  83c40c                    ADD ESP,0xc
00510f8d  8bf0                      MOV ESI,EAX
00510f8f  8bce                      MOV ECX,ESI
00510f91  57                        PUSH EDI
00510f92  c786580300000000803f      MOV dword ptr [ESI + 0x358],0x3f800000
00510f9c  e80f55f4ff                CALL 0x004564b0
00510fa1  8d4c2450                  LEA ECX,[ESP + 0x50]
00510fa5  c6864801000001            MOV byte ptr [ESI + 0x148],0x1
00510fac  e87fdff2ff                CALL 0x0043ef30
00510fb1  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00510fb5  8d4c2424                  LEA ECX,[ESP + 0x24]
00510fb9  6a01                      PUSH 0x1
00510fbb  6a00                      PUSH 0x0
00510fbd  68ff000000                PUSH 0xff
00510fc2  6aff                      PUSH -0x1
00510fc4  51                        PUSH ECX
00510fc5  8bce                      MOV ECX,ESI
00510fc7  754b                      JNZ 0x00511014
00510fc9  0f280520bdba00            MOVAPS XMM0,xmmword ptr [0x00babd20]
00510fd0  8b8424c0000000            MOV EAX,dword ptr [ESP + 0xc0]
00510fd7  838c24bc00000001          OR dword ptr [ESP + 0xbc],0x1
00510fdf  0f11442438                MOVUPS xmmword ptr [ESP + 0x38],XMM0
00510fe4  c74424780000c03f          MOV dword ptr [ESP + 0x78],0x3fc00000
00510fec  0f280500c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac700]
00510ff3  898424c0000000            MOV dword ptr [ESP + 0xc0],EAX
00510ffa  c7442458b81e853e          MOV dword ptr [ESP + 0x58],0x3e851eb8
00511002  c744245ccdcc4c3d          MOV dword ptr [ESP + 0x5c],0x3d4ccccd
0051100a  c7442460cdcccc3e          MOV dword ptr [ESP + 0x60],0x3ecccccd
00511012  eb27                      JMP 0x0051103b
00511014  0f2805a0bbba00            MOVAPS XMM0,xmmword ptr [0x00babba0]
0051101b  0f11442438                MOVUPS xmmword ptr [ESP + 0x38],XMM0
00511020  c74424589a99193f          MOV dword ptr [ESP + 0x58],0x3f19999a
00511028  0f57c0                    XORPS XMM0,XMM0
0051102b  c744245ccdcccc3d          MOV dword ptr [ESP + 0x5c],0x3dcccccd
00511033  c7442460cdcccc3d          MOV dword ptr [ESP + 0x60],0x3dcccccd
0051103b  8b06                      MOV EAX,dword ptr [ESI]
0051103d  0f11442448                MOVUPS xmmword ptr [ESP + 0x48],XMM0
00511042  ff503c                    CALL dword ptr [EAX + 0x3c]
00511045  8d442450                  LEA EAX,[ESP + 0x50]
00511049  8bcf                      MOV ECX,EDI
0051104b  50                        PUSH EAX
0051104c  6a00                      PUSH 0x0
0051104e  8d44241c                  LEA EAX,[ESP + 0x1c]
00511052  50                        PUSH EAX
00511053  53                        PUSH EBX
00511054  e887a21b00                CALL 0x006cb2e0
00511059  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051105d  740d                      JZ 0x0051106c
0051105f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00511066  0f8582000000              JNZ 0x005110ee
0051106c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00511076  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00511079  85f6                      TEST ESI,ESI
0051107b  7449                      JZ 0x005110c6
0051107d  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00511081  8bc6                      MOV EAX,ESI
00511083  7202                      JC 0x00511087
00511085  8b06                      MOV EAX,dword ptr [ESI]
00511087  b954bcb100                MOV ECX,0xb1bc54
0051108c  0f1f4000                  NOP dword ptr [EAX]
00511090  8a10                      MOV DL,byte ptr [EAX]
00511092  3a11                      CMP DL,byte ptr [ECX]
00511094  751a                      JNZ 0x005110b0
00511096  84d2                      TEST DL,DL
00511098  7412                      JZ 0x005110ac
0051109a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0051109d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005110a0  750e                      JNZ 0x005110b0
005110a2  83c002                    ADD EAX,0x2
005110a5  83c102                    ADD ECX,0x2
005110a8  84d2                      TEST DL,DL
005110aa  75e4                      JNZ 0x00511090
005110ac  33c0                      XOR EAX,EAX
005110ae  eb05                      JMP 0x005110b5
005110b0  1bc0                      SBB EAX,EAX
005110b2  83c801                    OR EAX,0x1
005110b5  85c0                      TEST EAX,EAX
005110b7  750d                      JNZ 0x005110c6
005110b9  384634                    CMP byte ptr [ESI + 0x34],AL
005110bc  742a                      JZ 0x005110e8
005110be  38878c000000              CMP byte ptr [EDI + 0x8c],AL
005110c4  7522                      JNZ 0x005110e8
005110c6  6a01                      PUSH 0x1
005110c8  6854bcb100                PUSH 0xb1bc54
005110cd  8d4f48                    LEA ECX,[EDI + 0x48]
005110d0  e8fb94efff                CALL 0x0040a5d0
005110d5  84c0                      TEST AL,AL
005110d7  740f                      JZ 0x005110e8
005110d9  8d4f78                    LEA ECX,[EDI + 0x78]
005110dc  e8cf90efff                CALL 0x0040a1b0
005110e1  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
005110e8  8d9f3c030000              LEA EBX,[EDI + 0x33c]
005110ee  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
005110f4  85d2                      TEST EDX,EDX
005110f6  7e1a                      JLE 0x00511112
005110f8  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00511100  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00511108  2bc8                      SUB ECX,EAX
0051110a  03ca                      ADD ECX,EDX
0051110c  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
00511112  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00511119  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00511121  f30f590500a4ba00          MULSS XMM0,dword ptr [0x00baa400]
00511129  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00511131  745f                      JZ 0x00511192
00511133  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00511137  7559                      JNZ 0x00511192
00511139  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0051113f  2500000001                AND EAX,0x1000000
00511144  83c800                    OR EAX,0x0
00511147  7549                      JNZ 0x00511192
00511149  8d4c2450                  LEA ECX,[ESP + 0x50]
0051114d  e8deddf2ff                CALL 0x0043ef30
00511152  50                        PUSH EAX
00511153  6a06                      PUSH 0x6
00511155  8d44241c                  LEA EAX,[ESP + 0x1c]
00511159  c744241c00000041          MOV dword ptr [ESP + 0x1c],0x41000000
00511161  50                        PUSH EAX
00511162  53                        PUSH EBX
00511163  8bcf                      MOV ECX,EDI
00511165  c744242800000000          MOV dword ptr [ESP + 0x28],0x0
0051116d  e86ea11b00                CALL 0x006cb2e0
00511172  51                        PUSH ECX
00511173  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051117a  6a00                      PUSH 0x0
0051117c  6a02                      PUSH 0x2
0051117e  51                        PUSH ECX
0051117f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00511186  8bcf                      MOV ECX,EDI
00511188  6892000000                PUSH 0x92
0051118d  e80e5a1c00                CALL 0x006d6ba0
00511192  8b8c2424010000            MOV ECX,dword ptr [ESP + 0x124]
00511199  5f                        POP EDI
0051119a  5e                        POP ESI
0051119b  5b                        POP EBX
0051119c  33cc                      XOR ECX,ESP
0051119e  e888df5d00                CALL 0x00aef12b
005111a3  8be5                      MOV ESP,EBP
005111a5  5d                        POP EBP
005111a6  c3                        RET
