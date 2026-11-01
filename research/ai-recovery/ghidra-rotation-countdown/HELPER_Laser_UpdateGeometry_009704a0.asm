; J460 NPC AI 0x009704a0 HELPER_Laser_UpdateGeometry
; types=7
; identities=7.*
; entry=009704a0
009704a0  55                        PUSH EBP
009704a1  8bec                      MOV EBP,ESP
009704a3  83e4f8                    AND ESP,0xfffffff8
009704a6  83ec70                    SUB ESP,0x70
009704a9  56                        PUSH ESI
009704aa  8bf1                      MOV ESI,ECX
009704ac  57                        PUSH EDI
009704ad  8974244c                  MOV dword ptr [ESP + 0x4c],ESI
009704b1  e8caf3ffff                CALL 0x0096f880
009704b6  837e2c04                  CMP dword ptr [ESI + 0x2c],0x4
009704ba  f30f10861c040000          MOVSS XMM0,dword ptr [ESI + 0x41c]
009704c2  0f28c8                    MOVAPS XMM1,XMM0
009704c5  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
009704cd  f30f114c242c              MOVSS dword ptr [ESP + 0x2c],XMM1
009704d3  0f8586000000              JNZ 0x0097055f
009704d9  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
009704e1  0f28c1                    MOVAPS XMM0,XMM1
009704e4  c7866004000000009643      MOV dword ptr [ESI + 0x460],0x43960000
009704ee  e84dd0aaff                CALL 0x0041d540
009704f3  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
009704fb  f30f590508abba00          MULSS XMM0,dword ptr [0x00baab08]
00970503  f30f588e4c030000          ADDSS XMM1,dword ptr [ESI + 0x34c]
0097050b  f30f58c1                  ADDSS XMM0,XMM1
0097050f  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00970515  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
0097051b  e800d0aaff                CALL 0x0041d520
00970520  f30f108e50030000          MOVSS XMM1,dword ptr [ESI + 0x350]
00970528  f30f588e40030000          ADDSS XMM1,dword ptr [ESI + 0x340]
00970530  f30f590508abba00          MULSS XMM0,dword ptr [0x00baab08]
00970538  f30f58c1                  ADDSS XMM0,XMM1
0097053c  f30f104c2438              MOVSS XMM1,dword ptr [ESP + 0x38]
00970542  f30f118ed8040000          MOVSS dword ptr [ESI + 0x4d8],XMM1
0097054a  f30f1186dc040000          MOVSS dword ptr [ESI + 0x4dc],XMM0
00970552  c6865d04000000            MOV byte ptr [ESI + 0x45d],0x0
00970559  5f                        POP EDI
0097055a  5e                        POP ESI
0097055b  8be5                      MOV ESP,EBP
0097055d  5d                        POP EBP
0097055e  c3                        RET
0097055f  0f28c1                    MOVAPS XMM0,XMM1
00970562  e8d9cfaaff                CALL 0x0041d540
00970567  f30f11442450              MOVSS dword ptr [ESP + 0x50],XMM0
0097056d  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00970573  e8a8cfaaff                CALL 0x0041d520
00970578  f30f104c2450              MOVSS XMM1,dword ptr [ESP + 0x50]
0097057e  f30f101540cbba00          MOVSS XMM2,dword ptr [0x00bacb40]
00970586  f30f101d10a0ba00          MOVSS XMM3,dword ptr [0x00baa010]
0097058e  0f54ca                    ANDPS XMM1,XMM2
00970591  0f2fd9                    COMISS XMM3,XMM1
00970594  f30f11442454              MOVSS dword ptr [ESP + 0x54],XMM0
0097059a  0f57c9                    XORPS XMM1,XMM1
0097059d  7606                      JBE 0x009705a5
0097059f  f30f114c2450              MOVSS dword ptr [ESP + 0x50],XMM1
009705a5  0f54c2                    ANDPS XMM0,XMM2
009705a8  0f2fd8                    COMISS XMM3,XMM0
009705ab  7609                      JBE 0x009705b6
009705ad  0f57c0                    XORPS XMM0,XMM0
009705b0  f30f11442454              MOVSS dword ptr [ESP + 0x54],XMM0
009705b6  8b86ec030000              MOV EAX,dword ptr [ESI + 0x3ec]
009705bc  8bce                      MOV ECX,ESI
009705be  c1e808                    SHR EAX,0x8
009705c1  2401                      AND AL,0x1
009705c3  888648010000              MOV byte ptr [ESI + 0x148],AL
009705c9  e842f60000                CALL 0x0097fc10
009705ce  51                        PUSH ECX
009705cf  8bce                      MOV ECX,ESI
009705d1  e84af20000                CALL 0x0097f820
009705d6  8a865d040000              MOV AL,byte ptr [ESI + 0x45d]
009705dc  84c0                      TEST AL,AL
009705de  0f8956010000              JNS 0x0097073a
009705e4  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
009705ea  85c9                      TEST ECX,ECX
009705ec  0f843e010000              JZ 0x00970730
009705f2  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
009705f5  83f801                    CMP EAX,0x1
009705f8  0f8428010000              JZ 0x00970726
009705fe  837e3401                  CMP dword ptr [ESI + 0x34],0x1
00970602  0f841e010000              JZ 0x00970726
00970608  83f83e                    CMP EAX,0x3e
0097060b  0f8415010000              JZ 0x00970726
00970611  3de8030000                CMP EAX,0x3e8
00970616  7512                      JNZ 0x0097062a
00970618  81792cb2000000            CMP dword ptr [ECX + 0x2c],0xb2
0097061f  0f85a0000000              JNZ 0x009706c5
00970625  e9fc000000                JMP 0x00970726
0097062a  3d07010000                CMP EAX,0x107
0097062f  0f84f1000000              JZ 0x00970726
00970635  3d0c010000                CMP EAX,0x10c
0097063a  0f84e6000000              JZ 0x00970726
00970640  3d9a010000                CMP EAX,0x19a
00970645  0f84db000000              JZ 0x00970726
0097064b  3d04010000                CMP EAX,0x104
00970650  750c                      JNZ 0x0097065e
00970652  83793002                  CMP dword ptr [ECX + 0x30],0x2
00970656  0f84ca000000              JZ 0x00970726
0097065c  eb67                      JMP 0x009706c5
0097065e  83f803                    CMP EAX,0x3
00970661  7562                      JNZ 0x009706c5
00970663  8b412c                    MOV EAX,dword ptr [ECX + 0x2c]
00970666  83f850                    CMP EAX,0x50
00970669  0f84b7000000              JZ 0x00970726
0097066f  83f878                    CMP EAX,0x78
00970672  0f84ae000000              JZ 0x00970726
00970678  8b8e28040000              MOV ECX,dword ptr [ESI + 0x428]
0097067e  230da04bc300              AND ECX,dword ptr [0x00c34ba0]
00970684  8b862c040000              MOV EAX,dword ptr [ESI + 0x42c]
0097068a  2305a44bc300              AND EAX,dword ptr [0x00c34ba4]
00970690  894c2468                  MOV dword ptr [ESP + 0x68],ECX
00970694  8b8e30040000              MOV ECX,dword ptr [ESI + 0x430]
0097069a  230da84bc300              AND ECX,dword ptr [0x00c34ba8]
009706a0  8944246c                  MOV dword ptr [ESP + 0x6c],EAX
009706a4  8b8634040000              MOV EAX,dword ptr [ESI + 0x434]
009706aa  2305ac4bc300              AND EAX,dword ptr [0x00c34bac]
009706b0  894c2470                  MOV dword ptr [ESP + 0x70],ECX
009706b4  8d4c2468                  LEA ECX,[ESP + 0x68]
009706b8  89442474                  MOV dword ptr [ESP + 0x74],EAX
009706bc  e8ef6aaaff                CALL 0x004171b0
009706c1  84c0                      TEST AL,AL
009706c3  7561                      JNZ 0x00970726
009706c5  80bec004000000            CMP byte ptr [ESI + 0x4c0],0x0
009706cc  7558                      JNZ 0x00970726
009706ce  8bce                      MOV ECX,ESI
009706d0  e87b58acff                CALL 0x00435f50
009706d5  84c0                      TEST AL,AL
009706d7  754d                      JNZ 0x00970726
009706d9  8b8e28040000              MOV ECX,dword ptr [ESI + 0x428]
009706df  230d704bc300              AND ECX,dword ptr [0x00c34b70]
009706e5  8b862c040000              MOV EAX,dword ptr [ESI + 0x42c]
009706eb  2305744bc300              AND EAX,dword ptr [0x00c34b74]
009706f1  894c2468                  MOV dword ptr [ESP + 0x68],ECX
009706f5  8b8e30040000              MOV ECX,dword ptr [ESI + 0x430]
009706fb  230d784bc300              AND ECX,dword ptr [0x00c34b78]
00970701  8944246c                  MOV dword ptr [ESP + 0x6c],EAX
00970705  8b8634040000              MOV EAX,dword ptr [ESI + 0x434]
0097070b  23057c4bc300              AND EAX,dword ptr [0x00c34b7c]
00970711  894c2470                  MOV dword ptr [ESP + 0x70],ECX
00970715  8d4c2468                  LEA ECX,[ESP + 0x68]
00970719  89442474                  MOV dword ptr [ESP + 0x74],EAX
0097071d  e88e6aaaff                CALL 0x004171b0
00970722  84c0                      TEST AL,AL
00970724  740a                      JZ 0x00970730
00970726  837e2c07                  CMP dword ptr [ESI + 0x2c],0x7
0097072a  7404                      JZ 0x00970730
0097072c  b001                      MOV AL,0x1
0097072e  eb02                      JMP 0x00970732
00970730  32c0                      XOR AL,AL
00970732  88865d040000              MOV byte ptr [ESI + 0x45d],AL
00970738  84c0                      TEST AL,AL
0097073a  7428                      JZ 0x00970764
0097073c  8bce                      MOV ECX,ESI
0097073e  e89dedffff                CALL 0x0096f4e0
00970743  8b4630                    MOV EAX,dword ptr [ESI + 0x30]
00970746  83f801                    CMP EAX,0x1
00970749  740e                      JZ 0x00970759
0097074b  83f802                    CMP EAX,0x2
0097074e  7409                      JZ 0x00970759
00970750  83f803                    CMP EAX,0x3
00970753  0f854c050000              JNZ 0x00970ca5
00970759  e842b30000                CALL 0x0097baa0
0097075e  5f                        POP EDI
0097075f  5e                        POP ESI
00970760  8be5                      MOV ESP,EBP
00970762  5d                        POP EBP
00970763  c3                        RET
00970764  f30f10ae4c030000          MOVSS XMM5,dword ptr [ESI + 0x34c]
0097076c  f30f10b650030000          MOVSS XMM6,dword ptr [ESI + 0x350]
00970774  f30f58ae3c030000          ADDSS XMM5,dword ptr [ESI + 0x33c]
0097077c  f30f58b640030000          ADDSS XMM6,dword ptr [ESI + 0x340]
00970784  8b8684010000              MOV EAX,dword ptr [ESI + 0x184]
0097078a  f30f116c240c              MOVSS dword ptr [ESP + 0xc],XMM5
00970790  f30f116c2460              MOVSS dword ptr [ESP + 0x60],XMM5
00970796  f30f11742410              MOVSS dword ptr [ESP + 0x10],XMM6
0097079c  f30f11742464              MOVSS dword ptr [ESP + 0x64],XMM6
009707a2  83f806                    CMP EAX,0x6
009707a5  0f8559040000              JNZ 0x00970c04
009707ab  f30f10542450              MOVSS XMM2,dword ptr [ESP + 0x50]
009707b1  8dbed8040000              LEA EDI,[ESI + 0x4d8]
009707b7  f30f104c2454              MOVSS XMM1,dword ptr [ESP + 0x54]
009707bd  0f28f2                    MOVAPS XMM6,XMM2
009707c0  f30f593534acba00          MULSS XMM6,dword ptr [0x00baac34]
009707c8  a17816c700                MOV EAX,[0x00c71678]
009707cd  f30f59155ca7ba00          MULSS XMM2,dword ptr [0x00baa75c]
009707d5  f30f1064240c              MOVSS XMM4,dword ptr [ESP + 0xc]
009707db  f30f58f5                  ADDSS XMM6,XMM5
009707df  f30f105c2410              MOVSS XMM3,dword ptr [ESP + 0x10]
009707e5  0f28e9                    MOVAPS XMM5,XMM1
009707e8  f30f592d34acba00          MULSS XMM5,dword ptr [0x00baac34]
009707f0  f30f5ce2                  SUBSS XMM4,XMM2
009707f4  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
009707fa  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
00970802  89542430                  MOV dword ptr [ESP + 0x30],EDX
00970806  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0097080e  f30f58eb                  ADDSS XMM5,XMM3
00970812  0f28c4                    MOVAPS XMM0,XMM4
00970815  f30f11742468              MOVSS dword ptr [ESP + 0x68],XMM6
0097081b  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
00970821  f30f5cd9                  SUBSS XMM3,XMM1
00970825  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
0097082b  f30f5cf4                  SUBSS XMM6,XMM4
0097082f  f30f11642434              MOVSS dword ptr [ESP + 0x34],XMM4
00970835  f30f116c246c              MOVSS dword ptr [ESP + 0x6c],XMM5
0097083b  0f28c3                    MOVAPS XMM0,XMM3
0097083e  f30f115c2438              MOVSS dword ptr [ESP + 0x38],XMM3
00970844  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0097084a  f30f5ceb                  SUBSS XMM5,XMM3
0097084e  f30f1144245c              MOVSS dword ptr [ESP + 0x5c],XMM0
00970854  0f28c4                    MOVAPS XMM0,XMM4
00970857  f30f5cc2                  SUBSS XMM0,XMM2
0097085b  f30f1174243c              MOVSS dword ptr [ESP + 0x3c],XMM6
00970861  f30f116c2440              MOVSS dword ptr [ESP + 0x40],XMM5
00970867  f30f5ec2                  DIVSS XMM0,XMM2
0097086b  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00970873  f30f2cc0                  CVTTSS2SI EAX,XMM0
00970877  0f28c3                    MOVAPS XMM0,XMM3
0097087a  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
00970882  89442418                  MOV dword ptr [ESP + 0x18],EAX
00970886  33c0                      XOR EAX,EAX
00970888  f30f5ec2                  DIVSS XMM0,XMM2
0097088c  0f57d2                    XORPS XMM2,XMM2
0097088f  0f2ff2                    COMISS XMM6,XMM2
00970892  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0097089a  0f97c0                    SETA AL
0097089d  f30f2cc8                  CVTTSS2SI ECX,XMM0
009708a1  8d0445ffffffff            LEA EAX,[EAX*0x2 + 0xffffffff]
009708a8  89442414                  MOV dword ptr [ESP + 0x14],EAX
009708ac  33c0                      XOR EAX,EAX
009708ae  0f57c0                    XORPS XMM0,XMM0
009708b1  0f2fea                    COMISS XMM5,XMM2
009708b4  894c2420                  MOV dword ptr [ESP + 0x20],ECX
009708b8  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
009708be  0f97c0                    SETA AL
009708c1  0f2e3540b6c700            UCOMISS XMM6,dword ptr [0x00c7b640]
009708c8  8d0445ffffffff            LEA EAX,[EAX*0x2 + 0xffffffff]
009708cf  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
009708d3  9f                        LAHF
009708d4  f6c444                    TEST AH,0x44
009708d7  7a11                      JP 0x009708ea
009708d9  0f2e2d44b6c700            UCOMISS XMM5,dword ptr [0x00c7b644]
009708e0  9f                        LAHF
009708e1  f6c444                    TEST AH,0x44
009708e4  0f8bb3010000              JNP 0x00970a9d
009708ea  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
009708ee  8d0489                    LEA EAX,[ECX + ECX*0x4]
009708f1  c1e003                    SHL EAX,0x3
009708f4  89442424                  MOV dword ptr [ESP + 0x24],EAX
009708f8  8d04b6                    LEA EAX,[ESI + ESI*0x4]
009708fb  c1e003                    SHL EAX,0x3
009708fe  89442418                  MOV dword ptr [ESP + 0x18],EAX
00970902  8b44241c                  MOV EAX,dword ptr [ESP + 0x1c]
00970906  8d0480                    LEA EAX,[EAX + EAX*0x4]
00970909  c1e003                    SHL EAX,0x3
0097090c  89442448                  MOV dword ptr [ESP + 0x48],EAX
00970910  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
00970914  8d0480                    LEA EAX,[EAX + EAX*0x4]
00970917  c1e003                    SHL EAX,0x3
0097091a  89442444                  MOV dword ptr [ESP + 0x44],EAX
0097091e  6690                      NOP
00970920  85f6                      TEST ESI,ESI
00970922  7831                      JS 0x00970955
00970924  8b420c                    MOV EAX,dword ptr [EDX + 0xc]
00970927  3bf0                      CMP ESI,EAX
00970929  7d2a                      JGE 0x00970955
0097092b  85c9                      TEST ECX,ECX
0097092d  7826                      JS 0x00970955
0097092f  3b4a10                    CMP ECX,dword ptr [EDX + 0x10]
00970932  7d21                      JGE 0x00970955
00970934  8bf9                      MOV EDI,ECX
00970936  8bca                      MOV ECX,EDX
00970938  0faff8                    IMUL EDI,EAX
0097093b  03fe                      ADD EDI,ESI
0097093d  57                        PUSH EDI
0097093e  e8bdfee7ff                CALL 0x007f0800
00970943  81ffbf010000              CMP EDI,0x1bf
00970949  7713                      JA 0x0097095e
0097094b  8b542430                  MOV EDX,dword ptr [ESP + 0x30]
0097094f  8b4cba24                  MOV ECX,dword ptr [EDX + EDI*0x4 + 0x24]
00970953  eb0f                      JMP 0x00970964
00970955  6aff                      PUSH -0x1
00970957  8bca                      MOV ECX,EDX
00970959  e8a2fee7ff                CALL 0x007f0800
0097095e  8b542430                  MOV EDX,dword ptr [ESP + 0x30]
00970962  33c9                      XOR ECX,ECX
00970964  83f802                    CMP EAX,0x2
00970967  740f                      JZ 0x00970978
00970969  83f803                    CMP EAX,0x3
0097096c  740a                      JZ 0x00970978
0097096e  83f804                    CMP EAX,0x4
00970971  7405                      JZ 0x00970978
00970973  83f805                    CMP EAX,0x5
00970976  7519                      JNZ 0x00970991
00970978  85c9                      TEST ECX,ECX
0097097a  0f840d010000              JZ 0x00970a8d
00970980  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
00970983  83f80f                    CMP EAX,0xf
00970986  7409                      JZ 0x00970991
00970988  83f810                    CMP EAX,0x10
0097098b  0f85fc000000              JNZ 0x00970a8d
00970991  f30f1074243c              MOVSS XMM6,dword ptr [ESP + 0x3c]
00970997  0f57d2                    XORPS XMM2,XMM2
0097099a  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
0097099e  f30f103dd0acba00          MOVSS XMM7,dword ptr [0x00baacd0]
009709a6  0f2ef2                    UCOMISS XMM6,XMM2
009709a9  9f                        LAHF
009709aa  f6c444                    TEST AH,0x44
009709ad  7b20                      JNP 0x009709cf
009709af  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
009709b3  8d0480                    LEA EAX,[EAX + EAX*0x4]
009709b6  83c00a                    ADD EAX,0xa
009709b9  8d0481                    LEA EAX,[ECX + EAX*0x4]
009709bc  660f6ec8                  MOVD XMM1,EAX
009709c0  0f5bc9                    CVTDQ2PS XMM1,XMM1
009709c3  f30f5c4c2428              SUBSS XMM1,dword ptr [ESP + 0x28]
009709c9  f30f5ece                  DIVSS XMM1,XMM6
009709cd  eb03                      JMP 0x009709d2
009709cf  0f28cf                    MOVAPS XMM1,XMM7
009709d2  f30f106c2440              MOVSS XMM5,dword ptr [ESP + 0x40]
009709d8  8b7c2424                  MOV EDI,dword ptr [ESP + 0x24]
009709dc  0f2eea                    UCOMISS XMM5,XMM2
009709df  9f                        LAHF
009709e0  f6c444                    TEST AH,0x44
009709e3  7b20                      JNP 0x00970a05
009709e5  8b44241c                  MOV EAX,dword ptr [ESP + 0x1c]
009709e9  8d0480                    LEA EAX,[EAX + EAX*0x4]
009709ec  83c01e                    ADD EAX,0x1e
009709ef  8d0487                    LEA EAX,[EDI + EAX*0x4]
009709f2  660f6ec0                  MOVD XMM0,EAX
009709f6  0f5bc0                    CVTDQ2PS XMM0,XMM0
009709f9  f30f5c44242c              SUBSS XMM0,dword ptr [ESP + 0x2c]
009709ff  f30f5ec5                  DIVSS XMM0,XMM5
00970a03  eb03                      JMP 0x00970a08
00970a05  0f28c7                    MOVAPS XMM0,XMM7
00970a08  0f2fc1                    COMISS XMM0,XMM1
00970a0b  0f28de                    MOVAPS XMM3,XMM6
00970a0e  0f28e5                    MOVAPS XMM4,XMM5
00970a11  761b                      JBE 0x00970a2e
00970a13  f30f584c2408              ADDSS XMM1,dword ptr [ESP + 0x8]
00970a19  03742414                  ADD ESI,dword ptr [ESP + 0x14]
00970a1d  034c2444                  ADD ECX,dword ptr [ESP + 0x44]
00970a21  894c2418                  MOV dword ptr [ESP + 0x18],ECX
00970a25  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
00970a29  0f28c1                    MOVAPS XMM0,XMM1
00970a2c  eb1a                      JMP 0x00970a48
00970a2e  8b4c2420                  MOV ECX,dword ptr [ESP + 0x20]
00970a32  034c241c                  ADD ECX,dword ptr [ESP + 0x1c]
00970a36  037c2448                  ADD EDI,dword ptr [ESP + 0x48]
00970a3a  f30f58442408              ADDSS XMM0,dword ptr [ESP + 0x8]
00970a40  894c2420                  MOV dword ptr [ESP + 0x20],ECX
00970a44  897c2424                  MOV dword ptr [ESP + 0x24],EDI
00970a48  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00970a50  0f2fc8                    COMISS XMM1,XMM0
00970a53  f30f59e0                  MULSS XMM4,XMM0
00970a57  f30f59d8                  MULSS XMM3,XMM0
00970a5b  f30f58642438              ADDSS XMM4,dword ptr [ESP + 0x38]
00970a61  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00970a67  f30f585c2434              ADDSS XMM3,dword ptr [ESP + 0x34]
00970a6d  f30f1164245c              MOVSS dword ptr [ESP + 0x5c],XMM4
00970a73  f30f1164242c              MOVSS dword ptr [ESP + 0x2c],XMM4
00970a79  f30f115c2458              MOVSS dword ptr [ESP + 0x58],XMM3
00970a7f  f30f115c2428              MOVSS dword ptr [ESP + 0x28],XMM3
00970a85  0f8795feffff              JA 0x00970920
00970a8b  eb06                      JMP 0x00970a93
00970a8d  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
00970a93  8b74244c                  MOV ESI,dword ptr [ESP + 0x4c]
00970a97  8dbed8040000              LEA EDI,[ESI + 0x4d8]
00970a9d  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00970aa5  85ff                      TEST EDI,EDI
00970aa7  7418                      JZ 0x00970ac1
00970aa9  0f2fc1                    COMISS XMM0,XMM1
00970aac  8d442458                  LEA EAX,[ESP + 0x58]
00970ab0  8d4c2468                  LEA ECX,[ESP + 0x68]
00970ab4  0f42c8                    CMOVC ECX,EAX
00970ab7  8b01                      MOV EAX,dword ptr [ECX]
00970ab9  8907                      MOV dword ptr [EDI],EAX
00970abb  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
00970abe  894704                    MOV dword ptr [EDI + 0x4],EAX
00970ac1  0f2fc1                    COMISS XMM0,XMM1
00970ac4  7238                      JC 0x00970afe
00970ac6  8d442450                  LEA EAX,[ESP + 0x50]
00970aca  8bce                      MOV ECX,ESI
00970acc  50                        PUSH EAX
00970acd  8d442464                  LEA EAX,[ESP + 0x64]
00970ad1  50                        PUSH EAX
00970ad2  8d442470                  LEA EAX,[ESP + 0x70]
00970ad6  50                        PUSH EAX
00970ad7  e894f1ffff                CALL 0x0096fc70
00970adc  f30f108e4c030000          MOVSS XMM1,dword ptr [ESI + 0x34c]
00970ae4  f30f108650030000          MOVSS XMM0,dword ptr [ESI + 0x350]
00970aec  f30f5808                  ADDSS XMM1,dword ptr [EAX]
00970af0  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
00970af5  f30f110f                  MOVSS dword ptr [EDI],XMM1
00970af9  f30f114704                MOVSS dword ptr [EDI + 0x4],XMM0
00970afe  f30f106c240c              MOVSS XMM5,dword ptr [ESP + 0xc]
00970b04  f30f10742410              MOVSS XMM6,dword ptr [ESP + 0x10]
00970b0a  f30f1096d0040000          MOVSS XMM2,dword ptr [ESI + 0x4d0]
00970b12  0f57c0                    XORPS XMM0,XMM0
00970b15  0f2fd0                    COMISS XMM2,XMM0
00970b18  767b                      JBE 0x00970b95
00970b1a  f30f101f                  MOVSS XMM3,dword ptr [EDI]
00970b1e  0f28c5                    MOVAPS XMM0,XMM5
00970b21  f30f106704                MOVSS XMM4,dword ptr [EDI + 0x4]
00970b26  f30f5cc3                  SUBSS XMM0,XMM3
00970b2a  0f28ce                    MOVAPS XMM1,XMM6
00970b2d  f30f5ccc                  SUBSS XMM1,XMM4
00970b31  f30f59c0                  MULSS XMM0,XMM0
00970b35  f30f59c9                  MULSS XMM1,XMM1
00970b39  f30f58c8                  ADDSS XMM1,XMM0
00970b3d  0f28c2                    MOVAPS XMM0,XMM2
00970b40  f30f59c2                  MULSS XMM0,XMM2
00970b44  0f2fc8                    COMISS XMM1,XMM0
00970b47  764c                      JBE 0x00970b95
00970b49  f30f5cdd                  SUBSS XMM3,XMM5
00970b4d  f30f5ce6                  SUBSS XMM4,XMM6
00970b51  51                        PUSH ECX
00970b52  8d442464                  LEA EAX,[ESP + 0x64]
00970b56  f30f111424                MOVSS dword ptr [ESP],XMM2
00970b5b  50                        PUSH EAX
00970b5c  8d4c2470                  LEA ECX,[ESP + 0x70]
00970b60  f30f115c2470              MOVSS dword ptr [ESP + 0x70],XMM3
00970b66  f30f11642474              MOVSS dword ptr [ESP + 0x74],XMM4
00970b6c  e88ff50900                CALL 0x00a10100
00970b71  f30f106c240c              MOVSS XMM5,dword ptr [ESP + 0xc]
00970b77  f30f10742410              MOVSS XMM6,dword ptr [ESP + 0x10]
00970b7d  0f28cd                    MOVAPS XMM1,XMM5
00970b80  0f28c6                    MOVAPS XMM0,XMM6
00970b83  f30f5808                  ADDSS XMM1,dword ptr [EAX]
00970b87  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
00970b8c  f30f110f                  MOVSS dword ptr [EDI],XMM1
00970b90  f30f114704                MOVSS dword ptr [EDI + 0x4],XMM0
00970b95  f30f100f                  MOVSS XMM1,dword ptr [EDI]
00970b99  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
00970b9e  f30f5ccd                  SUBSS XMM1,XMM5
00970ba2  f30f5cc6                  SUBSS XMM0,XMM6
00970ba6  f30f59c9                  MULSS XMM1,XMM1
00970baa  f30f59c0                  MULSS XMM0,XMM0
00970bae  f30f58c1                  ADDSS XMM0,XMM1
00970bb2  e8994eacff                CALL 0x00435a50
00970bb7  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
00970bba  0f28c8                    MOVAPS XMM1,XMM0
00970bbd  f30f118e60040000          MOVSS dword ptr [ESI + 0x460],XMM1
00970bc5  83f806                    CMP EAX,0x6
00970bc8  7409                      JZ 0x00970bd3
00970bca  83f80f                    CMP EAX,0xf
00970bcd  0f85b8000000              JNZ 0x00970c8b
00970bd3  817e349a010000            CMP dword ptr [ESI + 0x34],0x19a
00970bda  0f859b000000              JNZ 0x00970c7b
00970be0  f30f1005b0a9ba00          MOVSS XMM0,dword ptr [0x00baa9b0]
00970be8  0f2fc1                    COMISS XMM0,XMM1
00970beb  7706                      JA 0x00970bf3
00970bed  f30f10c1                  MOVSS XMM0,XMM1
00970bf1  eb04                      JMP 0x00970bf7
00970bf3  f30f10c0                  MOVSS XMM0,XMM0
00970bf7  f30f118660040000          MOVSS dword ptr [ESI + 0x460],XMM0
00970bff  e987000000                JMP 0x00970c8b
00970c04  83f803                    CMP EAX,0x3
00970c07  753a                      JNZ 0x00970c43
00970c09  8d442450                  LEA EAX,[ESP + 0x50]
00970c0d  8bce                      MOV ECX,ESI
00970c0f  50                        PUSH EAX
00970c10  8d442464                  LEA EAX,[ESP + 0x64]
00970c14  50                        PUSH EAX
00970c15  8d442470                  LEA EAX,[ESP + 0x70]
00970c19  50                        PUSH EAX
00970c1a  e851f0ffff                CALL 0x0096fc70
00970c1f  f30f108e4c030000          MOVSS XMM1,dword ptr [ESI + 0x34c]
00970c27  8dbed8040000              LEA EDI,[ESI + 0x4d8]
00970c2d  f30f108650030000          MOVSS XMM0,dword ptr [ESI + 0x350]
00970c35  f30f5808                  ADDSS XMM1,dword ptr [EAX]
00970c39  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
00970c3e  e9b2feffff                JMP 0x00970af5
00970c43  f30f10542450              MOVSS XMM2,dword ptr [ESP + 0x50]
00970c49  8dbed8040000              LEA EDI,[ESI + 0x4d8]
00970c4f  f30f104c2454              MOVSS XMM1,dword ptr [ESP + 0x54]
00970c55  f30f5915c4abba00          MULSS XMM2,dword ptr [0x00baabc4]
00970c5d  f30f590dc4abba00          MULSS XMM1,dword ptr [0x00baabc4]
00970c65  f30f58d5                  ADDSS XMM2,XMM5
00970c69  f30f58ce                  ADDSS XMM1,XMM6
00970c6d  f30f1117                  MOVSS dword ptr [EDI],XMM2
00970c71  f30f114f04                MOVSS dword ptr [EDI + 0x4],XMM1
00970c76  e98ffeffff                JMP 0x00970b0a
00970c7b  f30f580dd0a9ba00          ADDSS XMM1,dword ptr [0x00baa9d0]
00970c83  f30f118e60040000          MOVSS dword ptr [ESI + 0x460],XMM1
00970c8b  f30f10861c040000          MOVSS XMM0,dword ptr [ESI + 0x41c]
00970c93  8bce                      MOV ECX,ESI
00970c95  f30f5c05b4a9ba00          SUBSS XMM0,dword ptr [0x00baa9b4]
00970c9d  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
00970ca5  e8b62f0000                CALL 0x00973c60
00970caa  5f                        POP EDI
00970cab  5e                        POP ESI
00970cac  8be5                      MOV ESP,EBP
00970cae  5d                        POP EBP
00970caf  c3                        RET
