; J460 NPC AI 0x00525650 AI_00525650
; types=53
; identities=53.0.0,53.1.0
; entry=00525650
00525650  53                        PUSH EBX
00525651  8bdc                      MOV EBX,ESP
00525653  83ec08                    SUB ESP,0x8
00525656  83e4f8                    AND ESP,0xfffffff8
00525659  83c404                    ADD ESP,0x4
0052565c  55                        PUSH EBP
0052565d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00525660  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00525664  8bec                      MOV EBP,ESP
00525666  81ecf8000000              SUB ESP,0xf8
0052566c  a1b493bf00                MOV EAX,[0x00bf93b4]
00525671  33c5                      XOR EAX,EBP
00525673  8945fc                    MOV dword ptr [EBP + -0x4],EAX
00525676  56                        PUSH ESI
00525677  8bf1                      MOV ESI,ECX
00525679  57                        PUSH EDI
0052567a  f30f2c8ea4030000          CVTTSS2SI ECX,dword ptr [ESI + 0x3a4]
00525682  f30f2c86a0030000          CVTTSS2SI EAX,dword ptr [ESI + 0x3a0]
0052568a  2bc8                      SUB ECX,EAX
0052568c  83be640b000000            CMP dword ptr [ESI + 0xb64],0x0
00525693  898d2cffffff              MOV dword ptr [EBP + 0xffffff2c],ECX
00525699  757d                      JNZ 0x00525718
0052569b  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
005256a2  837e2c00                  CMP dword ptr [ESI + 0x2c],0x0
005256a6  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
005256ac  c786a40b000000000000      MOV dword ptr [ESI + 0xba4],0x0
005256b6  c786a00b000000000000      MOV dword ptr [ESI + 0xba0],0x0
005256c0  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
005256ca  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
005256d0  7528                      JNZ 0x005256fa
005256d2  b805000000                MOV EAX,0x5
005256d7  c786c40b000001000000      MOV dword ptr [ESI + 0xbc4],0x1
005256e1  898684010000              MOV dword ptr [ESI + 0x184],EAX
005256e7  5f                        POP EDI
005256e8  5e                        POP ESI
005256e9  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005256ec  33cd                      XOR ECX,EBP
005256ee  e8389a5c00                CALL 0x00aef12b
005256f3  8be5                      MOV ESP,EBP
005256f5  5d                        POP EBP
005256f6  8be3                      MOV ESP,EBX
005256f8  5b                        POP EBX
005256f9  c3                        RET
005256fa  b803000000                MOV EAX,0x3
005256ff  898684010000              MOV dword ptr [ESI + 0x184],EAX
00525705  5f                        POP EDI
00525706  5e                        POP ESI
00525707  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0052570a  33cd                      XOR ECX,EBP
0052570c  e81a9a5c00                CALL 0x00aef12b
00525711  8be5                      MOV ESP,EBP
00525713  5d                        POP EBP
00525714  8be3                      MOV ESP,EBX
00525716  5b                        POP EBX
00525717  c3                        RET
00525718  8bce                      MOV ECX,ESI
0052571a  e821911900                CALL 0x006be840
0052571f  f30f101d40cbba00          MOVSS XMM3,dword ptr [0x00bacb40]
00525727  0f57d2                    XORPS XMM2,XMM2
0052572a  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
00525730  85c0                      TEST EAX,EAX
00525732  7414                      JZ 0x00525748
00525734  83782801                  CMP dword ptr [EAX + 0x28],0x1
00525738  750e                      JNZ 0x00525748
0052573a  8bb828160000              MOV EDI,dword ptr [EAX + 0x1628]
00525740  898520ffffff              MOV dword ptr [EBP + 0xffffff20],EAX
00525746  eb57                      JMP 0x0052579f
00525748  f30f10a860030000          MOVSS XMM5,dword ptr [EAX + 0x360]
00525750  f30f10a064030000          MOVSS XMM4,dword ptr [EAX + 0x364]
00525758  0f28cd                    MOVAPS XMM1,XMM5
0052575b  0f28c4                    MOVAPS XMM0,XMM4
0052575e  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
00525768  0f54cb                    ANDPS XMM1,XMM3
0052576b  0f54c3                    ANDPS XMM0,XMM3
0052576e  0f2fc8                    COMISS XMM1,XMM0
00525771  760f                      JBE 0x00525782
00525773  33c9                      XOR ECX,ECX
00525775  bf02000000                MOV EDI,0x2
0052577a  0f2fd5                    COMISS XMM2,XMM5
0052577d  0f47f9                    CMOVA EDI,ECX
00525780  eb1d                      JMP 0x0052579f
00525782  33c0                      XOR EAX,EAX
00525784  0f2fd4                    COMISS XMM2,XMM4
00525787  0f96c0                    SETBE AL
0052578a  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
00525791  898538ffffff              MOV dword ptr [EBP + 0xffffff38],EAX
00525797  8bf8                      MOV EDI,EAX
00525799  8b8534ffffff              MOV EAX,dword ptr [EBP + 0xffffff34]
0052579f  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
005257a6  0f57c0                    XORPS XMM0,XMM0
005257a9  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
005257b1  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005257b9  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
005257c1  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
005257c9  0f84be030000              JZ 0x00525b8d
005257cf  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
005257d5  8bce                      MOV ECX,ESI
005257d7  50                        PUSH EAX
005257d8  e8f32a1b00                CALL 0x006d82d0
005257dd  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
005257e5  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
005257ed  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
005257f5  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
005257fd  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
00525805  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0052580d  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
00525815  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0052581d  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
00525825  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0052582d  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
00525835  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0052583d  f30f100588a3ba00          MOVSS XMM0,dword ptr [0x00baa388]
00525845  e80602f1ff                CALL 0x00435a50
0052584a  f30f10ad30ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff30]
00525852  0f28f0                    MOVAPS XMM6,XMM0
00525855  f30f109534ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff34]
0052585d  0f28c5                    MOVAPS XMM0,XMM5
00525860  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00525868  0f28fa                    MOVAPS XMM7,XMM2
0052586b  bf02000000                MOV EDI,0x2
00525870  f30f109d48ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff48]
00525878  0f57e4                    XORPS XMM4,XMM4
0052587b  f30f11b51cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM6
00525883  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
0052588b  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00525893  0f28c8                    MOVAPS XMM1,XMM0
00525896  f30f11bd34ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM7
0052589e  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
005258a6  f30f118d44ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM1
005258ae  6690                      NOP
005258b0  0f2eec                    UCOMISS XMM5,XMM4
005258b3  9f                        LAHF
005258b4  f6c444                    TEST AH,0x44
005258b7  7a0d                      JP 0x005258c6
005258b9  0f2ec4                    UCOMISS XMM0,XMM4
005258bc  9f                        LAHF
005258bd  f6c444                    TEST AH,0x44
005258c0  0f8b98000000              JNP 0x0052595e
005258c6  0f28cb                    MOVAPS XMM1,XMM3
005258c9  0f28c7                    MOVAPS XMM0,XMM7
005258cc  f30f59853cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff3c]
005258d4  f30f59cd                  MULSS XMM1,XMM5
005258d8  f30f58c8                  ADDSS XMM1,XMM0
005258dc  0f28c1                    MOVAPS XMM0,XMM1
005258df  f30f598d3cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff3c]
005258e7  f30f59c5                  MULSS XMM0,XMM5
005258eb  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
005258f3  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
005258fb  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
00525903  e84801f1ff                CALL 0x00435a50
00525908  f30f109534ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff34]
00525910  0f57e4                    XORPS XMM4,XMM4
00525913  f30f5c9514ffffff          SUBSS XMM2,dword ptr [EBP + 0xffffff14]
0052591b  f30f109d48ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff48]
00525923  f30f5c9d10ffffff          SUBSS XMM3,dword ptr [EBP + 0xffffff10]
0052592b  f30f10b51cffffff          MOVSS XMM6,dword ptr [EBP + 0xffffff1c]
00525933  f30f10ad30ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff30]
0052593b  f30f59d0                  MULSS XMM2,XMM0
0052593f  f30f59d8                  MULSS XMM3,XMM0
00525943  f30f589514ffffff          ADDSS XMM2,dword ptr [EBP + 0xffffff14]
0052594b  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00525953  f30f589d10ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff10]
0052595b  0f28fa                    MOVAPS XMM7,XMM2
0052595e  f30f59d0                  MULSS XMM2,XMM0
00525962  0f28cb                    MOVAPS XMM1,XMM3
00525965  0f28c1                    MOVAPS XMM0,XMM1
00525968  f30f109d28ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff28]
00525970  f30f59c5                  MULSS XMM0,XMM5
00525974  f30f10ae9c030000          MOVSS XMM5,dword ptr [ESI + 0x39c]
0052597c  0f2ead38ffffff            UCOMISS XMM5,dword ptr [EBP + 0xffffff38]
00525983  f30f58d0                  ADDSS XMM2,XMM0
00525987  9f                        LAHF
00525988  f30f59150cadba00          MULSS XMM2,dword ptr [0x00baad0c]
00525990  f30f5fd4                  MAXSS XMM2,XMM4
00525994  f30f5815fca6ba00          ADDSS XMM2,dword ptr [0x00baa6fc]
0052599c  f30f591580a2ba00          MULSS XMM2,dword ptr [0x00baa280]
005259a4  0f28c2                    MOVAPS XMM0,XMM2
005259a7  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
005259af  f30f5cc2                  SUBSS XMM0,XMM2
005259b3  f30f59c4                  MULSS XMM0,XMM4
005259b7  f30f58c2                  ADDSS XMM0,XMM2
005259bb  f30f109544ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff44]
005259c3  f30f59d8                  MULSS XMM3,XMM0
005259c7  f30f59d0                  MULSS XMM2,XMM0
005259cb  f30f59dd                  MULSS XMM3,XMM5
005259cf  f30f59d5                  MULSS XMM2,XMM5
005259d3  f30f58d9                  ADDSS XMM3,XMM1
005259d7  0f28ce                    MOVAPS XMM1,XMM6
005259da  f30f58d7                  ADDSS XMM2,XMM7
005259de  f6c444                    TEST AH,0x44
005259e1  7b13                      JNP 0x005259f6
005259e3  0f28c5                    MOVAPS XMM0,XMM5
005259e6  f30f59ee                  MULSS XMM5,XMM6
005259ea  f30f58c6                  ADDSS XMM0,XMM6
005259ee  f30f5cc5                  SUBSS XMM0,XMM5
005259f2  f30f5ec8                  DIVSS XMM1,XMM0
005259f6  f30f10ad30ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff30]
005259fe  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00525a06  f30f59d1                  MULSS XMM2,XMM1
00525a0a  f30f59d9                  MULSS XMM3,XMM1
00525a0e  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
00525a16  0f28fa                    MOVAPS XMM7,XMM2
00525a19  f30f119534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM2
00525a21  f30f119d48ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM3
00525a29  f30f119e60030000          MOVSS dword ptr [ESI + 0x360],XMM3
00525a31  83ef01                    SUB EDI,0x1
00525a34  0f8576feffff              JNZ 0x005258b0
00525a3a  0f28c2                    MOVAPS XMM0,XMM2
00525a3d  f30f58db                  ADDSS XMM3,XMM3
00525a41  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00525a49  f30f58c0                  ADDSS XMM0,XMM0
00525a4d  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00525a53  8bce                      MOV ECX,ESI
00525a55  50                        PUSH EAX
00525a56  f30f119e60030000          MOVSS dword ptr [ESI + 0x360],XMM3
00525a5e  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
00525a66  e8352b1b00                CALL 0x006d85a0
00525a6b  8bc8                      MOV ECX,EAX
00525a6d  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00525a71  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00525a78  9f                        LAHF
00525a79  f6c444                    TEST AH,0x44
00525a7c  0f8a9e000000              JP 0x00525b20
00525a82  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00525a87  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00525a8e  9f                        LAHF
00525a8f  f6c444                    TEST AH,0x44
00525a92  0f8a88000000              JP 0x00525b20
00525a98  f30f109e64030000          MOVSS XMM3,dword ptr [ESI + 0x364]
00525aa0  f30f10a660030000          MOVSS XMM4,dword ptr [ESI + 0x360]
00525aa8  0f28c3                    MOVAPS XMM0,XMM3
00525aab  0f28cc                    MOVAPS XMM1,XMM4
00525aae  f30f59c3                  MULSS XMM0,XMM3
00525ab2  f30f59cc                  MULSS XMM1,XMM4
00525ab6  f30f58c8                  ADDSS XMM1,XMM0
00525aba  0f2f0d6ca0ba00            COMISS XMM1,dword ptr [0x00baa06c]
00525ac1  764e                      JBE 0x00525b11
00525ac3  0f28c3                    MOVAPS XMM0,XMM3
00525ac6  0f28cc                    MOVAPS XMM1,XMM4
00525ac9  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00525ad0  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00525ad7  0f2fc8                    COMISS XMM1,XMM0
00525ada  0f57c0                    XORPS XMM0,XMM0
00525add  7618                      JBE 0x00525af7
00525adf  33c9                      XOR ECX,ECX
00525ae1  b802000000                MOV EAX,0x2
00525ae6  0f2fc4                    COMISS XMM0,XMM4
00525ae9  0f47c1                    CMOVA EAX,ECX
00525aec  898548ffffff              MOV dword ptr [EBP + 0xffffff48],EAX
00525af2  e9b6010000                JMP 0x00525cad
00525af7  33c0                      XOR EAX,EAX
00525af9  0f2fc3                    COMISS XMM0,XMM3
00525afc  0f96c0                    SETBE AL
00525aff  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
00525b06  898548ffffff              MOV dword ptr [EBP + 0xffffff48],EAX
00525b0c  e99c010000                JMP 0x00525cad
00525b11  c78548ffffff03000000      MOV dword ptr [EBP + 0xffffff48],0x3
00525b1b  e98d010000                JMP 0x00525cad
00525b20  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00525b28  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00525b2e  50                        PUSH EAX
00525b2f  8bce                      MOV ECX,ESI
00525b31  e86a2a1b00                CALL 0x006d85a0
00525b36  f30f1020                  MOVSS XMM4,dword ptr [EAX]
00525b3a  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
00525b3f  0f28cc                    MOVAPS XMM1,XMM4
00525b42  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00525b49  0f28c3                    MOVAPS XMM0,XMM3
00525b4c  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00525b53  0f2fc8                    COMISS XMM1,XMM0
00525b56  0f57c0                    XORPS XMM0,XMM0
00525b59  7618                      JBE 0x00525b73
00525b5b  33c0                      XOR EAX,EAX
00525b5d  bf02000000                MOV EDI,0x2
00525b62  0f2fc4                    COMISS XMM0,XMM4
00525b65  0f47f8                    CMOVA EDI,EAX
00525b68  89bd48ffffff              MOV dword ptr [EBP + 0xffffff48],EDI
00525b6e  e940010000                JMP 0x00525cb3
00525b73  33c9                      XOR ECX,ECX
00525b75  0f2fc3                    COMISS XMM0,XMM3
00525b78  0f96c1                    SETBE CL
00525b7b  8d0c4d01000000            LEA ECX,[ECX*0x2 + 0x1]
00525b82  898d48ffffff              MOV dword ptr [EBP + 0xffffff48],ECX
00525b88  e920010000                JMP 0x00525cad
00525b8d  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
00525b95  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
00525b9d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00525ba3  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
00525bab  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00525bb3  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00525bb9  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00525bc1  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00525bc9  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00525bcf  50                        PUSH EAX
00525bd0  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00525bd8  e823d12e00                CALL 0x00812d00
00525bdd  8d4f02                    LEA ECX,[EDI + 0x2]
00525be0  81e103000080              AND ECX,0x80000003
00525be6  7905                      JNS 0x00525bed
00525be8  49                        DEC ECX
00525be9  83c9fc                    OR ECX,0xfffffffc
00525bec  41                        INC ECX
00525bed  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
00525bf3  2500020000                AND EAX,0x200
00525bf8  898d48ffffff              MOV dword ptr [EBP + 0xffffff48],ECX
00525bfe  83c800                    OR EAX,0x0
00525c01  7416                      JZ 0x00525c19
00525c03  83c102                    ADD ECX,0x2
00525c06  81e103000080              AND ECX,0x80000003
00525c0c  7905                      JNS 0x00525c13
00525c0e  49                        DEC ECX
00525c0f  83c9fc                    OR ECX,0xfffffffc
00525c12  41                        INC ECX
00525c13  898d48ffffff              MOV dword ptr [EBP + 0xffffff48],ECX
00525c19  f30f108518ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff18]
00525c21  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
00525c29  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
00525c2f  898634030000              MOV dword ptr [ESI + 0x334],EAX
00525c35  8b8640030000              MOV EAX,dword ptr [ESI + 0x340]
00525c3b  f30f5c8544ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff44]
00525c43  898638030000              MOV dword ptr [ESI + 0x338],EAX
00525c49  8b8534ffffff              MOV EAX,dword ptr [EBP + 0xffffff34]
00525c4f  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
00525c57  f30f10851cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff1c]
00525c5f  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
00525c67  f30f5c8528ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff28]
00525c6f  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
00525c77  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
00525c7f  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
00525c87  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00525c8e  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00525c95  f30f58c9                  ADDSS XMM1,XMM1
00525c99  f30f58d2                  ADDSS XMM2,XMM2
00525c9d  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
00525ca5  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
00525cad  8bbd48ffffff              MOV EDI,dword ptr [EBP + 0xffffff48]
00525cb3  8b86a00b0000              MOV EAX,dword ptr [ESI + 0xba0]
00525cb9  8b8d2cffffff              MOV ECX,dword ptr [EBP + 0xffffff2c]
00525cbf  85c0                      TEST EAX,EAX
00525cc1  7e08                      JLE 0x00525ccb
00525cc3  2bc1                      SUB EAX,ECX
00525cc5  8986a00b0000              MOV dword ptr [ESI + 0xba0],EAX
00525ccb  8b86a40b0000              MOV EAX,dword ptr [ESI + 0xba4]
00525cd1  85c0                      TEST EAX,EAX
00525cd3  7e08                      JLE 0x00525cdd
00525cd5  2bc1                      SUB EAX,ECX
00525cd7  8986a40b0000              MOV dword ptr [ESI + 0xba4],EAX
00525cdd  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
00525ce4  7420                      JZ 0x00525d06
00525ce6  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00525cee  8bce                      MOV ECX,ESI
00525cf0  6a07                      PUSH 0x7
00525cf2  6a00                      PUSH 0x0
00525cf4  e867511a00                CALL 0x006cae60
00525cf9  0fb6c0                    MOVZX EAX,AL
00525cfc  85c0                      TEST EAX,EAX
00525cfe  0f846e020000              JZ 0x00525f72
00525d04  eb2d                      JMP 0x00525d33
00525d06  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
00525d0c  85c0                      TEST EAX,EAX
00525d0e  0f8489020000              JZ 0x00525f9d
00525d14  8b80e0130000              MOV EAX,dword ptr [EAX + 0x13e0]
00525d1a  85c0                      TEST EAX,EAX
00525d1c  7407                      JZ 0x00525d25
00525d1e  f30f2c400c                CVTTSS2SI EAX,dword ptr [EAX + 0xc]
00525d23  eb02                      JMP 0x00525d27
00525d25  33c0                      XOR EAX,EAX
00525d27  3b86c00b0000              CMP EAX,dword ptr [ESI + 0xbc0]
00525d2d  0f8e4b020000              JLE 0x00525f7e
00525d33  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
00525d39  2500080001                AND EAX,0x1000800
00525d3e  83c800                    OR EAX,0x0
00525d41  0f852b020000              JNZ 0x00525f72
00525d47  3986a00b0000              CMP dword ptr [ESI + 0xba0],EAX
00525d4d  0f8f1f020000              JG 0x00525f72
00525d53  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
00525d59  e8d291f1ff                CALL 0x0043ef30
00525d5e  8bd7                      MOV EDX,EDI
00525d60  c78558ffffff0000803f      MOV dword ptr [EBP + 0xffffff58],0x3f800000
00525d6a  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00525d70  c7855cffffff17d9cebd      MOV dword ptr [EBP + 0xffffff5c],0xbdced917
00525d7a  c78564ffffff3333b33f      MOV dword ptr [EBP + 0xffffff64],0x3fb33333
00525d84  e847941500                CALL 0x0067f1d0
00525d89  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
00525d90  7436                      JZ 0x00525dc8
00525d92  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00525d9a  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00525da0  50                        PUSH EAX
00525da1  8bce                      MOV ECX,ESI
00525da3  e8f8271b00                CALL 0x006d85a0
00525da8  8bd0                      MOV EDX,EAX
00525daa  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
00525db0  e8bb931500                CALL 0x0067f170
00525db5  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00525db9  f30f119540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM2
00525dc1  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
00525dc6  eb10                      JMP 0x00525dd8
00525dc8  f30f109d44ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff44]
00525dd0  f30f109540ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff40]
00525dd8  f30f10a660030000          MOVSS XMM4,dword ptr [ESI + 0x360]
00525de0  0f28f2                    MOVAPS XMM6,XMM2
00525de3  f30f10ae64030000          MOVSS XMM5,dword ptr [ESI + 0x364]
00525deb  0f28fb                    MOVAPS XMM7,XMM3
00525dee  f30f592504a3ba00          MULSS XMM4,dword ptr [0x00baa304]
00525df6  f30f592d04a3ba00          MULSS XMM5,dword ptr [0x00baa304]
00525dfe  0f28c4                    MOVAPS XMM0,XMM4
00525e01  f30f59c2                  MULSS XMM0,XMM2
00525e05  0f28cd                    MOVAPS XMM1,XMM5
00525e08  f30f59cb                  MULSS XMM1,XMM3
00525e0c  f30f58c8                  ADDSS XMM1,XMM0
00525e10  f30f59f9                  MULSS XMM7,XMM1
00525e14  f30f59f1                  MULSS XMM6,XMM1
00525e18  0f28c7                    MOVAPS XMM0,XMM7
00525e1b  f30f59c3                  MULSS XMM0,XMM3
00525e1f  0f28ce                    MOVAPS XMM1,XMM6
00525e22  f30f59ca                  MULSS XMM1,XMM2
00525e26  f30f58c8                  ADDSS XMM1,XMM0
00525e2a  0f57c0                    XORPS XMM0,XMM0
00525e2d  0f2fc1                    COMISS XMM0,XMM1
00525e30  7608                      JBE 0x00525e3a
00525e32  f30f5ce6                  SUBSS XMM4,XMM6
00525e36  f30f5cef                  SUBSS XMM5,XMM7
00525e3a  83bec40b000000            CMP dword ptr [ESI + 0xbc4],0x0
00525e41  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00525e49  f30f591d1ca8ba00          MULSS XMM3,dword ptr [0x00baa81c]
00525e51  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00525e59  f30f58d4                  ADDSS XMM2,XMM4
00525e5d  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00525e65  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
00525e6d  f30f58dd                  ADDSS XMM3,XMM5
00525e71  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00525e79  f30f119540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM2
00525e81  f30f119d44ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM3
00525e89  0f8482000000              JZ 0x00525f11
00525e8f  e8cc901c00                CALL 0x006eef60
00525e94  0f57c0                    XORPS XMM0,XMM0
00525e97  0f57d2                    XORPS XMM2,XMM2
00525e9a  f30f2a96c40b0000          CVTSI2SS XMM2,dword ptr [ESI + 0xbc4]
00525ea2  f20f2ac0                  CVTSI2SD XMM0,EAX
00525ea6  c1e81f                    SHR EAX,0x1f
00525ea9  0f28ca                    MOVAPS XMM1,XMM2
00525eac  f30f599540ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff40]
00525eb4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00525ebd  f30f598d44ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff44]
00525ec5  660f5ad8                  CVTPD2PS XMM3,XMM0
00525ec9  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
00525ed1  f30f591df49fba00          MULSS XMM3,dword ptr [0x00ba9ff4]
00525ed9  f30f591d98a1ba00          MULSS XMM3,dword ptr [0x00baa198]
00525ee1  f30f581df8a1ba00          ADDSS XMM3,dword ptr [0x00baa1f8]
00525ee9  f30f59cb                  MULSS XMM1,XMM3
00525eed  f30f59d3                  MULSS XMM2,XMM3
00525ef1  f30f5cc1                  SUBSS XMM0,XMM1
00525ef5  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00525efd  f30f108528ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff28]
00525f05  f30f5cc2                  SUBSS XMM0,XMM2
00525f09  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00525f11  837e2c01                  CMP dword ptr [ESI + 0x2c],0x1
00525f15  7511                      JNZ 0x00525f28
00525f17  c786a00b00001e000000      MOV dword ptr [ESI + 0xba0],0x1e
00525f21  b802000000                MOV EAX,0x2
00525f26  eb15                      JMP 0x00525f3d
00525f28  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
00525f2f  740a                      JZ 0x00525f3b
00525f31  c786a00b00000a000000      MOV dword ptr [ESI + 0xba0],0xa
00525f3b  33c0                      XOR EAX,EAX
00525f3d  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
00525f43  51                        PUSH ECX
00525f44  50                        PUSH EAX
00525f45  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00525f4b  8bce                      MOV ECX,ESI
00525f4d  50                        PUSH EAX
00525f4e  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
00525f54  50                        PUSH EAX
00525f55  e886531a00                CALL 0x006cb2e0
00525f5a  c786a40b000003000000      MOV dword ptr [ESI + 0xba4],0x3
00525f64  8b86c40b0000              MOV EAX,dword ptr [ESI + 0xbc4]
00525f6a  f7d8                      NEG EAX
00525f6c  8986c40b0000              MOV dword ptr [ESI + 0xbc4],EAX
00525f72  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
00525f78  85c0                      TEST EAX,EAX
00525f7a  7421                      JZ 0x00525f9d
00525f7c  eb06                      JMP 0x00525f84
00525f7e  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
00525f84  8b80e0130000              MOV EAX,dword ptr [EAX + 0x13e0]
00525f8a  85c0                      TEST EAX,EAX
00525f8c  7407                      JZ 0x00525f95
00525f8e  f30f2c400c                CVTTSS2SI EAX,dword ptr [EAX + 0xc]
00525f93  eb02                      JMP 0x00525f97
00525f95  33c0                      XOR EAX,EAX
00525f97  8986c00b0000              MOV dword ptr [ESI + 0xbc0],EAX
00525f9d  8b8548ffffff              MOV EAX,dword ptr [EBP + 0xffffff48]
00525fa3  8b8ea40b0000              MOV ECX,dword ptr [ESI + 0xba4]
00525fa9  898d2cffffff              MOV dword ptr [EBP + 0xffffff2c],ECX
00525faf  6a01                      PUSH 0x1
00525fb1  83f803                    CMP EAX,0x3
00525fb4  754f                      JNZ 0x00526005
00525fb6  33d2                      XOR EDX,EDX
00525fb8  b802000000                MOV EAX,0x2
00525fbd  85c9                      TEST ECX,ECX
00525fbf  8d4e48                    LEA ECX,[ESI + 0x48]
00525fc2  68c006b600                PUSH 0xb606c0
00525fc7  0f4ec2                    CMOVLE EAX,EDX
00525fca  898544ffffff              MOV dword ptr [EBP + 0xffffff44],EAX
00525fd0  e81b4beeff                CALL 0x0040aaf0
00525fd5  84c0                      TEST AL,AL
00525fd7  0f84cd000000              JZ 0x005260aa
00525fdd  83be9c00000000            CMP dword ptr [ESI + 0x9c],0x0
00525fe4  0f84c0000000              JZ 0x005260aa
00525fea  660f6e8d44ffffff          MOVD XMM1,dword ptr [EBP + 0xffffff44]
00525ff2  8d8e98000000              LEA ECX,[ESI + 0x98]
00525ff8  0f5bc9                    CVTDQ2PS XMM1,XMM1
00525ffb  e8002eeeff                CALL 0x00408e00
00526000  e9a5000000                JMP 0x005260aa
00526005  8d4e48                    LEA ECX,[ESI + 0x48]
00526008  83f801                    CMP EAX,0x1
0052600b  7543                      JNZ 0x00526050
0052600d  681007b600                PUSH 0xb60710
00526012  e8d94aeeff                CALL 0x0040aaf0
00526017  84c0                      TEST AL,AL
00526019  0f848b000000              JZ 0x005260aa
0052601f  83be9c00000000            CMP dword ptr [ESI + 0x9c],0x0
00526026  0f847e000000              JZ 0x005260aa
0052602c  33c9                      XOR ECX,ECX
0052602e  b802000000                MOV EAX,0x2
00526033  398d2cffffff              CMP dword ptr [EBP + 0xffffff2c],ECX
00526039  0f4ec1                    CMOVLE EAX,ECX
0052603c  8d8e98000000              LEA ECX,[ESI + 0x98]
00526042  660f6ec8                  MOVD XMM1,EAX
00526046  0f5bc9                    CVTDQ2PS XMM1,XMM1
00526049  e8b22deeff                CALL 0x00408e00
0052604e  eb5a                      JMP 0x005260aa
00526050  68840fb600                PUSH 0xb60f84
00526055  e8964aeeff                CALL 0x0040aaf0
0052605a  84c0                      TEST AL,AL
0052605c  742b                      JZ 0x00526089
0052605e  83be9c00000000            CMP dword ptr [ESI + 0x9c],0x0
00526065  7422                      JZ 0x00526089
00526067  33c9                      XOR ECX,ECX
00526069  b802000000                MOV EAX,0x2
0052606e  398d2cffffff              CMP dword ptr [EBP + 0xffffff2c],ECX
00526074  0f4ec1                    CMOVLE EAX,ECX
00526077  8d8e98000000              LEA ECX,[ESI + 0x98]
0052607d  660f6ec8                  MOVD XMM1,EAX
00526081  0f5bc9                    CVTDQ2PS XMM1,XMM1
00526084  e8772deeff                CALL 0x00408e00
00526089  83bd48ffffff00            CMP dword ptr [EBP + 0xffffff48],0x0
00526090  8d4e48                    LEA ECX,[ESI + 0x48]
00526093  6a01                      PUSH 0x1
00526095  0f94854fffffff            SETZ byte ptr [EBP + 0xffffff4f]
0052609c  e87f51eeff                CALL 0x0040b220
005260a1  8a8d4fffffff              MOV CL,byte ptr [EBP + 0xffffff4f]
005260a7  884832                    MOV byte ptr [EAX + 0x32],CL
005260aa  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
005260b1  0f84b4010000              JZ 0x0052626b
005260b7  8b562c                    MOV EDX,dword ptr [ESI + 0x2c]
005260ba  b818ddb100                MOV EAX,0xb1dd18
005260bf  f30f109d30ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff30]
005260c7  83fa01                    CMP EDX,0x1
005260ca  f30f10a53cffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff3c]
005260d2  b944e0b100                MOV ECX,0xb1e044
005260d7  0f45c8                    CMOVNZ ECX,EAX
005260da  c6854fffffff00            MOV byte ptr [EBP + 0xffffff4f],0x0
005260e1  0f2e1d40b6c700            UCOMISS XMM3,dword ptr [0x00c7b640]
005260e8  9f                        LAHF
005260e9  f6c444                    TEST AH,0x44
005260ec  7a43                      JP 0x00526131
005260ee  0f2e2544b6c700            UCOMISS XMM4,dword ptr [0x00c7b644]
005260f5  9f                        LAHF
005260f6  f6c444                    TEST AH,0x44
005260f9  7a36                      JP 0x00526131
005260fb  83fa01                    CMP EDX,0x1
005260fe  7476                      JZ 0x00526176
00526100  6a01                      PUSH 0x1
00526102  51                        PUSH ECX
00526103  8d4e48                    LEA ECX,[ESI + 0x48]
00526106  e8c544eeff                CALL 0x0040a5d0
0052610b  84c0                      TEST AL,AL
0052610d  7472                      JZ 0x00526181
0052610f  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
00526112  85c0                      TEST EAX,EAX
00526114  746b                      JZ 0x00526181
00526116  8d4e78                    LEA ECX,[ESI + 0x78]
00526119  0f57c9                    XORPS XMM1,XMM1
0052611c  e8df2ceeff                CALL 0x00408e00
00526121  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
00526124  85c0                      TEST EAX,EAX
00526126  7459                      JZ 0x00526181
00526128  c6868c00000000            MOV byte ptr [ESI + 0x8c],0x0
0052612f  eb50                      JMP 0x00526181
00526131  0f28cb                    MOVAPS XMM1,XMM3
00526134  0f28c4                    MOVAPS XMM0,XMM4
00526137  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0052613e  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00526145  0f2fc8                    COMISS XMM1,XMM0
00526148  7614                      JBE 0x0052615e
0052614a  0f57c0                    XORPS XMM0,XMM0
0052614d  b930ddb100                MOV ECX,0xb1dd30
00526152  0f2fc3                    COMISS XMM0,XMM3
00526155  0f97854fffffff            SETA byte ptr [EBP + 0xffffff4f]
0052615c  eb18                      JMP 0x00526176
0052615e  83fa01                    CMP EDX,0x1
00526161  7513                      JNZ 0x00526176
00526163  0f57c0                    XORPS XMM0,XMM0
00526166  b920e0b100                MOV ECX,0xb1e020
0052616b  0f2fc4                    COMISS XMM0,XMM4
0052616e  b844e0b100                MOV EAX,0xb1e044
00526173  0f46c8                    CMOVBE ECX,EAX
00526176  6a00                      PUSH 0x0
00526178  51                        PUSH ECX
00526179  8d4e48                    LEA ECX,[ESI + 0x48]
0052617c  e8ff41eeff                CALL 0x0040a380
00526181  6a00                      PUSH 0x0
00526183  8d4e48                    LEA ECX,[ESI + 0x48]
00526186  e89550eeff                CALL 0x0040b220
0052618b  8a8d4fffffff              MOV CL,byte ptr [EBP + 0xffffff4f]
00526191  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
00526199  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
005261a1  884832                    MOV byte ptr [EAX + 0x32],CL
005261a4  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
005261a8  0f84a2000000              JZ 0x00526250
005261ae  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
005261b5  0f8495000000              JZ 0x00526250
005261bb  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
005261c3  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
005261cb  f30f59c0                  MULSS XMM0,XMM0
005261cf  f30f59c9                  MULSS XMM1,XMM1
005261d3  f30f58c1                  ADDSS XMM0,XMM1
005261d7  e874f8f0ff                CALL 0x00435a50
005261dc  f30f100da4a6ba00          MOVSS XMM1,dword ptr [0x00baa6a4]
005261e4  0f28d0                    MOVAPS XMM2,XMM0
005261e7  0f2fca                    COMISS XMM1,XMM2
005261ea  0f57c9                    XORPS XMM1,XMM1
005261ed  762e                      JBE 0x0052621d
005261ef  f30f109d38ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff38]
005261f7  f30f5cc3                  SUBSS XMM0,XMM3
005261fb  f30f5e05cca4ba00          DIVSS XMM0,dword ptr [0x00baa4cc]
00526203  f30f5fc1                  MAXSS XMM0,XMM1
00526207  f30f5dc3                  MINSS XMM0,XMM3
0052620b  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00526213  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0052621b  eb0b                      JMP 0x00526228
0052621d  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
00526225  0f28d8                    MOVAPS XMM3,XMM0
00526228  f30f1025a4a7ba00          MOVSS XMM4,dword ptr [0x00baa7a4]
00526230  0f2fd4                    COMISS XMM2,XMM4
00526233  761b                      JBE 0x00526250
00526235  0f28c2                    MOVAPS XMM0,XMM2
00526238  f30f5cc4                  SUBSS XMM0,XMM4
0052623c  f30f5905d4a1ba00          MULSS XMM0,dword ptr [0x00baa1d4]
00526244  f30f5fc1                  MAXSS XMM0,XMM1
00526248  f30f5dc3                  MINSS XMM0,XMM3
0052624c  f30f58c3                  ADDSS XMM0,XMM3
00526250  f30f11864c010000          MOVSS dword ptr [ESI + 0x14c],XMM0
00526258  5f                        POP EDI
00526259  5e                        POP ESI
0052625a  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0052625d  33cd                      XOR ECX,EBP
0052625f  e8c78e5c00                CALL 0x00aef12b
00526264  8be5                      MOV ESP,EBP
00526266  5d                        POP EBP
00526267  8be3                      MOV ESP,EBX
00526269  5b                        POP EBX
0052626a  c3                        RET
0052626b  f30f109660030000          MOVSS XMM2,dword ptr [ESI + 0x360]
00526273  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
0052627b  0f28c2                    MOVAPS XMM0,XMM2
0052627e  f30f59c2                  MULSS XMM0,XMM2
00526282  f30f59c9                  MULSS XMM1,XMM1
00526286  f30f58c1                  ADDSS XMM0,XMM1
0052628a  e8c1f7f0ff                CALL 0x00435a50
0052628f  f30f109d38ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff38]
00526297  0f2fd8                    COMISS XMM3,XMM0
0052629a  0f8625010000              JBE 0x005263c5
005262a0  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
005262a8  f30f5c8e34030000          SUBSS XMM1,dword ptr [ESI + 0x334]
005262b0  f30f101540cbba00          MOVSS XMM2,dword ptr [0x00bacb40]
005262b8  0f54ca                    ANDPS XMM1,XMM2
005262bb  0f2fd9                    COMISS XMM3,XMM1
005262be  7673                      JBE 0x00526333
005262c0  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
005262c8  f30f5c8638030000          SUBSS XMM0,dword ptr [ESI + 0x338]
005262d0  0f54c2                    ANDPS XMM0,XMM2
005262d3  0f2fd8                    COMISS XMM3,XMM0
005262d6  765b                      JBE 0x00526333
005262d8  837e2c00                  CMP dword ptr [ESI + 0x2c],0x0
005262dc  7523                      JNZ 0x00526301
005262de  b818ddb100                MOV EAX,0xb1dd18
005262e3  8d4e48                    LEA ECX,[ESI + 0x48]
005262e6  6a00                      PUSH 0x0
005262e8  50                        PUSH EAX
005262e9  e8f243eeff                CALL 0x0040a6e0
005262ee  5f                        POP EDI
005262ef  5e                        POP ESI
005262f0  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
005262f3  33cd                      XOR ECX,EBP
005262f5  e8318e5c00                CALL 0x00aef12b
005262fa  8be5                      MOV ESP,EBP
005262fc  5d                        POP EBP
005262fd  8be3                      MOV ESP,EBX
005262ff  5b                        POP EBX
00526300  c3                        RET
00526301  83bd48ffffff01            CMP dword ptr [EBP + 0xffffff48],0x1
00526308  b944e0b100                MOV ECX,0xb1e044
0052630d  b820e0b100                MOV EAX,0xb1e020
00526312  0f45c1                    CMOVNZ EAX,ECX
00526315  8d4e48                    LEA ECX,[ESI + 0x48]
00526318  6a00                      PUSH 0x0
0052631a  50                        PUSH EAX
0052631b  e8c043eeff                CALL 0x0040a6e0
00526320  5f                        POP EDI
00526321  5e                        POP ESI
00526322  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00526325  33cd                      XOR ECX,EBP
00526327  e8ff8d5c00                CALL 0x00aef12b
0052632c  8be5                      MOV ESP,EBP
0052632e  5d                        POP EBP
0052632f  8be3                      MOV ESP,EBX
00526331  5b                        POP EBX
00526332  c3                        RET
00526333  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0052633b  f30f5c8638030000          SUBSS XMM0,dword ptr [ESI + 0x338]
00526343  0f54c2                    ANDPS XMM0,XMM2
00526346  0f2fc8                    COMISS XMM1,XMM0
00526349  7646                      JBE 0x00526391
0052634b  6a00                      PUSH 0x0
0052634d  6830ddb100                PUSH 0xb1dd30
00526352  8d4e48                    LEA ECX,[ESI + 0x48]
00526355  e82640eeff                CALL 0x0040a380
0052635a  0f57c0                    XORPS XMM0,XMM0
0052635d  8d4e48                    LEA ECX,[ESI + 0x48]
00526360  0f2f8660030000            COMISS XMM0,dword ptr [ESI + 0x360]
00526367  6a00                      PUSH 0x0
00526369  0f97854fffffff            SETA byte ptr [EBP + 0xffffff4f]
00526370  e8ab4eeeff                CALL 0x0040b220
00526375  8a8d4fffffff              MOV CL,byte ptr [EBP + 0xffffff4f]
0052637b  884832                    MOV byte ptr [EAX + 0x32],CL
0052637e  5f                        POP EDI
0052637f  5e                        POP ESI
00526380  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00526383  33cd                      XOR ECX,EBP
00526385  e8a18d5c00                CALL 0x00aef12b
0052638a  8be5                      MOV ESP,EBP
0052638c  5d                        POP EBP
0052638d  8be3                      MOV ESP,EBX
0052638f  5b                        POP EBX
00526390  c3                        RET
00526391  837e2c00                  CMP dword ptr [ESI + 0x2c],0x0
00526395  750c                      JNZ 0x005263a3
00526397  6a00                      PUSH 0x0
00526399  6818ddb100                PUSH 0xb1dd18
0052639e  e9af000000                JMP 0x00526452
005263a3  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005263aa  6a00                      PUSH 0x0
005263ac  8d4e48                    LEA ECX,[ESI + 0x48]
005263af  760a                      JBE 0x005263bb
005263b1  6820e0b100                PUSH 0xb1e020
005263b6  e99a000000                JMP 0x00526455
005263bb  6844e0b100                PUSH 0xb1e044
005263c0  e990000000                JMP 0x00526455
005263c5  f30f109e64030000          MOVSS XMM3,dword ptr [ESI + 0x364]
005263cd  f30f109660030000          MOVSS XMM2,dword ptr [ESI + 0x360]
005263d5  0f28c3                    MOVAPS XMM0,XMM3
005263d8  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
005263df  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
005263e6  0f2fd0                    COMISS XMM2,XMM0
005263e9  7646                      JBE 0x00526431
005263eb  6a00                      PUSH 0x0
005263ed  6830ddb100                PUSH 0xb1dd30
005263f2  8d4e48                    LEA ECX,[ESI + 0x48]
005263f5  e8863feeff                CALL 0x0040a380
005263fa  0f57c0                    XORPS XMM0,XMM0
005263fd  8d4e48                    LEA ECX,[ESI + 0x48]
00526400  0f2f8660030000            COMISS XMM0,dword ptr [ESI + 0x360]
00526407  6a00                      PUSH 0x0
00526409  0f97854fffffff            SETA byte ptr [EBP + 0xffffff4f]
00526410  e80b4eeeff                CALL 0x0040b220
00526415  8a8d4fffffff              MOV CL,byte ptr [EBP + 0xffffff4f]
0052641b  884832                    MOV byte ptr [EAX + 0x32],CL
0052641e  5f                        POP EDI
0052641f  5e                        POP ESI
00526420  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00526423  33cd                      XOR ECX,EBP
00526425  e8018d5c00                CALL 0x00aef12b
0052642a  8be5                      MOV ESP,EBP
0052642c  5d                        POP EBP
0052642d  8be3                      MOV ESP,EBX
0052642f  5b                        POP EBX
00526430  c3                        RET
00526431  837e2c00                  CMP dword ptr [ESI + 0x2c],0x0
00526435  0f845cffffff              JZ 0x00526397
0052643b  0f2f1de49fba00            COMISS XMM3,dword ptr [0x00ba9fe4]
00526442  6a00                      PUSH 0x0
00526444  7607                      JBE 0x0052644d
00526446  6844e0b100                PUSH 0xb1e044
0052644b  eb05                      JMP 0x00526452
0052644d  6820e0b100                PUSH 0xb1e020
00526452  8d4e48                    LEA ECX,[ESI + 0x48]
00526455  e8263feeff                CALL 0x0040a380
0052645a  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0052645d  5f                        POP EDI
0052645e  33cd                      XOR ECX,EBP
00526460  5e                        POP ESI
00526461  e8c58c5c00                CALL 0x00aef12b
00526466  8be5                      MOV ESP,EBP
00526468  5d                        POP EBP
00526469  8be3                      MOV ESP,EBX
0052646b  5b                        POP EBX
0052646c  c3                        RET
