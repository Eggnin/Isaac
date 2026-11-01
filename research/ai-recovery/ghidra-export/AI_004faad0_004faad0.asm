; J460 NPC AI 0x004faad0 AI_004faad0
; types=827
; identities=827.0.0,827.1.0
; entry=004faad0
004faad0  53                        PUSH EBX
004faad1  8bdc                      MOV EBX,ESP
004faad3  83ec08                    SUB ESP,0x8
004faad6  83e4f8                    AND ESP,0xfffffff8
004faad9  83c404                    ADD ESP,0x4
004faadc  55                        PUSH EBP
004faadd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004faae0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004faae4  8bec                      MOV EBP,ESP
004faae6  6aff                      PUSH -0x1
004faae8  681540af00                PUSH 0xaf4015
004faaed  64a100000000              MOV EAX,FS:[0x0]
004faaf3  50                        PUSH EAX
004faaf4  53                        PUSH EBX
004faaf5  81ec28010000              SUB ESP,0x128
004faafb  a1b493bf00                MOV EAX,[0x00bf93b4]
004fab00  33c5                      XOR EAX,EBP
004fab02  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004fab05  56                        PUSH ESI
004fab06  57                        PUSH EDI
004fab07  50                        PUSH EAX
004fab08  8d45f4                    LEA EAX,[EBP + -0xc]
004fab0b  64a300000000              MOV FS:[0x0],EAX
004fab11  8bf9                      MOV EDI,ECX
004fab13  a17816c700                MOV EAX,[0x00c71678]
004fab18  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
004fab20  660fd685ccfeffff          MOVQ qword ptr [EBP + 0xfffffecc],XMM0
004fab28  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004fab2e  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
004fab34  034720                    ADD EAX,dword ptr [EDI + 0x20]
004fab37  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
004fab3d  a174f6b100                MOV EAX,[0x00b1f674]
004fab42  8985d4feffff              MOV dword ptr [EBP + 0xfffffed4],EAX
004fab48  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004fab4e  89b5e8feffff              MOV dword ptr [EBP + 0xfffffee8],ESI
004fab54  83f810                    CMP EAX,0x10
004fab57  0f875e100000              JA 0x004fbbbb
004fab5d  0fb680f4bc4f00            MOVZX EAX,byte ptr [EAX + 0x4fbcf4]
004fab64  ff2485e0bc4f00            JMP dword ptr [EAX*0x4 + 0x4fbce0]
004fab6b  6a01                      PUSH 0x1
004fab6d  6818ddb100                PUSH 0xb1dd18
004fab72  8d4f48                    LEA ECX,[EDI + 0x48]
004fab75  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004fab7f  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004fab89  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004fab93  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004fab9d  e82efaf0ff                CALL 0x0040a5d0
004faba2  84c0                      TEST AL,AL
004faba4  7420                      JZ 0x004fabc6
004faba6  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004faba9  85c0                      TEST EAX,EAX
004fabab  7419                      JZ 0x004fabc6
004fabad  8d4f78                    LEA ECX,[EDI + 0x78]
004fabb0  0f57c9                    XORPS XMM1,XMM1
004fabb3  e848e2f0ff                CALL 0x00408e00
004fabb8  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004fabbb  85c0                      TEST EAX,EAX
004fabbd  7407                      JZ 0x004fabc6
004fabbf  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004fabc6  6a01                      PUSH 0x1
004fabc8  68d4feb500                PUSH 0xb5fed4
004fabcd  8d4f48                    LEA ECX,[EDI + 0x48]
004fabd0  e81bfff0ff                CALL 0x0040aaf0
004fabd5  84c0                      TEST AL,AL
004fabd7  0f84de0f0000              JZ 0x004fbbbb
004fabdd  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004fabe4  0f84d10f0000              JZ 0x004fbbbb
004fabea  8d8f98000000              LEA ECX,[EDI + 0x98]
004fabf0  0f57c9                    XORPS XMM1,XMM1
004fabf3  e808e2f0ff                CALL 0x00408e00
004fabf8  e9be0f0000                JMP 0x004fbbbb
004fabfd  a118ddb100                MOV EAX,[0x00b1dd18]
004fac02  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
004fac08  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004fac0f  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
004fac16  8945bc                    MOV dword ptr [EBP + -0x44],EAX
004fac19  894dc0                    MOV dword ptr [EBP + -0x40],ECX
004fac1c  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
004fac20  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004fac27  a130ddb100                MOV EAX,[0x00b1dd30]
004fac2c  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
004fac32  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004fac39  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
004fac40  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004fac43  894dd8                    MOV dword ptr [EBP + -0x28],ECX
004fac46  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
004fac4a  51                        PUSH ECX
004fac4b  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004fac4f  8d45bc                    LEA EAX,[EBP + -0x44]
004fac52  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
004fac59  8bcf                      MOV ECX,EDI
004fac5b  50                        PUSH EAX
004fac5c  8d45d4                    LEA EAX,[EBP + -0x2c]
004fac5f  50                        PUSH EAX
004fac60  e8cb661c00                CALL 0x006c1330
004fac65  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004fac69  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004fac6c  83fa10                    CMP EDX,0x10
004fac6f  7228                      JC 0x004fac99
004fac71  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004fac74  42                        INC EDX
004fac75  8bc1                      MOV EAX,ECX
004fac77  81fa00100000              CMP EDX,0x1000
004fac7d  7210                      JC 0x004fac8f
004fac7f  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004fac82  83c223                    ADD EDX,0x23
004fac85  2bc1                      SUB EAX,ECX
004fac87  83c0fc                    ADD EAX,-0x4
004fac8a  83f81f                    CMP EAX,0x1f
004fac8d  7749                      JA 0x004facd8
004fac8f  52                        PUSH EDX
004fac90  51                        PUSH ECX
004fac91  e8c6445f00                CALL 0x00aef15c
004fac96  83c408                    ADD ESP,0x8
004fac99  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004faca0  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004faca3  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004facaa  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004facb1  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
004facb5  83fa10                    CMP EDX,0x10
004facb8  722e                      JC 0x004face8
004facba  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
004facbd  42                        INC EDX
004facbe  8bc1                      MOV EAX,ECX
004facc0  81fa00100000              CMP EDX,0x1000
004facc6  7216                      JC 0x004facde
004facc8  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
004faccb  83c223                    ADD EDX,0x23
004facce  2bc1                      SUB EAX,ECX
004facd0  83c0fc                    ADD EAX,-0x4
004facd3  83f81f                    CMP EAX,0x1f
004facd6  7606                      JBE 0x004facde
004facd8  ff159488b100              CALL dword ptr [0x00b18894]
004facde  52                        PUSH EDX
004facdf  51                        PUSH ECX
004face0  e877445f00                CALL 0x00aef15c
004face5  83c408                    ADD ESP,0x8
004face8  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
004facef  0f85d6030000              JNZ 0x004fb0cb
004facf5  6a00                      PUSH 0x0
004facf7  8bcf                      MOV ECX,EDI
004facf9  e852e31d00                CALL 0x006d9050
004facfe  68dcd2b100                PUSH 0xb1d2dc
004fad03  8d8f98000000              LEA ECX,[EDI + 0x98]
004fad09  e8c200f1ff                CALL 0x0040add0
004fad0e  84c0                      TEST AL,AL
004fad10  0f846d030000              JZ 0x004fb083
004fad16  817f2840030000            CMP dword ptr [EDI + 0x28],0x340
004fad1d  0f8501020000              JNZ 0x004faf24
004fad23  8bcf                      MOV ECX,EDI
004fad25  e8163b1c00                CALL 0x006be840
004fad2a  8d8de0feffff              LEA ECX,[EBP + 0xfffffee0]
004fad30  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004fad38  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004fad40  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
004fad46  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004fad4e  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004fad56  50                        PUSH EAX
004fad57  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004fad5f  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
004fad67  e8c4525100                CALL 0x00a10030
004fad6c  8d8f200f0000              LEA ECX,[EDI + 0xf20]
004fad72  6840b6c700                PUSH 0xc7b640
004fad77  e8b4585100                CALL 0x00a10630
004fad7c  84c0                      TEST AL,AL
004fad7e  7427                      JZ 0x004fada7
004fad80  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
004fad86  50                        PUSH EAX
004fad87  e8a4525100                CALL 0x00a10030
004fad8c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004fad90  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fad98  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004fad9d  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fada5  eb20                      JMP 0x004fadc7
004fada7  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
004fadaf  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fadb7  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
004fadbf  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fadc7  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
004fadcd  e85e41f4ff                CALL 0x0043ef30
004fadd2  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
004fadda  8d4da8                    LEA ECX,[EBP + -0x58]
004faddd  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
004fade3  0f57d2                    XORPS XMM2,XMM2
004fade6  818d58ffffff00280000      OR dword ptr [EBP + 0xffffff58],0x2800
004fadf0  0f28cb                    MOVAPS XMM1,XMM3
004fadf3  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
004fadf9  e882acf3ff                CALL 0x00435a80
004fadfe  50                        PUSH EAX
004fadff  8d8d2cffffff              LEA ECX,[EBP + 0xffffff2c]
004fae05  e8e6c3f0ff                CALL 0x004071f0
004fae0a  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004fae12  8db73c030000              LEA ESI,[EDI + 0x33c]
004fae18  f30f118568ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM0
004fae20  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004fae26  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
004fae2b  8bcf                      MOV ECX,EDI
004fae2d  f30f11856cffffff          MOVSS dword ptr [EBP + 0xffffff6c],XMM0
004fae35  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
004fae3d  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
004fae45  50                        PUSH EAX
004fae46  6a00                      PUSH 0x0
004fae48  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004fae4e  c68500ffffff00            MOV byte ptr [EBP + 0xffffff00],0x0
004fae55  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004fae5d  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fae65  f30f5905b8a7ba00          MULSS XMM0,dword ptr [0x00baa7b8]
004fae6d  50                        PUSH EAX
004fae6e  56                        PUSH ESI
004fae6f  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004fae77  e864041d00                CALL 0x006cb2e0
004fae7c  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004fae84  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004fae8a  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
004fae91  8bcf                      MOV ECX,EDI
004fae93  50                        PUSH EAX
004fae94  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004fae9c  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
004faea2  f30f1085f8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef8]
004faeaa  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
004faeb1  6a00                      PUSH 0x0
004faeb3  50                        PUSH EAX
004faeb4  56                        PUSH ESI
004faeb5  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004faebd  e81e041d00                CALL 0x006cb2e0
004faec2  e899401f00                CALL 0x006eef60
004faec7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004faecd  50                        PUSH EAX
004faece  6a00                      PUSH 0x0
004faed0  6a00                      PUSH 0x0
004faed2  6840b6c700                PUSH 0xc7b640
004faed7  56                        PUSH ESI
004faed8  6a0b                      PUSH 0xb
004faeda  68e8030000                PUSH 0x3e8
004faedf  e83cdcf2ff                CALL 0x00428b20
004faee4  6a01                      PUSH 0x1
004faee6  6a00                      PUSH 0x0
004faee8  68ff000000                PUSH 0xff
004faeed  8b10                      MOV EDX,dword ptr [EAX]
004faeef  8bc8                      MOV ECX,EAX
004faef1  6aff                      PUSH -0x1
004faef3  68fc4dc300                PUSH 0xc34dfc
004faef8  c780dc00000000000000      MOV dword ptr [EAX + 0xdc],0x0
004faf02  c780e0000000000060c1      MOV dword ptr [EAX + 0xe0],0xc1600000
004faf0c  c7805803000000008040      MOV dword ptr [EAX + 0x358],0x40800000
004faf16  ff523c                    CALL dword ptr [EDX + 0x3c]
004faf19  8bb5e8feffff              MOV ESI,dword ptr [EBP + 0xfffffee8]
004faf1f  e920010000                JMP 0x004fb044
004faf24  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004faf28  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
004faf2e  0f8589000000              JNZ 0x004fafbd
004faf34  e8f73ff4ff                CALL 0x0043ef30
004faf39  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004faf3f  c78518ffffff00000000      MOV dword ptr [EBP + 0xffffff18],0x0
004faf49  50                        PUSH EAX
004faf4a  6a09                      PUSH 0x9
004faf4c  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004faf52  c78514ffffff6666a63f      MOV dword ptr [EBP + 0xffffff14],0x3fa66666
004faf5c  50                        PUSH EAX
004faf5d  8d873c030000              LEA EAX,[EDI + 0x33c]
004faf63  c7850cffffff8fc275bd      MOV dword ptr [EBP + 0xffffff0c],0xbd75c28f
004faf6d  50                        PUSH EAX
004faf6e  8bcf                      MOV ECX,EDI
004faf70  c785f4feffff00000041      MOV dword ptr [EBP + 0xfffffef4],0x41000000
004faf7a  c785f8feffff0000c040      MOV dword ptr [EBP + 0xfffffef8],0x40c00000
004faf84  e857031d00                CALL 0x006cb2e0
004faf89  e8d23f1f00                CALL 0x006eef60
004faf8e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004faf94  50                        PUSH EAX
004faf95  6a00                      PUSH 0x0
004faf97  6a00                      PUSH 0x0
004faf99  6840b6c700                PUSH 0xc7b640
004faf9e  8d873c030000              LEA EAX,[EDI + 0x33c]
004fafa4  50                        PUSH EAX
004fafa5  6a0b                      PUSH 0xb
004fafa7  68e8030000                PUSH 0x3e8
004fafac  e86fdbf2ff                CALL 0x00428b20
004fafb1  c780e0000000000080c1      MOV dword ptr [EAX + 0xe0],0xc1800000
004fafbb  eb73                      JMP 0x004fb030
004fafbd  e86e3ff4ff                CALL 0x0043ef30
004fafc2  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004fafc8  c78518ffffff00000000      MOV dword ptr [EBP + 0xffffff18],0x0
004fafd2  50                        PUSH EAX
004fafd3  6a09                      PUSH 0x9
004fafd5  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004fafdb  c785f4feffff0000e040      MOV dword ptr [EBP + 0xfffffef4],0x40e00000
004fafe5  50                        PUSH EAX
004fafe6  8d873c030000              LEA EAX,[EDI + 0x33c]
004fafec  c785f8feffff0000c040      MOV dword ptr [EBP + 0xfffffef8],0x40c00000
004faff6  50                        PUSH EAX
004faff7  8bcf                      MOV ECX,EDI
004faff9  e8e2021d00                CALL 0x006cb2e0
004faffe  e85d3f1f00                CALL 0x006eef60
004fb003  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fb009  50                        PUSH EAX
004fb00a  6a00                      PUSH 0x0
004fb00c  6a00                      PUSH 0x0
004fb00e  6840b6c700                PUSH 0xc7b640
004fb013  8d873c030000              LEA EAX,[EDI + 0x33c]
004fb019  50                        PUSH EAX
004fb01a  6a0b                      PUSH 0xb
004fb01c  68e8030000                PUSH 0x3e8
004fb021  e8fadaf2ff                CALL 0x00428b20
004fb026  c780e0000000000060c1      MOV dword ptr [EAX + 0xe0],0xc1600000
004fb030  c7805803000000008040      MOV dword ptr [EAX + 0x358],0x40800000
004fb03a  c780dc00000000000000      MOV dword ptr [EAX + 0xdc],0x0
004fb044  51                        PUSH ECX
004fb045  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fb04c  6a00                      PUSH 0x0
004fb04e  6a02                      PUSH 0x2
004fb050  51                        PUSH ECX
004fb051  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fb058  8bcf                      MOV ECX,EDI
004fb05a  68b2000000                PUSH 0xb2
004fb05f  e83cbb1d00                CALL 0x006d6ba0
004fb064  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004fb06c  0f57c9                    XORPS XMM1,XMM1
004fb06f  f30f5c05b8a7ba00          SUBSS XMM0,dword ptr [0x00baa7b8]
004fb077  f30f5fc1                  MAXSS XMM0,XMM1
004fb07b  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004fb083  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004fb08a  7409                      JZ 0x004fb095
004fb08c  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
004fb093  7559                      JNZ 0x004fb0ee
004fb095  6a01                      PUSH 0x1
004fb097  8d4f48                    LEA ECX,[EDI + 0x48]
004fb09a  68d4feb500                PUSH 0xb5fed4
004fb09f  e84cfaf0ff                CALL 0x0040aaf0
004fb0a4  84c0                      TEST AL,AL
004fb0a6  7417                      JZ 0x004fb0bf
004fb0a8  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004fb0af  740e                      JZ 0x004fb0bf
004fb0b1  8d8f98000000              LEA ECX,[EDI + 0x98]
004fb0b7  0f57c9                    XORPS XMM1,XMM1
004fb0ba  e841ddf0ff                CALL 0x00408e00
004fb0bf  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004fb0c9  eb23                      JMP 0x004fb0ee
004fb0cb  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004fb0d2  741a                      JZ 0x004fb0ee
004fb0d4  8d4f48                    LEA ECX,[EDI + 0x48]
004fb0d7  e8a4f6f0ff                CALL 0x0040a780
004fb0dc  8d8f98000000              LEA ECX,[EDI + 0x98]
004fb0e2  660f6ec8                  MOVD XMM1,EAX
004fb0e6  0f5bc9                    CVTDQ2PS XMM1,XMM1
004fb0e9  e812ddf0ff                CALL 0x00408e00
004fb0ee  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004fb0f5  0f853e010000              JNZ 0x004fb239
004fb0fb  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fb102  0f8527010000              JNZ 0x004fb22f
004fb108  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
004fb110  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
004fb117  0f8712010000              JA 0x004fb22f
004fb11d  33c9                      XOR ECX,ECX
004fb11f  898df0feffff              MOV dword ptr [EBP + 0xfffffef0],ECX
004fb125  398e64120000              CMP dword ptr [ESI + 0x1264],ECX
004fb12b  0f8608010000              JBE 0x004fb239
004fb131  8b865c120000              MOV EAX,dword ptr [ESI + 0x125c]
004fb137  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004fb13a  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004fb140  2500010000                AND EAX,0x100
004fb145  83c800                    OR EAX,0x0
004fb148  741f                      JZ 0x004fb169
004fb14a  6a00                      PUSH 0x0
004fb14c  8bce                      MOV ECX,ESI
004fb14e  e80d141b00                CALL 0x006ac560
004fb153  84c0                      TEST AL,AL
004fb155  7461                      JZ 0x004fb1b8
004fb157  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004fb15d  2500000020                AND EAX,0x20000000
004fb162  83c800                    OR EAX,0x0
004fb165  7413                      JZ 0x004fb17a
004fb167  eb4f                      JMP 0x004fb1b8
004fb169  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004fb16d  754f                      JNZ 0x004fb1be
004fb16f  8bce                      MOV ECX,ESI
004fb171  e84a812c00                CALL 0x007c32c0
004fb176  84c0                      TEST AL,AL
004fb178  753e                      JNZ 0x004fb1b8
004fb17a  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004fb182  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004fb18a  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004fb192  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004fb19a  f30f59c0                  MULSS XMM0,XMM0
004fb19e  f30f59c9                  MULSS XMM1,XMM1
004fb1a2  f30f58c1                  ADDSS XMM0,XMM1
004fb1a6  e8a5a8f3ff                CALL 0x00435a50
004fb1ab  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
004fb1b3  0f2fc8                    COMISS XMM1,XMM0
004fb1b6  7777                      JA 0x004fb22f
004fb1b8  8b8df0feffff              MOV ECX,dword ptr [EBP + 0xfffffef0]
004fb1be  817e283b030000            CMP dword ptr [ESI + 0x28],0x33b
004fb1c5  754d                      JNZ 0x004fb214
004fb1c7  83be1004000000            CMP dword ptr [ESI + 0x410],0x0
004fb1ce  7444                      JZ 0x004fb214
004fb1d0  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004fb1d8  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004fb1e0  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004fb1e8  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
004fb1f0  f30f59c0                  MULSS XMM0,XMM0
004fb1f4  f30f59c9                  MULSS XMM1,XMM1
004fb1f8  f30f58c1                  ADDSS XMM0,XMM1
004fb1fc  e84fa8f3ff                CALL 0x00435a50
004fb201  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
004fb209  0f2fc8                    COMISS XMM1,XMM0
004fb20c  7721                      JA 0x004fb22f
004fb20e  8b8df0feffff              MOV ECX,dword ptr [EBP + 0xfffffef0]
004fb214  8bb5e8feffff              MOV ESI,dword ptr [EBP + 0xfffffee8]
004fb21a  41                        INC ECX
004fb21b  898df0feffff              MOV dword ptr [EBP + 0xfffffef0],ECX
004fb221  3b8e64120000              CMP ECX,dword ptr [ESI + 0x1264]
004fb227  0f8204ffffff              JC 0x004fb131
004fb22d  eb0a                      JMP 0x004fb239
004fb22f  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
004fb239  e8223d1f00                CALL 0x006eef60
004fb23e  33d2                      XOR EDX,EDX
004fb240  b906000000                MOV ECX,0x6
004fb245  f7f1                      DIV ECX
004fb247  85d2                      TEST EDX,EDX
004fb249  7542                      JNZ 0x004fb28d
004fb24b  e8103d1f00                CALL 0x006eef60
004fb250  51                        PUSH ECX
004fb251  8bcf                      MOV ECX,EDI
004fb253  660f6ec0                  MOVD XMM0,EAX
004fb257  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fb25b  c1e81f                    SHR EAX,0x1f
004fb25e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fb267  660f5ac0                  CVTPD2PS XMM0,XMM0
004fb26b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fb273  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004fb27b  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
004fb283  f30f110424                MOVSS dword ptr [ESP],XMM0
004fb288  e843b21b00                CALL 0x006b64d0
004fb28d  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004fb293  2500080001                AND EAX,0x1000800
004fb298  83c800                    OR EAX,0x0
004fb29b  743e                      JZ 0x004fb2db
004fb29d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fb2a4  7535                      JNZ 0x004fb2db
004fb2a6  8bcf                      MOV ECX,EDI
004fb2a8  e893351c00                CALL 0x006be840
004fb2ad  6a00                      PUSH 0x0
004fb2af  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
004fb2b5  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
004fb2bb  8985f8feffff              MOV dword ptr [EBP + 0xfffffef8],EAX
004fb2c1  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004fb2c7  898df4feffff              MOV dword ptr [EBP + 0xfffffef4],ECX
004fb2cd  8d8f14040000              LEA ECX,[EDI + 0x414]
004fb2d3  50                        PUSH EAX
004fb2d4  e867962e00                CALL 0x007e4940
004fb2d9  eb16                      JMP 0x004fb2f1
004fb2db  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004fb2e2  752a                      JNZ 0x004fb30e
004fb2e4  6a00                      PUSH 0x0
004fb2e6  8d8f14040000              LEA ECX,[EDI + 0x414]
004fb2ec  e80fb02e00                CALL 0x007e6300
004fb2f1  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fb2f9  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004fb301  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fb309  e9ac020000                JMP 0x004fb5ba
004fb30e  817f2840030000            CMP dword ptr [EDI + 0x28],0x340
004fb315  0f856c020000              JNZ 0x004fb587
004fb31b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fb322  0f855f020000              JNZ 0x004fb587
004fb328  51                        PUSH ECX
004fb329  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004fb32f  c7042400000000            MOV dword ptr [ESP],0x0
004fb336  50                        PUSH EAX
004fb337  8bcf                      MOV ECX,EDI
004fb339  e802391c00                CALL 0x006bec40
004fb33e  8bcf                      MOV ECX,EDI
004fb340  e8fb341c00                CALL 0x006be840
004fb345  ff7720                    PUSH dword ptr [EDI + 0x20]
004fb348  8bcf                      MOV ECX,EDI
004fb34a  8bf0                      MOV ESI,EAX
004fb34c  6a1e                      PUSH 0x1e
004fb34e  e8bd131b00                CALL 0x006ac710
004fb353  84c0                      TEST AL,AL
004fb355  7420                      JZ 0x004fb377
004fb357  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
004fb35f  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
004fb367  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
004fb36f  f30f118fbc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM1
004fb377  8b8de8feffff              MOV ECX,dword ptr [EBP + 0xfffffee8]
004fb37d  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004fb383  6a00                      PUSH 0x0
004fb385  6a00                      PUSH 0x0
004fb387  6a00                      PUSH 0x0
004fb389  6a00                      PUSH 0x0
004fb38b  6a00                      PUSH 0x0
004fb38d  50                        PUSH EAX
004fb38e  8db73c030000              LEA ESI,[EDI + 0x33c]
004fb394  56                        PUSH ESI
004fb395  e8565a2f00                CALL 0x007f0df0
004fb39a  84c0                      TEST AL,AL
004fb39c  0f84ce010000              JZ 0x004fb570
004fb3a2  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004fb3a6  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
004fb3ac  f30f5c85f4feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffef4]
004fb3b4  a17816c700                MOV EAX,[0x00c71678]
004fb3b9  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004fb3c1  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
004fb3c6  f30f5c85f8feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffef8]
004fb3ce  8bb0f8640200              MOV ESI,dword ptr [EAX + 0x264f8]
004fb3d4  2bb728030000              SUB ESI,dword ptr [EDI + 0x328]
004fb3da  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fb3e2  e899dc2e00                CALL 0x007e9080
004fb3e7  660f6ec6                  MOVD XMM0,ESI
004fb3eb  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
004fb3f1  0f5bc0                    CVTDQ2PS XMM0,XMM0
004fb3f4  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fb3fc  d88dfcfeffff              FMUL dword ptr [EBP + 0xfffffefc]
004fb402  d99de8feffff              FSTP dword ptr [EBP + 0xfffffee8]
004fb408  e873dc2e00                CALL 0x007e9080
004fb40d  f30f108de8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee8]
004fb415  d99dfcfeffff              FSTP dword ptr [EBP + 0xfffffefc]
004fb41b  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fb423  f30f58c9                  ADDSS XMM1,XMM1
004fb427  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004fb42f  f30f58c1                  ADDSS XMM0,XMM1
004fb433  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004fb43b  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fb443  e8f820f2ff                CALL 0x0041d540
004fb448  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004fb450  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fb458  e8c320f2ff                CALL 0x0041d520
004fb45d  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
004fb465  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fb46d  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
004fb475  f30f59c0                  MULSS XMM0,XMM0
004fb479  f30f59c9                  MULSS XMM1,XMM1
004fb47d  f30f58c1                  ADDSS XMM0,XMM1
004fb481  e8caa5f3ff                CALL 0x00435a50
004fb486  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004fb48e  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
004fb494  8d8de0feffff              LEA ECX,[EBP + 0xfffffee0]
004fb49a  f30f109de8feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee8]
004fb4a2  0f57ed                    XORPS XMM5,XMM5
004fb4a5  f30f10a5fcfeffff          MOVSS XMM4,dword ptr [EBP + 0xfffffefc]
004fb4ad  0f28d3                    MOVAPS XMM2,XMM3
004fb4b0  f30f5fc5                  MAXSS XMM0,XMM5
004fb4b4  f30f59dd                  MULSS XMM3,XMM5
004fb4b8  50                        PUSH EAX
004fb4b9  0f28cc                    MOVAPS XMM1,XMM4
004fb4bc  f30f59cd                  MULSS XMM1,XMM5
004fb4c0  f30f5d0560a9ba00          MINSS XMM0,dword ptr [0x00baa960]
004fb4c8  f30f59d0                  MULSS XMM2,XMM0
004fb4cc  f30f59e0                  MULSS XMM4,XMM0
004fb4d0  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fb4d8  f30f5cd1                  SUBSS XMM2,XMM1
004fb4dc  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004fb4e4  f30f58e3                  ADDSS XMM4,XMM3
004fb4e8  f30f5895f4feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffef4]
004fb4f0  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fb4f8  f30f58a5f8feffff          ADDSS XMM4,dword ptr [EBP + 0xfffffef8]
004fb500  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
004fb508  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004fb510  f30f11a5f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM4
004fb518  f30f5ca740030000          SUBSS XMM4,dword ptr [EDI + 0x340]
004fb520  f30f1195e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM2
004fb528  f30f11a5e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM4
004fb530  e8fb4a5100                CALL 0x00a10030
004fb535  6a00                      PUSH 0x0
004fb537  8bcf                      MOV ECX,EDI
004fb539  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004fb53d  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004fb545  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004fb54d  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004fb552  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
004fb558  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004fb560  50                        PUSH EAX
004fb561  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004fb569  e8425ff3ff                CALL 0x004314b0
004fb56e  eb4a                      JMP 0x004fb5ba
004fb570  6a01                      PUSH 0x1
004fb572  6884030000                PUSH 0x384
004fb577  51                        PUSH ECX
004fb578  c704249a99193f            MOV dword ptr [ESP],0x3f19999a
004fb57f  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004fb585  eb27                      JMP 0x004fb5ae
004fb587  6a01                      PUSH 0x1
004fb589  6884030000                PUSH 0x384
004fb58e  83ec08                    SUB ESP,0x8
004fb591  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
004fb597  8bcf                      MOV ECX,EDI
004fb599  c74424049a99193f          MOV dword ptr [ESP + 0x4],0x3f19999a
004fb5a1  c7042400000000            MOV dword ptr [ESP],0x0
004fb5a8  50                        PUSH EAX
004fb5a9  e892361c00                CALL 0x006bec40
004fb5ae  50                        PUSH EAX
004fb5af  8d8f14040000              LEA ECX,[EDI + 0x414]
004fb5b5  e8067e2e00                CALL 0x007e33c0
004fb5ba  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
004fb5c1  0f8408010000              JZ 0x004fb6cf
004fb5c7  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004fb5ce  7429                      JZ 0x004fb5f9
004fb5d0  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
004fb5d8  8bcf                      MOV ECX,EDI
004fb5da  6a07                      PUSH 0x7
004fb5dc  6a00                      PUSH 0x0
004fb5de  e87df81c00                CALL 0x006cae60
004fb5e3  84c0                      TEST AL,AL
004fb5e5  0f84e4000000              JZ 0x004fb6cf
004fb5eb  6a01                      PUSH 0x1
004fb5ed  8bcf                      MOV ECX,EDI
004fb5ef  e85cda1d00                CALL 0x006d9050
004fb5f4  e9bd000000                JMP 0x004fb6b6
004fb5f9  817f348a030000            CMP dword ptr [EDI + 0x34],0x38a
004fb600  0f84c9000000              JZ 0x004fb6cf
004fb606  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004fb60e  e83da4f3ff                CALL 0x00435a50
004fb613  f30f590508a1ba00          MULSS XMM0,dword ptr [0x00baa108]
004fb61b  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
004fb61e  f30f580568a0ba00          ADDSS XMM0,dword ptr [0x00baa068]
004fb626  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fb62e  3d40030000                CMP EAX,0x340
004fb633  7510                      JNZ 0x004fb645
004fb635  f30f590520a2ba00          MULSS XMM0,dword ptr [0x00baa220]
004fb63d  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fb645  83bfd403000000            CMP dword ptr [EDI + 0x3d4],0x0
004fb64c  7410                      JZ 0x004fb65e
004fb64e  f30f590524a3ba00          MULSS XMM0,dword ptr [0x00baa324]
004fb656  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fb65e  3d3b030000                CMP EAX,0x33b
004fb663  751f                      JNZ 0x004fb684
004fb665  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004fb669  7519                      JNZ 0x004fb684
004fb66b  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
004fb672  7e10                      JLE 0x004fb684
004fb674  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004fb67c  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004fb684  e8d7381f00                CALL 0x006eef60
004fb689  f30f108df0feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef0]
004fb691  660f6ec0                  MOVD XMM0,EAX
004fb695  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fb699  c1e81f                    SHR EAX,0x1f
004fb69c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fb6a5  660f5ac0                  CVTPD2PS XMM0,XMM0
004fb6a9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fb6b1  0f2fc8                    COMISS XMM1,XMM0
004fb6b4  7219                      JC 0x004fb6cf
004fb6b6  6a00                      PUSH 0x0
004fb6b8  6854ddb100                PUSH 0xb1dd54
004fb6bd  8d4f48                    LEA ECX,[EDI + 0x48]
004fb6c0  e87bf2f0ff                CALL 0x0040a940
004fb6c5  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004fb6cf  817f283b030000            CMP dword ptr [EDI + 0x28],0x33b
004fb6d6  0f85df040000              JNZ 0x004fbbbb
004fb6dc  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004fb6e0  0f85d5040000              JNZ 0x004fbbbb
004fb6e6  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
004fb6e9  33d2                      XOR EDX,EDX
004fb6eb  b932000000                MOV ECX,0x32
004fb6f0  f30f100d24a9ba00          MOVSS XMM1,dword ptr [0x00baa924]
004fb6f8  f7f1                      DIV ECX
004fb6fa  8bcf                      MOV ECX,EDI
004fb6fc  660f6ec2                  MOVD XMM0,EDX
004fb700  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fb704  c1ea1f                    SHR EDX,0x1f
004fb707  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
004fb710  660f5ad0                  CVTPD2PS XMM2,XMM0
004fb714  e847101b00                CALL 0x006ac760
004fb719  85c0                      TEST EAX,EAX
004fb71b  0f849a040000              JZ 0x004fbbbb
004fb721  e83a381f00                CALL 0x006eef60
004fb726  a801                      TEST AL,0x1
004fb728  0f858d040000              JNZ 0x004fbbbb
004fb72e  51                        PUSH ECX
004fb72f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fb736  6a00                      PUSH 0x0
004fb738  6a02                      PUSH 0x2
004fb73a  51                        PUSH ECX
004fb73b  c704243333333f            MOV dword ptr [ESP],0x3f333333
004fb742  8bcf                      MOV ECX,EDI
004fb744  6a03                      PUSH 0x3
004fb746  e855b41d00                CALL 0x006d6ba0
004fb74b  e96b040000                JMP 0x004fbbbb
004fb750  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004fb757  740f                      JZ 0x004fb768
004fb759  8d8f98000000              LEA ECX,[EDI + 0x98]
004fb75f  e84cbcf0ff                CALL 0x004073b0
004fb764  84c0                      TEST AL,AL
004fb766  7568                      JNZ 0x004fb7d0
004fb768  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004fb76e  8d4f48                    LEA ECX,[EDI + 0x48]
004fb771  838f6801000001            OR dword ptr [EDI + 0x168],0x1
004fb778  6a00                      PUSH 0x0
004fb77a  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004fb780  e89bfaf0ff                CALL 0x0040b220
004fb785  c6407400                  MOV byte ptr [EAX + 0x74],0x0
004fb789  8b7730                    MOV ESI,dword ptr [EDI + 0x30]
004fb78c  8d46ff                    LEA EAX,[ESI + -0x1]
004fb78f  83f804                    CMP EAX,0x4
004fb792  7703                      JA 0x004fb797
004fb794  4e                        DEC ESI
004fb795  eb05                      JMP 0x004fb79c
004fb797  be01000000                MOV ESI,0x1
004fb79c  6a00                      PUSH 0x0
004fb79e  ff34b5400bb600            PUSH dword ptr [ESI*0x4 + 0xb60b40]
004fb7a5  8d4f48                    LEA ECX,[EDI + 0x48]
004fb7a8  e893f1f0ff                CALL 0x0040a940
004fb7ad  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004fb7b4  7409                      JZ 0x004fb7bf
004fb7b6  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
004fb7bd  7511                      JNZ 0x004fb7d0
004fb7bf  6a00                      PUSH 0x0
004fb7c1  ff34b5540bb600            PUSH dword ptr [ESI*0x4 + 0xb60b54]
004fb7c8  8d4f48                    LEA ECX,[EDI + 0x48]
004fb7cb  e870f1f0ff                CALL 0x0040a940
004fb7d0  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
004fb7d6  85d2                      TEST EDX,EDX
004fb7d8  0f8edd030000              JLE 0x004fbbbb
004fb7de  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004fb7e6  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004fb7ee  2bc8                      SUB ECX,EAX
004fb7f0  8d0411                    LEA EAX,[ECX + EDX*0x1]
004fb7f3  898710040000              MOV dword ptr [EDI + 0x410],EAX
004fb7f9  85c0                      TEST EAX,EAX
004fb7fb  0f8fba030000              JG 0x004fbbbb
004fb801  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
004fb80b  e9ab030000                JMP 0x004fbbbb
004fb810  6a00                      PUSH 0x0
004fb812  8d7748                    LEA ESI,[EDI + 0x48]
004fb815  68e4d3b100                PUSH 0xb1d3e4
004fb81a  8bce                      MOV ECX,ESI
004fb81c  e81ff1f0ff                CALL 0x0040a940
004fb821  68dcd2b100                PUSH 0xb1d2dc
004fb826  8d8f98000000              LEA ECX,[EDI + 0x98]
004fb82c  e89ff5f0ff                CALL 0x0040add0
004fb831  84c0                      TEST AL,AL
004fb833  0f84e7020000              JZ 0x004fbb20
004fb839  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004fb841  51                        PUSH ECX
004fb842  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fb849  6a00                      PUSH 0x0
004fb84b  6a02                      PUSH 0x2
004fb84d  6a1e                      PUSH 0x1e
004fb84f  e88cb04500                CALL 0x009568e0
004fb854  e807371f00                CALL 0x006eef60
004fb859  50                        PUSH EAX
004fb85a  6a01                      PUSH 0x1
004fb85c  6a00                      PUSH 0x0
004fb85e  6840b6c700                PUSH 0xc7b640
004fb863  8d8f3c030000              LEA ECX,[EDI + 0x33c]
004fb869  51                        PUSH ECX
004fb86a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fb870  6893000000                PUSH 0x93
004fb875  68e8030000                PUSH 0x3e8
004fb87a  e8a1d2f2ff                CALL 0x00428b20
004fb87f  8bf0                      MOV ESI,EAX
004fb881  8bce                      MOV ECX,ESI
004fb883  8b16                      MOV EDX,dword ptr [ESI]
004fb885  ff520c                    CALL dword ptr [EDX + 0xc]
004fb888  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
004fb892  c786e00000000000a0c1      MOV dword ptr [ESI + 0xe0],0xc1a00000
004fb89c  8b16                      MOV EDX,dword ptr [ESI]
004fb89e  51                        PUSH ECX
004fb89f  8bce                      MOV ECX,ESI
004fb8a1  c7042400000000            MOV dword ptr [ESP],0x0
004fb8a8  ff5240                    CALL dword ptr [EDX + 0x40]
004fb8ab  e8b0361f00                CALL 0x006eef60
004fb8b0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fb8b6  8db73c030000              LEA ESI,[EDI + 0x33c]
004fb8bc  50                        PUSH EAX
004fb8bd  6a03                      PUSH 0x3
004fb8bf  6a00                      PUSH 0x0
004fb8c1  6840b6c700                PUSH 0xc7b640
004fb8c6  56                        PUSH ESI
004fb8c7  6a02                      PUSH 0x2
004fb8c9  68e8030000                PUSH 0x3e8
004fb8ce  e84dd2f2ff                CALL 0x00428b20
004fb8d3  6a01                      PUSH 0x1
004fb8d5  6a00                      PUSH 0x0
004fb8d7  68ff000000                PUSH 0xff
004fb8dc  8b10                      MOV EDX,dword ptr [EAX]
004fb8de  8bc8                      MOV ECX,EAX
004fb8e0  6aff                      PUSH -0x1
004fb8e2  68a44dc300                PUSH 0xc34da4
004fb8e7  ff523c                    CALL dword ptr [EDX + 0x3c]
004fb8ea  e871361f00                CALL 0x006eef60
004fb8ef  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fb8f5  50                        PUSH EAX
004fb8f6  6a00                      PUSH 0x0
004fb8f8  6a00                      PUSH 0x0
004fb8fa  6840b6c700                PUSH 0xc7b640
004fb8ff  56                        PUSH ESI
004fb900  6a07                      PUSH 0x7
004fb902  68e8030000                PUSH 0x3e8
004fb907  e814d2f2ff                CALL 0x00428b20
004fb90c  6a01                      PUSH 0x1
004fb90e  8bf0                      MOV ESI,EAX
004fb910  6a00                      PUSH 0x0
004fb912  68ff000000                PUSH 0xff
004fb917  6aff                      PUSH -0x1
004fb919  8b16                      MOV EDX,dword ptr [ESI]
004fb91b  8bce                      MOV ECX,ESI
004fb91d  68a44dc300                PUSH 0xc34da4
004fb922  ff523c                    CALL dword ptr [EDX + 0x3c]
004fb925  8b06                      MOV EAX,dword ptr [ESI]
004fb927  8bce                      MOV ECX,ESI
004fb929  ff500c                    CALL dword ptr [EAX + 0xc]
004fb92c  e82f361f00                CALL 0x006eef60
004fb931  33d2                      XOR EDX,EDX
004fb933  b905000000                MOV ECX,0x5
004fb938  f7f1                      DIV ECX
004fb93a  83c203                    ADD EDX,0x3
004fb93d  8995f0feffff              MOV dword ptr [EBP + 0xfffffef0],EDX
004fb943  85d2                      TEST EDX,EDX
004fb945  0f8ed2010000              JLE 0x004fbb1d
004fb94b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004fb950  e80b361f00                CALL 0x006eef60
004fb955  660f6ec0                  MOVD XMM0,EAX
004fb959  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fb95d  c1e81f                    SHR EAX,0x1f
004fb960  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fb969  660f5ac8                  CVTPD2PS XMM1,XMM0
004fb96d  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004fb975  f30f590d04a7ba00          MULSS XMM1,dword ptr [0x00baa704]
004fb97d  f30f58c9                  ADDSS XMM1,XMM1
004fb981  0f28c1                    MOVAPS XMM0,XMM1
004fb984  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
004fb98c  e8af1bf2ff                CALL 0x0041d540
004fb991  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
004fb999  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004fb9a1  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004fb9a9  f30f1185d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM0
004fb9b1  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
004fb9b9  e8621bf2ff                CALL 0x0041d520
004fb9be  f30f598770030000          MULSS XMM0,dword ptr [EDI + 0x370]
004fb9c6  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004fb9ce  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004fb9d6  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
004fb9de  e87d351f00                CALL 0x006eef60
004fb9e3  660f6ec0                  MOVD XMM0,EAX
004fb9e7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fb9eb  c1e81f                    SHR EAX,0x1f
004fb9ee  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fb9f7  660f5ac0                  CVTPD2PS XMM0,XMM0
004fb9fb  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fba03  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004fba0b  f30f58c0                  ADDSS XMM0,XMM0
004fba0f  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004fba17  e844351f00                CALL 0x006eef60
004fba1c  660f6ec0                  MOVD XMM0,EAX
004fba20  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004fba24  c1e81f                    SHR EAX,0x1f
004fba27  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004fba30  660f5ac0                  CVTPD2PS XMM0,XMM0
004fba34  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004fba3c  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
004fba44  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
004fba4c  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
004fba54  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fba5c  e8df1af2ff                CALL 0x0041d540
004fba61  f30f5985e8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee8]
004fba69  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004fba71  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
004fba79  e8a21af2ff                CALL 0x0041d520
004fba7e  f30f5985e8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffee8]
004fba86  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
004fba8e  e8cd341f00                CALL 0x006eef60
004fba93  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004fba99  50                        PUSH EAX
004fba9a  6a00                      PUSH 0x0
004fba9c  6a00                      PUSH 0x0
004fba9e  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
004fbaa4  50                        PUSH EAX
004fbaa5  8d85d8feffff              LEA EAX,[EBP + 0xfffffed8]
004fbaab  50                        PUSH EAX
004fbaac  6a05                      PUSH 0x5
004fbaae  68e8030000                PUSH 0x3e8
004fbab3  e868d0f2ff                CALL 0x00428b20
004fbab8  6a01                      PUSH 0x1
004fbaba  8bf0                      MOV ESI,EAX
004fbabc  6a00                      PUSH 0x0
004fbabe  68ff000000                PUSH 0xff
004fbac3  6aff                      PUSH -0x1
004fbac5  8b16                      MOV EDX,dword ptr [ESI]
004fbac7  8bce                      MOV ECX,ESI
004fbac9  68fc4dc300                PUSH 0xc34dfc
004fbace  ff523c                    CALL dword ptr [EDX + 0x3c]
004fbad1  8d8ee4010000              LEA ECX,[ESI + 0x1e4]
004fbad7  81f9fc4dc300              CMP ECX,0xc34dfc
004fbadd  742a                      JZ 0x004fbb09
004fbadf  0f1005fc4dc300            MOVUPS XMM0,xmmword ptr [0x00c34dfc]
004fbae6  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
004fbae9  0f10050c4ec300            MOVUPS XMM0,xmmword ptr [0x00c34e0c]
004fbaf0  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
004fbaf4  f30f7e051c4ec300          MOVQ XMM0,qword ptr [0x00c34e1c]
004fbafc  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004fbb01  a1244ec300                MOV EAX,[0x00c34e24]
004fbb06  894128                    MOV dword ptr [ECX + 0x28],EAX
004fbb09  8b06                      MOV EAX,dword ptr [ESI]
004fbb0b  8bce                      MOV ECX,ESI
004fbb0d  ff500c                    CALL dword ptr [EAX + 0xc]
004fbb10  83adf0feffff01            SUB dword ptr [EBP + 0xfffffef0],0x1
004fbb17  0f8533feffff              JNZ 0x004fb950
004fbb1d  8d7748                    LEA ESI,[EDI + 0x48]
004fbb20  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
004fbb27  740d                      JZ 0x004fbb36
004fbb29  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
004fbb30  0f8585000000              JNZ 0x004fbbbb
004fbb36  6a00                      PUSH 0x0
004fbb38  8bce                      MOV ECX,ESI
004fbb3a  e8e1f6f0ff                CALL 0x0040b220
004fbb3f  6a00                      PUSH 0x0
004fbb41  6818ddb100                PUSH 0xb1dd18
004fbb46  8bce                      MOV ECX,ESI
004fbb48  c6407401                  MOV byte ptr [EAX + 0x74],0x1
004fbb4c  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004fbb56  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004fbb5e  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
004fbb66  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004fbb6e  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004fbb76  e865ebf0ff                CALL 0x0040a6e0
004fbb7b  6a01                      PUSH 0x1
004fbb7d  68d4feb500                PUSH 0xb5fed4
004fbb82  8bce                      MOV ECX,ESI
004fbb84  e867eff0ff                CALL 0x0040aaf0
004fbb89  84c0                      TEST AL,AL
004fbb8b  7411                      JZ 0x004fbb9e
004fbb8d  837e5400                  CMP dword ptr [ESI + 0x54],0x0
004fbb91  740b                      JZ 0x004fbb9e
004fbb93  8d4e50                    LEA ECX,[ESI + 0x50]
004fbb96  0f57c9                    XORPS XMM1,XMM1
004fbb99  e862d2f0ff                CALL 0x00408e00
004fbb9e  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004fbba4  83a768010000fe            AND dword ptr [EDI + 0x168],0xfffffffe
004fbbab  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004fbbb1  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
004fbbbb  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004fbbc2  745f                      JZ 0x004fbc23
004fbbc4  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
004fbbcc  0f2f0500aeba00            COMISS XMM0,dword ptr [0x00baae00]
004fbbd3  764e                      JBE 0x004fbc23
004fbbd5  e886331f00                CALL 0x006eef60
004fbbda  a801                      TEST AL,0x1
004fbbdc  7545                      JNZ 0x004fbc23
004fbbde  817f283b030000            CMP dword ptr [EDI + 0x28],0x33b
004fbbe5  7506                      JNZ 0x004fbbed
004fbbe7  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004fbbeb  7436                      JZ 0x004fbc23
004fbbed  e86e331f00                CALL 0x006eef60
004fbbf2  33d2                      XOR EDX,EDX
004fbbf4  b903000000                MOV ECX,0x3
004fbbf9  f7f1                      DIV ECX
004fbbfb  33c0                      XOR EAX,EAX
004fbbfd  8bcf                      MOV ECX,EDI
004fbbff  6aff                      PUSH -0x1
004fbc01  85d2                      TEST EDX,EDX
004fbc03  6a00                      PUSH 0x0
004fbc05  0f94c0                    SETZ AL
004fbc08  50                        PUSH EAX
004fbc09  6a0b                      PUSH 0xb
004fbc0b  e820531c00                CALL 0x006c0f30
004fbc10  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
004fbc16  898780030000              MOV dword ptr [EDI + 0x380],EAX
004fbc1c  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
004fbc23  f30f105714                MOVSS XMM2,dword ptr [EDI + 0x14]
004fbc28  0f57c9                    XORPS XMM1,XMM1
004fbc2b  0f2fd1                    COMISS XMM2,XMM1
004fbc2e  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004fbc36  760c                      JBE 0x004fbc44
004fbc38  f30f58c2                  ADDSS XMM0,XMM2
004fbc3c  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004fbc44  0f2fc1                    COMISS XMM0,XMM1
004fbc47  7614                      JBE 0x004fbc5d
004fbc49  f30f5c052ca1ba00          SUBSS XMM0,dword ptr [0x00baa12c]
004fbc51  f30f5fc1                  MAXSS XMM0,XMM1
004fbc55  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004fbc5d  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
004fbc65  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
004fbc6c  9f                        LAHF
004fbc6d  f6c444                    TEST AH,0x44
004fbc70  7a15                      JP 0x004fbc87
004fbc72  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004fbc7a  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004fbc81  9f                        LAHF
004fbc82  f6c444                    TEST AH,0x44
004fbc85  7b38                      JNP 0x004fbcbf
004fbc87  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
004fbc8f  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
004fbc97  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004fbc9f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fbca7  f30f5ed0                  DIVSS XMM2,XMM0
004fbcab  f30f5ec8                  DIVSS XMM1,XMM0
004fbcaf  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004fbcb7  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004fbcbf  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004fbcc2  64890d00000000            MOV dword ptr FS:[0x0],ECX
004fbcc9  59                        POP ECX
004fbcca  5f                        POP EDI
004fbccb  5e                        POP ESI
004fbccc  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004fbccf  33cd                      XOR ECX,EBP
004fbcd1  e855345f00                CALL 0x00aef12b
004fbcd6  8be5                      MOV ESP,EBP
004fbcd8  5d                        POP EBP
004fbcd9  8be3                      MOV ESP,EBX
004fbcdb  5b                        POP EBX
004fbcdc  c3                        RET
