; J460 NPC AI 0x005562b0 AI_005562b0
; types=835
; identities=835.0.0,835.10.0
; entry=005562b0
005562b0  55                        PUSH EBP
005562b1  8bec                      MOV EBP,ESP
005562b3  6aff                      PUSH -0x1
005562b5  68554caf00                PUSH 0xaf4c55
005562ba  64a100000000              MOV EAX,FS:[0x0]
005562c0  50                        PUSH EAX
005562c1  81ec74010000              SUB ESP,0x174
005562c7  a1b493bf00                MOV EAX,[0x00bf93b4]
005562cc  33c5                      XOR EAX,EBP
005562ce  8945f0                    MOV dword ptr [EBP + -0x10],EAX
005562d1  53                        PUSH EBX
005562d2  56                        PUSH ESI
005562d3  57                        PUSH EDI
005562d4  50                        PUSH EAX
005562d5  8d45f4                    LEA EAX,[EBP + -0xc]
005562d8  64a300000000              MOV FS:[0x0],EAX
005562de  8bf9                      MOV EDI,ECX
005562e0  8b8f740b0000              MOV ECX,dword ptr [EDI + 0xb74]
005562e6  83f901                    CMP ECX,0x1
005562e9  0f84e4110000              JZ 0x005574d3
005562ef  83f902                    CMP ECX,0x2
005562f2  0f84db110000              JZ 0x005574d3
005562f8  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005562fb  83f903                    CMP ECX,0x3
005562fe  752a                      JNZ 0x0055632a
00556300  83f80a                    CMP EAX,0xa
00556303  0f8582160000              JNZ 0x0055798b
00556309  8b877c0b0000              MOV EAX,dword ptr [EDI + 0xb7c]
0055630f  3b87bc030000              CMP EAX,dword ptr [EDI + 0x3bc]
00556315  0f8570160000              JNZ 0x0055798b
0055631b  c787800b000000000000      MOV dword ptr [EDI + 0xb80],0x0
00556325  e961160000                JMP 0x0055798b
0055632a  83f80a                    CMP EAX,0xa
0055632d  0f85100b0000              JNZ 0x00556e43
00556333  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00556339  85c0                      TEST EAX,EAX
0055633b  0f8436080000              JZ 0x00556b77
00556341  83f804                    CMP EAX,0x4
00556344  0f8541160000              JNZ 0x0055798b
0055634a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00556352  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0055635a  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00556360  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00556368  85c9                      TEST ECX,ECX
0055636a  0f841b160000              JZ 0x0055798b
00556370  e8bb611500                CALL 0x006ac530
00556375  84c0                      TEST AL,AL
00556377  0f840e160000              JZ 0x0055798b
0055637d  8bcf                      MOV ECX,EDI
0055637f  e8ec13efff                CALL 0x00447770
00556384  8bc8                      MOV ECX,EAX
00556386  e8b5841600                CALL 0x006be840
0055638b  8bd8                      MOV EBX,EAX
0055638d  8bcf                      MOV ECX,EDI
0055638f  899da0feffff              MOV dword ptr [EBP + 0xfffffea0],EBX
00556395  e8d613efff                CALL 0x00447770
0055639a  51                        PUSH ECX
0055639b  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
005563a1  c7042400000000            MOV dword ptr [ESP],0x0
005563a8  51                        PUSH ECX
005563a9  8bc8                      MOV ECX,EAX
005563ab  e890881600                CALL 0x006bec40
005563b0  f30f1087340c0000          MOVSS XMM0,dword ptr [EDI + 0xc34]
005563b8  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
005563c0  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
005563c8  e87371ecff                CALL 0x0041d540
005563cd  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
005563d5  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
005563dd  e83e71ecff                CALL 0x0041d520
005563e2  8bb7a40b0000              MOV ESI,dword ptr [EDI + 0xba4]
005563e8  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
005563f0  85f6                      TEST ESI,ESI
005563f2  7e1a                      JLE 0x0055640e
005563f4  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
005563fc  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00556404  2bc8                      SUB ECX,EAX
00556406  03f1                      ADD ESI,ECX
00556408  89b7a40b0000              MOV dword ptr [EDI + 0xba4],ESI
0055640e  f30f10a73c030000          MOVSS XMM4,dword ptr [EDI + 0x33c]
00556416  f30f10af40030000          MOVSS XMM5,dword ptr [EDI + 0x340]
0055641e  0f28c4                    MOVAPS XMM0,XMM4
00556421  f30f1095c0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffec0]
00556429  0f28cd                    MOVAPS XMM1,XMM5
0055642c  f30f109dc4feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffec4]
00556434  f30f5cc2                  SUBSS XMM0,XMM2
00556438  f30f5ccb                  SUBSS XMM1,XMM3
0055643c  f30f59c0                  MULSS XMM0,XMM0
00556440  f30f59c9                  MULSS XMM1,XMM1
00556444  f30f58c8                  ADDSS XMM1,XMM0
00556448  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
00556450  0f2fc1                    COMISS XMM0,XMM1
00556453  765a                      JBE 0x005564af
00556455  f30f5cd4                  SUBSS XMM2,XMM4
00556459  f30f5cdd                  SUBSS XMM3,XMM5
0055645d  8d45e8                    LEA EAX,[EBP + -0x18]
00556460  50                        PUSH EAX
00556461  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
00556467  f30f1195c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM2
0055646f  f30f119dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM3
00556477  e8b49b4b00                CALL 0x00a10030
0055647c  f30f108da8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea8]
00556484  f30f108598feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe98]
0055648c  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
00556491  f30f5900                  MULSS XMM0,dword ptr [EAX]
00556495  f30f58c8                  ADDSS XMM1,XMM0
00556499  0f2f0dc4a3ba00            COMISS XMM1,dword ptr [0x00baa3c4]
005564a0  760d                      JBE 0x005564af
005564a2  53                        PUSH EBX
005564a3  8bcf                      MOV ECX,EDI
005564a5  e876a71700                CALL 0x006d0c20
005564aa  e9a1010000                JMP 0x00556650
005564af  83bfec0b000000            CMP dword ptr [EDI + 0xbec],0x0
005564b6  0f8594010000              JNZ 0x00556650
005564bc  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
005564c4  0f57d2                    XORPS XMM2,XMM2
005564c7  8bcf                      MOV ECX,EDI
005564c9  e892621500                CALL 0x006ac760
005564ce  85c0                      TEST EAX,EAX
005564d0  0f847a010000              JZ 0x00556650
005564d6  85f6                      TEST ESI,ESI
005564d8  0f8f72010000              JG 0x00556650
005564de  a17816c700                MOV EAX,[0x00c71678]
005564e3  33db                      XOR EBX,EBX
005564e5  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005564eb  8b8164120000              MOV EAX,dword ptr [ECX + 0x1264]
005564f1  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
005564f7  85c0                      TEST EAX,EAX
005564f9  0f844b010000              JZ 0x0055664a
005564ff  8b895c120000              MOV ECX,dword ptr [ECX + 0x125c]
00556505  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
0055650b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00556510  8b3499                    MOV ESI,dword ptr [ECX + EBX*0x4]
00556513  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
00556516  83f901                    CMP ECX,0x1
00556519  742b                      JZ 0x00556546
0055651b  8d41f6                    LEA EAX,[ECX + -0xa]
0055651e  3ddd030000                CMP EAX,0x3dd
00556523  7705                      JA 0x0055652a
00556525  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
00556528  7516                      JNZ 0x00556540
0055652a  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
00556530  83f905                    CMP ECX,0x5
00556533  7411                      JZ 0x00556546
00556535  83f904                    CMP ECX,0x4
00556538  0f85f4000000              JNZ 0x00556632
0055653e  eb06                      JMP 0x00556546
00556540  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
00556546  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0055654d  0f85df000000              JNZ 0x00556632
00556553  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00556559  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
00556561  f30f109e40030000          MOVSS XMM3,dword ptr [ESI + 0x340]
00556569  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00556571  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00556579  f30f5cca                  SUBSS XMM1,XMM2
0055657d  f30f5cc3                  SUBSS XMM0,XMM3
00556581  f30f59c9                  MULSS XMM1,XMM1
00556585  f30f59c0                  MULSS XMM0,XMM0
00556589  f30f58c1                  ADDSS XMM0,XMM1
0055658d  0f2f0540acba00            COMISS XMM0,dword ptr [0x00baac40]
00556594  0f8692000000              JBE 0x0055662c
0055659a  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
005565a2  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
005565aa  0f28c2                    MOVAPS XMM0,XMM2
005565ad  f30f1195b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM2
005565b5  0f28cb                    MOVAPS XMM1,XMM3
005565b8  f30f59c2                  MULSS XMM0,XMM2
005565bc  f30f59cb                  MULSS XMM1,XMM3
005565c0  f30f119dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM3
005565c8  f30f58c1                  ADDSS XMM0,XMM1
005565cc  e87ff4edff                CALL 0x00435a50
005565d1  f30f1095bcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffebc]
005565d9  0f57c9                    XORPS XMM1,XMM1
005565dc  0f2fc1                    COMISS XMM0,XMM1
005565df  761e                      JBE 0x005565ff
005565e1  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005565e9  f30f5ec8                  DIVSS XMM1,XMM0
005565ed  f30f1085b0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb0]
005565f5  f30f59c1                  MULSS XMM0,XMM1
005565f9  f30f59d1                  MULSS XMM2,XMM1
005565fd  eb08                      JMP 0x00556607
005565ff  f30f1085b0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb0]
00556607  f30f108d98feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe98]
0055660f  f30f59c8                  MULSS XMM1,XMM0
00556613  f30f1085a8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea8]
0055661b  f30f59c2                  MULSS XMM0,XMM2
0055661f  f30f58c8                  ADDSS XMM1,XMM0
00556623  0f2f0dc4a3ba00            COMISS XMM1,dword ptr [0x00baa3c4]
0055662a  7716                      JA 0x00556642
0055662c  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
00556632  43                        INC EBX
00556633  3bd8                      CMP EBX,EAX
00556635  7313                      JNC 0x0055664a
00556637  8b8dc4feffff              MOV ECX,dword ptr [EBP + 0xfffffec4]
0055663d  e9cefeffff                JMP 0x00556510
00556642  56                        PUSH ESI
00556643  8bcf                      MOV ECX,EDI
00556645  e8d6a51700                CALL 0x006d0c20
0055664a  8b9da0feffff              MOV EBX,dword ptr [EBP + 0xfffffea0]
00556650  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
00556656  8db59cfeffff              LEA ESI,[EBP + 0xfffffe9c]
0055665c  85c9                      TEST ECX,ECX
0055665e  740e                      JZ 0x0055666e
00556660  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
00556666  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
0055666c  eb0c                      JMP 0x0055667a
0055666e  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
00556674  8b8f38030000              MOV ECX,dword ptr [EDI + 0x338]
0055667a  898da0feffff              MOV dword ptr [EBP + 0xfffffea0],ECX
00556680  89859cfeffff              MOV dword ptr [EBP + 0xfffffe9c],EAX
00556686  f30f1016                  MOVSS XMM2,dword ptr [ESI]
0055668a  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
0055668f  0f28ca                    MOVAPS XMM1,XMM2
00556692  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0055669a  0f28c3                    MOVAPS XMM0,XMM3
0055669d  f30f1195bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM2
005566a5  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005566ad  f30f119db0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM3
005566b5  f30f59c9                  MULSS XMM1,XMM1
005566b9  f30f59c0                  MULSS XMM0,XMM0
005566bd  f30f58c1                  ADDSS XMM0,XMM1
005566c1  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
005566c9  0f2fc8                    COMISS XMM1,XMM0
005566cc  762a                      JBE 0x005566f8
005566ce  e88d881900                CALL 0x006eef60
005566d3  33d2                      XOR EDX,EDX
005566d5  b914000000                MOV ECX,0x14
005566da  f7f1                      DIV ECX
005566dc  85d2                      TEST EDX,EDX
005566de  7508                      JNZ 0x005566e8
005566e0  399fec0b0000              CMP dword ptr [EDI + 0xbec],EBX
005566e6  757a                      JNZ 0x00556762
005566e8  f30f109db0feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffeb0]
005566f0  f30f1095bcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffebc]
005566f8  837f3000                  CMP dword ptr [EDI + 0x30],0x0
005566fc  750a                      JNZ 0x00556708
005566fe  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00556706  eb08                      JMP 0x00556710
00556708  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00556710  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00556716  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
0055671c  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00556724  f30f5c903c030000          SUBSS XMM2,dword ptr [EAX + 0x33c]
0055672c  f30f5c9840030000          SUBSS XMM3,dword ptr [EAX + 0x340]
00556734  8d45e8                    LEA EAX,[EBP + -0x18]
00556737  50                        PUSH EAX
00556738  f30f1195c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM2
00556740  f30f119dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM3
00556748  e8e3984b00                CALL 0x00a10030
0055674d  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00556755  f30f5900                  MULSS XMM0,dword ptr [EAX]
00556759  0f2f0520a1ba00            COMISS XMM0,dword ptr [0x00baa120]
00556760  761d                      JBE 0x0055677f
00556762  6a00                      PUSH 0x0
00556764  8bcf                      MOV ECX,EDI
00556766  e8b5a41700                CALL 0x006d0c20
0055676b  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
00556775  c787a40b00002d000000      MOV dword ptr [EDI + 0xba4],0x2d
0055677f  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00556787  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0055678b  f30f5cc1                  SUBSS XMM0,XMM1
0055678f  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
00556797  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
0055679c  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005567a4  f30f59c0                  MULSS XMM0,XMM0
005567a8  f30f59c9                  MULSS XMM1,XMM1
005567ac  f30f58c1                  ADDSS XMM0,XMM1
005567b0  e89bf2edff                CALL 0x00435a50
005567b5  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
005567bb  0f28c8                    MOVAPS XMM1,XMM0
005567be  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
005567c6  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
005567ce  85c0                      TEST EAX,EAX
005567d0  740c                      JZ 0x005567de
005567d2  f30f59c8                  MULSS XMM1,XMM0
005567d6  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
005567de  3bc3                      CMP EAX,EBX
005567e0  7538                      JNZ 0x0055681a
005567e2  0f57c0                    XORPS XMM0,XMM0
005567e5  f30f59c8                  MULSS XMM1,XMM0
005567e9  f30f1006                  MOVSS XMM0,dword ptr [ESI]
005567ed  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
005567f5  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005567fa  8db5c0feffff              LEA ESI,[EBP + 0xfffffec0]
00556800  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
00556808  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00556810  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
00556818  eb78                      JMP 0x00556892
0055681a  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00556822  8d45e8                    LEA EAX,[EBP + -0x18]
00556825  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00556829  51                        PUSH ECX
0055682a  c7042400002042            MOV dword ptr [ESP],0x42200000
00556831  8d8dacfeffff              LEA ECX,[EBP + 0xfffffeac]
00556837  50                        PUSH EAX
00556838  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
00556840  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00556848  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
00556850  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
00556855  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
0055685d  e89e984b00                CALL 0x00a10100
00556862  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00556866  f30f108dc4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec4]
0055686e  f30f5800                  ADDSS XMM0,dword ptr [EAX]
00556872  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
0055687a  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0055687f  8db5acfeffff              LEA ESI,[EBP + 0xfffffeac]
00556885  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
0055688a  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00556892  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00556896  8d45e8                    LEA EAX,[EBP + -0x18]
00556899  f30f5c85bcfeffff          SUBSS XMM0,dword ptr [EBP + 0xfffffebc]
005568a1  6a00                      PUSH 0x0
005568a3  51                        PUSH ECX
005568a4  c704240000803e            MOV dword ptr [ESP],0x3e800000
005568ab  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
005568b1  50                        PUSH EAX
005568b2  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
005568ba  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005568bf  f30f5cc1                  SUBSS XMM0,XMM1
005568c3  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
005568cb  e830984b00                CALL 0x00a10100
005568d0  50                        PUSH EAX
005568d1  8bcf                      MOV ECX,EDI
005568d3  e878abedff                CALL 0x00431450
005568d8  f30f1006                  MOVSS XMM0,dword ptr [ESI]
005568dc  8d45e8                    LEA EAX,[EBP + -0x18]
005568df  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005568e7  51                        PUSH ECX
005568e8  c704240000003f            MOV dword ptr [ESP],0x3f000000
005568ef  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
005568f5  50                        PUSH EAX
005568f6  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
005568fe  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00556903  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0055690b  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00556913  e8e8974b00                CALL 0x00a10100
00556918  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00556920  0f28c8                    MOVAPS XMM1,XMM0
00556923  f30f5908                  MULSS XMM1,dword ptr [EAX]
00556927  f30f594004                MULSS XMM0,dword ptr [EAX + 0x4]
0055692c  f30f588d98feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffe98]
00556934  f30f5885a8feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffea8]
0055693c  e81f34f4ff                CALL 0x00499d60
00556941  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00556949  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
0055694f  f30f1187340c0000          MOVSS dword ptr [EDI + 0xc34],XMM0
00556957  85c9                      TEST ECX,ECX
00556959  7e19                      JLE 0x00556974
0055695b  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00556963  f30f2c97a0030000          CVTTSS2SI EDX,dword ptr [EDI + 0x3a0]
0055696b  2bd0                      SUB EDX,EAX
0055696d  03d1                      ADD EDX,ECX
0055696f  e964010000                JMP 0x00556ad8
00556974  33f6                      XOR ESI,ESI
00556976  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0055697a  750a                      JNZ 0x00556986
0055697c  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00556984  eb08                      JMP 0x0055698e
00556986  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0055698e  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00556996  e8c5851900                CALL 0x006eef60
0055699b  660f6ec0                  MOVD XMM0,EAX
0055699f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005569a3  c1e81f                    SHR EAX,0x1f
005569a6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005569af  660f5ac0                  CVTPD2PS XMM0,XMM0
005569b3  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005569bb  f30f5905b0aaba00          MULSS XMM0,dword ptr [0x00baaab0]
005569c3  f30f5c05eca9ba00          SUBSS XMM0,dword ptr [0x00baa9ec]
005569cb  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
005569d3  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
005569db  e8606becff                CALL 0x0041d540
005569e0  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
005569e8  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
005569f0  e82b6becff                CALL 0x0041d520
005569f5  f30f10a5bcfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffebc]
005569fd  0f28c8                    MOVAPS XMM1,XMM0
00556a00  f30f1095b0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeb0]
00556a08  0f28dc                    MOVAPS XMM3,XMM4
00556a0b  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00556a11  0f57ed                    XORPS XMM5,XMM5
00556a14  a17816c700                MOV EAX,[0x00c71678]
00556a19  f30f59da                  MULSS XMM3,XMM2
00556a1d  51                        PUSH ECX
00556a1e  f30f59e0                  MULSS XMM4,XMM0
00556a22  c7042400000000            MOV dword ptr [ESP],0x0
00556a29  f30f59cd                  MULSS XMM1,XMM5
00556a2d  f30f59d5                  MULSS XMM2,XMM5
00556a31  f30f5cd9                  SUBSS XMM3,XMM1
00556a35  f30f58e2                  ADDSS XMM4,XMM2
00556a39  0f28cb                    MOVAPS XMM1,XMM3
00556a3c  f30f591da0a9ba00          MULSS XMM3,dword ptr [0x00baa9a0]
00556a44  f30f590d94aaba00          MULSS XMM1,dword ptr [0x00baaa94]
00556a4c  0f28c4                    MOVAPS XMM0,XMM4
00556a4f  f30f590594aaba00          MULSS XMM0,dword ptr [0x00baaa94]
00556a57  f30f58893c030000          ADDSS XMM1,dword ptr [ECX + 0x33c]
00556a5f  f30f5925a0a9ba00          MULSS XMM4,dword ptr [0x00baa9a0]
00556a67  f30f588140030000          ADDSS XMM0,dword ptr [ECX + 0x340]
00556a6f  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
00556a77  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00556a7f  f30f58993c030000          ADDSS XMM3,dword ptr [ECX + 0x33c]
00556a87  f30f58a140030000          ADDSS XMM4,dword ptr [ECX + 0x340]
00556a8f  8d8da4feffff              LEA ECX,[EBP + 0xfffffea4]
00556a95  51                        PUSH ECX
00556a96  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00556a9c  f30f119da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM3
00556aa4  f30f11a5a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM4
00556aac  e8afc82b00                CALL 0x00813360
00556ab1  84c0                      TEST AL,AL
00556ab3  750a                      JNZ 0x00556abf
00556ab5  46                        INC ESI
00556ab6  83fe0a                    CMP ESI,0xa
00556ab9  0f82b7feffff              JC 0x00556976
00556abf  e89c841900                CALL 0x006eef60
00556ac4  33d2                      XOR EDX,EDX
00556ac6  f30f1087340c0000          MOVSS XMM0,dword ptr [EDI + 0xc34]
00556ace  b93c000000                MOV ECX,0x3c
00556ad3  f7f1                      DIV ECX
00556ad5  83c20f                    ADD EDX,0xf
00556ad8  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00556ade  e85dbc1200                CALL 0x00682740
00556ae3  f30f5e0510a9ba00          DIVSS XMM0,dword ptr [0x00baa910]
00556aeb  83ec08                    SUB ESP,0x8
00556aee  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00556af6  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
00556afe  d985c4feffff              FLD dword ptr [EBP + 0xfffffec4]
00556b04  dd1c24                    FSTP qword ptr [ESP]
00556b07  e80b9e5900                CALL 0x00af0917
00556b0c  d99dc4feffff              FSTP dword ptr [EBP + 0xfffffec4]
00556b12  d985c4feffff              FLD dword ptr [EBP + 0xfffffec4]
00556b18  ba04000000                MOV EDX,0x4
00556b1d  d99dc4feffff              FSTP dword ptr [EBP + 0xfffffec4]
00556b23  f30f2c85c4feffff          CVTTSS2SI EAX,dword ptr [EBP + 0xfffffec4]
00556b2b  83c408                    ADD ESP,0x8
00556b2e  2bd0                      SUB EDX,EAX
00556b30  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00556b34  8d4808                    LEA ECX,[EAX + 0x8]
00556b37  0f45d1                    CMOVNZ EDX,ECX
00556b3a  81e207000080              AND EDX,0x80000007
00556b40  7905                      JNS 0x00556b47
00556b42  4a                        DEC EDX
00556b43  83caf8                    OR EDX,0xfffffff8
00556b46  42                        INC EDX
00556b47  83fa07                    CMP EDX,0x7
00556b4a  0f873b0e0000              JA 0x0055798b
00556b50  52                        PUSH EDX
00556b51  68c8e4b100                PUSH 0xb1e4c8
00556b56  8d45e0                    LEA EAX,[EBP + -0x20]
00556b59  6a10                      PUSH 0x10
00556b5b  50                        PUSH EAX
00556b5c  e8bf78ecff                CALL 0x0041e420
00556b61  83c410                    ADD ESP,0x10
00556b64  8d45e0                    LEA EAX,[EBP + -0x20]
00556b67  8d4f48                    LEA ECX,[EDI + 0x48]
00556b6a  6a00                      PUSH 0x0
00556b6c  50                        PUSH EAX
00556b6d  e80e38ebff                CALL 0x0040a380
00556b72  e9140e0000                JMP 0x0055798b
00556b77  838f6801000001            OR dword ptr [EDI + 0x168],0x1
00556b7e  8d4f48                    LEA ECX,[EDI + 0x48]
00556b81  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
00556b88  6a00                      PUSH 0x0
00556b8a  6828d4b100                PUSH 0xb1d428
00556b8f  c787180f000007000000      MOV dword ptr [EDI + 0xf18],0x7
00556b99  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00556ba0  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00556baa  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00556bb4  c787500300000000a0c1      MOV dword ptr [EDI + 0x350],0xc1a00000
00556bbe  e8bd37ebff                CALL 0x0040a380
00556bc3  c787340c00000000b442      MOV dword ptr [EDI + 0xc34],0x42b40000
00556bcd  8d4f48                    LEA ECX,[EDI + 0x48]
00556bd0  c787b80b000000401c46      MOV dword ptr [EDI + 0xbb8],0x461c4000
00556bda  0f57c0                    XORPS XMM0,XMM0
00556bdd  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00556be5  f30f58c8                  ADDSS XMM1,XMM0
00556be9  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00556bf1  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
00556bf9  6a00                      PUSH 0x0
00556bfb  680cd2b100                PUSH 0xb1d20c
00556c00  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
00556c08  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00556c10  e82b3debff                CALL 0x0040a940
00556c15  6a01                      PUSH 0x1
00556c17  8d4f48                    LEA ECX,[EDI + 0x48]
00556c1a  e80146ebff                CALL 0x0040b220
00556c1f  c6407400                  MOV byte ptr [EAX + 0x74],0x0
00556c23  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00556c29  85c9                      TEST ECX,ECX
00556c2b  0f845a0d0000              JZ 0x0055798b
00556c31  e8fa581500                CALL 0x006ac530
00556c36  84c0                      TEST AL,AL
00556c38  0f844d0d0000              JZ 0x0055798b
00556c3e  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00556c42  8bcf                      MOV ECX,EDI
00556c44  6814ecb100                PUSH 0xb1ec14
00556c49  0f94c0                    SETZ AL
00556c4c  888748010000              MOV byte ptr [EDI + 0x148],AL
00556c52  8d45e8                    LEA EAX,[EBP + -0x18]
00556c55  50                        PUSH EAX
00556c56  e895fe1500                CALL 0x006b6af0
00556c5b  0f57c9                    XORPS XMM1,XMM1
00556c5e  8bcf                      MOV ECX,EDI
00556c60  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00556c64  f30f58874c030000          ADDSS XMM0,dword ptr [EDI + 0x34c]
00556c6c  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00556c74  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00556c7c  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00556c84  f30f58c1                  ADDSS XMM0,XMM1
00556c88  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
00556c90  f30f108750030000          MOVSS XMM0,dword ptr [EDI + 0x350]
00556c98  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
00556c9d  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00556ca5  e8c60aefff                CALL 0x00447770
00556caa  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00556cae  ba4805b600                MOV EDX,0xb60548
00556cb3  b95405b600                MOV ECX,0xb60554
00556cb8  0f45ca                    CMOVNZ ECX,EDX
00556cbb  51                        PUSH ECX
00556cbc  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
00556cc2  51                        PUSH ECX
00556cc3  8bc8                      MOV ECX,EAX
00556cc5  e826fe1500                CALL 0x006b6af0
00556cca  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00556cd0  8d9f040c0000              LEA EBX,[EDI + 0xc04]
00556cd6  f30f1095b0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeb0]
00556cde  0f57c0                    XORPS XMM0,XMM0
00556ce1  f30f10ada8feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffea8]
00556ce9  33f6                      XOR ESI,ESI
00556ceb  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
00556cf3  f30f10a040030000          MOVSS XMM4,dword ptr [EAX + 0x340]
00556cfb  f30f589dc0feffff          ADDSS XMM3,dword ptr [EBP + 0xfffffec0]
00556d03  f30f58e0                  ADDSS XMM4,XMM0
00556d07  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
00556d0f  f30f5c85bcfeffff          SUBSS XMM0,dword ptr [EBP + 0xfffffebc]
00556d17  f30f5cda                  SUBSS XMM3,XMM2
00556d1b  f30f5ce5                  SUBSS XMM4,XMM5
00556d1f  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
00556d27  f30f119da0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM3
00556d2f  f30f11a5b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM4
00556d37  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00556d40  660f6ec6                  MOVD XMM0,ESI
00556d44  8bc6                      MOV EAX,ESI
00556d46  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00556d4a  c1e81f                    SHR EAX,0x1f
00556d4d  8bcb                      MOV ECX,EBX
00556d4f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00556d58  8d8584feffff              LEA EAX,[EBP + 0xfffffe84]
00556d5e  50                        PUSH EAX
00556d5f  660f5ac8                  CVTPD2PS XMM1,XMM0
00556d63  f30f5e0d84a7ba00          DIVSS XMM1,dword ptr [0x00baa784]
00556d6b  0f28c1                    MOVAPS XMM0,XMM1
00556d6e  f30f118dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM1
00556d76  f30f59c3                  MULSS XMM0,XMM3
00556d7a  f30f58c2                  ADDSS XMM0,XMM2
00556d7e  f30f118584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM0
00556d86  0f28c1                    MOVAPS XMM0,XMM1
00556d89  f30f59c4                  MULSS XMM0,XMM4
00556d8d  f30f58c5                  ADDSS XMM0,XMM5
00556d91  f30f118588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM0
00556d99  e8b2a1f5ff                CALL 0x004b0f50
00556d9e  8d858cfeffff              LEA EAX,[EBP + 0xfffffe8c]
00556da4  c7858cfeffff00000000      MOV dword ptr [EBP + 0xfffffe8c],0x0
00556dae  50                        PUSH EAX
00556daf  8bcb                      MOV ECX,EBX
00556db1  c78590feffff00000000      MOV dword ptr [EBP + 0xfffffe90],0x0
00556dbb  e890a1f5ff                CALL 0x004b0f50
00556dc0  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
00556dc8  8d45e8                    LEA EAX,[EBP + -0x18]
00556dcb  f30f598598feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe98]
00556dd3  8bcb                      MOV ECX,EBX
00556dd5  50                        PUSH EAX
00556dd6  c745ec00000000            MOV dword ptr [EBP + -0x14],0x0
00556ddd  f30f5885bcfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffebc]
00556de5  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00556dea  e861a1f5ff                CALL 0x004b0f50
00556def  f30f1095b0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeb0]
00556df7  46                        INC ESI
00556df8  f30f109da0feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffea0]
00556e00  f30f10a5b4feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffeb4]
00556e08  f30f10ada8feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffea8]
00556e10  83fe06                    CMP ESI,0x6
00556e13  0f8227ffffff              JC 0x00556d40
00556e19  53                        PUSH EBX
00556e1a  8d8f180c0000              LEA ECX,[EDI + 0xc18]
00556e20  e81ba0f5ff                CALL 0x004b0e40
00556e25  be0a000000                MOV ESI,0xa
00556e2a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00556e30  6a00                      PUSH 0x0
00556e32  8bcf                      MOV ECX,EDI
00556e34  e86721f9ff                CALL 0x004e8fa0
00556e39  83ee01                    SUB ESI,0x1
00556e3c  75f2                      JNZ 0x00556e30
00556e3e  e9480b0000                JMP 0x0055798b
00556e43  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00556e4b  6a01                      PUSH 0x1
00556e4d  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00556e55  660f6e9fa00b0000          MOVD XMM3,dword ptr [EDI + 0xba0]
00556e5d  0f57d2                    XORPS XMM2,XMM2
00556e60  f30f100d50a9ba00          MOVSS XMM1,dword ptr [0x00baa950]
00556e68  2bc8                      SUB ECX,EAX
00556e6a  0f5bdb                    CVTDQ2PS XMM3,XMM3
00556e6d  898db0feffff              MOV dword ptr [EBP + 0xfffffeb0],ECX
00556e73  8bcf                      MOV ECX,EDI
00556e75  e8c61f1800                CALL 0x006d8e40
00556e7a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00556e80  85c0                      TEST EAX,EAX
00556e82  0f84d3040000              JZ 0x0055735b
00556e88  83f804                    CMP EAX,0x4
00556e8b  0f84d3000000              JZ 0x00556f64
00556e91  83f808                    CMP EAX,0x8
00556e94  0f85f10a0000              JNZ 0x0055798b
00556e9a  68dcd2b100                PUSH 0xb1d2dc
00556e9f  8d4f48                    LEA ECX,[EDI + 0x48]
00556ea2  e88941ebff                CALL 0x0040b030
00556ea7  84c0                      TEST AL,AL
00556ea9  7450                      JZ 0x00556efb
00556eab  6a00                      PUSH 0x0
00556ead  6a01                      PUSH 0x1
00556eaf  57                        PUSH EDI
00556eb0  51                        PUSH ECX
00556eb1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00556eb7  8db73c030000              LEA ESI,[EDI + 0x33c]
00556ebd  c704240000f042            MOV dword ptr [ESP],0x42f00000
00556ec4  56                        PUSH ESI
00556ec5  e896d41a00                CALL 0x00704360
00556eca  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
00556ed0  e85b80eeff                CALL 0x0043ef30
00556ed5  50                        PUSH EAX
00556ed6  6a09                      PUSH 0x9
00556ed8  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
00556ede  c78594feffff00000041      MOV dword ptr [EBP + 0xfffffe94],0x41000000
00556ee8  50                        PUSH EAX
00556ee9  56                        PUSH ESI
00556eea  8bcf                      MOV ECX,EDI
00556eec  c78598feffff0000c040      MOV dword ptr [EBP + 0xfffffe98],0x40c00000
00556ef6  e8e5431700                CALL 0x006cb2e0
00556efb  68eca4b100                PUSH 0xb1a4ec
00556f00  8d4f48                    LEA ECX,[EDI + 0x48]
00556f03  e84836ebff                CALL 0x0040a550
00556f08  84c0                      TEST AL,AL
00556f0a  743b                      JZ 0x00556f47
00556f0c  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00556f13  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00556f1d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00556f27  7407                      JZ 0x00556f30
00556f29  ba3c000000                MOV EDX,0x3c
00556f2e  eb11                      JMP 0x00556f41
00556f30  e82b801900                CALL 0x006eef60
00556f35  33d2                      XOR EDX,EDX
00556f37  b996000000                MOV ECX,0x96
00556f3c  f7f1                      DIV ECX
00556f3e  83c23c                    ADD EDX,0x3c
00556f41  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00556f47  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00556f4f  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00556f57  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00556f5f  e9270a0000                JMP 0x0055798b
00556f64  6818ddb100                PUSH 0xb1dd18
00556f69  8d4d80                    LEA ECX,[EBP + -0x80]
00556f6c  e8cf53ebff                CALL 0x0040c340
00556f71  6818ddb100                PUSH 0xb1dd18
00556f76  8d4d98                    LEA ECX,[EBP + -0x68]
00556f79  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00556f80  e8bb53ebff                CALL 0x0040c340
00556f85  68c0dab100                PUSH 0xb1dac0
00556f8a  8d4db0                    LEA ECX,[EBP + -0x50]
00556f8d  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00556f91  e8aa53ebff                CALL 0x0040c340
00556f96  6888dab100                PUSH 0xb1da88
00556f9b  8d4dc8                    LEA ECX,[EBP + -0x38]
00556f9e  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
00556fa2  e89953ebff                CALL 0x0040c340
00556fa7  51                        PUSH ECX
00556fa8  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
00556fac  8d4580                    LEA EAX,[EBP + -0x80]
00556faf  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00556fb6  8bcf                      MOV ECX,EDI
00556fb8  50                        PUSH EAX
00556fb9  8d4598                    LEA EAX,[EBP + -0x68]
00556fbc  50                        PUSH EAX
00556fbd  8d45b0                    LEA EAX,[EBP + -0x50]
00556fc0  50                        PUSH EAX
00556fc1  8d45c8                    LEA EAX,[EBP + -0x38]
00556fc4  50                        PUSH EAX
00556fc5  e8a6a81600                CALL 0x006c1870
00556fca  8d4dc8                    LEA ECX,[EBP + -0x38]
00556fcd  e86e60ebff                CALL 0x0040d040
00556fd2  8d4db0                    LEA ECX,[EBP + -0x50]
00556fd5  e86660ebff                CALL 0x0040d040
00556fda  8d4d98                    LEA ECX,[EBP + -0x68]
00556fdd  e85e60ebff                CALL 0x0040d040
00556fe2  8d4d80                    LEA ECX,[EBP + -0x80]
00556fe5  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00556fec  e84f60ebff                CALL 0x0040d040
00556ff1  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00556ff8  0f8484000000              JZ 0x00557082
00556ffe  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00557006  8d45e8                    LEA EAX,[EBP + -0x18]
00557009  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00557011  0f57d2                    XORPS XMM2,XMM2
00557014  50                        PUSH EAX
00557015  8bcf                      MOV ECX,EDI
00557017  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055701f  e8ac121800                CALL 0x006d82d0
00557024  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0055702c  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00557030  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
00557035  f30f5915b0a4ba00          MULSS XMM2,dword ptr [0x00baa4b0]
0055703d  f30f591db0a4ba00          MULSS XMM3,dword ptr [0x00baa4b0]
00557045  f30f5915c0a4ba00          MULSS XMM2,dword ptr [0x00baa4c0]
0055704d  f30f591dc0a4ba00          MULSS XMM3,dword ptr [0x00baa4c0]
00557055  f30f59d1                  MULSS XMM2,XMM1
00557059  f30f59d9                  MULSS XMM3,XMM1
0055705d  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
00557065  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
0055706d  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00557075  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0055707d  e9b5010000                JMP 0x00557237
00557082  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0055708a  33c0                      XOR EAX,EAX
0055708c  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00557094  f30f1025b4acba00          MOVSS XMM4,dword ptr [0x00baacb4]
0055709c  0f28dc                    MOVAPS XMM3,XMM4
0055709f  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
005570a7  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
005570af  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
005570b5  3987000c0000              CMP dword ptr [EDI + 0xc00],EAX
005570bb  0f866a010000              JBE 0x0055722b
005570c1  8b9ffc0b0000              MOV EBX,dword ptr [EDI + 0xbfc]
005570c7  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
005570cd  49                        DEC ECX
005570ce  8d1418                    LEA EDX,[EAX + EBX*0x1]
005570d1  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
005570d7  8bf2                      MOV ESI,EDX
005570d9  83e203                    AND EDX,0x3
005570dc  c1ee02                    SHR ESI,0x2
005570df  23ce                      AND ECX,ESI
005570e1  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005570e4  833c9000                  CMP dword ptr [EAX + EDX*0x4],0x0
005570e8  0f8491000000              JZ 0x0055717f
005570ee  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
005570f4  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
005570fa  49                        DEC ECX
005570fb  23ce                      AND ECX,ESI
005570fd  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00557100  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00557106  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
00557109  83b91466020002            CMP dword ptr [ECX + 0x26614],0x2
00557110  7c06                      JL 0x00557118
00557112  83782801                  CMP dword ptr [EAX + 0x28],0x1
00557116  740d                      JZ 0x00557125
00557118  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
0055711b  83e80a                    SUB EAX,0xa
0055711e  3ddd030000                CMP EAX,0x3dd
00557123  775a                      JA 0x0055717f
00557125  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
0055712b  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
00557131  49                        DEC ECX
00557132  23ce                      AND ECX,ESI
00557134  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00557137  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
0055713a  f30f1090b80b0000          MOVSS XMM2,dword ptr [EAX + 0xbb8]
00557142  0f2fda                    COMISS XMM3,XMM2
00557145  7638                      JBE 0x0055717f
00557147  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
0055714d  0f28da                    MOVAPS XMM3,XMM2
00557150  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
00557156  49                        DEC ECX
00557157  23ce                      AND ECX,ESI
00557159  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0055715c  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
0055715f  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00557167  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0055716f  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
00557177  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
0055717f  8b85bcfeffff              MOV EAX,dword ptr [EBP + 0xfffffebc]
00557185  40                        INC EAX
00557186  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
0055718c  3b87000c0000              CMP EAX,dword ptr [EDI + 0xc00]
00557192  0f8229ffffff              JC 0x005570c1
00557198  0f2fe3                    COMISS XMM4,XMM3
0055719b  0f868a000000              JBE 0x0055722b
005571a1  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
005571a9  0f57e4                    XORPS XMM4,XMM4
005571ac  0f2fdc                    COMISS XMM3,XMM4
005571af  7659                      JBE 0x0055720a
005571b1  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005571b9  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005571c1  f30f59c0                  MULSS XMM0,XMM0
005571c5  f30f59c9                  MULSS XMM1,XMM1
005571c9  f30f58c1                  ADDSS XMM0,XMM1
005571cd  e87ee8edff                CALL 0x00435a50
005571d2  f30f5e05d0a9ba00          DIVSS XMM0,dword ptr [0x00baa9d0]
005571da  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
005571e0  c785bcfeffff0000003f      MOV dword ptr [EBP + 0xfffffebc],0x3f000000
005571ea  8d8dbcfeffff              LEA ECX,[EBP + 0xfffffebc]
005571f0  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
005571f8  0f2fc8                    COMISS XMM1,XMM0
005571fb  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
00557203  0f46c1                    CMOVBE EAX,ECX
00557206  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0055720a  6a01                      PUSH 0x1
0055720c  6884030000                PUSH 0x384
00557211  8d8f14040000              LEA ECX,[EDI + 0x414]
00557217  51                        PUSH ECX
00557218  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
0055721e  f30f111424                MOVSS dword ptr [ESP],XMM2
00557223  50                        PUSH EAX
00557224  e897c12800                CALL 0x007e33c0
00557229  eb0c                      JMP 0x00557237
0055722b  8d8f14040000              LEA ECX,[EDI + 0x414]
00557231  51                        PUSH ECX
00557232  e859f92800                CALL 0x007e6b90
00557237  e8247d1900                CALL 0x006eef60
0055723c  33d2                      XOR EDX,EDX
0055723e  b928000000                MOV ECX,0x28
00557243  f7f1                      DIV ECX
00557245  85d2                      TEST EDX,EDX
00557247  751f                      JNZ 0x00557268
00557249  51                        PUSH ECX
0055724a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00557251  52                        PUSH EDX
00557252  6a3c                      PUSH 0x3c
00557254  51                        PUSH ECX
00557255  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055725c  8bcf                      MOV ECX,EDI
0055725e  68a7000000                PUSH 0xa7
00557263  e838f91700                CALL 0x006d6ba0
00557268  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0055726e  85c0                      TEST EAX,EAX
00557270  7e14                      JLE 0x00557286
00557272  2b85b0feffff              SUB EAX,dword ptr [EBP + 0xfffffeb0]
00557278  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0055727e  85c0                      TEST EAX,EAX
00557280  0f8f05070000              JG 0x0055798b
00557286  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055728d  7512                      JNZ 0x005572a1
0055728f  e8cc7c1900                CALL 0x006eef60
00557294  33d2                      XOR EDX,EDX
00557296  b93c000000                MOV ECX,0x3c
0055729b  f7f1                      DIV ECX
0055729d  85d2                      TEST EDX,EDX
0055729f  741b                      JZ 0x005572bc
005572a1  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
005572a9  8bcf                      MOV ECX,EDI
005572ab  6a07                      PUSH 0x7
005572ad  6a00                      PUSH 0x0
005572af  e8ac3b1700                CALL 0x006cae60
005572b4  84c0                      TEST AL,AL
005572b6  0f84cf060000              JZ 0x0055798b
005572bc  680808b600                PUSH 0xb60808
005572c1  8d4dc8                    LEA ECX,[EBP + -0x38]
005572c4  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005572ce  e86d50ebff                CALL 0x0040c340
005572d3  680808b600                PUSH 0xb60808
005572d8  8d4db0                    LEA ECX,[EBP + -0x50]
005572db  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
005572e2  e85950ebff                CALL 0x0040c340
005572e7  682008b600                PUSH 0xb60820
005572ec  8d4d98                    LEA ECX,[EBP + -0x68]
005572ef  c645fc05                  MOV byte ptr [EBP + -0x4],0x5
005572f3  e84850ebff                CALL 0x0040c340
005572f8  680c0ab600                PUSH 0xb60a0c
005572fd  8d4d80                    LEA ECX,[EBP + -0x80]
00557300  c645fc06                  MOV byte ptr [EBP + -0x4],0x6
00557304  e83750ebff                CALL 0x0040c340
00557309  51                        PUSH ECX
0055730a  c645fc07                  MOV byte ptr [EBP + -0x4],0x7
0055730e  8d45c8                    LEA EAX,[EBP + -0x38]
00557311  c7042400000000            MOV dword ptr [ESP],0x0
00557318  8bcf                      MOV ECX,EDI
0055731a  50                        PUSH EAX
0055731b  8d45b0                    LEA EAX,[EBP + -0x50]
0055731e  50                        PUSH EAX
0055731f  8d4598                    LEA EAX,[EBP + -0x68]
00557322  50                        PUSH EAX
00557323  8d4580                    LEA EAX,[EBP + -0x80]
00557326  50                        PUSH EAX
00557327  e844a51600                CALL 0x006c1870
0055732c  8d4d80                    LEA ECX,[EBP + -0x80]
0055732f  e80c5debff                CALL 0x0040d040
00557334  8d4d98                    LEA ECX,[EBP + -0x68]
00557337  e8045debff                CALL 0x0040d040
0055733c  8d4db0                    LEA ECX,[EBP + -0x50]
0055733f  e8fc5cebff                CALL 0x0040d040
00557344  8d4dc8                    LEA ECX,[EBP + -0x38]
00557347  e8f45cebff                CALL 0x0040d040
0055734c  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00557356  e930060000                JMP 0x0055798b
0055735b  6a00                      PUSH 0x0
0055735d  6818ddb100                PUSH 0xb1dd18
00557362  8d4f48                    LEA ECX,[EDI + 0x48]
00557365  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0055736f  e86c33ebff                CALL 0x0040a6e0
00557374  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0055737b  7407                      JZ 0x00557384
0055737d  ba3c000000                MOV EDX,0x3c
00557382  eb11                      JMP 0x00557395
00557384  e8d77b1900                CALL 0x006eef60
00557389  33d2                      XOR EDX,EDX
0055738b  b996000000                MOV ECX,0x96
00557390  f7f1                      DIV ECX
00557392  83c23c                    ADD EDX,0x3c
00557395  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
0055739b  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
005573a1  51                        PUSH ECX
005573a2  6a02                      PUSH 0x2
005573a4  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
005573aa  c785c4feffff00000000      MOV dword ptr [EBP + 0xfffffec4],0x0
005573b4  e80749efff                CALL 0x0044bcc0
005573b9  33db                      XOR EBX,EBX
005573bb  8d87dc030000              LEA EAX,[EDI + 0x3dc]
005573c1  8bc8                      MOV ECX,EAX
005573c3  e8281d2900                CALL 0x007e90f0
005573c8  85db                      TEST EBX,EBX
005573ca  750a                      JNZ 0x005573d6
005573cc  f30f100514aeba00          MOVSS XMM0,dword ptr [0x00baae14]
005573d4  eb08                      JMP 0x005573de
005573d6  f30f1005d0a8ba00          MOVSS XMM0,dword ptr [0x00baa8d0]
005573de  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
005573e6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005573ec  50                        PUSH EAX
005573ed  53                        PUSH EBX
005573ee  57                        PUSH EDI
005573ef  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
005573f4  8d45e8                    LEA EAX,[EBP + -0x18]
005573f7  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005573ff  f30f5805d0a8ba00          ADDSS XMM0,dword ptr [0x00baa8d0]
00557407  6840b6c700                PUSH 0xc7b640
0055740c  50                        PUSH EAX
0055740d  6a0a                      PUSH 0xa
0055740f  6843030000                PUSH 0x343
00557414  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
00557419  e80217edff                CALL 0x00428b20
0055741e  8b8ffc0b0000              MOV ECX,dword ptr [EDI + 0xbfc]
00557424  8bf0                      MOV ESI,EAX
00557426  8d1419                    LEA EDX,[ECX + EBX*0x1]
00557429  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
0055742f  8bc2                      MOV EAX,EDX
00557431  49                        DEC ECX
00557432  c1e802                    SHR EAX,0x2
00557435  83e203                    AND EDX,0x3
00557438  23c8                      AND ECX,EAX
0055743a  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
00557440  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00557443  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
00557446  8d0490                    LEA EAX,[EAX + EDX*0x4]
00557449  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
0055744f  85c9                      TEST ECX,ECX
00557451  741e                      JZ 0x00557471
00557453  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
00557459  81c1cc030000              ADD ECX,0x3cc
0055745f  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
00557465  50                        PUSH EAX
00557466  e8a57df7ff                CALL 0x004cf210
0055746b  8b85bcfeffff              MOV EAX,dword ptr [EBP + 0xfffffebc]
00557471  8930                      MOV dword ptr [EAX],ESI
00557473  85f6                      TEST ESI,ESI
00557475  7408                      JZ 0x0055747f
00557477  50                        PUSH EAX
00557478  8bce                      MOV ECX,ESI
0055747a  e87168f7ff                CALL 0x004cdcf0
0055747f  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00557485  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0055748b  85c9                      TEST ECX,ECX
0055748d  741e                      JZ 0x005574ad
0055748f  8985c4feffff              MOV dword ptr [EBP + 0xfffffec4],EAX
00557495  81c1cc030000              ADD ECX,0x3cc
0055749b  8d85c4feffff              LEA EAX,[EBP + 0xfffffec4]
005574a1  50                        PUSH EAX
005574a2  e8697df7ff                CALL 0x004cf210
005574a7  8d86bc030000              LEA EAX,[ESI + 0x3bc]
005574ad  50                        PUSH EAX
005574ae  8bcf                      MOV ECX,EDI
005574b0  8938                      MOV dword ptr [EAX],EDI
005574b2  e83968f7ff                CALL 0x004cdcf0
005574b7  8b06                      MOV EAX,dword ptr [ESI]
005574b9  8bce                      MOV ECX,ESI
005574bb  ff500c                    CALL dword ptr [EAX + 0xc]
005574be  43                        INC EBX
005574bf  8d87dc030000              LEA EAX,[EDI + 0x3dc]
005574c5  83fb02                    CMP EBX,0x2
005574c8  0f82f3feffff              JC 0x005573c1
005574ce  e9b8040000                JMP 0x0055798b
005574d3  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
005574d7  0f85ae040000              JNZ 0x0055798b
005574dd  8b97bc030000              MOV EDX,dword ptr [EDI + 0x3bc]
005574e3  85d2                      TEST EDX,EDX
005574e5  0f8488040000              JZ 0x00557973
005574eb  a17816c700                MOV EAX,[0x00c71678]
005574f0  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
005574f7  7c06                      JL 0x005574ff
005574f9  837a2801                  CMP dword ptr [EDX + 0x28],0x1
005574fd  7411                      JZ 0x00557510
005574ff  8b4228                    MOV EAX,dword ptr [EDX + 0x28]
00557502  83e80a                    SUB EAX,0xa
00557505  3ddd030000                CMP EAX,0x3dd
0055750a  0f8763040000              JA 0x00557973
00557510  6814ecb100                PUSH 0xb1ec14
00557515  8d45e8                    LEA EAX,[EBP + -0x18]
00557518  8bcf                      MOV ECX,EDI
0055751a  50                        PUSH EAX
0055751b  e8d0f51500                CALL 0x006b6af0
00557520  8b97100c0000              MOV EDX,dword ptr [EDI + 0xc10]
00557526  8d9f040c0000              LEA EBX,[EDI + 0xc04]
0055752c  f30f10874c030000          MOVSS XMM0,dword ptr [EDI + 0x34c]
00557534  8bf0                      MOV ESI,EAX
00557536  8b4308                    MOV EAX,dword ptr [EBX + 0x8]
00557539  8bca                      MOV ECX,EDX
0055753b  f30f109750030000          MOVSS XMM2,dword ptr [EDI + 0x350]
00557543  48                        DEC EAX
00557544  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0055754c  83e201                    AND EDX,0x1
0055754f  f30f5806                  ADDSS XMM0,dword ptr [ESI]
00557553  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
00557558  d1e9                      SHR ECX,0x1
0055755a  23c8                      AND ECX,EAX
0055755c  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
0055755f  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00557567  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0055756a  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
0055756f  0f57c0                    XORPS XMM0,XMM0
00557572  f30f58c8                  ADDSS XMM1,XMM0
00557576  f30f114cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM1
0055757c  8b430c                    MOV EAX,dword ptr [EBX + 0xc]
0055757f  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
00557582  49                        DEC ECX
00557583  8d5001                    LEA EDX,[EAX + 0x1]
00557586  8bc2                      MOV EAX,EDX
00557588  83e201                    AND EDX,0x1
0055758b  d1e8                      SHR EAX,0x1
0055758d  23c8                      AND ECX,EAX
0055758f  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
00557592  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
00557595  8b8760030000              MOV EAX,dword ptr [EDI + 0x360]
0055759b  8904d1                    MOV dword ptr [ECX + EDX*0x8],EAX
0055759e  8b8764030000              MOV EAX,dword ptr [EDI + 0x364]
005575a4  8944d104                  MOV dword ptr [ECX + EDX*0x8 + 0x4],EAX
005575a8  8b430c                    MOV EAX,dword ptr [EBX + 0xc]
005575ab  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
005575ae  49                        DEC ECX
005575af  8d5002                    LEA EDX,[EAX + 0x2]
005575b2  8bc2                      MOV EAX,EDX
005575b4  83e201                    AND EDX,0x1
005575b7  d1e8                      SHR EAX,0x1
005575b9  23c8                      AND ECX,EAX
005575bb  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
005575be  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005575c1  8bcf                      MOV ECX,EDI
005575c3  f30f1114d0                MOVSS dword ptr [EAX + EDX*0x8],XMM2
005575c8  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
005575d0  e89b01efff                CALL 0x00447770
005575d5  837f3000                  CMP dword ptr [EDI + 0x30],0x0
005575d9  ba4805b600                MOV EDX,0xb60548
005575de  b95405b600                MOV ECX,0xb60554
005575e3  0f45ca                    CMOVNZ ECX,EDX
005575e6  51                        PUSH ECX
005575e7  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
005575ed  51                        PUSH ECX
005575ee  8bc8                      MOV ECX,EAX
005575f0  e8fbf41500                CALL 0x006b6af0
005575f5  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
005575fb  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
00557601  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
00557604  83c2fd                    ADD EDX,-0x3
00557607  f30f10bdc0feffff          MOVSS XMM7,dword ptr [EBP + 0xfffffec0]
0055760f  03d1                      ADD EDX,ECX
00557611  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00557619  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00557621  f30f58c7                  ADDSS XMM0,XMM7
00557625  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
00557628  8bc2                      MOV EAX,EDX
0055762a  d1e8                      SHR EAX,0x1
0055762c  49                        DEC ECX
0055762d  23c8                      AND ECX,EAX
0055762f  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
00557632  83e201                    AND EDX,0x1
00557635  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00557638  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
0055763d  0f57f6                    XORPS XMM6,XMM6
00557640  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
00557648  f30f58ce                  ADDSS XMM1,XMM6
0055764c  f30f114cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM1
00557652  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00557658  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
0055765e  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
00557661  83c2fe                    ADD EDX,-0x2
00557664  03d1                      ADD EDX,ECX
00557666  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
0055766e  8bca                      MOV ECX,EDX
00557670  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
00557678  83e201                    AND EDX,0x1
0055767b  8b4308                    MOV EAX,dword ptr [EBX + 0x8]
0055767e  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
00557686  48                        DEC EAX
00557687  d1e9                      SHR ECX,0x1
00557689  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
00557691  23c8                      AND ECX,EAX
00557693  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
00557696  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00557699  f30f110cd0                MOVSS dword ptr [EAX + EDX*0x8],XMM1
0055769e  f30f1154d004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM2
005576a4  8b97140c0000              MOV EDX,dword ptr [EDI + 0xc14]
005576aa  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
005576ad  4a                        DEC EDX
005576ae  8b4308                    MOV EAX,dword ptr [EBX + 0x8]
005576b1  03d1                      ADD EDX,ECX
005576b3  48                        DEC EAX
005576b4  8bca                      MOV ECX,EDX
005576b6  d1e9                      SHR ECX,0x1
005576b8  83e201                    AND EDX,0x1
005576bb  23c8                      AND ECX,EAX
005576bd  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
005576c0  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005576c3  f30f1104d0                MOVSS dword ptr [EAX + EDX*0x8],XMM0
005576c8  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
005576d0  a17816c700                MOV EAX,[0x00c71678]
005576d5  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005576db  803900                    CMP byte ptr [ECX],0x0
005576de  742b                      JZ 0x0055770b
005576e0  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
005576e6  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
005576ec  83f801                    CMP EAX,0x1
005576ef  7e1a                      JLE 0x0055770b
005576f1  83bf740b000002            CMP dword ptr [EDI + 0xb74],0x2
005576f8  8bcf                      MOV ECX,EDI
005576fa  0f94c0                    SETZ AL
005576fd  0fb6c0                    MOVZX EAX,AL
00557700  50                        PUSH EAX
00557701  e89a18f9ff                CALL 0x004e8fa0
00557706  e97f010000                JMP 0x0055788a
0055770b  f30f102d84a7ba00          MOVSS XMM5,dword ptr [0x00baa784]
00557713  b901000000                MOV ECX,0x1
00557718  898dbcfeffff              MOV dword ptr [EBP + 0xfffffebc],ECX
0055771e  c785b4feffff03000000      MOV dword ptr [EBP + 0xfffffeb4],0x3
00557728  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00557730  660f6ec1                  MOVD XMM0,ECX
00557734  8bc1                      MOV EAX,ECX
00557736  c1e81f                    SHR EAX,0x1f
00557739  8bb7100c0000              MOV ESI,dword ptr [EDI + 0xc10]
0055773f  8bce                      MOV ECX,ESI
00557741  8b970c0c0000              MOV EDX,dword ptr [EDI + 0xc0c]
00557747  83e101                    AND ECX,0x1
0055774a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055774e  4a                        DEC EDX
0055774f  f30f108dc4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec4]
00557757  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00557760  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00557766  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0055776e  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
00557776  f30f58d7                  ADDSS XMM2,XMM7
0055777a  660f5ae0                  CVTPD2PS XMM4,XMM0
0055777e  8bc6                      MOV EAX,ESI
00557780  d1e8                      SHR EAX,0x1
00557782  23d0                      AND EDX,EAX
00557784  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
0055778a  f30f58de                  ADDSS XMM3,XMM6
0055778e  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
00557791  f30f5ee5                  DIVSS XMM4,XMM5
00557795  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
0055779b  03d6                      ADD EDX,ESI
0055779d  f30f5c14c8                SUBSS XMM2,dword ptr [EAX + ECX*0x8]
005577a2  f30f5c5cc804              SUBSS XMM3,dword ptr [EAX + ECX*0x8 + 0x4]
005577a8  f30f59d4                  MULSS XMM2,XMM4
005577ac  f30f59dc                  MULSS XMM3,XMM4
005577b0  f30f5814c8                ADDSS XMM2,dword ptr [EAX + ECX*0x8]
005577b5  f30f585cc804              ADDSS XMM3,dword ptr [EAX + ECX*0x8 + 0x4]
005577bb  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
005577be  8bc2                      MOV EAX,EDX
005577c0  d1e8                      SHR EAX,0x1
005577c2  49                        DEC ECX
005577c3  23c8                      AND ECX,EAX
005577c5  83e201                    AND EDX,0x1
005577c8  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
005577cb  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005577ce  f30f1114d0                MOVSS dword ptr [EAX + EDX*0x8],XMM2
005577d3  f30f115cd004              MOVSS dword ptr [EAX + EDX*0x8 + 0x4],XMM3
005577d9  8b430c                    MOV EAX,dword ptr [EBX + 0xc]
005577dc  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
005577e2  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
005577e5  42                        INC EDX
005577e6  03d0                      ADD EDX,EAX
005577e8  49                        DEC ECX
005577e9  8bc2                      MOV EAX,EDX
005577eb  83e201                    AND EDX,0x1
005577ee  d1e8                      SHR EAX,0x1
005577f0  23c8                      AND ECX,EAX
005577f2  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
005577f5  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005577f8  c704d000000000            MOV dword ptr [EAX + EDX*0x8],0x0
005577ff  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
00557807  8b730c                    MOV ESI,dword ptr [EBX + 0xc]
0055780a  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
0055780d  49                        DEC ECX
0055780e  8d5602                    LEA EDX,[ESI + 0x2]
00557811  8bc2                      MOV EAX,EDX
00557813  83e201                    AND EDX,0x1
00557816  d1e8                      SHR EAX,0x1
00557818  23c8                      AND ECX,EAX
0055781a  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
0055781d  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00557820  f30f5c0cd0                SUBSS XMM1,dword ptr [EAX + EDX*0x8]
00557825  f30f59cc                  MULSS XMM1,XMM4
00557829  f30f580cd0                ADDSS XMM1,dword ptr [EAX + EDX*0x8]
0055782e  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
00557834  8b4308                    MOV EAX,dword ptr [EBX + 0x8]
00557837  83c202                    ADD EDX,0x2
0055783a  03d6                      ADD EDX,ESI
0055783c  48                        DEC EAX
0055783d  8bca                      MOV ECX,EDX
0055783f  d1e9                      SHR ECX,0x1
00557841  23c8                      AND ECX,EAX
00557843  8b4304                    MOV EAX,dword ptr [EBX + 0x4]
00557846  83e201                    AND EDX,0x1
00557849  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0055784c  f30f110cd0                MOVSS dword ptr [EAX + EDX*0x8],XMM1
00557851  c744d00400000000          MOV dword ptr [EAX + EDX*0x8 + 0x4],0x0
00557859  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
0055785f  8b8dbcfeffff              MOV ECX,dword ptr [EBP + 0xfffffebc]
00557865  83c003                    ADD EAX,0x3
00557868  41                        INC ECX
00557869  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
0055786f  898dbcfeffff              MOV dword ptr [EBP + 0xfffffebc],ECX
00557875  83f812                    CMP EAX,0x12
00557878  0f82b2feffff              JC 0x00557730
0055787e  53                        PUSH EBX
0055787f  8d8f180c0000              LEA ECX,[EDI + 0xc18]
00557885  e8b695f5ff                CALL 0x004b0e40
0055788a  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00557890  0f57c0                    XORPS XMM0,XMM0
00557893  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0055789b  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
005578a3  f30f58c8                  ADDSS XMM1,XMM0
005578a7  f30f5895c0feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffec0]
005578af  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
005578b7  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
005578bf  0f28c1                    MOVAPS XMM0,XMM1
005578c2  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
005578ca  f30f59c1                  MULSS XMM0,XMM1
005578ce  0f28ca                    MOVAPS XMM1,XMM2
005578d1  f30f59ca                  MULSS XMM1,XMM2
005578d5  f30f1195c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM2
005578dd  f30f58c1                  ADDSS XMM0,XMM1
005578e1  e86ae1edff                CALL 0x00435a50
005578e6  0f28e8                    MOVAPS XMM5,XMM0
005578e9  f30f10058ca9ba00          MOVSS XMM0,dword ptr [0x00baa98c]
005578f1  0f2fe8                    COMISS XMM5,XMM0
005578f4  0f8691000000              JBE 0x0055798b
005578fa  f30f10a5c4feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffec4]
00557902  0f28d5                    MOVAPS XMM2,XMM5
00557905  f30f5ee5                  DIVSS XMM4,XMM5
00557909  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
00557911  f30f5cd0                  SUBSS XMM2,XMM0
00557915  f30f59e2                  MULSS XMM4,XMM2
00557919  f30f592520a1ba00          MULSS XMM4,dword ptr [0x00baa120]
00557921  f30f5925f8a1ba00          MULSS XMM4,dword ptr [0x00baa1f8]
00557929  f30f59e3                  MULSS XMM4,XMM3
0055792d  f30f58a760030000          ADDSS XMM4,dword ptr [EDI + 0x360]
00557935  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
0055793d  f30f10a5bcfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffebc]
00557945  f30f5ee5                  DIVSS XMM4,XMM5
00557949  f30f59e2                  MULSS XMM4,XMM2
0055794d  f30f592520a1ba00          MULSS XMM4,dword ptr [0x00baa120]
00557955  f30f5925f8a1ba00          MULSS XMM4,dword ptr [0x00baa1f8]
0055795d  f30f59e3                  MULSS XMM4,XMM3
00557961  f30f58a764030000          ADDSS XMM4,dword ptr [EDI + 0x364]
00557969  f30f11a764030000          MOVSS dword ptr [EDI + 0x364],XMM4
00557971  eb18                      JMP 0x0055798b
00557973  83f901                    CMP ECX,0x1
00557976  7513                      JNZ 0x0055798b
00557978  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
0055797e  e8ede2edff                CALL 0x00435c70
00557983  8b17                      MOV EDX,dword ptr [EDI]
00557985  8bcf                      MOV ECX,EDI
00557987  50                        PUSH EAX
00557988  ff5224                    CALL dword ptr [EDX + 0x24]
0055798b  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0055798e  64890d00000000            MOV dword ptr FS:[0x0],ECX
00557995  59                        POP ECX
00557996  5f                        POP EDI
00557997  5e                        POP ESI
00557998  5b                        POP EBX
00557999  8b4df0                    MOV ECX,dword ptr [EBP + -0x10]
0055799c  33cd                      XOR ECX,EBP
0055799e  e888775900                CALL 0x00aef12b
005579a3  8be5                      MOV ESP,EBP
005579a5  5d                        POP EBP
005579a6  c3                        RET
