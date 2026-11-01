; J460 NPC AI 0x00653070 HELPER_Projectile_Update
; types=9
; identities=9.*
; entry=00653070
00653070  53                        PUSH EBX
00653071  8bdc                      MOV EBX,ESP
00653073  83ec08                    SUB ESP,0x8
00653076  83e4f8                    AND ESP,0xfffffff8
00653079  83c404                    ADD ESP,0x4
0065307c  55                        PUSH EBP
0065307d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00653080  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00653084  8bec                      MOV EBP,ESP
00653086  6aff                      PUSH -0x1
00653088  68f675af00                PUSH 0xaf75f6
0065308d  64a100000000              MOV EAX,FS:[0x0]
00653093  50                        PUSH EAX
00653094  53                        PUSH EBX
00653095  81eca8050000              SUB ESP,0x5a8
0065309b  a1b493bf00                MOV EAX,[0x00bf93b4]
006530a0  33c5                      XOR EAX,EBP
006530a2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
006530a5  56                        PUSH ESI
006530a6  57                        PUSH EDI
006530a7  50                        PUSH EAX
006530a8  8d45f4                    LEA EAX,[EBP + -0xc]
006530ab  64a300000000              MOV FS:[0x0],EAX
006530b1  8bf9                      MOV EDI,ECX
006530b3  89bdc0fcffff              MOV dword ptr [EBP + 0xfffffcc0],EDI
006530b9  c785a8fcffff00000000      MOV dword ptr [EBP + 0xfffffca8],0x0
006530c3  8db79c030000              LEA ESI,[EDI + 0x39c]
006530c9  89b548fcffff              MOV dword ptr [EBP + 0xfffffc48],ESI
006530cf  e81cfdffff                CALL 0x00652df0
006530d4  8b871c030000              MOV EAX,dword ptr [EDI + 0x31c]
006530da  f30f1106                  MOVSS dword ptr [ESI],XMM0
006530de  85c0                      TEST EAX,EAX
006530e0  7e07                      JLE 0x006530e9
006530e2  48                        DEC EAX
006530e3  89871c030000              MOV dword ptr [EDI + 0x31c],EAX
006530e9  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
006530ef  2510380040                AND EAX,0x40003810
006530f4  83c800                    OR EAX,0x0
006530f7  7407                      JZ 0x00653100
006530f9  c6879001000000            MOV byte ptr [EDI + 0x190],0x0
00653100  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00653106  83e020                    AND EAX,0x20
00653109  83c800                    OR EAX,0x0
0065310c  7467                      JZ 0x00653175
0065310e  83bf1802000000            CMP dword ptr [EDI + 0x218],0x0
00653115  7f5e                      JG 0x00653175
00653117  e844be0900                CALL 0x006eef60
0065311c  33d2                      XOR EDX,EDX
0065311e  b907000000                MOV ECX,0x7
00653123  f7f1                      DIV ECX
00653125  6a00                      PUSH 0x0
00653127  83c20c                    ADD EDX,0xc
0065312a  8bcf                      MOV ECX,EDI
0065312c  52                        PUSH EDX
0065312d  e8de950500                CALL 0x006ac710
00653132  84c0                      TEST AL,AL
00653134  743f                      JZ 0x00653175
00653136  83a768010000df            AND dword ptr [EDI + 0x168],0xffffffdf
0065313d  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00653143  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00653149  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00653151  f30f118760040000          MOVSS dword ptr [EDI + 0x460],XMM0
00653159  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00653161  f30f118764040000          MOVSS dword ptr [EDI + 0x464],XMM0
00653169  8b07                      MOV EAX,dword ptr [EDI]
0065316b  8bcf                      MOV ECX,EDI
0065316d  ff5028                    CALL dword ptr [EAX + 0x28]
00653170  e96f7b0000                JMP 0x0065ace4
00653175  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0065317b  83e020                    AND EAX,0x20
0065317e  83c800                    OR EAX,0x0
00653181  7435                      JZ 0x006531b8
00653183  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0065318a  752c                      JNZ 0x006531b8
0065318c  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00653194  8bcf                      MOV ECX,EDI
00653196  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0065319e  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006531a6  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
006531ae  e86db60500                CALL 0x006ae820
006531b3  e92c7b0000                JMP 0x0065ace4
006531b8  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
006531bb  f30f100da4a7ba00          MOVSS XMM1,dword ptr [0x00baa7a4]
006531c3  f30f1015fca6ba00          MOVSS XMM2,dword ptr [0x00baa6fc]
006531cb  85c0                      TEST EAX,EAX
006531cd  0f8402030000              JZ 0x006534d5
006531d3  83f803                    CMP EAX,0x3
006531d6  0f84f9020000              JZ 0x006534d5
006531dc  83f804                    CMP EAX,0x4
006531df  0f84f0020000              JZ 0x006534d5
006531e5  83f806                    CMP EAX,0x6
006531e8  0f84e7020000              JZ 0x006534d5
006531ee  83f801                    CMP EAX,0x1
006531f1  0f8599000000              JNZ 0x00653290
006531f7  83bf4404000064            CMP dword ptr [EDI + 0x444],0x64
006531fe  0f846f030000              JZ 0x00653573
00653204  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065320a  33c0                      XOR EAX,EAX
0065320c  81e100200000              AND ECX,0x2000
00653212  0bc1                      OR EAX,ECX
00653214  743b                      JZ 0x00653251
00653216  68f849b600                PUSH 0xb649f8
0065321b  8d4dd4                    LEA ECX,[EBP + -0x2c]
0065321e  e81d91dbff                CALL 0x0040c340
00653223  8d45d4                    LEA EAX,[EBP + -0x2c]
00653226  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0065322d  50                        PUSH EAX
0065322e  6a00                      PUSH 0x0
00653230  8d4f48                    LEA ECX,[EDI + 0x48]
00653233  e8f88cdbff                CALL 0x0040bf30
00653238  8d4dd4                    LEA ECX,[EBP + -0x2c]
0065323b  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00653242  e8f99ddbff                CALL 0x0040d040
00653247  6a00                      PUSH 0x0
00653249  8d4f48                    LEA ECX,[EDI + 0x48]
0065324c  e8af8ddbff                CALL 0x0040c000
00653251  6a00                      PUSH 0x0
00653253  68fcd6b100                PUSH 0xb1d6fc
00653258  8d4f48                    LEA ECX,[EDI + 0x48]
0065325b  e82071dbff                CALL 0x0040a380
00653260  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00653263  85c9                      TEST ECX,ECX
00653265  741a                      JZ 0x00653281
00653267  8b87dc030000              MOV EAX,dword ptr [EDI + 0x3dc]
0065326d  33d2                      XOR EDX,EDX
0065326f  f77130                    DIV dword ptr [ECX + 0x30]
00653272  8d4f78                    LEA ECX,[EDI + 0x78]
00653275  660f6eca                  MOVD XMM1,EDX
00653279  0f5bc9                    CVTDQ2PS XMM1,XMM1
0065327c  e87f5bdbff                CALL 0x00408e00
00653281  c7874404000064000000      MOV dword ptr [EDI + 0x444],0x64
0065328b  e9db020000                JMP 0x0065356b
00653290  83f802                    CMP EAX,0x2
00653293  0f85d5000000              JNZ 0x0065336e
00653299  81bf44040000c8000000      CMP dword ptr [EDI + 0x444],0xc8
006532a3  8d7748                    LEA ESI,[EDI + 0x48]
006532a6  746a                      JZ 0x00653312
006532a8  6a00                      PUSH 0x0
006532aa  68881bb600                PUSH 0xb61b88
006532af  8bce                      MOV ECX,ESI
006532b1  e8ca70dbff                CALL 0x0040a380
006532b6  8bce                      MOV ECX,ESI
006532b8  e8a3b1dcff                CALL 0x0041e460
006532bd  8bc8                      MOV ECX,EAX
006532bf  e86cdbdeff                CALL 0x00440e30
006532c4  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
006532ca  8bf0                      MOV ESI,EAX
006532cc  e8cf90dbff                CALL 0x0040c3a0
006532d1  33d2                      XOR EDX,EDX
006532d3  f7f6                      DIV ESI
006532d5  8d7748                    LEA ESI,[EDI + 0x48]
006532d8  52                        PUSH EDX
006532d9  8bce                      MOV ECX,ESI
006532db  e84074dbff                CALL 0x0040a720
006532e0  6a00                      PUSH 0x0
006532e2  6a02                      PUSH 0x2
006532e4  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
006532ea  e8e1e13b00                CALL 0x00a114d0
006532ef  50                        PUSH EAX
006532f0  6a00                      PUSH 0x0
006532f2  8bce                      MOV ECX,ESI
006532f4  e8077fdbff                CALL 0x0040b200
006532f9  8d4878                    LEA ECX,[EAX + 0x78]
006532fc  e8bfe23b00                CALL 0x00a115c0
00653301  c78744040000c8000000      MOV dword ptr [EDI + 0x444],0xc8
0065330b  c6877601000000            MOV byte ptr [EDI + 0x176],0x0
00653312  f30f1097a4030000          MOVSS XMM2,dword ptr [EDI + 0x3a4]
0065331a  f30f5e1554a8ba00          DIVSS XMM2,dword ptr [0x00baa854]
00653322  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0065332a  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
00653332  e869bfddff                CALL 0x0042f2a0
00653337  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
0065333d  f30f1185c4fcffff          MOVSS dword ptr [EBP + 0xfffffcc4],XMM0
00653345  50                        PUSH EAX
00653346  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
0065334c  50                        PUSH EAX
0065334d  b93c79c300                MOV ECX,0xc3793c
00653352  e889d13b00                CALL 0x00a104e0
00653357  50                        PUSH EAX
00653358  6a00                      PUSH 0x0
0065335a  8bce                      MOV ECX,ESI
0065335c  e89f7edbff                CALL 0x0040b200
00653361  8d4834                    LEA ECX,[EAX + 0x34]
00653364  e847a01800                CALL 0x007dd3b0
00653369  e9fd010000                JMP 0x0065356b
0065336e  83f805                    CMP EAX,0x5
00653371  7565                      JNZ 0x006533d8
00653373  81bf440400002c010000      CMP dword ptr [EDI + 0x444],0x12c
0065337d  0f84f0010000              JZ 0x00653573
00653383  f30f108720040000          MOVSS XMM0,dword ptr [EDI + 0x420]
0065338b  8d48ff                    LEA ECX,[EAX + -0x1]
0065338e  f30f59c2                  MULSS XMM0,XMM2
00653392  be184ab600                MOV ESI,0xb64a18
00653397  f30f58c2                  ADDSS XMM0,XMM2
0065339b  0f2fc8                    COMISS XMM1,XMM0
0065339e  7305                      JNC 0x006533a5
006533a0  be244ab600                MOV ESI,0xb64a24
006533a5  e866bc0200                CALL 0x0067f010
006533aa  40                        INC EAX
006533ab  50                        PUSH EAX
006533ac  56                        PUSH ESI
006533ad  8d458c                    LEA EAX,[EBP + -0x74]
006533b0  6a20                      PUSH 0x20
006533b2  50                        PUSH EAX
006533b3  e868b0dcff                CALL 0x0041e420
006533b8  83c410                    ADD ESP,0x10
006533bb  8d458c                    LEA EAX,[EBP + -0x74]
006533be  8d4f48                    LEA ECX,[EDI + 0x48]
006533c1  6a00                      PUSH 0x0
006533c3  50                        PUSH EAX
006533c4  e8b76fdbff                CALL 0x0040a380
006533c9  c787440400002c010000      MOV dword ptr [EDI + 0x444],0x12c
006533d3  e993010000                JMP 0x0065356b
006533d8  83f807                    CMP EAX,0x7
006533db  0f85a5000000              JNZ 0x00653486
006533e1  81bf4404000090010000      CMP dword ptr [EDI + 0x444],0x190
006533eb  8d7748                    LEA ESI,[EDI + 0x48]
006533ee  7442                      JZ 0x00653432
006533f0  6a00                      PUSH 0x0
006533f2  683c04b600                PUSH 0xb6043c
006533f7  8bce                      MOV ECX,ESI
006533f9  e8826fdbff                CALL 0x0040a380
006533fe  8bce                      MOV ECX,ESI
00653400  e85bb0dcff                CALL 0x0041e460
00653405  8bc8                      MOV ECX,EAX
00653407  e824dadeff                CALL 0x00440e30
0065340c  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00653412  8bf0                      MOV ESI,EAX
00653414  e8878fdbff                CALL 0x0040c3a0
00653419  33d2                      XOR EDX,EDX
0065341b  f7f6                      DIV ESI
0065341d  8d7748                    LEA ESI,[EDI + 0x48]
00653420  52                        PUSH EDX
00653421  8bce                      MOV ECX,ESI
00653423  e8f872dbff                CALL 0x0040a720
00653428  c7874404000090010000      MOV dword ptr [EDI + 0x444],0x190
00653432  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0065343a  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00653442  e8e92de0ff                CALL 0x00456230
00653447  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
0065344f  51                        PUSH ECX
00653450  8bce                      MOV ECX,ESI
00653452  f30f110424                MOVSS dword ptr [ESP],XMM0
00653457  e824badeff                CALL 0x0043ee80
0065345c  f30f108720040000          MOVSS XMM0,dword ptr [EDI + 0x420]
00653464  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
0065346a  f30f5e05e4a6ba00          DIVSS XMM0,dword ptr [0x00baa6e4]
00653472  50                        PUSH EAX
00653473  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
00653479  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
00653481  e9c6feffff                JMP 0x0065334c
00653486  83f80c                    CMP EAX,0xc
00653489  0f85e4000000              JNZ 0x00653573
0065348f  81bf44040000bc020000      CMP dword ptr [EDI + 0x444],0x2bc
00653499  0f84d4000000              JZ 0x00653573
0065349f  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
006534a7  b92c4ab600                MOV ECX,0xb64a2c
006534ac  0f2f8720040000            COMISS XMM0,dword ptr [EDI + 0x420]
006534b3  b8644ab600                MOV EAX,0xb64a64
006534b8  6a00                      PUSH 0x0
006534ba  0f47c1                    CMOVA EAX,ECX
006534bd  8d4f48                    LEA ECX,[EDI + 0x48]
006534c0  50                        PUSH EAX
006534c1  e8ba6edbff                CALL 0x0040a380
006534c6  c78744040000bc020000      MOV dword ptr [EDI + 0x444],0x2bc
006534d0  e996000000                JMP 0x0065356b
006534d5  f30f108720040000          MOVSS XMM0,dword ptr [EDI + 0x420]
006534dd  be0d000000                MOV ESI,0xd
006534e2  f30f59c2                  MULSS XMM0,XMM2
006534e6  f30f58c2                  ADDSS XMM0,XMM2
006534ea  f30f2cc0                  CVTTSS2SI EAX,XMM0
006534ee  3bc6                      CMP EAX,ESI
006534f0  0f4cf0                    CMOVL ESI,EAX
006534f3  39b744040000              CMP dword ptr [EDI + 0x444],ESI
006534f9  7478                      JZ 0x00653573
006534fb  817f34b6030000            CMP dword ptr [EDI + 0x34],0x3b6
00653502  753f                      JNZ 0x00653543
00653504  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065350a  33c0                      XOR EAX,EAX
0065350c  81e100c00000              AND ECX,0xc000
00653512  0bc1                      OR EAX,ECX
00653514  b8344ab600                MOV EAX,0xb64a34
00653519  7505                      JNZ 0x00653520
0065351b  b8484ab600                MOV EAX,0xb64a48
00653520  56                        PUSH ESI
00653521  50                        PUSH EAX
00653522  8d45cc                    LEA EAX,[EBP + -0x34]
00653525  6a20                      PUSH 0x20
00653527  50                        PUSH EAX
00653528  e8f3aedcff                CALL 0x0041e420
0065352d  83c410                    ADD ESP,0x10
00653530  c7875803000000009643      MOV dword ptr [EDI + 0x358],0x43960000
0065353a  838f5801000020            OR dword ptr [EDI + 0x158],0x20
00653541  eb14                      JMP 0x00653557
00653543  56                        PUSH ESI
00653544  68544ab600                PUSH 0xb64a54
00653549  8d45cc                    LEA EAX,[EBP + -0x34]
0065354c  6a20                      PUSH 0x20
0065354e  50                        PUSH EAX
0065354f  e8ccaedcff                CALL 0x0041e420
00653554  83c410                    ADD ESP,0x10
00653557  6a00                      PUSH 0x0
00653559  8d45cc                    LEA EAX,[EBP + -0x34]
0065355c  8d4f48                    LEA ECX,[EDI + 0x48]
0065355f  50                        PUSH EAX
00653560  e81b6edbff                CALL 0x0040a380
00653565  89b744040000              MOV dword ptr [EDI + 0x444],ESI
0065356b  f30f1015fca6ba00          MOVSS XMM2,dword ptr [0x00baa6fc]
00653573  f30f108720040000          MOVSS XMM0,dword ptr [EDI + 0x420]
0065357b  8d8720040000              LEA EAX,[EDI + 0x420]
00653581  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
00653587  0f28c8                    MOVAPS XMM1,XMM0
0065358a  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00653590  b906000000                MOV ECX,0x6
00653595  f30f594824                MULSS XMM1,dword ptr [EAX + 0x24]
0065359a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0065359d  f30f118f5c010000          MOVSS dword ptr [EDI + 0x15c],XMM1
006535a5  83f808                    CMP EAX,0x8
006535a8  7511                      JNZ 0x006535bb
006535aa  f30f58c9                  ADDSS XMM1,XMM1
006535ae  f30f118f5c010000          MOVSS dword ptr [EDI + 0x15c],XMM1
006535b6  e90a060000                JMP 0x00653bc5
006535bb  83f809                    CMP EAX,0x9
006535be  7557                      JNZ 0x00653617
006535c0  81bf44040000f4010000      CMP dword ptr [EDI + 0x444],0x1f4
006535ca  0f84f5050000              JZ 0x00653bc5
006535d0  f30f58c0                  ADDSS XMM0,XMM0
006535d4  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
006535dc  f30f2cc0                  CVTTSS2SI EAX,XMM0
006535e0  83f806                    CMP EAX,0x6
006535e3  0f4fc1                    CMOVG EAX,ECX
006535e6  50                        PUSH EAX
006535e7  68d823b600                PUSH 0xb623d8
006535ec  8d45ac                    LEA EAX,[EBP + -0x54]
006535ef  6a20                      PUSH 0x20
006535f1  50                        PUSH EAX
006535f2  e829aedcff                CALL 0x0041e420
006535f7  83c410                    ADD ESP,0x10
006535fa  8d45ac                    LEA EAX,[EBP + -0x54]
006535fd  8d4f48                    LEA ECX,[EDI + 0x48]
00653600  6a00                      PUSH 0x0
00653602  50                        PUSH EAX
00653603  e8786ddbff                CALL 0x0040a380
00653608  c78744040000f4010000      MOV dword ptr [EDI + 0x444],0x1f4
00653612  e9ae050000                JMP 0x00653bc5
00653617  83f80b                    CMP EAX,0xb
0065361a  7563                      JNZ 0x0065367f
0065361c  81bf4404000058020000      CMP dword ptr [EDI + 0x444],0x258
00653626  0f8499050000              JZ 0x00653bc5
0065362c  6a00                      PUSH 0x0
0065362e  83c748                    ADD EDI,0x48
00653631  68fcd6b100                PUSH 0xb1d6fc
00653636  8bcf                      MOV ECX,EDI
00653638  e8436ddbff                CALL 0x0040a380
0065363d  8bcf                      MOV ECX,EDI
0065363f  e81caedcff                CALL 0x0041e460
00653644  8bc8                      MOV ECX,EAX
00653646  e8e5d7deff                CALL 0x00440e30
0065364b  8b8dc0fcffff              MOV ECX,dword ptr [EBP + 0xfffffcc0]
00653651  8bf0                      MOV ESI,EAX
00653653  8d89dc030000              LEA ECX,[ECX + 0x3dc]
00653659  e8428ddbff                CALL 0x0040c3a0
0065365e  33d2                      XOR EDX,EDX
00653660  8bcf                      MOV ECX,EDI
00653662  f7f6                      DIV ESI
00653664  52                        PUSH EDX
00653665  e8b670dbff                CALL 0x0040a720
0065366a  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00653670  c7874404000058020000      MOV dword ptr [EDI + 0x444],0x258
0065367a  e946050000                JMP 0x00653bc5
0065367f  83f80d                    CMP EAX,0xd
00653682  0f858a000000              JNZ 0x00653712
00653688  81bf4404000020030000      CMP dword ptr [EDI + 0x444],0x320
00653692  8d7748                    LEA ESI,[EDI + 0x48]
00653695  89b5b4fcffff              MOV dword ptr [EBP + 0xfffffcb4],ESI
0065369b  0f8416010000              JZ 0x006537b7
006536a1  6a00                      PUSH 0x0
006536a3  68fcd6b100                PUSH 0xb1d6fc
006536a8  8bce                      MOV ECX,ESI
006536aa  e8d16cdbff                CALL 0x0040a380
006536af  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
006536b5  e8e68cdbff                CALL 0x0040c3a0
006536ba  2401                      AND AL,0x1
006536bc  8bce                      MOV ECX,ESI
006536be  0fb6c0                    MOVZX EAX,AL
006536c1  50                        PUSH EAX
006536c2  e88924ebff                CALL 0x00505b50
006536c7  8bce                      MOV ECX,ESI
006536c9  e892addcff                CALL 0x0041e460
006536ce  8bc8                      MOV ECX,EAX
006536d0  e85bd7deff                CALL 0x00440e30
006536d5  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
006536db  8bf0                      MOV ESI,EAX
006536dd  e8be8cdbff                CALL 0x0040c3a0
006536e2  33d2                      XOR EDX,EDX
006536e4  f7f6                      DIV ESI
006536e6  8bb5b4fcffff              MOV ESI,dword ptr [EBP + 0xfffffcb4]
006536ec  8bce                      MOV ECX,ESI
006536ee  52                        PUSH EDX
006536ef  e82c70dbff                CALL 0x0040a720
006536f4  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
006536fa  8bce                      MOV ECX,ESI
006536fc  6a20                      PUSH 0x20
006536fe  c7874404000020030000      MOV dword ptr [EDI + 0x444],0x320
00653708  e8539df7ff                CALL 0x005cd460
0065370d  e985000000                JMP 0x00653797
00653712  83f80e                    CMP EAX,0xe
00653715  0f8504010000              JNZ 0x0065381f
0065371b  81bf4404000084030000      CMP dword ptr [EDI + 0x444],0x384
00653725  8d7748                    LEA ESI,[EDI + 0x48]
00653728  89b5b4fcffff              MOV dword ptr [EBP + 0xfffffcb4],ESI
0065372e  0f8483000000              JZ 0x006537b7
00653734  6a00                      PUSH 0x0
00653736  68fcd6b100                PUSH 0xb1d6fc
0065373b  8bce                      MOV ECX,ESI
0065373d  e83e6cdbff                CALL 0x0040a380
00653742  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00653748  e8538cdbff                CALL 0x0040c3a0
0065374d  2401                      AND AL,0x1
0065374f  8bce                      MOV ECX,ESI
00653751  0fb6c0                    MOVZX EAX,AL
00653754  50                        PUSH EAX
00653755  e8f623ebff                CALL 0x00505b50
0065375a  8bce                      MOV ECX,ESI
0065375c  e8ffacdcff                CALL 0x0041e460
00653761  8bc8                      MOV ECX,EAX
00653763  e8c8d6deff                CALL 0x00440e30
00653768  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
0065376e  8bf0                      MOV ESI,EAX
00653770  e82b8cdbff                CALL 0x0040c3a0
00653775  33d2                      XOR EDX,EDX
00653777  f7f6                      DIV ESI
00653779  8bb5b4fcffff              MOV ESI,dword ptr [EBP + 0xfffffcb4]
0065377f  8bce                      MOV ECX,ESI
00653781  52                        PUSH EDX
00653782  e8996fdbff                CALL 0x0040a720
00653787  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
0065378d  c7874404000084030000      MOV dword ptr [EDI + 0x444],0x384
00653797  8d8720040000              LEA EAX,[EDI + 0x420]
0065379d  b93c79c300                MOV ECX,0xc3793c
006537a2  50                        PUSH EAX
006537a3  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
006537a9  50                        PUSH EAX
006537aa  e831cd3b00                CALL 0x00a104e0
006537af  50                        PUSH EAX
006537b0  8bce                      MOV ECX,ESI
006537b2  e8b9c9dcff                CALL 0x00420170
006537b7  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
006537bf  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
006537c7  e8642ae0ff                CALL 0x00456230
006537cc  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
006537d4  8bce                      MOV ECX,ESI
006537d6  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
006537de  e84d3cdbff                CALL 0x00407430
006537e3  84c0                      TEST AL,AL
006537e5  740a                      JZ 0x006537f1
006537e7  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
006537ef  eb08                      JMP 0x006537f9
006537f1  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006537f9  f30f1085b4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcb4]
00653801  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
00653809  51                        PUSH ECX
0065380a  8bce                      MOV ECX,ESI
0065380c  f30f59c1                  MULSS XMM0,XMM1
00653810  f30f110424                MOVSS dword ptr [ESP],XMM0
00653815  e866b6deff                CALL 0x0043ee80
0065381a  e9a6030000                JMP 0x00653bc5
0065381f  83f80f                    CMP EAX,0xf
00653822  0f85e1000000              JNZ 0x00653909
00653828  81bf44040000e8030000      CMP dword ptr [EDI + 0x444],0x3e8
00653832  0f848d030000              JZ 0x00653bc5
00653838  6a00                      PUSH 0x0
0065383a  83c748                    ADD EDI,0x48
0065383d  6854bcb100                PUSH 0xb1bc54
00653842  8bcf                      MOV ECX,EDI
00653844  e8376bdbff                CALL 0x0040a380
00653849  8bb5c0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcc0]
0065384f  8d8edc030000              LEA ECX,[ESI + 0x3dc]
00653855  e8468bdbff                CALL 0x0040c3a0
0065385a  2401                      AND AL,0x1
0065385c  8bcf                      MOV ECX,EDI
0065385e  0fb6c0                    MOVZX EAX,AL
00653861  50                        PUSH EAX
00653862  e8f923deff                CALL 0x00435c60
00653867  6a04                      PUSH 0x4
00653869  8d8edc030000              LEA ECX,[ESI + 0x3dc]
0065386f  e8ac571900                CALL 0x007e9020
00653874  6a00                      PUSH 0x0
00653876  8bcf                      MOV ECX,EDI
00653878  660f6ec0                  MOVD XMM0,EAX
0065387c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00653880  c1e81f                    SHR EAX,0x1f
00653883  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0065388c  660f5ac0                  CVTPD2PS XMM0,XMM0
00653890  f30f59051ca9ba00          MULSS XMM0,dword ptr [0x00baa91c]
00653898  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
006538a0  e85b79dbff                CALL 0x0040b200
006538a5  f30f1085b4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcb4]
006538ad  f30f118090000000          MOVSS dword ptr [EAX + 0x90],XMM0
006538b5  e826b70200                CALL 0x0067efe0
006538ba  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
006538c2  51                        PUSH ECX
006538c3  8bcf                      MOV ECX,EDI
006538c5  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
006538cd  f30f110424                MOVSS dword ptr [ESP],XMM0
006538d2  e8a9b5deff                CALL 0x0043ee80
006538d7  ffb5b8fcffff              PUSH dword ptr [EBP + 0xfffffcb8]
006538dd  8bc6                      MOV EAX,ESI
006538df  b93c79c300                MOV ECX,0xc3793c
006538e4  c78044040000e8030000      MOV dword ptr [EAX + 0x444],0x3e8
006538ee  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
006538f4  50                        PUSH EAX
006538f5  e8e6cb3b00                CALL 0x00a104e0
006538fa  50                        PUSH EAX
006538fb  8bcf                      MOV ECX,EDI
006538fd  e86ec8dcff                CALL 0x00420170
00653902  8bfe                      MOV EDI,ESI
00653904  e9bc020000                JMP 0x00653bc5
00653909  83f810                    CMP EAX,0x10
0065390c  0f85b3020000              JNZ 0x00653bc5
00653912  f30f59c2                  MULSS XMM0,XMM2
00653916  8d95b4fcffff              LEA EDX,[EBP + 0xfffffcb4]
0065391c  8d8d4cfcffff              LEA ECX,[EBP + 0xfffffc4c]
00653922  c7854cfcffff0d000000      MOV dword ptr [EBP + 0xfffffc4c],0xd
0065392c  f30f58c2                  ADDSS XMM0,XMM2
00653930  f30f2cc0                  CVTTSS2SI EAX,XMM0
00653934  8985b4fcffff              MOV dword ptr [EBP + 0xfffffcb4],EAX
0065393a  e82192dcff                CALL 0x0041cb60
0065393f  8b00                      MOV EAX,dword ptr [EAX]
00653941  8d884c040000              LEA ECX,[EAX + 0x44c]
00653947  898db4fcffff              MOV dword ptr [EBP + 0xfffffcb4],ECX
0065394d  398f44040000              CMP dword ptr [EDI + 0x444],ECX
00653953  742e                      JZ 0x00653983
00653955  50                        PUSH EAX
00653956  68544ab600                PUSH 0xb64a54
0065395b  8d45ac                    LEA EAX,[EBP + -0x54]
0065395e  6a20                      PUSH 0x20
00653960  50                        PUSH EAX
00653961  e8baaadcff                CALL 0x0041e420
00653966  83c410                    ADD ESP,0x10
00653969  8d45ac                    LEA EAX,[EBP + -0x54]
0065396c  8d4f48                    LEA ECX,[EDI + 0x48]
0065396f  6a00                      PUSH 0x0
00653971  50                        PUSH EAX
00653972  e8096adbff                CALL 0x0040a380
00653977  8b85b4fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb4]
0065397d  898744040000              MOV dword ptr [EDI + 0x444],EAX
00653983  8d8f60030000              LEA ECX,[EDI + 0x360]
00653989  e802ca3b00                CALL 0x00a10390
0065398e  d99db4fcffff              FSTP dword ptr [EBP + 0xfffffcb4]
00653994  f30f108db4fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcb4]
0065399c  0f2f0d50aeba00            COMISS XMM1,dword ptr [0x00baae50]
006539a3  f30f118dacfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM1
006539ab  7216                      JC 0x006539c3
006539ad  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
006539b5  0f2fc1                    COMISS XMM0,XMM1
006539b8  7209                      JC 0x006539c3
006539ba  c685b0fcffff00            MOV byte ptr [EBP + 0xfffffcb0],0x0
006539c1  eb1e                      JMP 0x006539e1
006539c3  f30f100578aaba00          MOVSS XMM0,dword ptr [0x00baaa78]
006539cb  f30f5cc1                  SUBSS XMM0,XMM1
006539cf  c685b0fcffff01            MOV byte ptr [EBP + 0xfffffcb0],0x1
006539d6  0f28c8                    MOVAPS XMM1,XMM0
006539d9  f30f118dacfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM1
006539e1  ffb5b0fcffff              PUSH dword ptr [EBP + 0xfffffcb0]
006539e7  8d4f48                    LEA ECX,[EDI + 0x48]
006539ea  e87122deff                CALL 0x00435c60
006539ef  f30f1085acfcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcac]
006539f7  51                        PUSH ECX
006539f8  8d4f48                    LEA ECX,[EDI + 0x48]
006539fb  f30f110424                MOVSS dword ptr [ESP],XMM0
00653a00  e87bb4deff                CALL 0x0043ee80
00653a05  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00653a0b  8db73c030000              LEA ESI,[EDI + 0x33c]
00653a11  85c9                      TEST ECX,ECX
00653a13  0f850f010000              JNZ 0x00653b28
00653a19  e842b50900                CALL 0x006eef60
00653a1e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00653a24  50                        PUSH EAX
00653a25  6a00                      PUSH 0x0
00653a27  57                        PUSH EDI
00653a28  6840b6c700                PUSH 0xc7b640
00653a2d  56                        PUSH ESI
00653a2e  68a6000000                PUSH 0xa6
00653a33  68e8030000                PUSH 0x3e8
00653a38  e8e350ddff                CALL 0x00428b20
00653a3d  8bf8                      MOV EDI,EAX
00653a3f  8bcf                      MOV ECX,EDI
00653a41  e88a23deff                CALL 0x00435dd0
00653a46  f30f100de0a3ba00          MOVSS XMM1,dword ptr [0x00baa3e0]
00653a4e  0f57db                    XORPS XMM3,XMM3
00653a51  51                        PUSH ECX
00653a52  0f57d2                    XORPS XMM2,XMM2
00653a55  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00653a5c  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00653a62  8bf0                      MOV ESI,EAX
00653a64  e887fedcff                CALL 0x004238f0
00653a69  50                        PUSH EAX
00653a6a  8bce                      MOV ECX,ESI
00653a6c  e85f39dbff                CALL 0x004073d0
00653a71  6a00                      PUSH 0x0
00653a73  6a01                      PUSH 0x1
00653a75  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
00653a7b  e850da3b00                CALL 0x00a114d0
00653a80  8bcf                      MOV ECX,EDI
00653a82  e84923deff                CALL 0x00435dd0
00653a87  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
00653a8d  51                        PUSH ECX
00653a8e  6a00                      PUSH 0x0
00653a90  8bc8                      MOV ECX,EAX
00653a92  e86977dbff                CALL 0x0040b200
00653a97  8d4878                    LEA ECX,[EAX + 0x78]
00653a9a  e821db3b00                CALL 0x00a115c0
00653a9f  8bcf                      MOV ECX,EDI
00653aa1  e82a23deff                CALL 0x00435dd0
00653aa6  8bf0                      MOV ESI,EAX
00653aa8  8d95b4fcffff              LEA EDX,[EBP + 0xfffffcb4]
00653aae  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
00653ab4  8d8d58fcffff              LEA ECX,[EBP + 0xfffffc58]
00653aba  683c79c300                PUSH 0xc3793c
00653abf  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00653ac3  f30f58c0                  ADDSS XMM0,XMM0
00653ac7  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
00653acf  e8fc36dcff                CALL 0x004171d0
00653ad4  83c404                    ADD ESP,0x4
00653ad7  8bce                      MOV ECX,ESI
00653ad9  50                        PUSH EAX
00653ada  e891c6dcff                CALL 0x00420170
00653adf  83ec08                    SUB ESP,0x8
00653ae2  8bcf                      MOV ECX,EDI
00653ae4  c74424049a99193e          MOV dword ptr [ESP + 0x4],0x3e19999a
00653aec  c704249a99193e            MOV dword ptr [ESP],0x3e19999a
00653af3  e8f823deff                CALL 0x00435ef0
00653af8  ffb5c0fcffff              PUSH dword ptr [EBP + 0xfffffcc0]
00653afe  8bcf                      MOV ECX,EDI
00653b00  e89b570500                CALL 0x006a92a0
00653b05  8b07                      MOV EAX,dword ptr [EDI]
00653b07  8bcf                      MOV ECX,EDI
00653b09  ff500c                    CALL dword ptr [EAX + 0xc]
00653b0c  57                        PUSH EDI
00653b0d  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00653b13  8bcf                      MOV ECX,EDI
00653b15  e8c6570500                CALL 0x006a92e0
00653b1a  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00653b20  85c9                      TEST ECX,ECX
00653b22  0f849d000000              JZ 0x00653bc5
00653b28  80bf7101000000            CMP byte ptr [EDI + 0x171],0x0
00653b2f  751d                      JNZ 0x00653b4e
00653b31  e89a22deff                CALL 0x00435dd0
00653b36  8bc8                      MOV ECX,EAX
00653b38  e8d338dbff                CALL 0x00407410
00653b3d  51                        PUSH ECX
00653b3e  8bc8                      MOV ECX,EAX
00653b40  c7042400000000            MOV dword ptr [ESP],0x0
00653b47  e83437dbff                CALL 0x00407280
00653b4c  eb77                      JMP 0x00653bc5
00653b4e  e87d22deff                CALL 0x00435dd0
00653b53  8bc8                      MOV ECX,EAX
00653b55  e8b638dbff                CALL 0x00407410
00653b5a  8d4f48                    LEA ECX,[EDI + 0x48]
00653b5d  8bf0                      MOV ESI,EAX
00653b5f  e8ac38dbff                CALL 0x00407410
00653b64  8bc8                      MOV ECX,EAX
00653b66  e80537dbff                CALL 0x00407270
00653b6b  d80dd0a2ba00              FMUL dword ptr [0x00baa2d0]
00653b71  51                        PUSH ECX
00653b72  8bce                      MOV ECX,ESI
00653b74  d99db4fcffff              FSTP dword ptr [EBP + 0xfffffcb4]
00653b7a  f30f1085b4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcb4]
00653b82  f30f110424                MOVSS dword ptr [ESP],XMM0
00653b87  e8f436dbff                CALL 0x00407280
00653b8c  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
00653b92  8d874c030000              LEA EAX,[EDI + 0x34c]
00653b98  50                        PUSH EAX
00653b99  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
00653b9f  50                        PUSH EAX
00653ba0  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00653ba6  e875c83b00                CALL 0x00a10420
00653bab  50                        PUSH EAX
00653bac  8bce                      MOV ECX,ESI
00653bae  e83d4dddff                CALL 0x004288f0
00653bb3  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00653bb9  8d8760030000              LEA EAX,[EDI + 0x360]
00653bbf  50                        PUSH EAX
00653bc0  e84b4dddff                CALL 0x00428910
00653bc5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00653bcb  e8b038dbff                CALL 0x00407480
00653bd0  8bc8                      MOV ECX,EAX
00653bd2  e8b9651900                CALL 0x007ea190
00653bd7  88853ffcffff              MOV byte ptr [EBP + 0xfffffc3f],AL
00653bdd  84c0                      TEST AL,AL
00653bdf  0f84a5000000              JZ 0x00653c8a
00653be5  8bcf                      MOV ECX,EDI
00653be7  e824600500                CALL 0x006a9c10
00653bec  83f801                    CMP EAX,0x1
00653bef  0f8595000000              JNZ 0x00653c8a
00653bf5  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
00653bfd  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00653c04  7646                      JBE 0x00653c4c
00653c06  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00653c0e  f30f1185c4fcffff          MOVSS dword ptr [EBP + 0xfffffcc4],XMM0
00653c16  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00653c1e  e8ed98dcff                CALL 0x0041d510
00653c23  f30f108dc4fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcc4]
00653c2b  0f2fc1                    COMISS XMM0,XMM1
00653c2e  761c                      JBE 0x00653c4c
00653c30  f30f108714040000          MOVSS XMM0,dword ptr [EDI + 0x414]
00653c38  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00653c40  f30f58c1                  ADDSS XMM0,XMM1
00653c44  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00653c4c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00653c52  e82938dbff                CALL 0x00407480
00653c57  8bc8                      MOV ECX,EAX
00653c59  e8423d1d00                CALL 0x008279a0
00653c5e  84c0                      TEST AL,AL
00653c60  7528                      JNZ 0x00653c8a
00653c62  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
00653c68  8bc1                      MOV EAX,ECX
00653c6a  8b973c040000              MOV EDX,dword ptr [EDI + 0x43c]
00653c70  83e002                    AND EAX,0x2
00653c73  83c800                    OR EAX,0x0
00653c76  7412                      JZ 0x00653c8a
00653c78  81e1efdfffff              AND ECX,0xffffdfef
00653c7e  89973c040000              MOV dword ptr [EDI + 0x43c],EDX
00653c84  898f38040000              MOV dword ptr [EDI + 0x438],ECX
00653c8a  8bcf                      MOV ECX,EDI
00653c8c  e88fab0500                CALL 0x006ae820
00653c91  8bcf                      MOV ECX,EDI
00653c93  e8785f0500                CALL 0x006a9c10
00653c98  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
00653ca0  83f801                    CMP EAX,0x1
00653ca3  0f8590030000              JNZ 0x00654039
00653ca9  8b973c040000              MOV EDX,dword ptr [EDI + 0x43c]
00653caf  33c0                      XOR EAX,EAX
00653cb1  8bb738040000              MOV ESI,dword ptr [EDI + 0x438]
00653cb7  8bca                      MOV ECX,EDX
00653cb9  81e198000000              AND ECX,0x98
00653cbf  0bc1                      OR EAX,ECX
00653cc1  7411                      JZ 0x00653cd4
00653cc3  57                        PUSH EDI
00653cc4  6a0a                      PUSH 0xa
00653cc6  6a00                      PUSH 0x0
00653cc8  51                        PUSH ECX
00653cc9  0f28d1                    MOVAPS XMM2,XMM1
00653ccc  8d8d5cfaffff              LEA ECX,[EBP + 0xfffffa5c]
00653cd2  eb7d                      JMP 0x00653d51
00653cd4  83e602                    AND ESI,0x2
00653cd7  83ce00                    OR ESI,0x0
00653cda  742a                      JZ 0x00653d06
00653cdc  817f3489030000            CMP dword ptr [EDI + 0x34],0x389
00653ce3  7521                      JNZ 0x00653d06
00653ce5  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00653ced  0f28d1                    MOVAPS XMM2,XMM1
00653cf0  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
00653cf8  57                        PUSH EDI
00653cf9  6a0a                      PUSH 0xa
00653cfb  6a00                      PUSH 0x0
00653cfd  51                        PUSH ECX
00653cfe  8d8d48faffff              LEA ECX,[EBP + 0xfffffa48]
00653d04  eb56                      JMP 0x00653d5c
00653d06  8bca                      MOV ECX,EDX
00653d08  33c0                      XOR EAX,EAX
00653d0a  81e100200000              AND ECX,0x2000
00653d10  0bc1                      OR EAX,ECX
00653d12  7423                      JZ 0x00653d37
00653d14  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00653d1c  f30f1015a4a3ba00          MOVSS XMM2,dword ptr [0x00baa3a4]
00653d24  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
00653d2c  57                        PUSH EDI
00653d2d  6a0a                      PUSH 0xa
00653d2f  6a00                      PUSH 0x0
00653d31  51                        PUSH ECX
00653d32  8d4db8                    LEA ECX,[EBP + -0x48]
00653d35  eb25                      JMP 0x00653d5c
00653d37  8bca                      MOV ECX,EDX
00653d39  33c0                      XOR EAX,EAX
00653d3b  81e100008000              AND ECX,0x800000
00653d41  0bc1                      OR EAX,ECX
00653d43  743d                      JZ 0x00653d82
00653d45  57                        PUSH EDI
00653d46  6a0a                      PUSH 0xa
00653d48  6a00                      PUSH 0x0
00653d4a  51                        PUSH ECX
00653d4b  0f57d2                    XORPS XMM2,XMM2
00653d4e  8d4d98                    LEA ECX,[EBP + -0x68]
00653d51  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00653d59  0f57db                    XORPS XMM3,XMM3
00653d5c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00653d63  e828b93b00                CALL 0x00a0f690
00653d68  f30f101580a3ba00          MOVSS XMM2,dword ptr [0x00baa380]
00653d70  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00653d76  8bd0                      MOV EDX,EAX
00653d78  e8f371fbff                CALL 0x0060af70
00653d7d  83c40c                    ADD ESP,0xc
00653d80  eb6b                      JMP 0x00653ded
00653d82  81e200800000              AND EDX,0x8000
00653d88  33c0                      XOR EAX,EAX
00653d8a  0bc2                      OR EAX,EDX
00653d8c  745f                      JZ 0x00653ded
00653d8e  e8cdb10900                CALL 0x006eef60
00653d93  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00653d99  50                        PUSH EAX
00653d9a  6a04                      PUSH 0x4
00653d9c  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00653da2  8d8760030000              LEA EAX,[EDI + 0x360]
00653da8  50                        PUSH EAX
00653da9  8d873c030000              LEA EAX,[EDI + 0x33c]
00653daf  50                        PUSH EAX
00653db0  6a7b                      PUSH 0x7b
00653db2  68e8030000                PUSH 0x3e8
00653db7  e8644dddff                CALL 0x00428b20
00653dbc  8bf0                      MOV ESI,EAX
00653dbe  b93c79c300                MOV ECX,0xc3793c
00653dc3  8d8720040000              LEA EAX,[EDI + 0x420]
00653dc9  50                        PUSH EAX
00653dca  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00653dd0  50                        PUSH EAX
00653dd1  e80ac73b00                CALL 0x00a104e0
00653dd6  50                        PUSH EAX
00653dd7  8bce                      MOV ECX,ESI
00653dd9  e8d29bddff                CALL 0x0042d9b0
00653dde  57                        PUSH EDI
00653ddf  8bce                      MOV ECX,ESI
00653de1  e8ba540500                CALL 0x006a92a0
00653de6  8b06                      MOV EAX,dword ptr [ESI]
00653de8  8bce                      MOV ECX,ESI
00653dea  ff500c                    CALL dword ptr [EAX + 0xc]
00653ded  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
00653df3  33c0                      XOR EAX,EAX
00653df5  81e100002000              AND ECX,0x200000
00653dfb  0bc1                      OR EAX,ECX
00653dfd  0f8436020000              JZ 0x00654039
00653e03  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
00653e06  898db4fcffff              MOV dword ptr [EBP + 0xfffffcb4],ECX
00653e0c  8d41ff                    LEA EAX,[ECX + -0x1]
00653e0f  3de6030000                CMP EAX,0x3e6
00653e14  0f871f020000              JA 0x00654039
00653e1a  f30f108720040000          MOVSS XMM0,dword ptr [EDI + 0x420]
00653e22  8bc1                      MOV EAX,ECX
00653e24  898db0fcffff              MOV dword ptr [EBP + 0xfffffcb0],ECX
00653e2a  f30f118590fcffff          MOVSS dword ptr [EBP + 0xfffffc90],XMM0
00653e32  83f864                    CMP EAX,0x64
00653e35  7e09                      JLE 0x00653e40
00653e37  83e864                    SUB EAX,0x64
00653e3a  8985b0fcffff              MOV dword ptr [EBP + 0xfffffcb0],EAX
00653e40  8d4f48                    LEA ECX,[EDI + 0x48]
00653e43  85c0                      TEST EAX,EAX
00653e45  0f8ed3010000              JLE 0x0065401e
00653e4b  8db73c030000              LEA ESI,[EDI + 0x33c]
00653e51  89859cfcffff              MOV dword ptr [EBP + 0xfffffc9c],EAX
00653e57  e804b10900                CALL 0x006eef60
00653e5c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00653e62  50                        PUSH EAX
00653e63  6a00                      PUSH 0x0
00653e65  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00653e6b  6840b6c700                PUSH 0xc7b640
00653e70  56                        PUSH ESI
00653e71  6a00                      PUSH 0x0
00653e73  6a09                      PUSH 0x9
00653e75  e8a64cddff                CALL 0x00428b20
00653e7a  8bf0                      MOV ESI,EAX
00653e7c  57                        PUSH EDI
00653e7d  8bce                      MOV ECX,ESI
00653e7f  89b5bcfcffff              MOV dword ptr [EBP + 0xfffffcbc],ESI
00653e85  e896540500                CALL 0x006a9320
00653e8a  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
00653e90  8bce                      MOV ECX,ESI
00653e92  e809540500                CALL 0x006a92a0
00653e97  8d4f48                    LEA ECX,[EDI + 0x48]
00653e9a  e87135dbff                CALL 0x00407410
00653e9f  50                        PUSH EAX
00653ea0  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00653ea6  e81533dbff                CALL 0x004071c0
00653eab  b902000000                MOV ECX,0x2
00653eb0  e85bb10200                CALL 0x0067f010
00653eb5  85c0                      TEST EAX,EAX
00653eb7  740a                      JZ 0x00653ec3
00653eb9  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00653ec1  eb08                      JMP 0x00653ecb
00653ec3  f30f10055ca7ba00          MOVSS XMM0,dword ptr [0x00baa75c]
00653ecb  51                        PUSH ECX
00653ecc  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00653ed2  f30f1185acfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM0
00653eda  f30f110424                MOVSS dword ptr [ESP],XMM0
00653edf  e88c94f7ff                CALL 0x005cd370
00653ee4  f30f1085acfcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcac]
00653eec  51                        PUSH ECX
00653eed  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00653ef3  f30f110424                MOVSS dword ptr [ESP],XMM0
00653ef8  e88394f7ff                CALL 0x005cd380
00653efd  f30f1085acfcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcac]
00653f05  51                        PUSH ECX
00653f06  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00653f0c  f30f110424                MOVSS dword ptr [ESP],XMM0
00653f11  e88a94f7ff                CALL 0x005cd3a0
00653f16  8b06                      MOV EAX,dword ptr [ESI]
00653f18  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00653f1e  6a01                      PUSH 0x1
00653f20  6a00                      PUSH 0x0
00653f22  68ff000000                PUSH 0xff
00653f27  6aff                      PUSH -0x1
00653f29  51                        PUSH ECX
00653f2a  8bce                      MOV ECX,ESI
00653f2c  ff503c                    CALL dword ptr [EAX + 0x3c]
00653f2f  6800002000                PUSH 0x200000
00653f34  6800200000                PUSH 0x2000
00653f39  8bce                      MOV ECX,ESI
00653f3b  e80038dfff                CALL 0x00447740
00653f40  e89bb00200                CALL 0x0067efe0
00653f45  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00653f4d  51                        PUSH ECX
00653f4e  8bce                      MOV ECX,ESI
00653f50  f30f110424                MOVSS dword ptr [ESP],XMM0
00653f55  e8861ef1ff                CALL 0x00565de0
00653f5a  f30f1015e8a7ba00          MOVSS XMM2,dword ptr [0x00baa7e8]
00653f62  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00653f68  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
00653f70  e81bbf3b00                CALL 0x00a0fe90
00653f75  50                        PUSH EAX
00653f76  8d9590fcffff              LEA EDX,[EBP + 0xfffffc90]
00653f7c  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
00653f82  e84932dcff                CALL 0x004171d0
00653f87  83c404                    ADD ESP,0x4
00653f8a  8bf0                      MOV ESI,EAX
00653f8c  e84fb00200                CALL 0x0067efe0
00653f91  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00653f99  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
00653f9f  50                        PUSH EAX
00653fa0  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
00653fa6  8bce                      MOV ECX,ESI
00653fa8  50                        PUSH EAX
00653fa9  f30f5805a4a3ba00          ADDSS XMM0,dword ptr [0x00baa3a4]
00653fb1  f30f1185c4fcffff          MOVSS dword ptr [EBP + 0xfffffcc4],XMM0
00653fb9  e822c53b00                CALL 0x00a104e0
00653fbe  8bb5bcfcffff              MOV ESI,dword ptr [EBP + 0xfffffcbc]
00653fc4  8bce                      MOV ECX,ESI
00653fc6  ff7004                    PUSH dword ptr [EAX + 0x4]
00653fc9  ff30                      PUSH dword ptr [EAX]
00653fcb  e8901ddeff                CALL 0x00435d60
00653fd0  e80bb00200                CALL 0x0067efe0
00653fd5  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00653fdd  51                        PUSH ECX
00653fde  8bce                      MOV ECX,ESI
00653fe0  f30f580500a5ba00          ADDSS XMM0,dword ptr [0x00baa500]
00653fe8  f30f110424                MOVSS dword ptr [ESP],XMM0
00653fed  e8aec8dfff                CALL 0x004508a0
00653ff2  83bdb4fcffff64            CMP dword ptr [EBP + 0xfffffcb4],0x64
00653ff9  7e0d                      JLE 0x00654008
00653ffb  ffb5b0fcffff              PUSH dword ptr [EBP + 0xfffffcb0]
00654001  8bce                      MOV ECX,ESI
00654003  e8c81cdeff                CALL 0x00435cd0
00654008  83ad9cfcffff01            SUB dword ptr [EBP + 0xfffffc9c],0x1
0065400f  8db73c030000              LEA ESI,[EDI + 0x33c]
00654015  0f853cfeffff              JNZ 0x00653e57
0065401b  8d4f48                    LEA ECX,[EDI + 0x48]
0065401e  e8ed33dbff                CALL 0x00407410
00654023  51                        PUSH ECX
00654024  8bc8                      MOV ECX,EAX
00654026  c7042400000000            MOV dword ptr [ESP],0x0
0065402d  e84e32dbff                CALL 0x00407280
00654032  c74730e8030000            MOV dword ptr [EDI + 0x30],0x3e8
00654039  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
0065403f  8b973c040000              MOV EDX,dword ptr [EDI + 0x43c]
00654045  8bca                      MOV ECX,EDX
00654047  898508fcffff              MOV dword ptr [EBP + 0xfffffc08],EAX
0065404d  83e140                    AND ECX,0x40
00654050  33c0                      XOR EAX,EAX
00654052  0bc1                      OR EAX,ECX
00654054  7436                      JZ 0x0065408c
00654056  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0065405a  f30f100d10a9ba00          MOVSS XMM1,dword ptr [0x00baa910]
00654062  7514                      JNZ 0x00654078
00654064  837f343d                  CMP dword ptr [EDI + 0x34],0x3d
00654068  750e                      JNZ 0x00654078
0065406a  837f3807                  CMP dword ptr [EDI + 0x38],0x7
0065406e  7508                      JNZ 0x00654078
00654070  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00654078  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00654080  0f2fc1                    COMISS XMM0,XMM1
00654083  7607                      JBE 0x0065408c
00654085  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
0065408c  81e200002000              AND EDX,0x200000
00654092  33c0                      XOR EAX,EAX
00654094  0bc2                      OR EAX,EDX
00654096  be1e000000                MOV ESI,0x1e
0065409b  0f849c010000              JZ 0x0065423d
006540a1  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
006540a7  85c9                      TEST ECX,ECX
006540a9  0f848e010000              JZ 0x0065423d
006540af  e88cd4ddff                CALL 0x00431540
006540b4  84c0                      TEST AL,AL
006540b6  0f8481010000              JZ 0x0065423d
006540bc  f30f108724040000          MOVSS XMM0,dword ptr [EDI + 0x424]
006540c4  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
006540ca  51                        PUSH ECX
006540cb  f30f110424                MOVSS dword ptr [ESP],XMM0
006540d0  50                        PUSH EAX
006540d1  e87ac23b00                CALL 0x00a10350
006540d6  50                        PUSH EAX
006540d7  8d9734030000              LEA EDX,[EDI + 0x334]
006540dd  8d8df8fbffff              LEA ECX,[EBP + 0xfffffbf8]
006540e3  e8e830dcff                CALL 0x004171d0
006540e8  f30f108724040000          MOVSS XMM0,dword ptr [EDI + 0x424]
006540f0  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
006540f6  f30f5805b4a9ba00          ADDSS XMM0,dword ptr [0x00baa9b4]
006540fe  83c408                    ADD ESP,0x8
00654101  f30f110424                MOVSS dword ptr [ESP],XMM0
00654106  50                        PUSH EAX
00654107  e844c23b00                CALL 0x00a10350
0065410c  50                        PUSH EAX
0065410d  8d9738030000              LEA EDX,[EDI + 0x338]
00654113  8d8dd8fbffff              LEA ECX,[EBP + 0xfffffbd8]
00654119  e8b230dcff                CALL 0x004171d0
0065411e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00654124  83c40c                    ADD ESP,0xc
00654127  e88433dbff                CALL 0x004074b0
0065412c  0387ec030000              ADD EAX,dword ptr [EDI + 0x3ec]
00654132  33d2                      XOR EDX,EDX
00654134  f7f6                      DIV ESI
00654136  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
0065413c  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00654142  50                        PUSH EAX
00654143  660f6ec2                  MOVD XMM0,EDX
00654147  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0065414b  c1ea1f                    SHR EDX,0x1f
0065414e  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
00654157  660f5ac0                  CVTPD2PS XMM0,XMM0
0065415b  f30f5905a8a7ba00          MULSS XMM0,dword ptr [0x00baa7a8]
00654163  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
0065416b  f30f1185b0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM0
00654173  e81831dcff                CALL 0x00417290
00654178  f30f1085b0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcb0]
00654180  8bf0                      MOV ESI,EAX
00654182  e8c92fdcff                CALL 0x00417150
00654187  8d85f8fbffff              LEA EAX,[EBP + 0xfffffbf8]
0065418d  f30f1185c4fcffff          MOVSS dword ptr [EBP + 0xfffffcc4],XMM0
00654195  50                        PUSH EAX
00654196  8d95c4fcffff              LEA EDX,[EBP + 0xfffffcc4]
0065419c  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
006541a2  e82930dcff                CALL 0x004171d0
006541a7  83c404                    ADD ESP,0x4
006541aa  8bce                      MOV ECX,ESI
006541ac  50                        PUSH EAX
006541ad  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
006541b3  50                        PUSH EAX
006541b4  e867c23b00                CALL 0x00a10420
006541b9  f30f1085b0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcb0]
006541c1  8bf0                      MOV ESI,EAX
006541c3  e8982fdcff                CALL 0x00417160
006541c8  8d85d8fbffff              LEA EAX,[EBP + 0xfffffbd8]
006541ce  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
006541d6  50                        PUSH EAX
006541d7  8d95bcfcffff              LEA EDX,[EBP + 0xfffffcbc]
006541dd  8d8d18fcffff              LEA ECX,[EBP + 0xfffffc18]
006541e3  e8e82fdcff                CALL 0x004171d0
006541e8  83c404                    ADD ESP,0x4
006541eb  8bce                      MOV ECX,ESI
006541ed  50                        PUSH EAX
006541ee  8d85a4fbffff              LEA EAX,[EBP + 0xfffffba4]
006541f4  50                        PUSH EAX
006541f5  e826c23b00                CALL 0x00a10420
006541fa  8d873c030000              LEA EAX,[EDI + 0x33c]
00654200  50                        PUSH EAX
00654201  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00654207  50                        PUSH EAX
00654208  8d8da4fbffff              LEA ECX,[EBP + 0xfffffba4]
0065420e  e86dc23b00                CALL 0x00a10480
00654213  50                        PUSH EAX
00654214  8d8f60030000              LEA ECX,[EDI + 0x360]
0065421a  e891911800                CALL 0x007dd3b0
0065421f  c7876c0300000000803f      MOV dword ptr [EDI + 0x36c],0x3f800000
00654229  c7871404000000000000      MOV dword ptr [EDI + 0x414],0x0
00654233  c787100400000000b8c1      MOV dword ptr [EDI + 0x410],0xc1b80000
0065423d  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
00654243  33c0                      XOR EAX,EAX
00654245  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0065424d  81e100200000              AND ECX,0x2000
00654253  0bc1                      OR EAX,ECX
00654255  0f844b010000              JZ 0x006543a6
0065425b  0f57d2                    XORPS XMM2,XMM2
0065425e  0f28c8                    MOVAPS XMM1,XMM0
00654261  8bcf                      MOV ECX,EDI
00654263  e8f8840500                CALL 0x006ac760
00654268  85c0                      TEST EAX,EAX
0065426a  0f842e010000              JZ 0x0065439e
00654270  e8ebac0900                CALL 0x006eef60
00654275  8bf0                      MOV ESI,EAX
00654277  c785c4fcffff0000003f      MOV dword ptr [EBP + 0xfffffcc4],0x3f000000
00654281  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
00654287  50                        PUSH EAX
00654288  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
0065428e  8d8f60030000              LEA ECX,[EDI + 0x360]
00654294  50                        PUSH EAX
00654295  e846c23b00                CALL 0x00a104e0
0065429a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006542a0  56                        PUSH ESI
006542a1  6a00                      PUSH 0x0
006542a3  57                        PUSH EDI
006542a4  50                        PUSH EAX
006542a5  8d873c030000              LEA EAX,[EDI + 0x33c]
006542ab  50                        PUSH EAX
006542ac  6a6f                      PUSH 0x6f
006542ae  68e8030000                PUSH 0x3e8
006542b3  e86848ddff                CALL 0x00428b20
006542b8  6a00                      PUSH 0x0
006542ba  6a02                      PUSH 0x2
006542bc  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
006542c2  8bf8                      MOV EDI,EAX
006542c4  e807d23b00                CALL 0x00a114d0
006542c9  8bcf                      MOV ECX,EDI
006542cb  e8001bdeff                CALL 0x00435dd0
006542d0  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
006542d6  51                        PUSH ECX
006542d7  6a00                      PUSH 0x0
006542d9  8bc8                      MOV ECX,EAX
006542db  e8206fdbff                CALL 0x0040b200
006542e0  8d4878                    LEA ECX,[EAX + 0x78]
006542e3  e8d8d23b00                CALL 0x00a115c0
006542e8  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
006542ee  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
006542f4  0f57c9                    XORPS XMM1,XMM1
006542f7  f30f109014040000          MOVSS XMM2,dword ptr [EAX + 0x414]
006542ff  8db04c030000              LEA ESI,[EAX + 0x34c]
00654305  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
0065430d  e87ebb3b00                CALL 0x00a0fe90
00654312  50                        PUSH EAX
00654313  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
00654319  8bce                      MOV ECX,ESI
0065431b  50                        PUSH EAX
0065431c  e8ffc03b00                CALL 0x00a10420
00654321  50                        PUSH EAX
00654322  8bcf                      MOV ECX,EDI
00654324  e8c72fdcff                CALL 0x004172f0
00654329  e8b2ac0200                CALL 0x0067efe0
0065432e  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00654336  0f57db                    XORPS XMM3,XMM3
00654339  51                        PUSH ECX
0065433a  0f57d2                    XORPS XMM2,XMM2
0065433d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00654344  0f57c9                    XORPS XMM1,XMM1
00654347  8d8d2cfeffff              LEA ECX,[EBP + 0xfffffe2c]
0065434d  f30f5805f8a1ba00          ADDSS XMM0,dword ptr [0x00baa1f8]
00654355  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
0065435d  e88ef5dcff                CALL 0x004238f0
00654362  f30f1085bcfcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcbc]
0065436a  8d8d2cfeffff              LEA ECX,[EBP + 0xfffffe2c]
00654370  83ec0c                    SUB ESP,0xc
00654373  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00654379  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00654381  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
00654387  c7042400000000            MOV dword ptr [ESP],0x0
0065438e  e84dec0200                CALL 0x00682fe0
00654393  8d8d2cfeffff              LEA ECX,[EBP + 0xfffffe2c]
00654399  e99c010000                JMP 0x0065453a
0065439e  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
006543a6  817f343c030000            CMP dword ptr [EDI + 0x34],0x33c
006543ad  0f85b6010000              JNZ 0x00654569
006543b3  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
006543b7  0f85ac010000              JNZ 0x00654569
006543bd  0f57d2                    XORPS XMM2,XMM2
006543c0  0f28c8                    MOVAPS XMM1,XMM0
006543c3  8bcf                      MOV ECX,EDI
006543c5  e896830500                CALL 0x006ac760
006543ca  85c0                      TEST EAX,EAX
006543cc  0f8497010000              JZ 0x00654569
006543d2  e889ab0900                CALL 0x006eef60
006543d7  8bf0                      MOV ESI,EAX
006543d9  c785c4fcffff0000003f      MOV dword ptr [EBP + 0xfffffcc4],0x3f000000
006543e3  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
006543e9  50                        PUSH EAX
006543ea  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
006543f0  8d8f60030000              LEA ECX,[EDI + 0x360]
006543f6  50                        PUSH EAX
006543f7  e8e4c03b00                CALL 0x00a104e0
006543fc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00654402  56                        PUSH ESI
00654403  6a00                      PUSH 0x0
00654405  57                        PUSH EDI
00654406  50                        PUSH EAX
00654407  8d873c030000              LEA EAX,[EDI + 0x33c]
0065440d  50                        PUSH EAX
0065440e  6a6f                      PUSH 0x6f
00654410  68e8030000                PUSH 0x3e8
00654415  e80647ddff                CALL 0x00428b20
0065441a  6a00                      PUSH 0x0
0065441c  6a02                      PUSH 0x2
0065441e  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
00654424  8bf8                      MOV EDI,EAX
00654426  e8a5d03b00                CALL 0x00a114d0
0065442b  8bcf                      MOV ECX,EDI
0065442d  e89e19deff                CALL 0x00435dd0
00654432  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
00654438  51                        PUSH ECX
00654439  6a00                      PUSH 0x0
0065443b  8bc8                      MOV ECX,EAX
0065443d  e8be6ddbff                CALL 0x0040b200
00654442  8d4878                    LEA ECX,[EAX + 0x78]
00654445  e876d13b00                CALL 0x00a115c0
0065444a  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
00654450  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
00654456  0f57c9                    XORPS XMM1,XMM1
00654459  f30f109014040000          MOVSS XMM2,dword ptr [EAX + 0x414]
00654461  8db04c030000              LEA ESI,[EAX + 0x34c]
00654467  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
0065446f  e81cba3b00                CALL 0x00a0fe90
00654474  50                        PUSH EAX
00654475  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
0065447b  8bce                      MOV ECX,ESI
0065447d  50                        PUSH EAX
0065447e  e89dbf3b00                CALL 0x00a10420
00654483  50                        PUSH EAX
00654484  8bcf                      MOV ECX,EDI
00654486  e8652edcff                CALL 0x004172f0
0065448b  e850ab0200                CALL 0x0067efe0
00654490  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00654498  0f57db                    XORPS XMM3,XMM3
0065449b  51                        PUSH ECX
0065449c  0f57d2                    XORPS XMM2,XMM2
0065449f  c704240000803f            MOV dword ptr [ESP],0x3f800000
006544a6  0f57c9                    XORPS XMM1,XMM1
006544a9  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
006544af  f30f5805f8a1ba00          ADDSS XMM0,dword ptr [0x00baa1f8]
006544b7  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
006544bf  e82cf4dcff                CALL 0x004238f0
006544c4  f30f108dbcfcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcbc]
006544cc  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
006544d2  0f28c1                    MOVAPS XMM0,XMM1
006544d5  83ec0c                    SUB ESP,0xc
006544d8  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
006544e0  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
006544e6  0f28c1                    MOVAPS XMM0,XMM1
006544e9  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
006544f1  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
006544f9  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
006544ff  f30f110c24                MOVSS dword ptr [ESP],XMM1
00654504  e8d7ea0200                CALL 0x00682fe0
00654509  683c79c300                PUSH 0xc3793c
0065450e  8d95bcfcffff              LEA EDX,[EBP + 0xfffffcbc]
00654514  c785bcfcffffc3f5283f      MOV dword ptr [EBP + 0xfffffcbc],0x3f28f5c3
0065451e  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
00654524  e8a72cdcff                CALL 0x004171d0
00654529  83c404                    ADD ESP,0x4
0065452c  8bcf                      MOV ECX,EDI
0065452e  50                        PUSH EAX
0065452f  e87c94ddff                CALL 0x0042d9b0
00654534  8d8d58feffff              LEA ECX,[EBP + 0xfffffe58]
0065453a  8b07                      MOV EAX,dword ptr [EDI]
0065453c  6a01                      PUSH 0x1
0065453e  6a00                      PUSH 0x0
00654540  68ff000000                PUSH 0xff
00654545  6aff                      PUSH -0x1
00654547  51                        PUSH ECX
00654548  8bcf                      MOV ECX,EDI
0065454a  ff503c                    CALL dword ptr [EAX + 0x3c]
0065454d  51                        PUSH ECX
0065454e  8bcf                      MOV ECX,EDI
00654550  c704240000a0c0            MOV dword ptr [ESP],0xc0a00000
00654557  e89417deff                CALL 0x00435cf0
0065455c  8b07                      MOV EAX,dword ptr [EDI]
0065455e  8bcf                      MOV ECX,EDI
00654560  ff500c                    CALL dword ptr [EAX + 0xc]
00654563  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00654569  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065456f  33c0                      XOR EAX,EAX
00654571  81e100008000              AND ECX,0x800000
00654577  0bc1                      OR EAX,ECX
00654579  0f845d010000              JZ 0x006546dc
0065457f  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
00654587  0f57d2                    XORPS XMM2,XMM2
0065458a  8bcf                      MOV ECX,EDI
0065458c  e8cf810500                CALL 0x006ac760
00654591  85c0                      TEST EAX,EAX
00654593  0f8443010000              JZ 0x006546dc
00654599  8d8f60030000              LEA ECX,[EDI + 0x360]
0065459f  51                        PUSH ECX
006545a0  8d8518fcffff              LEA EAX,[EBP + 0xfffffc18]
006545a6  c704240000b442            MOV dword ptr [ESP],0x42b40000
006545ad  50                        PUSH EAX
006545ae  e82dbd3b00                CALL 0x00a102e0
006545b3  33f6                      XOR ESI,ESI
006545b5  89b5b0fcffff              MOV dword ptr [EBP + 0xfffffcb0],ESI
006545bb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
006545c0  e89ba90900                CALL 0x006eef60
006545c5  8985b4fcffff              MOV dword ptr [EBP + 0xfffffcb4],EAX
006545cb  8d8d18fcffff              LEA ECX,[EBP + 0xfffffc18]
006545d1  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
006545d7  c785c4fcffff9a99193e      MOV dword ptr [EBP + 0xfffffcc4],0x3e19999a
006545e1  50                        PUSH EAX
006545e2  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
006545e8  50                        PUSH EAX
006545e9  e8f2be3b00                CALL 0x00a104e0
006545ee  85f6                      TEST ESI,ESI
006545f0  740a                      JZ 0x006545fc
006545f2  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006545fa  eb08                      JMP 0x00654604
006545fc  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00654604  8d8dbcfcffff              LEA ECX,[EBP + 0xfffffcbc]
0065460a  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
00654612  51                        PUSH ECX
00654613  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
00654619  51                        PUSH ECX
0065461a  8bc8                      MOV ECX,EAX
0065461c  e8bfbe3b00                CALL 0x00a104e0
00654621  ffb5b4fcffff              PUSH dword ptr [EBP + 0xfffffcb4]
00654627  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065462d  6a00                      PUSH 0x0
0065462f  6a00                      PUSH 0x0
00654631  50                        PUSH EAX
00654632  8d873c030000              LEA EAX,[EDI + 0x33c]
00654638  50                        PUSH EAX
00654639  6a00                      PUSH 0x0
0065463b  6a09                      PUSH 0x9
0065463d  e8de44ddff                CALL 0x00428b20
00654642  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00654648  8bf0                      MOV ESI,EAX
0065464a  8bce                      MOV ECX,ESI
0065464c  e80f4d0500                CALL 0x006a9360
00654651  ff7734                    PUSH dword ptr [EDI + 0x34]
00654654  8bce                      MOV ECX,ESI
00654656  e855d0ddff                CALL 0x004316b0
0065465b  ff7738                    PUSH dword ptr [EDI + 0x38]
0065465e  8bce                      MOV ECX,ESI
00654660  e80b2ae6ff                CALL 0x004b7070
00654665  8b06                      MOV EAX,dword ptr [ESI]
00654667  8d8fb8010000              LEA ECX,[EDI + 0x1b8]
0065466d  6a01                      PUSH 0x1
0065466f  6a00                      PUSH 0x0
00654671  68ff000000                PUSH 0xff
00654676  6aff                      PUSH -0x1
00654678  51                        PUSH ECX
00654679  8bce                      MOV ECX,ESI
0065467b  ff503c                    CALL dword ptr [EAX + 0x3c]
0065467e  f30f108710040000          MOVSS XMM0,dword ptr [EDI + 0x410]
00654686  51                        PUSH ECX
00654687  8bce                      MOV ECX,ESI
00654689  f30f110424                MOVSS dword ptr [ESP],XMM0
0065468e  e8edc1dfff                CALL 0x00450880
00654693  6a00                      PUSH 0x0
00654695  6800000008                PUSH 0x8000000
0065469a  8bce                      MOV ECX,ESI
0065469c  e89f30dfff                CALL 0x00447740
006546a1  51                        PUSH ECX
006546a2  8bce                      MOV ECX,ESI
006546a4  c704240ad723bd            MOV dword ptr [ESP],0xbd23d70a
006546ab  e8e005dfff                CALL 0x00444c90
006546b0  51                        PUSH ECX
006546b1  8bce                      MOV ECX,ESI
006546b3  c70424295c8f3f            MOV dword ptr [ESP],0x3f8f5c29
006546ba  e8b166e5ff                CALL 0x004aad70
006546bf  8b06                      MOV EAX,dword ptr [ESI]
006546c1  8bce                      MOV ECX,ESI
006546c3  ff500c                    CALL dword ptr [EAX + 0xc]
006546c6  8bb5b0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcb0]
006546cc  46                        INC ESI
006546cd  89b5b0fcffff              MOV dword ptr [EBP + 0xfffffcb0],ESI
006546d3  83fe02                    CMP ESI,0x2
006546d6  0f8ce4feffff              JL 0x006545c0
006546dc  837f2c0e                  CMP dword ptr [EDI + 0x2c],0xe
006546e0  0f852a040000              JNZ 0x00654b10
006546e6  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
006546ee  0f57d2                    XORPS XMM2,XMM2
006546f1  8bcf                      MOV ECX,EDI
006546f3  e868800500                CALL 0x006ac760
006546f8  85c0                      TEST EAX,EAX
006546fa  0f8410040000              JZ 0x00654b10
00654700  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
00654708  0f2f87a4030000            COMISS XMM0,dword ptr [EDI + 0x3a4]
0065470f  0f86a7010000              JBE 0x006548bc
00654715  e8c6a80200                CALL 0x0067efe0
0065471a  f30f100d24a9ba00          MOVSS XMM1,dword ptr [0x00baa924]
00654722  f30f5c8fa4030000          SUBSS XMM1,dword ptr [EDI + 0x3a4]
0065472a  f30f5e0d04a9ba00          DIVSS XMM1,dword ptr [0x00baa904]
00654732  0f2fc8                    COMISS XMM1,XMM0
00654735  0f8681010000              JBE 0x006548bc
0065473b  e820a80900                CALL 0x006eef60
00654740  8bf0                      MOV ESI,EAX
00654742  c785c4fcffff0000003f      MOV dword ptr [EBP + 0xfffffcc4],0x3f000000
0065474c  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
00654752  50                        PUSH EAX
00654753  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00654759  8d8f60030000              LEA ECX,[EDI + 0x360]
0065475f  50                        PUSH EAX
00654760  e87bbd3b00                CALL 0x00a104e0
00654765  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065476b  56                        PUSH ESI
0065476c  6a00                      PUSH 0x0
0065476e  57                        PUSH EDI
0065476f  50                        PUSH EAX
00654770  8d873c030000              LEA EAX,[EDI + 0x33c]
00654776  50                        PUSH EAX
00654777  6a3b                      PUSH 0x3b
00654779  68e8030000                PUSH 0x3e8
0065477e  e89d43ddff                CALL 0x00428b20
00654783  8bf8                      MOV EDI,EAX
00654785  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
0065478b  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
00654791  0f57c9                    XORPS XMM1,XMM1
00654794  f30f109014040000          MOVSS XMM2,dword ptr [EAX + 0x414]
0065479c  8db04c030000              LEA ESI,[EAX + 0x34c]
006547a2  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
006547aa  e8e1b63b00                CALL 0x00a0fe90
006547af  50                        PUSH EAX
006547b0  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
006547b6  8bce                      MOV ECX,ESI
006547b8  50                        PUSH EAX
006547b9  e862bc3b00                CALL 0x00a10420
006547be  50                        PUSH EAX
006547bf  8bcf                      MOV ECX,EDI
006547c1  e82a2bdcff                CALL 0x004172f0
006547c6  683c79c300                PUSH 0xc3793c
006547cb  8d95bcfcffff              LEA EDX,[EBP + 0xfffffcbc]
006547d1  c785bcfcffff0000c03f      MOV dword ptr [EBP + 0xfffffcbc],0x3fc00000
006547db  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
006547e1  e8ea29dcff                CALL 0x004171d0
006547e6  83c404                    ADD ESP,0x4
006547e9  8bcf                      MOV ECX,EDI
006547eb  50                        PUSH EAX
006547ec  e8bf91ddff                CALL 0x0042d9b0
006547f1  e8eaa70200                CALL 0x0067efe0
006547f6  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
006547fe  51                        PUSH ECX
006547ff  8bcf                      MOV ECX,EDI
00654801  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00654809  f30f110424                MOVSS dword ptr [ESP],XMM0
0065480e  e89d16deff                CALL 0x00435eb0
00654813  b90f000000                MOV ECX,0xf
00654818  e8f3a70200                CALL 0x0067f010
0065481d  83c00f                    ADD EAX,0xf
00654820  8bcf                      MOV ECX,EDI
00654822  50                        PUSH EAX
00654823  e86816deff                CALL 0x00435e90
00654828  8b07                      MOV EAX,dword ptr [EDI]
0065482a  f30f101df8a1ba00          MOVSS XMM3,dword ptr [0x00baa1f8]
00654832  f30f101544a2ba00          MOVSS XMM2,dword ptr [0x00baa244]
0065483a  f30f100d80a2ba00          MOVSS XMM1,dword ptr [0x00baa280]
00654842  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00654845  51                        PUSH ECX
00654846  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
0065484c  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
00654853  e898f0dcff                CALL 0x004238f0
00654858  6a01                      PUSH 0x1
0065485a  6a00                      PUSH 0x0
0065485c  68ff000000                PUSH 0xff
00654861  6aff                      PUSH -0x1
00654863  50                        PUSH EAX
00654864  8bcf                      MOV ECX,EDI
00654866  ffd6                      CALL ESI
00654868  8b07                      MOV EAX,dword ptr [EDI]
0065486a  0f57db                    XORPS XMM3,XMM3
0065486d  f30f1015a4a3ba00          MOVSS XMM2,dword ptr [0x00baa3a4]
00654875  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
0065487d  51                        PUSH ECX
0065487e  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00654881  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00654887  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0065488e  e85df0dcff                CALL 0x004238f0
00654893  6a01                      PUSH 0x1
00654895  6a01                      PUSH 0x1
00654897  6a01                      PUSH 0x1
00654899  6a0c                      PUSH 0xc
0065489b  50                        PUSH EAX
0065489c  8bcf                      MOV ECX,EDI
0065489e  ffd6                      CALL ESI
006548a0  51                        PUSH ECX
006548a1  8bcf                      MOV ECX,EDI
006548a3  c7042400007ac4            MOV dword ptr [ESP],0xc47a0000
006548aa  e84114deff                CALL 0x00435cf0
006548af  8b07                      MOV EAX,dword ptr [EDI]
006548b1  8bcf                      MOV ECX,EDI
006548b3  ff500c                    CALL dword ptr [EAX + 0xc]
006548b6  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
006548bc  e89fa60900                CALL 0x006eef60
006548c1  8985b4fcffff              MOV dword ptr [EBP + 0xfffffcb4],EAX
006548c7  8d8f60030000              LEA ECX,[EDI + 0x360]
006548cd  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
006548d3  c785c4fcffff0000003f      MOV dword ptr [EBP + 0xfffffcc4],0x3f000000
006548dd  50                        PUSH EAX
006548de  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
006548e4  50                        PUSH EAX
006548e5  e8f6bb3b00                CALL 0x00a104e0
006548ea  89854cfcffff              MOV dword ptr [EBP + 0xfffffc4c],EAX
006548f0  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
006548f6  50                        PUSH EAX
006548f7  e874a70200                CALL 0x0067f070
006548fc  8b95c0fcffff              MOV EDX,dword ptr [EBP + 0xfffffcc0]
00654902  8d8d58fcffff              LEA ECX,[EBP + 0xfffffc58]
00654908  50                        PUSH EAX
00654909  8d9270030000              LEA EDX,[EDX + 0x370]
0065490f  e8bc28dcff                CALL 0x004171d0
00654914  83c408                    ADD ESP,0x8
00654917  8bf0                      MOV ESI,EAX
00654919  e8c2a60200                CALL 0x0067efe0
0065491e  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
00654924  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
0065492c  50                        PUSH EAX
0065492d  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
00654933  8bce                      MOV ECX,ESI
00654935  50                        PUSH EAX
00654936  e8a5bb3b00                CALL 0x00a104e0
0065493b  50                        PUSH EAX
0065493c  8d8508fcffff              LEA EAX,[EBP + 0xfffffc08]
00654942  50                        PUSH EAX
00654943  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00654949  e8d2ba3b00                CALL 0x00a10420
0065494e  ffb5b4fcffff              PUSH dword ptr [EBP + 0xfffffcb4]
00654954  8bb5c0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcc0]
0065495a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00654960  6a00                      PUSH 0x0
00654962  56                        PUSH ESI
00654963  ffb54cfcffff              PUSH dword ptr [EBP + 0xfffffc4c]
00654969  50                        PUSH EAX
0065496a  6a6f                      PUSH 0x6f
0065496c  68e8030000                PUSH 0x3e8
00654971  e8aa41ddff                CALL 0x00428b20
00654976  8bf8                      MOV EDI,EAX
00654978  8d8dc8fbffff              LEA ECX,[EBP + 0xfffffbc8]
0065497e  8bc6                      MOV EAX,ESI
00654980  0f57c9                    XORPS XMM1,XMM1
00654983  f30f109014040000          MOVSS XMM2,dword ptr [EAX + 0x414]
0065498b  8db04c030000              LEA ESI,[EAX + 0x34c]
00654991  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00654999  e8f2b43b00                CALL 0x00a0fe90
0065499e  50                        PUSH EAX
0065499f  8d859cfbffff              LEA EAX,[EBP + 0xfffffb9c]
006549a5  8bce                      MOV ECX,ESI
006549a7  50                        PUSH EAX
006549a8  e873ba3b00                CALL 0x00a10420
006549ad  50                        PUSH EAX
006549ae  8bcf                      MOV ECX,EDI
006549b0  e83b29dcff                CALL 0x004172f0
006549b5  e826a60200                CALL 0x0067efe0
006549ba  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
006549c2  0f57db                    XORPS XMM3,XMM3
006549c5  51                        PUSH ECX
006549c6  0f57d2                    XORPS XMM2,XMM2
006549c9  c704240000803f            MOV dword ptr [ESP],0x3f800000
006549d0  0f57c9                    XORPS XMM1,XMM1
006549d3  8d8d84feffff              LEA ECX,[EBP + 0xfffffe84]
006549d9  f30f5805f8a1ba00          ADDSS XMM0,dword ptr [0x00baa1f8]
006549e1  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
006549e9  e802efdcff                CALL 0x004238f0
006549ee  f30f1085b4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcb4]
006549f6  8d8d84feffff              LEA ECX,[EBP + 0xfffffe84]
006549fc  83ec0c                    SUB ESP,0xc
006549ff  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00654a07  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
00654a0d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00654a14  e8c7e50200                CALL 0x00682fe0
00654a19  e8c2a50200                CALL 0x0067efe0
00654a1e  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00654a26  683c79c300                PUSH 0xc3793c
00654a2b  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
00654a33  8d95b4fcffff              LEA EDX,[EBP + 0xfffffcb4]
00654a39  8d8dc8fbffff              LEA ECX,[EBP + 0xfffffbc8]
00654a3f  e88c27dcff                CALL 0x004171d0
00654a44  83c404                    ADD ESP,0x4
00654a47  8bcf                      MOV ECX,EDI
00654a49  50                        PUSH EAX
00654a4a  e8618fddff                CALL 0x0042d9b0
00654a4f  8b07                      MOV EAX,dword ptr [EDI]
00654a51  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00654a57  83ec20                    SUB ESP,0x20
00654a5a  0f57db                    XORPS XMM3,XMM3
00654a5d  0f57d2                    XORPS XMM2,XMM2
00654a60  0f57c9                    XORPS XMM1,XMM1
00654a63  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00654a66  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
00654a6e  c7442418000000bf          MOV dword ptr [ESP + 0x18],0xbf000000
00654a76  c7442414cdcc4c3e          MOV dword ptr [ESP + 0x14],0x3e4ccccd
00654a7e  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
00654a86  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
00654a8e  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00654a96  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00654a9e  c7042400000000            MOV dword ptr [ESP],0x0
00654aa5  e8a610deff                CALL 0x00435b50
00654aaa  6a01                      PUSH 0x1
00654aac  6a00                      PUSH 0x0
00654aae  68ff000000                PUSH 0xff
00654ab3  6aff                      PUSH -0x1
00654ab5  50                        PUSH EAX
00654ab6  8bcf                      MOV ECX,EDI
00654ab8  ffd6                      CALL ESI
00654aba  8b07                      MOV EAX,dword ptr [EDI]
00654abc  b913000000                MOV ECX,0x13
00654ac1  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00654ac4  e847a50200                CALL 0x0067f010
00654ac9  6a01                      PUSH 0x1
00654acb  6a01                      PUSH 0x1
00654acd  83c00c                    ADD EAX,0xc
00654ad0  8bcf                      MOV ECX,EDI
00654ad2  68ff000000                PUSH 0xff
00654ad7  50                        PUSH EAX
00654ad8  8d8584feffff              LEA EAX,[EBP + 0xfffffe84]
00654ade  50                        PUSH EAX
00654adf  ffd6                      CALL ESI
00654ae1  6818fcffff                PUSH 0xfffffc18
00654ae6  8bcf                      MOV ECX,EDI
00654ae8  e8a3c3deff                CALL 0x00440e90
00654aed  8bcf                      MOV ECX,EDI
00654aef  e8dc12deff                CALL 0x00435dd0
00654af4  51                        PUSH ECX
00654af5  8bc8                      MOV ECX,EAX
00654af7  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
00654afe  e84dc3deff                CALL 0x00440e50
00654b03  8b07                      MOV EAX,dword ptr [EDI]
00654b05  8bcf                      MOV ECX,EDI
00654b07  ff500c                    CALL dword ptr [EAX + 0xc]
00654b0a  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00654b10  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00654b16  83e002                    AND EAX,0x2
00654b19  83c800                    OR EAX,0x0
00654b1c  0f8470010000              JZ 0x00654c92
00654b22  817f34b7030000            CMP dword ptr [EDI + 0x34],0x3b7
00654b29  0f8563010000              JNZ 0x00654c92
00654b2f  837f3814                  CMP dword ptr [EDI + 0x38],0x14
00654b33  0f8559010000              JNZ 0x00654c92
00654b39  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00654b41  0f57d2                    XORPS XMM2,XMM2
00654b44  8bcf                      MOV ECX,EDI
00654b46  e8157c0500                CALL 0x006ac760
00654b4b  85c0                      TEST EAX,EAX
00654b4d  0f843f010000              JZ 0x00654c92
00654b53  e808a40900                CALL 0x006eef60
00654b58  8bf0                      MOV ESI,EAX
00654b5a  c785c4fcffff0000003f      MOV dword ptr [EBP + 0xfffffcc4],0x3f000000
00654b64  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
00654b6a  50                        PUSH EAX
00654b6b  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00654b71  8d8f60030000              LEA ECX,[EDI + 0x360]
00654b77  50                        PUSH EAX
00654b78  e863b93b00                CALL 0x00a104e0
00654b7d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00654b83  56                        PUSH ESI
00654b84  6a00                      PUSH 0x0
00654b86  57                        PUSH EDI
00654b87  50                        PUSH EAX
00654b88  8d873c030000              LEA EAX,[EDI + 0x33c]
00654b8e  50                        PUSH EAX
00654b8f  6a6f                      PUSH 0x6f
00654b91  68e8030000                PUSH 0x3e8
00654b96  e8853fddff                CALL 0x00428b20
00654b9b  8bf8                      MOV EDI,EAX
00654b9d  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
00654ba3  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
00654ba9  0f57c9                    XORPS XMM1,XMM1
00654bac  f30f109014040000          MOVSS XMM2,dword ptr [EAX + 0x414]
00654bb4  8db04c030000              LEA ESI,[EAX + 0x34c]
00654bba  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00654bc2  e8c9b23b00                CALL 0x00a0fe90
00654bc7  50                        PUSH EAX
00654bc8  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
00654bce  8bce                      MOV ECX,ESI
00654bd0  50                        PUSH EAX
00654bd1  e84ab83b00                CALL 0x00a10420
00654bd6  50                        PUSH EAX
00654bd7  8bcf                      MOV ECX,EDI
00654bd9  e81227dcff                CALL 0x004172f0
00654bde  e8fda30200                CALL 0x0067efe0
00654be3  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00654beb  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00654bf1  83ec20                    SUB ESP,0x20
00654bf4  f30f5805f8a1ba00          ADDSS XMM0,dword ptr [0x00baa1f8]
00654bfc  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
00654c04  0f28c8                    MOVAPS XMM1,XMM0
00654c07  f30f590534a1ba00          MULSS XMM0,dword ptr [0x00baa134]
00654c0f  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
00654c17  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
00654c1d  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00654c23  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00654c2b  c74424100000803f          MOV dword ptr [ESP + 0x10],0x3f800000
00654c33  0f28d8                    MOVAPS XMM3,XMM0
00654c36  c744240c0000003f          MOV dword ptr [ESP + 0xc],0x3f000000
00654c3e  0f28d0                    MOVAPS XMM2,XMM0
00654c41  c744240800000040          MOV dword ptr [ESP + 0x8],0x40000000
00654c49  0f28c8                    MOVAPS XMM1,XMM0
00654c4c  c7442404cdcccc3e          MOV dword ptr [ESP + 0x4],0x3ecccccd
00654c54  c704240000803f            MOV dword ptr [ESP],0x3f800000
00654c5b  e8f00edeff                CALL 0x00435b50
00654c60  8b07                      MOV EAX,dword ptr [EDI]
00654c62  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00654c68  6a01                      PUSH 0x1
00654c6a  6a00                      PUSH 0x0
00654c6c  68ff000000                PUSH 0xff
00654c71  6aff                      PUSH -0x1
00654c73  51                        PUSH ECX
00654c74  8bcf                      MOV ECX,EDI
00654c76  ff503c                    CALL dword ptr [EAX + 0x3c]
00654c79  680cfeffff                PUSH 0xfffffe0c
00654c7e  8bcf                      MOV ECX,EDI
00654c80  e80bc2deff                CALL 0x00440e90
00654c85  8b07                      MOV EAX,dword ptr [EDI]
00654c87  8bcf                      MOV ECX,EDI
00654c89  ff500c                    CALL dword ptr [EAX + 0xc]
00654c8c  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00654c92  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
00654c98  33c0                      XOR EAX,EAX
00654c9a  f30f10054caeba00          MOVSS XMM0,dword ptr [0x00baae4c]
00654ca2  81e100002000              AND ECX,0x200000
00654ca8  0bc1                      OR EAX,ECX
00654caa  f30f1185acfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM0
00654cb2  0f842f090000              JZ 0x006555e7
00654cb8  817f30e8030000            CMP dword ptr [EDI + 0x30],0x3e8
00654cbf  0f8522090000              JNZ 0x006555e7
00654cc5  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00654ccc  0f8482070000              JZ 0x00655454
00654cd2  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00654cda  51                        PUSH ECX
00654cdb  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00654ce1  c704240000803f            MOV dword ptr [ESP],0x3f800000
00654ce8  6a00                      PUSH 0x0
00654cea  6a02                      PUSH 0x2
00654cec  6a1e                      PUSH 0x1e
00654cee  c7473000000000            MOV dword ptr [EDI + 0x30],0x0
00654cf5  e8e61b3000                CALL 0x009568e0
00654cfa  e861a20900                CALL 0x006eef60
00654cff  50                        PUSH EAX
00654d00  6a03                      PUSH 0x3
00654d02  6a00                      PUSH 0x0
00654d04  6840b6c700                PUSH 0xc7b640
00654d09  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00654d0f  51                        PUSH ECX
00654d10  6a02                      PUSH 0x2
00654d12  898dbcfcffff              MOV dword ptr [EBP + 0xfffffcbc],ECX
00654d18  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00654d1e  68e8030000                PUSH 0x3e8
00654d23  e8f83dddff                CALL 0x00428b20
00654d28  683c79c300                PUSH 0xc3793c
00654d2d  8d95c4fcffff              LEA EDX,[EBP + 0xfffffcc4]
00654d33  c785c4fcffff0000c03f      MOV dword ptr [EBP + 0xfffffcc4],0x3fc00000
00654d3d  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00654d43  8bf8                      MOV EDI,EAX
00654d45  e88624dcff                CALL 0x004171d0
00654d4a  83c404                    ADD ESP,0x4
00654d4d  8bcf                      MOV ECX,EDI
00654d4f  50                        PUSH EAX
00654d50  e85b8cddff                CALL 0x0042d9b0
00654d55  f30f1015ecadba00          MOVSS XMM2,dword ptr [0x00baadec]
00654d5d  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00654d63  0f57c9                    XORPS XMM1,XMM1
00654d66  e825b13b00                CALL 0x00a0fe90
00654d6b  50                        PUSH EAX
00654d6c  8bcf                      MOV ECX,EDI
00654d6e  e87d25dcff                CALL 0x004172f0
00654d73  51                        PUSH ECX
00654d74  8bcf                      MOV ECX,EDI
00654d76  c7042400008040            MOV dword ptr [ESP],0x40800000
00654d7d  e86e0fdeff                CALL 0x00435cf0
00654d82  8b07                      MOV EAX,dword ptr [EDI]
00654d84  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
00654d8a  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00654d92  83ec20                    SUB ESP,0x20
00654d95  0f28d8                    MOVAPS XMM3,XMM0
00654d98  0f28d0                    MOVAPS XMM2,XMM0
00654d9b  0f28c8                    MOVAPS XMM1,XMM0
00654d9e  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00654da1  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
00654da9  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
00654db1  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
00654db9  c74424100000803f          MOV dword ptr [ESP + 0x10],0x3f800000
00654dc1  c744240c0000803f          MOV dword ptr [ESP + 0xc],0x3f800000
00654dc9  c74424080000a040          MOV dword ptr [ESP + 0x8],0x40a00000
00654dd1  c744240400008040          MOV dword ptr [ESP + 0x4],0x40800000
00654dd9  c704240000803f            MOV dword ptr [ESP],0x3f800000
00654de0  e86b0ddeff                CALL 0x00435b50
00654de5  6a01                      PUSH 0x1
00654de7  6a00                      PUSH 0x0
00654de9  68ff000000                PUSH 0xff
00654dee  6aff                      PUSH -0x1
00654df0  50                        PUSH EAX
00654df1  8bcf                      MOV ECX,EDI
00654df3  ffd6                      CALL ESI
00654df5  8d8dbcfbffff              LEA ECX,[EBP + 0xfffffbbc]
00654dfb  e810f7dcff                CALL 0x00424510
00654e00  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00654e07  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00654e0d  e86e26dbff                CALL 0x00407480
00654e12  8bc8                      MOV ECX,EAX
00654e14  e8473cddff                CALL 0x00428a60
00654e19  6a00                      PUSH 0x0
00654e1b  6a00                      PUSH 0x0
00654e1d  6aff                      PUSH -0x1
00654e1f  6aff                      PUSH -0x1
00654e21  6a09                      PUSH 0x9
00654e23  8d8d18fbffff              LEA ECX,[EBP + 0xfffffb18]
00654e29  51                        PUSH ECX
00654e2a  8bc8                      MOV ECX,EAX
00654e2c  e82f61dcff                CALL 0x0041af60
00654e31  8d8d18fbffff              LEA ECX,[EBP + 0xfffffb18]
00654e37  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
00654e3b  33ff                      XOR EDI,EDI
00654e3d  e8ae28dcff                CALL 0x004176f0
00654e42  85c0                      TEST EAX,EAX
00654e44  7454                      JZ 0x00654e9a
00654e46  8bb5c0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcc0]
00654e4c  0f1f4000                  NOP dword ptr [EAX]
00654e50  57                        PUSH EDI
00654e51  8d8d18fbffff              LEA ECX,[EBP + 0xfffffb18]
00654e57  e8c427dcff                CALL 0x00417620
00654e5c  8b08                      MOV ECX,dword ptr [EAX]
00654e5e  e8dd5ee5ff                CALL 0x004aad40
00654e63  8985c4fcffff              MOV dword ptr [EBP + 0xfffffcc4],EAX
00654e69  85c0                      TEST EAX,EAX
00654e6b  741d                      JZ 0x00654e8a
00654e6d  8bc8                      MOV ECX,EAX
00654e6f  e80c22e6ff                CALL 0x004b7080
00654e74  3bc6                      CMP EAX,ESI
00654e76  7512                      JNZ 0x00654e8a
00654e78  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
00654e7e  50                        PUSH EAX
00654e7f  8d8dbcfbffff              LEA ECX,[EBP + 0xfffffbbc]
00654e85  e8c679ddff                CALL 0x0042c850
00654e8a  8d8d18fbffff              LEA ECX,[EBP + 0xfffffb18]
00654e90  47                        INC EDI
00654e91  e85a28dcff                CALL 0x004176f0
00654e96  3bf8                      CMP EDI,EAX
00654e98  72b6                      JC 0x00654e50
00654e9a  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00654ea0  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00654ea6  50                        PUSH EAX
00654ea7  8d8f60030000              LEA ECX,[EDI + 0x360]
00654ead  e87eb13b00                CALL 0x00a10030
00654eb2  8d8d20fcffff              LEA ECX,[EBP + 0xfffffc20]
00654eb8  51                        PUSH ECX
00654eb9  8bc8                      MOV ECX,EAX
00654ebb  e8a0b73b00                CALL 0x00a10660
00654ec0  f30f1005a0a9ba00          MOVSS XMM0,dword ptr [0x00baa9a0]
00654ec8  8d8d20fcffff              LEA ECX,[EBP + 0xfffffc20]
00654ece  6840b6c700                PUSH 0xc7b640
00654ed3  f30f11859cfcffff          MOVSS dword ptr [EBP + 0xfffffc9c],XMM0
00654edb  e820b73b00                CALL 0x00a10600
00654ee0  84c0                      TEST AL,AL
00654ee2  743b                      JZ 0x00654f1f
00654ee4  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00654eea  50                        PUSH EAX
00654eeb  e880a10200                CALL 0x0067f070
00654ef0  83c404                    ADD ESP,0x4
00654ef3  8d8d20fcffff              LEA ECX,[EBP + 0xfffffc20]
00654ef9  50                        PUSH EAX
00654efa  e8b1841800                CALL 0x007dd3b0
00654eff  f30f10057caeba00          MOVSS XMM0,dword ptr [0x00baae7c]
00654f07  f30f1185acfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM0
00654f0f  f30f100578aaba00          MOVSS XMM0,dword ptr [0x00baaa78]
00654f17  f30f11859cfcffff          MOVSS dword ptr [EBP + 0xfffffc9c],XMM0
00654f1f  8d8dbcfbffff              LEA ECX,[EBP + 0xfffffbbc]
00654f25  e81629dcff                CALL 0x00417840
00654f2a  83f802                    CMP EAX,0x2
00654f2d  7252                      JC 0x00654f81
00654f2f  f30f10859cfcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc9c]
00654f37  8d8dbcfbffff              LEA ECX,[EBP + 0xfffffbbc]
00654f3d  f30f5c85acfcffff          SUBSS XMM0,dword ptr [EBP + 0xfffffcac]
00654f45  f30f11859cfcffff          MOVSS dword ptr [EBP + 0xfffffc9c],XMM0
00654f4d  e8ee28dcff                CALL 0x00417840
00654f52  f30f108d9cfcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffc9c]
00654f5a  48                        DEC EAX
00654f5b  660f6ec0                  MOVD XMM0,EAX
00654f5f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00654f63  c1e81f                    SHR EAX,0x1f
00654f66  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00654f6f  660f5ac0                  CVTPD2PS XMM0,XMM0
00654f73  f30f5ec8                  DIVSS XMM1,XMM0
00654f77  f30f118d9cfcffff          MOVSS dword ptr [EBP + 0xfffffc9c],XMM1
00654f7f  eb13                      JMP 0x00654f94
00654f81  0f57c0                    XORPS XMM0,XMM0
00654f84  f30f11859cfcffff          MOVSS dword ptr [EBP + 0xfffffc9c],XMM0
00654f8c  f30f1185acfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM0
00654f94  8d8dbcfbffff              LEA ECX,[EBP + 0xfffffbbc]
00654f9a  e8a128dcff                CALL 0x00417840
00654f9f  85c0                      TEST EAX,EAX
00654fa1  0f8454010000              JZ 0x006550fb
00654fa7  33ff                      XOR EDI,EDI
00654fa9  0f1f8000000000            NOP dword ptr [EAX]
00654fb0  57                        PUSH EDI
00654fb1  8d8dbcfbffff              LEA ECX,[EBP + 0xfffffbbc]
00654fb7  e85478ddff                CALL 0x0042c810
00654fbc  660f6ec7                  MOVD XMM0,EDI
00654fc0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00654fc4  51                        PUSH ECX
00654fc5  8b30                      MOV ESI,dword ptr [EAX]
00654fc7  8d8d20fcffff              LEA ECX,[EBP + 0xfffffc20]
00654fcd  8bc7                      MOV EAX,EDI
00654fcf  c1e81f                    SHR EAX,0x1f
00654fd2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00654fdb  8d8570fcffff              LEA EAX,[EBP + 0xfffffc70]
00654fe1  660f5ac0                  CVTPD2PS XMM0,XMM0
00654fe5  f30f59859cfcffff          MULSS XMM0,dword ptr [EBP + 0xfffffc9c]
00654fed  f30f5885acfcffff          ADDSS XMM0,dword ptr [EBP + 0xfffffcac]
00654ff5  f30f110424                MOVSS dword ptr [ESP],XMM0
00654ffa  50                        PUSH EAX
00654ffb  e8e0b23b00                CALL 0x00a102e0
00655000  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
00655006  c785c4fcffff0000c040      MOV dword ptr [EBP + 0xfffffcc4],0x40c00000
00655010  50                        PUSH EAX
00655011  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00655017  50                        PUSH EAX
00655018  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
0065501e  e8bdb43b00                CALL 0x00a104e0
00655023  8b8dbcfcffff              MOV ECX,dword ptr [EBP + 0xfffffcbc]
00655029  50                        PUSH EAX
0065502a  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
00655030  50                        PUSH EAX
00655031  e8eab33b00                CALL 0x00a10420
00655036  50                        PUSH EAX
00655037  8bce                      MOV ECX,ESI
00655039  e8b238ddff                CALL 0x004288f0
0065503e  e89d9f0200                CALL 0x0067efe0
00655043  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0065504b  8d85b4fcffff              LEA EAX,[EBP + 0xfffffcb4]
00655051  50                        PUSH EAX
00655052  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
00655058  50                        PUSH EAX
00655059  f30f580504a8ba00          ADDSS XMM0,dword ptr [0x00baa804]
00655061  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
00655067  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
0065506f  e86cb43b00                CALL 0x00a104e0
00655074  50                        PUSH EAX
00655075  8bce                      MOV ECX,ESI
00655077  e89438ddff                CALL 0x00428910
0065507c  6a00                      PUSH 0x0
0065507e  6880000000                PUSH 0x80
00655083  8bce                      MOV ECX,ESI
00655085  e8b626dfff                CALL 0x00447740
0065508a  8bce                      MOV ECX,ESI
0065508c  e8ef21dcff                CALL 0x00417280
00655091  3de8030000                CMP EAX,0x3e8
00655096  7516                      JNZ 0x006550ae
00655098  8bce                      MOV ECX,ESI
0065509a  e89127dcff                CALL 0x00417830
0065509f  81ca00002000              OR EDX,0x200000
006550a5  8bce                      MOV ECX,ESI
006550a7  52                        PUSH EDX
006550a8  50                        PUSH EAX
006550a9  e89226dfff                CALL 0x00447740
006550ae  6a06                      PUSH 0x6
006550b0  8bce                      MOV ECX,ESI
006550b2  e8e96edfff                CALL 0x0044bfa0
006550b7  51                        PUSH ECX
006550b8  8bce                      MOV ECX,ESI
006550ba  c704241283c0bd            MOV dword ptr [ESP],0xbdc08312
006550c1  e8cafbdeff                CALL 0x00444c90
006550c6  6a00                      PUSH 0x0
006550c8  8bce                      MOV ECX,ESI
006550ca  e851420500                CALL 0x006a9320
006550cf  b91e000000                MOV ECX,0x1e
006550d4  e8379f0200                CALL 0x0067f010
006550d9  50                        PUSH EAX
006550da  8bce                      MOV ECX,ESI
006550dc  e8cffbdeff                CALL 0x00444cb0
006550e1  8d8dbcfbffff              LEA ECX,[EBP + 0xfffffbbc]
006550e7  47                        INC EDI
006550e8  e85327dcff                CALL 0x00417840
006550ed  3bf8                      CMP EDI,EAX
006550ef  0f82bbfeffff              JC 0x00654fb0
006550f5  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
006550fb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655101  e87a23dbff                CALL 0x00407480
00655106  f30f101dfca6ba00          MOVSS XMM3,dword ptr [0x00baa6fc]
0065510e  8db73c030000              LEA ESI,[EDI + 0x33c]
00655114  83ec0c                    SUB ESP,0xc
00655117  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
0065511d  c744240800004040          MOV dword ptr [ESP + 0x8],0x40400000
00655125  c744240400004040          MOV dword ptr [ESP + 0x4],0x40400000
0065512d  c7042400004040            MOV dword ptr [ESP],0x40400000
00655134  56                        PUSH ESI
00655135  51                        PUSH ECX
00655136  8bc8                      MOV ECX,EAX
00655138  e813de1b00                CALL 0x00812f50
0065513d  50                        PUSH EAX
0065513e  8bce                      MOV ECX,ESI
00655140  e86b821800                CALL 0x007dd3b0
00655145  817f3490030000            CMP dword ptr [EDI + 0x34],0x390
0065514c  0f842f020000              JZ 0x00655381
00655152  c785b0fcffff06000000      MOV dword ptr [EBP + 0xfffffcb0],0x6
0065515c  0f1f4000                  NOP dword ptr [EAX]
00655160  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00655166  50                        PUSH EAX
00655167  e8049f0200                CALL 0x0067f070
0065516c  83c404                    ADD ESP,0x4
0065516f  8bf0                      MOV ESI,EAX
00655171  e86a9e0200                CALL 0x0067efe0
00655176  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
0065517c  f30f1185c4fcffff          MOVSS dword ptr [EBP + 0xfffffcc4],XMM0
00655184  50                        PUSH EAX
00655185  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
0065518b  8bce                      MOV ECX,ESI
0065518d  50                        PUSH EAX
0065518e  e84db33b00                CALL 0x00a104e0
00655193  8d8dbcfcffff              LEA ECX,[EBP + 0xfffffcbc]
00655199  c785bcfcffff0000a042      MOV dword ptr [EBP + 0xfffffcbc],0x42a00000
006551a3  51                        PUSH ECX
006551a4  8d8d58fcffff              LEA ECX,[EBP + 0xfffffc58]
006551aa  51                        PUSH ECX
006551ab  8bc8                      MOV ECX,EAX
006551ad  e82eb33b00                CALL 0x00a104e0
006551b2  50                        PUSH EAX
006551b3  8d857cfcffff              LEA EAX,[EBP + 0xfffffc7c]
006551b9  50                        PUSH EAX
006551ba  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006551c0  e85bb23b00                CALL 0x00a10420
006551c5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006551cb  e8b022dbff                CALL 0x00407480
006551d0  ffb580fcffff              PUSH dword ptr [EBP + 0xfffffc80]
006551d6  8bc8                      MOV ECX,EAX
006551d8  ffb57cfcffff              PUSH dword ptr [EBP + 0xfffffc7c]
006551de  e89db51900                CALL 0x007f0780
006551e3  85c0                      TEST EAX,EAX
006551e5  0f8e8d000000              JLE 0x00655278
006551eb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006551f1  e88a22dbff                CALL 0x00407480
006551f6  51                        PUSH ECX
006551f7  c7042400008042            MOV dword ptr [ESP],0x42800000
006551fe  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
00655204  51                        PUSH ECX
00655205  8d8d08fcffff              LEA ECX,[EBP + 0xfffffc08]
0065520b  51                        PUSH ECX
0065520c  8bc8                      MOV ECX,EAX
0065520e  e80d931c00                CALL 0x0081e520
00655213  8bf0                      MOV ESI,EAX
00655215  e8c69d0200                CALL 0x0067efe0
0065521a  f30f5905fca8ba00          MULSS XMM0,dword ptr [0x00baa8fc]
00655222  f30f5c0570a8ba00          SUBSS XMM0,dword ptr [0x00baa870]
0065522a  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
00655232  e8a99d0200                CALL 0x0067efe0
00655237  f30f5905fca8ba00          MULSS XMM0,dword ptr [0x00baa8fc]
0065523f  8d8dc8fbffff              LEA ECX,[EBP + 0xfffffbc8]
00655245  f30f1095b4fcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffcb4]
0065524d  f30f5c0570a8ba00          SUBSS XMM0,dword ptr [0x00baa870]
00655255  0f28c8                    MOVAPS XMM1,XMM0
00655258  e833ac3b00                CALL 0x00a0fe90
0065525d  50                        PUSH EAX
0065525e  8d859cfbffff              LEA EAX,[EBP + 0xfffffb9c]
00655264  8bce                      MOV ECX,ESI
00655266  50                        PUSH EAX
00655267  e8b4b13b00                CALL 0x00a10420
0065526c  50                        PUSH EAX
0065526d  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
00655273  e838811800                CALL 0x007dd3b0
00655278  8d873c030000              LEA EAX,[EDI + 0x33c]
0065527e  50                        PUSH EAX
0065527f  8d855cfbffff              LEA EAX,[EBP + 0xfffffb5c]
00655285  50                        PUSH EAX
00655286  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
0065528c  e8efb13b00                CALL 0x00a10480
00655291  8d8d68fcffff              LEA ECX,[EBP + 0xfffffc68]
00655297  51                        PUSH ECX
00655298  8bc8                      MOV ECX,EAX
0065529a  e891ad3b00                CALL 0x00a10030
0065529f  e83c9d0200                CALL 0x0067efe0
006552a4  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
006552ac  8bb7c8030000              MOV ESI,dword ptr [EDI + 0x3c8]
006552b2  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
006552ba  f30f1185b4fcffff          MOVSS dword ptr [EBP + 0xfffffcb4],XMM0
006552c2  e8199d0200                CALL 0x0067efe0
006552c7  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
006552cf  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
006552d5  50                        PUSH EAX
006552d6  8d954cfcffff              LEA EDX,[EBP + 0xfffffc4c]
006552dc  8d8d4cfbffff              LEA ECX,[EBP + 0xfffffb4c]
006552e2  f30f11854cfcffff          MOVSS dword ptr [EBP + 0xfffffc4c],XMM0
006552ea  e8e11edcff                CALL 0x004171d0
006552ef  83c404                    ADD ESP,0x4
006552f2  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006552f8  50                        PUSH EAX
006552f9  8d8544fbffff              LEA EAX,[EBP + 0xfffffb44]
006552ff  50                        PUSH EAX
00655300  e81bb13b00                CALL 0x00a10420
00655305  f30f1095b4fcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffcb4]
0065530d  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00655313  51                        PUSH ECX
00655314  8bd6                      MOV EDX,ESI
00655316  8bc8                      MOV ECX,EAX
00655318  e8f335e8ff                CALL 0x004d8910
0065531d  83c404                    ADD ESP,0x4
00655320  83adb0fcffff01            SUB dword ptr [EBP + 0xfffffcb0],0x1
00655327  0f8533feffff              JNZ 0x00655160
0065532d  e82e9c0900                CALL 0x006eef60
00655332  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655338  50                        PUSH EAX
00655339  6a00                      PUSH 0x0
0065533b  57                        PUSH EDI
0065533c  6840b6c700                PUSH 0xc7b640
00655341  8d873c030000              LEA EAX,[EDI + 0x33c]
00655347  50                        PUSH EAX
00655348  6a17                      PUSH 0x17
0065534a  68e8030000                PUSH 0x3e8
0065534f  e8cc37ddff                CALL 0x00428b20
00655354  683c79c300                PUSH 0xc3793c
00655359  8d95c4fcffff              LEA EDX,[EBP + 0xfffffcc4]
0065535f  c785c4fcffff0000c03f      MOV dword ptr [EBP + 0xfffffcc4],0x3fc00000
00655369  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
0065536f  8bf0                      MOV ESI,EAX
00655371  e85a1edcff                CALL 0x004171d0
00655376  83c404                    ADD ESP,0x4
00655379  8bce                      MOV ECX,ESI
0065537b  50                        PUSH EAX
0065537c  e82f86ddff                CALL 0x0042d9b0
00655381  e85a9c0200                CALL 0x0067efe0
00655386  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0065538e  51                        PUSH ECX
0065538f  8bcf                      MOV ECX,EDI
00655391  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00655399  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
006553a1  f30f110424                MOVSS dword ptr [ESP],XMM0
006553a6  e825110600                CALL 0x006b64d0
006553ab  83ec20                    SUB ESP,0x20
006553ae  8bf8                      MOV EDI,EAX
006553b0  0f57db                    XORPS XMM3,XMM3
006553b3  0f57d2                    XORPS XMM2,XMM2
006553b6  0f57c9                    XORPS XMM1,XMM1
006553b9  8b0f                      MOV ECX,dword ptr [EDI]
006553bb  c744241ce9e8e83d          MOV dword ptr [ESP + 0x1c],0x3de8e8e9
006553c3  c7442418e1e0e03e          MOV dword ptr [ESP + 0x18],0x3ee0e0e1
006553cb  c7442414a3a2a23e          MOV dword ptr [ESP + 0x14],0x3ea2a2a3
006553d3  8b713c                    MOV ESI,dword ptr [ECX + 0x3c]
006553d6  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
006553dc  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
006553e4  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
006553ec  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
006553f4  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006553fc  c704240000803f            MOV dword ptr [ESP],0x3f800000
00655403  e84807deff                CALL 0x00435b50
00655408  6a01                      PUSH 0x1
0065540a  6a00                      PUSH 0x0
0065540c  68ff000000                PUSH 0xff
00655411  6aff                      PUSH -0x1
00655413  50                        PUSH EAX
00655414  8bcf                      MOV ECX,EDI
00655416  ffd6                      CALL ESI
00655418  8b07                      MOV EAX,dword ptr [EDI]
0065541a  8bcf                      MOV ECX,EDI
0065541c  ff500c                    CALL dword ptr [EAX + 0xc]
0065541f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655425  6a05                      PUSH 0x5
00655427  e844e20a00                CALL 0x00703670
0065542c  8d8d18fbffff              LEA ECX,[EBP + 0xfffffb18]
00655432  e87921dcff                CALL 0x004175b0
00655437  8d8dbcfbffff              LEA ECX,[EBP + 0xfffffbbc]
0065543d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00655444  e887f5dbff                CALL 0x004149d0
00655449  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
0065544f  e993010000                JMP 0x006555e7
00655454  817f3490030000            CMP dword ptr [EDI + 0x34],0x390
0065545b  0f84e2000000              JZ 0x00655543
00655461  83bfc403000000            CMP dword ptr [EDI + 0x3c4],0x0
00655468  7524                      JNZ 0x0065548e
0065546a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655470  8d873c030000              LEA EAX,[EDI + 0x33c]
00655476  6a00                      PUSH 0x0
00655478  6a00                      PUSH 0x0
0065547a  6a00                      PUSH 0x0
0065547c  50                        PUSH EAX
0065547d  e82ee60a00                CALL 0x00703ab0
00655482  85c0                      TEST EAX,EAX
00655484  7408                      JZ 0x0065548e
00655486  50                        PUSH EAX
00655487  8bcf                      MOV ECX,EDI
00655489  e8923e0500                CALL 0x006a9320
0065548e  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
00655494  85c9                      TEST ECX,ECX
00655496  0f84a7000000              JZ 0x00655543
0065549c  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
006554a2  50                        PUSH EAX
006554a3  e8e81ddcff                CALL 0x00417290
006554a8  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006554ae  51                        PUSH ECX
006554af  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
006554b5  51                        PUSH ECX
006554b6  8bc8                      MOV ECX,EAX
006554b8  e8c3af3b00                CALL 0x00a10480
006554bd  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
006554c3  51                        PUSH ECX
006554c4  8bc8                      MOV ECX,EAX
006554c6  e865ab3b00                CALL 0x00a10030
006554cb  8d8570fcffff              LEA EAX,[EBP + 0xfffffc70]
006554d1  50                        PUSH EAX
006554d2  8d8f60030000              LEA ECX,[EDI + 0x360]
006554d8  e8a3ac3b00                CALL 0x00a10180
006554dd  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
006554e3  f30f1085c4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc4]
006554eb  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006554f2  764f                      JBE 0x00655543
006554f4  8d8f60030000              LEA ECX,[EDI + 0x360]
006554fa  e8a1a93b00                CALL 0x00a0fea0
006554ff  8d879c030000              LEA EAX,[EDI + 0x39c]
00655505  50                        PUSH EAX
00655506  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
0065550c  50                        PUSH EAX
0065550d  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
00655513  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
00655519  e8c2af3b00                CALL 0x00a104e0
0065551e  50                        PUSH EAX
0065551f  8d8f60030000              LEA ECX,[EDI + 0x360]
00655525  e826af3b00                CALL 0x00a10450
0065552a  f30f1085c4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc4]
00655532  51                        PUSH ECX
00655533  8d8f60030000              LEA ECX,[EDI + 0x360]
00655539  f30f110424                MOVSS dword ptr [ESP],XMM0
0065553e  e86dab3b00                CALL 0x00a100b0
00655543  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
0065554b  0f57d2                    XORPS XMM2,XMM2
0065554e  8bcf                      MOV ECX,EDI
00655550  e80b720500                CALL 0x006ac760
00655555  85c0                      TEST EAX,EAX
00655557  0f848a000000              JZ 0x006555e7
0065555d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655563  e8181fdbff                CALL 0x00407480
00655568  8bc8                      MOV ECX,EAX
0065556a  e8f134ddff                CALL 0x00428a60
0065556f  6a00                      PUSH 0x0
00655571  6a00                      PUSH 0x0
00655573  6aff                      PUSH -0x1
00655575  6aff                      PUSH -0x1
00655577  6a09                      PUSH 0x9
00655579  8d8dacfbffff              LEA ECX,[EBP + 0xfffffbac]
0065557f  51                        PUSH ECX
00655580  8bc8                      MOV ECX,EAX
00655582  e8d959dcff                CALL 0x0041af60
00655587  8d8dacfbffff              LEA ECX,[EBP + 0xfffffbac]
0065558d  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
00655594  33f6                      XOR ESI,ESI
00655596  e85521dcff                CALL 0x004176f0
0065559b  85c0                      TEST EAX,EAX
0065559d  742f                      JZ 0x006555ce
0065559f  90                        NOP
006555a0  56                        PUSH ESI
006555a1  8d8dacfbffff              LEA ECX,[EBP + 0xfffffbac]
006555a7  e87420dcff                CALL 0x00417620
006555ac  8b08                      MOV ECX,dword ptr [EAX]
006555ae  e88d57e5ff                CALL 0x004aad40
006555b3  8bc8                      MOV ECX,EAX
006555b5  e8c61ae6ff                CALL 0x004b7080
006555ba  3bc7                      CMP EAX,EDI
006555bc  7417                      JZ 0x006555d5
006555be  8d8dacfbffff              LEA ECX,[EBP + 0xfffffbac]
006555c4  46                        INC ESI
006555c5  e82621dcff                CALL 0x004176f0
006555ca  3bf0                      CMP ESI,EAX
006555cc  72d2                      JC 0x006555a0
006555ce  8b07                      MOV EAX,dword ptr [EDI]
006555d0  8bcf                      MOV ECX,EDI
006555d2  ff5028                    CALL dword ptr [EAX + 0x28]
006555d5  8d8dacfbffff              LEA ECX,[EBP + 0xfffffbac]
006555db  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
006555e2  e8c91fdcff                CALL 0x004175b0
006555e7  837f2c0e                  CMP dword ptr [EDI + 0x2c],0xe
006555eb  7507                      JNZ 0x006555f4
006555ed  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
006555f4  817f3490030000            CMP dword ptr [EDI + 0x34],0x390
006555fb  0f85d7000000              JNZ 0x006556d8
00655601  837f3800                  CMP dword ptr [EDI + 0x38],0x0
00655605  0f85cd000000              JNZ 0x006556d8
0065560b  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0065560f  0f85c3000000              JNZ 0x006556d8
00655615  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
0065561d  0f57d2                    XORPS XMM2,XMM2
00655620  8bcf                      MOV ECX,EDI
00655622  e839710500                CALL 0x006ac760
00655627  85c0                      TEST EAX,EAX
00655629  0f84a9000000              JZ 0x006556d8
0065562f  e82c990900                CALL 0x006eef60
00655634  8bf0                      MOV ESI,EAX
00655636  c785c4fcffffcdcc4c3e      MOV dword ptr [EBP + 0xfffffcc4],0x3e4ccccd
00655640  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
00655646  50                        PUSH EAX
00655647  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
0065564d  8d8f60030000              LEA ECX,[EDI + 0x360]
00655653  50                        PUSH EAX
00655654  e887ae3b00                CALL 0x00a104e0
00655659  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065565f  56                        PUSH ESI
00655660  6a00                      PUSH 0x0
00655662  6a00                      PUSH 0x0
00655664  50                        PUSH EAX
00655665  8d873c030000              LEA EAX,[EDI + 0x33c]
0065566b  50                        PUSH EAX
0065566c  6a00                      PUSH 0x0
0065566e  6a09                      PUSH 0x9
00655670  e8ab34ddff                CALL 0x00428b20
00655675  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
0065567b  8bf0                      MOV ESI,EAX
0065567d  8bce                      MOV ECX,ESI
0065567f  e8dc3c0500                CALL 0x006a9360
00655684  ff7734                    PUSH dword ptr [EDI + 0x34]
00655687  8bce                      MOV ECX,ESI
00655689  e822c0ddff                CALL 0x004316b0
0065568e  ff7738                    PUSH dword ptr [EDI + 0x38]
00655691  8bce                      MOV ECX,ESI
00655693  e8d819e6ff                CALL 0x004b7070
00655698  8b06                      MOV EAX,dword ptr [ESI]
0065569a  8bce                      MOV ECX,ESI
0065569c  6a01                      PUSH 0x1
0065569e  6a00                      PUSH 0x0
006556a0  68ff000000                PUSH 0xff
006556a5  8b503c                    MOV EDX,dword ptr [EAX + 0x3c]
006556a8  8d87b8010000              LEA EAX,[EDI + 0x1b8]
006556ae  6aff                      PUSH -0x1
006556b0  50                        PUSH EAX
006556b1  ffd2                      CALL EDX
006556b3  51                        PUSH ECX
006556b4  8bce                      MOV ECX,ESI
006556b6  c704240000c0c0            MOV dword ptr [ESP],0xc0c00000
006556bd  e8aef5deff                CALL 0x00444c70
006556c2  51                        PUSH ECX
006556c3  8bce                      MOV ECX,ESI
006556c5  c704240000803f            MOV dword ptr [ESP],0x3f800000
006556cc  e8bff5deff                CALL 0x00444c90
006556d1  8b06                      MOV EAX,dword ptr [ESI]
006556d3  8bce                      MOV ECX,ESI
006556d5  ff500c                    CALL dword ptr [EAX + 0xc]
006556d8  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
006556df  0f840f2a0000              JZ 0x006580f4
006556e5  6a00                      PUSH 0x0
006556e7  6a20                      PUSH 0x20
006556e9  8bcf                      MOV ECX,EDI
006556eb  e8401ddcff                CALL 0x00417430
006556f0  84c0                      TEST AL,AL
006556f2  0f8571daffff              JNZ 0x00653169
006556f8  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
006556fe  83e002                    AND EAX,0x2
00655701  c7859cfcffff00000000      MOV dword ptr [EBP + 0xfffffc9c],0x0
0065570b  83c800                    OR EAX,0x0
0065570e  c785a8fcffff0a000000      MOV dword ptr [EBP + 0xfffffca8],0xa
00655718  0f8492040000              JZ 0x00655bb0
0065571e  e83d980900                CALL 0x006eef60
00655723  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655729  8db73c030000              LEA ESI,[EDI + 0x33c]
0065572f  50                        PUSH EAX
00655730  6a00                      PUSH 0x0
00655732  6a00                      PUSH 0x0
00655734  6840b6c700                PUSH 0xc7b640
00655739  56                        PUSH ESI
0065573a  6a01                      PUSH 0x1
0065573c  68e8030000                PUSH 0x3e8
00655741  89b5b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],ESI
00655747  e8d433ddff                CALL 0x00428b20
0065574c  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
00655753  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00655759  6a00                      PUSH 0x0
0065575b  6a00                      PUSH 0x0
0065575d  6a04                      PUSH 0x4
0065575f  83ec10                    SUB ESP,0x10
00655762  89859cfcffff              MOV dword ptr [EBP + 0xfffffc9c],EAX
00655768  8bc4                      MOV EAX,ESP
0065576a  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0065576d  85c9                      TEST ECX,ECX
0065576f  7403                      JZ 0x00655774
00655771  51                        PUSH ECX
00655772  eb01                      JMP 0x00655775
00655774  57                        PUSH EDI
00655775  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065577b  6a01                      PUSH 0x1
0065577d  83ec08                    SUB ESP,0x8
00655780  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
00655788  c7042400004842            MOV dword ptr [ESP],0x42480000
0065578f  56                        PUSH ESI
00655790  e80b9b0a00                CALL 0x006ff2a0
00655795  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
0065579b  83a738040000fd            AND dword ptr [EDI + 0x438],0xfffffffd
006557a2  89873c040000              MOV dword ptr [EDI + 0x43c],EAX
006557a8  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
006557ab  3d89030000                CMP EAX,0x389
006557b0  0f85d2000000              JNZ 0x00655888
006557b6  33c0                      XOR EAX,EAX
006557b8  8985b0fcffff              MOV dword ptr [EBP + 0xfffffcb0],EAX
006557be  6690                      NOP
006557c0  660f6ec0                  MOVD XMM0,EAX
006557c4  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
006557ca  0f5bc0                    CVTDQ2PS XMM0,XMM0
006557cd  51                        PUSH ECX
006557ce  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
006557d6  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
006557de  f30f110424                MOVSS dword ptr [ESP],XMM0
006557e3  50                        PUSH EAX
006557e4  e867ab3b00                CALL 0x00a10350
006557e9  50                        PUSH EAX
006557ea  8d9590fcffff              LEA EDX,[EBP + 0xfffffc90]
006557f0  c78590fcffff00000041      MOV dword ptr [EBP + 0xfffffc90],0x41000000
006557fa  8d8d18fcffff              LEA ECX,[EBP + 0xfffffc18]
00655800  e8cb19dcff                CALL 0x004171d0
00655805  83c40c                    ADD ESP,0xc
00655808  e853970900                CALL 0x006eef60
0065580d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655813  50                        PUSH EAX
00655814  6a00                      PUSH 0x0
00655816  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
0065581c  8d8518fcffff              LEA EAX,[EBP + 0xfffffc18]
00655822  50                        PUSH EAX
00655823  56                        PUSH ESI
00655824  6a02                      PUSH 0x2
00655826  6a09                      PUSH 0x9
00655828  e8f332ddff                CALL 0x00428b20
0065582d  ff7734                    PUSH dword ptr [EDI + 0x34]
00655830  8bf0                      MOV ESI,EAX
00655832  8bce                      MOV ECX,ESI
00655834  e877beddff                CALL 0x004316b0
00655839  ff7738                    PUSH dword ptr [EDI + 0x38]
0065583c  8bce                      MOV ECX,ESI
0065583e  e82d18e6ff                CALL 0x004b7070
00655843  51                        PUSH ECX
00655844  8bce                      MOV ECX,ESI
00655846  c70424cdcc4c3d            MOV dword ptr [ESP],0x3d4ccccd
0065584d  e83ef4deff                CALL 0x00444c90
00655852  8b06                      MOV EAX,dword ptr [ESI]
00655854  8bce                      MOV ECX,ESI
00655856  6a01                      PUSH 0x1
00655858  6a00                      PUSH 0x0
0065585a  68ff000000                PUSH 0xff
0065585f  6aff                      PUSH -0x1
00655861  68284ec300                PUSH 0xc34e28
00655866  ff503c                    CALL dword ptr [EAX + 0x3c]
00655869  8b85b0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb0]
0065586f  8db73c030000              LEA ESI,[EDI + 0x33c]
00655875  40                        INC EAX
00655876  8985b0fcffff              MOV dword ptr [EBP + 0xfffffcb0],EAX
0065587c  83f806                    CMP EAX,0x6
0065587f  0f8c3bffffff              JL 0x006557c0
00655885  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00655888  3db7030000                CMP EAX,0x3b7
0065588d  0f8559060000              JNZ 0x00655eec
00655893  837f3814                  CMP dword ptr [EDI + 0x38],0x14
00655897  0f854f060000              JNZ 0x00655eec
0065589d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006558a3  6a08                      PUSH 0x8
006558a5  e8c6dd0a00                CALL 0x00703670
006558aa  33f6                      XOR ESI,ESI
006558ac  89b5b0fcffff              MOV dword ptr [EBP + 0xfffffcb0],ESI
006558b2  e8a9960900                CALL 0x006eef60
006558b7  f30f101574adba00          MOVSS XMM2,dword ptr [0x00baad74]
006558bf  8d8d60fcffff              LEA ECX,[EBP + 0xfffffc60]
006558c5  660f6ec6                  MOVD XMM0,ESI
006558c9  8bf8                      MOV EDI,EAX
006558cb  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
006558d1  0f57c9                    XORPS XMM1,XMM1
006558d4  0f5bc0                    CVTDQ2PS XMM0,XMM0
006558d7  8b80c8030000              MOV EAX,dword ptr [EAX + 0x3c8]
006558dd  8985a8fcffff              MOV dword ptr [EBP + 0xfffffca8],EAX
006558e3  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
006558eb  f30f5cd0                  SUBSS XMM2,XMM0
006558ef  e89ca53b00                CALL 0x00a0fe90
006558f4  8bf0                      MOV ESI,EAX
006558f6  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
006558fc  50                        PUSH EAX
006558fd  e86e970200                CALL 0x0067f070
00655902  83c404                    ADD ESP,0x4
00655905  c78590fcffff00002041      MOV dword ptr [EBP + 0xfffffc90],0x41200000
0065590f  8d8d90fcffff              LEA ECX,[EBP + 0xfffffc90]
00655915  51                        PUSH ECX
00655916  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
0065591c  51                        PUSH ECX
0065591d  8bc8                      MOV ECX,EAX
0065591f  e8bcab3b00                CALL 0x00a104e0
00655924  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
0065592a  50                        PUSH EAX
0065592b  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
00655931  50                        PUSH EAX
00655932  e8e9aa3b00                CALL 0x00a10420
00655937  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065593d  57                        PUSH EDI
0065593e  6a00                      PUSH 0x0
00655940  ffb5a8fcffff              PUSH dword ptr [EBP + 0xfffffca8]
00655946  56                        PUSH ESI
00655947  50                        PUSH EAX
00655948  688d000000                PUSH 0x8d
0065594d  68e8030000                PUSH 0x3e8
00655952  e8c931ddff                CALL 0x00428b20
00655957  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
0065595d  8bf0                      MOV ESI,EAX
0065595f  8bce                      MOV ECX,ESI
00655961  ff7734                    PUSH dword ptr [EDI + 0x34]
00655964  e847bdddff                CALL 0x004316b0
00655969  ff7738                    PUSH dword ptr [EDI + 0x38]
0065596c  8bce                      MOV ECX,ESI
0065596e  e8fd16e6ff                CALL 0x004b7070
00655973  e868960200                CALL 0x0067efe0
00655978  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
00655980  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
00655986  50                        PUSH EAX
00655987  8d85a4fbffff              LEA EAX,[EBP + 0xfffffba4]
0065598d  b93c79c300                MOV ECX,0xc3793c
00655992  50                        PUSH EAX
00655993  f30f5805b0a4ba00          ADDSS XMM0,dword ptr [0x00baa4b0]
0065599b  f30f1185c4fcffff          MOVSS dword ptr [EBP + 0xfffffcc4],XMM0
006559a3  e838ab3b00                CALL 0x00a104e0
006559a8  50                        PUSH EAX
006559a9  8bce                      MOV ECX,ESI
006559ab  e80080ddff                CALL 0x0042d9b0
006559b0  8b06                      MOV EAX,dword ptr [ESI]
006559b2  8bce                      MOV ECX,ESI
006559b4  ff500c                    CALL dword ptr [EAX + 0xc]
006559b7  6868010000                PUSH 0x168
006559bc  8bce                      MOV ECX,ESI
006559be  e8cd04deff                CALL 0x00435e90
006559c3  e898950900                CALL 0x006eef60
006559c8  8bf8                      MOV EDI,EAX
006559ca  e811960200                CALL 0x0067efe0
006559cf  f30f5905c8a8ba00          MULSS XMM0,dword ptr [0x00baa8c8]
006559d7  8d8dd8fbffff              LEA ECX,[EBP + 0xfffffbd8]
006559dd  f30f1015c0adba00          MOVSS XMM2,dword ptr [0x00baadc0]
006559e5  0f57c9                    XORPS XMM1,XMM1
006559e8  f30f5cd0                  SUBSS XMM2,XMM0
006559ec  e89fa43b00                CALL 0x00a0fe90
006559f1  8bf0                      MOV ESI,EAX
006559f3  e8e8950200                CALL 0x0067efe0
006559f8  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00655a00  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
00655a08  f30f1185a8fcffff          MOVSS dword ptr [EBP + 0xfffffca8],XMM0
00655a10  e8cb950200                CALL 0x0067efe0
00655a15  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
00655a1d  8d8df8fbffff              LEA ECX,[EBP + 0xfffffbf8]
00655a23  f30f1095a8fcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffca8]
00655a2b  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
00655a33  0f28c8                    MOVAPS XMM1,XMM0
00655a36  e855a43b00                CALL 0x00a0fe90
00655a3b  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
00655a41  50                        PUSH EAX
00655a42  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
00655a48  50                        PUSH EAX
00655a49  e8d2a93b00                CALL 0x00a10420
00655a4e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655a54  57                        PUSH EDI
00655a55  6a00                      PUSH 0x0
00655a57  6a00                      PUSH 0x0
00655a59  56                        PUSH ESI
00655a5a  50                        PUSH EAX
00655a5b  6a00                      PUSH 0x0
00655a5d  6a09                      PUSH 0x9
00655a5f  e8bc30ddff                CALL 0x00428b20
00655a64  8bf0                      MOV ESI,EAX
00655a66  e875950200                CALL 0x0067efe0
00655a6b  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00655a73  51                        PUSH ECX
00655a74  8bce                      MOV ECX,ESI
00655a76  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00655a7e  f30f110424                MOVSS dword ptr [ESP],XMM0
00655a83  e818aedfff                CALL 0x004508a0
00655a88  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00655a8e  8bce                      MOV ECX,ESI
00655a90  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00655a96  e8c5380500                CALL 0x006a9360
00655a9b  ff7734                    PUSH dword ptr [EDI + 0x34]
00655a9e  8bce                      MOV ECX,ESI
00655aa0  e80bbcddff                CALL 0x004316b0
00655aa5  ff7738                    PUSH dword ptr [EDI + 0x38]
00655aa8  8bce                      MOV ECX,ESI
00655aaa  e8c115e6ff                CALL 0x004b7070
00655aaf  8b06                      MOV EAX,dword ptr [ESI]
00655ab1  8d8fb8010000              LEA ECX,[EDI + 0x1b8]
00655ab7  6a01                      PUSH 0x1
00655ab9  6a00                      PUSH 0x0
00655abb  68ff000000                PUSH 0xff
00655ac0  6aff                      PUSH -0x1
00655ac2  51                        PUSH ECX
00655ac3  8bce                      MOV ECX,ESI
00655ac5  ff503c                    CALL dword ptr [EAX + 0x3c]
00655ac8  51                        PUSH ECX
00655ac9  8bce                      MOV ECX,ESI
00655acb  c7042400000000            MOV dword ptr [ESP],0x0
00655ad2  e899f1deff                CALL 0x00444c70
00655ad7  51                        PUSH ECX
00655ad8  8bce                      MOV ECX,ESI
00655ada  c704240000803f            MOV dword ptr [ESP],0x3f800000
00655ae1  e8aaf1deff                CALL 0x00444c90
00655ae6  8b06                      MOV EAX,dword ptr [ESI]
00655ae8  8bce                      MOV ECX,ESI
00655aea  ff500c                    CALL dword ptr [EAX + 0xc]
00655aed  8bb5b0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcb0]
00655af3  46                        INC ESI
00655af4  89b5b0fcffff              MOV dword ptr [EBP + 0xfffffcb0],ESI
00655afa  83fe0e                    CMP ESI,0xe
00655afd  0f8caffdffff              JL 0x006558b2
00655b03  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655b09  e87219dbff                CALL 0x00407480
00655b0e  8bc8                      MOV ECX,EAX
00655b10  e8ab1e1d00                CALL 0x008279c0
00655b15  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00655b1d  0f2fc8                    COMISS XMM1,XMM0
00655b20  0f82c6030000              JC 0x00655eec
00655b26  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00655b2e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655b34  f30f118520fcffff          MOVSS dword ptr [EBP + 0xfffffc20],XMM0
00655b3c  0f28c1                    MOVAPS XMM0,XMM1
00655b3f  f30f118524fcffff          MOVSS dword ptr [EBP + 0xfffffc24],XMM0
00655b47  e83419dbff                CALL 0x00407480
00655b4c  8bc8                      MOV ECX,EAX
00655b4e  e86d1e1d00                CALL 0x008279c0
00655b53  6a00                      PUSH 0x0
00655b55  6a04                      PUSH 0x4
00655b57  ba05000000                MOV EDX,0x5
00655b5c  f30f118524fcffff          MOVSS dword ptr [EBP + 0xfffffc24],XMM0
00655b64  b930ad6500                MOV ECX,0x65ad30
00655b69  e89253fbff                CALL 0x0060af00
00655b6e  83c408                    ADD ESP,0x8
00655b71  8bf0                      MOV ESI,EAX
00655b73  8bce                      MOV ECX,ESI
00655b75  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00655b7b  e8e0370500                CALL 0x006a9360
00655b80  ff7734                    PUSH dword ptr [EDI + 0x34]
00655b83  8bce                      MOV ECX,ESI
00655b85  e826bbddff                CALL 0x004316b0
00655b8a  ff7738                    PUSH dword ptr [EDI + 0x38]
00655b8d  8bce                      MOV ECX,ESI
00655b8f  e8dc14e6ff                CALL 0x004b7070
00655b94  8d8520fcffff              LEA EAX,[EBP + 0xfffffc20]
00655b9a  8bce                      MOV ECX,ESI
00655b9c  50                        PUSH EAX
00655b9d  e84e2dddff                CALL 0x004288f0
00655ba2  6a01                      PUSH 0x1
00655ba4  8bce                      MOV ECX,ESI
00655ba6  e8b502deff                CALL 0x00435e60
00655bab  e93c030000                JMP 0x00655eec
00655bb0  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00655bb3  85c0                      TEST EAX,EAX
00655bb5  0f84da080000              JZ 0x00656495
00655bbb  83f803                    CMP EAX,0x3
00655bbe  0f84d1080000              JZ 0x00656495
00655bc4  83f804                    CMP EAX,0x4
00655bc7  0f84c8080000              JZ 0x00656495
00655bcd  83f805                    CMP EAX,0x5
00655bd0  0f84bf080000              JZ 0x00656495
00655bd6  83f806                    CMP EAX,0x6
00655bd9  0f84b6080000              JZ 0x00656495
00655bdf  83f80c                    CMP EAX,0xc
00655be2  0f84ad080000              JZ 0x00656495
00655be8  83f80d                    CMP EAX,0xd
00655beb  0f84a4080000              JZ 0x00656495
00655bf1  83f810                    CMP EAX,0x10
00655bf4  0f849b080000              JZ 0x00656495
00655bfa  83f801                    CMP EAX,0x1
00655bfd  7561                      JNZ 0x00655c60
00655bff  f30f108710040000          MOVSS XMM0,dword ptr [EDI + 0x410]
00655c07  8d4f48                    LEA ECX,[EDI + 0x48]
00655c0a  f30f118590fcffff          MOVSS dword ptr [EBP + 0xfffffc90],XMM0
00655c12  e8f917dbff                CALL 0x00407410
00655c17  8bf0                      MOV ESI,EAX
00655c19  e8c2930200                CALL 0x0067efe0
00655c1e  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
00655c26  8d873c030000              LEA EAX,[EDI + 0x33c]
00655c2c  6a01                      PUSH 0x1
00655c2e  f30f108d90fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffc90]
00655c36  51                        PUSH ECX
00655c37  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00655c3f  f30f110c24                MOVSS dword ptr [ESP],XMM1
00655c44  56                        PUSH ESI
00655c45  51                        PUSH ECX
00655c46  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655c4c  f30f110424                MOVSS dword ptr [ESP],XMM0
00655c51  6a08                      PUSH 0x8
00655c53  6a23                      PUSH 0x23
00655c55  50                        PUSH EAX
00655c56  e8d5d60a00                CALL 0x00703330
00655c5b  e929020000                JMP 0x00655e89
00655c60  83f802                    CMP EAX,0x2
00655c63  0f85b7000000              JNZ 0x00655d20
00655c69  e8f2920900                CALL 0x006eef60
00655c6e  8b8dc0fcffff              MOV ECX,dword ptr [EBP + 0xfffffcc0]
00655c74  8bf8                      MOV EDI,EAX
00655c76  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00655c7c  50                        PUSH EAX
00655c7d  e80e16dcff                CALL 0x00417290
00655c82  f30f1015c0adba00          MOVSS XMM2,dword ptr [0x00baadc0]
00655c8a  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00655c90  0f57c9                    XORPS XMM1,XMM1
00655c93  8bf0                      MOV ESI,EAX
00655c95  e8f6a13b00                CALL 0x00a0fe90
00655c9a  50                        PUSH EAX
00655c9b  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
00655ca1  8bce                      MOV ECX,ESI
00655ca3  50                        PUSH EAX
00655ca4  e877a73b00                CALL 0x00a10420
00655ca9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655caf  57                        PUSH EDI
00655cb0  6a01                      PUSH 0x1
00655cb2  6a00                      PUSH 0x0
00655cb4  6840b6c700                PUSH 0xc7b640
00655cb9  50                        PUSH EAX
00655cba  6a0f                      PUSH 0xf
00655cbc  68e8030000                PUSH 0x3e8
00655cc1  e85a2eddff                CALL 0x00428b20
00655cc6  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00655ccc  8bf0                      MOV ESI,EAX
00655cce  8d4f48                    LEA ECX,[EDI + 0x48]
00655cd1  e83a17dbff                CALL 0x00407410
00655cd6  50                        PUSH EAX
00655cd7  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00655cdd  e8de14dbff                CALL 0x004071c0
00655ce2  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00655ce8  e88315dbff                CALL 0x00407270
00655ced  d80df8a1ba00              FMUL dword ptr [0x00baa1f8]
00655cf3  51                        PUSH ECX
00655cf4  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00655cfa  d91c24                    FSTP dword ptr [ESP]
00655cfd  e87e15dbff                CALL 0x00407280
00655d02  8b06                      MOV EAX,dword ptr [ESI]
00655d04  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00655d0a  6a01                      PUSH 0x1
00655d0c  6a00                      PUSH 0x0
00655d0e  68ff000000                PUSH 0xff
00655d13  6aff                      PUSH -0x1
00655d15  51                        PUSH ECX
00655d16  8bce                      MOV ECX,ESI
00655d18  ff503c                    CALL dword ptr [EAX + 0x3c]
00655d1b  e969010000                JMP 0x00655e89
00655d20  83f807                    CMP EAX,0x7
00655d23  0f8592020000              JNZ 0x00655fbb
00655d29  e832920900                CALL 0x006eef60
00655d2e  8b8dc0fcffff              MOV ECX,dword ptr [EBP + 0xfffffcc0]
00655d34  8bf8                      MOV EDI,EAX
00655d36  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00655d3c  50                        PUSH EAX
00655d3d  e84e15dcff                CALL 0x00417290
00655d42  f30f1015c0adba00          MOVSS XMM2,dword ptr [0x00baadc0]
00655d4a  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00655d50  0f57c9                    XORPS XMM1,XMM1
00655d53  8bf0                      MOV ESI,EAX
00655d55  e836a13b00                CALL 0x00a0fe90
00655d5a  50                        PUSH EAX
00655d5b  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
00655d61  8bce                      MOV ECX,ESI
00655d63  50                        PUSH EAX
00655d64  e8b7a63b00                CALL 0x00a10420
00655d69  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655d6f  57                        PUSH EDI
00655d70  6a00                      PUSH 0x0
00655d72  6a00                      PUSH 0x0
00655d74  6840b6c700                PUSH 0xc7b640
00655d79  50                        PUSH EAX
00655d7a  6a61                      PUSH 0x61
00655d7c  68e8030000                PUSH 0x3e8
00655d81  e89a2dddff                CALL 0x00428b20
00655d86  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00655d8e  8bf8                      MOV EDI,EAX
00655d90  6a00                      PUSH 0x0
00655d92  68e6000000                PUSH 0xe6
00655d97  68e6000000                PUSH 0xe6
00655d9c  8b0f                      MOV ECX,dword ptr [EDI]
00655d9e  0f28d8                    MOVAPS XMM3,XMM0
00655da1  51                        PUSH ECX
00655da2  0f28d0                    MOVAPS XMM2,XMM0
00655da5  c704240000803f            MOV dword ptr [ESP],0x3f800000
00655dac  0f28c8                    MOVAPS XMM1,XMM0
00655daf  8b713c                    MOV ESI,dword ptr [ECX + 0x3c]
00655db2  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00655db8  e813fdddff                CALL 0x00435ad0
00655dbd  6a01                      PUSH 0x1
00655dbf  6a00                      PUSH 0x0
00655dc1  68ff000000                PUSH 0xff
00655dc6  6aff                      PUSH -0x1
00655dc8  50                        PUSH EAX
00655dc9  8bcf                      MOV ECX,EDI
00655dcb  ffd6                      CALL ESI
00655dcd  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00655dd3  f30f108710040000          MOVSS XMM0,dword ptr [EDI + 0x410]
00655ddb  8d4f48                    LEA ECX,[EDI + 0x48]
00655dde  f30f118590fcffff          MOVSS dword ptr [EBP + 0xfffffc90],XMM0
00655de6  e82516dbff                CALL 0x00407410
00655deb  8bf0                      MOV ESI,EAX
00655ded  e8ee910200                CALL 0x0067efe0
00655df2  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00655dfa  b902000000                MOV ECX,0x2
00655dff  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00655e07  f30f1185a8fcffff          MOVSS dword ptr [EBP + 0xfffffca8],XMM0
00655e0f  e8fc910200                CALL 0x0067f010
00655e14  f30f108590fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc90]
00655e1c  83c004                    ADD EAX,0x4
00655e1f  6a00                      PUSH 0x0
00655e21  51                        PUSH ECX
00655e22  f30f110424                MOVSS dword ptr [ESP],XMM0
00655e27  81c73c030000              ADD EDI,0x33c
00655e2d  f30f1085a8fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffca8]
00655e35  56                        PUSH ESI
00655e36  51                        PUSH ECX
00655e37  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655e3d  f30f110424                MOVSS dword ptr [ESP],XMM0
00655e42  50                        PUSH EAX
00655e43  6a62                      PUSH 0x62
00655e45  57                        PUSH EDI
00655e46  e8e5d40a00                CALL 0x00703330
00655e4b  e890910200                CALL 0x0067efe0
00655e50  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00655e58  51                        PUSH ECX
00655e59  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00655e61  f30f110424                MOVSS dword ptr [ESP],XMM0
00655e66  6a00                      PUSH 0x0
00655e68  6a02                      PUSH 0x2
00655e6a  57                        PUSH EDI
00655e6b  f30f101d98a1ba00          MOVSS XMM3,dword ptr [0x00baa198]
00655e73  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00655e79  688a000000                PUSH 0x8a
00655e7e  e8bd0a3000                CALL 0x00956940
00655e83  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00655e89  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00655e8f  2500400000                AND EAX,0x4000
00655e94  83c800                    OR EAX,0x0
00655e97  7453                      JZ 0x00655eec
00655e99  e8c2900900                CALL 0x006eef60
00655e9e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655ea4  6a00                      PUSH 0x0
00655ea6  68acd5c500                PUSH 0xc5d5ac
00655eab  68dcd5c500                PUSH 0xc5d5dc
00655eb0  6a00                      PUSH 0x0
00655eb2  50                        PUSH EAX
00655eb3  6a00                      PUSH 0x0
00655eb5  57                        PUSH EDI
00655eb6  6840b6c700                PUSH 0xc7b640
00655ebb  8d873c030000              LEA EAX,[EDI + 0x33c]
00655ec1  50                        PUSH EAX
00655ec2  6a38                      PUSH 0x38
00655ec4  68e8030000                PUSH 0x3e8
00655ec9  e8522cddff                CALL 0x00428b20
00655ece  50                        PUSH EAX
00655ecf  e8dda94900                CALL 0x00af08b1
00655ed4  8bf0                      MOV ESI,EAX
00655ed6  83c414                    ADD ESP,0x14
00655ed9  8bce                      MOV ECX,ESI
00655edb  8b16                      MOV EDX,dword ptr [ESI]
00655edd  ff520c                    CALL dword ptr [EDX + 0xc]
00655ee0  68b4000000                PUSH 0xb4
00655ee5  8bce                      MOV ECX,ESI
00655ee7  e8a4ffddff                CALL 0x00435e90
00655eec  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
00655ef2  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
00655ef8  8985dcfbffff              MOV dword ptr [EBP + 0xfffffbdc],EAX
00655efe  8bc1                      MOV EAX,ECX
00655f00  2504010000                AND EAX,0x104
00655f05  83c800                    OR EAX,0x0
00655f08  0f84af080000              JZ 0x006567bd
00655f0e  e84d900900                CALL 0x006eef60
00655f13  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
00655f19  8d973c030000              LEA EDX,[EDI + 0x33c]
00655f1f  83e104                    AND ECX,0x4
00655f22  8bf0                      MOV ESI,EAX
00655f24  83c900                    OR ECX,0x0
00655f27  b817000000                MOV EAX,0x17
00655f2c  7505                      JNZ 0x00655f33
00655f2e  b816000000                MOV EAX,0x16
00655f33  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00655f39  6a00                      PUSH 0x0
00655f3b  68acd5c500                PUSH 0xc5d5ac
00655f40  68dcd5c500                PUSH 0xc5d5dc
00655f45  6a00                      PUSH 0x0
00655f47  56                        PUSH ESI
00655f48  6a00                      PUSH 0x0
00655f4a  57                        PUSH EDI
00655f4b  6840b6c700                PUSH 0xc7b640
00655f50  52                        PUSH EDX
00655f51  50                        PUSH EAX
00655f52  68e8030000                PUSH 0x3e8
00655f57  e8c42bddff                CALL 0x00428b20
00655f5c  50                        PUSH EAX
00655f5d  e84fa94900                CALL 0x00af08b1
00655f62  83c414                    ADD ESP,0x14
00655f65  8bf0                      MOV ESI,EAX
00655f67  8bce                      MOV ECX,ESI
00655f69  ff7734                    PUSH dword ptr [EDI + 0x34]
00655f6c  e83fb7ddff                CALL 0x004316b0
00655f71  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
00655f77  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
00655f7d  83e110                    AND ECX,0x10
00655f80  50                        PUSH EAX
00655f81  83c900                    OR ECX,0x0
00655f84  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00655f8a  b93c79c300                MOV ECX,0xc3793c
00655f8f  50                        PUSH EAX
00655f90  0f8451070000              JZ 0x006566e7
00655f96  c785bcfcffff0000c03f      MOV dword ptr [EBP + 0xfffffcbc],0x3fc00000
00655fa0  e83ba53b00                CALL 0x00a104e0
00655fa5  50                        PUSH EAX
00655fa6  8bce                      MOV ECX,ESI
00655fa8  e8037addff                CALL 0x0042d9b0
00655fad  6a0a                      PUSH 0xa
00655faf  8bce                      MOV ECX,ESI
00655fb1  e8dafeddff                CALL 0x00435e90
00655fb6  e943070000                JMP 0x006566fe
00655fbb  83f808                    CMP EAX,0x8
00655fbe  7576                      JNZ 0x00656036
00655fc0  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00655fc6  e8a511dbff                CALL 0x00407170
00655fcb  50                        PUSH EAX
00655fcc  8d4f48                    LEA ECX,[EDI + 0x48]
00655fcf  e8fc13dbff                CALL 0x004073d0
00655fd4  8d4dcc                    LEA ECX,[EBP + -0x34]
00655fd7  e8c428eaff                CALL 0x004f88a0
00655fdc  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
00655fdf  8bc1                      MOV EAX,ECX
00655fe1  c1e810                    SHR EAX,0x10
00655fe4  8945cc                    MOV dword ptr [EBP + -0x34],EAX
00655fe7  0fb7c1                    MOVZX EAX,CX
00655fea  8bcf                      MOV ECX,EDI
00655fec  6a00                      PUSH 0x0
00655fee  8945d0                    MOV dword ptr [EBP + -0x30],EAX
00655ff1  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
00655ff7  6800000400                PUSH 0x40000
00655ffc  8945dc                    MOV dword ptr [EBP + -0x24],EAX
00655fff  e82c14dcff                CALL 0x00417430
00656004  ffb748040000              PUSH dword ptr [EDI + 0x448]
0065600a  33c9                      XOR ECX,ECX
0065600c  8d55cc                    LEA EDX,[EBP + -0x34]
0065600f  84c0                      TEST AL,AL
00656011  f30f2c8780030000          CVTTSS2SI EAX,dword ptr [EDI + 0x380]
00656019  0f95c1                    SETNZ CL
0065601c  894de0                    MOV dword ptr [EBP + -0x20],ECX
0065601f  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00656025  57                        PUSH EDI
00656026  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00656029  e8d25f0b00                CALL 0x0070c000
0065602e  83c408                    ADD ESP,0x8
00656031  e953feffff                JMP 0x00655e89
00656036  83f809                    CMP EAX,0x9
00656039  0f85cb020000              JNZ 0x0065630a
0065603f  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00656045  e82611dbff                CALL 0x00407170
0065604a  68ff000000                PUSH 0xff
0065604f  6a7b                      PUSH 0x7b
00656051  6a7b                      PUSH 0x7b
00656053  688c000000                PUSH 0x8c
00656058  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
0065605e  e8edce0200                CALL 0x00682f50
00656063  8d4f48                    LEA ECX,[EDI + 0x48]
00656066  e8a513dbff                CALL 0x00407410
0065606b  50                        PUSH EAX
0065606c  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00656072  e849d10200                CALL 0x006831c0
00656077  e8e48e0900                CALL 0x006eef60
0065607c  50                        PUSH EAX
0065607d  6a00                      PUSH 0x0
0065607f  57                        PUSH EDI
00656080  6840b6c700                PUSH 0xc7b640
00656085  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0065608b  51                        PUSH ECX
0065608c  6891000000                PUSH 0x91
00656091  898db0fcffff              MOV dword ptr [EBP + 0xfffffcb0],ECX
00656097  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065609d  68e8030000                PUSH 0x3e8
006560a2  e8792addff                CALL 0x00428b20
006560a7  8bb5c0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcc0]
006560ad  8bf8                      MOV EDI,EAX
006560af  8bcf                      MOV ECX,EDI
006560b1  8d864c030000              LEA EAX,[ESI + 0x34c]
006560b7  50                        PUSH EAX
006560b8  89858cfcffff              MOV dword ptr [EBP + 0xfffffc8c],EAX
006560be  e82d12dcff                CALL 0x004172f0
006560c3  8b17                      MOV EDX,dword ptr [EDI]
006560c5  8d86b8010000              LEA EAX,[ESI + 0x1b8]
006560cb  6a01                      PUSH 0x1
006560cd  6a00                      PUSH 0x0
006560cf  68ff000000                PUSH 0xff
006560d4  6aff                      PUSH -0x1
006560d6  50                        PUSH EAX
006560d7  8bcf                      MOV ECX,EDI
006560d9  ff523c                    CALL dword ptr [EDX + 0x3c]
006560dc  8b07                      MOV EAX,dword ptr [EDI]
006560de  8bcf                      MOV ECX,EDI
006560e0  ff500c                    CALL dword ptr [EAX + 0xc]
006560e3  8bcf                      MOV ECX,EDI
006560e5  e8e6fcddff                CALL 0x00435dd0
006560ea  ffb5b8fcffff              PUSH dword ptr [EBP + 0xfffffcb8]
006560f0  8bf0                      MOV ESI,EAX
006560f2  b93c79c300                MOV ECX,0xc3793c
006560f7  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
006560fd  50                        PUSH EAX
006560fe  e8dda33b00                CALL 0x00a104e0
00656103  50                        PUSH EAX
00656104  8bce                      MOV ECX,ESI
00656106  e865a0dcff                CALL 0x00420170
0065610b  8bcf                      MOV ECX,EDI
0065610d  e8befcddff                CALL 0x00435dd0
00656112  51                        PUSH ECX
00656113  8bc8                      MOV ECX,EAX
00656115  c7042400000000            MOV dword ptr [ESP],0x0
0065611c  e85f8ddeff                CALL 0x0043ee80
00656121  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00656127  e85413dbff                CALL 0x00407480
0065612c  8bb5b0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcb0]
00656132  51                        PUSH ECX
00656133  c704240000a0c1            MOV dword ptr [ESP],0xc1a00000
0065613a  8bc8                      MOV ECX,EAX
0065613c  56                        PUSH ESI
0065613d  e81ed21b00                CALL 0x00813360
00656142  84c0                      TEST AL,AL
00656144  0f8439fdffff              JZ 0x00655e83
0065614a  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00656152  51                        PUSH ECX
00656153  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00656159  c704240000803f            MOV dword ptr [ESP],0x3f800000
00656160  6a00                      PUSH 0x0
00656162  6a02                      PUSH 0x2
00656164  56                        PUSH ESI
00656165  6889000000                PUSH 0x89
0065616a  e8d1073000                CALL 0x00956940
0065616f  c785c4fcffff10000000      MOV dword ptr [EBP + 0xfffffcc4],0x10
00656179  c78590fcffff01000000      MOV dword ptr [EBP + 0xfffffc90],0x1
00656183  e8588e0200                CALL 0x0067efe0
00656188  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
0065618e  8d9590fcffff              LEA EDX,[EBP + 0xfffffc90]
00656194  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0065619c  8d8da8fcffff              LEA ECX,[EBP + 0xfffffca8]
006561a2  f30f1008                  MOVSS XMM1,dword ptr [EAX]
006561a6  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
006561ae  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
006561b6  f30f59c8                  MULSS XMM1,XMM0
006561ba  f30f2cc1                  CVTTSS2SI EAX,XMM1
006561be  8985a8fcffff              MOV dword ptr [EBP + 0xfffffca8],EAX
006561c4  e8b769dcff                CALL 0x0041cb80
006561c9  8d95c4fcffff              LEA EDX,[EBP + 0xfffffcc4]
006561cf  8bc8                      MOV ECX,EAX
006561d1  e88a69dcff                CALL 0x0041cb60
006561d6  8b00                      MOV EAX,dword ptr [EAX]
006561d8  8985bcfcffff              MOV dword ptr [EBP + 0xfffffcbc],EAX
006561de  85c0                      TEST EAX,EAX
006561e0  0f8e9dfcffff              JLE 0x00655e83
006561e6  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
006561ec  8bbdbcfcffff              MOV EDI,dword ptr [EBP + 0xfffffcbc]
006561f2  0570030000                ADD EAX,0x370
006561f7  8985b4fcffff              MOV dword ptr [EBP + 0xfffffcb4],EAX
006561fd  0f1f00                    NOP dword ptr [EAX]
00656200  e8db8d0200                CALL 0x0067efe0
00656205  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0065620d  8d8570fcffff              LEA EAX,[EBP + 0xfffffc70]
00656213  51                        PUSH ECX
00656214  f30f110424                MOVSS dword ptr [ESP],XMM0
00656219  50                        PUSH EAX
0065621a  e831a13b00                CALL 0x00a10350
0065621f  83c408                    ADD ESP,0x8
00656222  e8b98d0200                CALL 0x0067efe0
00656227  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
0065622f  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00656237  f30f11854cfcffff          MOVSS dword ptr [EBP + 0xfffffc4c],XMM0
0065623f  e89c8d0200                CALL 0x0067efe0
00656244  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
0065624a  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
00656252  50                        PUSH EAX
00656253  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00656259  50                        PUSH EAX
0065625a  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
00656260  e87ba23b00                CALL 0x00a104e0
00656265  ffb5b4fcffff              PUSH dword ptr [EBP + 0xfffffcb4]
0065626b  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00656271  51                        PUSH ECX
00656272  8bc8                      MOV ECX,EAX
00656274  e867a23b00                CALL 0x00a104e0
00656279  50                        PUSH EAX
0065627a  8d85a4fbffff              LEA EAX,[EBP + 0xfffffba4]
00656280  8bce                      MOV ECX,ESI
00656282  50                        PUSH EAX
00656283  e898a13b00                CALL 0x00a10420
00656288  e8d38c0900                CALL 0x006eef60
0065628d  8bf0                      MOV ESI,EAX
0065628f  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
00656295  8d854cfcffff              LEA EAX,[EBP + 0xfffffc4c]
0065629b  50                        PUSH EAX
0065629c  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
006562a2  50                        PUSH EAX
006562a3  e838a23b00                CALL 0x00a104e0
006562a8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006562ae  56                        PUSH ESI
006562af  6a01                      PUSH 0x1
006562b1  6a00                      PUSH 0x0
006562b3  50                        PUSH EAX
006562b4  8d85a4fbffff              LEA EAX,[EBP + 0xfffffba4]
006562ba  50                        PUSH EAX
006562bb  6a23                      PUSH 0x23
006562bd  68e8030000                PUSH 0x3e8
006562c2  e85928ddff                CALL 0x00428b20
006562c7  ffb58cfcffff              PUSH dword ptr [EBP + 0xfffffc8c]
006562cd  8bf0                      MOV ESI,EAX
006562cf  8bce                      MOV ECX,ESI
006562d1  e81a10dcff                CALL 0x004172f0
006562d6  8b16                      MOV EDX,dword ptr [ESI]
006562d8  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
006562de  6a01                      PUSH 0x1
006562e0  6a00                      PUSH 0x0
006562e2  68ff000000                PUSH 0xff
006562e7  6aff                      PUSH -0x1
006562e9  50                        PUSH EAX
006562ea  8bce                      MOV ECX,ESI
006562ec  ff523c                    CALL dword ptr [EDX + 0x3c]
006562ef  8b06                      MOV EAX,dword ptr [ESI]
006562f1  8bce                      MOV ECX,ESI
006562f3  ff500c                    CALL dword ptr [EAX + 0xc]
006562f6  8bb5b0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcb0]
006562fc  83ef01                    SUB EDI,0x1
006562ff  0f85fbfeffff              JNZ 0x00656200
00656305  e979fbffff                JMP 0x00655e83
0065630a  83f80b                    CMP EAX,0xb
0065630d  0f8576fbffff              JNZ 0x00655e89
00656313  e8488c0900                CALL 0x006eef60
00656318  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065631e  8db73c030000              LEA ESI,[EDI + 0x33c]
00656324  50                        PUSH EAX
00656325  6a02                      PUSH 0x2
00656327  6a00                      PUSH 0x0
00656329  6840b6c700                PUSH 0xc7b640
0065632e  56                        PUSH ESI
0065632f  6a02                      PUSH 0x2
00656331  68e8030000                PUSH 0x3e8
00656336  89b5c4fcffff              MOV dword ptr [EBP + 0xfffffcc4],ESI
0065633c  e8df27ddff                CALL 0x00428b20
00656341  8d8f4c030000              LEA ECX,[EDI + 0x34c]
00656347  51                        PUSH ECX
00656348  8bc8                      MOV ECX,EAX
0065634a  e8a10fdcff                CALL 0x004172f0
0065634f  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00656357  51                        PUSH ECX
00656358  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0065635e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00656365  6a00                      PUSH 0x0
00656367  6a02                      PUSH 0x2
00656369  56                        PUSH ESI
0065636a  6802010000                PUSH 0x102
0065636f  e8cc053000                CALL 0x00956940
00656374  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065637a  e80111dbff                CALL 0x00407480
0065637f  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00656383  8bc8                      MOV ECX,EAX
00656385  f30f118520fcffff          MOVSS dword ptr [EBP + 0xfffffc20],XMM0
0065638d  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00656392  f30f118524fcffff          MOVSS dword ptr [EBP + 0xfffffc24],XMM0
0065639a  ffb524fcffff              PUSH dword ptr [EBP + 0xfffffc24]
006563a0  ffb520fcffff              PUSH dword ptr [EBP + 0xfffffc20]
006563a6  e8d5a31900                CALL 0x007f0780
006563ab  85c0                      TEST EAX,EAX
006563ad  0f85d6faffff              JNZ 0x00655e89
006563b3  e8a88b0900                CALL 0x006eef60
006563b8  8b8dc0fcffff              MOV ECX,dword ptr [EBP + 0xfffffcc0]
006563be  8bf0                      MOV ESI,EAX
006563c0  8bbfc8030000              MOV EDI,dword ptr [EDI + 0x3c8]
006563c6  8d8590fcffff              LEA EAX,[EBP + 0xfffffc90]
006563cc  50                        PUSH EAX
006563cd  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
006563d3  c78590fcffffcdcccc3d      MOV dword ptr [EBP + 0xfffffc90],0x3dcccccd
006563dd  50                        PUSH EAX
006563de  8d8960030000              LEA ECX,[ECX + 0x360]
006563e4  e8f7a03b00                CALL 0x00a104e0
006563e9  8bc8                      MOV ECX,EAX
006563eb  33d2                      XOR EDX,EDX
006563ed  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
006563f3  56                        PUSH ESI
006563f4  6a00                      PUSH 0x0
006563f6  57                        PUSH EDI
006563f7  8b80ec030000              MOV EAX,dword ptr [EAX + 0x3ec]
006563fd  f7b5a8fcffff              DIV dword ptr [EBP + 0xfffffca8]
00656403  51                        PUSH ECX
00656404  ffb5c4fcffff              PUSH dword ptr [EBP + 0xfffffcc4]
0065640a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00656410  f7da                      NEG EDX
00656412  1bd2                      SBB EDX,EDX
00656414  42                        INC EDX
00656415  52                        PUSH EDX
00656416  6a18                      PUSH 0x18
00656418  e80327ddff                CALL 0x00428b20
0065641d  8bf0                      MOV ESI,EAX
0065641f  6a00                      PUSH 0x0
00656421  6a04                      PUSH 0x4
00656423  8bce                      MOV ECX,ESI
00656425  e8d60fdcff                CALL 0x00417400
0065642a  51                        PUSH ECX
0065642b  8bce                      MOV ECX,ESI
0065642d  c704240000c041            MOV dword ptr [ESP],0x41c00000
00656434  e8e7f8ddff                CALL 0x00435d20
00656439  8bce                      MOV ECX,ESI
0065643b  e890f9ddff                CALL 0x00435dd0
00656440  6a00                      PUSH 0x0
00656442  68684ab600                PUSH 0xb64a68
00656447  8bc8                      MOV ECX,EAX
00656449  e8323fdbff                CALL 0x0040a380
0065644e  6a03                      PUSH 0x3
00656450  8bce                      MOV ECX,ESI
00656452  e879aadeff                CALL 0x00440ed0
00656457  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
0065645d  8bcf                      MOV ECX,EDI
0065645f  6a00                      PUSH 0x0
00656461  6800000001                PUSH 0x1000000
00656466  e8c50fdcff                CALL 0x00417430
0065646b  84c0                      TEST AL,AL
0065646d  0f8416faffff              JZ 0x00655e89
00656473  57                        PUSH EDI
00656474  8d4d84                    LEA ECX,[EBP + -0x7c]
00656477  e894aeddff                CALL 0x00431310
0065647c  6a00                      PUSH 0x0
0065647e  6a00                      PUSH 0x0
00656480  686affffff                PUSH 0xffffff6a
00656485  8d4584                    LEA EAX,[EBP + -0x7c]
00656488  8bce                      MOV ECX,ESI
0065648a  50                        PUSH EAX
0065648b  e880f70500                CALL 0x006b5c10
00656490  e9f4f9ffff                JMP 0x00655e89
00656495  f30f109710040000          MOVSS XMM2,dword ptr [EDI + 0x410]
0065649d  b996000000                MOV ECX,0x96
006564a2  f30f1025a0adba00          MOVSS XMM4,dword ptr [0x00baada0]
006564aa  ba02010000                MOV EDX,0x102
006564af  f30f108f20040000          MOVSS XMM1,dword ptr [EDI + 0x420]
006564b7  be0b000000                MOV ESI,0xb
006564bc  f30f101da4a3ba00          MOVSS XMM3,dword ptr [0x00baa3a4]
006564c4  0f28c1                    MOVAPS XMM0,XMM1
006564c7  0f2fd4                    COMISS XMM2,XMM4
006564ca  f30f59c3                  MULSS XMM0,XMM3
006564ce  0f47ca                    CMOVA ECX,EDX
006564d1  f30f119590fcffff          MOVSS dword ptr [EBP + 0xfffffc90],XMM2
006564d9  898da8fcffff              MOV dword ptr [EBP + 0xfffffca8],ECX
006564df  f30f1185b0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM0
006564e7  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006564ef  f30f1185acfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM0
006564f7  83f804                    CMP EAX,0x4
006564fa  7576                      JNZ 0x00656572
006564fc  f30f102d80a2ba00          MOVSS XMM5,dword ptr [0x00baa280]
00656504  0f2fe9                    COMISS XMM5,XMM1
00656507  7622                      JBE 0x0065652b
00656509  f30f100554a3ba00          MOVSS XMM0,dword ptr [0x00baa354]
00656511  8d704c                    LEA ESI,[EAX + 0x4c]
00656514  f30f1185acfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM0
0065651c  c785b0fcffff0000803f      MOV dword ptr [EBP + 0xfffffcb0],0x3f800000
00656526  e9bd000000                JMP 0x006565e8
0065652b  0f2fd9                    COMISS XMM3,XMM1
0065652e  7624                      JBE 0x00656554
00656530  f30f1005c4a3ba00          MOVSS XMM0,dword ptr [0x00baa3c4]
00656538  be4f000000                MOV ESI,0x4f
0065653d  f30f1185acfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM0
00656545  c785b0fcffff0000803f      MOV dword ptr [EBP + 0xfffffcb0],0x3f800000
0065654f  e994000000                JMP 0x006565e8
00656554  0f2fd4                    COMISS XMM2,XMM4
00656557  f30f1185acfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM0
0065655f  760a                      JBE 0x0065656b
00656561  be0d000000                MOV ESI,0xd
00656566  e97d000000                JMP 0x006565e8
0065656b  be0c000000                MOV ESI,0xc
00656570  eb76                      JMP 0x006565e8
00656572  83f805                    CMP EAX,0x5
00656575  7553                      JNZ 0x006565ca
00656577  8d4f48                    LEA ECX,[EDI + 0x48]
0065657a  e8910edbff                CALL 0x00407410
0065657f  8bf0                      MOV ESI,EAX
00656581  e85a8a0200                CALL 0x0067efe0
00656586  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
0065658e  8d873c030000              LEA EAX,[EDI + 0x33c]
00656594  6a00                      PUSH 0x0
00656596  f30f108d90fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffc90]
0065659e  51                        PUSH ECX
0065659f  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
006565a7  f30f110c24                MOVSS dword ptr [ESP],XMM1
006565ac  56                        PUSH ESI
006565ad  51                        PUSH ECX
006565ae  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006565b4  f30f110424                MOVSS dword ptr [ESP],XMM0
006565b9  6a04                      PUSH 0x4
006565bb  6a3a                      PUSH 0x3a
006565bd  50                        PUSH EAX
006565be  e86dcd0a00                CALL 0x00703330
006565c3  be2b000000                MOV ESI,0x2b
006565c8  eb1e                      JMP 0x006565e8
006565ca  83f806                    CMP EAX,0x6
006565cd  7505                      JNZ 0x006565d4
006565cf  8d7060                    LEA ESI,[EAX + 0x60]
006565d2  eb14                      JMP 0x006565e8
006565d4  6a20                      PUSH 0x20
006565d6  8d4f48                    LEA ECX,[EDI + 0x48]
006565d9  e8b2c4ffff                CALL 0x00652a90
006565de  84c0                      TEST AL,AL
006565e0  b9c8000000                MOV ECX,0xc8
006565e5  0f45f1                    CMOVNZ ESI,ECX
006565e8  e873890900                CALL 0x006eef60
006565ed  6a00                      PUSH 0x0
006565ef  68acd5c500                PUSH 0xc5d5ac
006565f4  68dcd5c500                PUSH 0xc5d5dc
006565f9  6a00                      PUSH 0x0
006565fb  50                        PUSH EAX
006565fc  6a00                      PUSH 0x0
006565fe  6a00                      PUSH 0x0
00656600  6840b6c700                PUSH 0xc7b640
00656605  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0065660b  51                        PUSH ECX
0065660c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00656612  56                        PUSH ESI
00656613  68e8030000                PUSH 0x3e8
00656618  e80325ddff                CALL 0x00428b20
0065661d  50                        PUSH EAX
0065661e  e88ea24900                CALL 0x00af08b1
00656623  83c414                    ADD ESP,0x14
00656626  8bf0                      MOV ESI,EAX
00656628  8d874c030000              LEA EAX,[EDI + 0x34c]
0065662e  89b59cfcffff              MOV dword ptr [EBP + 0xfffffc9c],ESI
00656634  8bce                      MOV ECX,ESI
00656636  50                        PUSH EAX
00656637  e8b40cdcff                CALL 0x004172f0
0065663c  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
00656642  b93c79c300                MOV ECX,0xc3793c
00656647  50                        PUSH EAX
00656648  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
0065664e  50                        PUSH EAX
0065664f  e88c9e3b00                CALL 0x00a104e0
00656654  50                        PUSH EAX
00656655  8bce                      MOV ECX,ESI
00656657  e85473ddff                CALL 0x0042d9b0
0065665c  b904000000                MOV ECX,0x4
00656661  e8aa890200                CALL 0x0067f010
00656666  51                        PUSH ECX
00656667  8bce                      MOV ECX,ESI
00656669  660f6ec0                  MOVD XMM0,EAX
0065666d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00656671  c1e81f                    SHR EAX,0x1f
00656674  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0065667d  660f5ac0                  CVTPD2PS XMM0,XMM0
00656681  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00656689  f30f110424                MOVSS dword ptr [ESP],XMM0
0065668e  e80d88deff                CALL 0x0043eea0
00656693  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00656699  e8e20ddbff                CALL 0x00407480
0065669e  51                        PUSH ECX
0065669f  c704240000a0c2            MOV dword ptr [ESP],0xc2a00000
006566a6  8db73c030000              LEA ESI,[EDI + 0x33c]
006566ac  56                        PUSH ESI
006566ad  8bc8                      MOV ECX,EAX
006566af  e8accc1b00                CALL 0x00813360
006566b4  84c0                      TEST AL,AL
006566b6  0f84cdf7ffff              JZ 0x00655e89
006566bc  f30f109dacfcffff          MOVSS XMM3,dword ptr [EBP + 0xfffffcac]
006566c4  51                        PUSH ECX
006566c5  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006566cb  c704240000803f            MOV dword ptr [ESP],0x3f800000
006566d2  6a00                      PUSH 0x0
006566d4  6a02                      PUSH 0x2
006566d6  56                        PUSH ESI
006566d7  ffb5a8fcffff              PUSH dword ptr [EBP + 0xfffffca8]
006566dd  e85e023000                CALL 0x00956940
006566e2  e9a2f7ffff                JMP 0x00655e89
006566e7  c785bcfcffff00004040      MOV dword ptr [EBP + 0xfffffcbc],0x40400000
006566f1  e8ea9d3b00                CALL 0x00a104e0
006566f6  50                        PUSH EAX
006566f7  8bce                      MOV ECX,ESI
006566f9  e8b272ddff                CALL 0x0042d9b0
006566fe  8b06                      MOV EAX,dword ptr [ESI]
00656700  8bce                      MOV ECX,ESI
00656702  ff500c                    CALL dword ptr [EAX + 0xc]
00656705  e856880900                CALL 0x006eef60
0065670a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00656710  6a00                      PUSH 0x0
00656712  68acd5c500                PUSH 0xc5d5ac
00656717  68dcd5c500                PUSH 0xc5d5dc
0065671c  6a00                      PUSH 0x0
0065671e  50                        PUSH EAX
0065671f  6a00                      PUSH 0x0
00656721  6a00                      PUSH 0x0
00656723  6840b6c700                PUSH 0xc7b640
00656728  8d873c030000              LEA EAX,[EDI + 0x33c]
0065672e  50                        PUSH EAX
0065672f  6a07                      PUSH 0x7
00656731  68e8030000                PUSH 0x3e8
00656736  e8e523ddff                CALL 0x00428b20
0065673b  50                        PUSH EAX
0065673c  e870a14900                CALL 0x00af08b1
00656741  83c414                    ADD ESP,0x14
00656744  8bf8                      MOV EDI,EAX
00656746  e895880200                CALL 0x0067efe0
0065674b  f30f5805a4a3ba00          ADDSS XMM0,dword ptr [0x00baa3a4]
00656753  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
00656759  b93c79c300                MOV ECX,0xc3793c
0065675e  50                        PUSH EAX
0065675f  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00656765  50                        PUSH EAX
00656766  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
0065676e  e86d9d3b00                CALL 0x00a104e0
00656773  50                        PUSH EAX
00656774  8bcf                      MOV ECX,EDI
00656776  e83572ddff                CALL 0x0042d9b0
0065677b  8b07                      MOV EAX,dword ptr [EDI]
0065677d  8b8dc0fcffff              MOV ECX,dword ptr [EBP + 0xfffffcc0]
00656783  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00656786  8d4948                    LEA ECX,[ECX + 0x48]
00656789  e8820cdbff                CALL 0x00407410
0065678e  6a01                      PUSH 0x1
00656790  6a00                      PUSH 0x0
00656792  68ff000000                PUSH 0xff
00656797  6aff                      PUSH -0x1
00656799  50                        PUSH EAX
0065679a  8bcf                      MOV ECX,EDI
0065679c  ffd6                      CALL ESI
0065679e  8b07                      MOV EAX,dword ptr [EDI]
006567a0  8bcf                      MOV ECX,EDI
006567a2  ff500c                    CALL dword ptr [EAX + 0xc]
006567a5  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
006567ab  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
006567b1  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
006567b7  8985dcfbffff              MOV dword ptr [EBP + 0xfffffbdc],EAX
006567bd  83e108                    AND ECX,0x8
006567c0  83c900                    OR ECX,0x0
006567c3  0f847b010000              JZ 0x00656944
006567c9  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
006567cc  83f83e                    CMP EAX,0x3e
006567cf  0f859a000000              JNZ 0x0065686f
006567d5  e886870900                CALL 0x006eef60
006567da  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006567e0  6a00                      PUSH 0x0
006567e2  68acd5c500                PUSH 0xc5d5ac
006567e7  68dcd5c500                PUSH 0xc5d5dc
006567ec  6a00                      PUSH 0x0
006567ee  50                        PUSH EAX
006567ef  6a00                      PUSH 0x0
006567f1  57                        PUSH EDI
006567f2  6840b6c700                PUSH 0xc7b640
006567f7  8d873c030000              LEA EAX,[EDI + 0x33c]
006567fd  50                        PUSH EAX
006567fe  6a19                      PUSH 0x19
00656800  68e8030000                PUSH 0x3e8
00656805  e81623ddff                CALL 0x00428b20
0065680a  50                        PUSH EAX
0065680b  e8a1a04900                CALL 0x00af08b1
00656810  83c414                    ADD ESP,0x14
00656813  c785bcfcffff00000040      MOV dword ptr [EBP + 0xfffffcbc],0x40000000
0065681d  8bf0                      MOV ESI,EAX
0065681f  b93c79c300                MOV ECX,0xc3793c
00656824  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
0065682a  50                        PUSH EAX
0065682b  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00656831  50                        PUSH EAX
00656832  e8a99c3b00                CALL 0x00a104e0
00656837  50                        PUSH EAX
00656838  8bce                      MOV ECX,ESI
0065683a  e87171ddff                CALL 0x0042d9b0
0065683f  8b06                      MOV EAX,dword ptr [ESI]
00656841  8bce                      MOV ECX,ESI
00656843  ff500c                    CALL dword ptr [EAX + 0xc]
00656846  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0065684e  51                        PUSH ECX
0065684f  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00656855  c704240000803f            MOV dword ptr [ESP],0x3f800000
0065685c  6a00                      PUSH 0x0
0065685e  6a02                      PUSH 0x2
00656860  68a6030000                PUSH 0x3a6
00656865  e876003000                CALL 0x009568e0
0065686a  e9d5000000                JMP 0x00656944
0065686f  3d33010000                CMP EAX,0x133
00656874  7451                      JZ 0x006568c7
00656876  83f822                    CMP EAX,0x22
00656879  744c                      JZ 0x006568c7
0065687b  e8e0860900                CALL 0x006eef60
00656880  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00656886  6a00                      PUSH 0x0
00656888  68acd5c500                PUSH 0xc5d5ac
0065688d  68dcd5c500                PUSH 0xc5d5dc
00656892  6a00                      PUSH 0x0
00656894  50                        PUSH EAX
00656895  6a00                      PUSH 0x0
00656897  57                        PUSH EDI
00656898  6840b6c700                PUSH 0xc7b640
0065689d  8d873c030000              LEA EAX,[EDI + 0x33c]
006568a3  50                        PUSH EAX
006568a4  6a1a                      PUSH 0x1a
006568a6  68e8030000                PUSH 0x3e8
006568ab  e87022ddff                CALL 0x00428b20
006568b0  50                        PUSH EAX
006568b1  e8fb9f4900                CALL 0x00af08b1
006568b6  83c414                    ADD ESP,0x14
006568b9  c785bcfcffff00004040      MOV dword ptr [EBP + 0xfffffcbc],0x40400000
006568c3  8bf0                      MOV ESI,EAX
006568c5  eb56                      JMP 0x0065691d
006568c7  e894860900                CALL 0x006eef60
006568cc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006568d2  6a00                      PUSH 0x0
006568d4  68acd5c500                PUSH 0xc5d5ac
006568d9  68dcd5c500                PUSH 0xc5d5dc
006568de  6a00                      PUSH 0x0
006568e0  50                        PUSH EAX
006568e1  6a00                      PUSH 0x0
006568e3  57                        PUSH EDI
006568e4  6840b6c700                PUSH 0xc7b640
006568e9  8d873c030000              LEA EAX,[EDI + 0x33c]
006568ef  50                        PUSH EAX
006568f0  6a1a                      PUSH 0x1a
006568f2  68e8030000                PUSH 0x3e8
006568f7  e82422ddff                CALL 0x00428b20
006568fc  50                        PUSH EAX
006568fd  e8af9f4900                CALL 0x00af08b1
00656902  83c414                    ADD ESP,0x14
00656905  8bf0                      MOV ESI,EAX
00656907  8bce                      MOV ECX,ESI
00656909  6896000000                PUSH 0x96
0065690e  e87df5ddff                CALL 0x00435e90
00656913  c785bcfcffff00000040      MOV dword ptr [EBP + 0xfffffcbc],0x40000000
0065691d  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
00656923  b93c79c300                MOV ECX,0xc3793c
00656928  50                        PUSH EAX
00656929  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
0065692f  50                        PUSH EAX
00656930  e8ab9b3b00                CALL 0x00a104e0
00656935  50                        PUSH EAX
00656936  8bce                      MOV ECX,ESI
00656938  e87370ddff                CALL 0x0042d9b0
0065693d  8b06                      MOV EAX,dword ptr [ESI]
0065693f  8bce                      MOV ECX,ESI
00656941  ff500c                    CALL dword ptr [EAX + 0xc]
00656944  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
0065694a  2500000100                AND EAX,0x10000
0065694f  83c800                    OR EAX,0x0
00656952  0f8406060000              JZ 0x00656f5e
00656958  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0065695b  83f83e                    CMP EAX,0x3e
0065695e  0f8597020000              JNZ 0x00656bfb
00656964  8d8f60030000              LEA ECX,[EDI + 0x360]
0065696a  e831953b00                CALL 0x00a0fea0
0065696f  d99dbcfcffff              FSTP dword ptr [EBP + 0xfffffcbc]
00656975  f30f108dbcfcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcbc]
0065697d  8d8d44fcffff              LEA ECX,[EBP + 0xfffffc44]
00656983  0f57d2                    XORPS XMM2,XMM2
00656986  e805953b00                CALL 0x00a0fe90
0065698b  b902000000                MOV ECX,0x2
00656990  e87b860200                CALL 0x0067f010
00656995  85c0                      TEST EAX,EAX
00656997  7526                      JNZ 0x006569bf
00656999  51                        PUSH ECX
0065699a  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
006569a0  c7042400003442            MOV dword ptr [ESP],0x42340000
006569a7  50                        PUSH EAX
006569a8  8d8d44fcffff              LEA ECX,[EBP + 0xfffffc44]
006569ae  e82d993b00                CALL 0x00a102e0
006569b3  50                        PUSH EAX
006569b4  8d8d44fcffff              LEA ECX,[EBP + 0xfffffc44]
006569ba  e8f1691800                CALL 0x007dd3b0
006569bf  8d8d44fcffff              LEA ECX,[EBP + 0xfffffc44]
006569c5  e806953b00                CALL 0x00a0fed0
006569ca  f30f1005a0a8ba00          MOVSS XMM0,dword ptr [0x00baa8a0]
006569d2  d99dbcfcffff              FSTP dword ptr [EBP + 0xfffffcbc]
006569d8  0f2f85bcfcffff            COMISS XMM0,dword ptr [EBP + 0xfffffcbc]
006569df  7625                      JBE 0x00656a06
006569e1  8d85b4fcffff              LEA EAX,[EBP + 0xfffffcb4]
006569e7  c785b4fcffffcdcccc3f      MOV dword ptr [EBP + 0xfffffcb4],0x3fcccccd
006569f1  50                        PUSH EAX
006569f2  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
006569f8  50                        PUSH EAX
006569f9  8d8d44fcffff              LEA ECX,[EBP + 0xfffffc44]
006569ff  e8dc9a3b00                CALL 0x00a104e0
00656a04  eb26                      JMP 0x00656a2c
00656a06  f30f108544fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc44]
00656a0e  8d8510fcffff              LEA EAX,[EBP + 0xfffffc10]
00656a14  f30f118510fcffff          MOVSS dword ptr [EBP + 0xfffffc10],XMM0
00656a1c  f30f108548fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc48]
00656a24  f30f118514fcffff          MOVSS dword ptr [EBP + 0xfffffc14],XMM0
00656a2c  50                        PUSH EAX
00656a2d  8d8d44fcffff              LEA ECX,[EBP + 0xfffffc44]
00656a33  e878691800                CALL 0x007dd3b0
00656a38  8d4748                    LEA EAX,[EDI + 0x48]
00656a3b  c785b8fcffff04000000      MOV dword ptr [EBP + 0xfffffcb8],0x4
00656a45  8985acfcffff              MOV dword ptr [EBP + 0xfffffcac],EAX
00656a4b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00656a50  e80b850900                CALL 0x006eef60
00656a55  8bf0                      MOV ESI,EAX
00656a57  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00656a5d  8d8760030000              LEA EAX,[EDI + 0x360]
00656a63  50                        PUSH EAX
00656a64  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00656a6a  50                        PUSH EAX
00656a6b  e8109a3b00                CALL 0x00a10480
00656a70  6a00                      PUSH 0x0
00656a72  680cd7c500                PUSH 0xc5d70c
00656a77  68dcd5c500                PUSH 0xc5d5dc
00656a7c  6a00                      PUSH 0x0
00656a7e  56                        PUSH ESI
00656a7f  6a00                      PUSH 0x0
00656a81  6a00                      PUSH 0x0
00656a83  8d8d44fcffff              LEA ECX,[EBP + 0xfffffc44]
00656a89  51                        PUSH ECX
00656a8a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00656a90  50                        PUSH EAX
00656a91  ff772c                    PUSH dword ptr [EDI + 0x2c]
00656a94  ff7728                    PUSH dword ptr [EDI + 0x28]
00656a97  e88420ddff                CALL 0x00428b20
00656a9c  50                        PUSH EAX
00656a9d  e80f9e4900                CALL 0x00af08b1
00656aa2  8bb5c0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcc0]
00656aa8  83c414                    ADD ESP,0x14
00656aab  8bf8                      MOV EDI,EAX
00656aad  8bcf                      MOV ECX,EDI
00656aaf  ff7634                    PUSH dword ptr [ESI + 0x34]
00656ab2  e8f9abddff                CALL 0x004316b0
00656ab7  ff7638                    PUSH dword ptr [ESI + 0x38]
00656aba  8bcf                      MOV ECX,EDI
00656abc  e8af05e6ff                CALL 0x004b7070
00656ac1  f30f108610040000          MOVSS XMM0,dword ptr [ESI + 0x410]
00656ac9  8d95bcfcffff              LEA EDX,[EBP + 0xfffffcbc]
00656acf  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00656ad7  8d8d8cfcffff              LEA ECX,[EBP + 0xfffffc8c]
00656add  c7858cfcffff0000b8c1      MOV dword ptr [EBP + 0xfffffc8c],0xc1b80000
00656ae7  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
00656aef  e88c5cdbff                CALL 0x0040c780
00656af4  51                        PUSH ECX
00656af5  8bcf                      MOV ECX,EDI
00656af7  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00656afb  f30f110424                MOVSS dword ptr [ESP],XMM0
00656b00  e87b9ddfff                CALL 0x00450880
00656b05  f30f108620040000          MOVSS XMM0,dword ptr [ESI + 0x420]
00656b0d  8d95bcfcffff              LEA EDX,[EBP + 0xfffffcbc]
00656b13  f30f5c0538a3ba00          SUBSS XMM0,dword ptr [0x00baa338]
00656b1b  8d8d8cfcffff              LEA ECX,[EBP + 0xfffffc8c]
00656b21  c7858cfcffff0000803f      MOV dword ptr [EBP + 0xfffffc8c],0x3f800000
00656b2b  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
00656b33  e83860dcff                CALL 0x0041cb70
00656b38  51                        PUSH ECX
00656b39  8bcf                      MOV ECX,EDI
00656b3b  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00656b3f  f30f110424                MOVSS dword ptr [ESP],XMM0
00656b44  e8579ddfff                CALL 0x004508a0
00656b49  8b8e38040000              MOV ECX,dword ptr [ESI + 0x438]
00656b4f  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
00656b55  81e1fffffeff              AND ECX,0xfffeffff
00656b5b  89873c040000              MOV dword ptr [EDI + 0x43c],EAX
00656b61  8b07                      MOV EAX,dword ptr [EDI]
00656b63  898f38040000              MOV dword ptr [EDI + 0x438],ECX
00656b69  8b8dacfcffff              MOV ECX,dword ptr [EBP + 0xfffffcac]
00656b6f  c78718040000cdcccc3d      MOV dword ptr [EDI + 0x418],0x3dcccccd
00656b79  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00656b7c  c78714040000000040c0      MOV dword ptr [EDI + 0x414],0xc0400000
00656b86  e88508dbff                CALL 0x00407410
00656b8b  6a01                      PUSH 0x1
00656b8d  6a00                      PUSH 0x0
00656b8f  68ff000000                PUSH 0xff
00656b94  6aff                      PUSH -0x1
00656b96  50                        PUSH EAX
00656b97  8bcf                      MOV ECX,EDI
00656b99  ffd6                      CALL ESI
00656b9b  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
00656ba1  8bcf                      MOV ECX,EDI
00656ba3  ffb0bc030000              PUSH dword ptr [EAX + 0x3bc]
00656ba9  e8f2260500                CALL 0x006a92a0
00656bae  8b07                      MOV EAX,dword ptr [EDI]
00656bb0  8bcf                      MOV ECX,EDI
00656bb2  ff500c                    CALL dword ptr [EAX + 0xc]
00656bb5  f30f109544fcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffc44]
00656bbd  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
00656bc3  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00656bca  f30f108d48fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffc48]
00656bd2  e8b9923b00                CALL 0x00a0fe90
00656bd7  50                        PUSH EAX
00656bd8  8d8d44fcffff              LEA ECX,[EBP + 0xfffffc44]
00656bde  e8cd671800                CALL 0x007dd3b0
00656be3  83adb8fcffff01            SUB dword ptr [EBP + 0xfffffcb8],0x1
00656bea  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00656bf0  0f855afeffff              JNZ 0x00656a50
00656bf6  e963030000                JMP 0x00656f5e
00656bfb  3d8f030000                CMP EAX,0x38f
00656c00  0f8551010000              JNZ 0x00656d57
00656c06  837f3802                  CMP dword ptr [EDI + 0x38],0x2
00656c0a  0f8547010000              JNZ 0x00656d57
00656c10  83ceff                    OR ESI,0xffffffff
00656c13  8d873c030000              LEA EAX,[EDI + 0x33c]
00656c19  89b5b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],ESI
00656c1f  8985bcfcffff              MOV dword ptr [EBP + 0xfffffcbc],EAX
00656c25  e836830900                CALL 0x006eef60
00656c2a  8bf8                      MOV EDI,EAX
00656c2c  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
00656c32  8b80c8030000              MOV EAX,dword ptr [EAX + 0x3c8]
00656c38  8985b4fcffff              MOV dword ptr [EBP + 0xfffffcb4],EAX
00656c3e  e89d830200                CALL 0x0067efe0
00656c43  f30f100dc0adba00          MOVSS XMM1,dword ptr [0x00baadc0]
00656c4b  0f28d0                    MOVAPS XMM2,XMM0
00656c4e  f30f1005a8adba00          MOVSS XMM0,dword ptr [0x00baada8]
00656c56  32c9                      XOR CL,CL
00656c58  e863e93b00                CALL 0x00a155c0
00656c5d  0f28d0                    MOVAPS XMM2,XMM0
00656c60  8d8d60fcffff              LEA ECX,[EBP + 0xfffffc60]
00656c66  0f57c9                    XORPS XMM1,XMM1
00656c69  e822923b00                CALL 0x00a0fe90
00656c6e  660f6ec6                  MOVD XMM0,ESI
00656c72  0f5bc0                    CVTDQ2PS XMM0,XMM0
00656c75  51                        PUSH ECX
00656c76  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00656c7c  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
00656c84  f30f110424                MOVSS dword ptr [ESP],XMM0
00656c89  51                        PUSH ECX
00656c8a  8bc8                      MOV ECX,EAX
00656c8c  e84f963b00                CALL 0x00a102e0
00656c91  f30f1015a8adba00          MOVSS XMM2,dword ptr [0x00baada8]
00656c99  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
00656c9f  0f57c9                    XORPS XMM1,XMM1
00656ca2  8bf0                      MOV ESI,EAX
00656ca4  e8e7913b00                CALL 0x00a0fe90
00656ca9  8b8dbcfcffff              MOV ECX,dword ptr [EBP + 0xfffffcbc]
00656caf  50                        PUSH EAX
00656cb0  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
00656cb6  50                        PUSH EAX
00656cb7  e864973b00                CALL 0x00a10420
00656cbc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00656cc2  57                        PUSH EDI
00656cc3  6a00                      PUSH 0x0
00656cc5  ffb5b4fcffff              PUSH dword ptr [EBP + 0xfffffcb4]
00656ccb  56                        PUSH ESI
00656ccc  50                        PUSH EAX
00656ccd  6a00                      PUSH 0x0
00656ccf  6a09                      PUSH 0x9
00656cd1  e84a1eddff                CALL 0x00428b20
00656cd6  8bf0                      MOV ESI,EAX
00656cd8  6a01                      PUSH 0x1
00656cda  6800200000                PUSH 0x2000
00656cdf  8bce                      MOV ECX,ESI
00656ce1  e85a0adfff                CALL 0x00447740
00656ce6  6a00                      PUSH 0x0
00656ce8  6a00                      PUSH 0x0
00656cea  8bce                      MOV ECX,ESI
00656cec  e89f40e5ff                CALL 0x004aad90
00656cf1  6a06                      PUSH 0x6
00656cf3  8bce                      MOV ECX,ESI
00656cf5  e8d640e5ff                CALL 0x004aadd0
00656cfa  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00656d00  8bce                      MOV ECX,ESI
00656d02  ff7734                    PUSH dword ptr [EDI + 0x34]
00656d05  e8a6a9ddff                CALL 0x004316b0
00656d0a  ff7738                    PUSH dword ptr [EDI + 0x38]
00656d0d  8bce                      MOV ECX,ESI
00656d0f  e85c03e6ff                CALL 0x004b7070
00656d14  51                        PUSH ECX
00656d15  8bce                      MOV ECX,ESI
00656d17  c70424cdcc4c3e            MOV dword ptr [ESP],0x3e4ccccd
00656d1e  e86ddfdeff                CALL 0x00444c90
00656d23  8b06                      MOV EAX,dword ptr [ESI]
00656d25  8bce                      MOV ECX,ESI
00656d27  6a01                      PUSH 0x1
00656d29  6a00                      PUSH 0x0
00656d2b  68ff000000                PUSH 0xff
00656d30  6aff                      PUSH -0x1
00656d32  68c84cc300                PUSH 0xc34cc8
00656d37  ff503c                    CALL dword ptr [EAX + 0x3c]
00656d3a  8bb5b8fcffff              MOV ESI,dword ptr [EBP + 0xfffffcb8]
00656d40  83c602                    ADD ESI,0x2
00656d43  89b5b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],ESI
00656d49  83fe01                    CMP ESI,0x1
00656d4c  0f8ed3feffff              JLE 0x00656c25
00656d52  e907020000                JMP 0x00656f5e
00656d57  8d852cfcffff              LEA EAX,[EBP + 0xfffffc2c]
00656d5d  50                        PUSH EAX
00656d5e  e80d830200                CALL 0x0067f070
00656d63  8d8760030000              LEA EAX,[EDI + 0x360]
00656d69  83c404                    ADD ESP,0x4
00656d6c  8bc8                      MOV ECX,EAX
00656d6e  8985b4fcffff              MOV dword ptr [EBP + 0xfffffcb4],EAX
00656d74  e827913b00                CALL 0x00a0fea0
00656d79  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
00656d7f  50                        PUSH EAX
00656d80  8d8d2cfcffff              LEA ECX,[EBP + 0xfffffc2c]
00656d86  d99dbcfcffff              FSTP dword ptr [EBP + 0xfffffcbc]
00656d8c  e8af973b00                CALL 0x00a10540
00656d91  8d873c030000              LEA EAX,[EDI + 0x33c]
00656d97  c785b8fcffff00000000      MOV dword ptr [EBP + 0xfffffcb8],0x0
00656da1  89858cfcffff              MOV dword ptr [EBP + 0xfffffc8c],EAX
00656da7  8d4748                    LEA EAX,[EDI + 0x48]
00656daa  8985acfcffff              MOV dword ptr [EBP + 0xfffffcac],EAX
00656db0  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
00656db6  e8c5903b00                CALL 0x00a0fe80
00656dbb  83bdb8fcffff02            CMP dword ptr [EBP + 0xfffffcb8],0x2
00656dc2  7308                      JNC 0x00656dcc
00656dc4  8d852cfcffff              LEA EAX,[EBP + 0xfffffc2c]
00656dca  eb22                      JMP 0x00656dee
00656dcc  f30f10952cfcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffc2c]
00656dd4  8d8d60fcffff              LEA ECX,[EBP + 0xfffffc60]
00656dda  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00656de1  f30f108d30fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffc30]
00656de9  e8a2903b00                CALL 0x00a0fe90
00656dee  50                        PUSH EAX
00656def  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
00656df5  e8b6651800                CALL 0x007dd3b0
00656dfa  f685b8fcffff01            TEST byte ptr [EBP + 0xfffffcb8],0x1
00656e01  741e                      JZ 0x00656e21
00656e03  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00656e09  50                        PUSH EAX
00656e0a  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
00656e10  e84b983b00                CALL 0x00a10660
00656e15  50                        PUSH EAX
00656e16  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
00656e1c  e88f651800                CALL 0x007dd3b0
00656e21  e83a810900                CALL 0x006eef60
00656e26  ffb5b4fcffff              PUSH dword ptr [EBP + 0xfffffcb4]
00656e2c  8b8d8cfcffff              MOV ECX,dword ptr [EBP + 0xfffffc8c]
00656e32  8bf0                      MOV ESI,EAX
00656e34  8bbfbc030000              MOV EDI,dword ptr [EDI + 0x3bc]
00656e3a  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
00656e40  50                        PUSH EAX
00656e41  e83a963b00                CALL 0x00a10480
00656e46  6a00                      PUSH 0x0
00656e48  680cd7c500                PUSH 0xc5d70c
00656e4d  68dcd5c500                PUSH 0xc5d5dc
00656e52  6a00                      PUSH 0x0
00656e54  56                        PUSH ESI
00656e55  8bb5c0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcc0]
00656e5b  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
00656e61  6a00                      PUSH 0x0
00656e63  57                        PUSH EDI
00656e64  51                        PUSH ECX
00656e65  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00656e6b  50                        PUSH EAX
00656e6c  ff762c                    PUSH dword ptr [ESI + 0x2c]
00656e6f  ff7628                    PUSH dword ptr [ESI + 0x28]
00656e72  e8a91cddff                CALL 0x00428b20
00656e77  50                        PUSH EAX
00656e78  e8349a4900                CALL 0x00af08b1
00656e7d  83c410                    ADD ESP,0x10
00656e80  8bf8                      MOV EDI,EAX
00656e82  8bcf                      MOV ECX,EDI
00656e84  c7042400003ec1            MOV dword ptr [ESP],0xc13e0000
00656e8b  e8f099dfff                CALL 0x00450880
00656e90  8b8e18040000              MOV ECX,dword ptr [ESI + 0x418]
00656e96  898f18040000              MOV dword ptr [EDI + 0x418],ECX
00656e9c  e83f810200                CALL 0x0067efe0
00656ea1  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00656ea9  51                        PUSH ECX
00656eaa  8bcf                      MOV ECX,EDI
00656eac  f30f5c05e0a0ba00          SUBSS XMM0,dword ptr [0x00baa0e0]
00656eb4  f30f110424                MOVSS dword ptr [ESP],XMM0
00656eb9  e8b2dddeff                CALL 0x00444c70
00656ebe  8b07                      MOV EAX,dword ptr [EDI]
00656ec0  51                        PUSH ECX
00656ec1  8bcf                      MOV ECX,EDI
00656ec3  c704240000803f            MOV dword ptr [ESP],0x3f800000
00656eca  ff5040                    CALL dword ptr [EAX + 0x40]
00656ecd  8b8e38040000              MOV ECX,dword ptr [ESI + 0x438]
00656ed3  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
00656ed9  81e1fffffeff              AND ECX,0xfffeffff
00656edf  898f38040000              MOV dword ptr [EDI + 0x438],ECX
00656ee5  89873c040000              MOV dword ptr [EDI + 0x43c],EAX
00656eeb  f30f108620040000          MOVSS XMM0,dword ptr [ESI + 0x420]
00656ef3  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00656efb  51                        PUSH ECX
00656efc  8bcf                      MOV ECX,EDI
00656efe  f30f110424                MOVSS dword ptr [ESP],XMM0
00656f03  e89899dfff                CALL 0x004508a0
00656f08  8b07                      MOV EAX,dword ptr [EDI]
00656f0a  8b8dacfcffff              MOV ECX,dword ptr [EBP + 0xfffffcac]
00656f10  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00656f13  e8f804dbff                CALL 0x00407410
00656f18  6a01                      PUSH 0x1
00656f1a  6a00                      PUSH 0x0
00656f1c  68ff000000                PUSH 0xff
00656f21  6aff                      PUSH -0x1
00656f23  50                        PUSH EAX
00656f24  8bcf                      MOV ECX,EDI
00656f26  ffd6                      CALL ESI
00656f28  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
00656f2e  8bcf                      MOV ECX,EDI
00656f30  ffb0bc030000              PUSH dword ptr [EAX + 0x3bc]
00656f36  e865230500                CALL 0x006a92a0
00656f3b  8b07                      MOV EAX,dword ptr [EDI]
00656f3d  8bcf                      MOV ECX,EDI
00656f3f  ff500c                    CALL dword ptr [EAX + 0xc]
00656f42  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
00656f48  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00656f4e  40                        INC EAX
00656f4f  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
00656f55  83f804                    CMP EAX,0x4
00656f58  0f8c52feffff              JL 0x00656db0
00656f5e  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
00656f64  33c0                      XOR EAX,EAX
00656f66  83e108                    AND ECX,0x8
00656f69  0bc1                      OR EAX,ECX
00656f6b  0f84d2000000              JZ 0x00657043
00656f71  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00656f79  8d873c030000              LEA EAX,[EDI + 0x33c]
00656f7f  51                        PUSH ECX
00656f80  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00656f86  c704240000803f            MOV dword ptr [ESP],0x3f800000
00656f8d  6a00                      PUSH 0x0
00656f8f  6a2d                      PUSH 0x2d
00656f91  50                        PUSH EAX
00656f92  68e3010000                PUSH 0x1e3
00656f97  e8a4f92f00                CALL 0x00956940
00656f9c  33f6                      XOR ESI,ESI
00656f9e  6690                      NOP
00656fa0  e8bb7f0900                CALL 0x006eef60
00656fa5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00656fab  50                        PUSH EAX
00656fac  6a00                      PUSH 0x0
00656fae  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00656fb4  8d873c030000              LEA EAX,[EDI + 0x33c]
00656fba  6840b6c700                PUSH 0xc7b640
00656fbf  50                        PUSH EAX
00656fc0  6894000000                PUSH 0x94
00656fc5  68e8030000                PUSH 0x3e8
00656fca  e8511bddff                CALL 0x00428b20
00656fcf  57                        PUSH EDI
00656fd0  8bc8                      MOV ECX,EAX
00656fd2  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
00656fd8  e8c3220500                CALL 0x006a92a0
00656fdd  660f6ec6                  MOVD XMM0,ESI
00656fe1  0f5bc0                    CVTDQ2PS XMM0,XMM0
00656fe4  51                        PUSH ECX
00656fe5  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
00656feb  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00656ff3  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00656ffb  f30f110424                MOVSS dword ptr [ESP],XMM0
00657000  e8abeeddff                CALL 0x00435eb0
00657005  6a00                      PUSH 0x0
00657007  6800000020                PUSH 0x20000000
0065700c  8bcf                      MOV ECX,EDI
0065700e  e81d04dcff                CALL 0x00417430
00657013  84c0                      TEST AL,AL
00657015  7510                      JNZ 0x00657027
00657017  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
0065701d  2500000080                AND EAX,0x80000000
00657022  83c800                    OR EAX,0x0
00657025  7412                      JZ 0x00657039
00657027  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
0065702d  6a00                      PUSH 0x0
0065702f  6800000020                PUSH 0x20000000
00657034  e8a703dcff                CALL 0x004173e0
00657039  46                        INC ESI
0065703a  83fe04                    CMP ESI,0x4
0065703d  0f8c5dffffff              JL 0x00656fa0
00657043  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
00657049  33c0                      XOR EAX,EAX
0065704b  83e110                    AND ECX,0x10
0065704e  0bc1                      OR EAX,ECX
00657050  0f84f5000000              JZ 0x0065714b
00657056  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0065705e  8db73c030000              LEA ESI,[EDI + 0x33c]
00657064  51                        PUSH ECX
00657065  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
0065706b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00657072  6a00                      PUSH 0x0
00657074  6a2d                      PUSH 0x2d
00657076  56                        PUSH ESI
00657077  68e3010000                PUSH 0x1e3
0065707c  e8bff82f00                CALL 0x00956940
00657081  c785b8fcffff00000000      MOV dword ptr [EBP + 0xfffffcb8],0x0
0065708b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00657090  e8cb7e0900                CALL 0x006eef60
00657095  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065709b  50                        PUSH EAX
0065709c  6a00                      PUSH 0x0
0065709e  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
006570a4  6840b6c700                PUSH 0xc7b640
006570a9  56                        PUSH ESI
006570aa  6894000000                PUSH 0x94
006570af  68e8030000                PUSH 0x3e8
006570b4  e8671addff                CALL 0x00428b20
006570b9  8bf0                      MOV ESI,EAX
006570bb  57                        PUSH EDI
006570bc  8bce                      MOV ECX,ESI
006570be  e8dd210500                CALL 0x006a92a0
006570c3  ff7734                    PUSH dword ptr [EDI + 0x34]
006570c6  8bce                      MOV ECX,ESI
006570c8  e8e3a5ddff                CALL 0x004316b0
006570cd  ff7738                    PUSH dword ptr [EDI + 0x38]
006570d0  8bce                      MOV ECX,ESI
006570d2  e899ffe5ff                CALL 0x004b7070
006570d7  660f6e85b8fcffff          MOVD XMM0,dword ptr [EBP + 0xfffffcb8]
006570df  0f5bc0                    CVTDQ2PS XMM0,XMM0
006570e2  51                        PUSH ECX
006570e3  8bce                      MOV ECX,ESI
006570e5  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
006570ed  f30f580510a9ba00          ADDSS XMM0,dword ptr [0x00baa910]
006570f5  f30f110424                MOVSS dword ptr [ESP],XMM0
006570fa  e8b1edddff                CALL 0x00435eb0
006570ff  6a00                      PUSH 0x0
00657101  6800000020                PUSH 0x20000000
00657106  8bcf                      MOV ECX,EDI
00657108  e82303dcff                CALL 0x00417430
0065710d  84c0                      TEST AL,AL
0065710f  7510                      JNZ 0x00657121
00657111  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00657117  2500000080                AND EAX,0x80000000
0065711c  83c800                    OR EAX,0x0
0065711f  740e                      JZ 0x0065712f
00657121  6a00                      PUSH 0x0
00657123  6800000020                PUSH 0x20000000
00657128  8bce                      MOV ECX,ESI
0065712a  e8b102dcff                CALL 0x004173e0
0065712f  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
00657135  8db73c030000              LEA ESI,[EDI + 0x33c]
0065713b  40                        INC EAX
0065713c  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
00657142  83f804                    CMP EAX,0x4
00657145  0f8c45ffffff              JL 0x00657090
0065714b  8b973c040000              MOV EDX,dword ptr [EDI + 0x43c]
00657151  33c0                      XOR EAX,EAX
00657153  8bb738040000              MOV ESI,dword ptr [EDI + 0x438]
00657159  8bca                      MOV ECX,EDX
0065715b  83e140                    AND ECX,0x40
0065715e  0bc1                      OR EAX,ECX
00657160  0f84e1010000              JZ 0x00657347
00657166  8d858cfcffff              LEA EAX,[EBP + 0xfffffc8c]
0065716c  c7858cfcffff00000040      MOV dword ptr [EBP + 0xfffffc8c],0x40000000
00657176  50                        PUSH EAX
00657177  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
0065717d  8db73c030000              LEA ESI,[EDI + 0x33c]
00657183  50                        PUSH EAX
00657184  8d8f94010000              LEA ECX,[EDI + 0x194]
0065718a  89b578fcffff              MOV dword ptr [EBP + 0xfffffc78],ESI
00657190  e84b933b00                CALL 0x00a104e0
00657195  50                        PUSH EAX
00657196  8bce                      MOV ECX,ESI
00657198  e813933b00                CALL 0x00a104b0
0065719d  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006571a5  51                        PUSH ECX
006571a6  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006571ac  c704240000803f            MOV dword ptr [ESP],0x3f800000
006571b3  6a00                      PUSH 0x0
006571b5  6a02                      PUSH 0x2
006571b7  56                        PUSH ESI
006571b8  6a1e                      PUSH 0x1e
006571ba  e881f72f00                CALL 0x00956940
006571bf  e89c7d0900                CALL 0x006eef60
006571c4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006571ca  50                        PUSH EAX
006571cb  6a03                      PUSH 0x3
006571cd  6a00                      PUSH 0x0
006571cf  6840b6c700                PUSH 0xc7b640
006571d4  56                        PUSH ESI
006571d5  6a02                      PUSH 0x2
006571d7  68e8030000                PUSH 0x3e8
006571dc  e83f19ddff                CALL 0x00428b20
006571e1  837f343d                  CMP dword ptr [EDI + 0x34],0x3d
006571e5  b908000000                MOV ECX,0x8
006571ea  898dacfcffff              MOV dword ptr [EBP + 0xfffffcac],ECX
006571f0  7512                      JNZ 0x00657204
006571f2  837f3807                  CMP dword ptr [EDI + 0x38],0x7
006571f6  b806000000                MOV EAX,0x6
006571fb  0f44c8                    CMOVZ ECX,EAX
006571fe  898dacfcffff              MOV dword ptr [EBP + 0xfffffcac],ECX
00657204  660f6ec9                  MOVD XMM1,ECX
00657208  33c0                      XOR EAX,EAX
0065720a  0f5bc9                    CVTDQ2PS XMM1,XMM1
0065720d  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
00657213  f30f118d94fcffff          MOVSS dword ptr [EBP + 0xfffffc94],XMM1
0065721b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00657220  660f6ec0                  MOVD XMM0,EAX
00657224  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
0065722a  0f5bc0                    CVTDQ2PS XMM0,XMM0
0065722d  51                        PUSH ECX
0065722e  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00657236  f30f5ec1                  DIVSS XMM0,XMM1
0065723a  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00657242  f30f110424                MOVSS dword ptr [ESP],XMM0
00657247  50                        PUSH EAX
00657248  e803913b00                CALL 0x00a10350
0065724d  83c408                    ADD ESP,0x8
00657250  c7858cfcffff00002041      MOV dword ptr [EBP + 0xfffffc8c],0x41200000
0065725a  8d8d8cfcffff              LEA ECX,[EBP + 0xfffffc8c]
00657260  51                        PUSH ECX
00657261  8d8de0fbffff              LEA ECX,[EBP + 0xfffffbe0]
00657267  51                        PUSH ECX
00657268  8bc8                      MOV ECX,EAX
0065726a  e871923b00                CALL 0x00a104e0
0065726f  e8ec7c0900                CALL 0x006eef60
00657274  8b8d78fcffff              MOV ECX,dword ptr [EBP + 0xfffffc78]
0065727a  8bf0                      MOV ESI,EAX
0065727c  8bbfc8030000              MOV EDI,dword ptr [EDI + 0x3c8]
00657282  8d85e0fbffff              LEA EAX,[EBP + 0xfffffbe0]
00657288  50                        PUSH EAX
00657289  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
0065728f  50                        PUSH EAX
00657290  e88b913b00                CALL 0x00a10420
00657295  56                        PUSH ESI
00657296  6a00                      PUSH 0x0
00657298  57                        PUSH EDI
00657299  8d8de0fbffff              LEA ECX,[EBP + 0xfffffbe0]
0065729f  51                        PUSH ECX
006572a0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006572a6  50                        PUSH EAX
006572a7  6a00                      PUSH 0x0
006572a9  6a09                      PUSH 0x9
006572ab  e87018ddff                CALL 0x00428b20
006572b0  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
006572b6  8bf0                      MOV ESI,EAX
006572b8  8bce                      MOV ECX,ESI
006572ba  ff7734                    PUSH dword ptr [EDI + 0x34]
006572bd  e8eea3ddff                CALL 0x004316b0
006572c2  ff7738                    PUSH dword ptr [EDI + 0x38]
006572c5  8bce                      MOV ECX,ESI
006572c7  e8a4fde5ff                CALL 0x004b7070
006572cc  837f3000                  CMP dword ptr [EDI + 0x30],0x0
006572d0  7631                      JBE 0x00657303
006572d2  f30f108720040000          MOVSS XMM0,dword ptr [EDI + 0x420]
006572da  f30f590528a3ba00          MULSS XMM0,dword ptr [0x00baa328]
006572e2  51                        PUSH ECX
006572e3  8bce                      MOV ECX,ESI
006572e5  f30f110424                MOVSS dword ptr [ESP],XMM0
006572ea  e8b195dfff                CALL 0x004508a0
006572ef  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
006572f2  8bce                      MOV ECX,ESI
006572f4  48                        DEC EAX
006572f5  50                        PUSH EAX
006572f6  e8d5e9ddff                CALL 0x00435cd0
006572fb  ffb73c040000              PUSH dword ptr [EDI + 0x43c]
00657301  eb0a                      JMP 0x0065730d
00657303  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
00657309  83e0bf                    AND EAX,0xffffffbf
0065730c  50                        PUSH EAX
0065730d  ffb738040000              PUSH dword ptr [EDI + 0x438]
00657313  8bce                      MOV ECX,ESI
00657315  e82604dfff                CALL 0x00447740
0065731a  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
00657320  f30f108d94fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffc94]
00657328  40                        INC EAX
00657329  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
0065732f  3b85acfcffff              CMP EAX,dword ptr [EBP + 0xfffffcac]
00657335  0f8ce5feffff              JL 0x00657220
0065733b  8bb738040000              MOV ESI,dword ptr [EDI + 0x438]
00657341  8b973c040000              MOV EDX,dword ptr [EDI + 0x43c]
00657347  8bca                      MOV ECX,EDX
00657349  89b5f8fbffff              MOV dword ptr [EBP + 0xfffffbf8],ESI
0065734f  81e100004000              AND ECX,0x400000
00657355  33c0                      XOR EAX,EAX
00657357  0bc1                      OR EAX,ECX
00657359  0f8436010000              JZ 0x00657495
0065735f  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00657365  50                        PUSH EAX
00657366  8d8f60030000              LEA ECX,[EDI + 0x360]
0065736c  e8bf8c3b00                CALL 0x00a10030
00657371  8d8dd8fbffff              LEA ECX,[EBP + 0xfffffbd8]
00657377  51                        PUSH ECX
00657378  8bc8                      MOV ECX,EAX
0065737a  e8e1923b00                CALL 0x00a10660
0065737f  83c8ff                    OR EAX,0xffffffff
00657382  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00657388  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
0065738e  898d78fcffff              MOV dword ptr [EBP + 0xfffffc78],ECX
00657394  0f1f4000                  NOP dword ptr [EAX]
00657398  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
006573a0  660f6ec0                  MOVD XMM0,EAX
006573a4  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
006573aa  0f5bc0                    CVTDQ2PS XMM0,XMM0
006573ad  51                        PUSH ECX
006573ae  8d8dd8fbffff              LEA ECX,[EBP + 0xfffffbd8]
006573b4  f30f59059ca8ba00          MULSS XMM0,dword ptr [0x00baa89c]
006573bc  f30f110424                MOVSS dword ptr [ESP],XMM0
006573c1  50                        PUSH EAX
006573c2  e8198f3b00                CALL 0x00a102e0
006573c7  8d8d94fcffff              LEA ECX,[EBP + 0xfffffc94]
006573cd  c78594fcffff00002041      MOV dword ptr [EBP + 0xfffffc94],0x41200000
006573d7  51                        PUSH ECX
006573d8  8d8de8fbffff              LEA ECX,[EBP + 0xfffffbe8]
006573de  51                        PUSH ECX
006573df  8bc8                      MOV ECX,EAX
006573e1  e8fa903b00                CALL 0x00a104e0
006573e6  e8757b0900                CALL 0x006eef60
006573eb  8b8d78fcffff              MOV ECX,dword ptr [EBP + 0xfffffc78]
006573f1  8bf0                      MOV ESI,EAX
006573f3  8bbfc8030000              MOV EDI,dword ptr [EDI + 0x3c8]
006573f9  8d85e8fbffff              LEA EAX,[EBP + 0xfffffbe8]
006573ff  50                        PUSH EAX
00657400  8d85f8fbffff              LEA EAX,[EBP + 0xfffffbf8]
00657406  50                        PUSH EAX
00657407  e814903b00                CALL 0x00a10420
0065740c  56                        PUSH ESI
0065740d  6a00                      PUSH 0x0
0065740f  57                        PUSH EDI
00657410  8d8de8fbffff              LEA ECX,[EBP + 0xfffffbe8]
00657416  51                        PUSH ECX
00657417  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065741d  50                        PUSH EAX
0065741e  6a00                      PUSH 0x0
00657420  6a09                      PUSH 0x9
00657422  e8f916ddff                CALL 0x00428b20
00657427  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
0065742d  8bf0                      MOV ESI,EAX
0065742f  8bce                      MOV ECX,ESI
00657431  ff7734                    PUSH dword ptr [EDI + 0x34]
00657434  e877a2ddff                CALL 0x004316b0
00657439  ff7738                    PUSH dword ptr [EDI + 0x38]
0065743c  8bce                      MOV ECX,ESI
0065743e  e82dfce5ff                CALL 0x004b7070
00657443  51                        PUSH ECX
00657444  8bce                      MOV ECX,ESI
00657446  c704240ad723bd            MOV dword ptr [ESP],0xbd23d70a
0065744d  e83ed8deff                CALL 0x00444c90
00657452  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
00657458  8bce                      MOV ECX,ESI
0065745a  25ffffbfff                AND EAX,0xffbfffff
0065745f  50                        PUSH EAX
00657460  ffb738040000              PUSH dword ptr [EDI + 0x438]
00657466  e8d502dfff                CALL 0x00447740
0065746b  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
00657471  83c002                    ADD EAX,0x2
00657474  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
0065747a  83f801                    CMP EAX,0x1
0065747d  0f8e1dffffff              JLE 0x006573a0
00657483  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00657489  8b973c040000              MOV EDX,dword ptr [EDI + 0x43c]
0065748f  8985f8fbffff              MOV dword ptr [EBP + 0xfffffbf8],EAX
00657495  81e200000200              AND EDX,0x20000
0065749b  33c0                      XOR EAX,EAX
0065749d  0bc2                      OR EAX,EDX
0065749f  0f8463030000              JZ 0x00657808
006574a5  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
006574ad  8db73c030000              LEA ESI,[EDI + 0x33c]
006574b3  51                        PUSH ECX
006574b4  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
006574ba  c704240000803f            MOV dword ptr [ESP],0x3f800000
006574c1  6a00                      PUSH 0x0
006574c3  6a02                      PUSH 0x2
006574c5  56                        PUSH ESI
006574c6  6a1e                      PUSH 0x1e
006574c8  e873f42f00                CALL 0x00956940
006574cd  e88e7a0900                CALL 0x006eef60
006574d2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006574d8  50                        PUSH EAX
006574d9  6a03                      PUSH 0x3
006574db  6a00                      PUSH 0x0
006574dd  6840b6c700                PUSH 0xc7b640
006574e2  56                        PUSH ESI
006574e3  6a02                      PUSH 0x2
006574e5  68e8030000                PUSH 0x3e8
006574ea  e83116ddff                CALL 0x00428b20
006574ef  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006574f7  83ec20                    SUB ESP,0x20
006574fa  8bf8                      MOV EDI,EAX
006574fc  0f28d8                    MOVAPS XMM3,XMM0
006574ff  0f28d0                    MOVAPS XMM2,XMM0
00657502  0f28c8                    MOVAPS XMM1,XMM0
00657505  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
0065750d  8b0f                      MOV ECX,dword ptr [EDI]
0065750f  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
00657517  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
0065751f  c74424100000803f          MOV dword ptr [ESP + 0x10],0x3f800000
00657527  8b713c                    MOV ESI,dword ptr [ECX + 0x3c]
0065752a  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00657530  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
00657538  c74424089a99993f          MOV dword ptr [ESP + 0x8],0x3f99999a
00657540  c7442404cdcc4c3e          MOV dword ptr [ESP + 0x4],0x3e4ccccd
00657548  c704240000803f            MOV dword ptr [ESP],0x3f800000
0065754f  e8fce5ddff                CALL 0x00435b50
00657554  6a01                      PUSH 0x1
00657556  6a00                      PUSH 0x0
00657558  68ff000000                PUSH 0xff
0065755d  6aff                      PUSH -0x1
0065755f  50                        PUSH EAX
00657560  8bcf                      MOV ECX,EDI
00657562  ffd6                      CALL ESI
00657564  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
0065756a  817f348f030000            CMP dword ptr [EDI + 0x34],0x38f
00657571  0f856a010000              JNZ 0x006576e1
00657577  837f3802                  CMP dword ptr [EDI + 0x38],0x2
0065757b  0f8560010000              JNZ 0x006576e1
00657581  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00657587  8985acfcffff              MOV dword ptr [EBP + 0xfffffcac],EAX
0065758d  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
00657593  25fffffdff                AND EAX,0xfffdffff
00657598  c785b8fcffff00000000      MOV dword ptr [EBP + 0xfffffcb8],0x0
006575a2  898578fcffff              MOV dword ptr [EBP + 0xfffffc78],EAX
006575a8  0d01040000                OR EAX,0x401
006575ad  898594fcffff              MOV dword ptr [EBP + 0xfffffc94],EAX
006575b3  e8287a0200                CALL 0x0067efe0
006575b8  f30f100dc0adba00          MOVSS XMM1,dword ptr [0x00baadc0]
006575c0  0f28d0                    MOVAPS XMM2,XMM0
006575c3  f30f1005a8adba00          MOVSS XMM0,dword ptr [0x00baada8]
006575cb  32c9                      XOR CL,CL
006575cd  e8eedf3b00                CALL 0x00a155c0
006575d2  0f28d0                    MOVAPS XMM2,XMM0
006575d5  8d8d58fcffff              LEA ECX,[EBP + 0xfffffc58]
006575db  0f57c9                    XORPS XMM1,XMM1
006575de  e8ad883b00                CALL 0x00a0fe90
006575e3  660f6e85b8fcffff          MOVD XMM0,dword ptr [EBP + 0xfffffcb8]
006575eb  0f57c9                    XORPS XMM1,XMM1
006575ee  f30f101d48aeba00          MOVSS XMM3,dword ptr [0x00baae48]
006575f6  8bf0                      MOV ESI,EAX
006575f8  f30f101534a8ba00          MOVSS XMM2,dword ptr [0x00baa834]
00657600  0f5bc0                    CVTDQ2PS XMM0,XMM0
00657603  51                        PUSH ECX
00657604  b101                      MOV CL,0x1
00657606  c7042400009642            MOV dword ptr [ESP],0x42960000
0065760d  e82ee03b00                CALL 0x00a15640
00657612  8d85f8fbffff              LEA EAX,[EBP + 0xfffffbf8]
00657618  f30f110424                MOVSS dword ptr [ESP],XMM0
0065761d  50                        PUSH EAX
0065761e  8bce                      MOV ECX,ESI
00657620  e8bb8c3b00                CALL 0x00a102e0
00657625  e836790900                CALL 0x006eef60
0065762a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657630  50                        PUSH EAX
00657631  6a00                      PUSH 0x0
00657633  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00657639  8d85f8fbffff              LEA EAX,[EBP + 0xfffffbf8]
0065763f  50                        PUSH EAX
00657640  8d873c030000              LEA EAX,[EDI + 0x33c]
00657646  50                        PUSH EAX
00657647  6a00                      PUSH 0x0
00657649  6a09                      PUSH 0x9
0065764b  e8d014ddff                CALL 0x00428b20
00657650  ffb594fcffff              PUSH dword ptr [EBP + 0xfffffc94]
00657656  8bf0                      MOV ESI,EAX
00657658  ffb5acfcffff              PUSH dword ptr [EBP + 0xfffffcac]
0065765e  8bce                      MOV ECX,ESI
00657660  e8db00dfff                CALL 0x00447740
00657665  ffb578fcffff              PUSH dword ptr [EBP + 0xfffffc78]
0065766b  8bce                      MOV ECX,ESI
0065766d  ffb5acfcffff              PUSH dword ptr [EBP + 0xfffffcac]
00657673  e81837e5ff                CALL 0x004aad90
00657678  6a2d                      PUSH 0x2d
0065767a  8bce                      MOV ECX,ESI
0065767c  e84f37e5ff                CALL 0x004aadd0
00657681  ff7734                    PUSH dword ptr [EDI + 0x34]
00657684  8bce                      MOV ECX,ESI
00657686  e825a0ddff                CALL 0x004316b0
0065768b  ff7738                    PUSH dword ptr [EDI + 0x38]
0065768e  8bce                      MOV ECX,ESI
00657690  e8dbf9e5ff                CALL 0x004b7070
00657695  51                        PUSH ECX
00657696  8bce                      MOV ECX,ESI
00657698  c70424cdccccbd            MOV dword ptr [ESP],0xbdcccccd
0065769f  e8ecd5deff                CALL 0x00444c90
006576a4  e837790200                CALL 0x0067efe0
006576a9  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
006576b1  51                        PUSH ECX
006576b2  8bce                      MOV ECX,ESI
006576b4  f30f5805a4a3ba00          ADDSS XMM0,dword ptr [0x00baa3a4]
006576bc  f30f110424                MOVSS dword ptr [ESP],XMM0
006576c1  e8da91dfff                CALL 0x004508a0
006576c6  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
006576cc  40                        INC EAX
006576cd  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
006576d3  83f80c                    CMP EAX,0xc
006576d6  0f8ed7feffff              JLE 0x006575b3
006576dc  e927010000                JMP 0x00657808
006576e1  c785b8fcffff10000000      MOV dword ptr [EBP + 0xfffffcb8],0x10
006576eb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
006576f0  e8eb780200                CALL 0x0067efe0
006576f5  f30f100df0adba00          MOVSS XMM1,dword ptr [0x00baadf0]
006576fd  0f28d0                    MOVAPS XMM2,XMM0
00657700  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
00657708  32c9                      XOR CL,CL
0065770a  e8b1de3b00                CALL 0x00a155c0
0065770f  0f28d0                    MOVAPS XMM2,XMM0
00657712  8d8d58fcffff              LEA ECX,[EBP + 0xfffffc58]
00657718  0f57c9                    XORPS XMM1,XMM1
0065771b  e870873b00                CALL 0x00a0fe90
00657720  8bf0                      MOV ESI,EAX
00657722  e8b9780200                CALL 0x0067efe0
00657727  f30f100d7ca9ba00          MOVSS XMM1,dword ptr [0x00baa97c]
0065772f  0f28d0                    MOVAPS XMM2,XMM0
00657732  f30f100544aeba00          MOVSS XMM0,dword ptr [0x00baae44]
0065773a  32c9                      XOR CL,CL
0065773c  e87fde3b00                CALL 0x00a155c0
00657741  51                        PUSH ECX
00657742  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
00657748  f30f110424                MOVSS dword ptr [ESP],XMM0
0065774d  50                        PUSH EAX
0065774e  8bce                      MOV ECX,ESI
00657750  e88b8b3b00                CALL 0x00a102e0
00657755  e806780900                CALL 0x006eef60
0065775a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657760  50                        PUSH EAX
00657761  6a00                      PUSH 0x0
00657763  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00657769  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
0065776f  50                        PUSH EAX
00657770  8d873c030000              LEA EAX,[EDI + 0x33c]
00657776  50                        PUSH EAX
00657777  6a00                      PUSH 0x0
00657779  6a09                      PUSH 0x9
0065777b  e8a013ddff                CALL 0x00428b20
00657780  6a01                      PUSH 0x1
00657782  8bf0                      MOV ESI,EAX
00657784  6a00                      PUSH 0x0
00657786  68ff000000                PUSH 0xff
0065778b  6aff                      PUSH -0x1
0065778d  8b16                      MOV EDX,dword ptr [ESI]
0065778f  8bce                      MOV ECX,ESI
00657791  68204dc300                PUSH 0xc34d20
00657796  ff523c                    CALL dword ptr [EDX + 0x3c]
00657799  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
0065779f  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
006577a5  25fffffdff                AND EAX,0xfffdffff
006577aa  83e1fd                    AND ECX,0xfffffffd
006577ad  50                        PUSH EAX
006577ae  51                        PUSH ECX
006577af  8bce                      MOV ECX,ESI
006577b1  e88affdeff                CALL 0x00447740
006577b6  ff7734                    PUSH dword ptr [EDI + 0x34]
006577b9  8bce                      MOV ECX,ESI
006577bb  e8f09eddff                CALL 0x004316b0
006577c0  ff7738                    PUSH dword ptr [EDI + 0x38]
006577c3  8bce                      MOV ECX,ESI
006577c5  e8a6f8e5ff                CALL 0x004b7070
006577ca  51                        PUSH ECX
006577cb  8bce                      MOV ECX,ESI
006577cd  c704240000403f            MOV dword ptr [ESP],0x3f400000
006577d4  e8b7d4deff                CALL 0x00444c90
006577d9  e802780200                CALL 0x0067efe0
006577de  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
006577e6  51                        PUSH ECX
006577e7  8bce                      MOV ECX,ESI
006577e9  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
006577f1  f30f110424                MOVSS dword ptr [ESP],XMM0
006577f6  e8a590dfff                CALL 0x004508a0
006577fb  83adb8fcffff01            SUB dword ptr [EBP + 0xfffffcb8],0x1
00657802  0f85e8feffff              JNZ 0x006576f0
00657808  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065780e  33c0                      XOR EAX,EAX
00657810  81e100200000              AND ECX,0x2000
00657816  0bc1                      OR EAX,ECX
00657818  0f8447020000              JZ 0x00657a65
0065781e  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00657822  8db73c030000              LEA ESI,[EDI + 0x33c]
00657828  7525                      JNZ 0x0065784f
0065782a  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00657832  51                        PUSH ECX
00657833  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00657839  c704240000803f            MOV dword ptr [ESP],0x3f800000
00657840  6a00                      PUSH 0x0
00657842  6a02                      PUSH 0x2
00657844  56                        PUSH ESI
00657845  68eb010000                PUSH 0x1eb
0065784a  e8f1f02f00                CALL 0x00956940
0065784f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657855  e826fcdaff                CALL 0x00407480
0065785a  51                        PUSH ECX
0065785b  c7042400000000            MOV dword ptr [ESP],0x0
00657862  8bc8                      MOV ECX,EAX
00657864  56                        PUSH ESI
00657865  e8f6ba1b00                CALL 0x00813360
0065786a  84c0                      TEST AL,AL
0065786c  0f84f3010000              JZ 0x00657a65
00657872  e8e9760900                CALL 0x006eef60
00657877  50                        PUSH EAX
00657878  6a00                      PUSH 0x0
0065787a  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00657880  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00657886  6840b6c700                PUSH 0xc7b640
0065788b  51                        PUSH ECX
0065788c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657892  6a0f                      PUSH 0xf
00657894  68e8030000                PUSH 0x3e8
00657899  e88212ddff                CALL 0x00428b20
0065789e  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
006578a6  83ec20                    SUB ESP,0x20
006578a9  8bf8                      MOV EDI,EAX
006578ab  0f28d8                    MOVAPS XMM3,XMM0
006578ae  0f28d0                    MOVAPS XMM2,XMM0
006578b1  0f28c8                    MOVAPS XMM1,XMM0
006578b4  c744241c9a99193f          MOV dword ptr [ESP + 0x1c],0x3f19999a
006578bc  8b0f                      MOV ECX,dword ptr [EDI]
006578be  c7442418cdcccc3e          MOV dword ptr [ESP + 0x18],0x3ecccccd
006578c6  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
006578ce  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
006578d6  8b713c                    MOV ESI,dword ptr [ECX + 0x3c]
006578d9  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
006578df  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
006578e7  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
006578ef  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
006578f7  c704240000803f            MOV dword ptr [ESP],0x3f800000
006578fe  e84de2ddff                CALL 0x00435b50
00657903  6a01                      PUSH 0x1
00657905  6a00                      PUSH 0x0
00657907  68ff000000                PUSH 0xff
0065790c  6aff                      PUSH -0x1
0065790e  50                        PUSH EAX
0065790f  8bcf                      MOV ECX,EDI
00657911  ffd6                      CALL ESI
00657913  8b07                      MOV EAX,dword ptr [EDI]
00657915  8bcf                      MOV ECX,EDI
00657917  ff500c                    CALL dword ptr [EAX + 0xc]
0065791a  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00657920  8bcf                      MOV ECX,EDI
00657922  6a00                      PUSH 0x0
00657924  6800000020                PUSH 0x20000000
00657929  e802fbdbff                CALL 0x00417430
0065792e  84c0                      TEST AL,AL
00657930  0f858c000000              JNZ 0x006579c2
00657936  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
0065793c  2500000080                AND EAX,0x80000000
00657941  83c800                    OR EAX,0x0
00657944  757c                      JNZ 0x006579c2
00657946  e815760900                CALL 0x006eef60
0065794b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657951  50                        PUSH EAX
00657952  6a00                      PUSH 0x0
00657954  57                        PUSH EDI
00657955  6840b6c700                PUSH 0xc7b640
0065795a  8d873c030000              LEA EAX,[EDI + 0x33c]
00657960  50                        PUSH EAX
00657961  6a0c                      PUSH 0xc
00657963  6a21                      PUSH 0x21
00657965  e8b611ddff                CALL 0x00428b20
0065796a  ffb740030000              PUSH dword ptr [EDI + 0x340]
00657970  8bf0                      MOV ESI,EAX
00657972  ffb73c030000              PUSH dword ptr [EDI + 0x33c]
00657978  8bce                      MOV ECX,ESI
0065797a  e8e1e3ddff                CALL 0x00435d60
0065797f  8bce                      MOV ECX,ESI
00657981  e8eaf9dbff                CALL 0x00417370
00657986  d99d78fcffff              FSTP dword ptr [EBP + 0xfffffc78]
0065798c  e84f760200                CALL 0x0067efe0
00657991  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00657999  51                        PUSH ECX
0065799a  8bce                      MOV ECX,ESI
0065799c  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
006579a4  f30f118594fcffff          MOVSS dword ptr [EBP + 0xfffffc94],XMM0
006579ac  d98594fcffff              FLD dword ptr [EBP + 0xfffffc94]
006579b2  d88d78fcffff              FMUL dword ptr [EBP + 0xfffffc78]
006579b8  d91c24                    FSTP dword ptr [ESP]
006579bb  e860e3ddff                CALL 0x00435d20
006579c0  eb78                      JMP 0x00657a3a
006579c2  e899750900                CALL 0x006eef60
006579c7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006579cd  50                        PUSH EAX
006579ce  6a00                      PUSH 0x0
006579d0  57                        PUSH EDI
006579d1  6840b6c700                PUSH 0xc7b640
006579d6  8d873c030000              LEA EAX,[EDI + 0x33c]
006579dc  50                        PUSH EAX
006579dd  6a0a                      PUSH 0xa
006579df  68e8030000                PUSH 0x3e8
006579e4  e83711ddff                CALL 0x00428b20
006579e9  8bf0                      MOV ESI,EAX
006579eb  6a01                      PUSH 0x1
006579ed  8bce                      MOV ECX,ESI
006579ef  e8bc9cddff                CALL 0x004316b0
006579f4  6a00                      PUSH 0x0
006579f6  8bce                      MOV ECX,ESI
006579f8  e873f6e5ff                CALL 0x004b7070
006579fd  e8de750200                CALL 0x0067efe0
00657a02  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00657a0a  51                        PUSH ECX
00657a0b  8bce                      MOV ECX,ESI
00657a0d  f30f580504a3ba00          ADDSS XMM0,dword ptr [0x00baa304]
00657a15  f30f110424                MOVSS dword ptr [ESP],XMM0
00657a1a  e8b1e4ddff                CALL 0x00435ed0
00657a1f  8b06                      MOV EAX,dword ptr [ESI]
00657a21  51                        PUSH ECX
00657a22  8bce                      MOV ECX,ESI
00657a24  c704240000c040            MOV dword ptr [ESP],0x40c00000
00657a2b  ff5040                    CALL dword ptr [EAX + 0x40]
00657a2e  6896000000                PUSH 0x96
00657a33  8bce                      MOV ECX,ESI
00657a35  e856e4ddff                CALL 0x00435e90
00657a3a  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00657a42  8d873c030000              LEA EAX,[EDI + 0x33c]
00657a48  51                        PUSH ECX
00657a49  8b0d9c16c700              MOV ECX,dword ptr [0x00c7169c]
00657a4f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00657a56  6a00                      PUSH 0x0
00657a58  6a02                      PUSH 0x2
00657a5a  50                        PUSH EAX
00657a5b  68d7010000                PUSH 0x1d7
00657a60  e8dbee2f00                CALL 0x00956940
00657a65  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
00657a6b  33c0                      XOR EAX,EAX
00657a6d  81e180000000              AND ECX,0x80
00657a73  0bc1                      OR EAX,ECX
00657a75  0f84bd010000              JZ 0x00657c38
00657a7b  e8e0740900                CALL 0x006eef60
00657a80  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657a86  8db73c030000              LEA ESI,[EDI + 0x33c]
00657a8c  50                        PUSH EAX
00657a8d  6a00                      PUSH 0x0
00657a8f  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00657a95  6840b6c700                PUSH 0xc7b640
00657a9a  56                        PUSH ESI
00657a9b  6893000000                PUSH 0x93
00657aa0  68e8030000                PUSH 0x3e8
00657aa5  e87610ddff                CALL 0x00428b20
00657aaa  ff7734                    PUSH dword ptr [EDI + 0x34]
00657aad  8bc8                      MOV ECX,EAX
00657aaf  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
00657ab5  e8f69bddff                CALL 0x004316b0
00657aba  ff772c                    PUSH dword ptr [EDI + 0x2c]
00657abd  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
00657ac3  e8a8f5e5ff                CALL 0x004b7070
00657ac8  6a00                      PUSH 0x0
00657aca  6800000020                PUSH 0x20000000
00657acf  8bcf                      MOV ECX,EDI
00657ad1  e85af9dbff                CALL 0x00417430
00657ad6  84c0                      TEST AL,AL
00657ad8  7510                      JNZ 0x00657aea
00657ada  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00657ae0  2500000080                AND EAX,0x80000000
00657ae5  83c800                    OR EAX,0x0
00657ae8  7412                      JZ 0x00657afc
00657aea  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
00657af0  6a00                      PUSH 0x0
00657af2  6800000020                PUSH 0x20000000
00657af7  e8e4f8dbff                CALL 0x004173e0
00657afc  b90a000000                MOV ECX,0xa
00657b01  e80a750200                CALL 0x0067f010
00657b06  85c0                      TEST EAX,EAX
00657b08  0f852a010000              JNZ 0x00657c38
00657b0e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657b14  e867f9daff                CALL 0x00407480
00657b19  51                        PUSH ECX
00657b1a  c7042400000000            MOV dword ptr [ESP],0x0
00657b21  8bc8                      MOV ECX,EAX
00657b23  56                        PUSH ESI
00657b24  e837b81b00                CALL 0x00813360
00657b29  84c0                      TEST AL,AL
00657b2b  0f8407010000              JZ 0x00657c38
00657b31  6a00                      PUSH 0x0
00657b33  6800000020                PUSH 0x20000000
00657b38  8bcf                      MOV ECX,EDI
00657b3a  e8f1f8dbff                CALL 0x00417430
00657b3f  84c0                      TEST AL,AL
00657b41  0f8586000000              JNZ 0x00657bcd
00657b47  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00657b4d  2500000080                AND EAX,0x80000000
00657b52  83c800                    OR EAX,0x0
00657b55  7576                      JNZ 0x00657bcd
00657b57  e804740900                CALL 0x006eef60
00657b5c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657b62  50                        PUSH EAX
00657b63  6a00                      PUSH 0x0
00657b65  57                        PUSH EDI
00657b66  6840b6c700                PUSH 0xc7b640
00657b6b  56                        PUSH ESI
00657b6c  6a0a                      PUSH 0xa
00657b6e  6a21                      PUSH 0x21
00657b70  e8ab0fddff                CALL 0x00428b20
00657b75  ffb740030000              PUSH dword ptr [EDI + 0x340]
00657b7b  8bf0                      MOV ESI,EAX
00657b7d  ffb73c030000              PUSH dword ptr [EDI + 0x33c]
00657b83  8bce                      MOV ECX,ESI
00657b85  e8d6e1ddff                CALL 0x00435d60
00657b8a  8bce                      MOV ECX,ESI
00657b8c  e8dff7dbff                CALL 0x00417370
00657b91  d99d78fcffff              FSTP dword ptr [EBP + 0xfffffc78]
00657b97  e844740200                CALL 0x0067efe0
00657b9c  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00657ba4  51                        PUSH ECX
00657ba5  8bce                      MOV ECX,ESI
00657ba7  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
00657baf  f30f118594fcffff          MOVSS dword ptr [EBP + 0xfffffc94],XMM0
00657bb7  d98594fcffff              FLD dword ptr [EBP + 0xfffffc94]
00657bbd  d88d78fcffff              FMUL dword ptr [EBP + 0xfffffc78]
00657bc3  d91c24                    FSTP dword ptr [ESP]
00657bc6  e855e1ddff                CALL 0x00435d20
00657bcb  eb6b                      JMP 0x00657c38
00657bcd  e88e730900                CALL 0x006eef60
00657bd2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657bd8  50                        PUSH EAX
00657bd9  6a00                      PUSH 0x0
00657bdb  57                        PUSH EDI
00657bdc  6840b6c700                PUSH 0xc7b640
00657be1  56                        PUSH ESI
00657be2  6a34                      PUSH 0x34
00657be4  68e8030000                PUSH 0x3e8
00657be9  e8320fddff                CALL 0x00428b20
00657bee  8bf0                      MOV ESI,EAX
00657bf0  e8eb730200                CALL 0x0067efe0
00657bf5  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00657bfd  51                        PUSH ECX
00657bfe  8bce                      MOV ECX,ESI
00657c00  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
00657c08  f30f110424                MOVSS dword ptr [ESP],XMM0
00657c0d  e8bee2ddff                CALL 0x00435ed0
00657c12  8b16                      MOV EDX,dword ptr [ESI]
00657c14  51                        PUSH ECX
00657c15  8bce                      MOV ECX,ESI
00657c17  c7042400004041            MOV dword ptr [ESP],0x41400000
00657c1e  ff5240                    CALL dword ptr [EDX + 0x40]
00657c21  b978000000                MOV ECX,0x78
00657c26  e8e5730200                CALL 0x0067f010
00657c2b  052c010000                ADD EAX,0x12c
00657c30  8bce                      MOV ECX,ESI
00657c32  50                        PUSH EAX
00657c33  e858e2ddff                CALL 0x00435e90
00657c38  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
00657c3e  33c0                      XOR EAX,EAX
00657c40  8bb738040000              MOV ESI,dword ptr [EDI + 0x438]
00657c46  81e100400000              AND ECX,0x4000
00657c4c  0bc1                      OR EAX,ECX
00657c4e  0f84a4010000              JZ 0x00657df8
00657c54  83bfc403000000            CMP dword ptr [EDI + 0x3c4],0x0
00657c5b  0f8589000000              JNZ 0x00657cea
00657c61  8b97c8030000              MOV EDX,dword ptr [EDI + 0x3c8]
00657c67  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
00657c6d  89851cfcffff              MOV dword ptr [EBP + 0xfffffc1c],EAX
00657c73  85d2                      TEST EDX,EDX
00657c75  742a                      JZ 0x00657ca1
00657c77  6a00                      PUSH 0x0
00657c79  6800010000                PUSH 0x100
00657c7e  8bca                      MOV ECX,EDX
00657c80  e8abf7dbff                CALL 0x00417430
00657c85  8b97c8030000              MOV EDX,dword ptr [EDI + 0x3c8]
00657c8b  84c0                      TEST AL,AL
00657c8d  753b                      JNZ 0x00657cca
00657c8f  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
00657c95  8bb738040000              MOV ESI,dword ptr [EDI + 0x438]
00657c9b  89851cfcffff              MOV dword ptr [EBP + 0xfffffc1c],EAX
00657ca1  81e600000080              AND ESI,0x80000000
00657ca7  8bc2                      MOV EAX,EDX
00657ca9  83ce00                    OR ESI,0x0
00657cac  751c                      JNZ 0x00657cca
00657cae  f30f100d1cacba00          MOVSS XMM1,dword ptr [0x00baac1c]
00657cb6  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00657cbc  56                        PUSH ESI
00657cbd  6a01                      PUSH 0x1
00657cbf  56                        PUSH ESI
00657cc0  e8dbec0a00                CALL 0x007069a0
00657cc5  83c40c                    ADD ESP,0xc
00657cc8  eb18                      JMP 0x00657ce2
00657cca  f30f100d1cacba00          MOVSS XMM1,dword ptr [0x00baac1c]
00657cd2  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00657cd8  6a00                      PUSH 0x0
00657cda  e891f60a00                CALL 0x00707370
00657cdf  83c404                    ADD ESP,0x4
00657ce2  50                        PUSH EAX
00657ce3  8bcf                      MOV ECX,EDI
00657ce5  e836160500                CALL 0x006a9320
00657cea  e871720900                CALL 0x006eef60
00657cef  50                        PUSH EAX
00657cf0  6a01                      PUSH 0x1
00657cf2  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
00657cf8  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00657cfe  6840b6c700                PUSH 0xc7b640
00657d03  51                        PUSH ECX
00657d04  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657d0a  6a7e                      PUSH 0x7e
00657d0c  68e8030000                PUSH 0x3e8
00657d11  e80a0eddff                CALL 0x00428b20
00657d16  8bc8                      MOV ECX,EAX
00657d18  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
00657d1e  e8ade0ddff                CALL 0x00435dd0
00657d23  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00657d2b  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00657d31  83ec20                    SUB ESP,0x20
00657d34  0f28d8                    MOVAPS XMM3,XMM0
00657d37  0f28d0                    MOVAPS XMM2,XMM0
00657d3a  0f28c8                    MOVAPS XMM1,XMM0
00657d3d  8bf0                      MOV ESI,EAX
00657d3f  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
00657d47  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
00657d4f  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
00657d57  c74424100000803f          MOV dword ptr [ESP + 0x10],0x3f800000
00657d5f  c744240c00002040          MOV dword ptr [ESP + 0xc],0x40200000
00657d67  c744240800002040          MOV dword ptr [ESP + 0x8],0x40200000
00657d6f  c744240400002040          MOV dword ptr [ESP + 0x4],0x40200000
00657d77  c704240000803f            MOV dword ptr [ESP],0x3f800000
00657d7e  e8cdddddff                CALL 0x00435b50
00657d83  50                        PUSH EAX
00657d84  8bce                      MOV ECX,ESI
00657d86  e845f6daff                CALL 0x004073d0
00657d8b  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
00657d91  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00657d97  50                        PUSH EAX
00657d98  85c9                      TEST ECX,ECX
00657d9a  742a                      JZ 0x00657dc6
00657d9c  e8eff4dbff                CALL 0x00417290
00657da1  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00657da7  51                        PUSH ECX
00657da8  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00657dae  51                        PUSH ECX
00657daf  8bc8                      MOV ECX,EAX
00657db1  e8ca863b00                CALL 0x00a10480
00657db6  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
00657dbc  51                        PUSH ECX
00657dbd  8bc8                      MOV ECX,EAX
00657dbf  e86c823b00                CALL 0x00a10030
00657dc4  eb19                      JMP 0x00657ddf
00657dc6  8d8f60030000              LEA ECX,[EDI + 0x360]
00657dcc  e85f823b00                CALL 0x00a10030
00657dd1  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00657dd7  51                        PUSH ECX
00657dd8  8bc8                      MOV ECX,EAX
00657dda  e881883b00                CALL 0x00a10660
00657ddf  ff7004                    PUSH dword ptr [EAX + 0x4]
00657de2  8bb5b8fcffff              MOV ESI,dword ptr [EBP + 0xfffffcb8]
00657de8  8bce                      MOV ECX,ESI
00657dea  ff30                      PUSH dword ptr [EAX]
00657dec  e86fdfddff                CALL 0x00435d60
00657df1  8b06                      MOV EAX,dword ptr [ESI]
00657df3  8bce                      MOV ECX,ESI
00657df5  ff500c                    CALL dword ptr [EAX + 0xc]
00657df8  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
00657dfe  33c0                      XOR EAX,EAX
00657e00  81e100008000              AND ECX,0x800000
00657e06  0bc1                      OR EAX,ECX
00657e08  0f8446010000              JZ 0x00657f54
00657e0e  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00657e14  50                        PUSH EAX
00657e15  8d8f60030000              LEA ECX,[EDI + 0x360]
00657e1b  e810823b00                CALL 0x00a10030
00657e20  8d8d18fcffff              LEA ECX,[EBP + 0xfffffc18]
00657e26  51                        PUSH ECX
00657e27  8bc8                      MOV ECX,EAX
00657e29  e832883b00                CALL 0x00a10660
00657e2e  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00657e36  51                        PUSH ECX
00657e37  c704240000803f            MOV dword ptr [ESP],0x3f800000
00657e3e  8bcf                      MOV ECX,EDI
00657e40  6a00                      PUSH 0x0
00657e42  6a02                      PUSH 0x2
00657e44  6a1e                      PUSH 0x1e
00657e46  e825e60500                CALL 0x006b6470
00657e4b  e810710900                CALL 0x006eef60
00657e50  50                        PUSH EAX
00657e51  6a03                      PUSH 0x3
00657e53  6a00                      PUSH 0x0
00657e55  6840b6c700                PUSH 0xc7b640
00657e5a  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00657e60  51                        PUSH ECX
00657e61  6a02                      PUSH 0x2
00657e63  898d78fcffff              MOV dword ptr [EBP + 0xfffffc78],ECX
00657e69  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657e6f  68e8030000                PUSH 0x3e8
00657e74  e8a70cddff                CALL 0x00428b20
00657e79  8bc8                      MOV ECX,EAX
00657e7b  8b10                      MOV EDX,dword ptr [EAX]
00657e7d  ff520c                    CALL dword ptr [EDX + 0xc]
00657e80  c785b8fcfffffeffffff      MOV dword ptr [EBP + 0xfffffcb8],0xfffffffe
00657e8a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00657e90  e8cb700900                CALL 0x006eef60
00657e95  660f6e85b8fcffff          MOVD XMM0,dword ptr [EBP + 0xfffffcb8]
00657e9d  8bf0                      MOV ESI,EAX
00657e9f  8bbfc8030000              MOV EDI,dword ptr [EDI + 0x3c8]
00657ea5  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00657eab  0f5bc0                    CVTDQ2PS XMM0,XMM0
00657eae  51                        PUSH ECX
00657eaf  8d8d18fcffff              LEA ECX,[EBP + 0xfffffc18]
00657eb5  f30f59059ca8ba00          MULSS XMM0,dword ptr [0x00baa89c]
00657ebd  f30f110424                MOVSS dword ptr [ESP],XMM0
00657ec2  50                        PUSH EAX
00657ec3  e818843b00                CALL 0x00a102e0
00657ec8  8d8d94fcffff              LEA ECX,[EBP + 0xfffffc94]
00657ece  c78594fcffff00002041      MOV dword ptr [EBP + 0xfffffc94],0x41200000
00657ed8  51                        PUSH ECX
00657ed9  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00657edf  51                        PUSH ECX
00657ee0  8bc8                      MOV ECX,EAX
00657ee2  e8f9853b00                CALL 0x00a104e0
00657ee7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657eed  56                        PUSH ESI
00657eee  6a00                      PUSH 0x0
00657ef0  57                        PUSH EDI
00657ef1  50                        PUSH EAX
00657ef2  ffb578fcffff              PUSH dword ptr [EBP + 0xfffffc78]
00657ef8  6a00                      PUSH 0x0
00657efa  6a09                      PUSH 0x9
00657efc  e81f0cddff                CALL 0x00428b20
00657f01  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00657f07  8bf0                      MOV ESI,EAX
00657f09  57                        PUSH EDI
00657f0a  8bce                      MOV ECX,ESI
00657f0c  e80f140500                CALL 0x006a9320
00657f11  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
00657f17  8bce                      MOV ECX,ESI
00657f19  e882130500                CALL 0x006a92a0
00657f1e  8b16                      MOV EDX,dword ptr [ESI]
00657f20  8d87b8010000              LEA EAX,[EDI + 0x1b8]
00657f26  6a01                      PUSH 0x1
00657f28  6a00                      PUSH 0x0
00657f2a  68ff000000                PUSH 0xff
00657f2f  6aff                      PUSH -0x1
00657f31  50                        PUSH EAX
00657f32  8bce                      MOV ECX,ESI
00657f34  ff523c                    CALL dword ptr [EDX + 0x3c]
00657f37  8b06                      MOV EAX,dword ptr [ESI]
00657f39  8bce                      MOV ECX,ESI
00657f3b  ff500c                    CALL dword ptr [EAX + 0xc]
00657f3e  8b85b8fcffff              MOV EAX,dword ptr [EBP + 0xfffffcb8]
00657f44  40                        INC EAX
00657f45  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
00657f4b  83f802                    CMP EAX,0x2
00657f4e  0f8e3cffffff              JLE 0x00657e90
00657f54  837f2c0f                  CMP dword ptr [EDI + 0x2c],0xf
00657f58  0f85ad000000              JNZ 0x0065800b
00657f5e  e8fd6f0900                CALL 0x006eef60
00657f63  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00657f69  81c73c030000              ADD EDI,0x33c
00657f6f  50                        PUSH EAX
00657f70  6a03                      PUSH 0x3
00657f72  6a00                      PUSH 0x0
00657f74  6840b6c700                PUSH 0xc7b640
00657f79  57                        PUSH EDI
00657f7a  6a02                      PUSH 0x2
00657f7c  68e8030000                PUSH 0x3e8
00657f81  e89a0bddff                CALL 0x00428b20
00657f86  6a01                      PUSH 0x1
00657f88  8bf0                      MOV ESI,EAX
00657f8a  6a00                      PUSH 0x0
00657f8c  68ff000000                PUSH 0xff
00657f91  6aff                      PUSH -0x1
00657f93  8b16                      MOV EDX,dword ptr [ESI]
00657f95  8bce                      MOV ECX,ESI
00657f97  68804ec300                PUSH 0xc34e80
00657f9c  ff523c                    CALL dword ptr [EDX + 0x3c]
00657f9f  8b06                      MOV EAX,dword ptr [ESI]
00657fa1  8bce                      MOV ECX,ESI
00657fa3  ff500c                    CALL dword ptr [EAX + 0xc]
00657fa6  8bb5c0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcc0]
00657fac  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00657fb4  51                        PUSH ECX
00657fb5  c704240000803f            MOV dword ptr [ESP],0x3f800000
00657fbc  8bce                      MOV ECX,ESI
00657fbe  6a00                      PUSH 0x0
00657fc0  6a02                      PUSH 0x2
00657fc2  6a1e                      PUSH 0x1e
00657fc4  e8a7e40500                CALL 0x006b6470
00657fc9  6a00                      PUSH 0x0
00657fcb  6a0f                      PUSH 0xf
00657fcd  8d8d94fcffff              LEA ECX,[EBP + 0xfffffc94]
00657fd3  e878fbefff                CALL 0x00557b50
00657fd8  f30f101d04a9ba00          MOVSS XMM3,dword ptr [0x00baa904]
00657fe0  8d8594fcffff              LEA EAX,[EBP + 0xfffffc94]
00657fe6  51                        PUSH ECX
00657fe7  c704240000803f            MOV dword ptr [ESP],0x3f800000
00657fee  ba08000000                MOV EDX,0x8
00657ff3  6840b6c700                PUSH 0xc7b640
00657ff8  68804ec300                PUSH 0xc34e80
00657ffd  56                        PUSH ESI
00657ffe  50                        PUSH EAX
00657fff  8bcf                      MOV ECX,EDI
00658001  e8aab10500                CALL 0x006b31b0
00658006  83c414                    ADD ESP,0x14
00658009  8bfe                      MOV EDI,ESI
0065800b  8b859cfcffff              MOV EAX,dword ptr [EBP + 0xfffffc9c]
00658011  85c0                      TEST EAX,EAX
00658013  0f8498000000              JZ 0x006580b1
00658019  8b00                      MOV EAX,dword ptr [EAX]
0065801b  8d4f48                    LEA ECX,[EDI + 0x48]
0065801e  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00658021  e8eaf3daff                CALL 0x00407410
00658026  8b8d9cfcffff              MOV ECX,dword ptr [EBP + 0xfffffc9c]
0065802c  6a01                      PUSH 0x1
0065802e  6a00                      PUSH 0x0
00658030  68ff000000                PUSH 0xff
00658035  6aff                      PUSH -0x1
00658037  50                        PUSH EAX
00658038  ffd6                      CALL ESI
0065803a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0065803d  83f803                    CMP EAX,0x3
00658040  752f                      JNZ 0x00658071
00658042  8b859cfcffff              MOV EAX,dword ptr [EBP + 0xfffffc9c]
00658048  0f57db                    XORPS XMM3,XMM3
0065804b  6a4b                      PUSH 0x4b
0065804d  6a5e                      PUSH 0x5e
0065804f  6a7c                      PUSH 0x7c
00658051  8b00                      MOV EAX,dword ptr [EAX]
00658053  0f57d2                    XORPS XMM2,XMM2
00658056  51                        PUSH ECX
00658057  0f57c9                    XORPS XMM1,XMM1
0065805a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00658061  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00658067  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
0065806a  e861daddff                CALL 0x00435ad0
0065806f  eb2c                      JMP 0x0065809d
00658071  83f80c                    CMP EAX,0xc
00658074  753b                      JNZ 0x006580b1
00658076  8b859cfcffff              MOV EAX,dword ptr [EBP + 0xfffffc9c]
0065807c  0f57db                    XORPS XMM3,XMM3
0065807f  51                        PUSH ECX
00658080  0f57d2                    XORPS XMM2,XMM2
00658083  c704240000803f            MOV dword ptr [ESP],0x3f800000
0065808a  0f57c9                    XORPS XMM1,XMM1
0065808d  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00658093  8b00                      MOV EAX,dword ptr [EAX]
00658095  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00658098  e853b8dcff                CALL 0x004238f0
0065809d  8b8d9cfcffff              MOV ECX,dword ptr [EBP + 0xfffffc9c]
006580a3  6a01                      PUSH 0x1
006580a5  6a00                      PUSH 0x0
006580a7  68ff000000                PUSH 0xff
006580ac  6aff                      PUSH -0x1
006580ae  50                        PUSH EAX
006580af  ffd6                      CALL ESI
006580b1  8b07                      MOV EAX,dword ptr [EDI]
006580b3  8bcf                      MOV ECX,EDI
006580b5  ff5028                    CALL dword ptr [EAX + 0x28]
006580b8  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
006580bc  0f85222c0000              JNZ 0x0065ace4
006580c2  817f34b7030000            CMP dword ptr [EDI + 0x34],0x3b7
006580c9  0f85152c0000              JNZ 0x0065ace4
006580cf  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
006580d7  51                        PUSH ECX
006580d8  c704240000803f            MOV dword ptr [ESP],0x3f800000
006580df  8bcf                      MOV ECX,EDI
006580e1  6a00                      PUSH 0x0
006580e3  6a02                      PUSH 0x2
006580e5  68bc020000                PUSH 0x2bc
006580ea  e881e30500                CALL 0x006b6470
006580ef  e9f02b0000                JMP 0x0065ace4
006580f4  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
006580fa  8b973c040000              MOV EDX,dword ptr [EDI + 0x43c]
00658100  8bca                      MOV ECX,EDX
00658102  898508fcffff              MOV dword ptr [EBP + 0xfffffc08],EAX
00658108  83e104                    AND ECX,0x4
0065810b  33c0                      XOR EAX,EAX
0065810d  0bc1                      OR EAX,ECX
0065810f  0f84ae020000              JZ 0x006583c3
00658115  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0065811c  0f845c020000              JZ 0x0065837e
00658122  83e201                    AND EDX,0x1
00658125  33c0                      XOR EAX,EAX
00658127  0bc2                      OR EAX,EDX
00658129  7432                      JZ 0x0065815d
0065812b  8bcf                      MOV ECX,EDI
0065812d  e8de1a0500                CALL 0x006a9c10
00658132  85c0                      TEST EAX,EAX
00658134  7e27                      JLE 0x0065815d
00658136  8b875c040000              MOV EAX,dword ptr [EDI + 0x45c]
0065813c  85c0                      TEST EAX,EAX
0065813e  0f8e3a020000              JLE 0x0065837e
00658144  660f6ec8                  MOVD XMM1,EAX
00658148  0f57d2                    XORPS XMM2,XMM2
0065814b  0f5bc9                    CVTDQ2PS XMM1,XMM1
0065814e  8bcf                      MOV ECX,EDI
00658150  e80b460500                CALL 0x006ac760
00658155  85c0                      TEST EAX,EAX
00658157  0f8521020000              JNZ 0x0065837e
0065815d  8d8760030000              LEA EAX,[EDI + 0x360]
00658163  50                        PUSH EAX
00658164  8985b8fcffff              MOV dword ptr [EBP + 0xfffffcb8],EAX
0065816a  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00658170  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00658176  50                        PUSH EAX
00658177  e8a4823b00                CALL 0x00a10420
0065817c  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00658182  8bf0                      MOV ESI,EAX
00658184  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
0065818a  50                        PUSH EAX
0065818b  e820f1dbff                CALL 0x004172b0
00658190  50                        PUSH EAX
00658191  8d8570fcffff              LEA EAX,[EBP + 0xfffffc70]
00658197  8bce                      MOV ECX,ESI
00658199  50                        PUSH EAX
0065819a  e8e1823b00                CALL 0x00a10480
0065819f  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
006581a5  e8f67c3b00                CALL 0x00a0fea0
006581aa  d99db0fcffff              FSTP dword ptr [EBP + 0xfffffcb0]
006581b0  f30f1085b0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcb0]
006581b8  0f2e05e49fba00            UCOMISS XMM0,dword ptr [0x00ba9fe4]
006581bf  9f                        LAHF
006581c0  f6c444                    TEST AH,0x44
006581c3  0f8bef000000              JNP 0x006582b8
006581c9  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
006581cf  50                        PUSH EAX
006581d0  8d8510fcffff              LEA EAX,[EBP + 0xfffffc10]
006581d6  50                        PUSH EAX
006581d7  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
006581dd  e8be833b00                CALL 0x00a105a0
006581e2  8d8d10fcffff              LEA ECX,[EBP + 0xfffffc10]
006581e8  e8a3813b00                CALL 0x00a10390
006581ed  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
006581f3  d99f28040000              FSTP dword ptr [EDI + 0x428]
006581f9  81c734030000              ADD EDI,0x334
006581ff  57                        PUSH EDI
00658200  e8ab823b00                CALL 0x00a104b0
00658205  f30f100524a9ba00          MOVSS XMM0,dword ptr [0x00baa924]
0065820d  8d8594fcffff              LEA EAX,[EBP + 0xfffffc94]
00658213  f30f5c85b0fcffff          SUBSS XMM0,dword ptr [EBP + 0xfffffcb0]
0065821b  6a00                      PUSH 0x0
0065821d  50                        PUSH EAX
0065821e  8d8560fcffff              LEA EAX,[EBP + 0xfffffc60]
00658224  50                        PUSH EAX
00658225  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0065822d  8d8d10fcffff              LEA ECX,[EBP + 0xfffffc10]
00658233  f30f118594fcffff          MOVSS dword ptr [EBP + 0xfffffc94],XMM0
0065823b  e8a0823b00                CALL 0x00a104e0
00658240  f30f101df8a1ba00          MOVSS XMM3,dword ptr [0x00baa1f8]
00658248  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
0065824e  8b95b8fcffff              MOV EDX,dword ptr [EBP + 0xfffffcb8]
00658254  50                        PUSH EAX
00658255  e8667f3b00                CALL 0x00a101c0
0065825a  83c408                    ADD ESP,0x8
0065825d  8bf0                      MOV ESI,EAX
0065825f  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
00658265  50                        PUSH EAX
00658266  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
0065826c  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
00658272  e859f0dbff                CALL 0x004172d0
00658277  50                        PUSH EAX
00658278  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
0065827e  8bce                      MOV ECX,ESI
00658280  50                        PUSH EAX
00658281  e89a813b00                CALL 0x00a10420
00658286  8b8db8fcffff              MOV ECX,dword ptr [EBP + 0xfffffcb8]
0065828c  50                        PUSH EAX
0065828d  e81e511800                CALL 0x007dd3b0
00658292  8d8518fcffff              LEA EAX,[EBP + 0xfffffc18]
00658298  50                        PUSH EAX
00658299  8b85c0fcffff              MOV EAX,dword ptr [EBP + 0xfffffcc0]
0065829f  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
006582a5  e826f0dbff                CALL 0x004172d0
006582aa  50                        PUSH EAX
006582ab  8bcf                      MOV ECX,EDI
006582ad  e8fe501800                CALL 0x007dd3b0
006582b2  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
006582b8  f30f101580a2ba00          MOVSS XMM2,dword ptr [0x00baa280]
006582c0  32c9                      XOR CL,CL
006582c2  f30f100df4adba00          MOVSS XMM1,dword ptr [0x00baadf4]
006582ca  f30f108710040000          MOVSS XMM0,dword ptr [EDI + 0x410]
006582d2  e8e9d23b00                CALL 0x00a155c0
006582d7  8bcf                      MOV ECX,EDI
006582d9  f30f118710040000          MOVSS dword ptr [EDI + 0x410],XMM0
006582e1  e81a320000                CALL 0x0065b500
006582e6  6a00                      PUSH 0x0
006582e8  6a08                      PUSH 0x8
006582ea  8bcf                      MOV ECX,EDI
006582ec  e81f440500                CALL 0x006ac710
006582f1  84c0                      TEST AL,AL
006582f3  0f84df290000              JZ 0x0065acd8
006582f9  8b07                      MOV EAX,dword ptr [EDI]
006582fb  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00658301  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00658309  83ec0c                    SUB ESP,0xc
0065830c  0f28d8                    MOVAPS XMM3,XMM0
0065830f  0f28d0                    MOVAPS XMM2,XMM0
00658312  0f28c8                    MOVAPS XMM1,XMM0
00658315  8b783c                    MOV EDI,dword ptr [EAX + 0x3c]
00658318  c74424080000003f          MOV dword ptr [ESP + 0x8],0x3f000000
00658320  c74424046666e63e          MOV dword ptr [ESP + 0x4],0x3ee66666
00658328  c704243333b33e            MOV dword ptr [ESP],0x3eb33333
0065832f  e89c4cddff                CALL 0x0042cfd0
00658334  8b8dc0fcffff              MOV ECX,dword ptr [EBP + 0xfffffcc0]
0065833a  83ec2c                    SUB ESP,0x2c
0065833d  81c1b8010000              ADD ECX,0x1b8
00658343  8bd4                      MOV EDX,ESP
00658345  8bf0                      MOV ESI,EAX
00658347  51                        PUSH ECX
00658348  8bca                      MOV ECX,EDX
0065834a  e871eedaff                CALL 0x004071c0
0065834f  8bd6                      MOV EDX,ESI
00658351  8d8d84feffff              LEA ECX,[EBP + 0xfffffe84]
00658357  e884efdaff                CALL 0x004072e0
0065835c  8b8dc0fcffff              MOV ECX,dword ptr [EBP + 0xfffffcc0]
00658362  83c42c                    ADD ESP,0x2c
00658365  6a01                      PUSH 0x1
00658367  6a01                      PUSH 0x1
00658369  68ff000000                PUSH 0xff
0065836e  6a04                      PUSH 0x4
00658370  50                        PUSH EAX
00658371  ffd7                      CALL EDI
00658373  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00658379  e95a290000                JMP 0x0065acd8
0065837e  f30f108728040000          MOVSS XMM0,dword ptr [EDI + 0x428]
00658386  8d8590faffff              LEA EAX,[EBP + 0xfffffa90]
0065838c  51                        PUSH ECX
0065838d  f30f110424                MOVSS dword ptr [ESP],XMM0
00658392  50                        PUSH EAX
00658393  e8b87f3b00                CALL 0x00a10350
00658398  50                        PUSH EAX
00658399  8d9758040000              LEA EDX,[EDI + 0x458]
0065839f  8d8d98faffff              LEA ECX,[EBP + 0xfffffa98]
006583a5  e826eedbff                CALL 0x004171d0
006583aa  83c40c                    ADD ESP,0xc
006583ad  8d8f60030000              LEA ECX,[EDI + 0x360]
006583b3  50                        PUSH EAX
006583b4  e8f74f1800                CALL 0x007dd3b0
006583b9  c787280400008fc2753c      MOV dword ptr [EDI + 0x428],0x3c75c28f
006583c3  8b8770040000              MOV EAX,dword ptr [EDI + 0x470]
006583c9  85c0                      TEST EAX,EAX
006583cb  7408                      JZ 0x006583d5
006583cd  6a00                      PUSH 0x0
006583cf  57                        PUSH EDI
006583d0  ffd0                      CALL EAX
006583d2  83c408                    ADD ESP,0x8
006583d5  8bb73c040000              MOV ESI,dword ptr [EDI + 0x43c]
006583db  33c0                      XOR EAX,EAX
006583dd  8b9738040000              MOV EDX,dword ptr [EDI + 0x438]
006583e3  8bce                      MOV ECX,ESI
006583e5  81e100000100              AND ECX,0x10000
006583eb  0bc1                      OR EAX,ECX
006583ed  0f8451010000              JZ 0x00658544
006583f3  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
006583f9  85c9                      TEST ECX,ECX
006583fb  0f8599000000              JNZ 0x0065849a
00658401  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
00658407  89b56cfcffff              MOV dword ptr [EBP + 0xfffffc6c],ESI
0065840d  85c9                      TEST ECX,ECX
0065840f  7422                      JZ 0x00658433
00658411  6a00                      PUSH 0x0
00658413  6800010000                PUSH 0x100
00658418  e813f0dbff                CALL 0x00417430
0065841d  84c0                      TEST AL,AL
0065841f  7541                      JNZ 0x00658462
00658421  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
00658427  8b9738040000              MOV EDX,dword ptr [EDI + 0x438]
0065842d  89856cfcffff              MOV dword ptr [EBP + 0xfffffc6c],EAX
00658433  81e200000080              AND EDX,0x80000000
00658439  83ca00                    OR EDX,0x0
0065843c  7524                      JNZ 0x00658462
0065843e  f30f100d1cacba00          MOVSS XMM1,dword ptr [0x00baac1c]
00658446  8db73c030000              LEA ESI,[EDI + 0x33c]
0065844c  52                        PUSH EDX
0065844d  6a01                      PUSH 0x1
0065844f  52                        PUSH EDX
00658450  8b97c8030000              MOV EDX,dword ptr [EDI + 0x3c8]
00658456  8bce                      MOV ECX,ESI
00658458  e843e50a00                CALL 0x007069a0
0065845d  83c40c                    ADD ESP,0xc
00658460  eb20                      JMP 0x00658482
00658462  8b97c8030000              MOV EDX,dword ptr [EDI + 0x3c8]
00658468  8db73c030000              LEA ESI,[EDI + 0x33c]
0065846e  f30f100d1cacba00          MOVSS XMM1,dword ptr [0x00baac1c]
00658476  8bce                      MOV ECX,ESI
00658478  6a00                      PUSH 0x0
0065847a  e8f1ee0a00                CALL 0x00707370
0065847f  83c404                    ADD ESP,0x4
00658482  50                        PUSH EAX
00658483  8bcf                      MOV ECX,EDI
00658485  e8960e0500                CALL 0x006a9320
0065848a  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
00658490  85c9                      TEST ECX,ECX
00658492  0f846a030000              JZ 0x00658802
00658498  eb06                      JMP 0x006584a0
0065849a  8db73c030000              LEA ESI,[EDI + 0x33c]
006584a0  8d85a0faffff              LEA EAX,[EBP + 0xfffffaa0]
006584a6  50                        PUSH EAX
006584a7  e8e4eddbff                CALL 0x00417290
006584ac  56                        PUSH ESI
006584ad  8d8df8faffff              LEA ECX,[EBP + 0xfffffaf8]
006584b3  51                        PUSH ECX
006584b4  8bc8                      MOV ECX,EAX
006584b6  e8c57f3b00                CALL 0x00a10480
006584bb  8d8d94fcffff              LEA ECX,[EBP + 0xfffffc94]
006584c1  c78594fcffffcdcccc3d      MOV dword ptr [EBP + 0xfffffc94],0x3dcccccd
006584cb  51                        PUSH ECX
006584cc  8d8d00fbffff              LEA ECX,[EBP + 0xfffffb00]
006584d2  51                        PUSH ECX
006584d3  8bc8                      MOV ECX,EAX
006584d5  e806803b00                CALL 0x00a104e0
006584da  50                        PUSH EAX
006584db  8d8528fbffff              LEA EAX,[EBP + 0xfffffb28]
006584e1  50                        PUSH EAX
006584e2  8d8f60030000              LEA ECX,[EDI + 0x360]
006584e8  e8337f3b00                CALL 0x00a10420
006584ed  8d8f60030000              LEA ECX,[EDI + 0x360]
006584f3  8bf0                      MOV ESI,EAX
006584f5  e8a6793b00                CALL 0x00a0fea0
006584fa  8d9578fcffff              LEA EDX,[EBP + 0xfffffc78]
00658500  c78554fcffff6f12833a      MOV dword ptr [EBP + 0xfffffc54],0x3a83126f
0065850a  8d8d54fcffff              LEA ECX,[EBP + 0xfffffc54]
00658510  d99d78fcffff              FSTP dword ptr [EBP + 0xfffffc78]
00658516  e85546dcff                CALL 0x0041cb70
0065851b  51                        PUSH ECX
0065851c  8bce                      MOV ECX,ESI
0065851e  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00658522  8d856cfbffff              LEA EAX,[EBP + 0xfffffb6c]
00658528  f30f110424                MOVSS dword ptr [ESP],XMM0
0065852d  50                        PUSH EAX
0065852e  e8cd7b3b00                CALL 0x00a10100
00658533  50                        PUSH EAX
00658534  8d8f60030000              LEA ECX,[EDI + 0x360]
0065853a  e8714e1800                CALL 0x007dd3b0
0065853f  e9be020000                JMP 0x00658802
00658544  83e201                    AND EDX,0x1
00658547  83ca00                    OR EDX,0x0
0065854a  0f84b2020000              JZ 0x00658802
00658550  6a00                      PUSH 0x0
00658552  6a03                      PUSH 0x3
00658554  8bcf                      MOV ECX,EDI
00658556  e8b5410500                CALL 0x006ac710
0065855b  84c0                      TEST AL,AL
0065855d  7409                      JZ 0x00658568
0065855f  6a00                      PUSH 0x0
00658561  8bcf                      MOV ECX,EDI
00658563  e8b80d0500                CALL 0x006a9320
00658568  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
0065856e  85c9                      TEST ECX,ECX
00658570  0f8586000000              JNZ 0x006585fc
00658576  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
0065857c  85c9                      TEST ECX,ECX
0065857e  7410                      JZ 0x00658590
00658580  6a00                      PUSH 0x0
00658582  6800010000                PUSH 0x100
00658587  e8a4eedbff                CALL 0x00417430
0065858c  84c0                      TEST AL,AL
0065858e  7534                      JNZ 0x006585c4
00658590  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00658596  2500000080                AND EAX,0x80000000
0065859b  83c800                    OR EAX,0x0
0065859e  7524                      JNZ 0x006585c4
006585a0  8b97c8030000              MOV EDX,dword ptr [EDI + 0x3c8]
006585a6  8db73c030000              LEA ESI,[EDI + 0x33c]
006585ac  f30f100d7cabba00          MOVSS XMM1,dword ptr [0x00baab7c]
006585b4  8bce                      MOV ECX,ESI
006585b6  50                        PUSH EAX
006585b7  6a01                      PUSH 0x1
006585b9  50                        PUSH EAX
006585ba  e8e1e30a00                CALL 0x007069a0
006585bf  83c40c                    ADD ESP,0xc
006585c2  eb20                      JMP 0x006585e4
006585c4  8b97c8030000              MOV EDX,dword ptr [EDI + 0x3c8]
006585ca  8db73c030000              LEA ESI,[EDI + 0x33c]
006585d0  f30f100d7cabba00          MOVSS XMM1,dword ptr [0x00baab7c]
006585d8  8bce                      MOV ECX,ESI
006585da  6a00                      PUSH 0x0
006585dc  e88fed0a00                CALL 0x00707370
006585e1  83c404                    ADD ESP,0x4
006585e4  50                        PUSH EAX
006585e5  8bcf                      MOV ECX,EDI
006585e7  e8340d0500                CALL 0x006a9320
006585ec  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
006585f2  85c9                      TEST ECX,ECX
006585f4  0f8469010000              JZ 0x00658763
006585fa  eb06                      JMP 0x00658602
006585fc  8db73c030000              LEA ESI,[EDI + 0x33c]
00658602  8d8570fcffff              LEA EAX,[EBP + 0xfffffc70]
00658608  50                        PUSH EAX
00658609  e882ecdbff                CALL 0x00417290
0065860e  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
00658614  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
0065861a  50                        PUSH EAX
0065861b  e8b0ecdbff                CALL 0x004172d0
00658620  8d8554fcffff              LEA EAX,[EBP + 0xfffffc54]
00658626  c78554fcffff0000003f      MOV dword ptr [EBP + 0xfffffc54],0x3f000000
00658630  50                        PUSH EAX
00658631  8d856cfbffff              LEA EAX,[EBP + 0xfffffb6c]
00658637  50                        PUSH EAX
00658638  8d8d68fcffff              LEA ECX,[EBP + 0xfffffc68]
0065863e  e89d7e3b00                CALL 0x00a104e0
00658643  50                        PUSH EAX
00658644  8d8528fbffff              LEA EAX,[EBP + 0xfffffb28]
0065864a  50                        PUSH EAX
0065864b  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
00658651  e8ca7d3b00                CALL 0x00a10420
00658656  56                        PUSH ESI
00658657  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
0065865d  51                        PUSH ECX
0065865e  8bc8                      MOV ECX,EAX
00658660  e81b7e3b00                CALL 0x00a10480
00658665  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
0065866b  e830783b00                CALL 0x00a0fea0
00658670  f30f1005d0a9ba00          MOVSS XMM0,dword ptr [0x00baa9d0]
00658678  d99d54fcffff              FSTP dword ptr [EBP + 0xfffffc54]
0065867e  0f2f8554fcffff            COMISS XMM0,dword ptr [EBP + 0xfffffc54]
00658685  0f86d8000000              JBE 0x00658763
0065868b  56                        PUSH ESI
0065868c  8d856cfbffff              LEA EAX,[EBP + 0xfffffb6c]
00658692  50                        PUSH EAX
00658693  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
00658699  e8e27d3b00                CALL 0x00a10480
0065869e  50                        PUSH EAX
0065869f  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
006586a5  e8064d1800                CALL 0x007dd3b0
006586aa  8d8528fbffff              LEA EAX,[EBP + 0xfffffb28]
006586b0  50                        PUSH EAX
006586b1  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
006586b7  e874793b00                CALL 0x00a10030
006586bc  8d8d54fcffff              LEA ECX,[EBP + 0xfffffc54]
006586c2  c78554fcffff3333b33f      MOV dword ptr [EBP + 0xfffffc54],0x3fb33333
006586cc  51                        PUSH ECX
006586cd  8d8d6cfbffff              LEA ECX,[EBP + 0xfffffb6c]
006586d3  51                        PUSH ECX
006586d4  8bc8                      MOV ECX,EAX
006586d6  e8057e3b00                CALL 0x00a104e0
006586db  8db724040000              LEA ESI,[EDI + 0x424]
006586e1  56                        PUSH ESI
006586e2  8d8d00fbffff              LEA ECX,[EBP + 0xfffffb00]
006586e8  51                        PUSH ECX
006586e9  8bc8                      MOV ECX,EAX
006586eb  e8f07d3b00                CALL 0x00a104e0
006586f0  8d8f9c030000              LEA ECX,[EDI + 0x39c]
006586f6  51                        PUSH ECX
006586f7  8d8df8faffff              LEA ECX,[EBP + 0xfffffaf8]
006586fd  51                        PUSH ECX
006586fe  8bc8                      MOV ECX,EAX
00658700  e8db7d3b00                CALL 0x00a104e0
00658705  50                        PUSH EAX
00658706  8d8f60030000              LEA ECX,[EDI + 0x360]
0065870c  e83f7d3b00                CALL 0x00a10450
00658711  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00658719  32c9                      XOR CL,CL
0065871b  f30f1016                  MOVSS XMM2,dword ptr [ESI]
0065871f  f30f100df4a3ba00          MOVSS XMM1,dword ptr [0x00baa3f4]
00658727  f30f118554fcffff          MOVSS dword ptr [EBP + 0xfffffc54],XMM0
0065872f  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00658737  e884ce3b00                CALL 0x00a155c0
0065873c  f30f108d54fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffc54]
00658744  e867c50200                CALL 0x00684cb0
00658749  8d8594fcffff              LEA EAX,[EBP + 0xfffffc94]
0065874f  f30f118594fcffff          MOVSS dword ptr [EBP + 0xfffffc94],XMM0
00658757  50                        PUSH EAX
00658758  8d8f60030000              LEA ECX,[EDI + 0x360]
0065875e  e8dd7d3b00                CALL 0x00a10540
00658763  8bcf                      MOV ECX,EDI
00658765  e8f6d3eaff                CALL 0x00505b60
0065876a  8bc8                      MOV ECX,EAX
0065876c  e8cfeadaff                CALL 0x00407240
00658771  d99d54fcffff              FSTP dword ptr [EBP + 0xfffffc54]
00658777  f30f108554fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc54]
0065877f  0f2e0554a4ba00            UCOMISS XMM0,dword ptr [0x00baa454]
00658786  9f                        LAHF
00658787  f6c444                    TEST AH,0x44
0065878a  7a76                      JP 0x00658802
0065878c  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
00658792  e8d9e9daff                CALL 0x00407170
00658797  83ec10                    SUB ESP,0x10
0065879a  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
006587a0  c744240c0000803f          MOV dword ptr [ESP + 0xc],0x3f800000
006587a8  c74424080000803f          MOV dword ptr [ESP + 0x8],0x3f800000
006587b0  c74424049a99193e          MOV dword ptr [ESP + 0x4],0x3e19999a
006587b8  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
006587bf  e8eca70200                CALL 0x00682fb0
006587c4  83ec0c                    SUB ESP,0xc
006587c7  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
006587cd  c7442408cdcccc3e          MOV dword ptr [ESP + 0x8],0x3ecccccd
006587d5  c7442404cdcc4c3d          MOV dword ptr [ESP + 0x4],0x3d4ccccd
006587dd  c70424b81e853e            MOV dword ptr [ESP],0x3e851eb8
006587e4  e8f7a70200                CALL 0x00682fe0
006587e9  8b07                      MOV EAX,dword ptr [EDI]
006587eb  8d8ddcfeffff              LEA ECX,[EBP + 0xfffffedc]
006587f1  6a01                      PUSH 0x1
006587f3  6a00                      PUSH 0x0
006587f5  68ff000000                PUSH 0xff
006587fa  6aff                      PUSH -0x1
006587fc  51                        PUSH ECX
006587fd  8bcf                      MOV ECX,EDI
006587ff  ff503c                    CALL dword ptr [EAX + 0x3c]
00658802  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
00658808  8bc1                      MOV EAX,ECX
0065880a  8b973c040000              MOV EDX,dword ptr [EDI + 0x43c]
00658810  83e010                    AND EAX,0x10
00658813  83c800                    OR EAX,0x0
00658816  899574fcffff              MOV dword ptr [EBP + 0xfffffc74],EDX
0065881c  7469                      JZ 0x00658887
0065881e  817f341d010000            CMP dword ptr [EDI + 0x34],0x11d
00658825  899574fcffff              MOV dword ptr [EBP + 0xfffffc74],EDX
0065882b  745a                      JZ 0x00658887
0065882d  8b07                      MOV EAX,dword ptr [EDI]
0065882f  f30f100598a1ba00          MOVSS XMM0,dword ptr [0x00baa198]
00658837  68af000000                PUSH 0xaf
0065883c  68af000000                PUSH 0xaf
00658841  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00658844  0f28d8                    MOVAPS XMM3,XMM0
00658847  68af000000                PUSH 0xaf
0065884c  51                        PUSH ECX
0065884d  0f28d0                    MOVAPS XMM2,XMM0
00658850  c704240000003f            MOV dword ptr [ESP],0x3f000000
00658857  0f28c8                    MOVAPS XMM1,XMM0
0065885a  8d8d00feffff              LEA ECX,[EBP + 0xfffffe00]
00658860  e86bd2ddff                CALL 0x00435ad0
00658865  6a01                      PUSH 0x1
00658867  6a00                      PUSH 0x0
00658869  68ff000000                PUSH 0xff
0065886e  6aff                      PUSH -0x1
00658870  50                        PUSH EAX
00658871  8bcf                      MOV ECX,EDI
00658873  ffd6                      CALL ESI
00658875  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
0065887b  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
00658881  898574fcffff              MOV dword ptr [EBP + 0xfffffc74],EAX
00658887  81e100040000              AND ECX,0x400
0065888d  83c900                    OR ECX,0x0
00658890  7448                      JZ 0x006588da
00658892  6a00                      PUSH 0x0
00658894  6a02                      PUSH 0x2
00658896  8bcf                      MOV ECX,EDI
00658898  e8733e0500                CALL 0x006ac710
0065889d  84c0                      TEST AL,AL
0065889f  7439                      JZ 0x006588da
006588a1  e8ba660900                CALL 0x006eef60
006588a6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006588ac  50                        PUSH EAX
006588ad  6a00                      PUSH 0x0
006588af  57                        PUSH EDI
006588b0  6840b6c700                PUSH 0xc7b640
006588b5  8d873c030000              LEA EAX,[EDI + 0x33c]
006588bb  50                        PUSH EAX
006588bc  6a16                      PUSH 0x16
006588be  68e8030000                PUSH 0x3e8
006588c3  e85802ddff                CALL 0x00428b20
006588c8  817f340e010000            CMP dword ptr [EDI + 0x34],0x10e
006588cf  7409                      JZ 0x006588da
006588d1  6a5a                      PUSH 0x5a
006588d3  8bc8                      MOV ECX,EAX
006588d5  e8b6d5ddff                CALL 0x00435e90
006588da  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
006588e0  2500400000                AND EAX,0x4000
006588e5  83c800                    OR EAX,0x0
006588e8  7469                      JZ 0x00658953
006588ea  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
006588f2  0f57d2                    XORPS XMM2,XMM2
006588f5  8bcf                      MOV ECX,EDI
006588f7  e8643e0500                CALL 0x006ac760
006588fc  85c0                      TEST EAX,EAX
006588fe  7453                      JZ 0x00658953
00658900  e85b660900                CALL 0x006eef60
00658905  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065890b  6a00                      PUSH 0x0
0065890d  68acd5c500                PUSH 0xc5d5ac
00658912  68dcd5c500                PUSH 0xc5d5dc
00658917  6a00                      PUSH 0x0
00658919  50                        PUSH EAX
0065891a  6a00                      PUSH 0x0
0065891c  57                        PUSH EDI
0065891d  6840b6c700                PUSH 0xc7b640
00658922  8d873c030000              LEA EAX,[EDI + 0x33c]
00658928  50                        PUSH EAX
00658929  6a38                      PUSH 0x38
0065892b  68e8030000                PUSH 0x3e8
00658930  e8eb01ddff                CALL 0x00428b20
00658935  50                        PUSH EAX
00658936  e8767f4900                CALL 0x00af08b1
0065893b  8bf0                      MOV ESI,EAX
0065893d  83c414                    ADD ESP,0x14
00658940  8bce                      MOV ECX,ESI
00658942  8b16                      MOV EDX,dword ptr [ESI]
00658944  ff520c                    CALL dword ptr [EDX + 0xc]
00658947  68b4000000                PUSH 0xb4
0065894c  8bce                      MOV ECX,ESI
0065894e  e83dd5ddff                CALL 0x00435e90
00658953  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00658959  2500000040                AND EAX,0x40000000
0065895e  83c800                    OR EAX,0x0
00658961  0f84f3010000              JZ 0x00658b5a
00658967  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065896d  e80eebdaff                CALL 0x00407480
00658972  51                        PUSH ECX
00658973  c704240000c8c2            MOV dword ptr [ESP],0xc2c80000
0065897a  8db73c030000              LEA ESI,[EDI + 0x33c]
00658980  56                        PUSH ESI
00658981  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00658987  51                        PUSH ECX
00658988  8bc8                      MOV ECX,EAX
0065898a  e821a1ffff                CALL 0x00652ab0
0065898f  50                        PUSH EAX
00658990  8bce                      MOV ECX,ESI
00658992  e8194a1800                CALL 0x007dd3b0
00658997  ff7720                    PUSH dword ptr [EDI + 0x20]
0065899a  8bcf                      MOV ECX,EDI
0065899c  6a02                      PUSH 0x2
0065899e  e86d3d0500                CALL 0x006ac710
006589a3  84c0                      TEST AL,AL
006589a5  0f84af010000              JZ 0x00658b5a
006589ab  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
006589b3  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
006589b9  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
006589c1  f30f2cf0                  CVTTSS2SI ESI,XMM0
006589c5  e8a6e7daff                CALL 0x00407170
006589ca  b8398ee338                MOV EAX,0x38e38e39
006589cf  f7ee                      IMUL ESI
006589d1  d1fa                      SAR EDX,0x1
006589d3  8bc2                      MOV EAX,EDX
006589d5  c1e81f                    SHR EAX,0x1f
006589d8  03c2                      ADD EAX,EDX
006589da  8d04c0                    LEA EAX,[EAX + EAX*0x8]
006589dd  2bf0                      SUB ESI,EAX
006589df  83fe08                    CMP ESI,0x8
006589e2  0f8759010000              JA 0x00658b41
006589e8  ff24b504ad6500            JMP dword ptr [ESI*0x4 + 0x65ad04]
00658b41  8b07                      MOV EAX,dword ptr [EDI]
00658b43  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00658b49  6a01                      PUSH 0x1
00658b4b  6a00                      PUSH 0x0
00658b4d  68ff000000                PUSH 0xff
00658b52  6aff                      PUSH -0x1
00658b54  51                        PUSH ECX
00658b55  8bcf                      MOV ECX,EDI
00658b57  ff503c                    CALL dword ptr [EAX + 0x3c]
00658b5a  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00658b60  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
00658b66  2500180000                AND EAX,0x1800
00658b6b  83c800                    OR EAX,0x0
00658b6e  0f8422030000              JZ 0x00658e96
00658b74  81e100000001              AND ECX,0x1000000
00658b7a  33c0                      XOR EAX,EAX
00658b7c  0bc1                      OR EAX,ECX
00658b7e  0f84cb010000              JZ 0x00658d4f
00658b84  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00658b8b  0f84be010000              JZ 0x00658d4f
00658b91  8d8f68040000              LEA ECX,[EDI + 0x468]
00658b97  51                        PUSH ECX
00658b98  8d8f60030000              LEA ECX,[EDI + 0x360]
00658b9e  e80d793b00                CALL 0x00a104b0
00658ba3  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00658ba9  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00658baf  50                        PUSH EAX
00658bb0  e8dbe6dbff                CALL 0x00417290
00658bb5  50                        PUSH EAX
00658bb6  8d85f0fbffff              LEA EAX,[EBP + 0xfffffbf0]
00658bbc  50                        PUSH EAX
00658bbd  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00658bc3  e8b8783b00                CALL 0x00a10480
00658bc8  f30f108df4fbffff          MOVSS XMM1,dword ptr [EBP + 0xfffffbf4]
00658bd0  8d8d64fbffff              LEA ECX,[EBP + 0xfffffb64]
00658bd6  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00658bdd  f30f1095f0fbffff          MOVSS XMM2,dword ptr [EBP + 0xfffffbf0]
00658be5  e8a6723b00                CALL 0x00a0fe90
00658bea  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00658bf0  2500100000                AND EAX,0x1000
00658bf5  83c800                    OR EAX,0x0
00658bf8  741e                      JZ 0x00658c18
00658bfa  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00658c00  50                        PUSH EAX
00658c01  8d8d64fbffff              LEA ECX,[EBP + 0xfffffb64]
00658c07  e8547a3b00                CALL 0x00a10660
00658c0c  50                        PUSH EAX
00658c0d  8d8d64fbffff              LEA ECX,[EBP + 0xfffffb64]
00658c13  e898471800                CALL 0x007dd3b0
00658c18  f30f108730040000          MOVSS XMM0,dword ptr [EDI + 0x430]
00658c20  8d8df0fbffff              LEA ECX,[EBP + 0xfffffbf0]
00658c26  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00658c2d  7650                      JBE 0x00658c7f
00658c2f  e86c723b00                CALL 0x00a0fea0
00658c34  d8b730040000              FDIV dword ptr [EDI + 0x430]
00658c3a  d9e8                      FLD1
00658c3c  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00658c44  dee1                      FSUBRP
00658c46  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00658c4e  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
00658c54  f30f1095c4fcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffcc4]
00658c5c  e83f66ddff                CALL 0x0042f2a0
00658c61  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00658c69  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
00658c6f  8d8df0fbffff              LEA ECX,[EBP + 0xfffffbf0]
00658c75  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
00658c7d  eb10                      JMP 0x00658c8f
00658c7f  c785c4fcffff0000003f      MOV dword ptr [EBP + 0xfffffcc4],0x3f000000
00658c89  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
00658c8f  50                        PUSH EAX
00658c90  e8ab783b00                CALL 0x00a10540
00658c95  8d8564fbffff              LEA EAX,[EBP + 0xfffffb64]
00658c9b  50                        PUSH EAX
00658c9c  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00658ca2  50                        PUSH EAX
00658ca3  8d8df0fbffff              LEA ECX,[EBP + 0xfffffbf0]
00658ca9  e872773b00                CALL 0x00a10420
00658cae  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
00658cb4  51                        PUSH ECX
00658cb5  8bc8                      MOV ECX,EAX
00658cb7  e874733b00                CALL 0x00a10030
00658cbc  8d8f60030000              LEA ECX,[EDI + 0x360]
00658cc2  8bf0                      MOV ESI,EAX
00658cc4  e8d7713b00                CALL 0x00a0fea0
00658cc9  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
00658ccf  8bce                      MOV ECX,ESI
00658cd1  50                        PUSH EAX
00658cd2  8d8558fcffff              LEA EAX,[EBP + 0xfffffc58]
00658cd8  50                        PUSH EAX
00658cd9  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
00658cdf  e8fc773b00                CALL 0x00a104e0
00658ce4  50                        PUSH EAX
00658ce5  8d8f60030000              LEA ECX,[EDI + 0x360]
00658ceb  e8c0461800                CALL 0x007dd3b0
00658cf0  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00658cf6  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
00658cfc  50                        PUSH EAX
00658cfd  e8cee5dbff                CALL 0x004172d0
00658d02  50                        PUSH EAX
00658d03  8d8f60030000              LEA ECX,[EDI + 0x360]
00658d09  e842773b00                CALL 0x00a10450
00658d0e  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00658d14  8d8508fcffff              LEA EAX,[EBP + 0xfffffc08]
00658d1a  50                        PUSH EAX
00658d1b  e8b0e5dbff                CALL 0x004172d0
00658d20  50                        PUSH EAX
00658d21  8d8f68040000              LEA ECX,[EDI + 0x468]
00658d27  e884461800                CALL 0x007dd3b0
00658d2c  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00658d32  8d8508fbffff              LEA EAX,[EBP + 0xfffffb08]
00658d38  50                        PUSH EAX
00658d39  e852e5dbff                CALL 0x00417290
00658d3e  50                        PUSH EAX
00658d3f  8d8f34030000              LEA ECX,[EDI + 0x334]
00658d45  e866461800                CALL 0x007dd3b0
00658d4a  e947010000                JMP 0x00658e96
00658d4f  8d8734030000              LEA EAX,[EDI + 0x334]
00658d55  50                        PUSH EAX
00658d56  8d852cfcffff              LEA EAX,[EBP + 0xfffffc2c]
00658d5c  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00658d62  50                        PUSH EAX
00658d63  e818773b00                CALL 0x00a10480
00658d68  f30f108d30fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffc30]
00658d70  8d8de8fbffff              LEA ECX,[EBP + 0xfffffbe8]
00658d76  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00658d7d  f30f10952cfcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffc2c]
00658d85  e806713b00                CALL 0x00a0fe90
00658d8a  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00658d90  2500100000                AND EAX,0x1000
00658d95  83c800                    OR EAX,0x0
00658d98  741e                      JZ 0x00658db8
00658d9a  8d8508fbffff              LEA EAX,[EBP + 0xfffffb08]
00658da0  50                        PUSH EAX
00658da1  8d8de8fbffff              LEA ECX,[EBP + 0xfffffbe8]
00658da7  e8b4783b00                CALL 0x00a10660
00658dac  50                        PUSH EAX
00658dad  8d8de8fbffff              LEA ECX,[EBP + 0xfffffbe8]
00658db3  e8f8451800                CALL 0x007dd3b0
00658db8  f30f108730040000          MOVSS XMM0,dword ptr [EDI + 0x430]
00658dc0  8d8d2cfcffff              LEA ECX,[EBP + 0xfffffc2c]
00658dc6  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00658dcd  7650                      JBE 0x00658e1f
00658dcf  e8cc703b00                CALL 0x00a0fea0
00658dd4  d8b730040000              FDIV dword ptr [EDI + 0x430]
00658dda  d9e8                      FLD1
00658ddc  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00658de4  dee1                      FSUBRP
00658de6  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00658dee  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
00658df4  f30f1095c4fcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffcc4]
00658dfc  e89f64ddff                CALL 0x0042f2a0
00658e01  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00658e09  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
00658e0f  8d8d2cfcffff              LEA ECX,[EBP + 0xfffffc2c]
00658e15  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
00658e1d  eb10                      JMP 0x00658e2f
00658e1f  c785c4fcffff0000003f      MOV dword ptr [EBP + 0xfffffcc4],0x3f000000
00658e29  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
00658e2f  50                        PUSH EAX
00658e30  e80b773b00                CALL 0x00a10540
00658e35  8d85e8fbffff              LEA EAX,[EBP + 0xfffffbe8]
00658e3b  50                        PUSH EAX
00658e3c  8d85b0faffff              LEA EAX,[EBP + 0xfffffab0]
00658e42  50                        PUSH EAX
00658e43  8d8d2cfcffff              LEA ECX,[EBP + 0xfffffc2c]
00658e49  e8d2753b00                CALL 0x00a10420
00658e4e  8d8dc0faffff              LEA ECX,[EBP + 0xfffffac0]
00658e54  51                        PUSH ECX
00658e55  8bc8                      MOV ECX,EAX
00658e57  e8d4713b00                CALL 0x00a10030
00658e5c  8d8f60030000              LEA ECX,[EDI + 0x360]
00658e62  8bf0                      MOV ESI,EAX
00658e64  e837703b00                CALL 0x00a0fea0
00658e69  8d8540fbffff              LEA EAX,[EBP + 0xfffffb40]
00658e6f  8bce                      MOV ECX,ESI
00658e71  50                        PUSH EAX
00658e72  8d85d0faffff              LEA EAX,[EBP + 0xfffffad0]
00658e78  50                        PUSH EAX
00658e79  d99d40fbffff              FSTP dword ptr [EBP + 0xfffffb40]
00658e7f  e85c763b00                CALL 0x00a104e0
00658e84  50                        PUSH EAX
00658e85  8d8f60030000              LEA ECX,[EDI + 0x360]
00658e8b  e820451800                CALL 0x007dd3b0
00658e90  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
00658e96  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00658e9c  8d8f60030000              LEA ECX,[EDI + 0x360]
00658ea2  2500000c00                AND EAX,0xc0000
00658ea7  898dacfcffff              MOV dword ptr [EBP + 0xfffffcac],ECX
00658ead  83c800                    OR EAX,0x0
00658eb0  0f84c9000000              JZ 0x00658f7f
00658eb6  8db760030000              LEA ESI,[EDI + 0x360]
00658ebc  8bce                      MOV ECX,ESI
00658ebe  e8dd6f3b00                CALL 0x00a0fea0
00658ec3  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00658ecb  8d8de0fbffff              LEA ECX,[EBP + 0xfffffbe0]
00658ed1  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00658ed8  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
00658ee0  d99d9cfcffff              FSTP dword ptr [EBP + 0xfffffc9c]
00658ee6  e8a56f3b00                CALL 0x00a0fe90
00658eeb  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00658ef1  2500000400                AND EAX,0x40000
00658ef6  83c800                    OR EAX,0x0
00658ef9  741e                      JZ 0x00658f19
00658efb  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00658f01  50                        PUSH EAX
00658f02  8d8de0fbffff              LEA ECX,[EBP + 0xfffffbe0]
00658f08  e853773b00                CALL 0x00a10660
00658f0d  50                        PUSH EAX
00658f0e  8d8de0fbffff              LEA ECX,[EBP + 0xfffffbe0]
00658f14  e897441800                CALL 0x007dd3b0
00658f19  8d859cfcffff              LEA EAX,[EBP + 0xfffffc9c]
00658f1f  50                        PUSH EAX
00658f20  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
00658f26  50                        PUSH EAX
00658f27  8d8de0fbffff              LEA ECX,[EBP + 0xfffffbe0]
00658f2d  e8ae753b00                CALL 0x00a104e0
00658f32  8d8f28040000              LEA ECX,[EDI + 0x428]
00658f38  51                        PUSH ECX
00658f39  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
00658f3f  51                        PUSH ECX
00658f40  8bc8                      MOV ECX,EAX
00658f42  e899753b00                CALL 0x00a104e0
00658f47  8d8f9c030000              LEA ECX,[EDI + 0x39c]
00658f4d  51                        PUSH ECX
00658f4e  8d8d58fcffff              LEA ECX,[EBP + 0xfffffc58]
00658f54  51                        PUSH ECX
00658f55  8bc8                      MOV ECX,EAX
00658f57  e884753b00                CALL 0x00a104e0
00658f5c  50                        PUSH EAX
00658f5d  8bce                      MOV ECX,ESI
00658f5f  e8ec743b00                CALL 0x00a10450
00658f64  f30f10859cfcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc9c]
00658f6c  51                        PUSH ECX
00658f6d  8bce                      MOV ECX,ESI
00658f6f  f30f110424                MOVSS dword ptr [ESP],XMM0
00658f74  e837713b00                CALL 0x00a100b0
00658f79  89b5acfcffff              MOV dword ptr [EBP + 0xfffffcac],ESI
00658f7f  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00658f85  2500001000                AND EAX,0x100000
00658f8a  83c800                    OR EAX,0x0
00658f8d  0f84d1010000              JZ 0x00659164
00658f93  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00658f99  33f6                      XOR ESI,ESI
00658f9b  e830e9dbff                CALL 0x004178d0
00658fa0  85c0                      TEST EAX,EAX
00658fa2  0f8ebc010000              JLE 0x00659164
00658fa8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00658fb0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00658fb6  56                        PUSH ESI
00658fb7  e8b4e8dbff                CALL 0x00417870
00658fbc  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
00658fc2  51                        PUSH ECX
00658fc3  8bc8                      MOV ECX,EAX
00658fc5  e8c6e2dbff                CALL 0x00417290
00658fca  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00658fd0  51                        PUSH ECX
00658fd1  8d8d30fbffff              LEA ECX,[EBP + 0xfffffb30]
00658fd7  51                        PUSH ECX
00658fd8  8bc8                      MOV ECX,EAX
00658fda  e8a1743b00                CALL 0x00a10480
00658fdf  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00658fe7  8d8d58fcffff              LEA ECX,[EBP + 0xfffffc58]
00658fed  0f57c9                    XORPS XMM1,XMM1
00658ff0  e89b6e3b00                CALL 0x00a0fe90
00658ff5  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
00658ffb  50                        PUSH EAX
00658ffc  8d8d30fbffff              LEA ECX,[EBP + 0xfffffb30]
00659002  e829703b00                CALL 0x00a10030
00659007  50                        PUSH EAX
00659008  8d8d58fcffff              LEA ECX,[EBP + 0xfffffc58]
0065900e  e86d713b00                CALL 0x00a10180
00659013  f30f100dd0a0ba00          MOVSS XMM1,dword ptr [0x00baa0d0]
0065901b  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
00659021  f30f1085c4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc4]
00659029  0f2fc8                    COMISS XMM1,XMM0
0065902c  765b                      JBE 0x00659089
0065902e  0f2f0524adba00            COMISS XMM0,dword ptr [0x00baad24]
00659035  7652                      JBE 0x00659089
00659037  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065903d  e83ee4daff                CALL 0x00407480
00659042  8bc8                      MOV ECX,EAX
00659044  e8b787dcff                CALL 0x00421800
00659049  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00659051  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00659055  f30f5c0d00aaba00          SUBSS XMM1,dword ptr [0x00baaa00]
0065905d  0f2fc1                    COMISS XMM0,XMM1
00659060  7627                      JBE 0x00659089
00659062  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00659068  e813e4daff                CALL 0x00407480
0065906d  8bc8                      MOV ECX,EAX
0065906f  e8fc3bddff                CALL 0x0042cc70
00659074  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00659078  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
00659080  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
00659087  7719                      JA 0x006590a2
00659089  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065908f  46                        INC ESI
00659090  e83be8dbff                CALL 0x004178d0
00659095  3bf0                      CMP ESI,EAX
00659097  0f8c13ffffff              JL 0x00658fb0
0065909d  e9c2000000                JMP 0x00659164
006590a2  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006590aa  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
006590b0  0f57d2                    XORPS XMM2,XMM2
006590b3  e8d86d3b00                CALL 0x00a0fe90
006590b8  8d8f60030000              LEA ECX,[EDI + 0x360]
006590be  8bf0                      MOV ESI,EAX
006590c0  e8db6d3b00                CALL 0x00a0fea0
006590c5  8d85c4fcffff              LEA EAX,[EBP + 0xfffffcc4]
006590cb  8bce                      MOV ECX,ESI
006590cd  50                        PUSH EAX
006590ce  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
006590d4  50                        PUSH EAX
006590d5  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
006590db  e800743b00                CALL 0x00a104e0
006590e0  8d8dbcfcffff              LEA ECX,[EBP + 0xfffffcbc]
006590e6  c785bcfcffff00000040      MOV dword ptr [EBP + 0xfffffcbc],0x40000000
006590f0  51                        PUSH ECX
006590f1  8d8d10fcffff              LEA ECX,[EBP + 0xfffffc10]
006590f7  51                        PUSH ECX
006590f8  8bc8                      MOV ECX,EAX
006590fa  e8e1733b00                CALL 0x00a104e0
006590ff  8d8510fcffff              LEA EAX,[EBP + 0xfffffc10]
00659105  50                        PUSH EAX
00659106  8d8d30fbffff              LEA ECX,[EBP + 0xfffffb30]
0065910c  e86f703b00                CALL 0x00a10180
00659111  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
00659117  f30f1085c4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc4]
0065911f  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00659126  7608                      JBE 0x00659130
00659128  8d8510fcffff              LEA EAX,[EBP + 0xfffffc10]
0065912e  eb12                      JMP 0x00659142
00659130  8d85d8faffff              LEA EAX,[EBP + 0xfffffad8]
00659136  50                        PUSH EAX
00659137  8d8d10fcffff              LEA ECX,[EBP + 0xfffffc10]
0065913d  e81e753b00                CALL 0x00a10660
00659142  50                        PUSH EAX
00659143  8d8f60030000              LEA ECX,[EDI + 0x360]
00659149  e862421800                CALL 0x007dd3b0
0065914e  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
00659154  81a738040000ffffefff      AND dword ptr [EDI + 0x438],0xffefffff
0065915e  89873c040000              MOV dword ptr [EDI + 0x43c],EAX
00659164  8bb73c040000              MOV ESI,dword ptr [EDI + 0x43c]
0065916a  33c0                      XOR EAX,EAX
0065916c  8b9738040000              MOV EDX,dword ptr [EDI + 0x438]
00659172  8bce                      MOV ECX,ESI
00659174  81e100020000              AND ECX,0x200
0065917a  0bc1                      OR EAX,ECX
0065917c  0f8499010000              JZ 0x0065931b
00659182  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
00659188  85c9                      TEST ECX,ECX
0065918a  0f8466010000              JZ 0x006592f6
00659190  e89b1be5ff                CALL 0x004aad30
00659195  6840b6c700                PUSH 0xc7b640
0065919a  8bc8                      MOV ECX,EAX
0065919c  e88f743b00                CALL 0x00a10630
006591a1  84c0                      TEST AL,AL
006591a3  0f844d010000              JZ 0x006592f6
006591a9  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
006591af  8d854cfbffff              LEA EAX,[EBP + 0xfffffb4c]
006591b5  50                        PUSH EAX
006591b6  e8d5e0dbff                CALL 0x00417290
006591bb  8b8fc8030000              MOV ECX,dword ptr [EDI + 0x3c8]
006591c1  e86a1be5ff                CALL 0x004aad30
006591c6  8b08                      MOV ECX,dword ptr [EAX]
006591c8  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
006591cb  898d7cfcffff              MOV dword ptr [EBP + 0xfffffc7c],ECX
006591d1  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
006591d7  898580fcffff              MOV dword ptr [EBP + 0xfffffc80],EAX
006591dd  e8be6c3b00                CALL 0x00a0fea0
006591e2  8d858cfcffff              LEA EAX,[EBP + 0xfffffc8c]
006591e8  50                        PUSH EAX
006591e9  8d8d7cfcffff              LEA ECX,[EBP + 0xfffffc7c]
006591ef  d99d8cfcffff              FSTP dword ptr [EBP + 0xfffffc8c]
006591f5  e8d6733b00                CALL 0x00a105d0
006591fa  8d8d4cfbffff              LEA ECX,[EBP + 0xfffffb4c]
00659200  51                        PUSH ECX
00659201  8d8d44fbffff              LEA ECX,[EBP + 0xfffffb44]
00659207  51                        PUSH ECX
00659208  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0065920e  e86d723b00                CALL 0x00a10480
00659213  8d8d44fbffff              LEA ECX,[EBP + 0xfffffb44]
00659219  e8826c3b00                CALL 0x00a0fea0
0065921e  8d857cfcffff              LEA EAX,[EBP + 0xfffffc7c]
00659224  d99db8fcffff              FSTP dword ptr [EBP + 0xfffffcb8]
0065922a  50                        PUSH EAX
0065922b  8d8d44fbffff              LEA ECX,[EBP + 0xfffffb44]
00659231  e84a6f3b00                CALL 0x00a10180
00659236  0f57c0                    XORPS XMM0,XMM0
00659239  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
0065923f  0f2f85c4fcffff            COMISS XMM0,dword ptr [EBP + 0xfffffcc4]
00659246  7618                      JBE 0x00659260
00659248  f30f1085b8fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcb8]
00659250  f30f590550adba00          MULSS XMM0,dword ptr [0x00baad50]
00659258  f30f1185b8fcffff          MOVSS dword ptr [EBP + 0xfffffcb8],XMM0
00659260  8bb5acfcffff              MOV ESI,dword ptr [EBP + 0xfffffcac]
00659266  8bce                      MOV ECX,ESI
00659268  e8336c3b00                CALL 0x00a0fea0
0065926d  f30f108db8fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcb8]
00659275  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0065927c  d99d3cfbffff              FSTP dword ptr [EBP + 0xfffffb3c]
00659282  7272                      JC 0x006592f6
00659284  f30f10858cfcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc8c]
0065928c  0f2fc1                    COMISS XMM0,XMM1
0065928f  7265                      JC 0x006592f6
00659291  8d857cfcffff              LEA EAX,[EBP + 0xfffffc7c]
00659297  50                        PUSH EAX
00659298  8d95b8fcffff              LEA EDX,[EBP + 0xfffffcb8]
0065929e  8d8da0fcffff              LEA ECX,[EBP + 0xfffffca0]
006592a4  e827dfdbff                CALL 0x004171d0
006592a9  83c404                    ADD ESP,0x4
006592ac  8d8d4cfbffff              LEA ECX,[EBP + 0xfffffb4c]
006592b2  50                        PUSH EAX
006592b3  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
006592b9  50                        PUSH EAX
006592ba  e861713b00                CALL 0x00a10420
006592bf  50                        PUSH EAX
006592c0  8d8f3c030000              LEA ECX,[EDI + 0x33c]
006592c6  e8e5401800                CALL 0x007dd3b0
006592cb  8d857cfcffff              LEA EAX,[EBP + 0xfffffc7c]
006592d1  50                        PUSH EAX
006592d2  8d953cfbffff              LEA EDX,[EBP + 0xfffffb3c]
006592d8  8d8da8faffff              LEA ECX,[EBP + 0xfffffaa8]
006592de  e8eddedbff                CALL 0x004171d0
006592e3  83c404                    ADD ESP,0x4
006592e6  8bce                      MOV ECX,ESI
006592e8  50                        PUSH EAX
006592e9  e8c2401800                CALL 0x007dd3b0
006592ee  8b9738040000              MOV EDX,dword ptr [EDI + 0x438]
006592f4  eb1f                      JMP 0x00659315
006592f6  8bcf                      MOV ECX,EDI
006592f8  e863b9deff                CALL 0x00444c60
006592fd  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00659303  8bd0                      MOV EDX,EAX
00659305  81a73c040000fffdffff      AND dword ptr [EDI + 0x43c],0xfffffdff
0065930f  898738040000              MOV dword ptr [EDI + 0x438],EAX
00659315  8bb73c040000              MOV ESI,dword ptr [EDI + 0x43c]
0065931b  8bce                      MOV ECX,ESI
0065931d  33c0                      XOR EAX,EAX
0065931f  81e100000400              AND ECX,0x40000
00659325  0bc1                      OR EAX,ECX
00659327  0f84f2010000              JZ 0x0065951f
0065932d  6a08                      PUSH 0x8
0065932f  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
00659335  8d8d74ffffff              LEA ECX,[EBP + 0xffffff74]
0065933b  e850fc1800                CALL 0x007e8f90
00659340  8d8d74ffffff              LEA ECX,[EBP + 0xffffff74]
00659346  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
0065934d  e82efd1800                CALL 0x007e9080
00659352  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
0065935a  32c9                      XOR CL,CL
0065935c  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
00659364  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
0065936a  f30f1095c4fcffff          MOVSS XMM2,dword ptr [EBP + 0xfffffcc4]
00659372  e849c23b00                CALL 0x00a155c0
00659377  8d8d74ffffff              LEA ECX,[EBP + 0xffffff74]
0065937d  f30f118590fbffff          MOVSS dword ptr [EBP + 0xfffffb90],XMM0
00659385  e8f6fc1800                CALL 0x007e9080
0065938a  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00659392  f30f5e05d0a9ba00          DIVSS XMM0,dword ptr [0x00baa9d0]
0065939a  8b8f38030000              MOV ECX,dword ptr [EDI + 0x338]
006593a0  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
006593a6  898d38fcffff              MOV dword ptr [EBP + 0xfffffc38],ECX
006593ac  8d8d34fcffff              LEA ECX,[EBP + 0xfffffc34]
006593b2  898534fcffff              MOV dword ptr [EBP + 0xfffffc34],EAX
006593b8  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
006593be  f30f5885c4fcffff          ADDSS XMM0,dword ptr [EBP + 0xfffffcc4]
006593c6  f30f1185c4fcffff          MOVSS dword ptr [EBP + 0xfffffcc4],XMM0
006593ce  e8cd6a3b00                CALL 0x00a0fea0
006593d3  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
006593d9  50                        PUSH EAX
006593da  8d8d34fcffff              LEA ECX,[EBP + 0xfffffc34]
006593e0  d99db0fcffff              FSTP dword ptr [EBP + 0xfffffcb0]
006593e6  e8e5713b00                CALL 0x00a105d0
006593eb  51                        PUSH ECX
006593ec  8d8584fcffff              LEA EAX,[EBP + 0xfffffc84]
006593f2  c704240000b442            MOV dword ptr [ESP],0x42b40000
006593f9  50                        PUSH EAX
006593fa  8d8d34fcffff              LEA ECX,[EBP + 0xfffffc34]
00659400  e8db6e3b00                CALL 0x00a102e0
00659405  8b8dacfcffff              MOV ECX,dword ptr [EBP + 0xfffffcac]
0065940b  8d8534fcffff              LEA EAX,[EBP + 0xfffffc34]
00659411  50                        PUSH EAX
00659412  e8696d3b00                CALL 0x00a10180
00659417  8d854cfcffff              LEA EAX,[EBP + 0xfffffc4c]
0065941d  50                        PUSH EAX
0065941e  8d855cfbffff              LEA EAX,[EBP + 0xfffffb5c]
00659424  50                        PUSH EAX
00659425  8d8d34fcffff              LEA ECX,[EBP + 0xfffffc34]
0065942b  d99d4cfcffff              FSTP dword ptr [EBP + 0xfffffc4c]
00659431  e8aa703b00                CALL 0x00a104e0
00659436  8d8590fbffff              LEA EAX,[EBP + 0xfffffb90]
0065943c  50                        PUSH EAX
0065943d  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
00659443  50                        PUSH EAX
00659444  8d8d84fcffff              LEA ECX,[EBP + 0xfffffc84]
0065944a  e891703b00                CALL 0x00a104e0
0065944f  f30f1085c4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc4]
00659457  8bf0                      MOV ESI,EAX
00659459  f30f58c0                  ADDSS XMM0,XMM0
0065945d  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
00659465  e8f6dcdbff                CALL 0x00417160
0065946a  8d85bcfcffff              LEA EAX,[EBP + 0xfffffcbc]
00659470  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
00659478  50                        PUSH EAX
00659479  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
0065947f  8bce                      MOV ECX,ESI
00659481  50                        PUSH EAX
00659482  e859703b00                CALL 0x00a104e0
00659487  f30f1085b0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcb0]
0065948f  0f2f854cfcffff            COMISS XMM0,dword ptr [EBP + 0xfffffc4c]
00659496  7644                      JBE 0x006594dc
00659498  8d85b0fcffff              LEA EAX,[EBP + 0xfffffcb0]
0065949e  50                        PUSH EAX
0065949f  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
006594a5  50                        PUSH EAX
006594a6  8d8d34fcffff              LEA ECX,[EBP + 0xfffffc34]
006594ac  e82f703b00                CALL 0x00a104e0
006594b1  8d8dc4fcffff              LEA ECX,[EBP + 0xfffffcc4]
006594b7  c785c4fcffff8fc2f53b      MOV dword ptr [EBP + 0xfffffcc4],0x3bf5c28f
006594c1  51                        PUSH ECX
006594c2  8d8d08fcffff              LEA ECX,[EBP + 0xfffffc08]
006594c8  51                        PUSH ECX
006594c9  8bc8                      MOV ECX,EAX
006594cb  e810703b00                CALL 0x00a104e0
006594d0  50                        PUSH EAX
006594d1  8d8d5cfbffff              LEA ECX,[EBP + 0xfffffb5c]
006594d7  e8746f3b00                CALL 0x00a10450
006594dc  8d85a0fcffff              LEA EAX,[EBP + 0xfffffca0]
006594e2  50                        PUSH EAX
006594e3  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
006594e9  50                        PUSH EAX
006594ea  8d8d5cfbffff              LEA ECX,[EBP + 0xfffffb5c]
006594f0  e82b6f3b00                CALL 0x00a10420
006594f5  8b8dacfcffff              MOV ECX,dword ptr [EBP + 0xfffffcac]
006594fb  50                        PUSH EAX
006594fc  e8af3e1800                CALL 0x007dd3b0
00659501  8d8d74ffffff              LEA ECX,[EBP + 0xffffff74]
00659507  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0065950e  e8ed2cdbff                CALL 0x0040c200
00659513  8b9738040000              MOV EDX,dword ptr [EDI + 0x438]
00659519  8bb73c040000              MOV ESI,dword ptr [EDI + 0x43c]
0065951f  8bc2                      MOV EAX,EDX
00659521  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00659527  2500002000                AND EAX,0x200000
0065952c  83c800                    OR EAX,0x0
0065952f  7468                      JZ 0x00659599
00659531  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00659539  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
00659541  f30f58c0                  ADDSS XMM0,XMM0
00659545  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
0065954d  e80edcdbff                CALL 0x00417160
00659552  8d858cfbffff              LEA EAX,[EBP + 0xfffffb8c]
00659558  f30f11858cfbffff          MOVSS dword ptr [EBP + 0xfffffb8c],XMM0
00659560  50                        PUSH EAX
00659561  8d8578faffff              LEA EAX,[EBP + 0xfffffa78]
00659567  50                        PUSH EAX
00659568  8d8f60030000              LEA ECX,[EDI + 0x360]
0065956e  e86d6f3b00                CALL 0x00a104e0
00659573  50                        PUSH EAX
00659574  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0065957a  e8d16e3b00                CALL 0x00a10450
0065957f  8b9738040000              MOV EDX,dword ptr [EDI + 0x438]
00659585  8d873c030000              LEA EAX,[EDI + 0x33c]
0065958b  8bb73c040000              MOV ESI,dword ptr [EDI + 0x43c]
00659591  8985acfcffff              MOV dword ptr [EBP + 0xfffffcac],EAX
00659597  eb06                      JMP 0x0065959f
00659599  898dacfcffff              MOV dword ptr [EBP + 0xfffffcac],ECX
0065959f  8bc2                      MOV EAX,EDX
006595a1  83e020                    AND EAX,0x20
006595a4  83c800                    OR EAX,0x0
006595a7  0f84b7000000              JZ 0x00659664
006595ad  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
006595b5  8d8d9cfbffff              LEA ECX,[EBP + 0xfffffb9c]
006595bb  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
006595c2  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
006595ca  e8c1683b00                CALL 0x00a0fe90
006595cf  8d8d9cfbffff              LEA ECX,[EBP + 0xfffffb9c]
006595d5  e8e6693b00                CALL 0x00a0ffc0
006595da  817f3490030000            CMP dword ptr [EDI + 0x34],0x390
006595e1  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006595e9  7508                      JNZ 0x006595f3
006595eb  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
006595f3  660f6e8748040000          MOVD XMM0,dword ptr [EDI + 0x448]
006595fb  0f5bc0                    CVTDQ2PS XMM0,XMM0
006595fe  f30f5887a4030000          ADDSS XMM0,dword ptr [EDI + 0x3a4]
00659606  f30f59c1                  MULSS XMM0,XMM1
0065960a  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
00659612  f30f58c0                  ADDSS XMM0,XMM0
00659616  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
0065961e  e82ddbdbff                CALL 0x00417150
00659623  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0065962b  8d8588fbffff              LEA EAX,[EBP + 0xfffffb88]
00659631  50                        PUSH EAX
00659632  8d85e0faffff              LEA EAX,[EBP + 0xfffffae0]
00659638  50                        PUSH EAX
00659639  8d8d9cfbffff              LEA ECX,[EBP + 0xfffffb9c]
0065963f  f30f118588fbffff          MOVSS dword ptr [EBP + 0xfffffb88],XMM0
00659647  e8946e3b00                CALL 0x00a104e0
0065964c  8b8dacfcffff              MOV ECX,dword ptr [EBP + 0xfffffcac]
00659652  50                        PUSH EAX
00659653  e8f86d3b00                CALL 0x00a10450
00659658  8b9738040000              MOV EDX,dword ptr [EDI + 0x438]
0065965e  8bb73c040000              MOV ESI,dword ptr [EDI + 0x43c]
00659664  8bc2                      MOV EAX,EDX
00659666  89b56cfcffff              MOV dword ptr [EBP + 0xfffffc6c],ESI
0065966c  2500004000                AND EAX,0x400000
00659671  8db760030000              LEA ESI,[EDI + 0x360]
00659677  83c800                    OR EAX,0x0
0065967a  0f84ee000000              JZ 0x0065976e
00659680  f30f1016                  MOVSS XMM2,dword ptr [ESI]
00659684  8d8dc8fbffff              LEA ECX,[EBP + 0xfffffbc8]
0065968a  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00659691  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00659699  e8f2673b00                CALL 0x00a0fe90
0065969e  8d8dc8fbffff              LEA ECX,[EBP + 0xfffffbc8]
006596a4  e817693b00                CALL 0x00a0ffc0
006596a9  660f6e8748040000          MOVD XMM0,dword ptr [EDI + 0x448]
006596b1  8d95c4fcffff              LEA EDX,[EBP + 0xfffffcc4]
006596b7  0f5bc0                    CVTDQ2PS XMM0,XMM0
006596ba  8d8dbcfcffff              LEA ECX,[EBP + 0xfffffcbc]
006596c0  c785c4fcffff00008040      MOV dword ptr [EBP + 0xfffffcc4],0x40800000
006596ca  f30f5887a4030000          ADDSS XMM0,dword ptr [EDI + 0x3a4]
006596d2  f30f5905bca0ba00          MULSS XMM0,dword ptr [0x00baa0bc]
006596da  f30f1185bcfcffff          MOVSS dword ptr [EBP + 0xfffffcbc],XMM0
006596e2  e89930dbff                CALL 0x0040c780
006596e7  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006596eb  f30f5805fca6ba00          ADDSS XMM0,dword ptr [0x00baa6fc]
006596f3  f30f1185c4fcffff          MOVSS dword ptr [EBP + 0xfffffcc4],XMM0
006596fb  660f6e8748040000          MOVD XMM0,dword ptr [EDI + 0x448]
00659703  0f5bc0                    CVTDQ2PS XMM0,XMM0
00659706  f30f5887a4030000          ADDSS XMM0,dword ptr [EDI + 0x3a4]
0065970e  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
00659716  f30f58c0                  ADDSS XMM0,XMM0
0065971a  f30f5e05d0a8ba00          DIVSS XMM0,dword ptr [0x00baa8d0]
00659722  e829dadbff                CALL 0x00417150
00659727  f30f5985c4fcffff          MULSS XMM0,dword ptr [EBP + 0xfffffcc4]
0065972f  8d8584fbffff              LEA EAX,[EBP + 0xfffffb84]
00659735  50                        PUSH EAX
00659736  8d85c8faffff              LEA EAX,[EBP + 0xfffffac8]
0065973c  50                        PUSH EAX
0065973d  8d8dc8fbffff              LEA ECX,[EBP + 0xfffffbc8]
00659743  f30f118584fbffff          MOVSS dword ptr [EBP + 0xfffffb84],XMM0
0065974b  e8906d3b00                CALL 0x00a104e0
00659750  50                        PUSH EAX
00659751  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00659757  e8f46c3b00                CALL 0x00a10450
0065975c  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
00659762  8b9738040000              MOV EDX,dword ptr [EDI + 0x438]
00659768  89856cfcffff              MOV dword ptr [EBP + 0xfffffc6c],EAX
0065976e  81e200008000              AND EDX,0x800000
00659774  83ca00                    OR EDX,0x0
00659777  0f84b9000000              JZ 0x00659836
0065977d  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
00659785  e8c6c2ddff                CALL 0x00435a50
0065978a  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
00659792  f30f1185c4fcffff          MOVSS dword ptr [EBP + 0xfffffcc4],XMM0
0065979a  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
006597a2  e8a9c2ddff                CALL 0x00435a50
006597a7  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
006597af  f30f108dc4fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcc4]
006597b7  8bcf                      MOV ECX,EDI
006597b9  f30f5ec8                  DIVSS XMM1,XMM0
006597bd  f30f2cc1                  CVTTSS2SI EAX,XMM1
006597c1  8985c4fcffff              MOV dword ptr [EBP + 0xfffffcc4],EAX
006597c7  e844040500                CALL 0x006a9c10
006597cc  83f801                    CMP EAX,0x1
006597cf  7510                      JNZ 0x006597e1
006597d1  51                        PUSH ECX
006597d2  c7042400003442            MOV dword ptr [ESP],0x42340000
006597d9  8d85b8faffff              LEA EAX,[EBP + 0xfffffab8]
006597df  eb45                      JMP 0x00659826
006597e1  8bcf                      MOV ECX,EDI
006597e3  e8c8c5ddff                CALL 0x00435db0
006597e8  85c0                      TEST EAX,EAX
006597ea  7e4a                      JLE 0x00659836
006597ec  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
006597f4  b91e000000                MOV ECX,0x1e
006597f9  99                        CDQ
006597fa  f7f9                      IDIV ECX
006597fc  3b95c4fcffff              CMP EDX,dword ptr [EBP + 0xfffffcc4]
00659802  7510                      JNZ 0x00659814
00659804  51                        PUSH ECX
00659805  c70424000007c3            MOV dword ptr [ESP],0xc3070000
0065980c  8d8588faffff              LEA EAX,[EBP + 0xfffffa88]
00659812  eb12                      JMP 0x00659826
00659814  85d2                      TEST EDX,EDX
00659816  751e                      JNZ 0x00659836
00659818  51                        PUSH ECX
00659819  c7042400000743            MOV dword ptr [ESP],0x43070000
00659820  8d8580faffff              LEA EAX,[EBP + 0xfffffa80]
00659826  50                        PUSH EAX
00659827  8bce                      MOV ECX,ESI
00659829  e8b26a3b00                CALL 0x00a102e0
0065982e  50                        PUSH EAX
0065982f  8bce                      MOV ECX,ESI
00659831  e87a3b1800                CALL 0x007dd3b0
00659836  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
0065983c  2500000002                AND EAX,0x2000000
00659841  83c800                    OR EAX,0x0
00659844  0f84b9000000              JZ 0x00659903
0065984a  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
00659852  e8f9c1ddff                CALL 0x00435a50
00659857  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
0065985f  f30f1185c4fcffff          MOVSS dword ptr [EBP + 0xfffffcc4],XMM0
00659867  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0065986f  e8dcc1ddff                CALL 0x00435a50
00659874  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0065987c  f30f108dc4fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcc4]
00659884  8bcf                      MOV ECX,EDI
00659886  f30f5ec8                  DIVSS XMM1,XMM0
0065988a  f30f2cc1                  CVTTSS2SI EAX,XMM1
0065988e  8985c4fcffff              MOV dword ptr [EBP + 0xfffffcc4],EAX
00659894  e877030500                CALL 0x006a9c10
00659899  83f801                    CMP EAX,0x1
0065989c  7510                      JNZ 0x006598ae
0065989e  51                        PUSH ECX
0065989f  c7042400003442            MOV dword ptr [ESP],0x42340000
006598a6  8d8570faffff              LEA EAX,[EBP + 0xfffffa70]
006598ac  eb45                      JMP 0x006598f3
006598ae  8bcf                      MOV ECX,EDI
006598b0  e8fbc4ddff                CALL 0x00435db0
006598b5  85c0                      TEST EAX,EAX
006598b7  7e4a                      JLE 0x00659903
006598b9  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
006598c1  b90f000000                MOV ECX,0xf
006598c6  99                        CDQ
006598c7  f7f9                      IDIV ECX
006598c9  3b95c4fcffff              CMP EDX,dword ptr [EBP + 0xfffffcc4]
006598cf  7510                      JNZ 0x006598e1
006598d1  51                        PUSH ECX
006598d2  c704240000b4c2            MOV dword ptr [ESP],0xc2b40000
006598d9  8d85f0faffff              LEA EAX,[EBP + 0xfffffaf0]
006598df  eb12                      JMP 0x006598f3
006598e1  85d2                      TEST EDX,EDX
006598e3  751e                      JNZ 0x00659903
006598e5  51                        PUSH ECX
006598e6  c704240000b442            MOV dword ptr [ESP],0x42b40000
006598ed  8d85e8faffff              LEA EAX,[EBP + 0xfffffae8]
006598f3  50                        PUSH EAX
006598f4  8bce                      MOV ECX,ESI
006598f6  e8e5693b00                CALL 0x00a102e0
006598fb  50                        PUSH EAX
006598fc  8bce                      MOV ECX,ESI
006598fe  e8ad3a1800                CALL 0x007dd3b0
00659903  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00659909  2500000004                AND EAX,0x4000000
0065990e  83c800                    OR EAX,0x0
00659911  0f8483000000              JZ 0x0065999a
00659917  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0065991d  85c9                      TEST ECX,ECX
0065991f  7479                      JZ 0x0065999a
00659921  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
00659927  50                        PUSH EAX
00659928  e863d9dbff                CALL 0x00417290
0065992d  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00659933  51                        PUSH ECX
00659934  8d8d08fcffff              LEA ECX,[EBP + 0xfffffc08]
0065993a  51                        PUSH ECX
0065993b  8bc8                      MOV ECX,EAX
0065993d  e83e6b3b00                CALL 0x00a10480
00659942  8bce                      MOV ECX,ESI
00659944  e857653b00                CALL 0x00a0fea0
00659949  51                        PUSH ECX
0065994a  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
00659950  d91c24                    FSTP dword ptr [ESP]
00659953  50                        PUSH EAX
00659954  8d8d08fcffff              LEA ECX,[EBP + 0xfffffc08]
0065995a  e8a1673b00                CALL 0x00a10100
0065995f  50                        PUSH EAX
00659960  8bce                      MOV ECX,ESI
00659962  e8493a1800                CALL 0x007dd3b0
00659967  8d8d08fcffff              LEA ECX,[EBP + 0xfffffc08]
0065996d  e85e653b00                CALL 0x00a0fed0
00659972  d99dbcfcffff              FSTP dword ptr [EBP + 0xfffffcbc]
00659978  8bce                      MOV ECX,ESI
0065997a  e851653b00                CALL 0x00a0fed0
0065997f  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
00659985  f30f1085c4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc4]
0065998d  0f2f85bcfcffff            COMISS XMM0,dword ptr [EBP + 0xfffffcbc]
00659994  0f87cf97ffff              JA 0x00653169
0065999a  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
006599a0  33c0                      XOR EAX,EAX
006599a2  81e100001000              AND ECX,0x100000
006599a8  0bc1                      OR EAX,ECX
006599aa  0f849e000000              JZ 0x00659a4e
006599b0  8d873c030000              LEA EAX,[EDI + 0x33c]
006599b6  50                        PUSH EAX
006599b7  8d8570fcffff              LEA EAX,[EBP + 0xfffffc70]
006599bd  8d8f34030000              LEA ECX,[EDI + 0x334]
006599c3  50                        PUSH EAX
006599c4  e8b76a3b00                CALL 0x00a10480
006599c9  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
006599cf  e8cc643b00                CALL 0x00a0fea0
006599d4  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
006599dc  d99db4fcffff              FSTP dword ptr [EBP + 0xfffffcb4]
006599e2  0f2f85b4fcffff            COMISS XMM0,dword ptr [EBP + 0xfffffcb4]
006599e9  7609                      JBE 0x006599f4
006599eb  8bcf                      MOV ECX,EDI
006599ed  e86eb2deff                CALL 0x00444c60
006599f2  eb5a                      JMP 0x00659a4e
006599f4  8d85b4fcffff              LEA EAX,[EBP + 0xfffffcb4]
006599fa  50                        PUSH EAX
006599fb  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
00659a01  e8ca6b3b00                CALL 0x00a105d0
00659a06  6a00                      PUSH 0x0
00659a08  8d8724040000              LEA EAX,[EDI + 0x424]
00659a0e  50                        PUSH EAX
00659a0f  8d8510fbffff              LEA EAX,[EBP + 0xfffffb10]
00659a15  50                        PUSH EAX
00659a16  8d8d70fcffff              LEA ECX,[EBP + 0xfffffc70]
00659a1c  e8bf6a3b00                CALL 0x00a104e0
00659a21  50                        PUSH EAX
00659a22  8bcf                      MOV ECX,EDI
00659a24  e8277addff                CALL 0x00431450
00659a29  f30f100544aaba00          MOVSS XMM0,dword ptr [0x00baaa44]
00659a31  0f2f87a4030000            COMISS XMM0,dword ptr [EDI + 0x3a4]
00659a38  7614                      JBE 0x00659a4e
00659a3a  c7871404000000000000      MOV dword ptr [EDI + 0x414],0x0
00659a44  c78710040000000070c1      MOV dword ptr [EDI + 0x410],0xc1700000
00659a4e  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00659a54  2500000008                AND EAX,0x8000000
00659a59  83c800                    OR EAX,0x0
00659a5c  0f84ae000000              JZ 0x00659b10
00659a62  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00659a6a  f30f10872c040000          MOVSS XMM0,dword ptr [EDI + 0x42c]
00659a72  e839b20200                CALL 0x00684cb0
00659a77  8d8574fbffff              LEA EAX,[EBP + 0xfffffb74]
00659a7d  f30f118574fbffff          MOVSS dword ptr [EBP + 0xfffffb74],XMM0
00659a85  50                        PUSH EAX
00659a86  8bce                      MOV ECX,ESI
00659a88  e8b36a3b00                CALL 0x00a10540
00659a8d  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00659a90  3d97010000                CMP EAX,0x197
00659a95  7536                      JNZ 0x00659acd
00659a97  8bce                      MOV ECX,ESI
00659a99  e802643b00                CALL 0x00a0fea0
00659a9e  f30f100d04a8ba00          MOVSS XMM1,dword ptr [0x00baa804]
00659aa6  d99dc4fcffff              FSTP dword ptr [EBP + 0xfffffcc4]
00659aac  f30f1085c4fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcc4]
00659ab4  0f2fc1                    COMISS XMM0,XMM1
00659ab7  7657                      JBE 0x00659b10
00659ab9  f30f5ec8                  DIVSS XMM1,XMM0
00659abd  8d8504fcffff              LEA EAX,[EBP + 0xfffffc04]
00659ac3  f30f118d04fcffff          MOVSS dword ptr [EBP + 0xfffffc04],XMM1
00659acb  eb3b                      JMP 0x00659b08
00659acd  3d78030000                CMP EAX,0x378
00659ad2  753c                      JNZ 0x00659b10
00659ad4  8bce                      MOV ECX,ESI
00659ad6  e8c5633b00                CALL 0x00a0fea0
00659adb  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00659ae3  d99d04fcffff              FSTP dword ptr [EBP + 0xfffffc04]
00659ae9  f30f108504fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc04]
00659af1  0f2fc1                    COMISS XMM0,XMM1
00659af4  761a                      JBE 0x00659b10
00659af6  f30f5ec8                  DIVSS XMM1,XMM0
00659afa  8d8580fbffff              LEA EAX,[EBP + 0xfffffb80]
00659b00  f30f118d80fbffff          MOVSS dword ptr [EBP + 0xfffffb80],XMM1
00659b08  50                        PUSH EAX
00659b09  8bce                      MOV ECX,ESI
00659b0b  e8306a3b00                CALL 0x00a10540
00659b10  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
00659b16  8bc1                      MOV EAX,ECX
00659b18  8b973c040000              MOV EDX,dword ptr [EDI + 0x43c]
00659b1e  2500000010                AND EAX,0x10000000
00659b23  83c800                    OR EAX,0x0
00659b26  743f                      JZ 0x00659b67
00659b28  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00659b30  f30f5e872c040000          DIVSS XMM0,dword ptr [EDI + 0x42c]
00659b38  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00659b40  e86bb10200                CALL 0x00684cb0
00659b45  8d857cfbffff              LEA EAX,[EBP + 0xfffffb7c]
00659b4b  f30f11857cfbffff          MOVSS dword ptr [EBP + 0xfffffb7c],XMM0
00659b53  50                        PUSH EAX
00659b54  8bce                      MOV ECX,ESI
00659b56  e8e5693b00                CALL 0x00a10540
00659b5b  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
00659b61  8b973c040000              MOV EDX,dword ptr [EDI + 0x43c]
00659b67  89956cfcffff              MOV dword ptr [EBP + 0xfffffc6c],EDX
00659b6d  33c0                      XOR EAX,EAX
00659b6f  83e220                    AND EDX,0x20
00659b72  0bc2                      OR EAX,EDX
00659b74  0f8499000000              JZ 0x00659c13
00659b7a  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00659b82  8d95c4fcffff              LEA EDX,[EBP + 0xfffffcc4]
00659b88  f30f5e057ca8ba00          DIVSS XMM0,dword ptr [0x00baa87c]
00659b90  8d8dbcfcffff              LEA ECX,[EBP + 0xfffffcbc]
00659b96  c785bcfcffff0000803f      MOV dword ptr [EBP + 0xfffffcbc],0x3f800000
00659ba0  f30f1185c4fcffff          MOVSS dword ptr [EBP + 0xfffffcc4],XMM0
00659ba8  e8d32bdbff                CALL 0x0040c780
00659bad  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00659bb5  8d8f9c030000              LEA ECX,[EDI + 0x39c]
00659bbb  f30f108f2c040000          MOVSS XMM1,dword ptr [EDI + 0x42c]
00659bc3  32c9                      XOR CL,CL
00659bc5  f30f1185acfcffff          MOVSS dword ptr [EBP + 0xfffffcac],XMM0
00659bcd  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00659bd1  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00659bd9  e8e2b93b00                CALL 0x00a155c0
00659bde  f30f108dacfcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcac]
00659be6  e8c5b00200                CALL 0x00684cb0
00659beb  8d8578fbffff              LEA EAX,[EBP + 0xfffffb78]
00659bf1  f30f118578fbffff          MOVSS dword ptr [EBP + 0xfffffb78],XMM0
00659bf9  50                        PUSH EAX
00659bfa  8bce                      MOV ECX,ESI
00659bfc  e83f693b00                CALL 0x00a10540
00659c01  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
00659c07  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
00659c0d  89856cfcffff              MOV dword ptr [EBP + 0xfffffc6c],EAX
00659c13  81e100000020              AND ECX,0x20000000
00659c19  83c900                    OR ECX,0x0
00659c1c  0f8414030000              JZ 0x00659f36
00659c22  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
00659c2a  0f2f057ca8ba00            COMISS XMM0,dword ptr [0x00baa87c]
00659c31  0f86ff020000              JBE 0x00659f36
00659c37  8bcf                      MOV ECX,EDI
00659c39  e872c1ddff                CALL 0x00435db0
00659c3e  85c0                      TEST EAX,EAX
00659c40  7e0e                      JLE 0x00659c50
00659c42  b91e000000                MOV ECX,0x1e
00659c47  e8c4530200                CALL 0x0067f010
00659c4c  85c0                      TEST EAX,EAX
00659c4e  740a                      JZ 0x00659c5a
00659c50  837f343e                  CMP dword ptr [EDI + 0x34],0x3e
00659c54  0f85dc020000              JNZ 0x00659f36
00659c5a  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00659c62  8d4dd4                    LEA ECX,[EBP + -0x2c]
00659c65  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00659c6c  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
00659c74  e817623b00                CALL 0x00a0fe90
00659c79  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
00659c81  8d4ddc                    LEA ECX,[EBP + -0x24]
00659c84  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00659c8b  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00659c93  e8f8613b00                CALL 0x00a0fe90
00659c98  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00659ca0  8d75d4                    LEA ESI,[EBP + -0x2c]
00659ca3  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00659ca8  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
00659cb0  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00659cb5  c78538ffffff00000400      MOV dword ptr [EBP + 0xffffff38],0x40000
00659cbf  c7853cffffff00000800      MOV dword ptr [EBP + 0xffffff3c],0x80000
00659cc9  c78540ffffff00002000      MOV dword ptr [EBP + 0xffffff40],0x200000
00659cd3  c785acfcffff00000000      MOV dword ptr [EBP + 0xfffffcac],0x0
00659cdd  89b5c4fcffff              MOV dword ptr [EBP + 0xfffffcc4],ESI
00659ce3  8bce                      MOV ECX,ESI
00659ce5  e8e6613b00                CALL 0x00a0fed0
00659cea  f30f1005a0a8ba00          MOVSS XMM0,dword ptr [0x00baa8a0]
00659cf2  d99dbcfcffff              FSTP dword ptr [EBP + 0xfffffcbc]
00659cf8  0f2f85bcfcffff            COMISS XMM0,dword ptr [EBP + 0xfffffcbc]
00659cff  7623                      JBE 0x00659d24
00659d01  8d8500fcffff              LEA EAX,[EBP + 0xfffffc00]
00659d07  c78500fcffffcdcccc3f      MOV dword ptr [EBP + 0xfffffc00],0x3fcccccd
00659d11  50                        PUSH EAX
00659d12  8d8554fbffff              LEA EAX,[EBP + 0xfffffb54]
00659d18  8bce                      MOV ECX,ESI
00659d1a  50                        PUSH EAX
00659d1b  e8c0673b00                CALL 0x00a104e0
00659d20  8bc8                      MOV ECX,EAX
00659d22  eb17                      JMP 0x00659d3b
00659d24  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
00659d27  8b06                      MOV EAX,dword ptr [ESI]
00659d29  898d98fbffff              MOV dword ptr [EBP + 0xfffffb98],ECX
00659d2f  8d8d94fbffff              LEA ECX,[EBP + 0xfffffb94]
00659d35  898594fbffff              MOV dword ptr [EBP + 0xfffffb94],EAX
00659d3b  8b01                      MOV EAX,dword ptr [ECX]
00659d3d  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
00659d40  898568fcffff              MOV dword ptr [EBP + 0xfffffc68],EAX
00659d46  898d6cfcffff              MOV dword ptr [EBP + 0xfffffc6c],ECX
00659d4c  e80f520900                CALL 0x006eef60
00659d51  8bf0                      MOV ESI,EAX
00659d53  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00659d59  8d8760030000              LEA EAX,[EDI + 0x360]
00659d5f  50                        PUSH EAX
00659d60  8d85d0fbffff              LEA EAX,[EBP + 0xfffffbd0]
00659d66  50                        PUSH EAX
00659d67  e814673b00                CALL 0x00a10480
00659d6c  6a00                      PUSH 0x0
00659d6e  680cd7c500                PUSH 0xc5d70c
00659d73  68dcd5c500                PUSH 0xc5d5dc
00659d78  6a00                      PUSH 0x0
00659d7a  56                        PUSH ESI
00659d7b  6a00                      PUSH 0x0
00659d7d  6a00                      PUSH 0x0
00659d7f  8d8d68fcffff              LEA ECX,[EBP + 0xfffffc68]
00659d85  51                        PUSH ECX
00659d86  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00659d8c  50                        PUSH EAX
00659d8d  ff772c                    PUSH dword ptr [EDI + 0x2c]
00659d90  ff7728                    PUSH dword ptr [EDI + 0x28]
00659d93  e888eddcff                CALL 0x00428b20
00659d98  50                        PUSH EAX
00659d99  e8136b4900                CALL 0x00af08b1
00659d9e  83c414                    ADD ESP,0x14
00659da1  8bf0                      MOV ESI,EAX
00659da3  8bce                      MOV ECX,ESI
00659da5  89b5bcfcffff              MOV dword ptr [EBP + 0xfffffcbc],ESI
00659dab  ff7734                    PUSH dword ptr [EDI + 0x34]
00659dae  e8fd78ddff                CALL 0x004316b0
00659db3  ff7738                    PUSH dword ptr [EDI + 0x38]
00659db6  8bce                      MOV ECX,ESI
00659db8  e8b3d2e5ff                CALL 0x004b7070
00659dbd  f30f108710040000          MOVSS XMM0,dword ptr [EDI + 0x410]
00659dc5  8d9540fcffff              LEA EDX,[EBP + 0xfffffc40]
00659dcb  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00659dd3  8d8d98fcffff              LEA ECX,[EBP + 0xfffffc98]
00659dd9  c78598fcffff0000b8c1      MOV dword ptr [EBP + 0xfffffc98],0xc1b80000
00659de3  f30f118540fcffff          MOVSS dword ptr [EBP + 0xfffffc40],XMM0
00659deb  e89029dbff                CALL 0x0040c780
00659df0  51                        PUSH ECX
00659df1  8bce                      MOV ECX,ESI
00659df3  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00659df7  f30f110424                MOVSS dword ptr [ESP],XMM0
00659dfc  e87f6adfff                CALL 0x00450880
00659e01  f30f108720040000          MOVSS XMM0,dword ptr [EDI + 0x420]
00659e09  8d9598fcffff              LEA EDX,[EBP + 0xfffffc98]
00659e0f  f30f5c0538a3ba00          SUBSS XMM0,dword ptr [0x00baa338]
00659e17  8d8d40fcffff              LEA ECX,[EBP + 0xfffffc40]
00659e1d  c78540fcffff0000803f      MOV dword ptr [EBP + 0xfffffc40],0x3f800000
00659e27  f30f118598fcffff          MOVSS dword ptr [EBP + 0xfffffc98],XMM0
00659e2f  e83c2ddcff                CALL 0x0041cb70
00659e34  51                        PUSH ECX
00659e35  8bce                      MOV ECX,ESI
00659e37  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00659e3b  f30f110424                MOVSS dword ptr [ESP],XMM0
00659e40  e85b6adfff                CALL 0x004508a0
00659e45  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00659e4d  0f2f8720040000            COMISS XMM0,dword ptr [EDI + 0x420]
00659e54  722c                      JC 0x00659e82
00659e56  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
00659e5c  81a738040000ffffffdf      AND dword ptr [EDI + 0x438],0xdfffffff
00659e66  89873c040000              MOV dword ptr [EDI + 0x43c],EAX
00659e6c  c78618040000cdcccc3d      MOV dword ptr [ESI + 0x418],0x3dcccccd
00659e76  c78614040000000040c0      MOV dword ptr [ESI + 0x414],0xc0400000
00659e80  eb11                      JMP 0x00659e93
00659e82  8b8718040000              MOV EAX,dword ptr [EDI + 0x418]
00659e88  898618040000              MOV dword ptr [ESI + 0x418],EAX
00659e8e  e84d510200                CALL 0x0067efe0
00659e93  8b8dacfcffff              MOV ECX,dword ptr [EBP + 0xfffffcac]
00659e99  33d2                      XOR EDX,EDX
00659e9b  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
00659ea1  0b973c040000              OR EDX,dword ptr [EDI + 0x43c]
00659ea7  25ffffd3ff                AND EAX,0xffd3ffff
00659eac  89963c040000              MOV dword ptr [ESI + 0x43c],EDX
00659eb2  8b8c8d38ffffff            MOV ECX,dword ptr [EBP + ECX*0x4 + 0xffffff38]
00659eb9  0bc8                      OR ECX,EAX
00659ebb  8b06                      MOV EAX,dword ptr [ESI]
00659ebd  898e38040000              MOV dword ptr [ESI + 0x438],ECX
00659ec3  8d4f48                    LEA ECX,[EDI + 0x48]
00659ec6  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
00659ec9  e842d5daff                CALL 0x00407410
00659ece  8b8dbcfcffff              MOV ECX,dword ptr [EBP + 0xfffffcbc]
00659ed4  6a01                      PUSH 0x1
00659ed6  6a00                      PUSH 0x0
00659ed8  68ff000000                PUSH 0xff
00659edd  6aff                      PUSH -0x1
00659edf  50                        PUSH EAX
00659ee0  ffd6                      CALL ESI
00659ee2  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
00659ee8  8bb5bcfcffff              MOV ESI,dword ptr [EBP + 0xfffffcbc]
00659eee  8bce                      MOV ECX,ESI
00659ef0  e8abf30400                CALL 0x006a92a0
00659ef5  8b06                      MOV EAX,dword ptr [ESI]
00659ef7  8bce                      MOV ECX,ESI
00659ef9  ff500c                    CALL dword ptr [EAX + 0xc]
00659efc  8b85acfcffff              MOV EAX,dword ptr [EBP + 0xfffffcac]
00659f02  8bb5c4fcffff              MOV ESI,dword ptr [EBP + 0xfffffcc4]
00659f08  40                        INC EAX
00659f09  83c608                    ADD ESI,0x8
00659f0c  8985acfcffff              MOV dword ptr [EBP + 0xfffffcac],EAX
00659f12  89b5c4fcffff              MOV dword ptr [EBP + 0xfffffcc4],ESI
00659f18  83f803                    CMP EAX,0x3
00659f1b  0f8cc2fdffff              JL 0x00659ce3
00659f21  8b07                      MOV EAX,dword ptr [EDI]
00659f23  8d8db4feffff              LEA ECX,[EBP + 0xfffffeb4]
00659f29  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
00659f2c  e83fbdddff                CALL 0x00435c70
00659f31  50                        PUSH EAX
00659f32  8bcf                      MOV ECX,EDI
00659f34  ffd6                      CALL ESI
00659f36  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00659f3c  e81fd9dbff                CALL 0x00417860
00659f41  68a7010000                PUSH 0x1a7
00659f46  8bc8                      MOV ECX,EAX
00659f48  e8f3e9e9ff                CALL 0x004f8940
00659f4d  84c0                      TEST AL,AL
00659f4f  7439                      JZ 0x00659f8a
00659f51  6a2c                      PUSH 0x2c
00659f53  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
00659f59  8d8d34ffffff              LEA ECX,[EBP + 0xffffff34]
00659f5f  e82cf01800                CALL 0x007e8f90
00659f64  c745fc05000000            MOV dword ptr [EBP + -0x4],0x5
00659f6b  8bc8                      MOV ECX,EAX
00659f6d  6a64                      PUSH 0x64
00659f6f  c785a8fcffff01000000      MOV dword ptr [EBP + 0xfffffca8],0x1
00659f79  e8a2f01800                CALL 0x007e9020
00659f7e  c68553fcffff01            MOV byte ptr [EBP + 0xfffffc53],0x1
00659f85  83f821                    CMP EAX,0x21
00659f88  7207                      JC 0x00659f91
00659f8a  c68553fcffff00            MOV byte ptr [EBP + 0xfffffc53],0x0
00659f91  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00659f98  f685a8fcffff01            TEST byte ptr [EBP + 0xfffffca8],0x1
00659f9f  740b                      JZ 0x00659fac
00659fa1  8d8d34ffffff              LEA ECX,[EBP + 0xffffff34]
00659fa7  e85422dbff                CALL 0x0040c200
00659fac  80bd53fcffff00            CMP byte ptr [EBP + 0xfffffc53],0x0
00659fb3  0f84a5020000              JZ 0x0065a25e
00659fb9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00659fbf  e8bcd4daff                CALL 0x00407480
00659fc4  8bc8                      MOV ECX,EAX
00659fc6  e895eadcff                CALL 0x00428a60
00659fcb  6a00                      PUSH 0x0
00659fcd  6a01                      PUSH 0x1
00659fcf  6a03                      PUSH 0x3
00659fd1  6a08                      PUSH 0x8
00659fd3  6a07                      PUSH 0x7
00659fd5  8d8dacfbffff              LEA ECX,[EBP + 0xfffffbac]
00659fdb  51                        PUSH ECX
00659fdc  8bc8                      MOV ECX,EAX
00659fde  e87d0fdcff                CALL 0x0041af60
00659fe3  c745fc06000000            MOV dword ptr [EBP + -0x4],0x6
00659fea  8d8dacfbffff              LEA ECX,[EBP + 0xfffffbac]
00659ff0  33f6                      XOR ESI,ESI
00659ff2  89b5c4fcffff              MOV dword ptr [EBP + 0xfffffcc4],ESI
00659ff8  e8f3d6dbff                CALL 0x004176f0
00659ffd  85c0                      TEST EAX,EAX
00659fff  0f8447020000              JZ 0x0065a24c
0065a005  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
0065a010  56                        PUSH ESI
0065a011  8d8dacfbffff              LEA ECX,[EBP + 0xfffffbac]
0065a017  e804d6dbff                CALL 0x00417620
0065a01c  6a00                      PUSH 0x0
0065a01e  6840d7c500                PUSH 0xc5d740
0065a023  68dcd5c500                PUSH 0xc5d5dc
0065a028  6a00                      PUSH 0x0
0065a02a  ff30                      PUSH dword ptr [EAX]
0065a02c  e880684900                CALL 0x00af08b1
0065a031  83c414                    ADD ESP,0x14
0065a034  8985a8fcffff              MOV dword ptr [EBP + 0xfffffca8],EAX
0065a03a  8bc8                      MOV ECX,EAX
0065a03c  e85f2efbff                CALL 0x0060cea0
0065a041  8b8da8fcffff              MOV ECX,dword ptr [EBP + 0xfffffca8]
0065a047  8d85d0fbffff              LEA EAX,[EBP + 0xfffffbd0]
0065a04d  50                        PUSH EAX
0065a04e  d99d98fcffff              FSTP dword ptr [EBP + 0xfffffc98]
0065a054  e837d2dbff                CALL 0x00417290
0065a059  50                        PUSH EAX
0065a05a  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0065a060  e82b5f3b00                CALL 0x00a0ff90
0065a065  f30f108598fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc98]
0065a06d  f30f59c0                  MULSS XMM0,XMM0
0065a071  d99d40fcffff              FSTP dword ptr [EBP + 0xfffffc40]
0065a077  0f2f8540fcffff            COMISS XMM0,dword ptr [EBP + 0xfffffc40]
0065a07e  0f86ae010000              JBE 0x0065a232
0065a084  8b07                      MOV EAX,dword ptr [EDI]
0065a086  8bcf                      MOV ECX,EDI
0065a088  ff5028                    CALL dword ptr [EAX + 0x28]
0065a08b  8b8da8fcffff              MOV ECX,dword ptr [EBP + 0xfffffca8]
0065a091  e80ad4dbff                CALL 0x004174a0
0065a096  8bf0                      MOV ESI,EAX
0065a098  8985b0fcffff              MOV dword ptr [EBP + 0xfffffcb0],EAX
0065a09e  85f6                      TEST ESI,ESI
0065a0a0  7445                      JZ 0x0065a0e7
0065a0a2  8bce                      MOV ECX,ESI
0065a0a4  e807d3dbff                CALL 0x004173b0
0065a0a9  33c9                      XOR ECX,ECX
0065a0ab  84c0                      TEST AL,AL
0065a0ad  0f44f1                    CMOVZ ESI,ECX
0065a0b0  89b5b0fcffff              MOV dword ptr [EBP + 0xfffffcb0],ESI
0065a0b6  85f6                      TEST ESI,ESI
0065a0b8  742d                      JZ 0x0065a0e7
0065a0ba  51                        PUSH ECX
0065a0bb  b902000000                MOV ECX,0x2
0065a0c0  e84b4f0200                CALL 0x0067f010
0065a0c5  8d0445ffffffff            LEA EAX,[EAX*0x2 + 0xffffffff]
0065a0cc  50                        PUSH EAX
0065a0cd  51                        PUSH ECX
0065a0ce  c704240000803f            MOV dword ptr [ESP],0x3f800000
0065a0d5  8d85c8fcffff              LEA EAX,[EBP + 0xfffffcc8]
0065a0db  6a01                      PUSH 0x1
0065a0dd  50                        PUSH EAX
0065a0de  8bce                      MOV ECX,ESI
0065a0e0  e8db551600                CALL 0x007bf6c0
0065a0e5  eb0b                      JMP 0x0065a0f2
0065a0e7  8d8d30fdffff              LEA ECX,[EBP + 0xfffffd30]
0065a0ed  e89e35f7ff                CALL 0x005cd690
0065a0f2  50                        PUSH EAX
0065a0f3  8d8d98fdffff              LEA ECX,[EBP + 0xfffffd98]
0065a0f9  e892130000                CALL 0x0065b490
0065a0fe  e85d4e0900                CALL 0x006eef60
0065a103  8bf0                      MOV ESI,EAX
0065a105  8d8f60030000              LEA ECX,[EDI + 0x360]
0065a10b  8d8554fbffff              LEA EAX,[EBP + 0xfffffb54]
0065a111  50                        PUSH EAX
0065a112  e849653b00                CALL 0x00a10660
0065a117  6a00                      PUSH 0x0
0065a119  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a11f  6800d9c500                PUSH 0xc5d900
0065a124  68dcd5c500                PUSH 0xc5d5dc
0065a129  6a00                      PUSH 0x0
0065a12b  56                        PUSH ESI
0065a12c  6a00                      PUSH 0x0
0065a12e  ffb5b0fcffff              PUSH dword ptr [EBP + 0xfffffcb0]
0065a134  50                        PUSH EAX
0065a135  8d873c030000              LEA EAX,[EDI + 0x33c]
0065a13b  50                        PUSH EAX
0065a13c  6a00                      PUSH 0x0
0065a13e  6a02                      PUSH 0x2
0065a140  e8dbe9dcff                CALL 0x00428b20
0065a145  50                        PUSH EAX
0065a146  e866674900                CALL 0x00af08b1
0065a14b  f30f108710040000          MOVSS XMM0,dword ptr [EDI + 0x410]
0065a153  83c410                    ADD ESP,0x10
0065a156  8bf0                      MOV ESI,EAX
0065a158  8bce                      MOV ECX,ESI
0065a15a  f30f110424                MOVSS dword ptr [ESP],XMM0
0065a15f  e85cbe0100                CALL 0x00675fc0
0065a164  f30f108714040000          MOVSS XMM0,dword ptr [EDI + 0x414]
0065a16c  51                        PUSH ECX
0065a16d  8bce                      MOV ECX,ESI
0065a16f  f30f110424                MOVSS dword ptr [ESP],XMM0
0065a174  e8f7aadeff                CALL 0x00444c70
0065a179  8b06                      MOV EAX,dword ptr [ESI]
0065a17b  f30f1085e0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde0]
0065a183  51                        PUSH ECX
0065a184  8bce                      MOV ECX,ESI
0065a186  f30f110424                MOVSS dword ptr [ESP],XMM0
0065a18b  ff5040                    CALL dword ptr [EAX + 0x40]
0065a18e  0f1005a04bc300            MOVUPS XMM0,xmmword ptr [0x00c34ba0]
0065a195  83ec10                    SUB ESP,0x10
0065a198  8bce                      MOV ECX,ESI
0065a19a  8bc4                      MOV EAX,ESP
0065a19c  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0065a19f  e8acbf0100                CALL 0x00676150
0065a1a4  f30f1085e4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffde4]
0065a1ac  51                        PUSH ECX
0065a1ad  8bce                      MOV ECX,ESI
0065a1af  f30f110424                MOVSS dword ptr [ESP],XMM0
0065a1b4  e867bf0100                CALL 0x00676120
0065a1b9  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
0065a1c1  51                        PUSH ECX
0065a1c2  8bce                      MOV ECX,ESI
0065a1c4  f30f110424                MOVSS dword ptr [ESP],XMM0
0065a1c9  e8c2aadeff                CALL 0x00444c90
0065a1ce  f30f101d64a2ba00          MOVSS XMM3,dword ptr [0x00baa264]
0065a1d6  f30f101554a1ba00          MOVSS XMM2,dword ptr [0x00baa154]
0065a1de  f30f100d80a2ba00          MOVSS XMM1,dword ptr [0x00baa280]
0065a1e6  6a74                      PUSH 0x74
0065a1e8  6a00                      PUSH 0x0
0065a1ea  6a47                      PUSH 0x47
0065a1ec  51                        PUSH ECX
0065a1ed  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
0065a1f3  c704240000803f            MOV dword ptr [ESP],0x3f800000
0065a1fa  e8d1b8ddff                CALL 0x00435ad0
0065a1ff  8b06                      MOV EAX,dword ptr [ESI]
0065a201  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
0065a207  6a01                      PUSH 0x1
0065a209  6a00                      PUSH 0x0
0065a20b  68ff000000                PUSH 0xff
0065a210  6aff                      PUSH -0x1
0065a212  51                        PUSH ECX
0065a213  8bce                      MOV ECX,ESI
0065a215  ff503c                    CALL dword ptr [EAX + 0x3c]
0065a218  ffb5b0fcffff              PUSH dword ptr [EBP + 0xfffffcb0]
0065a21e  8bce                      MOV ECX,ESI
0065a220  e87bf00400                CALL 0x006a92a0
0065a225  8b06                      MOV EAX,dword ptr [ESI]
0065a227  8bce                      MOV ECX,ESI
0065a229  ff500c                    CALL dword ptr [EAX + 0xc]
0065a22c  8bb5c4fcffff              MOV ESI,dword ptr [EBP + 0xfffffcc4]
0065a232  46                        INC ESI
0065a233  8d8dacfbffff              LEA ECX,[EBP + 0xfffffbac]
0065a239  89b5c4fcffff              MOV dword ptr [EBP + 0xfffffcc4],ESI
0065a23f  e8acd4dbff                CALL 0x004176f0
0065a244  3bf0                      CMP ESI,EAX
0065a246  0f82c4fdffff              JC 0x0065a010
0065a24c  8d8dacfbffff              LEA ECX,[EBP + 0xfffffbac]
0065a252  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0065a259  e852d3dbff                CALL 0x004175b0
0065a25e  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0065a266  8db79c030000              LEA ESI,[EDI + 0x39c]
0065a26c  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
0065a274  e837aa0200                CALL 0x00684cb0
0065a279  837f2c0f                  CMP dword ptr [EDI + 0x2c],0xf
0065a27d  8d8760030000              LEA EAX,[EDI + 0x360]
0065a283  f30f1016                  MOVSS XMM2,dword ptr [ESI]
0065a287  f30f598714040000          MULSS XMM0,dword ptr [EDI + 0x414]
0065a28f  0f28ca                    MOVAPS XMM1,XMM2
0065a292  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0065a29a  f30f58c8                  ADDSS XMM1,XMM0
0065a29e  0f28c2                    MOVAPS XMM0,XMM2
0065a2a1  f30f598718040000          MULSS XMM0,dword ptr [EDI + 0x418]
0065a2a9  f30f58c1                  ADDSS XMM0,XMM1
0065a2ad  0f28c8                    MOVAPS XMM1,XMM0
0065a2b0  f30f118714040000          MOVSS dword ptr [EDI + 0x414],XMM0
0065a2b8  f30f59ca                  MULSS XMM1,XMM2
0065a2bc  f30f588f10040000          ADDSS XMM1,dword ptr [EDI + 0x410]
0065a2c4  f30f118f10040000          MOVSS dword ptr [EDI + 0x410],XMM1
0065a2cc  7569                      JNZ 0x0065a337
0065a2ce  50                        PUSH EAX
0065a2cf  0f28d0                    MOVAPS XMM2,XMM0
0065a2d2  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
0065a2d8  e8b36fddff                CALL 0x00431290
0065a2dd  8bc8                      MOV ECX,EAX
0065a2df  e8cc6fddff                CALL 0x004312b0
0065a2e4  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
0065a2ec  8d4f48                    LEA ECX,[EDI + 0x48]
0065a2ef  f30f118598fcffff          MOVSS dword ptr [EBP + 0xfffffc98],XMM0
0065a2f7  e814cfdbff                CALL 0x00417210
0065a2fc  d88598fcffff              FADD dword ptr [EBP + 0xfffffc98]
0065a302  d99d98fcffff              FSTP dword ptr [EBP + 0xfffffc98]
0065a308  f30f108598fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc98]
0065a310  e82b840200                CALL 0x00682740
0065a315  51                        PUSH ECX
0065a316  8d4f48                    LEA ECX,[EDI + 0x48]
0065a319  f30f110424                MOVSS dword ptr [ESP],XMM0
0065a31e  e85d4bdeff                CALL 0x0043ee80
0065a323  f30f108f10040000          MOVSS XMM1,dword ptr [EDI + 0x410]
0065a32b  8d8760030000              LEA EAX,[EDI + 0x360]
0065a331  8db79c030000              LEA ESI,[EDI + 0x39c]
0065a337  80bd3ffcffff00            CMP byte ptr [EBP + 0xfffffc3f],0x0
0065a33e  8985a8fcffff              MOV dword ptr [EBP + 0xfffffca8],EAX
0065a344  0f84b9010000              JZ 0x0065a503
0065a34a  f30f108718040000          MOVSS XMM0,dword ptr [EDI + 0x418]
0065a352  0f2f0520a0ba00            COMISS XMM0,dword ptr [0x00baa020]
0065a359  7206                      JC 0x0065a361
0065a35b  f30f5906                  MULSS XMM0,dword ptr [ESI]
0065a35f  eb15                      JMP 0x0065a376
0065a361  0f2f0dc0adba00            COMISS XMM1,dword ptr [0x00baadc0]
0065a368  761c                      JBE 0x0065a386
0065a36a  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0065a36e  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0065a376  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
0065a37e  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0065a386  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a38c  e8efd0daff                CALL 0x00407480
0065a391  f30f101d80aeba00          MOVSS XMM3,dword ptr [0x00baae80]
0065a399  8db73c030000              LEA ESI,[EDI + 0x33c]
0065a39f  83ec0c                    SUB ESP,0xc
0065a3a2  8d8d68fcffff              LEA ECX,[EBP + 0xfffffc68]
0065a3a8  c7442408000048c3          MOV dword ptr [ESP + 0x8],0xc3480000
0065a3b0  c7442404000048c3          MOV dword ptr [ESP + 0x4],0xc3480000
0065a3b8  c70424000016c4            MOV dword ptr [ESP],0xc4160000
0065a3bf  56                        PUSH ESI
0065a3c0  51                        PUSH ECX
0065a3c1  8bc8                      MOV ECX,EAX
0065a3c3  e8888b1b00                CALL 0x00812f50
0065a3c8  8d8568fcffff              LEA EAX,[EBP + 0xfffffc68]
0065a3ce  8bce                      MOV ECX,ESI
0065a3d0  50                        PUSH EAX
0065a3d1  e85a623b00                CALL 0x00a10630
0065a3d6  84c0                      TEST AL,AL
0065a3d8  7439                      JZ 0x0065a413
0065a3da  56                        PUSH ESI
0065a3db  8d85d0fbffff              LEA EAX,[EBP + 0xfffffbd0]
0065a3e1  50                        PUSH EAX
0065a3e2  8d8d68fcffff              LEA ECX,[EBP + 0xfffffc68]
0065a3e8  e893603b00                CALL 0x00a10480
0065a3ed  ffb5a8fcffff              PUSH dword ptr [EBP + 0xfffffca8]
0065a3f3  8bc8                      MOV ECX,EAX
0065a3f5  e8865d3b00                CALL 0x00a10180
0065a3fa  0f57c0                    XORPS XMM0,XMM0
0065a3fd  d99d98fcffff              FSTP dword ptr [EBP + 0xfffffc98]
0065a403  0f2f8598fcffff            COMISS XMM0,dword ptr [EBP + 0xfffffc98]
0065a40a  7607                      JBE 0x0065a413
0065a40c  8b07                      MOV EAX,dword ptr [EDI]
0065a40e  8bcf                      MOV ECX,EDI
0065a410  ff5028                    CALL dword ptr [EAX + 0x28]
0065a413  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a419  e862d0daff                CALL 0x00407480
0065a41e  8bc8                      MOV ECX,EAX
0065a420  e87bd51c00                CALL 0x008279a0
0065a425  84c0                      TEST AL,AL
0065a427  0f84d6000000              JZ 0x0065a503
0065a42d  8bcf                      MOV ECX,EDI
0065a42f  e8dcf70400                CALL 0x006a9c10
0065a434  83f802                    CMP EAX,0x2
0065a437  0f8ec6000000              JLE 0x0065a503
0065a43d  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0065a445  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0065a44c  0f86b1000000              JBE 0x0065a503
0065a452  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a458  e823d0daff                CALL 0x00407480
0065a45d  8bc8                      MOV ECX,EAX
0065a45f  e85cd51c00                CALL 0x008279c0
0065a464  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0065a46c  0f2fc8                    COMISS XMM1,XMM0
0065a46f  0f868e000000              JBE 0x0065a503
0065a475  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
0065a47b  83e002                    AND EAX,0x2
0065a47e  83c800                    OR EAX,0x0
0065a481  7409                      JZ 0x0065a48c
0065a483  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
0065a48a  eb77                      JMP 0x0065a503
0065a48c  8b07                      MOV EAX,dword ptr [EDI]
0065a48e  8bcf                      MOV ECX,EDI
0065a490  ff5028                    CALL dword ptr [EAX + 0x28]
0065a493  837f2c0e                  CMP dword ptr [EDI + 0x2c],0xe
0065a497  c785a8fcffff42000000      MOV dword ptr [EBP + 0xfffffca8],0x42
0065a4a1  7533                      JNZ 0x0065a4d6
0065a4a3  817f34b7030000            CMP dword ptr [EDI + 0x34],0x3b7
0065a4aa  752a                      JNZ 0x0065a4d6
0065a4ac  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0065a4b4  51                        PUSH ECX
0065a4b5  c704240000803f            MOV dword ptr [ESP],0x3f800000
0065a4bc  8bcf                      MOV ECX,EDI
0065a4be  6a00                      PUSH 0x0
0065a4c0  6a02                      PUSH 0x2
0065a4c2  68bf020000                PUSH 0x2bf
0065a4c7  e8a4bf0500                CALL 0x006b6470
0065a4cc  c785a8fcffff43000000      MOV dword ptr [EBP + 0xfffffca8],0x43
0065a4d6  e8854a0900                CALL 0x006eef60
0065a4db  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a4e1  50                        PUSH EAX
0065a4e2  ffb5a8fcffff              PUSH dword ptr [EBP + 0xfffffca8]
0065a4e8  6a00                      PUSH 0x0
0065a4ea  6840b6c700                PUSH 0xc7b640
0065a4ef  56                        PUSH ESI
0065a4f0  6a10                      PUSH 0x10
0065a4f2  68e8030000                PUSH 0x3e8
0065a4f7  e824e6dcff                CALL 0x00428b20
0065a4fc  8bc8                      MOV ECX,EAX
0065a4fe  8b10                      MOV EDX,dword ptr [EAX]
0065a500  ff520c                    CALL dword ptr [EDX + 0xc]
0065a503  8b873c040000              MOV EAX,dword ptr [EDI + 0x43c]
0065a509  8b8f38040000              MOV ECX,dword ptr [EDI + 0x438]
0065a50f  89850cfcffff              MOV dword ptr [EBP + 0xfffffc0c],EAX
0065a515  8bc1                      MOV EAX,ECX
0065a517  2500000001                AND EAX,0x1000000
0065a51c  83c800                    OR EAX,0x0
0065a51f  0f85a0000000              JNZ 0x0065a5c5
0065a525  81e180000080              AND ECX,0x80000080
0065a52b  81f980000080              CMP ECX,0x80000080
0065a531  751c                      JNZ 0x0065a54f
0065a533  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a539  e842cfdaff                CALL 0x00407480
0065a53e  8bc8                      MOV ECX,EAX
0065a540  e8cbc1dfff                CALL 0x00456710
0065a545  84c0                      TEST AL,AL
0065a547  0f84d4000000              JZ 0x0065a621
0065a54d  eb76                      JMP 0x0065a5c5
0065a54f  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0065a555  85c9                      TEST ECX,ECX
0065a557  7414                      JZ 0x0065a56d
0065a559  6a00                      PUSH 0x0
0065a55b  6800000020                PUSH 0x20000000
0065a560  e8cbcedbff                CALL 0x00417430
0065a565  84c0                      TEST AL,AL
0065a567  0f85b4000000              JNZ 0x0065a621
0065a56d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a573  e808cfdaff                CALL 0x00407480
0065a578  8bc8                      MOV ECX,EAX
0065a57a  e851bbddff                CALL 0x004360d0
0065a57f  6a42                      PUSH 0x42
0065a581  8bc8                      MOV ECX,EAX
0065a583  e868602d00                CALL 0x009305f0
0065a588  84c0                      TEST AL,AL
0065a58a  7539                      JNZ 0x0065a5c5
0065a58c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a592  e8e9cedaff                CALL 0x00407480
0065a597  8bc8                      MOV ECX,EAX
0065a599  e832bbddff                CALL 0x004360d0
0065a59e  68e8000000                PUSH 0xe8
0065a5a3  8bc8                      MOV ECX,EAX
0065a5a5  e846602d00                CALL 0x009305f0
0065a5aa  84c0                      TEST AL,AL
0065a5ac  7517                      JNZ 0x0065a5c5
0065a5ae  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a5b4  e8c7cedaff                CALL 0x00407480
0065a5b9  8bc8                      MOV ECX,EAX
0065a5bb  e810481c00                CALL 0x0081edd0
0065a5c0  83f801                    CMP EAX,0x1
0065a5c3  755c                      JNZ 0x0065a621
0065a5c5  8b07                      MOV EAX,dword ptr [EDI]
0065a5c7  83ec2c                    SUB ESP,0x2c
0065a5ca  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0065a5d2  8bcc                      MOV ECX,ESP
0065a5d4  f30f101dcca4ba00          MOVSS XMM3,dword ptr [0x00baa4cc]
0065a5dc  0f28ca                    MOVAPS XMM1,XMM2
0065a5df  8bb5c0fcffff              MOV ESI,dword ptr [EBP + 0xfffffcc0]
0065a5e5  8b783c                    MOV EDI,dword ptr [EAX + 0x3c]
0065a5e8  6a28                      PUSH 0x28
0065a5ea  6a28                      PUSH 0x28
0065a5ec  6a28                      PUSH 0x28
0065a5ee  51                        PUSH ECX
0065a5ef  c704240000803f            MOV dword ptr [ESP],0x3f800000
0065a5f6  e8d5b4ddff                CALL 0x00435ad0
0065a5fb  8d96b8010000              LEA EDX,[ESI + 0x1b8]
0065a601  8d8d00feffff              LEA ECX,[EBP + 0xfffffe00]
0065a607  e8d4ccdaff                CALL 0x004072e0
0065a60c  83c42c                    ADD ESP,0x2c
0065a60f  8bce                      MOV ECX,ESI
0065a611  6a01                      PUSH 0x1
0065a613  6a00                      PUSH 0x0
0065a615  68ff000000                PUSH 0xff
0065a61a  6a02                      PUSH 0x2
0065a61c  50                        PUSH EAX
0065a61d  ffd7                      CALL EDI
0065a61f  8bfe                      MOV EDI,ESI
0065a621  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065a627  33c0                      XOR EAX,EAX
0065a629  83e102                    AND ECX,0x2
0065a62c  0bc1                      OR EAX,ECX
0065a62e  7464                      JZ 0x0065a694
0065a630  8b875c040000              MOV EAX,dword ptr [EDI + 0x45c]
0065a636  85c0                      TEST EAX,EAX
0065a638  7e15                      JLE 0x0065a64f
0065a63a  660f6ec8                  MOVD XMM1,EAX
0065a63e  0f57d2                    XORPS XMM2,XMM2
0065a641  0f5bc9                    CVTDQ2PS XMM1,XMM1
0065a644  8bcf                      MOV ECX,EDI
0065a646  e815210500                CALL 0x006ac760
0065a64b  85c0                      TEST EAX,EAX
0065a64d  7445                      JZ 0x0065a694
0065a64f  8bcf                      MOV ECX,EDI
0065a651  e8baf50400                CALL 0x006a9c10
0065a656  85c0                      TEST EAX,EAX
0065a658  7e3a                      JLE 0x0065a694
0065a65a  f30f108758040000          MOVSS XMM0,dword ptr [EDI + 0x458]
0065a662  51                        PUSH ECX
0065a663  8d8f60030000              LEA ECX,[EDI + 0x360]
0065a669  f30f110424                MOVSS dword ptr [ESP],XMM0
0065a66e  e83d5a3b00                CALL 0x00a100b0
0065a673  8b8754040000              MOV EAX,dword ptr [EDI + 0x454]
0065a679  83e003                    AND EAX,0x3
0065a67c  83f803                    CMP EAX,0x3
0065a67f  7413                      JZ 0x0065a694
0065a681  8b8738040000              MOV EAX,dword ptr [EDI + 0x438]
0065a687  83a73c040000fd            AND dword ptr [EDI + 0x43c],0xfffffffd
0065a68e  898738040000              MOV dword ptr [EDI + 0x438],EAX
0065a694  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065a69a  33c0                      XOR EAX,EAX
0065a69c  81e100080000              AND ECX,0x800
0065a6a2  0bc1                      OR EAX,ECX
0065a6a4  0f8494000000              JZ 0x0065a73e
0065a6aa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a6b0  e8cbcddaff                CALL 0x00407480
0065a6b5  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0065a6bd  8bc8                      MOV ECX,EAX
0065a6bf  f30f118570fcffff          MOVSS dword ptr [EBP + 0xfffffc70],XMM0
0065a6c7  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0065a6cf  f30f118574fcffff          MOVSS dword ptr [EBP + 0xfffffc74],XMM0
0065a6d7  ffb574fcffff              PUSH dword ptr [EBP + 0xfffffc74]
0065a6dd  ffb570fcffff              PUSH dword ptr [EBP + 0xfffffc70]
0065a6e3  e898601900                CALL 0x007f0780
0065a6e8  83f802                    CMP EAX,0x2
0065a6eb  7413                      JZ 0x0065a700
0065a6ed  83f803                    CMP EAX,0x3
0065a6f0  740e                      JZ 0x0065a700
0065a6f2  85c0                      TEST EAX,EAX
0065a6f4  7548                      JNZ 0x0065a73e
0065a6f6  f30f100da0adba00          MOVSS XMM1,dword ptr [0x00baada0]
0065a6fe  eb08                      JMP 0x0065a708
0065a700  f30f100d30aeba00          MOVSS XMM1,dword ptr [0x00baae30]
0065a708  f30f108710040000          MOVSS XMM0,dword ptr [EDI + 0x410]
0065a710  0f2fc1                    COMISS XMM0,XMM1
0065a713  7629                      JBE 0x0065a73e
0065a715  f30f108714040000          MOVSS XMM0,dword ptr [EDI + 0x414]
0065a71d  0f2f0530a6ba00            COMISS XMM0,dword ptr [0x00baa630]
0065a724  7618                      JBE 0x0065a73e
0065a726  f30f590574adba00          MULSS XMM0,dword ptr [0x00baad74]
0065a72e  f30f118f10040000          MOVSS dword ptr [EDI + 0x410],XMM1
0065a736  f30f118714040000          MOVSS dword ptr [EDI + 0x414],XMM0
0065a73e  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065a744  33c0                      XOR EAX,EAX
0065a746  81e100040000              AND ECX,0x400
0065a74c  0bc1                      OR EAX,ECX
0065a74e  0f84a1010000              JZ 0x0065a8f5
0065a754  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0065a75c  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0065a762  f30f118534fcffff          MOVSS dword ptr [EBP + 0xfffffc34],XMM0
0065a76a  33c0                      XOR EAX,EAX
0065a76c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0065a774  f30f118538fcffff          MOVSS dword ptr [EBP + 0xfffffc38],XMM0
0065a77c  f30f108710040000          MOVSS XMM0,dword ptr [EDI + 0x410]
0065a784  0f2f0530aeba00            COMISS XMM0,dword ptr [0x00baae30]
0065a78b  898d40fcffff              MOV dword ptr [EBP + 0xfffffc40],ECX
0065a791  0f92c0                    SETC AL
0065a794  33f6                      XOR ESI,ESI
0065a796  8d044502000000            LEA EAX,[EAX*0x2 + 0x2]
0065a79d  898500fcffff              MOV dword ptr [EBP + 0xfffffc00],EAX
0065a7a3  8d8778010000              LEA EAX,[EDI + 0x178]
0065a7a9  8bc8                      MOV ECX,EAX
0065a7ab  898598fcffff              MOV dword ptr [EBP + 0xfffffc98],EAX
0065a7b1  e8aa49ddff                CALL 0x0042f160
0065a7b6  85c0                      TEST EAX,EAX
0065a7b8  0f848b000000              JZ 0x0065a849
0065a7be  8bbd98fcffff              MOV EDI,dword ptr [EBP + 0xfffffc98]
0065a7c4  56                        PUSH ESI
0065a7c5  8bcf                      MOV ECX,EDI
0065a7c7  e88449ddff                CALL 0x0042f150
0065a7cc  8b8d40fcffff              MOV ECX,dword ptr [EBP + 0xfffffc40]
0065a7d2  50                        PUSH EAX
0065a7d3  8d857cfcffff              LEA EAX,[EBP + 0xfffffc7c]
0065a7d9  50                        PUSH EAX
0065a7da  e8415c3b00                CALL 0x00a10420
0065a7df  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a7e5  e896ccdaff                CALL 0x00407480
0065a7ea  ffb580fcffff              PUSH dword ptr [EBP + 0xfffffc80]
0065a7f0  8bc8                      MOV ECX,EAX
0065a7f2  ffb57cfcffff              PUSH dword ptr [EBP + 0xfffffc7c]
0065a7f8  e8835f1900                CALL 0x007f0780
0065a7fd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a803  e878ccdaff                CALL 0x00407480
0065a808  ffb580fcffff              PUSH dword ptr [EBP + 0xfffffc80]
0065a80e  8bc8                      MOV ECX,EAX
0065a810  ffb57cfcffff              PUSH dword ptr [EBP + 0xfffffc7c]
0065a816  e8655f1900                CALL 0x007f0780
0065a81b  3b8500fcffff              CMP EAX,dword ptr [EBP + 0xfffffc00]
0065a821  7c14                      JL 0x0065a837
0065a823  56                        PUSH ESI
0065a824  8bcf                      MOV ECX,EDI
0065a826  e82549ddff                CALL 0x0042f150
0065a82b  50                        PUSH EAX
0065a82c  8d8d34fcffff              LEA ECX,[EBP + 0xfffffc34]
0065a832  e8195c3b00                CALL 0x00a10450
0065a837  8bcf                      MOV ECX,EDI
0065a839  46                        INC ESI
0065a83a  e82149ddff                CALL 0x0042f160
0065a83f  3bf0                      CMP ESI,EAX
0065a841  7281                      JC 0x0065a7c4
0065a843  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
0065a849  6840b6c700                PUSH 0xc7b640
0065a84e  8d8d34fcffff              LEA ECX,[EBP + 0xfffffc34]
0065a854  e8d75d3b00                CALL 0x00a10630
0065a859  84c0                      TEST AL,AL
0065a85b  0f8494000000              JZ 0x0065a8f5
0065a861  8d8d34fcffff              LEA ECX,[EBP + 0xfffffc34]
0065a867  e854573b00                CALL 0x00a0ffc0
0065a86c  f30f108d34fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffc34]
0065a874  8db760030000              LEA ESI,[EDI + 0x360]
0065a87a  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0065a881  f30f108538fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc38]
0065a889  f30f598764030000          MULSS XMM0,dword ptr [EDI + 0x364]
0065a891  f30f590e                  MULSS XMM1,dword ptr [ESI]
0065a895  f30f5cc8                  SUBSS XMM1,XMM0
0065a899  0f57c0                    XORPS XMM0,XMM0
0065a89c  0f2fc1                    COMISS XMM0,XMM1
0065a89f  f30f118d98fcffff          MOVSS dword ptr [EBP + 0xfffffc98],XMM1
0065a8a7  764c                      JBE 0x0065a8f5
0065a8a9  8d8598fcffff              LEA EAX,[EBP + 0xfffffc98]
0065a8af  50                        PUSH EAX
0065a8b0  8d85d0fbffff              LEA EAX,[EBP + 0xfffffbd0]
0065a8b6  50                        PUSH EAX
0065a8b7  8d8d34fcffff              LEA ECX,[EBP + 0xfffffc34]
0065a8bd  e81e5c3b00                CALL 0x00a104e0
0065a8c2  8d8d40fcffff              LEA ECX,[EBP + 0xfffffc40]
0065a8c8  c78540fcffff00000040      MOV dword ptr [EBP + 0xfffffc40],0x40000000
0065a8d2  51                        PUSH ECX
0065a8d3  8d8d54fbffff              LEA ECX,[EBP + 0xfffffb54]
0065a8d9  51                        PUSH ECX
0065a8da  8bc8                      MOV ECX,EAX
0065a8dc  e8ff5b3b00                CALL 0x00a104e0
0065a8e1  50                        PUSH EAX
0065a8e2  8bce                      MOV ECX,ESI
0065a8e4  e8675b3b00                CALL 0x00a10450
0065a8e9  56                        PUSH ESI
0065a8ea  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0065a8f0  e85b5b3b00                CALL 0x00a10450
0065a8f5  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065a8fb  33c0                      XOR EAX,EAX
0065a8fd  83e101                    AND ECX,0x1
0065a900  0bc1                      OR EAX,ECX
0065a902  745a                      JZ 0x0065a95e
0065a904  8bcf                      MOV ECX,EDI
0065a906  e805f30400                CALL 0x006a9c10
0065a90b  85c0                      TEST EAX,EAX
0065a90d  7e4f                      JLE 0x0065a95e
0065a90f  8b875c040000              MOV EAX,dword ptr [EDI + 0x45c]
0065a915  85c0                      TEST EAX,EAX
0065a917  7e15                      JLE 0x0065a92e
0065a919  660f6ec8                  MOVD XMM1,EAX
0065a91d  0f57d2                    XORPS XMM2,XMM2
0065a920  0f5bc9                    CVTDQ2PS XMM1,XMM1
0065a923  8bcf                      MOV ECX,EDI
0065a925  e8361e0500                CALL 0x006ac760
0065a92a  85c0                      TEST EAX,EAX
0065a92c  7430                      JZ 0x0065a95e
0065a92e  8b9738040000              MOV EDX,dword ptr [EDI + 0x438]
0065a934  8bb73c040000              MOV ESI,dword ptr [EDI + 0x43c]
0065a93a  8b8750040000              MOV EAX,dword ptr [EDI + 0x450]
0065a940  8b8f54040000              MOV ECX,dword ptr [EDI + 0x454]
0065a946  898738040000              MOV dword ptr [EDI + 0x438],EAX
0065a94c  898f3c040000              MOV dword ptr [EDI + 0x43c],ECX
0065a952  899750040000              MOV dword ptr [EDI + 0x450],EDX
0065a958  89b754040000              MOV dword ptr [EDI + 0x454],ESI
0065a95e  8bcf                      MOV ECX,EDI
0065a960  e89b0b0000                CALL 0x0065b500
0065a965  8bcf                      MOV ECX,EDI
0065a967  e844b4ddff                CALL 0x00435db0
0065a96c  85c0                      TEST EAX,EAX
0065a96e  0f8e7f010000              JLE 0x0065aaf3
0065a974  b903000000                MOV ECX,0x3
0065a979  e892460200                CALL 0x0067f010
0065a97e  85c0                      TEST EAX,EAX
0065a980  0f856d010000              JNZ 0x0065aaf3
0065a986  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a98c  e8cfcedbff                CALL 0x00417860
0065a991  684f010000                PUSH 0x14f
0065a996  8bc8                      MOV ECX,EAX
0065a998  e8a3dfe9ff                CALL 0x004f8940
0065a99d  84c0                      TEST AL,AL
0065a99f  0f844e010000              JZ 0x0065aaf3
0065a9a5  f30f1005b8acba00          MOVSS XMM0,dword ptr [0x00baacb8]
0065a9ad  33f6                      XOR ESI,ESI
0065a9af  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a9b5  f30f1185b0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM0
0065a9bd  89b5c4fcffff              MOV dword ptr [EBP + 0xfffffcc4],ESI
0065a9c3  e808cfdbff                CALL 0x004178d0
0065a9c8  85c0                      TEST EAX,EAX
0065a9ca  0f8423010000              JZ 0x0065aaf3
0065a9d0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065a9d6  56                        PUSH ESI
0065a9d7  e894cedbff                CALL 0x00417870
0065a9dc  6a00                      PUSH 0x0
0065a9de  684f010000                PUSH 0x14f
0065a9e3  8bc8                      MOV ECX,EAX
0065a9e5  8985a8fcffff              MOV dword ptr [EBP + 0xfffffca8],EAX
0065a9eb  e8f05c1100                CALL 0x007706e0
0065a9f0  84c0                      TEST AL,AL
0065a9f2  744f                      JZ 0x0065aa43
0065a9f4  8b8da8fcffff              MOV ECX,dword ptr [EBP + 0xfffffca8]
0065a9fa  8d85d0fbffff              LEA EAX,[EBP + 0xfffffbd0]
0065aa00  50                        PUSH EAX
0065aa01  e88ac8dbff                CALL 0x00417290
0065aa06  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0065aa0c  51                        PUSH ECX
0065aa0d  8bc8                      MOV ECX,EAX
0065aa0f  e87c553b00                CALL 0x00a0ff90
0065aa14  f30f108db0fcffff          MOVSS XMM1,dword ptr [EBP + 0xfffffcb0]
0065aa1c  d99d98fcffff              FSTP dword ptr [EBP + 0xfffffc98]
0065aa22  f30f108598fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc98]
0065aa2a  0f2fc8                    COMISS XMM1,XMM0
0065aa2d  7614                      JBE 0x0065aa43
0065aa2f  8b85a8fcffff              MOV EAX,dword ptr [EBP + 0xfffffca8]
0065aa35  f30f1185b0fcffff          MOVSS dword ptr [EBP + 0xfffffcb0],XMM0
0065aa3d  8985c4fcffff              MOV dword ptr [EBP + 0xfffffcc4],EAX
0065aa43  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065aa49  46                        INC ESI
0065aa4a  e881cedbff                CALL 0x004178d0
0065aa4f  3bf0                      CMP ESI,EAX
0065aa51  0f8279ffffff              JC 0x0065a9d0
0065aa57  8bb5c4fcffff              MOV ESI,dword ptr [EBP + 0xfffffcc4]
0065aa5d  85f6                      TEST ESI,ESI
0065aa5f  0f848e000000              JZ 0x0065aaf3
0065aa65  f30f100d24acba00          MOVSS XMM1,dword ptr [0x00baac24]
0065aa6d  f30f1085b0fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffcb0]
0065aa75  0f2fc8                    COMISS XMM1,XMM0
0065aa78  7679                      JBE 0x0065aaf3
0065aa7a  e8d1afddff                CALL 0x00435a50
0065aa7f  8d85d0fbffff              LEA EAX,[EBP + 0xfffffbd0]
0065aa85  f30f118598fcffff          MOVSS dword ptr [EBP + 0xfffffc98],XMM0
0065aa8d  50                        PUSH EAX
0065aa8e  8bce                      MOV ECX,ESI
0065aa90  e8fbc7dbff                CALL 0x00417290
0065aa95  50                        PUSH EAX
0065aa96  8d8554fbffff              LEA EAX,[EBP + 0xfffffb54]
0065aa9c  50                        PUSH EAX
0065aa9d  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0065aaa3  e8d8593b00                CALL 0x00a10480
0065aaa8  8bf0                      MOV ESI,EAX
0065aaaa  e831450200                CALL 0x0067efe0
0065aaaf  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
0065aab7  8d8510fbffff              LEA EAX,[EBP + 0xfffffb10]
0065aabd  f30f5c8d98fcffff          SUBSS XMM1,dword ptr [EBP + 0xfffffc98]
0065aac5  51                        PUSH ECX
0065aac6  8bce                      MOV ECX,ESI
0065aac8  f30f59c1                  MULSS XMM0,XMM1
0065aacc  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0065aad4  f30f5805d0a0ba00          ADDSS XMM0,dword ptr [0x00baa0d0]
0065aadc  f30f110424                MOVSS dword ptr [ESP],XMM0
0065aae1  50                        PUSH EAX
0065aae2  e819563b00                CALL 0x00a10100
0065aae7  50                        PUSH EAX
0065aae8  8d8f60030000              LEA ECX,[EDI + 0x360]
0065aaee  e85d593b00                CALL 0x00a10450
0065aaf3  f30f108f10040000          MOVSS XMM1,dword ptr [EDI + 0x410]
0065aafb  0f2f0da0adba00            COMISS XMM1,dword ptr [0x00baada0]
0065ab02  7712                      JA 0x0065ab16
0065ab04  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0065ab0b  7410                      JZ 0x0065ab1d
0065ab0d  0f2f0d30aeba00            COMISS XMM1,dword ptr [0x00baae30]
0065ab14  7207                      JC 0x0065ab1d
0065ab16  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
0065ab1d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065ab23  e838cddbff                CALL 0x00417860
0065ab28  6802020000                PUSH 0x202
0065ab2d  8bc8                      MOV ECX,EAX
0065ab2f  e80cdee9ff                CALL 0x004f8940
0065ab34  84c0                      TEST AL,AL
0065ab36  747e                      JZ 0x0065abb6
0065ab38  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0065ab3e  e81dcddbff                CALL 0x00417860
0065ab43  8bc8                      MOV ECX,EAX
0065ab45  e8f63e3600                CALL 0x009bea40
0065ab4a  f30f2cc0                  CVTTSS2SI EAX,XMM0
0065ab4e  b943000000                MOV ECX,0x43
0065ab53  c78598fbffff32000000      MOV dword ptr [EBP + 0xfffffb98],0x32
0065ab5d  8d9538fbffff              LEA EDX,[EBP + 0xfffffb38]
0065ab63  2bc8                      SUB ECX,EAX
0065ab65  898d38fbffff              MOV dword ptr [EBP + 0xfffffb38],ECX
0065ab6b  8d8d98fbffff              LEA ECX,[EBP + 0xfffffb98]
0065ab71  e80a20dcff                CALL 0x0041cb80
0065ab76  8b08                      MOV ECX,dword ptr [EAX]
0065ab78  e893440200                CALL 0x0067f010
0065ab7d  85c0                      TEST EAX,EAX
0065ab7f  7535                      JNZ 0x0065abb6
0065ab81  388773010000              CMP byte ptr [EDI + 0x173],AL
0065ab87  752d                      JNZ 0x0065abb6
0065ab89  8d873c030000              LEA EAX,[EDI + 0x33c]
0065ab8f  50                        PUSH EAX
0065ab90  8d8f60040000              LEA ECX,[EDI + 0x460]
0065ab96  e815281800                CALL 0x007dd3b0
0065ab9b  6a00                      PUSH 0x0
0065ab9d  6a20                      PUSH 0x20
0065ab9f  8bcf                      MOV ECX,EDI
0065aba1  e83ac8dbff                CALL 0x004173e0
0065aba6  6840b6c700                PUSH 0xc7b640
0065abab  8d8f60030000              LEA ECX,[EDI + 0x360]
0065abb1  e8fa271800                CALL 0x007dd3b0
0065abb6  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065abbc  33c0                      XOR EAX,EAX
0065abbe  81e100000002              AND ECX,0x2000000
0065abc4  0bc1                      OR EAX,ECX
0065abc6  0f848c000000              JZ 0x0065ac58
0065abcc  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0065abd6  83c748                    ADD EDI,0x48
0065abd9  8bcf                      MOV ECX,EDI
0065abdb  e830c8daff                CALL 0x00407410
0065abe0  8bcf                      MOV ECX,EDI
0065abe2  8bf0                      MOV ESI,EAX
0065abe4  e827c8daff                CALL 0x00407410
0065abe9  8bc8                      MOV ECX,EAX
0065abeb  e880c6daff                CALL 0x00407270
0065abf0  8b8548fcffff              MOV EAX,dword ptr [EBP + 0xfffffc48]
0065abf6  51                        PUSH ECX
0065abf7  8bce                      MOV ECX,ESI
0065abf9  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0065abfd  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0065ac05  f30f118548fcffff          MOVSS dword ptr [EBP + 0xfffffc48],XMM0
0065ac0d  d8a548fcffff              FSUB dword ptr [EBP + 0xfffffc48]
0065ac13  d99d48fcffff              FSTP dword ptr [EBP + 0xfffffc48]
0065ac19  f30f108548fcffff          MOVSS XMM0,dword ptr [EBP + 0xfffffc48]
0065ac21  f30f110424                MOVSS dword ptr [ESP],XMM0
0065ac26  e855c6daff                CALL 0x00407280
0065ac2b  8bcf                      MOV ECX,EDI
0065ac2d  e8dec7daff                CALL 0x00407410
0065ac32  8bc8                      MOV ECX,EAX
0065ac34  e837c6daff                CALL 0x00407270
0065ac39  8bbdc0fcffff              MOV EDI,dword ptr [EBP + 0xfffffcc0]
0065ac3f  0f57c0                    XORPS XMM0,XMM0
0065ac42  d99d48fcffff              FSTP dword ptr [EBP + 0xfffffc48]
0065ac48  0f2f8548fcffff            COMISS XMM0,dword ptr [EBP + 0xfffffc48]
0065ac4f  7207                      JC 0x0065ac58
0065ac51  8b07                      MOV EAX,dword ptr [EDI]
0065ac53  8bcf                      MOV ECX,EDI
0065ac55  ff5028                    CALL dword ptr [EAX + 0x28]
0065ac58  8b8f3c040000              MOV ECX,dword ptr [EDI + 0x43c]
0065ac5e  33c0                      XOR EAX,EAX
0065ac60  81e100010000              AND ECX,0x100
0065ac66  0bc1                      OR EAX,ECX
0065ac68  746e                      JZ 0x0065acd8
0065ac6a  f30f101598a1ba00          MOVSS XMM2,dword ptr [0x00baa198]
0065ac72  32c9                      XOR CL,CL
0065ac74  f30f100d30aeba00          MOVSS XMM1,dword ptr [0x00baae30]
0065ac7c  f30f108710040000          MOVSS XMM0,dword ptr [EDI + 0x410]
0065ac84  e837a93b00                CALL 0x00a155c0
0065ac89  f30f118710040000          MOVSS dword ptr [EDI + 0x410],XMM0
0065ac91  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
0065ac99  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0065aca1  c7871404000000000000      MOV dword ptr [EDI + 0x414],0x0
0065acab  e8b0c4dbff                CALL 0x00417160
0065acb0  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0065acb7  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
0065acbf  f30f588710040000          ADDSS XMM0,dword ptr [EDI + 0x410]
0065acc7  f30f118750030000          MOVSS dword ptr [EDI + 0x350],XMM0
0065accf  7507                      JNZ 0x0065acd8
0065acd1  8bcf                      MOV ECX,EDI
0065acd3  e8889fdeff                CALL 0x00444c60
0065acd8  8b0d9016c700              MOV ECX,dword ptr [0x00c71690]
0065acde  57                        PUSH EDI
0065acdf  e8ac782000                CALL 0x00862590
0065ace4  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0065ace7  64890d00000000            MOV dword ptr FS:[0x0],ECX
0065acee  59                        POP ECX
0065acef  5f                        POP EDI
0065acf0  5e                        POP ESI
0065acf1  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0065acf4  33cd                      XOR ECX,EBP
0065acf6  e830444900                CALL 0x00aef12b
0065acfb  8be5                      MOV ESP,EBP
0065acfd  5d                        POP EBP
0065acfe  8be3                      MOV ESP,EBX
0065ad00  5b                        POP EBX
0065ad01  c3                        RET
