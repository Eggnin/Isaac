; J460 NPC AI 0x005153b0 AI_005153b0
; types=40,218,862
; identities=218.0.0,40.0.0,40.1.0,40.2.0,862.0.0
; entry=005153b0
005153b0  55                        PUSH EBP
005153b1  8bec                      MOV EBP,ESP
005153b3  83e4f8                    AND ESP,0xfffffff8
005153b6  81ec88010000              SUB ESP,0x188
005153bc  a1b493bf00                MOV EAX,[0x00bf93b4]
005153c1  33c4                      XOR EAX,ESP
005153c3  89842484010000            MOV dword ptr [ESP + 0x184],EAX
005153ca  56                        PUSH ESI
005153cb  57                        PUSH EDI
005153cc  8bf9                      MOV EDI,ECX
005153ce  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005153d4  ffb10c830100              PUSH dword ptr [ECX + 0x1830c]
005153da  ffb104830100              PUSH dword ptr [ECX + 0x18304]
005153e0  e8dbb72200                CALL 0x00740bc0
005153e5  8b4844                    MOV ECX,dword ptr [EAX + 0x44]
005153e8  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005153eb  d1e9                      SHR ECX,0x1
005153ed  81e101ffffff              AND ECX,0xffffff01
005153f3  894c2434                  MOV dword ptr [ESP + 0x34],ECX
005153f7  3dda000000                CMP EAX,0xda
005153fc  754a                      JNZ 0x00515448
005153fe  84c9                      TEST CL,CL
00515400  0f94c1                    SETZ CL
00515403  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0051540a  884c2413                  MOV byte ptr [ESP + 0x13],CL
0051540e  743d                      JZ 0x0051544d
00515410  83bf2c03000000            CMP dword ptr [EDI + 0x32c],0x0
00515417  8db72c030000              LEA ESI,[EDI + 0x32c]
0051541d  7c2e                      JL 0x0051544d
0051541f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00515425  6aff                      PUSH -0x1
00515427  ffb104830100              PUSH dword ptr [ECX + 0x18304]
0051542d  e88eb72200                CALL 0x00740bc0
00515432  56                        PUSH ESI
00515433  8d4c241c                  LEA ECX,[ESP + 0x1c]
00515437  51                        PUSH ECX
00515438  8d8880000000              LEA ECX,[EAX + 0x80]
0051543e  e87df1fcff                CALL 0x004e45c0
00515443  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00515446  eb05                      JMP 0x0051544d
00515448  c644241301                MOV byte ptr [ESP + 0x13],0x1
0051544d  83f828                    CMP EAX,0x28
00515450  7506                      JNZ 0x00515458
00515452  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00515456  eb05                      JMP 0x0051545d
00515458  3d5e030000                CMP EAX,0x35e
0051545d  0f850e010000              JNZ 0x00515571
00515463  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
0051546a  0f848d000000              JZ 0x005154fd
00515470  68b804b600                PUSH 0xb604b8
00515475  8d8f98000000              LEA ECX,[EDI + 0x98]
0051547b  e86058efff                CALL 0x0040ace0
00515480  8b8fc8000000              MOV ECX,dword ptr [EDI + 0xc8]
00515486  89442424                  MOV dword ptr [ESP + 0x24],EAX
0051548a  85c0                      TEST EAX,EAX
0051548c  7475                      JZ 0x00515503
0051548e  33f6                      XOR ESI,ESI
00515490  85c9                      TEST ECX,ECX
00515492  0f84d9000000              JZ 0x00515571
00515498  8d4748                    LEA EAX,[EDI + 0x48]
0051549b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
005154a0  56                        PUSH ESI
005154a1  8bc8                      MOV ECX,EAX
005154a3  e8785defff                CALL 0x0040b220
005154a8  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
005154ac  56                        PUSH ESI
005154ad  8b0a                      MOV ECX,dword ptr [EDX]
005154af  894840                    MOV dword ptr [EAX + 0x40],ECX
005154b2  8b4a04                    MOV ECX,dword ptr [EDX + 0x4]
005154b5  894844                    MOV dword ptr [EAX + 0x44],ECX
005154b8  8d4f48                    LEA ECX,[EDI + 0x48]
005154bb  e8605defff                CALL 0x0040b220
005154c0  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
005154c4  56                        PUSH ESI
005154c5  8b4a10                    MOV ECX,dword ptr [EDX + 0x10]
005154c8  894834                    MOV dword ptr [EAX + 0x34],ECX
005154cb  8b4a14                    MOV ECX,dword ptr [EDX + 0x14]
005154ce  894838                    MOV dword ptr [EAX + 0x38],ECX
005154d1  8d4f48                    LEA ECX,[EDI + 0x48]
005154d4  f30f104244                MOVSS XMM0,dword ptr [EDX + 0x44]
005154d9  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
005154df  e83c5defff                CALL 0x0040b220
005154e4  f30f10442440              MOVSS XMM0,dword ptr [ESP + 0x40]
005154ea  46                        INC ESI
005154eb  f30f11403c                MOVSS dword ptr [EAX + 0x3c],XMM0
005154f0  8d4748                    LEA EAX,[EDI + 0x48]
005154f3  3bb7c8000000              CMP ESI,dword ptr [EDI + 0xc8]
005154f9  72a5                      JC 0x005154a0
005154fb  eb74                      JMP 0x00515571
005154fd  8b8fc8000000              MOV ECX,dword ptr [EDI + 0xc8]
00515503  33f6                      XOR ESI,ESI
00515505  85c9                      TEST ECX,ECX
00515507  7468                      JZ 0x00515571
00515509  8d4748                    LEA EAX,[EDI + 0x48]
0051550c  0f1f4000                  NOP dword ptr [EAX]
00515510  56                        PUSH ESI
00515511  8bc8                      MOV ECX,EAX
00515513  e8085defff                CALL 0x0040b220
00515518  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00515520  8d4f48                    LEA ECX,[EDI + 0x48]
00515523  56                        PUSH ESI
00515524  f30f114040                MOVSS dword ptr [EAX + 0x40],XMM0
00515529  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00515531  f30f114044                MOVSS dword ptr [EAX + 0x44],XMM0
00515536  e8e55cefff                CALL 0x0040b220
0051553b  f30f10053c79c300          MOVSS XMM0,dword ptr [0x00c3793c]
00515543  8d4f48                    LEA ECX,[EDI + 0x48]
00515546  56                        PUSH ESI
00515547  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
0051554c  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00515554  f30f114038                MOVSS dword ptr [EAX + 0x38],XMM0
00515559  e8c25cefff                CALL 0x0040b220
0051555e  46                        INC ESI
0051555f  c7403c00000000            MOV dword ptr [EAX + 0x3c],0x0
00515566  8d4748                    LEA EAX,[EDI + 0x48]
00515569  3bb7c8000000              CMP ESI,dword ptr [EDI + 0xc8]
0051556f  729f                      JC 0x00515510
00515571  33c0                      XOR EAX,EAX
00515573  89442448                  MOV dword ptr [ESP + 0x48],EAX
00515577  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0051557a  83f828                    CMP EAX,0x28
0051557d  0f85f8010000              JNZ 0x0051577b
00515583  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00515587  0f85e5010000              JNZ 0x00515772
0051558d  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00515593  8bb768010000              MOV ESI,dword ptr [EDI + 0x168]
00515599  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
0051559d  8bc6                      MOV EAX,ESI
0051559f  25000a0001                AND EAX,0x1000a00
005155a4  83c800                    OR EAX,0x0
005155a7  0f85ef000000              JNZ 0x0051569c
005155ad  8bc6                      MOV EAX,ESI
005155af  2500400000                AND EAX,0x4000
005155b4  83c800                    OR EAX,0x0
005155b7  0f85df000000              JNZ 0x0051569c
005155bd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005155c3  e8887d1e00                CALL 0x006fd350
005155c8  84c0                      TEST AL,AL
005155ca  0f85cc000000              JNZ 0x0051569c
005155d0  a17816c700                MOV EAX,[0x00c71678]
005155d5  8a80f8640200              MOV AL,byte ptr [EAX + 0x264f8]
005155db  f6d0                      NOT AL
005155dd  2401                      AND AL,0x1
005155df  0f84b7000000              JZ 0x0051569c
005155e5  f30f10051cacba00          MOVSS XMM0,dword ptr [0x00baac1c]
005155ed  8d8f3c030000              LEA ECX,[EDI + 0x33c]
005155f3  81e600010000              AND ESI,0x100
005155f9  83ce00                    OR ESI,0x0
005155fc  7428                      JZ 0x00515626
005155fe  6890525100                PUSH 0x515290
00515603  8bd7                      MOV EDX,EDI
00515605  0f28c8                    MOVAPS XMM1,XMM0
00515608  e8631d1f00                CALL 0x00707370
0051560d  83c404                    ADD ESP,0x4
00515610  89442448                  MOV dword ptr [ESP + 0x48],EAX
00515614  85c0                      TEST EAX,EAX
00515616  7548                      JNZ 0x00515660
00515618  f30f10051cacba00          MOVSS XMM0,dword ptr [0x00baac1c]
00515620  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00515626  8b97840b0000              MOV EDX,dword ptr [EDI + 0xb84]
0051562c  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00515632  c1ea1f                    SHR EDX,0x1f
00515635  2500000020                AND EAX,0x20000000
0051563a  80f201                    XOR DL,0x1
0051563d  83c800                    OR EAX,0x0
00515640  7404                      JZ 0x00515646
00515642  b001                      MOV AL,0x1
00515644  eb02                      JMP 0x00515648
00515646  32c0                      XOR AL,AL
00515648  6890525100                PUSH 0x515290
0051564d  52                        PUSH EDX
0051564e  50                        PUSH EAX
0051564f  8bd7                      MOV EDX,EDI
00515651  0f28c8                    MOVAPS XMM1,XMM0
00515654  e847131f00                CALL 0x007069a0
00515659  83c40c                    ADD ESP,0xc
0051565c  89442448                  MOV dword ptr [ESP + 0x48],EAX
00515660  8b8fc4030000              MOV ECX,dword ptr [EDI + 0x3c4]
00515666  8db7c4030000              LEA ESI,[EDI + 0x3c4]
0051566c  85c9                      TEST ECX,ECX
0051566e  7414                      JZ 0x00515684
00515670  8d442440                  LEA EAX,[ESP + 0x40]
00515674  89742440                  MOV dword ptr [ESP + 0x40],ESI
00515678  50                        PUSH EAX
00515679  81c1cc030000              ADD ECX,0x3cc
0051567f  e88c9bfbff                CALL 0x004cf210
00515684  8b442448                  MOV EAX,dword ptr [ESP + 0x48]
00515688  8906                      MOV dword ptr [ESI],EAX
0051568a  85c0                      TEST EAX,EAX
0051568c  740e                      JZ 0x0051569c
0051568e  56                        PUSH ESI
0051568f  8bc8                      MOV ECX,EAX
00515691  e85a86fbff                CALL 0x004cdcf0
00515696  8b442448                  MOV EAX,dword ptr [ESP + 0x48]
0051569a  eb0b                      JMP 0x005156a7
0051569c  8bcf                      MOV ECX,EDI
0051569e  e89d911a00                CALL 0x006be840
005156a3  89442448                  MOV dword ptr [ESP + 0x48],EAX
005156a7  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
005156af  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
005156b7  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
005156bf  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
005156c7  0f28c1                    MOVAPS XMM0,XMM1
005156ca  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
005156d0  f30f59c1                  MULSS XMM0,XMM1
005156d4  0f28ca                    MOVAPS XMM1,XMM2
005156d7  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
005156dd  f30f59ca                  MULSS XMM1,XMM2
005156e1  f30f58c1                  ADDSS XMM0,XMM1
005156e5  e86603f2ff                CALL 0x00435a50
005156ea  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005156f1  f30f1054240c              MOVSS XMM2,dword ptr [ESP + 0xc]
005156f7  761c                      JBE 0x00515715
005156f9  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00515701  f30f5ec8                  DIVSS XMM1,XMM0
00515705  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0051570b  f30f59c1                  MULSS XMM0,XMM1
0051570f  f30f59d1                  MULSS XMM2,XMM1
00515713  eb06                      JMP 0x0051571b
00515715  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0051571b  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
00515722  f30f58c0                  ADDSS XMM0,XMM0
00515726  f30f58d2                  ADDSS XMM2,XMM2
0051572a  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00515730  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
00515736  740d                      JZ 0x00515745
00515738  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0051573f  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00515745  6a01                      PUSH 0x1
00515747  8d4f48                    LEA ECX,[EDI + 0x48]
0051574a  e8d15aefff                CALL 0x0040b220
0051574f  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
00515755  f30f1054240c              MOVSS XMM2,dword ptr [ESP + 0xc]
0051575b  f30f584840                ADDSS XMM1,dword ptr [EAX + 0x40]
00515760  f30f585044                ADDSS XMM2,dword ptr [EAX + 0x44]
00515765  f30f114840                MOVSS dword ptr [EAX + 0x40],XMM1
0051576a  f30f115044                MOVSS dword ptr [EAX + 0x44],XMM2
0051576f  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00515772  83f828                    CMP EAX,0x28
00515775  0f848f010000              JZ 0x0051590a
0051577b  3d5e030000                CMP EAX,0x35e
00515780  0f8484010000              JZ 0x0051590a
00515786  3dda000000                CMP EAX,0xda
0051578b  0f85eb010000              JNZ 0x0051597c
00515791  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00515797  8b81f8640200              MOV EAX,dword ptr [ECX + 0x264f8]
0051579d  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
005157a3  83f81e                    CMP EAX,0x1e
005157a6  0f8ce0000000              JL 0x0051588c
005157ac  807c243400                CMP byte ptr [ESP + 0x34],0x0
005157b1  0f85d5000000              JNZ 0x0051588c
005157b7  81c1a8ba0100              ADD ECX,0x1baa8
005157bd  6897000000                PUSH 0x97
005157c2  e8e967f3ff                CALL 0x0044bfb0
005157c7  84c0                      TEST AL,AL
005157c9  0f85bd000000              JNZ 0x0051588c
005157cf  a17816c700                MOV EAX,[0x00c71678]
005157d4  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
005157da  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
005157e0  83f81e                    CMP EAX,0x1e
005157e3  752f                      JNZ 0x00515814
005157e5  51                        PUSH ECX
005157e6  c704240000803f            MOV dword ptr [ESP],0x3f800000
005157ed  6a00                      PUSH 0x0
005157ef  6a02                      PUSH 0x2
005157f1  51                        PUSH ECX
005157f2  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
005157f9  8bcf                      MOV ECX,EDI
005157fb  68cd000000                PUSH 0xcd
00515800  e89b131c00                CALL 0x006d6ba0
00515805  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0051580b  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
0051580e  898788030000              MOV dword ptr [EDI + 0x388],EAX
00515814  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00515817  85f6                      TEST ESI,ESI
00515819  7462                      JZ 0x0051587d
0051581b  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0051581f  8bc6                      MOV EAX,ESI
00515821  7202                      JC 0x00515825
00515823  8b06                      MOV EAX,dword ptr [ESI]
00515825  b9d40db600                MOV ECX,0xb60dd4
0051582a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
00515830  8a10                      MOV DL,byte ptr [EAX]
00515832  3a11                      CMP DL,byte ptr [ECX]
00515834  751a                      JNZ 0x00515850
00515836  84d2                      TEST DL,DL
00515838  7412                      JZ 0x0051584c
0051583a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0051583d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00515840  750e                      JNZ 0x00515850
00515842  83c002                    ADD EAX,0x2
00515845  83c102                    ADD ECX,0x2
00515848  84d2                      TEST DL,DL
0051584a  75e4                      JNZ 0x00515830
0051584c  33c0                      XOR EAX,EAX
0051584e  eb05                      JMP 0x00515855
00515850  1bc0                      SBB EAX,EAX
00515852  83c801                    OR EAX,0x1
00515855  85c0                      TEST EAX,EAX
00515857  7524                      JNZ 0x0051587d
00515859  384634                    CMP byte ptr [ESI + 0x34],AL
0051585c  0f841a010000              JZ 0x0051597c
00515862  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00515868  8d7748                    LEA ESI,[EDI + 0x48]
0051586b  0f850b010000              JNZ 0x0051597c
00515871  6a01                      PUSH 0x1
00515873  68d40db600                PUSH 0xb60dd4
00515878  e9e8000000                JMP 0x00515965
0051587d  6a01                      PUSH 0x1
0051587f  8d7748                    LEA ESI,[EDI + 0x48]
00515882  68d40db600                PUSH 0xb60dd4
00515887  e9d9000000                JMP 0x00515965
0051588c  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0051588f  85f6                      TEST ESI,ESI
00515891  744a                      JZ 0x005158dd
00515893  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00515897  8bc6                      MOV EAX,ESI
00515899  7202                      JC 0x0051589d
0051589b  8b06                      MOV EAX,dword ptr [ESI]
0051589d  b95007b600                MOV ECX,0xb60750
005158a2  8a10                      MOV DL,byte ptr [EAX]
005158a4  3a11                      CMP DL,byte ptr [ECX]
005158a6  751a                      JNZ 0x005158c2
005158a8  84d2                      TEST DL,DL
005158aa  7412                      JZ 0x005158be
005158ac  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005158af  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005158b2  750e                      JNZ 0x005158c2
005158b4  83c002                    ADD EAX,0x2
005158b7  83c102                    ADD ECX,0x2
005158ba  84d2                      TEST DL,DL
005158bc  75e4                      JNZ 0x005158a2
005158be  33c0                      XOR EAX,EAX
005158c0  eb05                      JMP 0x005158c7
005158c2  1bc0                      SBB EAX,EAX
005158c4  83c801                    OR EAX,0x1
005158c7  85c0                      TEST EAX,EAX
005158c9  7512                      JNZ 0x005158dd
005158cb  384634                    CMP byte ptr [ESI + 0x34],AL
005158ce  742e                      JZ 0x005158fe
005158d0  38878c000000              CMP byte ptr [EDI + 0x8c],AL
005158d6  8d7748                    LEA ESI,[EDI + 0x48]
005158d9  7523                      JNZ 0x005158fe
005158db  eb03                      JMP 0x005158e0
005158dd  8d7748                    LEA ESI,[EDI + 0x48]
005158e0  6a01                      PUSH 0x1
005158e2  685007b600                PUSH 0xb60750
005158e7  8bce                      MOV ECX,ESI
005158e9  e8e24cefff                CALL 0x0040a5d0
005158ee  84c0                      TEST AL,AL
005158f0  740c                      JZ 0x005158fe
005158f2  8d4e30                    LEA ECX,[ESI + 0x30]
005158f5  e8b648efff                CALL 0x0040a1b0
005158fa  c6464401                  MOV byte ptr [ESI + 0x44],0x1
005158fe  c7878803000000000000      MOV dword ptr [EDI + 0x388],0x0
00515908  eb72                      JMP 0x0051597c
0051590a  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0051590d  85f6                      TEST ESI,ESI
0051590f  744a                      JZ 0x0051595b
00515911  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00515915  8bc6                      MOV EAX,ESI
00515917  7202                      JC 0x0051591b
00515919  8b06                      MOV EAX,dword ptr [ESI]
0051591b  b958e7b100                MOV ECX,0xb1e758
00515920  8a10                      MOV DL,byte ptr [EAX]
00515922  3a11                      CMP DL,byte ptr [ECX]
00515924  751a                      JNZ 0x00515940
00515926  84d2                      TEST DL,DL
00515928  7412                      JZ 0x0051593c
0051592a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0051592d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00515930  750e                      JNZ 0x00515940
00515932  83c002                    ADD EAX,0x2
00515935  83c102                    ADD ECX,0x2
00515938  84d2                      TEST DL,DL
0051593a  75e4                      JNZ 0x00515920
0051593c  33c0                      XOR EAX,EAX
0051593e  eb05                      JMP 0x00515945
00515940  1bc0                      SBB EAX,EAX
00515942  83c801                    OR EAX,0x1
00515945  85c0                      TEST EAX,EAX
00515947  7512                      JNZ 0x0051595b
00515949  384634                    CMP byte ptr [ESI + 0x34],AL
0051594c  742e                      JZ 0x0051597c
0051594e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00515954  8d7748                    LEA ESI,[EDI + 0x48]
00515957  7523                      JNZ 0x0051597c
00515959  eb03                      JMP 0x0051595e
0051595b  8d7748                    LEA ESI,[EDI + 0x48]
0051595e  6a01                      PUSH 0x1
00515960  6858e7b100                PUSH 0xb1e758
00515965  8bce                      MOV ECX,ESI
00515967  e8644cefff                CALL 0x0040a5d0
0051596c  84c0                      TEST AL,AL
0051596e  740c                      JZ 0x0051597c
00515970  8d4e30                    LEA ECX,[ESI + 0x30]
00515973  e83848efff                CALL 0x0040a1b0
00515978  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0051597c  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00515983  0f85f9010000              JNZ 0x00515b82
00515989  c787c00b0000ffffffff      MOV dword ptr [EDI + 0xbc0],0xffffffff
00515993  c687c40b000000            MOV byte ptr [EDI + 0xbc4],0x0
0051599a  c787a00b00003c000000      MOV dword ptr [EDI + 0xba0],0x3c
005159a4  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005159ac  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005159b4  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005159bc  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005159c4  c6874801000001            MOV byte ptr [EDI + 0x148],0x1
005159cb  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005159ce  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005159d8  c787340c00000000803f      MOV dword ptr [EDI + 0xc34],0x3f800000
005159e2  83f828                    CMP EAX,0x28
005159e5  755f                      JNZ 0x00515a46
005159e7  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
005159eb  0f8594000000              JNZ 0x00515a85
005159f1  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
005159f8  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
005159fe  0f280d80c2ba00            MOVAPS XMM1,xmmword ptr [0x00bac280]
00515a05  8d44245c                  LEA EAX,[ESP + 0x5c]
00515a09  c744247c00000000          MOV dword ptr [ESP + 0x7c],0x0
00515a11  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
00515a1c  c784248400000000000000    MOV dword ptr [ESP + 0x84],0x0
00515a27  3bc8                      CMP ECX,EAX
00515a29  745a                      JZ 0x00515a85
00515a2b  8b842484000000            MOV EAX,dword ptr [ESP + 0x84]
00515a32  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00515a35  f30f7e44247c              MOVQ XMM0,qword ptr [ESP + 0x7c]
00515a3b  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
00515a3f  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00515a44  eb3c                      JMP 0x00515a82
00515a46  3d5e030000                CMP EAX,0x35e
00515a4b  7538                      JNZ 0x00515a85
00515a4d  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00515a53  81f9804ec300              CMP ECX,0xc34e80
00515a59  742a                      JZ 0x00515a85
00515a5b  0f1005804ec300            MOVUPS XMM0,xmmword ptr [0x00c34e80]
00515a62  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00515a65  0f1005904ec300            MOVUPS XMM0,xmmword ptr [0x00c34e90]
00515a6c  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00515a70  f30f7e05a04ec300          MOVQ XMM0,qword ptr [0x00c34ea0]
00515a78  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00515a7d  a1a84ec300                MOV EAX,[0x00c34ea8]
00515a82  894128                    MOV dword ptr [ECX + 0x28],EAX
00515a85  817f28da000000            CMP dword ptr [EDI + 0x28],0xda
00515a8c  0f85a3000000              JNZ 0x00515b35
00515a92  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00515a98  8d842488000000            LEA EAX,[ESP + 0x88]
00515a9f  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
00515aa6  83e1fb                    AND ECX,0xfffffffb
00515aa9  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00515ab0  83c901                    OR ECX,0x1
00515ab3  898f68010000              MOV dword ptr [EDI + 0x168],ECX
00515ab9  0f57c9                    XORPS XMM1,XMM1
00515abc  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00515ac2  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00515ac9  c78424a800000000000000    MOV dword ptr [ESP + 0xa8],0x0
00515ad4  c78424ac00000000000000    MOV dword ptr [ESP + 0xac],0x0
00515adf  c78424b000000000000000    MOV dword ptr [ESP + 0xb0],0x0
00515aea  3bc8                      CMP ECX,EAX
00515aec  741f                      JZ 0x00515b0d
00515aee  8b8424b0000000            MOV EAX,dword ptr [ESP + 0xb0]
00515af5  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00515af8  f30f7e8424a8000000        MOVQ XMM0,qword ptr [ESP + 0xa8]
00515b01  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00515b06  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
00515b0a  894128                    MOV dword ptr [ECX + 0x28],EAX
00515b0d  c787f40100000000803f      MOV dword ptr [EDI + 0x1f4],0x3f800000
00515b17  c787f80100000000803f      MOV dword ptr [EDI + 0x1f8],0x3f800000
00515b21  c787fc0100000000803f      MOV dword ptr [EDI + 0x1fc],0x3f800000
00515b2b  c787000200000000803f      MOV dword ptr [EDI + 0x200],0x3f800000
00515b35  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
00515b38  85c9                      TEST ECX,ECX
00515b3a  7412                      JZ 0x00515b4e
00515b3c  b804000000                MOV EAX,0x4
00515b41  3bc8                      CMP ECX,EAX
00515b43  0f47c8                    CMOVA ECX,EAX
00515b46  2bc1                      SUB EAX,ECX
00515b48  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00515b4e  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00515b56  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00515b5e  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00515b66  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00515b6e  5f                        POP EDI
00515b6f  5e                        POP ESI
00515b70  8b8c2484010000            MOV ECX,dword ptr [ESP + 0x184]
00515b77  33cc                      XOR ECX,ESP
00515b79  e8ad955d00                CALL 0x00aef12b
00515b7e  8be5                      MOV ESP,EBP
00515b80  5d                        POP EBP
00515b81  c3                        RET
00515b82  8a442413                  MOV AL,byte ptr [ESP + 0x13]
00515b86  84c0                      TEST AL,AL
00515b88  7443                      JZ 0x00515bcd
00515b8a  a17816c700                MOV EAX,[0x00c71678]
00515b8f  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00515b95  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00515b9b  752c                      JNZ 0x00515bc9
00515b9d  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00515ba5  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00515bad  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00515bb5  5f                        POP EDI
00515bb6  5e                        POP ESI
00515bb7  8b8c2484010000            MOV ECX,dword ptr [ESP + 0x184]
00515bbe  33cc                      XOR ECX,ESP
00515bc0  e866955d00                CALL 0x00aef12b
00515bc5  8be5                      MOV ESP,EBP
00515bc7  5d                        POP EBP
00515bc8  c3                        RET
00515bc9  8a442413                  MOV AL,byte ptr [ESP + 0x13]
00515bcd  8bb7c00b0000              MOV ESI,dword ptr [EDI + 0xbc0]
00515bd3  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
00515bdb  85f6                      TEST ESI,ESI
00515bdd  0f89b0000000              JNS 0x00515c93
00515be3  84c0                      TEST AL,AL
00515be5  0f84a8000000              JZ 0x00515c93
00515beb  33f6                      XOR ESI,ESI
00515bed  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00515bf7  33c0                      XOR EAX,EAX
00515bf9  89442424                  MOV dword ptr [ESP + 0x24],EAX
00515bfd  0f1f00                    NOP dword ptr [EAX]
00515c00  8b04f59015b600            MOV EAX,dword ptr [ESI*0x8 + 0xb61590]
00515c07  8d4c242c                  LEA ECX,[ESP + 0x2c]
00515c0b  8d0480                    LEA EAX,[EAX + EAX*0x4]
00515c0e  c1e003                    SHL EAX,0x3
00515c11  660f6ec0                  MOVD XMM0,EAX
00515c15  8b04f59415b600            MOV EAX,dword ptr [ESI*0x8 + 0xb61594]
00515c1c  0f5bc0                    CVTDQ2PS XMM0,XMM0
00515c1f  8d0480                    LEA EAX,[EAX + EAX*0x4]
00515c22  c1e003                    SHL EAX,0x3
00515c25  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00515c2d  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00515c33  660f6ec0                  MOVD XMM0,EAX
00515c37  0f5bc0                    CVTDQ2PS XMM0,XMM0
00515c3a  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00515c42  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00515c48  e8c3f3ffff                CALL 0x00515010
00515c4d  85c0                      TEST EAX,EAX
00515c4f  7522                      JNZ 0x00515c73
00515c51  46                        INC ESI
00515c52  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
00515c58  89742424                  MOV dword ptr [ESP + 0x24],ESI
00515c5c  83fe04                    CMP ESI,0x4
00515c5f  7c9f                      JL 0x00515c00
00515c61  e8fa921d00                CALL 0x006eef60
00515c66  8bd0                      MOV EDX,EAX
00515c68  83e203                    AND EDX,0x3
00515c6b  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
00515c71  eb04                      JMP 0x00515c77
00515c73  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
00515c77  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
00515c7f  8bf2                      MOV ESI,EDX
00515c81  f30f100504a3ba00          MOVSS XMM0,dword ptr [0x00baa304]
00515c89  8a442413                  MOV AL,byte ptr [ESP + 0x13]
00515c8d  f30f59c8                  MULSS XMM1,XMM0
00515c91  eb26                      JMP 0x00515cb9
00515c93  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
00515c9b  8bd6                      MOV EDX,ESI
00515c9d  84c0                      TEST AL,AL
00515c9f  7406                      JZ 0x00515ca7
00515ca1  f30f59c8                  MULSS XMM1,XMM0
00515ca5  eb12                      JMP 0x00515cb9
00515ca7  f30f590de0a3ba00          MULSS XMM1,dword ptr [0x00baa3e0]
00515caf  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00515cb9  f30f118f6c030000          MOVSS dword ptr [EDI + 0x36c],XMM1
00515cc1  f30f109f34030000          MOVSS XMM3,dword ptr [EDI + 0x334]
00515cc9  0f2e1d40b6c700            UCOMISS XMM3,dword ptr [0x00c7b640]
00515cd0  9f                        LAHF
00515cd1  f6c444                    TEST AH,0x44
00515cd4  7a1c                      JP 0x00515cf2
00515cd6  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00515cde  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00515ce5  9f                        LAHF
00515ce6  f6c444                    TEST AH,0x44
00515ce9  7a07                      JP 0x00515cf2
00515ceb  8bca                      MOV ECX,EDX
00515ced  e98e000000                JMP 0x00515d80
00515cf2  8bca                      MOV ECX,EDX
00515cf4  894c240c                  MOV dword ptr [ESP + 0xc],ECX
00515cf8  84c0                      TEST AL,AL
00515cfa  0f8484000000              JZ 0x00515d84
00515d00  83bfa00b0000ff            CMP dword ptr [EDI + 0xba0],-0x1
00515d07  894c240c                  MOV dword ptr [ESP + 0xc],ECX
00515d0b  7477                      JZ 0x00515d84
00515d0d  660f6e04f59415b600        MOVD XMM0,dword ptr [ESI*0x8 + 0xb61594]
00515d16  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
00515d1e  f30f5c9738030000          SUBSS XMM2,dword ptr [EDI + 0x338]
00515d26  660f6e0cf59015b600        MOVD XMM1,dword ptr [ESI*0x8 + 0xb61590]
00515d2f  0f5bc0                    CVTDQ2PS XMM0,XMM0
00515d32  894c240c                  MOV dword ptr [ESP + 0xc],ECX
00515d36  0f5bc9                    CVTDQ2PS XMM1,XMM1
00515d39  f30f59d0                  MULSS XMM2,XMM0
00515d3d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00515d45  f30f5cc3                  SUBSS XMM0,XMM3
00515d49  f30f59c8                  MULSS XMM1,XMM0
00515d4d  f30f58d1                  ADDSS XMM2,XMM1
00515d51  0f2f15c0adba00            COMISS XMM2,dword ptr [0x00baadc0]
00515d58  762a                      JBE 0x00515d84
00515d5a  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00515d62  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00515d6a  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00515d72  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00515d7a  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
00515d80  894c240c                  MOV dword ptr [ESP + 0xc],ECX
00515d84  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00515d8c  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00515d93  9f                        LAHF
00515d94  f6c444                    TEST AH,0x44
00515d97  0f8aa7050000              JP 0x00516344
00515d9d  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00515da5  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00515dac  9f                        LAHF
00515dad  f6c444                    TEST AH,0x44
00515db0  0f8a8e050000              JP 0x00516344
00515db6  84c0                      TEST AL,AL
00515db8  0f848a050000              JZ 0x00516348
00515dbe  33c0                      XOR EAX,EAX
00515dc0  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00515dc8  3887c50b0000              CMP byte ptr [EDI + 0xbc5],AL
00515dce  8d3409                    LEA ESI,[ECX + ECX*0x1]
00515dd1  8b14b59015b600            MOV EDX,dword ptr [ESI*0x4 + 0xb61590]
00515dd8  0f95c0                    SETNZ AL
00515ddb  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00515de3  89742424                  MOV dword ptr [ESP + 0x24],ESI
00515de7  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
00515dee  03c6                      ADD EAX,ESI
00515df0  8b0c859015b600            MOV ECX,dword ptr [EAX*0x4 + 0xb61590]
00515df7  8d040a                    LEA EAX,[EDX + ECX*0x1]
00515dfa  6bc0d8                    IMUL EAX,EAX,-0x28
00515dfd  660f6ec0                  MOVD XMM0,EAX
00515e01  8bc2                      MOV EAX,EDX
00515e03  0f5bc0                    CVTDQ2PS XMM0,XMM0
00515e06  2bc1                      SUB EAX,ECX
00515e08  8d0480                    LEA EAX,[EAX + EAX*0x4]
00515e0b  f30f58c2                  ADDSS XMM0,XMM2
00515e0f  c1e003                    SHL EAX,0x3
00515e12  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00515e18  660f6ec0                  MOVD XMM0,EAX
00515e1c  8d0489                    LEA EAX,[ECX + ECX*0x4]
00515e1f  0f5bc0                    CVTDQ2PS XMM0,XMM0
00515e22  c1e003                    SHL EAX,0x3
00515e25  8d4c242c                  LEA ECX,[ESP + 0x2c]
00515e29  f30f58c1                  ADDSS XMM0,XMM1
00515e2d  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00515e33  660f6ec0                  MOVD XMM0,EAX
00515e37  8d0492                    LEA EAX,[EDX + EDX*0x4]
00515e3a  0f5bc0                    CVTDQ2PS XMM0,XMM0
00515e3d  c1e003                    SHL EAX,0x3
00515e40  f30f5cd0                  SUBSS XMM2,XMM0
00515e44  660f6ec0                  MOVD XMM0,EAX
00515e48  0f5bc0                    CVTDQ2PS XMM0,XMM0
00515e4b  f30f11542438              MOVSS dword ptr [ESP + 0x38],XMM2
00515e51  f30f58c1                  ADDSS XMM0,XMM1
00515e55  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
00515e5b  e8b0f1ffff                CALL 0x00515010
00515e60  8d4c2438                  LEA ECX,[ESP + 0x38]
00515e64  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
00515e68  e8a3f1ffff                CALL 0x00515010
00515e6d  8bc8                      MOV ECX,EAX
00515e6f  83c8ff                    OR EAX,0xffffffff
00515e72  894c2414                  MOV dword ptr [ESP + 0x14],ECX
00515e76  8944240c                  MOV dword ptr [ESP + 0xc],EAX
00515e7a  39871c0f0000              CMP dword ptr [EDI + 0xf1c],EAX
00515e80  0f8437020000              JZ 0x005160bd
00515e86  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00515e8d  0f8c2a020000              JL 0x005160bd
00515e93  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00515e9b  8d442438                  LEA EAX,[ESP + 0x38]
00515e9f  50                        PUSH EAX
00515ea0  8bcf                      MOV ECX,EDI
00515ea2  e829241c00                CALL 0x006d82d0
00515ea7  f30f10442438              MOVSS XMM0,dword ptr [ESP + 0x38]
00515ead  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00515eb4  9f                        LAHF
00515eb5  f6c444                    TEST AH,0x44
00515eb8  7a17                      JP 0x00515ed1
00515eba  f30f1044243c              MOVSS XMM0,dword ptr [ESP + 0x3c]
00515ec0  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00515ec7  9f                        LAHF
00515ec8  f6c444                    TEST AH,0x44
00515ecb  0f8b37020000              JNP 0x00516108
00515ed1  8d542438                  LEA EDX,[ESP + 0x38]
00515ed5  8d4c2454                  LEA ECX,[ESP + 0x54]
00515ed9  e892921600                CALL 0x0067f170
00515ede  8bf0                      MOV ESI,EAX
00515ee0  33c0                      XOR EAX,EAX
00515ee2  f30f1016                  MOVSS XMM2,dword ptr [ESI]
00515ee6  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
00515eeb  0f28ca                    MOVAPS XMM1,XMM2
00515eee  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00515ef5  0f28c3                    MOVAPS XMM0,XMM3
00515ef8  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00515eff  0f2fc8                    COMISS XMM1,XMM0
00515f02  0f57c0                    XORPS XMM0,XMM0
00515f05  760f                      JBE 0x00515f16
00515f07  0f2fc2                    COMISS XMM0,XMM2
00515f0a  0f97c0                    SETA AL
00515f0d  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
00515f14  eb0b                      JMP 0x00515f21
00515f16  0f2fc3                    COMISS XMM0,XMM3
00515f19  b902000000                MOV ECX,0x2
00515f1e  0f47c1                    CMOVA EAX,ECX
00515f21  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
00515f29  8944240c                  MOV dword ptr [ESP + 0xc],EAX
00515f2d  e80e76f0ff                CALL 0x0041d540
00515f32  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00515f38  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
00515f40  e8db75f0ff                CALL 0x0041d520
00515f45  f30f10642434              MOVSS XMM4,dword ptr [ESP + 0x34]
00515f4b  0f28c8                    MOVAPS XMM1,XMM0
00515f4e  f30f1016                  MOVSS XMM2,dword ptr [ESI]
00515f52  0f28ec                    MOVAPS XMM5,XMM4
00515f55  f30f105e04                MOVSS XMM3,dword ptr [ESI + 0x4]
00515f5a  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
00515f5e  2b87c00b0000              SUB EAX,dword ptr [EDI + 0xbc0]
00515f64  f30f59ea                  MULSS XMM5,XMM2
00515f68  83c004                    ADD EAX,0x4
00515f6b  f30f59cb                  MULSS XMM1,XMM3
00515f6f  f30f59e3                  MULSS XMM4,XMM3
00515f73  f30f59c2                  MULSS XMM0,XMM2
00515f77  f30f5ce9                  SUBSS XMM5,XMM1
00515f7b  f30f58e0                  ADDSS XMM4,XMM0
00515f7f  f30f116c2440              MOVSS dword ptr [ESP + 0x40],XMM5
00515f85  f30f11642434              MOVSS dword ptr [ESP + 0x34],XMM4
00515f8b  2501000080                AND EAX,0x80000001
00515f90  7905                      JNS 0x00515f97
00515f92  48                        DEC EAX
00515f93  83c8fe                    OR EAX,0xfffffffe
00515f96  40                        INC EAX
00515f97  83f801                    CMP EAX,0x1
00515f9a  0f8511010000              JNZ 0x005160b1
00515fa0  f30f10a73c030000          MOVSS XMM4,dword ptr [EDI + 0x33c]
00515fa8  8d4c2418                  LEA ECX,[ESP + 0x18]
00515fac  0f28c2                    MOVAPS XMM0,XMM2
00515faf  f30f1164244c              MOVSS dword ptr [ESP + 0x4c],XMM4
00515fb5  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00515fbd  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
00515fc5  f30f11542438              MOVSS dword ptr [ESP + 0x38],XMM2
00515fcb  f30f58c4                  ADDSS XMM0,XMM4
00515fcf  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00515fd5  0f28c3                    MOVAPS XMM0,XMM3
00515fd8  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00515fe0  f30f58c2                  ADDSS XMM0,XMM2
00515fe4  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00515fea  e821f0ffff                CALL 0x00515010
00515fef  85c0                      TEST EAX,EAX
00515ff1  0f85ba000000              JNZ 0x005160b1
00515ff7  f30f10442440              MOVSS XMM0,dword ptr [ESP + 0x40]
00515ffd  8d4c2418                  LEA ECX,[ESP + 0x18]
00516001  f30f5806                  ADDSS XMM0,dword ptr [ESI]
00516005  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0051600d  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00516015  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0051601b  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
00516021  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
00516026  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0051602e  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00516036  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0051603c  e8cfefffff                CALL 0x00515010
00516041  85c0                      TEST EAX,EAX
00516043  754a                      JNZ 0x0051608f
00516045  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00516049  8d4c2418                  LEA ECX,[ESP + 0x18]
0051604d  f30f5c442440              SUBSS XMM0,dword ptr [ESP + 0x40]
00516053  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0051605b  f30f5844244c              ADDSS XMM0,dword ptr [ESP + 0x4c]
00516061  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00516067  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0051606c  f30f5c442434              SUBSS XMM0,dword ptr [ESP + 0x34]
00516072  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0051607a  f30f58442438              ADDSS XMM0,dword ptr [ESP + 0x38]
00516080  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00516086  e885efffff                CALL 0x00515010
0051608b  85c0                      TEST EAX,EAX
0051608d  7422                      JZ 0x005160b1
0051608f  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
00516093  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
00516097  3b87c00b0000              CMP EAX,dword ptr [EDI + 0xbc0]
0051609d  741a                      JZ 0x005160b9
0051609f  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
005160a5  8d3400                    LEA ESI,[EAX + EAX*0x1]
005160a8  c687c40b000001            MOV byte ptr [EDI + 0xbc4],0x1
005160af  eb0c                      JMP 0x005160bd
005160b1  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
005160b5  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
005160b9  8b742424                  MOV ESI,dword ptr [ESP + 0x24]
005160bd  837c242c00                CMP dword ptr [ESP + 0x2c],0x0
005160c2  744e                      JZ 0x00516112
005160c4  85c9                      TEST ECX,ECX
005160c6  754a                      JNZ 0x00516112
005160c8  388fc40b0000              CMP byte ptr [EDI + 0xbc4],CL
005160ce  7542                      JNZ 0x00516112
005160d0  398fa00b0000              CMP dword ptr [EDI + 0xba0],ECX
005160d6  7c3a                      JL 0x00516112
005160d8  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
005160de  3bc8                      CMP ECX,EAX
005160e0  7430                      JZ 0x00516112
005160e2  33c0                      XOR EAX,EAX
005160e4  3887c50b0000              CMP byte ptr [EDI + 0xbc5],AL
005160ea  0f94c0                    SETZ AL
005160ed  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
005160f4  03c8                      ADD ECX,EAX
005160f6  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
005160fc  c687c40b000001            MOV byte ptr [EDI + 0xbc4],0x1
00516103  e944020000                JMP 0x0051634c
00516108  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
0051610c  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
00516110  ebab                      JMP 0x005160bd
00516112  a17816c700                MOV EAX,[0x00c71678]
00516117  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0051611f  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00516125  8b04b59015b600            MOV EAX,dword ptr [ESI*0x4 + 0xb61590]
0051612c  894c2424                  MOV dword ptr [ESP + 0x24],ECX
00516130  8d0480                    LEA EAX,[EAX + EAX*0x4]
00516133  c1e003                    SHL EAX,0x3
00516136  660f6ec0                  MOVD XMM0,EAX
0051613a  0f5bc0                    CVTDQ2PS XMM0,XMM0
0051613d  8b04b59415b600            MOV EAX,dword ptr [ESI*0x4 + 0xb61594]
00516144  8d0480                    LEA EAX,[EAX + EAX*0x4]
00516147  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0051614f  c1e003                    SHL EAX,0x3
00516152  f30f5cc1                  SUBSS XMM0,XMM1
00516156  f30f5ec1                  DIVSS XMM0,XMM1
0051615a  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00516162  f30f2cd0                  CVTTSS2SI EDX,XMM0
00516166  660f6ec0                  MOVD XMM0,EAX
0051616a  0f5bc0                    CVTDQ2PS XMM0,XMM0
0051616d  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00516175  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
0051617d  f30f5ec1                  DIVSS XMM0,XMM1
00516181  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00516189  f30f2cc0                  CVTTSS2SI EAX,XMM0
0051618d  85d2                      TEST EDX,EDX
0051618f  0f889e000000              JS 0x00516233
00516195  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
00516198  3bd6                      CMP EDX,ESI
0051619a  0f8d93000000              JGE 0x00516233
005161a0  85c0                      TEST EAX,EAX
005161a2  0f888b000000              JS 0x00516233
005161a8  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
005161ab  0f8d82000000              JGE 0x00516233
005161b1  0faff0                    IMUL ESI,EAX
005161b4  03f2                      ADD ESI,EDX
005161b6  56                        PUSH ESI
005161b7  e844a62d00                CALL 0x007f0800
005161bc  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
005161c0  81febf010000              CMP ESI,0x1bf
005161c6  7778                      JA 0x00516240
005161c8  81bcb26c070000b6030000    CMP dword ptr [EDX + ESI*0x4 + 0x76c],0x3b6
005161d3  756b                      JNZ 0x00516240
005161d5  83bfa00b0000fe            CMP dword ptr [EDI + 0xba0],-0x2
005161dc  0f851b010000              JNZ 0x005162fd
005161e2  c787a00b00003c000000      MOV dword ptr [EDI + 0xba0],0x3c
005161ec  8d4f48                    LEA ECX,[EDI + 0x48]
005161ef  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
005161f5  85c0                      TEST EAX,EAX
005161f7  740a                      JZ 0x00516203
005161f9  83f802                    CMP EAX,0x2
005161fc  b8c40db600                MOV EAX,0xb60dc4
00516201  7505                      JNZ 0x00516208
00516203  b8cc0db600                MOV EAX,0xb60dcc
00516208  6a00                      PUSH 0x0
0051620a  50                        PUSH EAX
0051620b  e83047efff                CALL 0x0040a940
00516210  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00516218  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0051621e  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00516224  83f812                    CMP EAX,0x12
00516227  756f                      JNZ 0x00516298
00516229  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00516231  eb72                      JMP 0x005162a5
00516233  83ceff                    OR ESI,0xffffffff
00516236  56                        PUSH ESI
00516237  e8c4a52d00                CALL 0x007f0800
0051623c  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
00516240  85c0                      TEST EAX,EAX
00516242  7591                      JNZ 0x005161d5
00516244  8b4a0c                    MOV ECX,dword ptr [EDX + 0xc]
00516247  8bc6                      MOV EAX,ESI
00516249  99                        CDQ
0051624a  f7f9                      IDIV ECX
0051624c  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
00516254  660f6eca                  MOVD XMM1,EDX
00516258  660f6ec0                  MOVD XMM0,EAX
0051625c  0f5bc9                    CVTDQ2PS XMM1,XMM1
0051625f  0f5bc0                    CVTDQ2PS XMM0,XMM0
00516262  f30f59ca                  MULSS XMM1,XMM2
00516266  f30f59c2                  MULSS XMM0,XMM2
0051626a  f30f58ca                  ADDSS XMM1,XMM2
0051626e  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
00516276  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
0051627e  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00516286  c687c40b000000            MOV byte ptr [EDI + 0xbc4],0x0
0051628d  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
00516293  e9b4000000                JMP 0x0051634c
00516298  83f813                    CMP EAX,0x13
0051629b  750e                      JNZ 0x005162ab
0051629d  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
005162a5  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
005162ab  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005162b1  8d4c2440                  LEA ECX,[ESP + 0x40]
005162b5  c744244048000000          MOV dword ptr [ESP + 0x40],0x48
005162bd  e8be044400                CALL 0x00956780
005162c2  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
005162c8  83ec08                    SUB ESP,0x8
005162cb  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005162d3  f30f110424                MOVSS dword ptr [ESP],XMM0
005162d8  6a00                      PUSH 0x0
005162da  6a02                      PUSH 0x2
005162dc  51                        PUSH ECX
005162dd  c704240000803f            MOV dword ptr [ESP],0x3f800000
005162e4  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005162ea  ff742454                  PUSH dword ptr [ESP + 0x54]
005162ee  e83d794100                CALL 0x0092dc30
005162f3  c787340c0000cdcccc3d      MOV dword ptr [EDI + 0xc34],0x3dcccccd
005162fd  8b4c240c                  MOV ECX,dword ptr [ESP + 0xc]
00516301  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
00516307  85c9                      TEST ECX,ECX
00516309  7820                      JS 0x0051632b
0051630b  8bc1                      MOV EAX,ECX
0051630d  2bc2                      SUB EAX,EDX
0051630f  83c004                    ADD EAX,0x4
00516312  2501000080                AND EAX,0x80000001
00516317  7905                      JNS 0x0051631e
00516319  48                        DEC EAX
0051631a  83c8fe                    OR EAX,0xfffffffe
0051631d  40                        INC EAX
0051631e  83f801                    CMP EAX,0x1
00516321  7508                      JNZ 0x0051632b
00516323  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
00516329  eb21                      JMP 0x0051634c
0051632b  33c0                      XOR EAX,EAX
0051632d  8d4a01                    LEA ECX,[EDX + 0x1]
00516330  3887c50b0000              CMP byte ptr [EDI + 0xbc5],AL
00516336  0f95c0                    SETNZ AL
00516339  8d0c41                    LEA ECX,[ECX + EAX*0x2]
0051633c  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
00516342  eb08                      JMP 0x0051634c
00516344  894c240c                  MOV dword ptr [ESP + 0xc],ECX
00516348  8b4c240c                  MOV ECX,dword ptr [ESP + 0xc]
0051634c  83f903                    CMP ECX,0x3
0051634f  7e05                      JLE 0x00516356
00516351  8d41fc                    LEA EAX,[ECX + -0x4]
00516354  eb07                      JMP 0x0051635d
00516356  85c9                      TEST ECX,ECX
00516358  7909                      JNS 0x00516363
0051635a  8d4104                    LEA EAX,[ECX + 0x4]
0051635d  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00516363  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0051636b  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
00516372  9f                        LAHF
00516373  f6c444                    TEST AH,0x44
00516376  7a19                      JP 0x00516391
00516378  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00516380  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00516387  9f                        LAHF
00516388  f6c444                    TEST AH,0x44
0051638b  0f8b71020000              JNP 0x00516602
00516391  807c241300                CMP byte ptr [ESP + 0x13],0x0
00516396  0f8466020000              JZ 0x00516602
0051639c  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
005163a4  f30f5cd1                  SUBSS XMM2,XMM1
005163a8  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
005163b0  f30f5c8f38030000          SUBSS XMM1,dword ptr [EDI + 0x338]
005163b8  f30f1154242c              MOVSS dword ptr [ESP + 0x2c],XMM2
005163be  0f28c1                    MOVAPS XMM0,XMM1
005163c1  f30f114c2438              MOVSS dword ptr [ESP + 0x38],XMM1
005163c7  f30f59c1                  MULSS XMM0,XMM1
005163cb  0f28ca                    MOVAPS XMM1,XMM2
005163ce  f30f59ca                  MULSS XMM1,XMM2
005163d2  f30f58c1                  ADDSS XMM0,XMM1
005163d6  e875f6f1ff                CALL 0x00435a50
005163db  83bfa00b0000ff            CMP dword ptr [EDI + 0xba0],-0x1
005163e2  0f28c8                    MOVAPS XMM1,XMM0
005163e5  f30f103d40cbba00          MOVSS XMM7,dword ptr [0x00bacb40]
005163ed  747d                      JZ 0x0051646c
005163ef  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
005163f7  0f2fc1                    COMISS XMM0,XMM1
005163fa  773c                      JA 0x00516438
005163fc  f30f101530a6ba00          MOVSS XMM2,dword ptr [0x00baa630]
00516404  0f28c1                    MOVAPS XMM0,XMM1
00516407  f30f5c87b00b0000          SUBSS XMM0,dword ptr [EDI + 0xbb0]
0051640f  0f54c7                    ANDPS XMM0,XMM7
00516412  0f2fd0                    COMISS XMM2,XMM0
00516415  7643                      JBE 0x0051645a
00516417  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0051641f  f30f5805b4a0ba00          ADDSS XMM0,dword ptr [0x00baa0b4]
00516427  0f2f05d4a1ba00            COMISS XMM0,dword ptr [0x00baa1d4]
0051642e  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00516436  7234                      JC 0x0051646c
00516438  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00516440  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00516448  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00516450  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00516458  eb12                      JMP 0x0051646c
0051645a  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
00516462  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
0051646c  837f2828                  CMP dword ptr [EDI + 0x28],0x28
00516470  f30f1005fca6ba00          MOVSS XMM0,dword ptr [0x00baa6fc]
00516478  751f                      JNZ 0x00516499
0051647a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0051647d  83f801                    CMP EAX,0x1
00516480  750a                      JNZ 0x0051648c
00516482  f30f100510a7ba00          MOVSS XMM0,dword ptr [0x00baa710]
0051648a  eb0d                      JMP 0x00516499
0051648c  83f802                    CMP EAX,0x2
0051648f  7508                      JNZ 0x00516499
00516491  f30f1005b8a6ba00          MOVSS XMM0,dword ptr [0x00baa6b8]
00516499  f30f5987340c0000          MULSS XMM0,dword ptr [EDI + 0xc34]
005164a1  0f57e4                    XORPS XMM4,XMM4
005164a4  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
005164ac  f30f106c242c              MOVSS XMM5,dword ptr [ESP + 0x2c]
005164b2  f30f5ec1                  DIVSS XMM0,XMM1
005164b6  f30f10742438              MOVSS XMM6,dword ptr [ESP + 0x38]
005164bc  0f28cd                    MOVAPS XMM1,XMM5
005164bf  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
005164c6  0f28d6                    MOVAPS XMM2,XMM6
005164c9  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
005164d0  0f2edc                    UCOMISS XMM3,XMM4
005164d3  f30f59c8                  MULSS XMM1,XMM0
005164d7  9f                        LAHF
005164d8  f30f59d0                  MULSS XMM2,XMM0
005164dc  f6c444                    TEST AH,0x44
005164df  7b38                      JNP 0x00516519
005164e1  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
005164e9  f30f59c8                  MULSS XMM1,XMM0
005164ed  f30f59d0                  MULSS XMM2,XMM0
005164f1  f30f5ecb                  DIVSS XMM1,XMM3
005164f5  f30f5ed3                  DIVSS XMM2,XMM3
005164f9  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
00516501  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00516509  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00516511  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00516519  f30f109f34030000          MOVSS XMM3,dword ptr [EDI + 0x334]
00516521  0f2e1d40b6c700            UCOMISS XMM3,dword ptr [0x00c7b640]
00516528  9f                        LAHF
00516529  f6c444                    TEST AH,0x44
0051652c  7a19                      JP 0x00516547
0051652e  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00516536  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0051653d  9f                        LAHF
0051653e  f6c444                    TEST AH,0x44
00516541  0f8bbb000000              JNP 0x00516602
00516547  f30f10a79c030000          MOVSS XMM4,dword ptr [EDI + 0x39c]
0051654f  0f54ef                    ANDPS XMM5,XMM7
00516552  f30f101504a3ba00          MOVSS XMM2,dword ptr [0x00baa304]
0051655a  0f54f7                    ANDPS XMM6,XMM7
0051655d  0f2ff5                    COMISS XMM6,XMM5
00516560  764d                      JBE 0x005165af
00516562  0f2e2554a4ba00            UCOMISS XMM4,dword ptr [0x00baa454]
00516569  9f                        LAHF
0051656a  f6c444                    TEST AH,0x44
0051656d  7b16                      JNP 0x00516585
0051656f  0f28cc                    MOVAPS XMM1,XMM4
00516572  0f28c4                    MOVAPS XMM0,XMM4
00516575  f30f58ca                  ADDSS XMM1,XMM2
00516579  f30f59c2                  MULSS XMM0,XMM2
0051657d  f30f5cc8                  SUBSS XMM1,XMM0
00516581  f30f5ed1                  DIVSS XMM2,XMM1
00516585  f30f5c9f3c030000          SUBSS XMM3,dword ptr [EDI + 0x33c]
0051658d  f30f599760030000          MULSS XMM2,dword ptr [EDI + 0x360]
00516595  f30f591d80a2ba00          MULSS XMM3,dword ptr [0x00baa280]
0051659d  f30f59dc                  MULSS XMM3,XMM4
005165a1  f30f58da                  ADDSS XMM3,XMM2
005165a5  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
005165ad  eb53                      JMP 0x00516602
005165af  0f2e2554a4ba00            UCOMISS XMM4,dword ptr [0x00baa454]
005165b6  9f                        LAHF
005165b7  f6c444                    TEST AH,0x44
005165ba  7b16                      JNP 0x005165d2
005165bc  0f28cc                    MOVAPS XMM1,XMM4
005165bf  0f28c4                    MOVAPS XMM0,XMM4
005165c2  f30f58ca                  ADDSS XMM1,XMM2
005165c6  f30f59c2                  MULSS XMM0,XMM2
005165ca  f30f5cc8                  SUBSS XMM1,XMM0
005165ce  f30f5ed1                  DIVSS XMM2,XMM1
005165d2  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005165da  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
005165e2  f30f599764030000          MULSS XMM2,dword ptr [EDI + 0x364]
005165ea  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
005165f2  f30f59c4                  MULSS XMM0,XMM4
005165f6  f30f58c2                  ADDSS XMM0,XMM2
005165fa  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00516602  837f2828                  CMP dword ptr [EDI + 0x28],0x28
00516606  f30f101584a7ba00          MOVSS XMM2,dword ptr [0x00baa784]
0051660e  0f859f040000              JNZ 0x00516ab3
00516614  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00516618  0f8595040000              JNZ 0x00516ab3
0051661e  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
00516624  85c0                      TEST EAX,EAX
00516626  0f85e4020000              JNZ 0x00516910
0051662c  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00516633  0f57c9                    XORPS XMM1,XMM1
00516636  0f57c0                    XORPS XMM0,XMM0
00516639  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
0051663f  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00516645  0f84ff000000              JZ 0x0051674a
0051664b  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00516653  8d44242c                  LEA EAX,[ESP + 0x2c]
00516657  50                        PUSH EAX
00516658  8bcf                      MOV ECX,EDI
0051665a  e8411f1c00                CALL 0x006d85a0
0051665f  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00516665  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0051666c  9f                        LAHF
0051666d  f6c444                    TEST AH,0x44
00516670  7a17                      JP 0x00516689
00516672  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
00516678  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0051667f  9f                        LAHF
00516680  f6c444                    TEST AH,0x44
00516683  0f8b7b010000              JNP 0x00516804
00516689  8d54242c                  LEA EDX,[ESP + 0x2c]
0051668d  8d4c2454                  LEA ECX,[ESP + 0x54]
00516691  e8da8a1600                CALL 0x0067f170
00516696  8bf0                      MOV ESI,EAX
00516698  a17816c700                MOV EAX,[0x00c71678]
0051669d  f30f105604                MOVSS XMM2,dword ptr [ESI + 0x4]
005166a2  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
005166aa  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
005166b0  8bc8                      MOV ECX,EAX
005166b2  f30f100e                  MOVSS XMM1,dword ptr [ESI]
005166b6  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
005166be  8944244c                  MOV dword ptr [ESP + 0x4c],EAX
005166c2  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
005166ca  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
005166d2  f30f11542444              MOVSS dword ptr [ESP + 0x44],XMM2
005166d8  ff742444                  PUSH dword ptr [ESP + 0x44]
005166dc  f30f114c2444              MOVSS dword ptr [ESP + 0x44],XMM1
005166e2  ff742444                  PUSH dword ptr [ESP + 0x44]
005166e6  f30f114c2434              MOVSS dword ptr [ESP + 0x34],XMM1
005166ec  f30f11542440              MOVSS dword ptr [ESP + 0x40],XMM2
005166f2  e889a02d00                CALL 0x007f0780
005166f7  85c0                      TEST EAX,EAX
005166f9  0f8505010000              JNZ 0x00516804
005166ff  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00516705  8d442418                  LEA EAX,[ESP + 0x18]
00516709  8b4c244c                  MOV ECX,dword ptr [ESP + 0x4c]
0051670d  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00516713  f30f10442438              MOVSS XMM0,dword ptr [ESP + 0x38]
00516719  50                        PUSH EAX
0051671a  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00516720  e8ebc42f00                CALL 0x00812c10
00516725  3db6030000                CMP EAX,0x3b6
0051672a  0f8dd4000000              JGE 0x00516804
00516730  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00516734  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
00516739  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0051673f  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
00516745  e9c6000000                JMP 0x00516810
0051674a  8b4c2448                  MOV ECX,dword ptr [ESP + 0x48]
0051674e  85c9                      TEST ECX,ECX
00516750  0f84ba000000              JZ 0x00516810
00516756  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
0051675c  f30f108160030000          MOVSS XMM0,dword ptr [ECX + 0x360]
00516764  f30f108964030000          MOVSS XMM1,dword ptr [ECX + 0x364]
0051676c  89442438                  MOV dword ptr [ESP + 0x38],EAX
00516770  8d44242c                  LEA EAX,[ESP + 0x2c]
00516774  50                        PUSH EAX
00516775  6a00                      PUSH 0x0
00516777  f30f59c2                  MULSS XMM0,XMM2
0051677b  8d442420                  LEA EAX,[ESP + 0x20]
0051677f  6a00                      PUSH 0x0
00516781  f30f59ca                  MULSS XMM1,XMM2
00516785  6a00                      PUSH 0x0
00516787  f30f58813c030000          ADDSS XMM0,dword ptr [ECX + 0x33c]
0051678f  6a01                      PUSH 0x1
00516791  f30f588940030000          ADDSS XMM1,dword ptr [ECX + 0x340]
00516799  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
0051679f  894c2450                  MOV dword ptr [ESP + 0x50],ECX
005167a3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005167a9  50                        PUSH EAX
005167aa  8d442450                  LEA EAX,[ESP + 0x50]
005167ae  c744244800000000          MOV dword ptr [ESP + 0x48],0x0
005167b6  50                        PUSH EAX
005167b7  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
005167bd  c744244800000000          MOV dword ptr [ESP + 0x48],0x0
005167c5  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
005167cb  f30f114c2438              MOVSS dword ptr [ESP + 0x38],XMM1
005167d1  e81aa62d00                CALL 0x007f0df0
005167d6  8d44242c                  LEA EAX,[ESP + 0x2c]
005167da  50                        PUSH EAX
005167db  8d973c030000              LEA EDX,[EDI + 0x33c]
005167e1  8d4c2458                  LEA ECX,[ESP + 0x58]
005167e5  e8c6e8ffff                CALL 0x005150b0
005167ea  83c404                    ADD ESP,0x4
005167ed  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005167f1  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
005167f6  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
005167fc  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
00516802  eb0c                      JMP 0x00516810
00516804  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0051680a  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00516810  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00516817  9f                        LAHF
00516818  f6c444                    TEST AH,0x44
0051681b  7a11                      JP 0x0051682e
0051681d  0f2e0d44b6c700            UCOMISS XMM1,dword ptr [0x00c7b644]
00516824  9f                        LAHF
00516825  f6c444                    TEST AH,0x44
00516828  0f8b1e020000              JNP 0x00516a4c
0051682e  6a00                      PUSH 0x0
00516830  6870ddb100                PUSH 0xb1dd70
00516835  8d4f48                    LEA ECX,[EDI + 0x48]
00516838  e80341efff                CALL 0x0040a940
0051683d  a17816c700                MOV EAX,[0x00c71678]
00516842  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00516848  8d873c030000              LEA EAX,[EDI + 0x33c]
0051684e  50                        PUSH EAX
0051684f  8bce                      MOV ECX,ESI
00516851  e83ac42f00                CALL 0x00812c90
00516856  99                        CDQ
00516857  f77e0c                    IDIV dword ptr [ESI + 0xc]
0051685a  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
00516862  f30f105c240c              MOVSS XMM3,dword ptr [ESP + 0xc]
00516868  660f6ec0                  MOVD XMM0,EAX
0051686c  33c0                      XOR EAX,EAX
0051686e  0f5bc0                    CVTDQ2PS XMM0,XMM0
00516871  660f6eca                  MOVD XMM1,EDX
00516875  0f5bc9                    CVTDQ2PS XMM1,XMM1
00516878  f30f59c2                  MULSS XMM0,XMM2
0051687c  f30f59ca                  MULSS XMM1,XMM2
00516880  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
00516888  f30f58ca                  ADDSS XMM1,XMM2
0051688c  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
00516892  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0051689a  0f28c3                    MOVAPS XMM0,XMM3
0051689d  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
005168a4  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
005168ac  0f28ca                    MOVAPS XMM1,XMM2
005168af  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
005168b6  c787a00b0000ffffffff      MOV dword ptr [EDI + 0xba0],0xffffffff
005168c0  f30f1197b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM2
005168c8  f30f119fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM3
005168d0  0f2fc8                    COMISS XMM1,XMM0
005168d3  c787340c00000000803f      MOV dword ptr [EDI + 0xc34],0x3f800000
005168dd  0f57c0                    XORPS XMM0,XMM0
005168e0  7618                      JBE 0x005168fa
005168e2  0f2fc2                    COMISS XMM0,XMM2
005168e5  0f97c0                    SETA AL
005168e8  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
005168ef  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
005168f5  e952010000                JMP 0x00516a4c
005168fa  0f2fc3                    COMISS XMM0,XMM3
005168fd  b902000000                MOV ECX,0x2
00516902  0f47c1                    CMOVA EAX,ECX
00516905  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0051690b  e93c010000                JMP 0x00516a4c
00516910  83f8ff                    CMP EAX,-0x1
00516913  0f85f8000000              JNZ 0x00516a11
00516919  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00516921  8d4f48                    LEA ECX,[EDI + 0x48]
00516924  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0051692c  f30f108f340c0000          MOVSS XMM1,dword ptr [EDI + 0xc34]
00516934  f30f5cc8                  SUBSS XMM1,XMM0
00516938  f30f5f0d20a1ba00          MAXSS XMM1,dword ptr [0x00baa120]
00516940  f30f118f340c0000          MOVSS dword ptr [EDI + 0xc34],XMM1
00516948  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
0051694f  740d                      JZ 0x0051695e
00516951  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
00516958  0f85ee000000              JNZ 0x00516a4c
0051695e  6a00                      PUSH 0x0
00516960  68c8e7b100                PUSH 0xb1e7c8
00516965  e8d63fefff                CALL 0x0040a940
0051696a  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00516972  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0051697a  a17816c700                MOV EAX,[0x00c71678]
0051697f  f30f588734030000          ADDSS XMM0,dword ptr [EDI + 0x334]
00516987  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0051698d  8d442418                  LEA EAX,[ESP + 0x18]
00516991  50                        PUSH EAX
00516992  8bce                      MOV ECX,ESI
00516994  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0051699a  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
005169a2  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
005169aa  f30f588738030000          ADDSS XMM0,dword ptr [EDI + 0x338]
005169b2  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
005169b8  e8d3c22f00                CALL 0x00812c90
005169bd  99                        CDQ
005169be  f77e0c                    IDIV dword ptr [ESI + 0xc]
005169c1  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
005169c9  660f6eca                  MOVD XMM1,EDX
005169cd  660f6ec0                  MOVD XMM0,EAX
005169d1  0f5bc9                    CVTDQ2PS XMM1,XMM1
005169d4  0f5bc0                    CVTDQ2PS XMM0,XMM0
005169d7  f30f59ca                  MULSS XMM1,XMM2
005169db  f30f59c2                  MULSS XMM0,XMM2
005169df  f30f58ca                  ADDSS XMM1,XMM2
005169e3  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
005169eb  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
005169f3  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005169fb  c787a00b0000feffffff      MOV dword ptr [EDI + 0xba0],0xfffffffe
00516a05  c787340c00006666e63f      MOV dword ptr [EDI + 0xc34],0x3fe66666
00516a0f  eb3b                      JMP 0x00516a4c
00516a11  83f8fe                    CMP EAX,-0x2
00516a14  7536                      JNZ 0x00516a4c
00516a16  f30f100d5ca7ba00          MOVSS XMM1,dword ptr [0x00baa75c]
00516a1e  0f57d2                    XORPS XMM2,XMM2
00516a21  8bcf                      MOV ECX,EDI
00516a23  e8385d1900                CALL 0x006ac760
00516a28  85c0                      TEST EAX,EAX
00516a2a  7420                      JZ 0x00516a4c
00516a2c  51                        PUSH ECX
00516a2d  c704243333333f            MOV dword ptr [ESP],0x3f333333
00516a34  6a00                      PUSH 0x0
00516a36  6a02                      PUSH 0x2
00516a38  51                        PUSH ECX
00516a39  c70424cdcccc3e            MOV dword ptr [ESP],0x3ecccccd
00516a40  8bcf                      MOV ECX,EDI
00516a42  68b9000000                PUSH 0xb9
00516a47  e854011c00                CALL 0x006d6ba0
00516a4c  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
00516a52  85d2                      TEST EDX,EDX
00516a54  785d                      JS 0x00516ab3
00516a56  f30f1087340c0000          MOVSS XMM0,dword ptr [EDI + 0xc34]
00516a5e  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00516a66  0f2fd0                    COMISS XMM2,XMM0
00516a69  7623                      JBE 0x00516a8e
00516a6b  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00516a73  f30f590dd0a0ba00          MULSS XMM1,dword ptr [0x00baa0d0]
00516a7b  f30f58c8                  ADDSS XMM1,XMM0
00516a7f  0f28c2                    MOVAPS XMM0,XMM2
00516a82  f30f5dc1                  MINSS XMM0,XMM1
00516a86  f30f1187340c0000          MOVSS dword ptr [EDI + 0xc34],XMM0
00516a8e  85d2                      TEST EDX,EDX
00516a90  7e21                      JLE 0x00516ab3
00516a92  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00516a9a  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
00516aa2  2bc8                      SUB ECX,EAX
00516aa4  33c0                      XOR EAX,EAX
00516aa6  03ca                      ADD ECX,EDX
00516aa8  85c9                      TEST ECX,ECX
00516aaa  0f4fc1                    CMOVG EAX,ECX
00516aad  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00516ab3  817f285e030000            CMP dword ptr [EDI + 0x28],0x35e
00516aba  0f856d020000              JNZ 0x00516d2d
00516ac0  8b97a40b0000              MOV EDX,dword ptr [EDI + 0xba4]
00516ac6  83fa1e                    CMP EDX,0x1e
00516ac9  0f8c44020000              JL 0x00516d13
00516acf  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00516ad6  741b                      JZ 0x00516af3
00516ad8  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00516ae0  8bcf                      MOV ECX,EDI
00516ae2  6a07                      PUSH 0x7
00516ae4  6a00                      PUSH 0x0
00516ae6  e875431b00                CALL 0x006cae60
00516aeb  84c0                      TEST AL,AL
00516aed  0f843a020000              JZ 0x00516d2d
00516af3  e868841d00                CALL 0x006eef60
00516af8  6a00                      PUSH 0x0
00516afa  50                        PUSH EAX
00516afb  6a00                      PUSH 0x0
00516afd  6a00                      PUSH 0x0
00516aff  6840b6c700                PUSH 0xc7b640
00516b04  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00516b0a  51                        PUSH ECX
00516b0b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00516b11  6a0b                      PUSH 0xb
00516b13  68e8030000                PUSH 0x3e8
00516b18  e8f3781e00                CALL 0x006fe410
00516b1d  8bf0                      MOV ESI,EAX
00516b1f  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00516b25  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
00516b2f  c78650030000000060c1      MOV dword ptr [ESI + 0x350],0xc1600000
00516b39  8b08                      MOV ECX,dword ptr [EAX]
00516b3b  85c9                      TEST ECX,ECX
00516b3d  741a                      JZ 0x00516b59
00516b3f  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
00516b43  81c1cc030000              ADD ECX,0x3cc
00516b49  8d44242c                  LEA EAX,[ESP + 0x2c]
00516b4d  50                        PUSH EAX
00516b4e  e8bd86fbff                CALL 0x004cf210
00516b53  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00516b59  50                        PUSH EAX
00516b5a  8bcf                      MOV ECX,EDI
00516b5c  8938                      MOV dword ptr [EAX],EDI
00516b5e  e88d71fbff                CALL 0x004cdcf0
00516b63  8bcf                      MOV ECX,EDI
00516b65  c7865004000001000000      MOV dword ptr [ESI + 0x450],0x1
00516b6f  c786580300000000a040      MOV dword ptr [ESI + 0x358],0x40a00000
00516b79  e8c27c1a00                CALL 0x006be840
00516b7e  8db73c030000              LEA ESI,[EDI + 0x33c]
00516b84  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00516b8c  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
00516b90  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
00516b98  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
00516b9d  0f28c1                    MOVAPS XMM0,XMM1
00516ba0  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
00516ba6  f30f59c1                  MULSS XMM0,XMM1
00516baa  0f28ca                    MOVAPS XMM1,XMM2
00516bad  f30f11542434              MOVSS dword ptr [ESP + 0x34],XMM2
00516bb3  f30f59ca                  MULSS XMM1,XMM2
00516bb7  f30f58c1                  ADDSS XMM0,XMM1
00516bbb  e890eef1ff                CALL 0x00435a50
00516bc0  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00516bc7  762c                      JBE 0x00516bf5
00516bc9  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00516bd1  f30f5ec8                  DIVSS XMM1,XMM0
00516bd5  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
00516bdb  f30f59c1                  MULSS XMM0,XMM1
00516bdf  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00516be5  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
00516beb  f30f59c1                  MULSS XMM0,XMM1
00516bef  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00516bf5  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00516bfc  751a                      JNZ 0x00516c18
00516bfe  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00516c06  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
00516c0e  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00516c16  eb28                      JMP 0x00516c40
00516c18  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00516c20  8d442418                  LEA EAX,[ESP + 0x18]
00516c24  50                        PUSH EAX
00516c25  8bcf                      MOV ECX,EDI
00516c27  e874191c00                CALL 0x006d85a0
00516c2c  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
00516c32  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
00516c3a  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
00516c40  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
00516c48  f30f108f200f0000          MOVSS XMM1,dword ptr [EDI + 0xf20]
00516c50  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
00516c57  9f                        LAHF
00516c58  f6c444                    TEST AH,0x44
00516c5b  7a0d                      JP 0x00516c6a
00516c5d  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00516c64  9f                        LAHF
00516c65  f6c444                    TEST AH,0x44
00516c68  7b14                      JNP 0x00516c7e
00516c6a  f30f1087240f0000          MOVSS XMM0,dword ptr [EDI + 0xf24]
00516c72  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
00516c78  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00516c7e  8d8c24e0000000            LEA ECX,[ESP + 0xe0]
00516c85  e8a682f2ff                CALL 0x0043ef30
00516c8a  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
00516c90  8bcf                      MOV ECX,EDI
00516c92  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00516c9a  50                        PUSH EAX
00516c9b  6a00                      PUSH 0x0
00516c9d  8d442420                  LEA EAX,[ESP + 0x20]
00516ca1  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
00516ca7  f30f1044243c              MOVSS XMM0,dword ptr [ESP + 0x3c]
00516cad  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00516cb5  50                        PUSH EAX
00516cb6  56                        PUSH ESI
00516cb7  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00516cbd  e81e461b00                CALL 0x006cb2e0
00516cc2  51                        PUSH ECX
00516cc3  c704240000803f            MOV dword ptr [ESP],0x3f800000
00516cca  6a00                      PUSH 0x0
00516ccc  6a02                      PUSH 0x2
00516cce  51                        PUSH ECX
00516ccf  c704240000803f            MOV dword ptr [ESP],0x3f800000
00516cd6  8bcf                      MOV ECX,EDI
00516cd8  68b2000000                PUSH 0xb2
00516cdd  e8befe1b00                CALL 0x006d6ba0
00516ce2  6a01                      PUSH 0x1
00516ce4  68dcd2b100                PUSH 0xb1d2dc
00516ce9  8d4f48                    LEA ECX,[EDI + 0x48]
00516cec  e8ff3defff                CALL 0x0040aaf0
00516cf1  84c0                      TEST AL,AL
00516cf3  7412                      JZ 0x00516d07
00516cf5  8d8f98000000              LEA ECX,[EDI + 0x98]
00516cfb  e8b034efff                CALL 0x0040a1b0
00516d00  c687ac00000001            MOV byte ptr [EDI + 0xac],0x1
00516d07  c787a40b000000000000      MOV dword ptr [EDI + 0xba4],0x0
00516d11  eb1a                      JMP 0x00516d2d
00516d13  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00516d1b  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00516d23  2bc8                      SUB ECX,EAX
00516d25  03ca                      ADD ECX,EDX
00516d27  898fa40b0000              MOV dword ptr [EDI + 0xba4],ECX
00516d2d  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00516d31  b902000000                MOV ECX,0x2
00516d36  be05000000                MOV ESI,0x5
00516d3b  0f44f1                    CMOVZ ESI,ECX
00516d3e  394f2c                    CMP dword ptr [EDI + 0x2c],ECX
00516d41  7514                      JNZ 0x00516d57
00516d43  83bfa00b0000fe            CMP dword ptr [EDI + 0xba0],-0x2
00516d4a  be04000000                MOV ESI,0x4
00516d4f  b801000000                MOV EAX,0x1
00516d54  0f44f0                    CMOVZ ESI,EAX
00516d57  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00516d5a  83f828                    CMP EAX,0x28
00516d5d  740b                      JZ 0x00516d6a
00516d5f  3d5e030000                CMP EAX,0x35e
00516d64  0f85cb030000              JNZ 0x00517135
00516d6a  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00516d70  2500400000                AND EAX,0x4000
00516d75  83c800                    OR EAX,0x0
00516d78  0f85b7030000              JNZ 0x00517135
00516d7e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00516d84  e8c7651e00                CALL 0x006fd350
00516d89  84c0                      TEST AL,AL
00516d8b  0f85a4030000              JNZ 0x00517135
00516d91  a17816c700                MOV EAX,[0x00c71678]
00516d96  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00516d9c  034720                    ADD EAX,dword ptr [EDI + 0x20]
00516d9f  99                        CDQ
00516da0  f7fe                      IDIV ESI
00516da2  85d2                      TEST EDX,EDX
00516da4  0f858b030000              JNZ 0x00517135
00516daa  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00516dad  83f801                    CMP EAX,0x1
00516db0  0f85a2000000              JNZ 0x00516e58
00516db6  e8a5811d00                CALL 0x006eef60
00516dbb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00516dc1  6a00                      PUSH 0x0
00516dc3  50                        PUSH EAX
00516dc4  6a00                      PUSH 0x0
00516dc6  57                        PUSH EDI
00516dc7  6840b6c700                PUSH 0xc7b640
00516dcc  8d873c030000              LEA EAX,[EDI + 0x33c]
00516dd2  50                        PUSH EAX
00516dd3  6a16                      PUSH 0x16
00516dd5  68e8030000                PUSH 0x3e8
00516dda  e831761e00                CALL 0x006fe410
00516ddf  6a00                      PUSH 0x0
00516de1  68acd5c500                PUSH 0xc5d5ac
00516de6  68dcd5c500                PUSH 0xc5d5dc
00516deb  6a00                      PUSH 0x0
00516ded  50                        PUSH EAX
00516dee  e8be9a5d00                CALL 0x00af08b1
00516df3  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00516dfb  83c414                    ADD ESP,0x14
00516dfe  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00516e06  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
00516e0e  c780780400000000403f      MOV dword ptr [EAX + 0x478],0x3f400000
00516e18  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
00516e20  c7805c04000014000000      MOV dword ptr [EAX + 0x45c],0x14
00516e2a  f30f1188e4000000          MOVSS dword ptr [EAX + 0xe4],XMM1
00516e32  c7806004000014000000      MOV dword ptr [EAX + 0x460],0x14
00516e3c  f30f1180e8000000          MOVSS dword ptr [EAX + 0xe8],XMM0
00516e44  5f                        POP EDI
00516e45  5e                        POP ESI
00516e46  8b8c2484010000            MOV ECX,dword ptr [ESP + 0x184]
00516e4d  33cc                      XOR ECX,ESP
00516e4f  e8d7825d00                CALL 0x00aef12b
00516e54  8be5                      MOV ESP,EBP
00516e56  5d                        POP EBP
00516e57  c3                        RET
00516e58  83f802                    CMP EAX,0x2
00516e5b  0f8581020000              JNZ 0x005170e2
00516e61  83fe01                    CMP ESI,0x1
00516e64  0f85ea010000              JNZ 0x00517054
00516e6a  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00516e72  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00516e79  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
00516e7f  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
00516e87  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00516e8e  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00516e94  e8c7801d00                CALL 0x006eef60
00516e99  8bf0                      MOV ESI,EAX
00516e9b  e8c0801d00                CALL 0x006eef60
00516ea0  660f6ec0                  MOVD XMM0,EAX
00516ea4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00516ea8  c1e81f                    SHR EAX,0x1f
00516eab  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00516eb4  660f5ac0                  CVTPD2PS XMM0,XMM0
00516eb8  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00516ec0  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00516ec8  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
00516ed0  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00516ed8  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00516ede  e85d66f0ff                CALL 0x0041d540
00516ee3  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00516ee9  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00516eef  e82c66f0ff                CALL 0x0041d520
00516ef4  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00516efa  e861801d00                CALL 0x006eef60
00516eff  f30f10642438              MOVSS XMM4,dword ptr [ESP + 0x38]
00516f05  f30f105c242c              MOVSS XMM3,dword ptr [ESP + 0x2c]
00516f0b  f30f1074244c              MOVSS XMM6,dword ptr [ESP + 0x4c]
00516f11  0f28c3                    MOVAPS XMM0,XMM3
00516f14  f30f106c2440              MOVSS XMM5,dword ptr [ESP + 0x40]
00516f1a  660f6ec8                  MOVD XMM1,EAX
00516f1e  f30fe6c9                  CVTDQ2PD XMM1,XMM1
00516f22  c1e81f                    SHR EAX,0x1f
00516f25  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00516f2b  6a00                      PUSH 0x0
00516f2d  56                        PUSH ESI
00516f2e  6a01                      PUSH 0x1
00516f30  f30f59c5                  MULSS XMM0,XMM5
00516f34  6a00                      PUSH 0x0
00516f36  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
00516f3f  f30f59de                  MULSS XMM3,XMM6
00516f43  8d442428                  LEA EAX,[ESP + 0x28]
00516f47  50                        PUSH EAX
00516f48  8d442438                  LEA EAX,[ESP + 0x38]
00516f4c  50                        PUSH EAX
00516f4d  660f5ad1                  CVTPD2PS XMM2,XMM1
00516f51  6a63                      PUSH 0x63
00516f53  68e8030000                PUSH 0x3e8
00516f58  0f28cc                    MOVAPS XMM1,XMM4
00516f5b  f30f59e5                  MULSS XMM4,XMM5
00516f5f  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
00516f67  f30f592d5ca7ba00          MULSS XMM5,dword ptr [0x00baa75c]
00516f6f  f30f58e3                  ADDSS XMM4,XMM3
00516f73  f30f5915e8a7ba00          MULSS XMM2,dword ptr [0x00baa7e8]
00516f7b  f30f58af40030000          ADDSS XMM5,dword ptr [EDI + 0x340]
00516f83  f30f59ce                  MULSS XMM1,XMM6
00516f87  f30f581530a6ba00          ADDSS XMM2,dword ptr [0x00baa630]
00516f8f  f30f59355ca7ba00          MULSS XMM6,dword ptr [0x00baa75c]
00516f97  f30f5cc8                  SUBSS XMM1,XMM0
00516f9b  f30f116c2448              MOVSS dword ptr [ESP + 0x48],XMM5
00516fa1  f30f58b73c030000          ADDSS XMM6,dword ptr [EDI + 0x33c]
00516fa9  f30f59e2                  MULSS XMM4,XMM2
00516fad  f30f59ca                  MULSS XMM1,XMM2
00516fb1  f30f1164243c              MOVSS dword ptr [ESP + 0x3c],XMM4
00516fb7  f30f11742444              MOVSS dword ptr [ESP + 0x44],XMM6
00516fbd  f30f114c2438              MOVSS dword ptr [ESP + 0x38],XMM1
00516fc3  e848741e00                CALL 0x006fe410
00516fc8  8bf0                      MOV ESI,EAX
00516fca  e8917f1d00                CALL 0x006eef60
00516fcf  660f6ec0                  MOVD XMM0,EAX
00516fd3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00516fd7  c1e81f                    SHR EAX,0x1f
00516fda  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00516fe3  660f5ac8                  CVTPD2PS XMM1,XMM0
00516fe7  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00516fef  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
00516ff7  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
00516fff  0f28c1                    MOVAPS XMM0,XMM1
00517002  f30f598ee8000000          MULSS XMM1,dword ptr [ESI + 0xe8]
0051700a  f30f5986e4000000          MULSS XMM0,dword ptr [ESI + 0xe4]
00517012  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0051701a  f30f101d6ca0ba00          MOVSS XMM3,dword ptr [0x00baa06c]
00517022  51                        PUSH ECX
00517023  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0051702b  8d8c24b8000000            LEA ECX,[ESP + 0xb8]
00517032  0f28d3                    MOVAPS XMM2,XMM3
00517035  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051703c  0f28cb                    MOVAPS XMM1,XMM3
0051703f  e8acc8f0ff                CALL 0x004238f0
00517044  50                        PUSH EAX
00517045  8d4e48                    LEA ECX,[ESI + 0x48]
00517048  e88303efff                CALL 0x004073d0
0051704d  8b06                      MOV EAX,dword ptr [ESI]
0051704f  8bce                      MOV ECX,ESI
00517051  ff500c                    CALL dword ptr [EAX + 0xc]
00517054  e8077f1d00                CALL 0x006eef60
00517059  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051705f  6a00                      PUSH 0x0
00517061  50                        PUSH EAX
00517062  6a00                      PUSH 0x0
00517064  57                        PUSH EDI
00517065  6840b6c700                PUSH 0xc7b640
0051706a  8d873c030000              LEA EAX,[EDI + 0x33c]
00517070  50                        PUSH EAX
00517071  6a1a                      PUSH 0x1a
00517073  68e8030000                PUSH 0x3e8
00517078  e893731e00                CALL 0x006fe410
0051707d  6a00                      PUSH 0x0
0051707f  68acd5c500                PUSH 0xc5d5ac
00517084  68dcd5c500                PUSH 0xc5d5dc
00517089  6a00                      PUSH 0x0
0051708b  50                        PUSH EAX
0051708c  e820985d00                CALL 0x00af08b1
00517091  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
00517099  83c414                    ADD ESP,0x14
0051709c  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
005170a4  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
005170ac  c780780400000000403f      MOV dword ptr [EAX + 0x478],0x3f400000
005170b6  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
005170be  c7805c04000096000000      MOV dword ptr [EAX + 0x45c],0x96
005170c8  f30f1188e4000000          MOVSS dword ptr [EAX + 0xe4],XMM1
005170d0  c7806004000096000000      MOV dword ptr [EAX + 0x460],0x96
005170da  f30f1180e8000000          MOVSS dword ptr [EAX + 0xe8],XMM0
005170e2  e8797e1d00                CALL 0x006eef60
005170e7  51                        PUSH ECX
005170e8  8bcf                      MOV ECX,EDI
005170ea  660f6ec0                  MOVD XMM0,EAX
005170ee  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005170f2  c1e81f                    SHR EAX,0x1f
005170f5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005170fe  660f5ac0                  CVTPD2PS XMM0,XMM0
00517102  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0051710a  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00517112  f30f110424                MOVSS dword ptr [ESP],XMM0
00517117  e8b4f31900                CALL 0x006b64d0
0051711c  6a01                      PUSH 0x1
0051711e  6a00                      PUSH 0x0
00517120  68ff000000                PUSH 0xff
00517125  8b10                      MOV EDX,dword ptr [EAX]
00517127  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0051712d  6aff                      PUSH -0x1
0051712f  51                        PUSH ECX
00517130  8bc8                      MOV ECX,EAX
00517132  ff523c                    CALL dword ptr [EDX + 0x3c]
00517135  8b8c248c010000            MOV ECX,dword ptr [ESP + 0x18c]
0051713c  5f                        POP EDI
0051713d  5e                        POP ESI
0051713e  33cc                      XOR ECX,ESP
00517140  e8e67f5d00                CALL 0x00aef12b
00517145  8be5                      MOV ESP,EBP
00517147  5d                        POP EBP
00517148  c3                        RET
