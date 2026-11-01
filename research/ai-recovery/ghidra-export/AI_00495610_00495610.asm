; J460 NPC AI 0x00495610 AI_00495610
; types=409
; identities=409.0.0,409.1.0,409.2.0
; entry=00495610
00495610  53                        PUSH EBX
00495611  8bdc                      MOV EBX,ESP
00495613  83ec08                    SUB ESP,0x8
00495616  83e4f8                    AND ESP,0xfffffff8
00495619  83c404                    ADD ESP,0x4
0049561c  55                        PUSH EBP
0049561d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00495620  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00495624  8bec                      MOV EBP,ESP
00495626  6aff                      PUSH -0x1
00495628  68ab2eaf00                PUSH 0xaf2eab
0049562d  64a100000000              MOV EAX,FS:[0x0]
00495633  50                        PUSH EAX
00495634  53                        PUSH EBX
00495635  81ec40010000              SUB ESP,0x140
0049563b  a1b493bf00                MOV EAX,[0x00bf93b4]
00495640  33c5                      XOR EAX,EBP
00495642  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00495645  56                        PUSH ESI
00495646  57                        PUSH EDI
00495647  50                        PUSH EAX
00495648  8d45f4                    LEA EAX,[EBP + -0xc]
0049564b  64a300000000              MOV FS:[0x0],EAX
00495651  8bf9                      MOV EDI,ECX
00495653  89bd64ffffff              MOV dword ptr [EBP + 0xffffff64],EDI
00495659  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0049565c  85c0                      TEST EAX,EAX
0049565e  0f85e60c0000              JNZ 0x0049634a
00495664  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049566a  8db73c030000              LEA ESI,[EDI + 0x33c]
00495670  83ec0c                    SUB ESP,0xc
00495673  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0049567d  0f57db                    XORPS XMM3,XMM3
00495680  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00495686  89442408                  MOV dword ptr [ESP + 0x8],EAX
0049568a  89442404                  MOV dword ptr [ESP + 0x4],EAX
0049568e  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
00495694  c7042400002042            MOV dword ptr [ESP],0x42200000
0049569b  56                        PUSH ESI
0049569c  50                        PUSH EAX
0049569d  e8aed83700                CALL 0x00812f50
004956a2  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004956a8  f30f101d50adba00          MOVSS XMM3,dword ptr [0x00baad50]
004956b0  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004956b4  f30f1106                  MOVSS dword ptr [ESI],XMM0
004956b8  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004956bb  894604                    MOV dword ptr [ESI + 0x4],EAX
004956be  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
004956c4  0f2e411c                  UCOMISS XMM0,dword ptr [ECX + 0x1c]
004956c8  9f                        LAHF
004956c9  f6c444                    TEST AH,0x44
004956cc  7a10                      JP 0x004956de
004956ce  c78760030000000080bf      MOV dword ptr [EDI + 0x360],0xbf800000
004956d8  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
004956de  0f2e4114                  UCOMISS XMM0,dword ptr [ECX + 0x14]
004956e2  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004956ea  9f                        LAHF
004956eb  f6c444                    TEST AH,0x44
004956ee  7a10                      JP 0x00495700
004956f0  c787600300000000803f      MOV dword ptr [EDI + 0x360],0x3f800000
004956fa  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
00495700  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00495708  0f2e4920                  UCOMISS XMM1,dword ptr [ECX + 0x20]
0049570c  9f                        LAHF
0049570d  f6c444                    TEST AH,0x44
00495710  7a10                      JP 0x00495722
00495712  c78764030000000080bf      MOV dword ptr [EDI + 0x364],0xbf800000
0049571c  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
00495722  f30f104118                MOVSS XMM0,dword ptr [ECX + 0x18]
00495727  f30f580504a9ba00          ADDSS XMM0,dword ptr [0x00baa904]
0049572f  0f2ec8                    UCOMISS XMM1,XMM0
00495732  9f                        LAHF
00495733  f6c444                    TEST AH,0x44
00495736  7a0a                      JP 0x00495742
00495738  c787640300000000803f      MOV dword ptr [EDI + 0x364],0x3f800000
00495742  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
00495745  f30f100d80a2ba00          MOVSS XMM1,dword ptr [0x00baa280]
0049574d  f30f1035a4a3ba00          MOVSS XMM6,dword ptr [0x00baa3a4]
00495755  83fa01                    CMP EDX,0x1
00495758  7522                      JNZ 0x0049577c
0049575a  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0049575d  0f28ce                    MOVAPS XMM1,XMM6
00495760  83f802                    CMP EAX,0x2
00495763  750a                      JNZ 0x0049576f
00495765  f30f100d90a4ba00          MOVSS XMM1,dword ptr [0x00baa490]
0049576d  eb0d                      JMP 0x0049577c
0049576f  83f801                    CMP EAX,0x1
00495772  7508                      JNZ 0x0049577c
00495774  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
0049577c  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00495782  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00495788  898544ffffff              MOV dword ptr [EBP + 0xffffff44],EAX
0049578e  8bc1                      MOV EAX,ECX
00495790  2500020000                AND EAX,0x200
00495795  83c800                    OR EAX,0x0
00495798  744b                      JZ 0x004957e5
0049579a  81e100010000              AND ECX,0x100
004957a0  83c900                    OR ECX,0x0
004957a3  7540                      JNZ 0x004957e5
004957a5  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004957ad  f30f59c6                  MULSS XMM0,XMM6
004957b1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004957b9  85d2                      TEST EDX,EDX
004957bb  7516                      JNZ 0x004957d3
004957bd  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004957c1  7510                      JNZ 0x004957d3
004957c3  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004957cb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004957d3  8d8f14040000              LEA ECX,[EDI + 0x414]
004957d9  6a00                      PUSH 0x0
004957db  e8200b3500                CALL 0x007e6300
004957e0  e9a0010000                JMP 0x00495985
004957e5  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004957ed  0f2f0520a1ba00            COMISS XMM0,dword ptr [0x00baa120]
004957f4  7205                      JC 0x004957fb
004957f6  0f28ea                    MOVAPS XMM5,XMM2
004957f9  eb03                      JMP 0x004957fe
004957fb  0f28eb                    MOVAPS XMM5,XMM3
004957fe  f30f10bf60030000          MOVSS XMM7,dword ptr [EDI + 0x360]
00495806  0f57e4                    XORPS XMM4,XMM4
00495809  0f2ffc                    COMISS XMM7,XMM4
0049580c  7603                      JBE 0x00495811
0049580e  0f28da                    MOVAPS XMM3,XMM2
00495811  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
00495819  f30f59d6                  MULSS XMM2,XMM6
0049581d  f30f59d9                  MULSS XMM3,XMM1
00495821  0f2ed4                    UCOMISS XMM2,XMM4
00495824  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
0049582c  f30f59e9                  MULSS XMM5,XMM1
00495830  9f                        LAHF
00495831  f6c444                    TEST AH,0x44
00495834  7b37                      JNP 0x0049586d
00495836  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0049583e  0f28c1                    MOVAPS XMM0,XMM1
00495841  f30f59cd                  MULSS XMM1,XMM5
00495845  f30f59c3                  MULSS XMM0,XMM3
00495849  f30f5eca                  DIVSS XMM1,XMM2
0049584d  f30f5ec2                  DIVSS XMM0,XMM2
00495851  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00495859  f30f58c7                  ADDSS XMM0,XMM7
0049585d  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00495865  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0049586d  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00495871  7519                      JNZ 0x0049588c
00495873  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00495877  7513                      JNZ 0x0049588c
00495879  0f28c2                    MOVAPS XMM0,XMM2
0049587c  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00495884  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049588c  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00495892  2500080001                AND EAX,0x1000800
00495897  83c800                    OR EAX,0x0
0049589a  0f84e5000000              JZ 0x00495985
004958a0  8bcf                      MOV ECX,EDI
004958a2  e8998f2200                CALL 0x006be840
004958a7  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004958af  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004958b3  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004958bb  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
004958c0  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
004958c7  0f28c1                    MOVAPS XMM0,XMM1
004958ca  f30f118d64ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM1
004958d2  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
004958d9  f30f59c1                  MULSS XMM0,XMM1
004958dd  0f28ca                    MOVAPS XMM1,XMM2
004958e0  f30f59ca                  MULSS XMM1,XMM2
004958e4  f30f119560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM2
004958ec  f30f58c1                  ADDSS XMM0,XMM1
004958f0  e85b01faff                CALL 0x00435a50
004958f5  f30f100d78aaba00          MOVSS XMM1,dword ptr [0x00baaa78]
004958fd  0f57e4                    XORPS XMM4,XMM4
00495900  0f2fc4                    COMISS XMM0,XMM4
00495903  f30f109564ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff64]
0049590b  f30f5cc8                  SUBSS XMM1,XMM0
0049590f  f30f109d60ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff60]
00495917  f30f590d8ca0ba00          MULSS XMM1,dword ptr [0x00baa08c]
0049591f  f30f5fcc                  MAXSS XMM1,XMM4
00495923  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
0049592b  760c                      JBE 0x00495939
0049592d  f30f5ec8                  DIVSS XMM1,XMM0
00495931  f30f59d1                  MULSS XMM2,XMM1
00495935  f30f59d9                  MULSS XMM3,XMM1
00495939  f30f10af6c030000          MOVSS XMM5,dword ptr [EDI + 0x36c]
00495941  0f2eec                    UCOMISS XMM5,XMM4
00495944  9f                        LAHF
00495945  f6c444                    TEST AH,0x44
00495948  7b3b                      JNP 0x00495985
0049594a  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00495952  0f28c1                    MOVAPS XMM0,XMM1
00495955  f30f59cb                  MULSS XMM1,XMM3
00495959  f30f59c2                  MULSS XMM0,XMM2
0049595d  f30f5ecd                  DIVSS XMM1,XMM5
00495961  f30f5ec5                  DIVSS XMM0,XMM5
00495965  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0049596d  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00495975  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0049597d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00495985  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0049598b  83f80e                    CMP EAX,0xe
0049598e  0f87d0150000              JA 0x00496f64
00495994  0fb6809c6f4900            MOVZX EAX,byte ptr [EAX + 0x496f9c]
0049599b  ff2485846f4900            JMP dword ptr [EAX*0x4 + 0x496f84]
004959a2  c78560ffffff00000000      MOV dword ptr [EBP + 0xffffff60],0x0
004959ac  0f1f4000                  NOP dword ptr [EAX]
004959b0  e8ab952500                CALL 0x006eef60
004959b5  660f6e8560ffffff          MOVD XMM0,dword ptr [EBP + 0xffffff60]
004959bd  8bf0                      MOV ESI,EAX
004959bf  0f5bc0                    CVTDQ2PS XMM0,XMM0
004959c2  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
004959ca  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004959d2  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004959da  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004959e2  e8597bf8ff                CALL 0x0041d540
004959e7  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
004959ef  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004959f7  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
004959ff  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
00495a07  e8147bf8ff                CALL 0x0041d520
00495a0c  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
00495a14  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
00495a1a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00495a20  6a00                      PUSH 0x0
00495a22  68acd6c500                PUSH 0xc5d6ac
00495a27  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00495a2f  68dcd5c500                PUSH 0xc5d5dc
00495a34  6a00                      PUSH 0x0
00495a36  56                        PUSH ESI
00495a37  6a00                      PUSH 0x0
00495a39  57                        PUSH EDI
00495a3a  6840b6c700                PUSH 0xc7b640
00495a3f  50                        PUSH EAX
00495a40  6a01                      PUSH 0x1
00495a42  6899010000                PUSH 0x199
00495a47  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00495a4f  e8cc30f9ff                CALL 0x00428b20
00495a54  50                        PUSH EAX
00495a55  e857ae6500                CALL 0x00af08b1
00495a5a  8bf0                      MOV ESI,EAX
00495a5c  83c414                    ADD ESP,0x14
00495a5f  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00495a65  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00495a6b  85c9                      TEST ECX,ECX
00495a6d  741e                      JZ 0x00495a8d
00495a6f  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
00495a75  81c1cc030000              ADD ECX,0x3cc
00495a7b  8d855cffffff              LEA EAX,[EBP + 0xffffff5c]
00495a81  50                        PUSH EAX
00495a82  e889970300                CALL 0x004cf210
00495a87  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00495a8d  50                        PUSH EAX
00495a8e  8bcf                      MOV ECX,EDI
00495a90  8938                      MOV dword ptr [EAX],EDI
00495a92  e859820300                CALL 0x004cdcf0
00495a97  8b8560ffffff              MOV EAX,dword ptr [EBP + 0xffffff60]
00495a9d  8bce                      MOV ECX,ESI
00495a9f  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00495aa6  8986c00b0000              MOV dword ptr [ESI + 0xbc0],EAX
00495aac  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00495ab2  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00495ab8  8b06                      MOV EAX,dword ptr [ESI]
00495aba  c686b003000001            MOV byte ptr [ESI + 0x3b0],0x1
00495ac1  c7868401000000000000      MOV dword ptr [ESI + 0x184],0x0
00495acb  c7868801000002000000      MOV dword ptr [ESI + 0x188],0x2
00495ad5  ff500c                    CALL dword ptr [EAX + 0xc]
00495ad8  8b8560ffffff              MOV EAX,dword ptr [EBP + 0xffffff60]
00495ade  40                        INC EAX
00495adf  898560ffffff              MOV dword ptr [EBP + 0xffffff60],EAX
00495ae5  83f803                    CMP EAX,0x3
00495ae8  0f8cc2feffff              JL 0x004959b0
00495aee  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
00495af5  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00495afb  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
00495b05  0f57c0                    XORPS XMM0,XMM0
00495b08  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00495b12  81c7e4010000              ADD EDI,0x1e4
00495b18  c7852cffffff3333b33e      MOV dword ptr [EBP + 0xffffff2c],0x3eb33333
00495b22  c78530ffffffae47e13d      MOV dword ptr [EBP + 0xffffff30],0x3de147ae
00495b2c  c78534ffffffec51b83e      MOV dword ptr [EBP + 0xffffff34],0x3eb851ec
00495b36  3bf8                      CMP EDI,EAX
00495b38  0f8426140000              JZ 0x00496f64
00495b3e  8b8534ffffff              MOV EAX,dword ptr [EBP + 0xffffff34]
00495b44  0f114710                  MOVUPS xmmword ptr [EDI + 0x10],XMM0
00495b48  f30f7e852cffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff2c]
00495b50  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
00495b55  0f110f                    MOVUPS xmmword ptr [EDI],XMM1
00495b58  894728                    MOV dword ptr [EDI + 0x28],EAX
00495b5b  e904140000                JMP 0x00496f64
00495b60  a17816c700                MOV EAX,[0x00c71678]
00495b65  6a00                      PUSH 0x0
00495b67  6a00                      PUSH 0x0
00495b69  6aff                      PUSH -0x1
00495b6b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00495b71  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
00495b77  6a01                      PUSH 0x1
00495b79  68f6000000                PUSH 0xf6
00495b7e  81c118120000              ADD ECX,0x1218
00495b84  c6855bffffff00            MOV byte ptr [EBP + 0xffffff5b],0x0
00495b8b  50                        PUSH EAX
00495b8c  e8cf53f8ff                CALL 0x0041af60
00495b91  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00495b98  33c9                      XOR ECX,ECX
00495b9a  8bb554ffffff              MOV ESI,dword ptr [EBP + 0xffffff54]
00495ba0  85f6                      TEST ESI,ESI
00495ba2  7426                      JZ 0x00495bca
00495ba4  8b954cffffff              MOV EDX,dword ptr [EBP + 0xffffff4c]
00495baa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00495bb0  8b048a                    MOV EAX,dword ptr [EDX + ECX*0x4]
00495bb3  83b8640b000010            CMP dword ptr [EAX + 0xb64],0x10
00495bba  7407                      JZ 0x00495bc3
00495bbc  41                        INC ECX
00495bbd  3bce                      CMP ECX,ESI
00495bbf  72ef                      JC 0x00495bb0
00495bc1  eb07                      JMP 0x00495bca
00495bc3  c6855bffffff01            MOV byte ptr [EBP + 0xffffff5b],0x1
00495bca  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00495bd0  33c0                      XOR EAX,EAX
00495bd2  81e100000010              AND ECX,0x10000000
00495bd8  0bc1                      OR EAX,ECX
00495bda  0f849d000000              JZ 0x00495c7d
00495be0  a17816c700                MOV EAX,[0x00c71678]
00495be5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00495beb  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00495bee  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00495bf2  0f8485000000              JZ 0x00495c7d
00495bf8  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00495bfb  85f6                      TEST ESI,ESI
00495bfd  7454                      JZ 0x00495c53
00495bff  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00495c03  8bc6                      MOV EAX,ESI
00495c05  7202                      JC 0x00495c09
00495c07  8b06                      MOV EAX,dword ptr [ESI]
00495c09  b9e4dcb100                MOV ECX,0xb1dce4
00495c0e  6690                      NOP
00495c10  8a10                      MOV DL,byte ptr [EAX]
00495c12  3a11                      CMP DL,byte ptr [ECX]
00495c14  751a                      JNZ 0x00495c30
00495c16  84d2                      TEST DL,DL
00495c18  7412                      JZ 0x00495c2c
00495c1a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00495c1d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00495c20  750e                      JNZ 0x00495c30
00495c22  83c002                    ADD EAX,0x2
00495c25  83c102                    ADD ECX,0x2
00495c28  84d2                      TEST DL,DL
00495c2a  75e4                      JNZ 0x00495c10
00495c2c  33c0                      XOR EAX,EAX
00495c2e  eb05                      JMP 0x00495c35
00495c30  1bc0                      SBB EAX,EAX
00495c32  83c801                    OR EAX,0x1
00495c35  85c0                      TEST EAX,EAX
00495c37  751a                      JNZ 0x00495c53
00495c39  384634                    CMP byte ptr [ESI + 0x34],AL
00495c3c  0f84b2010000              JZ 0x00495df4
00495c42  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00495c48  8d7748                    LEA ESI,[EDI + 0x48]
00495c4b  0f85a3010000              JNZ 0x00495df4
00495c51  eb03                      JMP 0x00495c56
00495c53  8d7748                    LEA ESI,[EDI + 0x48]
00495c56  6a01                      PUSH 0x1
00495c58  68e4dcb100                PUSH 0xb1dce4
00495c5d  8bce                      MOV ECX,ESI
00495c5f  e86c49f7ff                CALL 0x0040a5d0
00495c64  84c0                      TEST AL,AL
00495c66  0f8488010000              JZ 0x00495df4
00495c6c  8d4e30                    LEA ECX,[ESI + 0x30]
00495c6f  e83c45f7ff                CALL 0x0040a1b0
00495c74  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00495c78  e977010000                JMP 0x00495df4
00495c7d  6bc664                    IMUL EAX,ESI,0x64
00495c80  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
00495c86  85c0                      TEST EAX,EAX
00495c88  7411                      JZ 0x00495c9b
00495c8a  e8d1922500                CALL 0x006eef60
00495c8f  33d2                      XOR EDX,EDX
00495c91  f7b55cffffff              DIV dword ptr [EBP + 0xffffff5c]
00495c97  85d2                      TEST EDX,EDX
00495c99  7556                      JNZ 0x00495cf1
00495c9b  83fe03                    CMP ESI,0x3
00495c9e  7351                      JNC 0x00495cf1
00495ca0  6a01                      PUSH 0x1
00495ca2  683cd5b100                PUSH 0xb1d53c
00495ca7  8d4f48                    LEA ECX,[EDI + 0x48]
00495caa  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
00495cb4  e81749f7ff                CALL 0x0040a5d0
00495cb9  84c0                      TEST AL,AL
00495cbb  740f                      JZ 0x00495ccc
00495cbd  8d4f78                    LEA ECX,[EDI + 0x78]
00495cc0  e8eb44f7ff                CALL 0x0040a1b0
00495cc5  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00495ccc  51                        PUSH ECX
00495ccd  c704240000803f            MOV dword ptr [ESP],0x3f800000
00495cd4  6a00                      PUSH 0x0
00495cd6  6a02                      PUSH 0x2
00495cd8  51                        PUSH ECX
00495cd9  c704240000803f            MOV dword ptr [ESP],0x3f800000
00495ce0  8bcf                      MOV ECX,EDI
00495ce2  68d7030000                PUSH 0x3d7
00495ce7  e8b40e2400                CALL 0x006d6ba0
00495cec  e903010000                JMP 0x00495df4
00495cf1  e86a922500                CALL 0x006eef60
00495cf6  33d2                      XOR EDX,EDX
00495cf8  b946000000                MOV ECX,0x46
00495cfd  f7f1                      DIV ECX
00495cff  85d2                      TEST EDX,EDX
00495d01  751e                      JNZ 0x00495d21
00495d03  38955bffffff              CMP byte ptr [EBP + 0xffffff5b],DL
00495d09  7416                      JZ 0x00495d21
00495d0b  6a01                      PUSH 0x1
00495d0d  c787640b00000e000000      MOV dword ptr [EDI + 0xb64],0xe
00495d17  6854d5b100                PUSH 0xb1d554
00495d1c  e9b8000000                JMP 0x00495dd9
00495d21  e83a922500                CALL 0x006eef60
00495d26  33d2                      XOR EDX,EDX
00495d28  b92d000000                MOV ECX,0x2d
00495d2d  f7f1                      DIV ECX
00495d2f  85d2                      TEST EDX,EDX
00495d31  754e                      JNZ 0x00495d81
00495d33  6a01                      PUSH 0x1
00495d35  6884dbb100                PUSH 0xb1db84
00495d3a  8d4f48                    LEA ECX,[EDI + 0x48]
00495d3d  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00495d47  e88448f7ff                CALL 0x0040a5d0
00495d4c  84c0                      TEST AL,AL
00495d4e  740f                      JZ 0x00495d5f
00495d50  8d4f78                    LEA ECX,[EDI + 0x78]
00495d53  e85844f7ff                CALL 0x0040a1b0
00495d58  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00495d5f  51                        PUSH ECX
00495d60  c704240000803f            MOV dword ptr [ESP],0x3f800000
00495d67  6a00                      PUSH 0x0
00495d69  6a02                      PUSH 0x2
00495d6b  51                        PUSH ECX
00495d6c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00495d73  8bcf                      MOV ECX,EDI
00495d75  68d9030000                PUSH 0x3d9
00495d7a  e8210e2400                CALL 0x006d6ba0
00495d7f  eb73                      JMP 0x00495df4
00495d81  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00495d84  85c9                      TEST ECX,ECX
00495d86  744a                      JZ 0x00495dd2
00495d88  83791410                  CMP dword ptr [ECX + 0x14],0x10
00495d8c  8bc1                      MOV EAX,ECX
00495d8e  7202                      JC 0x00495d92
00495d90  8b01                      MOV EAX,dword ptr [ECX]
00495d92  b9e4dcb100                MOV ECX,0xb1dce4
00495d97  8a10                      MOV DL,byte ptr [EAX]
00495d99  3a11                      CMP DL,byte ptr [ECX]
00495d9b  751a                      JNZ 0x00495db7
00495d9d  84d2                      TEST DL,DL
00495d9f  7412                      JZ 0x00495db3
00495da1  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00495da4  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00495da7  750e                      JNZ 0x00495db7
00495da9  83c002                    ADD EAX,0x2
00495dac  83c102                    ADD ECX,0x2
00495daf  84d2                      TEST DL,DL
00495db1  75e4                      JNZ 0x00495d97
00495db3  33c0                      XOR EAX,EAX
00495db5  eb05                      JMP 0x00495dbc
00495db7  1bc0                      SBB EAX,EAX
00495db9  83c801                    OR EAX,0x1
00495dbc  85c0                      TEST EAX,EAX
00495dbe  7512                      JNZ 0x00495dd2
00495dc0  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00495dc3  80783400                  CMP byte ptr [EAX + 0x34],0x0
00495dc7  742b                      JZ 0x00495df4
00495dc9  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00495dd0  7522                      JNZ 0x00495df4
00495dd2  6a01                      PUSH 0x1
00495dd4  68e4dcb100                PUSH 0xb1dce4
00495dd9  8d4f48                    LEA ECX,[EDI + 0x48]
00495ddc  e8ef47f7ff                CALL 0x0040a5d0
00495de1  84c0                      TEST AL,AL
00495de3  740f                      JZ 0x00495df4
00495de5  8d4f78                    LEA ECX,[EDI + 0x78]
00495de8  e8c343f7ff                CALL 0x0040a1b0
00495ded  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00495df4  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00495dfb  80bd48ffffff00            CMP byte ptr [EBP + 0xffffff48],0x0
00495e02  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00495e0c  0f8552110000              JNZ 0x00496f64
00495e12  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00495e19  8b954cffffff              MOV EDX,dword ptr [EBP + 0xffffff4c]
00495e1f  e932110000                JMP 0x00496f56
00495e24  83bf1004000014            CMP dword ptr [EDI + 0x410],0x14
00495e2b  0f85e0010000              JNZ 0x00496011
00495e31  51                        PUSH ECX
00495e32  c704240000803f            MOV dword ptr [ESP],0x3f800000
00495e39  6a00                      PUSH 0x0
00495e3b  6a02                      PUSH 0x2
00495e3d  51                        PUSH ECX
00495e3e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00495e45  8bcf                      MOV ECX,EDI
00495e47  68d8030000                PUSH 0x3d8
00495e4c  e84f0d2400                CALL 0x006d6ba0
00495e51  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
00495e5b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00495e60  e8fb902500                CALL 0x006eef60
00495e65  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00495e6b  6a00                      PUSH 0x0
00495e6d  68acd5c500                PUSH 0xc5d5ac
00495e72  68dcd5c500                PUSH 0xc5d5dc
00495e77  6a00                      PUSH 0x0
00495e79  50                        PUSH EAX
00495e7a  6a00                      PUSH 0x0
00495e7c  57                        PUSH EDI
00495e7d  6840b6c700                PUSH 0xc7b640
00495e82  56                        PUSH ESI
00495e83  6a01                      PUSH 0x1
00495e85  68e8030000                PUSH 0x3e8
00495e8a  e8912cf9ff                CALL 0x00428b20
00495e8f  50                        PUSH EAX
00495e90  e81caa6500                CALL 0x00af08b1
00495e95  83c414                    ADD ESP,0x14
00495e98  8bf0                      MOV ESI,EAX
00495e9a  83bd64ffffff00            CMP dword ptr [EBP + 0xffffff64],0x0
00495ea1  750a                      JNZ 0x00495ead
00495ea3  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
00495eab  eb08                      JMP 0x00495eb5
00495ead  f30f100550aeba00          MOVSS XMM0,dword ptr [0x00baae50]
00495eb5  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
00495ebd  8d4dc0                    LEA ECX,[EBP + -0x40]
00495ec0  8b06                      MOV EAX,dword ptr [ESI]
00495ec2  0f57c0                    XORPS XMM0,XMM0
00495ec5  6a01                      PUSH 0x1
00495ec7  6a00                      PUSH 0x0
00495ec9  68ff000000                PUSH 0xff
00495ece  6aff                      PUSH -0x1
00495ed0  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00495ed4  51                        PUSH ECX
00495ed5  0f2805b0bbba00            MOVAPS XMM0,xmmword ptr [0x00babbb0]
00495edc  8bce                      MOV ECX,ESI
00495ede  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00495ee2  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
00495ee9  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00495ef0  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00495ef7  ff503c                    CALL dword ptr [EAX + 0x3c]
00495efa  8b06                      MOV EAX,dword ptr [ESI]
00495efc  8bce                      MOV ECX,ESI
00495efe  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
00495f08  c78650030000000020c2      MOV dword ptr [ESI + 0x350],0xc2200000
00495f12  ff500c                    CALL dword ptr [EAX + 0xc]
00495f15  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
00495f1b  8db73c030000              LEA ESI,[EDI + 0x33c]
00495f21  40                        INC EAX
00495f22  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
00495f28  83f802                    CMP EAX,0x2
00495f2b  0f8c2fffffff              JL 0x00495e60
00495f31  e82a902500                CALL 0x006eef60
00495f36  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00495f3e  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00495f46  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00495f4c  50                        PUSH EAX
00495f4d  6a00                      PUSH 0x0
00495f4f  57                        PUSH EDI
00495f50  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
00495f58  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
00495f5e  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00495f66  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
00495f6e  50                        PUSH EAX
00495f6f  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00495f75  c78550ffffff00000000      MOV dword ptr [EBP + 0xffffff50],0x0
00495f7f  50                        PUSH EAX
00495f80  6a01                      PUSH 0x1
00495f82  68f6000000                PUSH 0xf6
00495f87  c78554ffffff00002041      MOV dword ptr [EBP + 0xffffff54],0x41200000
00495f91  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00495f99  e8822bf9ff                CALL 0x00428b20
00495f9e  8bf0                      MOV ESI,EAX
00495fa0  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00495fa6  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00495fac  85c9                      TEST ECX,ECX
00495fae  741e                      JZ 0x00495fce
00495fb0  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
00495fb6  81c1cc030000              ADD ECX,0x3cc
00495fbc  8d855cffffff              LEA EAX,[EBP + 0xffffff5c]
00495fc2  50                        PUSH EAX
00495fc3  e848920300                CALL 0x004cf210
00495fc8  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00495fce  50                        PUSH EAX
00495fcf  8bcf                      MOV ECX,EDI
00495fd1  8938                      MOV dword ptr [EAX],EDI
00495fd3  e8187d0300                CALL 0x004cdcf0
00495fd8  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00495fde  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00495fe5  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00495feb  33c0                      XOR EAX,EAX
00495fed  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00495ff3  81e100000010              AND ECX,0x10000000
00495ff9  0bc1                      OR EAX,ECX
00495ffb  7414                      JZ 0x00496011
00495ffd  c7868003000000007041      MOV dword ptr [ESI + 0x380],0x41700000
00496007  c7868403000000007041      MOV dword ptr [ESI + 0x384],0x41700000
00496011  ff8710040000              INC dword ptr [EDI + 0x410]
00496017  e90c030000                JMP 0x00496328
0049601c  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00496022  83f814                    CMP EAX,0x14
00496025  0f859a010000              JNZ 0x004961c5
0049602b  e8308f2500                CALL 0x006eef60
00496030  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
0049603a  660f6ec0                  MOVD XMM0,EAX
0049603e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00496042  c1e81f                    SHR EAX,0x1f
00496045  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049604e  660f5ac0                  CVTPD2PS XMM0,XMM0
00496052  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049605a  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00496062  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
0049606a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00496070  e8eb8e2500                CALL 0x006eef60
00496075  660f6e8564ffffff          MOVD XMM0,dword ptr [EBP + 0xffffff64]
0049607d  8bf0                      MOV ESI,EAX
0049607f  0f5bc0                    CVTDQ2PS XMM0,XMM0
00496082  f30f5e05fca6ba00          DIVSS XMM0,dword ptr [0x00baa6fc]
0049608a  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00496092  f30f58855cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff5c]
0049609a  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004960a2  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004960aa  e89174f8ff                CALL 0x0041d540
004960af  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004960b7  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
004960bf  f30f108560ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff60]
004960c7  e85474f8ff                CALL 0x0041d520
004960cc  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004960d4  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
004960da  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004960e0  6a00                      PUSH 0x0
004960e2  68acd6c500                PUSH 0xc5d6ac
004960e7  68dcd5c500                PUSH 0xc5d5dc
004960ec  6a00                      PUSH 0x0
004960ee  56                        PUSH ESI
004960ef  6a00                      PUSH 0x0
004960f1  57                        PUSH EDI
004960f2  50                        PUSH EAX
004960f3  8d873c030000              LEA EAX,[EDI + 0x33c]
004960f9  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00496101  50                        PUSH EAX
00496102  6a02                      PUSH 0x2
00496104  6899010000                PUSH 0x199
00496109  e8122af9ff                CALL 0x00428b20
0049610e  50                        PUSH EAX
0049610f  e89da76500                CALL 0x00af08b1
00496114  8bf0                      MOV ESI,EAX
00496116  83c414                    ADD ESP,0x14
00496119  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0049611f  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00496125  85c9                      TEST ECX,ECX
00496127  741e                      JZ 0x00496147
00496129  898560ffffff              MOV dword ptr [EBP + 0xffffff60],EAX
0049612f  81c1cc030000              ADD ECX,0x3cc
00496135  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
0049613b  50                        PUSH EAX
0049613c  e8cf900300                CALL 0x004cf210
00496141  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00496147  50                        PUSH EAX
00496148  8bcf                      MOV ECX,EDI
0049614a  8938                      MOV dword ptr [EAX],EDI
0049614c  e89f7b0300                CALL 0x004cdcf0
00496151  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00496157  8bce                      MOV ECX,ESI
00496159  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00496160  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00496166  8b06                      MOV EAX,dword ptr [ESI]
00496168  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
00496172  c7868401000003000000      MOV dword ptr [ESI + 0x184],0x3
0049617c  c7865c01000000000000      MOV dword ptr [ESI + 0x15c],0x0
00496186  ff500c                    CALL dword ptr [EAX + 0xc]
00496189  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
0049618f  40                        INC EAX
00496190  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
00496196  83f803                    CMP EAX,0x3
00496199  0f8cd1feffff              JL 0x00496070
0049619f  51                        PUSH ECX
004961a0  c704240000803f            MOV dword ptr [ESP],0x3f800000
004961a7  6a00                      PUSH 0x0
004961a9  6a02                      PUSH 0x2
004961ab  51                        PUSH ECX
004961ac  c704240000803f            MOV dword ptr [ESP],0x3f800000
004961b3  8bcf                      MOV ECX,EDI
004961b5  68d6030000                PUSH 0x3d6
004961ba  e8e1092400                CALL 0x006d6ba0
004961bf  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004961c5  40                        INC EAX
004961c6  898710040000              MOV dword ptr [EDI + 0x410],EAX
004961cc  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004961cf  85f6                      TEST ESI,ESI
004961d1  7452                      JZ 0x00496225
004961d3  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004961d7  8bc6                      MOV EAX,ESI
004961d9  7202                      JC 0x004961dd
004961db  8b06                      MOV EAX,dword ptr [ESI]
004961dd  b918dbb100                MOV ECX,0xb1db18
004961e2  8a10                      MOV DL,byte ptr [EAX]
004961e4  3a11                      CMP DL,byte ptr [ECX]
004961e6  751a                      JNZ 0x00496202
004961e8  84d2                      TEST DL,DL
004961ea  7412                      JZ 0x004961fe
004961ec  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004961ef  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004961f2  750e                      JNZ 0x00496202
004961f4  83c002                    ADD EAX,0x2
004961f7  83c102                    ADD ECX,0x2
004961fa  84d2                      TEST DL,DL
004961fc  75e4                      JNZ 0x004961e2
004961fe  33c0                      XOR EAX,EAX
00496200  eb05                      JMP 0x00496207
00496202  1bc0                      SBB EAX,EAX
00496204  83c801                    OR EAX,0x1
00496207  85c0                      TEST EAX,EAX
00496209  751a                      JNZ 0x00496225
0049620b  384634                    CMP byte ptr [ESI + 0x34],AL
0049620e  0f8414010000              JZ 0x00496328
00496214  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0049621a  8d7748                    LEA ESI,[EDI + 0x48]
0049621d  0f8505010000              JNZ 0x00496328
00496223  eb03                      JMP 0x00496228
00496225  8d7748                    LEA ESI,[EDI + 0x48]
00496228  6a01                      PUSH 0x1
0049622a  6818dbb100                PUSH 0xb1db18
0049622f  8bce                      MOV ECX,ESI
00496231  e89a43f7ff                CALL 0x0040a5d0
00496236  84c0                      TEST AL,AL
00496238  0f84ea000000              JZ 0x00496328
0049623e  8d4e30                    LEA ECX,[ESI + 0x30]
00496241  e86a3ff7ff                CALL 0x0040a1b0
00496246  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0049624a  e9d9000000                JMP 0x00496328
0049624f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00496253  7472                      JZ 0x004962c7
00496255  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0049625c  7569                      JNZ 0x004962c7
0049625e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00496261  83781410                  CMP dword ptr [EAX + 0x14],0x10
00496265  7202                      JC 0x00496269
00496267  8b00                      MOV EAX,dword ptr [EAX]
00496269  b984dbb100                MOV ECX,0xb1db84
0049626e  6690                      NOP
00496270  8a10                      MOV DL,byte ptr [EAX]
00496272  3a11                      CMP DL,byte ptr [ECX]
00496274  751a                      JNZ 0x00496290
00496276  84d2                      TEST DL,DL
00496278  7412                      JZ 0x0049628c
0049627a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049627d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00496280  750e                      JNZ 0x00496290
00496282  83c002                    ADD EAX,0x2
00496285  83c102                    ADD ECX,0x2
00496288  84d2                      TEST DL,DL
0049628a  75e4                      JNZ 0x00496270
0049628c  33c0                      XOR EAX,EAX
0049628e  eb05                      JMP 0x00496295
00496290  1bc0                      SBB EAX,EAX
00496292  83c801                    OR EAX,0x1
00496295  85c0                      TEST EAX,EAX
00496297  752e                      JNZ 0x004962c7
00496299  50                        PUSH EAX
0049629a  688cdbb100                PUSH 0xb1db8c
0049629f  8d4f48                    LEA ECX,[EDI + 0x48]
004962a2  e8d940f7ff                CALL 0x0040a380
004962a7  e8b48c2500                CALL 0x006eef60
004962ac  33d2                      XOR EDX,EDX
004962ae  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004962b5  b91e000000                MOV ECX,0x1e
004962ba  f7f1                      DIV ECX
004962bc  8d423c                    LEA EAX,[EDX + 0x3c]
004962bf  898710040000              MOV dword ptr [EDI + 0x410],EAX
004962c5  eb06                      JMP 0x004962cd
004962c7  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004962cd  85c0                      TEST EAX,EAX
004962cf  7e43                      JLE 0x00496314
004962d1  83c0ff                    ADD EAX,-0x1
004962d4  898710040000              MOV dword ptr [EDI + 0x410],EAX
004962da  0f85840c0000              JNZ 0x00496f64
004962e0  6a00                      PUSH 0x0
004962e2  686cdbb100                PUSH 0xb1db6c
004962e7  8d4f48                    LEA ECX,[EDI + 0x48]
004962ea  e89140f7ff                CALL 0x0040a380
004962ef  51                        PUSH ECX
004962f0  c704240000803f            MOV dword ptr [ESP],0x3f800000
004962f7  6a00                      PUSH 0x0
004962f9  6a02                      PUSH 0x2
004962fb  51                        PUSH ECX
004962fc  c704240000803f            MOV dword ptr [ESP],0x3f800000
00496303  8bcf                      MOV ECX,EDI
00496305  68da030000                PUSH 0x3da
0049630a  e891082400                CALL 0x006d6ba0
0049630f  e9500c0000                JMP 0x00496f64
00496314  8d4f48                    LEA ECX,[EDI + 0x48]
00496317  e86444f7ff                CALL 0x0040a780
0049631c  83f815                    CMP EAX,0x15
0049631f  7c07                      JL 0x00496328
00496321  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
00496328  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0049632c  740d                      JZ 0x0049633b
0049632e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00496335  0f85290c0000              JNZ 0x00496f64
0049633b  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00496345  e91a0c0000                JMP 0x00496f64
0049634a  83f801                    CMP EAX,0x1
0049634d  0f851f0a0000              JNZ 0x00496d72
00496353  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00496359  c78500ffffffcdcc4c3e      MOV dword ptr [EBP + 0xffffff00],0x3e4ccccd
00496363  c78504ffffff00000000      MOV dword ptr [EBP + 0xffffff04],0x0
0049636d  c78508ffffffcdcc4c3e      MOV dword ptr [EBP + 0xffffff08],0x3e4ccccd
00496377  85c0                      TEST EAX,EAX
00496379  0f85b5000000              JNZ 0x00496434
0049637f  50                        PUSH EAX
00496380  8d4f48                    LEA ECX,[EDI + 0x48]
00496383  e8984ef7ff                CALL 0x0040b220
00496388  8d4848                    LEA ECX,[EAX + 0x48]
0049638b  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
00496391  3bc8                      CMP ECX,EAX
00496393  7427                      JZ 0x004963bc
00496395  0f280570c8ba00            MOVAPS XMM0,xmmword ptr [0x00bac870]
0049639c  8b8508ffffff              MOV EAX,dword ptr [EBP + 0xffffff08]
004963a2  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004963a5  0f57c0                    XORPS XMM0,XMM0
004963a8  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004963ac  f30f7e8500ffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff00]
004963b4  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004963b9  894128                    MOV dword ptr [ECX + 0x28],EAX
004963bc  0f280d20caba00            MOVAPS XMM1,xmmword ptr [0x00baca20]
004963c3  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004963c9  8d85b4feffff              LEA EAX,[EBP + 0xfffffeb4]
004963cf  c785d4feffff0000003f      MOV dword ptr [EBP + 0xfffffed4],0x3f000000
004963d9  c785d8feffff00000000      MOV dword ptr [EBP + 0xfffffed8],0x0
004963e3  0f57d2                    XORPS XMM2,XMM2
004963e6  c785dcfeffff0000003f      MOV dword ptr [EBP + 0xfffffedc],0x3f000000
004963f0  3bc8                      CMP ECX,EAX
004963f2  741d                      JZ 0x00496411
004963f4  f30f7e85d4feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffed4]
004963fc  8b85dcfeffff              MOV EAX,dword ptr [EBP + 0xfffffedc]
00496402  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00496407  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
0049640a  894128                    MOV dword ptr [ECX + 0x28],EAX
0049640d  0f115110                  MOVUPS xmmword ptr [ECX + 0x10],XMM2
00496411  c78750030000000020c2      MOV dword ptr [EDI + 0x350],0xc2200000
0049641b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00496425  c787c40b000003000000      MOV dword ptr [EDI + 0xbc4],0x3
0049642f  e9300b0000                JMP 0x00496f64
00496434  83f804                    CMP EAX,0x4
00496437  0f85df030000              JNZ 0x0049681c
0049643d  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00496445  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0049644b  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00496453  51                        PUSH ECX
00496454  c7042400000000            MOV dword ptr [ESP],0x0
0049645b  50                        PUSH EAX
0049645c  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00496464  e8d7872200                CALL 0x006bec40
00496469  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00496471  0f2e1554a4ba00            UCOMISS XMM2,dword ptr [0x00baa454]
00496478  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0049647c  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00496481  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00496489  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00496491  9f                        LAHF
00496492  f30f118d50ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM1
0049649a  f30f100da4a4ba00          MOVSS XMM1,dword ptr [0x00baa4a4]
004964a2  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
004964aa  f6c444                    TEST AH,0x44
004964ad  7b13                      JNP 0x004964c2
004964af  0f28c2                    MOVAPS XMM0,XMM2
004964b2  f30f59d1                  MULSS XMM2,XMM1
004964b6  f30f58c1                  ADDSS XMM0,XMM1
004964ba  f30f5cc2                  SUBSS XMM0,XMM2
004964be  f30f5ec8                  DIVSS XMM1,XMM0
004964c2  0f28c1                    MOVAPS XMM0,XMM1
004964c5  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
004964cb  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
004964d3  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
004964d9  50                        PUSH EAX
004964da  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
004964e2  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
004964ea  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004964f2  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004964fa  e8319b5700                CALL 0x00a10030
004964ff  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
00496507  0f57c9                    XORPS XMM1,XMM1
0049650a  0f2ee1                    UCOMISS XMM4,XMM1
0049650d  f30f1018                  MOVSS XMM3,dword ptr [EAX]
00496511  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00496516  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
0049651e  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00496526  9f                        LAHF
00496527  f6c444                    TEST AH,0x44
0049652a  7b3c                      JNP 0x00496568
0049652c  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00496534  f30f59d0                  MULSS XMM2,XMM0
00496538  f30f59d8                  MULSS XMM3,XMM0
0049653c  f30f5ed4                  DIVSS XMM2,XMM4
00496540  f30f5edc                  DIVSS XMM3,XMM4
00496544  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
0049654c  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00496554  f30f58c3                  ADDSS XMM0,XMM3
00496558  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00496560  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00496568  f30f1097bc0b0000          MOVSS XMM2,dword ptr [EDI + 0xbbc]
00496570  0f2fd1                    COMISS XMM2,XMM1
00496573  c7877c03000000000041      MOV dword ptr [EDI + 0x37c],0x41000000
0049657d  0f86da000000              JBE 0x0049665d
00496583  f30f5c979c030000          SUBSS XMM2,dword ptr [EDI + 0x39c]
0049658b  0f280570c8ba00            MOVAPS XMM0,xmmword ptr [0x00bac870]
00496592  8d4d94                    LEA ECX,[EBP + -0x6c]
00496595  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00496599  c745e0cdcc4c3e            MOV dword ptr [EBP + -0x20],0x3e4ccccd
004965a0  0f57c0                    XORPS XMM0,XMM0
004965a3  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004965aa  f30f1197bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM2
004965b2  f30f5e15d0a8ba00          DIVSS XMM2,dword ptr [0x00baa8d0]
004965ba  c745e8cdcc4c3e            MOV dword ptr [EBP + -0x18],0x3e4ccccd
004965c1  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004965c5  f30f5fd1                  MAXSS XMM2,XMM1
004965c9  f30f5d1554a4ba00          MINSS XMM2,dword ptr [0x00baa454]
004965d1  f30f11955cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM2
004965d9  e8920bf7ff                CALL 0x00407170
004965de  51                        PUSH ECX
004965df  f30f111424                MOVSS dword ptr [ESP],XMM2
004965e4  8d4dc0                    LEA ECX,[EBP + -0x40]
004965e7  51                        PUSH ECX
004965e8  50                        PUSH EAX
004965e9  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
004965ef  50                        PUSH EAX
004965f0  e8ebcc1e00                CALL 0x006832e0
004965f5  83c410                    ADD ESP,0x10
004965f8  8d4f48                    LEA ECX,[EDI + 0x48]
004965fb  50                        PUSH EAX
004965fc  51                        PUSH ECX
004965fd  6a00                      PUSH 0x0
004965ff  e81c4cf7ff                CALL 0x0040b220
00496604  83c404                    ADD ESP,0x4
00496607  8d4848                    LEA ECX,[EAX + 0x48]
0049660a  e8e10bf7ff                CALL 0x004071f0
0049660f  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00496617  0f2f855cffffff            COMISS XMM0,dword ptr [EBP + 0xffffff5c]
0049661e  763d                      JBE 0x0049665d
00496620  0f57c0                    XORPS XMM0,XMM0
00496623  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
0049662a  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
0049662e  8d45c0                    LEA EAX,[EBP + -0x40]
00496631  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00496638  0f280510beba00            MOVAPS XMM0,xmmword ptr [0x00babe10]
0049663f  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00496645  50                        PUSH EAX
00496646  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0049664a  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00496651  e89a0bf7ff                CALL 0x004071f0
00496656  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
0049665d  a17816c700                MOV EAX,[0x00c71678]
00496662  6a00                      PUSH 0x0
00496664  6a01                      PUSH 0x1
00496666  6aff                      PUSH -0x1
00496668  ff772c                    PUSH dword ptr [EDI + 0x2c]
0049666b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00496671  8d8548ffffff              LEA EAX,[EBP + 0xffffff48]
00496677  ff7728                    PUSH dword ptr [EDI + 0x28]
0049667a  81c118120000              ADD ECX,0x1218
00496680  50                        PUSH EAX
00496681  e8da48f8ff                CALL 0x0041af60
00496686  33f6                      XOR ESI,ESI
00496688  39b554ffffff              CMP dword ptr [EBP + 0xffffff54],ESI
0049668e  0f8654010000              JBE 0x004967e8
00496694  8b854cffffff              MOV EAX,dword ptr [EBP + 0xffffff4c]
0049669a  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
0049669d  3bc7                      CMP EAX,EDI
0049669f  0f8436010000              JZ 0x004967db
004966a5  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004966ad  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004966b5  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
004966bd  f30f5cc8                  SUBSS XMM1,XMM0
004966c1  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
004966c9  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004966d1  f30f5cc2                  SUBSS XMM0,XMM2
004966d5  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
004966dd  f30f59c9                  MULSS XMM1,XMM1
004966e1  f30f59c0                  MULSS XMM0,XMM0
004966e5  f30f58c1                  ADDSS XMM0,XMM1
004966e9  e862f3f9ff                CALL 0x00435a50
004966ee  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
004966f6  0f2fc8                    COMISS XMM1,XMM0
004966f9  0f86dc000000              JBE 0x004967db
004966ff  8b8d4cffffff              MOV ECX,dword ptr [EBP + 0xffffff4c]
00496705  f30f108d60ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff60]
0049670d  f30f109564ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff64]
00496715  8b04b1                    MOV EAX,dword ptr [ECX + ESI*0x4]
00496718  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
00496720  f30f5c9040030000          SUBSS XMM2,dword ptr [EAX + 0x340]
00496728  0f28c1                    MOVAPS XMM0,XMM1
0049672b  f30f118d60ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM1
00496733  f30f59c1                  MULSS XMM0,XMM1
00496737  0f28ca                    MOVAPS XMM1,XMM2
0049673a  f30f59ca                  MULSS XMM1,XMM2
0049673e  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
00496746  f30f58c1                  ADDSS XMM0,XMM1
0049674a  e801f3f9ff                CALL 0x00435a50
0049674f  f30f101dd0a9ba00          MOVSS XMM3,dword ptr [0x00baa9d0]
00496757  0f57e4                    XORPS XMM4,XMM4
0049675a  0f2fc4                    COMISS XMM0,XMM4
0049675d  f30f108d60ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff60]
00496765  f30f5cd8                  SUBSS XMM3,XMM0
00496769  f30f109564ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff64]
00496771  760f                      JBE 0x00496782
00496773  f30f5ed8                  DIVSS XMM3,XMM0
00496777  0f28c3                    MOVAPS XMM0,XMM3
0049677a  f30f59d3                  MULSS XMM2,XMM3
0049677e  f30f59c8                  MULSS XMM1,XMM0
00496782  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0049678a  f30f590d40a0ba00          MULSS XMM1,dword ptr [0x00baa040]
00496792  f30f591540a0ba00          MULSS XMM2,dword ptr [0x00baa040]
0049679a  0f2edc                    UCOMISS XMM3,XMM4
0049679d  9f                        LAHF
0049679e  f6c444                    TEST AH,0x44
004967a1  7b38                      JNP 0x004967db
004967a3  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004967ab  f30f59c8                  MULSS XMM1,XMM0
004967af  f30f59d0                  MULSS XMM2,XMM0
004967b3  f30f5ecb                  DIVSS XMM1,XMM3
004967b7  f30f5ed3                  DIVSS XMM2,XMM3
004967bb  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
004967c3  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004967cb  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004967d3  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004967db  46                        INC ESI
004967dc  3bb554ffffff              CMP ESI,dword ptr [EBP + 0xffffff54]
004967e2  0f82acfeffff              JC 0x00496694
004967e8  80bd48ffffff00            CMP byte ptr [EBP + 0xffffff48],0x0
004967ef  0f8505030000              JNZ 0x00496afa
004967f5  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004967fc  b101                      MOV CL,0x1
004967fe  8b954cffffff              MOV EDX,dword ptr [EBP + 0xffffff4c]
00496804  6a00                      PUSH 0x0
00496806  6a00                      PUSH 0x0
00496808  e8a3e05c00                CALL 0x00a648b0
0049680d  83c408                    ADD ESP,0x8
00496810  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00496817  e9de020000                JMP 0x00496afa
0049681c  83f803                    CMP EAX,0x3
0049681f  0f85d5020000              JNZ 0x00496afa
00496825  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0049682c  0f84b7020000              JZ 0x00496ae9
00496832  e8390ffbff                CALL 0x00447770
00496837  8bb564ffffff              MOV ESI,dword ptr [EBP + 0xffffff64]
0049683d  bf01000000                MOV EDI,0x1
00496842  8bce                      MOV ECX,ESI
00496844  8b80c00b0000              MOV EAX,dword ptr [EAX + 0xbc0]
0049684a  3bc7                      CMP EAX,EDI
0049684c  0f4ff8                    CMOVG EDI,EAX
0049684f  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
00496855  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0049685d  f30f5e8084030000          DIVSS XMM0,dword ptr [EAX + 0x384]
00496865  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
0049686d  e8fe0efbff                CALL 0x00447770
00496872  f30f1005d4a1ba00          MOVSS XMM0,dword ptr [0x00baa1d4]
0049687a  f30f108d5cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff5c]
00496882  0f2fc1                    COMISS XMM0,XMM1
00496885  8b80c00b0000              MOV EAX,dword ptr [EAX + 0xbc0]
0049688b  898560ffffff              MOV dword ptr [EBP + 0xffffff60],EAX
00496891  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00496899  760c                      JBE 0x004968a7
0049689b  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
004968a5  eb45                      JMP 0x004968ec
004968a7  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004968af  0f2fc1                    COMISS XMM0,XMM1
004968b2  760b                      JBE 0x004968bf
004968b4  83bec00b000001            CMP dword ptr [ESI + 0xbc0],0x1
004968bb  7c5d                      JL 0x0049691a
004968bd  eb16                      JMP 0x004968d5
004968bf  f30f100580a3ba00          MOVSS XMM0,dword ptr [0x00baa380]
004968c7  0f2fc1                    COMISS XMM0,XMM1
004968ca  764e                      JBE 0x0049691a
004968cc  83bec00b000002            CMP dword ptr [ESI + 0xbc0],0x2
004968d3  7545                      JNZ 0x0049691a
004968d5  8bce                      MOV ECX,ESI
004968d7  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
004968e1  e88a0efbff                CALL 0x00447770
004968e6  ff88c00b0000              DEC dword ptr [EAX + 0xbc0]
004968ec  51                        PUSH ECX
004968ed  c704240000803f            MOV dword ptr [ESP],0x3f800000
004968f4  6a00                      PUSH 0x0
004968f6  6a02                      PUSH 0x2
004968f8  51                        PUSH ECX
004968f9  c704240000803f            MOV dword ptr [ESP],0x3f800000
00496900  8bce                      MOV ECX,ESI
00496902  68d5030000                PUSH 0x3d5
00496907  e894022400                CALL 0x006d6ba0
0049690c  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00496914  8b8560ffffff              MOV EAX,dword ptr [EBP + 0xffffff60]
0049691a  83be640b000004            CMP dword ptr [ESI + 0xb64],0x4
00496921  0f841a010000              JZ 0x00496a41
00496927  3986c40b0000              CMP dword ptr [ESI + 0xbc4],EAX
0049692d  7417                      JZ 0x00496946
0049692f  c7861004000019000000      MOV dword ptr [ESI + 0x410],0x19
00496939  ba19000000                MOV EDX,0x19
0049693e  8986c40b0000              MOV dword ptr [ESI + 0xbc4],EAX
00496944  eb06                      JMP 0x0049694c
00496946  8b9610040000              MOV EDX,dword ptr [ESI + 0x410]
0049694c  8b8d64ffffff              MOV ECX,dword ptr [EBP + 0xffffff64]
00496952  0f57c9                    XORPS XMM1,XMM1
00496955  a17816c700                MOV EAX,[0x00c71678]
0049695a  0f57db                    XORPS XMM3,XMM3
0049695d  f30f2adf                  CVTSI2SS XMM3,EDI
00496961  8bb6bc030000              MOV ESI,dword ptr [ESI + 0x3bc]
00496967  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0049696d  2b8128030000              SUB EAX,dword ptr [ECX + 0x328]
00496973  0f57c0                    XORPS XMM0,XMM0
00496976  f30f2a89c00b0000          CVTSI2SS XMM1,dword ptr [ECX + 0xbc0]
0049697e  f30f2ac0                  CVTSI2SS XMM0,EAX
00496982  f30f5ecb                  DIVSS XMM1,XMM3
00496986  f30f58c0                  ADDSS XMM0,XMM0
0049698a  f30f590d30abba00          MULSS XMM1,dword ptr [0x00baab30]
00496992  f30f58c8                  ADDSS XMM1,XMM0
00496996  0f57c0                    XORPS XMM0,XMM0
00496999  f30f2ac2                  CVTSI2SS XMM0,EDX
0049699d  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
004969a5  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
004969ad  f30f118d5cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM1
004969b5  f30f5cd0                  SUBSS XMM2,XMM0
004969b9  0f28c1                    MOVAPS XMM0,XMM1
004969bc  f30f119560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM2
004969c4  e8776bf8ff                CALL 0x0041d540
004969c9  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
004969d1  8bbd64ffffff              MOV EDI,dword ptr [EBP + 0xffffff64]
004969d7  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
004969df  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004969e7  f30f598560ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff60]
004969ef  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
004969f7  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
004969ff  e81c6bf8ff                CALL 0x0041d520
00496a04  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
00496a0c  f30f108d64ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff64]
00496a14  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
00496a1c  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00496a24  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00496a2c  f30f598560ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff60]
00496a34  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00496a3c  e9a8000000                JMP 0x00496ae9
00496a41  8bfe                      MOV EDI,ESI
00496a43  51                        PUSH ECX
00496a44  c7042400002041            MOV dword ptr [ESP],0x41200000
00496a4b  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
00496a51  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00496a57  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00496a5f  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
00496a67  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
00496a6f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00496a77  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
00496a7f  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00496a85  50                        PUSH EAX
00496a86  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00496a8e  e86d965700                CALL 0x00a10100
00496a93  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
00496a9b  0f57c0                    XORPS XMM0,XMM0
00496a9e  0f2ed8                    UCOMISS XMM3,XMM0
00496aa1  8bc8                      MOV ECX,EAX
00496aa3  9f                        LAHF
00496aa4  f6c444                    TEST AH,0x44
00496aa7  7b40                      JNP 0x00496ae9
00496aa9  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00496ab1  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
00496ab6  0f28c2                    MOVAPS XMM0,XMM2
00496ab9  f30f5901                  MULSS XMM0,dword ptr [ECX]
00496abd  f30f59d1                  MULSS XMM2,XMM1
00496ac1  f30f5ec3                  DIVSS XMM0,XMM3
00496ac5  f30f5ed3                  DIVSS XMM2,XMM3
00496ac9  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00496ad1  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00496ad9  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00496ae1  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00496ae9  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00496aef  85c0                      TEST EAX,EAX
00496af1  7e07                      JLE 0x00496afa
00496af3  48                        DEC EAX
00496af4  898710040000              MOV dword ptr [EDI + 0x410],EAX
00496afa  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00496b01  7510                      JNZ 0x00496b13
00496b03  8d4dc4                    LEA ECX,[EBP + -0x3c]
00496b06  e865f1f9ff                CALL 0x00435c70
00496b0b  8b17                      MOV EDX,dword ptr [EDI]
00496b0d  8bcf                      MOV ECX,EDI
00496b0f  50                        PUSH EAX
00496b10  ff5224                    CALL dword ptr [EDX + 0x24]
00496b13  8d4748                    LEA EAX,[EDI + 0x48]
00496b16  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00496b1c  e83f842500                CALL 0x006eef60
00496b21  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00496b27  50                        PUSH EAX
00496b28  6a02                      PUSH 0x2
00496b2a  57                        PUSH EDI
00496b2b  6840b6c700                PUSH 0xc7b640
00496b30  8d873c030000              LEA EAX,[EDI + 0x33c]
00496b36  50                        PUSH EAX
00496b37  6a58                      PUSH 0x58
00496b39  68e8030000                PUSH 0x3e8
00496b3e  e8dd1ff9ff                CALL 0x00428b20
00496b43  6a00                      PUSH 0x0
00496b45  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
00496b4b  8b08                      MOV ECX,dword ptr [EAX]
00496b4d  8b713c                    MOV ESI,dword ptr [ECX + 0x3c]
00496b50  8d4f48                    LEA ECX,[EDI + 0x48]
00496b53  e8c846f7ff                CALL 0x0040b220
00496b58  8b8d64ffffff              MOV ECX,dword ptr [EBP + 0xffffff64]
00496b5e  83c048                    ADD EAX,0x48
00496b61  6a01                      PUSH 0x1
00496b63  6a00                      PUSH 0x0
00496b65  68ff000000                PUSH 0xff
00496b6a  6aff                      PUSH -0x1
00496b6c  50                        PUSH EAX
00496b6d  ffd6                      CALL ESI
00496b6f  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
00496b77  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00496b7f  f30f59152cadba00          MULSS XMM2,dword ptr [0x00baad2c]
00496b87  8bb564ffffff              MOV ESI,dword ptr [EBP + 0xffffff64]
00496b8d  f30f590d2cadba00          MULSS XMM1,dword ptr [0x00baad2c]
00496b95  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
00496b9d  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
00496ba5  e8b6832500                CALL 0x006eef60
00496baa  660f6ec0                  MOVD XMM0,EAX
00496bae  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00496bb2  c1e81f                    SHR EAX,0x1f
00496bb5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00496bbe  660f5ac0                  CVTPD2PS XMM0,XMM0
00496bc2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00496bca  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00496bd2  f30f58c0                  ADDSS XMM0,XMM0
00496bd6  f30f118564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM0
00496bde  e87d832500                CALL 0x006eef60
00496be3  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00496beb  f30f59c9                  MULSS XMM1,XMM1
00496bef  660f6ec0                  MOVD XMM0,EAX
00496bf3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00496bf7  c1e81f                    SHR EAX,0x1f
00496bfa  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00496c03  660f5ac0                  CVTPD2PS XMM0,XMM0
00496c07  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00496c0f  f30f118560ffffff          MOVSS dword ptr [EBP + 0xffffff60],XMM0
00496c17  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00496c1f  f30f59c0                  MULSS XMM0,XMM0
00496c23  f30f58c1                  ADDSS XMM0,XMM1
00496c27  e824eef9ff                CALL 0x00435a50
00496c2c  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
00496c34  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
00496c3c  e8ff68f8ff                CALL 0x0041d540
00496c41  f30f598560ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff60]
00496c49  f30f59855cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff5c]
00496c51  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00496c59  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00496c61  f30f108564ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff64]
00496c69  e8b268f8ff                CALL 0x0041d520
00496c6e  f30f10966c030000          MOVSS XMM2,dword ptr [ESI + 0x36c]
00496c76  0f28d8                    MOVAPS XMM3,XMM0
00496c79  f30f599d60ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff60]
00496c81  0f57c0                    XORPS XMM0,XMM0
00496c84  0f2ed0                    UCOMISS XMM2,XMM0
00496c87  f30f599d5cffffff          MULSS XMM3,dword ptr [EBP + 0xffffff5c]
00496c8f  9f                        LAHF
00496c90  f30f591d80a2ba00          MULSS XMM3,dword ptr [0x00baa280]
00496c98  f6c444                    TEST AH,0x44
00496c9b  7b40                      JNP 0x00496cdd
00496c9d  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
00496ca5  f30f108d44ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff44]
00496cad  f30f59c8                  MULSS XMM1,XMM0
00496cb1  f30f59c3                  MULSS XMM0,XMM3
00496cb5  f30f5eca                  DIVSS XMM1,XMM2
00496cb9  f30f5ec2                  DIVSS XMM0,XMM2
00496cbd  f30f588e60030000          ADDSS XMM1,dword ptr [ESI + 0x360]
00496cc5  f30f588664030000          ADDSS XMM0,dword ptr [ESI + 0x364]
00496ccd  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
00496cd5  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
00496cdd  8bbd54ffffff              MOV EDI,dword ptr [EBP + 0xffffff54]
00496ce3  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
00496ced  c78650030000000020c2      MOV dword ptr [ESI + 0x350],0xc2200000
00496cf7  8b7734                    MOV ESI,dword ptr [EDI + 0x34]
00496cfa  85f6                      TEST ESI,ESI
00496cfc  744d                      JZ 0x00496d4b
00496cfe  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00496d02  8bc6                      MOV EAX,ESI
00496d04  7202                      JC 0x00496d08
00496d06  8b06                      MOV EAX,dword ptr [ESI]
00496d08  b954bcb100                MOV ECX,0xb1bc54
00496d0d  0f1f00                    NOP dword ptr [EAX]
00496d10  8a10                      MOV DL,byte ptr [EAX]
00496d12  3a11                      CMP DL,byte ptr [ECX]
00496d14  751a                      JNZ 0x00496d30
00496d16  84d2                      TEST DL,DL
00496d18  7412                      JZ 0x00496d2c
00496d1a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00496d1d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00496d20  750e                      JNZ 0x00496d30
00496d22  83c002                    ADD EAX,0x2
00496d25  83c102                    ADD ECX,0x2
00496d28  84d2                      TEST DL,DL
00496d2a  75e4                      JNZ 0x00496d10
00496d2c  33c0                      XOR EAX,EAX
00496d2e  eb05                      JMP 0x00496d35
00496d30  1bc0                      SBB EAX,EAX
00496d32  83c801                    OR EAX,0x1
00496d35  85c0                      TEST EAX,EAX
00496d37  7512                      JNZ 0x00496d4b
00496d39  384634                    CMP byte ptr [ESI + 0x34],AL
00496d3c  0f8422020000              JZ 0x00496f64
00496d42  384744                    CMP byte ptr [EDI + 0x44],AL
00496d45  0f8519020000              JNZ 0x00496f64
00496d4b  6a01                      PUSH 0x1
00496d4d  6854bcb100                PUSH 0xb1bc54
00496d52  8bcf                      MOV ECX,EDI
00496d54  e87738f7ff                CALL 0x0040a5d0
00496d59  84c0                      TEST AL,AL
00496d5b  0f8403020000              JZ 0x00496f64
00496d61  8d4f30                    LEA ECX,[EDI + 0x30]
00496d64  e84734f7ff                CALL 0x0040a1b0
00496d69  c6474401                  MOV byte ptr [EDI + 0x44],0x1
00496d6d  e9f2010000                JMP 0x00496f64
00496d72  83f802                    CMP EAX,0x2
00496d75  0f85e9010000              JNZ 0x00496f64
00496d7b  a17816c700                MOV EAX,[0x00c71678]
00496d80  6a00                      PUSH 0x0
00496d82  6a00                      PUSH 0x0
00496d84  6aff                      PUSH -0x1
00496d86  6a01                      PUSH 0x1
00496d88  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00496d92  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00496d98  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
00496d9e  68f6000000                PUSH 0xf6
00496da3  81c118120000              ADD ECX,0x1218
00496da9  50                        PUSH EAX
00496daa  e8b141f8ff                CALL 0x0041af60
00496daf  33c0                      XOR EAX,EAX
00496db1  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
00496db8  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
00496dbe  398544ffffff              CMP dword ptr [EBP + 0xffffff44],EAX
00496dc4  0f86d7000000              JBE 0x00496ea1
00496dca  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
00496dd0  8b3481                    MOV ESI,dword ptr [ECX + EAX*0x4]
00496dd3  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
00496ddb  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
00496de3  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00496deb  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00496df3  f30f59c0                  MULSS XMM0,XMM0
00496df7  f30f59c9                  MULSS XMM1,XMM1
00496dfb  f30f58c1                  ADDSS XMM0,XMM1
00496dff  e84cecf9ff                CALL 0x00435a50
00496e04  6a00                      PUSH 0x0
00496e06  68acd6c500                PUSH 0xc5d6ac
00496e0b  68dcd5c500                PUSH 0xc5d5dc
00496e10  6a00                      PUSH 0x0
00496e12  56                        PUSH ESI
00496e13  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00496e1b  e8919a6500                CALL 0x00af08b1
00496e20  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00496e28  83c414                    ADD ESP,0x14
00496e2b  0f2f8554ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff54]
00496e32  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
00496e38  764e                      JBE 0x00496e88
00496e3a  83b8640b000010            CMP dword ptr [EAX + 0xb64],0x10
00496e41  7515                      JNZ 0x00496e58
00496e43  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
00496e49  8b0481                    MOV EAX,dword ptr [ECX + EAX*0x4]
00496e4c  c780640b000002000000      MOV dword ptr [EAX + 0xb64],0x2
00496e56  eb30                      JMP 0x00496e88
00496e58  f30f108884030000          MOVSS XMM1,dword ptr [EAX + 0x384]
00496e60  0f28c1                    MOVAPS XMM0,XMM1
00496e63  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
00496e6b  f30f588080030000          ADDSS XMM0,dword ptr [EAX + 0x380]
00496e73  0f2fc1                    COMISS XMM0,XMM1
00496e76  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
00496e7e  7608                      JBE 0x00496e88
00496e80  f30f118880030000          MOVSS dword ptr [EAX + 0x380],XMM1
00496e88  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
00496e8e  40                        INC EAX
00496e8f  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
00496e95  3b8544ffffff              CMP EAX,dword ptr [EBP + 0xffffff44]
00496e9b  0f822fffffff              JC 0x00496dd0
00496ea1  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00496ea8  7407                      JZ 0x00496eb1
00496eaa  8b07                      MOV EAX,dword ptr [EDI]
00496eac  8bcf                      MOV ECX,EDI
00496eae  ff5028                    CALL dword ptr [EAX + 0x28]
00496eb1  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00496eb4  85f6                      TEST ESI,ESI
00496eb6  744a                      JZ 0x00496f02
00496eb8  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00496ebc  8bc6                      MOV EAX,ESI
00496ebe  7202                      JC 0x00496ec2
00496ec0  8b06                      MOV EAX,dword ptr [ESI]
00496ec2  b974dbb100                MOV ECX,0xb1db74
00496ec7  8a10                      MOV DL,byte ptr [EAX]
00496ec9  3a11                      CMP DL,byte ptr [ECX]
00496ecb  751a                      JNZ 0x00496ee7
00496ecd  84d2                      TEST DL,DL
00496ecf  7412                      JZ 0x00496ee3
00496ed1  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00496ed4  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00496ed7  750e                      JNZ 0x00496ee7
00496ed9  83c002                    ADD EAX,0x2
00496edc  83c102                    ADD ECX,0x2
00496edf  84d2                      TEST DL,DL
00496ee1  75e4                      JNZ 0x00496ec7
00496ee3  33c0                      XOR EAX,EAX
00496ee5  eb05                      JMP 0x00496eec
00496ee7  1bc0                      SBB EAX,EAX
00496ee9  83c801                    OR EAX,0x1
00496eec  85c0                      TEST EAX,EAX
00496eee  7512                      JNZ 0x00496f02
00496ef0  384634                    CMP byte ptr [ESI + 0x34],AL
00496ef3  742e                      JZ 0x00496f23
00496ef5  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00496efb  8d7748                    LEA ESI,[EDI + 0x48]
00496efe  7523                      JNZ 0x00496f23
00496f00  eb03                      JMP 0x00496f05
00496f02  8d7748                    LEA ESI,[EDI + 0x48]
00496f05  6a01                      PUSH 0x1
00496f07  6874dbb100                PUSH 0xb1db74
00496f0c  8bce                      MOV ECX,ESI
00496f0e  e8bd36f7ff                CALL 0x0040a5d0
00496f13  84c0                      TEST AL,AL
00496f15  740c                      JZ 0x00496f23
00496f17  8d4e30                    LEA ECX,[ESI + 0x30]
00496f1a  e89132f7ff                CALL 0x0040a1b0
00496f1f  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00496f23  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00496f27  7409                      JZ 0x00496f32
00496f29  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00496f30  7507                      JNZ 0x00496f39
00496f32  8b07                      MOV EAX,dword ptr [EDI]
00496f34  8bcf                      MOV ECX,EDI
00496f36  ff5028                    CALL dword ptr [EAX + 0x28]
00496f39  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00496f40  80bd38ffffff00            CMP byte ptr [EBP + 0xffffff38],0x0
00496f47  751b                      JNZ 0x00496f64
00496f49  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
00496f50  8b953cffffff              MOV EDX,dword ptr [EBP + 0xffffff3c]
00496f56  6a00                      PUSH 0x0
00496f58  6a00                      PUSH 0x0
00496f5a  b101                      MOV CL,0x1
00496f5c  e84fd95c00                CALL 0x00a648b0
00496f61  83c408                    ADD ESP,0x8
00496f64  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00496f67  64890d00000000            MOV dword ptr FS:[0x0],ECX
00496f6e  59                        POP ECX
00496f6f  5f                        POP EDI
00496f70  5e                        POP ESI
00496f71  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00496f74  33cd                      XOR ECX,EBP
00496f76  e8b0816500                CALL 0x00aef12b
00496f7b  8be5                      MOV ESP,EBP
00496f7d  5d                        POP EBP
00496f7e  8be3                      MOV ESP,EBX
00496f80  5b                        POP EBX
00496f81  c3                        RET
