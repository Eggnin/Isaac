; J460 NPC AI 0x005041d0 AI_005041d0
; types=830
; identities=830.0.0,830.10.0
; entry=005041d0
005041d0  53                        PUSH EBX
005041d1  8bdc                      MOV EBX,ESP
005041d3  83ec08                    SUB ESP,0x8
005041d6  83e4f8                    AND ESP,0xfffffff8
005041d9  83c404                    ADD ESP,0x4
005041dc  55                        PUSH EBP
005041dd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005041e0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005041e4  8bec                      MOV EBP,ESP
005041e6  6aff                      PUSH -0x1
005041e8  683d41af00                PUSH 0xaf413d
005041ed  64a100000000              MOV EAX,FS:[0x0]
005041f3  50                        PUSH EAX
005041f4  53                        PUSH EBX
005041f5  81ecb0000000              SUB ESP,0xb0
005041fb  a1b493bf00                MOV EAX,[0x00bf93b4]
00504200  33c5                      XOR EAX,EBP
00504202  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00504205  56                        PUSH ESI
00504206  57                        PUSH EDI
00504207  50                        PUSH EAX
00504208  8d45f4                    LEA EAX,[EBP + -0xc]
0050420b  64a300000000              MOV FS:[0x0],EAX
00504211  8bf9                      MOV EDI,ECX
00504213  837f2c0a                  CMP dword ptr [EDI + 0x2c],0xa
00504217  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0050421d  0f8513030000              JNZ 0x00504536
00504223  85c0                      TEST EAX,EAX
00504225  0f85c2000000              JNZ 0x005042ed
0050422b  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00504231  818f6c01000000040000      OR dword ptr [EDI + 0x16c],0x400
0050423b  83e1fb                    AND ECX,0xfffffffb
0050423e  81c911000d02              OR ECX,0x20d0011
00504244  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050424e  50                        PUSH EAX
0050424f  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00504255  8d4f48                    LEA ECX,[EDI + 0x48]
00504258  68fcd6b100                PUSH 0xb1d6fc
0050425d  e81e61f0ff                CALL 0x0040a380
00504262  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00504265  85c9                      TEST ECX,ECX
00504267  741a                      JZ 0x00504283
00504269  8b87dc030000              MOV EAX,dword ptr [EDI + 0x3dc]
0050426f  33d2                      XOR EDX,EDX
00504271  f77130                    DIV dword ptr [ECX + 0x30]
00504274  8d4f78                    LEA ECX,[EDI + 0x78]
00504277  660f6eca                  MOVD XMM1,EDX
0050427b  0f5bc9                    CVTDQ2PS XMM1,XMM1
0050427e  e87d4bf0ff                CALL 0x00408e00
00504283  0f280db0c7ba00            MOVAPS XMM1,xmmword ptr [0x00bac7b0]
0050428a  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00504290  0f2815f0c5ba00            MOVAPS XMM2,xmmword ptr [0x00bac5f0]
00504297  8d8570ffffff              LEA EAX,[EBP + 0xffffff70]
0050429d  c7459000000000            MOV dword ptr [EBP + -0x70],0x0
005042a4  c7459400000000            MOV dword ptr [EBP + -0x6c],0x0
005042ab  c7459800000000            MOV dword ptr [EBP + -0x68],0x0
005042b2  3bc8                      CMP ECX,EAX
005042b4  7417                      JZ 0x005042cd
005042b6  f30f7e4590                MOVQ XMM0,qword ptr [EBP + -0x70]
005042bb  8b4598                    MOV EAX,dword ptr [EBP + -0x68]
005042be  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
005042c3  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
005042c6  894128                    MOV dword ptr [ECX + 0x28],EAX
005042c9  0f115110                  MOVUPS xmmword ptr [ECX + 0x10],XMM2
005042cd  c787340c000000000041      MOV dword ptr [EDI + 0xc34],0x41000000
005042d7  c787c00b000008000000      MOV dword ptr [EDI + 0xbc0],0x8
005042e1  c6877401000001            MOV byte ptr [EDI + 0x174],0x1
005042e8  e932070000                JMP 0x00504a1f
005042ed  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
005042f2  0f57c9                    XORPS XMM1,XMM1
005042f5  0f2fc1                    COMISS XMM0,XMM1
005042f8  0f86b2000000              JBE 0x005043b0
005042fe  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00504306  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
0050430b  e850ac1e00                CALL 0x006eef60
00504310  33d2                      XOR EDX,EDX
00504312  b903000000                MOV ECX,0x3
00504317  f7f1                      DIV ECX
00504319  85d2                      TEST EDX,EDX
0050431b  750a                      JNZ 0x00504327
0050431d  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00504325  eb05                      JMP 0x0050432c
00504327  f30f104da8                MOVSS XMM1,dword ptr [EBP + -0x58]
0050432c  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
0050432f  83e004                    AND EAX,0x4
00504332  83c800                    OR EAX,0x0
00504335  740a                      JZ 0x00504341
00504337  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
0050433f  eb08                      JMP 0x00504349
00504341  0f57c0                    XORPS XMM0,XMM0
00504344  0f2fc8                    COMISS XMM1,XMM0
00504347  7622                      JBE 0x0050436b
00504349  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00504351  f30f5cc1                  SUBSS XMM0,XMM1
00504355  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0050435d  f30f5fc1                  MAXSS XMM0,XMM1
00504361  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
00504369  eb10                      JMP 0x0050437b
0050436b  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00504373  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0050437b  0f2fc8                    COMISS XMM1,XMM0
0050437e  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00504381  89470c                    MOV dword ptr [EDI + 0xc],EAX
00504384  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
0050438b  c7471800000000            MOV dword ptr [EDI + 0x18],0x0
00504392  c7471c00000000            MOV dword ptr [EDI + 0x1c],0x0
00504399  7215                      JC 0x005043b0
0050439b  8d4dac                    LEA ECX,[EBP + -0x54]
0050439e  e8cd18f3ff                CALL 0x00435c70
005043a3  8b17                      MOV EDX,dword ptr [EDI]
005043a5  8bcf                      MOV ECX,EDI
005043a7  50                        PUSH EAX
005043a8  ff5224                    CALL dword ptr [EDX + 0x24]
005043ab  e96f060000                JMP 0x00504a1f
005043b0  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
005043b7  c78750030000000070c1      MOV dword ptr [EDI + 0x350],0xc1700000
005043c1  c7878401000006000000      MOV dword ptr [EDI + 0x184],0x6
005043cb  7460                      JZ 0x0050442d
005043cd  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005043d3  8d4da8                    LEA ECX,[EBP + -0x58]
005043d6  c745a8f3010000            MOV dword ptr [EBP + -0x58],0x1f3
005043dd  e89e234500                CALL 0x00956780
005043e2  83ec08                    SUB ESP,0x8
005043e5  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005043ed  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
005043f4  6a00                      PUSH 0x0
005043f6  6a02                      PUSH 0x2
005043f8  51                        PUSH ECX
005043f9  c704240000003f            MOV dword ptr [ESP],0x3f000000
00504400  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00504406  ff75a8                    PUSH dword ptr [EBP + -0x58]
00504409  e822984200                CALL 0x0092dc30
0050440e  ff8fc00b0000              DEC dword ptr [EDI + 0xbc0]
00504414  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0050441b  7f10                      JG 0x0050442d
0050441d  8d4dac                    LEA ECX,[EBP + -0x54]
00504420  e84b18f3ff                CALL 0x00435c70
00504425  8b17                      MOV EDX,dword ptr [EDI]
00504427  8bcf                      MOV ECX,EDI
00504429  50                        PUSH EAX
0050442a  ff5224                    CALL dword ptr [EDX + 0x24]
0050442d  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
00504435  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
0050443c  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
00504441  9f                        LAHF
00504442  f6c444                    TEST AH,0x44
00504445  7a45                      JP 0x0050448c
00504447  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0050444f  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00504456  9f                        LAHF
00504457  f6c444                    TEST AH,0x44
0050445a  7a30                      JP 0x0050448c
0050445c  8d45a4                    LEA EAX,[EBP + -0x5c]
0050445f  50                        PUSH EAX
00504460  e80bac1700                CALL 0x0067f070
00504465  83c404                    ADD ESP,0x4
00504468  8b08                      MOV ECX,dword ptr [EAX]
0050446a  898f60030000              MOV dword ptr [EDI + 0x360],ECX
00504470  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00504475  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0050447d  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
00504485  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
0050448a  eb08                      JMP 0x00504494
0050448c  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
00504494  0f28c1                    MOVAPS XMM0,XMM1
00504497  f30f1155a8                MOVSS dword ptr [EBP + -0x58],XMM2
0050449c  f30f59c1                  MULSS XMM0,XMM1
005044a0  0f28ca                    MOVAPS XMM1,XMM2
005044a3  f30f59ca                  MULSS XMM1,XMM2
005044a7  f30f58c1                  ADDSS XMM0,XMM1
005044ab  e8a015f3ff                CALL 0x00435a50
005044b0  0f28d0                    MOVAPS XMM2,XMM0
005044b3  0f57c0                    XORPS XMM0,XMM0
005044b6  0f2fd0                    COMISS XMM2,XMM0
005044b9  f30f1045a8                MOVSS XMM0,dword ptr [EBP + -0x58]
005044be  761b                      JBE 0x005044db
005044c0  f30f108f340c0000          MOVSS XMM1,dword ptr [EDI + 0xc34]
005044c8  f30f5eca                  DIVSS XMM1,XMM2
005044cc  f30f1055a0                MOVSS XMM2,dword ptr [EBP + -0x60]
005044d1  f30f59d1                  MULSS XMM2,XMM1
005044d5  f30f59c1                  MULSS XMM0,XMM1
005044d9  eb05                      JMP 0x005044e0
005044db  f30f1055a0                MOVSS XMM2,dword ptr [EBP + -0x60]
005044e0  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
005044e8  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005044f0  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
005044f8  f30f59c0                  MULSS XMM0,XMM0
005044fc  f30f59d2                  MULSS XMM2,XMM2
00504500  f30f59c9                  MULSS XMM1,XMM1
00504504  f30f58c2                  ADDSS XMM0,XMM2
00504508  f30f58c1                  ADDSS XMM0,XMM1
0050450c  e83f15f3ff                CALL 0x00435a50
00504511  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
00504519  f30f5f0520a1ba00          MAXSS XMM0,dword ptr [0x00baa120]
00504521  f30f5d0530a6ba00          MINSS XMM0,dword ptr [0x00baa630]
00504529  f30f11874c010000          MOVSS dword ptr [EDI + 0x14c],XMM0
00504531  e9e9040000                JMP 0x00504a1f
00504536  85c0                      TEST EAX,EAX
00504538  0f846f040000              JZ 0x005049ad
0050453e  83f804                    CMP EAX,0x4
00504541  0f8408010000              JZ 0x0050464f
00504547  83f808                    CMP EAX,0x8
0050454a  0f85cf040000              JNZ 0x00504a1f
00504550  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00504558  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00504560  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00504568  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050456c  0f84ce000000              JZ 0x00504640
00504572  68dcd2b100                PUSH 0xb1d2dc
00504577  8d4f78                    LEA ECX,[EDI + 0x78]
0050457a  e85168f0ff                CALL 0x0040add0
0050457f  84c0                      TEST AL,AL
00504581  0f84a6000000              JZ 0x0050462d
00504587  51                        PUSH ECX
00504588  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0050458f  6a00                      PUSH 0x0
00504591  6a0a                      PUSH 0xa
00504593  51                        PUSH ECX
00504594  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050459b  8bcf                      MOV ECX,EDI
0050459d  68f9000000                PUSH 0xf9
005045a2  e8f9251d00                CALL 0x006d6ba0
005045a7  8bcf                      MOV ECX,EDI
005045a9  e892a21b00                CALL 0x006be840
005045ae  8db73c030000              LEA ESI,[EDI + 0x33c]
005045b4  8d4da4                    LEA ECX,[EBP + -0x5c]
005045b7  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005045bf  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005045c7  8d459c                    LEA EAX,[EBP + -0x64]
005045ca  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
005045ce  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
005045d3  50                        PUSH EAX
005045d4  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
005045d9  f30f114da8                MOVSS dword ptr [EBP + -0x58],XMM1
005045de  e84dba5000                CALL 0x00a10030
005045e3  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005045e7  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
005045ef  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
005045f4  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
005045f9  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
00504601  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00504606  e855a91e00                CALL 0x006eef60
0050460b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00504611  50                        PUSH EAX
00504612  6a00                      PUSH 0x0
00504614  57                        PUSH EDI
00504615  8d45a4                    LEA EAX,[EBP + -0x5c]
00504618  50                        PUSH EAX
00504619  56                        PUSH ESI
0050461a  6a0a                      PUSH 0xa
0050461c  683e030000                PUSH 0x33e
00504621  e8fa44f2ff                CALL 0x00428b20
00504626  8bc8                      MOV ECX,EAX
00504628  8b10                      MOV EDX,dword ptr [EAX]
0050462a  ff520c                    CALL dword ptr [EDX + 0xc]
0050462d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00504631  740d                      JZ 0x00504640
00504633  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0050463a  0f85df030000              JNZ 0x00504a1f
00504640  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050464a  e9d0030000                JMP 0x00504a1f
0050464f  a118ddb100                MOV EAX,[0x00b1dd18]
00504654  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
0050465a  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
00504661  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
00504668  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0050466b  894dc0                    MOV dword ptr [EBP + -0x40],ECX
0050466e  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
00504672  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00504679  a130ddb100                MOV EAX,[0x00b1dd30]
0050467e  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00504684  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050468b  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
00504692  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00504695  894dd8                    MOV dword ptr [EBP + -0x28],ECX
00504698  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0050469c  51                        PUSH ECX
0050469d  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
005046a1  8d45bc                    LEA EAX,[EBP + -0x44]
005046a4  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
005046ab  8bcf                      MOV ECX,EDI
005046ad  50                        PUSH EAX
005046ae  8d45d4                    LEA EAX,[EBP + -0x2c]
005046b1  50                        PUSH EAX
005046b2  e879cc1b00                CALL 0x006c1330
005046b7  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
005046bb  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
005046be  83fa10                    CMP EDX,0x10
005046c1  7228                      JC 0x005046eb
005046c3  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
005046c6  42                        INC EDX
005046c7  8bc1                      MOV EAX,ECX
005046c9  81fa00100000              CMP EDX,0x1000
005046cf  7210                      JC 0x005046e1
005046d1  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005046d4  83c223                    ADD EDX,0x23
005046d7  2bc1                      SUB EAX,ECX
005046d9  83c0fc                    ADD EAX,-0x4
005046dc  83f81f                    CMP EAX,0x1f
005046df  7749                      JA 0x0050472a
005046e1  52                        PUSH EDX
005046e2  51                        PUSH ECX
005046e3  e874aa5e00                CALL 0x00aef15c
005046e8  83c408                    ADD ESP,0x8
005046eb  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005046f2  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
005046f5  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
005046fc  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00504703  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
00504707  83fa10                    CMP EDX,0x10
0050470a  722e                      JC 0x0050473a
0050470c  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0050470f  42                        INC EDX
00504710  8bc1                      MOV EAX,ECX
00504712  81fa00100000              CMP EDX,0x1000
00504718  7216                      JC 0x00504730
0050471a  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050471d  83c223                    ADD EDX,0x23
00504720  2bc1                      SUB EAX,ECX
00504722  83c0fc                    ADD EAX,-0x4
00504725  83f81f                    CMP EAX,0x1f
00504728  7606                      JBE 0x00504730
0050472a  ff159488b100              CALL dword ptr [0x00b18894]
00504730  52                        PUSH EDX
00504731  51                        PUSH ECX
00504732  e825aa5e00                CALL 0x00aef15c
00504737  83c408                    ADD ESP,0x8
0050473a  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00504740  8bcf                      MOV ECX,EDI
00504742  2500080001                AND EAX,0x1000800
00504747  83c800                    OR EAX,0x0
0050474a  7462                      JZ 0x005047ae
0050474c  e8efa01b00                CALL 0x006be840
00504751  6a00                      PUSH 0x0
00504753  8d8f14040000              LEA ECX,[EDI + 0x414]
00504759  8b903c030000              MOV EDX,dword ptr [EAX + 0x33c]
0050475f  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
00504765  8945a8                    MOV dword ptr [EBP + -0x58],EAX
00504768  8d45a4                    LEA EAX,[EBP + -0x5c]
0050476b  50                        PUSH EAX
0050476c  8955a4                    MOV dword ptr [EBP + -0x5c],EDX
0050476f  e8cc012e00                CALL 0x007e4940
00504774  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0050477b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00504783  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
0050478b  f30f59c1                  MULSS XMM0,XMM1
0050478f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00504797  0f8ecf010000              JLE 0x0050496c
0050479d  f30f59c1                  MULSS XMM0,XMM1
005047a1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005047a9  e9be010000                JMP 0x0050496c
005047ae  6a01                      PUSH 0x1
005047b0  6884030000                PUSH 0x384
005047b5  83ec08                    SUB ESP,0x8
005047b8  8d45a4                    LEA EAX,[EBP + -0x5c]
005047bb  c74424049a99993e          MOV dword ptr [ESP + 0x4],0x3e99999a
005047c3  c7042400000000            MOV dword ptr [ESP],0x0
005047ca  50                        PUSH EAX
005047cb  e870a41b00                CALL 0x006bec40
005047d0  50                        PUSH EAX
005047d1  8d8f14040000              LEA ECX,[EDI + 0x414]
005047d7  e8e4eb2d00                CALL 0x007e33c0
005047dc  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
005047e2  85c0                      TEST EAX,EAX
005047e4  7e07                      JLE 0x005047ed
005047e6  48                        DEC EAX
005047e7  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
005047ed  8bcf                      MOV ECX,EDI
005047ef  e84ca01b00                CALL 0x006be840
005047f4  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
005047fb  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00504803  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
0050480b  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00504810  f30f1155a0                MOVSS dword ptr [EBP + -0x60],XMM2
00504815  0f8f51010000              JG 0x0050496c
0050481b  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00504823  f30f5cc8                  SUBSS XMM1,XMM0
00504827  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0050482f  f30f5cc2                  SUBSS XMM0,XMM2
00504833  f30f59c9                  MULSS XMM1,XMM1
00504837  f30f59c0                  MULSS XMM0,XMM0
0050483b  f30f58c1                  ADDSS XMM0,XMM1
0050483f  e80c12f3ff                CALL 0x00435a50
00504844  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
0050484c  0f2fc8                    COMISS XMM1,XMM0
0050484f  7612                      JBE 0x00504863
00504851  e80aa71e00                CALL 0x006eef60
00504856  33d2                      XOR EDX,EDX
00504858  b90f000000                MOV ECX,0xf
0050485d  f7f1                      DIV ECX
0050485f  85d2                      TEST EDX,EDX
00504861  7416                      JZ 0x00504879
00504863  e8f8a61e00                CALL 0x006eef60
00504868  33d2                      XOR EDX,EDX
0050486a  b978000000                MOV ECX,0x78
0050486f  f7f1                      DIV ECX
00504871  85d2                      TEST EDX,EDX
00504873  0f85f3000000              JNZ 0x0050496c
00504879  8d45bc                    LEA EAX,[EBP + -0x44]
0050487c  8d4f78                    LEA ECX,[EDI + 0x78]
0050487f  50                        PUSH EAX
00504880  e86be3f4ff                CALL 0x00452bf0
00504885  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0050488c  83781410                  CMP dword ptr [EAX + 0x14],0x10
00504890  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
00504893  7202                      JC 0x00504897
00504895  8b00                      MOV EAX,dword ptr [EAX]
00504897  6a08                      PUSH 0x8
00504899  6830ddb100                PUSH 0xb1dd30
0050489e  8bc8                      MOV ECX,EAX
005048a0  e83b82f0ff                CALL 0x0040cae0
005048a5  83c408                    ADD ESP,0x8
005048a8  b90808b600                MOV ECX,0xb60808
005048ad  84c0                      TEST AL,AL
005048af  ba4407b600                MOV EDX,0xb60744
005048b4  0f44d1                    CMOVZ EDX,ECX
005048b7  8d4f48                    LEA ECX,[EDI + 0x48]
005048ba  6a00                      PUSH 0x0
005048bc  52                        PUSH EDX
005048bd  e8be5af0ff                CALL 0x0040a380
005048c2  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
005048c9  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
005048cc  83fa10                    CMP EDX,0x10
005048cf  722e                      JC 0x005048ff
005048d1  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
005048d4  42                        INC EDX
005048d5  8bc1                      MOV EAX,ECX
005048d7  81fa00100000              CMP EDX,0x1000
005048dd  7216                      JC 0x005048f5
005048df  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005048e2  83c223                    ADD EDX,0x23
005048e5  2bc1                      SUB EAX,ECX
005048e7  83c0fc                    ADD EAX,-0x4
005048ea  83f81f                    CMP EAX,0x1f
005048ed  7606                      JBE 0x005048f5
005048ef  ff159488b100              CALL dword ptr [0x00b18894]
005048f5  52                        PUSH EDX
005048f6  51                        PUSH ECX
005048f7  e860a85e00                CALL 0x00aef15c
005048fc  83c408                    ADD ESP,0x8
005048ff  f30f1045a8                MOVSS XMM0,dword ptr [EBP + -0x58]
00504904  8d459c                    LEA EAX,[EBP + -0x64]
00504907  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00504911  8d4da4                    LEA ECX,[EBP + -0x5c]
00504914  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0050491c  50                        PUSH EAX
0050491d  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
00504922  f30f1045a0                MOVSS XMM0,dword ptr [EBP + -0x60]
00504927  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0050492f  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00504934  e8f7b65000                CALL 0x00a10030
00504939  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0050493d  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00504942  f30f591534a8ba00          MULSS XMM2,dword ptr [0x00baa834]
0050494a  c787a00b000078000000      MOV dword ptr [EDI + 0xba0],0x78
00504954  f30f590d34a8ba00          MULSS XMM1,dword ptr [0x00baa834]
0050495c  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
00504964  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
0050496c  80bf400b000000            CMP byte ptr [EDI + 0xb40],0x0
00504973  0f84a6000000              JZ 0x00504a1f
00504979  e8e2a51e00                CALL 0x006eef60
0050497e  33d2                      XOR EDX,EDX
00504980  b903000000                MOV ECX,0x3
00504985  f7f1                      DIV ECX
00504987  85d2                      TEST EDX,EDX
00504989  0f8590000000              JNZ 0x00504a1f
0050498f  51                        PUSH ECX
00504990  c704240000803f            MOV dword ptr [ESP],0x3f800000
00504997  52                        PUSH EDX
00504998  6a3c                      PUSH 0x3c
0050499a  51                        PUSH ECX
0050499b  c704240000803f            MOV dword ptr [ESP],0x3f800000
005049a2  8bcf                      MOV ECX,EDI
005049a4  6a74                      PUSH 0x74
005049a6  e8f5211d00                CALL 0x006d6ba0
005049ab  eb72                      JMP 0x00504a1f
005049ad  6a00                      PUSH 0x0
005049af  6818ddb100                PUSH 0xb1dd18
005049b4  8d4f48                    LEA ECX,[EDI + 0x48]
005049b7  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005049c1  e8ba59f0ff                CALL 0x0040a380
005049c6  0f280db0c7ba00            MOVAPS XMM1,xmmword ptr [0x00bac7b0]
005049cd  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
005049d3  0f2815f0c5ba00            MOVAPS XMM2,xmmword ptr [0x00bac5f0]
005049da  81c7e4010000              ADD EDI,0x1e4
005049e0  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
005049ea  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
005049f4  c7856cffffff00000000      MOV dword ptr [EBP + 0xffffff6c],0x0
005049fe  3bf8                      CMP EDI,EAX
00504a00  741d                      JZ 0x00504a1f
00504a02  f30f7e8564ffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff64]
00504a0a  8b856cffffff              MOV EAX,dword ptr [EBP + 0xffffff6c]
00504a10  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
00504a15  0f110f                    MOVUPS xmmword ptr [EDI],XMM1
00504a18  894728                    MOV dword ptr [EDI + 0x28],EAX
00504a1b  0f115710                  MOVUPS xmmword ptr [EDI + 0x10],XMM2
00504a1f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00504a22  64890d00000000            MOV dword ptr FS:[0x0],ECX
00504a29  59                        POP ECX
00504a2a  5f                        POP EDI
00504a2b  5e                        POP ESI
00504a2c  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00504a2f  33cd                      XOR ECX,EBP
00504a31  e8f5a65e00                CALL 0x00aef12b
00504a36  8be5                      MOV ESP,EBP
00504a38  5d                        POP EBP
00504a39  8be3                      MOV ESP,EBX
00504a3b  5b                        POP EBX
00504a3c  c3                        RET
