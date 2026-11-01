; J460 NPC AI 0x005442a0 AI_005442a0
; types=307
; identities=307.0.0,307.0.1
; entry=005442a0
005442a0  55                        PUSH EBP
005442a1  8bec                      MOV EBP,ESP
005442a3  83e4f8                    AND ESP,0xfffffff8
005442a6  81eca0020000              SUB ESP,0x2a0
005442ac  a1b493bf00                MOV EAX,[0x00bf93b4]
005442b1  33c4                      XOR EAX,ESP
005442b3  8984249c020000            MOV dword ptr [ESP + 0x29c],EAX
005442ba  56                        PUSH ESI
005442bb  57                        PUSH EDI
005442bc  8bf9                      MOV EDI,ECX
005442be  897c2450                  MOV dword ptr [ESP + 0x50],EDI
005442c2  837f3001                  CMP dword ptr [EDI + 0x30],0x1
005442c6  0f85ba000000              JNZ 0x00544386
005442cc  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
005442d2  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
005442dc  85c0                      TEST EAX,EAX
005442de  740d                      JZ 0x005442ed
005442e0  80b87201000000            CMP byte ptr [EAX + 0x172],0x0
005442e7  0f85531c0000              JNZ 0x00545f40
005442ed  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
005442f5  8d8c2494000000            LEA ECX,[ESP + 0x94]
005442fc  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00544304  8b07                      MOV EAX,dword ptr [EDI]
00544306  51                        PUSH ECX
00544307  8bcf                      MOV ECX,EDI
00544309  c784249800000000000000    MOV dword ptr [ESP + 0x98],0x0
00544314  c784249c00000000000000    MOV dword ptr [ESP + 0x9c],0x0
0054431f  c78424a000000000000000    MOV dword ptr [ESP + 0xa0],0x0
0054432a  c78424a400000000000000    MOV dword ptr [ESP + 0xa4],0x0
00544335  f30f118c24a8000000        MOVSS dword ptr [ESP + 0xa8],XMM1
0054433e  f30f118424ac000000        MOVSS dword ptr [ESP + 0xac],XMM0
00544347  f30f118c24b0000000        MOVSS dword ptr [ESP + 0xb0],XMM1
00544350  f30f118424b4000000        MOVSS dword ptr [ESP + 0xb4],XMM0
00544359  c78424b800000000000000    MOV dword ptr [ESP + 0xb8],0x0
00544364  c78424bc00000000000000    MOV dword ptr [ESP + 0xbc],0x0
0054436f  ff5024                    CALL dword ptr [EAX + 0x24]
00544372  5f                        POP EDI
00544373  5e                        POP ESI
00544374  8b8c249c020000            MOV ECX,dword ptr [ESP + 0x29c]
0054437b  33cc                      XOR ECX,ESP
0054437d  e8a9ad5a00                CALL 0x00aef12b
00544382  8be5                      MOV ESP,EBP
00544384  5d                        POP EBP
00544385  c3                        RET
00544386  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0054438e  8db73c030000              LEA ESI,[EDI + 0x33c]
00544394  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00544398  f30f5cc1                  SUBSS XMM0,XMM1
0054439c  a17816c700                MOV EAX,[0x00c71678]
005443a1  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005443a7  f30f5ec1                  DIVSS XMM0,XMM1
005443ab  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
005443b3  f30f2cc0                  CVTTSS2SI EAX,XMM0
005443b7  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005443bc  89442420                  MOV dword ptr [ESP + 0x20],EAX
005443c0  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
005443c8  f30f5ec1                  DIVSS XMM0,XMM1
005443cc  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
005443d4  f30f2cd0                  CVTTSS2SI EDX,XMM0
005443d8  85c0                      TEST EAX,EAX
005443da  783a                      JS 0x00544416
005443dc  8b410c                    MOV EAX,dword ptr [ECX + 0xc]
005443df  39442420                  CMP dword ptr [ESP + 0x20],EAX
005443e3  7d31                      JGE 0x00544416
005443e5  85d2                      TEST EDX,EDX
005443e7  782d                      JS 0x00544416
005443e9  3b5110                    CMP EDX,dword ptr [ECX + 0x10]
005443ec  7d28                      JGE 0x00544416
005443ee  0fafc2                    IMUL EAX,EDX
005443f1  03442420                  ADD EAX,dword ptr [ESP + 0x20]
005443f5  781f                      JS 0x00544416
005443f7  3dc0010000                CMP EAX,0x1c0
005443fc  7d18                      JGE 0x00544416
005443fe  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
00544409  7f0b                      JG 0x00544416
0054440b  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
00544416  8bcf                      MOV ECX,EDI
00544418  e823a41700                CALL 0x006be840
0054441d  660f6e9fc40b0000          MOVD XMM3,dword ptr [EDI + 0xbc4]
00544425  0f57d2                    XORPS XMM2,XMM2
00544428  f30f100db4a9ba00          MOVSS XMM1,dword ptr [0x00baa9b4]
00544430  8bcf                      MOV ECX,EDI
00544432  0f5bdb                    CVTDQ2PS XMM3,XMM3
00544435  6a01                      PUSH 0x1
00544437  89442410                  MOV dword ptr [ESP + 0x10],EAX
0054443b  e8004a1900                CALL 0x006d8e40
00544440  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00544448  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00544450  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00544456  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0054445e  85c0                      TEST EAX,EAX
00544460  0f85cc000000              JNZ 0x00544532
00544466  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
0054446d  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00544473  898424ec000000            MOV dword ptr [ESP + 0xec],EAX
0054447a  0f57c0                    XORPS XMM0,XMM0
0054447d  898424f0000000            MOV dword ptr [ESP + 0xf0],EAX
00544484  898424f4000000            MOV dword ptr [ESP + 0xf4],EAX
0054448b  8d8424cc000000            LEA EAX,[ESP + 0xcc]
00544492  3bc8                      CMP ECX,EAX
00544494  741f                      JZ 0x005444b5
00544496  8b8424f4000000            MOV EAX,dword ptr [ESP + 0xf4]
0054449d  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
005444a1  f30f7e8424ec000000        MOVQ XMM0,qword ptr [ESP + 0xec]
005444aa  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
005444af  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
005444b2  894128                    MOV dword ptr [ECX + 0x28],EAX
005444b5  6a00                      PUSH 0x0
005444b7  6854bcb100                PUSH 0xb1bc54
005444bc  8d4f48                    LEA ECX,[EDI + 0x48]
005444bf  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005444c9  e8b25eecff                CALL 0x0040a380
005444ce  8b06                      MOV EAX,dword ptr [ESI]
005444d0  898734030000              MOV dword ptr [EDI + 0x334],EAX
005444d6  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
005444d9  898738030000              MOV dword ptr [EDI + 0x338],EAX
005444df  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005444e6  741f                      JZ 0x00544507
005444e8  ba02000000                MOV EDX,0x2
005444ed  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
005444f3  5f                        POP EDI
005444f4  5e                        POP ESI
005444f5  8b8c249c020000            MOV ECX,dword ptr [ESP + 0x29c]
005444fc  33cc                      XOR ECX,ESP
005444fe  e828ac5a00                CALL 0x00aef12b
00544503  8be5                      MOV ESP,EBP
00544505  5d                        POP EBP
00544506  c3                        RET
00544507  e854aa1a00                CALL 0x006eef60
0054450c  33d2                      XOR EDX,EDX
0054450e  b928000000                MOV ECX,0x28
00544513  f7f1                      DIV ECX
00544515  83c214                    ADD EDX,0x14
00544518  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0054451e  5f                        POP EDI
0054451f  5e                        POP ESI
00544520  8b8c249c020000            MOV ECX,dword ptr [ESP + 0x29c]
00544527  33cc                      XOR ECX,ESP
00544529  e8fdab5a00                CALL 0x00aef12b
0054452e  8be5                      MOV ESP,EBP
00544530  5d                        POP EBP
00544531  c3                        RET
00544532  83f803                    CMP EAX,0x3
00544535  0f85da070000              JNZ 0x00544d15
0054453b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0054453f  7409                      JZ 0x0054454a
00544541  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00544548  750f                      JNZ 0x00544559
0054454a  6a00                      PUSH 0x0
0054454c  6854bcb100                PUSH 0xb1bc54
00544551  8d4f48                    LEA ECX,[EDI + 0x48]
00544554  e8275eecff                CALL 0x0040a380
00544559  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
00544561  8bcf                      MOV ECX,EDI
00544563  6a00                      PUSH 0x0
00544565  e8b6451900                CALL 0x006d8b20
0054456a  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00544571  0f851d100000              JNZ 0x00545594
00544577  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0054457e  0f84de000000              JZ 0x00544662
00544584  6a09                      PUSH 0x9
00544586  8bcf                      MOV ECX,EDI
00544588  e8d33c1900                CALL 0x006d8260
0054458d  84c0                      TEST AL,AL
0054458f  0f85da000000              JNZ 0x0054466f
00544595  6a08                      PUSH 0x8
00544597  8bcf                      MOV ECX,EDI
00544599  e8c23c1900                CALL 0x006d8260
0054459e  84c0                      TEST AL,AL
005445a0  0f85c9000000              JNZ 0x0054466f
005445a6  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005445ad  742b                      JZ 0x005445da
005445af  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
005445b7  8d842400010000            LEA EAX,[ESP + 0x100]
005445be  50                        PUSH EAX
005445bf  8bcf                      MOV ECX,EDI
005445c1  e80a3d1900                CALL 0x006d82d0
005445c6  6840b6c700                PUSH 0xc7b640
005445cb  8bc8                      MOV ECX,EAX
005445cd  e85ec04c00                CALL 0x00a10630
005445d2  84c0                      TEST AL,AL
005445d4  0f84ba0f0000              JZ 0x00545594
005445da  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005445e2  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
005445e6  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
005445ec  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005445f4  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
005445fa  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00544602  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0054460a  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0054460f  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
00544613  f30f59c0                  MULSS XMM0,XMM0
00544617  f30f59c9                  MULSS XMM1,XMM1
0054461b  f30f58c1                  ADDSS XMM0,XMM1
0054461f  e82c14efff                CALL 0x00435a50
00544624  0f2f0500aaba00            COMISS XMM0,dword ptr [0x00baaa00]
0054462b  0f862b030000              JBE 0x0054495c
00544631  51                        PUSH ECX
00544632  8d84240c010000            LEA EAX,[ESP + 0x10c]
00544639  c7042400000000            MOV dword ptr [ESP],0x0
00544640  50                        PUSH EAX
00544641  8bcf                      MOV ECX,EDI
00544643  e8f8a51700                CALL 0x006bec40
00544648  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0054464c  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00544651  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
00544657  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
0054465d  e934030000                JMP 0x00544996
00544662  e8f9a81a00                CALL 0x006eef60
00544667  a807                      TEST AL,0x7
00544669  0f8537ffffff              JNZ 0x005445a6
0054466f  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
00544673  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00544677  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0054467f  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
00544687  f30f5cc1                  SUBSS XMM0,XMM1
0054468b  f30f114c2434              MOVSS dword ptr [ESP + 0x34],XMM1
00544691  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
00544696  f30f5cca                  SUBSS XMM1,XMM2
0054469a  f30f11542420              MOVSS dword ptr [ESP + 0x20],XMM2
005446a0  f30f59c0                  MULSS XMM0,XMM0
005446a4  f30f59c9                  MULSS XMM1,XMM1
005446a8  f30f58c8                  ADDSS XMM1,XMM0
005446ac  0f28c1                    MOVAPS XMM0,XMM1
005446af  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
005446b5  e89613efff                CALL 0x00435a50
005446ba  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
005446be  f30f109060030000          MOVSS XMM2,dword ptr [EAX + 0x360]
005446c6  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
005446ce  f30f59d0                  MULSS XMM2,XMM0
005446d2  f30f58542434              ADDSS XMM2,dword ptr [ESP + 0x34]
005446d8  f30f11542448              MOVSS dword ptr [ESP + 0x48],XMM2
005446de  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
005446e6  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
005446ee  f30f59d0                  MULSS XMM2,XMM0
005446f2  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
005446f8  f30f58542420              ADDSS XMM2,dword ptr [ESP + 0x20]
005446fe  f30f1154244c              MOVSS dword ptr [ESP + 0x4c],XMM2
00544704  e84713efff                CALL 0x00435a50
00544709  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00544710  0f28d8                    MOVAPS XMM3,XMM0
00544713  8bcf                      MOV ECX,EDI
00544715  7441                      JZ 0x00544758
00544717  8d8424f8000000            LEA EAX,[ESP + 0xf8]
0054471e  50                        PUSH EAX
0054471f  e80c461900                CALL 0x006d8d30
00544724  8d542448                  LEA EDX,[ESP + 0x48]
00544728  8bcf                      MOV ECX,EDI
0054472a  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0054472e  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
00544734  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00544739  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
0054473f  e89cfaffff                CALL 0x005441e0
00544744  6a08                      PUSH 0x8
00544746  8bcf                      MOV ECX,EDI
00544748  88442437                  MOV byte ptr [ESP + 0x37],AL
0054474c  e80f3b1900                CALL 0x006d8260
00544751  0fb6c0                    MOVZX EAX,AL
00544754  85c0                      TEST EAX,EAX
00544756  eb3b                      JMP 0x00544793
00544758  8d542448                  LEA EDX,[ESP + 0x48]
0054475c  e87ffaffff                CALL 0x005441e0
00544761  0f2f1d50a9ba00            COMISS XMM3,dword ptr [0x00baa950]
00544768  88442433                  MOV byte ptr [ESP + 0x33],AL
0054476c  0f86a0010000              JBE 0x00544912
00544772  f30f1005f8aaba00          MOVSS XMM0,dword ptr [0x00baaaf8]
0054477a  0f2fc3                    COMISS XMM0,XMM3
0054477d  0f868f010000              JBE 0x00544912
00544783  e8d8a71a00                CALL 0x006eef60
00544788  33d2                      XOR EDX,EDX
0054478a  b905000000                MOV ECX,0x5
0054478f  f7f1                      DIV ECX
00544791  85d2                      TEST EDX,EDX
00544793  0f8479010000              JZ 0x00544912
00544799  ff74244c                  PUSH dword ptr [ESP + 0x4c]
0054479d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005447a3  ff74244c                  PUSH dword ptr [ESP + 0x4c]
005447a7  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
005447ad  e8cebf2a00                CALL 0x007f0780
005447b2  85c0                      TEST EAX,EAX
005447b4  0f8558010000              JNZ 0x00544912
005447ba  38442433                  CMP byte ptr [ESP + 0x33],AL
005447be  0f844e010000              JZ 0x00544912
005447c4  50                        PUSH EAX
005447c5  68ecd2b100                PUSH 0xb1d2ec
005447ca  8d4f48                    LEA ECX,[EDI + 0x48]
005447cd  e8ae5becff                CALL 0x0040a380
005447d2  f30f1006                  MOVSS XMM0,dword ptr [ESI]
005447d6  0f2f442448                COMISS XMM0,dword ptr [ESP + 0x48]
005447db  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
005447e5  0f97c0                    SETA AL
005447e8  888748010000              MOV byte ptr [EDI + 0x148],AL
005447ee  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
005447f4  85c9                      TEST ECX,ECX
005447f6  740e                      JZ 0x00544806
005447f8  80b97201000000            CMP byte ptr [ECX + 0x172],0x0
005447ff  7405                      JZ 0x00544806
00544801  8b01                      MOV EAX,dword ptr [ECX]
00544803  ff5028                    CALL dword ptr [EAX + 0x28]
00544806  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
0054480c  e8df482a00                CALL 0x007e90f0
00544811  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00544817  6a00                      PUSH 0x0
00544819  50                        PUSH EAX
0054481a  6a01                      PUSH 0x1
0054481c  57                        PUSH EDI
0054481d  6840b6c700                PUSH 0xc7b640
00544822  8d44245c                  LEA EAX,[ESP + 0x5c]
00544826  50                        PUSH EAX
00544827  ff772c                    PUSH dword ptr [EDI + 0x2c]
0054482a  ff7728                    PUSH dword ptr [EDI + 0x28]
0054482d  e8de9b1b00                CALL 0x006fe410
00544832  6a00                      PUSH 0x0
00544834  68acd6c500                PUSH 0xc5d6ac
00544839  68dcd5c500                PUSH 0xc5d5dc
0054483e  6a00                      PUSH 0x0
00544840  50                        PUSH EAX
00544841  e86bc05a00                CALL 0x00af08b1
00544846  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
0054484c  83c414                    ADD ESP,0x14
0054484f  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
00544853  8b9068010000              MOV EDX,dword ptr [EAX + 0x168]
00544859  81886c01000008200000      OR dword ptr [EAX + 0x16c],0x2008
00544863  83e2fb                    AND EDX,0xfffffffb
00544866  83ca01                    OR EDX,0x1
00544869  899068010000              MOV dword ptr [EAX + 0x168],EDX
0054486f  05bc030000                ADD EAX,0x3bc
00544874  89442434                  MOV dword ptr [ESP + 0x34],EAX
00544878  85c9                      TEST ECX,ECX
0054487a  7418                      JZ 0x00544894
0054487c  89442460                  MOV dword ptr [ESP + 0x60],EAX
00544880  81c1cc030000              ADD ECX,0x3cc
00544886  8d442460                  LEA EAX,[ESP + 0x60]
0054488a  50                        PUSH EAX
0054488b  e880a9f8ff                CALL 0x004cf210
00544890  8b442434                  MOV EAX,dword ptr [ESP + 0x34]
00544894  50                        PUSH EAX
00544895  8bcf                      MOV ECX,EDI
00544897  8938                      MOV dword ptr [EAX],EDI
00544899  e85294f8ff                CALL 0x004cdcf0
0054489e  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
005448a2  8d87e4010000              LEA EAX,[EDI + 0x1e4]
005448a8  50                        PUSH EAX
005448a9  c7818801000000000000      MOV dword ptr [ECX + 0x188],0x0
005448b3  e8c81af1ff                CALL 0x00456380
005448b8  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
005448be  8d8fc0030000              LEA ECX,[EDI + 0x3c0]
005448c4  85c0                      TEST EAX,EAX
005448c6  741a                      JZ 0x005448e2
005448c8  894c243c                  MOV dword ptr [ESP + 0x3c],ECX
005448cc  8d4c243c                  LEA ECX,[ESP + 0x3c]
005448d0  51                        PUSH ECX
005448d1  8d88cc030000              LEA ECX,[EAX + 0x3cc]
005448d7  e834a9f8ff                CALL 0x004cf210
005448dc  8d8fc0030000              LEA ECX,[EDI + 0x3c0]
005448e2  8b44241c                  MOV EAX,dword ptr [ESP + 0x1c]
005448e6  8901                      MOV dword ptr [ECX],EAX
005448e8  51                        PUSH ECX
005448e9  8bc8                      MOV ECX,EAX
005448eb  e80094f8ff                CALL 0x004cdcf0
005448f0  8b44241c                  MOV EAX,dword ptr [ESP + 0x1c]
005448f4  6a00                      PUSH 0x0
005448f6  683012b600                PUSH 0xb61230
005448fb  8d4848                    LEA ECX,[EAX + 0x48]
005448fe  c780640b000003000000      MOV dword ptr [EAX + 0xb64],0x3
00544908  e8d35decff                CALL 0x0040a6e0
0054490d  e9820c0000                JMP 0x00545594
00544912  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00544919  7411                      JZ 0x0054492c
0054491b  6a09                      PUSH 0x9
0054491d  8bcf                      MOV ECX,EDI
0054491f  e83c391900                CALL 0x006d8260
00544924  84c0                      TEST AL,AL
00544926  0f84680c0000              JZ 0x00545594
0054492c  6a00                      PUSH 0x0
0054492e  6854ddb100                PUSH 0xb1dd54
00544933  8d4f48                    LEA ECX,[EDI + 0x48]
00544936  e8455aecff                CALL 0x0040a380
0054493b  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0054493f  0f2f442448                COMISS XMM0,dword ptr [ESP + 0x48]
00544944  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0054494e  0f97c0                    SETA AL
00544951  888748010000              MOV byte ptr [EDI + 0x148],AL
00544957  e9380c0000                JMP 0x00545594
0054495c  e8ffa51a00                CALL 0x006eef60
00544961  a80f                      TEST AL,0xf
00544963  7525                      JNZ 0x0054498a
00544965  a17816c700                MOV EAX,[0x00c71678]
0054496a  51                        PUSH ECX
0054496b  8d8c2414010000            LEA ECX,[ESP + 0x114]
00544972  c704240000a041            MOV dword ptr [ESP],0x41a00000
00544979  51                        PUSH ECX
0054497a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00544980  e84ba02d00                CALL 0x0081e9d0
00544985  e9befcffff                JMP 0x00544648
0054498a  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
00544990  f30f104c241c              MOVSS XMM1,dword ptr [ESP + 0x1c]
00544996  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0054499d  7445                      JZ 0x005449e4
0054499f  6a00                      PUSH 0x0
005449a1  6870dab100                PUSH 0xb1da70
005449a6  8d4f48                    LEA ECX,[EDI + 0x48]
005449a9  e8d259ecff                CALL 0x0040a380
005449ae  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005449b2  7410                      JZ 0x005449c4
005449b4  f30f100da4a7ba00          MOVSS XMM1,dword ptr [0x00baa7a4]
005449bc  8d4f78                    LEA ECX,[EDI + 0x78]
005449bf  e83c44ecff                CALL 0x00408e00
005449c4  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005449ce  8b06                      MOV EAX,dword ptr [ESI]
005449d0  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
005449d6  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
005449d9  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
005449df  e9b00b0000                JMP 0x00545594
005449e4  f30f101540b6c700          MOVSS XMM2,dword ptr [0x00c7b640]
005449ec  f30f101d44b6c700          MOVSS XMM3,dword ptr [0x00c7b644]
005449f4  0f2ec2                    UCOMISS XMM0,XMM2
005449f7  9f                        LAHF
005449f8  f6c444                    TEST AH,0x44
005449fb  7a0d                      JP 0x00544a0a
005449fd  0f2ecb                    UCOMISS XMM1,XMM3
00544a00  9f                        LAHF
00544a01  f6c444                    TEST AH,0x44
00544a04  0f8b8a0b0000              JNP 0x00545594
00544a0a  a17816c700                MOV EAX,[0x00c71678]
00544a0f  0f28c3                    MOVAPS XMM0,XMM3
00544a12  f30f100dc4acba00          MOVSS XMM1,dword ptr [0x00baacc4]
00544a1a  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
00544a20  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00544a26  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
00544a2c  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
00544a32  89542424                  MOV dword ptr [ESP + 0x24],EDX
00544a36  8b8264120000              MOV EAX,dword ptr [EDX + 0x1264]
00544a3c  89442410                  MOV dword ptr [ESP + 0x10],EAX
00544a40  85c0                      TEST EAX,EAX
00544a42  0f8437020000              JZ 0x00544c7f
00544a48  8b8a5c120000              MOV ECX,dword ptr [EDX + 0x125c]
00544a4e  8bd0                      MOV EDX,EAX
00544a50  894c2418                  MOV dword ptr [ESP + 0x18],ECX
00544a54  8b09                      MOV ECX,dword ptr [ECX]
00544a56  85c9                      TEST ECX,ECX
00544a58  0f84ae020000              JZ 0x00544d0c
00544a5e  817928e8030000            CMP dword ptr [ECX + 0x28],0x3e8
00544a65  0f85a1020000              JNZ 0x00544d0c
00544a6b  8b512c                    MOV EDX,dword ptr [ECX + 0x2c]
00544a6e  83fa1a                    CMP EDX,0x1a
00544a71  741d                      JZ 0x00544a90
00544a73  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00544a79  2500000020                AND EAX,0x20000000
00544a7e  83c800                    OR EAX,0x0
00544a81  0f84d4010000              JZ 0x00544c5b
00544a87  83fa2d                    CMP EDX,0x2d
00544a8a  0f85cb010000              JNZ 0x00544c5b
00544a90  f30f10813c030000          MOVSS XMM0,dword ptr [ECX + 0x33c]
00544a98  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00544aa0  f30f11442460              MOVSS dword ptr [ESP + 0x60],XMM0
00544aa6  f30f5cc1                  SUBSS XMM0,XMM1
00544aaa  f30f109140030000          MOVSS XMM2,dword ptr [ECX + 0x340]
00544ab2  f30f11542434              MOVSS dword ptr [ESP + 0x34],XMM2
00544ab8  f30f5ec1                  DIVSS XMM0,XMM1
00544abc  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00544ac4  f30f2cc0                  CVTTSS2SI EAX,XMM0
00544ac8  0f28c2                    MOVAPS XMM0,XMM2
00544acb  f30f101500aaba00          MOVSS XMM2,dword ptr [0x00baaa00]
00544ad3  f30f5cc2                  SUBSS XMM0,XMM2
00544ad7  f30f5ec1                  DIVSS XMM0,XMM1
00544adb  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00544ae3  f30f2cf0                  CVTTSS2SI ESI,XMM0
00544ae7  85c0                      TEST EAX,EAX
00544ae9  0f885a010000              JS 0x00544c49
00544aef  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
00544af3  8b4a0c                    MOV ECX,dword ptr [EDX + 0xc]
00544af6  3bc1                      CMP EAX,ECX
00544af8  0f8d4b010000              JGE 0x00544c49
00544afe  85f6                      TEST ESI,ESI
00544b00  0f8843010000              JS 0x00544c49
00544b06  3b7210                    CMP ESI,dword ptr [EDX + 0x10]
00544b09  0f8d3a010000              JGE 0x00544c49
00544b0f  0faff1                    IMUL ESI,ECX
00544b12  03f0                      ADD ESI,EAX
00544b14  0f882f010000              JS 0x00544c49
00544b1a  8bc6                      MOV EAX,ESI
00544b1c  99                        CDQ
00544b1d  f7f9                      IDIV ECX
00544b1f  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
00544b23  56                        PUSH ESI
00544b24  660f6ec2                  MOVD XMM0,EDX
00544b28  0f5bc0                    CVTDQ2PS XMM0,XMM0
00544b2b  f30f59c1                  MULSS XMM0,XMM1
00544b2f  f30f58c1                  ADDSS XMM0,XMM1
00544b33  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00544b39  660f6ec0                  MOVD XMM0,EAX
00544b3d  0f5bc0                    CVTDQ2PS XMM0,XMM0
00544b40  f30f59c1                  MULSS XMM0,XMM1
00544b44  f30f58c2                  ADDSS XMM0,XMM2
00544b48  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00544b4e  e8adbc2a00                CALL 0x007f0800
00544b53  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00544b57  85c0                      TEST EAX,EAX
00544b59  0f8585010000              JNZ 0x00544ce4
00544b5f  f30f104c2460              MOVSS XMM1,dword ptr [ESP + 0x60]
00544b65  f30f1054243c              MOVSS XMM2,dword ptr [ESP + 0x3c]
00544b6b  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
00544b71  f30f5cca                  SUBSS XMM1,XMM2
00544b75  f30f105c242c              MOVSS XMM3,dword ptr [ESP + 0x2c]
00544b7b  f30f5cc3                  SUBSS XMM0,XMM3
00544b7f  f30f59c9                  MULSS XMM1,XMM1
00544b83  f30f59c0                  MULSS XMM0,XMM0
00544b87  f30f58c1                  ADDSS XMM0,XMM1
00544b8b  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
00544b93  0f2fc8                    COMISS XMM1,XMM0
00544b96  0f8648010000              JBE 0x00544ce4
00544b9c  8b01                      MOV EAX,dword ptr [ECX]
00544b9e  83b85c04000014            CMP dword ptr [EAX + 0x45c],0x14
00544ba5  0f8e39010000              JLE 0x00544ce4
00544bab  81fec0010000              CMP ESI,0x1c0
00544bb1  7d15                      JGE 0x00544bc8
00544bb3  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
00544bb7  81bcb06c07000090010000    CMP dword ptr [EAX + ESI*0x4 + 0x76c],0x190
00544bc2  0f8d1c010000              JGE 0x00544ce4
00544bc8  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00544bd0  8db73c030000              LEA ESI,[EDI + 0x33c]
00544bd6  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00544bde  f30f5cca                  SUBSS XMM1,XMM2
00544be2  f30f5cc3                  SUBSS XMM0,XMM3
00544be6  f30f59c9                  MULSS XMM1,XMM1
00544bea  f30f59c0                  MULSS XMM0,XMM0
00544bee  f30f58c1                  ADDSS XMM0,XMM1
00544bf2  0f2f0500aaba00            COMISS XMM0,dword ptr [0x00baaa00]
00544bf9  0f86d4000000              JBE 0x00544cd3
00544bff  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
00544c05  f30f104c2428              MOVSS XMM1,dword ptr [ESP + 0x28]
00544c0b  f30f5cc3                  SUBSS XMM0,XMM3
00544c0f  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
00544c13  f30f5cca                  SUBSS XMM1,XMM2
00544c17  f30f59c0                  MULSS XMM0,XMM0
00544c1b  f30f59c9                  MULSS XMM1,XMM1
00544c1f  f30f58c8                  ADDSS XMM1,XMM0
00544c23  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
00544c29  0f2fc1                    COMISS XMM0,XMM1
00544c2c  0f86c9000000              JBE 0x00544cfb
00544c32  0f28c3                    MOVAPS XMM0,XMM3
00544c35  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
00544c3b  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00544c41  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
00544c47  eb1a                      JMP 0x00544c63
00544c49  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00544c4f  8db73c030000              LEA ESI,[EDI + 0x33c]
00544c55  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
00544c5b  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00544c5f  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
00544c63  83c104                    ADD ECX,0x4
00544c66  83ea01                    SUB EDX,0x1
00544c69  894c2418                  MOV dword ptr [ESP + 0x18],ECX
00544c6d  89542410                  MOV dword ptr [ESP + 0x10],EDX
00544c71  0f85ddfdffff              JNZ 0x00544a54
00544c77  f30f101d44b6c700          MOVSS XMM3,dword ptr [0x00c7b644]
00544c7f  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
00544c86  9f                        LAHF
00544c87  f6c444                    TEST AH,0x44
00544c8a  7a0d                      JP 0x00544c99
00544c8c  0f2ec3                    UCOMISS XMM0,XMM3
00544c8f  9f                        LAHF
00544c90  f6c444                    TEST AH,0x44
00544c93  0f8bfb080000              JNP 0x00545594
00544c99  6a00                      PUSH 0x0
00544c9b  6870dab100                PUSH 0xb1da70
00544ca0  8d4f48                    LEA ECX,[EDI + 0x48]
00544ca3  e8d856ecff                CALL 0x0040a380
00544ca8  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00544cae  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00544cb8  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00544cc0  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00544cc6  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00544cce  e9c1080000                JMP 0x00545594
00544cd3  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00544cd9  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
00544cdf  e97bffffff                JMP 0x00544c5f
00544ce4  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00544cea  8db73c030000              LEA ESI,[EDI + 0x33c]
00544cf0  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
00544cf6  e964ffffff                JMP 0x00544c5f
00544cfb  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00544d01  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
00544d07  e957ffffff                JMP 0x00544c63
00544d0c  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00544d10  e94effffff                JMP 0x00544c63
00544d15  83f804                    CMP EAX,0x4
00544d18  0f85eb040000              JNZ 0x00545209
00544d1e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00544d22  7442                      JZ 0x00544d66
00544d24  68dcd2b100                PUSH 0xb1d2dc
00544d29  8d4f78                    LEA ECX,[EDI + 0x78]
00544d2c  e89f60ecff                CALL 0x0040add0
00544d31  84c0                      TEST AL,AL
00544d33  7431                      JZ 0x00544d66
00544d35  51                        PUSH ECX
00544d36  c704240000803f            MOV dword ptr [ESP],0x3f800000
00544d3d  6a00                      PUSH 0x0
00544d3f  6a02                      PUSH 0x2
00544d41  51                        PUSH ECX
00544d42  c704240000803f            MOV dword ptr [ESP],0x3f800000
00544d49  8bcf                      MOV ECX,EDI
00544d4b  6a48                      PUSH 0x48
00544d4d  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00544d57  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00544d61  e83a1e1900                CALL 0x006d6ba0
00544d66  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00544d6d  0f84f4030000              JZ 0x00545167
00544d73  83bf8801000000            CMP dword ptr [EDI + 0x188],0x0
00544d7a  0f8514080000              JNZ 0x00545594
00544d80  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00544d88  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00544d90  2bc8                      SUB ECX,EAX
00544d92  018fc40b0000              ADD dword ptr [EDI + 0xbc4],ECX
00544d98  83bfc40b000078            CMP dword ptr [EDI + 0xbc4],0x78
00544d9f  0f8e81000000              JLE 0x00544e26
00544da5  8d8c2498010000            LEA ECX,[ESP + 0x198]
00544dac  c787c40b00005a000000      MOV dword ptr [EDI + 0xbc4],0x5a
00544db6  e8b50eefff                CALL 0x00435c70
00544dbb  8b17                      MOV EDX,dword ptr [EDI]
00544dbd  6a1e                      PUSH 0x1e
00544dbf  50                        PUSH EAX
00544dc0  6a00                      PUSH 0x0
00544dc2  6a00                      PUSH 0x0
00544dc4  51                        PUSH ECX
00544dc5  8bcf                      MOV ECX,EDI
00544dc7  c7042400002041            MOV dword ptr [ESP],0x41200000
00544dce  ff5220                    CALL dword ptr [EDX + 0x20]
00544dd1  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
00544dd9  8d87e4010000              LEA EAX,[EDI + 0x1e4]
00544ddf  51                        PUSH ECX
00544de0  c704240000803f            MOV dword ptr [ESP],0x3f800000
00544de7  ba01000000                MOV EDX,0x1
00544dec  6840b6c700                PUSH 0xc7b640
00544df1  50                        PUSH EAX
00544df2  8d442438                  LEA EAX,[ESP + 0x38]
00544df6  c744243801000000          MOV dword ptr [ESP + 0x38],0x1
00544dfe  57                        PUSH EDI
00544dff  50                        PUSH EAX
00544e00  8bce                      MOV ECX,ESI
00544e02  e8a9e31600                CALL 0x006b31b0
00544e07  83c410                    ADD ESP,0x10
00544e0a  c7042400000040            MOV dword ptr [ESP],0x40000000
00544e11  6a00                      PUSH 0x0
00544e13  6a02                      PUSH 0x2
00544e15  51                        PUSH ECX
00544e16  c704240000003f            MOV dword ptr [ESP],0x3f000000
00544e1d  8bcf                      MOV ECX,EDI
00544e1f  6a4d                      PUSH 0x4d
00544e21  e87a1d1900                CALL 0x006d6ba0
00544e26  6a01                      PUSH 0x1
00544e28  6a00                      PUSH 0x0
00544e2a  51                        PUSH ECX
00544e2b  c7042400000040            MOV dword ptr [ESP],0x40000000
00544e32  8d8f14040000              LEA ECX,[EDI + 0x414]
00544e38  6840b6c700                PUSH 0xc7b640
00544e3d  e87ee52900                CALL 0x007e33c0
00544e42  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00544e4a  0f57d2                    XORPS XMM2,XMM2
00544e4d  0f2ec2                    UCOMISS XMM0,XMM2
00544e50  9f                        LAHF
00544e51  f6c444                    TEST AH,0x44
00544e54  7b0c                      JNP 0x00544e62
00544e56  0f2fc2                    COMISS XMM0,XMM2
00544e59  0f97c0                    SETA AL
00544e5c  888748010000              MOV byte ptr [EDI + 0x148],AL
00544e62  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00544e66  740d                      JZ 0x00544e75
00544e68  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00544e6f  0f8548070000              JNZ 0x005455bd
00544e75  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00544e7d  8d842418010000            LEA EAX,[ESP + 0x118]
00544e84  50                        PUSH EAX
00544e85  8bcf                      MOV ECX,EDI
00544e87  e844341900                CALL 0x006d82d0
00544e8c  6840b6c700                PUSH 0xc7b640
00544e91  8bc8                      MOV ECX,EAX
00544e93  e868b74c00                CALL 0x00a10600
00544e98  84c0                      TEST AL,AL
00544e9a  7429                      JZ 0x00544ec5
00544e9c  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00544ea4  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00544eac  f30f59c9                  MULSS XMM1,XMM1
00544eb0  f30f59c0                  MULSS XMM0,XMM0
00544eb4  f30f58c1                  ADDSS XMM0,XMM1
00544eb8  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00544ec0  0f2fc8                    COMISS XMM1,XMM0
00544ec3  770d                      JA 0x00544ed2
00544ec5  83bfc40b00005a            CMP dword ptr [EDI + 0xbc4],0x5a
00544ecc  0f8ceb060000              JL 0x005455bd
00544ed2  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00544ed6  a17816c700                MOV EAX,[0x00c71678]
00544edb  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
00544ee1  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00544ee6  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
00544eec  ff74245c                  PUSH dword ptr [ESP + 0x5c]
00544ef0  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00544ef6  8bc8                      MOV ECX,EAX
00544ef8  ff74245c                  PUSH dword ptr [ESP + 0x5c]
00544efc  89442424                  MOV dword ptr [ESP + 0x24],EAX
00544f00  e87bb82a00                CALL 0x007f0780
00544f05  85c0                      TEST EAX,EAX
00544f07  0f85b0060000              JNZ 0x005455bd
00544f0d  8bd6                      MOV EDX,ESI
00544f0f  8bcf                      MOV ECX,EDI
00544f11  e8caf2ffff                CALL 0x005441e0
00544f16  84c0                      TEST AL,AL
00544f18  0f85ff010000              JNZ 0x0054511d
00544f1e  8b44241c                  MOV EAX,dword ptr [ESP + 0x1c]
00544f22  f30f101d44b6c700          MOVSS XMM3,dword ptr [0x00c7b644]
00544f2a  f30f101540b6c700          MOVSS XMM2,dword ptr [0x00c7b640]
00544f32  0f28c3                    MOVAPS XMM0,XMM3
00544f35  f30f100de0abba00          MOVSS XMM1,dword ptr [0x00baabe0]
00544f3d  8b8864120000              MOV ECX,dword ptr [EAX + 0x1264]
00544f43  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
00544f49  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00544f4f  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
00544f55  894c240c                  MOV dword ptr [ESP + 0xc],ECX
00544f59  85c9                      TEST ECX,ECX
00544f5b  0f8499010000              JZ 0x005450fa
00544f61  8b885c120000              MOV ECX,dword ptr [EAX + 0x125c]
00544f67  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
00544f6b  894c2424                  MOV dword ptr [ESP + 0x24],ECX
00544f6f  90                        NOP
00544f70  8b09                      MOV ECX,dword ptr [ECX]
00544f72  85c9                      TEST ECX,ECX
00544f74  0f8460010000              JZ 0x005450da
00544f7a  817928e8030000            CMP dword ptr [ECX + 0x28],0x3e8
00544f81  0f8553010000              JNZ 0x005450da
00544f87  8b512c                    MOV EDX,dword ptr [ECX + 0x2c]
00544f8a  83fa1a                    CMP EDX,0x1a
00544f8d  741d                      JZ 0x00544fac
00544f8f  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00544f95  2500000020                AND EAX,0x20000000
00544f9a  83c800                    OR EAX,0x0
00544f9d  0f8433010000              JZ 0x005450d6
00544fa3  83fa2d                    CMP EDX,0x2d
00544fa6  0f852a010000              JNZ 0x005450d6
00544fac  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
00544fb4  f30f10813c030000          MOVSS XMM0,dword ptr [ECX + 0x33c]
00544fbc  f30f108940030000          MOVSS XMM1,dword ptr [ECX + 0x340]
00544fc4  f30f5cc2                  SUBSS XMM0,XMM2
00544fc8  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
00544fd0  f30f5ccb                  SUBSS XMM1,XMM3
00544fd4  f30f5ec2                  DIVSS XMM0,XMM2
00544fd8  f30f5eca                  DIVSS XMM1,XMM2
00544fdc  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00544fe4  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
00544fec  f30f2cd0                  CVTTSS2SI EDX,XMM0
00544ff0  f30f2cc1                  CVTTSS2SI EAX,XMM1
00544ff4  85d2                      TEST EDX,EDX
00544ff6  0f88ce000000              JS 0x005450ca
00544ffc  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
00545000  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
00545003  894c242c                  MOV dword ptr [ESP + 0x2c],ECX
00545007  3bd1                      CMP EDX,ECX
00545009  0f8dbb000000              JGE 0x005450ca
0054500f  85c0                      TEST EAX,EAX
00545011  0f88b3000000              JS 0x005450ca
00545017  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
0054501b  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
0054501e  8db73c030000              LEA ESI,[EDI + 0x33c]
00545024  0f8da0000000              JGE 0x005450ca
0054502a  0fafc8                    IMUL ECX,EAX
0054502d  03ca                      ADD ECX,EDX
0054502f  0f8895000000              JS 0x005450ca
00545035  8bc1                      MOV EAX,ECX
00545037  99                        CDQ
00545038  f77c242c                  IDIV dword ptr [ESP + 0x2c]
0054503c  51                        PUSH ECX
0054503d  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
00545041  660f6ec2                  MOVD XMM0,EDX
00545045  0f5bc0                    CVTDQ2PS XMM0,XMM0
00545048  f30f59c2                  MULSS XMM0,XMM2
0054504c  f30f58c2                  ADDSS XMM0,XMM2
00545050  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00545056  660f6ec0                  MOVD XMM0,EAX
0054505a  0f5bc0                    CVTDQ2PS XMM0,XMM0
0054505d  f30f59c2                  MULSS XMM0,XMM2
00545061  f30f58c3                  ADDSS XMM0,XMM3
00545065  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
0054506b  e890b72a00                CALL 0x007f0800
00545070  85c0                      TEST EAX,EAX
00545072  7556                      JNZ 0x005450ca
00545074  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00545078  f30f1054242c              MOVSS XMM2,dword ptr [ESP + 0x2c]
0054507e  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00545086  f30f5cc2                  SUBSS XMM0,XMM2
0054508a  f30f105c243c              MOVSS XMM3,dword ptr [ESP + 0x3c]
00545090  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
00545094  f30f5ccb                  SUBSS XMM1,XMM3
00545098  f30f59c0                  MULSS XMM0,XMM0
0054509c  f30f59c9                  MULSS XMM1,XMM1
005450a0  f30f58c8                  ADDSS XMM1,XMM0
005450a4  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
005450aa  0f2fc1                    COMISS XMM0,XMM1
005450ad  0f86a3000000              JBE 0x00545156
005450b3  0f28c3                    MOVAPS XMM0,XMM3
005450b6  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
005450bc  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
005450c2  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
005450c8  eb10                      JMP 0x005450da
005450ca  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
005450d0  f30f10542418              MOVSS XMM2,dword ptr [ESP + 0x18]
005450d6  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
005450da  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
005450de  83c104                    ADD ECX,0x4
005450e1  83e801                    SUB EAX,0x1
005450e4  894c2424                  MOV dword ptr [ESP + 0x24],ECX
005450e8  8944240c                  MOV dword ptr [ESP + 0xc],EAX
005450ec  0f857efeffff              JNZ 0x00544f70
005450f2  f30f101d44b6c700          MOVSS XMM3,dword ptr [0x00c7b644]
005450fa  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
00545101  9f                        LAHF
00545102  f6c444                    TEST AH,0x44
00545105  7a0d                      JP 0x00545114
00545107  0f2ec3                    UCOMISS XMM0,XMM3
0054510a  9f                        LAHF
0054510b  f6c444                    TEST AH,0x44
0054510e  0f8ba9040000              JNP 0x005455bd
00545114  f30f1116                  MOVSS dword ptr [ESI],XMM2
00545118  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
0054511d  8b06                      MOV EAX,dword ptr [ESI]
0054511f  8d4f48                    LEA ECX,[EDI + 0x48]
00545122  6a00                      PUSH 0x0
00545124  898734030000              MOV dword ptr [EDI + 0x334],EAX
0054512a  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0054512d  68dc04b600                PUSH 0xb604dc
00545132  898738030000              MOV dword ptr [EDI + 0x338],EAX
00545138  e84352ecff                CALL 0x0040a380
0054513d  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00545147  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00545151  e967040000                JMP 0x005455bd
00545156  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0054515c  f30f10542418              MOVSS XMM2,dword ptr [ESP + 0x18]
00545162  e973ffffff                JMP 0x005450da
00545167  a17816c700                MOV EAX,[0x00c71678]
0054516c  8d8fb00b0000              LEA ECX,[EDI + 0xbb0]
00545172  51                        PUSH ECX
00545173  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00545179  8bc8                      MOV ECX,EAX
0054517b  89442430                  MOV dword ptr [ESP + 0x30],EAX
0054517f  e80cdb2c00                CALL 0x00812c90
00545184  85c0                      TEST EAX,EAX
00545186  780f                      JS 0x00545197
00545188  8b4c242c                  MOV ECX,dword ptr [ESP + 0x2c]
0054518c  6884030000                PUSH 0x384
00545191  50                        PUSH EAX
00545192  e84914f1ff                CALL 0x004565e0
00545197  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0054519b  8d4f48                    LEA ECX,[EDI + 0x48]
0054519e  740d                      JZ 0x005451ad
005451a0  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005451a7  0f85e7030000              JNZ 0x00545594
005451ad  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
005451b5  f30f110e                  MOVSS dword ptr [ESI],XMM1
005451b9  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
005451c1  6a00                      PUSH 0x0
005451c3  68dc04b600                PUSH 0xb604dc
005451c8  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
005451cd  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
005451d5  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005451dd  e89e51ecff                CALL 0x0040a380
005451e2  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
005451e6  f30f1006                  MOVSS XMM0,dword ptr [ESI]
005451ea  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
005451f4  0f2f803c030000            COMISS XMM0,dword ptr [EAX + 0x33c]
005451fb  0f97c0                    SETA AL
005451fe  888748010000              MOV byte ptr [EDI + 0x148],AL
00545204  e98b030000                JMP 0x00545594
00545209  83f806                    CMP EAX,0x6
0054520c  0f8588000000              JNZ 0x0054529a
00545212  68dcd2b100                PUSH 0xb1d2dc
00545217  8d4f48                    LEA ECX,[EDI + 0x48]
0054521a  e8115eecff                CALL 0x0040b030
0054521f  84c0                      TEST AL,AL
00545221  7431                      JZ 0x00545254
00545223  51                        PUSH ECX
00545224  c704240000803f            MOV dword ptr [ESP],0x3f800000
0054522b  6a00                      PUSH 0x0
0054522d  6a02                      PUSH 0x2
0054522f  51                        PUSH ECX
00545230  c704240000803f            MOV dword ptr [ESP],0x3f800000
00545237  8bcf                      MOV ECX,EDI
00545239  6a48                      PUSH 0x48
0054523b  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00545245  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
0054524f  e84c191900                CALL 0x006d6ba0
00545254  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00545258  740d                      JZ 0x00545267
0054525a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00545261  0f852d030000              JNZ 0x00545594
00545267  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0054526e  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00545278  740a                      JZ 0x00545284
0054527a  ba02000000                MOV EDX,0x2
0054527f  e90a030000                JMP 0x0054558e
00545284  e8d79c1a00                CALL 0x006eef60
00545289  33d2                      XOR EDX,EDX
0054528b  b928000000                MOV ECX,0x28
00545290  f7f1                      DIV ECX
00545292  83c214                    ADD EDX,0x14
00545295  e9f4020000                JMP 0x0054558e
0054529a  83f808                    CMP EAX,0x8
0054529d  0f8576010000              JNZ 0x00545419
005452a3  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
005452ab  8bcf                      MOV ECX,EDI
005452ad  6a00                      PUSH 0x0
005452af  e86c381900                CALL 0x006d8b20
005452b4  68dcd2b100                PUSH 0xb1d2dc
005452b9  8d4f48                    LEA ECX,[EDI + 0x48]
005452bc  e86f5decff                CALL 0x0040b030
005452c1  84c0                      TEST AL,AL
005452c3  0f8434010000              JZ 0x005453fd
005452c9  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
005452cd  f30f100e                  MOVSS XMM1,dword ptr [ESI]
005452d1  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005452d6  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
005452de  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
005452e6  f30f5cc2                  SUBSS XMM0,XMM2
005452ea  f30f1154242c              MOVSS dword ptr [ESP + 0x2c],XMM2
005452f0  f30f59c9                  MULSS XMM1,XMM1
005452f4  f30f59c0                  MULSS XMM0,XMM0
005452f8  f30f58c1                  ADDSS XMM0,XMM1
005452fc  e84f07efff                CALL 0x00435a50
00545301  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00545308  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
0054530c  f30f109860030000          MOVSS XMM3,dword ptr [EAX + 0x360]
00545314  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
0054531c  f30f591d20a1ba00          MULSS XMM3,dword ptr [0x00baa120]
00545324  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
0054532c  f30f59d8                  MULSS XMM3,XMM0
00545330  f30f59d0                  MULSS XMM2,XMM0
00545334  f30f58983c030000          ADDSS XMM3,dword ptr [EAX + 0x33c]
0054533c  f30f5854242c              ADDSS XMM2,dword ptr [ESP + 0x2c]
00545342  f30f115c2458              MOVSS dword ptr [ESP + 0x58],XMM3
00545348  f30f1154245c              MOVSS dword ptr [ESP + 0x5c],XMM2
0054534e  7421                      JZ 0x00545371
00545350  8d442478                  LEA EAX,[ESP + 0x78]
00545354  8bcf                      MOV ECX,EDI
00545356  50                        PUSH EAX
00545357  e8d4391900                CALL 0x006d8d30
0054535c  f30f1018                  MOVSS XMM3,dword ptr [EAX]
00545360  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00545365  f30f115c2458              MOVSS dword ptr [ESP + 0x58],XMM3
0054536b  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
00545371  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00545375  8d8c24f8010000            LEA ECX,[ESP + 0x1f8]
0054537c  0f2fc3                    COMISS XMM0,XMM3
0054537f  0f97c0                    SETA AL
00545382  888748010000              MOV byte ptr [EDI + 0x148],AL
00545388  e8a39befff                CALL 0x0043ef30
0054538d  68544ec300                PUSH 0xc34e54
00545392  8d8c2428020000            LEA ECX,[ESP + 0x228]
00545399  c784245402000008000000    MOV dword ptr [ESP + 0x254],0x8
005453a4  c784245802000000000000    MOV dword ptr [ESP + 0x258],0x0
005453af  e83c1eecff                CALL 0x004071f0
005453b4  8d8424f8010000            LEA EAX,[ESP + 0x1f8]
005453bb  c784240c0200003333333f    MOV dword ptr [ESP + 0x20c],0x3f333333
005453c6  50                        PUSH EAX
005453c7  51                        PUSH ECX
005453c8  c7042400002041            MOV dword ptr [ESP],0x41200000
005453cf  8d442460                  LEA EAX,[ESP + 0x60]
005453d3  50                        PUSH EAX
005453d4  6a06                      PUSH 0x6
005453d6  8bcf                      MOV ECX,EDI
005453d8  e8f3791800                CALL 0x006ccdd0
005453dd  51                        PUSH ECX
005453de  c704240000803f            MOV dword ptr [ESP],0x3f800000
005453e5  6a00                      PUSH 0x0
005453e7  6a0f                      PUSH 0xf
005453e9  51                        PUSH ECX
005453ea  c704240000803f            MOV dword ptr [ESP],0x3f800000
005453f1  8bcf                      MOV ECX,EDI
005453f3  68e2000000                PUSH 0xe2
005453f8  e8a3171900                CALL 0x006d6ba0
005453fd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00545401  0f845c010000              JZ 0x00545563
00545407  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0054540e  0f8580010000              JNZ 0x00545594
00545414  e94a010000                JMP 0x00545563
00545419  83f809                    CMP EAX,0x9
0054541c  0f8572010000              JNZ 0x00545594
00545422  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
0054542a  8bcf                      MOV ECX,EDI
0054542c  6a00                      PUSH 0x0
0054542e  e8ed361900                CALL 0x006d8b20
00545433  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0054543a  7423                      JZ 0x0054545f
0054543c  8d4f48                    LEA ECX,[EDI + 0x48]
0054543f  e83c53ecff                CALL 0x0040a780
00545444  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0054544a  83797c00                  CMP dword ptr [ECX + 0x7c],0x0
0054544e  740f                      JZ 0x0054545f
00545450  660f6ec8                  MOVD XMM1,EAX
00545454  83c178                    ADD ECX,0x78
00545457  0f5bc9                    CVTDQ2PS XMM1,XMM1
0054545a  e8a139ecff                CALL 0x00408e00
0054545f  8d4f48                    LEA ECX,[EDI + 0x48]
00545462  68dcd2b100                PUSH 0xb1d2dc
00545467  e8c45becff                CALL 0x0040b030
0054546c  84c0                      TEST AL,AL
0054546e  7420                      JZ 0x00545490
00545470  51                        PUSH ECX
00545471  c704240000803f            MOV dword ptr [ESP],0x3f800000
00545478  6a00                      PUSH 0x0
0054547a  6a02                      PUSH 0x2
0054547c  51                        PUSH ECX
0054547d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00545484  8bcf                      MOV ECX,EDI
00545486  6807010000                PUSH 0x107
0054548b  e810171900                CALL 0x006d6ba0
00545490  68dcd2b100                PUSH 0xb1d2dc
00545495  8d4f48                    LEA ECX,[EDI + 0x48]
00545498  e8f35becff                CALL 0x0040b090
0054549d  84c0                      TEST AL,AL
0054549f  0f84a0000000              JZ 0x00545545
005454a5  68b012b600                PUSH 0xb612b0
005454aa  8d4f48                    LEA ECX,[EDI + 0x48]
005454ad  e8de5becff                CALL 0x0040b090
005454b2  84c0                      TEST AL,AL
005454b4  0f858b000000              JNZ 0x00545545
005454ba  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
005454c0  85c0                      TEST EAX,EAX
005454c2  0f847d000000              JZ 0x00545545
005454c8  80b87201000000            CMP byte ptr [EAX + 0x172],0x0
005454cf  7474                      JZ 0x00545545
005454d1  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
005454d9  0f57d2                    XORPS XMM2,XMM2
005454dc  8bcf                      MOV ECX,EDI
005454de  e87d721600                CALL 0x006ac760
005454e3  85c0                      TEST EAX,EAX
005454e5  745e                      JZ 0x00545545
005454e7  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
005454ed  83ec10                    SUB ESP,0x10
005454f0  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
005454f7  f30f101d34a8ba00          MOVSS XMM3,dword ptr [0x00baa834]
005454ff  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
00545505  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
0054550b  f30f1015e8a7ba00          MOVSS XMM2,dword ptr [0x00baa7e8]
00545513  89842480000000            MOV dword ptr [ESP + 0x80],EAX
0054551a  8bc4                      MOV EAX,ESP
0054551c  83ec08                    SUB ESP,0x8
0054551f  898c248c000000            MOV dword ptr [ESP + 0x8c],ECX
00545526  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
00545529  c744240400004842          MOV dword ptr [ESP + 0x4],0x42480000
00545531  8d842488000000            LEA EAX,[ESP + 0x88]
00545538  6a00                      PUSH 0x0
0054553a  6a00                      PUSH 0x0
0054553c  6a00                      PUSH 0x0
0054553e  57                        PUSH EDI
0054553f  50                        PUSH EAX
00545540  e81b981b00                CALL 0x006fed60
00545545  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00545549  7409                      JZ 0x00545554
0054554b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00545552  7540                      JNZ 0x00545594
00545554  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0054555a  85c9                      TEST ECX,ECX
0054555c  7405                      JZ 0x00545563
0054555e  8b01                      MOV EAX,dword ptr [ECX]
00545560  ff5028                    CALL dword ptr [EAX + 0x28]
00545563  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0054556a  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00545574  7407                      JZ 0x0054557d
00545576  ba02000000                MOV EDX,0x2
0054557b  eb11                      JMP 0x0054558e
0054557d  e8de991a00                CALL 0x006eef60
00545582  33d2                      XOR EDX,EDX
00545584  b928000000                MOV ECX,0x28
00545589  f7f1                      DIV ECX
0054558b  83c20f                    ADD EDX,0xf
0054558e  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
00545594  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0054559c  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005455a4  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
005455a8  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
005455ad  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005455b5  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005455bd  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
005455c3  85d2                      TEST EDX,EDX
005455c5  7e1a                      JLE 0x005455e1
005455c7  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
005455cf  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
005455d7  2bc8                      SUB ECX,EAX
005455d9  03ca                      ADD ECX,EDX
005455db  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
005455e1  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
005455e7  85f6                      TEST ESI,ESI
005455e9  745b                      JZ 0x00545646
005455eb  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005455f1  2500400000                AND EAX,0x4000
005455f6  83c800                    OR EAX,0x0
005455f9  0f8541090000              JNZ 0x00545f40
005455ff  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00545605  e8467d1b00                CALL 0x006fd350
0054560a  84c0                      TEST AL,AL
0054560c  0f852e090000              JNZ 0x00545f40
00545612  a17816c700                MOV EAX,[0x00c71678]
00545617  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0054561d  034720                    ADD EAX,dword ptr [EDI + 0x20]
00545620  2507000080                AND EAX,0x80000007
00545625  7907                      JNS 0x0054562e
00545627  48                        DEC EAX
00545628  83c8f8                    OR EAX,0xfffffff8
0054562b  83c001                    ADD EAX,0x1
0054562e  0f850c090000              JNZ 0x00545f40
00545634  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0054563b  7509                      JNZ 0x00545646
0054563d  83fe04                    CMP ESI,0x4
00545640  0f84fa080000              JZ 0x00545f40
00545646  e815991a00                CALL 0x006eef60
0054564b  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00545651  8d8f34030000              LEA ECX,[EDI + 0x334]
00545657  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0054565b  8d44241c                  LEA EAX,[ESP + 0x1c]
0054565f  50                        PUSH EAX
00545660  8d442410                  LEA EAX,[ESP + 0x10]
00545664  894c2468                  MOV dword ptr [ESP + 0x68],ECX
00545668  50                        PUSH EAX
00545669  57                        PUSH EDI
0054566a  6840b6c700                PUSH 0xc7b640
0054566f  51                        PUSH ECX
00545670  8d442424                  LEA EAX,[ESP + 0x24]
00545674  89742428                  MOV dword ptr [ESP + 0x28],ESI
00545678  50                        PUSH EAX
00545679  8d44243c                  LEA EAX,[ESP + 0x3c]
0054567d  c744242400000000          MOV dword ptr [ESP + 0x24],0x0
00545685  50                        PUSH EAX
00545686  c744242c1a000000          MOV dword ptr [ESP + 0x2c],0x1a
0054568e  c7442440e8030000          MOV dword ptr [ESP + 0x40],0x3e8
00545696  e845f03100                CALL 0x008646e0
0054569b  a17816c700                MOV EAX,[0x00c71678]
005456a0  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
005456a4  894c2418                  MOV dword ptr [ESP + 0x18],ECX
005456a8  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
005456af  0f8c98020000              JL 0x0054594d
005456b5  8b8020660200              MOV EAX,dword ptr [EAX + 0x26620]
005456bb  89442428                  MOV dword ptr [ESP + 0x28],EAX
005456bf  e89c981a00                CALL 0x006eef60
005456c4  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
005456cc  8bf0                      MOV ESI,EAX
005456ce  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
005456d2  a174f6b100                MOV EAX,[0x00b1f674]
005456d7  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
005456db  89742420                  MOV dword ptr [ESP + 0x20],ESI
005456df  660fd6842488000000        MOVQ qword ptr [ESP + 0x88],XMM0
005456e8  89442424                  MOV dword ptr [ESP + 0x24],EAX
005456ec  83f905                    CMP ECX,0x5
005456ef  0f8589000000              JNZ 0x0054577e
005456f5  81fa2c010000              CMP EDX,0x12c
005456fb  0f8702020000              JA 0x00545903
00545701  0f8456010000              JZ 0x0054585d
00545707  83fa46                    CMP EDX,0x46
0054570a  0f84a5000000              JZ 0x005457b5
00545710  83fa64                    CMP EDX,0x64
00545713  7569                      JNZ 0x0054577e
00545715  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
00545719  8b742428                  MOV ESI,dword ptr [ESP + 0x28]
0054571d  83f819                    CMP EAX,0x19
00545720  7438                      JZ 0x0054575a
00545722  89442440                  MOV dword ptr [ESP + 0x40],EAX
00545726  8d4e20                    LEA ECX,[ESI + 0x20]
00545729  8d442440                  LEA EAX,[ESP + 0x40]
0054572d  50                        PUSH EAX
0054572e  8d8424c4000000            LEA EAX,[ESP + 0xc4]
00545735  50                        PUSH EAX
00545736  e86531eeff                CALL 0x004288a0
0054573b  8b8c24c8000000            MOV ECX,dword ptr [ESP + 0xc8]
00545742  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
00545746  80790d00                  CMP byte ptr [ECX + 0xd],0x0
0054574a  750a                      JNZ 0x00545756
0054574c  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
0054574f  7c05                      JL 0x00545756
00545751  3b4e20                    CMP ECX,dword ptr [ESI + 0x20]
00545754  7504                      JNZ 0x0054575a
00545756  b101                      MOV CL,0x1
00545758  eb02                      JMP 0x0054575c
0054575a  32c9                      XOR CL,CL
0054575c  85c0                      TEST EAX,EAX
0054575e  7404                      JZ 0x00545764
00545760  84c9                      TEST CL,CL
00545762  7412                      JZ 0x00545776
00545764  8b06                      MOV EAX,dword ptr [ESI]
00545766  8bce                      MOV ECX,ESI
00545768  6a00                      PUSH 0x0
0054576a  8b8084000000              MOV EAX,dword ptr [EAX + 0x84]
00545770  ffd0                      CALL EAX
00545772  8944240c                  MOV dword ptr [ESP + 0xc],EAX
00545776  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
0054577a  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
0054577e  8b742414                  MOV ESI,dword ptr [ESP + 0x14]
00545782  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00545788  2500000020                AND EAX,0x20000000
0054578d  83c800                    OR EAX,0x0
00545790  0f84f0010000              JZ 0x00545986
00545796  81f9e8030000              CMP ECX,0x3e8
0054579c  0f85e4010000              JNZ 0x00545986
005457a2  83c2ea                    ADD EDX,-0x16
005457a5  83fa04                    CMP EDX,0x4
005457a8  0f87d8010000              JA 0x00545986
005457ae  ff2495545f5400            JMP dword ptr [EDX*0x4 + 0x545f54]
005457b5  8b54240c                  MOV EDX,dword ptr [ESP + 0xc]
005457b9  8bc2                      MOV EAX,EDX
005457bb  c1e80b                    SHR EAX,0xb
005457be  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
005457c2  85d2                      TEST EDX,EDX
005457c4  742c                      JZ 0x005457f2
005457c6  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
005457ca  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005457d0  6a00                      PUSH 0x0
005457d2  52                        PUSH EDX
005457d3  8b00                      MOV EAX,dword ptr [EAX]
005457d5  8d8940a70100              LEA ECX,[ECX + 0x1a740]
005457db  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
005457de  e89df21e00                CALL 0x00734a80
005457e3  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
005457e7  50                        PUSH EAX
005457e8  ffd6                      CALL ESI
005457ea  84c0                      TEST AL,AL
005457ec  7488                      JZ 0x00545776
005457ee  8b742420                  MOV ESI,dword ptr [ESP + 0x20]
005457f2  a17816c700                MOV EAX,[0x00c71678]
005457f7  0540a70100                ADD EAX,0x1a740
005457fc  89442440                  MOV dword ptr [ESP + 0x40],EAX
00545800  85f6                      TEST ESI,ESI
00545802  7510                      JNZ 0x00545814
00545804  6854bfb600                PUSH 0xb6bf54
00545809  6a10                      PUSH 0x10
0054580b  e8b0ba4c00                CALL 0x00a112c0
00545810  83c408                    ADD ESP,0x8
00545813  cc                        INT3
00545814  8b8c2488000000            MOV ECX,dword ptr [ESP + 0x88]
0054581b  8bd6                      MOV EDX,ESI
0054581d  d3ea                      SHR EDX,CL
0054581f  8b8c248c000000            MOV ECX,dword ptr [ESP + 0x8c]
00545826  33d6                      XOR EDX,ESI
00545828  8bc2                      MOV EAX,EDX
0054582a  d3e0                      SHL EAX,CL
0054582c  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
00545830  33c2                      XOR EAX,EDX
00545832  8bf0                      MOV ESI,EAX
00545834  d3ee                      SHR ESI,CL
00545836  8b4c2440                  MOV ECX,dword ptr [ESP + 0x40]
0054583a  33f0                      XOR ESI,EAX
0054583c  56                        PUSH ESI
0054583d  89742424                  MOV dword ptr [ESP + 0x24],ESI
00545841  e8baf01e00                CALL 0x00734900
00545846  8b4c242c                  MOV ECX,dword ptr [ESP + 0x2c]
0054584a  8bd0                      MOV EDX,EAX
0054584c  83e101                    AND ECX,0x1
0054584f  c1e10b                    SHL ECX,0xb
00545852  0bd1                      OR EDX,ECX
00545854  8954240c                  MOV dword ptr [ESP + 0xc],EDX
00545858  e965ffffff                JMP 0x005457c2
0054585d  8b54240c                  MOV EDX,dword ptr [ESP + 0xc]
00545861  85d2                      TEST EDX,EDX
00545863  7414                      JZ 0x00545879
00545865  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
00545869  52                        PUSH EDX
0054586a  8b01                      MOV EAX,dword ptr [ECX]
0054586c  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0054586f  ffd0                      CALL EAX
00545871  84c0                      TEST AL,AL
00545873  0f84fdfeffff              JZ 0x00545776
00545879  85f6                      TEST ESI,ESI
0054587b  7510                      JNZ 0x0054588d
0054587d  6854bfb600                PUSH 0xb6bf54
00545882  6a10                      PUSH 0x10
00545884  e837ba4c00                CALL 0x00a112c0
00545889  83c408                    ADD ESP,0x8
0054588c  cc                        INT3
0054588d  8b8c2488000000            MOV ECX,dword ptr [ESP + 0x88]
00545894  8bc6                      MOV EAX,ESI
00545896  d3e8                      SHR EAX,CL
00545898  8b8c248c000000            MOV ECX,dword ptr [ESP + 0x8c]
0054589f  33c6                      XOR EAX,ESI
005458a1  8bd0                      MOV EDX,EAX
005458a3  d3e2                      SHL EDX,CL
005458a5  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
005458a9  33d0                      XOR EDX,EAX
005458ab  6a01                      PUSH 0x1
005458ad  6a0a                      PUSH 0xa
005458af  8bf2                      MOV ESI,EDX
005458b1  6a0a                      PUSH 0xa
005458b3  d3ee                      SHR ESI,CL
005458b5  33f2                      XOR ESI,EDX
005458b7  6a19                      PUSH 0x19
005458b9  56                        PUSH ESI
005458ba  e8c1e81e00                CALL 0x00734180
005458bf  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
005458c7  8b0d74f6b100              MOV ECX,dword ptr [0x00b1f674]
005458cd  6a00                      PUSH 0x0
005458cf  6a01                      PUSH 0x1
005458d1  6a01                      PUSH 0x1
005458d3  50                        PUSH EAX
005458d4  8d8424f8010000            LEA EAX,[ESP + 0x1f8]
005458db  89b424f8010000            MOV dword ptr [ESP + 0x1f8],ESI
005458e2  50                        PUSH EAX
005458e3  660fd6842400020000        MOVQ qword ptr [ESP + 0x200],XMM0
005458ec  898c2408020000            MOV dword ptr [ESP + 0x208],ECX
005458f3  e848fa3100                CALL 0x00865340
005458f8  8bd0                      MOV EDX,EAX
005458fa  8954240c                  MOV dword ptr [ESP + 0xc],EDX
005458fe  e95effffff                JMP 0x00545861
00545903  81fa5e010000              CMP EDX,0x15e
00545909  0f856ffeffff              JNZ 0x0054577e
0054590f  8b4c240c                  MOV ECX,dword ptr [ESP + 0xc]
00545913  8b7c2428                  MOV EDI,dword ptr [ESP + 0x28]
00545917  85c9                      TEST ECX,ECX
00545919  740e                      JZ 0x00545929
0054591b  8b07                      MOV EAX,dword ptr [EDI]
0054591d  51                        PUSH ECX
0054591e  8bcf                      MOV ECX,EDI
00545920  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
00545923  ffd0                      CALL EAX
00545925  84c0                      TEST AL,AL
00545927  741b                      JZ 0x00545944
00545929  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054592f  6a00                      PUSH 0x0
00545931  8d8940a70100              LEA ECX,[ECX + 0x1a740]
00545937  e864e31e00                CALL 0x00733ca0
0054593c  8bc8                      MOV ECX,EAX
0054593e  894c240c                  MOV dword ptr [ESP + 0xc],ECX
00545942  ebd3                      JMP 0x00545917
00545944  8b7c2450                  MOV EDI,dword ptr [ESP + 0x50]
00545948  e929feffff                JMP 0x00545776
0054594d  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
00545951  e92cfeffff                JMP 0x00545782
00545986  6a00                      PUSH 0x0
00545988  51                        PUSH ECX
00545989  8b8e80650200              MOV ECX,dword ptr [ESI + 0x26580]
0054598f  e8fca61a00                CALL 0x006f0090
00545994  89442434                  MOV dword ptr [ESP + 0x34],EAX
00545998  85c0                      TEST EAX,EAX
0054599a  0f843e050000              JZ 0x00545ede
005459a0  e8eb2a5200                CALL 0x00a68490
005459a5  89542420                  MOV dword ptr [ESP + 0x20],EDX
005459a9  8bc8                      MOV ECX,EAX
005459ab  badb34b6d7                MOV EDX,0xd7b634db
005459b0  bf82de1b43                MOV EDI,0x431bde82
005459b5  f7e2                      MUL EDX
005459b7  89442468                  MOV dword ptr [ESP + 0x68],EAX
005459bb  8bf2                      MOV ESI,EDX
005459bd  8bc1                      MOV EAX,ECX
005459bf  b9db34b6d7                MOV ECX,0xd7b634db
005459c4  f7e7                      MUL EDI
005459c6  8bf8                      MOV EDI,EAX
005459c8  89542438                  MOV dword ptr [ESP + 0x38],EDX
005459cc  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
005459d0  f7e1                      MUL ECX
005459d2  8bc8                      MOV ECX,EAX
005459d4  89542444                  MOV dword ptr [ESP + 0x44],EDX
005459d8  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
005459dc  ba82de1b43                MOV EDX,0x431bde82
005459e1  f7e2                      MUL EDX
005459e3  03ce                      ADD ECX,ESI
005459e5  89542420                  MOV dword ptr [ESP + 0x20],EDX
005459e9  8b542444                  MOV EDX,dword ptr [ESP + 0x44]
005459ed  83d200                    ADC EDX,0x0
005459f0  89442428                  MOV dword ptr [ESP + 0x28],EAX
005459f4  8b742428                  MOV ESI,dword ptr [ESP + 0x28]
005459f8  03f9                      ADD EDI,ECX
005459fa  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
005459fe  83d100                    ADC ECX,0x0
00545a01  897c2468                  MOV dword ptr [ESP + 0x68],EDI
00545a05  8b7c2434                  MOV EDI,dword ptr [ESP + 0x34]
00545a09  33c0                      XOR EAX,EAX
00545a0b  03d1                      ADD EDX,ECX
00545a0d  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
00545a11  13c0                      ADC EAX,EAX
00545a13  03f2                      ADD ESI,EDX
00545a15  13c8                      ADC ECX,EAX
00545a17  0facce12                  SHRD ESI,ECX,0x12
00545a1b  89742428                  MOV dword ptr [ESP + 0x28],ESI
00545a1f  8b742450                  MOV ESI,dword ptr [ESP + 0x50]
00545a23  c1e912                    SHR ECX,0x12
00545a26  894c2420                  MOV dword ptr [ESP + 0x20],ECX
00545a2a  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
00545a2d  894734                    MOV dword ptr [EDI + 0x34],EAX
00545a30  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
00545a33  894738                    MOV dword ptr [EDI + 0x38],EAX
00545a36  8d87c8030000              LEA EAX,[EDI + 0x3c8]
00545a3c  8b08                      MOV ECX,dword ptr [EAX]
00545a3e  85c9                      TEST ECX,ECX
00545a40  741a                      JZ 0x00545a5c
00545a42  89442438                  MOV dword ptr [ESP + 0x38],EAX
00545a46  81c1cc030000              ADD ECX,0x3cc
00545a4c  8d442438                  LEA EAX,[ESP + 0x38]
00545a50  50                        PUSH EAX
00545a51  e8ba97f8ff                CALL 0x004cf210
00545a56  8d87c8030000              LEA EAX,[EDI + 0x3c8]
00545a5c  50                        PUSH EAX
00545a5d  8bce                      MOV ECX,ESI
00545a5f  8930                      MOV dword ptr [EAX],ESI
00545a61  e88a82f8ff                CALL 0x004cdcf0
00545a66  8b8634030000              MOV EAX,dword ptr [ESI + 0x334]
00545a6c  8bcf                      MOV ECX,EDI
00545a6e  ff74241c                  PUSH dword ptr [ESP + 0x1c]
00545a72  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
00545a76  ff742410                  PUSH dword ptr [ESP + 0x10]
00545a7a  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
00545a80  8b8638030000              MOV EAX,dword ptr [ESI + 0x338]
00545a86  ff742418                  PUSH dword ptr [ESP + 0x18]
00545a8a  898740030000              MOV dword ptr [EDI + 0x340],EAX
00545a90  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00545a98  8b07                      MOV EAX,dword ptr [EDI]
00545a9a  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00545aa2  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00545aaa  52                        PUSH EDX
00545aab  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00545ab3  ff5004                    CALL dword ptr [EAX + 0x4]
00545ab6  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
00545aba  57                        PUSH EDI
00545abb  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
00545ac1  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
00545ac7  8d4101                    LEA EAX,[ECX + 0x1]
00545aca  898214120000              MOV dword ptr [EDX + 0x1214],EAX
00545ad0  894f20                    MOV dword ptr [EDI + 0x20],ECX
00545ad3  8d8a18120000              LEA ECX,[EDX + 0x1218]
00545ad9  e8222aedff                CALL 0x00418500
00545ade  6a01                      PUSH 0x1
00545ae0  8bce                      MOV ECX,ESI
00545ae2  e8a9001700                CALL 0x006b5b90
00545ae7  84c0                      TEST AL,AL
00545ae9  0f8483020000              JZ 0x00545d72
00545aef  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00545af5  33c0                      XOR EAX,EAX
00545af7  81e100000010              AND ECX,0x10000000
00545afd  0bc1                      OR EAX,ECX
00545aff  0f8482000000              JZ 0x00545b87
00545b05  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00545b0b  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00545b0f  0d00000010                OR EAX,0x10000000
00545b14  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
00545b1a  899768010000              MOV dword ptr [EDI + 0x168],EDX
00545b20  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00545b26  83f909                    CMP ECX,0x9
00545b29  7414                      JZ 0x00545b3f
00545b2b  83f907                    CMP ECX,0x7
00545b2e  740f                      JZ 0x00545b3f
00545b30  83c820                    OR EAX,0x20
00545b33  899768010000              MOV dword ptr [EDI + 0x168],EDX
00545b39  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00545b3f  ffb664020000              PUSH dword ptr [ESI + 0x264]
00545b45  8d8c2424010000            LEA ECX,[ESP + 0x124]
00545b4c  e8bfb7eeff                CALL 0x00431310
00545b51  6a00                      PUSH 0x0
00545b53  6a00                      PUSH 0x0
00545b55  6aff                      PUSH -0x1
00545b57  8d84242c010000            LEA EAX,[ESP + 0x12c]
00545b5e  8bcf                      MOV ECX,EDI
00545b60  50                        PUSH EAX
00545b61  e80a7d1600                CALL 0x006ad870
00545b66  8b542418                  MOV EDX,dword ptr [ESP + 0x18]
00545b6a  8d42f6                    LEA EAX,[EDX + -0xa]
00545b6d  3ddd030000                CMP EAX,0x3dd
00545b72  773f                      JA 0x00545bb3
00545b74  6a01                      PUSH 0x1
00545b76  ff742414                  PUSH dword ptr [ESP + 0x14]
00545b7a  8d4f48                    LEA ECX,[EDI + 0x48]
00545b7d  e88e01f6ff                CALL 0x004a5d10
00545b82  83c408                    ADD ESP,0x8
00545b85  eb2c                      JMP 0x00545bb3
00545b87  6a00                      PUSH 0x0
00545b89  6800000020                PUSH 0x20000000
00545b8e  8bce                      MOV ECX,ESI
00545b90  e89b18edff                CALL 0x00417430
00545b95  84c0                      TEST AL,AL
00545b97  741a                      JZ 0x00545bb3
00545b99  6a00                      PUSH 0x0
00545b9b  6a00                      PUSH 0x0
00545b9d  6aff                      PUSH -0x1
00545b9f  8d8c24cc010000            LEA ECX,[ESP + 0x1cc]
00545ba6  e8c500efff                CALL 0x00435c70
00545bab  50                        PUSH EAX
00545bac  8bcf                      MOV ECX,EDI
00545bae  e8bd7c1600                CALL 0x006ad870
00545bb3  6a00                      PUSH 0x0
00545bb5  68acd6c500                PUSH 0xc5d6ac
00545bba  68dcd5c500                PUSH 0xc5d5dc
00545bbf  6a00                      PUSH 0x0
00545bc1  56                        PUSH ESI
00545bc2  e8eaac5a00                CALL 0x00af08b1
00545bc7  83c414                    ADD ESP,0x14
00545bca  89442424                  MOV dword ptr [ESP + 0x24],EAX
00545bce  6a00                      PUSH 0x0
00545bd0  68acd6c500                PUSH 0xc5d6ac
00545bd5  68dcd5c500                PUSH 0xc5d5dc
00545bda  6a00                      PUSH 0x0
00545bdc  57                        PUSH EDI
00545bdd  e8cfac5a00                CALL 0x00af08b1
00545be2  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
00545be6  83c414                    ADD ESP,0x14
00545be9  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
00545bed  85c9                      TEST ECX,ECX
00545bef  0f847d010000              JZ 0x00545d72
00545bf5  85c0                      TEST EAX,EAX
00545bf7  0f8475010000              JZ 0x00545d72
00545bfd  6a00                      PUSH 0x0
00545bff  6a01                      PUSH 0x1
00545c01  8bc8                      MOV ECX,EAX
00545c03  e82818edff                CALL 0x00417430
00545c08  84c0                      TEST AL,AL
00545c0a  0f8599000000              JNZ 0x00545ca9
00545c10  6800000001                PUSH 0x1000000
00545c15  6a00                      PUSH 0x0
00545c17  8bce                      MOV ECX,ESI
00545c19  e81218edff                CALL 0x00417430
00545c1e  84c0                      TEST AL,AL
00545c20  7421                      JZ 0x00545c43
00545c22  6a00                      PUSH 0x0
00545c24  8d8c244c010000            LEA ECX,[ESP + 0x14c]
00545c2b  e8e0b6eeff                CALL 0x00431310
00545c30  8b4c241c                  MOV ECX,dword ptr [ESP + 0x1c]
00545c34  8d842448010000            LEA EAX,[ESP + 0x148]
00545c3b  6a5a                      PUSH 0x5a
00545c3d  50                        PUSH EAX
00545c3e  e88d1c1700                CALL 0x006b78d0
00545c43  6a00                      PUSH 0x0
00545c45  6800000001                PUSH 0x1000000
00545c4a  8bce                      MOV ECX,ESI
00545c4c  e8df17edff                CALL 0x00417430
00545c51  84c0                      TEST AL,AL
00545c53  7454                      JZ 0x00545ca9
00545c55  6a00                      PUSH 0x0
00545c57  8d8c2474010000            LEA ECX,[ESP + 0x174]
00545c5e  e8adb6eeff                CALL 0x00431310
00545c63  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
00545c67  8d842470010000            LEA EAX,[ESP + 0x170]
00545c6e  6a00                      PUSH 0x0
00545c70  6a00                      PUSH 0x0
00545c72  6a5a                      PUSH 0x5a
00545c74  50                        PUSH EAX
00545c75  8bce                      MOV ECX,ESI
00545c77  e894ff1600                CALL 0x006b5c10
00545c7c  83be3c02000000            CMP dword ptr [ESI + 0x23c],0x0
00545c83  7e28                      JLE 0x00545cad
00545c85  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00545c8b  818e6801000000000001      OR dword ptr [ESI + 0x168],0x1000000
00545c95  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00545c9b  8b86b8030000              MOV EAX,dword ptr [ESI + 0x3b8]
00545ca1  8986b4030000              MOV dword ptr [ESI + 0x3b4],EAX
00545ca7  eb04                      JMP 0x00545cad
00545ca9  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
00545cad  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
00545cb1  8bce                      MOV ECX,ESI
00545cb3  f30f108e380c0000          MOVSS XMM1,dword ptr [ESI + 0xc38]
00545cbb  f30f5988480f0000          MULSS XMM1,dword ptr [EAX + 0xf48]
00545cc3  f30f118e380c0000          MOVSS dword ptr [ESI + 0xc38],XMM1
00545ccb  f30f598eb4030000          MULSS XMM1,dword ptr [ESI + 0x3b4]
00545cd3  0f28c1                    MOVAPS XMM0,XMM1
00545cd6  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00545cde  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00545ce6  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00545cee  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00545cf6  f30f1086480f0000          MOVSS XMM0,dword ptr [ESI + 0xf48]
00545cfe  f30f5980480f0000          MULSS XMM0,dword ptr [EAX + 0xf48]
00545d06  f30f1186480f0000          MOVSS dword ptr [ESI + 0xf48],XMM0
00545d0e  f30f1086440f0000          MOVSS XMM0,dword ptr [ESI + 0xf44]
00545d16  f30f5980440f0000          MULSS XMM0,dword ptr [EAX + 0xf44]
00545d1e  f30f1186440f0000          MOVSS dword ptr [ESI + 0xf44],XMM0
00545d26  f30f108684030000          MOVSS XMM0,dword ptr [ESI + 0x384]
00545d2e  f30f5980440f0000          MULSS XMM0,dword ptr [EAX + 0xf44]
00545d36  f30f118684030000          MOVSS dword ptr [ESI + 0x384],XMM0
00545d3e  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
00545d46  f30f5980440f0000          MULSS XMM0,dword ptr [EAX + 0xf44]
00545d4e  8b06                      MOV EAX,dword ptr [ESI]
00545d50  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
00545d58  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
00545d5b  ffd0                      CALL EAX
00545d5d  84c0                      TEST AL,AL
00545d5f  7411                      JZ 0x00545d72
00545d61  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
00545d65  ffb1540f0000              PUSH dword ptr [ECX + 0xf54]
00545d6b  8bce                      MOV ECX,ESI
00545d6d  e8ce730c00                CALL 0x0060d140
00545d72  57                        PUSH EDI
00545d73  e8781b1c00                CALL 0x007078f0
00545d78  84c0                      TEST AL,AL
00545d7a  7407                      JZ 0x00545d83
00545d7c  51                        PUSH ECX
00545d7d  57                        PUSH EDI
00545d7e  e83d1c1c00                CALL 0x007079c0
00545d83  80bf7201000000            CMP byte ptr [EDI + 0x172],0x0
00545d8a  0f84bc000000              JZ 0x00545e4c
00545d90  8b542414                  MOV EDX,dword ptr [ESP + 0x14]
00545d94  8b8258770600              MOV EAX,dword ptr [EDX + 0x67758]
00545d9a  3b825c770600              CMP EAX,dword ptr [EDX + 0x6775c]
00545da0  0f84a6000000              JZ 0x00545e4c
00545da6  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00545da9  8db280770600              LEA ESI,[EDX + 0x67780]
00545daf  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
00545db2  89442454                  MOV dword ptr [ESP + 0x54],EAX
00545db6  8d442450                  LEA EAX,[ESP + 0x50]
00545dba  50                        PUSH EAX
00545dbb  8d442448                  LEA EAX,[ESP + 0x48]
00545dbf  894c2454                  MOV dword ptr [ESP + 0x54],ECX
00545dc3  50                        PUSH EAX
00545dc4  8bce                      MOV ECX,ESI
00545dc6  e8d5c64900                CALL 0x009e24a0
00545dcb  8b06                      MOV EAX,dword ptr [ESI]
00545dcd  39442444                  CMP dword ptr [ESP + 0x44],EAX
00545dd1  7529                      JNZ 0x00545dfc
00545dd3  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00545dd6  8bce                      MOV ECX,ESI
00545dd8  89442468                  MOV dword ptr [ESP + 0x68],EAX
00545ddc  8d442468                  LEA EAX,[ESP + 0x68]
00545de0  50                        PUSH EAX
00545de1  8d8424c0000000            LEA EAX,[ESP + 0xc0]
00545de8  c7442470ffffffff          MOV dword ptr [ESP + 0x70],0xffffffff
00545df0  50                        PUSH EAX
00545df1  e8aac64900                CALL 0x009e24a0
00545df6  8b0e                      MOV ECX,dword ptr [ESI]
00545df8  3908                      CMP dword ptr [EAX],ECX
00545dfa  7450                      JZ 0x00545e4c
00545dfc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00545e02  33f6                      XOR ESI,ESI
00545e04  81c1a8ba0100              ADD ECX,0x1baa8
00545e0a  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
00545e0d  2b01                      SUB EAX,dword ptr [ECX]
00545e0f  c1f802                    SAR EAX,0x2
00545e12  85c0                      TEST EAX,EAX
00545e14  7436                      JZ 0x00545e4c
00545e16  56                        PUSH ESI
00545e17  e8a4344700                CALL 0x009b92c0
00545e1c  6840b6c700                PUSH 0xc7b640
00545e21  ff742468                  PUSH dword ptr [ESP + 0x68]
00545e25  57                        PUSH EDI
00545e26  8d88c81f0000              LEA ECX,[EAX + 0x1fc8]
00545e2c  6a06                      PUSH 0x6
00545e2e  e84da84900                CALL 0x009e0680
00545e33  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00545e39  46                        INC ESI
00545e3a  81c1a8ba0100              ADD ECX,0x1baa8
00545e40  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
00545e43  2b01                      SUB EAX,dword ptr [ECX]
00545e45  c1f802                    SAR EAX,0x2
00545e48  3bf0                      CMP ESI,EAX
00545e4a  72ca                      JC 0x00545e16
00545e4c  e83f265200                CALL 0x00a68490
00545e51  89542450                  MOV dword ptr [ESP + 0x50],EDX
00545e55  8bc8                      MOV ECX,EAX
00545e57  badb34b6d7                MOV EDX,0xd7b634db
00545e5c  bf82de1b43                MOV EDI,0x431bde82
00545e61  f7e2                      MUL EDX
00545e63  8bf2                      MOV ESI,EDX
00545e65  89442478                  MOV dword ptr [ESP + 0x78],EAX
00545e69  8bc1                      MOV EAX,ECX
00545e6b  b9db34b6d7                MOV ECX,0xd7b634db
00545e70  f7e7                      MUL EDI
00545e72  89542438                  MOV dword ptr [ESP + 0x38],EDX
00545e76  8bf8                      MOV EDI,EAX
00545e78  8b442450                  MOV EAX,dword ptr [ESP + 0x50]
00545e7c  f7e1                      MUL ECX
00545e7e  89542464                  MOV dword ptr [ESP + 0x64],EDX
00545e82  8bc8                      MOV ECX,EAX
00545e84  8b442450                  MOV EAX,dword ptr [ESP + 0x50]
00545e88  ba82de1b43                MOV EDX,0x431bde82
00545e8d  f7e2                      MUL EDX
00545e8f  03ce                      ADD ECX,ESI
00545e91  89542440                  MOV dword ptr [ESP + 0x40],EDX
00545e95  8b542464                  MOV EDX,dword ptr [ESP + 0x64]
00545e99  83d200                    ADC EDX,0x0
00545e9c  89442444                  MOV dword ptr [ESP + 0x44],EAX
00545ea0  03f9                      ADD EDI,ECX
00545ea2  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
00545ea6  897c2478                  MOV dword ptr [ESP + 0x78],EDI
00545eaa  83d100                    ADC ECX,0x0
00545ead  33c0                      XOR EAX,EAX
00545eaf  03d1                      ADD EDX,ECX
00545eb1  8b4c2444                  MOV ECX,dword ptr [ESP + 0x44]
00545eb5  13c0                      ADC EAX,EAX
00545eb7  03ca                      ADD ECX,EDX
00545eb9  8b542440                  MOV EDX,dword ptr [ESP + 0x40]
00545ebd  13d0                      ADC EDX,EAX
00545ebf  8b442434                  MOV EAX,dword ptr [ESP + 0x34]
00545ec3  0facd112                  SHRD ECX,EDX,0x12
00545ec7  c1ea12                    SHR EDX,0x12
00545eca  2b4c2428                  SUB ECX,dword ptr [ESP + 0x28]
00545ece  1b542420                  SBB EDX,dword ptr [ESP + 0x20]
00545ed2  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
00545ed8  111534b6c700              ADC dword ptr [0x00c7b634],EDX
00545ede  6a00                      PUSH 0x0
00545ee0  68acd5c500                PUSH 0xc5d5ac
00545ee5  68dcd5c500                PUSH 0xc5d5dc
00545eea  6a00                      PUSH 0x0
00545eec  50                        PUSH EAX
00545eed  e8bfa95a00                CALL 0x00af08b1
00545ef2  8bc8                      MOV ECX,EAX
00545ef4  83c414                    ADD ESP,0x14
00545ef7  8b01                      MOV EAX,dword ptr [ECX]
00545ef9  c7815c0400001e000000      MOV dword ptr [ECX + 0x45c],0x1e
00545f03  c781600400001e000000      MOV dword ptr [ECX + 0x460],0x1e
00545f0d  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
00545f15  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
00545f1d  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
00545f25  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
00545f2d  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
00545f35  f30f1181e4000000          MOVSS dword ptr [ECX + 0xe4],XMM0
00545f3d  ff500c                    CALL dword ptr [EAX + 0xc]
00545f40  8b8c24a4020000            MOV ECX,dword ptr [ESP + 0x2a4]
00545f47  5f                        POP EDI
00545f48  5e                        POP ESI
00545f49  33cc                      XOR ECX,ESP
00545f4b  e8db915a00                CALL 0x00aef12b
00545f50  8be5                      MOV ESP,EBP
00545f52  5d                        POP EBP
00545f53  c3                        RET
