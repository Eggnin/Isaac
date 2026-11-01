; J460 NPC AI 0x006bec40 HELPER_Entity_NPC_ProjectileHelper
; types=
; identities=common_attack
; entry=006bec40
006bec40  55                        PUSH EBP
006bec41  8bec                      MOV EBP,ESP
006bec43  83e4f8                    AND ESP,0xfffffff8
006bec46  83ec1c                    SUB ESP,0x1c
006bec49  53                        PUSH EBX
006bec4a  8bd9                      MOV EBX,ECX
006bec4c  56                        PUSH ESI
006bec4d  57                        PUSH EDI
006bec4e  8b836c010000              MOV EAX,dword ptr [EBX + 0x16c]
006bec54  8b8b68010000              MOV ECX,dword ptr [EBX + 0x168]
006bec5a  89442424                  MOV dword ptr [ESP + 0x24],EAX
006bec5e  8bc1                      MOV EAX,ECX
006bec60  2500020000                AND EAX,0x200
006bec65  83c800                    OR EAX,0x0
006bec68  0f84b8010000              JZ 0x006bee26
006bec6e  f30f10832c0c0000          MOVSS XMM0,dword ptr [EBX + 0xc2c]
006bec76  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
006bec7d  8b357816c700              MOV ESI,dword ptr [0x00c71678]
006bec83  9f                        LAHF
006bec84  f6c444                    TEST AH,0x44
006bec87  7a15                      JP 0x006bec9e
006bec89  f30f1083300c0000          MOVSS XMM0,dword ptr [EBX + 0xc30]
006bec91  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
006bec98  9f                        LAHF
006bec99  f6c444                    TEST AH,0x44
006bec9c  7b34                      JNP 0x006becd2
006bec9e  81e100400000              AND ECX,0x4000
006beca4  83c900                    OR ECX,0x0
006beca7  0f855c010000              JNZ 0x006bee09
006becad  8bce                      MOV ECX,ESI
006becaf  e89ce60300                CALL 0x006fd350
006becb4  84c0                      TEST AL,AL
006becb6  0f854d010000              JNZ 0x006bee09
006becbc  8b86f8640200              MOV EAX,dword ptr [ESI + 0x264f8]
006becc2  b90f000000                MOV ECX,0xf
006becc7  99                        CDQ
006becc8  f7f9                      IDIV ECX
006becca  85d2                      TEST EDX,EDX
006beccc  0f8537010000              JNZ 0x006bee09
006becd2  f30f108370030000          MOVSS XMM0,dword ptr [EBX + 0x370]
006becda  8bb600830100              MOV ESI,dword ptr [ESI + 0x18300]
006bece0  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
006bece6  e875020300                CALL 0x006eef60
006beceb  660f6ec0                  MOVD XMM0,EAX
006becef  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006becf3  c1e81f                    SHR EAX,0x1f
006becf6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006becff  660f5ac0                  CVTPD2PS XMM0,XMM0
006bed03  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006bed0b  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
006bed13  f30f58c0                  ADDSS XMM0,XMM0
006bed17  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
006bed1d  e83e020300                CALL 0x006eef60
006bed22  660f6ec0                  MOVD XMM0,EAX
006bed26  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006bed2a  c1e81f                    SHR EAX,0x1f
006bed2d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006bed36  660f5ac0                  CVTPD2PS XMM0,XMM0
006bed3a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006bed42  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
006bed48  e813020300                CALL 0x006eef60
006bed4d  660f6ec0                  MOVD XMM0,EAX
006bed51  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006bed55  c1e81f                    SHR EAX,0x1f
006bed58  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006bed61  660f5ac0                  CVTPD2PS XMM0,XMM0
006bed65  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
006bed6d  f30f59442420              MULSS XMM0,dword ptr [ESP + 0x20]
006bed73  f30f5905d4aaba00          MULSS XMM0,dword ptr [0x00baaad4]
006bed7b  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
006bed81  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
006bed87  e8b4e7d5ff                CALL 0x0041d540
006bed8c  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
006bed92  f30f58833c030000          ADDSS XMM0,dword ptr [EBX + 0x33c]
006bed9a  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
006beda0  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
006beda6  e875e7d5ff                CALL 0x0041d520
006bedab  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
006bedb1  8d442420                  LEA EAX,[ESP + 0x20]
006bedb5  83ec0c                    SUB ESP,0xc
006bedb8  8bce                      MOV ECX,ESI
006bedba  f30f588340030000          ADDSS XMM0,dword ptr [EBX + 0x340]
006bedc2  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
006bedc8  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
006bedce  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
006bedd4  0f28d8                    MOVAPS XMM3,XMM0
006bedd7  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
006beddd  f30f110424                MOVSS dword ptr [ESP],XMM0
006bede2  50                        PUSH EAX
006bede3  8d442428                  LEA EAX,[ESP + 0x28]
006bede7  50                        PUSH EAX
006bede8  e863411500                CALL 0x00812f50
006beded  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
006bedf3  f30f11832c0c0000          MOVSS dword ptr [EBX + 0xc2c],XMM0
006bedfb  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
006bee01  f30f1183300c0000          MOVSS dword ptr [EBX + 0xc30],XMM0
006bee09  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
006bee0c  8b8b2c0c0000              MOV ECX,dword ptr [EBX + 0xc2c]
006bee12  8b93300c0000              MOV EDX,dword ptr [EBX + 0xc30]
006bee18  895004                    MOV dword ptr [EAX + 0x4],EDX
006bee1b  8908                      MOV dword ptr [EAX],ECX
006bee1d  5f                        POP EDI
006bee1e  5e                        POP ESI
006bee1f  5b                        POP EBX
006bee20  8be5                      MOV ESP,EBP
006bee22  5d                        POP EBP
006bee23  c20800                    RET 0x8
006bee26  81e100080001              AND ECX,0x1000800
006bee2c  83c900                    OR ECX,0x0
006bee2f  740e                      JZ 0x006bee3f
006bee31  8b4328                    MOV EAX,dword ptr [EBX + 0x28]
006bee34  83f810                    CMP EAX,0x10
006bee37  752a                      JNZ 0x006bee63
006bee39  837b2c02                  CMP dword ptr [EBX + 0x2c],0x2
006bee3d  7430                      JZ 0x006bee6f
006bee3f  8bcb                      MOV ECX,EBX
006bee41  e8faf9ffff                CALL 0x006be840
006bee46  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
006bee4c  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
006bee52  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
006bee55  895004                    MOV dword ptr [EAX + 0x4],EDX
006bee58  8908                      MOV dword ptr [EAX],ECX
006bee5a  5f                        POP EDI
006bee5b  5e                        POP ESI
006bee5c  5b                        POP EBX
006bee5d  8be5                      MOV ESP,EBP
006bee5f  5d                        POP EBP
006bee60  c20800                    RET 0x8
006bee63  83f816                    CMP EAX,0x16
006bee66  74d7                      JZ 0x006bee3f
006bee68  3dcd000000                CMP EAX,0xcd
006bee6d  74d0                      JZ 0x006bee3f
006bee6f  8bcb                      MOV ECX,EBX
006bee71  e8caf9ffff                CALL 0x006be840
006bee76  f30f104d0c                MOVSS XMM1,dword ptr [EBP + 0xc]
006bee7b  0f57f6                    XORPS XMM6,XMM6
006bee7e  f30f10ab3c030000          MOVSS XMM5,dword ptr [EBX + 0x33c]
006bee86  f30f10a340030000          MOVSS XMM4,dword ptr [EBX + 0x340]
006bee8e  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
006bee96  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
006bee9e  f30f5cc5                  SUBSS XMM0,XMM5
006beea2  0f2ece                    UCOMISS XMM1,XMM6
006beea5  f30f5cd4                  SUBSS XMM2,XMM4
006beea9  f30f116c240c              MOVSS dword ptr [ESP + 0xc],XMM5
006beeaf  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
006beeb5  9f                        LAHF
006beeb6  f30f11642410              MOVSS dword ptr [ESP + 0x10],XMM4
006beebc  f30f11542420              MOVSS dword ptr [ESP + 0x20],XMM2
006beec2  f6c444                    TEST AH,0x44
006beec5  7b5c                      JNP 0x006bef23
006beec7  0f28da                    MOVAPS XMM3,XMM2
006beeca  0f28c8                    MOVAPS XMM1,XMM0
006beecd  f30f59da                  MULSS XMM3,XMM2
006beed1  f30f59c8                  MULSS XMM1,XMM0
006beed5  f30f58d9                  ADDSS XMM3,XMM1
006beed9  0f2ede                    UCOMISS XMM3,XMM6
006beedc  9f                        LAHF
006beedd  f6c444                    TEST AH,0x44
006beee0  7b41                      JNP 0x006bef23
006beee2  0f28c3                    MOVAPS XMM0,XMM3
006beee5  e8666bd7ff                CALL 0x00435a50
006beeea  f30f10542420              MOVSS XMM2,dword ptr [ESP + 0x20]
006beef0  0f57c9                    XORPS XMM1,XMM1
006beef3  0f2fc1                    COMISS XMM0,XMM1
006beef6  f30f10642410              MOVSS XMM4,dword ptr [ESP + 0x10]
006beefc  f30f106c240c              MOVSS XMM5,dword ptr [ESP + 0xc]
006bef02  7619                      JBE 0x006bef1d
006bef04  f30f104d0c                MOVSS XMM1,dword ptr [EBP + 0xc]
006bef09  f30f5ec8                  DIVSS XMM1,XMM0
006bef0d  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
006bef13  f30f59c1                  MULSS XMM0,XMM1
006bef17  f30f59d1                  MULSS XMM2,XMM1
006bef1b  eb06                      JMP 0x006bef23
006bef1d  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
006bef23  f30f109b70030000          MOVSS XMM3,dword ptr [EBX + 0x370]
006bef2b  f30f5ce8                  SUBSS XMM5,XMM0
006bef2f  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
006bef35  f30f5ce2                  SUBSS XMM4,XMM2
006bef39  83ec0c                    SUB ESP,0xc
006bef3c  8d44242c                  LEA EAX,[ESP + 0x2c]
006bef40  8b8f00830100              MOV ECX,dword ptr [EDI + 0x18300]
006bef46  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
006bef4c  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
006bef52  f30f111c24                MOVSS dword ptr [ESP],XMM3
006bef57  50                        PUSH EAX
006bef58  8d442428                  LEA EAX,[ESP + 0x28]
006bef5c  f30f116c241c              MOVSS dword ptr [ESP + 0x1c],XMM5
006bef62  50                        PUSH EAX
006bef63  f30f116c2434              MOVSS dword ptr [ESP + 0x34],XMM5
006bef69  f30f11642424              MOVSS dword ptr [ESP + 0x24],XMM4
006bef6f  f30f11642438              MOVSS dword ptr [ESP + 0x38],XMM4
006bef75  e8d63f1500                CALL 0x00812f50
006bef7a  f30f10542418              MOVSS XMM2,dword ptr [ESP + 0x18]
006bef80  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
006bef86  0f2ec2                    UCOMISS XMM0,XMM2
006bef89  9f                        LAHF
006bef8a  f6c444                    TEST AH,0x44
006bef8d  7a4a                      JP 0x006befd9
006bef8f  f30f104c241c              MOVSS XMM1,dword ptr [ESP + 0x1c]
006bef95  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
006bef9b  0f2ec1                    UCOMISS XMM0,XMM1
006bef9e  9f                        LAHF
006bef9f  f6c444                    TEST AH,0x44
006befa2  7a35                      JP 0x006befd9
006befa4  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
006befac  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
006befaf  f30f11832c0c0000          MOVSS dword ptr [EBX + 0xc2c],XMM0
006befb7  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
006befbf  f30f1183300c0000          MOVSS dword ptr [EBX + 0xc30],XMM0
006befc7  f30f1110                  MOVSS dword ptr [EAX],XMM2
006befcb  f30f114804                MOVSS dword ptr [EAX + 0x4],XMM1
006befd0  5f                        POP EDI
006befd1  5e                        POP ESI
006befd2  5b                        POP EBX
006befd3  8be5                      MOV ESP,EBP
006befd5  5d                        POP EBP
006befd6  c20800                    RET 0x8
006befd9  6840b6c700                PUSH 0xc7b640
006befde  8d8b2c0c0000              LEA ECX,[EBX + 0xc2c]
006befe4  e817163500                CALL 0x00a10600
006befe9  84c0                      TEST AL,AL
006befeb  754a                      JNZ 0x006bf037
006befed  e86eff0200                CALL 0x006eef60
006beff2  33d2                      XOR EDX,EDX
006beff4  b90f000000                MOV ECX,0xf
006beff9  f7f1                      DIV ECX
006beffb  6a00                      PUSH 0x0
006beffd  8bcb                      MOV ECX,EBX
006befff  8d4205                    LEA EAX,[EDX + 0x5]
006bf002  50                        PUSH EAX
006bf003  e808d7feff                CALL 0x006ac710
006bf008  84c0                      TEST AL,AL
006bf00a  7525                      JNZ 0x006bf031
006bf00c  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
006bf00f  f30f10932c0c0000          MOVSS XMM2,dword ptr [EBX + 0xc2c]
006bf017  f30f108b300c0000          MOVSS XMM1,dword ptr [EBX + 0xc30]
006bf01f  f30f1110                  MOVSS dword ptr [EAX],XMM2
006bf023  f30f114804                MOVSS dword ptr [EAX + 0x4],XMM1
006bf028  5f                        POP EDI
006bf029  5e                        POP ESI
006bf02a  5b                        POP EBX
006bf02b  8be5                      MOV ESP,EBP
006bf02d  5d                        POP EBP
006bf02e  c20800                    RET 0x8
006bf031  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
006bf037  f30f108370030000          MOVSS XMM0,dword ptr [EBX + 0x370]
006bf03f  8d442410                  LEA EAX,[ESP + 0x10]
006bf043  8bbf00830100              MOV EDI,dword ptr [EDI + 0x18300]
006bf049  50                        PUSH EAX
006bf04a  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
006bf050  e81b00fcff                CALL 0x0067f070
006bf055  83c404                    ADD ESP,0x4
006bf058  8bf0                      MOV ESI,EAX
006bf05a  e801ff0200                CALL 0x006eef60
006bf05f  83ec0c                    SUB ESP,0xc
006bf062  8bcf                      MOV ECX,EDI
006bf064  660f6ec0                  MOVD XMM0,EAX
006bf068  f30fe6c0                  CVTDQ2PD XMM0,XMM0
006bf06c  c1e81f                    SHR EAX,0x1f
006bf06f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
006bf078  8d442424                  LEA EAX,[ESP + 0x24]
006bf07c  660f5ad0                  CVTPD2PS XMM2,XMM0
006bf080  f30f10833c030000          MOVSS XMM0,dword ptr [EBX + 0x33c]
006bf088  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
006bf090  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
006bf098  0f28ca                    MOVAPS XMM1,XMM2
006bf09b  f30f595604                MULSS XMM2,dword ptr [ESI + 0x4]
006bf0a0  f30f590e                  MULSS XMM1,dword ptr [ESI]
006bf0a4  f30f5cc1                  SUBSS XMM0,XMM1
006bf0a8  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
006bf0ae  f30f108340030000          MOVSS XMM0,dword ptr [EBX + 0x340]
006bf0b6  f30f5cc2                  SUBSS XMM0,XMM2
006bf0ba  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
006bf0c0  f30f1044242c              MOVSS XMM0,dword ptr [ESP + 0x2c]
006bf0c6  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
006bf0cc  0f28d8                    MOVAPS XMM3,XMM0
006bf0cf  f30f11442404              MOVSS dword ptr [ESP + 0x4],XMM0
006bf0d5  f30f110424                MOVSS dword ptr [ESP],XMM0
006bf0da  50                        PUSH EAX
006bf0db  8d442430                  LEA EAX,[ESP + 0x30]
006bf0df  50                        PUSH EAX
006bf0e0  e86b3e1500                CALL 0x00812f50
006bf0e5  8b4508                    MOV EAX,dword ptr [EBP + 0x8]
006bf0e8  f30f10542420              MOVSS XMM2,dword ptr [ESP + 0x20]
006bf0ee  f30f104c2424              MOVSS XMM1,dword ptr [ESP + 0x24]
006bf0f4  5f                        POP EDI
006bf0f5  5e                        POP ESI
006bf0f6  f30f11932c0c0000          MOVSS dword ptr [EBX + 0xc2c],XMM2
006bf0fe  f30f118b300c0000          MOVSS dword ptr [EBX + 0xc30],XMM1
006bf106  f30f1110                  MOVSS dword ptr [EAX],XMM2
006bf10a  f30f114804                MOVSS dword ptr [EAX + 0x4],XMM1
006bf10f  5b                        POP EBX
006bf110  8be5                      MOV ESP,EBP
006bf112  5d                        POP EBP
006bf113  c20800                    RET 0x8
