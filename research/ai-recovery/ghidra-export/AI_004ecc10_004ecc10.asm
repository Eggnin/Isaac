; J460 NPC AI 0x004ecc10 AI_004ecc10
; types=841
; identities=841.0.0,841.1.0
; entry=004ecc10
004ecc10  53                        PUSH EBX
004ecc11  8bdc                      MOV EBX,ESP
004ecc13  83ec08                    SUB ESP,0x8
004ecc16  83e4f8                    AND ESP,0xfffffff8
004ecc19  83c404                    ADD ESP,0x4
004ecc1c  55                        PUSH EBP
004ecc1d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004ecc20  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004ecc24  8bec                      MOV EBP,ESP
004ecc26  6aff                      PUSH -0x1
004ecc28  68ed3daf00                PUSH 0xaf3ded
004ecc2d  64a100000000              MOV EAX,FS:[0x0]
004ecc33  50                        PUSH EAX
004ecc34  53                        PUSH EBX
004ecc35  81ec88000000              SUB ESP,0x88
004ecc3b  a1b493bf00                MOV EAX,[0x00bf93b4]
004ecc40  33c5                      XOR EAX,EBP
004ecc42  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004ecc45  56                        PUSH ESI
004ecc46  57                        PUSH EDI
004ecc47  50                        PUSH EAX
004ecc48  8d45f4                    LEA EAX,[EBP + -0xc]
004ecc4b  64a300000000              MOV FS:[0x0],EAX
004ecc51  8bf9                      MOV EDI,ECX
004ecc53  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004ecc5b  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004ecc61  c7459c30c3c500            MOV dword ptr [EBP + -0x64],0xc5c330
004ecc68  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004ecc70  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ecc78  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004ecc80  2bc8                      SUB ECX,EAX
004ecc82  894d90                    MOV dword ptr [EBP + -0x70],ECX
004ecc85  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ecc8d  83be846502002c            CMP dword ptr [ESI + 0x26584],0x2c
004ecc94  7511                      JNZ 0x004ecca7
004ecc96  ffb604830100              PUSH dword ptr [ESI + 0x18304]
004ecc9c  8bce                      MOV ECX,ESI
004ecc9e  e8ed292600                CALL 0x0074f690
004ecca3  8bd0                      MOV EDX,EAX
004ecca5  eb18                      JMP 0x004eccbf
004ecca7  83be0c83010002            CMP dword ptr [ESI + 0x1830c],0x2
004eccae  750c                      JNZ 0x004eccbc
004eccb0  c7857cffffff23000000      MOV dword ptr [EBP + 0xffffff7c],0x23
004eccba  eb15                      JMP 0x004eccd1
004eccbc  8b5604                    MOV EDX,dword ptr [ESI + 0x4]
004eccbf  8b0e                      MOV ECX,dword ptr [ESI]
004eccc1  6aff                      PUSH -0x1
004eccc3  e868033400                CALL 0x0082d030
004eccc8  89857cffffff              MOV dword ptr [EBP + 0xffffff7c],EAX
004eccce  83c404                    ADD ESP,0x4
004eccd1  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004eccd7  85c0                      TEST EAX,EAX
004eccd9  0f84680a0000              JZ 0x004ed747
004eccdf  be03000000                MOV ESI,0x3
004ecce4  83f804                    CMP EAX,0x4
004ecce7  0f8400040000              JZ 0x004ed0ed
004ecced  83f808                    CMP EAX,0x8
004eccf0  0f8546060000              JNZ 0x004ed33c
004eccf6  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
004eccfc  85c9                      TEST ECX,ECX
004eccfe  7466                      JZ 0x004ecd66
004ecd00  8b879c000000              MOV EAX,dword ptr [EDI + 0x9c]
004ecd06  7e1c                      JLE 0x004ecd24
004ecd08  8d8f98000000              LEA ECX,[EDI + 0x98]
004ecd0e  85c0                      TEST EAX,EAX
004ecd10  745a                      JZ 0x004ecd6c
004ecd12  80783400                  CMP byte ptr [EAX + 0x34],0x0
004ecd16  7454                      JZ 0x004ecd6c
004ecd18  c7459cf0c2c500            MOV dword ptr [EBP + -0x64],0xc5c2f0
004ecd1f  e9d5000000                JMP 0x004ecdf9
004ecd24  c7459ce0c2c500            MOV dword ptr [EBP + -0x64],0xc5c2e0
004ecd2b  85c0                      TEST EAX,EAX
004ecd2d  740d                      JZ 0x004ecd3c
004ecd2f  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
004ecd36  0f8500060000              JNZ 0x004ed33c
004ecd3c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004ecd46  e815222000                CALL 0x006eef60
004ecd4b  33d2                      XOR EDX,EDX
004ecd4d  b91e000000                MOV ECX,0x1e
004ecd52  f7f1                      DIV ECX
004ecd54  b8c4ffffff                MOV EAX,0xffffffc4
004ecd59  2bc2                      SUB EAX,EDX
004ecd5b  898710040000              MOV dword ptr [EDI + 0x410],EAX
004ecd61  e98b000000                JMP 0x004ecdf1
004ecd66  8d8f98000000              LEA ECX,[EDI + 0x98]
004ecd6c  68dcd2b100                PUSH 0xb1d2dc
004ecd71  c7459c20c3c500            MOV dword ptr [EBP + -0x64],0xc5c320
004ecd78  e853e0f1ff                CALL 0x0040add0
004ecd7d  84c0                      TEST AL,AL
004ecd7f  7451                      JZ 0x004ecdd2
004ecd81  51                        PUSH ECX
004ecd82  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ecd89  6a00                      PUSH 0x0
004ecd8b  6a5a                      PUSH 0x5a
004ecd8d  51                        PUSH ECX
004ecd8e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ecd95  8bcf                      MOV ECX,EDI
004ecd97  6831010000                PUSH 0x131
004ecd9c  e8ff9d1e00                CALL 0x006d6ba0
004ecda1  51                        PUSH ECX
004ecda2  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ecda9  6a00                      PUSH 0x0
004ecdab  6a0f                      PUSH 0xf
004ecdad  51                        PUSH ECX
004ecdae  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ecdb5  8bcf                      MOV ECX,EDI
004ecdb7  6830010000                PUSH 0x130
004ecdbc  e8df9d1e00                CALL 0x006d6ba0
004ecdc1  c787100400003c000000      MOV dword ptr [EDI + 0x410],0x3c
004ecdcb  b83c000000                MOV EAX,0x3c
004ecdd0  eb06                      JMP 0x004ecdd8
004ecdd2  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004ecdd8  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004ecddf  7409                      JZ 0x004ecdea
004ecde1  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
004ecde8  7507                      JNZ 0x004ecdf1
004ecdea  c7459cf0c2c500            MOV dword ptr [EBP + -0x64],0xc5c2f0
004ecdf1  85c0                      TEST EAX,EAX
004ecdf3  0f8e43050000              JLE 0x004ed33c
004ecdf9  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
004ecdfc  85c0                      TEST EAX,EAX
004ecdfe  0f8e38050000              JLE 0x004ed33c
004ece04  8db73c030000              LEA ESI,[EDI + 0x33c]
004ece0a  897594                    MOV dword ptr [EBP + -0x6c],ESI
004ece0d  0f1f00                    NOP dword ptr [EAX]
004ece10  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
004ece16  48                        DEC EAX
004ece17  898710040000              MOV dword ptr [EDI + 0x410],EAX
004ece1d  a801                      TEST AL,0x1
004ece1f  0f85da010000              JNZ 0x004ecfff
004ece25  e836212000                CALL 0x006eef60
004ece2a  660f6ec0                  MOVD XMM0,EAX
004ece2e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ece32  c1e81f                    SHR EAX,0x1f
004ece35  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ece3e  660f5ac0                  CVTPD2PS XMM0,XMM0
004ece42  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ece4a  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004ece52  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004ece5a  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
004ece62  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004ece6a  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
004ece6f  e8ac06f3ff                CALL 0x0041d520
004ece74  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
004ece79  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
004ece7e  e8bd06f3ff                CALL 0x0041d540
004ece83  0f28c8                    MOVAPS XMM1,XMM0
004ece86  b801000000                MOV EAX,0x1
004ece8b  39472c                    CMP dword ptr [EDI + 0x2c],EAX
004ece8e  b904000000                MOV ECX,0x4
004ece93  f30f104598                MOVSS XMM0,dword ptr [EBP + -0x68]
004ece98  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
004ecea0  0f44c1                    CMOVZ EAX,ECX
004ecea3  b9284ec300                MOV ECX,0xc34e28
004ecea8  83bd7cffffff20            CMP dword ptr [EBP + 0xffffff7c],0x20
004eceaf  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
004eceb7  89458c                    MOV dword ptr [EBP + -0x74],EAX
004eceba  b8784dc300                MOV EAX,0xc34d78
004ecebf  f30f114598                MOVSS dword ptr [EBP + -0x68],XMM0
004ecec4  0f45c1                    CMOVNZ EAX,ECX
004ecec7  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
004ececc  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004eced4  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
004ecedc  f30f114d80                MOVSS dword ptr [EBP + -0x80],XMM1
004ecee1  89856cffffff              MOV dword ptr [EBP + 0xffffff6c],EAX
004ecee7  e85406f3ff                CALL 0x0041d540
004eceec  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004ecef4  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004ecefc  e81f06f3ff                CALL 0x0041d520
004ecf01  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004ecf06  e855202000                CALL 0x006eef60
004ecf0b  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ecf11  50                        PUSH EAX
004ecf12  6a01                      PUSH 0x1
004ecf14  57                        PUSH EDI
004ecf15  8d4580                    LEA EAX,[EBP + -0x80]
004ecf18  50                        PUSH EAX
004ecf19  56                        PUSH ESI
004ecf1a  6a02                      PUSH 0x2
004ecf1c  6a09                      PUSH 0x9
004ecf1e  e8fdbbf3ff                CALL 0x00428b20
004ecf23  8bf0                      MOV ESI,EAX
004ecf25  6a01                      PUSH 0x1
004ecf27  6a00                      PUSH 0x0
004ecf29  68ff000000                PUSH 0xff
004ecf2e  8b0e                      MOV ECX,dword ptr [ESI]
004ecf30  6aff                      PUSH -0x1
004ecf32  ffb56cffffff              PUSH dword ptr [EBP + 0xffffff6c]
004ecf38  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
004ecf3b  8bce                      MOV ECX,ESI
004ecf3d  ffd2                      CALL EDX
004ecf3f  f30f108614040000          MOVSS XMM0,dword ptr [ESI + 0x414]
004ecf47  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004ecf4d  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
004ecf55  8b08                      MOV ECX,dword ptr [EAX]
004ecf57  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
004ecf5f  85c9                      TEST ECX,ECX
004ecf61  741e                      JZ 0x004ecf81
004ecf63  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
004ecf69  81c1cc030000              ADD ECX,0x3cc
004ecf6f  8d8568ffffff              LEA EAX,[EBP + 0xffffff68]
004ecf75  50                        PUSH EAX
004ecf76  e89522feff                CALL 0x004cf210
004ecf7b  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004ecf81  50                        PUSH EAX
004ecf82  8bcf                      MOV ECX,EDI
004ecf84  8938                      MOV dword ptr [EAX],EDI
004ecf86  e8650dfeff                CALL 0x004cdcf0
004ecf8b  56                        PUSH ESI
004ecf8c  8bcf                      MOV ECX,EDI
004ecf8e  e80de31d00                CALL 0x006cb2a0
004ecf93  8b06                      MOV EAX,dword ptr [ESI]
004ecf95  8bce                      MOV ECX,ESI
004ecf97  ff500c                    CALL dword ptr [EAX + 0xc]
004ecf9a  836d8c01                  SUB dword ptr [EBP + -0x74],0x1
004ecf9e  8db73c030000              LEA ESI,[EDI + 0x33c]
004ecfa4  f30f108d78ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff78]
004ecfac  f30f105598                MOVSS XMM2,dword ptr [EBP + -0x68]
004ecfb1  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004ecfb6  f30f598d74ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff74]
004ecfbe  f30f59c2                  MULSS XMM0,XMM2
004ecfc2  f30f599574ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff74]
004ecfca  f30f5cc8                  SUBSS XMM1,XMM0
004ecfce  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004ecfd3  f30f598578ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff78]
004ecfdb  f30f58d0                  ADDSS XMM2,XMM0
004ecfdf  0f28c1                    MOVAPS XMM0,XMM1
004ecfe2  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
004ecfea  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
004ecfef  f30f115598                MOVSS dword ptr [EBP + -0x68],XMM2
004ecff4  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
004ecff9  0f8507ffffff              JNZ 0x004ecf06
004ecfff  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
004ed002  8bcf                      MOV ECX,EDI
004ed004  89459c                    MOV dword ptr [EBP + -0x64],EAX
004ed007  e834181d00                CALL 0x006be840
004ed00c  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004ed014  8bf0                      MOV ESI,EAX
004ed016  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004ed01e  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004ed026  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004ed02e  f30f59c0                  MULSS XMM0,XMM0
004ed032  f30f59c9                  MULSS XMM1,XMM1
004ed036  f30f58c1                  ADDSS XMM0,XMM1
004ed03a  e8118af4ff                CALL 0x00435a50
004ed03f  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
004ed047  0f28d0                    MOVAPS XMM2,XMM0
004ed04a  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
004ed052  0f28c2                    MOVAPS XMM0,XMM2
004ed055  f30f599664030000          MULSS XMM2,dword ptr [ESI + 0x364]
004ed05d  f30f598660030000          MULSS XMM0,dword ptr [ESI + 0x360]
004ed065  f30f589640030000          ADDSS XMM2,dword ptr [ESI + 0x340]
004ed06d  8b7594                    MOV ESI,dword ptr [EBP + -0x6c]
004ed070  f30f58c8                  ADDSS XMM1,XMM0
004ed074  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
004ed079  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004ed07d  0f28c2                    MOVAPS XMM0,XMM2
004ed080  e8dbccfaff                CALL 0x00499d60
004ed085  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ed089  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ed091  f30f109fb00b0000          MOVSS XMM3,dword ptr [EDI + 0xbb0]
004ed099  750b                      JNZ 0x004ed0a6
004ed09b  0f28c3                    MOVAPS XMM0,XMM3
004ed09e  f30f5805fca6ba00          ADDSS XMM0,dword ptr [0x00baa6fc]
004ed0a6  f30f101584a7ba00          MOVSS XMM2,dword ptr [0x00baa784]
004ed0ae  0f28c8                    MOVAPS XMM1,XMM0
004ed0b1  0f28c3                    MOVAPS XMM0,XMM3
004ed0b4  e897591900                CALL 0x00682a50
004ed0b9  836d9001                  SUB dword ptr [EBP + -0x70],0x1
004ed0bd  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004ed0c5  0f8545fdffff              JNZ 0x004ece10
004ed0cb  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004ed0d2  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
004ed0d5  89459c                    MOV dword ptr [EBP + -0x64],EAX
004ed0d8  0f8f5e020000              JG 0x004ed33c
004ed0de  c78710040000ffffffff      MOV dword ptr [EDI + 0x410],0xffffffff
004ed0e8  e94f020000                JMP 0x004ed33c
004ed0ed  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004ed0f5  8d9760030000              LEA EDX,[EDI + 0x360]
004ed0fb  f30f1002                  MOVSS XMM0,dword ptr [EDX]
004ed0ff  f30f59c0                  MULSS XMM0,XMM0
004ed103  f30f59c9                  MULSS XMM1,XMM1
004ed107  f30f58c1                  ADDSS XMM0,XMM1
004ed10b  0f2f056ca0ba00            COMISS XMM0,dword ptr [0x00baa06c]
004ed112  7626                      JBE 0x004ed13a
004ed114  8d4d80                    LEA ECX,[EBP + -0x80]
004ed117  e854201900                CALL 0x0067f170
004ed11c  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004ed120  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004ed125  e836ccfaff                CALL 0x00499d60
004ed12a  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ed132  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004ed13a  f30f100dd0a8ba00          MOVSS XMM1,dword ptr [0x00baa8d0]
004ed142  0f57d2                    XORPS XMM2,XMM2
004ed145  8bcf                      MOV ECX,EDI
004ed147  e814f61b00                CALL 0x006ac760
004ed14c  85c0                      TEST EAX,EAX
004ed14e  7429                      JZ 0x004ed179
004ed150  e80b1e2000                CALL 0x006eef60
004ed155  33d2                      XOR EDX,EDX
004ed157  f7f6                      DIV ESI
004ed159  85d2                      TEST EDX,EDX
004ed15b  751c                      JNZ 0x004ed179
004ed15d  51                        PUSH ECX
004ed15e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ed165  52                        PUSH EDX
004ed166  6a78                      PUSH 0x78
004ed168  51                        PUSH ECX
004ed169  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004ed170  8bcf                      MOV ECX,EDI
004ed172  6a74                      PUSH 0x74
004ed174  e8279a1e00                CALL 0x006d6ba0
004ed179  8d8f14040000              LEA ECX,[EDI + 0x414]
004ed17f  e86c9e2f00                CALL 0x007e6ff0
004ed184  6a00                      PUSH 0x0
004ed186  51                        PUSH ECX
004ed187  8d8f14040000              LEA ECX,[EDI + 0x414]
004ed18d  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004ed194  e8a7812f00                CALL 0x007e5340
004ed199  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
004ed19f  85c9                      TEST ECX,ECX
004ed1a1  0f888a010000              JS 0x004ed331
004ed1a7  8bcf                      MOV ECX,EDI
004ed1a9  e892161d00                CALL 0x006be840
004ed1ae  8db73c030000              LEA ESI,[EDI + 0x33c]
004ed1b4  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004ed1bc  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004ed1c4  f30f114d94                MOVSS dword ptr [EBP + -0x6c],XMM1
004ed1c9  0f28d0                    MOVAPS XMM2,XMM0
004ed1cc  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
004ed1d1  f30f118d70ffffff          MOVSS dword ptr [EBP + 0xffffff70],XMM1
004ed1d9  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004ed1dd  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004ed1e2  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
004ed1ea  f30f115590                MOVSS dword ptr [EBP + -0x70],XMM2
004ed1ef  0f28c1                    MOVAPS XMM0,XMM1
004ed1f2  f30f114d98                MOVSS dword ptr [EBP + -0x68],XMM1
004ed1f7  f30f59c1                  MULSS XMM0,XMM1
004ed1fb  0f28ca                    MOVAPS XMM1,XMM2
004ed1fe  f30f59ca                  MULSS XMM1,XMM2
004ed202  f30f58c1                  ADDSS XMM0,XMM1
004ed206  e84588f4ff                CALL 0x00435a50
004ed20b  f30f105598                MOVSS XMM2,dword ptr [EBP + -0x68]
004ed210  0f28c8                    MOVAPS XMM1,XMM0
004ed213  f30f105d90                MOVSS XMM3,dword ptr [EBP + -0x70]
004ed218  0f57e4                    XORPS XMM4,XMM4
004ed21b  0f2fcc                    COMISS XMM1,XMM4
004ed21e  761e                      JBE 0x004ed23e
004ed220  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004ed228  f30f5ec1                  DIVSS XMM0,XMM1
004ed22c  f30f59d0                  MULSS XMM2,XMM0
004ed230  f30f59d8                  MULSS XMM3,XMM0
004ed234  f30f115598                MOVSS dword ptr [EBP + -0x68],XMM2
004ed239  f30f115d90                MOVSS dword ptr [EBP + -0x70],XMM3
004ed23e  0f28ca                    MOVAPS XMM1,XMM2
004ed241  0f28c3                    MOVAPS XMM0,XMM3
004ed244  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004ed24b  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004ed252  0f2fc8                    COMISS XMM1,XMM0
004ed255  760f                      JBE 0x004ed266
004ed257  33c0                      XOR EAX,EAX
004ed259  ba02000000                MOV EDX,0x2
004ed25e  0f2fe2                    COMISS XMM4,XMM2
004ed261  0f47d0                    CMOVA EDX,EAX
004ed264  eb0f                      JMP 0x004ed275
004ed266  33d2                      XOR EDX,EDX
004ed268  0f2fe3                    COMISS XMM4,XMM3
004ed26b  0f96c2                    SETBE DL
004ed26e  8d145501000000            LEA EDX,[EDX*0x2 + 0x1]
004ed275  8d4d80                    LEA ECX,[EBP + -0x80]
004ed278  e8531f1900                CALL 0x0067f1d0
004ed27d  f30f104d94                MOVSS XMM1,dword ptr [EBP + -0x6c]
004ed282  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
004ed287  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
004ed28c  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004ed290  f30f59c0                  MULSS XMM0,XMM0
004ed294  f30f59c9                  MULSS XMM1,XMM1
004ed298  f30f58c1                  ADDSS XMM0,XMM1
004ed29c  e8af87f4ff                CALL 0x00435a50
004ed2a1  f30f100de8aaba00          MOVSS XMM1,dword ptr [0x00baaae8]
004ed2a9  0f2fc8                    COMISS XMM1,XMM0
004ed2ac  0f868a000000              JBE 0x004ed33c
004ed2b2  f30f104d98                MOVSS XMM1,dword ptr [EBP + -0x68]
004ed2b7  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
004ed2bc  f30f594d80                MULSS XMM1,dword ptr [EBP + -0x80]
004ed2c1  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
004ed2c6  f30f58c8                  ADDSS XMM1,XMM0
004ed2ca  0f2f0de0a3ba00            COMISS XMM1,dword ptr [0x00baa3e0]
004ed2d1  7669                      JBE 0x004ed33c
004ed2d3  a17816c700                MOV EAX,[0x00c71678]
004ed2d8  8d8d70ffffff              LEA ECX,[EBP + 0xffffff70]
004ed2de  6a00                      PUSH 0x0
004ed2e0  6a00                      PUSH 0x0
004ed2e2  6a00                      PUSH 0x0
004ed2e4  6884030000                PUSH 0x384
004ed2e9  6a03                      PUSH 0x3
004ed2eb  51                        PUSH ECX
004ed2ec  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004ed2f2  56                        PUSH ESI
004ed2f3  e8f83a3000                CALL 0x007f0df0
004ed2f8  84c0                      TEST AL,AL
004ed2fa  7440                      JZ 0x004ed33c
004ed2fc  f30f104d80                MOVSS XMM1,dword ptr [EBP + -0x80]
004ed301  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
004ed306  e855cafaff                CALL 0x00499d60
004ed30b  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ed313  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004ed31b  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004ed325  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004ed32f  eb0b                      JMP 0x004ed33c
004ed331  8b4590                    MOV EAX,dword ptr [EBP + -0x70]
004ed334  03c1                      ADD EAX,ECX
004ed336  898710040000              MOV dword ptr [EDI + 0x410],EAX
004ed33c  a144e0b100                MOV EAX,[0x00b1e044]
004ed341  8b0d48e0b100              MOV ECX,dword ptr [0x00b1e048]
004ed347  c745b80f000000            MOV dword ptr [EBP + -0x48],0xf
004ed34e  c745b408000000            MOV dword ptr [EBP + -0x4c],0x8
004ed355  8945a4                    MOV dword ptr [EBP + -0x5c],EAX
004ed358  894da8                    MOV dword ptr [EBP + -0x58],ECX
004ed35b  c645ac00                  MOV byte ptr [EBP + -0x54],0x0
004ed35f  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004ed366  a120e0b100                MOV EAX,[0x00b1e020]
004ed36b  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004ed36e  66a124e0b100              MOV AX,[0x00b1e024]
004ed374  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004ed37b  c745cc06000000            MOV dword ptr [EBP + -0x34],0x6
004ed382  668945c0                  MOV word ptr [EBP + -0x40],AX
004ed386  c645c200                  MOV byte ptr [EBP + -0x3e],0x0
004ed38a  a130ddb100                MOV EAX,[0x00b1dd30]
004ed38f  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
004ed395  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004ed39c  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
004ed3a3  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004ed3a6  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004ed3a9  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
004ed3ad  51                        PUSH ECX
004ed3ae  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
004ed3b2  8d45a4                    LEA EAX,[EBP + -0x5c]
004ed3b5  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004ed3bc  8bcf                      MOV ECX,EDI
004ed3be  50                        PUSH EAX
004ed3bf  8d45bc                    LEA EAX,[EBP + -0x44]
004ed3c2  50                        PUSH EAX
004ed3c3  8d45d4                    LEA EAX,[EBP + -0x2c]
004ed3c6  50                        PUSH EAX
004ed3c7  e8f4411d00                CALL 0x006c15c0
004ed3cc  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004ed3d0  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004ed3d3  83fa10                    CMP EDX,0x10
004ed3d6  722c                      JC 0x004ed404
004ed3d8  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004ed3db  42                        INC EDX
004ed3dc  8bc1                      MOV EAX,ECX
004ed3de  81fa00100000              CMP EDX,0x1000
004ed3e4  7214                      JC 0x004ed3fa
004ed3e6  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004ed3e9  83c223                    ADD EDX,0x23
004ed3ec  2bc1                      SUB EAX,ECX
004ed3ee  83c0fc                    ADD EAX,-0x4
004ed3f1  83f81f                    CMP EAX,0x1f
004ed3f4  0f878f000000              JA 0x004ed489
004ed3fa  52                        PUSH EDX
004ed3fb  51                        PUSH ECX
004ed3fc  e85b1d6000                CALL 0x00aef15c
004ed401  83c408                    ADD ESP,0x8
004ed404  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004ed408  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004ed40b  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004ed412  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004ed419  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004ed41d  83fa10                    CMP EDX,0x10
004ed420  7228                      JC 0x004ed44a
004ed422  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004ed425  42                        INC EDX
004ed426  8bc1                      MOV EAX,ECX
004ed428  81fa00100000              CMP EDX,0x1000
004ed42e  7210                      JC 0x004ed440
004ed430  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004ed433  83c223                    ADD EDX,0x23
004ed436  2bc1                      SUB EAX,ECX
004ed438  83c0fc                    ADD EAX,-0x4
004ed43b  83f81f                    CMP EAX,0x1f
004ed43e  7749                      JA 0x004ed489
004ed440  52                        PUSH EDX
004ed441  51                        PUSH ECX
004ed442  e8151d6000                CALL 0x00aef15c
004ed447  83c408                    ADD ESP,0x8
004ed44a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004ed451  8b55b8                    MOV EDX,dword ptr [EBP + -0x48]
004ed454  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
004ed45b  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004ed462  c645bc00                  MOV byte ptr [EBP + -0x44],0x0
004ed466  83fa10                    CMP EDX,0x10
004ed469  722e                      JC 0x004ed499
004ed46b  8b4da4                    MOV ECX,dword ptr [EBP + -0x5c]
004ed46e  42                        INC EDX
004ed46f  8bc1                      MOV EAX,ECX
004ed471  81fa00100000              CMP EDX,0x1000
004ed477  7216                      JC 0x004ed48f
004ed479  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004ed47c  83c223                    ADD EDX,0x23
004ed47f  2bc1                      SUB EAX,ECX
004ed481  83c0fc                    ADD EAX,-0x4
004ed484  83f81f                    CMP EAX,0x1f
004ed487  7606                      JBE 0x004ed48f
004ed489  ff159488b100              CALL dword ptr [0x00b18894]
004ed48f  52                        PUSH EDX
004ed490  51                        PUSH ECX
004ed491  e8c61c6000                CALL 0x00aef15c
004ed496  83c408                    ADD ESP,0x8
004ed499  8a8748010000              MOV AL,byte ptr [EDI + 0x148]
004ed49f  8d7748                    LEA ESI,[EDI + 0x48]
004ed4a2  6a00                      PUSH 0x0
004ed4a4  8bce                      MOV ECX,ESI
004ed4a6  c745b400000000            MOV dword ptr [EBP + -0x4c],0x0
004ed4ad  c745b80f000000            MOV dword ptr [EBP + -0x48],0xf
004ed4b4  c645a400                  MOV byte ptr [EBP + -0x5c],0x0
004ed4b8  8845a3                    MOV byte ptr [EBP + -0x5d],AL
004ed4bb  e860ddf1ff                CALL 0x0040b220
004ed4c0  817d9cf0c2c500            CMP dword ptr [EBP + -0x64],0xc5c2f0
004ed4c7  8a4da3                    MOV CL,byte ptr [EBP + -0x5d]
004ed4ca  884832                    MOV byte ptr [EAX + 0x32],CL
004ed4cd  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
004ed4d4  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004ed4dc  0f85df000000              JNZ 0x004ed5c1
004ed4e2  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
004ed4ea  83ec08                    SUB ESP,0x8
004ed4ed  f30f5cc1                  SUBSS XMM0,XMM1
004ed4f1  f30f5905b4a0ba00          MULSS XMM0,dword ptr [0x00baa0b4]
004ed4f9  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004ed501  f30f114594                MOVSS dword ptr [EBP + -0x6c],XMM0
004ed506  d94594                    FLD dword ptr [EBP + -0x6c]
004ed509  dd1c24                    FSTP qword ptr [ESP]
004ed50c  e806346000                CALL 0x00af0917
004ed511  d95d94                    FSTP dword ptr [EBP + -0x6c]
004ed514  d94594                    FLD dword ptr [EBP + -0x6c]
004ed517  83c408                    ADD ESP,0x8
004ed51a  d95d94                    FSTP dword ptr [EBP + -0x6c]
004ed51d  f30f2c4594                CVTTSS2SI EAX,dword ptr [EBP + -0x6c]
004ed522  b903000000                MOV ECX,0x3
004ed527  83c00c                    ADD EAX,0xc
004ed52a  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ed52e  99                        CDQ
004ed52f  7405                      JZ 0x004ed536
004ed531  b90c000000                MOV ECX,0xc
004ed536  f7f9                      IDIV ECX
004ed538  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
004ed53b  8b7e54                    MOV EDI,dword ptr [ESI + 0x54]
004ed53e  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
004ed541  894d8c                    MOV dword ptr [EBP + -0x74],ECX
004ed544  85ff                      TEST EDI,EDI
004ed546  7440                      JZ 0x004ed588
004ed548  837f1410                  CMP dword ptr [EDI + 0x14],0x10
004ed54c  8bc7                      MOV EAX,EDI
004ed54e  7202                      JC 0x004ed552
004ed550  8b07                      MOV EAX,dword ptr [EDI]
004ed552  8a10                      MOV DL,byte ptr [EAX]
004ed554  3a11                      CMP DL,byte ptr [ECX]
004ed556  751a                      JNZ 0x004ed572
004ed558  84d2                      TEST DL,DL
004ed55a  7412                      JZ 0x004ed56e
004ed55c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004ed55f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004ed562  750e                      JNZ 0x004ed572
004ed564  83c002                    ADD EAX,0x2
004ed567  83c102                    ADD ECX,0x2
004ed56a  84d2                      TEST DL,DL
004ed56c  75e4                      JNZ 0x004ed552
004ed56e  33c0                      XOR EAX,EAX
004ed570  eb05                      JMP 0x004ed577
004ed572  1bc0                      SBB EAX,EAX
004ed574  83c801                    OR EAX,0x1
004ed577  85c0                      TEST EAX,EAX
004ed579  750a                      JNZ 0x004ed585
004ed57b  384734                    CMP byte ptr [EDI + 0x34],AL
004ed57e  7422                      JZ 0x004ed5a2
004ed580  384664                    CMP byte ptr [ESI + 0x64],AL
004ed583  751d                      JNZ 0x004ed5a2
004ed585  8b4d8c                    MOV ECX,dword ptr [EBP + -0x74]
004ed588  6a01                      PUSH 0x1
004ed58a  51                        PUSH ECX
004ed58b  8bce                      MOV ECX,ESI
004ed58d  e85ed5f1ff                CALL 0x0040aaf0
004ed592  84c0                      TEST AL,AL
004ed594  740c                      JZ 0x004ed5a2
004ed596  8d4e50                    LEA ECX,[ESI + 0x50]
004ed599  e812ccf1ff                CALL 0x0040a1b0
004ed59e  c6466401                  MOV byte ptr [ESI + 0x64],0x1
004ed5a2  6a01                      PUSH 0x1
004ed5a4  8bce                      MOV ECX,ESI
004ed5a6  e875dcf1ff                CALL 0x0040b220
004ed5ab  6a02                      PUSH 0x2
004ed5ad  8bce                      MOV ECX,ESI
004ed5af  c6403200                  MOV byte ptr [EAX + 0x32],0x0
004ed5b3  e868dcf1ff                CALL 0x0040b220
004ed5b8  c6403200                  MOV byte ptr [EAX + 0x32],0x0
004ed5bc  e961020000                JMP 0x004ed822
004ed5c1  f30f590d88a0ba00          MULSS XMM1,dword ptr [0x00baa088]
004ed5c9  0f28c1                    MOVAPS XMM0,XMM1
004ed5cc  f30f114d94                MOVSS dword ptr [EBP + -0x6c],XMM1
004ed5d1  e86afff2ff                CALL 0x0041d540
004ed5d6  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
004ed5db  f30f104594                MOVSS XMM0,dword ptr [EBP + -0x6c]
004ed5e0  e83bfff2ff                CALL 0x0041d520
004ed5e5  f30f105d88                MOVSS XMM3,dword ptr [EBP + -0x78]
004ed5ea  0f28c8                    MOVAPS XMM1,XMM0
004ed5ed  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004ed5f4  0f28d3                    MOVAPS XMM2,XMM3
004ed5f7  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
004ed5fe  0f2fd1                    COMISS XMM2,XMM1
004ed601  7612                      JBE 0x004ed615
004ed603  33c0                      XOR EAX,EAX
004ed605  0f57c0                    XORPS XMM0,XMM0
004ed608  0f2fc3                    COMISS XMM0,XMM3
004ed60b  b902000000                MOV ECX,0x2
004ed610  0f47c8                    CMOVA ECX,EAX
004ed613  eb12                      JMP 0x004ed627
004ed615  33c9                      XOR ECX,ECX
004ed617  0f57c9                    XORPS XMM1,XMM1
004ed61a  0f2fc8                    COMISS XMM1,XMM0
004ed61d  0f96c1                    SETBE CL
004ed620  8d0c4d01000000            LEA ECX,[ECX*0x2 + 0x1]
004ed627  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ed62b  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
004ed62e  7515                      JNZ 0x004ed645
004ed630  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
004ed633  8bce                      MOV ECX,ESI
004ed635  6a01                      PUSH 0x1
004ed637  894598                    MOV dword ptr [EBP + -0x68],EAX
004ed63a  e8e1dbf1ff                CALL 0x0040b220
004ed63f  c6403200                  MOV byte ptr [EAX + 0x32],0x0
004ed643  eb43                      JMP 0x004ed688
004ed645  83f903                    CMP ECX,0x3
004ed648  7507                      JNZ 0x004ed651
004ed64a  8b08                      MOV ECX,dword ptr [EAX]
004ed64c  894d98                    MOV dword ptr [EBP + -0x68],ECX
004ed64f  eb3d                      JMP 0x004ed68e
004ed651  83f901                    CMP ECX,0x1
004ed654  7508                      JNZ 0x004ed65e
004ed656  8b4804                    MOV ECX,dword ptr [EAX + 0x4]
004ed659  894d98                    MOV dword ptr [EBP + -0x68],ECX
004ed65c  eb30                      JMP 0x004ed68e
004ed65e  8b4008                    MOV EAX,dword ptr [EAX + 0x8]
004ed661  85c9                      TEST ECX,ECX
004ed663  6a02                      PUSH 0x2
004ed665  8bce                      MOV ECX,ESI
004ed667  894598                    MOV dword ptr [EBP + -0x68],EAX
004ed66a  0f9445a3                  SETZ byte ptr [EBP + -0x5d]
004ed66e  e8addbf1ff                CALL 0x0040b220
004ed673  8a4da3                    MOV CL,byte ptr [EBP + -0x5d]
004ed676  6a01                      PUSH 0x1
004ed678  884832                    MOV byte ptr [EAX + 0x32],CL
004ed67b  8bce                      MOV ECX,ESI
004ed67d  e89edbf1ff                CALL 0x0040b220
004ed682  8a4da3                    MOV CL,byte ptr [EBP + -0x5d]
004ed685  884832                    MOV byte ptr [EAX + 0x32],CL
004ed688  8b4d98                    MOV ECX,dword ptr [EBP + -0x68]
004ed68b  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
004ed68e  3d30c3c500                CMP EAX,0xc5c330
004ed693  7540                      JNZ 0x004ed6d5
004ed695  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004ed699  7409                      JZ 0x004ed6a4
004ed69b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ed6a2  7531                      JNZ 0x004ed6d5
004ed6a4  6a01                      PUSH 0x1
004ed6a6  51                        PUSH ECX
004ed6a7  8bce                      MOV ECX,ESI
004ed6a9  e842d4f1ff                CALL 0x0040aaf0
004ed6ae  84c0                      TEST AL,AL
004ed6b0  0f846c010000              JZ 0x004ed822
004ed6b6  837e5400                  CMP dword ptr [ESI + 0x54],0x0
004ed6ba  0f8462010000              JZ 0x004ed822
004ed6c0  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
004ed6c8  8d4e50                    LEA ECX,[ESI + 0x50]
004ed6cb  e830b7f1ff                CALL 0x00408e00
004ed6d0  e94d010000                JMP 0x004ed822
004ed6d5  8b7e54                    MOV EDI,dword ptr [ESI + 0x54]
004ed6d8  85ff                      TEST EDI,EDI
004ed6da  7445                      JZ 0x004ed721
004ed6dc  837f1410                  CMP dword ptr [EDI + 0x14],0x10
004ed6e0  8bc7                      MOV EAX,EDI
004ed6e2  7202                      JC 0x004ed6e6
004ed6e4  8b07                      MOV EAX,dword ptr [EDI]
004ed6e6  8a10                      MOV DL,byte ptr [EAX]
004ed6e8  3a11                      CMP DL,byte ptr [ECX]
004ed6ea  751a                      JNZ 0x004ed706
004ed6ec  84d2                      TEST DL,DL
004ed6ee  7412                      JZ 0x004ed702
004ed6f0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004ed6f3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004ed6f6  750e                      JNZ 0x004ed706
004ed6f8  83c002                    ADD EAX,0x2
004ed6fb  83c102                    ADD ECX,0x2
004ed6fe  84d2                      TEST DL,DL
004ed700  75e4                      JNZ 0x004ed6e6
004ed702  33c0                      XOR EAX,EAX
004ed704  eb05                      JMP 0x004ed70b
004ed706  1bc0                      SBB EAX,EAX
004ed708  83c801                    OR EAX,0x1
004ed70b  85c0                      TEST EAX,EAX
004ed70d  7512                      JNZ 0x004ed721
004ed70f  384734                    CMP byte ptr [EDI + 0x34],AL
004ed712  0f840a010000              JZ 0x004ed822
004ed718  384664                    CMP byte ptr [ESI + 0x64],AL
004ed71b  0f8501010000              JNZ 0x004ed822
004ed721  8b4598                    MOV EAX,dword ptr [EBP + -0x68]
004ed724  8bce                      MOV ECX,ESI
004ed726  6a01                      PUSH 0x1
004ed728  50                        PUSH EAX
004ed729  e8c2d3f1ff                CALL 0x0040aaf0
004ed72e  84c0                      TEST AL,AL
004ed730  0f84ec000000              JZ 0x004ed822
004ed736  8d4e50                    LEA ECX,[ESI + 0x50]
004ed739  e872caf1ff                CALL 0x0040a1b0
004ed73e  c6466401                  MOV byte ptr [ESI + 0x64],0x1
004ed742  e9db000000                JMP 0x004ed822
004ed747  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004ed751  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004ed75b  818f6801000000000100      OR dword ptr [EDI + 0x168],0x10000
004ed765  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004ed76b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004ed775  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004ed77b  8bb79c000000              MOV ESI,dword ptr [EDI + 0x9c]
004ed781  85f6                      TEST ESI,ESI
004ed783  7445                      JZ 0x004ed7ca
004ed785  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004ed789  8bc6                      MOV EAX,ESI
004ed78b  7202                      JC 0x004ed78f
004ed78d  8b06                      MOV EAX,dword ptr [ESI]
004ed78f  b95cffb500                MOV ECX,0xb5ff5c
004ed794  8a10                      MOV DL,byte ptr [EAX]
004ed796  3a11                      CMP DL,byte ptr [ECX]
004ed798  751a                      JNZ 0x004ed7b4
004ed79a  84d2                      TEST DL,DL
004ed79c  7412                      JZ 0x004ed7b0
004ed79e  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004ed7a1  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004ed7a4  750e                      JNZ 0x004ed7b4
004ed7a6  83c002                    ADD EAX,0x2
004ed7a9  83c102                    ADD ECX,0x2
004ed7ac  84d2                      TEST DL,DL
004ed7ae  75e4                      JNZ 0x004ed794
004ed7b0  33c0                      XOR EAX,EAX
004ed7b2  eb05                      JMP 0x004ed7b9
004ed7b4  1bc0                      SBB EAX,EAX
004ed7b6  83c801                    OR EAX,0x1
004ed7b9  85c0                      TEST EAX,EAX
004ed7bb  750d                      JNZ 0x004ed7ca
004ed7bd  384634                    CMP byte ptr [ESI + 0x34],AL
004ed7c0  742d                      JZ 0x004ed7ef
004ed7c2  3887ac000000              CMP byte ptr [EDI + 0xac],AL
004ed7c8  7525                      JNZ 0x004ed7ef
004ed7ca  6a01                      PUSH 0x1
004ed7cc  685cffb500                PUSH 0xb5ff5c
004ed7d1  8d4f48                    LEA ECX,[EDI + 0x48]
004ed7d4  e817d3f1ff                CALL 0x0040aaf0
004ed7d9  84c0                      TEST AL,AL
004ed7db  7412                      JZ 0x004ed7ef
004ed7dd  8d8f98000000              LEA ECX,[EDI + 0x98]
004ed7e3  e8c8c9f1ff                CALL 0x0040a1b0
004ed7e8  c687ac00000001            MOV byte ptr [EDI + 0xac],0x1
004ed7ef  6a01                      PUSH 0x1
004ed7f1  6818ddb100                PUSH 0xb1dd18
004ed7f6  8d4f48                    LEA ECX,[EDI + 0x48]
004ed7f9  e8d2cdf1ff                CALL 0x0040a5d0
004ed7fe  84c0                      TEST AL,AL
004ed800  7420                      JZ 0x004ed822
004ed802  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004ed805  85c0                      TEST EAX,EAX
004ed807  7419                      JZ 0x004ed822
004ed809  8d4f78                    LEA ECX,[EDI + 0x78]
004ed80c  0f57c9                    XORPS XMM1,XMM1
004ed80f  e8ecb5f1ff                CALL 0x00408e00
004ed814  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004ed817  85c0                      TEST EAX,EAX
004ed819  7407                      JZ 0x004ed822
004ed81b  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004ed822  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004ed825  64890d00000000            MOV dword ptr FS:[0x0],ECX
004ed82c  59                        POP ECX
004ed82d  5f                        POP EDI
004ed82e  5e                        POP ESI
004ed82f  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004ed832  33cd                      XOR ECX,EBP
004ed834  e8f2186000                CALL 0x00aef12b
004ed839  8be5                      MOV ESP,EBP
004ed83b  5d                        POP EBP
004ed83c  8be3                      MOV ESP,EBX
004ed83e  5b                        POP EBX
004ed83f  c3                        RET
