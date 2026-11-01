; J460 NPC AI 0x00597d00 HELPER_Laser_DoDamage
; types=7
; identities=7.*
; entry=00597d00
00597d00  55                        PUSH EBP
00597d01  8bec                      MOV EBP,ESP
00597d03  83ec60                    SUB ESP,0x60
00597d06  a1b493bf00                MOV EAX,[0x00bf93b4]
00597d0b  33c5                      XOR EAX,EBP
00597d0d  8945f8                    MOV dword ptr [EBP + -0x8],EAX
00597d10  53                        PUSH EBX
00597d11  8bd9                      MOV EBX,ECX
00597d13  56                        PUSH ESI
00597d14  57                        PUSH EDI
00597d15  83bb280c000009            CMP dword ptr [EBX + 0xc28],0x9
00597d1c  0f82b8040000              JC 0x005981da
00597d22  64a12c000000              MOV EAX,FS:[0x2c]
00597d28  8b30                      MOV ESI,dword ptr [EAX]
00597d2a  a138f8c700                MOV EAX,[0x00c7f838]
00597d2f  3b860c000000              CMP EAX,dword ptr [ESI + 0xc]
00597d35  0f8fb2040000              JG 0x005981ed
00597d3b  a148f8c700                MOV EAX,[0x00c7f848]
00597d40  3b860c000000              CMP EAX,dword ptr [ESI + 0xc]
00597d46  0f8fda040000              JG 0x00598226
00597d4c  8b353cf8c700              MOV ESI,dword ptr [0x00c7f83c]
00597d52  33ff                      XOR EDI,EDI
00597d54  a14cf8c700                MOV EAX,[0x00c7f84c]
00597d59  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
00597d61  893540f8c700              MOV dword ptr [0x00c7f840],ESI
00597d67  a350f8c700                MOV [0x00c7f850],EAX
00597d6c  39bb280c0000              CMP dword ptr [EBX + 0xc28],EDI
00597d72  0f8782000000              JA 0x00597dfa
00597d78  8bf8                      MOV EDI,EAX
00597d7a  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
00597d80  0f57d2                    XORPS XMM2,XMM2
00597d83  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00597d87  8945c0                    MOV dword ptr [EBP + -0x40],EAX
00597d8a  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
00597d8f  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00597d94  8d5002                    LEA EDX,[EAX + 0x2]
00597d97  8b83200c0000              MOV EAX,dword ptr [EBX + 0xc20]
00597d9d  8bca                      MOV ECX,EDX
00597d9f  48                        DEC EAX
00597da0  d1e9                      SHR ECX,0x1
00597da2  23c8                      AND ECX,EAX
00597da4  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
00597da9  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
00597daf  83e201                    AND EDX,0x1
00597db2  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
00597db7  c745c000000000            MOV dword ptr [EBP + -0x40],0x0
00597dbe  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00597dc1  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
00597dc6  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00597dcb  3b3d54f8c700              CMP EDI,dword ptr [0x00c7f854]
00597dd1  0f84a5010000              JZ 0x00597f7c
00597dd7  0f1045b4                  MOVUPS XMM0,xmmword ptr [EBP + -0x4c]
00597ddb  0f1107                    MOVUPS xmmword ptr [EDI],XMM0
00597dde  8b3550f8c700              MOV ESI,dword ptr [0x00c7f850]
00597de4  83c610                    ADD ESI,0x10
00597de7  893550f8c700              MOV dword ptr [0x00c7f850],ESI
00597ded  e99d010000                JMP 0x00597f8f
00597df2  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
00597dfa  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
00597e00  83ec08                    SUB ESP,0x8
00597e03  8b8b200c0000              MOV ECX,dword ptr [EBX + 0xc20]
00597e09  f30f100dc48dc700          MOVSS XMM1,dword ptr [0x00c78dc4]
00597e11  49                        DEC ECX
00597e12  f30f5c0d20abba00          SUBSS XMM1,dword ptr [0x00baab20]
00597e1a  8d1438                    LEA EDX,[EAX + EDI*0x1]
00597e1d  8945b0                    MOV dword ptr [EBP + -0x50],EAX
00597e20  f30f10151c94bf00          MOVSS XMM2,dword ptr [0x00bf941c]
00597e28  8bc2                      MOV EAX,EDX
00597e2a  f30f5915e893bf00          MULSS XMM2,dword ptr [0x00bf93e8]
00597e32  83e201                    AND EDX,0x1
00597e35  d1e8                      SHR EAX,0x1
00597e37  23c8                      AND ECX,EAX
00597e39  f30f59cb                  MULSS XMM1,XMM3
00597e3d  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
00597e43  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
00597e48  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
00597e4b  8b04d1                    MOV EAX,dword ptr [ECX + EDX*0x8]
00597e4e  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00597e51  f30f1045bc                MOVSS XMM0,dword ptr [EBP + -0x44]
00597e56  f30f5c0550a9ba00          SUBSS XMM0,dword ptr [0x00baa950]
00597e5e  8b4cd104                  MOV ECX,dword ptr [ECX + EDX*0x8 + 0x4]
00597e62  894dc0                    MOV dword ptr [EBP + -0x40],ECX
00597e65  f30f590524a3ba00          MULSS XMM0,dword ptr [0x00baa324]
00597e6d  f30f58c8                  ADDSS XMM1,XMM0
00597e71  f30f59ca                  MULSS XMM1,XMM2
00597e75  f30f58cb                  ADDSS XMM1,XMM3
00597e79  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
00597e7e  d945c8                    FLD dword ptr [EBP + -0x38]
00597e81  dd1c24                    FSTP qword ptr [ESP]
00597e84  e88e8a5500                CALL 0x00af0917
00597e89  d95dc8                    FSTP dword ptr [EBP + -0x38]
00597e8c  d945c8                    FLD dword ptr [EBP + -0x38]
00597e8f  d95dc8                    FSTP dword ptr [EBP + -0x38]
00597e92  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
00597e97  f30f5e45c4                DIVSS XMM0,dword ptr [EBP + -0x3c]
00597e9c  f30f100ddc8ec700          MOVSS XMM1,dword ptr [0x00c78edc]
00597ea4  f30f5c0d7caaba00          SUBSS XMM1,dword ptr [0x00baaa7c]
00597eac  f30f1145b0                MOVSS dword ptr [EBP + -0x50],XMM0
00597eb1  f30f1045c0                MOVSS XMM0,dword ptr [EBP + -0x40]
00597eb6  f30f5c0530aaba00          SUBSS XMM0,dword ptr [0x00baaa30]
00597ebe  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00597ec6  f30f590524a3ba00          MULSS XMM0,dword ptr [0x00baa324]
00597ece  f30f58c8                  ADDSS XMM1,XMM0
00597ed2  f30f594dc4                MULSS XMM1,dword ptr [EBP + -0x3c]
00597ed7  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
00597edf  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
00597ee4  d945c8                    FLD dword ptr [EBP + -0x38]
00597ee7  dd1c24                    FSTP qword ptr [ESP]
00597eea  e8288a5500                CALL 0x00af0917
00597eef  d95dc8                    FSTP dword ptr [EBP + -0x38]
00597ef2  d945c8                    FLD dword ptr [EBP + -0x38]
00597ef5  83c408                    ADD ESP,0x8
00597ef8  d95dc8                    FSTP dword ptr [EBP + -0x38]
00597efb  f30f104dc8                MOVSS XMM1,dword ptr [EBP + -0x38]
00597f00  f30f5e4dc4                DIVSS XMM1,dword ptr [EBP + -0x3c]
00597f05  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
00597f08  f30f1045b0                MOVSS XMM0,dword ptr [EBP + -0x50]
00597f0d  f30f5800                  ADDSS XMM0,dword ptr [EAX]
00597f11  f30f584804                ADDSS XMM1,dword ptr [EAX + 0x4]
00597f16  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00597f1b  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
00597f20  3b3544f8c700              CMP ESI,dword ptr [0x00c7f844]
00597f26  741f                      JZ 0x00597f47
00597f28  f30f1106                  MOVSS dword ptr [ESI],XMM0
00597f2c  a140f8c700                MOV EAX,[0x00c7f840]
00597f31  f30f114804                MOVSS dword ptr [EAX + 0x4],XMM1
00597f36  8b3540f8c700              MOV ESI,dword ptr [0x00c7f840]
00597f3c  83c608                    ADD ESI,0x8
00597f3f  893540f8c700              MOV dword ptr [0x00c7f840],ESI
00597f45  eb15                      JMP 0x00597f5c
00597f47  8d45bc                    LEA EAX,[EBP + -0x44]
00597f4a  b93cf8c700                MOV ECX,0xc7f83c
00597f4f  50                        PUSH EAX
00597f50  56                        PUSH ESI
00597f51  e8da74e9ff                CALL 0x0042f430
00597f56  8b3540f8c700              MOV ESI,dword ptr [0x00c7f840]
00597f5c  83c703                    ADD EDI,0x3
00597f5f  3bbb280c0000              CMP EDI,dword ptr [EBX + 0xc28]
00597f65  0f8287feffff              JC 0x00597df2
00597f6b  8b353cf8c700              MOV ESI,dword ptr [0x00c7f83c]
00597f71  8b3d50f8c700              MOV EDI,dword ptr [0x00c7f850]
00597f77  e9fefdffff                JMP 0x00597d7a
00597f7c  8d45b4                    LEA EAX,[EBP + -0x4c]
00597f7f  50                        PUSH EAX
00597f80  57                        PUSH EDI
00597f81  e80a030000                CALL 0x00598290
00597f86  8b3550f8c700              MOV ESI,dword ptr [0x00c7f850]
00597f8c  0f57d2                    XORPS XMM2,XMM2
00597f8f  a140f8c700                MOV EAX,[0x00c7f840]
00597f94  bf01000000                MOV EDI,0x1
00597f99  8b0d3cf8c700              MOV ECX,dword ptr [0x00c7f83c]
00597f9f  2bc1                      SUB EAX,ECX
00597fa1  c1f803                    SAR EAX,0x3
00597fa4  48                        DEC EAX
00597fa5  3bc7                      CMP EAX,EDI
00597fa7  0f864b010000              JBE 0x005980f8
00597fad  ba03000000                MOV EDX,0x3
00597fb2  8955c8                    MOV dword ptr [EBP + -0x38],EDX
00597fb5  f30f1004f9                MOVSS XMM0,dword ptr [ECX + EDI*0x8]
00597fba  f30f101df8a1ba00          MOVSS XMM3,dword ptr [0x00baa1f8]
00597fc2  f30f1054f9f8              MOVSS XMM2,dword ptr [ECX + EDI*0x8 + -0x8]
00597fc8  f30f102580a2ba00          MOVSS XMM4,dword ptr [0x00baa280]
00597fd0  f30f104cf9fc              MOVSS XMM1,dword ptr [ECX + EDI*0x8 + -0x4]
00597fd6  8b83240c0000              MOV EAX,dword ptr [EBX + 0xc24]
00597fdc  f30f59c4                  MULSS XMM0,XMM4
00597fe0  83c002                    ADD EAX,0x2
00597fe3  03d0                      ADD EDX,EAX
00597fe5  c745b000000000            MOV dword ptr [EBP + -0x50],0x0
00597fec  f30f59d3                  MULSS XMM2,XMM3
00597ff0  8bc2                      MOV EAX,EDX
00597ff2  83e201                    AND EDX,0x1
00597ff5  d1e8                      SHR EAX,0x1
00597ff7  f30f59cb                  MULSS XMM1,XMM3
00597ffb  f30f58d0                  ADDSS XMM2,XMM0
00597fff  f30f1044f908              MOVSS XMM0,dword ptr [ECX + EDI*0x8 + 0x8]
00598005  f30f59c3                  MULSS XMM0,XMM3
00598009  f30f58d0                  ADDSS XMM2,XMM0
0059800d  f30f1044f904              MOVSS XMM0,dword ptr [ECX + EDI*0x8 + 0x4]
00598013  f30f59c4                  MULSS XMM0,XMM4
00598017  f30f58c8                  ADDSS XMM1,XMM0
0059801b  f30f1155a4                MOVSS dword ptr [EBP + -0x5c],XMM2
00598020  f30f1044f90c              MOVSS XMM0,dword ptr [ECX + EDI*0x8 + 0xc]
00598026  8b8b200c0000              MOV ECX,dword ptr [EBX + 0xc20]
0059802c  49                        DEC ECX
0059802d  f30f59c3                  MULSS XMM0,XMM3
00598031  23c8                      AND ECX,EAX
00598033  8b831c0c0000              MOV EAX,dword ptr [EBX + 0xc1c]
00598039  f30f58c8                  ADDSS XMM1,XMM0
0059803d  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00598040  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
00598045  f30f114da8                MOVSS dword ptr [EBP + -0x58],XMM1
0059804a  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
0059804f  3b3554f8c700              CMP ESI,dword ptr [0x00c7f854]
00598055  7418                      JZ 0x0059806f
00598057  0f1045a4                  MOVUPS XMM0,xmmword ptr [EBP + -0x5c]
0059805b  0f1106                    MOVUPS xmmword ptr [ESI],XMM0
0059805e  8b3550f8c700              MOV ESI,dword ptr [0x00c7f850]
00598064  83c610                    ADD ESI,0x10
00598067  893550f8c700              MOV dword ptr [0x00c7f850],ESI
0059806d  eb10                      JMP 0x0059807f
0059806f  8d45a4                    LEA EAX,[EBP + -0x5c]
00598072  50                        PUSH EAX
00598073  56                        PUSH ESI
00598074  e817020000                CALL 0x00598290
00598079  8b3550f8c700              MOV ESI,dword ptr [0x00c7f850]
0059807f  8b154cf8c700              MOV EDX,dword ptr [0x00c7f84c]
00598085  8bc6                      MOV EAX,ESI
00598087  2bc2                      SUB EAX,EDX
00598089  c1f804                    SAR EAX,0x4
0059808c  8bc8                      MOV ECX,EAX
0059808e  83c0fe                    ADD EAX,-0x2
00598091  03c0                      ADD EAX,EAX
00598093  03c9                      ADD ECX,ECX
00598095  f30f100cc2                MOVSS XMM1,dword ptr [EDX + EAX*0x8]
0059809a  f30f1044c204              MOVSS XMM0,dword ptr [EDX + EAX*0x8 + 0x4]
005980a0  f30f5c44caf4              SUBSS XMM0,dword ptr [EDX + ECX*0x8 + -0xc]
005980a6  f30f5c4ccaf0              SUBSS XMM1,dword ptr [EDX + ECX*0x8 + -0x10]
005980ac  f30f59c0                  MULSS XMM0,XMM0
005980b0  f30f59c9                  MULSS XMM1,XMM1
005980b4  f30f58c1                  ADDSS XMM0,XMM1
005980b8  e893d9e9ff                CALL 0x00435a50
005980bd  f30f5845c4                ADDSS XMM0,dword ptr [EBP + -0x3c]
005980c2  8b55c8                    MOV EDX,dword ptr [EBP + -0x38]
005980c5  47                        INC EDI
005980c6  83c203                    ADD EDX,0x3
005980c9  8955c8                    MOV dword ptr [EBP + -0x38],EDX
005980cc  0f28d0                    MOVAPS XMM2,XMM0
005980cf  f30f1156fc                MOVSS dword ptr [ESI + -0x4],XMM2
005980d4  a140f8c700                MOV EAX,[0x00c7f840]
005980d9  8b0d3cf8c700              MOV ECX,dword ptr [0x00c7f83c]
005980df  2bc1                      SUB EAX,ECX
005980e1  8b3550f8c700              MOV ESI,dword ptr [0x00c7f850]
005980e7  c1f803                    SAR EAX,0x3
005980ea  48                        DEC EAX
005980eb  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
005980f0  3bf8                      CMP EDI,EAX
005980f2  0f82bdfeffff              JC 0x00597fb5
005980f8  f30f100514aaba00          MOVSS XMM0,dword ptr [0x00baaa14]
00598100  0f2fd0                    COMISS XMM2,XMM0
00598103  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0059810b  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
00598110  7614                      JBE 0x00598126
00598112  0f28c8                    MOVAPS XMM1,XMM0
00598115  f30f5eca                  DIVSS XMM1,XMM2
00598119  f30f5f0dd0a2ba00          MAXSS XMM1,dword ptr [0x00baa2d0]
00598121  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
00598126  8b0d4cf8c700              MOV ECX,dword ptr [0x00c7f84c]
0059812c  8d4348                    LEA EAX,[EBX + 0x48]
0059812f  2bf1                      SUB ESI,ECX
00598131  a3f08ec700                MOV [0x00c78ef0],EAX
00598136  a1fc8ec700                MOV EAX,[0x00c78efc]
0059813b  33ff                      XOR EDI,EDI
0059813d  c1fe04                    SAR ESI,0x4
00598140  c705f48ec70000000000      MOV dword ptr [0x00c78ef4],0x0
0059814a  66c705f88ec7000000        MOV word ptr [0x00c78ef8],0x0
00598153  a3008fc700                MOV [0x00c78f00],EAX
00598158  85f6                      TEST ESI,ESI
0059815a  7474                      JZ 0x005981d0
0059815c  33f6                      XOR ESI,ESI
0059815e  6690                      NOP
00598160  8d040e                    LEA EAX,[ESI + ECX*0x1]
00598163  c745ec00000000            MOV dword ptr [EBP + -0x14],0x0
0059816a  0f57c0                    XORPS XMM0,XMM0
0059816d  c745f000000000            MOV dword ptr [EBP + -0x10],0x0
00598174  0f28d9                    MOVAPS XMM3,XMM1
00598177  c745f400000000            MOV dword ptr [EBP + -0xc],0x0
0059817e  f30f59580c                MULSS XMM3,dword ptr [EAX + 0xc]
00598183  8d4dcc                    LEA ECX,[EBP + -0x34]
00598186  51                        PUSH ECX
00598187  0f1145dc                  MOVUPS xmmword ptr [EBP + -0x24],XMM0
0059818b  50                        PUSH EAX
0059818c  f30f104008                MOVSS XMM0,dword ptr [EAX + 0x8]
00598191  0f28d1                    MOVAPS XMM2,XMM1
00598194  c745cc0000803f            MOV dword ptr [EBP + -0x34],0x3f800000
0059819b  c745d00000803f            MOV dword ptr [EBP + -0x30],0x3f800000
005981a2  c745d40000803f            MOV dword ptr [EBP + -0x2c],0x3f800000
005981a9  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
005981ae  e86d65e8ff                CALL 0x0041e720
005981b3  a150f8c700                MOV EAX,[0x00c7f850]
005981b8  8d7610                    LEA ESI,[ESI + 0x10]
005981bb  8b0d4cf8c700              MOV ECX,dword ptr [0x00c7f84c]
005981c1  47                        INC EDI
005981c2  f30f104dc8                MOVSS XMM1,dword ptr [EBP + -0x38]
005981c7  2bc1                      SUB EAX,ECX
005981c9  c1f804                    SAR EAX,0x4
005981cc  3bf8                      CMP EDI,EAX
005981ce  7290                      JC 0x00598160
005981d0  b9f08ec700                MOV ECX,0xc78ef0
005981d5  e88667e8ff                CALL 0x0041e960
005981da  8b4df8                    MOV ECX,dword ptr [EBP + -0x8]
005981dd  5f                        POP EDI
005981de  5e                        POP ESI
005981df  33cd                      XOR ECX,EBP
005981e1  5b                        POP EBX
005981e2  e8446f5500                CALL 0x00aef12b
005981e7  8be5                      MOV ESP,EBP
005981e9  5d                        POP EBP
005981ea  c20400                    RET 0x4
005981ed  6838f8c700                PUSH 0xc7f838
005981f2  e8a6705500                CALL 0x00aef29d
005981f7  83c404                    ADD ESP,0x4
005981fa  833d38f8c700ff            CMP dword ptr [0x00c7f838],-0x1
00598201  0f8534fbffff              JNZ 0x00597d3b
00598207  686055b100                PUSH 0xb15560
0059820c  e89e735500                CALL 0x00aef5af
00598211  83c404                    ADD ESP,0x4
00598214  6838f8c700                PUSH 0xc7f838
00598219  e835705500                CALL 0x00aef253
0059821e  83c404                    ADD ESP,0x4
00598221  e915fbffff                JMP 0x00597d3b
00598226  6848f8c700                PUSH 0xc7f848
0059822b  e86d705500                CALL 0x00aef29d
00598230  83c404                    ADD ESP,0x4
00598233  833d48f8c700ff            CMP dword ptr [0x00c7f848],-0x1
0059823a  0f850cfbffff              JNZ 0x00597d4c
00598240  680055b100                PUSH 0xb15500
00598245  e865735500                CALL 0x00aef5af
0059824a  83c404                    ADD ESP,0x4
0059824d  6848f8c700                PUSH 0xc7f848
00598252  e8fc6f5500                CALL 0x00aef253
00598257  83c404                    ADD ESP,0x4
0059825a  e9edfaffff                JMP 0x00597d4c
