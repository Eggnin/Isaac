; J460 NPC AI 0x00564f30 AI_00564f30
; types=815
; identities=815.0.0
; entry=00564f30
00564f30  53                        PUSH EBX
00564f31  8bdc                      MOV EBX,ESP
00564f33  83ec08                    SUB ESP,0x8
00564f36  83e4f8                    AND ESP,0xfffffff8
00564f39  83c404                    ADD ESP,0x4
00564f3c  55                        PUSH EBP
00564f3d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00564f40  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00564f44  8bec                      MOV EBP,ESP
00564f46  83ec50                    SUB ESP,0x50
00564f49  56                        PUSH ESI
00564f4a  57                        PUSH EDI
00564f4b  8bf9                      MOV EDI,ECX
00564f4d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00564f53  85c0                      TEST EAX,EAX
00564f55  0f8435060000              JZ 0x00565590
00564f5b  83f806                    CMP EAX,0x6
00564f5e  0f850e070000              JNZ 0x00565672
00564f64  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00564f6c  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00564f74  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00564f7c  f30f109f34030000          MOVSS XMM3,dword ptr [EDI + 0x334]
00564f84  0f2e1d40b6c700            UCOMISS XMM3,dword ptr [0x00c7b640]
00564f8b  f30f115df8                MOVSS dword ptr [EBP + -0x8],XMM3
00564f90  9f                        LAHF
00564f91  f6c444                    TEST AH,0x44
00564f94  0f8adf000000              JP 0x00565079
00564f9a  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00564fa2  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00564fa9  9f                        LAHF
00564faa  f6c444                    TEST AH,0x44
00564fad  0f8ac6000000              JP 0x00565079
00564fb3  e8a89f1800                CALL 0x006eef60
00564fb8  660f6ec0                  MOVD XMM0,EAX
00564fbc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00564fc0  c1e81f                    SHR EAX,0x1f
00564fc3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00564fcc  660f5ac0                  CVTPD2PS XMM0,XMM0
00564fd0  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00564fd8  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00564fe0  f30f58c0                  ADDSS XMM0,XMM0
00564fe4  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
00564fe9  e85285ebff                CALL 0x0041d540
00564fee  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
00564ff6  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
00564ffb  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
00565000  e81b85ebff                CALL 0x0041d520
00565005  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
0056500d  f30f104df8                MOVSS XMM1,dword ptr [EBP + -0x8]
00565012  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0056501a  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00565022  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0056502a  f30f1145fc                MOVSS dword ptr [EBP + -0x4],XMM0
0056502f  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
00565037  e8140aedff                CALL 0x00435a50
0056503c  0f57e4                    XORPS XMM4,XMM4
0056503f  0f2fc4                    COMISS XMM0,XMM4
00565042  760e                      JBE 0x00565052
00565044  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0056504c  f30f5ed0                  DIVSS XMM2,XMM0
00565050  eb05                      JMP 0x00565057
00565052  f30f1055fc                MOVSS XMM2,dword ptr [EBP + -0x4]
00565057  f30f5915a4a3ba00          MULSS XMM2,dword ptr [0x00baa3a4]
0056505f  0f28da                    MOVAPS XMM3,XMM2
00565062  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
0056506a  f30f119738030000          MOVSS dword ptr [EDI + 0x338],XMM2
00565072  f30f115df8                MOVSS dword ptr [EBP + -0x8],XMM3
00565077  eb0b                      JMP 0x00565084
00565079  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
00565081  0f57e4                    XORPS XMM4,XMM4
00565084  33c9                      XOR ECX,ECX
00565086  f30f100570cbba00          MOVSS XMM0,dword ptr [0x00bacb70]
0056508e  0f2fa760030000            COMISS XMM4,dword ptr [EDI + 0x360]
00565095  f30f1155fc                MOVSS dword ptr [EBP + -0x4],XMM2
0056509a  0f97c1                    SETA CL
0056509d  33c0                      XOR EAX,EAX
0056509f  0f2fe3                    COMISS XMM4,XMM3
005650a2  0f97c0                    SETA AL
005650a5  3bc8                      CMP ECX,EAX
005650a7  7408                      JZ 0x005650b1
005650a9  0f57d8                    XORPS XMM3,XMM0
005650ac  f30f115df8                MOVSS dword ptr [EBP + -0x8],XMM3
005650b1  33c9                      XOR ECX,ECX
005650b3  0f2fa764030000            COMISS XMM4,dword ptr [EDI + 0x364]
005650ba  0f97c1                    SETA CL
005650bd  33c0                      XOR EAX,EAX
005650bf  0f2fe2                    COMISS XMM4,XMM2
005650c2  0f97c0                    SETA AL
005650c5  3bc8                      CMP ECX,EAX
005650c7  7408                      JZ 0x005650d1
005650c9  0f57d0                    XORPS XMM2,XMM0
005650cc  f30f1155fc                MOVSS dword ptr [EBP + -0x4],XMM2
005650d1  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005650d8  744f                      JZ 0x00565129
005650da  8d45e0                    LEA EAX,[EBP + -0x20]
005650dd  0f57d2                    XORPS XMM2,XMM2
005650e0  50                        PUSH EAX
005650e1  8bcf                      MOV ECX,EDI
005650e3  e8e8311700                CALL 0x006d82d0
005650e8  f30f104dfc                MOVSS XMM1,dword ptr [EBP + -0x4]
005650ed  8bf0                      MOV ESI,EAX
005650ef  f30f1045f8                MOVSS XMM0,dword ptr [EBP + -0x8]
005650f4  f30f59c0                  MULSS XMM0,XMM0
005650f8  f30f59c9                  MULSS XMM1,XMM1
005650fc  f30f58c1                  ADDSS XMM0,XMM1
00565100  e84b09edff                CALL 0x00435a50
00565105  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0056510d  0f57e4                    XORPS XMM4,XMM4
00565110  0f28d8                    MOVAPS XMM3,XMM0
00565113  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
00565118  f30f591e                  MULSS XMM3,dword ptr [ESI]
0056511c  f30f5845fc                ADDSS XMM0,dword ptr [EBP + -0x4]
00565121  f30f585df8                ADDSS XMM3,dword ptr [EBP + -0x8]
00565126  0f28d0                    MOVAPS XMM2,XMM0
00565129  f30f10af6c030000          MOVSS XMM5,dword ptr [EDI + 0x36c]
00565131  0f2eec                    UCOMISS XMM5,XMM4
00565134  9f                        LAHF
00565135  f6c444                    TEST AH,0x44
00565138  7b3b                      JNP 0x00565175
0056513a  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00565142  0f28c1                    MOVAPS XMM0,XMM1
00565145  f30f59ca                  MULSS XMM1,XMM2
00565149  f30f59c3                  MULSS XMM0,XMM3
0056514d  f30f5ecd                  DIVSS XMM1,XMM5
00565151  f30f5ec5                  DIVSS XMM0,XMM5
00565155  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0056515d  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00565165  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0056516d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00565175  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0056517b  2500080001                AND EAX,0x1000800
00565180  83c800                    OR EAX,0x0
00565183  0f84ed000000              JZ 0x00565276
00565189  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00565190  0f85e0000000              JNZ 0x00565276
00565196  8bcf                      MOV ECX,EDI
00565198  e8a3961500                CALL 0x006be840
0056519d  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005651a5  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005651ad  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
005651b5  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
005651bd  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
005651c4  0f28c1                    MOVAPS XMM0,XMM1
005651c7  f30f114dfc                MOVSS dword ptr [EBP + -0x4],XMM1
005651cc  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
005651d3  f30f59c1                  MULSS XMM0,XMM1
005651d7  0f28ca                    MOVAPS XMM1,XMM2
005651da  f30f59ca                  MULSS XMM1,XMM2
005651de  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
005651e3  f30f58c1                  ADDSS XMM0,XMM1
005651e7  e86408edff                CALL 0x00435a50
005651ec  f30f1055f8                MOVSS XMM2,dword ptr [EBP + -0x8]
005651f1  0f57e4                    XORPS XMM4,XMM4
005651f4  0f2fc4                    COMISS XMM0,XMM4
005651f7  f30f105dfc                MOVSS XMM3,dword ptr [EBP + -0x4]
005651fc  762c                      JBE 0x0056522a
005651fe  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
00565206  f30f5cc8                  SUBSS XMM1,XMM0
0056520a  f30f590d8ca0ba00          MULSS XMM1,dword ptr [0x00baa08c]
00565212  f30f5fcc                  MAXSS XMM1,XMM4
00565216  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
0056521e  f30f5ec8                  DIVSS XMM1,XMM0
00565222  f30f59d1                  MULSS XMM2,XMM1
00565226  f30f59d9                  MULSS XMM3,XMM1
0056522a  f30f10af6c030000          MOVSS XMM5,dword ptr [EDI + 0x36c]
00565232  0f2eec                    UCOMISS XMM5,XMM4
00565235  9f                        LAHF
00565236  f6c444                    TEST AH,0x44
00565239  7b3b                      JNP 0x00565276
0056523b  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00565243  0f28c1                    MOVAPS XMM0,XMM1
00565246  f30f59cb                  MULSS XMM1,XMM3
0056524a  f30f59c2                  MULSS XMM0,XMM2
0056524e  f30f5ecd                  DIVSS XMM1,XMM5
00565252  f30f5ec5                  DIVSS XMM0,XMM5
00565256  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0056525e  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00565266  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0056526e  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00565276  83bf8401000007            CMP dword ptr [EDI + 0x184],0x7
0056527d  f30f109fb40b0000          MOVSS XMM3,dword ptr [EDI + 0xbb4]
00565285  f30f115dfc                MOVSS dword ptr [EBP + -0x4],XMM3
0056528a  750a                      JNZ 0x00565296
0056528c  f30f100d7ca1ba00          MOVSS XMM1,dword ptr [0x00baa17c]
00565294  eb08                      JMP 0x0056529e
00565296  f30f100d58a2ba00          MOVSS XMM1,dword ptr [0x00baa258]
0056529e  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
005652a6  0f28d0                    MOVAPS XMM2,XMM0
005652a9  f30f59d1                  MULSS XMM2,XMM1
005652ad  f30f5897b00b0000          ADDSS XMM2,dword ptr [EDI + 0xbb0]
005652b5  0f28ca                    MOVAPS XMM1,XMM2
005652b8  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
005652c0  f30f59c8                  MULSS XMM1,XMM0
005652c4  f30f58cb                  ADDSS XMM1,XMM3
005652c8  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
005652d0  f30f118f50030000          MOVSS dword ptr [EDI + 0x350],XMM1
005652d8  7519                      JNZ 0x005652f3
005652da  0f2f0dd0a8ba00            COMISS XMM1,dword ptr [0x00baa8d0]
005652e1  0f863e010000              JBE 0x00565425
005652e7  8b07                      MOV EAX,dword ptr [EDI]
005652e9  8bcf                      MOV ECX,EDI
005652eb  ff5028                    CALL dword ptr [EAX + 0x28]
005652ee  e92d010000                JMP 0x00565420
005652f3  0f2f0da8adba00            COMISS XMM1,dword ptr [0x00baada8]
005652fa  0f8625010000              JBE 0x00565425
00565300  0f2fd4                    COMISS XMM2,XMM4
00565303  0f861c010000              JBE 0x00565425
00565309  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00565311  8db73c030000              LEA ESI,[EDI + 0x33c]
00565317  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056531d  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00565322  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00565327  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
0056532c  ff75dc                    PUSH dword ptr [EBP + -0x24]
0056532f  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00565335  ff75d8                    PUSH dword ptr [EBP + -0x28]
00565338  e843b42800                CALL 0x007f0780
0056533d  83f801                    CMP EAX,0x1
00565340  754b                      JNZ 0x0056538d
00565342  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
0056534a  8d45d8                    LEA EAX,[EBP + -0x28]
0056534d  f30f590568a8ba00          MULSS XMM0,dword ptr [0x00baa868]
00565355  50                        PUSH EAX
00565356  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0056535e  56                        PUSH ESI
0056535f  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00565364  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
0056536c  f30f590568a8ba00          MULSS XMM0,dword ptr [0x00baa868]
00565374  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
00565379  e842151500                CALL 0x006b68c0
0056537e  c7878401000007000000      MOV dword ptr [EDI + 0x184],0x7
00565388  e993000000                JMP 0x00565420
0056538d  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00565395  0f2f0578aaba00            COMISS XMM0,dword ptr [0x00baaa78]
0056539c  7612                      JBE 0x005653b0
0056539e  8d4db0                    LEA ECX,[EBP + -0x50]
005653a1  e8ca08edff                CALL 0x00435c70
005653a6  8b17                      MOV EDX,dword ptr [EDI]
005653a8  8bcf                      MOV ECX,EDI
005653aa  50                        PUSH EAX
005653ab  ff5224                    CALL dword ptr [EDX + 0x24]
005653ae  eb70                      JMP 0x00565420
005653b0  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
005653b8  8d45d8                    LEA EAX,[EBP + -0x28]
005653bb  c787b40b00000000c0c0      MOV dword ptr [EDI + 0xbb4],0xc0c00000
005653c5  c787b00b00000000a0c0      MOV dword ptr [EDI + 0xbb0],0xc0a00000
005653cf  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
005653d7  f30f590568a8ba00          MULSS XMM0,dword ptr [0x00baa868]
005653df  50                        PUSH EAX
005653e0  56                        PUSH ESI
005653e1  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
005653e6  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
005653ee  f30f590568a8ba00          MULSS XMM0,dword ptr [0x00baa868]
005653f6  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
005653fb  e8c0141500                CALL 0x006b68c0
00565400  51                        PUSH ECX
00565401  c704240000803f            MOV dword ptr [ESP],0x3f800000
00565408  6a00                      PUSH 0x0
0056540a  6a02                      PUSH 0x2
0056540c  51                        PUSH ECX
0056540d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00565414  8bcf                      MOV ECX,EDI
00565416  6802010000                PUSH 0x102
0056541b  e880171700                CALL 0x006d6ba0
00565420  f30f105dfc                MOVSS XMM3,dword ptr [EBP + -0x4]
00565425  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0056542d  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00565435  2bc8                      SUB ECX,EAX
00565437  33c0                      XOR EAX,EAX
00565439  85c9                      TEST ECX,ECX
0056543b  0f8e31020000              JLE 0x00565672
00565441  660f6ed1                  MOVD XMM2,ECX
00565445  8db7040c0000              LEA ESI,[EDI + 0xc04]
0056544b  0f5bd2                    CVTDQ2PS XMM2,XMM2
0056544e  f30f1155dc                MOVSS dword ptr [EBP + -0x24],XMM2
00565453  40                        INC EAX
00565454  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0056545c  f30f5ccb                  SUBSS XMM1,XMM3
00565460  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
00565463  660f6ec0                  MOVD XMM0,EAX
00565467  0f5bc0                    CVTDQ2PS XMM0,XMM0
0056546a  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
0056546d  8945f8                    MOV dword ptr [EBP + -0x8],EAX
00565470  f30f5ec2                  DIVSS XMM0,XMM2
00565474  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
0056547c  f30f59c8                  MULSS XMM1,XMM0
00565480  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
00565485  f30f58cb                  ADDSS XMM1,XMM3
00565489  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
0056548e  a801                      TEST AL,0x1
00565490  751e                      JNZ 0x005654b0
00565492  8945f8                    MOV dword ptr [EBP + -0x8],EAX
00565495  8b4610                    MOV EAX,dword ptr [ESI + 0x10]
00565498  83c002                    ADD EAX,0x2
0056549b  d1e8                      SHR EAX,0x1
0056549d  394608                    CMP dword ptr [ESI + 0x8],EAX
005654a0  770e                      JA 0x005654b0
005654a2  51                        PUSH ECX
005654a3  8bce                      MOV ECX,ESI
005654a5  e8663ff3ff                CALL 0x00499410
005654aa  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
005654ad  8945f8                    MOV dword ptr [EBP + -0x8],EAX
005654b0  8b4e08                    MOV ECX,dword ptr [ESI + 0x8]
005654b3  8d0409                    LEA EAX,[ECX + ECX*0x1]
005654b6  8d50ff                    LEA EDX,[EAX + -0x1]
005654b9  2355f8                    AND EDX,dword ptr [EBP + -0x8]
005654bc  89560c                    MOV dword ptr [ESI + 0xc],EDX
005654bf  0f44d0                    CMOVZ EDX,EAX
005654c2  4a                        DEC EDX
005654c3  8bc2                      MOV EAX,EDX
005654c5  8955f0                    MOV dword ptr [EBP + -0x10],EDX
005654c8  d1e8                      SHR EAX,0x1
005654ca  8945f8                    MOV dword ptr [EBP + -0x8],EAX
005654cd  8d41ff                    LEA EAX,[ECX + -0x1]
005654d0  8b4df8                    MOV ECX,dword ptr [EBP + -0x8]
005654d3  23c8                      AND ECX,EAX
005654d5  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
005654d8  894df8                    MOV dword ptr [EBP + -0x8],ECX
005654db  8945f4                    MOV dword ptr [EBP + -0xc],EAX
005654de  833c8800                  CMP dword ptr [EAX + ECX*0x4],0x0
005654e2  751f                      JNZ 0x00565503
005654e4  6a10                      PUSH 0x10
005654e6  e8d59f4a00                CALL 0x00a0f4c0
005654eb  8b55f8                    MOV EDX,dword ptr [EBP + -0x8]
005654ee  83c404                    ADD ESP,0x4
005654f1  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
005654f4  890491                    MOV dword ptr [ECX + EDX*0x4],EAX
005654f7  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
005654fd  8b55f0                    MOV EDX,dword ptr [EBP + -0x10]
00565500  8945f4                    MOV dword ptr [EBP + -0xc],EAX
00565503  8b75f4                    MOV ESI,dword ptr [EBP + -0xc]
00565506  8bca                      MOV ECX,EDX
00565508  8b45f8                    MOV EAX,dword ptr [EBP + -0x8]
0056550b  83e101                    AND ECX,0x1
0056550e  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
00565513  8b0486                    MOV EAX,dword ptr [ESI + EAX*0x4]
00565516  8db7040c0000              LEA ESI,[EDI + 0xc04]
0056551c  f30f1104c8                MOVSS dword ptr [EAX + ECX*0x8],XMM0
00565521  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
00565526  f30f1144c804              MOVSS dword ptr [EAX + ECX*0x8 + 0x4],XMM0
0056552c  ff4610                    INC dword ptr [ESI + 0x10]
0056552f  89560c                    MOV dword ptr [ESI + 0xc],EDX
00565532  8b8f140c0000              MOV ECX,dword ptr [EDI + 0xc14]
00565538  83f914                    CMP ECX,0x14
0056553b  7623                      JBE 0x00565560
0056553d  0f1f00                    NOP dword ptr [EAX]
00565540  8d41ff                    LEA EAX,[ECX + -0x1]
00565543  8987140c0000              MOV dword ptr [EDI + 0xc14],EAX
00565549  8bc8                      MOV ECX,EAX
0056554b  85c0                      TEST EAX,EAX
0056554d  7407                      JZ 0x00565556
0056554f  83f914                    CMP ECX,0x14
00565552  77ec                      JA 0x00565540
00565554  eb0a                      JMP 0x00565560
00565556  c787100c000000000000      MOV dword ptr [EDI + 0xc10],0x0
00565560  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00565568  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00565570  f30f105dfc                MOVSS XMM3,dword ptr [EBP + -0x4]
00565575  f30f1055dc                MOVSS XMM2,dword ptr [EBP + -0x24]
0056557a  2bc8                      SUB ECX,EAX
0056557c  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
0056557f  3bc1                      CMP EAX,ECX
00565581  0f8cccfeffff              JL 0x00565453
00565587  5f                        POP EDI
00565588  5e                        POP ESI
00565589  8be5                      MOV ESP,EBP
0056558b  5d                        POP EBP
0056558c  8be3                      MOV ESP,EBX
0056558e  5b                        POP EBX
0056558f  c3                        RET
00565590  c787b00b00000000c0c0      MOV dword ptr [EDI + 0xbb0],0xc0c00000
0056559a  c787b40b000000002041      MOV dword ptr [EDI + 0xbb4],0x41200000
005655a4  c7875003000000002041      MOV dword ptr [EDI + 0x350],0x41200000
005655ae  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
005655b8  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
005655bb  85f6                      TEST ESI,ESI
005655bd  744c                      JZ 0x0056560b
005655bf  837e1410                  CMP dword ptr [ESI + 0x14],0x10
005655c3  8bc6                      MOV EAX,ESI
005655c5  7202                      JC 0x005655c9
005655c7  8b06                      MOV EAX,dword ptr [ESI]
005655c9  b954bcb100                MOV ECX,0xb1bc54
005655ce  6690                      NOP
005655d0  8a10                      MOV DL,byte ptr [EAX]
005655d2  3a11                      CMP DL,byte ptr [ECX]
005655d4  751a                      JNZ 0x005655f0
005655d6  84d2                      TEST DL,DL
005655d8  7412                      JZ 0x005655ec
005655da  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005655dd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005655e0  750e                      JNZ 0x005655f0
005655e2  83c002                    ADD EAX,0x2
005655e5  83c102                    ADD ECX,0x2
005655e8  84d2                      TEST DL,DL
005655ea  75e4                      JNZ 0x005655d0
005655ec  33c0                      XOR EAX,EAX
005655ee  eb05                      JMP 0x005655f5
005655f0  1bc0                      SBB EAX,EAX
005655f2  83c801                    OR EAX,0x1
005655f5  85c0                      TEST EAX,EAX
005655f7  7512                      JNZ 0x0056560b
005655f9  384634                    CMP byte ptr [ESI + 0x34],AL
005655fc  742e                      JZ 0x0056562c
005655fe  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00565604  8d7748                    LEA ESI,[EDI + 0x48]
00565607  7523                      JNZ 0x0056562c
00565609  eb03                      JMP 0x0056560e
0056560b  8d7748                    LEA ESI,[EDI + 0x48]
0056560e  6a01                      PUSH 0x1
00565610  6854bcb100                PUSH 0xb1bc54
00565615  8bce                      MOV ECX,ESI
00565617  e8b44feaff                CALL 0x0040a5d0
0056561c  84c0                      TEST AL,AL
0056561e  740c                      JZ 0x0056562c
00565620  8d4e30                    LEA ECX,[ESI + 0x30]
00565623  e8884beaff                CALL 0x0040a1b0
00565628  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0056562c  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
00565634  8d45d8                    LEA EAX,[EBP + -0x28]
00565637  50                        PUSH EAX
00565638  8d8f040c0000              LEA ECX,[EDI + 0xc04]
0056563e  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
00565645  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
0056564a  e8413bf3ff                CALL 0x00499190
0056564f  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
00565657  8d45d8                    LEA EAX,[EBP + -0x28]
0056565a  50                        PUSH EAX
0056565b  8d8f040c0000              LEA ECX,[EDI + 0xc04]
00565661  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
00565668  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
0056566d  e81e3bf3ff                CALL 0x00499190
00565672  5f                        POP EDI
00565673  5e                        POP ESI
00565674  8be5                      MOV ESP,EBP
00565676  5d                        POP EBP
00565677  8be3                      MOV ESP,EBX
00565679  5b                        POP EBX
0056567a  c3                        RET
