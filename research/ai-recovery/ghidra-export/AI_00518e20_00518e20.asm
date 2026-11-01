; J460 NPC AI 0x00518e20 AI_00518e20
; types=91,229,230,253
; identities=229.0.0,229.1.0,230.0.0,253.0.0,91.0.0
; entry=00518e20
00518e20  53                        PUSH EBX
00518e21  8bdc                      MOV EBX,ESP
00518e23  83ec08                    SUB ESP,0x8
00518e26  83e4f8                    AND ESP,0xfffffff8
00518e29  83c404                    ADD ESP,0x4
00518e2c  55                        PUSH EBP
00518e2d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00518e30  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00518e34  8bec                      MOV EBP,ESP
00518e36  6aff                      PUSH -0x1
00518e38  684244af00                PUSH 0xaf4442
00518e3d  64a100000000              MOV EAX,FS:[0x0]
00518e43  50                        PUSH EAX
00518e44  53                        PUSH EBX
00518e45  81ec70010000              SUB ESP,0x170
00518e4b  a1b493bf00                MOV EAX,[0x00bf93b4]
00518e50  33c5                      XOR EAX,EBP
00518e52  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00518e55  56                        PUSH ESI
00518e56  57                        PUSH EDI
00518e57  50                        PUSH EAX
00518e58  8d45f4                    LEA EAX,[EBP + -0xc]
00518e5b  64a300000000              MOV FS:[0x0],EAX
00518e61  8bf9                      MOV EDI,ECX
00518e63  89bda8feffff              MOV dword ptr [EBP + 0xfffffea8],EDI
00518e69  33c0                      XOR EAX,EAX
00518e6b  8985bcfeffff              MOV dword ptr [EBP + 0xfffffebc],EAX
00518e71  817f28e5000000            CMP dword ptr [EDI + 0x28],0xe5
00518e78  8985acfeffff              MOV dword ptr [EBP + 0xfffffeac],EAX
00518e7e  750d                      JNZ 0x00518e8d
00518e80  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00518e84  c685cffeffff01            MOV byte ptr [EBP + 0xfffffecf],0x1
00518e8b  7406                      JZ 0x00518e93
00518e8d  8885cffeffff              MOV byte ptr [EBP + 0xfffffecf],AL
00518e93  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00518e9b  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00518ea3  2bc8                      SUB ECX,EAX
00518ea5  8b87740b0000              MOV EAX,dword ptr [EDI + 0xb74]
00518eab  898db4feffff              MOV dword ptr [EBP + 0xfffffeb4],ECX
00518eb1  83f801                    CMP EAX,0x1
00518eb4  0f84811a0000              JZ 0x0051a93b
00518eba  83f802                    CMP EAX,0x2
00518ebd  0f84781a0000              JZ 0x0051a93b
00518ec3  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00518eca  0f8523010000              JNZ 0x00518ff3
00518ed0  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00518eda  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00518ee2  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00518eea  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00518ef2  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00518efa  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00518f04  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00518f0e  e84d601d00                CALL 0x006eef60
00518f13  660f6ec0                  MOVD XMM0,EAX
00518f17  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00518f1b  c1e81f                    SHR EAX,0x1f
00518f1e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00518f27  660f5ac0                  CVTPD2PS XMM0,XMM0
00518f2b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00518f33  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00518f3b  f30f58c0                  ADDSS XMM0,XMM0
00518f3f  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00518f47  e8f445f0ff                CALL 0x0041d540
00518f4c  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
00518f54  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00518f5c  e8bf45f0ff                CALL 0x0041d520
00518f61  f30f108dc8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec8]
00518f69  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00518f71  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00518f79  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00518f7c  83f85b                    CMP EAX,0x5b
00518f7f  7530                      JNZ 0x00518fb1
00518f81  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00518f88  8d45c0                    LEA EAX,[EBP + -0x40]
00518f8b  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
00518f8f  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
00518f96  0f2805f0c3ba00            MOVAPS XMM0,xmmword ptr [0x00bac3f0]
00518f9d  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00518fa1  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
00518fa8  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
00518faf  eb1d                      JMP 0x00518fce
00518fb1  3de6000000                CMP EAX,0xe6
00518fb6  7522                      JNZ 0x00518fda
00518fb8  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
00518fc0  8d4dc0                    LEA ECX,[EBP + -0x40]
00518fc3  0f57db                    XORPS XMM3,XMM3
00518fc6  0f57d2                    XORPS XMM2,XMM2
00518fc9  e8b2caf1ff                CALL 0x00435a80
00518fce  50                        PUSH EAX
00518fcf  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00518fd5  e816e2eeff                CALL 0x004071f0
00518fda  80bdcffeffff00            CMP byte ptr [EBP + 0xfffffecf],0x0
00518fe1  0f84921a0000              JZ 0x0051aa79
00518fe7  838f180f000003            OR dword ptr [EDI + 0xf18],0x3
00518fee  e9861a0000                JMP 0x0051aa79
00518ff3  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00518ffb  8bcf                      MOV ECX,EDI
00518ffd  f30f590584a3ba00          MULSS XMM0,dword ptr [0x00baa384]
00519005  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0051900d  e82e581a00                CALL 0x006be840
00519012  80bdcffeffff00            CMP byte ptr [EBP + 0xfffffecf],0x0
00519019  8db73c030000              LEA ESI,[EDI + 0x33c]
0051901f  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00519027  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0051902c  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00519034  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
00519038  f30f118598feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM0
00519040  0f57c0                    XORPS XMM0,XMM0
00519043  f30f1185c4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM0
0051904b  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
00519053  f30f1185c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM0
0051905b  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
00519063  7414                      JZ 0x00519079
00519065  6a09                      PUSH 0x9
00519067  8bcf                      MOV ECX,EDI
00519069  e8f2f11b00                CALL 0x006d8260
0051906e  c685c3feffff01            MOV byte ptr [EBP + 0xfffffec3],0x1
00519075  84c0                      TEST AL,AL
00519077  7507                      JNZ 0x00519080
00519079  c685c3feffff00            MOV byte ptr [EBP + 0xfffffec3],0x0
00519080  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00519087  0f84a6000000              JZ 0x00519133
0051908d  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00519095  8d859cfeffff              LEA EAX,[EBP + 0xfffffe9c]
0051909b  50                        PUSH EAX
0051909c  8bcf                      MOV ECX,EDI
0051909e  e8fdf41b00                CALL 0x006d85a0
005190a3  80bdcffeffff00            CMP byte ptr [EBP + 0xfffffecf],0x0
005190aa  f30f1000                  MOVSS XMM0,dword ptr [EAX]
005190ae  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
005190b3  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
005190bb  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
005190c3  7444                      JZ 0x00519109
005190c5  6a09                      PUSH 0x9
005190c7  8bcf                      MOV ECX,EDI
005190c9  e892f11b00                CALL 0x006d8260
005190ce  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
005190d6  84c0                      TEST AL,AL
005190d8  741d                      JZ 0x005190f7
005190da  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
005190e2  0f28cb                    MOVAPS XMM1,XMM3
005190e5  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
005190ed  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
005190f5  eb1a                      JMP 0x00519111
005190f7  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
005190ff  f30f108dc8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec8]
00519107  eb08                      JMP 0x00519111
00519109  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00519111  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
00519119  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
00519121  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00519129  f30f118d98feffff          MOVSS dword ptr [EBP + 0xfffffe98],XMM1
00519131  eb08                      JMP 0x0051913b
00519133  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0051913b  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00519143  0f28cb                    MOVAPS XMM1,XMM3
00519146  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0051914e  8bcf                      MOV ECX,EDI
00519150  f30f1095c4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffec4]
00519158  f30f5cc8                  SUBSS XMM1,XMM0
0051915c  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
00519164  f30f118d8cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM1
0051916c  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
00519174  e8e7351900                CALL 0x006ac760
00519179  85c0                      TEST EAX,EAX
0051917b  7554                      JNZ 0x005191d1
0051917d  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
00519185  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0051918c  9f                        LAHF
0051918d  f6c444                    TEST AH,0x44
00519190  7a3f                      JP 0x005191d1
00519192  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
0051919a  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005191a1  9f                        LAHF
005191a2  f6c444                    TEST AH,0x44
005191a5  7a2a                      JP 0x005191d1
005191a7  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
005191ae  0f854f030000              JNZ 0x00519503
005191b4  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
005191bc  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
005191c3  0f97c0                    SETA AL
005191c6  888748010000              MOV byte ptr [EDI + 0x148],AL
005191cc  e932030000                JMP 0x00519503
005191d1  80bdcffeffff00            CMP byte ptr [EBP + 0xfffffecf],0x0
005191d8  7435                      JZ 0x0051920f
005191da  83bf000c000002            CMP dword ptr [EDI + 0xc00],0x2
005191e1  772c                      JA 0x0051920f
005191e3  e8785d1d00                CALL 0x006eef60
005191e8  33d2                      XOR EDX,EDX
005191ea  f30f10858cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe8c]
005191f2  b90a000000                MOV ECX,0xa
005191f7  f7f1                      DIV ECX
005191f9  85d2                      TEST EDX,EDX
005191fb  751a                      JNZ 0x00519217
005191fd  f30f580520a1ba00          ADDSS XMM0,dword ptr [0x00baa120]
00519205  f30f11858cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM0
0051920d  eb08                      JMP 0x00519217
0051920f  f30f10858cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe8c]
00519217  837f285b                  CMP dword ptr [EDI + 0x28],0x5b
0051921b  7571                      JNZ 0x0051928e
0051921d  f30f59055ca7ba00          MULSS XMM0,dword ptr [0x00baa75c]
00519225  8d4f48                    LEA ECX,[EDI + 0x48]
00519228  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0051922e  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00519236  6a01                      PUSH 0x1
00519238  f30f5cc8                  SUBSS XMM1,XMM0
0051923c  0f28c1                    MOVAPS XMM0,XMM1
0051923f  f30f594024                MULSS XMM0,dword ptr [EAX + 0x24]
00519244  f30f11875c010000          MOVSS dword ptr [EDI + 0x15c],XMM0
0051924c  0f28c1                    MOVAPS XMM0,XMM1
0051924f  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00519257  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0051925f  f30f118584feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM0
00519267  f30f118da0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM1
0051926f  e8ac1fefff                CALL 0x0040b220
00519274  f30f108584feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe84]
0051927c  f30f114034                MOVSS dword ptr [EAX + 0x34],XMM0
00519281  f30f1085a0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea0]
00519289  f30f114038                MOVSS dword ptr [EAX + 0x38],XMM0
0051928e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00519295  742a                      JZ 0x005192c1
00519297  f30f108594feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe94]
0051929f  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
005192a6  9f                        LAHF
005192a7  f6c444                    TEST AH,0x44
005192aa  7a15                      JP 0x005192c1
005192ac  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
005192b4  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005192bb  9f                        LAHF
005192bc  f6c444                    TEST AH,0x44
005192bf  7b19                      JNP 0x005192da
005192c1  f30f10858cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe8c]
005192c9  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
005192d1  0f2f87b00b0000            COMISS XMM0,dword ptr [EDI + 0xbb0]
005192d8  770d                      JA 0x005192e7
005192da  80bdc3feffff00            CMP byte ptr [EBP + 0xfffffec3],0x0
005192e1  0f841c020000              JZ 0x00519503
005192e7  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
005192ee  0f850f020000              JNZ 0x00519503
005192f4  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005192f7  85c0                      TEST EAX,EAX
005192f9  741e                      JZ 0x00519319
005192fb  80783400                  CMP byte ptr [EAX + 0x34],0x0
005192ff  7418                      JZ 0x00519319
00519301  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00519309  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00519311  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00519319  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0051931c  83f85b                    CMP EAX,0x5b
0051931f  7514                      JNZ 0x00519335
00519321  6a00                      PUSH 0x0
00519323  8d4f48                    LEA ECX,[EDI + 0x48]
00519326  6854ddb100                PUSH 0xb1dd54
0051932b  e85010efff                CALL 0x0040a380
00519330  e95d010000                JMP 0x00519492
00519335  3de5000000                CMP EAX,0xe5
0051933a  7412                      JZ 0x0051934e
0051933c  3dfd000000                CMP EAX,0xfd
00519341  740b                      JZ 0x0051934e
00519343  3de6000000                CMP EAX,0xe6
00519348  0f8544010000              JNZ 0x00519492
0051934e  80bdcffeffff00            CMP byte ptr [EBP + 0xfffffecf],0x0
00519355  0f84f0000000              JZ 0x0051944b
0051935b  8b87f00b0000              MOV EAX,dword ptr [EDI + 0xbf0]
00519361  33c9                      XOR ECX,ECX
00519363  8bb7fc0b0000              MOV ESI,dword ptr [EDI + 0xbfc]
00519369  8985a0feffff              MOV dword ptr [EBP + 0xfffffea0],EAX
0051936f  8b87000c0000              MOV EAX,dword ptr [EDI + 0xc00]
00519375  8bbda0feffff              MOV EDI,dword ptr [EBP + 0xfffffea0]
0051937b  03c6                      ADD EAX,ESI
0051937d  898dc8feffff              MOV dword ptr [EBP + 0xfffffec8],ECX
00519383  898584feffff              MOV dword ptr [EBP + 0xfffffe84],EAX
00519389  0f1f8000000000            NOP dword ptr [EAX]
00519390  3bf0                      CMP ESI,EAX
00519392  744e                      JZ 0x005193e2
00519394  85ff                      TEST EDI,EDI
00519396  7404                      JZ 0x0051939c
00519398  8b0f                      MOV ECX,dword ptr [EDI]
0051939a  eb02                      JMP 0x0051939e
0051939c  33c9                      XOR ECX,ECX
0051939e  8b4108                    MOV EAX,dword ptr [ECX + 0x8]
005193a1  8bd6                      MOV EDX,ESI
005193a3  48                        DEC EAX
005193a4  c1ea02                    SHR EDX,0x2
005193a7  23d0                      AND EDX,EAX
005193a9  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
005193ac  8bce                      MOV ECX,ESI
005193ae  83e103                    AND ECX,0x3
005193b1  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
005193b4  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
005193b7  85c9                      TEST ECX,ECX
005193b9  7406                      JZ 0x005193c1
005193bb  83792809                  CMP dword ptr [ECX + 0x28],0x9
005193bf  7402                      JZ 0x005193c3
005193c1  33c9                      XOR ECX,ECX
005193c3  8b95c8feffff              MOV EDX,dword ptr [EBP + 0xfffffec8]
005193c9  46                        INC ESI
005193ca  85c9                      TEST ECX,ECX
005193cc  8d4201                    LEA EAX,[EDX + 0x1]
005193cf  0f44c2                    CMOVZ EAX,EDX
005193d2  8bc8                      MOV ECX,EAX
005193d4  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
005193da  8b8584feffff              MOV EAX,dword ptr [EBP + 0xfffffe84]
005193e0  ebae                      JMP 0x00519390
005193e2  8bbda8feffff              MOV EDI,dword ptr [EBP + 0xfffffea8]
005193e8  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005193ef  7409                      JZ 0x005193fa
005193f1  0fb68dc3feffff            MOVZX ECX,byte ptr [EBP + 0xfffffec3]
005193f8  eb3a                      JMP 0x00519434
005193fa  83f903                    CMP ECX,0x3
005193fd  7c33                      JL 0x00519432
005193ff  e85c5b1d00                CALL 0x006eef60
00519404  33d2                      XOR EDX,EDX
00519406  b903000000                MOV ECX,0x3
0051940b  f7f1                      DIV ECX
0051940d  85d2                      TEST EDX,EDX
0051940f  741a                      JZ 0x0051942b
00519411  83bdc8feffff06            CMP dword ptr [EBP + 0xfffffec8],0x6
00519418  7d11                      JGE 0x0051942b
0051941a  f30f10858cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe8c]
00519422  0f2f05d0a0ba00            COMISS XMM0,dword ptr [0x00baa0d0]
00519429  7607                      JBE 0x00519432
0051942b  b901000000                MOV ECX,0x1
00519430  eb02                      JMP 0x00519434
00519432  33c9                      XOR ECX,ECX
00519434  85c9                      TEST ECX,ECX
00519436  8db73c030000              LEA ESI,[EDI + 0x33c]
0051943c  b8dcd2b100                MOV EAX,0xb1d2dc
00519441  baf00db600                MOV EDX,0xb60df0
00519446  0f45c2                    CMOVNZ EAX,EDX
00519449  eb1c                      JMP 0x00519467
0051944b  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
00519453  b8040db600                MOV EAX,0xb60d04
00519458  0f2f8598feffff            COMISS XMM0,dword ptr [EBP + 0xfffffe98]
0051945f  b9ec0cb600                MOV ECX,0xb60cec
00519464  0f46c1                    CMOVBE EAX,ECX
00519467  6a00                      PUSH 0x0
00519469  50                        PUSH EAX
0051946a  8d4f48                    LEA ECX,[EDI + 0x48]
0051946d  e80e0fefff                CALL 0x0040a380
00519472  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
0051947a  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00519482  f30f108598feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe98]
0051948a  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00519492  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
0051949a  0f2f85bcfeffff            COMISS XMM0,dword ptr [EBP + 0xfffffebc]
005194a1  0f97c0                    SETA AL
005194a4  888748010000              MOV byte ptr [EDI + 0x148],AL
005194aa  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005194b1  751a                      JNZ 0x005194cd
005194b3  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005194bb  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
005194c3  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005194cb  eb2e                      JMP 0x005194fb
005194cd  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
005194d5  8d85a4feffff              LEA EAX,[EBP + 0xfffffea4]
005194db  50                        PUSH EAX
005194dc  8bcf                      MOV ECX,EDI
005194de  e8bdf01b00                CALL 0x006d85a0
005194e3  f30f1085a4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea4]
005194eb  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
005194f3  f30f1085a8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea8]
005194fb  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
00519503  837f285b                  CMP dword ptr [EDI + 0x28],0x5b
00519507  0f85af040000              JNZ 0x005199bc
0051950d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00519511  0f84a5040000              JZ 0x005199bc
00519517  68dcd2b100                PUSH 0xb1d2dc
0051951c  8d4f78                    LEA ECX,[EDI + 0x78]
0051951f  e8ac18efff                CALL 0x0040add0
00519524  84c0                      TEST AL,AL
00519526  0f8490040000              JZ 0x005199bc
0051952c  51                        PUSH ECX
0051952d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00519534  6a00                      PUSH 0x0
00519536  6a02                      PUSH 0x2
00519538  51                        PUSH ECX
00519539  c704240000803f            MOV dword ptr [ESP],0x3f800000
00519540  8bcf                      MOV ECX,EDI
00519542  689e000000                PUSH 0x9e
00519547  e854d61b00                CALL 0x006d6ba0
0051954c  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
00519553  740a                      JZ 0x0051955f
00519555  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
0051955d  eb08                      JMP 0x00519567
0051955f  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00519567  f30f1195c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM2
0051956f  e8ec591d00                CALL 0x006eef60
00519574  660f6ec0                  MOVD XMM0,EAX
00519578  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0051957c  c1e81f                    SHR EAX,0x1f
0051957f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00519588  660f5ac0                  CVTPD2PS XMM0,XMM0
0051958c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00519594  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0051959c  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
005195a4  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
005195ac  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
005195b4  e8873ff0ff                CALL 0x0041d540
005195b9  f30f1185a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM0
005195c1  f30f1085a8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea8]
005195c9  e8523ff0ff                CALL 0x0041d520
005195ce  f30f10adc8feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffec8]
005195d6  0f28c8                    MOVAPS XMM1,XMM0
005195d9  f30f1095a0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffea0]
005195e1  0f28dd                    MOVAPS XMM3,XMM5
005195e4  f30f598dc4feffff          MULSS XMM1,dword ptr [EBP + 0xfffffec4]
005195ec  f30f59da                  MULSS XMM3,XMM2
005195f0  f30f5995c4feffff          MULSS XMM2,dword ptr [EBP + 0xfffffec4]
005195f8  f30f59e8                  MULSS XMM5,XMM0
005195fc  f30f5cd9                  SUBSS XMM3,XMM1
00519600  f30f58ea                  ADDSS XMM5,XMM2
00519604  f30f119da8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM3
0051960c  f30f11adc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM5
00519614  e847591d00                CALL 0x006eef60
00519619  660f6ec0                  MOVD XMM0,EAX
0051961d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00519621  c1e81f                    SHR EAX,0x1f
00519624  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051962d  660f5ac8                  CVTPD2PS XMM1,XMM0
00519631  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00519639  f30f590dfca6ba00          MULSS XMM1,dword ptr [0x00baa6fc]
00519641  f30f580dfca6ba00          ADDSS XMM1,dword ptr [0x00baa6fc]
00519649  0f28c1                    MOVAPS XMM0,XMM1
0051964c  f30f598dc8feffff          MULSS XMM1,dword ptr [EBP + 0xfffffec8]
00519654  f30f5985a8feffff          MULSS XMM0,dword ptr [EBP + 0xfffffea8]
0051965c  f30f118da0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM1
00519664  f30f118d84feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM1
0051966c  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
00519674  f30f118580feffff          MOVSS dword ptr [EBP + 0xfffffe80],XMM0
0051967c  e8df581d00                CALL 0x006eef60
00519681  f30f100e                  MOVSS XMM1,dword ptr [ESI]
00519685  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0051968a  f30f588dc4feffff          ADDSS XMM1,dword ptr [EBP + 0xfffffec4]
00519692  f30f5c05e8a8ba00          SUBSS XMM0,dword ptr [0x00baa8e8]
0051969a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005196a0  50                        PUSH EAX
005196a1  6a00                      PUSH 0x0
005196a3  57                        PUSH EDI
005196a4  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
005196aa  f30f118d88feffff          MOVSS dword ptr [EBP + 0xfffffe88],XMM1
005196b2  50                        PUSH EAX
005196b3  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
005196b9  f30f11858cfeffff          MOVSS dword ptr [EBP + 0xfffffe8c],XMM0
005196c1  50                        PUSH EAX
005196c2  6a3b                      PUSH 0x3b
005196c4  68e8030000                PUSH 0x3e8
005196c9  e852f4f0ff                CALL 0x00428b20
005196ce  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005196d6  f30f1095a8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffea8]
005196de  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
005196e5  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
005196ed  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
005196f1  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
005196f9  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00519701  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
00519706  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
0051970c  f30f598da0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffea0]
00519714  f30f59c2                  MULSS XMM0,XMM2
00519718  f30f58c8                  ADDSS XMM1,XMM0
0051971c  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
00519724  0f2fc1                    COMISS XMM0,XMM1
00519727  7610                      JBE 0x00519739
00519729  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
00519731  f30f118594feffff          MOVSS dword ptr [EBP + 0xfffffe94],XMM0
00519739  e822581d00                CALL 0x006eef60
0051973e  8bb5c8feffff              MOV ESI,dword ptr [EBP + 0xfffffec8]
00519744  660f6ec0                  MOVD XMM0,EAX
00519748  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0051974c  c1e81f                    SHR EAX,0x1f
0051974f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00519758  660f5ac0                  CVTPD2PS XMM0,XMM0
0051975c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00519764  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0051976c  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00519774  f30f598594feffff          MULSS XMM0,dword ptr [EBP + 0xfffffe94]
0051977c  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
00519784  e8d7571d00                CALL 0x006eef60
00519789  33d2                      XOR EDX,EDX
0051978b  b90f000000                MOV ECX,0xf
00519790  f7f1                      DIV ECX
00519792  8b06                      MOV EAX,dword ptr [ESI]
00519794  03d1                      ADD EDX,ECX
00519796  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
0051979c  899660040000              MOV dword ptr [ESI + 0x460],EDX
005197a2  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
005197a5  e8b6571d00                CALL 0x006eef60
005197aa  8b8dc8feffff              MOV ECX,dword ptr [EBP + 0xfffffec8]
005197b0  6a01                      PUSH 0x1
005197b2  6a00                      PUSH 0x0
005197b4  660f6ec0                  MOVD XMM0,EAX
005197b8  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005197bc  c1e81f                    SHR EAX,0x1f
005197bf  68ff000000                PUSH 0xff
005197c4  6aff                      PUSH -0x1
005197c6  c745c00000803f            MOV dword ptr [EBP + -0x40],0x3f800000
005197cd  c745c40000803f            MOV dword ptr [EBP + -0x3c],0x3f800000
005197d4  c745c80000803f            MOV dword ptr [EBP + -0x38],0x3f800000
005197db  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005197e4  8d45c0                    LEA EAX,[EBP + -0x40]
005197e7  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
005197ee  50                        PUSH EAX
005197ef  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
005197f6  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
005197fd  660f5ac8                  CVTPD2PS XMM1,XMM0
00519801  0f57c0                    XORPS XMM0,XMM0
00519804  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0051980c  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00519810  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00519818  f30f580d98a1ba00          ADDSS XMM1,dword ptr [0x00baa198]
00519820  f30f114dcc                MOVSS dword ptr [EBP + -0x34],XMM1
00519825  ffd6                      CALL ESI
00519827  8b8dc8feffff              MOV ECX,dword ptr [EBP + 0xfffffec8]
0051982d  8b01                      MOV EAX,dword ptr [ECX]
0051982f  ff500c                    CALL dword ptr [EAX + 0xc]
00519832  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00519839  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
00519841  7415                      JZ 0x00519858
00519843  0f28c1                    MOVAPS XMM0,XMM1
00519846  f30f5c0520a1ba00          SUBSS XMM0,dword ptr [0x00baa120]
0051984e  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00519856  eb08                      JMP 0x00519860
00519858  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
00519860  0f2fc8                    COMISS XMM1,XMM0
00519863  0f8653010000              JBE 0x005199bc
00519869  8db73c030000              LEA ESI,[EDI + 0x33c]
0051986f  90                        NOP
00519870  e8eb561d00                CALL 0x006eef60
00519875  8bcf                      MOV ECX,EDI
00519877  660f6ec0                  MOVD XMM0,EAX
0051987b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0051987f  c1e81f                    SHR EAX,0x1f
00519882  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051988b  660f5ac0                  CVTPD2PS XMM0,XMM0
0051988f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00519897  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0051989f  f30f5887b40b0000          ADDSS XMM0,dword ptr [EDI + 0xbb4]
005198a7  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
005198af  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
005198b7  e864d31b00                CALL 0x006d6c20
005198bc  83f807                    CMP EAX,0x7
005198bf  0f8dde000000              JGE 0x005199a3
005198c5  e896561d00                CALL 0x006eef60
005198ca  660f6ec0                  MOVD XMM0,EAX
005198ce  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005198d2  c1e81f                    SHR EAX,0x1f
005198d5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005198de  660f5ac0                  CVTPD2PS XMM0,XMM0
005198e2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005198ea  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
005198f2  f30f58c0                  ADDSS XMM0,XMM0
005198f6  e8453cf0ff                CALL 0x0041d540
005198fb  f30f108dbcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffebc]
00519903  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0051990b  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00519913  f30f58c8                  ADDSS XMM1,XMM0
00519917  f30f118d9cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM1
0051991f  e83c561d00                CALL 0x006eef60
00519924  660f6ec0                  MOVD XMM0,EAX
00519928  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0051992c  c1e81f                    SHR EAX,0x1f
0051992f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00519938  660f5ac0                  CVTPD2PS XMM0,XMM0
0051993c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00519944  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0051994c  f30f58c0                  ADDSS XMM0,XMM0
00519950  e8cb3bf0ff                CALL 0x0041d520
00519955  f30f108d98feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffe98]
0051995d  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
00519965  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0051996d  f30f58c8                  ADDSS XMM1,XMM0
00519971  f30f118da0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM1
00519979  e8e2551d00                CALL 0x006eef60
0051997e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00519984  50                        PUSH EAX
00519985  6a00                      PUSH 0x0
00519987  57                        PUSH EDI
00519988  8d859cfeffff              LEA EAX,[EBP + 0xfffffe9c]
0051998e  50                        PUSH EAX
0051998f  56                        PUSH ESI
00519990  6a00                      PUSH 0x0
00519992  6a0e                      PUSH 0xe
00519994  e887f1f0ff                CALL 0x00428b20
00519999  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
005199a1  eb08                      JMP 0x005199ab
005199a3  f30f108da8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea8]
005199ab  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
005199b3  0f2fc1                    COMISS XMM0,XMM1
005199b6  0f87b4feffff              JA 0x00519870
005199bc  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005199c3  0f8490000000              JZ 0x00519a59
005199c9  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
005199d1  f30f101574adba00          MOVSS XMM2,dword ptr [0x00baad74]
005199d9  0f2fca                    COMISS XMM1,XMM2
005199dc  7640                      JBE 0x00519a1e
005199de  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
005199e6  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
005199ec  f30f5e0550a9ba00          DIVSS XMM0,dword ptr [0x00baa950]
005199f4  8d8da0feffff              LEA ECX,[EBP + 0xfffffea0]
005199fa  c785a0feffff000000c0      MOV dword ptr [EBP + 0xfffffea0],0xc0000000
00519a04  f30f5cc8                  SUBSS XMM1,XMM0
00519a08  0f2fca                    COMISS XMM1,XMM2
00519a0b  f30f118da8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM1
00519a13  0f46c1                    CMOVBE EAX,ECX
00519a16  8b00                      MOV EAX,dword ptr [EAX]
00519a18  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
00519a1e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00519a21  85c0                      TEST EAX,EAX
00519a23  7406                      JZ 0x00519a2b
00519a25  80783400                  CMP byte ptr [EAX + 0x34],0x0
00519a29  752e                      JNZ 0x00519a59
00519a2b  6a00                      PUSH 0x0
00519a2d  8bcf                      MOV ECX,EDI
00519a2f  e81cf61b00                CALL 0x006d9050
00519a34  8d8f200f0000              LEA ECX,[EDI + 0xf20]
00519a3a  6840b6c700                PUSH 0xc7b640
00519a3f  e8ec6b4f00                CALL 0x00a10630
00519a44  84c0                      TEST AL,AL
00519a46  7411                      JZ 0x00519a59
00519a48  8b01                      MOV EAX,dword ptr [ECX]
00519a4a  898734030000              MOV dword ptr [EDI + 0x334],EAX
00519a50  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
00519a53  898738030000              MOV dword ptr [EDI + 0x338],EAX
00519a59  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00519a5c  83f85b                    CMP EAX,0x5b
00519a5f  0f8516010000              JNZ 0x00519b7b
00519a65  e8f6541d00                CALL 0x006eef60
00519a6a  33d2                      XOR EDX,EDX
00519a6c  b964000000                MOV ECX,0x64
00519a71  f7f1                      DIV ECX
00519a73  85d2                      TEST EDX,EDX
00519a75  0f850d020000              JNZ 0x00519c88
00519a7b  8bcf                      MOV ECX,EDI
00519a7d  e89ed11b00                CALL 0x006d6c20
00519a82  83f80a                    CMP EAX,0xa
00519a85  0f8dfd010000              JGE 0x00519c88
00519a8b  6a00                      PUSH 0x0
00519a8d  6800080001                PUSH 0x1000800
00519a92  8bcf                      MOV ECX,EDI
00519a94  e897d9efff                CALL 0x00417430
00519a99  84c0                      TEST AL,AL
00519a9b  0f85e7010000              JNZ 0x00519c88
00519aa1  e8ba541d00                CALL 0x006eef60
00519aa6  660f6ec0                  MOVD XMM0,EAX
00519aaa  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00519aae  c1e81f                    SHR EAX,0x1f
00519ab1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00519aba  660f5ac0                  CVTPD2PS XMM0,XMM0
00519abe  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00519ac6  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
00519ace  f30f58c0                  ADDSS XMM0,XMM0
00519ad2  e8493af0ff                CALL 0x0041d520
00519ad7  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00519adf  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
00519ae7  e874541d00                CALL 0x006eef60
00519aec  660f6ec8                  MOVD XMM1,EAX
00519af0  f30fe6c9                  CVTDQ2PD XMM1,XMM1
00519af4  c1e81f                    SHR EAX,0x1f
00519af7  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
00519b00  660f5ac1                  CVTPD2PS XMM0,XMM1
00519b04  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00519b0c  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
00519b14  f30f58c0                  ADDSS XMM0,XMM0
00519b18  e8233af0ff                CALL 0x0041d540
00519b1d  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00519b25  f30f11859cfeffff          MOVSS dword ptr [EBP + 0xfffffe9c],XMM0
00519b2d  f30f1085a8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea8]
00519b35  f30f1185a0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM0
00519b3d  e81e541d00                CALL 0x006eef60
00519b42  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00519b48  8db73c030000              LEA ESI,[EDI + 0x33c]
00519b4e  50                        PUSH EAX
00519b4f  6a00                      PUSH 0x0
00519b51  57                        PUSH EDI
00519b52  8d859cfeffff              LEA EAX,[EBP + 0xfffffe9c]
00519b58  50                        PUSH EAX
00519b59  56                        PUSH ESI
00519b5a  6a00                      PUSH 0x0
00519b5c  6a12                      PUSH 0x12
00519b5e  e8bdeff0ff                CALL 0x00428b20
00519b63  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
00519b69  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
00519b70  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
00519b76  e913010000                JMP 0x00519c8e
00519b7b  3de5000000                CMP EAX,0xe5
00519b80  7412                      JZ 0x00519b94
00519b82  3dfd000000                CMP EAX,0xfd
00519b87  740b                      JZ 0x00519b94
00519b89  3de6000000                CMP EAX,0xe6
00519b8e  0f85f4000000              JNZ 0x00519c88
00519b94  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00519b9b  0f85d7000000              JNZ 0x00519c78
00519ba1  e8ba531d00                CALL 0x006eef60
00519ba6  33d2                      XOR EDX,EDX
00519ba8  b964000000                MOV ECX,0x64
00519bad  f7f1                      DIV ECX
00519baf  85d2                      TEST EDX,EDX
00519bb1  7430                      JZ 0x00519be3
00519bb3  80bdcffeffff00            CMP byte ptr [EBP + 0xfffffecf],0x0
00519bba  0f84c8000000              JZ 0x00519c88
00519bc0  83bf000c000004            CMP dword ptr [EDI + 0xc00],0x4
00519bc7  0f87bb000000              JA 0x00519c88
00519bcd  e88e531d00                CALL 0x006eef60
00519bd2  33d2                      XOR EDX,EDX
00519bd4  b928000000                MOV ECX,0x28
00519bd9  f7f1                      DIV ECX
00519bdb  85d2                      TEST EDX,EDX
00519bdd  0f85a5000000              JNZ 0x00519c88
00519be3  6a00                      PUSH 0x0
00519be5  68000a0001                PUSH 0x1000a00
00519bea  8bcf                      MOV ECX,EDI
00519bec  e83fd8efff                CALL 0x00417430
00519bf1  84c0                      TEST AL,AL
00519bf3  0f858f000000              JNZ 0x00519c88
00519bf9  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00519c00  0f8582000000              JNZ 0x00519c88
00519c06  8d4f48                    LEA ECX,[EDI + 0x48]
00519c09  3885cffeffff              CMP byte ptr [EBP + 0xfffffecf],AL
00519c0f  7407                      JZ 0x00519c18
00519c11  b8dcd2b100                MOV EAX,0xb1d2dc
00519c16  eb1c                      JMP 0x00519c34
00519c18  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
00519c20  b8040db600                MOV EAX,0xb60d04
00519c25  0f2f8598feffff            COMISS XMM0,dword ptr [EBP + 0xfffffe98]
00519c2c  baec0cb600                MOV EDX,0xb60cec
00519c31  0f46c2                    CMOVBE EAX,EDX
00519c34  6a00                      PUSH 0x0
00519c36  50                        PUSH EAX
00519c37  e84407efff                CALL 0x0040a380
00519c3c  f30f108598feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe98]
00519c44  8db73c030000              LEA ESI,[EDI + 0x33c]
00519c4a  f30f108dbcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffebc]
00519c52  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00519c5a  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
00519c62  0f2fc1                    COMISS XMM0,XMM1
00519c65  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
00519c6d  0f97c0                    SETA AL
00519c70  888748010000              MOV byte ptr [EDI + 0x148],AL
00519c76  eb1e                      JMP 0x00519c96
00519c78  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
00519c80  8db73c030000              LEA ESI,[EDI + 0x33c]
00519c86  eb0e                      JMP 0x00519c96
00519c88  8db73c030000              LEA ESI,[EDI + 0x33c]
00519c8e  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
00519c96  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
00519c9c  018710040000              ADD dword ptr [EDI + 0x410],EAX
00519ca2  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
00519caa  0f2fc8                    COMISS XMM1,XMM0
00519cad  7610                      JBE 0x00519cbf
00519caf  f30f5c8f9c030000          SUBSS XMM1,dword ptr [EDI + 0x39c]
00519cb7  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
00519cbf  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00519cc3  8d4f48                    LEA ECX,[EDI + 0x48]
00519cc6  7468                      JZ 0x00519d30
00519cc8  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00519ccf  745f                      JZ 0x00519d30
00519cd1  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00519cd7  25000a0001                AND EAX,0x1000a00
00519cdc  83c800                    OR EAX,0x0
00519cdf  0f8483000000              JZ 0x00519d68
00519ce5  837f285b                  CMP dword ptr [EDI + 0x28],0x5b
00519ce9  747d                      JZ 0x00519d68
00519ceb  ff7720                    PUSH dword ptr [EDI + 0x20]
00519cee  8bcf                      MOV ECX,EDI
00519cf0  6a0f                      PUSH 0xf
00519cf2  e8192a1900                CALL 0x006ac710
00519cf7  8d4f48                    LEA ECX,[EDI + 0x48]
00519cfa  84c0                      TEST AL,AL
00519cfc  746a                      JZ 0x00519d68
00519cfe  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
00519d06  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00519d09  3de5000000                CMP EAX,0xe5
00519d0e  740e                      JZ 0x00519d1e
00519d10  3dfd000000                CMP EAX,0xfd
00519d15  7407                      JZ 0x00519d1e
00519d17  3de6000000                CMP EAX,0xe6
00519d1c  753d                      JNZ 0x00519d5b
00519d1e  80bdcffeffff00            CMP byte ptr [EBP + 0xfffffecf],0x0
00519d25  6a00                      PUSH 0x0
00519d27  7418                      JZ 0x00519d41
00519d29  68d0d4b100                PUSH 0xb1d4d0
00519d2e  eb26                      JMP 0x00519d56
00519d30  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00519d33  83f85b                    CMP EAX,0x5b
00519d36  75d1                      JNZ 0x00519d09
00519d38  6a00                      PUSH 0x0
00519d3a  6854bcb100                PUSH 0xb1bc54
00519d3f  eb15                      JMP 0x00519d56
00519d41  0f2f8598feffff            COMISS XMM0,dword ptr [EBP + 0xfffffe98]
00519d48  7607                      JBE 0x00519d51
00519d4a  68e80db600                PUSH 0xb60de8
00519d4f  eb05                      JMP 0x00519d56
00519d51  68dc0db600                PUSH 0xb60ddc
00519d56  e82506efff                CALL 0x0040a380
00519d5b  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00519d65  8d4f48                    LEA ECX,[EDI + 0x48]
00519d68  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00519d6b  3de5000000                CMP EAX,0xe5
00519d70  0f8595040000              JNZ 0x0051a20b
00519d76  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00519d7a  0f8410060000              JZ 0x0051a390
00519d80  68dcd2b100                PUSH 0xb1d2dc
00519d85  8d4f78                    LEA ECX,[EDI + 0x78]
00519d88  e84310efff                CALL 0x0040add0
00519d8d  84c0                      TEST AL,AL
00519d8f  0f84fb050000              JZ 0x0051a390
00519d95  80bdcffeffff00            CMP byte ptr [EBP + 0xfffffecf],0x0
00519d9c  0f8413040000              JZ 0x0051a1b5
00519da2  68f00db600                PUSH 0xb60df0
00519da7  8d4f48                    LEA ECX,[EDI + 0x48]
00519daa  e82107efff                CALL 0x0040a4d0
00519daf  84c0                      TEST AL,AL
00519db1  0f845c010000              JZ 0x00519f13
00519db7  6a00                      PUSH 0x0
00519db9  6a01                      PUSH 0x1
00519dbb  57                        PUSH EDI
00519dbc  51                        PUSH ECX
00519dbd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00519dc3  c704240000f042            MOV dword ptr [ESP],0x42f00000
00519dca  56                        PUSH ESI
00519dcb  c787b80b000000007042      MOV dword ptr [EDI + 0xbb8],0x42700000
00519dd5  e886a51e00                CALL 0x00704360
00519dda  8b97f00b0000              MOV EDX,dword ptr [EDI + 0xbf0]
00519de0  8b8ffc0b0000              MOV ECX,dword ptr [EDI + 0xbfc]
00519de6  8995b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EDX
00519dec  8b87000c0000              MOV EAX,dword ptr [EDI + 0xc00]
00519df2  0387fc0b0000              ADD EAX,dword ptr [EDI + 0xbfc]
00519df8  898d94feffff              MOV dword ptr [EBP + 0xfffffe94],ECX
00519dfe  3bc8                      CMP ECX,EAX
00519e00  0f8401010000              JZ 0x00519f07
00519e06  85d2                      TEST EDX,EDX
00519e08  7404                      JZ 0x00519e0e
00519e0a  8b32                      MOV ESI,dword ptr [EDX]
00519e0c  eb02                      JMP 0x00519e10
00519e0e  33f6                      XOR ESI,ESI
00519e10  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
00519e13  8bd1                      MOV EDX,ECX
00519e15  48                        DEC EAX
00519e16  c1ea02                    SHR EDX,0x2
00519e19  23d0                      AND EDX,EAX
00519e1b  83e103                    AND ECX,0x3
00519e1e  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00519e21  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
00519e24  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
00519e27  85f6                      TEST ESI,ESI
00519e29  0f84c6000000              JZ 0x00519ef5
00519e2f  837e2809                  CMP dword ptr [ESI + 0x28],0x9
00519e33  0f85bc000000              JNZ 0x00519ef5
00519e39  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
00519e41  f30f109660030000          MOVSS XMM2,dword ptr [ESI + 0x360]
00519e49  0f28c1                    MOVAPS XMM0,XMM1
00519e4c  f30f59c1                  MULSS XMM0,XMM1
00519e50  c7863004000000000000      MOV dword ptr [ESI + 0x430],0x0
00519e5a  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
00519e62  0f28ca                    MOVAPS XMM1,XMM2
00519e65  f30f59ca                  MULSS XMM1,XMM2
00519e69  c786100400000000b8c1      MOV dword ptr [ESI + 0x410],0xc1b80000
00519e73  c7861404000000000000      MOV dword ptr [ESI + 0x414],0x0
00519e7d  c786180400007b14aebd      MOV dword ptr [ESI + 0x418],0xbdae147b
00519e87  f30f58c1                  ADDSS XMM0,XMM1
00519e8b  f30f1195bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM2
00519e93  e8b8bbf1ff                CALL 0x00435a50
00519e98  0f2f85c4feffff            COMISS XMM0,dword ptr [EBP + 0xfffffec4]
00519e9f  f30f1095c8feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffec8]
00519ea7  761e                      JBE 0x00519ec7
00519ea9  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00519eb1  f30f5ec8                  DIVSS XMM1,XMM0
00519eb5  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00519ebd  f30f59c1                  MULSS XMM0,XMM1
00519ec1  f30f59d1                  MULSS XMM2,XMM1
00519ec5  eb08                      JMP 0x00519ecf
00519ec7  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00519ecf  8b8638040000              MOV EAX,dword ptr [ESI + 0x438]
00519ed5  81a63c040000fffffffe      AND dword ptr [ESI + 0x43c],0xfeffffff
00519edf  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
00519ee7  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
00519eef  898638040000              MOV dword ptr [ESI + 0x438],EAX
00519ef5  8b8d94feffff              MOV ECX,dword ptr [EBP + 0xfffffe94]
00519efb  8b95b4feffff              MOV EDX,dword ptr [EBP + 0xfffffeb4]
00519f01  41                        INC ECX
00519f02  e9e5feffff                JMP 0x00519dec
00519f07  8bcf                      MOV ECX,EDI
00519f09  e8b2e21b00                CALL 0x006d81c0
00519f0e  e97d040000                JMP 0x0051a390
00519f13  e848501d00                CALL 0x006eef60
00519f18  83e001                    AND EAX,0x1
00519f1b  8d7001                    LEA ESI,[EAX + 0x1]
00519f1e  89b5c8feffff              MOV dword ptr [EBP + 0xfffffec8],ESI
00519f24  e837501d00                CALL 0x006eef60
00519f29  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
00519f31  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
00519f37  660f6ec0                  MOVD XMM0,EAX
00519f3b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00519f3f  c1e81f                    SHR EAX,0x1f
00519f42  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00519f4b  660f5ac0                  CVTPD2PS XMM0,XMM0
00519f4f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00519f57  f30f59c1                  MULSS XMM0,XMM1
00519f5b  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
00519f63  660f6ec6                  MOVD XMM0,ESI
00519f67  0f5bc0                    CVTDQ2PS XMM0,XMM0
00519f6a  f30f5ec8                  DIVSS XMM1,XMM0
00519f6e  f30f118da0feffff          MOVSS dword ptr [EBP + 0xfffffea0],XMM1
00519f76  e8b54ff2ff                CALL 0x0043ef30
00519f7b  f687ec03000001            TEST byte ptr [EDI + 0x3ec],0x1
00519f82  b800300000                MOV EAX,0x3000
00519f87  7505                      JNZ 0x00519f8e
00519f89  b800280000                MOV EAX,0x2800
00519f8e  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00519f96  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
00519f9e  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00519fa6  898528ffffff              MOV dword ptr [EBP + 0xffffff28],EAX
00519fac  c7852cffffff00000001      MOV dword ptr [EBP + 0xffffff2c],0x1000000
00519fb6  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00519fbe  85f6                      TEST ESI,ESI
00519fc0  0f847a010000              JZ 0x0051a140
00519fc6  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
00519fce  6690                      NOP
00519fd0  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00519fd8  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
00519fe0  e83b35f0ff                CALL 0x0041d520
00519fe5  f30f1185a8feffff          MOVSS dword ptr [EBP + 0xfffffea8],XMM0
00519fed  f30f1085b4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeb4]
00519ff5  e84635f0ff                CALL 0x0041d540
00519ffa  f30f108da8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffea8]
0051a002  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
0051a008  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
0051a010  8bcf                      MOV ECX,EDI
0051a012  50                        PUSH EAX
0051a013  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
0051a01b  8d8580feffff              LEA EAX,[EBP + 0xfffffe80]
0051a021  6a00                      PUSH 0x0
0051a023  50                        PUSH EAX
0051a024  8d873c030000              LEA EAX,[EDI + 0x33c]
0051a02a  f30f118580feffff          MOVSS dword ptr [EBP + 0xfffffe80],XMM0
0051a032  50                        PUSH EAX
0051a033  f30f118d84feffff          MOVSS dword ptr [EBP + 0xfffffe84],XMM1
0051a03b  e8a0121b00                CALL 0x006cb2e0
0051a040  8bf0                      MOV ESI,EAX
0051a042  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0051a048  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0051a04e  c786300400000000a042      MOV dword ptr [ESI + 0x430],0x42a00000
0051a058  c7861404000000000000      MOV dword ptr [ESI + 0x414],0x0
0051a062  c786180400005c8fc2bd      MOV dword ptr [ESI + 0x418],0xbdc28f5c
0051a06c  85c9                      TEST ECX,ECX
0051a06e  741e                      JZ 0x0051a08e
0051a070  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
0051a076  81c1cc030000              ADD ECX,0x3cc
0051a07c  8d85b4feffff              LEA EAX,[EBP + 0xfffffeb4]
0051a082  50                        PUSH EAX
0051a083  e88851fbff                CALL 0x004cf210
0051a088  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0051a08e  50                        PUSH EAX
0051a08f  8bcf                      MOV ECX,EDI
0051a091  8938                      MOV dword ptr [EAX],EDI
0051a093  e8583cfbff                CALL 0x004cdcf0
0051a098  8d85b4feffff              LEA EAX,[EBP + 0xfffffeb4]
0051a09e  c785b4feffff00000000      MOV dword ptr [EBP + 0xfffffeb4],0x0
0051a0a8  50                        PUSH EAX
0051a0a9  8d8ff00b0000              LEA ECX,[EDI + 0xbf0]
0051a0af  e8dcc9f9ff                CALL 0x004b6a90
0051a0b4  8b87fc0b0000              MOV EAX,dword ptr [EDI + 0xbfc]
0051a0ba  0387000c0000              ADD EAX,dword ptr [EDI + 0xc00]
0051a0c0  8b8ff80b0000              MOV ECX,dword ptr [EDI + 0xbf8]
0051a0c6  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
0051a0cc  49                        DEC ECX
0051a0cd  8d50ff                    LEA EDX,[EAX + -0x1]
0051a0d0  8bc2                      MOV EAX,EDX
0051a0d2  83e203                    AND EDX,0x3
0051a0d5  c1e802                    SHR EAX,0x2
0051a0d8  23c8                      AND ECX,EAX
0051a0da  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
0051a0e0  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0051a0e3  8b0c90                    MOV ECX,dword ptr [EAX + EDX*0x4]
0051a0e6  8d0490                    LEA EAX,[EAX + EDX*0x4]
0051a0e9  8985a8feffff              MOV dword ptr [EBP + 0xfffffea8],EAX
0051a0ef  85c9                      TEST ECX,ECX
0051a0f1  741e                      JZ 0x0051a111
0051a0f3  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
0051a0f9  81c1cc030000              ADD ECX,0x3cc
0051a0ff  8d85b4feffff              LEA EAX,[EBP + 0xfffffeb4]
0051a105  50                        PUSH EAX
0051a106  e80551fbff                CALL 0x004cf210
0051a10b  8b85a8feffff              MOV EAX,dword ptr [EBP + 0xfffffea8]
0051a111  50                        PUSH EAX
0051a112  8bce                      MOV ECX,ESI
0051a114  8930                      MOV dword ptr [EAX],ESI
0051a116  e8d53bfbff                CALL 0x004cdcf0
0051a11b  83adc8feffff01            SUB dword ptr [EBP + 0xfffffec8],0x1
0051a122  f30f1085a0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffea0]
0051a12a  f30f5885bcfeffff          ADDSS XMM0,dword ptr [EBP + 0xfffffebc]
0051a132  f30f1185bcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM0
0051a13a  0f8590feffff              JNZ 0x00519fd0
0051a140  8d4dc0                    LEA ECX,[EBP + -0x40]
0051a143  e828d0eeff                CALL 0x00407170
0051a148  6840b6c700                PUSH 0xc7b640
0051a14d  50                        PUSH EAX
0051a14e  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
0051a154  c785b0feffff00000000      MOV dword ptr [EBP + 0xfffffeb0],0x0
0051a15e  50                        PUSH EAX
0051a15f  8d973c030000              LEA EDX,[EDI + 0x33c]
0051a165  c785b4feffff000090c1      MOV dword ptr [EBP + 0xfffffeb4],0xc1900000
0051a16f  b903000000                MOV ECX,0x3
0051a174  e877db1b00                CALL 0x006d7cf0
0051a179  83c40c                    ADD ESP,0xc
0051a17c  8bf0                      MOV ESI,EAX
0051a17e  8bce                      MOV ECX,ESI
0051a180  57                        PUSH EDI
0051a181  e82ac3f3ff                CALL 0x004564b0
0051a186  51                        PUSH ECX
0051a187  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051a18e  6a00                      PUSH 0x0
0051a190  6a02                      PUSH 0x2
0051a192  51                        PUSH ECX
0051a193  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051a19a  8bcf                      MOV ECX,EDI
0051a19c  689e000000                PUSH 0x9e
0051a1a1  c78658030000000020c1      MOV dword ptr [ESI + 0x358],0xc1200000
0051a1ab  e8f0c91b00                CALL 0x006d6ba0
0051a1b0  e9db010000                JMP 0x0051a390
0051a1b5  51                        PUSH ECX
0051a1b6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051a1bd  6a00                      PUSH 0x0
0051a1bf  6a02                      PUSH 0x2
0051a1c1  51                        PUSH ECX
0051a1c2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051a1c9  8bcf                      MOV ECX,EDI
0051a1cb  689e000000                PUSH 0x9e
0051a1d0  e8cbc91b00                CALL 0x006d6ba0
0051a1d5  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
0051a1db  e8504df2ff                CALL 0x0043ef30
0051a1e0  50                        PUSH EAX
0051a1e1  6a09                      PUSH 0x9
0051a1e3  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
0051a1e9  c785b0feffff00002041      MOV dword ptr [EBP + 0xfffffeb0],0x41200000
0051a1f3  50                        PUSH EAX
0051a1f4  56                        PUSH ESI
0051a1f5  8bcf                      MOV ECX,EDI
0051a1f7  c785b4feffff0000c040      MOV dword ptr [EBP + 0xfffffeb4],0x40c00000
0051a201  e8da101b00                CALL 0x006cb2e0
0051a206  e985010000                JMP 0x0051a390
0051a20b  3dfd000000                CMP EAX,0xfd
0051a210  0f8581000000              JNZ 0x0051a297
0051a216  68dcd2b100                PUSH 0xb1d2dc
0051a21b  e8100eefff                CALL 0x0040b030
0051a220  84c0                      TEST AL,AL
0051a222  0f8468010000              JZ 0x0051a390
0051a228  51                        PUSH ECX
0051a229  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051a230  6a00                      PUSH 0x0
0051a232  6a02                      PUSH 0x2
0051a234  51                        PUSH ECX
0051a235  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051a23c  8bcf                      MOV ECX,EDI
0051a23e  689e000000                PUSH 0x9e
0051a243  e858c91b00                CALL 0x006d6ba0
0051a248  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
0051a24e  e8dd4cf2ff                CALL 0x0043ef30
0051a253  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
0051a259  8bcf                      MOV ECX,EDI
0051a25b  838d28ffffff01            OR dword ptr [EBP + 0xffffff28],0x1
0051a262  89852cffffff              MOV dword ptr [EBP + 0xffffff2c],EAX
0051a268  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
0051a26e  50                        PUSH EAX
0051a26f  6a09                      PUSH 0x9
0051a271  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
0051a277  c785b0feffff00002041      MOV dword ptr [EBP + 0xfffffeb0],0x41200000
0051a281  50                        PUSH EAX
0051a282  56                        PUSH ESI
0051a283  c785b4feffff0000c040      MOV dword ptr [EBP + 0xfffffeb4],0x40c00000
0051a28d  e84e101b00                CALL 0x006cb2e0
0051a292  e9f9000000                JMP 0x0051a390
0051a297  3de6000000                CMP EAX,0xe6
0051a29c  0f85ee000000              JNZ 0x0051a390
0051a2a2  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0051a2a8  85c0                      TEST EAX,EAX
0051a2aa  7e07                      JLE 0x0051a2b3
0051a2ac  48                        DEC EAX
0051a2ad  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0051a2b3  68dcd2b100                PUSH 0xb1d2dc
0051a2b8  e8730defff                CALL 0x0040b030
0051a2bd  84c0                      TEST AL,AL
0051a2bf  0f84cb000000              JZ 0x0051a390
0051a2c5  a17816c700                MOV EAX,[0x00c71678]
0051a2ca  56                        PUSH ESI
0051a2cb  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0051a2d1  8b88f8110000              MOV ECX,dword ptr [EAX + 0x11f8]
0051a2d7  e864a74200                CALL 0x00944a40
0051a2dc  84c0                      TEST AL,AL
0051a2de  0f84ac000000              JZ 0x0051a390
0051a2e4  68b8d4b100                PUSH 0xb1d4b8
0051a2e9  8d4f48                    LEA ECX,[EDI + 0x48]
0051a2ec  e8df0eefff                CALL 0x0040b1d0
0051a2f1  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0051a2f9  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0051a2fe  f30f5e0d24a3ba00          DIVSS XMM1,dword ptr [0x00baa324]
0051a306  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0051a30a  f30f5e1524a3ba00          DIVSS XMM2,dword ptr [0x00baa324]
0051a312  f30f118db4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM1
0051a31a  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0051a322  f30f1195b0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM2
0051a32a  e831faf7ff                CALL 0x00499d60
0051a32f  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
0051a337  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
0051a33d  6a00                      PUSH 0x0
0051a33f  57                        PUSH EDI
0051a340  50                        PUSH EAX
0051a341  6a03                      PUSH 0x3
0051a343  51                        PUSH ECX
0051a344  f30f110424                MOVSS dword ptr [ESP],XMM0
0051a349  56                        PUSH ESI
0051a34a  6a02                      PUSH 0x2
0051a34c  e8bf4f4500                CALL 0x0096f310
0051a351  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
0051a359  83c41c                    ADD ESP,0x1c
0051a35c  0f2f8598feffff            COMISS XMM0,dword ptr [EBP + 0xfffffe98]
0051a363  8bc8                      MOV ECX,EAX
0051a365  760a                      JBE 0x0051a371
0051a367  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
0051a36f  eb08                      JMP 0x0051a379
0051a371  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
0051a379  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
0051a381  8b01                      MOV EAX,dword ptr [ECX]
0051a383  ff500c                    CALL dword ptr [EAX + 0xc]
0051a386  c787a00b00003c000000      MOV dword ptr [EDI + 0xba0],0x3c
0051a390  817f28e6000000            CMP dword ptr [EDI + 0x28],0xe6
0051a397  0f858f000000              JNZ 0x0051a42c
0051a39d  a1040db600                MOV EAX,[0x00b60d04]
0051a3a2  8945a8                    MOV dword ptr [EBP + -0x58],EAX
0051a3a5  66a1080db600              MOV AX,[0x00b60d08]
0051a3ab  668945ac                  MOV word ptr [EBP + -0x54],AX
0051a3af  a00a0db600                MOV AL,[0x00b60d0a]
0051a3b4  c745bc0f000000            MOV dword ptr [EBP + -0x44],0xf
0051a3bb  c745b807000000            MOV dword ptr [EBP + -0x48],0x7
0051a3c2  8845ae                    MOV byte ptr [EBP + -0x52],AL
0051a3c5  c645af00                  MOV byte ptr [EBP + -0x51],0x0
0051a3c9  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0051a3d0  8d45d4                    LEA EAX,[EBP + -0x2c]
0051a3d3  8bb5acfeffff              MOV ESI,dword ptr [EBP + 0xfffffeac]
0051a3d9  8d4f78                    LEA ECX,[EDI + 0x78]
0051a3dc  83ce01                    OR ESI,0x1
0051a3df  50                        PUSH EAX
0051a3e0  89b5bcfeffff              MOV dword ptr [EBP + 0xfffffebc],ESI
0051a3e6  e80588f3ff                CALL 0x00452bf0
0051a3eb  8bc8                      MOV ECX,EAX
0051a3ed  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0051a3f4  8d55a8                    LEA EDX,[EBP + -0x58]
0051a3f7  8b4110                    MOV EAX,dword ptr [ECX + 0x10]
0051a3fa  83ce02                    OR ESI,0x2
0051a3fd  837dbc10                  CMP dword ptr [EBP + -0x44],0x10
0051a401  89b5acfeffff              MOV dword ptr [EBP + 0xfffffeac],ESI
0051a407  0f4355a8                  CMOVNC EDX,dword ptr [EBP + -0x58]
0051a40b  83791410                  CMP dword ptr [ECX + 0x14],0x10
0051a40f  7202                      JC 0x0051a413
0051a411  8b09                      MOV ECX,dword ptr [ECX]
0051a413  6a07                      PUSH 0x7
0051a415  52                        PUSH EDX
0051a416  8bd0                      MOV EDX,EAX
0051a418  e8c326efff                CALL 0x0040cae0
0051a41d  83c408                    ADD ESP,0x8
0051a420  84c0                      TEST AL,AL
0051a422  740e                      JZ 0x0051a432
0051a424  8b7590                    MOV ESI,dword ptr [EBP + -0x70]
0051a427  e985000000                JMP 0x0051a4b1
0051a42c  8bb5acfeffff              MOV ESI,dword ptr [EBP + 0xfffffeac]
0051a432  f30f7e05ec0cb600          MOVQ XMM0,qword ptr [0x00b60cec]
0051a43a  a0f40cb600                MOV AL,[0x00b60cf4]
0051a43f  c745a40f000000            MOV dword ptr [EBP + -0x5c],0xf
0051a446  c745a009000000            MOV dword ptr [EBP + -0x60],0x9
0051a44d  660fd64590                MOVQ qword ptr [EBP + -0x70],XMM0
0051a452  884598                    MOV byte ptr [EBP + -0x68],AL
0051a455  c6459900                  MOV byte ptr [EBP + -0x67],0x0
0051a459  8d8578ffffff              LEA EAX,[EBP + 0xffffff78]
0051a45f  c745fc02000000            MOV dword ptr [EBP + -0x4],0x2
0051a466  83ce04                    OR ESI,0x4
0051a469  8d4f78                    LEA ECX,[EDI + 0x78]
0051a46c  50                        PUSH EAX
0051a46d  89b5bcfeffff              MOV dword ptr [EBP + 0xfffffebc],ESI
0051a473  e87887f3ff                CALL 0x00452bf0
0051a478  83ce08                    OR ESI,0x8
0051a47b  8d4d90                    LEA ECX,[EBP + -0x70]
0051a47e  837da410                  CMP dword ptr [EBP + -0x5c],0x10
0051a482  89b5acfeffff              MOV dword ptr [EBP + 0xfffffeac],ESI
0051a488  8b7590                    MOV ESI,dword ptr [EBP + -0x70]
0051a48b  0f43ce                    CMOVNC ECX,ESI
0051a48e  83781410                  CMP dword ptr [EAX + 0x14],0x10
0051a492  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
0051a495  7202                      JC 0x0051a499
0051a497  8b00                      MOV EAX,dword ptr [EAX]
0051a499  6a09                      PUSH 0x9
0051a49b  51                        PUSH ECX
0051a49c  8bc8                      MOV ECX,EAX
0051a49e  e83d26efff                CALL 0x0040cae0
0051a4a3  83c408                    ADD ESP,0x8
0051a4a6  c685c3feffff00            MOV byte ptr [EBP + 0xfffffec3],0x0
0051a4ad  84c0                      TEST AL,AL
0051a4af  7407                      JZ 0x0051a4b8
0051a4b1  c685c3feffff01            MOV byte ptr [EBP + 0xfffffec3],0x1
0051a4b8  8b85acfeffff              MOV EAX,dword ptr [EBP + 0xfffffeac]
0051a4be  a808                      TEST AL,0x8
0051a4c0  745b                      JZ 0x0051a51d
0051a4c2  8b558c                    MOV EDX,dword ptr [EBP + -0x74]
0051a4c5  83e0f7                    AND EAX,0xfffffff7
0051a4c8  8985acfeffff              MOV dword ptr [EBP + 0xfffffeac],EAX
0051a4ce  83fa10                    CMP EDX,0x10
0051a4d1  7235                      JC 0x0051a508
0051a4d3  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
0051a4d9  42                        INC EDX
0051a4da  8bc1                      MOV EAX,ECX
0051a4dc  81fa00100000              CMP EDX,0x1000
0051a4e2  7214                      JC 0x0051a4f8
0051a4e4  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0051a4e7  83c223                    ADD EDX,0x23
0051a4ea  2bc1                      SUB EAX,ECX
0051a4ec  83c0fc                    ADD EAX,-0x4
0051a4ef  83f81f                    CMP EAX,0x1f
0051a4f2  0f87ff000000              JA 0x0051a5f7
0051a4f8  52                        PUSH EDX
0051a4f9  51                        PUSH ECX
0051a4fa  e85d4c5d00                CALL 0x00aef15c
0051a4ff  8b85acfeffff              MOV EAX,dword ptr [EBP + 0xfffffeac]
0051a505  83c408                    ADD ESP,0x8
0051a508  c7458800000000            MOV dword ptr [EBP + -0x78],0x0
0051a50f  c7458c0f000000            MOV dword ptr [EBP + -0x74],0xf
0051a516  c68578ffffff00            MOV byte ptr [EBP + 0xffffff78],0x0
0051a51d  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0051a524  a804                      TEST AL,0x4
0051a526  7440                      JZ 0x0051a568
0051a528  8b4da4                    MOV ECX,dword ptr [EBP + -0x5c]
0051a52b  83e0fb                    AND EAX,0xfffffffb
0051a52e  8985acfeffff              MOV dword ptr [EBP + 0xfffffeac],EAX
0051a534  83f910                    CMP ECX,0x10
0051a537  722f                      JC 0x0051a568
0051a539  41                        INC ECX
0051a53a  8bc6                      MOV EAX,ESI
0051a53c  81f900100000              CMP ECX,0x1000
0051a542  7214                      JC 0x0051a558
0051a544  8b76fc                    MOV ESI,dword ptr [ESI + -0x4]
0051a547  83c123                    ADD ECX,0x23
0051a54a  2bc6                      SUB EAX,ESI
0051a54c  83c0fc                    ADD EAX,-0x4
0051a54f  83f81f                    CMP EAX,0x1f
0051a552  0f879f000000              JA 0x0051a5f7
0051a558  51                        PUSH ECX
0051a559  56                        PUSH ESI
0051a55a  e8fd4b5d00                CALL 0x00aef15c
0051a55f  8b85acfeffff              MOV EAX,dword ptr [EBP + 0xfffffeac]
0051a565  83c408                    ADD ESP,0x8
0051a568  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0051a56f  a802                      TEST AL,0x2
0051a571  7451                      JZ 0x0051a5c4
0051a573  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0051a576  83e0fd                    AND EAX,0xfffffffd
0051a579  8985acfeffff              MOV dword ptr [EBP + 0xfffffeac],EAX
0051a57f  83fa10                    CMP EDX,0x10
0051a582  722e                      JC 0x0051a5b2
0051a584  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0051a587  42                        INC EDX
0051a588  8bc1                      MOV EAX,ECX
0051a58a  81fa00100000              CMP EDX,0x1000
0051a590  7210                      JC 0x0051a5a2
0051a592  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0051a595  83c223                    ADD EDX,0x23
0051a598  2bc1                      SUB EAX,ECX
0051a59a  83c0fc                    ADD EAX,-0x4
0051a59d  83f81f                    CMP EAX,0x1f
0051a5a0  7755                      JA 0x0051a5f7
0051a5a2  52                        PUSH EDX
0051a5a3  51                        PUSH ECX
0051a5a4  e8b34b5d00                CALL 0x00aef15c
0051a5a9  8b85acfeffff              MOV EAX,dword ptr [EBP + 0xfffffeac]
0051a5af  83c408                    ADD ESP,0x8
0051a5b2  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0051a5b9  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0051a5c0  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0051a5c4  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0051a5cb  a801                      TEST AL,0x1
0051a5cd  7438                      JZ 0x0051a607
0051a5cf  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
0051a5d2  83f810                    CMP EAX,0x10
0051a5d5  7230                      JC 0x0051a607
0051a5d7  8b4da8                    MOV ECX,dword ptr [EBP + -0x58]
0051a5da  8d5001                    LEA EDX,[EAX + 0x1]
0051a5dd  8bc1                      MOV EAX,ECX
0051a5df  81fa00100000              CMP EDX,0x1000
0051a5e5  7216                      JC 0x0051a5fd
0051a5e7  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0051a5ea  83c223                    ADD EDX,0x23
0051a5ed  2bc1                      SUB EAX,ECX
0051a5ef  83c0fc                    ADD EAX,-0x4
0051a5f2  83f81f                    CMP EAX,0x1f
0051a5f5  7606                      JBE 0x0051a5fd
0051a5f7  ff159488b100              CALL dword ptr [0x00b18894]
0051a5fd  52                        PUSH EDX
0051a5fe  51                        PUSH ECX
0051a5ff  e8584b5d00                CALL 0x00aef15c
0051a604  83c408                    ADD ESP,0x8
0051a607  80bdc3feffff00            CMP byte ptr [EBP + 0xfffffec3],0x0
0051a60e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0051a616  740a                      JZ 0x0051a622
0051a618  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
0051a620  eb08                      JMP 0x0051a62a
0051a622  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0051a62a  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0051a630  2500020000                AND EAX,0x200
0051a635  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0051a63d  83c800                    OR EAX,0x0
0051a640  746e                      JZ 0x0051a6b0
0051a642  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051a649  7565                      JNZ 0x0051a6b0
0051a64b  6a00                      PUSH 0x0
0051a64d  8d8f14040000              LEA ECX,[EDI + 0x414]
0051a653  e8a8bc2c00                CALL 0x007e6300
0051a658  8db73c030000              LEA ESI,[EDI + 0x33c]
0051a65e  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0051a665  0f840e040000              JZ 0x0051aa79
0051a66b  837f285b                  CMP dword ptr [EDI + 0x28],0x5b
0051a66f  0f8504040000              JNZ 0x0051aa79
0051a675  6683bf760c000000          CMP word ptr [EDI + 0xc76],0x0
0051a67d  0f85f6030000              JNZ 0x0051aa79
0051a683  e8d8481d00                CALL 0x006eef60
0051a688  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051a68e  50                        PUSH EAX
0051a68f  6a00                      PUSH 0x0
0051a691  57                        PUSH EDI
0051a692  6840b6c700                PUSH 0xc7b640
0051a697  56                        PUSH ESI
0051a698  6a00                      PUSH 0x0
0051a69a  6a19                      PUSH 0x19
0051a69c  e87fe4f0ff                CALL 0x00428b20
0051a6a1  c7808401000003000000      MOV dword ptr [EAX + 0x184],0x3
0051a6ab  e9c9030000                JMP 0x0051aa79
0051a6b0  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051a6b6  f30f100db8a2ba00          MOVSS XMM1,dword ptr [0x00baa2b8]
0051a6be  81c1a8ba0100              ADD ECX,0x1baa8
0051a6c4  6a01                      PUSH 0x1
0051a6c6  51                        PUSH ECX
0051a6c7  6a09                      PUSH 0x9
0051a6c9  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
0051a6d1  e8aa394a00                CALL 0x009be080
0051a6d6  85c0                      TEST EAX,EAX
0051a6d8  742a                      JZ 0x0051a704
0051a6da  837f285b                  CMP dword ptr [EDI + 0x28],0x5b
0051a6de  7524                      JNZ 0x0051a704
0051a6e0  6a00                      PUSH 0x0
0051a6e2  6800000020                PUSH 0x20000000
0051a6e7  8bcf                      MOV ECX,EDI
0051a6e9  e842cdefff                CALL 0x00417430
0051a6ee  84c0                      TEST AL,AL
0051a6f0  7512                      JNZ 0x0051a704
0051a6f2  f30f100dd4a1ba00          MOVSS XMM1,dword ptr [0x00baa1d4]
0051a6fa  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
0051a702  eb08                      JMP 0x0051a70c
0051a704  f30f100db8a2ba00          MOVSS XMM1,dword ptr [0x00baa2b8]
0051a70c  80bdcffeffff00            CMP byte ptr [EBP + 0xfffffecf],0x0
0051a713  0f28d1                    MOVAPS XMM2,XMM1
0051a716  f30f1195c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM2
0051a71e  741b                      JZ 0x0051a73b
0051a720  f30f590db4a5ba00          MULSS XMM1,dword ptr [0x00baa5b4]
0051a728  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
0051a730  0f28d1                    MOVAPS XMM2,XMM1
0051a733  f30f118dc8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM1
0051a73b  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
0051a743  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
0051a74a  f30f101d70cbba00          MOVSS XMM3,dword ptr [0x00bacb70]
0051a752  760b                      JBE 0x0051a75f
0051a754  0f57d3                    XORPS XMM2,XMM3
0051a757  f30f1195c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM2
0051a75f  0f2f8764030000            COMISS XMM0,dword ptr [EDI + 0x364]
0051a766  760b                      JBE 0x0051a773
0051a768  0f57cb                    XORPS XMM1,XMM3
0051a76b  f30f118dbcfeffff          MOVSS dword ptr [EBP + 0xfffffebc],XMM1
0051a773  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051a77a  7464                      JZ 0x0051a7e0
0051a77c  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
0051a782  0f28d0                    MOVAPS XMM2,XMM0
0051a785  50                        PUSH EAX
0051a786  8bcf                      MOV ECX,EDI
0051a788  e843db1b00                CALL 0x006d82d0
0051a78d  f30f108dc8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffec8]
0051a795  8bf0                      MOV ESI,EAX
0051a797  f30f1085bcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffebc]
0051a79f  f30f59c0                  MULSS XMM0,XMM0
0051a7a3  f30f59c9                  MULSS XMM1,XMM1
0051a7a7  f30f58c1                  ADDSS XMM0,XMM1
0051a7ab  e8a0b2f1ff                CALL 0x00435a50
0051a7b0  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0051a7b8  f30f108dbcfeffff          MOVSS XMM1,dword ptr [EBP + 0xfffffebc]
0051a7c0  0f28d0                    MOVAPS XMM2,XMM0
0051a7c3  f30f594604                MULSS XMM0,dword ptr [ESI + 0x4]
0051a7c8  f30f5916                  MULSS XMM2,dword ptr [ESI]
0051a7cc  f30f58c8                  ADDSS XMM1,XMM0
0051a7d0  f30f1085c4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec4]
0051a7d8  f30f5895c8feffff          ADDSS XMM2,dword ptr [EBP + 0xfffffec8]
0051a7e0  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0051a7e8  0f2ed8                    UCOMISS XMM3,XMM0
0051a7eb  9f                        LAHF
0051a7ec  f6c444                    TEST AH,0x44
0051a7ef  7b38                      JNP 0x0051a829
0051a7f1  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0051a7f9  f30f59d0                  MULSS XMM2,XMM0
0051a7fd  f30f59c8                  MULSS XMM1,XMM0
0051a801  f30f5ed3                  DIVSS XMM2,XMM3
0051a805  f30f5ecb                  DIVSS XMM1,XMM3
0051a809  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
0051a811  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0051a819  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0051a821  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0051a829  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0051a82f  2500080001                AND EAX,0x1000800
0051a834  83c800                    OR EAX,0x0
0051a837  0f841bfeffff              JZ 0x0051a658
0051a83d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051a844  0f850efeffff              JNZ 0x0051a658
0051a84a  8bcf                      MOV ECX,EDI
0051a84c  e8ef3f1a00                CALL 0x006be840
0051a851  8db73c030000              LEA ESI,[EDI + 0x33c]
0051a857  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0051a85f  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0051a867  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0051a86c  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0051a870  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0051a877  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0051a87e  f30f1185b4feffff          MOVSS dword ptr [EBP + 0xfffffeb4],XMM0
0051a886  f30f118db0feffff          MOVSS dword ptr [EBP + 0xfffffeb0],XMM1
0051a88e  f30f59c0                  MULSS XMM0,XMM0
0051a892  f30f59c9                  MULSS XMM1,XMM1
0051a896  f30f58c1                  ADDSS XMM0,XMM1
0051a89a  e8b1b1f1ff                CALL 0x00435a50
0051a89f  f30f100da0a9ba00          MOVSS XMM1,dword ptr [0x00baa9a0]
0051a8a7  8d8590feffff              LEA EAX,[EBP + 0xfffffe90]
0051a8ad  f30f5cc8                  SUBSS XMM1,XMM0
0051a8b1  51                        PUSH ECX
0051a8b2  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
0051a8b8  f30f590d8ca0ba00          MULSS XMM1,dword ptr [0x00baa08c]
0051a8c0  f30f5f8dc4feffff          MAXSS XMM1,dword ptr [EBP + 0xfffffec4]
0051a8c8  f30f5d0d54a4ba00          MINSS XMM1,dword ptr [0x00baa454]
0051a8d0  f30f110c24                MOVSS dword ptr [ESP],XMM1
0051a8d5  50                        PUSH EAX
0051a8d6  e825584f00                CALL 0x00a10100
0051a8db  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0051a8e3  8bc8                      MOV ECX,EAX
0051a8e5  0f2e9dc4feffff            UCOMISS XMM3,dword ptr [EBP + 0xfffffec4]
0051a8ec  9f                        LAHF
0051a8ed  f6c444                    TEST AH,0x44
0051a8f0  0f8b68fdffff              JNP 0x0051a65e
0051a8f6  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0051a8fe  f30f104904                MOVSS XMM1,dword ptr [ECX + 0x4]
0051a903  0f28c2                    MOVAPS XMM0,XMM2
0051a906  f30f5901                  MULSS XMM0,dword ptr [ECX]
0051a90a  f30f59d1                  MULSS XMM2,XMM1
0051a90e  f30f5ec3                  DIVSS XMM0,XMM3
0051a912  f30f5ed3                  DIVSS XMM2,XMM3
0051a916  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0051a91e  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0051a926  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0051a92e  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0051a936  e923fdffff                JMP 0x0051a65e
0051a93b  8bb7000c0000              MOV ESI,dword ptr [EDI + 0xc00]
0051a941  85f6                      TEST ESI,ESI
0051a943  0f8495000000              JZ 0x0051a9de
0051a949  0f1f8000000000            NOP dword ptr [EAX]
0051a950  8b97fc0b0000              MOV EDX,dword ptr [EDI + 0xbfc]
0051a956  8bca                      MOV ECX,EDX
0051a958  8b87f80b0000              MOV EAX,dword ptr [EDI + 0xbf8]
0051a95e  83e203                    AND EDX,0x3
0051a961  48                        DEC EAX
0051a962  c1e902                    SHR ECX,0x2
0051a965  23c8                      AND ECX,EAX
0051a967  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
0051a96d  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0051a970  833c9000                  CMP dword ptr [EAX + EDX*0x4],0x0
0051a974  751a                      JNZ 0x0051a990
0051a976  83c6ff                    ADD ESI,-0x1
0051a979  89b7000c0000              MOV dword ptr [EDI + 0xc00],ESI
0051a97f  7453                      JZ 0x0051a9d4
0051a981  ff87fc0b0000              INC dword ptr [EDI + 0xbfc]
0051a987  ebc7                      JMP 0x0051a950
0051a990  8b87fc0b0000              MOV EAX,dword ptr [EDI + 0xbfc]
0051a996  8bb7000c0000              MOV ESI,dword ptr [EDI + 0xc00]
0051a99c  03c6                      ADD EAX,ESI
0051a99e  8985b4feffff              MOV dword ptr [EBP + 0xfffffeb4],EAX
0051a9a4  8d50ff                    LEA EDX,[EAX + -0x1]
0051a9a7  8b87f80b0000              MOV EAX,dword ptr [EDI + 0xbf8]
0051a9ad  8bca                      MOV ECX,EDX
0051a9af  48                        DEC EAX
0051a9b0  c1e902                    SHR ECX,0x2
0051a9b3  83e203                    AND EDX,0x3
0051a9b6  23c8                      AND ECX,EAX
0051a9b8  8b87f40b0000              MOV EAX,dword ptr [EDI + 0xbf4]
0051a9be  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0051a9c1  833c9000                  CMP dword ptr [EAX + EDX*0x4],0x0
0051a9c5  7517                      JNZ 0x0051a9de
0051a9c7  8d46ff                    LEA EAX,[ESI + -0x1]
0051a9ca  8987000c0000              MOV dword ptr [EDI + 0xc00],EAX
0051a9d0  85c0                      TEST EAX,EAX
0051a9d2  75bc                      JNZ 0x0051a990
0051a9d4  c787fc0b000000000000      MOV dword ptr [EDI + 0xbfc],0x0
0051a9de  8b8ff00b0000              MOV ECX,dword ptr [EDI + 0xbf0]
0051a9e4  8bb7fc0b0000              MOV ESI,dword ptr [EDI + 0xbfc]
0051a9ea  898db4feffff              MOV dword ptr [EBP + 0xfffffeb4],ECX
0051a9f0  8b87fc0b0000              MOV EAX,dword ptr [EDI + 0xbfc]
0051a9f6  0387000c0000              ADD EAX,dword ptr [EDI + 0xc00]
0051a9fc  3bf0                      CMP ESI,EAX
0051a9fe  7469                      JZ 0x0051aa69
0051aa00  85c9                      TEST ECX,ECX
0051aa02  7404                      JZ 0x0051aa08
0051aa04  8b09                      MOV ECX,dword ptr [ECX]
0051aa06  eb02                      JMP 0x0051aa0a
0051aa08  33c9                      XOR ECX,ECX
0051aa0a  8b4108                    MOV EAX,dword ptr [ECX + 0x8]
0051aa0d  8bd6                      MOV EDX,ESI
0051aa0f  48                        DEC EAX
0051aa10  c1ea02                    SHR EDX,0x2
0051aa13  23d0                      AND EDX,EAX
0051aa15  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
0051aa18  8bce                      MOV ECX,ESI
0051aa1a  83e103                    AND ECX,0x3
0051aa1d  8b0490                    MOV EAX,dword ptr [EAX + EDX*0x4]
0051aa20  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
0051aa23  85c9                      TEST ECX,ECX
0051aa25  7439                      JZ 0x0051aa60
0051aa27  83792809                  CMP dword ptr [ECX + 0x28],0x9
0051aa2b  7533                      JNZ 0x0051aa60
0051aa2d  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0051aa34  742a                      JZ 0x0051aa60
0051aa36  8b8138040000              MOV EAX,dword ptr [ECX + 0x438]
0051aa3c  81a13c040000fffffffe      AND dword ptr [ECX + 0x43c],0xfeffffff
0051aa46  898138040000              MOV dword ptr [ECX + 0x438],EAX
0051aa4c  c781180400000ad723bd      MOV dword ptr [ECX + 0x418],0xbd23d70a
0051aa56  c7813004000000000000      MOV dword ptr [ECX + 0x430],0x0
0051aa60  8b8db4feffff              MOV ECX,dword ptr [EBP + 0xfffffeb4]
0051aa66  46                        INC ESI
0051aa67  eb87                      JMP 0x0051a9f0
0051aa69  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0051aa70  7407                      JZ 0x0051aa79
0051aa72  8bcf                      MOV ECX,EDI
0051aa74  e847d71b00                CALL 0x006d81c0
0051aa79  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0051aa7c  64890d00000000            MOV dword ptr FS:[0x0],ECX
0051aa83  59                        POP ECX
0051aa84  5f                        POP EDI
0051aa85  5e                        POP ESI
0051aa86  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0051aa89  33cd                      XOR ECX,EBP
0051aa8b  e89b465d00                CALL 0x00aef12b
0051aa90  8be5                      MOV ESP,EBP
0051aa92  5d                        POP EBP
0051aa93  8be3                      MOV ESP,EBX
0051aa95  5b                        POP EBX
0051aa96  c3                        RET
