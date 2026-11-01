; J460 NPC AI 0x004855b0 AI_004855b0
; types=261
; identities=261.0.0,261.1.0
; entry=004855b0
004855b0  53                        PUSH EBX
004855b1  8bdc                      MOV EBX,ESP
004855b3  83ec08                    SUB ESP,0x8
004855b6  83e4f8                    AND ESP,0xfffffff8
004855b9  83c404                    ADD ESP,0x4
004855bc  55                        PUSH EBP
004855bd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004855c0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004855c4  8bec                      MOV EBP,ESP
004855c6  6aff                      PUSH -0x1
004855c8  687a2caf00                PUSH 0xaf2c7a
004855cd  64a100000000              MOV EAX,FS:[0x0]
004855d3  50                        PUSH EAX
004855d4  53                        PUSH EBX
004855d5  81ec88010000              SUB ESP,0x188
004855db  a1b493bf00                MOV EAX,[0x00bf93b4]
004855e0  33c5                      XOR EAX,EBP
004855e2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004855e5  56                        PUSH ESI
004855e6  57                        PUSH EDI
004855e7  50                        PUSH EAX
004855e8  8d45f4                    LEA EAX,[EBP + -0xc]
004855eb  64a300000000              MOV FS:[0x0],EAX
004855f1  8bf9                      MOV EDI,ECX
004855f3  89bd08ffffff              MOV dword ptr [EBP + 0xffffff08],EDI
004855f9  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00485600  0f85d7000000              JNZ 0x004856dd
00485606  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
0048560d  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00485613  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
00485619  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00485623  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0048562d  0f57c0                    XORPS XMM0,XMM0
00485630  c785b4feffff8382823e      MOV dword ptr [EBP + 0xfffffeb4],0x3e828283
0048563a  c785b8feffffa5a4243e      MOV dword ptr [EBP + 0xfffffeb8],0x3e24a4a5
00485644  c785bcfeffff8d8c0c3e      MOV dword ptr [EBP + 0xfffffebc],0x3e0c8c8d
0048564e  3bc8                      CMP ECX,EAX
00485650  741d                      JZ 0x0048566f
00485652  8b85bcfeffff              MOV EAX,dword ptr [EBP + 0xfffffebc]
00485658  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0048565c  f30f7e85b4feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffeb4]
00485664  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00485669  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
0048566c  894128                    MOV dword ptr [ECX + 0x28],EAX
0048566f  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00485673  754f                      JNZ 0x004856c4
00485675  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
0048567c  8d8568feffff              LEA EAX,[EBP + 0xfffffe68]
00485682  c78588feffff9a99193f      MOV dword ptr [EBP + 0xfffffe88],0x3f19999a
0048568c  0f57c0                    XORPS XMM0,XMM0
0048568f  c7858cfeffffcdcccc3e      MOV dword ptr [EBP + 0xfffffe8c],0x3ecccccd
00485699  c78590feffff00000000      MOV dword ptr [EBP + 0xfffffe90],0x0
004856a3  3bc8                      CMP ECX,EAX
004856a5  741d                      JZ 0x004856c4
004856a7  8b8590feffff              MOV EAX,dword ptr [EBP + 0xfffffe90]
004856ad  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004856b1  f30f7e8588feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffe88]
004856b9  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004856be  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
004856c1  894128                    MOV dword ptr [ECX + 0x28],EAX
004856c4  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004856ce  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
004856d8  e9ab160000                JMP 0x00486d88
004856dd  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
004856e4  837f3001                  CMP dword ptr [EDI + 0x30],0x1
004856e8  7524                      JNZ 0x0048570e
004856ea  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004856ed  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004856f0  741c                      JZ 0x0048570e
004856f2  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
004856f5  81e100020000              AND ECX,0x200
004856fb  83c900                    OR ECX,0x0
004856fe  7406                      JZ 0x00485706
00485700  c70000000000              MOV dword ptr [EAX],0x0
00485706  83c038                    ADD EAX,0x38
00485709  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0048570c  75e4                      JNZ 0x004856f2
0048570e  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00485714  83f803                    CMP EAX,0x3
00485717  0f8597010000              JNZ 0x004858b4
0048571d  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00485720  85c9                      TEST ECX,ECX
00485722  744a                      JZ 0x0048576e
00485724  83791410                  CMP dword ptr [ECX + 0x14],0x10
00485728  8bc1                      MOV EAX,ECX
0048572a  7202                      JC 0x0048572e
0048572c  8b01                      MOV EAX,dword ptr [ECX]
0048572e  b954bcb100                MOV ECX,0xb1bc54
00485733  8a10                      MOV DL,byte ptr [EAX]
00485735  3a11                      CMP DL,byte ptr [ECX]
00485737  751a                      JNZ 0x00485753
00485739  84d2                      TEST DL,DL
0048573b  7412                      JZ 0x0048574f
0048573d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00485740  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00485743  750e                      JNZ 0x00485753
00485745  83c002                    ADD EAX,0x2
00485748  83c102                    ADD ECX,0x2
0048574b  84d2                      TEST DL,DL
0048574d  75e4                      JNZ 0x00485733
0048574f  33c0                      XOR EAX,EAX
00485751  eb05                      JMP 0x00485758
00485753  1bc0                      SBB EAX,EAX
00485755  83c801                    OR EAX,0x1
00485758  85c0                      TEST EAX,EAX
0048575a  7512                      JNZ 0x0048576e
0048575c  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048575f  80783400                  CMP byte ptr [EAX + 0x34],0x0
00485763  742b                      JZ 0x00485790
00485765  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048576c  7522                      JNZ 0x00485790
0048576e  6a01                      PUSH 0x1
00485770  6854bcb100                PUSH 0xb1bc54
00485775  8d4f48                    LEA ECX,[EDI + 0x48]
00485778  e8534ef8ff                CALL 0x0040a5d0
0048577d  84c0                      TEST AL,AL
0048577f  740f                      JZ 0x00485790
00485781  8d4f78                    LEA ECX,[EDI + 0x78]
00485784  e8274af8ff                CALL 0x0040a1b0
00485789  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00485790  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00485796  33c0                      XOR EAX,EAX
00485798  81e100000010              AND ECX,0x10000000
0048579e  0bc1                      OR EAX,ECX
004857a0  7418                      JZ 0x004857ba
004857a2  a17816c700                MOV EAX,[0x00c71678]
004857a7  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004857ad  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004857b0  f6404401                  TEST byte ptr [EAX + 0x44],0x1
004857b4  0f8518150000              JNZ 0x00486cd2
004857ba  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
004857bd  b805000000                MOV EAX,0x5
004857c2  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004857ca  83fa01                    CMP EDX,0x1
004857cd  c7850cffffff1e000000      MOV dword ptr [EBP + 0xffffff0c],0x1e
004857d7  be0a000000                MOV ESI,0xa
004857dc  899500ffffff              MOV dword ptr [EBP + 0xffffff00],EDX
004857e2  0f45c6                    CMOVNZ EAX,ESI
004857e5  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
004857eb  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004857f3  2bc8                      SUB ECX,EAX
004857f5  b80f000000                MOV EAX,0xf
004857fa  038f10040000              ADD ECX,dword ptr [EDI + 0x410]
00485800  83fa01                    CMP EDX,0x1
00485803  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00485809  0f45850cffffff            CMOVNZ EAX,dword ptr [EBP + 0xffffff0c]
00485810  3bc8                      CMP ECX,EAX
00485812  0f8eba140000              JLE 0x00486cd2
00485818  e843972600                CALL 0x006eef60
0048581d  83bd00ffffff01            CMP dword ptr [EBP + 0xffffff00],0x1
00485824  b914000000                MOV ECX,0x14
00485829  0f45f1                    CMOVNZ ESI,ECX
0048582c  33d2                      XOR EDX,EDX
0048582e  f7f6                      DIV ESI
00485830  85d2                      TEST EDX,EDX
00485832  7426                      JZ 0x0048585a
00485834  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00485839  0f57c9                    XORPS XMM1,XMM1
0048583c  0f2fc1                    COMISS XMM0,XMM1
0048583f  0f868d140000              JBE 0x00486cd2
00485845  e816972600                CALL 0x006eef60
0048584a  33d2                      XOR EDX,EDX
0048584c  f7b504ffffff              DIV dword ptr [EBP + 0xffffff04]
00485852  85d2                      TEST EDX,EDX
00485854  0f8578140000              JNZ 0x00486cd2
0048585a  e801972600                CALL 0x006eef60
0048585f  33d2                      XOR EDX,EDX
00485861  b903000000                MOV ECX,0x3
00485866  f7f1                      DIV ECX
00485868  85d2                      TEST EDX,EDX
0048586a  750f                      JNZ 0x0048587b
0048586c  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00485876  e957140000                JMP 0x00486cd2
0048587b  e8e0962600                CALL 0x006eef60
00485880  a801                      TEST AL,0x1
00485882  7521                      JNZ 0x004858a5
00485884  6a00                      PUSH 0x0
00485886  68000a0001                PUSH 0x1000a00
0048588b  8bcf                      MOV ECX,EDI
0048588d  e89e1bf9ff                CALL 0x00417430
00485892  84c0                      TEST AL,AL
00485894  750f                      JNZ 0x004858a5
00485896  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
004858a0  e92d140000                JMP 0x00486cd2
004858a5  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
004858af  e91e140000                JMP 0x00486cd2
004858b4  83f808                    CMP EAX,0x8
004858b7  0f8557020000              JNZ 0x00485b14
004858bd  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
004858c0  85c9                      TEST ECX,ECX
004858c2  744a                      JZ 0x0048590e
004858c4  83791410                  CMP dword ptr [ECX + 0x14],0x10
004858c8  8bc1                      MOV EAX,ECX
004858ca  7202                      JC 0x004858ce
004858cc  8b01                      MOV EAX,dword ptr [ECX]
004858ce  b97cd4b100                MOV ECX,0xb1d47c
004858d3  8a10                      MOV DL,byte ptr [EAX]
004858d5  3a11                      CMP DL,byte ptr [ECX]
004858d7  751a                      JNZ 0x004858f3
004858d9  84d2                      TEST DL,DL
004858db  7412                      JZ 0x004858ef
004858dd  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004858e0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004858e3  750e                      JNZ 0x004858f3
004858e5  83c002                    ADD EAX,0x2
004858e8  83c102                    ADD ECX,0x2
004858eb  84d2                      TEST DL,DL
004858ed  75e4                      JNZ 0x004858d3
004858ef  33c0                      XOR EAX,EAX
004858f1  eb05                      JMP 0x004858f8
004858f3  1bc0                      SBB EAX,EAX
004858f5  83c801                    OR EAX,0x1
004858f8  85c0                      TEST EAX,EAX
004858fa  7512                      JNZ 0x0048590e
004858fc  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004858ff  80783400                  CMP byte ptr [EAX + 0x34],0x0
00485903  742b                      JZ 0x00485930
00485905  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048590c  7522                      JNZ 0x00485930
0048590e  6a01                      PUSH 0x1
00485910  687cd4b100                PUSH 0xb1d47c
00485915  8d4f48                    LEA ECX,[EDI + 0x48]
00485918  e8b34cf8ff                CALL 0x0040a5d0
0048591d  84c0                      TEST AL,AL
0048591f  740f                      JZ 0x00485930
00485921  8d4f78                    LEA ECX,[EDI + 0x78]
00485924  e88748f8ff                CALL 0x0040a1b0
00485929  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00485930  8bcf                      MOV ECX,EDI
00485932  e8098f2300                CALL 0x006be840
00485937  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048593b  8db73c030000              LEA ESI,[EDI + 0x33c]
00485941  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00485949  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00485951  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
00485955  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0048595a  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
00485962  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0048596a  0f8495010000              JZ 0x00485b05
00485970  68dcd2b100                PUSH 0xb1d2dc
00485975  8d4f78                    LEA ECX,[EDI + 0x78]
00485978  e85354f8ff                CALL 0x0040add0
0048597d  84c0                      TEST AL,AL
0048597f  0f843f010000              JZ 0x00485ac4
00485985  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00485989  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0048598f  754f                      JNZ 0x004859e0
00485991  e89a95fbff                CALL 0x0043ef30
00485996  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0048599a  b803000000                MOV EAX,0x3
0048599f  b905000000                MOV ECX,0x5
004859a4  c78524ffffff6f12833a      MOV dword ptr [EBP + 0xffffff24],0x3a83126f
004859ae  0f44c1                    CMOVZ EAX,ECX
004859b1  c78520ffffff000080bf      MOV dword ptr [EBP + 0xffffff20],0xbf800000
004859bb  8945ac                    MOV dword ptr [EBP + -0x54],EAX
004859be  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004859c4  50                        PUSH EAX
004859c5  c78510ffffff00002041      MOV dword ptr [EBP + 0xffffff10],0x41200000
004859cf  c78514ffffff00000000      MOV dword ptr [EBP + 0xffffff14],0x0
004859d9  6a08                      PUSH 0x8
004859db  e9b5000000                JMP 0x00485a95
004859e0  e84b95fbff                CALL 0x0043ef30
004859e5  f30f108d08ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff08]
004859ed  b905000000                MOV ECX,0x5
004859f2  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
004859f5  0f28c1                    MOVAPS XMM0,XMM1
004859f8  48                        DEC EAX
004859f9  f30f59c1                  MULSS XMM0,XMM1
004859fd  f7d8                      NEG EAX
004859ff  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
00485a07  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
00485a0f  1bc0                      SBB EAX,EAX
00485a11  f30f59c9                  MULSS XMM1,XMM1
00485a15  83e003                    AND EAX,0x3
00485a18  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00485a1c  0f44c1                    CMOVZ EAX,ECX
00485a1f  f30f58c1                  ADDSS XMM0,XMM1
00485a23  8945ac                    MOV dword ptr [EBP + -0x54],EAX
00485a26  e82500fbff                CALL 0x00435a50
00485a2b  0f28c8                    MOVAPS XMM1,XMM0
00485a2e  0f57c0                    XORPS XMM0,XMM0
00485a31  0f2fc8                    COMISS XMM1,XMM0
00485a34  7626                      JBE 0x00485a5c
00485a36  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00485a3e  f30f5ec1                  DIVSS XMM0,XMM1
00485a42  f30f109508ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff08]
00485a4a  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
00485a52  f30f59d0                  MULSS XMM2,XMM0
00485a56  f30f59c8                  MULSS XMM1,XMM0
00485a5a  eb10                      JMP 0x00485a6c
00485a5c  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
00485a64  f30f10950cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff0c]
00485a6c  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00485a74  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00485a7a  50                        PUSH EAX
00485a7b  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00485a83  6a02                      PUSH 0x2
00485a85  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
00485a8d  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
00485a95  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
00485a9b  8bcf                      MOV ECX,EDI
00485a9d  50                        PUSH EAX
00485a9e  56                        PUSH ESI
00485a9f  e83c582400                CALL 0x006cb2e0
00485aa4  51                        PUSH ECX
00485aa5  c704240000803f            MOV dword ptr [ESP],0x3f800000
00485aac  6a00                      PUSH 0x0
00485aae  6a02                      PUSH 0x2
00485ab0  51                        PUSH ECX
00485ab1  c704240000803f            MOV dword ptr [ESP],0x3f800000
00485ab8  8bcf                      MOV ECX,EDI
00485aba  682f010000                PUSH 0x12f
00485abf  e8dc102500                CALL 0x006d6ba0
00485ac4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00485ac8  743b                      JZ 0x00485b05
00485aca  68dcd2b100                PUSH 0xb1d2dc
00485acf  8d4f78                    LEA ECX,[EDI + 0x78]
00485ad2  e89953f8ff                CALL 0x0040ae70
00485ad7  84c0                      TEST AL,AL
00485ad9  7417                      JZ 0x00485af2
00485adb  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
00485ae3  0f57c9                    XORPS XMM1,XMM1
00485ae6  0f2fc1                    COMISS XMM0,XMM1
00485ae9  0f97c0                    SETA AL
00485aec  888748010000              MOV byte ptr [EDI + 0x148],AL
00485af2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00485af6  740d                      JZ 0x00485b05
00485af8  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00485aff  0f85cd110000              JNZ 0x00486cd2
00485b05  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00485b0f  e9b4110000                JMP 0x00486cc8
00485b14  83f804                    CMP EAX,0x4
00485b17  0f851d090000              JNZ 0x0048643a
00485b1d  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
00485b23  85d2                      TEST EDX,EDX
00485b25  0f85a2080000              JNZ 0x004863cd
00485b2b  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00485b2e  85c9                      TEST ECX,ECX
00485b30  744a                      JZ 0x00485b7c
00485b32  83791410                  CMP dword ptr [ECX + 0x14],0x10
00485b36  8bc1                      MOV EAX,ECX
00485b38  7202                      JC 0x00485b3c
00485b3a  8b01                      MOV EAX,dword ptr [ECX]
00485b3c  b9fcd7b100                MOV ECX,0xb1d7fc
00485b41  8a10                      MOV DL,byte ptr [EAX]
00485b43  3a11                      CMP DL,byte ptr [ECX]
00485b45  751a                      JNZ 0x00485b61
00485b47  84d2                      TEST DL,DL
00485b49  7412                      JZ 0x00485b5d
00485b4b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00485b4e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00485b51  750e                      JNZ 0x00485b61
00485b53  83c002                    ADD EAX,0x2
00485b56  83c102                    ADD ECX,0x2
00485b59  84d2                      TEST DL,DL
00485b5b  75e4                      JNZ 0x00485b41
00485b5d  33c0                      XOR EAX,EAX
00485b5f  eb05                      JMP 0x00485b66
00485b61  1bc0                      SBB EAX,EAX
00485b63  83c801                    OR EAX,0x1
00485b66  85c0                      TEST EAX,EAX
00485b68  7512                      JNZ 0x00485b7c
00485b6a  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00485b6d  80783400                  CMP byte ptr [EAX + 0x34],0x0
00485b71  742b                      JZ 0x00485b9e
00485b73  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00485b7a  7522                      JNZ 0x00485b9e
00485b7c  6a01                      PUSH 0x1
00485b7e  68fcd7b100                PUSH 0xb1d7fc
00485b83  8d4f48                    LEA ECX,[EDI + 0x48]
00485b86  e8454af8ff                CALL 0x0040a5d0
00485b8b  84c0                      TEST AL,AL
00485b8d  740f                      JZ 0x00485b9e
00485b8f  8d4f78                    LEA ECX,[EDI + 0x78]
00485b92  e81946f8ff                CALL 0x0040a1b0
00485b97  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00485b9e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00485ba2  0f84fb020000              JZ 0x00485ea3
00485ba8  68fcd7b100                PUSH 0xb1d7fc
00485bad  8d4f78                    LEA ECX,[EDI + 0x78]
00485bb0  e81b52f8ff                CALL 0x0040add0
00485bb5  84c0                      TEST AL,AL
00485bb7  0f84e6020000              JZ 0x00485ea3
00485bbd  8bcf                      MOV ECX,EDI
00485bbf  e87c8c2300                CALL 0x006be840
00485bc4  8db73c030000              LEA ESI,[EDI + 0x33c]
00485bca  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
00485bd0  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00485bd8  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00485be0  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
00485be6  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00485bea  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00485bef  50                        PUSH EAX
00485bf0  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
00485bf8  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
00485c00  e82ba45800                CALL 0x00a10030
00485c05  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00485c09  750a                      JNZ 0x00485c15
00485c0b  f30f100d54a8ba00          MOVSS XMM1,dword ptr [0x00baa854]
00485c13  eb08                      JMP 0x00485c1d
00485c15  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00485c1d  51                        PUSH ECX
00485c1e  0f28c1                    MOVAPS XMM0,XMM1
00485c21  c704240000803f            MOV dword ptr [ESP],0x3f800000
00485c28  f30f5900                  MULSS XMM0,dword ptr [EAX]
00485c2c  6a00                      PUSH 0x0
00485c2e  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
00485c33  6a1e                      PUSH 0x1e
00485c35  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00485c3d  51                        PUSH ECX
00485c3e  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00485c46  c704240000803f            MOV dword ptr [ESP],0x3f800000
00485c4d  8bcf                      MOV ECX,EDI
00485c4f  682d010000                PUSH 0x12d
00485c54  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00485c5c  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00485c64  e8370f2500                CALL 0x006d6ba0
00485c69  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00485c70  0f852d020000              JNZ 0x00485ea3
00485c76  e8e5922600                CALL 0x006eef60
00485c7b  33d2                      XOR EDX,EDX
00485c7d  b905000000                MOV ECX,0x5
00485c82  f7f1                      DIV ECX
00485c84  85d2                      TEST EDX,EDX
00485c86  0f8517020000              JNZ 0x00485ea3
00485c8c  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00485c8f  85c0                      TEST EAX,EAX
00485c91  0f85c7010000              JNZ 0x00485e5e
00485c97  a17816c700                MOV EAX,[0x00c71678]
00485c9c  56                        PUSH ESI
00485c9d  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00485ca3  8bc8                      MOV ECX,EAX
00485ca5  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
00485cab  e8e0cf3800                CALL 0x00812c90
00485cb0  8bf0                      MOV ESI,EAX
00485cb2  8b85fcfeffff              MOV EAX,dword ptr [EBP + 0xfffffefc]
00485cb8  89b5ecfeffff              MOV dword ptr [EBP + 0xfffffeec],ESI
00485cbe  81febf010000              CMP ESI,0x1bf
00485cc4  7719                      JA 0x00485cdf
00485cc6  8b4cb024                  MOV ECX,dword ptr [EAX + ESI*0x4 + 0x24]
00485cca  85c9                      TEST ECX,ECX
00485ccc  7411                      JZ 0x00485cdf
00485cce  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
00485cd1  83f901                    CMP ECX,0x1
00485cd4  7409                      JZ 0x00485cdf
00485cd6  83f90a                    CMP ECX,0xa
00485cd9  0f85a7010000              JNZ 0x00485e86
00485cdf  83780810                  CMP dword ptr [EAX + 0x8],0x10
00485ce3  0f849d010000              JZ 0x00485e86
00485ce9  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00485cef  e8fc333600                CALL 0x007e90f0
00485cf4  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00485cfa  85f6                      TEST ESI,ESI
00485cfc  7808                      JS 0x00485d06
00485cfe  81fec0010000              CMP ESI,0x1c0
00485d04  7c0f                      JL 0x00485d15
00485d06  6838c1b600                PUSH 0xb6c138
00485d0b  6a10                      PUSH 0x10
00485d0d  e8aeb55800                CALL 0x00a112c0
00485d12  83c408                    ADD ESP,0x8
00485d15  81febf010000              CMP ESI,0x1bf
00485d1b  0f8765010000              JA 0x00485e86
00485d21  8b85fcfeffff              MOV EAX,dword ptr [EBP + 0xfffffefc]
00485d27  81bcb06c07000084030000    CMP dword ptr [EAX + ESI*0x4 + 0x76c],0x384
00485d32  0f8f4e010000              JG 0x00485e86
00485d38  689c010000                PUSH 0x19c
00485d3d  e87e975800                CALL 0x00a0f4c0
00485d42  8bf0                      MOV ESI,EAX
00485d44  83c404                    ADD ESP,0x4
00485d47  89b514ffffff              MOV dword ptr [EBP + 0xffffff14],ESI
00485d4d  c745fc07000000            MOV dword ptr [EBP + -0x4],0x7
00485d54  85f6                      TEST ESI,ESI
00485d56  0f849e000000              JZ 0x00485dfa
00485d5c  8bce                      MOV ECX,ESI
00485d5e  e8dd3e2800                CALL 0x00709c40
00485d63  c7064886b600              MOV dword ptr [ESI],0xb68648
00485d69  c7865801000000000000      MOV dword ptr [ESI + 0x158],0x0
00485d73  c7866801000000000000      MOV dword ptr [ESI + 0x168],0x0
00485d7d  c7866c0100000f000000      MOV dword ptr [ESI + 0x16c],0xf
00485d87  c6865801000000            MOV byte ptr [ESI + 0x158],0x0
00485d8e  c7867401000000000000      MOV dword ptr [ESI + 0x174],0x0
00485d98  c7867801000000000000      MOV dword ptr [ESI + 0x178],0x0
00485da2  c7867c01000000000000      MOV dword ptr [ESI + 0x17c],0x0
00485dac  c7868001000000000000      MOV dword ptr [ESI + 0x180],0x0
00485db6  a140b6c700                MOV EAX,[0x00c7b640]
00485dbb  8b0d44b6c700              MOV ECX,dword ptr [0x00c7b644]
00485dc1  898684010000              MOV dword ptr [ESI + 0x184],EAX
00485dc7  898e88010000              MOV dword ptr [ESI + 0x188],ECX
00485dcd  a140b6c700                MOV EAX,[0x00c7b640]
00485dd2  8b0d44b6c700              MOV ECX,dword ptr [0x00c7b644]
00485dd8  89868c010000              MOV dword ptr [ESI + 0x18c],EAX
00485dde  898e90010000              MOV dword ptr [ESI + 0x190],ECX
00485de4  c7869401000000000000      MOV dword ptr [ESI + 0x194],0x0
00485dee  c7869801000000000000      MOV dword ptr [ESI + 0x198],0x0
00485df8  eb02                      JMP 0x00485dfc
00485dfa  33f6                      XOR ESI,ESI
00485dfc  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00485e03  85f6                      TEST ESI,ESI
00485e05  0f847b000000              JZ 0x00485e86
00485e0b  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
00485e11  8b8dfcfeffff              MOV ECX,dword ptr [EBP + 0xfffffefc]
00485e17  c746040e000000            MOV dword ptr [ESI + 0x4],0xe
00485e1e  894624                    MOV dword ptr [ESI + 0x24],EAX
00485e21  8b548124                  MOV EDX,dword ptr [ECX + EAX*0x4 + 0x24]
00485e25  85d2                      TEST EDX,EDX
00485e27  7414                      JZ 0x00485e3d
00485e29  8b02                      MOV EAX,dword ptr [EDX]
00485e2b  8bca                      MOV ECX,EDX
00485e2d  6a01                      PUSH 0x1
00485e2f  ff10                      CALL dword ptr [EAX]
00485e31  8b85ecfeffff              MOV EAX,dword ptr [EBP + 0xfffffeec]
00485e37  8b8dfcfeffff              MOV ECX,dword ptr [EBP + 0xfffffefc]
00485e3d  ffb50cffffff              PUSH dword ptr [EBP + 0xffffff0c]
00485e43  89748124                  MOV dword ptr [ECX + EAX*0x4 + 0x24],ESI
00485e47  8bce                      MOV ECX,ESI
00485e49  c7460800000000            MOV dword ptr [ESI + 0x8],0x0
00485e50  c7461800000000            MOV dword ptr [ESI + 0x18],0x0
00485e57  e8543f2800                CALL 0x00709db0
00485e5c  eb28                      JMP 0x00485e86
00485e5e  83f801                    CMP EAX,0x1
00485e61  7523                      JNZ 0x00485e86
00485e63  e8f8902600                CALL 0x006eef60
00485e68  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00485e6e  6a00                      PUSH 0x0
00485e70  50                        PUSH EAX
00485e71  6a00                      PUSH 0x0
00485e73  57                        PUSH EDI
00485e74  6840b6c700                PUSH 0xc7b640
00485e79  56                        PUSH ESI
00485e7a  6a00                      PUSH 0x0
00485e7c  6827010000                PUSH 0x127
00485e81  e88a852700                CALL 0x006fe410
00485e86  51                        PUSH ECX
00485e87  c704240000803f            MOV dword ptr [ESP],0x3f800000
00485e8e  6a00                      PUSH 0x0
00485e90  6a02                      PUSH 0x2
00485e92  51                        PUSH ECX
00485e93  c704240000803f            MOV dword ptr [ESP],0x3f800000
00485e9a  8bcf                      MOV ECX,EDI
00485e9c  6a25                      PUSH 0x25
00485e9e  e8fd0c2500                CALL 0x006d6ba0
00485ea3  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00485eab  f30f590544a4ba00          MULSS XMM0,dword ptr [0x00baa444]
00485eb3  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00485ebb  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00485ebf  0f84c9010000              JZ 0x0048608e
00485ec5  68fcd7b100                PUSH 0xb1d7fc
00485eca  8d4f78                    LEA ECX,[EDI + 0x78]
00485ecd  e89e4ff8ff                CALL 0x0040ae70
00485ed2  84c0                      TEST AL,AL
00485ed4  0f84b4010000              JZ 0x0048608e
00485eda  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00485ede  750a                      JNZ 0x00485eea
00485ee0  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00485ee8  eb08                      JMP 0x00485ef2
00485eea  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00485ef2  51                        PUSH ECX
00485ef3  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
00485ef9  f30f110424                MOVSS dword ptr [ESP],XMM0
00485efe  50                        PUSH EAX
00485eff  8d8f60030000              LEA ECX,[EDI + 0x360]
00485f05  e8f6a15800                CALL 0x00a10100
00485f0a  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
00485f12  0f57c0                    XORPS XMM0,XMM0
00485f15  0f2ed8                    UCOMISS XMM3,XMM0
00485f18  8bc8                      MOV ECX,EAX
00485f1a  9f                        LAHF
00485f1b  f6c444                    TEST AH,0x44
00485f1e  7b40                      JNP 0x00485f60
00485f20  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00485f28  f30f105104                MOVSS XMM2,dword ptr [ECX + 0x4]
00485f2d  0f28c1                    MOVAPS XMM0,XMM1
00485f30  f30f5901                  MULSS XMM0,dword ptr [ECX]
00485f34  f30f59d1                  MULSS XMM2,XMM1
00485f38  f30f5ec3                  DIVSS XMM0,XMM3
00485f3c  f30f5ed3                  DIVSS XMM2,XMM3
00485f40  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00485f48  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00485f50  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00485f58  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00485f60  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00485f64  0f8524010000              JNZ 0x0048608e
00485f6a  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00485f72  0f57d2                    XORPS XMM2,XMM2
00485f75  8bcf                      MOV ECX,EDI
00485f77  e8e4672200                CALL 0x006ac760
00485f7c  85c0                      TEST EAX,EAX
00485f7e  743c                      JZ 0x00485fbc
00485f80  8d4dc0                    LEA ECX,[EBP + -0x40]
00485f83  e8e811f8ff                CALL 0x00407170
00485f88  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
00485f90  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
00485f98  50                        PUSH EAX
00485f99  6a00                      PUSH 0x0
00485f9b  51                        PUSH ECX
00485f9c  c704240000003f            MOV dword ptr [ESP],0x3f000000
00485fa3  8d873c030000              LEA EAX,[EDI + 0x33c]
00485fa9  57                        PUSH EDI
00485faa  51                        PUSH ECX
00485fab  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00485fb1  f30f110424                MOVSS dword ptr [ESP],XMM0
00485fb6  50                        PUSH EAX
00485fb7  e824dc2700                CALL 0x00703be0
00485fbc  6a00                      PUSH 0x0
00485fbe  6a40                      PUSH 0x40
00485fc0  8bcf                      MOV ECX,EDI
00485fc2  e86914f9ff                CALL 0x00417430
00485fc7  84c0                      TEST AL,AL
00485fc9  b95e000000                MOV ECX,0x5e
00485fce  be17000000                MOV ESI,0x17
00485fd3  6a00                      PUSH 0x0
00485fd5  0f44f1                    CMOVZ ESI,ECX
00485fd8  8bcf                      MOV ECX,EDI
00485fda  6880000000                PUSH 0x80
00485fdf  e84c14f9ff                CALL 0x00417430
00485fe4  84c0                      TEST AL,AL
00485fe6  b919000000                MOV ECX,0x19
00485feb  0f45f1                    CMOVNZ ESI,ECX
00485fee  e86d8f2600                CALL 0x006eef60
00485ff3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00485ff9  6a00                      PUSH 0x0
00485ffb  50                        PUSH EAX
00485ffc  6a00                      PUSH 0x0
00485ffe  57                        PUSH EDI
00485fff  6840b6c700                PUSH 0xc7b640
00486004  8d873c030000              LEA EAX,[EDI + 0x33c]
0048600a  50                        PUSH EAX
0048600b  56                        PUSH ESI
0048600c  68e8030000                PUSH 0x3e8
00486011  e8fa832700                CALL 0x006fe410
00486016  6a00                      PUSH 0x0
00486018  68acd5c500                PUSH 0xc5d5ac
0048601d  68dcd5c500                PUSH 0xc5d5dc
00486022  6a00                      PUSH 0x0
00486024  50                        PUSH EAX
00486025  e887a86600                CALL 0x00af08b1
0048602a  83c414                    ADD ESP,0x14
0048602d  8bf0                      MOV ESI,EAX
0048602f  e82c8f2600                CALL 0x006eef60
00486034  8bce                      MOV ECX,ESI
00486036  660f6ec0                  MOVD XMM0,EAX
0048603a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048603e  c1e81f                    SHR EAX,0x1f
00486041  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048604a  8b06                      MOV EAX,dword ptr [ESI]
0048604c  660f5ac8                  CVTPD2PS XMM1,XMM0
00486050  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00486058  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
00486060  f30f580d80a3ba00          ADDSS XMM1,dword ptr [0x00baa380]
00486068  0f28c1                    MOVAPS XMM0,XMM1
0048606b  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00486073  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0048607b  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00486083  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0048608b  ff500c                    CALL dword ptr [EAX + 0xc]
0048608e  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00486096  0f57c9                    XORPS XMM1,XMM1
00486099  0f2fc1                    COMISS XMM0,XMM1
0048609c  8bcf                      MOV ECX,EDI
0048609e  0f97c0                    SETA AL
004860a1  888748010000              MOV byte ptr [EDI + 0x148],AL
004860a7  ff7720                    PUSH dword ptr [EDI + 0x20]
004860aa  6a02                      PUSH 0x2
004860ac  e85f662200                CALL 0x006ac710
004860b1  84c0                      TEST AL,AL
004860b3  0f847f000000              JZ 0x00486138
004860b9  e8a28e2600                CALL 0x006eef60
004860be  51                        PUSH ECX
004860bf  8bcf                      MOV ECX,EDI
004860c1  660f6ec0                  MOVD XMM0,EAX
004860c5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004860c9  c1e81f                    SHR EAX,0x1f
004860cc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004860d5  660f5ac0                  CVTPD2PS XMM0,XMM0
004860d9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004860e1  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004860e9  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
004860f1  f30f110424                MOVSS dword ptr [ESP],XMM0
004860f6  e8d5032300                CALL 0x006b64d0
004860fb  6a01                      PUSH 0x1
004860fd  8bc8                      MOV ECX,EAX
004860ff  c745e08382823e            MOV dword ptr [EBP + -0x20],0x3e828283
00486106  6a00                      PUSH 0x0
00486108  0f57c0                    XORPS XMM0,XMM0
0048610b  c745e4a5a4243e            MOV dword ptr [EBP + -0x1c],0x3e24a4a5
00486112  68ff000000                PUSH 0xff
00486117  8b01                      MOV EAX,dword ptr [ECX]
00486119  8d55c0                    LEA EDX,[EBP + -0x40]
0048611c  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00486120  6aff                      PUSH -0x1
00486122  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00486129  52                        PUSH EDX
0048612a  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0048612e  c745e88d8c0c3e            MOV dword ptr [EBP + -0x18],0x3e0c8c8d
00486135  ff503c                    CALL dword ptr [EAX + 0x3c]
00486138  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048613c  741b                      JZ 0x00486159
0048613e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00486145  7412                      JZ 0x00486159
00486147  6a00                      PUSH 0x0
00486149  68000a0001                PUSH 0x1000a00
0048614e  8bcf                      MOV ECX,EDI
00486150  e8db12f9ff                CALL 0x00417430
00486155  84c0                      TEST AL,AL
00486157  745e                      JZ 0x004861b7
00486159  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
0048615c  83f901                    CMP ECX,0x1
0048615f  7505                      JNZ 0x00486166
00486161  8d4102                    LEA EAX,[ECX + 0x2]
00486164  eb12                      JMP 0x00486178
00486166  33c0                      XOR EAX,EAX
00486168  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0048616c  0f95c0                    SETNZ AL
0048616f  33d2                      XOR EDX,EDX
00486171  40                        INC EAX
00486172  83f902                    CMP ECX,0x2
00486175  0f44c2                    CMOVZ EAX,EDX
00486178  3987c00b0000              CMP dword ptr [EDI + 0xbc0],EAX
0048617e  7d19                      JGE 0x00486199
00486180  e8db8d2600                CALL 0x006eef60
00486185  83e003                    AND EAX,0x3
00486188  83c00c                    ADD EAX,0xc
0048618b  898710040000              MOV dword ptr [EDI + 0x410],EAX
00486191  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00486197  eb1e                      JMP 0x004861b7
00486199  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
004861a3  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004861ad  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004861b7  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004861be  0f840e0b0000              JZ 0x00486cd2
004861c4  a17816c700                MOV EAX,[0x00c71678]
004861c9  51                        PUSH ECX
004861ca  8d8de0feffff              LEA ECX,[EBP + 0xfffffee0]
004861d0  c7042400000000            MOV dword ptr [ESP],0x0
004861d7  51                        PUSH ECX
004861d8  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004861de  e8ed873900                CALL 0x0081e9d0
004861e3  8b08                      MOV ECX,dword ptr [EAX]
004861e5  51                        PUSH ECX
004861e6  c704240000803f            MOV dword ptr [ESP],0x3f800000
004861ed  6a00                      PUSH 0x0
004861ef  6a02                      PUSH 0x2
004861f1  51                        PUSH ECX
004861f2  898f34030000              MOV dword ptr [EDI + 0x334],ECX
004861f8  8bcf                      MOV ECX,EDI
004861fa  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004861fd  c704240000803f            MOV dword ptr [ESP],0x3f800000
00486204  6a48                      PUSH 0x48
00486206  898738030000              MOV dword ptr [EDI + 0x338],EAX
0048620c  e88f092500                CALL 0x006d6ba0
00486211  a17816c700                MOV EAX,[0x00c71678]
00486216  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0048621c  e83f8d2600                CALL 0x006eef60
00486221  83ec0c                    SUB ESP,0xc
00486224  8bce                      MOV ECX,ESI
00486226  660f6ec0                  MOVD XMM0,EAX
0048622a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048622e  c1e81f                    SHR EAX,0x1f
00486231  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048623a  8d879c010000              LEA EAX,[EDI + 0x19c]
00486240  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
00486246  660f5ad8                  CVTPD2PS XMM3,XMM0
0048624a  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0048624e  f30f590594aaba00          MULSS XMM0,dword ptr [0x00baaa94]
00486256  f30f591df49fba00          MULSS XMM3,dword ptr [0x00ba9ff4]
0048625e  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00486266  f30f591d04a9ba00          MULSS XMM3,dword ptr [0x00baa904]
0048626e  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
00486276  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0048627b  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
00486281  f30f591d34adba00          MULSS XMM3,dword ptr [0x00baad34]
00486289  f30f590594aaba00          MULSS XMM0,dword ptr [0x00baaa94]
00486291  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
00486297  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
0048629d  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004862a5  f30f111c24                MOVSS dword ptr [ESP],XMM3
004862aa  50                        PUSH EAX
004862ab  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004862b1  50                        PUSH EAX
004862b2  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
004862ba  e891cc3800                CALL 0x00812f50
004862bf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004862c5  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
004862cb  50                        PUSH EAX
004862cc  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004862d2  e84903fdff                CALL 0x00456620
004862d7  85c0                      TEST EAX,EAX
004862d9  0f84f3090000              JZ 0x00486cd2
004862df  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004862e2  83f80f                    CMP EAX,0xf
004862e5  7409                      JZ 0x004862f0
004862e7  83f810                    CMP EAX,0x10
004862ea  0f85e2090000              JNZ 0x00486cd2
004862f0  e86b8c2600                CALL 0x006eef60
004862f5  51                        PUSH ECX
004862f6  8bcf                      MOV ECX,EDI
004862f8  660f6ec0                  MOVD XMM0,EAX
004862fc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00486300  c1e81f                    SHR EAX,0x1f
00486303  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048630c  660f5ac0                  CVTPD2PS XMM0,XMM0
00486310  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00486318  f30f58c0                  ADDSS XMM0,XMM0
0048631c  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00486324  f30f110424                MOVSS dword ptr [ESP],XMM0
00486329  e8a2012300                CALL 0x006b64d0
0048632e  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
00486336  8bf8                      MOV EDI,EAX
00486338  8b8508ffffff              MOV EAX,dword ptr [EBP + 0xffffff08]
0048633e  8bcf                      MOV ECX,EDI
00486340  6a01                      PUSH 0x1
00486342  6a00                      PUSH 0x0
00486344  8b37                      MOV ESI,dword ptr [EDI]
00486346  05e4010000                ADD EAX,0x1e4
0048634b  68ff000000                PUSH 0xff
00486350  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00486358  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
00486360  6aff                      PUSH -0x1
00486362  50                        PUSH EAX
00486363  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0048636b  ff563c                    CALL dword ptr [ESI + 0x3c]
0048636e  8b950cffffff              MOV EDX,dword ptr [EBP + 0xffffff0c]
00486374  8d8de0feffff              LEA ECX,[EBP + 0xfffffee0]
0048637a  e8f18d1f00                CALL 0x0067f170
0048637f  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00486383  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00486388  e8d3390100                CALL 0x00499d60
0048638d  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00486395  8bcf                      MOV ECX,EDI
00486397  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
0048639d  818f6801000000200000      OR dword ptr [EDI + 0x168],0x2000
004863a7  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004863ad  f30f5805b4a9ba00          ADDSS XMM0,dword ptr [0x00baa9b4]
004863b5  8b07                      MOV EAX,dword ptr [EDI]
004863b7  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
004863bf  ff500c                    CALL dword ptr [EAX + 0xc]
004863c2  8bbd08ffffff              MOV EDI,dword ptr [EBP + 0xffffff08]
004863c8  e905090000                JMP 0x00486cd2
004863cd  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004863d5  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004863dd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004863e5  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004863ed  2bc8                      SUB ECX,EAX
004863ef  8d0411                    LEA EAX,[ECX + EDX*0x1]
004863f2  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004863fa  33c9                      XOR ECX,ECX
004863fc  85c0                      TEST EAX,EAX
004863fe  0f48c1                    CMOVS EAX,ECX
00486401  898710040000              MOV dword ptr [EDI + 0x410],EAX
00486407  85c0                      TEST EAX,EAX
00486409  0f85c3080000              JNZ 0x00486cd2
0048640f  6a01                      PUSH 0x1
00486411  68fcd7b100                PUSH 0xb1d7fc
00486416  8d4f48                    LEA ECX,[EDI + 0x48]
00486419  e8b241f8ff                CALL 0x0040a5d0
0048641e  84c0                      TEST AL,AL
00486420  0f84ac080000              JZ 0x00486cd2
00486426  8d4f78                    LEA ECX,[EDI + 0x78]
00486429  e8823df8ff                CALL 0x0040a1b0
0048642e  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00486435  e998080000                JMP 0x00486cd2
0048643a  83f809                    CMP EAX,0x9
0048643d  0f85c7070000              JNZ 0x00486c0a
00486443  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00486446  85c9                      TEST ECX,ECX
00486448  7451                      JZ 0x0048649b
0048644a  83791410                  CMP dword ptr [ECX + 0x14],0x10
0048644e  8bc1                      MOV EAX,ECX
00486450  7202                      JC 0x00486454
00486452  8b01                      MOV EAX,dword ptr [ECX]
00486454  b904d8b100                MOV ECX,0xb1d804
00486459  0f1f8000000000            NOP dword ptr [EAX]
00486460  8a10                      MOV DL,byte ptr [EAX]
00486462  3a11                      CMP DL,byte ptr [ECX]
00486464  751a                      JNZ 0x00486480
00486466  84d2                      TEST DL,DL
00486468  7412                      JZ 0x0048647c
0048646a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048646d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00486470  750e                      JNZ 0x00486480
00486472  83c002                    ADD EAX,0x2
00486475  83c102                    ADD ECX,0x2
00486478  84d2                      TEST DL,DL
0048647a  75e4                      JNZ 0x00486460
0048647c  33c0                      XOR EAX,EAX
0048647e  eb05                      JMP 0x00486485
00486480  1bc0                      SBB EAX,EAX
00486482  83c801                    OR EAX,0x1
00486485  85c0                      TEST EAX,EAX
00486487  7512                      JNZ 0x0048649b
00486489  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048648c  80783400                  CMP byte ptr [EAX + 0x34],0x0
00486490  742b                      JZ 0x004864bd
00486492  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00486499  7522                      JNZ 0x004864bd
0048649b  6a01                      PUSH 0x1
0048649d  6804d8b100                PUSH 0xb1d804
004864a2  8d4f48                    LEA ECX,[EDI + 0x48]
004864a5  e82641f8ff                CALL 0x0040a5d0
004864aa  84c0                      TEST AL,AL
004864ac  740f                      JZ 0x004864bd
004864ae  8d4f78                    LEA ECX,[EDI + 0x78]
004864b1  e8fa3cf8ff                CALL 0x0040a1b0
004864b6  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004864bd  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004864c1  b89d010000                MOV EAX,0x19d
004864c6  51                        PUSH ECX
004864c7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004864ce  6a00                      PUSH 0x0
004864d0  6a3c                      PUSH 0x3c
004864d2  51                        PUSH ECX
004864d3  b93b010000                MOV ECX,0x13b
004864d8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004864df  0f45c1                    CMOVNZ EAX,ECX
004864e2  8bcf                      MOV ECX,EDI
004864e4  50                        PUSH EAX
004864e5  e8b6062500                CALL 0x006d6ba0
004864ea  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004864ee  0f8407070000              JZ 0x00486bfb
004864f4  6850deb100                PUSH 0xb1de50
004864f9  8d4f78                    LEA ECX,[EDI + 0x78]
004864fc  e8cf48f8ff                CALL 0x0040add0
00486501  84c0                      TEST AL,AL
00486503  0f84df060000              JZ 0x00486be8
00486509  a17816c700                MOV EAX,[0x00c71678]
0048650e  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00486514  33c0                      XOR EAX,EAX
00486516  8b8ec4120000              MOV ECX,dword ptr [ESI + 0x12c4]
0048651c  038ec0120000              ADD ECX,dword ptr [ESI + 0x12c0]
00486522  85c9                      TEST ECX,ECX
00486524  0f4fc1                    CMOVG EAX,ECX
00486527  83f805                    CMP EAX,0x5
0048652a  7d06                      JGE 0x00486532
0048652c  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00486530  750d                      JNZ 0x0048653f
00486532  83bfc40b000006            CMP dword ptr [EDI + 0xbc4],0x6
00486539  0f8da9060000              JGE 0x00486be8
0048653f  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
00486542  85c0                      TEST EAX,EAX
00486544  0f8522040000              JNZ 0x0048696c
0048654a  33c9                      XOR ECX,ECX
0048654c  b802000000                MOV EAX,0x2
00486551  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00486555  0f45c1                    CMOVNZ EAX,ECX
00486558  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
0048655e  e8fd892600                CALL 0x006eef60
00486563  8bf0                      MOV ESI,EAX
00486565  8bcf                      MOV ECX,EDI
00486567  83e601                    AND ESI,0x1
0048656a  6800000010                PUSH 0x10000000
0048656f  46                        INC ESI
00486570  6a00                      PUSH 0x0
00486572  89b5ecfeffff              MOV dword ptr [EBP + 0xfffffeec],ESI
00486578  e8b30ef9ff                CALL 0x00417430
0048657d  84c0                      TEST AL,AL
0048657f  7423                      JZ 0x004865a4
00486581  6a00                      PUSH 0x0
00486583  51                        PUSH ECX
00486584  6a00                      PUSH 0x0
00486586  68d9000000                PUSH 0xd9
0048658b  8bcf                      MOV ECX,EDI
0048658d  e84e622200                CALL 0x006ac7e0
00486592  b903000000                MOV ECX,0x3
00486597  2bc8                      SUB ECX,EAX
00486599  3bf1                      CMP ESI,ECX
0048659b  0f4df1                    CMOVGE ESI,ECX
0048659e  89b5ecfeffff              MOV dword ptr [EBP + 0xfffffeec],ESI
004865a4  85f6                      TEST ESI,ESI
004865a6  0f8e1f060000              JLE 0x00486bcb
004865ac  8db73c030000              LEA ESI,[EDI + 0x33c]
004865b2  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004865b6  0f856a020000              JNZ 0x00486826
004865bc  51                        PUSH ECX
004865bd  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
004865c3  c7042400000000            MOV dword ptr [ESP],0x0
004865ca  50                        PUSH EAX
004865cb  8bcf                      MOV ECX,EDI
004865cd  e86e862300                CALL 0x006bec40
004865d2  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004865d6  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004865da  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004865df  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004865e7  0f28c1                    MOVAPS XMM0,XMM1
004865ea  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
004865f2  f30f59c1                  MULSS XMM0,XMM1
004865f6  0f28ca                    MOVAPS XMM1,XMM2
004865f9  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
00486601  f30f59ca                  MULSS XMM1,XMM2
00486605  f30f58c1                  ADDSS XMM0,XMM1
00486609  e842f4faff                CALL 0x00435a50
0048660e  0f57c9                    XORPS XMM1,XMM1
00486611  0f2fc1                    COMISS XMM0,XMM1
00486614  7633                      JBE 0x00486649
00486616  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0048661e  f30f5ec8                  DIVSS XMM1,XMM0
00486622  0f28c1                    MOVAPS XMM0,XMM1
00486625  f30f5985fcfeffff          MULSS XMM0,dword ptr [EBP + 0xfffffefc]
0048662d  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
00486635  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0048663d  f30f59c1                  MULSS XMM0,XMM1
00486641  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
00486649  e812892600                CALL 0x006eef60
0048664e  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00486656  8bf0                      MOV ESI,EAX
00486658  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
00486660  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00486668  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00486670  e8eb882600                CALL 0x006eef60
00486675  660f6ec0                  MOVD XMM0,EAX
00486679  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048667d  c1e81f                    SHR EAX,0x1f
00486680  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00486689  660f5ac0                  CVTPD2PS XMM0,XMM0
0048668d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00486695  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0048669d  f30f58c0                  ADDSS XMM0,XMM0
004866a1  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004866a9  e8b2882600                CALL 0x006eef60
004866ae  660f6ec0                  MOVD XMM0,EAX
004866b2  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004866b6  c1e81f                    SHR EAX,0x1f
004866b9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004866c2  660f5ac0                  CVTPD2PS XMM0,XMM0
004866c6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004866ce  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004866d6  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004866de  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004866e6  e8556ef9ff                CALL 0x0041d540
004866eb  f30f108dfcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffefc]
004866f3  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
004866fb  f30f598500ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff00]
00486703  f30f588ddcfeffff          ADDSS XMM1,dword ptr [EBP + 0xfffffedc]
0048670b  f30f58c1                  ADDSS XMM0,XMM1
0048670f  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
00486717  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
0048671f  e8fc6df9ff                CALL 0x0041d520
00486724  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
0048672c  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00486732  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
0048673a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00486740  f30f598500ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff00]
00486748  6a00                      PUSH 0x0
0048674a  f30f588d14ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff14]
00486752  56                        PUSH ESI
00486753  6a00                      PUSH 0x0
00486755  57                        PUSH EDI
00486756  6840b6c700                PUSH 0xc7b640
0048675b  50                        PUSH EAX
0048675c  ffb50cffffff              PUSH dword ptr [EBP + 0xffffff0c]
00486762  f30f58c1                  ADDSS XMM0,XMM1
00486766  68d9000000                PUSH 0xd9
0048676b  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
00486773  e8987c2700                CALL 0x006fe410
00486778  6a00                      PUSH 0x0
0048677a  68acd6c500                PUSH 0xc5d6ac
0048677f  68dcd5c500                PUSH 0xc5d5dc
00486784  6a00                      PUSH 0x0
00486786  50                        PUSH EAX
00486787  e825a16600                CALL 0x00af08b1
0048678c  f30f108dfcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffefc]
00486794  8bf0                      MOV ESI,EAX
00486796  f30f1095f4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef4]
0048679e  83c414                    ADD ESP,0x14
004867a1  f30f590d54a8ba00          MULSS XMM1,dword ptr [0x00baa854]
004867a9  0f57c0                    XORPS XMM0,XMM0
004867ac  f30f109e6c030000          MOVSS XMM3,dword ptr [ESI + 0x36c]
004867b4  f30f591554a8ba00          MULSS XMM2,dword ptr [0x00baa854]
004867bc  0f2ed8                    UCOMISS XMM3,XMM0
004867bf  9f                        LAHF
004867c0  f6c444                    TEST AH,0x44
004867c3  7b38                      JNP 0x004867fd
004867c5  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
004867cd  f30f59c8                  MULSS XMM1,XMM0
004867d1  f30f59d0                  MULSS XMM2,XMM0
004867d5  f30f5ecb                  DIVSS XMM1,XMM3
004867d9  f30f5ed3                  DIVSS XMM2,XMM3
004867dd  f30f588e60030000          ADDSS XMM1,dword ptr [ESI + 0x360]
004867e5  f30f589664030000          ADDSS XMM2,dword ptr [ESI + 0x364]
004867ed  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
004867f5  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
004867fd  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00486803  8bce                      MOV ECX,ESI
00486805  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0048680c  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00486812  8b06                      MOV EAX,dword ptr [ESI]
00486814  ff500c                    CALL dword ptr [EAX + 0xc]
00486817  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
00486821  e92e010000                JMP 0x00486954
00486826  e835872600                CALL 0x006eef60
0048682b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00486831  8bf8                      MOV EDI,EAX
00486833  6a00                      PUSH 0x0
00486835  6a00                      PUSH 0x0
00486837  6a00                      PUSH 0x0
00486839  51                        PUSH ECX
0048683a  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00486840  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00486846  c7042400007042            MOV dword ptr [ESP],0x42700000
0048684d  56                        PUSH ESI
0048684e  50                        PUSH EAX
0048684f  e8cccc3800                CALL 0x00813520
00486854  8bf0                      MOV ESI,EAX
00486856  e805872600                CALL 0x006eef60
0048685b  660f6ec0                  MOVD XMM0,EAX
0048685f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00486863  c1e81f                    SHR EAX,0x1f
00486866  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048686f  660f5ac0                  CVTPD2PS XMM0,XMM0
00486873  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0048687b  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00486883  f30f58c0                  ADDSS XMM0,XMM0
00486887  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0048688f  e8cc862600                CALL 0x006eef60
00486894  660f6ec0                  MOVD XMM0,EAX
00486898  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0048689c  c1e81f                    SHR EAX,0x1f
0048689f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004868a8  660f5ac0                  CVTPD2PS XMM0,XMM0
004868ac  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004868b4  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004868bc  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004868c4  e8576cf9ff                CALL 0x0041d520
004868c9  f30f598504ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff04]
004868d1  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004868d9  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
004868de  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004868e6  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004868ee  e84d6cf9ff                CALL 0x0041d540
004868f3  f30f598504ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff04]
004868fb  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
00486901  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00486907  6a00                      PUSH 0x0
00486909  57                        PUSH EDI
0048690a  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00486912  8bbd08ffffff              MOV EDI,dword ptr [EBP + 0xffffff08]
00486918  6a00                      PUSH 0x0
0048691a  57                        PUSH EDI
0048691b  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0048691f  6840b6c700                PUSH 0xc7b640
00486924  50                        PUSH EAX
00486925  ffb50cffffff              PUSH dword ptr [EBP + 0xffffff0c]
0048692b  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
00486933  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
0048693b  68d9000000                PUSH 0xd9
00486940  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00486948  e8c37a2700                CALL 0x006fe410
0048694d  8bc8                      MOV ECX,EAX
0048694f  8b10                      MOV EDX,dword ptr [EAX]
00486951  ff520c                    CALL dword ptr [EDX + 0xc]
00486954  83adecfeffff01            SUB dword ptr [EBP + 0xfffffeec],0x1
0048695b  8db73c030000              LEA ESI,[EDI + 0x33c]
00486961  0f854bfcffff              JNZ 0x004865b2
00486967  e95f020000                JMP 0x00486bcb
0048696c  83f801                    CMP EAX,0x1
0048696f  0f8599000000              JNZ 0x00486a0e
00486975  6a00                      PUSH 0x0
00486977  6a00                      PUSH 0x0
00486979  6a00                      PUSH 0x0
0048697b  51                        PUSH ECX
0048697c  c7042400007042            MOV dword ptr [ESP],0x42700000
00486983  8d873c030000              LEA EAX,[EDI + 0x33c]
00486989  50                        PUSH EAX
0048698a  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00486990  8bce                      MOV ECX,ESI
00486992  50                        PUSH EAX
00486993  e888cb3800                CALL 0x00813520
00486998  50                        PUSH EAX
00486999  8bce                      MOV ECX,ESI
0048699b  e8f0c23800                CALL 0x00812c90
004869a0  8b157816c700              MOV EDX,dword ptr [0x00c71678]
004869a6  8bf0                      MOV ESI,EAX
004869a8  81febf010000              CMP ESI,0x1bf
004869ae  771f                      JA 0x004869cf
004869b0  8b8a00830100              MOV ECX,dword ptr [EDX + 0x18300]
004869b6  8b44b124                  MOV EAX,dword ptr [ECX + ESI*0x4 + 0x24]
004869ba  85c0                      TEST EAX,EAX
004869bc  7411                      JZ 0x004869cf
004869be  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004869c1  83f801                    CMP EAX,0x1
004869c4  7409                      JZ 0x004869cf
004869c6  83f80a                    CMP EAX,0xa
004869c9  0f85fc010000              JNZ 0x00486bcb
004869cf  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
004869d5  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004869db  83780810                  CMP dword ptr [EAX + 0x8],0x10
004869df  0f84e6010000              JZ 0x00486bcb
004869e5  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
004869eb  e800273600                CALL 0x007e90f0
004869f0  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
004869f6  6a00                      PUSH 0x0
004869f8  50                        PUSH EAX
004869f9  6a01                      PUSH 0x1
004869fb  6a0e                      PUSH 0xe
004869fd  56                        PUSH ESI
004869fe  e89d523600                CALL 0x007ebca0
00486a03  ff87c40b0000              INC dword ptr [EDI + 0xbc4]
00486a09  e9bd010000                JMP 0x00486bcb
00486a0e  83f802                    CMP EAX,0x2
00486a11  0f85b4010000              JNZ 0x00486bcb
00486a17  e844852600                CALL 0x006eef60
00486a1c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00486a22  6a00                      PUSH 0x0
00486a24  6a00                      PUSH 0x0
00486a26  6a00                      PUSH 0x0
00486a28  51                        PUSH ECX
00486a29  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00486a2f  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00486a35  8d873c030000              LEA EAX,[EDI + 0x33c]
00486a3b  c7042400007042            MOV dword ptr [ESP],0x42700000
00486a42  50                        PUSH EAX
00486a43  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
00486a49  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00486a4f  50                        PUSH EAX
00486a50  e8cbca3800                CALL 0x00813520
00486a55  8bf8                      MOV EDI,EAX
00486a57  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
00486a5d  50                        PUSH EAX
00486a5e  e80d861f00                CALL 0x0067f070
00486a63  83c404                    ADD ESP,0x4
00486a66  8bf0                      MOV ESI,EAX
00486a68  e8f3842600                CALL 0x006eef60
00486a6d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00486a73  6a00                      PUSH 0x0
00486a75  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
00486a7b  660f6ec0                  MOVD XMM0,EAX
00486a7f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00486a83  c1e81f                    SHR EAX,0x1f
00486a86  6a00                      PUSH 0x0
00486a88  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00486a91  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
00486a97  660f5ac8                  CVTPD2PS XMM1,XMM0
00486a9b  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00486aa3  0f28c1                    MOVAPS XMM0,XMM1
00486aa6  f30f590e                  MULSS XMM1,dword ptr [ESI]
00486aaa  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
00486aaf  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00486ab7  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00486abf  f30f580f                  ADDSS XMM1,dword ptr [EDI]
00486ac3  f30f584704                ADDSS XMM0,dword ptr [EDI + 0x4]
00486ac8  8bbd08ffffff              MOV EDI,dword ptr [EBP + 0xffffff08]
00486ace  57                        PUSH EDI
00486acf  6840b6c700                PUSH 0xc7b640
00486ad4  50                        PUSH EAX
00486ad5  6a00                      PUSH 0x0
00486ad7  6a55                      PUSH 0x55
00486ad9  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
00486ae1  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00486ae9  e822792700                CALL 0x006fe410
00486aee  e86d842600                CALL 0x006eef60
00486af3  a801                      TEST AL,0x1
00486af5  0f85d0000000              JNZ 0x00486bcb
00486afb  e860842600                CALL 0x006eef60
00486b00  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00486b06  6a00                      PUSH 0x0
00486b08  6a00                      PUSH 0x0
00486b0a  6a00                      PUSH 0x0
00486b0c  51                        PUSH ECX
00486b0d  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00486b13  c7042400007042            MOV dword ptr [ESP],0x42700000
00486b1a  ffb5dcfeffff              PUSH dword ptr [EBP + 0xfffffedc]
00486b20  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00486b26  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00486b2c  50                        PUSH EAX
00486b2d  e8eec93800                CALL 0x00813520
00486b32  8bf8                      MOV EDI,EAX
00486b34  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
00486b3a  50                        PUSH EAX
00486b3b  e830851f00                CALL 0x0067f070
00486b40  83c404                    ADD ESP,0x4
00486b43  8bf0                      MOV ESI,EAX
00486b45  e816842600                CALL 0x006eef60
00486b4a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00486b50  6a00                      PUSH 0x0
00486b52  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
00486b58  660f6ec0                  MOVD XMM0,EAX
00486b5c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00486b60  c1e81f                    SHR EAX,0x1f
00486b63  6a00                      PUSH 0x0
00486b65  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00486b6e  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
00486b74  660f5ac8                  CVTPD2PS XMM1,XMM0
00486b78  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00486b80  0f28c1                    MOVAPS XMM0,XMM1
00486b83  f30f590e                  MULSS XMM1,dword ptr [ESI]
00486b87  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
00486b8c  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00486b94  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00486b9c  f30f580f                  ADDSS XMM1,dword ptr [EDI]
00486ba0  f30f584704                ADDSS XMM0,dword ptr [EDI + 0x4]
00486ba5  8bbd08ffffff              MOV EDI,dword ptr [EBP + 0xffffff08]
00486bab  57                        PUSH EDI
00486bac  6840b6c700                PUSH 0xc7b640
00486bb1  50                        PUSH EAX
00486bb2  6a00                      PUSH 0x0
00486bb4  6a55                      PUSH 0x55
00486bb6  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
00486bbe  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
00486bc6  e845782700                CALL 0x006fe410
00486bcb  51                        PUSH ECX
00486bcc  c704240000803f            MOV dword ptr [ESP],0x3f800000
00486bd3  6a00                      PUSH 0x0
00486bd5  6a02                      PUSH 0x2
00486bd7  51                        PUSH ECX
00486bd8  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
00486bdf  8bcf                      MOV ECX,EDI
00486be1  6a48                      PUSH 0x48
00486be3  e8b8ff2400                CALL 0x006d6ba0
00486be8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00486bec  740d                      JZ 0x00486bfb
00486bee  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00486bf5  0f85d7000000              JNZ 0x00486cd2
00486bfb  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00486c05  e9be000000                JMP 0x00486cc8
00486c0a  83f80a                    CMP EAX,0xa
00486c0d  751d                      JNZ 0x00486c2c
00486c0f  6a00                      PUSH 0x0
00486c11  683cd8b100                PUSH 0xb1d83c
00486c16  8d4f48                    LEA ECX,[EDI + 0x48]
00486c19  e86237f8ff                CALL 0x0040a380
00486c1e  51                        PUSH ECX
00486c1f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00486c26  6a00                      PUSH 0x0
00486c28  6a3c                      PUSH 0x3c
00486c2a  ebab                      JMP 0x00486bd7
00486c2c  83f810                    CMP EAX,0x10
00486c2f  754d                      JNZ 0x00486c7e
00486c31  6a00                      PUSH 0x0
00486c33  6844d8b100                PUSH 0xb1d844
00486c38  8d4f48                    LEA ECX,[EDI + 0x48]
00486c3b  e84037f8ff                CALL 0x0040a380
00486c40  e81b832600                CALL 0x006eef60
00486c45  33d2                      XOR EDX,EDX
00486c47  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
00486c4d  b91e000000                MOV ECX,0x1e
00486c52  f7f1                      DIV ECX
00486c54  8d4a3c                    LEA ECX,[EDX + 0x3c]
00486c57  8bc1                      MOV EAX,ECX
00486c59  99                        CDQ
00486c5a  2bc2                      SUB EAX,EDX
00486c5c  d1f8                      SAR EAX,0x1
00486c5e  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00486c62  0f45c1                    CMOVNZ EAX,ECX
00486c65  8d4e01                    LEA ECX,[ESI + 0x1]
00486c68  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00486c6e  3bf0                      CMP ESI,EAX
00486c70  7e60                      JLE 0x00486cd2
00486c72  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00486c7c  eb4a                      JMP 0x00486cc8
00486c7e  83f80b                    CMP EAX,0xb
00486c81  754f                      JNZ 0x00486cd2
00486c83  6a00                      PUSH 0x0
00486c85  6824d8b100                PUSH 0xb1d824
00486c8a  8d4f48                    LEA ECX,[EDI + 0x48]
00486c8d  e8ee36f8ff                CALL 0x0040a380
00486c92  51                        PUSH ECX
00486c93  c704240000803f            MOV dword ptr [ESP],0x3f800000
00486c9a  6a00                      PUSH 0x0
00486c9c  6a3c                      PUSH 0x3c
00486c9e  51                        PUSH ECX
00486c9f  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
00486ca6  8bcf                      MOV ECX,EDI
00486ca8  6a48                      PUSH 0x48
00486caa  e8f1fe2400                CALL 0x006d6ba0
00486caf  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00486cb3  7409                      JZ 0x00486cbe
00486cb5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00486cbc  7514                      JNZ 0x00486cd2
00486cbe  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00486cc8  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00486cd2  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00486cd8  2500400000                AND EAX,0x4000
00486cdd  83c800                    OR EAX,0x0
00486ce0  0f8581000000              JNZ 0x00486d67
00486ce6  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00486cec  8bce                      MOV ECX,ESI
00486cee  e85d662700                CALL 0x006fd350
00486cf3  84c0                      TEST AL,AL
00486cf5  7570                      JNZ 0x00486d67
00486cf7  8b86f8640200              MOV EAX,dword ptr [ESI + 0x264f8]
00486cfd  b905000000                MOV ECX,0x5
00486d02  034720                    ADD EAX,dword ptr [EDI + 0x20]
00486d05  99                        CDQ
00486d06  f7f9                      IDIV ECX
00486d08  85d2                      TEST EDX,EDX
00486d0a  755b                      JNZ 0x00486d67
00486d0c  e84f822600                CALL 0x006eef60
00486d11  51                        PUSH ECX
00486d12  8bcf                      MOV ECX,EDI
00486d14  660f6ec0                  MOVD XMM0,EAX
00486d18  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00486d1c  c1e81f                    SHR EAX,0x1f
00486d1f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00486d28  660f5ac0                  CVTPD2PS XMM0,XMM0
00486d2c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00486d34  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00486d3c  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
00486d44  f30f110424                MOVSS dword ptr [ESP],XMM0
00486d49  e882f72200                CALL 0x006b64d0
00486d4e  6a01                      PUSH 0x1
00486d50  6a00                      PUSH 0x0
00486d52  68ff000000                PUSH 0xff
00486d57  8b10                      MOV EDX,dword ptr [EAX]
00486d59  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00486d5f  6aff                      PUSH -0x1
00486d61  51                        PUSH ECX
00486d62  8bc8                      MOV ECX,EAX
00486d64  ff523c                    CALL dword ptr [EDX + 0x3c]
00486d67  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
00486d6e  7418                      JZ 0x00486d88
00486d70  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00486d78  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00486d80  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00486d88  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00486d8b  64890d00000000            MOV dword ptr FS:[0x0],ECX
00486d92  59                        POP ECX
00486d93  5f                        POP EDI
00486d94  5e                        POP ESI
00486d95  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00486d98  33cd                      XOR ECX,EBP
00486d9a  e88c836600                CALL 0x00aef12b
00486d9f  8be5                      MOV ESP,EBP
00486da1  5d                        POP EBP
00486da2  8be3                      MOV ESP,EBX
00486da4  5b                        POP EBX
00486da5  c3                        RET
