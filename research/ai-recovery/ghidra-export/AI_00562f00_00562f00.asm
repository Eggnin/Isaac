; J460 NPC AI 0x00562f00 AI_00562f00
; types=876
; identities=876.0.0,876.1.0
; entry=00562f00
00562f00  55                        PUSH EBP
00562f01  8bec                      MOV EBP,ESP
00562f03  83e4f8                    AND ESP,0xfffffff8
00562f06  81ecf0000000              SUB ESP,0xf0
00562f0c  a1b493bf00                MOV EAX,[0x00bf93b4]
00562f11  33c4                      XOR EAX,ESP
00562f13  898424ec000000            MOV dword ptr [ESP + 0xec],EAX
00562f1a  56                        PUSH ESI
00562f1b  57                        PUSH EDI
00562f1c  8bf9                      MOV EDI,ECX
00562f1e  33d2                      XOR EDX,EDX
00562f20  b903000000                MOV ECX,0x3
00562f25  8b87ec030000              MOV EAX,dword ptr [EDI + 0x3ec]
00562f2b  f7f1                      DIV ECX
00562f2d  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00562f31  8b1495b418b600            MOV EDX,dword ptr [EDX*0x4 + 0xb618b4]
00562f38  8954240c                  MOV dword ptr [ESP + 0xc],EDX
00562f3c  754f                      JNZ 0x00562f8d
00562f3e  83bf9c00000000            CMP dword ptr [EDI + 0x9c],0x0
00562f45  7546                      JNZ 0x00562f8d
00562f47  6a01                      PUSH 0x1
00562f49  68d817b600                PUSH 0xb617d8
00562f4e  8d4f48                    LEA ECX,[EDI + 0x48]
00562f51  e87a76eaff                CALL 0x0040a5d0
00562f56  84c0                      TEST AL,AL
00562f58  7420                      JZ 0x00562f7a
00562f5a  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00562f5d  85c0                      TEST EAX,EAX
00562f5f  7419                      JZ 0x00562f7a
00562f61  8d4f78                    LEA ECX,[EDI + 0x78]
00562f64  0f57c9                    XORPS XMM1,XMM1
00562f67  e8945eeaff                CALL 0x00408e00
00562f6c  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00562f6f  85c0                      TEST EAX,EAX
00562f71  7407                      JZ 0x00562f7a
00562f73  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
00562f7a  6a00                      PUSH 0x0
00562f7c  684c18b600                PUSH 0xb6184c
00562f81  8d4f48                    LEA ECX,[EDI + 0x48]
00562f84  e8b779eaff                CALL 0x0040a940
00562f89  8b54240c                  MOV EDX,dword ptr [ESP + 0xc]
00562f8d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00562f93  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00562f9b  83f810                    CMP EAX,0x10
00562f9e  0f87ad090000              JA 0x00563951
00562fa4  0fb6808c3d5600            MOVZX EAX,byte ptr [EAX + 0x563d8c]
00562fab  ff2485783d5600            JMP dword ptr [EAX*0x4 + 0x563d78]
00563951  be08000000                MOV ESI,0x8
00563956  b803000000                MOV EAX,0x3
0056395b  39b7640b0000              CMP dword ptr [EDI + 0xb64],ESI
00563961  0f44f0                    CMOVZ ESI,EAX
00563964  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0056396a  2500400000                AND EAX,0x4000
0056396f  83c800                    OR EAX,0x0
00563972  0f8521010000              JNZ 0x00563a99
00563978  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0056397e  e8cd991900                CALL 0x006fd350
00563983  84c0                      TEST AL,AL
00563985  0f850e010000              JNZ 0x00563a99
0056398b  a17816c700                MOV EAX,[0x00c71678]
00563990  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00563996  034720                    ADD EAX,dword ptr [EDI + 0x20]
00563999  99                        CDQ
0056399a  f7fe                      IDIV ESI
0056399c  85d2                      TEST EDX,EDX
0056399e  0f85f5000000              JNZ 0x00563a99
005639a4  e8b7b51800                CALL 0x006eef60
005639a9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005639af  8d973c030000              LEA EDX,[EDI + 0x33c]
005639b5  6a00                      PUSH 0x0
005639b7  50                        PUSH EAX
005639b8  6a00                      PUSH 0x0
005639ba  57                        PUSH EDI
005639bb  6840b6c700                PUSH 0xc7b640
005639c0  52                        PUSH EDX
005639c1  6a5e                      PUSH 0x5e
005639c3  68e8030000                PUSH 0x3e8
005639c8  e843aa1900                CALL 0x006fe410
005639cd  8bf0                      MOV ESI,EAX
005639cf  e88cb51800                CALL 0x006eef60
005639d4  8bce                      MOV ECX,ESI
005639d6  660f6ec0                  MOVD XMM0,EAX
005639da  f30fe6c0                  CVTDQ2PD XMM0,XMM0
005639de  c1e81f                    SHR EAX,0x1f
005639e1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005639ea  8b06                      MOV EAX,dword ptr [ESI]
005639ec  660f5ac8                  CVTPD2PS XMM1,XMM0
005639f0  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
005639f8  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
00563a00  f30f580d80a3ba00          ADDSS XMM1,dword ptr [0x00baa380]
00563a08  0f28c1                    MOVAPS XMM0,XMM1
00563a0b  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
00563a13  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
00563a1b  f30f118ee8000000          MOVSS dword ptr [ESI + 0xe8],XMM1
00563a23  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00563a2b  ff500c                    CALL dword ptr [EAX + 0xc]
00563a2e  e82db51800                CALL 0x006eef60
00563a33  33d2                      XOR EDX,EDX
00563a35  b903000000                MOV ECX,0x3
00563a3a  f7f1                      DIV ECX
00563a3c  85d2                      TEST EDX,EDX
00563a3e  7559                      JNZ 0x00563a99
00563a40  e81bb51800                CALL 0x006eef60
00563a45  51                        PUSH ECX
00563a46  8bcf                      MOV ECX,EDI
00563a48  660f6ec0                  MOVD XMM0,EAX
00563a4c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00563a50  c1e81f                    SHR EAX,0x1f
00563a53  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00563a5c  660f5ac0                  CVTPD2PS XMM0,XMM0
00563a60  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00563a68  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00563a70  f30f5805f8a1ba00          ADDSS XMM0,dword ptr [0x00baa1f8]
00563a78  f30f110424                MOVSS dword ptr [ESP],XMM0
00563a7d  e84e2a1500                CALL 0x006b64d0
00563a82  6a01                      PUSH 0x1
00563a84  6a00                      PUSH 0x0
00563a86  68ff000000                PUSH 0xff
00563a8b  8b10                      MOV EDX,dword ptr [EAX]
00563a8d  8bc8                      MOV ECX,EAX
00563a8f  6aff                      PUSH -0x1
00563a91  6898c8c500                PUSH 0xc5c898
00563a96  ff523c                    CALL dword ptr [EDX + 0x3c]
00563a99  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00563a9c  85c0                      TEST EAX,EAX
00563a9e  0f85c4000000              JNZ 0x00563b68
00563aa4  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00563aa9  0f57c9                    XORPS XMM1,XMM1
00563aac  0f2fc1                    COMISS XMM0,XMM1
00563aaf  0f8669010000              JBE 0x00563c1e
00563ab5  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00563ab8  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00563abb  0f845d010000              JZ 0x00563c1e
00563ac1  8b470c                    MOV EAX,dword ptr [EDI + 0xc]
00563ac4  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00563acc  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00563ad4  f30f5c40ec                SUBSS XMM0,dword ptr [EAX + -0x14]
00563ad9  f30f5c48e8                SUBSS XMM1,dword ptr [EAX + -0x18]
00563ade  0f28d0                    MOVAPS XMM2,XMM0
00563ae1  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00563ae7  f30f59d0                  MULSS XMM2,XMM0
00563aeb  0f28c1                    MOVAPS XMM0,XMM1
00563aee  f30f59c1                  MULSS XMM0,XMM1
00563af2  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00563af8  f30f58d0                  ADDSS XMM2,XMM0
00563afc  0f2f1510a0ba00            COMISS XMM2,dword ptr [0x00baa010]
00563b03  0f8615010000              JBE 0x00563c1e
00563b09  0f28c2                    MOVAPS XMM0,XMM2
00563b0c  e83f1fedff                CALL 0x00435a50
00563b11  f30f1054240c              MOVSS XMM2,dword ptr [ESP + 0xc]
00563b17  0f28c8                    MOVAPS XMM1,XMM0
00563b1a  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
00563b21  761c                      JBE 0x00563b3f
00563b23  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00563b2b  f30f5ec1                  DIVSS XMM0,XMM1
00563b2f  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
00563b35  f30f59c8                  MULSS XMM1,XMM0
00563b39  f30f59d0                  MULSS XMM2,XMM0
00563b3d  eb06                      JMP 0x00563b45
00563b3f  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
00563b45  f30f590d48a8ba00          MULSS XMM1,dword ptr [0x00baa848]
00563b4d  f30f591548a8ba00          MULSS XMM2,dword ptr [0x00baa848]
00563b55  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
00563b5d  f30f1197bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM2
00563b65  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00563b68  83f801                    CMP EAX,0x1
00563b6b  0f85ad000000              JNZ 0x00563c1e
00563b71  50                        PUSH EAX
00563b72  8d8f98000000              LEA ECX,[EDI + 0x98]
00563b78  e8f370eaff                CALL 0x0040ac70
00563b7d  89442410                  MOV dword ptr [ESP + 0x10],EAX
00563b81  85c0                      TEST EAX,EAX
00563b83  0f8495000000              JZ 0x00563c1e
00563b89  6a00                      PUSH 0x0
00563b8b  8d4f48                    LEA ECX,[EDI + 0x48]
00563b8e  e88d76eaff                CALL 0x0040b220
00563b93  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
00563b97  6a00                      PUSH 0x0
00563b99  8b0a                      MOV ECX,dword ptr [EDX]
00563b9b  894840                    MOV dword ptr [EAX + 0x40],ECX
00563b9e  8b4a04                    MOV ECX,dword ptr [EDX + 0x4]
00563ba1  894844                    MOV dword ptr [EAX + 0x44],ECX
00563ba4  8d4f48                    LEA ECX,[EDI + 0x48]
00563ba7  e87476eaff                CALL 0x0040b220
00563bac  8b4c2410                  MOV ECX,dword ptr [ESP + 0x10]
00563bb0  6a00                      PUSH 0x0
00563bb2  8b5110                    MOV EDX,dword ptr [ECX + 0x10]
00563bb5  895034                    MOV dword ptr [EAX + 0x34],EDX
00563bb8  8b5114                    MOV EDX,dword ptr [ECX + 0x14]
00563bbb  895038                    MOV dword ptr [EAX + 0x38],EDX
00563bbe  f30f104144                MOVSS XMM0,dword ptr [ECX + 0x44]
00563bc3  8d4f48                    LEA ECX,[EDI + 0x48]
00563bc6  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00563bcc  e84f76eaff                CALL 0x0040b220
00563bd1  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
00563bd7  0f57c9                    XORPS XMM1,XMM1
00563bda  f30f11403c                MOVSS dword ptr [EAX + 0x3c],XMM0
00563bdf  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00563be7  0f2fc8                    COMISS XMM1,XMM0
00563bea  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
00563bf2  7604                      JBE 0x00563bf8
00563bf4  f30f58c1                  ADDSS XMM0,XMM1
00563bf8  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00563bfc  7420                      JZ 0x00563c1e
00563bfe  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
00563c06  f30f5ec1                  DIVSS XMM0,XMM1
00563c0a  e891c05800                CALL 0x00aefca0
00563c0f  8d4f78                    LEA ECX,[EDI + 0x78]
00563c12  660f6ec8                  MOVD XMM1,EAX
00563c16  0f5bc9                    CVTDQ2PS XMM1,XMM1
00563c19  e8e251eaff                CALL 0x00408e00
00563c1e  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00563c25  0f8436010000              JZ 0x00563d61
00563c2b  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
00563c2f  0f852c010000              JNZ 0x00563d61
00563c35  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
00563c3c  0f841f010000              JZ 0x00563d61
00563c42  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
00563c48  8db73c030000              LEA ESI,[EDI + 0x33c]
00563c4e  898780030000              MOV dword ptr [EDI + 0x380],EAX
00563c54  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
00563c5a  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00563c64  c6877301000000            MOV byte ptr [EDI + 0x173],0x0
00563c6b  8b06                      MOV EAX,dword ptr [ESI]
00563c6d  898734030000              MOV dword ptr [EDI + 0x334],EAX
00563c73  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
00563c76  898738030000              MOV dword ptr [EDI + 0x338],EAX
00563c7c  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00563c82  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
00563c8c  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
00563c94  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
00563c9c  f30f104038                MOVSS XMM0,dword ptr [EAX + 0x38]
00563ca1  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00563ca9  f30f118770030000          MOVSS dword ptr [EDI + 0x370],XMM0
00563cb1  e83a542800                CALL 0x007e90f0
00563cb6  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00563cb9  6a00                      PUSH 0x0
00563cbb  50                        PUSH EAX
00563cbc  6a00                      PUSH 0x0
00563cbe  57                        PUSH EDI
00563cbf  8d442424                  LEA EAX,[ESP + 0x24]
00563cc3  41                        INC ECX
00563cc4  50                        PUSH EAX
00563cc5  56                        PUSH ESI
00563cc6  51                        PUSH ECX
00563cc7  ff7728                    PUSH dword ptr [EDI + 0x28]
00563cca  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00563cd0  e83ba71900                CALL 0x006fe410
00563cd5  80bf630c000000            CMP byte ptr [EDI + 0xc63],0x0
00563cdc  8bf0                      MOV ESI,EAX
00563cde  7416                      JZ 0x00563cf6
00563ce0  ffb7640c0000              PUSH dword ptr [EDI + 0xc64]
00563ce6  8bce                      MOV ECX,ESI
00563ce8  ff7630                    PUSH dword ptr [ESI + 0x30]
00563ceb  ff762c                    PUSH dword ptr [ESI + 0x2c]
00563cee  ff7628                    PUSH dword ptr [ESI + 0x28]
00563cf1  e83ad21500                CALL 0x006c0f30
00563cf6  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
00563cfc  8bce                      MOV ECX,ESI
00563cfe  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00563d05  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00563d0b  8b06                      MOV EAX,dword ptr [ESI]
00563d0d  ff500c                    CALL dword ptr [EAX + 0xc]
00563d10  c786640b000008000000      MOV dword ptr [ESI + 0xb64],0x8
00563d1a  8d4e48                    LEA ECX,[ESI + 0x48]
00563d1d  8b87b80b0000              MOV EAX,dword ptr [EDI + 0xbb8]
00563d23  8986b80b0000              MOV dword ptr [ESI + 0xbb8],EAX
00563d29  8b87bc0b0000              MOV EAX,dword ptr [EDI + 0xbbc]
00563d2f  8986bc0b0000              MOV dword ptr [ESI + 0xbbc],EAX
00563d35  8b87b80b0000              MOV EAX,dword ptr [EDI + 0xbb8]
00563d3b  6a00                      PUSH 0x0
00563d3d  898660030000              MOV dword ptr [ESI + 0x360],EAX
00563d43  8b87bc0b0000              MOV EAX,dword ptr [EDI + 0xbbc]
00563d49  688818b600                PUSH 0xb61888
00563d4e  898664030000              MOV dword ptr [ESI + 0x364],EAX
00563d54  e8e76beaff                CALL 0x0040a940
00563d59  56                        PUSH ESI
00563d5a  8bcf                      MOV ECX,EDI
00563d5c  e84f4b1700                CALL 0x006d88b0
00563d61  8b8c24f4000000            MOV ECX,dword ptr [ESP + 0xf4]
00563d68  5f                        POP EDI
00563d69  5e                        POP ESI
00563d6a  33cc                      XOR ECX,ESP
00563d6c  e8bab35800                CALL 0x00aef12b
00563d71  8be5                      MOV ESP,EBP
00563d73  5d                        POP EBP
00563d74  c3                        RET
