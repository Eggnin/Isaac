; J460 NPC AI 0x00481410 AI_00481410
; types=260
; identities=260.0.0,260.10.0
; entry=00481410
00481410  53                        PUSH EBX
00481411  8bdc                      MOV EBX,ESP
00481413  83ec08                    SUB ESP,0x8
00481416  83e4f8                    AND ESP,0xfffffff8
00481419  83c404                    ADD ESP,0x4
0048141c  55                        PUSH EBP
0048141d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00481420  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00481424  8bec                      MOV EBP,ESP
00481426  6aff                      PUSH -0x1
00481428  68f02baf00                PUSH 0xaf2bf0
0048142d  64a100000000              MOV EAX,FS:[0x0]
00481433  50                        PUSH EAX
00481434  53                        PUSH EBX
00481435  81ecc8010000              SUB ESP,0x1c8
0048143b  a1b493bf00                MOV EAX,[0x00bf93b4]
00481440  33c5                      XOR EAX,EBP
00481442  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00481445  56                        PUSH ESI
00481446  57                        PUSH EDI
00481447  50                        PUSH EAX
00481448  8d45f4                    LEA EAX,[EBP + -0xc]
0048144b  64a300000000              MOV FS:[0x0],EAX
00481451  8bf9                      MOV EDI,ECX
00481453  89bda4feffff              MOV dword ptr [EBP + 0xfffffea4],EDI
00481459  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00481460  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00481463  0f85ab020000              JNZ 0x00481714
00481469  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00481473  85c0                      TEST EAX,EAX
00481475  0f8506020000              JNZ 0x00481681
0048147b  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
00481485  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0048148f  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
00481499  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
0048149c  83f901                    CMP ECX,0x1
0048149f  750c                      JNZ 0x004814ad
004814a1  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
004814ab  eb17                      JMP 0x004814c4
004814ad  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004814b3  83f902                    CMP ECX,0x2
004814b6  ba01000000                MOV EDX,0x1
004814bb  0f44c2                    CMOVZ EAX,EDX
004814be  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004814c4  c785a4feffff00000000      MOV dword ptr [EBP + 0xfffffea4],0x0
004814ce  6690                      NOP
004814d0  e88bda2600                CALL 0x006eef60
004814d5  660f6e8da4feffff          MOVD XMM1,dword ptr [EBP + 0xfffffea4]
004814dd  8bf0                      MOV ESI,EAX
004814df  660f6e87c00b0000          MOVD XMM0,dword ptr [EDI + 0xbc0]
004814e7  0f5bc9                    CVTDQ2PS XMM1,XMM1
004814ea  0f5bc0                    CVTDQ2PS XMM0,XMM0
004814ed  f30f5ec8                  DIVSS XMM1,XMM0
004814f1  f30f590d30abba00          MULSS XMM1,dword ptr [0x00baab30]
004814f9  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
00481501  0f28c1                    MOVAPS XMM0,XMM1
00481504  f30f118da8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM1
0048150c  e82fc0f9ff                CALL 0x0041d540
00481511  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
00481519  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00481521  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00481529  f30f1085a8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea8]
00481531  e8eabff9ff                CALL 0x0041d520
00481536  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
0048153e  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00481544  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0048154a  6a00                      PUSH 0x0
0048154c  56                        PUSH ESI
0048154d  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00481555  6a00                      PUSH 0x0
00481557  57                        PUSH EDI
00481558  6840b6c700                PUSH 0xc7b640
0048155d  50                        PUSH EAX
0048155e  6a0a                      PUSH 0xa
00481560  ff7728                    PUSH dword ptr [EDI + 0x28]
00481563  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
0048156b  e8a0ce2700                CALL 0x006fe410
00481570  6a00                      PUSH 0x0
00481572  68acd6c500                PUSH 0xc5d6ac
00481577  68dcd5c500                PUSH 0xc5d5dc
0048157c  6a00                      PUSH 0x0
0048157e  50                        PUSH EAX
0048157f  e82df36600                CALL 0x00af08b1
00481584  8bf0                      MOV ESI,EAX
00481586  83c414                    ADD ESP,0x14
00481589  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0048158f  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00481595  85c9                      TEST ECX,ECX
00481597  741e                      JZ 0x004815b7
00481599  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
0048159f  81c1cc030000              ADD ECX,0x3cc
004815a5  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
004815ab  50                        PUSH EAX
004815ac  e85fdc0400                CALL 0x004cf210
004815b1  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004815b7  50                        PUSH EAX
004815b8  8bcf                      MOV ECX,EDI
004815ba  8938                      MOV dword ptr [EAX],EDI
004815bc  e82fc70400                CALL 0x004cdcf0
004815c1  8b06                      MOV EAX,dword ptr [ESI]
004815c3  8d4dc0                    LEA ECX,[EBP + -0x40]
004815c6  6a01                      PUSH 0x1
004815c8  6a00                      PUSH 0x0
004815ca  68ff000000                PUSH 0xff
004815cf  0f57c0                    XORPS XMM0,XMM0
004815d2  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004815d9  6aff                      PUSH -0x1
004815db  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004815df  51                        PUSH ECX
004815e0  0f280530bcba00            MOVAPS XMM0,xmmword ptr [0x00babc30]
004815e7  8bce                      MOV ECX,ESI
004815e9  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004815ed  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004815f4  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004815fb  ff503c                    CALL dword ptr [EAX + 0x3c]
004815fe  8b85a4feffff              MOV EAX,dword ptr [EBP + 0xfffffea4]
00481604  8986c00b0000              MOV dword ptr [ESI + 0xbc0],EAX
0048160a  40                        INC EAX
0048160b  c686b003000001            MOV byte ptr [ESI + 0x3b0],0x1
00481612  8985a4feffff              MOV dword ptr [EBP + 0xfffffea4],EAX
00481618  3b87c00b0000              CMP EAX,dword ptr [EDI + 0xbc0]
0048161e  0f8cacfeffff              JL 0x004814d0
00481624  33f6                      XOR ESI,ESI
00481626  c787340300009a99993e      MOV dword ptr [EDI + 0x334],0x3e99999a
00481630  c7873803000000000000      MOV dword ptr [EDI + 0x338],0x0
0048163a  39b7c8000000              CMP dword ptr [EDI + 0xc8],ESI
00481640  761e                      JBE 0x00481660
00481642  8d4748                    LEA EAX,[EDI + 0x48]
00481645  56                        PUSH ESI
00481646  8bc8                      MOV ECX,EAX
00481648  e8d39bf8ff                CALL 0x0040b220
0048164d  46                        INC ESI
0048164e  c740540000003f            MOV dword ptr [EAX + 0x54],0x3f000000
00481655  8d4748                    LEA EAX,[EDI + 0x48]
00481658  3bb7c8000000              CMP ESI,dword ptr [EDI + 0xc8]
0048165e  72e5                      JC 0x00481645
00481660  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00481666  838f6801000010            OR dword ptr [EDI + 0x168],0x10
0048166d  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00481673  b804000000                MOV EAX,0x4
00481678  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
0048167f  eb2f                      JMP 0x004816b0
00481681  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00481687  818f6801000000000080      OR dword ptr [EDI + 0x168],0x80000000
00481691  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00481697  b803000000                MOV EAX,0x3
0048169c  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
004816a6  c7878801000001000000      MOV dword ptr [EDI + 0x188],0x1
004816b0  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
004816b6  0f57c9                    XORPS XMM1,XMM1
004816b9  0f2815e0baba00            MOVAPS XMM2,xmmword ptr [0x00babae0]
004816c0  8d8560feffff              LEA EAX,[EBP + 0xfffffe60]
004816c6  81c7e4010000              ADD EDI,0x1e4
004816cc  c78580feffffcdcc4c3f      MOV dword ptr [EBP + 0xfffffe80],0x3f4ccccd
004816d6  c78584feffffcdcc4c3f      MOV dword ptr [EBP + 0xfffffe84],0x3f4ccccd
004816e0  c78588feffffcdcc4c3f      MOV dword ptr [EBP + 0xfffffe88],0x3f4ccccd
004816ea  3bf8                      CMP EDI,EAX
004816ec  0f84c0190000              JZ 0x004830b2
004816f2  f30f7e8580feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffe80]
004816fa  8b8588feffff              MOV EAX,dword ptr [EBP + 0xfffffe88]
00481700  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
00481705  0f1117                    MOVUPS xmmword ptr [EDI],XMM2
00481708  894728                    MOV dword ptr [EDI + 0x28],EAX
0048170b  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
0048170f  e99e190000                JMP 0x004830b2
00481714  c687b003000000            MOV byte ptr [EDI + 0x3b0],0x0
0048171b  85c0                      TEST EAX,EAX
0048171d  0f8548110000              JNZ 0x0048286b
00481723  3987c00b0000              CMP dword ptr [EDI + 0xbc0],EAX
00481729  0f8eae000000              JLE 0x004817dd
0048172f  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00481735  2500400000                AND EAX,0x4000
0048173a  83c800                    OR EAX,0x0
0048173d  0f859a000000              JNZ 0x004817dd
00481743  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00481749  8bce                      MOV ECX,ESI
0048174b  e800bc2700                CALL 0x006fd350
00481750  84c0                      TEST AL,AL
00481752  0f8585000000              JNZ 0x004817dd
00481758  8b86f8640200              MOV EAX,dword ptr [ESI + 0x264f8]
0048175e  2503000080                AND EAX,0x80000003
00481763  7907                      JNS 0x0048176c
00481765  48                        DEC EAX
00481766  83c8fc                    OR EAX,0xfffffffc
00481769  83c001                    ADD EAX,0x1
0048176c  756f                      JNZ 0x004817dd
0048176e  6a0a                      PUSH 0xa
00481770  6804010000                PUSH 0x104
00481775  8d858cfeffff              LEA EAX,[EBP + 0xfffffe8c]
0048177b  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00481785  50                        PUSH EAX
00481786  8bcf                      MOV ECX,EDI
00481788  e8d3f42400                CALL 0x006d0c60
0048178d  8b9598feffff              MOV EDX,dword ptr [EBP + 0xfffffe98]
00481793  33c9                      XOR ECX,ECX
00481795  8bb590feffff              MOV ESI,dword ptr [EBP + 0xfffffe90]
0048179b  85d2                      TEST EDX,EDX
0048179d  7417                      JZ 0x004817b6
0048179f  90                        NOP
004817a0  8b048e                    MOV EAX,dword ptr [ESI + ECX*0x4]
004817a3  39b8bc030000              CMP dword ptr [EAX + 0x3bc],EDI
004817a9  7506                      JNZ 0x004817b1
004817ab  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
004817b1  41                        INC ECX
004817b2  3bca                      CMP ECX,EDX
004817b4  72ea                      JC 0x004817a0
004817b6  80bd8cfeffff00            CMP byte ptr [EBP + 0xfffffe8c],0x0
004817bd  751e                      JNZ 0x004817dd
004817bf  6a00                      PUSH 0x0
004817c1  6a00                      PUSH 0x0
004817c3  8bd6                      MOV EDX,ESI
004817c5  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004817cc  b101                      MOV CL,0x1
004817ce  e8dd305e00                CALL 0x00a648b0
004817d3  83c408                    ADD ESP,0x8
004817d6  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004817dd  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004817e3  83f804                    CMP EAX,0x4
004817e6  7409                      JZ 0x004817f1
004817e8  83f810                    CMP EAX,0x10
004817eb  0f857d000000              JNZ 0x0048186e
004817f1  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004817f6  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004817fd  766f                      JBE 0x0048186e
004817ff  83f804                    CMP EAX,0x4
00481802  754f                      JNZ 0x00481853
00481804  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0048180b  7e46                      JLE 0x00481853
0048180d  0f1087f0000000            MOVUPS XMM0,xmmword ptr [EDI + 0xf0]
00481814  8b8718010000              MOV EAX,dword ptr [EDI + 0x118]
0048181a  8d4dc0                    LEA ECX,[EBP + -0x40]
0048181d  6a01                      PUSH 0x1
0048181f  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00481823  6a00                      PUSH 0x0
00481825  0f108700010000            MOVUPS XMM0,xmmword ptr [EDI + 0x100]
0048182c  6a01                      PUSH 0x1
0048182e  8945e8                    MOV dword ptr [EBP + -0x18],EAX
00481831  8b07                      MOV EAX,dword ptr [EDI]
00481833  6a0a                      PUSH 0xa
00481835  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00481839  51                        PUSH ECX
0048183a  f30f7e8710010000          MOVQ XMM0,qword ptr [EDI + 0x110]
00481842  8bcf                      MOV ECX,EDI
00481844  660fd645e0                MOVQ qword ptr [EBP + -0x20],XMM0
00481849  c745cccdcc4c3e            MOV dword ptr [EBP + -0x34],0x3e4ccccd
00481850  ff503c                    CALL dword ptr [EAX + 0x3c]
00481853  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00481856  89470c                    MOV dword ptr [EDI + 0xc],EAX
00481859  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
00481860  c7471800000000            MOV dword ptr [EDI + 0x18],0x0
00481867  c7471c00000000            MOV dword ptr [EDI + 0x1c],0x0
0048186e  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00481874  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0048187c  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
00481884  83f804                    CMP EAX,0x4
00481887  0f8517020000              JNZ 0x00481aa4
0048188d  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00481894  8d4f48                    LEA ECX,[EDI + 0x48]
00481897  6a00                      PUSH 0x0
00481899  0f8e88000000              JLE 0x00481927
0048189f  6870e5b100                PUSH 0xb1e570
004818a4  e8d78af8ff                CALL 0x0040a380
004818a9  6a00                      PUSH 0x0
004818ab  8d8f14040000              LEA ECX,[EDI + 0x414]
004818b1  e89a4d3600                CALL 0x007e6650
004818b6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004818be  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004818c6  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004818ce  e88dd62600                CALL 0x006eef60
004818d3  33d2                      XOR EDX,EDX
004818d5  b964000000                MOV ECX,0x64
004818da  f7f1                      DIV ECX
004818dc  85d2                      TEST EDX,EDX
004818de  0f85ac050000              JNZ 0x00481e90
004818e4  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
004818ea  81c124a30200              ADD ECX,0x2a324
004818f0  68e6030000                PUSH 0x3e6
004818f5  e866cc4a00                CALL 0x0092e560
004818fa  84c0                      TEST AL,AL
004818fc  0f858e050000              JNZ 0x00481e90
00481902  51                        PUSH ECX
00481903  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048190a  6a00                      PUSH 0x0
0048190c  6a64                      PUSH 0x64
0048190e  51                        PUSH ECX
0048190f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00481916  8bcf                      MOV ECX,EDI
00481918  68e5030000                PUSH 0x3e5
0048191d  e87e522500                CALL 0x006d6ba0
00481922  e969050000                JMP 0x00481e90
00481927  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0048192d  83a768010000ef            AND dword ptr [EDI + 0x168],0xffffffef
00481934  6864e5b100                PUSH 0xb1e564
00481939  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0048193f  e83c8af8ff                CALL 0x0040a380
00481944  51                        PUSH ECX
00481945  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048194c  6a00                      PUSH 0x0
0048194e  6858020000                PUSH 0x258
00481953  51                        PUSH ECX
00481954  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048195b  8bcf                      MOV ECX,EDI
0048195d  682c010000                PUSH 0x12c
00481962  e839522500                CALL 0x006d6ba0
00481967  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048196a  85c0                      TEST EAX,EAX
0048196c  7405                      JZ 0x00481973
0048196e  8b4030                    MOV EAX,dword ptr [EAX + 0x30]
00481971  eb02                      JMP 0x00481975
00481973  33c0                      XOR EAX,EAX
00481975  f30f108f88000000          MOVSS XMM1,dword ptr [EDI + 0x88]
0048197d  33f6                      XOR ESI,ESI
0048197f  660f6ec0                  MOVD XMM0,EAX
00481983  0f5bc0                    CVTDQ2PS XMM0,XMM0
00481986  f30f5ec8                  DIVSS XMM1,XMM0
0048198a  0f28c1                    MOVAPS XMM0,XMM1
0048198d  f30f118da0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM1
00481995  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0048199d  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004819a5  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
004819ad  39b7c8000000              CMP dword ptr [EDI + 0xc8],ESI
004819b3  7624                      JBE 0x004819d9
004819b5  8d4748                    LEA EAX,[EDI + 0x48]
004819b8  56                        PUSH ESI
004819b9  8bc8                      MOV ECX,EAX
004819bb  e86098f8ff                CALL 0x0040b220
004819c0  f30f1085b4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb4]
004819c8  46                        INC ESI
004819c9  f30f114054                MOVSS dword ptr [EAX + 0x54],XMM0
004819ce  8d4748                    LEA EAX,[EDI + 0x48]
004819d1  3bb7c8000000              CMP ESI,dword ptr [EDI + 0xc8]
004819d7  72df                      JC 0x004819b8
004819d9  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004819df  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004819e7  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
004819ed  81e100000010              AND ECX,0x10000000
004819f3  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
004819f9  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
004819fe  33c0                      XOR EAX,EAX
00481a00  0bc1                      OR EAX,ECX
00481a02  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
00481a0a  f30f5cc1                  SUBSS XMM0,XMM1
00481a0e  f30f5985a0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffea0]
00481a16  f30f58c1                  ADDSS XMM0,XMM1
00481a1a  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
00481a22  740f                      JZ 0x00481a33
00481a24  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
00481a2a  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00481a2d  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00481a31  7554                      JNZ 0x00481a87
00481a33  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00481a37  7409                      JZ 0x00481a42
00481a39  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00481a40  7545                      JNZ 0x00481a87
00481a42  6a00                      PUSH 0x0
00481a44  6888e5b100                PUSH 0xb1e588
00481a49  8d4f48                    LEA ECX,[EDI + 0x48]
00481a4c  e82f89f8ff                CALL 0x0040a380
00481a51  51                        PUSH ECX
00481a52  c704240000803f            MOV dword ptr [ESP],0x3f800000
00481a59  6a00                      PUSH 0x0
00481a5b  6a02                      PUSH 0x2
00481a5d  51                        PUSH ECX
00481a5e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00481a65  8bcf                      MOV ECX,EDI
00481a67  683a010000                PUSH 0x13a
00481a6c  e82f512500                CALL 0x006d6ba0
00481a71  a17816c700                MOV EAX,[0x00c71678]
00481a76  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00481a80  c680a02e020001            MOV byte ptr [EAX + 0x22ea0],0x1
00481a87  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00481a8f  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00481a97  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00481a9f  e9ec030000                JMP 0x00481e90
00481aa4  83f810                    CMP EAX,0x10
00481aa7  755e                      JNZ 0x00481b07
00481aa9  33f6                      XOR ESI,ESI
00481aab  39b7c8000000              CMP dword ptr [EDI + 0xc8],ESI
00481ab1  761e                      JBE 0x00481ad1
00481ab3  8d4748                    LEA EAX,[EDI + 0x48]
00481ab6  56                        PUSH ESI
00481ab7  8bc8                      MOV ECX,EAX
00481ab9  e86297f8ff                CALL 0x0040b220
00481abe  46                        INC ESI
00481abf  c740540000803f            MOV dword ptr [EAX + 0x54],0x3f800000
00481ac6  8d4748                    LEA EAX,[EDI + 0x48]
00481ac9  3bb7c8000000              CMP ESI,dword ptr [EDI + 0xc8]
00481acf  72e5                      JC 0x00481ab6
00481ad1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00481ad5  740d                      JZ 0x00481ae4
00481ad7  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00481ade  0f85ac030000              JNZ 0x00481e90
00481ae4  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00481aee  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00481af8  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
00481b02  e989030000                JMP 0x00481e90
00481b07  83f803                    CMP EAX,0x3
00481b0a  0f8580030000              JNZ 0x00481e90
00481b10  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00481b14  7409                      JZ 0x00481b1f
00481b16  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00481b1d  750f                      JNZ 0x00481b2e
00481b1f  6a00                      PUSH 0x0
00481b21  687ce5b100                PUSH 0xb1e57c
00481b26  8d4f48                    LEA ECX,[EDI + 0x48]
00481b29  e85288f8ff                CALL 0x0040a380
00481b2e  51                        PUSH ECX
00481b2f  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00481b35  c7042400000000            MOV dword ptr [ESP],0x0
00481b3c  50                        PUSH EAX
00481b3d  8bcf                      MOV ECX,EDI
00481b3f  e8fcd02300                CALL 0x006bec40
00481b44  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00481b48  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00481b50  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00481b55  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00481b5d  f30f1185a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM0
00481b65  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00481b6d  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00481b74  0f2fc1                    COMISS XMM0,XMM1
00481b77  0f8636010000              JBE 0x00481cb3
00481b7d  e8ded32600                CALL 0x006eef60
00481b82  33d2                      XOR EDX,EDX
00481b84  b928000000                MOV ECX,0x28
00481b89  f7f1                      DIV ECX
00481b8b  85d2                      TEST EDX,EDX
00481b8d  0f8520010000              JNZ 0x00481cb3
00481b93  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00481b9b  0f57d2                    XORPS XMM2,XMM2
00481b9e  0f2f95a0feffff            COMISS XMM2,dword ptr [EBP + 0xfffffea0]
00481ba5  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
00481bad  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00481bb4  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00481bbb  7661                      JBE 0x00481c1e
00481bbd  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00481bc4  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00481bcb  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00481bd3  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00481bdb  e880d32600                CALL 0x006eef60
00481be0  660f6ec0                  MOVD XMM0,EAX
00481be4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00481be8  c1e81f                    SHR EAX,0x1f
00481beb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00481bf4  660f5ac8                  CVTPD2PS XMM1,XMM0
00481bf8  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00481c00  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00481c08  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00481c10  f30f580d1ca8ba00          ADDSS XMM1,dword ptr [0x00baa81c]
00481c18  f30f5cc1                  SUBSS XMM0,XMM1
00481c1c  eb4d                      JMP 0x00481c6b
00481c1e  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00481c26  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00481c2e  e82dd32600                CALL 0x006eef60
00481c33  660f6ec0                  MOVD XMM0,EAX
00481c37  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00481c3b  c1e81f                    SHR EAX,0x1f
00481c3e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00481c47  660f5ac0                  CVTPD2PS XMM0,XMM0
00481c4b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00481c53  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00481c5b  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
00481c63  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00481c6b  689ce5b100                PUSH 0xb1e59c
00481c70  8d4f48                    LEA ECX,[EDI + 0x48]
00481c73  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00481c7b  e85088f8ff                CALL 0x0040a4d0
00481c80  84c0                      TEST AL,AL
00481c82  752f                      JNZ 0x00481cb3
00481c84  6a00                      PUSH 0x0
00481c86  689ce5b100                PUSH 0xb1e59c
00481c8b  8d4f48                    LEA ECX,[EDI + 0x48]
00481c8e  e8ed86f8ff                CALL 0x0040a380
00481c93  51                        PUSH ECX
00481c94  c704240000803f            MOV dword ptr [ESP],0x3f800000
00481c9b  6a00                      PUSH 0x0
00481c9d  6a02                      PUSH 0x2
00481c9f  51                        PUSH ECX
00481ca0  c704240000803f            MOV dword ptr [ESP],0x3f800000
00481ca7  8bcf                      MOV ECX,EDI
00481ca9  68e3030000                PUSH 0x3e3
00481cae  e8ed4e2500                CALL 0x006d6ba0
00481cb3  6800000010                PUSH 0x10000000
00481cb8  6a00                      PUSH 0x0
00481cba  8bcf                      MOV ECX,EDI
00481cbc  e86f57f9ff                CALL 0x00417430
00481cc1  84c0                      TEST AL,AL
00481cc3  7418                      JZ 0x00481cdd
00481cc5  a17816c700                MOV EAX,[0x00c71678]
00481cca  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00481cd0  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00481cd3  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00481cd7  0f85b3010000              JNZ 0x00481e90
00481cdd  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00481ce3  8d4101                    LEA EAX,[ECX + 0x1]
00481ce6  898710040000              MOV dword ptr [EDI + 0x410],EAX
00481cec  83f93c                    CMP ECX,0x3c
00481cef  0f8e9b010000              JLE 0x00481e90
00481cf5  e866d22600                CALL 0x006eef60
00481cfa  33d2                      XOR EDX,EDX
00481cfc  b93c000000                MOV ECX,0x3c
00481d01  f7f1                      DIV ECX
00481d03  85d2                      TEST EDX,EDX
00481d05  0f8585010000              JNZ 0x00481e90
00481d0b  e850d22600                CALL 0x006eef60
00481d10  a801                      TEST AL,0x1
00481d12  7519                      JNZ 0x00481d2d
00481d14  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00481d1e  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
00481d28  e963010000                JMP 0x00481e90
00481d2d  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
00481d30  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00481d3a  83f801                    CMP EAX,0x1
00481d3d  0f844d010000              JZ 0x00481e90
00481d43  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
00481d4b  0f57db                    XORPS XMM3,XMM3
00481d4e  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
00481d56  51                        PUSH ECX
00481d57  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00481d5e  83f802                    CMP EAX,0x2
00481d61  0f85bc000000              JNZ 0x00481e23
00481d67  8d4d94                    LEA ECX,[EBP + -0x6c]
00481d6a  e8811bfaff                CALL 0x004238f0
00481d6f  f30f1005b0a6ba00          MOVSS XMM0,dword ptr [0x00baa6b0]
00481d77  8bf0                      MOV ESI,EAX
00481d79  e8c2b7f9ff                CALL 0x0041d540
00481d7e  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00481d86  f30f1005b0a6ba00          MOVSS XMM0,dword ptr [0x00baa6b0]
00481d8e  e88db7f9ff                CALL 0x0041d520
00481d93  51                        PUSH ECX
00481d94  c7042400008040            MOV dword ptr [ESP],0x40800000
00481d9b  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00481da1  56                        PUSH ESI
00481da2  6a12                      PUSH 0x12
00481da4  50                        PUSH EAX
00481da5  8d95acfeffff              LEA EDX,[EBP + 0xfffffeac]
00481dab  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00481db3  8bcf                      MOV ECX,EDI
00481db5  c785acfeffff00000000      MOV dword ptr [EBP + 0xfffffeac],0x0
00481dbf  c785b0feffff000038c2      MOV dword ptr [EBP + 0xfffffeb0],0xc2380000
00481dc9  e8c29a1800                CALL 0x0060b890
00481dce  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
00481dd6  8d4d94                    LEA ECX,[EBP + -0x6c]
00481dd9  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
00481de1  83c40c                    ADD ESP,0xc
00481de4  0f57db                    XORPS XMM3,XMM3
00481de7  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00481dee  e8fd1afaff                CALL 0x004238f0
00481df3  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
00481dfb  8bf0                      MOV ESI,EAX
00481dfd  e83eb7f9ff                CALL 0x0041d540
00481e02  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00481e0a  f30f100598a3ba00          MOVSS XMM0,dword ptr [0x00baa398]
00481e12  e809b7f9ff                CALL 0x0041d520
00481e17  c785b0feffff000038c2      MOV dword ptr [EBP + 0xfffffeb0],0xc2380000
00481e21  eb39                      JMP 0x00481e5c
00481e23  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
00481e29  e8c21afaff                CALL 0x004238f0
00481e2e  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
00481e36  8bf0                      MOV ESI,EAX
00481e38  e803b7f9ff                CALL 0x0041d540
00481e3d  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00481e45  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
00481e4d  e8ceb6f9ff                CALL 0x0041d520
00481e52  c785b0feffff0000e0c1      MOV dword ptr [EBP + 0xfffffeb0],0xc1e00000
00481e5c  51                        PUSH ECX
00481e5d  c7042400008040            MOV dword ptr [ESP],0x40800000
00481e64  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00481e6a  56                        PUSH ESI
00481e6b  6a12                      PUSH 0x12
00481e6d  50                        PUSH EAX
00481e6e  8d95acfeffff              LEA EDX,[EBP + 0xfffffeac]
00481e74  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00481e7c  8bcf                      MOV ECX,EDI
00481e7e  c785acfeffff00000000      MOV dword ptr [EBP + 0xfffffeac],0x0
00481e88  e8039a1800                CALL 0x0060b890
00481e8d  83c410                    ADD ESP,0x10
00481e90  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00481e96  83f808                    CMP EAX,0x8
00481e99  0f8552030000              JNZ 0x004821f1
00481e9f  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00481ea2  85f6                      TEST ESI,ESI
00481ea4  744a                      JZ 0x00481ef0
00481ea6  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00481eaa  8bc6                      MOV EAX,ESI
00481eac  7202                      JC 0x00481eb0
00481eae  8b06                      MOV EAX,dword ptr [ESI]
00481eb0  b990e5b100                MOV ECX,0xb1e590
00481eb5  8a10                      MOV DL,byte ptr [EAX]
00481eb7  3a11                      CMP DL,byte ptr [ECX]
00481eb9  751a                      JNZ 0x00481ed5
00481ebb  84d2                      TEST DL,DL
00481ebd  7412                      JZ 0x00481ed1
00481ebf  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00481ec2  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00481ec5  750e                      JNZ 0x00481ed5
00481ec7  83c002                    ADD EAX,0x2
00481eca  83c102                    ADD ECX,0x2
00481ecd  84d2                      TEST DL,DL
00481ecf  75e4                      JNZ 0x00481eb5
00481ed1  33c0                      XOR EAX,EAX
00481ed3  eb05                      JMP 0x00481eda
00481ed5  1bc0                      SBB EAX,EAX
00481ed7  83c801                    OR EAX,0x1
00481eda  85c0                      TEST EAX,EAX
00481edc  7512                      JNZ 0x00481ef0
00481ede  384634                    CMP byte ptr [ESI + 0x34],AL
00481ee1  742e                      JZ 0x00481f11
00481ee3  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00481ee9  8d7748                    LEA ESI,[EDI + 0x48]
00481eec  7523                      JNZ 0x00481f11
00481eee  eb03                      JMP 0x00481ef3
00481ef0  8d7748                    LEA ESI,[EDI + 0x48]
00481ef3  6a01                      PUSH 0x1
00481ef5  6890e5b100                PUSH 0xb1e590
00481efa  8bce                      MOV ECX,ESI
00481efc  e8cf86f8ff                CALL 0x0040a5d0
00481f01  84c0                      TEST AL,AL
00481f03  740c                      JZ 0x00481f11
00481f05  8d4e30                    LEA ECX,[ESI + 0x30]
00481f08  e8a382f8ff                CALL 0x0040a1b0
00481f0d  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00481f11  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00481f15  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00481f18  0f8512020000              JNZ 0x00482130
00481f1e  85c0                      TEST EAX,EAX
00481f20  0f84ae020000              JZ 0x004821d4
00481f26  68dcd2b100                PUSH 0xb1d2dc
00481f2b  8d4f78                    LEA ECX,[EDI + 0x78]
00481f2e  e83d8ff8ff                CALL 0x0040ae70
00481f33  84c0                      TEST AL,AL
00481f35  0f8499020000              JZ 0x004821d4
00481f3b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00481f3f  7415                      JZ 0x00481f56
00481f41  68f4d6b100                PUSH 0xb1d6f4
00481f46  8d4f78                    LEA ECX,[EDI + 0x78]
00481f49  e8228ff8ff                CALL 0x0040ae70
00481f4e  84c0                      TEST AL,AL
00481f50  0f857e020000              JNZ 0x004821d4
00481f56  6a00                      PUSH 0x0
00481f58  6a02                      PUSH 0x2
00481f5a  8bcf                      MOV ECX,EDI
00481f5c  e8afa72200                CALL 0x006ac710
00481f61  84c0                      TEST AL,AL
00481f63  0f846b020000              JZ 0x004821d4
00481f69  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
00481f6f  e8bccffbff                CALL 0x0043ef30
00481f74  6a00                      PUSH 0x0
00481f76  6a04                      PUSH 0x4
00481f78  8bcf                      MOV ECX,EDI
00481f7a  c785ccfeffffcdccccbd      MOV dword ptr [EBP + 0xfffffecc],0xbdcccccd
00481f84  e887a72200                CALL 0x006ac710
00481f89  84c0                      TEST AL,AL
00481f8b  740a                      JZ 0x00481f97
00481f8d  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00481f95  eb08                      JMP 0x00481f9f
00481f97  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00481f9f  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00481fa7  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
00481fad  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00481fb5  51                        PUSH ECX
00481fb6  c7042400000000            MOV dword ptr [ESP],0x0
00481fbd  8bcf                      MOV ECX,EDI
00481fbf  50                        PUSH EAX
00481fc0  f30f59c1                  MULSS XMM0,XMM1
00481fc4  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00481fcc  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00481fd4  e867cc2300                CALL 0x006bec40
00481fd9  51                        PUSH ECX
00481fda  c7042400002041            MOV dword ptr [ESP],0x41200000
00481fe1  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
00481fe7  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00481feb  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00481ff3  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00481ffb  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00482000  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
00482006  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0048200e  50                        PUSH EAX
0048200f  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00482017  e8e4e05800                CALL 0x00a10100
0048201c  f30f1085b4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb4]
00482024  f30f590500aaba00          MULSS XMM0,dword ptr [0x00baaa00]
0048202c  f30f5c0550a9ba00          SUBSS XMM0,dword ptr [0x00baa950]
00482034  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0048203c  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00482044  e8f7b4f9ff                CALL 0x0041d540
00482049  f30f1185a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM0
00482051  f30f1085b4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb4]
00482059  e8c2b4f9ff                CALL 0x0041d520
0048205e  f30f10a5b0feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffeb0]
00482066  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
0048206c  f30f1095a0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffea0]
00482074  0f28cc                    MOVAPS XMM1,XMM4
00482077  f30f59a5a0feffff          MULSS XMM4,dword ptr [EBP + 0xfffffea0]
0048207f  8bcf                      MOV ECX,EDI
00482081  50                        PUSH EAX
00482082  f30f5995acfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffeac]
0048208a  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00482090  6a00                      PUSH 0x0
00482092  f30f59c8                  MULSS XMM1,XMM0
00482096  50                        PUSH EAX
00482097  f30f5985acfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffeac]
0048209f  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
004820a5  50                        PUSH EAX
004820a6  f30f5cd1                  SUBSS XMM2,XMM1
004820aa  f30f58c4                  ADDSS XMM0,XMM4
004820ae  f30f1195b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM2
004820b6  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
004820be  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004820c6  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004820ce  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
004820d6  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004820de  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
004820e6  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
004820ee  e8ed912400                CALL 0x006cb2e0
004820f3  51                        PUSH ECX
004820f4  c704240000803f            MOV dword ptr [ESP],0x3f800000
004820fb  6a00                      PUSH 0x0
004820fd  6a02                      PUSH 0x2
004820ff  51                        PUSH ECX
00482100  c704240000803f            MOV dword ptr [ESP],0x3f800000
00482107  8bcf                      MOV ECX,EDI
00482109  6832010000                PUSH 0x132
0048210e  e88d4a2500                CALL 0x006d6ba0
00482113  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
0048211b  f30f58053ca1ba00          ADDSS XMM0,dword ptr [0x00baa13c]
00482123  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0048212b  e9a4000000                JMP 0x004821d4
00482130  85c0                      TEST EAX,EAX
00482132  0f849c000000              JZ 0x004821d4
00482138  68dcd2b100                PUSH 0xb1d2dc
0048213d  8d4f78                    LEA ECX,[EDI + 0x78]
00482140  e88b8cf8ff                CALL 0x0040add0
00482145  84c0                      TEST AL,AL
00482147  0f8487000000              JZ 0x004821d4
0048214d  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
00482153  e8d8cdfbff                CALL 0x0043ef30
00482158  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00482160  8bcf                      MOV ECX,EDI
00482162  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0048216a  50                        PUSH EAX
0048216b  6a05                      PUSH 0x5
0048216d  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00482173  c785b8feffff00000000      MOV dword ptr [EBP + 0xfffffeb8],0x0
0048217d  50                        PUSH EAX
0048217e  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
00482186  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
0048218c  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00482194  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0048219c  50                        PUSH EAX
0048219d  c785bcfeffff00002041      MOV dword ptr [EBP + 0xfffffebc],0x41200000
004821a7  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
004821af  e82c912400                CALL 0x006cb2e0
004821b4  51                        PUSH ECX
004821b5  c704240000803f            MOV dword ptr [ESP],0x3f800000
004821bc  6a00                      PUSH 0x0
004821be  6a02                      PUSH 0x2
004821c0  51                        PUSH ECX
004821c1  c704240000803f            MOV dword ptr [ESP],0x3f800000
004821c8  8bcf                      MOV ECX,EDI
004821ca  6832010000                PUSH 0x132
004821cf  e8cc492500                CALL 0x006d6ba0
004821d4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004821d8  0f8412060000              JZ 0x004827f0
004821de  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004821e5  0f8405060000              JZ 0x004827f0
004821eb  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004821f1  83f809                    CMP EAX,0x9
004821f4  0f85ae040000              JNZ 0x004826a8
004821fa  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004821fd  85f6                      TEST ESI,ESI
004821ff  744a                      JZ 0x0048224b
00482201  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00482205  8bc6                      MOV EAX,ESI
00482207  7202                      JC 0x0048220b
00482209  8b06                      MOV EAX,dword ptr [ESI]
0048220b  b948d7b100                MOV ECX,0xb1d748
00482210  8a10                      MOV DL,byte ptr [EAX]
00482212  3a11                      CMP DL,byte ptr [ECX]
00482214  751a                      JNZ 0x00482230
00482216  84d2                      TEST DL,DL
00482218  7412                      JZ 0x0048222c
0048221a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048221d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00482220  750e                      JNZ 0x00482230
00482222  83c002                    ADD EAX,0x2
00482225  83c102                    ADD ECX,0x2
00482228  84d2                      TEST DL,DL
0048222a  75e4                      JNZ 0x00482210
0048222c  33c0                      XOR EAX,EAX
0048222e  eb05                      JMP 0x00482235
00482230  1bc0                      SBB EAX,EAX
00482232  83c801                    OR EAX,0x1
00482235  85c0                      TEST EAX,EAX
00482237  7512                      JNZ 0x0048224b
00482239  384634                    CMP byte ptr [ESI + 0x34],AL
0048223c  742e                      JZ 0x0048226c
0048223e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00482244  8d7748                    LEA ESI,[EDI + 0x48]
00482247  7523                      JNZ 0x0048226c
00482249  eb03                      JMP 0x0048224e
0048224b  8d7748                    LEA ESI,[EDI + 0x48]
0048224e  6a01                      PUSH 0x1
00482250  6848d7b100                PUSH 0xb1d748
00482255  8bce                      MOV ECX,ESI
00482257  e87483f8ff                CALL 0x0040a5d0
0048225c  84c0                      TEST AL,AL
0048225e  740c                      JZ 0x0048226c
00482260  8d4e30                    LEA ECX,[ESI + 0x30]
00482263  e8487ff8ff                CALL 0x0040a1b0
00482268  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0048226c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00482270  0f847a050000              JZ 0x004827f0
00482276  68dcd2b100                PUSH 0xb1d2dc
0048227b  8d4f78                    LEA ECX,[EDI + 0x78]
0048227e  e84d8bf8ff                CALL 0x0040add0
00482283  84c0                      TEST AL,AL
00482285  0f8400040000              JZ 0x0048268b
0048228b  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
0048228e  83f901                    CMP ECX,0x1
00482291  0f859c020000              JNZ 0x00482533
00482297  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0048229d  33c0                      XOR EAX,EAX
0048229f  81e100000010              AND ECX,0x10000000
004822a5  c785b4feffff02000000      MOV dword ptr [EBP + 0xfffffeb4],0x2
004822af  0bc1                      OR EAX,ECX
004822b1  744d                      JZ 0x00482300
004822b3  6a00                      PUSH 0x0
004822b5  51                        PUSH ECX
004822b6  6a00                      PUSH 0x0
004822b8  6a5e                      PUSH 0x5e
004822ba  8bcf                      MOV ECX,EDI
004822bc  e81fa52200                CALL 0x006ac7e0
004822c1  6a00                      PUSH 0x0
004822c3  51                        PUSH ECX
004822c4  6a00                      PUSH 0x0
004822c6  be03000000                MOV ESI,0x3
004822cb  8bcf                      MOV ECX,EDI
004822cd  6a55                      PUSH 0x55
004822cf  2bf0                      SUB ESI,EAX
004822d1  e80aa52200                CALL 0x006ac7e0
004822d6  6a00                      PUSH 0x0
004822d8  51                        PUSH ECX
004822d9  6a00                      PUSH 0x0
004822db  682e030000                PUSH 0x32e
004822e0  8bcf                      MOV ECX,EDI
004822e2  2bf0                      SUB ESI,EAX
004822e4  e8f7a42200                CALL 0x006ac7e0
004822e9  2bf0                      SUB ESI,EAX
004822eb  83fe02                    CMP ESI,0x2
004822ee  7f10                      JG 0x00482300
004822f0  8bc6                      MOV EAX,ESI
004822f2  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
004822f8  85f6                      TEST ESI,ESI
004822fa  0f8ea4000000              JLE 0x004823a4
00482300  a17816c700                MOV EAX,[0x00c71678]
00482305  8bcf                      MOV ECX,EDI
00482307  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0048230d  e82ec52300                CALL 0x006be840
00482312  81c73c030000              ADD EDI,0x33c
00482318  6a00                      PUSH 0x0
0048231a  6a00                      PUSH 0x0
0048231c  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00482324  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
0048232c  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00482332  f30f5c17                  SUBSS XMM2,dword ptr [EDI]
00482336  f30f5c5f04                SUBSS XMM3,dword ptr [EDI + 0x4]
0048233b  6a00                      PUSH 0x0
0048233d  51                        PUSH ECX
0048233e  c7042400000000            MOV dword ptr [ESP],0x0
00482345  8bce                      MOV ECX,ESI
00482347  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
0048234f  50                        PUSH EAX
00482350  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
00482358  8d8558feffff              LEA EAX,[EBP + 0xfffffe58]
0048235e  50                        PUSH EAX
0048235f  f30f5817                  ADDSS XMM2,dword ptr [EDI]
00482363  f30f585f04                ADDSS XMM3,dword ptr [EDI + 0x4]
00482368  f30f1195b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM2
00482370  f30f119dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM3
00482378  e8a3113900                CALL 0x00813520
0048237d  8bb5a4feffff              MOV ESI,dword ptr [EBP + 0xfffffea4]
00482383  51                        PUSH ECX
00482384  c70424000048c2            MOV dword ptr [ESP],0xc2480000
0048238b  6a00                      PUSH 0x0
0048238d  ff7004                    PUSH dword ptr [EAX + 0x4]
00482390  ff30                      PUSH dword ptr [EAX]
00482392  56                        PUSH ESI
00482393  57                        PUSH EDI
00482394  e8b7032400                CALL 0x006c2750
00482399  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
0048239f  83c418                    ADD ESP,0x18
004823a2  8bfe                      MOV EDI,ESI
004823a4  83f801                    CMP EAX,0x1
004823a7  0f8e54020000              JLE 0x00482601
004823ad  e8aecb2600                CALL 0x006eef60
004823b2  a801                      TEST AL,0x1
004823b4  0f8547020000              JNZ 0x00482601
004823ba  a17816c700                MOV EAX,[0x00c71678]
004823bf  8bb5a4feffff              MOV ESI,dword ptr [EBP + 0xfffffea4]
004823c5  8bce                      MOV ECX,ESI
004823c7  8bb800830100              MOV EDI,dword ptr [EAX + 0x18300]
004823cd  e86ec42300                CALL 0x006be840
004823d2  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004823da  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
004823e2  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004823ea  8d8550feffff              LEA EAX,[EBP + 0xfffffe50]
004823f0  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
004823f8  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00482400  f30f1185a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM0
00482408  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
00482410  50                        PUSH EAX
00482411  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00482419  e852cc1f00                CALL 0x0067f070
0048241e  83c404                    ADD ESP,0x4
00482421  8bf0                      MOV ESI,EAX
00482423  e838cb2600                CALL 0x006eef60
00482428  f30f1095b4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffeb4]
00482430  83ec0c                    SUB ESP,0xc
00482433  f30f5c95a0feffff          SUBSS XMM2,dword ptr [EBP + 0xfffffea0]
0048243b  0f57db                    XORPS XMM3,XMM3
0048243e  8bcf                      MOV ECX,EDI
00482440  660f6ec0                  MOVD XMM0,EAX
00482444  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00482448  c1e81f                    SHR EAX,0x1f
0048244b  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00482453  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048245c  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00482464  8d859cfeffff              LEA EAX,[EBP + 0xfffffe9c]
0048246a  f30f5895a0feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffea0]
00482472  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048247a  c7042400000000            MOV dword ptr [ESP],0x0
00482481  660f5ac8                  CVTPD2PS XMM1,XMM0
00482485  50                        PUSH EAX
00482486  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
0048248c  50                        PUSH EAX
0048248d  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00482495  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
0048249d  0f28c1                    MOVAPS XMM0,XMM1
004824a0  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
004824a5  f30f5906                  MULSS XMM0,dword ptr [ESI]
004824a9  f30f58d0                  ADDSS XMM2,XMM0
004824ad  f30f11959cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM2
004824b5  f30f1095bcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffebc]
004824bd  f30f5c95b0feffff          SUBSS XMM2,dword ptr [EBP + 0xfffffeb0]
004824c5  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
004824cd  f30f5895b0feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffeb0]
004824d5  f30f58d1                  ADDSS XMM2,XMM1
004824d9  f30f1195a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM2
004824e1  e86a0a3900                CALL 0x00812f50
004824e6  6a00                      PUSH 0x0
004824e8  6a00                      PUSH 0x0
004824ea  6a00                      PUSH 0x0
004824ec  51                        PUSH ECX
004824ed  c7042400000000            MOV dword ptr [ESP],0x0
004824f4  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
004824fa  50                        PUSH EAX
004824fb  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
00482501  8bcf                      MOV ECX,EDI
00482503  50                        PUSH EAX
00482504  e817103900                CALL 0x00813520
00482509  8bbda4feffff              MOV EDI,dword ptr [EBP + 0xfffffea4]
0048250f  51                        PUSH ECX
00482510  c70424000048c2            MOV dword ptr [ESP],0xc2480000
00482517  6a00                      PUSH 0x0
00482519  ff7004                    PUSH dword ptr [EAX + 0x4]
0048251c  ff30                      PUSH dword ptr [EAX]
0048251e  8d873c030000              LEA EAX,[EDI + 0x33c]
00482524  57                        PUSH EDI
00482525  50                        PUSH EAX
00482526  e825022400                CALL 0x006c2750
0048252b  83c418                    ADD ESP,0x18
0048252e  e9ce000000                JMP 0x00482601
00482533  c785b8feffff00000000      MOV dword ptr [EBP + 0xfffffeb8],0x0
0048253d  8d873c030000              LEA EAX,[EDI + 0x33c]
00482543  c785bcfeffff000048c2      MOV dword ptr [EBP + 0xfffffebc],0xc2480000
0048254d  83f902                    CMP ECX,0x2
00482550  0f857b000000              JNZ 0x004825d1
00482556  f30f100d24aaba00          MOVSS XMM1,dword ptr [0x00baaa24]
0048255e  8bf1                      MOV ESI,ECX
00482560  f30f118db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM1
00482568  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00482570  6a00                      PUSH 0x0
00482572  57                        PUSH EDI
00482573  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
00482579  51                        PUSH ECX
0048257a  6a0a                      PUSH 0xa
0048257c  51                        PUSH ECX
0048257d  f30f110c24                MOVSS dword ptr [ESP],XMM1
00482582  50                        PUSH EAX
00482583  6a01                      PUSH 0x1
00482585  e886cd4e00                CALL 0x0096f310
0048258a  83c41c                    ADD ESP,0x1c
0048258d  8bc8                      MOV ECX,EAX
0048258f  8b10                      MOV EDX,dword ptr [EAX]
00482591  c7805803000000803b45      MOV dword ptr [EAX + 0x358],0x453b8000
0048259b  0f1005804bc300            MOVUPS XMM0,xmmword ptr [0x00c34b80]
004825a2  0f118028040000            MOVUPS xmmword ptr [EAX + 0x428],XMM0
004825a9  ff520c                    CALL dword ptr [EDX + 0xc]
004825ac  f30f108db4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb4]
004825b4  8d873c030000              LEA EAX,[EDI + 0x33c]
004825ba  f30f5c0db4a9ba00          SUBSS XMM1,dword ptr [0x00baa9b4]
004825c2  f30f118db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM1
004825ca  83ee01                    SUB ESI,0x1
004825cd  75a1                      JNZ 0x00482570
004825cf  eb30                      JMP 0x00482601
004825d1  6a00                      PUSH 0x0
004825d3  57                        PUSH EDI
004825d4  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
004825da  51                        PUSH ECX
004825db  6a0a                      PUSH 0xa
004825dd  51                        PUSH ECX
004825de  c704240000b442            MOV dword ptr [ESP],0x42b40000
004825e5  50                        PUSH EAX
004825e6  6a01                      PUSH 0x1
004825e8  e823cd4e00                CALL 0x0096f310
004825ed  83c41c                    ADD ESP,0x1c
004825f0  8bc8                      MOV ECX,EAX
004825f2  8b10                      MOV EDX,dword ptr [EAX]
004825f4  c7805803000000803b45      MOV dword ptr [EAX + 0x358],0x453b8000
004825fe  ff520c                    CALL dword ptr [EDX + 0xc]
00482601  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00482609  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0048260f  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00482617  83f812                    CMP EAX,0x12
0048261a  750a                      JNZ 0x00482626
0048261c  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00482624  eb0d                      JMP 0x00482633
00482626  83f813                    CMP EAX,0x13
00482629  7510                      JNZ 0x0048263b
0048262b  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00482633  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
0048263b  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00482641  8d8da4feffff              LEA ECX,[EBP + 0xfffffea4]
00482647  c785a4feffff31010000      MOV dword ptr [EBP + 0xfffffea4],0x131
00482651  e82a414d00                CALL 0x00956780
00482656  f30f1085b4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb4]
0048265e  83ec08                    SUB ESP,0x8
00482661  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00482669  f30f110424                MOVSS dword ptr [ESP],XMM0
0048266e  6a00                      PUSH 0x0
00482670  6a02                      PUSH 0x2
00482672  51                        PUSH ECX
00482673  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048267a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00482680  ffb5a4feffff              PUSH dword ptr [EBP + 0xfffffea4]
00482686  e8a5b54a00                CALL 0x0092dc30
0048268b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048268f  0f845b010000              JZ 0x004827f0
00482695  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048269c  0f844e010000              JZ 0x004827f0
004826a2  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004826a8  83f803                    CMP EAX,0x3
004826ab  740e                      JZ 0x004826bb
004826ad  83f808                    CMP EAX,0x8
004826b0  7409                      JZ 0x004826bb
004826b2  83f809                    CMP EAX,0x9
004826b5  0f85c2000000              JNZ 0x0048277d
004826bb  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004826c2  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004826ca  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
004826d2  0f28c1                    MOVAPS XMM0,XMM1
004826d5  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
004826dd  f30f59d1                  MULSS XMM2,XMM1
004826e1  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004826e9  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
004826f1  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004826f9  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00482701  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00482709  747a                      JZ 0x00482785
0048270b  f30f10879c010000          MOVSS XMM0,dword ptr [EDI + 0x19c]
00482713  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0048271a  0f2fc1                    COMISS XMM0,XMM1
0048271d  7666                      JBE 0x00482785
0048271f  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00482727  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
0048272f  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00482736  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0048273d  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
00482745  f30f590d54a8ba00          MULSS XMM1,dword ptr [0x00baa854]
0048274d  f30f119738030000          MOVSS dword ptr [EDI + 0x338],XMM2
00482755  f30f591554a8ba00          MULSS XMM2,dword ptr [0x00baa854]
0048275d  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
00482765  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0048276d  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00482775  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0048277d  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00482785  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0048278c  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00482794  f30f590528a4ba00          MULSS XMM0,dword ptr [0x00baa428]
0048279c  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004827a4  7420                      JZ 0x004827c6
004827a6  a17816c700                MOV EAX,[0x00c71678]
004827ab  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004827b1  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
004827b6  f30f5805d0a8ba00          ADDSS XMM0,dword ptr [0x00baa8d0]
004827be  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
004827c6  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004827cd  0f84df080000              JZ 0x004830b2
004827d3  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004827d9  83f812                    CMP EAX,0x12
004827dc  752b                      JNZ 0x00482809
004827de  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004827e6  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
004827ee  eb26                      JMP 0x00482816
004827f0  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004827fa  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00482804  e9b2feffff                JMP 0x004826bb
00482809  83f813                    CMP EAX,0x13
0048280c  7508                      JNZ 0x00482816
0048280e  f30f118da8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM1
00482816  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048281c  8d8db4feffff              LEA ECX,[EBP + 0xfffffeb4]
00482822  c785b4feffffe4030000      MOV dword ptr [EBP + 0xfffffeb4],0x3e4
0048282c  e84f3f4d00                CALL 0x00956780
00482831  f30f1085a8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea8]
00482839  83ec08                    SUB ESP,0x8
0048283c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00482844  f30f110424                MOVSS dword ptr [ESP],XMM0
00482849  6a00                      PUSH 0x0
0048284b  6a02                      PUSH 0x2
0048284d  51                        PUSH ECX
0048284e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00482855  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0048285b  ffb5b4feffff              PUSH dword ptr [EBP + 0xfffffeb4]
00482861  e8cab34a00                CALL 0x0092dc30
00482866  e947080000                JMP 0x004830b2
0048286b  83f80a                    CMP EAX,0xa
0048286e  0f853e080000              JNZ 0x004830b2
00482874  660f6e9f10040000          MOVD XMM3,dword ptr [EDI + 0x410]
0048287c  0f57c9                    XORPS XMM1,XMM1
0048287f  f30f101550a9ba00          MOVSS XMM2,dword ptr [0x00baa950]
00482887  0f5bdb                    CVTDQ2PS XMM3,XMM3
0048288a  6a01                      PUSH 0x1
0048288c  e8af652500                CALL 0x006d8e40
00482891  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00482897  83f804                    CMP EAX,0x4
0048289a  0f852e020000              JNZ 0x00482ace
004828a0  51                        PUSH ECX
004828a1  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
004828a7  c7042400000000            MOV dword ptr [ESP],0x0
004828ae  50                        PUSH EAX
004828af  8bcf                      MOV ECX,EDI
004828b1  e88ac32300                CALL 0x006bec40
004828b6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004828ba  8d4f48                    LEA ECX,[EDI + 0x48]
004828bd  f30f1010                  MOVSS XMM2,dword ptr [EAX]
004828c1  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004828c6  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004828ce  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004828d6  f30f1195a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM2
004828de  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
004828e6  7409                      JZ 0x004828f1
004828e8  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004828ef  751c                      JNZ 0x0048290d
004828f1  6a00                      PUSH 0x0
004828f3  6854d7b100                PUSH 0xb1d754
004828f8  e8837af8ff                CALL 0x0040a380
004828fd  f30f1095a8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffea8]
00482905  f30f1085b4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb4]
0048290d  0f28c8                    MOVAPS XMM1,XMM0
00482910  f30f59c8                  MULSS XMM1,XMM0
00482914  0f28c2                    MOVAPS XMM0,XMM2
00482917  f30f59c2                  MULSS XMM0,XMM2
0048291b  f30f58c8                  ADDSS XMM1,XMM0
0048291f  0f28c1                    MOVAPS XMM0,XMM1
00482922  f30f118db0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM1
0048292a  e82131fbff                CALL 0x00435a50
0048292f  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00482936  8bcf                      MOV ECX,EDI
00482938  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00482940  7411                      JZ 0x00482953
00482942  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
00482948  0f57d2                    XORPS XMM2,XMM2
0048294b  50                        PUSH EAX
0048294c  e87f592500                CALL 0x006d82d0
00482951  eb62                      JMP 0x004829b5
00482953  e8e8be2300                CALL 0x006be840
00482958  f30f1095bcfeffff          MOVSS XMM2,dword ptr [EBP + 0xfffffebc]
00482960  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
00482966  0f28c2                    MOVAPS XMM0,XMM2
00482969  f30f598060030000          MULSS XMM0,dword ptr [EAX + 0x360]
00482971  f30f599064030000          MULSS XMM2,dword ptr [EAX + 0x364]
00482979  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
0048297f  50                        PUSH EAX
00482980  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00482988  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00482990  f30f5885a8feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffea8]
00482998  f30f5895b4feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffeb4]
004829a0  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
004829a8  f30f1195bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM2
004829b0  e87bd65800                CALL 0x00a10030
004829b5  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
004829bd  0f57c0                    XORPS XMM0,XMM0
004829c0  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004829c4  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004829c9  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
004829d1  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
004829d9  0f2ed8                    UCOMISS XMM3,XMM0
004829dc  9f                        LAHF
004829dd  f6c444                    TEST AH,0x44
004829e0  7b38                      JNP 0x00482a1a
004829e2  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004829ea  f30f59d0                  MULSS XMM2,XMM0
004829ee  f30f59c8                  MULSS XMM1,XMM0
004829f2  f30f5ed3                  DIVSS XMM2,XMM3
004829f6  f30f5ecb                  DIVSS XMM1,XMM3
004829fa  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00482a02  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
00482a0a  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00482a12  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00482a1a  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00482a22  0f57c9                    XORPS XMM1,XMM1
00482a25  0f2fc1                    COMISS XMM0,XMM1
00482a28  0f97c0                    SETA AL
00482a2b  888748010000              MOV byte ptr [EDI + 0x148],AL
00482a31  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00482a38  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00482a40  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
00482a48  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
00482a4e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00482a56  741e                      JZ 0x00482a76
00482a58  83f83c                    CMP EAX,0x3c
00482a5b  7e54                      JLE 0x00482ab1
00482a5d  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00482a65  8bcf                      MOV ECX,EDI
00482a67  6a07                      PUSH 0x7
00482a69  6a00                      PUSH 0x0
00482a6b  e8f0832400                CALL 0x006cae60
00482a70  84c0                      TEST AL,AL
00482a72  743d                      JZ 0x00482ab1
00482a74  eb28                      JMP 0x00482a9e
00482a76  83f85a                    CMP EAX,0x5a
00482a79  7e36                      JLE 0x00482ab1
00482a7b  f30f10055cacba00          MOVSS XMM0,dword ptr [0x00baac5c]
00482a83  0f2f85b0feffff            COMISS XMM0,dword ptr [EBP + 0xfffffeb0]
00482a8a  7625                      JBE 0x00482ab1
00482a8c  e8cfc42600                CALL 0x006eef60
00482a91  33d2                      XOR EDX,EDX
00482a93  b932000000                MOV ECX,0x32
00482a98  f7f1                      DIV ECX
00482a9a  85d2                      TEST EDX,EDX
00482a9c  7513                      JNZ 0x00482ab1
00482a9e  6a01                      PUSH 0x1
00482aa0  8bcf                      MOV ECX,EDI
00482aa2  e8a9652500                CALL 0x006d9050
00482aa7  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00482ab1  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00482ab9  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00482ac1  2bc8                      SUB ECX,EAX
00482ac3  018f10040000              ADD dword ptr [EDI + 0x410],ECX
00482ac9  e9a6040000                JMP 0x00482f74
00482ace  83f808                    CMP EAX,0x8
00482ad1  0f8504020000              JNZ 0x00482cdb
00482ad7  6a00                      PUSH 0x0
00482ad9  8bcf                      MOV ECX,EDI
00482adb  e870652500                CALL 0x006d9050
00482ae0  6a00                      PUSH 0x0
00482ae2  68dcd2b100                PUSH 0xb1d2dc
00482ae7  8d4f48                    LEA ECX,[EDI + 0x48]
00482aea  e89178f8ff                CALL 0x0040a380
00482aef  68dcd2b100                PUSH 0xb1d2dc
00482af4  8d4f48                    LEA ECX,[EDI + 0x48]
00482af7  e83485f8ff                CALL 0x0040b030
00482afc  84c0                      TEST AL,AL
00482afe  0f84b0010000              JZ 0x00482cb4
00482b04  e857c42600                CALL 0x006eef60
00482b09  51                        PUSH ECX
00482b0a  660f6ec0                  MOVD XMM0,EAX
00482b0e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00482b12  c1e81f                    SHR EAX,0x1f
00482b15  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00482b1e  660f5ac0                  CVTPD2PS XMM0,XMM0
00482b22  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00482b2a  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00482b32  f30f5805b0a4ba00          ADDSS XMM0,dword ptr [0x00baa4b0]
00482b3a  f30f110424                MOVSS dword ptr [ESP],XMM0
00482b3f  6a00                      PUSH 0x0
00482b41  6a02                      PUSH 0x2
00482b43  51                        PUSH ECX
00482b44  c704240000803f            MOV dword ptr [ESP],0x3f800000
00482b4b  8bcf                      MOV ECX,EDI
00482b4d  683e010000                PUSH 0x13e
00482b52  e849402500                CALL 0x006d6ba0
00482b57  6840b6c700                PUSH 0xc7b640
00482b5c  8d87e4010000              LEA EAX,[EDI + 0x1e4]
00482b62  c785b8feffff00000000      MOV dword ptr [EBP + 0xfffffeb8],0x0
00482b6c  50                        PUSH EAX
00482b6d  8d85b8feffff              LEA EAX,[EBP + 0xfffffeb8]
00482b73  c785bcfeffff000040c1      MOV dword ptr [EBP + 0xfffffebc],0xc1400000
00482b7d  50                        PUSH EAX
00482b7e  8d973c030000              LEA EDX,[EDI + 0x33c]
00482b84  b901000000                MOV ECX,0x1
00482b89  e862512500                CALL 0x006d7cf0
00482b8e  83c40c                    ADD ESP,0xc
00482b91  8bc8                      MOV ECX,EAX
00482b93  c7805803000000008040      MOV dword ptr [EAX + 0x358],0x40800000
00482b9d  57                        PUSH EDI
00482b9e  e80d39fdff                CALL 0x004564b0
00482ba3  8bcf                      MOV ECX,EDI
00482ba5  e896bc2300                CALL 0x006be840
00482baa  8bcf                      MOV ECX,EDI
00482bac  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00482bb4  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00482bbc  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00482bc4  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00482bcc  e86fbc2300                CALL 0x006be840
00482bd1  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00482bd8  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
00482be0  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
00482be8  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00482bf0  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
00482bf8  f30f588dbcfeffff          ADDSS XMM1,dword ptr [EBP + 0xfffffebc]
00482c00  f30f5895b0feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffeb0]
00482c08  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00482c10  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
00482c18  f30f118db8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM1
00482c20  f30f1195bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM2
00482c28  7420                      JZ 0x00482c4a
00482c2a  f30f1087200f0000          MOVSS XMM0,dword ptr [EDI + 0xf20]
00482c32  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00482c3a  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
00482c42  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00482c4a  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
00482c50  e8dbc2fbff                CALL 0x0043ef30
00482c55  8bf0                      MOV ESI,EAX
00482c57  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
00482c5d  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
00482c63  50                        PUSH EAX
00482c64  e8c7d35800                CALL 0x00a10030
00482c69  56                        PUSH ESI
00482c6a  6a00                      PUSH 0x0
00482c6c  8bcf                      MOV ECX,EDI
00482c6e  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00482c73  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00482c77  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
00482c7d  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00482c85  50                        PUSH EAX
00482c86  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00482c8e  8d873c030000              LEA EAX,[EDI + 0x33c]
00482c94  50                        PUSH EAX
00482c95  f30f1195b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM2
00482c9d  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
00482ca5  e836862400                CALL 0x006cb2e0
00482caa  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00482cb4  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00482cbc  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00482cc4  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00482cce  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00482cd6  e999020000                JMP 0x00482f74
00482cdb  83f803                    CMP EAX,0x3
00482cde  0f8590020000              JNZ 0x00482f74
00482ce4  6a00                      PUSH 0x0
00482ce6  8d4f48                    LEA ECX,[EDI + 0x48]
00482ce9  68d0d4b100                PUSH 0xb1d4d0
00482cee  e88d76f8ff                CALL 0x0040a380
00482cf3  33f6                      XOR ESI,ESI
00482cf5  c785a8feffff00000000      MOV dword ptr [EBP + 0xfffffea8],0x0
00482cff  39b7bc030000              CMP dword ptr [EDI + 0x3bc],ESI
00482d05  0f8444010000              JZ 0x00482e4f
00482d0b  8bcf                      MOV ECX,EDI
00482d0d  e85e4afcff                CALL 0x00447770
00482d12  8bcf                      MOV ECX,EDI
00482d14  8bb0c00b0000              MOV ESI,dword ptr [EAX + 0xbc0]
00482d1a  89b5a8feffff              MOV dword ptr [EBP + 0xfffffea8],ESI
00482d20  e84b4afcff                CALL 0x00447770
00482d25  8b4030                    MOV EAX,dword ptr [EAX + 0x30]
00482d28  8985a0feffff              MOV dword ptr [EBP + 0xfffffea0],EAX
00482d2e  85c0                      TEST EAX,EAX
00482d30  7547                      JNZ 0x00482d79
00482d32  a17816c700                MOV EAX,[0x00c71678]
00482d37  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00482d3d  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00482d43  83f85a                    CMP EAX,0x5a
00482d46  7e3a                      JLE 0x00482d82
00482d48  3d96000000                CMP EAX,0x96
00482d4d  7d20                      JGE 0x00482d6f
00482d4f  83c0a6                    ADD EAX,-0x5a
00482d52  f30f1015fca6ba00          MOVSS XMM2,dword ptr [0x00baa6fc]
00482d5a  660f6ec0                  MOVD XMM0,EAX
00482d5e  0f5bc0                    CVTDQ2PS XMM0,XMM0
00482d61  f30f5e0550a9ba00          DIVSS XMM0,dword ptr [0x00baa950]
00482d69  f30f5cd0                  SUBSS XMM2,XMM0
00482d6d  eb1b                      JMP 0x00482d8a
00482d6f  f30f101530a6ba00          MOVSS XMM2,dword ptr [0x00baa630]
00482d77  eb11                      JMP 0x00482d8a
00482d79  660f6ed6                  MOVD XMM2,ESI
00482d7d  0f5bd2                    CVTDQ2PS XMM2,XMM2
00482d80  eb08                      JMP 0x00482d8a
00482d82  f30f1015fca6ba00          MOVSS XMM2,dword ptr [0x00baa6fc]
00482d8a  a17816c700                MOV EAX,[0x00c71678]
00482d8f  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
00482d95  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00482d9b  803900                    CMP byte ptr [ECX],0x0
00482d9e  7505                      JNZ 0x00482da5
00482da0  83c8ff                    OR EAX,0xffffffff
00482da3  eb11                      JMP 0x00482db6
00482da5  a17816c700                MOV EAX,[0x00c71678]
00482daa  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00482db0  2b81f0110000              SUB EAX,dword ptr [ECX + 0x11f0]
00482db6  0f57c9                    XORPS XMM1,XMM1
00482db9  0f57c0                    XORPS XMM0,XMM0
00482dbc  f30f2a8fc00b0000          CVTSI2SS XMM1,dword ptr [EDI + 0xbc0]
00482dc4  f30f2ac0                  CVTSI2SS XMM0,EAX
00482dc8  f30f5eca                  DIVSS XMM1,XMM2
00482dcc  f30f58c0                  ADDSS XMM0,XMM0
00482dd0  f30f590d30abba00          MULSS XMM1,dword ptr [0x00baab30]
00482dd8  f30f58c8                  ADDSS XMM1,XMM0
00482ddc  f30f5c0d04a9ba00          SUBSS XMM1,dword ptr [0x00baa904]
00482de4  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
00482dec  0f28c1                    MOVAPS XMM0,XMM1
00482def  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
00482df7  e844a7f9ff                CALL 0x0041d540
00482dfc  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
00482e04  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
00482e0c  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00482e14  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00482e1c  e8ffa6f9ff                CALL 0x0041d520
00482e21  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
00482e29  f30f108db0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeb0]
00482e31  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
00482e39  8bb5a0feffff              MOV ESI,dword ptr [EBP + 0xfffffea0]
00482e3f  f30f118f3c030000          MOVSS dword ptr [EDI + 0x33c],XMM1
00482e47  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
00482e4f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00482e57  0f57c9                    XORPS XMM1,XMM1
00482e5a  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00482e62  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00482e6a  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00482e6f  0f2fc1                    COMISS XMM0,XMM1
00482e72  7655                      JBE 0x00482ec9
00482e74  8b07                      MOV EAX,dword ptr [EDI]
00482e76  8d4dc0                    LEA ECX,[EBP + -0x40]
00482e79  6a01                      PUSH 0x1
00482e7b  6a00                      PUSH 0x0
00482e7d  6a01                      PUSH 0x1
00482e7f  0f57c0                    XORPS XMM0,XMM0
00482e82  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
00482e89  6a0a                      PUSH 0xa
00482e8b  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00482e8f  51                        PUSH ECX
00482e90  0f2805c0baba00            MOVAPS XMM0,xmmword ptr [0x00babac0]
00482e97  8bcf                      MOV ECX,EDI
00482e99  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00482e9d  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00482ea4  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00482eab  ff503c                    CALL dword ptr [EAX + 0x3c]
00482eae  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00482eb1  89470c                    MOV dword ptr [EDI + 0xc],EAX
00482eb4  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
00482ebb  c7471800000000            MOV dword ptr [EDI + 0x18],0x0
00482ec2  c7471c00000000            MOV dword ptr [EDI + 0x1c],0x0
00482ec9  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00482ed0  7404                      JZ 0x00482ed6
00482ed2  85f6                      TEST ESI,ESI
00482ed4  7416                      JZ 0x00482eec
00482ed6  a17816c700                MOV EAX,[0x00c71678]
00482edb  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00482ee1  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00482ee7  83f85a                    CMP EAX,0x5a
00482eea  7f16                      JG 0x00482f02
00482eec  83bda8feffff03            CMP dword ptr [EBP + 0xfffffea8],0x3
00482ef3  7d04                      JGE 0x00482ef9
00482ef5  85f6                      TEST ESI,ESI
00482ef7  7409                      JZ 0x00482f02
00482ef9  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00482f00  7472                      JZ 0x00482f74
00482f02  6a00                      PUSH 0x0
00482f04  6854d7b100                PUSH 0xb1d754
00482f09  8d4f48                    LEA ECX,[EDI + 0x48]
00482f0c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00482f16  e86574f8ff                CALL 0x0040a380
00482f1b  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00482f23  8d8d68ffffff              LEA ECX,[EBP + 0xffffff68]
00482f29  0f28d8                    MOVAPS XMM3,XMM0
00482f2c  0f28d0                    MOVAPS XMM2,XMM0
00482f2f  0f28c8                    MOVAPS XMM1,XMM0
00482f32  e8492bfbff                CALL 0x00435a80
00482f37  8b17                      MOV EDX,dword ptr [EDI]
00482f39  8bcf                      MOV ECX,EDI
00482f3b  6a01                      PUSH 0x1
00482f3d  6a00                      PUSH 0x0
00482f3f  68ff000000                PUSH 0xff
00482f44  6aff                      PUSH -0x1
00482f46  50                        PUSH EAX
00482f47  ff523c                    CALL dword ptr [EDX + 0x3c]
00482f4a  51                        PUSH ECX
00482f4b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00482f52  6a00                      PUSH 0x0
00482f54  6a02                      PUSH 0x2
00482f56  51                        PUSH ECX
00482f57  c704240000803f            MOV dword ptr [ESP],0x3f800000
00482f5e  8bcf                      MOV ECX,EDI
00482f60  68e6030000                PUSH 0x3e6
00482f65  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00482f6f  e82c3c2500                CALL 0x006d6ba0
00482f74  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
00482f7b  0f840b010000              JZ 0x0048308c
00482f81  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00482f87  8db73c030000              LEA ESI,[EDI + 0x33c]
00482f8d  83ec0c                    SUB ESP,0xc
00482f90  8d859cfeffff              LEA EAX,[EBP + 0xfffffe9c]
00482f96  0f57db                    XORPS XMM3,XMM3
00482f99  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00482f9f  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00482fa7  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00482faf  c7042400000000            MOV dword ptr [ESP],0x0
00482fb6  56                        PUSH ESI
00482fb7  50                        PUSH EAX
00482fb8  e893ff3800                CALL 0x00812f50
00482fbd  f30f10859cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe9c]
00482fc5  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00482fc9  f30f108da0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea0]
00482fd1  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00482fd6  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00482fdd  f30f1185b8feffff          MOVSS dword ptr [EBP + 0xfffffeb8],XMM0
00482fe5  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
00482fed  9f                        LAHF
00482fee  f6c444                    TEST AH,0x44
00482ff1  7a11                      JP 0x00483004
00482ff3  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
00482ffa  9f                        LAHF
00482ffb  f6c444                    TEST AH,0x44
00482ffe  0f8b88000000              JNP 0x0048308c
00483004  8d8db8feffff              LEA ECX,[EBP + 0xfffffeb8]
0048300a  e8b1cf5800                CALL 0x00a0ffc0
0048300f  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
00483017  f30f10adbcfeffff          MOVSS XMM5,dword ptr [EBP + 0xfffffebc]
0048301f  0f28c3                    MOVAPS XMM0,XMM3
00483022  f30f59af64030000          MULSS XMM5,dword ptr [EDI + 0x364]
0048302a  f30f5985b8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffeb8]
00483032  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0048303a  f30f58e8                  ADDSS XMM5,XMM0
0048303e  0f572d70cbba00            XORPS XMM5,xmmword ptr [0x00bacb70]
00483045  f30f5f2d8ca0ba00          MAXSS XMM5,dword ptr [0x00baa08c]
0048304d  f30f5d2d54a4ba00          MINSS XMM5,dword ptr [0x00baa454]
00483055  0f28c5                    MOVAPS XMM0,XMM5
00483058  f30f59adbcfeffff          MULSS XMM5,dword ptr [EBP + 0xfffffebc]
00483060  f30f5985b8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffeb8]
00483068  f30f59ea                  MULSS XMM5,XMM2
0048306c  f30f59c2                  MULSS XMM0,XMM2
00483070  f30f58af64030000          ADDSS XMM5,dword ptr [EDI + 0x364]
00483078  f30f58c3                  ADDSS XMM0,XMM3
0048307c  f30f11af64030000          MOVSS dword ptr [EDI + 0x364],XMM5
00483084  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0048308c  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00483092  85c0                      TEST EAX,EAX
00483094  741c                      JZ 0x004830b2
00483096  80b87301000000            CMP byte ptr [EAX + 0x173],0x0
0048309d  7413                      JZ 0x004830b2
0048309f  8d8d28feffff              LEA ECX,[EBP + 0xfffffe28]
004830a5  e8c62bfbff                CALL 0x00435c70
004830aa  8b17                      MOV EDX,dword ptr [EDI]
004830ac  8bcf                      MOV ECX,EDI
004830ae  50                        PUSH EAX
004830af  ff5224                    CALL dword ptr [EDX + 0x24]
004830b2  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004830b5  64890d00000000            MOV dword ptr FS:[0x0],ECX
004830bc  59                        POP ECX
004830bd  5f                        POP EDI
004830be  5e                        POP ESI
004830bf  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004830c2  33cd                      XOR ECX,EBP
004830c4  e862c06600                CALL 0x00aef12b
004830c9  8be5                      MOV ESP,EBP
004830cb  5d                        POP EBP
004830cc  8be3                      MOV ESP,EBX
004830ce  5b                        POP EBX
004830cf  c3                        RET
