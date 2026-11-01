; J460 NPC AI 0x005111b0 AI_005111b0
; types=27,859
; identities=27.0.0,27.1.0,27.3.0,859.0.0
; entry=005111b0
005111b0  55                        PUSH EBP
005111b1  8bec                      MOV EBP,ESP
005111b3  83e4f8                    AND ESP,0xfffffff8
005111b6  81ec34010000              SUB ESP,0x134
005111bc  a1b493bf00                MOV EAX,[0x00bf93b4]
005111c1  33c4                      XOR EAX,ESP
005111c3  89842430010000            MOV dword ptr [ESP + 0x130],EAX
005111ca  53                        PUSH EBX
005111cb  56                        PUSH ESI
005111cc  57                        PUSH EDI
005111cd  8bf9                      MOV EDI,ECX
005111cf  817f285b030000            CMP dword ptr [EDI + 0x28],0x35b
005111d6  7410                      JZ 0x005111e8
005111d8  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005111dc  7406                      JZ 0x005111e4
005111de  837f3063                  CMP dword ptr [EDI + 0x30],0x63
005111e2  7504                      JNZ 0x005111e8
005111e4  32db                      XOR BL,BL
005111e6  eb02                      JMP 0x005111ea
005111e8  b301                      MOV BL,0x1
005111ea  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005111f0  885c2413                  MOV byte ptr [ESP + 0x13],BL
005111f4  85c0                      TEST EAX,EAX
005111f6  7567                      JNZ 0x0051125f
005111f8  6a01                      PUSH 0x1
005111fa  6854bcb100                PUSH 0xb1bc54
005111ff  8d4f48                    LEA ECX,[EDI + 0x48]
00511202  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0051120c  898710040000              MOV dword ptr [EDI + 0x410],EAX
00511212  e8b993efff                CALL 0x0040a5d0
00511217  84c0                      TEST AL,AL
00511219  7420                      JZ 0x0051123b
0051121b  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0051121e  85c0                      TEST EAX,EAX
00511220  7419                      JZ 0x0051123b
00511222  8d4f78                    LEA ECX,[EDI + 0x78]
00511225  0f57c9                    XORPS XMM1,XMM1
00511228  e8d37befff                CALL 0x00408e00
0051122d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00511230  85c0                      TEST EAX,EAX
00511232  7407                      JZ 0x0051123b
00511234  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
0051123b  84db                      TEST BL,BL
0051123d  0f846c0d0000              JZ 0x00511faf
00511243  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0051124a  5f                        POP EDI
0051124b  5e                        POP ESI
0051124c  5b                        POP EBX
0051124d  8b8c2430010000            MOV ECX,dword ptr [ESP + 0x130]
00511254  33cc                      XOR ECX,ESP
00511256  e8d0de5d00                CALL 0x00aef12b
0051125b  8be5                      MOV ESP,EBP
0051125d  5d                        POP EBP
0051125e  c3                        RET
0051125f  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
00511266  0f57db                    XORPS XMM3,XMM3
00511269  84db                      TEST BL,BL
0051126b  0f841c010000              JZ 0x0051138d
00511271  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00511276  0f2fc3                    COMISS XMM0,XMM3
00511279  0f860e010000              JBE 0x0051138d
0051127f  0f57c0                    XORPS XMM0,XMM0
00511282  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00511288  83f803                    CMP EAX,0x3
0051128b  742e                      JZ 0x005112bb
0051128d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00511291  7428                      JZ 0x005112bb
00511293  6844d6b100                PUSH 0xb1d644
00511298  8d4f78                    LEA ECX,[EDI + 0x78]
0051129b  e8d09befff                CALL 0x0040ae70
005112a0  84c0                      TEST AL,AL
005112a2  7411                      JZ 0x005112b5
005112a4  68f4fdb500                PUSH 0xb5fdf4
005112a9  8d4f48                    LEA ECX,[EDI + 0x48]
005112ac  e8df9defff                CALL 0x0040b090
005112b1  84c0                      TEST AL,AL
005112b3  7447                      JZ 0x005112fc
005112b5  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
005112bb  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
005112be  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
005112c1  7439                      JZ 0x005112fc
005112c3  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
005112c6  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
005112c9  894c242c                  MOV dword ptr [ESP + 0x2c],ECX
005112cd  8bca                      MOV ECX,EDX
005112cf  81e100800000              AND ECX,0x8000
005112d5  83c900                    OR ECX,0x0
005112d8  7514                      JNZ 0x005112ee
005112da  81e280004000              AND EDX,0x400080
005112e0  0bd1                      OR EDX,ECX
005112e2  7504                      JNZ 0x005112e8
005112e4  f30f5800                  ADDSS XMM0,dword ptr [EAX]
005112e8  c70000000000              MOV dword ptr [EAX],0x0
005112ee  83c038                    ADD EAX,0x38
005112f1  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
005112f4  75cd                      JNZ 0x005112c3
005112f6  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
005112fc  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
00511303  0f57db                    XORPS XMM3,XMM3
00511306  0f8581000000              JNZ 0x0051138d
0051130c  f30f1054241c              MOVSS XMM2,dword ptr [ESP + 0x1c]
00511312  0f2fd3                    COMISS XMM2,XMM3
00511315  7676                      JBE 0x0051138d
00511317  f30f104f14                MOVSS XMM1,dword ptr [EDI + 0x14]
0051131c  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00511322  0f28c1                    MOVAPS XMM0,XMM1
00511325  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0051132d  f30f590dd0a0ba00          MULSS XMM1,dword ptr [0x00baa0d0]
00511335  f30f2cc0                  CVTTSS2SI EAX,XMM0
00511339  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00511341  99                        CDQ
00511342  f30f5cc1                  SUBSS XMM0,XMM1
00511346  2bc2                      SUB EAX,EDX
00511348  d1f8                      SAR EAX,0x1
0051134a  03c8                      ADD ECX,EAX
0051134c  b80a000000                MOV EAX,0xa
00511351  3bc8                      CMP ECX,EAX
00511353  f30f5fc3                  MAXSS XMM0,XMM3
00511357  0f4cc1                    CMOVL EAX,ECX
0051135a  0f2f157ca8ba00            COMISS XMM2,dword ptr [0x00baa87c]
00511361  898710040000              MOV dword ptr [EDI + 0x410],EAX
00511367  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0051136f  761c                      JBE 0x0051138d
00511371  6a00                      PUSH 0x0
00511373  8d4f48                    LEA ECX,[EDI + 0x48]
00511376  689c0db600                PUSH 0xb60d9c
0051137b  e80090efff                CALL 0x0040a380
00511380  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
0051138a  0f57db                    XORPS XMM3,XMM3
0051138d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00511394  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0051139c  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
005113a4  0f8410010000              JZ 0x005114ba
005113aa  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005113b0  83e010                    AND EAX,0x10
005113b3  83c800                    OR EAX,0x0
005113b6  0f84a7000000              JZ 0x00511463
005113bc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005113c0  7447                      JZ 0x00511409
005113c2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005113c9  743e                      JZ 0x00511409
005113cb  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005113ce  83781410                  CMP dword ptr [EAX + 0x14],0x10
005113d2  7202                      JC 0x005113d6
005113d4  8b00                      MOV EAX,dword ptr [EAX]
005113d6  b99c0db600                MOV ECX,0xb60d9c
005113db  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
005113e0  8a10                      MOV DL,byte ptr [EAX]
005113e2  3a11                      CMP DL,byte ptr [ECX]
005113e4  751a                      JNZ 0x00511400
005113e6  84d2                      TEST DL,DL
005113e8  7412                      JZ 0x005113fc
005113ea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005113ed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005113f0  750e                      JNZ 0x00511400
005113f2  83c002                    ADD EAX,0x2
005113f5  83c102                    ADD ECX,0x2
005113f8  84d2                      TEST DL,DL
005113fa  75e4                      JNZ 0x005113e0
005113fc  33c0                      XOR EAX,EAX
005113fe  eb05                      JMP 0x00511405
00511400  1bc0                      SBB EAX,EAX
00511402  83c801                    OR EAX,0x1
00511405  85c0                      TEST EAX,EAX
00511407  745a                      JZ 0x00511463
00511409  84db                      TEST BL,BL
0051140b  7456                      JZ 0x00511463
0051140d  6a00                      PUSH 0x0
0051140f  68000a0001                PUSH 0x1000a00
00511414  8bcf                      MOV ECX,EDI
00511416  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
0051141c  e80f60f0ff                CALL 0x00417430
00511421  84c0                      TEST AL,AL
00511423  740a                      JZ 0x0051142f
00511425  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
0051142d  eb06                      JMP 0x00511435
0051142f  f30f104c2430              MOVSS XMM1,dword ptr [ESP + 0x30]
00511435  f30f598f9c030000          MULSS XMM1,dword ptr [EDI + 0x39c]
0051143d  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00511445  f30f5e0d44aaba00          DIVSS XMM1,dword ptr [0x00baaa44]
0051144d  f30f588fbc0b0000          ADDSS XMM1,dword ptr [EDI + 0xbbc]
00511455  f30f5dc8                  MINSS XMM1,XMM0
00511459  f30f118fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM1
00511461  eb45                      JMP 0x005114a8
00511463  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0051146b  f30f59c1                  MULSS XMM0,XMM1
0051146f  f30f108fbc0b0000          MOVSS XMM1,dword ptr [EDI + 0xbbc]
00511477  f30f5e0544aaba00          DIVSS XMM0,dword ptr [0x00baaa44]
0051147f  f30f5cc8                  SUBSS XMM1,XMM0
00511483  f30f5fcb                  MAXSS XMM1,XMM3
00511487  f30f118fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM1
0051148f  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00511497  84db                      TEST BL,BL
00511499  750d                      JNZ 0x005114a8
0051149b  c787bc0b000000000000      MOV dword ptr [EDI + 0xbbc],0x0
005114a5  0f28cb                    MOVAPS XMM1,XMM3
005114a8  0f28d9                    MOVAPS XMM3,XMM1
005114ab  0f57d2                    XORPS XMM2,XMM2
005114ae  6a01                      PUSH 0x1
005114b0  0f28c8                    MOVAPS XMM1,XMM0
005114b3  8bcf                      MOV ECX,EDI
005114b5  e886791c00                CALL 0x006d8e40
005114ba  817f285b030000            CMP dword ptr [EDI + 0x28],0x35b
005114c1  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
005114c9  0f852d010000              JNZ 0x005115fc
005114cf  f30f5915e0a3ba00          MULSS XMM2,dword ptr [0x00baa3e0]
005114d7  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005114dd  2500020000                AND EAX,0x200
005114e2  83c800                    OR EAX,0x0
005114e5  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
005114ed  741b                      JZ 0x0051150a
005114ef  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005114f6  7512                      JNZ 0x0051150a
005114f8  6a00                      PUSH 0x0
005114fa  8d8f14040000              LEA ECX,[EDI + 0x414]
00511500  e8fb4d2d00                CALL 0x007e6300
00511505  e902010000                JMP 0x0051160c
0051150a  f30f101de4a2ba00          MOVSS XMM3,dword ptr [0x00baa2e4]
00511512  0f57c9                    XORPS XMM1,XMM1
00511515  0f2f8f60030000            COMISS XMM1,dword ptr [EDI + 0x360]
0051151c  f30f100530adba00          MOVSS XMM0,dword ptr [0x00baad30]
00511524  0f28e3                    MOVAPS XMM4,XMM3
00511527  f30f115c241c              MOVSS dword ptr [ESP + 0x1c],XMM3
0051152d  f30f11642414              MOVSS dword ptr [ESP + 0x14],XMM4
00511533  7609                      JBE 0x0051153e
00511535  0f28d8                    MOVAPS XMM3,XMM0
00511538  f30f115c241c              MOVSS dword ptr [ESP + 0x1c],XMM3
0051153e  0f2f8f64030000            COMISS XMM1,dword ptr [EDI + 0x364]
00511545  7609                      JBE 0x00511550
00511547  0f28e0                    MOVAPS XMM4,XMM0
0051154a  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00511550  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00511557  745d                      JZ 0x005115b6
00511559  8d442428                  LEA EAX,[ESP + 0x28]
0051155d  0f57d2                    XORPS XMM2,XMM2
00511560  50                        PUSH EAX
00511561  8bcf                      MOV ECX,EDI
00511563  e8686d1c00                CALL 0x006d82d0
00511568  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
0051156e  8bf0                      MOV ESI,EAX
00511570  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
00511576  f30f59c0                  MULSS XMM0,XMM0
0051157a  f30f59c9                  MULSS XMM1,XMM1
0051157e  f30f58c1                  ADDSS XMM0,XMM1
00511582  e8c944f2ff                CALL 0x00435a50
00511587  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0051158f  0f57c9                    XORPS XMM1,XMM1
00511592  f30f10642414              MOVSS XMM4,dword ptr [ESP + 0x14]
00511598  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
005115a0  0f28d8                    MOVAPS XMM3,XMM0
005115a3  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
005115a8  f30f591e                  MULSS XMM3,dword ptr [ESI]
005115ac  f30f58e0                  ADDSS XMM4,XMM0
005115b0  f30f585c241c              ADDSS XMM3,dword ptr [ESP + 0x1c]
005115b6  0f2ed1                    UCOMISS XMM2,XMM1
005115b9  9f                        LAHF
005115ba  f6c444                    TEST AH,0x44
005115bd  7b4d                      JNP 0x0051160c
005115bf  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
005115c7  0f28c1                    MOVAPS XMM0,XMM1
005115ca  f30f59cc                  MULSS XMM1,XMM4
005115ce  f30f59c3                  MULSS XMM0,XMM3
005115d2  f30f5eca                  DIVSS XMM1,XMM2
005115d6  f30f5ec2                  DIVSS XMM0,XMM2
005115da  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
005115e2  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
005115ea  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005115f2  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
005115fa  eb10                      JMP 0x0051160c
005115fc  f30f591554a3ba00          MULSS XMM2,dword ptr [0x00baa354]
00511604  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
0051160c  8bcf                      MOV ECX,EDI
0051160e  e82dd21a00                CALL 0x006be840
00511613  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00511616  8d9f3c030000              LEA EBX,[EDI + 0x33c]
0051161c  83f901                    CMP ECX,0x1
0051161f  ba02000000                MOV EDX,0x2
00511624  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0051162c  b805000000                MOV EAX,0x5
00511631  f30f5c03                  SUBSS XMM0,dword ptr [EBX]
00511635  0f45c2                    CMOVNZ EAX,EDX
00511638  83f903                    CMP ECX,0x3
0051163b  89442438                  MOV dword ptr [ESP + 0x38],EAX
0051163f  0f94c0                    SETZ AL
00511642  33f6                      XOR ESI,ESI
00511644  88442420                  MOV byte ptr [ESP + 0x20],AL
00511648  b803000000                MOV EAX,0x3
0051164d  3bc8                      CMP ECX,EAX
0051164f  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00511655  8d8c2490000000            LEA ECX,[ESP + 0x90]
0051165c  0f45f0                    CMOVNZ ESI,EAX
0051165f  e8ccd8f2ff                CALL 0x0043ef30
00511664  817f285b030000            CMP dword ptr [EDI + 0x28],0x35b
0051166b  f30f1084249c000000        MOVSS XMM0,dword ptr [ESP + 0x9c]
00511674  f30f5c05d0a0ba00          SUBSS XMM0,dword ptr [0x00baa0d0]
0051167c  c78424a0000000c3f5883f    MOV dword ptr [ESP + 0xa0],0x3f88f5c3
00511687  f30f1184249c000000        MOVSS dword ptr [ESP + 0x9c],XMM0
00511690  7513                      JNZ 0x005116a5
00511692  c78424a00000009a99993f    MOV dword ptr [ESP + 0xa0],0x3f99999a
0051169d  c684242801000001          MOV byte ptr [ESP + 0x128],0x1
005116a5  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005116ab  83e803                    SUB EAX,0x3
005116ae  0f840b080000              JZ 0x00511ebf
005116b4  83e805                    SUB EAX,0x5
005116b7  0f84d2000000              JZ 0x0051178f
005116bd  83e801                    SUB EAX,0x1
005116c0  0f85e9080000              JNZ 0x00511faf
005116c6  38442413                  CMP byte ptr [ESP + 0x13],AL
005116ca  7413                      JZ 0x005116df
005116cc  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
005116d2  83a768010000ef            AND dword ptr [EDI + 0x168],0xffffffef
005116d9  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
005116df  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005116e3  7448                      JZ 0x0051172d
005116e5  6844d6b100                PUSH 0xb1d644
005116ea  8d4f78                    LEA ECX,[EDI + 0x78]
005116ed  e8de96efff                CALL 0x0040add0
005116f2  84c0                      TEST AL,AL
005116f4  7517                      JNZ 0x0051170d
005116f6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005116fa  7431                      JZ 0x0051172d
005116fc  68f4fdb500                PUSH 0xb5fdf4
00511701  8d4f78                    LEA ECX,[EDI + 0x78]
00511704  e8c796efff                CALL 0x0040add0
00511709  84c0                      TEST AL,AL
0051170b  7420                      JZ 0x0051172d
0051170d  51                        PUSH ECX
0051170e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00511715  6a00                      PUSH 0x0
00511717  6a02                      PUSH 0x2
00511719  51                        PUSH ECX
0051171a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00511721  8bcf                      MOV ECX,EDI
00511723  68a6000000                PUSH 0xa6
00511728  e873541c00                CALL 0x006d6ba0
0051172d  ff8710040000              INC dword ptr [EDI + 0x410]
00511733  8d4f48                    LEA ECX,[EDI + 0x48]
00511736  6a00                      PUSH 0x0
00511738  68dcd2b100                PUSH 0xb1d2dc
0051173d  e83e8cefff                CALL 0x0040a380
00511742  0f57c0                    XORPS XMM0,XMM0
00511745  0f2f442414                COMISS XMM0,dword ptr [ESP + 0x14]
0051174a  0f97c0                    SETA AL
0051174d  888748010000              MOV byte ptr [EDI + 0x148],AL
00511753  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00511757  740d                      JZ 0x00511766
00511759  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00511760  0f8549080000              JNZ 0x00511faf
00511766  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00511770  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0051177a  5f                        POP EDI
0051177b  5e                        POP ESI
0051177c  5b                        POP EBX
0051177d  8b8c2430010000            MOV ECX,dword ptr [ESP + 0x130]
00511784  33cc                      XOR ECX,ESP
00511786  e8a0d95d00                CALL 0x00aef12b
0051178b  8be5                      MOV ESP,EBP
0051178d  5d                        POP EBP
0051178e  c3                        RET
0051178f  807c241300                CMP byte ptr [ESP + 0x13],0x0
00511794  7413                      JZ 0x005117a9
00511796  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0051179c  83a768010000ef            AND dword ptr [EDI + 0x168],0xffffffef
005117a3  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
005117a9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005117ad  8d7778                    LEA ESI,[EDI + 0x78]
005117b0  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
005117b4  745a                      JZ 0x00511810
005117b6  6844d6b100                PUSH 0xb1d644
005117bb  8bce                      MOV ECX,ESI
005117bd  e80e96efff                CALL 0x0040add0
005117c2  89742418                  MOV dword ptr [ESP + 0x18],ESI
005117c6  84c0                      TEST AL,AL
005117c8  751e                      JNZ 0x005117e8
005117ca  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005117ce  7440                      JZ 0x00511810
005117d0  68f4fdb500                PUSH 0xb5fdf4
005117d5  8bce                      MOV ECX,ESI
005117d7  e8f495efff                CALL 0x0040add0
005117dc  89742418                  MOV dword ptr [ESP + 0x18],ESI
005117e0  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
005117e4  84c0                      TEST AL,AL
005117e6  7428                      JZ 0x00511810
005117e8  51                        PUSH ECX
005117e9  c704240000803f            MOV dword ptr [ESP],0x3f800000
005117f0  6a00                      PUSH 0x0
005117f2  6a02                      PUSH 0x2
005117f4  51                        PUSH ECX
005117f5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005117fc  8bcf                      MOV ECX,EDI
005117fe  68a6000000                PUSH 0xa6
00511803  e898531c00                CALL 0x006d6ba0
00511808  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
0051180c  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
00511810  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00511817  0f849b000000              JZ 0x005118b8
0051181d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00511821  742a                      JZ 0x0051184d
00511823  68dcd2b100                PUSH 0xb1d2dc
00511828  8bce                      MOV ECX,ESI
0051182a  e84196efff                CALL 0x0040ae70
0051182f  84c0                      TEST AL,AL
00511831  0f8581000000              JNZ 0x005118b8
00511837  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051183b  7410                      JZ 0x0051184d
0051183d  68f4fdb500                PUSH 0xb5fdf4
00511842  8bce                      MOV ECX,ESI
00511844  e82796efff                CALL 0x0040ae70
00511849  84c0                      TEST AL,AL
0051184b  756b                      JNZ 0x005118b8
0051184d  6a00                      PUSH 0x0
0051184f  68000a0001                PUSH 0x1000a00
00511854  8bcf                      MOV ECX,EDI
00511856  e8d55bf0ff                CALL 0x00417430
0051185b  84c0                      TEST AL,AL
0051185d  741a                      JZ 0x00511879
0051185f  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00511867  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0051186f  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00511877  eb37                      JMP 0x005118b0
00511879  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
00511881  8bcf                      MOV ECX,EDI
00511883  6a00                      PUSH 0x0
00511885  e896721c00                CALL 0x006d8b20
0051188a  8d442428                  LEA EAX,[ESP + 0x28]
0051188e  8bcf                      MOV ECX,EDI
00511890  50                        PUSH EAX
00511891  e89a741c00                CALL 0x006d8d30
00511896  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0051189a  f30f5c0b                  SUBSS XMM1,dword ptr [EBX]
0051189e  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
005118a3  f30f5c4304                SUBSS XMM0,dword ptr [EBX + 0x4]
005118a8  f30f118f200f0000          MOVSS dword ptr [EDI + 0xf20],XMM1
005118b0  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
005118b8  ff8710040000              INC dword ptr [EDI + 0x410]
005118be  8d4f48                    LEA ECX,[EDI + 0x48]
005118c1  6a00                      PUSH 0x0
005118c3  68dcd2b100                PUSH 0xb1d2dc
005118c8  e8b38aefff                CALL 0x0040a380
005118cd  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005118d4  0f57c0                    XORPS XMM0,XMM0
005118d7  7409                      JZ 0x005118e2
005118d9  0f2f87200f0000            COMISS XMM0,dword ptr [EDI + 0xf20]
005118e0  eb05                      JMP 0x005118e7
005118e2  0f2f442414                COMISS XMM0,dword ptr [ESP + 0x14]
005118e7  0f97c0                    SETA AL
005118ea  888748010000              MOV byte ptr [EDI + 0x148],AL
005118f0  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
005118f4  0f8522040000              JNZ 0x00511d1c
005118fa  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005118fe  0f8483050000              JZ 0x00511e87
00511904  68f4fdb500                PUSH 0xb5fdf4
00511909  8bce                      MOV ECX,ESI
0051190b  e8c094efff                CALL 0x0040add0
00511910  84c0                      TEST AL,AL
00511912  0f8404040000              JZ 0x00511d1c
00511918  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0051191e  8d4c2418                  LEA ECX,[ESP + 0x18]
00511922  c744241834000000          MOV dword ptr [ESP + 0x18],0x34
0051192a  e8514e4400                CALL 0x00956780
0051192f  83ec08                    SUB ESP,0x8
00511932  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0051193a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00511941  6a00                      PUSH 0x0
00511943  6a0a                      PUSH 0xa
00511945  51                        PUSH ECX
00511946  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051194d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00511953  ff74242c                  PUSH dword ptr [ESP + 0x2c]
00511957  e8d4c24100                CALL 0x0092dc30
0051195c  8bcf                      MOV ECX,EDI
0051195e  e8ddce1a00                CALL 0x006be840
00511963  8d4c2420                  LEA ECX,[ESP + 0x20]
00511967  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0051196f  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00511977  8d442430                  LEA EAX,[ESP + 0x30]
0051197b  f30f5c03                  SUBSS XMM0,dword ptr [EBX]
0051197f  f30f5c4b04                SUBSS XMM1,dword ptr [EBX + 0x4]
00511984  50                        PUSH EAX
00511985  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0051198b  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
00511991  e89ae64f00                CALL 0x00a10030
00511996  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051199d  7444                      JZ 0x005119e3
0051199f  6840b6c700                PUSH 0xc7b640
005119a4  8d8f200f0000              LEA ECX,[EDI + 0xf20]
005119aa  e851ec4f00                CALL 0x00a10600
005119af  84c0                      TEST AL,AL
005119b1  740f                      JZ 0x005119c2
005119b3  8d442428                  LEA EAX,[ESP + 0x28]
005119b7  50                        PUSH EAX
005119b8  e8b3d61600                CALL 0x0067f070
005119bd  83c404                    ADD ESP,0x4
005119c0  eb0a                      JMP 0x005119cc
005119c2  8d442420                  LEA EAX,[ESP + 0x20]
005119c6  50                        PUSH EAX
005119c7  e864e64f00                CALL 0x00a10030
005119cc  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005119d0  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
005119d6  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
005119db  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
005119e1  eb18                      JMP 0x005119fb
005119e3  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
005119e9  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
005119ef  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
005119f5  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
005119fb  e860d51d00                CALL 0x006eef60
00511a00  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00511a06  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00511a0e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00511a14  6a00                      PUSH 0x0
00511a16  50                        PUSH EAX
00511a17  f30f5803                  ADDSS XMM0,dword ptr [EBX]
00511a1b  6a02                      PUSH 0x2
00511a1d  57                        PUSH EDI
00511a1e  6840b6c700                PUSH 0xc7b640
00511a23  8d44243c                  LEA EAX,[ESP + 0x3c]
00511a27  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
00511a2d  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00511a33  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00511a3b  50                        PUSH EAX
00511a3c  6a48                      PUSH 0x48
00511a3e  68e8030000                PUSH 0x3e8
00511a43  f30f584304                ADDSS XMM0,dword ptr [EBX + 0x4]
00511a48  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
00511a4e  e8bdc91e00                CALL 0x006fe410
00511a53  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
00511a59  89442420                  MOV dword ptr [ESP + 0x20],EAX
00511a5d  8db0bc030000              LEA ESI,[EAX + 0x3bc]
00511a63  85c9                      TEST ECX,ECX
00511a65  7414                      JZ 0x00511a7b
00511a67  8d442430                  LEA EAX,[ESP + 0x30]
00511a6b  89742430                  MOV dword ptr [ESP + 0x30],ESI
00511a6f  50                        PUSH EAX
00511a70  81c1cc030000              ADD ECX,0x3cc
00511a76  e895d7fbff                CALL 0x004cf210
00511a7b  56                        PUSH ESI
00511a7c  8bcf                      MOV ECX,EDI
00511a7e  893e                      MOV dword ptr [ESI],EDI
00511a80  e86bc2fbff                CALL 0x004cdcf0
00511a85  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
00511a8b  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
00511a91  e8ca82f8ff                CALL 0x00499d60
00511a96  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00511a9e  8b442420                  MOV EAX,dword ptr [ESP + 0x20]
00511aa2  f30f101dc8a2ba00          MOVSS XMM3,dword ptr [0x00baa2c8]
00511aaa  f30f100de0a2ba00          MOVSS XMM1,dword ptr [0x00baa2e0]
00511ab2  0f28d3                    MOVAPS XMM2,XMM3
00511ab5  51                        PUSH ECX
00511ab6  8d4c2468                  LEA ECX,[ESP + 0x68]
00511aba  f30f118074040000          MOVSS dword ptr [EAX + 0x474],XMM0
00511ac2  c704240000803f            MOV dword ptr [ESP],0x3f800000
00511ac9  e8221ef1ff                CALL 0x004238f0
00511ace  e88dd41d00                CALL 0x006eef60
00511ad3  660f6ec0                  MOVD XMM0,EAX
00511ad7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00511adb  c1e81f                    SHR EAX,0x1f
00511ade  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00511ae7  660f5ac0                  CVTPD2PS XMM0,XMM0
00511aeb  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00511af3  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00511afb  f30f58055ca7ba00          ADDSS XMM0,dword ptr [0x00baa75c]
00511b03  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00511b09  e852d41d00                CALL 0x006eef60
00511b0e  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
00511b14  83e003                    AND EAX,0x3
00511b17  6a00                      PUSH 0x0
00511b19  51                        PUSH ECX
00511b1a  c704240050c347            MOV dword ptr [ESP],0x47c35000
00511b21  8d4c246c                  LEA ECX,[ESP + 0x6c]
00511b25  51                        PUSH ECX
00511b26  51                        PUSH ECX
00511b27  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00511b2d  83c005                    ADD EAX,0x5
00511b30  f30f110424                MOVSS dword ptr [ESP],XMM0
00511b35  50                        PUSH EAX
00511b36  6a23                      PUSH 0x23
00511b38  53                        PUSH EBX
00511b39  e8f2171f00                CALL 0x00703330
00511b3e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00511b44  6a0c                      PUSH 0xc
00511b46  e8251b1f00                CALL 0x00703670
00511b4b  8bcf                      MOV ECX,EDI
00511b4d  e85e4cf4ff                CALL 0x004567b0
00511b52  84c0                      TEST AL,AL
00511b54  0f85be010000              JNZ 0x00511d18
00511b5a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00511b60  33f6                      XOR ESI,ESI
00511b62  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00511b68  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00511b6e  c1f802                    SAR EAX,0x2
00511b71  85c0                      TEST EAX,EAX
00511b73  0f849f010000              JZ 0x00511d18
00511b79  0f1f8000000000            NOP dword ptr [EAX]
00511b80  56                        PUSH ESI
00511b81  e8ea5cf0ff                CALL 0x00417870
00511b86  89442430                  MOV dword ptr [ESP + 0x30],EAX
00511b8a  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00511b92  f30f5c4b04                SUBSS XMM1,dword ptr [EBX + 0x4]
00511b97  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00511b9f  f30f5c13                  SUBSS XMM2,dword ptr [EBX]
00511ba3  0f28c1                    MOVAPS XMM0,XMM1
00511ba6  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
00511bac  f30f59c1                  MULSS XMM0,XMM1
00511bb0  0f28ca                    MOVAPS XMM1,XMM2
00511bb3  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
00511bb9  f30f59ca                  MULSS XMM1,XMM2
00511bbd  f30f58c1                  ADDSS XMM0,XMM1
00511bc1  e88a3ef2ff                CALL 0x00435a50
00511bc6  f30f10542418              MOVSS XMM2,dword ptr [ESP + 0x18]
00511bcc  0f28d8                    MOVAPS XMM3,XMM0
00511bcf  0f2f1de49fba00            COMISS XMM3,dword ptr [0x00ba9fe4]
00511bd6  761f                      JBE 0x00511bf7
00511bd8  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00511be0  f30f5ecb                  DIVSS XMM1,XMM3
00511be4  0f28c1                    MOVAPS XMM0,XMM1
00511be7  f30f59d0                  MULSS XMM2,XMM0
00511beb  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00511bf1  f30f59c1                  MULSS XMM0,XMM1
00511bf5  eb06                      JMP 0x00511bfd
00511bf7  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00511bfd  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
00511c05  0f2fcb                    COMISS XMM1,XMM3
00511c08  0f86ec000000              JBE 0x00511cfa
00511c0e  8b442430                  MOV EAX,dword ptr [ESP + 0x30]
00511c12  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00511c1a  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00511c20  f30f104b04                MOVSS XMM1,dword ptr [EBX + 0x4]
00511c25  8b00                      MOV EAX,dword ptr [EAX]
00511c27  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
00511c2f  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
00511c35  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00511c3b  8b4054                    MOV EAX,dword ptr [EAX + 0x54]
00511c3e  f30f1003                  MOVSS XMM0,dword ptr [EBX]
00511c42  89442420                  MOV dword ptr [ESP + 0x20],EAX
00511c46  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00511c49  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
00511c4d  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00511c50  89442440                  MOV dword ptr [ESP + 0x40],EAX
00511c54  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00511c57  89442444                  MOV dword ptr [ESP + 0x44],EAX
00511c5b  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
00511c5e  89442448                  MOV dword ptr [ESP + 0x48],EAX
00511c62  8bc1                      MOV EAX,ECX
00511c64  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
00511c6a  2500010000                AND EAX,0x100
00511c6f  83c800                    OR EAX,0x0
00511c72  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00511c7a  f30f114c2450              MOVSS dword ptr [ESP + 0x50],XMM1
00511c80  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00511c88  f30f11542428              MOVSS dword ptr [ESP + 0x28],XMM2
00511c8e  f30f11442454              MOVSS dword ptr [ESP + 0x54],XMM0
00511c94  f30f114c2458              MOVSS dword ptr [ESP + 0x58],XMM1
00511c9a  7407                      JZ 0x00511ca3
00511c9c  bb01000000                MOV EBX,0x1
00511ca1  eb02                      JMP 0x00511ca5
00511ca3  33db                      XOR EBX,EBX
00511ca5  81e100000020              AND ECX,0x20000000
00511cab  83c900                    OR ECX,0x0
00511cae  7407                      JZ 0x00511cb7
00511cb0  b902000000                MOV ECX,0x2
00511cb5  eb02                      JMP 0x00511cb9
00511cb7  33c9                      XOR ECX,ECX
00511cb9  81e200004000              AND EDX,0x400000
00511cbf  33c0                      XOR EAX,EAX
00511cc1  0bc2                      OR EAX,EDX
00511cc3  7407                      JZ 0x00511ccc
00511cc5  b804000000                MOV EAX,0x4
00511cca  eb02                      JMP 0x00511cce
00511ccc  33c0                      XOR EAX,EAX
00511cce  0bc1                      OR EAX,ECX
00511cd0  897c2460                  MOV dword ptr [ESP + 0x60],EDI
00511cd4  0bc3                      OR EAX,EBX
00511cd6  51                        PUSH ECX
00511cd7  8b4c2434                  MOV ECX,dword ptr [ESP + 0x34]
00511cdb  89442460                  MOV dword ptr [ESP + 0x60],EAX
00511cdf  8d44242c                  LEA EAX,[ESP + 0x2c]
00511ce3  c7042400001041            MOV dword ptr [ESP],0x41100000
00511cea  50                        PUSH EAX
00511ceb  8d442444                  LEA EAX,[ESP + 0x44]
00511cef  50                        PUSH EAX
00511cf0  ff54242c                  CALL dword ptr [ESP + 0x2c]
00511cf4  8d9f3c030000              LEA EBX,[EDI + 0x33c]
00511cfa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00511d00  46                        INC ESI
00511d01  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00511d07  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00511d0d  c1f802                    SAR EAX,0x2
00511d10  3bf0                      CMP ESI,EAX
00511d12  0f8268feffff              JC 0x00511b80
00511d18  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
00511d1c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00511d20  0f8461010000              JZ 0x00511e87
00511d26  68dcd2b100                PUSH 0xb1d2dc
00511d2b  8bce                      MOV ECX,ESI
00511d2d  e89e90efff                CALL 0x0040add0
00511d32  84c0                      TEST AL,AL
00511d34  0f843a010000              JZ 0x00511e74
00511d3a  8bcf                      MOV ECX,EDI
00511d3c  e8ffca1a00                CALL 0x006be840
00511d41  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00511d48  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00511d50  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00511d58  f30f5c13                  SUBSS XMM2,dword ptr [EBX]
00511d5c  f30f5c4b04                SUBSS XMM1,dword ptr [EBX + 0x4]
00511d61  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
00511d67  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
00511d6d  741c                      JZ 0x00511d8b
00511d6f  f30f1097200f0000          MOVSS XMM2,dword ptr [EDI + 0xf20]
00511d77  f30f108f240f0000          MOVSS XMM1,dword ptr [EDI + 0xf24]
00511d7f  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
00511d85  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
00511d8b  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
00511d92  9f                        LAHF
00511d93  f6c444                    TEST AH,0x44
00511d96  7a11                      JP 0x00511da9
00511d98  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
00511d9f  9f                        LAHF
00511da0  f6c444                    TEST AH,0x44
00511da3  0f8bcb000000              JNP 0x00511e74
00511da9  0f28c1                    MOVAPS XMM0,XMM1
00511dac  f30f59c1                  MULSS XMM0,XMM1
00511db0  0f28ca                    MOVAPS XMM1,XMM2
00511db3  f30f59ca                  MULSS XMM1,XMM2
00511db7  f30f58c1                  ADDSS XMM0,XMM1
00511dbb  e8903cf2ff                CALL 0x00435a50
00511dc0  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00511dc7  7629                      JBE 0x00511df2
00511dc9  f30f100db8a7ba00          MOVSS XMM1,dword ptr [0x00baa7b8]
00511dd1  f30f5ec8                  DIVSS XMM1,XMM0
00511dd5  0f28c1                    MOVAPS XMM0,XMM1
00511dd8  f30f594c2414              MULSS XMM1,dword ptr [ESP + 0x14]
00511dde  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
00511de4  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
00511dea  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00511df0  eb18                      JMP 0x00511e0a
00511df2  f30f10542418              MOVSS XMM2,dword ptr [ESP + 0x18]
00511df8  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00511dfe  f30f11542420              MOVSS dword ptr [ESP + 0x20],XMM2
00511e04  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00511e0a  8d842490000000            LEA EAX,[ESP + 0x90]
00511e11  8bcf                      MOV ECX,EDI
00511e13  50                        PUSH EAX
00511e14  ff74243c                  PUSH dword ptr [ESP + 0x3c]
00511e18  8d442428                  LEA EAX,[ESP + 0x28]
00511e1c  50                        PUSH EAX
00511e1d  53                        PUSH EBX
00511e1e  e8bd941b00                CALL 0x006cb2e0
00511e23  8d4c2464                  LEA ECX,[ESP + 0x64]
00511e27  e84453efff                CALL 0x00407170
00511e2c  6840b6c700                PUSH 0xc7b640
00511e31  50                        PUSH EAX
00511e32  8d442430                  LEA EAX,[ESP + 0x30]
00511e36  c744243000000000          MOV dword ptr [ESP + 0x30],0x0
00511e3e  50                        PUSH EAX
00511e3f  8bd3                      MOV EDX,EBX
00511e41  c74424380000c0c0          MOV dword ptr [ESP + 0x38],0xc0c00000
00511e49  b901000000                MOV ECX,0x1
00511e4e  e89d5e1c00                CALL 0x006d7cf0
00511e53  83c40c                    ADD ESP,0xc
00511e56  c780e40000000000403f      MOV dword ptr [EAX + 0xe4],0x3f400000
00511e60  c780e80000000000403f      MOV dword ptr [EAX + 0xe8],0x3f400000
00511e6a  c780580300000000803f      MOV dword ptr [EAX + 0x358],0x3f800000
00511e74  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00511e78  740d                      JZ 0x00511e87
00511e7a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00511e81  0f8528010000              JNZ 0x00511faf
00511e87  6a00                      PUSH 0x0
00511e89  6854bcb100                PUSH 0xb1bc54
00511e8e  8d4f48                    LEA ECX,[EDI + 0x48]
00511e91  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00511e9b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00511ea5  e8d684efff                CALL 0x0040a380
00511eaa  5f                        POP EDI
00511eab  5e                        POP ESI
00511eac  5b                        POP EBX
00511ead  8b8c2430010000            MOV ECX,dword ptr [ESP + 0x130]
00511eb4  33cc                      XOR ECX,ESP
00511eb6  e870d25d00                CALL 0x00aef12b
00511ebb  8be5                      MOV ESP,EBP
00511ebd  5d                        POP EBP
00511ebe  c3                        RET
00511ebf  807c241300                CMP byte ptr [ESP + 0x13],0x0
00511ec4  7413                      JZ 0x00511ed9
00511ec6  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00511ecc  838f6801000010            OR dword ptr [EDI + 0x168],0x10
00511ed3  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00511ed9  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
00511ee0  0f8f82000000              JG 0x00511f68
00511ee6  6a00                      PUSH 0x0
00511ee8  8d4f48                    LEA ECX,[EDI + 0x48]
00511eeb  6854bcb100                PUSH 0xb1bc54
00511ef0  e88b84efff                CALL 0x0040a380
00511ef5  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00511efc  0f84c2000000              JZ 0x00511fc4
00511f02  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
00511f0a  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
00511f11  7317                      JNC 0x00511f2a
00511f13  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00511f1b  8bcf                      MOV ECX,EDI
00511f1d  6a07                      PUSH 0x7
00511f1f  6a00                      PUSH 0x0
00511f21  e83a8f1b00                CALL 0x006cae60
00511f26  84c0                      TEST AL,AL
00511f28  743e                      JZ 0x00511f68
00511f2a  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00511f32  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
00511f3a  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00511f42  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
00511f4a  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00511f54  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00511f5e  c787a00b000046000000      MOV dword ptr [EDI + 0xba0],0x46
00511f68  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00511f6e  2500400000                AND EAX,0x4000
00511f73  83c800                    OR EAX,0x0
00511f76  7537                      JNZ 0x00511faf
00511f78  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00511f7e  8bce                      MOV ECX,ESI
00511f80  e8cbb31e00                CALL 0x006fd350
00511f85  84c0                      TEST AL,AL
00511f87  7526                      JNZ 0x00511faf
00511f89  8b86f8640200              MOV EAX,dword ptr [ESI + 0x264f8]
00511f8f  b907000000                MOV ECX,0x7
00511f94  034720                    ADD EAX,dword ptr [EDI + 0x20]
00511f97  99                        CDQ
00511f98  f7f9                      IDIV ECX
00511f9a  85d2                      TEST EDX,EDX
00511f9c  7511                      JNZ 0x00511faf
00511f9e  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00511fa4  85c0                      TEST EAX,EAX
00511fa6  7e07                      JLE 0x00511faf
00511fa8  48                        DEC EAX
00511fa9  898710040000              MOV dword ptr [EDI + 0x410],EAX
00511faf  5f                        POP EDI
00511fb0  5e                        POP ESI
00511fb1  5b                        POP EBX
00511fb2  8b8c2430010000            MOV ECX,dword ptr [ESP + 0x130]
00511fb9  33cc                      XOR ECX,ESP
00511fbb  e86bd15d00                CALL 0x00aef12b
00511fc0  8be5                      MOV ESP,EBP
00511fc2  5d                        POP EBP
00511fc3  c3                        RET
00511fc4  6a00                      PUSH 0x0
00511fc6  6800020000                PUSH 0x200
00511fcb  8bcf                      MOV ECX,EDI
00511fcd  e85e54f0ff                CALL 0x00417430
00511fd2  84c0                      TEST AL,AL
00511fd4  0f85f1000000              JNZ 0x005120cb
00511fda  6a00                      PUSH 0x0
00511fdc  6800080001                PUSH 0x1000800
00511fe1  8bcf                      MOV ECX,EDI
00511fe3  e84854f0ff                CALL 0x00417430
00511fe8  84c0                      TEST AL,AL
00511fea  0f85db000000              JNZ 0x005120cb
00511ff0  ff7720                    PUSH dword ptr [EDI + 0x20]
00511ff3  8bcf                      MOV ECX,EDI
00511ff5  6a07                      PUSH 0x7
00511ff7  e814a71900                CALL 0x006ac710
00511ffc  84c0                      TEST AL,AL
00511ffe  0f8464ffffff              JZ 0x00511f68
00512004  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0051200a  85c0                      TEST EAX,EAX
0051200c  7e0c                      JLE 0x0051201a
0051200e  48                        DEC EAX
0051200f  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00512015  e94effffff                JMP 0x00511f68
0051201a  8bcf                      MOV ECX,EDI
0051201c  e81fc81a00                CALL 0x006be840
00512021  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00512029  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00512031  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
00512037  f30f5c0b                  SUBSS XMM1,dword ptr [EBX]
0051203b  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00512041  f30f5c4304                SUBSS XMM0,dword ptr [EBX + 0x4]
00512046  f30f59c9                  MULSS XMM1,XMM1
0051204a  f30f59c0                  MULSS XMM0,XMM0
0051204e  f30f58c8                  ADDSS XMM1,XMM0
00512052  f30f100564acba00          MOVSS XMM0,dword ptr [0x00baac64]
0051205a  0f2fc1                    COMISS XMM0,XMM1
0051205d  0f8605ffffff              JBE 0x00511f68
00512063  83bf640c000008            CMP dword ptr [EDI + 0xc64],0x8
0051206a  742c                      JZ 0x00512098
0051206c  a17816c700                MOV EAX,[0x00c71678]
00512071  8d4c2428                  LEA ECX,[ESP + 0x28]
00512075  6a00                      PUSH 0x0
00512077  ff742424                  PUSH dword ptr [ESP + 0x24]
0051207b  6a00                      PUSH 0x0
0051207d  68e7030000                PUSH 0x3e7
00512082  56                        PUSH ESI
00512083  51                        PUSH ECX
00512084  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0051208a  53                        PUSH EBX
0051208b  e860ed2d00                CALL 0x007f0df0
00512090  84c0                      TEST AL,AL
00512092  0f84d0feffff              JZ 0x00511f68
00512098  c787a00b000007000000      MOV dword ptr [EDI + 0xba0],0x7
005120a2  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005120ac  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
005120b6  5f                        POP EDI
005120b7  5e                        POP ESI
005120b8  5b                        POP EBX
005120b9  8b8c2430010000            MOV ECX,dword ptr [ESP + 0x130]
005120c0  33cc                      XOR ECX,ESP
005120c2  e864d05d00                CALL 0x00aef12b
005120c7  8be5                      MOV ESP,EBP
005120c9  5d                        POP EBP
005120ca  c3                        RET
005120cb  e890ce1d00                CALL 0x006eef60
005120d0  33d2                      XOR EDX,EDX
005120d2  b932000000                MOV ECX,0x32
005120d7  f7f1                      DIV ECX
005120d9  85d2                      TEST EDX,EDX
005120db  0f85cefeffff              JNZ 0x00511faf
005120e1  8b8c243c010000            MOV ECX,dword ptr [ESP + 0x13c]
005120e8  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
005120f2  899710040000              MOV dword ptr [EDI + 0x410],EDX
005120f8  5f                        POP EDI
005120f9  5e                        POP ESI
005120fa  5b                        POP EBX
005120fb  33cc                      XOR ECX,ESP
005120fd  e829d05d00                CALL 0x00aef12b
00512102  8be5                      MOV ESP,EBP
00512104  5d                        POP EBP
00512105  c3                        RET
