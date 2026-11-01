; J460 NPC AI 0x006cb2e0 HELPER_Entity_NPC_FireProjectiles
; types=
; identities=common_attack
; entry=006cb2e0
006cb2e0  53                        PUSH EBX
006cb2e1  8bdc                      MOV EBX,ESP
006cb2e3  83ec08                    SUB ESP,0x8
006cb2e6  83e4f8                    AND ESP,0xfffffff8
006cb2e9  83c404                    ADD ESP,0x4
006cb2ec  55                        PUSH EBP
006cb2ed  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
006cb2f0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
006cb2f4  8bec                      MOV EBP,ESP
006cb2f6  6aff                      PUSH -0x1
006cb2f8  68fdaaaf00                PUSH 0xafaafd
006cb2fd  64a100000000              MOV EAX,FS:[0x0]
006cb303  50                        PUSH EAX
006cb304  53                        PUSH EBX
006cb305  83ec40                    SUB ESP,0x40
006cb308  56                        PUSH ESI
006cb309  57                        PUSH EDI
006cb30a  a1b493bf00                MOV EAX,[0x00bf93b4]
006cb30f  33c5                      XOR EAX,EBP
006cb311  50                        PUSH EAX
006cb312  8d45f4                    LEA EAX,[EBP + -0xc]
006cb315  64a300000000              MOV FS:[0x0],EAX
006cb31b  894dec                    MOV dword ptr [EBP + -0x14],ECX
006cb31e  33f6                      XOR ESI,ESI
006cb320  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
006cb327  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cb32a  8975bc                    MOV dword ptr [EBP + -0x44],ESI
006cb32d  8b4310                    MOV EAX,dword ptr [EBX + 0x10]
006cb330  8975fc                    MOV dword ptr [EBP + -0x4],ESI
006cb333  83f809                    CMP EAX,0x9
006cb336  0f8770160000              JA 0x006cc9ac
006cb33c  ff2485a8cd6c00            JMP dword ptr [EAX*0x4 + 0x6ccda8]
006cb343  e8183c0200                CALL 0x006eef60
006cb348  8b7b14                    MOV EDI,dword ptr [EBX + 0x14]
006cb34b  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cb34e  6a00                      PUSH 0x0
006cb350  680cd7c500                PUSH 0xc5d70c
006cb355  f30f104760                MOVSS XMM0,dword ptr [EDI + 0x60]
006cb35a  f30f5801                  ADDSS XMM0,dword ptr [ECX]
006cb35e  68dcd5c500                PUSH 0xc5d5dc
006cb363  6a00                      PUSH 0x0
006cb365  50                        PUSH EAX
006cb366  6a00                      PUSH 0x0
006cb368  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cb36b  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cb370  8d45c8                    LEA EAX,[EBP + -0x38]
006cb373  ff730c                    PUSH dword ptr [EBX + 0xc]
006cb376  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cb37b  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cb380  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cb386  50                        PUSH EAX
006cb387  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cb38d  6a09                      PUSH 0x9
006cb38f  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cb394  e887d7d5ff                CALL 0x00428b20
006cb399  50                        PUSH EAX
006cb39a  e812554200                CALL 0x00af08b1
006cb39f  83c414                    ADD ESP,0x14
006cb3a2  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cb3a5  8d45dc                    LEA EAX,[EBP + -0x24]
006cb3a8  8d4db4                    LEA ECX,[EBP + -0x4c]
006cb3ab  50                        PUSH EAX
006cb3ac  6a00                      PUSH 0x0
006cb3ae  e86d15d6ff                CALL 0x0042c920
006cb3b3  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cb3b6  e9f4150000                JMP 0x006cc9af
006cb3bb  e8a03b0200                CALL 0x006eef60
006cb3c0  8b7b0c                    MOV EDI,dword ptr [EBX + 0xc]
006cb3c3  8b4b14                    MOV ECX,dword ptr [EBX + 0x14]
006cb3c6  8b7308                    MOV ESI,dword ptr [EBX + 0x8]
006cb3c9  6a00                      PUSH 0x0
006cb3cb  f30f105f04                MOVSS XMM3,dword ptr [EDI + 0x4]
006cb3d0  f30f1027                  MOVSS XMM4,dword ptr [EDI]
006cb3d4  0f28c3                    MOVAPS XMM0,XMM3
006cb3d7  f30f5905e4a1ba00          MULSS XMM0,dword ptr [0x00baa1e4]
006cb3df  0f28cc                    MOVAPS XMM1,XMM4
006cb3e2  680cd7c500                PUSH 0xc5d70c
006cb3e7  f30f590d2ca4ba00          MULSS XMM1,dword ptr [0x00baa42c]
006cb3ef  68dcd5c500                PUSH 0xc5d5dc
006cb3f4  f30f594128                MULSS XMM0,dword ptr [ECX + 0x28]
006cb3f9  6a00                      PUSH 0x0
006cb3fb  f30f5925e4a1ba00          MULSS XMM4,dword ptr [0x00baa1e4]
006cb403  50                        PUSH EAX
006cb404  f30f591d2ca4ba00          MULSS XMM3,dword ptr [0x00baa42c]
006cb40c  f30f5cc8                  SUBSS XMM1,XMM0
006cb410  8d45c8                    LEA EAX,[EBP + -0x38]
006cb413  f30f104160                MOVSS XMM0,dword ptr [ECX + 0x60]
006cb418  f30f5806                  ADDSS XMM0,dword ptr [ESI]
006cb41c  f30f596128                MULSS XMM4,dword ptr [ECX + 0x28]
006cb421  6a00                      PUSH 0x0
006cb423  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cb426  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cb42b  50                        PUSH EAX
006cb42c  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cb431  8d45d0                    LEA EAX,[EBP + -0x30]
006cb434  f30f104164                MOVSS XMM0,dword ptr [ECX + 0x64]
006cb439  f30f58e3                  ADDSS XMM4,XMM3
006cb43d  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
006cb442  50                        PUSH EAX
006cb443  ffb194000000              PUSH dword ptr [ECX + 0x94]
006cb449  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cb44f  6a09                      PUSH 0x9
006cb451  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cb456  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cb45b  e8c0d6d5ff                CALL 0x00428b20
006cb460  50                        PUSH EAX
006cb461  e84b544200                CALL 0x00af08b1
006cb466  83c414                    ADD ESP,0x14
006cb469  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cb46c  8d45dc                    LEA EAX,[EBP + -0x24]
006cb46f  8d4db4                    LEA ECX,[EBP + -0x4c]
006cb472  50                        PUSH EAX
006cb473  6a00                      PUSH 0x0
006cb475  e8a614d6ff                CALL 0x0042c920
006cb47a  e8e13a0200                CALL 0x006eef60
006cb47f  f30f106704                MOVSS XMM4,dword ptr [EDI + 0x4]
006cb484  8b4b14                    MOV ECX,dword ptr [EBX + 0x14]
006cb487  0f28cc                    MOVAPS XMM1,XMM4
006cb48a  f30f1017                  MOVSS XMM2,dword ptr [EDI]
006cb48e  8bf9                      MOV EDI,ECX
006cb490  f30f590de4a1ba00          MULSS XMM1,dword ptr [0x00baa1e4]
006cb498  0f28c2                    MOVAPS XMM0,XMM2
006cb49b  6a00                      PUSH 0x0
006cb49d  f30f59052ca4ba00          MULSS XMM0,dword ptr [0x00baa42c]
006cb4a5  680cd7c500                PUSH 0xc5d70c
006cb4aa  f30f594928                MULSS XMM1,dword ptr [ECX + 0x28]
006cb4af  68dcd5c500                PUSH 0xc5d5dc
006cb4b4  f30f5915e4a1ba00          MULSS XMM2,dword ptr [0x00baa1e4]
006cb4bc  6a00                      PUSH 0x0
006cb4be  f30f59252ca4ba00          MULSS XMM4,dword ptr [0x00baa42c]
006cb4c6  f30f58c8                  ADDSS XMM1,XMM0
006cb4ca  50                        PUSH EAX
006cb4cb  f30f1006                  MOVSS XMM0,dword ptr [ESI]
006cb4cf  8d45c8                    LEA EAX,[EBP + -0x38]
006cb4d2  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cb4d7  f30f595128                MULSS XMM2,dword ptr [ECX + 0x28]
006cb4dc  6a00                      PUSH 0x0
006cb4de  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cb4e1  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cb4e6  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cb4eb  f30f5ce2                  SUBSS XMM4,XMM2
006cb4ef  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cb4f4  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
006cb4f9  50                        PUSH EAX
006cb4fa  8d45d0                    LEA EAX,[EBP + -0x30]
006cb4fd  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cb502  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cb507  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cb50d  50                        PUSH EAX
006cb50e  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cb514  6a09                      PUSH 0x9
006cb516  e805d6d5ff                CALL 0x00428b20
006cb51b  50                        PUSH EAX
006cb51c  e890534200                CALL 0x00af08b1
006cb521  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cb524  83c414                    ADD ESP,0x14
006cb527  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cb52a  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cb52d  740d                      JZ 0x006cb53c
006cb52f  8906                      MOV dword ptr [ESI],EAX
006cb531  83c604                    ADD ESI,0x4
006cb534  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cb537  e973140000                JMP 0x006cc9af
006cb53c  8d45dc                    LEA EAX,[EBP + -0x24]
006cb53f  50                        PUSH EAX
006cb540  56                        PUSH ESI
006cb541  8d4db4                    LEA ECX,[EBP + -0x4c]
006cb544  e8d713d6ff                CALL 0x0042c920
006cb549  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cb54c  e95e140000                JMP 0x006cc9af
006cb551  e80a3a0200                CALL 0x006eef60
006cb556  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cb559  8b7b14                    MOV EDI,dword ptr [EBX + 0x14]
006cb55c  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
006cb55f  6a00                      PUSH 0x0
006cb561  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cb565  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cb56a  680cd7c500                PUSH 0xc5d70c
006cb56f  68dcd5c500                PUSH 0xc5d5dc
006cb574  6a00                      PUSH 0x0
006cb576  50                        PUSH EAX
006cb577  6a00                      PUSH 0x0
006cb579  56                        PUSH ESI
006cb57a  ff730c                    PUSH dword ptr [EBX + 0xc]
006cb57d  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cb582  8d45c8                    LEA EAX,[EBP + -0x38]
006cb585  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cb58a  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cb58f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cb595  50                        PUSH EAX
006cb596  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cb59c  6a09                      PUSH 0x9
006cb59e  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cb5a3  e878d5d5ff                CALL 0x00428b20
006cb5a8  50                        PUSH EAX
006cb5a9  e803534200                CALL 0x00af08b1
006cb5ae  83c414                    ADD ESP,0x14
006cb5b1  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cb5b4  8d45dc                    LEA EAX,[EBP + -0x24]
006cb5b7  8d4db4                    LEA ECX,[EBP + -0x4c]
006cb5ba  50                        PUSH EAX
006cb5bb  6a00                      PUSH 0x0
006cb5bd  e85e13d6ff                CALL 0x0042c920
006cb5c2  e899390200                CALL 0x006eef60
006cb5c7  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cb5ca  f30f102de0a3ba00          MOVSS XMM5,dword ptr [0x00baa3e0]
006cb5d2  6a00                      PUSH 0x0
006cb5d4  680cd7c500                PUSH 0xc5d70c
006cb5d9  f30f105904                MOVSS XMM3,dword ptr [ECX + 0x4]
006cb5de  f30f1021                  MOVSS XMM4,dword ptr [ECX]
006cb5e2  0f28c3                    MOVAPS XMM0,XMM3
006cb5e5  f30f5905e4a1ba00          MULSS XMM0,dword ptr [0x00baa1e4]
006cb5ed  0f28cc                    MOVAPS XMM1,XMM4
006cb5f0  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cb5f3  f30f590d2ca4ba00          MULSS XMM1,dword ptr [0x00baa42c]
006cb5fb  68dcd5c500                PUSH 0xc5d5dc
006cb600  f30f5925e4a1ba00          MULSS XMM4,dword ptr [0x00baa1e4]
006cb608  6a00                      PUSH 0x0
006cb60a  f30f591d2ca4ba00          MULSS XMM3,dword ptr [0x00baa42c]
006cb612  50                        PUSH EAX
006cb613  f30f59c5                  MULSS XMM0,XMM5
006cb617  8d45c8                    LEA EAX,[EBP + -0x38]
006cb61a  6a00                      PUSH 0x0
006cb61c  f30f59cd                  MULSS XMM1,XMM5
006cb620  56                        PUSH ESI
006cb621  f30f594728                MULSS XMM0,dword ptr [EDI + 0x28]
006cb626  50                        PUSH EAX
006cb627  f30f59e5                  MULSS XMM4,XMM5
006cb62b  8d45d0                    LEA EAX,[EBP + -0x30]
006cb62e  50                        PUSH EAX
006cb62f  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cb635  f30f5cc8                  SUBSS XMM1,XMM0
006cb639  f30f59dd                  MULSS XMM3,XMM5
006cb63d  6a09                      PUSH 0x9
006cb63f  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cb643  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cb648  f30f596728                MULSS XMM4,dword ptr [EDI + 0x28]
006cb64d  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cb652  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cb657  f30f58e3                  ADDSS XMM4,XMM3
006cb65b  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cb660  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cb665  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cb66b  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cb670  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cb675  e8a6d4d5ff                CALL 0x00428b20
006cb67a  50                        PUSH EAX
006cb67b  e831524200                CALL 0x00af08b1
006cb680  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cb683  83c414                    ADD ESP,0x14
006cb686  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cb689  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cb68c  740a                      JZ 0x006cb698
006cb68e  8906                      MOV dword ptr [ESI],EAX
006cb690  83c604                    ADD ESI,0x4
006cb693  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cb696  eb10                      JMP 0x006cb6a8
006cb698  8d45dc                    LEA EAX,[EBP + -0x24]
006cb69b  50                        PUSH EAX
006cb69c  56                        PUSH ESI
006cb69d  8d4db4                    LEA ECX,[EBP + -0x4c]
006cb6a0  e87b12d6ff                CALL 0x0042c920
006cb6a5  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cb6a8  e8b3380200                CALL 0x006eef60
006cb6ad  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cb6b0  f30f102de0a3ba00          MOVSS XMM5,dword ptr [0x00baa3e0]
006cb6b8  f30f106104                MOVSS XMM4,dword ptr [ECX + 0x4]
006cb6bd  f30f1011                  MOVSS XMM2,dword ptr [ECX]
006cb6c1  0f28cc                    MOVAPS XMM1,XMM4
006cb6c4  f30f590de4a1ba00          MULSS XMM1,dword ptr [0x00baa1e4]
006cb6cc  0f28c2                    MOVAPS XMM0,XMM2
006cb6cf  f30f5915e4a1ba00          MULSS XMM2,dword ptr [0x00baa1e4]
006cb6d7  f30f59252ca4ba00          MULSS XMM4,dword ptr [0x00baa42c]
006cb6df  f30f59052ca4ba00          MULSS XMM0,dword ptr [0x00baa42c]
006cb6e7  f30f59cd                  MULSS XMM1,XMM5
006cb6eb  f30f59d5                  MULSS XMM2,XMM5
006cb6ef  f30f594f28                MULSS XMM1,dword ptr [EDI + 0x28]
006cb6f4  f30f595728                MULSS XMM2,dword ptr [EDI + 0x28]
006cb6f9  f30f59c5                  MULSS XMM0,XMM5
006cb6fd  f30f59e5                  MULSS XMM4,XMM5
006cb701  f30f58c8                  ADDSS XMM1,XMM0
006cb705  f30f5ce2                  SUBSS XMM4,XMM2
006cb709  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cb70e  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cb713  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cb716  6a00                      PUSH 0x0
006cb718  680cd7c500                PUSH 0xc5d70c
006cb71d  68dcd5c500                PUSH 0xc5d5dc
006cb722  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cb726  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cb72b  6a00                      PUSH 0x0
006cb72d  50                        PUSH EAX
006cb72e  6a00                      PUSH 0x0
006cb730  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cb733  8d45c8                    LEA EAX,[EBP + -0x38]
006cb736  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cb73b  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cb740  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cb745  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cb74b  50                        PUSH EAX
006cb74c  8d45d0                    LEA EAX,[EBP + -0x30]
006cb74f  50                        PUSH EAX
006cb750  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cb756  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cb75b  6a09                      PUSH 0x9
006cb75d  e8bed3d5ff                CALL 0x00428b20
006cb762  50                        PUSH EAX
006cb763  e849514200                CALL 0x00af08b1
006cb768  e9b7fdffff                JMP 0x006cb524
006cb76d  e8ee370200                CALL 0x006eef60
006cb772  8b7b14                    MOV EDI,dword ptr [EBX + 0x14]
006cb775  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cb778  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
006cb77b  6a00                      PUSH 0x0
006cb77d  f30f104760                MOVSS XMM0,dword ptr [EDI + 0x60]
006cb782  f30f5801                  ADDSS XMM0,dword ptr [ECX]
006cb786  680cd7c500                PUSH 0xc5d70c
006cb78b  68dcd5c500                PUSH 0xc5d5dc
006cb790  6a00                      PUSH 0x0
006cb792  50                        PUSH EAX
006cb793  6a00                      PUSH 0x0
006cb795  56                        PUSH ESI
006cb796  ff730c                    PUSH dword ptr [EBX + 0xc]
006cb799  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cb79e  8d45c8                    LEA EAX,[EBP + -0x38]
006cb7a1  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cb7a6  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cb7ab  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cb7b1  50                        PUSH EAX
006cb7b2  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cb7b8  6a09                      PUSH 0x9
006cb7ba  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cb7bf  e85cd3d5ff                CALL 0x00428b20
006cb7c4  50                        PUSH EAX
006cb7c5  e8e7504200                CALL 0x00af08b1
006cb7ca  83c414                    ADD ESP,0x14
006cb7cd  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cb7d0  8d45dc                    LEA EAX,[EBP + -0x24]
006cb7d3  8d4db4                    LEA ECX,[EBP + -0x4c]
006cb7d6  50                        PUSH EAX
006cb7d7  6a00                      PUSH 0x0
006cb7d9  e84211d6ff                CALL 0x0042c920
006cb7de  e87d370200                CALL 0x006eef60
006cb7e3  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cb7e6  6a00                      PUSH 0x0
006cb7e8  680cd7c500                PUSH 0xc5d70c
006cb7ed  68dcd5c500                PUSH 0xc5d5dc
006cb7f2  f30f105904                MOVSS XMM3,dword ptr [ECX + 0x4]
006cb7f7  f30f1021                  MOVSS XMM4,dword ptr [ECX]
006cb7fb  0f28c3                    MOVAPS XMM0,XMM3
006cb7fe  f30f590588a2ba00          MULSS XMM0,dword ptr [0x00baa288]
006cb806  0f28cc                    MOVAPS XMM1,XMM4
006cb809  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cb80c  f30f590deca3ba00          MULSS XMM1,dword ptr [0x00baa3ec]
006cb814  6a00                      PUSH 0x0
006cb816  f30f594728                MULSS XMM0,dword ptr [EDI + 0x28]
006cb81b  50                        PUSH EAX
006cb81c  f30f592588a2ba00          MULSS XMM4,dword ptr [0x00baa288]
006cb824  8d45c8                    LEA EAX,[EBP + -0x38]
006cb827  6a00                      PUSH 0x0
006cb829  f30f591deca3ba00          MULSS XMM3,dword ptr [0x00baa3ec]
006cb831  f30f5cc8                  SUBSS XMM1,XMM0
006cb835  56                        PUSH ESI
006cb836  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cb83a  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cb83f  f30f596728                MULSS XMM4,dword ptr [EDI + 0x28]
006cb844  50                        PUSH EAX
006cb845  8d45d0                    LEA EAX,[EBP + -0x30]
006cb848  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cb84d  50                        PUSH EAX
006cb84e  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cb854  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cb859  f30f58e3                  ADDSS XMM4,XMM3
006cb85d  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cb862  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cb867  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cb86d  6a09                      PUSH 0x9
006cb86f  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cb874  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cb879  e8a2d2d5ff                CALL 0x00428b20
006cb87e  50                        PUSH EAX
006cb87f  e82d504200                CALL 0x00af08b1
006cb884  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cb887  83c414                    ADD ESP,0x14
006cb88a  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cb88d  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cb890  740a                      JZ 0x006cb89c
006cb892  8906                      MOV dword ptr [ESI],EAX
006cb894  83c604                    ADD ESI,0x4
006cb897  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cb89a  eb10                      JMP 0x006cb8ac
006cb89c  8d45dc                    LEA EAX,[EBP + -0x24]
006cb89f  50                        PUSH EAX
006cb8a0  56                        PUSH ESI
006cb8a1  8d4db4                    LEA ECX,[EBP + -0x4c]
006cb8a4  e87710d6ff                CALL 0x0042c920
006cb8a9  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cb8ac  e8af360200                CALL 0x006eef60
006cb8b1  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cb8b4  f30f106104                MOVSS XMM4,dword ptr [ECX + 0x4]
006cb8b9  f30f1011                  MOVSS XMM2,dword ptr [ECX]
006cb8bd  0f28cc                    MOVAPS XMM1,XMM4
006cb8c0  f30f590d88a2ba00          MULSS XMM1,dword ptr [0x00baa288]
006cb8c8  0f28c2                    MOVAPS XMM0,XMM2
006cb8cb  f30f591588a2ba00          MULSS XMM2,dword ptr [0x00baa288]
006cb8d3  f30f594f28                MULSS XMM1,dword ptr [EDI + 0x28]
006cb8d8  f30f5905eca3ba00          MULSS XMM0,dword ptr [0x00baa3ec]
006cb8e0  f30f5925eca3ba00          MULSS XMM4,dword ptr [0x00baa3ec]
006cb8e8  f30f595728                MULSS XMM2,dword ptr [EDI + 0x28]
006cb8ed  f30f58c8                  ADDSS XMM1,XMM0
006cb8f1  f30f5ce2                  SUBSS XMM4,XMM2
006cb8f5  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cb8fa  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cb8ff  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cb902  f30f104760                MOVSS XMM0,dword ptr [EDI + 0x60]
006cb907  6a00                      PUSH 0x0
006cb909  680cd7c500                PUSH 0xc5d70c
006cb90e  f30f5801                  ADDSS XMM0,dword ptr [ECX]
006cb912  68dcd5c500                PUSH 0xc5d5dc
006cb917  6a00                      PUSH 0x0
006cb919  50                        PUSH EAX
006cb91a  6a00                      PUSH 0x0
006cb91c  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cb91f  8d45c8                    LEA EAX,[EBP + -0x38]
006cb922  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cb927  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cb92c  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cb931  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cb937  50                        PUSH EAX
006cb938  8d45d0                    LEA EAX,[EBP + -0x30]
006cb93b  50                        PUSH EAX
006cb93c  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cb942  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cb947  6a09                      PUSH 0x9
006cb949  e8d2d1d5ff                CALL 0x00428b20
006cb94e  50                        PUSH EAX
006cb94f  e85d4f4200                CALL 0x00af08b1
006cb954  e9cbfbffff                JMP 0x006cb524
006cb959  e802360200                CALL 0x006eef60
006cb95e  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cb961  8b7b14                    MOV EDI,dword ptr [EBX + 0x14]
006cb964  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
006cb967  6a00                      PUSH 0x0
006cb969  f30f105904                MOVSS XMM3,dword ptr [ECX + 0x4]
006cb96e  f30f1021                  MOVSS XMM4,dword ptr [ECX]
006cb972  0f28c3                    MOVAPS XMM0,XMM3
006cb975  f30f590548a1ba00          MULSS XMM0,dword ptr [0x00baa148]
006cb97d  0f28cc                    MOVAPS XMM1,XMM4
006cb980  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cb983  f30f590d4ca4ba00          MULSS XMM1,dword ptr [0x00baa44c]
006cb98b  680cd7c500                PUSH 0xc5d70c
006cb990  f30f594728                MULSS XMM0,dword ptr [EDI + 0x28]
006cb995  68dcd5c500                PUSH 0xc5d5dc
006cb99a  f30f592548a1ba00          MULSS XMM4,dword ptr [0x00baa148]
006cb9a2  6a00                      PUSH 0x0
006cb9a4  f30f591d4ca4ba00          MULSS XMM3,dword ptr [0x00baa44c]
006cb9ac  f30f5cc8                  SUBSS XMM1,XMM0
006cb9b0  50                        PUSH EAX
006cb9b1  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cb9b5  8d45c8                    LEA EAX,[EBP + -0x38]
006cb9b8  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cb9bd  f30f596728                MULSS XMM4,dword ptr [EDI + 0x28]
006cb9c2  6a00                      PUSH 0x0
006cb9c4  56                        PUSH ESI
006cb9c5  50                        PUSH EAX
006cb9c6  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cb9cb  8d45d0                    LEA EAX,[EBP + -0x30]
006cb9ce  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cb9d3  f30f58e3                  ADDSS XMM4,XMM3
006cb9d7  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cb9dc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cb9e2  50                        PUSH EAX
006cb9e3  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cb9e9  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cb9ee  6a09                      PUSH 0x9
006cb9f0  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cb9f5  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cb9fa  e821d1d5ff                CALL 0x00428b20
006cb9ff  50                        PUSH EAX
006cba00  e8ac4e4200                CALL 0x00af08b1
006cba05  83c414                    ADD ESP,0x14
006cba08  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cba0b  8d45dc                    LEA EAX,[EBP + -0x24]
006cba0e  8d4db4                    LEA ECX,[EBP + -0x4c]
006cba11  50                        PUSH EAX
006cba12  6a00                      PUSH 0x0
006cba14  e8070fd6ff                CALL 0x0042c920
006cba19  e842350200                CALL 0x006eef60
006cba1e  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cba21  6a00                      PUSH 0x0
006cba23  680cd7c500                PUSH 0xc5d70c
006cba28  68dcd5c500                PUSH 0xc5d5dc
006cba2d  f30f106104                MOVSS XMM4,dword ptr [ECX + 0x4]
006cba32  f30f1011                  MOVSS XMM2,dword ptr [ECX]
006cba36  0f28cc                    MOVAPS XMM1,XMM4
006cba39  f30f590d48a1ba00          MULSS XMM1,dword ptr [0x00baa148]
006cba41  0f28c2                    MOVAPS XMM0,XMM2
006cba44  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cba47  f30f59054ca4ba00          MULSS XMM0,dword ptr [0x00baa44c]
006cba4f  6a00                      PUSH 0x0
006cba51  f30f594f28                MULSS XMM1,dword ptr [EDI + 0x28]
006cba56  50                        PUSH EAX
006cba57  f30f591548a1ba00          MULSS XMM2,dword ptr [0x00baa148]
006cba5f  8d45c8                    LEA EAX,[EBP + -0x38]
006cba62  6a00                      PUSH 0x0
006cba64  f30f59254ca4ba00          MULSS XMM4,dword ptr [0x00baa44c]
006cba6c  f30f58c8                  ADDSS XMM1,XMM0
006cba70  56                        PUSH ESI
006cba71  f30f104760                MOVSS XMM0,dword ptr [EDI + 0x60]
006cba76  f30f5801                  ADDSS XMM0,dword ptr [ECX]
006cba7a  f30f595728                MULSS XMM2,dword ptr [EDI + 0x28]
006cba7f  50                        PUSH EAX
006cba80  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cba85  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cba8a  f30f5ce2                  SUBSS XMM4,XMM2
006cba8e  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cba93  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cba98  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cba9d  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cbaa2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cbaa8  8d45d0                    LEA EAX,[EBP + -0x30]
006cbaab  50                        PUSH EAX
006cbaac  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cbab2  6a09                      PUSH 0x9
006cbab4  e867d0d5ff                CALL 0x00428b20
006cbab9  50                        PUSH EAX
006cbaba  e8f24d4200                CALL 0x00af08b1
006cbabf  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cbac2  83c414                    ADD ESP,0x14
006cbac5  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cbac8  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cbacb  740a                      JZ 0x006cbad7
006cbacd  8906                      MOV dword ptr [ESI],EAX
006cbacf  83c604                    ADD ESI,0x4
006cbad2  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cbad5  eb10                      JMP 0x006cbae7
006cbad7  8d45dc                    LEA EAX,[EBP + -0x24]
006cbada  50                        PUSH EAX
006cbadb  56                        PUSH ESI
006cbadc  8d4db4                    LEA ECX,[EBP + -0x4c]
006cbadf  e83c0ed6ff                CALL 0x0042c920
006cbae4  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cbae7  e874340200                CALL 0x006eef60
006cbaec  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cbaef  f30f102de0a3ba00          MOVSS XMM5,dword ptr [0x00baa3e0]
006cbaf7  6a00                      PUSH 0x0
006cbaf9  680cd7c500                PUSH 0xc5d70c
006cbafe  f30f105904                MOVSS XMM3,dword ptr [ECX + 0x4]
006cbb03  f30f1021                  MOVSS XMM4,dword ptr [ECX]
006cbb07  0f28c3                    MOVAPS XMM0,XMM3
006cbb0a  f30f590588a2ba00          MULSS XMM0,dword ptr [0x00baa288]
006cbb12  0f28cc                    MOVAPS XMM1,XMM4
006cbb15  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cbb18  f30f590deca3ba00          MULSS XMM1,dword ptr [0x00baa3ec]
006cbb20  68dcd5c500                PUSH 0xc5d5dc
006cbb25  f30f592588a2ba00          MULSS XMM4,dword ptr [0x00baa288]
006cbb2d  6a00                      PUSH 0x0
006cbb2f  f30f591deca3ba00          MULSS XMM3,dword ptr [0x00baa3ec]
006cbb37  50                        PUSH EAX
006cbb38  f30f59c5                  MULSS XMM0,XMM5
006cbb3c  8d45c8                    LEA EAX,[EBP + -0x38]
006cbb3f  6a00                      PUSH 0x0
006cbb41  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cbb44  f30f59cd                  MULSS XMM1,XMM5
006cbb48  50                        PUSH EAX
006cbb49  f30f594728                MULSS XMM0,dword ptr [EDI + 0x28]
006cbb4e  8d45d0                    LEA EAX,[EBP + -0x30]
006cbb51  50                        PUSH EAX
006cbb52  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cbb58  f30f59e5                  MULSS XMM4,XMM5
006cbb5c  6a09                      PUSH 0x9
006cbb5e  f30f5cc8                  SUBSS XMM1,XMM0
006cbb62  f30f59dd                  MULSS XMM3,XMM5
006cbb66  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cbb6a  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cbb6f  f30f596728                MULSS XMM4,dword ptr [EDI + 0x28]
006cbb74  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cbb79  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cbb7e  f30f58e3                  ADDSS XMM4,XMM3
006cbb82  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cbb87  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cbb8c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cbb92  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cbb97  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cbb9c  e87fcfd5ff                CALL 0x00428b20
006cbba1  50                        PUSH EAX
006cbba2  e80a4d4200                CALL 0x00af08b1
006cbba7  83c414                    ADD ESP,0x14
006cbbaa  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cbbad  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cbbb0  740a                      JZ 0x006cbbbc
006cbbb2  8906                      MOV dword ptr [ESI],EAX
006cbbb4  83c604                    ADD ESI,0x4
006cbbb7  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cbbba  eb10                      JMP 0x006cbbcc
006cbbbc  8d45dc                    LEA EAX,[EBP + -0x24]
006cbbbf  50                        PUSH EAX
006cbbc0  56                        PUSH ESI
006cbbc1  8d4db4                    LEA ECX,[EBP + -0x4c]
006cbbc4  e8570dd6ff                CALL 0x0042c920
006cbbc9  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cbbcc  e88f330200                CALL 0x006eef60
006cbbd1  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cbbd4  f30f102de0a3ba00          MOVSS XMM5,dword ptr [0x00baa3e0]
006cbbdc  6a00                      PUSH 0x0
006cbbde  680cd7c500                PUSH 0xc5d70c
006cbbe3  f30f106104                MOVSS XMM4,dword ptr [ECX + 0x4]
006cbbe8  f30f1011                  MOVSS XMM2,dword ptr [ECX]
006cbbec  0f28cc                    MOVAPS XMM1,XMM4
006cbbef  f30f590d88a2ba00          MULSS XMM1,dword ptr [0x00baa288]
006cbbf7  0f28c2                    MOVAPS XMM0,XMM2
006cbbfa  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cbbfd  f30f5905eca3ba00          MULSS XMM0,dword ptr [0x00baa3ec]
006cbc05  68dcd5c500                PUSH 0xc5d5dc
006cbc0a  f30f591588a2ba00          MULSS XMM2,dword ptr [0x00baa288]
006cbc12  6a00                      PUSH 0x0
006cbc14  f30f5925eca3ba00          MULSS XMM4,dword ptr [0x00baa3ec]
006cbc1c  50                        PUSH EAX
006cbc1d  f30f59cd                  MULSS XMM1,XMM5
006cbc21  8d45c8                    LEA EAX,[EBP + -0x38]
006cbc24  6a00                      PUSH 0x0
006cbc26  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cbc29  f30f59c5                  MULSS XMM0,XMM5
006cbc2d  50                        PUSH EAX
006cbc2e  f30f594f28                MULSS XMM1,dword ptr [EDI + 0x28]
006cbc33  8d45d0                    LEA EAX,[EBP + -0x30]
006cbc36  50                        PUSH EAX
006cbc37  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cbc3d  f30f59d5                  MULSS XMM2,XMM5
006cbc41  6a09                      PUSH 0x9
006cbc43  f30f58c8                  ADDSS XMM1,XMM0
006cbc47  f30f59e5                  MULSS XMM4,XMM5
006cbc4b  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cbc4f  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cbc54  f30f595728                MULSS XMM2,dword ptr [EDI + 0x28]
006cbc59  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cbc5e  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cbc63  f30f5ce2                  SUBSS XMM4,XMM2
006cbc67  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cbc6c  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cbc71  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cbc77  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cbc7c  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cbc81  e89aced5ff                CALL 0x00428b20
006cbc86  50                        PUSH EAX
006cbc87  e8254c4200                CALL 0x00af08b1
006cbc8c  e993f8ffff                JMP 0x006cb524
006cbc91  e8ca320200                CALL 0x006eef60
006cbc96  8b7b14                    MOV EDI,dword ptr [EBX + 0x14]
006cbc99  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cbc9c  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
006cbc9f  6a00                      PUSH 0x0
006cbca1  f30f104760                MOVSS XMM0,dword ptr [EDI + 0x60]
006cbca6  f30f5801                  ADDSS XMM0,dword ptr [ECX]
006cbcaa  680cd7c500                PUSH 0xc5d70c
006cbcaf  68dcd5c500                PUSH 0xc5d5dc
006cbcb4  6a00                      PUSH 0x0
006cbcb6  50                        PUSH EAX
006cbcb7  6a00                      PUSH 0x0
006cbcb9  56                        PUSH ESI
006cbcba  ff730c                    PUSH dword ptr [EBX + 0xc]
006cbcbd  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cbcc2  8d45c8                    LEA EAX,[EBP + -0x38]
006cbcc5  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cbcca  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cbccf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cbcd5  50                        PUSH EAX
006cbcd6  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cbcdc  6a09                      PUSH 0x9
006cbcde  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cbce3  e838ced5ff                CALL 0x00428b20
006cbce8  50                        PUSH EAX
006cbce9  e8c34b4200                CALL 0x00af08b1
006cbcee  83c414                    ADD ESP,0x14
006cbcf1  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cbcf4  8d45dc                    LEA EAX,[EBP + -0x24]
006cbcf7  8d4db4                    LEA ECX,[EBP + -0x4c]
006cbcfa  50                        PUSH EAX
006cbcfb  6a00                      PUSH 0x0
006cbcfd  e81e0cd6ff                CALL 0x0042c920
006cbd02  e859320200                CALL 0x006eef60
006cbd07  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cbd0a  6a00                      PUSH 0x0
006cbd0c  680cd7c500                PUSH 0xc5d70c
006cbd11  68dcd5c500                PUSH 0xc5d5dc
006cbd16  f30f105904                MOVSS XMM3,dword ptr [ECX + 0x4]
006cbd1b  f30f1021                  MOVSS XMM4,dword ptr [ECX]
006cbd1f  0f28c3                    MOVAPS XMM0,XMM3
006cbd22  f30f5905a8a1ba00          MULSS XMM0,dword ptr [0x00baa1a8]
006cbd2a  0f28cc                    MOVAPS XMM1,XMM4
006cbd2d  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cbd30  f30f590d40a4ba00          MULSS XMM1,dword ptr [0x00baa440]
006cbd38  6a00                      PUSH 0x0
006cbd3a  f30f594728                MULSS XMM0,dword ptr [EDI + 0x28]
006cbd3f  50                        PUSH EAX
006cbd40  f30f5925a8a1ba00          MULSS XMM4,dword ptr [0x00baa1a8]
006cbd48  8d45c8                    LEA EAX,[EBP + -0x38]
006cbd4b  6a00                      PUSH 0x0
006cbd4d  f30f591d40a4ba00          MULSS XMM3,dword ptr [0x00baa440]
006cbd55  f30f5cc8                  SUBSS XMM1,XMM0
006cbd59  56                        PUSH ESI
006cbd5a  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cbd5e  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cbd63  f30f596728                MULSS XMM4,dword ptr [EDI + 0x28]
006cbd68  50                        PUSH EAX
006cbd69  8d45d0                    LEA EAX,[EBP + -0x30]
006cbd6c  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cbd71  50                        PUSH EAX
006cbd72  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cbd78  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cbd7d  f30f58e3                  ADDSS XMM4,XMM3
006cbd81  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cbd86  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cbd8b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cbd91  6a09                      PUSH 0x9
006cbd93  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cbd98  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cbd9d  e87ecdd5ff                CALL 0x00428b20
006cbda2  50                        PUSH EAX
006cbda3  e8094b4200                CALL 0x00af08b1
006cbda8  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cbdab  83c414                    ADD ESP,0x14
006cbdae  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cbdb1  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cbdb4  740a                      JZ 0x006cbdc0
006cbdb6  8906                      MOV dword ptr [ESI],EAX
006cbdb8  83c604                    ADD ESI,0x4
006cbdbb  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cbdbe  eb10                      JMP 0x006cbdd0
006cbdc0  8d45dc                    LEA EAX,[EBP + -0x24]
006cbdc3  50                        PUSH EAX
006cbdc4  56                        PUSH ESI
006cbdc5  8d4db4                    LEA ECX,[EBP + -0x4c]
006cbdc8  e8530bd6ff                CALL 0x0042c920
006cbdcd  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cbdd0  e88b310200                CALL 0x006eef60
006cbdd5  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cbdd8  6a00                      PUSH 0x0
006cbdda  680cd7c500                PUSH 0xc5d70c
006cbddf  68dcd5c500                PUSH 0xc5d5dc
006cbde4  f30f106104                MOVSS XMM4,dword ptr [ECX + 0x4]
006cbde9  f30f1011                  MOVSS XMM2,dword ptr [ECX]
006cbded  0f28cc                    MOVAPS XMM1,XMM4
006cbdf0  f30f590da8a1ba00          MULSS XMM1,dword ptr [0x00baa1a8]
006cbdf8  0f28c2                    MOVAPS XMM0,XMM2
006cbdfb  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cbdfe  f30f590540a4ba00          MULSS XMM0,dword ptr [0x00baa440]
006cbe06  6a00                      PUSH 0x0
006cbe08  f30f594f28                MULSS XMM1,dword ptr [EDI + 0x28]
006cbe0d  50                        PUSH EAX
006cbe0e  f30f5915a8a1ba00          MULSS XMM2,dword ptr [0x00baa1a8]
006cbe16  8d45c8                    LEA EAX,[EBP + -0x38]
006cbe19  6a00                      PUSH 0x0
006cbe1b  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cbe1e  f30f592540a4ba00          MULSS XMM4,dword ptr [0x00baa440]
006cbe26  f30f58c8                  ADDSS XMM1,XMM0
006cbe2a  50                        PUSH EAX
006cbe2b  f30f104760                MOVSS XMM0,dword ptr [EDI + 0x60]
006cbe30  8d45d0                    LEA EAX,[EBP + -0x30]
006cbe33  f30f5801                  ADDSS XMM0,dword ptr [ECX]
006cbe37  f30f595728                MULSS XMM2,dword ptr [EDI + 0x28]
006cbe3c  50                        PUSH EAX
006cbe3d  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cbe43  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cbe48  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cbe4d  f30f5ce2                  SUBSS XMM4,XMM2
006cbe51  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cbe56  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cbe5b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cbe61  6a09                      PUSH 0x9
006cbe63  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cbe68  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cbe6d  e8aeccd5ff                CALL 0x00428b20
006cbe72  50                        PUSH EAX
006cbe73  e8394a4200                CALL 0x00af08b1
006cbe78  83c414                    ADD ESP,0x14
006cbe7b  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cbe7e  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cbe81  740a                      JZ 0x006cbe8d
006cbe83  8906                      MOV dword ptr [ESI],EAX
006cbe85  83c604                    ADD ESI,0x4
006cbe88  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cbe8b  eb10                      JMP 0x006cbe9d
006cbe8d  8d45dc                    LEA EAX,[EBP + -0x24]
006cbe90  50                        PUSH EAX
006cbe91  56                        PUSH ESI
006cbe92  8d4db4                    LEA ECX,[EBP + -0x4c]
006cbe95  e8860ad6ff                CALL 0x0042c920
006cbe9a  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cbe9d  e8be300200                CALL 0x006eef60
006cbea2  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cbea5  6a00                      PUSH 0x0
006cbea7  680cd7c500                PUSH 0xc5d70c
006cbeac  68dcd5c500                PUSH 0xc5d5dc
006cbeb1  f30f105904                MOVSS XMM3,dword ptr [ECX + 0x4]
006cbeb6  f30f1021                  MOVSS XMM4,dword ptr [ECX]
006cbeba  0f28c3                    MOVAPS XMM0,XMM3
006cbebd  f30f590588a2ba00          MULSS XMM0,dword ptr [0x00baa288]
006cbec5  0f28cc                    MOVAPS XMM1,XMM4
006cbec8  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cbecb  f30f590deca3ba00          MULSS XMM1,dword ptr [0x00baa3ec]
006cbed3  6a00                      PUSH 0x0
006cbed5  f30f594728                MULSS XMM0,dword ptr [EDI + 0x28]
006cbeda  50                        PUSH EAX
006cbedb  f30f592588a2ba00          MULSS XMM4,dword ptr [0x00baa288]
006cbee3  8d45c8                    LEA EAX,[EBP + -0x38]
006cbee6  6a00                      PUSH 0x0
006cbee8  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cbeeb  f30f591deca3ba00          MULSS XMM3,dword ptr [0x00baa3ec]
006cbef3  f30f5cc8                  SUBSS XMM1,XMM0
006cbef7  50                        PUSH EAX
006cbef8  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cbefc  8d45d0                    LEA EAX,[EBP + -0x30]
006cbeff  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cbf04  f30f596728                MULSS XMM4,dword ptr [EDI + 0x28]
006cbf09  50                        PUSH EAX
006cbf0a  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cbf10  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cbf15  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cbf1a  f30f58e3                  ADDSS XMM4,XMM3
006cbf1e  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cbf23  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cbf28  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cbf2e  6a09                      PUSH 0x9
006cbf30  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cbf35  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cbf3a  e8e1cbd5ff                CALL 0x00428b20
006cbf3f  50                        PUSH EAX
006cbf40  e86c494200                CALL 0x00af08b1
006cbf45  83c414                    ADD ESP,0x14
006cbf48  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cbf4b  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cbf4e  740a                      JZ 0x006cbf5a
006cbf50  8906                      MOV dword ptr [ESI],EAX
006cbf52  83c604                    ADD ESI,0x4
006cbf55  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cbf58  eb10                      JMP 0x006cbf6a
006cbf5a  8d45dc                    LEA EAX,[EBP + -0x24]
006cbf5d  50                        PUSH EAX
006cbf5e  56                        PUSH ESI
006cbf5f  8d4db4                    LEA ECX,[EBP + -0x4c]
006cbf62  e8b909d6ff                CALL 0x0042c920
006cbf67  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cbf6a  e8f12f0200                CALL 0x006eef60
006cbf6f  8b4b0c                    MOV ECX,dword ptr [EBX + 0xc]
006cbf72  6a00                      PUSH 0x0
006cbf74  680cd7c500                PUSH 0xc5d70c
006cbf79  68dcd5c500                PUSH 0xc5d5dc
006cbf7e  f30f106104                MOVSS XMM4,dword ptr [ECX + 0x4]
006cbf83  f30f1011                  MOVSS XMM2,dword ptr [ECX]
006cbf87  0f28cc                    MOVAPS XMM1,XMM4
006cbf8a  f30f590d88a2ba00          MULSS XMM1,dword ptr [0x00baa288]
006cbf92  0f28c2                    MOVAPS XMM0,XMM2
006cbf95  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cbf98  f30f5905eca3ba00          MULSS XMM0,dword ptr [0x00baa3ec]
006cbfa0  6a00                      PUSH 0x0
006cbfa2  f30f594f28                MULSS XMM1,dword ptr [EDI + 0x28]
006cbfa7  50                        PUSH EAX
006cbfa8  f30f591588a2ba00          MULSS XMM2,dword ptr [0x00baa288]
006cbfb0  8d45c8                    LEA EAX,[EBP + -0x38]
006cbfb3  6a00                      PUSH 0x0
006cbfb5  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cbfb8  f30f5925eca3ba00          MULSS XMM4,dword ptr [0x00baa3ec]
006cbfc0  f30f58c8                  ADDSS XMM1,XMM0
006cbfc4  50                        PUSH EAX
006cbfc5  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cbfc9  8d45d0                    LEA EAX,[EBP + -0x30]
006cbfcc  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cbfd1  f30f595728                MULSS XMM2,dword ptr [EDI + 0x28]
006cbfd6  50                        PUSH EAX
006cbfd7  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cbfdd  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cbfe2  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cbfe7  f30f5ce2                  SUBSS XMM4,XMM2
006cbfeb  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cbff0  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cbff5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cbffb  6a09                      PUSH 0x9
006cbffd  f30f1165cc                MOVSS dword ptr [EBP + -0x34],XMM4
006cc002  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc007  e814cbd5ff                CALL 0x00428b20
006cc00c  50                        PUSH EAX
006cc00d  e89f484200                CALL 0x00af08b1
006cc012  e90df5ffff                JMP 0x006cb524
006cc017  8b430c                    MOV EAX,dword ptr [EBX + 0xc]
006cc01a  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006cc01e  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
006cc023  e8382f0200                CALL 0x006eef60
006cc028  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc02b  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc030  8b7b14                    MOV EDI,dword ptr [EBX + 0x14]
006cc033  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
006cc036  6a00                      PUSH 0x0
006cc038  680cd7c500                PUSH 0xc5d70c
006cc03d  68dcd5c500                PUSH 0xc5d5dc
006cc042  6a00                      PUSH 0x0
006cc044  50                        PUSH EAX
006cc045  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cc04a  8d45c8                    LEA EAX,[EBP + -0x38]
006cc04d  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cc051  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cc056  6a00                      PUSH 0x0
006cc058  56                        PUSH ESI
006cc059  50                        PUSH EAX
006cc05a  8d45d0                    LEA EAX,[EBP + -0x30]
006cc05d  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
006cc064  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc069  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc06e  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc073  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc079  50                        PUSH EAX
006cc07a  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc080  6a09                      PUSH 0x9
006cc082  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc087  e894cad5ff                CALL 0x00428b20
006cc08c  50                        PUSH EAX
006cc08d  e81f484200                CALL 0x00af08b1
006cc092  83c414                    ADD ESP,0x14
006cc095  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc098  8d45dc                    LEA EAX,[EBP + -0x24]
006cc09b  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc09e  50                        PUSH EAX
006cc09f  6a00                      PUSH 0x0
006cc0a1  e87a08d6ff                CALL 0x0042c920
006cc0a6  e8b52e0200                CALL 0x006eef60
006cc0ab  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc0b0  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
006cc0b7  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc0ba  6a00                      PUSH 0x0
006cc0bc  680cd7c500                PUSH 0xc5d70c
006cc0c1  68dcd5c500                PUSH 0xc5d5dc
006cc0c6  6a00                      PUSH 0x0
006cc0c8  50                        PUSH EAX
006cc0c9  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
006cc0ce  8d45c8                    LEA EAX,[EBP + -0x38]
006cc0d1  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cc0d6  f30f104760                MOVSS XMM0,dword ptr [EDI + 0x60]
006cc0db  f30f5801                  ADDSS XMM0,dword ptr [ECX]
006cc0df  6a00                      PUSH 0x0
006cc0e1  56                        PUSH ESI
006cc0e2  50                        PUSH EAX
006cc0e3  8d45d0                    LEA EAX,[EBP + -0x30]
006cc0e6  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
006cc0ed  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc0f2  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc0f7  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc0fc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc102  50                        PUSH EAX
006cc103  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc109  6a09                      PUSH 0x9
006cc10b  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc110  e80bcad5ff                CALL 0x00428b20
006cc115  50                        PUSH EAX
006cc116  e896474200                CALL 0x00af08b1
006cc11b  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc11e  83c414                    ADD ESP,0x14
006cc121  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc124  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cc127  740a                      JZ 0x006cc133
006cc129  8906                      MOV dword ptr [ESI],EAX
006cc12b  83c604                    ADD ESI,0x4
006cc12e  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cc131  eb10                      JMP 0x006cc143
006cc133  8d45dc                    LEA EAX,[EBP + -0x24]
006cc136  50                        PUSH EAX
006cc137  56                        PUSH ESI
006cc138  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc13b  e8e007d6ff                CALL 0x0042c920
006cc140  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc143  e8182e0200                CALL 0x006eef60
006cc148  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc14b  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc150  6a00                      PUSH 0x0
006cc152  680cd7c500                PUSH 0xc5d70c
006cc157  68dcd5c500                PUSH 0xc5d5dc
006cc15c  6a00                      PUSH 0x0
006cc15e  50                        PUSH EAX
006cc15f  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc164  8d45c8                    LEA EAX,[EBP + -0x38]
006cc167  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cc16b  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cc170  6a00                      PUSH 0x0
006cc172  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cc175  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
006cc17c  50                        PUSH EAX
006cc17d  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc182  8d45d0                    LEA EAX,[EBP + -0x30]
006cc185  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc18a  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc18f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc195  50                        PUSH EAX
006cc196  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc19c  6a09                      PUSH 0x9
006cc19e  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc1a3  e878c9d5ff                CALL 0x00428b20
006cc1a8  50                        PUSH EAX
006cc1a9  e803474200                CALL 0x00af08b1
006cc1ae  83c414                    ADD ESP,0x14
006cc1b1  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc1b4  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cc1b7  740a                      JZ 0x006cc1c3
006cc1b9  8906                      MOV dword ptr [ESI],EAX
006cc1bb  83c604                    ADD ESI,0x4
006cc1be  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cc1c1  eb10                      JMP 0x006cc1d3
006cc1c3  8d45dc                    LEA EAX,[EBP + -0x24]
006cc1c6  50                        PUSH EAX
006cc1c7  56                        PUSH ESI
006cc1c8  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc1cb  e85007d6ff                CALL 0x0042c920
006cc1d0  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc1d3  e8882d0200                CALL 0x006eef60
006cc1d8  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
006cc1dd  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
006cc1e4  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc1e9  e911f7ffff                JMP 0x006cb8ff
006cc1ee  8b430c                    MOV EAX,dword ptr [EBX + 0xc]
006cc1f1  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006cc1f5  f30f59056ca3ba00          MULSS XMM0,dword ptr [0x00baa36c]
006cc1fd  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
006cc202  e8592d0200                CALL 0x006eef60
006cc207  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc20a  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc20f  8b7b14                    MOV EDI,dword ptr [EBX + 0x14]
006cc212  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
006cc215  6a00                      PUSH 0x0
006cc217  680cd7c500                PUSH 0xc5d70c
006cc21c  68dcd5c500                PUSH 0xc5d5dc
006cc221  6a00                      PUSH 0x0
006cc223  50                        PUSH EAX
006cc224  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cc229  8d45c8                    LEA EAX,[EBP + -0x38]
006cc22c  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc231  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cc235  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cc23a  6a00                      PUSH 0x0
006cc23c  56                        PUSH ESI
006cc23d  50                        PUSH EAX
006cc23e  8d45d0                    LEA EAX,[EBP + -0x30]
006cc241  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc246  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc24b  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc250  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc256  50                        PUSH EAX
006cc257  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc25d  6a09                      PUSH 0x9
006cc25f  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc264  e8b7c8d5ff                CALL 0x00428b20
006cc269  50                        PUSH EAX
006cc26a  e842464200                CALL 0x00af08b1
006cc26f  83c414                    ADD ESP,0x14
006cc272  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc275  8d45dc                    LEA EAX,[EBP + -0x24]
006cc278  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc27b  50                        PUSH EAX
006cc27c  6a00                      PUSH 0x0
006cc27e  e89d06d6ff                CALL 0x0042c920
006cc283  e8d82c0200                CALL 0x006eef60
006cc288  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc28b  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc290  6a00                      PUSH 0x0
006cc292  680cd7c500                PUSH 0xc5d70c
006cc297  68dcd5c500                PUSH 0xc5d5dc
006cc29c  6a00                      PUSH 0x0
006cc29e  0f28c8                    MOVAPS XMM1,XMM0
006cc2a1  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc2a6  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cc2aa  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cc2af  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
006cc2b6  50                        PUSH EAX
006cc2b7  6a00                      PUSH 0x0
006cc2b9  56                        PUSH ESI
006cc2ba  8d45c8                    LEA EAX,[EBP + -0x38]
006cc2bd  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc2c2  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc2c7  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc2cc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc2d2  50                        PUSH EAX
006cc2d3  8d45d0                    LEA EAX,[EBP + -0x30]
006cc2d6  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
006cc2db  50                        PUSH EAX
006cc2dc  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc2e2  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cc2e7  6a09                      PUSH 0x9
006cc2e9  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc2ee  e82dc8d5ff                CALL 0x00428b20
006cc2f3  50                        PUSH EAX
006cc2f4  e8b8454200                CALL 0x00af08b1
006cc2f9  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc2fc  83c414                    ADD ESP,0x14
006cc2ff  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc302  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cc305  740a                      JZ 0x006cc311
006cc307  8906                      MOV dword ptr [ESI],EAX
006cc309  83c604                    ADD ESI,0x4
006cc30c  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cc30f  eb10                      JMP 0x006cc321
006cc311  8d45dc                    LEA EAX,[EBP + -0x24]
006cc314  50                        PUSH EAX
006cc315  56                        PUSH ESI
006cc316  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc319  e80206d6ff                CALL 0x0042c920
006cc31e  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc321  e83a2c0200                CALL 0x006eef60
006cc326  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc32b  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc32e  6a00                      PUSH 0x0
006cc330  680cd7c500                PUSH 0xc5d70c
006cc335  68dcd5c500                PUSH 0xc5d5dc
006cc33a  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cc33f  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
006cc344  6a00                      PUSH 0x0
006cc346  50                        PUSH EAX
006cc347  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc34c  8d45c8                    LEA EAX,[EBP + -0x38]
006cc34f  f30f104760                MOVSS XMM0,dword ptr [EDI + 0x60]
006cc354  f30f5801                  ADDSS XMM0,dword ptr [ECX]
006cc358  6a00                      PUSH 0x0
006cc35a  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cc35d  50                        PUSH EAX
006cc35e  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc363  8d45d0                    LEA EAX,[EBP + -0x30]
006cc366  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc36b  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc370  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc376  50                        PUSH EAX
006cc377  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc37d  6a09                      PUSH 0x9
006cc37f  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc384  e897c7d5ff                CALL 0x00428b20
006cc389  50                        PUSH EAX
006cc38a  e822454200                CALL 0x00af08b1
006cc38f  83c414                    ADD ESP,0x14
006cc392  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc395  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cc398  740a                      JZ 0x006cc3a4
006cc39a  8906                      MOV dword ptr [ESI],EAX
006cc39c  83c604                    ADD ESI,0x4
006cc39f  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cc3a2  eb10                      JMP 0x006cc3b4
006cc3a4  8d45dc                    LEA EAX,[EBP + -0x24]
006cc3a7  50                        PUSH EAX
006cc3a8  56                        PUSH ESI
006cc3a9  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc3ac  e86f05d6ff                CALL 0x0042c920
006cc3b1  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc3b4  e8a72b0200                CALL 0x006eef60
006cc3b9  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
006cc3be  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cc3c3  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc3c8  e946f3ffff                JMP 0x006cb713
006cc3cd  8b430c                    MOV EAX,dword ptr [EBX + 0xc]
006cc3d0  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006cc3d4  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
006cc3d9  e8822b0200                CALL 0x006eef60
006cc3de  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc3e1  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc3e6  8b7b14                    MOV EDI,dword ptr [EBX + 0x14]
006cc3e9  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
006cc3ec  6a00                      PUSH 0x0
006cc3ee  680cd7c500                PUSH 0xc5d70c
006cc3f3  68dcd5c500                PUSH 0xc5d5dc
006cc3f8  6a00                      PUSH 0x0
006cc3fa  50                        PUSH EAX
006cc3fb  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cc400  8d45c8                    LEA EAX,[EBP + -0x38]
006cc403  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cc407  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cc40c  6a00                      PUSH 0x0
006cc40e  56                        PUSH ESI
006cc40f  50                        PUSH EAX
006cc410  8d45d0                    LEA EAX,[EBP + -0x30]
006cc413  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
006cc41a  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc41f  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc424  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc429  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc42f  50                        PUSH EAX
006cc430  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc436  6a09                      PUSH 0x9
006cc438  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc43d  e8dec6d5ff                CALL 0x00428b20
006cc442  50                        PUSH EAX
006cc443  e869444200                CALL 0x00af08b1
006cc448  83c414                    ADD ESP,0x14
006cc44b  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc44e  8d45dc                    LEA EAX,[EBP + -0x24]
006cc451  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc454  50                        PUSH EAX
006cc455  6a00                      PUSH 0x0
006cc457  e8c404d6ff                CALL 0x0042c920
006cc45c  e8ff2a0200                CALL 0x006eef60
006cc461  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc466  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
006cc46d  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc470  6a00                      PUSH 0x0
006cc472  680cd7c500                PUSH 0xc5d70c
006cc477  68dcd5c500                PUSH 0xc5d5dc
006cc47c  6a00                      PUSH 0x0
006cc47e  50                        PUSH EAX
006cc47f  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
006cc484  8d45c8                    LEA EAX,[EBP + -0x38]
006cc487  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cc48c  f30f104760                MOVSS XMM0,dword ptr [EDI + 0x60]
006cc491  f30f5801                  ADDSS XMM0,dword ptr [ECX]
006cc495  6a00                      PUSH 0x0
006cc497  56                        PUSH ESI
006cc498  50                        PUSH EAX
006cc499  8d45d0                    LEA EAX,[EBP + -0x30]
006cc49c  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
006cc4a3  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc4a8  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc4ad  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc4b2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc4b8  50                        PUSH EAX
006cc4b9  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc4bf  6a09                      PUSH 0x9
006cc4c1  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc4c6  e855c6d5ff                CALL 0x00428b20
006cc4cb  50                        PUSH EAX
006cc4cc  e8e0434200                CALL 0x00af08b1
006cc4d1  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc4d4  83c414                    ADD ESP,0x14
006cc4d7  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc4da  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cc4dd  740a                      JZ 0x006cc4e9
006cc4df  8906                      MOV dword ptr [ESI],EAX
006cc4e1  83c604                    ADD ESI,0x4
006cc4e4  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cc4e7  eb10                      JMP 0x006cc4f9
006cc4e9  8d45dc                    LEA EAX,[EBP + -0x24]
006cc4ec  50                        PUSH EAX
006cc4ed  56                        PUSH ESI
006cc4ee  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc4f1  e82a04d6ff                CALL 0x0042c920
006cc4f6  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc4f9  e8622a0200                CALL 0x006eef60
006cc4fe  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc501  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc506  6a00                      PUSH 0x0
006cc508  680cd7c500                PUSH 0xc5d70c
006cc50d  68dcd5c500                PUSH 0xc5d5dc
006cc512  6a00                      PUSH 0x0
006cc514  50                        PUSH EAX
006cc515  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc51a  8d45c8                    LEA EAX,[EBP + -0x38]
006cc51d  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cc521  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cc526  6a00                      PUSH 0x0
006cc528  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cc52b  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
006cc532  50                        PUSH EAX
006cc533  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc538  8d45d0                    LEA EAX,[EBP + -0x30]
006cc53b  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc540  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc545  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc54b  50                        PUSH EAX
006cc54c  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc552  6a09                      PUSH 0x9
006cc554  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc559  e8c2c5d5ff                CALL 0x00428b20
006cc55e  50                        PUSH EAX
006cc55f  e84d434200                CALL 0x00af08b1
006cc564  83c414                    ADD ESP,0x14
006cc567  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc56a  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cc56d  740a                      JZ 0x006cc579
006cc56f  8906                      MOV dword ptr [ESI],EAX
006cc571  83c604                    ADD ESI,0x4
006cc574  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cc577  eb10                      JMP 0x006cc589
006cc579  8d45dc                    LEA EAX,[EBP + -0x24]
006cc57c  50                        PUSH EAX
006cc57d  56                        PUSH ESI
006cc57e  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc581  e89a03d6ff                CALL 0x0042c920
006cc586  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc589  e8d2290200                CALL 0x006eef60
006cc58e  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
006cc593  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc596  6a00                      PUSH 0x0
006cc598  680cd7c500                PUSH 0xc5d70c
006cc59d  68dcd5c500                PUSH 0xc5d5dc
006cc5a2  6a00                      PUSH 0x0
006cc5a4  50                        PUSH EAX
006cc5a5  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc5aa  8d45c8                    LEA EAX,[EBP + -0x38]
006cc5ad  f30f104760                MOVSS XMM0,dword ptr [EDI + 0x60]
006cc5b2  f30f5801                  ADDSS XMM0,dword ptr [ECX]
006cc5b6  6a00                      PUSH 0x0
006cc5b8  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cc5bb  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
006cc5c2  50                        PUSH EAX
006cc5c3  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc5c8  8d45d0                    LEA EAX,[EBP + -0x30]
006cc5cb  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc5d0  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc5d5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc5db  50                        PUSH EAX
006cc5dc  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc5e2  6a09                      PUSH 0x9
006cc5e4  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc5e9  e832c5d5ff                CALL 0x00428b20
006cc5ee  50                        PUSH EAX
006cc5ef  e8bd424200                CALL 0x00af08b1
006cc5f4  83c414                    ADD ESP,0x14
006cc5f7  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc5fa  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cc5fd  740a                      JZ 0x006cc609
006cc5ff  8906                      MOV dword ptr [ESI],EAX
006cc601  83c604                    ADD ESI,0x4
006cc604  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cc607  eb10                      JMP 0x006cc619
006cc609  8d45dc                    LEA EAX,[EBP + -0x24]
006cc60c  50                        PUSH EAX
006cc60d  56                        PUSH ESI
006cc60e  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc611  e80a03d6ff                CALL 0x0042c920
006cc616  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc619  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc61e  f30f59056ca3ba00          MULSS XMM0,dword ptr [0x00baa36c]
006cc626  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
006cc62b  e830290200                CALL 0x006eef60
006cc630  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc633  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc638  6a00                      PUSH 0x0
006cc63a  680cd7c500                PUSH 0xc5d70c
006cc63f  68dcd5c500                PUSH 0xc5d5dc
006cc644  6a00                      PUSH 0x0
006cc646  50                        PUSH EAX
006cc647  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cc64c  8d45c8                    LEA EAX,[EBP + -0x38]
006cc64f  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc654  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cc658  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cc65d  6a00                      PUSH 0x0
006cc65f  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cc662  50                        PUSH EAX
006cc663  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc668  8d45d0                    LEA EAX,[EBP + -0x30]
006cc66b  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc670  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc675  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc67b  50                        PUSH EAX
006cc67c  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc682  6a09                      PUSH 0x9
006cc684  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc689  e892c4d5ff                CALL 0x00428b20
006cc68e  50                        PUSH EAX
006cc68f  e81d424200                CALL 0x00af08b1
006cc694  83c414                    ADD ESP,0x14
006cc697  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc69a  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cc69d  740a                      JZ 0x006cc6a9
006cc69f  8906                      MOV dword ptr [ESI],EAX
006cc6a1  83c604                    ADD ESI,0x4
006cc6a4  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cc6a7  eb10                      JMP 0x006cc6b9
006cc6a9  8d45dc                    LEA EAX,[EBP + -0x24]
006cc6ac  50                        PUSH EAX
006cc6ad  56                        PUSH ESI
006cc6ae  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc6b1  e86a02d6ff                CALL 0x0042c920
006cc6b6  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc6b9  e8a2280200                CALL 0x006eef60
006cc6be  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc6c1  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc6c6  6a00                      PUSH 0x0
006cc6c8  680cd7c500                PUSH 0xc5d70c
006cc6cd  68dcd5c500                PUSH 0xc5d5dc
006cc6d2  6a00                      PUSH 0x0
006cc6d4  50                        PUSH EAX
006cc6d5  0f28c8                    MOVAPS XMM1,XMM0
006cc6d8  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc6dd  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cc6e1  8d45c8                    LEA EAX,[EBP + -0x38]
006cc6e4  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cc6e9  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
006cc6f0  6a00                      PUSH 0x0
006cc6f2  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cc6f5  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
006cc6fa  50                        PUSH EAX
006cc6fb  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc700  8d45d0                    LEA EAX,[EBP + -0x30]
006cc703  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc708  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc70d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc713  50                        PUSH EAX
006cc714  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc71a  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
006cc71f  6a09                      PUSH 0x9
006cc721  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc726  e8f5c3d5ff                CALL 0x00428b20
006cc72b  50                        PUSH EAX
006cc72c  e880414200                CALL 0x00af08b1
006cc731  83c414                    ADD ESP,0x14
006cc734  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc737  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cc73a  740a                      JZ 0x006cc746
006cc73c  8906                      MOV dword ptr [ESI],EAX
006cc73e  83c604                    ADD ESI,0x4
006cc741  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cc744  eb10                      JMP 0x006cc756
006cc746  8d45dc                    LEA EAX,[EBP + -0x24]
006cc749  50                        PUSH EAX
006cc74a  56                        PUSH ESI
006cc74b  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc74e  e8cd01d6ff                CALL 0x0042c920
006cc753  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc756  e805280200                CALL 0x006eef60
006cc75b  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
006cc760  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc763  6a00                      PUSH 0x0
006cc765  680cd7c500                PUSH 0xc5d70c
006cc76a  68dcd5c500                PUSH 0xc5d5dc
006cc76f  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cc774  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
006cc779  6a00                      PUSH 0x0
006cc77b  50                        PUSH EAX
006cc77c  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc781  8d45c8                    LEA EAX,[EBP + -0x38]
006cc784  f30f104760                MOVSS XMM0,dword ptr [EDI + 0x60]
006cc789  f30f5801                  ADDSS XMM0,dword ptr [ECX]
006cc78d  6a00                      PUSH 0x0
006cc78f  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cc792  50                        PUSH EAX
006cc793  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
006cc798  8d45d0                    LEA EAX,[EBP + -0x30]
006cc79b  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc7a0  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc7a5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc7ab  50                        PUSH EAX
006cc7ac  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc7b2  6a09                      PUSH 0x9
006cc7b4  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
006cc7b9  e862c3d5ff                CALL 0x00428b20
006cc7be  50                        PUSH EAX
006cc7bf  e8ed404200                CALL 0x00af08b1
006cc7c4  83c414                    ADD ESP,0x14
006cc7c7  8945dc                    MOV dword ptr [EBP + -0x24],EAX
006cc7ca  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cc7cd  740a                      JZ 0x006cc7d9
006cc7cf  8906                      MOV dword ptr [ESI],EAX
006cc7d1  83c604                    ADD ESI,0x4
006cc7d4  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cc7d7  eb10                      JMP 0x006cc7e9
006cc7d9  8d45dc                    LEA EAX,[EBP + -0x24]
006cc7dc  50                        PUSH EAX
006cc7dd  56                        PUSH ESI
006cc7de  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc7e1  e83a01d6ff                CALL 0x0042c920
006cc7e6  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc7e9  e872270200                CALL 0x006eef60
006cc7ee  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
006cc7f3  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cc7f8  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
006cc7fd  e911efffff                JMP 0x006cb713
006cc802  8b430c                    MOV EAX,dword ptr [EBX + 0xc]
006cc805  f30f1015a8a7ba00          MOVSS XMM2,dword ptr [0x00baa7a8]
006cc80d  8b7b14                    MOV EDI,dword ptr [EBX + 0x14]
006cc810  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
006cc815  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
006cc81d  f30f104f18                MOVSS XMM1,dword ptr [EDI + 0x18]
006cc822  f30f2cc8                  CVTTSS2SI ECX,XMM0
006cc826  894de0                    MOV dword ptr [EBP + -0x20],ECX
006cc829  660f6ec1                  MOVD XMM0,ECX
006cc82d  0f5bc0                    CVTDQ2PS XMM0,XMM0
006cc830  f30f5ed0                  DIVSS XMM2,XMM0
006cc834  f30f1000                  MOVSS XMM0,dword ptr [EAX]
006cc838  f30f1155d4                MOVSS dword ptr [EBP + -0x2c],XMM2
006cc83d  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
006cc842  85c9                      TEST ECX,ECX
006cc844  0f8e65010000              JLE 0x006cc9af
006cc84a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
006cc850  0f28c2                    MOVAPS XMM0,XMM2
006cc853  f30f58c8                  ADDSS XMM1,XMM0
006cc857  0f28c1                    MOVAPS XMM0,XMM1
006cc85a  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
006cc85f  e8dc0cd5ff                CALL 0x0041d540
006cc864  f30f5945e4                MULSS XMM0,dword ptr [EBP + -0x1c]
006cc869  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
006cc86e  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
006cc873  f30f1045dc                MOVSS XMM0,dword ptr [EBP + -0x24]
006cc878  e8a30cd5ff                CALL 0x0041d520
006cc87d  0f28c8                    MOVAPS XMM1,XMM0
006cc880  f30f104770                MOVSS XMM0,dword ptr [EDI + 0x70]
006cc885  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
006cc88c  f30f594de4                MULSS XMM1,dword ptr [EBP + -0x1c]
006cc891  9f                        LAHF
006cc892  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
006cc897  f30f114dcc                MOVSS dword ptr [EBP + -0x34],XMM1
006cc89c  f6c444                    TEST AH,0x44
006cc89f  7a12                      JP 0x006cc8b3
006cc8a1  f30f104774                MOVSS XMM0,dword ptr [EDI + 0x74]
006cc8a6  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
006cc8ad  9f                        LAHF
006cc8ae  f6c444                    TEST AH,0x44
006cc8b1  7b64                      JNP 0x006cc917
006cc8b3  0f28c1                    MOVAPS XMM0,XMM1
006cc8b6  f30f59c1                  MULSS XMM0,XMM1
006cc8ba  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
006cc8bf  f30f59c9                  MULSS XMM1,XMM1
006cc8c3  f30f58c1                  ADDSS XMM0,XMM1
006cc8c7  e88491d6ff                CALL 0x00435a50
006cc8cc  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
006cc8d3  7624                      JBE 0x006cc8f9
006cc8d5  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
006cc8dd  f30f5ec8                  DIVSS XMM1,XMM0
006cc8e1  0f28c1                    MOVAPS XMM0,XMM1
006cc8e4  f30f5945e8                MULSS XMM0,dword ptr [EBP + -0x18]
006cc8e9  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
006cc8ee  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
006cc8f3  f30f59c1                  MULSS XMM0,XMM1
006cc8f7  eb05                      JMP 0x006cc8fe
006cc8f9  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
006cc8fe  f30f104dd8                MOVSS XMM1,dword ptr [EBP + -0x28]
006cc903  f30f594774                MULSS XMM0,dword ptr [EDI + 0x74]
006cc908  f30f594de8                MULSS XMM1,dword ptr [EBP + -0x18]
006cc90d  f30f58c1                  ADDSS XMM0,XMM1
006cc911  0f2f4778                  COMISS XMM0,dword ptr [EDI + 0x78]
006cc915  767f                      JBE 0x006cc996
006cc917  e844260200                CALL 0x006eef60
006cc91c  8b4b08                    MOV ECX,dword ptr [EBX + 0x8]
006cc91f  6a00                      PUSH 0x0
006cc921  680cd7c500                PUSH 0xc5d70c
006cc926  68dcd5c500                PUSH 0xc5d5dc
006cc92b  f30f1001                  MOVSS XMM0,dword ptr [ECX]
006cc92f  f30f584760                ADDSS XMM0,dword ptr [EDI + 0x60]
006cc934  6a00                      PUSH 0x0
006cc936  50                        PUSH EAX
006cc937  6a00                      PUSH 0x0
006cc939  ff75ec                    PUSH dword ptr [EBP + -0x14]
006cc93c  8d45c8                    LEA EAX,[EBP + -0x38]
006cc93f  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
006cc944  f30f104764                MOVSS XMM0,dword ptr [EDI + 0x64]
006cc949  f30f584104                ADDSS XMM0,dword ptr [ECX + 0x4]
006cc94e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
006cc954  50                        PUSH EAX
006cc955  8d45c0                    LEA EAX,[EBP + -0x40]
006cc958  50                        PUSH EAX
006cc959  ffb794000000              PUSH dword ptr [EDI + 0x94]
006cc95f  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
006cc964  6a09                      PUSH 0x9
006cc966  e8b5c1d5ff                CALL 0x00428b20
006cc96b  50                        PUSH EAX
006cc96c  e8403f4200                CALL 0x00af08b1
006cc971  83c414                    ADD ESP,0x14
006cc974  8945d8                    MOV dword ptr [EBP + -0x28],EAX
006cc977  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
006cc97a  740a                      JZ 0x006cc986
006cc97c  8906                      MOV dword ptr [ESI],EAX
006cc97e  83c604                    ADD ESI,0x4
006cc981  8975b8                    MOV dword ptr [EBP + -0x48],ESI
006cc984  eb10                      JMP 0x006cc996
006cc986  8d45d8                    LEA EAX,[EBP + -0x28]
006cc989  50                        PUSH EAX
006cc98a  56                        PUSH ESI
006cc98b  8d4db4                    LEA ECX,[EBP + -0x4c]
006cc98e  e88dffd5ff                CALL 0x0042c920
006cc993  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cc996  836de001                  SUB dword ptr [EBP + -0x20],0x1
006cc99a  f30f104ddc                MOVSS XMM1,dword ptr [EBP + -0x24]
006cc99f  f30f1055d4                MOVSS XMM2,dword ptr [EBP + -0x2c]
006cc9a4  0f85a6feffff              JNZ 0x006cc850
006cc9aa  eb03                      JMP 0x006cc9af
006cc9ac  8b7b14                    MOV EDI,dword ptr [EBX + 0x14]
006cc9af  8bd6                      MOV EDX,ESI
006cc9b1  33c9                      XOR ECX,ECX
006cc9b3  2b55b4                    SUB EDX,dword ptr [EBP + -0x4c]
006cc9b6  c1fa02                    SAR EDX,0x2
006cc9b9  894ddc                    MOV dword ptr [EBP + -0x24],ECX
006cc9bc  8955e4                    MOV dword ptr [EBP + -0x1c],EDX
006cc9bf  85d2                      TEST EDX,EDX
006cc9c1  7426                      JZ 0x006cc9e9
006cc9c3  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006cc9c6  833c8800                  CMP dword ptr [EAX + ECX*0x4],0x0
006cc9ca  7515                      JNZ 0x006cc9e1
006cc9cc  68e876b600                PUSH 0xb676e8
006cc9d1  6a10                      PUSH 0x10
006cc9d3  e8e8483400                CALL 0x00a112c0
006cc9d8  8b55e4                    MOV EDX,dword ptr [EBP + -0x1c]
006cc9db  83c408                    ADD ESP,0x8
006cc9de  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
006cc9e1  41                        INC ECX
006cc9e2  894ddc                    MOV dword ptr [EBP + -0x24],ECX
006cc9e5  3bca                      CMP ECX,EDX
006cc9e7  72da                      JC 0x006cc9c3
006cc9e9  80bf9800000000            CMP byte ptr [EDI + 0x98],0x0
006cc9f0  0f8503010000              JNZ 0x006ccaf9
006cc9f6  8b4310                    MOV EAX,dword ptr [EBX + 0x10]
006cc9f9  83f806                    CMP EAX,0x6
006cc9fc  0f84f7000000              JZ 0x006ccaf9
006cca02  83f807                    CMP EAX,0x7
006cca05  0f84ee000000              JZ 0x006ccaf9
006cca0b  83f808                    CMP EAX,0x8
006cca0e  0f84e5000000              JZ 0x006ccaf9
006cca14  83f809                    CMP EAX,0x9
006cca17  0f84dc000000              JZ 0x006ccaf9
006cca1d  85d2                      TEST EDX,EDX
006cca1f  7437                      JZ 0x006cca58
006cca21  33f6                      XOR ESI,ESI
006cca23  0f1f4000                  NOP dword ptr [EAX]
006cca27  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
006cca30  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
006cca33  8b04b1                    MOV EAX,dword ptr [ECX + ESI*0x4]
006cca36  c78014040000000040c0      MOV dword ptr [EAX + 0x414],0xc0400000
006cca40  8b04b1                    MOV EAX,dword ptr [ECX + ESI*0x4]
006cca43  46                        INC ESI
006cca44  c78018040000cdcccc3d      MOV dword ptr [EAX + 0x418],0x3dcccccd
006cca4e  3bf2                      CMP ESI,EDX
006cca50  72de                      JC 0x006cca30
006cca52  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006cca55  8b4310                    MOV EAX,dword ptr [EBX + 0x10]
006cca58  83f802                    CMP EAX,0x2
006cca5b  740e                      JZ 0x006cca6b
006cca5d  83f804                    CMP EAX,0x4
006cca60  7409                      JZ 0x006cca6b
006cca62  83f805                    CMP EAX,0x5
006cca65  0f858e000000              JNZ 0x006ccaf9
006cca6b  85d2                      TEST EDX,EDX
006cca6d  0f84d3020000              JZ 0x006ccd46
006cca73  f30f101d80a2ba00          MOVSS XMM3,dword ptr [0x00baa280]
006cca7b  33f6                      XOR ESI,ESI
006cca7d  f30f1025b0a4ba00          MOVSS XMM4,dword ptr [0x00baa4b0]
006cca85  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
006cca8d  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
006cca90  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006cca93  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
006cca96  46                        INC ESI
006cca97  f30f108014040000          MOVSS XMM0,dword ptr [EAX + 0x414]
006cca9f  f30f5cc5                  SUBSS XMM0,XMM5
006ccaa3  f30f118014040000          MOVSS dword ptr [EAX + 0x414],XMM0
006ccaab  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
006ccab3  f30f109160030000          MOVSS XMM2,dword ptr [ECX + 0x360]
006ccabb  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
006ccac3  f30f59c4                  MULSS XMM0,XMM4
006ccac7  f30f59d3                  MULSS XMM2,XMM3
006ccacb  f30f59cc                  MULSS XMM1,XMM4
006ccacf  f30f58d0                  ADDSS XMM2,XMM0
006ccad3  f30f108164030000          MOVSS XMM0,dword ptr [ECX + 0x364]
006ccadb  f30f59c3                  MULSS XMM0,XMM3
006ccadf  f30f119060030000          MOVSS dword ptr [EAX + 0x360],XMM2
006ccae7  f30f58c1                  ADDSS XMM0,XMM1
006ccaeb  f30f118064030000          MOVSS dword ptr [EAX + 0x364],XMM0
006ccaf3  3bf2                      CMP ESI,EDX
006ccaf5  7299                      JC 0x006cca90
006ccaf7  eb10                      JMP 0x006ccb09
006ccaf9  85d2                      TEST EDX,EDX
006ccafb  0f8445020000              JZ 0x006ccd46
006ccb01  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
006ccb09  33d2                      XOR EDX,EDX
006ccb0b  8955e8                    MOV dword ptr [EBP + -0x18],EDX
006ccb0e  6690                      NOP
006ccb10  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
006ccb13  0f57c9                    XORPS XMM1,XMM1
006ccb16  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
006ccb1b  8b0c91                    MOV ECX,dword ptr [ECX + EDX*0x4]
006ccb1e  f30f588110040000          ADDSS XMM0,dword ptr [ECX + 0x410]
006ccb26  f30f118110040000          MOVSS dword ptr [ECX + 0x410],XMM0
006ccb2e  f30f104708                MOVSS XMM0,dword ptr [EDI + 0x8]
006ccb33  f30f588114040000          ADDSS XMM0,dword ptr [ECX + 0x414]
006ccb3b  f30f118114040000          MOVSS dword ptr [ECX + 0x414],XMM0
006ccb43  f30f108118040000          MOVSS XMM0,dword ptr [ECX + 0x418]
006ccb4b  f30f58470c                ADDSS XMM0,dword ptr [EDI + 0xc]
006ccb50  f30f118118040000          MOVSS dword ptr [ECX + 0x418],XMM0
006ccb58  8b4714                    MOV EAX,dword ptr [EDI + 0x14]
006ccb5b  898120040000              MOV dword ptr [ECX + 0x420],EAX
006ccb61  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccb64  f30f10879c000000          MOVSS XMM0,dword ptr [EDI + 0x9c]
006ccb6c  0f2fc8                    COMISS XMM1,XMM0
006ccb6f  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
006ccb72  8b01                      MOV EAX,dword ptr [ECX]
006ccb74  761f                      JBE 0x006ccb95
006ccb76  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
006ccb7b  0f5ac0                    CVTPS2PD XMM0,XMM0
006ccb7e  660f2f05e8a5ba00          COMISD XMM0,qword ptr [0x00baa5e8]
006ccb86  760a                      JBE 0x006ccb92
006ccb88  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
006ccb90  eb03                      JMP 0x006ccb95
006ccb92  0f28c5                    MOVAPS XMM0,XMM5
006ccb95  51                        PUSH ECX
006ccb96  f30f110424                MOVSS dword ptr [ESP],XMM0
006ccb9b  ff5040                    CALL dword ptr [EAX + 0x40]
006ccb9e  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
006ccba1  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccba4  6a01                      PUSH 0x1
006ccba6  6a00                      PUSH 0x0
006ccba8  68ff000000                PUSH 0xff
006ccbad  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
006ccbb0  6aff                      PUSH -0x1
006ccbb2  f30f108960030000          MOVSS XMM1,dword ptr [ECX + 0x360]
006ccbba  f30f109164030000          MOVSS XMM2,dword ptr [ECX + 0x364]
006ccbc2  f30f594f10                MULSS XMM1,dword ptr [EDI + 0x10]
006ccbc7  f30f595710                MULSS XMM2,dword ptr [EDI + 0x10]
006ccbcc  f30f118960030000          MOVSS dword ptr [ECX + 0x360],XMM1
006ccbd4  f30f119164030000          MOVSS dword ptr [ECX + 0x364],XMM2
006ccbdc  8b4758                    MOV EAX,dword ptr [EDI + 0x58]
006ccbdf  098138040000              OR dword ptr [ECX + 0x438],EAX
006ccbe5  8b475c                    MOV EAX,dword ptr [EDI + 0x5c]
006ccbe8  09813c040000              OR dword ptr [ECX + 0x43c],EAX
006ccbee  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccbf1  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
006ccbf4  8d572c                    LEA EDX,[EDI + 0x2c]
006ccbf7  52                        PUSH EDX
006ccbf8  8b01                      MOV EAX,dword ptr [ECX]
006ccbfa  ff503c                    CALL dword ptr [EAX + 0x3c]
006ccbfd  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
006ccc00  f30f104768                MOVSS XMM0,dword ptr [EDI + 0x68]
006ccc05  f30f104f6c                MOVSS XMM1,dword ptr [EDI + 0x6c]
006ccc0a  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccc0d  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
006ccc10  f30f118134030000          MOVSS dword ptr [ECX + 0x334],XMM0
006ccc18  f30f118938030000          MOVSS dword ptr [ECX + 0x338],XMM1
006ccc20  8b471c                    MOV EAX,dword ptr [EDI + 0x1c]
006ccc23  898124040000              MOV dword ptr [ECX + 0x424],EAX
006ccc29  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccc2c  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
006ccc2f  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
006ccc32  898128040000              MOV dword ptr [ECX + 0x428],EAX
006ccc38  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccc3b  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
006ccc3e  8b4724                    MOV EAX,dword ptr [EDI + 0x24]
006ccc41  89812c040000              MOV dword ptr [ECX + 0x42c],EAX
006ccc47  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccc4a  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
006ccc4d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
006ccc50  898148040000              MOV dword ptr [ECX + 0x448],EAX
006ccc56  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccc59  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
006ccc5c  8b8780000000              MOV EAX,dword ptr [EDI + 0x80]
006ccc62  098150040000              OR dword ptr [ECX + 0x450],EAX
006ccc68  8b8784000000              MOV EAX,dword ptr [EDI + 0x84]
006ccc6e  098154040000              OR dword ptr [ECX + 0x454],EAX
006ccc74  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccc77  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
006ccc7a  8b8788000000              MOV EAX,dword ptr [EDI + 0x88]
006ccc80  898158040000              MOV dword ptr [ECX + 0x458],EAX
006ccc86  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccc89  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
006ccc8c  8b878c000000              MOV EAX,dword ptr [EDI + 0x8c]
006ccc92  89815c040000              MOV dword ptr [ECX + 0x45c],EAX
006ccc98  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccc9b  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
006ccc9e  8a87a4000000              MOV AL,byte ptr [EDI + 0xa4]
006ccca4  888140040000              MOV byte ptr [ECX + 0x440],AL
006cccaa  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
006cccad  f30f108790000000          MOVSS XMM0,dword ptr [EDI + 0x90]
006cccb5  f30f5c4764                SUBSS XMM0,dword ptr [EDI + 0x64]
006cccba  8b0491                    MOV EAX,dword ptr [ECX + EDX*0x4]
006cccbd  f30f118058030000          MOVSS dword ptr [EAX + 0x358],XMM0
006cccc5  8b0491                    MOV EAX,dword ptr [ECX + EDX*0x4]
006cccc8  f30f100530aeba00          MOVSS XMM0,dword ptr [0x00baae30]
006cccd0  8945e8                    MOV dword ptr [EBP + -0x18],EAX
006cccd3  0f2f8010040000            COMISS XMM0,dword ptr [EAX + 0x410]
006cccda  7626                      JBE 0x006ccd02
006cccdc  8945e8                    MOV dword ptr [EBP + -0x18],EAX
006cccdf  8b8038040000              MOV EAX,dword ptr [EAX + 0x438]
006ccce5  2500000200                AND EAX,0x20000
006cccea  83c800                    OR EAX,0x0
006ccced  7513                      JNZ 0x006ccd02
006cccef  8b0491                    MOV EAX,dword ptr [ECX + EDX*0x4]
006cccf2  c7808801000000000000      MOV dword ptr [EAX + 0x188],0x0
006cccfc  8b0491                    MOV EAX,dword ptr [ECX + EDX*0x4]
006cccff  8945e8                    MOV dword ptr [EBP + -0x18],EAX
006ccd02  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
006ccd05  42                        INC EDX
006ccd06  8b87a0000000              MOV EAX,dword ptr [EDI + 0xa0]
006ccd0c  f30f102d54a4ba00          MOVSS XMM5,dword ptr [0x00baa454]
006ccd14  8955e8                    MOV dword ptr [EBP + -0x18],EDX
006ccd17  898170040000              MOV dword ptr [ECX + 0x470],EAX
006ccd1d  3b55e4                    CMP EDX,dword ptr [EBP + -0x1c]
006ccd20  0f82eafdffff              JC 0x006ccb10
006ccd26  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
006ccd29  33ff                      XOR EDI,EDI
006ccd2b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
006ccd30  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccd33  8bce                      MOV ECX,ESI
006ccd35  ff34b8                    PUSH dword ptr [EAX + EDI*0x4]
006ccd38  e863e5ffff                CALL 0x006cb2a0
006ccd3d  47                        INC EDI
006ccd3e  3b7de4                    CMP EDI,dword ptr [EBP + -0x1c]
006ccd41  72ed                      JC 0x006ccd30
006ccd43  8b75b8                    MOV ESI,dword ptr [EBP + -0x48]
006ccd46  3975b4                    CMP dword ptr [EBP + -0x4c],ESI
006ccd49  7504                      JNZ 0x006ccd4f
006ccd4b  33f6                      XOR ESI,ESI
006ccd4d  eb05                      JMP 0x006ccd54
006ccd4f  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
006ccd52  8b30                      MOV ESI,dword ptr [EAX]
006ccd54  8b55b4                    MOV EDX,dword ptr [EBP + -0x4c]
006ccd57  85d2                      TEST EDX,EDX
006ccd59  7432                      JZ 0x006ccd8d
006ccd5b  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
006ccd5e  8bc2                      MOV EAX,EDX
006ccd60  2bca                      SUB ECX,EDX
006ccd62  83e1fc                    AND ECX,0xfffffffc
006ccd65  81f900100000              CMP ECX,0x1000
006ccd6b  7216                      JC 0x006ccd83
006ccd6d  8b52fc                    MOV EDX,dword ptr [EDX + -0x4]
006ccd70  83c123                    ADD ECX,0x23
006ccd73  2bc2                      SUB EAX,EDX
006ccd75  83c0fc                    ADD EAX,-0x4
006ccd78  83f81f                    CMP EAX,0x1f
006ccd7b  7606                      JBE 0x006ccd83
006ccd7d  ff159488b100              CALL dword ptr [0x00b18894]
006ccd83  51                        PUSH ECX
006ccd84  52                        PUSH EDX
006ccd85  e8d2234200                CALL 0x00aef15c
006ccd8a  83c408                    ADD ESP,0x8
006ccd8d  8bc6                      MOV EAX,ESI
006ccd8f  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
006ccd92  64890d00000000            MOV dword ptr FS:[0x0],ECX
006ccd99  59                        POP ECX
006ccd9a  5f                        POP EDI
006ccd9b  5e                        POP ESI
006ccd9c  8be5                      MOV ESP,EBP
006ccd9e  5d                        POP EBP
006ccd9f  8be3                      MOV ESP,EBX
006ccda1  5b                        POP EBX
006ccda2  c21000                    RET 0x10
