; J460 NPC AI 0x00545f70 AI_00545f70
; types=308
; identities=308.0.0
; entry=00545f70
00545f70  53                        PUSH EBX
00545f71  8bdc                      MOV EBX,ESP
00545f73  83ec08                    SUB ESP,0x8
00545f76  83e4f8                    AND ESP,0xfffffff8
00545f79  83c404                    ADD ESP,0x4
00545f7c  55                        PUSH EBP
00545f7d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00545f80  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00545f84  8bec                      MOV EBP,ESP
00545f86  6aff                      PUSH -0x1
00545f88  68f048af00                PUSH 0xaf48f0
00545f8d  64a100000000              MOV EAX,FS:[0x0]
00545f93  50                        PUSH EAX
00545f94  53                        PUSH EBX
00545f95  81ec78010000              SUB ESP,0x178
00545f9b  a1b493bf00                MOV EAX,[0x00bf93b4]
00545fa0  33c5                      XOR EAX,EBP
00545fa2  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00545fa5  56                        PUSH ESI
00545fa6  57                        PUSH EDI
00545fa7  50                        PUSH EAX
00545fa8  8d45f4                    LEA EAX,[EBP + -0xc]
00545fab  64a300000000              MOV FS:[0x0],EAX
00545fb1  8bf9                      MOV EDI,ECX
00545fb3  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00545fb9  85c0                      TEST EAX,EAX
00545fbb  7418                      JZ 0x00545fd5
00545fbd  39b8c0030000              CMP dword ptr [EAX + 0x3c0],EDI
00545fc3  7410                      JZ 0x00545fd5
00545fc5  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00545fcc  c6853fffffff01            MOV byte ptr [EBP + 0xffffff3f],0x1
00545fd3  7407                      JZ 0x00545fdc
00545fd5  c6853fffffff00            MOV byte ptr [EBP + 0xffffff3f],0x0
00545fdc  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00545fe3  7519                      JNZ 0x00545ffe
00545fe5  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00545fef  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00545ff9  e924100000                JMP 0x00547022
00545ffe  e83d881700                CALL 0x006be840
00546003  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00546009  8bf0                      MOV ESI,EAX
0054600b  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00546013  89b514ffffff              MOV dword ptr [EBP + 0xffffff14],ESI
00546019  83f904                    CMP ECX,0x4
0054601c  0f855d070000              JNZ 0x0054677f
00546022  6a00                      PUSH 0x0
00546024  8d4f48                    LEA ECX,[EDI + 0x48]
00546027  6854bcb100                PUSH 0xb1bc54
0054602c  e84f43ecff                CALL 0x0040a380
00546031  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
00546038  0f858e050000              JNZ 0x005465cc
0054603e  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
00546044  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
0054604c  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
00546052  a174f6b100                MOV EAX,[0x00b1f674]
00546057  51                        PUSH ECX
00546058  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
0054605e  8bcf                      MOV ECX,EDI
00546060  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00546066  c7042400000000            MOV dword ptr [ESP],0x0
0054606d  50                        PUSH EAX
0054606e  660fd685f4feffff          MOVQ qword ptr [EBP + 0xfffffef4],XMM0
00546076  e8c58b1700                CALL 0x006bec40
0054607b  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
00546081  85f6                      TEST ESI,ESI
00546083  746c                      JZ 0x005460f1
00546085  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
0054608d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00546095  f30f109524ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff24]
0054609d  f30f5cc8                  SUBSS XMM1,XMM0
005460a1  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
005460a9  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005460b1  f30f5cc2                  SUBSS XMM0,XMM2
005460b5  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
005460bd  f30f59c9                  MULSS XMM1,XMM1
005460c1  f30f59c0                  MULSS XMM0,XMM0
005460c5  f30f58c1                  ADDSS XMM0,XMM1
005460c9  e882f9eeff                CALL 0x00435a50
005460ce  0f2f05d4aaba00            COMISS XMM0,dword ptr [0x00baaad4]
005460d5  763a                      JBE 0x00546111
005460d7  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
005460df  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
005460e7  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
005460ef  eb18                      JMP 0x00546109
005460f1  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
005460f9  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
00546101  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
00546109  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00546111  8bb534ffffff              MOV ESI,dword ptr [EBP + 0xffffff34]
00546117  85f6                      TEST ESI,ESI
00546119  7510                      JNZ 0x0054612b
0054611b  6854bfb600                PUSH 0xb6bf54
00546120  6a10                      PUSH 0x10
00546122  e899b14c00                CALL 0x00a112c0
00546127  83c408                    ADD ESP,0x8
0054612a  cc                        INT3
0054612b  8b8df4feffff              MOV ECX,dword ptr [EBP + 0xfffffef4]
00546131  8bd6                      MOV EDX,ESI
00546133  d3ea                      SHR EDX,CL
00546135  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
0054613b  33d6                      XOR EDX,ESI
0054613d  8bc2                      MOV EAX,EDX
0054613f  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00546147  d3e0                      SHL EAX,CL
00546149  8b8d0cffffff              MOV ECX,dword ptr [EBP + 0xffffff0c]
0054614f  33c2                      XOR EAX,EDX
00546151  8bd0                      MOV EDX,EAX
00546153  d3ea                      SHR EDX,CL
00546155  33d0                      XOR EDX,EAX
00546157  f30f5c8d38ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff38]
0054615f  660f6ec2                  MOVD XMM0,EDX
00546163  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00546167  c1ea1f                    SHR EDX,0x1f
0054616a  f30f59c9                  MULSS XMM1,XMM1
0054616e  f20f5804d500cbba00        ADDSD XMM0,qword ptr [EDX*0x8 + 0xbacb00]
00546177  660f5ac0                  CVTPD2PS XMM0,XMM0
0054617b  f30f5905f09fba00          MULSS XMM0,dword ptr [0x00ba9ff0]
00546183  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0054618b  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00546193  f30f5c8530ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff30]
0054619b  f30f59c0                  MULSS XMM0,XMM0
0054619f  f30f58c1                  ADDSS XMM0,XMM1
005461a3  e8a8f8eeff                CALL 0x00435a50
005461a8  f30f5c0594aaba00          SUBSS XMM0,dword ptr [0x00baaa94]
005461b0  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
005461b8  f30f109538ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff38]
005461c0  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
005461c8  f30f5e05b0abba00          DIVSS XMM0,dword ptr [0x00baabb0]
005461d0  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
005461d8  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
005461e0  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
005461e8  f30f59c1                  MULSS XMM0,XMM1
005461ec  f30f5cc8                  SUBSS XMM1,XMM0
005461f0  f30f118d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM1
005461f8  f30f108d30ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff30]
00546200  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00546208  0f28c1                    MOVAPS XMM0,XMM1
0054620b  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
00546213  f30f59c1                  MULSS XMM0,XMM1
00546217  0f28ca                    MOVAPS XMM1,XMM2
0054621a  f30f59ca                  MULSS XMM1,XMM2
0054621e  f30f58c1                  ADDSS XMM0,XMM1
00546222  e829f8eeff                CALL 0x00435a50
00546227  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0054622e  7633                      JBE 0x00546263
00546230  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00546238  f30f5ec8                  DIVSS XMM1,XMM0
0054623c  0f28c1                    MOVAPS XMM0,XMM1
0054623f  f30f598538ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff38]
00546247  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0054624f  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
00546257  f30f59c1                  MULSS XMM0,XMM1
0054625b  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
00546263  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
00546269  83feff                    CMP ESI,-0x1
0054626c  7448                      JZ 0x005462b6
0054626e  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00546274  0f57d2                    XORPS XMM2,XMM2
00546277  50                        PUSH EAX
00546278  8bcf                      MOV ECX,EDI
0054627a  e851201900                CALL 0x006d82d0
0054627f  8bb71c0f0000              MOV ESI,dword ptr [EDI + 0xf1c]
00546285  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00546289  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00546291  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00546296  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0054629e  f30f108528ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff28]
005462a6  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005462ae  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
005462b6  a17816c700                MOV EAX,[0x00c71678]
005462bb  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
005462c1  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
005462c7  660f6ec0                  MOVD XMM0,EAX
005462cb  0f5bc0                    CVTDQ2PS XMM0,XMM0
005462ce  f30f5e0550a9ba00          DIVSS XMM0,dword ptr [0x00baa950]
005462d6  f30f588534ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff34]
005462de  f30f5905a8a7ba00          MULSS XMM0,dword ptr [0x00baa7a8]
005462e6  e83572edff                CALL 0x0041d520
005462eb  f30f598528ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff28]
005462f3  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
005462fb  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
00546303  e83872edff                CALL 0x0041d540
00546308  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00546310  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
00546318  e80372edff                CALL 0x0041d520
0054631d  0f28e0                    MOVAPS XMM4,XMM0
00546320  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
00546328  0f28e8                    MOVAPS XMM5,XMM0
0054632b  f30f598530ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff30]
00546333  f30f59ad38ffffff          MULSS XMM5,dword ptr [EBP + 0xffffff38]
0054633b  0f28cc                    MOVAPS XMM1,XMM4
0054633e  f30f59a538ffffff          MULSS XMM4,dword ptr [EBP + 0xffffff38]
00546346  f30f598d30ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff30]
0054634e  f30f58e0                  ADDSS XMM4,XMM0
00546352  f30f5ce9                  SUBSS XMM5,XMM1
00546356  f30f11a524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM4
0054635e  0f28dc                    MOVAPS XMM3,XMM4
00546361  f30f11ad04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM5
00546369  0f28d5                    MOVAPS XMM2,XMM5
0054636c  83feff                    CMP ESI,-0x1
0054636f  0f850f020000              JNZ 0x00546584
00546375  ff772c                    PUSH dword ptr [EDI + 0x2c]
00546378  0f57c0                    XORPS XMM0,XMM0
0054637b  c78528ffffff00000000      MOV dword ptr [EBP + 0xffffff28],0x0
00546385  ff7728                    PUSH dword ptr [EDI + 0x28]
00546388  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0054638e  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
00546396  50                        PUSH EAX
00546397  8bcf                      MOV ECX,EDI
00546399  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
005463a1  e8baa81800                CALL 0x006d0c60
005463a6  33f6                      XOR ESI,ESI
005463a8  39b5fcfeffff              CMP dword ptr [EBP + 0xfffffefc],ESI
005463ae  0f86d3000000              JBE 0x00546487
005463b4  8b85f4feffff              MOV EAX,dword ptr [EBP + 0xfffffef4]
005463ba  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
005463bd  3bc7                      CMP EAX,EDI
005463bf  0f84b5000000              JZ 0x0054647a
005463c5  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
005463cd  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
005463d5  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
005463dd  f30f5c903c030000          SUBSS XMM2,dword ptr [EAX + 0x33c]
005463e5  0f28c1                    MOVAPS XMM0,XMM1
005463e8  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
005463f0  f30f59c1                  MULSS XMM0,XMM1
005463f4  0f28ca                    MOVAPS XMM1,XMM2
005463f7  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
005463ff  f30f59ca                  MULSS XMM1,XMM2
00546403  f30f58c1                  ADDSS XMM0,XMM1
00546407  e844f6eeff                CALL 0x00435a50
0054640c  0f28d0                    MOVAPS XMM2,XMM0
0054640f  0f2f15e49fba00            COMISS XMM2,dword ptr [0x00ba9fe4]
00546416  7662                      JBE 0x0054647a
00546418  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
00546420  f30f108d38ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff38]
00546428  f30f101d1ca8ba00          MOVSS XMM3,dword ptr [0x00baa81c]
00546430  f30f5ec2                  DIVSS XMM0,XMM2
00546434  ff8528ffffff              INC dword ptr [EBP + 0xffffff28]
0054643a  f30f5eca                  DIVSS XMM1,XMM2
0054643e  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
00546446  f30f58d3                  ADDSS XMM2,XMM3
0054644a  f30f5ec2                  DIVSS XMM0,XMM2
0054644e  f30f5eca                  DIVSS XMM1,XMM2
00546452  f30f59c3                  MULSS XMM0,XMM3
00546456  f30f59cb                  MULSS XMM1,XMM3
0054645a  f30f58850cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff0c]
00546462  f30f588d34ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff34]
0054646a  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
00546472  f30f118d34ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM1
0054647a  46                        INC ESI
0054647b  3bb5fcfeffff              CMP ESI,dword ptr [EBP + 0xfffffefc]
00546481  0f822dffffff              JC 0x005463b4
00546487  f30f10ad04ffffff          MOVSS XMM5,dword ptr [EBP + 0xffffff04]
0054648f  f30f10a524ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff24]
00546497  0f28d5                    MOVAPS XMM2,XMM5
0054649a  8b8528ffffff              MOV EAX,dword ptr [EBP + 0xffffff28]
005464a0  0f28dc                    MOVAPS XMM3,XMM4
005464a3  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
005464ab  f30f119d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM3
005464b3  85c0                      TEST EAX,EAX
005464b5  0f8e8e000000              JLE 0x00546549
005464bb  f30f108d0cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff0c]
005464c3  0f57c0                    XORPS XMM0,XMM0
005464c6  f30f109534ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff34]
005464ce  f30f2ac0                  CVTSI2SS XMM0,EAX
005464d2  f30f5ec8                  DIVSS XMM1,XMM0
005464d6  f30f5ed0                  DIVSS XMM2,XMM0
005464da  f30f58cd                  ADDSS XMM1,XMM5
005464de  f30f58d4                  ADDSS XMM2,XMM4
005464e2  0f28c1                    MOVAPS XMM0,XMM1
005464e5  f30f118d30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM1
005464ed  f30f59c1                  MULSS XMM0,XMM1
005464f1  0f28ca                    MOVAPS XMM1,XMM2
005464f4  f30f59ca                  MULSS XMM1,XMM2
005464f8  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
00546500  f30f58c1                  ADDSS XMM0,XMM1
00546504  e847f5eeff                CALL 0x00435a50
00546509  f30f109530ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff30]
00546511  0f28c8                    MOVAPS XMM1,XMM0
00546514  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0054651b  f30f109d38ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff38]
00546523  7624                      JBE 0x00546549
00546525  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0054652d  f30f5ec1                  DIVSS XMM0,XMM1
00546531  f30f59d0                  MULSS XMM2,XMM0
00546535  f30f59d8                  MULSS XMM3,XMM0
00546539  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
00546541  f30f119d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM3
00546549  80bdf0feffff00            CMP byte ptr [EBP + 0xfffffef0],0x0
00546550  7532                      JNZ 0x00546584
00546552  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00546559  b101                      MOV CL,0x1
0054655b  8b95f4feffff              MOV EDX,dword ptr [EBP + 0xfffffef4]
00546561  6a00                      PUSH 0x0
00546563  6a00                      PUSH 0x0
00546565  e846e35100                CALL 0x00a648b0
0054656a  f30f109d38ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff38]
00546572  83c408                    ADD ESP,0x8
00546575  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0054657c  f30f109530ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff30]
00546584  f30f591554a3ba00          MULSS XMM2,dword ptr [0x00baa354]
0054658c  8bb514ffffff              MOV ESI,dword ptr [EBP + 0xffffff14]
00546592  f30f591d54a3ba00          MULSS XMM3,dword ptr [0x00baa354]
0054659a  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
005465a2  f30f59d1                  MULSS XMM2,XMM1
005465a6  f30f59d9                  MULSS XMM3,XMM1
005465aa  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
005465b2  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
005465ba  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
005465c2  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
005465ca  eb08                      JMP 0x005465d4
005465cc  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
005465d4  0f2f15e49fba00            COMISS XMM2,dword ptr [0x00ba9fe4]
005465db  0f97c0                    SETA AL
005465de  888748010000              MOV byte ptr [EDI + 0x148],AL
005465e4  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005465ea  25000a0001                AND EAX,0x1000a00
005465ef  83c800                    OR EAX,0x0
005465f2  0f85a6040000              JNZ 0x00546a9e
005465f8  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
005465fe  85d2                      TEST EDX,EDX
00546600  7e1f                      JLE 0x00546621
00546602  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0054660a  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00546612  2bc8                      SUB ECX,EAX
00546614  2bd1                      SUB EDX,ECX
00546616  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0054661c  e97d040000                JMP 0x00546a9e
00546621  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00546628  7420                      JZ 0x0054664a
0054662a  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
00546632  8bcf                      MOV ECX,EDI
00546634  6a07                      PUSH 0x7
00546636  6a00                      PUSH 0x0
00546638  e823481800                CALL 0x006cae60
0054663d  0fb6c0                    MOVZX EAX,AL
00546640  85c0                      TEST EAX,EAX
00546642  0f8456040000              JZ 0x00546a9e
00546648  eb73                      JMP 0x005466bd
0054664a  8b87c8030000              MOV EAX,dword ptr [EDI + 0x3c8]
00546650  85c0                      TEST EAX,EAX
00546652  7416                      JZ 0x0054666a
00546654  8178289d010000            CMP dword ptr [EAX + 0x28],0x19d
0054665b  750d                      JNZ 0x0054666a
0054665d  83b8640b000009            CMP dword ptr [EAX + 0xb64],0x9
00546664  0f8434040000              JZ 0x00546a9e
0054666a  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00546672  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
0054667a  f30f5c863c030000          SUBSS XMM0,dword ptr [ESI + 0x33c]
00546682  f30f5c8e40030000          SUBSS XMM1,dword ptr [ESI + 0x340]
0054668a  f30f59c0                  MULSS XMM0,XMM0
0054668e  f30f59c9                  MULSS XMM1,XMM1
00546692  f30f58c8                  ADDSS XMM1,XMM0
00546696  f30f100534acba00          MOVSS XMM0,dword ptr [0x00baac34]
0054669e  0f2fc1                    COMISS XMM0,XMM1
005466a1  0f86f7030000              JBE 0x00546a9e
005466a7  e8b4881a00                CALL 0x006eef60
005466ac  33d2                      XOR EDX,EDX
005466ae  b905000000                MOV ECX,0x5
005466b3  f7f1                      DIV ECX
005466b5  85d2                      TEST EDX,EDX
005466b7  0f85e1030000              JNZ 0x00546a9e
005466bd  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005466c4  8db7200f0000              LEA ESI,[EDI + 0xf20]
005466ca  7516                      JNZ 0x005466e2
005466cc  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005466d4  f30f1106                  MOVSS dword ptr [ESI],XMM0
005466d8  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005466e0  eb2a                      JMP 0x0054670c
005466e2  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
005466ea  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
005466f0  50                        PUSH EAX
005466f1  8bcf                      MOV ECX,EDI
005466f3  e8a81e1900                CALL 0x006d85a0
005466f8  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
00546700  f30f1106                  MOVSS dword ptr [ESI],XMM0
00546704  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
0054670c  6a00                      PUSH 0x0
0054670e  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
00546713  8d4f48                    LEA ECX,[EDI + 0x48]
00546716  6854ddb100                PUSH 0xb1dd54
0054671b  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00546725  e8563cecff                CALL 0x0040a380
0054672a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00546731  7433                      JZ 0x00546766
00546733  6840b6c700                PUSH 0xc7b640
00546738  8bce                      MOV ECX,ESI
0054673a  e8f19e4c00                CALL 0x00a10630
0054673f  84c0                      TEST AL,AL
00546741  7423                      JZ 0x00546766
00546743  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
00546749  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00546751  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
00546758  0f97c0                    SETA AL
0054675b  888748010000              MOV byte ptr [EDI + 0x148],AL
00546761  e938030000                JMP 0x00546a9e
00546766  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0054676a  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00546771  0f97c0                    SETA AL
00546774  888748010000              MOV byte ptr [EDI + 0x148],AL
0054677a  e91f030000                JMP 0x00546a9e
0054677f  83f908                    CMP ECX,0x8
00546782  0f8502020000              JNZ 0x0054698a
00546788  6a00                      PUSH 0x0
0054678a  8bcf                      MOV ECX,EDI
0054678c  e8bf281900                CALL 0x006d9050
00546791  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00546795  8d7778                    LEA ESI,[EDI + 0x78]
00546798  0f843f010000              JZ 0x005468dd
0054679e  68dcd2b100                PUSH 0xb1d2dc
005467a3  8bce                      MOV ECX,ESI
005467a5  e82646ecff                CALL 0x0040add0
005467aa  84c0                      TEST AL,AL
005467ac  0f842b010000              JZ 0x005468dd
005467b2  51                        PUSH ECX
005467b3  c704240000803f            MOV dword ptr [ESP],0x3f800000
005467ba  6a00                      PUSH 0x0
005467bc  6a02                      PUSH 0x2
005467be  51                        PUSH ECX
005467bf  c704240000803f            MOV dword ptr [ESP],0x3f800000
005467c6  8bcf                      MOV ECX,EDI
005467c8  683e010000                PUSH 0x13e
005467cd  e8ce031900                CALL 0x006d6ba0
005467d2  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
005467d8  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
005467de  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005467e6  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
005467ee  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
005467f4  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005467fc  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00546804  50                        PUSH EAX
00546805  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0054680d  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
00546815  e816984c00                CALL 0x00a10030
0054681a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00546821  741f                      JZ 0x00546842
00546823  8d8f200f0000              LEA ECX,[EDI + 0xf20]
00546829  6840b6c700                PUSH 0xc7b640
0054682e  e8fd9d4c00                CALL 0x00a10630
00546833  84c0                      TEST AL,AL
00546835  740b                      JZ 0x00546842
00546837  f30f1009                  MOVSS XMM1,dword ptr [ECX]
0054683b  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
00546840  eb10                      JMP 0x00546852
00546842  f30f108504ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff04]
0054684a  f30f108d00ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff00]
00546852  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
00546858  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
00546860  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
00546868  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
00546870  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
00546878  e8b386efff                CALL 0x0043ef30
0054687d  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
00546885  8bcf                      MOV ECX,EDI
00546887  f30f109534ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff34]
0054688f  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00546897  50                        PUSH EAX
00546898  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
005468a0  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
005468a6  6a00                      PUSH 0x0
005468a8  50                        PUSH EAX
005468a9  8d873c030000              LEA EAX,[EDI + 0x33c]
005468af  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
005468b7  50                        PUSH EAX
005468b8  f30f11950cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM2
005468c0  e81b4a1800                CALL 0x006cb2e0
005468c5  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
005468cd  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005468d4  0f97c0                    SETA AL
005468d7  888748010000              MOV byte ptr [EDI + 0x148],AL
005468dd  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
005468e4  7578                      JNZ 0x0054695e
005468e6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005468ea  0f8481000000              JZ 0x00546971
005468f0  68dcd2b100                PUSH 0xb1d2dc
005468f5  8bce                      MOV ECX,ESI
005468f7  e87445ecff                CALL 0x0040ae70
005468fc  84c0                      TEST AL,AL
005468fe  745e                      JZ 0x0054695e
00546900  f30f1097b80b0000          MOVSS XMM2,dword ptr [EDI + 0xbb8]
00546908  f30f109fbc0b0000          MOVSS XMM3,dword ptr [EDI + 0xbbc]
00546910  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00546917  0f571d70cbba00            XORPS XMM3,xmmword ptr [0x00bacb70]
0054691e  f30f5915b0a4ba00          MULSS XMM2,dword ptr [0x00baa4b0]
00546926  f30f591db0a4ba00          MULSS XMM3,dword ptr [0x00baa4b0]
0054692e  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00546936  f30f59d1                  MULSS XMM2,XMM1
0054693a  f30f59d9                  MULSS XMM3,XMM1
0054693e  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
00546946  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
0054694e  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00546956  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0054695e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00546962  740d                      JZ 0x00546971
00546964  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0054696b  0f852d010000              JNZ 0x00546a9e
00546971  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0054697b  c787c00b00001e000000      MOV dword ptr [EDI + 0xbc0],0x1e
00546985  e914010000                JMP 0x00546a9e
0054698a  83f905                    CMP ECX,0x5
0054698d  0f8513010000              JNZ 0x00546aa6
00546993  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0054699d  8db73c030000              LEA ESI,[EDI + 0x33c]
005469a3  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
005469ab  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
005469b3  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
005469b8  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
005469bc  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
005469c4  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
005469cc  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
005469d4  f30f59c2                  MULSS XMM0,XMM2
005469d8  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
005469e0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005469e4  0f84bc000000              JZ 0x00546aa6
005469ea  68dcd2b100                PUSH 0xb1d2dc
005469ef  8d4f78                    LEA ECX,[EDI + 0x78]
005469f2  e8d943ecff                CALL 0x0040add0
005469f7  84c0                      TEST AL,AL
005469f9  0f849f000000              JZ 0x00546a9e
005469ff  6a00                      PUSH 0x0
00546a01  6800000001                PUSH 0x1000000
00546a06  8bcf                      MOV ECX,EDI
00546a08  e8230aedff                CALL 0x00417430
00546a0d  84c0                      TEST AL,AL
00546a0f  7578                      JNZ 0x00546a89
00546a11  e84a851a00                CALL 0x006eef60
00546a16  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
00546a1e  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
00546a26  f30f591534a8ba00          MULSS XMM2,dword ptr [0x00baa834]
00546a2e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00546a34  f30f590d34a8ba00          MULSS XMM1,dword ptr [0x00baa834]
00546a3c  6a00                      PUSH 0x0
00546a3e  68acd6c500                PUSH 0xc5d6ac
00546a43  68dcd5c500                PUSH 0xc5d5dc
00546a48  6a00                      PUSH 0x0
00546a4a  50                        PUSH EAX
00546a4b  6a01                      PUSH 0x1
00546a4d  57                        PUSH EDI
00546a4e  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00546a54  f30f119520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM2
00546a5c  50                        PUSH EAX
00546a5d  56                        PUSH ESI
00546a5e  6a16                      PUSH 0x16
00546a60  6a27                      PUSH 0x27
00546a62  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
00546a6a  e8b120eeff                CALL 0x00428b20
00546a6f  50                        PUSH EAX
00546a70  e83c9e5a00                CALL 0x00af08b1
00546a75  83c414                    ADD ESP,0x14
00546a78  8bc8                      MOV ECX,EAX
00546a7a  8b10                      MOV EDX,dword ptr [EAX]
00546a7c  c780640b000000000000      MOV dword ptr [EAX + 0xb64],0x0
00546a86  ff520c                    CALL dword ptr [EDX + 0xc]
00546a89  8b07                      MOV EAX,dword ptr [EDI]
00546a8b  8d8da0feffff              LEA ECX,[EBP + 0xfffffea0]
00546a91  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
00546a94  e8d7f1eeff                CALL 0x00435c70
00546a99  50                        PUSH EAX
00546a9a  8bcf                      MOV ECX,EDI
00546a9c  ffd2                      CALL EDX
00546a9e  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00546aa6  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
00546aad  0f84a3010000              JZ 0x00546c56
00546ab3  a19c16c700                MOV EAX,[0x00c7169c]
00546ab8  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
00546abe  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00546ac8  8b80bcab0400              MOV EAX,dword ptr [EAX + 0x4abbc]
00546ace  2501000080                AND EAX,0x80000001
00546ad3  7905                      JNS 0x00546ada
00546ad5  48                        DEC EAX
00546ad6  83c8fe                    OR EAX,0xfffffffe
00546ad9  40                        INC EAX
00546ada  0f57c9                    XORPS XMM1,XMM1
00546add  0f57c0                    XORPS XMM0,XMM0
00546ae0  f30f2ac8                  CVTSI2SS XMM1,EAX
00546ae4  a17816c700                MOV EAX,[0x00c71678]
00546ae9  f30f2a80f8640200          CVTSI2SS XMM0,dword ptr [EAX + 0x264f8]
00546af1  f30f59ca                  MULSS XMM1,XMM2
00546af5  f30f58c8                  ADDSS XMM1,XMM0
00546af9  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00546b01  f30f59ca                  MULSS XMM1,XMM2
00546b05  f30f590d08a7ba00          MULSS XMM1,dword ptr [0x00baa708]
00546b0d  f30f590db8a0ba00          MULSS XMM1,dword ptr [0x00baa0b8]
00546b15  f30f5cc1                  SUBSS XMM0,XMM1
00546b19  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00546b21  e8fa69edff                CALL 0x0041d520
00546b26  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
00546b2e  f30f5905c0a3ba00          MULSS XMM0,dword ptr [0x00baa3c0]
00546b36  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
00546b3e  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
00546b46  e8f569edff                CALL 0x0041d540
00546b4b  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
00546b53  0f28d8                    MOVAPS XMM3,XMM0
00546b56  f30f591db4a9ba00          MULSS XMM3,dword ptr [0x00baa9b4]
00546b5e  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
00546b66  f30f109530ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff30]
00546b6e  f30f589e3c030000          ADDSS XMM3,dword ptr [ESI + 0x33c]
00546b76  f30f589640030000          ADDSS XMM2,dword ptr [ESI + 0x340]
00546b7e  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00546b86  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00546b8e  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
00546b96  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
00546b9e  f30f5cd0                  SUBSS XMM2,XMM0
00546ba2  f30f5cd9                  SUBSS XMM3,XMM1
00546ba6  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00546bae  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
00546bb6  0f28ca                    MOVAPS XMM1,XMM2
00546bb9  f30f119530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM2
00546bc1  f30f59ca                  MULSS XMM1,XMM2
00546bc5  0f28c3                    MOVAPS XMM0,XMM3
00546bc8  f30f119d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM3
00546bd0  f30f59c3                  MULSS XMM0,XMM3
00546bd4  f30f58c1                  ADDSS XMM0,XMM1
00546bd8  e873eeeeff                CALL 0x00435a50
00546bdd  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00546be5  0f2fc1                    COMISS XMM0,XMM1
00546be8  f30f109514ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff14]
00546bf0  7622                      JBE 0x00546c14
00546bf2  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00546bf9  7619                      JBE 0x00546c14
00546bfb  f30f5ec8                  DIVSS XMM1,XMM0
00546bff  0f28c1                    MOVAPS XMM0,XMM1
00546c02  f30f59d0                  MULSS XMM2,XMM0
00546c06  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
00546c0e  f30f59c1                  MULSS XMM0,XMM1
00546c12  eb08                      JMP 0x00546c1c
00546c14  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
00546c1c  f30f108d24ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff24]
00546c24  f30f58ca                  ADDSS XMM1,XMM2
00546c28  f30f109504ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff04]
00546c30  f30f58d0                  ADDSS XMM2,XMM0
00546c34  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00546c3c  f30f5ec8                  DIVSS XMM1,XMM0
00546c40  f30f5ed0                  DIVSS XMM2,XMM0
00546c44  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00546c4c  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00546c54  eb14                      JMP 0x00546c6a
00546c56  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00546c60  c7876c0300006666663f      MOV dword ptr [EDI + 0x36c],0x3f666666
00546c6a  80bf7401000000            CMP byte ptr [EDI + 0x174],0x0
00546c71  744a                      JZ 0x00546cbd
00546c73  6a00                      PUSH 0x0
00546c75  6a04                      PUSH 0x4
00546c77  8bcf                      MOV ECX,EDI
00546c79  e8925a1600                CALL 0x006ac710
00546c7e  84c0                      TEST AL,AL
00546c80  743b                      JZ 0x00546cbd
00546c82  e8d9821a00                CALL 0x006eef60
00546c87  83e001                    AND EAX,0x1
00546c8a  7531                      JNZ 0x00546cbd
00546c8c  8b07                      MOV EAX,dword ptr [EDI]
00546c8e  8d8d78feffff              LEA ECX,[EBP + 0xfffffe78]
00546c94  8b5020                    MOV EDX,dword ptr [EAX + 0x20]
00546c97  e8d4efeeff                CALL 0x00435c70
00546c9c  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
00546ca4  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00546cac  6a1e                      PUSH 0x1e
00546cae  50                        PUSH EAX
00546caf  6a00                      PUSH 0x0
00546cb1  6a00                      PUSH 0x0
00546cb3  51                        PUSH ECX
00546cb4  8bcf                      MOV ECX,EDI
00546cb6  f30f110424                MOVSS dword ptr [ESP],XMM0
00546cbb  ffd2                      CALL EDX
00546cbd  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00546cc4  0f8503010000              JNZ 0x00546dcd
00546cca  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00546cd0  85c0                      TEST EAX,EAX
00546cd2  0f84f5000000              JZ 0x00546dcd
00546cd8  8178289d010000            CMP dword ptr [EAX + 0x28],0x19d
00546cdf  0f85e8000000              JNZ 0x00546dcd
00546ce5  39b8c0030000              CMP dword ptr [EAX + 0x3c0],EDI
00546ceb  0f85dc000000              JNZ 0x00546dcd
00546cf1  a17816c700                MOV EAX,[0x00c71678]
00546cf6  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
00546cfe  6a02                      PUSH 0x2
00546d00  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00546d06  8d873c030000              LEA EAX,[EDI + 0x33c]
00546d0c  50                        PUSH EAX
00546d0d  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00546d13  81c118120000              ADD ECX,0x1218
00546d19  50                        PUSH EAX
00546d1a  e8713aedff                CALL 0x0041a790
00546d1f  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00546d26  33c9                      XOR ECX,ECX
00546d28  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
00546d2e  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
00546d34  85c0                      TEST EAX,EAX
00546d36  7467                      JZ 0x00546d9f
00546d38  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00546d40  8b148e                    MOV EDX,dword ptr [ESI + ECX*0x4]
00546d43  817a349d010000            CMP dword ptr [EDX + 0x34],0x19d
00546d4a  7516                      JNZ 0x00546d62
00546d4c  8b8238040000              MOV EAX,dword ptr [EDX + 0x438]
00546d52  2500010000                AND EAX,0x100
00546d57  83c800                    OR EAX,0x0
00546d5a  750d                      JNZ 0x00546d69
00546d5c  8b8524ffffff              MOV EAX,dword ptr [EBP + 0xffffff24]
00546d62  41                        INC ECX
00546d63  3bc8                      CMP ECX,EAX
00546d65  72d9                      JC 0x00546d40
00546d67  eb36                      JMP 0x00546d9f
00546d69  8b07                      MOV EAX,dword ptr [EDI]
00546d6b  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
00546d71  52                        PUSH EDX
00546d72  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
00546d75  e896a5eeff                CALL 0x00431310
00546d7a  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
00546d82  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00546d88  6a1e                      PUSH 0x1e
00546d8a  50                        PUSH EAX
00546d8b  6a00                      PUSH 0x0
00546d8d  6a00                      PUSH 0x0
00546d8f  51                        PUSH ECX
00546d90  8bcf                      MOV ECX,EDI
00546d92  f30f110424                MOVSS dword ptr [ESP],XMM0
00546d97  ffd6                      CALL ESI
00546d99  8bb51cffffff              MOV ESI,dword ptr [EBP + 0xffffff1c]
00546d9f  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00546da6  80bd18ffffff00            CMP byte ptr [EBP + 0xffffff18],0x0
00546dad  751e                      JNZ 0x00546dcd
00546daf  6a00                      PUSH 0x0
00546db1  6a00                      PUSH 0x0
00546db3  8bd6                      MOV EDX,ESI
00546db5  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
00546dbc  b101                      MOV CL,0x1
00546dbe  e8edda5100                CALL 0x00a648b0
00546dc3  83c408                    ADD ESP,0x8
00546dc6  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00546dcd  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00546dd3  83f8ff                    CMP EAX,-0x1
00546dd6  0f8499000000              JZ 0x00546e75
00546ddc  51                        PUSH ECX
00546ddd  57                        PUSH EDI
00546dde  50                        PUSH EAX
00546ddf  6a09                      PUSH 0x9
00546de1  e82af34000                CALL 0x00956110
00546de6  84c0                      TEST AL,AL
00546de8  0f8487000000              JZ 0x00546e75
00546dee  83bf640b000005            CMP dword ptr [EDI + 0xb64],0x5
00546df5  0f847a000000              JZ 0x00546e75
00546dfb  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
00546e03  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
00546e09  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00546e11  8b07                      MOV EAX,dword ptr [EDI]
00546e13  51                        PUSH ECX
00546e14  8bcf                      MOV ECX,EDI
00546e16  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
00546e20  c785ccfeffff00000000      MOV dword ptr [EBP + 0xfffffecc],0x0
00546e2a  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
00546e34  c785d4feffff00000000      MOV dword ptr [EBP + 0xfffffed4],0x0
00546e3e  f30f118dd8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM1
00546e46  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
00546e4e  f30f118de0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM1
00546e56  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
00546e5e  c785e8feffff00000000      MOV dword ptr [EBP + 0xfffffee8],0x0
00546e68  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
00546e72  ff5024                    CALL dword ptr [EAX + 0x24]
00546e75  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00546e7c  0f84a0010000              JZ 0x00547022
00546e82  80bd3fffffff00            CMP byte ptr [EBP + 0xffffff3f],0x0
00546e89  7407                      JZ 0x00546e92
00546e8b  8bcf                      MOV ECX,EDI
00546e8d  e8ae010000                CALL 0x00547040
00546e92  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00546e98  85c0                      TEST EAX,EAX
00546e9a  7413                      JZ 0x00546eaf
00546e9c  8178289d010000            CMP dword ptr [EAX + 0x28],0x19d
00546ea3  750a                      JNZ 0x00546eaf
00546ea5  8180c00b000096000000      ADD dword ptr [EAX + 0xbc0],0x96
00546eaf  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00546eb6  0f8466010000              JZ 0x00547022
00546ebc  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00546ec2  83f805                    CMP EAX,0x5
00546ec5  0f8457010000              JZ 0x00547022
00546ecb  83f812                    CMP EAX,0x12
00546ece  0f844e010000              JZ 0x00547022
00546ed4  51                        PUSH ECX
00546ed5  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
00546edb  c7042400000000            MOV dword ptr [ESP],0x0
00546ee2  50                        PUSH EAX
00546ee3  8bcf                      MOV ECX,EDI
00546ee5  e8567d1700                CALL 0x006bec40
00546eea  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00546ef1  f30f1018                  MOVSS XMM3,dword ptr [EAX]
00546ef5  f30f106004                MOVSS XMM4,dword ptr [EAX + 0x4]
00546efa  f30f5c9f3c030000          SUBSS XMM3,dword ptr [EDI + 0x33c]
00546f02  f30f5ca740030000          SUBSS XMM4,dword ptr [EDI + 0x340]
00546f0a  f30f119d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM3
00546f12  f30f11a504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM4
00546f1a  744d                      JZ 0x00546f69
00546f1c  8d8510ffffff              LEA EAX,[EBP + 0xffffff10]
00546f22  0f57d2                    XORPS XMM2,XMM2
00546f25  50                        PUSH EAX
00546f26  8bcf                      MOV ECX,EDI
00546f28  e8a3131900                CALL 0x006d82d0
00546f2d  6840b6c700                PUSH 0xc7b640
00546f32  8bc8                      MOV ECX,EAX
00546f34  e8f7964c00                CALL 0x00a10630
00546f39  84c0                      TEST AL,AL
00546f3b  741c                      JZ 0x00546f59
00546f3d  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
00546f43  0f57d2                    XORPS XMM2,XMM2
00546f46  50                        PUSH EAX
00546f47  8bcf                      MOV ECX,EDI
00546f49  e882131900                CALL 0x006d82d0
00546f4e  f30f1018                  MOVSS XMM3,dword ptr [EAX]
00546f52  f30f106004                MOVSS XMM4,dword ptr [EAX + 0x4]
00546f57  eb10                      JMP 0x00546f69
00546f59  f30f109d24ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff24]
00546f61  f30f10a504ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff04]
00546f69  0f28c4                    MOVAPS XMM0,XMM4
00546f6c  0f28d3                    MOVAPS XMM2,XMM3
00546f6f  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00546f76  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
00546f7d  0f2fd0                    COMISS XMM2,XMM0
00546f80  0f57c0                    XORPS XMM0,XMM0
00546f83  7619                      JBE 0x00546f9e
00546f85  0f2fd8                    COMISS XMM3,XMM0
00546f88  760a                      JBE 0x00546f94
00546f8a  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00546f92  eb24                      JMP 0x00546fb8
00546f94  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
00546f9c  eb1a                      JMP 0x00546fb8
00546f9e  0f2fe0                    COMISS XMM4,XMM0
00546fa1  0f57c9                    XORPS XMM1,XMM1
00546fa4  760a                      JBE 0x00546fb0
00546fa6  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00546fae  eb08                      JMP 0x00546fb8
00546fb0  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00546fb8  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
00546fc0  8d4f48                    LEA ECX,[EDI + 0x48]
00546fc3  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00546fcb  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00546fd1  6a00                      PUSH 0x0
00546fd3  898734030000              MOV dword ptr [EDI + 0x334],EAX
00546fd9  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00546fdf  68a812b600                PUSH 0xb612a8
00546fe4  898738030000              MOV dword ptr [EDI + 0x338],EAX
00546fea  e89133ecff                CALL 0x0040a380
00546fef  8bcf                      MOV ECX,EDI
00546ff1  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
00546ffb  e830761600                CALL 0x006ae630
00547000  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00547007  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
0054700e  c78780030000cdcccc3d      MOV dword ptr [EDI + 0x380],0x3dcccccd
00547018  c78710040000ffffffff      MOV dword ptr [EDI + 0x410],0xffffffff
00547022  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00547025  64890d00000000            MOV dword ptr FS:[0x0],ECX
0054702c  59                        POP ECX
0054702d  5f                        POP EDI
0054702e  5e                        POP ESI
0054702f  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00547032  33cd                      XOR ECX,EBP
00547034  e8f2805a00                CALL 0x00aef12b
00547039  8be5                      MOV ESP,EBP
0054703b  5d                        POP EBP
0054703c  8be3                      MOV ESP,EBX
0054703e  5b                        POP EBX
0054703f  c3                        RET
