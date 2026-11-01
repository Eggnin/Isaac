; J460 NPC AI 0x00521ab0 AI_00521ab0
; types=44
; identities=44.0.0,44.1.0
; entry=00521ab0
00521ab0  55                        PUSH EBP
00521ab1  8bec                      MOV EBP,ESP
00521ab3  83e4f8                    AND ESP,0xfffffff8
00521ab6  83ec58                    SUB ESP,0x58
00521ab9  56                        PUSH ESI
00521aba  57                        PUSH EDI
00521abb  8bf9                      MOV EDI,ECX
00521abd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00521ac3  ffb10c830100              PUSH dword ptr [ECX + 0x1830c]
00521ac9  ffb104830100              PUSH dword ptr [ECX + 0x18304]
00521acf  e8ecf02100                CALL 0x00740bc0
00521ad4  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
00521ad7  d1e8                      SHR EAX,0x1
00521ad9  2501ffffff                AND EAX,0xffffff01
00521ade  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00521ae5  89442418                  MOV dword ptr [ESP + 0x18],EAX
00521ae9  0f8565010000              JNZ 0x00521c54
00521aef  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00521af5  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
00521afc  83e1fb                    AND ECX,0xfffffffb
00521aff  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
00521b07  81c901000100              OR ECX,0x10001
00521b0d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00521b17  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00521b1e  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00521b24  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00521b2c  f30f5cc2                  SUBSS XMM0,XMM2
00521b30  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00521b38  8b157816c700              MOV EDX,dword ptr [0x00c71678]
00521b3e  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
00521b46  f30f5ec2                  DIVSS XMM0,XMM2
00521b4a  8b9200830100              MOV EDX,dword ptr [EDX + 0x18300]
00521b50  f30f58c1                  ADDSS XMM0,XMM1
00521b54  f30f2cc0                  CVTTSS2SI EAX,XMM0
00521b58  89442410                  MOV dword ptr [ESP + 0x10],EAX
00521b5c  85c0                      TEST EAX,EAX
00521b5e  7833                      JS 0x00521b93
00521b60  8b4a0c                    MOV ECX,dword ptr [EDX + 0xc]
00521b63  3bc1                      CMP EAX,ECX
00521b65  7d2c                      JGE 0x00521b93
00521b67  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00521b6f  f30f5cc3                  SUBSS XMM0,XMM3
00521b73  f30f5ec2                  DIVSS XMM0,XMM2
00521b77  f30f58c1                  ADDSS XMM0,XMM1
00521b7b  f30f2cf0                  CVTTSS2SI ESI,XMM0
00521b7f  85f6                      TEST ESI,ESI
00521b81  7810                      JS 0x00521b93
00521b83  3b7210                    CMP ESI,dword ptr [EDX + 0x10]
00521b86  7d0b                      JGE 0x00521b93
00521b88  8bc1                      MOV EAX,ECX
00521b8a  0fafc6                    IMUL EAX,ESI
00521b8d  03442410                  ADD EAX,dword ptr [ESP + 0x10]
00521b91  eb06                      JMP 0x00521b99
00521b93  8b4a0c                    MOV ECX,dword ptr [EDX + 0xc]
00521b96  83c8ff                    OR EAX,0xffffffff
00521b99  99                        CDQ
00521b9a  f7f9                      IDIV ECX
00521b9c  660f6ec0                  MOVD XMM0,EAX
00521ba0  a17816c700                MOV EAX,[0x00c71678]
00521ba5  660f6eca                  MOVD XMM1,EDX
00521ba9  0f5bc9                    CVTDQ2PS XMM1,XMM1
00521bac  0f5bc0                    CVTDQ2PS XMM0,XMM0
00521baf  f30f59ca                  MULSS XMM1,XMM2
00521bb3  f30f59c2                  MULSS XMM0,XMM2
00521bb7  f30f58ca                  ADDSS XMM1,XMM2
00521bbb  f30f58c3                  ADDSS XMM0,XMM3
00521bbf  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
00521bc7  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00521bcf  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00521bd5  803900                    CMP byte ptr [ECX],0x0
00521bd8  741b                      JZ 0x00521bf5
00521bda  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00521be0  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
00521be6  750d                      JNZ 0x00521bf5
00521be8  38442418                  CMP byte ptr [ESP + 0x18],AL
00521bec  7407                      JZ 0x00521bf5
00521bee  8b07                      MOV EAX,dword ptr [EDI]
00521bf0  8bcf                      MOV ECX,EDI
00521bf2  ff5028                    CALL dword ptr [EAX + 0x28]
00521bf5  8d4c2434                  LEA ECX,[ESP + 0x34]
00521bf9  e87255eeff                CALL 0x00407170
00521bfe  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00521c04  3bc8                      CMP ECX,EAX
00521c06  741e                      JZ 0x00521c26
00521c08  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00521c0b  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00521c0e  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
00521c12  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00521c16  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
00521c1b  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00521c20  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
00521c23  894128                    MOV dword ptr [ECX + 0x28],EAX
00521c26  c787f40100000000803f      MOV dword ptr [EDI + 0x1f4],0x3f800000
00521c30  c787f80100000000803f      MOV dword ptr [EDI + 0x1f8],0x3f800000
00521c3a  c787fc0100000000803f      MOV dword ptr [EDI + 0x1fc],0x3f800000
00521c44  c787000200000000803f      MOV dword ptr [EDI + 0x200],0x3f800000
00521c4e  5f                        POP EDI
00521c4f  5e                        POP ESI
00521c50  8be5                      MOV ESP,EBP
00521c52  5d                        POP EBP
00521c53  c3                        RET
00521c54  8d8f14040000              LEA ECX,[EDI + 0x414]
00521c5a  e891532c00                CALL 0x007e6ff0
00521c5f  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00521c65  83f804                    CMP EAX,0x4
00521c68  0f857a040000              JNZ 0x005220e8
00521c6e  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00521c72  c644240f01                MOV byte ptr [ESP + 0xf],0x1
00521c77  751a                      JNZ 0x00521c93
00521c79  6a00                      PUSH 0x0
00521c7b  51                        PUSH ECX
00521c7c  8d8f14040000              LEA ECX,[EDI + 0x414]
00521c82  c704240000803f            MOV dword ptr [ESP],0x3f800000
00521c89  e8b2362c00                CALL 0x007e5340
00521c8e  e9f0000000                JMP 0x00521d83
00521c93  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00521c9b  f30f5c8fb40b0000          SUBSS XMM1,dword ptr [EDI + 0xbb4]
00521ca3  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00521cab  f30f5c97b00b0000          SUBSS XMM2,dword ptr [EDI + 0xbb0]
00521cb3  0f28c1                    MOVAPS XMM0,XMM1
00521cb6  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00521cbc  f30f59c1                  MULSS XMM0,XMM1
00521cc0  0f28ca                    MOVAPS XMM1,XMM2
00521cc3  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
00521cc9  f30f59ca                  MULSS XMM1,XMM2
00521ccd  f30f58c1                  ADDSS XMM0,XMM1
00521cd1  e87a3df1ff                CALL 0x00435a50
00521cd6  0f28d0                    MOVAPS XMM2,XMM0
00521cd9  0f57e4                    XORPS XMM4,XMM4
00521cdc  0f2ed4                    UCOMISS XMM2,XMM4
00521cdf  9f                        LAHF
00521ce0  f6c444                    TEST AH,0x44
00521ce3  7a08                      JP 0x00521ced
00521ce5  f30f101520a0ba00          MOVSS XMM2,dword ptr [0x00baa020]
00521ced  0f28c2                    MOVAPS XMM0,XMM2
00521cf0  f30f100db4a5ba00          MOVSS XMM1,dword ptr [0x00baa5b4]
00521cf8  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
00521d00  f30f105c2410              MOVSS XMM3,dword ptr [ESP + 0x10]
00521d06  f30f5dc8                  MINSS XMM1,XMM0
00521d0a  0f571d70cbba00            XORPS XMM3,xmmword ptr [0x00bacb70]
00521d11  f30f100580a2ba00          MOVSS XMM0,dword ptr [0x00baa280]
00521d19  0f2fc1                    COMISS XMM0,XMM1
00521d1c  f30f5eca                  DIVSS XMM1,XMM2
00521d20  f30f10542418              MOVSS XMM2,dword ptr [ESP + 0x18]
00521d26  0f9744240f                SETA byte ptr [ESP + 0xf]
00521d2b  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00521d32  f30f59d1                  MULSS XMM2,XMM1
00521d36  f30f59d9                  MULSS XMM3,XMM1
00521d3a  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
00521d42  0f2ecc                    UCOMISS XMM1,XMM4
00521d45  9f                        LAHF
00521d46  f6c444                    TEST AH,0x44
00521d49  7b38                      JNP 0x00521d83
00521d4b  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00521d53  f30f59d0                  MULSS XMM2,XMM0
00521d57  f30f59d8                  MULSS XMM3,XMM0
00521d5b  f30f5ed1                  DIVSS XMM2,XMM1
00521d5f  f30f5ed9                  DIVSS XMM3,XMM1
00521d63  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
00521d6b  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
00521d73  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00521d7b  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
00521d83  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00521d8b  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00521d93  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
00521d99  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00521da1  83feff                    CMP ESI,-0x1
00521da4  7514                      JNZ 0x00521dba
00521da6  ff7720                    PUSH dword ptr [EDI + 0x20]
00521da9  8bcf                      MOV ECX,EDI
00521dab  6a03                      PUSH 0x3
00521dad  e85ea91800                CALL 0x006ac710
00521db2  84c0                      TEST AL,AL
00521db4  0f8472050000              JZ 0x0052232c
00521dba  807c240f00                CMP byte ptr [ESP + 0xf],0x0
00521dbf  0f8467050000              JZ 0x0052232c
00521dc5  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00521dcd  0f2f05d0a8ba00            COMISS XMM0,dword ptr [0x00baa8d0]
00521dd4  0f8652050000              JBE 0x0052232c
00521dda  6a00                      PUSH 0x0
00521ddc  68000a0001                PUSH 0x1000a00
00521de1  8bcf                      MOV ECX,EDI
00521de3  e84856efff                CALL 0x00417430
00521de8  84c0                      TEST AL,AL
00521dea  0f853c050000              JNZ 0x0052232c
00521df0  83feff                    CMP ESI,-0x1
00521df3  746b                      JZ 0x00521e60
00521df5  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00521df9  0f852d050000              JNZ 0x0052232c
00521dff  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00521e07  8d442424                  LEA EAX,[ESP + 0x24]
00521e0b  50                        PUSH EAX
00521e0c  8bcf                      MOV ECX,EDI
00521e0e  e8bd641b00                CALL 0x006d82d0
00521e13  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
00521e19  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00521e20  9f                        LAHF
00521e21  f6c444                    TEST AH,0x44
00521e24  7a17                      JP 0x00521e3d
00521e26  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
00521e2c  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00521e33  9f                        LAHF
00521e34  f6c444                    TEST AH,0x44
00521e37  0f8b5f020000              JNP 0x0052209c
00521e3d  8d542424                  LEA EDX,[ESP + 0x24]
00521e41  8d4c242c                  LEA ECX,[ESP + 0x2c]
00521e45  e826d31500                CALL 0x0067f170
00521e4a  8b08                      MOV ECX,dword ptr [EAX]
00521e4c  898f34030000              MOV dword ptr [EDI + 0x334],ECX
00521e52  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00521e55  898738030000              MOV dword ptr [EDI + 0x338],EAX
00521e5b  e932020000                JMP 0x00522092
00521e60  a17816c700                MOV EAX,[0x00c71678]
00521e65  8bcf                      MOV ECX,EDI
00521e67  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00521e6d  e8cec91900                CALL 0x006be840
00521e72  8bcf                      MOV ECX,EDI
00521e74  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00521e7c  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00521e82  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00521e8a  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00521e90  e8abc91900                CALL 0x006be840
00521e95  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
00521e9d  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00521ea3  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
00521eab  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00521eb1  e8aad01c00                CALL 0x006eef60
00521eb6  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
00521ebe  83ec0c                    SUB ESP,0xc
00521ec1  8bce                      MOV ECX,ESI
00521ec3  660f6ec0                  MOVD XMM0,EAX
00521ec7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00521ecb  c1e81f                    SHR EAX,0x1f
00521ece  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00521ed7  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
00521edf  8d442424                  LEA EAX,[ESP + 0x24]
00521ee3  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
00521eeb  c704240000a041            MOV dword ptr [ESP],0x41a00000
00521ef2  50                        PUSH EAX
00521ef3  660f5ac8                  CVTPD2PS XMM1,XMM0
00521ef7  8d442420                  LEA EAX,[ESP + 0x20]
00521efb  50                        PUSH EAX
00521efc  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00521f04  f30f590d5ca8ba00          MULSS XMM1,dword ptr [0x00baa85c]
00521f0c  0f28c1                    MOVAPS XMM0,XMM1
00521f0f  f30f594c2434              MULSS XMM1,dword ptr [ESP + 0x34]
00521f15  f30f5944242c              MULSS XMM0,dword ptr [ESP + 0x2c]
00521f1b  f30f584c2438              ADDSS XMM1,dword ptr [ESP + 0x38]
00521f21  f30f58442424              ADDSS XMM0,dword ptr [ESP + 0x24]
00521f27  f30f114c2430              MOVSS dword ptr [ESP + 0x30],XMM1
00521f2d  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00521f33  e818102f00                CALL 0x00812f50
00521f38  a17816c700                MOV EAX,[0x00c71678]
00521f3d  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00521f45  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
00521f4d  f30f10257ca8ba00          MOVSS XMM4,dword ptr [0x00baa87c]
00521f55  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00521f5b  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
00521f61  99                        CDQ
00521f62  f77e0c                    IDIV dword ptr [ESI + 0xc]
00521f65  660f6ed2                  MOVD XMM2,EDX
00521f69  0f5bd2                    CVTDQ2PS XMM2,XMM2
00521f6c  660f6ec8                  MOVD XMM1,EAX
00521f70  0f5bc9                    CVTDQ2PS XMM1,XMM1
00521f73  f30f59d0                  MULSS XMM2,XMM0
00521f77  f30f59c8                  MULSS XMM1,XMM0
00521f7b  f30f58d0                  ADDSS XMM2,XMM0
00521f7f  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
00521f87  f30f1154242c              MOVSS dword ptr [ESP + 0x2c],XMM2
00521f8d  f30f5c542410              SUBSS XMM2,dword ptr [ESP + 0x10]
00521f93  f30f114c2430              MOVSS dword ptr [ESP + 0x30],XMM1
00521f99  f30f5c4c2414              SUBSS XMM1,dword ptr [ESP + 0x14]
00521f9f  0f28c2                    MOVAPS XMM0,XMM2
00521fa2  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
00521fa8  0f54c3                    ANDPS XMM0,XMM3
00521fab  0f2fe0                    COMISS XMM4,XMM0
00521fae  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
00521fb4  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00521fba  770f                      JA 0x00521fcb
00521fbc  0f28c1                    MOVAPS XMM0,XMM1
00521fbf  0f54c3                    ANDPS XMM0,XMM3
00521fc2  0f2fe0                    COMISS XMM4,XMM0
00521fc5  0f86d1000000              JBE 0x0052209c
00521fcb  0f28c1                    MOVAPS XMM0,XMM1
00521fce  f30f59c1                  MULSS XMM0,XMM1
00521fd2  0f28ca                    MOVAPS XMM1,XMM2
00521fd5  f30f59ca                  MULSS XMM1,XMM2
00521fd9  f30f58c1                  ADDSS XMM0,XMM1
00521fdd  e86e3af1ff                CALL 0x00435a50
00521fe2  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
00521fea  0f2fc8                    COMISS XMM1,XMM0
00521fed  0f86a9000000              JBE 0x0052209c
00521ff3  6a00                      PUSH 0x0
00521ff5  6a00                      PUSH 0x0
00521ff7  6a00                      PUSH 0x0
00521ff9  6a00                      PUSH 0x0
00521ffb  6a00                      PUSH 0x0
00521ffd  8d442424                  LEA EAX,[ESP + 0x24]
00522001  8bce                      MOV ECX,ESI
00522003  50                        PUSH EAX
00522004  8d442444                  LEA EAX,[ESP + 0x44]
00522008  50                        PUSH EAX
00522009  e8e2ed2c00                CALL 0x007f0df0
0052200e  84c0                      TEST AL,AL
00522010  0f8486000000              JZ 0x0052209c
00522016  f30f104c2424              MOVSS XMM1,dword ptr [ESP + 0x24]
0052201c  f30f10542420              MOVSS XMM2,dword ptr [ESP + 0x20]
00522022  0f28c1                    MOVAPS XMM0,XMM1
00522025  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0052202c  0f2fd0                    COMISS XMM2,XMM0
0052202f  0f57c0                    XORPS XMM0,XMM0
00522032  7635                      JBE 0x00522069
00522034  0f2f442418                COMISS XMM0,dword ptr [ESP + 0x18]
00522039  c7873803000000000000      MOV dword ptr [EDI + 0x338],0x0
00522043  7612                      JBE 0x00522057
00522045  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0052204d  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00522055  eb3b                      JMP 0x00522092
00522057  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0052205f  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00522067  eb29                      JMP 0x00522092
00522069  0f2fc1                    COMISS XMM0,XMM1
0052206c  c7873403000000000000      MOV dword ptr [EDI + 0x334],0x0
00522076  760a                      JBE 0x00522082
00522078  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00522080  eb08                      JMP 0x0052208a
00522082  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0052208a  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00522092  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0052209c  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005220a0  0f8586020000              JNZ 0x0052232c
005220a6  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
005220ad  0f8579020000              JNZ 0x0052232c
005220b3  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
005220bb  f30f5905dca6ba00          MULSS XMM0,dword ptr [0x00baa6dc]
005220c3  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005220cb  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005220d3  f30f5905dca6ba00          MULSS XMM0,dword ptr [0x00baa6dc]
005220db  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005220e3  e944020000                JMP 0x0052232c
005220e8  83f808                    CMP EAX,0x8
005220eb  0f8505020000              JNZ 0x005222f6
005220f1  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
005220f8  0f858c010000              JNZ 0x0052228a
005220fe  80bf8c01000000            CMP byte ptr [EDI + 0x18c],0x0
00522105  0f857f010000              JNZ 0x0052228a
0052210b  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
00522113  f30f591da4a3ba00          MULSS XMM3,dword ptr [0x00baa3a4]
0052211b  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
00522122  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
0052212a  9f                        LAHF
0052212b  f6c444                    TEST AH,0x44
0052212e  7b43                      JNP 0x00522173
00522130  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00522138  0f28c2                    MOVAPS XMM0,XMM2
0052213b  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
00522143  f30f5ec3                  DIVSS XMM0,XMM3
00522147  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0052214f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00522157  f30f599738030000          MULSS XMM2,dword ptr [EDI + 0x338]
0052215f  f30f5ed3                  DIVSS XMM2,XMM3
00522163  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0052216b  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00522173  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00522179  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
0052217f  99                        CDQ
00522180  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00522188  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0052218e  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
00522196  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0052219d  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
005221a5  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
005221a8  f7f9                      IDIV ECX
005221aa  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
005221b2  660f6eea                  MOVD XMM5,EDX
005221b6  0f5bed                    CVTDQ2PS XMM5,XMM5
005221b9  660f6ee0                  MOVD XMM4,EAX
005221bd  0f5be4                    CVTDQ2PS XMM4,XMM4
005221c0  f30f59e8                  MULSS XMM5,XMM0
005221c4  f30f59e0                  MULSS XMM4,XMM0
005221c8  f30f58e8                  ADDSS XMM5,XMM0
005221cc  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005221d4  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
005221db  0f2fd0                    COMISS XMM2,XMM0
005221de  f30f582500aaba00          ADDSS XMM4,dword ptr [0x00baaa00]
005221e6  7651                      JBE 0x00522239
005221e8  0f2e1d54a4ba00            UCOMISS XMM3,dword ptr [0x00baa454]
005221ef  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005221f7  f30f59c1                  MULSS XMM0,XMM1
005221fb  f30f59e1                  MULSS XMM4,XMM1
005221ff  9f                        LAHF
00522200  f30f58c4                  ADDSS XMM0,XMM4
00522204  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0052220c  f6c444                    TEST AH,0x44
0052220f  7b13                      JNP 0x00522224
00522211  0f28c3                    MOVAPS XMM0,XMM3
00522214  f30f59d9                  MULSS XMM3,XMM1
00522218  f30f58c1                  ADDSS XMM0,XMM1
0052221c  f30f5cc3                  SUBSS XMM0,XMM3
00522220  f30f5ec8                  DIVSS XMM1,XMM0
00522224  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
0052222c  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00522234  e9f3000000                JMP 0x0052232c
00522239  0f2e1d54a4ba00            UCOMISS XMM3,dword ptr [0x00baa454]
00522240  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00522248  f30f59c1                  MULSS XMM0,XMM1
0052224c  f30f59e9                  MULSS XMM5,XMM1
00522250  9f                        LAHF
00522251  f30f58c5                  ADDSS XMM0,XMM5
00522255  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0052225d  f6c444                    TEST AH,0x44
00522260  7b13                      JNP 0x00522275
00522262  0f28c3                    MOVAPS XMM0,XMM3
00522265  f30f59d9                  MULSS XMM3,XMM1
00522269  f30f58c1                  ADDSS XMM0,XMM1
0052226d  f30f5cc3                  SUBSS XMM0,XMM3
00522271  f30f5ec8                  DIVSS XMM1,XMM0
00522275  f30f598f60030000          MULSS XMM1,dword ptr [EDI + 0x360]
0052227d  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00522285  e9a2000000                JMP 0x0052232c
0052228a  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00522292  f30f118718040000          MOVSS dword ptr [EDI + 0x418],XMM0
0052229a  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005222a2  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
005222aa  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005222b2  f30f118720040000          MOVSS dword ptr [EDI + 0x420],XMM0
005222ba  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005222c2  f30f118724040000          MOVSS dword ptr [EDI + 0x424],XMM0
005222ca  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005222d4  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005222dc  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005222e4  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005222ec  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005222f4  eb36                      JMP 0x0052232c
005222f6  83f810                    CMP EAX,0x10
005222f9  7531                      JNZ 0x0052232c
005222fb  6a00                      PUSH 0x0
005222fd  685007b600                PUSH 0xb60750
00522302  8d4f48                    LEA ECX,[EDI + 0x48]
00522305  e87680eeff                CALL 0x0040a380
0052230a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00522312  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0052231a  c7878803000000000000      MOV dword ptr [EDI + 0x388],0x0
00522324  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052232c  8bcf                      MOV ECX,EDI
0052232e  e8ed481b00                CALL 0x006d6c20
00522333  85c0                      TEST EAX,EAX
00522335  7f31                      JG 0x00522368
00522337  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052233d  8b9100830100              MOV EDX,dword ptr [ECX + 0x18300]
00522343  803a00                    CMP byte ptr [EDX],0x0
00522346  7420                      JZ 0x00522368
00522348  8b81f8640200              MOV EAX,dword ptr [ECX + 0x264f8]
0052234e  2b82f0110000              SUB EAX,dword ptr [EDX + 0x11f0]
00522354  83f850                    CMP EAX,0x50
00522357  7e0f                      JLE 0x00522368
00522359  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0052235d  7409                      JZ 0x00522368
0052235f  80ba2972000000            CMP byte ptr [EDX + 0x7229],0x0
00522366  743a                      JZ 0x005223a2
00522368  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052236e  ffb10c830100              PUSH dword ptr [ECX + 0x1830c]
00522374  ffb104830100              PUSH dword ptr [ECX + 0x18304]
0052237a  e841e82100                CALL 0x00740bc0
0052237f  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
00522382  d1e8                      SHR EAX,0x1
00522384  a801                      TEST AL,0x1
00522386  751a                      JNZ 0x005223a2
00522388  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0052238e  6897000000                PUSH 0x97
00522393  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
00522399  e8129cf2ff                CALL 0x0044bfb0
0052239e  84c0                      TEST AL,AL
005223a0  740a                      JZ 0x005223ac
005223a2  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
005223ac  8a8773010000              MOV AL,byte ptr [EDI + 0x173]
005223b2  84c0                      TEST AL,AL
005223b4  746c                      JZ 0x00522422
005223b6  83bf2c03000000            CMP dword ptr [EDI + 0x32c],0x0
005223bd  8db72c030000              LEA ESI,[EDI + 0x32c]
005223c3  7c2e                      JL 0x005223f3
005223c5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005223cb  6aff                      PUSH -0x1
005223cd  ffb104830100              PUSH dword ptr [ECX + 0x18304]
005223d3  e8e8e72100                CALL 0x00740bc0
005223d8  56                        PUSH ESI
005223d9  8d4c2430                  LEA ECX,[ESP + 0x30]
005223dd  51                        PUSH ECX
005223de  8d8880000000              LEA ECX,[EAX + 0x80]
005223e4  e8d721fcff                CALL 0x004e45c0
005223e9  8a8773010000              MOV AL,byte ptr [EDI + 0x173]
005223ef  84c0                      TEST AL,AL
005223f1  742f                      JZ 0x00522422
005223f3  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
005223f7  7529                      JNZ 0x00522422
005223f9  e862cb1c00                CALL 0x006eef60
005223fe  6a00                      PUSH 0x0
00522400  50                        PUSH EAX
00522401  6a02                      PUSH 0x2
00522403  57                        PUSH EDI
00522404  6840b6c700                PUSH 0xc7b640
00522409  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0052240f  51                        PUSH ECX
00522410  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00522416  6a0f                      PUSH 0xf
00522418  68e8030000                PUSH 0x3e8
0052241d  e8eebf1d00                CALL 0x006fe410
00522422  5f                        POP EDI
00522423  5e                        POP ESI
00522424  8be5                      MOV ESP,EBP
00522426  5d                        POP EBP
00522427  c3                        RET
