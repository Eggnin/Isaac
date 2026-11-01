; J460 NPC AI 0x005593c0 AI_005593c0
; types=838
; identities=838.0.0
; entry=005593c0
005593c0  53                        PUSH EBX
005593c1  8bdc                      MOV EBX,ESP
005593c3  83ec08                    SUB ESP,0x8
005593c6  83e4f8                    AND ESP,0xfffffff8
005593c9  83c404                    ADD ESP,0x4
005593cc  55                        PUSH EBP
005593cd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005593d0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005593d4  8bec                      MOV EBP,ESP
005593d6  6aff                      PUSH -0x1
005593d8  68f04caf00                PUSH 0xaf4cf0
005593dd  64a100000000              MOV EAX,FS:[0x0]
005593e3  50                        PUSH EAX
005593e4  53                        PUSH EBX
005593e5  81ecf0000000              SUB ESP,0xf0
005593eb  a1b493bf00                MOV EAX,[0x00bf93b4]
005593f0  33c5                      XOR EAX,EBP
005593f2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
005593f5  56                        PUSH ESI
005593f6  57                        PUSH EDI
005593f7  50                        PUSH EAX
005593f8  8d45f4                    LEA EAX,[EBP + -0xc]
005593fb  64a300000000              MOV FS:[0x0],EAX
00559401  8bf9                      MOV EDI,ECX
00559403  83bf740b000003            CMP dword ptr [EDI + 0xb74],0x3
0055940a  756e                      JNZ 0x0055947a
0055940c  a17816c700                MOV EAX,[0x00c71678]
00559411  8b8f7c0b0000              MOV ECX,dword ptr [EDI + 0xb7c]
00559417  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
0055941e  7c06                      JL 0x00559426
00559420  83792801                  CMP dword ptr [ECX + 0x28],0x1
00559424  7411                      JZ 0x00559437
00559426  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
00559429  83e80a                    SUB EAX,0xa
0055942c  3ddd030000                CMP EAX,0x3dd
00559431  0f87b30b0000              JA 0x00559fea
00559437  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
0055943d  2500000020                AND EAX,0x20000000
00559442  83c800                    OR EAX,0x0
00559445  7404                      JZ 0x0055944b
00559447  b101                      MOV CL,0x1
00559449  eb02                      JMP 0x0055944d
0055944b  32c9                      XOR CL,CL
0055944d  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00559453  2500000020                AND EAX,0x20000000
00559458  83c800                    OR EAX,0x0
0055945b  7404                      JZ 0x00559461
0055945d  b001                      MOV AL,0x1
0055945f  eb02                      JMP 0x00559463
00559461  32c0                      XOR AL,AL
00559463  3ac8                      CMP CL,AL
00559465  0f857f0b0000              JNZ 0x00559fea
0055946b  c787800b000000000000      MOV dword ptr [EDI + 0xb80],0x0
00559475  e9700b0000                JMP 0x00559fea
0055947a  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
00559480  8db7a00b0000              LEA ESI,[EDI + 0xba0]
00559486  85d2                      TEST EDX,EDX
00559488  7e16                      JLE 0x005594a0
0055948a  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00559492  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0055949a  2bc8                      SUB ECX,EAX
0055949c  2bd1                      SUB EDX,ECX
0055949e  8916                      MOV dword ptr [ESI],EDX
005594a0  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005594a6  25000a0001                AND EAX,0x1000a00
005594ab  83c800                    OR EAX,0x0
005594ae  741a                      JZ 0x005594ca
005594b0  83fa0a                    CMP EDX,0xa
005594b3  c7853cffffff0a000000      MOV dword ptr [EBP + 0xffffff3c],0xa
005594bd  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
005594c3  0f4dc6                    CMOVGE EAX,ESI
005594c6  8b00                      MOV EAX,dword ptr [EAX]
005594c8  8906                      MOV dword ptr [ESI],EAX
005594ca  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
005594d0  85c9                      TEST ECX,ECX
005594d2  0f84be090000              JZ 0x00559e96
005594d8  83f903                    CMP ECX,0x3
005594db  7409                      JZ 0x005594e6
005594dd  83f908                    CMP ECX,0x8
005594e0  0f85040b0000              JNZ 0x00559fea
005594e6  83f903                    CMP ECX,0x3
005594e9  b804deb100                MOV EAX,0xb1de04
005594ee  be54ddb100                MOV ESI,0xb1dd54
005594f3  8d4f48                    LEA ECX,[EDI + 0x48]
005594f6  6a00                      PUSH 0x0
005594f8  0f45c6                    CMOVNZ EAX,ESI
005594fb  50                        PUSH EAX
005594fc  e87f0eebff                CALL 0x0040a380
00559501  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00559509  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00559511  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
00559517  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0055951f  85f6                      TEST ESI,ESI
00559521  0f85a7000000              JNZ 0x005595ce
00559527  8bcf                      MOV ECX,EDI
00559529  e892fcffff                CALL 0x005591c0
0055952e  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
00559534  33c0                      XOR EAX,EAX
00559536  85f6                      TEST ESI,ESI
00559538  0f95c0                    SETNZ AL
0055953b  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00559541  85f6                      TEST ESI,ESI
00559543  0f8585000000              JNZ 0x005595ce
00559549  8bcf                      MOV ECX,EDI
0055954b  e8f0521600                CALL 0x006be840
00559550  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
00559556  8d97ec0b0000              LEA EDX,[EDI + 0xbec]
0055955c  8bf0                      MOV ESI,EAX
0055955e  85c9                      TEST ECX,ECX
00559560  741e                      JZ 0x00559580
00559562  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00559568  89953cffffff              MOV dword ptr [EBP + 0xffffff3c],EDX
0055956e  81c1cc030000              ADD ECX,0x3cc
00559574  50                        PUSH EAX
00559575  e8965cf7ff                CALL 0x004cf210
0055957a  8d97ec0b0000              LEA EDX,[EDI + 0xbec]
00559580  8932                      MOV dword ptr [EDX],ESI
00559582  85f6                      TEST ESI,ESI
00559584  740e                      JZ 0x00559594
00559586  52                        PUSH EDX
00559587  8bce                      MOV ECX,ESI
00559589  e86247f7ff                CALL 0x004cdcf0
0055958e  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
00559594  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
0055959c  8d8f80030000              LEA ECX,[EDI + 0x380]
005595a2  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
005595aa  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
005595b0  f30f1001                  MOVSS XMM0,dword ptr [ECX]
005595b4  0f2fc1                    COMISS XMM0,XMM1
005595b7  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
005595bf  0f46c1                    CMOVBE EAX,ECX
005595c2  8b00                      MOV EAX,dword ptr [EAX]
005595c4  8901                      MOV dword ptr [ECX],EAX
005595c6  85f6                      TEST ESI,ESI
005595c8  0f8405060000              JZ 0x00559bd3
005595ce  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
005595d5  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
005595dd  f30f10968c030000          MOVSS XMM2,dword ptr [ESI + 0x38c]
005595e5  f30f108e90030000          MOVSS XMM1,dword ptr [ESI + 0x390]
005595ed  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
005595f5  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
005595fd  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00559605  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0055960d  f30f119534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM2
00559615  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
0055961d  7430                      JZ 0x0055964f
0055961f  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00559627  f30f5c87b00b0000          SUBSS XMM0,dword ptr [EDI + 0xbb0]
0055962f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00559637  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0055963f  f30f5c87b40b0000          SUBSS XMM0,dword ptr [EDI + 0xbb4]
00559647  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0055964f  0f28c1                    MOVAPS XMM0,XMM1
00559652  f30f59c1                  MULSS XMM0,XMM1
00559656  0f28ca                    MOVAPS XMM1,XMM2
00559659  f30f59ca                  MULSS XMM1,XMM2
0055965d  f30f58c1                  ADDSS XMM0,XMM1
00559661  e8eac3edff                CALL 0x00435a50
00559666  0f28e0                    MOVAPS XMM4,XMM0
00559669  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00559671  0f57c0                    XORPS XMM0,XMM0
00559674  0f2ee0                    UCOMISS XMM4,XMM0
00559677  9f                        LAHF
00559678  f6c444                    TEST AH,0x44
0055967b  7a10                      JP 0x0055968d
0055967d  f30f102520a1ba00          MOVSS XMM4,dword ptr [0x00baa120]
00559685  f30f11a52cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM4
0055968d  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
00559695  f30f5ec4                  DIVSS XMM0,XMM4
00559699  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
005596a1  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
005596a9  f30f5ec4                  DIVSS XMM0,XMM4
005596ad  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
005596b5  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
005596bd  e87e3eecff                CALL 0x0041d540
005596c2  0f28c8                    MOVAPS XMM1,XMM0
005596c5  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
005596cd  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
005596d5  e8463eecff                CALL 0x0041d520
005596da  f30f10bd2cffffff          MOVSS XMM7,dword ptr [EBP + 0xffffff2c]
005596e2  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
005596e8  f30f5cbd3cffffff          SUBSS XMM7,dword ptr [EBP + 0xffffff3c]
005596f0  f30f109538ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff38]
005596f8  0f28c8                    MOVAPS XMM1,XMM0
005596fb  f30f10a534ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff34]
00559703  0f28da                    MOVAPS XMM3,XMM2
00559706  f30f10ad30ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff30]
0055970e  f30f59dc                  MULSS XMM3,XMM4
00559712  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00559718  0f28f7                    MOVAPS XMM6,XMM7
0055971b  f30f59cd                  MULSS XMM1,XMM5
0055971f  f30f5935d0a0ba00          MULSS XMM6,dword ptr [0x00baa0d0]
00559727  f30f59c4                  MULSS XMM0,XMM4
0055972b  f30f5cd9                  SUBSS XMM3,XMM1
0055972f  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00559737  f30f59d5                  MULSS XMM2,XMM5
0055973b  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
00559743  f30f119d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM3
0055974b  f30f58d0                  ADDSS XMM2,XMM0
0055974f  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00559757  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0055975f  f30f5f3574adba00          MAXSS XMM6,dword ptr [0x00baad74]
00559767  f30f5e3d08abba00          DIVSS XMM7,dword ptr [0x00baab08]
0055976f  f30f59ca                  MULSS XMM1,XMM2
00559773  f30f5d3530a6ba00          MINSS XMM6,dword ptr [0x00baa630]
0055977b  0f28de                    MOVAPS XMM3,XMM6
0055977e  f30f59f5                  MULSS XMM6,XMM5
00559782  f30f59dc                  MULSS XMM3,XMM4
00559786  f30f10a528ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff28]
0055978e  f30f59c4                  MULSS XMM0,XMM4
00559792  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
0055979a  f30f5935d0a2ba00          MULSS XMM6,dword ptr [0x00baa2d0]
005597a2  f30f58c8                  ADDSS XMM1,XMM0
005597a6  f30f1005a4a7ba00          MOVSS XMM0,dword ptr [0x00baa7a4]
005597ae  f30f119d1cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM3
005597b6  f30f11b524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM6
005597be  f30f5cc1                  SUBSS XMM0,XMM1
005597c2  0f57c9                    XORPS XMM1,XMM1
005597c5  f30f5ff9                  MAXSS XMM7,XMM1
005597c9  f30f5fc1                  MAXSS XMM0,XMM1
005597cd  f30f5d05fca6ba00          MINSS XMM0,dword ptr [0x00baa6fc]
005597d5  f30f59e0                  MULSS XMM4,XMM0
005597d9  f30f59d0                  MULSS XMM2,XMM0
005597dd  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005597e5  f30f11a528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM4
005597ed  f30f5df8                  MINSS XMM7,XMM0
005597f1  f30f10a534ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff34]
005597f9  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
00559801  f30f11bd2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM7
00559809  85c0                      TEST EAX,EAX
0055980b  0f8442010000              JZ 0x00559953
00559811  8b06                      MOV EAX,dword ptr [ESI]
00559813  f30f59a53cffffff          MULSS XMM4,dword ptr [EBP + 0xffffff3c]
0055981b  f30f59ad3cffffff          MULSS XMM5,dword ptr [EBP + 0xffffff3c]
00559823  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0055982b  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
00559833  f30f5ccc                  SUBSS XMM1,XMM4
00559837  f30f5cd5                  SUBSS XMM2,XMM5
0055983b  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00559843  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0055984b  0f28c1                    MOVAPS XMM0,XMM1
0055984e  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
00559856  f30f59c1                  MULSS XMM0,XMM1
0055985a  0f28ca                    MOVAPS XMM1,XMM2
0055985d  f30f59ca                  MULSS XMM1,XMM2
00559861  f30f119534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM2
00559869  f30f58c1                  ADDSS XMM0,XMM1
0055986d  e8dec1edff                CALL 0x00435a50
00559872  f30f101554a8ba00          MOVSS XMM2,dword ptr [0x00baa854]
0055987a  0f28c8                    MOVAPS XMM1,XMM0
0055987d  0f2fca                    COMISS XMM1,XMM2
00559880  f30f109d34ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff34]
00559888  7621                      JBE 0x005598ab
0055988a  0f57c0                    XORPS XMM0,XMM0
0055988d  0f2fc8                    COMISS XMM1,XMM0
00559890  7619                      JBE 0x005598ab
00559892  f30f5ed1                  DIVSS XMM2,XMM1
00559896  f30f108d30ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff30]
0055989e  0f28c2                    MOVAPS XMM0,XMM2
005598a1  f30f59da                  MULSS XMM3,XMM2
005598a5  f30f59c8                  MULSS XMM1,XMM0
005598a9  eb08                      JMP 0x005598b3
005598ab  f30f108d30ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff30]
005598b3  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
005598bb  f30f10b79c030000          MOVSS XMM6,dword ptr [EDI + 0x39c]
005598c3  0f28d5                    MOVAPS XMM2,XMM5
005598c6  f30f5c952cffffff          SUBSS XMM2,dword ptr [EBP + 0xffffff2c]
005598ce  0f2ef5                    UCOMISS XMM6,XMM5
005598d1  0f28c2                    MOVAPS XMM0,XMM2
005598d4  0f28e5                    MOVAPS XMM4,XMM5
005598d7  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005598df  9f                        LAHF
005598e0  f30f5ce0                  SUBSS XMM4,XMM0
005598e4  f6c444                    TEST AH,0x44
005598e7  7b13                      JNP 0x005598fc
005598e9  0f28c6                    MOVAPS XMM0,XMM6
005598ec  f30f59f4                  MULSS XMM6,XMM4
005598f0  f30f58c4                  ADDSS XMM0,XMM4
005598f4  f30f5cc6                  SUBSS XMM0,XMM6
005598f8  f30f5ee0                  DIVSS XMM4,XMM0
005598fc  f30f10b524ffffff          MOVSS XMM6,dword ptr [EBP + 0xffffff24]
00559904  0f28c5                    MOVAPS XMM0,XMM5
00559907  f30f10ad10ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff10]
0055990f  f30f5cc4                  SUBSS XMM0,XMM4
00559913  f30f10a514ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff14]
0055991b  f30f5cdd                  SUBSS XMM3,XMM5
0055991f  f30f5ccc                  SUBSS XMM1,XMM4
00559923  f30f59d8                  MULSS XMM3,XMM0
00559927  f30f59c8                  MULSS XMM1,XMM0
0055992b  f30f58eb                  ADDSS XMM5,XMM3
0055992f  f30f109d1cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff1c]
00559937  f30f58e1                  ADDSS XMM4,XMM1
0055993b  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
00559943  f30f11af64030000          MOVSS dword ptr [EDI + 0x364],XMM5
0055994b  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00559951  eb07                      JMP 0x0055995a
00559953  0f28d0                    MOVAPS XMM2,XMM0
00559956  f30f5cd7                  SUBSS XMM2,XMM7
0055995a  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00559962  f30f589d28ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff28]
0055996a  f30f58b538ffffff          ADDSS XMM6,dword ptr [EBP + 0xffffff38]
00559972  f30f59d8                  MULSS XMM3,XMM0
00559976  f30f59f0                  MULSS XMM6,XMM0
0055997a  f30f589f60030000          ADDSS XMM3,dword ptr [EDI + 0x360]
00559982  f30f58b764030000          ADDSS XMM6,dword ptr [EDI + 0x364]
0055998a  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
00559992  f30f11b764030000          MOVSS dword ptr [EDI + 0x364],XMM6
0055999a  85c0                      TEST EAX,EAX
0055999c  7457                      JZ 0x005599f5
0055999e  8b06                      MOV EAX,dword ptr [ESI]
005599a0  0f28c2                    MOVAPS XMM0,XMM2
005599a3  0f28ca                    MOVAPS XMM1,XMM2
005599a6  f30f598060030000          MULSS XMM0,dword ptr [EAX + 0x360]
005599ae  f30f598864030000          MULSS XMM1,dword ptr [EAX + 0x364]
005599b6  f30f58d8                  ADDSS XMM3,XMM0
005599ba  0f28c2                    MOVAPS XMM0,XMM2
005599bd  f30f58ce                  ADDSS XMM1,XMM6
005599c1  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
005599c9  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
005599d1  8b06                      MOV EAX,dword ptr [ESI]
005599d3  f30f598060030000          MULSS XMM0,dword ptr [EAX + 0x360]
005599db  f30f599064030000          MULSS XMM2,dword ptr [EAX + 0x364]
005599e3  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
005599eb  f30f1197b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM2
005599f3  eb20                      JMP 0x00559a15
005599f5  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005599fd  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00559a05  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00559a0d  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00559a15  a17816c700                MOV EAX,[0x00c71678]
00559a1a  f30f101d00aaba00          MOVSS XMM3,dword ptr [0x00baaa00]
00559a22  6a08                      PUSH 0x8
00559a24  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00559a2a  8d873c030000              LEA EAX,[EDI + 0x33c]
00559a30  50                        PUSH EAX
00559a31  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
00559a37  81c118120000              ADD ECX,0x1218
00559a3d  50                        PUSH EAX
00559a3e  e84d0decff                CALL 0x0041a790
00559a43  33f6                      XOR ESI,ESI
00559a45  39b50cffffff              CMP dword ptr [EBP + 0xffffff0c],ESI
00559a4b  0f8657010000              JBE 0x00559ba8
00559a51  8b8504ffffff              MOV EAX,dword ptr [EBP + 0xffffff04]
00559a57  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
00559a5a  85c9                      TEST ECX,ECX
00559a5c  0f8439010000              JZ 0x00559b9b
00559a62  a17816c700                MOV EAX,[0x00c71678]
00559a67  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00559a6e  7c08                      JL 0x00559a78
00559a70  8b5128                    MOV EDX,dword ptr [ECX + 0x28]
00559a73  83fa01                    CMP EDX,0x1
00559a76  7411                      JZ 0x00559a89
00559a78  8b5128                    MOV EDX,dword ptr [ECX + 0x28]
00559a7b  8d42f6                    LEA EAX,[EDX + -0xa]
00559a7e  3ddd030000                CMP EAX,0x3dd
00559a83  0f8712010000              JA 0x00559b9b
00559a89  3bcf                      CMP ECX,EDI
00559a8b  0f840a010000              JZ 0x00559b9b
00559a91  3b5728                    CMP EDX,dword ptr [EDI + 0x28]
00559a94  0f8501010000              JNZ 0x00559b9b
00559a9a  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
00559aa0  2500000020                AND EAX,0x20000000
00559aa5  83c800                    OR EAX,0x0
00559aa8  7404                      JZ 0x00559aae
00559aaa  b201                      MOV DL,0x1
00559aac  eb02                      JMP 0x00559ab0
00559aae  32d2                      XOR DL,DL
00559ab0  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00559ab6  2500000020                AND EAX,0x20000000
00559abb  83c800                    OR EAX,0x0
00559abe  7404                      JZ 0x00559ac4
00559ac0  b001                      MOV AL,0x1
00559ac2  eb02                      JMP 0x00559ac6
00559ac4  32c0                      XOR AL,AL
00559ac6  3ad0                      CMP DL,AL
00559ac8  0f85cd000000              JNZ 0x00559b9b
00559ace  8b81ec0b0000              MOV EAX,dword ptr [ECX + 0xbec]
00559ad4  3b87ec0b0000              CMP EAX,dword ptr [EDI + 0xbec]
00559ada  0f85bb000000              JNZ 0x00559b9b
00559ae0  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00559ae8  f30f5c8940030000          SUBSS XMM1,dword ptr [ECX + 0x340]
00559af0  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00559af8  f30f5c913c030000          SUBSS XMM2,dword ptr [ECX + 0x33c]
00559b00  0f28c1                    MOVAPS XMM0,XMM1
00559b03  f30f118d1cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM1
00559b0b  f30f59c1                  MULSS XMM0,XMM1
00559b0f  0f28ca                    MOVAPS XMM1,XMM2
00559b12  f30f119524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM2
00559b1a  f30f59ca                  MULSS XMM1,XMM2
00559b1e  f30f58c1                  ADDSS XMM0,XMM1
00559b22  e829bfedff                CALL 0x00435a50
00559b27  0f57c9                    XORPS XMM1,XMM1
00559b2a  0f2fc1                    COMISS XMM0,XMM1
00559b2d  766c                      JBE 0x00559b9b
00559b2f  f30f108d24ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff24]
00559b37  f30f10951cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff1c]
00559b3f  f30f101d1ca8ba00          MOVSS XMM3,dword ptr [0x00baa81c]
00559b47  f30f5ec8                  DIVSS XMM1,XMM0
00559b4b  f30f5ed0                  DIVSS XMM2,XMM0
00559b4f  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00559b57  f30f58c3                  ADDSS XMM0,XMM3
00559b5b  f30f5ec8                  DIVSS XMM1,XMM0
00559b5f  f30f5ed0                  DIVSS XMM2,XMM0
00559b63  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00559b6b  f30f59cb                  MULSS XMM1,XMM3
00559b6f  f30f59d3                  MULSS XMM2,XMM3
00559b73  f30f59c8                  MULSS XMM1,XMM0
00559b77  f30f59d0                  MULSS XMM2,XMM0
00559b7b  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
00559b83  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00559b8b  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00559b93  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00559b9b  46                        INC ESI
00559b9c  3bb50cffffff              CMP ESI,dword ptr [EBP + 0xffffff0c]
00559ba2  0f82a9feffff              JC 0x00559a51
00559ba8  80bd00ffffff00            CMP byte ptr [EBP + 0xffffff00],0x0
00559baf  7522                      JNZ 0x00559bd3
00559bb1  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00559bb8  b101                      MOV CL,0x1
00559bba  8b9504ffffff              MOV EDX,dword ptr [EBP + 0xffffff04]
00559bc0  6a00                      PUSH 0x0
00559bc2  6a00                      PUSH 0x0
00559bc4  e8e7ac5000                CALL 0x00a648b0
00559bc9  83c408                    ADD ESP,0x8
00559bcc  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00559bd3  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
00559bda  757c                      JNZ 0x00559c58
00559bdc  e87f531900                CALL 0x006eef60
00559be1  33d2                      XOR EDX,EDX
00559be3  b909000000                MOV ECX,0x9
00559be8  f7f1                      DIV ECX
00559bea  85d2                      TEST EDX,EDX
00559bec  756a                      JNZ 0x00559c58
00559bee  3997a00b0000              CMP dword ptr [EDI + 0xba0],EDX
00559bf4  7f62                      JG 0x00559c58
00559bf6  51                        PUSH ECX
00559bf7  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00559bfd  891424                    MOV dword ptr [ESP],EDX
00559c00  50                        PUSH EAX
00559c01  8bcf                      MOV ECX,EDI
00559c03  e838501600                CALL 0x006bec40
00559c08  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00559c10  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00559c18  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
00559c1c  f30f5c4804                SUBSS XMM1,dword ptr [EAX + 0x4]
00559c21  f30f59c0                  MULSS XMM0,XMM0
00559c25  f30f59c9                  MULSS XMM1,XMM1
00559c29  f30f58c8                  ADDSS XMM1,XMM0
00559c2d  f30f100564acba00          MOVSS XMM0,dword ptr [0x00baac64]
00559c35  0f2fc1                    COMISS XMM0,XMM1
00559c38  761e                      JBE 0x00559c58
00559c3a  6a00                      PUSH 0x0
00559c3c  6854ddb100                PUSH 0xb1dd54
00559c41  8d4f48                    LEA ECX,[EDI + 0x48]
00559c44  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00559c4e  e82d07ebff                CALL 0x0040a380
00559c53  e992030000                JMP 0x00559fea
00559c58  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
00559c5f  0f8585030000              JNZ 0x00559fea
00559c65  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00559c69  8d7778                    LEA ESI,[EDI + 0x78]
00559c6c  0f840b020000              JZ 0x00559e7d
00559c72  686c16b600                PUSH 0xb6166c
00559c77  8bce                      MOV ECX,ESI
00559c79  e85211ebff                CALL 0x0040add0
00559c7e  84c0                      TEST AL,AL
00559c80  744d                      JZ 0x00559ccf
00559c82  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00559c88  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00559c8e  c7853cffffffd7010000      MOV dword ptr [EBP + 0xffffff3c],0x1d7
00559c98  e8e3ca3f00                CALL 0x00956780
00559c9d  83ec08                    SUB ESP,0x8
00559ca0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00559ca8  c704240000803f            MOV dword ptr [ESP],0x3f800000
00559caf  6a00                      PUSH 0x0
00559cb1  6a02                      PUSH 0x2
00559cb3  51                        PUSH ECX
00559cb4  c704240000803f            MOV dword ptr [ESP],0x3f800000
00559cbb  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00559cc1  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
00559cc7  e8643f3d00                CALL 0x0092dc30
00559ccc  8d7778                    LEA ESI,[EDI + 0x78]
00559ccf  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00559cd3  0f84a4010000              JZ 0x00559e7d
00559cd9  68dcd2b100                PUSH 0xb1d2dc
00559cde  8bce                      MOV ECX,ESI
00559ce0  e8eb10ebff                CALL 0x0040add0
00559ce5  84c0                      TEST AL,AL
00559ce7  0f847d010000              JZ 0x00559e6a
00559ced  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00559cf3  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00559cf9  c7853cffffff99000000      MOV dword ptr [EBP + 0xffffff3c],0x99
00559d03  e878ca3f00                CALL 0x00956780
00559d08  83ec08                    SUB ESP,0x8
00559d0b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00559d13  c704240000803f            MOV dword ptr [ESP],0x3f800000
00559d1a  6a00                      PUSH 0x0
00559d1c  6a02                      PUSH 0x2
00559d1e  51                        PUSH ECX
00559d1f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00559d26  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00559d2c  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
00559d32  e8f93e3d00                CALL 0x0092dc30
00559d37  8bcf                      MOV ECX,EDI
00559d39  e8024b1600                CALL 0x006be840
00559d3e  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00559d44  8bf0                      MOV ESI,EAX
00559d46  e8e551eeff                CALL 0x0043ef30
00559d4b  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
00559d53  f30f588e60030000          ADDSS XMM1,dword ptr [ESI + 0x360]
00559d5b  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
00559d63  f30f589664030000          ADDSS XMM2,dword ptr [ESI + 0x364]
00559d6b  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00559d73  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
00559d7b  0f28c1                    MOVAPS XMM0,XMM1
00559d7e  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
00559d86  f30f59c1                  MULSS XMM0,XMM1
00559d8a  0f28ca                    MOVAPS XMM1,XMM2
00559d8d  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
00559d95  f30f59ca                  MULSS XMM1,XMM2
00559d99  f30f58c1                  ADDSS XMM0,XMM1
00559d9d  e8aebcedff                CALL 0x00435a50
00559da2  0f28c8                    MOVAPS XMM1,XMM0
00559da5  0f57c0                    XORPS XMM0,XMM0
00559da8  0f2fc8                    COMISS XMM1,XMM0
00559dab  7629                      JBE 0x00559dd6
00559dad  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00559db5  f30f5ed1                  DIVSS XMM2,XMM1
00559db9  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
00559dc1  0f28c2                    MOVAPS XMM0,XMM2
00559dc4  f30f59c8                  MULSS XMM1,XMM0
00559dc8  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
00559dd0  f30f59c2                  MULSS XMM0,XMM2
00559dd4  eb10                      JMP 0x00559de6
00559dd6  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
00559dde  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
00559de6  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00559dee  8bcf                      MOV ECX,EDI
00559df0  a1d83cc300                MOV EAX,[0x00c33cd8]
00559df5  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00559dfd  894594                    MOV dword ptr [EBP + -0x6c],EAX
00559e00  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
00559e06  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00559e0e  0f1005b03cc300            MOVUPS XMM0,xmmword ptr [0x00c33cb0]
00559e15  50                        PUSH EAX
00559e16  6a00                      PUSH 0x0
00559e18  0f11856cffffff            MOVUPS xmmword ptr [EBP + 0xffffff6c],XMM0
00559e1f  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00559e25  c745d404000000            MOV dword ptr [EBP + -0x2c],0x4
00559e2c  0f1005c03cc300            MOVUPS XMM0,xmmword ptr [0x00c33cc0]
00559e33  50                        PUSH EAX
00559e34  8d873c030000              LEA EAX,[EDI + 0x33c]
00559e3a  f30f118d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM1
00559e42  0f11857cffffff            MOVUPS xmmword ptr [EBP + 0xffffff7c],XMM0
00559e49  50                        PUSH EAX
00559e4a  f30f7e05d03cc300          MOVQ XMM0,qword ptr [0x00c33cd0]
00559e52  660fd6458c                MOVQ qword ptr [EBP + -0x74],XMM0
00559e57  c7459800200000            MOV dword ptr [EBP + -0x68],0x2000
00559e5e  c7459c00000000            MOV dword ptr [EBP + -0x64],0x0
00559e65  e876141700                CALL 0x006cb2e0
00559e6a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00559e6e  740d                      JZ 0x00559e7d
00559e70  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00559e77  0f856d010000              JNZ 0x00559fea
00559e7d  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00559e87  c787a00b00002d000000      MOV dword ptr [EDI + 0xba0],0x2d
00559e91  e954010000                JMP 0x00559fea
00559e96  8bcf                      MOV ECX,EDI
00559e98  e823f3ffff                CALL 0x005591c0
00559e9d  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
00559ea3  85f6                      TEST ESI,ESI
00559ea5  0f84ac000000              JZ 0x00559f57
00559eab  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00559eb3  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
00559ebb  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00559ec3  f30f5c963c030000          SUBSS XMM2,dword ptr [ESI + 0x33c]
00559ecb  0f28c1                    MOVAPS XMM0,XMM1
00559ece  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
00559ed6  f30f59c1                  MULSS XMM0,XMM1
00559eda  0f28ca                    MOVAPS XMM1,XMM2
00559edd  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
00559ee5  f30f59ca                  MULSS XMM1,XMM2
00559ee9  f30f58c1                  ADDSS XMM0,XMM1
00559eed  e85ebbedff                CALL 0x00435a50
00559ef2  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00559ef9  f30f109538ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff38]
00559f01  7626                      JBE 0x00559f29
00559f03  f30f108e70030000          MOVSS XMM1,dword ptr [ESI + 0x370]
00559f0b  f30f580d04a9ba00          ADDSS XMM1,dword ptr [0x00baa904]
00559f13  f30f5ec8                  DIVSS XMM1,XMM0
00559f17  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00559f1f  f30f59c1                  MULSS XMM0,XMM1
00559f23  f30f59d1                  MULSS XMM2,XMM1
00559f27  eb08                      JMP 0x00559f31
00559f29  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00559f31  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
00559f39  f30f589640030000          ADDSS XMM2,dword ptr [ESI + 0x340]
00559f41  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00559f49  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
00559f51  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
00559f57  33c0                      XOR EAX,EAX
00559f59  c787a40b000028000000      MOV dword ptr [EDI + 0xba4],0x28
00559f63  85f6                      TEST ESI,ESI
00559f65  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00559f6f  c787180f000004000000      MOV dword ptr [EDI + 0xf18],0x4
00559f79  8d4f48                    LEA ECX,[EDI + 0x48]
00559f7c  0f95c0                    SETNZ AL
00559f7f  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00559f89  818f6c01000000200000      OR dword ptr [EDI + 0x16c],0x2000
00559f93  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00559f99  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00559f9f  898768010000              MOV dword ptr [EDI + 0x168],EAX
00559fa5  8b35e498c700              MOV ESI,dword ptr [0x00c798e4]
00559fab  6a03                      PUSH 0x3
00559fad  e86e12ebff                CALL 0x0040b220
00559fb2  83e604                    AND ESI,0x4
00559fb5  b901000000                MOV ECX,0x1
00559fba  ba06000000                MOV EDX,0x6
00559fbf  0f44ca                    CMOVZ ECX,EDX
00559fc2  c7407800000000            MOV dword ptr [EAX + 0x78],0x0
00559fc9  89487c                    MOV dword ptr [EAX + 0x7c],ECX
00559fcc  c7808000000001000000      MOV dword ptr [EAX + 0x80],0x1
00559fd6  c7808400000001000000      MOV dword ptr [EAX + 0x84],0x1
00559fe0  c7808800000001000000      MOV dword ptr [EAX + 0x88],0x1
00559fea  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00559fed  64890d00000000            MOV dword ptr FS:[0x0],ECX
00559ff4  59                        POP ECX
00559ff5  5f                        POP EDI
00559ff6  5e                        POP ESI
00559ff7  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00559ffa  33cd                      XOR ECX,EBP
00559ffc  e82a515900                CALL 0x00aef12b
0055a001  8be5                      MOV ESP,EBP
0055a003  5d                        POP EBP
0055a004  8be3                      MOV ESP,EBX
0055a006  5b                        POP EBX
0055a007  c3                        RET
