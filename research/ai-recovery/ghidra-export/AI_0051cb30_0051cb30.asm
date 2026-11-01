; J460 NPC AI 0x0051cb30 AI_0051cb30
; types=90
; identities=90.0.0
; entry=0051cb30
0051cb30  53                        PUSH EBX
0051cb31  8bdc                      MOV EBX,ESP
0051cb33  83ec08                    SUB ESP,0x8
0051cb36  83e4f8                    AND ESP,0xfffffff8
0051cb39  83c404                    ADD ESP,0x4
0051cb3c  55                        PUSH EBP
0051cb3d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0051cb40  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0051cb44  8bec                      MOV EBP,ESP
0051cb46  81ecf8000000              SUB ESP,0xf8
0051cb4c  a1b493bf00                MOV EAX,[0x00bf93b4]
0051cb51  33c5                      XOR EAX,EBP
0051cb53  8945fc                    MOV dword ptr [EBP + -0x4],EAX
0051cb56  56                        PUSH ESI
0051cb57  57                        PUSH EDI
0051cb58  8bf9                      MOV EDI,ECX
0051cb5a  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0051cb61  0f85ad010000              JNZ 0x0051cd14
0051cb67  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0051cb71  e8ea231d00                CALL 0x006eef60
0051cb76  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0051cb7c  6a00                      PUSH 0x0
0051cb7e  68acd6c500                PUSH 0xc5d6ac
0051cb83  68dcd5c500                PUSH 0xc5d5dc
0051cb88  6a00                      PUSH 0x0
0051cb8a  50                        PUSH EAX
0051cb8b  6a00                      PUSH 0x0
0051cb8d  57                        PUSH EDI
0051cb8e  6840b6c700                PUSH 0xc7b640
0051cb93  8d873c030000              LEA EAX,[EDI + 0x33c]
0051cb99  50                        PUSH EAX
0051cb9a  6a00                      PUSH 0x0
0051cb9c  6a60                      PUSH 0x60
0051cb9e  e87dbff0ff                CALL 0x00428b20
0051cba3  50                        PUSH EAX
0051cba4  e8083d5d00                CALL 0x00af08b1
0051cba9  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
0051cbaf  83c414                    ADD ESP,0x14
0051cbb2  8db0bc030000              LEA ESI,[EAX + 0x3bc]
0051cbb8  85c9                      TEST ECX,ECX
0051cbba  7418                      JZ 0x0051cbd4
0051cbbc  8d854cffffff              LEA EAX,[EBP + 0xffffff4c]
0051cbc2  89b54cffffff              MOV dword ptr [EBP + 0xffffff4c],ESI
0051cbc8  50                        PUSH EAX
0051cbc9  81c1cc030000              ADD ECX,0x3cc
0051cbcf  e83c26fbff                CALL 0x004cf210
0051cbd4  56                        PUSH ESI
0051cbd5  8bcf                      MOV ECX,EDI
0051cbd7  893e                      MOV dword ptr [ESI],EDI
0051cbd9  e81211fbff                CALL 0x004cdcf0
0051cbde  0f280d90c2ba00            MOVAPS XMM1,xmmword ptr [0x00bac290]
0051cbe5  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
0051cbeb  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0051cbf1  c7852cffffff00000000      MOV dword ptr [EBP + 0xffffff2c],0x0
0051cbfb  c78530ffffff00000000      MOV dword ptr [EBP + 0xffffff30],0x0
0051cc05  0f57c0                    XORPS XMM0,XMM0
0051cc08  c78534ffffff00000000      MOV dword ptr [EBP + 0xffffff34],0x0
0051cc12  3bc8                      CMP ECX,EAX
0051cc14  741d                      JZ 0x0051cc33
0051cc16  8b8534ffffff              MOV EAX,dword ptr [EBP + 0xffffff34]
0051cc1c  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
0051cc20  f30f7e852cffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff2c]
0051cc28  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
0051cc2d  0f1109                    MOVUPS xmmword ptr [ECX],XMM1
0051cc30  894128                    MOV dword ptr [ECX + 0x28],EAX
0051cc33  8bb7ec030000              MOV ESI,dword ptr [EDI + 0x3ec]
0051cc39  f30f7e056cf6b100          MOVQ XMM0,qword ptr [0x00b1f66c]
0051cc41  a174f6b100                MOV EAX,[0x00b1f674]
0051cc46  660fd6853cffffff          MOVQ qword ptr [EBP + 0xffffff3c],XMM0
0051cc4e  89854cffffff              MOV dword ptr [EBP + 0xffffff4c],EAX
0051cc54  85f6                      TEST ESI,ESI
0051cc56  7510                      JNZ 0x0051cc68
0051cc58  6854bfb600                PUSH 0xb6bf54
0051cc5d  6a10                      PUSH 0x10
0051cc5f  e85c464f00                CALL 0x00a112c0
0051cc64  83c408                    ADD ESP,0x8
0051cc67  cc                        INT3
0051cc68  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
0051cc6e  8bd6                      MOV EDX,ESI
0051cc70  d3ea                      SHR EDX,CL
0051cc72  8b8d40ffffff              MOV ECX,dword ptr [EBP + 0xffffff40]
0051cc78  33d6                      XOR EDX,ESI
0051cc7a  8bc2                      MOV EAX,EDX
0051cc7c  d3e0                      SHL EAX,CL
0051cc7e  8b8d4cffffff              MOV ECX,dword ptr [EBP + 0xffffff4c]
0051cc84  33c2                      XOR EAX,EDX
0051cc86  8bd0                      MOV EDX,EAX
0051cc88  d3ea                      SHR EDX,CL
0051cc8a  33d0                      XOR EDX,EAX
0051cc8c  83e203                    AND EDX,0x3
0051cc8f  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0051cc95  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0051cc98  8b0c957015b600            MOV ECX,dword ptr [EDX*0x4 + 0xb61570]
0051cc9f  898d4cffffff              MOV dword ptr [EBP + 0xffffff4c],ECX
0051cca5  85f6                      TEST ESI,ESI
0051cca7  0f8438010000              JZ 0x0051cde5
0051ccad  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0051ccb1  8bc6                      MOV EAX,ESI
0051ccb3  7202                      JC 0x0051ccb7
0051ccb5  8b06                      MOV EAX,dword ptr [ESI]
0051ccb7  8a10                      MOV DL,byte ptr [EAX]
0051ccb9  3a11                      CMP DL,byte ptr [ECX]
0051ccbb  751a                      JNZ 0x0051ccd7
0051ccbd  84d2                      TEST DL,DL
0051ccbf  7412                      JZ 0x0051ccd3
0051ccc1  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0051ccc4  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0051ccc7  750e                      JNZ 0x0051ccd7
0051ccc9  83c002                    ADD EAX,0x2
0051cccc  83c102                    ADD ECX,0x2
0051cccf  84d2                      TEST DL,DL
0051ccd1  75e4                      JNZ 0x0051ccb7
0051ccd3  33c0                      XOR EAX,EAX
0051ccd5  eb05                      JMP 0x0051ccdc
0051ccd7  1bc0                      SBB EAX,EAX
0051ccd9  83c801                    OR EAX,0x1
0051ccdc  85c0                      TEST EAX,EAX
0051ccde  0f85f9000000              JNZ 0x0051cddd
0051cce4  384634                    CMP byte ptr [ESI + 0x34],AL
0051cce7  742b                      JZ 0x0051cd14
0051cce9  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0051ccef  8d7748                    LEA ESI,[EDI + 0x48]
0051ccf2  7520                      JNZ 0x0051cd14
0051ccf4  8b8d4cffffff              MOV ECX,dword ptr [EBP + 0xffffff4c]
0051ccfa  6a01                      PUSH 0x1
0051ccfc  51                        PUSH ECX
0051ccfd  8bce                      MOV ECX,ESI
0051ccff  e8ccd8eeff                CALL 0x0040a5d0
0051cd04  84c0                      TEST AL,AL
0051cd06  740c                      JZ 0x0051cd14
0051cd08  8d4e30                    LEA ECX,[ESI + 0x30]
0051cd0b  e8a0d4eeff                CALL 0x0040a1b0
0051cd10  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0051cd14  a17816c700                MOV EAX,[0x00c71678]
0051cd19  8db73c030000              LEA ESI,[EDI + 0x33c]
0051cd1f  83ec0c                    SUB ESP,0xc
0051cd22  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0051cd28  0f57db                    XORPS XMM3,XMM3
0051cd2b  c744240800002041          MOV dword ptr [ESP + 0x8],0x41200000
0051cd33  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0051cd3b  c704240000f041            MOV dword ptr [ESP],0x41f00000
0051cd42  56                        PUSH ESI
0051cd43  51                        PUSH ECX
0051cd44  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0051cd4a  e801622f00                CALL 0x00812f50
0051cd4f  8b08                      MOV ECX,dword ptr [EAX]
0051cd51  890e                      MOV dword ptr [ESI],ECX
0051cd53  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0051cd56  894604                    MOV dword ptr [ESI + 0x4],EAX
0051cd59  e802221d00                CALL 0x006eef60
0051cd5e  33d2                      XOR EDX,EDX
0051cd60  b90a000000                MOV ECX,0xa
0051cd65  f7f1                      DIV ECX
0051cd67  85d2                      TEST EDX,EDX
0051cd69  7542                      JNZ 0x0051cdad
0051cd6b  e8f0211d00                CALL 0x006eef60
0051cd70  51                        PUSH ECX
0051cd71  8bcf                      MOV ECX,EDI
0051cd73  660f6ec0                  MOVD XMM0,EAX
0051cd77  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0051cd7b  c1e81f                    SHR EAX,0x1f
0051cd7e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0051cd87  660f5ac0                  CVTPD2PS XMM0,XMM0
0051cd8b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0051cd93  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0051cd9b  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
0051cda3  f30f110424                MOVSS dword ptr [ESP],XMM0
0051cda8  e823971900                CALL 0x006b64d0
0051cdad  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
0051cdb4  0f85ad020000              JNZ 0x0051d067
0051cdba  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051cdc1  752a                      JNZ 0x0051cded
0051cdc3  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0051cdcb  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0051cdd3  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0051cddb  eb58                      JMP 0x0051ce35
0051cddd  8d7748                    LEA ESI,[EDI + 0x48]
0051cde0  e90fffffff                JMP 0x0051ccf4
0051cde5  8d7748                    LEA ESI,[EDI + 0x48]
0051cde8  e90dffffff                JMP 0x0051ccfa
0051cded  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0051cdf5  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
0051cdfb  50                        PUSH EAX
0051cdfc  8bcf                      MOV ECX,EDI
0051cdfe  e89db71b00                CALL 0x006d85a0
0051ce03  f30f108d40ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff40]
0051ce0b  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
0051ce12  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
0051ce1a  9f                        LAHF
0051ce1b  f6c444                    TEST AH,0x44
0051ce1e  7a0d                      JP 0x0051ce2d
0051ce20  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0051ce27  9f                        LAHF
0051ce28  f6c444                    TEST AH,0x44
0051ce2b  7b10                      JNP 0x0051ce3d
0051ce2d  f30f118f200f0000          MOVSS dword ptr [EDI + 0xf20],XMM1
0051ce35  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
0051ce3d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051ce41  0f84e7010000              JZ 0x0051d02e
0051ce47  68dcd2b100                PUSH 0xb1d2dc
0051ce4c  8d4f78                    LEA ECX,[EDI + 0x78]
0051ce4f  e87cdfeeff                CALL 0x0040add0
0051ce54  84c0                      TEST AL,AL
0051ce56  0f84bf010000              JZ 0x0051d01b
0051ce5c  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0051ce64  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0051ce6a  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
0051ce72  83f812                    CMP EAX,0x12
0051ce75  750a                      JNZ 0x0051ce81
0051ce77  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0051ce7f  eb0d                      JMP 0x0051ce8e
0051ce81  83f813                    CMP EAX,0x13
0051ce84  7510                      JNZ 0x0051ce96
0051ce86  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0051ce8e  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
0051ce96  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0051ce9c  8d8d4cffffff              LEA ECX,[EBP + 0xffffff4c]
0051cea2  c7854cffffffb2000000      MOV dword ptr [EBP + 0xffffff4c],0xb2
0051ceac  e8cf984300                CALL 0x00956780
0051ceb1  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
0051ceb9  83ec08                    SUB ESP,0x8
0051cebc  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0051cec4  f30f110424                MOVSS dword ptr [ESP],XMM0
0051cec9  6a00                      PUSH 0x0
0051cecb  6a02                      PUSH 0x2
0051cecd  51                        PUSH ECX
0051cece  c704240000803f            MOV dword ptr [ESP],0x3f800000
0051ced5  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0051cedb  ffb54cffffff              PUSH dword ptr [EBP + 0xffffff4c]
0051cee1  e84a0d4100                CALL 0x0092dc30
0051cee6  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
0051ceec  e83f20f2ff                CALL 0x0043ef30
0051cef1  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
0051cef9  8bcf                      MOV ECX,EDI
0051cefb  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
0051cf03  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
0051cf0b  f30f108558ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff58]
0051cf13  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
0051cf1b  f30f118558ffffff          MOVSS dword ptr [EBP + 0xffffff58],XMM0
0051cf23  e818191a00                CALL 0x006be840
0051cf28  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051cf2f  8db73c030000              LEA ESI,[EDI + 0x33c]
0051cf35  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0051cf3d  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
0051cf45  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0051cf49  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
0051cf4e  f30f118d48ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM1
0051cf56  f30f11954cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM2
0051cf5e  7430                      JZ 0x0051cf90
0051cf60  f30f108f200f0000          MOVSS XMM1,dword ptr [EDI + 0xf20]
0051cf68  f30f1097240f0000          MOVSS XMM2,dword ptr [EDI + 0xf24]
0051cf70  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0051cf78  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
0051cf80  f30f118d48ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM1
0051cf88  f30f11954cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM2
0051cf90  0f28c1                    MOVAPS XMM0,XMM1
0051cf93  f30f59c1                  MULSS XMM0,XMM1
0051cf97  0f28ca                    MOVAPS XMM1,XMM2
0051cf9a  f30f59ca                  MULSS XMM1,XMM2
0051cf9e  f30f58c1                  ADDSS XMM0,XMM1
0051cfa2  e8a98af1ff                CALL 0x00435a50
0051cfa7  f30f10954cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff4c]
0051cfaf  0f28c8                    MOVAPS XMM1,XMM0
0051cfb2  0f57c0                    XORPS XMM0,XMM0
0051cfb5  0f2fc8                    COMISS XMM1,XMM0
0051cfb8  7621                      JBE 0x0051cfdb
0051cfba  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0051cfc2  f30f5ed9                  DIVSS XMM3,XMM1
0051cfc6  f30f108d48ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff48]
0051cfce  0f28c3                    MOVAPS XMM0,XMM3
0051cfd1  f30f59d3                  MULSS XMM2,XMM3
0051cfd5  f30f59c8                  MULSS XMM1,XMM0
0051cfd9  eb08                      JMP 0x0051cfe3
0051cfdb  f30f108d48ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff48]
0051cfe3  f30f590db8a7ba00          MULSS XMM1,dword ptr [0x00baa7b8]
0051cfeb  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0051cff1  8bcf                      MOV ECX,EDI
0051cff3  f30f5915b8a7ba00          MULSS XMM2,dword ptr [0x00baa7b8]
0051cffb  50                        PUSH EAX
0051cffc  6a02                      PUSH 0x2
0051cffe  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
0051d004  f30f118d40ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM1
0051d00c  50                        PUSH EAX
0051d00d  56                        PUSH ESI
0051d00e  f30f119544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM2
0051d016  e8c5e21a00                CALL 0x006cb2e0
0051d01b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0051d01f  740d                      JZ 0x0051d02e
0051d021  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0051d028  0f859b020000              JNZ 0x0051d2c9
0051d02e  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0051d034  8d4f48                    LEA ECX,[EDI + 0x48]
0051d037  6a01                      PUSH 0x1
0051d039  ff34857015b600            PUSH dword ptr [EAX*0x4 + 0xb61570]
0051d040  e88bd5eeff                CALL 0x0040a5d0
0051d045  84c0                      TEST AL,AL
0051d047  740f                      JZ 0x0051d058
0051d049  8d4f78                    LEA ECX,[EDI + 0x78]
0051d04c  e85fd1eeff                CALL 0x0040a1b0
0051d051  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0051d058  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0051d062  e962020000                JMP 0x0051d2c9
0051d067  51                        PUSH ECX
0051d068  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
0051d06e  c7042400002041            MOV dword ptr [ESP],0x41200000
0051d075  50                        PUSH EAX
0051d076  8bcf                      MOV ECX,EDI
0051d078  e8c31b1a00                CALL 0x006bec40
0051d07d  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051d084  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0051d088  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0051d08c  f30f118d48ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM1
0051d094  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0051d099  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0051d09e  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
0051d0a6  743a                      JZ 0x0051d0e2
0051d0a8  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
0051d0ae  0f57d2                    XORPS XMM2,XMM2
0051d0b1  50                        PUSH EAX
0051d0b2  8bcf                      MOV ECX,EDI
0051d0b4  e817b21b00                CALL 0x006d82d0
0051d0b9  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0051d0bd  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0051d0c5  f30f118d48ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM1
0051d0cd  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0051d0d2  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0051d0da  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
0051d0e2  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
0051d0e8  85d2                      TEST EDX,EDX
0051d0ea  7e22                      JLE 0x0051d10e
0051d0ec  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0051d0f4  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0051d0fc  2bc8                      SUB ECX,EAX
0051d0fe  03d1                      ADD EDX,ECX
0051d100  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
0051d106  85d2                      TEST EDX,EDX
0051d108  0f8fee000000              JG 0x0051d1fc
0051d10e  f30f100decaaba00          MOVSS XMM1,dword ptr [0x00baaaec]
0051d116  8bcf                      MOV ECX,EDI
0051d118  6a07                      PUSH 0x7
0051d11a  6a00                      PUSH 0x0
0051d11c  e83fdd1a00                CALL 0x006cae60
0051d121  84c0                      TEST AL,AL
0051d123  0f84d3000000              JZ 0x0051d1fc
0051d129  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051d130  751a                      JNZ 0x0051d14c
0051d132  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0051d13a  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0051d142  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0051d14a  eb2e                      JMP 0x0051d17a
0051d14c  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0051d154  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
0051d15a  50                        PUSH EAX
0051d15b  8bcf                      MOV ECX,EDI
0051d15d  e83eb41b00                CALL 0x006d85a0
0051d162  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
0051d16a  f30f1187200f0000          MOVSS dword ptr [EDI + 0xf20],XMM0
0051d172  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
0051d17a  f30f1187240f0000          MOVSS dword ptr [EDI + 0xf24],XMM0
0051d182  8d4f48                    LEA ECX,[EDI + 0x48]
0051d185  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0051d18b  6a01                      PUSH 0x1
0051d18d  ff34858015b600            PUSH dword ptr [EAX*0x4 + 0xb61580]
0051d194  e837d4eeff                CALL 0x0040a5d0
0051d199  84c0                      TEST AL,AL
0051d19b  740f                      JZ 0x0051d1ac
0051d19d  8d4f78                    LEA ECX,[EDI + 0x78]
0051d1a0  e80bd0eeff                CALL 0x0040a1b0
0051d1a5  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0051d1ac  33c0                      XOR EAX,EAX
0051d1ae  0f57c9                    XORPS XMM1,XMM1
0051d1b1  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0051d1b8  740a                      JZ 0x0051d1c4
0051d1ba  f30f1087200f0000          MOVSS XMM0,dword ptr [EDI + 0xf20]
0051d1c2  eb08                      JMP 0x0051d1cc
0051d1c4  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
0051d1cc  0f2fc1                    COMISS XMM0,XMM1
0051d1cf  0f97c0                    SETA AL
0051d1d2  888748010000              MOV byte ptr [EDI + 0x148],AL
0051d1d8  e8831d1d00                CALL 0x006eef60
0051d1dd  83e001                    AND EAX,0x1
0051d1e0  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0051d1ea  83c006                    ADD EAX,0x6
0051d1ed  8d0cc500000000            LEA ECX,[EAX*0x8 + 0x0]
0051d1f4  2bc8                      SUB ECX,EAX
0051d1f6  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
0051d1fc  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0051d204  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
0051d20c  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0051d213  0f2f056ca0ba00            COMISS XMM0,dword ptr [0x00baa06c]
0051d21a  0f86a9000000              JBE 0x0051d2c9
0051d220  f30f108d4cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff4c]
0051d228  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
0051d230  f30f59c0                  MULSS XMM0,XMM0
0051d234  f30f59c9                  MULSS XMM1,XMM1
0051d238  f30f58c1                  ADDSS XMM0,XMM1
0051d23c  e80f88f1ff                CALL 0x00435a50
0051d241  0f28c8                    MOVAPS XMM1,XMM0
0051d244  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0051d24b  0f2f0d20a1ba00            COMISS XMM1,dword ptr [0x00baa120]
0051d252  760e                      JBE 0x0051d262
0051d254  f30f101d40a1ba00          MOVSS XMM3,dword ptr [0x00baa140]
0051d25c  f30f5ed8                  DIVSS XMM3,XMM0
0051d260  eb03                      JMP 0x0051d265
0051d262  0f57db                    XORPS XMM3,XMM3
0051d265  f30f108d48ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff48]
0051d26d  0f57c0                    XORPS XMM0,XMM0
0051d270  f30f10954cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff4c]
0051d278  f30f59cb                  MULSS XMM1,XMM3
0051d27c  f30f59d3                  MULSS XMM2,XMM3
0051d280  f30f109d44ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff44]
0051d288  0f2ed8                    UCOMISS XMM3,XMM0
0051d28b  9f                        LAHF
0051d28c  f6c444                    TEST AH,0x44
0051d28f  7b38                      JNP 0x0051d2c9
0051d291  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0051d299  f30f59c8                  MULSS XMM1,XMM0
0051d29d  f30f59d0                  MULSS XMM2,XMM0
0051d2a1  f30f5ecb                  DIVSS XMM1,XMM3
0051d2a5  f30f5ed3                  DIVSS XMM2,XMM3
0051d2a9  f30f588f60030000          ADDSS XMM1,dword ptr [EDI + 0x360]
0051d2b1  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
0051d2b9  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0051d2c1  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
0051d2c9  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0051d2d1  f30f590500a4ba00          MULSS XMM0,dword ptr [0x00baa400]
0051d2d9  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0051d2dc  33cd                      XOR ECX,EBP
0051d2de  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0051d2e6  5f                        POP EDI
0051d2e7  5e                        POP ESI
0051d2e8  e83e1e5d00                CALL 0x00aef12b
0051d2ed  8be5                      MOV ESP,EBP
0051d2ef  5d                        POP EBP
0051d2f0  8be3                      MOV ESP,EBX
0051d2f2  5b                        POP EBX
0051d2f3  c3                        RET
