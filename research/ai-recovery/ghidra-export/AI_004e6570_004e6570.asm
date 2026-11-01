; J460 NPC AI 0x004e6570 AI_004e6570
; types=877
; identities=877.0.0
; entry=004e6570
004e6570  53                        PUSH EBX
004e6571  8bdc                      MOV EBX,ESP
004e6573  83ec08                    SUB ESP,0x8
004e6576  83e4f8                    AND ESP,0xfffffff8
004e6579  83c404                    ADD ESP,0x4
004e657c  55                        PUSH EBP
004e657d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004e6580  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004e6584  8bec                      MOV EBP,ESP
004e6586  6aff                      PUSH -0x1
004e6588  68d53caf00                PUSH 0xaf3cd5
004e658d  64a100000000              MOV EAX,FS:[0x0]
004e6593  50                        PUSH EAX
004e6594  53                        PUSH EBX
004e6595  81ec40010000              SUB ESP,0x140
004e659b  a1b493bf00                MOV EAX,[0x00bf93b4]
004e65a0  33c5                      XOR EAX,EBP
004e65a2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004e65a5  56                        PUSH ESI
004e65a6  57                        PUSH EDI
004e65a7  50                        PUSH EAX
004e65a8  8d45f4                    LEA EAX,[EBP + -0xc]
004e65ab  64a300000000              MOV FS:[0x0],EAX
004e65b1  8bf9                      MOV EDI,ECX
004e65b3  89bd54ffffff              MOV dword ptr [EBP + 0xffffff54],EDI
004e65b9  a17816c700                MOV EAX,[0x00c71678]
004e65be  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
004e65c6  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004e65cc  89856cffffff              MOV dword ptr [EBP + 0xffffff6c],EAX
004e65d2  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004e65da  2bf0                      SUB ESI,EAX
004e65dc  e85f821d00                CALL 0x006be840
004e65e1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e65e7  ffb10c830100              PUSH dword ptr [ECX + 0x1830c]
004e65ed  ffb104830100              PUSH dword ptr [ECX + 0x18304]
004e65f3  e8c8a52500                CALL 0x00740bc0
004e65f8  0f57ff                    XORPS XMM7,XMM7
004e65fb  8b4844                    MOV ECX,dword ptr [EAX + 0x44]
004e65fe  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e6604  d1e9                      SHR ECX,0x1
004e6606  81e101ffffff              AND ECX,0xffffff01
004e660c  898d58ffffff              MOV dword ptr [EBP + 0xffffff58],ECX
004e6612  83f810                    CMP EAX,0x10
004e6615  0f873d140000              JA 0x004e7a58
004e661b  0fb680f47c4e00            MOVZX EAX,byte ptr [EAX + 0x4e7cf4]
004e6622  ff2485dc7c4e00            JMP dword ptr [EAX*0x4 + 0x4e7cdc]
004e6629  6a00                      PUSH 0x0
004e662b  8d4f48                    LEA ECX,[EDI + 0x48]
004e662e  685007b600                PUSH 0xb60750
004e6633  e8483df2ff                CALL 0x0040a380
004e6638  8d8f14040000              LEA ECX,[EDI + 0x414]
004e663e  c7871004000005000000      MOV dword ptr [EDI + 0x410],0x5
004e6648  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004e6652  e899093000                CALL 0x007e6ff0
004e6657  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
004e665d  8bb56cffffff              MOV ESI,dword ptr [EBP + 0xffffff6c]
004e6663  8bce                      MOV ECX,ESI
004e6665  99                        CDQ
004e6666  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
004e666e  6884030000                PUSH 0x384
004e6673  f77e0c                    IDIV dword ptr [ESI + 0xc]
004e6676  660f6ec8                  MOVD XMM1,EAX
004e667a  660f6ed2                  MOVD XMM2,EDX
004e667e  0f5bd2                    CVTDQ2PS XMM2,XMM2
004e6681  0f5bc9                    CVTDQ2PS XMM1,XMM1
004e6684  f30f59d0                  MULSS XMM2,XMM0
004e6688  f30f59c8                  MULSS XMM1,XMM0
004e668c  f30f58d0                  ADDSS XMM2,XMM0
004e6690  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
004e6698  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
004e66a0  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
004e66a8  ffb734040000              PUSH dword ptr [EDI + 0x434]
004e66ae  e82dfff6ff                CALL 0x004565e0
004e66b3  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004e66b9  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
004e66c0  83e1fb                    AND ECX,0xfffffffb
004e66c3  81c901000140              OR ECX,0x40010001
004e66c9  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004e66d0  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004e66d6  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
004e66dc  e88f0af2ff                CALL 0x00407170
004e66e1  50                        PUSH EAX
004e66e2  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e66e8  e8030bf2ff                CALL 0x004071f0
004e66ed  a17816c700                MOV EAX,[0x00c71678]
004e66f2  c787f40100000000803f      MOV dword ptr [EDI + 0x1f4],0x3f800000
004e66fc  c787f80100000000803f      MOV dword ptr [EDI + 0x1f8],0x3f800000
004e6706  c787fc0100000000803f      MOV dword ptr [EDI + 0x1fc],0x3f800000
004e6710  c787000200000000803f      MOV dword ptr [EDI + 0x200],0x3f800000
004e671a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004e6720  803900                    CMP byte ptr [ECX],0x0
004e6723  741d                      JZ 0x004e6742
004e6725  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004e672b  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
004e6731  750f                      JNZ 0x004e6742
004e6733  388558ffffff              CMP byte ptr [EBP + 0xffffff58],AL
004e6739  7407                      JZ 0x004e6742
004e673b  8b07                      MOV EAX,dword ptr [EDI]
004e673d  8bcf                      MOV ECX,EDI
004e673f  ff5028                    CALL dword ptr [EAX + 0x28]
004e6742  c7878803000000000000      MOV dword ptr [EDI + 0x388],0x0
004e674c  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004e6756  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
004e6760  e9f3120000                JMP 0x004e7a58
004e6765  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004e676b  85c0                      TEST EAX,EAX
004e676d  7e0d                      JLE 0x004e677c
004e676f  2bc6                      SUB EAX,ESI
004e6771  898710040000              MOV dword ptr [EDI + 0x410],EAX
004e6777  e9dc120000                JMP 0x004e7a58
004e677c  6a00                      PUSH 0x0
004e677e  68ac07b600                PUSH 0xb607ac
004e6783  8d4f48                    LEA ECX,[EDI + 0x48]
004e6786  e8f53bf2ff                CALL 0x0040a380
004e678b  68d4d2b100                PUSH 0xb1d2d4
004e6790  8d4f48                    LEA ECX,[EDI + 0x48]
004e6793  e89848f2ff                CALL 0x0040b030
004e6798  84c0                      TEST AL,AL
004e679a  743e                      JZ 0x004e67da
004e679c  51                        PUSH ECX
004e679d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e67a4  6a00                      PUSH 0x0
004e67a6  6a02                      PUSH 0x2
004e67a8  51                        PUSH ECX
004e67a9  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e67b0  8bcf                      MOV ECX,EDI
004e67b2  68cd000000                PUSH 0xcd
004e67b7  e8e4031f00                CALL 0x006d6ba0
004e67bc  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004e67c3  7405                      JZ 0x004e67ca
004e67c5  0f57c0                    XORPS XMM0,XMM0
004e67c8  eb08                      JMP 0x004e67d2
004e67ca  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004e67d2  f30f118788030000          MOVSS dword ptr [EDI + 0x388],XMM0
004e67da  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004e67de  740d                      JZ 0x004e67ed
004e67e0  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004e67e7  0f856b120000              JNZ 0x004e7a58
004e67ed  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e67f7  c7871004000004000000      MOV dword ptr [EDI + 0x410],0x4
004e6801  e952120000                JMP 0x004e7a58
004e6806  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e680e  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004e6816  c7878803000000000000      MOV dword ptr [EDI + 0x388],0x0
004e6820  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e6828  e958140000                JMP 0x004e7c85
004e682d  a17816c700                MOV EAX,[0x00c71678]
004e6832  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004e6838  80b82972000000            CMP byte ptr [EAX + 0x7229],0x0
004e683f  7465                      JZ 0x004e68a6
004e6841  84c9                      TEST CL,CL
004e6843  7461                      JZ 0x004e68a6
004e6845  8bcf                      MOV ECX,EDI
004e6847  e8d4031f00                CALL 0x006d6c20
004e684c  85c0                      TEST EAX,EAX
004e684e  7f56                      JG 0x004e68a6
004e6850  6a00                      PUSH 0x0
004e6852  68b407b600                PUSH 0xb607b4
004e6857  8d4f48                    LEA ECX,[EDI + 0x48]
004e685a  e8213bf2ff                CALL 0x0040a380
004e685f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e6867  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004e686f  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004e6875  81a768010000ffffffbf      AND dword ptr [EDI + 0x168],0xbfffffff
004e687f  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004e6889  c7878803000000000000      MOV dword ptr [EDI + 0x388],0x0
004e6893  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e689b  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004e68a1  e9df130000                JMP 0x004e7c85
004e68a6  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004e68ac  33c9                      XOR ECX,ECX
004e68ae  2bc6                      SUB EAX,ESI
004e68b0  85c0                      TEST EAX,EAX
004e68b2  0f4fc8                    CMOVG ECX,EAX
004e68b5  898f10040000              MOV dword ptr [EDI + 0x410],ECX
004e68bb  85c9                      TEST ECX,ECX
004e68bd  0f8f95110000              JG 0x004e7a58
004e68c3  a17816c700                MOV EAX,[0x00c71678]
004e68c8  33f6                      XOR ESI,ESI
004e68ca  8b88acba0100              MOV ECX,dword ptr [EAX + 0x1baac]
004e68d0  2b88a8ba0100              SUB ECX,dword ptr [EAX + 0x1baa8]
004e68d6  c1f902                    SAR ECX,0x2
004e68d9  85c9                      TEST ECX,ECX
004e68db  0f8477110000              JZ 0x004e7a58
004e68e1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e68e7  56                        PUSH ESI
004e68e8  e8830ff3ff                CALL 0x00417870
004e68ed  8bd0                      MOV EDX,EAX
004e68ef  80ba7301000000            CMP byte ptr [EDX + 0x173],0x0
004e68f6  0f857b010000              JNZ 0x004e6a77
004e68fc  83ba8801000000            CMP dword ptr [EDX + 0x188],0x0
004e6903  0f846e010000              JZ 0x004e6a77
004e6909  f30f108a3c030000          MOVSS XMM1,dword ptr [EDX + 0x33c]
004e6911  8d8d5cffffff              LEA ECX,[EBP + 0xffffff5c]
004e6917  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004e691f  f30f108240030000          MOVSS XMM0,dword ptr [EDX + 0x340]
004e6927  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
004e692d  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004e6935  8dbd78ffffff              LEA EDI,[EBP + 0xffffff78]
004e693b  f30f118d70ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM1
004e6943  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004e694a  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004e6952  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004e6959  0f2fc8                    COMISS XMM1,XMM0
004e695c  f30f118d5cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM1
004e6964  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
004e696c  0f46c1                    CMOVBE EAX,ECX
004e696f  f30f118d50ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM1
004e6977  0f2fc1                    COMISS XMM0,XMM1
004e697a  8d8d60ffffff              LEA ECX,[EBP + 0xffffff60]
004e6980  f30f100d9ca8ba00          MOVSS XMM1,dword ptr [0x00baa89c]
004e6988  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
004e6990  0f46cf                    CMOVBE ECX,EDI
004e6993  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
004e699b  0f2f08                    COMISS XMM1,dword ptr [EAX]
004e699e  8bbd54ffffff              MOV EDI,dword ptr [EBP + 0xffffff54]
004e69a4  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004e69ac  f30f1001                  MOVSS XMM0,dword ptr [ECX]
004e69b0  0f82c1000000              JC 0x004e6a77
004e69b6  0f2fc1                    COMISS XMM0,XMM1
004e69b9  0f86b8000000              JBE 0x004e6a77
004e69bf  8b823c030000              MOV EAX,dword ptr [EDX + 0x33c]
004e69c5  8b8a40030000              MOV ECX,dword ptr [EDX + 0x340]
004e69cb  6a00                      PUSH 0x0
004e69cd  6a00                      PUSH 0x0
004e69cf  6a00                      PUSH 0x0
004e69d1  68e7030000                PUSH 0x3e7
004e69d6  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
004e69dc  8d8564ffffff              LEA EAX,[EBP + 0xffffff64]
004e69e2  6a01                      PUSH 0x1
004e69e4  50                        PUSH EAX
004e69e5  8d873c030000              LEA EAX,[EDI + 0x33c]
004e69eb  898d68ffffff              MOV dword ptr [EBP + 0xffffff68],ECX
004e69f1  8b8d6cffffff              MOV ECX,dword ptr [EBP + 0xffffff6c]
004e69f7  50                        PUSH EAX
004e69f8  e8f3a33000                CALL 0x007f0df0
004e69fd  84c0                      TEST AL,AL
004e69ff  7476                      JZ 0x004e6a77
004e6a01  f30f108550ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff50]
004e6a09  0f57d2                    XORPS XMM2,XMM2
004e6a0c  0f2f854cffffff            COMISS XMM0,dword ptr [EBP + 0xffffff4c]
004e6a13  7620                      JBE 0x004e6a35
004e6a15  0f2f9570ffffff            COMISS XMM2,dword ptr [EBP + 0xffffff70]
004e6a1c  0f57c9                    XORPS XMM1,XMM1
004e6a1f  760a                      JBE 0x004e6a2b
004e6a21  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
004e6a29  eb28                      JMP 0x004e6a53
004e6a2b  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004e6a33  eb1e                      JMP 0x004e6a53
004e6a35  0f2f9574ffffff            COMISS XMM2,dword ptr [EBP + 0xffffff74]
004e6a3c  0f57c0                    XORPS XMM0,XMM0
004e6a3f  760a                      JBE 0x004e6a4b
004e6a41  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
004e6a49  eb08                      JMP 0x004e6a53
004e6a4b  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004e6a53  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004e6a5b  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
004e6a63  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004e6a6d  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
004e6a77  a17816c700                MOV EAX,[0x00c71678]
004e6a7c  46                        INC ESI
004e6a7d  8b88acba0100              MOV ECX,dword ptr [EAX + 0x1baac]
004e6a83  2b88a8ba0100              SUB ECX,dword ptr [EAX + 0x1baa8]
004e6a89  c1f902                    SAR ECX,0x2
004e6a8c  3bf1                      CMP ESI,ECX
004e6a8e  0f824dfeffff              JC 0x004e68e1
004e6a94  e9bf0f0000                JMP 0x004e7a58
004e6a99  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004e6aa1  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004e6aa7  f30f10355ca7ba00          MOVSS XMM6,dword ptr [0x00baa75c]
004e6aaf  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
004e6ab5  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
004e6abd  0f28c1                    MOVAPS XMM0,XMM1
004e6ac0  f30f5887b80b0000          ADDSS XMM0,dword ptr [EDI + 0xbb8]
004e6ac8  f30f591da4a3ba00          MULSS XMM3,dword ptr [0x00baa3a4]
004e6ad0  c78570ffffff00008040      MOV dword ptr [EBP + 0xffffff70],0x40800000
004e6ada  0f2ff0                    COMISS XMM6,XMM0
004e6add  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004e6ae5  f30f119f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM3
004e6aed  0f46c1                    CMOVBE EAX,ECX
004e6af0  0f2edf                    UCOMISS XMM3,XMM7
004e6af3  f30f1020                  MOVSS XMM4,dword ptr [EAX]
004e6af7  f30f11a7b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM4
004e6aff  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
004e6b07  0f28ea                    MOVAPS XMM5,XMM2
004e6b0a  9f                        LAHF
004e6b0b  f30f59ec                  MULSS XMM5,XMM4
004e6b0f  f30f59a7b40b0000          MULSS XMM4,dword ptr [EDI + 0xbb4]
004e6b17  f6c444                    TEST AH,0x44
004e6b1a  7b3b                      JNP 0x004e6b57
004e6b1c  0f28c1                    MOVAPS XMM0,XMM1
004e6b1f  f30f59cc                  MULSS XMM1,XMM4
004e6b23  f30f59c5                  MULSS XMM0,XMM5
004e6b27  f30f5ecb                  DIVSS XMM1,XMM3
004e6b2b  f30f5ec3                  DIVSS XMM0,XMM3
004e6b2f  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004e6b37  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004e6b3f  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004e6b47  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004e6b4f  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
004e6b57  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004e6b5f  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004e6b66  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004e6b6d  0f2fd1                    COMISS XMM2,XMM1
004e6b70  761a                      JBE 0x004e6b8c
004e6b72  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004e6b7a  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004e6b82  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004e6b8a  eb18                      JMP 0x004e6ba4
004e6b8c  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004e6b94  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004e6b9c  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004e6ba4  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004e6bac  0f2fc6                    COMISS XMM0,XMM6
004e6baf  721e                      JC 0x004e6bcf
004e6bb1  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004e6bb8  7405                      JZ 0x004e6bbf
004e6bba  0f57c0                    XORPS XMM0,XMM0
004e6bbd  eb08                      JMP 0x004e6bc7
004e6bbf  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
004e6bc7  f30f118788030000          MOVSS dword ptr [EDI + 0x388],XMM0
004e6bcf  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
004e6bd7  0f2fc7                    COMISS XMM0,XMM7
004e6bda  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
004e6be2  0f8614010000              JBE 0x004e6cfc
004e6be8  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004e6bf0  0f57d2                    XORPS XMM2,XMM2
004e6bf3  8bcf                      MOV ECX,EDI
004e6bf5  e8665b1c00                CALL 0x006ac760
004e6bfa  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
004e6c02  85c0                      TEST EAX,EAX
004e6c04  0f84bb000000              JZ 0x004e6cc5
004e6c0a  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
004e6c12  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
004e6c1a  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004e6c22  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
004e6c2a  e831832000                CALL 0x006eef60
004e6c2f  f30f101598a1ba00          MOVSS XMM2,dword ptr [0x00baa198]
004e6c37  51                        PUSH ECX
004e6c38  8bcf                      MOV ECX,EDI
004e6c3a  660f6ec0                  MOVD XMM0,EAX
004e6c3e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e6c42  c1e81f                    SHR EAX,0x1f
004e6c45  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e6c4e  660f5ac8                  CVTPD2PS XMM1,XMM0
004e6c52  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
004e6c5a  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004e6c62  f30f59c2                  MULSS XMM0,XMM2
004e6c66  f30f59ca                  MULSS XMM1,XMM2
004e6c6a  f30f58ca                  ADDSS XMM1,XMM2
004e6c6e  f30f58c8                  ADDSS XMM1,XMM0
004e6c72  f30f110c24                MOVSS dword ptr [ESP],XMM1
004e6c77  e854f81c00                CALL 0x006b64d0
004e6c7c  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e6c82  8bf0                      MOV ESI,EAX
004e6c84  51                        PUSH ECX
004e6c85  8d8d7cffffff              LEA ECX,[EBP + 0xffffff7c]
004e6c8b  e83005f2ff                CALL 0x004071c0
004e6c90  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004e6c95  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
004e6c9b  f30f598578ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff78]
004e6ca3  6a01                      PUSH 0x1
004e6ca5  6a00                      PUSH 0x0
004e6ca7  68ff000000                PUSH 0xff
004e6cac  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004e6cb1  8b0e                      MOV ECX,dword ptr [ESI]
004e6cb3  6aff                      PUSH -0x1
004e6cb5  50                        PUSH EAX
004e6cb6  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
004e6cb9  8bce                      MOV ECX,ESI
004e6cbb  ffd2                      CALL EDX
004e6cbd  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
004e6cc5  f30f5c879c030000          SUBSS XMM0,dword ptr [EDI + 0x39c]
004e6ccd  0f57ff                    XORPS XMM7,XMM7
004e6cd0  c78570ffffff00000000      MOV dword ptr [EBP + 0xffffff70],0x0
004e6cda  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004e6ce0  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
004e6ce6  0f2fc7                    COMISS XMM0,XMM7
004e6ce9  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004e6cf1  0f46c1                    CMOVBE EAX,ECX
004e6cf4  8b00                      MOV EAX,dword ptr [EAX]
004e6cf6  8987bc0b0000              MOV dword ptr [EDI + 0xbbc],EAX
004e6cfc  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004e6d04  0f57d2                    XORPS XMM2,XMM2
004e6d07  8bcf                      MOV ECX,EDI
004e6d09  e8525a1c00                CALL 0x006ac760
004e6d0e  85c0                      TEST EAX,EAX
004e6d10  0f847c010000              JZ 0x004e6e92
004e6d16  e845822000                CALL 0x006eef60
004e6d1b  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004e6d23  8bf0                      MOV ESI,EAX
004e6d25  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004e6d2d  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
004e6d33  50                        PUSH EAX
004e6d34  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004e6d3c  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004e6d44  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004e6d4c  f30f118570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM0
004e6d54  e817831900                CALL 0x0067f070
004e6d59  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e6d5f  83c404                    ADD ESP,0x4
004e6d62  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004e6d66  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
004e6d6b  8d8564ffffff              LEA EAX,[EBP + 0xffffff64]
004e6d71  f30f588574ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff74]
004e6d79  f30f588d70ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff70]
004e6d81  56                        PUSH ESI
004e6d82  6a00                      PUSH 0x0
004e6d84  57                        PUSH EDI
004e6d85  50                        PUSH EAX
004e6d86  8d873c030000              LEA EAX,[EDI + 0x33c]
004e6d8c  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
004e6d94  50                        PUSH EAX
004e6d95  6a3b                      PUSH 0x3b
004e6d97  68e8030000                PUSH 0x3e8
004e6d9c  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
004e6da4  e8771df4ff                CALL 0x00428b20
004e6da9  8bf0                      MOV ESI,EAX
004e6dab  e8b0812000                CALL 0x006eef60
004e6db0  660f6ec0                  MOVD XMM0,EAX
004e6db4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e6db8  c1e81f                    SHR EAX,0x1f
004e6dbb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e6dc4  660f5ac0                  CVTPD2PS XMM0,XMM0
004e6dc8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e6dd0  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004e6dd8  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
004e6de0  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
004e6de8  e873812000                CALL 0x006eef60
004e6ded  b90f000000                MOV ECX,0xf
004e6df2  f30f101db8a2ba00          MOVSS XMM3,dword ptr [0x00baa2b8]
004e6dfa  33d2                      XOR EDX,EDX
004e6dfc  0f28d3                    MOVAPS XMM2,XMM3
004e6dff  f7f1                      DIV ECX
004e6e01  8b06                      MOV EAX,dword ptr [ESI]
004e6e03  0f28cb                    MOVAPS XMM1,XMM3
004e6e06  03d1                      ADD EDX,ECX
004e6e08  51                        PUSH ECX
004e6e09  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
004e6e0f  8d8d7cffffff              LEA ECX,[EBP + 0xffffff7c]
004e6e15  899660040000              MOV dword ptr [ESI + 0x460],EDX
004e6e1b  8b503c                    MOV EDX,dword ptr [EAX + 0x3c]
004e6e1e  c704240000003f            MOV dword ptr [ESP],0x3f000000
004e6e25  e8c6caf3ff                CALL 0x004238f0
004e6e2a  6a01                      PUSH 0x1
004e6e2c  6a00                      PUSH 0x0
004e6e2e  68ff000000                PUSH 0xff
004e6e33  6aff                      PUSH -0x1
004e6e35  50                        PUSH EAX
004e6e36  8bce                      MOV ECX,ESI
004e6e38  ffd2                      CALL EDX
004e6e3a  e821812000                CALL 0x006eef60
004e6e3f  660f6ec0                  MOVD XMM0,EAX
004e6e43  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e6e47  c1e81f                    SHR EAX,0x1f
004e6e4a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e6e53  660f5ac8                  CVTPD2PS XMM1,XMM0
004e6e57  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004e6e5f  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004e6e67  f30f580df8a1ba00          ADDSS XMM1,dword ptr [0x00baa1f8]
004e6e6f  0f28c1                    MOVAPS XMM0,XMM1
004e6e72  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004e6e7a  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004e6e82  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
004e6e8a  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
004e6e92  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004e6e99  8bb56cffffff              MOV ESI,dword ptr [EBP + 0xffffff6c]
004e6e9f  0f841e010000              JZ 0x004e6fc3
004e6ea5  f30f108f70030000          MOVSS XMM1,dword ptr [EDI + 0x370]
004e6ead  8bce                      MOV ECX,ESI
004e6eaf  f30f580d30a6ba00          ADDSS XMM1,dword ptr [0x00baa630]
004e6eb7  0f28c1                    MOVAPS XMM0,XMM1
004e6eba  f30f598fb40b0000          MULSS XMM1,dword ptr [EDI + 0xbb4]
004e6ec2  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
004e6eca  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004e6ed2  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004e6eda  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
004e6ee2  ffb568ffffff              PUSH dword ptr [EBP + 0xffffff68]
004e6ee8  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
004e6ef0  ffb564ffffff              PUSH dword ptr [EBP + 0xffffff64]
004e6ef6  e885983000                CALL 0x007f0780
004e6efb  85c0                      TEST EAX,EAX
004e6efd  0f84c0000000              JZ 0x004e6fc3
004e6f03  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e6f09  6a06                      PUSH 0x6
004e6f0b  e860c72100                CALL 0x00703670
004e6f10  51                        PUSH ECX
004e6f11  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e6f18  6a00                      PUSH 0x0
004e6f1a  6a02                      PUSH 0x2
004e6f1c  51                        PUSH ECX
004e6f1d  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e6f24  8bcf                      MOV ECX,EDI
004e6f26  68e7010000                PUSH 0x1e7
004e6f2b  e870fc1e00                CALL 0x006d6ba0
004e6f30  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004e6f37  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e6f41  7405                      JZ 0x004e6f48
004e6f43  0f57c0                    XORPS XMM0,XMM0
004e6f46  eb08                      JMP 0x004e6f50
004e6f48  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004e6f50  8d8f14040000              LEA ECX,[EDI + 0x414]
004e6f56  f30f118788030000          MOVSS dword ptr [EDI + 0x388],XMM0
004e6f5e  e88d003000                CALL 0x007e6ff0
004e6f63  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
004e6f69  8bce                      MOV ECX,ESI
004e6f6b  99                        CDQ
004e6f6c  f77e0c                    IDIV dword ptr [ESI + 0xc]
004e6f6f  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004e6f77  6884030000                PUSH 0x384
004e6f7c  660f6ec0                  MOVD XMM0,EAX
004e6f80  660f6eca                  MOVD XMM1,EDX
004e6f84  0f5bc9                    CVTDQ2PS XMM1,XMM1
004e6f87  0f5bc0                    CVTDQ2PS XMM0,XMM0
004e6f8a  f30f59ca                  MULSS XMM1,XMM2
004e6f8e  f30f59c2                  MULSS XMM0,XMM2
004e6f92  f30f58ca                  ADDSS XMM1,XMM2
004e6f96  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
004e6f9e  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
004e6fa6  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004e6fae  ffb734040000              PUSH dword ptr [EDI + 0x434]
004e6fb4  e827f6f6ff                CALL 0x004565e0
004e6fb9  c787100400000f000000      MOV dword ptr [EDI + 0x410],0xf
004e6fc3  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004e6fcb  8d8774030000              LEA EAX,[EDI + 0x374]
004e6fd1  f30f109770030000          MOVSS XMM2,dword ptr [EDI + 0x370]
004e6fd9  0f28c1                    MOVAPS XMM0,XMM1
004e6fdc  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
004e6fe4  51                        PUSH ECX
004e6fe5  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
004e6fed  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
004e6ff3  c7042400000000            MOV dword ptr [ESP],0x0
004e6ffa  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004e7002  50                        PUSH EAX
004e7003  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004e700b  8d8564ffffff              LEA EAX,[EBP + 0xffffff64]
004e7011  50                        PUSH EAX
004e7012  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
004e701a  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
004e7022  e869e14500                CALL 0x00945190
004e7027  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
004e702f  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
004e7035  f30f581da0a9ba00          ADDSS XMM3,dword ptr [0x00baa9a0]
004e703d  6a28                      PUSH 0x28
004e703f  50                        PUSH EAX
004e7040  8d45dc                    LEA EAX,[EBP + -0x24]
004e7043  8d8e18120000              LEA ECX,[ESI + 0x1218]
004e7049  50                        PUSH EAX
004e704a  e84137f3ff                CALL 0x0041a790
004e704f  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004e7056  64a12c000000              MOV EAX,FS:[0x2c]
004e705c  8b08                      MOV ECX,dword ptr [EAX]
004e705e  a148f7c700                MOV EAX,[0x00c7f748]
004e7063  3b810c000000              CMP EAX,dword ptr [ECX + 0xc]
004e7069  0f8f340c0000              JG 0x004e7ca3
004e706f  8b0d4cf7c700              MOV ECX,dword ptr [0x00c7f74c]
004e7075  33f6                      XOR ESI,ESI
004e7077  890d50f7c700              MOV dword ptr [0x00c7f750],ECX
004e707d  3975e8                    CMP dword ptr [EBP + -0x18],ESI
004e7080  7652                      JBE 0x004e70d4
004e7082  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004e7085  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
004e7088  898574ffffff              MOV dword ptr [EBP + 0xffffff74],EAX
004e708e  8178286d030000            CMP dword ptr [EAX + 0x28],0x36d
004e7095  7537                      JNZ 0x004e70ce
004e7097  3bc7                      CMP EAX,EDI
004e7099  7433                      JZ 0x004e70ce
004e709b  3b0d54f7c700              CMP ECX,dword ptr [0x00c7f754]
004e70a1  7413                      JZ 0x004e70b6
004e70a3  8901                      MOV dword ptr [ECX],EAX
004e70a5  8b0d50f7c700              MOV ECX,dword ptr [0x00c7f750]
004e70ab  83c104                    ADD ECX,0x4
004e70ae  890d50f7c700              MOV dword ptr [0x00c7f750],ECX
004e70b4  eb18                      JMP 0x004e70ce
004e70b6  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
004e70bc  50                        PUSH EAX
004e70bd  51                        PUSH ECX
004e70be  b94cf7c700                MOV ECX,0xc7f74c
004e70c3  e85858f4ff                CALL 0x0042c920
004e70c8  8b0d50f7c700              MOV ECX,dword ptr [0x00c7f750]
004e70ce  46                        INC ESI
004e70cf  3b75e8                    CMP ESI,dword ptr [EBP + -0x18]
004e70d2  72ae                      JC 0x004e7082
004e70d4  33f6                      XOR ESI,ESI
004e70d6  c78540ffffff00000000      MOV dword ptr [EBP + 0xffffff40],0x0
004e70e0  c7853cffffff00000000      MOV dword ptr [EBP + 0xffffff3c],0x0
004e70ea  89b558ffffff              MOV dword ptr [EBP + 0xffffff58],ESI
004e70f0  3975e8                    CMP dword ptr [EBP + -0x18],ESI
004e70f3  0f8633090000              JBE 0x004e7a2c
004e70f9  0f1f8000000000            NOP dword ptr [EAX]
004e7100  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004e7103  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
004e7106  89b578ffffff              MOV dword ptr [EBP + 0xffffff78],ESI
004e710c  3bf7                      CMP ESI,EDI
004e710e  0f8402090000              JZ 0x004e7a16
004e7114  8b8688010000              MOV EAX,dword ptr [ESI + 0x188]
004e711a  83f804                    CMP EAX,0x4
004e711d  7409                      JZ 0x004e7128
004e711f  83f803                    CMP EAX,0x3
004e7122  0f85ee080000              JNZ 0x004e7a16
004e7128  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
004e7130  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004e7138  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004e7140  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004e7148  f30f5987b40b0000          MULSS XMM0,dword ptr [EDI + 0xbb4]
004e7150  f30f598fb00b0000          MULSS XMM1,dword ptr [EDI + 0xbb0]
004e7158  f30f58c1                  ADDSS XMM0,XMM1
004e715c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004e7163  0f86ad080000              JBE 0x004e7a16
004e7169  6840b6c700                PUSH 0xc7b640
004e716e  8d45ac                    LEA EAX,[EBP + -0x54]
004e7171  8bce                      MOV ECX,ESI
004e7173  50                        PUSH EAX
004e7174  e8272a1c00                CALL 0x006a9ba0
004e7179  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
004e7181  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
004e7187  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
004e718f  8d55ac                    LEA EDX,[EBP + -0x54]
004e7192  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
004e719a  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
004e71a0  f30f118d74ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM1
004e71a8  f30f119570ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM2
004e71b0  f30f59c8                  MULSS XMM1,XMM0
004e71b4  50                        PUSH EAX
004e71b5  f30f59d0                  MULSS XMM2,XMM0
004e71b9  f30f584dac                ADDSS XMM1,dword ptr [EBP + -0x54]
004e71be  f30f5855b0                ADDSS XMM2,dword ptr [EBP + -0x50]
004e71c3  f30f114dac                MOVSS dword ptr [EBP + -0x54],XMM1
004e71c8  f30f1155b0                MOVSS dword ptr [EBP + -0x50],XMM2
004e71cd  e89ee24500                CALL 0x00945470
004e71d2  83c404                    ADD ESP,0x4
004e71d5  84c0                      TEST AL,AL
004e71d7  0f8439080000              JZ 0x004e7a16
004e71dd  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004e71e0  3d6d030000                CMP EAX,0x36d
004e71e5  0f85a8010000              JNZ 0x004e7393
004e71eb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e71f1  6a06                      PUSH 0x6
004e71f3  e878c42100                CALL 0x00703670
004e71f8  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004e7200  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004e7206  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
004e720e  83f812                    CMP EAX,0x12
004e7211  750a                      JNZ 0x004e721d
004e7213  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004e721b  eb0d                      JMP 0x004e722a
004e721d  83f813                    CMP EAX,0x13
004e7220  7510                      JNZ 0x004e7232
004e7222  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004e722a  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
004e7232  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004e7238  8d8d60ffffff              LEA ECX,[EBP + 0xffffff60]
004e723e  c78560ffffffe7010000      MOV dword ptr [EBP + 0xffffff60],0x1e7
004e7248  e833f54600                CALL 0x00956780
004e724d  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
004e7255  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004e725b  83ec08                    SUB ESP,0x8
004e725e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004e7266  f30f110424                MOVSS dword ptr [ESP],XMM0
004e726b  6a00                      PUSH 0x0
004e726d  6a02                      PUSH 0x2
004e726f  51                        PUSH ECX
004e7270  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e7277  ffb560ffffff              PUSH dword ptr [EBP + 0xffffff60]
004e727d  e8ae694400                CALL 0x0092dc30
004e7282  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004e7289  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004e7293  7405                      JZ 0x004e729a
004e7295  0f57c0                    XORPS XMM0,XMM0
004e7298  eb08                      JMP 0x004e72a2
004e729a  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004e72a2  a17816c700                MOV EAX,[0x00c71678]
004e72a7  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004e72af  f30f102500aaba00          MOVSS XMM4,dword ptr [0x00baaa00]
004e72b7  f30f118788030000          MOVSS dword ptr [EDI + 0x388],XMM0
004e72bf  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004e72c5  8b8714040000              MOV EAX,dword ptr [EDI + 0x414]
004e72cb  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004e72d3  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004e72db  f30f5cc2                  SUBSS XMM0,XMM2
004e72df  f30f5ccc                  SUBSS XMM1,XMM4
004e72e3  f30f5ec2                  DIVSS XMM0,XMM2
004e72e7  f30f5eca                  DIVSS XMM1,XMM2
004e72eb  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004e72f3  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
004e72fb  f30f2cd0                  CVTTSS2SI EDX,XMM0
004e72ff  f30f2cc9                  CVTTSS2SI ECX,XMM1
004e7303  85d2                      TEST EDX,EDX
004e7305  7817                      JS 0x004e731e
004e7307  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
004e730a  3bd0                      CMP EDX,EAX
004e730c  7d10                      JGE 0x004e731e
004e730e  85c9                      TEST ECX,ECX
004e7310  780c                      JS 0x004e731e
004e7312  3b4e10                    CMP ECX,dword ptr [ESI + 0x10]
004e7315  7d07                      JGE 0x004e731e
004e7317  0fafc1                    IMUL EAX,ECX
004e731a  03c2                      ADD EAX,EDX
004e731c  eb03                      JMP 0x004e7321
004e731e  83c8ff                    OR EAX,0xffffffff
004e7321  8bb56cffffff              MOV ESI,dword ptr [EBP + 0xffffff6c]
004e7327  898734040000              MOV dword ptr [EDI + 0x434],EAX
004e732d  99                        CDQ
004e732e  f77e0c                    IDIV dword ptr [ESI + 0xc]
004e7331  660f6ec0                  MOVD XMM0,EAX
004e7335  660f6eca                  MOVD XMM1,EDX
004e7339  0f5bc9                    CVTDQ2PS XMM1,XMM1
004e733c  0f5bc0                    CVTDQ2PS XMM0,XMM0
004e733f  f30f59ca                  MULSS XMM1,XMM2
004e7343  f30f59c2                  MULSS XMM0,XMM2
004e7347  f30f58ca                  ADDSS XMM1,XMM2
004e734b  f30f58c4                  ADDSS XMM0,XMM4
004e734f  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
004e7357  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004e735f  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
004e7365  3dbf010000                CMP EAX,0x1bf
004e736a  7718                      JA 0x004e7384
004e736c  81bc866c070000b6030000    CMP dword ptr [ESI + EAX*0x4 + 0x76c],0x3b6
004e7377  7f0b                      JG 0x004e7384
004e7379  c784866c07000084030000    MOV dword ptr [ESI + EAX*0x4 + 0x76c],0x384
004e7384  c787100400000f000000      MOV dword ptr [EDI + 0x410],0xf
004e738e  e983060000                JMP 0x004e7a16
004e7393  83f821                    CMP EAX,0x21
004e7396  7557                      JNZ 0x004e73ef
004e7398  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
004e739b  83f80b                    CMP EAX,0xb
004e739e  7469                      JZ 0x004e7409
004e73a0  83f802                    CMP EAX,0x2
004e73a3  0f846d060000              JZ 0x004e7a16
004e73a9  83f803                    CMP EAX,0x3
004e73ac  0f8464060000              JZ 0x004e7a16
004e73b2  8b06                      MOV EAX,dword ptr [ESI]
004e73b4  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
004e73ba  c786800300000000803f      MOV dword ptr [ESI + 0x380],0x3f800000
004e73c4  57                        PUSH EDI
004e73c5  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
004e73c8  e8439ff4ff                CALL 0x00431310
004e73cd  6a1e                      PUSH 0x1e
004e73cf  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004e73d5  50                        PUSH EAX
004e73d6  6a00                      PUSH 0x0
004e73d8  6a00                      PUSH 0x0
004e73da  51                        PUSH ECX
004e73db  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
004e73e1  c7042400007a44            MOV dword ptr [ESP],0x447a0000
004e73e8  ffd6                      CALL ESI
004e73ea  e927060000                JMP 0x004e7a16
004e73ef  83f801                    CMP EAX,0x1
004e73f2  7515                      JNZ 0x004e7409
004e73f4  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
004e73fb  740c                      JZ 0x004e7409
004e73fd  f30f1025a4a3ba00          MOVSS XMM4,dword ptr [0x00baa3a4]
004e7405  8ad0                      MOV DL,AL
004e7407  eb0a                      JMP 0x004e7413
004e7409  f30f102504a3ba00          MOVSS XMM4,dword ptr [0x00baa304]
004e7411  32d2                      XOR DL,DL
004e7413  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004e741b  0f2e1554a4ba00            UCOMISS XMM2,dword ptr [0x00baa454]
004e7422  9f                        LAHF
004e7423  f6c444                    TEST AH,0x44
004e7426  7a05                      JP 0x004e742d
004e7428  0f28d4                    MOVAPS XMM2,XMM4
004e742b  eb19                      JMP 0x004e7446
004e742d  0f28cc                    MOVAPS XMM1,XMM4
004e7430  0f28c4                    MOVAPS XMM0,XMM4
004e7433  f30f58ca                  ADDSS XMM1,XMM2
004e7437  f30f59c2                  MULSS XMM0,XMM2
004e743b  0f28d4                    MOVAPS XMM2,XMM4
004e743e  f30f5cc8                  SUBSS XMM1,XMM0
004e7442  f30f5ed1                  DIVSS XMM2,XMM1
004e7446  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004e744e  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004e7456  f30f10ad74ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff74]
004e745e  f30f109d70ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff70]
004e7466  f30f5cc5                  SUBSS XMM0,XMM5
004e746a  a17816c700                MOV EAX,[0x00c71678]
004e746f  f30f5ccb                  SUBSS XMM1,XMM3
004e7473  f30f59c2                  MULSS XMM0,XMM2
004e7477  f30f59ca                  MULSS XMM1,XMM2
004e747b  f30f58e8                  ADDSS XMM5,XMM0
004e747f  f30f58d9                  ADDSS XMM3,XMM1
004e7483  f30f11ae60030000          MOVSS dword ptr [ESI + 0x360],XMM5
004e748b  f30f119e64030000          MOVSS dword ptr [ESI + 0x364],XMM3
004e7493  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004e749a  7c06                      JL 0x004e74a2
004e749c  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004e74a0  741a                      JZ 0x004e74bc
004e74a2  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
004e74a5  8d41f6                    LEA EAX,[ECX + -0xa]
004e74a8  3ddd030000                CMP EAX,0x3dd
004e74ad  760d                      JBE 0x004e74bc
004e74af  83f904                    CMP ECX,0x4
004e74b2  7408                      JZ 0x004e74bc
004e74b4  84d2                      TEST DL,DL
004e74b6  0f845a050000              JZ 0x004e7a16
004e74bc  f30f108e70030000          MOVSS XMM1,dword ptr [ESI + 0x370]
004e74c4  f30f109508ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff08]
004e74cc  0f28c1                    MOVAPS XMM0,XMM1
004e74cf  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
004e74d7  f30f598fb40b0000          MULSS XMM1,dword ptr [EDI + 0xbb4]
004e74df  f30f58d0                  ADDSS XMM2,XMM0
004e74e3  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
004e74eb  f30f58c1                  ADDSS XMM0,XMM1
004e74ef  0f28cc                    MOVAPS XMM1,XMM4
004e74f2  f30f5c963c030000          SUBSS XMM2,dword ptr [ESI + 0x33c]
004e74fa  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004e7502  f30f59ca                  MULSS XMM1,XMM2
004e7506  f30f10966c030000          MOVSS XMM2,dword ptr [ESI + 0x36c]
004e750e  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
004e7515  f30f59e0                  MULSS XMM4,XMM0
004e7519  9f                        LAHF
004e751a  f6c444                    TEST AH,0x44
004e751d  7b37                      JNP 0x004e7556
004e751f  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
004e7527  0f28dc                    MOVAPS XMM3,XMM4
004e752a  f30f59c8                  MULSS XMM1,XMM0
004e752e  f30f59d8                  MULSS XMM3,XMM0
004e7532  f30f5eca                  DIVSS XMM1,XMM2
004e7536  f30f5eda                  DIVSS XMM3,XMM2
004e753a  f30f58cd                  ADDSS XMM1,XMM5
004e753e  f30f589e64030000          ADDSS XMM3,dword ptr [ESI + 0x364]
004e7546  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
004e754e  f30f119e64030000          MOVSS dword ptr [ESI + 0x364],XMM3
004e7556  83be8401000000            CMP dword ptr [ESI + 0x184],0x0
004e755d  0f84b3040000              JZ 0x004e7a16
004e7563  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
004e756b  f30f109660030000          MOVSS XMM2,dword ptr [ESI + 0x360]
004e7573  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
004e757b  f30f10a63c030000          MOVSS XMM4,dword ptr [ESI + 0x33c]
004e7583  f30f10ae40030000          MOVSS XMM5,dword ptr [ESI + 0x340]
004e758b  8b8678010000              MOV EAX,dword ptr [ESI + 0x178]
004e7591  8b8e7c010000              MOV ECX,dword ptr [ESI + 0x17c]
004e7597  f30f59d8                  MULSS XMM3,XMM0
004e759b  2bc8                      SUB ECX,EAX
004e759d  c1f903                    SAR ECX,0x3
004e75a0  f30f59d0                  MULSS XMM2,XMM0
004e75a4  0f28c1                    MOVAPS XMM0,XMM1
004e75a7  c78560ffffff00000000      MOV dword ptr [EBP + 0xffffff60],0x0
004e75b1  f30f59cb                  MULSS XMM1,XMM3
004e75b5  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
004e75bb  f30f59c2                  MULSS XMM0,XMM2
004e75bf  898d50ffffff              MOV dword ptr [EBP + 0xffffff50],ECX
004e75c5  f30f58e9                  ADDSS XMM5,XMM1
004e75c9  f30f58e0                  ADDSS XMM4,XMM0
004e75cd  f30f11ad68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM5
004e75d5  f30f11a554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM4
004e75dd  85c9                      TEST ECX,ECX
004e75df  0f8431040000              JZ 0x004e7a16
004e75e5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
004e75f0  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004e75f8  0f28c4                    MOVAPS XMM0,XMM4
004e75fb  f30f5800                  ADDSS XMM0,dword ptr [EAX]
004e75ff  0f28cd                    MOVAPS XMM1,XMM5
004e7602  f30f584804                ADDSS XMM1,dword ptr [EAX + 0x4]
004e7607  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004e760f  f30f5cc2                  SUBSS XMM0,XMM2
004e7613  f30f118d70ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM1
004e761b  f30f5ec2                  DIVSS XMM0,XMM2
004e761f  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004e7627  f30f2cd0                  CVTTSS2SI EDX,XMM0
004e762b  0f28c1                    MOVAPS XMM0,XMM1
004e762e  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004e7636  f30f5ec2                  DIVSS XMM0,XMM2
004e763a  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004e7642  f30f2cc8                  CVTTSS2SI ECX,XMM0
004e7646  85d2                      TEST EDX,EDX
004e7648  7829                      JS 0x004e7673
004e764a  8b856cffffff              MOV EAX,dword ptr [EBP + 0xffffff6c]
004e7650  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
004e7653  3bd0                      CMP EDX,EAX
004e7655  7d1c                      JGE 0x004e7673
004e7657  85c9                      TEST ECX,ECX
004e7659  7818                      JS 0x004e7673
004e765b  8bb56cffffff              MOV ESI,dword ptr [EBP + 0xffffff6c]
004e7661  3b4e10                    CMP ECX,dword ptr [ESI + 0x10]
004e7664  8bb578ffffff              MOV ESI,dword ptr [EBP + 0xffffff78]
004e766a  7d07                      JGE 0x004e7673
004e766c  0fafc1                    IMUL EAX,ECX
004e766f  03c2                      ADD EAX,EDX
004e7671  eb03                      JMP 0x004e7676
004e7673  83c8ff                    OR EAX,0xffffffff
004e7676  8b8d6cffffff              MOV ECX,dword ptr [EBP + 0xffffff6c]
004e767c  50                        PUSH EAX
004e767d  e87e913000                CALL 0x007f0800
004e7682  89854cffffff              MOV dword ptr [EBP + 0xffffff4c],EAX
004e7688  83f804                    CMP EAX,0x4
004e768b  0f84da000000              JZ 0x004e776b
004e7691  8b1550f7c700              MOV EDX,dword ptr [0x00c7f750]
004e7697  39154cf7c700              CMP dword ptr [0x00c7f74c],EDX
004e769d  7469                      JZ 0x004e7708
004e769f  2b154cf7c700              SUB EDX,dword ptr [0x00c7f74c]
004e76a5  33c9                      XOR ECX,ECX
004e76a7  c1fa02                    SAR EDX,0x2
004e76aa  85d2                      TEST EDX,EDX
004e76ac  745a                      JZ 0x004e7708
004e76ae  f30f109d74ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff74]
004e76b6  f30f10a570ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff70]
004e76be  6690                      NOP
004e76c0  a14cf7c700                MOV EAX,[0x00c7f74c]
004e76c5  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004e76c8  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004e76d0  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004e76d8  f30f5ccb                  SUBSS XMM1,XMM3
004e76dc  f30f108070030000          MOVSS XMM0,dword ptr [EAX + 0x370]
004e76e4  f30f5cd4                  SUBSS XMM2,XMM4
004e76e8  f30f59c0                  MULSS XMM0,XMM0
004e76ec  f30f59c9                  MULSS XMM1,XMM1
004e76f0  f30f59d2                  MULSS XMM2,XMM2
004e76f4  f30f58d1                  ADDSS XMM2,XMM1
004e76f8  0f2fc2                    COMISS XMM0,XMM2
004e76fb  736e                      JNC 0x004e776b
004e76fd  41                        INC ECX
004e76fe  3bca                      CMP ECX,EDX
004e7700  72be                      JC 0x004e76c0
004e7702  8b854cffffff              MOV EAX,dword ptr [EBP + 0xffffff4c]
004e7708  83f801                    CMP EAX,0x1
004e770b  7509                      JNZ 0x004e7716
004e770d  83be8401000005            CMP dword ptr [ESI + 0x184],0x5
004e7714  eb16                      JMP 0x004e772c
004e7716  83f802                    CMP EAX,0x2
004e7719  7405                      JZ 0x004e7720
004e771b  83f803                    CMP EAX,0x3
004e771e  7509                      JNZ 0x004e7729
004e7720  83be8401000003            CMP dword ptr [ESI + 0x184],0x3
004e7727  7542                      JNZ 0x004e776b
004e7729  83f804                    CMP EAX,0x4
004e772c  743d                      JZ 0x004e776b
004e772e  8b8d60ffffff              MOV ECX,dword ptr [EBP + 0xffffff60]
004e7734  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
004e773a  41                        INC ECX
004e773b  83c008                    ADD EAX,0x8
004e773e  898d60ffffff              MOV dword ptr [EBP + 0xffffff60],ECX
004e7744  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
004e774a  3b8d50ffffff              CMP ECX,dword ptr [EBP + 0xffffff50]
004e7750  0f83c0020000              JNC 0x004e7a16
004e7756  f30f10a554ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff54]
004e775e  f30f10ad68ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff68]
004e7766  e985feffff                JMP 0x004e75f0
004e776b  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004e776e  83f804                    CMP EAX,0x4
004e7771  7519                      JNZ 0x004e778c
004e7773  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
004e777d  c7861404000000000000      MOV dword ptr [ESI + 0x414],0x0
004e7787  e98a020000                JMP 0x004e7a16
004e778c  83f801                    CMP EAX,0x1
004e778f  0f85f8010000              JNZ 0x004e798d
004e7795  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
004e7799  0f8477020000              JZ 0x004e7a16
004e779f  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
004e77a6  0f846a020000              JZ 0x004e7a16
004e77ac  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
004e77af  83781410                  CMP dword ptr [EAX + 0x14],0x10
004e77b3  7202                      JC 0x004e77b7
004e77b5  8b00                      MOV EAX,dword ptr [EAX]
004e77b7  b93ce1b100                MOV ECX,0xb1e13c
004e77bc  0f1f4000                  NOP dword ptr [EAX]
004e77c0  8a10                      MOV DL,byte ptr [EAX]
004e77c2  3a11                      CMP DL,byte ptr [ECX]
004e77c4  751a                      JNZ 0x004e77e0
004e77c6  84d2                      TEST DL,DL
004e77c8  7412                      JZ 0x004e77dc
004e77ca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004e77cd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004e77d0  750e                      JNZ 0x004e77e0
004e77d2  83c002                    ADD EAX,0x2
004e77d5  83c102                    ADD ECX,0x2
004e77d8  84d2                      TEST DL,DL
004e77da  75e4                      JNZ 0x004e77c0
004e77dc  33c0                      XOR EAX,EAX
004e77de  eb05                      JMP 0x004e77e5
004e77e0  1bc0                      SBB EAX,EAX
004e77e2  83c801                    OR EAX,0x1
004e77e5  85c0                      TEST EAX,EAX
004e77e7  0f8529020000              JNZ 0x004e7a16
004e77ed  6a0c                      PUSH 0xc
004e77ef  8d4e48                    LEA ECX,[ESI + 0x48]
004e77f2  e8293af2ff                CALL 0x0040b220
004e77f7  80787400                  CMP byte ptr [EAX + 0x74],0x0
004e77fb  0f8415020000              JZ 0x004e7a16
004e7801  6a0c                      PUSH 0xc
004e7803  8d4e48                    LEA ECX,[ESI + 0x48]
004e7806  e8153af2ff                CALL 0x0040b220
004e780b  c6407400                  MOV byte ptr [EAX + 0x74],0x0
004e780f  e84c772000                CALL 0x006eef60
004e7814  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e781a  50                        PUSH EAX
004e781b  6a03                      PUSH 0x3
004e781d  6a00                      PUSH 0x0
004e781f  6840b6c700                PUSH 0xc7b640
004e7824  8d873c030000              LEA EAX,[EDI + 0x33c]
004e782a  50                        PUSH EAX
004e782b  6a02                      PUSH 0x2
004e782d  68e8030000                PUSH 0x3e8
004e7832  e8e912f4ff                CALL 0x00428b20
004e7837  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004e783d  8d8d5cffffff              LEA ECX,[EBP + 0xffffff5c]
004e7843  c7855cffffff1e000000      MOV dword ptr [EBP + 0xffffff5c],0x1e
004e784d  e82eef4600                CALL 0x00956780
004e7852  83ec08                    SUB ESP,0x8
004e7855  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004e785b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004e7863  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e786a  6a00                      PUSH 0x0
004e786c  6a02                      PUSH 0x2
004e786e  51                        PUSH ECX
004e786f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e7876  ffb55cffffff              PUSH dword ptr [EBP + 0xffffff5c]
004e787c  e8af634400                CALL 0x0092dc30
004e7881  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004e7888  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
004e788e  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004e7894  50                        PUSH EAX
004e7895  0f1145a8                  MOVUPS xmmword ptr [EBP + -0x58],XMM0
004e7899  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
004e789f  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
004e78a6  0f57c0                    XORPS XMM0,XMM0
004e78a9  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
004e78b0  50                        PUSH EAX
004e78b1  8d8e70a60200              LEA ECX,[ESI + 0x2a670]
004e78b7  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
004e78be  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
004e78c2  c78568ffffff0000a000      MOV dword ptr [EBP + 0xffffff68],0xa00000
004e78cc  e86febf2ff                CALL 0x00416440
004e78d1  8b8538ffffff              MOV EAX,dword ptr [EBP + 0xffffff38]
004e78d7  80780d00                  CMP byte ptr [EAX + 0xd],0x0
004e78db  7514                      JNZ 0x004e78f1
004e78dd  8178100000a000            CMP dword ptr [EAX + 0x10],0xa00000
004e78e4  770b                      JA 0x004e78f1
004e78e6  8d5078                    LEA EDX,[EAX + 0x78]
004e78e9  3b8670a60200              CMP EAX,dword ptr [ESI + 0x2a670]
004e78ef  7505                      JNZ 0x004e78f6
004e78f1  ba60000000                MOV EDX,0x60
004e78f6  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
004e78fc  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
004e7904  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
004e790a  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
004e7910  51                        PUSH ECX
004e7911  c704240000803f            MOV dword ptr [ESP],0x3f800000
004e7918  898544ffffff              MOV dword ptr [EBP + 0xffffff44],EAX
004e791e  8d45a8                    LEA EAX,[EBP + -0x58]
004e7921  6840b6c700                PUSH 0xc7b640
004e7926  50                        PUSH EAX
004e7927  6a00                      PUSH 0x0
004e7929  898d48ffffff              MOV dword ptr [EBP + 0xffffff48],ECX
004e792f  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
004e7935  52                        PUSH EDX
004e7936  ba0a000000                MOV EDX,0xa
004e793b  e870b81c00                CALL 0x006b31b0
004e7940  83c414                    ADD ESP,0x14
004e7943  e818762000                CALL 0x006eef60
004e7948  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
004e794e  660f6ec0                  MOVD XMM0,EAX
004e7952  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e7956  c1e81f                    SHR EAX,0x1f
004e7959  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e7962  660f5ac0                  CVTPD2PS XMM0,XMM0
004e7966  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e796e  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004e7976  f30f5805d0a8ba00          ADDSS XMM0,dword ptr [0x00baa8d0]
004e797e  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
004e7986  e8e5f7f1ff                CALL 0x00407170
004e798b  eb61                      JMP 0x004e79ee
004e798d  8b06                      MOV EAX,dword ptr [ESI]
004e798f  8d4d80                    LEA ECX,[EBP + -0x80]
004e7992  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
004e7995  e8d6e2f4ff                CALL 0x00435c70
004e799a  50                        PUSH EAX
004e799b  8bce                      MOV ECX,ESI
004e799d  ffd2                      CALL EDX
004e799f  8b8630030000              MOV EAX,dword ptr [ESI + 0x330]
004e79a5  f6406001                  TEST byte ptr [EAX + 0x60],0x1
004e79a9  746b                      JZ 0x004e7a16
004e79ab  e8b0752000                CALL 0x006eef60
004e79b0  660f6ec0                  MOVD XMM0,EAX
004e79b4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004e79b8  c1e81f                    SHR EAX,0x1f
004e79bb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004e79c4  8d86e4010000              LEA EAX,[ESI + 0x1e4]
004e79ca  660f5ac0                  CVTPD2PS XMM0,XMM0
004e79ce  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004e79d6  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
004e79de  f30f5805d0a8ba00          ADDSS XMM0,dword ptr [0x00baa8d0]
004e79e6  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
004e79ee  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004e79f4  3bc8                      CMP ECX,EAX
004e79f6  741e                      JZ 0x004e7a16
004e79f8  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
004e79fb  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004e79fe  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
004e7a02  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004e7a06  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
004e7a0b  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004e7a10  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
004e7a13  894128                    MOV dword ptr [ECX + 0x28],EAX
004e7a16  8bb558ffffff              MOV ESI,dword ptr [EBP + 0xffffff58]
004e7a1c  46                        INC ESI
004e7a1d  89b558ffffff              MOV dword ptr [EBP + 0xffffff58],ESI
004e7a23  3b75e8                    CMP ESI,dword ptr [EBP + -0x18]
004e7a26  0f82d4f6ffff              JC 0x004e7100
004e7a2c  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e7a33  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
004e7a37  751f                      JNZ 0x004e7a58
004e7a39  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004e7a40  b101                      MOV CL,0x1
004e7a42  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
004e7a45  6a00                      PUSH 0x0
004e7a47  6a00                      PUSH 0x0
004e7a49  e862ce5700                CALL 0x00a648b0
004e7a4e  83c408                    ADD ESP,0x8
004e7a51  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e7a58  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004e7a5e  83f804                    CMP EAX,0x4
004e7a61  7409                      JZ 0x004e7a6c
004e7a63  83f808                    CMP EAX,0x8
004e7a66  0f8595000000              JNZ 0x004e7b01
004e7a6c  8bcf                      MOV ECX,EDI
004e7a6e  e8cd6d1d00                CALL 0x006be840
004e7a73  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004e7a7b  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004e7a83  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004e7a8b  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004e7a93  e8c822fbff                CALL 0x00499d60
004e7a98  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004e7aa0  f30f5e0510a9ba00          DIVSS XMM0,dword ptr [0x00baa910]
004e7aa8  f30f5805fca7ba00          ADDSS XMM0,dword ptr [0x00baa7fc]
004e7ab0  f30f2cc0                  CVTTSS2SI EAX,XMM0
004e7ab4  2507000080                AND EAX,0x80000007
004e7ab9  7905                      JNS 0x004e7ac0
004e7abb  48                        DEC EAX
004e7abc  83c8f8                    OR EAX,0xfffffff8
004e7abf  40                        INC EAX
004e7ac0  6a01                      PUSH 0x1
004e7ac2  687407b600                PUSH 0xb60774
004e7ac7  8d4f48                    LEA ECX,[EDI + 0x48]
004e7aca  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
004e7ad0  e8fb2af2ff                CALL 0x0040a5d0
004e7ad5  84c0                      TEST AL,AL
004e7ad7  7428                      JZ 0x004e7b01
004e7ad9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004e7adc  85c0                      TEST EAX,EAX
004e7ade  7421                      JZ 0x004e7b01
004e7ae0  660f6e8d68ffffff          MOVD XMM1,dword ptr [EBP + 0xffffff68]
004e7ae8  8d4f78                    LEA ECX,[EDI + 0x78]
004e7aeb  0f5bc9                    CVTDQ2PS XMM1,XMM1
004e7aee  e80d13f2ff                CALL 0x00408e00
004e7af3  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004e7af6  85c0                      TEST EAX,EAX
004e7af8  7407                      JZ 0x004e7b01
004e7afa  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004e7b01  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
004e7b08  7473                      JZ 0x004e7b7d
004e7b0a  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
004e7b10  3dbf010000                CMP EAX,0x1bf
004e7b15  771e                      JA 0x004e7b35
004e7b17  8b8d6cffffff              MOV ECX,dword ptr [EBP + 0xffffff6c]
004e7b1d  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
004e7b28  7f0b                      JG 0x004e7b35
004e7b2a  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
004e7b35  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004e7b3d  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004e7b45  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004e7b4d  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004e7b55  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004e7b5d  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004e7b65  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004e7b6d  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004e7b75  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004e7b7d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004e7b83  6897000000                PUSH 0x97
004e7b88  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
004e7b8e  e81d6b4d00                CALL 0x009be6b0
004e7b93  85c0                      TEST EAX,EAX
004e7b95  7418                      JZ 0x004e7baf
004e7b97  6897000000                PUSH 0x97
004e7b9c  8bc8                      MOV ECX,EAX
004e7b9e  e83d3b2e00                CALL 0x007cb6e0
004e7ba3  83f801                    CMP EAX,0x1
004e7ba6  7e07                      JLE 0x004e7baf
004e7ba8  b901000000                MOV ECX,0x1
004e7bad  eb02                      JMP 0x004e7bb1
004e7baf  33c9                      XOR ECX,ECX
004e7bb1  8b97c40b0000              MOV EDX,dword ptr [EDI + 0xbc4]
004e7bb7  33c0                      XOR EAX,EAX
004e7bb9  85d2                      TEST EDX,EDX
004e7bbb  0f95c0                    SETNZ AL
004e7bbe  3bc1                      CMP EAX,ECX
004e7bc0  0f84bf000000              JZ 0x004e7c85
004e7bc6  b801000000                MOV EAX,0x1
004e7bcb  2bc2                      SUB EAX,EDX
004e7bcd  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004e7bd3  7405                      JZ 0x004e7bda
004e7bd5  0f57c0                    XORPS XMM0,XMM0
004e7bd8  eb08                      JMP 0x004e7be2
004e7bda  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
004e7be2  b9d007b600                MOV ECX,0xb607d0
004e7be7  c745d400000000            MOV dword ptr [EBP + -0x2c],0x0
004e7bee  85c0                      TEST EAX,EAX
004e7bf0  f30f118788030000          MOVSS dword ptr [EDI + 0x388],XMM0
004e7bf8  ba7c07b600                MOV EDX,0xb6077c
004e7bfd  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004e7c04  0f44d1                    CMOVZ EDX,ECX
004e7c07  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004e7c0e  8bca                      MOV ECX,EDX
004e7c10  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004e7c14  8d7101                    LEA ESI,[ECX + 0x1]
004e7c17  8a01                      MOV AL,byte ptr [ECX]
004e7c19  41                        INC ECX
004e7c1a  84c0                      TEST AL,AL
004e7c1c  75f9                      JNZ 0x004e7c17
004e7c1e  2bce                      SUB ECX,ESI
004e7c20  51                        PUSH ECX
004e7c21  52                        PUSH EDX
004e7c22  8d4dd4                    LEA ECX,[EBP + -0x2c]
004e7c25  e8a650f2ff                CALL 0x0040ccd0
004e7c2a  8d45d4                    LEA EAX,[EBP + -0x2c]
004e7c2d  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004e7c34  50                        PUSH EAX
004e7c35  6a00                      PUSH 0x0
004e7c37  8d4f48                    LEA ECX,[EDI + 0x48]
004e7c3a  e8f142f2ff                CALL 0x0040bf30
004e7c3f  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004e7c46  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004e7c49  83fa10                    CMP EDX,0x10
004e7c4c  722e                      JC 0x004e7c7c
004e7c4e  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004e7c51  42                        INC EDX
004e7c52  8bc1                      MOV EAX,ECX
004e7c54  81fa00100000              CMP EDX,0x1000
004e7c5a  7216                      JC 0x004e7c72
004e7c5c  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004e7c5f  83c223                    ADD EDX,0x23
004e7c62  2bc1                      SUB EAX,ECX
004e7c64  83c0fc                    ADD EAX,-0x4
004e7c67  83f81f                    CMP EAX,0x1f
004e7c6a  7606                      JBE 0x004e7c72
004e7c6c  ff159488b100              CALL dword ptr [0x00b18894]
004e7c72  52                        PUSH EDX
004e7c73  51                        PUSH ECX
004e7c74  e8e3746000                CALL 0x00aef15c
004e7c79  83c408                    ADD ESP,0x8
004e7c7c  51                        PUSH ECX
004e7c7d  8d4f48                    LEA ECX,[EDI + 0x48]
004e7c80  e87b43f2ff                CALL 0x0040c000
004e7c85  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004e7c88  64890d00000000            MOV dword ptr FS:[0x0],ECX
004e7c8f  59                        POP ECX
004e7c90  5f                        POP EDI
004e7c91  5e                        POP ESI
004e7c92  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004e7c95  33cd                      XOR ECX,EBP
004e7c97  e88f746000                CALL 0x00aef12b
004e7c9c  8be5                      MOV ESP,EBP
004e7c9e  5d                        POP EBP
004e7c9f  8be3                      MOV ESP,EBX
004e7ca1  5b                        POP EBX
004e7ca2  c3                        RET
004e7ca3  6848f7c700                PUSH 0xc7f748
004e7ca8  e8f0756000                CALL 0x00aef29d
004e7cad  83c404                    ADD ESP,0x4
004e7cb0  833d48f7c700ff            CMP dword ptr [0x00c7f748],-0x1
004e7cb7  0f85b2f3ffff              JNZ 0x004e706f
004e7cbd  686054b100                PUSH 0xb15460
004e7cc2  e8e8786000                CALL 0x00aef5af
004e7cc7  83c404                    ADD ESP,0x4
004e7cca  6848f7c700                PUSH 0xc7f748
004e7ccf  e87f756000                CALL 0x00aef253
004e7cd4  83c404                    ADD ESP,0x4
004e7cd7  e993f3ffff                JMP 0x004e706f
