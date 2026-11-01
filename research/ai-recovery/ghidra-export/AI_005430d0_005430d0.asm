; J460 NPC AI 0x005430d0 AI_005430d0
; types=303
; identities=303.0.0
; entry=005430d0
005430d0  55                        PUSH EBP
005430d1  8bec                      MOV EBP,ESP
005430d3  83e4f8                    AND ESP,0xfffffff8
005430d6  83ec20                    SUB ESP,0x20
005430d9  56                        PUSH ESI
005430da  57                        PUSH EDI
005430db  8bf9                      MOV EDI,ECX
005430dd  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005430e3  85c0                      TEST EAX,EAX
005430e5  7524                      JNZ 0x0054310b
005430e7  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005430f1  e86abe1a00                CALL 0x006eef60
005430f6  33d2                      XOR EDX,EDX
005430f8  b91e000000                MOV ECX,0x1e
005430fd  f7f1                      DIV ECX
005430ff  899710040000              MOV dword ptr [EDI + 0x410],EDX
00543105  5f                        POP EDI
00543106  5e                        POP ESI
00543107  8be5                      MOV ESP,EBP
00543109  5d                        POP EBP
0054310a  c3                        RET
0054310b  83f804                    CMP EAX,0x4
0054310e  0f85e0020000              JNZ 0x005433f4
00543114  6a00                      PUSH 0x0
00543116  6854bcb100                PUSH 0xb1bc54
0054311b  8d4f48                    LEA ECX,[EDI + 0x48]
0054311e  e85d72ecff                CALL 0x0040a380
00543123  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0054312b  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00543133  2bc8                      SUB ECX,EAX
00543135  018f10040000              ADD dword ptr [EDI + 0x410],ECX
0054313b  780d                      JS 0x0054314a
0054313d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00543144  0f8424010000              JZ 0x0054326e
0054314a  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
00543150  85c0                      TEST EAX,EAX
00543152  7507                      JNZ 0x0054315b
00543154  8bcf                      MOV ECX,EDI
00543156  e8e5b61700                CALL 0x006be840
0054315b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00543162  f30f10a73c030000          MOVSS XMM4,dword ptr [EDI + 0x33c]
0054316a  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
00543172  f30f5ca03c030000          SUBSS XMM4,dword ptr [EAX + 0x33c]
0054317a  f30f5c9840030000          SUBSS XMM3,dword ptr [EAX + 0x340]
00543182  0f84fb000000              JZ 0x00543283
00543188  8d442418                  LEA EAX,[ESP + 0x18]
0054318c  0f57d2                    XORPS XMM2,XMM2
0054318f  50                        PUSH EAX
00543190  8bcf                      MOV ECX,EDI
00543192  e839511900                CALL 0x006d82d0
00543197  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0054319e  f30f101d70cbba00          MOVSS XMM3,dword ptr [0x00bacb70]
005431a6  f30f1008                  MOVSS XMM1,dword ptr [EAX]
005431aa  f30f106004                MOVSS XMM4,dword ptr [EAX + 0x4]
005431af  0f57cb                    XORPS XMM1,XMM3
005431b2  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
005431ba  0f57e3                    XORPS XMM4,XMM3
005431bd  f30f592504a9ba00          MULSS XMM4,dword ptr [0x00baa904]
005431c5  0f28d1                    MOVAPS XMM2,XMM1
005431c8  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
005431ce  0f57d3                    XORPS XMM2,XMM3
005431d1  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
005431d9  0f28cc                    MOVAPS XMM1,XMM4
005431dc  0f57cb                    XORPS XMM1,XMM3
005431df  f30f11642410              MOVSS dword ptr [ESP + 0x10],XMM4
005431e5  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
005431ed  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
005431f5  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
005431fd  0f844c010000              JZ 0x0054334f
00543203  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0054320b  8bcf                      MOV ECX,EDI
0054320d  6a07                      PUSH 0x7
0054320f  6a00                      PUSH 0x0
00543211  e84a7c1800                CALL 0x006cae60
00543216  84c0                      TEST AL,AL
00543218  0f8547010000              JNZ 0x00543365
0054321e  6a09                      PUSH 0x9
00543220  8bcf                      MOV ECX,EDI
00543222  e839501900                CALL 0x006d8260
00543227  84c0                      TEST AL,AL
00543229  0f8536010000              JNZ 0x00543365
0054322f  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
00543235  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
0054323b  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00543242  9f                        LAHF
00543243  f6c444                    TEST AH,0x44
00543246  7a0d                      JP 0x00543255
00543248  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
0054324f  9f                        LAHF
00543250  f6c444                    TEST AH,0x44
00543253  7b19                      JNP 0x0054326e
00543255  6a00                      PUSH 0x0
00543257  681cdeb100                PUSH 0xb1de1c
0054325c  8d4f48                    LEA ECX,[EDI + 0x48]
0054325f  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00543269  e81271ecff                CALL 0x0040a380
0054326e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00543276  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
0054327e  e9d9030000                JMP 0x0054365c
00543283  0f28c3                    MOVAPS XMM0,XMM3
00543286  0f28d4                    MOVAPS XMM2,XMM4
00543289  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00543290  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
00543297  0f2fd0                    COMISS XMM2,XMM0
0054329a  0f57c0                    XORPS XMM0,XMM0
0054329d  7651                      JBE 0x005432f0
0054329f  0f2fe0                    COMISS XMM4,XMM0
005432a2  0f57db                    XORPS XMM3,XMM3
005432a5  f30f115c2410              MOVSS dword ptr [ESP + 0x10],XMM3
005432ab  760e                      JBE 0x005432bb
005432ad  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
005432b5  f30f5dc4                  MINSS XMM0,XMM4
005432b9  eb0c                      JMP 0x005432c7
005432bb  f30f100528aeba00          MOVSS XMM0,dword ptr [0x00baae28]
005432c3  f30f5fc4                  MAXSS XMM0,XMM4
005432c7  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
005432cd  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
005432d4  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
005432dc  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005432e4  0f57c0                    XORPS XMM0,XMM0
005432e7  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
005432ee  eb4f                      JMP 0x0054333f
005432f0  f30f102570cbba00          MOVSS XMM4,dword ptr [0x00bacb70]
005432f8  0f57d2                    XORPS XMM2,XMM2
005432fb  0f57d4                    XORPS XMM2,XMM4
005432fe  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00543304  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
0054330c  0f57c9                    XORPS XMM1,XMM1
0054330f  0f2fd9                    COMISS XMM3,XMM1
00543312  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
0054331a  760e                      JBE 0x0054332a
0054331c  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00543324  f30f5dc3                  MINSS XMM0,XMM3
00543328  eb0c                      JMP 0x00543336
0054332a  f30f100528aeba00          MOVSS XMM0,dword ptr [0x00baae28]
00543332  f30f5fc3                  MAXSS XMM0,XMM3
00543336  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0054333c  0f57c4                    XORPS XMM0,XMM4
0054333f  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00543347  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0054334f  e80cbc1a00                CALL 0x006eef60
00543354  33d2                      XOR EDX,EDX
00543356  b90a000000                MOV ECX,0xa
0054335b  f7f1                      DIV ECX
0054335d  85d2                      TEST EDX,EDX
0054335f  0f85cafeffff              JNZ 0x0054322f
00543365  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0054336c  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
00543372  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
00543378  0f85bdfeffff              JNZ 0x0054323b
0054337e  6a00                      PUSH 0x0
00543380  6854ddb100                PUSH 0xb1dd54
00543385  8d4f48                    LEA ECX,[EDI + 0x48]
00543388  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00543392  e8e96fecff                CALL 0x0040a380
00543397  8d442418                  LEA EAX,[ESP + 0x18]
0054339b  0f57d2                    XORPS XMM2,XMM2
0054339e  50                        PUSH EAX
0054339f  8bcf                      MOV ECX,EDI
005433a1  e8fa511900                CALL 0x006d85a0
005433a6  8bc8                      MOV ECX,EAX
005433a8  f30f1001                  MOVSS XMM0,dword ptr [ECX]
005433ac  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
005433b3  9f                        LAHF
005433b4  f6c444                    TEST AH,0x44
005433b7  7a16                      JP 0x005433cf
005433b9  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
005433be  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005433c5  9f                        LAHF
005433c6  f6c444                    TEST AH,0x44
005433c9  0f8b9ffeffff              JNP 0x0054326e
005433cf  8d442408                  LEA EAX,[ESP + 0x8]
005433d3  0f57d2                    XORPS XMM2,XMM2
005433d6  50                        PUSH EAX
005433d7  8bcf                      MOV ECX,EDI
005433d9  e8c2511900                CALL 0x006d85a0
005433de  8b08                      MOV ECX,dword ptr [EAX]
005433e0  898f34030000              MOV dword ptr [EDI + 0x334],ECX
005433e6  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005433e9  898738030000              MOV dword ptr [EDI + 0x338],EAX
005433ef  e97afeffff                JMP 0x0054326e
005433f4  83f806                    CMP EAX,0x6
005433f7  0f85cd000000              JNZ 0x005434ca
005433fd  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00543400  85c0                      TEST EAX,EAX
00543402  7405                      JZ 0x00543409
00543404  8b7030                    MOV ESI,dword ptr [EAX + 0x30]
00543407  eb02                      JMP 0x0054340b
00543409  33f6                      XOR ESI,ESI
0054340b  8d4f48                    LEA ECX,[EDI + 0x48]
0054340e  e86d73ecff                CALL 0x0040a780
00543413  660f6ec6                  MOVD XMM0,ESI
00543417  0f5bc0                    CVTDQ2PS XMM0,XMM0
0054341a  660f6ec8                  MOVD XMM1,EAX
0054341e  0f5bc9                    CVTDQ2PS XMM1,XMM1
00543421  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00543429  f30f5ec8                  DIVSS XMM1,XMM0
0054342d  f30f5cd1                  SUBSS XMM2,XMM1
00543431  0f28c2                    MOVAPS XMM0,XMM2
00543434  f30f599738030000          MULSS XMM2,dword ptr [EDI + 0x338]
0054343c  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
00543444  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0054344c  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00543454  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00543458  743d                      JZ 0x00543497
0054345a  6874d5b100                PUSH 0xb1d574
0054345f  8d4f78                    LEA ECX,[EDI + 0x78]
00543462  e86979ecff                CALL 0x0040add0
00543467  84c0                      TEST AL,AL
00543469  741d                      JZ 0x00543488
0054346b  51                        PUSH ECX
0054346c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00543473  6a00                      PUSH 0x0
00543475  6a02                      PUSH 0x2
00543477  51                        PUSH ECX
00543478  c704240000803f            MOV dword ptr [ESP],0x3f800000
0054347f  8bcf                      MOV ECX,EDI
00543481  6a45                      PUSH 0x45
00543483  e818371900                CALL 0x006d6ba0
00543488  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0054348c  7409                      JZ 0x00543497
0054348e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00543495  751e                      JNZ 0x005434b5
00543497  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005434a1  e8baba1a00                CALL 0x006eef60
005434a6  33d2                      XOR EDX,EDX
005434a8  b91e000000                MOV ECX,0x1e
005434ad  f7f1                      DIV ECX
005434af  899710040000              MOV dword ptr [EDI + 0x410],EDX
005434b5  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005434bd  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
005434c5  e992010000                JMP 0x0054365c
005434ca  83f808                    CMP EAX,0x8
005434cd  0f8591010000              JNZ 0x00543664
005434d3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005434d7  0f8451010000              JZ 0x0054362e
005434dd  68dcd2b100                PUSH 0xb1d2dc
005434e2  8d4f78                    LEA ECX,[EDI + 0x78]
005434e5  e8e678ecff                CALL 0x0040add0
005434ea  84c0                      TEST AL,AL
005434ec  0f842d010000              JZ 0x0054361f
005434f2  e869ba1a00                CALL 0x006eef60
005434f7  8d8f34030000              LEA ECX,[EDI + 0x334]
005434fd  8bf0                      MOV ESI,EAX
005434ff  51                        PUSH ECX
00543500  8d442424                  LEA EAX,[ESP + 0x24]
00543504  c7042400008040            MOV dword ptr [ESP],0x40800000
0054350b  50                        PUSH EAX
0054350c  e8efcb4c00                CALL 0x00a10100
00543511  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00543519  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00543521  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00543527  6a00                      PUSH 0x0
00543529  56                        PUSH ESI
0054352a  6a00                      PUSH 0x0
0054352c  57                        PUSH EDI
0054352d  50                        PUSH EAX
0054352e  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00543534  8d44242c                  LEA EAX,[ESP + 0x2c]
00543538  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00543540  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00543548  50                        PUSH EAX
00543549  6a01                      PUSH 0x1
0054354b  6894010000                PUSH 0x194
00543550  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
00543556  e8b5ae1b00                CALL 0x006fe410
0054355b  89442408                  MOV dword ptr [ESP + 0x8],EAX
0054355f  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00543565  8db0c8030000              LEA ESI,[EAX + 0x3c8]
0054356b  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00543572  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00543578  8b0e                      MOV ECX,dword ptr [ESI]
0054357a  85c9                      TEST ECX,ECX
0054357c  7414                      JZ 0x00543592
0054357e  8d442410                  LEA EAX,[ESP + 0x10]
00543582  89742410                  MOV dword ptr [ESP + 0x10],ESI
00543586  50                        PUSH EAX
00543587  81c1cc030000              ADD ECX,0x3cc
0054358d  e87ebcf8ff                CALL 0x004cf210
00543592  56                        PUSH ESI
00543593  8bcf                      MOV ECX,EDI
00543595  893e                      MOV dword ptr [ESI],EDI
00543597  e854a7f8ff                CALL 0x004cdcf0
0054359c  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
005435a2  8db7c0030000              LEA ESI,[EDI + 0x3c0]
005435a8  85c9                      TEST ECX,ECX
005435aa  7414                      JZ 0x005435c0
005435ac  8d442410                  LEA EAX,[ESP + 0x10]
005435b0  89742410                  MOV dword ptr [ESP + 0x10],ESI
005435b4  50                        PUSH EAX
005435b5  81c1cc030000              ADD ECX,0x3cc
005435bb  e850bcf8ff                CALL 0x004cf210
005435c0  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
005435c4  56                        PUSH ESI
005435c5  890e                      MOV dword ptr [ESI],ECX
005435c7  e824a7f8ff                CALL 0x004cdcf0
005435cc  e88fb91a00                CALL 0x006eef60
005435d1  51                        PUSH ECX
005435d2  660f6ec0                  MOVD XMM0,EAX
005435d6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005435da  c1e81f                    SHR EAX,0x1f
005435dd  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005435e6  660f5ac0                  CVTPD2PS XMM0,XMM0
005435ea  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005435f2  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
005435fa  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
00543602  f30f110424                MOVSS dword ptr [ESP],XMM0
00543607  6a00                      PUSH 0x0
00543609  6a02                      PUSH 0x2
0054360b  51                        PUSH ECX
0054360c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00543613  8bcf                      MOV ECX,EDI
00543615  689e010000                PUSH 0x19e
0054361a  e881351900                CALL 0x006d6ba0
0054361f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00543623  7409                      JZ 0x0054362e
00543625  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0054362c  751e                      JNZ 0x0054364c
0054362e  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00543638  e823b91a00                CALL 0x006eef60
0054363d  33d2                      XOR EDX,EDX
0054363f  b91e000000                MOV ECX,0x1e
00543644  f7f1                      DIV ECX
00543646  899710040000              MOV dword ptr [EDI + 0x410],EDX
0054364c  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00543654  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0054365c  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00543664  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0054366b  0f849e000000              JZ 0x0054370f
00543671  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00543679  8db73c030000              LEA ESI,[EDI + 0x33c]
0054367f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00543685  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0054368b  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00543690  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00543696  ff742414                  PUSH dword ptr [ESP + 0x14]
0054369a  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
005436a0  ff742414                  PUSH dword ptr [ESP + 0x14]
005436a4  e8d7d02a00                CALL 0x007f0780
005436a9  85c0                      TEST EAX,EAX
005436ab  7562                      JNZ 0x0054370f
005436ad  663987760c0000            CMP word ptr [EDI + 0xc76],AX
005436b4  7559                      JNZ 0x0054370f
005436b6  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
005436bc  e82f5a2a00                CALL 0x007e90f0
005436c1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005436c7  6a00                      PUSH 0x0
005436c9  50                        PUSH EAX
005436ca  6a00                      PUSH 0x0
005436cc  57                        PUSH EDI
005436cd  6840b6c700                PUSH 0xc7b640
005436d2  56                        PUSH ESI
005436d3  6a02                      PUSH 0x2
005436d5  6a1e                      PUSH 0x1e
005436d7  e834ad1b00                CALL 0x006fe410
005436dc  50                        PUSH EAX
005436dd  f30f108084030000          MOVSS XMM0,dword ptr [EAX + 0x384]
005436e5  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005436ed  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
005436f3  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
005436fa  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00543700  8bcf                      MOV ECX,EDI
00543702  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0054370a  e8a1511900                CALL 0x006d88b0
0054370f  5f                        POP EDI
00543710  5e                        POP ESI
00543711  8be5                      MOV ESP,EBP
00543713  5d                        POP EBP
00543714  c3                        RET
