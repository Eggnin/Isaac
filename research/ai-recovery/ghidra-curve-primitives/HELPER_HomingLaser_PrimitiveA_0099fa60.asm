; J460 NPC AI 0x0099fa60 HELPER_HomingLaser_PrimitiveA
; types=7
; identities=7.*
; entry=0099fa60
0099fa60  55                        PUSH EBP
0099fa61  8bec                      MOV EBP,ESP
0099fa63  83e4f0                    AND ESP,0xfffffff0
0099fa66  83ec58                    SUB ESP,0x58
0099fa69  56                        PUSH ESI
0099fa6a  57                        PUSH EDI
0099fa6b  8bf9                      MOV EDI,ECX
0099fa6d  f30f114c241c              MOVSS dword ptr [ESP + 0x1c],XMM1
0099fa73  f30f104f0c                MOVSS XMM1,dword ptr [EDI + 0xc]
0099fa78  f30f5c4f04                SUBSS XMM1,dword ptr [EDI + 0x4]
0099fa7d  f30f105710                MOVSS XMM2,dword ptr [EDI + 0x10]
0099fa82  f30f5c5708                SUBSS XMM2,dword ptr [EDI + 0x8]
0099fa87  0f28c1                    MOVAPS XMM0,XMM1
0099fa8a  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
0099fa90  f30f59c1                  MULSS XMM0,XMM1
0099fa94  0f28ca                    MOVAPS XMM1,XMM2
0099fa97  f30f11542420              MOVSS dword ptr [ESP + 0x20],XMM2
0099fa9d  f30f59ca                  MULSS XMM1,XMM2
0099faa1  f30f58c1                  ADDSS XMM0,XMM1
0099faa5  e8a65fa9ff                CALL 0x00435a50
0099faaa  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0099fab1  f30f10542424              MOVSS XMM2,dword ptr [ESP + 0x24]
0099fab7  761b                      JBE 0x0099fad4
0099fab9  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0099fac1  f30f5ec8                  DIVSS XMM1,XMM0
0099fac5  0f28c1                    MOVAPS XMM0,XMM1
0099fac8  f30f594c2420              MULSS XMM1,dword ptr [ESP + 0x20]
0099face  f30f59d0                  MULSS XMM2,XMM0
0099fad2  eb06                      JMP 0x0099fada
0099fad4  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
0099fada  f30f591524a9ba00          MULSS XMM2,dword ptr [0x00baa924]
0099fae2  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
0099fae5  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
0099faed  f30f105f04                MOVSS XMM3,dword ptr [EDI + 0x4]
0099faf2  f30f58d3                  ADDSS XMM2,XMM3
0099faf6  f30f104708                MOVSS XMM0,dword ptr [EDI + 0x8]
0099fafb  f30f58c8                  ADDSS XMM1,XMM0
0099faff  f30f115c2440              MOVSS dword ptr [ESP + 0x40],XMM3
0099fb05  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
0099fb0b  f30f115c2448              MOVSS dword ptr [ESP + 0x48],XMM3
0099fb11  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
0099fb17  f30f11542450              MOVSS dword ptr [ESP + 0x50],XMM2
0099fb1d  f30f114c2454              MOVSS dword ptr [ESP + 0x54],XMM1
0099fb23  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
0099fb26  7419                      JZ 0x0099fb41
0099fb28  0f10442440                MOVUPS XMM0,xmmword ptr [ESP + 0x40]
0099fb2d  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099fb30  f30f7e442450              MOVQ XMM0,qword ptr [ESP + 0x50]
0099fb36  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099fb3b  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
0099fb3f  eb0e                      JMP 0x0099fb4f
0099fb41  8d4c2440                  LEA ECX,[ESP + 0x40]
0099fb45  51                        PUSH ECX
0099fb46  50                        PUSH EAX
0099fb47  8d4f48                    LEA ECX,[EDI + 0x48]
0099fb4a  e8611c0000                CALL 0x009a17b0
0099fb4f  f30f104710                MOVSS XMM0,dword ptr [EDI + 0x10]
0099fb54  f30f5c4708                SUBSS XMM0,dword ptr [EDI + 0x8]
0099fb59  f30f104f0c                MOVSS XMM1,dword ptr [EDI + 0xc]
0099fb5e  f30f5c4f04                SUBSS XMM1,dword ptr [EDI + 0x4]
0099fb63  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0099fb69  0f5ac0                    CVTPS2PD XMM0,XMM0
0099fb6c  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
0099fb72  f20f11442430              MOVSD qword ptr [ESP + 0x30],XMM0
0099fb78  dd442430                  FLD qword ptr [ESP + 0x30]
0099fb7c  0f5ac1                    CVTPS2PD XMM0,XMM1
0099fb7f  f20f11442430              MOVSD qword ptr [ESP + 0x30],XMM0
0099fb85  dd442430                  FLD qword ptr [ESP + 0x30]
0099fb89  e8350d1500                CALL 0x00af08c3
0099fb8e  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
0099fb94  33c0                      XOR EAX,EAX
0099fb96  f30f59057ca4ba00          MULSS XMM0,dword ptr [0x00baa47c]
0099fb9e  89442428                  MOV dword ptr [ESP + 0x28],EAX
0099fba2  dd5c2430                  FSTP qword ptr [ESP + 0x30]
0099fba6  f20f104c2430              MOVSD XMM1,qword ptr [ESP + 0x30]
0099fbac  660f5ac9                  CVTPD2PS XMM1,XMM1
0099fbb0  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0099fbb6  f30f5c0d54a3ba00          SUBSS XMM1,dword ptr [0x00baa354]
0099fbbe  f30f114c2430              MOVSS dword ptr [ESP + 0x30],XMM1
0099fbc4  0f1f4000                  NOP dword ptr [EAX]
0099fbc8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
0099fbd0  0f57c0                    XORPS XMM0,XMM0
0099fbd3  f30f1015d4a1ba00          MOVSS XMM2,dword ptr [0x00baa1d4]
0099fbdb  f20f2ac0                  CVTSI2SD XMM0,EAX
0099fbdf  c1e81f                    SHR EAX,0x1f
0099fbe2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099fbeb  660f5ac0                  CVTPD2PS XMM0,XMM0
0099fbef  f30f5e0584a7ba00          DIVSS XMM0,dword ptr [0x00baa784]
0099fbf7  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0099fbff  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
0099fc07  f30f59c2                  MULSS XMM0,XMM2
0099fc0b  f30f5cc8                  SUBSS XMM1,XMM0
0099fc0f  0f28c1                    MOVAPS XMM0,XMM1
0099fc12  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
0099fc18  f30f58c2                  ADDSS XMM0,XMM2
0099fc1c  0f5ac0                    CVTPS2PD XMM0,XMM0
0099fc1f  f20f11442438              MOVSD qword ptr [ESP + 0x38],XMM0
0099fc25  e8bd0c1500                CALL 0x00af08e7
0099fc2a  f20f5ac0                  CVTSD2SS XMM0,XMM0
0099fc2e  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
0099fc34  f30f584704                ADDSS XMM0,dword ptr [EDI + 0x4]
0099fc39  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0099fc3f  f20f10442438              MOVSD XMM0,qword ptr [ESP + 0x38]
0099fc45  e8bb0c1500                CALL 0x00af0905
0099fc4a  f30f104c242c              MOVSS XMM1,dword ptr [ESP + 0x2c]
0099fc50  f20f5ac0                  CVTSD2SS XMM0,XMM0
0099fc54  f30f114c2448              MOVSS dword ptr [ESP + 0x48],XMM1
0099fc5a  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
0099fc60  f30f584708                ADDSS XMM0,dword ptr [EDI + 0x8]
0099fc65  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
0099fc6b  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0099fc71  0f5ac0                    CVTPS2PD XMM0,XMM0
0099fc74  e86e0c1500                CALL 0x00af08e7
0099fc79  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
0099fc7f  f20f5ac0                  CVTSD2SS XMM0,XMM0
0099fc83  f30f5944241c              MULSS XMM0,dword ptr [ESP + 0x1c]
0099fc89  f30f584704                ADDSS XMM0,dword ptr [EDI + 0x4]
0099fc8e  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0099fc94  0f5ac1                    CVTPS2PD XMM0,XMM1
0099fc97  e8690c1500                CALL 0x00af0905
0099fc9c  f20f5ac0                  CVTSD2SS XMM0,XMM0
0099fca0  f30f104c242c              MOVSS XMM1,dword ptr [ESP + 0x2c]
0099fca6  f30f5944241c              MULSS XMM0,dword ptr [ESP + 0x1c]
0099fcac  f30f114c2440              MOVSS dword ptr [ESP + 0x40],XMM1
0099fcb2  f30f584708                ADDSS XMM0,dword ptr [EDI + 0x8]
0099fcb7  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
0099fcbd  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0099fcc3  f30f5c05d4a1ba00          SUBSS XMM0,dword ptr [0x00baa1d4]
0099fccb  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0099fcd1  0f5ac0                    CVTPS2PD XMM0,XMM0
0099fcd4  e80e0c1500                CALL 0x00af08e7
0099fcd9  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
0099fcdf  f20f5ac0                  CVTSD2SS XMM0,XMM0
0099fce3  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
0099fce9  f30f584704                ADDSS XMM0,dword ptr [EDI + 0x4]
0099fcee  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0099fcf4  0f5ac1                    CVTPS2PD XMM0,XMM1
0099fcf7  e8090c1500                CALL 0x00af0905
0099fcfc  f30f104c242c              MOVSS XMM1,dword ptr [ESP + 0x2c]
0099fd02  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
0099fd05  f20f5ac0                  CVTSD2SS XMM0,XMM0
0099fd09  f30f114c2450              MOVSS dword ptr [ESP + 0x50],XMM1
0099fd0f  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
0099fd15  f30f584708                ADDSS XMM0,dword ptr [EDI + 0x8]
0099fd1a  f30f11442454              MOVSS dword ptr [ESP + 0x54],XMM0
0099fd20  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
0099fd23  7419                      JZ 0x0099fd3e
0099fd25  0f10442440                MOVUPS XMM0,xmmword ptr [ESP + 0x40]
0099fd2a  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099fd2d  f30f7e442450              MOVQ XMM0,qword ptr [ESP + 0x50]
0099fd33  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099fd38  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
0099fd3c  eb0e                      JMP 0x0099fd4c
0099fd3e  8d4c2440                  LEA ECX,[ESP + 0x40]
0099fd42  51                        PUSH ECX
0099fd43  50                        PUSH EAX
0099fd44  8d4f48                    LEA ECX,[EDI + 0x48]
0099fd47  e8641a0000                CALL 0x009a17b0
0099fd4c  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
0099fd50  8b4f4c                    MOV ECX,dword ptr [EDI + 0x4c]
0099fd53  40                        INC EAX
0099fd54  f30f104c2430              MOVSS XMM1,dword ptr [ESP + 0x30]
0099fd5a  89442428                  MOV dword ptr [ESP + 0x28],EAX
0099fd5e  83f806                    CMP EAX,0x6
0099fd61  0f8269feffff              JC 0x0099fbd0
0099fd67  f30f105c2424              MOVSS XMM3,dword ptr [ESP + 0x24]
0099fd6d  f30f591dd4a1ba00          MULSS XMM3,dword ptr [0x00baa1d4]
0099fd75  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0099fd7b  0f28c8                    MOVAPS XMM1,XMM0
0099fd7e  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
0099fd86  f30f106710                MOVSS XMM4,dword ptr [EDI + 0x10]
0099fd8b  0f28f4                    MOVAPS XMM6,XMM4
0099fd8e  f30f106f0c                MOVSS XMM5,dword ptr [EDI + 0xc]
0099fd93  f30f5cf3                  SUBSS XMM6,XMM3
0099fd97  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
0099fd9f  0f28d4                    MOVAPS XMM2,XMM4
0099fda2  f30f115c242c              MOVSS dword ptr [ESP + 0x2c],XMM3
0099fda8  0f28dd                    MOVAPS XMM3,XMM5
0099fdab  0f28fd                    MOVAPS XMM7,XMM5
0099fdae  f30f5cd8                  SUBSS XMM3,XMM0
0099fdb2  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0099fdb8  f30f5cf9                  SUBSS XMM7,XMM1
0099fdbc  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
0099fdc4  f30f114c2430              MOVSS dword ptr [ESP + 0x30],XMM1
0099fdca  f30f11742454              MOVSS dword ptr [ESP + 0x54],XMM6
0099fdd0  f30f5cd0                  SUBSS XMM2,XMM0
0099fdd4  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0099fdda  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0099fde2  f30f115c2448              MOVSS dword ptr [ESP + 0x48],XMM3
0099fde8  f30f117c2450              MOVSS dword ptr [ESP + 0x50],XMM7
0099fdee  f30f5ce8                  SUBSS XMM5,XMM0
0099fdf2  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0099fdf8  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0099fe00  f30f1154244c              MOVSS dword ptr [ESP + 0x4c],XMM2
0099fe06  f30f5ce0                  SUBSS XMM4,XMM0
0099fe0a  f30f116c2440              MOVSS dword ptr [ESP + 0x40],XMM5
0099fe10  f30f11642444              MOVSS dword ptr [ESP + 0x44],XMM4
0099fe16  3b4f50                    CMP ECX,dword ptr [EDI + 0x50]
0099fe19  7419                      JZ 0x0099fe34
0099fe1b  0f10442440                MOVUPS XMM0,xmmword ptr [ESP + 0x40]
0099fe20  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0099fe23  f30f7e442450              MOVQ XMM0,qword ptr [ESP + 0x50]
0099fe29  660fd64110                MOVQ qword ptr [ECX + 0x10],XMM0
0099fe2e  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
0099fe32  eb0e                      JMP 0x0099fe42
0099fe34  8d442440                  LEA EAX,[ESP + 0x40]
0099fe38  50                        PUSH EAX
0099fe39  51                        PUSH ECX
0099fe3a  8d4f48                    LEA ECX,[EDI + 0x48]
0099fe3d  e86e190000                CALL 0x009a17b0
0099fe42  f30f105f0c                MOVSS XMM3,dword ptr [EDI + 0xc]
0099fe47  f30f105710                MOVSS XMM2,dword ptr [EDI + 0x10]
0099fe4c  0f28eb                    MOVAPS XMM5,XMM3
0099fe4f  f30f586c2420              ADDSS XMM5,dword ptr [ESP + 0x20]
0099fe55  8b474c                    MOV EAX,dword ptr [EDI + 0x4c]
0099fe58  0f28e2                    MOVAPS XMM4,XMM2
0099fe5b  0f28cb                    MOVAPS XMM1,XMM3
0099fe5e  0f28c2                    MOVAPS XMM0,XMM2
0099fe61  f30f58642424              ADDSS XMM4,dword ptr [ESP + 0x24]
0099fe67  f30f5c4c2430              SUBSS XMM1,dword ptr [ESP + 0x30]
0099fe6d  f30f5c44242c              SUBSS XMM0,dword ptr [ESP + 0x2c]
0099fe73  f30f115c2440              MOVSS dword ptr [ESP + 0x40],XMM3
0099fe79  f30f11542444              MOVSS dword ptr [ESP + 0x44],XMM2
0099fe7f  f30f116c2450              MOVSS dword ptr [ESP + 0x50],XMM5
0099fe85  f30f114c2448              MOVSS dword ptr [ESP + 0x48],XMM1
0099fe8b  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
0099fe91  f30f11642454              MOVSS dword ptr [ESP + 0x54],XMM4
0099fe97  3b4750                    CMP EAX,dword ptr [EDI + 0x50]
0099fe9a  741d                      JZ 0x0099feb9
0099fe9c  0f10442440                MOVUPS XMM0,xmmword ptr [ESP + 0x40]
0099fea1  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0099fea4  f30f7e442450              MOVQ XMM0,qword ptr [ESP + 0x50]
0099feaa  660fd64010                MOVQ qword ptr [EAX + 0x10],XMM0
0099feaf  83474c18                  ADD dword ptr [EDI + 0x4c],0x18
0099feb3  5f                        POP EDI
0099feb4  5e                        POP ESI
0099feb5  8be5                      MOV ESP,EBP
0099feb7  5d                        POP EBP
0099feb8  c3                        RET
0099feb9  8d4c2440                  LEA ECX,[ESP + 0x40]
0099febd  51                        PUSH ECX
0099febe  50                        PUSH EAX
0099febf  8d4f48                    LEA ECX,[EDI + 0x48]
0099fec2  e8e9180000                CALL 0x009a17b0
0099fec7  5f                        POP EDI
0099fec8  5e                        POP ESI
0099fec9  8be5                      MOV ESP,EBP
0099fecb  5d                        POP EBP
0099fecc  c3                        RET
