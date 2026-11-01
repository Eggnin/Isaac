; J460 NPC AI 0x0050bbe0 AI_0050bbe0
; types=16
; identities=16.0.0,16.1.0,16.2.0
; entry=0050bbe0
0050bbe0  53                        PUSH EBX
0050bbe1  8bdc                      MOV EBX,ESP
0050bbe3  83ec08                    SUB ESP,0x8
0050bbe6  83e4f8                    AND ESP,0xfffffff8
0050bbe9  83c404                    ADD ESP,0x4
0050bbec  55                        PUSH EBP
0050bbed  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0050bbf0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0050bbf4  8bec                      MOV EBP,ESP
0050bbf6  6aff                      PUSH -0x1
0050bbf8  684542af00                PUSH 0xaf4245
0050bbfd  64a100000000              MOV EAX,FS:[0x0]
0050bc03  50                        PUSH EAX
0050bc04  53                        PUSH EBX
0050bc05  81ec18010000              SUB ESP,0x118
0050bc0b  a1b493bf00                MOV EAX,[0x00bf93b4]
0050bc10  33c5                      XOR EAX,EBP
0050bc12  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0050bc15  56                        PUSH ESI
0050bc16  57                        PUSH EDI
0050bc17  50                        PUSH EAX
0050bc18  8d45f4                    LEA EAX,[EBP + -0xc]
0050bc1b  64a300000000              MOV FS:[0x0],EAX
0050bc21  8bf9                      MOV EDI,ECX
0050bc23  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0050bc2a  750f                      JNZ 0x0050bc3b
0050bc2c  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0050bc36  e917070000                JMP 0x0050c352
0050bc3b  51                        PUSH ECX
0050bc3c  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0050bc42  c7042400000000            MOV dword ptr [ESP],0x0
0050bc49  50                        PUSH EAX
0050bc4a  e8f12f1b00                CALL 0x006bec40
0050bc4f  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0050bc55  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0050bc5d  83f804                    CMP EAX,0x4
0050bc60  0f8530030000              JNZ 0x0050bf96
0050bc66  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0050bc6a  0f85b1000000              JNZ 0x0050bd21
0050bc70  6a01                      PUSH 0x1
0050bc72  6a00                      PUSH 0x0
0050bc74  8d8f14040000              LEA ECX,[EDI + 0x414]
0050bc7a  51                        PUSH ECX
0050bc7b  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0050bc81  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
0050bc88  50                        PUSH EAX
0050bc89  e832772d00                CALL 0x007e33c0
0050bc8e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050bc95  8bcf                      MOV ECX,EDI
0050bc97  740d                      JZ 0x0050bca6
0050bc99  6a09                      PUSH 0x9
0050bc9b  e8c0c51c00                CALL 0x006d8260
0050bca0  84c0                      TEST AL,AL
0050bca2  7468                      JZ 0x0050bd0c
0050bca4  eb54                      JMP 0x0050bcfa
0050bca6  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
0050bcae  0f57d2                    XORPS XMM2,XMM2
0050bcb1  e8aa0a1a00                CALL 0x006ac760
0050bcb6  85c0                      TEST EAX,EAX
0050bcb8  7452                      JZ 0x0050bd0c
0050bcba  8bcf                      MOV ECX,EDI
0050bcbc  e87f2b1b00                CALL 0x006be840
0050bcc1  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0050bcc9  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0050bcd1  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
0050bcd9  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0050bce1  f30f59c0                  MULSS XMM0,XMM0
0050bce5  f30f59c9                  MULSS XMM1,XMM1
0050bce9  f30f58c8                  ADDSS XMM1,XMM0
0050bced  f30f1005e0abba00          MOVSS XMM0,dword ptr [0x00baabe0]
0050bcf5  0f2fc1                    COMISS XMM0,XMM1
0050bcf8  7612                      JBE 0x0050bd0c
0050bcfa  8b07                      MOV EAX,dword ptr [EDI]
0050bcfc  8d4dac                    LEA ECX,[EBP + -0x54]
0050bcff  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
0050bd02  e8699ff2ff                CALL 0x00435c70
0050bd07  50                        PUSH EAX
0050bd08  8bcf                      MOV ECX,EDI
0050bd0a  ffd2                      CALL EDX
0050bd0c  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050bd14  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0050bd1c  e9b9000000                JMP 0x0050bdda
0050bd21  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050bd28  7522                      JNZ 0x0050bd4c
0050bd2a  8bcf                      MOV ECX,EDI
0050bd2c  e80f2b1b00                CALL 0x006be840
0050bd31  50                        PUSH EAX
0050bd32  8bcf                      MOV ECX,EDI
0050bd34  e827c01c00                CALL 0x006d7d60
0050bd39  84c0                      TEST AL,AL
0050bd3b  750f                      JNZ 0x0050bd4c
0050bd3d  8d8f14040000              LEA ECX,[EDI + 0x414]
0050bd43  6a01                      PUSH 0x1
0050bd45  e8b6a52d00                CALL 0x007e6300
0050bd4a  eb7e                      JMP 0x0050bdca
0050bd4c  6a00                      PUSH 0x0
0050bd4e  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0050bd54  8d8f14040000              LEA ECX,[EDI + 0x414]
0050bd5a  50                        PUSH EAX
0050bd5b  e8e08b2d00                CALL 0x007e4940
0050bd60  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050bd67  7412                      JZ 0x0050bd7b
0050bd69  6a0a                      PUSH 0xa
0050bd6b  8bcf                      MOV ECX,EDI
0050bd6d  e81ec51c00                CALL 0x006d8290
0050bd72  0fb6c0                    MOVZX EAX,AL
0050bd75  85c0                      TEST EAX,EAX
0050bd77  7451                      JZ 0x0050bdca
0050bd79  eb1f                      JMP 0x0050bd9a
0050bd7b  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0050bd82  7e46                      JLE 0x0050bdca
0050bd84  a17816c700                MOV EAX,[0x00c71678]
0050bd89  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
0050bd8f  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
0050bd95  83f80a                    CMP EAX,0xa
0050bd98  7e30                      JLE 0x0050bdca
0050bd9a  e8c1311e00                CALL 0x006eef60
0050bd9f  b964000000                MOV ECX,0x64
0050bda4  33d2                      XOR EDX,EDX
0050bda6  f7f1                      DIV ECX
0050bda8  51                        PUSH ECX
0050bda9  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050bdb0  6a00                      PUSH 0x0
0050bdb2  8d422d                    LEA EAX,[EDX + 0x2d]
0050bdb5  50                        PUSH EAX
0050bdb6  51                        PUSH ECX
0050bdb7  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050bdbe  8bcf                      MOV ECX,EDI
0050bdc0  688f000000                PUSH 0x8f
0050bdc5  e8d6ad1c00                CALL 0x006d6ba0
0050bdca  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050bdd2  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0050bdda  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050bde2  a118ddb100                MOV EAX,[0x00b1dd18]
0050bde7  8b0d1cddb100              MOV ECX,dword ptr [0x00b1dd1c]
0050bded  c745d00f000000            MOV dword ptr [EBP + -0x30],0xf
0050bdf4  c745cc08000000            MOV dword ptr [EBP + -0x34],0x8
0050bdfb  8945bc                    MOV dword ptr [EBP + -0x44],EAX
0050bdfe  894dc0                    MOV dword ptr [EBP + -0x40],ECX
0050be01  c645c400                  MOV byte ptr [EBP + -0x3c],0x0
0050be05  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0050be0c  a130ddb100                MOV EAX,[0x00b1dd30]
0050be11  8b0d34ddb100              MOV ECX,dword ptr [0x00b1dd34]
0050be17  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050be1e  c745e408000000            MOV dword ptr [EBP + -0x1c],0x8
0050be25  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
0050be28  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0050be2b  c645dc00                  MOV byte ptr [EBP + -0x24],0x0
0050be2f  51                        PUSH ECX
0050be30  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0050be34  8d45bc                    LEA EAX,[EBP + -0x44]
0050be37  c70424cdcccc3d            MOV dword ptr [ESP],0x3dcccccd
0050be3e  8bcf                      MOV ECX,EDI
0050be40  50                        PUSH EAX
0050be41  8d45d4                    LEA EAX,[EBP + -0x2c]
0050be44  50                        PUSH EAX
0050be45  e8e6541b00                CALL 0x006c1330
0050be4a  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0050be4e  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
0050be51  83fa10                    CMP EDX,0x10
0050be54  7228                      JC 0x0050be7e
0050be56  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
0050be59  42                        INC EDX
0050be5a  8bc1                      MOV EAX,ECX
0050be5c  81fa00100000              CMP EDX,0x1000
0050be62  7210                      JC 0x0050be74
0050be64  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050be67  83c223                    ADD EDX,0x23
0050be6a  2bc1                      SUB EAX,ECX
0050be6c  83c0fc                    ADD EAX,-0x4
0050be6f  83f81f                    CMP EAX,0x1f
0050be72  7749                      JA 0x0050bebd
0050be74  52                        PUSH EDX
0050be75  51                        PUSH ECX
0050be76  e8e1325e00                CALL 0x00aef15c
0050be7b  83c408                    ADD ESP,0x8
0050be7e  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0050be85  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
0050be88  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
0050be8f  c745e80f000000            MOV dword ptr [EBP + -0x18],0xf
0050be96  c645d400                  MOV byte ptr [EBP + -0x2c],0x0
0050be9a  83fa10                    CMP EDX,0x10
0050be9d  722e                      JC 0x0050becd
0050be9f  8b4dbc                    MOV ECX,dword ptr [EBP + -0x44]
0050bea2  42                        INC EDX
0050bea3  8bc1                      MOV EAX,ECX
0050bea5  81fa00100000              CMP EDX,0x1000
0050beab  7216                      JC 0x0050bec3
0050bead  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050beb0  83c223                    ADD EDX,0x23
0050beb3  2bc1                      SUB EAX,ECX
0050beb5  83c0fc                    ADD EAX,-0x4
0050beb8  83f81f                    CMP EAX,0x1f
0050bebb  7606                      JBE 0x0050bec3
0050bebd  ff159488b100              CALL dword ptr [0x00b18894]
0050bec3  52                        PUSH EDX
0050bec4  51                        PUSH ECX
0050bec5  e892325e00                CALL 0x00aef15c
0050beca  83c408                    ADD ESP,0x8
0050becd  83bf500b000000            CMP dword ptr [EDI + 0xb50],0x0
0050bed4  7e0b                      JLE 0x0050bee1
0050bed6  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0050beda  b8680db600                MOV EAX,0xb60d68
0050bedf  7505                      JNZ 0x0050bee6
0050bee1  b8e4dcb100                MOV EAX,0xb1dce4
0050bee6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050beea  7418                      JZ 0x0050bf04
0050beec  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0050bef3  740f                      JZ 0x0050bf04
0050bef5  6a00                      PUSH 0x0
0050bef7  8d7748                    LEA ESI,[EDI + 0x48]
0050befa  50                        PUSH EAX
0050befb  8bce                      MOV ECX,ESI
0050befd  e83eeaefff                CALL 0x0040a940
0050bf02  eb22                      JMP 0x0050bf26
0050bf04  6a01                      PUSH 0x1
0050bf06  8d7748                    LEA ESI,[EDI + 0x48]
0050bf09  50                        PUSH EAX
0050bf0a  8bce                      MOV ECX,ESI
0050bf0c  e8dfebefff                CALL 0x0040aaf0
0050bf11  84c0                      TEST AL,AL
0050bf13  7411                      JZ 0x0050bf26
0050bf15  837e5400                  CMP dword ptr [ESI + 0x54],0x0
0050bf19  740b                      JZ 0x0050bf26
0050bf1b  8d4e50                    LEA ECX,[ESI + 0x50]
0050bf1e  0f57c9                    XORPS XMM1,XMM1
0050bf21  e8daceefff                CALL 0x00408e00
0050bf26  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0050bf2c  83f8ff                    CMP EAX,-0x1
0050bf2f  741b                      JZ 0x0050bf4c
0050bf31  51                        PUSH ECX
0050bf32  57                        PUSH EDI
0050bf33  50                        PUSH EAX
0050bf34  6a09                      PUSH 0x9
0050bf36  e8d5a14400                CALL 0x00956110
0050bf3b  33c9                      XOR ECX,ECX
0050bf3d  84c0                      TEST AL,AL
0050bf3f  0f95c1                    SETNZ CL
0050bf42  85c9                      TEST ECX,ECX
0050bf44  0f8466010000              JZ 0x0050c0b0
0050bf4a  eb23                      JMP 0x0050bf6f
0050bf4c  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0050bf53  0f8457010000              JZ 0x0050c0b0
0050bf59  e802301e00                CALL 0x006eef60
0050bf5e  33d2                      XOR EDX,EDX
0050bf60  b92c010000                MOV ECX,0x12c
0050bf65  f7f1                      DIV ECX
0050bf67  85d2                      TEST EDX,EDX
0050bf69  0f8541010000              JNZ 0x0050c0b0
0050bf6f  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0050bf73  0f8437010000              JZ 0x0050c0b0
0050bf79  6a00                      PUSH 0x0
0050bf7b  68ac0db600                PUSH 0xb60dac
0050bf80  8bce                      MOV ECX,ESI
0050bf82  e8b9e9efff                CALL 0x0040a940
0050bf87  c787640b000005000000      MOV dword ptr [EDI + 0xb64],0x5
0050bf91  e91a010000                JMP 0x0050c0b0
0050bf96  83f805                    CMP EAX,0x5
0050bf99  0f8519010000              JNZ 0x0050c0b8
0050bf9f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050bfa7  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0050bfaf  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050bfb7  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
0050bfbe  740d                      JZ 0x0050bfcd
0050bfc0  80bfac00000000            CMP byte ptr [EDI + 0xac],0x0
0050bfc7  0f85e3000000              JNZ 0x0050c0b0
0050bfcd  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
0050bfd4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050bfda  8db73c030000              LEA ESI,[EDI + 0x33c]
0050bfe0  6a00                      PUSH 0x0
0050bfe2  6a00                      PUSH 0x0
0050bfe4  6a04                      PUSH 0x4
0050bfe6  83ec10                    SUB ESP,0x10
0050bfe9  8bc4                      MOV EAX,ESP
0050bfeb  57                        PUSH EDI
0050bfec  6a01                      PUSH 0x1
0050bfee  83ec08                    SUB ESP,0x8
0050bff1  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0050bff4  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
0050bffc  c7042400002042            MOV dword ptr [ESP],0x42200000
0050c003  56                        PUSH ESI
0050c004  e897321f00                CALL 0x006ff2a0
0050c009  e8522f1e00                CALL 0x006eef60
0050c00e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050c014  50                        PUSH EAX
0050c015  6a00                      PUSH 0x0
0050c017  6a00                      PUSH 0x0
0050c019  6840b6c700                PUSH 0xc7b640
0050c01e  56                        PUSH ESI
0050c01f  6a01                      PUSH 0x1
0050c021  68e8030000                PUSH 0x3e8
0050c026  e8f5caf1ff                CALL 0x00428b20
0050c02b  e8302f1e00                CALL 0x006eef60
0050c030  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050c036  50                        PUSH EAX
0050c037  6a00                      PUSH 0x0
0050c039  6a00                      PUSH 0x0
0050c03b  6840b6c700                PUSH 0xc7b640
0050c040  56                        PUSH ESI
0050c041  6a12                      PUSH 0x12
0050c043  68e8030000                PUSH 0x3e8
0050c048  e8d3caf1ff                CALL 0x00428b20
0050c04d  8bc8                      MOV ECX,EAX
0050c04f  8b10                      MOV EDX,dword ptr [EAX]
0050c051  ff520c                    CALL dword ptr [EDX + 0xc]
0050c054  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0050c05a  e8d12ef3ff                CALL 0x0043ef30
0050c05f  8bc8                      MOV ECX,EAX
0050c061  e8dac11c00                CALL 0x006d8240
0050c066  85c0                      TEST EAX,EAX
0050c068  7e0a                      JLE 0x0050c074
0050c06a  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0050c072  eb08                      JMP 0x0050c07c
0050c074  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
0050c07c  51                        PUSH ECX
0050c07d  6a06                      PUSH 0x6
0050c07f  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050c085  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0050c08d  50                        PUSH EAX
0050c08e  56                        PUSH ESI
0050c08f  8bcf                      MOV ECX,EDI
0050c091  c785fcfeffff00000000      MOV dword ptr [EBP + 0xfffffefc],0x0
0050c09b  e840f21b00                CALL 0x006cb2e0
0050c0a0  8d4dac                    LEA ECX,[EBP + -0x54]
0050c0a3  e8c89bf2ff                CALL 0x00435c70
0050c0a8  8b17                      MOV EDX,dword ptr [EDI]
0050c0aa  8bcf                      MOV ECX,EDI
0050c0ac  50                        PUSH EAX
0050c0ad  ff5224                    CALL dword ptr [EDX + 0x24]
0050c0b0  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0050c0b8  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0050c0bf  0f848d020000              JZ 0x0050c352
0050c0c5  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0050c0c8  83f802                    CMP EAX,0x2
0050c0cb  0f859e000000              JNZ 0x0050c16f
0050c0d1  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0050c0d7  2500000001                AND EAX,0x1000000
0050c0dc  83c800                    OR EAX,0x0
0050c0df  0f856d020000              JNZ 0x0050c352
0050c0e5  0f10050091c700            MOVUPS XMM0,xmmword ptr [0x00c79100]
0050c0ec  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050c0f2  8db73c030000              LEA ESI,[EDI + 0x33c]
0050c0f8  50                        PUSH EAX
0050c0f9  50                        PUSH EAX
0050c0fa  6a04                      PUSH 0x4
0050c0fc  83ec10                    SUB ESP,0x10
0050c0ff  8bc4                      MOV EAX,ESP
0050c101  57                        PUSH EDI
0050c102  6a01                      PUSH 0x1
0050c104  83ec08                    SUB ESP,0x8
0050c107  0f1100                    MOVUPS xmmword ptr [EAX],XMM0
0050c10a  c744240400007042          MOV dword ptr [ESP + 0x4],0x42700000
0050c112  c7042400002042            MOV dword ptr [ESP],0x42200000
0050c119  56                        PUSH ESI
0050c11a  e881311f00                CALL 0x006ff2a0
0050c11f  e83c2e1e00                CALL 0x006eef60
0050c124  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050c12a  50                        PUSH EAX
0050c12b  6a00                      PUSH 0x0
0050c12d  6a00                      PUSH 0x0
0050c12f  6840b6c700                PUSH 0xc7b640
0050c134  56                        PUSH ESI
0050c135  6a01                      PUSH 0x1
0050c137  68e8030000                PUSH 0x3e8
0050c13c  e8dfc9f1ff                CALL 0x00428b20
0050c141  e81a2e1e00                CALL 0x006eef60
0050c146  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050c14c  50                        PUSH EAX
0050c14d  6a00                      PUSH 0x0
0050c14f  6a00                      PUSH 0x0
0050c151  6840b6c700                PUSH 0xc7b640
0050c156  56                        PUSH ESI
0050c157  6a12                      PUSH 0x12
0050c159  68e8030000                PUSH 0x3e8
0050c15e  e8bdc9f1ff                CALL 0x00428b20
0050c163  8bc8                      MOV ECX,EAX
0050c165  8b10                      MOV EDX,dword ptr [EAX]
0050c167  ff520c                    CALL dword ptr [EDX + 0xc]
0050c16a  e9e3010000                JMP 0x0050c352
0050c16f  83f801                    CMP EAX,0x1
0050c172  7569                      JNZ 0x0050c1dd
0050c174  e8c7c01c00                CALL 0x006d8240
0050c179  85c0                      TEST EAX,EAX
0050c17b  7f08                      JG 0x0050c185
0050c17d  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
0050c185  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
0050c18b  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0050c193  c785fcfeffff00000000      MOV dword ptr [EBP + 0xfffffefc],0x0
0050c19d  8db73c030000              LEA ESI,[EDI + 0x33c]
0050c1a3  e8882df3ff                CALL 0x0043ef30
0050c1a8  50                        PUSH EAX
0050c1a9  6a07                      PUSH 0x7
0050c1ab  8d85f8feffff              LEA EAX,[EBP + 0xfffffef8]
0050c1b1  8bcf                      MOV ECX,EDI
0050c1b3  50                        PUSH EAX
0050c1b4  56                        PUSH ESI
0050c1b5  e826f11b00                CALL 0x006cb2e0
0050c1ba  e8a12d1e00                CALL 0x006eef60
0050c1bf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050c1c5  50                        PUSH EAX
0050c1c6  6a00                      PUSH 0x0
0050c1c8  57                        PUSH EDI
0050c1c9  6840b6c700                PUSH 0xc7b640
0050c1ce  56                        PUSH ESI
0050c1cf  6a03                      PUSH 0x3
0050c1d1  6a04                      PUSH 0x4
0050c1d3  e848c9f1ff                CALL 0x00428b20
0050c1d8  e975010000                JMP 0x0050c352
0050c1dd  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0050c1e5  0f2f05c0adba00            COMISS XMM0,dword ptr [0x00baadc0]
0050c1ec  0f8660010000              JBE 0x0050c352
0050c1f2  0fbf87760c0000            MOVSX EAX,word ptr [EDI + 0xc76]
0050c1f9  b904000000                MOV ECX,0x4
0050c1fe  2bc8                      SUB ECX,EAX
0050c200  33f6                      XOR ESI,ESI
0050c202  85c9                      TEST ECX,ECX
0050c204  0f4ff1                    CMOVG ESI,ECX
0050c207  89b5fcfeffff              MOV dword ptr [EBP + 0xfffffefc],ESI
0050c20d  85f6                      TEST ESI,ESI
0050c20f  0f8e3d010000              JLE 0x0050c352
0050c215  be0e000000                MOV ESI,0xe
0050c21a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0050c220  e83b2d1e00                CALL 0x006eef60
0050c225  33d2                      XOR EDX,EDX
0050c227  b90b000000                MOV ECX,0xb
0050c22c  f7f1                      DIV ECX
0050c22e  8d4102                    LEA EAX,[ECX + 0x2]
0050c231  83fa07                    CMP EDX,0x7
0050c234  760c                      JBE 0x0050c242
0050c236  c785ecfeffff12000000      MOV dword ptr [EBP + 0xfffffeec],0x12
0050c240  eb09                      JMP 0x0050c24b
0050c242  0f44c6                    CMOVZ EAX,ESI
0050c245  8985ecfeffff              MOV dword ptr [EBP + 0xfffffeec],EAX
0050c24b  e8102d1e00                CALL 0x006eef60
0050c250  660f6ec0                  MOVD XMM0,EAX
0050c254  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050c258  c1e81f                    SHR EAX,0x1f
0050c25b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050c264  660f5ac0                  CVTPD2PS XMM0,XMM0
0050c268  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050c270  f30f590508a7ba00          MULSS XMM0,dword ptr [0x00baa708]
0050c278  f30f58c0                  ADDSS XMM0,XMM0
0050c27c  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
0050c284  e8d72c1e00                CALL 0x006eef60
0050c289  660f6ec0                  MOVD XMM0,EAX
0050c28d  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050c291  c1e81f                    SHR EAX,0x1f
0050c294  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050c29d  660f5ac0                  CVTPD2PS XMM0,XMM0
0050c2a1  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0050c2a9  f30f5905a4a7ba00          MULSS XMM0,dword ptr [0x00baa7a4]
0050c2b1  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0050c2b9  e8a22c1e00                CALL 0x006eef60
0050c2be  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0050c2c6  8bf0                      MOV ESI,EAX
0050c2c8  e87312f1ff                CALL 0x0041d540
0050c2cd  f30f5985f0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffef0]
0050c2d5  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0050c2dd  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
0050c2e5  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
0050c2ed  e82e12f1ff                CALL 0x0041d520
0050c2f2  f30f5985f0feffff          MULSS XMM0,dword ptr [EBP + 0xfffffef0]
0050c2fa  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
0050c300  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050c306  56                        PUSH ESI
0050c307  6a00                      PUSH 0x0
0050c309  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0050c311  57                        PUSH EDI
0050c312  6840b6c700                PUSH 0xc7b640
0050c317  50                        PUSH EAX
0050c318  6a00                      PUSH 0x0
0050c31a  ffb5ecfeffff              PUSH dword ptr [EBP + 0xfffffeec]
0050c320  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
0050c328  e8f3c7f1ff                CALL 0x00428b20
0050c32d  be0e000000                MOV ESI,0xe
0050c332  83a068010000fb            AND dword ptr [EAX + 0x168],0xfffffffb
0050c339  83adfcfeffff01            SUB dword ptr [EBP + 0xfffffefc],0x1
0050c340  8b886c010000              MOV ECX,dword ptr [EAX + 0x16c]
0050c346  89886c010000              MOV dword ptr [EAX + 0x16c],ECX
0050c34c  0f85cefeffff              JNZ 0x0050c220
0050c352  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0050c355  64890d00000000            MOV dword ptr FS:[0x0],ECX
0050c35c  59                        POP ECX
0050c35d  5f                        POP EDI
0050c35e  5e                        POP ESI
0050c35f  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0050c362  33cd                      XOR ECX,EBP
0050c364  e8c22d5e00                CALL 0x00aef12b
0050c369  8be5                      MOV ESP,EBP
0050c36b  5d                        POP EBP
0050c36c  8be3                      MOV ESP,EBX
0050c36e  5b                        POP EBX
0050c36f  c3                        RET
