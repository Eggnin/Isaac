; J460 NPC AI 0x004878a0 AI_004878a0
; types=265
; identities=265.0.0
; entry=004878a0
004878a0  55                        PUSH EBP
004878a1  8bec                      MOV EBP,ESP
004878a3  83e4f8                    AND ESP,0xfffffff8
004878a6  81ec10030000              SUB ESP,0x310
004878ac  a1b493bf00                MOV EAX,[0x00bf93b4]
004878b1  33c4                      XOR EAX,ESP
004878b3  8984240c030000            MOV dword ptr [ESP + 0x30c],EAX
004878ba  56                        PUSH ESI
004878bb  57                        PUSH EDI
004878bc  8bf9                      MOV EDI,ECX
004878be  0f57c9                    XORPS XMM1,XMM1
004878c1  897c2454                  MOV dword ptr [ESP + 0x54],EDI
004878c5  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
004878cb  85c9                      TEST ECX,ECX
004878cd  0f854d010000              JNZ 0x00487a20
004878d3  0f281510c1ba00            MOVAPS XMM2,xmmword ptr [0x00bac110]
004878da  8d84241c010000            LEA EAX,[ESP + 0x11c]
004878e1  898f10040000              MOV dword ptr [EDI + 0x410],ECX
004878e7  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004878ed  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004878f7  c787740300009a99993f      MOV dword ptr [EDI + 0x374],0x3f99999a
00487901  c787780300000000003f      MOV dword ptr [EDI + 0x378],0x3f000000
0048790b  c784243c010000cac8c83e    MOV dword ptr [ESP + 0x13c],0x3ec8c8ca
00487916  c7842440010000cac8c83e    MOV dword ptr [ESP + 0x140],0x3ec8c8ca
00487921  c7842444010000a1a0a03e    MOV dword ptr [ESP + 0x144],0x3ea0a0a1
0048792c  3bc8                      CMP ECX,EAX
0048792e  741f                      JZ 0x0048794f
00487930  f30f7e84243c010000        MOVQ XMM0,qword ptr [ESP + 0x13c]
00487939  8b842444010000            MOV EAX,dword ptr [ESP + 0x144]
00487940  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00487945  0f1111                    MOVUPS xmmword ptr [ECX],XMM2
00487948  894128                    MOV dword ptr [ECX + 0x28],EAX
0048794b  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
0048794f  837f3002                  CMP dword ptr [EDI + 0x30],0x2
00487953  0f8513230000              JNZ 0x00489c6c
00487959  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
0048795c  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
0048795f  0f848c000000              JZ 0x004879f1
00487965  e8f6752600                CALL 0x006eef60
0048796a  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00487972  0f57c9                    XORPS XMM1,XMM1
00487975  f30f58059ca8ba00          ADDSS XMM0,dword ptr [0x00baa89c]
0048797d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00487983  6a00                      PUSH 0x0
00487985  50                        PUSH EAX
00487986  ff7730                    PUSH dword ptr [EDI + 0x30]
00487989  8d8760030000              LEA EAX,[EDI + 0x360]
0048798f  f30f118424a4000000        MOVSS dword ptr [ESP + 0xa4],XMM0
00487998  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004879a0  57                        PUSH EDI
004879a1  50                        PUSH EAX
004879a2  8d8424ac000000            LEA EAX,[ESP + 0xac]
004879a9  50                        PUSH EAX
004879aa  ff772c                    PUSH dword ptr [EDI + 0x2c]
004879ad  f30f58c1                  ADDSS XMM0,XMM1
004879b1  ff7728                    PUSH dword ptr [EDI + 0x28]
004879b4  f30f118424bc000000        MOVSS dword ptr [ESP + 0xbc],XMM0
004879bd  e84e6a2700                CALL 0x006fe410
004879c2  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004879ca  0f57c9                    XORPS XMM1,XMM1
004879cd  f30f5c059ca8ba00          SUBSS XMM0,dword ptr [0x00baa89c]
004879d5  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
004879dd  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004879e5  f30f5cc1                  SUBSS XMM0,XMM1
004879e9  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
004879f1  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004879f7  f30f104038                MOVSS XMM0,dword ptr [EAX + 0x38]
004879fc  f30f59053ca3ba00          MULSS XMM0,dword ptr [0x00baa33c]
00487a04  f30f118770030000          MOVSS dword ptr [EDI + 0x370],XMM0
00487a0c  5f                        POP EDI
00487a0d  5e                        POP ESI
00487a0e  8b8c240c030000            MOV ECX,dword ptr [ESP + 0x30c]
00487a15  33cc                      XOR ECX,ESP
00487a17  e80f776600                CALL 0x00aef12b
00487a1c  8be5                      MOV ESP,EBP
00487a1e  5d                        POP EBP
00487a1f  c3                        RET
00487a20  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00487a25  0f2fc1                    COMISS XMM0,XMM1
00487a28  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
00487a2e  7655                      JBE 0x00487a85
00487a30  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
00487a33  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00487a36  744d                      JZ 0x00487a85
00487a38  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00487a40  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
00487a43  8b5008                    MOV EDX,dword ptr [EAX + 0x8]
00487a46  898c2494000000            MOV dword ptr [ESP + 0x94],ECX
00487a4d  8bca                      MOV ECX,EDX
00487a4f  83e108                    AND ECX,0x8
00487a52  83c900                    OR ECX,0x0
00487a55  7409                      JZ 0x00487a60
00487a57  81781809010000            CMP dword ptr [EAX + 0x18],0x109
00487a5e  7411                      JZ 0x00487a71
00487a60  83e204                    AND EDX,0x4
00487a63  83ca00                    OR EDX,0x0
00487a66  740f                      JZ 0x00487a77
00487a68  81781009010000            CMP dword ptr [EAX + 0x10],0x109
00487a6f  7506                      JNZ 0x00487a77
00487a71  c70000000000              MOV dword ptr [EAX],0x0
00487a77  83c038                    ADD EAX,0x38
00487a7a  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
00487a7d  75c1                      JNZ 0x00487a40
00487a7f  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00487a85  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00487a8d  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00487a93  83f903                    CMP ECX,0x3
00487a96  0f8501030000              JNZ 0x00487d9d
00487a9c  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00487a9f  85f6                      TEST ESI,ESI
00487aa1  744a                      JZ 0x00487aed
00487aa3  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00487aa7  8bc6                      MOV EAX,ESI
00487aa9  7202                      JC 0x00487aad
00487aab  8b06                      MOV EAX,dword ptr [ESI]
00487aad  b954bcb100                MOV ECX,0xb1bc54
00487ab2  8a10                      MOV DL,byte ptr [EAX]
00487ab4  3a11                      CMP DL,byte ptr [ECX]
00487ab6  751a                      JNZ 0x00487ad2
00487ab8  84d2                      TEST DL,DL
00487aba  7412                      JZ 0x00487ace
00487abc  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00487abf  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00487ac2  750e                      JNZ 0x00487ad2
00487ac4  83c002                    ADD EAX,0x2
00487ac7  83c102                    ADD ECX,0x2
00487aca  84d2                      TEST DL,DL
00487acc  75e4                      JNZ 0x00487ab2
00487ace  33c0                      XOR EAX,EAX
00487ad0  eb05                      JMP 0x00487ad7
00487ad2  1bc0                      SBB EAX,EAX
00487ad4  83c801                    OR EAX,0x1
00487ad7  85c0                      TEST EAX,EAX
00487ad9  7512                      JNZ 0x00487aed
00487adb  384634                    CMP byte ptr [ESI + 0x34],AL
00487ade  742e                      JZ 0x00487b0e
00487ae0  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00487ae6  8d7748                    LEA ESI,[EDI + 0x48]
00487ae9  7523                      JNZ 0x00487b0e
00487aeb  eb03                      JMP 0x00487af0
00487aed  8d7748                    LEA ESI,[EDI + 0x48]
00487af0  6a01                      PUSH 0x1
00487af2  6854bcb100                PUSH 0xb1bc54
00487af7  8bce                      MOV ECX,ESI
00487af9  e8d22af8ff                CALL 0x0040a5d0
00487afe  84c0                      TEST AL,AL
00487b00  740c                      JZ 0x00487b0e
00487b02  8d4e30                    LEA ECX,[ESI + 0x30]
00487b05  e8a626f8ff                CALL 0x0040a1b0
00487b0a  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00487b0e  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00487b14  33c0                      XOR EAX,EAX
00487b16  81e100000010              AND ECX,0x10000000
00487b1c  0bc1                      OR EAX,ECX
00487b1e  7418                      JZ 0x00487b38
00487b20  a17816c700                MOV EAX,[0x00c71678]
00487b25  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00487b2b  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00487b2e  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00487b32  0f8574170000              JNZ 0x004892ac
00487b38  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00487b3e  8d4101                    LEA EAX,[ECX + 0x1]
00487b41  898710040000              MOV dword ptr [EDI + 0x410],EAX
00487b47  83f91e                    CMP ECX,0x1e
00487b4a  0f8e5c170000              JLE 0x004892ac
00487b50  e80b742600                CALL 0x006eef60
00487b55  33d2                      XOR EDX,EDX
00487b57  b914000000                MOV ECX,0x14
00487b5c  f7f1                      DIV ECX
00487b5e  85d2                      TEST EDX,EDX
00487b60  0f8546170000              JNZ 0x004892ac
00487b66  e8f5732600                CALL 0x006eef60
00487b6b  33d2                      XOR EDX,EDX
00487b6d  b903000000                MOV ECX,0x3
00487b72  f7f1                      DIV ECX
00487b74  85d2                      TEST EDX,EDX
00487b76  0f8448010000              JZ 0x00487cc4
00487b7c  e8df732600                CALL 0x006eef60
00487b81  8b7730                    MOV ESI,dword ptr [EDI + 0x30]
00487b84  83e001                    AND EAX,0x1
00487b87  7405                      JZ 0x00487b8e
00487b89  83fe02                    CMP ESI,0x2
00487b8c  754b                      JNZ 0x00487bd9
00487b8e  6a00                      PUSH 0x0
00487b90  68000a0001                PUSH 0x1000a00
00487b95  8bcf                      MOV ECX,EDI
00487b97  e894f8f8ff                CALL 0x00417430
00487b9c  84c0                      TEST AL,AL
00487b9e  7539                      JNZ 0x00487bd9
00487ba0  51                        PUSH ECX
00487ba1  c704240000803f            MOV dword ptr [ESP],0x3f800000
00487ba8  6a00                      PUSH 0x0
00487baa  6a02                      PUSH 0x2
00487bac  51                        PUSH ECX
00487bad  c704240000803f            MOV dword ptr [ESP],0x3f800000
00487bb4  8bcf                      MOV ECX,EDI
00487bb6  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00487bc0  682f010000                PUSH 0x12f
00487bc5  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00487bcf  e8ccef2400                CALL 0x006d6ba0
00487bd4  e9d3160000                JMP 0x004892ac
00487bd9  6a00                      PUSH 0x0
00487bdb  6800020000                PUSH 0x200
00487be0  8bcf                      MOV ECX,EDI
00487be2  e849f8f8ff                CALL 0x00417430
00487be7  84c0                      TEST AL,AL
00487be9  0f85bd160000              JNZ 0x004892ac
00487bef  83fe02                    CMP ESI,0x2
00487bf2  0f84b4160000              JZ 0x004892ac
00487bf8  51                        PUSH ECX
00487bf9  8d84244c010000            LEA EAX,[ESP + 0x14c]
00487c00  c7042400000000            MOV dword ptr [ESP],0x0
00487c07  50                        PUSH EAX
00487c08  8bcf                      MOV ECX,EDI
00487c0a  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00487c14  e827702300                CALL 0x006bec40
00487c19  8bcf                      MOV ECX,EDI
00487c1b  8bf0                      MOV ESI,EAX
00487c1d  e81e6c2300                CALL 0x006be840
00487c22  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
00487c2a  83ec0c                    SUB ESP,0xc
00487c2d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00487c33  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
00487c3b  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
00487c43  8d8424ac000000            LEA EAX,[ESP + 0xac]
00487c4a  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00487c52  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
00487c5a  f30f580e                  ADDSS XMM1,dword ptr [ESI]
00487c5e  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
00487c64  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
00487c69  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
00487c6f  8db734030000              LEA ESI,[EDI + 0x334]
00487c75  f30f111c24                MOVSS dword ptr [ESP],XMM3
00487c7a  56                        PUSH ESI
00487c7b  f30f110e                  MOVSS dword ptr [ESI],XMM1
00487c7f  f30f115604                MOVSS dword ptr [ESI + 0x4],XMM2
00487c84  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00487c8a  50                        PUSH EAX
00487c8b  e8c0b23800                CALL 0x00812f50
00487c90  f30f108424a0000000        MOVSS XMM0,dword ptr [ESP + 0xa0]
00487c99  f30f1106                  MOVSS dword ptr [ESI],XMM0
00487c9d  f30f108424a4000000        MOVSS XMM0,dword ptr [ESP + 0xa4]
00487ca6  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
00487cab  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
00487cb5  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00487cbf  e9e8150000                JMP 0x004892ac
00487cc4  a17816c700                MOV EAX,[0x00c71678]
00487cc9  33c9                      XOR ECX,ECX
00487ccb  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
00487cd1  8b82c8120000              MOV EAX,dword ptr [EDX + 0x12c8]
00487cd7  0382cc120000              ADD EAX,dword ptr [EDX + 0x12cc]
00487cdd  8bb2c4120000              MOV ESI,dword ptr [EDX + 0x12c4]
00487ce3  03b2c0120000              ADD ESI,dword ptr [EDX + 0x12c0]
00487ce9  85c0                      TEST EAX,EAX
00487ceb  0f4fc8                    CMOVG ECX,EAX
00487cee  33c0                      XOR EAX,EAX
00487cf0  85f6                      TEST ESI,ESI
00487cf2  0f4fc6                    CMOVG EAX,ESI
00487cf5  2bc1                      SUB EAX,ECX
00487cf7  83f803                    CMP EAX,0x3
00487cfa  7d23                      JGE 0x00487d1f
00487cfc  b902000000                MOV ECX,0x2
00487d01  e80a731f00                CALL 0x0067f010
00487d06  85c0                      TEST EAX,EAX
00487d08  7415                      JZ 0x00487d1f
00487d0a  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00487d0e  740f                      JZ 0x00487d1f
00487d10  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
00487d1a  e98d150000                JMP 0x004892ac
00487d1f  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
00487d29  e832722600                CALL 0x006eef60
00487d2e  0f57c0                    XORPS XMM0,XMM0
00487d31  f20f2ac0                  CVTSI2SD XMM0,EAX
00487d35  c1e81f                    SHR EAX,0x1f
00487d38  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00487d41  660f5ac0                  CVTPD2PS XMM0,XMM0
00487d45  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00487d4d  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
00487d55  f30f5c0578aaba00          SUBSS XMM0,dword ptr [0x00baaa78]
00487d5d  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00487d65  e8f6712600                CALL 0x006eef60
00487d6a  83e001                    AND EAX,0x1
00487d6d  0f57c0                    XORPS XMM0,XMM0
00487d70  f20f2ac0                  CVTSI2SD XMM0,EAX
00487d74  c1e81f                    SHR EAX,0x1f
00487d77  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00487d80  660f5ac0                  CVTPD2PS XMM0,XMM0
00487d84  f30f58c0                  ADDSS XMM0,XMM0
00487d88  f30f5c0554a4ba00          SUBSS XMM0,dword ptr [0x00baa454]
00487d90  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00487d98  e90f150000                JMP 0x004892ac
00487d9d  83f906                    CMP ECX,0x6
00487da0  0f8504030000              JNZ 0x004880aa
00487da6  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00487dad  0f8564010000              JNZ 0x00487f17
00487db3  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00487db6  85c0                      TEST EAX,EAX
00487db8  0f8481000000              JZ 0x00487e3f
00487dbe  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00487dc5  743b                      JZ 0x00487e02
00487dc7  83781410                  CMP dword ptr [EAX + 0x14],0x10
00487dcb  7202                      JC 0x00487dcf
00487dcd  8b00                      MOV EAX,dword ptr [EAX]
00487dcf  b984deb100                MOV ECX,0xb1de84
00487dd4  8a10                      MOV DL,byte ptr [EAX]
00487dd6  3a11                      CMP DL,byte ptr [ECX]
00487dd8  751a                      JNZ 0x00487df4
00487dda  84d2                      TEST DL,DL
00487ddc  7412                      JZ 0x00487df0
00487dde  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00487de1  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00487de4  750e                      JNZ 0x00487df4
00487de6  83c002                    ADD EAX,0x2
00487de9  83c102                    ADD ECX,0x2
00487dec  84d2                      TEST DL,DL
00487dee  75e4                      JNZ 0x00487dd4
00487df0  33c0                      XOR EAX,EAX
00487df2  eb05                      JMP 0x00487df9
00487df4  1bc0                      SBB EAX,EAX
00487df6  83c801                    OR EAX,0x1
00487df9  85c0                      TEST EAX,EAX
00487dfb  7542                      JNZ 0x00487e3f
00487dfd  e9f3000000                JMP 0x00487ef5
00487e02  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00487e05  83781410                  CMP dword ptr [EAX + 0x14],0x10
00487e09  7202                      JC 0x00487e0d
00487e0b  8b00                      MOV EAX,dword ptr [EAX]
00487e0d  b984deb100                MOV ECX,0xb1de84
00487e12  8a10                      MOV DL,byte ptr [EAX]
00487e14  3a11                      CMP DL,byte ptr [ECX]
00487e16  751a                      JNZ 0x00487e32
00487e18  84d2                      TEST DL,DL
00487e1a  7412                      JZ 0x00487e2e
00487e1c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00487e1f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00487e22  750e                      JNZ 0x00487e32
00487e24  83c002                    ADD EAX,0x2
00487e27  83c102                    ADD ECX,0x2
00487e2a  84d2                      TEST DL,DL
00487e2c  75e4                      JNZ 0x00487e12
00487e2e  33c0                      XOR EAX,EAX
00487e30  eb05                      JMP 0x00487e37
00487e32  1bc0                      SBB EAX,EAX
00487e34  83c801                    OR EAX,0x1
00487e37  85c0                      TEST EAX,EAX
00487e39  0f84b6000000              JZ 0x00487ef5
00487e3f  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00487e42  85f6                      TEST ESI,ESI
00487e44  744a                      JZ 0x00487e90
00487e46  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00487e4a  8bc6                      MOV EAX,ESI
00487e4c  7202                      JC 0x00487e50
00487e4e  8b06                      MOV EAX,dword ptr [ESI]
00487e50  b984deb100                MOV ECX,0xb1de84
00487e55  8a10                      MOV DL,byte ptr [EAX]
00487e57  3a11                      CMP DL,byte ptr [ECX]
00487e59  751a                      JNZ 0x00487e75
00487e5b  84d2                      TEST DL,DL
00487e5d  7412                      JZ 0x00487e71
00487e5f  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00487e62  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00487e65  750e                      JNZ 0x00487e75
00487e67  83c002                    ADD EAX,0x2
00487e6a  83c102                    ADD ECX,0x2
00487e6d  84d2                      TEST DL,DL
00487e6f  75e4                      JNZ 0x00487e55
00487e71  33c0                      XOR EAX,EAX
00487e73  eb05                      JMP 0x00487e7a
00487e75  1bc0                      SBB EAX,EAX
00487e77  83c801                    OR EAX,0x1
00487e7a  85c0                      TEST EAX,EAX
00487e7c  7512                      JNZ 0x00487e90
00487e7e  384634                    CMP byte ptr [ESI + 0x34],AL
00487e81  742e                      JZ 0x00487eb1
00487e83  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00487e89  8d7748                    LEA ESI,[EDI + 0x48]
00487e8c  7523                      JNZ 0x00487eb1
00487e8e  eb03                      JMP 0x00487e93
00487e90  8d7748                    LEA ESI,[EDI + 0x48]
00487e93  6a01                      PUSH 0x1
00487e95  6884deb100                PUSH 0xb1de84
00487e9a  8bce                      MOV ECX,ESI
00487e9c  e82f27f8ff                CALL 0x0040a5d0
00487ea1  84c0                      TEST AL,AL
00487ea3  740c                      JZ 0x00487eb1
00487ea5  8d4e30                    LEA ECX,[ESI + 0x30]
00487ea8  e80323f8ff                CALL 0x0040a1b0
00487ead  c6464401                  MOV byte ptr [ESI + 0x44],0x1
00487eb1  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00487eb7  8d4c2434                  LEA ECX,[ESP + 0x34]
00487ebb  c744243497030000          MOV dword ptr [ESP + 0x34],0x397
00487ec3  e8b8e84c00                CALL 0x00956780
00487ec8  83ec08                    SUB ESP,0x8
00487ecb  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00487ed3  c704240000803f            MOV dword ptr [ESP],0x3f800000
00487eda  6a00                      PUSH 0x0
00487edc  6a02                      PUSH 0x2
00487ede  51                        PUSH ECX
00487edf  c704240000803f            MOV dword ptr [ESP],0x3f800000
00487ee6  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00487eec  ff742448                  PUSH dword ptr [ESP + 0x48]
00487ef0  e83b5d4a00                CALL 0x0092dc30
00487ef5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00487ef9  740d                      JZ 0x00487f08
00487efb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00487f02  0f85c3000000              JNZ 0x00487fcb
00487f08  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
00487f12  e9b4000000                JMP 0x00487fcb
00487f17  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
00487f1a  85f6                      TEST ESI,ESI
00487f1c  7448                      JZ 0x00487f66
00487f1e  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00487f22  8bc6                      MOV EAX,ESI
00487f24  7202                      JC 0x00487f28
00487f26  8b06                      MOV EAX,dword ptr [ESI]
00487f28  b91cd9b100                MOV ECX,0xb1d91c
00487f2d  0f1f00                    NOP dword ptr [EAX]
00487f30  8a10                      MOV DL,byte ptr [EAX]
00487f32  3a11                      CMP DL,byte ptr [ECX]
00487f34  751a                      JNZ 0x00487f50
00487f36  84d2                      TEST DL,DL
00487f38  7412                      JZ 0x00487f4c
00487f3a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00487f3d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00487f40  750e                      JNZ 0x00487f50
00487f42  83c002                    ADD EAX,0x2
00487f45  83c102                    ADD ECX,0x2
00487f48  84d2                      TEST DL,DL
00487f4a  75e4                      JNZ 0x00487f30
00487f4c  33c0                      XOR EAX,EAX
00487f4e  eb05                      JMP 0x00487f55
00487f50  1bc0                      SBB EAX,EAX
00487f52  83c801                    OR EAX,0x1
00487f55  85c0                      TEST EAX,EAX
00487f57  750d                      JNZ 0x00487f66
00487f59  384634                    CMP byte ptr [ESI + 0x34],AL
00487f5c  742a                      JZ 0x00487f88
00487f5e  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00487f64  7522                      JNZ 0x00487f88
00487f66  6a01                      PUSH 0x1
00487f68  681cd9b100                PUSH 0xb1d91c
00487f6d  8d4f48                    LEA ECX,[EDI + 0x48]
00487f70  e85b26f8ff                CALL 0x0040a5d0
00487f75  84c0                      TEST AL,AL
00487f77  740f                      JZ 0x00487f88
00487f79  8d4f78                    LEA ECX,[EDI + 0x78]
00487f7c  e82f22f8ff                CALL 0x0040a1b0
00487f81  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00487f88  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00487f90  f30f108f38030000          MOVSS XMM1,dword ptr [EDI + 0x338]
00487f98  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00487fa0  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00487fa8  f30f59c0                  MULSS XMM0,XMM0
00487fac  f30f59c9                  MULSS XMM1,XMM1
00487fb0  f30f58c8                  ADDSS XMM1,XMM0
00487fb4  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
00487fbc  0f2fc1                    COMISS XMM0,XMM1
00487fbf  760a                      JBE 0x00487fcb
00487fc1  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
00487fcb  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00487fcf  8d7778                    LEA ESI,[EDI + 0x78]
00487fd2  7430                      JZ 0x00488004
00487fd4  6860d5b100                PUSH 0xb1d560
00487fd9  8bce                      MOV ECX,ESI
00487fdb  e8f02df8ff                CALL 0x0040add0
00487fe0  84c0                      TEST AL,AL
00487fe2  7420                      JZ 0x00488004
00487fe4  51                        PUSH ECX
00487fe5  c704240000803f            MOV dword ptr [ESP],0x3f800000
00487fec  6a00                      PUSH 0x0
00487fee  6a02                      PUSH 0x2
00487ff0  51                        PUSH ECX
00487ff1  c704240000803f            MOV dword ptr [ESP],0x3f800000
00487ff8  8bcf                      MOV ECX,EDI
00487ffa  682f010000                PUSH 0x12f
00487fff  e89ceb2400                CALL 0x006d6ba0
00488004  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0048800b  751e                      JNZ 0x0048802b
0048800d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00488011  0f8495120000              JZ 0x004892ac
00488017  6860d5b100                PUSH 0xb1d560
0048801c  8bce                      MOV ECX,ESI
0048801e  e84d2ef8ff                CALL 0x0040ae70
00488023  84c0                      TEST AL,AL
00488025  0f8481120000              JZ 0x004892ac
0048802b  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
00488033  f30f58158ca0ba00          ADDSS XMM2,dword ptr [0x00baa08c]
0048803b  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
00488043  f30f5dd3                  MINSS XMM2,XMM3
00488047  f30f5cda                  SUBSS XMM3,XMM2
0048804b  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
00488053  0f28c2                    MOVAPS XMM0,XMM2
00488056  f30f599738030000          MULSS XMM2,dword ptr [EDI + 0x338]
0048805e  f30f598734030000          MULSS XMM0,dword ptr [EDI + 0x334]
00488066  0f28cb                    MOVAPS XMM1,XMM3
00488069  f30f599f40030000          MULSS XMM3,dword ptr [EDI + 0x340]
00488071  f30f598f3c030000          MULSS XMM1,dword ptr [EDI + 0x33c]
00488079  f30f58d3                  ADDSS XMM2,XMM3
0048807d  f30f58c8                  ADDSS XMM1,XMM0
00488081  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
00488089  f30f118f3c030000          MOVSS dword ptr [EDI + 0x33c],XMM1
00488091  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0048809b  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
004880a5  e902120000                JMP 0x004892ac
004880aa  83f907                    CMP ECX,0x7
004880ad  0f8502060000              JNZ 0x004886b5
004880b3  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004880b6  85f6                      TEST ESI,ESI
004880b8  7451                      JZ 0x0048810b
004880ba  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004880be  8bc6                      MOV EAX,ESI
004880c0  7202                      JC 0x004880c4
004880c2  8b06                      MOV EAX,dword ptr [ESI]
004880c4  b99cdeb100                MOV ECX,0xb1de9c
004880c9  0f1f8000000000            NOP dword ptr [EAX]
004880d0  8a10                      MOV DL,byte ptr [EAX]
004880d2  3a11                      CMP DL,byte ptr [ECX]
004880d4  751a                      JNZ 0x004880f0
004880d6  84d2                      TEST DL,DL
004880d8  7412                      JZ 0x004880ec
004880da  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004880dd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004880e0  750e                      JNZ 0x004880f0
004880e2  83c002                    ADD EAX,0x2
004880e5  83c102                    ADD ECX,0x2
004880e8  84d2                      TEST DL,DL
004880ea  75e4                      JNZ 0x004880d0
004880ec  33c0                      XOR EAX,EAX
004880ee  eb05                      JMP 0x004880f5
004880f0  1bc0                      SBB EAX,EAX
004880f2  83c801                    OR EAX,0x1
004880f5  85c0                      TEST EAX,EAX
004880f7  7512                      JNZ 0x0048810b
004880f9  384634                    CMP byte ptr [ESI + 0x34],AL
004880fc  742e                      JZ 0x0048812c
004880fe  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00488104  8d7748                    LEA ESI,[EDI + 0x48]
00488107  7523                      JNZ 0x0048812c
00488109  eb03                      JMP 0x0048810e
0048810b  8d7748                    LEA ESI,[EDI + 0x48]
0048810e  6a01                      PUSH 0x1
00488110  689cdeb100                PUSH 0xb1de9c
00488115  8bce                      MOV ECX,ESI
00488117  e8b424f8ff                CALL 0x0040a5d0
0048811c  84c0                      TEST AL,AL
0048811e  740c                      JZ 0x0048812c
00488120  8d4e30                    LEA ECX,[ESI + 0x30]
00488123  e88820f8ff                CALL 0x0040a1b0
00488128  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0048812c  83bf8401000005            CMP dword ptr [EDI + 0x184],0x5
00488133  7479                      JZ 0x004881ae
00488135  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0048813d  8db73c030000              LEA ESI,[EDI + 0x33c]
00488143  a17816c700                MOV EAX,[0x00c71678]
00488148  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
0048814e  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00488153  f30f1144244c              MOVSS dword ptr [ESP + 0x4c],XMM0
00488159  ff74244c                  PUSH dword ptr [ESP + 0x4c]
0048815d  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00488163  8bc8                      MOV ECX,EAX
00488165  ff74244c                  PUSH dword ptr [ESP + 0x4c]
00488169  89442434                  MOV dword ptr [ESP + 0x34],EAX
0048816d  e80e863600                CALL 0x007f0780
00488172  85c0                      TEST EAX,EAX
00488174  7424                      JZ 0x0048819a
00488176  51                        PUSH ECX
00488177  8b4c2430                  MOV ECX,dword ptr [ESP + 0x30]
0048817b  8d842454010000            LEA EAX,[ESP + 0x154]
00488182  c704240000a042            MOV dword ptr [ESP],0x42a00000
00488189  56                        PUSH ESI
0048818a  50                        PUSH EAX
0048818b  e890633900                CALL 0x0081e520
00488190  8b08                      MOV ECX,dword ptr [EAX]
00488192  890e                      MOV dword ptr [ESI],ECX
00488194  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00488197  894604                    MOV dword ptr [ESI + 0x4],EAX
0048819a  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004881a4  c7878401000005000000      MOV dword ptr [EDI + 0x184],0x5
004881ae  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004881b2  0f84ee040000              JZ 0x004886a6
004881b8  68bcdeb100                PUSH 0xb1debc
004881bd  8d4f78                    LEA ECX,[EDI + 0x78]
004881c0  e80b2cf8ff                CALL 0x0040add0
004881c5  84c0                      TEST AL,AL
004881c7  0f84c6040000              JZ 0x00488693
004881cd  c744243005000000          MOV dword ptr [ESP + 0x30],0x5
004881d5  e8866d2600                CALL 0x006eef60
004881da  8bf0                      MOV ESI,EAX
004881dc  e87f6d2600                CALL 0x006eef60
004881e1  660f6ec0                  MOVD XMM0,EAX
004881e5  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004881e9  c1e81f                    SHR EAX,0x1f
004881ec  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004881f5  660f5ac0                  CVTPD2PS XMM0,XMM0
004881f9  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00488201  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00488209  f30f58c0                  ADDSS XMM0,XMM0
0048820d  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00488213  e8486d2600                CALL 0x006eef60
00488218  660f6ec0                  MOVD XMM0,EAX
0048821c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00488220  c1e81f                    SHR EAX,0x1f
00488223  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0048822c  660f5ac0                  CVTPD2PS XMM0,XMM0
00488230  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00488238  f30f59058ca9ba00          MULSS XMM0,dword ptr [0x00baa98c]
00488240  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
00488246  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0048824c  e8ef52f9ff                CALL 0x0041d540
00488251  f30f59442428              MULSS XMM0,dword ptr [ESP + 0x28]
00488257  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
0048825f  f30f118424a8000000        MOVSS dword ptr [ESP + 0xa8],XMM0
00488268  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0048826e  e8ad52f9ff                CALL 0x0041d520
00488273  f30f59442428              MULSS XMM0,dword ptr [ESP + 0x28]
00488279  8d8424a8000000            LEA EAX,[ESP + 0xa8]
00488280  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00488286  6a00                      PUSH 0x0
00488288  56                        PUSH ESI
00488289  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
00488291  6a00                      PUSH 0x0
00488293  57                        PUSH EDI
00488294  6840b6c700                PUSH 0xc7b640
00488299  50                        PUSH EAX
0048829a  6a16                      PUSH 0x16
0048829c  68e8030000                PUSH 0x3e8
004882a1  f30f118424cc000000        MOVSS dword ptr [ESP + 0xcc],XMM0
004882aa  e861612700                CALL 0x006fe410
004882af  6a00                      PUSH 0x0
004882b1  68acd5c500                PUSH 0xc5d5ac
004882b6  68dcd5c500                PUSH 0xc5d5dc
004882bb  6a00                      PUSH 0x0
004882bd  50                        PUSH EAX
004882be  e8ee856600                CALL 0x00af08b1
004882c3  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
004882ca  8d8c2424020000            LEA ECX,[ESP + 0x224]
004882d1  83c414                    ADD ESP,0x14
004882d4  c784243002000000000000    MOV dword ptr [ESP + 0x230],0x0
004882df  8bf0                      MOV ESI,EAX
004882e1  c784243402000000000000    MOV dword ptr [ESP + 0x234],0x0
004882ec  0f11842410020000          MOVUPS xmmword ptr [ESP + 0x210],XMM0
004882f4  c784243802000000000000    MOV dword ptr [ESP + 0x238],0x0
004882ff  0f280530c9ba00            MOVAPS XMM0,xmmword ptr [0x00bac930]
00488306  6a01                      PUSH 0x1
00488308  6a00                      PUSH 0x0
0048830a  68ff000000                PUSH 0xff
0048830f  0f1184242c020000          MOVUPS xmmword ptr [ESP + 0x22c],XMM0
00488317  8b06                      MOV EAX,dword ptr [ESI]
00488319  6aff                      PUSH -0x1
0048831b  51                        PUSH ECX
0048831c  8bce                      MOV ECX,ESI
0048831e  ff503c                    CALL dword ptr [EAX + 0x3c]
00488321  836c243001                SUB dword ptr [ESP + 0x30],0x1
00488326  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
0048832e  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
00488336  f30f590d30a6ba00          MULSS XMM1,dword ptr [0x00baa630]
0048833e  f30f590530a6ba00          MULSS XMM0,dword ptr [0x00baa630]
00488346  f30f118ee4000000          MOVSS dword ptr [ESI + 0xe4],XMM1
0048834e  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
00488356  0f8579feffff              JNZ 0x004881d5
0048835c  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00488364  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0048836a  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00488370  83f812                    CMP EAX,0x12
00488373  750a                      JNZ 0x0048837f
00488375  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0048837d  eb0d                      JMP 0x0048838c
0048837f  83f813                    CMP EAX,0x13
00488382  750e                      JNZ 0x00488392
00488384  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0048838c  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00488392  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00488398  8d4c2470                  LEA ECX,[ESP + 0x70]
0048839c  c74424702f010000          MOV dword ptr [ESP + 0x70],0x12f
004883a4  e8d7e34c00                CALL 0x00956780
004883a9  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
004883af  83ec08                    SUB ESP,0x8
004883b2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004883ba  f30f110424                MOVSS dword ptr [ESP],XMM0
004883bf  6a00                      PUSH 0x0
004883c1  6a02                      PUSH 0x2
004883c3  51                        PUSH ECX
004883c4  c704240000803f            MOV dword ptr [ESP],0x3f800000
004883cb  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004883d1  ffb42484000000            PUSH dword ptr [ESP + 0x84]
004883d8  e853584a00                CALL 0x0092dc30
004883dd  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004883e5  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004883eb  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
004883f1  83f812                    CMP EAX,0x12
004883f4  750a                      JNZ 0x00488400
004883f6  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004883fe  eb0d                      JMP 0x0048840d
00488400  83f813                    CMP EAX,0x13
00488403  750e                      JNZ 0x00488413
00488405  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0048840d  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
00488413  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00488419  8d4c2474                  LEA ECX,[ESP + 0x74]
0048841d  c744247430000000          MOV dword ptr [ESP + 0x74],0x30
00488425  e856e34c00                CALL 0x00956780
0048842a  f30f10442408              MOVSS XMM0,dword ptr [ESP + 0x8]
00488430  83ec08                    SUB ESP,0x8
00488433  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048843b  f30f110424                MOVSS dword ptr [ESP],XMM0
00488440  6a00                      PUSH 0x0
00488442  6a02                      PUSH 0x2
00488444  51                        PUSH ECX
00488445  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0048844c  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00488452  ffb42488000000            PUSH dword ptr [ESP + 0x88]
00488459  e8d2574a00                CALL 0x0092dc30
0048845e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00488464  6a0a                      PUSH 0xa
00488466  e805b22700                CALL 0x00703670
0048846b  e8f06a2600                CALL 0x006eef60
00488470  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
00488478  83e001                    AND EAX,0x1
0048847b  83c004                    ADD EAX,0x4
0048847e  660f6ec0                  MOVD XMM0,EAX
00488482  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00488486  c1e81f                    SHR EAX,0x1f
00488489  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00488492  660f5ac0                  CVTPD2PS XMM0,XMM0
00488496  f30f5ec8                  DIVSS XMM1,XMM0
0048849a  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
004884a0  e8bb6a2600                CALL 0x006eef60
004884a5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004884ab  6a00                      PUSH 0x0
004884ad  50                        PUSH EAX
004884ae  6a00                      PUSH 0x0
004884b0  57                        PUSH EDI
004884b1  6840b6c700                PUSH 0xc7b640
004884b6  8d873c030000              LEA EAX,[EDI + 0x33c]
004884bc  50                        PUSH EAX
004884bd  6a48                      PUSH 0x48
004884bf  68e8030000                PUSH 0x3e8
004884c4  e8475f2700                CALL 0x006fe410
004884c9  6a00                      PUSH 0x0
004884cb  68acd5c500                PUSH 0xc5d5ac
004884d0  68dcd5c500                PUSH 0xc5d5dc
004884d5  6a00                      PUSH 0x0
004884d7  50                        PUSH EAX
004884d8  e8d4836600                CALL 0x00af08b1
004884dd  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
004884e3  83c414                    ADD ESP,0x14
004884e6  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
004884ea  8db0bc030000              LEA ESI,[EAX + 0x3bc]
004884f0  85c9                      TEST ECX,ECX
004884f2  7414                      JZ 0x00488508
004884f4  8d442458                  LEA EAX,[ESP + 0x58]
004884f8  89742458                  MOV dword ptr [ESP + 0x58],ESI
004884fc  50                        PUSH EAX
004884fd  81c1cc030000              ADD ECX,0x3cc
00488503  e8086d0400                CALL 0x004cf210
00488508  56                        PUSH ESI
00488509  8bcf                      MOV ECX,EDI
0048850b  893e                      MOV dword ptr [ESI],EDI
0048850d  e8de570400                CALL 0x004cdcf0
00488512  8b44242c                  MOV EAX,dword ptr [ESP + 0x2c]
00488516  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
0048851c  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
00488524  f30f118074040000          MOVSS dword ptr [EAX + 0x474],XMM0
0048852c  f30f58442424              ADDSS XMM0,dword ptr [ESP + 0x24]
00488532  0f2fc8                    COMISS XMM1,XMM0
00488535  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0048853b  0f875fffffff              JA 0x004884a0
00488541  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00488547  83f812                    CMP EAX,0x12
0048854a  750a                      JNZ 0x00488556
0048854c  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00488554  eb0d                      JMP 0x00488563
00488556  83f813                    CMP EAX,0x13
00488559  750e                      JNZ 0x00488569
0048855b  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00488563  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
00488569  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0048856f  8d4c2478                  LEA ECX,[ESP + 0x78]
00488573  c744247830000000          MOV dword ptr [ESP + 0x78],0x30
0048857b  e800e24c00                CALL 0x00956780
00488580  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
00488586  83ec08                    SUB ESP,0x8
00488589  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00488591  f30f110424                MOVSS dword ptr [ESP],XMM0
00488596  6a00                      PUSH 0x0
00488598  6a02                      PUSH 0x2
0048859a  51                        PUSH ECX
0048859b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004885a2  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004885a8  ffb4248c000000            PUSH dword ptr [ESP + 0x8c]
004885af  e87c564a00                CALL 0x0092dc30
004885b4  a17816c700                MOV EAX,[0x00c71678]
004885b9  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004885c1  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004885c9  c78424fc00000000000000    MOV dword ptr [ESP + 0xfc],0x0
004885d4  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
004885da  c784240801000000000000    MOV dword ptr [ESP + 0x108],0x0
004885e5  c784240c0100000d000000    MOV dword ptr [ESP + 0x10c],0xd
004885f0  c7842404010000cdcccc3c    MOV dword ptr [ESP + 0x104],0x3ccccccd
004885fb  ff86fc700000              INC dword ptr [ESI + 0x70fc]
00488601  8b86fc700000              MOV EAX,dword ptr [ESI + 0x70fc]
00488607  c78424000100000ad7233d    MOV dword ptr [ESP + 0x100],0x3d23d70a
00488612  f30f11442458              MOVSS dword ptr [ESP + 0x58],XMM0
00488618  f30f114c242c              MOVSS dword ptr [ESP + 0x2c],XMM1
0048861e  2501000080                AND EAX,0x80000001
00488623  7905                      JNS 0x0048862a
00488625  48                        DEC EAX
00488626  83c8fe                    OR EAX,0xfffffffe
00488629  40                        INC EAX
0048862a  89442424                  MOV dword ptr [ESP + 0x24],EAX
0048862e  83f802                    CMP EAX,0x2
00488631  721f                      JC 0x00488652
00488633  6858c8b600                PUSH 0xb6c858
00488638  6a10                      PUSH 0x10
0048863a  e8818c5800                CALL 0x00a112c0
0048863f  f30f10442460              MOVSS XMM0,dword ptr [ESP + 0x60]
00488645  83c408                    ADD ESP,0x8
00488648  f30f104c242c              MOVSS XMM1,dword ptr [ESP + 0x2c]
0048864e  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
00488652  0507040000                ADD EAX,0x407
00488657  8d0cc500000000            LEA ECX,[EAX*0x8 + 0x0]
0048865e  2bc8                      SUB ECX,EAX
00488660  f30f11048e                MOVSS dword ptr [ESI + ECX*0x4],XMM0
00488665  f30f114c8e04              MOVSS dword ptr [ESI + ECX*0x4 + 0x4],XMM1
0048866b  c7448e0800000000          MOV dword ptr [ESI + ECX*0x4 + 0x8],0x0
00488673  c7448e0c0ad7233d          MOV dword ptr [ESI + ECX*0x4 + 0xc],0x3d23d70a
0048867b  c7448e10cdcccc3c          MOV dword ptr [ESI + ECX*0x4 + 0x10],0x3ccccccd
00488683  c7448e1400000000          MOV dword ptr [ESI + ECX*0x4 + 0x14],0x0
0048868b  c7448e180d000000          MOV dword ptr [ESI + ECX*0x4 + 0x18],0xd
00488693  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00488697  740d                      JZ 0x004886a6
00488699  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004886a0  0f85060c0000              JNZ 0x004892ac
004886a6  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004886b0  e9ed0b0000                JMP 0x004892a2
004886b5  83f909                    CMP ECX,0x9
004886b8  0f85fd020000              JNZ 0x004889bb
004886be  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004886c1  85f6                      TEST ESI,ESI
004886c3  7448                      JZ 0x0048870d
004886c5  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004886cc  743f                      JZ 0x0048870d
004886ce  8bc6                      MOV EAX,ESI
004886d0  83781410                  CMP dword ptr [EAX + 0x14],0x10
004886d4  7202                      JC 0x004886d8
004886d6  8b00                      MOV EAX,dword ptr [EAX]
004886d8  b974deb100                MOV ECX,0xb1de74
004886dd  0f1f00                    NOP dword ptr [EAX]
004886e0  8a10                      MOV DL,byte ptr [EAX]
004886e2  3a11                      CMP DL,byte ptr [ECX]
004886e4  751a                      JNZ 0x00488700
004886e6  84d2                      TEST DL,DL
004886e8  7412                      JZ 0x004886fc
004886ea  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004886ed  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004886f0  750e                      JNZ 0x00488700
004886f2  83c002                    ADD EAX,0x2
004886f5  83c102                    ADD ECX,0x2
004886f8  84d2                      TEST DL,DL
004886fa  75e4                      JNZ 0x004886e0
004886fc  33c0                      XOR EAX,EAX
004886fe  eb05                      JMP 0x00488705
00488700  1bc0                      SBB EAX,EAX
00488702  83c801                    OR EAX,0x1
00488705  85c0                      TEST EAX,EAX
00488707  0f84a1000000              JZ 0x004887ae
0048870d  8d4748                    LEA EAX,[EDI + 0x48]
00488710  85f6                      TEST ESI,ESI
00488712  7448                      JZ 0x0048875c
00488714  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048871b  753f                      JNZ 0x0048875c
0048871d  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00488720  83781410                  CMP dword ptr [EAX + 0x14],0x10
00488724  7202                      JC 0x00488728
00488726  8b00                      MOV EAX,dword ptr [EAX]
00488728  b974deb100                MOV ECX,0xb1de74
0048872d  0f1f00                    NOP dword ptr [EAX]
00488730  8a10                      MOV DL,byte ptr [EAX]
00488732  3a11                      CMP DL,byte ptr [ECX]
00488734  751a                      JNZ 0x00488750
00488736  84d2                      TEST DL,DL
00488738  7412                      JZ 0x0048874c
0048873a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048873d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00488740  750e                      JNZ 0x00488750
00488742  83c002                    ADD EAX,0x2
00488745  83c102                    ADD ECX,0x2
00488748  84d2                      TEST DL,DL
0048874a  75e4                      JNZ 0x00488730
0048874c  33c0                      XOR EAX,EAX
0048874e  eb05                      JMP 0x00488755
00488750  1bc0                      SBB EAX,EAX
00488752  83c801                    OR EAX,0x1
00488755  85c0                      TEST EAX,EAX
00488757  7455                      JZ 0x004887ae
00488759  8d4748                    LEA EAX,[EDI + 0x48]
0048875c  6a00                      PUSH 0x0
0048875e  6874deb100                PUSH 0xb1de74
00488763  8bc8                      MOV ECX,EAX
00488765  e8161cf8ff                CALL 0x0040a380
0048876a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00488770  8d4c2444                  LEA ECX,[ESP + 0x44]
00488774  c74424449a030000          MOV dword ptr [ESP + 0x44],0x39a
0048877c  e8ffdf4c00                CALL 0x00956780
00488781  83ec08                    SUB ESP,0x8
00488784  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0048878c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00488793  6a00                      PUSH 0x0
00488795  6a02                      PUSH 0x2
00488797  51                        PUSH ECX
00488798  c704240000803f            MOV dword ptr [ESP],0x3f800000
0048879f  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004887a5  ff742458                  PUSH dword ptr [ESP + 0x58]
004887a9  e882544a00                CALL 0x0092dc30
004887ae  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004887b2  8d7778                    LEA ESI,[EDI + 0x78]
004887b5  0f84ebfeffff              JZ 0x004886a6
004887bb  68dcd2b100                PUSH 0xb1d2dc
004887c0  8bce                      MOV ECX,ESI
004887c2  e80926f8ff                CALL 0x0040add0
004887c7  84c0                      TEST AL,AL
004887c9  7420                      JZ 0x004887eb
004887cb  51                        PUSH ECX
004887cc  c704240000803f            MOV dword ptr [ESP],0x3f800000
004887d3  6a00                      PUSH 0x0
004887d5  6a02                      PUSH 0x2
004887d7  51                        PUSH ECX
004887d8  c704240000803f            MOV dword ptr [ESP],0x3f800000
004887df  8bcf                      MOV ECX,EDI
004887e1  6837010000                PUSH 0x137
004887e6  e8b5e32400                CALL 0x006d6ba0
004887eb  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004887ef  0f84b1feffff              JZ 0x004886a6
004887f5  68dcd2b100                PUSH 0xb1d2dc
004887fa  8bce                      MOV ECX,ESI
004887fc  e86f26f8ff                CALL 0x0040ae70
00488801  84c0                      TEST AL,AL
00488803  0f848afeffff              JZ 0x00488693
00488809  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0048880d  7414                      JZ 0x00488823
0048880f  688cdeb100                PUSH 0xb1de8c
00488814  8bce                      MOV ECX,ESI
00488816  e85526f8ff                CALL 0x0040ae70
0048881b  84c0                      TEST AL,AL
0048881d  0f8570feffff              JNZ 0x00488693
00488823  6a00                      PUSH 0x0
00488825  6a03                      PUSH 0x3
00488827  8bcf                      MOV ECX,EDI
00488829  e8e23e2200                CALL 0x006ac710
0048882e  84c0                      TEST AL,AL
00488830  0f845dfeffff              JZ 0x00488693
00488836  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0048883e  0f28c1                    MOVAPS XMM0,XMM1
00488841  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
00488847  f30f580530abba00          ADDSS XMM0,dword ptr [0x00baab30]
0048884f  0f2fc1                    COMISS XMM0,XMM1
00488852  0f8642010000              JBE 0x0048899a
00488858  e803672600                CALL 0x006eef60
0048885d  a803                      TEST AL,0x3
0048885f  0f8402010000              JZ 0x00488967
00488865  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
0048886b  8d8c2468020000            LEA ECX,[ESP + 0x268]
00488872  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0048887a  f30f11442444              MOVSS dword ptr [ESP + 0x44],XMM0
00488880  e8ab66fbff                CALL 0x0043ef30
00488885  c784246c0200000000f0c1    MOV dword ptr [ESP + 0x26c],0xc1f00000
00488890  c784247002000000004040    MOV dword ptr [ESP + 0x270],0x40400000
0048889b  c7842474020000cdcc4cbd    MOV dword ptr [ESP + 0x274],0xbd4ccccd
004888a6  e8b5662600                CALL 0x006eef60
004888ab  0f280db0c6ba00            MOVAPS XMM1,xmmword ptr [0x00bac6b0]
004888b2  818c24c002000000000200    OR dword ptr [ESP + 0x2c0],0x20000
004888bd  c78424fc02000003000000    MOV dword ptr [ESP + 0x2fc],0x3
004888c8  660f6ec0                  MOVD XMM0,EAX
004888cc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004888d0  c1e81f                    SHR EAX,0x1f
004888d3  0f118c24a4020000          MOVUPS xmmword ptr [ESP + 0x2a4],XMM1
004888db  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004888e4  8b8424c4020000            MOV EAX,dword ptr [ESP + 0x2c4]
004888eb  898424c4020000            MOV dword ptr [ESP + 0x2c4],EAX
004888f2  660f5ac0                  CVTPD2PS XMM0,XMM0
004888f6  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004888fe  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00488906  f30f1184247c020000        MOVSS dword ptr [ESP + 0x27c],XMM0
0048890f  f30f10442444              MOVSS XMM0,dword ptr [ESP + 0x44]
00488915  e8264cf9ff                CALL 0x0041d540
0048891a  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
00488922  f30f118424b0000000        MOVSS dword ptr [ESP + 0xb0],XMM0
0048892b  f30f10442444              MOVSS XMM0,dword ptr [ESP + 0x44]
00488931  e8ea4bf9ff                CALL 0x0041d520
00488936  f30f5905e8a7ba00          MULSS XMM0,dword ptr [0x00baa7e8]
0048893e  8d842468020000            LEA EAX,[ESP + 0x268]
00488945  50                        PUSH EAX
00488946  6a00                      PUSH 0x0
00488948  8d8424b8000000            LEA EAX,[ESP + 0xb8]
0048894f  8bcf                      MOV ECX,EDI
00488951  50                        PUSH EAX
00488952  8d873c030000              LEA EAX,[EDI + 0x33c]
00488958  f30f118424c0000000        MOVSS dword ptr [ESP + 0xc0],XMM0
00488961  50                        PUSH EAX
00488962  e879292400                CALL 0x006cb2e0
00488967  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
0048896f  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
00488975  0f28c2                    MOVAPS XMM0,XMM2
00488978  f30f580d50a9ba00          ADDSS XMM1,dword ptr [0x00baa950]
00488980  f30f580530abba00          ADDSS XMM0,dword ptr [0x00baab30]
00488988  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
0048898e  0f2fc1                    COMISS XMM0,XMM1
00488991  0f87c1feffff              JA 0x00488858
00488997  0f28ca                    MOVAPS XMM1,XMM2
0048899a  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004889a2  f30f590504a8ba00          MULSS XMM0,dword ptr [0x00baa804]
004889aa  f30f58c1                  ADDSS XMM0,XMM1
004889ae  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004889b6  e9d8fcffff                JMP 0x00488693
004889bb  83f90d                    CMP ECX,0xd
004889be  0f8526030000              JNZ 0x00488cea
004889c4  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
004889c7  85f6                      TEST ESI,ESI
004889c9  7445                      JZ 0x00488a10
004889cb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004889d2  743c                      JZ 0x00488a10
004889d4  8bc6                      MOV EAX,ESI
004889d6  83781410                  CMP dword ptr [EAX + 0x14],0x10
004889da  7202                      JC 0x004889de
004889dc  8b00                      MOV EAX,dword ptr [EAX]
004889de  b9ccd2b100                MOV ECX,0xb1d2cc
004889e3  8a10                      MOV DL,byte ptr [EAX]
004889e5  3a11                      CMP DL,byte ptr [ECX]
004889e7  751a                      JNZ 0x00488a03
004889e9  84d2                      TEST DL,DL
004889eb  7412                      JZ 0x004889ff
004889ed  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004889f0  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004889f3  750e                      JNZ 0x00488a03
004889f5  83c002                    ADD EAX,0x2
004889f8  83c102                    ADD ECX,0x2
004889fb  84d2                      TEST DL,DL
004889fd  75e4                      JNZ 0x004889e3
004889ff  33c0                      XOR EAX,EAX
00488a01  eb05                      JMP 0x00488a08
00488a03  1bc0                      SBB EAX,EAX
00488a05  83c801                    OR EAX,0x1
00488a08  85c0                      TEST EAX,EAX
00488a0a  0f84a1000000              JZ 0x00488ab1
00488a10  8d4748                    LEA EAX,[EDI + 0x48]
00488a13  85f6                      TEST ESI,ESI
00488a15  7445                      JZ 0x00488a5c
00488a17  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00488a1e  753c                      JNZ 0x00488a5c
00488a20  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00488a23  83781410                  CMP dword ptr [EAX + 0x14],0x10
00488a27  7202                      JC 0x00488a2b
00488a29  8b00                      MOV EAX,dword ptr [EAX]
00488a2b  b9ccd2b100                MOV ECX,0xb1d2cc
00488a30  8a10                      MOV DL,byte ptr [EAX]
00488a32  3a11                      CMP DL,byte ptr [ECX]
00488a34  751a                      JNZ 0x00488a50
00488a36  84d2                      TEST DL,DL
00488a38  7412                      JZ 0x00488a4c
00488a3a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00488a3d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00488a40  750e                      JNZ 0x00488a50
00488a42  83c002                    ADD EAX,0x2
00488a45  83c102                    ADD ECX,0x2
00488a48  84d2                      TEST DL,DL
00488a4a  75e4                      JNZ 0x00488a30
00488a4c  33c0                      XOR EAX,EAX
00488a4e  eb05                      JMP 0x00488a55
00488a50  1bc0                      SBB EAX,EAX
00488a52  83c801                    OR EAX,0x1
00488a55  85c0                      TEST EAX,EAX
00488a57  7458                      JZ 0x00488ab1
00488a59  8d4748                    LEA EAX,[EDI + 0x48]
00488a5c  6a00                      PUSH 0x0
00488a5e  68ccd2b100                PUSH 0xb1d2cc
00488a63  8bc8                      MOV ECX,EAX
00488a65  e81619f8ff                CALL 0x0040a380
00488a6a  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00488a70  8d4c247c                  LEA ECX,[ESP + 0x7c]
00488a74  c744247c98030000          MOV dword ptr [ESP + 0x7c],0x398
00488a7c  e8ffdc4c00                CALL 0x00956780
00488a81  83ec08                    SUB ESP,0x8
00488a84  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00488a8c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00488a93  6a00                      PUSH 0x0
00488a95  6a02                      PUSH 0x2
00488a97  51                        PUSH ECX
00488a98  c704240000803f            MOV dword ptr [ESP],0x3f800000
00488a9f  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00488aa5  ffb42490000000            PUSH dword ptr [ESP + 0x90]
00488aac  e87f514a00                CALL 0x0092dc30
00488ab1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00488ab5  0f84ebfbffff              JZ 0x004886a6
00488abb  68dcd2b100                PUSH 0xb1d2dc
00488ac0  8d4f78                    LEA ECX,[EDI + 0x78]
00488ac3  e80823f8ff                CALL 0x0040add0
00488ac8  84c0                      TEST AL,AL
00488aca  0f84c3fbffff              JZ 0x00488693
00488ad0  6800000010                PUSH 0x10000000
00488ad5  6a00                      PUSH 0x0
00488ad7  8bcf                      MOV ECX,EDI
00488ad9  e852e9f8ff                CALL 0x00417430
00488ade  84c0                      TEST AL,AL
00488ae0  7417                      JZ 0x00488af9
00488ae2  6a00                      PUSH 0x0
00488ae4  51                        PUSH ECX
00488ae5  6a00                      PUSH 0x0
00488ae7  6a27                      PUSH 0x27
00488ae9  8bcf                      MOV ECX,EDI
00488aeb  e8f03c2200                CALL 0x006ac7e0
00488af0  83f801                    CMP EAX,0x1
00488af3  0f839afbffff              JNC 0x00488693
00488af9  e862642600                CALL 0x006eef60
00488afe  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00488b06  f30f58442418              ADDSS XMM0,dword ptr [ESP + 0x18]
00488b0c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00488b12  6a00                      PUSH 0x0
00488b14  50                        PUSH EAX
00488b15  6a00                      PUSH 0x0
00488b17  57                        PUSH EDI
00488b18  f30f118424d0000000        MOVSS dword ptr [ESP + 0xd0],XMM0
00488b21  8d8424c8000000            LEA EAX,[ESP + 0xc8]
00488b28  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00488b30  f30f58057ca8ba00          ADDSS XMM0,dword ptr [0x00baa87c]
00488b38  50                        PUSH EAX
00488b39  8d8424d4000000            LEA EAX,[ESP + 0xd4]
00488b40  c78424cc00000000000000    MOV dword ptr [ESP + 0xcc],0x0
00488b4b  50                        PUSH EAX
00488b4c  6a00                      PUSH 0x0
00488b4e  6a27                      PUSH 0x27
00488b50  c78424dc0000000000a040    MOV dword ptr [ESP + 0xdc],0x40a00000
00488b5b  f30f118424e4000000        MOVSS dword ptr [ESP + 0xe4],XMM0
00488b64  e8a7582700                CALL 0x006fe410
00488b69  8bc8                      MOV ECX,EAX
00488b6b  8b10                      MOV EDX,dword ptr [EAX]
00488b6d  ff520c                    CALL dword ptr [EDX + 0xc]
00488b70  51                        PUSH ECX
00488b71  c704240000803f            MOV dword ptr [ESP],0x3f800000
00488b78  6a00                      PUSH 0x0
00488b7a  6a02                      PUSH 0x2
00488b7c  51                        PUSH ECX
00488b7d  c704240000803f            MOV dword ptr [ESP],0x3f800000
00488b84  8bcf                      MOV ECX,EDI
00488b86  683a010000                PUSH 0x13a
00488b8b  e810e02400                CALL 0x006d6ba0
00488b90  e8cb632600                CALL 0x006eef60
00488b95  33d2                      XOR EDX,EDX
00488b97  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
00488b9f  b903000000                MOV ECX,0x3
00488ba4  f7f1                      DIV ECX
00488ba6  8d4202                    LEA EAX,[EDX + 0x2]
00488ba9  89442424                  MOV dword ptr [ESP + 0x24],EAX
00488bad  85c0                      TEST EAX,EAX
00488baf  0f8edefaffff              JLE 0x00488693
00488bb5  e8a6632600                CALL 0x006eef60
00488bba  51                        PUSH ECX
00488bbb  8bcf                      MOV ECX,EDI
00488bbd  660f6ec0                  MOVD XMM0,EAX
00488bc1  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00488bc5  c1e81f                    SHR EAX,0x1f
00488bc8  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00488bd1  660f5ac0                  CVTPD2PS XMM0,XMM0
00488bd5  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00488bdd  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00488be5  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
00488bed  f30f110424                MOVSS dword ptr [ESP],XMM0
00488bf2  e8d9d82200                CALL 0x006b64d0
00488bf7  837c240800                CMP dword ptr [ESP + 0x8],0x0
00488bfc  8bf0                      MOV ESI,EAX
00488bfe  7520                      JNZ 0x00488c20
00488c00  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
00488c08  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00488c10  f30f580d7ca8ba00          ADDSS XMM1,dword ptr [0x00baa87c]
00488c18  f30f58442418              ADDSS XMM0,dword ptr [ESP + 0x18]
00488c1e  eb46                      JMP 0x00488c66
00488c20  e83b632600                CALL 0x006eef60
00488c25  660f6ec0                  MOVD XMM0,EAX
00488c29  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00488c2d  c1e81f                    SHR EAX,0x1f
00488c30  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00488c39  660f5ac0                  CVTPD2PS XMM0,XMM0
00488c3d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00488c45  0f28c8                    MOVAPS XMM1,XMM0
00488c48  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
00488c4e  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
00488c56  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
00488c5e  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00488c66  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
00488c6e  8d8c243c020000            LEA ECX,[ESP + 0x23c]
00488c75  6a01                      PUSH 0x1
00488c77  f30f118e40030000          MOVSS dword ptr [ESI + 0x340],XMM1
00488c7f  0f57c0                    XORPS XMM0,XMM0
00488c82  8b06                      MOV EAX,dword ptr [ESI]
00488c84  6a00                      PUSH 0x0
00488c86  68ff000000                PUSH 0xff
00488c8b  6aff                      PUSH -0x1
00488c8d  0f1184245c020000          MOVUPS xmmword ptr [ESP + 0x25c],XMM0
00488c95  51                        PUSH ECX
00488c96  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00488c9d  8bce                      MOV ECX,ESI
00488c9f  0f11842450020000          MOVUPS xmmword ptr [ESP + 0x250],XMM0
00488ca7  c78424700200003d0ad73e    MOV dword ptr [ESP + 0x270],0x3ed70a3d
00488cb2  c7842474020000f628dc3e    MOV dword ptr [ESP + 0x274],0x3edc28f6
00488cbd  c78424780200003333b33e    MOV dword ptr [ESP + 0x278],0x3eb33333
00488cc8  ff503c                    CALL dword ptr [EAX + 0x3c]
00488ccb  8b06                      MOV EAX,dword ptr [ESI]
00488ccd  8bce                      MOV ECX,ESI
00488ccf  ff500c                    CALL dword ptr [EAX + 0xc]
00488cd2  8b442408                  MOV EAX,dword ptr [ESP + 0x8]
00488cd6  40                        INC EAX
00488cd7  89442408                  MOV dword ptr [ESP + 0x8],EAX
00488cdb  3b442424                  CMP EAX,dword ptr [ESP + 0x24]
00488cdf  0f8cd0feffff              JL 0x00488bb5
00488ce5  e9a9f9ffff                JMP 0x00488693
00488cea  83f908                    CMP ECX,0x8
00488ced  0f851f040000              JNZ 0x00489112
00488cf3  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00488cf9  85c0                      TEST EAX,EAX
00488cfb  0f8588010000              JNZ 0x00488e89
00488d01  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00488d04  85c0                      TEST EAX,EAX
00488d06  0f847d000000              JZ 0x00488d89
00488d0c  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00488d13  743b                      JZ 0x00488d50
00488d15  83781410                  CMP dword ptr [EAX + 0x14],0x10
00488d19  7202                      JC 0x00488d1d
00488d1b  8b00                      MOV EAX,dword ptr [EAX]
00488d1d  b9f4d8b100                MOV ECX,0xb1d8f4
00488d22  8a10                      MOV DL,byte ptr [EAX]
00488d24  3a11                      CMP DL,byte ptr [ECX]
00488d26  751a                      JNZ 0x00488d42
00488d28  84d2                      TEST DL,DL
00488d2a  7412                      JZ 0x00488d3e
00488d2c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00488d2f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00488d32  750e                      JNZ 0x00488d42
00488d34  83c002                    ADD EAX,0x2
00488d37  83c102                    ADD ECX,0x2
00488d3a  84d2                      TEST DL,DL
00488d3c  75e4                      JNZ 0x00488d22
00488d3e  33c0                      XOR EAX,EAX
00488d40  eb05                      JMP 0x00488d47
00488d42  1bc0                      SBB EAX,EAX
00488d44  83c801                    OR EAX,0x1
00488d47  85c0                      TEST EAX,EAX
00488d49  753e                      JNZ 0x00488d89
00488d4b  e995000000                JMP 0x00488de5
00488d50  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00488d53  83781410                  CMP dword ptr [EAX + 0x14],0x10
00488d57  7202                      JC 0x00488d5b
00488d59  8b00                      MOV EAX,dword ptr [EAX]
00488d5b  b9f4d8b100                MOV ECX,0xb1d8f4
00488d60  8a10                      MOV DL,byte ptr [EAX]
00488d62  3a11                      CMP DL,byte ptr [ECX]
00488d64  751a                      JNZ 0x00488d80
00488d66  84d2                      TEST DL,DL
00488d68  7412                      JZ 0x00488d7c
00488d6a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
00488d6d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00488d70  750e                      JNZ 0x00488d80
00488d72  83c002                    ADD EAX,0x2
00488d75  83c102                    ADD ECX,0x2
00488d78  84d2                      TEST DL,DL
00488d7a  75e4                      JNZ 0x00488d60
00488d7c  33c0                      XOR EAX,EAX
00488d7e  eb05                      JMP 0x00488d85
00488d80  1bc0                      SBB EAX,EAX
00488d82  83c801                    OR EAX,0x1
00488d85  85c0                      TEST EAX,EAX
00488d87  745c                      JZ 0x00488de5
00488d89  6a00                      PUSH 0x0
00488d8b  68f4d8b100                PUSH 0xb1d8f4
00488d90  8d4f48                    LEA ECX,[EDI + 0x48]
00488d93  e8e815f8ff                CALL 0x0040a380
00488d98  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00488d9e  8d8c2480000000            LEA ECX,[ESP + 0x80]
00488da5  c784248000000099030000    MOV dword ptr [ESP + 0x80],0x399
00488db0  e8cbd94c00                CALL 0x00956780
00488db5  83ec08                    SUB ESP,0x8
00488db8  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00488dc0  c704240000803f            MOV dword ptr [ESP],0x3f800000
00488dc7  6a00                      PUSH 0x0
00488dc9  6a02                      PUSH 0x2
00488dcb  51                        PUSH ECX
00488dcc  c704240000803f            MOV dword ptr [ESP],0x3f800000
00488dd3  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00488dd9  ffb42494000000            PUSH dword ptr [ESP + 0x94]
00488de0  e84b4e4a00                CALL 0x0092dc30
00488de5  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00488de9  740d                      JZ 0x00488df8
00488deb  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00488df2  0f85b4040000              JNZ 0x004892ac
00488df8  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00488dfe  8bcf                      MOV ECX,EDI
00488e00  e83b5a2300                CALL 0x006be840
00488e05  8d8c24c8000000            LEA ECX,[ESP + 0xc8]
00488e0c  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00488e14  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00488e1c  8d842458010000            LEA EAX,[ESP + 0x158]
00488e23  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00488e2b  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00488e33  50                        PUSH EAX
00488e34  f30f118424cc000000        MOVSS dword ptr [ESP + 0xcc],XMM0
00488e3d  f30f118c24d0000000        MOVSS dword ptr [ESP + 0xd0],XMM1
00488e46  e8e5715800                CALL 0x00a10030
00488e4b  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00488e50  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00488e54  f30f5905a0a8ba00          MULSS XMM0,dword ptr [0x00baa8a0]
00488e5c  f30f5915a0a8ba00          MULSS XMM2,dword ptr [0x00baa8a0]
00488e64  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00488e6c  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00488e74  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00488e7c  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00488e84  e919040000                JMP 0x004892a2
00488e89  83f801                    CMP EAX,0x1
00488e8c  0f8579010000              JNZ 0x0048900b
00488e92  6a00                      PUSH 0x0
00488e94  6800d9b100                PUSH 0xb1d900
00488e99  8d4f48                    LEA ECX,[EDI + 0x48]
00488e9c  e8df14f8ff                CALL 0x0040a380
00488ea1  6840b6c700                PUSH 0xc7b640
00488ea6  8d8f60030000              LEA ECX,[EDI + 0x360]
00488eac  e87f775800                CALL 0x00a10630
00488eb1  84c0                      TEST AL,AL
00488eb3  0f8492000000              JZ 0x00488f4b
00488eb9  8d8424d8000000            LEA EAX,[ESP + 0xd8]
00488ec0  50                        PUSH EAX
00488ec1  8d8f60030000              LEA ECX,[EDI + 0x360]
00488ec7  e864715800                CALL 0x00a10030
00488ecc  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00488ed3  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00488ed7  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00488edc  f30f5915a0a8ba00          MULSS XMM2,dword ptr [0x00baa8a0]
00488ee4  f30f590da0a8ba00          MULSS XMM1,dword ptr [0x00baa8a0]
00488eec  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00488ef4  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00488efc  744d                      JZ 0x00488f4b
00488efe  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00488f04  8d8c2484000000            LEA ECX,[ESP + 0x84]
00488f0b  c78424840000009c030000    MOV dword ptr [ESP + 0x84],0x39c
00488f16  e865d84c00                CALL 0x00956780
00488f1b  83ec08                    SUB ESP,0x8
00488f1e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00488f26  c704240000803f            MOV dword ptr [ESP],0x3f800000
00488f2d  6a00                      PUSH 0x0
00488f2f  6a02                      PUSH 0x2
00488f31  51                        PUSH ECX
00488f32  c704240000803f            MOV dword ptr [ESP],0x3f800000
00488f39  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00488f3f  ffb42498000000            PUSH dword ptr [ESP + 0x98]
00488f46  e8e54c4a00                CALL 0x0092dc30
00488f4b  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
00488f51  8d4101                    LEA EAX,[ECX + 0x1]
00488f54  898710040000              MOV dword ptr [EDI + 0x410],EAX
00488f5a  81f996000000              CMP ECX,0x96
00488f60  7f12                      JG 0x00488f74
00488f62  6a00                      PUSH 0x0
00488f64  68000a0001                PUSH 0x1000a00
00488f69  8bcf                      MOV ECX,EDI
00488f6b  e8c0e4f8ff                CALL 0x00417430
00488f70  84c0                      TEST AL,AL
00488f72  7406                      JZ 0x00488f7a
00488f74  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00488f7a  8bcf                      MOV ECX,EDI
00488f7c  e8bf582300                CALL 0x006be840
00488f81  817f289a010000            CMP dword ptr [EDI + 0x28],0x19a
00488f88  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00488f90  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00488f98  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00488fa0  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00488fa8  0f85fe020000              JNZ 0x004892ac
00488fae  f30f101540cbba00          MOVSS XMM2,dword ptr [0x00bacb40]
00488fb6  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
00488fbe  0f54ca                    ANDPS XMM1,XMM2
00488fc1  0f2fd9                    COMISS XMM3,XMM1
00488fc4  770c                      JA 0x00488fd2
00488fc6  0f54c2                    ANDPS XMM0,XMM2
00488fc9  0f2fd8                    COMISS XMM3,XMM0
00488fcc  0f86da020000              JBE 0x004892ac
00488fd2  e8895f2600                CALL 0x006eef60
00488fd7  33d2                      XOR EDX,EDX
00488fd9  b903000000                MOV ECX,0x3
00488fde  f7f1                      DIV ECX
00488fe0  85d2                      TEST EDX,EDX
00488fe2  0f85c4020000              JNZ 0x004892ac
00488fe8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00488ff0  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00488ff8  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00489000  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00489006  e9a1020000                JMP 0x004892ac
0048900b  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0048900e  85c0                      TEST EAX,EAX
00489010  0f8483000000              JZ 0x00489099
00489016  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048901d  743f                      JZ 0x0048905e
0048901f  83781410                  CMP dword ptr [EAX + 0x14],0x10
00489023  7202                      JC 0x00489027
00489025  8b00                      MOV EAX,dword ptr [EAX]
00489027  b9dce0b100                MOV ECX,0xb1e0dc
0048902c  0f1f4000                  NOP dword ptr [EAX]
00489030  8a10                      MOV DL,byte ptr [EAX]
00489032  3a11                      CMP DL,byte ptr [ECX]
00489034  751a                      JNZ 0x00489050
00489036  84d2                      TEST DL,DL
00489038  7412                      JZ 0x0048904c
0048903a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048903d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00489040  750e                      JNZ 0x00489050
00489042  83c002                    ADD EAX,0x2
00489045  83c102                    ADD ECX,0x2
00489048  84d2                      TEST DL,DL
0048904a  75e4                      JNZ 0x00489030
0048904c  33c0                      XOR EAX,EAX
0048904e  eb05                      JMP 0x00489055
00489050  1bc0                      SBB EAX,EAX
00489052  83c801                    OR EAX,0x1
00489055  85c0                      TEST EAX,EAX
00489057  7540                      JNZ 0x00489099
00489059  e98e000000                JMP 0x004890ec
0048905e  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00489061  83781410                  CMP dword ptr [EAX + 0x14],0x10
00489065  7202                      JC 0x00489069
00489067  8b00                      MOV EAX,dword ptr [EAX]
00489069  b9dce0b100                MOV ECX,0xb1e0dc
0048906e  6690                      NOP
00489070  8a10                      MOV DL,byte ptr [EAX]
00489072  3a11                      CMP DL,byte ptr [ECX]
00489074  751a                      JNZ 0x00489090
00489076  84d2                      TEST DL,DL
00489078  7412                      JZ 0x0048908c
0048907a  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0048907d  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00489080  750e                      JNZ 0x00489090
00489082  83c002                    ADD EAX,0x2
00489085  83c102                    ADD ECX,0x2
00489088  84d2                      TEST DL,DL
0048908a  75e4                      JNZ 0x00489070
0048908c  33c0                      XOR EAX,EAX
0048908e  eb05                      JMP 0x00489095
00489090  1bc0                      SBB EAX,EAX
00489092  83c801                    OR EAX,0x1
00489095  85c0                      TEST EAX,EAX
00489097  7453                      JZ 0x004890ec
00489099  6a00                      PUSH 0x0
0048909b  68dce0b100                PUSH 0xb1e0dc
004890a0  8d4f48                    LEA ECX,[EDI + 0x48]
004890a3  e8d812f8ff                CALL 0x0040a380
004890a8  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004890ae  8d4c2438                  LEA ECX,[ESP + 0x38]
004890b2  c74424389b030000          MOV dword ptr [ESP + 0x38],0x39b
004890ba  e8c1d64c00                CALL 0x00956780
004890bf  83ec08                    SUB ESP,0x8
004890c2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004890ca  c704240000803f            MOV dword ptr [ESP],0x3f800000
004890d1  6a00                      PUSH 0x0
004890d3  6a02                      PUSH 0x2
004890d5  51                        PUSH ECX
004890d6  c704240000803f            MOV dword ptr [ESP],0x3f800000
004890dd  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004890e3  ff74244c                  PUSH dword ptr [ESP + 0x4c]
004890e7  e8444b4a00                CALL 0x0092dc30
004890ec  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004890f0  0f84b0f5ffff              JZ 0x004886a6
004890f6  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004890fd  0f859f010000              JNZ 0x004892a2
00489103  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0048910d  e990010000                JMP 0x004892a2
00489112  83f90a                    CMP ECX,0xa
00489115  0f8591010000              JNZ 0x004892ac
0048911b  8d8f34030000              LEA ECX,[EDI + 0x334]
00489121  e83a611f00                CALL 0x0067f260
00489126  8bf0                      MOV ESI,EAX
00489128  85f6                      TEST ESI,ESI
0048912a  0f94c1                    SETZ CL
0048912d  888f48010000              MOV byte ptr [EDI + 0x148],CL
00489133  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00489139  85c0                      TEST EAX,EAX
0048913b  752e                      JNZ 0x0048916b
0048913d  50                        PUSH EAX
0048913e  ff34b5f4dbb100            PUSH dword ptr [ESI*0x4 + 0xb1dbf4]
00489145  8d4f48                    LEA ECX,[EDI + 0x48]
00489148  e83312f8ff                CALL 0x0040a380
0048914d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00489151  740d                      JZ 0x00489160
00489153  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048915a  0f854c010000              JNZ 0x004892ac
00489160  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
00489166  e941010000                JMP 0x004892ac
0048916b  83f801                    CMP EAX,0x1
0048916e  0f85db000000              JNZ 0x0048924f
00489174  6a00                      PUSH 0x0
00489176  ff34b5e4dbb100            PUSH dword ptr [ESI*0x4 + 0xb1dbe4]
0048917d  8d4f48                    LEA ECX,[EDI + 0x48]
00489180  e8fb11f8ff                CALL 0x0040a380
00489185  c744244800000000          MOV dword ptr [ESP + 0x48],0x0
0048918d  c744244c0000f0c1          MOV dword ptr [ESP + 0x4c],0xc1f00000
00489195  85f6                      TEST ESI,ESI
00489197  740f                      JZ 0x004891a8
00489199  83fe02                    CMP ESI,0x2
0048919c  7512                      JNZ 0x004891b0
0048919e  c744244800000c42          MOV dword ptr [ESP + 0x48],0x420c0000
004891a6  eb08                      JMP 0x004891b0
004891a8  c744244800000cc2          MOV dword ptr [ESP + 0x48],0xc20c0000
004891b0  660f6ec6                  MOVD XMM0,ESI
004891b4  8d442448                  LEA EAX,[ESP + 0x48]
004891b8  0f5bc0                    CVTDQ2PS XMM0,XMM0
004891bb  6a00                      PUSH 0x0
004891bd  57                        PUSH EDI
004891be  50                        PUSH EAX
004891bf  6a1e                      PUSH 0x1e
004891c1  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004891c9  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
004891d1  e86a951f00                CALL 0x00682740
004891d6  51                        PUSH ECX
004891d7  f30f110424                MOVSS dword ptr [ESP],XMM0
004891dc  8d873c030000              LEA EAX,[EDI + 0x33c]
004891e2  50                        PUSH EAX
004891e3  6a06                      PUSH 0x6
004891e5  e826614e00                CALL 0x0096f310
004891ea  83c41c                    ADD ESP,0x1c
004891ed  8bc8                      MOV ECX,EAX
004891ef  894c2424                  MOV dword ptr [ESP + 0x24],ECX
004891f3  83fe01                    CMP ESI,0x1
004891f6  750a                      JNZ 0x00489202
004891f8  f30f1005c0adba00          MOVSS XMM0,dword ptr [0x00baadc0]
00489200  eb08                      JMP 0x0048920a
00489202  f30f1005fcabba00          MOVSS XMM0,dword ptr [0x00baabfc]
0048920a  f30f118158030000          MOVSS dword ptr [ECX + 0x358],XMM0
00489212  8b01                      MOV EAX,dword ptr [ECX]
00489214  ff500c                    CALL dword ptr [EAX + 0xc]
00489217  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0048921d  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
00489223  85c9                      TEST ECX,ECX
00489225  7414                      JZ 0x0048923b
00489227  8d44245c                  LEA EAX,[ESP + 0x5c]
0048922b  8974245c                  MOV dword ptr [ESP + 0x5c],ESI
0048922f  50                        PUSH EAX
00489230  81c1cc030000              ADD ECX,0x3cc
00489236  e8d55f0400                CALL 0x004cf210
0048923b  8b4c2424                  MOV ECX,dword ptr [ESP + 0x24]
0048923f  56                        PUSH ESI
00489240  890e                      MOV dword ptr [ESI],ECX
00489242  e8a94a0400                CALL 0x004cdcf0
00489247  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
0048924d  eb5d                      JMP 0x004892ac
0048924f  83f802                    CMP EAX,0x2
00489252  7515                      JNZ 0x00489269
00489254  83bfec0b000000            CMP dword ptr [EDI + 0xbec],0x0
0048925b  754f                      JNZ 0x004892ac
0048925d  c787c00b000003000000      MOV dword ptr [EDI + 0xbc0],0x3
00489267  eb43                      JMP 0x004892ac
00489269  83f803                    CMP EAX,0x3
0048926c  753e                      JNZ 0x004892ac
0048926e  6a00                      PUSH 0x0
00489270  ff34b5d4dbb100            PUSH dword ptr [ESI*0x4 + 0xb1dbd4]
00489277  8d4f48                    LEA ECX,[EDI + 0x48]
0048927a  e80111f8ff                CALL 0x0040a380
0048927f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00489283  7409                      JZ 0x0048928e
00489285  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0048928c  751e                      JNZ 0x004892ac
0048928e  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00489298  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004892a2  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
004892ac  837f3001                  CMP dword ptr [EDI + 0x30],0x1
004892b0  0f8551090000              JNZ 0x00489c07
004892b6  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004892bc  2500400000                AND EAX,0x4000
004892c1  83c800                    OR EAX,0x0
004892c4  0f853d090000              JNZ 0x00489c07
004892ca  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004892d0  8bce                      MOV ECX,ESI
004892d2  e879402700                CALL 0x006fd350
004892d7  84c0                      TEST AL,AL
004892d9  0f8528090000              JNZ 0x00489c07
004892df  8b86f8640200              MOV EAX,dword ptr [ESI + 0x264f8]
004892e5  b91e000000                MOV ECX,0x1e
004892ea  034720                    ADD EAX,dword ptr [EDI + 0x20]
004892ed  99                        CDQ
004892ee  f7f9                      IDIV ECX
004892f0  85d2                      TEST EDX,EDX
004892f2  0f850f090000              JNZ 0x00489c07
004892f8  e8635c2600                CALL 0x006eef60
004892fd  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00489303  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00489309  89442440                  MOV dword ptr [ESP + 0x40],EAX
0048930d  8d442440                  LEA EAX,[ESP + 0x40]
00489311  50                        PUSH EAX
00489312  8d442418                  LEA EAX,[ESP + 0x18]
00489316  894c2470                  MOV dword ptr [ESP + 0x70],ECX
0048931a  50                        PUSH EAX
0048931b  57                        PUSH EDI
0048931c  6840b6c700                PUSH 0xc7b640
00489321  51                        PUSH ECX
00489322  8d442420                  LEA EAX,[ESP + 0x20]
00489326  89742424                  MOV dword ptr [ESP + 0x24],ESI
0048932a  50                        PUSH EAX
0048932b  8d442454                  LEA EAX,[ESP + 0x54]
0048932f  c744242c00000000          MOV dword ptr [ESP + 0x2c],0x0
00489337  50                        PUSH EAX
00489338  c744242817000000          MOV dword ptr [ESP + 0x28],0x17
00489340  c7442458e8030000          MOV dword ptr [ESP + 0x58],0x3e8
00489348  e893b33d00                CALL 0x008646e0
0048934d  a17816c700                MOV EAX,[0x00c71678]
00489352  8b4c243c                  MOV ECX,dword ptr [ESP + 0x3c]
00489356  894c2408                  MOV dword ptr [ESP + 0x8],ECX
0048935a  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00489361  0f8c9f020000              JL 0x00489606
00489367  8b8020660200              MOV EAX,dword ptr [EAX + 0x26620]
0048936d  89442418                  MOV dword ptr [ESP + 0x18],EAX
00489371  e8ea5b2600                CALL 0x006eef60
00489376  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
0048937e  8bf0                      MOV ESI,EAX
00489380  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
00489384  a174f6b100                MOV EAX,[0x00b1f674]
00489389  8b54240c                  MOV EDX,dword ptr [ESP + 0xc]
0048938d  8974243c                  MOV dword ptr [ESP + 0x3c],ESI
00489391  660fd68424e4000000        MOVQ qword ptr [ESP + 0xe4],XMM0
0048939a  89442438                  MOV dword ptr [ESP + 0x38],EAX
0048939e  83f905                    CMP ECX,0x5
004893a1  0f8589000000              JNZ 0x00489430
004893a7  81fa2c010000              CMP EDX,0x12c
004893ad  0f8702020000              JA 0x004895b5
004893b3  0f8456010000              JZ 0x0048950f
004893b9  83fa46                    CMP EDX,0x46
004893bc  0f84a5000000              JZ 0x00489467
004893c2  83fa64                    CMP EDX,0x64
004893c5  7569                      JNZ 0x00489430
004893c7  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
004893cb  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
004893cf  83f819                    CMP EAX,0x19
004893d2  7438                      JZ 0x0048940c
004893d4  89442460                  MOV dword ptr [ESP + 0x60],EAX
004893d8  8d4e20                    LEA ECX,[ESI + 0x20]
004893db  8d442460                  LEA EAX,[ESP + 0x60]
004893df  50                        PUSH EAX
004893e0  8d842414010000            LEA EAX,[ESP + 0x114]
004893e7  50                        PUSH EAX
004893e8  e8b3f4f9ff                CALL 0x004288a0
004893ed  8b8c2418010000            MOV ECX,dword ptr [ESP + 0x118]
004893f4  8b442414                  MOV EAX,dword ptr [ESP + 0x14]
004893f8  80790d00                  CMP byte ptr [ECX + 0xd],0x0
004893fc  750a                      JNZ 0x00489408
004893fe  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
00489401  7c05                      JL 0x00489408
00489403  3b4e20                    CMP ECX,dword ptr [ESI + 0x20]
00489406  7504                      JNZ 0x0048940c
00489408  b101                      MOV CL,0x1
0048940a  eb02                      JMP 0x0048940e
0048940c  32c9                      XOR CL,CL
0048940e  85c0                      TEST EAX,EAX
00489410  7404                      JZ 0x00489416
00489412  84c9                      TEST CL,CL
00489414  7412                      JZ 0x00489428
00489416  8b06                      MOV EAX,dword ptr [ESI]
00489418  8bce                      MOV ECX,ESI
0048941a  6a00                      PUSH 0x0
0048941c  8b8084000000              MOV EAX,dword ptr [EAX + 0x84]
00489422  ffd0                      CALL EAX
00489424  89442414                  MOV dword ptr [ESP + 0x14],EAX
00489428  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
0048942c  8b54240c                  MOV EDX,dword ptr [ESP + 0xc]
00489430  8b742410                  MOV ESI,dword ptr [ESP + 0x10]
00489434  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0048943a  2500000020                AND EAX,0x20000000
0048943f  83c800                    OR EAX,0x0
00489442  0f84f7010000              JZ 0x0048963f
00489448  81f9e8030000              CMP ECX,0x3e8
0048944e  0f85eb010000              JNZ 0x0048963f
00489454  83c2ea                    ADD EDX,-0x16
00489457  83fa04                    CMP EDX,0x4
0048945a  0f87df010000              JA 0x0048963f
00489460  ff2495809c4800            JMP dword ptr [EDX*0x4 + 0x489c80]
00489467  8b542414                  MOV EDX,dword ptr [ESP + 0x14]
0048946b  8bc2                      MOV EAX,EDX
0048946d  c1e80b                    SHR EAX,0xb
00489470  8944245c                  MOV dword ptr [ESP + 0x5c],EAX
00489474  85d2                      TEST EDX,EDX
00489476  742c                      JZ 0x004894a4
00489478  8b442418                  MOV EAX,dword ptr [ESP + 0x18]
0048947c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00489482  6a00                      PUSH 0x0
00489484  52                        PUSH EDX
00489485  8b00                      MOV EAX,dword ptr [EAX]
00489487  8d8940a70100              LEA ECX,[ECX + 0x1a740]
0048948d  8b7028                    MOV ESI,dword ptr [EAX + 0x28]
00489490  e8ebb52a00                CALL 0x00734a80
00489495  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
00489499  50                        PUSH EAX
0048949a  ffd6                      CALL ESI
0048949c  84c0                      TEST AL,AL
0048949e  7488                      JZ 0x00489428
004894a0  8b74243c                  MOV ESI,dword ptr [ESP + 0x3c]
004894a4  a17816c700                MOV EAX,[0x00c71678]
004894a9  0540a70100                ADD EAX,0x1a740
004894ae  89442460                  MOV dword ptr [ESP + 0x60],EAX
004894b2  85f6                      TEST ESI,ESI
004894b4  7510                      JNZ 0x004894c6
004894b6  6854bfb600                PUSH 0xb6bf54
004894bb  6a10                      PUSH 0x10
004894bd  e8fe7d5800                CALL 0x00a112c0
004894c2  83c408                    ADD ESP,0x8
004894c5  cc                        INT3
004894c6  8b8c24e4000000            MOV ECX,dword ptr [ESP + 0xe4]
004894cd  8bd6                      MOV EDX,ESI
004894cf  d3ea                      SHR EDX,CL
004894d1  8b8c24e8000000            MOV ECX,dword ptr [ESP + 0xe8]
004894d8  33d6                      XOR EDX,ESI
004894da  8bc2                      MOV EAX,EDX
004894dc  d3e0                      SHL EAX,CL
004894de  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
004894e2  33c2                      XOR EAX,EDX
004894e4  8bf0                      MOV ESI,EAX
004894e6  d3ee                      SHR ESI,CL
004894e8  8b4c2460                  MOV ECX,dword ptr [ESP + 0x60]
004894ec  33f0                      XOR ESI,EAX
004894ee  56                        PUSH ESI
004894ef  89742440                  MOV dword ptr [ESP + 0x40],ESI
004894f3  e808b42a00                CALL 0x00734900
004894f8  8b4c245c                  MOV ECX,dword ptr [ESP + 0x5c]
004894fc  8bd0                      MOV EDX,EAX
004894fe  83e101                    AND ECX,0x1
00489501  c1e10b                    SHL ECX,0xb
00489504  0bd1                      OR EDX,ECX
00489506  89542414                  MOV dword ptr [ESP + 0x14],EDX
0048950a  e965ffffff                JMP 0x00489474
0048950f  8b542414                  MOV EDX,dword ptr [ESP + 0x14]
00489513  85d2                      TEST EDX,EDX
00489515  7414                      JZ 0x0048952b
00489517  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
0048951b  52                        PUSH EDX
0048951c  8b01                      MOV EAX,dword ptr [ECX]
0048951e  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
00489521  ffd0                      CALL EAX
00489523  84c0                      TEST AL,AL
00489525  0f84fdfeffff              JZ 0x00489428
0048952b  85f6                      TEST ESI,ESI
0048952d  7510                      JNZ 0x0048953f
0048952f  6854bfb600                PUSH 0xb6bf54
00489534  6a10                      PUSH 0x10
00489536  e8857d5800                CALL 0x00a112c0
0048953b  83c408                    ADD ESP,0x8
0048953e  cc                        INT3
0048953f  8b8c24e4000000            MOV ECX,dword ptr [ESP + 0xe4]
00489546  8bc6                      MOV EAX,ESI
00489548  d3e8                      SHR EAX,CL
0048954a  8b8c24e8000000            MOV ECX,dword ptr [ESP + 0xe8]
00489551  33c6                      XOR EAX,ESI
00489553  8bd0                      MOV EDX,EAX
00489555  d3e2                      SHL EDX,CL
00489557  8b4c2438                  MOV ECX,dword ptr [ESP + 0x38]
0048955b  33d0                      XOR EDX,EAX
0048955d  6a01                      PUSH 0x1
0048955f  6a0a                      PUSH 0xa
00489561  8bf2                      MOV ESI,EDX
00489563  6a0a                      PUSH 0xa
00489565  d3ee                      SHR ESI,CL
00489567  33f2                      XOR ESI,EDX
00489569  6a19                      PUSH 0x19
0048956b  56                        PUSH ESI
0048956c  e80fac2a00                CALL 0x00734180
00489571  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
00489579  8b0d74f6b100              MOV ECX,dword ptr [0x00b1f674]
0048957f  6a00                      PUSH 0x0
00489581  6a01                      PUSH 0x1
00489583  6a01                      PUSH 0x1
00489585  50                        PUSH EAX
00489586  8d842410020000            LEA EAX,[ESP + 0x210]
0048958d  89b42410020000            MOV dword ptr [ESP + 0x210],ESI
00489594  50                        PUSH EAX
00489595  660fd6842418020000        MOVQ qword ptr [ESP + 0x218],XMM0
0048959e  898c2420020000            MOV dword ptr [ESP + 0x220],ECX
004895a5  e896bd3d00                CALL 0x00865340
004895aa  8bd0                      MOV EDX,EAX
004895ac  89542414                  MOV dword ptr [ESP + 0x14],EDX
004895b0  e95effffff                JMP 0x00489513
004895b5  81fa5e010000              CMP EDX,0x15e
004895bb  0f856ffeffff              JNZ 0x00489430
004895c1  8b4c2414                  MOV ECX,dword ptr [ESP + 0x14]
004895c5  8b7c2418                  MOV EDI,dword ptr [ESP + 0x18]
004895c9  0f1f8000000000            NOP dword ptr [EAX]
004895d0  85c9                      TEST ECX,ECX
004895d2  740e                      JZ 0x004895e2
004895d4  8b07                      MOV EAX,dword ptr [EDI]
004895d6  51                        PUSH ECX
004895d7  8bcf                      MOV ECX,EDI
004895d9  8b402c                    MOV EAX,dword ptr [EAX + 0x2c]
004895dc  ffd0                      CALL EAX
004895de  84c0                      TEST AL,AL
004895e0  741b                      JZ 0x004895fd
004895e2  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004895e8  6a00                      PUSH 0x0
004895ea  8d8940a70100              LEA ECX,[ECX + 0x1a740]
004895f0  e8aba62a00                CALL 0x00733ca0
004895f5  8bc8                      MOV ECX,EAX
004895f7  894c2414                  MOV dword ptr [ESP + 0x14],ECX
004895fb  ebd3                      JMP 0x004895d0
004895fd  8b7c2454                  MOV EDI,dword ptr [ESP + 0x54]
00489601  e922feffff                JMP 0x00489428
00489606  8b54240c                  MOV EDX,dword ptr [ESP + 0xc]
0048960a  e925feffff                JMP 0x00489434
0048963f  6a00                      PUSH 0x0
00489641  51                        PUSH ECX
00489642  8b8e80650200              MOV ECX,dword ptr [ESI + 0x26580]
00489648  e8436a2600                CALL 0x006f0090
0048964d  89442424                  MOV dword ptr [ESP + 0x24],EAX
00489651  85c0                      TEST EAX,EAX
00489653  0f8456050000              JZ 0x00489baf
00489659  e832ee5d00                CALL 0x00a68490
0048965e  89542428                  MOV dword ptr [ESP + 0x28],EDX
00489662  8bc8                      MOV ECX,EAX
00489664  badb34b6d7                MOV EDX,0xd7b634db
00489669  bf82de1b43                MOV EDI,0x431bde82
0048966e  f7e2                      MUL EDX
00489670  89842488000000            MOV dword ptr [ESP + 0x88],EAX
00489677  8bf2                      MOV ESI,EDX
00489679  8bc1                      MOV EAX,ECX
0048967b  b9db34b6d7                MOV ECX,0xd7b634db
00489680  f7e7                      MUL EDI
00489682  8bf8                      MOV EDI,EAX
00489684  89942488000000            MOV dword ptr [ESP + 0x88],EDX
0048968b  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
0048968f  f7e1                      MUL ECX
00489691  8bc8                      MOV ECX,EAX
00489693  89542418                  MOV dword ptr [ESP + 0x18],EDX
00489697  8b442428                  MOV EAX,dword ptr [ESP + 0x28]
0048969b  ba82de1b43                MOV EDX,0x431bde82
004896a0  f7e2                      MUL EDX
004896a2  03ce                      ADD ECX,ESI
004896a4  89542428                  MOV dword ptr [ESP + 0x28],EDX
004896a8  8b542418                  MOV EDX,dword ptr [ESP + 0x18]
004896ac  83d200                    ADC EDX,0x0
004896af  89442430                  MOV dword ptr [ESP + 0x30],EAX
004896b3  8b742430                  MOV ESI,dword ptr [ESP + 0x30]
004896b7  03f9                      ADD EDI,ECX
004896b9  8b8c2488000000            MOV ECX,dword ptr [ESP + 0x88]
004896c0  83d100                    ADC ECX,0x0
004896c3  897c2418                  MOV dword ptr [ESP + 0x18],EDI
004896c7  8b7c2424                  MOV EDI,dword ptr [ESP + 0x24]
004896cb  33c0                      XOR EAX,EAX
004896cd  03d1                      ADD EDX,ECX
004896cf  8b4c2428                  MOV ECX,dword ptr [ESP + 0x28]
004896d3  13c0                      ADC EAX,EAX
004896d5  03f2                      ADD ESI,EDX
004896d7  13c8                      ADC ECX,EAX
004896d9  0facce12                  SHRD ESI,ECX,0x12
004896dd  89742430                  MOV dword ptr [ESP + 0x30],ESI
004896e1  8b742454                  MOV ESI,dword ptr [ESP + 0x54]
004896e5  c1e912                    SHR ECX,0x12
004896e8  894c2428                  MOV dword ptr [ESP + 0x28],ECX
004896ec  8b4628                    MOV EAX,dword ptr [ESI + 0x28]
004896ef  894734                    MOV dword ptr [EDI + 0x34],EAX
004896f2  8b462c                    MOV EAX,dword ptr [ESI + 0x2c]
004896f5  894738                    MOV dword ptr [EDI + 0x38],EAX
004896f8  8d87c8030000              LEA EAX,[EDI + 0x3c8]
004896fe  8b08                      MOV ECX,dword ptr [EAX]
00489700  85c9                      TEST ECX,ECX
00489702  741a                      JZ 0x0048971e
00489704  89442464                  MOV dword ptr [ESP + 0x64],EAX
00489708  81c1cc030000              ADD ECX,0x3cc
0048970e  8d442464                  LEA EAX,[ESP + 0x64]
00489712  50                        PUSH EAX
00489713  e8f85a0400                CALL 0x004cf210
00489718  8d87c8030000              LEA EAX,[EDI + 0x3c8]
0048971e  50                        PUSH EAX
0048971f  8bce                      MOV ECX,ESI
00489721  8930                      MOV dword ptr [EAX],ESI
00489723  e8c8450400                CALL 0x004cdcf0
00489728  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
0048972e  8bcf                      MOV ECX,EDI
00489730  ff742440                  PUSH dword ptr [ESP + 0x40]
00489734  8b54240c                  MOV EDX,dword ptr [ESP + 0xc]
00489738  ff742418                  PUSH dword ptr [ESP + 0x18]
0048973c  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
00489742  8b8640030000              MOV EAX,dword ptr [ESI + 0x340]
00489748  ff742414                  PUSH dword ptr [ESP + 0x14]
0048974c  898740030000              MOV dword ptr [EDI + 0x340],EAX
00489752  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0048975a  8b07                      MOV EAX,dword ptr [EDI]
0048975c  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00489764  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0048976c  52                        PUSH EDX
0048976d  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00489775  ff5004                    CALL dword ptr [EAX + 0x4]
00489778  8b442410                  MOV EAX,dword ptr [ESP + 0x10]
0048977c  57                        PUSH EDI
0048977d  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
00489783  8b8a14120000              MOV ECX,dword ptr [EDX + 0x1214]
00489789  8d4101                    LEA EAX,[ECX + 0x1]
0048978c  898214120000              MOV dword ptr [EDX + 0x1214],EAX
00489792  894f20                    MOV dword ptr [EDI + 0x20],ECX
00489795  8d8a18120000              LEA ECX,[EDX + 0x1218]
0048979b  e860edf8ff                CALL 0x00418500
004897a0  6a01                      PUSH 0x1
004897a2  8bce                      MOV ECX,ESI
004897a4  e8e7c32200                CALL 0x006b5b90
004897a9  84c0                      TEST AL,AL
004897ab  0f8460020000              JZ 0x00489a11
004897b1  6800000010                PUSH 0x10000000
004897b6  6a00                      PUSH 0x0
004897b8  8bce                      MOV ECX,ESI
004897ba  e871dcf8ff                CALL 0x00417430
004897bf  84c0                      TEST AL,AL
004897c1  0f8482000000              JZ 0x00489849
004897c7  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
004897cd  8b4c2408                  MOV ECX,dword ptr [ESP + 0x8]
004897d1  0d00000010                OR EAX,0x10000000
004897d6  8b9768010000              MOV EDX,dword ptr [EDI + 0x168]
004897dc  899768010000              MOV dword ptr [EDI + 0x168],EDX
004897e2  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
004897e8  83f909                    CMP ECX,0x9
004897eb  7414                      JZ 0x00489801
004897ed  83f907                    CMP ECX,0x7
004897f0  740f                      JZ 0x00489801
004897f2  83c820                    OR EAX,0x20
004897f5  899768010000              MOV dword ptr [EDI + 0x168],EDX
004897fb  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00489801  ffb664020000              PUSH dword ptr [ESI + 0x264]
00489807  8d8c2464010000            LEA ECX,[ESP + 0x164]
0048980e  e8fd7afaff                CALL 0x00431310
00489813  6a00                      PUSH 0x0
00489815  6a00                      PUSH 0x0
00489817  6aff                      PUSH -0x1
00489819  8d84246c010000            LEA EAX,[ESP + 0x16c]
00489820  8bcf                      MOV ECX,EDI
00489822  50                        PUSH EAX
00489823  e848402200                CALL 0x006ad870
00489828  8b542408                  MOV EDX,dword ptr [ESP + 0x8]
0048982c  8d42f6                    LEA EAX,[EDX + -0xa]
0048982f  3ddd030000                CMP EAX,0x3dd
00489834  773f                      JA 0x00489875
00489836  6a01                      PUSH 0x1
00489838  ff742410                  PUSH dword ptr [ESP + 0x10]
0048983c  8d4f48                    LEA ECX,[EDI + 0x48]
0048983f  e8ccc40100                CALL 0x004a5d10
00489844  83c408                    ADD ESP,0x8
00489847  eb2c                      JMP 0x00489875
00489849  6a00                      PUSH 0x0
0048984b  6800000020                PUSH 0x20000000
00489850  8bce                      MOV ECX,ESI
00489852  e8d9dbf8ff                CALL 0x00417430
00489857  84c0                      TEST AL,AL
00489859  741a                      JZ 0x00489875
0048985b  6a00                      PUSH 0x0
0048985d  6a00                      PUSH 0x0
0048985f  6aff                      PUSH -0x1
00489861  8d8c24e4010000            LEA ECX,[ESP + 0x1e4]
00489868  e803c4faff                CALL 0x00435c70
0048986d  50                        PUSH EAX
0048986e  8bcf                      MOV ECX,EDI
00489870  e8fb3f2200                CALL 0x006ad870
00489875  6a00                      PUSH 0x0
00489877  68acd6c500                PUSH 0xc5d6ac
0048987c  68dcd5c500                PUSH 0xc5d5dc
00489881  6a00                      PUSH 0x0
00489883  56                        PUSH ESI
00489884  e828706600                CALL 0x00af08b1
00489889  83c414                    ADD ESP,0x14
0048988c  89442408                  MOV dword ptr [ESP + 0x8],EAX
00489890  6a00                      PUSH 0x0
00489892  68acd6c500                PUSH 0xc5d6ac
00489897  68dcd5c500                PUSH 0xc5d5dc
0048989c  6a00                      PUSH 0x0
0048989e  57                        PUSH EDI
0048989f  e80d706600                CALL 0x00af08b1
004898a4  83c414                    ADD ESP,0x14
004898a7  89442418                  MOV dword ptr [ESP + 0x18],EAX
004898ab  837c240800                CMP dword ptr [ESP + 0x8],0x0
004898b0  0f845b010000              JZ 0x00489a11
004898b6  85c0                      TEST EAX,EAX
004898b8  0f8453010000              JZ 0x00489a11
004898be  6a00                      PUSH 0x0
004898c0  6a01                      PUSH 0x1
004898c2  8bc8                      MOV ECX,EAX
004898c4  e867dbf8ff                CALL 0x00417430
004898c9  84c0                      TEST AL,AL
004898cb  0f8599000000              JNZ 0x0048996a
004898d1  6800000001                PUSH 0x1000000
004898d6  6a00                      PUSH 0x0
004898d8  8bce                      MOV ECX,ESI
004898da  e851dbf8ff                CALL 0x00417430
004898df  84c0                      TEST AL,AL
004898e1  7421                      JZ 0x00489904
004898e3  6a00                      PUSH 0x0
004898e5  8d8c248c010000            LEA ECX,[ESP + 0x18c]
004898ec  e81f7afaff                CALL 0x00431310
004898f1  8b4c2418                  MOV ECX,dword ptr [ESP + 0x18]
004898f5  8d842488010000            LEA EAX,[ESP + 0x188]
004898fc  6a5a                      PUSH 0x5a
004898fe  50                        PUSH EAX
004898ff  e8ccdf2200                CALL 0x006b78d0
00489904  6a00                      PUSH 0x0
00489906  6800000001                PUSH 0x1000000
0048990b  8bce                      MOV ECX,ESI
0048990d  e81edbf8ff                CALL 0x00417430
00489912  84c0                      TEST AL,AL
00489914  7454                      JZ 0x0048996a
00489916  6a00                      PUSH 0x0
00489918  8d8c24b4010000            LEA ECX,[ESP + 0x1b4]
0048991f  e8ec79faff                CALL 0x00431310
00489924  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
00489928  8d8424b0010000            LEA EAX,[ESP + 0x1b0]
0048992f  6a00                      PUSH 0x0
00489931  6a00                      PUSH 0x0
00489933  6a5a                      PUSH 0x5a
00489935  50                        PUSH EAX
00489936  8bce                      MOV ECX,ESI
00489938  e8d3c22200                CALL 0x006b5c10
0048993d  83be3c02000000            CMP dword ptr [ESI + 0x23c],0x0
00489944  7e28                      JLE 0x0048996e
00489946  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0048994c  818e6801000000000001      OR dword ptr [ESI + 0x168],0x1000000
00489956  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0048995c  8b86b8030000              MOV EAX,dword ptr [ESI + 0x3b8]
00489962  8986b4030000              MOV dword ptr [ESI + 0x3b4],EAX
00489968  eb04                      JMP 0x0048996e
0048996a  8b742418                  MOV ESI,dword ptr [ESP + 0x18]
0048996e  8b442408                  MOV EAX,dword ptr [ESP + 0x8]
00489972  f30f1086380c0000          MOVSS XMM0,dword ptr [ESI + 0xc38]
0048997a  51                        PUSH ECX
0048997b  8bce                      MOV ECX,ESI
0048997d  f30f5980480f0000          MULSS XMM0,dword ptr [EAX + 0xf48]
00489985  f30f110424                MOVSS dword ptr [ESP],XMM0
0048998a  e881cc2400                CALL 0x006d6610
0048998f  8b442408                  MOV EAX,dword ptr [ESP + 0x8]
00489993  8bce                      MOV ECX,ESI
00489995  f30f1086480f0000          MOVSS XMM0,dword ptr [ESI + 0xf48]
0048999d  f30f5980480f0000          MULSS XMM0,dword ptr [EAX + 0xf48]
004899a5  f30f1186480f0000          MOVSS dword ptr [ESI + 0xf48],XMM0
004899ad  f30f1086440f0000          MOVSS XMM0,dword ptr [ESI + 0xf44]
004899b5  f30f5980440f0000          MULSS XMM0,dword ptr [EAX + 0xf44]
004899bd  f30f1186440f0000          MOVSS dword ptr [ESI + 0xf44],XMM0
004899c5  f30f108684030000          MOVSS XMM0,dword ptr [ESI + 0x384]
004899cd  f30f5980440f0000          MULSS XMM0,dword ptr [EAX + 0xf44]
004899d5  f30f118684030000          MOVSS dword ptr [ESI + 0x384],XMM0
004899dd  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
004899e5  f30f5980440f0000          MULSS XMM0,dword ptr [EAX + 0xf44]
004899ed  8b06                      MOV EAX,dword ptr [ESI]
004899ef  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
004899f7  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
004899fa  ffd0                      CALL EAX
004899fc  84c0                      TEST AL,AL
004899fe  7411                      JZ 0x00489a11
00489a00  8b442408                  MOV EAX,dword ptr [ESP + 0x8]
00489a04  8bce                      MOV ECX,ESI
00489a06  ffb0540f0000              PUSH dword ptr [EAX + 0xf54]
00489a0c  e82f371800                CALL 0x0060d140
00489a11  57                        PUSH EDI
00489a12  e8d9de2700                CALL 0x007078f0
00489a17  84c0                      TEST AL,AL
00489a19  7407                      JZ 0x00489a22
00489a1b  51                        PUSH ECX
00489a1c  57                        PUSH EDI
00489a1d  e89edf2700                CALL 0x007079c0
00489a22  80bf7201000000            CMP byte ptr [EDI + 0x172],0x0
00489a29  0f84de000000              JZ 0x00489b0d
00489a2f  8b542410                  MOV EDX,dword ptr [ESP + 0x10]
00489a33  8b8258770600              MOV EAX,dword ptr [EDX + 0x67758]
00489a39  3b825c770600              CMP EAX,dword ptr [EDX + 0x6775c]
00489a3f  0f84c8000000              JZ 0x00489b0d
00489a45  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00489a48  8db280770600              LEA ESI,[EDX + 0x67780]
00489a4e  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
00489a51  898424d4000000            MOV dword ptr [ESP + 0xd4],EAX
00489a58  8d8424d0000000            LEA EAX,[ESP + 0xd0]
00489a5f  50                        PUSH EAX
00489a60  8d44246c                  LEA EAX,[ESP + 0x6c]
00489a64  898c24d4000000            MOV dword ptr [ESP + 0xd4],ECX
00489a6b  50                        PUSH EAX
00489a6c  8bce                      MOV ECX,ESI
00489a6e  e82d8a5500                CALL 0x009e24a0
00489a73  8b06                      MOV EAX,dword ptr [ESI]
00489a75  39442468                  CMP dword ptr [ESP + 0x68],EAX
00489a79  7532                      JNZ 0x00489aad
00489a7b  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00489a7e  8bce                      MOV ECX,ESI
00489a80  89842490000000            MOV dword ptr [ESP + 0x90],EAX
00489a87  8d842490000000            LEA EAX,[ESP + 0x90]
00489a8e  50                        PUSH EAX
00489a8f  8d8424f4000000            LEA EAX,[ESP + 0xf4]
00489a96  c7842498000000ffffffff    MOV dword ptr [ESP + 0x98],0xffffffff
00489aa1  50                        PUSH EAX
00489aa2  e8f9895500                CALL 0x009e24a0
00489aa7  8b0e                      MOV ECX,dword ptr [ESI]
00489aa9  3908                      CMP dword ptr [EAX],ECX
00489aab  7460                      JZ 0x00489b0d
00489aad  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00489ab3  33f6                      XOR ESI,ESI
00489ab5  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00489abb  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00489ac1  c1f802                    SAR EAX,0x2
00489ac4  85c0                      TEST EAX,EAX
00489ac6  7445                      JZ 0x00489b0d
00489ac8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00489ad0  56                        PUSH ESI
00489ad1  81c1a8ba0100              ADD ECX,0x1baa8
00489ad7  e8e4f75200                CALL 0x009b92c0
00489adc  6840b6c700                PUSH 0xc7b640
00489ae1  ff742470                  PUSH dword ptr [ESP + 0x70]
00489ae5  57                        PUSH EDI
00489ae6  6a06                      PUSH 0x6
00489ae8  8d88c81f0000              LEA ECX,[EAX + 0x1fc8]
00489aee  e88d6b5500                CALL 0x009e0680
00489af3  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00489af9  46                        INC ESI
00489afa  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00489b00  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00489b06  c1f802                    SAR EAX,0x2
00489b09  3bf0                      CMP ESI,EAX
00489b0b  72c3                      JC 0x00489ad0
00489b0d  e87ee95d00                CALL 0x00a68490
00489b12  89542440                  MOV dword ptr [ESP + 0x40],EDX
00489b16  8bc8                      MOV ECX,EAX
00489b18  badb34b6d7                MOV EDX,0xd7b634db
00489b1d  bf82de1b43                MOV EDI,0x431bde82
00489b22  f7e2                      MUL EDX
00489b24  8bf2                      MOV ESI,EDX
00489b26  898424d8000000            MOV dword ptr [ESP + 0xd8],EAX
00489b2d  8bc1                      MOV EAX,ECX
00489b2f  b9db34b6d7                MOV ECX,0xd7b634db
00489b34  f7e7                      MUL EDI
00489b36  89542468                  MOV dword ptr [ESP + 0x68],EDX
00489b3a  8bf8                      MOV EDI,EAX
00489b3c  8b442440                  MOV EAX,dword ptr [ESP + 0x40]
00489b40  f7e1                      MUL ECX
00489b42  8954246c                  MOV dword ptr [ESP + 0x6c],EDX
00489b46  8bc8                      MOV ECX,EAX
00489b48  8b442440                  MOV EAX,dword ptr [ESP + 0x40]
00489b4c  ba82de1b43                MOV EDX,0x431bde82
00489b51  f7e2                      MUL EDX
00489b53  03ce                      ADD ECX,ESI
00489b55  89942488000000            MOV dword ptr [ESP + 0x88],EDX
00489b5c  8b54246c                  MOV EDX,dword ptr [ESP + 0x6c]
00489b60  83d200                    ADC EDX,0x0
00489b63  89442464                  MOV dword ptr [ESP + 0x64],EAX
00489b67  03f9                      ADD EDI,ECX
00489b69  8b4c2468                  MOV ECX,dword ptr [ESP + 0x68]
00489b6d  89bc24d8000000            MOV dword ptr [ESP + 0xd8],EDI
00489b74  83d100                    ADC ECX,0x0
00489b77  8b7c2454                  MOV EDI,dword ptr [ESP + 0x54]
00489b7b  33c0                      XOR EAX,EAX
00489b7d  03d1                      ADD EDX,ECX
00489b7f  8b4c2464                  MOV ECX,dword ptr [ESP + 0x64]
00489b83  13c0                      ADC EAX,EAX
00489b85  03ca                      ADD ECX,EDX
00489b87  8b942488000000            MOV EDX,dword ptr [ESP + 0x88]
00489b8e  13d0                      ADC EDX,EAX
00489b90  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
00489b94  0facd112                  SHRD ECX,EDX,0x12
00489b98  c1ea12                    SHR EDX,0x12
00489b9b  2b4c2430                  SUB ECX,dword ptr [ESP + 0x30]
00489b9f  1b542428                  SBB EDX,dword ptr [ESP + 0x28]
00489ba3  010d30b6c700              ADD dword ptr [0x00c7b630],ECX
00489ba9  111534b6c700              ADC dword ptr [0x00c7b634],EDX
00489baf  6a00                      PUSH 0x0
00489bb1  68acd5c500                PUSH 0xc5d5ac
00489bb6  68dcd5c500                PUSH 0xc5d5dc
00489bbb  6a00                      PUSH 0x0
00489bbd  50                        PUSH EAX
00489bbe  e8ee6c6600                CALL 0x00af08b1
00489bc3  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
00489bcb  8bc8                      MOV ECX,EAX
00489bcd  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
00489bd5  83c414                    ADD ESP,0x14
00489bd8  f30f5915bca6ba00          MULSS XMM2,dword ptr [0x00baa6bc]
00489be0  f30f590dbca6ba00          MULSS XMM1,dword ptr [0x00baa6bc]
00489be8  8b01                      MOV EAX,dword ptr [ECX]
00489bea  f30f1191e4000000          MOVSS dword ptr [ECX + 0xe4],XMM2
00489bf2  c781780400000000403f      MOV dword ptr [ECX + 0x478],0x3f400000
00489bfc  f30f1189e8000000          MOVSS dword ptr [ECX + 0xe8],XMM1
00489c04  ff500c                    CALL dword ptr [EAX + 0xc]
00489c07  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00489c0e  7444                      JZ 0x00489c54
00489c10  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00489c16  8d4c242c                  LEA ECX,[ESP + 0x2c]
00489c1a  c744242c96030000          MOV dword ptr [ESP + 0x2c],0x396
00489c22  e859cb4c00                CALL 0x00956780
00489c27  83ec08                    SUB ESP,0x8
00489c2a  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00489c32  c704240000803f            MOV dword ptr [ESP],0x3f800000
00489c39  6a00                      PUSH 0x0
00489c3b  6a02                      PUSH 0x2
00489c3d  51                        PUSH ECX
00489c3e  c704240000803f            MOV dword ptr [ESP],0x3f800000
00489c45  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00489c4b  ff742440                  PUSH dword ptr [ESP + 0x40]
00489c4f  e8dc3f4a00                CALL 0x0092dc30
00489c54  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00489c5c  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00489c64  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00489c6c  8b8c2414030000            MOV ECX,dword ptr [ESP + 0x314]
00489c73  5f                        POP EDI
00489c74  5e                        POP ESI
00489c75  33cc                      XOR ECX,ESP
00489c77  e8af546600                CALL 0x00aef12b
00489c7c  8be5                      MOV ESP,EBP
00489c7e  5d                        POP EBP
00489c7f  c3                        RET
