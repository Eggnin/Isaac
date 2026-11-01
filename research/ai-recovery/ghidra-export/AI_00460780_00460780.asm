; J460 NPC AI 0x00460780 AI_00460780
; types=264
; identities=264.0.0
; entry=00460780
00460780  53                        PUSH EBX
00460781  8bdc                      MOV EBX,ESP
00460783  83ec08                    SUB ESP,0x8
00460786  83e4f8                    AND ESP,0xfffffff8
00460789  83c404                    ADD ESP,0x4
0046078c  55                        PUSH EBP
0046078d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00460790  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00460794  8bec                      MOV EBP,ESP
00460796  6aff                      PUSH -0x1
00460798  68aa26af00                PUSH 0xaf26aa
0046079d  64a100000000              MOV EAX,FS:[0x0]
004607a3  50                        PUSH EAX
004607a4  53                        PUSH EBX
004607a5  81eca8010000              SUB ESP,0x1a8
004607ab  a1b493bf00                MOV EAX,[0x00bf93b4]
004607b0  33c5                      XOR EAX,EBP
004607b2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004607b5  56                        PUSH ESI
004607b6  57                        PUSH EDI
004607b7  50                        PUSH EAX
004607b8  8d45f4                    LEA EAX,[EBP + -0xc]
004607bb  64a300000000              MOV FS:[0x0],EAX
004607c1  8bf9                      MOV EDI,ECX
004607c3  89bd7cfeffff              MOV dword ptr [EBP + 0xfffffe7c],EDI
004607c9  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004607d0  7556                      JNZ 0x00460828
004607d2  c787640100000000a040      MOV dword ptr [EDI + 0x164],0x40a00000
004607dc  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004607e6  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004607f0  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
004607fa  837f3001                  CMP dword ptr [EDI + 0x30],0x1
004607fe  0f85ca140000              JNZ 0x00461cce
00460804  be02000000                MOV ESI,0x2
00460809  0f1f8000000000            NOP dword ptr [EAX]
00460810  56                        PUSH ESI
00460811  8d4f48                    LEA ECX,[EDI + 0x48]
00460814  e807aafaff                CALL 0x0040b220
00460819  46                        INC ESI
0046081a  c6407400                  MOV byte ptr [EAX + 0x74],0x0
0046081e  83fe07                    CMP ESI,0x7
00460821  7eed                      JLE 0x00460810
00460823  e9a6140000                JMP 0x00461cce
00460828  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0046082c  0f57c0                    XORPS XMM0,XMM0
0046082f  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
00460837  7524                      JNZ 0x0046085d
00460839  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0046083c  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0046083f  741c                      JZ 0x0046085d
00460841  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00460844  81e100020000              AND ECX,0x200
0046084a  83c900                    OR ECX,0x0
0046084d  7406                      JZ 0x00460855
0046084f  c70000000000              MOV dword ptr [EAX],0x0
00460855  83c038                    ADD EAX,0x38
00460858  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0046085b  75e4                      JNZ 0x00460841
0046085d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00460861  8d7778                    LEA ESI,[EDI + 0x78]
00460864  89b584feffff              MOV dword ptr [EBP + 0xfffffe84],ESI
0046086a  0f84c3000000              JZ 0x00460933
00460870  6868deb100                PUSH 0xb1de68
00460875  8bce                      MOV ECX,ESI
00460877  e854a5faff                CALL 0x0040add0
0046087c  84c0                      TEST AL,AL
0046087e  7453                      JZ 0x004608d3
00460880  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00460886  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
0046088c  c78594feffffbc030000      MOV dword ptr [EBP + 0xfffffe94],0x3bc
00460896  e8e55e4f00                CALL 0x00956780
0046089b  83ec08                    SUB ESP,0x8
0046089e  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004608a4  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004608ac  c704240000803f            MOV dword ptr [ESP],0x3f800000
004608b3  6a00                      PUSH 0x0
004608b5  6a02                      PUSH 0x2
004608b7  51                        PUSH ECX
004608b8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004608bf  ffb594feffff              PUSH dword ptr [EBP + 0xfffffe94]
004608c5  e866d34c00                CALL 0x0092dc30
004608ca  8d7778                    LEA ESI,[EDI + 0x78]
004608cd  89b584feffff              MOV dword ptr [EBP + 0xfffffe84],ESI
004608d3  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004608d7  745a                      JZ 0x00460933
004608d9  6858deb100                PUSH 0xb1de58
004608de  8bce                      MOV ECX,ESI
004608e0  e8eba4faff                CALL 0x0040add0
004608e5  84c0                      TEST AL,AL
004608e7  744a                      JZ 0x00460933
004608e9  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004608ef  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
004608f5  c78594feffffbd030000      MOV dword ptr [EBP + 0xfffffe94],0x3bd
004608ff  e87c5e4f00                CALL 0x00956780
00460904  83ec08                    SUB ESP,0x8
00460907  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0046090d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00460915  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046091c  6a00                      PUSH 0x0
0046091e  6a02                      PUSH 0x2
00460920  51                        PUSH ECX
00460921  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460928  ffb594feffff              PUSH dword ptr [EBP + 0xfffffe94]
0046092e  e8fdd24c00                CALL 0x0092dc30
00460933  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00460939  83f803                    CMP EAX,0x3
0046093c  0f855b020000              JNZ 0x00460b9d
00460942  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00460945  85f6                      TEST ESI,ESI
00460947  744a                      JZ 0x00460993
00460949  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0046094d  8bc6                      MOV EAX,ESI
0046094f  7202                      JC 0x00460953
00460951  8b06                      MOV EAX,dword ptr [ESI]
00460953  b954bcb100                MOV ECX,0xb1bc54
00460958  8a10                      MOV DL,byte ptr [EAX]
0046095a  3a11                      CMP DL,byte ptr [ECX]
0046095c  751a                      JNZ 0x00460978
0046095e  84d2                      TEST DL,DL
00460960  7412                      JZ 0x00460974
00460962  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00460965  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00460968  750e                      JNZ 0x00460978
0046096a  83c002                    ADD EAX,0x2
0046096d  83c102                    ADD ECX,0x2
00460970  84d2                      TEST DL,DL
00460972  75e4                      JNZ 0x00460958
00460974  33c0                      XOR EAX,EAX
00460976  eb05                      JMP 0x0046097d
00460978  1bc0                      SBB EAX,EAX
0046097a  83c801                    OR EAX,0x1
0046097d  85c0                      TEST EAX,EAX
0046097f  7512                      JNZ 0x00460993
00460981  384634                    CMP byte ptr [ESI + 0x34],AL
00460984  742e                      JZ 0x004609b4
00460986  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0046098c  8d7748                    LEA ESI,[EDI + 0x48]
0046098f  7523                      JNZ 0x004609b4
00460991  eb03                      JMP 0x00460996
00460993  8d7748                    LEA ESI,[EDI + 0x48]
00460996  6a01                      PUSH 0x1
00460998  6854bcb100                PUSH 0xb1bc54
0046099d  8bce                      MOV ECX,ESI
0046099f  e82c9cfaff                CALL 0x0040a5d0
004609a4  84c0                      TEST AL,AL
004609a6  740c                      JZ 0x004609b4
004609a8  8d4e30                    LEA ECX,[ESI + 0x30]
004609ab  e80098faff                CALL 0x0040a1b0
004609b0  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004609b4  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
004609ba  33c0                      XOR EAX,EAX
004609bc  81e100000010              AND ECX,0x10000000
004609c2  0bc1                      OR EAX,ECX
004609c4  7418                      JZ 0x004609de
004609c6  a17816c700                MOV EAX,[0x00c71678]
004609cb  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004609d1  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004609d4  f6404401                  TEST byte ptr [EAX + 0x44],0x1
004609d8  0f85d8120000              JNZ 0x00461cb6
004609de  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
004609e4  8d4101                    LEA EAX,[ECX + 0x1]
004609e7  898710040000              MOV dword ptr [EDI + 0x410],EAX
004609ed  83f91e                    CMP ECX,0x1e
004609f0  0f8ec0120000              JLE 0x00461cb6
004609f6  e865e52800                CALL 0x006eef60
004609fb  33d2                      XOR EDX,EDX
004609fd  b90f000000                MOV ECX,0xf
00460a02  f7f1                      DIV ECX
00460a04  85d2                      TEST EDX,EDX
00460a06  7428                      JZ 0x00460a30
00460a08  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00460a0d  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00460a14  0f869c120000              JBE 0x00461cb6
00460a1a  e841e52800                CALL 0x006eef60
00460a1f  33d2                      XOR EDX,EDX
00460a21  b905000000                MOV ECX,0x5
00460a26  f7f1                      DIV ECX
00460a28  85d2                      TEST EDX,EDX
00460a2a  0f8586120000              JNZ 0x00461cb6
00460a30  8bcf                      MOV ECX,EDI
00460a32  e809de2500                CALL 0x006be840
00460a37  33c9                      XOR ECX,ECX
00460a39  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00460a3d  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00460a45  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00460a4d  8d711e                    LEA ESI,[ECX + 0x1e]
00460a50  f30f59c0                  MULSS XMM0,XMM0
00460a54  b81e000000                MOV EAX,0x1e
00460a59  0f44c1                    CMOVZ EAX,ECX
00460a5c  f30f59c9                  MULSS XMM1,XMM1
00460a60  898594feffff              MOV dword ptr [EBP + 0xfffffe94],EAX
00460a66  f30f58c1                  ADDSS XMM0,XMM1
00460a6a  e8e14ffdff                CALL 0x00435a50
00460a6f  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
00460a77  b832000000                MOV EAX,0x32
00460a7c  0f2fc8                    COMISS XMM1,XMM0
00460a7f  b928000000                MOV ECX,0x28
00460a84  0f47f0                    CMOVA ESI,EAX
00460a87  b814000000                MOV EAX,0x14
00460a8c  0f2f05d4aaba00            COMISS XMM0,dword ptr [0x00baaad4]
00460a93  0f47c1                    CMOVA EAX,ECX
00460a96  8b8d94feffff              MOV ECX,dword ptr [EBP + 0xfffffe94]
00460a9c  03f1                      ADD ESI,ECX
00460a9e  03c6                      ADD EAX,ESI
00460aa0  898584feffff              MOV dword ptr [EBP + 0xfffffe84],EAX
00460aa6  8d1430                    LEA EDX,[EAX + ESI*0x1]
00460aa9  03d1                      ADD EDX,ECX
00460aab  899590feffff              MOV dword ptr [EBP + 0xfffffe90],EDX
00460ab1  7504                      JNZ 0x00460ab7
00460ab3  33d2                      XOR EDX,EDX
00460ab5  eb19                      JMP 0x00460ad0
00460ab7  e8a4e42800                CALL 0x006eef60
00460abc  8b8d94feffff              MOV ECX,dword ptr [EBP + 0xfffffe94]
00460ac2  33d2                      XOR EDX,EDX
00460ac4  f7b590feffff              DIV dword ptr [EBP + 0xfffffe90]
00460aca  8b8584feffff              MOV EAX,dword ptr [EBP + 0xfffffe84]
00460ad0  3bd1                      CMP EDX,ECX
00460ad2  7d0f                      JGE 0x00460ae3
00460ad4  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00460ade  e9d3110000                JMP 0x00461cb6
00460ae3  3bd6                      CMP EDX,ESI
00460ae5  7d2f                      JGE 0x00460b16
00460ae7  51                        PUSH ECX
00460ae8  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460aef  6a00                      PUSH 0x0
00460af1  6a02                      PUSH 0x2
00460af3  51                        PUSH ECX
00460af4  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460afb  8bcf                      MOV ECX,EDI
00460afd  682e010000                PUSH 0x12e
00460b02  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
00460b0c  e88f602700                CALL 0x006d6ba0
00460b11  e9a0110000                JMP 0x00461cb6
00460b16  3bd0                      CMP EDX,EAX
00460b18  0f8d98110000              JGE 0x00461cb6
00460b1e  51                        PUSH ECX
00460b1f  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00460b25  c7042400000000            MOV dword ptr [ESP],0x0
00460b2c  50                        PUSH EAX
00460b2d  8bcf                      MOV ECX,EDI
00460b2f  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00460b39  e802e12500                CALL 0x006bec40
00460b3e  8bcf                      MOV ECX,EDI
00460b40  8bf0                      MOV ESI,EAX
00460b42  e8f9dc2500                CALL 0x006be840
00460b47  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
00460b4f  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
00460b57  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00460b5f  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00460b67  f30f580e                  ADDSS XMM1,dword ptr [ESI]
00460b6b  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
00460b70  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
00460b78  f30f119738030000          MOVSS dword ptr [EDI + 0x338],XMM2
00460b80  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
00460b8a  e8d1e32800                CALL 0x006eef60
00460b8f  83e001                    AND EAX,0x1
00460b92  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00460b98  e919110000                JMP 0x00461cb6
00460b9d  83f810                    CMP EAX,0x10
00460ba0  0f8551030000              JNZ 0x00460ef7
00460ba6  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00460ba9  85f6                      TEST ESI,ESI
00460bab  744e                      JZ 0x00460bfb
00460bad  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00460bb1  8bc6                      MOV EAX,ESI
00460bb3  7202                      JC 0x00460bb7
00460bb5  8b06                      MOV EAX,dword ptr [ESI]
00460bb7  b97cdeb100                MOV ECX,0xb1de7c
00460bbc  0f1f4000                  NOP dword ptr [EAX]
00460bc0  8a10                      MOV DL,byte ptr [EAX]
00460bc2  3a11                      CMP DL,byte ptr [ECX]
00460bc4  751a                      JNZ 0x00460be0
00460bc6  84d2                      TEST DL,DL
00460bc8  7412                      JZ 0x00460bdc
00460bca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00460bcd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00460bd0  750e                      JNZ 0x00460be0
00460bd2  83c002                    ADD EAX,0x2
00460bd5  83c102                    ADD ECX,0x2
00460bd8  84d2                      TEST DL,DL
00460bda  75e4                      JNZ 0x00460bc0
00460bdc  33c0                      XOR EAX,EAX
00460bde  eb05                      JMP 0x00460be5
00460be0  1bc0                      SBB EAX,EAX
00460be2  83c801                    OR EAX,0x1
00460be5  85c0                      TEST EAX,EAX
00460be7  7512                      JNZ 0x00460bfb
00460be9  384634                    CMP byte ptr [ESI + 0x34],AL
00460bec  742e                      JZ 0x00460c1c
00460bee  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00460bf4  8d7748                    LEA ESI,[EDI + 0x48]
00460bf7  7523                      JNZ 0x00460c1c
00460bf9  eb03                      JMP 0x00460bfe
00460bfb  8d7748                    LEA ESI,[EDI + 0x48]
00460bfe  6a01                      PUSH 0x1
00460c00  687cdeb100                PUSH 0xb1de7c
00460c05  8bce                      MOV ECX,ESI
00460c07  e8c499faff                CALL 0x0040a5d0
00460c0c  84c0                      TEST AL,AL
00460c0e  740c                      JZ 0x00460c1c
00460c10  8d4e30                    LEA ECX,[ESI + 0x30]
00460c13  e89895faff                CALL 0x0040a1b0
00460c18  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00460c1c  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00460c20  0f84c2020000              JZ 0x00460ee8
00460c26  8bb584feffff              MOV ESI,dword ptr [EBP + 0xfffffe84]
00460c2c  8bce                      MOV ECX,ESI
00460c2e  6858deb100                PUSH 0xb1de58
00460c33  e838a2faff                CALL 0x0040ae70
00460c38  84c0                      TEST AL,AL
00460c3a  0f8495020000              JZ 0x00460ed5
00460c40  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00460c44  7414                      JZ 0x00460c5a
00460c46  6868deb100                PUSH 0xb1de68
00460c4b  8bce                      MOV ECX,ESI
00460c4d  e81ea2faff                CALL 0x0040ae70
00460c52  84c0                      TEST AL,AL
00460c54  0f857b020000              JNZ 0x00460ed5
00460c5a  a17816c700                MOV EAX,[0x00c71678]
00460c5f  33f6                      XOR ESI,ESI
00460c61  89b590feffff              MOV dword ptr [EBP + 0xfffffe90],ESI
00460c67  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00460c6d  89858cfeffff              MOV dword ptr [EBP + 0xfffffe8c],EAX
00460c73  39b064120000              CMP dword ptr [EAX + 0x1264],ESI
00460c79  0f8656020000              JBE 0x00460ed5
00460c7f  90                        NOP
00460c80  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
00460c86  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
00460c89  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
00460c90  0f8520020000              JNZ 0x00460eb6
00460c96  8b4e28                    MOV ECX,dword ptr [ESI + 0x28]
00460c99  83f901                    CMP ECX,0x1
00460c9c  7422                      JZ 0x00460cc0
00460c9e  8d41f6                    LEA EAX,[ECX + -0xa]
00460ca1  3ddd030000                CMP EAX,0x3dd
00460ca6  7705                      JA 0x00460cad
00460ca8  83f921                    CMP ECX,0x21
00460cab  7513                      JNZ 0x00460cc0
00460cad  83f902                    CMP ECX,0x2
00460cb0  740e                      JZ 0x00460cc0
00460cb2  83f909                    CMP ECX,0x9
00460cb5  7409                      JZ 0x00460cc0
00460cb7  83f905                    CMP ECX,0x5
00460cba  0f85f6010000              JNZ 0x00460eb6
00460cc0  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
00460cc8  f30f10ae40030000          MOVSS XMM5,dword ptr [ESI + 0x340]
00460cd0  0f28da                    MOVAPS XMM3,XMM2
00460cd3  0f28e5                    MOVAPS XMM4,XMM5
00460cd6  83f901                    CMP ECX,0x1
00460cd9  7561                      JNZ 0x00460d3c
00460cdb  8b86681e0000              MOV EAX,dword ptr [ESI + 0x1e68]
00460ce1  85c0                      TEST EAX,EAX
00460ce3  7451                      JZ 0x00460d36
00460ce5  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
00460ced  0f28ca                    MOVAPS XMM1,XMM2
00460cf0  f30f10a040030000          MOVSS XMM4,dword ptr [EAX + 0x340]
00460cf8  f30f5ccb                  SUBSS XMM1,XMM3
00460cfc  0f28c5                    MOVAPS XMM0,XMM5
00460cff  f30f5cc4                  SUBSS XMM0,XMM4
00460d03  f30f59c9                  MULSS XMM1,XMM1
00460d07  f30f59c0                  MULSS XMM0,XMM0
00460d0b  f30f58c1                  ADDSS XMM0,XMM1
00460d0f  f30f100df8abba00          MOVSS XMM1,dword ptr [0x00baabf8]
00460d17  0f2fc8                    COMISS XMM1,XMM0
00460d1a  761a                      JBE 0x00460d36
00460d1c  f30f58da                  ADDSS XMM3,XMM2
00460d20  f30f58e5                  ADDSS XMM4,XMM5
00460d24  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
00460d2c  f30f5925d0a2ba00          MULSS XMM4,dword ptr [0x00baa2d0]
00460d34  eb06                      JMP 0x00460d3c
00460d36  0f28da                    MOVAPS XMM3,XMM2
00460d39  0f28e5                    MOVAPS XMM4,XMM5
00460d3c  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00460d44  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00460d4c  f30f118d70feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM1
00460d54  f30f5ccc                  SUBSS XMM1,XMM4
00460d58  f30f119574feffff          MOVSS dword ptr [EBP + 0xfffffe74],XMM2
00460d60  f30f5cd3                  SUBSS XMM2,XMM3
00460d64  0f28c1                    MOVAPS XMM0,XMM1
00460d67  f30f118d94feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM1
00460d6f  f30f59c1                  MULSS XMM0,XMM1
00460d73  0f28ca                    MOVAPS XMM1,XMM2
00460d76  f30f59ca                  MULSS XMM1,XMM2
00460d7a  f30f119584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM2
00460d82  f30f58c1                  ADDSS XMM0,XMM1
00460d86  e8c54cfdff                CALL 0x00435a50
00460d8b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00460d92  7633                      JBE 0x00460dc7
00460d94  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00460d9c  f30f5ec8                  DIVSS XMM1,XMM0
00460da0  0f28c1                    MOVAPS XMM0,XMM1
00460da3  f30f598584feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe84]
00460dab  f30f118584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM0
00460db3  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
00460dbb  f30f59c1                  MULSS XMM0,XMM1
00460dbf  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
00460dc7  f30f108d74feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe74]
00460dcf  f30f108570feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe70]
00460dd7  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
00460ddf  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00460de7  c7857cfeffff6666663f      MOV dword ptr [EBP + 0xfffffe7c],0x3f666666
00460df1  f30f59c0                  MULSS XMM0,XMM0
00460df5  f30f59c9                  MULSS XMM1,XMM1
00460df9  f30f58c1                  ADDSS XMM0,XMM1
00460dfd  e84e4cfdff                CALL 0x00435a50
00460e02  f30f100d98abba00          MOVSS XMM1,dword ptr [0x00baab98]
00460e0a  8d8574feffff              LEA EAX,[EBP + 0xfffffe74]
00460e10  f30f5cc8                  SUBSS XMM1,XMM0
00460e14  f30f10a66c030000          MOVSS XMM4,dword ptr [ESI + 0x36c]
00460e1c  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
00460e24  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
00460e2a  0f57db                    XORPS XMM3,XMM3
00460e2d  f30f109594feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe94]
00460e35  c78574feffff00000000      MOV dword ptr [EBP + 0xfffffe74],0x0
00460e3f  f30f59c8                  MULSS XMM1,XMM0
00460e43  f30f5e0d98abba00          DIVSS XMM1,dword ptr [0x00baab98]
00460e4b  0f2fcb                    COMISS XMM1,XMM3
00460e4e  f30f118d70feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM1
00460e56  f30f108d84feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe84]
00460e5e  0f46c8                    CMOVBE ECX,EAX
00460e61  8d857cfeffff              LEA EAX,[EBP + 0xfffffe7c]
00460e67  0f2f01                    COMISS XMM0,dword ptr [ECX]
00460e6a  0f47c1                    CMOVA EAX,ECX
00460e6d  0f2ee3                    UCOMISS XMM4,XMM3
00460e70  f30f5908                  MULSS XMM1,dword ptr [EAX]
00460e74  f30f5910                  MULSS XMM2,dword ptr [EAX]
00460e78  9f                        LAHF
00460e79  f6c444                    TEST AH,0x44
00460e7c  7b38                      JNP 0x00460eb6
00460e7e  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
00460e86  f30f59c8                  MULSS XMM1,XMM0
00460e8a  f30f59d0                  MULSS XMM2,XMM0
00460e8e  f30f5ecc                  DIVSS XMM1,XMM4
00460e92  f30f5ed4                  DIVSS XMM2,XMM4
00460e96  f30f588e60030000          ADDSS XMM1,dword ptr [ESI + 0x360]
00460e9e  f30f589664030000          ADDSS XMM2,dword ptr [ESI + 0x364]
00460ea6  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
00460eae  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
00460eb6  8bb590feffff              MOV ESI,dword ptr [EBP + 0xfffffe90]
00460ebc  8b858cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe8c]
00460ec2  46                        INC ESI
00460ec3  89b590feffff              MOV dword ptr [EBP + 0xfffffe90],ESI
00460ec9  3bb064120000              CMP ESI,dword ptr [EAX + 0x1264]
00460ecf  0f82abfdffff              JC 0x00460c80
00460ed5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00460ed9  740d                      JZ 0x00460ee8
00460edb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00460ee2  0f85ce0d0000              JNZ 0x00461cb6
00460ee8  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00460ef2  e9bf0d0000                JMP 0x00461cb6
00460ef7  83f808                    CMP EAX,0x8
00460efa  0f8514040000              JNZ 0x00461314
00460f00  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00460f03  85f6                      TEST ESI,ESI
00460f05  744a                      JZ 0x00460f51
00460f07  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00460f0b  8bc6                      MOV EAX,ESI
00460f0d  7202                      JC 0x00460f11
00460f0f  8b06                      MOV EAX,dword ptr [ESI]
00460f11  b974deb100                MOV ECX,0xb1de74
00460f16  8a10                      MOV DL,byte ptr [EAX]
00460f18  3a11                      CMP DL,byte ptr [ECX]
00460f1a  751a                      JNZ 0x00460f36
00460f1c  84d2                      TEST DL,DL
00460f1e  7412                      JZ 0x00460f32
00460f20  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00460f23  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00460f26  750e                      JNZ 0x00460f36
00460f28  83c002                    ADD EAX,0x2
00460f2b  83c102                    ADD ECX,0x2
00460f2e  84d2                      TEST DL,DL
00460f30  75e4                      JNZ 0x00460f16
00460f32  33c0                      XOR EAX,EAX
00460f34  eb05                      JMP 0x00460f3b
00460f36  1bc0                      SBB EAX,EAX
00460f38  83c801                    OR EAX,0x1
00460f3b  85c0                      TEST EAX,EAX
00460f3d  7512                      JNZ 0x00460f51
00460f3f  384634                    CMP byte ptr [ESI + 0x34],AL
00460f42  742e                      JZ 0x00460f72
00460f44  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00460f4a  8d7748                    LEA ESI,[EDI + 0x48]
00460f4d  7523                      JNZ 0x00460f72
00460f4f  eb03                      JMP 0x00460f54
00460f51  8d7748                    LEA ESI,[EDI + 0x48]
00460f54  6a01                      PUSH 0x1
00460f56  6874deb100                PUSH 0xb1de74
00460f5b  8bce                      MOV ECX,ESI
00460f5d  e86e96faff                CALL 0x0040a5d0
00460f62  84c0                      TEST AL,AL
00460f64  740c                      JZ 0x00460f72
00460f66  8d4e30                    LEA ECX,[ESI + 0x30]
00460f69  e84292faff                CALL 0x0040a1b0
00460f6e  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00460f72  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00460f76  8bb584feffff              MOV ESI,dword ptr [EBP + 0xfffffe84]
00460f7c  0f84200d0000              JZ 0x00461ca2
00460f82  68dcd2b100                PUSH 0xb1d2dc
00460f87  8bce                      MOV ECX,ESI
00460f89  e8429efaff                CALL 0x0040add0
00460f8e  84c0                      TEST AL,AL
00460f90  7470                      JZ 0x00461002
00460f92  51                        PUSH ECX
00460f93  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460f9a  6a00                      PUSH 0x0
00460f9c  6a02                      PUSH 0x2
00460f9e  51                        PUSH ECX
00460f9f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460fa6  8bcf                      MOV ECX,EDI
00460fa8  6837010000                PUSH 0x137
00460fad  e8ee5b2700                CALL 0x006d6ba0
00460fb2  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00460fb8  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00460fbe  c78590feffffbe030000      MOV dword ptr [EBP + 0xfffffe90],0x3be
00460fc8  e8b3574f00                CALL 0x00956780
00460fcd  83ec08                    SUB ESP,0x8
00460fd0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00460fd8  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460fdf  6a00                      PUSH 0x0
00460fe1  6a02                      PUSH 0x2
00460fe3  51                        PUSH ECX
00460fe4  c704240000803f            MOV dword ptr [ESP],0x3f800000
00460feb  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00460ff1  ffb590feffff              PUSH dword ptr [EBP + 0xfffffe90]
00460ff7  e834cc4c00                CALL 0x0092dc30
00460ffc  8bb584feffff              MOV ESI,dword ptr [EBP + 0xfffffe84]
00461002  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00461006  0f84960c0000              JZ 0x00461ca2
0046100c  68dcd2b100                PUSH 0xb1d2dc
00461011  8bce                      MOV ECX,ESI
00461013  e8589efaff                CALL 0x0040ae70
00461018  84c0                      TEST AL,AL
0046101a  0f84730c0000              JZ 0x00461c93
00461020  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00461024  7414                      JZ 0x0046103a
00461026  688cdeb100                PUSH 0xb1de8c
0046102b  8bce                      MOV ECX,ESI
0046102d  e83e9efaff                CALL 0x0040ae70
00461032  84c0                      TEST AL,AL
00461034  0f85590c0000              JNZ 0x00461c93
0046103a  8bcf                      MOV ECX,EDI
0046103c  e8ffd72500                CALL 0x006be840
00461041  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00461045  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0046104d  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00461055  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0046105d  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00461065  f30f118574feffff          MOVSS dword ptr [EBP + 0xfffffe74],XMM0
0046106d  f30f118d94feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM1
00461075  0f85e0000000              JNZ 0x0046115b
0046107b  ff7720                    PUSH dword ptr [EDI + 0x20]
0046107e  8bcf                      MOV ECX,EDI
00461080  6a03                      PUSH 0x3
00461082  e889b62400                CALL 0x006ac710
00461087  84c0                      TEST AL,AL
00461089  0f84040c0000              JZ 0x00461c93
0046108f  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00461095  e896defdff                CALL 0x0043ef30
0046109a  a17816c700                MOV EAX,[0x00c71678]
0046109f  8bcf                      MOV ECX,EDI
004610a1  c78588feffff0000a040      MOV dword ptr [EBP + 0xfffffe88],0x40a00000
004610ab  c7858cfeffff00008040      MOV dword ptr [EBP + 0xfffffe8c],0x40800000
004610b5  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
004610bb  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
004610c1  814d9800002000            OR dword ptr [EBP + -0x68],0x200000
004610c8  c78544ffffff000020c2      MOV dword ptr [EBP + 0xffffff44],0xc2200000
004610d2  c78554ffffff0000c03f      MOV dword ptr [EBP + 0xffffff54],0x3fc00000
004610dc  660f6ec0                  MOVD XMM0,EAX
004610e0  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
004610e3  0f5bc0                    CVTDQ2PS XMM0,XMM0
004610e6  89459c                    MOV dword ptr [EBP + -0x64],EAX
004610e9  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
004610ef  50                        PUSH EAX
004610f0  6a09                      PUSH 0x9
004610f2  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
004610f8  c78548ffffff0000c03f      MOV dword ptr [EBP + 0xffffff48],0x3fc00000
00461102  50                        PUSH EAX
00461103  f30f5905d0a0ba00          MULSS XMM0,dword ptr [0x00baa0d0]
0046110b  8d8578feffff              LEA EAX,[EBP + 0xfffffe78]
00461111  50                        PUSH EAX
00461112  c745d403000000            MOV dword ptr [EBP + -0x2c],0x3
00461119  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
00461121  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00461129  f30f5c05e49fba00          SUBSS XMM0,dword ptr [0x00ba9fe4]
00461131  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
00461139  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00461141  f30f5c05e8a7ba00          SUBSS XMM0,dword ptr [0x00baa7e8]
00461149  f30f11857cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM0
00461151  e88aa12600                CALL 0x006cb2e0
00461156  e9380b0000                JMP 0x00461c93
0046115b  8d4f48                    LEA ECX,[EDI + 0x48]
0046115e  e81d96faff                CALL 0x0040a780
00461163  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00461169  660f6ec0                  MOVD XMM0,EAX
0046116d  0f5bc0                    CVTDQ2PS XMM0,XMM0
00461170  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
00461178  f30f5e0554a8ba00          DIVSS XMM0,dword ptr [0x00baa854]
00461180  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
00461188  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
00461190  f30f58c0                  ADDSS XMM0,XMM0
00461194  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0046119c  f30f118570feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM0
004611a4  e887ddfdff                CALL 0x0043ef30
004611a9  c78544ffffff000096c3      MOV dword ptr [EBP + 0xffffff44],0xc3960000
004611b3  c78548ffffff000020c2      MOV dword ptr [EBP + 0xffffff48],0xc2200000
004611bd  c7854cffffff00000040      MOV dword ptr [EBP + 0xffffff4c],0x40000000
004611c7  e894dd2800                CALL 0x006eef60
004611cc  c745d403000000            MOV dword ptr [EBP + -0x2c],0x3
004611d3  660f6ec0                  MOVD XMM0,EAX
004611d7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004611db  c1e81f                    SHR EAX,0x1f
004611de  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004611e7  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
004611ed  50                        PUSH EAX
004611ee  660f5ac0                  CVTPD2PS XMM0,XMM0
004611f2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004611fa  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00461202  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
0046120a  e861de2100                CALL 0x0067f070
0046120f  83c404                    ADD ESP,0x4
00461212  8bf0                      MOV ESI,EAX
00461214  e847dd2800                CALL 0x006eef60
00461219  8bcf                      MOV ECX,EDI
0046121b  660f6ec0                  MOVD XMM0,EAX
0046121f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00461223  c1e81f                    SHR EAX,0x1f
00461226  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0046122f  660f5ac0                  CVTPD2PS XMM0,XMM0
00461233  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0046123b  f30f11857cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM0
00461243  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00461247  f30f11858cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM0
0046124f  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00461254  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
0046125c  e8dfd52500                CALL 0x006be840
00461261  f30f10a58cfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe8c]
00461269  8bcf                      MOV ECX,EDI
0046126b  f30f59a57cfeffff          MULSS XMM4,dword ptr [EBP + 0xfffffe7c]
00461273  f30f109060030000          MOVSS XMM2,dword ptr [EAX + 0x360]
0046127b  f30f108574feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe74]
00461283  f30f59a570feffff          MULSS XMM4,dword ptr [EBP + 0xfffffe70]
0046128b  f30f59059ca0ba00          MULSS XMM0,dword ptr [0x00baa09c]
00461293  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
0046129b  f30f109864030000          MOVSS XMM3,dword ptr [EAX + 0x364]
004612a3  f30f58e0                  ADDSS XMM4,XMM0
004612a7  f30f591d04a3ba00          MULSS XMM3,dword ptr [0x00baa304]
004612af  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
004612b5  50                        PUSH EAX
004612b6  6a00                      PUSH 0x0
004612b8  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
004612be  f30f58e2                  ADDSS XMM4,XMM2
004612c2  f30f109590feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffe90]
004612ca  f30f59957cfeffff          MULSS XMM2,dword ptr [EBP + 0xfffffe7c]
004612d2  50                        PUSH EAX
004612d3  8d873c030000              LEA EAX,[EDI + 0x33c]
004612d9  50                        PUSH EAX
004612da  f30f599570feffff          MULSS XMM2,dword ptr [EBP + 0xfffffe70]
004612e2  f30f11a580feffff          MOVSS dword ptr [EBP + 0xfffffe80],XMM4
004612ea  f30f10a594feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffe94]
004612f2  f30f59259ca0ba00          MULSS XMM4,dword ptr [0x00baa09c]
004612fa  f30f58d4                  ADDSS XMM2,XMM4
004612fe  f30f58d3                  ADDSS XMM2,XMM3
00461302  f30f119584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM2
0046130a  e8d19f2600                CALL 0x006cb2e0
0046130f  e97f090000                JMP 0x00461c93
00461314  83f806                    CMP EAX,0x6
00461317  0f851e020000              JNZ 0x0046153b
0046131d  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00461323  83f801                    CMP EAX,0x1
00461326  0f8fcd000000              JG 0x004613f9
0046132c  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0046132f  85f6                      TEST ESI,ESI
00461331  744a                      JZ 0x0046137d
00461333  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00461337  8bc6                      MOV EAX,ESI
00461339  7202                      JC 0x0046133d
0046133b  8b06                      MOV EAX,dword ptr [ESI]
0046133d  b984deb100                MOV ECX,0xb1de84
00461342  8a10                      MOV DL,byte ptr [EAX]
00461344  3a11                      CMP DL,byte ptr [ECX]
00461346  751a                      JNZ 0x00461362
00461348  84d2                      TEST DL,DL
0046134a  7412                      JZ 0x0046135e
0046134c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0046134f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00461352  750e                      JNZ 0x00461362
00461354  83c002                    ADD EAX,0x2
00461357  83c102                    ADD ECX,0x2
0046135a  84d2                      TEST DL,DL
0046135c  75e4                      JNZ 0x00461342
0046135e  33c0                      XOR EAX,EAX
00461360  eb05                      JMP 0x00461367
00461362  1bc0                      SBB EAX,EAX
00461364  83c801                    OR EAX,0x1
00461367  85c0                      TEST EAX,EAX
00461369  7512                      JNZ 0x0046137d
0046136b  384634                    CMP byte ptr [ESI + 0x34],AL
0046136e  742e                      JZ 0x0046139e
00461370  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00461376  8d7748                    LEA ESI,[EDI + 0x48]
00461379  7523                      JNZ 0x0046139e
0046137b  eb03                      JMP 0x00461380
0046137d  8d7748                    LEA ESI,[EDI + 0x48]
00461380  6a01                      PUSH 0x1
00461382  6884deb100                PUSH 0xb1de84
00461387  8bce                      MOV ECX,ESI
00461389  e84292faff                CALL 0x0040a5d0
0046138e  84c0                      TEST AL,AL
00461390  740c                      JZ 0x0046139e
00461392  8d4e30                    LEA ECX,[ESI + 0x30]
00461395  e8168efaff                CALL 0x0040a1b0
0046139a  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0046139e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004613a2  7446                      JZ 0x004613ea
004613a4  68a4deb100                PUSH 0xb1dea4
004613a9  8d4f78                    LEA ECX,[EDI + 0x78]
004613ac  e81f9afaff                CALL 0x0040add0
004613b1  84c0                      TEST AL,AL
004613b3  741a                      JZ 0x004613cf
004613b5  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
004613bc  7511                      JNZ 0x004613cf
004613be  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
004613c8  b803000000                MOV EAX,0x3
004613cd  eb2a                      JMP 0x004613f9
004613cf  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004613d3  7415                      JZ 0x004613ea
004613d5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004613dc  740c                      JZ 0x004613ea
004613de  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
004613e4  85c0                      TEST EAX,EAX
004613e6  7459                      JZ 0x00461441
004613e8  eb0f                      JMP 0x004613f9
004613ea  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
004613f4  b802000000                MOV EAX,0x2
004613f9  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00461401  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
00461409  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00461411  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00461419  f30f59c0                  MULSS XMM0,XMM0
0046141d  f30f59c9                  MULSS XMM1,XMM1
00461421  f30f58c8                  ADDSS XMM1,XMM0
00461425  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0046142d  0f2fc1                    COMISS XMM0,XMM1
00461430  7705                      JA 0x00461437
00461432  83f803                    CMP EAX,0x3
00461435  750a                      JNZ 0x00461441
00461437  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
00461441  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00461445  7505                      JNZ 0x0046144c
00461447  8d7778                    LEA ESI,[EDI + 0x78]
0046144a  eb36                      JMP 0x00461482
0046144c  8bb584feffff              MOV ESI,dword ptr [EBP + 0xfffffe84]
00461452  8bce                      MOV ECX,ESI
00461454  6860d5b100                PUSH 0xb1d560
00461459  e87299faff                CALL 0x0040add0
0046145e  84c0                      TEST AL,AL
00461460  7420                      JZ 0x00461482
00461462  51                        PUSH ECX
00461463  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046146a  6a00                      PUSH 0x0
0046146c  6a02                      PUSH 0x2
0046146e  51                        PUSH ECX
0046146f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00461476  8bcf                      MOV ECX,EDI
00461478  682f010000                PUSH 0x12f
0046147d  e81e572700                CALL 0x006d6ba0
00461482  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00461489  751e                      JNZ 0x004614a9
0046148b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0046148f  0f8421080000              JZ 0x00461cb6
00461495  6860d5b100                PUSH 0xb1d560
0046149a  8bce                      MOV ECX,ESI
0046149c  e8cf99faff                CALL 0x0040ae70
004614a1  84c0                      TEST AL,AL
004614a3  0f840d080000              JZ 0x00461cb6
004614a9  f30f10a7b00b0000          MOVSS XMM4,dword ptr [EDI + 0xbb0]
004614b1  f30f58258ca0ba00          ADDSS XMM4,dword ptr [0x00baa08c]
004614b9  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
004614c1  f30f5de5                  MINSS XMM4,XMM5
004614c5  f30f11a7b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM4
004614cd  f30f5cec                  SUBSS XMM5,XMM4
004614d1  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004614d9  0f28c4                    MOVAPS XMM0,XMM4
004614dc  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
004614e4  0f28d9                    MOVAPS XMM3,XMM1
004614e7  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
004614ef  f30f59a738030000          MULSS XMM4,dword ptr [EDI + 0x338]
004614f7  f30f59dd                  MULSS XMM3,XMM5
004614fb  f30f58d8                  ADDSS XMM3,XMM0
004614ff  0f28c2                    MOVAPS XMM0,XMM2
00461502  f30f59c5                  MULSS XMM0,XMM5
00461506  f30f58e0                  ADDSS XMM4,XMM0
0046150a  f30f5cd9                  SUBSS XMM3,XMM1
0046150e  f30f5ce2                  SUBSS XMM4,XMM2
00461512  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
0046151a  f30f11a764030000          MOVSS dword ptr [EDI + 0x364],XMM4
00461522  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0046152c  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00461536  e97b070000                JMP 0x00461cb6
0046153b  83f807                    CMP EAX,0x7
0046153e  0f858a040000              JNZ 0x004619ce
00461544  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00461547  85f6                      TEST ESI,ESI
00461549  7450                      JZ 0x0046159b
0046154b  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0046154f  8bc6                      MOV EAX,ESI
00461551  7202                      JC 0x00461555
00461553  8b06                      MOV EAX,dword ptr [ESI]
00461555  b99cdeb100                MOV ECX,0xb1de9c
0046155a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00461560  8a10                      MOV DL,byte ptr [EAX]
00461562  3a11                      CMP DL,byte ptr [ECX]
00461564  751a                      JNZ 0x00461580
00461566  84d2                      TEST DL,DL
00461568  7412                      JZ 0x0046157c
0046156a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0046156d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00461570  750e                      JNZ 0x00461580
00461572  83c002                    ADD EAX,0x2
00461575  83c102                    ADD ECX,0x2
00461578  84d2                      TEST DL,DL
0046157a  75e4                      JNZ 0x00461560
0046157c  33c0                      XOR EAX,EAX
0046157e  eb05                      JMP 0x00461585
00461580  1bc0                      SBB EAX,EAX
00461582  83c801                    OR EAX,0x1
00461585  85c0                      TEST EAX,EAX
00461587  7512                      JNZ 0x0046159b
00461589  384634                    CMP byte ptr [ESI + 0x34],AL
0046158c  742e                      JZ 0x004615bc
0046158e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00461594  8d7748                    LEA ESI,[EDI + 0x48]
00461597  7523                      JNZ 0x004615bc
00461599  eb03                      JMP 0x0046159e
0046159b  8d7748                    LEA ESI,[EDI + 0x48]
0046159e  6a01                      PUSH 0x1
004615a0  689cdeb100                PUSH 0xb1de9c
004615a5  8bce                      MOV ECX,ESI
004615a7  e82490faff                CALL 0x0040a5d0
004615ac  84c0                      TEST AL,AL
004615ae  740c                      JZ 0x004615bc
004615b0  8d4e30                    LEA ECX,[ESI + 0x30]
004615b3  e8f88bfaff                CALL 0x0040a1b0
004615b8  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004615bc  83bf8401000000            CMP dword ptr [EDI + 0x184],0x0
004615c3  8db73c030000              LEA ESI,[EDI + 0x33c]
004615c9  7576                      JNZ 0x00461641
004615cb  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004615cf  a17816c700                MOV EAX,[0x00c71678]
004615d4  f30f118578feffff          MOVSS dword ptr [EBP + 0xfffffe78],XMM0
004615dc  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
004615e1  f30f11857cfeffff          MOVSS dword ptr [EBP + 0xfffffe7c],XMM0
004615e9  ffb57cfeffff              PUSH dword ptr [EBP + 0xfffffe7c]
004615ef  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004615f5  8bc8                      MOV ECX,EAX
004615f7  ffb578feffff              PUSH dword ptr [EBP + 0xfffffe78]
004615fd  89858cfeffff              MOV dword ptr [EBP + 0xfffffe8c],EAX
00461603  e878f13800                CALL 0x007f0780
00461608  85c0                      TEST EAX,EAX
0046160a  742b                      JZ 0x00461637
0046160c  51                        PUSH ECX
0046160d  8b8d8cfeffff              MOV ECX,dword ptr [EBP + 0xfffffe8c]
00461613  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
00461619  c704240000a042            MOV dword ptr [ESP],0x42a00000
00461620  56                        PUSH ESI
00461621  50                        PUSH EAX
00461622  e8f9ce3b00                CALL 0x0081e520
00461627  8b08                      MOV ECX,dword ptr [EAX]
00461629  890e                      MOV dword ptr [ESI],ECX
0046162b  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0046162e  894604                    MOV dword ptr [ESI + 0x4],EAX
00461631  8db73c030000              LEA ESI,[EDI + 0x33c]
00461637  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00461641  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00461645  0f8457060000              JZ 0x00461ca2
0046164b  68bcdeb100                PUSH 0xb1debc
00461650  8d4f78                    LEA ECX,[EDI + 0x78]
00461653  e87897faff                CALL 0x0040add0
00461658  84c0                      TEST AL,AL
0046165a  0f8433060000              JZ 0x00461c93
00461660  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
00461663  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0046166d  83f801                    CMP EAX,0x1
00461670  754b                      JNZ 0x004616bd
00461672  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00461678  e8b3d8fdff                CALL 0x0043ef30
0046167d  50                        PUSH EAX
0046167e  6a09                      PUSH 0x9
00461680  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00461686  c78588feffff00002041      MOV dword ptr [EBP + 0xfffffe88],0x41200000
00461690  50                        PUSH EAX
00461691  8d873c030000              LEA EAX,[EDI + 0x33c]
00461697  c7858cfeffff0000c040      MOV dword ptr [EBP + 0xfffffe8c],0x40c00000
004616a1  50                        PUSH EAX
004616a2  8bcf                      MOV ECX,EDI
004616a4  e8379c2600                CALL 0x006cb2e0
004616a9  51                        PUSH ECX
004616aa  8bcf                      MOV ECX,EDI
004616ac  c7042400004040            MOV dword ptr [ESP],0x40400000
004616b3  e8184e2500                CALL 0x006b64d0
004616b8  e950020000                JMP 0x0046190d
004616bd  83f802                    CMP EAX,0x2
004616c0  0f85fe000000              JNZ 0x004617c4
004616c6  83bfc00b000003            CMP dword ptr [EDI + 0xbc0],0x3
004616cd  0f84f1000000              JZ 0x004617c4
004616d3  e888d82800                CALL 0x006eef60
004616d8  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
004616e0  8db73c030000              LEA ESI,[EDI + 0x33c]
004616e6  83e001                    AND EAX,0x1
004616e9  83c003                    ADD EAX,0x3
004616ec  660f6ec0                  MOVD XMM0,EAX
004616f0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004616f4  c1e81f                    SHR EAX,0x1f
004616f7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00461700  660f5ac0                  CVTPD2PS XMM0,XMM0
00461704  f30f5ec8                  DIVSS XMM1,XMM0
00461708  f30f118d70feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM1
00461710  e84bd82800                CALL 0x006eef60
00461715  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046171b  6a00                      PUSH 0x0
0046171d  50                        PUSH EAX
0046171e  6a00                      PUSH 0x0
00461720  57                        PUSH EDI
00461721  6840b6c700                PUSH 0xc7b640
00461726  56                        PUSH ESI
00461727  6a48                      PUSH 0x48
00461729  68e8030000                PUSH 0x3e8
0046172e  e8ddcc2900                CALL 0x006fe410
00461733  6a00                      PUSH 0x0
00461735  68acd5c500                PUSH 0xc5d5ac
0046173a  68dcd5c500                PUSH 0xc5d5dc
0046173f  6a00                      PUSH 0x0
00461741  50                        PUSH EAX
00461742  e86af16800                CALL 0x00af08b1
00461747  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
0046174d  83c414                    ADD ESP,0x14
00461750  89857cfeffff              MOV dword ptr [EBP + 0xfffffe7c],EAX
00461756  8db0bc030000              LEA ESI,[EAX + 0x3bc]
0046175c  85c9                      TEST ECX,ECX
0046175e  7418                      JZ 0x00461778
00461760  8d858cfeffff              LEA EAX,[EBP + 0xfffffe8c]
00461766  89b58cfeffff              MOV dword ptr [EBP + 0xfffffe8c],ESI
0046176c  50                        PUSH EAX
0046176d  81c1cc030000              ADD ECX,0x3cc
00461773  e898da0600                CALL 0x004cf210
00461778  56                        PUSH ESI
00461779  8bcf                      MOV ECX,EDI
0046177b  893e                      MOV dword ptr [ESI],EDI
0046177d  e86ec50600                CALL 0x004cdcf0
00461782  8b857cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe7c]
00461788  8db73c030000              LEA ESI,[EDI + 0x33c]
0046178e  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
00461796  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
0046179e  f30f118074040000          MOVSS dword ptr [EAX + 0x474],XMM0
004617a6  f30f588570feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffe70]
004617ae  0f2fc8                    COMISS XMM1,XMM0
004617b1  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
004617b9  0f8751ffffff              JA 0x00461710
004617bf  e943010000                JMP 0x00461907
004617c4  c78584feffff05000000      MOV dword ptr [EBP + 0xfffffe84],0x5
004617ce  6690                      NOP
004617d0  e88bd72800                CALL 0x006eef60
004617d5  8bf0                      MOV ESI,EAX
004617d7  e884d72800                CALL 0x006eef60
004617dc  660f6ec0                  MOVD XMM0,EAX
004617e0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004617e4  c1e81f                    SHR EAX,0x1f
004617e7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004617f0  660f5ac0                  CVTPD2PS XMM0,XMM0
004617f4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004617fc  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00461804  f30f58c0                  ADDSS XMM0,XMM0
00461808  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
00461810  e84bd72800                CALL 0x006eef60
00461815  660f6ec0                  MOVD XMM0,EAX
00461819  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0046181d  c1e81f                    SHR EAX,0x1f
00461820  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00461829  660f5ac0                  CVTPD2PS XMM0,XMM0
0046182d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00461835  f30f59058ca9ba00          MULSS XMM0,dword ptr [0x00baa98c]
0046183d  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
00461845  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
0046184d  e8eebcfbff                CALL 0x0041d540
00461852  f30f598594feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe94]
0046185a  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00461862  f30f118588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM0
0046186a  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
00461872  e8a9bcfbff                CALL 0x0041d520
00461877  f30f598594feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe94]
0046187f  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00461885  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0046188b  6a00                      PUSH 0x0
0046188d  56                        PUSH ESI
0046188e  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00461896  6a00                      PUSH 0x0
00461898  57                        PUSH EDI
00461899  6840b6c700                PUSH 0xc7b640
0046189e  50                        PUSH EAX
0046189f  6a16                      PUSH 0x16
004618a1  68e8030000                PUSH 0x3e8
004618a6  f30f11858cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM0
004618ae  e85dcb2900                CALL 0x006fe410
004618b3  6a00                      PUSH 0x0
004618b5  68acd5c500                PUSH 0xc5d5ac
004618ba  68dcd5c500                PUSH 0xc5d5dc
004618bf  6a00                      PUSH 0x0
004618c1  50                        PUSH EAX
004618c2  e8eaef6800                CALL 0x00af08b1
004618c7  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
004618cf  83c414                    ADD ESP,0x14
004618d2  83ad84feffff01            SUB dword ptr [EBP + 0xfffffe84],0x1
004618d9  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
004618e1  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
004618e9  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
004618f1  f30f1188e4000000          MOVSS dword ptr [EAX + 0xe4],XMM1
004618f9  f30f1180e8000000          MOVSS dword ptr [EAX + 0xe8],XMM0
00461901  0f85c9feffff              JNZ 0x004617d0
00461907  8db73c030000              LEA ESI,[EDI + 0x33c]
0046190d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00461913  6a0a                      PUSH 0xa
00461915  e8561d2a00                CALL 0x00703670
0046191a  51                        PUSH ECX
0046191b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00461922  6a00                      PUSH 0x0
00461924  6a02                      PUSH 0x2
00461926  51                        PUSH ECX
00461927  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046192e  8bcf                      MOV ECX,EDI
00461930  6a30                      PUSH 0x30
00461932  e869522700                CALL 0x006d6ba0
00461937  51                        PUSH ECX
00461938  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046193f  6a00                      PUSH 0x0
00461941  6a02                      PUSH 0x2
00461943  51                        PUSH ECX
00461944  c704240000803f            MOV dword ptr [ESP],0x3f800000
0046194b  8bcf                      MOV ECX,EDI
0046194d  682f010000                PUSH 0x12f
00461952  e849522700                CALL 0x006d6ba0
00461957  8d8d48feffff              LEA ECX,[EBP + 0xfffffe48]
0046195d  e80e4cffff                CALL 0x00456570
00461962  a17816c700                MOV EAX,[0x00c71678]
00461967  8d9548feffff              LEA EDX,[EBP + 0xfffffe48]
0046196d  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00461971  f30f118548feffff          MOVSS dword ptr [EBP + 0xfffffe48],XMM0
00461979  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0046197e  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00461984  c78560feffff0d000000      MOV dword ptr [EBP + 0xfffffe60],0xd
0046198e  c78558feffffcdcccc3c      MOV dword ptr [EBP + 0xfffffe58],0x3ccccccd
00461998  c78554feffff0ad7233d      MOV dword ptr [EBP + 0xfffffe54],0x3d23d70a
004619a2  ff81fc700000              INC dword ptr [ECX + 0x70fc]
004619a8  8b81fc700000              MOV EAX,dword ptr [ECX + 0x70fc]
004619ae  f30f11854cfeffff          MOVSS dword ptr [EBP + 0xfffffe4c],XMM0
004619b6  52                        PUSH EDX
004619b7  2501000080                AND EAX,0x80000001
004619bc  7905                      JNS 0x004619c3
004619be  48                        DEC EAX
004619bf  83c8fe                    OR EAX,0xfffffffe
004619c2  40                        INC EAX
004619c3  50                        PUSH EAX
004619c4  e847c53b00                CALL 0x0081df10
004619c9  e9c5020000                JMP 0x00461c93
004619ce  83f80a                    CMP EAX,0xa
004619d1  0f85df020000              JNZ 0x00461cb6
004619d7  6a00                      PUSH 0x0
004619d9  68b4deb100                PUSH 0xb1deb4
004619de  8d4f48                    LEA ECX,[EDI + 0x48]
004619e1  e89a89faff                CALL 0x0040a380
004619e6  6800000010                PUSH 0x10000000
004619eb  6a00                      PUSH 0x0
004619ed  8bcf                      MOV ECX,EDI
004619ef  e83c5afbff                CALL 0x00417430
004619f4  84c0                      TEST AL,AL
004619f6  ba03000000                MOV EDX,0x3
004619fb  b908000000                MOV ECX,0x8
00461a00  0f45ca                    CMOVNZ ECX,EDX
00461a03  898d8cfeffff              MOV dword ptr [EBP + 0xfffffe8c],ECX
00461a09  8d4f48                    LEA ECX,[EDI + 0x48]
00461a0c  68b4deb100                PUSH 0xb1deb4
00461a11  e81a96faff                CALL 0x0040b030
00461a16  84c0                      TEST AL,AL
00461a18  0f8475020000              JZ 0x00461c93
00461a1e  e83dd52800                CALL 0x006eef60
00461a23  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00461a29  8db73c030000              LEA ESI,[EDI + 0x33c]
00461a2f  6a00                      PUSH 0x0
00461a31  50                        PUSH EAX
00461a32  6a00                      PUSH 0x0
00461a34  57                        PUSH EDI
00461a35  6840b6c700                PUSH 0xc7b640
00461a3a  56                        PUSH ESI
00461a3b  6a22                      PUSH 0x22
00461a3d  68e8030000                PUSH 0x3e8
00461a42  e8c9c92900                CALL 0x006fe410
00461a47  51                        PUSH ECX
00461a48  c704240000803f            MOV dword ptr [ESP],0x3f800000
00461a4f  6a00                      PUSH 0x0
00461a51  6a02                      PUSH 0x2
00461a53  51                        PUSH ECX
00461a54  c704240000803f            MOV dword ptr [ESP],0x3f800000
00461a5b  8bcf                      MOV ECX,EDI
00461a5d  68ea030000                PUSH 0x3ea
00461a62  e839512700                CALL 0x006d6ba0
00461a67  33c0                      XOR EAX,EAX
00461a69  8bcf                      MOV ECX,EDI
00461a6b  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00461a6f  6800000010                PUSH 0x10000000
00461a74  0f94c0                    SETZ AL
00461a77  6a00                      PUSH 0x0
00461a79  8d048504000000            LEA EAX,[EAX*0x4 + 0x4]
00461a80  898590feffff              MOV dword ptr [EBP + 0xfffffe90],EAX
00461a86  e8a559fbff                CALL 0x00417430
00461a8b  84c0                      TEST AL,AL
00461a8d  741b                      JZ 0x00461aaa
00461a8f  6a00                      PUSH 0x0
00461a91  51                        PUSH ECX
00461a92  6a00                      PUSH 0x0
00461a94  68d9000000                PUSH 0xd9
00461a99  8bcf                      MOV ECX,EDI
00461a9b  e840ad2400                CALL 0x006ac7e0
00461aa0  8b9590feffff              MOV EDX,dword ptr [EBP + 0xfffffe90]
00461aa6  2bd0                      SUB EDX,EAX
00461aa8  eb06                      JMP 0x00461ab0
00461aaa  8b9590feffff              MOV EDX,dword ptr [EBP + 0xfffffe90]
00461ab0  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
00461ab3  83f801                    CMP EAX,0x1
00461ab6  0f8430020000              JZ 0x00461cec
00461abc  a17816c700                MOV EAX,[0x00c71678]
00461ac1  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00461ac7  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
00461acd  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
00461ad3  03c1                      ADD EAX,ECX
00461ad5  33c9                      XOR ECX,ECX
00461ad7  85c0                      TEST EAX,EAX
00461ad9  0f4fc8                    CMOVG ECX,EAX
00461adc  3bca                      CMP ECX,EDX
00461ade  0f8d08020000              JGE 0x00461cec
00461ae4  e877d42800                CALL 0x006eef60
00461ae9  83e001                    AND EAX,0x1
00461aec  0f85fa010000              JNZ 0x00461cec
00461af2  e869d42800                CALL 0x006eef60
00461af7  83e001                    AND EAX,0x1
00461afa  40                        INC EAX
00461afb  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00461aff  898594feffff              MOV dword ptr [EBP + 0xfffffe94],EAX
00461b05  750c                      JNZ 0x00461b13
00461b07  c78594feffff03000000      MOV dword ptr [EBP + 0xfffffe94],0x3
00461b11  eb0d                      JMP 0x00461b20
00461b13  85c0                      TEST EAX,EAX
00461b15  0f8441010000              JZ 0x00461c5c
00461b1b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00461b20  e83bd42800                CALL 0x006eef60
00461b25  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00461b2b  8bf8                      MOV EDI,EAX
00461b2d  6a00                      PUSH 0x0
00461b2f  6a00                      PUSH 0x0
00461b31  6a00                      PUSH 0x0
00461b33  51                        PUSH ECX
00461b34  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00461b3a  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
00461b40  c7042400007042            MOV dword ptr [ESP],0x42700000
00461b47  56                        PUSH ESI
00461b48  50                        PUSH EAX
00461b49  e8d2193b00                CALL 0x00813520
00461b4e  8bf0                      MOV ESI,EAX
00461b50  e80bd42800                CALL 0x006eef60
00461b55  660f6ec0                  MOVD XMM0,EAX
00461b59  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00461b5d  c1e81f                    SHR EAX,0x1f
00461b60  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00461b69  660f5ac0                  CVTPD2PS XMM0,XMM0
00461b6d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00461b75  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00461b7d  f30f58c0                  ADDSS XMM0,XMM0
00461b81  f30f118590feffff          MOVSS dword ptr [EBP + 0xfffffe90],XMM0
00461b89  e8d2d32800                CALL 0x006eef60
00461b8e  660f6ec0                  MOVD XMM0,EAX
00461b92  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00461b96  c1e81f                    SHR EAX,0x1f
00461b99  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00461ba2  660f5ac0                  CVTPD2PS XMM0,XMM0
00461ba6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00461bae  f30f118584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM0
00461bb6  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
00461bbe  e85db9fbff                CALL 0x0041d520
00461bc3  f30f598584feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe84]
00461bcb  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00461bd3  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
00461bd8  f30f11858cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM0
00461be0  f30f108590feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe90]
00461be8  e853b9fbff                CALL 0x0041d540
00461bed  f30f598584feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe84]
00461bf5  8d856cfeffff              LEA EAX,[EBP + 0xfffffe6c]
00461bfb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00461c01  6a00                      PUSH 0x0
00461c03  57                        PUSH EDI
00461c04  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00461c0c  8bbd7cfeffff              MOV EDI,dword ptr [EBP + 0xfffffe7c]
00461c12  6a00                      PUSH 0x0
00461c14  57                        PUSH EDI
00461c15  f30f5806                  ADDSS XMM0,dword ptr [ESI]
00461c19  6840b6c700                PUSH 0xc7b640
00461c1e  50                        PUSH EAX
00461c1f  6a00                      PUSH 0x0
00461c21  68d9000000                PUSH 0xd9
00461c26  f30f11856cfeffff          MOVSS dword ptr [EBP + 0xfffffe6c],XMM0
00461c2e  f30f10858cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe8c]
00461c36  f30f118570feffff          MOVSS dword ptr [EBP + 0xfffffe70],XMM0
00461c3e  e8cdc72900                CALL 0x006fe410
00461c43  83ad94feffff01            SUB dword ptr [EBP + 0xfffffe94],0x1
00461c4a  8db73c030000              LEA ESI,[EDI + 0x33c]
00461c50  0f85cafeffff              JNZ 0x00461b20
00461c56  8db73c030000              LEA ESI,[EDI + 0x33c]
00461c5c  0f1005d04bc300            MOVUPS XMM0,xmmword ptr [0x00c34bd0]
00461c63  83ec10                    SUB ESP,0x10
00461c66  f30f101dd0a9ba00          MOVSS XMM3,dword ptr [0x00baa9d0]
00461c6e  8bc4                      MOV EAX,ESP
00461c70  f30f101554a8ba00          MOVSS XMM2,dword ptr [0x00baa854]
00461c78  83ec08                    SUB ESP,0x8
00461c7b  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
00461c7e  c744240400004842          MOV dword ptr [ESP + 0x4],0x42480000
00461c86  6a00                      PUSH 0x0
00461c88  6a00                      PUSH 0x0
00461c8a  6a00                      PUSH 0x0
00461c8c  57                        PUSH EDI
00461c8d  56                        PUSH ESI
00461c8e  e8cdd02900                CALL 0x006fed60
00461c93  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00461c97  7409                      JZ 0x00461ca2
00461c99  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00461ca0  7514                      JNZ 0x00461cb6
00461ca2  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00461cac  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00461cb6  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00461cbe  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00461cc6  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00461cce  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00461cd1  64890d00000000            MOV dword ptr FS:[0x0],ECX
00461cd8  59                        POP ECX
00461cd9  5f                        POP EDI
00461cda  5e                        POP ESI
00461cdb  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00461cde  33cd                      XOR ECX,EBP
00461ce0  e846d46800                CALL 0x00aef12b
00461ce5  8be5                      MOV ESP,EBP
00461ce7  5d                        POP EBP
00461ce8  8be3                      MOV ESP,EBX
00461cea  5b                        POP EBX
00461ceb  c3                        RET
00461cec  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00461cf0  0f8515020000              JNZ 0x00461f0b
00461cf6  8b858cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe8c]
00461cfc  3987c40b0000              CMP dword ptr [EDI + 0xbc4],EAX
00461d02  0f8d03020000              JGE 0x00461f0b
00461d08  e853d22800                CALL 0x006eef60
00461d0d  83e001                    AND EAX,0x1
00461d10  0f85f5010000              JNZ 0x00461f0b
00461d16  a17816c700                MOV EAX,[0x00c71678]
00461d1b  6a00                      PUSH 0x0
00461d1d  6a00                      PUSH 0x0
00461d1f  6a00                      PUSH 0x0
00461d21  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00461d27  8d873c030000              LEA EAX,[EDI + 0x33c]
00461d2d  51                        PUSH ECX
00461d2e  c7042400007042            MOV dword ptr [ESP],0x42700000
00461d35  8bce                      MOV ECX,ESI
00461d37  50                        PUSH EAX
00461d38  8d8564feffff              LEA EAX,[EBP + 0xfffffe64]
00461d3e  50                        PUSH EAX
00461d3f  e8dc173b00                CALL 0x00813520
00461d44  50                        PUSH EAX
00461d45  8bce                      MOV ECX,ESI
00461d47  e8440f3b00                CALL 0x00812c90
00461d4c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00461d52  8bf0                      MOV ESI,EAX
00461d54  89b590feffff              MOV dword ptr [EBP + 0xfffffe90],ESI
00461d5a  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
00461d60  898594feffff              MOV dword ptr [EBP + 0xfffffe94],EAX
00461d66  81febf010000              CMP ESI,0x1bf
00461d6c  7719                      JA 0x00461d87
00461d6e  8b4cb024                  MOV ECX,dword ptr [EAX + ESI*0x4 + 0x24]
00461d72  85c9                      TEST ECX,ECX
00461d74  7411                      JZ 0x00461d87
00461d76  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
00461d79  83f901                    CMP ECX,0x1
00461d7c  7409                      JZ 0x00461d87
00461d7e  83f90a                    CMP ECX,0xa
00461d81  0f85cffeffff              JNZ 0x00461c56
00461d87  83780810                  CMP dword ptr [EAX + 0x8],0x10
00461d8b  0f84c5feffff              JZ 0x00461c56
00461d91  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00461d97  e854733800                CALL 0x007e90f0
00461d9c  89858cfeffff              MOV dword ptr [EBP + 0xfffffe8c],EAX
00461da2  85f6                      TEST ESI,ESI
00461da4  7808                      JS 0x00461dae
00461da6  81fec0010000              CMP ESI,0x1c0
00461dac  7c0f                      JL 0x00461dbd
00461dae  6838c1b600                PUSH 0xb6c138
00461db3  6a10                      PUSH 0x10
00461db5  e806f55a00                CALL 0x00a112c0
00461dba  83c408                    ADD ESP,0x8
00461dbd  81febf010000              CMP ESI,0x1bf
00461dc3  0f8737010000              JA 0x00461f00
00461dc9  8b8594feffff              MOV EAX,dword ptr [EBP + 0xfffffe94]
00461dcf  81bcb06c07000084030000    CMP dword ptr [EAX + ESI*0x4 + 0x76c],0x384
00461dda  0f8f20010000              JG 0x00461f00
00461de0  689c010000                PUSH 0x19c
00461de5  e8d6d65a00                CALL 0x00a0f4c0
00461dea  8bf0                      MOV ESI,EAX
00461dec  83c404                    ADD ESP,0x4
00461def  89b57cfeffff              MOV dword ptr [EBP + 0xfffffe7c],ESI
00461df5  c745fc07000000            MOV dword ptr [EBP + -0x4],0x7
00461dfc  85f6                      TEST ESI,ESI
00461dfe  0f849e000000              JZ 0x00461ea2
00461e04  8bce                      MOV ECX,ESI
00461e06  e8357e2a00                CALL 0x00709c40
00461e0b  c7064886b600              MOV dword ptr [ESI],0xb68648
00461e11  c7865801000000000000      MOV dword ptr [ESI + 0x158],0x0
00461e1b  c7866801000000000000      MOV dword ptr [ESI + 0x168],0x0
00461e25  c7866c0100000f000000      MOV dword ptr [ESI + 0x16c],0xf
00461e2f  c6865801000000            MOV byte ptr [ESI + 0x158],0x0
00461e36  c7867401000000000000      MOV dword ptr [ESI + 0x174],0x0
00461e40  c7867801000000000000      MOV dword ptr [ESI + 0x178],0x0
00461e4a  c7867c01000000000000      MOV dword ptr [ESI + 0x17c],0x0
00461e54  c7868001000000000000      MOV dword ptr [ESI + 0x180],0x0
00461e5e  a140b6c700                MOV EAX,[0x00c7b640]
00461e63  8b0d44b6c700              MOV ECX,dword ptr [0x00c7b644]
00461e69  898684010000              MOV dword ptr [ESI + 0x184],EAX
00461e6f  898e88010000              MOV dword ptr [ESI + 0x188],ECX
00461e75  a140b6c700                MOV EAX,[0x00c7b640]
00461e7a  8b0d44b6c700              MOV ECX,dword ptr [0x00c7b644]
00461e80  89868c010000              MOV dword ptr [ESI + 0x18c],EAX
00461e86  898e90010000              MOV dword ptr [ESI + 0x190],ECX
00461e8c  c7869401000000000000      MOV dword ptr [ESI + 0x194],0x0
00461e96  c7869801000000000000      MOV dword ptr [ESI + 0x198],0x0
00461ea0  eb02                      JMP 0x00461ea4
00461ea2  33f6                      XOR ESI,ESI
00461ea4  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00461eab  85f6                      TEST ESI,ESI
00461ead  7451                      JZ 0x00461f00
00461eaf  8b8590feffff              MOV EAX,dword ptr [EBP + 0xfffffe90]
00461eb5  8b8d94feffff              MOV ECX,dword ptr [EBP + 0xfffffe94]
00461ebb  c746040e000000            MOV dword ptr [ESI + 0x4],0xe
00461ec2  894624                    MOV dword ptr [ESI + 0x24],EAX
00461ec5  8b548124                  MOV EDX,dword ptr [ECX + EAX*0x4 + 0x24]
00461ec9  85d2                      TEST EDX,EDX
00461ecb  7414                      JZ 0x00461ee1
00461ecd  8b02                      MOV EAX,dword ptr [EDX]
00461ecf  8bca                      MOV ECX,EDX
00461ed1  6a01                      PUSH 0x1
00461ed3  ff10                      CALL dword ptr [EAX]
00461ed5  8b8590feffff              MOV EAX,dword ptr [EBP + 0xfffffe90]
00461edb  8b8d94feffff              MOV ECX,dword ptr [EBP + 0xfffffe94]
00461ee1  ffb58cfeffff              PUSH dword ptr [EBP + 0xfffffe8c]
00461ee7  89748124                  MOV dword ptr [ECX + EAX*0x4 + 0x24],ESI
00461eeb  8bce                      MOV ECX,ESI
00461eed  c7460801000000            MOV dword ptr [ESI + 0x8],0x1
00461ef4  c7461800000000            MOV dword ptr [ESI + 0x18],0x0
00461efb  e8b07e2a00                CALL 0x00709db0
00461f00  ff87c40b0000              INC dword ptr [EDI + 0xbc4]
00461f06  e94bfdffff                JMP 0x00461c56
00461f0b  8bcf                      MOV ECX,EDI
00461f0d  e82ec92500                CALL 0x006be840
00461f12  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00461f1a  f30f5c0da0a9ba00          SUBSS XMM1,dword ptr [0x00baa9a0]
00461f22  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00461f2a  f30f118588feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM0
00461f32  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00461f3a  0f2fc1                    COMISS XMM0,XMM1
00461f3d  f30f11858cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM0
00461f45  7608                      JBE 0x00461f4f
00461f47  f30f118d8cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM1
00461f4f  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
00461f55  e8d6cffdff                CALL 0x0043ef30
00461f5a  e801d02800                CALL 0x006eef60
00461f5f  c7852cffffff03000000      MOV dword ptr [EBP + 0xffffff2c],0x3
00461f69  660f6ec0                  MOVD XMM0,EAX
00461f6d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00461f71  c1e81f                    SHR EAX,0x1f
00461f74  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00461f7d  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00461f83  50                        PUSH EAX
00461f84  51                        PUSH ECX
00461f85  c7042400007041            MOV dword ptr [ESP],0x41700000
00461f8c  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00461f92  660f5ac0                  CVTPD2PS XMM0,XMM0
00461f96  50                        PUSH EAX
00461f97  6a1e                      PUSH 0x1e
00461f99  8bcf                      MOV ECX,EDI
00461f9b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00461fa3  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00461fab  f30f1185acfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM0
00461fb3  e818ae2600                CALL 0x006ccdd0
00461fb8  e99ffcffff                JMP 0x00461c5c
