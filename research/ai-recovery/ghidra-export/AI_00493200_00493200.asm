; J460 NPC AI 0x00493200 AI_00493200
; types=405
; identities=405.0.0,405.1.0
; entry=00493200
00493200  53                        PUSH EBX
00493201  8bdc                      MOV EBX,ESP
00493203  83ec08                    SUB ESP,0x8
00493206  83e4f8                    AND ESP,0xfffffff8
00493209  83c404                    ADD ESP,0x4
0049320c  55                        PUSH EBP
0049320d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00493210  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00493214  8bec                      MOV EBP,ESP
00493216  6aff                      PUSH -0x1
00493218  68612eaf00                PUSH 0xaf2e61
0049321d  64a100000000              MOV EAX,FS:[0x0]
00493223  50                        PUSH EAX
00493224  53                        PUSH EBX
00493225  81ecb0010000              SUB ESP,0x1b0
0049322b  a1b493bf00                MOV EAX,[0x00bf93b4]
00493230  33c5                      XOR EAX,EBP
00493232  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00493235  56                        PUSH ESI
00493236  57                        PUSH EDI
00493237  50                        PUSH EAX
00493238  8d45f4                    LEA EAX,[EBP + -0xc]
0049323b  64a300000000              MOV FS:[0x0],EAX
00493241  8bf9                      MOV EDI,ECX
00493243  89bd24ffffff              MOV dword ptr [EBP + 0xffffff24],EDI
00493249  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0049324c  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
00493252  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00493255  85c0                      TEST EAX,EAX
00493257  0f85481c0000              JNZ 0x00494ea5
0049325d  e8deb52200                CALL 0x006be840
00493262  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
0049326a  be01000000                MOV ESI,0x1
0049326f  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
00493277  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0049327f  0f28cb                    MOVAPS XMM1,XMM3
00493282  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00493289  8d873c030000              LEA EAX,[EDI + 0x33c]
0049328f  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
00493297  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0049329e  0f2fc8                    COMISS XMM1,XMM0
004932a1  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
004932a7  a17816c700                MOV EAX,[0x00c71678]
004932ac  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
004932b2  0f28c3                    MOVAPS XMM0,XMM3
004932b5  f30f119d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM3
004932bd  f30f5cc2                  SUBSS XMM0,XMM2
004932c1  0f57c9                    XORPS XMM1,XMM1
004932c4  0f97853fffffff            SETA byte ptr [EBP + 0xffffff3f]
004932cb  0f2fc8                    COMISS XMM1,XMM0
004932ce  f30f104214                MOVSS XMM0,dword ptr [EDX + 0x14]
004932d3  f30f5805a0a9ba00          ADDSS XMM0,dword ptr [0x00baa9a0]
004932db  0f97852fffffff            SETA byte ptr [EBP + 0xffffff2f]
004932e2  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
004932ea  0fb6852fffffff            MOVZX EAX,byte ptr [EBP + 0xffffff2f]
004932f1  33c9                      XOR ECX,ECX
004932f3  0f2fc2                    COMISS XMM0,XMM2
004932f6  f30f10421c                MOVSS XMM0,dword ptr [EDX + 0x1c]
004932fb  f30f5c05a0a9ba00          SUBSS XMM0,dword ptr [0x00baa9a0]
00493303  0f46c8                    CMOVBE ECX,EAX
00493306  0fb6c1                    MOVZX EAX,CL
00493309  0f2fd0                    COMISS XMM2,XMM0
0049330c  f30f109780030000          MOVSS XMM2,dword ptr [EDI + 0x380]
00493314  0f28c1                    MOVAPS XMM0,XMM1
00493317  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
0049331f  0f47c6                    CMOVA EAX,ESI
00493322  33c9                      XOR ECX,ECX
00493324  0f2fca                    COMISS XMM1,XMM2
00493327  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
0049332d  b803000000                MOV EAX,0x3
00493332  0f47ce                    CMOVA ECX,ESI
00493335  be02000000                MOV ESI,0x2
0049333a  0f2fc2                    COMISS XMM0,XMM2
0049333d  0f28c1                    MOVAPS XMM0,XMM1
00493340  f30f5905e4a2ba00          MULSS XMM0,dword ptr [0x00baa2e4]
00493348  0f47ce                    CMOVA ECX,ESI
0049334b  0f2fc2                    COMISS XMM0,XMM2
0049334e  0f28c1                    MOVAPS XMM0,XMM1
00493351  f30f590544a2ba00          MULSS XMM0,dword ptr [0x00baa244]
00493359  0f47c8                    CMOVA ECX,EAX
0049335c  b804000000                MOV EAX,0x4
00493361  0f2fc2                    COMISS XMM0,XMM2
00493364  0f47c8                    CMOVA ECX,EAX
00493367  33c0                      XOR EAX,EAX
00493369  0f2fca                    COMISS XMM1,XMM2
0049336c  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
00493372  b901000000                MOV ECX,0x1
00493377  f30f590d04a3ba00          MULSS XMM1,dword ptr [0x00baa304]
0049337f  0f47c1                    CMOVA EAX,ECX
00493382  0f2fca                    COMISS XMM1,XMM2
00493385  0f47c6                    CMOVA EAX,ESI
00493388  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
0049338e  394f30                    CMP dword ptr [EDI + 0x30],ECX
00493391  7514                      JNZ 0x004933a7
00493393  c78514ffffff04000000      MOV dword ptr [EBP + 0xffffff14],0x4
0049339d  c785e0feffff04000000      MOV dword ptr [EBP + 0xfffffee0],0x4
004933a7  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
004933ae  7572                      JNZ 0x00493422
004933b0  0f280d20bfba00            MOVAPS XMM1,xmmword ptr [0x00babf20]
004933b7  8d8544feffff              LEA EAX,[EBP + 0xfffffe44]
004933bd  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004933c7  0f57c0                    XORPS XMM0,XMM0
004933ca  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004933d4  81c7e4010000              ADD EDI,0x1e4
004933da  c78564feffff3333b33e      MOV dword ptr [EBP + 0xfffffe64],0x3eb33333
004933e4  c78568feffffae47e13d      MOV dword ptr [EBP + 0xfffffe68],0x3de147ae
004933ee  c7856cfeffffec51b83e      MOV dword ptr [EBP + 0xfffffe6c],0x3eb851ec
004933f8  3bf8                      CMP EDI,EAX
004933fa  0f84cb210000              JZ 0x004955cb
00493400  8b856cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe6c]
00493406  0f114710                  MOVUPS xmmword ptr [EDI + 0x10],XMM0
0049340a  f30f7e8564feffff          MOVQ XMM0,qword ptr [EBP + 0xfffffe64]
00493412  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
00493417  0f110f                    MOVUPS xmmword ptr [EDI],XMM1
0049341a  894728                    MOV dword ptr [EDI + 0x28],EAX
0049341d  e9a9210000                JMP 0x004955cb
00493422  6a00                      PUSH 0x0
00493424  6a00                      PUSH 0x0
00493426  6aff                      PUSH -0x1
00493428  6a01                      PUSH 0x1
0049342a  68f6000000                PUSH 0xf6
0049342f  8d85bcfeffff              LEA EAX,[EBP + 0xfffffebc]
00493435  8d8a18120000              LEA ECX,[EDX + 0x1218]
0049343b  50                        PUSH EAX
0049343c  e81f7bf8ff                CALL 0x0041af60
00493441  6a00                      PUSH 0x0
00493443  6a00                      PUSH 0x0
00493445  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0049344c  a17816c700                MOV EAX,[0x00c71678]
00493451  6aff                      PUSH -0x1
00493453  6aff                      PUSH -0x1
00493455  6895010000                PUSH 0x195
0049345a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00493460  8d8570feffff              LEA EAX,[EBP + 0xfffffe70]
00493466  81c118120000              ADD ECX,0x1218
0049346c  50                        PUSH EAX
0049346d  e8ee7af8ff                CALL 0x0041af60
00493472  6a00                      PUSH 0x0
00493474  6a00                      PUSH 0x0
00493476  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0049347a  a17816c700                MOV EAX,[0x00c71678]
0049347f  6aff                      PUSH -0x1
00493481  6aff                      PUSH -0x1
00493483  6a55                      PUSH 0x55
00493485  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0049348b  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
00493491  81c118120000              ADD ECX,0x1218
00493497  50                        PUSH EAX
00493498  e8c37af8ff                CALL 0x0041af60
0049349d  33d2                      XOR EDX,EDX
0049349f  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
004934a3  8bb57cfeffff              MOV ESI,dword ptr [EBP + 0xfffffe7c]
004934a9  33c0                      XOR EAX,EAX
004934ab  899518ffffff              MOV dword ptr [EBP + 0xffffff18],EDX
004934b1  899508ffffff              MOV dword ptr [EBP + 0xffffff08],EDX
004934b7  899538ffffff              MOV dword ptr [EBP + 0xffffff38],EDX
004934bd  85f6                      TEST ESI,ESI
004934bf  7425                      JZ 0x004934e6
004934c1  8b8d74feffff              MOV ECX,dword ptr [EBP + 0xfffffe74]
004934c7  8b0c81                    MOV ECX,dword ptr [ECX + EAX*0x4]
004934ca  83792c01                  CMP dword ptr [ECX + 0x2c],0x1
004934ce  7509                      JNZ 0x004934d9
004934d0  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
004934d6  7501                      JNZ 0x004934d9
004934d8  42                        INC EDX
004934d9  40                        INC EAX
004934da  3bc6                      CMP EAX,ESI
004934dc  72e3                      JC 0x004934c1
004934de  899538ffffff              MOV dword ptr [EBP + 0xffffff38],EDX
004934e4  33d2                      XOR EDX,EDX
004934e6  33f6                      XOR ESI,ESI
004934e8  39b5c8feffff              CMP dword ptr [EBP + 0xfffffec8],ESI
004934ee  7649                      JBE 0x00493539
004934f0  8b85c0feffff              MOV EAX,dword ptr [EBP + 0xfffffec0]
004934f6  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
004934f9  8d4201                    LEA EAX,[EDX + 0x1]
004934fc  39b9bc030000              CMP dword ptr [ECX + 0x3bc],EDI
00493502  0f45c2                    CMOVNZ EAX,EDX
00493505  8bd0                      MOV EDX,EAX
00493507  8b8508ffffff              MOV EAX,dword ptr [EBP + 0xffffff08]
0049350d  40                        INC EAX
0049350e  83b9640b000010            CMP dword ptr [ECX + 0xb64],0x10
00493515  0f458508ffffff            CMOVNZ EAX,dword ptr [EBP + 0xffffff08]
0049351c  46                        INC ESI
0049351d  8bc8                      MOV ECX,EAX
0049351f  898d08ffffff              MOV dword ptr [EBP + 0xffffff08],ECX
00493525  3bb5c8feffff              CMP ESI,dword ptr [EBP + 0xfffffec8]
0049352b  72c3                      JC 0x004934f0
0049352d  899518ffffff              MOV dword ptr [EBP + 0xffffff18],EDX
00493533  898d08ffffff              MOV dword ptr [EBP + 0xffffff08],ECX
00493539  83bdfcfeffff02            CMP dword ptr [EBP + 0xfffffefc],0x2
00493540  7534                      JNZ 0x00493576
00493542  33f6                      XOR ESI,ESI
00493544  39b58cfeffff              CMP dword ptr [EBP + 0xfffffe8c],ESI
0049354a  762a                      JBE 0x00493576
0049354c  0f1f4000                  NOP dword ptr [EAX]
00493550  8b8584feffff              MOV EAX,dword ptr [EBP + 0xfffffe84]
00493556  8d4a01                    LEA ECX,[EDX + 0x1]
00493559  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
0049355c  39b8bc030000              CMP dword ptr [EAX + 0x3bc],EDI
00493562  0f45ca                    CMOVNZ ECX,EDX
00493565  46                        INC ESI
00493566  8bd1                      MOV EDX,ECX
00493568  3bb58cfeffff              CMP ESI,dword ptr [EBP + 0xfffffe8c]
0049356e  72e0                      JC 0x00493550
00493570  899518ffffff              MOV dword ptr [EBP + 0xffffff18],EDX
00493576  f30f1005acacba00          MOVSS XMM0,dword ptr [0x00baacac]
0049357e  33c0                      XOR EAX,EAX
00493580  c68536ffffff00            MOV byte ptr [EBP + 0xffffff36],0x0
00493587  c68537ffffff00            MOV byte ptr [EBP + 0xffffff37],0x0
0049358e  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00493596  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
0049359e  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
004935a6  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004935ae  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004935b6  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
004935bc  3985c8feffff              CMP dword ptr [EBP + 0xfffffec8],EAX
004935c2  0f8643020000              JBE 0x0049380b
004935c8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004935d0  8b8dc0feffff              MOV ECX,dword ptr [EBP + 0xfffffec0]
004935d6  8b3481                    MOV ESI,dword ptr [ECX + EAX*0x4]
004935d9  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
004935e1  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
004935e9  0f28c8                    MOVAPS XMM1,XMM0
004935ec  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004935f4  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004935fc  0f28c2                    MOVAPS XMM0,XMM2
004935ff  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00493607  f30f1195d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM2
0049360f  f30f59c9                  MULSS XMM1,XMM1
00493613  f30f59c0                  MULSS XMM0,XMM0
00493617  f30f58c1                  ADDSS XMM0,XMM1
0049361b  e83024faff                CALL 0x00435a50
00493620  83be640b000010            CMP dword ptr [ESI + 0xb64],0x10
00493627  0f858a000000              JNZ 0x004936b7
0049362d  80bd37ffffff00            CMP byte ptr [EBP + 0xffffff37],0x0
00493634  7411                      JZ 0x00493647
00493636  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
0049363e  0f2fc8                    COMISS XMM1,XMM0
00493641  0f86ab010000              JBE 0x004937f2
00493647  83bfc00b000078            CMP dword ptr [EDI + 0xbc0],0x78
0049364e  0f8c9e010000              JL 0x004937f2
00493654  8b8518ffffff              MOV EAX,dword ptr [EBP + 0xffffff18]
0049365a  2b8508ffffff              SUB EAX,dword ptr [EBP + 0xffffff08]
00493660  3b85e0feffff              CMP EAX,dword ptr [EBP + 0xfffffee0]
00493666  0f8d86010000              JGE 0x004937f2
0049366c  f30f108dd8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed8]
00493674  f30f1095d4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed4]
0049367c  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00493684  f30f118d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM1
0049368c  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
00493694  c68536ffffff01            MOV byte ptr [EBP + 0xffffff36],0x1
0049369b  c68537ffffff01            MOV byte ptr [EBP + 0xffffff37],0x1
004936a2  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
004936aa  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
004936b2  e93b010000                JMP 0x004937f2
004936b7  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
004936bf  0f2fc8                    COMISS XMM1,XMM0
004936c2  0f862a010000              JBE 0x004937f2
004936c8  80bd37ffffff00            CMP byte ptr [EBP + 0xffffff37],0x0
004936cf  0f851d010000              JNZ 0x004937f2
004936d5  f30f108dd4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed4]
004936dd  f30f5c8d00ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff00]
004936e5  f30f1095d8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed8]
004936ed  f30f5c9504ffffff          SUBSS XMM2,dword ptr [EBP + 0xffffff04]
004936f5  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004936fd  c68536ffffff01            MOV byte ptr [EBP + 0xffffff36],0x1
00493704  0f28c1                    MOVAPS XMM0,XMM1
00493707  f30f118d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM1
0049370f  f30f59c1                  MULSS XMM0,XMM1
00493713  0f28ca                    MOVAPS XMM1,XMM2
00493716  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
0049371e  f30f59ca                  MULSS XMM1,XMM2
00493722  f30f58c1                  ADDSS XMM0,XMM1
00493726  e82523faff                CALL 0x00435a50
0049372b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00493732  f30f109528ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff28]
0049373a  761e                      JBE 0x0049375a
0049373c  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00493744  f30f5ec8                  DIVSS XMM1,XMM0
00493748  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
00493750  f30f59c1                  MULSS XMM0,XMM1
00493754  f30f59d1                  MULSS XMM2,XMM1
00493758  eb08                      JMP 0x00493762
0049375a  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
00493762  f30f101d50a9ba00          MOVSS XMM3,dword ptr [0x00baa950]
0049376a  8d8dccfeffff              LEA ECX,[EBP + 0xfffffecc]
00493770  f30f108dd8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed8]
00493778  83ec0c                    SUB ESP,0xc
0049377b  a17816c700                MOV EAX,[0x00c71678]
00493780  f30f59c3                  MULSS XMM0,XMM3
00493784  f30f59d3                  MULSS XMM2,XMM3
00493788  c744240800007042          MOV dword ptr [ESP + 0x8],0x42700000
00493790  f30f58c8                  ADDSS XMM1,XMM0
00493794  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
0049379c  f30f1085d4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed4]
004937a4  c7042400007042            MOV dword ptr [ESP],0x42700000
004937ab  f30f58c2                  ADDSS XMM0,XMM2
004937af  51                        PUSH ECX
004937b0  8d8df4feffff              LEA ECX,[EBP + 0xfffffef4]
004937b6  51                        PUSH ECX
004937b7  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004937bd  f30f118dccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM1
004937c5  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
004937cd  e87ef73700                CALL 0x00812f50
004937d2  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
004937da  f30f118d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM1
004937e2  f30f108df8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef8]
004937ea  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
004937f2  8b85dcfeffff              MOV EAX,dword ptr [EBP + 0xfffffedc]
004937f8  40                        INC EAX
004937f9  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
004937ff  3b85c8feffff              CMP EAX,dword ptr [EBP + 0xfffffec8]
00493805  0f82c5fdffff              JC 0x004935d0
0049380b  8bb518ffffff              MOV ESI,dword ptr [EBP + 0xffffff18]
00493811  8bc6                      MOV EAX,ESI
00493813  2b8508ffffff              SUB EAX,dword ptr [EBP + 0xffffff08]
00493819  8985dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EAX
0049381f  3b85e0feffff              CMP EAX,dword ptr [EBP + 0xfffffee0]
00493825  7d08                      JGE 0x0049382f
00493827  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
0049382d  eb0a                      JMP 0x00493839
0049382f  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00493839  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0049383f  85c0                      TEST EAX,EAX
00493841  7e07                      JLE 0x0049384a
00493843  48                        DEC EAX
00493844  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0049384a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00493850  83f804                    CMP EAX,0x4
00493853  0f856f040000              JNZ 0x00493cc8
00493859  51                        PUSH ECX
0049385a  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00493860  c7042400000000            MOV dword ptr [ESP],0x0
00493867  50                        PUSH EAX
00493868  8bcf                      MOV ECX,EDI
0049386a  e8d1b32200                CALL 0x006bec40
0049386f  80bd36ffffff00            CMP byte ptr [EBP + 0xffffff36],0x0
00493876  7430                      JZ 0x004938a8
00493878  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0049387e  25000b0001                AND EAX,0x1000b00
00493883  83c800                    OR EAX,0x0
00493886  7520                      JNZ 0x004938a8
00493888  f30f108528ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff28]
00493890  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
00493898  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
004938a0  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
004938a8  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004938b0  8d8f14040000              LEA ECX,[EDI + 0x414]
004938b6  f30f118718040000          MOVSS dword ptr [EDI + 0x418],XMM0
004938be  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
004938c4  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004938cc  6a01                      PUSH 0x1
004938ce  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
004938d6  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004938de  6884030000                PUSH 0x384
004938e3  51                        PUSH ECX
004938e4  f30f118720040000          MOVSS dword ptr [EDI + 0x420],XMM0
004938ec  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004938f4  c704246666863f            MOV dword ptr [ESP],0x3f866666
004938fb  50                        PUSH EAX
004938fc  f30f118724040000          MOVSS dword ptr [EDI + 0x424],XMM0
00493904  e8b7fa3400                CALL 0x007e33c0
00493909  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
00493910  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
00493918  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
00493920  0f28c1                    MOVAPS XMM0,XMM1
00493923  f30f59c1                  MULSS XMM0,XMM1
00493927  0f28ca                    MOVAPS XMM1,XMM2
0049392a  f30f59ca                  MULSS XMM1,XMM2
0049392e  f30f58c1                  ADDSS XMM0,XMM1
00493932  e81921faff                CALL 0x00435a50
00493937  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
0049393e  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00493941  0f8683010000              JBE 0x00493aca
00493947  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
0049394f  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00493957  0f28c2                    MOVAPS XMM0,XMM2
0049395a  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00493961  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00493968  0f2fc1                    COMISS XMM0,XMM1
0049396b  0f86ee000000              JBE 0x00493a5f
00493971  0f57c0                    XORPS XMM0,XMM0
00493974  0f2fc2                    COMISS XMM0,XMM2
00493977  7675                      JBE 0x004939ee
00493979  85c9                      TEST ECX,ECX
0049397b  7462                      JZ 0x004939df
0049397d  83791410                  CMP dword ptr [ECX + 0x14],0x10
00493981  8bc1                      MOV EAX,ECX
00493983  7202                      JC 0x00493987
00493985  8b01                      MOV EAX,dword ptr [ECX]
00493987  b988dab100                MOV ECX,0xb1da88
0049398c  0f1f4000                  NOP dword ptr [EAX]
00493990  8a10                      MOV DL,byte ptr [EAX]
00493992  3a11                      CMP DL,byte ptr [ECX]
00493994  751a                      JNZ 0x004939b0
00493996  84d2                      TEST DL,DL
00493998  7412                      JZ 0x004939ac
0049399a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049399d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004939a0  750e                      JNZ 0x004939b0
004939a2  83c002                    ADD EAX,0x2
004939a5  83c102                    ADD ECX,0x2
004939a8  84d2                      TEST DL,DL
004939aa  75e4                      JNZ 0x00493990
004939ac  33c0                      XOR EAX,EAX
004939ae  eb05                      JMP 0x004939b5
004939b0  1bc0                      SBB EAX,EAX
004939b2  83c801                    OR EAX,0x1
004939b5  8d4f48                    LEA ECX,[EDI + 0x48]
004939b8  85c0                      TEST EAX,EAX
004939ba  7526                      JNZ 0x004939e2
004939bc  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
004939bf  80783400                  CMP byte ptr [EAX + 0x34],0x0
004939c3  0f847c010000              JZ 0x00493b45
004939c9  80794400                  CMP byte ptr [ECX + 0x44],0x0
004939cd  0f8572010000              JNZ 0x00493b45
004939d3  6a01                      PUSH 0x1
004939d5  6888dab100                PUSH 0xb1da88
004939da  e948010000                JMP 0x00493b27
004939df  8d4f48                    LEA ECX,[EDI + 0x48]
004939e2  6a01                      PUSH 0x1
004939e4  6888dab100                PUSH 0xb1da88
004939e9  e939010000                JMP 0x00493b27
004939ee  85c9                      TEST ECX,ECX
004939f0  745e                      JZ 0x00493a50
004939f2  83791410                  CMP dword ptr [ECX + 0x14],0x10
004939f6  8bc1                      MOV EAX,ECX
004939f8  7202                      JC 0x004939fc
004939fa  8b01                      MOV EAX,dword ptr [ECX]
004939fc  b9c0dab100                MOV ECX,0xb1dac0
00493a01  8a10                      MOV DL,byte ptr [EAX]
00493a03  3a11                      CMP DL,byte ptr [ECX]
00493a05  751a                      JNZ 0x00493a21
00493a07  84d2                      TEST DL,DL
00493a09  7412                      JZ 0x00493a1d
00493a0b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00493a0e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00493a11  750e                      JNZ 0x00493a21
00493a13  83c002                    ADD EAX,0x2
00493a16  83c102                    ADD ECX,0x2
00493a19  84d2                      TEST DL,DL
00493a1b  75e4                      JNZ 0x00493a01
00493a1d  33c0                      XOR EAX,EAX
00493a1f  eb05                      JMP 0x00493a26
00493a21  1bc0                      SBB EAX,EAX
00493a23  83c801                    OR EAX,0x1
00493a26  8d4f48                    LEA ECX,[EDI + 0x48]
00493a29  85c0                      TEST EAX,EAX
00493a2b  7526                      JNZ 0x00493a53
00493a2d  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
00493a30  80783400                  CMP byte ptr [EAX + 0x34],0x0
00493a34  0f840b010000              JZ 0x00493b45
00493a3a  80794400                  CMP byte ptr [ECX + 0x44],0x0
00493a3e  0f8501010000              JNZ 0x00493b45
00493a44  6a01                      PUSH 0x1
00493a46  68c0dab100                PUSH 0xb1dac0
00493a4b  e9d7000000                JMP 0x00493b27
00493a50  8d4f48                    LEA ECX,[EDI + 0x48]
00493a53  6a01                      PUSH 0x1
00493a55  68c0dab100                PUSH 0xb1dac0
00493a5a  e9c8000000                JMP 0x00493b27
00493a5f  85c9                      TEST ECX,ECX
00493a61  745b                      JZ 0x00493abe
00493a63  83791410                  CMP dword ptr [ECX + 0x14],0x10
00493a67  8bc1                      MOV EAX,ECX
00493a69  7202                      JC 0x00493a6d
00493a6b  8b01                      MOV EAX,dword ptr [ECX]
00493a6d  b918ddb100                MOV ECX,0xb1dd18
00493a72  8a10                      MOV DL,byte ptr [EAX]
00493a74  3a11                      CMP DL,byte ptr [ECX]
00493a76  751a                      JNZ 0x00493a92
00493a78  84d2                      TEST DL,DL
00493a7a  7412                      JZ 0x00493a8e
00493a7c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00493a7f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00493a82  750e                      JNZ 0x00493a92
00493a84  83c002                    ADD EAX,0x2
00493a87  83c102                    ADD ECX,0x2
00493a8a  84d2                      TEST DL,DL
00493a8c  75e4                      JNZ 0x00493a72
00493a8e  33c0                      XOR EAX,EAX
00493a90  eb05                      JMP 0x00493a97
00493a92  1bc0                      SBB EAX,EAX
00493a94  83c801                    OR EAX,0x1
00493a97  8d4f48                    LEA ECX,[EDI + 0x48]
00493a9a  85c0                      TEST EAX,EAX
00493a9c  7523                      JNZ 0x00493ac1
00493a9e  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
00493aa1  80783400                  CMP byte ptr [EAX + 0x34],0x0
00493aa5  0f849a000000              JZ 0x00493b45
00493aab  80794400                  CMP byte ptr [ECX + 0x44],0x0
00493aaf  0f8590000000              JNZ 0x00493b45
00493ab5  6a01                      PUSH 0x1
00493ab7  6818ddb100                PUSH 0xb1dd18
00493abc  eb69                      JMP 0x00493b27
00493abe  8d4f48                    LEA ECX,[EDI + 0x48]
00493ac1  6a01                      PUSH 0x1
00493ac3  6818ddb100                PUSH 0xb1dd18
00493ac8  eb5d                      JMP 0x00493b27
00493aca  85c9                      TEST ECX,ECX
00493acc  744f                      JZ 0x00493b1d
00493ace  83791410                  CMP dword ptr [ECX + 0x14],0x10
00493ad2  8bc1                      MOV EAX,ECX
00493ad4  7202                      JC 0x00493ad8
00493ad6  8b01                      MOV EAX,dword ptr [ECX]
00493ad8  b954bcb100                MOV ECX,0xb1bc54
00493add  0f1f00                    NOP dword ptr [EAX]
00493ae0  8a10                      MOV DL,byte ptr [EAX]
00493ae2  3a11                      CMP DL,byte ptr [ECX]
00493ae4  751a                      JNZ 0x00493b00
00493ae6  84d2                      TEST DL,DL
00493ae8  7412                      JZ 0x00493afc
00493aea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00493aed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00493af0  750e                      JNZ 0x00493b00
00493af2  83c002                    ADD EAX,0x2
00493af5  83c102                    ADD ECX,0x2
00493af8  84d2                      TEST DL,DL
00493afa  75e4                      JNZ 0x00493ae0
00493afc  33c0                      XOR EAX,EAX
00493afe  eb05                      JMP 0x00493b05
00493b00  1bc0                      SBB EAX,EAX
00493b02  83c801                    OR EAX,0x1
00493b05  8d4f48                    LEA ECX,[EDI + 0x48]
00493b08  85c0                      TEST EAX,EAX
00493b0a  7514                      JNZ 0x00493b20
00493b0c  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
00493b0f  80783400                  CMP byte ptr [EAX + 0x34],0x0
00493b13  7430                      JZ 0x00493b45
00493b15  80794400                  CMP byte ptr [ECX + 0x44],0x0
00493b19  752a                      JNZ 0x00493b45
00493b1b  eb03                      JMP 0x00493b20
00493b1d  8d4f48                    LEA ECX,[EDI + 0x48]
00493b20  6a01                      PUSH 0x1
00493b22  6854bcb100                PUSH 0xb1bc54
00493b27  e8a46af7ff                CALL 0x0040a5d0
00493b2c  84c0                      TEST AL,AL
00493b2e  7415                      JZ 0x00493b45
00493b30  8d4f78                    LEA ECX,[EDI + 0x78]
00493b33  e87866f7ff                CALL 0x0040a1b0
00493b38  8bb518ffffff              MOV ESI,dword ptr [EBP + 0xffffff18]
00493b3e  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00493b45  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00493b4b  33c0                      XOR EAX,EAX
00493b4d  81e100000010              AND ECX,0x10000000
00493b53  0bc1                      OR EAX,ECX
00493b55  7418                      JZ 0x00493b6f
00493b57  a17816c700                MOV EAX,[0x00c71678]
00493b5c  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00493b62  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00493b65  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00493b69  0f85c2110000              JNZ 0x00494d31
00493b6f  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00493b75  83f878                    CMP EAX,0x78
00493b78  7d0d                      JGE 0x00493b87
00493b7a  83bdfcfeffff01            CMP dword ptr [EBP + 0xfffffefc],0x1
00493b81  0f85b2000000              JNZ 0x00493c39
00493b87  3bb514ffffff              CMP ESI,dword ptr [EBP + 0xffffff14]
00493b8d  7d67                      JGE 0x00493bf6
00493b8f  8b8de0feffff              MOV ECX,dword ptr [EBP + 0xfffffee0]
00493b95  398ddcfeffff              CMP dword ptr [EBP + 0xfffffedc],ECX
00493b9b  7d59                      JGE 0x00493bf6
00493b9d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00493ba3  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
00493ba9  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
00493bb3  c78514ffffff8a010000      MOV dword ptr [EBP + 0xffffff14],0x18a
00493bbd  e8be2b4c00                CALL 0x00956780
00493bc2  83ec08                    SUB ESP,0x8
00493bc5  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00493bcb  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00493bd3  c704240000803f            MOV dword ptr [ESP],0x3f800000
00493bda  6a00                      PUSH 0x0
00493bdc  6a02                      PUSH 0x2
00493bde  51                        PUSH ECX
00493bdf  c704240000803f            MOV dword ptr [ESP],0x3f800000
00493be6  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
00493bec  e83fa04900                CALL 0x0092dc30
00493bf1  e93b110000                JMP 0x00494d31
00493bf6  83f878                    CMP EAX,0x78
00493bf9  7c3e                      JL 0x00493c39
00493bfb  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00493c03  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00493c0b  f30f5c8510ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff10]
00493c13  f30f5c8de8feffff          SUBSS XMM1,dword ptr [EBP + 0xfffffee8]
00493c1b  f30f59c0                  MULSS XMM0,XMM0
00493c1f  f30f59c9                  MULSS XMM1,XMM1
00493c23  f30f58c1                  ADDSS XMM0,XMM1
00493c27  e8241efaff                CALL 0x00435a50
00493c2c  f30f100d7ca9ba00          MOVSS XMM1,dword ptr [0x00baa97c]
00493c34  0f2fc8                    COMISS XMM1,XMM0
00493c37  771b                      JA 0x00493c54
00493c39  83bdfcfeffff02            CMP dword ptr [EBP + 0xfffffefc],0x2
00493c40  be64000000                MOV ESI,0x64
00493c45  751c                      JNZ 0x00493c63
00493c47  e814b32500                CALL 0x006eef60
00493c4c  33d2                      XOR EDX,EDX
00493c4e  f7f6                      DIV ESI
00493c50  85d2                      TEST EDX,EDX
00493c52  750f                      JNZ 0x00493c63
00493c54  c787640b00000e000000      MOV dword ptr [EDI + 0xb64],0xe
00493c5e  e9ce100000                JMP 0x00494d31
00493c63  ff7720                    PUSH dword ptr [EDI + 0x20]
00493c66  8bcf                      MOV ECX,EDI
00493c68  6a0f                      PUSH 0xf
00493c6a  e8a18a2100                CALL 0x006ac710
00493c6f  84c0                      TEST AL,AL
00493c71  0f84ba100000              JZ 0x00494d31
00493c77  e8e4b22500                CALL 0x006eef60
00493c7c  33d2                      XOR EDX,EDX
00493c7e  f7f6                      DIV ESI
00493c80  83fa14                    CMP EDX,0x14
00493c83  0f83a8100000              JNC 0x00494d31
00493c89  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
00493c90  0f849b100000              JZ 0x00494d31
00493c96  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00493c9d  0f8f8e100000              JG 0x00494d31
00493ca3  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00493ca7  0f8484100000              JZ 0x00494d31
00493cad  8a852fffffff              MOV AL,byte ptr [EBP + 0xffffff2f]
00493cb3  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00493cbd  888748010000              MOV byte ptr [EDI + 0x148],AL
00493cc3  e969100000                JMP 0x00494d31
00493cc8  83f80d                    CMP EAX,0xd
00493ccb  0f85b8040000              JNZ 0x00494189
00493cd1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00493cd5  0f848b010000              JZ 0x00493e66
00493cdb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00493ce2  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00493ce5  0f8400010000              JZ 0x00493deb
00493ceb  83781410                  CMP dword ptr [EAX + 0x14],0x10
00493cef  8bc8                      MOV ECX,EAX
00493cf1  7202                      JC 0x00493cf5
00493cf3  8b08                      MOV ECX,dword ptr [EAX]
00493cf5  baccdab100                MOV EDX,0xb1dacc
00493cfa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00493d00  8a01                      MOV AL,byte ptr [ECX]
00493d02  3a02                      CMP AL,byte ptr [EDX]
00493d04  88853fffffff              MOV byte ptr [EBP + 0xffffff3f],AL
00493d0a  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00493d0d  752d                      JNZ 0x00493d3c
00493d0f  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
00493d16  7420                      JZ 0x00493d38
00493d18  8a4101                    MOV AL,byte ptr [ECX + 0x1]
00493d1b  3a4201                    CMP AL,byte ptr [EDX + 0x1]
00493d1e  88853fffffff              MOV byte ptr [EBP + 0xffffff3f],AL
00493d24  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00493d27  7513                      JNZ 0x00493d3c
00493d29  83c102                    ADD ECX,0x2
00493d2c  83c202                    ADD EDX,0x2
00493d2f  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
00493d36  75c8                      JNZ 0x00493d00
00493d38  33c9                      XOR ECX,ECX
00493d3a  eb05                      JMP 0x00493d41
00493d3c  1bc9                      SBB ECX,ECX
00493d3e  83c901                    OR ECX,0x1
00493d41  85c9                      TEST ECX,ECX
00493d43  7464                      JZ 0x00493da9
00493d45  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00493d48  8bc8                      MOV ECX,EAX
00493d4a  83781410                  CMP dword ptr [EAX + 0x14],0x10
00493d4e  7202                      JC 0x00493d52
00493d50  8b08                      MOV ECX,dword ptr [EAX]
00493d52  baa8dab100                MOV EDX,0xb1daa8
00493d57  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00493d60  8a01                      MOV AL,byte ptr [ECX]
00493d62  3a02                      CMP AL,byte ptr [EDX]
00493d64  88853fffffff              MOV byte ptr [EBP + 0xffffff3f],AL
00493d6a  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00493d6d  752d                      JNZ 0x00493d9c
00493d6f  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
00493d76  7420                      JZ 0x00493d98
00493d78  8a4101                    MOV AL,byte ptr [ECX + 0x1]
00493d7b  3a4201                    CMP AL,byte ptr [EDX + 0x1]
00493d7e  88853fffffff              MOV byte ptr [EBP + 0xffffff3f],AL
00493d84  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00493d87  7513                      JNZ 0x00493d9c
00493d89  83c102                    ADD ECX,0x2
00493d8c  83c202                    ADD EDX,0x2
00493d8f  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
00493d96  75c8                      JNZ 0x00493d60
00493d98  33c9                      XOR ECX,ECX
00493d9a  eb05                      JMP 0x00493da1
00493d9c  1bc9                      SBB ECX,ECX
00493d9e  83c901                    OR ECX,0x1
00493da1  85c9                      TEST ECX,ECX
00493da3  0f85bd000000              JNZ 0x00493e66
00493da9  83781410                  CMP dword ptr [EAX + 0x14],0x10
00493dad  7202                      JC 0x00493db1
00493daf  8b00                      MOV EAX,dword ptr [EAX]
00493db1  b9ccdab100                MOV ECX,0xb1dacc
00493db6  8a10                      MOV DL,byte ptr [EAX]
00493db8  3a11                      CMP DL,byte ptr [ECX]
00493dba  751a                      JNZ 0x00493dd6
00493dbc  84d2                      TEST DL,DL
00493dbe  7412                      JZ 0x00493dd2
00493dc0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00493dc3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00493dc6  750e                      JNZ 0x00493dd6
00493dc8  83c002                    ADD EAX,0x2
00493dcb  83c102                    ADD ECX,0x2
00493dce  84d2                      TEST DL,DL
00493dd0  75e4                      JNZ 0x00493db6
00493dd2  33c0                      XOR EAX,EAX
00493dd4  eb05                      JMP 0x00493ddb
00493dd6  1bc0                      SBB EAX,EAX
00493dd8  83c801                    OR EAX,0x1
00493ddb  85c0                      TEST EAX,EAX
00493ddd  757b                      JNZ 0x00493e5a
00493ddf  c6851cffffff01            MOV byte ptr [EBP + 0xffffff1c],0x1
00493de6  e952010000                JMP 0x00493f3d
00493deb  83781410                  CMP dword ptr [EAX + 0x14],0x10
00493def  7202                      JC 0x00493df3
00493df1  8b00                      MOV EAX,dword ptr [EAX]
00493df3  b9ccdab100                MOV ECX,0xb1dacc
00493df8  8a10                      MOV DL,byte ptr [EAX]
00493dfa  3a11                      CMP DL,byte ptr [ECX]
00493dfc  751a                      JNZ 0x00493e18
00493dfe  84d2                      TEST DL,DL
00493e00  7412                      JZ 0x00493e14
00493e02  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00493e05  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00493e08  750e                      JNZ 0x00493e18
00493e0a  83c002                    ADD EAX,0x2
00493e0d  83c102                    ADD ECX,0x2
00493e10  84d2                      TEST DL,DL
00493e12  75e4                      JNZ 0x00493df8
00493e14  33c0                      XOR EAX,EAX
00493e16  eb05                      JMP 0x00493e1d
00493e18  1bc0                      SBB EAX,EAX
00493e1a  83c801                    OR EAX,0x1
00493e1d  85c0                      TEST EAX,EAX
00493e1f  7439                      JZ 0x00493e5a
00493e21  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00493e24  83781410                  CMP dword ptr [EAX + 0x14],0x10
00493e28  7202                      JC 0x00493e2c
00493e2a  8b00                      MOV EAX,dword ptr [EAX]
00493e2c  b9a8dab100                MOV ECX,0xb1daa8
00493e31  8a10                      MOV DL,byte ptr [EAX]
00493e33  3a11                      CMP DL,byte ptr [ECX]
00493e35  751a                      JNZ 0x00493e51
00493e37  84d2                      TEST DL,DL
00493e39  7412                      JZ 0x00493e4d
00493e3b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00493e3e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00493e41  750e                      JNZ 0x00493e51
00493e43  83c002                    ADD EAX,0x2
00493e46  83c102                    ADD ECX,0x2
00493e49  84d2                      TEST DL,DL
00493e4b  75e4                      JNZ 0x00493e31
00493e4d  33c0                      XOR EAX,EAX
00493e4f  eb05                      JMP 0x00493e56
00493e51  1bc0                      SBB EAX,EAX
00493e53  83c801                    OR EAX,0x1
00493e56  85c0                      TEST EAX,EAX
00493e58  750c                      JNZ 0x00493e66
00493e5a  c6851cffffff00            MOV byte ptr [EBP + 0xffffff1c],0x0
00493e61  e9d7000000                JMP 0x00493f3d
00493e66  80bd1cffffff00            CMP byte ptr [EBP + 0xffffff1c],0x0
00493e6d  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
00493e70  745b                      JZ 0x00493ecd
00493e72  85c9                      TEST ECX,ECX
00493e74  744e                      JZ 0x00493ec4
00493e76  83791410                  CMP dword ptr [ECX + 0x14],0x10
00493e7a  8bc1                      MOV EAX,ECX
00493e7c  7202                      JC 0x00493e80
00493e7e  8b01                      MOV EAX,dword ptr [ECX]
00493e80  b9ccdab100                MOV ECX,0xb1dacc
00493e85  8a10                      MOV DL,byte ptr [EAX]
00493e87  3a11                      CMP DL,byte ptr [ECX]
00493e89  751a                      JNZ 0x00493ea5
00493e8b  84d2                      TEST DL,DL
00493e8d  7412                      JZ 0x00493ea1
00493e8f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00493e92  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00493e95  750e                      JNZ 0x00493ea5
00493e97  83c002                    ADD EAX,0x2
00493e9a  83c102                    ADD ECX,0x2
00493e9d  84d2                      TEST DL,DL
00493e9f  75e4                      JNZ 0x00493e85
00493ea1  33c0                      XOR EAX,EAX
00493ea3  eb05                      JMP 0x00493eaa
00493ea5  1bc0                      SBB EAX,EAX
00493ea7  83c801                    OR EAX,0x1
00493eaa  85c0                      TEST EAX,EAX
00493eac  7516                      JNZ 0x00493ec4
00493eae  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00493eb1  80783400                  CMP byte ptr [EAX + 0x34],0x0
00493eb5  0f8482000000              JZ 0x00493f3d
00493ebb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00493ec2  7579                      JNZ 0x00493f3d
00493ec4  6a01                      PUSH 0x1
00493ec6  68ccdab100                PUSH 0xb1dacc
00493ecb  eb55                      JMP 0x00493f22
00493ecd  85c9                      TEST ECX,ECX
00493ecf  744a                      JZ 0x00493f1b
00493ed1  83791410                  CMP dword ptr [ECX + 0x14],0x10
00493ed5  8bc1                      MOV EAX,ECX
00493ed7  7202                      JC 0x00493edb
00493ed9  8b01                      MOV EAX,dword ptr [ECX]
00493edb  b9a8dab100                MOV ECX,0xb1daa8
00493ee0  8a10                      MOV DL,byte ptr [EAX]
00493ee2  3a11                      CMP DL,byte ptr [ECX]
00493ee4  751a                      JNZ 0x00493f00
00493ee6  84d2                      TEST DL,DL
00493ee8  7412                      JZ 0x00493efc
00493eea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00493eed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00493ef0  750e                      JNZ 0x00493f00
00493ef2  83c002                    ADD EAX,0x2
00493ef5  83c102                    ADD ECX,0x2
00493ef8  84d2                      TEST DL,DL
00493efa  75e4                      JNZ 0x00493ee0
00493efc  33c0                      XOR EAX,EAX
00493efe  eb05                      JMP 0x00493f05
00493f00  1bc0                      SBB EAX,EAX
00493f02  83c801                    OR EAX,0x1
00493f05  85c0                      TEST EAX,EAX
00493f07  7512                      JNZ 0x00493f1b
00493f09  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00493f0c  80783400                  CMP byte ptr [EAX + 0x34],0x0
00493f10  742b                      JZ 0x00493f3d
00493f12  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00493f19  7522                      JNZ 0x00493f3d
00493f1b  6a01                      PUSH 0x1
00493f1d  68a8dab100                PUSH 0xb1daa8
00493f22  8d4f48                    LEA ECX,[EDI + 0x48]
00493f25  e8a666f7ff                CALL 0x0040a5d0
00493f2a  84c0                      TEST AL,AL
00493f2c  740f                      JZ 0x00493f3d
00493f2e  8d4f78                    LEA ECX,[EDI + 0x78]
00493f31  e87a62f7ff                CALL 0x0040a1b0
00493f36  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00493f3d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00493f41  0f8481010000              JZ 0x004940c8
00493f47  6850deb100                PUSH 0xb1de50
00493f4c  8d4f78                    LEA ECX,[EDI + 0x78]
00493f4f  e87c6ef7ff                CALL 0x0040add0
00493f54  84c0                      TEST AL,AL
00493f56  0f846c010000              JZ 0x004940c8
00493f5c  80bd1cffffff00            CMP byte ptr [EBP + 0xffffff1c],0x0
00493f63  c78524ffffff00000000      MOV dword ptr [EBP + 0xffffff24],0x0
00493f6d  7419                      JZ 0x00493f88
00493f6f  c78520ffffff000020c1      MOV dword ptr [EBP + 0xffffff20],0xc1200000
00493f79  e8e2af2500                CALL 0x006eef60
00493f7e  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00493f86  eb17                      JMP 0x00493f9f
00493f88  c78520ffffff00002041      MOV dword ptr [EBP + 0xffffff20],0x41200000
00493f92  e8c9af2500                CALL 0x006eef60
00493f97  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00493f9f  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
00493fa2  8d973c030000              LEA EDX,[EDI + 0x33c]
00493fa8  f30f590d44a9ba00          MULSS XMM1,dword ptr [0x00baa944]
00493fb0  50                        PUSH EAX
00493fb1  f30f104204                MOVSS XMM0,dword ptr [EDX + 0x4]
00493fb6  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00493fbc  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00493fc4  f30f580a                  ADDSS XMM1,dword ptr [EDX]
00493fc8  51                        PUSH ECX
00493fc9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00493fcf  57                        PUSH EDI
00493fd0  50                        PUSH EAX
00493fd1  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
00493fd7  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
00493fdf  50                        PUSH EAX
00493fe0  6a01                      PUSH 0x1
00493fe2  6895010000                PUSH 0x195
00493fe7  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
00493fef  e82c4bf9ff                CALL 0x00428b20
00493ff4  8bf0                      MOV ESI,EAX
00493ff6  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00493ffc  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00494002  85c9                      TEST ECX,ECX
00494004  741e                      JZ 0x00494024
00494006  898538ffffff              MOV dword ptr [EBP + 0xffffff38],EAX
0049400c  81c1cc030000              ADD ECX,0x3cc
00494012  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
00494018  50                        PUSH EAX
00494019  e8f2b10300                CALL 0x004cf210
0049401e  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00494024  50                        PUSH EAX
00494025  8bcf                      MOV ECX,EDI
00494027  8938                      MOV dword ptr [EAX],EDI
00494029  e8c29c0300                CALL 0x004cdcf0
0049402e  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00494034  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0049403b  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00494041  8b87780c0000              MOV EAX,dword ptr [EDI + 0xc78]
00494047  3986780c0000              CMP dword ptr [ESI + 0xc78],EAX
0049404d  744c                      JZ 0x0049409b
0049404f  6a01                      PUSH 0x1
00494051  8bce                      MOV ECX,ESI
00494053  8986780c0000              MOV dword ptr [ESI + 0xc78],EAX
00494059  e8e26e2200                CALL 0x006baf40
0049405e  837e7410                  CMP dword ptr [ESI + 0x74],0x10
00494062  8d4660                    LEA EAX,[ESI + 0x60]
00494065  8d4e48                    LEA ECX,[ESI + 0x48]
00494068  7202                      JC 0x0049406c
0049406a  8b00                      MOV EAX,dword ptr [EAX]
0049406c  6a01                      PUSH 0x1
0049406e  50                        PUSH EAX
0049406f  e85c65f7ff                CALL 0x0040a5d0
00494074  84c0                      TEST AL,AL
00494076  7423                      JZ 0x0049409b
00494078  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0049407b  8d4648                    LEA EAX,[ESI + 0x48]
0049407e  85c9                      TEST ECX,ECX
00494080  7419                      JZ 0x0049409b
00494082  8d4830                    LEA ECX,[EAX + 0x30]
00494085  0f57c9                    XORPS XMM1,XMM1
00494088  e8734df7ff                CALL 0x00408e00
0049408d  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
00494090  8d4648                    LEA EAX,[ESI + 0x48]
00494093  85c9                      TEST ECX,ECX
00494095  7404                      JZ 0x0049409b
00494097  c6404400                  MOV byte ptr [EAX + 0x44],0x0
0049409b  8b06                      MOV EAX,dword ptr [ESI]
0049409d  8bce                      MOV ECX,ESI
0049409f  ff5060                    CALL dword ptr [EAX + 0x60]
004940a2  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
004940a8  33c0                      XOR EAX,EAX
004940aa  81e100000010              AND ECX,0x10000000
004940b0  0bc1                      OR EAX,ECX
004940b2  7414                      JZ 0x004940c8
004940b4  c7868003000000000041      MOV dword ptr [ESI + 0x380],0x41000000
004940be  c7868403000000000041      MOV dword ptr [ESI + 0x384],0x41000000
004940c8  8b07                      MOV EAX,dword ptr [EDI]
004940ca  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
004940d0  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
004940d8  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004940e0  6a1e                      PUSH 0x1e
004940e2  51                        PUSH ECX
004940e3  6a00                      PUSH 0x0
004940e5  6a00                      PUSH 0x0
004940e7  51                        PUSH ECX
004940e8  8bcf                      MOV ECX,EDI
004940ea  c78594feffff00000000      MOV dword ptr [EBP + 0xfffffe94],0x0
004940f4  c78598feffff00000000      MOV dword ptr [EBP + 0xfffffe98],0x0
004940fe  c7859cfeffff00000000      MOV dword ptr [EBP + 0xfffffe9c],0x0
00494108  c785a0feffff00000000      MOV dword ptr [EBP + 0xfffffea0],0x0
00494112  f30f118da4feffff          MOVSS dword ptr [EBP + 0xfffffea4],XMM1
0049411a  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
00494122  f30f118dacfeffff          MOVSS dword ptr [EBP + 0xfffffeac],XMM1
0049412a  f30f1185b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM0
00494132  c785b4feffff00000000      MOV dword ptr [EBP + 0xfffffeb4],0x0
0049413c  c785b8feffff00000000      MOV dword ptr [EBP + 0xfffffeb8],0x0
00494146  c70424000080bf            MOV dword ptr [ESP],0xbf800000
0049414d  ff5020                    CALL dword ptr [EAX + 0x20]
00494150  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00494154  740d                      JZ 0x00494163
00494156  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0049415d  0f85ce0b0000              JNZ 0x00494d31
00494163  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0049416d  e8eead2500                CALL 0x006eef60
00494172  33d2                      XOR EDX,EDX
00494174  b914000000                MOV ECX,0x14
00494179  f7f1                      DIV ECX
0049417b  83c228                    ADD EDX,0x28
0049417e  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00494184  e9a80b0000                JMP 0x00494d31
00494189  83f803                    CMP EAX,0x3
0049418c  0f85d5040000              JNZ 0x00494667
00494192  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049419a  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
004941a2  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004941aa  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004941ae  0f84b1000000              JZ 0x00494265
004941b4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004941bb  7560                      JNZ 0x0049421d
004941bd  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004941c0  83781410                  CMP dword ptr [EAX + 0x14],0x10
004941c4  7202                      JC 0x004941c8
004941c6  8b00                      MOV EAX,dword ptr [EAX]
004941c8  b9b8dab100                MOV ECX,0xb1dab8
004941cd  0f1f00                    NOP dword ptr [EAX]
004941d0  8a10                      MOV DL,byte ptr [EAX]
004941d2  3a11                      CMP DL,byte ptr [ECX]
004941d4  751a                      JNZ 0x004941f0
004941d6  84d2                      TEST DL,DL
004941d8  7412                      JZ 0x004941ec
004941da  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004941dd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004941e0  750e                      JNZ 0x004941f0
004941e2  83c002                    ADD EAX,0x2
004941e5  83c102                    ADD ECX,0x2
004941e8  84d2                      TEST DL,DL
004941ea  75e4                      JNZ 0x004941d0
004941ec  33c0                      XOR EAX,EAX
004941ee  eb05                      JMP 0x004941f5
004941f0  1bc0                      SBB EAX,EAX
004941f2  83c801                    OR EAX,0x1
004941f5  85c0                      TEST EAX,EAX
004941f7  751b                      JNZ 0x00494214
004941f9  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00494203  898710040000              MOV dword ptr [EDI + 0x410],EAX
00494209  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0049420f  e9350b0000                JMP 0x00494d49
00494214  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0049421b  7448                      JZ 0x00494265
0049421d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00494220  85c0                      TEST EAX,EAX
00494222  740a                      JZ 0x0049422e
00494224  83781410                  CMP dword ptr [EAX + 0x14],0x10
00494228  7209                      JC 0x00494233
0049422a  8b00                      MOV EAX,dword ptr [EAX]
0049422c  eb05                      JMP 0x00494233
0049422e  b8eca4b100                MOV EAX,0xb1a4ec
00494233  b9b8dab100                MOV ECX,0xb1dab8
00494238  8a10                      MOV DL,byte ptr [EAX]
0049423a  3a11                      CMP DL,byte ptr [ECX]
0049423c  751a                      JNZ 0x00494258
0049423e  84d2                      TEST DL,DL
00494240  7412                      JZ 0x00494254
00494242  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00494245  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00494248  750e                      JNZ 0x00494258
0049424a  83c002                    ADD EAX,0x2
0049424d  83c102                    ADD ECX,0x2
00494250  84d2                      TEST DL,DL
00494252  75e4                      JNZ 0x00494238
00494254  33c0                      XOR EAX,EAX
00494256  eb05                      JMP 0x0049425d
00494258  1bc0                      SBB EAX,EAX
0049425a  83c801                    OR EAX,0x1
0049425d  85c0                      TEST EAX,EAX
0049425f  0f84e40a0000              JZ 0x00494d49
00494265  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0049426b  2500080001                AND EAX,0x1000800
00494270  83c800                    OR EAX,0x0
00494273  7456                      JZ 0x004942cb
00494275  8bcf                      MOV ECX,EDI
00494277  e8c4a52200                CALL 0x006be840
0049427c  6a00                      PUSH 0x0
0049427e  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00494284  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0049428a  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
00494290  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
00494296  898df4feffff              MOV dword ptr [EBP + 0xfffffef4],ECX
0049429c  8d8f14040000              LEA ECX,[EDI + 0x414]
004942a2  50                        PUSH EAX
004942a3  e898063500                CALL 0x007e4940
004942a8  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
004942af  7e7a                      JLE 0x0049432b
004942b1  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004942b9  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004942c1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004942c9  eb60                      JMP 0x0049432b
004942cb  6a00                      PUSH 0x0
004942cd  8d8f14040000              LEA ECX,[EDI + 0x414]
004942d3  e828203500                CALL 0x007e6300
004942d8  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004942e0  0f2e1554a4ba00            UCOMISS XMM2,dword ptr [0x00baa454]
004942e7  f30f100d90a4ba00          MOVSS XMM1,dword ptr [0x00baa490]
004942ef  9f                        LAHF
004942f0  f6c444                    TEST AH,0x44
004942f3  7b13                      JNP 0x00494308
004942f5  0f28c2                    MOVAPS XMM0,XMM2
004942f8  f30f59d1                  MULSS XMM2,XMM1
004942fc  f30f58c1                  ADDSS XMM0,XMM1
00494300  f30f5cc2                  SUBSS XMM0,XMM2
00494304  f30f5ec8                  DIVSS XMM1,XMM0
00494308  0f28c1                    MOVAPS XMM0,XMM1
0049430b  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
00494313  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
0049431b  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00494323  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0049432b  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
00494333  8d7748                    LEA ESI,[EDI + 0x48]
00494336  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0049433e  0f28ca                    MOVAPS XMM1,XMM2
00494341  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00494348  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0049434f  0f2fc8                    COMISS XMM1,XMM0
00494352  8b4e34                    MOV ECX,dword ptr [ESI + 0x34]
00494355  0f86bf000000              JBE 0x0049441a
0049435b  0f57c0                    XORPS XMM0,XMM0
0049435e  0f2fc2                    COMISS XMM0,XMM2
00494361  765f                      JBE 0x004943c2
00494363  85c9                      TEST ECX,ECX
00494365  744f                      JZ 0x004943b6
00494367  83791410                  CMP dword ptr [ECX + 0x14],0x10
0049436b  8bc1                      MOV EAX,ECX
0049436d  7202                      JC 0x00494371
0049436f  8b01                      MOV EAX,dword ptr [ECX]
00494371  b9f8dab100                MOV ECX,0xb1daf8
00494376  8a10                      MOV DL,byte ptr [EAX]
00494378  3a11                      CMP DL,byte ptr [ECX]
0049437a  751a                      JNZ 0x00494396
0049437c  84d2                      TEST DL,DL
0049437e  7412                      JZ 0x00494392
00494380  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00494383  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00494386  750e                      JNZ 0x00494396
00494388  83c002                    ADD EAX,0x2
0049438b  83c102                    ADD ECX,0x2
0049438e  84d2                      TEST DL,DL
00494390  75e4                      JNZ 0x00494376
00494392  33c0                      XOR EAX,EAX
00494394  eb05                      JMP 0x0049439b
00494396  1bc0                      SBB EAX,EAX
00494398  83c801                    OR EAX,0x1
0049439b  85c0                      TEST EAX,EAX
0049439d  7517                      JNZ 0x004943b6
0049439f  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
004943a2  80783400                  CMP byte ptr [EAX + 0x34],0x0
004943a6  0f84dd000000              JZ 0x00494489
004943ac  807e4400                  CMP byte ptr [ESI + 0x44],0x0
004943b0  0f85d3000000              JNZ 0x00494489
004943b6  6a01                      PUSH 0x1
004943b8  68f8dab100                PUSH 0xb1daf8
004943bd  e9ad000000                JMP 0x0049446f
004943c2  85c9                      TEST ECX,ECX
004943c4  744b                      JZ 0x00494411
004943c6  83791410                  CMP dword ptr [ECX + 0x14],0x10
004943ca  8bc1                      MOV EAX,ECX
004943cc  7202                      JC 0x004943d0
004943ce  8b01                      MOV EAX,dword ptr [ECX]
004943d0  b908dbb100                MOV ECX,0xb1db08
004943d5  8a10                      MOV DL,byte ptr [EAX]
004943d7  3a11                      CMP DL,byte ptr [ECX]
004943d9  751a                      JNZ 0x004943f5
004943db  84d2                      TEST DL,DL
004943dd  7412                      JZ 0x004943f1
004943df  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004943e2  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004943e5  750e                      JNZ 0x004943f5
004943e7  83c002                    ADD EAX,0x2
004943ea  83c102                    ADD ECX,0x2
004943ed  84d2                      TEST DL,DL
004943ef  75e4                      JNZ 0x004943d5
004943f1  33c0                      XOR EAX,EAX
004943f3  eb05                      JMP 0x004943fa
004943f5  1bc0                      SBB EAX,EAX
004943f7  83c801                    OR EAX,0x1
004943fa  85c0                      TEST EAX,EAX
004943fc  7513                      JNZ 0x00494411
004943fe  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
00494401  80783400                  CMP byte ptr [EAX + 0x34],0x0
00494405  0f847e000000              JZ 0x00494489
0049440b  807e4400                  CMP byte ptr [ESI + 0x44],0x0
0049440f  7578                      JNZ 0x00494489
00494411  6a01                      PUSH 0x1
00494413  6808dbb100                PUSH 0xb1db08
00494418  eb55                      JMP 0x0049446f
0049441a  85c9                      TEST ECX,ECX
0049441c  744a                      JZ 0x00494468
0049441e  83791410                  CMP dword ptr [ECX + 0x14],0x10
00494422  8bc1                      MOV EAX,ECX
00494424  7202                      JC 0x00494428
00494426  8b01                      MOV EAX,dword ptr [ECX]
00494428  b9dcdab100                MOV ECX,0xb1dadc
0049442d  0f1f00                    NOP dword ptr [EAX]
00494430  8a10                      MOV DL,byte ptr [EAX]
00494432  3a11                      CMP DL,byte ptr [ECX]
00494434  751a                      JNZ 0x00494450
00494436  84d2                      TEST DL,DL
00494438  7412                      JZ 0x0049444c
0049443a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049443d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00494440  750e                      JNZ 0x00494450
00494442  83c002                    ADD EAX,0x2
00494445  83c102                    ADD ECX,0x2
00494448  84d2                      TEST DL,DL
0049444a  75e4                      JNZ 0x00494430
0049444c  33c0                      XOR EAX,EAX
0049444e  eb05                      JMP 0x00494455
00494450  1bc0                      SBB EAX,EAX
00494452  83c801                    OR EAX,0x1
00494455  85c0                      TEST EAX,EAX
00494457  750f                      JNZ 0x00494468
00494459  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
0049445c  80783400                  CMP byte ptr [EAX + 0x34],0x0
00494460  7427                      JZ 0x00494489
00494462  807e4400                  CMP byte ptr [ESI + 0x44],0x0
00494466  7521                      JNZ 0x00494489
00494468  6a01                      PUSH 0x1
0049446a  68dcdab100                PUSH 0xb1dadc
0049446f  8bce                      MOV ECX,ESI
00494471  e85a61f7ff                CALL 0x0040a5d0
00494476  84c0                      TEST AL,AL
00494478  740f                      JZ 0x00494489
0049447a  8d4e30                    LEA ECX,[ESI + 0x30]
0049447d  e82e5df7ff                CALL 0x0040a1b0
00494482  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00494486  8d7748                    LEA ESI,[EDI + 0x48]
00494489  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00494490  0f8f44010000              JG 0x004945da
00494496  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0049449c  25000a0001                AND EAX,0x1000a00
004944a1  83c800                    OR EAX,0x0
004944a4  0f8530010000              JNZ 0x004945da
004944aa  837f3001                  CMP dword ptr [EDI + 0x30],0x1
004944ae  0f8426010000              JZ 0x004945da
004944b4  e8a7aa2500                CALL 0x006eef60
004944b9  33d2                      XOR EDX,EDX
004944bb  b914000000                MOV ECX,0x14
004944c0  f7f1                      DIV ECX
004944c2  83c228                    ADD EDX,0x28
004944c5  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004944cb  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004944d3  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
004944db  0f28c1                    MOVAPS XMM0,XMM1
004944de  f30f59c1                  MULSS XMM0,XMM1
004944e2  f30f118d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM1
004944ea  0f28ca                    MOVAPS XMM1,XMM2
004944ed  f30f59ca                  MULSS XMM1,XMM2
004944f1  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
004944f9  f30f58c1                  ADDSS XMM0,XMM1
004944fd  e84e15faff                CALL 0x00435a50
00494502  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00494509  7634                      JBE 0x0049453f
0049450b  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00494513  f30f5ec8                  DIVSS XMM1,XMM0
00494517  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
0049451f  f30f59c1                  MULSS XMM0,XMM1
00494523  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0049452b  f30f108528ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff28]
00494533  f30f59c1                  MULSS XMM0,XMM1
00494537  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
0049453f  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00494545  e8e6a9faff                CALL 0x0043ef30
0049454a  f30f108d30ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff30]
00494552  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00494558  f30f109528ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff28]
00494560  8d973c030000              LEA EDX,[EDI + 0x33c]
00494566  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
0049456e  8bcf                      MOV ECX,EDI
00494570  50                        PUSH EAX
00494571  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
00494579  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
0049457f  6a00                      PUSH 0x0
00494581  50                        PUSH EAX
00494582  52                        PUSH EDX
00494583  c7854cffffff9a99993e      MOV dword ptr [EBP + 0xffffff4c],0x3e99999a
0049458d  c78548ffffff0000a0c0      MOV dword ptr [EBP + 0xffffff48],0xc0a00000
00494597  c7459801000000            MOV dword ptr [EBP + -0x68],0x1
0049459e  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
004945a5  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
004945ad  f30f1195f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM2
004945b5  e8266d2300                CALL 0x006cb2e0
004945ba  51                        PUSH ECX
004945bb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004945c2  6a00                      PUSH 0x0
004945c4  6a02                      PUSH 0x2
004945c6  51                        PUSH ECX
004945c7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004945ce  8bcf                      MOV ECX,EDI
004945d0  68b2000000                PUSH 0xb2
004945d5  e8c6252400                CALL 0x006d6ba0
004945da  83bd38ffffff00            CMP dword ptr [EBP + 0xffffff38],0x0
004945e1  0f8562070000              JNZ 0x00494d49
004945e7  8b4e34                    MOV ECX,dword ptr [ESI + 0x34]
004945ea  85c9                      TEST ECX,ECX
004945ec  7452                      JZ 0x00494640
004945ee  83791410                  CMP dword ptr [ECX + 0x14],0x10
004945f2  8bc1                      MOV EAX,ECX
004945f4  7202                      JC 0x004945f8
004945f6  8b01                      MOV EAX,dword ptr [ECX]
004945f8  b9b8dab100                MOV ECX,0xb1dab8
004945fd  0f1f00                    NOP dword ptr [EAX]
00494600  8a10                      MOV DL,byte ptr [EAX]
00494602  3a11                      CMP DL,byte ptr [ECX]
00494604  751a                      JNZ 0x00494620
00494606  84d2                      TEST DL,DL
00494608  7412                      JZ 0x0049461c
0049460a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049460d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00494610  750e                      JNZ 0x00494620
00494612  83c002                    ADD EAX,0x2
00494615  83c102                    ADD ECX,0x2
00494618  84d2                      TEST DL,DL
0049461a  75e4                      JNZ 0x00494600
0049461c  33c0                      XOR EAX,EAX
0049461e  eb05                      JMP 0x00494625
00494620  1bc0                      SBB EAX,EAX
00494622  83c801                    OR EAX,0x1
00494625  85c0                      TEST EAX,EAX
00494627  7517                      JNZ 0x00494640
00494629  8b4634                    MOV EAX,dword ptr [ESI + 0x34]
0049462c  80783400                  CMP byte ptr [EAX + 0x34],0x0
00494630  0f8413070000              JZ 0x00494d49
00494636  807e4400                  CMP byte ptr [ESI + 0x44],0x0
0049463a  0f8509070000              JNZ 0x00494d49
00494640  6a01                      PUSH 0x1
00494642  68b8dab100                PUSH 0xb1dab8
00494647  8bce                      MOV ECX,ESI
00494649  e8825ff7ff                CALL 0x0040a5d0
0049464e  84c0                      TEST AL,AL
00494650  0f84f3060000              JZ 0x00494d49
00494656  8d4e30                    LEA ECX,[ESI + 0x30]
00494659  e8525bf7ff                CALL 0x0040a1b0
0049465e  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00494662  e9e2060000                JMP 0x00494d49
00494667  83f808                    CMP EAX,0x8
0049466a  0f8536040000              JNZ 0x00494aa6
00494670  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00494674  0f8493010000              JZ 0x0049480d
0049467a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00494681  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00494684  0f84b9000000              JZ 0x00494743
0049468a  83781410                  CMP dword ptr [EAX + 0x14],0x10
0049468e  7202                      JC 0x00494692
00494690  8b00                      MOV EAX,dword ptr [EAX]
00494692  b9ecdab100                MOV ECX,0xb1daec
00494697  8a10                      MOV DL,byte ptr [EAX]
00494699  3a11                      CMP DL,byte ptr [ECX]
0049469b  751a                      JNZ 0x004946b7
0049469d  84d2                      TEST DL,DL
0049469f  7412                      JZ 0x004946b3
004946a1  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004946a4  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004946a7  750e                      JNZ 0x004946b7
004946a9  83c002                    ADD EAX,0x2
004946ac  83c102                    ADD ECX,0x2
004946af  84d2                      TEST DL,DL
004946b1  75e4                      JNZ 0x00494697
004946b3  33c0                      XOR EAX,EAX
004946b5  eb05                      JMP 0x004946bc
004946b7  1bc0                      SBB EAX,EAX
004946b9  83c801                    OR EAX,0x1
004946bc  85c0                      TEST EAX,EAX
004946be  0f840c020000              JZ 0x004948d0
004946c4  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004946c7  83781410                  CMP dword ptr [EAX + 0x14],0x10
004946cb  7202                      JC 0x004946cf
004946cd  8b00                      MOV EAX,dword ptr [EAX]
004946cf  b928dbb100                MOV ECX,0xb1db28
004946d4  8a10                      MOV DL,byte ptr [EAX]
004946d6  3a11                      CMP DL,byte ptr [ECX]
004946d8  751a                      JNZ 0x004946f4
004946da  84d2                      TEST DL,DL
004946dc  7412                      JZ 0x004946f0
004946de  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004946e1  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004946e4  750e                      JNZ 0x004946f4
004946e6  83c002                    ADD EAX,0x2
004946e9  83c102                    ADD ECX,0x2
004946ec  84d2                      TEST DL,DL
004946ee  75e4                      JNZ 0x004946d4
004946f0  33c0                      XOR EAX,EAX
004946f2  eb05                      JMP 0x004946f9
004946f4  1bc0                      SBB EAX,EAX
004946f6  83c801                    OR EAX,0x1
004946f9  85c0                      TEST EAX,EAX
004946fb  0f84cf010000              JZ 0x004948d0
00494701  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00494704  83781410                  CMP dword ptr [EAX + 0x14],0x10
00494708  7202                      JC 0x0049470c
0049470a  8b00                      MOV EAX,dword ptr [EAX]
0049470c  b934dbb100                MOV ECX,0xb1db34
00494711  8a10                      MOV DL,byte ptr [EAX]
00494713  3a11                      CMP DL,byte ptr [ECX]
00494715  751a                      JNZ 0x00494731
00494717  84d2                      TEST DL,DL
00494719  7412                      JZ 0x0049472d
0049471b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049471e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00494721  750e                      JNZ 0x00494731
00494723  83c002                    ADD EAX,0x2
00494726  83c102                    ADD ECX,0x2
00494729  84d2                      TEST DL,DL
0049472b  75e4                      JNZ 0x00494711
0049472d  33c0                      XOR EAX,EAX
0049472f  eb05                      JMP 0x00494736
00494731  1bc0                      SBB EAX,EAX
00494733  83c801                    OR EAX,0x1
00494736  85c0                      TEST EAX,EAX
00494738  0f857f000000              JNZ 0x004947bd
0049473e  e98d010000                JMP 0x004948d0
00494743  83781410                  CMP dword ptr [EAX + 0x14],0x10
00494747  7202                      JC 0x0049474b
00494749  8b00                      MOV EAX,dword ptr [EAX]
0049474b  b9ecdab100                MOV ECX,0xb1daec
00494750  8a10                      MOV DL,byte ptr [EAX]
00494752  3a11                      CMP DL,byte ptr [ECX]
00494754  751a                      JNZ 0x00494770
00494756  84d2                      TEST DL,DL
00494758  7412                      JZ 0x0049476c
0049475a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049475d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00494760  750e                      JNZ 0x00494770
00494762  83c002                    ADD EAX,0x2
00494765  83c102                    ADD ECX,0x2
00494768  84d2                      TEST DL,DL
0049476a  75e4                      JNZ 0x00494750
0049476c  33c0                      XOR EAX,EAX
0049476e  eb05                      JMP 0x00494775
00494770  1bc0                      SBB EAX,EAX
00494772  83c801                    OR EAX,0x1
00494775  85c0                      TEST EAX,EAX
00494777  0f8453010000              JZ 0x004948d0
0049477d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00494780  83781410                  CMP dword ptr [EAX + 0x14],0x10
00494784  7202                      JC 0x00494788
00494786  8b00                      MOV EAX,dword ptr [EAX]
00494788  b928dbb100                MOV ECX,0xb1db28
0049478d  0f1f00                    NOP dword ptr [EAX]
00494790  8a10                      MOV DL,byte ptr [EAX]
00494792  3a11                      CMP DL,byte ptr [ECX]
00494794  751a                      JNZ 0x004947b0
00494796  84d2                      TEST DL,DL
00494798  7412                      JZ 0x004947ac
0049479a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049479d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004947a0  750e                      JNZ 0x004947b0
004947a2  83c002                    ADD EAX,0x2
004947a5  83c102                    ADD ECX,0x2
004947a8  84d2                      TEST DL,DL
004947aa  75e4                      JNZ 0x00494790
004947ac  33c0                      XOR EAX,EAX
004947ae  eb05                      JMP 0x004947b5
004947b0  1bc0                      SBB EAX,EAX
004947b2  83c801                    OR EAX,0x1
004947b5  85c0                      TEST EAX,EAX
004947b7  0f8413010000              JZ 0x004948d0
004947bd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004947c1  744a                      JZ 0x0049480d
004947c3  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004947ca  7541                      JNZ 0x0049480d
004947cc  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004947cf  83781410                  CMP dword ptr [EAX + 0x14],0x10
004947d3  7202                      JC 0x004947d7
004947d5  8b00                      MOV EAX,dword ptr [EAX]
004947d7  b934dbb100                MOV ECX,0xb1db34
004947dc  0f1f4000                  NOP dword ptr [EAX]
004947e0  8a10                      MOV DL,byte ptr [EAX]
004947e2  3a11                      CMP DL,byte ptr [ECX]
004947e4  751a                      JNZ 0x00494800
004947e6  84d2                      TEST DL,DL
004947e8  7412                      JZ 0x004947fc
004947ea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004947ed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004947f0  750e                      JNZ 0x00494800
004947f2  83c002                    ADD EAX,0x2
004947f5  83c102                    ADD ECX,0x2
004947f8  84d2                      TEST DL,DL
004947fa  75e4                      JNZ 0x004947e0
004947fc  33c0                      XOR EAX,EAX
004947fe  eb05                      JMP 0x00494805
00494800  1bc0                      SBB EAX,EAX
00494802  83c801                    OR EAX,0x1
00494805  85c0                      TEST EAX,EAX
00494807  0f84c3000000              JZ 0x004948d0
0049480d  e84ea72500                CALL 0x006eef60
00494812  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
0049481a  33d2                      XOR EDX,EDX
0049481c  f30f1015fca6ba00          MOVSS XMM2,dword ptr [0x00baa6fc]
00494824  0f28c1                    MOVAPS XMM0,XMM1
00494827  f30f58c1                  ADDSS XMM0,XMM1
0049482b  f30f109f80030000          MOVSS XMM3,dword ptr [EDI + 0x380]
00494833  b903000000                MOV ECX,0x3
00494838  f7f1                      DIV ECX
0049483a  f30f5ec2                  DIVSS XMM0,XMM2
0049483e  0f2fd8                    COMISS XMM3,XMM0
00494841  7601                      JBE 0x00494844
00494843  4a                        DEC EDX
00494844  f30f5eca                  DIVSS XMM1,XMM2
00494848  0f2fcb                    COMISS XMM1,XMM3
0049484b  7601                      JBE 0x0049484e
0049484d  42                        INC EDX
0049484e  42                        INC EDX
0049484f  83fa04                    CMP EDX,0x4
00494852  0f8778000000              JA 0x004948d0
00494858  ff2495ec554900            JMP dword ptr [EDX*0x4 + 0x4955ec]
0049485f  6a00                      PUSH 0x0
00494861  68ecdab100                PUSH 0xb1daec
00494866  8d4f48                    LEA ECX,[EDI + 0x48]
00494869  e8125bf7ff                CALL 0x0040a380
0049486e  51                        PUSH ECX
0049486f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00494876  6a00                      PUSH 0x0
00494878  6a02                      PUSH 0x2
0049487a  6888010000                PUSH 0x188
0049487f  eb42                      JMP 0x004948c3
00494881  6a00                      PUSH 0x0
00494883  6828dbb100                PUSH 0xb1db28
00494888  8d4f48                    LEA ECX,[EDI + 0x48]
0049488b  e8f05af7ff                CALL 0x0040a380
00494890  51                        PUSH ECX
00494891  c704240000803f            MOV dword ptr [ESP],0x3f800000
00494898  6a00                      PUSH 0x0
0049489a  6a02                      PUSH 0x2
0049489c  688b010000                PUSH 0x18b
004948a1  eb20                      JMP 0x004948c3
004948a3  6a00                      PUSH 0x0
004948a5  6834dbb100                PUSH 0xb1db34
004948aa  8d4f48                    LEA ECX,[EDI + 0x48]
004948ad  e8ce5af7ff                CALL 0x0040a380
004948b2  51                        PUSH ECX
004948b3  c704240000803f            MOV dword ptr [ESP],0x3f800000
004948ba  6a00                      PUSH 0x0
004948bc  6a02                      PUSH 0x2
004948be  6889010000                PUSH 0x189
004948c3  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004948cb  e810204c00                CALL 0x009568e0
004948d0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004948d4  8a8748010000              MOV AL,byte ptr [EDI + 0x148]
004948da  88853fffffff              MOV byte ptr [EBP + 0xffffff3f],AL
004948e0  0f84b1010000              JZ 0x00494a97
004948e6  68dcd2b100                PUSH 0xb1d2dc
004948eb  8d4f78                    LEA ECX,[EDI + 0x78]
004948ee  e8dd64f7ff                CALL 0x0040add0
004948f3  84c0                      TEST AL,AL
004948f5  0f8489010000              JZ 0x00494a84
004948fb  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00494901  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
00494907  c78538ffffffb2000000      MOV dword ptr [EBP + 0xffffff38],0xb2
00494911  e86a1e4c00                CALL 0x00956780
00494916  83ec08                    SUB ESP,0x8
00494919  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0049491f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00494927  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049492e  6a00                      PUSH 0x0
00494930  6a02                      PUSH 0x2
00494932  51                        PUSH ECX
00494933  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049493a  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
00494940  e8eb924900                CALL 0x0092dc30
00494945  f30f108d04ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff04]
0049494d  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00494955  f30f109500ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff00]
0049495d  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
00494965  0f28c1                    MOVAPS XMM0,XMM1
00494968  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
00494970  f30f59c1                  MULSS XMM0,XMM1
00494974  0f28ca                    MOVAPS XMM1,XMM2
00494977  f30f119500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM2
0049497f  f30f59ca                  MULSS XMM1,XMM2
00494983  f30f58c1                  ADDSS XMM0,XMM1
00494987  e8c410faff                CALL 0x00435a50
0049498c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00494993  7633                      JBE 0x004949c8
00494995  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0049499d  f30f5ec8                  DIVSS XMM1,XMM0
004949a1  0f28c1                    MOVAPS XMM0,XMM1
004949a4  f30f598504ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff04]
004949ac  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004949b4  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004949bc  f30f59c1                  MULSS XMM0,XMM1
004949c0  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004949c8  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
004949ce  e85da5faff                CALL 0x0043ef30
004949d3  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
004949da  f30f108d04ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff04]
004949e2  f30f109500ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff00]
004949ea  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
004949f2  c7459801000000            MOV dword ptr [EBP + -0x68],0x1
004949f9  f30f5915b8a7ba00          MULSS XMM2,dword ptr [0x00baa7b8]
00494a01  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
00494a08  c7855cffffff0000803f      MOV dword ptr [EBP + 0xffffff5c],0x3f800000
00494a12  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
00494a1a  f30f1195f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM2
00494a22  740a                      JZ 0x00494a2e
00494a24  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00494a2c  eb08                      JMP 0x00494a36
00494a2e  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00494a36  f30f590d5ca8ba00          MULSS XMM1,dword ptr [0x00baa85c]
00494a3e  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00494a44  8bcf                      MOV ECX,EDI
00494a46  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00494a4e  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00494a56  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
00494a5e  50                        PUSH EAX
00494a5f  6a00                      PUSH 0x0
00494a61  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
00494a67  50                        PUSH EAX
00494a68  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
00494a6e  f30f118dccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM1
00494a76  50                        PUSH EAX
00494a77  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
00494a7f  e85c682300                CALL 0x006cb2e0
00494a84  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00494a88  740d                      JZ 0x00494a97
00494a8a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00494a91  0f859a020000              JNZ 0x00494d31
00494a97  c787a00b00005a000000      MOV dword ptr [EDI + 0xba0],0x5a
00494aa1  e981020000                JMP 0x00494d27
00494aa6  83f80e                    CMP EAX,0xe
00494aa9  0f859a020000              JNZ 0x00494d49
00494aaf  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00494ab2  85f6                      TEST ESI,ESI
00494ab4  744a                      JZ 0x00494b00
00494ab6  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00494aba  8bc6                      MOV EAX,ESI
00494abc  7202                      JC 0x00494ac0
00494abe  8b06                      MOV EAX,dword ptr [ESI]
00494ac0  b918dbb100                MOV ECX,0xb1db18
00494ac5  8a10                      MOV DL,byte ptr [EAX]
00494ac7  3a11                      CMP DL,byte ptr [ECX]
00494ac9  751a                      JNZ 0x00494ae5
00494acb  84d2                      TEST DL,DL
00494acd  7412                      JZ 0x00494ae1
00494acf  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00494ad2  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00494ad5  750e                      JNZ 0x00494ae5
00494ad7  83c002                    ADD EAX,0x2
00494ada  83c102                    ADD ECX,0x2
00494add  84d2                      TEST DL,DL
00494adf  75e4                      JNZ 0x00494ac5
00494ae1  33c0                      XOR EAX,EAX
00494ae3  eb05                      JMP 0x00494aea
00494ae5  1bc0                      SBB EAX,EAX
00494ae7  83c801                    OR EAX,0x1
00494aea  85c0                      TEST EAX,EAX
00494aec  7512                      JNZ 0x00494b00
00494aee  384634                    CMP byte ptr [ESI + 0x34],AL
00494af1  742e                      JZ 0x00494b21
00494af3  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00494af9  8d7748                    LEA ESI,[EDI + 0x48]
00494afc  7523                      JNZ 0x00494b21
00494afe  eb03                      JMP 0x00494b03
00494b00  8d7748                    LEA ESI,[EDI + 0x48]
00494b03  6a01                      PUSH 0x1
00494b05  6818dbb100                PUSH 0xb1db18
00494b0a  8bce                      MOV ECX,ESI
00494b0c  e8bf5af7ff                CALL 0x0040a5d0
00494b11  84c0                      TEST AL,AL
00494b13  740c                      JZ 0x00494b21
00494b15  8d4e30                    LEA ECX,[ESI + 0x30]
00494b18  e89356f7ff                CALL 0x0040a1b0
00494b1d  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00494b21  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00494b25  0f84f2010000              JZ 0x00494d1d
00494b2b  6820dbb100                PUSH 0xb1db20
00494b30  8d4f78                    LEA ECX,[EDI + 0x78]
00494b33  e89862f7ff                CALL 0x0040add0
00494b38  84c0                      TEST AL,AL
00494b3a  0f84ce010000              JZ 0x00494d0e
00494b40  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00494b46  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
00494b4c  c78538ffffff09010000      MOV dword ptr [EBP + 0xffffff38],0x109
00494b56  e8251c4c00                CALL 0x00956780
00494b5b  83ec08                    SUB ESP,0x8
00494b5e  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00494b64  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00494b6c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00494b73  6a00                      PUSH 0x0
00494b75  6a02                      PUSH 0x2
00494b77  51                        PUSH ECX
00494b78  c704240000803f            MOV dword ptr [ESP],0x3f800000
00494b7f  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
00494b85  e8a6904900                CALL 0x0092dc30
00494b8a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00494b90  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
00494b96  c78538ffffff89010000      MOV dword ptr [EBP + 0xffffff38],0x189
00494ba0  e8db1b4c00                CALL 0x00956780
00494ba5  83ec08                    SUB ESP,0x8
00494ba8  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00494bae  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00494bb6  c704240000803f            MOV dword ptr [ESP],0x3f800000
00494bbd  6a00                      PUSH 0x0
00494bbf  6a02                      PUSH 0x2
00494bc1  51                        PUSH ECX
00494bc2  c704240000803f            MOV dword ptr [ESP],0x3f800000
00494bc9  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
00494bcf  e85c904900                CALL 0x0092dc30
00494bd4  83bdfcfeffff02            CMP dword ptr [EBP + 0xfffffefc],0x2
00494bdb  755d                      JNZ 0x00494c3a
00494bdd  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00494be3  e848a3faff                CALL 0x0043ef30
00494be8  51                        PUSH ECX
00494be9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00494bef  8d973c030000              LEA EDX,[EDI + 0x33c]
00494bf5  c704247f96184b            MOV dword ptr [ESP],0x4b18967f
00494bfc  8bf0                      MOV ESI,EAX
00494bfe  52                        PUSH EDX
00494bff  e84cec2600                CALL 0x00703850
00494c04  56                        PUSH ESI
00494c05  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00494c0b  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
00494c11  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
00494c17  51                        PUSH ECX
00494c18  c7042400002041            MOV dword ptr [ESP],0x41200000
00494c1f  50                        PUSH EAX
00494c20  898df4feffff              MOV dword ptr [EBP + 0xfffffef4],ECX
00494c26  8bcf                      MOV ECX,EDI
00494c28  6a03                      PUSH 0x3
00494c2a  8995f8feffff              MOV dword ptr [EBP + 0xfffffef8],EDX
00494c30  e89b812300                CALL 0x006ccdd0
00494c35  e9b4000000                JMP 0x00494cee
00494c3a  83bdc8feffff00            CMP dword ptr [EBP + 0xfffffec8],0x0
00494c41  0f86a7000000              JBE 0x00494cee
00494c47  33ff                      XOR EDI,EDI
00494c49  0f1f8000000000            NOP dword ptr [EAX]
00494c50  8b85c0feffff              MOV EAX,dword ptr [EBP + 0xfffffec0]
00494c56  8b34b8                    MOV ESI,dword ptr [EAX + EDI*0x4]
00494c59  8b850cffffff              MOV EAX,dword ptr [EBP + 0xffffff0c]
00494c5f  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
00494c67  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
00494c6f  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
00494c74  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
00494c78  f30f59c0                  MULSS XMM0,XMM0
00494c7c  f30f59c9                  MULSS XMM1,XMM1
00494c80  f30f58c1                  ADDSS XMM0,XMM1
00494c84  e8c70dfaff                CALL 0x00435a50
00494c89  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
00494c91  0f2fc8                    COMISS XMM1,XMM0
00494c94  7645                      JBE 0x00494cdb
00494c96  83be640b000010            CMP dword ptr [ESI + 0xb64],0x10
00494c9d  750c                      JNZ 0x00494cab
00494c9f  c786640b000002000000      MOV dword ptr [ESI + 0xb64],0x2
00494ca9  eb30                      JMP 0x00494cdb
00494cab  f30f108e84030000          MOVSS XMM1,dword ptr [ESI + 0x384]
00494cb3  0f28c1                    MOVAPS XMM0,XMM1
00494cb6  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
00494cbe  f30f588680030000          ADDSS XMM0,dword ptr [ESI + 0x380]
00494cc6  0f2fc1                    COMISS XMM0,XMM1
00494cc9  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
00494cd1  7608                      JBE 0x00494cdb
00494cd3  f30f118e80030000          MOVSS dword ptr [ESI + 0x380],XMM1
00494cdb  47                        INC EDI
00494cdc  3bbdc8feffff              CMP EDI,dword ptr [EBP + 0xfffffec8]
00494ce2  0f8268ffffff              JC 0x00494c50
00494ce8  8bbd24ffffff              MOV EDI,dword ptr [EBP + 0xffffff24]
00494cee  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
00494cf6  f30f5905d0a0ba00          MULSS XMM0,dword ptr [0x00baa0d0]
00494cfe  f30f588780030000          ADDSS XMM0,dword ptr [EDI + 0x380]
00494d06  f30f118780030000          MOVSS dword ptr [EDI + 0x380],XMM0
00494d0e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00494d12  7409                      JZ 0x00494d1d
00494d14  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00494d1b  7514                      JNZ 0x00494d31
00494d1d  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00494d27  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00494d31  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00494d39  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00494d41  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00494d49  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00494d50  0f84d9000000              JZ 0x00494e2f
00494d56  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00494d5c  2500000020                AND EAX,0x20000000
00494d61  83c800                    OR EAX,0x0
00494d64  0f85c5000000              JNZ 0x00494e2f
00494d6a  a17816c700                MOV EAX,[0x00c71678]
00494d6f  6a00                      PUSH 0x0
00494d71  6a00                      PUSH 0x0
00494d73  6aff                      PUSH -0x1
00494d75  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00494d7b  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
00494d81  6a01                      PUSH 0x1
00494d83  68f6000000                PUSH 0xf6
00494d88  81c118120000              ADD ECX,0x1218
00494d8e  50                        PUSH EAX
00494d8f  e8cc61f8ff                CALL 0x0041af60
00494d94  33c0                      XOR EAX,EAX
00494d96  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
00494d9a  898538ffffff              MOV dword ptr [EBP + 0xffffff38],EAX
00494da0  3985f8feffff              CMP dword ptr [EBP + 0xfffffef8],EAX
00494da6  7666                      JBE 0x00494e0e
00494da8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00494db0  8b8df0feffff              MOV ECX,dword ptr [EBP + 0xfffffef0]
00494db6  8b0c81                    MOV ECX,dword ptr [ECX + EAX*0x4]
00494db9  898d24ffffff              MOV dword ptr [EBP + 0xffffff24],ECX
00494dbf  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
00494dc5  2500000020                AND EAX,0x20000000
00494dca  83c800                    OR EAX,0x0
00494dcd  7404                      JZ 0x00494dd3
00494dcf  b001                      MOV AL,0x1
00494dd1  eb02                      JMP 0x00494dd5
00494dd3  32c0                      XOR AL,AL
00494dd5  84c0                      TEST AL,AL
00494dd7  7520                      JNZ 0x00494df9
00494dd9  8b01                      MOV EAX,dword ptr [ECX]
00494ddb  8d8d94feffff              LEA ECX,[EBP + 0xfffffe94]
00494de1  57                        PUSH EDI
00494de2  8b7024                    MOV ESI,dword ptr [EAX + 0x24]
00494de5  e826c5f9ff                CALL 0x00431310
00494dea  8b8d24ffffff              MOV ECX,dword ptr [EBP + 0xffffff24]
00494df0  8d8594feffff              LEA EAX,[EBP + 0xfffffe94]
00494df6  50                        PUSH EAX
00494df7  ffd6                      CALL ESI
00494df9  8b8538ffffff              MOV EAX,dword ptr [EBP + 0xffffff38]
00494dff  40                        INC EAX
00494e00  898538ffffff              MOV dword ptr [EBP + 0xffffff38],EAX
00494e06  3b85f8feffff              CMP EAX,dword ptr [EBP + 0xfffffef8]
00494e0c  72a2                      JC 0x00494db0
00494e0e  80bdecfeffff00            CMP byte ptr [EBP + 0xfffffeec],0x0
00494e15  7518                      JNZ 0x00494e2f
00494e17  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
00494e1b  b101                      MOV CL,0x1
00494e1d  8b95f0feffff              MOV EDX,dword ptr [EBP + 0xfffffef0]
00494e23  6a00                      PUSH 0x0
00494e25  6a00                      PUSH 0x0
00494e27  e884fa5c00                CALL 0x00a648b0
00494e2c  83c408                    ADD ESP,0x8
00494e2f  80bd80feffff00            CMP byte ptr [EBP + 0xfffffe80],0x0
00494e36  7518                      JNZ 0x00494e50
00494e38  c645fc05                  MOV byte ptr [EBP + -0x4],0x5
00494e3c  b101                      MOV CL,0x1
00494e3e  8b9584feffff              MOV EDX,dword ptr [EBP + 0xfffffe84]
00494e44  6a00                      PUSH 0x0
00494e46  6a00                      PUSH 0x0
00494e48  e863fa5c00                CALL 0x00a648b0
00494e4d  83c408                    ADD ESP,0x8
00494e50  80bd70feffff00            CMP byte ptr [EBP + 0xfffffe70],0x0
00494e57  7518                      JNZ 0x00494e71
00494e59  c645fc06                  MOV byte ptr [EBP + -0x4],0x6
00494e5d  b101                      MOV CL,0x1
00494e5f  8b9574feffff              MOV EDX,dword ptr [EBP + 0xfffffe74]
00494e65  6a00                      PUSH 0x0
00494e67  6a00                      PUSH 0x0
00494e69  e842fa5c00                CALL 0x00a648b0
00494e6e  83c408                    ADD ESP,0x8
00494e71  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00494e78  80bdbcfeffff00            CMP byte ptr [EBP + 0xfffffebc],0x0
00494e7f  0f8546070000              JNZ 0x004955cb
00494e85  c745fc07000000            MOV dword ptr [EBP + -0x4],0x7
00494e8c  b101                      MOV CL,0x1
00494e8e  8b95c0feffff              MOV EDX,dword ptr [EBP + 0xfffffec0]
00494e94  6a00                      PUSH 0x0
00494e96  6a00                      PUSH 0x0
00494e98  e813fa5c00                CALL 0x00a648b0
00494e9d  83c408                    ADD ESP,0x8
00494ea0  e926070000                JMP 0x004955cb
00494ea5  83f801                    CMP EAX,0x1
00494ea8  0f851d070000              JNZ 0x004955cb
00494eae  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00494eb4  85c0                      TEST EAX,EAX
00494eb6  0f859c000000              JNZ 0x00494f58
00494ebc  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00494ec6  898710040000              MOV dword ptr [EDI + 0x410],EAX
00494ecc  e88fa02500                CALL 0x006eef60
00494ed1  b93c000000                MOV ECX,0x3c
00494ed6  660f6ec0                  MOVD XMM0,EAX
00494eda  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00494ede  c1e81f                    SHR EAX,0x1f
00494ee1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00494eea  660f5ac0                  CVTPD2PS XMM0,XMM0
00494eee  f30f5905d8acba00          MULSS XMM0,dword ptr [0x00baacd8]
00494ef6  f30f590510a9ba00          MULSS XMM0,dword ptr [0x00baa910]
00494efe  f30f2cc0                  CVTTSS2SI EAX,XMM0
00494f02  2bc8                      SUB ECX,EAX
00494f04  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
00494f0a  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00494f10  e8bbdf1e00                CALL 0x00682ed0
00494f15  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00494f1c  8d8590feffff              LEA EAX,[EBP + 0xfffffe90]
00494f22  50                        PUSH EAX
00494f23  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00494f29  c785b0feffff3333b33e      MOV dword ptr [EBP + 0xfffffeb0],0x3eb33333
00494f33  0f118590feffff            MOVUPS xmmword ptr [EBP + 0xfffffe90],XMM0
00494f3a  c785b4feffffae47e13d      MOV dword ptr [EBP + 0xfffffeb4],0x3de147ae
00494f44  c785b8feffffec51b83e      MOV dword ptr [EBP + 0xfffffeb8],0x3eb851ec
00494f4e  e89d22f7ff                CALL 0x004071f0
00494f53  e973060000                JMP 0x004955cb
00494f58  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00494f5f  8bf0                      MOV ESI,EAX
00494f61  660f6e8fc00b0000          MOVD XMM1,dword ptr [EDI + 0xbc0]
00494f69  0f5bc9                    CVTDQ2PS XMM1,XMM1
00494f6c  0f28c1                    MOVAPS XMM0,XMM1
00494f6f  f30f5c058ca9ba00          SUBSS XMM0,dword ptr [0x00baa98c]
00494f77  f30f5c0d54a8ba00          SUBSS XMM1,dword ptr [0x00baa854]
00494f7f  f30f2cc8                  CVTTSS2SI ECX,XMM0
00494f83  f30f2cd1                  CVTTSS2SI EDX,XMM1
00494f87  898d24ffffff              MOV dword ptr [EBP + 0xffffff24],ECX
00494f8d  899530ffffff              MOV dword ptr [EBP + 0xffffff30],EDX
00494f93  0f84b9000000              JZ 0x00495052
00494f99  817f3499010000            CMP dword ptr [EDI + 0x34],0x199
00494fa0  0f84ac000000              JZ 0x00495052
00494fa6  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
00494fa9  b893244992                MOV EAX,0x92492493
00494fae  2b4f08                    SUB ECX,dword ptr [EDI + 0x8]
00494fb1  f7e9                      IMUL ECX
00494fb3  c78538ffffff00000000      MOV dword ptr [EBP + 0xffffff38],0x0
00494fbd  03d1                      ADD EDX,ECX
00494fbf  c1fa05                    SAR EDX,0x5
00494fc2  8bc2                      MOV EAX,EDX
00494fc4  c1e81f                    SHR EAX,0x1f
00494fc7  03c2                      ADD EAX,EDX
00494fc9  0f847d000000              JZ 0x0049504c
00494fcf  33c0                      XOR EAX,EAX
00494fd1  89851cffffff              MOV dword ptr [EBP + 0xffffff1c],EAX
00494fd7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00494fe0  8b5708                    MOV EDX,dword ptr [EDI + 0x8]
00494fe3  83c010                    ADD EAX,0x10
00494fe6  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00494fec  03c2                      ADD EAX,EDX
00494fee  6a1e                      PUSH 0x1e
00494ff0  50                        PUSH EAX
00494ff1  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
00494ff7  8b31                      MOV ESI,dword ptr [ECX]
00494ff9  ff74100c                  PUSH dword ptr [EAX + EDX*0x1 + 0xc]
00494ffd  f30f100410                MOVSS XMM0,dword ptr [EAX + EDX*0x1]
00495002  ff741008                  PUSH dword ptr [EAX + EDX*0x1 + 0x8]
00495006  51                        PUSH ECX
00495007  f30f110424                MOVSS dword ptr [ESP],XMM0
0049500c  ff5620                    CALL dword ptr [ESI + 0x20]
0049500f  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
00495012  b893244992                MOV EAX,0x92492493
00495017  2b4f08                    SUB ECX,dword ptr [EDI + 0x8]
0049501a  8bb538ffffff              MOV ESI,dword ptr [EBP + 0xffffff38]
00495020  83851cffffff38            ADD dword ptr [EBP + 0xffffff1c],0x38
00495027  46                        INC ESI
00495028  f7e9                      IMUL ECX
0049502a  89b538ffffff              MOV dword ptr [EBP + 0xffffff38],ESI
00495030  03d1                      ADD EDX,ECX
00495032  c1fa05                    SAR EDX,0x5
00495035  8bc2                      MOV EAX,EDX
00495037  c1e81f                    SHR EAX,0x1f
0049503a  03c2                      ADD EAX,EDX
0049503c  3bf0                      CMP ESI,EAX
0049503e  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
00495044  729a                      JC 0x00494fe0
00495046  8bb7640b0000              MOV ESI,dword ptr [EDI + 0xb64]
0049504c  8b9530ffffff              MOV EDX,dword ptr [EBP + 0xffffff30]
00495052  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00495058  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0049505e  41                        INC ECX
0049505f  2500010000                AND EAX,0x100
00495064  898f10040000              MOV dword ptr [EDI + 0x410],ECX
0049506a  83c800                    OR EAX,0x0
0049506d  7418                      JZ 0x00495087
0049506f  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00495079  33c9                      XOR ECX,ECX
0049507b  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00495085  eb09                      JMP 0x00495090
00495087  83fe04                    CMP ESI,0x4
0049508a  0f8588020000              JNZ 0x00495318
00495090  660f6e9524ffffff          MOVD XMM2,dword ptr [EBP + 0xffffff24]
00495098  660f6ec2                  MOVD XMM0,EDX
0049509c  0f5bd2                    CVTDQ2PS XMM2,XMM2
0049509f  0f5bc0                    CVTDQ2PS XMM0,XMM0
004950a2  660f6ec9                  MOVD XMM1,ECX
004950a6  0f2ed0                    UCOMISS XMM2,XMM0
004950a9  0f5bc9                    CVTDQ2PS XMM1,XMM1
004950ac  9f                        LAHF
004950ad  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
004950b5  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
004950bd  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
004950c5  f6c444                    TEST AH,0x44
004950c8  7a27                      JP 0x004950f1
004950ca  68d81bb800                PUSH 0xb81bd8
004950cf  6a10                      PUSH 0x10
004950d1  e8eac15700                CALL 0x00a112c0
004950d6  f30f108d0cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff0c]
004950de  83c408                    ADD ESP,0x8
004950e1  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
004950e9  f30f109538ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff38]
004950f1  f30f5cca                  SUBSS XMM1,XMM2
004950f5  f30f5cc2                  SUBSS XMM0,XMM2
004950f9  51                        PUSH ECX
004950fa  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
00495100  c7042400000000            MOV dword ptr [ESP],0x0
00495107  50                        PUSH EAX
00495108  8bcf                      MOV ECX,EDI
0049510a  f30f5ec8                  DIVSS XMM1,XMM0
0049510e  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00495116  f30f5f0de49fba00          MAXSS XMM1,dword ptr [0x00ba9fe4]
0049511e  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
00495126  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
0049512e  f30f5cc1                  SUBSS XMM0,XMM1
00495132  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0049513a  e8019b2200                CALL 0x006bec40
0049513f  8d8df4feffff              LEA ECX,[EBP + 0xfffffef4]
00495145  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00495149  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00495151  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
00495159  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0049515e  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
00495164  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0049516c  50                        PUSH EAX
0049516d  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
00495175  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0049517d  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00495185  e8a6ae5700                CALL 0x00a10030
0049518a  8bf0                      MOV ESI,EAX
0049518c  8d8f60030000              LEA ECX,[EDI + 0x360]
00495192  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
00495198  50                        PUSH EAX
00495199  e892ae5700                CALL 0x00a10030
0049519e  f30f10a538ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff38]
004951a6  f30f100d54a1ba00          MOVSS XMM1,dword ptr [0x00baa154]
004951ae  0f28d4                    MOVAPS XMM2,XMM4
004951b1  f30f5916                  MULSS XMM2,dword ptr [ESI]
004951b5  0f28c4                    MOVAPS XMM0,XMM4
004951b8  f30f5900                  MULSS XMM0,dword ptr [EAX]
004951bc  0f28dc                    MOVAPS XMM3,XMM4
004951bf  f30f595e04                MULSS XMM3,dword ptr [ESI + 0x4]
004951c4  f30f59d1                  MULSS XMM2,XMM1
004951c8  f30f59c1                  MULSS XMM0,XMM1
004951cc  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
004951d4  f30f59d9                  MULSS XMM3,XMM1
004951d8  f30f589d14ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff14]
004951e0  f30f58d0                  ADDSS XMM2,XMM0
004951e4  0f28c4                    MOVAPS XMM0,XMM4
004951e7  f30f594004                MULSS XMM0,dword ptr [EAX + 0x4]
004951ec  f30f59c1                  MULSS XMM0,XMM1
004951f0  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
004951f8  f30f58d8                  ADDSS XMM3,XMM0
004951fc  0f28c2                    MOVAPS XMM0,XMM2
004951ff  f30f59c2                  MULSS XMM0,XMM2
00495203  0f28cb                    MOVAPS XMM1,XMM3
00495206  f30f119de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM3
0049520e  f30f59cb                  MULSS XMM1,XMM3
00495212  f30f58c1                  ADDSS XMM0,XMM1
00495216  e83508faff                CALL 0x00435a50
0049521b  f30f1095e8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee8]
00495223  0f28c8                    MOVAPS XMM1,XMM0
00495226  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0049522d  761e                      JBE 0x0049524d
0049522f  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
00495237  f30f5ec1                  DIVSS XMM0,XMM1
0049523b  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
00495243  f30f59c8                  MULSS XMM1,XMM0
00495247  f30f59d0                  MULSS XMM2,XMM0
0049524b  eb08                      JMP 0x00495255
0049524d  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
00495255  f30f109f9c030000          MOVSS XMM3,dword ptr [EDI + 0x39c]
0049525d  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
00495265  f30f1025a4a3ba00          MOVSS XMM4,dword ptr [0x00baa3a4]
0049526d  0f2edd                    UCOMISS XMM3,XMM5
00495270  9f                        LAHF
00495271  f6c444                    TEST AH,0x44
00495274  7b13                      JNP 0x00495289
00495276  0f28c3                    MOVAPS XMM0,XMM3
00495279  f30f59dc                  MULSS XMM3,XMM4
0049527d  f30f58c4                  ADDSS XMM0,XMM4
00495281  f30f5cc3                  SUBSS XMM0,XMM3
00495285  f30f5ee0                  DIVSS XMM4,XMM0
00495289  f30f5c8f60030000          SUBSS XMM1,dword ptr [EDI + 0x360]
00495291  f30f5c9514ffffff          SUBSS XMM2,dword ptr [EBP + 0xffffff14]
00495299  0f28c5                    MOVAPS XMM0,XMM5
0049529c  8bcf                      MOV ECX,EDI
0049529e  f30f5cc4                  SUBSS XMM0,XMM4
004952a2  f30f59c8                  MULSS XMM1,XMM0
004952a6  f30f59d0                  MULSS XMM2,XMM0
004952aa  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
004952b2  f30f589514ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff14]
004952ba  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004952c2  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004952ca  e801762100                CALL 0x006ac8d0
004952cf  83f803                    CMP EAX,0x3
004952d2  771c                      JA 0x004952f0
004952d4  ff248500564900            JMP dword ptr [EAX*0x4 + 0x495600]
004952db  b854dbb100                MOV EAX,0xb1db54
004952e0  eb13                      JMP 0x004952f5
004952e2  b860dbb100                MOV EAX,0xb1db60
004952e7  eb0c                      JMP 0x004952f5
004952e9  b840dbb100                MOV EAX,0xb1db40
004952ee  eb05                      JMP 0x004952f5
004952f0  b848dbb100                MOV EAX,0xb1db48
004952f5  6a00                      PUSH 0x0
004952f7  50                        PUSH EAX
004952f8  8d4f48                    LEA ECX,[EDI + 0x48]
004952fb  e88050f7ff                CALL 0x0040a380
00495300  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00495306  3b8d30ffffff              CMP ECX,dword ptr [EBP + 0xffffff30]
0049530c  7e0a                      JLE 0x00495318
0049530e  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00495318  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
0049531f  7409                      JZ 0x0049532a
00495321  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00495328  7411                      JZ 0x0049533b
0049532a  3b8fc00b0000              CMP ECX,dword ptr [EDI + 0xbc0]
00495330  7f72                      JG 0x004953a4
00495332  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00495339  7569                      JNZ 0x004953a4
0049533b  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00495343  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0049534b  f30f59c0                  MULSS XMM0,XMM0
0049534f  f30f59c9                  MULSS XMM1,XMM1
00495353  f30f58c1                  ADDSS XMM0,XMM1
00495357  e8f406faff                CALL 0x00435a50
0049535c  0f57c9                    XORPS XMM1,XMM1
0049535f  f30f5cc1                  SUBSS XMM0,XMM1
00495363  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
0049536b  f30f5fc1                  MAXSS XMM0,XMM1
0049536f  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
00495377  f30f58c0                  ADDSS XMM0,XMM0
0049537b  f30f58c1                  ADDSS XMM0,XMM1
0049537f  f30f11874c010000          MOVSS dword ptr [EDI + 0x14c],XMM0
00495387  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049538f  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00495397  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049539f  e927020000                JMP 0x004955cb
004953a4  e8b79b2500                CALL 0x006eef60
004953a9  83bdfcfeffff02            CMP dword ptr [EBP + 0xfffffefc],0x2
004953b0  0f858e000000              JNZ 0x00495444
004953b6  83e001                    AND EAX,0x1
004953b9  83c001                    ADD EAX,0x1
004953bc  898538ffffff              MOV dword ptr [EBP + 0xffffff38],EAX
004953c2  0f84fc010000              JZ 0x004955c4
004953c8  8db73c030000              LEA ESI,[EDI + 0x33c]
004953ce  6690                      NOP
004953d0  e88b9b2500                CALL 0x006eef60
004953d5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004953db  50                        PUSH EAX
004953dc  6a00                      PUSH 0x0
004953de  57                        PUSH EDI
004953df  6840b6c700                PUSH 0xc7b640
004953e4  56                        PUSH ESI
004953e5  6a00                      PUSH 0x0
004953e7  6a55                      PUSH 0x55
004953e9  e83237f9ff                CALL 0x00428b20
004953ee  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
004953f4  898d0cffffff              MOV dword ptr [EBP + 0xffffff0c],ECX
004953fa  8db0bc030000              LEA ESI,[EAX + 0x3bc]
00495400  8b06                      MOV EAX,dword ptr [ESI]
00495402  85c0                      TEST EAX,EAX
00495404  741e                      JZ 0x00495424
00495406  8d8d24ffffff              LEA ECX,[EBP + 0xffffff24]
0049540c  89b524ffffff              MOV dword ptr [EBP + 0xffffff24],ESI
00495412  51                        PUSH ECX
00495413  8d88cc030000              LEA ECX,[EAX + 0x3cc]
00495419  e8f29d0300                CALL 0x004cf210
0049541e  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
00495424  890e                      MOV dword ptr [ESI],ECX
00495426  85c9                      TEST ECX,ECX
00495428  7406                      JZ 0x00495430
0049542a  56                        PUSH ESI
0049542b  e8c0880300                CALL 0x004cdcf0
00495430  83ad38ffffff01            SUB dword ptr [EBP + 0xffffff38],0x1
00495437  8db73c030000              LEA ESI,[EDI + 0x33c]
0049543d  7591                      JNZ 0x004953d0
0049543f  e980010000                JMP 0x004955c4
00495444  50                        PUSH EAX
00495445  6a00                      PUSH 0x0
00495447  57                        PUSH EDI
00495448  8d8760030000              LEA EAX,[EDI + 0x360]
0049544e  50                        PUSH EAX
0049544f  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00495455  51                        PUSH ECX
00495456  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049545c  6a01                      PUSH 0x1
0049545e  68f6000000                PUSH 0xf6
00495463  e8b836f9ff                CALL 0x00428b20
00495468  8bf0                      MOV ESI,EAX
0049546a  85f6                      TEST ESI,ESI
0049546c  0f8452010000              JZ 0x004955c4
00495472  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
00495478  8bce                      MOV ECX,ESI
0049547a  e8213e2100                CALL 0x006a92a0
0049547f  51                        PUSH ECX
00495480  ffb7780c0000              PUSH dword ptr [EDI + 0xc78]
00495486  8bce                      MOV ECX,ESI
00495488  e873ae2300                CALL 0x006d0300
0049548d  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00495494  0f85d0000000              JNZ 0x0049556a
0049549a  83bdfcfeffff01            CMP dword ptr [EBP + 0xfffffefc],0x1
004954a1  f30f108684030000          MOVSS XMM0,dword ptr [ESI + 0x384]
004954a9  7518                      JNZ 0x004954c3
004954ab  f30f590528a3ba00          MULSS XMM0,dword ptr [0x00baa328]
004954b3  f30f118684030000          MOVSS dword ptr [ESI + 0x384],XMM0
004954bb  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
004954c3  f30f10a784030000          MOVSS XMM4,dword ptr [EDI + 0x384]
004954cb  0f57d2                    XORPS XMM2,XMM2
004954ce  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
004954d6  0f28d8                    MOVAPS XMM3,XMM0
004954d9  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
004954e1  0f2ed4                    UCOMISS XMM2,XMM4
004954e4  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
004954ec  f30f119d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM3
004954f4  9f                        LAHF
004954f5  f30f11a510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM4
004954fd  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
00495505  f6c444                    TEST AH,0x44
00495508  7a32                      JP 0x0049553c
0049550a  68d81bb800                PUSH 0xb81bd8
0049550f  6a10                      PUSH 0x10
00495511  e8aabd5700                CALL 0x00a112c0
00495516  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
0049551e  83c408                    ADD ESP,0x8
00495521  f30f108d24ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff24]
00495529  0f57d2                    XORPS XMM2,XMM2
0049552c  f30f109d0cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff0c]
00495534  f30f10a510ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff10]
0049553c  f30f5cca                  SUBSS XMM1,XMM2
00495540  f30f5ce2                  SUBSS XMM4,XMM2
00495544  f30f5cc3                  SUBSS XMM0,XMM3
00495548  f30f5ecc                  DIVSS XMM1,XMM4
0049554c  f30f5fca                  MAXSS XMM1,XMM2
00495550  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
00495558  f30f59c1                  MULSS XMM0,XMM1
0049555c  f30f58c3                  ADDSS XMM0,XMM3
00495560  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
00495568  eb5a                      JMP 0x004955c4
0049556a  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
00495571  7509                      JNZ 0x0049557c
00495573  8b06                      MOV EAX,dword ptr [ESI]
00495575  8bce                      MOV ECX,ESI
00495577  ff5028                    CALL dword ptr [EAX + 0x28]
0049557a  eb48                      JMP 0x004955c4
0049557c  e8df992500                CALL 0x006eef60
00495581  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00495587  50                        PUSH EAX
00495588  6a00                      PUSH 0x0
0049558a  57                        PUSH EDI
0049558b  6840b6c700                PUSH 0xc7b640
00495590  8d873c030000              LEA EAX,[EDI + 0x33c]
00495596  50                        PUSH EAX
00495597  6a0f                      PUSH 0xf
00495599  68e8030000                PUSH 0x3e8
0049559e  e87d35f9ff                CALL 0x00428b20
004955a3  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
004955a9  8bce                      MOV ECX,ESI
004955ab  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004955b2  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
004955b8  8b06                      MOV EAX,dword ptr [ESI]
004955ba  ff500c                    CALL dword ptr [EAX + 0xc]
004955bd  c6867301000001            MOV byte ptr [ESI + 0x173],0x1
004955c4  8b07                      MOV EAX,dword ptr [EDI]
004955c6  8bcf                      MOV ECX,EDI
004955c8  ff5028                    CALL dword ptr [EAX + 0x28]
004955cb  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004955ce  64890d00000000            MOV dword ptr FS:[0x0],ECX
004955d5  59                        POP ECX
004955d6  5f                        POP EDI
004955d7  5e                        POP ESI
004955d8  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004955db  33cd                      XOR ECX,EBP
004955dd  e8499b6500                CALL 0x00aef12b
004955e2  8be5                      MOV ESP,EBP
004955e4  5d                        POP EBP
004955e5  8be3                      MOV ESP,EBX
004955e7  5b                        POP EBX
004955e8  c3                        RET
