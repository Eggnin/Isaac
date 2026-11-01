; J460 NPC AI 0x00502980 AI_00502980
; types=880
; identities=880.0.0
; entry=00502980
00502980  55                        PUSH EBP
00502981  8bec                      MOV EBP,ESP
00502983  83ec5c                    SUB ESP,0x5c
00502986  53                        PUSH EBX
00502987  56                        PUSH ESI
00502988  57                        PUSH EDI
00502989  8bf9                      MOV EDI,ECX
0050298b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00502993  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00502999  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005029a1  2500010020                AND EAX,0x20000100
005029a6  83c800                    OR EAX,0x0
005029a9  b804000000                MOV EAX,0x4
005029ae  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005029b6  7505                      JNZ 0x005029bd
005029b8  b802000000                MOV EAX,0x2
005029bd  898788010000              MOV dword ptr [EDI + 0x188],EAX
005029c3  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005029c9  83e800                    SUB EAX,0x0
005029cc  0f8442070000              JZ 0x00503114
005029d2  83e803                    SUB EAX,0x3
005029d5  0f84cc020000              JZ 0x00502ca7
005029db  83e801                    SUB EAX,0x1
005029de  0f85a8070000              JNZ 0x0050318c
005029e4  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
005029ec  8db7340c0000              LEA ESI,[EDI + 0xc34]
005029f2  f30f591db8a0ba00          MULSS XMM3,dword ptr [0x00baa0b8]
005029fa  f30f100d04a8ba00          MOVSS XMM1,dword ptr [0x00baa804]
00502a02  f30f581e                  ADDSS XMM3,dword ptr [ESI]
00502a06  0f28d3                    MOVAPS XMM2,XMM3
00502a09  f30f111e                  MOVSS dword ptr [ESI],XMM3
00502a0d  f30f5c15d0a2ba00          SUBSS XMM2,dword ptr [0x00baa2d0]
00502a15  0f28c2                    MOVAPS XMM0,XMM2
00502a18  f30f59c1                  MULSS XMM0,XMM1
00502a1c  f30f59c2                  MULSS XMM0,XMM2
00502a20  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
00502a28  f30f5cc8                  SUBSS XMM1,XMM0
00502a2c  f30f118f50030000          MOVSS dword ptr [EDI + 0x350],XMM1
00502a34  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00502a3c  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00502a43  9f                        LAHF
00502a44  f6c444                    TEST AH,0x44
00502a47  7a19                      JP 0x00502a62
00502a49  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
00502a51  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
00502a58  9f                        LAHF
00502a59  f6c444                    TEST AH,0x44
00502a5c  0f8bcf010000              JNP 0x00502c31
00502a62  f30f591d08a7ba00          MULSS XMM3,dword ptr [0x00baa708]
00502a6a  0f28c3                    MOVAPS XMM0,XMM3
00502a6d  e8ceaaf1ff                CALL 0x0041d540
00502a72  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00502a7a  f30f1097b40b0000          MOVSS XMM2,dword ptr [EDI + 0xbb4]
00502a82  f30f5cc8                  SUBSS XMM1,XMM0
00502a86  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
00502a8e  f30f5cc2                  SUBSS XMM0,XMM2
00502a92  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
00502a97  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00502a9f  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
00502aa4  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
00502aac  f30f5c8fb00b0000          SUBSS XMM1,dword ptr [EDI + 0xbb0]
00502ab4  e8a772f9ff                CALL 0x00499d60
00502ab9  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00502ac1  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
00502ac9  f30f5c8fb80b0000          SUBSS XMM1,dword ptr [EDI + 0xbb8]
00502ad1  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
00502ad6  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
00502ade  f30f5c87bc0b0000          SUBSS XMM0,dword ptr [EDI + 0xbbc]
00502ae6  f30f59c9                  MULSS XMM1,XMM1
00502aea  f30f59c0                  MULSS XMM0,XMM0
00502aee  f30f58c1                  ADDSS XMM0,XMM1
00502af2  e8592ff3ff                CALL 0x00435a50
00502af7  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
00502aff  f30f5c9734030000          SUBSS XMM2,dword ptr [EDI + 0x334]
00502b07  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
00502b0c  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
00502b14  f30f5c8738030000          SUBSS XMM0,dword ptr [EDI + 0x338]
00502b1c  f30f59d2                  MULSS XMM2,XMM2
00502b20  f30f59c0                  MULSS XMM0,XMM0
00502b24  f30f58c2                  ADDSS XMM0,XMM2
00502b28  e8232ff3ff                CALL 0x00435a50
00502b2d  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00502b35  f30f5c8fb00b0000          SUBSS XMM1,dword ptr [EDI + 0xbb0]
00502b3d  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
00502b42  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00502b4a  f30f5c45e4                SUBSS XMM0,dword ptr [EBP + -0x1c]
00502b4f  e80c72f9ff                CALL 0x00499d60
00502b54  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00502b5c  0f28c8                    MOVAPS XMM1,XMM0
00502b5f  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
00502b64  e837fc1700                CALL 0x006827a0
00502b69  f30f1055f8                MOVSS XMM2,dword ptr [EBP + -0x8]
00502b6e  f30f5c55f0                SUBSS XMM2,dword ptr [EBP + -0x10]
00502b73  f30f5945e8                MULSS XMM0,dword ptr [EBP + -0x18]
00502b78  f30f5845ec                ADDSS XMM0,dword ptr [EBP + -0x14]
00502b7d  f30f5955e8                MULSS XMM2,dword ptr [EBP + -0x18]
00502b82  f30f5855f0                ADDSS XMM2,dword ptr [EBP + -0x10]
00502b87  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00502b8f  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
00502b94  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00502b99  e8a2a9f1ff                CALL 0x0041d540
00502b9e  f30f5945f8                MULSS XMM0,dword ptr [EBP + -0x8]
00502ba3  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
00502bab  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00502bb3  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00502bb8  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
00502bbd  e85ea9f1ff                CALL 0x0041d520
00502bc2  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00502bc9  f30f5945f8                MULSS XMM0,dword ptr [EBP + -0x8]
00502bce  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
00502bd3  f30f5887b40b0000          ADDSS XMM0,dword ptr [EDI + 0xbb4]
00502bdb  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00502be3  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00502beb  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00502bf3  743c                      JZ 0x00502c31
00502bf5  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00502bfd  8d45e4                    LEA EAX,[EBP + -0x1c]
00502c00  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00502c08  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00502c10  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00502c18  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
00502c20  0f2f06                    COMISS XMM0,dword ptr [ESI]
00502c23  c745e4cdcc4c3f            MOV dword ptr [EBP + -0x1c],0x3f4ccccd
00502c2a  0f46c6                    CMOVBE EAX,ESI
00502c2d  8b00                      MOV EAX,dword ptr [EAX]
00502c2f  8906                      MOV dword ptr [ESI],EAX
00502c31  f30f100e                  MOVSS XMM1,dword ptr [ESI]
00502c35  0f2f0da4a3ba00            COMISS XMM1,dword ptr [0x00baa3a4]
00502c3c  0f28c1                    MOVAPS XMM0,XMM1
00502c3f  764a                      JBE 0x00502c8b
00502c41  8b5f7c                    MOV EBX,dword ptr [EDI + 0x7c]
00502c44  85db                      TEST EBX,EBX
00502c46  7405                      JZ 0x00502c4d
00502c48  8b4330                    MOV EAX,dword ptr [EBX + 0x30]
00502c4b  eb02                      JMP 0x00502c4f
00502c4d  33c0                      XOR EAX,EAX
00502c4f  83c0f6                    ADD EAX,-0xa
00502c52  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
00502c57  8d4f48                    LEA ECX,[EDI + 0x48]
00502c5a  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
00502c5d  e81e7bf0ff                CALL 0x0040a780
00502c62  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
00502c65  3bc1                      CMP EAX,ECX
00502c67  7d1d                      JGE 0x00502c86
00502c69  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00502c6d  85db                      TEST EBX,EBX
00502c6f  741a                      JZ 0x00502c8b
00502c71  660f6ec9                  MOVD XMM1,ECX
00502c75  8d4f78                    LEA ECX,[EDI + 0x78]
00502c78  0f5bc9                    CVTDQ2PS XMM1,XMM1
00502c7b  e88061f0ff                CALL 0x00408e00
00502c80  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00502c84  eb05                      JMP 0x00502c8b
00502c86  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
00502c8b  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
00502c92  0f86f4040000              JBE 0x0050318c
00502c98  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
00502ca2  e9db040000                JMP 0x00503182
00502ca7  e8b4c21e00                CALL 0x006eef60
00502cac  0f57c0                    XORPS XMM0,XMM0
00502caf  f20f2ac0                  CVTSI2SD XMM0,EAX
00502cb3  c1e81f                    SHR EAX,0x1f
00502cb6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00502cbf  660f5ac0                  CVTPD2PS XMM0,XMM0
00502cc3  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00502ccb  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00502cd3  f30f5805eca9ba00          ADDSS XMM0,dword ptr [0x00baa9ec]
00502cdb  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00502ce0  e87bc21e00                CALL 0x006eef60
00502ce5  0f57c0                    XORPS XMM0,XMM0
00502ce8  f20f2ac0                  CVTSI2SD XMM0,EAX
00502cec  c1e81f                    SHR EAX,0x1f
00502cef  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00502cf8  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00502cfe  25000a0001                AND EAX,0x1000a00
00502d03  83c800                    OR EAX,0x0
00502d06  660f5ac0                  CVTPD2PS XMM0,XMM0
00502d0a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00502d12  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00502d1a  f30f5805eca9ba00          ADDSS XMM0,dword ptr [0x00baa9ec]
00502d22  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00502d27  7421                      JZ 0x00502d4a
00502d29  51                        PUSH ECX
00502d2a  8d45d4                    LEA EAX,[EBP + -0x2c]
00502d2d  c7042400000000            MOV dword ptr [ESP],0x0
00502d34  50                        PUSH EAX
00502d35  8bcf                      MOV ECX,EDI
00502d37  e804bf1b00                CALL 0x006bec40
00502d3c  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00502d40  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
00502d45  e986000000                JMP 0x00502dd0
00502d4a  8bcf                      MOV ECX,EDI
00502d4c  e8efba1b00                CALL 0x006be840
00502d51  8bf0                      MOV ESI,EAX
00502d53  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
00502d5b  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
00502d63  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
00502d68  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00502d70  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
00502d78  f30f114dec                MOVSS dword ptr [EBP + -0x14],XMM1
00502d7d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00502d85  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00502d8d  f30f59c0                  MULSS XMM0,XMM0
00502d91  f30f59c9                  MULSS XMM1,XMM1
00502d95  f30f58c1                  ADDSS XMM0,XMM1
00502d99  e8b22cf3ff                CALL 0x00435a50
00502d9e  f30f1055ec                MOVSS XMM2,dword ptr [EBP + -0x14]
00502da3  f30f105df0                MOVSS XMM3,dword ptr [EBP + -0x10]
00502da8  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
00502db0  f30f591d20a1ba00          MULSS XMM3,dword ptr [0x00baa120]
00502db8  f30f59d0                  MULSS XMM2,XMM0
00502dbc  f30f59d8                  MULSS XMM3,XMM0
00502dc0  f30f58963c030000          ADDSS XMM2,dword ptr [ESI + 0x33c]
00502dc8  f30f589e40030000          ADDSS XMM3,dword ptr [ESI + 0x340]
00502dd0  0f28cb                    MOVAPS XMM1,XMM3
00502dd3  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
00502dd8  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00502de0  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00502de8  f30f115df0                MOVSS dword ptr [EBP + -0x10],XMM3
00502ded  0f28c1                    MOVAPS XMM0,XMM1
00502df0  f30f114df8                MOVSS dword ptr [EBP + -0x8],XMM1
00502df5  f30f59c1                  MULSS XMM0,XMM1
00502df9  0f28ca                    MOVAPS XMM1,XMM2
00502dfc  f30f59ca                  MULSS XMM1,XMM2
00502e00  f30f1155f4                MOVSS dword ptr [EBP + -0xc],XMM2
00502e05  f30f58c1                  ADDSS XMM0,XMM1
00502e09  e8422cf3ff                CALL 0x00435a50
00502e0e  f30f104df4                MOVSS XMM1,dword ptr [EBP + -0xc]
00502e13  f30f5ec8                  DIVSS XMM1,XMM0
00502e17  f30f1055e4                MOVSS XMM2,dword ptr [EBP + -0x1c]
00502e1c  f30f114df4                MOVSS dword ptr [EBP + -0xc],XMM1
00502e21  f30f104df8                MOVSS XMM1,dword ptr [EBP + -0x8]
00502e26  f30f5ec8                  DIVSS XMM1,XMM0
00502e2a  f30f114df8                MOVSS dword ptr [EBP + -0x8],XMM1
00502e2f  0f28ca                    MOVAPS XMM1,XMM2
00502e32  f30f590de0a4ba00          MULSS XMM1,dword ptr [0x00baa4e0]
00502e3a  0f2fc8                    COMISS XMM1,XMM0
00502e3d  763e                      JBE 0x00502e7d
00502e3f  f30f105de8                MOVSS XMM3,dword ptr [EBP + -0x18]
00502e44  f30f59db                  MULSS XMM3,XMM3
00502e48  f30f59d2                  MULSS XMM2,XMM2
00502e4c  f30f58da                  ADDSS XMM3,XMM2
00502e50  0f28c3                    MOVAPS XMM0,XMM3
00502e53  e8f82bf3ff                CALL 0x00435a50
00502e58  0f28d0                    MOVAPS XMM2,XMM0
00502e5b  0f28ea                    MOVAPS XMM5,XMM2
00502e5e  f30f5955f4                MULSS XMM2,dword ptr [EBP + -0xc]
00502e63  f30f596df8                MULSS XMM5,dword ptr [EBP + -0x8]
00502e68  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
00502e70  f30f58af40030000          ADDSS XMM5,dword ptr [EDI + 0x340]
00502e78  e990000000                JMP 0x00502f0d
00502e7d  0f57c0                    XORPS XMM0,XMM0
00502e80  f30f2a87c00b0000          CVTSI2SS XMM0,dword ptr [EDI + 0xbc0]
00502e88  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00502e90  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00502e98  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
00502e9d  e89ea6f1ff                CALL 0x0041d540
00502ea2  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
00502ea7  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
00502eac  e86fa6f1ff                CALL 0x0041d520
00502eb1  f30f1055dc                MOVSS XMM2,dword ptr [EBP + -0x24]
00502eb6  0f28c8                    MOVAPS XMM1,XMM0
00502eb9  f30f107df8                MOVSS XMM7,dword ptr [EBP + -0x8]
00502ebe  0f28ea                    MOVAPS XMM5,XMM2
00502ec1  f30f1065f4                MOVSS XMM4,dword ptr [EBP + -0xc]
00502ec6  f30f59cc                  MULSS XMM1,XMM4
00502eca  f30f59ef                  MULSS XMM5,XMM7
00502ece  f30f59d4                  MULSS XMM2,XMM4
00502ed2  f30f5965e4                MULSS XMM4,dword ptr [EBP + -0x1c]
00502ed7  f30f58e9                  ADDSS XMM5,XMM1
00502edb  f30f59c7                  MULSS XMM0,XMM7
00502edf  0f28cf                    MOVAPS XMM1,XMM7
00502ee2  f30f594de4                MULSS XMM1,dword ptr [EBP + -0x1c]
00502ee7  f30f58a73c030000          ADDSS XMM4,dword ptr [EDI + 0x33c]
00502eef  f30f596de8                MULSS XMM5,dword ptr [EBP + -0x18]
00502ef4  f30f5cd0                  SUBSS XMM2,XMM0
00502ef8  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00502f00  f30f5955e8                MULSS XMM2,dword ptr [EBP + -0x18]
00502f05  f30f58e9                  ADDSS XMM5,XMM1
00502f09  f30f58d4                  ADDSS XMM2,XMM4
00502f0d  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
00502f15  f30f11af38030000          MOVSS dword ptr [EDI + 0x338],XMM5
00502f1d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00502f25  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00502f2a  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
00502f32  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00502f3a  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
00502f3f  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
00502f47  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00502f4f  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
00502f54  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00502f5c  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
00502f61  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00502f69  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00502f6e  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00502f76  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00502f7b  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
00502f83  e8b8a5f1ff                CALL 0x0041d540
00502f88  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
00502f8d  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
00502f95  e886a5f1ff                CALL 0x0041d520
00502f9a  f30f105ddc                MOVSS XMM3,dword ptr [EBP + -0x24]
00502f9f  f30f1065e4                MOVSS XMM4,dword ptr [EBP + -0x1c]
00502fa4  0f28eb                    MOVAPS XMM5,XMM3
00502fa7  f30f596de0                MULSS XMM5,dword ptr [EBP + -0x20]
00502fac  0f28cc                    MOVAPS XMM1,XMM4
00502faf  f30f5965e0                MULSS XMM4,dword ptr [EBP + -0x20]
00502fb4  f30f1055d8                MOVSS XMM2,dword ptr [EBP + -0x28]
00502fb9  f30f5c55f8                SUBSS XMM2,dword ptr [EBP + -0x8]
00502fbe  f30f59c8                  MULSS XMM1,XMM0
00502fc2  f30f59d8                  MULSS XMM3,XMM0
00502fc6  f30f1045f0                MOVSS XMM0,dword ptr [EBP + -0x10]
00502fcb  f30f5ce9                  SUBSS XMM5,XMM1
00502fcf  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
00502fd4  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00502fdc  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00502fe4  f30f591580a3ba00          MULSS XMM2,dword ptr [0x00baa380]
00502fec  f30f58e3                  ADDSS XMM4,XMM3
00502ff0  f30f105df4                MOVSS XMM3,dword ptr [EBP + -0xc]
00502ff5  f30f5c5de8                SUBSS XMM3,dword ptr [EBP + -0x18]
00502ffa  f30f5855f8                ADDSS XMM2,dword ptr [EBP + -0x8]
00502fff  f30f59c4                  MULSS XMM0,XMM4
00503003  f30f59cd                  MULSS XMM1,XMM5
00503007  f30f591d80a3ba00          MULSS XMM3,dword ptr [0x00baa380]
0050300f  f30f58c1                  ADDSS XMM0,XMM1
00503013  f30f585de8                ADDSS XMM3,dword ptr [EBP + -0x18]
00503018  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0050301f  760a                      JBE 0x0050302b
00503021  f30f5cd4                  SUBSS XMM2,XMM4
00503025  f30f5cdd                  SUBSS XMM3,XMM5
00503029  eb08                      JMP 0x00503033
0050302b  f30f58d4                  ADDSS XMM2,XMM4
0050302f  f30f58dd                  ADDSS XMM3,XMM5
00503033  f30f119fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM3
0050303b  f30f1197b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM2
00503043  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00503046  85c0                      TEST EAX,EAX
00503048  740a                      JZ 0x00503054
0050304a  83781410                  CMP dword ptr [EAX + 0x14],0x10
0050304e  7209                      JC 0x00503059
00503050  8b00                      MOV EAX,dword ptr [EAX]
00503052  eb05                      JMP 0x00503059
00503054  b8eca4b100                MOV EAX,0xb1a4ec
00503059  6a05                      PUSH 0x5
0050305b  68b4d3b100                PUSH 0xb1d3b4
00503060  50                        PUSH EAX
00503061  ff153489b100              CALL dword ptr [0x00b18934]
00503067  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0050306f  83c40c                    ADD ESP,0xc
00503072  85c0                      TEST EAX,EAX
00503074  b95c0cb600                MOV ECX,0xb60c5c
00503079  b8880cb600                MOV EAX,0xb60c88
0050307e  0f9445ff                  SETZ byte ptr [EBP + -0x1]
00503082  0f2f8734030000            COMISS XMM0,dword ptr [EDI + 0x334]
00503089  6a01                      PUSH 0x1
0050308b  0f46c1                    CMOVBE EAX,ECX
0050308e  8d4f48                    LEA ECX,[EDI + 0x48]
00503091  50                        PUSH EAX
00503092  e83975f0ff                CALL 0x0040a5d0
00503097  84c0                      TEST AL,AL
00503099  740f                      JZ 0x005030aa
0050309b  8d4f78                    LEA ECX,[EDI + 0x78]
0050309e  e80d71f0ff                CALL 0x0040a1b0
005030a3  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
005030aa  6a01                      PUSH 0x1
005030ac  68680cb600                PUSH 0xb60c68
005030b1  8d4f48                    LEA ECX,[EDI + 0x48]
005030b4  e8377af0ff                CALL 0x0040aaf0
005030b9  84c0                      TEST AL,AL
005030bb  7417                      JZ 0x005030d4
005030bd  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
005030c4  740e                      JZ 0x005030d4
005030c6  8d8f98000000              LEA ECX,[EDI + 0x98]
005030cc  0f57c9                    XORPS XMM1,XMM1
005030cf  e82c5df0ff                CALL 0x00408e00
005030d4  807dff00                  CMP byte ptr [EBP + -0x1],0x0
005030d8  7416                      JZ 0x005030f0
005030da  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005030de  7410                      JZ 0x005030f0
005030e0  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
005030e8  8d4f78                    LEA ECX,[EDI + 0x78]
005030eb  e8105df0ff                CALL 0x00408e00
005030f0  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
005030f6  f7d8                      NEG EAX
005030f8  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00503102  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00503108  c787340c000000000000      MOV dword ptr [EDI + 0xc34],0x0
00503112  eb78                      JMP 0x0050318c
00503114  0f280d00bbba00            MOVAPS XMM1,xmmword ptr [0x00babb00]
0050311b  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00503121  8d45a8                    LEA EAX,[EBP + -0x58]
00503124  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
0050312b  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00503132  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00503139  3bc8                      CMP ECX,EAX
0050313b  742f                      JZ 0x0050316c
0050313d  c7016666663f              MOV dword ptr [ECX],0x3f666666
00503143  c741046666663f            MOV dword ptr [ECX + 0x4],0x3f666666
0050314a  c741086666663f            MOV dword ptr [ECX + 0x8],0x3f666666
00503151  c7410c0000803f            MOV dword ptr [ECX + 0xc],0x3f800000
00503158  f30f7e45c8                MOVQ XMM0,qword ptr [EBP + -0x38]
0050315d  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
00503160  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00503165  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
00503169  894128                    MOV dword ptr [ECX + 0x28],EAX
0050316c  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
00503172  83e001                    AND EAX,0x1
00503175  8d0445ffffffff            LEA EAX,[EAX*0x2 + 0xffffffff]
0050317c  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00503182  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0050318c  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
00503192  85c0                      TEST EAX,EAX
00503194  7e07                      JLE 0x0050319d
00503196  48                        DEC EAX
00503197  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
0050319d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005031a1  0f8449010000              JZ 0x005032f0
005031a7  689c0cb600                PUSH 0xb60c9c
005031ac  8d4f78                    LEA ECX,[EDI + 0x78]
005031af  e82c7bf0ff                CALL 0x0040ace0
005031b4  8bd8                      MOV EBX,EAX
005031b6  85db                      TEST EBX,EBX
005031b8  0f8432010000              JZ 0x005032f0
005031be  6a01                      PUSH 0x1
005031c0  8d4f48                    LEA ECX,[EDI + 0x48]
005031c3  e85880f0ff                CALL 0x0040b220
005031c8  8b0b                      MOV ECX,dword ptr [EBX]
005031ca  6a01                      PUSH 0x1
005031cc  894840                    MOV dword ptr [EAX + 0x40],ECX
005031cf  8b4b04                    MOV ECX,dword ptr [EBX + 0x4]
005031d2  894844                    MOV dword ptr [EAX + 0x44],ECX
005031d5  8d4f48                    LEA ECX,[EDI + 0x48]
005031d8  e84380f0ff                CALL 0x0040b220
005031dd  8b5310                    MOV EDX,dword ptr [EBX + 0x10]
005031e0  8d4f48                    LEA ECX,[EDI + 0x48]
005031e3  6a01                      PUSH 0x1
005031e5  895034                    MOV dword ptr [EAX + 0x34],EDX
005031e8  8b5314                    MOV EDX,dword ptr [EBX + 0x14]
005031eb  895038                    MOV dword ptr [EAX + 0x38],EDX
005031ee  f30f104344                MOVSS XMM0,dword ptr [EBX + 0x44]
005031f3  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
005031f8  e82380f0ff                CALL 0x0040b220
005031fd  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
00503202  8bcf                      MOV ECX,EDI
00503204  f30f11403c                MOVSS dword ptr [EAX + 0x3c],XMM0
00503209  e832b61b00                CALL 0x006be840
0050320e  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00503216  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0050321e  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00503226  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0050322e  0f28c1                    MOVAPS XMM0,XMM1
00503231  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00503236  f30f59c1                  MULSS XMM0,XMM1
0050323a  0f28ca                    MOVAPS XMM1,XMM2
0050323d  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
00503242  f30f59ca                  MULSS XMM1,XMM2
00503246  f30f58c1                  ADDSS XMM0,XMM1
0050324a  e80128f3ff                CALL 0x00435a50
0050324f  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00503257  0f57c9                    XORPS XMM1,XMM1
0050325a  0f2fc1                    COMISS XMM0,XMM1
0050325d  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
00503262  7619                      JBE 0x0050327d
00503264  0f28cb                    MOVAPS XMM1,XMM3
00503267  f30f5ec8                  DIVSS XMM1,XMM0
0050326b  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
00503270  f30f59d1                  MULSS XMM2,XMM1
00503274  f30f59c1                  MULSS XMM0,XMM1
00503278  0f57c9                    XORPS XMM1,XMM1
0050327b  eb05                      JMP 0x00503282
0050327d  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
00503282  0f2f05fca3ba00            COMISS XMM0,dword ptr [0x00baa3fc]
00503289  721e                      JC 0x005032a9
0050328b  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
00503292  745c                      JZ 0x005032f0
00503294  0f28cb                    MOVAPS XMM1,XMM3
00503297  8d8f98000000              LEA ECX,[EDI + 0x98]
0050329d  e85e5bf0ff                CALL 0x00408e00
005032a2  5f                        POP EDI
005032a3  5e                        POP ESI
005032a4  5b                        POP EBX
005032a5  8be5                      MOV ESP,EBP
005032a7  5d                        POP EBP
005032a8  c3                        RET
005032a9  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
005032b0  743e                      JZ 0x005032f0
005032b2  0f2fc1                    COMISS XMM0,XMM1
005032b5  7226                      JC 0x005032dd
005032b7  33c9                      XOR ECX,ECX
005032b9  b802000000                MOV EAX,0x2
005032be  0f2fca                    COMISS XMM1,XMM2
005032c1  0f47c1                    CMOVA EAX,ECX
005032c4  8d8f98000000              LEA ECX,[EDI + 0x98]
005032ca  660f6ec8                  MOVD XMM1,EAX
005032ce  0f5bc9                    CVTDQ2PS XMM1,XMM1
005032d1  e82a5bf0ff                CALL 0x00408e00
005032d6  5f                        POP EDI
005032d7  5e                        POP ESI
005032d8  5b                        POP EBX
005032d9  8be5                      MOV ESP,EBP
005032db  5d                        POP EBP
005032dc  c3                        RET
005032dd  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
005032e5  8d8f98000000              LEA ECX,[EDI + 0x98]
005032eb  e8105bf0ff                CALL 0x00408e00
005032f0  5f                        POP EDI
005032f1  5e                        POP ESI
005032f2  5b                        POP EBX
005032f3  8be5                      MOV ESP,EBP
005032f5  5d                        POP EBP
005032f6  c3                        RET
