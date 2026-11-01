; J460 NPC AI 0x004741f0 AI_004741f0
; types=46
; identities=46.0.0,46.1.0,46.2.0
; entry=004741f0
004741f0  53                        PUSH EBX
004741f1  8bdc                      MOV EBX,ESP
004741f3  83ec08                    SUB ESP,0x8
004741f6  83e4f8                    AND ESP,0xfffffff8
004741f9  83c404                    ADD ESP,0x4
004741fc  55                        PUSH EBP
004741fd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00474200  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00474204  8bec                      MOV EBP,ESP
00474206  6aff                      PUSH -0x1
00474208  68a529af00                PUSH 0xaf29a5
0047420d  64a100000000              MOV EAX,FS:[0x0]
00474213  50                        PUSH EAX
00474214  53                        PUSH EBX
00474215  81ec20010000              SUB ESP,0x120
0047421b  a1b493bf00                MOV EAX,[0x00bf93b4]
00474220  33c5                      XOR EAX,EBP
00474222  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00474225  56                        PUSH ESI
00474226  57                        PUSH EDI
00474227  50                        PUSH EAX
00474228  8d45f4                    LEA EAX,[EBP + -0xc]
0047422b  64a300000000              MOV FS:[0x0],EAX
00474231  8bf9                      MOV EDI,ECX
00474233  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0047423a  7555                      JNZ 0x00474291
0047423c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00474246  c787e401000000000000      MOV dword ptr [EDI + 0x1e4],0x0
00474250  c787e80100000000803f      MOV dword ptr [EDI + 0x1e8],0x3f800000
0047425a  c787ec01000000000000      MOV dword ptr [EDI + 0x1ec],0x0
00474264  c787f00100000000803f      MOV dword ptr [EDI + 0x1f0],0x3f800000
0047426e  c7870402000000000000      MOV dword ptr [EDI + 0x204],0x0
00474278  c787080200009a99993e      MOV dword ptr [EDI + 0x208],0x3e99999a
00474282  c7870c02000000000000      MOV dword ptr [EDI + 0x20c],0x0
0047428c  e9430b0000                JMP 0x00474dd4
00474291  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00474299  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
004742a1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004742a9  e892a52400                CALL 0x006be840
004742ae  8db73c030000              LEA ESI,[EDI + 0x33c]
004742b4  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004742bc  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004742c4  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004742c8  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
004742cd  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004742d3  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
004742db  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004742e3  83f804                    CMP EAX,0x4
004742e6  0f85f9010000              JNZ 0x004744e5
004742ec  a118ddb100                MOV EAX,[0x00b1dd18]
004742f1  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
004742f7  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004742fe  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
00474305  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
00474308  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0047430b  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0047430f  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00474316  a130ddb100                MOV EAX,[0x00b1dd30]
0047431b  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
00474321  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
00474328  c745b808000000            MOV dword ptr [EBP + -0x48],0x8
0047432f  8945a8                    MOV dword ptr [EBP + -0x58],EAX
00474332  894dac                    MOV dword ptr [EBP + -0x54],ECX
00474335  c645b000                  MOV byte ptr [EBP + -0x50],0x0
00474339  51                        PUSH ECX
0047433a  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0047433e  8d45d4                    LEA EAX,[EBP + -0x2c]
00474341  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
00474348  8bcf                      MOV ECX,EDI
0047434a  50                        PUSH EAX
0047434b  8d45a8                    LEA EAX,[EBP + -0x58]
0047434e  50                        PUSH EAX
0047434f  e8dccf2400                CALL 0x006c1330
00474354  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
00474358  8b55bc                    MOV EDX,dword ptr [EBP + -0x44]
0047435b  83fa10                    CMP EDX,0x10
0047435e  7228                      JC 0x00474388
00474360  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
00474363  42                        INC EDX
00474364  8bc1                      MOV EAX,ECX
00474366  81fa00100000              CMP EDX,0x1000
0047436c  7210                      JC 0x0047437e
0047436e  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00474371  83c223                    ADD EDX,0x23
00474374  2bc1                      SUB EAX,ECX
00474376  83c0fc                    ADD EAX,-0x4
00474379  83f81f                    CMP EAX,0x1f
0047437c  7749                      JA 0x004743c7
0047437e  52                        PUSH EDX
0047437f  51                        PUSH ECX
00474380  e8d7ad6700                CALL 0x00aef15c
00474385  83c408                    ADD ESP,0x8
00474388  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0047438f  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00474392  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00474399  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
004743a0  c645a800                  MOV byte ptr [EBP + -0x58],0x0
004743a4  83fa10                    CMP EDX,0x10
004743a7  722e                      JC 0x004743d7
004743a9  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004743ac  42                        INC EDX
004743ad  8bc1                      MOV EAX,ECX
004743af  81fa00100000              CMP EDX,0x1000
004743b5  7216                      JC 0x004743cd
004743b7  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004743ba  83c223                    ADD EDX,0x23
004743bd  2bc1                      SUB EAX,ECX
004743bf  83c0fc                    ADD EAX,-0x4
004743c2  83f81f                    CMP EAX,0x1f
004743c5  7606                      JBE 0x004743cd
004743c7  ff159488b100              CALL dword ptr [0x00b18894]
004743cd  52                        PUSH EDX
004743ce  51                        PUSH ECX
004743cf  e888ad6700                CALL 0x00aef15c
004743d4  83c408                    ADD ESP,0x8
004743d7  6a00                      PUSH 0x0
004743d9  51                        PUSH ECX
004743da  8d8f14040000              LEA ECX,[EDI + 0x414]
004743e0  c704240000803f            MOV dword ptr [ESP],0x3f800000
004743e7  e8540f3700                CALL 0x007e5340
004743ec  e86fab2700                CALL 0x006eef60
004743f1  33d2                      XOR EDX,EDX
004743f3  b932000000                MOV ECX,0x32
004743f8  f7f1                      DIV ECX
004743fa  85d2                      TEST EDX,EDX
004743fc  0f85cc090000              JNZ 0x00474dce
00474402  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00474408  2500020000                AND EAX,0x200
0047440d  0bc2                      OR EAX,EDX
0047440f  0f85b9090000              JNZ 0x00474dce
00474415  50                        PUSH EAX
00474416  6800080001                PUSH 0x1000800
0047441b  8bcf                      MOV ECX,EDI
0047441d  e80e30faff                CALL 0x00417430
00474422  84c0                      TEST AL,AL
00474424  7416                      JZ 0x0047443c
00474426  e835ab2700                CALL 0x006eef60
0047442b  33d2                      XOR EDX,EDX
0047442d  b90a000000                MOV ECX,0xa
00474432  f7f1                      DIV ECX
00474434  85d2                      TEST EDX,EDX
00474436  0f8592090000              JNZ 0x00474dce
0047443c  0f57c0                    XORPS XMM0,XMM0
0047443f  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00474449  0f2f85f4feffff            COMISS XMM0,dword ptr [EBP + 0xfffffef4]
00474450  6a01                      PUSH 0x1
00474452  6854ddb100                PUSH 0xb1dd54
00474457  8d4f48                    LEA ECX,[EDI + 0x48]
0047445a  0f97c0                    SETA AL
0047445d  888748010000              MOV byte ptr [EDI + 0x148],AL
00474463  e86861f9ff                CALL 0x0040a5d0
00474468  84c0                      TEST AL,AL
0047446a  740f                      JZ 0x0047447b
0047446c  8d4f78                    LEA ECX,[EDI + 0x78]
0047446f  e83c5df9ff                CALL 0x0040a1b0
00474474  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0047447b  e8e0aa2700                CALL 0x006eef60
00474480  a801                      TEST AL,0x1
00474482  7525                      JNZ 0x004744a9
00474484  a17816c700                MOV EAX,[0x00c71678]
00474489  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0047448f  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
00474495  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0047449b  03c8                      ADD ECX,EAX
0047449d  33c0                      XOR EAX,EAX
0047449f  85c9                      TEST ECX,ECX
004744a1  0f4fc1                    CMOVG EAX,ECX
004744a4  83f804                    CMP EAX,0x4
004744a7  7c1e                      JL 0x004744c7
004744a9  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004744b1  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004744b8  0f2f0550a9ba00            COMISS XMM0,dword ptr [0x00baa950]
004744bf  7615                      JBE 0x004744d6
004744c1  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
004744c5  750f                      JNZ 0x004744d6
004744c7  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004744d1  e9f8080000                JMP 0x00474dce
004744d6  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
004744e0  e9e9080000                JMP 0x00474dce
004744e5  83f808                    CMP EAX,0x8
004744e8  0f8562030000              JNZ 0x00474850
004744ee  83bf1004000005            CMP dword ptr [EDI + 0x410],0x5
004744f5  0f85c0080000              JNZ 0x00474dbb
004744fb  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004744fe  51                        PUSH ECX
004744ff  c704240000803f            MOV dword ptr [ESP],0x3f800000
00474506  6a00                      PUSH 0x0
00474508  6a02                      PUSH 0x2
0047450a  51                        PUSH ECX
0047450b  8bcf                      MOV ECX,EDI
0047450d  83f802                    CMP EAX,0x2
00474510  757c                      JNZ 0x0047458e
00474512  c704243333333f            MOV dword ptr [ESP],0x3f333333
00474519  68d5000000                PUSH 0xd5
0047451e  e87d262600                CALL 0x006d6ba0
00474523  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
00474529  e802aafcff                CALL 0x0043ef30
0047452e  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
00474534  8bcf                      MOV ECX,EDI
00474536  838d58ffffff01            OR dword ptr [EBP + 0xffffff58],0x1
0047453d  c78514ffffff9a99993f      MOV dword ptr [EBP + 0xffffff14],0x3f99999a
00474547  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
0047454d  e8eea22400                CALL 0x006be840
00474552  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00474558  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0047455e  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
00474564  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
0047456a  50                        PUSH EAX
0047456b  51                        PUSH ECX
0047456c  c7042400002041            MOV dword ptr [ESP],0x41200000
00474573  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
00474579  50                        PUSH EAX
0047457a  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
00474580  8bcf                      MOV ECX,EDI
00474582  6a03                      PUSH 0x3
00474584  e847882500                CALL 0x006ccdd0
00474589  e92d080000                JMP 0x00474dbb
0047458e  83f801                    CMP EAX,0x1
00474591  0f8596010000              JNZ 0x0047472d
00474597  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047459e  689f000000                PUSH 0x9f
004745a3  e8f8252600                CALL 0x006d6ba0
004745a8  e8b3a92700                CALL 0x006eef60
004745ad  a801                      TEST AL,0x1
004745af  0f84c8000000              JZ 0x0047467d
004745b5  c785fcfeffff02000000      MOV dword ptr [EBP + 0xfffffefc],0x2
004745bf  90                        NOP
004745c0  a17816c700                MOV EAX,[0x00c71678]
004745c5  8bcf                      MOV ECX,EDI
004745c7  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004745cd  e86ea22400                CALL 0x006be840
004745d2  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
004745da  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004745e2  f30f59c3                  MULSS XMM0,XMM3
004745e6  6a00                      PUSH 0x0
004745e8  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004745f0  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
004745f8  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004745fe  f30f59cb                  MULSS XMM1,XMM3
00474602  6a00                      PUSH 0x0
00474604  f30f59d3                  MULSS XMM2,XMM3
00474608  6a00                      PUSH 0x0
0047460a  f30f58c8                  ADDSS XMM1,XMM0
0047460e  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00474616  f30f59c3                  MULSS XMM0,XMM3
0047461a  51                        PUSH ECX
0047461b  c7042400008c42            MOV dword ptr [ESP],0x428c0000
00474622  8bce                      MOV ECX,ESI
00474624  50                        PUSH EAX
00474625  f30f58d0                  ADDSS XMM2,XMM0
00474629  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
00474631  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00474637  50                        PUSH EAX
00474638  f30f1195ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM2
00474640  e8dbee3900                CALL 0x00813520
00474645  51                        PUSH ECX
00474646  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
0047464d  8d873c030000              LEA EAX,[EDI + 0x33c]
00474653  6a00                      PUSH 0x0
00474655  ffb5f4feffff              PUSH dword ptr [EBP + 0xfffffef4]
0047465b  ffb5f0feffff              PUSH dword ptr [EBP + 0xfffffef0]
00474661  57                        PUSH EDI
00474662  50                        PUSH EAX
00474663  e8e8e02400                CALL 0x006c2750
00474668  83c418                    ADD ESP,0x18
0047466b  83adfcfeffff01            SUB dword ptr [EBP + 0xfffffefc],0x1
00474672  0f8548ffffff              JNZ 0x004745c0
00474678  e93e070000                JMP 0x00474dbb
0047467d  a17816c700                MOV EAX,[0x00c71678]
00474682  8bcf                      MOV ECX,EDI
00474684  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0047468a  e8b1a12400                CALL 0x006be840
0047468f  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00474697  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0047469f  f30f59c1                  MULSS XMM0,XMM1
004746a3  6a00                      PUSH 0x0
004746a5  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004746ad  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004746b5  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004746bb  f30f59d1                  MULSS XMM2,XMM1
004746bf  6a00                      PUSH 0x0
004746c1  f30f59d9                  MULSS XMM3,XMM1
004746c5  6a00                      PUSH 0x0
004746c7  f30f58d0                  ADDSS XMM2,XMM0
004746cb  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004746d3  f30f59c1                  MULSS XMM0,XMM1
004746d7  51                        PUSH ECX
004746d8  c7042400008c42            MOV dword ptr [ESP],0x428c0000
004746df  8bce                      MOV ECX,ESI
004746e1  50                        PUSH EAX
004746e2  f30f58c3                  ADDSS XMM0,XMM3
004746e6  f30f1195e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM2
004746ee  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
004746f4  50                        PUSH EAX
004746f5  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004746fd  e81eee3900                CALL 0x00813520
00474702  51                        PUSH ECX
00474703  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
0047470a  8d873c030000              LEA EAX,[EDI + 0x33c]
00474710  6a01                      PUSH 0x1
00474712  ffb5f4feffff              PUSH dword ptr [EBP + 0xfffffef4]
00474718  ffb5f0feffff              PUSH dword ptr [EBP + 0xfffffef0]
0047471e  57                        PUSH EDI
0047471f  50                        PUSH EAX
00474720  e82be02400                CALL 0x006c2750
00474725  83c418                    ADD ESP,0x18
00474728  e98e060000                JMP 0x00474dbb
0047472d  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00474734  6809010000                PUSH 0x109
00474739  e862242600                CALL 0x006d6ba0
0047473e  51                        PUSH ECX
0047473f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00474746  6a00                      PUSH 0x0
00474748  6a02                      PUSH 0x2
0047474a  51                        PUSH ECX
0047474b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00474752  8bcf                      MOV ECX,EDI
00474754  6a6c                      PUSH 0x6c
00474756  e845242600                CALL 0x006d6ba0
0047475b  e800a82700                CALL 0x006eef60
00474760  8a8f48010000              MOV CL,byte ptr [EDI + 0x148]
00474766  8bd0                      MOV EDX,EAX
00474768  84c9                      TEST CL,CL
0047476a  741e                      JZ 0x0047478a
0047476c  f30f100514aeba00          MOVSS XMM0,dword ptr [0x00baae14]
00474774  c785f8feffff0000f0c1      MOV dword ptr [EBP + 0xfffffef8],0xc1f00000
0047477e  c785fcfeffff00000000      MOV dword ptr [EBP + 0xfffffefc],0x0
00474788  eb1c                      JMP 0x004747a6
0047478a  f30f1005d0a8ba00          MOVSS XMM0,dword ptr [0x00baa8d0]
00474792  c785f0feffff0000f041      MOV dword ptr [EBP + 0xfffffef0],0x41f00000
0047479c  c785f4feffff00000000      MOV dword ptr [EBP + 0xfffffef4],0x0
004747a6  f30f5806                  ADDSS XMM0,dword ptr [ESI]
004747aa  6a00                      PUSH 0x0
004747ac  68acd6c500                PUSH 0xc5d6ac
004747b1  68dcd5c500                PUSH 0xc5d5dc
004747b6  6a00                      PUSH 0x0
004747b8  84c9                      TEST CL,CL
004747ba  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004747c2  52                        PUSH EDX
004747c3  8d8dfcfeffff              LEA ECX,[EBP + 0xfffffefc]
004747c9  6a00                      PUSH 0x0
004747cb  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004747d1  0f45c1                    CMOVNZ EAX,ECX
004747d4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004747da  57                        PUSH EDI
004747db  6840b6c700                PUSH 0xc7b640
004747e0  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004747e4  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
004747ea  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
004747ef  50                        PUSH EAX
004747f0  6a00                      PUSH 0x0
004747f2  6a17                      PUSH 0x17
004747f4  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004747fc  e81f43fbff                CALL 0x00428b20
00474801  50                        PUSH EAX
00474802  e8aac06700                CALL 0x00af08b1
00474807  83c414                    ADD ESP,0x14
0047480a  c780640b000008000000      MOV dword ptr [EAX + 0xb64],0x8
00474814  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0047481b  740a                      JZ 0x00474827
0047481d  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00474825  eb08                      JMP 0x0047482f
00474827  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0047482f  f30f1180b00b0000          MOVSS dword ptr [EAX + 0xbb0],XMM0
00474837  c780b40b000000000000      MOV dword ptr [EAX + 0xbb4],0x0
00474841  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
0047484b  e96b050000                JMP 0x00474dbb
00474850  83f809                    CMP EAX,0x9
00474853  0f8575050000              JNZ 0x00474dce
00474859  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0047485d  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00474863  0f848b010000              JZ 0x004749f4
00474869  83f905                    CMP ECX,0x5
0047486c  0f8549050000              JNZ 0x00474dbb
00474872  51                        PUSH ECX
00474873  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047487a  6a00                      PUSH 0x0
0047487c  6a02                      PUSH 0x2
0047487e  51                        PUSH ECX
0047487f  c704243333333f            MOV dword ptr [ESP],0x3f333333
00474886  8bcf                      MOV ECX,EDI
00474888  68d5000000                PUSH 0xd5
0047488d  e80e232600                CALL 0x006d6ba0
00474892  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00474895  48                        DEC EAX
00474896  f7d8                      NEG EAX
00474898  1bc0                      SBB EAX,EAX
0047489a  83c002                    ADD EAX,0x2
0047489d  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
004748a3  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
004748a9  e882a6fcff                CALL 0x0043ef30
004748ae  8bcf                      MOV ECX,EDI
004748b0  8bf0                      MOV ESI,EAX
004748b2  e8899f2400                CALL 0x006be840
004748b7  56                        PUSH ESI
004748b8  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
004748be  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
004748c4  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
004748ca  51                        PUSH ECX
004748cb  c7042400002041            MOV dword ptr [ESP],0x41200000
004748d2  50                        PUSH EAX
004748d3  898de0feffff              MOV dword ptr [EBP + 0xfffffee0],ECX
004748d9  8bcf                      MOV ECX,EDI
004748db  6a01                      PUSH 0x1
004748dd  8995e4feffff              MOV dword ptr [EBP + 0xfffffee4],EDX
004748e3  e8e8842500                CALL 0x006ccdd0
004748e8  8bf0                      MOV ESI,EAX
004748ea  8d4dc0                    LEA ECX,[EBP + -0x40]
004748ed  6a01                      PUSH 0x1
004748ef  6a00                      PUSH 0x0
004748f1  68ff000000                PUSH 0xff
004748f6  f30f108618040000          MOVSS XMM0,dword ptr [ESI + 0x418]
004748fe  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
00474906  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
0047490e  8b863c040000              MOV EAX,dword ptr [ESI + 0x43c]
00474914  838e3804000002            OR dword ptr [ESI + 0x438],0x2
0047491b  f30f590de4a2ba00          MULSS XMM1,dword ptr [0x00baa2e4]
00474923  89863c040000              MOV dword ptr [ESI + 0x43c],EAX
00474929  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
00474931  f30f108614040000          MOVSS XMM0,dword ptr [ESI + 0x414]
00474939  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00474941  6aff                      PUSH -0x1
00474943  51                        PUSH ECX
00474944  8bce                      MOV ECX,ESI
00474946  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
0047494e  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
00474956  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
0047495e  f30f5905e4a2ba00          MULSS XMM0,dword ptr [0x00baa2e4]
00474966  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0047496e  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
00474976  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0047497d  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00474981  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
00474988  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
0047498f  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00474996  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
0047499d  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004749a1  8b06                      MOV EAX,dword ptr [ESI]
004749a3  ff503c                    CALL dword ptr [EAX + 0x3c]
004749a6  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
004749ac  c78620040000cdcccc3f      MOV dword ptr [ESI + 0x420],0x3fcccccd
004749b6  81c6bc030000              ADD ESI,0x3bc
004749bc  85c9                      TEST ECX,ECX
004749be  7418                      JZ 0x004749d8
004749c0  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004749c6  89b5ecfeffff              MOV dword ptr [EBP + 0xfffffeec],ESI
004749cc  50                        PUSH EAX
004749cd  81c1cc030000              ADD ECX,0x3cc
004749d3  e838a80500                CALL 0x004cf210
004749d8  56                        PUSH ESI
004749d9  8bcf                      MOV ECX,EDI
004749db  893e                      MOV dword ptr [ESI],EDI
004749dd  e80e930500                CALL 0x004cdcf0
004749e2  83adfcfeffff01            SUB dword ptr [EBP + 0xfffffefc],0x1
004749e9  0f85b4feffff              JNZ 0x004748a3
004749ef  e9c7030000                JMP 0x00474dbb
004749f4  8d41fa                    LEA EAX,[ECX + -0x6]
004749f7  83f808                    CMP EAX,0x8
004749fa  0f876c030000              JA 0x00474d6c
00474a00  0f57c0                    XORPS XMM0,XMM0
00474a03  0f2fc1                    COMISS XMM0,XMM1
00474a06  760a                      JBE 0x00474a12
00474a08  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00474a10  eb08                      JMP 0x00474a1a
00474a12  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00474a1a  8d41fb                    LEA EAX,[ECX + -0x5]
00474a1d  660f6ec0                  MOVD XMM0,EAX
00474a21  0f5bc0                    CVTDQ2PS XMM0,XMM0
00474a24  f30f59c1                  MULSS XMM0,XMM1
00474a28  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
00474a30  e82ba52700                CALL 0x006eef60
00474a35  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
00474a3d  f30f5905a0a8ba00          MULSS XMM0,dword ptr [0x00baa8a0]
00474a45  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00474a4b  6a00                      PUSH 0x0
00474a4d  68acd5c500                PUSH 0xc5d5ac
00474a52  f30f5806                  ADDSS XMM0,dword ptr [ESI]
00474a56  68dcd5c500                PUSH 0xc5d5dc
00474a5b  6a00                      PUSH 0x0
00474a5d  50                        PUSH EAX
00474a5e  6a00                      PUSH 0x0
00474a60  57                        PUSH EDI
00474a61  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
00474a69  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
00474a6f  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00474a74  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00474a7c  6840b6c700                PUSH 0xc7b640
00474a81  50                        PUSH EAX
00474a82  6a17                      PUSH 0x17
00474a84  68e8030000                PUSH 0x3e8
00474a89  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00474a91  e88a40fbff                CALL 0x00428b20
00474a96  50                        PUSH EAX
00474a97  e815be6700                CALL 0x00af08b1
00474a9c  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
00474aa4  8bf0                      MOV ESI,EAX
00474aa6  f30f5905f4a0ba00          MULSS XMM0,dword ptr [0x00baa0f4]
00474aae  83c414                    ADD ESP,0x14
00474ab1  8bce                      MOV ECX,ESI
00474ab3  89b5f4feffff              MOV dword ptr [EBP + 0xfffffef4],ESI
00474ab9  8b06                      MOV EAX,dword ptr [ESI]
00474abb  f30f580554a5ba00          ADDSS XMM0,dword ptr [0x00baa554]
00474ac3  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
00474acb  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00474ad3  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
00474adb  ff500c                    CALL dword ptr [EAX + 0xc]
00474ade  a17816c700                MOV EAX,[0x00c71678]
00474ae3  8b9640030000              MOV EDX,dword ptr [ESI + 0x340]
00474ae9  8995dcfeffff              MOV dword ptr [EBP + 0xfffffedc],EDX
00474aef  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00474af5  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
00474afb  51                        PUSH ECX
00474afc  8985d8feffff              MOV dword ptr [EBP + 0xfffffed8],EAX
00474b02  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
00474b08  c7042400000000            MOV dword ptr [ESP],0x0
00474b0f  50                        PUSH EAX
00474b10  e84be83900                CALL 0x00813360
00474b15  84c0                      TEST AL,AL
00474b17  0f849e020000              JZ 0x00474dbb
00474b1d  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
00474b25  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
00474b2b  50                        PUSH EAX
00474b2c  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
00474b32  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
00474b3a  c785dcfeffff00000000      MOV dword ptr [EBP + 0xfffffedc],0x0
00474b44  e8e7b45900                CALL 0x00a10030
00474b49  e812a42700                CALL 0x006eef60
00474b4e  8bf0                      MOV ESI,EAX
00474b50  e80ba42700                CALL 0x006eef60
00474b55  f30f109dfcfeffff          MOVSS XMM3,dword ptr [EBP + 0xfffffefc]
00474b5d  f30f10a5f8feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffef8]
00474b65  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00474b6b  660f6ec0                  MOVD XMM0,EAX
00474b6f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00474b73  c1e81f                    SHR EAX,0x1f
00474b76  56                        PUSH ESI
00474b77  6a02                      PUSH 0x2
00474b79  6a00                      PUSH 0x0
00474b7b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00474b84  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
00474b8a  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00474b92  660f5ad0                  CVTPD2PS XMM2,XMM0
00474b96  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00474b9e  0f28c2                    MOVAPS XMM0,XMM2
00474ba1  f30f59d3                  MULSS XMM2,XMM3
00474ba5  f30f591d84a7ba00          MULSS XMM3,dword ptr [0x00baa784]
00474bad  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00474bb5  f30f59c4                  MULSS XMM0,XMM4
00474bb9  f30f592584a7ba00          MULSS XMM4,dword ptr [0x00baa784]
00474bc1  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00474bc9  f30f1195dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM2
00474bd1  f30f5ccc                  SUBSS XMM1,XMM4
00474bd5  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
00474bdd  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
00474be3  50                        PUSH EAX
00474be4  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00474bea  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
00474bf2  f30f5cd3                  SUBSS XMM2,XMM3
00474bf6  50                        PUSH EAX
00474bf7  6a02                      PUSH 0x2
00474bf9  68e8030000                PUSH 0x3e8
00474bfe  f30f118dd0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM1
00474c06  f30f1195d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM2
00474c0e  e80d3ffbff                CALL 0x00428b20
00474c13  8bf0                      MOV ESI,EAX
00474c15  e846a32700                CALL 0x006eef60
00474c1a  660f6ec0                  MOVD XMM0,EAX
00474c1e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00474c22  c1e81f                    SHR EAX,0x1f
00474c25  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00474c2e  660f5ac0                  CVTPD2PS XMM0,XMM0
00474c32  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00474c3a  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00474c42  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
00474c4a  e811a32700                CALL 0x006eef60
00474c4f  6a01                      PUSH 0x1
00474c51  6a00                      PUSH 0x0
00474c53  68ff000000                PUSH 0xff
00474c58  660f6ec0                  MOVD XMM0,EAX
00474c5c  8d4dc0                    LEA ECX,[EBP + -0x40]
00474c5f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00474c63  c1e81f                    SHR EAX,0x1f
00474c66  6aff                      PUSH -0x1
00474c68  51                        PUSH ECX
00474c69  8bce                      MOV ECX,ESI
00474c6b  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
00474c75  c745e00ad7a33d            MOV dword ptr [EBP + -0x20],0x3da3d70a
00474c7c  c745e40000003f            MOV dword ptr [EBP + -0x1c],0x3f000000
00474c83  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00474c8c  8b06                      MOV EAX,dword ptr [ESI]
00474c8e  c745e80ad7233c            MOV dword ptr [EBP + -0x18],0x3c23d70a
00474c95  660f5ac0                  CVTPD2PS XMM0,XMM0
00474c99  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00474ca1  f30f5905dcadba00          MULSS XMM0,dword ptr [0x00baaddc]
00474ca9  f30f118650030000          MOVSS dword ptr [ESI + 0x350],XMM0
00474cb1  0f57c0                    XORPS XMM0,XMM0
00474cb4  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00474cb8  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00474cbf  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00474cc3  ff503c                    CALL dword ptr [EAX + 0x3c]
00474cc6  e895a22700                CALL 0x006eef60
00474ccb  8b95f4feffff              MOV EDX,dword ptr [EBP + 0xfffffef4]
00474cd1  50                        PUSH EAX
00474cd2  6a00                      PUSH 0x0
00474cd4  6a00                      PUSH 0x0
00474cd6  8b8a3c030000              MOV ECX,dword ptr [EDX + 0x33c]
00474cdc  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00474ce2  8b9240030000              MOV EDX,dword ptr [EDX + 0x340]
00474ce8  6840b6c700                PUSH 0xc7b640
00474ced  50                        PUSH EAX
00474cee  6a07                      PUSH 0x7
00474cf0  898dd0feffff              MOV dword ptr [EBP + 0xfffffed0],ECX
00474cf6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00474cfc  68e8030000                PUSH 0x3e8
00474d01  8995d4feffff              MOV dword ptr [EBP + 0xfffffed4],EDX
00474d07  e8143efbff                CALL 0x00428b20
00474d0c  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
00474d14  8d4dc0                    LEA ECX,[EBP + -0x40]
00474d17  8bf0                      MOV ESI,EAX
00474d19  c745e00ad7a33d            MOV dword ptr [EBP + -0x20],0x3da3d70a
00474d20  6a01                      PUSH 0x1
00474d22  6a00                      PUSH 0x0
00474d24  68ff000000                PUSH 0xff
00474d29  8b06                      MOV EAX,dword ptr [ESI]
00474d2b  f30f118674030000          MOVSS dword ptr [ESI + 0x374],XMM0
00474d33  f30f118678030000          MOVSS dword ptr [ESI + 0x378],XMM0
00474d3b  0f57c0                    XORPS XMM0,XMM0
00474d3e  6aff                      PUSH -0x1
00474d40  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00474d44  51                        PUSH ECX
00474d45  0f2805b0bbba00            MOVAPS XMM0,xmmword ptr [0x00babbb0]
00474d4c  8bce                      MOV ECX,ESI
00474d4e  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00474d52  c745e40000003f            MOV dword ptr [EBP + -0x1c],0x3f000000
00474d59  c745e80ad7233c            MOV dword ptr [EBP + -0x18],0x3c23d70a
00474d60  ff503c                    CALL dword ptr [EAX + 0x3c]
00474d63  8b06                      MOV EAX,dword ptr [ESI]
00474d65  8bce                      MOV ECX,ESI
00474d67  ff500c                    CALL dword ptr [EAX + 0xc]
00474d6a  eb4f                      JMP 0x00474dbb
00474d6c  83f905                    CMP ECX,0x5
00474d6f  754a                      JNZ 0x00474dbb
00474d71  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00474d77  8d8df4feffff              LEA ECX,[EBP + 0xfffffef4]
00474d7d  c785f4feffffd4000000      MOV dword ptr [EBP + 0xfffffef4],0xd4
00474d87  e8f4194e00                CALL 0x00956780
00474d8c  83ec08                    SUB ESP,0x8
00474d8f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00474d97  c704240000803f            MOV dword ptr [ESP],0x3f800000
00474d9e  6a00                      PUSH 0x0
00474da0  6a02                      PUSH 0x2
00474da2  51                        PUSH ECX
00474da3  c704243333333f            MOV dword ptr [ESP],0x3f333333
00474daa  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00474db0  ffb5f4feffff              PUSH dword ptr [EBP + 0xfffffef4]
00474db6  e8758e4b00                CALL 0x0092dc30
00474dbb  83bf100400001e            CMP dword ptr [EDI + 0x410],0x1e
00474dc2  7c0a                      JL 0x00474dce
00474dc4  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00474dce  ff8710040000              INC dword ptr [EDI + 0x410]
00474dd4  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00474dd7  64890d00000000            MOV dword ptr FS:[0x0],ECX
00474dde  59                        POP ECX
00474ddf  5f                        POP EDI
00474de0  5e                        POP ESI
00474de1  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00474de4  33cd                      XOR ECX,EBP
00474de6  e840a36700                CALL 0x00aef12b
00474deb  8be5                      MOV ESP,EBP
00474ded  5d                        POP EBP
00474dee  8be3                      MOV ESP,EBX
00474df0  5b                        POP EBX
00474df1  c3                        RET
