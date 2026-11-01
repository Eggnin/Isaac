; J460 NPC AI 0x0097baa0 HELPER_Laser_UpdateRing
; types=7
; identities=7.*
; entry=0097baa0
0097baa0  53                        PUSH EBX
0097baa1  8bdc                      MOV EBX,ESP
0097baa3  83ec08                    SUB ESP,0x8
0097baa6  83e4f8                    AND ESP,0xfffffff8
0097baa9  83c404                    ADD ESP,0x4
0097baac  55                        PUSH EBP
0097baad  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0097bab0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0097bab4  8bec                      MOV EBP,ESP
0097bab6  6aff                      PUSH -0x1
0097bab8  68e8cbb000                PUSH 0xb0cbe8
0097babd  64a100000000              MOV EAX,FS:[0x0]
0097bac3  50                        PUSH EAX
0097bac4  53                        PUSH EBX
0097bac5  81eca8000000              SUB ESP,0xa8
0097bacb  a1b493bf00                MOV EAX,[0x00bf93b4]
0097bad0  33c5                      XOR EAX,EBP
0097bad2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0097bad5  56                        PUSH ESI
0097bad6  57                        PUSH EDI
0097bad7  50                        PUSH EAX
0097bad8  8d45f4                    LEA EAX,[EBP + -0xc]
0097badb  64a300000000              MOV FS:[0x0],EAX
0097bae1  8bf1                      MOV ESI,ECX
0097bae3  897588                    MOV dword ptr [EBP + -0x78],ESI
0097bae6  e8657fffff                CALL 0x00973a50
0097baeb  8a865c040000              MOV AL,byte ptr [ESI + 0x45c]
0097baf1  84c0                      TEST AL,AL
0097baf3  7508                      JNZ 0x0097bafd
0097baf5  388615050000              CMP byte ptr [ESI + 0x515],AL
0097bafb  750e                      JNZ 0x0097bb0b
0097bafd  0f108628040000            MOVUPS XMM0,xmmword ptr [ESI + 0x428]
0097bb04  0f118638040000            MOVUPS xmmword ptr [ESI + 0x438],XMM0
0097bb0b  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0097bb12  7544                      JNZ 0x0097bb58
0097bb14  80be7501000000            CMP byte ptr [ESI + 0x175],0x0
0097bb1b  753b                      JNZ 0x0097bb58
0097bb1d  837e2c08                  CMP dword ptr [ESI + 0x2c],0x8
0097bb21  7435                      JZ 0x0097bb58
0097bb23  84c0                      TEST AL,AL
0097bb25  7516                      JNZ 0x0097bb3d
0097bb27  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
0097bb2f  0f57d2                    XORPS XMM2,XMM2
0097bb32  8bce                      MOV ECX,ESI
0097bb34  e8270cd3ff                CALL 0x006ac760
0097bb39  85c0                      TEST EAX,EAX
0097bb3b  741b                      JZ 0x0097bb58
0097bb3d  83be2c05000000            CMP dword ptr [ESI + 0x52c],0x0
0097bb44  c645b701                  MOV byte ptr [EBP + -0x49],0x1
0097bb48  7512                      JNZ 0x0097bb5c
0097bb4a  8b8620050000              MOV EAX,dword ptr [ESI + 0x520]
0097bb50  898624050000              MOV dword ptr [ESI + 0x524],EAX
0097bb56  eb04                      JMP 0x0097bb5c
0097bb58  c645b700                  MOV byte ptr [EBP + -0x49],0x0
0097bb5c  80be7501000000            CMP byte ptr [ESI + 0x175],0x0
0097bb63  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
0097bb6b  751a                      JNZ 0x0097bb87
0097bb6d  837e3001                  CMP dword ptr [ESI + 0x30],0x1
0097bb71  7514                      JNZ 0x0097bb87
0097bb73  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
0097bb7b  f30f59c1                  MULSS XMM0,XMM1
0097bb7f  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
0097bb87  8b86ac040000              MOV EAX,dword ptr [ESI + 0x4ac]
0097bb8d  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0097bb95  8986b0040000              MOV dword ptr [ESI + 0x4b0],EAX
0097bb9b  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
0097bba1  898668040000              MOV dword ptr [ESI + 0x468],EAX
0097bba7  8b8640030000              MOV EAX,dword ptr [ESI + 0x340]
0097bbad  89866c040000              MOV dword ptr [ESI + 0x46c],EAX
0097bbb3  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0097bbbb  f30f118670040000          MOVSS dword ptr [ESI + 0x470],XMM0
0097bbc3  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0097bbcb  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
0097bbd3  f30f1086bc040000          MOVSS XMM0,dword ptr [ESI + 0x4bc]
0097bbdb  8bbebc030000              MOV EDI,dword ptr [ESI + 0x3bc]
0097bbe1  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0097bbe6  f30f114db0                MOVSS dword ptr [EBP + -0x50],XMM1
0097bbeb  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
0097bbf0  85ff                      TEST EDI,EDI
0097bbf2  7413                      JZ 0x0097bc07
0097bbf4  837f2803                  CMP dword ptr [EDI + 0x28],0x3
0097bbf8  750d                      JNZ 0x0097bc07
0097bbfa  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
0097bc02  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0097bc07  8b86c8030000              MOV EAX,dword ptr [ESI + 0x3c8]
0097bc0d  8945ac                    MOV dword ptr [EBP + -0x54],EAX
0097bc10  85c0                      TEST EAX,EAX
0097bc12  740c                      JZ 0x0097bc20
0097bc14  33c9                      XOR ECX,ECX
0097bc16  83782801                  CMP dword ptr [EAX + 0x28],0x1
0097bc1a  0f45c1                    CMOVNZ EAX,ECX
0097bc1d  8945ac                    MOV dword ptr [EBP + -0x54],EAX
0097bc20  8d9628040000              LEA EDX,[ESI + 0x428]
0097bc26  689048c300                PUSH 0xc34890
0097bc2b  8d8d78ffffff              LEA ECX,[EBP + 0xffffff78]
0097bc31  e83ab5a9ff                CALL 0x00417170
0097bc36  83c404                    ADD ESP,0x4
0097bc39  8b08                      MOV ECX,dword ptr [EAX]
0097bc3b  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097bc3e  7508                      JNZ 0x0097bc48
0097bc40  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097bc43  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097bc46  7427                      JZ 0x0097bc6f
0097bc48  f30f1086a4030000          MOVSS XMM0,dword ptr [ESI + 0x3a4]
0097bc50  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0097bc58  e8c318aaff                CALL 0x0041d520
0097bc5d  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0097bc65  f30f5845b8                ADDSS XMM0,dword ptr [EBP + -0x48]
0097bc6a  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0097bc6f  837e3003                  CMP dword ptr [ESI + 0x30],0x3
0097bc73  7509                      JNZ 0x0097bc7e
0097bc75  3b7dac                    CMP EDI,dword ptr [EBP + -0x54]
0097bc78  0f847f010000              JZ 0x0097bdfd
0097bc7e  68304bc300                PUSH 0xc34b30
0097bc83  8d9628040000              LEA EDX,[ESI + 0x428]
0097bc89  8d4d98                    LEA ECX,[EBP + -0x68]
0097bc8c  e8dfb4a9ff                CALL 0x00417170
0097bc91  f30f100d7cabba00          MOVSS XMM1,dword ptr [0x00baab7c]
0097bc99  83c404                    ADD ESP,0x4
0097bc9c  8b08                      MOV ECX,dword ptr [EAX]
0097bc9e  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097bca1  7508                      JNZ 0x0097bcab
0097bca3  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097bca6  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097bca9  747e                      JZ 0x0097bd29
0097bcab  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
0097bcae  85c0                      TEST EAX,EAX
0097bcb0  7440                      JZ 0x0097bcf2
0097bcb2  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0097bcba  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0097bcc2  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
0097bcca  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
0097bcd2  f30f59c0                  MULSS XMM0,XMM0
0097bcd6  f30f59c9                  MULSS XMM1,XMM1
0097bcda  f30f58c1                  ADDSS XMM0,XMM1
0097bcde  e86d9dabff                CALL 0x00435a50
0097bce3  f30f100d7cabba00          MOVSS XMM1,dword ptr [0x00baab7c]
0097bceb  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0097bcf0  eb0a                      JMP 0x0097bcfc
0097bcf2  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
0097bcf9  0f57c0                    XORPS XMM0,XMM0
0097bcfc  0f2fc1                    COMISS XMM0,XMM1
0097bcff  8d4594                    LEA EAX,[EBP + -0x6c]
0097bd02  c745940000fa43            MOV dword ptr [EBP + -0x6c],0x43fa0000
0097bd09  8d4dbc                    LEA ECX,[EBP + -0x44]
0097bd0c  0f46c1                    CMOVBE EAX,ECX
0097bd0f  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0097bd13  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
0097bd1b  f30f5ec1                  DIVSS XMM0,XMM1
0097bd1f  f30f5845b8                ADDSS XMM0,dword ptr [EBP + -0x48]
0097bd24  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0097bd29  68404cc300                PUSH 0xc34c40
0097bd2e  8d9628040000              LEA EDX,[ESI + 0x428]
0097bd34  8d4dd8                    LEA ECX,[EBP + -0x28]
0097bd37  e834b4a9ff                CALL 0x00417170
0097bd3c  83c404                    ADD ESP,0x4
0097bd3f  8b08                      MOV ECX,dword ptr [EAX]
0097bd41  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097bd44  750c                      JNZ 0x0097bd52
0097bd46  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097bd49  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097bd4c  0f8490000000              JZ 0x0097bde2
0097bd52  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
0097bd55  85c0                      TEST EAX,EAX
0097bd57  7440                      JZ 0x0097bd99
0097bd59  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0097bd61  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0097bd69  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
0097bd71  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
0097bd79  f30f59c0                  MULSS XMM0,XMM0
0097bd7d  f30f59c9                  MULSS XMM1,XMM1
0097bd81  f30f58c1                  ADDSS XMM0,XMM1
0097bd85  e8c69cabff                CALL 0x00435a50
0097bd8a  f30f100d7cabba00          MOVSS XMM1,dword ptr [0x00baab7c]
0097bd92  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0097bd97  eb0a                      JMP 0x0097bda3
0097bd99  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
0097bda0  0f57c0                    XORPS XMM0,XMM0
0097bda3  0f2fc1                    COMISS XMM0,XMM1
0097bda6  8d4594                    LEA EAX,[EBP + -0x6c]
0097bda9  c745940000fa43            MOV dword ptr [EBP + -0x6c],0x43fa0000
0097bdb0  8d4dbc                    LEA ECX,[EBP + -0x44]
0097bdb3  f30f105db0                MOVSS XMM3,dword ptr [EBP + -0x50]
0097bdb8  0f46c1                    CMOVBE EAX,ECX
0097bdbb  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0097bdbf  f30f5ec1                  DIVSS XMM0,XMM1
0097bdc3  0f28cb                    MOVAPS XMM1,XMM3
0097bdc6  f30f5cc8                  SUBSS XMM1,XMM0
0097bdca  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0097bdcf  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
0097bdd7  f30f58c1                  ADDSS XMM0,XMM1
0097bddb  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0097bde0  eb05                      JMP 0x0097bde7
0097bde2  f30f105db0                MOVSS XMM3,dword ptr [EBP + -0x50]
0097bde7  8b4630                    MOV EAX,dword ptr [ESI + 0x30]
0097bdea  83f802                    CMP EAX,0x2
0097bded  7442                      JZ 0x0097be31
0097bdef  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0097bdf4  83f803                    CMP EAX,0x3
0097bdf7  0f85af050000              JNZ 0x0097c3ac
0097bdfd  85ff                      TEST EDI,EDI
0097bdff  740d                      JZ 0x0097be0e
0097be01  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0097be08  0f84a1030000              JZ 0x0097c1af
0097be0e  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0097be15  0f85a1030000              JNZ 0x0097c1bc
0097be1b  c6867301000001            MOV byte ptr [ESI + 0x173],0x1
0097be22  c7865804000000000000      MOV dword ptr [ESI + 0x458],0x0
0097be2c  e97e030000                JMP 0x0097c1af
0097be31  a17816c700                MOV EAX,[0x00c71678]
0097be36  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0097be3c  2b8628030000              SUB EAX,dword ptr [ESI + 0x328]
0097be42  83f80a                    CMP EAX,0xa
0097be45  0f8d8f000000              JGE 0x0097beda
0097be4b  660f6ec0                  MOVD XMM0,EAX
0097be4f  0f28cb                    MOVAPS XMM1,XMM3
0097be52  0f5bc0                    CVTDQ2PS XMM0,XMM0
0097be55  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
0097be5d  f30f5cc8                  SUBSS XMM1,XMM0
0097be61  0f28c1                    MOVAPS XMM0,XMM1
0097be64  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
0097be69  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0097be71  e8aa16aaff                CALL 0x0041d520
0097be76  f30f1055bc                MOVSS XMM2,dword ptr [EBP + -0x44]
0097be7b  8d45bc                    LEA EAX,[EBP + -0x44]
0097be7e  0f28ca                    MOVAPS XMM1,XMM2
0097be81  f30f59c2                  MULSS XMM0,XMM2
0097be85  8d4d94                    LEA ECX,[EBP + -0x6c]
0097be88  c745940000a040            MOV dword ptr [EBP + -0x6c],0x40a00000
0097be8f  f30f59ca                  MULSS XMM1,XMM2
0097be93  f30f59ca                  MULSS XMM1,XMM2
0097be97  f30f5cc8                  SUBSS XMM1,XMM0
0097be9b  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
0097bea0  f30f5cc1                  SUBSS XMM0,XMM1
0097bea4  f30f104db8                MOVSS XMM1,dword ptr [EBP + -0x48]
0097bea9  f30f59c1                  MULSS XMM0,XMM1
0097bead  0f2f0584a7ba00            COMISS XMM0,dword ptr [0x00baa784]
0097beb4  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0097beb9  0f46c1                    CMOVBE EAX,ECX
0097bebc  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0097bec0  0f2fc1                    COMISS XMM0,XMM1
0097bec3  760b                      JBE 0x0097bed0
0097bec5  f30f5ec1                  DIVSS XMM0,XMM1
0097bec9  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0097bece  eb0f                      JMP 0x0097bedf
0097bed0  0f28c8                    MOVAPS XMM1,XMM0
0097bed3  f30f114db8                MOVSS dword ptr [EBP + -0x48],XMM1
0097bed8  eb05                      JMP 0x0097bedf
0097beda  f30f104db8                MOVSS XMM1,dword ptr [EBP + -0x48]
0097bedf  83ec0c                    SUB ESP,0xc
0097bee2  8dbe3c030000              LEA EDI,[ESI + 0x33c]
0097bee8  8d45a0                    LEA EAX,[EBP + -0x60]
0097beeb  0f28d9                    MOVAPS XMM3,XMM1
0097beee  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
0097bef4  f30f114c2404              MOVSS dword ptr [ESP + 0x4],XMM1
0097befa  f30f110c24                MOVSS dword ptr [ESP],XMM1
0097beff  57                        PUSH EDI
0097bf00  50                        PUSH EAX
0097bf01  a17816c700                MOV EAX,[0x00c71678]
0097bf06  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0097bf0c  e83f70e9ff                CALL 0x00812f50
0097bf11  68804bc300                PUSH 0xc34b80
0097bf16  8d9628040000              LEA EDX,[ESI + 0x428]
0097bf1c  8d4dd8                    LEA ECX,[EBP + -0x28]
0097bf1f  e84cb2a9ff                CALL 0x00417170
0097bf24  83c404                    ADD ESP,0x4
0097bf27  8b08                      MOV ECX,dword ptr [EAX]
0097bf29  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097bf2c  0f854b010000              JNZ 0x0097c07d
0097bf32  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097bf35  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097bf38  0f853f010000              JNZ 0x0097c07d
0097bf3e  68d048c300                PUSH 0xc348d0
0097bf43  8d9628040000              LEA EDX,[ESI + 0x428]
0097bf49  8d4dd8                    LEA ECX,[EBP + -0x28]
0097bf4c  e81fb2a9ff                CALL 0x00417170
0097bf51  83c404                    ADD ESP,0x4
0097bf54  8b08                      MOV ECX,dword ptr [EAX]
0097bf56  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097bf59  0f8550020000              JNZ 0x0097c1af
0097bf5f  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097bf62  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097bf65  0f8544020000              JNZ 0x0097c1af
0097bf6b  f30f104da0                MOVSS XMM1,dword ptr [EBP + -0x60]
0097bf70  f30f5c0f                  SUBSS XMM1,dword ptr [EDI]
0097bf74  f30f1055a4                MOVSS XMM2,dword ptr [EBP + -0x5c]
0097bf79  f30f5c5704                SUBSS XMM2,dword ptr [EDI + 0x4]
0097bf7e  0f28c1                    MOVAPS XMM0,XMM1
0097bf81  f30f114d94                MOVSS dword ptr [EBP + -0x6c],XMM1
0097bf86  f30f59c1                  MULSS XMM0,XMM1
0097bf8a  0f28ca                    MOVAPS XMM1,XMM2
0097bf8d  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
0097bf92  f30f59ca                  MULSS XMM1,XMM2
0097bf96  f30f58c1                  ADDSS XMM0,XMM1
0097bf9a  e8b19aabff                CALL 0x00435a50
0097bf9f  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0097bfa6  7628                      JBE 0x0097bfd0
0097bfa8  f30f104db0                MOVSS XMM1,dword ptr [EBP + -0x50]
0097bfad  f30f5ec8                  DIVSS XMM1,XMM0
0097bfb1  f30f105594                MOVSS XMM2,dword ptr [EBP + -0x6c]
0097bfb6  0f28c1                    MOVAPS XMM0,XMM1
0097bfb9  f30f59d0                  MULSS XMM2,XMM0
0097bfbd  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
0097bfc2  f30f59c1                  MULSS XMM0,XMM1
0097bfc6  f30f115594                MOVSS dword ptr [EBP + -0x6c],XMM2
0097bfcb  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0097bfd0  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
0097bfd8  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
0097bfe0  0f28c1                    MOVAPS XMM0,XMM1
0097bfe3  f30f59c1                  MULSS XMM0,XMM1
0097bfe7  f30f114d84                MOVSS dword ptr [EBP + -0x7c],XMM1
0097bfec  0f28ca                    MOVAPS XMM1,XMM2
0097bfef  f30f59ca                  MULSS XMM1,XMM2
0097bff3  f30f1155a4                MOVSS dword ptr [EBP + -0x5c],XMM2
0097bff8  f30f58c1                  ADDSS XMM0,XMM1
0097bffc  e84f9aabff                CALL 0x00435a50
0097c001  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0097c008  7626                      JBE 0x0097c030
0097c00a  f30f104db0                MOVSS XMM1,dword ptr [EBP + -0x50]
0097c00f  f30f5ec8                  DIVSS XMM1,XMM0
0097c013  f30f109660030000          MOVSS XMM2,dword ptr [ESI + 0x360]
0097c01b  f30f109e64030000          MOVSS XMM3,dword ptr [ESI + 0x364]
0097c023  0f28c1                    MOVAPS XMM0,XMM1
0097c026  f30f59d0                  MULSS XMM2,XMM0
0097c02a  f30f59d9                  MULSS XMM3,XMM1
0097c02e  eb0a                      JMP 0x0097c03a
0097c030  f30f105584                MOVSS XMM2,dword ptr [EBP + -0x7c]
0097c035  f30f105da4                MOVSS XMM3,dword ptr [EBP + -0x5c]
0097c03a  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
0097c03f  f30f104d94                MOVSS XMM1,dword ptr [EBP + -0x6c]
0097c044  f30f59c3                  MULSS XMM0,XMM3
0097c048  f30f59ca                  MULSS XMM1,XMM2
0097c04c  f30f58c8                  ADDSS XMM1,XMM0
0097c050  f30f100540adba00          MOVSS XMM0,dword ptr [0x00baad40]
0097c058  0f2fc1                    COMISS XMM0,XMM1
0097c05b  0f864e010000              JBE 0x0097c1af
0097c061  83be5804000000            CMP dword ptr [ESI + 0x458],0x0
0097c068  0f8541010000              JNZ 0x0097c1af
0097c06e  c7865804000005000000      MOV dword ptr [ESI + 0x458],0x5
0097c078  e932010000                JMP 0x0097c1af
0097c07d  f30f1017                  MOVSS XMM2,dword ptr [EDI]
0097c081  8d8660030000              LEA EAX,[ESI + 0x360]
0097c087  f30f104da0                MOVSS XMM1,dword ptr [EBP + -0x60]
0097c08c  0f57db                    XORPS XMM3,XMM3
0097c08f  0f2fd1                    COMISS XMM2,XMM1
0097c092  7609                      JBE 0x0097c09d
0097c094  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0097c098  0f2fc3                    COMISS XMM0,XMM3
0097c09b  770e                      JA 0x0097c0ab
0097c09d  0f2fca                    COMISS XMM1,XMM2
0097c0a0  7671                      JBE 0x0097c113
0097c0a2  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0097c0a6  0f2fd8                    COMISS XMM3,XMM0
0097c0a9  7668                      JBE 0x0097c113
0097c0ab  f30f590550adba00          MULSS XMM0,dword ptr [0x00baad50]
0097c0b3  b9804bc300                MOV ECX,0xc34b80
0097c0b8  f30f110f                  MOVSS dword ptr [EDI],XMM1
0097c0bc  f30f1100                  MOVSS dword ptr [EAX],XMM0
0097c0c0  8d45d8                    LEA EAX,[EBP + -0x28]
0097c0c3  50                        PUSH EAX
0097c0c4  e83761c1ff                CALL 0x00592200
0097c0c9  8dbe28040000              LEA EDI,[ESI + 0x428]
0097c0cf  8b08                      MOV ECX,dword ptr [EAX]
0097c0d1  210f                      AND dword ptr [EDI],ECX
0097c0d3  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
0097c0d6  214f04                    AND dword ptr [EDI + 0x4],ECX
0097c0d9  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097c0dc  214f08                    AND dword ptr [EDI + 0x8],ECX
0097c0df  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
0097c0e2  21470c                    AND dword ptr [EDI + 0xc],EAX
0097c0e5  a1804bc300                MOV EAX,[0x00c34b80]
0097c0ea  098648040000              OR dword ptr [ESI + 0x448],EAX
0097c0f0  a1844bc300                MOV EAX,[0x00c34b84]
0097c0f5  09864c040000              OR dword ptr [ESI + 0x44c],EAX
0097c0fb  a1884bc300                MOV EAX,[0x00c34b88]
0097c100  098650040000              OR dword ptr [ESI + 0x450],EAX
0097c106  a18c4bc300                MOV EAX,[0x00c34b8c]
0097c10b  098654040000              OR dword ptr [ESI + 0x454],EAX
0097c111  eb06                      JMP 0x0097c119
0097c113  8dbe28040000              LEA EDI,[ESI + 0x428]
0097c119  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
0097c121  8d8664030000              LEA EAX,[ESI + 0x364]
0097c127  f30f104da4                MOVSS XMM1,dword ptr [EBP + -0x5c]
0097c12c  0f57db                    XORPS XMM3,XMM3
0097c12f  0f2fd1                    COMISS XMM2,XMM1
0097c132  7609                      JBE 0x0097c13d
0097c134  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0097c138  0f2fc3                    COMISS XMM0,XMM3
0097c13b  770e                      JA 0x0097c14b
0097c13d  0f2fca                    COMISS XMM1,XMM2
0097c140  766d                      JBE 0x0097c1af
0097c142  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0097c146  0f2fd8                    COMISS XMM3,XMM0
0097c149  7664                      JBE 0x0097c1af
0097c14b  f30f590550adba00          MULSS XMM0,dword ptr [0x00baad50]
0097c153  b9804bc300                MOV ECX,0xc34b80
0097c158  f30f118e40030000          MOVSS dword ptr [ESI + 0x340],XMM1
0097c160  f30f1100                  MOVSS dword ptr [EAX],XMM0
0097c164  8d45d8                    LEA EAX,[EBP + -0x28]
0097c167  50                        PUSH EAX
0097c168  e89360c1ff                CALL 0x00592200
0097c16d  8b08                      MOV ECX,dword ptr [EAX]
0097c16f  210f                      AND dword ptr [EDI],ECX
0097c171  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
0097c174  214f04                    AND dword ptr [EDI + 0x4],ECX
0097c177  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097c17a  214f08                    AND dword ptr [EDI + 0x8],ECX
0097c17d  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
0097c180  21470c                    AND dword ptr [EDI + 0xc],EAX
0097c183  a1804bc300                MOV EAX,[0x00c34b80]
0097c188  098648040000              OR dword ptr [ESI + 0x448],EAX
0097c18e  a1844bc300                MOV EAX,[0x00c34b84]
0097c193  09864c040000              OR dword ptr [ESI + 0x44c],EAX
0097c199  a1884bc300                MOV EAX,[0x00c34b88]
0097c19e  098650040000              OR dword ptr [ESI + 0x450],EAX
0097c1a4  a18c4bc300                MOV EAX,[0x00c34b8c]
0097c1a9  098654040000              OR dword ptr [ESI + 0x454],EAX
0097c1af  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0097c1b6  0f8445010000              JZ 0x0097c301
0097c1bc  837e2c02                  CMP dword ptr [ESI + 0x2c],0x2
0097c1c0  0f8534010000              JNZ 0x0097c2fa
0097c1c6  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0097c1c9  8d4648                    LEA EAX,[ESI + 0x48]
0097c1cc  85c9                      TEST ECX,ECX
0097c1ce  0f84f2000000              JZ 0x0097c2c6
0097c1d4  80793400                  CMP byte ptr [ECX + 0x34],0x0
0097c1d8  0f84e8000000              JZ 0x0097c2c6
0097c1de  8d45d0                    LEA EAX,[EBP + -0x30]
0097c1e1  50                        PUSH EAX
0097c1e2  8d4e78                    LEA ECX,[ESI + 0x78]
0097c1e5  e8066aadff                CALL 0x00452bf0
0097c1ea  6a04                      PUSH 0x4
0097c1ec  684418b600                PUSH 0xb61844
0097c1f1  8d4dd0                    LEA ECX,[EBP + -0x30]
0097c1f4  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0097c1fb  e8f0d5b1ff                CALL 0x004997f0
0097c200  837de410                  CMP dword ptr [EBP + -0x1c],0x10
0097c204  8d4dd0                    LEA ECX,[EBP + -0x30]
0097c207  8b7dd0                    MOV EDI,dword ptr [EBP + -0x30]
0097c20a  0f43cf                    CMOVNC ECX,EDI
0097c20d  894dbc                    MOV dword ptr [EBP + -0x44],ECX
0097c210  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0097c213  85c9                      TEST ECX,ECX
0097c215  7448                      JZ 0x0097c25f
0097c217  83791410                  CMP dword ptr [ECX + 0x14],0x10
0097c21b  8bc1                      MOV EAX,ECX
0097c21d  7202                      JC 0x0097c221
0097c21f  8b01                      MOV EAX,dword ptr [ECX]
0097c221  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0097c224  8a10                      MOV DL,byte ptr [EAX]
0097c226  3a11                      CMP DL,byte ptr [ECX]
0097c228  751a                      JNZ 0x0097c244
0097c22a  84d2                      TEST DL,DL
0097c22c  7412                      JZ 0x0097c240
0097c22e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0097c231  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0097c234  750e                      JNZ 0x0097c244
0097c236  83c002                    ADD EAX,0x2
0097c239  83c102                    ADD ECX,0x2
0097c23c  84d2                      TEST DL,DL
0097c23e  75e4                      JNZ 0x0097c224
0097c240  33c0                      XOR EAX,EAX
0097c242  eb05                      JMP 0x0097c249
0097c244  1bc0                      SBB EAX,EAX
0097c246  83c801                    OR EAX,0x1
0097c249  85c0                      TEST EAX,EAX
0097c24b  7512                      JNZ 0x0097c25f
0097c24d  8b467c                    MOV EAX,dword ptr [ESI + 0x7c]
0097c250  80783400                  CMP byte ptr [EAX + 0x34],0x0
0097c254  742f                      JZ 0x0097c285
0097c256  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
0097c25d  7526                      JNZ 0x0097c285
0097c25f  6a01                      PUSH 0x1
0097c261  ff75bc                    PUSH dword ptr [EBP + -0x44]
0097c264  8d4e48                    LEA ECX,[ESI + 0x48]
0097c267  e864e3a8ff                CALL 0x0040a5d0
0097c26c  84c0                      TEST AL,AL
0097c26e  7412                      JZ 0x0097c282
0097c270  8d4e78                    LEA ECX,[ESI + 0x78]
0097c273  e838dfa8ff                CALL 0x0040a1b0
0097c278  c6868c00000001            MOV byte ptr [ESI + 0x8c],0x1
0097c27f  8b7588                    MOV ESI,dword ptr [EBP + -0x78]
0097c282  8b7dd0                    MOV EDI,dword ptr [EBP + -0x30]
0097c285  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0097c28c  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
0097c28f  83f810                    CMP EAX,0x10
0097c292  722d                      JC 0x0097c2c1
0097c294  8d4801                    LEA ECX,[EAX + 0x1]
0097c297  8bc7                      MOV EAX,EDI
0097c299  81f900100000              CMP ECX,0x1000
0097c29f  7216                      JC 0x0097c2b7
0097c2a1  8b7ffc                    MOV EDI,dword ptr [EDI + -0x4]
0097c2a4  83c123                    ADD ECX,0x23
0097c2a7  2bc7                      SUB EAX,EDI
0097c2a9  83c0fc                    ADD EAX,-0x4
0097c2ac  83f81f                    CMP EAX,0x1f
0097c2af  7606                      JBE 0x0097c2b7
0097c2b1  ff159488b100              CALL dword ptr [0x00b18894]
0097c2b7  51                        PUSH ECX
0097c2b8  57                        PUSH EDI
0097c2b9  e89e2e1700                CALL 0x00aef15c
0097c2be  83c408                    ADD ESP,0x8
0097c2c1  8b4e7c                    MOV ECX,dword ptr [ESI + 0x7c]
0097c2c4  eb27                      JMP 0x0097c2ed
0097c2c6  83783400                  CMP dword ptr [EAX + 0x34],0x0
0097c2ca  750a                      JNZ 0x0097c2d6
0097c2cc  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0097c2d4  eb05                      JMP 0x0097c2db
0097c2d6  f30f104040                MOVSS XMM0,dword ptr [EAX + 0x40]
0097c2db  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0097c2e3  f30f5845b0                ADDSS XMM0,dword ptr [EBP + -0x50]
0097c2e8  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0097c2ed  85c9                      TEST ECX,ECX
0097c2ef  7409                      JZ 0x0097c2fa
0097c2f1  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
0097c2f8  7507                      JNZ 0x0097c301
0097c2fa  8b06                      MOV EAX,dword ptr [ESI]
0097c2fc  8bce                      MOV ECX,ESI
0097c2fe  ff5028                    CALL dword ptr [EAX + 0x28]
0097c301  8b8e58040000              MOV ECX,dword ptr [ESI + 0x458]
0097c307  8dbe58040000              LEA EDI,[ESI + 0x458]
0097c30d  85c9                      TEST ECX,ECX
0097c30f  0f8e92000000              JLE 0x0097c3a7
0097c315  80be7501000000            CMP byte ptr [ESI + 0x175],0x0
0097c31c  0f8585000000              JNZ 0x0097c3a7
0097c322  837e2c02                  CMP dword ptr [ESI + 0x2c],0x2
0097c326  8bd1                      MOV EDX,ECX
0097c328  7466                      JZ 0x0097c390
0097c32a  837e3002                  CMP dword ptr [ESI + 0x30],0x2
0097c32e  7560                      JNZ 0x0097c390
0097c330  b805000000                MOV EAX,0x5
0097c335  2bc1                      SUB EAX,ECX
0097c337  8d4e48                    LEA ECX,[ESI + 0x48]
0097c33a  660f6ec0                  MOVD XMM0,EAX
0097c33e  8d86b8010000              LEA EAX,[ESI + 0x1b8]
0097c344  0f5bc0                    CVTDQ2PS XMM0,XMM0
0097c347  50                        PUSH EAX
0097c348  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0097c350  f30f5845b0                ADDSS XMM0,dword ptr [EBP + -0x50]
0097c355  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0097c35a  e871b0a8ff                CALL 0x004073d0
0097c35f  8b17                      MOV EDX,dword ptr [EDI]
0097c361  8d45a4                    LEA EAX,[EBP + -0x5c]
0097c364  83fa05                    CMP EDX,0x5
0097c367  c745a405000000            MOV dword ptr [EBP + -0x5c],0x5
0097c36e  0f4cc7                    CMOVL EAX,EDI
0097c371  660f6e00                  MOVD XMM0,dword ptr [EAX]
0097c375  0f5bc0                    CVTDQ2PS XMM0,XMM0
0097c378  f30f5986fc000000          MULSS XMM0,dword ptr [ESI + 0xfc]
0097c380  f30f5e0584a7ba00          DIVSS XMM0,dword ptr [0x00baa784]
0097c388  f30f1186fc000000          MOVSS dword ptr [ESI + 0xfc],XMM0
0097c390  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0097c395  8d42ff                    LEA EAX,[EDX + -0x1]
0097c398  8907                      MOV dword ptr [EDI],EAX
0097c39a  85c0                      TEST EAX,EAX
0097c39c  7f0e                      JG 0x0097c3ac
0097c39e  c6867301000001            MOV byte ptr [ESI + 0x173],0x1
0097c3a5  eb05                      JMP 0x0097c3ac
0097c3a7  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0097c3ac  837e3003                  CMP dword ptr [ESI + 0x30],0x3
0097c3b0  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
0097c3b8  f30f1155bc                MOVSS dword ptr [EBP + -0x44],XMM2
0097c3bd  0f859a020000              JNZ 0x0097c65d
0097c3c3  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
0097c3c9  85c0                      TEST EAX,EAX
0097c3cb  745f                      JZ 0x0097c42c
0097c3cd  80bee404000000            CMP byte ptr [ESI + 0x4e4],0x0
0097c3d4  7556                      JNZ 0x0097c42c
0097c3d6  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0097c3de  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0097c3e6  f30f588610040000          ADDSS XMM0,dword ptr [ESI + 0x410]
0097c3ee  f30f588e14040000          ADDSS XMM1,dword ptr [ESI + 0x414]
0097c3f6  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
0097c3fe  f30f118e40030000          MOVSS dword ptr [ESI + 0x340],XMM1
0097c406  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
0097c40c  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0097c414  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
0097c41c  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0097c424  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0097c42c  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
0097c42f  83f801                    CMP EAX,0x1
0097c432  7413                      JZ 0x0097c447
0097c434  83f809                    CMP EAX,0x9
0097c437  740e                      JZ 0x0097c447
0097c439  83f80b                    CMP EAX,0xb
0097c43c  7409                      JZ 0x0097c447
0097c43e  83f80e                    CMP EAX,0xe
0097c441  0f85a4000000              JNZ 0x0097c4eb
0097c447  83be5804000014            CMP dword ptr [ESI + 0x458],0x14
0097c44e  8d8658040000              LEA EAX,[ESI + 0x458]
0097c454  8d4da4                    LEA ECX,[EBP + -0x5c]
0097c457  c745a414000000            MOV dword ptr [EBP + -0x5c],0x14
0097c45e  0f4cc8                    CMOVL ECX,EAX
0097c461  c7854cffffff0000803f      MOV dword ptr [EBP + 0xffffff4c],0x3f800000
0097c46b  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
0097c471  c78550ffffff0000803f      MOV dword ptr [EBP + 0xffffff50],0x3f800000
0097c47b  0f57c9                    XORPS XMM1,XMM1
0097c47e  c78554ffffff0000803f      MOV dword ptr [EBP + 0xffffff54],0x3f800000
0097c488  c7856cffffff00000000      MOV dword ptr [EBP + 0xffffff6c],0x0
0097c492  660f6e01                  MOVD XMM0,dword ptr [ECX]
0097c496  8d8ef0000000              LEA ECX,[ESI + 0xf0]
0097c49c  c78570ffffff00000000      MOV dword ptr [EBP + 0xffffff70],0x0
0097c4a6  c78574ffffff00000000      MOV dword ptr [EBP + 0xffffff74],0x0
0097c4b0  0f5bc0                    CVTDQ2PS XMM0,XMM0
0097c4b3  f30f5e057ca8ba00          DIVSS XMM0,dword ptr [0x00baa87c]
0097c4bb  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
0097c4c3  3bc8                      CMP ECX,EAX
0097c4c5  7424                      JZ 0x0097c4eb
0097c4c7  0f10854cffffff            MOVUPS XMM0,xmmword ptr [EBP + 0xffffff4c]
0097c4ce  8b8574ffffff              MOV EAX,dword ptr [EBP + 0xffffff74]
0097c4d4  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
0097c4d8  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0097c4db  f30f7e856cffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff6c]
0097c4e3  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0097c4e8  894128                    MOV dword ptr [ECX + 0x28],EAX
0097c4eb  8d8e3c030000              LEA ECX,[ESI + 0x33c]
0097c4f1  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
0097c4f4  83f802                    CMP EAX,0x2
0097c4f7  7409                      JZ 0x0097c502
0097c4f9  83f80a                    CMP EAX,0xa
0097c4fc  0f8527010000              JNZ 0x0097c629
0097c502  8bbec0030000              MOV EDI,dword ptr [ESI + 0x3c0]
0097c508  85ff                      TEST EDI,EDI
0097c50a  0f8419010000              JZ 0x0097c629
0097c510  80be7501000000            CMP byte ptr [ESI + 0x175],0x0
0097c517  f30f1019                  MOVSS XMM3,dword ptr [ECX]
0097c51b  f30f105104                MOVSS XMM2,dword ptr [ECX + 0x4]
0097c520  0f85a0000000              JNZ 0x0097c5c6
0097c526  68d048c300                PUSH 0xc348d0
0097c52b  8d9628040000              LEA EDX,[ESI + 0x428]
0097c531  8d4dd8                    LEA ECX,[EBP + -0x28]
0097c534  e837aca9ff                CALL 0x00417170
0097c539  83c404                    ADD ESP,0x4
0097c53c  8b08                      MOV ECX,dword ptr [EAX]
0097c53e  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097c541  0f857f000000              JNZ 0x0097c5c6
0097c547  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097c54a  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097c54d  7577                      JNZ 0x0097c5c6
0097c54f  837e3003                  CMP dword ptr [ESI + 0x30],0x3
0097c553  7471                      JZ 0x0097c5c6
0097c555  f30f108e6c030000          MOVSS XMM1,dword ptr [ESI + 0x36c]
0097c55d  8d45a0                    LEA EAX,[EBP + -0x60]
0097c560  0f28c1                    MOVAPS XMM0,XMM1
0097c563  83ec0c                    SUB ESP,0xc
0097c566  f30f598660030000          MULSS XMM0,dword ptr [ESI + 0x360]
0097c56e  f30f598e64030000          MULSS XMM1,dword ptr [ESI + 0x364]
0097c576  f30f58c3                  ADDSS XMM0,XMM3
0097c57a  f30f58ca                  ADDSS XMM1,XMM2
0097c57e  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
0097c583  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
0097c588  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
0097c58e  0f28d8                    MOVAPS XMM3,XMM0
0097c591  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
0097c597  f30f110424                MOVSS dword ptr [ESP],XMM0
0097c59c  50                        PUSH EAX
0097c59d  8d4580                    LEA EAX,[EBP + -0x80]
0097c5a0  f30f114da4                MOVSS dword ptr [EBP + -0x5c],XMM1
0097c5a5  50                        PUSH EAX
0097c5a6  a17816c700                MOV EAX,[0x00c71678]
0097c5ab  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0097c5b1  e89a69e9ff                CALL 0x00812f50
0097c5b6  f30f105d80                MOVSS XMM3,dword ptr [EBP + -0x80]
0097c5bb  f30f105584                MOVSS XMM2,dword ptr [EBP + -0x7c]
0097c5c0  8bbec0030000              MOV EDI,dword ptr [ESI + 0x3c0]
0097c5c6  837e3002                  CMP dword ptr [ESI + 0x30],0x2
0097c5ca  7510                      JNZ 0x0097c5dc
0097c5cc  f30f5c9664030000          SUBSS XMM2,dword ptr [ESI + 0x364]
0097c5d4  f30f5c9e60030000          SUBSS XMM3,dword ptr [ESI + 0x360]
0097c5dc  f30f119f3c030000          MOVSS dword ptr [EDI + 0x33c],XMM3
0097c5e4  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
0097c5ec  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
0097c5f2  6a01                      PUSH 0x1
0097c5f4  6a00                      PUSH 0x0
0097c5f6  68ff000000                PUSH 0xff
0097c5fb  8b01                      MOV EAX,dword ptr [ECX]
0097c5fd  6aff                      PUSH -0x1
0097c5ff  8b503c                    MOV EDX,dword ptr [EAX + 0x3c]
0097c602  8d86f0000000              LEA EAX,[ESI + 0xf0]
0097c608  50                        PUSH EAX
0097c609  ffd2                      CALL EDX
0097c60b  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
0097c611  8b864c030000              MOV EAX,dword ptr [ESI + 0x34c]
0097c617  89814c030000              MOV dword ptr [ECX + 0x34c],EAX
0097c61d  8b8650030000              MOV EAX,dword ptr [ESI + 0x350]
0097c623  898150030000              MOV dword ptr [ECX + 0x350],EAX
0097c629  68a04bc300                PUSH 0xc34ba0
0097c62e  8d9628040000              LEA EDX,[ESI + 0x428]
0097c634  8d4dd8                    LEA ECX,[EBP + -0x28]
0097c637  e834aba9ff                CALL 0x00417170
0097c63c  83c404                    ADD ESP,0x4
0097c63f  8b08                      MOV ECX,dword ptr [EAX]
0097c641  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097c644  0f8553010000              JNZ 0x0097c79d
0097c64a  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097c64d  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097c650  0f8547010000              JNZ 0x0097c79d
0097c656  33c0                      XOR EAX,EAX
0097c658  e945010000                JMP 0x0097c7a2
0097c65d  68d048c300                PUSH 0xc348d0
0097c662  8d9628040000              LEA EDX,[ESI + 0x428]
0097c668  8d4dd8                    LEA ECX,[EBP + -0x28]
0097c66b  e800aba9ff                CALL 0x00417170
0097c670  83c404                    ADD ESP,0x4
0097c673  8b08                      MOV ECX,dword ptr [EAX]
0097c675  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097c678  7558                      JNZ 0x0097c6d2
0097c67a  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097c67d  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097c680  7550                      JNZ 0x0097c6d2
0097c682  83ec0c                    SUB ESP,0xc
0097c685  8d863c030000              LEA EAX,[ESI + 0x33c]
0097c68b  0f28d8                    MOVAPS XMM3,XMM0
0097c68e  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
0097c694  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
0097c69a  f30f110424                MOVSS dword ptr [ESP],XMM0
0097c69f  50                        PUSH EAX
0097c6a0  8d45a0                    LEA EAX,[EBP + -0x60]
0097c6a3  50                        PUSH EAX
0097c6a4  a17816c700                MOV EAX,[0x00c71678]
0097c6a9  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0097c6af  e89c68e9ff                CALL 0x00812f50
0097c6b4  f30f1045a0                MOVSS XMM0,dword ptr [EBP + -0x60]
0097c6b9  8d8e3c030000              LEA ECX,[ESI + 0x33c]
0097c6bf  f30f1101                  MOVSS dword ptr [ECX],XMM0
0097c6c3  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
0097c6c8  f30f114104                MOVSS dword ptr [ECX + 0x4],XMM0
0097c6cd  e91ffeffff                JMP 0x0097c4f1
0097c6d2  80be7501000000            CMP byte ptr [ESI + 0x175],0x0
0097c6d9  0f850cfeffff              JNZ 0x0097c4eb
0097c6df  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0097c6e7  8dbe3c030000              LEA EDI,[ESI + 0x33c]
0097c6ed  f30f101d80aeba00          MOVSS XMM3,dword ptr [0x00baae80]
0097c6f5  8d4590                    LEA EAX,[EBP + -0x70]
0097c6f8  83ec0c                    SUB ESP,0xc
0097c6fb  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0097c700  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
0097c705  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
0097c70a  c7442408000048c3          MOV dword ptr [ESP + 0x8],0xc3480000
0097c712  c7442404000048c3          MOV dword ptr [ESP + 0x4],0xc3480000
0097c71a  c70424000048c3            MOV dword ptr [ESP],0xc3480000
0097c721  57                        PUSH EDI
0097c722  50                        PUSH EAX
0097c723  a17816c700                MOV EAX,[0x00c71678]
0097c728  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0097c72e  e8ad6ae9ff                CALL 0x008131e0
0097c733  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
0097c738  f30f1107                  MOVSS dword ptr [EDI],XMM0
0097c73c  f30f104594                MOVSS XMM0,dword ptr [EBP + -0x6c]
0097c741  f30f114704                MOVSS dword ptr [EDI + 0x4],XMM0
0097c746  f30f1007                  MOVSS XMM0,dword ptr [EDI]
0097c74a  0f2e45a4                  UCOMISS XMM0,dword ptr [EBP + -0x5c]
0097c74e  9f                        LAHF
0097c74f  f6c444                    TEST AH,0x44
0097c752  7a13                      JP 0x0097c767
0097c754  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
0097c759  0f2e4584                  UCOMISS XMM0,dword ptr [EBP + -0x7c]
0097c75d  9f                        LAHF
0097c75e  f6c444                    TEST AH,0x44
0097c761  0f8b84fdffff              JNP 0x0097c4eb
0097c767  837e3002                  CMP dword ptr [ESI + 0x30],0x2
0097c76b  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
0097c770  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
0097c775  0f8570fdffff              JNZ 0x0097c4eb
0097c77b  83be5804000000            CMP dword ptr [ESI + 0x458],0x0
0097c782  8d8e3c030000              LEA ECX,[ESI + 0x33c]
0097c788  0f8563fdffff              JNZ 0x0097c4f1
0097c78e  c786580400002d000000      MOV dword ptr [ESI + 0x458],0x2d
0097c798  e954fdffff                JMP 0x0097c4f1
0097c79d  b801000000                MOV EAX,0x1
0097c7a2  8b96bc030000              MOV EDX,dword ptr [ESI + 0x3bc]
0097c7a8  8d8e3c030000              LEA ECX,[ESI + 0x33c]
0097c7ae  f30f1055b8                MOVSS XMM2,dword ptr [EBP + -0x48]
0097c7b3  8dbe64040000              LEA EDI,[ESI + 0x464]
0097c7b9  f30f59558c                MULSS XMM2,dword ptr [EBP + -0x74]
0097c7be  52                        PUSH EDX
0097c7bf  50                        PUSH EAX
0097c7c0  51                        PUSH ECX
0097c7c1  8bcf                      MOV ECX,EDI
0097c7c3  e888400200                CALL 0x009a0850
0097c7c8  f30f104dbc                MOVSS XMM1,dword ptr [EBP + -0x44]
0097c7cd  8bcf                      MOV ECX,EDI
0097c7cf  e88c1b0200                CALL 0x0099e360
0097c7d4  f30f100d20a0ba00          MOVSS XMM1,dword ptr [0x00baa020]
0097c7dc  8bcf                      MOV ECX,EDI
0097c7de  e8fd450200                CALL 0x009a0de0
0097c7e3  687048c300                PUSH 0xc34870
0097c7e8  8d9628040000              LEA EDX,[ESI + 0x428]
0097c7ee  8d4dd8                    LEA ECX,[EBP + -0x28]
0097c7f1  e87aa9a9ff                CALL 0x00417170
0097c7f6  83c404                    ADD ESP,0x4
0097c7f9  8b08                      MOV ECX,dword ptr [EAX]
0097c7fb  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097c7fe  7508                      JNZ 0x0097c808
0097c800  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097c803  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097c806  7475                      JZ 0x0097c87d
0097c808  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
0097c80e  85c0                      TEST EAX,EAX
0097c810  7447                      JZ 0x0097c859
0097c812  83782808                  CMP dword ptr [EAX + 0x28],0x8
0097c816  7541                      JNZ 0x0097c859
0097c818  a17816c700                MOV EAX,[0x00c71678]
0097c81d  660f6e80f8640200          MOVD XMM0,dword ptr [EAX + 0x264f8]
0097c825  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
0097c828  0f5bc0                    CVTDQ2PS XMM0,XMM0
0097c82b  f30f590554a5ba00          MULSS XMM0,dword ptr [0x00baa554]
0097c833  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0097c838  85c0                      TEST EAX,EAX
0097c83a  7413                      JZ 0x0097c84f
0097c83c  6a0a                      PUSH 0xa
0097c83e  8bc8                      MOV ECX,EAX
0097c840  e80b65e4ff                CALL 0x007c2d50
0097c845  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
0097c84a  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
0097c84f  f30f104db0                MOVSS XMM1,dword ptr [EBP + -0x50]
0097c854  0f28d0                    MOVAPS XMM2,XMM0
0097c857  eb1d                      JMP 0x0097c876
0097c859  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
0097c85c  85c0                      TEST EAX,EAX
0097c85e  740b                      JZ 0x0097c86b
0097c860  6a0a                      PUSH 0xa
0097c862  8bc8                      MOV ECX,EAX
0097c864  e8e764e4ff                CALL 0x007c2d50
0097c869  eb05                      JMP 0x0097c870
0097c86b  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
0097c870  0f57d2                    XORPS XMM2,XMM2
0097c873  0f28c8                    MOVAPS XMM1,XMM0
0097c876  8bcf                      MOV ECX,EDI
0097c878  e883230200                CALL 0x0099ec00
0097c87d  8b8684010000              MOV EAX,dword ptr [ESI + 0x184]
0097c883  c6861605000000            MOV byte ptr [ESI + 0x516],0x0
0097c88a  85c0                      TEST EAX,EAX
0097c88c  743c                      JZ 0x0097c8ca
0097c88e  f30f108e4c030000          MOVSS XMM1,dword ptr [ESI + 0x34c]
0097c896  8bcf                      MOV ECX,EDI
0097c898  f30f108650030000          MOVSS XMM0,dword ptr [ESI + 0x350]
0097c8a0  f30f590da4a3ba00          MULSS XMM1,dword ptr [0x00baa3a4]
0097c8a8  50                        PUSH EAX
0097c8a9  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0097c8b1  8d45a0                    LEA EAX,[EBP + -0x60]
0097c8b4  50                        PUSH EAX
0097c8b5  f30f114da0                MOVSS dword ptr [EBP + -0x60],XMM1
0097c8ba  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0097c8bf  e85c3c0200                CALL 0x009a0520
0097c8c4  888616050000              MOV byte ptr [ESI + 0x516],AL
0097c8ca  807db700                  CMP byte ptr [EBP + -0x49],0x0
0097c8ce  740c                      JZ 0x0097c8dc
0097c8d0  8bce                      MOV ECX,ESI
0097c8d2  e8d96effff                CALL 0x009737b0
0097c8d7  e93e010000                JMP 0x0097ca1a
0097c8dc  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0097c8e3  0f8531010000              JNZ 0x0097ca1a
0097c8e9  80be7501000000            CMP byte ptr [ESI + 0x175],0x0
0097c8f0  0f8524010000              JNZ 0x0097ca1a
0097c8f6  837e2c08                  CMP dword ptr [ESI + 0x2c],0x8
0097c8fa  0f851a010000              JNZ 0x0097ca1a
0097c900  f30f100dd0a8ba00          MOVSS XMM1,dword ptr [0x00baa8d0]
0097c908  0f57d2                    XORPS XMM2,XMM2
0097c90b  8bce                      MOV ECX,ESI
0097c90d  e84efed2ff                CALL 0x006ac760
0097c912  85c0                      TEST EAX,EAX
0097c914  0f8400010000              JZ 0x0097ca1a
0097c91a  a17816c700                MOV EAX,[0x00c71678]
0097c91f  f30f109ebc040000          MOVSS XMM3,dword ptr [ESI + 0x4bc]
0097c927  6a08                      PUSH 0x8
0097c929  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0097c92f  8d863c030000              LEA EAX,[ESI + 0x33c]
0097c935  50                        PUSH EAX
0097c936  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
0097c93c  81c118120000              ADD ECX,0x1218
0097c942  50                        PUSH EAX
0097c943  e848dea9ff                CALL 0x0041a790
0097c948  33ff                      XOR EDI,EDI
0097c94a  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0097c951  897dbc                    MOV dword ptr [EBP + -0x44],EDI
0097c954  397d84                    CMP dword ptr [EBP + -0x7c],EDI
0097c957  7676                      JBE 0x0097c9cf
0097c959  0f1f8000000000            NOP dword ptr [EAX]
0097c960  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
0097c966  6a00                      PUSH 0x0
0097c968  8b0cb8                    MOV ECX,dword ptr [EAX + EDI*0x4]
0097c96b  e8f0fbd2ff                CALL 0x006ac560
0097c970  84c0                      TEST AL,AL
0097c972  7452                      JZ 0x0097c9c6
0097c974  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
0097c97a  8bce                      MOV ECX,ESI
0097c97c  ff34b8                    PUSH dword ptr [EAX + EDI*0x4]
0097c97f  e81cc6d2ff                CALL 0x006a8fa0
0097c984  84c0                      TEST AL,AL
0097c986  753e                      JNZ 0x0097c9c6
0097c988  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
0097c98e  8d4dc0                    LEA ECX,[EBP + -0x40]
0097c991  ff7588                    PUSH dword ptr [EBP + -0x78]
0097c994  8b3cb8                    MOV EDI,dword ptr [EAX + EDI*0x4]
0097c997  8b07                      MOV EAX,dword ptr [EDI]
0097c999  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0097c99c  e86f49abff                CALL 0x00431310
0097c9a1  8b4588                    MOV EAX,dword ptr [EBP + -0x78]
0097c9a4  6a1e                      PUSH 0x1e
0097c9a6  f30f108088030000          MOVSS XMM0,dword ptr [EAX + 0x388]
0097c9ae  8d45c0                    LEA EAX,[EBP + -0x40]
0097c9b1  50                        PUSH EAX
0097c9b2  6a00                      PUSH 0x0
0097c9b4  6a00                      PUSH 0x0
0097c9b6  51                        PUSH ECX
0097c9b7  8bcf                      MOV ECX,EDI
0097c9b9  f30f110424                MOVSS dword ptr [ESP],XMM0
0097c9be  ffd6                      CALL ESI
0097c9c0  8b7588                    MOV ESI,dword ptr [EBP + -0x78]
0097c9c3  8b7dbc                    MOV EDI,dword ptr [EBP + -0x44]
0097c9c6  47                        INC EDI
0097c9c7  897dbc                    MOV dword ptr [EBP + -0x44],EDI
0097c9ca  3b7d84                    CMP EDI,dword ptr [EBP + -0x7c]
0097c9cd  7291                      JC 0x0097c960
0097c9cf  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0097c9d6  80bd78ffffff00            CMP byte ptr [EBP + 0xffffff78],0x0
0097c9dd  753b                      JNZ 0x0097ca1a
0097c9df  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
0097c9e5  85d2                      TEST EDX,EDX
0097c9e7  7405                      JZ 0x0097c9ee
0097c9e9  83c230                    ADD EDX,0x30
0097c9ec  eb05                      JMP 0x0097c9f3
0097c9ee  ba18f6c700                MOV EDX,0xc7f618
0097c9f3  8b8d7cffffff              MOV ECX,dword ptr [EBP + 0xffffff7c]
0097c9f9  85c9                      TEST ECX,ECX
0097c9fb  7416                      JZ 0x0097ca13
0097c9fd  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
0097ca00  83c1fc                    ADD ECX,-0x4
0097ca03  2902                      SUB dword ptr [EDX],EAX
0097ca05  51                        PUSH ECX
0097ca06  835a0400                  SBB dword ptr [EDX + 0x4],0x0
0097ca0a  ff15dc87b100              CALL dword ptr [0x00b187dc]
0097ca10  83c404                    ADD ESP,0x4
0097ca13  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0097ca1a  f30f108644050000          MOVSS XMM0,dword ptr [ESI + 0x544]
0097ca22  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0097ca27  d945a4                    FLD dword ptr [EBP + -0x5c]
0097ca2a  51                        PUSH ECX
0097ca2b  d91c24                    FSTP dword ptr [ESP]
0097ca2e  e89c3e1700                CALL 0x00af08cf
0097ca33  83c404                    ADD ESP,0x4
0097ca36  6685c0                    TEST AX,AX
0097ca39  7e0d                      JLE 0x0097ca48
0097ca3b  80be1605000000            CMP byte ptr [ESI + 0x516],0x0
0097ca42  7504                      JNZ 0x0097ca48
0097ca44  32c0                      XOR AL,AL
0097ca46  eb02                      JMP 0x0097ca4a
0097ca48  b001                      MOV AL,0x1
0097ca4a  807db700                  CMP byte ptr [EBP + -0x49],0x0
0097ca4e  7421                      JZ 0x0097ca71
0097ca50  84c0                      TEST AL,AL
0097ca52  741d                      JZ 0x0097ca71
0097ca54  f30f109e44050000          MOVSS XMM3,dword ptr [ESI + 0x544]
0097ca5c  8d8650050000              LEA EAX,[ESI + 0x550]
0097ca62  50                        PUSH EAX
0097ca63  8d8648050000              LEA EAX,[ESI + 0x548]
0097ca69  8bce                      MOV ECX,ESI
0097ca6b  50                        PUSH EAX
0097ca6c  e87f09ffff                CALL 0x0096d3f0
0097ca71  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0097ca74  64890d00000000            MOV dword ptr FS:[0x0],ECX
0097ca7b  59                        POP ECX
0097ca7c  5f                        POP EDI
0097ca7d  5e                        POP ESI
0097ca7e  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0097ca81  33cd                      XOR ECX,EBP
0097ca83  e8a3261700                CALL 0x00aef12b
0097ca88  8be5                      MOV ESP,EBP
0097ca8a  5d                        POP EBP
0097ca8b  8be3                      MOV ESP,EBX
0097ca8d  5b                        POP EBX
0097ca8e  c3                        RET
