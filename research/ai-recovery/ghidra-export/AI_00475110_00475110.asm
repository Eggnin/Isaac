; J460 NPC AI 0x00475110 AI_00475110
; types=48
; identities=48.0.0,48.1.0
; entry=00475110
00475110  53                        PUSH EBX
00475111  8bdc                      MOV EBX,ESP
00475113  83ec08                    SUB ESP,0x8
00475116  83e4f8                    AND ESP,0xfffffff8
00475119  83c404                    ADD ESP,0x4
0047511c  55                        PUSH EBP
0047511d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00475120  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00475124  8bec                      MOV EBP,ESP
00475126  6aff                      PUSH -0x1
00475128  68252aaf00                PUSH 0xaf2a25
0047512d  64a100000000              MOV EAX,FS:[0x0]
00475133  50                        PUSH EAX
00475134  53                        PUSH EBX
00475135  81ec80000000              SUB ESP,0x80
0047513b  a1b493bf00                MOV EAX,[0x00bf93b4]
00475140  33c5                      XOR EAX,EBP
00475142  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00475145  56                        PUSH ESI
00475146  57                        PUSH EDI
00475147  50                        PUSH EAX
00475148  8d45f4                    LEA EAX,[EBP + -0xc]
0047514b  64a300000000              MOV FS:[0x0],EAX
00475151  8bf9                      MOV EDI,ECX
00475153  897db8                    MOV dword ptr [EBP + -0x48],EDI
00475156  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
0047515c  85c9                      TEST ECX,ECX
0047515e  7563                      JNZ 0x004751c3
00475160  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00475164  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047516e  0f8585080000              JNZ 0x004759f9
00475174  0f281530bfba00            MOVAPS XMM2,xmmword ptr [0x00babf30]
0047517b  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
00475181  81c7e4010000              ADD EDI,0x1e4
00475187  c74590cdcc4c3e            MOV dword ptr [EBP + -0x70],0x3e4ccccd
0047518e  c74594cdcc4c3e            MOV dword ptr [EBP + -0x6c],0x3e4ccccd
00475195  0f57c9                    XORPS XMM1,XMM1
00475198  c74598cdcc4c3e            MOV dword ptr [EBP + -0x68],0x3e4ccccd
0047519f  3bf8                      CMP EDI,EAX
004751a1  0f8452080000              JZ 0x004759f9
004751a7  f30f7e4590                MOVQ XMM0,qword ptr [EBP + -0x70]
004751ac  8b4598                    MOV EAX,dword ptr [EBP + -0x68]
004751af  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
004751b4  0f1117                    MOVUPS xmmword ptr [EDI],XMM2
004751b7  894728                    MOV dword ptr [EDI + 0x28],EAX
004751ba  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
004751be  e936080000                JMP 0x004759f9
004751c3  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004751c6  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004751c9  7439                      JZ 0x00475204
004751cb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004751d0  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004751d3  83e104                    AND ECX,0x4
004751d6  83c900                    OR ECX,0x0
004751d9  741b                      JZ 0x004751f6
004751db  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
004751de  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
004751e1  7508                      JNZ 0x004751eb
004751e3  c7000000a041              MOV dword ptr [EAX],0x41a00000
004751e9  eb0b                      JMP 0x004751f6
004751eb  83f901                    CMP ECX,0x1
004751ee  7506                      JNZ 0x004751f6
004751f0  c70000004843              MOV dword ptr [EAX],0x43480000
004751f6  83c038                    ADD EAX,0x38
004751f9  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004751fc  75d2                      JNZ 0x004751d0
004751fe  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00475204  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
0047520c  f30f590dc4a3ba00          MULSS XMM1,dword ptr [0x00baa3c4]
00475214  f30f102d20a1ba00          MOVSS XMM5,dword ptr [0x00baa120]
0047521c  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
00475224  83f908                    CMP ECX,0x8
00475227  0f854e010000              JNZ 0x0047537b
0047522d  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00475234  0f8532010000              JNZ 0x0047536c
0047523a  80bf8c01000000            CMP byte ptr [EDI + 0x18c],0x0
00475241  0f8525010000              JNZ 0x0047536c
00475247  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
0047524f  0f2e0de49fba00            UCOMISS XMM1,dword ptr [0x00ba9fe4]
00475256  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
0047525e  f30f1097b80b0000          MOVSS XMM2,dword ptr [EDI + 0xbb8]
00475266  f30f109fbc0b0000          MOVSS XMM3,dword ptr [EDI + 0xbbc]
0047526e  f30f591528a5ba00          MULSS XMM2,dword ptr [0x00baa528]
00475276  f30f591d28a5ba00          MULSS XMM3,dword ptr [0x00baa528]
0047527e  9f                        LAHF
0047527f  f6c444                    TEST AH,0x44
00475282  7b3a                      JNP 0x004752be
00475284  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0047528c  f30f59d0                  MULSS XMM2,XMM0
00475290  f30f59d8                  MULSS XMM3,XMM0
00475294  f30f5ed1                  DIVSS XMM2,XMM1
00475298  f30f5ed9                  DIVSS XMM3,XMM1
0047529c  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
004752a4  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
004752ac  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004752b4  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004752bc  eb08                      JMP 0x004752c6
004752be  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
004752c6  a17816c700                MOV EAX,[0x00c71678]
004752cb  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
004752d3  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004752db  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004752e2  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004752e8  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
004752ee  99                        CDQ
004752ef  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004752f6  8b490c                    MOV ECX,dword ptr [ECX + 0xc]
004752f9  f7f9                      IDIV ECX
004752fb  0f2fd1                    COMISS XMM2,XMM1
004752fe  660f6ee2                  MOVD XMM4,EDX
00475302  660f6ed8                  MOVD XMM3,EAX
00475306  0f5be4                    CVTDQ2PS XMM4,XMM4
00475309  0f5bdb                    CVTDQ2PS XMM3,XMM3
0047530c  f30f59e0                  MULSS XMM4,XMM0
00475310  f30f59d8                  MULSS XMM3,XMM0
00475314  f30f58e0                  ADDSS XMM4,XMM0
00475318  f30f581d00aaba00          ADDSS XMM3,dword ptr [0x00baaa00]
00475320  7625                      JBE 0x00475347
00475322  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047532a  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00475332  f30f59dd                  MULSS XMM3,XMM5
00475336  f30f58d8                  ADDSS XMM3,XMM0
0047533a  f30f119f40030000          MOVSS dword ptr [EDI + 0x340],XMM3
00475342  e9be050000                JMP 0x00475905
00475347  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0047534f  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00475357  f30f59e5                  MULSS XMM4,XMM5
0047535b  f30f58c4                  ADDSS XMM0,XMM4
0047535f  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00475367  e999050000                JMP 0x00475905
0047536c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00475376  e98a050000                JMP 0x00475905
0047537b  83f904                    CMP ECX,0x4
0047537e  0f8561040000              JNZ 0x004757e5
00475384  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
0047538c  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
00475393  9f                        LAHF
00475394  f6c444                    TEST AH,0x44
00475397  7a19                      JP 0x004753b2
00475399  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004753a1  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004753a8  9f                        LAHF
004753a9  f6c444                    TEST AH,0x44
004753ac  0f8b37010000              JNP 0x004754e9
004753b2  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004753b8  85c0                      TEST EAX,EAX
004753ba  0f8e29010000              JLE 0x004754e9
004753c0  48                        DEC EAX
004753c1  898710040000              MOV dword ptr [EDI + 0x410],EAX
004753c7  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004753cf  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004753d7  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004753df  f30f59d2                  MULSS XMM2,XMM2
004753e3  f30f59c9                  MULSS XMM1,XMM1
004753e7  f30f58d1                  ADDSS XMM2,XMM1
004753eb  0f28c2                    MOVAPS XMM0,XMM2
004753ee  e85d06fcff                CALL 0x00435a50
004753f3  f30f100d1caaba00          MOVSS XMM1,dword ptr [0x00baaa1c]
004753fb  0f2fc8                    COMISS XMM1,XMM0
004753fe  0f8601050000              JBE 0x00475905
00475404  8d8f14040000              LEA ECX,[EDI + 0x414]
0047540a  6a00                      PUSH 0x0
0047540c  51                        PUSH ECX
0047540d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00475414  e827ff3600                CALL 0x007e5340
00475419  f30f10a734030000          MOVSS XMM4,dword ptr [EDI + 0x334]
00475421  0f2e2540b6c700            UCOMISS XMM4,dword ptr [0x00c7b640]
00475428  9f                        LAHF
00475429  f6c444                    TEST AH,0x44
0047542c  7a19                      JP 0x00475447
0047542e  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00475436  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0047543d  9f                        LAHF
0047543e  f6c444                    TEST AH,0x44
00475441  0f8bbe040000              JNP 0x00475905
00475447  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
0047544f  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00475457  f30f5ce2                  SUBSS XMM4,XMM2
0047545b  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00475463  f30f5cc2                  SUBSS XMM0,XMM2
00475467  f30f109f38030000          MOVSS XMM3,dword ptr [EDI + 0x338]
0047546f  f30f1097b40b0000          MOVSS XMM2,dword ptr [EDI + 0xbb4]
00475477  f30f5cd9                  SUBSS XMM3,XMM1
0047547b  f30f5cd1                  SUBSS XMM2,XMM1
0047547f  f30f59e0                  MULSS XMM4,XMM0
00475483  f30f100524a9ba00          MOVSS XMM0,dword ptr [0x00baa924]
0047548b  f30f59d3                  MULSS XMM2,XMM3
0047548f  0f2fe0                    COMISS XMM4,XMM0
00475492  7709                      JA 0x0047549d
00475494  0f2fd0                    COMISS XMM2,XMM0
00475497  0f8668040000              JBE 0x00475905
0047549d  6824e1b100                PUSH 0xb1e124
004754a2  6a01                      PUSH 0x1
004754a4  e817be5900                CALL 0x00a112c0
004754a9  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004754b1  83c408                    ADD ESP,0x8
004754b4  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004754bc  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004754c4  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004754cc  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004754d4  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004754dc  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004754e4  e91c040000                JMP 0x00475905
004754e9  6a00                      PUSH 0x0
004754eb  51                        PUSH ECX
004754ec  8d8f14040000              LEA ECX,[EDI + 0x414]
004754f2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004754f9  e842fe3600                CALL 0x007e5340
004754fe  51                        PUSH ECX
004754ff  8d45ac                    LEA EAX,[EBP + -0x54]
00475502  c7042400000000            MOV dword ptr [ESP],0x0
00475509  50                        PUSH EAX
0047550a  8bcf                      MOV ECX,EDI
0047550c  e82f972400                CALL 0x006bec40
00475511  f30f104dac                MOVSS XMM1,dword ptr [EBP + -0x54]
00475516  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
0047551b  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00475523  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0047552b  f30f59c0                  MULSS XMM0,XMM0
0047552f  f30f59c9                  MULSS XMM1,XMM1
00475533  f30f58c1                  ADDSS XMM0,XMM1
00475537  e81405fcff                CALL 0x00435a50
0047553c  f30f2cc0                  CVTTSS2SI EAX,XMM0
00475540  be3c000000                MOV ESI,0x3c
00475545  3bc6                      CMP EAX,ESI
00475547  0f4ff0                    CMOVG ESI,EAX
0047554a  85f6                      TEST ESI,ESI
0047554c  0f8442020000              JZ 0x00475794
00475552  e8099a2700                CALL 0x006eef60
00475557  33d2                      XOR EDX,EDX
00475559  f7f6                      DIV ESI
0047555b  85d2                      TEST EDX,EDX
0047555d  0f8431020000              JZ 0x00475794
00475563  8d8f14040000              LEA ECX,[EDI + 0x414]
00475569  e8821a3700                CALL 0x007e6ff0
0047556e  8bcf                      MOV ECX,EDI
00475570  e8cb922400                CALL 0x006be840
00475575  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0047557d  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
00475582  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
0047558a  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
0047558f  e8cc992700                CALL 0x006eef60
00475594  f30f105db0                MOVSS XMM3,dword ptr [EBP + -0x50]
00475599  f30f1065ac                MOVSS XMM4,dword ptr [EBP + -0x54]
0047559e  660f6ec0                  MOVD XMM0,EAX
004755a2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004755a6  c1e81f                    SHR EAX,0x1f
004755a9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004755b2  a17816c700                MOV EAX,[0x00c71678]
004755b7  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004755bd  8b8734040000              MOV EAX,dword ptr [EDI + 0x434]
004755c3  99                        CDQ
004755c4  660f5ad0                  CVTPD2PS XMM2,XMM0
004755c8  f77e0c                    IDIV dword ptr [ESI + 0xc]
004755cb  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
004755d3  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
004755db  0f28ca                    MOVAPS XMM1,XMM2
004755de  f30f5955b4                MULSS XMM2,dword ptr [EBP + -0x4c]
004755e3  f30f594db8                MULSS XMM1,dword ptr [EBP + -0x48]
004755e8  f30f59155ca8ba00          MULSS XMM2,dword ptr [0x00baa85c]
004755f0  f30f590d5ca8ba00          MULSS XMM1,dword ptr [0x00baa85c]
004755f8  f30f58da                  ADDSS XMM3,XMM2
004755fc  660f6ed2                  MOVD XMM2,EDX
00475600  0f5bd2                    CVTDQ2PS XMM2,XMM2
00475603  f30f58e1                  ADDSS XMM4,XMM1
00475607  660f6ec8                  MOVD XMM1,EAX
0047560b  f30f115da0                MOVSS dword ptr [EBP + -0x60],XMM3
00475610  0f5bc9                    CVTDQ2PS XMM1,XMM1
00475613  f30f59d0                  MULSS XMM2,XMM0
00475617  f30f59c8                  MULSS XMM1,XMM0
0047561b  f30f58d0                  ADDSS XMM2,XMM0
0047561f  f30f11659c                MOVSS dword ptr [EBP + -0x64],XMM4
00475624  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
0047562c  f30f5ce2                  SUBSS XMM4,XMM2
00475630  f30f1155a4                MOVSS dword ptr [EBP + -0x5c],XMM2
00475635  f30f10157ca8ba00          MOVSS XMM2,dword ptr [0x00baa87c]
0047563d  f30f5cd9                  SUBSS XMM3,XMM1
00475641  f30f114da8                MOVSS dword ptr [EBP + -0x58],XMM1
00475646  f30f100d40cbba00          MOVSS XMM1,dword ptr [0x00bacb40]
0047564e  0f28c4                    MOVAPS XMM0,XMM4
00475651  f30f1165b0                MOVSS dword ptr [EBP + -0x50],XMM4
00475656  0f54c1                    ANDPS XMM0,XMM1
00475659  0f2fd0                    COMISS XMM2,XMM0
0047565c  f30f115db4                MOVSS dword ptr [EBP + -0x4c],XMM3
00475661  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
00475666  770f                      JA 0x00475677
00475668  0f28c3                    MOVAPS XMM0,XMM3
0047566b  0f54c1                    ANDPS XMM0,XMM1
0047566e  0f2fd0                    COMISS XMM2,XMM0
00475671  0f868e020000              JBE 0x00475905
00475677  0f28c3                    MOVAPS XMM0,XMM3
0047567a  0f28cc                    MOVAPS XMM1,XMM4
0047567d  f30f59c3                  MULSS XMM0,XMM3
00475681  f30f59cc                  MULSS XMM1,XMM4
00475685  f30f58c1                  ADDSS XMM0,XMM1
00475689  e8c203fcff                CALL 0x00435a50
0047568e  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
00475696  0f2fc8                    COMISS XMM1,XMM0
00475699  0f8666020000              JBE 0x00475905
0047569f  6a00                      PUSH 0x0
004756a1  6a00                      PUSH 0x0
004756a3  6a00                      PUSH 0x0
004756a5  6a00                      PUSH 0x0
004756a7  6a00                      PUSH 0x0
004756a9  8d459c                    LEA EAX,[EBP + -0x64]
004756ac  8bce                      MOV ECX,ESI
004756ae  50                        PUSH EAX
004756af  8d45a4                    LEA EAX,[EBP + -0x5c]
004756b2  50                        PUSH EAX
004756b3  e838b73700                CALL 0x007f0df0
004756b8  84c0                      TEST AL,AL
004756ba  0f8445020000              JZ 0x00475905
004756c0  f30f1055b4                MOVSS XMM2,dword ptr [EBP + -0x4c]
004756c5  f30f104db8                MOVSS XMM1,dword ptr [EBP + -0x48]
004756ca  0f28c2                    MOVAPS XMM0,XMM2
004756cd  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004756d4  0f2fc8                    COMISS XMM1,XMM0
004756d7  7637                      JBE 0x00475710
004756d9  0f57c9                    XORPS XMM1,XMM1
004756dc  c787bc0b000000000000      MOV dword ptr [EDI + 0xbbc],0x0
004756e6  0f2f4db0                  COMISS XMM1,dword ptr [EBP + -0x50]
004756ea  7612                      JBE 0x004756fe
004756ec  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
004756f4  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004756fc  eb3e                      JMP 0x0047573c
004756fe  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00475706  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0047570e  eb2c                      JMP 0x0047573c
00475710  0f57c0                    XORPS XMM0,XMM0
00475713  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
0047571d  0f2fc2                    COMISS XMM0,XMM2
00475720  760a                      JBE 0x0047572c
00475722  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0047572a  eb08                      JMP 0x00475734
0047572c  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00475734  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
0047573c  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00475746  e815982700                CALL 0x006eef60
0047574b  83e001                    AND EAX,0x1
0047574e  7535                      JNZ 0x00475785
00475750  6a01                      PUSH 0x1
00475752  6854ddb100                PUSH 0xb1dd54
00475757  8d4f48                    LEA ECX,[EDI + 0x48]
0047575a  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00475764  e8674ef9ff                CALL 0x0040a5d0
00475769  84c0                      TEST AL,AL
0047576b  0f8494010000              JZ 0x00475905
00475771  8d4f78                    LEA ECX,[EDI + 0x78]
00475774  e8374af9ff                CALL 0x0040a1b0
00475779  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00475780  e980010000                JMP 0x00475905
00475785  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0047578f  e971010000                JMP 0x00475905
00475794  6a01                      PUSH 0x1
00475796  6854ddb100                PUSH 0xb1dd54
0047579b  8d4f48                    LEA ECX,[EDI + 0x48]
0047579e  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
004757a8  e8234ef9ff                CALL 0x0040a5d0
004757ad  84c0                      TEST AL,AL
004757af  740f                      JZ 0x004757c0
004757b1  8d4f78                    LEA ECX,[EDI + 0x78]
004757b4  e8f749f9ff                CALL 0x0040a1b0
004757b9  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004757c0  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004757c8  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004757d0  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004757d8  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
004757e0  e920010000                JMP 0x00475905
004757e5  83f909                    CMP ECX,0x9
004757e8  0f8517010000              JNZ 0x00475905
004757ee  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004757f4  83f805                    CMP EAX,0x5
004757f7  0f8c01010000              JL 0x004758fe
004757fd  a17816c700                MOV EAX,[0x00c71678]
00475802  8b7f2c                    MOV EDI,dword ptr [EDI + 0x2c]
00475805  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0047580b  8bce                      MOV ECX,ESI
0047580d  8b45b8                    MOV EAX,dword ptr [EBP + -0x48]
00475810  053c030000                ADD EAX,0x33c
00475815  50                        PUSH EAX
00475816  e875d43900                CALL 0x00812c90
0047581b  99                        CDQ
0047581c  f77e0c                    IDIV dword ptr [ESI + 0xc]
0047581f  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00475827  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
0047582a  81c6b00b0000              ADD ESI,0xbb0
00475830  660f6ed2                  MOVD XMM2,EDX
00475834  660f6ec8                  MOVD XMM1,EAX
00475838  0f5bd2                    CVTDQ2PS XMM2,XMM2
0047583b  0f5bc9                    CVTDQ2PS XMM1,XMM1
0047583e  f30f59d0                  MULSS XMM2,XMM0
00475842  f30f59c8                  MULSS XMM1,XMM0
00475846  f30f58d0                  ADDSS XMM2,XMM0
0047584a  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
00475852  f30f1116                  MOVSS dword ptr [ESI],XMM2
00475856  f30f114e04                MOVSS dword ptr [ESI + 0x4],XMM1
0047585b  e800972700                CALL 0x006eef60
00475860  8b4db8                    MOV ECX,dword ptr [EBP + -0x48]
00475863  50                        PUSH EAX
00475864  6a00                      PUSH 0x0
00475866  51                        PUSH ECX
00475867  f30f1091b80b0000          MOVSS XMM2,dword ptr [ECX + 0xbb8]
0047586f  8d45a4                    LEA EAX,[EBP + -0x5c]
00475872  f30f1089bc0b0000          MOVSS XMM1,dword ptr [ECX + 0xbbc]
0047587a  33c9                      XOR ECX,ECX
0047587c  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00475884  83ff01                    CMP EDI,0x1
00475887  50                        PUSH EAX
00475888  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00475890  b804000000                MOV EAX,0x4
00475895  56                        PUSH ESI
00475896  0f45c1                    CMOVNZ EAX,ECX
00475899  f30f1155a4                MOVSS dword ptr [EBP + -0x5c],XMM2
0047589e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004758a4  50                        PUSH EAX
004758a5  6a04                      PUSH 0x4
004758a7  f30f114da8                MOVSS dword ptr [EBP + -0x58],XMM1
004758ac  e86f32fbff                CALL 0x00428b20
004758b1  8b7db8                    MOV EDI,dword ptr [EBP + -0x48]
004758b4  8bc8                      MOV ECX,EAX
004758b6  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004758be  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004758c5  9f                        LAHF
004758c6  f6c444                    TEST AH,0x44
004758c9  7a19                      JP 0x004758e4
004758cb  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
004758d3  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004758da  9f                        LAHF
004758db  f6c444                    TEST AH,0x44
004758de  7a04                      JP 0x004758e4
004758e0  33c0                      XOR EAX,EAX
004758e2  eb05                      JMP 0x004758e9
004758e4  b801000000                MOV EAX,0x1
004758e9  898188010000              MOV dword ptr [ECX + 0x188],EAX
004758ef  b83c000000                MOV EAX,0x3c
004758f4  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004758fe  40                        INC EAX
004758ff  898710040000              MOV dword ptr [EDI + 0x410],EAX
00475905  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0047590b  83f804                    CMP EAX,0x4
0047590e  7409                      JZ 0x00475919
00475910  83f808                    CMP EAX,0x8
00475913  0f85e0000000              JNZ 0x004759f9
00475919  a118ddb100                MOV EAX,[0x00b1dd18]
0047591e  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
00475924  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0047592b  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
00475932  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00475935  894dc0                    MOV dword ptr [EBP + -0x40],ECX
00475938  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
0047593c  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00475943  a130ddb100                MOV EAX,[0x00b1dd30]
00475948  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
0047594e  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00475955  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0047595c  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
0047595f  894dd8                    MOV dword ptr [EBP + -0x28],ECX
00475962  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
00475966  51                        PUSH ECX
00475967  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0047596b  8d45bc                    LEA EAX,[EBP + -0x44]
0047596e  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00475975  8bcf                      MOV ECX,EDI
00475977  50                        PUSH EAX
00475978  8d45d4                    LEA EAX,[EBP + -0x2c]
0047597b  50                        PUSH EAX
0047597c  e8afb92400                CALL 0x006c1330
00475981  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00475984  83fa10                    CMP EDX,0x10
00475987  7228                      JC 0x004759b1
00475989  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0047598c  42                        INC EDX
0047598d  8bc1                      MOV EAX,ECX
0047598f  81fa00100000              CMP EDX,0x1000
00475995  7210                      JC 0x004759a7
00475997  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0047599a  83c223                    ADD EDX,0x23
0047599d  2bc1                      SUB EAX,ECX
0047599f  83c0fc                    ADD EAX,-0x4
004759a2  83f81f                    CMP EAX,0x1f
004759a5  7742                      JA 0x004759e9
004759a7  52                        PUSH EDX
004759a8  51                        PUSH ECX
004759a9  e8ae976700                CALL 0x00aef15c
004759ae  83c408                    ADD ESP,0x8
004759b1  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004759b4  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004759bb  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004759c2  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004759c6  83fa10                    CMP EDX,0x10
004759c9  722e                      JC 0x004759f9
004759cb  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004759ce  42                        INC EDX
004759cf  8bc1                      MOV EAX,ECX
004759d1  81fa00100000              CMP EDX,0x1000
004759d7  7216                      JC 0x004759ef
004759d9  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004759dc  83c223                    ADD EDX,0x23
004759df  2bc1                      SUB EAX,ECX
004759e1  83c0fc                    ADD EAX,-0x4
004759e4  83f81f                    CMP EAX,0x1f
004759e7  7606                      JBE 0x004759ef
004759e9  ff159488b100              CALL dword ptr [0x00b18894]
004759ef  52                        PUSH EDX
004759f0  51                        PUSH ECX
004759f1  e866976700                CALL 0x00aef15c
004759f6  83c408                    ADD ESP,0x8
004759f9  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004759fc  64890d00000000            MOV dword ptr FS:[0x0],ECX
00475a03  59                        POP ECX
00475a04  5f                        POP EDI
00475a05  5e                        POP ESI
00475a06  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00475a09  33cd                      XOR ECX,EBP
00475a0b  e81b976700                CALL 0x00aef12b
00475a10  8be5                      MOV ESP,EBP
00475a12  5d                        POP EBP
00475a13  8be3                      MOV ESP,EBX
00475a15  5b                        POP EBX
00475a16  c3                        RET
