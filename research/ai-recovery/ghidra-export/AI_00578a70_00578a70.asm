; J460 NPC AI 0x00578a70 AI_00578a70
; types=902
; identities=902.0.0
; entry=00578a70
00578a70  53                        PUSH EBX
00578a71  8bdc                      MOV EBX,ESP
00578a73  83ec08                    SUB ESP,0x8
00578a76  83e4f8                    AND ESP,0xfffffff8
00578a79  83c404                    ADD ESP,0x4
00578a7c  55                        PUSH EBP
00578a7d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00578a80  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00578a84  8bec                      MOV EBP,ESP
00578a86  6aff                      PUSH -0x1
00578a88  683052af00                PUSH 0xaf5230
00578a8d  64a100000000              MOV EAX,FS:[0x0]
00578a93  50                        PUSH EAX
00578a94  53                        PUSH EBX
00578a95  81ece0000000              SUB ESP,0xe0
00578a9b  a1b493bf00                MOV EAX,[0x00bf93b4]
00578aa0  33c5                      XOR EAX,EBP
00578aa2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00578aa5  56                        PUSH ESI
00578aa6  57                        PUSH EDI
00578aa7  50                        PUSH EAX
00578aa8  8d45f4                    LEA EAX,[EBP + -0xc]
00578aab  64a300000000              MOV FS:[0x0],EAX
00578ab1  8bf9                      MOV EDI,ECX
00578ab3  a17816c700                MOV EAX,[0x00c71678]
00578ab8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00578ac0  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00578ac8  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
00578ace  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00578ad4  89953cffffff              MOV dword ptr [EBP + 0xffffff3c],EDX
00578ada  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00578ae2  83f80a                    CMP EAX,0xa
00578ae5  0f878d0b0000              JA 0x00579678
00578aeb  0fb680f4965700            MOVZX EAX,byte ptr [EAX + 0x5796f4]
00578af2  ff2485dc965700            JMP dword ptr [EAX*0x4 + 0x5796dc]
00578af9  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00578b03  e9700b0000                JMP 0x00579678
00578b08  6a00                      PUSH 0x0
00578b0a  8d4f48                    LEA ECX,[EDI + 0x48]
00578b0d  68e4dcb100                PUSH 0xb1dce4
00578b12  e86918e9ff                CALL 0x0040a380
00578b17  f30f100dd0a2ba00          MOVSS XMM1,dword ptr [0x00baa2d0]
00578b1f  8bcf                      MOV ECX,EDI
00578b21  e8baf9ffff                CALL 0x005784e0
00578b26  e835641700                CALL 0x006eef60
00578b2b  33d2                      XOR EDX,EDX
00578b2d  b914000000                MOV ECX,0x14
00578b32  f7f1                      DIV ECX
00578b34  85d2                      TEST EDX,EDX
00578b36  0f85360b0000              JNZ 0x00579672
00578b3c  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00578b42  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
00578b48  e813641700                CALL 0x006eef60
00578b4d  33d2                      XOR EDX,EDX
00578b4f  b903000000                MOV ECX,0x3
00578b54  f7f1                      DIV ECX
00578b56  85d2                      TEST EDX,EDX
00578b58  0f8593000000              JNZ 0x00578bf1
00578b5e  8bcf                      MOV ECX,EDI
00578b60  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00578b6a  e8d15c1400                CALL 0x006be840
00578b6f  8d8d2cffffff              LEA ECX,[EBP + 0xffffff2c]
00578b75  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00578b7d  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00578b85  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
00578b8b  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00578b93  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00578b9b  50                        PUSH EAX
00578b9c  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00578ba4  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
00578bac  e87f744900                CALL 0x00a10030
00578bb1  f30f1005d4a1ba00          MOVSS XMM0,dword ptr [0x00baa1d4]
00578bb9  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00578bbe  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00578bc5  0f2fc1                    COMISS XMM0,XMM1
00578bc8  7718                      JA 0x00578be2
00578bca  e891631700                CALL 0x006eef60
00578bcf  a801                      TEST AL,0x1
00578bd1  740f                      JZ 0x00578be2
00578bd3  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
00578bdd  e9900a0000                JMP 0x00579672
00578be2  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00578bec  e9810a0000                JMP 0x00579672
00578bf1  33c0                      XOR EAX,EAX
00578bf3  83fa01                    CMP EDX,0x1
00578bf6  0f95c0                    SETNZ AL
00578bf9  83c009                    ADD EAX,0x9
00578bfc  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
00578c02  e96b0a0000                JMP 0x00579672
00578c07  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00578c0e  8d4f48                    LEA ECX,[EDI + 0x48]
00578c11  0f8c05020000              JL 0x00578e1c
00578c17  6a00                      PUSH 0x0
00578c19  68ccd2b100                PUSH 0xb1d2cc
00578c1e  e85d17e9ff                CALL 0x0040a380
00578c23  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00578c27  0f84d2010000              JZ 0x00578dff
00578c2d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00578c34  0f84c5010000              JZ 0x00578dff
00578c3a  8bb7a00b0000              MOV ESI,dword ptr [EDI + 0xba0]
00578c40  8bc6                      MOV EAX,ESI
00578c42  83fe0c                    CMP ESI,0xc
00578c45  0f8ca8010000              JL 0x00578df3
00578c4b  8d4ef4                    LEA ECX,[ESI + -0xc]
00578c4e  83f912                    CMP ECX,0x12
00578c51  0f8d9c010000              JGE 0x00578df3
00578c57  b856555555                MOV EAX,0x55555556
00578c5c  f7e9                      IMUL ECX
00578c5e  8bca                      MOV ECX,EDX
00578c60  c1e91f                    SHR ECX,0x1f
00578c63  03ca                      ADD ECX,EDX
00578c65  8d56f4                    LEA EDX,[ESI + -0xc]
00578c68  898d38ffffff              MOV dword ptr [EBP + 0xffffff38],ECX
00578c6e  8d0449                    LEA EAX,[ECX + ECX*0x2]
00578c71  2bd0                      SUB EDX,EAX
00578c73  0f8578010000              JNZ 0x00578df1
00578c79  f30f101db4a9ba00          MOVSS XMM3,dword ptr [0x00baa9b4]
00578c81  83ceff                    OR ESI,0xffffffff
00578c84  0f57e4                    XORPS XMM4,XMM4
00578c87  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00578c90  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
00578c97  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
00578c9f  660f6ece                  MOVD XMM1,ESI
00578ca3  0f5bc9                    CVTDQ2PS XMM1,XMM1
00578ca6  f30f119534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM2
00578cae  0f8587000000              JNZ 0x00578d3b
00578cb4  0f57c0                    XORPS XMM0,XMM0
00578cb7  f30f59cb                  MULSS XMM1,XMM3
00578cbb  f30f2ac1                  CVTSI2SS XMM0,ECX
00578cbf  f30f58cb                  ADDSS XMM1,XMM3
00578cc3  f30f590578aaba00          MULSS XMM0,dword ptr [0x00baaa78]
00578ccb  f30f5e05a4a7ba00          DIVSS XMM0,dword ptr [0x00baa7a4]
00578cd3  f30f58c1                  ADDSS XMM0,XMM1
00578cd7  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00578cdf  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
00578ce7  e85448eaff                CALL 0x0041d540
00578cec  f30f59057ca9ba00          MULSS XMM0,dword ptr [0x00baa97c]
00578cf4  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00578cfc  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
00578d04  f30f108518ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff18]
00578d0c  e80f48eaff                CALL 0x0041d520
00578d11  f30f59057ca9ba00          MULSS XMM0,dword ptr [0x00baa97c]
00578d19  f30f108d20ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff20]
00578d21  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
00578d29  f30f588534ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff34]
00578d31  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
00578d39  eb32                      JMP 0x00578d6d
00578d3b  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
00578d43  8d4101                    LEA EAX,[ECX + 0x1]
00578d46  660f6ec0                  MOVD XMM0,EAX
00578d4a  f30f58d4                  ADDSS XMM2,XMM4
00578d4e  0f5bc0                    CVTDQ2PS XMM0,XMM0
00578d51  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
00578d59  f30f59c1                  MULSS XMM0,XMM1
00578d5d  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00578d65  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00578d6d  51                        PUSH ECX
00578d6e  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
00578d74  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
00578d7a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00578d81  50                        PUSH EAX
00578d82  e8d9a52900                CALL 0x00813360
00578d87  84c0                      TEST AL,AL
00578d89  7437                      JZ 0x00578dc2
00578d8b  8bcf                      MOV ECX,EDI
00578d8d  e8ae5a1400                CALL 0x006be840
00578d92  83ec08                    SUB ESP,0x8
00578d95  b809000000                MOV EAX,0x9
00578d9a  2b8538ffffff              SUB EAX,dword ptr [EBP + 0xffffff38]
00578da0  c1e003                    SHL EAX,0x3
00578da3  c7442404cdcc4c3d          MOV dword ptr [ESP + 0x4],0x3d4ccccd
00578dab  c7042400000000            MOV dword ptr [ESP],0x0
00578db2  50                        PUSH EAX
00578db3  51                        PUSH ECX
00578db4  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
00578dba  8bcf                      MOV ECX,EDI
00578dbc  50                        PUSH EAX
00578dbd  e85efaffff                CALL 0x00578820
00578dc2  f30f101db4a9ba00          MOVSS XMM3,dword ptr [0x00baa9b4]
00578dca  83c602                    ADD ESI,0x2
00578dcd  8b8d38ffffff              MOV ECX,dword ptr [EBP + 0xffffff38]
00578dd3  0f57e4                    XORPS XMM4,XMM4
00578dd6  83fe01                    CMP ESI,0x1
00578dd9  0f8eb1feffff              JLE 0x00578c90
00578ddf  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
00578de5  40                        INC EAX
00578de6  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00578dec  e981080000                JMP 0x00579672
00578df1  8bc6                      MOV EAX,ESI
00578df3  40                        INC EAX
00578df4  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00578dfa  e973080000                JMP 0x00579672
00578dff  6a00                      PUSH 0x0
00578e01  68a81eb600                PUSH 0xb61ea8
00578e06  8d4f48                    LEA ECX,[EDI + 0x48]
00578e09  e87215e9ff                CALL 0x0040a380
00578e0e  83c8ff                    OR EAX,0xffffffff
00578e11  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00578e17  e956080000                JMP 0x00579672
00578e1c  68dcd2b100                PUSH 0xb1d2dc
00578e21  e80a22e9ff                CALL 0x0040b030
00578e26  84c0                      TEST AL,AL
00578e28  741d                      JZ 0x00578e47
00578e2a  51                        PUSH ECX
00578e2b  c704240000803f            MOV dword ptr [ESP],0x3f800000
00578e32  6a00                      PUSH 0x0
00578e34  6a02                      PUSH 0x2
00578e36  51                        PUSH ECX
00578e37  c704240000803f            MOV dword ptr [ESP],0x3f800000
00578e3e  6a19                      PUSH 0x19
00578e40  8bcf                      MOV ECX,EDI
00578e42  e859dd1500                CALL 0x006d6ba0
00578e47  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00578e4b  740d                      JZ 0x00578e5a
00578e4d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00578e54  0f8518080000              JNZ 0x00579672
00578e5a  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00578e64  e909080000                JMP 0x00579672
00578e69  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
00578e6f  85c9                      TEST ECX,ECX
00578e71  753f                      JNZ 0x00578eb2
00578e73  51                        PUSH ECX
00578e74  68981eb600                PUSH 0xb61e98
00578e79  8d4f48                    LEA ECX,[EDI + 0x48]
00578e7c  e8ff14e9ff                CALL 0x0040a380
00578e81  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00578e85  740d                      JZ 0x00578e94
00578e87  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00578e8e  0f85de070000              JNZ 0x00579672
00578e94  6a00                      PUSH 0x0
00578e96  6828eeb100                PUSH 0xb1ee28
00578e9b  8d4f48                    LEA ECX,[EDI + 0x48]
00578e9e  e8dd14e9ff                CALL 0x0040a380
00578ea3  c787a00b000001000000      MOV dword ptr [EDI + 0xba0],0x1
00578ead  e9c0070000                JMP 0x00579672
00578eb2  0f8e02010000              JLE 0x00578fba
00578eb8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00578ebc  0f84aa000000              JZ 0x00578f6c
00578ec2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00578ec9  0f849d000000              JZ 0x00578f6c
00578ecf  8bc1                      MOV EAX,ECX
00578ed1  be0a000000                MOV ESI,0xa
00578ed6  99                        CDQ
00578ed7  f7fe                      IDIV ESI
00578ed9  85d2                      TEST EDX,EDX
00578edb  7572                      JNZ 0x00578f4f
00578edd  8bcf                      MOV ECX,EDI
00578edf  e85c591400                CALL 0x006be840
00578ee4  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
00578eea  50                        PUSH EAX
00578eeb  e880611000                CALL 0x0067f070
00578ef0  c704248fc2f53c            MOV dword ptr [ESP],0x3cf5c28f
00578ef7  51                        PUSH ECX
00578ef8  c704240000a040            MOV dword ptr [ESP],0x40a00000
00578eff  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00578f04  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00578f08  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
00578f0e  f30f590550a9ba00          MULSS XMM0,dword ptr [0x00baa950]
00578f16  6a2d                      PUSH 0x2d
00578f18  f30f591550a9ba00          MULSS XMM2,dword ptr [0x00baa950]
00578f20  51                        PUSH ECX
00578f21  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00578f29  50                        PUSH EAX
00578f2a  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
00578f32  8bcf                      MOV ECX,EDI
00578f34  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
00578f3c  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
00578f44  e8d7f8ffff                CALL 0x00578820
00578f49  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
00578f4f  f30f100dcca4ba00          MOVSS XMM1,dword ptr [0x00baa4cc]
00578f57  8d4101                    LEA EAX,[ECX + 0x1]
00578f5a  8bcf                      MOV ECX,EDI
00578f5c  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00578f62  e879f5ffff                CALL 0x005784e0
00578f67  e906070000                JMP 0x00579672
00578f6c  81f996000000              CMP ECX,0x96
00578f72  8d4f48                    LEA ECX,[EDI + 0x48]
00578f75  7d28                      JGE 0x00578f9f
00578f77  6a01                      PUSH 0x1
00578f79  6828eeb100                PUSH 0xb1ee28
00578f7e  e84d16e9ff                CALL 0x0040a5d0
00578f83  84c0                      TEST AL,AL
00578f85  0f84e7060000              JZ 0x00579672
00578f8b  8d4f78                    LEA ECX,[EDI + 0x78]
00578f8e  e81d12e9ff                CALL 0x0040a1b0
00578f93  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00578f9a  e9d3060000                JMP 0x00579672
00578f9f  6a00                      PUSH 0x0
00578fa1  6848d9b100                PUSH 0xb1d948
00578fa6  e8d513e9ff                CALL 0x0040a380
00578fab  c787a00b0000ffffffff      MOV dword ptr [EDI + 0xba0],0xffffffff
00578fb5  e9b8060000                JMP 0x00579672
00578fba  68dcd2b100                PUSH 0xb1d2dc
00578fbf  8d4f48                    LEA ECX,[EDI + 0x48]
00578fc2  e86920e9ff                CALL 0x0040b030
00578fc7  84c0                      TEST AL,AL
00578fc9  7461                      JZ 0x0057902c
00578fcb  51                        PUSH ECX
00578fcc  c704240000803f            MOV dword ptr [ESP],0x3f800000
00578fd3  6a00                      PUSH 0x0
00578fd5  6a02                      PUSH 0x2
00578fd7  51                        PUSH ECX
00578fd8  c704240000803f            MOV dword ptr [ESP],0x3f800000
00578fdf  8bcf                      MOV ECX,EDI
00578fe1  6a19                      PUSH 0x19
00578fe3  e8b8db1500                CALL 0x006d6ba0
00578fe8  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00578fee  e83d5fecff                CALL 0x0043ef30
00578ff3  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00578ff9  c745d404000000            MOV dword ptr [EBP + -0x2c],0x4
00579000  51                        PUSH ECX
00579001  6a08                      PUSH 0x8
00579003  8d8d2cffffff              LEA ECX,[EBP + 0xffffff2c]
00579009  c7852cffffff00002041      MOV dword ptr [EBP + 0xffffff2c],0x41200000
00579013  51                        PUSH ECX
00579014  8d873c030000              LEA EAX,[EDI + 0x33c]
0057901a  c78530ffffff00000000      MOV dword ptr [EBP + 0xffffff30],0x0
00579024  50                        PUSH EAX
00579025  8bcf                      MOV ECX,EDI
00579027  e8b4221500                CALL 0x006cb2e0
0057902c  68901eb600                PUSH 0xb61e90
00579031  8d4f48                    LEA ECX,[EDI + 0x48]
00579034  e8f71fe9ff                CALL 0x0040b030
00579039  84c0                      TEST AL,AL
0057903b  0f8406feffff              JZ 0x00578e47
00579041  51                        PUSH ECX
00579042  c704240000803f            MOV dword ptr [ESP],0x3f800000
00579049  6a00                      PUSH 0x0
0057904b  6a02                      PUSH 0x2
0057904d  51                        PUSH ECX
0057904e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00579055  68c9000000                PUSH 0xc9
0057905a  e9e1fdffff                JMP 0x00578e40
0057905f  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00579062  85f6                      TEST ESI,ESI
00579064  744a                      JZ 0x005790b0
00579066  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0057906a  8bc6                      MOV EAX,ESI
0057906c  7202                      JC 0x00579070
0057906e  8b06                      MOV EAX,dword ptr [ESI]
00579070  b9e4d2b100                MOV ECX,0xb1d2e4
00579075  8a10                      MOV DL,byte ptr [EAX]
00579077  3a11                      CMP DL,byte ptr [ECX]
00579079  751a                      JNZ 0x00579095
0057907b  84d2                      TEST DL,DL
0057907d  7412                      JZ 0x00579091
0057907f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00579082  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00579085  750e                      JNZ 0x00579095
00579087  83c002                    ADD EAX,0x2
0057908a  83c102                    ADD ECX,0x2
0057908d  84d2                      TEST DL,DL
0057908f  75e4                      JNZ 0x00579075
00579091  33c0                      XOR EAX,EAX
00579093  eb05                      JMP 0x0057909a
00579095  1bc0                      SBB EAX,EAX
00579097  83c801                    OR EAX,0x1
0057909a  85c0                      TEST EAX,EAX
0057909c  7512                      JNZ 0x005790b0
0057909e  384634                    CMP byte ptr [ESI + 0x34],AL
005790a1  742e                      JZ 0x005790d1
005790a3  38878c000000              CMP byte ptr [EDI + 0x8c],AL
005790a9  8d7748                    LEA ESI,[EDI + 0x48]
005790ac  7523                      JNZ 0x005790d1
005790ae  eb03                      JMP 0x005790b3
005790b0  8d7748                    LEA ESI,[EDI + 0x48]
005790b3  6a01                      PUSH 0x1
005790b5  68e4d2b100                PUSH 0xb1d2e4
005790ba  8bce                      MOV ECX,ESI
005790bc  e80f15e9ff                CALL 0x0040a5d0
005790c1  84c0                      TEST AL,AL
005790c3  740c                      JZ 0x005790d1
005790c5  8d4e30                    LEA ECX,[ESI + 0x30]
005790c8  e8e310e9ff                CALL 0x0040a1b0
005790cd  c6464401                  MOV byte ptr [ESI + 0x44],0x1
005790d1  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
005790d7  83f802                    CMP EAX,0x2
005790da  0f8e7f010000              JLE 0x0057925f
005790e0  83c0fe                    ADD EAX,-0x2
005790e3  83f812                    CMP EAX,0x12
005790e6  0f8d73010000              JGE 0x0057925f
005790ec  a801                      TEST AL,0x1
005790ee  0f856b010000              JNZ 0x0057925f
005790f4  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
005790fa  50                        PUSH EAX
005790fb  e8705f1000                CALL 0x0067f070
00579100  83c404                    ADD ESP,0x4
00579103  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00579107  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0057910c  f30f591550a9ba00          MULSS XMM2,dword ptr [0x00baa950]
00579114  f30f590d50a9ba00          MULSS XMM1,dword ptr [0x00baa950]
0057911c  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
00579124  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
0057912c  f30f11952cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM2
00579134  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
0057913c  e81f5e1700                CALL 0x006eef60
00579141  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00579147  50                        PUSH EAX
00579148  6a01                      PUSH 0x1
0057914a  57                        PUSH EDI
0057914b  6840b6c700                PUSH 0xc7b640
00579150  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
00579156  50                        PUSH EAX
00579157  6a04                      PUSH 0x4
00579159  6a09                      PUSH 0x9
0057915b  e8c0f9eaff                CALL 0x00428b20
00579160  8bf0                      MOV ESI,EAX
00579162  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00579168  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0057916e  c786100400000000c0c0      MOV dword ptr [ESI + 0x410],0xc0c00000
00579178  c7861404000000000000      MOV dword ptr [ESI + 0x414],0x0
00579182  c786200400000000803f      MOV dword ptr [ESI + 0x420],0x3f800000
0057918c  85c9                      TEST ECX,ECX
0057918e  741e                      JZ 0x005791ae
00579190  898520ffffff              MOV dword ptr [EBP + 0xffffff20],EAX
00579196  81c1cc030000              ADD ECX,0x3cc
0057919c  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
005791a2  50                        PUSH EAX
005791a3  e86860f5ff                CALL 0x004cf210
005791a8  8d86bc030000              LEA EAX,[ESI + 0x3bc]
005791ae  50                        PUSH EAX
005791af  8bcf                      MOV ECX,EDI
005791b1  8938                      MOV dword ptr [EAX],EDI
005791b3  e8384bf5ff                CALL 0x004cdcf0
005791b8  8b06                      MOV EAX,dword ptr [ESI]
005791ba  8bce                      MOV ECX,ESI
005791bc  ff500c                    CALL dword ptr [EAX + 0xc]
005791bf  e89c5d1700                CALL 0x006eef60
005791c4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005791ca  50                        PUSH EAX
005791cb  6a00                      PUSH 0x0
005791cd  6a00                      PUSH 0x0
005791cf  6840b6c700                PUSH 0xc7b640
005791d4  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
005791da  50                        PUSH EAX
005791db  6885000000                PUSH 0x85
005791e0  68e8030000                PUSH 0x3e8
005791e5  e836f9eaff                CALL 0x00428b20
005791ea  e8715d1700                CALL 0x006eef60
005791ef  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005791f5  50                        PUSH EAX
005791f6  6a01                      PUSH 0x1
005791f8  6a00                      PUSH 0x0
005791fa  6840b6c700                PUSH 0xc7b640
005791ff  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
00579205  50                        PUSH EAX
00579206  6885000000                PUSH 0x85
0057920b  68e8030000                PUSH 0x3e8
00579210  e80bf9eaff                CALL 0x00428b20
00579215  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0057921b  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
00579221  c78538ffffff99000000      MOV dword ptr [EBP + 0xffffff38],0x99
0057922b  e850d53d00                CALL 0x00956780
00579230  83ec08                    SUB ESP,0x8
00579233  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00579239  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00579241  c704240000803f            MOV dword ptr [ESP],0x3f800000
00579248  6a00                      PUSH 0x0
0057924a  6a02                      PUSH 0x2
0057924c  51                        PUSH ECX
0057924d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00579254  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
0057925a  e8d1493b00                CALL 0x0092dc30
0057925f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00579263  8d7778                    LEA ESI,[EDI + 0x78]
00579266  89b534ffffff              MOV dword ptr [EBP + 0xffffff34],ESI
0057926c  0f846c010000              JZ 0x005793de
00579272  68901eb600                PUSH 0xb61e90
00579277  8bce                      MOV ECX,ESI
00579279  e8521be9ff                CALL 0x0040add0
0057927e  84c0                      TEST AL,AL
00579280  7426                      JZ 0x005792a8
00579282  51                        PUSH ECX
00579283  c704240000803f            MOV dword ptr [ESP],0x3f800000
0057928a  6a00                      PUSH 0x0
0057928c  6a02                      PUSH 0x2
0057928e  51                        PUSH ECX
0057928f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00579296  8bcf                      MOV ECX,EDI
00579298  68e5010000                PUSH 0x1e5
0057929d  e8fed81500                CALL 0x006d6ba0
005792a2  89b534ffffff              MOV dword ptr [EBP + 0xffffff34],ESI
005792a8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005792ac  0f842c010000              JZ 0x005793de
005792b2  68dcd2b100                PUSH 0xb1d2dc
005792b7  8bce                      MOV ECX,ESI
005792b9  e8121be9ff                CALL 0x0040add0
005792be  84c0                      TEST AL,AL
005792c0  0f84fa000000              JZ 0x005793c0
005792c6  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
005792cc  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
005792d2  c78538ffffffe6010000      MOV dword ptr [EBP + 0xffffff38],0x1e6
005792dc  e89fd43d00                CALL 0x00956780
005792e1  83ec08                    SUB ESP,0x8
005792e4  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005792ea  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005792f2  c704240000803f            MOV dword ptr [ESP],0x3f800000
005792f9  6a00                      PUSH 0x0
005792fb  6a02                      PUSH 0x2
005792fd  51                        PUSH ECX
005792fe  c704240000803f            MOV dword ptr [ESP],0x3f800000
00579305  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
0057930b  e820493b00                CALL 0x0092dc30
00579310  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00579316  e8155cecff                CALL 0x0043ef30
0057931b  83bfc00b000004            CMP dword ptr [EDI + 0xbc0],0x4
00579322  8d87c00b0000              LEA EAX,[EDI + 0xbc0]
00579328  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
0057932e  c78520ffffff04000000      MOV dword ptr [EBP + 0xffffff20],0x4
00579338  0f4fc8                    CMOVG ECX,EAX
0057933b  c78544ffffff000090c2      MOV dword ptr [EBP + 0xffffff44],0xc2900000
00579345  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
0057934b  c745d404000000            MOV dword ptr [EBP + -0x2c],0x4
00579352  50                        PUSH EAX
00579353  51                        PUSH ECX
00579354  c7042400000040            MOV dword ptr [ESP],0x40000000
0057935b  6840b6c700                PUSH 0xc7b640
00579360  ff31                      PUSH dword ptr [ECX]
00579362  8bcf                      MOV ECX,EDI
00579364  e8673a1500                CALL 0x006ccdd0
00579369  e8f25b1700                CALL 0x006eef60
0057936e  50                        PUSH EAX
0057936f  6a00                      PUSH 0x0
00579371  6a00                      PUSH 0x0
00579373  6840b6c700                PUSH 0xc7b640
00579378  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0057937e  51                        PUSH ECX
0057937f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00579385  6a0d                      PUSH 0xd
00579387  68e8030000                PUSH 0x3e8
0057938c  e88ff7eaff                CALL 0x00428b20
00579391  8bc8                      MOV ECX,EAX
00579393  8b10                      MOV EDX,dword ptr [EAX]
00579395  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
0057939f  c780500300000000bec2      MOV dword ptr [EAX + 0x350],0xc2be0000
005793a9  c780e400000000000040      MOV dword ptr [EAX + 0xe4],0x40000000
005793b3  c780e800000000000040      MOV dword ptr [EAX + 0xe8],0x40000000
005793bd  ff520c                    CALL dword ptr [EDX + 0xc]
005793c0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005793c4  7418                      JZ 0x005793de
005793c6  8b8d34ffffff              MOV ECX,dword ptr [EBP + 0xffffff34]
005793cc  68dcd2b100                PUSH 0xb1d2dc
005793d1  e89a1ae9ff                CALL 0x0040ae70
005793d6  84c0                      TEST AL,AL
005793d8  0f8575020000              JNZ 0x00579653
005793de  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
005793e4  8d8524ffffff              LEA EAX,[EBP + 0xffffff24]
005793ea  6a00                      PUSH 0x0
005793ec  6a00                      PUSH 0x0
005793ee  6aff                      PUSH -0x1
005793f0  6aff                      PUSH -0x1
005793f2  6a09                      PUSH 0x9
005793f4  8d8918120000              LEA ECX,[ECX + 0x1218]
005793fa  50                        PUSH EAX
005793fb  e8601beaff                CALL 0x0041af60
00579400  33f6                      XOR ESI,ESI
00579402  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00579409  89b518ffffff              MOV dword ptr [EBP + 0xffffff18],ESI
0057940f  39b530ffffff              CMP dword ptr [EBP + 0xffffff30],ESI
00579415  0f860d020000              JBE 0x00579628
0057941b  8b8528ffffff              MOV EAX,dword ptr [EBP + 0xffffff28]
00579421  8b34b0                    MOV ESI,dword ptr [EAX + ESI*0x4]
00579424  89b520ffffff              MOV dword ptr [EBP + 0xffffff20],ESI
0057942a  85f6                      TEST ESI,ESI
0057942c  0f84dd010000              JZ 0x0057960f
00579432  837e2809                  CMP dword ptr [ESI + 0x28],0x9
00579436  0f85d3010000              JNZ 0x0057960f
0057943c  837e3001                  CMP dword ptr [ESI + 0x30],0x1
00579440  0f85c9010000              JNZ 0x0057960f
00579446  39bebc030000              CMP dword ptr [ESI + 0x3bc],EDI
0057944c  0f85bd010000              JNZ 0x0057960f
00579452  c7868401000000000000      MOV dword ptr [ESI + 0x184],0x0
0057945c  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00579464  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
0057946c  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00579474  f30f5c963c030000          SUBSS XMM2,dword ptr [ESI + 0x33c]
0057947c  0f28c1                    MOVAPS XMM0,XMM1
0057947f  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
00579487  f30f59c1                  MULSS XMM0,XMM1
0057948b  0f28ca                    MOVAPS XMM1,XMM2
0057948e  f30f119534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM2
00579496  f30f59ca                  MULSS XMM1,XMM2
0057949a  f30f58c1                  ADDSS XMM0,XMM1
0057949e  e8adc5ebff                CALL 0x00435a50
005794a3  f30f101d5ca7ba00          MOVSS XMM3,dword ptr [0x00baa75c]
005794ab  0f2fc3                    COMISS XMM0,XMM3
005794ae  f30f109534ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff34]
005794b6  763f                      JBE 0x005794f7
005794b8  0f57c9                    XORPS XMM1,XMM1
005794bb  0f2fc1                    COMISS XMM0,XMM1
005794be  7625                      JBE 0x005794e5
005794c0  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005794c8  f30f5ec8                  DIVSS XMM1,XMM0
005794cc  0f28c1                    MOVAPS XMM0,XMM1
005794cf  f30f598d38ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff38]
005794d7  f30f59d0                  MULSS XMM2,XMM0
005794db  f30f59cb                  MULSS XMM1,XMM3
005794df  f30f59d3                  MULSS XMM2,XMM3
005794e3  eb1a                      JMP 0x005794ff
005794e5  f30f108d38ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff38]
005794ed  f30f59d3                  MULSS XMM2,XMM3
005794f1  f30f59cb                  MULSS XMM1,XMM3
005794f5  eb08                      JMP 0x005794ff
005794f7  f30f108d38ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff38]
005794ff  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
00579507  f30f5ec8                  DIVSS XMM1,XMM0
0057950b  f30f5ed0                  DIVSS XMM2,XMM0
0057950f  f30f100554aeba00          MOVSS XMM0,dword ptr [0x00baae54]
00579517  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0057951f  f30f108e10040000          MOVSS XMM1,dword ptr [ESI + 0x410]
00579527  f30f5cc1                  SUBSS XMM0,XMM1
0057952b  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
00579533  f30f5c0d54aeba00          SUBSS XMM1,dword ptr [0x00baae54]
0057953b  f30f5905eca1ba00          MULSS XMM0,dword ptr [0x00baa1ec]
00579543  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0057954a  0f2fd9                    COMISS XMM3,XMM1
0057954d  f30f118614040000          MOVSS dword ptr [ESI + 0x414],XMM0
00579555  0f86ae000000              JBE 0x00579609
0057955b  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00579563  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0057956b  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
00579573  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0057957b  f30f59c0                  MULSS XMM0,XMM0
0057957f  f30f59c9                  MULSS XMM1,XMM1
00579583  f30f58c1                  ADDSS XMM0,XMM1
00579587  e8c4c4ebff                CALL 0x00435a50
0057958c  f30f100d04a8ba00          MOVSS XMM1,dword ptr [0x00baa804]
00579594  0f2fc8                    COMISS XMM1,XMM0
00579597  7670                      JBE 0x00579609
00579599  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0057959f  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
005795a5  c78538ffffffb9000000      MOV dword ptr [EBP + 0xffffff38],0xb9
005795af  e8ccd13d00                CALL 0x00956780
005795b4  83ec08                    SUB ESP,0x8
005795b7  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
005795bd  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005795c5  c704240000803f            MOV dword ptr [ESP],0x3f800000
005795cc  6a00                      PUSH 0x0
005795ce  6a02                      PUSH 0x2
005795d0  51                        PUSH ECX
005795d1  c704240000803f            MOV dword ptr [ESP],0x3f800000
005795d8  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
005795de  e84d463b00                CALL 0x0092dc30
005795e3  8b8520ffffff              MOV EAX,dword ptr [EBP + 0xffffff20]
005795e9  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
005795f0  e86b591700                CALL 0x006eef60
005795f5  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
005795fb  83e001                    AND EAX,0x1
005795fe  83c102                    ADD ECX,0x2
00579601  03c1                      ADD EAX,ECX
00579603  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00579609  8b8528ffffff              MOV EAX,dword ptr [EBP + 0xffffff28]
0057960f  8bb518ffffff              MOV ESI,dword ptr [EBP + 0xffffff18]
00579615  46                        INC ESI
00579616  89b518ffffff              MOV dword ptr [EBP + 0xffffff18],ESI
0057961c  3bb530ffffff              CMP ESI,dword ptr [EBP + 0xffffff30]
00579622  0f82f9fdffff              JC 0x00579421
00579628  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0057962f  80bd24ffffff00            CMP byte ptr [EBP + 0xffffff24],0x0
00579636  751b                      JNZ 0x00579653
00579638  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0057963f  b101                      MOV CL,0x1
00579641  8b9528ffffff              MOV EDX,dword ptr [EBP + 0xffffff28]
00579647  6a00                      PUSH 0x0
00579649  6a00                      PUSH 0x0
0057964b  e860b24e00                CALL 0x00a648b0
00579650  83c408                    ADD ESP,0x8
00579653  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00579657  7409                      JZ 0x00579662
00579659  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00579660  750a                      JNZ 0x0057966c
00579662  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0057966c  ff87a00b0000              INC dword ptr [EDI + 0xba0]
00579672  8b953cffffff              MOV EDX,dword ptr [EBP + 0xffffff3c]
00579678  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0057967f  743d                      JZ 0x005796be
00579681  33c9                      XOR ECX,ECX
00579683  398a64120000              CMP dword ptr [EDX + 0x1264],ECX
00579689  762c                      JBE 0x005796b7
0057968b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00579690  8b825c120000              MOV EAX,dword ptr [EDX + 0x125c]
00579696  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00579699  83782809                  CMP dword ptr [EAX + 0x28],0x9
0057969d  750f                      JNZ 0x005796ae
0057969f  39b8bc030000              CMP dword ptr [EAX + 0x3bc],EDI
005796a5  7507                      JNZ 0x005796ae
005796a7  c6807301000001            MOV byte ptr [EAX + 0x173],0x1
005796ae  41                        INC ECX
005796af  3b8a64120000              CMP ECX,dword ptr [EDX + 0x1264]
005796b5  72d9                      JC 0x00579690
005796b7  c6825c74000001            MOV byte ptr [EDX + 0x745c],0x1
005796be  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
005796c1  64890d00000000            MOV dword ptr FS:[0x0],ECX
005796c8  59                        POP ECX
005796c9  5f                        POP EDI
005796ca  5e                        POP ESI
005796cb  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
005796ce  33cd                      XOR ECX,EBP
005796d0  e8565a5700                CALL 0x00aef12b
005796d5  8be5                      MOV ESP,EBP
005796d7  5d                        POP EBP
005796d8  8be3                      MOV ESP,EBX
005796da  5b                        POP EBX
005796db  c3                        RET
