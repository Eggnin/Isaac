; J460 NPC AI 0x0049fa10 AI_0049fa10
; types=910
; identities=910.0.0,910.1.0,910.2.0
; entry=0049fa10
0049fa10  55                        PUSH EBP
0049fa11  8bec                      MOV EBP,ESP
0049fa13  83e4f8                    AND ESP,0xfffffff8
0049fa16  81ec70010000              SUB ESP,0x170
0049fa1c  a1b493bf00                MOV EAX,[0x00bf93b4]
0049fa21  33c4                      XOR EAX,ESP
0049fa23  8984246c010000            MOV dword ptr [ESP + 0x16c],EAX
0049fa2a  f30f1005a4a7ba00          MOVSS XMM0,dword ptr [0x00baa7a4]
0049fa32  0f57ed                    XORPS XMM5,XMM5
0049fa35  56                        PUSH ESI
0049fa36  57                        PUSH EDI
0049fa37  8bf9                      MOV EDI,ECX
0049fa39  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
0049fa3f  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0049fa45  83f810                    CMP EAX,0x10
0049fa48  0f871b0e0000              JA 0x004a0869
0049fa4e  0fb680ec0f4a00            MOVZX EAX,byte ptr [EAX + 0x4a0fec]
0049fa55  ff2485c80f4a00            JMP dword ptr [EAX*0x4 + 0x4a0fc8]
004a0869  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
004a0870  7407                      JZ 0x004a0879
004a0872  c6877101000001            MOV byte ptr [EDI + 0x171],0x1
004a0879  f30f108f340c0000          MOVSS XMM1,dword ptr [EDI + 0xc34]
004a0881  0f28c1                    MOVAPS XMM0,XMM1
004a0884  f30f588750030000          ADDSS XMM0,dword ptr [EDI + 0x350]
004a088c  0f2fc5                    COMISS XMM0,XMM5
004a088f  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
004a0897  7220                      JC 0x004a08b9
004a0899  0f2f0d28a5ba00            COMISS XMM1,dword ptr [0x00baa528]
004a08a0  c7875003000000000000      MOV dword ptr [EDI + 0x350],0x0
004a08aa  760a                      JBE 0x004a08b6
004a08ac  f30f590d0cadba00          MULSS XMM1,dword ptr [0x00baad0c]
004a08b4  eb03                      JMP 0x004a08b9
004a08b6  0f57c9                    XORPS XMM1,XMM1
004a08b9  f30f580d90a4ba00          ADDSS XMM1,dword ptr [0x00baa490]
004a08c1  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004a08c7  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004a08cd  2500400000                AND EAX,0x4000
004a08d2  83c800                    OR EAX,0x0
004a08d5  f30f118f340c0000          MOVSS dword ptr [EDI + 0xc34],XMM1
004a08dd  0f85b2000000              JNZ 0x004a0995
004a08e3  8bce                      MOV ECX,ESI
004a08e5  e866ca2500                CALL 0x006fd350
004a08ea  84c0                      TEST AL,AL
004a08ec  0f85a3000000              JNZ 0x004a0995
004a08f2  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
004a08fa  0f57ed                    XORPS XMM5,XMM5
004a08fd  f30f58c5                  ADDSS XMM0,XMM5
004a0901  f30f5e05c0adba00          DIVSS XMM0,dword ptr [0x00baadc0]
004a0909  f30f2cc8                  CVTTSS2SI ECX,XMM0
004a090d  f30f1087a0030000          MOVSS XMM0,dword ptr [EDI + 0x3a0]
004a0915  f30f58c5                  ADDSS XMM0,XMM5
004a0919  f30f5e05c0adba00          DIVSS XMM0,dword ptr [0x00baadc0]
004a0921  f30f2cc0                  CVTTSS2SI EAX,XMM0
004a0925  2bc1                      SUB EAX,ECX
004a0927  746c                      JZ 0x004a0995
004a0929  8a87b80b0000              MOV AL,byte ptr [EDI + 0xbb8]
004a092f  84c0                      TEST AL,AL
004a0931  7408                      JZ 0x004a093b
004a0933  fec8                      DEC AL
004a0935  8887b80b0000              MOV byte ptr [EDI + 0xbb8],AL
004a093b  8a87b90b0000              MOV AL,byte ptr [EDI + 0xbb9]
004a0941  84c0                      TEST AL,AL
004a0943  7408                      JZ 0x004a094d
004a0945  fec8                      DEC AL
004a0947  8887b90b0000              MOV byte ptr [EDI + 0xbb9],AL
004a094d  8a87ba0b0000              MOV AL,byte ptr [EDI + 0xbba]
004a0953  84c0                      TEST AL,AL
004a0955  7408                      JZ 0x004a095f
004a0957  fec8                      DEC AL
004a0959  8887ba0b0000              MOV byte ptr [EDI + 0xbba],AL
004a095f  8a87bb0b0000              MOV AL,byte ptr [EDI + 0xbbb]
004a0965  84c0                      TEST AL,AL
004a0967  7408                      JZ 0x004a0971
004a0969  fec8                      DEC AL
004a096b  8887bb0b0000              MOV byte ptr [EDI + 0xbbb],AL
004a0971  8a87bc0b0000              MOV AL,byte ptr [EDI + 0xbbc]
004a0977  84c0                      TEST AL,AL
004a0979  7408                      JZ 0x004a0983
004a097b  fec8                      DEC AL
004a097d  8887bc0b0000              MOV byte ptr [EDI + 0xbbc],AL
004a0983  8a87bd0b0000              MOV AL,byte ptr [EDI + 0xbbd]
004a0989  84c0                      TEST AL,AL
004a098b  7408                      JZ 0x004a0995
004a098d  fec8                      DEC AL
004a098f  8887bd0b0000              MOV byte ptr [EDI + 0xbbd],AL
004a0995  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004a099d  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004a09a4  9f                        LAHF
004a09a5  f6c444                    TEST AH,0x44
004a09a8  7a19                      JP 0x004a09c3
004a09aa  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004a09b2  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004a09b9  9f                        LAHF
004a09ba  f6c444                    TEST AH,0x44
004a09bd  0f8bee050000              JNP 0x004a0fb1
004a09c3  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004a09cb  f30f100d00a4ba00          MOVSS XMM1,dword ptr [0x00baa400]
004a09d3  0f2fc8                    COMISS XMM1,XMM0
004a09d6  7706                      JA 0x004a09de
004a09d8  f30f10c0                  MOVSS XMM0,XMM0
004a09dc  eb04                      JMP 0x004a09e2
004a09de  f30f10c1                  MOVSS XMM0,XMM1
004a09e2  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004a09ea  8a8fc10b0000              MOV CL,byte ptr [EDI + 0xbc1]
004a09f0  884c242b                  MOV byte ptr [ESP + 0x2b],CL
004a09f4  84c9                      TEST CL,CL
004a09f6  0f84c1000000              JZ 0x004a0abd
004a09fc  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004a0a02  2500400000                AND EAX,0x4000
004a0a07  83c800                    OR EAX,0x0
004a0a0a  0f85ad000000              JNZ 0x004a0abd
004a0a10  8bce                      MOV ECX,ESI
004a0a12  e839c92500                CALL 0x006fd350
004a0a17  84c0                      TEST AL,AL
004a0a19  7409                      JZ 0x004a0a24
004a0a1b  8a4c242b                  MOV CL,byte ptr [ESP + 0x2b]
004a0a1f  e999000000                JMP 0x004a0abd
004a0a24  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
004a0a2c  0f57d2                    XORPS XMM2,XMM2
004a0a2f  f30f58c2                  ADDSS XMM0,XMM2
004a0a33  f30f5e05a0adba00          DIVSS XMM0,dword ptr [0x00baada0]
004a0a3b  f30f2cc8                  CVTTSS2SI ECX,XMM0
004a0a3f  f30f1087a0030000          MOVSS XMM0,dword ptr [EDI + 0x3a0]
004a0a47  f30f58c2                  ADDSS XMM0,XMM2
004a0a4b  f30f5e05a0adba00          DIVSS XMM0,dword ptr [0x00baada0]
004a0a53  f30f2cc0                  CVTTSS2SI EAX,XMM0
004a0a57  2bc1                      SUB EAX,ECX
004a0a59  8a4c242b                  MOV CL,byte ptr [ESP + 0x2b]
004a0a5d  745e                      JZ 0x004a0abd
004a0a5f  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004a0a66  8d4c2474                  LEA ECX,[ESP + 0x74]
004a0a6a  8b07                      MOV EAX,dword ptr [EDI]
004a0a6c  6a01                      PUSH 0x1
004a0a6e  6a01                      PUSH 0x1
004a0a70  68ff000000                PUSH 0xff
004a0a75  6a04                      PUSH 0x4
004a0a77  0f11842484000000          MOVUPS xmmword ptr [ESP + 0x84],XMM0
004a0a7f  c78424a40000000000403f    MOV dword ptr [ESP + 0xa4],0x3f400000
004a0a8a  0f57c0                    XORPS XMM0,XMM0
004a0a8d  c78424a800000000000000    MOV dword ptr [ESP + 0xa8],0x0
004a0a98  51                        PUSH ECX
004a0a99  8bcf                      MOV ECX,EDI
004a0a9b  c78424b000000000000000    MOV dword ptr [ESP + 0xb0],0x0
004a0aa6  0f11842498000000          MOVUPS xmmword ptr [ESP + 0x98],XMM0
004a0aae  ff503c                    CALL dword ptr [EAX + 0x3c]
004a0ab1  8a8fc10b0000              MOV CL,byte ptr [EDI + 0xbc1]
004a0ab7  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004a0abd  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004a0ac4  0f84ed020000              JZ 0x004a0db7
004a0aca  84c9                      TEST CL,CL
004a0acc  0f84a4010000              JZ 0x004a0c76
004a0ad2  6a0a                      PUSH 0xa
004a0ad4  8bce                      MOV ECX,ESI
004a0ad6  e8952b2600                CALL 0x00703670
004a0adb  8d8c24a0000000            LEA ECX,[ESP + 0xa0]
004a0ae2  e849e4f9ff                CALL 0x0043ef30
004a0ae7  50                        PUSH EAX
004a0ae8  51                        PUSH ECX
004a0ae9  c7042400000000            MOV dword ptr [ESP],0x0
004a0af0  8bcf                      MOV ECX,EDI
004a0af2  6840b6c700                PUSH 0xc7b640
004a0af7  6a14                      PUSH 0x14
004a0af9  e8d2c22200                CALL 0x006ccdd0
004a0afe  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004a0b06  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004a0b0c  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004a0b12  83f812                    CMP EAX,0x12
004a0b15  750a                      JNZ 0x004a0b21
004a0b17  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004a0b1f  eb0d                      JMP 0x004a0b2e
004a0b21  83f813                    CMP EAX,0x13
004a0b24  750e                      JNZ 0x004a0b34
004a0b26  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004a0b2e  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004a0b34  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004a0b3a  8d4c242c                  LEA ECX,[ESP + 0x2c]
004a0b3e  c744242c30000000          MOV dword ptr [ESP + 0x2c],0x30
004a0b46  e8355c4b00                CALL 0x00956780
004a0b4b  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
004a0b51  83ec08                    SUB ESP,0x8
004a0b54  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004a0b5c  f30f110424                MOVSS dword ptr [ESP],XMM0
004a0b61  6a00                      PUSH 0x0
004a0b63  6a02                      PUSH 0x2
004a0b65  51                        PUSH ECX
004a0b66  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a0b6d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004a0b73  ff742440                  PUSH dword ptr [ESP + 0x40]
004a0b77  e8b4d04800                CALL 0x0092dc30
004a0b7c  8d8c2448010000            LEA ECX,[ESP + 0x148]
004a0b83  e8e865f6ff                CALL 0x00407170
004a0b88  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
004a0b8f  89442420                  MOV dword ptr [ESP + 0x20],EAX
004a0b93  750e                      JNZ 0x004a0ba3
004a0b95  f30f1005a8adba00          MOVSS XMM0,dword ptr [0x00baada8]
004a0b9d  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
004a0ba3  e8b8e32400                CALL 0x006eef60
004a0ba8  50                        PUSH EAX
004a0ba9  6a04                      PUSH 0x4
004a0bab  6a00                      PUSH 0x0
004a0bad  6840b6c700                PUSH 0xc7b640
004a0bb2  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004a0bb8  51                        PUSH ECX
004a0bb9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a0bbf  6a02                      PUSH 0x2
004a0bc1  68e8030000                PUSH 0x3e8
004a0bc6  e8557ff8ff                CALL 0x00428b20
004a0bcb  6a01                      PUSH 0x1
004a0bcd  8bf0                      MOV ESI,EAX
004a0bcf  6a00                      PUSH 0x0
004a0bd1  68ff000000                PUSH 0xff
004a0bd6  6aff                      PUSH -0x1
004a0bd8  8b16                      MOV EDX,dword ptr [ESI]
004a0bda  8bce                      MOV ECX,ESI
004a0bdc  ff742430                  PUSH dword ptr [ESP + 0x30]
004a0be0  ff523c                    CALL dword ptr [EDX + 0x3c]
004a0be3  f30f10442438              MOVSS XMM0,dword ptr [ESP + 0x38]
004a0be9  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004a0bef  f30f1186dc000000          MOVSS dword ptr [ESI + 0xdc],XMM0
004a0bf7  c786e0000000000020c1      MOV dword ptr [ESI + 0xe0],0xc1200000
004a0c01  8b08                      MOV ECX,dword ptr [EAX]
004a0c03  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
004a0c0d  85c9                      TEST ECX,ECX
004a0c0f  741a                      JZ 0x004a0c2b
004a0c11  89442420                  MOV dword ptr [ESP + 0x20],EAX
004a0c15  81c1cc030000              ADD ECX,0x3cc
004a0c1b  8d442420                  LEA EAX,[ESP + 0x20]
004a0c1f  50                        PUSH EAX
004a0c20  e8ebe50200                CALL 0x004cf210
004a0c25  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004a0c2b  50                        PUSH EAX
004a0c2c  8bcf                      MOV ECX,EDI
004a0c2e  8938                      MOV dword ptr [EAX],EDI
004a0c30  e8bbd00200                CALL 0x004cdcf0
004a0c35  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
004a0c3d  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004a0c45  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004a0c4d  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004a0c55  c6866404000001            MOV byte ptr [ESI + 0x464],0x1
004a0c5c  f30f118e68040000          MOVSS dword ptr [ESI + 0x468],XMM1
004a0c64  f30f11866c040000          MOVSS dword ptr [ESI + 0x46c],XMM0
004a0c6c  c787b00b0000000000c1      MOV dword ptr [EDI + 0xbb0],0xc1000000
004a0c76  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004a0c7e  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004a0c84  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004a0c8a  83f812                    CMP EAX,0x12
004a0c8d  750a                      JNZ 0x004a0c99
004a0c8f  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004a0c97  eb0d                      JMP 0x004a0ca6
004a0c99  83f813                    CMP EAX,0x13
004a0c9c  750e                      JNZ 0x004a0cac
004a0c9e  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004a0ca6  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004a0cac  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004a0cb2  8d4c2438                  LEA ECX,[ESP + 0x38]
004a0cb6  c744243848000000          MOV dword ptr [ESP + 0x38],0x48
004a0cbe  e8bd5a4b00                CALL 0x00956780
004a0cc3  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
004a0cc9  83ec08                    SUB ESP,0x8
004a0ccc  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004a0cd4  f30f110424                MOVSS dword ptr [ESP],XMM0
004a0cd9  6a00                      PUSH 0x0
004a0cdb  6a02                      PUSH 0x2
004a0cdd  51                        PUSH ECX
004a0cde  c704240000803f            MOV dword ptr [ESP],0x3f800000
004a0ce5  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004a0ceb  ff74244c                  PUSH dword ptr [ESP + 0x4c]
004a0cef  e83ccf4800                CALL 0x0092dc30
004a0cf4  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004a0cfc  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
004a0d04  0f28c1                    MOVAPS XMM0,XMM1
004a0d07  f30f59c1                  MULSS XMM0,XMM1
004a0d0b  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
004a0d11  0f28ca                    MOVAPS XMM1,XMM2
004a0d14  f30f59ca                  MULSS XMM1,XMM2
004a0d18  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
004a0d1e  f30f58c1                  ADDSS XMM0,XMM1
004a0d22  e8294df9ff                CALL 0x00435a50
004a0d27  0f57c9                    XORPS XMM1,XMM1
004a0d2a  0f2fc1                    COMISS XMM0,XMM1
004a0d2d  762c                      JBE 0x004a0d5b
004a0d2f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004a0d37  f30f5ec8                  DIVSS XMM1,XMM0
004a0d3b  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
004a0d41  f30f59c1                  MULSS XMM0,XMM1
004a0d45  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004a0d4b  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
004a0d51  f30f59c1                  MULSS XMM0,XMM1
004a0d55  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
004a0d5b  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004a0d63  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004a0d6b  f30f59c0                  MULSS XMM0,XMM0
004a0d6f  f30f59c9                  MULSS XMM1,XMM1
004a0d73  f30f58c1                  ADDSS XMM0,XMM1
004a0d77  e8d44cf9ff                CALL 0x00435a50
004a0d7c  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
004a0d82  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
004a0d88  f30f59c8                  MULSS XMM1,XMM0
004a0d8c  f30f59d0                  MULSS XMM2,XMM0
004a0d90  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
004a0d98  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
004a0da0  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
004a0da8  f30f119738030000          MOVSS dword ptr [EDI + 0x338],XMM2
004a0db0  c687c10b000000            MOV byte ptr [EDI + 0xbc1],0x0
004a0db7  83bf640b00000a            CMP dword ptr [EDI + 0xb64],0xa
004a0dbe  f30f10a760030000          MOVSS XMM4,dword ptr [EDI + 0x360]
004a0dc6  f30f58a734030000          ADDSS XMM4,dword ptr [EDI + 0x334]
004a0dce  f30f109f34030000          MOVSS XMM3,dword ptr [EDI + 0x334]
004a0dd6  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004a0dde  f30f591d18a4ba00          MULSS XMM3,dword ptr [0x00baa418]
004a0de6  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
004a0dee  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
004a0df6  0f28d3                    MOVAPS XMM2,XMM3
004a0df9  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004a0e01  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004a0e09  f30f115c2420              MOVSS dword ptr [ESP + 0x20],XMM3
004a0e0f  f30f119f34030000          MOVSS dword ptr [EDI + 0x334],XMM3
004a0e17  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004a0e1f  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004a0e27  7571                      JNZ 0x004a0e9a
004a0e29  f30f59c9                  MULSS XMM1,XMM1
004a0e2d  f30f59e4                  MULSS XMM4,XMM4
004a0e31  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
004a0e37  f30f115c2440              MOVSS dword ptr [ESP + 0x40],XMM3
004a0e3d  f30f58cc                  ADDSS XMM1,XMM4
004a0e41  0f28c1                    MOVAPS XMM0,XMM1
004a0e44  e8074cf9ff                CALL 0x00435a50
004a0e49  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
004a0e51  0f2fc8                    COMISS XMM1,XMM0
004a0e54  7638                      JBE 0x004a0e8e
004a0e56  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
004a0e5c  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
004a0e64  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004a0e6c  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004a0e74  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
004a0e7c  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004a0e84  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004a0e8c  eb0c                      JMP 0x004a0e9a
004a0e8e  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
004a0e94  f30f10542440              MOVSS XMM2,dword ptr [ESP + 0x40]
004a0e9a  f30f59c0                  MULSS XMM0,XMM0
004a0e9e  f30f59d2                  MULSS XMM2,XMM2
004a0ea2  f30f58c2                  ADDSS XMM0,XMM2
004a0ea6  e8a54bf9ff                CALL 0x00435a50
004a0eab  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
004a0eb3  0f2fc8                    COMISS XMM1,XMM0
004a0eb6  7620                      JBE 0x004a0ed8
004a0eb8  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004a0ec0  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004a0ec8  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004a0ed0  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004a0ed8  80bfc10b000000            CMP byte ptr [EDI + 0xbc1],0x0
004a0edf  747a                      JZ 0x004a0f5b
004a0ee1  e87ae02400                CALL 0x006eef60
004a0ee6  a803                      TEST AL,0x3
004a0ee8  7571                      JNZ 0x004a0f5b
004a0eea  8d8c24a0000000            LEA ECX,[ESP + 0xa0]
004a0ef1  e83ae0f9ff                CALL 0x0043ef30
004a0ef6  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004a0efe  8bf0                      MOV ESI,EAX
004a0f00  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
004a0f08  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004a0f10  f30f5cc1                  SUBSS XMM0,XMM1
004a0f14  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004a0f1c  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
004a0f24  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
004a0f2a  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004a0f32  f30f5cc1                  SUBSS XMM0,XMM1
004a0f36  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
004a0f3c  e81fe02400                CALL 0x006eef60
004a0f41  56                        PUSH ESI
004a0f42  51                        PUSH ECX
004a0f43  83e001                    AND EAX,0x1
004a0f46  c7042400000000            MOV dword ptr [ESP],0x0
004a0f4d  8d4c2414                  LEA ECX,[ESP + 0x14]
004a0f51  40                        INC EAX
004a0f52  51                        PUSH ECX
004a0f53  50                        PUSH EAX
004a0f54  8bcf                      MOV ECX,EDI
004a0f56  e875be2200                CALL 0x006ccdd0
004a0f5b  e800e02400                CALL 0x006eef60
004a0f60  33d2                      XOR EDX,EDX
004a0f62  b903000000                MOV ECX,0x3
004a0f67  f7f1                      DIV ECX
004a0f69  85d2                      TEST EDX,EDX
004a0f6b  7544                      JNZ 0x004a0fb1
004a0f6d  e8eedf2400                CALL 0x006eef60
004a0f72  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004a0f78  6a00                      PUSH 0x0
004a0f7a  50                        PUSH EAX
004a0f7b  6a00                      PUSH 0x0
004a0f7d  57                        PUSH EDI
004a0f7e  6840b6c700                PUSH 0xc7b640
004a0f83  8d873c030000              LEA EAX,[EDI + 0x33c]
004a0f89  50                        PUSH EAX
004a0f8a  6a16                      PUSH 0x16
004a0f8c  68e8030000                PUSH 0x3e8
004a0f91  e87ad42500                CALL 0x006fe410
004a0f96  8bc8                      MOV ECX,EAX
004a0f98  8b10                      MOV EDX,dword ptr [EAX]
004a0f9a  c7805c0400001e000000      MOV dword ptr [EAX + 0x45c],0x1e
004a0fa4  c780600400001e000000      MOV dword ptr [EAX + 0x460],0x1e
004a0fae  ff520c                    CALL dword ptr [EDX + 0xc]
004a0fb1  8b8c2474010000            MOV ECX,dword ptr [ESP + 0x174]
004a0fb8  5f                        POP EDI
004a0fb9  5e                        POP ESI
004a0fba  33cc                      XOR ECX,ESP
004a0fbc  e86ae16400                CALL 0x00aef12b
004a0fc1  8be5                      MOV ESP,EBP
004a0fc3  5d                        POP EBP
004a0fc4  c3                        RET
