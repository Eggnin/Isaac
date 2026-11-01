; J460 NPC AI 0x00540510 AI_00540510
; types=258
; identities=258.0.0
; entry=00540510
00540510  53                        PUSH EBX
00540511  8bdc                      MOV EBX,ESP
00540513  83ec08                    SUB ESP,0x8
00540516  83e4f8                    AND ESP,0xfffffff8
00540519  83c404                    ADD ESP,0x4
0054051c  55                        PUSH EBP
0054051d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00540520  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00540524  8bec                      MOV EBP,ESP
00540526  6aff                      PUSH -0x1
00540528  688048af00                PUSH 0xaf4880
0054052d  64a100000000              MOV EAX,FS:[0x0]
00540533  50                        PUSH EAX
00540534  53                        PUSH EBX
00540535  81ece8000000              SUB ESP,0xe8
0054053b  a1b493bf00                MOV EAX,[0x00bf93b4]
00540540  33c5                      XOR EAX,EBP
00540542  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00540545  56                        PUSH ESI
00540546  57                        PUSH EDI
00540547  50                        PUSH EAX
00540548  8d45f4                    LEA EAX,[EBP + -0xc]
0054054b  64a300000000              MOV FS:[0x0],EAX
00540551  8bf1                      MOV ESI,ECX
00540553  83be640b000000            CMP dword ptr [ESI + 0xb64],0x0
0054055a  7523                      JNZ 0x0054057f
0054055c  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
00540566  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
00540570  c786500300000000f0c1      MOV dword ptr [ESI + 0x350],0xc1f00000
0054057a  e946080000                JMP 0x00540dc5
0054057f  51                        PUSH ECX
00540580  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
00540586  c7042400000000            MOV dword ptr [ESP],0x0
0054058d  50                        PUSH EAX
0054058e  e8ade61700                CALL 0x006bec40
00540593  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
0054059b  8dbe3c030000              LEA EDI,[ESI + 0x33c]
005405a1  f30f108d28ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff28]
005405a9  f30f5c07                  SUBSS XMM0,dword ptr [EDI]
005405ad  f30f5c4f04                SUBSS XMM1,dword ptr [EDI + 0x4]
005405b2  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
005405b8  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
005405c0  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
005405c8  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
005405d0  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
005405d8  83f804                    CMP EAX,0x4
005405db  0f8553060000              JNZ 0x00540c34
005405e1  6a00                      PUSH 0x0
005405e3  8d4e48                    LEA ECX,[ESI + 0x48]
005405e6  6854bcb100                PUSH 0xb1bc54
005405eb  e8909decff                CALL 0x0040a380
005405f0  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
005405f7  0f84a4000000              JZ 0x005406a1
005405fd  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
00540603  0f57d2                    XORPS XMM2,XMM2
00540606  50                        PUSH EAX
00540607  8bce                      MOV ECX,ESI
00540609  e8c27c1900                CALL 0x006d82d0
0054060e  f30f10969c030000          MOVSS XMM2,dword ptr [ESI + 0x39c]
00540616  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
0054061b  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0054061f  f30f5905b8a2ba00          MULSS XMM0,dword ptr [0x00baa2b8]
00540627  f30f591db8a2ba00          MULSS XMM3,dword ptr [0x00baa2b8]
0054062f  f30f59c2                  MULSS XMM0,XMM2
00540633  f30f59da                  MULSS XMM3,XMM2
00540637  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
0054063f  f30f589e64030000          ADDSS XMM3,dword ptr [ESI + 0x364]
00540647  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0054064f  f30f119e64030000          MOVSS dword ptr [ESI + 0x364],XMM3
00540657  83bea00b000000            CMP dword ptr [ESI + 0xba0],0x0
0054065e  0f8525070000              JNZ 0x00540d89
00540664  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0054066c  8bce                      MOV ECX,ESI
0054066e  6a07                      PUSH 0x7
00540670  6a00                      PUSH 0x0
00540672  e8e9a71800                CALL 0x006cae60
00540677  84c0                      TEST AL,AL
00540679  0f840a070000              JZ 0x00540d89
0054067f  6a01                      PUSH 0x1
00540681  8bce                      MOV ECX,ESI
00540683  e8c8891900                CALL 0x006d9050
00540688  c786640b000008000000      MOV dword ptr [ESI + 0xb64],0x8
00540692  c786a00b00001e000000      MOV dword ptr [ESI + 0xba0],0x1e
0054069c  e9e8060000                JMP 0x00540d89
005406a1  f30f109d30ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff30]
005406a9  f30f109520ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff20]
005406b1  0f28cb                    MOVAPS XMM1,XMM3
005406b4  f30f590d50c8c500          MULSS XMM1,dword ptr [0x00c5c850]
005406bc  0f28c2                    MOVAPS XMM0,XMM2
005406bf  f30f59054cc8c500          MULSS XMM0,dword ptr [0x00c5c84c]
005406c7  f30f102530aeba00          MOVSS XMM4,dword ptr [0x00baae30]
005406cf  f30f58c8                  ADDSS XMM1,XMM0
005406d3  0f2fcc                    COMISS XMM1,XMM4
005406d6  7603                      JBE 0x005406db
005406d8  0f28e1                    MOVAPS XMM4,XMM1
005406db  0f28cb                    MOVAPS XMM1,XMM3
005406de  0f28c2                    MOVAPS XMM0,XMM2
005406e1  f30f590d58c8c500          MULSS XMM1,dword ptr [0x00c5c858]
005406e9  0f28ec                    MOVAPS XMM5,XMM4
005406ec  f30f590554c8c500          MULSS XMM0,dword ptr [0x00c5c854]
005406f4  f30f58c8                  ADDSS XMM1,XMM0
005406f8  0f2fcc                    COMISS XMM1,XMM4
005406fb  7603                      JBE 0x00540700
005406fd  0f28e1                    MOVAPS XMM4,XMM1
00540700  33c0                      XOR EAX,EAX
00540702  0f28c2                    MOVAPS XMM0,XMM2
00540705  f30f59055cc8c500          MULSS XMM0,dword ptr [0x00c5c85c]
0054070d  0f2fcd                    COMISS XMM1,XMM5
00540710  0f28cb                    MOVAPS XMM1,XMM3
00540713  f30f590d60c8c500          MULSS XMM1,dword ptr [0x00c5c860]
0054071b  0f97c0                    SETA AL
0054071e  f30f58c8                  ADDSS XMM1,XMM0
00540722  0f2fcc                    COMISS XMM1,XMM4
00540725  7608                      JBE 0x0054072f
00540727  0f28e1                    MOVAPS XMM4,XMM1
0054072a  b802000000                MOV EAX,0x2
0054072f  0f28cb                    MOVAPS XMM1,XMM3
00540732  0f28c2                    MOVAPS XMM0,XMM2
00540735  f30f590d68c8c500          MULSS XMM1,dword ptr [0x00c5c868]
0054073d  b903000000                MOV ECX,0x3
00540742  f30f590564c8c500          MULSS XMM0,dword ptr [0x00c5c864]
0054074a  f30f58c8                  ADDSS XMM1,XMM0
0054074e  0f2fcc                    COMISS XMM1,XMM4
00540751  0f47c1                    CMOVA EAX,ECX
00540754  83bea00b000000            CMP dword ptr [ESI + 0xba0],0x0
0054075b  f30f102cc550c8c500        MOVSS XMM5,dword ptr [EAX*0x8 + 0xc5c850]
00540764  f30f1024c54cc8c500        MOVSS XMM4,dword ptr [EAX*0x8 + 0xc5c84c]
0054076d  0f28c5                    MOVAPS XMM0,XMM5
00540770  0f28cc                    MOVAPS XMM1,XMM4
00540773  f30f59c3                  MULSS XMM0,XMM3
00540777  f30f59ca                  MULSS XMM1,XMM2
0054077b  f30f58c8                  ADDSS XMM1,XMM0
0054077f  f30f59e1                  MULSS XMM4,XMM1
00540783  f30f59e9                  MULSS XMM5,XMM1
00540787  0f572570cbba00            XORPS XMM4,xmmword ptr [0x00bacb70]
0054078e  f30f11a53cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM4
00540796  0f572d70cbba00            XORPS XMM5,xmmword ptr [0x00bacb70]
0054079d  f30f11ad38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM5
005407a5  0f859e000000              JNZ 0x00540849
005407ab  e8b0e71a00                CALL 0x006eef60
005407b0  33d2                      XOR EDX,EDX
005407b2  f30f10a53cffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff3c]
005407ba  b90f000000                MOV ECX,0xf
005407bf  f30f109d28ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff28]
005407c7  f7f1                      DIV ECX
005407c9  f30f10ad38ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff38]
005407d1  85d2                      TEST EDX,EDX
005407d3  757c                      JNZ 0x00540851
005407d5  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
005407dd  0f28cb                    MOVAPS XMM1,XMM3
005407e0  f30f58c4                  ADDSS XMM0,XMM4
005407e4  f30f58cd                  ADDSS XMM1,XMM5
005407e8  f30f5c07                  SUBSS XMM0,dword ptr [EDI]
005407ec  f30f5c4f04                SUBSS XMM1,dword ptr [EDI + 0x4]
005407f1  f30f59c0                  MULSS XMM0,XMM0
005407f5  f30f59c9                  MULSS XMM1,XMM1
005407f9  f30f58c8                  ADDSS XMM1,XMM0
005407fd  f30f1005e0abba00          MOVSS XMM0,dword ptr [0x00baabe0]
00540805  0f2fc1                    COMISS XMM0,XMM1
00540808  7647                      JBE 0x00540851
0054080a  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
00540812  f30f108d20ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff20]
0054081a  f30f59c0                  MULSS XMM0,XMM0
0054081e  f30f59c9                  MULSS XMM1,XMM1
00540822  f30f58c8                  ADDSS XMM1,XMM0
00540826  f30f10059cacba00          MOVSS XMM0,dword ptr [0x00baac9c]
0054082e  0f2fc1                    COMISS XMM0,XMM1
00540831  761e                      JBE 0x00540851
00540833  c786640b000008000000      MOV dword ptr [ESI + 0xb64],0x8
0054083d  c786a00b00001e000000      MOV dword ptr [ESI + 0xba0],0x1e
00540847  eb08                      JMP 0x00540851
00540849  f30f109d28ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff28]
00540851  f30f5925a4a3ba00          MULSS XMM4,dword ptr [0x00baa3a4]
00540859  f30f108d24ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff24]
00540861  f30f592da4a3ba00          MULSS XMM5,dword ptr [0x00baa3a4]
00540869  f30f58cc                  ADDSS XMM1,XMM4
0054086d  f30f58dd                  ADDSS XMM3,XMM5
00540871  f30f5c0f                  SUBSS XMM1,dword ptr [EDI]
00540875  f30f5c5f04                SUBSS XMM3,dword ptr [EDI + 0x4]
0054087a  0f28c1                    MOVAPS XMM0,XMM1
0054087d  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
00540885  f30f59c1                  MULSS XMM0,XMM1
00540889  0f28cb                    MOVAPS XMM1,XMM3
0054088c  f30f119d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM3
00540894  f30f59cb                  MULSS XMM1,XMM3
00540898  f30f58c1                  ADDSS XMM0,XMM1
0054089c  e8af51efff                CALL 0x00435a50
005408a1  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005408a8  7621                      JBE 0x005408cb
005408aa  f30f100db8a2ba00          MOVSS XMM1,dword ptr [0x00baa2b8]
005408b2  f30f5ec8                  DIVSS XMM1,XMM0
005408b6  0f28d9                    MOVAPS XMM3,XMM1
005408b9  f30f598d38ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff38]
005408c1  f30f599d3cffffff          MULSS XMM3,dword ptr [EBP + 0xffffff3c]
005408c9  eb10                      JMP 0x005408db
005408cb  f30f109d3cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff3c]
005408d3  f30f108d38ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff38]
005408db  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
005408e3  a17816c700                MOV EAX,[0x00c71678]
005408e8  f30f59d8                  MULSS XMM3,XMM0
005408ec  6a04                      PUSH 0x4
005408ee  f30f59c8                  MULSS XMM1,XMM0
005408f2  57                        PUSH EDI
005408f3  f30f589e60030000          ADDSS XMM3,dword ptr [ESI + 0x360]
005408fb  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
00540903  f30f119e60030000          MOVSS dword ptr [ESI + 0x360],XMM3
0054090b  f30f101dd0a9ba00          MOVSS XMM3,dword ptr [0x00baa9d0]
00540913  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0054091b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00540921  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00540927  81c118120000              ADD ECX,0x1218
0054092d  50                        PUSH EAX
0054092e  e85d9eedff                CALL 0x0041a790
00540933  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0054093a  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
00540940  85c0                      TEST EAX,EAX
00540942  0f84b8020000              JZ 0x00540c00
00540948  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
00540950  0f57ff                    XORPS XMM7,XMM7
00540953  f30f108d30ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff30]
0054095b  33c9                      XOR ECX,ECX
0054095d  f30f102534acba00          MOVSS XMM4,dword ptr [0x00baac34]
00540965  33ff                      XOR EDI,EDI
00540967  f30f59c0                  MULSS XMM0,XMM0
0054096b  898d1cffffff              MOV dword ptr [EBP + 0xffffff1c],ECX
00540971  f30f59c9                  MULSS XMM1,XMM1
00540975  f30f58c1                  ADDSS XMM0,XMM1
00540979  f30f5fc7                  MAXSS XMM0,XMM7
0054097d  f30f5dc4                  MINSS XMM0,XMM4
00540981  f30f5ec4                  DIVSS XMM0,XMM4
00540985  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0054098d  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00540995  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
0054099d  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005409a5  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
005409ad  85c0                      TEST EAX,EAX
005409af  0f844b020000              JZ 0x00540c00
005409b5  6666660f1f840000000000    NOP word ptr [EAX + EAX*0x1]
005409c0  8b850cffffff              MOV EAX,dword ptr [EBP + 0xffffff0c]
005409c6  f30f10ae3c030000          MOVSS XMM5,dword ptr [ESI + 0x33c]
005409ce  f30f10b640030000          MOVSS XMM6,dword ptr [ESI + 0x340]
005409d6  8b04b8                    MOV EAX,dword ptr [EAX + EDI*0x4]
005409d9  f30f5ca83c030000          SUBSS XMM5,dword ptr [EAX + 0x33c]
005409e1  f30f5cb040030000          SUBSS XMM6,dword ptr [EAX + 0x340]
005409e9  f30f109864030000          MOVSS XMM3,dword ptr [EAX + 0x364]
005409f1  f30f109060030000          MOVSS XMM2,dword ptr [EAX + 0x360]
005409f9  0f28c3                    MOVAPS XMM0,XMM3
005409fc  0f28ca                    MOVAPS XMM1,XMM2
005409ff  f30f119d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM3
00540a07  f30f59cd                  MULSS XMM1,XMM5
00540a0b  f30f59c6                  MULSS XMM0,XMM6
00540a0f  f30f58c8                  ADDSS XMM1,XMM0
00540a13  0f2fcf                    COMISS XMM1,XMM7
00540a16  0f86fc000000              JBE 0x00540b18
00540a1c  0f28ce                    MOVAPS XMM1,XMM6
00540a1f  0f28c5                    MOVAPS XMM0,XMM5
00540a22  f30f59c5                  MULSS XMM0,XMM5
00540a26  f30f59ce                  MULSS XMM1,XMM6
00540a2a  f30f58c8                  ADDSS XMM1,XMM0
00540a2e  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00540a36  f30f5ecc                  DIVSS XMM1,XMM4
00540a3a  f30f102570cbba00          MOVSS XMM4,dword ptr [0x00bacb70]
00540a42  f30f5cc1                  SUBSS XMM0,XMM1
00540a46  0f57d4                    XORPS XMM2,XMM4
00540a49  0f28cb                    MOVAPS XMM1,XMM3
00540a4c  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
00540a54  f30f59cd                  MULSS XMM1,XMM5
00540a58  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
00540a60  0f28c2                    MOVAPS XMM0,XMM2
00540a63  f30f59c6                  MULSS XMM0,XMM6
00540a67  f30f58c1                  ADDSS XMM0,XMM1
00540a6b  0f2ff8                    COMISS XMM7,XMM0
00540a6e  7616                      JBE 0x00540a86
00540a70  0f57dc                    XORPS XMM3,XMM4
00540a73  0f57d4                    XORPS XMM2,XMM4
00540a76  f30f119d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM3
00540a7e  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
00540a86  0f28c2                    MOVAPS XMM0,XMM2
00540a89  0f28cb                    MOVAPS XMM1,XMM3
00540a8c  f30f59c2                  MULSS XMM0,XMM2
00540a90  f30f59cb                  MULSS XMM1,XMM3
00540a94  f30f58c1                  ADDSS XMM0,XMM1
00540a98  e8b34fefff                CALL 0x00435a50
00540a9d  f30f108d38ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff38]
00540aa5  0f57ff                    XORPS XMM7,XMM7
00540aa8  0f2fc7                    COMISS XMM0,XMM7
00540aab  762e                      JBE 0x00540adb
00540aad  f30f109528ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff28]
00540ab5  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00540abd  f30f599520ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff20]
00540ac5  f30f5ed0                  DIVSS XMM2,XMM0
00540ac9  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00540ad1  f30f59ca                  MULSS XMM1,XMM2
00540ad5  f30f59c2                  MULSS XMM0,XMM2
00540ad9  eb08                      JMP 0x00540ae3
00540adb  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00540ae3  f30f588d18ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff18]
00540aeb  f30f588530ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff30]
00540af3  8b8d1cffffff              MOV ECX,dword ptr [EBP + 0xffffff1c]
00540af9  f30f102534acba00          MOVSS XMM4,dword ptr [0x00baac34]
00540b01  41                        INC ECX
00540b02  898d1cffffff              MOV dword ptr [EBP + 0xffffff1c],ECX
00540b08  f30f118d18ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM1
00540b10  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
00540b18  47                        INC EDI
00540b19  3bbd14ffffff              CMP EDI,dword ptr [EBP + 0xffffff14]
00540b1f  0f829bfeffff              JC 0x005409c0
00540b25  85c9                      TEST ECX,ECX
00540b27  0f8ed3000000              JLE 0x00540c00
00540b2d  80be9001000000            CMP byte ptr [ESI + 0x190],0x0
00540b34  747b                      JZ 0x00540bb1
00540b36  e825e41a00                CALL 0x006eef60
00540b3b  83e001                    AND EAX,0x1
00540b3e  756b                      JNZ 0x00540bab
00540b40  f30f108d18ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff18]
00540b48  0f57c0                    XORPS XMM0,XMM0
00540b4b  f30f2a851cffffff          CVTSI2SS XMM0,dword ptr [EBP + 0xffffff1c]
00540b53  f30f109530ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff30]
00540b5b  f30f5ec8                  DIVSS XMM1,XMM0
00540b5f  f30f5ed0                  DIVSS XMM2,XMM0
00540b63  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00540b6a  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00540b71  f30f58c9                  ADDSS XMM1,XMM1
00540b75  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
00540b7d  f30f58d2                  ADDSS XMM2,XMM2
00540b81  f30f59c8                  MULSS XMM1,XMM0
00540b85  f30f59d0                  MULSS XMM2,XMM0
00540b89  f30f588e60030000          ADDSS XMM1,dword ptr [ESI + 0x360]
00540b91  f30f589664030000          ADDSS XMM2,dword ptr [ESI + 0x364]
00540b99  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
00540ba1  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
00540ba9  eb55                      JMP 0x00540c00
00540bab  8b8d1cffffff              MOV ECX,dword ptr [EBP + 0xffffff1c]
00540bb1  f30f109518ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff18]
00540bb9  f30f109d30ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff30]
00540bc1  660f6ec9                  MOVD XMM1,ECX
00540bc5  0f5bc9                    CVTDQ2PS XMM1,XMM1
00540bc8  f30f10869c030000          MOVSS XMM0,dword ptr [ESI + 0x39c]
00540bd0  f30f5ed1                  DIVSS XMM2,XMM1
00540bd4  f30f5ed9                  DIVSS XMM3,XMM1
00540bd8  f30f59d0                  MULSS XMM2,XMM0
00540bdc  f30f59d8                  MULSS XMM3,XMM0
00540be0  f30f589660030000          ADDSS XMM2,dword ptr [ESI + 0x360]
00540be8  f30f589e64030000          ADDSS XMM3,dword ptr [ESI + 0x364]
00540bf0  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
00540bf8  f30f119e64030000          MOVSS dword ptr [ESI + 0x364],XMM3
00540c00  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00540c07  80bd08ffffff00            CMP byte ptr [EBP + 0xffffff08],0x0
00540c0e  0f8575010000              JNZ 0x00540d89
00540c14  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00540c1b  b101                      MOV CL,0x1
00540c1d  8b950cffffff              MOV EDX,dword ptr [EBP + 0xffffff0c]
00540c23  6a00                      PUSH 0x0
00540c25  6a00                      PUSH 0x0
00540c27  e8843c5200                CALL 0x00a648b0
00540c2c  83c408                    ADD ESP,0x8
00540c2f  e955010000                JMP 0x00540d89
00540c34  83f808                    CMP EAX,0x8
00540c37  0f854c010000              JNZ 0x00540d89
00540c3d  6a00                      PUSH 0x0
00540c3f  682cdeb100                PUSH 0xb1de2c
00540c44  8d4e48                    LEA ECX,[ESI + 0x48]
00540c47  e83497ecff                CALL 0x0040a380
00540c4c  6a00                      PUSH 0x0
00540c4e  8bce                      MOV ECX,ESI
00540c50  e8fb831900                CALL 0x006d9050
00540c55  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
00540c59  0f842a010000              JZ 0x00540d89
00540c5f  68dcd2b100                PUSH 0xb1d2dc
00540c64  8d4e78                    LEA ECX,[ESI + 0x78]
00540c67  e864a1ecff                CALL 0x0040add0
00540c6c  84c0                      TEST AL,AL
00540c6e  0f8415010000              JZ 0x00540d89
00540c74  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
00540c7e  8d8e200f0000              LEA ECX,[ESI + 0xf20]
00540c84  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00540c88  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00540c8f  9f                        LAHF
00540c90  f6c444                    TEST AH,0x44
00540c93  7a18                      JP 0x00540cad
00540c95  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00540c9a  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00540ca1  9f                        LAHF
00540ca2  f6c444                    TEST AH,0x44
00540ca5  7a06                      JP 0x00540cad
00540ca7  8d8d34ffffff              LEA ECX,[EBP + 0xffffff34]
00540cad  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00540cb1  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00540cb9  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00540cbe  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00540cc4  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00540ccc  e85fe2efff                CALL 0x0043ef30
00540cd1  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
00540cd9  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
00540ce1  f30f59c0                  MULSS XMM0,XMM0
00540ce5  898528ffffff              MOV dword ptr [EBP + 0xffffff28],EAX
00540ceb  f30f59c9                  MULSS XMM1,XMM1
00540cef  f30f58c1                  ADDSS XMM0,XMM1
00540cf3  e8584defff                CALL 0x00435a50
00540cf8  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00540cff  7631                      JBE 0x00540d32
00540d01  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00540d09  f30f5ec8                  DIVSS XMM1,XMM0
00540d0d  0f28c1                    MOVAPS XMM0,XMM1
00540d10  f30f598d38ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff38]
00540d18  f30f59853cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff3c]
00540d20  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
00540d28  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00540d30  eb20                      JMP 0x00540d52
00540d32  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
00540d3a  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
00540d42  f30f11952cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM2
00540d4a  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
00540d52  ffb528ffffff              PUSH dword ptr [EBP + 0xffffff28]
00540d58  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
00540d5e  8bce                      MOV ECX,ESI
00540d60  6a00                      PUSH 0x0
00540d62  50                        PUSH EAX
00540d63  57                        PUSH EDI
00540d64  e877a51800                CALL 0x006cb2e0
00540d69  51                        PUSH ECX
00540d6a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00540d71  6a00                      PUSH 0x0
00540d73  6a02                      PUSH 0x2
00540d75  51                        PUSH ECX
00540d76  c704240000803f            MOV dword ptr [ESP],0x3f800000
00540d7d  8bce                      MOV ECX,ESI
00540d7f  6892000000                PUSH 0x92
00540d84  e8175e1900                CALL 0x006d6ba0
00540d89  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
00540d91  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00540d99  8b96a00b0000              MOV EDX,dword ptr [ESI + 0xba0]
00540d9f  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
00540da7  85d2                      TEST EDX,EDX
00540da9  7e1a                      JLE 0x00540dc5
00540dab  f30f2c86a4030000          CVTTSS2SI EAX,dword ptr [ESI + 0x3a4]
00540db3  f30f2c8ea0030000          CVTTSS2SI ECX,dword ptr [ESI + 0x3a0]
00540dbb  2bc8                      SUB ECX,EAX
00540dbd  03ca                      ADD ECX,EDX
00540dbf  898ea00b0000              MOV dword ptr [ESI + 0xba0],ECX
00540dc5  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00540dc8  64890d00000000            MOV dword ptr FS:[0x0],ECX
00540dcf  59                        POP ECX
00540dd0  5f                        POP EDI
00540dd1  5e                        POP ESI
00540dd2  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00540dd5  33cd                      XOR ECX,EBP
00540dd7  e84fe35a00                CALL 0x00aef12b
00540ddc  8be5                      MOV ESP,EBP
00540dde  5d                        POP EBP
00540ddf  8be3                      MOV ESP,EBX
00540de1  5b                        POP EBX
00540de2  c3                        RET
