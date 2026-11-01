; J460 NPC AI 0x00973a50 HELPER_Laser_AdvanceLifetime
; types=7
; identities=7.*
; entry=00973a50
00973a50  55                        PUSH EBP
00973a51  8bec                      MOV EBP,ESP
00973a53  83e4f0                    AND ESP,0xfffffff0
00973a56  81ec88000000              SUB ESP,0x88
00973a5c  a1b493bf00                MOV EAX,[0x00bf93b4]
00973a61  33c4                      XOR EAX,ESP
00973a63  89842484000000            MOV dword ptr [ESP + 0x84],EAX
00973a6a  56                        PUSH ESI
00973a6b  57                        PUSH EDI
00973a6c  8bf9                      MOV EDI,ECX
00973a6e  80bf1705000000            CMP byte ptr [EDI + 0x517],0x0
00973a75  0f84c3010000              JZ 0x00973c3e
00973a7b  80bf1505000000            CMP byte ptr [EDI + 0x515],0x0
00973a82  0f85b6010000              JNZ 0x00973c3e
00973a88  80bf7501000000            CMP byte ptr [EDI + 0x175],0x0
00973a8f  0f85a9010000              JNZ 0x00973c3e
00973a95  80bf5c04000000            CMP byte ptr [EDI + 0x45c],0x0
00973a9c  7518                      JNZ 0x00973ab6
00973a9e  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00973aa6  0f57d2                    XORPS XMM2,XMM2
00973aa9  e8b28cd3ff                CALL 0x006ac760
00973aae  85c0                      TEST EAX,EAX
00973ab0  0f8488010000              JZ 0x00973c3e
00973ab6  8bb7c8030000              MOV ESI,dword ptr [EDI + 0x3c8]
00973abc  85f6                      TEST ESI,ESI
00973abe  0f847a010000              JZ 0x00973c3e
00973ac4  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00973ac8  7506                      JNZ 0x00973ad0
00973aca  8974240c                  MOV dword ptr [ESP + 0xc],ESI
00973ace  eb45                      JMP 0x00973b15
00973ad0  85f6                      TEST ESI,ESI
00973ad2  0f8466010000              JZ 0x00973c3e
00973ad8  837e2803                  CMP dword ptr [ESI + 0x28],0x3
00973adc  0f855c010000              JNZ 0x00973c3e
00973ae2  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
00973ae5  83f850                    CMP EAX,0x50
00973ae8  7419                      JZ 0x00973b03
00973aea  3deb000000                CMP EAX,0xeb
00973aef  7412                      JZ 0x00973b03
00973af1  3df0000000                CMP EAX,0xf0
00973af6  740b                      JZ 0x00973b03
00973af8  3dee000000                CMP EAX,0xee
00973afd  0f853b010000              JNZ 0x00973c3e
00973b03  8b8610040000              MOV EAX,dword ptr [ESI + 0x410]
00973b09  8944240c                  MOV dword ptr [ESP + 0xc],EAX
00973b0d  85c0                      TEST EAX,EAX
00973b0f  0f8429010000              JZ 0x00973c3e
00973b15  e846b4d7ff                CALL 0x006eef60
00973b1a  f30f10871c050000          MOVSS XMM0,dword ptr [EDI + 0x51c]
00973b22  83e001                    AND EAX,0x1
00973b25  56                        PUSH ESI
00973b26  8d0445ffffffff            LEA EAX,[EAX*0x2 + 0xffffffff]
00973b2d  50                        PUSH EAX
00973b2e  51                        PUSH ECX
00973b2f  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00973b33  8d44242c                  LEA EAX,[ESP + 0x2c]
00973b37  f30f110424                MOVSS dword ptr [ESP],XMM0
00973b3c  6a03                      PUSH 0x3
00973b3e  50                        PUSH EAX
00973b3f  e87cbbe4ff                CALL 0x007bf6c0
00973b44  8b0d404bc300              MOV ECX,dword ptr [0x00c34b40]
00973b4a  a1444bc300                MOV EAX,[0x00c34b44]
00973b4f  f7d1                      NOT ECX
00973b51  234c2458                  AND ECX,dword ptr [ESP + 0x58]
00973b55  f7d0                      NOT EAX
00973b57  2344245c                  AND EAX,dword ptr [ESP + 0x5c]
00973b5b  894c2410                  MOV dword ptr [ESP + 0x10],ECX
00973b5f  8b0d484bc300              MOV ECX,dword ptr [0x00c34b48]
00973b65  89442414                  MOV dword ptr [ESP + 0x14],EAX
00973b69  f7d1                      NOT ECX
00973b6b  a14c4bc300                MOV EAX,[0x00c34b4c]
00973b70  234c2460                  AND ECX,dword ptr [ESP + 0x60]
00973b74  f7d0                      NOT EAX
00973b76  23442464                  AND EAX,dword ptr [ESP + 0x64]
00973b7a  83bf5804000000            CMP dword ptr [EDI + 0x458],0x0
00973b81  894c2418                  MOV dword ptr [ESP + 0x18],ECX
00973b85  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
00973b89  0f10442410                MOVUPS XMM0,xmmword ptr [ESP + 0x10]
00973b8e  0f118728040000            MOVUPS xmmword ptr [EDI + 0x428],XMM0
00973b95  7d37                      JGE 0x00973bce
00973b97  8b35c84bc300              MOV ESI,dword ptr [0x00c34bc8]
00973b9d  8b0dc04bc300              MOV ECX,dword ptr [0x00c34bc0]
00973ba3  f7d6                      NOT ESI
00973ba5  a1c44bc300                MOV EAX,[0x00c34bc4]
00973baa  f7d1                      NOT ECX
00973bac  8b15cc4bc300              MOV EDX,dword ptr [0x00c34bcc]
00973bb2  f7d0                      NOT EAX
00973bb4  218f28040000              AND dword ptr [EDI + 0x428],ECX
00973bba  f7d2                      NOT EDX
00973bbc  21872c040000              AND dword ptr [EDI + 0x42c],EAX
00973bc2  21b730040000              AND dword ptr [EDI + 0x430],ESI
00973bc8  219734040000              AND dword ptr [EDI + 0x434],EDX
00973bce  8b874c040000              MOV EAX,dword ptr [EDI + 0x44c]
00973bd4  8b9750040000              MOV EDX,dword ptr [EDI + 0x450]
00973bda  f7d0                      NOT EAX
00973bdc  8bb754040000              MOV ESI,dword ptr [EDI + 0x454]
00973be2  f7d2                      NOT EDX
00973be4  8b8f48040000              MOV ECX,dword ptr [EDI + 0x448]
00973bea  f7d6                      NOT ESI
00973bec  21872c040000              AND dword ptr [EDI + 0x42c],EAX
00973bf2  f7d1                      NOT ECX
00973bf4  a17816c700                MOV EAX,[0x00c71678]
00973bf9  218f28040000              AND dword ptr [EDI + 0x428],ECX
00973bff  219730040000              AND dword ptr [EDI + 0x430],EDX
00973c05  21b734040000              AND dword ptr [EDI + 0x434],ESI
00973c0b  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00973c12  7c10                      JL 0x00973c24
00973c14  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00973c18  750a                      JNZ 0x00973c24
00973c1a  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00973c22  eb08                      JMP 0x00973c2c
00973c24  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00973c2c  f30f10442468              MOVSS XMM0,dword ptr [ESP + 0x68]
00973c32  f30f59c1                  MULSS XMM0,XMM1
00973c36  f30f118788030000          MOVSS dword ptr [EDI + 0x388],XMM0
00973c3e  8b8c248c000000            MOV ECX,dword ptr [ESP + 0x8c]
00973c45  5f                        POP EDI
00973c46  5e                        POP ESI
00973c47  33cc                      XOR ECX,ESP
00973c49  e8ddb41700                CALL 0x00aef12b
00973c4e  8be5                      MOV ESP,EBP
00973c50  5d                        POP EBP
00973c51  c3                        RET
