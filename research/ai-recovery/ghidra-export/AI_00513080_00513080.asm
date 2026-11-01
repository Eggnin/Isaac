; J460 NPC AI 0x00513080 AI_00513080
; types=12,248
; identities=12.0.0,248.0.0
; entry=00513080
00513080  55                        PUSH EBP
00513081  8bec                      MOV EBP,ESP
00513083  83e4f8                    AND ESP,0xfffffff8
00513086  81ec1c010000              SUB ESP,0x11c
0051308c  a1b493bf00                MOV EAX,[0x00bf93b4]
00513091  33c4                      XOR EAX,ESP
00513093  89842418010000            MOV dword ptr [ESP + 0x118],EAX
0051309a  53                        PUSH EBX
0051309b  56                        PUSH ESI
0051309c  57                        PUSH EDI
0051309d  8bf9                      MOV EDI,ECX
0051309f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005130a7  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005130af  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
005130b5  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005130bd  85d2                      TEST EDX,EDX
005130bf  0f8e87000000              JLE 0x0051314c
005130c5  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
005130cd  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
005130d5  2bc8                      SUB ECX,EAX
005130d7  03ca                      ADD ECX,EDX
005130d9  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005130e0  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
005130e6  751a                      JNZ 0x00513102
005130e8  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005130f0  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
005130f8  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00513100  eb42                      JMP 0x00513144
00513102  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0051310a  8d442418                  LEA EAX,[ESP + 0x18]
0051310e  50                        PUSH EAX
0051310f  8bcf                      MOV ECX,EDI
00513111  e88a541c00                CALL 0x006d85a0
00513116  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
0051311c  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
00513123  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
00513129  9f                        LAHF
0051312a  f6c444                    TEST AH,0x44
0051312d  7a0d                      JP 0x0051313c
0051312f  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00513136  9f                        LAHF
00513137  f6c444                    TEST AH,0x44
0051313a  7b10                      JNP 0x0051314c
0051313c  f30f118f200f0000          MOVSS dword ptr [EDI + 0xf20],XMM1
00513144  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
0051314c  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00513153  0f8fad000000              JG 0x00513206
00513159  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
00513161  8bcf                      MOV ECX,EDI
00513163  6a07                      PUSH 0x7
00513165  6a00                      PUSH 0x0
00513167  e8f47c1b00                CALL 0x006cae60
0051316c  84c0                      TEST AL,AL
0051316e  0f8492000000              JZ 0x00513206
00513174  a17816c700                MOV EAX,[0x00c71678]
00513179  8b80c8690200              MOV EAX,dword ptr [EAX + 0x269c8]
0051317f  83f801                    CMP EAX,0x1
00513182  7409                      JZ 0x0051318d
00513184  83f803                    CMP EAX,0x3
00513187  7404                      JZ 0x0051318d
00513189  33c0                      XOR EAX,EAX
0051318b  eb05                      JMP 0x00513192
0051318d  b801000000                MOV EAX,0x1
00513192  33c9                      XOR ECX,ECX
00513194  3bc8                      CMP ECX,EAX
00513196  8d4f48                    LEA ECX,[EDI + 0x48]
00513199  6a00                      PUSH 0x0
0051319b  1bc0                      SBB EAX,EAX
0051319d  83e0f2                    AND EAX,0xfffffff2
005131a0  83c01c                    ADD EAX,0x1c
005131a3  6854ddb100                PUSH 0xb1dd54
005131a8  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
005131ae  e8cd71efff                CALL 0x0040a380
005131b3  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005131ba  751a                      JNZ 0x005131d6
005131bc  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005131c4  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
005131cc  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005131d4  eb28                      JMP 0x005131fe
005131d6  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
005131de  8d442418                  LEA EAX,[ESP + 0x18]
005131e2  50                        PUSH EAX
005131e3  8bcf                      MOV ECX,EDI
005131e5  e8b6531c00                CALL 0x006d85a0
005131ea  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
005131f0  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
005131f8  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
005131fe  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
00513206  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051320a  0f8437030000              JZ 0x00513547
00513210  68dcd2b100                PUSH 0xb1d2dc
00513215  8d4f78                    LEA ECX,[EDI + 0x78]
00513218  e8b37befff                CALL 0x0040add0
0051321d  84c0                      TEST AL,AL
0051321f  0f8413030000              JZ 0x00513538
00513225  8bcf                      MOV ECX,EDI
00513227  e814b61a00                CALL 0x006be840
0051322c  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00513233  8d9f3c030000              LEA EBX,[EDI + 0x33c]
00513239  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00513241  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00513249  f30f5c13                  SUBSS XMM2,dword ptr [EBX]
0051324d  f30f5c4b04                SUBSS XMM1,dword ptr [EBX + 0x4]
00513252  f30f11542420              MOVSS dword ptr [ESP + 0x20],XMM2
00513258  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
0051325e  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00513264  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
0051326a  744d                      JZ 0x005132b9
0051326c  f30f109f200f0000          MOVSS XMM3,dword ptr [EDI + 0xf20]
00513274  0f2e1d40b6c700            UCOMISS XMM3,dword ptr [0x00c7b640]
0051327b  9f                        LAHF
0051327c  f6c444                    TEST AH,0x44
0051327f  7a15                      JP 0x00513296
00513281  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
00513289  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00513290  9f                        LAHF
00513291  f6c444                    TEST AH,0x44
00513294  7b23                      JNP 0x005132b9
00513296  f30f108f240f0000          MOVSS XMM1,dword ptr [EDI + 0xf24]
0051329e  0f28d3                    MOVAPS XMM2,XMM3
005132a1  f30f11542420              MOVSS dword ptr [ESP + 0x20],XMM2
005132a7  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
005132ad  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
005132b3  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
005132b9  a17816c700                MOV EAX,[0x00c71678]
005132be  8b80c8690200              MOV EAX,dword ptr [EAX + 0x269c8]
005132c4  83f801                    CMP EAX,0x1
005132c7  740f                      JZ 0x005132d8
005132c9  83f803                    CMP EAX,0x3
005132cc  740a                      JZ 0x005132d8
005132ce  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
005132d6  eb08                      JMP 0x005132e0
005132d8  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
005132e0  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
005132e6  0f28c1                    MOVAPS XMM0,XMM1
005132e9  f30f59c1                  MULSS XMM0,XMM1
005132ed  0f28ca                    MOVAPS XMM1,XMM2
005132f0  f30f59ca                  MULSS XMM1,XMM2
005132f4  f30f58c1                  ADDSS XMM0,XMM1
005132f8  e85327f2ff                CALL 0x00435a50
005132fd  0f57c9                    XORPS XMM1,XMM1
00513300  0f2fc1                    COMISS XMM0,XMM1
00513303  7625                      JBE 0x0051332a
00513305  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
0051330b  f30f5ec8                  DIVSS XMM1,XMM0
0051330f  0f28c1                    MOVAPS XMM0,XMM1
00513312  f30f594c2410              MULSS XMM1,dword ptr [ESP + 0x10]
00513318  f30f59442420              MULSS XMM0,dword ptr [ESP + 0x20]
0051331e  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
00513324  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0051332a  8d8c24f8000000            LEA ECX,[ESP + 0xf8]
00513331  e83a3eefff                CALL 0x00407170
00513336  8bf0                      MOV ESI,EAX
00513338  e823bc1d00                CALL 0x006eef60
0051333d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00513343  50                        PUSH EAX
00513344  6a05                      PUSH 0x5
00513346  6a00                      PUSH 0x0
00513348  6840b6c700                PUSH 0xc7b640
0051334d  53                        PUSH EBX
0051334e  6a02                      PUSH 0x2
00513350  68e8030000                PUSH 0x3e8
00513355  e8c657f1ff                CALL 0x00428b20
0051335a  6a01                      PUSH 0x1
0051335c  8bd8                      MOV EBX,EAX
0051335e  6a00                      PUSH 0x0
00513360  68ff000000                PUSH 0xff
00513365  6aff                      PUSH -0x1
00513367  8b13                      MOV EDX,dword ptr [EBX]
00513369  8bcb                      MOV ECX,EBX
0051336b  56                        PUSH ESI
0051336c  ff523c                    CALL dword ptr [EDX + 0x3c]
0051336f  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00513377  8db3bc030000              LEA ESI,[EBX + 0x3bc]
0051337d  c783dc00000000000000      MOV dword ptr [EBX + 0xdc],0x0
00513387  c783e0000000000020c1      MOV dword ptr [EBX + 0xe0],0xc1200000
00513391  8b0e                      MOV ECX,dword ptr [ESI]
00513393  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00513399  c783580300000000803f      MOV dword ptr [EBX + 0x358],0x3f800000
005133a3  85c9                      TEST ECX,ECX
005133a5  7414                      JZ 0x005133bb
005133a7  8d442410                  LEA EAX,[ESP + 0x10]
005133ab  89742410                  MOV dword ptr [ESP + 0x10],ESI
005133af  50                        PUSH EAX
005133b0  81c1cc030000              ADD ECX,0x3cc
005133b6  e855befbff                CALL 0x004cf210
005133bb  56                        PUSH ESI
005133bc  8bcf                      MOV ECX,EDI
005133be  893e                      MOV dword ptr [ESI],EDI
005133c0  e82ba9fbff                CALL 0x004cdcf0
005133c5  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
005133cd  8db73c030000              LEA ESI,[EDI + 0x33c]
005133d3  f30f108b3c030000          MOVSS XMM1,dword ptr [EBX + 0x33c]
005133db  8d4c2424                  LEA ECX,[ESP + 0x24]
005133df  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
005133e4  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
005133e8  6a01                      PUSH 0x1
005133ea  6a00                      PUSH 0x0
005133ec  68ff000000                PUSH 0xff
005133f1  f30f11836c040000          MOVSS dword ptr [EBX + 0x46c],XMM0
005133f9  0f2805a0bbba00            MOVAPS XMM0,xmmword ptr [0x00babba0]
00513400  f30f118b68040000          MOVSS dword ptr [EBX + 0x468],XMM1
00513408  c6834801000001            MOV byte ptr [EBX + 0x148],0x1
0051340f  8b03                      MOV EAX,dword ptr [EBX]
00513411  6aff                      PUSH -0x1
00513413  0f11442434                MOVUPS xmmword ptr [ESP + 0x34],XMM0
00513418  c6836404000001            MOV byte ptr [EBX + 0x464],0x1
0051341f  0f57c0                    XORPS XMM0,XMM0
00513422  c74424549a99193f          MOV dword ptr [ESP + 0x54],0x3f19999a
0051342a  51                        PUSH ECX
0051342b  8bcb                      MOV ECX,EBX
0051342d  c744245ccdcccc3d          MOV dword ptr [ESP + 0x5c],0x3dcccccd
00513435  0f11442448                MOVUPS xmmword ptr [ESP + 0x48],XMM0
0051343a  c7442460cdcccc3d          MOV dword ptr [ESP + 0x60],0x3dcccccd
00513442  ff503c                    CALL dword ptr [EAX + 0x3c]
00513445  8d4c2450                  LEA ECX,[ESP + 0x50]
00513449  e8e2baf2ff                CALL 0x0043ef30
0051344e  817f28f8000000            CMP dword ptr [EDI + 0x28],0xf8
00513455  755d                      JNZ 0x005134b4
00513457  8b8424ac000000            MOV EAX,dword ptr [ESP + 0xac]
0051345e  8d4c2424                  LEA ECX,[ESP + 0x24]
00513462  0f280520bdba00            MOVAPS XMM0,xmmword ptr [0x00babd20]
00513469  838c24a800000001          OR dword ptr [ESP + 0xa8],0x1
00513471  6a01                      PUSH 0x1
00513473  6a00                      PUSH 0x0
00513475  68ff000000                PUSH 0xff
0051347a  898424b8000000            MOV dword ptr [ESP + 0xb8],EAX
00513481  8b03                      MOV EAX,dword ptr [EBX]
00513483  6aff                      PUSH -0x1
00513485  0f11442434                MOVUPS xmmword ptr [ESP + 0x34],XMM0
0051348a  51                        PUSH ECX
0051348b  0f280500c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac700]
00513492  8bcb                      MOV ECX,EBX
00513494  0f11442448                MOVUPS xmmword ptr [ESP + 0x48],XMM0
00513499  c7442458b81e853e          MOV dword ptr [ESP + 0x58],0x3e851eb8
005134a1  c744245ccdcc4c3d          MOV dword ptr [ESP + 0x5c],0x3d4ccccd
005134a9  c7442460cdcccc3e          MOV dword ptr [ESP + 0x60],0x3ecccccd
005134b1  ff503c                    CALL dword ptr [EAX + 0x3c]
005134b4  8d442450                  LEA EAX,[ESP + 0x50]
005134b8  8bcf                      MOV ECX,EDI
005134ba  50                        PUSH EAX
005134bb  6a00                      PUSH 0x0
005134bd  8d442420                  LEA EAX,[ESP + 0x20]
005134c1  50                        PUSH EAX
005134c2  56                        PUSH ESI
005134c3  e8187e1b00                CALL 0x006cb2e0
005134c8  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
005134ce  83f812                    CMP EAX,0x12
005134d1  750a                      JNZ 0x005134dd
005134d3  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
005134db  eb0d                      JMP 0x005134ea
005134dd  83f813                    CMP EAX,0x13
005134e0  750e                      JNZ 0x005134f0
005134e2  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
005134ea  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
005134f0  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005134f6  8d4c2410                  LEA ECX,[ESP + 0x10]
005134fa  c744241092000000          MOV dword ptr [ESP + 0x10],0x92
00513502  e879324400                CALL 0x00956780
00513507  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0051350d  83ec08                    SUB ESP,0x8
00513510  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00513518  f30f110424                MOVSS dword ptr [ESP],XMM0
0051351d  6a00                      PUSH 0x0
0051351f  6a02                      PUSH 0x2
00513521  51                        PUSH ECX
00513522  c704240000803f            MOV dword ptr [ESP],0x3f800000
00513529  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0051352f  ff742424                  PUSH dword ptr [ESP + 0x24]
00513533  e8f8a64100                CALL 0x0092dc30
00513538  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051353c  7409                      JZ 0x00513547
0051353e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00513545  7571                      JNZ 0x005135b8
00513547  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0051354a  85f6                      TEST ESI,ESI
0051354c  7448                      JZ 0x00513596
0051354e  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00513552  8bc6                      MOV EAX,ESI
00513554  7202                      JC 0x00513558
00513556  8b06                      MOV EAX,dword ptr [ESI]
00513558  b93cd6b100                MOV ECX,0xb1d63c
0051355d  0f1f00                    NOP dword ptr [EAX]
00513560  8a10                      MOV DL,byte ptr [EAX]
00513562  3a11                      CMP DL,byte ptr [ECX]
00513564  751a                      JNZ 0x00513580
00513566  84d2                      TEST DL,DL
00513568  7412                      JZ 0x0051357c
0051356a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0051356d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00513570  750e                      JNZ 0x00513580
00513572  83c002                    ADD EAX,0x2
00513575  83c102                    ADD ECX,0x2
00513578  84d2                      TEST DL,DL
0051357a  75e4                      JNZ 0x00513560
0051357c  33c0                      XOR EAX,EAX
0051357e  eb05                      JMP 0x00513585
00513580  1bc0                      SBB EAX,EAX
00513582  83c801                    OR EAX,0x1
00513585  85c0                      TEST EAX,EAX
00513587  750d                      JNZ 0x00513596
00513589  384634                    CMP byte ptr [ESI + 0x34],AL
0051358c  742a                      JZ 0x005135b8
0051358e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00513594  7522                      JNZ 0x005135b8
00513596  6a01                      PUSH 0x1
00513598  683cd6b100                PUSH 0xb1d63c
0051359d  8d4f48                    LEA ECX,[EDI + 0x48]
005135a0  e82b70efff                CALL 0x0040a5d0
005135a5  84c0                      TEST AL,AL
005135a7  740f                      JZ 0x005135b8
005135a9  8d4f78                    LEA ECX,[EDI + 0x78]
005135ac  e8ff6befff                CALL 0x0040a1b0
005135b1  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
005135b8  8b8c2424010000            MOV ECX,dword ptr [ESP + 0x124]
005135bf  5f                        POP EDI
005135c0  5e                        POP ESI
005135c1  5b                        POP EBX
005135c2  33cc                      XOR ECX,ESP
005135c4  e862bb5d00                CALL 0x00aef12b
005135c9  8be5                      MOV ESP,EBP
005135cb  5d                        POP EBP
005135cc  c3                        RET
