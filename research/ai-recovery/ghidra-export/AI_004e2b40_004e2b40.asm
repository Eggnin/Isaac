; J460 NPC AI 0x004e2b40 AI_004e2b40
; types=850
; identities=850.0.0,850.1.0,850.2.0
; entry=004e2b40
004e2b40  53                        PUSH EBX
004e2b41  8bdc                      MOV EBX,ESP
004e2b43  83ec08                    SUB ESP,0x8
004e2b46  83e4f8                    AND ESP,0xfffffff8
004e2b49  83c404                    ADD ESP,0x4
004e2b4c  55                        PUSH EBP
004e2b4d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004e2b50  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004e2b54  8bec                      MOV EBP,ESP
004e2b56  6aff                      PUSH -0x1
004e2b58  68953baf00                PUSH 0xaf3b95
004e2b5d  64a100000000              MOV EAX,FS:[0x0]
004e2b63  50                        PUSH EAX
004e2b64  53                        PUSH EBX
004e2b65  83ec50                    SUB ESP,0x50
004e2b68  a1b493bf00                MOV EAX,[0x00bf93b4]
004e2b6d  33c5                      XOR EAX,EBP
004e2b6f  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004e2b72  56                        PUSH ESI
004e2b73  57                        PUSH EDI
004e2b74  50                        PUSH EAX
004e2b75  8d45f4                    LEA EAX,[EBP + -0xc]
004e2b78  64a300000000              MOV FS:[0x0],EAX
004e2b7e  8bf9                      MOV EDI,ECX
004e2b80  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
004e2b87  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004e2b8f  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
004e2b92  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
004e2b9a  2bf0                      SUB ESI,EAX
004e2b9c  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e2ba2  83f901                    CMP ECX,0x1
004e2ba5  0f8528040000              JNZ 0x004e2fd3
004e2bab  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e2bb3  f30f590500a4ba00          MULSS XMM0,dword ptr [0x00baa400]
004e2bbb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e2bc3  85c0                      TEST EAX,EAX
004e2bc5  0f84aa030000              JZ 0x004e2f75
004e2bcb  83f804                    CMP EAX,0x4
004e2bce  0f8474020000              JZ 0x004e2e48
004e2bd4  83f808                    CMP EAX,0x8
004e2bd7  0f85e2010000              JNZ 0x004e2dbf
004e2bdd  6a00                      PUSH 0x0
004e2bdf  8bcf                      MOV ECX,EDI
004e2be1  e86a641f00                CALL 0x006d9050
004e2be6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e2bea  0f849d010000              JZ 0x004e2d8d
004e2bf0  68dcd2b100                PUSH 0xb1d2dc
004e2bf5  8d4f78                    LEA ECX,[EDI + 0x78]
004e2bf8  e8d381f2ff                CALL 0x0040add0
004e2bfd  84c0                      TEST AL,AL
004e2bff  0f8488010000              JZ 0x004e2d8d
004e2c05  51                        PUSH ECX
004e2c06  c704246666663f            MOV dword ptr [ESP],0x3f666666
004e2c0d  6a00                      PUSH 0x0
004e2c0f  6a02                      PUSH 0x2
004e2c11  51                        PUSH ECX
004e2c12  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e2c19  8bcf                      MOV ECX,EDI
004e2c1b  6892000000                PUSH 0x92
004e2c20  e87b3f1f00                CALL 0x006d6ba0
004e2c25  8bcf                      MOV ECX,EDI
004e2c27  e814bc1d00                CALL 0x006be840
004e2c2c  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004e2c33  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004e2c3b  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004e2c43  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004e2c4b  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004e2c53  f30f1155a8                MOVSS dword ptr [EBP + -0x58],XMM2
004e2c58  f30f1155ac                MOVSS dword ptr [EBP + -0x54],XMM2
004e2c5d  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
004e2c62  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
004e2c67  7431                      JZ 0x004e2c9a
004e2c69  8d8f200f0000              LEA ECX,[EDI + 0xf20]
004e2c6f  6840b6c700                PUSH 0xc7b640
004e2c74  e8b7d95200                CALL 0x00a10630
004e2c79  84c0                      TEST AL,AL
004e2c7b  741d                      JZ 0x004e2c9a
004e2c7d  f30f1011                  MOVSS XMM2,dword ptr [ECX]
004e2c81  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
004e2c86  f30f1155a8                MOVSS dword ptr [EBP + -0x58],XMM2
004e2c8b  f30f1155ac                MOVSS dword ptr [EBP + -0x54],XMM2
004e2c90  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
004e2c95  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
004e2c9a  0f28c1                    MOVAPS XMM0,XMM1
004e2c9d  f30f59c1                  MULSS XMM0,XMM1
004e2ca1  0f28ca                    MOVAPS XMM1,XMM2
004e2ca4  f30f59ca                  MULSS XMM1,XMM2
004e2ca8  f30f58c1                  ADDSS XMM0,XMM1
004e2cac  e89f2df5ff                CALL 0x00435a50
004e2cb1  0f57c9                    XORPS XMM1,XMM1
004e2cb4  0f2fc1                    COMISS XMM0,XMM1
004e2cb7  7635                      JBE 0x004e2cee
004e2cb9  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
004e2cc1  f30f5ec8                  DIVSS XMM1,XMM0
004e2cc5  f30f1055a8                MOVSS XMM2,dword ptr [EBP + -0x58]
004e2cca  0f28c1                    MOVAPS XMM0,XMM1
004e2ccd  f30f59d0                  MULSS XMM2,XMM0
004e2cd1  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
004e2cd6  f30f59c1                  MULSS XMM0,XMM1
004e2cda  f30f1155a8                MOVSS dword ptr [EBP + -0x58],XMM2
004e2cdf  f30f1155ac                MOVSS dword ptr [EBP + -0x54],XMM2
004e2ce4  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004e2ce9  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
004e2cee  6840b6c700                PUSH 0xc7b640
004e2cf3  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004e2cf9  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004e2d00  50                        PUSH EAX
004e2d01  8d45e4                    LEA EAX,[EBP + -0x1c]
004e2d04  c745e80000c0c1            MOV dword ptr [EBP + -0x18],0xc1c00000
004e2d0b  50                        PUSH EAX
004e2d0c  8d973c030000              LEA EDX,[EDI + 0x33c]
004e2d12  b905000000                MOV ECX,0x5
004e2d17  e8d44f1f00                CALL 0x006d7cf0
004e2d1c  83c40c                    ADD ESP,0xc
004e2d1f  8bf0                      MOV ESI,EAX
004e2d21  8bce                      MOV ECX,ESI
004e2d23  57                        PUSH EDI
004e2d24  c786580300000000803f      MOV dword ptr [ESI + 0x358],0x3f800000
004e2d2e  e87d37f7ff                CALL 0x004564b0
004e2d33  f30f104da8                MOVSS XMM1,dword ptr [EBP + -0x58]
004e2d38  8d45ac                    LEA EAX,[EBP + -0x54]
004e2d3b  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004e2d43  c6864801000001            MOV byte ptr [ESI + 0x148],0x1
004e2d4a  f30f1015fcadba00          MOVSS XMM2,dword ptr [0x00baadfc]
004e2d52  51                        PUSH ECX
004e2d53  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004e2d5b  c70424000000c1            MOV dword ptr [ESP],0xc1000000
004e2d62  8d4de4                    LEA ECX,[EBP + -0x1c]
004e2d65  50                        PUSH EAX
004e2d66  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
004e2d6b  f30f104db4                MOVSS XMM1,dword ptr [EBP + -0x4c]
004e2d70  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004e2d78  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004e2d80  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
004e2d85  e8865fffff                CALL 0x004d8d10
004e2d8a  83c408                    ADD ESP,0x8
004e2d8d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e2d91  8d4f48                    LEA ECX,[EDI + 0x48]
004e2d94  7409                      JZ 0x004e2d9f
004e2d96  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004e2d9d  7520                      JNZ 0x004e2dbf
004e2d9f  6a00                      PUSH 0x0
004e2da1  6854bcb100                PUSH 0xb1bc54
004e2da6  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e2db0  e8cb75f2ff                CALL 0x0040a380
004e2db5  c787a00b00002d000000      MOV dword ptr [EDI + 0xba0],0x2d
004e2dbf  e89cc12000                CALL 0x006eef60
004e2dc4  33d2                      XOR EDX,EDX
004e2dc6  b90a000000                MOV ECX,0xa
004e2dcb  f7f1                      DIV ECX
004e2dcd  85d2                      TEST EDX,EDX
004e2dcf  7559                      JNZ 0x004e2e2a
004e2dd1  e88ac12000                CALL 0x006eef60
004e2dd6  51                        PUSH ECX
004e2dd7  8bcf                      MOV ECX,EDI
004e2dd9  660f6ec0                  MOVD XMM0,EAX
004e2ddd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e2de1  c1e81f                    SHR EAX,0x1f
004e2de4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e2ded  660f5ac0                  CVTPD2PS XMM0,XMM0
004e2df1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e2df9  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004e2e01  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
004e2e09  f30f110424                MOVSS dword ptr [ESP],XMM0
004e2e0e  e8bd361d00                CALL 0x006b64d0
004e2e13  6a01                      PUSH 0x1
004e2e15  6a00                      PUSH 0x0
004e2e17  68ff000000                PUSH 0xff
004e2e1c  8b10                      MOV EDX,dword ptr [EAX]
004e2e1e  8bc8                      MOV ECX,EAX
004e2e20  6aff                      PUSH -0x1
004e2e22  6868c7c500                PUSH 0xc5c768
004e2e27  ff523c                    CALL dword ptr [EDX + 0x3c]
004e2e2a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e2e2d  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e2e34  59                        POP ECX
004e2e35  5f                        POP EDI
004e2e36  5e                        POP ESI
004e2e37  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004e2e3a  33cd                      XOR ECX,EBP
004e2e3c  e8eac26000                CALL 0x00aef12b
004e2e41  8be5                      MOV ESP,EBP
004e2e43  5d                        POP EBP
004e2e44  8be3                      MOV ESP,EBX
004e2e46  5b                        POP EBX
004e2e47  c3                        RET
004e2e48  6a00                      PUSH 0x0
004e2e4a  8d4f48                    LEA ECX,[EDI + 0x48]
004e2e4d  6854bcb100                PUSH 0xb1bc54
004e2e52  e82975f2ff                CALL 0x0040a380
004e2e57  29b7a00b0000              SUB dword ptr [EDI + 0xba0],ESI
004e2e5d  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004e2e64  7f19                      JG 0x004e2e7f
004e2e66  6a00                      PUSH 0x0
004e2e68  68dcd2b100                PUSH 0xb1d2dc
004e2e6d  8d4f48                    LEA ECX,[EDI + 0x48]
004e2e70  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004e2e7a  e80175f2ff                CALL 0x0040a380
004e2e7f  51                        PUSH ECX
004e2e80  8d45ac                    LEA EAX,[EBP + -0x54]
004e2e83  c7042400000000            MOV dword ptr [ESP],0x0
004e2e8a  50                        PUSH EAX
004e2e8b  8bcf                      MOV ECX,EDI
004e2e8d  e8aebd1d00                CALL 0x006bec40
004e2e92  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004e2e99  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004e2e9d  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004e2ea2  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004e2eaa  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004e2eb2  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
004e2eb7  f30f1155a8                MOVSS dword ptr [EBP + -0x58],XMM2
004e2ebc  7421                      JZ 0x004e2edf
004e2ebe  8d45ac                    LEA EAX,[EBP + -0x54]
004e2ec1  0f57d2                    XORPS XMM2,XMM2
004e2ec4  50                        PUSH EAX
004e2ec5  8bcf                      MOV ECX,EDI
004e2ec7  e804541f00                CALL 0x006d82d0
004e2ecc  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004e2ed0  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004e2ed5  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
004e2eda  f30f1155a8                MOVSS dword ptr [EBP + -0x58],XMM2
004e2edf  0f28c1                    MOVAPS XMM0,XMM1
004e2ee2  f30f59c1                  MULSS XMM0,XMM1
004e2ee6  0f28ca                    MOVAPS XMM1,XMM2
004e2ee9  f30f59ca                  MULSS XMM1,XMM2
004e2eed  f30f58c1                  ADDSS XMM0,XMM1
004e2ef1  e85a2bf5ff                CALL 0x00435a50
004e2ef6  0f28d0                    MOVAPS XMM2,XMM0
004e2ef9  0f57c0                    XORPS XMM0,XMM0
004e2efc  0f2fd0                    COMISS XMM2,XMM0
004e2eff  0f86bafeffff              JBE 0x004e2dbf
004e2f05  f30f100d40a1ba00          MOVSS XMM1,dword ptr [0x00baa140]
004e2f0d  f30f5eca                  DIVSS XMM1,XMM2
004e2f11  f30f1055b4                MOVSS XMM2,dword ptr [EBP + -0x4c]
004e2f16  f30f105da8                MOVSS XMM3,dword ptr [EBP + -0x58]
004e2f1b  f30f59d1                  MULSS XMM2,XMM1
004e2f1f  f30f59d9                  MULSS XMM3,XMM1
004e2f23  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
004e2f2b  0f2ec8                    UCOMISS XMM1,XMM0
004e2f2e  9f                        LAHF
004e2f2f  f6c444                    TEST AH,0x44
004e2f32  0f8b87feffff              JNP 0x004e2dbf
004e2f38  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004e2f40  f30f59d0                  MULSS XMM2,XMM0
004e2f44  f30f59d8                  MULSS XMM3,XMM0
004e2f48  f30f5ed1                  DIVSS XMM2,XMM1
004e2f4c  f30f5ed9                  DIVSS XMM3,XMM1
004e2f50  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
004e2f58  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
004e2f60  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004e2f68  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004e2f70  e94afeffff                JMP 0x004e2dbf
004e2f75  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e2f7b  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e2f85  81f968c7c500              CMP ECX,0xc5c768
004e2f8b  742a                      JZ 0x004e2fb7
004e2f8d  0f100568c7c500            MOVUPS XMM0,xmmword ptr [0x00c5c768]
004e2f94  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004e2f97  0f100578c7c500            MOVUPS XMM0,xmmword ptr [0x00c5c778]
004e2f9e  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004e2fa2  f30f7e0588c7c500          MOVQ XMM0,qword ptr [0x00c5c788]
004e2faa  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004e2faf  a190c7c500                MOV EAX,[0x00c5c790]
004e2fb4  894128                    MOV dword ptr [ECX + 0x28],EAX
004e2fb7  e8a4bf2000                CALL 0x006eef60
004e2fbc  33d2                      XOR EDX,EDX
004e2fbe  b91e000000                MOV ECX,0x1e
004e2fc3  f7f1                      DIV ECX
004e2fc5  83c20f                    ADD EDX,0xf
004e2fc8  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004e2fce  e9ecfdffff                JMP 0x004e2dbf
004e2fd3  83f902                    CMP ECX,0x2
004e2fd6  0f85ba040000              JNZ 0x004e3496
004e2fdc  85c0                      TEST EAX,EAX
004e2fde  0f8472030000              JZ 0x004e3356
004e2fe4  83f804                    CMP EAX,0x4
004e2fe7  0f85da030000              JNZ 0x004e33c7
004e2fed  a118ddb100                MOV EAX,[0x00b1dd18]
004e2ff2  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
004e2ff8  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004e2fff  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
004e3006  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e3009  894dc0                    MOV dword ptr [EBP + -0x40],ECX
004e300c  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
004e3010  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004e3017  a130ddb100                MOV EAX,[0x00b1dd30]
004e301c  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
004e3022  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004e3029  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
004e3030  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004e3033  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004e3036  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
004e303a  51                        PUSH ECX
004e303b  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004e303f  8d45bc                    LEA EAX,[EBP + -0x44]
004e3042  c7042400000000            MOV dword ptr [ESP],0x0
004e3049  8bcf                      MOV ECX,EDI
004e304b  50                        PUSH EAX
004e304c  8d45d4                    LEA EAX,[EBP + -0x2c]
004e304f  50                        PUSH EAX
004e3050  e8dbe21d00                CALL 0x006c1330
004e3055  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004e3059  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004e305c  83fa10                    CMP EDX,0x10
004e305f  7228                      JC 0x004e3089
004e3061  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004e3064  42                        INC EDX
004e3065  8bc1                      MOV EAX,ECX
004e3067  81fa00100000              CMP EDX,0x1000
004e306d  7210                      JC 0x004e307f
004e306f  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e3072  83c223                    ADD EDX,0x23
004e3075  2bc1                      SUB EAX,ECX
004e3077  83c0fc                    ADD EAX,-0x4
004e307a  83f81f                    CMP EAX,0x1f
004e307d  7749                      JA 0x004e30c8
004e307f  52                        PUSH EDX
004e3080  51                        PUSH ECX
004e3081  e8d6c06000                CALL 0x00aef15c
004e3086  83c408                    ADD ESP,0x8
004e3089  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e3090  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004e3093  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004e309a  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004e30a1  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004e30a5  83fa10                    CMP EDX,0x10
004e30a8  722e                      JC 0x004e30d8
004e30aa  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004e30ad  42                        INC EDX
004e30ae  8bc1                      MOV EAX,ECX
004e30b0  81fa00100000              CMP EDX,0x1000
004e30b6  7216                      JC 0x004e30ce
004e30b8  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e30bb  83c223                    ADD EDX,0x23
004e30be  2bc1                      SUB EAX,ECX
004e30c0  83c0fc                    ADD EAX,-0x4
004e30c3  83f81f                    CMP EAX,0x1f
004e30c6  7606                      JBE 0x004e30ce
004e30c8  ff159488b100              CALL dword ptr [0x00b18894]
004e30ce  52                        PUSH EDX
004e30cf  51                        PUSH ECX
004e30d0  e887c06000                CALL 0x00aef15c
004e30d5  83c408                    ADD ESP,0x8
004e30d8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e30e0  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004e30e8  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e30f0  e86bbe2000                CALL 0x006eef60
004e30f5  660f6ec0                  MOVD XMM0,EAX
004e30f9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e30fd  c1e81f                    SHR EAX,0x1f
004e3100  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e3109  660f5ac0                  CVTPD2PS XMM0,XMM0
004e310d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e3115  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004e311d  f30f58c0                  ADDSS XMM0,XMM0
004e3121  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
004e3129  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004e312e  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e3136  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004e313e  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
004e3143  0f28c8                    MOVAPS XMM1,XMM0
004e3146  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004e314e  e80d6cfbff                CALL 0x00499d60
004e3153  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e315b  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
004e3163  0f28c8                    MOVAPS XMM1,XMM0
004e3166  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
004e316b  e8e0f81900                CALL 0x00682a50
004e3170  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e3178  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004e3180  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004e3185  e8b6a3f3ff                CALL 0x0041d540
004e318a  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
004e318f  f30f1045b4                MOVSS XMM0,dword ptr [EBP + -0x4c]
004e3194  e887a3f3ff                CALL 0x0041d520
004e3199  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004e31a0  0f28f0                    MOVAPS XMM6,XMM0
004e31a3  f30f106da8                MOVSS XMM5,dword ptr [EBP + -0x58]
004e31a8  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004e31b0  0f28c5                    MOVAPS XMM0,XMM5
004e31b3  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
004e31bb  f30f59c2                  MULSS XMM0,XMM2
004e31bf  f30f5845e8                ADDSS XMM0,dword ptr [EBP + -0x18]
004e31c4  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004e31cc  0f28c6                    MOVAPS XMM0,XMM6
004e31cf  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
004e31d7  f30f59c2                  MULSS XMM0,XMM2
004e31db  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
004e31e3  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004e31eb  7455                      JZ 0x004e3242
004e31ed  f30f109f9c010000          MOVSS XMM3,dword ptr [EDI + 0x19c]
004e31f5  f30f10a7a0010000          MOVSS XMM4,dword ptr [EDI + 0x1a0]
004e31fd  0f28c3                    MOVAPS XMM0,XMM3
004e3200  0f28d4                    MOVAPS XMM2,XMM4
004e3203  f30f59c5                  MULSS XMM0,XMM5
004e3207  f30f59d6                  MULSS XMM2,XMM6
004e320b  f30f58db                  ADDSS XMM3,XMM3
004e320f  f30f58e4                  ADDSS XMM4,XMM4
004e3213  f30f58d0                  ADDSS XMM2,XMM0
004e3217  f30f59da                  MULSS XMM3,XMM2
004e321b  f30f59e2                  MULSS XMM4,XMM2
004e321f  f30f5ceb                  SUBSS XMM5,XMM3
004e3223  f30f5cf4                  SUBSS XMM6,XMM4
004e3227  0f28cd                    MOVAPS XMM1,XMM5
004e322a  0f28c6                    MOVAPS XMM0,XMM6
004e322d  e82e6bfbff                CALL 0x00499d60
004e3232  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e323a  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e3242  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004e3248  85c0                      TEST EAX,EAX
004e324a  7e0d                      JLE 0x004e3259
004e324c  2bc6                      SUB EAX,ESI
004e324e  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004e3254  e96e010000                JMP 0x004e33c7
004e3259  e802bd2000                CALL 0x006eef60
004e325e  a803                      TEST AL,0x3
004e3260  7522                      JNZ 0x004e3284
004e3262  6aff                      PUSH -0x1
004e3264  6855030000                PUSH 0x355
004e3269  8d45dc                    LEA EAX,[EBP + -0x24]
004e326c  8bcf                      MOV ECX,EDI
004e326e  50                        PUSH EAX
004e326f  e8ecd91e00                CALL 0x006d0c60
004e3274  b901000000                MOV ECX,0x1
004e3279  83780c10                  CMP dword ptr [EAX + 0xc],0x10
004e327d  7308                      JNC 0x004e3287
004e327f  884dbb                    MOV byte ptr [EBP + -0x45],CL
004e3282  eb07                      JMP 0x004e328b
004e3284  8b4db0                    MOV ECX,dword ptr [EBP + -0x50]
004e3287  c645bb00                  MOV byte ptr [EBP + -0x45],0x0
004e328b  f6c101                    TEST CL,0x1
004e328e  7408                      JZ 0x004e3298
004e3290  8d4ddc                    LEA ECX,[EBP + -0x24]
004e3293  e81843f3ff                CALL 0x004175b0
004e3298  807dbb00                  CMP byte ptr [EBP + -0x45],0x0
004e329c  0f841b010000              JZ 0x004e33bd
004e32a2  8d45e4                    LEA EAX,[EBP + -0x1c]
004e32a5  50                        PUSH EAX
004e32a6  e8c5bd1900                CALL 0x0067f070
004e32ab  83c404                    ADD ESP,0x4
004e32ae  8bf0                      MOV ESI,EAX
004e32b0  e8abbc2000                CALL 0x006eef60
004e32b5  f30f1015dcadba00          MOVSS XMM2,dword ptr [0x00baaddc]
004e32bd  51                        PUSH ECX
004e32be  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004e32c4  660f6ec0                  MOVD XMM0,EAX
004e32c8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e32cc  c1e81f                    SHR EAX,0x1f
004e32cf  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e32d8  8d45ac                    LEA EAX,[EBP + -0x54]
004e32db  c70424000000c1            MOV dword ptr [ESP],0xc1000000
004e32e2  50                        PUSH EAX
004e32e3  660f5ac8                  CVTPD2PS XMM1,XMM0
004e32e7  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004e32ef  f30f58c9                  ADDSS XMM1,XMM1
004e32f3  f30f580d30a6ba00          ADDSS XMM1,dword ptr [0x00baa630]
004e32fb  0f28c1                    MOVAPS XMM0,XMM1
004e32fe  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
004e3303  f30f5906                  MULSS XMM0,dword ptr [ESI]
004e3307  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
004e330c  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004e3311  e83a58ffff                CALL 0x004d8b50
004e3316  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004e331c  8d4db4                    LEA ECX,[EBP + -0x4c]
004e331f  c745b4b2000000            MOV dword ptr [EBP + -0x4c],0xb2
004e3326  e855344700                CALL 0x00956780
004e332b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004e3333  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e333a  6a00                      PUSH 0x0
004e333c  6a02                      PUSH 0x2
004e333e  51                        PUSH ECX
004e333f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e3346  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004e334c  ff75b4                    PUSH dword ptr [EBP + -0x4c]
004e334f  e8dca84400                CALL 0x0092dc30
004e3354  eb67                      JMP 0x004e33bd
004e3356  6a00                      PUSH 0x0
004e3358  6818ddb100                PUSH 0xb1dd18
004e335d  8d4f48                    LEA ECX,[EDI + 0x48]
004e3360  e81b70f2ff                CALL 0x0040a380
004e3365  6a00                      PUSH 0x0
004e3367  68c0dcb100                PUSH 0xb1dcc0
004e336c  8d4f48                    LEA ECX,[EDI + 0x48]
004e336f  e8cc75f2ff                CALL 0x0040a940
004e3374  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e337a  c687b800000001            MOV byte ptr [EDI + 0xb8],0x1
004e3381  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e338b  81f968c7c500              CMP ECX,0xc5c768
004e3391  742a                      JZ 0x004e33bd
004e3393  0f100568c7c500            MOVUPS XMM0,xmmword ptr [0x00c5c768]
004e339a  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004e339d  0f100578c7c500            MOVUPS XMM0,xmmword ptr [0x00c5c778]
004e33a4  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004e33a8  f30f7e0588c7c500          MOVQ XMM0,qword ptr [0x00c5c788]
004e33b0  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004e33b5  a190c7c500                MOV EAX,[0x00c5c790]
004e33ba  894128                    MOV dword ptr [ECX + 0x28],EAX
004e33bd  c787a00b00000f000000      MOV dword ptr [EDI + 0xba0],0xf
004e33c7  e894bb2000                CALL 0x006eef60
004e33cc  33d2                      XOR EDX,EDX
004e33ce  b90a000000                MOV ECX,0xa
004e33d3  f7f1                      DIV ECX
004e33d5  85d2                      TEST EDX,EDX
004e33d7  7559                      JNZ 0x004e3432
004e33d9  e882bb2000                CALL 0x006eef60
004e33de  51                        PUSH ECX
004e33df  8bcf                      MOV ECX,EDI
004e33e1  660f6ec0                  MOVD XMM0,EAX
004e33e5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e33e9  c1e81f                    SHR EAX,0x1f
004e33ec  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e33f5  660f5ac0                  CVTPD2PS XMM0,XMM0
004e33f9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e3401  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004e3409  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
004e3411  f30f110424                MOVSS dword ptr [ESP],XMM0
004e3416  e8b5301d00                CALL 0x006b64d0
004e341b  6a01                      PUSH 0x1
004e341d  6a00                      PUSH 0x0
004e341f  68ff000000                PUSH 0xff
004e3424  8b10                      MOV EDX,dword ptr [EAX]
004e3426  8bc8                      MOV ECX,EAX
004e3428  6aff                      PUSH -0x1
004e342a  6868c7c500                PUSH 0xc5c768
004e342f  ff523c                    CALL dword ptr [EDX + 0x3c]
004e3432  e829bb2000                CALL 0x006eef60
004e3437  33d2                      XOR EDX,EDX
004e3439  b914000000                MOV ECX,0x14
004e343e  f7f1                      DIV ECX
004e3440  85d2                      TEST EDX,EDX
004e3442  0f85e2f9ffff              JNZ 0x004e2e2a
004e3448  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
004e3450  0f57d2                    XORPS XMM2,XMM2
004e3453  8bcf                      MOV ECX,EDI
004e3455  e806931c00                CALL 0x006ac760
004e345a  85c0                      TEST EAX,EAX
004e345c  0f84c8f9ffff              JZ 0x004e2e2a
004e3462  e8f9ba2000                CALL 0x006eef60
004e3467  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e346d  50                        PUSH EAX
004e346e  6a00                      PUSH 0x0
004e3470  6a00                      PUSH 0x0
004e3472  6840b6c700                PUSH 0xc7b640
004e3477  8d873c030000              LEA EAX,[EDI + 0x33c]
004e347d  50                        PUSH EAX
004e347e  6a3f                      PUSH 0x3f
004e3480  68e8030000                PUSH 0x3e8
004e3485  e89656f4ff                CALL 0x00428b20
004e348a  8bc8                      MOV ECX,EAX
004e348c  8b10                      MOV EDX,dword ptr [EAX]
004e348e  ff520c                    CALL dword ptr [EDX + 0xc]
004e3491  e994f9ffff                JMP 0x004e2e2a
004e3496  85c0                      TEST EAX,EAX
004e3498  0f845d020000              JZ 0x004e36fb
004e349e  83f804                    CMP EAX,0x4
004e34a1  0f85f3020000              JNZ 0x004e379a
004e34a7  a118ddb100                MOV EAX,[0x00b1dd18]
004e34ac  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
004e34b2  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004e34b9  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
004e34c0  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004e34c3  894dc0                    MOV dword ptr [EBP + -0x40],ECX
004e34c6  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
004e34ca  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004e34d1  a130ddb100                MOV EAX,[0x00b1dd30]
004e34d6  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
004e34dc  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004e34e3  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
004e34ea  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004e34ed  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004e34f0  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
004e34f4  51                        PUSH ECX
004e34f5  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
004e34f9  8d45bc                    LEA EAX,[EBP + -0x44]
004e34fc  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004e3503  8bcf                      MOV ECX,EDI
004e3505  50                        PUSH EAX
004e3506  8d45d4                    LEA EAX,[EBP + -0x2c]
004e3509  50                        PUSH EAX
004e350a  e821de1d00                CALL 0x006c1330
004e350f  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
004e3513  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004e3516  83fa10                    CMP EDX,0x10
004e3519  7228                      JC 0x004e3543
004e351b  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004e351e  42                        INC EDX
004e351f  8bc1                      MOV EAX,ECX
004e3521  81fa00100000              CMP EDX,0x1000
004e3527  7210                      JC 0x004e3539
004e3529  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e352c  83c223                    ADD EDX,0x23
004e352f  2bc1                      SUB EAX,ECX
004e3531  83c0fc                    ADD EAX,-0x4
004e3534  83f81f                    CMP EAX,0x1f
004e3537  7749                      JA 0x004e3582
004e3539  52                        PUSH EDX
004e353a  51                        PUSH ECX
004e353b  e81cbc6000                CALL 0x00aef15c
004e3540  83c408                    ADD ESP,0x8
004e3543  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e354a  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004e354d  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004e3554  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004e355b  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004e355f  83fa10                    CMP EDX,0x10
004e3562  722e                      JC 0x004e3592
004e3564  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004e3567  42                        INC EDX
004e3568  8bc1                      MOV EAX,ECX
004e356a  81fa00100000              CMP EDX,0x1000
004e3570  7216                      JC 0x004e3588
004e3572  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e3575  83c223                    ADD EDX,0x23
004e3578  2bc1                      SUB EAX,ECX
004e357a  83c0fc                    ADD EAX,-0x4
004e357d  83f81f                    CMP EAX,0x1f
004e3580  7606                      JBE 0x004e3588
004e3582  ff159488b100              CALL dword ptr [0x00b18894]
004e3588  52                        PUSH EDX
004e3589  51                        PUSH ECX
004e358a  e8cdbb6000                CALL 0x00aef15c
004e358f  83c408                    ADD ESP,0x8
004e3592  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e3596  742c                      JZ 0x004e35c4
004e3598  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004e359f  7423                      JZ 0x004e35c4
004e35a1  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004e35a8  741a                      JZ 0x004e35c4
004e35aa  f30f2c8788000000          CVTTSS2SI EAX,dword ptr [EDI + 0x88]
004e35b2  8d8f98000000              LEA ECX,[EDI + 0x98]
004e35b8  660f6ec8                  MOVD XMM1,EAX
004e35bc  0f5bc9                    CVTDQ2PS XMM1,XMM1
004e35bf  e83c58f2ff                CALL 0x00408e00
004e35c4  8a8748010000              MOV AL,byte ptr [EDI + 0x148]
004e35ca  8d4f48                    LEA ECX,[EDI + 0x48]
004e35cd  6a01                      PUSH 0x1
004e35cf  8845bb                    MOV byte ptr [EBP + -0x45],AL
004e35d2  e8497cf2ff                CALL 0x0040b220
004e35d7  8a4dbb                    MOV CL,byte ptr [EBP + -0x45]
004e35da  51                        PUSH ECX
004e35db  c7042400000000            MOV dword ptr [ESP],0x0
004e35e2  884832                    MOV byte ptr [EAX + 0x32],CL
004e35e5  8d45e4                    LEA EAX,[EBP + -0x1c]
004e35e8  50                        PUSH EAX
004e35e9  8bcf                      MOV ECX,EDI
004e35eb  c787340c00009a99193f      MOV dword ptr [EDI + 0xc34],0x3f19999a
004e35f5  e846b61d00                CALL 0x006bec40
004e35fa  6a00                      PUSH 0x0
004e35fc  6800080001                PUSH 0x1000800
004e3601  8bcf                      MOV ECX,EDI
004e3603  e8283ef3ff                CALL 0x00417430
004e3608  84c0                      TEST AL,AL
004e360a  7531                      JNZ 0x004e363d
004e360c  f30f1087340c0000          MOVSS XMM0,dword ptr [EDI + 0xc34]
004e3614  83c9ff                    OR ECX,0xffffffff
004e3617  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004e361b  b884030000                MOV EAX,0x384
004e3620  6a01                      PUSH 0x1
004e3622  0f44c1                    CMOVZ EAX,ECX
004e3625  50                        PUSH EAX
004e3626  51                        PUSH ECX
004e3627  8d45e4                    LEA EAX,[EBP + -0x1c]
004e362a  f30f110424                MOVSS dword ptr [ESP],XMM0
004e362f  50                        PUSH EAX
004e3630  8d8f14040000              LEA ECX,[EDI + 0x414]
004e3636  e885fd2f00                CALL 0x007e33c0
004e363b  eb42                      JMP 0x004e367f
004e363d  8bcf                      MOV ECX,EDI
004e363f  e8fcb11d00                CALL 0x006be840
004e3644  6a00                      PUSH 0x0
004e3646  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
004e364c  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004e3652  8945b0                    MOV dword ptr [EBP + -0x50],EAX
004e3655  8d45ac                    LEA EAX,[EBP + -0x54]
004e3658  894dac                    MOV dword ptr [EBP + -0x54],ECX
004e365b  8d8f14040000              LEA ECX,[EDI + 0x414]
004e3661  50                        PUSH EAX
004e3662  e8d9123000                CALL 0x007e4940
004e3667  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e366f  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004e3677  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e367f  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004e3686  8bcf                      MOV ECX,EDI
004e3688  7414                      JZ 0x004e369e
004e368a  6a0a                      PUSH 0xa
004e368c  e8ff4b1f00                CALL 0x006d8290
004e3691  0fb6c0                    MOVZX EAX,AL
004e3694  85c0                      TEST EAX,EAX
004e3696  0f84fe000000              JZ 0x004e379a
004e369c  eb38                      JMP 0x004e36d6
004e369e  e89db11d00                CALL 0x006be840
004e36a3  50                        PUSH EAX
004e36a4  8bcf                      MOV ECX,EDI
004e36a6  e8b5461f00                CALL 0x006d7d60
004e36ab  84c0                      TEST AL,AL
004e36ad  0f84e7000000              JZ 0x004e379a
004e36b3  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
004e36ba  0f84da000000              JZ 0x004e379a
004e36c0  e89bb82000                CALL 0x006eef60
004e36c5  33d2                      XOR EDX,EDX
004e36c7  b903000000                MOV ECX,0x3
004e36cc  f7f1                      DIV ECX
004e36ce  85d2                      TEST EDX,EDX
004e36d0  0f85c4000000              JNZ 0x004e379a
004e36d6  51                        PUSH ECX
004e36d7  c704246666663f            MOV dword ptr [ESP],0x3f666666
004e36de  6a00                      PUSH 0x0
004e36e0  6a28                      PUSH 0x28
004e36e2  51                        PUSH ECX
004e36e3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e36ea  8bcf                      MOV ECX,EDI
004e36ec  68a5000000                PUSH 0xa5
004e36f1  e8aa341f00                CALL 0x006d6ba0
004e36f6  e99f000000                JMP 0x004e379a
004e36fb  6a01                      PUSH 0x1
004e36fd  68d4feb500                PUSH 0xb5fed4
004e3702  8d4f48                    LEA ECX,[EDI + 0x48]
004e3705  e8e673f2ff                CALL 0x0040aaf0
004e370a  84c0                      TEST AL,AL
004e370c  7417                      JZ 0x004e3725
004e370e  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004e3715  740e                      JZ 0x004e3725
004e3717  8d8f98000000              LEA ECX,[EDI + 0x98]
004e371d  0f57c9                    XORPS XMM1,XMM1
004e3720  e8db56f2ff                CALL 0x00408e00
004e3725  6a01                      PUSH 0x1
004e3727  6818ddb100                PUSH 0xb1dd18
004e372c  8d4f48                    LEA ECX,[EDI + 0x48]
004e372f  e89c6ef2ff                CALL 0x0040a5d0
004e3734  84c0                      TEST AL,AL
004e3736  7420                      JZ 0x004e3758
004e3738  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004e373b  85c0                      TEST EAX,EAX
004e373d  7419                      JZ 0x004e3758
004e373f  8d4f78                    LEA ECX,[EDI + 0x78]
004e3742  0f57c9                    XORPS XMM1,XMM1
004e3745  e8b656f2ff                CALL 0x00408e00
004e374a  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004e374d  85c0                      TEST EAX,EAX
004e374f  7407                      JZ 0x004e3758
004e3751  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004e3758  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e375e  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e3768  81f968c7c500              CMP ECX,0xc5c768
004e376e  742a                      JZ 0x004e379a
004e3770  0f100568c7c500            MOVUPS XMM0,xmmword ptr [0x00c5c768]
004e3777  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004e377a  0f100578c7c500            MOVUPS XMM0,xmmword ptr [0x00c5c778]
004e3781  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004e3785  f30f7e0588c7c500          MOVQ XMM0,qword ptr [0x00c5c788]
004e378d  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004e3792  a190c7c500                MOV EAX,[0x00c5c790]
004e3797  894128                    MOV dword ptr [ECX + 0x28],EAX
004e379a  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004e37a1  0f8418f6ffff              JZ 0x004e2dbf
004e37a7  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
004e37ab  0f850ef6ffff              JNZ 0x004e2dbf
004e37b1  6aff                      PUSH -0x1
004e37b3  6a00                      PUSH 0x0
004e37b5  6a02                      PUSH 0x2
004e37b7  ff7728                    PUSH dword ptr [EDI + 0x28]
004e37ba  8bcf                      MOV ECX,EDI
004e37bc  e86fd71d00                CALL 0x006c0f30
004e37c1  6a00                      PUSH 0x0
004e37c3  68c0dcb100                PUSH 0xb1dcc0
004e37c8  8d4f48                    LEA ECX,[EDI + 0x48]
004e37cb  e87071f2ff                CALL 0x0040a940
004e37d0  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
004e37d6  51                        PUSH ECX
004e37d7  898780030000              MOV dword ptr [EDI + 0x380],EAX
004e37dd  8bcf                      MOV ECX,EDI
004e37df  8d45ac                    LEA EAX,[EBP + -0x54]
004e37e2  c7042400000000            MOV dword ptr [ESP],0x0
004e37e9  50                        PUSH EAX
004e37ea  c687b800000001            MOV byte ptr [EDI + 0xb8],0x1
004e37f1  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
004e37f8  e843b41d00                CALL 0x006bec40
004e37fd  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004e3805  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e380d  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
004e3811  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
004e3816  e84565fbff                CALL 0x00499d60
004e381b  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e3823  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e382b  e830b72000                CALL 0x006eef60
004e3830  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004e3838  0f57c9                    XORPS XMM1,XMM1
004e383b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e3841  f30f58c1                  ADDSS XMM0,XMM1
004e3845  50                        PUSH EAX
004e3846  6a00                      PUSH 0x0
004e3848  57                        PUSH EDI
004e3849  6840b6c700                PUSH 0xc7b640
004e384e  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
004e3853  8d45a4                    LEA EAX,[EBP + -0x5c]
004e3856  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004e385e  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
004e3866  50                        PUSH EAX
004e3867  6a01                      PUSH 0x1
004e3869  ff7728                    PUSH dword ptr [EDI + 0x28]
004e386c  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
004e3871  e8aa52f4ff                CALL 0x00428b20
004e3876  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
004e387d  8bf0                      MOV ESI,EAX
004e387f  7415                      JZ 0x004e3896
004e3881  6a00                      PUSH 0x0
004e3883  ffb7640c0000              PUSH dword ptr [EDI + 0xc64]
004e3889  8bce                      MOV ECX,ESI
004e388b  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
004e3891  e84acb1e00                CALL 0x006d03e0
004e3896  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
004e389c  8bce                      MOV ECX,ESI
004e389e  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004e38a5  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
004e38ab  8b06                      MOV EAX,dword ptr [ESI]
004e38ad  ff500c                    CALL dword ptr [EAX + 0xc]
004e38b0  e975f5ffff                JMP 0x004e2e2a
