; J460 NPC AI 0x0047f640 AI_0047f640
; types=84
; identities=84.0.0,84.10.0
; entry=0047f640
0047f640  55                        PUSH EBP
0047f641  8bec                      MOV EBP,ESP
0047f643  83e4f8                    AND ESP,0xfffffff8
0047f646  81ec60010000              SUB ESP,0x160
0047f64c  a1b493bf00                MOV EAX,[0x00bf93b4]
0047f651  33c4                      XOR EAX,ESP
0047f653  8984245c010000            MOV dword ptr [ESP + 0x15c],EAX
0047f65a  56                        PUSH ESI
0047f65b  57                        PUSH EDI
0047f65c  8bf9                      MOV EDI,ECX
0047f65e  0f57d2                    XORPS XMM2,XMM2
0047f661  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0047f666  0f2fc2                    COMISS XMM0,XMM2
0047f669  7645                      JBE 0x0047f6b0
0047f66b  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0047f66e  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0047f671  743d                      JZ 0x0047f6b0
0047f673  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0047f676  81e104000001              AND ECX,0x1000004
0047f67c  83c900                    OR ECX,0x0
0047f67f  7427                      JZ 0x0047f6a8
0047f681  83781001                  CMP dword ptr [EAX + 0x10],0x1
0047f685  7421                      JZ 0x0047f6a8
0047f687  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
0047f68a  83f901                    CMP ECX,0x1
0047f68d  7419                      JZ 0x0047f6a8
0047f68f  83f903                    CMP ECX,0x3
0047f692  7414                      JZ 0x0047f6a8
0047f694  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0047f699  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
0047f69d  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
0047f6a2  c70000000000              MOV dword ptr [EAX],0x0
0047f6a8  83c038                    ADD EAX,0x38
0047f6ab  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0047f6ae  75c3                      JNZ 0x0047f673
0047f6b0  83bfc00b000002            CMP dword ptr [EDI + 0xbc0],0x2
0047f6b7  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0047f6bf  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
0047f6c5  0f8505010000              JNZ 0x0047f7d0
0047f6cb  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0047f6d3  f30f5c4714                SUBSS XMM0,dword ptr [EDI + 0x14]
0047f6d8  0f2fd0                    COMISS XMM2,XMM0
0047f6db  0f86ef000000              JBE 0x0047f7d0
0047f6e1  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0047f6e4  89470c                    MOV dword ptr [EDI + 0xc],EAX
0047f6e7  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
0047f6ee  c7471800000000            MOV dword ptr [EDI + 0x18],0x0
0047f6f5  c7471c00000000            MOV dword ptr [EDI + 0x1c],0x0
0047f6fc  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0047f706  c7878003000000000000      MOV dword ptr [EDI + 0x380],0x0
0047f710  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047f71a  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0047f721  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
0047f72b  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0047f731  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
0047f737  83f812                    CMP EAX,0x12
0047f73a  750a                      JNZ 0x0047f746
0047f73c  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0047f744  eb0d                      JMP 0x0047f753
0047f746  83f813                    CMP EAX,0x13
0047f749  750e                      JNZ 0x0047f759
0047f74b  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0047f753  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0047f759  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0047f75f  8d4c2428                  LEA ECX,[ESP + 0x28]
0047f763  c7442428f2000000          MOV dword ptr [ESP + 0x28],0xf2
0047f76b  e810704d00                CALL 0x00956780
0047f770  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0047f776  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0047f77c  83ec08                    SUB ESP,0x8
0047f77f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0047f787  f30f110424                MOVSS dword ptr [ESP],XMM0
0047f78c  6a00                      PUSH 0x0
0047f78e  6a02                      PUSH 0x2
0047f790  51                        PUSH ECX
0047f791  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047f798  ff74243c                  PUSH dword ptr [ESP + 0x3c]
0047f79c  e88fe44a00                CALL 0x0092dc30
0047f7a1  6a01                      PUSH 0x1
0047f7a3  683ce1b100                PUSH 0xb1e13c
0047f7a8  8d4f48                    LEA ECX,[EDI + 0x48]
0047f7ab  e820aef8ff                CALL 0x0040a5d0
0047f7b0  84c0                      TEST AL,AL
0047f7b2  740f                      JZ 0x0047f7c3
0047f7b4  8d4f78                    LEA ECX,[EDI + 0x78]
0047f7b7  e8f4a9f8ff                CALL 0x0040a1b0
0047f7bc  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0047f7c3  8bcf                      MOV ECX,EDI
0047f7c5  e866ee2200                CALL 0x006ae630
0047f7ca  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
0047f7d0  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0047f7d7  0f8557010000              JNZ 0x0047f934
0047f7dd  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
0047f7e1  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0047f7eb  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0047f7f5  0f85a9000000              JNZ 0x0047f8a4
0047f7fb  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0047f801  83f812                    CMP EAX,0x12
0047f804  750a                      JNZ 0x0047f810
0047f806  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0047f80e  eb0d                      JMP 0x0047f81d
0047f810  83f813                    CMP EAX,0x13
0047f813  750e                      JNZ 0x0047f823
0047f815  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0047f81d  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0047f823  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0047f829  8d4c2410                  LEA ECX,[ESP + 0x10]
0047f82d  c7442410f6000000          MOV dword ptr [ESP + 0x10],0xf6
0047f835  e8466f4d00                CALL 0x00956780
0047f83a  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0047f840  83ec08                    SUB ESP,0x8
0047f843  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0047f84b  f30f110424                MOVSS dword ptr [ESP],XMM0
0047f850  6a00                      PUSH 0x0
0047f852  6a04                      PUSH 0x4
0047f854  51                        PUSH ECX
0047f855  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047f85c  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0047f862  ff742424                  PUSH dword ptr [ESP + 0x24]
0047f866  e8c5e34a00                CALL 0x0092dc30
0047f86b  c787c00b000004000000      MOV dword ptr [EDI + 0xbc0],0x4
0047f875  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0047f87f  c6877101000000            MOV byte ptr [EDI + 0x171],0x0
0047f886  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
0047f890  5f                        POP EDI
0047f891  5e                        POP ESI
0047f892  8b8c245c010000            MOV ECX,dword ptr [ESP + 0x15c]
0047f899  33cc                      XOR ECX,ESP
0047f89b  e88bf86600                CALL 0x00aef12b
0047f8a0  8be5                      MOV ESP,EBP
0047f8a2  5d                        POP EBP
0047f8a3  c3                        RET
0047f8a4  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
0047f8ab  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0047f8b1  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
0047f8b7  c7878403000000000000      MOV dword ptr [EDI + 0x384],0x0
0047f8c1  c7878003000000000000      MOV dword ptr [EDI + 0x380],0x0
0047f8cb  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0047f8ce  89470c                    MOV dword ptr [EDI + 0xc],EAX
0047f8d1  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
0047f8d8  c7471800000000            MOV dword ptr [EDI + 0x18],0x0
0047f8df  c7471c00000000            MOV dword ptr [EDI + 0x1c],0x0
0047f8e6  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047f8ee  f30f5805a0a9ba00          ADDSS XMM0,dword ptr [0x00baa9a0]
0047f8f6  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
0047f900  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0047f908  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0047f90e  898734030000              MOV dword ptr [EDI + 0x334],EAX
0047f914  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0047f91a  898738030000              MOV dword ptr [EDI + 0x338],EAX
0047f920  5f                        POP EDI
0047f921  5e                        POP ESI
0047f922  8b8c245c010000            MOV ECX,dword ptr [ESP + 0x15c]
0047f929  33cc                      XOR ECX,ESP
0047f92b  e8fbf76600                CALL 0x00aef12b
0047f930  8be5                      MOV ESP,EBP
0047f932  5d                        POP EBP
0047f933  c3                        RET
0047f934  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0047f93c  8db73c030000              LEA ESI,[EDI + 0x33c]
0047f942  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0047f94a  f30f102504a9ba00          MOVSS XMM4,dword ptr [0x00baa904]
0047f952  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
0047f95a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0047f962  f30f10874c030000          MOVSS XMM0,dword ptr [EDI + 0x34c]
0047f96a  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0047f96e  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0047f976  f30f5cc4                  SUBSS XMM0,XMM4
0047f97a  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
0047f97f  f30f2c97a4030000          CVTTSS2SI EDX,dword ptr [EDI + 0x3a4]
0047f987  f30f5ec4                  DIVSS XMM0,XMM4
0047f98b  2bd0                      SUB EDX,EAX
0047f98d  a17816c700                MOV EAX,[0x00c71678]
0047f992  89542428                  MOV dword ptr [ESP + 0x28],EDX
0047f996  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0047f99c  f30f589f50030000          ADDSS XMM3,dword ptr [EDI + 0x350]
0047f9a4  f30f58c2                  ADDSS XMM0,XMM2
0047f9a8  f30f2cc8                  CVTTSS2SI ECX,XMM0
0047f9ac  894c2410                  MOV dword ptr [ESP + 0x10],ECX
0047f9b0  85c9                      TEST ECX,ECX
0047f9b2  7839                      JS 0x0047f9ed
0047f9b4  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
0047f9b7  394c2410                  CMP dword ptr [ESP + 0x10],ECX
0047f9bb  7d30                      JGE 0x0047f9ed
0047f9bd  f30f5c1d00aaba00          SUBSS XMM3,dword ptr [0x00baaa00]
0047f9c5  f30f5edc                  DIVSS XMM3,XMM4
0047f9c9  f30f58da                  ADDSS XMM3,XMM2
0047f9cd  f30f2cd3                  CVTTSS2SI EDX,XMM3
0047f9d1  89542408                  MOV dword ptr [ESP + 0x8],EDX
0047f9d5  85d2                      TEST EDX,EDX
0047f9d7  7814                      JS 0x0047f9ed
0047f9d9  f30f2cd3                  CVTTSS2SI EDX,XMM3
0047f9dd  3b5010                    CMP EDX,dword ptr [EAX + 0x10]
0047f9e0  7d0b                      JGE 0x0047f9ed
0047f9e2  0faf4c2408                IMUL ECX,dword ptr [ESP + 0x8]
0047f9e7  034c2410                  ADD ECX,dword ptr [ESP + 0x10]
0047f9eb  eb03                      JMP 0x0047f9f0
0047f9ed  83c9ff                    OR ECX,0xffffffff
0047f9f0  83bfc00b000004            CMP dword ptr [EDI + 0xbc0],0x4
0047f9f7  894c2408                  MOV dword ptr [ESP + 0x8],ECX
0047f9fb  0f87c1190000              JA 0x004813c2
0047fa01  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
0047fa07  ff2495d8134800            JMP dword ptr [EDX*0x4 + 0x4813d8]
004813c2  8b8c2464010000            MOV ECX,dword ptr [ESP + 0x164]
004813c9  5f                        POP EDI
004813ca  5e                        POP ESI
004813cb  33cc                      XOR ECX,ESP
004813cd  e859dd6600                CALL 0x00aef12b
004813d2  8be5                      MOV ESP,EBP
004813d4  5d                        POP EBP
004813d5  c3                        RET
