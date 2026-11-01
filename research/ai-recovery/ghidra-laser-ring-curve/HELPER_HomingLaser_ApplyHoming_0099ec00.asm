; J460 NPC AI 0x0099ec00 HELPER_HomingLaser_ApplyHoming
; types=7
; identities=7.*
; entry=0099ec00
0099ec00  55                        PUSH EBP
0099ec01  8bec                      MOV EBP,ESP
0099ec03  83e4f8                    AND ESP,0xfffffff8
0099ec06  83ec28                    SUB ESP,0x28
0099ec09  56                        PUSH ESI
0099ec0a  8bf1                      MOV ESI,ECX
0099ec0c  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
0099ec12  57                        PUSH EDI
0099ec13  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
0099ec19  89742424                  MOV dword ptr [ESP + 0x24],ESI
0099ec1d  837e4001                  CMP dword ptr [ESI + 0x40],0x1
0099ec21  0f8551010000              JNZ 0x0099ed78
0099ec27  8b4e1c                    MOV ECX,dword ptr [ESI + 0x1c]
0099ec2a  33ff                      XOR EDI,EDI
0099ec2c  8b4620                    MOV EAX,dword ptr [ESI + 0x20]
0099ec2f  2bc1                      SUB EAX,ECX
0099ec31  894c2424                  MOV dword ptr [ESP + 0x24],ECX
0099ec35  c1f803                    SAR EAX,0x3
0099ec38  85c0                      TEST EAX,EAX
0099ec3a  0f8472030000              JZ 0x0099efb2
0099ec40  f30f100cf9                MOVSS XMM1,dword ptr [ECX + EDI*0x8]
0099ec45  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0099ec4a  f30f1044f904              MOVSS XMM0,dword ptr [ECX + EDI*0x8 + 0x4]
0099ec50  0f28d0                    MOVAPS XMM2,XMM0
0099ec53  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0099ec59  f30f5c5608                SUBSS XMM2,dword ptr [ESI + 0x8]
0099ec5e  0f28c1                    MOVAPS XMM0,XMM1
0099ec61  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
0099ec67  f30f59c1                  MULSS XMM0,XMM1
0099ec6b  0f28ca                    MOVAPS XMM1,XMM2
0099ec6e  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
0099ec74  f30f59ca                  MULSS XMM1,XMM2
0099ec78  f30f58c1                  ADDSS XMM0,XMM1
0099ec7c  e8cf6da9ff                CALL 0x00435a50
0099ec81  0f57c9                    XORPS XMM1,XMM1
0099ec84  0f2fc1                    COMISS XMM0,XMM1
0099ec87  762c                      JBE 0x0099ecb5
0099ec89  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0099ec91  f30f5ec8                  DIVSS XMM1,XMM0
0099ec95  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
0099ec9b  f30f59c1                  MULSS XMM0,XMM1
0099ec9f  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0099eca5  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0099ecab  f30f59c1                  MULSS XMM0,XMM1
0099ecaf  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0099ecb5  660f6ec7                  MOVD XMM0,EDI
0099ecb9  8bc7                      MOV EAX,EDI
0099ecbb  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0099ecbf  c1e81f                    SHR EAX,0x1f
0099ecc2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099eccb  8b4620                    MOV EAX,dword ptr [ESI + 0x20]
0099ecce  2b461c                    SUB EAX,dword ptr [ESI + 0x1c]
0099ecd1  c1f803                    SAR EAX,0x3
0099ecd4  48                        DEC EAX
0099ecd5  660f5ac0                  CVTPD2PS XMM0,XMM0
0099ecd9  660f6ec8                  MOVD XMM1,EAX
0099ecdd  f30f5905f8a8ba00          MULSS XMM0,dword ptr [0x00baa8f8]
0099ece5  c1e81f                    SHR EAX,0x1f
0099ece8  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0099ecec  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0099ecf5  a17816c700                MOV EAX,[0x00c71678]
0099ecfa  660f5ac9                  CVTPD2PS XMM1,XMM1
0099ecfe  f30f5ec1                  DIVSS XMM0,XMM1
0099ed02  660f6e88f8640200          MOVD XMM1,dword ptr [EAX + 0x264f8]
0099ed0a  0f5bc9                    CVTDQ2PS XMM1,XMM1
0099ed0d  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0099ed15  f30f5cc1                  SUBSS XMM0,XMM1
0099ed19  f30f5c44241c              SUBSS XMM0,dword ptr [ESP + 0x1c]
0099ed1f  e8fce7a7ff                CALL 0x0041d520
0099ed24  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0099ed2c  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
0099ed30  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
0099ed36  f30f59442408              MULSS XMM0,dword ptr [ESP + 0x8]
0099ed3c  f30f59c8                  MULSS XMM1,XMM0
0099ed40  f30f580cf9                ADDSS XMM1,dword ptr [ECX + EDI*0x8]
0099ed45  f30f110cf9                MOVSS dword ptr [ECX + EDI*0x8],XMM1
0099ed4a  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
0099ed50  f30f59c8                  MULSS XMM1,XMM0
0099ed54  f30f584c2420              ADDSS XMM1,dword ptr [ESP + 0x20]
0099ed5a  f30f114cf904              MOVSS dword ptr [ECX + EDI*0x8 + 0x4],XMM1
0099ed60  47                        INC EDI
0099ed61  8b4620                    MOV EAX,dword ptr [ESI + 0x20]
0099ed64  2b461c                    SUB EAX,dword ptr [ESI + 0x1c]
0099ed67  c1f803                    SAR EAX,0x3
0099ed6a  3bf8                      CMP EDI,EAX
0099ed6c  0f82cefeffff              JC 0x0099ec40
0099ed72  5f                        POP EDI
0099ed73  5e                        POP ESI
0099ed74  8be5                      MOV ESP,EBP
0099ed76  5d                        POP EBP
0099ed77  c3                        RET
0099ed78  f30f104e0c                MOVSS XMM1,dword ptr [ESI + 0xc]
0099ed7d  f30f104610                MOVSS XMM0,dword ptr [ESI + 0x10]
0099ed82  f30f5c4608                SUBSS XMM0,dword ptr [ESI + 0x8]
0099ed87  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0099ed8c  f30f59c0                  MULSS XMM0,XMM0
0099ed90  f30f59c9                  MULSS XMM1,XMM1
0099ed94  f30f58c1                  ADDSS XMM0,XMM1
0099ed98  e8b36ca9ff                CALL 0x00435a50
0099ed9d  f30f5e0594aaba00          DIVSS XMM0,dword ptr [0x00baaa94]
0099eda5  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
0099eda9  33ff                      XOR EDI,EDI
0099edab  8b7620                    MOV ESI,dword ptr [ESI + 0x20]
0099edae  8b481c                    MOV ECX,dword ptr [EAX + 0x1c]
0099edb1  8bc6                      MOV EAX,ESI
0099edb3  2bc1                      SUB EAX,ECX
0099edb5  894c2418                  MOV dword ptr [ESP + 0x18],ECX
0099edb9  c1f803                    SAR EAX,0x3
0099edbc  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0099edc2  83e801                    SUB EAX,0x1
0099edc5  0f84e7010000              JZ 0x0099efb2
0099edcb  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
0099edd1  8d5104                    LEA EDX,[ECX + 0x4]
0099edd4  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0099eddc  89542420                  MOV dword ptr [ESP + 0x20],EDX
0099ede0  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
0099ede6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
0099edf0  f30f1002                  MOVSS XMM0,dword ptr [EDX]
0099edf4  f30f104a08                MOVSS XMM1,dword ptr [EDX + 0x8]
0099edf9  f30f105204                MOVSS XMM2,dword ptr [EDX + 0x4]
0099edfe  f30f5cc8                  SUBSS XMM1,XMM0
0099ee02  f30f5c52fc                SUBSS XMM2,dword ptr [EDX + -0x4]
0099ee07  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0099ee0d  0f28c1                    MOVAPS XMM0,XMM1
0099ee10  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
0099ee16  f30f59c1                  MULSS XMM0,XMM1
0099ee1a  0f28ca                    MOVAPS XMM1,XMM2
0099ee1d  f30f59ca                  MULSS XMM1,XMM2
0099ee21  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
0099ee27  f30f58c1                  ADDSS XMM0,XMM1
0099ee2b  e8206ca9ff                CALL 0x00435a50
0099ee30  0f57c9                    XORPS XMM1,XMM1
0099ee33  0f2fc1                    COMISS XMM0,XMM1
0099ee36  7628                      JBE 0x0099ee60
0099ee38  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0099ee40  f30f5ec8                  DIVSS XMM1,XMM0
0099ee44  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
0099ee4a  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
0099ee50  f30f59d1                  MULSS XMM2,XMM1
0099ee54  f30f59c1                  MULSS XMM0,XMM1
0099ee58  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
0099ee5e  eb06                      JMP 0x0099ee66
0099ee60  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
0099ee66  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
0099ee6d  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
0099ee73  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0099ee79  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
0099ee7f  83ff14                    CMP EDI,0x14
0099ee82  7328                      JNC 0x0099eeac
0099ee84  660f6ec7                  MOVD XMM0,EDI
0099ee88  8bc7                      MOV EAX,EDI
0099ee8a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0099ee8e  c1e81f                    SHR EAX,0x1f
0099ee91  2b742418                  SUB ESI,dword ptr [ESP + 0x18]
0099ee95  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099ee9e  660f5ac0                  CVTPD2PS XMM0,XMM0
0099eea2  f30f5e057ca8ba00          DIVSS XMM0,dword ptr [0x00baa87c]
0099eeaa  eb33                      JMP 0x0099eedf
0099eeac  2b742418                  SUB ESI,dword ptr [ESP + 0x18]
0099eeb0  8bce                      MOV ECX,ESI
0099eeb2  c1f903                    SAR ECX,0x3
0099eeb5  8d41ea                    LEA EAX,[ECX + -0x16]
0099eeb8  3bf8                      CMP EDI,EAX
0099eeba  762d                      JBE 0x0099eee9
0099eebc  2bcf                      SUB ECX,EDI
0099eebe  41                        INC ECX
0099eebf  660f6ec1                  MOVD XMM0,ECX
0099eec3  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0099eec7  c1e91f                    SHR ECX,0x1f
0099eeca  f20f5804cd00cbba00        ADDSD XMM0,qword ptr [ECX*0x8 + 0xbacb00]
0099eed3  660f5ac0                  CVTPD2PS XMM0,XMM0
0099eed7  f30f5e0584a8ba00          DIVSS XMM0,dword ptr [0x00baa884]
0099eedf  f30f59c1                  MULSS XMM0,XMM1
0099eee3  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0099eee9  c1fe03                    SAR ESI,0x3
0099eeec  8bc7                      MOV EAX,EDI
0099eeee  83ee02                    SUB ESI,0x2
0099eef1  660f6ec7                  MOVD XMM0,EDI
0099eef5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0099eef9  c1e81f                    SHR EAX,0x1f
0099eefc  660f6ece                  MOVD XMM1,ESI
0099ef00  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0099ef09  f30fe6c9                  CVTDQ2PD XMM1,XMM1
0099ef0d  c1ee1f                    SHR ESI,0x1f
0099ef10  a17816c700                MOV EAX,[0x00c71678]
0099ef15  660f5ac0                  CVTPD2PS XMM0,XMM0
0099ef19  f20f580cf500cbba00        ADDSD XMM1,qword ptr [ESI*0x8 + 0xbacb00]
0099ef22  660f5ac9                  CVTPD2PS XMM1,XMM1
0099ef26  f30f5ec1                  DIVSS XMM0,XMM1
0099ef2a  660f6e88f8640200          MOVD XMM1,dword ptr [EAX + 0x264f8]
0099ef32  f30f59442428              MULSS XMM0,dword ptr [ESP + 0x28]
0099ef38  0f5bc9                    CVTDQ2PS XMM1,XMM1
0099ef3b  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
0099ef43  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0099ef4b  f30f5cc1                  SUBSS XMM0,XMM1
0099ef4f  f30f5c44241c              SUBSS XMM0,dword ptr [ESP + 0x1c]
0099ef55  e8c6e5a7ff                CALL 0x0041d520
0099ef5a  f30f59442410              MULSS XMM0,dword ptr [ESP + 0x10]
0099ef60  47                        INC EDI
0099ef61  8b542420                  MOV EDX,dword ptr [ESP + 0x20]
0099ef65  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
0099ef6b  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
0099ef6f  f30f59c8                  MULSS XMM1,XMM0
0099ef73  f30f584afc                ADDSS XMM1,dword ptr [EDX + -0x4]
0099ef78  f30f114afc                MOVSS dword ptr [EDX + -0x4],XMM1
0099ef7d  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
0099ef83  f30f59c8                  MULSS XMM1,XMM0
0099ef87  f30f584c242c              ADDSS XMM1,dword ptr [ESP + 0x2c]
0099ef8d  f30f110a                  MOVSS dword ptr [EDX],XMM1
0099ef91  83c208                    ADD EDX,0x8
0099ef94  8b481c                    MOV ECX,dword ptr [EAX + 0x1c]
0099ef97  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0099ef9a  8bc6                      MOV EAX,ESI
0099ef9c  2bc1                      SUB EAX,ECX
0099ef9e  89542420                  MOV dword ptr [ESP + 0x20],EDX
0099efa2  c1f803                    SAR EAX,0x3
0099efa5  48                        DEC EAX
0099efa6  894c2418                  MOV dword ptr [ESP + 0x18],ECX
0099efaa  3bf8                      CMP EDI,EAX
0099efac  0f823efeffff              JC 0x0099edf0
0099efb2  5f                        POP EDI
0099efb3  5e                        POP ESI
0099efb4  8be5                      MOV ESP,EBP
0099efb6  5d                        POP EBP
0099efb7  c3                        RET
