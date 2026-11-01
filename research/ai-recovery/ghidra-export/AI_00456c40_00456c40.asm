; J460 NPC AI 0x00456c40 AI_00456c40
; types=63
; identities=63.0.0
; entry=00456c40
00456c40  53                        PUSH EBX
00456c41  8bdc                      MOV EBX,ESP
00456c43  83ec08                    SUB ESP,0x8
00456c46  83e4f8                    AND ESP,0xfffffff8
00456c49  83c404                    ADD ESP,0x4
00456c4c  55                        PUSH EBP
00456c4d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00456c50  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00456c54  8bec                      MOV EBP,ESP
00456c56  6aff                      PUSH -0x1
00456c58  68e524af00                PUSH 0xaf24e5
00456c5d  64a100000000              MOV EAX,FS:[0x0]
00456c63  50                        PUSH EAX
00456c64  53                        PUSH EBX
00456c65  81ec08010000              SUB ESP,0x108
00456c6b  a1b493bf00                MOV EAX,[0x00bf93b4]
00456c70  33c5                      XOR EAX,EBP
00456c72  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00456c75  56                        PUSH ESI
00456c76  57                        PUSH EDI
00456c77  50                        PUSH EAX
00456c78  8d45f4                    LEA EAX,[EBP + -0xc]
00456c7b  64a300000000              MOV FS:[0x0],EAX
00456c81  8bf9                      MOV EDI,ECX
00456c83  8d8f40030000              LEA ECX,[EDI + 0x340]
00456c89  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00456c93  f30f1001                  MOVSS XMM0,dword ptr [ECX]
00456c97  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
00456c9d  0f2f0568aaba00            COMISS XMM0,dword ptr [0x00baaa68]
00456ca4  c785fcfeffff00002a43      MOV dword ptr [EBP + 0xfffffefc],0x432a0000
00456cae  0f47c1                    CMOVA EAX,ECX
00456cb1  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00456cb8  8b00                      MOV EAX,dword ptr [EAX]
00456cba  8901                      MOV dword ptr [ECX],EAX
00456cbc  750f                      JNZ 0x00456ccd
00456cbe  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00456cc8  e94d0b0000                JMP 0x0045781a
00456ccd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00456cd5  8bcf                      MOV ECX,EDI
00456cd7  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00456cdf  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00456ce7  e8547b2600                CALL 0x006be840
00456cec  8db73c030000              LEA ESI,[EDI + 0x33c]
00456cf2  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00456cfa  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
00456cfe  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00456d06  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
00456d0b  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
00456d13  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
00456d1b  f30f5e8f84030000          DIVSS XMM1,dword ptr [EDI + 0x384]
00456d23  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
00456d2b  f30f100520a2ba00          MOVSS XMM0,dword ptr [0x00baa220]
00456d33  0f2fc1                    COMISS XMM0,XMM1
00456d36  7666                      JBE 0x00456d9e
00456d38  83bf640b000009            CMP dword ptr [EDI + 0xb64],0x9
00456d3f  745d                      JZ 0x00456d9e
00456d41  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00456d4b  e810822900                CALL 0x006eef60
00456d50  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00456d56  50                        PUSH EAX
00456d57  6a00                      PUSH 0x0
00456d59  57                        PUSH EDI
00456d5a  6840b6c700                PUSH 0xc7b640
00456d5f  56                        PUSH ESI
00456d60  6a02                      PUSH 0x2
00456d62  68e8030000                PUSH 0x3e8
00456d67  e8b41dfdff                CALL 0x00428b20
00456d6c  8bcf                      MOV ECX,EDI
00456d6e  e84dd82500                CALL 0x006b45c0
00456d73  6a00                      PUSH 0x0
00456d75  68a8dcb100                PUSH 0xb1dca8
00456d7a  8d4f48                    LEA ECX,[EDI + 0x48]
00456d7d  e8fe35fbff                CALL 0x0040a380
00456d82  6a00                      PUSH 0x0
00456d84  68c0dcb100                PUSH 0xb1dcc0
00456d89  8d4f48                    LEA ECX,[EDI + 0x48]
00456d8c  e8af3bfbff                CALL 0x0040a940
00456d91  c687b800000001            MOV byte ptr [EDI + 0xb8],0x1
00456d98  8db73c030000              LEA ESI,[EDI + 0x33c]
00456d9e  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00456da4  83f809                    CMP EAX,0x9
00456da7  0f85d4030000              JNZ 0x00457181
00456dad  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
00456db5  8d8d08ffffff              LEA ECX,[EBP + 0xffffff08]
00456dbb  a17816c700                MOV EAX,[0x00c71678]
00456dc0  83ec0c                    SUB ESP,0xc
00456dc3  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
00456dc9  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
00456dcf  f30f111c24                MOVSS dword ptr [ESP],XMM3
00456dd4  56                        PUSH ESI
00456dd5  51                        PUSH ECX
00456dd6  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00456ddc  e86fc13b00                CALL 0x00812f50
00456de1  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
00456de9  f30f1106                  MOVSS dword ptr [ESI],XMM0
00456ded  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
00456df5  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
00456dfa  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00456e00  83f809                    CMP EAX,0x9
00456e03  0f8578030000              JNZ 0x00457181
00456e09  68dcd2b100                PUSH 0xb1d2dc
00456e0e  8d8f98000000              LEA ECX,[EDI + 0x98]
00456e14  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00456e1e  e8ad3ffbff                CALL 0x0040add0
00456e23  84c0                      TEST AL,AL
00456e25  7442                      JZ 0x00456e69
00456e27  e834812900                CALL 0x006eef60
00456e2c  51                        PUSH ECX
00456e2d  8bcf                      MOV ECX,EDI
00456e2f  660f6ec0                  MOVD XMM0,EAX
00456e33  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00456e37  c1e81f                    SHR EAX,0x1f
00456e3a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00456e43  660f5ac8                  CVTPD2PS XMM1,XMM0
00456e47  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00456e4f  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
00456e57  f30f580df8a1ba00          ADDSS XMM1,dword ptr [0x00baa1f8]
00456e5f  f30f110c24                MOVSS dword ptr [ESP],XMM1
00456e64  e867f62500                CALL 0x006b64d0
00456e69  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
00456e6c  8bcf                      MOV ECX,EDI
00456e6e  f30f100db8a7ba00          MOVSS XMM1,dword ptr [0x00baa7b8]
00456e76  660f6ec0                  MOVD XMM0,EAX
00456e7a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00456e7e  c1e81f                    SHR EAX,0x1f
00456e81  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00456e8a  660f5ad0                  CVTPD2PS XMM2,XMM0
00456e8e  e8cd582500                CALL 0x006ac760
00456e93  85c0                      TEST EAX,EAX
00456e95  7456                      JZ 0x00456eed
00456e97  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
00456e9d  85c0                      TEST EAX,EAX
00456e9f  7f45                      JG 0x00456ee6
00456ea1  f30f100d08abba00          MOVSS XMM1,dword ptr [0x00baab08]
00456ea9  8bcf                      MOV ECX,EDI
00456eab  6a00                      PUSH 0x0
00456ead  6a00                      PUSH 0x0
00456eaf  e8ac3f2700                CALL 0x006cae60
00456eb4  84c0                      TEST AL,AL
00456eb6  7435                      JZ 0x00456eed
00456eb8  6a01                      PUSH 0x1
00456eba  68b4dcb100                PUSH 0xb1dcb4
00456ebf  8d4f48                    LEA ECX,[EDI + 0x48]
00456ec2  c787a00b000008000000      MOV dword ptr [EDI + 0xba0],0x8
00456ecc  e8ff36fbff                CALL 0x0040a5d0
00456ed1  84c0                      TEST AL,AL
00456ed3  7418                      JZ 0x00456eed
00456ed5  8d4f78                    LEA ECX,[EDI + 0x78]
00456ed8  e8d332fbff                CALL 0x0040a1b0
00456edd  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00456ee4  eb07                      JMP 0x00456eed
00456ee6  48                        DEC EAX
00456ee7  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00456eed  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00456ef1  0f8459010000              JZ 0x00457050
00456ef7  68dcd2b100                PUSH 0xb1d2dc
00456efc  8d4f78                    LEA ECX,[EDI + 0x78]
00456eff  e8cc3efbff                CALL 0x0040add0
00456f04  84c0                      TEST AL,AL
00456f06  0f8435010000              JZ 0x00457041
00456f0c  51                        PUSH ECX
00456f0d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00456f14  6a00                      PUSH 0x0
00456f16  6a02                      PUSH 0x2
00456f18  51                        PUSH ECX
00456f19  c704240000803f            MOV dword ptr [ESP],0x3f800000
00456f20  8bcf                      MOV ECX,EDI
00456f22  6a68                      PUSH 0x68
00456f24  e877fc2700                CALL 0x006d6ba0
00456f29  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00456f2d  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
00456f33  7544                      JNZ 0x00456f79
00456f35  e8f67ffeff                CALL 0x0043ef30
00456f3a  8bcf                      MOV ECX,EDI
00456f3c  8bf0                      MOV ESI,EAX
00456f3e  e8fd782600                CALL 0x006be840
00456f43  56                        PUSH ESI
00456f44  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00456f4a  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
00456f50  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00456f56  51                        PUSH ECX
00456f57  c7042400000000            MOV dword ptr [ESP],0x0
00456f5e  50                        PUSH EAX
00456f5f  898d08ffffff              MOV dword ptr [EBP + 0xffffff08],ECX
00456f65  8bcf                      MOV ECX,EDI
00456f67  6a0a                      PUSH 0xa
00456f69  89950cffffff              MOV dword ptr [EBP + 0xffffff0c],EDX
00456f6f  e85c5e2700                CALL 0x006ccdd0
00456f74  e9c8000000                JMP 0x00457041
00456f79  e8b27ffeff                CALL 0x0043ef30
00456f7e  8bcf                      MOV ECX,EDI
00456f80  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
00456f86  e8b5782600                CALL 0x006be840
00456f8b  8db73c030000              LEA ESI,[EDI + 0x33c]
00456f91  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00456f99  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00456f9e  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
00456fa6  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
00456faa  0f28c1                    MOVAPS XMM0,XMM1
00456fad  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
00456fb5  f30f59c1                  MULSS XMM0,XMM1
00456fb9  0f28ca                    MOVAPS XMM1,XMM2
00456fbc  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
00456fc4  f30f59ca                  MULSS XMM1,XMM2
00456fc8  f30f58c1                  ADDSS XMM0,XMM1
00456fcc  e87feafdff                CALL 0x00435a50
00456fd1  0f57c9                    XORPS XMM1,XMM1
00456fd4  0f2fc1                    COMISS XMM0,XMM1
00456fd7  7631                      JBE 0x0045700a
00456fd9  f30f100d1ca8ba00          MOVSS XMM1,dword ptr [0x00baa81c]
00456fe1  f30f5ec8                  DIVSS XMM1,XMM0
00456fe5  0f28c1                    MOVAPS XMM0,XMM1
00456fe8  f30f598dfcfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffefc]
00456ff0  f30f5985f4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffef4]
00456ff8  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
00457000  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
00457008  eb20                      JMP 0x0045702a
0045700a  f30f1095f4feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef4]
00457012  f30f1085fcfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffefc]
0045701a  f30f119508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM2
00457022  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0045702a  ffb5ecfeffff              PUSH dword ptr [EBP + 0xfffffeec]
00457030  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
00457036  8bcf                      MOV ECX,EDI
00457038  6a02                      PUSH 0x2
0045703a  50                        PUSH EAX
0045703b  56                        PUSH ESI
0045703c  e89f422700                CALL 0x006cb2e0
00457041  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00457045  7409                      JZ 0x00457050
00457047  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045704e  7572                      JNZ 0x004570c2
00457050  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00457053  85f6                      TEST ESI,ESI
00457055  744a                      JZ 0x004570a1
00457057  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0045705b  8bc6                      MOV EAX,ESI
0045705d  7202                      JC 0x00457061
0045705f  8b06                      MOV EAX,dword ptr [ESI]
00457061  b9a8dcb100                MOV ECX,0xb1dca8
00457066  8a10                      MOV DL,byte ptr [EAX]
00457068  3a11                      CMP DL,byte ptr [ECX]
0045706a  751a                      JNZ 0x00457086
0045706c  84d2                      TEST DL,DL
0045706e  7412                      JZ 0x00457082
00457070  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00457073  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00457076  750e                      JNZ 0x00457086
00457078  83c002                    ADD EAX,0x2
0045707b  83c102                    ADD ECX,0x2
0045707e  84d2                      TEST DL,DL
00457080  75e4                      JNZ 0x00457066
00457082  33c0                      XOR EAX,EAX
00457084  eb05                      JMP 0x0045708b
00457086  1bc0                      SBB EAX,EAX
00457088  83c801                    OR EAX,0x1
0045708b  85c0                      TEST EAX,EAX
0045708d  7512                      JNZ 0x004570a1
0045708f  384634                    CMP byte ptr [ESI + 0x34],AL
00457092  742e                      JZ 0x004570c2
00457094  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0045709a  8d7748                    LEA ESI,[EDI + 0x48]
0045709d  7523                      JNZ 0x004570c2
0045709f  eb03                      JMP 0x004570a4
004570a1  8d7748                    LEA ESI,[EDI + 0x48]
004570a4  6a01                      PUSH 0x1
004570a6  68a8dcb100                PUSH 0xb1dca8
004570ab  8bce                      MOV ECX,ESI
004570ad  e81e35fbff                CALL 0x0040a5d0
004570b2  84c0                      TEST AL,AL
004570b4  740c                      JZ 0x004570c2
004570b6  8d4e30                    LEA ECX,[ESI + 0x30]
004570b9  e8f230fbff                CALL 0x0040a1b0
004570be  c6464401                  MOV byte ptr [ESI + 0x44],0x1
004570c2  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004570c9  0f8ffe060000              JG 0x004577cd
004570cf  f30f108d04ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff04]
004570d7  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004570df  f30f59c0                  MULSS XMM0,XMM0
004570e3  f30f59c9                  MULSS XMM1,XMM1
004570e7  f30f58c1                  ADDSS XMM0,XMM1
004570eb  e860e9fdff                CALL 0x00435a50
004570f0  f30f109500ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff00]
004570f8  0f57e4                    XORPS XMM4,XMM4
004570fb  0f2fc4                    COMISS XMM0,XMM4
004570fe  f30f108d04ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff04]
00457106  7617                      JBE 0x0045711f
00457108  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00457110  f30f5ed8                  DIVSS XMM3,XMM0
00457114  0f28c3                    MOVAPS XMM0,XMM3
00457117  f30f59cb                  MULSS XMM1,XMM3
0045711b  f30f59d0                  MULSS XMM2,XMM0
0045711f  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
00457127  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
0045712f  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00457137  0f2edc                    UCOMISS XMM3,XMM4
0045713a  9f                        LAHF
0045713b  f6c444                    TEST AH,0x44
0045713e  0f8b89060000              JNP 0x004577cd
00457144  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0045714c  f30f59d0                  MULSS XMM2,XMM0
00457150  f30f59c8                  MULSS XMM1,XMM0
00457154  f30f5ed3                  DIVSS XMM2,XMM3
00457158  f30f5ecb                  DIVSS XMM1,XMM3
0045715c  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
00457164  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0045716c  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00457174  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0045717c  e94c060000                JMP 0x004577cd
00457181  83f804                    CMP EAX,0x4
00457184  0f8582020000              JNZ 0x0045740c
0045718a  8d8f14040000              LEA ECX,[EDI + 0x414]
00457190  6a00                      PUSH 0x0
00457192  e8b9f43800                CALL 0x007e6650
00457197  f30f7e05d8dcb100          MOVQ XMM0,qword ptr [0x00b1dcd8]
0045719f  a0e0dcb100                MOV AL,[0x00b1dce0]
004571a4  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
004571ab  c745cc09000000            MOV dword ptr [EBP + -0x34],0x9
004571b2  660fd645bc                MOVQ qword ptr [EBP + -0x44],XMM0
004571b7  8845c4                    MOV byte ptr [EBP + -0x3c],AL
004571ba  c645c500                  MOV byte ptr [EBP + -0x3b],0x0
004571be  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004571c5  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
004571cc  c745e409000000            MOV dword ptr [EBP + -0x1c],0x9
004571d3  660fd645d4                MOVQ qword ptr [EBP + -0x2c],XMM0
004571d8  8845dc                    MOV byte ptr [EBP + -0x24],AL
004571db  c645dd00                  MOV byte ptr [EBP + -0x23],0x0
004571df  51                        PUSH ECX
004571e0  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
004571e4  8d45bc                    LEA EAX,[EBP + -0x44]
004571e7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004571ee  8bcf                      MOV ECX,EDI
004571f0  50                        PUSH EAX
004571f1  8d45d4                    LEA EAX,[EBP + -0x2c]
004571f4  50                        PUSH EAX
004571f5  e836a12600                CALL 0x006c1330
004571fa  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
004571fe  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
00457201  83fa10                    CMP EDX,0x10
00457204  7228                      JC 0x0045722e
00457206  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
00457209  42                        INC EDX
0045720a  8bc1                      MOV EAX,ECX
0045720c  81fa00100000              CMP EDX,0x1000
00457212  7210                      JC 0x00457224
00457214  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00457217  83c223                    ADD EDX,0x23
0045721a  2bc1                      SUB EAX,ECX
0045721c  83c0fc                    ADD EAX,-0x4
0045721f  83f81f                    CMP EAX,0x1f
00457222  7749                      JA 0x0045726d
00457224  52                        PUSH EDX
00457225  51                        PUSH ECX
00457226  e8317f6900                CALL 0x00aef15c
0045722b  83c408                    ADD ESP,0x8
0045722e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00457235  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
00457238  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0045723f  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
00457246  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0045724a  83fa10                    CMP EDX,0x10
0045724d  722e                      JC 0x0045727d
0045724f  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
00457252  42                        INC EDX
00457253  8bc1                      MOV EAX,ECX
00457255  81fa00100000              CMP EDX,0x1000
0045725b  7216                      JC 0x00457273
0045725d  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
00457260  83c223                    ADD EDX,0x23
00457263  2bc1                      SUB EAX,ECX
00457265  83c0fc                    ADD EAX,-0x4
00457268  83f81f                    CMP EAX,0x1f
0045726b  7606                      JBE 0x00457273
0045726d  ff159488b100              CALL dword ptr [0x00b18894]
00457273  52                        PUSH EDX
00457274  51                        PUSH ECX
00457275  e8e27e6900                CALL 0x00aef15c
0045727a  83c408                    ADD ESP,0x8
0045727d  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00457283  33c0                      XOR EAX,EAX
00457285  81e100000010              AND ECX,0x10000000
0045728b  c745cc00000000            MOV dword ptr [EBP + -0x34],0x0
00457292  0bc1                      OR EAX,ECX
00457294  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0045729b  c645bc00                  MOV byte ptr [EBP + -0x44],0x0
0045729f  7418                      JZ 0x004572b9
004572a1  a17816c700                MOV EAX,[0x00c71678]
004572a6  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004572ac  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004572af  f6404401                  TEST byte ptr [EAX + 0x44],0x1
004572b3  0f8514050000              JNZ 0x004577cd
004572b9  e8a27c2900                CALL 0x006eef60
004572be  33d2                      XOR EDX,EDX
004572c0  b928000000                MOV ECX,0x28
004572c5  f7f1                      DIV ECX
004572c7  85d2                      TEST EDX,EDX
004572c9  7560                      JNZ 0x0045732b
004572cb  a17816c700                MOV EAX,[0x00c71678]
004572d0  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004572d6  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
004572dc  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
004572e2  03c8                      ADD ECX,EAX
004572e4  33c0                      XOR EAX,EAX
004572e6  85c9                      TEST ECX,ECX
004572e8  0f4fc1                    CMOVG EAX,ECX
004572eb  83f803                    CMP EAX,0x3
004572ee  7d3b                      JGE 0x0045732b
004572f0  6a01                      PUSH 0x1
004572f2  68ccd2b100                PUSH 0xb1d2cc
004572f7  8d4f48                    LEA ECX,[EDI + 0x48]
004572fa  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
00457304  e8c732fbff                CALL 0x0040a5d0
00457309  84c0                      TEST AL,AL
0045730b  740f                      JZ 0x0045731c
0045730d  8d4f78                    LEA ECX,[EDI + 0x78]
00457310  e89b2efbff                CALL 0x0040a1b0
00457315  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0045731c  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00457326  e9a2040000                JMP 0x004577cd
0045732b  f30f109504ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff04]
00457333  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0045733a  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
00457342  0f2fc2                    COMISS XMM0,XMM2
00457345  7717                      JA 0x0045735e
00457347  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0045734b  0f857c040000              JNZ 0x004577cd
00457351  e80a7c2900                CALL 0x006eef60
00457356  a803                      TEST AL,0x3
00457358  0f856f040000              JNZ 0x004577cd
0045735e  e8fd7b2900                CALL 0x006eef60
00457363  33d2                      XOR EDX,EDX
00457365  b905000000                MOV ECX,0x5
0045736a  f7f1                      DIV ECX
0045736c  85d2                      TEST EDX,EDX
0045736e  0f8559040000              JNZ 0x004577cd
00457374  52                        PUSH EDX
00457375  68000a0001                PUSH 0x1000a00
0045737a  8bcf                      MOV ECX,EDI
0045737c  e8af00fcff                CALL 0x00417430
00457381  84c0                      TEST AL,AL
00457383  0f8544040000              JNZ 0x004577cd
00457389  51                        PUSH ECX
0045738a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00457391  6a00                      PUSH 0x0
00457393  6a02                      PUSH 0x2
00457395  51                        PUSH ECX
00457396  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045739d  8bcf                      MOV ECX,EDI
0045739f  6a77                      PUSH 0x77
004573a1  e8faf72700                CALL 0x006d6ba0
004573a6  0f57c0                    XORPS XMM0,XMM0
004573a9  8d4f48                    LEA ECX,[EDI + 0x48]
004573ac  0f2f8500ffffff            COMISS XMM0,dword ptr [EBP + 0xffffff00]
004573b3  6a01                      PUSH 0x1
004573b5  68c8dcb100                PUSH 0xb1dcc8
004573ba  0f97c0                    SETA AL
004573bd  888748010000              MOV byte ptr [EDI + 0x148],AL
004573c3  e80832fbff                CALL 0x0040a5d0
004573c8  84c0                      TEST AL,AL
004573ca  740f                      JZ 0x004573db
004573cc  8d4f78                    LEA ECX,[EDI + 0x78]
004573cf  e8dc2dfbff                CALL 0x0040a1b0
004573d4  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004573db  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004573e1  898734030000              MOV dword ptr [EDI + 0x334],EAX
004573e7  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004573ed  898738030000              MOV dword ptr [EDI + 0x338],EAX
004573f3  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004573fd  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00457407  e9c1030000                JMP 0x004577cd
0045740c  83f80d                    CMP EAX,0xd
0045740f  0f8550010000              JNZ 0x00457565
00457415  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00457419  0f84a4030000              JZ 0x004577c3
0045741f  68dcd2b100                PUSH 0xb1d2dc
00457424  8d4f78                    LEA ECX,[EDI + 0x78]
00457427  e8a439fbff                CALL 0x0040add0
0045742c  84c0                      TEST AL,AL
0045742e  0f8415010000              JZ 0x00457549
00457434  51                        PUSH ECX
00457435  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045743c  6a00                      PUSH 0x0
0045743e  6a02                      PUSH 0x2
00457440  51                        PUSH ECX
00457441  c704240000803f            MOV dword ptr [ESP],0x3f800000
00457448  8bcf                      MOV ECX,EDI
0045744a  6a72                      PUSH 0x72
0045744c  e84ff72700                CALL 0x006d6ba0
00457451  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00457455  7536                      JNZ 0x0045748d
00457457  8d8d10ffffff              LEA ECX,[EBP + 0xffffff10]
0045745d  e8ce7afeff                CALL 0x0043ef30
00457462  50                        PUSH EAX
00457463  6a09                      PUSH 0x9
00457465  8d8508ffffff              LEA EAX,[EBP + 0xffffff08]
0045746b  c78508ffffff00000041      MOV dword ptr [EBP + 0xffffff08],0x41000000
00457475  50                        PUSH EAX
00457476  56                        PUSH ESI
00457477  8bcf                      MOV ECX,EDI
00457479  c7850cffffff0000c040      MOV dword ptr [EBP + 0xffffff0c],0x40c00000
00457483  e8583e2700                CALL 0x006cb2e0
00457488  e940030000                JMP 0x004577cd
0045748d  6800000010                PUSH 0x10000000
00457492  6a00                      PUSH 0x0
00457494  8bcf                      MOV ECX,EDI
00457496  e895fffbff                CALL 0x00417430
0045749b  84c0                      TEST AL,AL
0045749d  7417                      JZ 0x004574b6
0045749f  6a00                      PUSH 0x0
004574a1  51                        PUSH ECX
004574a2  6a00                      PUSH 0x0
004574a4  6a0e                      PUSH 0xe
004574a6  8bcf                      MOV ECX,EDI
004574a8  e833532500                CALL 0x006ac7e0
004574ad  83f803                    CMP EAX,0x3
004574b0  0f8317030000              JNC 0x004577cd
004574b6  51                        PUSH ECX
004574b7  c704240000803f            MOV dword ptr [ESP],0x3f800000
004574be  6a00                      PUSH 0x0
004574c0  6a02                      PUSH 0x2
004574c2  51                        PUSH ECX
004574c3  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
004574ca  8bcf                      MOV ECX,EDI
004574cc  6809010000                PUSH 0x109
004574d1  e8caf62700                CALL 0x006d6ba0
004574d6  e8857a2900                CALL 0x006eef60
004574db  8bf0                      MOV ESI,EAX
004574dd  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
004574e3  50                        PUSH EAX
004574e4  e8877b2200                CALL 0x0067f070
004574e9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004574ef  83c404                    ADD ESP,0x4
004574f2  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
004574f7  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004574fb  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
00457501  f30f590524a9ba00          MULSS XMM0,dword ptr [0x00baa924]
00457509  56                        PUSH ESI
0045750a  f30f591524a9ba00          MULSS XMM2,dword ptr [0x00baa924]
00457512  6a00                      PUSH 0x0
00457514  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0045751c  57                        PUSH EDI
0045751d  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
00457525  6840b6c700                PUSH 0xc7b640
0045752a  50                        PUSH EAX
0045752b  6a00                      PUSH 0x0
0045752d  6a0e                      PUSH 0xe
0045752f  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
00457537  f30f1195fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM2
0045753f  e8dc15fdff                CALL 0x00428b20
00457544  e984020000                JMP 0x004577cd
00457549  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045754d  0f8470020000              JZ 0x004577c3
00457553  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045755a  0f856d020000              JNZ 0x004577cd
00457560  e95e020000                JMP 0x004577c3
00457565  83f808                    CMP EAX,0x8
00457568  0f855f020000              JNZ 0x004577cd
0045756e  c7878401000002000000      MOV dword ptr [EDI + 0x184],0x2
00457578  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045757c  7409                      JZ 0x00457587
0045757e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00457585  7522                      JNZ 0x004575a9
00457587  6a00                      PUSH 0x0
00457589  68ecdcb100                PUSH 0xb1dcec
0045758e  8d4f48                    LEA ECX,[EDI + 0x48]
00457591  e8ea2dfbff                CALL 0x0040a380
00457596  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045759a  0f847d010000              JZ 0x0045771d
004575a0  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004575a7  7444                      JZ 0x004575ed
004575a9  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004575ac  85c0                      TEST EAX,EAX
004575ae  740a                      JZ 0x004575ba
004575b0  83781410                  CMP dword ptr [EAX + 0x14],0x10
004575b4  7209                      JC 0x004575bf
004575b6  8b00                      MOV EAX,dword ptr [EAX]
004575b8  eb05                      JMP 0x004575bf
004575ba  b8eca4b100                MOV EAX,0xb1a4ec
004575bf  b9ecdcb100                MOV ECX,0xb1dcec
004575c4  8a10                      MOV DL,byte ptr [EAX]
004575c6  3a11                      CMP DL,byte ptr [ECX]
004575c8  751a                      JNZ 0x004575e4
004575ca  84d2                      TEST DL,DL
004575cc  7412                      JZ 0x004575e0
004575ce  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004575d1  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004575d4  750e                      JNZ 0x004575e4
004575d6  83c002                    ADD EAX,0x2
004575d9  83c102                    ADD ECX,0x2
004575dc  84d2                      TEST DL,DL
004575de  75e4                      JNZ 0x004575c4
004575e0  33c0                      XOR EAX,EAX
004575e2  eb05                      JMP 0x004575e9
004575e4  1bc0                      SBB EAX,EAX
004575e6  83c801                    OR EAX,0x1
004575e9  85c0                      TEST EAX,EAX
004575eb  7475                      JZ 0x00457662
004575ed  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004575f1  0f8426010000              JZ 0x0045771d
004575f7  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004575fe  0f8419010000              JZ 0x0045771d
00457604  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00457607  85c0                      TEST EAX,EAX
00457609  740a                      JZ 0x00457615
0045760b  83781410                  CMP dword ptr [EAX + 0x14],0x10
0045760f  7209                      JC 0x0045761a
00457611  8b00                      MOV EAX,dword ptr [EAX]
00457613  eb05                      JMP 0x0045761a
00457615  b8eca4b100                MOV EAX,0xb1a4ec
0045761a  b9c8dcb100                MOV ECX,0xb1dcc8
0045761f  90                        NOP
00457620  8a10                      MOV DL,byte ptr [EAX]
00457622  3a11                      CMP DL,byte ptr [ECX]
00457624  751a                      JNZ 0x00457640
00457626  84d2                      TEST DL,DL
00457628  7412                      JZ 0x0045763c
0045762a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0045762d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00457630  750e                      JNZ 0x00457640
00457632  83c002                    ADD EAX,0x2
00457635  83c102                    ADD ECX,0x2
00457638  84d2                      TEST DL,DL
0045763a  75e4                      JNZ 0x00457620
0045763c  33c0                      XOR EAX,EAX
0045763e  eb05                      JMP 0x00457645
00457640  1bc0                      SBB EAX,EAX
00457642  83c801                    OR EAX,0x1
00457645  85c0                      TEST EAX,EAX
00457647  0f85d0000000              JNZ 0x0045771d
0045764d  68dcd2b100                PUSH 0xb1d2dc
00457652  8d4f48                    LEA ECX,[EDI + 0x48]
00457655  e8363afbff                CALL 0x0040b090
0045765a  84c0                      TEST AL,AL
0045765c  0f84bb000000              JZ 0x0045771d
00457662  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
00457669  740a                      JZ 0x00457675
0045766b  f30f1005e4adba00          MOVSS XMM0,dword ptr [0x00baade4]
00457673  eb08                      JMP 0x0045767d
00457675  f30f100568a8ba00          MOVSS XMM0,dword ptr [0x00baa868]
0045767d  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00457685  e8b60b2800                CALL 0x006d8240
0045768a  85c0                      TEST EAX,EAX
0045768c  7e10                      JLE 0x0045769e
0045768e  f30f5905c0a4ba00          MULSS XMM0,dword ptr [0x00baa4c0]
00457696  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0045769e  837f3001                  CMP dword ptr [EDI + 0x30],0x1
004576a2  7579                      JNZ 0x0045771d
004576a4  f30f109504ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff04]
004576ac  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
004576b3  f30f5e15d0a9ba00          DIVSS XMM2,dword ptr [0x00baa9d0]
004576bb  f30f102d80a2ba00          MOVSS XMM5,dword ptr [0x00baa280]
004576c3  0f2fd5                    COMISS XMM2,XMM5
004576c6  f30f109f64030000          MOVSS XMM3,dword ptr [EDI + 0x364]
004576ce  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004576d6  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
004576de  7606                      JBE 0x004576e6
004576e0  f30f59cd                  MULSS XMM1,XMM5
004576e4  eb27                      JMP 0x0045770d
004576e6  f30f100524adba00          MOVSS XMM0,dword ptr [0x00baad24]
004576ee  0f2fc2                    COMISS XMM0,XMM2
004576f1  7616                      JBE 0x00457709
004576f3  f30f59cd                  MULSS XMM1,XMM5
004576f7  f30f5ecc                  DIVSS XMM1,XMM4
004576fb  f30f58cb                  ADDSS XMM1,XMM3
004576ff  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00457707  eb14                      JMP 0x0045771d
00457709  f30f59ca                  MULSS XMM1,XMM2
0045770d  f30f5ecc                  DIVSS XMM1,XMM4
00457711  f30f5cd9                  SUBSS XMM3,XMM1
00457715  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0045771d  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
00457725  0f57d2                    XORPS XMM2,XMM2
00457728  0f2fda                    COMISS XMM3,XMM2
0045772b  f30f102594aaba00          MOVSS XMM4,dword ptr [0x00baaa94]
00457733  762c                      JBE 0x00457761
00457735  a17816c700                MOV EAX,[0x00c71678]
0045773a  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0045773e  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00457744  f30f10481c                MOVSS XMM1,dword ptr [EAX + 0x1c]
00457749  f30f58cc                  ADDSS XMM1,XMM4
0045774d  0f2fc1                    COMISS XMM0,XMM1
00457750  760f                      JBE 0x00457761
00457752  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
00457757  f30f5c05a0a9ba00          SUBSS XMM0,dword ptr [0x00baa9a0]
0045775f  eb2b                      JMP 0x0045778c
00457761  0f2fd3                    COMISS XMM2,XMM3
00457764  7630                      JBE 0x00457796
00457766  a17816c700                MOV EAX,[0x00c71678]
0045776b  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00457771  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
00457776  f30f5cc4                  SUBSS XMM0,XMM4
0045777a  0f2f06                    COMISS XMM0,dword ptr [ESI]
0045777d  7617                      JBE 0x00457796
0045777f  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
00457784  f30f5805a0a9ba00          ADDSS XMM0,dword ptr [0x00baa9a0]
0045778c  ff8710040000              INC dword ptr [EDI + 0x410]
00457792  f30f1106                  MOVSS dword ptr [ESI],XMM0
00457796  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0045779d  7e2e                      JLE 0x004577cd
0045779f  0f2fd3                    COMISS XMM2,XMM3
004577a2  760d                      JBE 0x004577b1
004577a4  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004577ac  0f2f06                    COMISS XMM0,dword ptr [ESI]
004577af  7712                      JA 0x004577c3
004577b1  0f2fda                    COMISS XMM3,XMM2
004577b4  7617                      JBE 0x004577cd
004577b6  f30f1006                  MOVSS XMM0,dword ptr [ESI]
004577ba  0f2f8734030000            COMISS XMM0,dword ptr [EDI + 0x334]
004577c1  760a                      JBE 0x004577cd
004577c3  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004577cd  a17816c700                MOV EAX,[0x00c71678]
004577d2  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004577d8  83b8b01b000037            CMP dword ptr [EAX + 0x1bb0],0x37
004577df  7539                      JNZ 0x0045781a
004577e1  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
004577e9  f30f100d14abba00          MOVSS XMM1,dword ptr [0x00baab14]
004577f1  0f2fca                    COMISS XMM1,XMM2
004577f4  7624                      JBE 0x0045781a
004577f6  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004577fe  f30f5cca                  SUBSS XMM1,XMM2
00457802  f30f5cc8                  SUBSS XMM1,XMM0
00457806  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0045780e  f30f58c8                  ADDSS XMM1,XMM0
00457812  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0045781a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0045781d  64890d00000000            MOV dword ptr FS:[0x0],ECX
00457824  59                        POP ECX
00457825  5f                        POP EDI
00457826  5e                        POP ESI
00457827  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0045782a  33cd                      XOR ECX,EBP
0045782c  e8fa786900                CALL 0x00aef12b
00457831  8be5                      MOV ESP,EBP
00457833  5d                        POP EBP
00457834  8be3                      MOV ESP,EBX
00457836  5b                        POP EBX
00457837  c3                        RET
