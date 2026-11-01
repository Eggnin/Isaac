; J460 NPC AI 0x00496fb0 AI_00496fb0
; types=410
; identities=410.0.0
; entry=00496fb0
00496fb0  55                        PUSH EBP
00496fb1  8bec                      MOV EBP,ESP
00496fb3  83e4f8                    AND ESP,0xfffffff8
00496fb6  81ecc0010000              SUB ESP,0x1c0
00496fbc  a1b493bf00                MOV EAX,[0x00bf93b4]
00496fc1  33c4                      XOR EAX,ESP
00496fc3  898424bc010000            MOV dword ptr [ESP + 0x1bc],EAX
00496fca  56                        PUSH ESI
00496fcb  57                        PUSH EDI
00496fcc  8bf9                      MOV EDI,ECX
00496fce  897c242c                  MOV dword ptr [ESP + 0x2c],EDI
00496fd2  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00496fd5  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
00496fd8  8bb7c0030000              MOV ESI,dword ptr [EDI + 0x3c0]
00496fde  89742418                  MOV dword ptr [ESP + 0x18],ESI
00496fe2  3bc1                      CMP EAX,ECX
00496fe4  0f84b4020000              JZ 0x0049729e
00496fea  85f6                      TEST ESI,ESI
00496fec  0f84ac020000              JZ 0x0049729e
00496ff2  c644242201                MOV byte ptr [ESP + 0x22],0x1
00496ff7  c644240f00                MOV byte ptr [ESP + 0xf],0x0
00496ffc  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00497002  25000a0001                AND EAX,0x1000a00
00497007  c644242301                MOV byte ptr [ESP + 0x23],0x1
0049700c  83c800                    OR EAX,0x0
0049700f  7505                      JNZ 0x00497016
00497011  c644242300                MOV byte ptr [ESP + 0x23],0x0
00497016  f30f100d08abba00          MOVSS XMM1,dword ptr [0x00baab08]
0049701e  85f6                      TEST ESI,ESI
00497020  0f84a1020000              JZ 0x004972c7
00497026  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0049702c  25000a0001                AND EAX,0x1000a00
00497031  83c800                    OR EAX,0x0
00497034  0f858d020000              JNZ 0x004972c7
0049703a  88442421                  MOV byte ptr [ESP + 0x21],AL
0049703e  85f6                      TEST ESI,ESI
00497040  741f                      JZ 0x00497061
00497042  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0049704a  f30f5c8680030000          SUBSS XMM0,dword ptr [ESI + 0x380]
00497052  0f2fc1                    COMISS XMM0,XMM1
00497055  760a                      JBE 0x00497061
00497057  c787c40b000078000000      MOV dword ptr [EDI + 0xbc4],0x78
00497061  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00497066  0f57f6                    XORPS XMM6,XMM6
00497069  0f2fc6                    COMISS XMM0,XMM6
0049706c  761c                      JBE 0x0049708a
0049706e  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00497071  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00497074  7414                      JZ 0x0049708a
00497076  83781027                  CMP dword ptr [EAX + 0x10],0x27
0049707a  7506                      JNZ 0x00497082
0049707c  c70000000000              MOV dword ptr [EAX],0x0
00497082  83c038                    ADD EAX,0x38
00497085  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00497088  75ec                      JNZ 0x00497076
0049708a  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00497091  0f854d020000              JNZ 0x004972e4
00497097  0f281510c1ba00            MOVAPS XMM2,xmmword ptr [0x00bac110]
0049709e  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004970a4  8d442434                  LEA EAX,[ESP + 0x34]
004970a8  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004970b2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004970bc  0f57c9                    XORPS XMM1,XMM1
004970bf  c787740300009a99993f      MOV dword ptr [EDI + 0x374],0x3f99999a
004970c9  c787780300000000003f      MOV dword ptr [EDI + 0x378],0x3f000000
004970d3  c7442454cac8c83e          MOV dword ptr [ESP + 0x54],0x3ec8c8ca
004970db  c7442458cac8c83e          MOV dword ptr [ESP + 0x58],0x3ec8c8ca
004970e3  c744245ca1a0a03e          MOV dword ptr [ESP + 0x5c],0x3ea0a0a1
004970eb  3bc8                      CMP ECX,EAX
004970ed  7419                      JZ 0x00497108
004970ef  f30f7e442454              MOVQ XMM0,qword ptr [ESP + 0x54]
004970f5  8b44245c                  MOV EAX,dword ptr [ESP + 0x5c]
004970f9  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
004970fe  0f1111                    MOVUPS xmmword ptr [ECX],XMM2
00497101  894128                    MOV dword ptr [ECX + 0x28],EAX
00497104  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
00497108  8d442418                  LEA EAX,[ESP + 0x18]
0049710c  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
00497116  50                        PUSH EAX
00497117  6a01                      PUSH 0x1
00497119  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
0049711f  c744242000000000          MOV dword ptr [ESP + 0x20],0x0
00497127  e8944bfbff                CALL 0x0044bcc0
0049712c  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0049712f  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
00497132  0f84231e0000              JZ 0x00498f5b
00497138  e8237e2500                CALL 0x006eef60
0049713d  8b7f30                    MOV EDI,dword ptr [EDI + 0x30]
00497140  8bf0                      MOV ESI,EAX
00497142  e8197e2500                CALL 0x006eef60
00497147  660f6ec0                  MOVD XMM0,EAX
0049714b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049714f  c1e81f                    SHR EAX,0x1f
00497152  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049715b  660f5ac0                  CVTPD2PS XMM0,XMM0
0049715f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00497167  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0049716f  f30f58c0                  ADDSS XMM0,XMM0
00497173  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00497179  e8c263f8ff                CALL 0x0041d540
0049717e  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00497186  8b44242c                  MOV EAX,dword ptr [ESP + 0x2c]
0049718a  f30f58803c030000          ADDSS XMM0,dword ptr [EAX + 0x33c]
00497192  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00497198  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
0049719e  e87d63f8ff                CALL 0x0041d520
004971a3  8b44242c                  MOV EAX,dword ptr [ESP + 0x2c]
004971a7  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
004971af  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004971b5  6a00                      PUSH 0x0
004971b7  56                        PUSH ESI
004971b8  f30f588040030000          ADDSS XMM0,dword ptr [EAX + 0x340]
004971c0  8bf0                      MOV ESI,EAX
004971c2  57                        PUSH EDI
004971c3  56                        PUSH ESI
004971c4  8d8660030000              LEA EAX,[ESI + 0x360]
004971ca  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
004971d0  50                        PUSH EAX
004971d1  8d442424                  LEA EAX,[ESP + 0x24]
004971d5  50                        PUSH EAX
004971d6  ff762c                    PUSH dword ptr [ESI + 0x2c]
004971d9  ff7628                    PUSH dword ptr [ESI + 0x28]
004971dc  e82f722600                CALL 0x006fe410
004971e1  817e289a010000            CMP dword ptr [ESI + 0x28],0x19a
004971e8  8bf8                      MOV EDI,EAX
004971ea  0f856b1d0000              JNZ 0x00498f5b
004971f0  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
004971f6  8d86c0030000              LEA EAX,[ESI + 0x3c0]
004971fc  85c9                      TEST ECX,ECX
004971fe  741a                      JZ 0x0049721a
00497200  89442418                  MOV dword ptr [ESP + 0x18],EAX
00497204  81c1cc030000              ADD ECX,0x3cc
0049720a  8d442418                  LEA EAX,[ESP + 0x18]
0049720e  50                        PUSH EAX
0049720f  e8fc7f0300                CALL 0x004cf210
00497214  8d86c0030000              LEA EAX,[ESI + 0x3c0]
0049721a  8938                      MOV dword ptr [EAX],EDI
0049721c  85ff                      TEST EDI,EDI
0049721e  7408                      JZ 0x00497228
00497220  50                        PUSH EAX
00497221  8bcf                      MOV ECX,EDI
00497223  e8c86a0300                CALL 0x004cdcf0
00497228  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0049722e  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00497234  85c9                      TEST ECX,ECX
00497236  741a                      JZ 0x00497252
00497238  89442418                  MOV dword ptr [ESP + 0x18],EAX
0049723c  81c1cc030000              ADD ECX,0x3cc
00497242  8d442418                  LEA EAX,[ESP + 0x18]
00497246  50                        PUSH EAX
00497247  e8c47f0300                CALL 0x004cf210
0049724c  8d87c0030000              LEA EAX,[EDI + 0x3c0]
00497252  50                        PUSH EAX
00497253  8bce                      MOV ECX,ESI
00497255  8930                      MOV dword ptr [EAX],ESI
00497257  e8946a0300                CALL 0x004cdcf0
0049725c  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00497262  33c0                      XOR EAX,EAX
00497264  81e100000010              AND ECX,0x10000000
0049726a  0bc1                      OR EAX,ECX
0049726c  0f84e91c0000              JZ 0x00498f5b
00497272  8b8680030000              MOV EAX,dword ptr [ESI + 0x380]
00497278  898780030000              MOV dword ptr [EDI + 0x380],EAX
0049727e  8b8684030000              MOV EAX,dword ptr [ESI + 0x384]
00497284  898784030000              MOV dword ptr [EDI + 0x384],EAX
0049728a  5f                        POP EDI
0049728b  5e                        POP ESI
0049728c  8b8c24bc010000            MOV ECX,dword ptr [ESP + 0x1bc]
00497293  33cc                      XOR ECX,ESP
00497295  e8917e6500                CALL 0x00aef12b
0049729a  8be5                      MOV ESP,EBP
0049729c  5d                        POP EBP
0049729d  c3                        RET
0049729e  c644242200                MOV byte ptr [ESP + 0x22],0x0
004972a3  3bc1                      CMP EAX,ECX
004972a5  0f854cfdffff              JNZ 0x00496ff7
004972ab  c644242200                MOV byte ptr [ESP + 0x22],0x0
004972b0  85f6                      TEST ESI,ESI
004972b2  0f843ffdffff              JZ 0x00496ff7
004972b8  c644240f01                MOV byte ptr [ESP + 0xf],0x1
004972bd  c644242200                MOV byte ptr [ESP + 0x22],0x0
004972c2  e935fdffff                JMP 0x00496ffc
004972c7  c644242101                MOV byte ptr [ESP + 0x21],0x1
004972cc  85f6                      TEST ESI,ESI
004972ce  0f856efdffff              JNZ 0x00497042
004972d4  ff87c40b0000              INC dword ptr [EDI + 0xbc4]
004972da  c644242101                MOV byte ptr [ESP + 0x21],0x1
004972df  e97dfdffff                JMP 0x00497061
004972e4  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004972eb  8d8ff0000000              LEA ECX,[EDI + 0xf0]
004972f1  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004972f9  f30f102d28a5ba00          MOVSS XMM5,dword ptr [0x00baa528]
00497301  7457                      JZ 0x0049735a
00497303  0f280d50c3ba00            MOVAPS XMM1,xmmword ptr [0x00bac350]
0049730a  8d442460                  LEA EAX,[ESP + 0x60]
0049730e  c784248000000000000000    MOV dword ptr [ESP + 0x80],0x0
00497319  0f57c0                    XORPS XMM0,XMM0
0049731c  c784248400000000000000    MOV dword ptr [ESP + 0x84],0x0
00497327  c784248800000000000000    MOV dword ptr [ESP + 0x88],0x0
00497332  3bc8                      CMP ECX,EAX
00497334  741f                      JZ 0x00497355
00497336  8b842488000000            MOV EAX,dword ptr [ESP + 0x88]
0049733d  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00497341  f30f7e842480000000        MOVQ XMM0,qword ptr [ESP + 0x80]
0049734a  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0049734f  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
00497352  894128                    MOV dword ptr [ECX + 0x28],EAX
00497355  0f28cd                    MOVAPS XMM1,XMM5
00497358  eb28                      JMP 0x00497382
0049735a  8d87b8010000              LEA EAX,[EDI + 0x1b8]
00497360  3bc8                      CMP ECX,EAX
00497362  741e                      JZ 0x00497382
00497364  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00497367  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0049736a  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
0049736e  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00497372  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
00497377  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0049737c  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
0049737f  894128                    MOV dword ptr [ECX + 0x28],EAX
00497382  f30f118f88030000          MOVSS dword ptr [EDI + 0x388],XMM1
0049738a  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00497390  83f803                    CMP EAX,0x3
00497393  0f85e2030000              JNZ 0x0049777b
00497399  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004973a3  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004973ad  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
004973b0  85c9                      TEST ECX,ECX
004973b2  744c                      JZ 0x00497400
004973b4  83791410                  CMP dword ptr [ECX + 0x14],0x10
004973b8  8bc1                      MOV EAX,ECX
004973ba  7202                      JC 0x004973be
004973bc  8b01                      MOV EAX,dword ptr [ECX]
004973be  b954bcb100                MOV ECX,0xb1bc54
004973c3  8a10                      MOV DL,byte ptr [EAX]
004973c5  3a11                      CMP DL,byte ptr [ECX]
004973c7  751a                      JNZ 0x004973e3
004973c9  84d2                      TEST DL,DL
004973cb  7412                      JZ 0x004973df
004973cd  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004973d0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004973d3  750e                      JNZ 0x004973e3
004973d5  83c002                    ADD EAX,0x2
004973d8  83c102                    ADD ECX,0x2
004973db  84d2                      TEST DL,DL
004973dd  75e4                      JNZ 0x004973c3
004973df  33c0                      XOR EAX,EAX
004973e1  eb05                      JMP 0x004973e8
004973e3  1bc0                      SBB EAX,EAX
004973e5  83c801                    OR EAX,0x1
004973e8  8d4f48                    LEA ECX,[EDI + 0x48]
004973eb  85c0                      TEST EAX,EAX
004973ed  7514                      JNZ 0x00497403
004973ef  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
004973f2  80783400                  CMP byte ptr [EAX + 0x34],0x0
004973f6  742a                      JZ 0x00497422
004973f8  80794400                  CMP byte ptr [ECX + 0x44],0x0
004973fc  7524                      JNZ 0x00497422
004973fe  eb03                      JMP 0x00497403
00497400  8d4f48                    LEA ECX,[EDI + 0x48]
00497403  6a01                      PUSH 0x1
00497405  6854bcb100                PUSH 0xb1bc54
0049740a  e8c131f7ff                CALL 0x0040a5d0
0049740f  84c0                      TEST AL,AL
00497411  740f                      JZ 0x00497422
00497413  8d4f78                    LEA ECX,[EDI + 0x78]
00497416  e8952df7ff                CALL 0x0040a1b0
0049741b  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00497422  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00497428  33c0                      XOR EAX,EAX
0049742a  81e100000010              AND ECX,0x10000000
00497430  0bc1                      OR EAX,ECX
00497432  7418                      JZ 0x0049744c
00497434  a17816c700                MOV EAX,[0x00c71678]
00497439  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0049743f  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00497442  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00497446  0f854b1a0000              JNZ 0x00498e97
0049744c  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00497452  8d4101                    LEA EAX,[ECX + 0x1]
00497455  898710040000              MOV dword ptr [EDI + 0x410],EAX
0049745b  83f914                    CMP ECX,0x14
0049745e  0f8e331a0000              JLE 0x00498e97
00497464  e8f77a2500                CALL 0x006eef60
00497469  33d2                      XOR EDX,EDX
0049746b  b905000000                MOV ECX,0x5
00497470  f7f1                      DIV ECX
00497472  85d2                      TEST EDX,EDX
00497474  0f851d1a0000              JNZ 0x00498e97
0049747a  38542422                  CMP byte ptr [ESP + 0x22],DL
0049747e  7508                      JNZ 0x00497488
00497480  85f6                      TEST ESI,ESI
00497482  0f850f1a0000              JNZ 0x00498e97
00497488  807c242300                CMP byte ptr [ESP + 0x23],0x0
0049748d  0f85041a0000              JNZ 0x00498e97
00497493  e8c87a2500                CALL 0x006eef60
00497498  33d2                      XOR EDX,EDX
0049749a  b964000000                MOV ECX,0x64
0049749f  f7f1                      DIV ECX
004974a1  83fa23                    CMP EDX,0x23
004974a4  0f83ac010000              JNC 0x00497656
004974aa  807c242100                CMP byte ptr [ESP + 0x21],0x0
004974af  0f85a6010000              JNZ 0x0049765b
004974b5  51                        PUSH ECX
004974b6  8d442414                  LEA EAX,[ESP + 0x14]
004974ba  c7042400000000            MOV dword ptr [ESP],0x0
004974c1  50                        PUSH EAX
004974c2  8bcf                      MOV ECX,EDI
004974c4  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004974ce  e86d772200                CALL 0x006bec40
004974d3  8bcf                      MOV ECX,EDI
004974d5  8bf0                      MOV ESI,EAX
004974d7  e864732200                CALL 0x006be840
004974dc  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
004974e4  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
004974ec  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004974f4  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
004974fc  f30f580e                  ADDSS XMM1,dword ptr [ESI]
00497500  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
00497505  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
0049750d  f30f119738030000          MOVSS dword ptr [EDI + 0x338],XMM2
00497515  e8467a2500                CALL 0x006eef60
0049751a  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00497520  8d9734030000              LEA EDX,[EDI + 0x334]
00497526  2401                      AND AL,0x1
00497528  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
0049752c  7413                      JZ 0x00497541
0049752e  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
00497534  81c600830100              ADD ESI,0x18300
0049753a  8b4914                    MOV ECX,dword ptr [ECX + 0x14]
0049753d  890a                      MOV dword ptr [EDX],ECX
0049753f  eb15                      JMP 0x00497556
00497541  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
00497547  81c600830100              ADD ESI,0x18300
0049754d  8b4018                    MOV EAX,dword ptr [EAX + 0x18]
00497550  898738030000              MOV dword ptr [EDI + 0x338],EAX
00497556  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
0049755e  8d442410                  LEA EAX,[ESP + 0x10]
00497562  8b0e                      MOV ECX,dword ptr [ESI]
00497564  83ec0c                    SUB ESP,0xc
00497567  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
0049756d  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
00497573  f30f111c24                MOVSS dword ptr [ESP],XMM3
00497578  52                        PUSH EDX
00497579  50                        PUSH EAX
0049757a  e8d1b93700                CALL 0x00812f50
0049757f  807c242c00                CMP byte ptr [ESP + 0x2c],0x0
00497584  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00497588  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0049758e  8d9134030000              LEA EDX,[ECX + 0x334]
00497594  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0049759c  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
004975a2  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
004975aa  8d8134030000              LEA EAX,[ECX + 0x334]
004975b0  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004975ba  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004975c4  c781640b000006000000      MOV dword ptr [ECX + 0xb64],0x6
004975ce  c781c00b000000000000      MOV dword ptr [ECX + 0xbc0],0x0
004975d8  c781b00b000000000000      MOV dword ptr [ECX + 0xbb0],0x0
004975e2  89442418                  MOV dword ptr [ESP + 0x18],EAX
004975e6  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
004975ec  898134030000              MOV dword ptr [ECX + 0x334],EAX
004975f2  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
004975f8  894204                    MOV dword ptr [EDX + 0x4],EAX
004975fb  8b06                      MOV EAX,dword ptr [ESI]
004975fd  7407                      JZ 0x00497606
004975ff  8b401c                    MOV EAX,dword ptr [EAX + 0x1c]
00497602  8902                      MOV dword ptr [EDX],EAX
00497604  eb09                      JMP 0x0049760f
00497606  8b4020                    MOV EAX,dword ptr [EAX + 0x20]
00497609  898138030000              MOV dword ptr [ECX + 0x338],EAX
0049760f  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
00497617  8d442410                  LEA EAX,[ESP + 0x10]
0049761b  8b0e                      MOV ECX,dword ptr [ESI]
0049761d  83ec0c                    SUB ESP,0xc
00497620  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
00497626  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
0049762c  f30f111c24                MOVSS dword ptr [ESP],XMM3
00497631  52                        PUSH EDX
00497632  50                        PUSH EAX
00497633  e818b93700                CALL 0x00812f50
00497638  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
0049763c  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
00497642  f30f1100                  MOVSS dword ptr [EAX],XMM0
00497646  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0049764c  f30f114004                MOVSS dword ptr [EAX + 0x4],XMM0
00497651  e941180000                JMP 0x00498e97
00497656  83fa55                    CMP EDX,0x55
00497659  7358                      JNC 0x004976b3
0049765b  51                        PUSH ECX
0049765c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00497663  6a00                      PUSH 0x0
00497665  6a02                      PUSH 0x2
00497667  51                        PUSH ECX
00497668  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049766f  8bcf                      MOV ECX,EDI
00497671  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0049767b  682f010000                PUSH 0x12f
00497680  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0049768a  e811f52300                CALL 0x006d6ba0
0049768f  807c242100                CMP byte ptr [ESP + 0x21],0x0
00497694  0f85fd170000              JNZ 0x00498e97
0049769a  c786640b000008000000      MOV dword ptr [ESI + 0xb64],0x8
004976a4  c786c00b000000000000      MOV dword ptr [ESI + 0xbc0],0x0
004976ae  e9e4170000                JMP 0x00498e97
004976b3  a17816c700                MOV EAX,[0x00c71678]
004976b8  33c9                      XOR ECX,ECX
004976ba  6800000010                PUSH 0x10000000
004976bf  6a00                      PUSH 0x0
004976c1  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
004976c7  8b82c8120000              MOV EAX,dword ptr [EDX + 0x12c8]
004976cd  0382cc120000              ADD EAX,dword ptr [EDX + 0x12cc]
004976d3  8bb2c4120000              MOV ESI,dword ptr [EDX + 0x12c4]
004976d9  03b2c0120000              ADD ESI,dword ptr [EDX + 0x12c0]
004976df  85c0                      TEST EAX,EAX
004976e1  0f4fc8                    CMOVG ECX,EAX
004976e4  33c0                      XOR EAX,EAX
004976e6  85f6                      TEST ESI,ESI
004976e8  0f4fc6                    CMOVG EAX,ESI
004976eb  2bc1                      SUB EAX,ECX
004976ed  8bcf                      MOV ECX,EDI
004976ef  83f802                    CMP EAX,0x2
004976f2  0f9c442417                SETL byte ptr [ESP + 0x17]
004976f7  e834fdf7ff                CALL 0x00417430
004976fc  84c0                      TEST AL,AL
004976fe  742b                      JZ 0x0049772b
00497700  6a00                      PUSH 0x0
00497702  51                        PUSH ECX
00497703  6a00                      PUSH 0x0
00497705  68fb000000                PUSH 0xfb
0049770a  8bcf                      MOV ECX,EDI
0049770c  e8cf502100                CALL 0x006ac7e0
00497711  6a00                      PUSH 0x0
00497713  51                        PUSH ECX
00497714  6a00                      PUSH 0x0
00497716  6a27                      PUSH 0x27
00497718  8bcf                      MOV ECX,EDI
0049771a  8bf0                      MOV ESI,EAX
0049771c  e8bf502100                CALL 0x006ac7e0
00497721  03f0                      ADD ESI,EAX
00497723  83fe02                    CMP ESI,0x2
00497726  0f92c0                    SETC AL
00497729  eb04                      JMP 0x0049772f
0049772b  8a44240f                  MOV AL,byte ptr [ESP + 0xf]
0049772f  84c0                      TEST AL,AL
00497731  0f8460170000              JZ 0x00498e97
00497737  e824782500                CALL 0x006eef60
0049773c  33d2                      XOR EDX,EDX
0049773e  b903000000                MOV ECX,0x3
00497743  f7f1                      DIV ECX
00497745  f7da                      NEG EDX
00497747  1bd2                      SBB EDX,EDX
00497749  f7da                      NEG EDX
0049774b  83c20d                    ADD EDX,0xd
0049774e  8997640b0000              MOV dword ptr [EDI + 0xb64],EDX
00497754  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0049775b  0f8436170000              JZ 0x00498e97
00497761  807c242100                CMP byte ptr [ESP + 0x21],0x0
00497766  0f852b170000              JNZ 0x00498e97
0049776c  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00497770  8991640b0000              MOV dword ptr [ECX + 0xb64],EDX
00497776  e91c170000                JMP 0x00498e97
0049777b  83f80d                    CMP EAX,0xd
0049777e  0f84f3130000              JZ 0x00498b77
00497784  83f80e                    CMP EAX,0xe
00497787  0f84ea130000              JZ 0x00498b77
0049778d  83f808                    CMP EAX,0x8
00497790  0f85c7040000              JNZ 0x00497c5d
00497796  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
0049779d  f30f10055ca8ba00          MOVSS XMM0,dword ptr [0x00baa85c]
004977a5  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004977ab  740e                      JZ 0x004977bb
004977ad  f30f10059ca8ba00          MOVSS XMM0,dword ptr [0x00baa89c]
004977b5  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004977bb  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
004977c1  8d4748                    LEA EAX,[EDI + 0x48]
004977c4  85c9                      TEST ECX,ECX
004977c6  0f8548010000              JNZ 0x00497914
004977cc  8b7034                    MOV ESI,dword ptr [EAX + 0x34]
004977cf  85f6                      TEST ESI,ESI
004977d1  744e                      JZ 0x00497821
004977d3  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004977d7  8bc6                      MOV EAX,ESI
004977d9  7202                      JC 0x004977dd
004977db  8b06                      MOV EAX,dword ptr [ESI]
004977dd  b9f4d8b100                MOV ECX,0xb1d8f4
004977e2  8a10                      MOV DL,byte ptr [EAX]
004977e4  3a11                      CMP DL,byte ptr [ECX]
004977e6  751a                      JNZ 0x00497802
004977e8  84d2                      TEST DL,DL
004977ea  7412                      JZ 0x004977fe
004977ec  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004977ef  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004977f2  750e                      JNZ 0x00497802
004977f4  83c002                    ADD EAX,0x2
004977f7  83c102                    ADD ECX,0x2
004977fa  84d2                      TEST DL,DL
004977fc  75e4                      JNZ 0x004977e2
004977fe  33c0                      XOR EAX,EAX
00497800  eb05                      JMP 0x00497807
00497802  1bc0                      SBB EAX,EAX
00497804  83c801                    OR EAX,0x1
00497807  85c0                      TEST EAX,EAX
00497809  7513                      JNZ 0x0049781e
0049780b  384634                    CMP byte ptr [ESI + 0x34],AL
0049780e  7432                      JZ 0x00497842
00497810  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00497817  8d4748                    LEA EAX,[EDI + 0x48]
0049781a  7526                      JNZ 0x00497842
0049781c  eb03                      JMP 0x00497821
0049781e  8d4748                    LEA EAX,[EDI + 0x48]
00497821  6a01                      PUSH 0x1
00497823  68f4d8b100                PUSH 0xb1d8f4
00497828  8bc8                      MOV ECX,EAX
0049782a  e8a12df7ff                CALL 0x0040a5d0
0049782f  84c0                      TEST AL,AL
00497831  740f                      JZ 0x00497842
00497833  8d4f78                    LEA ECX,[EDI + 0x78]
00497836  e87529f7ff                CALL 0x0040a1b0
0049783b  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00497842  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00497846  740d                      JZ 0x00497855
00497848  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0049784f  0f8542160000              JNZ 0x00498e97
00497855  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
0049785b  8bcf                      MOV ECX,EDI
0049785d  e8de6f2200                CALL 0x006be840
00497862  8d4c2410                  LEA ECX,[ESP + 0x10]
00497866  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0049786e  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00497876  8d44242c                  LEA EAX,[ESP + 0x2c]
0049787a  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00497882  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0049788a  50                        PUSH EAX
0049788b  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
00497891  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
00497897  e894875700                CALL 0x00a10030
0049789c  807c240f00                CMP byte ptr [ESP + 0xf],0x0
004978a1  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
004978a7  0f28d1                    MOVAPS XMM2,XMM1
004978aa  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004978af  f30f5910                  MULSS XMM2,dword ptr [EAX]
004978b3  f30f59c8                  MULSS XMM1,XMM0
004978b7  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
004978bf  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
004978c7  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
004978cf  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004978d7  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004978e1  0f84b0150000              JZ 0x00498e97
004978e7  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004978ef  f30f591550adba00          MULSS XMM2,dword ptr [0x00baad50]
004978f7  f30f590550adba00          MULSS XMM0,dword ptr [0x00baad50]
004978ff  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00497907  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0049790f  e983150000                JMP 0x00498e97
00497914  83f901                    CMP ECX,0x1
00497917  8bc8                      MOV ECX,EAX
00497919  0f8599010000              JNZ 0x00497ab8
0049791f  e85c2ef7ff                CALL 0x0040a780
00497924  99                        CDQ
00497925  b903000000                MOV ECX,0x3
0049792a  f7f9                      IDIV ECX
0049792c  85d2                      TEST EDX,EDX
0049792e  0f8585000000              JNZ 0x004979b9
00497934  e827762500                CALL 0x006eef60
00497939  807c240f00                CMP byte ptr [ESP + 0xf],0x0
0049793e  b917000000                MOV ECX,0x17
00497943  6a00                      PUSH 0x0
00497945  50                        PUSH EAX
00497946  6a00                      PUSH 0x0
00497948  57                        PUSH EDI
00497949  6840b6c700                PUSH 0xc7b640
0049794e  8d873c030000              LEA EAX,[EDI + 0x33c]
00497954  50                        PUSH EAX
00497955  b85e000000                MOV EAX,0x5e
0049795a  0f44c1                    CMOVZ EAX,ECX
0049795d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00497963  50                        PUSH EAX
00497964  68e8030000                PUSH 0x3e8
00497969  e8a26a2600                CALL 0x006fe410
0049796e  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
00497976  8bc8                      MOV ECX,EAX
00497978  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
00497980  f30f591530a6ba00          MULSS XMM2,dword ptr [0x00baa630]
00497988  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
00497990  8b01                      MOV EAX,dword ptr [ECX]
00497992  f30f1191e4000000          MOVSS dword ptr [ECX + 0xe4],XMM2
0049799a  c7815c04000005000000      MOV dword ptr [ECX + 0x45c],0x5
004979a4  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
004979ac  c7816004000005000000      MOV dword ptr [ECX + 0x460],0x5
004979b6  ff500c                    CALL dword ptr [EAX + 0xc]
004979b9  6a00                      PUSH 0x0
004979bb  6800d9b100                PUSH 0xb1d900
004979c0  8d4f48                    LEA ECX,[EDI + 0x48]
004979c3  e8b829f7ff                CALL 0x0040a380
004979c8  8d8f60030000              LEA ECX,[EDI + 0x360]
004979ce  6840b6c700                PUSH 0xc7b640
004979d3  e8588c5700                CALL 0x00a10630
004979d8  84c0                      TEST AL,AL
004979da  742f                      JZ 0x00497a0b
004979dc  8d84248c000000            LEA EAX,[ESP + 0x8c]
004979e3  50                        PUSH EAX
004979e4  e847865700                CALL 0x00a10030
004979e9  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
004979ef  0f28c1                    MOVAPS XMM0,XMM1
004979f2  f30f5900                  MULSS XMM0,dword ptr [EAX]
004979f6  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
004979fb  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00497a03  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00497a0b  85f6                      TEST ESI,ESI
00497a0d  741a                      JZ 0x00497a29
00497a0f  83be640b000008            CMP dword ptr [ESI + 0xb64],0x8
00497a16  0f857b140000              JNZ 0x00498e97
00497a1c  83bec00b000001            CMP dword ptr [ESI + 0xbc0],0x1
00497a23  0f856e140000              JNZ 0x00498e97
00497a29  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00497a2f  8d4101                    LEA EAX,[ECX + 0x1]
00497a32  898710040000              MOV dword ptr [EDI + 0x410],EAX
00497a38  83f941                    CMP ECX,0x41
00497a3b  7f0b                      JG 0x00497a48
00497a3d  807c242300                CMP byte ptr [ESP + 0x23],0x0
00497a42  0f844f140000              JZ 0x00498e97
00497a48  e813752500                CALL 0x006eef60
00497a4d  33d2                      XOR EDX,EDX
00497a4f  b923000000                MOV ECX,0x23
00497a54  f7f1                      DIV ECX
00497a56  85d2                      TEST EDX,EDX
00497a58  0f8539140000              JNZ 0x00498e97
00497a5e  a17816c700                MOV EAX,[0x00c71678]
00497a63  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00497a69  51                        PUSH ECX
00497a6a  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00497a70  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
00497a76  e8c5cf4a00                CALL 0x00944a40
00497a7b  84c0                      TEST AL,AL
00497a7d  0f8414140000              JZ 0x00498e97
00497a83  e8d8742500                CALL 0x006eef60
00497a88  33d2                      XOR EDX,EDX
00497a8a  b964000000                MOV ECX,0x64
00497a8f  f7f1                      DIV ECX
00497a91  83fa3c                    CMP EDX,0x3c
00497a94  730f                      JNC 0x00497aa5
00497a96  c787c00b000002000000      MOV dword ptr [EDI + 0xbc0],0x2
00497aa0  e9f2130000                JMP 0x00498e97
00497aa5  83fa46                    CMP EDX,0x46
00497aa8  1bc0                      SBB EAX,EAX
00497aaa  83c004                    ADD EAX,0x4
00497aad  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00497ab3  e9df130000                JMP 0x00498e97
00497ab8  6a00                      PUSH 0x0
00497aba  68dce0b100                PUSH 0xb1e0dc
00497abf  e8bc28f7ff                CALL 0x0040a380
00497ac4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00497ac8  740d                      JZ 0x00497ad7
00497aca  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00497ad1  0f85c0130000              JNZ 0x00498e97
00497ad7  807c242300                CMP byte ptr [ESP + 0x23],0x0
00497adc  0f854c100000              JNZ 0x00498b2e
00497ae2  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00497ae8  83f802                    CMP EAX,0x2
00497aeb  0f8502010000              JNZ 0x00497bf3
00497af1  c787640b00000a000000      MOV dword ptr [EDI + 0xb64],0xa
00497afb  8bcf                      MOV ECX,EDI
00497afd  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00497b07  e8346d2200                CALL 0x006be840
00497b0c  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
00497b14  0f57db                    XORPS XMM3,XMM3
00497b17  51                        PUSH ECX
00497b18  8d8c2498000000            LEA ECX,[ESP + 0x98]
00497b1f  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00497b26  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00497b2e  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00497b36  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00497b3e  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00497b46  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
00497b4e  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
00497b56  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00497b5e  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00497b68  e883bdf8ff                CALL 0x004238f0
00497b6d  8d8f34030000              LEA ECX,[EDI + 0x334]
00497b73  8bf0                      MOV ESI,EAX
00497b75  e8e6761e00                CALL 0x0067f260
00497b7a  660f6ec0                  MOVD XMM0,EAX
00497b7e  0f5bc0                    CVTDQ2PS XMM0,XMM0
00497b81  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00497b89  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
00497b91  e8aaab1e00                CALL 0x00682740
00497b96  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00497b9e  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00497ba4  e89759f8ff                CALL 0x0041d540
00497ba9  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00497baf  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
00497bb5  e86659f8ff                CALL 0x0041d520
00497bba  51                        PUSH ECX
00497bbb  c7042400000041            MOV dword ptr [ESP],0x41000000
00497bc2  8d442414                  LEA EAX,[ESP + 0x14]
00497bc6  56                        PUSH ESI
00497bc7  6a28                      PUSH 0x28
00497bc9  50                        PUSH EAX
00497bca  8d542434                  LEA EDX,[ESP + 0x34]
00497bce  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00497bd4  8bcf                      MOV ECX,EDI
00497bd6  c744243400000000          MOV dword ptr [ESP + 0x34],0x0
00497bde  c7442438000020c2          MOV dword ptr [ESP + 0x38],0xc2200000
00497be6  e8a53c1700                CALL 0x0060b890
00497beb  83c410                    ADD ESP,0x10
00497bee  e9a4120000                JMP 0x00498e97
00497bf3  83f803                    CMP EAX,0x3
00497bf6  7550                      JNZ 0x00497c48
00497bf8  c787640b00000b000000      MOV dword ptr [EDI + 0xb64],0xb
00497c02  8bcf                      MOV ECX,EDI
00497c04  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00497c0e  e82d6c2200                CALL 0x006be840
00497c13  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00497c1b  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00497c23  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00497c2b  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00497c33  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00497c3b  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
00497c43  e945120000                JMP 0x00498e8d
00497c48  83f804                    CMP EAX,0x4
00497c4b  0f8546120000              JNZ 0x00498e97
00497c51  c787640b00000c000000      MOV dword ptr [EDI + 0xb64],0xc
00497c5b  eba5                      JMP 0x00497c02
00497c5d  83f80a                    CMP EAX,0xa
00497c60  0f85bb010000              JNZ 0x00497e21
00497c66  8d8f34030000              LEA ECX,[EDI + 0x334]
00497c6c  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00497c76  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00497c80  e8db751e00                CALL 0x0067f260
00497c85  8bd0                      MOV EDX,EAX
00497c87  85d2                      TEST EDX,EDX
00497c89  89542418                  MOV dword ptr [ESP + 0x18],EDX
00497c8d  0f94c1                    SETZ CL
00497c90  888f48010000              MOV byte ptr [EDI + 0x148],CL
00497c96  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00497c9c  85c0                      TEST EAX,EAX
00497c9e  752e                      JNZ 0x00497cce
00497ca0  50                        PUSH EAX
00497ca1  ff3495f4dbb100            PUSH dword ptr [EDX*0x4 + 0xb1dbf4]
00497ca8  8d4f48                    LEA ECX,[EDI + 0x48]
00497cab  e8d026f7ff                CALL 0x0040a380
00497cb0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00497cb4  740d                      JZ 0x00497cc3
00497cb6  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00497cbd  0f85d4110000              JNZ 0x00498e97
00497cc3  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00497cc9  e9c9110000                JMP 0x00498e97
00497cce  83f801                    CMP EAX,0x1
00497cd1  0f8512010000              JNZ 0x00497de9
00497cd7  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00497cdc  0f2fc6                    COMISS XMM0,XMM6
00497cdf  7622                      JBE 0x00497d03
00497ce1  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00497ce4  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
00497ce7  3bc1                      CMP EAX,ECX
00497ce9  7418                      JZ 0x00497d03
00497ceb  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00497cf0  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00497cf4  f30f59c5                  MULSS XMM0,XMM5
00497cf8  f30f1100                  MOVSS dword ptr [EAX],XMM0
00497cfc  83c038                    ADD EAX,0x38
00497cff  3bc1                      CMP EAX,ECX
00497d01  75ed                      JNZ 0x00497cf0
00497d03  6a00                      PUSH 0x0
00497d05  ff3495e4dbb100            PUSH dword ptr [EDX*0x4 + 0xb1dbe4]
00497d0c  8d4f48                    LEA ECX,[EDI + 0x48]
00497d0f  e86c26f7ff                CALL 0x0040a380
00497d14  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
00497d18  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
00497d20  c74424140000f0c1          MOV dword ptr [ESP + 0x14],0xc1f00000
00497d28  85f6                      TEST ESI,ESI
00497d2a  740f                      JZ 0x00497d3b
00497d2c  83fe02                    CMP ESI,0x2
00497d2f  7512                      JNZ 0x00497d43
00497d31  c744241000000c42          MOV dword ptr [ESP + 0x10],0x420c0000
00497d39  eb08                      JMP 0x00497d43
00497d3b  c744241000000cc2          MOV dword ptr [ESP + 0x10],0xc20c0000
00497d43  660f6ec6                  MOVD XMM0,ESI
00497d47  8d442410                  LEA EAX,[ESP + 0x10]
00497d4b  0f5bc0                    CVTDQ2PS XMM0,XMM0
00497d4e  6a00                      PUSH 0x0
00497d50  57                        PUSH EDI
00497d51  50                        PUSH EAX
00497d52  6a1e                      PUSH 0x1e
00497d54  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00497d5c  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
00497d64  e8d7a91e00                CALL 0x00682740
00497d69  51                        PUSH ECX
00497d6a  f30f110424                MOVSS dword ptr [ESP],XMM0
00497d6f  8d873c030000              LEA EAX,[EDI + 0x33c]
00497d75  50                        PUSH EAX
00497d76  6a06                      PUSH 0x6
00497d78  e893754d00                CALL 0x0096f310
00497d7d  83c41c                    ADD ESP,0x1c
00497d80  8bc8                      MOV ECX,EAX
00497d82  894c2418                  MOV dword ptr [ESP + 0x18],ECX
00497d86  83fe01                    CMP ESI,0x1
00497d89  750a                      JNZ 0x00497d95
00497d8b  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
00497d93  eb08                      JMP 0x00497d9d
00497d95  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
00497d9d  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
00497da3  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
00497dab  8b06                      MOV EAX,dword ptr [ESI]
00497dad  85c0                      TEST EAX,EAX
00497daf  7418                      JZ 0x00497dc9
00497db1  8d4c242c                  LEA ECX,[ESP + 0x2c]
00497db5  8974242c                  MOV dword ptr [ESP + 0x2c],ESI
00497db9  51                        PUSH ECX
00497dba  8d88cc030000              LEA ECX,[EAX + 0x3cc]
00497dc0  e84b740300                CALL 0x004cf210
00497dc5  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00497dc9  890e                      MOV dword ptr [ESI],ECX
00497dcb  85c9                      TEST ECX,ECX
00497dcd  740a                      JZ 0x00497dd9
00497dcf  56                        PUSH ESI
00497dd0  e81b5f0300                CALL 0x004cdcf0
00497dd5  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00497dd9  8b01                      MOV EAX,dword ptr [ECX]
00497ddb  ff500c                    CALL dword ptr [EAX + 0xc]
00497dde  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00497de4  e9ae100000                JMP 0x00498e97
00497de9  83f802                    CMP EAX,0x2
00497dec  751c                      JNZ 0x00497e0a
00497dee  83bfec0b000000            CMP dword ptr [EDI + 0xbec],0x0
00497df5  0f859c100000              JNZ 0x00498e97
00497dfb  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
00497e05  e98d100000                JMP 0x00498e97
00497e0a  83f803                    CMP EAX,0x3
00497e0d  0f8584100000              JNZ 0x00498e97
00497e13  6a00                      PUSH 0x0
00497e15  ff3495d4dbb100            PUSH dword ptr [EDX*0x4 + 0xb1dbd4]
00497e1c  e9f20c0000                JMP 0x00498b13
00497e21  83f806                    CMP EAX,0x6
00497e24  0f8575010000              JNZ 0x00497f9f
00497e2a  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00497e30  85c0                      TEST EAX,EAX
00497e32  7519                      JNZ 0x00497e4d
00497e34  50                        PUSH EAX
00497e35  6884deb100                PUSH 0xb1de84
00497e3a  8d4f48                    LEA ECX,[EDI + 0x48]
00497e3d  e83e25f7ff                CALL 0x0040a380
00497e42  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00497e48  e987000000                JMP 0x00497ed4
00497e4d  83f801                    CMP EAX,0x1
00497e50  7526                      JNZ 0x00497e78
00497e52  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00497e56  8d4f48                    LEA ECX,[EDI + 0x48]
00497e59  7409                      JZ 0x00497e64
00497e5b  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00497e62  7570                      JNZ 0x00497ed4
00497e64  6a00                      PUSH 0x0
00497e66  681cd9b100                PUSH 0xb1d91c
00497e6b  e81025f7ff                CALL 0x0040a380
00497e70  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00497e76  eb5c                      JMP 0x00497ed4
00497e78  83f802                    CMP EAX,0x2
00497e7b  7557                      JNZ 0x00497ed4
00497e7d  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00497e85  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
00497e8d  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00497e95  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00497e9d  f30f59c0                  MULSS XMM0,XMM0
00497ea1  f30f59c9                  MULSS XMM1,XMM1
00497ea5  f30f58c8                  ADDSS XMM1,XMM0
00497ea9  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
00497eb1  0f2fc1                    COMISS XMM0,XMM1
00497eb4  761e                      JBE 0x00497ed4
00497eb6  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00497ec0  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
00497eca  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00497ed4  6860d5b100                PUSH 0xb1d560
00497ed9  8d4f48                    LEA ECX,[EDI + 0x48]
00497edc  e8af31f7ff                CALL 0x0040b090
00497ee1  84c0                      TEST AL,AL
00497ee3  741d                      JZ 0x00497f02
00497ee5  51                        PUSH ECX
00497ee6  c704240000803f            MOV dword ptr [ESP],0x3f800000
00497eed  6a00                      PUSH 0x0
00497eef  6a02                      PUSH 0x2
00497ef1  51                        PUSH ECX
00497ef2  c704240000803f            MOV dword ptr [ESP],0x3f800000
00497ef9  8bcf                      MOV ECX,EDI
00497efb  6a48                      PUSH 0x48
00497efd  e89eec2300                CALL 0x006d6ba0
00497f02  83bfc00b000001            CMP dword ptr [EDI + 0xbc0],0x1
00497f09  7f15                      JG 0x00497f20
00497f0b  6860d5b100                PUSH 0xb1d560
00497f10  8d4f48                    LEA ECX,[EDI + 0x48]
00497f13  e87831f7ff                CALL 0x0040b090
00497f18  84c0                      TEST AL,AL
00497f1a  0f84770f0000              JZ 0x00498e97
00497f20  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
00497f28  f30f58158ca0ba00          ADDSS XMM2,dword ptr [0x00baa08c]
00497f30  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00497f38  f30f5dd3                  MINSS XMM2,XMM3
00497f3c  f30f5cda                  SUBSS XMM3,XMM2
00497f40  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
00497f48  0f28c2                    MOVAPS XMM0,XMM2
00497f4b  f30f599738030000          MULSS XMM2,dword ptr [EDI + 0x338]
00497f53  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
00497f5b  0f28cb                    MOVAPS XMM1,XMM3
00497f5e  f30f599f40030000          MULSS XMM3,dword ptr [EDI + 0x340]
00497f66  f30f598f3c030000          MULSS XMM1,dword ptr [EDI + 0x33c]
00497f6e  f30f58d3                  ADDSS XMM2,XMM3
00497f72  f30f58c8                  ADDSS XMM1,XMM0
00497f76  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
00497f7e  f30f118f3c030000          MOVSS dword ptr [EDI + 0x33c],XMM1
00497f86  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
00497f90  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00497f9a  e9f80e0000                JMP 0x00498e97
00497f9f  83f807                    CMP EAX,0x7
00497fa2  0f85d6000000              JNZ 0x0049807e
00497fa8  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00497fb2  8d4f48                    LEA ECX,[EDI + 0x48]
00497fb5  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00497fbf  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00497fc5  85c0                      TEST EAX,EAX
00497fc7  7516                      JNZ 0x00497fdf
00497fc9  50                        PUSH EAX
00497fca  689cdeb100                PUSH 0xb1de9c
00497fcf  e8ac23f7ff                CALL 0x0040a380
00497fd4  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00497fda  e9b80e0000                JMP 0x00498e97
00497fdf  83f801                    CMP EAX,0x1
00497fe2  7534                      JNZ 0x00498018
00497fe4  68bcdeb100                PUSH 0xb1debc
00497fe9  e84230f7ff                CALL 0x0040b030
00497fee  84c0                      TEST AL,AL
00497ff0  0f84bafcffff              JZ 0x00497cb0
00497ff6  51                        PUSH ECX
00497ff7  c704240000803f            MOV dword ptr [ESP],0x3f800000
00497ffe  6a00                      PUSH 0x0
00498000  6a02                      PUSH 0x2
00498002  51                        PUSH ECX
00498003  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049800a  8bcf                      MOV ECX,EDI
0049800c  6a45                      PUSH 0x45
0049800e  e88deb2300                CALL 0x006d6ba0
00498013  e998fcffff                JMP 0x00497cb0
00498018  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0049801c  740d                      JZ 0x0049802b
0049801e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00498025  0f856c0e0000              JNZ 0x00498e97
0049802b  85f6                      TEST ESI,ESI
0049802d  7515                      JNZ 0x00498044
0049802f  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
00498035  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0049803f  e9530e0000                JMP 0x00498e97
00498044  83bec00b000002            CMP dword ptr [ESI + 0xbc0],0x2
0049804b  0f85460e0000              JNZ 0x00498e97
00498051  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0049805b  c786c00b000000000000      MOV dword ptr [ESI + 0xbc0],0x0
00498065  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0049806f  c786640b000009000000      MOV dword ptr [ESI + 0xb64],0x9
00498079  e9190e0000                JMP 0x00498e97
0049807e  83f809                    CMP EAX,0x9
00498081  0f85db030000              JNZ 0x00498462
00498087  51                        PUSH ECX
00498088  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049808e  8d873c030000              LEA EAX,[EDI + 0x33c]
00498094  c704247f96184b            MOV dword ptr [ESP],0x4b18967f
0049809b  50                        PUSH EAX
0049809c  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004980a6  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004980b0  e89bb72600                CALL 0x00703850
004980b5  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
004980bd  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
004980c5  85f6                      TEST ESI,ESI
004980c7  7410                      JZ 0x004980d9
004980c9  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
004980d1  f30f109e40030000          MOVSS XMM3,dword ptr [ESI + 0x340]
004980d9  f30f10af3c030000          MOVSS XMM5,dword ptr [EDI + 0x33c]
004980e1  f30f10b740030000          MOVSS XMM6,dword ptr [EDI + 0x340]
004980e9  0f28cd                    MOVAPS XMM1,XMM5
004980ec  0f28c6                    MOVAPS XMM0,XMM6
004980ef  f30f5cca                  SUBSS XMM1,XMM2
004980f3  f30f5cc3                  SUBSS XMM0,XMM3
004980f7  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004980fe  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00498105  0f2fc8                    COMISS XMM1,XMM0
00498108  0f97c0                    SETA AL
0049810b  33d2                      XOR EDX,EDX
0049810d  8844240f                  MOV byte ptr [ESP + 0xf],AL
00498111  8954242c                  MOV dword ptr [ESP + 0x2c],EDX
00498115  84c0                      TEST AL,AL
00498117  740c                      JZ 0x00498125
00498119  0f2fd5                    COMISS XMM2,XMM5
0049811c  761a                      JBE 0x00498138
0049811e  ba02000000                MOV EDX,0x2
00498123  eb0f                      JMP 0x00498134
00498125  33d2                      XOR EDX,EDX
00498127  0f2fde                    COMISS XMM3,XMM6
0049812a  0f97c2                    SETA DL
0049812d  8d145501000000            LEA EDX,[EDX*0x2 + 0x1]
00498134  8954242c                  MOV dword ptr [ESP + 0x2c],EDX
00498138  85d2                      TEST EDX,EDX
0049813a  0f94c0                    SETZ AL
0049813d  888748010000              MOV byte ptr [EDI + 0x148],AL
00498143  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00498149  85c0                      TEST EAX,EAX
0049814b  0f8536010000              JNZ 0x00498287
00498151  50                        PUSH EAX
00498152  ff3495f4dbb100            PUSH dword ptr [EDX*0x4 + 0xb1dbf4]
00498159  8d4f48                    LEA ECX,[EDI + 0x48]
0049815c  e81f22f7ff                CALL 0x0040a380
00498161  8b97fc0b0000              MOV EDX,dword ptr [EDI + 0xbfc]
00498167  8bc2                      MOV EAX,EDX
00498169  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
0049816f  83e203                    AND EDX,0x3
00498172  c1e802                    SHR EAX,0x2
00498175  49                        DEC ECX
00498176  23c8                      AND ECX,EAX
00498178  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
0049817e  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
00498181  833c9000                  CMP dword ptr [EAX + EDX*0x4],0x0
00498185  0f8525fbffff              JNZ 0x00497cb0
0049818b  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
00498193  0f57db                    XORPS XMM3,XMM3
00498196  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0049819e  51                        PUSH ECX
0049819f  8d8c2470010000            LEA ECX,[ESP + 0x170]
004981a6  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004981ad  e83eb7f8ff                CALL 0x004238f0
004981b2  660f6e44242c              MOVD XMM0,dword ptr [ESP + 0x2c]
004981b8  8bf0                      MOV ESI,EAX
004981ba  0f5bc0                    CVTDQ2PS XMM0,XMM0
004981bd  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004981c5  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
004981cd  e86ea51e00                CALL 0x00682740
004981d2  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004981da  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004981e0  e85b53f8ff                CALL 0x0041d540
004981e5  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
004981eb  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
004981f1  e82a53f8ff                CALL 0x0041d520
004981f6  51                        PUSH ECX
004981f7  c7042400000041            MOV dword ptr [ESP],0x41000000
004981fe  8d442414                  LEA EAX,[ESP + 0x14]
00498202  56                        PUSH ESI
00498203  6a2a                      PUSH 0x2a
00498205  50                        PUSH EAX
00498206  8d542434                  LEA EDX,[ESP + 0x34]
0049820a  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00498210  8bcf                      MOV ECX,EDI
00498212  c744243400000000          MOV dword ptr [ESP + 0x34],0x0
0049821a  c7442438000020c2          MOV dword ptr [ESP + 0x38],0xc2200000
00498222  e869361700                CALL 0x0060b890
00498227  8bb7fc0b0000              MOV ESI,dword ptr [EDI + 0xbfc]
0049822d  83c410                    ADD ESP,0x10
00498230  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
00498236  8bd6                      MOV EDX,ESI
00498238  49                        DEC ECX
00498239  c1ea02                    SHR EDX,0x2
0049823c  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
00498240  23d1                      AND EDX,ECX
00498242  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
00498248  83e603                    AND ESI,0x3
0049824b  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
0049824e  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
00498251  8d34b0                    LEA ESI,[EAX + ESI*0x4]
00498254  85c9                      TEST ECX,ECX
00498256  7414                      JZ 0x0049826c
00498258  8d442418                  LEA EAX,[ESP + 0x18]
0049825c  89742418                  MOV dword ptr [ESP + 0x18],ESI
00498260  50                        PUSH EAX
00498261  81c1cc030000              ADD ECX,0x3cc
00498267  e8a46f0300                CALL 0x004cf210
0049826c  8b44242c                  MOV EAX,dword ptr [ESP + 0x2c]
00498270  8906                      MOV dword ptr [ESI],EAX
00498272  85c0                      TEST EAX,EAX
00498274  0f8436faffff              JZ 0x00497cb0
0049827a  56                        PUSH ESI
0049827b  8bc8                      MOV ECX,EAX
0049827d  e86e5a0300                CALL 0x004cdcf0
00498282  e929faffff                JMP 0x00497cb0
00498287  83f801                    CMP EAX,0x1
0049828a  0f8583010000              JNZ 0x00498413
00498290  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00498295  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0049829c  762c                      JBE 0x004982ca
0049829e  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004982a1  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
004982a4  3bc1                      CMP EAX,ECX
004982a6  7422                      JZ 0x004982ca
004982a8  f20f100d18a6ba00          MOVSD XMM1,qword ptr [0x00baa618]
004982b0  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004982b4  0f5ac0                    CVTPS2PD XMM0,XMM0
004982b7  f20f59c1                  MULSD XMM0,XMM1
004982bb  660f5ac0                  CVTPD2PS XMM0,XMM0
004982bf  f30f1100                  MOVSS dword ptr [EAX],XMM0
004982c3  83c038                    ADD EAX,0x38
004982c6  3bc1                      CMP EAX,ECX
004982c8  75e6                      JNZ 0x004982b0
004982ca  6a00                      PUSH 0x0
004982cc  ff3495e4dbb100            PUSH dword ptr [EDX*0x4 + 0xb1dbe4]
004982d3  8d4f48                    LEA ECX,[EDI + 0x48]
004982d6  e8a520f7ff                CALL 0x0040a380
004982db  8b44242c                  MOV EAX,dword ptr [ESP + 0x2c]
004982df  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
004982e7  c74424140000f0c1          MOV dword ptr [ESP + 0x14],0xc1f00000
004982ef  85c0                      TEST EAX,EAX
004982f1  740f                      JZ 0x00498302
004982f3  83f802                    CMP EAX,0x2
004982f6  7512                      JNZ 0x0049830a
004982f8  c744241000000c42          MOV dword ptr [ESP + 0x10],0x420c0000
00498300  eb08                      JMP 0x0049830a
00498302  c744241000000cc2          MOV dword ptr [ESP + 0x10],0xc20c0000
0049830a  660f6ec0                  MOVD XMM0,EAX
0049830e  8d4c2410                  LEA ECX,[ESP + 0x10]
00498312  0f5bc0                    CVTDQ2PS XMM0,XMM0
00498315  6a00                      PUSH 0x0
00498317  57                        PUSH EDI
00498318  51                        PUSH ECX
00498319  6a0f                      PUSH 0xf
0049831b  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00498323  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
0049832b  e810a41e00                CALL 0x00682740
00498330  51                        PUSH ECX
00498331  f30f110424                MOVSS dword ptr [ESP],XMM0
00498336  8d873c030000              LEA EAX,[EDI + 0x33c]
0049833c  50                        PUSH EAX
0049833d  6a06                      PUSH 0x6
0049833f  e8cc6f4d00                CALL 0x0096f310
00498344  83c41c                    ADD ESP,0x1c
00498347  8bc8                      MOV ECX,EAX
00498349  837c242c01                CMP dword ptr [ESP + 0x2c],0x1
0049834e  894c2424                  MOV dword ptr [ESP + 0x24],ECX
00498352  750a                      JNZ 0x0049835e
00498354  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
0049835c  eb08                      JMP 0x00498366
0049835e  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
00498366  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
0049836e  c781d004000000006442      MOV dword ptr [ECX + 0x4d0],0x42640000
00498378  85f6                      TEST ESI,ESI
0049837a  7457                      JZ 0x004983d3
0049837c  807c240f00                CMP byte ptr [ESP + 0xf],0x0
00498381  7421                      JZ 0x004983a4
00498383  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0049838b  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
00498393  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0049839a  f30f5c0554aaba00          SUBSS XMM0,dword ptr [0x00baaa54]
004983a2  eb1f                      JMP 0x004983c3
004983a4  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004983ac  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
004983b4  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004983bb  f30f5c05aca9ba00          SUBSS XMM0,dword ptr [0x00baa9ac]
004983c3  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004983cb  f30f1181d0040000          MOVSS dword ptr [ECX + 0x4d0],XMM0
004983d3  8b01                      MOV EAX,dword ptr [ECX]
004983d5  ff500c                    CALL dword ptr [EAX + 0xc]
004983d8  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004983de  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004983e4  85c9                      TEST ECX,ECX
004983e6  7414                      JZ 0x004983fc
004983e8  8d442418                  LEA EAX,[ESP + 0x18]
004983ec  89742418                  MOV dword ptr [ESP + 0x18],ESI
004983f0  50                        PUSH EAX
004983f1  81c1cc030000              ADD ECX,0x3cc
004983f7  e8146e0300                CALL 0x004cf210
004983fc  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
00498400  56                        PUSH ESI
00498401  890e                      MOV dword ptr [ESI],ECX
00498403  e8e8580300                CALL 0x004cdcf0
00498408  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
0049840e  e9840a0000                JMP 0x00498e97
00498413  83f802                    CMP EAX,0x2
00498416  0f84d2f9ffff              JZ 0x00497dee
0049841c  83f803                    CMP EAX,0x3
0049841f  0f85720a0000              JNZ 0x00498e97
00498425  6a00                      PUSH 0x0
00498427  ff3495d4dbb100            PUSH dword ptr [EDX*0x4 + 0xb1dbd4]
0049842e  8d4f48                    LEA ECX,[EDI + 0x48]
00498431  e84a1ff7ff                CALL 0x0040a380
00498436  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0049843a  740d                      JZ 0x00498449
0049843c  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00498443  0f854e0a0000              JNZ 0x00498e97
00498449  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00498453  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0049845d  e92b0a0000                JMP 0x00498e8d
00498462  83f80b                    CMP EAX,0xb
00498465  0f85f6030000              JNZ 0x00498861
0049846b  8d8f34030000              LEA ECX,[EDI + 0x334]
00498471  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0049847b  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00498485  e8d66d1e00                CALL 0x0067f260
0049848a  8bd0                      MOV EDX,EAX
0049848c  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00498492  89542418                  MOV dword ptr [ESP + 0x18],EDX
00498496  85c0                      TEST EAX,EAX
00498498  0f852f010000              JNZ 0x004985cd
0049849e  85d2                      TEST EDX,EDX
004984a0  50                        PUSH EAX
004984a1  ff3495f4dbb100            PUSH dword ptr [EDX*0x4 + 0xb1dbf4]
004984a8  0f94c1                    SETZ CL
004984ab  888f48010000              MOV byte ptr [EDI + 0x148],CL
004984b1  8d4f48                    LEA ECX,[EDI + 0x48]
004984b4  e8c71ef7ff                CALL 0x0040a380
004984b9  8b97fc0b0000              MOV EDX,dword ptr [EDI + 0xbfc]
004984bf  8bc2                      MOV EAX,EDX
004984c1  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
004984c7  83e203                    AND EDX,0x3
004984ca  c1e802                    SHR EAX,0x2
004984cd  49                        DEC ECX
004984ce  23c8                      AND ECX,EAX
004984d0  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004984d6  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
004984d9  833c9000                  CMP dword ptr [EAX + EDX*0x4],0x0
004984dd  0f85cdf7ffff              JNZ 0x00497cb0
004984e3  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
004984eb  0f57db                    XORPS XMM3,XMM3
004984ee  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
004984f6  51                        PUSH ECX
004984f7  8d8c249c010000            LEA ECX,[ESP + 0x19c]
004984fe  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00498505  e8e6b3f8ff                CALL 0x004238f0
0049850a  660f6e442418              MOVD XMM0,dword ptr [ESP + 0x18]
00498510  8bf0                      MOV ESI,EAX
00498512  0f5bc0                    CVTDQ2PS XMM0,XMM0
00498515  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
0049851d  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
00498525  e816a21e00                CALL 0x00682740
0049852a  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00498532  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00498538  e80350f8ff                CALL 0x0041d540
0049853d  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00498543  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
00498549  e8d24ff8ff                CALL 0x0041d520
0049854e  51                        PUSH ECX
0049854f  c7042400000041            MOV dword ptr [ESP],0x41000000
00498556  8d442414                  LEA EAX,[ESP + 0x14]
0049855a  56                        PUSH ESI
0049855b  6a2a                      PUSH 0x2a
0049855d  50                        PUSH EAX
0049855e  8d542434                  LEA EDX,[ESP + 0x34]
00498562  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
00498568  8bcf                      MOV ECX,EDI
0049856a  c744243400000000          MOV dword ptr [ESP + 0x34],0x0
00498572  c7442438000020c2          MOV dword ptr [ESP + 0x38],0xc2200000
0049857a  e811331700                CALL 0x0060b890
0049857f  8bb7fc0b0000              MOV ESI,dword ptr [EDI + 0xbfc]
00498585  83c410                    ADD ESP,0x10
00498588  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
0049858e  8bd6                      MOV EDX,ESI
00498590  49                        DEC ECX
00498591  c1ea02                    SHR EDX,0x2
00498594  89442418                  MOV dword ptr [ESP + 0x18],EAX
00498598  23d1                      AND EDX,ECX
0049859a  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
004985a0  83e603                    AND ESI,0x3
004985a3  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
004985a6  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
004985a9  8d34b0                    LEA ESI,[EAX + ESI*0x4]
004985ac  85c9                      TEST ECX,ECX
004985ae  7414                      JZ 0x004985c4
004985b0  8d442424                  LEA EAX,[ESP + 0x24]
004985b4  89742424                  MOV dword ptr [ESP + 0x24],ESI
004985b8  50                        PUSH EAX
004985b9  81c1cc030000              ADD ECX,0x3cc
004985bf  e84c6c0300                CALL 0x004cf210
004985c4  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
004985c8  e9a3fcffff                JMP 0x00498270
004985cd  83f801                    CMP EAX,0x1
004985d0  0f8523010000              JNZ 0x004986f9
004985d6  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
004985db  0f2fc6                    COMISS XMM0,XMM6
004985de  762c                      JBE 0x0049860c
004985e0  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004985e3  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
004985e6  3bc1                      CMP EAX,ECX
004985e8  7422                      JZ 0x0049860c
004985ea  f20f100d18a6ba00          MOVSD XMM1,qword ptr [0x00baa618]
004985f2  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004985f6  0f5ac0                    CVTPS2PD XMM0,XMM0
004985f9  f20f59c1                  MULSD XMM0,XMM1
004985fd  660f5ac0                  CVTPD2PS XMM0,XMM0
00498601  f30f1100                  MOVSS dword ptr [EAX],XMM0
00498605  83c038                    ADD EAX,0x38
00498608  3bc1                      CMP EAX,ECX
0049860a  75e6                      JNZ 0x004985f2
0049860c  6a00                      PUSH 0x0
0049860e  ff3495e4dbb100            PUSH dword ptr [EDX*0x4 + 0xb1dbe4]
00498615  8d4f48                    LEA ECX,[EDI + 0x48]
00498618  e8631df7ff                CALL 0x0040a380
0049861d  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
00498621  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
00498629  c74424140000f0c1          MOV dword ptr [ESP + 0x14],0xc1f00000
00498631  85f6                      TEST ESI,ESI
00498633  740f                      JZ 0x00498644
00498635  83fe02                    CMP ESI,0x2
00498638  7512                      JNZ 0x0049864c
0049863a  c744241000000c42          MOV dword ptr [ESP + 0x10],0x420c0000
00498642  eb08                      JMP 0x0049864c
00498644  c744241000000cc2          MOV dword ptr [ESP + 0x10],0xc20c0000
0049864c  660f6ec6                  MOVD XMM0,ESI
00498650  8d442410                  LEA EAX,[ESP + 0x10]
00498654  0f5bc0                    CVTDQ2PS XMM0,XMM0
00498657  6a00                      PUSH 0x0
00498659  57                        PUSH EDI
0049865a  50                        PUSH EAX
0049865b  6a3c                      PUSH 0x3c
0049865d  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00498665  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
0049866d  e8cea01e00                CALL 0x00682740
00498672  51                        PUSH ECX
00498673  f30f110424                MOVSS dword ptr [ESP],XMM0
00498678  8d873c030000              LEA EAX,[EDI + 0x33c]
0049867e  50                        PUSH EAX
0049867f  6a06                      PUSH 0x6
00498681  e88a6c4d00                CALL 0x0096f310
00498686  83c41c                    ADD ESP,0x1c
00498689  8bc8                      MOV ECX,EAX
0049868b  894c2418                  MOV dword ptr [ESP + 0x18],ECX
0049868f  83fe01                    CMP ESI,0x1
00498692  750a                      JNZ 0x0049869e
00498694  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
0049869c  eb08                      JMP 0x004986a6
0049869e  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
004986a6  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
004986ae  8b01                      MOV EAX,dword ptr [ECX]
004986b0  ff500c                    CALL dword ptr [EAX + 0xc]
004986b3  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
004986b9  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004986bf  85c9                      TEST ECX,ECX
004986c1  7414                      JZ 0x004986d7
004986c3  8d442424                  LEA EAX,[ESP + 0x24]
004986c7  89742424                  MOV dword ptr [ESP + 0x24],ESI
004986cb  50                        PUSH EAX
004986cc  81c1cc030000              ADD ECX,0x3cc
004986d2  e8396b0300                CALL 0x004cf210
004986d7  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
004986db  56                        PUSH ESI
004986dc  890e                      MOV dword ptr [ESI],ECX
004986de  e80d560300                CALL 0x004cdcf0
004986e3  e878682500                CALL 0x006eef60
004986e8  83e001                    AND EAX,0x1
004986eb  83c002                    ADD EAX,0x2
004986ee  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
004986f4  e99e070000                JMP 0x00498e97
004986f9  83f804                    CMP EAX,0x4
004986fc  0f8d0bf7ffff              JGE 0x00497e0d
00498702  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
00498708  85c9                      TEST ECX,ECX
0049870a  0f8442010000              JZ 0x00498852
00498710  83f803                    CMP EAX,0x3
00498713  750a                      JNZ 0x0049871f
00498715  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0049871d  eb08                      JMP 0x00498727
0049871f  f30f100574adba00          MOVSS XMM0,dword ptr [0x00baad74]
00498727  6a00                      PUSH 0x0
00498729  6840d7c500                PUSH 0xc5d740
0049872e  68dcd5c500                PUSH 0xc5d5dc
00498733  6a00                      PUSH 0x0
00498735  51                        PUSH ECX
00498736  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
0049873c  e870816500                CALL 0x00af08b1
00498741  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
00498749  8bf0                      MOV ESI,EAX
0049874b  0f57c9                    XORPS XMM1,XMM1
0049874e  83c414                    ADD ESP,0x14
00498751  f30f10861c040000          MOVSS XMM0,dword ptr [ESI + 0x41c]
00498759  0f2fc8                    COMISS XMM1,XMM0
0049875c  7604                      JBE 0x00498762
0049875e  f30f58c3                  ADDSS XMM0,XMM3
00498762  f30f104c242c              MOVSS XMM1,dword ptr [ESP + 0x2c]
00498768  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
0049876c  f30f58c8                  ADDSS XMM1,XMM0
00498770  f30f101578aaba00          MOVSS XMM2,dword ptr [0x00baaa78]
00498778  83f803                    CMP EAX,0x3
0049877b  0f87ae000000              JA 0x0049882f
00498781  ff2485708f4900            JMP dword ptr [EAX*0x4 + 0x498f70]
0049882f  0f2fca                    COMISS XMM1,XMM2
00498832  7604                      JBE 0x00498838
00498834  f30f5ccb                  SUBSS XMM1,XMM3
00498838  0f28c1                    MOVAPS XMM0,XMM1
0049883b  e8009f1e00                CALL 0x00682740
00498840  51                        PUSH ECX
00498841  8bce                      MOV ECX,ESI
00498843  f30f110424                MOVSS dword ptr [ESP],XMM0
00498848  e843464d00                CALL 0x0096ce90
0049884d  e945060000                JMP 0x00498e97
00498852  c787c00b000004000000      MOV dword ptr [EDI + 0xbc0],0x4
0049885c  e936060000                JMP 0x00498e97
00498861  83f80c                    CMP EAX,0xc
00498864  0f852d060000              JNZ 0x00498e97
0049886a  8d8f34030000              LEA ECX,[EDI + 0x334]
00498870  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0049887a  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00498884  e8d7691e00                CALL 0x0067f260
00498889  8b8fc00b0000              MOV ECX,dword ptr [EDI + 0xbc0]
0049888f  89442424                  MOV dword ptr [ESP + 0x24],EAX
00498893  85c9                      TEST ECX,ECX
00498895  0f8585000000              JNZ 0x00498920
0049889b  85c0                      TEST EAX,EAX
0049889d  6a00                      PUSH 0x0
0049889f  ff3485f4dbb100            PUSH dword ptr [EAX*0x4 + 0xb1dbf4]
004988a6  0f94c1                    SETZ CL
004988a9  888f48010000              MOV byte ptr [EDI + 0x148],CL
004988af  8d4f48                    LEA ECX,[EDI + 0x48]
004988b2  e8c91af7ff                CALL 0x0040a380
004988b7  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004988bb  740d                      JZ 0x004988ca
004988bd  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004988c4  0f85cd050000              JNZ 0x00498e97
004988ca  51                        PUSH ECX
004988cb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004988d2  6a00                      PUSH 0x0
004988d4  6a02                      PUSH 0x2
004988d6  51                        PUSH ECX
004988d7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004988de  8bcf                      MOV ECX,EDI
004988e0  6a10                      PUSH 0x10
004988e2  e8b9e22300                CALL 0x006d6ba0
004988e7  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
004988ed  e86e662500                CALL 0x006eef60
004988f2  33d2                      XOR EDX,EDX
004988f4  b964000000                MOV ECX,0x64
004988f9  f7f1                      DIV ECX
004988fb  660f6ec2                  MOVD XMM0,EDX
004988ff  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00498903  c1ea1f                    SHR EDX,0x1f
00498906  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
0049890f  660f5ac0                  CVTPD2PS XMM0,XMM0
00498913  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0049891b  e977050000                JMP 0x00498e97
00498920  83f901                    CMP ECX,0x1
00498923  0f85d8010000              JNZ 0x00498b01
00498929  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
0049892f  33c9                      XOR ECX,ECX
00498931  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00498939  46                        INC ESI
0049893a  f30f100de4a8ba00          MOVSS XMM1,dword ptr [0x00baa8e4]
00498942  89b710040000              MOV dword ptr [EDI + 0x410],ESI
00498948  398fc40b0000              CMP dword ptr [EDI + 0xbc4],ECX
0049894e  0f94c1                    SETZ CL
00498951  0f2fc8                    COMISS XMM1,XMM0
00498954  8d0c4d05000000            LEA ECX,[ECX*0x2 + 0x5]
0049895b  7605                      JBE 0x00498962
0049895d  83c102                    ADD ECX,0x2
00498960  eb0e                      JMP 0x00498970
00498962  f30f100d6ca9ba00          MOVSS XMM1,dword ptr [0x00baa96c]
0049896a  0f2fc8                    COMISS XMM1,XMM0
0049896d  7601                      JBE 0x00498970
0049896f  41                        INC ECX
00498970  8bc6                      MOV EAX,ESI
00498972  99                        CDQ
00498973  f7f9                      IDIV ECX
00498975  85d2                      TEST EDX,EDX
00498977  0f8570010000              JNZ 0x00498aed
0049897d  f30f1005a4a7ba00          MOVSS XMM0,dword ptr [0x00baa7a4]
00498985  3997c40b0000              CMP dword ptr [EDI + 0xbc4],EDX
0049898b  7408                      JZ 0x00498995
0049898d  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
00498995  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
00498999  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
004989a1  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
004989a9  83f801                    CMP EAX,0x1
004989ac  7532                      JNZ 0x004989e0
004989ae  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
004989b5  8d8c24c0000000            LEA ECX,[ESP + 0xc0]
004989bc  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
004989c2  e86965faff                CALL 0x0043ef30
004989c7  0f57c0                    XORPS XMM0,XMM0
004989ca  c7842450010000000020c1    MOV dword ptr [ESP + 0x150],0xc1200000
004989d5  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
004989db  e96f000000                JMP 0x00498a4f
004989e0  83f803                    CMP EAX,0x3
004989e3  7511                      JNZ 0x004989f6
004989e5  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
004989eb  0f28c6                    MOVAPS XMM0,XMM6
004989ee  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
004989f4  eb42                      JMP 0x00498a38
004989f6  85c0                      TEST EAX,EAX
004989f8  751d                      JNZ 0x00498a17
004989fa  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00498a01  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00498a07  f30f100514aeba00          MOVSS XMM0,dword ptr [0x00baae14]
00498a0f  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00498a15  eb21                      JMP 0x00498a38
00498a17  83f802                    CMP EAX,0x2
00498a1a  7516                      JNZ 0x00498a32
00498a1c  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00498a22  f30f1005d0a8ba00          MOVSS XMM0,dword ptr [0x00baa8d0]
00498a2a  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
00498a30  eb06                      JMP 0x00498a38
00498a32  f30f1174242c              MOVSS dword ptr [ESP + 0x2c],XMM6
00498a38  8d8c24c0000000            LEA ECX,[ESP + 0xc0]
00498a3f  e8ec64faff                CALL 0x0043ef30
00498a44  c784245001000000803b45    MOV dword ptr [ESP + 0x150],0x453b8000
00498a4f  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00498a57  be04000000                MOV ESI,0x4
00498a5c  f30f100de4a8ba00          MOVSS XMM1,dword ptr [0x00baa8e4]
00498a64  0f2fc8                    COMISS XMM1,XMM0
00498a67  7607                      JBE 0x00498a70
00498a69  be01000000                MOV ESI,0x1
00498a6e  eb13                      JMP 0x00498a83
00498a70  f30f100d6ca9ba00          MOVSS XMM1,dword ptr [0x00baa96c]
00498a78  b803000000                MOV EAX,0x3
00498a7d  0f2fc8                    COMISS XMM1,XMM0
00498a80  0f47f0                    CMOVA ESI,EAX
00498a83  51                        PUSH ECX
00498a84  c704240000803f            MOV dword ptr [ESP],0x3f800000
00498a8b  6a00                      PUSH 0x0
00498a8d  6a02                      PUSH 0x2
00498a8f  51                        PUSH ECX
00498a90  c704240000803f            MOV dword ptr [ESP],0x3f800000
00498a97  8bcf                      MOV ECX,EDI
00498a99  68b2000000                PUSH 0xb2
00498a9e  e8fde02300                CALL 0x006d6ba0
00498aa3  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
00498aa9  8d8424c0000000            LEA EAX,[ESP + 0xc0]
00498ab0  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00498ab8  50                        PUSH EAX
00498ab9  56                        PUSH ESI
00498aba  8d442418                  LEA EAX,[ESP + 0x18]
00498abe  8bcf                      MOV ECX,EDI
00498ac0  50                        PUSH EAX
00498ac1  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00498ac7  8d442430                  LEA EAX,[ESP + 0x30]
00498acb  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00498ad3  f30f5c0554a8ba00          SUBSS XMM0,dword ptr [0x00baa854]
00498adb  50                        PUSH EAX
00498adc  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00498ae2  e8f9272300                CALL 0x006cb2e0
00498ae7  8bb710040000              MOV ESI,dword ptr [EDI + 0x410]
00498aed  83fe1e                    CMP ESI,0x1e
00498af0  0f8ea1030000              JLE 0x00498e97
00498af6  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00498afc  e996030000                JMP 0x00498e97
00498b01  83f902                    CMP ECX,0x2
00498b04  0f858d030000              JNZ 0x00498e97
00498b0a  6a00                      PUSH 0x0
00498b0c  ff3485d4dbb100            PUSH dword ptr [EAX*0x4 + 0xb1dbd4]
00498b13  8d4f48                    LEA ECX,[EDI + 0x48]
00498b16  e86518f7ff                CALL 0x0040a380
00498b1b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00498b1f  740d                      JZ 0x00498b2e
00498b21  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00498b28  0f8569030000              JNZ 0x00498e97
00498b2e  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00498b38  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00498b42  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00498b4c  85f6                      TEST ESI,ESI
00498b4e  0f8443030000              JZ 0x00498e97
00498b54  c786640b000003000000      MOV dword ptr [ESI + 0xb64],0x3
00498b5e  c786c00b000000000000      MOV dword ptr [ESI + 0xbc0],0x0
00498b68  c7861004000000000000      MOV dword ptr [ESI + 0x410],0x0
00498b72  e920030000                JMP 0x00498e97
00498b77  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00498b81  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
00498b8b  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00498b8e  85f6                      TEST ESI,ESI
00498b90  744a                      JZ 0x00498bdc
00498b92  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00498b96  8bc6                      MOV EAX,ESI
00498b98  7202                      JC 0x00498b9c
00498b9a  8b06                      MOV EAX,dword ptr [ESI]
00498b9c  b9ccd2b100                MOV ECX,0xb1d2cc
00498ba1  8a10                      MOV DL,byte ptr [EAX]
00498ba3  3a11                      CMP DL,byte ptr [ECX]
00498ba5  751a                      JNZ 0x00498bc1
00498ba7  84d2                      TEST DL,DL
00498ba9  7412                      JZ 0x00498bbd
00498bab  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00498bae  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00498bb1  750e                      JNZ 0x00498bc1
00498bb3  83c002                    ADD EAX,0x2
00498bb6  83c102                    ADD ECX,0x2
00498bb9  84d2                      TEST DL,DL
00498bbb  75e4                      JNZ 0x00498ba1
00498bbd  33c0                      XOR EAX,EAX
00498bbf  eb05                      JMP 0x00498bc6
00498bc1  1bc0                      SBB EAX,EAX
00498bc3  83c801                    OR EAX,0x1
00498bc6  85c0                      TEST EAX,EAX
00498bc8  7512                      JNZ 0x00498bdc
00498bca  384634                    CMP byte ptr [ESI + 0x34],AL
00498bcd  742e                      JZ 0x00498bfd
00498bcf  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00498bd5  8d7748                    LEA ESI,[EDI + 0x48]
00498bd8  7523                      JNZ 0x00498bfd
00498bda  eb03                      JMP 0x00498bdf
00498bdc  8d7748                    LEA ESI,[EDI + 0x48]
00498bdf  6a01                      PUSH 0x1
00498be1  68ccd2b100                PUSH 0xb1d2cc
00498be6  8bce                      MOV ECX,ESI
00498be8  e8e319f7ff                CALL 0x0040a5d0
00498bed  84c0                      TEST AL,AL
00498bef  740c                      JZ 0x00498bfd
00498bf1  8d4e30                    LEA ECX,[ESI + 0x30]
00498bf4  e8b715f7ff                CALL 0x0040a1b0
00498bf9  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00498bfd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00498c01  0f847c020000              JZ 0x00498e83
00498c07  68dcd2b100                PUSH 0xb1d2dc
00498c0c  8d4f78                    LEA ECX,[EDI + 0x78]
00498c0f  e8bc21f7ff                CALL 0x0040add0
00498c14  84c0                      TEST AL,AL
00498c16  0f8458020000              JZ 0x00498e74
00498c1c  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00498c22  83f80d                    CMP EAX,0xd
00498c25  7450                      JZ 0x00498c77
00498c27  83f80e                    CMP EAX,0xe
00498c2a  0f8544020000              JNZ 0x00498e74
00498c30  e82b632500                CALL 0x006eef60
00498c35  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00498c3d  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00498c45  6a00                      PUSH 0x0
00498c47  50                        PUSH EAX
00498c48  6a00                      PUSH 0x0
00498c4a  57                        PUSH EDI
00498c4b  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00498c51  8d442420                  LEA EAX,[ESP + 0x20]
00498c55  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00498c5d  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
00498c65  50                        PUSH EAX
00498c66  8d442438                  LEA EAX,[ESP + 0x38]
00498c6a  50                        PUSH EAX
00498c6b  6a00                      PUSH 0x0
00498c6d  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
00498c73  6a27                      PUSH 0x27
00498c75  eb48                      JMP 0x00498cbf
00498c77  e8e4622500                CALL 0x006eef60
00498c7c  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00498c84  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00498c8c  6a00                      PUSH 0x0
00498c8e  50                        PUSH EAX
00498c8f  6a00                      PUSH 0x0
00498c91  57                        PUSH EDI
00498c92  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
00498c98  8d442420                  LEA EAX,[ESP + 0x20]
00498c9c  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00498ca4  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
00498cac  50                        PUSH EAX
00498cad  8d44242c                  LEA EAX,[ESP + 0x2c]
00498cb1  50                        PUSH EAX
00498cb2  6a00                      PUSH 0x0
00498cb4  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
00498cba  68fb000000                PUSH 0xfb
00498cbf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00498cc5  c744243000000000          MOV dword ptr [ESP + 0x30],0x0
00498ccd  c74424340000a040          MOV dword ptr [ESP + 0x34],0x40a00000
00498cd5  e836572600                CALL 0x006fe410
00498cda  6a00                      PUSH 0x0
00498cdc  68acd6c500                PUSH 0xc5d6ac
00498ce1  68dcd5c500                PUSH 0xc5d5dc
00498ce6  6a00                      PUSH 0x0
00498ce8  50                        PUSH EAX
00498ce9  e8c37b6500                CALL 0x00af08b1
00498cee  8bc8                      MOV ECX,EAX
00498cf0  83c414                    ADD ESP,0x14
00498cf3  8b01                      MOV EAX,dword ptr [ECX]
00498cf5  ff500c                    CALL dword ptr [EAX + 0xc]
00498cf8  51                        PUSH ECX
00498cf9  c704240000803f            MOV dword ptr [ESP],0x3f800000
00498d00  6a00                      PUSH 0x0
00498d02  6a02                      PUSH 0x2
00498d04  51                        PUSH ECX
00498d05  c704240000803f            MOV dword ptr [ESP],0x3f800000
00498d0c  8bcf                      MOV ECX,EDI
00498d0e  683a010000                PUSH 0x13a
00498d13  e888de2300                CALL 0x006d6ba0
00498d18  e843622500                CALL 0x006eef60
00498d1d  33d2                      XOR EDX,EDX
00498d1f  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
00498d27  b903000000                MOV ECX,0x3
00498d2c  f7f1                      DIV ECX
00498d2e  8d4202                    LEA EAX,[EDX + 0x2]
00498d31  89442424                  MOV dword ptr [ESP + 0x24],EAX
00498d35  85c0                      TEST EAX,EAX
00498d37  0f8e37010000              JLE 0x00498e74
00498d3d  0f1f00                    NOP dword ptr [EAX]
00498d40  e81b622500                CALL 0x006eef60
00498d45  51                        PUSH ECX
00498d46  8bcf                      MOV ECX,EDI
00498d48  660f6ec0                  MOVD XMM0,EAX
00498d4c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00498d50  c1e81f                    SHR EAX,0x1f
00498d53  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00498d5c  660f5ac0                  CVTPD2PS XMM0,XMM0
00498d60  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00498d68  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00498d70  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00498d78  f30f110424                MOVSS dword ptr [ESP],XMM0
00498d7d  e84ed72100                CALL 0x006b64d0
00498d82  837c241800                CMP dword ptr [ESP + 0x18],0x0
00498d87  8bf0                      MOV ESI,EAX
00498d89  7522                      JNZ 0x00498dad
00498d8b  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00498d93  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00498d9b  f30f580d7ca8ba00          ADDSS XMM1,dword ptr [0x00baa87c]
00498da3  f30f5805e49fba00          ADDSS XMM0,dword ptr [0x00ba9fe4]
00498dab  eb48                      JMP 0x00498df5
00498dad  e8ae612500                CALL 0x006eef60
00498db2  660f6ec0                  MOVD XMM0,EAX
00498db6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00498dba  c1e81f                    SHR EAX,0x1f
00498dbd  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00498dc6  660f5ac0                  CVTPD2PS XMM0,XMM0
00498dca  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00498dd2  0f28c8                    MOVAPS XMM1,XMM0
00498dd5  f30f5905e49fba00          MULSS XMM0,dword ptr [0x00ba9fe4]
00498ddd  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
00498de5  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00498ded  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00498df5  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
00498dfd  8d8c2494000000            LEA ECX,[ESP + 0x94]
00498e04  6a01                      PUSH 0x1
00498e06  f30f118e40030000          MOVSS dword ptr [ESI + 0x340],XMM1
00498e0e  0f57c0                    XORPS XMM0,XMM0
00498e11  8b06                      MOV EAX,dword ptr [ESI]
00498e13  6a00                      PUSH 0x0
00498e15  68ff000000                PUSH 0xff
00498e1a  6aff                      PUSH -0x1
00498e1c  0f118424b4000000          MOVUPS xmmword ptr [ESP + 0xb4],XMM0
00498e24  51                        PUSH ECX
00498e25  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00498e2c  8bce                      MOV ECX,ESI
00498e2e  0f118424a8000000          MOVUPS xmmword ptr [ESP + 0xa8],XMM0
00498e36  c78424c80000003d0ad73e    MOV dword ptr [ESP + 0xc8],0x3ed70a3d
00498e41  c78424cc000000f628dc3e    MOV dword ptr [ESP + 0xcc],0x3edc28f6
00498e4c  c78424d00000003333b33e    MOV dword ptr [ESP + 0xd0],0x3eb33333
00498e57  ff503c                    CALL dword ptr [EAX + 0x3c]
00498e5a  8b06                      MOV EAX,dword ptr [ESI]
00498e5c  8bce                      MOV ECX,ESI
00498e5e  ff500c                    CALL dword ptr [EAX + 0xc]
00498e61  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
00498e65  40                        INC EAX
00498e66  89442418                  MOV dword ptr [ESP + 0x18],EAX
00498e6a  3b442424                  CMP EAX,dword ptr [ESP + 0x24]
00498e6e  0f8cccfeffff              JL 0x00498d40
00498e74  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00498e78  7409                      JZ 0x00498e83
00498e7a  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00498e81  7514                      JNZ 0x00498e97
00498e83  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00498e8d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00498e97  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00498e9d  83f80a                    CMP EAX,0xa
00498ea0  7435                      JZ 0x00498ed7
00498ea2  83f809                    CMP EAX,0x9
00498ea5  7430                      JZ 0x00498ed7
00498ea7  83f80b                    CMP EAX,0xb
00498eaa  742b                      JZ 0x00498ed7
00498eac  83f80c                    CMP EAX,0xc
00498eaf  7426                      JZ 0x00498ed7
00498eb1  8bcf                      MOV ECX,EDI
00498eb3  e888592200                CALL 0x006be840
00498eb8  0f57c9                    XORPS XMM1,XMM1
00498ebb  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00498ec3  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00498ecb  0f2fc8                    COMISS XMM1,XMM0
00498ece  0f97c0                    SETA AL
00498ed1  888748010000              MOV byte ptr [EDI + 0x148],AL
00498ed7  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00498edb  7455                      JZ 0x00498f32
00498edd  6894dbb100                PUSH 0xb1db94
00498ee2  8d4f78                    LEA ECX,[EDI + 0x78]
00498ee5  e8e61ef7ff                CALL 0x0040add0
00498eea  84c0                      TEST AL,AL
00498eec  7444                      JZ 0x00498f32
00498eee  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00498ef4  8d4c2418                  LEA ECX,[ESP + 0x18]
00498ef8  c7442418c0030000          MOV dword ptr [ESP + 0x18],0x3c0
00498f00  e87bd84b00                CALL 0x00956780
00498f05  83ec08                    SUB ESP,0x8
00498f08  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00498f10  c704240000803f            MOV dword ptr [ESP],0x3f800000
00498f17  6a00                      PUSH 0x0
00498f19  6a02                      PUSH 0x2
00498f1b  51                        PUSH ECX
00498f1c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00498f23  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00498f29  ff74242c                  PUSH dword ptr [ESP + 0x2c]
00498f2d  e8fe4c4900                CALL 0x0092dc30
00498f32  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00498f3a  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00498f42  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00498f4a  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
00498f50  85c0                      TEST EAX,EAX
00498f52  7e07                      JLE 0x00498f5b
00498f54  48                        DEC EAX
00498f55  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
00498f5b  8b8c24c4010000            MOV ECX,dword ptr [ESP + 0x1c4]
00498f62  5f                        POP EDI
00498f63  5e                        POP ESI
00498f64  33cc                      XOR ECX,ESP
00498f66  e8c0616500                CALL 0x00aef12b
00498f6b  8be5                      MOV ESP,EBP
00498f6d  5d                        POP EBP
00498f6e  c3                        RET
