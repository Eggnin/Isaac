; J460 NPC AI 0x006b8d4f HELPER_FuseWrite_006b8d4f
; types=4
; identities=4.*
; entry=006b8b20
006b8b20  55                        PUSH EBP
006b8b21  8bec                      MOV EBP,ESP
006b8b23  83ec30                    SUB ESP,0x30
006b8b26  33c0                      XOR EAX,EAX
006b8b28  56                        PUSH ESI
006b8b29  8bf1                      MOV ESI,ECX
006b8b2b  57                        PUSH EDI
006b8b2c  c686630c000000            MOV byte ptr [ESI + 0xc63],0x0
006b8b33  8dbe500f0000              LEA EDI,[ESI + 0xf50]
006b8b39  c786640c0000ffffffff      MOV dword ptr [ESI + 0xc64],0xffffffff
006b8b43  c786680c000000000000      MOV dword ptr [ESI + 0xc68],0x0
006b8b4d  c7866c0c000000000000      MOV dword ptr [ESI + 0xc6c],0x0
006b8b57  c786700c00000000803f      MOV dword ptr [ESI + 0xc70],0x3f800000
006b8b61  c786ac0b00000000803f      MOV dword ptr [ESI + 0xbac],0x3f800000
006b8b6b  c786780c0000ffffffff      MOV dword ptr [ESI + 0xc78],0xffffffff
006b8b75  c6863e0c000000            MOV byte ptr [ESI + 0xc3e],0x0
006b8b7c  c786380c00000000803f      MOV dword ptr [ESI + 0xc38],0x3f800000
006b8b86  c786400c000000000000      MOV dword ptr [ESI + 0xc40],0x0
006b8b90  c786440c000078000000      MOV dword ptr [ESI + 0xc44],0x78
006b8b9a  c786c80b000000000000      MOV dword ptr [ESI + 0xbc8],0x0
006b8ba4  c786cc0b000000000000      MOV dword ptr [ESI + 0xbcc],0x0
006b8bae  8986d00b0000              MOV dword ptr [ESI + 0xbd0],EAX
006b8bb4  8986e80b0000              MOV dword ptr [ESI + 0xbe8],EAX
006b8bba  8886600c0000              MOV byte ptr [ESI + 0xc60],AL
006b8bc0  88865c0f0000              MOV byte ptr [ESI + 0xf5c],AL
006b8bc6  8986180f0000              MOV dword ptr [ESI + 0xf18],EAX
006b8bcc  c7861c0f0000ffffffff      MOV dword ptr [ESI + 0xf1c],0xffffffff
006b8bd6  88862c0f0000              MOV byte ptr [ESI + 0xf2c],AL
006b8bdc  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006b8be4  f30f1186200f0000          MOVSS dword ptr [ESI + 0xf20],XMM0
006b8bec  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006b8bf4  f30f1186240f0000          MOVSS dword ptr [ESI + 0xf24],XMM0
006b8bfc  8986280f0000              MOV dword ptr [ESI + 0xf28],EAX
006b8c02  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006b8c0a  f30f1186300f0000          MOVSS dword ptr [ESI + 0xf30],XMM0
006b8c12  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006b8c1a  f30f1186340f0000          MOVSS dword ptr [ESI + 0xf34],XMM0
006b8c22  8b0f                      MOV ECX,dword ptr [EDI]
006b8c24  8986380f0000              MOV dword ptr [ESI + 0xf38],EAX
006b8c2a  89863c0f0000              MOV dword ptr [ESI + 0xf3c],EAX
006b8c30  8986400f0000              MOV dword ptr [ESI + 0xf40],EAX
006b8c36  c786440f00000000803f      MOV dword ptr [ESI + 0xf44],0x3f800000
006b8c40  c786480f00000000803f      MOV dword ptr [ESI + 0xf48],0x3f800000
006b8c4a  c7864c0f0000ffffffff      MOV dword ptr [ESI + 0xf4c],0xffffffff
006b8c54  85c9                      TEST ECX,ECX
006b8c56  7423                      JZ 0x006b8c7b
006b8c58  8b01                      MOV EAX,dword ptr [ECX]
006b8c5a  ff5028                    CALL dword ptr [EAX + 0x28]
006b8c5d  8b0f                      MOV ECX,dword ptr [EDI]
006b8c5f  85c9                      TEST ECX,ECX
006b8c61  7418                      JZ 0x006b8c7b
006b8c63  8d45fc                    LEA EAX,[EBP + -0x4]
006b8c66  897dfc                    MOV dword ptr [EBP + -0x4],EDI
006b8c69  50                        PUSH EAX
006b8c6a  81c1cc030000              ADD ECX,0x3cc
006b8c70  e89b65e1ff                CALL 0x004cf210
006b8c75  c70700000000              MOV dword ptr [EDI],0x0
006b8c7b  8b8e580f0000              MOV ECX,dword ptr [ESI + 0xf58]
006b8c81  8dbe580f0000              LEA EDI,[ESI + 0xf58]
006b8c87  85c9                      TEST ECX,ECX
006b8c89  7423                      JZ 0x006b8cae
006b8c8b  8b01                      MOV EAX,dword ptr [ECX]
006b8c8d  ff5028                    CALL dword ptr [EAX + 0x28]
006b8c90  8b0f                      MOV ECX,dword ptr [EDI]
006b8c92  85c9                      TEST ECX,ECX
006b8c94  7418                      JZ 0x006b8cae
006b8c96  8d45fc                    LEA EAX,[EBP + -0x4]
006b8c99  897dfc                    MOV dword ptr [EBP + -0x4],EDI
006b8c9c  50                        PUSH EAX
006b8c9d  81c1cc030000              ADD ECX,0x3cc
006b8ca3  e86865e1ff                CALL 0x004cf210
006b8ca8  c70700000000              MOV dword ptr [EDI],0x0
006b8cae  8b8e540f0000              MOV ECX,dword ptr [ESI + 0xf54]
006b8cb4  8dbe540f0000              LEA EDI,[ESI + 0xf54]
006b8cba  85c9                      TEST ECX,ECX
006b8cbc  7418                      JZ 0x006b8cd6
006b8cbe  8d45fc                    LEA EAX,[EBP + -0x4]
006b8cc1  897dfc                    MOV dword ptr [EBP + -0x4],EDI
006b8cc4  50                        PUSH EAX
006b8cc5  81c1cc030000              ADD ECX,0x3cc
006b8ccb  e84065e1ff                CALL 0x004cf210
006b8cd0  c70700000000              MOV dword ptr [EDI],0x0
006b8cd6  ff7514                    PUSH dword ptr [EBP + 0x14]
006b8cd9  8b86880b0000              MOV EAX,dword ptr [ESI + 0xb88]
006b8cdf  8bce                      MOV ECX,ESI
006b8ce1  ff7510                    PUSH dword ptr [EBP + 0x10]
006b8ce4  89868c0b0000              MOV dword ptr [ESI + 0xb8c],EAX
006b8cea  ff750c                    PUSH dword ptr [EBP + 0xc]
006b8ced  c786940b000000000000      MOV dword ptr [ESI + 0xb94],0x0
006b8cf7  ff7508                    PUSH dword ptr [EBP + 0x8]
006b8cfa  c786980b000000000000      MOV dword ptr [ESI + 0xb98],0x0
006b8d04  c7869c0b000000000000      MOV dword ptr [ESI + 0xb9c],0x0
006b8d0e  e88d06ffff                CALL 0x006a93a0
006b8d13  838e6801000004            OR dword ptr [ESI + 0x168],0x4
006b8d1a  8d8e800c0000              LEA ECX,[ESI + 0xc80]
006b8d20  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
006b8d26  0f57c9                    XORPS XMM1,XMM1
006b8d29  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
006b8d2f  33c0                      XOR EAX,EAX
006b8d31  c786640b000001000000      MOV dword ptr [ESI + 0xb64],0x1
006b8d3b  c786680b000000000000      MOV dword ptr [ESI + 0xb68],0x0
006b8d45  c786740b000000000000      MOV dword ptr [ESI + 0xb74],0x0
006b8d4f  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
006b8d59  c7866c0b000000000000      MOV dword ptr [ESI + 0xb6c],0x0
006b8d63  c786700b000000000000      MOV dword ptr [ESI + 0xb70],0x0
006b8d6d  c786840b000000000000      MOV dword ptr [ESI + 0xb84],0x0
006b8d77  c7867c0c0000ffffffff      MOV dword ptr [ESI + 0xc7c],0xffffffff
006b8d81  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006b8d89  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
006b8d91  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006b8d99  f30f118638030000          MOVSS dword ptr [ESI + 0x338],XMM0
006b8da1  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006b8da9  f30f11862c0c0000          MOVSS dword ptr [ESI + 0xc2c],XMM0
006b8db1  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006b8db9  f30f1186300c0000          MOVSS dword ptr [ESI + 0xc30],XMM0
006b8dc1  c786340c00000000803f      MOV dword ptr [ESI + 0xc34],0x3f800000
006b8dcb  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006b8dd3  f30f1186b00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM0
006b8ddb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006b8de3  f30f1186b40b0000          MOVSS dword ptr [ESI + 0xbb4],XMM0
006b8deb  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006b8df3  f30f1186b80b0000          MOVSS dword ptr [ESI + 0xbb8],XMM0
006b8dfb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006b8e03  f30f1186bc0b0000          MOVSS dword ptr [ESI + 0xbbc],XMM0
006b8e0b  8986740c0000              MOV dword ptr [ESI + 0xc74],EAX
006b8e11  8986f0030000              MOV dword ptr [ESI + 0x3f0],EAX
006b8e17  c786c00b000000000000      MOV dword ptr [ESI + 0xbc0],0x0
006b8e21  c786c40b000000000000      MOV dword ptr [ESI + 0xbc4],0x0
006b8e2b  c786ec0b000000000000      MOV dword ptr [ESI + 0xbec],0x0
006b8e35  c786a00b000000000000      MOV dword ptr [ESI + 0xba0],0x0
006b8e3f  c786a40b0000ffffffff      MOV dword ptr [ESI + 0xba4],0xffffffff
006b8e49  c786a80b000000000000      MOV dword ptr [ESI + 0xba8],0x0
006b8e53  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006b8e5b  f30f1186f4030000          MOVSS dword ptr [ESI + 0x3f4],XMM0
006b8e63  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006b8e6b  668986610c0000            MOV word ptr [ESI + 0xc61],AX
006b8e72  8945f0                    MOV dword ptr [EBP + -0x10],EAX
006b8e75  8945f4                    MOV dword ptr [EBP + -0xc],EAX
006b8e78  8945f8                    MOV dword ptr [EBP + -0x8],EAX
006b8e7b  8d45d0                    LEA EAX,[EBP + -0x30]
006b8e7e  f30f1186f8030000          MOVSS dword ptr [ESI + 0x3f8],XMM0
006b8e86  0f57c0                    XORPS XMM0,XMM0
006b8e89  3bc8                      CMP ECX,EAX
006b8e8b  7417                      JZ 0x006b8ea4
006b8e8d  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
006b8e90  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
006b8e94  f30f7e45f0                MOVQ XMM0,qword ptr [EBP + -0x10]
006b8e99  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
006b8e9e  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
006b8ea1  894128                    MOV dword ptr [ECX + 0x28],EAX
006b8ea4  8b86000f0000              MOV EAX,dword ptr [ESI + 0xf00]
006b8eaa  8d8e14040000              LEA ECX,[ESI + 0x414]
006b8eb0  8986040f0000              MOV dword ptr [ESI + 0xf04],EAX
006b8eb6  8b860c0f0000              MOV EAX,dword ptr [ESI + 0xf0c]
006b8ebc  8986100f0000              MOV dword ptr [ESI + 0xf10],EAX
006b8ec2  e899a31200                CALL 0x007e3260
006b8ec7  80be3d0c000000            CMP byte ptr [ESI + 0xc3d],0x0
006b8ece  7411                      JZ 0x006b8ee1
006b8ed0  a17816c700                MOV EAX,[0x00c71678]
006b8ed5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
006b8edb  ff8024720000              INC dword ptr [EAX + 0x7224]
006b8ee1  56                        PUSH ESI
006b8ee2  c7865c0c000000000000      MOV dword ptr [ESI + 0xc5c],0x0
006b8eec  e88f791a00                CALL 0x00860880
006b8ef1  5f                        POP EDI
006b8ef2  5e                        POP ESI
006b8ef3  8be5                      MOV ESP,EBP
006b8ef5  5d                        POP EBP
006b8ef6  c21000                    RET 0x10
