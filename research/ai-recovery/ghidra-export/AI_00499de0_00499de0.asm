; J460 NPC AI 0x00499de0 AI_00499de0
; types=916
; identities=916.0.0
; entry=00499de0
00499de0  53                        PUSH EBX
00499de1  8bdc                      MOV EBX,ESP
00499de3  83ec08                    SUB ESP,0x8
00499de6  83e4f8                    AND ESP,0xfffffff8
00499de9  83c404                    ADD ESP,0x4
00499dec  55                        PUSH EBP
00499ded  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00499df0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00499df4  8bec                      MOV EBP,ESP
00499df6  6aff                      PUSH -0x1
00499df8  68fb2eaf00                PUSH 0xaf2efb
00499dfd  64a100000000              MOV EAX,FS:[0x0]
00499e03  50                        PUSH EAX
00499e04  53                        PUSH EBX
00499e05  81ec08030000              SUB ESP,0x308
00499e0b  a1b493bf00                MOV EAX,[0x00bf93b4]
00499e10  33c5                      XOR EAX,EBP
00499e12  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00499e15  56                        PUSH ESI
00499e16  57                        PUSH EDI
00499e17  50                        PUSH EAX
00499e18  8d45f4                    LEA EAX,[EBP + -0xc]
00499e1b  64a300000000              MOV FS:[0x0],EAX
00499e21  8bf9                      MOV EDI,ECX
00499e23  89bd88fdffff              MOV dword ptr [EBP + 0xfffffd88],EDI
00499e29  a17816c700                MOV EAX,[0x00c71678]
00499e2e  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
00499e36  c68570fdffff00            MOV byte ptr [EBP + 0xfffffd70],0x0
00499e3d  c685c7fdffff00            MOV byte ptr [EBP + 0xfffffdc7],0x0
00499e44  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00499e4a  8985a4fdffff              MOV dword ptr [EBP + 0xfffffda4],EAX
00499e50  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00499e58  2bf0                      SUB ESI,EAX
00499e5a  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00499e61  89b584fdffff              MOV dword ptr [EBP + 0xfffffd84],ESI
00499e67  7408                      JZ 0x00499e71
00499e69  ff876c0b0000              INC dword ptr [EDI + 0xb6c]
00499e6f  eb0a                      JMP 0x00499e7b
00499e71  c7876c0b000000000000      MOV dword ptr [EDI + 0xb6c],0x0
00499e7b  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00499e82  0f57d2                    XORPS XMM2,XMM2
00499e85  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00499e8d  745b                      JZ 0x00499eea
00499e8f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00499e95  8d8dbcfdffff              LEA ECX,[EBP + 0xfffffdbc]
00499e9b  c785bcfdffffcf020000      MOV dword ptr [EBP + 0xfffffdbc],0x2cf
00499ea5  e8d6c84b00                CALL 0x00956780
00499eaa  83ec08                    SUB ESP,0x8
00499ead  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00499eb3  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00499ebb  c704240000803f            MOV dword ptr [ESP],0x3f800000
00499ec2  6a00                      PUSH 0x0
00499ec4  6a02                      PUSH 0x2
00499ec6  51                        PUSH ECX
00499ec7  c704240000803f            MOV dword ptr [ESP],0x3f800000
00499ece  ffb5bcfdffff              PUSH dword ptr [EBP + 0xfffffdbc]
00499ed4  e8573d4900                CALL 0x0092dc30
00499ed9  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00499ee1  0f57d2                    XORPS XMM2,XMM2
00499ee4  8bb584fdffff              MOV ESI,dword ptr [EBP + 0xfffffd84]
00499eea  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00499ef0  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
00499ef8  f30f102530a6ba00          MOVSS XMM4,dword ptr [0x00baa630]
00499f00  83f810                    CMP EAX,0x10
00499f03  0f8709130000              JA 0x0049b212
00499f09  0fb68024cb4900            MOVZX EAX,byte ptr [EAX + 0x49cb24]
00499f10  ff2485fcca4900            JMP dword ptr [EAX*0x4 + 0x49cafc]
00499f17  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00499f21  e83a502500                CALL 0x006eef60
00499f26  33d2                      XOR EDX,EDX
00499f28  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00499f32  b91e000000                MOV ECX,0x1e
00499f37  c7876c0b000000000000      MOV dword ptr [EDI + 0xb6c],0x0
00499f41  f7f1                      DIV ECX
00499f43  03d1                      ADD EDX,ECX
00499f45  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
00499f4b  c6874c0b000001            MOV byte ptr [EDI + 0xb4c],0x1
00499f52  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00499f58  8a8dc7fdffff              MOV CL,byte ptr [EBP + 0xfffffdc7]
00499f5e  83c028                    ADD EAX,0x28
00499f61  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00499f65  f30f118788030000          MOVSS dword ptr [EDI + 0x388],XMM0
00499f6d  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00499f74  0f84ff240000              JZ 0x0049c479
00499f7a  84c9                      TEST CL,CL
00499f7c  0f84f7240000              JZ 0x0049c479
00499f82  8bb778010000              MOV ESI,dword ptr [EDI + 0x178]
00499f88  32c0                      XOR AL,AL
00499f8a  8885c7fdffff              MOV byte ptr [EBP + 0xfffffdc7],AL
00499f90  3bb77c010000              CMP ESI,dword ptr [EDI + 0x17c]
00499f96  0f84dd240000              JZ 0x0049c479
00499f9c  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00499fa4  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00499fac  0f1f4000                  NOP dword ptr [EAX]
00499fb0  f30f108794010000          MOVSS XMM0,dword ptr [EDI + 0x194]
00499fb8  f30f59c2                  MULSS XMM0,XMM2
00499fbc  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00499fc4  f30f5806                  ADDSS XMM0,dword ptr [ESI]
00499fc8  f30f5cc1                  SUBSS XMM0,XMM1
00499fcc  f30f5ec1                  DIVSS XMM0,XMM1
00499fd0  f30f58c2                  ADDSS XMM0,XMM2
00499fd4  f30f2cd0                  CVTTSS2SI EDX,XMM0
00499fd8  f30f108798010000          MOVSS XMM0,dword ptr [EDI + 0x198]
00499fe0  f30f59c2                  MULSS XMM0,XMM2
00499fe4  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00499fec  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
00499ff1  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
00499ff9  f30f5ec1                  DIVSS XMM0,XMM1
00499ffd  f30f58c2                  ADDSS XMM0,XMM2
0049a001  f30f2cc8                  CVTTSS2SI ECX,XMM0
0049a005  85d2                      TEST EDX,EDX
0049a007  0f882c240000              JS 0x0049c439
0049a00d  8b85a4fdffff              MOV EAX,dword ptr [EBP + 0xfffffda4]
0049a013  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
0049a016  3bd0                      CMP EDX,EAX
0049a018  0f8d15240000              JGE 0x0049c433
0049a01e  85c9                      TEST ECX,ECX
0049a020  0f880d240000              JS 0x0049c433
0049a026  8bbda4fdffff              MOV EDI,dword ptr [EBP + 0xfffffda4]
0049a02c  3b4f10                    CMP ECX,dword ptr [EDI + 0x10]
0049a02f  8bbd88fdffff              MOV EDI,dword ptr [EBP + 0xfffffd88]
0049a035  0f8df8230000              JGE 0x0049c433
0049a03b  0fafc1                    IMUL EAX,ECX
0049a03e  03c2                      ADD EAX,EDX
0049a040  0f88ed230000              JS 0x0049c433
0049a046  3dc0010000                CMP EAX,0x1c0
0049a04b  0f8d59220000              JGE 0x0049c2aa
0049a051  8b8da4fdffff              MOV ECX,dword ptr [EBP + 0xfffffda4]
0049a057  8b4c8124                  MOV ECX,dword ptr [ECX + EAX*0x4 + 0x24]
0049a05b  898db8fdffff              MOV dword ptr [EBP + 0xfffffdb8],ECX
0049a061  e94e220000                JMP 0x0049c2b4
0049a066  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049a06e  8d4f48                    LEA ECX,[EDI + 0x48]
0049a071  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0049a079  6a00                      PUSH 0x0
0049a07b  6828d4b100                PUSH 0xb1d428
0049a080  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049a088  e8f302f7ff                CALL 0x0040a380
0049a08d  29b7c00b0000              SUB dword ptr [EDI + 0xbc0],ESI
0049a093  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0049a09a  7f2f                      JG 0x0049a0cb
0049a09c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0049a0a6  e8b54e2500                CALL 0x006eef60
0049a0ab  33d2                      XOR EDX,EDX
0049a0ad  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0049a0b7  b93c000000                MOV ECX,0x3c
0049a0bc  f7f1                      DIV ECX
0049a0be  03d1                      ADD EDX,ECX
0049a0c0  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0049a0c6  e987feffff                JMP 0x00499f52
0049a0cb  8bcf                      MOV ECX,EDI
0049a0cd  e86e472200                CALL 0x006be840
0049a0d2  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0049a0da  8bf0                      MOV ESI,EAX
0049a0dc  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
0049a0e4  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0049a0ec  f30f1185b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM0
0049a0f4  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0049a0fc  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0049a104  f30f59c9                  MULSS XMM1,XMM1
0049a108  f30f59c0                  MULSS XMM0,XMM0
0049a10c  f30f58c1                  ADDSS XMM0,XMM1
0049a110  e83bb9f9ff                CALL 0x00435a50
0049a115  f30f109db8fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdb8]
0049a11d  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049a123  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
0049a12b  8d8da8fdffff              LEA ECX,[EBP + 0xfffffda8]
0049a131  f30f59d8                  MULSS XMM3,XMM0
0049a135  50                        PUSH EAX
0049a136  f30f59d0                  MULSS XMM2,XMM0
0049a13a  f30f591d20a1ba00          MULSS XMM3,dword ptr [0x00baa120]
0049a142  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
0049a14a  f30f589e3c030000          ADDSS XMM3,dword ptr [ESI + 0x33c]
0049a152  f30f589640030000          ADDSS XMM2,dword ptr [ESI + 0x340]
0049a15a  8db73c030000              LEA ESI,[EDI + 0x33c]
0049a160  f30f119d8cfdffff          MOVSS dword ptr [EBP + 0xfffffd8c],XMM3
0049a168  f30f5c1e                  SUBSS XMM3,dword ptr [ESI]
0049a16c  f30f119590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM2
0049a174  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
0049a179  f30f119db8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM3
0049a181  f30f119da8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM3
0049a189  f30f1195acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM2
0049a191  e89a5e5700                CALL 0x00a10030
0049a196  f30f108da0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffda0]
0049a19e  0f2f0dfca1ba00            COMISS XMM1,dword ptr [0x00baa1fc]
0049a1a5  0f86a7fdffff              JBE 0x00499f52
0049a1ab  f30f1005e4a3ba00          MOVSS XMM0,dword ptr [0x00baa3e4]
0049a1b3  0f2fc1                    COMISS XMM0,XMM1
0049a1b6  0f8696fdffff              JBE 0x00499f52
0049a1bc  8b8da4fdffff              MOV ECX,dword ptr [EBP + 0xfffffda4]
0049a1c2  8d858cfdffff              LEA EAX,[EBP + 0xfffffd8c]
0049a1c8  6a00                      PUSH 0x0
0049a1ca  6a00                      PUSH 0x0
0049a1cc  6a00                      PUSH 0x0
0049a1ce  6a00                      PUSH 0x0
0049a1d0  6a01                      PUSH 0x1
0049a1d2  50                        PUSH EAX
0049a1d3  56                        PUSH ESI
0049a1d4  e8176c3500                CALL 0x007f0df0
0049a1d9  84c0                      TEST AL,AL
0049a1db  0f8471fdffff              JZ 0x00499f52
0049a1e1  e87a4d2500                CALL 0x006eef60
0049a1e6  33d2                      XOR EDX,EDX
0049a1e8  b90a000000                MOV ECX,0xa
0049a1ed  f7f1                      DIV ECX
0049a1ef  85d2                      TEST EDX,EDX
0049a1f1  0f855bfdffff              JNZ 0x00499f52
0049a1f7  52                        PUSH EDX
0049a1f8  68b8e5b100                PUSH 0xb1e5b8
0049a1fd  8d4f48                    LEA ECX,[EDI + 0x48]
0049a200  e87b01f7ff                CALL 0x0040a380
0049a205  0f57d2                    XORPS XMM2,XMM2
0049a208  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
0049a212  0f2f95b8fdffff            COMISS XMM2,dword ptr [EBP + 0xfffffdb8]
0049a219  0f97c0                    SETA AL
0049a21c  888748010000              MOV byte ptr [EDI + 0x148],AL
0049a222  e92bfdffff                JMP 0x00499f52
0049a227  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
0049a22d  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
0049a233  85f6                      TEST ESI,ESI
0049a235  7439                      JZ 0x0049a270
0049a237  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0049a23e  750c                      JNZ 0x0049a24c
0049a240  837e2805                  CMP dword ptr [ESI + 0x28],0x5
0049a244  7506                      JNZ 0x0049a24c
0049a246  837e2c14                  CMP dword ptr [ESI + 0x2c],0x14
0049a24a  7424                      JZ 0x0049a270
0049a24c  8985c0fdffff              MOV dword ptr [EBP + 0xfffffdc0],EAX
0049a252  8d8ecc030000              LEA ECX,[ESI + 0x3cc]
0049a258  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
0049a25e  50                        PUSH EAX
0049a25f  e8ac4f0300                CALL 0x004cf210
0049a264  c787ec0b000000000000      MOV dword ptr [EDI + 0xbec],0x0
0049a26e  eb25                      JMP 0x0049a295
0049a270  6a00                      PUSH 0x0
0049a272  6a03                      PUSH 0x3
0049a274  8bcf                      MOV ECX,EDI
0049a276  e895242100                CALL 0x006ac710
0049a27b  84c0                      TEST AL,AL
0049a27d  0f84ae010000              JZ 0x0049a431
0049a283  85f6                      TEST ESI,ESI
0049a285  740e                      JZ 0x0049a295
0049a287  e8d44c2500                CALL 0x006eef60
0049a28c  83e003                    AND EAX,0x3
0049a28f  0f859c010000              JNZ 0x0049a431
0049a295  8b8da4fdffff              MOV ECX,dword ptr [EBP + 0xfffffda4]
0049a29b  8d8594fdffff              LEA EAX,[EBP + 0xfffffd94]
0049a2a1  6a00                      PUSH 0x0
0049a2a3  6a00                      PUSH 0x0
0049a2a5  6aff                      PUSH -0x1
0049a2a7  6a14                      PUSH 0x14
0049a2a9  6a05                      PUSH 0x5
0049a2ab  8d8918120000              LEA ECX,[ECX + 0x1218]
0049a2b1  50                        PUSH EAX
0049a2b2  e8a90cf8ff                CALL 0x0041af60
0049a2b7  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0049a2be  33c0                      XOR EAX,EAX
0049a2c0  f30f100d7cacba00          MOVSS XMM1,dword ptr [0x00baac7c]
0049a2c8  33f6                      XOR ESI,ESI
0049a2ca  8b8da0fdffff              MOV ECX,dword ptr [EBP + 0xfffffda0]
0049a2d0  8985b8fdffff              MOV dword ptr [EBP + 0xfffffdb8],EAX
0049a2d6  f30f118dbcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM1
0049a2de  89b5b4fdffff              MOV dword ptr [EBP + 0xfffffdb4],ESI
0049a2e4  85c9                      TEST ECX,ECX
0049a2e6  0f8413010000              JZ 0x0049a3ff
0049a2ec  8b9598fdffff              MOV EDX,dword ptr [EBP + 0xfffffd98]
0049a2f2  8b34b2                    MOV ESI,dword ptr [EDX + ESI*0x4]
0049a2f5  85f6                      TEST ESI,ESI
0049a2f7  0f84b1000000              JZ 0x0049a3ae
0049a2fd  837e2805                  CMP dword ptr [ESI + 0x28],0x5
0049a301  0f85a7000000              JNZ 0x0049a3ae
0049a307  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0049a30e  0f859a000000              JNZ 0x0049a3ae
0049a314  83be3405000000            CMP dword ptr [ESI + 0x534],0x0
0049a31b  0f858d000000              JNZ 0x0049a3ae
0049a321  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
0049a327  8d8f14040000              LEA ECX,[EDI + 0x414]
0049a32d  8b9640030000              MOV EDX,dword ptr [ESI + 0x340]
0049a333  8985a8fdffff              MOV dword ptr [EBP + 0xfffffda8],EAX
0049a339  8d85a8fdffff              LEA EAX,[EBP + 0xfffffda8]
0049a33f  6a00                      PUSH 0x0
0049a341  50                        PUSH EAX
0049a342  8995acfdffff              MOV dword ptr [EBP + 0xfffffdac],EDX
0049a348  e823cd3400                CALL 0x007e7070
0049a34d  8b8da0fdffff              MOV ECX,dword ptr [EBP + 0xfffffda0]
0049a353  8b9598fdffff              MOV EDX,dword ptr [EBP + 0xfffffd98]
0049a359  84c0                      TEST AL,AL
0049a35b  744b                      JZ 0x0049a3a8
0049a35d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0049a365  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0049a36d  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
0049a375  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
0049a37d  f30f59c0                  MULSS XMM0,XMM0
0049a381  f30f59c9                  MULSS XMM1,XMM1
0049a385  f30f58c8                  ADDSS XMM1,XMM0
0049a389  f30f1085bcfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdbc]
0049a391  0f2fc1                    COMISS XMM0,XMM1
0049a394  7612                      JBE 0x0049a3a8
0049a396  8bc6                      MOV EAX,ESI
0049a398  f30f118dbcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM1
0049a3a0  8985b8fdffff              MOV dword ptr [EBP + 0xfffffdb8],EAX
0049a3a6  eb06                      JMP 0x0049a3ae
0049a3a8  8b85b8fdffff              MOV EAX,dword ptr [EBP + 0xfffffdb8]
0049a3ae  8bb5b4fdffff              MOV ESI,dword ptr [EBP + 0xfffffdb4]
0049a3b4  46                        INC ESI
0049a3b5  89b5b4fdffff              MOV dword ptr [EBP + 0xfffffdb4],ESI
0049a3bb  3bf1                      CMP ESI,ECX
0049a3bd  0f822fffffff              JC 0x0049a2f2
0049a3c3  85c0                      TEST EAX,EAX
0049a3c5  7438                      JZ 0x0049a3ff
0049a3c7  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0049a3cd  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
0049a3d3  85c9                      TEST ECX,ECX
0049a3d5  741e                      JZ 0x0049a3f5
0049a3d7  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
0049a3dd  89b5c0fdffff              MOV dword ptr [EBP + 0xfffffdc0],ESI
0049a3e3  81c1cc030000              ADD ECX,0x3cc
0049a3e9  50                        PUSH EAX
0049a3ea  e8214e0300                CALL 0x004cf210
0049a3ef  8b85b8fdffff              MOV EAX,dword ptr [EBP + 0xfffffdb8]
0049a3f5  56                        PUSH ESI
0049a3f6  8bc8                      MOV ECX,EAX
0049a3f8  8906                      MOV dword ptr [ESI],EAX
0049a3fa  e8f1380300                CALL 0x004cdcf0
0049a3ff  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0049a406  80bd94fdffff00            CMP byte ptr [EBP + 0xfffffd94],0x0
0049a40d  7522                      JNZ 0x0049a431
0049a40f  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0049a416  b101                      MOV CL,0x1
0049a418  8b9598fdffff              MOV EDX,dword ptr [EBP + 0xfffffd98]
0049a41e  6a00                      PUSH 0x0
0049a420  6a00                      PUSH 0x0
0049a422  e889a45c00                CALL 0x00a648b0
0049a427  83c408                    ADD ESP,0x8
0049a42a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0049a431  6a00                      PUSH 0x0
0049a433  8d4f48                    LEA ECX,[EDI + 0x48]
0049a436  68e4dcb100                PUSH 0xb1dce4
0049a43b  e840fff6ff                CALL 0x0040a380
0049a440  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0049a444  7435                      JZ 0x0049a47b
0049a446  68a8e5b100                PUSH 0xb1e5a8
0049a44b  8d4f78                    LEA ECX,[EDI + 0x78]
0049a44e  e87d09f7ff                CALL 0x0040add0
0049a453  84c0                      TEST AL,AL
0049a455  7424                      JZ 0x0049a47b
0049a457  51                        PUSH ECX
0049a458  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049a45f  6a00                      PUSH 0x0
0049a461  6a02                      PUSH 0x2
0049a463  51                        PUSH ECX
0049a464  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049a46b  8bcf                      MOV ECX,EDI
0049a46d  6a45                      PUSH 0x45
0049a46f  e82cc72300                CALL 0x006d6ba0
0049a474  b803000000                MOV EAX,0x3
0049a479  eb0a                      JMP 0x0049a485
0049a47b  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0049a481  85c0                      TEST EAX,EAX
0049a483  7e24                      JLE 0x0049a4a9
0049a485  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049a48d  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
0049a495  2b8584fdffff              SUB EAX,dword ptr [EBP + 0xfffffd84]
0049a49b  898710040000              MOV dword ptr [EDI + 0x410],EAX
0049a4a1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049a4a9  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0049a4af  85c0                      TEST EAX,EAX
0049a4b1  741d                      JZ 0x0049a4d0
0049a4b3  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0049a4bb  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0049a4c3  f30f11858cfdffff          MOVSS dword ptr [EBP + 0xfffffd8c],XMM0
0049a4cb  e93d010000                JMP 0x0049a60d
0049a4d0  51                        PUSH ECX
0049a4d1  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049a4d7  c7042400000000            MOV dword ptr [ESP],0x0
0049a4de  50                        PUSH EAX
0049a4df  8bcf                      MOV ECX,EDI
0049a4e1  e85a472200                CALL 0x006bec40
0049a4e6  8b8da4fdffff              MOV ECX,dword ptr [EBP + 0xfffffda4]
0049a4ec  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0049a4f0  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
0049a4f8  f30f11858cfdffff          MOVSS dword ptr [EBP + 0xfffffd8c],XMM0
0049a500  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0049a505  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049a50b  50                        PUSH EAX
0049a50c  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
0049a514  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
0049a51c  e8df873700                CALL 0x00812d00
0049a521  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0049a529  0f2f4004                  COMISS XMM0,dword ptr [EAX + 0x4]
0049a52d  0f86e2000000              JBE 0x0049a615
0049a533  8b8da4fdffff              MOV ECX,dword ptr [EBP + 0xfffffda4]
0049a539  8d85a8fdffff              LEA EAX,[EBP + 0xfffffda8]
0049a53f  50                        PUSH EAX
0049a540  8d858cfdffff              LEA EAX,[EBP + 0xfffffd8c]
0049a546  c785a8fdffff00000000      MOV dword ptr [EBP + 0xfffffda8],0x0
0049a550  50                        PUSH EAX
0049a551  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049a557  c785acfdffff000080bf      MOV dword ptr [EBP + 0xfffffdac],0xbf800000
0049a561  50                        PUSH EAX
0049a562  e8d9653500                CALL 0x007f0b40
0049a567  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0049a56c  f30f5c8dc0fdffff          SUBSS XMM1,dword ptr [EBP + 0xfffffdc0]
0049a574  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0049a578  f30f5c95b4fdffff          SUBSS XMM2,dword ptr [EBP + 0xfffffdb4]
0049a580  0f28c1                    MOVAPS XMM0,XMM1
0049a583  f30f118dbcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM1
0049a58b  f30f59c1                  MULSS XMM0,XMM1
0049a58f  0f28ca                    MOVAPS XMM1,XMM2
0049a592  f30f1195b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM2
0049a59a  f30f59ca                  MULSS XMM1,XMM2
0049a59e  f30f58c1                  ADDSS XMM0,XMM1
0049a5a2  e8a9b4f9ff                CALL 0x00435a50
0049a5a7  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
0049a5af  0f2fc1                    COMISS XMM0,XMM1
0049a5b2  7629                      JBE 0x0049a5dd
0049a5b4  0f57d2                    XORPS XMM2,XMM2
0049a5b7  0f2fc2                    COMISS XMM0,XMM2
0049a5ba  f30f1095b8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb8]
0049a5c2  7621                      JBE 0x0049a5e5
0049a5c4  f30f5ec8                  DIVSS XMM1,XMM0
0049a5c8  0f28c1                    MOVAPS XMM0,XMM1
0049a5cb  f30f59d0                  MULSS XMM2,XMM0
0049a5cf  f30f1085bcfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdbc]
0049a5d7  f30f59c1                  MULSS XMM0,XMM1
0049a5db  eb10                      JMP 0x0049a5ed
0049a5dd  f30f1095b8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb8]
0049a5e5  f30f1085bcfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdbc]
0049a5ed  f30f108db4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb4]
0049a5f5  f30f58ca                  ADDSS XMM1,XMM2
0049a5f9  f30f118d8cfdffff          MOVSS dword ptr [EBP + 0xfffffd8c],XMM1
0049a601  f30f108dc0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdc0]
0049a609  f30f58c8                  ADDSS XMM1,XMM0
0049a60d  f30f118d90fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM1
0049a615  83bfec0b000000            CMP dword ptr [EDI + 0xbec],0x0
0049a61c  8d8f14040000              LEA ECX,[EDI + 0x414]
0049a622  740a                      JZ 0x0049a62e
0049a624  f30f100518a4ba00          MOVSS XMM0,dword ptr [0x00baa418]
0049a62c  eb08                      JMP 0x0049a636
0049a62e  f30f1005a4a3ba00          MOVSS XMM0,dword ptr [0x00baa3a4]
0049a636  6a01                      PUSH 0x1
0049a638  6884030000                PUSH 0x384
0049a63d  51                        PUSH ECX
0049a63e  8d858cfdffff              LEA EAX,[EBP + 0xfffffd8c]
0049a644  f30f110424                MOVSS dword ptr [ESP],XMM0
0049a649  50                        PUSH EAX
0049a64a  e8718d3400                CALL 0x007e33c0
0049a64f  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
0049a655  2b8d84fdffff              SUB ECX,dword ptr [EBP + 0xfffffd84]
0049a65b  f30f10858cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd8c]
0049a663  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
0049a66a  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
0049a670  0f97c0                    SETA AL
0049a673  83bf6c0b000008            CMP dword ptr [EDI + 0xb6c],0x8
0049a67a  888748010000              MOV byte ptr [EDI + 0x148],AL
0049a680  0f8eb2000000              JLE 0x0049a738
0049a686  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0049a68d  0f8fa5000000              JG 0x0049a738
0049a693  c78710040000ffffffff      MOV dword ptr [EDI + 0x410],0xffffffff
0049a69d  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0049a6a5  8d4f48                    LEA ECX,[EDI + 0x48]
0049a6a8  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0049a6b0  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0049a6b8  6a01                      PUSH 0x1
0049a6ba  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0049a6c2  68b0e5b100                PUSH 0xb1e5b0
0049a6c7  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0049a6d1  e8fafef6ff                CALL 0x0040a5d0
0049a6d6  84c0                      TEST AL,AL
0049a6d8  740f                      JZ 0x0049a6e9
0049a6da  8d4f78                    LEA ECX,[EDI + 0x78]
0049a6dd  e8cefaf6ff                CALL 0x0040a1b0
0049a6e2  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0049a6e9  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0049a6ef  8d8dc0fdffff              LEA ECX,[EBP + 0xfffffdc0]
0049a6f5  c785c0fdffffd3020000      MOV dword ptr [EBP + 0xfffffdc0],0x2d3
0049a6ff  e87cc04b00                CALL 0x00956780
0049a704  83ec08                    SUB ESP,0x8
0049a707  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0049a70f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049a716  6a00                      PUSH 0x0
0049a718  6a02                      PUSH 0x2
0049a71a  51                        PUSH ECX
0049a71b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049a722  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0049a728  ffb5c0fdffff              PUSH dword ptr [EBP + 0xfffffdc0]
0049a72e  e8fd344900                CALL 0x0092dc30
0049a733  e9b6010000                JMP 0x0049a8ee
0049a738  83bfec0b000000            CMP dword ptr [EDI + 0xbec],0x0
0049a73f  0f8599010000              JNZ 0x0049a8de
0049a745  8bcf                      MOV ECX,EDI
0049a747  e8f4402200                CALL 0x006be840
0049a74c  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0049a754  8bf0                      MOV ESI,EAX
0049a756  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0049a75e  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0049a766  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0049a76e  f30f59c0                  MULSS XMM0,XMM0
0049a772  f30f59c9                  MULSS XMM1,XMM1
0049a776  f30f58c1                  ADDSS XMM0,XMM1
0049a77a  e8d1b2f9ff                CALL 0x00435a50
0049a77f  0f28d0                    MOVAPS XMM2,XMM0
0049a782  f30f598660030000          MULSS XMM0,dword ptr [ESI + 0x360]
0049a78a  f30f599664030000          MULSS XMM2,dword ptr [ESI + 0x364]
0049a792  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0049a79a  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
0049a7a2  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
0049a7aa  f30f589640030000          ADDSS XMM2,dword ptr [ESI + 0x340]
0049a7b2  f30f1185bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM0
0049a7ba  f30f1195c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM2
0049a7c2  e899472500                CALL 0x006eef60
0049a7c7  f30f101540cbba00          MOVSS XMM2,dword ptr [0x00bacb40]
0049a7cf  a803                      TEST AL,0x3
0049a7d1  7572                      JNZ 0x0049a845
0049a7d3  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049a7db  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0049a7e3  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0049a7eb  0f54c2                    ANDPS XMM0,XMM2
0049a7ee  0f2fc8                    COMISS XMM1,XMM0
0049a7f1  7252                      JC 0x0049a845
0049a7f3  f30f108dbcfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdbc]
0049a7fb  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0049a803  f30f100594aaba00          MOVSS XMM0,dword ptr [0x00baaa94]
0049a80b  0f54ca                    ANDPS XMM1,XMM2
0049a80e  0f2fc1                    COMISS XMM0,XMM1
0049a811  7232                      JC 0x0049a845
0049a813  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0049a81a  7e12                      JLE 0x0049a82e
0049a81c  e83f472500                CALL 0x006eef60
0049a821  33d2                      XOR EDX,EDX
0049a823  b932000000                MOV ECX,0x32
0049a828  f7f1                      DIV ECX
0049a82a  85d2                      TEST EDX,EDX
0049a82c  750f                      JNZ 0x0049a83d
0049a82e  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
0049a838  e960feffff                JMP 0x0049a69d
0049a83d  f30f101540cbba00          MOVSS XMM2,dword ptr [0x00bacb40]
0049a845  f30f1085bcfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdbc]
0049a84d  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0049a855  0f54c2                    ANDPS XMM0,XMM2
0049a858  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0049a860  0f2fd0                    COMISS XMM2,XMM0
0049a863  0f8285000000              JC 0x0049a8ee
0049a869  e8f2462500                CALL 0x006eef60
0049a86e  33d2                      XOR EDX,EDX
0049a870  b906000000                MOV ECX,0x6
0049a875  f7f1                      DIV ECX
0049a877  85d2                      TEST EDX,EDX
0049a879  7573                      JNZ 0x0049a8ee
0049a87b  f30f1085bcfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdbc]
0049a883  b9e4e5b100                MOV ECX,0xb1e5e4
0049a888  f30f108dc0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdc0]
0049a890  b8d8e5b100                MOV EAX,0xb1e5d8
0049a895  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
0049a89f  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0049a8a7  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0049a8af  52                        PUSH EDX
0049a8b0  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0049a8b8  0f57c0                    XORPS XMM0,XMM0
0049a8bb  0f2fc1                    COMISS XMM0,XMM1
0049a8be  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
0049a8c6  0f46c1                    CMOVBE EAX,ECX
0049a8c9  8d4f48                    LEA ECX,[EDI + 0x48]
0049a8cc  50                        PUSH EAX
0049a8cd  e8aefaf6ff                CALL 0x0040a380
0049a8d2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0049a8dc  eb10                      JMP 0x0049a8ee
0049a8de  b80f000000                MOV EAX,0xf
0049a8e3  3bc8                      CMP ECX,EAX
0049a8e5  0f4cc8                    CMOVL ECX,EAX
0049a8e8  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
0049a8ee  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0049a8f5  0f8f57f6ffff              JG 0x00499f52
0049a8fb  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0049a905  e856462500                CALL 0x006eef60
0049a90a  33d2                      XOR EDX,EDX
0049a90c  b914000000                MOV ECX,0x14
0049a911  f7f1                      DIV ECX
0049a913  83c20a                    ADD EDX,0xa
0049a916  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0049a91c  e931f6ffff                JMP 0x00499f52
0049a921  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049a929  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0049a931  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049a939  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0049a93d  0f844d010000              JZ 0x0049aa90
0049a943  68dcd2b100                PUSH 0xb1d2dc
0049a948  8d4f78                    LEA ECX,[EDI + 0x78]
0049a94b  e88004f7ff                CALL 0x0040add0
0049a950  84c0                      TEST AL,AL
0049a952  0f8430010000              JZ 0x0049aa88
0049a958  51                        PUSH ECX
0049a959  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049a960  6a00                      PUSH 0x0
0049a962  6a02                      PUSH 0x2
0049a964  51                        PUSH ECX
0049a965  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049a96c  8bcf                      MOV ECX,EDI
0049a96e  682f010000                PUSH 0x12f
0049a973  e828c22300                CALL 0x006d6ba0
0049a978  8bcf                      MOV ECX,EDI
0049a97a  e8c13e2200                CALL 0x006be840
0049a97f  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0049a987  8bf0                      MOV ESI,EAX
0049a989  0f28c8                    MOVAPS XMM1,XMM0
0049a98c  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
0049a994  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0049a99c  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
0049a9a4  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0049a9ac  f30f5cc2                  SUBSS XMM0,XMM2
0049a9b0  f30f1195c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM2
0049a9b8  f30f59c9                  MULSS XMM1,XMM1
0049a9bc  f30f59c0                  MULSS XMM0,XMM0
0049a9c0  f30f58c1                  ADDSS XMM0,XMM1
0049a9c4  e887b0f9ff                CALL 0x00435a50
0049a9c9  0f28c8                    MOVAPS XMM1,XMM0
0049a9cc  0f57ed                    XORPS XMM5,XMM5
0049a9cf  0f2f0d20a0ba00            COMISS XMM1,dword ptr [0x00baa020]
0049a9d6  7616                      JBE 0x0049a9ee
0049a9d8  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049a9e0  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0049a9e8  f30f5ec1                  DIVSS XMM0,XMM1
0049a9ec  eb03                      JMP 0x0049a9f1
0049a9ee  0f57c0                    XORPS XMM0,XMM0
0049a9f1  f30f10355ca7ba00          MOVSS XMM6,dword ptr [0x00baa75c]
0049a9f9  f30f101d90adba00          MOVSS XMM3,dword ptr [0x00baad90]
0049aa01  f30f1025ccadba00          MOVSS XMM4,dword ptr [0x00baadcc]
0049aa09  f30f100d34a8ba00          MOVSS XMM1,dword ptr [0x00baa834]
0049aa11  0f28d4                    MOVAPS XMM2,XMM4
0049aa14  f30f59c6                  MULSS XMM0,XMM6
0049aa18  c787b00b0000000040c1      MOV dword ptr [EDI + 0xbb0],0xc1400000
0049aa22  f30f5fc3                  MAXSS XMM0,XMM3
0049aa26  f30f5dc6                  MINSS XMM0,XMM6
0049aa2a  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0049aa32  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0049aa39  740d                      JZ 0x0049aa48
0049aa3b  c787b00b000000004041      MOV dword ptr [EDI + 0xbb0],0x41400000
0049aa45  0f28d1                    MOVAPS XMM2,XMM1
0049aa48  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0049aa4f  7537                      JNZ 0x0049aa88
0049aa51  0f2fea                    COMISS XMM5,XMM2
0049aa54  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0049aa5c  f30f5c85b4fdffff          SUBSS XMM0,dword ptr [EBP + 0xfffffdb4]
0049aa64  f30f5e057ca8ba00          DIVSS XMM0,dword ptr [0x00baa87c]
0049aa6c  760a                      JBE 0x0049aa78
0049aa6e  f30f5fc4                  MAXSS XMM0,XMM4
0049aa72  f30f5dc3                  MINSS XMM0,XMM3
0049aa76  eb08                      JMP 0x0049aa80
0049aa78  f30f5fc6                  MAXSS XMM0,XMM6
0049aa7c  f30f5dc1                  MINSS XMM0,XMM1
0049aa80  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0049aa88  f30f102530a6ba00          MOVSS XMM4,dword ptr [0x00baa630]
0049aa90  8db7b00b0000              LEA ESI,[EDI + 0xbb0]
0049aa96  6840b6c700                PUSH 0xc7b640
0049aa9b  8bce                      MOV ECX,ESI
0049aa9d  e88e5b5700                CALL 0x00a10630
0049aaa2  84c0                      TEST AL,AL
0049aaa4  0f8448020000              JZ 0x0049acf2
0049aaaa  0f57d2                    XORPS XMM2,XMM2
0049aaad  0f28cc                    MOVAPS XMM1,XMM4
0049aab0  8bcf                      MOV ECX,EDI
0049aab2  e8a91c2100                CALL 0x006ac760
0049aab7  85c0                      TEST EAX,EAX
0049aab9  0f844b010000              JZ 0x0049ac0a
0049aabf  e89c442500                CALL 0x006eef60
0049aac4  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0049aacc  8bf0                      MOV ESI,EAX
0049aace  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
0049aad6  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049aadc  50                        PUSH EAX
0049aadd  f30f118dc0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM1
0049aae5  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0049aaed  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
0049aaf5  f30f118db4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM1
0049aafd  e86e451e00                CALL 0x0067f070
0049ab02  f30f1095c0fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdc0]
0049ab0a  83c404                    ADD ESP,0x4
0049ab0d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049ab13  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0049ab17  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0049ab1c  f30f58c9                  ADDSS XMM1,XMM1
0049ab20  56                        PUSH ESI
0049ab21  6a00                      PUSH 0x0
0049ab23  57                        PUSH EDI
0049ab24  f30f58c0                  ADDSS XMM0,XMM0
0049ab28  f30f58d1                  ADDSS XMM2,XMM1
0049ab2c  f30f108db4fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb4]
0049ab34  8d85a8fdffff              LEA EAX,[EBP + 0xfffffda8]
0049ab3a  50                        PUSH EAX
0049ab3b  8d873c030000              LEA EAX,[EDI + 0x33c]
0049ab41  f30f58c8                  ADDSS XMM1,XMM0
0049ab45  50                        PUSH EAX
0049ab46  6a3b                      PUSH 0x3b
0049ab48  68e8030000                PUSH 0x3e8
0049ab4d  f30f1195a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM2
0049ab55  f30f118dacfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM1
0049ab5d  e8bedff8ff                CALL 0x00428b20
0049ab62  8bf0                      MOV ESI,EAX
0049ab64  e8f7432500                CALL 0x006eef60
0049ab69  660f6ec0                  MOVD XMM0,EAX
0049ab6d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049ab71  c1e81f                    SHR EAX,0x1f
0049ab74  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049ab7d  660f5ac0                  CVTPD2PS XMM0,XMM0
0049ab81  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049ab89  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0049ab91  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0049ab99  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
0049aba1  e8ba432500                CALL 0x006eef60
0049aba6  b90f000000                MOV ECX,0xf
0049abab  f30f101d24a3ba00          MOVSS XMM3,dword ptr [0x00baa324]
0049abb3  33d2                      XOR EDX,EDX
0049abb5  f30f101554a3ba00          MOVSS XMM2,dword ptr [0x00baa354]
0049abbd  f7f1                      DIV ECX
0049abbf  8b06                      MOV EAX,dword ptr [ESI]
0049abc1  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
0049abc9  03d1                      ADD EDX,ECX
0049abcb  51                        PUSH ECX
0049abcc  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
0049abd2  8d4dc0                    LEA ECX,[EBP + -0x40]
0049abd5  899660040000              MOV dword ptr [ESI + 0x460],EDX
0049abdb  8b503c                    MOV EDX,dword ptr [EAX + 0x3c]
0049abde  c704240000403f            MOV dword ptr [ESP],0x3f400000
0049abe5  e8068df8ff                CALL 0x004238f0
0049abea  6a01                      PUSH 0x1
0049abec  6a00                      PUSH 0x0
0049abee  68ff000000                PUSH 0xff
0049abf3  6aff                      PUSH -0x1
0049abf5  50                        PUSH EAX
0049abf6  8bce                      MOV ECX,ESI
0049abf8  ffd2                      CALL EDX
0049abfa  c786580300000000a0c0      MOV dword ptr [ESI + 0x358],0xc0a00000
0049ac04  8db7b00b0000              LEA ESI,[EDI + 0xbb0]
0049ac0a  6a00                      PUSH 0x0
0049ac0c  56                        PUSH ESI
0049ac0d  8bcf                      MOV ECX,EDI
0049ac0f  e89c68f9ff                CALL 0x004314b0
0049ac14  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0049ac1c  f30f100580a3ba00          MOVSS XMM0,dword ptr [0x00baa380]
0049ac24  e887a01e00                CALL 0x00684cb0
0049ac29  0f28c8                    MOVAPS XMM1,XMM0
0049ac2c  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
0049ac31  f30f590e                  MULSS XMM1,dword ptr [ESI]
0049ac35  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
0049ac3a  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
0049ac42  f30f110e                  MOVSS dword ptr [ESI],XMM1
0049ac46  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0049ac4d  0f2fc1                    COMISS XMM0,XMM1
0049ac50  7619                      JBE 0x0049ac6b
0049ac52  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0049ac5a  f30f1106                  MOVSS dword ptr [ESI],XMM0
0049ac5e  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0049ac66  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
0049ac6b  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0049ac72  7477                      JZ 0x0049aceb
0049ac74  f30f108f98010000          MOVSS XMM1,dword ptr [EDI + 0x198]
0049ac7c  f30f108794010000          MOVSS XMM0,dword ptr [EDI + 0x194]
0049ac84  f30f59c0                  MULSS XMM0,XMM0
0049ac88  f30f59c9                  MULSS XMM1,XMM1
0049ac8c  f30f58c1                  ADDSS XMM0,XMM1
0049ac90  e8bbadf9ff                CALL 0x00435a50
0049ac95  0f2f051ca8ba00            COMISS XMM0,dword ptr [0x00baa81c]
0049ac9c  764d                      JBE 0x0049aceb
0049ac9e  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049aca4  50                        PUSH EAX
0049aca5  8d8f94010000              LEA ECX,[EDI + 0x194]
0049acab  e880535700                CALL 0x00a10030
0049acb0  b901000000                MOV ECX,0x1
0049acb5  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0049acba  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0049acbe  f30f598fa0010000          MULSS XMM1,dword ptr [EDI + 0x1a0]
0049acc6  8b8570fdffff              MOV EAX,dword ptr [EBP + 0xfffffd70]
0049accc  f30f59879c010000          MULSS XMM0,dword ptr [EDI + 0x19c]
0049acd4  0fb6c0                    MOVZX EAX,AL
0049acd7  f30f58c8                  ADDSS XMM1,XMM0
0049acdb  0f2f0df8a1ba00            COMISS XMM1,dword ptr [0x00baa1f8]
0049ace2  0f47c1                    CMOVA EAX,ECX
0049ace5  898570fdffff              MOV dword ptr [EBP + 0xfffffd70],EAX
0049aceb  c685c7fdffff01            MOV byte ptr [EBP + 0xfffffdc7],0x1
0049acf2  68c4e5b100                PUSH 0xb1e5c4
0049acf7  8d8510fdffff              LEA EAX,[EBP + 0xfffffd10]
0049acfd  8bcf                      MOV ECX,EDI
0049acff  50                        PUSH EAX
0049ad00  e81bbf2100                CALL 0x006b6c20
0049ad05  f30f108530fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd30]
0049ad0d  0f57d2                    XORPS XMM2,XMM2
0049ad10  0f2fc2                    COMISS XMM0,XMM2
0049ad13  0f8654040000              JBE 0x0049b16d
0049ad19  a17816c700                MOV EAX,[0x00c71678]
0049ad1e  8b8044650200              MOV EAX,dword ptr [EAX + 0x26544]
0049ad24  c1e805                    SHR EAX,0x5
0049ad27  a801                      TEST AL,0x1
0049ad29  7426                      JZ 0x0049ad51
0049ad2b  6a01                      PUSH 0x1
0049ad2d  8bcf                      MOV ECX,EDI
0049ad2f  e8dcb12100                CALL 0x006b5f10
0049ad34  8d8d10fdffff              LEA ECX,[EBP + 0xfffffd10]
0049ad3a  51                        PUSH ECX
0049ad3b  8bc8                      MOV ECX,EAX
0049ad3d  c7400401000000            MOV dword ptr [EAX + 0x4],0x1
0049ad44  e8a741f9ff                CALL 0x0042eef0
0049ad49  f30f108530fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd30]
0049ad51  f30f109d34fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffd34]
0049ad59  8d8510fdffff              LEA EAX,[EBP + 0xfffffd10]
0049ad5f  8b8da4fdffff              MOV ECX,dword ptr [EBP + 0xfffffda4]
0049ad65  f30f58d8                  ADDSS XMM3,XMM0
0049ad69  6aff                      PUSH -0x1
0049ad6b  50                        PUSH EAX
0049ad6c  8d8538fdffff              LEA EAX,[EBP + 0xfffffd38]
0049ad72  8d8918120000              LEA ECX,[ECX + 0x1218]
0049ad78  50                        PUSH EAX
0049ad79  e812faf7ff                CALL 0x0041a790
0049ad7e  33f6                      XOR ESI,ESI
0049ad80  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0049ad87  89b5b8fdffff              MOV dword ptr [EBP + 0xfffffdb8],ESI
0049ad8d  39b544fdffff              CMP dword ptr [EBP + 0xfffffd44],ESI
0049ad93  0f86c2030000              JBE 0x0049b15b
0049ad99  0f1f8000000000            NOP dword ptr [EAX]
0049ada0  8b853cfdffff              MOV EAX,dword ptr [EBP + 0xfffffd3c]
0049ada6  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
0049ada9  89b5bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],ESI
0049adaf  83be8801000000            CMP dword ptr [ESI + 0x188],0x0
0049adb6  0f8486030000              JZ 0x0049b142
0049adbc  83be8401000004            CMP dword ptr [ESI + 0x184],0x4
0049adc3  0f8479030000              JZ 0x0049b142
0049adc9  3bf7                      CMP ESI,EDI
0049adcb  0f8471030000              JZ 0x0049b142
0049add1  6840b6c700                PUSH 0xc7b640
0049add6  8d45c4                    LEA EAX,[EBP + -0x3c]
0049add9  8bce                      MOV ECX,ESI
0049addb  50                        PUSH EAX
0049addc  e8bfed2000                CALL 0x006a9ba0
0049ade1  8d8548fdffff              LEA EAX,[EBP + 0xfffffd48]
0049ade7  c7854cfdffff00000000      MOV dword ptr [EBP + 0xfffffd4c],0x0
0049adf1  50                        PUSH EAX
0049adf2  8d55c4                    LEA EDX,[EBP + -0x3c]
0049adf5  c78548fdffff00000000      MOV dword ptr [EBP + 0xfffffd48],0x0
0049adff  8d8d10fdffff              LEA ECX,[EBP + 0xfffffd10]
0049ae05  e866a64a00                CALL 0x00945470
0049ae0a  83c404                    ADD ESP,0x4
0049ae0d  84c0                      TEST AL,AL
0049ae0f  0f842d030000              JZ 0x0049b142
0049ae15  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0049ae1d  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0049ae25  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
0049ae2d  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0049ae35  0f28c1                    MOVAPS XMM0,XMM1
0049ae38  f30f118dc0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM1
0049ae40  f30f59c1                  MULSS XMM0,XMM1
0049ae44  f30f118d5cfdffff          MOVSS dword ptr [EBP + 0xfffffd5c],XMM1
0049ae4c  0f28ca                    MOVAPS XMM1,XMM2
0049ae4f  f30f59ca                  MULSS XMM1,XMM2
0049ae53  f30f1195b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM2
0049ae5b  f30f11956cfdffff          MOVSS dword ptr [EBP + 0xfffffd6c],XMM2
0049ae63  f30f58c1                  ADDSS XMM0,XMM1
0049ae67  e8e4abf9ff                CALL 0x00435a50
0049ae6c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0049ae73  f30f118580fdffff          MOVSS dword ptr [EBP + 0xfffffd80],XMM0
0049ae7b  7626                      JBE 0x0049aea3
0049ae7d  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0049ae85  f30f5ec8                  DIVSS XMM1,XMM0
0049ae89  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049ae91  f30f1095b4fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb4]
0049ae99  f30f59c1                  MULSS XMM0,XMM1
0049ae9d  f30f59d1                  MULSS XMM2,XMM1
0049aea1  eb10                      JMP 0x0049aeb3
0049aea3  f30f10855cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd5c]
0049aeab  f30f10956cfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffd6c]
0049aeb3  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0049aebb  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
0049aec3  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
0049aecb  f30f589664030000          ADDSS XMM2,dword ptr [ESI + 0x364]
0049aed3  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0049aedb  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
0049aee3  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
0049aee6  83f801                    CMP EAX,0x1
0049aee9  7427                      JZ 0x0049af12
0049aeeb  83f803                    CMP EAX,0x3
0049aeee  7422                      JZ 0x0049af12
0049aef0  8b06                      MOV EAX,dword ptr [ESI]
0049aef2  8d4dc4                    LEA ECX,[EBP + -0x3c]
0049aef5  57                        PUSH EDI
0049aef6  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0049aef9  e81264f9ff                CALL 0x00431310
0049aefe  6a1e                      PUSH 0x1e
0049af00  8d45c4                    LEA EAX,[EBP + -0x3c]
0049af03  50                        PUSH EAX
0049af04  6a00                      PUSH 0x0
0049af06  6a00                      PUSH 0x0
0049af08  51                        PUSH ECX
0049af09  c7042400000c42            MOV dword ptr [ESP],0x420c0000
0049af10  eb20                      JMP 0x0049af32
0049af12  8b06                      MOV EAX,dword ptr [ESI]
0049af14  8d4dc4                    LEA ECX,[EBP + -0x3c]
0049af17  57                        PUSH EDI
0049af18  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0049af1b  e8f063f9ff                CALL 0x00431310
0049af20  6a1e                      PUSH 0x1e
0049af22  8d45c4                    LEA EAX,[EBP + -0x3c]
0049af25  50                        PUSH EAX
0049af26  6a00                      PUSH 0x0
0049af28  6a00                      PUSH 0x0
0049af2a  51                        PUSH ECX
0049af2b  c7042400000040            MOV dword ptr [ESP],0x40000000
0049af32  8b8dbcfdffff              MOV ECX,dword ptr [EBP + 0xfffffdbc]
0049af38  ffd6                      CALL ESI
0049af3a  8bb5bcfdffff              MOV ESI,dword ptr [EBP + 0xfffffdbc]
0049af40  837e2801                  CMP dword ptr [ESI + 0x28],0x1
0049af44  0f85f8010000              JNZ 0x0049b142
0049af4a  837e2c00                  CMP dword ptr [ESI + 0x2c],0x0
0049af4e  0f85ee010000              JNZ 0x0049b142
0049af54  80bea920000000            CMP byte ptr [ESI + 0x20a9],0x0
0049af5b  0f85e1010000              JNZ 0x0049b142
0049af61  6a00                      PUSH 0x0
0049af63  6a00                      PUSH 0x0
0049af65  6a00                      PUSH 0x0
0049af67  8bce                      MOV ECX,ESI
0049af69  e892813200                CALL 0x007c3100
0049af6e  84c0                      TEST AL,AL
0049af70  0f85cc010000              JNZ 0x0049b142
0049af76  83be6813000000            CMP dword ptr [ESI + 0x1368],0x0
0049af7d  0f8ebf010000              JLE 0x0049b142
0049af83  6aff                      PUSH -0x1
0049af85  8bce                      MOV ECX,ESI
0049af87  e874e42b00                CALL 0x00759400
0049af8c  e8cf3f2500                CALL 0x006eef60
0049af91  33d2                      XOR EDX,EDX
0049af93  b903000000                MOV ECX,0x3
0049af98  f7f1                      DIV ECX
0049af9a  8b8668130000              MOV EAX,dword ptr [ESI + 0x1368]
0049afa0  42                        INC EDX
0049afa1  3bd0                      CMP EDX,EAX
0049afa3  0f4cc2                    CMOVL EAX,EDX
0049afa6  8985acfdffff              MOV dword ptr [EBP + 0xfffffdac],EAX
0049afac  85c0                      TEST EAX,EAX
0049afae  0f8e84010000              JLE 0x0049b138
0049afb4  8bf8                      MOV EDI,EAX
0049afb6  e8a53f2500                CALL 0x006eef60
0049afbb  f30f10ad80fdffff          MOVSS XMM5,dword ptr [EBP + 0xfffffd80]
0049afc3  0f2f2de49fba00            COMISS XMM5,dword ptr [0x00ba9fe4]
0049afca  898590fdffff              MOV dword ptr [EBP + 0xfffffd90],EAX
0049afd0  f30f109dc0fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdc0]
0049afd8  f30f10a5b4fdffff          MOVSS XMM4,dword ptr [EBP + 0xfffffdb4]
0049afe0  0f28cb                    MOVAPS XMM1,XMM3
0049afe3  0f28d4                    MOVAPS XMM2,XMM4
0049afe6  7614                      JBE 0x0049affc
0049afe8  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0049aff0  f30f5ec5                  DIVSS XMM0,XMM5
0049aff4  f30f59c8                  MULSS XMM1,XMM0
0049aff8  f30f59d0                  MULSS XMM2,XMM0
0049affc  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
0049b004  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
0049b00c  f30f118d54fdffff          MOVSS dword ptr [EBP + 0xfffffd54],XMM1
0049b014  f30f119564fdffff          MOVSS dword ptr [EBP + 0xfffffd64],XMM2
0049b01c  e83f3f2500                CALL 0x006eef60
0049b021  660f6ec0                  MOVD XMM0,EAX
0049b025  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049b029  c1e81f                    SHR EAX,0x1f
0049b02c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049b035  660f5ac0                  CVTPD2PS XMM0,XMM0
0049b039  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049b041  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0049b049  f30f58c0                  ADDSS XMM0,XMM0
0049b04d  f30f11856cfdffff          MOVSS dword ptr [EBP + 0xfffffd6c],XMM0
0049b055  e8c624f8ff                CALL 0x0041d520
0049b05a  f30f1185bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM0
0049b062  e8f93e2500                CALL 0x006eef60
0049b067  660f6ec8                  MOVD XMM1,EAX
0049b06b  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0049b06f  c1e81f                    SHR EAX,0x1f
0049b072  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0049b07b  660f5ac1                  CVTPD2PS XMM0,XMM1
0049b07f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049b087  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
0049b08f  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0049b097  f30f11855cfdffff          MOVSS dword ptr [EBP + 0xfffffd5c],XMM0
0049b09f  f30f10856cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd6c]
0049b0a7  e89424f8ff                CALL 0x0041d540
0049b0ac  ffb590fdffff              PUSH dword ptr [EBP + 0xfffffd90]
0049b0b2  f30f1095bcfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdbc]
0049b0ba  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
0049b0c0  f30f59855cfdffff          MULSS XMM0,dword ptr [EBP + 0xfffffd5c]
0049b0c8  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
0049b0ce  f30f59955cfdffff          MULSS XMM2,dword ptr [EBP + 0xfffffd5c]
0049b0d6  6a01                      PUSH 0x1
0049b0d8  f30f588554fdffff          ADDSS XMM0,dword ptr [EBP + 0xfffffd54]
0049b0e0  6a00                      PUSH 0x0
0049b0e2  f30f589564fdffff          ADDSS XMM2,dword ptr [EBP + 0xfffffd64]
0049b0ea  89859cfdffff              MOV dword ptr [EBP + 0xfffffd9c],EAX
0049b0f0  8d8574fdffff              LEA EAX,[EBP + 0xfffffd74]
0049b0f6  50                        PUSH EAX
0049b0f7  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049b0fd  898da0fdffff              MOV dword ptr [EBP + 0xfffffda0],ECX
0049b103  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049b109  50                        PUSH EAX
0049b10a  6a14                      PUSH 0x14
0049b10c  6a05                      PUSH 0x5
0049b10e  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
0049b116  f30f119578fdffff          MOVSS dword ptr [EBP + 0xfffffd78],XMM2
0049b11e  e8fdd9f8ff                CALL 0x00428b20
0049b123  83ef01                    SUB EDI,0x1
0049b126  0f858afeffff              JNZ 0x0049afb6
0049b12c  8bbd88fdffff              MOV EDI,dword ptr [EBP + 0xfffffd88]
0049b132  8b85acfdffff              MOV EAX,dword ptr [EBP + 0xfffffdac]
0049b138  f7d8                      NEG EAX
0049b13a  8bce                      MOV ECX,ESI
0049b13c  50                        PUSH EAX
0049b13d  e8bee22b00                CALL 0x00759400
0049b142  8bb5b8fdffff              MOV ESI,dword ptr [EBP + 0xfffffdb8]
0049b148  46                        INC ESI
0049b149  89b5b8fdffff              MOV dword ptr [EBP + 0xfffffdb8],ESI
0049b14f  3bb544fdffff              CMP ESI,dword ptr [EBP + 0xfffffd44]
0049b155  0f8245fcffff              JC 0x0049ada0
0049b15b  8d8d38fdffff              LEA ECX,[EBP + 0xfffffd38]
0049b161  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0049b168  e843c4f7ff                CALL 0x004175b0
0049b16d  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0049b174  8d7748                    LEA ESI,[EDI + 0x48]
0049b177  7e5b                      JLE 0x0049b1d4
0049b179  68d4d2b100                PUSH 0xb1d2d4
0049b17e  8bce                      MOV ECX,ESI
0049b180  e8abfef6ff                CALL 0x0040b030
0049b185  84c0                      TEST AL,AL
0049b187  744b                      JZ 0x0049b1d4
0049b189  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0049b190  8bce                      MOV ECX,ESI
0049b192  6a01                      PUSH 0x1
0049b194  0f94c0                    SETZ AL
0049b197  ff8f10040000              DEC dword ptr [EDI + 0x410]
0049b19d  68b0e5b100                PUSH 0xb1e5b0
0049b1a2  888748010000              MOV byte ptr [EDI + 0x148],AL
0049b1a8  e8d3f1f6ff                CALL 0x0040a380
0049b1ad  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0049b1b5  51                        PUSH ECX
0049b1b6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049b1bd  6a00                      PUSH 0x0
0049b1bf  6a02                      PUSH 0x2
0049b1c1  68d3020000                PUSH 0x2d3
0049b1c6  e8a5b22100                CALL 0x006b6470
0049b1cb  6a07                      PUSH 0x7
0049b1cd  8bce                      MOV ECX,ESI
0049b1cf  e84cf5f6ff                CALL 0x0040a720
0049b1d4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0049b1d8  7409                      JZ 0x0049b1e3
0049b1da  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0049b1e1  7527                      JNZ 0x0049b20a
0049b1e3  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0049b1ea  7d55                      JGE 0x0049b241
0049b1ec  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0049b1f6  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0049b200  c787a00b000001000000      MOV dword ptr [EDI + 0xba0],0x1
0049b20a  f30f102530a6ba00          MOVSS XMM4,dword ptr [0x00baa630]
0049b212  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0049b218  8a8dc7fdffff              MOV CL,byte ptr [EBP + 0xfffffdc7]
0049b21e  83c028                    ADD EAX,0x28
0049b221  84c9                      TEST CL,CL
0049b223  0f8438edffff              JZ 0x00499f61
0049b229  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0049b22d  0f2fc4                    COMISS XMM0,XMM4
0049b230  7706                      JA 0x0049b238
0049b232  f30f10c4                  MOVSS XMM0,XMM4
0049b236  eb04                      JMP 0x0049b23c
0049b238  f30f10c0                  MOVSS XMM0,XMM0
0049b23c  e924edffff                JMP 0x00499f65
0049b241  6a00                      PUSH 0x0
0049b243  68cce5b100                PUSH 0xb1e5cc
0049b248  8bce                      MOV ECX,ESI
0049b24a  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
0049b251  e82af1f6ff                CALL 0x0040a380
0049b256  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0049b260  eba8                      JMP 0x0049b20a
0049b262  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049b26a  8d4f48                    LEA ECX,[EDI + 0x48]
0049b26d  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0049b275  68d4d2b100                PUSH 0xb1d2d4
0049b27a  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049b282  e8a9fdf6ff                CALL 0x0040b030
0049b287  84c0                      TEST AL,AL
0049b289  741e                      JZ 0x0049b2a9
0049b28b  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0049b293  51                        PUSH ECX
0049b294  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049b29b  6a00                      PUSH 0x0
0049b29d  6a02                      PUSH 0x2
0049b29f  68d5020000                PUSH 0x2d5
0049b2a4  e8c7b12100                CALL 0x006b6470
0049b2a9  68dcd2b100                PUSH 0xb1d2dc
0049b2ae  8d4f48                    LEA ECX,[EDI + 0x48]
0049b2b1  e87afdf6ff                CALL 0x0040b030
0049b2b6  84c0                      TEST AL,AL
0049b2b8  0f84a2060000              JZ 0x0049b960
0049b2be  68c4e5b100                PUSH 0xb1e5c4
0049b2c3  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049b2c9  8bcf                      MOV ECX,EDI
0049b2cb  50                        PUSH EAX
0049b2cc  e81fb82100                CALL 0x006b6af0
0049b2d1  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0049b2d9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049b2df  6a0e                      PUSH 0xe
0049b2e1  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0049b2e6  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0049b2ea  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0049b2f2  f30f11857cfdffff          MOVSS dword ptr [EBP + 0xfffffd7c],XMM0
0049b2fa  f30f118d80fdffff          MOVSS dword ptr [EBP + 0xfffffd80],XMM1
0049b302  e869832600                CALL 0x00703670
0049b307  c785bcfdffff0f000000      MOV dword ptr [EBP + 0xfffffdbc],0xf
0049b311  e84a3c2500                CALL 0x006eef60
0049b316  660f6ec0                  MOVD XMM0,EAX
0049b31a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049b31e  c1e81f                    SHR EAX,0x1f
0049b321  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049b32a  660f5ac0                  CVTPD2PS XMM0,XMM0
0049b32e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049b336  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0049b33e  f30f58c0                  ADDSS XMM0,XMM0
0049b342  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
0049b34a  e8113c2500                CALL 0x006eef60
0049b34f  660f6ec0                  MOVD XMM0,EAX
0049b353  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049b357  c1e81f                    SHR EAX,0x1f
0049b35a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049b363  660f5ac0                  CVTPD2PS XMM0,XMM0
0049b367  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049b36f  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
0049b377  f30f580554a8ba00          ADDSS XMM0,dword ptr [0x00baa854]
0049b37f  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
0049b387  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049b38f  e8ac21f8ff                CALL 0x0041d540
0049b394  f30f5985b4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdb4]
0049b39c  f30f11859cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM0
0049b3a4  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049b3ac  e86f21f8ff                CALL 0x0041d520
0049b3b1  f30f5985b4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdb4]
0049b3b9  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
0049b3c1  e89a3b2500                CALL 0x006eef60
0049b3c6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049b3cc  50                        PUSH EAX
0049b3cd  6a00                      PUSH 0x0
0049b3cf  57                        PUSH EDI
0049b3d0  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049b3d6  50                        PUSH EAX
0049b3d7  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
0049b3dd  50                        PUSH EAX
0049b3de  6a3b                      PUSH 0x3b
0049b3e0  68e8030000                PUSH 0x3e8
0049b3e5  e836d7f8ff                CALL 0x00428b20
0049b3ea  8bf0                      MOV ESI,EAX
0049b3ec  e86f3b2500                CALL 0x006eef60
0049b3f1  a801                      TEST AL,0x1
0049b3f3  740a                      JZ 0x0049b3ff
0049b3f5  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0049b3fd  eb08                      JMP 0x0049b407
0049b3ff  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0049b407  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
0049b40f  e84c3b2500                CALL 0x006eef60
0049b414  660f6ec0                  MOVD XMM0,EAX
0049b418  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049b41c  c1e81f                    SHR EAX,0x1f
0049b41f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049b428  660f5ac0                  CVTPD2PS XMM0,XMM0
0049b42c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049b434  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0049b43c  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0049b444  f30f5985c0fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049b44c  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
0049b454  e8073b2500                CALL 0x006eef60
0049b459  660f6ec0                  MOVD XMM0,EAX
0049b45d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049b461  c1e81f                    SHR EAX,0x1f
0049b464  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049b46d  660f5ac8                  CVTPD2PS XMM1,XMM0
0049b471  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0049b479  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
0049b481  f30f580de0a3ba00          ADDSS XMM1,dword ptr [0x00baa3e0]
0049b489  0f28c1                    MOVAPS XMM0,XMM1
0049b48c  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0049b494  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0049b49c  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0049b4a4  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0049b4ac  e8af3a2500                CALL 0x006eef60
0049b4b1  33d2                      XOR EDX,EDX
0049b4b3  b914000000                MOV ECX,0x14
0049b4b8  f7f1                      DIV ECX
0049b4ba  03d1                      ADD EDX,ECX
0049b4bc  8d4dc0                    LEA ECX,[EBP + -0x40]
0049b4bf  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
0049b4c5  899660040000              MOV dword ptr [ESI + 0x460],EDX
0049b4cb  e8007a1e00                CALL 0x00682ed0
0049b4d0  8b06                      MOV EAX,dword ptr [ESI]
0049b4d2  8d4dc0                    LEA ECX,[EBP + -0x40]
0049b4d5  0f2805f0bdba00            MOVAPS XMM0,xmmword ptr [0x00babdf0]
0049b4dc  6a01                      PUSH 0x1
0049b4de  6a00                      PUSH 0x0
0049b4e0  68ff000000                PUSH 0xff
0049b4e5  6aff                      PUSH -0x1
0049b4e7  51                        PUSH ECX
0049b4e8  8bce                      MOV ECX,ESI
0049b4ea  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0049b4ee  ff503c                    CALL dword ptr [EAX + 0x3c]
0049b4f1  83adbcfdffff01            SUB dword ptr [EBP + 0xfffffdbc],0x1
0049b4f8  0f8513feffff              JNZ 0x0049b311
0049b4fe  c785c0fdffff00000000      MOV dword ptr [EBP + 0xfffffdc0],0x0
0049b508  e8533a2500                CALL 0x006eef60
0049b50d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049b513  50                        PUSH EAX
0049b514  6a00                      PUSH 0x0
0049b516  57                        PUSH EDI
0049b517  6840b6c700                PUSH 0xc7b640
0049b51c  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
0049b522  50                        PUSH EAX
0049b523  6a48                      PUSH 0x48
0049b525  68e8030000                PUSH 0x3e8
0049b52a  e8f1d5f8ff                CALL 0x00428b20
0049b52f  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
0049b535  898590fdffff              MOV dword ptr [EBP + 0xfffffd90],EAX
0049b53b  8db0bc030000              LEA ESI,[EAX + 0x3bc]
0049b541  85c9                      TEST ECX,ECX
0049b543  7418                      JZ 0x0049b55d
0049b545  8d85acfdffff              LEA EAX,[EBP + 0xfffffdac]
0049b54b  89b5acfdffff              MOV dword ptr [EBP + 0xfffffdac],ESI
0049b551  50                        PUSH EAX
0049b552  81c1cc030000              ADD ECX,0x3cc
0049b558  e8b33c0300                CALL 0x004cf210
0049b55d  56                        PUSH ESI
0049b55e  8bcf                      MOV ECX,EDI
0049b560  893e                      MOV dword ptr [ESI],EDI
0049b562  e889270300                CALL 0x004cdcf0
0049b567  8b8dc0fdffff              MOV ECX,dword ptr [EBP + 0xfffffdc0]
0049b56d  8bc1                      MOV EAX,ECX
0049b56f  c1e81f                    SHR EAX,0x1f
0049b572  660f6ec1                  MOVD XMM0,ECX
0049b576  41                        INC ECX
0049b577  898dc0fdffff              MOV dword ptr [EBP + 0xfffffdc0],ECX
0049b57d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049b581  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049b58a  8b8590fdffff              MOV EAX,dword ptr [EBP + 0xfffffd90]
0049b590  660f5ac0                  CVTPD2PS XMM0,XMM0
0049b594  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
0049b59c  f30f580510a9ba00          ADDSS XMM0,dword ptr [0x00baa910]
0049b5a4  f30f118074040000          MOVSS dword ptr [EAX + 0x474],XMM0
0049b5ac  83f904                    CMP ECX,0x4
0049b5af  0f8253ffffff              JC 0x0049b508
0049b5b5  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0049b5bb  8d8dc0fdffff              LEA ECX,[EBP + 0xfffffdc0]
0049b5c1  c785c0fdffff34000000      MOV dword ptr [EBP + 0xfffffdc0],0x34
0049b5cb  e8b0b14b00                CALL 0x00956780
0049b5d0  83ec08                    SUB ESP,0x8
0049b5d3  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0049b5db  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049b5e2  6a00                      PUSH 0x0
0049b5e4  6a14                      PUSH 0x14
0049b5e6  51                        PUSH ECX
0049b5e7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049b5ee  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0049b5f4  ffb5c0fdffff              PUSH dword ptr [EBP + 0xfffffdc0]
0049b5fa  e831264900                CALL 0x0092dc30
0049b5ff  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049b605  6a0e                      PUSH 0xe
0049b607  e864802600                CALL 0x00703670
0049b60c  8d4dc0                    LEA ECX,[EBP + -0x40]
0049b60f  e8bc781e00                CALL 0x00682ed0
0049b614  0f280500bfba00            MOVAPS XMM0,xmmword ptr [0x00babf00]
0049b61b  8d45c0                    LEA EAX,[EBP + -0x40]
0049b61e  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0049b626  8bcf                      MOV ECX,EDI
0049b628  50                        PUSH EAX
0049b629  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
0049b62f  50                        PUSH EAX
0049b630  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0049b634  e817af2100                CALL 0x006b6550
0049b639  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
0049b63f  e8ec38faff                CALL 0x0043ef30
0049b644  8d8570feffff              LEA EAX,[EBP + 0xfffffe70]
0049b64a  c78504ffffff09000000      MOV dword ptr [EBP + 0xffffff04],0x9
0049b654  50                        PUSH EAX
0049b655  6a08                      PUSH 0x8
0049b657  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049b65d  c78584feffff0000a03f      MOV dword ptr [EBP + 0xfffffe84],0x3fa00000
0049b667  50                        PUSH EAX
0049b668  8d857cfdffff              LEA EAX,[EBP + 0xfffffd7c]
0049b66e  c7859cfdffff00004041      MOV dword ptr [EBP + 0xfffffd9c],0x41400000
0049b678  50                        PUSH EAX
0049b679  8bcf                      MOV ECX,EDI
0049b67b  c785a0fdffff00000000      MOV dword ptr [EBP + 0xfffffda0],0x0
0049b685  e856fc2200                CALL 0x006cb2e0
0049b68a  bf0a000000                MOV EDI,0xa
0049b68f  90                        NOP
0049b690  e8cb382500                CALL 0x006eef60
0049b695  660f6ec0                  MOVD XMM0,EAX
0049b699  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049b69d  c1e81f                    SHR EAX,0x1f
0049b6a0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049b6a9  660f5ac0                  CVTPD2PS XMM0,XMM0
0049b6ad  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049b6b5  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0049b6bd  f30f58c0                  ADDSS XMM0,XMM0
0049b6c1  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
0049b6c9  e892382500                CALL 0x006eef60
0049b6ce  660f6ec8                  MOVD XMM1,EAX
0049b6d2  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0049b6d6  c1e81f                    SHR EAX,0x1f
0049b6d9  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0049b6e2  660f5ac1                  CVTPD2PS XMM0,XMM1
0049b6e6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049b6ee  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0049b6f6  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
0049b6fe  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049b706  e8351ef8ff                CALL 0x0041d540
0049b70b  f30f5985b4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdb4]
0049b713  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
0049b71b  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049b723  e8f81df8ff                CALL 0x0041d520
0049b728  f30f5985b4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdb4]
0049b730  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0049b738  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
0049b740  e81b382500                CALL 0x006eef60
0049b745  8bf0                      MOV ESI,EAX
0049b747  e814382500                CALL 0x006eef60
0049b74c  33d2                      XOR EDX,EDX
0049b74e  f30f1095acfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdac]
0049b756  b903000000                MOV ECX,0x3
0049b75b  f30f108d90fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd90]
0049b763  f7f1                      DIV ECX
0049b765  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049b76b  8d8574fdffff              LEA EAX,[EBP + 0xfffffd74]
0049b771  0f28c2                    MOVAPS XMM0,XMM2
0049b774  f7da                      NEG EDX
0049b776  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0049b77e  1bd2                      SBB EDX,EDX
0049b780  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
0049b788  81e200000200              AND EDX,0x20000
0049b78e  56                        PUSH ESI
0049b78f  52                        PUSH EDX
0049b790  f30f118574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM0
0049b798  0f28c1                    MOVAPS XMM0,XMM1
0049b79b  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
0049b7a3  6a00                      PUSH 0x0
0049b7a5  f30f58957cfdffff          ADDSS XMM2,dword ptr [EBP + 0xfffffd7c]
0049b7ad  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0049b7b5  50                        PUSH EAX
0049b7b6  f30f588d80fdffff          ADDSS XMM1,dword ptr [EBP + 0xfffffd80]
0049b7be  8d8548fdffff              LEA EAX,[EBP + 0xfffffd48]
0049b7c4  50                        PUSH EAX
0049b7c5  6a04                      PUSH 0x4
0049b7c7  68e8030000                PUSH 0x3e8
0049b7cc  f30f118578fdffff          MOVSS dword ptr [EBP + 0xfffffd78],XMM0
0049b7d4  f30f119548fdffff          MOVSS dword ptr [EBP + 0xfffffd48],XMM2
0049b7dc  f30f118d4cfdffff          MOVSS dword ptr [EBP + 0xfffffd4c],XMM1
0049b7e4  e837d3f8ff                CALL 0x00428b20
0049b7e9  83ef01                    SUB EDI,0x1
0049b7ec  0f859efeffff              JNZ 0x0049b690
0049b7f2  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0049b7f8  33d2                      XOR EDX,EDX
0049b7fa  8bbd88fdffff              MOV EDI,dword ptr [EBP + 0xfffffd88]
0049b800  81c6a8ba0100              ADD ESI,0x1baa8
0049b806  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
0049b80c  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0049b80f  2b06                      SUB EAX,dword ptr [ESI]
0049b811  c1f802                    SAR EAX,0x2
0049b814  85c0                      TEST EAX,EAX
0049b816  0f8444010000              JZ 0x0049b960
0049b81c  0f1f4000                  NOP dword ptr [EAX]
0049b820  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0049b823  8bc1                      MOV EAX,ECX
0049b825  2b06                      SUB EAX,dword ptr [ESI]
0049b827  c1f802                    SAR EAX,0x2
0049b82a  85c0                      TEST EAX,EAX
0049b82c  7518                      JNZ 0x0049b846
0049b82e  68bce6b700                PUSH 0xb7e6bc
0049b833  6a10                      PUSH 0x10
0049b835  e8865a5700                CALL 0x00a112c0
0049b83a  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0049b83d  83c408                    ADD ESP,0x8
0049b840  8b95bcfdffff              MOV EDX,dword ptr [EBP + 0xfffffdbc]
0049b846  8b06                      MOV EAX,dword ptr [ESI]
0049b848  2bc8                      SUB ECX,EAX
0049b84a  c1f902                    SAR ECX,0x2
0049b84d  3bd1                      CMP EDX,ECX
0049b84f  7303                      JNC 0x0049b854
0049b851  8d0490                    LEA EAX,[EAX + EDX*0x4]
0049b854  8b30                      MOV ESI,dword ptr [EAX]
0049b856  89b5acfdffff              MOV dword ptr [EBP + 0xfffffdac],ESI
0049b85c  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0049b864  f30f5c8d80fdffff          SUBSS XMM1,dword ptr [EBP + 0xfffffd80]
0049b86c  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
0049b874  f30f5c957cfdffff          SUBSS XMM2,dword ptr [EBP + 0xfffffd7c]
0049b87c  0f28c1                    MOVAPS XMM0,XMM1
0049b87f  f30f118db4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM1
0049b887  f30f59c1                  MULSS XMM0,XMM1
0049b88b  0f28ca                    MOVAPS XMM1,XMM2
0049b88e  f30f1195c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM2
0049b896  f30f59ca                  MULSS XMM1,XMM2
0049b89a  f30f58c1                  ADDSS XMM0,XMM1
0049b89e  e8ada1f9ff                CALL 0x00435a50
0049b8a3  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
0049b8ab  0f2fc8                    COMISS XMM1,XMM0
0049b8ae  0f8683000000              JBE 0x0049b937
0049b8b4  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0049b8bb  f30f1095c0fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdc0]
0049b8c3  7621                      JBE 0x0049b8e6
0049b8c5  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0049b8cd  f30f5ec8                  DIVSS XMM1,XMM0
0049b8d1  0f28c1                    MOVAPS XMM0,XMM1
0049b8d4  f30f59d0                  MULSS XMM2,XMM0
0049b8d8  f30f1085b4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb4]
0049b8e0  f30f59c1                  MULSS XMM0,XMM1
0049b8e4  eb08                      JMP 0x0049b8ee
0049b8e6  f30f1085b4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb4]
0049b8ee  8b06                      MOV EAX,dword ptr [ESI]
0049b8f0  8d4dc4                    LEA ECX,[EBP + -0x3c]
0049b8f3  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
0049b8fb  57                        PUSH EDI
0049b8fc  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0049b904  8b7054                    MOV ESI,dword ptr [EAX + 0x54]
0049b907  f30f119574fdffff          MOVSS dword ptr [EBP + 0xfffffd74],XMM2
0049b90f  f30f118578fdffff          MOVSS dword ptr [EBP + 0xfffffd78],XMM0
0049b917  e8f459f9ff                CALL 0x00431310
0049b91c  51                        PUSH ECX
0049b91d  8b8dacfdffff              MOV ECX,dword ptr [EBP + 0xfffffdac]
0049b923  8d8574fdffff              LEA EAX,[EBP + 0xfffffd74]
0049b929  c7042400001041            MOV dword ptr [ESP],0x41100000
0049b930  50                        PUSH EAX
0049b931  8d45c4                    LEA EAX,[EBP + -0x3c]
0049b934  50                        PUSH EAX
0049b935  ffd6                      CALL ESI
0049b937  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0049b93d  8b95bcfdffff              MOV EDX,dword ptr [EBP + 0xfffffdbc]
0049b943  81c6a8ba0100              ADD ESI,0x1baa8
0049b949  42                        INC EDX
0049b94a  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
0049b950  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0049b953  2b06                      SUB EAX,dword ptr [ESI]
0049b955  c1f802                    SAR EAX,0x2
0049b958  3bd0                      CMP EDX,EAX
0049b95a  0f82c0feffff              JC 0x0049b820
0049b960  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0049b964  740d                      JZ 0x0049b973
0049b966  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0049b96d  0f85dfe5ffff              JNZ 0x00499f52
0049b973  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0049b97d  e8de352500                CALL 0x006eef60
0049b982  33d2                      XOR EDX,EDX
0049b984  b914000000                MOV ECX,0x14
0049b989  f7f1                      DIV ECX
0049b98b  83c20a                    ADD EDX,0xa
0049b98e  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0049b994  e8c7352500                CALL 0x006eef60
0049b999  33d2                      XOR EDX,EDX
0049b99b  b93c000000                MOV ECX,0x3c
0049b9a0  f7f1                      DIV ECX
0049b9a2  83c21e                    ADD EDX,0x1e
0049b9a5  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
0049b9ab  e9a2e5ffff                JMP 0x00499f52
0049b9b0  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049b9b8  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0049b9c0  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0049b9c6  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049b9ce  85c0                      TEST EAX,EAX
0049b9d0  0f85ca000000              JNZ 0x0049baa0
0049b9d6  68d4d2b100                PUSH 0xb1d2d4
0049b9db  8d4f48                    LEA ECX,[EDI + 0x48]
0049b9de  e84df6f6ff                CALL 0x0040b030
0049b9e3  84c0                      TEST AL,AL
0049b9e5  7420                      JZ 0x0049ba07
0049b9e7  51                        PUSH ECX
0049b9e8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049b9ef  6a00                      PUSH 0x0
0049b9f1  6a02                      PUSH 0x2
0049b9f3  51                        PUSH ECX
0049b9f4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049b9fb  8bcf                      MOV ECX,EDI
0049b9fd  682f010000                PUSH 0x12f
0049ba02  e899b12300                CALL 0x006d6ba0
0049ba07  68dcd2b100                PUSH 0xb1d2dc
0049ba0c  8d4f48                    LEA ECX,[EDI + 0x48]
0049ba0f  e81cf6f6ff                CALL 0x0040b030
0049ba14  84c0                      TEST AL,AL
0049ba16  0f84eef7ffff              JZ 0x0049b20a
0049ba1c  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0049ba24  51                        PUSH ECX
0049ba25  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049ba2c  6a00                      PUSH 0x0
0049ba2e  6a02                      PUSH 0x2
0049ba30  68d4020000                PUSH 0x2d4
0049ba35  e836aa2100                CALL 0x006b6470
0049ba3a  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0049ba42  ff8710040000              INC dword ptr [EDI + 0x410]
0049ba48  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0049ba4f  760a                      JBE 0x0049ba5b
0049ba51  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0049ba59  eb08                      JMP 0x0049ba63
0049ba5b  f30f1005b4adba00          MOVSS XMM0,dword ptr [0x00baadb4]
0049ba63  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0049ba6b  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049ba71  f30f58c0                  ADDSS XMM0,XMM0
0049ba75  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0049ba7f  6a00                      PUSH 0x0
0049ba81  50                        PUSH EAX
0049ba82  8bcf                      MOV ECX,EDI
0049ba84  c7859cfdffff00000000      MOV dword ptr [EBP + 0xfffffd9c],0x0
0049ba8e  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
0049ba96  e8155af9ff                CALL 0x004314b0
0049ba9b  e9b2e4ffff                JMP 0x00499f52
0049baa0  83f801                    CMP EAX,0x1
0049baa3  0f8569f7ffff              JNZ 0x0049b212
0049baa9  0f28cc                    MOVAPS XMM1,XMM4
0049baac  8bcf                      MOV ECX,EDI
0049baae  e8ad0c2100                CALL 0x006ac760
0049bab3  85c0                      TEST EAX,EAX
0049bab5  0f8443010000              JZ 0x0049bbfe
0049babb  e8a0342500                CALL 0x006eef60
0049bac0  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0049bac8  8bf0                      MOV ESI,EAX
0049baca  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
0049bad2  8d8574fdffff              LEA EAX,[EBP + 0xfffffd74]
0049bad8  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0049bae0  50                        PUSH EAX
0049bae1  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
0049bae9  e882351e00                CALL 0x0067f070
0049baee  f30f109dacfdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdac]
0049baf6  83c404                    ADD ESP,0x4
0049baf9  f30f591d98a1ba00          MULSS XMM3,dword ptr [0x00baa198]
0049bb01  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049bb07  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0049bb0b  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0049bb10  f30f58c9                  ADDSS XMM1,XMM1
0049bb14  56                        PUSH ESI
0049bb15  6a00                      PUSH 0x0
0049bb17  57                        PUSH EDI
0049bb18  f30f58d2                  ADDSS XMM2,XMM2
0049bb1c  f30f58cb                  ADDSS XMM1,XMM3
0049bb20  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049bb26  50                        PUSH EAX
0049bb27  8d873c030000              LEA EAX,[EDI + 0x33c]
0049bb2d  50                        PUSH EAX
0049bb2e  f30f118d9cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM1
0049bb36  f30f108d90fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffd90]
0049bb3e  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
0049bb46  6a3b                      PUSH 0x3b
0049bb48  68e8030000                PUSH 0x3e8
0049bb4d  f30f58d1                  ADDSS XMM2,XMM1
0049bb51  f30f1195a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM2
0049bb59  e8c2cff8ff                CALL 0x00428b20
0049bb5e  8bf0                      MOV ESI,EAX
0049bb60  e8fb332500                CALL 0x006eef60
0049bb65  660f6ec0                  MOVD XMM0,EAX
0049bb69  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049bb6d  c1e81f                    SHR EAX,0x1f
0049bb70  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049bb79  660f5ac0                  CVTPD2PS XMM0,XMM0
0049bb7d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049bb85  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0049bb8d  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0049bb95  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
0049bb9d  e8be332500                CALL 0x006eef60
0049bba2  b90f000000                MOV ECX,0xf
0049bba7  f30f101d24a3ba00          MOVSS XMM3,dword ptr [0x00baa324]
0049bbaf  33d2                      XOR EDX,EDX
0049bbb1  f30f101554a3ba00          MOVSS XMM2,dword ptr [0x00baa354]
0049bbb9  f7f1                      DIV ECX
0049bbbb  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
0049bbc3  03d1                      ADD EDX,ECX
0049bbc5  51                        PUSH ECX
0049bbc6  8d4dc0                    LEA ECX,[EBP + -0x40]
0049bbc9  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
0049bbcf  899660040000              MOV dword ptr [ESI + 0x460],EDX
0049bbd5  c704240000403f            MOV dword ptr [ESP],0x3f400000
0049bbdc  e80f7df8ff                CALL 0x004238f0
0049bbe1  8b16                      MOV EDX,dword ptr [ESI]
0049bbe3  8bce                      MOV ECX,ESI
0049bbe5  6a01                      PUSH 0x1
0049bbe7  6a00                      PUSH 0x0
0049bbe9  68ff000000                PUSH 0xff
0049bbee  6aff                      PUSH -0x1
0049bbf0  50                        PUSH EAX
0049bbf1  ff523c                    CALL dword ptr [EDX + 0x3c]
0049bbf4  c786580300000000a0c0      MOV dword ptr [ESI + 0x358],0xc0a00000
0049bbfe  6a00                      PUSH 0x0
0049bc00  8d87b00b0000              LEA EAX,[EDI + 0xbb0]
0049bc06  8bcf                      MOV ECX,EDI
0049bc08  50                        PUSH EAX
0049bc09  e8a258f9ff                CALL 0x004314b0
0049bc0e  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0049bc15  c685c7fdffff01            MOV byte ptr [EBP + 0xfffffdc7],0x1
0049bc1c  0f95c0                    SETNZ AL
0049bc1f  888570fdffff              MOV byte ptr [EBP + 0xfffffd70],AL
0049bc25  e9e0f5ffff                JMP 0x0049b20a
0049bc2a  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049bc32  8d7748                    LEA ESI,[EDI + 0x48]
0049bc35  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0049bc3d  8bce                      MOV ECX,ESI
0049bc3f  68eca4b100                PUSH 0xb1a4ec
0049bc44  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049bc4c  e8ffe8f6ff                CALL 0x0040a550
0049bc51  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0049bc58  0f8587020000              JNZ 0x0049bee5
0049bc5e  84c0                      TEST AL,AL
0049bc60  742c                      JZ 0x0049bc8e
0049bc62  6a00                      PUSH 0x0
0049bc64  6808e6b100                PUSH 0xb1e608
0049bc69  8bce                      MOV ECX,ESI
0049bc6b  e810e7f6ff                CALL 0x0040a380
0049bc70  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0049bc78  51                        PUSH ECX
0049bc79  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049bc80  6a00                      PUSH 0x0
0049bc82  6a02                      PUSH 0x2
0049bc84  68d0020000                PUSH 0x2d0
0049bc89  e8e2a72100                CALL 0x006b6470
0049bc8e  8b8584fdffff              MOV EAX,dword ptr [EBP + 0xfffffd84]
0049bc94  85c0                      TEST EAX,EAX
0049bc96  0f8e05020000              JLE 0x0049bea1
0049bc9c  8bf0                      MOV ESI,EAX
0049bc9e  6690                      NOP
0049bca0  ff8fc00b0000              DEC dword ptr [EDI + 0xbc0]
0049bca6  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0049bcac  83f80a                    CMP EAX,0xa
0049bcaf  0f8ee0010000              JLE 0x0049be95
0049bcb5  a801                      TEST AL,0x1
0049bcb7  0f85d8010000              JNZ 0x0049be95
0049bcbd  e89e322500                CALL 0x006eef60
0049bcc2  33d2                      XOR EDX,EDX
0049bcc4  b905000000                MOV ECX,0x5
0049bcc9  f7f1                      DIV ECX
0049bccb  85d2                      TEST EDX,EDX
0049bccd  7514                      JNZ 0x0049bce3
0049bccf  51                        PUSH ECX
0049bcd0  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049bcd6  891424                    MOV dword ptr [ESP],EDX
0049bcd9  50                        PUSH EAX
0049bcda  8bcf                      MOV ECX,EDI
0049bcdc  e85f2f2200                CALL 0x006bec40
0049bce1  eb3d                      JMP 0x0049bd20
0049bce3  8b8da4fdffff              MOV ECX,dword ptr [EBP + 0xfffffda4]
0049bce9  8d8574fdffff              LEA EAX,[EBP + 0xfffffd74]
0049bcef  6a00                      PUSH 0x0
0049bcf1  6a00                      PUSH 0x0
0049bcf3  6a00                      PUSH 0x0
0049bcf5  83ec08                    SUB ESP,0x8
0049bcf8  c744240400008042          MOV dword ptr [ESP + 0x4],0x42800000
0049bd00  c7042400002041            MOV dword ptr [ESP],0x41200000
0049bd07  50                        PUSH EAX
0049bd08  e8c32c3800                CALL 0x0081e9d0
0049bd0d  8b8da4fdffff              MOV ECX,dword ptr [EBP + 0xfffffda4]
0049bd13  50                        PUSH EAX
0049bd14  8d8548fdffff              LEA EAX,[EBP + 0xfffffd48]
0049bd1a  50                        PUSH EAX
0049bd1b  e800783700                CALL 0x00813520
0049bd20  8bc8                      MOV ECX,EAX
0049bd22  8b01                      MOV EAX,dword ptr [ECX]
0049bd24  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
0049bd27  898d54fdffff              MOV dword ptr [EBP + 0xfffffd54],ECX
0049bd2d  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
0049bd33  898550fdffff              MOV dword ptr [EBP + 0xfffffd50],EAX
0049bd39  e8f231faff                CALL 0x0043ef30
0049bd3e  e81d322500                CALL 0x006eef60
0049bd43  c7851cffffff0000c8c3      MOV dword ptr [EBP + 0xffffff1c],0xc3c80000
0049bd4d  c78524ffffff00000040      MOV dword ptr [EBP + 0xffffff24],0x40000000
0049bd57  660f6ec0                  MOVD XMM0,EAX
0049bd5b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049bd5f  c1e81f                    SHR EAX,0x1f
0049bd62  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049bd6b  660f5ac8                  CVTPD2PS XMM1,XMM0
0049bd6f  f30f1005b0a4ba00          MOVSS XMM0,dword ptr [0x00baa4b0]
0049bd77  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0049bd7f  f30f590d84a2ba00          MULSS XMM1,dword ptr [0x00baa284]
0049bd87  f30f5cc1                  SUBSS XMM0,XMM1
0049bd8b  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0049bd93  e8c8312500                CALL 0x006eef60
0049bd98  c745ac09000000            MOV dword ptr [EBP + -0x54],0x9
0049bd9f  660f6ec0                  MOVD XMM0,EAX
0049bda3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049bda7  c1e81f                    SHR EAX,0x1f
0049bdaa  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049bdb3  660f5ac0                  CVTPD2PS XMM0,XMM0
0049bdb7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049bdbf  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0049bdc7  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
0049bdcf  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0049bdd7  e884312500                CALL 0x006eef60
0049bddc  660f6ec0                  MOVD XMM0,EAX
0049bde0  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049bde4  c1e81f                    SHR EAX,0x1f
0049bde7  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049bdf0  660f5ac0                  CVTPD2PS XMM0,XMM0
0049bdf4  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049bdfc  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0049be04  f30f58c0                  ADDSS XMM0,XMM0
0049be08  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
0049be10  e84b312500                CALL 0x006eef60
0049be15  660f6ec8                  MOVD XMM1,EAX
0049be19  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0049be1d  c1e81f                    SHR EAX,0x1f
0049be20  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0049be29  660f5ac1                  CVTPD2PS XMM0,XMM1
0049be2d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049be35  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
0049be3d  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049be45  e8f616f8ff                CALL 0x0041d540
0049be4a  f30f5985b4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdb4]
0049be52  f30f1185a8fdffff          MOVSS dword ptr [EBP + 0xfffffda8],XMM0
0049be5a  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049be62  e8b916f8ff                CALL 0x0041d520
0049be67  f30f5985b4fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdb4]
0049be6f  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
0049be75  50                        PUSH EAX
0049be76  6a00                      PUSH 0x0
0049be78  8d85a8fdffff              LEA EAX,[EBP + 0xfffffda8]
0049be7e  8bcf                      MOV ECX,EDI
0049be80  50                        PUSH EAX
0049be81  8d8550fdffff              LEA EAX,[EBP + 0xfffffd50]
0049be87  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
0049be8f  50                        PUSH EAX
0049be90  e84bf42200                CALL 0x006cb2e0
0049be95  83ee01                    SUB ESI,0x1
0049be98  0f8502feffff              JNZ 0x0049bca0
0049be9e  8d7748                    LEA ESI,[EDI + 0x48]
0049bea1  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0049bea8  0f8da4e0ffff              JGE 0x00499f52
0049beae  6a00                      PUSH 0x0
0049beb0  6810e6b100                PUSH 0xb1e610
0049beb5  8bce                      MOV ECX,ESI
0049beb7  e8c4e4f6ff                CALL 0x0040a380
0049bebc  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0049bec4  51                        PUSH ECX
0049bec5  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049becc  6a00                      PUSH 0x0
0049bece  6a02                      PUSH 0x2
0049bed0  68d6020000                PUSH 0x2d6
0049bed5  e896a52100                CALL 0x006b6470
0049beda  ff8710040000              INC dword ptr [EDI + 0x410]
0049bee0  e96de0ffff                JMP 0x00499f52
0049bee5  84c0                      TEST AL,AL
0049bee7  0f8465e0ffff              JZ 0x00499f52
0049beed  51                        PUSH ECX
0049beee  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049bef5  0f28d1                    MOVAPS XMM2,XMM1
0049bef8  6a00                      PUSH 0x0
0049befa  6a02                      PUSH 0x2
0049befc  68d2020000                PUSH 0x2d2
0049bf01  e86aa52100                CALL 0x006b6470
0049bf06  e9f0e9ffff                JMP 0x0049a8fb
0049bf0b  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049bf13  8d4f48                    LEA ECX,[EDI + 0x48]
0049bf16  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0049bf1e  68d4d2b100                PUSH 0xb1d2d4
0049bf23  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049bf2b  e800f1f6ff                CALL 0x0040b030
0049bf30  84c0                      TEST AL,AL
0049bf32  7420                      JZ 0x0049bf54
0049bf34  51                        PUSH ECX
0049bf35  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049bf3c  6a00                      PUSH 0x0
0049bf3e  6a02                      PUSH 0x2
0049bf40  51                        PUSH ECX
0049bf41  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049bf48  8bcf                      MOV ECX,EDI
0049bf4a  68d1020000                PUSH 0x2d1
0049bf4f  e84cac2300                CALL 0x006d6ba0
0049bf54  68dcd2b100                PUSH 0xb1d2dc
0049bf59  8d4f48                    LEA ECX,[EDI + 0x48]
0049bf5c  e8cff0f6ff                CALL 0x0040b030
0049bf61  84c0                      TEST AL,AL
0049bf63  0f84fc010000              JZ 0x0049c165
0049bf69  68c4e5b100                PUSH 0xb1e5c4
0049bf6e  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049bf74  8bcf                      MOV ECX,EDI
0049bf76  50                        PUSH EAX
0049bf77  e874ab2100                CALL 0x006b6af0
0049bf7c  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0049bf84  8d4dc0                    LEA ECX,[EBP + -0x40]
0049bf87  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0049bf8c  f30f5800                  ADDSS XMM0,dword ptr [EAX]
0049bf90  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0049bf98  f30f118560fdffff          MOVSS dword ptr [EBP + 0xfffffd60],XMM0
0049bfa0  f30f118d64fdffff          MOVSS dword ptr [EBP + 0xfffffd64],XMM1
0049bfa8  e8c3b1f6ff                CALL 0x00407170
0049bfad  50                        PUSH EAX
0049bfae  6a00                      PUSH 0x0
0049bfb0  51                        PUSH ECX
0049bfb1  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049bfb8  8d8560fdffff              LEA EAX,[EBP + 0xfffffd60]
0049bfbe  57                        PUSH EDI
0049bfbf  51                        PUSH ECX
0049bfc0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049bfc6  c704240000aa42            MOV dword ptr [ESP],0x42aa0000
0049bfcd  50                        PUSH EAX
0049bfce  e80d7c2600                CALL 0x00703be0
0049bfd3  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0049bfda  740a                      JZ 0x0049bfe6
0049bfdc  f30f100544aaba00          MOVSS XMM0,dword ptr [0x00baaa44]
0049bfe4  eb08                      JMP 0x0049bfee
0049bfe6  f30f1005d0a8ba00          MOVSS XMM0,dword ptr [0x00baa8d0]
0049bfee  8bcf                      MOV ECX,EDI
0049bff0  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
0049bff8  e843282200                CALL 0x006be840
0049bffd  8bf0                      MOV ESI,EAX
0049bfff  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
0049c007  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
0049c00f  f30f1185b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM0
0049c017  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0049c01f  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0049c027  f30f118dbcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM1
0049c02f  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0049c037  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0049c03f  f30f59c0                  MULSS XMM0,XMM0
0049c043  f30f59c9                  MULSS XMM1,XMM1
0049c047  f30f58c1                  ADDSS XMM0,XMM1
0049c04b  e8009af9ff                CALL 0x00435a50
0049c050  f30f108dbcfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdbc]
0049c058  f30f59c8                  MULSS XMM1,XMM0
0049c05c  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0049c064  f30f588e3c030000          ADDSS XMM1,dword ptr [ESI + 0x33c]
0049c06c  f30f5c8d60fdffff          SUBSS XMM1,dword ptr [EBP + 0xfffffd60]
0049c074  f30f118dbcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM1
0049c07c  f30f108db8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb8]
0049c084  f30f59c8                  MULSS XMM1,XMM0
0049c088  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0049c090  f30f588e40030000          ADDSS XMM1,dword ptr [ESI + 0x340]
0049c098  f30f5c8d64fdffff          SUBSS XMM1,dword ptr [EBP + 0xfffffd64]
0049c0a0  f30f118db8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM1
0049c0a8  e8b32e2500                CALL 0x006eef60
0049c0ad  f30f108dbcfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdbc]
0049c0b5  8bf0                      MOV ESI,EAX
0049c0b7  f30f1085b8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb8]
0049c0bf  e89cdcffff                CALL 0x00499d60
0049c0c4  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
0049c0cc  f30f101510a9ba00          MOVSS XMM2,dword ptr [0x00baa910]
0049c0d4  0f28c8                    MOVAPS XMM1,XMM0
0049c0d7  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049c0df  e86c691e00                CALL 0x00682a50
0049c0e4  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0049c0ec  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
0049c0f4  e84714f8ff                CALL 0x0041d540
0049c0f9  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
0049c101  f30f11859cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM0
0049c109  f30f1085acfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdac]
0049c111  e80a14f8ff                CALL 0x0041d520
0049c116  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
0049c11e  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049c124  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049c12a  56                        PUSH ESI
0049c12b  6a00                      PUSH 0x0
0049c12d  57                        PUSH EDI
0049c12e  50                        PUSH EAX
0049c12f  8d8560fdffff              LEA EAX,[EBP + 0xfffffd60]
0049c135  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
0049c13d  50                        PUSH EAX
0049c13e  6a09                      PUSH 0x9
0049c140  6a04                      PUSH 0x4
0049c142  e8d9c9f8ff                CALL 0x00428b20
0049c147  c7801004000014000000      MOV dword ptr [EAX + 0x410],0x14
0049c151  c7801404000014000000      MOV dword ptr [EAX + 0x414],0x14
0049c15b  c7808801000000000000      MOV dword ptr [EAX + 0x188],0x0
0049c165  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0049c169  0f848ce7ffff              JZ 0x0049a8fb
0049c16f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0049c176  0f85d6ddffff              JNZ 0x00499f52
0049c17c  e97ae7ffff                JMP 0x0049a8fb
0049c181  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0049c189  8d4f48                    LEA ECX,[EDI + 0x48]
0049c18c  f30f59c3                  MULSS XMM0,XMM3
0049c190  68dcd2b100                PUSH 0xb1d2dc
0049c195  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0049c19d  e88eeef6ff                CALL 0x0040b030
0049c1a2  84c0                      TEST AL,AL
0049c1a4  0f84cf000000              JZ 0x0049c279
0049c1aa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049c1b0  6a00                      PUSH 0x0
0049c1b2  6a01                      PUSH 0x1
0049c1b4  6a24                      PUSH 0x24
0049c1b6  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
0049c1bc  8d8940a70100              LEA ECX,[ECX + 0x1a740]
0049c1c2  6a0c                      PUSH 0xc
0049c1c4  6820e6b100                PUSH 0xb1e620
0049c1c9  e8b2b12900                CALL 0x00737380
0049c1ce  8b8d88fdffff              MOV ECX,dword ptr [EBP + 0xfffffd88]
0049c1d4  8bf8                      MOV EDI,EAX
0049c1d6  81c1dc030000              ADD ECX,0x3dc
0049c1dc  e80fcf3400                CALL 0x007e90f0
0049c1e1  8b9588fdffff              MOV EDX,dword ptr [EBP + 0xfffffd88]
0049c1e7  8d8d74fdffff              LEA ECX,[EBP + 0xfffffd74]
0049c1ed  8bf0                      MOV ESI,EAX
0049c1ef  8d923c030000              LEA EDX,[EDX + 0x33c]
0049c1f5  e8a6282500                CALL 0x006eeaa0
0049c1fa  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049c200  56                        PUSH ESI
0049c201  57                        PUSH EDI
0049c202  6a00                      PUSH 0x0
0049c204  6840b6c700                PUSH 0xc7b640
0049c209  50                        PUSH EAX
0049c20a  6a64                      PUSH 0x64
0049c20c  6a05                      PUSH 0x5
0049c20e  e80dc9f8ff                CALL 0x00428b20
0049c213  8bf0                      MOV ESI,EAX
0049c215  e8462d2500                CALL 0x006eef60
0049c21a  8b8e3c030000              MOV ECX,dword ptr [ESI + 0x33c]
0049c220  8b9640030000              MOV EDX,dword ptr [ESI + 0x340]
0049c226  50                        PUSH EAX
0049c227  6a00                      PUSH 0x0
0049c229  6a00                      PUSH 0x0
0049c22b  6840b6c700                PUSH 0xc7b640
0049c230  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049c236  898d9cfdffff              MOV dword ptr [EBP + 0xfffffd9c],ECX
0049c23c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049c242  50                        PUSH EAX
0049c243  6a0f                      PUSH 0xf
0049c245  68e8030000                PUSH 0x3e8
0049c24a  8995a0fdffff              MOV dword ptr [EBP + 0xfffffda0],EDX
0049c250  e8cbc8f8ff                CALL 0x00428b20
0049c255  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0049c25d  51                        PUSH ECX
0049c25e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049c265  6a00                      PUSH 0x0
0049c267  6a02                      PUSH 0x2
0049c269  680c010000                PUSH 0x10c
0049c26e  e86da64b00                CALL 0x009568e0
0049c273  8bbd88fdffff              MOV EDI,dword ptr [EBP + 0xfffffd88]
0049c279  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0049c27d  740d                      JZ 0x0049c28c
0049c27f  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0049c286  0f85c6dcffff              JNZ 0x00499f52
0049c28c  8b07                      MOV EAX,dword ptr [EDI]
0049c28e  8bcf                      MOV ECX,EDI
0049c290  ff5028                    CALL dword ptr [EAX + 0x28]
0049c293  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049c299  57                        PUSH EDI
0049c29a  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0049c2a0  e85b293600                CALL 0x007fec00
0049c2a5  e931080000                JMP 0x0049cadb
0049c2aa  c785b8fdffff00000000      MOV dword ptr [EBP + 0xfffffdb8],0x0
0049c2b4  8b8da4fdffff              MOV ECX,dword ptr [EBP + 0xfffffda4]
0049c2ba  50                        PUSH EAX
0049c2bb  e840453500                CALL 0x007f0800
0049c2c0  83f803                    CMP EAX,0x3
0049c2c3  7409                      JZ 0x0049c2ce
0049c2c5  83f802                    CMP EAX,0x2
0049c2c8  0f8555010000              JNZ 0x0049c423
0049c2ce  8b85b8fdffff              MOV EAX,dword ptr [EBP + 0xfffffdb8]
0049c2d4  85c0                      TEST EAX,EAX
0049c2d6  0f8447010000              JZ 0x0049c423
0049c2dc  83783c03                  CMP dword ptr [EAX + 0x3c],0x3
0049c2e0  0f853d010000              JNZ 0x0049c423
0049c2e6  8b00                      MOV EAX,dword ptr [EAX]
0049c2e8  8d8d10fdffff              LEA ECX,[EBP + 0xfffffd10]
0049c2ee  ffb588fdffff              PUSH dword ptr [EBP + 0xfffffd88]
0049c2f4  8b7814                    MOV EDI,dword ptr [EAX + 0x14]
0049c2f7  e81450f9ff                CALL 0x00431310
0049c2fc  8b8db8fdffff              MOV ECX,dword ptr [EBP + 0xfffffdb8]
0049c302  8d8510fdffff              LEA EAX,[EBP + 0xfffffd10]
0049c308  50                        PUSH EAX
0049c309  6a00                      PUSH 0x0
0049c30b  ffd7                      CALL EDI
0049c30d  8bbd88fdffff              MOV EDI,dword ptr [EBP + 0xfffffd88]
0049c313  84c0                      TEST AL,AL
0049c315  0f8408010000              JZ 0x0049c423
0049c31b  a17816c700                MOV EAX,[0x00c71678]
0049c320  f30f103504a9ba00          MOVSS XMM6,dword ptr [0x00baa904]
0049c328  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0049c32e  8985c0fdffff              MOV dword ptr [EBP + 0xfffffdc0],EAX
0049c334  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
0049c337  8b85b8fdffff              MOV EAX,dword ptr [EBP + 0xfffffdb8]
0049c33d  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0049c340  99                        CDQ
0049c341  f7f9                      IDIV ECX
0049c343  8d8d58fdffff              LEA ECX,[EBP + 0xfffffd58]
0049c349  660f6eca                  MOVD XMM1,EDX
0049c34d  8d9568fdffff              LEA EDX,[EBP + 0xfffffd68]
0049c353  0f5bc9                    CVTDQ2PS XMM1,XMM1
0049c356  660f6ee8                  MOVD XMM5,EAX
0049c35a  f30f59ce                  MULSS XMM1,XMM6
0049c35e  0f5bed                    CVTDQ2PS XMM5,XMM5
0049c361  f30f58ce                  ADDSS XMM1,XMM6
0049c365  f30f59ee                  MULSS XMM5,XMM6
0049c369  f30f582d00aaba00          ADDSS XMM5,dword ptr [0x00baaa00]
0049c371  0f28c1                    MOVAPS XMM0,XMM1
0049c374  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0049c37c  f30f118568fdffff          MOVSS dword ptr [EBP + 0xfffffd68],XMM0
0049c384  0f28c5                    MOVAPS XMM0,XMM5
0049c387  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0049c38f  f30f11856cfdffff          MOVSS dword ptr [EBP + 0xfffffd6c],XMM0
0049c397  e8d42d1e00                CALL 0x0067f170
0049c39c  f30f108558fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd58]
0049c3a4  8d85b0fdffff              LEA EAX,[EBP + 0xfffffdb0]
0049c3aa  8b8dc0fdffff              MOV ECX,dword ptr [EBP + 0xfffffdc0]
0049c3b0  f30f59c6                  MULSS XMM0,XMM6
0049c3b4  50                        PUSH EAX
0049c3b5  f30f58c1                  ADDSS XMM0,XMM1
0049c3b9  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
0049c3c1  f30f10855cfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd5c]
0049c3c9  f30f59c6                  MULSS XMM0,XMM6
0049c3cd  f30f58c5                  ADDSS XMM0,XMM5
0049c3d1  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
0049c3d9  e8b2683700                CALL 0x00812c90
0049c3de  85c0                      TEST EAX,EAX
0049c3e0  7827                      JS 0x0049c409
0049c3e2  3dc0010000                CMP EAX,0x1c0
0049c3e7  7d0c                      JGE 0x0049c3f5
0049c3e9  8b8da4fdffff              MOV ECX,dword ptr [EBP + 0xfffffda4]
0049c3ef  8b448124                  MOV EAX,dword ptr [ECX + EAX*0x4 + 0x24]
0049c3f3  eb02                      JMP 0x0049c3f7
0049c3f5  33c0                      XOR EAX,EAX
0049c3f7  ffb5b8fdffff              PUSH dword ptr [EBP + 0xfffffdb8]
0049c3fd  8b8dc0fdffff              MOV ECX,dword ptr [EBP + 0xfffffdc0]
0049c403  50                        PUSH EAX
0049c404  e8d7223800                CALL 0x0081e6e0
0049c409  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0049c411  b001                      MOV AL,0x1
0049c413  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
0049c41b  8885c7fdffff              MOV byte ptr [EBP + 0xfffffdc7],AL
0049c421  eb16                      JMP 0x0049c439
0049c423  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
0049c42b  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0049c433  8a85c7fdffff              MOV AL,byte ptr [EBP + 0xfffffdc7]
0049c439  83c608                    ADD ESI,0x8
0049c43c  3bb77c010000              CMP ESI,dword ptr [EDI + 0x17c]
0049c442  0f8568dbffff              JNZ 0x00499fb0
0049c448  84c0                      TEST AL,AL
0049c44a  742d                      JZ 0x0049c479
0049c44c  f30f108f94010000          MOVSS XMM1,dword ptr [EDI + 0x194]
0049c454  f30f108798010000          MOVSS XMM0,dword ptr [EDI + 0x198]
0049c45c  f30f59ca                  MULSS XMM1,XMM2
0049c460  f30f59c2                  MULSS XMM0,XMM2
0049c464  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0049c46c  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0049c474  e98d050000                JMP 0x0049ca06
0049c479  80bd70fdffff00            CMP byte ptr [EBP + 0xfffffd70],0x0
0049c480  0f8480050000              JZ 0x0049ca06
0049c486  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0049c48c  8d8dc0fdffff              LEA ECX,[EBP + 0xfffffdc0]
0049c492  c785c0fdffff34000000      MOV dword ptr [EBP + 0xfffffdc0],0x34
0049c49c  e8dfa24b00                CALL 0x00956780
0049c4a1  83ec08                    SUB ESP,0x8
0049c4a4  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0049c4ac  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049c4b3  6a00                      PUSH 0x0
0049c4b5  6a14                      PUSH 0x14
0049c4b7  51                        PUSH ECX
0049c4b8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049c4bf  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0049c4c5  ffb5c0fdffff              PUSH dword ptr [EBP + 0xfffffdc0]
0049c4cb  e860174900                CALL 0x0092dc30
0049c4d0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049c4d6  6a0e                      PUSH 0xe
0049c4d8  e893712600                CALL 0x00703670
0049c4dd  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0049c4e0  85f6                      TEST ESI,ESI
0049c4e2  744a                      JZ 0x0049c52e
0049c4e4  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0049c4e8  8bc6                      MOV EAX,ESI
0049c4ea  7202                      JC 0x0049c4ee
0049c4ec  8b06                      MOV EAX,dword ptr [ESI]
0049c4ee  b9f0e5b100                MOV ECX,0xb1e5f0
0049c4f3  8a10                      MOV DL,byte ptr [EAX]
0049c4f5  3a11                      CMP DL,byte ptr [ECX]
0049c4f7  751a                      JNZ 0x0049c513
0049c4f9  84d2                      TEST DL,DL
0049c4fb  7412                      JZ 0x0049c50f
0049c4fd  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049c500  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0049c503  750e                      JNZ 0x0049c513
0049c505  83c002                    ADD EAX,0x2
0049c508  83c102                    ADD ECX,0x2
0049c50b  84d2                      TEST DL,DL
0049c50d  75e4                      JNZ 0x0049c4f3
0049c50f  33c0                      XOR EAX,EAX
0049c511  eb05                      JMP 0x0049c518
0049c513  1bc0                      SBB EAX,EAX
0049c515  83c801                    OR EAX,0x1
0049c518  85c0                      TEST EAX,EAX
0049c51a  7512                      JNZ 0x0049c52e
0049c51c  384634                    CMP byte ptr [ESI + 0x34],AL
0049c51f  742e                      JZ 0x0049c54f
0049c521  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0049c527  8d7748                    LEA ESI,[EDI + 0x48]
0049c52a  7523                      JNZ 0x0049c54f
0049c52c  eb03                      JMP 0x0049c531
0049c52e  8d7748                    LEA ESI,[EDI + 0x48]
0049c531  6a01                      PUSH 0x1
0049c533  68f0e5b100                PUSH 0xb1e5f0
0049c538  8bce                      MOV ECX,ESI
0049c53a  e891e0f6ff                CALL 0x0040a5d0
0049c53f  84c0                      TEST AL,AL
0049c541  740c                      JZ 0x0049c54f
0049c543  8d4e30                    LEA ECX,[ESI + 0x30]
0049c546  e865dcf6ff                CALL 0x0040a1b0
0049c54b  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0049c54f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0049c555  8d8dc0fdffff              LEA ECX,[EBP + 0xfffffdc0]
0049c55b  c785c0fdffffd1020000      MOV dword ptr [EBP + 0xfffffdc0],0x2d1
0049c565  e816a24b00                CALL 0x00956780
0049c56a  83ec08                    SUB ESP,0x8
0049c56d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0049c575  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049c57c  6a00                      PUSH 0x0
0049c57e  6a02                      PUSH 0x2
0049c580  51                        PUSH ECX
0049c581  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049c588  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0049c58e  ffb5c0fdffff              PUSH dword ptr [EBP + 0xfffffdc0]
0049c594  e897164900                CALL 0x0092dc30
0049c599  8bcf                      MOV ECX,EDI
0049c59b  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
0049c5a5  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0049c5af  c787c00b00003c000000      MOV dword ptr [EDI + 0xbc0],0x3c
0049c5b9  e882222200                CALL 0x006be840
0049c5be  8db73c030000              LEA ESI,[EDI + 0x33c]
0049c5c4  c785b4fdffff0a000000      MOV dword ptr [EBP + 0xfffffdb4],0xa
0049c5ce  6690                      NOP
0049c5d0  e88b292500                CALL 0x006eef60
0049c5d5  660f6ec0                  MOVD XMM0,EAX
0049c5d9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049c5dd  c1e81f                    SHR EAX,0x1f
0049c5e0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049c5e9  660f5ac0                  CVTPD2PS XMM0,XMM0
0049c5ed  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049c5f5  f30f59055caaba00          MULSS XMM0,dword ptr [0x00baaa5c]
0049c5fd  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
0049c605  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0049c60d  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
0049c615  e8260ff8ff                CALL 0x0041d540
0049c61a  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
0049c622  f30f1085acfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdac]
0049c62a  e8f10ef8ff                CALL 0x0041d520
0049c62f  f30f108f9c010000          MOVSS XMM1,dword ptr [EDI + 0x19c]
0049c637  f30f118dacfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM1
0049c63f  f30f108fa0010000          MOVSS XMM1,dword ptr [EDI + 0x1a0]
0049c647  f30f118554fdffff          MOVSS dword ptr [EBP + 0xfffffd54],XMM0
0049c64f  f30f118d64fdffff          MOVSS dword ptr [EBP + 0xfffffd64],XMM1
0049c657  e804292500                CALL 0x006eef60
0049c65c  f30f10adacfdffff          MOVSS XMM5,dword ptr [EBP + 0xfffffdac]
0049c664  f30f109d64fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffd64]
0049c66c  0f28c3                    MOVAPS XMM0,XMM3
0049c66f  f30f599d90fdffff          MULSS XMM3,dword ptr [EBP + 0xfffffd90]
0049c677  f30f598554fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffd54]
0049c67f  660f6ec8                  MOVD XMM1,EAX
0049c683  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0049c687  c1e81f                    SHR EAX,0x1f
0049c68a  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0049c693  660f5ad1                  CVTPD2PS XMM2,XMM1
0049c697  0f28cd                    MOVAPS XMM1,XMM5
0049c69a  f30f59ad54fdffff          MULSS XMM5,dword ptr [EBP + 0xfffffd54]
0049c6a2  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0049c6aa  f30f598d90fdffff          MULSS XMM1,dword ptr [EBP + 0xfffffd90]
0049c6b2  f30f58eb                  ADDSS XMM5,XMM3
0049c6b6  f30f59155ca7ba00          MULSS XMM2,dword ptr [0x00baa75c]
0049c6be  f30f5cc8                  SUBSS XMM1,XMM0
0049c6c2  f30f581554a8ba00          ADDSS XMM2,dword ptr [0x00baa854]
0049c6ca  f30f59ca                  MULSS XMM1,XMM2
0049c6ce  f30f59ea                  MULSS XMM5,XMM2
0049c6d2  f30f118d9cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM1
0049c6da  f30f11ada0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM5
0049c6e2  e879282500                CALL 0x006eef60
0049c6e7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049c6ed  50                        PUSH EAX
0049c6ee  6a00                      PUSH 0x0
0049c6f0  57                        PUSH EDI
0049c6f1  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049c6f7  50                        PUSH EAX
0049c6f8  56                        PUSH ESI
0049c6f9  6a3b                      PUSH 0x3b
0049c6fb  68e8030000                PUSH 0x3e8
0049c700  e81bc4f8ff                CALL 0x00428b20
0049c705  8bf0                      MOV ESI,EAX
0049c707  e854282500                CALL 0x006eef60
0049c70c  a801                      TEST AL,0x1
0049c70e  740a                      JZ 0x0049c71a
0049c710  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0049c718  eb08                      JMP 0x0049c722
0049c71a  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0049c722  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
0049c72a  e831282500                CALL 0x006eef60
0049c72f  660f6ec0                  MOVD XMM0,EAX
0049c733  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049c737  c1e81f                    SHR EAX,0x1f
0049c73a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049c743  660f5ac0                  CVTPD2PS XMM0,XMM0
0049c747  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049c74f  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0049c757  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0049c75f  f30f5985c0fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdc0]
0049c767  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
0049c76f  e8ec272500                CALL 0x006eef60
0049c774  660f6ec0                  MOVD XMM0,EAX
0049c778  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049c77c  c1e81f                    SHR EAX,0x1f
0049c77f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049c788  660f5ac8                  CVTPD2PS XMM1,XMM0
0049c78c  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0049c794  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
0049c79c  f30f580de0a3ba00          ADDSS XMM1,dword ptr [0x00baa3e0]
0049c7a4  0f28c1                    MOVAPS XMM0,XMM1
0049c7a7  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0049c7af  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0049c7b7  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
0049c7bf  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
0049c7c7  e894272500                CALL 0x006eef60
0049c7cc  33d2                      XOR EDX,EDX
0049c7ce  b914000000                MOV ECX,0x14
0049c7d3  f7f1                      DIV ECX
0049c7d5  03d1                      ADD EDX,ECX
0049c7d7  8d4dc0                    LEA ECX,[EBP + -0x40]
0049c7da  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
0049c7e0  899660040000              MOV dword ptr [ESI + 0x460],EDX
0049c7e6  e8e5661e00                CALL 0x00682ed0
0049c7eb  8b06                      MOV EAX,dword ptr [ESI]
0049c7ed  8d4dc0                    LEA ECX,[EBP + -0x40]
0049c7f0  0f2805f0bdba00            MOVAPS XMM0,xmmword ptr [0x00babdf0]
0049c7f7  6a01                      PUSH 0x1
0049c7f9  6a00                      PUSH 0x0
0049c7fb  68ff000000                PUSH 0xff
0049c800  6aff                      PUSH -0x1
0049c802  51                        PUSH ECX
0049c803  8bce                      MOV ECX,ESI
0049c805  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
0049c809  ff503c                    CALL dword ptr [EAX + 0x3c]
0049c80c  83adb4fdffff01            SUB dword ptr [EBP + 0xfffffdb4],0x1
0049c813  8db73c030000              LEA ESI,[EDI + 0x33c]
0049c819  0f85b1fdffff              JNZ 0x0049c5d0
0049c81f  8d8dc8fdffff              LEA ECX,[EBP + 0xfffffdc8]
0049c825  e80627faff                CALL 0x0043ef30
0049c82a  f30f108f9c010000          MOVSS XMM1,dword ptr [EDI + 0x19c]
0049c832  8d85c8fdffff              LEA EAX,[EBP + 0xfffffdc8]
0049c838  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0049c840  50                        PUSH EAX
0049c841  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0049c849  8d859cfdffff              LEA EAX,[EBP + 0xfffffd9c]
0049c84f  51                        PUSH ECX
0049c850  f30f5cc1                  SUBSS XMM0,XMM1
0049c854  c7042400000000            MOV dword ptr [ESP],0x0
0049c85b  f30f108fa0010000          MOVSS XMM1,dword ptr [EDI + 0x1a0]
0049c863  8bcf                      MOV ECX,EDI
0049c865  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0049c86d  50                        PUSH EAX
0049c86e  6a08                      PUSH 0x8
0049c870  f30f11859cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM0
0049c878  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0049c880  f30f5cc1                  SUBSS XMM0,XMM1
0049c884  c7855cfeffff09000000      MOV dword ptr [EBP + 0xfffffe5c],0x9
0049c88e  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
0049c896  e835052300                CALL 0x006ccdd0
0049c89b  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0049c8a1  33d2                      XOR EDX,EDX
0049c8a3  81c6a8ba0100              ADD ESI,0x1baa8
0049c8a9  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
0049c8af  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0049c8b2  2b06                      SUB EAX,dword ptr [ESI]
0049c8b4  c1f802                    SAR EAX,0x2
0049c8b7  85c0                      TEST EAX,EAX
0049c8b9  0f8447010000              JZ 0x0049ca06
0049c8bf  90                        NOP
0049c8c0  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0049c8c3  8bc1                      MOV EAX,ECX
0049c8c5  2b06                      SUB EAX,dword ptr [ESI]
0049c8c7  c1f802                    SAR EAX,0x2
0049c8ca  85c0                      TEST EAX,EAX
0049c8cc  7518                      JNZ 0x0049c8e6
0049c8ce  68bce6b700                PUSH 0xb7e6bc
0049c8d3  6a10                      PUSH 0x10
0049c8d5  e8e6495700                CALL 0x00a112c0
0049c8da  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0049c8dd  83c408                    ADD ESP,0x8
0049c8e0  8b95bcfdffff              MOV EDX,dword ptr [EBP + 0xfffffdbc]
0049c8e6  8b06                      MOV EAX,dword ptr [ESI]
0049c8e8  2bc8                      SUB ECX,EAX
0049c8ea  c1f902                    SAR ECX,0x2
0049c8ed  3bd1                      CMP EDX,ECX
0049c8ef  7303                      JNC 0x0049c8f4
0049c8f1  8d0490                    LEA EAX,[EAX + EDX*0x4]
0049c8f4  8b30                      MOV ESI,dword ptr [EAX]
0049c8f6  89b5acfdffff              MOV dword ptr [EBP + 0xfffffdac],ESI
0049c8fc  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0049c904  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0049c90c  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
0049c914  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0049c91c  0f28c1                    MOVAPS XMM0,XMM1
0049c91f  f30f118db4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM1
0049c927  f30f59c1                  MULSS XMM0,XMM1
0049c92b  0f28ca                    MOVAPS XMM1,XMM2
0049c92e  f30f1195c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM2
0049c936  f30f59ca                  MULSS XMM1,XMM2
0049c93a  f30f58c1                  ADDSS XMM0,XMM1
0049c93e  e80d91f9ff                CALL 0x00435a50
0049c943  f30f100d44aaba00          MOVSS XMM1,dword ptr [0x00baaa44]
0049c94b  0f2fc8                    COMISS XMM1,XMM0
0049c94e  0f8689000000              JBE 0x0049c9dd
0049c954  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0049c95b  f30f1095c0fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdc0]
0049c963  7621                      JBE 0x0049c986
0049c965  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0049c96d  f30f5ec8                  DIVSS XMM1,XMM0
0049c971  0f28c1                    MOVAPS XMM0,XMM1
0049c974  f30f59d0                  MULSS XMM2,XMM0
0049c978  f30f1085b4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb4]
0049c980  f30f59c1                  MULSS XMM0,XMM1
0049c984  eb08                      JMP 0x0049c98e
0049c986  f30f1085b4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb4]
0049c98e  8b06                      MOV EAX,dword ptr [ESI]
0049c990  8d8de8fcffff              LEA ECX,[EBP + 0xfffffce8]
0049c996  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
0049c99e  57                        PUSH EDI
0049c99f  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0049c9a7  8b7054                    MOV ESI,dword ptr [EAX + 0x54]
0049c9aa  f30f119568fdffff          MOVSS dword ptr [EBP + 0xfffffd68],XMM2
0049c9b2  f30f11856cfdffff          MOVSS dword ptr [EBP + 0xfffffd6c],XMM0
0049c9ba  e85149f9ff                CALL 0x00431310
0049c9bf  51                        PUSH ECX
0049c9c0  8b8dacfdffff              MOV ECX,dword ptr [EBP + 0xfffffdac]
0049c9c6  8d8568fdffff              LEA EAX,[EBP + 0xfffffd68]
0049c9cc  c7042400001041            MOV dword ptr [ESP],0x41100000
0049c9d3  50                        PUSH EAX
0049c9d4  8d85e8fcffff              LEA EAX,[EBP + 0xfffffce8]
0049c9da  50                        PUSH EAX
0049c9db  ffd6                      CALL ESI
0049c9dd  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0049c9e3  8b95bcfdffff              MOV EDX,dword ptr [EBP + 0xfffffdbc]
0049c9e9  81c6a8ba0100              ADD ESI,0x1baa8
0049c9ef  42                        INC EDX
0049c9f0  8995bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EDX
0049c9f6  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0049c9f9  2b06                      SUB EAX,dword ptr [ESI]
0049c9fb  c1f802                    SAR EAX,0x2
0049c9fe  3bd0                      CMP EDX,EAX
0049ca00  0f82bafeffff              JC 0x0049c8c0
0049ca06  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0049ca0c  85c0                      TEST EAX,EAX
0049ca0e  7e0c                      JLE 0x0049ca1c
0049ca10  2b8584fdffff              SUB EAX,dword ptr [EBP + 0xfffffd84]
0049ca16  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0049ca1c  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0049ca22  83f803                    CMP EAX,0x3
0049ca25  7409                      JZ 0x0049ca30
0049ca27  83f804                    CMP EAX,0x4
0049ca2a  0f85ab000000              JNZ 0x0049cadb
0049ca30  83bfc40b00000c            CMP dword ptr [EDI + 0xbc4],0xc
0049ca37  0f8c9e000000              JL 0x0049cadb
0049ca3d  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0049ca47  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
0049ca51  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0049ca54  85f6                      TEST ESI,ESI
0049ca56  744a                      JZ 0x0049caa2
0049ca58  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0049ca5c  8bc6                      MOV EAX,ESI
0049ca5e  7202                      JC 0x0049ca62
0049ca60  8b06                      MOV EAX,dword ptr [ESI]
0049ca62  b9fce5b100                MOV ECX,0xb1e5fc
0049ca67  8a10                      MOV DL,byte ptr [EAX]
0049ca69  3a11                      CMP DL,byte ptr [ECX]
0049ca6b  751a                      JNZ 0x0049ca87
0049ca6d  84d2                      TEST DL,DL
0049ca6f  7412                      JZ 0x0049ca83
0049ca71  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0049ca74  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0049ca77  750e                      JNZ 0x0049ca87
0049ca79  83c002                    ADD EAX,0x2
0049ca7c  83c102                    ADD ECX,0x2
0049ca7f  84d2                      TEST DL,DL
0049ca81  75e4                      JNZ 0x0049ca67
0049ca83  33c0                      XOR EAX,EAX
0049ca85  eb05                      JMP 0x0049ca8c
0049ca87  1bc0                      SBB EAX,EAX
0049ca89  83c801                    OR EAX,0x1
0049ca8c  85c0                      TEST EAX,EAX
0049ca8e  7512                      JNZ 0x0049caa2
0049ca90  384634                    CMP byte ptr [ESI + 0x34],AL
0049ca93  742e                      JZ 0x0049cac3
0049ca95  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0049ca9b  8d7748                    LEA ESI,[EDI + 0x48]
0049ca9e  7523                      JNZ 0x0049cac3
0049caa0  eb03                      JMP 0x0049caa5
0049caa2  8d7748                    LEA ESI,[EDI + 0x48]
0049caa5  6a01                      PUSH 0x1
0049caa7  68fce5b100                PUSH 0xb1e5fc
0049caac  8bce                      MOV ECX,ESI
0049caae  e81ddbf6ff                CALL 0x0040a5d0
0049cab3  84c0                      TEST AL,AL
0049cab5  740c                      JZ 0x0049cac3
0049cab7  8d4e30                    LEA ECX,[ESI + 0x30]
0049caba  e8f1d6f6ff                CALL 0x0040a1b0
0049cabf  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0049cac3  8bcf                      MOV ECX,EDI
0049cac5  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
0049cacc  e85f1b2100                CALL 0x006ae630
0049cad1  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0049cadb  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0049cade  64890d00000000            MOV dword ptr FS:[0x0],ECX
0049cae5  59                        POP ECX
0049cae6  5f                        POP EDI
0049cae7  5e                        POP ESI
0049cae8  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0049caeb  33cd                      XOR ECX,EBP
0049caed  e839266500                CALL 0x00aef12b
0049caf2  8be5                      MOV ESP,EBP
0049caf4  5d                        POP EBP
0049caf5  8be3                      MOV ESP,EBX
0049caf7  5b                        POP EBX
0049caf8  c3                        RET
