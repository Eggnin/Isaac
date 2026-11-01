; J460 NPC AI 0x00562290 AI_00562290
; types=875
; identities=875.0.0
; entry=00562290
00562290  53                        PUSH EBX
00562291  8bdc                      MOV EBX,ESP
00562293  83ec08                    SUB ESP,0x8
00562296  83e4f8                    AND ESP,0xfffffff8
00562299  83c404                    ADD ESP,0x4
0056229c  55                        PUSH EBP
0056229d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005622a0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005622a4  8bec                      MOV EBP,ESP
005622a6  6aff                      PUSH -0x1
005622a8  68a04eaf00                PUSH 0xaf4ea0
005622ad  64a100000000              MOV EAX,FS:[0x0]
005622b3  50                        PUSH EAX
005622b4  53                        PUSH EBX
005622b5  81ec90000000              SUB ESP,0x90
005622bb  a1b493bf00                MOV EAX,[0x00bf93b4]
005622c0  33c5                      XOR EAX,EBP
005622c2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
005622c5  56                        PUSH ESI
005622c6  57                        PUSH EDI
005622c7  50                        PUSH EAX
005622c8  8d45f4                    LEA EAX,[EBP + -0xc]
005622cb  64a300000000              MOV FS:[0x0],EAX
005622d1  8bf9                      MOV EDI,ECX
005622d3  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
005622d9  0f57db                    XORPS XMM3,XMM3
005622dc  f30f115d8c                MOVSS dword ptr [EBP + -0x74],XMM3
005622e1  0f57d2                    XORPS XMM2,XMM2
005622e4  f30f115590                MOVSS dword ptr [EBP + -0x70],XMM2
005622e9  83f8ff                    CMP EAX,-0x1
005622ec  0f84de000000              JZ 0x005623d0
005622f2  51                        PUSH ECX
005622f3  57                        PUSH EDI
005622f4  50                        PUSH EAX
005622f5  6a09                      PUSH 0x9
005622f7  e8143e3f00                CALL 0x00956110
005622fc  84c0                      TEST AL,AL
005622fe  7459                      JZ 0x00562359
00562300  8b07                      MOV EAX,dword ptr [EDI]
00562302  8d4dc4                    LEA ECX,[EBP + -0x3c]
00562305  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0056230d  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00562315  51                        PUSH ECX
00562316  8bcf                      MOV ECX,EDI
00562318  c745c400000000            MOV dword ptr [EBP + -0x3c],0x0
0056231f  c745c800000000            MOV dword ptr [EBP + -0x38],0x0
00562326  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
0056232d  c745d000000000            MOV dword ptr [EBP + -0x30],0x0
00562334  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
00562339  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0056233e  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
00562343  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
00562348  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0056234f  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00562356  ff5024                    CALL dword ptr [EAX + 0x24]
00562359  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00562361  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
00562367  50                        PUSH EAX
00562368  8bcf                      MOV ECX,EDI
0056236a  e8615f1700                CALL 0x006d82d0
0056236f  8bc8                      MOV ECX,EAX
00562371  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00562375  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0056237c  9f                        LAHF
0056237d  f6c444                    TEST AH,0x44
00562380  7a12                      JP 0x00562394
00562382  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00562387  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0056238e  9f                        LAHF
0056238f  f6c444                    TEST AH,0x44
00562392  7b32                      JNP 0x005623c6
00562394  0f57c0                    XORPS XMM0,XMM0
00562397  0f2f4714                  COMISS XMM0,dword ptr [EDI + 0x14]
0056239b  7229                      JC 0x005623c6
0056239d  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
005623a4  7520                      JNZ 0x005623c6
005623a6  8b07                      MOV EAX,dword ptr [EDI]
005623a8  8d4dc4                    LEA ECX,[EBP + -0x3c]
005623ab  8b5020                    MOV EDX,dword ptr [EAX + 0x20]
005623ae  e8bd38edff                CALL 0x00435c70
005623b3  6a1e                      PUSH 0x1e
005623b5  50                        PUSH EAX
005623b6  6a00                      PUSH 0x0
005623b8  6a00                      PUSH 0x0
005623ba  51                        PUSH ECX
005623bb  8bcf                      MOV ECX,EDI
005623bd  c7042400000040            MOV dword ptr [ESP],0x40000000
005623c4  ffd2                      CALL EDX
005623c6  f30f105d8c                MOVSS XMM3,dword ptr [EBP + -0x74]
005623cb  f30f105590                MOVSS XMM2,dword ptr [EBP + -0x70]
005623d0  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
005623d5  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005623dc  0f86e9000000              JBE 0x005624cb
005623e2  8b470c                    MOV EAX,dword ptr [EDI + 0xc]
005623e5  394708                    CMP dword ptr [EDI + 0x8],EAX
005623e8  7424                      JZ 0x0056240e
005623ea  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
005623f2  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
005623fa  f30f5c50e8                SUBSS XMM2,dword ptr [EAX + -0x18]
005623ff  f30f5c58ec                SUBSS XMM3,dword ptr [EAX + -0x14]
00562404  f30f115590                MOVSS dword ptr [EBP + -0x70],XMM2
00562409  f30f115d8c                MOVSS dword ptr [EBP + -0x74],XMM3
0056240e  0f28c2                    MOVAPS XMM0,XMM2
00562411  0f28cb                    MOVAPS XMM1,XMM3
00562414  f30f59c2                  MULSS XMM0,XMM2
00562418  f30f59cb                  MULSS XMM1,XMM3
0056241c  f30f58c8                  ADDSS XMM1,XMM0
00562420  f30f100504a0ba00          MOVSS XMM0,dword ptr [0x00baa004]
00562428  0f2fc1                    COMISS XMM0,XMM1
0056242b  7657                      JBE 0x00562484
0056242d  e82ecb1800                CALL 0x006eef60
00562432  660f6ec0                  MOVD XMM0,EAX
00562436  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056243a  c1e81f                    SHR EAX,0x1f
0056243d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00562446  660f5ac0                  CVTPD2PS XMM0,XMM0
0056244a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00562452  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0056245a  f30f58c0                  ADDSS XMM0,XMM0
0056245e  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
00562463  e8b8b0ebff                CALL 0x0041d520
00562468  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
0056246d  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
00562472  e8c9b0ebff                CALL 0x0041d540
00562477  f30f105d8c                MOVSS XMM3,dword ptr [EBP + -0x74]
0056247c  0f28d0                    MOVAPS XMM2,XMM0
0056247f  f30f115590                MOVSS dword ptr [EBP + -0x70],XMM2
00562484  0f28c3                    MOVAPS XMM0,XMM3
00562487  0f28ca                    MOVAPS XMM1,XMM2
0056248a  f30f59c3                  MULSS XMM0,XMM3
0056248e  f30f59ca                  MULSS XMM1,XMM2
00562492  f30f58c1                  ADDSS XMM0,XMM1
00562496  e8b535edff                CALL 0x00435a50
0056249b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005624a2  7627                      JBE 0x005624cb
005624a4  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005624ac  f30f5ec8                  DIVSS XMM1,XMM0
005624b0  0f28c1                    MOVAPS XMM0,XMM1
005624b3  f30f594590                MULSS XMM0,dword ptr [EBP + -0x70]
005624b8  f30f114590                MOVSS dword ptr [EBP + -0x70],XMM0
005624bd  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
005624c2  f30f59c1                  MULSS XMM0,XMM1
005624c6  f30f11458c                MOVSS dword ptr [EBP + -0x74],XMM0
005624cb  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005624d3  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
005624db  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005624e1  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005624e9  85c0                      TEST EAX,EAX
005624eb  0f84e1070000              JZ 0x00562cd2
005624f1  83f803                    CMP EAX,0x3
005624f4  0f8418060000              JZ 0x00562b12
005624fa  83f808                    CMP EAX,0x8
005624fd  0f8592080000              JNZ 0x00562d95
00562503  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0056250a  7470                      JZ 0x0056257c
0056250c  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00562514  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
0056251a  50                        PUSH EAX
0056251b  8bcf                      MOV ECX,EDI
0056251d  e8ae5d1700                CALL 0x006d82d0
00562522  8bc8                      MOV ECX,EAX
00562524  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00562528  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0056252f  9f                        LAHF
00562530  f6c444                    TEST AH,0x44
00562533  7a12                      JP 0x00562547
00562535  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0056253a  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00562541  9f                        LAHF
00562542  f6c444                    TEST AH,0x44
00562545  7b35                      JNP 0x0056257c
00562547  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0056254f  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
00562555  50                        PUSH EAX
00562556  8bcf                      MOV ECX,EDI
00562558  e8735d1700                CALL 0x006d82d0
0056255d  8d8d74ffffff              LEA ECX,[EBP + 0xffffff74]
00562563  51                        PUSH ECX
00562564  8bc8                      MOV ECX,EAX
00562566  e8c5da4a00                CALL 0x00a10030
0056256b  8b08                      MOV ECX,dword ptr [EAX]
0056256d  898f34030000              MOV dword ptr [EDI + 0x334],ECX
00562573  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00562576  898738030000              MOV dword ptr [EDI + 0x338],EAX
0056257c  8d8f98000000              LEA ECX,[EDI + 0x98]
00562582  68dcd2b100                PUSH 0xb1d2dc
00562587  e84488eaff                CALL 0x0040add0
0056258c  84c0                      TEST AL,AL
0056258e  0f84b8030000              JZ 0x0056294c
00562594  51                        PUSH ECX
00562595  c704240000803f            MOV dword ptr [ESP],0x3f800000
0056259c  6a00                      PUSH 0x0
0056259e  6a02                      PUSH 0x2
005625a0  51                        PUSH ECX
005625a1  c704240000803f            MOV dword ptr [ESP],0x3f800000
005625a8  8bcf                      MOV ECX,EDI
005625aa  6a25                      PUSH 0x25
005625ac  e8ef451700                CALL 0x006d6ba0
005625b1  e8aac91800                CALL 0x006eef60
005625b6  f30f109734030000          MOVSS XMM2,dword ptr [EDI + 0x334]
005625be  8db73c030000              LEA ESI,[EDI + 0x33c]
005625c4  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
005625cc  f30f591574adba00          MULSS XMM2,dword ptr [0x00baad74]
005625d4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005625da  f30f590d74adba00          MULSS XMM1,dword ptr [0x00baad74]
005625e2  50                        PUSH EAX
005625e3  6a01                      PUSH 0x1
005625e5  57                        PUSH EDI
005625e6  8d4584                    LEA EAX,[EBP + -0x7c]
005625e9  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
005625ee  50                        PUSH EAX
005625ef  56                        PUSH ESI
005625f0  688d000000                PUSH 0x8d
005625f5  68e8030000                PUSH 0x3e8
005625fa  f30f114d88                MOVSS dword ptr [EBP + -0x78],XMM1
005625ff  e81c65ecff                CALL 0x00428b20
00562604  8bc8                      MOV ECX,EAX
00562606  8b10                      MOV EDX,dword ptr [EAX]
00562608  c7805c040000ffffffff      MOV dword ptr [EAX + 0x45c],0xffffffff
00562612  c78060040000ffffffff      MOV dword ptr [EAX + 0x460],0xffffffff
0056261c  ff520c                    CALL dword ptr [EDX + 0xc]
0056261f  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00562627  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0056262f  a17816c700                MOV EAX,[0x00c71678]
00562634  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
0056263c  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
00562644  6aff                      PUSH -0x1
00562646  f30f1016                  MOVSS XMM2,dword ptr [ESI]
0056264a  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00562650  f30f5cd0                  SUBSS XMM2,XMM0
00562654  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00562659  8d4584                    LEA EAX,[EBP + -0x7c]
0056265c  f30f101d50a9ba00          MOVSS XMM3,dword ptr [0x00baa950]
00562664  f30f5cc1                  SUBSS XMM0,XMM1
00562668  50                        PUSH EAX
00562669  8d8564ffffff              LEA EAX,[EBP + 0xffffff64]
0056266f  81c118120000              ADD ECX,0x1218
00562675  50                        PUSH EAX
00562676  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
0056267b  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00562680  e80b81ebff                CALL 0x0041a790
00562685  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0056268c  33c9                      XOR ECX,ECX
0056268e  8b9570ffffff              MOV EDX,dword ptr [EBP + 0xffffff70]
00562694  85d2                      TEST EDX,EDX
00562696  7460                      JZ 0x005626f8
00562698  f30f10251ca8ba00          MOVSS XMM4,dword ptr [0x00baa81c]
005626a0  8b8568ffffff              MOV EAX,dword ptr [EBP + 0xffffff68]
005626a6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
005626a9  3bc7                      CMP EAX,EDI
005626ab  7446                      JZ 0x005626f3
005626ad  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
005626b5  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
005626bd  f30f109060030000          MOVSS XMM2,dword ptr [EAX + 0x360]
005626c5  f30f109864030000          MOVSS XMM3,dword ptr [EAX + 0x364]
005626cd  f30f59c4                  MULSS XMM0,XMM4
005626d1  f30f59cc                  MULSS XMM1,XMM4
005626d5  f30f5cd0                  SUBSS XMM2,XMM0
005626d9  f30f5cd9                  SUBSS XMM3,XMM1
005626dd  f30f119060030000          MOVSS dword ptr [EAX + 0x360],XMM2
005626e5  f30f119864030000          MOVSS dword ptr [EAX + 0x364],XMM3
005626ed  8b9570ffffff              MOV EDX,dword ptr [EBP + 0xffffff70]
005626f3  41                        INC ECX
005626f4  3bca                      CMP ECX,EDX
005626f6  72a8                      JC 0x005626a0
005626f8  c7458c06000000            MOV dword ptr [EBP + -0x74],0x6
005626ff  90                        NOP
00562700  e85bc81800                CALL 0x006eef60
00562705  8bf0                      MOV ESI,EAX
00562707  e854c81800                CALL 0x006eef60
0056270c  660f6ec0                  MOVD XMM0,EAX
00562710  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00562714  c1e81f                    SHR EAX,0x1f
00562717  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00562720  660f5ac0                  CVTPD2PS XMM0,XMM0
00562724  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0056272c  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00562734  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
0056273c  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00562744  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00562749  e8f2adebff                CALL 0x0041d540
0056274e  0f28d0                    MOVAPS XMM2,XMM0
00562751  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00562756  f30f115590                MOVSS dword ptr [EBP + -0x70],XMM2
0056275b  e8c0adebff                CALL 0x0041d520
00562760  f30f106d90                MOVSS XMM5,dword ptr [EBP + -0x70]
00562765  0f28c8                    MOVAPS XMM1,XMM0
00562768  f30f109f34030000          MOVSS XMM3,dword ptr [EDI + 0x334]
00562770  0f28e5                    MOVAPS XMM4,XMM5
00562773  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
0056277b  f30f59e3                  MULSS XMM4,XMM3
0056277f  f30f59ea                  MULSS XMM5,XMM2
00562783  f30f59ca                  MULSS XMM1,XMM2
00562787  f30f59c3                  MULSS XMM0,XMM3
0056278b  f30f5ce1                  SUBSS XMM4,XMM1
0056278f  f30f58e8                  ADDSS XMM5,XMM0
00562793  0f572570cbba00            XORPS XMM4,xmmword ptr [0x00bacb70]
0056279a  f30f116588                MOVSS dword ptr [EBP + -0x78],XMM4
0056279f  0f572d70cbba00            XORPS XMM5,xmmword ptr [0x00bacb70]
005627a6  f30f116d90                MOVSS dword ptr [EBP + -0x70],XMM5
005627ab  e8b0c71800                CALL 0x006eef60
005627b0  f30f104d88                MOVSS XMM1,dword ptr [EBP + -0x78]
005627b5  f30f105590                MOVSS XMM2,dword ptr [EBP + -0x70]
005627ba  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005627c0  660f6ec0                  MOVD XMM0,EAX
005627c4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005627c8  c1e81f                    SHR EAX,0x1f
005627cb  56                        PUSH ESI
005627cc  6a01                      PUSH 0x1
005627ce  6a00                      PUSH 0x0
005627d0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005627d9  8d8574ffffff              LEA EAX,[EBP + 0xffffff74]
005627df  50                        PUSH EAX
005627e0  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
005627e6  50                        PUSH EAX
005627e7  660f5ac0                  CVTPD2PS XMM0,XMM0
005627eb  6a63                      PUSH 0x63
005627ed  68e8030000                PUSH 0x3e8
005627f2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005627fa  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
00562802  f30f5805a4a7ba00          ADDSS XMM0,dword ptr [0x00baa7a4]
0056280a  f30f59c8                  MULSS XMM1,XMM0
0056280e  f30f59d0                  MULSS XMM2,XMM0
00562812  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0056281a  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
00562822  f30f118d74ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM1
0056282a  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
00562832  f30f590d5ca7ba00          MULSS XMM1,dword ptr [0x00baa75c]
0056283a  f30f119578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM2
00562842  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
0056284a  f30f5cd0                  SUBSS XMM2,XMM0
0056284e  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00562856  f30f5cc1                  SUBSS XMM0,XMM1
0056285a  f30f11957cffffff          MOVSS dword ptr [EBP + 0xffffff7c],XMM2
00562862  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
00562867  e8b462ecff                CALL 0x00428b20
0056286c  8bf0                      MOV ESI,EAX
0056286e  e8edc61800                CALL 0x006eef60
00562873  660f6ec0                  MOVD XMM0,EAX
00562877  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0056287b  c1e81f                    SHR EAX,0x1f
0056287e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00562887  660f5ac8                  CVTPD2PS XMM1,XMM0
0056288b  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00562893  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
0056289b  f30f580d54a4ba00          ADDSS XMM1,dword ptr [0x00baa454]
005628a3  0f28c1                    MOVAPS XMM0,XMM1
005628a6  f30f5986e4000000          MULSS XMM0,dword ptr [ESI + 0xe4]
005628ae  f30f598ee8000000          MULSS XMM1,dword ptr [ESI + 0xe8]
005628b6  8d8ef0000000              LEA ECX,[ESI + 0xf0]
005628bc  8d45c0                    LEA EAX,[EBP + -0x40]
005628bf  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
005628c6  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
005628ce  0f57c0                    XORPS XMM0,XMM0
005628d1  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
005628d8  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
005628e0  0f280d30c3ba00            MOVAPS XMM1,xmmword ptr [0x00bac330]
005628e7  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
005628ee  3bc8                      CMP ECX,EAX
005628f0  7417                      JZ 0x00562909
005628f2  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
005628f5  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
005628f9  f30f7e45e0                MOVQ XMM0,qword ptr [EBP + -0x20]
005628fe  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00562903  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
00562906  894128                    MOV dword ptr [ECX + 0x28],EAX
00562909  8b06                      MOV EAX,dword ptr [ESI]
0056290b  8bce                      MOV ECX,ESI
0056290d  ff500c                    CALL dword ptr [EAX + 0xc]
00562910  836d8c01                  SUB dword ptr [EBP + -0x74],0x1
00562914  0f85e6fdffff              JNZ 0x00562700
0056291a  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00562921  80bd64ffffff00            CMP byte ptr [EBP + 0xffffff64],0x0
00562928  7522                      JNZ 0x0056294c
0056292a  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00562931  b101                      MOV CL,0x1
00562933  8b9568ffffff              MOV EDX,dword ptr [EBP + 0xffffff68]
00562939  6a00                      PUSH 0x0
0056293b  6a00                      PUSH 0x0
0056293d  e86e1f5000                CALL 0x00a648b0
00562942  83c408                    ADD ESP,0x8
00562945  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0056294c  68dcd2b100                PUSH 0xb1d2dc
00562951  8d8f98000000              LEA ECX,[EDI + 0x98]
00562957  e81485eaff                CALL 0x0040ae70
0056295c  84c0                      TEST AL,AL
0056295e  0f8489010000              JZ 0x00562aed
00562964  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0056296b  0f84ca000000              JZ 0x00562a3b
00562971  f30f10bf98010000          MOVSS XMM7,dword ptr [EDI + 0x198]
00562979  f30f10b794010000          MOVSS XMM6,dword ptr [EDI + 0x194]
00562981  0f28cf                    MOVAPS XMM1,XMM7
00562984  f30f109f9c010000          MOVSS XMM3,dword ptr [EDI + 0x19c]
0056298c  0f28c6                    MOVAPS XMM0,XMM6
0056298f  f30f1097a0010000          MOVSS XMM2,dword ptr [EDI + 0x1a0]
00562997  0f28eb                    MOVAPS XMM5,XMM3
0056299a  f30f592db4a5ba00          MULSS XMM5,dword ptr [0x00baa5b4]
005629a2  0f28e2                    MOVAPS XMM4,XMM2
005629a5  f30f5925b4a5ba00          MULSS XMM4,dword ptr [0x00baa5b4]
005629ad  f30f59c3                  MULSS XMM0,XMM3
005629b1  f30f59ca                  MULSS XMM1,XMM2
005629b5  f30f58c8                  ADDSS XMM1,XMM0
005629b9  f30f59e9                  MULSS XMM5,XMM1
005629bd  f30f59e1                  MULSS XMM4,XMM1
005629c1  f30f5cf5                  SUBSS XMM6,XMM5
005629c5  f30f5cfc                  SUBSS XMM7,XMM4
005629c9  0f28c6                    MOVAPS XMM0,XMM6
005629cc  f30f117590                MOVSS dword ptr [EBP + -0x70],XMM6
005629d1  f30f59c6                  MULSS XMM0,XMM6
005629d5  0f28cf                    MOVAPS XMM1,XMM7
005629d8  f30f117d8c                MOVSS dword ptr [EBP + -0x74],XMM7
005629dd  f30f59cf                  MULSS XMM1,XMM7
005629e1  f30f11b760030000          MOVSS dword ptr [EDI + 0x360],XMM6
005629e9  f30f11bf64030000          MOVSS dword ptr [EDI + 0x364],XMM7
005629f1  f30f58c1                  ADDSS XMM0,XMM1
005629f5  e85630edff                CALL 0x00435a50
005629fa  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00562a01  f30f105590                MOVSS XMM2,dword ptr [EBP + -0x70]
00562a06  761e                      JBE 0x00562a26
00562a08  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00562a10  f30f5ec8                  DIVSS XMM1,XMM0
00562a14  0f28c1                    MOVAPS XMM0,XMM1
00562a17  f30f59d0                  MULSS XMM2,XMM0
00562a1b  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
00562a20  f30f59c1                  MULSS XMM0,XMM1
00562a24  eb05                      JMP 0x00562a2b
00562a26  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
00562a2b  f30f119734030000          MOVSS dword ptr [EDI + 0x334],XMM2
00562a33  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00562a3b  f30f10af6c030000          MOVSS XMM5,dword ptr [EDI + 0x36c]
00562a43  0f2e2de49fba00            UCOMISS XMM5,dword ptr [0x00ba9fe4]
00562a4a  f30f109fb40b0000          MOVSS XMM3,dword ptr [EDI + 0xbb4]
00562a52  0f28d3                    MOVAPS XMM2,XMM3
00562a55  0f28e3                    MOVAPS XMM4,XMM3
00562a58  f30f599734030000          MULSS XMM2,dword ptr [EDI + 0x334]
00562a60  f30f59a738030000          MULSS XMM4,dword ptr [EDI + 0x338]
00562a68  9f                        LAHF
00562a69  f6c444                    TEST AH,0x44
00562a6c  7b43                      JNP 0x00562ab1
00562a6e  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00562a76  0f28c1                    MOVAPS XMM0,XMM1
00562a79  f30f59cc                  MULSS XMM1,XMM4
00562a7d  f30f59c2                  MULSS XMM0,XMM2
00562a81  f30f5ecd                  DIVSS XMM1,XMM5
00562a85  f30f5ec5                  DIVSS XMM0,XMM5
00562a89  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00562a91  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00562a99  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00562aa1  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00562aa9  f30f109fb40b0000          MOVSS XMM3,dword ptr [EDI + 0xbb4]
00562ab1  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00562ab9  0f2e1554a4ba00            UCOMISS XMM2,dword ptr [0x00baa454]
00562ac0  f30f100da4a3ba00          MOVSS XMM1,dword ptr [0x00baa3a4]
00562ac8  9f                        LAHF
00562ac9  f6c444                    TEST AH,0x44
00562acc  7b13                      JNP 0x00562ae1
00562ace  0f28c2                    MOVAPS XMM0,XMM2
00562ad1  f30f59d1                  MULSS XMM2,XMM1
00562ad5  f30f58c1                  ADDSS XMM0,XMM1
00562ad9  f30f5cc2                  SUBSS XMM0,XMM2
00562add  f30f5ec8                  DIVSS XMM1,XMM0
00562ae1  f30f59cb                  MULSS XMM1,XMM3
00562ae5  f30f118fb40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM1
00562aed  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
00562af4  740d                      JZ 0x00562b03
00562af6  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
00562afd  0f8592020000              JNZ 0x00562d95
00562b03  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00562b0d  e983020000                JMP 0x00562d95
00562b12  8b8f9c000000              MOV ECX,dword ptr [EDI + 0x9c]
00562b18  8d7748                    LEA ESI,[EDI + 0x48]
00562b1b  85c9                      TEST ECX,ECX
00562b1d  7449                      JZ 0x00562b68
00562b1f  83791410                  CMP dword ptr [ECX + 0x14],0x10
00562b23  8bc1                      MOV EAX,ECX
00562b25  7202                      JC 0x00562b29
00562b27  8b01                      MOV EAX,dword ptr [ECX]
00562b29  b9cc17b600                MOV ECX,0xb617cc
00562b2e  6690                      NOP
00562b30  8a10                      MOV DL,byte ptr [EAX]
00562b32  3a11                      CMP DL,byte ptr [ECX]
00562b34  751a                      JNZ 0x00562b50
00562b36  84d2                      TEST DL,DL
00562b38  7412                      JZ 0x00562b4c
00562b3a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00562b3d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00562b40  750e                      JNZ 0x00562b50
00562b42  83c002                    ADD EAX,0x2
00562b45  83c102                    ADD ECX,0x2
00562b48  84d2                      TEST DL,DL
00562b4a  75e4                      JNZ 0x00562b30
00562b4c  33c0                      XOR EAX,EAX
00562b4e  eb05                      JMP 0x00562b55
00562b50  1bc0                      SBB EAX,EAX
00562b52  83c801                    OR EAX,0x1
00562b55  85c0                      TEST EAX,EAX
00562b57  750f                      JNZ 0x00562b68
00562b59  8b4654                    MOV EAX,dword ptr [ESI + 0x54]
00562b5c  80783400                  CMP byte ptr [EAX + 0x34],0x0
00562b60  7427                      JZ 0x00562b89
00562b62  807e6400                  CMP byte ptr [ESI + 0x64],0x0
00562b66  7521                      JNZ 0x00562b89
00562b68  6a01                      PUSH 0x1
00562b6a  68cc17b600                PUSH 0xb617cc
00562b6f  8bce                      MOV ECX,ESI
00562b71  e87a7feaff                CALL 0x0040aaf0
00562b76  84c0                      TEST AL,AL
00562b78  740f                      JZ 0x00562b89
00562b7a  8d4e50                    LEA ECX,[ESI + 0x50]
00562b7d  e82e76eaff                CALL 0x0040a1b0
00562b82  c6466401                  MOV byte ptr [ESI + 0x64],0x1
00562b86  8d7748                    LEA ESI,[EDI + 0x48]
00562b89  f30f105590                MOVSS XMM2,dword ptr [EBP + -0x70]
00562b8e  0f2e1540b6c700            UCOMISS XMM2,dword ptr [0x00c7b640]
00562b95  9f                        LAHF
00562b96  f6c444                    TEST AH,0x44
00562b99  7a16                      JP 0x00562bb1
00562b9b  f30f10458c                MOVSS XMM0,dword ptr [EBP + -0x74]
00562ba0  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00562ba7  9f                        LAHF
00562ba8  f6c444                    TEST AH,0x44
00562bab  0f8be4010000              JNP 0x00562d95
00562bb1  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00562bbb  8b4e54                    MOV ECX,dword ptr [ESI + 0x54]
00562bbe  85c9                      TEST ECX,ECX
00562bc0  7447                      JZ 0x00562c09
00562bc2  83791410                  CMP dword ptr [ECX + 0x14],0x10
00562bc6  8bc1                      MOV EAX,ECX
00562bc8  7202                      JC 0x00562bcc
00562bca  8b01                      MOV EAX,dword ptr [ECX]
00562bcc  b91818b600                MOV ECX,0xb61818
00562bd1  8a10                      MOV DL,byte ptr [EAX]
00562bd3  3a11                      CMP DL,byte ptr [ECX]
00562bd5  751a                      JNZ 0x00562bf1
00562bd7  84d2                      TEST DL,DL
00562bd9  7412                      JZ 0x00562bed
00562bdb  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00562bde  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00562be1  750e                      JNZ 0x00562bf1
00562be3  83c002                    ADD EAX,0x2
00562be6  83c102                    ADD ECX,0x2
00562be9  84d2                      TEST DL,DL
00562beb  75e4                      JNZ 0x00562bd1
00562bed  33c0                      XOR EAX,EAX
00562bef  eb05                      JMP 0x00562bf6
00562bf1  1bc0                      SBB EAX,EAX
00562bf3  83c801                    OR EAX,0x1
00562bf6  85c0                      TEST EAX,EAX
00562bf8  750f                      JNZ 0x00562c09
00562bfa  8b4654                    MOV EAX,dword ptr [ESI + 0x54]
00562bfd  80783400                  CMP byte ptr [EAX + 0x34],0x0
00562c01  7424                      JZ 0x00562c27
00562c03  807e6400                  CMP byte ptr [ESI + 0x64],0x0
00562c07  751e                      JNZ 0x00562c27
00562c09  6a01                      PUSH 0x1
00562c0b  681818b600                PUSH 0xb61818
00562c10  8bce                      MOV ECX,ESI
00562c12  e8d97eeaff                CALL 0x0040aaf0
00562c17  84c0                      TEST AL,AL
00562c19  740c                      JZ 0x00562c27
00562c1b  8d4e50                    LEA ECX,[ESI + 0x50]
00562c1e  e88d75eaff                CALL 0x0040a1b0
00562c23  c6466401                  MOV byte ptr [ESI + 0x64],0x1
00562c27  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00562c2e  746a                      JZ 0x00562c9a
00562c30  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00562c38  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
00562c3e  50                        PUSH EAX
00562c3f  8bcf                      MOV ECX,EDI
00562c41  e88a561700                CALL 0x006d82d0
00562c46  8bc8                      MOV ECX,EAX
00562c48  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00562c4c  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00562c53  9f                        LAHF
00562c54  f6c444                    TEST AH,0x44
00562c57  7a12                      JP 0x00562c6b
00562c59  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00562c5e  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00562c65  9f                        LAHF
00562c66  f6c444                    TEST AH,0x44
00562c69  7b2f                      JNP 0x00562c9a
00562c6b  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00562c73  8d857cffffff              LEA EAX,[EBP + 0xffffff7c]
00562c79  50                        PUSH EAX
00562c7a  8bcf                      MOV ECX,EDI
00562c7c  e84f561700                CALL 0x006d82d0
00562c81  8d8d74ffffff              LEA ECX,[EBP + 0xffffff74]
00562c87  51                        PUSH ECX
00562c88  8bc8                      MOV ECX,EAX
00562c8a  e8a1d34a00                CALL 0x00a10030
00562c8f  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00562c93  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00562c98  eb0a                      JMP 0x00562ca4
00562c9a  f30f104d8c                MOVSS XMM1,dword ptr [EBP + -0x74]
00562c9f  f30f104590                MOVSS XMM0,dword ptr [EBP + -0x70]
00562ca4  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
00562cac  0f57c9                    XORPS XMM1,XMM1
00562caf  0f2fc8                    COMISS XMM1,XMM0
00562cb2  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00562cba  c787b40b000000008040      MOV dword ptr [EDI + 0xbb4],0x40800000
00562cc4  0f97c0                    SETA AL
00562cc7  888748010000              MOV byte ptr [EDI + 0x148],AL
00562ccd  e9c3000000                JMP 0x00562d95
00562cd2  6a01                      PUSH 0x1
00562cd4  68d817b600                PUSH 0xb617d8
00562cd9  8d4f48                    LEA ECX,[EDI + 0x48]
00562cdc  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00562ce6  e8e578eaff                CALL 0x0040a5d0
00562ceb  84c0                      TEST AL,AL
00562ced  7420                      JZ 0x00562d0f
00562cef  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00562cf2  85c0                      TEST EAX,EAX
00562cf4  7419                      JZ 0x00562d0f
00562cf6  8d4f78                    LEA ECX,[EDI + 0x78]
00562cf9  0f57c9                    XORPS XMM1,XMM1
00562cfc  e8ff60eaff                CALL 0x00408e00
00562d01  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00562d04  85c0                      TEST EAX,EAX
00562d06  7407                      JZ 0x00562d0f
00562d08  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
00562d0f  8b8f9c000000              MOV ECX,dword ptr [EDI + 0x9c]
00562d15  85c9                      TEST ECX,ECX
00562d17  744d                      JZ 0x00562d66
00562d19  83791410                  CMP dword ptr [ECX + 0x14],0x10
00562d1d  8bc1                      MOV EAX,ECX
00562d1f  7202                      JC 0x00562d23
00562d21  8b01                      MOV EAX,dword ptr [ECX]
00562d23  b9cc17b600                MOV ECX,0xb617cc
00562d28  8a10                      MOV DL,byte ptr [EAX]
00562d2a  3a11                      CMP DL,byte ptr [ECX]
00562d2c  751a                      JNZ 0x00562d48
00562d2e  84d2                      TEST DL,DL
00562d30  7412                      JZ 0x00562d44
00562d32  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00562d35  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00562d38  750e                      JNZ 0x00562d48
00562d3a  83c002                    ADD EAX,0x2
00562d3d  83c102                    ADD ECX,0x2
00562d40  84d2                      TEST DL,DL
00562d42  75e4                      JNZ 0x00562d28
00562d44  33c0                      XOR EAX,EAX
00562d46  eb05                      JMP 0x00562d4d
00562d48  1bc0                      SBB EAX,EAX
00562d4a  83c801                    OR EAX,0x1
00562d4d  85c0                      TEST EAX,EAX
00562d4f  7515                      JNZ 0x00562d66
00562d51  8b879c000000              MOV EAX,dword ptr [EDI + 0x9c]
00562d57  80783400                  CMP byte ptr [EAX + 0x34],0x0
00562d5b  742e                      JZ 0x00562d8b
00562d5d  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
00562d64  7525                      JNZ 0x00562d8b
00562d66  6a01                      PUSH 0x1
00562d68  68cc17b600                PUSH 0xb617cc
00562d6d  8d4f48                    LEA ECX,[EDI + 0x48]
00562d70  e87b7deaff                CALL 0x0040aaf0
00562d75  84c0                      TEST AL,AL
00562d77  7412                      JZ 0x00562d8b
00562d79  8d8f98000000              LEA ECX,[EDI + 0x98]
00562d7f  e82c74eaff                CALL 0x0040a1b0
00562d84  c687ac00000001            MOV byte ptr [EDI + 0xac],0x1
00562d8b  c7878401000006000000      MOV dword ptr [EDI + 0x184],0x6
00562d95  8d8f98000000              LEA ECX,[EDI + 0x98]
00562d9b  6a01                      PUSH 0x1
00562d9d  e8ce7eeaff                CALL 0x0040ac70
00562da2  894590                    MOV dword ptr [EBP + -0x70],EAX
00562da5  85c0                      TEST EAX,EAX
00562da7  0f849b000000              JZ 0x00562e48
00562dad  6a00                      PUSH 0x0
00562daf  8d4f48                    LEA ECX,[EDI + 0x48]
00562db2  e86984eaff                CALL 0x0040b220
00562db7  8b5590                    MOV EDX,dword ptr [EBP + -0x70]
00562dba  6a00                      PUSH 0x0
00562dbc  8b0a                      MOV ECX,dword ptr [EDX]
00562dbe  894840                    MOV dword ptr [EAX + 0x40],ECX
00562dc1  8b4a04                    MOV ECX,dword ptr [EDX + 0x4]
00562dc4  894844                    MOV dword ptr [EAX + 0x44],ECX
00562dc7  8d4f48                    LEA ECX,[EDI + 0x48]
00562dca  e85184eaff                CALL 0x0040b220
00562dcf  8b4d90                    MOV ECX,dword ptr [EBP + -0x70]
00562dd2  6a00                      PUSH 0x0
00562dd4  8b5110                    MOV EDX,dword ptr [ECX + 0x10]
00562dd7  895034                    MOV dword ptr [EAX + 0x34],EDX
00562dda  8b5114                    MOV EDX,dword ptr [ECX + 0x14]
00562ddd  895038                    MOV dword ptr [EAX + 0x38],EDX
00562de0  f30f104144                MOVSS XMM0,dword ptr [ECX + 0x44]
00562de5  8d4f48                    LEA ECX,[EDI + 0x48]
00562de8  f30f114588                MOVSS dword ptr [EBP + -0x78],XMM0
00562ded  e82e84eaff                CALL 0x0040b220
00562df2  f30f104588                MOVSS XMM0,dword ptr [EBP + -0x78]
00562df7  8b7590                    MOV ESI,dword ptr [EBP + -0x70]
00562dfa  f30f11403c                MOVSS dword ptr [EAX + 0x3c],XMM0
00562dff  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00562e07  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00562e0f  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
00562e17  e884ce5800                CALL 0x00aefca0
00562e1c  f30f104618                MOVSS XMM0,dword ptr [ESI + 0x18]
00562e21  33c9                      XOR ECX,ECX
00562e23  83e007                    AND EAX,0x7
00562e26  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00562e2d  0f97c1                    SETA CL
00562e30  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00562e34  8d0441                    LEA EAX,[ECX + EAX*0x2]
00562e37  740f                      JZ 0x00562e48
00562e39  660f6ec8                  MOVD XMM1,EAX
00562e3d  8d4f78                    LEA ECX,[EDI + 0x78]
00562e40  0f5bc9                    CVTDQ2PS XMM1,XMM1
00562e43  e8b85feaff                CALL 0x00408e00
00562e48  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00562e4f  0f847c000000              JZ 0x00562ed1
00562e55  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00562e5b  2500000001                AND EAX,0x1000000
00562e60  83c800                    OR EAX,0x0
00562e63  756c                      JNZ 0x00562ed1
00562e65  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00562e6c  50                        PUSH EAX
00562e6d  50                        PUSH EAX
00562e6e  6a04                      PUSH 0x4
00562e70  6a01                      PUSH 0x1
00562e72  51                        PUSH ECX
00562e73  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
00562e76  8945b8                    MOV dword ptr [EBP + -0x48],EAX
00562e79  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00562e7c  8d4594                    LEA EAX,[EBP + -0x6c]
00562e7f  c704240000803f            MOV dword ptr [ESP],0x3f800000
00562e86  57                        PUSH EDI
00562e87  50                        PUSH EAX
00562e88  83ec10                    SUB ESP,0x10
00562e8b  8bc4                      MOV EAX,ESP
00562e8d  0f114594                  MOVUPS xmmword ptr [EBP + -0x6c],XMM0
00562e91  0f2805c0bbba00            MOVAPS XMM0,xmmword ptr [0x00babbc0]
00562e98  0f1145a4                  MOVUPS xmmword ptr [EBP + -0x5c],XMM0
00562e9c  51                        PUSH ECX
00562e9d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00562ea3  c70000000000              MOV dword ptr [EAX],0x0
00562ea9  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
00562eb0  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
00562eb7  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
00562ebe  8d873c030000              LEA EAX,[EDI + 0x33c]
00562ec4  c704240000c841            MOV dword ptr [ESP],0x41c80000
00562ecb  50                        PUSH EAX
00562ecc  e88fd11900                CALL 0x00700060
00562ed1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00562ed4  64890d00000000            MOV dword ptr FS:[0x0],ECX
00562edb  59                        POP ECX
00562edc  5f                        POP EDI
00562edd  5e                        POP ESI
00562ede  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00562ee1  33cd                      XOR ECX,EBP
00562ee3  e843c25800                CALL 0x00aef12b
00562ee8  8be5                      MOV ESP,EBP
00562eea  5d                        POP EBP
00562eeb  8be3                      MOV ESP,EBX
00562eed  5b                        POP EBX
00562eee  c3                        RET
