; J460 NPC AI 0x00503300 AI_00503300
; types=844
; identities=844.0.0
; entry=00503300
00503300  53                        PUSH EBX
00503301  8bdc                      MOV EBX,ESP
00503303  83ec08                    SUB ESP,0x8
00503306  83e4f8                    AND ESP,0xfffffff8
00503309  83c404                    ADD ESP,0x4
0050330c  55                        PUSH EBP
0050330d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00503310  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00503314  8bec                      MOV EBP,ESP
00503316  6aff                      PUSH -0x1
00503318  68252aaf00                PUSH 0xaf2a25
0050331d  64a100000000              MOV EAX,FS:[0x0]
00503323  50                        PUSH EAX
00503324  53                        PUSH EBX
00503325  81ec80000000              SUB ESP,0x80
0050332b  a1b493bf00                MOV EAX,[0x00bf93b4]
00503330  33c5                      XOR EAX,EBP
00503332  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00503335  56                        PUSH ESI
00503336  57                        PUSH EDI
00503337  50                        PUSH EAX
00503338  8d45f4                    LEA EAX,[EBP + -0xc]
0050333b  64a300000000              MOV FS:[0x0],EAX
00503341  8bf9                      MOV EDI,ECX
00503343  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00503349  85c0                      TEST EAX,EAX
0050334b  0f8468070000              JZ 0x00503ab9
00503351  83f804                    CMP EAX,0x4
00503354  0f845b040000              JZ 0x005037b5
0050335a  83f808                    CMP EAX,0x8
0050335d  0f850a070000              JNZ 0x00503a6d
00503363  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0050336a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00503372  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0050337a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00503382  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00503385  0f8506010000              JNZ 0x00503491
0050338b  8d7778                    LEA ESI,[EDI + 0x78]
0050338e  85c0                      TEST EAX,EAX
00503390  7430                      JZ 0x005033c2
00503392  68a40cb600                PUSH 0xb60ca4
00503397  8bce                      MOV ECX,ESI
00503399  e8327af0ff                CALL 0x0040add0
0050339e  84c0                      TEST AL,AL
005033a0  7420                      JZ 0x005033c2
005033a2  51                        PUSH ECX
005033a3  c704240000803f            MOV dword ptr [ESP],0x3f800000
005033aa  6a00                      PUSH 0x0
005033ac  6a02                      PUSH 0x2
005033ae  51                        PUSH ECX
005033af  c704240000803f            MOV dword ptr [ESP],0x3f800000
005033b6  8bcf                      MOV ECX,EDI
005033b8  683e010000                PUSH 0x13e
005033bd  e8de371d00                CALL 0x006d6ba0
005033c2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005033c6  7463                      JZ 0x0050342b
005033c8  68940cb600                PUSH 0xb60c94
005033cd  8bce                      MOV ECX,ESI
005033cf  e8fc79f0ff                CALL 0x0040add0
005033d4  84c0                      TEST AL,AL
005033d6  7440                      JZ 0x00503418
005033d8  51                        PUSH ECX
005033d9  c704240000803f            MOV dword ptr [ESP],0x3f800000
005033e0  6a00                      PUSH 0x0
005033e2  6a02                      PUSH 0x2
005033e4  51                        PUSH ECX
005033e5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005033ec  8bcf                      MOV ECX,EDI
005033ee  683e010000                PUSH 0x13e
005033f3  e8a8371d00                CALL 0x006d6ba0
005033f8  51                        PUSH ECX
005033f9  c704240000803f            MOV dword ptr [ESP],0x3f800000
00503400  6a00                      PUSH 0x0
00503402  6a02                      PUSH 0x2
00503404  51                        PUSH ECX
00503405  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050340c  8bcf                      MOV ECX,EDI
0050340e  683a010000                PUSH 0x13a
00503413  e888371d00                CALL 0x006d6ba0
00503418  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050341c  740d                      JZ 0x0050342b
0050341e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00503425  0f8542060000              JNZ 0x00503a6d
0050342b  51                        PUSH ECX
0050342c  8d459c                    LEA EAX,[EBP + -0x64]
0050342f  c7042400000000            MOV dword ptr [ESP],0x0
00503436  50                        PUSH EAX
00503437  8bcf                      MOV ECX,EDI
00503439  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
00503443  e8f8b71b00                CALL 0x006bec40
00503448  8d4d88                    LEA ECX,[EBP + -0x78]
0050344b  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0050344f  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00503457  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
0050345c  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00503461  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00503469  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0050346e  e8edbd1700                CALL 0x0067f260
00503473  8bf0                      MOV ESI,EAX
00503475  8d4f48                    LEA ECX,[EDI + 0x48]
00503478  6a00                      PUSH 0x0
0050347a  ff34b5f00ab600            PUSH dword ptr [ESI*0x4 + 0xb60af0]
00503481  e8fa6ef0ff                CALL 0x0040a380
00503486  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
0050348c  e9dc050000                JMP 0x00503a6d
00503491  85c0                      TEST EAX,EAX
00503493  0f84fa020000              JZ 0x00503793
00503499  68dcd2b100                PUSH 0xb1d2dc
0050349e  8d4f78                    LEA ECX,[EDI + 0x78]
005034a1  e82a79f0ff                CALL 0x0040add0
005034a6  84c0                      TEST AL,AL
005034a8  0f84e5020000              JZ 0x00503793
005034ae  51                        PUSH ECX
005034af  c704240000803f            MOV dword ptr [ESP],0x3f800000
005034b6  6a00                      PUSH 0x0
005034b8  6a02                      PUSH 0x2
005034ba  51                        PUSH ECX
005034bb  c704240000803f            MOV dword ptr [ESP],0x3f800000
005034c2  e899ba1e00                CALL 0x006eef60
005034c7  83e001                    AND EAX,0x1
005034ca  8bcf                      MOV ECX,EDI
005034cc  83c00b                    ADD EAX,0xb
005034cf  50                        PUSH EAX
005034d0  e8cb361d00                CALL 0x006d6ba0
005034d5  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
005034db  8d4d9c                    LEA ECX,[EBP + -0x64]
005034de  e8edbc1700                CALL 0x0067f1d0
005034e3  f30f1008                  MOVSS XMM1,dword ptr [EAX]
005034e7  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
005034ef  f30f114d94                MOVSS dword ptr [EBP + -0x6c],XMM1
005034f4  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
005034f9  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
005034fe  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00503506  f30f114d90                MOVSS dword ptr [EBP + -0x70],XMM1
0050350b  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
00503510  e84bba1e00                CALL 0x006eef60
00503515  f30f104594                MOVSS XMM0,dword ptr [EBP + -0x6c]
0050351a  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00503522  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00503528  50                        PUSH EAX
00503529  6a00                      PUSH 0x0
0050352b  57                        PUSH EDI
0050352c  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
00503531  8d4588                    LEA EAX,[EBP + -0x78]
00503534  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
00503539  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00503541  50                        PUSH EAX
00503542  8d4580                    LEA EAX,[EBP + -0x80]
00503545  50                        PUSH EAX
00503546  6a11                      PUSH 0x11
00503548  6a04                      PUSH 0x4
0050354a  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
0050354f  e8cc55f2ff                CALL 0x00428b20
00503554  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0050355a  8db7c0030000              LEA ESI,[EDI + 0x3c0]
00503560  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
00503563  85c9                      TEST ECX,ECX
00503565  7415                      JZ 0x0050357c
00503567  8d4598                    LEA EAX,[EBP + -0x68]
0050356a  897598                    MOV dword ptr [EBP + -0x68],ESI
0050356d  50                        PUSH EAX
0050356e  81c1cc030000              ADD ECX,0x3cc
00503574  e897bcfcff                CALL 0x004cf210
00503579  8b45a4                    MOV EAX,dword ptr [EBP + -0x5c]
0050357c  8906                      MOV dword ptr [ESI],EAX
0050357e  85c0                      TEST EAX,EAX
00503580  7408                      JZ 0x0050358a
00503582  56                        PUSH ESI
00503583  8bc8                      MOV ECX,EAX
00503585  e866a7fcff                CALL 0x004cdcf0
0050358a  f30f104d94                MOVSS XMM1,dword ptr [EBP + -0x6c]
0050358f  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
00503597  c7459806000000            MOV dword ptr [EBP + -0x68],0x6
0050359e  f30f114d84                MOVSS dword ptr [EBP + -0x7c],XMM1
005035a3  f30f104d90                MOVSS XMM1,dword ptr [EBP + -0x70]
005035a8  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
005035b0  f30f114d8c                MOVSS dword ptr [EBP + -0x74],XMM1
005035b5  e8a6b91e00                CALL 0x006eef60
005035ba  8bf0                      MOV ESI,EAX
005035bc  e89fb91e00                CALL 0x006eef60
005035c1  660f6ec0                  MOVD XMM0,EAX
005035c5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005035c9  c1e81f                    SHR EAX,0x1f
005035cc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005035d5  660f5ac0                  CVTPD2PS XMM0,XMM0
005035d9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005035e1  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
005035e9  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
005035f1  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
005035f9  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
005035fe  e83d9ff1ff                CALL 0x0041d540
00503603  f30f11857cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM0
0050360b  f30f1045a4                MOVSS XMM0,dword ptr [EBP + -0x5c]
00503610  e80b9ff1ff                CALL 0x0041d520
00503615  f30f1145a4                MOVSS dword ptr [EBP + -0x5c],XMM0
0050361a  e841b91e00                CALL 0x006eef60
0050361f  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
00503624  f30f5945a4                MULSS XMM0,dword ptr [EBP + -0x5c]
00503629  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050362f  660f6ec8                  MOVD XMM1,EAX
00503633  f30fe6c9                  CVTDQ2PD XMM1,XMM1
00503637  c1e81f                    SHR EAX,0x1f
0050363a  56                        PUSH ESI
0050363b  6a01                      PUSH 0x1
0050363d  6a00                      PUSH 0x0
0050363f  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
00503648  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
0050364e  50                        PUSH EAX
0050364f  8d459c                    LEA EAX,[EBP + -0x64]
00503652  50                        PUSH EAX
00503653  660f5ad1                  CVTPD2PS XMM2,XMM1
00503657  6a63                      PUSH 0x63
00503659  68e8030000                PUSH 0x3e8
0050365e  f30f104d94                MOVSS XMM1,dword ptr [EBP + -0x6c]
00503663  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0050366b  f30f598d7cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff7c]
00503673  f30f58d2                  ADDSS XMM2,XMM2
00503677  f30f5cc8                  SUBSS XMM1,XMM0
0050367b  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
00503680  f30f59857cffffff          MULSS XMM0,dword ptr [EBP + 0xffffff7c]
00503688  f30f581504a3ba00          ADDSS XMM2,dword ptr [0x00baa304]
00503690  f30f59ca                  MULSS XMM1,XMM2
00503694  f30f118d74ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM1
0050369c  f30f104d94                MOVSS XMM1,dword ptr [EBP + -0x6c]
005036a1  f30f594da4                MULSS XMM1,dword ptr [EBP + -0x5c]
005036a6  f30f58c8                  ADDSS XMM1,XMM0
005036aa  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
005036af  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
005036b7  f30f59ca                  MULSS XMM1,XMM2
005036bb  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
005036c0  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
005036c5  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
005036cd  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
005036d5  f30f1145a0                MOVSS dword ptr [EBP + -0x60],XMM0
005036da  e84154f2ff                CALL 0x00428b20
005036df  8bf0                      MOV ESI,EAX
005036e1  e87ab81e00                CALL 0x006eef60
005036e6  8d8ef0000000              LEA ECX,[ESI + 0xf0]
005036ec  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
005036f3  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
005036fa  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00503701  660f6ec0                  MOVD XMM0,EAX
00503705  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00503709  c1e81f                    SHR EAX,0x1f
0050370c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00503715  8d45a8                    LEA EAX,[EBP + -0x58]
00503718  3bc8                      CMP ECX,EAX
0050371a  660f5ac8                  CVTPD2PS XMM1,XMM0
0050371e  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00503726  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
0050372e  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
00503736  0f28c1                    MOVAPS XMM0,XMM1
00503739  f30f598ee8000000          MULSS XMM1,dword ptr [ESI + 0xe8]
00503741  f30f5986e4000000          MULSS XMM0,dword ptr [ESI + 0xe4]
00503749  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00503751  0f280d30c3ba00            MOVAPS XMM1,xmmword ptr [0x00bac330]
00503758  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00503760  0f57c0                    XORPS XMM0,XMM0
00503763  7417                      JZ 0x0050377c
00503765  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
00503768  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0050376c  f30f7e45c8                MOVQ XMM0,qword ptr [EBP + -0x38]
00503771  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00503776  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
00503779  894128                    MOV dword ptr [ECX + 0x28],EAX
0050377c  8b06                      MOV EAX,dword ptr [ESI]
0050377e  8bce                      MOV ECX,ESI
00503780  ff500c                    CALL dword ptr [EAX + 0xc]
00503783  836d9801                  SUB dword ptr [EBP + -0x68],0x1
00503787  0f8528feffff              JNZ 0x005035b5
0050378d  ff87c40b0000              INC dword ptr [EDI + 0xbc4]
00503793  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00503797  740d                      JZ 0x005037a6
00503799  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005037a0  0f85c7020000              JNZ 0x00503a6d
005037a6  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005037b0  e9b8020000                JMP 0x00503a6d
005037b5  8b97c0030000              MOV EDX,dword ptr [EDI + 0x3c0]
005037bb  8d8f14040000              LEA ECX,[EDI + 0x414]
005037c1  85d2                      TEST EDX,EDX
005037c3  741f                      JZ 0x005037e4
005037c5  8b823c030000              MOV EAX,dword ptr [EDX + 0x33c]
005037cb  8b9240030000              MOV EDX,dword ptr [EDX + 0x340]
005037d1  89459c                    MOV dword ptr [EBP + -0x64],EAX
005037d4  8d459c                    LEA EAX,[EBP + -0x64]
005037d7  6a01                      PUSH 0x1
005037d9  50                        PUSH EAX
005037da  8955a0                    MOV dword ptr [EBP + -0x60],EDX
005037dd  e85e112e00                CALL 0x007e4940
005037e2  eb07                      JMP 0x005037eb
005037e4  6a00                      PUSH 0x0
005037e6  e8152b2e00                CALL 0x007e6300
005037eb  a118ddb100                MOV EAX,[0x00b1dd18]
005037f0  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
005037f6  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
005037fd  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
00503804  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00503807  894dc0                    MOV dword ptr [EBP + -0x40],ECX
0050380a  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
0050380e  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00503815  a130ddb100                MOV EAX,[0x00b1dd30]
0050381a  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00503820  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00503827  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0050382e  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00503831  894dd8                    MOV dword ptr [EBP + -0x28],ECX
00503834  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
00503838  51                        PUSH ECX
00503839  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0050383d  8d45bc                    LEA EAX,[EBP + -0x44]
00503840  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00503847  8bcf                      MOV ECX,EDI
00503849  50                        PUSH EAX
0050384a  8d45d4                    LEA EAX,[EBP + -0x2c]
0050384d  50                        PUSH EAX
0050384e  e8ddda1b00                CALL 0x006c1330
00503853  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00503857  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0050385a  83fa10                    CMP EDX,0x10
0050385d  7228                      JC 0x00503887
0050385f  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00503862  42                        INC EDX
00503863  8bc1                      MOV EAX,ECX
00503865  81fa00100000              CMP EDX,0x1000
0050386b  7210                      JC 0x0050387d
0050386d  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00503870  83c223                    ADD EDX,0x23
00503873  2bc1                      SUB EAX,ECX
00503875  83c0fc                    ADD EAX,-0x4
00503878  83f81f                    CMP EAX,0x1f
0050387b  7749                      JA 0x005038c6
0050387d  52                        PUSH EDX
0050387e  51                        PUSH ECX
0050387f  e8d8b85e00                CALL 0x00aef15c
00503884  83c408                    ADD ESP,0x8
00503887  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0050388e  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
00503891  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00503898  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050389f  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
005038a3  83fa10                    CMP EDX,0x10
005038a6  722e                      JC 0x005038d6
005038a8  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
005038ab  42                        INC EDX
005038ac  8bc1                      MOV EAX,ECX
005038ae  81fa00100000              CMP EDX,0x1000
005038b4  7216                      JC 0x005038cc
005038b6  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
005038b9  83c223                    ADD EDX,0x23
005038bc  2bc1                      SUB EAX,ECX
005038be  83c0fc                    ADD EAX,-0x4
005038c1  83f81f                    CMP EAX,0x1f
005038c4  7606                      JBE 0x005038cc
005038c6  ff159488b100              CALL dword ptr [0x00b18894]
005038cc  52                        PUSH EDX
005038cd  51                        PUSH ECX
005038ce  e889b85e00                CALL 0x00aef15c
005038d3  83c408                    ADD ESP,0x8
005038d6  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
005038dd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005038e5  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
005038ed  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005038f5  0f8572010000              JNZ 0x00503a6d
005038fb  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00503901  2500000020                AND EAX,0x20000000
00503906  83c800                    OR EAX,0x0
00503909  7423                      JZ 0x0050392e
0050390b  8bcf                      MOV ECX,EDI
0050390d  e82eaf1b00                CALL 0x006be840
00503912  8bc8                      MOV ECX,EAX
00503914  e8178c1a00                CALL 0x006ac530
00503919  84c0                      TEST AL,AL
0050391b  0f844c010000              JZ 0x00503a6d
00503921  83bfc40b000005            CMP dword ptr [EDI + 0xbc4],0x5
00503928  0f8d3f010000              JGE 0x00503a6d
0050392e  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00503935  0f8f1a010000              JG 0x00503a55
0050393b  e820b61e00                CALL 0x006eef60
00503940  33d2                      XOR EDX,EDX
00503942  b905000000                MOV ECX,0x5
00503947  f7f1                      DIV ECX
00503949  85d2                      TEST EDX,EDX
0050394b  0f8504010000              JNZ 0x00503a55
00503951  8bcf                      MOV ECX,EDI
00503953  e8e8ae1b00                CALL 0x006be840
00503958  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00503960  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00503968  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00503970  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00503978  f30f59c0                  MULSS XMM0,XMM0
0050397c  f30f59c9                  MULSS XMM1,XMM1
00503980  f30f58c1                  ADDSS XMM0,XMM1
00503984  e8c720f3ff                CALL 0x00435a50
00503989  f30f100d08abba00          MOVSS XMM1,dword ptr [0x00baab08]
00503991  0f2fc8                    COMISS XMM1,XMM0
00503994  0f86af000000              JBE 0x00503a49
0050399a  6a00                      PUSH 0x0
0050399c  68000a0001                PUSH 0x1000a00
005039a1  8bcf                      MOV ECX,EDI
005039a3  e8883af1ff                CALL 0x00417430
005039a8  84c0                      TEST AL,AL
005039aa  0f8599000000              JNZ 0x00503a49
005039b0  a17816c700                MOV EAX,[0x00c71678]
005039b5  8bcf                      MOV ECX,EDI
005039b7  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005039bd  e87eae1b00                CALL 0x006be840
005039c2  6a00                      PUSH 0x0
005039c4  6a00                      PUSH 0x0
005039c6  6a00                      PUSH 0x0
005039c8  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
005039ce  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
005039d4  6a00                      PUSH 0x0
005039d6  8945a0                    MOV dword ptr [EBP + -0x60],EAX
005039d9  8d873c030000              LEA EAX,[EDI + 0x33c]
005039df  6a02                      PUSH 0x2
005039e1  50                        PUSH EAX
005039e2  8d459c                    LEA EAX,[EBP + -0x64]
005039e5  894d9c                    MOV dword ptr [EBP + -0x64],ECX
005039e8  50                        PUSH EAX
005039e9  8bce                      MOV ECX,ESI
005039eb  e800d42e00                CALL 0x007f0df0
005039f0  84c0                      TEST AL,AL
005039f2  7449                      JZ 0x00503a3d
005039f4  6a01                      PUSH 0x1
005039f6  68b808b600                PUSH 0xb608b8
005039fb  8d4f48                    LEA ECX,[EDI + 0x48]
005039fe  c787a00b00004b000000      MOV dword ptr [EDI + 0xba0],0x4b
00503a08  e8c36bf0ff                CALL 0x0040a5d0
00503a0d  84c0                      TEST AL,AL
00503a0f  740f                      JZ 0x00503a20
00503a11  8d4f78                    LEA ECX,[EDI + 0x78]
00503a14  e89767f0ff                CALL 0x0040a1b0
00503a19  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00503a20  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00503a2a  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
00503a31  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00503a3b  eb30                      JMP 0x00503a6d
00503a3d  c787a00b000007000000      MOV dword ptr [EDI + 0xba0],0x7
00503a47  eb24                      JMP 0x00503a6d
00503a49  c787a00b000003000000      MOV dword ptr [EDI + 0xba0],0x3
00503a53  eb18                      JMP 0x00503a6d
00503a55  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00503a5d  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00503a65  2bc8                      SUB ECX,EAX
00503a67  018fa00b0000              ADD dword ptr [EDI + 0xba0],ECX
00503a6d  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00503a74  7457                      JZ 0x00503acd
00503a76  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00503a7a  7451                      JZ 0x00503acd
00503a7c  681cceb100                PUSH 0xb1ce1c
00503a81  8d4f78                    LEA ECX,[EDI + 0x78]
00503a84  e85772f0ff                CALL 0x0040ace0
00503a89  85c0                      TEST EAX,EAX
00503a8b  7440                      JZ 0x00503acd
00503a8d  80780c00                  CMP byte ptr [EAX + 0xc],0x0
00503a91  743a                      JZ 0x00503acd
00503a93  e8c8b41e00                CALL 0x006eef60
00503a98  50                        PUSH EAX
00503a99  6a00                      PUSH 0x0
00503a9b  57                        PUSH EDI
00503a9c  6840b6c700                PUSH 0xc7b640
00503aa1  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00503aa7  51                        PUSH ECX
00503aa8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00503aae  6a11                      PUSH 0x11
00503ab0  6a04                      PUSH 0x4
00503ab2  e86950f2ff                CALL 0x00428b20
00503ab7  eb14                      JMP 0x00503acd
00503ab9  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00503ac3  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00503acd  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00503ad0  64890d00000000            MOV dword ptr FS:[0x0],ECX
00503ad7  59                        POP ECX
00503ad8  5f                        POP EDI
00503ad9  5e                        POP ESI
00503ada  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00503add  33cd                      XOR ECX,EBP
00503adf  e847b65e00                CALL 0x00aef12b
00503ae4  8be5                      MOV ESP,EBP
00503ae6  5d                        POP EBP
00503ae7  8be3                      MOV ESP,EBX
00503ae9  5b                        POP EBX
00503aea  c3                        RET
