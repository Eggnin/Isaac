; J460 NPC AI 0x0055fb60 AI_0055fb60
; types=812
; identities=812.0.0,812.1.0
; entry=0055fb60
0055fb60  53                        PUSH EBX
0055fb61  8bdc                      MOV EBX,ESP
0055fb63  83ec08                    SUB ESP,0x8
0055fb66  83e4f8                    AND ESP,0xfffffff8
0055fb69  83c404                    ADD ESP,0x4
0055fb6c  55                        PUSH EBP
0055fb6d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0055fb70  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0055fb74  8bec                      MOV EBP,ESP
0055fb76  81ecd8000000              SUB ESP,0xd8
0055fb7c  a1b493bf00                MOV EAX,[0x00bf93b4]
0055fb81  33c5                      XOR EAX,EBP
0055fb83  8945fc                    MOV dword ptr [EBP + -0x4],EAX
0055fb86  56                        PUSH ESI
0055fb87  8bf1                      MOV ESI,ECX
0055fb89  57                        PUSH EDI
0055fb8a  f30f1086b00b0000          MOVSS XMM0,dword ptr [ESI + 0xbb0]
0055fb92  f30f5805b4a9ba00          ADDSS XMM0,dword ptr [0x00baa9b4]
0055fb9a  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0055fba2  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0055fbaa  e891d9ebff                CALL 0x0041d540
0055fbaf  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0055fbb7  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
0055fbbf  e85cd9ebff                CALL 0x0041d520
0055fbc4  a17816c700                MOV EAX,[0x00c71678]
0055fbc9  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0055fbd1  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0055fbd7  8bb8181d0000              MOV EDI,dword ptr [EAX + 0x1d18]
0055fbdd  e8ce9f1500                CALL 0x006b9bb0
0055fbe2  898530ffffff              MOV dword ptr [EBP + 0xffffff30],EAX
0055fbe8  83ff1f                    CMP EDI,0x1f
0055fbeb  7416                      JZ 0x0055fc03
0055fbed  83ff06                    CMP EDI,0x6
0055fbf0  7411                      JZ 0x0055fc03
0055fbf2  83f81b                    CMP EAX,0x1b
0055fbf5  740c                      JZ 0x0055fc03
0055fbf7  c6854bffffff00            MOV byte ptr [EBP + 0xffffff4b],0x0
0055fbfe  83f81c                    CMP EAX,0x1c
0055fc01  7507                      JNZ 0x0055fc0a
0055fc03  c6854bffffff01            MOV byte ptr [EBP + 0xffffff4b],0x1
0055fc0a  f30f104614                MOVSS XMM0,dword ptr [ESI + 0x14]
0055fc0f  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0055fc16  0f86ac010000              JBE 0x0055fdc8
0055fc1c  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
0055fc1f  3b460c                    CMP EAX,dword ptr [ESI + 0xc]
0055fc22  0f848e000000              JZ 0x0055fcb6
0055fc28  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
0055fc2b  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
0055fc33  f30f109640030000          MOVSS XMM2,dword ptr [ESI + 0x340]
0055fc3b  f30f5c48e8                SUBSS XMM1,dword ptr [EAX + -0x18]
0055fc40  f30f5c50ec                SUBSS XMM2,dword ptr [EAX + -0x14]
0055fc45  0f28c1                    MOVAPS XMM0,XMM1
0055fc48  f30f118d44ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM1
0055fc50  f30f59c1                  MULSS XMM0,XMM1
0055fc54  0f28ca                    MOVAPS XMM1,XMM2
0055fc57  f30f59ca                  MULSS XMM1,XMM2
0055fc5b  f30f11954cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM2
0055fc63  f30f58c1                  ADDSS XMM0,XMM1
0055fc67  e8e45dedff                CALL 0x00435a50
0055fc6c  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0055fc73  f30f109544ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff44]
0055fc7b  7621                      JBE 0x0055fc9e
0055fc7d  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0055fc85  f30f5ec8                  DIVSS XMM1,XMM0
0055fc89  0f28c1                    MOVAPS XMM0,XMM1
0055fc8c  f30f59d0                  MULSS XMM2,XMM0
0055fc90  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
0055fc98  f30f59c1                  MULSS XMM0,XMM1
0055fc9c  eb08                      JMP 0x0055fca6
0055fc9e  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
0055fca6  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
0055fcae  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
0055fcb6  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
0055fcbe  f30f109e60030000          MOVSS XMM3,dword ptr [ESI + 0x360]
0055fcc6  0f28c2                    MOVAPS XMM0,XMM2
0055fcc9  0f28cb                    MOVAPS XMM1,XMM3
0055fccc  f30f59c2                  MULSS XMM0,XMM2
0055fcd0  f30f59cb                  MULSS XMM1,XMM3
0055fcd4  f30f11954cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM2
0055fcdc  f30f58c8                  ADDSS XMM1,XMM0
0055fce0  f30f100504a0ba00          MOVSS XMM0,dword ptr [0x00baa004]
0055fce8  0f2fc1                    COMISS XMM0,XMM1
0055fceb  7679                      JBE 0x0055fd66
0055fced  e86ef21800                CALL 0x006eef60
0055fcf2  660f6ec0                  MOVD XMM0,EAX
0055fcf6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0055fcfa  c1e81f                    SHR EAX,0x1f
0055fcfd  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0055fd06  660f5ac0                  CVTPD2PS XMM0,XMM0
0055fd0a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0055fd12  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0055fd1a  f30f58c0                  ADDSS XMM0,XMM0
0055fd1e  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
0055fd26  e815d8ebff                CALL 0x0041d540
0055fd2b  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
0055fd33  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
0055fd3b  e8e0d7ebff                CALL 0x0041d520
0055fd40  0f28d0                    MOVAPS XMM2,XMM0
0055fd43  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
0055fd4b  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
0055fd53  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0055fd5b  0f28d8                    MOVAPS XMM3,XMM0
0055fd5e  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
0055fd66  0f28c2                    MOVAPS XMM0,XMM2
0055fd69  0f28cb                    MOVAPS XMM1,XMM3
0055fd6c  f30f59c2                  MULSS XMM0,XMM2
0055fd70  f30f59cb                  MULSS XMM1,XMM3
0055fd74  f30f58c1                  ADDSS XMM0,XMM1
0055fd78  e8d35cedff                CALL 0x00435a50
0055fd7d  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
0055fd85  0f2fc8                    COMISS XMM1,XMM0
0055fd88  7634                      JBE 0x0055fdbe
0055fd8a  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0055fd91  762b                      JBE 0x0055fdbe
0055fd93  f30f5ec8                  DIVSS XMM1,XMM0
0055fd97  0f28c1                    MOVAPS XMM0,XMM1
0055fd9a  f30f598660030000          MULSS XMM0,dword ptr [ESI + 0x360]
0055fda2  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0055fdaa  f30f10854cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff4c]
0055fdb2  f30f59c1                  MULSS XMM0,XMM1
0055fdb6  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
0055fdbe  c786100400000f000000      MOV dword ptr [ESI + 0x410],0xf
0055fdc8  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
0055fdce  85c0                      TEST EAX,EAX
0055fdd0  752d                      JNZ 0x0055fdff
0055fdd2  c7868401000006000000      MOV dword ptr [ESI + 0x184],0x6
0055fddc  c786640b000010000000      MOV dword ptr [ESI + 0xb64],0x10
0055fde6  8986b00b0000              MOV dword ptr [ESI + 0xbb0],EAX
0055fdec  5f                        POP EDI
0055fded  5e                        POP ESI
0055fdee  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0055fdf1  33cd                      XOR ECX,EBP
0055fdf3  e833f35800                CALL 0x00aef12b
0055fdf8  8be5                      MOV ESP,EBP
0055fdfa  5d                        POP EBP
0055fdfb  8be3                      MOV ESP,EBX
0055fdfd  5b                        POP EBX
0055fdfe  c3                        RET
0055fdff  83f810                    CMP EAX,0x10
0055fe02  754d                      JNZ 0x0055fe51
0055fe04  6a00                      PUSH 0x0
0055fe06  68a817b600                PUSH 0xb617a8
0055fe0b  8d4e48                    LEA ECX,[ESI + 0x48]
0055fe0e  e86da5eaff                CALL 0x0040a380
0055fe13  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
0055fe17  741b                      JZ 0x0055fe34
0055fe19  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
0055fe20  7412                      JZ 0x0055fe34
0055fe22  f30f104614                MOVSS XMM0,dword ptr [ESI + 0x14]
0055fe27  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0055fe2e  0f861e070000              JBE 0x00560552
0055fe34  c786640b000003000000      MOV dword ptr [ESI + 0xb64],0x3
0055fe3e  5f                        POP EDI
0055fe3f  5e                        POP ESI
0055fe40  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
0055fe43  33cd                      XOR ECX,EBP
0055fe45  e8e1f25800                CALL 0x00aef12b
0055fe4a  8be5                      MOV ESP,EBP
0055fe4c  5d                        POP EBP
0055fe4d  8be3                      MOV ESP,EBX
0055fe4f  5b                        POP EBX
0055fe50  c3                        RET
0055fe51  83f803                    CMP EAX,0x3
0055fe54  0f85f8060000              JNZ 0x00560552
0055fe5a  f30f1086b00b0000          MOVSS XMM0,dword ptr [ESI + 0xbb0]
0055fe62  f30f101d78aaba00          MOVSS XMM3,dword ptr [0x00baaa78]
0055fe6a  f30f101530abba00          MOVSS XMM2,dword ptr [0x00baab30]
0055fe72  f30f5cc3                  SUBSS XMM0,XMM3
0055fe76  0f28c8                    MOVAPS XMM1,XMM0
0055fe79  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0055fe80  0f2fca                    COMISS XMM1,XMM2
0055fe83  7618                      JBE 0x0055fe9d
0055fe85  0f28ca                    MOVAPS XMM1,XMM2
0055fe88  e8939ef3ff                CALL 0x00499d20
0055fe8d  f30f101530abba00          MOVSS XMM2,dword ptr [0x00baab30]
0055fe95  f30f101d78aaba00          MOVSS XMM3,dword ptr [0x00baaa78]
0055fe9d  0f2fc3                    COMISS XMM0,XMM3
0055fea0  7606                      JBE 0x0055fea8
0055fea2  f30f5cc2                  SUBSS XMM0,XMM2
0055fea6  eb11                      JMP 0x0055feb9
0055fea8  f30f100d7caeba00          MOVSS XMM1,dword ptr [0x00baae7c]
0055feb0  0f2fc8                    COMISS XMM1,XMM0
0055feb3  7604                      JBE 0x0055feb9
0055feb5  f30f58c2                  ADDSS XMM0,XMM2
0055feb9  f30f58c3                  ADDSS XMM0,XMM3
0055febd  83ec08                    SUB ESP,0x8
0055fec0  f30f590534a8ba00          MULSS XMM0,dword ptr [0x00baa834]
0055fec8  f30f5ec2                  DIVSS XMM0,XMM2
0055fecc  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
0055fed4  d9854cffffff              FLD dword ptr [EBP + 0xffffff4c]
0055feda  dd1c24                    FSTP qword ptr [ESP]
0055fedd  e8350a5900                CALL 0x00af0917
0055fee2  d99d4cffffff              FSTP dword ptr [EBP + 0xffffff4c]
0055fee8  d9854cffffff              FLD dword ptr [EBP + 0xffffff4c]
0055feee  33c0                      XOR EAX,EAX
0055fef0  d99d4cffffff              FSTP dword ptr [EBP + 0xffffff4c]
0055fef6  f30f2c8d4cffffff          CVTTSS2SI ECX,dword ptr [EBP + 0xffffff4c]
0055fefe  83c408                    ADD ESP,0x8
0055ff01  50                        PUSH EAX
0055ff02  85c9                      TEST ECX,ECX
0055ff04  0f48c8                    CMOVS ECX,EAX
0055ff07  b8abaaaa2a                MOV EAX,0x2aaaaaab
0055ff0c  f7e9                      IMUL ECX
0055ff0e  d1fa                      SAR EDX,0x1
0055ff10  8bc2                      MOV EAX,EDX
0055ff12  c1e81f                    SHR EAX,0x1f
0055ff15  03c2                      ADD EAX,EDX
0055ff17  8d0440                    LEA EAX,[EAX + EAX*0x2]
0055ff1a  c1e002                    SHL EAX,0x2
0055ff1d  2bc8                      SUB ECX,EAX
0055ff1f  ff348dd818b600            PUSH dword ptr [ECX*0x4 + 0xb618d8]
0055ff26  8d4e48                    LEA ECX,[ESI + 0x48]
0055ff29  e852a4eaff                CALL 0x0040a380
0055ff2e  f30f104614                MOVSS XMM0,dword ptr [ESI + 0x14]
0055ff33  0f57c9                    XORPS XMM1,XMM1
0055ff36  0f2fc1                    COMISS XMM0,XMM1
0055ff39  7648                      JBE 0x0055ff83
0055ff3b  e820f01800                CALL 0x006eef60
0055ff40  33d2                      XOR EDX,EDX
0055ff42  b903000000                MOV ECX,0x3
0055ff47  f7f1                      DIV ECX
0055ff49  85d2                      TEST EDX,EDX
0055ff4b  7536                      JNZ 0x0055ff83
0055ff4d  837e2c01                  CMP dword ptr [ESI + 0x2c],0x1
0055ff51  750a                      JNZ 0x0055ff5d
0055ff53  f30f1005c4a3ba00          MOVSS XMM0,dword ptr [0x00baa3c4]
0055ff5b  eb08                      JMP 0x0055ff65
0055ff5d  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0055ff65  51                        PUSH ECX
0055ff66  f30f110424                MOVSS dword ptr [ESP],XMM0
0055ff6b  6a00                      PUSH 0x0
0055ff6d  6a0a                      PUSH 0xa
0055ff6f  51                        PUSH ECX
0055ff70  c704240000803f            MOV dword ptr [ESP],0x3f800000
0055ff77  8bce                      MOV ECX,ESI
0055ff79  6892000000                PUSH 0x92
0055ff7e  e81d6c1700                CALL 0x006d6ba0
0055ff83  837e2c01                  CMP dword ptr [ESI + 0x2c],0x1
0055ff87  0f85a3010000              JNZ 0x00560130
0055ff8d  83be1004000000            CMP dword ptr [ESI + 0x410],0x0
0055ff94  0f8f96010000              JG 0x00560130
0055ff9a  51                        PUSH ECX
0055ff9b  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
0055ffa1  c7042400000000            MOV dword ptr [ESP],0x0
0055ffa8  50                        PUSH EAX
0055ffa9  8bce                      MOV ECX,ESI
0055ffab  e890ec1500                CALL 0x006bec40
0055ffb0  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
0055ffb7  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0055ffbb  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0055ffc0  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0055ffc8  f30f5c9640030000          SUBSS XMM2,dword ptr [ESI + 0x340]
0055ffd0  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
0055ffd8  f30f119544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM2
0055ffe0  742a                      JZ 0x0056000c
0055ffe2  8d852cffffff              LEA EAX,[EBP + 0xffffff2c]
0055ffe8  0f57d2                    XORPS XMM2,XMM2
0055ffeb  50                        PUSH EAX
0055ffec  8bce                      MOV ECX,ESI
0055ffee  e8dd821700                CALL 0x006d82d0
0055fff3  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0055fff7  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0055fffc  f30f118d4cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM1
00560004  f30f119544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM2
0056000c  0f28c1                    MOVAPS XMM0,XMM1
0056000f  f30f59c1                  MULSS XMM0,XMM1
00560013  0f28ca                    MOVAPS XMM1,XMM2
00560016  f30f59ca                  MULSS XMM1,XMM2
0056001a  f30f58c1                  ADDSS XMM0,XMM1
0056001e  e82d5aedff                CALL 0x00435a50
00560023  0f28d0                    MOVAPS XMM2,XMM0
00560026  0f57c0                    XORPS XMM0,XMM0
00560029  0f2fd0                    COMISS XMM2,XMM0
0056002c  0f86b5000000              JBE 0x005600e7
00560032  f30f100d98a1ba00          MOVSS XMM1,dword ptr [0x00baa198]
0056003a  f30f5eca                  DIVSS XMM1,XMM2
0056003e  f30f10966c030000          MOVSS XMM2,dword ptr [ESI + 0x36c]
00560046  f30f109d4cffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff4c]
0056004e  f30f10a544ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff44]
00560056  0f2ed0                    UCOMISS XMM2,XMM0
00560059  f30f59d9                  MULSS XMM3,XMM1
0056005d  9f                        LAHF
0056005e  f30f59e1                  MULSS XMM4,XMM1
00560062  f6c444                    TEST AH,0x44
00560065  7b3b                      JNP 0x005600a2
00560067  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
0056006f  0f28c1                    MOVAPS XMM0,XMM1
00560072  f30f59cc                  MULSS XMM1,XMM4
00560076  f30f59c3                  MULSS XMM0,XMM3
0056007a  f30f5eca                  DIVSS XMM1,XMM2
0056007e  f30f5ec2                  DIVSS XMM0,XMM2
00560082  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
0056008a  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
00560092  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0056009a  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
005600a2  f30f591d80a2ba00          MULSS XMM3,dword ptr [0x00baa280]
005600aa  f30f592580a2ba00          MULSS XMM4,dword ptr [0x00baa280]
005600b2  f30f108d34ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff34]
005600ba  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
005600c2  f30f58cb                  ADDSS XMM1,XMM3
005600c6  f30f58c4                  ADDSS XMM0,XMM4
005600ca  e8919cf3ff                CALL 0x00499d60
005600cf  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
005600d7  f30f5c05b4a9ba00          SUBSS XMM0,dword ptr [0x00baa9b4]
005600df  f30f1186b00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM0
005600e7  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
005600ef  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
005600f7  f30f59c0                  MULSS XMM0,XMM0
005600fb  f30f59c9                  MULSS XMM1,XMM1
005600ff  f30f58c1                  ADDSS XMM0,XMM1
00560103  e84859edff                CALL 0x00435a50
00560108  0f2f05e8a7ba00            COMISS XMM0,dword ptr [0x00baa7e8]
0056010f  760a                      JBE 0x0056011b
00560111  c786100400000f000000      MOV dword ptr [ESI + 0x410],0xf
0056011b  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
00560123  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0056012b  e996030000                JMP 0x005604c6
00560130  83be1c0f0000ff            CMP dword ptr [ESI + 0xf1c],-0x1
00560137  0f8437010000              JZ 0x00560274
0056013d  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00560143  0f57d2                    XORPS XMM2,XMM2
00560146  50                        PUSH EAX
00560147  8bce                      MOV ECX,ESI
00560149  e882811700                CALL 0x006d82d0
0056014e  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00560156  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0056015d  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
00560165  9f                        LAHF
00560166  f6c444                    TEST AH,0x44
00560169  7a11                      JP 0x0056017c
0056016b  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00560172  9f                        LAHF
00560173  f6c444                    TEST AH,0x44
00560176  0f8bf8000000              JNP 0x00560274
0056017c  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
00560184  f30f109664030000          MOVSS XMM2,dword ptr [ESI + 0x364]
0056018c  0f28c1                    MOVAPS XMM0,XMM1
0056018f  f30f59c1                  MULSS XMM0,XMM1
00560193  0f28ca                    MOVAPS XMM1,XMM2
00560196  f30f59ca                  MULSS XMM1,XMM2
0056019a  f30f58c1                  ADDSS XMM0,XMM1
0056019e  e8ad58edff                CALL 0x00435a50
005601a3  f30f5e0538a4ba00          DIVSS XMM0,dword ptr [0x00baa438]
005601ab  f30f109d40ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff40]
005601b3  f30f10a53cffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff3c]
005601bb  f30f592598a1ba00          MULSS XMM4,dword ptr [0x00baa198]
005601c3  f30f591d98a1ba00          MULSS XMM3,dword ptr [0x00baa198]
005601cb  f30f10969c030000          MOVSS XMM2,dword ptr [ESI + 0x39c]
005601d3  f30f5f0554a4ba00          MAXSS XMM0,dword ptr [0x00baa454]
005601db  f30f59e2                  MULSS XMM4,XMM2
005601df  f30f59da                  MULSS XMM3,XMM2
005601e3  f30f58a660030000          ADDSS XMM4,dword ptr [ESI + 0x360]
005601eb  f30f11854cffffff          MOVSS dword ptr [EBP + 0xffffff4c],XMM0
005601f3  f30f589e64030000          ADDSS XMM3,dword ptr [ESI + 0x364]
005601fb  0f28cc                    MOVAPS XMM1,XMM4
005601fe  f30f11a544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM4
00560206  f30f59cc                  MULSS XMM1,XMM4
0056020a  0f28c3                    MOVAPS XMM0,XMM3
0056020d  f30f119d40ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM3
00560215  f30f59c3                  MULSS XMM0,XMM3
00560219  f30f11a660030000          MOVSS dword ptr [ESI + 0x360],XMM4
00560221  f30f119e64030000          MOVSS dword ptr [ESI + 0x364],XMM3
00560229  f30f58c1                  ADDSS XMM0,XMM1
0056022d  e81e58edff                CALL 0x00435a50
00560232  f30f108d4cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff4c]
0056023a  0f2fc1                    COMISS XMM0,XMM1
0056023d  7635                      JBE 0x00560274
0056023f  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00560246  762c                      JBE 0x00560274
00560248  f30f5ec8                  DIVSS XMM1,XMM0
0056024c  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
00560254  f30f59c1                  MULSS XMM0,XMM1
00560258  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
00560260  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
00560268  f30f59c1                  MULSS XMM0,XMM1
0056026c  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
00560274  f30f108e60030000          MOVSS XMM1,dword ptr [ESI + 0x360]
0056027c  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
00560284  0f28d1                    MOVAPS XMM2,XMM1
00560287  f30f59d1                  MULSS XMM2,XMM1
0056028b  f30f59c0                  MULSS XMM0,XMM0
0056028f  f30f119540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM2
00560297  f30f58c2                  ADDSS XMM0,XMM2
0056029b  e8b057edff                CALL 0x00435a50
005602a0  0f57c9                    XORPS XMM1,XMM1
005602a3  f30f58c0                  ADDSS XMM0,XMM0
005602a7  0f2f8e60030000            COMISS XMM1,dword ptr [ESI + 0x360]
005602ae  7608                      JBE 0x005602b8
005602b0  f30f590550adba00          MULSS XMM0,dword ptr [0x00baad50]
005602b8  f30f5886b00b0000          ADDSS XMM0,dword ptr [ESI + 0xbb0]
005602c0  f30f101530abba00          MOVSS XMM2,dword ptr [0x00baab30]
005602c8  0f28c8                    MOVAPS XMM1,XMM0
005602cb  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
005602d2  0f2fca                    COMISS XMM1,XMM2
005602d5  7610                      JBE 0x005602e7
005602d7  0f28ca                    MOVAPS XMM1,XMM2
005602da  e8419af3ff                CALL 0x00499d20
005602df  f30f101530abba00          MOVSS XMM2,dword ptr [0x00baab30]
005602e7  0f2f0578aaba00            COMISS XMM0,dword ptr [0x00baaa78]
005602ee  7606                      JBE 0x005602f6
005602f0  f30f5cc2                  SUBSS XMM0,XMM2
005602f4  eb11                      JMP 0x00560307
005602f6  f30f100d7caeba00          MOVSS XMM1,dword ptr [0x00baae7c]
005602fe  0f2fc8                    COMISS XMM1,XMM0
00560301  7604                      JBE 0x00560307
00560303  f30f58c2                  ADDSS XMM0,XMM2
00560307  f30f1186b00b0000          MOVSS dword ptr [ESI + 0xbb0],XMM0
0056030f  f30f108664030000          MOVSS XMM0,dword ptr [ESI + 0x364]
00560317  f30f59c0                  MULSS XMM0,XMM0
0056031b  f30f588540ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff40]
00560323  e82857edff                CALL 0x00435a50
00560328  0f28c8                    MOVAPS XMM1,XMM0
0056032b  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00560333  0f2fc1                    COMISS XMM0,XMM1
00560336  7626                      JBE 0x0056035e
00560338  8b9610040000              MOV EDX,dword ptr [ESI + 0x410]
0056033e  85d2                      TEST EDX,EDX
00560340  7e26                      JLE 0x00560368
00560342  f30f2c86a4030000          CVTTSS2SI EAX,dword ptr [ESI + 0x3a4]
0056034a  f30f2c8ea0030000          CVTTSS2SI ECX,dword ptr [ESI + 0x3a0]
00560352  2bc8                      SUB ECX,EAX
00560354  03ca                      ADD ECX,EDX
00560356  898e10040000              MOV dword ptr [ESI + 0x410],ECX
0056035c  eb0a                      JMP 0x00560368
0056035e  c786100400000f000000      MOV dword ptr [ESI + 0x410],0xf
00560368  0f2f0d6ca0ba00            COMISS XMM1,dword ptr [0x00baa06c]
0056036f  0f8639010000              JBE 0x005604ae
00560375  b901000000                MOV ECX,0x1
0056037a  394e2c                    CMP dword ptr [ESI + 0x2c],ECX
0056037d  750a                      JNZ 0x00560389
0056037f  f30f100584a7ba00          MOVSS XMM0,dword ptr [0x00baa784]
00560387  eb08                      JMP 0x00560391
00560389  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
00560391  f30f5ec1                  DIVSS XMM0,XMM1
00560395  f30f2cc0                  CVTTSS2SI EAX,XMM0
00560399  83f801                    CMP EAX,0x1
0056039c  0f4fc8                    CMOVG ECX,EAX
0056039f  660f6ec1                  MOVD XMM0,ECX
005603a3  8b8ec00b0000              MOV ECX,dword ptr [ESI + 0xbc0]
005603a9  0f5bc0                    CVTDQ2PS XMM0,XMM0
005603ac  f30f58c0                  ADDSS XMM0,XMM0
005603b0  f30f2cc0                  CVTTSS2SI EAX,XMM0
005603b4  3bc8                      CMP ECX,EAX
005603b6  0f8eef000000              JLE 0x005604ab
005603bc  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
005603c2  e869ebedff                CALL 0x0043ef30
005603c7  80bd4bffffff00            CMP byte ptr [EBP + 0xffffff4b],0x0
005603ce  7412                      JZ 0x005603e2
005603d0  33c0                      XOR EAX,EAX
005603d2  83bd30ffffff1c            CMP dword ptr [EBP + 0xffffff30],0x1c
005603d9  0f95c0                    SETNZ AL
005603dc  83c003                    ADD EAX,0x3
005603df  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
005603e2  837e2c01                  CMP dword ptr [ESI + 0x2c],0x1
005603e6  c78560ffffff3333333f      MOV dword ptr [EBP + 0xffffff60],0x3f333333
005603f0  7514                      JNZ 0x00560406
005603f2  c7855cffffffcdccccbd      MOV dword ptr [EBP + 0xffffff5c],0xbdcccccd
005603fc  c78564ffffff3333b33f      MOV dword ptr [EBP + 0xffffff64],0x3fb33333
00560406  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
0056040e  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00560414  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0056041c  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
00560424  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
0056042c  e88ffb4a00                CALL 0x00a0ffc0
00560431  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00560439  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
0056043f  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00560447  8d863c030000              LEA EAX,[ESI + 0x33c]
0056044d  51                        PUSH ECX
0056044e  6a00                      PUSH 0x0
00560450  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00560456  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0056045e  f30f108540ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff40]
00560466  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0056046e  51                        PUSH ECX
0056046f  50                        PUSH EAX
00560470  8bce                      MOV ECX,ESI
00560472  f30f118540ffffff          MOVSS dword ptr [EBP + 0xffffff40],XMM0
0056047a  e861ae1600                CALL 0x006cb2e0
0056047f  51                        PUSH ECX
00560480  c704240000803f            MOV dword ptr [ESP],0x3f800000
00560487  6a00                      PUSH 0x0
00560489  6a02                      PUSH 0x2
0056048b  51                        PUSH ECX
0056048c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00560493  8bce                      MOV ECX,ESI
00560495  6899000000                PUSH 0x99
0056049a  e801671700                CALL 0x006d6ba0
0056049f  c786c00b000000000000      MOV dword ptr [ESI + 0xbc0],0x0
005604a9  33c9                      XOR ECX,ECX
005604ab  41                        INC ECX
005604ac  eb02                      JMP 0x005604b0
005604ae  33c9                      XOR ECX,ECX
005604b0  898ec00b0000              MOV dword ptr [ESI + 0xbc0],ECX
005604b6  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
005604be  f30f590538a4ba00          MULSS XMM0,dword ptr [0x00baa438]
005604c6  80bd4bffffff00            CMP byte ptr [EBP + 0xffffff4b],0x0
005604cd  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
005604d5  757b                      JNZ 0x00560552
005604d7  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
005604df  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
005604e7  f30f59c0                  MULSS XMM0,XMM0
005604eb  f30f59c9                  MULSS XMM1,XMM1
005604ef  f30f58c1                  ADDSS XMM0,XMM1
005604f3  e85855edff                CALL 0x00435a50
005604f8  0f2f0530a6ba00            COMISS XMM0,dword ptr [0x00baa630]
005604ff  7651                      JBE 0x00560552
00560501  6a00                      PUSH 0x0
00560503  6a07                      PUSH 0x7
00560505  8bce                      MOV ECX,ESI
00560507  e804c21400                CALL 0x006ac710
0056050c  84c0                      TEST AL,AL
0056050e  7442                      JZ 0x00560552
00560510  e84bea1800                CALL 0x006eef60
00560515  51                        PUSH ECX
00560516  8bce                      MOV ECX,ESI
00560518  660f6ec0                  MOVD XMM0,EAX
0056051c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00560520  c1e81f                    SHR EAX,0x1f
00560523  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0056052c  660f5ac0                  CVTPD2PS XMM0,XMM0
00560530  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00560538  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
00560540  f30f580520a1ba00          ADDSS XMM0,dword ptr [0x00baa120]
00560548  f30f110424                MOVSS dword ptr [ESP],XMM0
0056054d  e87e5f1500                CALL 0x006b64d0
00560552  8b4dfc                    MOV ECX,dword ptr [EBP + -0x4]
00560555  5f                        POP EDI
00560556  33cd                      XOR ECX,EBP
00560558  5e                        POP ESI
00560559  e8cdeb5800                CALL 0x00aef12b
0056055e  8be5                      MOV ESP,EBP
00560560  5d                        POP EBP
00560561  8be3                      MOV ESP,EBX
00560563  5b                        POP EBX
00560564  c3                        RET
