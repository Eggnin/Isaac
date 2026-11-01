; J460 NPC AI 0x006a2050 HELPER_Bomb_Init
; types=4
; identities=4.*
; entry=006a2050
006a2050  55                        PUSH EBP
006a2051  8bec                      MOV EBP,ESP
006a2053  83e4f8                    AND ESP,0xfffffff8
006a2056  83ec6c                    SUB ESP,0x6c
006a2059  a1b493bf00                MOV EAX,[0x00bf93b4]
006a205e  33c4                      XOR EAX,ESP
006a2060  89442468                  MOV dword ptr [ESP + 0x68],EAX
006a2064  53                        PUSH EBX
006a2065  56                        PUSH ESI
006a2066  57                        PUSH EDI
006a2067  ff7514                    PUSH dword ptr [EBP + 0x14]
006a206a  8bf9                      MOV EDI,ECX
006a206c  ff7510                    PUSH dword ptr [EBP + 0x10]
006a206f  ff750c                    PUSH dword ptr [EBP + 0xc]
006a2072  ff7508                    PUSH dword ptr [EBP + 0x8]
006a2075  e826730000                CALL 0x006a93a0
006a207a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a207d  c787180400000000c842      MOV dword ptr [EDI + 0x418],0x42c80000
006a2087  c787100400002d000000      MOV dword ptr [EDI + 0x410],0x2d
006a2091  c7875804000000000000      MOV dword ptr [EDI + 0x458],0x0
006a209b  c7875c04000000000000      MOV dword ptr [EDI + 0x45c],0x0
006a20a5  83f803                    CMP EAX,0x3
006a20a8  740f                      JZ 0x006a20b9
006a20aa  83f804                    CMP EAX,0x4
006a20ad  740a                      JZ 0x006a20b9
006a20af  83f808                    CMP EAX,0x8
006a20b2  7405                      JZ 0x006a20b9
006a20b4  83f812                    CMP EAX,0x12
006a20b7  7569                      JNZ 0x006a2122
006a20b9  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
006a20bf  85d2                      TEST EDX,EDX
006a20c1  751a                      JNZ 0x006a20dd
006a20c3  6854bfb600                PUSH 0xb6bf54
006a20c8  6a10                      PUSH 0x10
006a20ca  e8f1f13600                CALL 0x00a112c0
006a20cf  8b97dc030000              MOV EDX,dword ptr [EDI + 0x3dc]
006a20d5  83c408                    ADD ESP,0x8
006a20d8  85d2                      TEST EDX,EDX
006a20da  7501                      JNZ 0x006a20dd
006a20dc  cc                        INT3
006a20dd  8b8fe0030000              MOV ECX,dword ptr [EDI + 0x3e0]
006a20e3  8bc2                      MOV EAX,EDX
006a20e5  d3e8                      SHR EAX,CL
006a20e7  8b8fe4030000              MOV ECX,dword ptr [EDI + 0x3e4]
006a20ed  33c2                      XOR EAX,EDX
006a20ef  8bd0                      MOV EDX,EAX
006a20f1  d3e2                      SHL EDX,CL
006a20f3  8b8fe8030000              MOV ECX,dword ptr [EDI + 0x3e8]
006a20f9  33d0                      XOR EDX,EAX
006a20fb  8bf2                      MOV ESI,EDX
006a20fd  b889888888                MOV EAX,0x88888889
006a2102  d3ee                      SHR ESI,CL
006a2104  33f2                      XOR ESI,EDX
006a2106  f7e6                      MUL ESI
006a2108  89b7dc030000              MOV dword ptr [EDI + 0x3dc],ESI
006a210e  c1ea04                    SHR EDX,0x4
006a2111  8bc2                      MOV EAX,EDX
006a2113  c1e004                    SHL EAX,0x4
006a2116  2bc2                      SUB EAX,EDX
006a2118  03c0                      ADD EAX,EAX
006a211a  2bf0                      SUB ESI,EAX
006a211c  01b710040000              ADD dword ptr [EDI + 0x410],ESI
006a2122  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a2125  83f80f                    CMP EAX,0xf
006a2128  7516                      JNZ 0x006a2140
006a212a  c787100400005e000000      MOV dword ptr [EDI + 0x410],0x5e
006a2134  c787180400000000a041      MOV dword ptr [EDI + 0x418],0x41a00000
006a213e  eb1e                      JMP 0x006a215e
006a2140  83f811                    CMP EAX,0x11
006a2143  7405                      JZ 0x006a214a
006a2145  83f814                    CMP EAX,0x14
006a2148  7514                      JNZ 0x006a215e
006a214a  c7871004000057000000      MOV dword ptr [EDI + 0x410],0x57
006a2154  c7871804000000009643      MOV dword ptr [EDI + 0x418],0x43960000
006a215e  c787340400000000803f      MOV dword ptr [EDI + 0x434],0x3f800000
006a2168  c7872c04000000000000      MOV dword ptr [EDI + 0x42c],0x0
006a2172  c7872004000000000000      MOV dword ptr [EDI + 0x420],0x0
006a217c  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
006a2186  c7873004000004000400      MOV dword ptr [EDI + 0x430],0x40004
006a2190  c6874804000000            MOV byte ptr [EDI + 0x448],0x0
006a2197  c7873804000000000000      MOV dword ptr [EDI + 0x438],0x0
006a21a1  c7873c04000000000000      MOV dword ptr [EDI + 0x43c],0x0
006a21ab  c7874004000000000000      MOV dword ptr [EDI + 0x440],0x0
006a21b5  c7874404000000000000      MOV dword ptr [EDI + 0x444],0x0
006a21bf  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
006a21c5  c6876004000000            MOV byte ptr [EDI + 0x460],0x0
006a21cc  c7872404000000000000      MOV dword ptr [EDI + 0x424],0x0
006a21d6  c7871c04000000000000      MOV dword ptr [EDI + 0x41c],0x0
006a21e0  c7874c0400000000803f      MOV dword ptr [EDI + 0x44c],0x3f800000
006a21ea  c7875004000000000000      MOV dword ptr [EDI + 0x450],0x0
006a21f4  85c0                      TEST EAX,EAX
006a21f6  740e                      JZ 0x006a2206
006a21f8  6a01                      PUSH 0x1
006a21fa  83c074                    ADD EAX,0x74
006a21fd  8d4f48                    LEA ECX,[EDI + 0x48]
006a2200  50                        PUSH EAX
006a2201  e84a9bd6ff                CALL 0x0040bd50
006a2206  8b87c8090000              MOV EAX,dword ptr [EDI + 0x9c8]
006a220c  8987cc090000              MOV dword ptr [EDI + 0x9cc],EAX
006a2212  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a2215  66c787620400000000        MOV word ptr [EDI + 0x462],0x0
006a221e  83f802                    CMP EAX,0x2
006a2221  7567                      JNZ 0x006a228a
006a2223  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
006a2226  85f6                      TEST ESI,ESI
006a2228  7454                      JZ 0x006a227e
006a222a  837e1410                  CMP dword ptr [ESI + 0x14],0x10
006a222e  8bc6                      MOV EAX,ESI
006a2230  7202                      JC 0x006a2234
006a2232  8b06                      MOV EAX,dword ptr [ESI]
006a2234  b954bcb100                MOV ECX,0xb1bc54
006a2239  0f1f8000000000            NOP dword ptr [EAX]
006a2240  8a10                      MOV DL,byte ptr [EAX]
006a2242  3a11                      CMP DL,byte ptr [ECX]
006a2244  751a                      JNZ 0x006a2260
006a2246  84d2                      TEST DL,DL
006a2248  7412                      JZ 0x006a225c
006a224a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
006a224d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
006a2250  750e                      JNZ 0x006a2260
006a2252  83c002                    ADD EAX,0x2
006a2255  83c102                    ADD ECX,0x2
006a2258  84d2                      TEST DL,DL
006a225a  75e4                      JNZ 0x006a2240
006a225c  33c0                      XOR EAX,EAX
006a225e  eb05                      JMP 0x006a2265
006a2260  1bc0                      SBB EAX,EAX
006a2262  83c801                    OR EAX,0x1
006a2265  85c0                      TEST EAX,EAX
006a2267  7515                      JNZ 0x006a227e
006a2269  384634                    CMP byte ptr [ESI + 0x34],AL
006a226c  0f84f6010000              JZ 0x006a2468
006a2272  38878c000000              CMP byte ptr [EDI + 0x8c],AL
006a2278  0f85ea010000              JNZ 0x006a2468
006a227e  6a01                      PUSH 0x1
006a2280  6854bcb100                PUSH 0xb1bc54
006a2285  e9c3010000                JMP 0x006a244d
006a228a  83f804                    CMP EAX,0x4
006a228d  7420                      JZ 0x006a22af
006a228f  83f803                    CMP EAX,0x3
006a2292  741b                      JZ 0x006a22af
006a2294  83f808                    CMP EAX,0x8
006a2297  7416                      JZ 0x006a22af
006a2299  83f811                    CMP EAX,0x11
006a229c  7411                      JZ 0x006a22af
006a229e  83f812                    CMP EAX,0x12
006a22a1  740c                      JZ 0x006a22af
006a22a3  6a01                      PUSH 0x1
006a22a5  682cd5b100                PUSH 0xb1d52c
006a22aa  e99e010000                JMP 0x006a244d
006a22af  837f3001                  CMP dword ptr [EDI + 0x30],0x1
006a22b3  6a01                      PUSH 0x1
006a22b5  0f858d010000              JNZ 0x006a2448
006a22bb  68c470b600                PUSH 0xb670c4
006a22c0  8d4f48                    LEA ECX,[EDI + 0x48]
006a22c3  e80883d6ff                CALL 0x0040a5d0
006a22c8  84c0                      TEST AL,AL
006a22ca  740f                      JZ 0x006a22db
006a22cc  8d4f78                    LEA ECX,[EDI + 0x78]
006a22cf  e8dc7ed6ff                CALL 0x0040a1b0
006a22d4  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
006a22db  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006a22e1  8d873c030000              LEA EAX,[EDI + 0x33c]
006a22e7  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
006a22ef  50                        PUSH EAX
006a22f0  8d44244c                  LEA EAX,[ESP + 0x4c]
006a22f4  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
006a22fa  50                        PUSH EAX
006a22fb  e890121800                CALL 0x00823590
006a2300  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
006a2308  33c0                      XOR EAX,EAX
006a230a  f30f10442448              MOVSS XMM0,dword ptr [ESP + 0x48]
006a2310  f30f59c1                  MULSS XMM0,XMM1
006a2314  c744243c00000000          MOV dword ptr [ESP + 0x3c],0x0
006a231c  c744244000000000          MOV dword ptr [ESP + 0x40],0x0
006a2324  c744244400000000          MOV dword ptr [ESP + 0x44],0x0
006a232c  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
006a2332  f30f1044244c              MOVSS XMM0,dword ptr [ESP + 0x4c]
006a2338  f30f59c1                  MULSS XMM0,XMM1
006a233c  c74424280000803f          MOV dword ptr [ESP + 0x28],0x3f800000
006a2344  89442414                  MOV dword ptr [ESP + 0x14],EAX
006a2348  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
006a234e  f30f10442450              MOVSS XMM0,dword ptr [ESP + 0x50]
006a2354  f30f59c1                  MULSS XMM0,XMM1
006a2358  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
006a235e  3987c8000000              CMP dword ptr [EDI + 0xc8],EAX
006a2364  0f86fe000000              JBE 0x006a2468
006a236a  8d4f48                    LEA ECX,[EDI + 0x48]
006a236d  50                        PUSH EAX
006a236e  e8ad8ed6ff                CALL 0x0040b220
006a2373  89442418                  MOV dword ptr [ESP + 0x18],EAX
006a2377  8b08                      MOV ECX,dword ptr [EAX]
006a2379  85c9                      TEST ECX,ECX
006a237b  741b                      JZ 0x006a2398
006a237d  83c108                    ADD ECX,0x8
006a2380  51                        PUSH ECX
006a2381  8d4c2460                  LEA ECX,[ESP + 0x60]
006a2385  e8c6abd6ff                CALL 0x0040cf50
006a238a  8b5c2470                  MOV EBX,dword ptr [ESP + 0x70]
006a238e  8b54246c                  MOV EDX,dword ptr [ESP + 0x6c]
006a2392  8b74245c                  MOV ESI,dword ptr [ESP + 0x5c]
006a2396  eb15                      JMP 0x006a23ad
006a2398  33f6                      XOR ESI,ESI
006a239a  bb0f000000                MOV EBX,0xf
006a239f  33d2                      XOR EDX,EDX
006a23a1  8974245c                  MOV dword ptr [ESP + 0x5c],ESI
006a23a5  895c2470                  MOV dword ptr [ESP + 0x70],EBX
006a23a9  8954246c                  MOV dword ptr [ESP + 0x6c],EDX
006a23ad  83fb10                    CMP EBX,0x10
006a23b0  8d4c245c                  LEA ECX,[ESP + 0x5c]
006a23b4  6a04                      PUSH 0x4
006a23b6  0f43ce                    CMOVNC ECX,ESI
006a23b9  687cd5b100                PUSH 0xb1d57c
006a23be  e81da7d6ff                CALL 0x0040cae0
006a23c3  83c408                    ADD ESP,0x8
006a23c6  88442413                  MOV byte ptr [ESP + 0x13],AL
006a23ca  83fb10                    CMP EBX,0x10
006a23cd  7229                      JC 0x006a23f8
006a23cf  43                        INC EBX
006a23d0  8bc6                      MOV EAX,ESI
006a23d2  81fb00100000              CMP EBX,0x1000
006a23d8  7210                      JC 0x006a23ea
006a23da  8b76fc                    MOV ESI,dword ptr [ESI + -0x4]
006a23dd  83c323                    ADD EBX,0x23
006a23e0  2bc6                      SUB EAX,ESI
006a23e2  83c0fc                    ADD EAX,-0x4
006a23e5  83f81f                    CMP EAX,0x1f
006a23e8  7758                      JA 0x006a2442
006a23ea  53                        PUSH EBX
006a23eb  56                        PUSH ESI
006a23ec  e86bcd4400                CALL 0x00aef15c
006a23f1  8a44241b                  MOV AL,byte ptr [ESP + 0x1b]
006a23f5  83c408                    ADD ESP,0x8
006a23f8  84c0                      TEST AL,AL
006a23fa  7430                      JZ 0x006a242c
006a23fc  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
006a2400  8d4c241c                  LEA ECX,[ESP + 0x1c]
006a2404  83c048                    ADD EAX,0x48
006a2407  3bc1                      CMP EAX,ECX
006a2409  7421                      JZ 0x006a242c
006a240b  0f1044241c                MOVUPS XMM0,xmmword ptr [ESP + 0x1c]
006a2410  8b4c2444                  MOV ECX,dword ptr [ESP + 0x44]
006a2414  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
006a2417  0f57c0                    XORPS XMM0,XMM0
006a241a  0f114010                  MOVUPS xmmword ptr [EAX + 0x10],XMM0
006a241e  f30f7e44243c              MOVQ XMM0,qword ptr [ESP + 0x3c]
006a2424  660fd64020                MOVQ qword ptr [EAX + 0x20],XMM0
006a2429  894828                    MOV dword ptr [EAX + 0x28],ECX
006a242c  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
006a2430  40                        INC EAX
006a2431  89442414                  MOV dword ptr [ESP + 0x14],EAX
006a2435  3b87c8000000              CMP EAX,dword ptr [EDI + 0xc8]
006a243b  732b                      JNC 0x006a2468
006a243d  e928ffffff                JMP 0x006a236a
006a2442  ff159488b100              CALL dword ptr [0x00b18894]
006a2448  6898d5b100                PUSH 0xb1d598
006a244d  8d4f48                    LEA ECX,[EDI + 0x48]
006a2450  e87b81d6ff                CALL 0x0040a5d0
006a2455  84c0                      TEST AL,AL
006a2457  740f                      JZ 0x006a2468
006a2459  8d4f78                    LEA ECX,[EDI + 0x78]
006a245c  e84f7dd6ff                CALL 0x0040a1b0
006a2461  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
006a2468  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006a246b  c7872804000000000000      MOV dword ptr [EDI + 0x428],0x0
006a2475  c6876104000000            MOV byte ptr [EDI + 0x461],0x0
006a247c  83f813                    CMP EAX,0x13
006a247f  7405                      JZ 0x006a2486
006a2481  83f814                    CMP EAX,0x14
006a2484  7520                      JNZ 0x006a24a6
006a2486  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
006a248c  818f6801000000000004      OR dword ptr [EDI + 0x168],0x4000000
006a2496  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
006a249c  c78750030000000060c1      MOV dword ptr [EDI + 0x350],0xc1600000
006a24a6  57                        PUSH EDI
006a24a7  e8f4f91b00                CALL 0x00861ea0
006a24ac  8b4c2474                  MOV ECX,dword ptr [ESP + 0x74]
006a24b0  5f                        POP EDI
006a24b1  5e                        POP ESI
006a24b2  5b                        POP EBX
006a24b3  33cc                      XOR ECX,ESP
006a24b5  e871cc4400                CALL 0x00aef12b
006a24ba  8be5                      MOV ESP,EBP
006a24bc  5d                        POP EBP
006a24bd  c21000                    RET 0x10
