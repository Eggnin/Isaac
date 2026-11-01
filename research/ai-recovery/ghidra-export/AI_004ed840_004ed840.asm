; J460 NPC AI 0x004ed840 AI_004ed840
; types=885
; identities=885.0.0,885.1.0,885.10.0
; entry=004ed840
004ed840  53                        PUSH EBX
004ed841  8bdc                      MOV EBX,ESP
004ed843  83ec08                    SUB ESP,0x8
004ed846  83e4f8                    AND ESP,0xfffffff8
004ed849  83c404                    ADD ESP,0x4
004ed84c  55                        PUSH EBP
004ed84d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004ed850  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004ed854  8bec                      MOV EBP,ESP
004ed856  6aff                      PUSH -0x1
004ed858  68463eaf00                PUSH 0xaf3e46
004ed85d  64a100000000              MOV EAX,FS:[0x0]
004ed863  50                        PUSH EAX
004ed864  53                        PUSH EBX
004ed865  81ec28010000              SUB ESP,0x128
004ed86b  a1b493bf00                MOV EAX,[0x00bf93b4]
004ed870  33c5                      XOR EAX,EBP
004ed872  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004ed875  56                        PUSH ESI
004ed876  57                        PUSH EDI
004ed877  50                        PUSH EAX
004ed878  8d45f4                    LEA EAX,[EBP + -0xc]
004ed87b  64a300000000              MOV FS:[0x0],EAX
004ed881  8bf9                      MOV EDI,ECX
004ed883  a17816c700                MOV EAX,[0x00c71678]
004ed888  f30f2c97a4030000          CVTTSS2SI EDX,dword ptr [EDI + 0x3a4]
004ed890  c6850bffffff01            MOV byte ptr [EBP + 0xffffff0b],0x1
004ed897  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004ed89d  89b50cffffff              MOV dword ptr [EBP + 0xffffff0c],ESI
004ed8a3  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004ed8ab  2bd0                      SUB EDX,EAX
004ed8ad  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004ed8b3  2500000020                AND EAX,0x20000000
004ed8b8  8995fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EDX
004ed8be  83c800                    OR EAX,0x0
004ed8c1  7507                      JNZ 0x004ed8ca
004ed8c3  c6850bffffff00            MOV byte ptr [EBP + 0xffffff0b],0x0
004ed8ca  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
004ed8cd  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004ed8d3  83f90a                    CMP ECX,0xa
004ed8d6  0f85d7060000              JNZ 0x004edfb3
004ed8dc  83f808                    CMP EAX,0x8
004ed8df  0f8787030000              JA 0x004edc6c
004ed8e5  ff248544fb4e00            JMP dword ptr [EAX*0x4 + 0x4efb44]
004ed8ec  6a01                      PUSH 0x1
004ed8ee  8bcf                      MOV ECX,EDI
004ed8f0  e8bb2b1d00                CALL 0x006c04b0
004ed8f5  6a01                      PUSH 0x1
004ed8f7  6898d5b100                PUSH 0xb1d598
004ed8fc  8d4f48                    LEA ECX,[EDI + 0x48]
004ed8ff  e8ccccf1ff                CALL 0x0040a5d0
004ed904  84c0                      TEST AL,AL
004ed906  740f                      JZ 0x004ed917
004ed908  8d4f78                    LEA ECX,[EDI + 0x78]
004ed90b  e8a0c8f1ff                CALL 0x0040a1b0
004ed910  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004ed917  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
004ed91d  83e1fb                    AND ECX,0xfffffffb
004ed920  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
004ed927  83c911                    OR ECX,0x11
004ed92a  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
004ed931  898f68010000              MOV dword ptr [EDI + 0x168],ECX
004ed937  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004ed93d  898734030000              MOV dword ptr [EDI + 0x334],EAX
004ed943  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004ed949  898738030000              MOV dword ptr [EDI + 0x338],EAX
004ed94f  c787100400005a000000      MOV dword ptr [EDI + 0x410],0x5a
004ed959  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004ed963  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004ed96d  e9b3210000                JMP 0x004efb25
004ed972  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
004ed97a  8d873c030000              LEA EAX,[EDI + 0x33c]
004ed980  6aff                      PUSH -0x1
004ed982  50                        PUSH EAX
004ed983  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004ed989  8d8e18120000              LEA ECX,[ESI + 0x1218]
004ed98f  50                        PUSH EAX
004ed990  e8fbcdf2ff                CALL 0x0041a790
004ed995  33f6                      XOR ESI,ESI
004ed997  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004ed99e  39b5d8feffff              CMP dword ptr [EBP + 0xfffffed8],ESI
004ed9a4  0f86b4000000              JBE 0x004eda5e
004ed9aa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004ed9b0  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
004ed9b6  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
004ed9b9  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
004ed9bc  83f801                    CMP EAX,0x1
004ed9bf  740a                      JZ 0x004ed9cb
004ed9c1  83c0f6                    ADD EAX,-0xa
004ed9c4  3ddd030000                CMP EAX,0x3dd
004ed9c9  770c                      JA 0x004ed9d7
004ed9cb  51                        PUSH ECX
004ed9cc  8bcf                      MOV ECX,EDI
004ed9ce  e88da31e00                CALL 0x006d7d60
004ed9d3  84c0                      TEST AL,AL
004ed9d5  750b                      JNZ 0x004ed9e2
004ed9d7  46                        INC ESI
004ed9d8  3bb5d8feffff              CMP ESI,dword ptr [EBP + 0xfffffed8]
004ed9de  72d0                      JC 0x004ed9b0
004ed9e0  eb7c                      JMP 0x004eda5e
004ed9e2  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004ed9ec  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004ed9ef  85f6                      TEST ESI,ESI
004ed9f1  744a                      JZ 0x004eda3d
004ed9f3  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004ed9f7  8bc6                      MOV EAX,ESI
004ed9f9  7202                      JC 0x004ed9fd
004ed9fb  8b06                      MOV EAX,dword ptr [ESI]
004ed9fd  b95409b600                MOV ECX,0xb60954
004eda02  8a10                      MOV DL,byte ptr [EAX]
004eda04  3a11                      CMP DL,byte ptr [ECX]
004eda06  751a                      JNZ 0x004eda22
004eda08  84d2                      TEST DL,DL
004eda0a  7412                      JZ 0x004eda1e
004eda0c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004eda0f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004eda12  750e                      JNZ 0x004eda22
004eda14  83c002                    ADD EAX,0x2
004eda17  83c102                    ADD ECX,0x2
004eda1a  84d2                      TEST DL,DL
004eda1c  75e4                      JNZ 0x004eda02
004eda1e  33c0                      XOR EAX,EAX
004eda20  eb05                      JMP 0x004eda27
004eda22  1bc0                      SBB EAX,EAX
004eda24  83c801                    OR EAX,0x1
004eda27  85c0                      TEST EAX,EAX
004eda29  7512                      JNZ 0x004eda3d
004eda2b  384634                    CMP byte ptr [ESI + 0x34],AL
004eda2e  742e                      JZ 0x004eda5e
004eda30  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004eda36  8d7748                    LEA ESI,[EDI + 0x48]
004eda39  7523                      JNZ 0x004eda5e
004eda3b  eb03                      JMP 0x004eda40
004eda3d  8d7748                    LEA ESI,[EDI + 0x48]
004eda40  6a01                      PUSH 0x1
004eda42  685409b600                PUSH 0xb60954
004eda47  8bce                      MOV ECX,ESI
004eda49  e882cbf1ff                CALL 0x0040a5d0
004eda4e  84c0                      TEST AL,AL
004eda50  740c                      JZ 0x004eda5e
004eda52  8d4e30                    LEA ECX,[ESI + 0x30]
004eda55  e856c7f1ff                CALL 0x0040a1b0
004eda5a  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004eda5e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004eda65  80bdccfeffff00            CMP byte ptr [EBP + 0xfffffecc],0x0
004eda6c  0f85f4010000              JNZ 0x004edc66
004eda72  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
004eda79  8b95d0feffff              MOV EDX,dword ptr [EBP + 0xfffffed0]
004eda7f  b101                      MOV CL,0x1
004eda81  6a00                      PUSH 0x0
004eda83  6a00                      PUSH 0x0
004eda85  e8266e5700                CALL 0x00a648b0
004eda8a  83c408                    ADD ESP,0x8
004eda8d  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004eda94  e9cd010000                JMP 0x004edc66
004eda99  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004eda9d  0f84c9010000              JZ 0x004edc6c
004edaa3  68b0d3b100                PUSH 0xb1d3b0
004edaa8  8d4f78                    LEA ECX,[EDI + 0x78]
004edaab  e820d3f1ff                CALL 0x0040add0
004edab0  84c0                      TEST AL,AL
004edab2  0f84ae010000              JZ 0x004edc66
004edab8  51                        PUSH ECX
004edab9  c704240000803f            MOV dword ptr [ESP],0x3f800000
004edac0  6a00                      PUSH 0x0
004edac2  6a02                      PUSH 0x2
004edac4  51                        PUSH ECX
004edac5  c704240000803f            MOV dword ptr [ESP],0x3f800000
004edacc  8bcf                      MOV ECX,EDI
004edace  68f4010000                PUSH 0x1f4
004edad3  e8c8901e00                CALL 0x006d6ba0
004edad8  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
004edae0  8d873c030000              LEA EAX,[EDI + 0x33c]
004edae6  f30f581d1ca8ba00          ADDSS XMM3,dword ptr [0x00baa81c]
004edaee  f30f100db4acba00          MOVSS XMM1,dword ptr [0x00baacb4]
004edaf6  8d8e18120000              LEA ECX,[ESI + 0x1218]
004edafc  6a28                      PUSH 0x28
004edafe  50                        PUSH EAX
004edaff  8d85ccfeffff              LEA EAX,[EBP + 0xfffffecc]
004edb05  c785e8feffff00000000      MOV dword ptr [EBP + 0xfffffee8],0x0
004edb0f  50                        PUSH EAX
004edb10  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
004edb18  e873ccf2ff                CALL 0x0041a790
004edb1d  33c9                      XOR ECX,ECX
004edb1f  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
004edb26  898df0feffff              MOV dword ptr [EBP + 0xfffffef0],ECX
004edb2c  398dd8feffff              CMP dword ptr [EBP + 0xfffffed8],ECX
004edb32  0f86bf000000              JBE 0x004edbf7
004edb38  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004edb40  8b85d0feffff              MOV EAX,dword ptr [EBP + 0xfffffed0]
004edb46  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004edb49  8bcf                      MOV ECX,EDI
004edb4b  56                        PUSH ESI
004edb4c  e80fa21e00                CALL 0x006d7d60
004edb51  84c0                      TEST AL,AL
004edb53  7449                      JZ 0x004edb9e
004edb55  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004edb5d  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004edb65  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
004edb6d  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
004edb75  f30f59c0                  MULSS XMM0,XMM0
004edb79  f30f59c9                  MULSS XMM1,XMM1
004edb7d  f30f58c8                  ADDSS XMM1,XMM0
004edb81  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004edb89  0f2fc1                    COMISS XMM0,XMM1
004edb8c  7610                      JBE 0x004edb9e
004edb8e  89b5e8feffff              MOV dword ptr [EBP + 0xfffffee8],ESI
004edb94  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
004edb9c  eb06                      JMP 0x004edba4
004edb9e  8bb5e8feffff              MOV ESI,dword ptr [EBP + 0xfffffee8]
004edba4  8b8df0feffff              MOV ECX,dword ptr [EBP + 0xfffffef0]
004edbaa  41                        INC ECX
004edbab  898df0feffff              MOV dword ptr [EBP + 0xfffffef0],ECX
004edbb1  3b8dd8feffff              CMP ECX,dword ptr [EBP + 0xfffffed8]
004edbb7  7287                      JC 0x004edb40
004edbb9  85f6                      TEST ESI,ESI
004edbbb  743c                      JZ 0x004edbf9
004edbbd  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004edbc3  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004edbc9  85c9                      TEST ECX,ECX
004edbcb  741e                      JZ 0x004edbeb
004edbcd  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
004edbd3  81c1cc030000              ADD ECX,0x3cc
004edbd9  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004edbdf  50                        PUSH EAX
004edbe0  e82b16feff                CALL 0x004cf210
004edbe5  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004edbeb  50                        PUSH EAX
004edbec  8bce                      MOV ECX,ESI
004edbee  8930                      MOV dword ptr [EAX],ESI
004edbf0  e8fb00feff                CALL 0x004cdcf0
004edbf5  eb02                      JMP 0x004edbf9
004edbf7  33f6                      XOR ESI,ESI
004edbf9  80bd0bffffff00            CMP byte ptr [EBP + 0xffffff0b],0x0
004edc00  7428                      JZ 0x004edc2a
004edc02  c787100400005a000000      MOV dword ptr [EDI + 0x410],0x5a
004edc0c  85f6                      TEST ESI,ESI
004edc0e  7424                      JZ 0x004edc34
004edc10  57                        PUSH EDI
004edc11  8d4dc4                    LEA ECX,[EBP + -0x3c]
004edc14  e8f736f4ff                CALL 0x00431310
004edc19  6a00                      PUSH 0x0
004edc1b  6a5a                      PUSH 0x5a
004edc1d  8d45c4                    LEA EAX,[EBP + -0x3c]
004edc20  8bce                      MOV ECX,ESI
004edc22  50                        PUSH EAX
004edc23  e898f71b00                CALL 0x006ad3c0
004edc28  eb0a                      JMP 0x004edc34
004edc2a  c787100400001e000000      MOV dword ptr [EDI + 0x410],0x1e
004edc34  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004edc3b  80bdccfeffff00            CMP byte ptr [EBP + 0xfffffecc],0x0
004edc42  7522                      JNZ 0x004edc66
004edc44  c745fc03000000            MOV dword ptr [EBP + -0x4],0x3
004edc4b  e929feffff                JMP 0x004eda79
004edc50  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004edc54  7409                      JZ 0x004edc5f
004edc56  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004edc5d  750d                      JNZ 0x004edc6c
004edc5f  8b07                      MOV EAX,dword ptr [EDI]
004edc61  8bcf                      MOV ECX,EDI
004edc63  ff5028                    CALL dword ptr [EAX + 0x28]
004edc66  8b95fcfeffff              MOV EDX,dword ptr [EBP + 0xfffffefc]
004edc6c  83bf640b000005            CMP dword ptr [EDI + 0xb64],0x5
004edc73  0f84bd000000              JZ 0x004edd36
004edc79  299710040000              SUB dword ptr [EDI + 0x410],EDX
004edc7f  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004edc86  0f8faa000000              JG 0x004edd36
004edc8c  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004edc92  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004edc98  85c9                      TEST ECX,ECX
004edc9a  7418                      JZ 0x004edcb4
004edc9c  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004edca2  89b514ffffff              MOV dword ptr [EBP + 0xffffff14],ESI
004edca8  50                        PUSH EAX
004edca9  81c1cc030000              ADD ECX,0x3cc
004edcaf  e85c15feff                CALL 0x004cf210
004edcb4  c70600000000              MOV dword ptr [ESI],0x0
004edcba  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004edcbd  85f6                      TEST ESI,ESI
004edcbf  744a                      JZ 0x004edd0b
004edcc1  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004edcc5  8bc6                      MOV EAX,ESI
004edcc7  7202                      JC 0x004edccb
004edcc9  8b06                      MOV EAX,dword ptr [ESI]
004edccb  b97cdab100                MOV ECX,0xb1da7c
004edcd0  8a10                      MOV DL,byte ptr [EAX]
004edcd2  3a11                      CMP DL,byte ptr [ECX]
004edcd4  751a                      JNZ 0x004edcf0
004edcd6  84d2                      TEST DL,DL
004edcd8  7412                      JZ 0x004edcec
004edcda  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004edcdd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004edce0  750e                      JNZ 0x004edcf0
004edce2  83c002                    ADD EAX,0x2
004edce5  83c102                    ADD ECX,0x2
004edce8  84d2                      TEST DL,DL
004edcea  75e4                      JNZ 0x004edcd0
004edcec  33c0                      XOR EAX,EAX
004edcee  eb05                      JMP 0x004edcf5
004edcf0  1bc0                      SBB EAX,EAX
004edcf2  83c801                    OR EAX,0x1
004edcf5  85c0                      TEST EAX,EAX
004edcf7  7512                      JNZ 0x004edd0b
004edcf9  384634                    CMP byte ptr [ESI + 0x34],AL
004edcfc  742e                      JZ 0x004edd2c
004edcfe  38878c000000              CMP byte ptr [EDI + 0x8c],AL
004edd04  8d7748                    LEA ESI,[EDI + 0x48]
004edd07  7523                      JNZ 0x004edd2c
004edd09  eb03                      JMP 0x004edd0e
004edd0b  8d7748                    LEA ESI,[EDI + 0x48]
004edd0e  6a01                      PUSH 0x1
004edd10  687cdab100                PUSH 0xb1da7c
004edd15  8bce                      MOV ECX,ESI
004edd17  e8b4c8f1ff                CALL 0x0040a5d0
004edd1c  84c0                      TEST AL,AL
004edd1e  740c                      JZ 0x004edd2c
004edd20  8d4e30                    LEA ECX,[ESI + 0x30]
004edd23  e888c4f1ff                CALL 0x0040a1b0
004edd28  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004edd2c  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
004edd36  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
004edd3e  f30f591554a3ba00          MULSS XMM2,dword ptr [0x00baa354]
004edd46  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
004edd4e  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004edd56  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004edd5e  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004edd66  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004edd6e  f30f5ec2                  DIVSS XMM0,XMM2
004edd72  f30f5eca                  DIVSS XMM1,XMM2
004edd76  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004edd7e  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004edd86  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004edd8e  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004edd96  f30f5cc2                  SUBSS XMM0,XMM2
004edd9a  f30f5ec2                  DIVSS XMM0,XMM2
004edd9e  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004edda6  f30f2cf0                  CVTTSS2SI ESI,XMM0
004eddaa  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004eddb2  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004eddba  f30f5ec2                  DIVSS XMM0,XMM2
004eddbe  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004eddc6  f30f2cd0                  CVTTSS2SI EDX,XMM0
004eddca  85f6                      TEST ESI,ESI
004eddcc  785f                      JS 0x004ede2d
004eddce  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
004eddd4  8b410c                    MOV EAX,dword ptr [ECX + 0xc]
004eddd7  3bf0                      CMP ESI,EAX
004eddd9  7d52                      JGE 0x004ede2d
004edddb  85d2                      TEST EDX,EDX
004edddd  784e                      JS 0x004ede2d
004edddf  3b5110                    CMP EDX,dword ptr [ECX + 0x10]
004edde2  7d49                      JGE 0x004ede2d
004edde4  0fafc2                    IMUL EAX,EDX
004edde7  03c6                      ADD EAX,ESI
004edde9  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
004eddef  3dbf010000                CMP EAX,0x1bf
004eddf4  7737                      JA 0x004ede2d
004eddf6  8bb4816c070000            MOV ESI,dword ptr [ECX + EAX*0x4 + 0x76c]
004eddfd  8bc6                      MOV EAX,ESI
004eddff  99                        CDQ
004ede00  c78514ffffffe8030000      MOV dword ptr [EBP + 0xffffff14],0x3e8
004ede0a  f7bd14ffffff              IDIV dword ptr [EBP + 0xffffff14]
004ede10  81fa84030000              CMP EDX,0x384
004ede16  7d15                      JGE 0x004ede2d
004ede18  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
004ede1e  2bf2                      SUB ESI,EDX
004ede20  81c684030000              ADD ESI,0x384
004ede26  89b4816c070000            MOV dword ptr [ECX + EAX*0x4 + 0x76c],ESI
004ede2d  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004ede33  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004ede39  85c9                      TEST ECX,ECX
004ede3b  0f84e41c0000              JZ 0x004efb25
004ede41  f30f109f3c030000          MOVSS XMM3,dword ptr [EDI + 0x33c]
004ede49  f30f10a740030000          MOVSS XMM4,dword ptr [EDI + 0x340]
004ede51  f30f5c993c030000          SUBSS XMM3,dword ptr [ECX + 0x33c]
004ede59  f30f5ca140030000          SUBSS XMM4,dword ptr [ECX + 0x340]
004ede61  f30f109770030000          MOVSS XMM2,dword ptr [EDI + 0x370]
004ede69  f30f59d2                  MULSS XMM2,XMM2
004ede6d  0f28c3                    MOVAPS XMM0,XMM3
004ede70  0f28cc                    MOVAPS XMM1,XMM4
004ede73  f30f59c3                  MULSS XMM0,XMM3
004ede77  f30f59155ca7ba00          MULSS XMM2,dword ptr [0x00baa75c]
004ede7f  f30f59cc                  MULSS XMM1,XMM4
004ede83  f30f58c8                  ADDSS XMM1,XMM0
004ede87  0f2fca                    COMISS XMM1,XMM2
004ede8a  7623                      JBE 0x004edeaf
004ede8c  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
004ede92  89b514ffffff              MOV dword ptr [EBP + 0xffffff14],ESI
004ede98  50                        PUSH EAX
004ede99  81c1cc030000              ADD ECX,0x3cc
004ede9f  e86c13feff                CALL 0x004cf210
004edea4  c70600000000              MOV dword ptr [ESI],0x0
004edeaa  e9761c0000                JMP 0x004efb25
004edeaf  f30f10b79c030000          MOVSS XMM6,dword ptr [EDI + 0x39c]
004edeb7  0f2e3554a4ba00            UCOMISS XMM6,dword ptr [0x00baa454]
004edebe  c787580300000000a041      MOV dword ptr [EDI + 0x358],0x41a00000
004edec8  f30f108964030000          MOVSS XMM1,dword ptr [ECX + 0x364]
004eded0  f30f1015a4a3ba00          MOVSS XMM2,dword ptr [0x00baa3a4]
004eded8  f30f10b960030000          MOVSS XMM7,dword ptr [ECX + 0x360]
004edee0  0f28ea                    MOVAPS XMM5,XMM2
004edee3  9f                        LAHF
004edee4  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
004edeec  f6c444                    TEST AH,0x44
004edeef  7b1e                      JNP 0x004edf0f
004edef1  0f28ce                    MOVAPS XMM1,XMM6
004edef4  0f28c6                    MOVAPS XMM0,XMM6
004edef7  f30f58ca                  ADDSS XMM1,XMM2
004edefb  f30f59c2                  MULSS XMM0,XMM2
004edeff  f30f5cc8                  SUBSS XMM1,XMM0
004edf03  f30f5ee9                  DIVSS XMM5,XMM1
004edf07  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
004edf0f  f30f591d98a1ba00          MULSS XMM3,dword ptr [0x00baa198]
004edf17  f30f592598a1ba00          MULSS XMM4,dword ptr [0x00baa198]
004edf1f  0f28c3                    MOVAPS XMM0,XMM3
004edf22  f30f59fd                  MULSS XMM7,XMM5
004edf26  f30f59c6                  MULSS XMM0,XMM6
004edf2a  f30f59cd                  MULSS XMM1,XMM5
004edf2e  f30f58c7                  ADDSS XMM0,XMM7
004edf32  f30f118160030000          MOVSS dword ptr [ECX + 0x360],XMM0
004edf3a  0f28c4                    MOVAPS XMM0,XMM4
004edf3d  f30f59c6                  MULSS XMM0,XMM6
004edf41  f30f58c1                  ADDSS XMM0,XMM1
004edf45  f30f118164030000          MOVSS dword ptr [ECX + 0x364],XMM0
004edf4d  f30f10af9c030000          MOVSS XMM5,dword ptr [EDI + 0x39c]
004edf55  0f2e2d54a4ba00            UCOMISS XMM5,dword ptr [0x00baa454]
004edf5c  9f                        LAHF
004edf5d  f6c444                    TEST AH,0x44
004edf60  7b16                      JNP 0x004edf78
004edf62  0f28cd                    MOVAPS XMM1,XMM5
004edf65  0f28c5                    MOVAPS XMM0,XMM5
004edf68  f30f58ca                  ADDSS XMM1,XMM2
004edf6c  f30f59c2                  MULSS XMM0,XMM2
004edf70  f30f5cc8                  SUBSS XMM1,XMM0
004edf74  f30f5ed1                  DIVSS XMM2,XMM1
004edf78  0f28ca                    MOVAPS XMM1,XMM2
004edf7b  0f28c5                    MOVAPS XMM0,XMM5
004edf7e  f30f598f60030000          MULSS XMM1,dword ptr [EDI + 0x360]
004edf86  f30f599764030000          MULSS XMM2,dword ptr [EDI + 0x364]
004edf8e  f30f59c3                  MULSS XMM0,XMM3
004edf92  f30f59ec                  MULSS XMM5,XMM4
004edf96  f30f5cc8                  SUBSS XMM1,XMM0
004edf9a  f30f5cd5                  SUBSS XMM2,XMM5
004edf9e  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004edfa6  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004edfae  e9721b0000                JMP 0x004efb25
004edfb3  83f80d                    CMP EAX,0xd
004edfb6  0f871f1b0000              JA 0x004efadb
004edfbc  0fb6807cfb4e00            MOVZX EAX,byte ptr [EAX + 0x4efb7c]
004edfc3  ff248568fb4e00            JMP dword ptr [EAX*0x4 + 0x4efb68]
004edfca  85c9                      TEST ECX,ECX
004edfcc  7543                      JNZ 0x004ee011
004edfce  68a44dc300                PUSH 0xc34da4
004edfd3  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004edfd9  e81292f1ff                CALL 0x004071f0
004edfde  6a02                      PUSH 0x2
004edfe0  8d4f48                    LEA ECX,[EDI + 0x48]
004edfe3  e838d2f1ff                CALL 0x0040b220
004edfe8  6a03                      PUSH 0x3
004edfea  8d4f48                    LEA ECX,[EDI + 0x48]
004edfed  83888c00000001            OR dword ptr [EAX + 0x8c],0x1
004edff4  e827d2f1ff                CALL 0x0040b220
004edff9  6a04                      PUSH 0x4
004edffb  8d4f48                    LEA ECX,[EDI + 0x48]
004edffe  83888c00000001            OR dword ptr [EAX + 0x8c],0x1
004ee005  e816d2f1ff                CALL 0x0040b220
004ee00a  83888c00000001            OR dword ptr [EAX + 0x8c],0x1
004ee011  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004ee01b  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004ee021  898734030000              MOV dword ptr [EDI + 0x334],EAX
004ee027  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004ee02d  898738030000              MOV dword ptr [EDI + 0x338],EAX
004ee033  e8280f2000                CALL 0x006eef60
004ee038  33d2                      XOR EDX,EDX
004ee03a  b91e000000                MOV ECX,0x1e
004ee03f  f7f1                      DIV ECX
004ee041  03d1                      ADD EDX,ECX
004ee043  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004ee049  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004ee053  e8080f2000                CALL 0x006eef60
004ee058  660f6ec0                  MOVD XMM0,EAX
004ee05c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ee060  c1e81f                    SHR EAX,0x1f
004ee063  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ee06c  660f5ac0                  CVTPD2PS XMM0,XMM0
004ee070  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ee078  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004ee080  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004ee088  e9481a0000                JMP 0x004efad5
004ee08d  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ee095  8d4748                    LEA EAX,[EDI + 0x48]
004ee098  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
004ee0a0  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ee0a8  8b4834                    MOV ECX,dword ptr [EAX + 0x34]
004ee0ab  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
004ee0b1  85c9                      TEST ECX,ECX
004ee0b3  7455                      JZ 0x004ee10a
004ee0b5  83791410                  CMP dword ptr [ECX + 0x14],0x10
004ee0b9  8bc1                      MOV EAX,ECX
004ee0bb  7202                      JC 0x004ee0bf
004ee0bd  8b01                      MOV EAX,dword ptr [ECX]
004ee0bf  b954bcb100                MOV ECX,0xb1bc54
004ee0c4  8a10                      MOV DL,byte ptr [EAX]
004ee0c6  3a11                      CMP DL,byte ptr [ECX]
004ee0c8  751a                      JNZ 0x004ee0e4
004ee0ca  84d2                      TEST DL,DL
004ee0cc  7412                      JZ 0x004ee0e0
004ee0ce  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004ee0d1  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004ee0d4  750e                      JNZ 0x004ee0e4
004ee0d6  83c002                    ADD EAX,0x2
004ee0d9  83c102                    ADD ECX,0x2
004ee0dc  84d2                      TEST DL,DL
004ee0de  75e4                      JNZ 0x004ee0c4
004ee0e0  33c0                      XOR EAX,EAX
004ee0e2  eb05                      JMP 0x004ee0e9
004ee0e4  1bc0                      SBB EAX,EAX
004ee0e6  83c801                    OR EAX,0x1
004ee0e9  85c0                      TEST EAX,EAX
004ee0eb  751a                      JNZ 0x004ee107
004ee0ed  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
004ee0f3  80783400                  CMP byte ptr [EAX + 0x34],0x0
004ee0f7  7432                      JZ 0x004ee12b
004ee0f9  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ee100  8d4748                    LEA EAX,[EDI + 0x48]
004ee103  7526                      JNZ 0x004ee12b
004ee105  eb03                      JMP 0x004ee10a
004ee107  8d4748                    LEA EAX,[EDI + 0x48]
004ee10a  6a01                      PUSH 0x1
004ee10c  6854bcb100                PUSH 0xb1bc54
004ee111  8bc8                      MOV ECX,EAX
004ee113  e8b8c4f1ff                CALL 0x0040a5d0
004ee118  84c0                      TEST AL,AL
004ee11a  740f                      JZ 0x004ee12b
004ee11c  8d4f78                    LEA ECX,[EDI + 0x78]
004ee11f  e88cc0f1ff                CALL 0x0040a1b0
004ee124  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004ee12b  6a00                      PUSH 0x0
004ee12d  68000a0001                PUSH 0x1000a00
004ee132  8bcf                      MOV ECX,EDI
004ee134  e8f792f2ff                CALL 0x00417430
004ee139  0f57c0                    XORPS XMM0,XMM0
004ee13c  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004ee144  84c0                      TEST AL,AL
004ee146  7412                      JZ 0x004ee15a
004ee148  8d8f14040000              LEA ECX,[EDI + 0x414]
004ee14e  6a00                      PUSH 0x0
004ee150  e8ab812f00                CALL 0x007e6300
004ee155  e95e040000                JMP 0x004ee5b8
004ee15a  8d8f34030000              LEA ECX,[EDI + 0x334]
004ee160  6840b6c700                PUSH 0xc7b640
004ee165  e8c6245200                CALL 0x00a10630
004ee16a  84c0                      TEST AL,AL
004ee16c  0f8446040000              JZ 0x004ee5b8
004ee172  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004ee17a  f30f58879c030000          ADDSS XMM0,dword ptr [EDI + 0x39c]
004ee182  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004ee18a  f30f1009                  MOVSS XMM1,dword ptr [ECX]
004ee18e  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
004ee193  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004ee19b  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004ee1a3  e8b8bbfaff                CALL 0x00499d60
004ee1a8  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ee1b0  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ee1b8  e8a30d2000                CALL 0x006eef60
004ee1bd  e89e0d2000                CALL 0x006eef60
004ee1c2  0f57c0                    XORPS XMM0,XMM0
004ee1c5  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
004ee1cd  f20f2ac0                  CVTSI2SD XMM0,EAX
004ee1d1  c1e81f                    SHR EAX,0x1f
004ee1d4  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ee1dd  660f5ad0                  CVTPD2PS XMM2,XMM0
004ee1e1  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004ee1e9  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
004ee1f1  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
004ee1f9  f30f5815fca6ba00          ADDSS XMM2,dword ptr [0x00baa6fc]
004ee201  f30f59979c030000          MULSS XMM2,dword ptr [EDI + 0x39c]
004ee209  e842481900                CALL 0x00682a50
004ee20e  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004ee216  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004ee21e  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ee226  e8f5f2f2ff                CALL 0x0041d520
004ee22b  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004ee233  e8280d2000                CALL 0x006eef60
004ee238  0f57c9                    XORPS XMM1,XMM1
004ee23b  f20f2ac8                  CVTSI2SD XMM1,EAX
004ee23f  c1e81f                    SHR EAX,0x1f
004ee242  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004ee24b  660f5ac1                  CVTPD2PS XMM0,XMM1
004ee24f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ee257  f30f590580a5ba00          MULSS XMM0,dword ptr [0x00baa580]
004ee25f  f30f580554a3ba00          ADDSS XMM0,dword ptr [0x00baa354]
004ee267  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004ee26f  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004ee277  e8c4f2f2ff                CALL 0x0041d540
004ee27c  f30f109de8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee8]
004ee284  0f28c8                    MOVAPS XMM1,XMM0
004ee287  f30f598df0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffef0]
004ee28f  f30f599df0feffff          MULSS XMM3,dword ptr [EBP + 0xfffffef0]
004ee297  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004ee29f  f30f1015d0a9ba00          MOVSS XMM2,dword ptr [0x00baa9d0]
004ee2a7  f30f59c8                  MULSS XMM1,XMM0
004ee2ab  f30f59d8                  MULSS XMM3,XMM0
004ee2af  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
004ee2b7  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
004ee2bf  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004ee2c7  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
004ee2cf  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004ee2d2  83f801                    CMP EAX,0x1
004ee2d5  7508                      JNZ 0x004ee2df
004ee2d7  f30f101590abba00          MOVSS XMM2,dword ptr [0x00baab90]
004ee2df  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004ee2e7  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004ee2ef  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004ee2f7  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004ee2ff  f30f59c0                  MULSS XMM0,XMM0
004ee303  f30f59c9                  MULSS XMM1,XMM1
004ee307  f30f58c1                  ADDSS XMM0,XMM1
004ee30b  0f2fd0                    COMISS XMM2,XMM0
004ee30e  0f8622020000              JBE 0x004ee536
004ee314  83f801                    CMP EAX,0x1
004ee317  0f8597010000              JNZ 0x004ee4b4
004ee31d  3987c00b0000              CMP dword ptr [EDI + 0xbc0],EAX
004ee323  0f850d020000              JNZ 0x004ee536
004ee329  8bcf                      MOV ECX,EDI
004ee32b  e810051d00                CALL 0x006be840
004ee330  50                        PUSH EAX
004ee331  8bcf                      MOV ECX,EDI
004ee333  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
004ee339  e8229a1e00                CALL 0x006d7d60
004ee33e  84c0                      TEST AL,AL
004ee340  0f84f0010000              JZ 0x004ee536
004ee346  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ee34c  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004ee352  8b9740030000              MOV EDX,dword ptr [EDI + 0x340]
004ee358  8985f4feffff              MOV dword ptr [EBP + 0xfffffef4],EAX
004ee35e  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004ee364  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004ee36a  50                        PUSH EAX
004ee36b  8995f8feffff              MOV dword ptr [EBP + 0xfffffef8],EDX
004ee371  8b89f8110000              MOV ECX,dword ptr [ECX + 0x11f8]
004ee377  e8c4664500                CALL 0x00944a40
004ee37c  84c0                      TEST AL,AL
004ee37e  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
004ee384  0f84a3000000              JZ 0x004ee42d
004ee38a  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004ee392  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004ee39a  f30f1005d0a8ba00          MOVSS XMM0,dword ptr [0x00baa8d0]
004ee3a2  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004ee3a9  0f2fc1                    COMISS XMM0,XMM1
004ee3ac  767f                      JBE 0x004ee42d
004ee3ae  e8ad0b2000                CALL 0x006eef60
004ee3b3  33d2                      XOR EDX,EDX
004ee3b5  b903000000                MOV ECX,0x3
004ee3ba  f7f1                      DIV ECX
004ee3bc  85d2                      TEST EDX,EDX
004ee3be  7567                      JNZ 0x004ee427
004ee3c0  52                        PUSH EDX
004ee3c1  6854ddb100                PUSH 0xb1dd54
004ee3c6  8d4f48                    LEA ECX,[EDI + 0x48]
004ee3c9  e8b2bff1ff                CALL 0x0040a380
004ee3ce  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004ee3d8  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004ee3de  898734030000              MOV dword ptr [EDI + 0x334],EAX
004ee3e4  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004ee3ea  898738030000              MOV dword ptr [EDI + 0x338],EAX
004ee3f0  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
004ee3f6  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004ee400  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004ee408  0f2f803c030000            COMISS XMM0,dword ptr [EAX + 0x33c]
004ee40f  0f97c0                    SETA AL
004ee412  888748010000              MOV byte ptr [EDI + 0x148],AL
004ee418  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
004ee422  e90f010000                JMP 0x004ee536
004ee427  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
004ee42d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004ee435  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004ee43d  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
004ee445  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
004ee44d  f30f59c0                  MULSS XMM0,XMM0
004ee451  f30f59c9                  MULSS XMM1,XMM1
004ee455  f30f58c8                  ADDSS XMM1,XMM0
004ee459  f30f100534acba00          MOVSS XMM0,dword ptr [0x00baac34]
004ee461  0f2fc1                    COMISS XMM0,XMM1
004ee464  0f86cc000000              JBE 0x004ee536
004ee46a  6a00                      PUSH 0x0
004ee46c  683409b600                PUSH 0xb60934
004ee471  8d4f48                    LEA ECX,[EDI + 0x48]
004ee474  e807bff1ff                CALL 0x0040a380
004ee479  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004ee483  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004ee489  898734030000              MOV dword ptr [EDI + 0x334],EAX
004ee48f  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004ee495  898738030000              MOV dword ptr [EDI + 0x338],EAX
004ee49b  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004ee4a5  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
004ee4af  e982000000                JMP 0x004ee536
004ee4b4  8bcf                      MOV ECX,EDI
004ee4b6  e885031d00                CALL 0x006be840
004ee4bb  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004ee4c1  83f902                    CMP ECX,0x2
004ee4c4  751b                      JNZ 0x004ee4e1
004ee4c6  6a00                      PUSH 0x0
004ee4c8  683409b600                PUSH 0xb60934
004ee4cd  8d4f48                    LEA ECX,[EDI + 0x48]
004ee4d0  e8abbef1ff                CALL 0x0040a380
004ee4d5  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
004ee4df  eb33                      JMP 0x004ee514
004ee4e1  83f901                    CMP ECX,0x1
004ee4e4  7550                      JNZ 0x004ee536
004ee4e6  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004ee4ed  7547                      JNZ 0x004ee536
004ee4ef  50                        PUSH EAX
004ee4f0  8bcf                      MOV ECX,EDI
004ee4f2  e869981e00                CALL 0x006d7d60
004ee4f7  84c0                      TEST AL,AL
004ee4f9  743b                      JZ 0x004ee536
004ee4fb  6a00                      PUSH 0x0
004ee4fd  6854ddb100                PUSH 0xb1dd54
004ee502  8d4f48                    LEA ECX,[EDI + 0x48]
004ee505  e876bef1ff                CALL 0x0040a380
004ee50a  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004ee514  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004ee51a  898734030000              MOV dword ptr [EDI + 0x334],EAX
004ee520  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004ee526  898738030000              MOV dword ptr [EDI + 0x338],EAX
004ee52c  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004ee536  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
004ee53d  7579                      JNZ 0x004ee5b8
004ee53f  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004ee547  0f2f0550a9ba00            COMISS XMM0,dword ptr [0x00baa950]
004ee54e  7754                      JA 0x004ee5a4
004ee550  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
004ee554  7524                      JNZ 0x004ee57a
004ee556  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
004ee55d  751b                      JNZ 0x004ee57a
004ee55f  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
004ee566  7412                      JZ 0x004ee57a
004ee568  e8f3092000                CALL 0x006eef60
004ee56d  33d2                      XOR EDX,EDX
004ee56f  b90a000000                MOV ECX,0xa
004ee574  f7f1                      DIV ECX
004ee576  85d2                      TEST EDX,EDX
004ee578  742a                      JZ 0x004ee5a4
004ee57a  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ee57e  7538                      JNZ 0x004ee5b8
004ee580  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
004ee587  752f                      JNZ 0x004ee5b8
004ee589  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004ee590  7e26                      JLE 0x004ee5b8
004ee592  e8c9092000                CALL 0x006eef60
004ee597  33d2                      XOR EDX,EDX
004ee599  b90a000000                MOV ECX,0xa
004ee59e  f7f1                      DIV ECX
004ee5a0  85d2                      TEST EDX,EDX
004ee5a2  7514                      JNZ 0x004ee5b8
004ee5a4  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004ee5ae  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004ee5b8  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004ee5bf  0f8510150000              JNZ 0x004efad5
004ee5c5  6a00                      PUSH 0x0
004ee5c7  68000a0001                PUSH 0x1000a00
004ee5cc  8bcf                      MOV ECX,EDI
004ee5ce  e85d8ef2ff                CALL 0x00417430
004ee5d3  84c0                      TEST AL,AL
004ee5d5  0f85fa140000              JNZ 0x004efad5
004ee5db  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004ee5e2  f30f1005b4acba00          MOVSS XMM0,dword ptr [0x00baacb4]
004ee5ea  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ee5f2  0f8f99030000              JG 0x004ee991
004ee5f8  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ee5fc  0f85ad000000              JNZ 0x004ee6af
004ee602  8bcf                      MOV ECX,EDI
004ee604  e837021d00                CALL 0x006be840
004ee609  f30f101d50a9ba00          MOVSS XMM3,dword ptr [0x00baa950]
004ee611  83ec0c                    SUB ESP,0xc
004ee614  8bce                      MOV ECX,ESI
004ee616  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
004ee61e  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
004ee626  f30f590d54a8ba00          MULSS XMM1,dword ptr [0x00baa854]
004ee62e  c744240800007042          MOV dword ptr [ESP + 0x8],0x42700000
004ee636  f30f591554a8ba00          MULSS XMM2,dword ptr [0x00baa854]
004ee63e  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
004ee646  f30f58883c030000          ADDSS XMM1,dword ptr [EAX + 0x33c]
004ee64e  c7042400007042            MOV dword ptr [ESP],0x42700000
004ee655  f30f589040030000          ADDSS XMM2,dword ptr [EAX + 0x340]
004ee65d  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004ee663  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
004ee66d  50                        PUSH EAX
004ee66e  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004ee674  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
004ee67c  50                        PUSH EAX
004ee67d  f30f1195f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM2
004ee685  e8c6483200                CALL 0x00812f50
004ee68a  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004ee692  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004ee69a  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004ee6a2  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004ee6aa  e9e2020000                JMP 0x004ee991
004ee6af  e8ac082000                CALL 0x006eef60
004ee6b4  83e003                    AND EAX,0x3
004ee6b7  0f85d4020000              JNZ 0x004ee991
004ee6bd  398604730000              CMP dword ptr [ESI + 0x7304],EAX
004ee6c3  0f84c8020000              JZ 0x004ee991
004ee6c9  0f57c0                    XORPS XMM0,XMM0
004ee6cc  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
004ee6d2  0f57c9                    XORPS XMM1,XMM1
004ee6d5  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004ee6dd  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004ee6e5  f30f1005b4acba00          MOVSS XMM0,dword ptr [0x00baacb4]
004ee6ed  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
004ee6f5  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
004ee6fd  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004ee705  e8b6e0f3ff                CALL 0x0042c7c0
004ee70a  c745fc04000000            MOV dword ptr [EBP + -0x4],0x4
004ee711  8b8600730000              MOV EAX,dword ptr [ESI + 0x7300]
004ee717  8b30                      MOV ESI,dword ptr [EAX]
004ee719  3bf0                      CMP ESI,EAX
004ee71b  0f84a3000000              JZ 0x004ee7c4
004ee721  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
004ee727  817e1075030000            CMP dword ptr [ESI + 0x10],0x375
004ee72e  7507                      JNZ 0x004ee737
004ee730  66837e1400                CMP word ptr [ESI + 0x14],0x0
004ee735  747d                      JZ 0x004ee7b4
004ee737  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004ee73f  8d4608                    LEA EAX,[ESI + 0x8]
004ee742  f30f1010                  MOVSS XMM2,dword ptr [EAX]
004ee746  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
004ee74b  f30f5cc2                  SUBSS XMM0,XMM2
004ee74f  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004ee757  f30f5ccb                  SUBSS XMM1,XMM3
004ee75b  f30f59c0                  MULSS XMM0,XMM0
004ee75f  f30f59c9                  MULSS XMM1,XMM1
004ee763  f30f58c8                  ADDSS XMM1,XMM0
004ee767  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
004ee76f  0f2fc1                    COMISS XMM0,XMM1
004ee772  762e                      JBE 0x004ee7a2
004ee774  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
004ee77c  0f28c2                    MOVAPS XMM0,XMM2
004ee77f  0f28cb                    MOVAPS XMM1,XMM3
004ee782  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004ee78a  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004ee792  f30f118d10ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM1
004ee79a  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
004ee7a2  50                        PUSH EAX
004ee7a3  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
004ee7a9  e8e2b7f3ff                CALL 0x00429f90
004ee7ae  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
004ee7b4  8b06                      MOV EAX,dword ptr [ESI]
004ee7b6  8bf0                      MOV ESI,EAX
004ee7b8  3b8100730000              CMP EAX,dword ptr [ECX + 0x7300]
004ee7be  0f8563ffffff              JNZ 0x004ee727
004ee7c4  f30f103540b6c700          MOVSS XMM6,dword ptr [0x00c7b640]
004ee7cc  f30f108de8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee8]
004ee7d4  f30f102d44b6c700          MOVSS XMM5,dword ptr [0x00c7b644]
004ee7dc  f30f109d10ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff10]
004ee7e4  0f2ece                    UCOMISS XMM1,XMM6
004ee7e7  9f                        LAHF
004ee7e8  f6c444                    TEST AH,0x44
004ee7eb  7a0d                      JP 0x004ee7fa
004ee7ed  0f2edd                    UCOMISS XMM3,XMM5
004ee7f0  9f                        LAHF
004ee7f1  f6c444                    TEST AH,0x44
004ee7f4  0f8b0e010000              JNP 0x004ee908
004ee7fa  8b8d00ffffff              MOV ECX,dword ptr [EBP + 0xffffff00]
004ee800  0f57e4                    XORPS XMM4,XMM4
004ee803  0f57d2                    XORPS XMM2,XMM2
004ee806  f30f11a5f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM4
004ee80e  8b01                      MOV EAX,dword ptr [ECX]
004ee810  3bc1                      CMP EAX,ECX
004ee812  0f84b0000000              JZ 0x004ee8c8
004ee818  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
004ee820  f30f106808                MOVSS XMM5,dword ptr [EAX + 0x8]
004ee825  0f28c3                    MOVAPS XMM0,XMM3
004ee828  f30f10700c                MOVSS XMM6,dword ptr [EAX + 0xc]
004ee82d  f30f5ccd                  SUBSS XMM1,XMM5
004ee831  8b30                      MOV ESI,dword ptr [EAX]
004ee833  f30f5cc6                  SUBSS XMM0,XMM6
004ee837  f30f59c9                  MULSS XMM1,XMM1
004ee83b  f30f59c0                  MULSS XMM0,XMM0
004ee83f  f30f58c1                  ADDSS XMM0,XMM1
004ee843  f30f100d4cacba00          MOVSS XMM1,dword ptr [0x00baac4c]
004ee84b  0f2fc8                    COMISS XMM1,XMM0
004ee84e  721a                      JC 0x004ee86a
004ee850  f30f58e5                  ADDSS XMM4,XMM5
004ee854  f30f58d6                  ADDSS XMM2,XMM6
004ee858  f30f11a5f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM4
004ee860  f30f1195e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM2
004ee868  eb3c                      JMP 0x004ee8a6
004ee86a  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
004ee86d  6a10                      PUSH 0x10
004ee86f  50                        PUSH EAX
004ee870  8931                      MOV dword ptr [ECX],ESI
004ee872  8b10                      MOV EDX,dword ptr [EAX]
004ee874  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
004ee877  894a04                    MOV dword ptr [EDX + 0x4],ECX
004ee87a  ff8d04ffffff              DEC dword ptr [EBP + 0xffffff04]
004ee880  e8d7086000                CALL 0x00aef15c
004ee885  8b8d00ffffff              MOV ECX,dword ptr [EBP + 0xffffff00]
004ee88b  83c408                    ADD ESP,0x8
004ee88e  f30f1095e0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffee0]
004ee896  f30f109d10ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff10]
004ee89e  f30f10a5f0feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffef0]
004ee8a6  f30f108de8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee8]
004ee8ae  8bc6                      MOV EAX,ESI
004ee8b0  3bf1                      CMP ESI,ECX
004ee8b2  0f8568ffffff              JNZ 0x004ee820
004ee8b8  f30f102d44b6c700          MOVSS XMM5,dword ptr [0x00c7b644]
004ee8c0  f30f103540b6c700          MOVSS XMM6,dword ptr [0x00c7b640]
004ee8c8  8b8504ffffff              MOV EAX,dword ptr [EBP + 0xffffff04]
004ee8ce  85c0                      TEST EAX,EAX
004ee8d0  7436                      JZ 0x004ee908
004ee8d2  660f6ec0                  MOVD XMM0,EAX
004ee8d6  0f28cc                    MOVAPS XMM1,XMM4
004ee8d9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ee8dd  c1e81f                    SHR EAX,0x1f
004ee8e0  0f28da                    MOVAPS XMM3,XMM2
004ee8e3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ee8ec  660f5ac0                  CVTPD2PS XMM0,XMM0
004ee8f0  f30f5ec8                  DIVSS XMM1,XMM0
004ee8f4  f30f5ed8                  DIVSS XMM3,XMM0
004ee8f8  f30f118df4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM1
004ee900  f30f119df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM3
004ee908  0f2ece                    UCOMISS XMM1,XMM6
004ee90b  9f                        LAHF
004ee90c  f6c444                    TEST AH,0x44
004ee90f  7a09                      JP 0x004ee91a
004ee911  0f2edd                    UCOMISS XMM3,XMM5
004ee914  9f                        LAHF
004ee915  f6c444                    TEST AH,0x44
004ee918  7b65                      JNP 0x004ee97f
004ee91a  f30f101d50a9ba00          MOVSS XMM3,dword ptr [0x00baa950]
004ee922  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004ee928  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
004ee92e  83ec0c                    SUB ESP,0xc
004ee931  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
004ee93b  c744240800007042          MOV dword ptr [ESP + 0x8],0x42700000
004ee943  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
004ee94b  c7042400007042            MOV dword ptr [ESP],0x42700000
004ee952  50                        PUSH EAX
004ee953  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004ee959  50                        PUSH EAX
004ee95a  e8f1453200                CALL 0x00812f50
004ee95f  f30f1085dcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffedc]
004ee967  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004ee96f  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004ee977  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004ee97f  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
004ee985  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004ee98c  e8efddf3ff                CALL 0x0042c780
004ee991  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
004ee998  0f85fa030000              JNZ 0x004eed98
004ee99e  8bcf                      MOV ECX,EDI
004ee9a0  e89bfe1c00                CALL 0x006be840
004ee9a5  80bd0bffffff00            CMP byte ptr [EBP + 0xffffff0b],0x0
004ee9ac  c78510ffffff00000000      MOV dword ptr [EBP + 0xffffff10],0x0
004ee9b6  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004ee9be  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004ee9c6  f30f1195f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM2
004ee9ce  f30f119de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM3
004ee9d6  7427                      JZ 0x004ee9ff
004ee9d8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ee9de  8d873c030000              LEA EAX,[EDI + 0x33c]
004ee9e4  50                        PUSH EAX
004ee9e5  e8664f2100                CALL 0x00703950
004ee9ea  f30f1095f0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef0]
004ee9f2  f30f109de8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee8]
004ee9fa  e9ba000000                JMP 0x004eeab9
004ee9ff  8bb50cffffff              MOV ESI,dword ptr [EBP + 0xffffff0c]
004eea05  8b8664120000              MOV EAX,dword ptr [ESI + 0x1264]
004eea0b  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
004eea11  85c0                      TEST EAX,EAX
004eea13  0f84b1010000              JZ 0x004eebca
004eea19  a17816c700                MOV EAX,[0x00c71678]
004eea1e  8b965c120000              MOV EDX,dword ptr [ESI + 0x125c]
004eea24  8b8014660200              MOV EAX,dword ptr [EAX + 0x26614]
004eea2a  8bf0                      MOV ESI,EAX
004eea2c  0f1f4000                  NOP dword ptr [EAX]
004eea30  8b0a                      MOV ECX,dword ptr [EDX]
004eea32  83fe02                    CMP ESI,0x2
004eea35  7c06                      JL 0x004eea3d
004eea37  83792801                  CMP dword ptr [ECX + 0x28],0x1
004eea3b  740d                      JZ 0x004eea4a
004eea3d  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
004eea40  83e80a                    SUB EAX,0xa
004eea43  3ddd030000                CMP EAX,0x3dd
004eea48  7759                      JA 0x004eeaa3
004eea4a  8b8168010000              MOV EAX,dword ptr [ECX + 0x168]
004eea50  2500000020                AND EAX,0x20000000
004eea55  83c800                    OR EAX,0x0
004eea58  7549                      JNZ 0x004eeaa3
004eea5a  398188010000              CMP dword ptr [ECX + 0x188],EAX
004eea60  7441                      JZ 0x004eeaa3
004eea62  0f28c2                    MOVAPS XMM0,XMM2
004eea65  0f28cb                    MOVAPS XMM1,XMM3
004eea68  f30f5c813c030000          SUBSS XMM0,dword ptr [ECX + 0x33c]
004eea70  f30f5c8940030000          SUBSS XMM1,dword ptr [ECX + 0x340]
004eea78  f30f59c0                  MULSS XMM0,XMM0
004eea7c  f30f59c9                  MULSS XMM1,XMM1
004eea80  f30f58c8                  ADDSS XMM1,XMM0
004eea84  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004eea8c  0f2fc1                    COMISS XMM0,XMM1
004eea8f  7612                      JBE 0x004eeaa3
004eea91  8bc1                      MOV EAX,ECX
004eea93  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
004eea9b  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
004eeaa1  eb06                      JMP 0x004eeaa9
004eeaa3  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
004eeaa9  83c204                    ADD EDX,0x4
004eeaac  83ade0feffff01            SUB dword ptr [EBP + 0xfffffee0],0x1
004eeab3  0f8577ffffff              JNZ 0x004eea30
004eeab9  8bb50cffffff              MOV ESI,dword ptr [EBP + 0xffffff0c]
004eeabf  85c0                      TEST EAX,EAX
004eeac1  0f8403010000              JZ 0x004eebca
004eeac7  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004eeacf  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004eead7  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004eeadd  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004eeae5  f30f5cc2                  SUBSS XMM0,XMM2
004eeae9  51                        PUSH ECX
004eeaea  c7042400004842            MOV dword ptr [ESP],0x42480000
004eeaf1  8d8df4feffff              LEA ECX,[EBP + 0xfffffef4]
004eeaf7  50                        PUSH EAX
004eeaf8  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
004eeb00  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004eeb08  0f28c1                    MOVAPS XMM0,XMM1
004eeb0b  f30f5cc3                  SUBSS XMM0,XMM3
004eeb0f  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004eeb17  e8e4155200                CALL 0x00a10100
004eeb1c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004eeb20  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004eeb28  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004eeb2d  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
004eeb33  50                        PUSH EAX
004eeb34  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004eeb3c  e82f051900                CALL 0x0067f070
004eeb41  83c404                    ADD ESP,0x4
004eeb44  8bf0                      MOV ESI,EAX
004eeb46  e815042000                CALL 0x006eef60
004eeb4b  f30f109d04ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff04]
004eeb53  f30f589d14ffffff          ADDSS XMM3,dword ptr [EBP + 0xffffff14]
004eeb5b  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
004eeb61  660f6ec0                  MOVD XMM0,EAX
004eeb65  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004eeb69  c1e81f                    SHR EAX,0x1f
004eeb6c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004eeb75  660f5ad0                  CVTPD2PS XMM2,XMM0
004eeb79  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
004eeb81  0f28c2                    MOVAPS XMM0,XMM2
004eeb84  f30f595604                MULSS XMM2,dword ptr [ESI + 0x4]
004eeb89  f30f5906                  MULSS XMM0,dword ptr [ESI]
004eeb8d  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
004eeb95  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004eeb9d  f30f58c3                  ADDSS XMM0,XMM3
004eeba1  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004eeba9  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004eebb1  f30f5885f0feffff          ADDSS XMM0,dword ptr [EBP + 0xfffffef0]
004eebb9  f30f58d0                  ADDSS XMM2,XMM0
004eebbd  f30f1195f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM2
004eebc5  e945010000                JMP 0x004eed0f
004eebca  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004eebd2  f30f5cc2                  SUBSS XMM0,XMM2
004eebd6  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004eebde  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004eebe6  f30f5cc3                  SUBSS XMM0,XMM3
004eebea  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004eebf2  e869032000                CALL 0x006eef60
004eebf7  660f6ec0                  MOVD XMM0,EAX
004eebfb  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004eebff  c1e81f                    SHR EAX,0x1f
004eec02  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004eec0b  660f5ac0                  CVTPD2PS XMM0,XMM0
004eec0f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004eec17  f30f5905d4aaba00          MULSS XMM0,dword ptr [0x00baaad4]
004eec1f  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004eec27  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004eec2f  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004eec37  e804e9f2ff                CALL 0x0041d540
004eec3c  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004eec44  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004eec4c  e8cfe8f2ff                CALL 0x0041d520
004eec51  f30f109d14ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff14]
004eec59  0f28c8                    MOVAPS XMM1,XMM0
004eec5c  f30f598d10ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff10]
004eec64  0f28d3                    MOVAPS XMM2,XMM3
004eec67  f30f5995e0feffff          MULSS XMM2,dword ptr [EBP + 0xfffffee0]
004eec6f  f30f5985e0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee0]
004eec77  f30f599d10ffffff          MULSS XMM3,dword ptr [EBP + 0xffffff10]
004eec7f  f30f5cd1                  SUBSS XMM2,XMM1
004eec83  f30f58c3                  ADDSS XMM0,XMM3
004eec87  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
004eec8f  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004eec97  e8c4022000                CALL 0x006eef60
004eec9c  51                        PUSH ECX
004eec9d  8d8df4feffff              LEA ECX,[EBP + 0xfffffef4]
004eeca3  660f6ec0                  MOVD XMM0,EAX
004eeca7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004eecab  c1e81f                    SHR EAX,0x1f
004eecae  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004eecb7  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004eecbd  660f5ac0                  CVTPD2PS XMM0,XMM0
004eecc1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004eecc9  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004eecd1  f30f580524a9ba00          ADDSS XMM0,dword ptr [0x00baa924]
004eecd9  f30f110424                MOVSS dword ptr [ESP],XMM0
004eecde  50                        PUSH EAX
004eecdf  e81c145200                CALL 0x00a10100
004eece4  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
004eecec  8bce                      MOV ECX,ESI
004eecee  f30f5800                  ADDSS XMM0,dword ptr [EAX]
004eecf2  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004eecfa  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
004eed02  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
004eed07  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004eed0f  f30f101d50a9ba00          MOVSS XMM3,dword ptr [0x00baa950]
004eed17  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004eed1d  83ec0c                    SUB ESP,0xc
004eed20  c744240800007042          MOV dword ptr [ESP + 0x8],0x42700000
004eed28  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
004eed30  c7042400007042            MOV dword ptr [ESP],0x42700000
004eed37  50                        PUSH EAX
004eed38  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004eed3e  50                        PUSH EAX
004eed3f  e80c423200                CALL 0x00812f50
004eed44  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004eed4c  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004eed54  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004eed5c  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004eed64  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004eed68  7524                      JNZ 0x004eed8e
004eed6a  e8f1012000                CALL 0x006eef60
004eed6f  a807                      TEST AL,0x7
004eed71  b800000000                MOV EAX,0x0
004eed76  0f94c0                    SETZ AL
004eed79  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004eed7f  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004eed89  e9470d0000                JMP 0x004efad5
004eed8e  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
004eed98  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004eeda2  e92e0d0000                JMP 0x004efad5
004eeda7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004eedaf  0f57d2                    XORPS XMM2,XMM2
004eedb2  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004eedba  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004eedc2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004eedc6  0f8429020000              JZ 0x004eeff5
004eedcc  68dcd2b100                PUSH 0xb1d2dc
004eedd1  8d4f78                    LEA ECX,[EDI + 0x78]
004eedd4  e8f7bff1ff                CALL 0x0040add0
004eedd9  84c0                      TEST AL,AL
004eeddb  0f8411020000              JZ 0x004eeff2
004eede1  51                        PUSH ECX
004eede2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004eede9  6a00                      PUSH 0x0
004eedeb  6a02                      PUSH 0x2
004eeded  51                        PUSH ECX
004eedee  c704240000803f            MOV dword ptr [ESP],0x3f800000
004eedf5  8bcf                      MOV ECX,EDI
004eedf7  6a0d                      PUSH 0xd
004eedf9  e8a27d1e00                CALL 0x006d6ba0
004eedfe  c787b00b00000000803f      MOV dword ptr [EDI + 0xbb0],0x3f800000
004eee08  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
004eee0c  0f85b6010000              JNZ 0x004eefc8
004eee12  e849012000                CALL 0x006eef60
004eee17  8bf0                      MOV ESI,EAX
004eee19  e842012000                CALL 0x006eef60
004eee1e  660f6ec0                  MOVD XMM0,EAX
004eee22  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004eee26  c1e81f                    SHR EAX,0x1f
004eee29  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004eee32  660f5ac0                  CVTPD2PS XMM0,XMM0
004eee36  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004eee3e  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004eee46  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
004eee4e  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004eee56  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004eee5e  e8dde6f2ff                CALL 0x0041d540
004eee63  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004eee6b  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004eee73  e8a8e6f2ff                CALL 0x0041d520
004eee78  f30f10a514ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff14]
004eee80  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004eee86  0f28c8                    MOVAPS XMM1,XMM0
004eee89  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004eee8f  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
004eee97  0f57ed                    XORPS XMM5,XMM5
004eee9a  56                        PUSH ESI
004eee9b  f30f59c5                  MULSS XMM0,XMM5
004eee9f  0f28d4                    MOVAPS XMM2,XMM4
004eeea2  6a00                      PUSH 0x0
004eeea4  f30f5925e8a7ba00          MULSS XMM4,dword ptr [0x00baa7e8]
004eeeac  57                        PUSH EDI
004eeead  f30f59d5                  MULSS XMM2,XMM5
004eeeb1  50                        PUSH EAX
004eeeb2  f30f58c4                  ADDSS XMM0,XMM4
004eeeb6  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004eeebc  f30f5cd1                  SUBSS XMM2,XMM1
004eeec0  50                        PUSH EAX
004eeec1  6a01                      PUSH 0x1
004eeec3  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004eeecb  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004eeed3  f30f58c5                  ADDSS XMM0,XMM5
004eeed7  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
004eeedf  6899010000                PUSH 0x199
004eeee4  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
004eeeec  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004eeef4  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
004eeefc  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004eef04  e8179cf3ff                CALL 0x00428b20
004eef09  8bf0                      MOV ESI,EAX
004eef0b  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
004eef11  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004eef17  85c9                      TEST ECX,ECX
004eef19  741e                      JZ 0x004eef39
004eef1b  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
004eef21  81c1cc030000              ADD ECX,0x3cc
004eef27  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004eef2d  50                        PUSH EAX
004eef2e  e8dd02feff                CALL 0x004cf210
004eef33  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004eef39  50                        PUSH EAX
004eef3a  8bcf                      MOV ECX,EDI
004eef3c  8938                      MOV dword ptr [EAX],EDI
004eef3e  e8adedfdff                CALL 0x004cdcf0
004eef43  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
004eef49  8bce                      MOV ECX,ESI
004eef4b  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004eef52  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
004eef58  8b06                      MOV EAX,dword ptr [ESI]
004eef5a  c686b003000001            MOV byte ptr [ESI + 0x3b0],0x1
004eef61  c786bc0b000000005243      MOV dword ptr [ESI + 0xbbc],0x43520000
004eef6b  c7868401000003000000      MOV dword ptr [ESI + 0x184],0x3
004eef75  c7868801000002000000      MOV dword ptr [ESI + 0x188],0x2
004eef7f  ff500c                    CALL dword ptr [EAX + 0xc]
004eef82  8d87c0030000              LEA EAX,[EDI + 0x3c0]
004eef88  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
004eef92  8b08                      MOV ECX,dword ptr [EAX]
004eef94  85c9                      TEST ECX,ECX
004eef96  741e                      JZ 0x004eefb6
004eef98  898504ffffff              MOV dword ptr [EBP + 0xffffff04],EAX
004eef9e  81c1cc030000              ADD ECX,0x3cc
004eefa4  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
004eefaa  50                        PUSH EAX
004eefab  e86002feff                CALL 0x004cf210
004eefb0  8d87c0030000              LEA EAX,[EDI + 0x3c0]
004eefb6  50                        PUSH EAX
004eefb7  8bce                      MOV ECX,ESI
004eefb9  8930                      MOV dword ptr [EAX],ESI
004eefbb  e830edfdff                CALL 0x004cdcf0
004eefc0  8bb50cffffff              MOV ESI,dword ptr [EBP + 0xffffff0c]
004eefc6  eb2a                      JMP 0x004eeff2
004eefc8  51                        PUSH ECX
004eefc9  c704240000803f            MOV dword ptr [ESP],0x3f800000
004eefd0  6a00                      PUSH 0x0
004eefd2  6a02                      PUSH 0x2
004eefd4  51                        PUSH ECX
004eefd5  c704240000803f            MOV dword ptr [ESP],0x3f800000
004eefdc  8bcf                      MOV ECX,EDI
004eefde  68d5000000                PUSH 0xd5
004eefe3  e8b87b1e00                CALL 0x006d6ba0
004eefe8  c787b80b00000000a041      MOV dword ptr [EDI + 0xbb8],0x41a00000
004eeff2  0f57d2                    XORPS XMM2,XMM2
004eeff5  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
004eeff8  8bca                      MOV ECX,EDX
004eeffa  8bc2                      MOV EAX,EDX
004eeffc  83fa01                    CMP EDX,0x1
004eefff  8b95fcfeffff              MOV EDX,dword ptr [EBP + 0xfffffefc]
004ef005  0f8500040000              JNZ 0x004ef40b
004ef00b  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
004ef013  b901000000                MOV ECX,0x1
004ef018  0f2fca                    COMISS XMM1,XMM2
004ef01b  0f86ea030000              JBE 0x004ef40b
004ef021  85d2                      TEST EDX,EDX
004ef023  0f8ee2030000              JLE 0x004ef40b
004ef029  899514ffffff              MOV dword ptr [EBP + 0xffffff14],EDX
004ef02f  90                        NOP
004ef030  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
004ef037  740a                      JZ 0x004ef043
004ef039  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
004ef041  eb08                      JMP 0x004ef04b
004ef043  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004ef04b  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004ef053  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004ef059  f30f59c1                  MULSS XMM0,XMM1
004ef05d  51                        PUSH ECX
004ef05e  f30f59ca                  MULSS XMM1,XMM2
004ef062  8bce                      MOV ECX,ESI
004ef064  c7042400000000            MOV dword ptr [ESP],0x0
004ef06b  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004ef073  50                        PUSH EAX
004ef074  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004ef07c  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004ef084  f30f118df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM1
004ef08c  e8cf423200                CALL 0x00813360
004ef091  84c0                      TEST AL,AL
004ef093  0f844a030000              JZ 0x004ef3e3
004ef099  e8c2fe1f00                CALL 0x006eef60
004ef09e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ef0a4  50                        PUSH EAX
004ef0a5  6a00                      PUSH 0x0
004ef0a7  57                        PUSH EDI
004ef0a8  6840b6c700                PUSH 0xc7b640
004ef0ad  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004ef0b3  50                        PUSH EAX
004ef0b4  6a16                      PUSH 0x16
004ef0b6  68e8030000                PUSH 0x3e8
004ef0bb  e8609af3ff                CALL 0x00428b20
004ef0c0  660f6e8710040000          MOVD XMM0,dword ptr [EDI + 0x410]
004ef0c8  8bc8                      MOV ECX,EAX
004ef0ca  0f5bc0                    CVTDQ2PS XMM0,XMM0
004ef0cd  8b01                      MOV EAX,dword ptr [ECX]
004ef0cf  c7815c0400001e000000      MOV dword ptr [ECX + 0x45c],0x1e
004ef0d9  c781600400001e000000      MOV dword ptr [ECX + 0x460],0x1e
004ef0e3  f30f5905f4a0ba00          MULSS XMM0,dword ptr [0x00baa0f4]
004ef0eb  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
004ef0f3  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004ef0fb  f30f1181e4000000          MOVSS dword ptr [ECX + 0xe4],XMM0
004ef103  f30f1181e8000000          MOVSS dword ptr [ECX + 0xe8],XMM0
004ef10b  ff500c                    CALL dword ptr [EAX + 0xc]
004ef10e  a17816c700                MOV EAX,[0x00c71678]
004ef113  51                        PUSH ECX
004ef114  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
004ef11a  c7042400000000            MOV dword ptr [ESP],0x0
004ef121  51                        PUSH ECX
004ef122  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004ef128  e833423200                CALL 0x00813360
004ef12d  84c0                      TEST AL,AL
004ef12f  0f8494020000              JZ 0x004ef3c9
004ef135  e826fe1f00                CALL 0x006eef60
004ef13a  0f57d2                    XORPS XMM2,XMM2
004ef13d  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004ef144  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004ef14b  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004ef152  660f6ec0                  MOVD XMM0,EAX
004ef156  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ef15a  c1e81f                    SHR EAX,0x1f
004ef15d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ef166  660f5ac8                  CVTPD2PS XMM1,XMM0
004ef16a  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004ef172  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004ef17a  f30f59c1                  MULSS XMM0,XMM1
004ef17e  f30f59ca                  MULSS XMM1,XMM2
004ef182  f30f58c0                  ADDSS XMM0,XMM0
004ef186  f30f58c9                  ADDSS XMM1,XMM1
004ef18a  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004ef192  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004ef199  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004ef19d  0f57c0                    XORPS XMM0,XMM0
004ef1a0  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
004ef1a8  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004ef1ac  e8affd1f00                CALL 0x006eef60
004ef1b1  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
004ef1b9  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
004ef1c1  660f6ec0                  MOVD XMM0,EAX
004ef1c5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ef1c9  c1e81f                    SHR EAX,0x1f
004ef1cc  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ef1d5  660f5ac0                  CVTPD2PS XMM0,XMM0
004ef1d9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ef1e1  f30f5905dcadba00          MULSS XMM0,dword ptr [0x00baaddc]
004ef1e9  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004ef1f1  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
004ef1f9  f30f5cc1                  SUBSS XMM0,XMM1
004ef1fd  0f57c9                    XORPS XMM1,XMM1
004ef200  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004ef208  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
004ef210  f30f5cc1                  SUBSS XMM0,XMM1
004ef214  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004ef21c  e83ffd1f00                CALL 0x006eef60
004ef221  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ef227  50                        PUSH EAX
004ef228  6a02                      PUSH 0x2
004ef22a  6a00                      PUSH 0x0
004ef22c  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004ef232  50                        PUSH EAX
004ef233  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
004ef239  50                        PUSH EAX
004ef23a  6a02                      PUSH 0x2
004ef23c  68e8030000                PUSH 0x3e8
004ef241  e8da98f3ff                CALL 0x00428b20
004ef246  6a01                      PUSH 0x1
004ef248  8bf0                      MOV ESI,EAX
004ef24a  8d45c0                    LEA EAX,[EBP + -0x40]
004ef24d  6a00                      PUSH 0x0
004ef24f  68ff000000                PUSH 0xff
004ef254  6aff                      PUSH -0x1
004ef256  8b16                      MOV EDX,dword ptr [ESI]
004ef258  8bce                      MOV ECX,ESI
004ef25a  50                        PUSH EAX
004ef25b  ff523c                    CALL dword ptr [EDX + 0x3c]
004ef25e  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004ef266  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
004ef270  f30f1186e0000000          MOVSS dword ptr [ESI + 0xe0],XMM0
004ef278  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
004ef282  e8d9fc1f00                CALL 0x006eef60
004ef287  660f6ec0                  MOVD XMM0,EAX
004ef28b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ef28f  c1e81f                    SHR EAX,0x1f
004ef292  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ef29b  660f5ac0                  CVTPD2PS XMM0,XMM0
004ef29f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ef2a7  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004ef2af  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
004ef2b7  e8a4fc1f00                CALL 0x006eef60
004ef2bc  50                        PUSH EAX
004ef2bd  6a00                      PUSH 0x0
004ef2bf  6a00                      PUSH 0x0
004ef2c1  6840b6c700                PUSH 0xc7b640
004ef2c6  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004ef2cc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ef2d2  50                        PUSH EAX
004ef2d3  6a07                      PUSH 0x7
004ef2d5  68e8030000                PUSH 0x3e8
004ef2da  e84198f3ff                CALL 0x00428b20
004ef2df  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004ef2e7  8bc8                      MOV ECX,EAX
004ef2e9  8b10                      MOV EDX,dword ptr [EAX]
004ef2eb  f30f118074030000          MOVSS dword ptr [EAX + 0x374],XMM0
004ef2f3  f30f118078030000          MOVSS dword ptr [EAX + 0x378],XMM0
004ef2fb  ff520c                    CALL dword ptr [EDX + 0xc]
004ef2fe  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
004ef304  e827fcf4ff                CALL 0x0043ef30
004ef309  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004ef311  0f57c9                    XORPS XMM1,XMM1
004ef314  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
004ef31c  50                        PUSH EAX
004ef31d  51                        PUSH ECX
004ef31e  c704240000a040            MOV dword ptr [ESP],0x40a00000
004ef325  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004ef32b  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004ef333  50                        PUSH EAX
004ef334  6a01                      PUSH 0x1
004ef336  8bcf                      MOV ECX,EDI
004ef338  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004ef340  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004ef348  f30f58c1                  ADDSS XMM0,XMM1
004ef34c  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004ef354  e877da1d00                CALL 0x006ccdd0
004ef359  8bf0                      MOV ESI,EAX
004ef35b  e800fc1f00                CALL 0x006eef60
004ef360  f30f108decfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffeec]
004ef368  660f6ec0                  MOVD XMM0,EAX
004ef36c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ef370  c1e81f                    SHR EAX,0x1f
004ef373  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ef37c  660f5ad0                  CVTPD2PS XMM2,XMM0
004ef380  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004ef388  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
004ef390  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
004ef398  f30f59c2                  MULSS XMM0,XMM2
004ef39c  f30f5cc8                  SUBSS XMM1,XMM0
004ef3a0  0f57c0                    XORPS XMM0,XMM0
004ef3a3  f30f59d0                  MULSS XMM2,XMM0
004ef3a7  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
004ef3af  f30f5cc2                  SUBSS XMM0,XMM2
004ef3b3  f30f118e3c030000          MOVSS dword ptr [ESI + 0x33c],XMM1
004ef3bb  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
004ef3c3  8bb50cffffff              MOV ESI,dword ptr [EBP + 0xffffff0c]
004ef3c9  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
004ef3d1  f30f580d04a9ba00          ADDSS XMM1,dword ptr [0x00baa904]
004ef3d9  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
004ef3e1  eb0d                      JMP 0x004ef3f0
004ef3e3  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
004ef3ed  0f57c9                    XORPS XMM1,XMM1
004ef3f0  83ad14ffffff01            SUB dword ptr [EBP + 0xffffff14],0x1
004ef3f7  0f57d2                    XORPS XMM2,XMM2
004ef3fa  0f8530fcffff              JNZ 0x004ef030
004ef400  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
004ef403  8bc1                      MOV EAX,ECX
004ef405  8b95fcfeffff              MOV EDX,dword ptr [EBP + 0xfffffefc]
004ef40b  f30f109fb00b0000          MOVSS XMM3,dword ptr [EDI + 0xbb0]
004ef413  0f2fda                    COMISS XMM3,XMM2
004ef416  0f86b4000000              JBE 0x004ef4d0
004ef41c  83f901                    CMP ECX,0x1
004ef41f  7549                      JNZ 0x004ef46a
004ef421  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
004ef428  740a                      JZ 0x004ef434
004ef42a  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
004ef432  eb08                      JMP 0x004ef43c
004ef434  f30f100da0adba00          MOVSS XMM1,dword ptr [0x00baada0]
004ef43c  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004ef444  f30f59cb                  MULSS XMM1,XMM3
004ef448  f30f59c8                  MULSS XMM1,XMM0
004ef44c  f30f59c2                  MULSS XMM0,XMM2
004ef450  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
004ef458  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
004ef460  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004ef468  eb37                      JMP 0x004ef4a1
004ef46a  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004ef472  f30f591d84a7ba00          MULSS XMM3,dword ptr [0x00baa784]
004ef47a  0f28c1                    MOVAPS XMM0,XMM1
004ef47d  f30f59c2                  MULSS XMM0,XMM2
004ef481  f30f59d9                  MULSS XMM3,XMM1
004ef485  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004ef48d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004ef495  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004ef49d  f30f5cc3                  SUBSS XMM0,XMM3
004ef4a1  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004ef4a9  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004ef4b1  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004ef4b9  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004ef4c1  f30f5cc1                  SUBSS XMM0,XMM1
004ef4c5  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004ef4cd  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004ef4d0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004ef4d4  740d                      JZ 0x004ef4e3
004ef4d6  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ef4dd  0f85f8050000              JNZ 0x004efadb
004ef4e3  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004ef4ed  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004ef4f7  83f801                    CMP EAX,0x1
004ef4fa  0f85db050000              JNZ 0x004efadb
004ef500  e85bfa1f00                CALL 0x006eef60
004ef505  33d2                      XOR EDX,EDX
004ef507  b93c000000                MOV ECX,0x3c
004ef50c  f7f1                      DIV ECX
004ef50e  03d1                      ADD EDX,ECX
004ef510  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004ef516  e9ba050000                JMP 0x004efad5
004ef51b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ef523  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
004ef52b  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ef533  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004ef53b  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004ef543  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004ef54b  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004ef553  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004ef55b  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004ef563  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004ef567  0f84e7020000              JZ 0x004ef854
004ef56d  68dcd2b100                PUSH 0xb1d2dc
004ef572  8d4f78                    LEA ECX,[EDI + 0x78]
004ef575  e856b8f1ff                CALL 0x0040add0
004ef57a  84c0                      TEST AL,AL
004ef57c  0f84d2020000              JZ 0x004ef854
004ef582  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004ef588  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
004ef58e  c78514ffffff0d000000      MOV dword ptr [EBP + 0xffffff14],0xd
004ef598  e8e3714600                CALL 0x00956780
004ef59d  83ec08                    SUB ESP,0x8
004ef5a0  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004ef5a8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ef5af  6a00                      PUSH 0x0
004ef5b1  6a02                      PUSH 0x2
004ef5b3  51                        PUSH ECX
004ef5b4  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ef5bb  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004ef5c1  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
004ef5c7  e864e64300                CALL 0x0092dc30
004ef5cc  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ef5d0  0f57c9                    XORPS XMM1,XMM1
004ef5d3  750f                      JNZ 0x004ef5e4
004ef5d5  c787b80b00000000a040      MOV dword ptr [EDI + 0xbb8],0x40a00000
004ef5df  e975010000                JMP 0x004ef759
004ef5e4  8b850cffffff              MOV EAX,dword ptr [EBP + 0xffffff0c]
004ef5ea  32c9                      XOR CL,CL
004ef5ec  0f57c0                    XORPS XMM0,XMM0
004ef5ef  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004ef5f7  8b8000730000              MOV EAX,dword ptr [EAX + 0x7300]
004ef5fd  8b30                      MOV ESI,dword ptr [EAX]
004ef5ff  3bf0                      CMP ESI,EAX
004ef601  0f8452010000              JZ 0x004ef759
004ef607  8b850cffffff              MOV EAX,dword ptr [EBP + 0xffffff0c]
004ef60d  0f1f00                    NOP dword ptr [EAX]
004ef610  817e1075030000            CMP dword ptr [ESI + 0x10],0x375
004ef617  750b                      JNZ 0x004ef624
004ef619  66837e1400                CMP word ptr [ESI + 0x14],0x0
004ef61e  0f8402010000              JZ 0x004ef726
004ef624  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004ef62c  8d5608                    LEA EDX,[ESI + 0x8]
004ef62f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004ef637  f30f5c0a                  SUBSS XMM1,dword ptr [EDX]
004ef63b  f30f5c4204                SUBSS XMM0,dword ptr [EDX + 0x4]
004ef640  f30f59c9                  MULSS XMM1,XMM1
004ef644  f30f59c0                  MULSS XMM0,XMM0
004ef648  f30f58c1                  ADDSS XMM0,XMM1
004ef64c  f30f100d24acba00          MOVSS XMM1,dword ptr [0x00baac24]
004ef654  0f2fc8                    COMISS XMM1,XMM0
004ef657  0f82c9000000              JC 0x004ef726
004ef65d  ff7618                    PUSH dword ptr [ESI + 0x18]
004ef660  0fb74616                  MOVZX EAX,word ptr [ESI + 0x16]
004ef664  0fb74e14                  MOVZX ECX,word ptr [ESI + 0x14]
004ef668  50                        PUSH EAX
004ef669  6a00                      PUSH 0x0
004ef66b  6840b6c700                PUSH 0xc7b640
004ef670  52                        PUSH EDX
004ef671  51                        PUSH ECX
004ef672  ff7610                    PUSH dword ptr [ESI + 0x10]
004ef675  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ef67b  e8a094f3ff                CALL 0x00428b20
004ef680  80bd0bffffff00            CMP byte ptr [EBP + 0xffffff0b],0x0
004ef687  8bc8                      MOV ECX,EAX
004ef689  898de8feffff              MOV dword ptr [EBP + 0xfffffee8],ECX
004ef68f  7425                      JZ 0x004ef6b6
004ef691  6a00                      PUSH 0x0
004ef693  8d4dc4                    LEA ECX,[EBP + -0x3c]
004ef696  e8751cf4ff                CALL 0x00431310
004ef69b  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
004ef6a1  8d45c4                    LEA EAX,[EBP + -0x3c]
004ef6a4  6a00                      PUSH 0x0
004ef6a6  6a00                      PUSH 0x0
004ef6a8  6aff                      PUSH -0x1
004ef6aa  50                        PUSH EAX
004ef6ab  e8c0e11b00                CALL 0x006ad870
004ef6b0  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
004ef6b6  8b01                      MOV EAX,dword ptr [ECX]
004ef6b8  ff500c                    CALL dword ptr [EAX + 0xc]
004ef6bb  8b85e8feffff              MOV EAX,dword ptr [EBP + 0xfffffee8]
004ef6c1  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004ef6c9  8b0e                      MOV ECX,dword ptr [ESI]
004ef6cb  898d04ffffff              MOV dword ptr [EBP + 0xffffff04],ECX
004ef6d1  f30f588084030000          ADDSS XMM0,dword ptr [EAX + 0x384]
004ef6d9  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ef6dc  6a20                      PUSH 0x20
004ef6de  56                        PUSH ESI
004ef6df  8908                      MOV dword ptr [EAX],ECX
004ef6e1  8b0e                      MOV ECX,dword ptr [ESI]
004ef6e3  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
004ef6e6  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
004ef6ee  894104                    MOV dword ptr [ECX + 0x4],EAX
004ef6f1  8b850cffffff              MOV EAX,dword ptr [EBP + 0xffffff0c]
004ef6f7  ff8804730000              DEC dword ptr [EAX + 0x7304]
004ef6fd  e85afa5f00                CALL 0x00aef15c
004ef702  f30f108510ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff10]
004ef70a  83c408                    ADD ESP,0x8
004ef70d  0f2f05d0a9ba00            COMISS XMM0,dword ptr [0x00baa9d0]
004ef714  b101                      MOV CL,0x1
004ef716  7320                      JNC 0x004ef738
004ef718  8bb504ffffff              MOV ESI,dword ptr [EBP + 0xffffff04]
004ef71e  8b850cffffff              MOV EAX,dword ptr [EBP + 0xffffff0c]
004ef724  eb02                      JMP 0x004ef728
004ef726  8b36                      MOV ESI,dword ptr [ESI]
004ef728  3bb000730000              CMP ESI,dword ptr [EAX + 0x7300]
004ef72e  0f85dcfeffff              JNZ 0x004ef610
004ef734  84c9                      TEST CL,CL
004ef736  741e                      JZ 0x004ef756
004ef738  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004ef740  51                        PUSH ECX
004ef741  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ef748  6a00                      PUSH 0x0
004ef74a  6a02                      PUSH 0x2
004ef74c  6809010000                PUSH 0x109
004ef751  e88a714600                CALL 0x009568e0
004ef756  0f57c9                    XORPS XMM1,XMM1
004ef759  8bb50cffffff              MOV ESI,dword ptr [EBP + 0xffffff0c]
004ef75f  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ef763  0f8535030000              JNZ 0x004efa9e
004ef769  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004ef771  0f2fc1                    COMISS XMM0,XMM1
004ef774  0f8624030000              JBE 0x004efa9e
004ef77a  f30f5c879c030000          SUBSS XMM0,dword ptr [EDI + 0x39c]
004ef782  0f2fc8                    COMISS XMM1,XMM0
004ef785  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004ef78d  0f820b030000              JC 0x004efa9e
004ef793  8bcf                      MOV ECX,EDI
004ef795  e8a6f01c00                CALL 0x006be840
004ef79a  8985f0feffff              MOV dword ptr [EBP + 0xfffffef0],EAX
004ef7a0  c785e0feffff00000000      MOV dword ptr [EBP + 0xfffffee0],0x0
004ef7aa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004ef7b0  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
004ef7b8  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
004ef7c0  0f28c1                    MOVAPS XMM0,XMM1
004ef7c3  f30f59c1                  MULSS XMM0,XMM1
004ef7c7  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
004ef7cf  0f28ca                    MOVAPS XMM1,XMM2
004ef7d2  f30f59ca                  MULSS XMM1,XMM2
004ef7d6  f30f11950cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM2
004ef7de  f30f58c1                  ADDSS XMM0,XMM1
004ef7e2  e86962f4ff                CALL 0x00435a50
004ef7e7  f30f100d20a0ba00          MOVSS XMM1,dword ptr [0x00baa020]
004ef7ef  0f2fc8                    COMISS XMM1,XMM0
004ef7f2  7668                      JBE 0x004ef85c
004ef7f4  e867f71f00                CALL 0x006eef60
004ef7f9  660f6ec0                  MOVD XMM0,EAX
004ef7fd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ef801  c1e81f                    SHR EAX,0x1f
004ef804  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ef80d  660f5ac0                  CVTPD2PS XMM0,XMM0
004ef811  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ef819  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004ef821  f30f58c0                  ADDSS XMM0,XMM0
004ef825  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004ef82d  e80eddf2ff                CALL 0x0041d540
004ef832  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ef83a  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004ef842  e8d9dcf2ff                CALL 0x0041d520
004ef847  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004ef84f  e9e9000000                JMP 0x004ef93d
004ef854  0f57c9                    XORPS XMM1,XMM1
004ef857  e903ffffff                JMP 0x004ef75f
004ef85c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004ef863  7633                      JBE 0x004ef898
004ef865  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004ef86d  f30f5ec8                  DIVSS XMM1,XMM0
004ef871  0f28c1                    MOVAPS XMM0,XMM1
004ef874  f30f5985e8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee8]
004ef87c  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004ef884  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
004ef88c  f30f59c1                  MULSS XMM0,XMM1
004ef890  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004ef898  e8c3f61f00                CALL 0x006eef60
004ef89d  0f57c0                    XORPS XMM0,XMM0
004ef8a0  f20f2ac0                  CVTSI2SD XMM0,EAX
004ef8a4  c1e81f                    SHR EAX,0x1f
004ef8a7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ef8b0  660f5ac0                  CVTPD2PS XMM0,XMM0
004ef8b4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ef8bc  f30f59055caaba00          MULSS XMM0,dword ptr [0x00baaa5c]
004ef8c4  f30f5c05a0a9ba00          SUBSS XMM0,dword ptr [0x00baa9a0]
004ef8cc  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004ef8d4  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004ef8dc  e85fdcf2ff                CALL 0x0041d540
004ef8e1  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004ef8e9  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
004ef8f1  e82adcf2ff                CALL 0x0041d520
004ef8f6  f30f109d0cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff0c]
004ef8fe  0f28c8                    MOVAPS XMM1,XMM0
004ef901  f30f109514ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff14]
004ef909  f30f10ade8feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffee8]
004ef911  f30f5985e8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee8]
004ef919  f30f59cb                  MULSS XMM1,XMM3
004ef91d  f30f59ea                  MULSS XMM5,XMM2
004ef921  f30f59da                  MULSS XMM3,XMM2
004ef925  f30f5ce9                  SUBSS XMM5,XMM1
004ef929  f30f58d8                  ADDSS XMM3,XMM0
004ef92d  f30f11ad14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM5
004ef935  f30f119d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM3
004ef93d  8b85f0feffff              MOV EAX,dword ptr [EBP + 0xfffffef0]
004ef943  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004ef94b  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004ef953  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004ef95b  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004ef963  e8f8f51f00                CALL 0x006eef60
004ef968  6a00                      PUSH 0x0
004ef96a  6a00                      PUSH 0x0
004ef96c  6a01                      PUSH 0x1
004ef96e  660f6ec0                  MOVD XMM0,EAX
004ef972  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ef976  c1e81f                    SHR EAX,0x1f
004ef979  51                        PUSH ECX
004ef97a  8bce                      MOV ECX,ESI
004ef97c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ef985  c7042400000000            MOV dword ptr [ESP],0x0
004ef98c  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004ef992  50                        PUSH EAX
004ef993  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004ef999  50                        PUSH EAX
004ef99a  660f5ac8                  CVTPD2PS XMM1,XMM0
004ef99e  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004ef9a6  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
004ef9ae  f30f580d24a9ba00          ADDSS XMM1,dword ptr [0x00baa924]
004ef9b6  0f28c1                    MOVAPS XMM0,XMM1
004ef9b9  f30f598d0cffffff          MULSS XMM1,dword ptr [EBP + 0xffffff0c]
004ef9c1  f30f598514ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff14]
004ef9c9  f30f588de8feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffee8]
004ef9d1  f30f588504ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff04]
004ef9d9  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
004ef9e1  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004ef9e9  e8323b3200                CALL 0x00813520
004ef9ee  80bd0bffffff00            CMP byte ptr [EBP + 0xffffff0b],0x0
004ef9f5  7565                      JNZ 0x004efa5c
004ef9f7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ef9fd  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004efa03  50                        PUSH EAX
004efa04  e8473f2100                CALL 0x00703950
004efa09  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
004efa11  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
004efa19  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004efa21  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004efa29  f30f59c0                  MULSS XMM0,XMM0
004efa2d  f30f59c9                  MULSS XMM1,XMM1
004efa31  f30f58c1                  ADDSS XMM0,XMM1
004efa35  0f2f05e0abba00            COMISS XMM0,dword ptr [0x00baabe0]
004efa3c  771e                      JA 0x004efa5c
004efa3e  8b85e0feffff              MOV EAX,dword ptr [EBP + 0xfffffee0]
004efa44  40                        INC EAX
004efa45  8985e0feffff              MOV dword ptr [EBP + 0xfffffee0],EAX
004efa4b  83f80a                    CMP EAX,0xa
004efa4e  8b85f0feffff              MOV EAX,dword ptr [EBP + 0xfffffef0]
004efa54  0f8256fdffff              JC 0x004ef7b0
004efa5a  eb38                      JMP 0x004efa94
004efa5c  e8fff41f00                CALL 0x006eef60
004efa61  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004efa67  50                        PUSH EAX
004efa68  6a00                      PUSH 0x0
004efa6a  57                        PUSH EDI
004efa6b  6840b6c700                PUSH 0xc7b640
004efa70  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004efa76  50                        PUSH EAX
004efa77  6a0a                      PUSH 0xa
004efa79  6875030000                PUSH 0x375
004efa7e  e89d90f3ff                CALL 0x00428b20
004efa83  8bf0                      MOV ESI,EAX
004efa85  57                        PUSH EDI
004efa86  8bce                      MOV ECX,ESI
004efa88  e813981b00                CALL 0x006a92a0
004efa8d  8b16                      MOV EDX,dword ptr [ESI]
004efa8f  8bce                      MOV ECX,ESI
004efa91  ff520c                    CALL dword ptr [EDX + 0xc]
004efa94  c787b80b000000000041      MOV dword ptr [EDI + 0xbb8],0x41000000
004efa9e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004efaa2  7409                      JZ 0x004efaad
004efaa4  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004efaab  7528                      JNZ 0x004efad5
004efaad  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004efab1  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004efabb  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004efac5  0f8435faffff              JZ 0x004ef500
004efacb  c787a00b00005a000000      MOV dword ptr [EDI + 0xba0],0x5a
004efad5  8b95fcfeffff              MOV EDX,dword ptr [EBP + 0xfffffefc]
004efadb  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
004efae1  85c9                      TEST ECX,ECX
004efae3  7e11                      JLE 0x004efaf6
004efae5  8bc1                      MOV EAX,ECX
004efae7  33c9                      XOR ECX,ECX
004efae9  2bc2                      SUB EAX,EDX
004efaeb  85c0                      TEST EAX,EAX
004efaed  0f4fc8                    CMOVG ECX,EAX
004efaf0  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
004efaf6  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004efafa  7529                      JNZ 0x004efb25
004efafc  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004efb01  33c0                      XOR EAX,EAX
004efb03  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
004efb0b  660f6ec9                  MOVD XMM1,ECX
004efb0f  0f5bc9                    CVTDQ2PS XMM1,XMM1
004efb12  f30f5cc8                  SUBSS XMM1,XMM0
004efb16  f30f2cc9                  CVTTSS2SI ECX,XMM1
004efb1a  85c9                      TEST ECX,ECX
004efb1c  0f4fc1                    CMOVG EAX,ECX
004efb1f  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
004efb25  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004efb28  64890d00000000            MOV dword ptr FS:[0x0],ECX
004efb2f  59                        POP ECX
004efb30  5f                        POP EDI
004efb31  5e                        POP ESI
004efb32  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004efb35  33cd                      XOR ECX,EBP
004efb37  e8eff55f00                CALL 0x00aef12b
004efb3c  8be5                      MOV ESP,EBP
004efb3e  5d                        POP EBP
004efb3f  8be3                      MOV ESP,EBX
004efb41  5b                        POP EBX
004efb42  c3                        RET
