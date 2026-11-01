; J460 NPC AI 0x004b1ee0 AI_004b1ee0
; types=907
; identities=907.0.0,907.0.1
; entry=004b1ee0
004b1ee0  53                        PUSH EBX
004b1ee1  8bdc                      MOV EBX,ESP
004b1ee3  83ec08                    SUB ESP,0x8
004b1ee6  83e4f8                    AND ESP,0xfffffff8
004b1ee9  83c404                    ADD ESP,0x4
004b1eec  55                        PUSH EBP
004b1eed  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004b1ef0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004b1ef4  8bec                      MOV EBP,ESP
004b1ef6  6aff                      PUSH -0x1
004b1ef8  68b032af00                PUSH 0xaf32b0
004b1efd  64a100000000              MOV EAX,FS:[0x0]
004b1f03  50                        PUSH EAX
004b1f04  53                        PUSH EBX
004b1f05  81ecf8010000              SUB ESP,0x1f8
004b1f0b  a1b493bf00                MOV EAX,[0x00bf93b4]
004b1f10  33c5                      XOR EAX,EBP
004b1f12  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004b1f15  56                        PUSH ESI
004b1f16  57                        PUSH EDI
004b1f17  50                        PUSH EAX
004b1f18  8d45f4                    LEA EAX,[EBP + -0xc]
004b1f1b  64a300000000              MOV FS:[0x0],EAX
004b1f21  8bf9                      MOV EDI,ECX
004b1f23  89bd4cfeffff              MOV dword ptr [EBP + 0xfffffe4c],EDI
004b1f29  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004b1f31  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004b1f37  8bb200830100              MOV ESI,dword ptr [EDX + 0x18300]
004b1f3d  89b56cfeffff              MOV dword ptr [EBP + 0xfffffe6c],ESI
004b1f43  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004b1f4b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004b1f53  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004b1f5b  2bc8                      SUB ECX,EAX
004b1f5d  83bf740b000001            CMP dword ptr [EDI + 0xb74],0x1
004b1f64  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004b1f6a  898d64feffff              MOV dword ptr [EBP + 0xfffffe64],ECX
004b1f70  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004b1f78  0f8527010000              JNZ 0x004b20a5
004b1f7e  85c0                      TEST EAX,EAX
004b1f80  0f8499000000              JZ 0x004b201f
004b1f86  83f801                    CMP EAX,0x1
004b1f89  0f8490000000              JZ 0x004b201f
004b1f8f  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004b1f95  85c9                      TEST ECX,ECX
004b1f97  0f8482000000              JZ 0x004b201f
004b1f9d  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
004b1fa0  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
004b1fa3  757a                      JNZ 0x004b201f
004b1fa5  83b9640b000012            CMP dword ptr [ECX + 0xb64],0x12
004b1fac  7424                      JZ 0x004b1fd2
004b1fae  8b8110040000              MOV EAX,dword ptr [ECX + 0x410]
004b1fb4  898710040000              MOV dword ptr [EDI + 0x410],EAX
004b1fba  8a81c00b0000              MOV AL,byte ptr [ECX + 0xbc0]
004b1fc0  8887c00b0000              MOV byte ptr [EDI + 0xbc0],AL
004b1fc6  8b8180030000              MOV EAX,dword ptr [ECX + 0x380]
004b1fcc  898780030000              MOV dword ptr [EDI + 0x380],EAX
004b1fd2  837f3000                  CMP dword ptr [EDI + 0x30],0x0
004b1fd6  7547                      JNZ 0x004b201f
004b1fd8  83793001                  CMP dword ptr [ECX + 0x30],0x1
004b1fdc  7541                      JNZ 0x004b201f
004b1fde  6a00                      PUSH 0x0
004b1fe0  8d4f48                    LEA ECX,[EDI + 0x48]
004b1fe3  c7473001000000            MOV dword ptr [EDI + 0x30],0x1
004b1fea  68f4edb100                PUSH 0xb1edf4
004b1fef  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004b1ff9  e88283f5ff                CALL 0x0040a380
004b1ffe  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004b2004  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004b200a  83e1fb                    AND ECX,0xfffffffb
004b200d  81c900001000              OR ECX,0x100000
004b2013  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004b2019  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004b201f  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
004b2025  85c0                      TEST EAX,EAX
004b2027  0f887a150000              JS 0x004b35a7
004b202d  99                        CDQ
004b202e  f77e0c                    IDIV dword ptr [ESI + 0xc]
004b2031  33ff                      XOR EDI,EDI
004b2033  89956cfeffff              MOV dword ptr [EBP + 0xfffffe6c],EDX
004b2039  898564feffff              MOV dword ptr [EBP + 0xfffffe64],EAX
004b203f  90                        NOP
004b2040  8b8744eeb100              MOV EAX,dword ptr [EDI + 0xb1ee44]
004b2046  8b8f40eeb100              MOV ECX,dword ptr [EDI + 0xb1ee40]
004b204c  038564feffff              ADD EAX,dword ptr [EBP + 0xfffffe64]
004b2052  03ca                      ADD ECX,EDX
004b2054  7842                      JS 0x004b2098
004b2056  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
004b2059  3bca                      CMP ECX,EDX
004b205b  7d35                      JGE 0x004b2092
004b205d  85c0                      TEST EAX,EAX
004b205f  7831                      JS 0x004b2092
004b2061  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
004b2064  7d2c                      JGE 0x004b2092
004b2066  0fafc2                    IMUL EAX,EDX
004b2069  03c1                      ADD EAX,ECX
004b206b  3dbf010000                CMP EAX,0x1bf
004b2070  7720                      JA 0x004b2092
004b2072  81bc866c070000b6030000    CMP dword ptr [ESI + EAX*0x4 + 0x76c],0x3b6
004b207d  8b956cfeffff              MOV EDX,dword ptr [EBP + 0xfffffe6c]
004b2083  7f13                      JG 0x004b2098
004b2085  c784866c0700009f0f0000    MOV dword ptr [ESI + EAX*0x4 + 0x76c],0xf9f
004b2090  eb06                      JMP 0x004b2098
004b2092  8b956cfeffff              MOV EDX,dword ptr [EBP + 0xfffffe6c]
004b2098  83c708                    ADD EDI,0x8
004b209b  83ff30                    CMP EDI,0x30
004b209e  72a0                      JC 0x004b2040
004b20a0  e902150000                JMP 0x004b35a7
004b20a5  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
004b20ad  f30f119d48feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM3
004b20b5  83f810                    CMP EAX,0x10
004b20b8  0f87a7050000              JA 0x004b2665
004b20be  ff2485c8354b00            JMP dword ptr [EAX*0x4 + 0x4b35c8]
004b20c5  6a08                      PUSH 0x8
004b20c7  c78564feffff6666e63e      MOV dword ptr [EBP + 0xfffffe64],0x3ee66666
004b20d1  ffb564feffff              PUSH dword ptr [EBP + 0xfffffe64]
004b20d7  c78560feffff0000803f      MOV dword ptr [EBP + 0xfffffe60],0x3f800000
004b20e1  ffb560feffff              PUSH dword ptr [EBP + 0xfffffe60]
004b20e7  51                        PUSH ECX
004b20e8  8bcf                      MOV ECX,EDI
004b20ea  c7042400005042            MOV dword ptr [ESP],0x42500000
004b20f1  e8aaa11f00                CALL 0x006ac2a0
004b20f6  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004b20fc  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004b2102  898734030000              MOV dword ptr [EDI + 0x334],EAX
004b2108  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
004b210b  898738030000              MOV dword ptr [EDI + 0x338],EAX
004b2111  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004b2117  838f6801000011            OR dword ptr [EDI + 0x168],0x11
004b211e  51                        PUSH ECX
004b211f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004b2129  8bce                      MOV ECX,ESI
004b212b  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004b2132  c787180f000001000000      MOV dword ptr [EDI + 0xf18],0x1
004b213c  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004b2142  c687c00b000001            MOV byte ptr [EDI + 0xbc0],0x1
004b2149  e8420b3600                CALL 0x00812c90
004b214e  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
004b2154  33c0                      XOR EAX,EAX
004b2156  c7876c0b000000000000      MOV dword ptr [EDI + 0xb6c],0x0
004b2160  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
004b216a  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004b2174  c687c10b000000            MOV byte ptr [EDI + 0xbc1],0x0
004b217b  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004b2181  837f3001                  CMP dword ptr [EDI + 0x30],0x1
004b2185  7539                      JNZ 0x004b21c0
004b2187  50                        PUSH EAX
004b2188  8d4f48                    LEA ECX,[EDI + 0x48]
004b218b  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004b2195  68f4edb100                PUSH 0xb1edf4
004b219a  e8e181f5ff                CALL 0x0040a380
004b219f  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004b21a5  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004b21ab  83e1fb                    AND ECX,0xfffffffb
004b21ae  81c900001000              OR ECX,0x100000
004b21b4  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004b21ba  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004b21c0  6aff                      PUSH -0x1
004b21c2  ff7728                    PUSH dword ptr [EDI + 0x28]
004b21c5  8d8530feffff              LEA EAX,[EBP + 0xfffffe30]
004b21cb  8bcf                      MOV ECX,EDI
004b21cd  50                        PUSH EAX
004b21ce  e88dea2100                CALL 0x006d0c60
004b21d3  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004b21da  33c0                      XOR EAX,EAX
004b21dc  8b8d3cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe3c]
004b21e2  8bb534feffff              MOV ESI,dword ptr [EBP + 0xfffffe34]
004b21e8  85c9                      TEST ECX,ECX
004b21ea  0f849c000000              JZ 0x004b228c
004b21f0  393c86                    CMP dword ptr [ESI + EAX*0x4],EDI
004b21f3  750a                      JNZ 0x004b21ff
004b21f5  40                        INC EAX
004b21f6  3bc1                      CMP EAX,ECX
004b21f8  72f6                      JC 0x004b21f0
004b21fa  e98d000000                JMP 0x004b228c
004b21ff  8b3486                    MOV ESI,dword ptr [ESI + EAX*0x4]
004b2202  8b86c0030000              MOV EAX,dword ptr [ESI + 0x3c0]
004b2208  85c0                      TEST EAX,EAX
004b220a  7410                      JZ 0x004b221c
004b220c  0f1f4000                  NOP dword ptr [EAX]
004b2210  8bf0                      MOV ESI,EAX
004b2212  8b86c0030000              MOV EAX,dword ptr [ESI + 0x3c0]
004b2218  85c0                      TEST EAX,EAX
004b221a  75f4                      JNZ 0x004b2210
004b221c  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004b2222  8d87bc030000              LEA EAX,[EDI + 0x3bc]
004b2228  85c9                      TEST ECX,ECX
004b222a  741e                      JZ 0x004b224a
004b222c  898564feffff              MOV dword ptr [EBP + 0xfffffe64],EAX
004b2232  81c1cc030000              ADD ECX,0x3cc
004b2238  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
004b223e  50                        PUSH EAX
004b223f  e8cccf0100                CALL 0x004cf210
004b2244  8d87bc030000              LEA EAX,[EDI + 0x3bc]
004b224a  50                        PUSH EAX
004b224b  8bce                      MOV ECX,ESI
004b224d  8930                      MOV dword ptr [EAX],ESI
004b224f  e89cba0100                CALL 0x004cdcf0
004b2254  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
004b225a  81c6c0030000              ADD ESI,0x3c0
004b2260  85c9                      TEST ECX,ECX
004b2262  7418                      JZ 0x004b227c
004b2264  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
004b226a  89b564feffff              MOV dword ptr [EBP + 0xfffffe64],ESI
004b2270  81c1cc030000              ADD ECX,0x3cc
004b2276  50                        PUSH EAX
004b2277  e894cf0100                CALL 0x004cf210
004b227c  56                        PUSH ESI
004b227d  8bcf                      MOV ECX,EDI
004b227f  893e                      MOV dword ptr [ESI],EDI
004b2281  e86aba0100                CALL 0x004cdcf0
004b2286  8bb534feffff              MOV ESI,dword ptr [EBP + 0xfffffe34]
004b228c  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004b2293  741f                      JZ 0x004b22b4
004b2295  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004b229b  8bcf                      MOV ECX,EDI
004b229d  818f6801000000001080      OR dword ptr [EDI + 0x168],0x80100000
004b22a7  6a00                      PUSH 0x0
004b22a9  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004b22af  e86c3ff8ff                CALL 0x00436220
004b22b4  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004b22bb  80bd30feffff00            CMP byte ptr [EBP + 0xfffffe30],0x0
004b22c2  751e                      JNZ 0x004b22e2
004b22c4  6a00                      PUSH 0x0
004b22c6  6a00                      PUSH 0x0
004b22c8  8bd6                      MOV EDX,ESI
004b22ca  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004b22d1  b101                      MOV CL,0x1
004b22d3  e8d8255b00                CALL 0x00a648b0
004b22d8  83c408                    ADD ESP,0x8
004b22db  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004b22e2  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004b22e9  0f8576030000              JNZ 0x004b2665
004b22ef  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
004b22f7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004b22fd  0f28c1                    MOVAPS XMM0,XMM1
004b2300  f30f5c8780030000          SUBSS XMM0,dword ptr [EDI + 0x380]
004b2308  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
004b2310  f30f2cc0                  CVTTSS2SI EAX,XMM0
004b2314  668981bc2e0200            MOV word ptr [ECX + 0x22ebc],AX
004b231b  f30f2cc1                  CVTTSS2SI EAX,XMM1
004b231f  668981be2e0200            MOV word ptr [ECX + 0x22ebe],AX
004b2326  e93a030000                JMP 0x004b2665
004b232b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004b232f  8d4f48                    LEA ECX,[EDI + 0x48]
004b2332  7409                      JZ 0x004b233d
004b2334  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004b233b  750c                      JNZ 0x004b2349
004b233d  6a00                      PUSH 0x0
004b233f  6854bcb100                PUSH 0xb1bc54
004b2344  e83780f5ff                CALL 0x0040a380
004b2349  8b876c0b0000              MOV EAX,dword ptr [EDI + 0xb6c]
004b234f  40                        INC EAX
004b2350  89876c0b0000              MOV dword ptr [EDI + 0xb6c],EAX
004b2356  83f81e                    CMP EAX,0x1e
004b2359  7e4b                      JLE 0x004b23a6
004b235b  80bfc00b000000            CMP byte ptr [EDI + 0xbc0],0x0
004b2362  7442                      JZ 0x004b23a6
004b2364  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004b236b  7539                      JNZ 0x004b23a6
004b236d  e8eecb2300                CALL 0x006eef60
004b2372  a807                      TEST AL,0x7
004b2374  0f85eb020000              JNZ 0x004b2665
004b237a  51                        PUSH ECX
004b237b  c704246666663f            MOV dword ptr [ESP],0x3f666666
004b2382  6a00                      PUSH 0x0
004b2384  6a02                      PUSH 0x2
004b2386  51                        PUSH ECX
004b2387  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b238e  8bcf                      MOV ECX,EDI
004b2390  6a7a                      PUSH 0x7a
004b2392  e809482200                CALL 0x006d6ba0
004b2397  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004b23a1  e9bf020000                JMP 0x004b2665
004b23a6  83f85a                    CMP EAX,0x5a
004b23a9  0f8eb6020000              JLE 0x004b2665
004b23af  e8accb2300                CALL 0x006eef60
004b23b4  33d2                      XOR EDX,EDX
004b23b6  b90f000000                MOV ECX,0xf
004b23bb  f7f1                      DIV ECX
004b23bd  85d2                      TEST EDX,EDX
004b23bf  0f85a0020000              JNZ 0x004b2665
004b23c5  8bcf                      MOV ECX,EDI
004b23c7  e844eeffff                CALL 0x004b1210
004b23cc  e994020000                JMP 0x004b2665
004b23d1  8d4f48                    LEA ECX,[EDI + 0x48]
004b23d4  68dcd2b100                PUSH 0xb1d2dc
004b23d9  e8528cf5ff                CALL 0x0040b030
004b23de  84c0                      TEST AL,AL
004b23e0  0f845c020000              JZ 0x004b2642
004b23e6  51                        PUSH ECX
004b23e7  c704246666663f            MOV dword ptr [ESP],0x3f666666
004b23ee  6a00                      PUSH 0x0
004b23f0  6a02                      PUSH 0x2
004b23f2  51                        PUSH ECX
004b23f3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b23fa  8bcf                      MOV ECX,EDI
004b23fc  6a6c                      PUSH 0x6c
004b23fe  e89d472200                CALL 0x006d6ba0
004b2403  8bcf                      MOV ECX,EDI
004b2405  e836c42000                CALL 0x006be840
004b240a  8d8d60feffff              LEA ECX,[EBP + 0xfffffe60]
004b2410  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004b2418  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004b2420  8d8538feffff              LEA EAX,[EBP + 0xfffffe38]
004b2426  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004b242e  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004b2436  50                        PUSH EAX
004b2437  f30f118560feffff          MOVSS dword ptr [EBP + 0xfffffe60],XMM0
004b243f  f30f118d64feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM1
004b2447  e8e4db5500                CALL 0x00a10030
004b244c  befeffffff                MOV ESI,0xfffffffe
004b2451  89b558feffff              MOV dword ptr [EBP + 0xfffffe58],ESI
004b2457  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004b245b  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004b2463  f30f118d68feffff          MOVSS dword ptr [EBP + 0xfffffe68],XMM1
004b246b  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
004b2470  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004b2478  f30f118d5cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM1
004b2480  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
004b2486  e8a5caf8ff                CALL 0x0043ef30
004b248b  85f6                      TEST ESI,ESI
004b248d  0f8502010000              JNZ 0x004b2595
004b2493  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004b249a  8bc6                      MOV EAX,ESI
004b249c  89856cffffff              MOV dword ptr [EBP + 0xffffff6c],EAX
004b24a2  0f57c9                    XORPS XMM1,XMM1
004b24a5  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004b24ab  89b570ffffff              MOV dword ptr [EBP + 0xffffff70],ESI
004b24b1  50                        PUSH EAX
004b24b2  51                        PUSH ECX
004b24b3  0f118544ffffff            MOVUPS xmmword ptr [EBP + 0xffffff44],XMM0
004b24ba  8bcf                      MOV ECX,EDI
004b24bc  893424                    MOV dword ptr [ESP],ESI
004b24bf  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
004b24c7  6840b6c700                PUSH 0xc7b640
004b24cc  0f14c1                    UNPCKLPS XMM0,XMM1
004b24cf  6a01                      PUSH 0x1
004b24d1  c78574ffffff60000000      MOV dword ptr [EBP + 0xffffff74],0x60
004b24db  c7853cffffffd7a3703f      MOV dword ptr [EBP + 0xffffff3c],0x3f70a3d7
004b24e5  89b524feffff              MOV dword ptr [EBP + 0xfffffe24],ESI
004b24eb  0f118d54ffffff            MOVUPS xmmword ptr [EBP + 0xffffff54],XMM1
004b24f2  660fd68564ffffff          MOVQ qword ptr [EBP + 0xffffff64],XMM0
004b24fa  e8d1a82100                CALL 0x006ccdd0
004b24ff  0f57c0                    XORPS XMM0,XMM0
004b2502  8bf0                      MOV ESI,EAX
004b2504  e837b0f6ff                CALL 0x0041d540
004b2509  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
004b2511  0f57c0                    XORPS XMM0,XMM0
004b2514  e807b0f6ff                CALL 0x0041d520
004b2519  0f28d8                    MOVAPS XMM3,XMM0
004b251c  c786100400000000b8c1      MOV dword ptr [ESI + 0x410],0xc1b80000
004b2526  f30f108564feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe64]
004b252e  0f28cb                    MOVAPS XMM1,XMM3
004b2531  f30f598d5cfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffe5c]
004b2539  0f28d0                    MOVAPS XMM2,XMM0
004b253c  c7861804000000000000      MOV dword ptr [ESI + 0x418],0x0
004b2546  f30f599568feffff          MULSS XMM2,dword ptr [EBP + 0xfffffe68]
004b254e  c7861404000000000000      MOV dword ptr [ESI + 0x414],0x0
004b2558  f30f599d68feffff          MULSS XMM3,dword ptr [EBP + 0xfffffe68]
004b2560  c7862004000000000040      MOV dword ptr [ESI + 0x420],0x40000000
004b256a  f30f59855cfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffe5c]
004b2572  f30f5cd1                  SUBSS XMM2,XMM1
004b2576  f30f58d8                  ADDSS XMM3,XMM0
004b257a  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
004b2582  f30f119e64030000          MOVSS dword ptr [ESI + 0x364],XMM3
004b258a  8bb558feffff              MOV ESI,dword ptr [EBP + 0xfffffe58]
004b2590  e99d000000                JMP 0x004b2632
004b2595  660f6ec6                  MOVD XMM0,ESI
004b2599  0f5bc0                    CVTDQ2PS XMM0,XMM0
004b259c  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004b25a4  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004b25ac  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
004b25b4  e887aff6ff                CALL 0x0041d540
004b25b9  f30f118554feffff          MOVSS dword ptr [EBP + 0xfffffe54],XMM0
004b25c1  f30f108564feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe64]
004b25c9  e852aff6ff                CALL 0x0041d520
004b25ce  f30f109d54feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe54]
004b25d6  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004b25dc  0f28d3                    MOVAPS XMM2,XMM3
004b25df  0f28c8                    MOVAPS XMM1,XMM0
004b25e2  f30f599568feffff          MULSS XMM2,dword ptr [EBP + 0xfffffe68]
004b25ea  8bcf                      MOV ECX,EDI
004b25ec  50                        PUSH EAX
004b25ed  f30f598d5cfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffe5c]
004b25f5  8d8540feffff              LEA EAX,[EBP + 0xfffffe40]
004b25fb  6a00                      PUSH 0x0
004b25fd  f30f599d5cfeffff          MULSS XMM3,dword ptr [EBP + 0xfffffe5c]
004b2605  50                        PUSH EAX
004b2606  f30f598568feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe68]
004b260e  f30f5cd1                  SUBSS XMM2,XMM1
004b2612  8d873c030000              LEA EAX,[EDI + 0x33c]
004b2618  50                        PUSH EAX
004b2619  f30f58d8                  ADDSS XMM3,XMM0
004b261d  f30f119540feffff          MOVSS dword ptr [EBP + 0xfffffe40],XMM2
004b2625  f30f119d44feffff          MOVSS dword ptr [EBP + 0xfffffe44],XMM3
004b262d  e8ae8c2100                CALL 0x006cb2e0
004b2632  46                        INC ESI
004b2633  89b558feffff              MOV dword ptr [EBP + 0xfffffe58],ESI
004b2639  83fe02                    CMP ESI,0x2
004b263c  0f8e3efeffff              JLE 0x004b2480
004b2642  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004b2646  7409                      JZ 0x004b2651
004b2648  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004b264f  7514                      JNZ 0x004b2665
004b2651  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004b265b  c7876c0b000000000000      MOV dword ptr [EDI + 0xb6c],0x0
004b2665  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
004b266b  85c0                      TEST EAX,EAX
004b266d  0f85480c0000              JNZ 0x004b32bb
004b2673  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004b267b  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
004b2682  8bb56cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe6c]
004b2688  0f82f70c0000              JC 0x004b3385
004b268e  3887c00b0000              CMP byte ptr [EDI + 0xbc0],AL
004b2694  0f85eb0c0000              JNZ 0x004b3385
004b269a  8b86c0120000              MOV EAX,dword ptr [ESI + 0x12c0]
004b26a0  33c9                      XOR ECX,ECX
004b26a2  0386c4120000              ADD EAX,dword ptr [ESI + 0x12c4]
004b26a8  85c0                      TEST EAX,EAX
004b26aa  0f4fc8                    CMOVG ECX,EAX
004b26ad  49                        DEC ECX
004b26ae  85c9                      TEST ECX,ECX
004b26b0  0f8fcf0c0000              JG 0x004b3385
004b26b6  f30f5c0554a4ba00          SUBSS XMM0,dword ptr [0x00baa454]
004b26be  0f57c9                    XORPS XMM1,XMM1
004b26c1  c687c00b000001            MOV byte ptr [EDI + 0xbc0],0x1
004b26c8  0f2fc8                    COMISS XMM1,XMM0
004b26cb  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
004b26d3  0f82ac0c0000              JC 0x004b3385
004b26d9  83bf640b000007            CMP dword ptr [EDI + 0xb64],0x7
004b26e0  753e                      JNZ 0x004b2720
004b26e2  33d2                      XOR EDX,EDX
004b26e4  399664120000              CMP dword ptr [ESI + 0x1264],EDX
004b26ea  7634                      JBE 0x004b2720
004b26ec  0f1f4000                  NOP dword ptr [EAX]
004b26f0  8b865c120000              MOV EAX,dword ptr [ESI + 0x125c]
004b26f6  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
004b26f9  83792809                  CMP dword ptr [ECX + 0x28],0x9
004b26fd  7518                      JNZ 0x004b2717
004b26ff  83792c09                  CMP dword ptr [ECX + 0x2c],0x9
004b2703  7512                      JNZ 0x004b2717
004b2705  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
004b2708  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
004b270b  750a                      JNZ 0x004b2717
004b270d  c78118040000cdcc4c3e      MOV dword ptr [ECX + 0x418],0x3e4ccccd
004b2717  42                        INC EDX
004b2718  3b9664120000              CMP EDX,dword ptr [ESI + 0x1264]
004b271e  72d0                      JC 0x004b26f0
004b2720  8b07                      MOV EAX,dword ptr [EDI]
004b2722  51                        PUSH ECX
004b2723  8bcf                      MOV ECX,EDI
004b2725  c7042400000000            MOV dword ptr [ESP],0x0
004b272c  ff5040                    CALL dword ptr [EAX + 0x40]
004b272f  57                        PUSH EDI
004b2730  8bce                      MOV ECX,ESI
004b2732  c787800300000000003f      MOV dword ptr [EDI + 0x380],0x3f000000
004b273c  e8bfc43400                CALL 0x007fec00
004b2741  6a00                      PUSH 0x0
004b2743  8d4f48                    LEA ECX,[EDI + 0x48]
004b2746  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004b2750  681ceeb100                PUSH 0xb1ee1c
004b2755  e8267cf5ff                CALL 0x0040a380
004b275a  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
004b2761  c7473001000000            MOV dword ptr [EDI + 0x30],0x1
004b2768  e9180c0000                JMP 0x004b3385
004b276d  8d4f48                    LEA ECX,[EDI + 0x48]
004b2770  68dcd2b100                PUSH 0xb1d2dc
004b2775  e8b688f5ff                CALL 0x0040b030
004b277a  84c0                      TEST AL,AL
004b277c  0f84e3feffff              JZ 0x004b2665
004b2782  51                        PUSH ECX
004b2783  c704246666663f            MOV dword ptr [ESP],0x3f666666
004b278a  6a00                      PUSH 0x0
004b278c  6a02                      PUSH 0x2
004b278e  51                        PUSH ECX
004b278f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b2796  8bcf                      MOV ECX,EDI
004b2798  6831010000                PUSH 0x131
004b279d  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004b27a7  e8f4432200                CALL 0x006d6ba0
004b27ac  51                        PUSH ECX
004b27ad  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b27b4  6a00                      PUSH 0x0
004b27b6  6a02                      PUSH 0x2
004b27b8  51                        PUSH ECX
004b27b9  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
004b27c0  8bcf                      MOV ECX,EDI
004b27c2  68e3010000                PUSH 0x1e3
004b27c7  e8d4432200                CALL 0x006d6ba0
004b27cc  c787a00b000032000000      MOV dword ptr [EDI + 0xba0],0x32
004b27d6  e98afeffff                JMP 0x004b2665
004b27db  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004b27df  7409                      JZ 0x004b27ea
004b27e1  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004b27e8  750f                      JNZ 0x004b27f9
004b27ea  6a00                      PUSH 0x0
004b27ec  6828eeb100                PUSH 0xb1ee28
004b27f1  8d4f48                    LEA ECX,[EDI + 0x48]
004b27f4  e8877bf5ff                CALL 0x0040a380
004b27f9  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
004b27ff  e82cc7f8ff                CALL 0x0043ef30
004b2804  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004b280b  8d45c0                    LEA EAX,[EBP + -0x40]
004b280e  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004b2812  c745e00000803f            MOV dword ptr [EBP + -0x20],0x3f800000
004b2819  8d8d9cfeffff              LEA ECX,[EBP + 0xfffffe9c]
004b281f  0f57c0                    XORPS XMM0,XMM0
004b2822  c745e49a99993e            MOV dword ptr [EBP + -0x1c],0x3e99999a
004b2829  50                        PUSH EAX
004b282a  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004b282e  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004b2835  e8b649f5ff                CALL 0x004071f0
004b283a  8d8570feffff              LEA EAX,[EBP + 0xfffffe70]
004b2840  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
004b284a  50                        PUSH EAX
004b284b  51                        PUSH ECX
004b284c  c7042400000000            MOV dword ptr [ESP],0x0
004b2853  8bcf                      MOV ECX,EDI
004b2855  6840b6c700                PUSH 0xc7b640
004b285a  6a01                      PUSH 0x1
004b285c  c785ccfeffff80000000      MOV dword ptr [EBP + 0xfffffecc],0x80
004b2866  e865a52100                CALL 0x006ccdd0
004b286b  8bf0                      MOV ESI,EAX
004b286d  8d8550feffff              LEA EAX,[EBP + 0xfffffe50]
004b2873  50                        PUSH EAX
004b2874  e8f7c71c00                CALL 0x0067f070
004b2879  83c404                    ADD ESP,0x4
004b287c  e8dfc62300                CALL 0x006eef60
004b2881  660f6ec0                  MOVD XMM0,EAX
004b2885  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004b2889  c1e81f                    SHR EAX,0x1f
004b288c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004b2895  660f5ac0                  CVTPD2PS XMM0,XMM0
004b2899  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004b28a1  f30f118564feffff          MOVSS dword ptr [EBP + 0xfffffe64],XMM0
004b28a9  e8b2c62300                CALL 0x006eef60
004b28ae  f30f108d50feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe50]
004b28b6  f30f109564feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe64]
004b28be  f30f59155ca7ba00          MULSS XMM2,dword ptr [0x00baa75c]
004b28c6  660f6ec0                  MOVD XMM0,EAX
004b28ca  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004b28ce  c1e81f                    SHR EAX,0x1f
004b28d1  f30f58155ca8ba00          ADDSS XMM2,dword ptr [0x00baa85c]
004b28d9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004b28e2  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
004b28ea  660f5ac0                  CVTPD2PS XMM0,XMM0
004b28ee  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004b28f6  f30f59c1                  MULSS XMM0,XMM1
004b28fa  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
004b2902  f30f58c0                  ADDSS XMM0,XMM0
004b2906  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
004b290e  f30f108554feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe54]
004b2916  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004b291e  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004b2926  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004b292e  f30f118e3c030000          MOVSS dword ptr [ESI + 0x33c],XMM1
004b2936  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
004b293e  e81dc62300                CALL 0x006eef60
004b2943  c7861804000000000040      MOV dword ptr [ESI + 0x418],0x40000000
004b294d  660f6ec0                  MOVD XMM0,EAX
004b2951  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004b2955  c1e81f                    SHR EAX,0x1f
004b2958  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004b2961  660f5ac0                  CVTPD2PS XMM0,XMM0
004b2965  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004b296d  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
004b2975  f30f118620040000          MOVSS dword ptr [ESI + 0x420],XMM0
004b297d  e8dec52300                CALL 0x006eef60
004b2982  660f6ec0                  MOVD XMM0,EAX
004b2986  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004b298a  c1e81f                    SHR EAX,0x1f
004b298d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004b2996  660f5ac0                  CVTPD2PS XMM0,XMM0
004b299a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004b29a2  f30f590534a9ba00          MULSS XMM0,dword ptr [0x00baa934]
004b29aa  f30f5c051ca9ba00          SUBSS XMM0,dword ptr [0x00baa91c]
004b29b2  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
004b29ba  ff8fa00b0000              DEC dword ptr [EDI + 0xba0]
004b29c0  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004b29c7  0f8f98fcffff              JG 0x004b2665
004b29cd  6a00                      PUSH 0x0
004b29cf  6848d9b100                PUSH 0xb1d948
004b29d4  8d4f48                    LEA ECX,[EDI + 0x48]
004b29d7  e8a479f5ff                CALL 0x0040a380
004b29dc  e970fcffff                JMP 0x004b2651
004b29e1  68d4d2b100                PUSH 0xb1d2d4
004b29e6  8d4f48                    LEA ECX,[EDI + 0x48]
004b29e9  e84286f5ff                CALL 0x0040b030
004b29ee  84c0                      TEST AL,AL
004b29f0  7420                      JZ 0x004b2a12
004b29f2  51                        PUSH ECX
004b29f3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b29fa  6a00                      PUSH 0x0
004b29fc  6a02                      PUSH 0x2
004b29fe  51                        PUSH ECX
004b29ff  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b2a06  8bcf                      MOV ECX,EDI
004b2a08  68cd000000                PUSH 0xcd
004b2a0d  e88e412200                CALL 0x006d6ba0
004b2a12  68dcd2b100                PUSH 0xb1d2dc
004b2a17  8d4f48                    LEA ECX,[EDI + 0x48]
004b2a1a  e81186f5ff                CALL 0x0040b030
004b2a1f  84c0                      TEST AL,AL
004b2a21  0f841bfcffff              JZ 0x004b2642
004b2a27  51                        PUSH ECX
004b2a28  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b2a2f  6a00                      PUSH 0x0
004b2a31  6a02                      PUSH 0x2
004b2a33  51                        PUSH ECX
004b2a34  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b2a3b  8bcf                      MOV ECX,EDI
004b2a3d  6a34                      PUSH 0x34
004b2a3f  e85c412200                CALL 0x006d6ba0
004b2a44  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
004b2a4a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004b2a50  8d873c030000              LEA EAX,[EDI + 0x33c]
004b2a56  6a00                      PUSH 0x0
004b2a58  57                        PUSH EDI
004b2a59  6840b6c700                PUSH 0xc7b640
004b2a5e  50                        PUSH EAX
004b2a5f  6896000000                PUSH 0x96
004b2a64  68e8030000                PUSH 0x3e8
004b2a69  e8b260f7ff                CALL 0x00428b20
004b2a6e  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
004b2a74  898554feffff              MOV dword ptr [EBP + 0xfffffe54],EAX
004b2a7a  8db0bc030000              LEA ESI,[EAX + 0x3bc]
004b2a80  85c9                      TEST ECX,ECX
004b2a82  7418                      JZ 0x004b2a9c
004b2a84  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
004b2a8a  89b564feffff              MOV dword ptr [EBP + 0xfffffe64],ESI
004b2a90  50                        PUSH EAX
004b2a91  81c1cc030000              ADD ECX,0x3cc
004b2a97  e874c70100                CALL 0x004cf210
004b2a9c  56                        PUSH ESI
004b2a9d  8bcf                      MOV ECX,EDI
004b2a9f  893e                      MOV dword ptr [ESI],EDI
004b2aa1  e84ab20100                CALL 0x004cdcf0
004b2aa6  8b8554feffff              MOV EAX,dword ptr [EBP + 0xfffffe54]
004b2aac  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004b2ab2  6a0e                      PUSH 0xe
004b2ab4  c780740400000000b442      MOV dword ptr [EAX + 0x474],0x42b40000
004b2abe  e8ad0b2500                CALL 0x00703670
004b2ac3  e97afbffff                JMP 0x004b2642
004b2ac8  8d4f48                    LEA ECX,[EDI + 0x48]
004b2acb  68dcd2b100                PUSH 0xb1d2dc
004b2ad0  e85b85f5ff                CALL 0x0040b030
004b2ad5  84c0                      TEST AL,AL
004b2ad7  0f8488fbffff              JZ 0x004b2665
004b2add  51                        PUSH ECX
004b2ade  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b2ae5  6a00                      PUSH 0x0
004b2ae7  6a02                      PUSH 0x2
004b2ae9  51                        PUSH ECX
004b2aea  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b2af1  8bcf                      MOV ECX,EDI
004b2af3  6830010000                PUSH 0x130
004b2af8  e8a3402200                CALL 0x006d6ba0
004b2afd  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
004b2b07  c787a00b000073000000      MOV dword ptr [EDI + 0xba0],0x73
004b2b11  e94ffbffff                JMP 0x004b2665
004b2b16  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004b2b1a  7409                      JZ 0x004b2b25
004b2b1c  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004b2b23  752c                      JNZ 0x004b2b51
004b2b25  6a00                      PUSH 0x0
004b2b27  6834eeb100                PUSH 0xb1ee34
004b2b2c  8d4f48                    LEA ECX,[EDI + 0x48]
004b2b2f  e84c78f5ff                CALL 0x0040a380
004b2b34  8b07                      MOV EAX,dword ptr [EDI]
004b2b36  51                        PUSH ECX
004b2b37  8bcf                      MOV ECX,EDI
004b2b39  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b2b40  ff5040                    CALL dword ptr [EAX + 0x40]
004b2b43  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
004b2b4b  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004b2b51  33c9                      XOR ECX,ECX
004b2b53  898d54feffff              MOV dword ptr [EBP + 0xfffffe54],ECX
004b2b59  398e64120000              CMP dword ptr [ESI + 0x1264],ECX
004b2b5f  0f86a9000000              JBE 0x004b2c0e
004b2b65  eb11                      JMP 0x004b2b78
004b2b70  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
004b2b78  8b865c120000              MOV EAX,dword ptr [ESI + 0x125c]
004b2b7e  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004b2b81  898d68feffff              MOV dword ptr [EBP + 0xfffffe68],ECX
004b2b87  3bcf                      CMP ECX,EDI
004b2b89  7464                      JZ 0x004b2bef
004b2b8b  83ba1466020002            CMP dword ptr [EDX + 0x26614],0x2
004b2b92  7c10                      JL 0x004b2ba4
004b2b94  83792801                  CMP dword ptr [ECX + 0x28],0x1
004b2b98  750a                      JNZ 0x004b2ba4
004b2b9a  be01000000                MOV ESI,0x1
004b2b9f  e973030000                JMP 0x004b2f17
004b2ba4  8b7128                    MOV ESI,dword ptr [ECX + 0x28]
004b2ba7  8d46f6                    LEA EAX,[ESI + -0xa]
004b2baa  3ddd030000                CMP EAX,0x3dd
004b2baf  0f876b030000              JA 0x004b2f20
004b2bb5  83fe21                    CMP ESI,0x21
004b2bb8  0f8462030000              JZ 0x004b2f20
004b2bbe  83fe11                    CMP ESI,0x11
004b2bc1  0f8459030000              JZ 0x004b2f20
004b2bc7  81fe24010000              CMP ESI,0x124
004b2bcd  0f844d030000              JZ 0x004b2f20
004b2bd3  81fe75030000              CMP ESI,0x375
004b2bd9  0f8520030000              JNZ 0x004b2eff
004b2bdf  83792c0a                  CMP dword ptr [ECX + 0x2c],0xa
004b2be3  0f852e030000              JNZ 0x004b2f17
004b2be9  8bb56cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe6c]
004b2bef  8b8d54feffff              MOV ECX,dword ptr [EBP + 0xfffffe54]
004b2bf5  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004b2bfb  41                        INC ECX
004b2bfc  898d54feffff              MOV dword ptr [EBP + 0xfffffe54],ECX
004b2c02  3b8e64120000              CMP ECX,dword ptr [ESI + 0x1264]
004b2c08  0f8262ffffff              JC 0x004b2b70
004b2c0e  83bd64feffff00            CMP dword ptr [EBP + 0xfffffe64],0x0
004b2c15  c78554feffff00000000      MOV dword ptr [EBP + 0xfffffe54],0x0
004b2c1f  0f8e40faffff              JLE 0x004b2665
004b2c25  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
004b2c2b  c78544feffff06000000      MOV dword ptr [EBP + 0xfffffe44],0x6
004b2c35  c7855cfeffff03000000      MOV dword ptr [EBP + 0xfffffe5c],0x3
004b2c3f  90                        NOP
004b2c40  8bc1                      MOV EAX,ECX
004b2c42  898568feffff              MOV dword ptr [EBP + 0xfffffe68],EAX
004b2c48  83f92d                    CMP ECX,0x2d
004b2c4b  0f8e4d020000              JLE 0x004b2e9e
004b2c51  898568feffff              MOV dword ptr [EBP + 0xfffffe68],EAX
004b2c57  83f955                    CMP ECX,0x55
004b2c5a  0f8f3e020000              JG 0x004b2e9e
004b2c60  99                        CDQ
004b2c61  f7bd44feffff              IDIV dword ptr [EBP + 0xfffffe44]
004b2c67  898558feffff              MOV dword ptr [EBP + 0xfffffe58],EAX
004b2c6d  8bc1                      MOV EAX,ECX
004b2c6f  898568feffff              MOV dword ptr [EBP + 0xfffffe68],EAX
004b2c75  85d2                      TEST EDX,EDX
004b2c77  0f8521020000              JNZ 0x004b2e9e
004b2c7d  8b8d58feffff              MOV ECX,dword ptr [EBP + 0xfffffe58]
004b2c83  b8398ee338                MOV EAX,0x38e38e39
004b2c88  0f2805e0caba00            MOVAPS XMM0,xmmword ptr [0x00bacae0]
004b2c8f  f7e1                      MUL ECX
004b2c91  0f1145c8                  MOVUPS xmmword ptr [EBP + -0x38],XMM0
004b2c95  0f2805e0cbba00            MOVAPS XMM0,xmmword ptr [0x00bacbe0]
004b2c9c  0f1145d8                  MOVUPS xmmword ptr [EBP + -0x28],XMM0
004b2ca0  c745e8000010c2            MOV dword ptr [EBP + -0x18],0xc2100000
004b2ca7  d1ea                      SHR EDX,0x1
004b2ca9  8d04d2                    LEA EAX,[EDX + EDX*0x8]
004b2cac  2bc8                      SUB ECX,EAX
004b2cae  f30f10448dc8              MOVSS XMM0,dword ptr [EBP + ECX*0x4 + -0x38]
004b2cb4  f30f5805b4a9ba00          ADDSS XMM0,dword ptr [0x00baa9b4]
004b2cbc  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004b2cc4  f30f118558feffff          MOVSS dword ptr [EBP + 0xfffffe58],XMM0
004b2ccc  e86fa8f6ff                CALL 0x0041d540
004b2cd1  f30f118528feffff          MOVSS dword ptr [EBP + 0xfffffe28],XMM0
004b2cd9  f30f108558feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe58]
004b2ce1  e83aa8f6ff                CALL 0x0041d520
004b2ce6  51                        PUSH ECX
004b2ce7  c704240000a041            MOV dword ptr [ESP],0x41a00000
004b2cee  8d8d28feffff              LEA ECX,[EBP + 0xfffffe28]
004b2cf4  6a00                      PUSH 0x0
004b2cf6  6840b6c700                PUSH 0xc7b640
004b2cfb  51                        PUSH ECX
004b2cfc  8d873c030000              LEA EAX,[EDI + 0x33c]
004b2d02  f30f11852cfeffff          MOVSS dword ptr [EBP + 0xfffffe2c],XMM0
004b2d0a  50                        PUSH EAX
004b2d0b  8d8538feffff              LEA EAX,[EBP + 0xfffffe38]
004b2d11  50                        PUSH EAX
004b2d12  e849d04b00                CALL 0x0096fd60
004b2d17  83c418                    ADD ESP,0x18
004b2d1a  e841c22300                CALL 0x006eef60
004b2d1f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004b2d25  50                        PUSH EAX
004b2d26  6a00                      PUSH 0x0
004b2d28  57                        PUSH EDI
004b2d29  6840b6c700                PUSH 0xc7b640
004b2d2e  8d8538feffff              LEA EAX,[EBP + 0xfffffe38]
004b2d34  50                        PUSH EAX
004b2d35  6a09                      PUSH 0x9
004b2d37  6a09                      PUSH 0x9
004b2d39  e8e25df7ff                CALL 0x00428b20
004b2d3e  898568feffff              MOV dword ptr [EBP + 0xfffffe68],EAX
004b2d44  e817c22300                CALL 0x006eef60
004b2d49  660f6ec0                  MOVD XMM0,EAX
004b2d4d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004b2d51  c1e81f                    SHR EAX,0x1f
004b2d54  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004b2d5d  8b8568feffff              MOV EAX,dword ptr [EBP + 0xfffffe68]
004b2d63  660f5ac8                  CVTPD2PS XMM1,XMM0
004b2d67  c7801404000000000000      MOV dword ptr [EAX + 0x414],0x0
004b2d71  f30f1005f0adba00          MOVSS XMM0,dword ptr [0x00baadf0]
004b2d79  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004b2d81  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
004b2d89  f30f5cc1                  SUBSS XMM0,XMM1
004b2d8d  f30f118010040000          MOVSS dword ptr [EAX + 0x410],XMM0
004b2d95  e8c6c12300                CALL 0x006eef60
004b2d9a  660f6ec0                  MOVD XMM0,EAX
004b2d9e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004b2da2  c1e81f                    SHR EAX,0x1f
004b2da5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004b2dae  8b8568feffff              MOV EAX,dword ptr [EBP + 0xfffffe68]
004b2db4  660f5ac8                  CVTPD2PS XMM1,XMM0
004b2db8  f30f1005e8acba00          MOVSS XMM0,dword ptr [0x00baace8]
004b2dc0  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004b2dc8  f30f590da4a0ba00          MULSS XMM1,dword ptr [0x00baa0a4]
004b2dd0  f30f5cc1                  SUBSS XMM0,XMM1
004b2dd4  f30f118018040000          MOVSS dword ptr [EAX + 0x418],XMM0
004b2ddc  e87fc12300                CALL 0x006eef60
004b2de1  8b8d68feffff              MOV ECX,dword ptr [EBP + 0xfffffe68]
004b2de7  660f6ec0                  MOVD XMM0,EAX
004b2deb  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004b2def  c1e81f                    SHR EAX,0x1f
004b2df2  c7813804000000200000      MOV dword ptr [ECX + 0x438],0x2000
004b2dfc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004b2e05  660f5ac0                  CVTPD2PS XMM0,XMM0
004b2e09  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004b2e11  f30f5905aca4ba00          MULSS XMM0,dword ptr [0x00baa4ac]
004b2e19  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
004b2e21  f30f118120040000          MOVSS dword ptr [ECX + 0x420],XMM0
004b2e29  c7813c04000000000000      MOV dword ptr [ECX + 0x43c],0x0
004b2e33  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004b2e39  2580000000                AND EAX,0x80
004b2e3e  83c800                    OR EAX,0x0
004b2e41  7414                      JZ 0x004b2e57
004b2e43  c7813804000000200001      MOV dword ptr [ECX + 0x438],0x1002000
004b2e4d  c7813c04000000000000      MOV dword ptr [ECX + 0x43c],0x0
004b2e57  8b01                      MOV EAX,dword ptr [ECX]
004b2e59  8d55c0                    LEA EDX,[EBP + -0x40]
004b2e5c  6a01                      PUSH 0x1
004b2e5e  6a01                      PUSH 0x1
004b2e60  0f57c0                    XORPS XMM0,XMM0
004b2e63  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004b2e6a  68ff000000                PUSH 0xff
004b2e6f  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004b2e73  6a0a                      PUSH 0xa
004b2e75  0f280550b0ba00            MOVAPS XMM0,xmmword ptr [0x00bab050]
004b2e7c  52                        PUSH EDX
004b2e7d  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004b2e84  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004b2e8b  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004b2e8f  ff503c                    CALL dword ptr [EAX + 0x3c]
004b2e92  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
004b2e98  898568feffff              MOV dword ptr [EBP + 0xfffffe68],EAX
004b2e9e  99                        CDQ
004b2e9f  b906000000                MOV ECX,0x6
004b2ea4  f7f9                      IDIV ECX
004b2ea6  85d2                      TEST EDX,EDX
004b2ea8  0f8515020000              JNZ 0x004b30c3
004b2eae  e8adc02300                CALL 0x006eef60
004b2eb3  50                        PUSH EAX
004b2eb4  6a00                      PUSH 0x0
004b2eb6  6a00                      PUSH 0x0
004b2eb8  6840b6c700                PUSH 0xc7b640
004b2ebd  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004b2ec3  51                        PUSH ECX
004b2ec4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004b2eca  6897000000                PUSH 0x97
004b2ecf  68e8030000                PUSH 0x3e8
004b2ed4  e8475cf7ff                CALL 0x00428b20
004b2ed9  8bc8                      MOV ECX,EAX
004b2edb  8b10                      MOV EDX,dword ptr [EAX]
004b2edd  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
004b2ee7  c780500300000000c0c1      MOV dword ptr [EAX + 0x350],0xc1c00000
004b2ef1  ff520c                    CALL dword ptr [EDX + 0xc]
004b2ef4  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
004b2efa  e9ca010000                JMP 0x004b30c9
004b2eff  81fec0030000              CMP ESI,0x3c0
004b2f05  7419                      JZ 0x004b2f20
004b2f07  81fec5030000              CMP ESI,0x3c5
004b2f0d  7411                      JZ 0x004b2f20
004b2f0f  81fef5000000              CMP ESI,0xf5
004b2f15  7409                      JZ 0x004b2f20
004b2f17  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
004b2f1e  741f                      JZ 0x004b2f3f
004b2f20  8bc6                      MOV EAX,ESI
004b2f22  83fe01                    CMP ESI,0x1
004b2f25  7418                      JZ 0x004b2f3f
004b2f27  83f802                    CMP EAX,0x2
004b2f2a  7413                      JZ 0x004b2f3f
004b2f2c  83f804                    CMP EAX,0x4
004b2f2f  740e                      JZ 0x004b2f3f
004b2f31  83f809                    CMP EAX,0x9
004b2f34  7409                      JZ 0x004b2f3f
004b2f36  83f805                    CMP EAX,0x5
004b2f39  0f85aafcffff              JNZ 0x004b2be9
004b2f3f  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004b2f47  f30f5c8940030000          SUBSS XMM1,dword ptr [ECX + 0x340]
004b2f4f  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
004b2f57  f30f5c913c030000          SUBSS XMM2,dword ptr [ECX + 0x33c]
004b2f5f  0f28c1                    MOVAPS XMM0,XMM1
004b2f62  f30f118d44feffff          MOVSS dword ptr [EBP + 0xfffffe44],XMM1
004b2f6a  f30f59c1                  MULSS XMM0,XMM1
004b2f6e  0f28ca                    MOVAPS XMM1,XMM2
004b2f71  f30f119558feffff          MOVSS dword ptr [EBP + 0xfffffe58],XMM2
004b2f79  f30f59ca                  MULSS XMM1,XMM2
004b2f7d  f30f101530a6ba00          MOVSS XMM2,dword ptr [0x00baa630]
004b2f85  f30f58c1                  ADDSS XMM0,XMM1
004b2f89  0f28c8                    MOVAPS XMM1,XMM0
004b2f8c  f30f590d10a0ba00          MULSS XMM1,dword ptr [0x00baa010]
004b2f94  f30f58cb                  ADDSS XMM1,XMM3
004b2f98  f30f5ed1                  DIVSS XMM2,XMM1
004b2f9c  f30f11955cfeffff          MOVSS dword ptr [EBP + 0xfffffe5c],XMM2
004b2fa4  e8a72af8ff                CALL 0x00435a50
004b2fa9  f30f109d58feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffe58]
004b2fb1  0f57ed                    XORPS XMM5,XMM5
004b2fb4  0f2fc5                    COMISS XMM0,XMM5
004b2fb7  f30f10a544feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe44]
004b2fbf  7617                      JBE 0x004b2fd8
004b2fc1  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004b2fc9  f30f5ec8                  DIVSS XMM1,XMM0
004b2fcd  0f28c1                    MOVAPS XMM0,XMM1
004b2fd0  f30f59e1                  MULSS XMM4,XMM1
004b2fd4  f30f59d8                  MULSS XMM3,XMM0
004b2fd8  8b8d68feffff              MOV ECX,dword ptr [EBP + 0xfffffe68]
004b2fde  83fe01                    CMP ESI,0x1
004b2fe1  7532                      JNZ 0x004b3015
004b2fe3  f30f10855cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe5c]
004b2feb  f30f590500a5ba00          MULSS XMM0,dword ptr [0x00baa500]
004b2ff3  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
004b2ffb  f30f5dc8                  MINSS XMM1,XMM0
004b2fff  f30f10817c030000          MOVSS XMM0,dword ptr [ECX + 0x37c]
004b3007  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
004b300f  f30f5ec8                  DIVSS XMM1,XMM0
004b3013  eb4b                      JMP 0x004b3060
004b3015  83fe02                    CMP ESI,0x2
004b3018  7512                      JNZ 0x004b302c
004b301a  f30f108d5cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe5c]
004b3022  f30f590d54a3ba00          MULSS XMM1,dword ptr [0x00baa354]
004b302a  eb34                      JMP 0x004b3060
004b302c  83fe09                    CMP ESI,0x9
004b302f  7527                      JNZ 0x004b3058
004b3031  39712c                    CMP dword ptr [ECX + 0x2c],ESI
004b3034  7522                      JNZ 0x004b3058
004b3036  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
004b3039  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
004b303c  751a                      JNZ 0x004b3058
004b303e  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
004b3046  f30f5f8d5cfeffff          MAXSS XMM1,dword ptr [EBP + 0xfffffe5c]
004b304e  f30f5d0d80a2ba00          MINSS XMM1,dword ptr [0x00baa280]
004b3056  eb08                      JMP 0x004b3060
004b3058  f30f108d5cfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe5c]
004b3060  8bb56cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe6c]
004b3066  0f28d1                    MOVAPS XMM2,XMM1
004b3069  f30f59d3                  MULSS XMM2,XMM3
004b306d  f30f10996c030000          MOVSS XMM3,dword ptr [ECX + 0x36c]
004b3075  0f2edd                    UCOMISS XMM3,XMM5
004b3078  f30f59cc                  MULSS XMM1,XMM4
004b307c  9f                        LAHF
004b307d  f6c444                    TEST AH,0x44
004b3080  0f8b69fbffff              JNP 0x004b2bef
004b3086  f30f10819c030000          MOVSS XMM0,dword ptr [ECX + 0x39c]
004b308e  f30f59d0                  MULSS XMM2,XMM0
004b3092  f30f59c8                  MULSS XMM1,XMM0
004b3096  f30f5ed3                  DIVSS XMM2,XMM3
004b309a  f30f5ecb                  DIVSS XMM1,XMM3
004b309e  f30f589160030000          ADDSS XMM2,dword ptr [ECX + 0x360]
004b30a6  f30f588964030000          ADDSS XMM1,dword ptr [ECX + 0x364]
004b30ae  f30f119160030000          MOVSS dword ptr [ECX + 0x360],XMM2
004b30b6  f30f118964030000          MOVSS dword ptr [ECX + 0x364],XMM1
004b30be  e92cfbffff                JMP 0x004b2bef
004b30c3  8b8d68feffff              MOV ECX,dword ptr [EBP + 0xfffffe68]
004b30c9  8bc1                      MOV EAX,ECX
004b30cb  99                        CDQ
004b30cc  f7bd5cfeffff              IDIV dword ptr [EBP + 0xfffffe5c]
004b30d2  85d2                      TEST EDX,EDX
004b30d4  754c                      JNZ 0x004b3122
004b30d6  e885be2300                CALL 0x006eef60
004b30db  50                        PUSH EAX
004b30dc  6a01                      PUSH 0x1
004b30de  6a00                      PUSH 0x0
004b30e0  6840b6c700                PUSH 0xc7b640
004b30e5  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004b30eb  51                        PUSH ECX
004b30ec  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004b30f2  6897000000                PUSH 0x97
004b30f7  68e8030000                PUSH 0x3e8
004b30fc  e81f5af7ff                CALL 0x00428b20
004b3101  8bc8                      MOV ECX,EAX
004b3103  8b10                      MOV EDX,dword ptr [EAX]
004b3105  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
004b310f  c780500300000000c0c1      MOV dword ptr [EAX + 0x350],0xc1c00000
004b3119  ff520c                    CALL dword ptr [EDX + 0xc]
004b311c  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
004b3122  49                        DEC ECX
004b3123  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
004b3129  85c9                      TEST ECX,ECX
004b312b  7e1e                      JLE 0x004b314b
004b312d  8b9554feffff              MOV EDX,dword ptr [EBP + 0xfffffe54]
004b3133  42                        INC EDX
004b3134  899554feffff              MOV dword ptr [EBP + 0xfffffe54],EDX
004b313a  3b9564feffff              CMP EDX,dword ptr [EBP + 0xfffffe64]
004b3140  0f8cfafaffff              JL 0x004b2c40
004b3146  e91af5ffff                JMP 0x004b2665
004b314b  8b07                      MOV EAX,dword ptr [EDI]
004b314d  51                        PUSH ECX
004b314e  8bcf                      MOV ECX,EDI
004b3150  c7042400000000            MOV dword ptr [ESP],0x0
004b3157  ff5040                    CALL dword ptr [EAX + 0x40]
004b315a  6a00                      PUSH 0x0
004b315c  6810eeb100                PUSH 0xb1ee10
004b3161  8d4f48                    LEA ECX,[EDI + 0x48]
004b3164  e81772f5ff                CALL 0x0040a380
004b3169  33d2                      XOR EDX,EDX
004b316b  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004b3175  c7876c0b000000000000      MOV dword ptr [EDI + 0xb6c],0x0
004b317f  399664120000              CMP dword ptr [ESI + 0x1264],EDX
004b3185  0f86daf4ffff              JBE 0x004b2665
004b318b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004b3190  8b865c120000              MOV EAX,dword ptr [ESI + 0x125c]
004b3196  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
004b3199  83792809                  CMP dword ptr [ECX + 0x28],0x9
004b319d  7518                      JNZ 0x004b31b7
004b319f  83792c09                  CMP dword ptr [ECX + 0x2c],0x9
004b31a3  7512                      JNZ 0x004b31b7
004b31a5  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
004b31a8  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
004b31ab  750a                      JNZ 0x004b31b7
004b31ad  c78118040000cdcc4c3e      MOV dword ptr [ECX + 0x418],0x3e4ccccd
004b31b7  42                        INC EDX
004b31b8  3b9664120000              CMP EDX,dword ptr [ESI + 0x1264]
004b31be  72d0                      JC 0x004b3190
004b31c0  e9a0f4ffff                JMP 0x004b2665
004b31c5  6a00                      PUSH 0x0
004b31c7  8d4f48                    LEA ECX,[EDI + 0x48]
004b31ca  6820d4b100                PUSH 0xb1d420
004b31cf  e8ac71f5ff                CALL 0x0040a380
004b31d4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004b31d8  740d                      JZ 0x004b31e7
004b31da  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004b31e1  0f857ef4ffff              JNZ 0x004b2665
004b31e7  ff8710040000              INC dword ptr [EDI + 0x410]
004b31ed  8bcf                      MOV ECX,EDI
004b31ef  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004b31f9  e812e7ffff                CALL 0x004b1910
004b31fe  c687c00b000000            MOV byte ptr [EDI + 0xbc0],0x0
004b3205  e951f4ffff                JMP 0x004b265b
004b320a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004b320e  8d4f48                    LEA ECX,[EDI + 0x48]
004b3211  740d                      JZ 0x004b3220
004b3213  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004b321a  0f8545f4ffff              JNZ 0x004b2665
004b3220  6a00                      PUSH 0x0
004b3222  68f4edb100                PUSH 0xb1edf4
004b3227  e85471f5ff                CALL 0x0040a380
004b322c  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
004b3233  750d                      JNZ 0x004b3242
004b3235  83bf540f000000            CMP dword ptr [EDI + 0xf54],0x0
004b323c  0f8423f4ffff              JZ 0x004b2665
004b3242  51                        PUSH ECX
004b3243  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b324a  6a00                      PUSH 0x0
004b324c  6a02                      PUSH 0x2
004b324e  51                        PUSH ECX
004b324f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b3256  8bcf                      MOV ECX,EDI
004b3258  6889000000                PUSH 0x89
004b325d  e83e392200                CALL 0x006d6ba0
004b3262  8d4dc0                    LEA ECX,[EBP + -0x40]
004b3265  e8063ff5ff                CALL 0x00407170
004b326a  8bf8                      MOV EDI,EAX
004b326c  e8efbc2300                CALL 0x006eef60
004b3271  b903000000                MOV ECX,0x3
004b3276  8bb54cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe4c]
004b327c  33d2                      XOR EDX,EDX
004b327e  81c63c030000              ADD ESI,0x33c
004b3284  f7f1                      DIV ECX
004b3286  6a07                      PUSH 0x7
004b3288  51                        PUSH ECX
004b3289  c704240050c347            MOV dword ptr [ESP],0x47c35000
004b3290  57                        PUSH EDI
004b3291  51                        PUSH ECX
004b3292  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004b3298  8d420c                    LEA EAX,[EDX + 0xc]
004b329b  c7042400001041            MOV dword ptr [ESP],0x41100000
004b32a2  50                        PUSH EAX
004b32a3  6a04                      PUSH 0x4
004b32a5  56                        PUSH ESI
004b32a6  e885002500                CALL 0x00703330
004b32ab  8b8d4cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe4c]
004b32b1  8b01                      MOV EAX,dword ptr [ECX]
004b32b3  ff5028                    CALL dword ptr [EAX + 0x28]
004b32b6  e9ec020000                JMP 0x004b35a7
004b32bb  83783001                  CMP dword ptr [EAX + 0x30],0x1
004b32bf  0f85ba000000              JNZ 0x004b337f
004b32c5  8b07                      MOV EAX,dword ptr [EDI]
004b32c7  51                        PUSH ECX
004b32c8  8bcf                      MOV ECX,EDI
004b32ca  c7042400000000            MOV dword ptr [ESP],0x0
004b32d1  ff5040                    CALL dword ptr [EAX + 0x40]
004b32d4  8bb56cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe6c]
004b32da  8bce                      MOV ECX,ESI
004b32dc  57                        PUSH EDI
004b32dd  c787800300000000003f      MOV dword ptr [EDI + 0x380],0x3f000000
004b32e7  e814b93400                CALL 0x007fec00
004b32ec  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004b32f6  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
004b32f9  85c9                      TEST ECX,ECX
004b32fb  7450                      JZ 0x004b334d
004b32fd  83791410                  CMP dword ptr [ECX + 0x14],0x10
004b3301  8bc1                      MOV EAX,ECX
004b3303  7202                      JC 0x004b3307
004b3305  8b01                      MOV EAX,dword ptr [ECX]
004b3307  b91ceeb100                MOV ECX,0xb1ee1c
004b330c  0f1f4000                  NOP dword ptr [EAX]
004b3310  8a10                      MOV DL,byte ptr [EAX]
004b3312  3a11                      CMP DL,byte ptr [ECX]
004b3314  751a                      JNZ 0x004b3330
004b3316  84d2                      TEST DL,DL
004b3318  7412                      JZ 0x004b332c
004b331a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004b331d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004b3320  750e                      JNZ 0x004b3330
004b3322  83c002                    ADD EAX,0x2
004b3325  83c102                    ADD ECX,0x2
004b3328  84d2                      TEST DL,DL
004b332a  75e4                      JNZ 0x004b3310
004b332c  33c0                      XOR EAX,EAX
004b332e  eb05                      JMP 0x004b3335
004b3330  1bc0                      SBB EAX,EAX
004b3332  83c801                    OR EAX,0x1
004b3335  8d4f48                    LEA ECX,[EDI + 0x48]
004b3338  85c0                      TEST EAX,EAX
004b333a  7514                      JNZ 0x004b3350
004b333c  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
004b333f  80783400                  CMP byte ptr [EAX + 0x34],0x0
004b3343  742a                      JZ 0x004b336f
004b3345  80794400                  CMP byte ptr [ECX + 0x44],0x0
004b3349  7524                      JNZ 0x004b336f
004b334b  eb03                      JMP 0x004b3350
004b334d  8d4f48                    LEA ECX,[EDI + 0x48]
004b3350  6a01                      PUSH 0x1
004b3352  681ceeb100                PUSH 0xb1ee1c
004b3357  e87472f5ff                CALL 0x0040a5d0
004b335c  84c0                      TEST AL,AL
004b335e  740f                      JZ 0x004b336f
004b3360  8d4f78                    LEA ECX,[EDI + 0x78]
004b3363  e8486ef5ff                CALL 0x0040a1b0
004b3368  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004b336f  c6873c0c000000            MOV byte ptr [EDI + 0xc3c],0x0
004b3376  c7473001000000            MOV dword ptr [EDI + 0x30],0x1
004b337d  eb06                      JMP 0x004b3385
004b337f  8bb56cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe6c]
004b3385  ff7720                    PUSH dword ptr [EDI + 0x20]
004b3388  8bcf                      MOV ECX,EDI
004b338a  6a02                      PUSH 0x2
004b338c  e87f931f00                CALL 0x006ac710
004b3391  84c0                      TEST AL,AL
004b3393  0f8423010000              JZ 0x004b34bc
004b3399  83bf640b000007            CMP dword ptr [EDI + 0xb64],0x7
004b33a0  745b                      JZ 0x004b33fd
004b33a2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004b33a6  0f8410010000              JZ 0x004b34bc
004b33ac  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004b33b3  0f8403010000              JZ 0x004b34bc
004b33b9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004b33bc  83781410                  CMP dword ptr [EAX + 0x14],0x10
004b33c0  7202                      JC 0x004b33c4
004b33c2  8b00                      MOV EAX,dword ptr [EAX]
004b33c4  b910eeb100                MOV ECX,0xb1ee10
004b33c9  0f1f8000000000            NOP dword ptr [EAX]
004b33d0  8a10                      MOV DL,byte ptr [EAX]
004b33d2  3a11                      CMP DL,byte ptr [ECX]
004b33d4  751a                      JNZ 0x004b33f0
004b33d6  84d2                      TEST DL,DL
004b33d8  7412                      JZ 0x004b33ec
004b33da  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004b33dd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004b33e0  750e                      JNZ 0x004b33f0
004b33e2  83c002                    ADD EAX,0x2
004b33e5  83c102                    ADD ECX,0x2
004b33e8  84d2                      TEST DL,DL
004b33ea  75e4                      JNZ 0x004b33d0
004b33ec  33c0                      XOR EAX,EAX
004b33ee  eb05                      JMP 0x004b33f5
004b33f0  1bc0                      SBB EAX,EAX
004b33f2  83c801                    OR EAX,0x1
004b33f5  85c0                      TEST EAX,EAX
004b33f7  0f85bf000000              JNZ 0x004b34bc
004b33fd  33c9                      XOR ECX,ECX
004b33ff  898d64feffff              MOV dword ptr [EBP + 0xfffffe64],ECX
004b3405  398e64120000              CMP dword ptr [ESI + 0x1264],ECX
004b340b  0f86ab000000              JBE 0x004b34bc
004b3411  8b865c120000              MOV EAX,dword ptr [ESI + 0x125c]
004b3417  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
004b341a  898d54feffff              MOV dword ptr [EBP + 0xfffffe54],ECX
004b3420  83792809                  CMP dword ptr [ECX + 0x28],0x9
004b3424  757d                      JNZ 0x004b34a3
004b3426  8b854cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe4c]
004b342c  8db178030000              LEA ESI,[ECX + 0x378]
004b3432  8db974030000              LEA EDI,[ECX + 0x374]
004b3438  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004b3440  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004b3448  f30f5c8140030000          SUBSS XMM0,dword ptr [ECX + 0x340]
004b3450  f30f5c893c030000          SUBSS XMM1,dword ptr [ECX + 0x33c]
004b3458  f30f59c0                  MULSS XMM0,XMM0
004b345c  f30f59c9                  MULSS XMM1,XMM1
004b3460  f30f58c1                  ADDSS XMM0,XMM1
004b3464  e8e725f8ff                CALL 0x00435a50
004b3469  f30f100f                  MOVSS XMM1,dword ptr [EDI]
004b346d  0f2f0e                    COMISS XMM1,dword ptr [ESI]
004b3470  8b8d54feffff              MOV ECX,dword ptr [EBP + 0xfffffe54]
004b3476  0f47fe                    CMOVA EDI,ESI
004b3479  f30f100f                  MOVSS XMM1,dword ptr [EDI]
004b347d  8bbd4cfeffff              MOV EDI,dword ptr [EBP + 0xfffffe4c]
004b3483  f30f598f70030000          MULSS XMM1,dword ptr [EDI + 0x370]
004b348b  f30f588970030000          ADDSS XMM1,dword ptr [ECX + 0x370]
004b3493  0f2fc8                    COMISS XMM1,XMM0
004b3496  7605                      JBE 0x004b349d
004b3498  8b01                      MOV EAX,dword ptr [ECX]
004b349a  ff5028                    CALL dword ptr [EAX + 0x28]
004b349d  8bb56cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe6c]
004b34a3  8b8d64feffff              MOV ECX,dword ptr [EBP + 0xfffffe64]
004b34a9  41                        INC ECX
004b34aa  898d64feffff              MOV dword ptr [EBP + 0xfffffe64],ECX
004b34b0  3b8e64120000              CMP ECX,dword ptr [ESI + 0x1264]
004b34b6  0f8255ffffff              JC 0x004b3411
004b34bc  0fb787c40b0000            MOVZX EAX,word ptr [EDI + 0xbc4]
004b34c3  6685c0                    TEST AX,AX
004b34c6  7408                      JZ 0x004b34d0
004b34c8  48                        DEC EAX
004b34c9  668987c40b0000            MOV word ptr [EDI + 0xbc4],AX
004b34d0  0fb787c60b0000            MOVZX EAX,word ptr [EDI + 0xbc6]
004b34d7  6685c0                    TEST AX,AX
004b34da  7408                      JZ 0x004b34e4
004b34dc  48                        DEC EAX
004b34dd  668987c60b0000            MOV word ptr [EDI + 0xbc6],AX
004b34e4  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004b34eb  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004b34f3  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004b34fb  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004b3503  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004b350b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004b3513  f30f5ed0                  DIVSS XMM2,XMM0
004b3517  f30f5ec8                  DIVSS XMM1,XMM0
004b351b  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004b3523  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004b352b  747a                      JZ 0x004b35a7
004b352d  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004b3533  83f812                    CMP EAX,0x12
004b3536  750a                      JNZ 0x004b3542
004b3538  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004b3540  eb0d                      JMP 0x004b354f
004b3542  83f813                    CMP EAX,0x13
004b3545  7510                      JNZ 0x004b3557
004b3547  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004b354f  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
004b3557  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004b355d  8d8d64feffff              LEA ECX,[EBP + 0xfffffe64]
004b3563  c78564feffff75000000      MOV dword ptr [EBP + 0xfffffe64],0x75
004b356d  e80e324a00                CALL 0x00956780
004b3572  f30f108d48feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe48]
004b357a  83ec08                    SUB ESP,0x8
004b357d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004b3585  f30f110c24                MOVSS dword ptr [ESP],XMM1
004b358a  6a00                      PUSH 0x0
004b358c  6a02                      PUSH 0x2
004b358e  51                        PUSH ECX
004b358f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004b3596  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004b359c  ffb564feffff              PUSH dword ptr [EBP + 0xfffffe64]
004b35a2  e889a64700                CALL 0x0092dc30
004b35a7  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004b35aa  64890d00000000            MOV dword ptr FS:[0x0],ECX
004b35b1  59                        POP ECX
004b35b2  5f                        POP EDI
004b35b3  5e                        POP ESI
004b35b4  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004b35b7  33cd                      XOR ECX,EBP
004b35b9  e86dbb6300                CALL 0x00aef12b
004b35be  8be5                      MOV ESP,EBP
004b35c0  5d                        POP EBP
004b35c1  8be3                      MOV ESP,EBX
004b35c3  5b                        POP EBX
004b35c4  c3                        RET
