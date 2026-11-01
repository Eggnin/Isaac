; J460 NPC AI 0x00771200 HELPER_Player_HasCollectibleEffect
; types=1,1000
; identities=1.*,1000.*
; entry=00771200
00771200  55                        PUSH EBP
00771201  8bec                      MOV EBP,ESP
00771203  83e4f8                    AND ESP,0xfffffff8
00771206  83ec24                    SUB ESP,0x24
00771209  53                        PUSH EBX
0077120a  56                        PUSH ESI
0077120b  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00771211  57                        PUSH EDI
00771212  894c2410                  MOV dword ptr [ESP + 0x10],ECX
00771216  8b86d8b30400              MOV EAX,dword ptr [ESI + 0x4b3d8]
0077121c  8d7e14                    LEA EDI,[ESI + 0x14]
0077121f  3b86dcb30400              CMP EAX,dword ptr [ESI + 0x4b3dc]
00771225  0f8487000000              JZ 0x007712b2
0077122b  8bc1                      MOV EAX,ECX
0077122d  8b80501e0000              MOV EAX,dword ptr [EAX + 0x1e50]
00771233  85c0                      TEST EAX,EAX
00771235  7408                      JZ 0x0077123f
00771237  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0077123a  8b580c                    MOV EBX,dword ptr [EAX + 0xc]
0077123d  eb11                      JMP 0x00771250
0077123f  0f57c0                    XORPS XMM0,XMM0
00771242  660f13442418              MOVLPD qword ptr [ESP + 0x18],XMM0
00771248  8b5c241c                  MOV EBX,dword ptr [ESP + 0x1c]
0077124c  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00771250  894c240c                  MOV dword ptr [ESP + 0xc],ECX
00771254  8d8640c40400              LEA EAX,[ESI + 0x4c440]
0077125a  894c2418                  MOV dword ptr [ESP + 0x18],ECX
0077125e  8d4c2418                  LEA ECX,[ESP + 0x18]
00771262  51                        PUSH ECX
00771263  8d4c2428                  LEA ECX,[ESP + 0x28]
00771267  895c2420                  MOV dword ptr [ESP + 0x20],EBX
0077126b  51                        PUSH ECX
0077126c  8bc8                      MOV ECX,EAX
0077126e  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
00771272  e8690cfcff                CALL 0x00731ee0
00771277  8b44242c                  MOV EAX,dword ptr [ESP + 0x2c]
0077127b  80780d00                  CMP byte ptr [EAX + 0xd],0x0
0077127f  7531                      JNZ 0x007712b2
00771281  3b5814                    CMP EBX,dword ptr [EAX + 0x14]
00771284  722c                      JC 0x007712b2
00771286  7709                      JA 0x00771291
00771288  8b4c240c                  MOV ECX,dword ptr [ESP + 0xc]
0077128c  3b4810                    CMP ECX,dword ptr [EAX + 0x10]
0077128f  7221                      JC 0x007712b2
00771291  3b8640c40400              CMP EAX,dword ptr [ESI + 0x4c440]
00771297  7419                      JZ 0x007712b2
00771299  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
0077129d  8d442418                  LEA EAX,[ESP + 0x18]
007712a1  50                        PUSH EAX
007712a2  e8a92e1a00                CALL 0x00914150
007712a7  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
007712ad  85c0                      TEST EAX,EAX
007712af  0f45f8                    CMOVNZ EDI,EAX
007712b2  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
007712b6  8b80c0130000              MOV EAX,dword ptr [EAX + 0x13c0]
007712bc  83f80d                    CMP EAX,0xd
007712bf  0f8424010000              JZ 0x007713e9
007712c5  83f80a                    CMP EAX,0xa
007712c8  0f84d1000000              JZ 0x0077139f
007712ce  83f802                    CMP EAX,0x2
007712d1  0f84c2000000              JZ 0x00771399
007712d7  83f805                    CMP EAX,0x5
007712da  0f84ac000000              JZ 0x0077138c
007712e0  83f806                    CMP EAX,0x6
007712e3  0f849a000000              JZ 0x00771383
007712e9  83f808                    CMP EAX,0x8
007712ec  7443                      JZ 0x00771331
007712ee  83f80b                    CMP EAX,0xb
007712f1  743e                      JZ 0x00771331
007712f3  83f812                    CMP EAX,0x12
007712f6  0f8506010000              JNZ 0x00771402
007712fc  a17816c700                MOV EAX,[0x00c71678]
00771301  8b8084650200              MOV EAX,dword ptr [EAX + 0x26584]
00771307  83f825                    CMP EAX,0x25
0077130a  0f84f2000000              JZ 0x00771402
00771310  83f826                    CMP EAX,0x26
00771313  0f84e9000000              JZ 0x00771402
00771319  817d0848020000            CMP dword ptr [EBP + 0x8],0x248
00771320  0f85dc000000              JNZ 0x00771402
00771326  b001                      MOV AL,0x1
00771328  5f                        POP EDI
00771329  5e                        POP ESI
0077132a  5b                        POP EBX
0077132b  8be5                      MOV ESP,EBP
0077132d  5d                        POP EBP
0077132e  c20800                    RET 0x8
00771331  817d08d6000000            CMP dword ptr [EBP + 0x8],0xd6
00771338  0f85c4000000              JNZ 0x00771402
0077133e  80bf8301000000            CMP byte ptr [EDI + 0x183],0x0
00771345  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0077134b  7528                      JNZ 0x00771375
0077134d  837e0802                  CMP dword ptr [ESI + 0x8],0x2
00771351  0f85ab000000              JNZ 0x00771402
00771357  85c9                      TEST ECX,ECX
00771359  0f84a3000000              JZ 0x00771402
0077135f  83b93066020000            CMP dword ptr [ECX + 0x26630],0x0
00771366  770d                      JA 0x00771375
00771368  80b98965020000            CMP byte ptr [ECX + 0x26589],0x0
0077136f  0f848d000000              JZ 0x00771402
00771375  83f80b                    CMP EAX,0xb
00771378  74ac                      JZ 0x00771326
0077137a  83b98465020000            CMP dword ptr [ECX + 0x26584],0x0
00771381  eb9d                      JMP 0x00771320
00771383  817d089d000000            CMP dword ptr [EBP + 0x8],0x9d
0077138a  eb94                      JMP 0x00771320
0077138c  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
0077138f  83f87a                    CMP EAX,0x7a
00771392  7492                      JZ 0x00771326
00771394  83f875                    CMP EAX,0x75
00771397  eb87                      JMP 0x00771320
00771399  837d082e                  CMP dword ptr [EBP + 0x8],0x2e
0077139d  eb81                      JMP 0x00771320
0077139f  817d0839010000            CMP dword ptr [EBP + 0x8],0x139
007713a6  755a                      JNZ 0x00771402
007713a8  80bf3201000000            CMP byte ptr [EDI + 0x132],0x0
007713af  0f8571ffffff              JNZ 0x00771326
007713b5  837e0802                  CMP dword ptr [ESI + 0x8],0x2
007713b9  7547                      JNZ 0x00771402
007713bb  a17816c700                MOV EAX,[0x00c71678]
007713c0  85c0                      TEST EAX,EAX
007713c2  743e                      JZ 0x00771402
007713c4  83b83066020000            CMP dword ptr [EAX + 0x26630],0x0
007713cb  0f8755ffffff              JA 0x00771326
007713d1  80b88965020000            CMP byte ptr [EAX + 0x26589],0x0
007713d8  0f8548ffffff              JNZ 0x00771326
007713de  32c0                      XOR AL,AL
007713e0  5f                        POP EDI
007713e1  5e                        POP ESI
007713e2  5b                        POP EBX
007713e3  8be5                      MOV ESP,EBP
007713e5  5d                        POP EBP
007713e6  c20800                    RET 0x8
007713e9  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
007713ec  3d68010000                CMP EAX,0x168
007713f1  0f842fffffff              JZ 0x00771326
007713f7  3d9c010000                CMP EAX,0x19c
007713fc  0f8424ffffff              JZ 0x00771326
00771402  5f                        POP EDI
00771403  5e                        POP ESI
00771404  32c0                      XOR AL,AL
00771406  5b                        POP EBX
00771407  8be5                      MOV ESP,EBP
00771409  5d                        POP EBP
0077140a  c20800                    RET 0x8
