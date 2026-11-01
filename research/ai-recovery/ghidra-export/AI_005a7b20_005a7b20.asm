; J460 NPC AI 0x005a7b20 AI_005a7b20
; types=903
; identities=903.0.0,903.1.0,903.10.0,903.20.0
; entry=005a7b20
005a7b20  55                        PUSH EBP
005a7b21  8bec                      MOV EBP,ESP
005a7b23  83e4f8                    AND ESP,0xfffffff8
005a7b26  81ec50030000              SUB ESP,0x350
005a7b2c  a1b493bf00                MOV EAX,[0x00bf93b4]
005a7b31  33c4                      XOR EAX,ESP
005a7b33  8984244c030000            MOV dword ptr [ESP + 0x34c],EAX
005a7b3a  f30f102dd0a2ba00          MOVSS XMM5,dword ptr [0x00baa2d0]
005a7b42  0f57e4                    XORPS XMM4,XMM4
005a7b45  56                        PUSH ESI
005a7b46  57                        PUSH EDI
005a7b47  8bf9                      MOV EDI,ECX
005a7b49  897c2410                  MOV dword ptr [ESP + 0x10],EDI
005a7b4d  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
005a7b55  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
005a7b5d  2bf0                      SUB ESI,EAX
005a7b5f  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005a7b65  89742420                  MOV dword ptr [ESP + 0x20],ESI
005a7b69  83f876                    CMP EAX,0x76
005a7b6c  0f8746190000              JA 0x005a94b8
005a7b72  0fb6808cad5a00            MOVZX EAX,byte ptr [EAX + 0x5aad8c]
005a7b79  ff248544ad5a00            JMP dword ptr [EAX*0x4 + 0x5aad44]
005a94b8  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005a94be  83f871                    CMP EAX,0x71
005a94c1  0f83f9160000              JNC 0x005aabc0
005a94c7  83f868                    CMP EAX,0x68
005a94ca  0f82ae160000              JC 0x005aab7e
005a94d0  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
005a94d8  f30f105714                MOVSS XMM2,dword ptr [EDI + 0x14]
005a94dd  0f28c1                    MOVAPS XMM0,XMM1
005a94e0  f30f109f84030000          MOVSS XMM3,dword ptr [EDI + 0x384]
005a94e8  f30f5cc2                  SUBSS XMM0,XMM2
005a94ec  f30f59dd                  MULSS XMM3,XMM5
005a94f0  0f2fd8                    COMISS XMM3,XMM0
005a94f3  0f82c7160000              JC 0x005aabc0
005a94f9  83f869                    CMP EAX,0x69
005a94fc  0f8528160000              JNZ 0x005aab2a
005a9502  c787640b000070000000      MOV dword ptr [EDI + 0xb64],0x70
005a950c  e9af160000                JMP 0x005aabc0
005aab2a  0f2fd4                    COMISS XMM2,XMM4
005aab2d  0f868d000000              JBE 0x005aabc0
005aab33  f30f5ccb                  SUBSS XMM1,XMM3
005aab37  0f2fca                    COMISS XMM1,XMM2
005aab3a  7706                      JA 0x005aab42
005aab3c  f30f10c9                  MOVSS XMM1,XMM1
005aab40  eb04                      JMP 0x005aab46
005aab42  f30f10ca                  MOVSS XMM1,XMM2
005aab46  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
005aab4d  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
005aab50  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
005aab53  f30f5eca                  DIVSS XMM1,XMM2
005aab57  3bc1                      CMP EAX,ECX
005aab59  7465                      JZ 0x005aabc0
005aab5b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
005aab60  0f28c1                    MOVAPS XMM0,XMM1
005aab63  f30f5900                  MULSS XMM0,dword ptr [EAX]
005aab67  f30f1100                  MOVSS dword ptr [EAX],XMM0
005aab6b  83c038                    ADD EAX,0x38
005aab6e  f30f584714                ADDSS XMM0,dword ptr [EDI + 0x14]
005aab73  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
005aab78  3bc1                      CMP EAX,ECX
005aab7a  75e4                      JNZ 0x005aab60
005aab7c  eb42                      JMP 0x005aabc0
005aab7e  83bfec0b000000            CMP dword ptr [EDI + 0xbec],0x0
005aab85  7539                      JNZ 0x005aabc0
005aab87  83f867                    CMP EAX,0x67
005aab8a  7434                      JZ 0x005aabc0
005aab8c  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
005aab92  68f7010000                PUSH 0x1f7
005aab97  8d8924a30200              LEA ECX,[ECX + 0x2a324]
005aab9d  e88e363800                CALL 0x0092e230
005aaba2  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
005aaba8  85c0                      TEST EAX,EAX
005aabaa  740a                      JZ 0x005aabb6
005aabac  c780640b000068000000      MOV dword ptr [EAX + 0xb64],0x68
005aabb6  c787640b000067000000      MOV dword ptr [EDI + 0xb64],0x67
005aabc0  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005aabc7  0f8463010000              JZ 0x005aad30
005aabcd  a17816c700                MOV EAX,[0x00c71678]
005aabd2  33f6                      XOR ESI,ESI
005aabd4  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005aabda  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
005aabde  39b064120000              CMP dword ptr [EAX + 0x1264],ESI
005aabe4  0f8646010000              JBE 0x005aad30
005aabea  660f1f440000              NOP word ptr [EAX + EAX*0x1]
005aabf0  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
005aabf6  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
005aabf9  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
005aabfc  83f809                    CMP EAX,0x9
005aabff  7514                      JNZ 0x005aac15
005aac01  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
005aac07  751d                      JNZ 0x005aac26
005aac09  c6817301000001            MOV byte ptr [ECX + 0x173],0x1
005aac10  e90a010000                JMP 0x005aad1f
005aac15  3d87030000                CMP EAX,0x387
005aac1a  750a                      JNZ 0x005aac26
005aac1c  83792c14                  CMP dword ptr [ECX + 0x2c],0x14
005aac20  7504                      JNZ 0x005aac26
005aac22  b001                      MOV AL,0x1
005aac24  eb02                      JMP 0x005aac28
005aac26  32c0                      XOR AL,AL
005aac28  84c0                      TEST AL,AL
005aac2a  0f84ef000000              JZ 0x005aad1f
005aac30  8b01                      MOV EAX,dword ptr [ECX]
005aac32  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005aac3a  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
005aac42  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
005aac48  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
005aac4b  89442444                  MOV dword ptr [ESP + 0x44],EAX
005aac4f  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005aac52  89842484000000            MOV dword ptr [ESP + 0x84],EAX
005aac59  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
005aac5c  89842488000000            MOV dword ptr [ESP + 0x88],EAX
005aac63  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
005aac66  8984248c000000            MOV dword ptr [ESP + 0x8c],EAX
005aac6d  8b4738                    MOV EAX,dword ptr [EDI + 0x38]
005aac70  89842490000000            MOV dword ptr [ESP + 0x90],EAX
005aac77  8bc2                      MOV EAX,EDX
005aac79  f30f11842494000000        MOVSS dword ptr [ESP + 0x94],XMM0
005aac82  2500010000                AND EAX,0x100
005aac87  83c800                    OR EAX,0x0
005aac8a  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
005aac92  f30f118c2498000000        MOVSS dword ptr [ESP + 0x98],XMM1
005aac9b  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
005aaca3  f30f1184249c000000        MOVSS dword ptr [ESP + 0x9c],XMM0
005aacac  f30f118c24a0000000        MOVSS dword ptr [ESP + 0xa0],XMM1
005aacb5  c744242001000000          MOV dword ptr [ESP + 0x20],0x1
005aacbd  7508                      JNZ 0x005aacc7
005aacbf  c744242000000000          MOV dword ptr [ESP + 0x20],0x0
005aacc7  81e200000020              AND EDX,0x20000000
005aaccd  c744241002000000          MOV dword ptr [ESP + 0x10],0x2
005aacd5  83ca00                    OR EDX,0x0
005aacd8  7508                      JNZ 0x005aace2
005aacda  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
005aace2  8b976c010000              MOV EDX,dword ptr [EDI + 0x16c]
005aace8  33c0                      XOR EAX,EAX
005aacea  81e200004000              AND EDX,0x400000
005aacf0  0bc2                      OR EAX,EDX
005aacf2  7407                      JZ 0x005aacfb
005aacf4  b804000000                MOV EAX,0x4
005aacf9  eb02                      JMP 0x005aacfd
005aacfb  33c0                      XOR EAX,EAX
005aacfd  0b442410                  OR EAX,dword ptr [ESP + 0x10]
005aad01  0b442420                  OR EAX,dword ptr [ESP + 0x20]
005aad05  898424a4000000            MOV dword ptr [ESP + 0xa4],EAX
005aad0c  8d842484000000            LEA EAX,[ESP + 0x84]
005aad13  50                        PUSH EAX
005aad14  89bc24ac000000            MOV dword ptr [ESP + 0xac],EDI
005aad1b  ff542448                  CALL dword ptr [ESP + 0x48]
005aad1f  8b44243c                  MOV EAX,dword ptr [ESP + 0x3c]
005aad23  46                        INC ESI
005aad24  3bb064120000              CMP ESI,dword ptr [EAX + 0x1264]
005aad2a  0f82c0feffff              JC 0x005aabf0
005aad30  8b8c2454030000            MOV ECX,dword ptr [ESP + 0x354]
005aad37  5f                        POP EDI
005aad38  5e                        POP ESI
005aad39  33cc                      XOR ECX,ESP
005aad3b  e8eb435400                CALL 0x00aef12b
005aad40  8be5                      MOV ESP,EBP
005aad42  5d                        POP EBP
005aad43  c3                        RET
