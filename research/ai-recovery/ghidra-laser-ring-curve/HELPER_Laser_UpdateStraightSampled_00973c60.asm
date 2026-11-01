; J460 NPC AI 0x00973c60 HELPER_Laser_UpdateStraightSampled
; types=7
; identities=7.*
; entry=00973c60
00973c60  53                        PUSH EBX
00973c61  8bdc                      MOV EBX,ESP
00973c63  83ec08                    SUB ESP,0x8
00973c66  83e4f8                    AND ESP,0xfffffff8
00973c69  83c404                    ADD ESP,0x4
00973c6c  55                        PUSH EBP
00973c6d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00973c70  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00973c74  8bec                      MOV EBP,ESP
00973c76  6aff                      PUSH -0x1
00973c78  68e8cab000                PUSH 0xb0cae8
00973c7d  64a100000000              MOV EAX,FS:[0x0]
00973c83  50                        PUSH EAX
00973c84  53                        PUSH EBX
00973c85  81ec78020000              SUB ESP,0x278
00973c8b  a1b493bf00                MOV EAX,[0x00bf93b4]
00973c90  33c5                      XOR EAX,EBP
00973c92  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00973c95  56                        PUSH ESI
00973c96  57                        PUSH EDI
00973c97  50                        PUSH EAX
00973c98  8d45f4                    LEA EAX,[EBP + -0xc]
00973c9b  64a300000000              MOV FS:[0x0],EAX
00973ca1  8bf9                      MOV EDI,ECX
00973ca3  89bdc4feffff              MOV dword ptr [EBP + 0xfffffec4],EDI
00973ca9  e8a2fdffff                CALL 0x00973a50
00973cae  8a875c040000              MOV AL,byte ptr [EDI + 0x45c]
00973cb4  84c0                      TEST AL,AL
00973cb6  7508                      JNZ 0x00973cc0
00973cb8  388715050000              CMP byte ptr [EDI + 0x515],AL
00973cbe  750e                      JNZ 0x00973cce
00973cc0  0f108728040000            MOVUPS XMM0,xmmword ptr [EDI + 0x428]
00973cc7  0f118738040000            MOVUPS xmmword ptr [EDI + 0x438],XMM0
00973cce  837f2c07                  CMP dword ptr [EDI + 0x2c],0x7
00973cd2  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00973cda  744b                      JZ 0x00973d27
00973cdc  80bf7501000000            CMP byte ptr [EDI + 0x175],0x0
00973ce3  7542                      JNZ 0x00973d27
00973ce5  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00973cec  7539                      JNZ 0x00973d27
00973cee  84c0                      TEST AL,AL
00973cf0  750e                      JNZ 0x00973d00
00973cf2  0f57d2                    XORPS XMM2,XMM2
00973cf5  8bcf                      MOV ECX,EDI
00973cf7  e8648ad3ff                CALL 0x006ac760
00973cfc  85c0                      TEST EAX,EAX
00973cfe  7427                      JZ 0x00973d27
00973d00  83bf2c05000000            CMP dword ptr [EDI + 0x52c],0x0
00973d07  c6852fffffff01            MOV byte ptr [EBP + 0xffffff2f],0x1
00973d0e  751e                      JNZ 0x00973d2e
00973d10  80bf1505000000            CMP byte ptr [EDI + 0x515],0x0
00973d17  7515                      JNZ 0x00973d2e
00973d19  8b8720050000              MOV EAX,dword ptr [EDI + 0x520]
00973d1f  898724050000              MOV dword ptr [EDI + 0x524],EAX
00973d25  eb07                      JMP 0x00973d2e
00973d27  c6852fffffff00            MOV byte ptr [EBP + 0xffffff2f],0x0
00973d2e  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00973d34  85c0                      TEST EAX,EAX
00973d36  7467                      JZ 0x00973d9f
00973d38  80bfe404000000            CMP byte ptr [EDI + 0x4e4],0x0
00973d3f  755e                      JNZ 0x00973d9f
00973d41  83782801                  CMP dword ptr [EAX + 0x28],0x1
00973d45  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00973d4d  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00973d55  7522                      JNZ 0x00973d79
00973d57  f30f588710040000          ADDSS XMM0,dword ptr [EDI + 0x410]
00973d5f  f30f588f14040000          ADDSS XMM1,dword ptr [EDI + 0x414]
00973d67  f30f58804c160000          ADDSS XMM0,dword ptr [EAX + 0x164c]
00973d6f  f30f588850160000          ADDSS XMM1,dword ptr [EAX + 0x1650]
00973d77  eb16                      JMP 0x00973d8f
00973d79  837f3401                  CMP dword ptr [EDI + 0x34],0x1
00973d7d  7410                      JZ 0x00973d8f
00973d7f  f30f588710040000          ADDSS XMM0,dword ptr [EDI + 0x410]
00973d87  f30f588f14040000          ADDSS XMM1,dword ptr [EDI + 0x414]
00973d8f  f30f118f40030000          MOVSS dword ptr [EDI + 0x340],XMM1
00973d97  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
00973d9f  32c0                      XOR AL,AL
00973da1  c6852effffff00            MOV byte ptr [EBP + 0xffffff2e],0x0
00973da8  88855bffffff              MOV byte ptr [EBP + 0xffffff5b],AL
00973dae  888510ffffff              MOV byte ptr [EBP + 0xffffff10],AL
00973db4  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00973dba  888500ffffff              MOV byte ptr [EBP + 0xffffff00],AL
00973dc0  388775010000              CMP byte ptr [EDI + 0x175],AL
00973dc6  7551                      JNZ 0x00973e19
00973dc8  83bf5804000000            CMP dword ptr [EDI + 0x458],0x0
00973dcf  7448                      JZ 0x00973e19
00973dd1  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
00973dd4  83fa06                    CMP EDX,0x6
00973dd7  7433                      JZ 0x00973e0c
00973dd9  83fa0f                    CMP EDX,0xf
00973ddc  742e                      JZ 0x00973e0c
00973dde  83fa0b                    CMP EDX,0xb
00973de1  7405                      JZ 0x00973de8
00973de3  83fa0e                    CMP EDX,0xe
00973de6  751b                      JNZ 0x00973e03
00973de8  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00973dee  8b81f8640200              MOV EAX,dword ptr [ECX + 0x264f8]
00973df4  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
00973dfa  83f801                    CMP EAX,0x1
00973dfd  7504                      JNZ 0x00973e03
00973dff  6a0a                      PUSH 0xa
00973e01  eb11                      JMP 0x00973e14
00973e03  83fa0d                    CMP EDX,0xd
00973e06  7511                      JNZ 0x00973e19
00973e08  6a0a                      PUSH 0xa
00973e0a  eb02                      JMP 0x00973e0e
00973e0c  6a04                      PUSH 0x4
00973e0e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00973e14  e857f8d8ff                CALL 0x00703670
00973e19  80bfc004000000            CMP byte ptr [EDI + 0x4c0],0x0
00973e20  f30f101dd0a2ba00          MOVSS XMM3,dword ptr [0x00baa2d0]
00973e28  f30f1015b4a9ba00          MOVSS XMM2,dword ptr [0x00baa9b4]
00973e30  0f841a010000              JZ 0x00973f50
00973e36  8b87c4040000              MOV EAX,dword ptr [EDI + 0x4c4]
00973e3c  85c0                      TEST EAX,EAX
00973e3e  0f8505010000              JNZ 0x00973f49
00973e44  f30f108fc8040000          MOVSS XMM1,dword ptr [EDI + 0x4c8]
00973e4c  8d8fc8040000              LEA ECX,[EDI + 0x4c8]
00973e52  0f57c0                    XORPS XMM0,XMM0
00973e55  0f2fc1                    COMISS XMM0,XMM1
00973e58  0f97c0                    SETA AL
00973e5b  84c0                      TEST AL,AL
00973e5d  7477                      JZ 0x00973ed6
00973e5f  0f2fc1                    COMISS XMM0,XMM1
00973e62  7660                      JBE 0x00973ec4
00973e64  f30f1087cc040000          MOVSS XMM0,dword ptr [EDI + 0x4cc]
00973e6c  8d8554ffffff              LEA EAX,[EBP + 0xffffff54]
00973e72  f30f59c3                  MULSS XMM0,XMM3
00973e76  0f2fc8                    COMISS XMM1,XMM0
00973e79  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00973e81  0f47c1                    CMOVA EAX,ECX
00973e84  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00973e88  f30f5cc8                  SUBSS XMM1,XMM0
00973e8c  f30f58871c040000          ADDSS XMM0,dword ptr [EDI + 0x41c]
00973e94  f30f118d5cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM1
00973e9c  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
00973ea4  f30f5cc2                  SUBSS XMM0,XMM2
00973ea8  f30f1109                  MOVSS dword ptr [ECX],XMM1
00973eac  e88fe8d0ff                CALL 0x00682740
00973eb1  f30f108d5cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff5c]
00973eb9  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
00973ec1  0f57c0                    XORPS XMM0,XMM0
00973ec4  0f2fc8                    COMISS XMM1,XMM0
00973ec7  0f8283000000              JC 0x00973f50
00973ecd  c687c004000000            MOV byte ptr [EDI + 0x4c0],0x0
00973ed4  eb7a                      JMP 0x00973f50
00973ed6  0f2fc8                    COMISS XMM1,XMM0
00973ed9  7660                      JBE 0x00973f3b
00973edb  f30f1087cc040000          MOVSS XMM0,dword ptr [EDI + 0x4cc]
00973ee3  8d8554ffffff              LEA EAX,[EBP + 0xffffff54]
00973ee9  f30f59c3                  MULSS XMM0,XMM3
00973eed  0f2fc1                    COMISS XMM0,XMM1
00973ef0  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00973ef8  0f47c1                    CMOVA EAX,ECX
00973efb  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00973eff  f30f5cc8                  SUBSS XMM1,XMM0
00973f03  f30f58871c040000          ADDSS XMM0,dword ptr [EDI + 0x41c]
00973f0b  f30f118d5cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM1
00973f13  f30f11871c040000          MOVSS dword ptr [EDI + 0x41c],XMM0
00973f1b  f30f5cc2                  SUBSS XMM0,XMM2
00973f1f  f30f1109                  MOVSS dword ptr [ECX],XMM1
00973f23  e818e8d0ff                CALL 0x00682740
00973f28  f30f108d5cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff5c]
00973f30  f30f1187ec000000          MOVSS dword ptr [EDI + 0xec],XMM0
00973f38  0f57c0                    XORPS XMM0,XMM0
00973f3b  0f2fc1                    COMISS XMM0,XMM1
00973f3e  7210                      JC 0x00973f50
00973f40  c687c004000000            MOV byte ptr [EDI + 0x4c0],0x0
00973f47  eb07                      JMP 0x00973f50
00973f49  48                        DEC EAX
00973f4a  8987c4040000              MOV dword ptr [EDI + 0x4c4],EAX
00973f50  80bf5d04000000            CMP byte ptr [EDI + 0x45d],0x0
00973f57  0f8492250000              JZ 0x009764ef
00973f5d  83bfd404000001            CMP dword ptr [EDI + 0x4d4],0x1
00973f64  7409                      JZ 0x00973f6f
00973f66  80bf1505000000            CMP byte ptr [EDI + 0x515],0x0
00973f6d  7415                      JZ 0x00973f84
00973f6f  80bf5c04000000            CMP byte ptr [EDI + 0x45c],0x0
00973f76  750c                      JNZ 0x00973f84
00973f78  c6852effffff00            MOV byte ptr [EBP + 0xffffff2e],0x0
00973f7f  e93f240000                JMP 0x009763c3
00973f84  f30f108f1c040000          MOVSS XMM1,dword ptr [EDI + 0x41c]
00973f8c  0f2e8f20040000            UCOMISS XMM1,dword ptr [EDI + 0x420]
00973f93  c6852effffff01            MOV byte ptr [EBP + 0xffffff2e],0x1
00973f9a  c6871605000000            MOV byte ptr [EDI + 0x516],0x0
00973fa1  0f28c1                    MOVAPS XMM0,XMM1
00973fa4  9f                        LAHF
00973fa5  f6c444                    TEST AH,0x44
00973fa8  7b49                      JNP 0x00973ff3
00973faa  8bcf                      MOV ECX,EDI
00973fac  e87f8effff                CALL 0x0096ce30
00973fb1  84c0                      TEST AL,AL
00973fb3  753e                      JNZ 0x00973ff3
00973fb5  837f2c05                  CMP dword ptr [EDI + 0x2c],0x5
00973fb9  7438                      JZ 0x00973ff3
00973fbb  8b87ac040000              MOV EAX,dword ptr [EDI + 0x4ac]
00973fc1  8987b0040000              MOV dword ptr [EDI + 0x4b0],EAX
00973fc7  8b8780040000              MOV EAX,dword ptr [EDI + 0x480]
00973fcd  898784040000              MOV dword ptr [EDI + 0x484],EAX
00973fd3  8b8798040000              MOV EAX,dword ptr [EDI + 0x498]
00973fd9  89879c040000              MOV dword ptr [EDI + 0x49c],EAX
00973fdf  8b878c040000              MOV EAX,dword ptr [EDI + 0x48c]
00973fe5  898790040000              MOV dword ptr [EDI + 0x490],EAX
00973feb  f30f10871c040000          MOVSS XMM0,dword ptr [EDI + 0x41c]
00973ff3  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00973ffb  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
00974003  e81895aaff                CALL 0x0041d520
00974008  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00974010  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
00974018  e82395aaff                CALL 0x0041d540
0097401d  83bfc800000001            CMP dword ptr [EDI + 0xc8],0x1
00974024  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0097402c  f30f101544b6c700          MOVSS XMM2,dword ptr [0x00c7b644]
00974034  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0097403c  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
00974044  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
0097404c  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
00974054  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
0097405c  7661                      JBE 0x009740bf
0097405e  8d4f78                    LEA ECX,[EDI + 0x78]
00974061  6a00                      PUSH 0x0
00974063  e8b861a9ff                CALL 0x0040a220
00974068  85c0                      TEST EAX,EAX
0097406a  7443                      JZ 0x009740af
0097406c  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
00974071  f30f58400c                ADDSS XMM0,dword ptr [EAX + 0xc]
00974076  f30f109554ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff54]
0097407e  0f28c8                    MOVAPS XMM1,XMM0
00974081  f30f59d0                  MULSS XMM2,XMM0
00974085  f30f598d20ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff20]
0097408d  f30f1087e8000000          MOVSS XMM0,dword ptr [EDI + 0xe8]
00974095  f30f59d0                  MULSS XMM2,XMM0
00974099  f30f59c8                  MULSS XMM1,XMM0
0097409d  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
009740a5  f30f118d08ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM1
009740ad  eb10                      JMP 0x009740bf
009740af  f30f108d08ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff08]
009740b7  f30f109510ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff10]
009740bf  8bb7c8030000              MOV ESI,dword ptr [EDI + 0x3c8]
009740c5  0f28c1                    MOVAPS XMM0,XMM1
009740c8  0f28ca                    MOVAPS XMM1,XMM2
009740cb  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
009740d3  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
009740db  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
009740e3  f30f118d5cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM1
009740eb  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
009740f3  f30f118d48ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM1
009740fb  85f6                      TEST ESI,ESI
009740fd  7406                      JZ 0x00974105
009740ff  837e2801                  CMP dword ptr [ESI + 0x28],0x1
00974103  7402                      JZ 0x00974107
00974105  33f6                      XOR ESI,ESI
00974107  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
0097410d  8bcf                      MOV ECX,EDI
0097410f  50                        PUSH EAX
00974110  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
00974116  50                        PUSH EAX
00974117  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
0097411d  50                        PUSH EAX
0097411e  e84dbbffff                CALL 0x0096fc70
00974123  f30f10ade4feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffee4]
0097412b  0f57ff                    XORPS XMM7,XMM7
0097412e  f30f10b55cffffff          MOVSS XMM6,dword ptr [EBP + 0xffffff5c]
00974136  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0097413a  f30f1197d8040000          MOVSS dword ptr [EDI + 0x4d8],XMM2
00974142  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
00974147  f30f119fdc040000          MOVSS dword ptr [EDI + 0x4dc],XMM3
0097414f  f30f10a7d0040000          MOVSS XMM4,dword ptr [EDI + 0x4d0]
00974157  0f2fe7                    COMISS XMM4,XMM7
0097415a  0f8688000000              JBE 0x009741e8
00974160  0f28c5                    MOVAPS XMM0,XMM5
00974163  0f28ce                    MOVAPS XMM1,XMM6
00974166  f30f5cc2                  SUBSS XMM0,XMM2
0097416a  f30f5ccb                  SUBSS XMM1,XMM3
0097416e  f30f59c0                  MULSS XMM0,XMM0
00974172  f30f59c9                  MULSS XMM1,XMM1
00974176  f30f58c8                  ADDSS XMM1,XMM0
0097417a  0f28c4                    MOVAPS XMM0,XMM4
0097417d  f30f59c4                  MULSS XMM0,XMM4
00974181  0f2fc8                    COMISS XMM1,XMM0
00974184  7662                      JBE 0x009741e8
00974186  f30f5cd5                  SUBSS XMM2,XMM5
0097418a  f30f5cde                  SUBSS XMM3,XMM6
0097418e  51                        PUSH ECX
0097418f  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00974195  f30f112424                MOVSS dword ptr [ESP],XMM4
0097419a  50                        PUSH EAX
0097419b  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
009741a1  f30f119544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM2
009741a9  f30f119d48ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM3
009741b1  e84abf0900                CALL 0x00a10100
009741b6  f30f10ade4feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffee4]
009741be  0f57ff                    XORPS XMM7,XMM7
009741c1  f30f10b55cffffff          MOVSS XMM6,dword ptr [EBP + 0xffffff5c]
009741c9  0f28cd                    MOVAPS XMM1,XMM5
009741cc  0f28c6                    MOVAPS XMM0,XMM6
009741cf  f30f5808                  ADDSS XMM1,dword ptr [EAX]
009741d3  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
009741d8  f30f118fd8040000          MOVSS dword ptr [EDI + 0x4d8],XMM1
009741e0  f30f1187dc040000          MOVSS dword ptr [EDI + 0x4dc],XMM0
009741e8  8b87ac040000              MOV EAX,dword ptr [EDI + 0x4ac]
009741ee  8987b0040000              MOV dword ptr [EDI + 0x4b0],EAX
009741f4  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
009741f7  83f806                    CMP EAX,0x6
009741fa  7409                      JZ 0x00974205
009741fc  83f80f                    CMP EAX,0xf
009741ff  0f850e010000              JNZ 0x00974313
00974205  837f3401                  CMP dword ptr [EDI + 0x34],0x1
00974209  0f8504010000              JNZ 0x00974313
0097420f  f30f1097d8040000          MOVSS XMM2,dword ptr [EDI + 0x4d8]
00974217  f30f108fdc040000          MOVSS XMM1,dword ptr [EDI + 0x4dc]
0097421f  f30f5cd5                  SUBSS XMM2,XMM5
00974223  f30f109d20ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff20]
0097422b  f30f5cce                  SUBSS XMM1,XMM6
0097422f  f30f10a554ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff54]
00974237  f30f591d24a9ba00          MULSS XMM3,dword ptr [0x00baa924]
0097423f  f30f592524a9ba00          MULSS XMM4,dword ptr [0x00baa924]
00974247  f30f5cd3                  SUBSS XMM2,XMM3
0097424b  f30f109d08ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff08]
00974253  f30f5ccc                  SUBSS XMM1,XMM4
00974257  f30f10a510ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff10]
0097425f  f30f59d3                  MULSS XMM2,XMM3
00974263  f30f59cc                  MULSS XMM1,XMM4
00974267  f30f58ca                  ADDSS XMM1,XMM2
0097426b  0f2ff9                    COMISS XMM7,XMM1
0097426e  0f8683010000              JBE 0x009743f7
00974274  0f28c5                    MOVAPS XMM0,XMM5
00974277  0f28cb                    MOVAPS XMM1,XMM3
0097427a  f30f58c3                  ADDSS XMM0,XMM3
0097427e  f30f59cb                  MULSS XMM1,XMM3
00974282  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
0097428a  0f28c6                    MOVAPS XMM0,XMM6
0097428d  f30f58c4                  ADDSS XMM0,XMM4
00974291  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00974299  0f28c4                    MOVAPS XMM0,XMM4
0097429c  f30f59c4                  MULSS XMM0,XMM4
009742a0  f30f58c1                  ADDSS XMM0,XMM1
009742a4  e8a717acff                CALL 0x00435a50
009742a9  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
009742b0  7638                      JBE 0x009742ea
009742b2  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
009742ba  f30f5ec8                  DIVSS XMM1,XMM0
009742be  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
009742c6  0f28d1                    MOVAPS XMM2,XMM1
009742c9  f30f598d10ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff10]
009742d1  f30f599508ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff08]
009742d9  f30f58c2                  ADDSS XMM0,XMM2
009742dd  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
009742e5  e9e9000000                JMP 0x009743d3
009742ea  f30f109508ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff08]
009742f2  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
009742fa  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
00974302  f30f58c2                  ADDSS XMM0,XMM2
00974306  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
0097430e  e9c0000000                JMP 0x009743d3
00974313  f30f108fd8040000          MOVSS XMM1,dword ptr [EDI + 0x4d8]
0097431b  f30f1087dc040000          MOVSS XMM0,dword ptr [EDI + 0x4dc]
00974323  f30f5ccd                  SUBSS XMM1,XMM5
00974327  f30f109d10ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff10]
0097432f  f30f5cc6                  SUBSS XMM0,XMM6
00974333  f30f109508ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff08]
0097433b  f30f59ca                  MULSS XMM1,XMM2
0097433f  f30f59c3                  MULSS XMM0,XMM3
00974343  f30f58c1                  ADDSS XMM0,XMM1
00974347  0f2ff8                    COMISS XMM7,XMM0
0097434a  0f86a7000000              JBE 0x009743f7
00974350  0f28c5                    MOVAPS XMM0,XMM5
00974353  0f28ca                    MOVAPS XMM1,XMM2
00974356  f30f58c2                  ADDSS XMM0,XMM2
0097435a  f30f59ca                  MULSS XMM1,XMM2
0097435e  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00974366  0f28c6                    MOVAPS XMM0,XMM6
00974369  f30f58c3                  ADDSS XMM0,XMM3
0097436d  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00974375  0f28c3                    MOVAPS XMM0,XMM3
00974378  f30f59c3                  MULSS XMM0,XMM3
0097437c  f30f58c1                  ADDSS XMM0,XMM1
00974380  e8cb16acff                CALL 0x00435a50
00974385  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0097438c  7621                      JBE 0x009743af
0097438e  f30f100d20a1ba00          MOVSS XMM1,dword ptr [0x00baa120]
00974396  f30f5ec8                  DIVSS XMM1,XMM0
0097439a  0f28d1                    MOVAPS XMM2,XMM1
0097439d  f30f598d10ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff10]
009743a5  f30f599508ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff08]
009743ad  eb10                      JMP 0x009743bf
009743af  f30f109508ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff08]
009743b7  f30f108d10ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff10]
009743bf  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
009743c7  f30f58c2                  ADDSS XMM0,XMM2
009743cb  f30f109554ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff54]
009743d3  f30f10b55cffffff          MOVSS XMM6,dword ptr [EBP + 0xffffff5c]
009743db  f30f58d1                  ADDSS XMM2,XMM1
009743df  f30f10ade4feffff          MOVSS XMM5,dword ptr [EBP + 0xfffffee4]
009743e7  f30f1197dc040000          MOVSS dword ptr [EDI + 0x4dc],XMM2
009743ef  f30f1187d8040000          MOVSS dword ptr [EDI + 0x4d8],XMM0
009743f7  f30f11af68040000          MOVSS dword ptr [EDI + 0x468],XMM5
009743ff  8d9728040000              LEA EDX,[EDI + 0x428]
00974405  f30f11b76c040000          MOVSS dword ptr [EDI + 0x46c],XMM6
0097440d  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00974413  8b87d8040000              MOV EAX,dword ptr [EDI + 0x4d8]
00974419  898770040000              MOV dword ptr [EDI + 0x470],EAX
0097441f  8b87dc040000              MOV EAX,dword ptr [EDI + 0x4dc]
00974425  68604bc300                PUSH 0xc34b60
0097442a  898774040000              MOV dword ptr [EDI + 0x474],EAX
00974430  e83b2daaff                CALL 0x00417170
00974435  f30f100550a9ba00          MOVSS XMM0,dword ptr [0x00baa950]
0097443d  83c404                    ADD ESP,0x4
00974440  8b08                      MOV ECX,dword ptr [EAX]
00974442  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00974445  7508                      JNZ 0x0097444f
00974447  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097444a  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097444d  7416                      JZ 0x00974465
0097444f  0f28c8                    MOVAPS XMM1,XMM0
00974452  8d8f64040000              LEA ECX,[EDI + 0x464]
00974458  e803b60200                CALL 0x0099fa60
0097445d  f30f100550a9ba00          MOVSS XMM0,dword ptr [0x00baa950]
00974465  686048c300                PUSH 0xc34860
0097446a  8d9728040000              LEA EDX,[EDI + 0x428]
00974470  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00974476  e8f52caaff                CALL 0x00417170
0097447b  f30f101500aaba00          MOVSS XMM2,dword ptr [0x00baaa00]
00974483  83c404                    ADD ESP,0x4
00974486  8b08                      MOV ECX,dword ptr [EAX]
00974488  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097448b  7508                      JNZ 0x00974495
0097448d  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00974490  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00974493  7458                      JZ 0x009744ed
00974495  0f28ca                    MOVAPS XMM1,XMM2
00974498  85f6                      TEST ESI,ESI
0097449a  741a                      JZ 0x009744b6
0097449c  837e2801                  CMP dword ptr [ESI + 0x28],0x1
009744a0  7514                      JNZ 0x009744b6
009744a2  f30f108e64140000          MOVSS XMM1,dword ptr [ESI + 0x1464]
009744aa  f30f5e0d54a5ba00          DIVSS XMM1,dword ptr [0x00baa554]
009744b2  f30f59ca                  MULSS XMM1,XMM2
009744b6  f30f109fd0040000          MOVSS XMM3,dword ptr [EDI + 0x4d0]
009744be  0f28d0                    MOVAPS XMM2,XMM0
009744c1  51                        PUSH ECX
009744c2  8d8f64040000              LEA ECX,[EDI + 0x464]
009744c8  e803ba0200                CALL 0x0099fed0
009744cd  8b8fb0040000              MOV ECX,dword ptr [EDI + 0x4b0]
009744d3  398fac040000              CMP dword ptr [EDI + 0x4ac],ECX
009744d9  7412                      JZ 0x009744ed
009744db  8b41e8                    MOV EAX,dword ptr [ECX + -0x18]
009744de  8987d8040000              MOV dword ptr [EDI + 0x4d8],EAX
009744e4  8b41ec                    MOV EAX,dword ptr [ECX + -0x14]
009744e7  8987dc040000              MOV dword ptr [EDI + 0x4dc],EAX
009744ed  685049c300                PUSH 0xc34950
009744f2  8d9728040000              LEA EDX,[EDI + 0x428]
009744f8  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
009744fe  e86d2caaff                CALL 0x00417170
00974503  83c404                    ADD ESP,0x4
00974506  8b08                      MOV ECX,dword ptr [EAX]
00974508  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097450b  7508                      JNZ 0x00974515
0097450d  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00974510  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00974513  742c                      JZ 0x00974541
00974515  51                        PUSH ECX
00974516  8d8f64040000              LEA ECX,[EDI + 0x464]
0097451c  e89fad0200                CALL 0x0099f2c0
00974521  8b8fb0040000              MOV ECX,dword ptr [EDI + 0x4b0]
00974527  398fac040000              CMP dword ptr [EDI + 0x4ac],ECX
0097452d  7412                      JZ 0x00974541
0097452f  8b41e8                    MOV EAX,dword ptr [ECX + -0x18]
00974532  8987d8040000              MOV dword ptr [EDI + 0x4d8],EAX
00974538  8b41ec                    MOV EAX,dword ptr [ECX + -0x14]
0097453b  8987dc040000              MOV dword ptr [EDI + 0x4dc],EAX
00974541  68a04bc300                PUSH 0xc34ba0
00974546  8d9728040000              LEA EDX,[EDI + 0x428]
0097454c  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00974552  e8192caaff                CALL 0x00417170
00974557  83c404                    ADD ESP,0x4
0097455a  8b08                      MOV ECX,dword ptr [EAX]
0097455c  0b4804                    OR ECX,dword ptr [EAX + 0x4]
0097455f  7527                      JNZ 0x00974588
00974561  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00974564  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00974567  751f                      JNZ 0x00974588
00974569  8b87d4040000              MOV EAX,dword ptr [EDI + 0x4d4]
0097456f  83f801                    CMP EAX,0x1
00974572  7505                      JNZ 0x00974579
00974574  8d4803                    LEA ECX,[EAX + 0x3]
00974577  eb14                      JMP 0x0097458d
00974579  33c9                      XOR ECX,ECX
0097457b  ba05000000                MOV EDX,0x5
00974580  83f802                    CMP EAX,0x2
00974583  0f44ca                    CMOVZ ECX,EDX
00974586  eb05                      JMP 0x0097458d
00974588  b901000000                MOV ECX,0x1
0097458d  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00974593  50                        PUSH EAX
00974594  51                        PUSH ECX
00974595  8d8f64040000              LEA ECX,[EDI + 0x464]
0097459b  e8f0810200                CALL 0x0099c790
009745a0  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
009745a3  83f802                    CMP EAX,0x2
009745a6  743d                      JZ 0x009745e5
009745a8  83f80a                    CMP EAX,0xa
009745ab  7438                      JZ 0x009745e5
009745ad  83bfd404000002            CMP dword ptr [EDI + 0x4d4],0x2
009745b4  750a                      JNZ 0x009745c0
009745b6  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
009745be  eb2d                      JMP 0x009745ed
009745c0  f30f1087d0040000          MOVSS XMM0,dword ptr [EDI + 0x4d0]
009745c8  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
009745cf  760a                      JBE 0x009745db
009745d1  f30f10051ca3ba00          MOVSS XMM0,dword ptr [0x00baa31c]
009745d9  eb12                      JMP 0x009745ed
009745db  f30f1005e0a3ba00          MOVSS XMM0,dword ptr [0x00baa3e0]
009745e3  eb08                      JMP 0x009745ed
009745e5  f30f100554a3ba00          MOVSS XMM0,dword ptr [0x00baa354]
009745ed  0f28c8                    MOVAPS XMM1,XMM0
009745f0  8d8f64040000              LEA ECX,[EDI + 0x464]
009745f6  e8659d0200                CALL 0x0099e360
009745fb  68c048c300                PUSH 0xc348c0
00974600  8d9728040000              LEA EDX,[EDI + 0x428]
00974606  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
0097460c  e85f2baaff                CALL 0x00417170
00974611  83c404                    ADD ESP,0x4
00974614  8b08                      MOV ECX,dword ptr [EAX]
00974616  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00974619  7508                      JNZ 0x00974623
0097461b  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097461e  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00974621  7478                      JZ 0x0097469b
00974623  68604bc300                PUSH 0xc34b60
00974628  8d9728040000              LEA EDX,[EDI + 0x428]
0097462e  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00974634  e8372baaff                CALL 0x00417170
00974639  83c404                    ADD ESP,0x4
0097463c  8b08                      MOV ECX,dword ptr [EAX]
0097463e  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00974641  7558                      JNZ 0x0097469b
00974643  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00974646  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00974649  7550                      JNZ 0x0097469b
0097464b  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
0097464e  660f6ec0                  MOVD XMM0,EAX
00974652  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00974656  c1e81f                    SHR EAX,0x1f
00974659  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00974662  660f5ac0                  CVTPD2PS XMM0,XMM0
00974666  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0097466e  85f6                      TEST ESI,ESI
00974670  740b                      JZ 0x0097467d
00974672  6a1e                      PUSH 0x1e
00974674  8bce                      MOV ECX,ESI
00974676  e8d5e6e4ff                CALL 0x007c2d50
0097467b  eb08                      JMP 0x00974685
0097467d  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00974685  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
0097468d  8d8f64040000              LEA ECX,[EDI + 0x464]
00974693  0f28c8                    MOVAPS XMM1,XMM0
00974696  e805c90200                CALL 0x009a0fa0
0097469b  687048c300                PUSH 0xc34870
009746a0  8d9728040000              LEA EDX,[EDI + 0x428]
009746a6  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
009746ac  e8bf2aaaff                CALL 0x00417170
009746b1  83c404                    ADD ESP,0x4
009746b4  8b08                      MOV ECX,dword ptr [EAX]
009746b6  0b4804                    OR ECX,dword ptr [EAX + 0x4]
009746b9  7508                      JNZ 0x009746c3
009746bb  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
009746be  0b480c                    OR ECX,dword ptr [EAX + 0xc]
009746c1  7450                      JZ 0x00974713
009746c3  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
009746c6  660f6ec0                  MOVD XMM0,EAX
009746ca  f30fe6c0                  CVTDQ2PD XMM0,XMM0
009746ce  c1e81f                    SHR EAX,0x1f
009746d1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
009746da  660f5ac0                  CVTPD2PS XMM0,XMM0
009746de  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
009746e6  85f6                      TEST ESI,ESI
009746e8  740b                      JZ 0x009746f5
009746ea  6a0a                      PUSH 0xa
009746ec  8bce                      MOV ECX,ESI
009746ee  e85de6e4ff                CALL 0x007c2d50
009746f3  eb08                      JMP 0x009746fd
009746f5  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
009746fd  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
00974705  8d8f64040000              LEA ECX,[EDI + 0x464]
0097470b  0f28c8                    MOVAPS XMM1,XMM0
0097470e  e8eda40200                CALL 0x0099ec00
00974713  68e048c300                PUSH 0xc348e0
00974718  8d9728040000              LEA EDX,[EDI + 0x428]
0097471e  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00974724  e8472aaaff                CALL 0x00417170
00974729  83c404                    ADD ESP,0x4
0097472c  8b08                      MOV ECX,dword ptr [EAX]
0097472e  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00974731  0f858c000000              JNZ 0x009747c3
00974737  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097473a  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097473d  0f8580000000              JNZ 0x009747c3
00974743  68a048c300                PUSH 0xc348a0
00974748  8d9728040000              LEA EDX,[EDI + 0x428]
0097474e  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00974754  e8172aaaff                CALL 0x00417170
00974759  83c404                    ADD ESP,0x4
0097475c  8b08                      MOV ECX,dword ptr [EAX]
0097475e  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00974761  750c                      JNZ 0x0097476f
00974763  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00974766  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00974769  0f84b0000000              JZ 0x0097481f
0097476f  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
00974772  660f6ec0                  MOVD XMM0,EAX
00974776  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0097477a  c1e81f                    SHR EAX,0x1f
0097477d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00974786  660f5ac0                  CVTPD2PS XMM0,XMM0
0097478a  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00974792  85f6                      TEST ESI,ESI
00974794  740b                      JZ 0x009747a1
00974796  6a1a                      PUSH 0x1a
00974798  8bce                      MOV ECX,ESI
0097479a  e8b1e5e4ff                CALL 0x007c2d50
0097479f  eb08                      JMP 0x009747a9
009747a1  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
009747a9  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
009747b1  8db764040000              LEA ESI,[EDI + 0x464]
009747b7  0f28c8                    MOVAPS XMM1,XMM0
009747ba  8bce                      MOV ECX,ESI
009747bc  e8ffa70200                CALL 0x0099efc0
009747c1  eb62                      JMP 0x00974825
009747c3  8b4720                    MOV EAX,dword ptr [EDI + 0x20]
009747c6  660f6ec0                  MOVD XMM0,EAX
009747ca  f30fe6c0                  CVTDQ2PD XMM0,XMM0
009747ce  c1e81f                    SHR EAX,0x1f
009747d1  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
009747da  660f5ac0                  CVTPD2PS XMM0,XMM0
009747de  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
009747e6  85f6                      TEST ESI,ESI
009747e8  741b                      JZ 0x00974805
009747ea  6a2e                      PUSH 0x2e
009747ec  8bce                      MOV ECX,ESI
009747ee  e85de5e4ff                CALL 0x007c2d50
009747f3  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
009747fb  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
00974803  ebac                      JMP 0x009747b1
00974805  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0097480d  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
00974815  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
0097481d  eb92                      JMP 0x009747b1
0097481f  8db764040000              LEA ESI,[EDI + 0x464]
00974825  68c045c300                PUSH 0xc345c0
0097482a  bab045c300                MOV EDX,0xc345b0
0097482f  8d8da0feffff              LEA ECX,[EBP + 0xfffffea0]
00974835  e8e613acff                CALL 0x00435c20
0097483a  83c404                    ADD ESP,0x4
0097483d  8d9728040000              LEA EDX,[EDI + 0x428]
00974843  8d8d60feffff              LEA ECX,[EBP + 0xfffffe60]
00974849  50                        PUSH EAX
0097484a  e82129aaff                CALL 0x00417170
0097484f  83c404                    ADD ESP,0x4
00974852  8b08                      MOV ECX,dword ptr [EAX]
00974854  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00974857  7508                      JNZ 0x00974861
00974859  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0097485c  0b480c                    OR ECX,dword ptr [EAX + 0xc]
0097485f  741b                      JZ 0x0097487c
00974861  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
00974869  8bce                      MOV ECX,ESI
0097486b  e8b0cc0200                CALL 0x009a1520
00974870  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00974876  888500ffffff              MOV byte ptr [EBP + 0xffffff00],AL
0097487c  83bf8401000000            CMP dword ptr [EDI + 0x184],0x0
00974883  0f84b6000000              JZ 0x0097493f
00974889  68b04bc300                PUSH 0xc34bb0
0097488e  8d9728040000              LEA EDX,[EDI + 0x428]
00974894  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
0097489a  e8d128aaff                CALL 0x00417170
0097489f  83c404                    ADD ESP,0x4
009748a2  8b08                      MOV ECX,dword ptr [EAX]
009748a4  0b4804                    OR ECX,dword ptr [EAX + 0x4]
009748a7  0f8592000000              JNZ 0x0097493f
009748ad  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
009748b0  0b480c                    OR ECX,dword ptr [EAX + 0xc]
009748b3  0f8586000000              JNZ 0x0097493f
009748b9  f30f108f4c030000          MOVSS XMM1,dword ptr [EDI + 0x34c]
009748c1  8db74c030000              LEA ESI,[EDI + 0x34c]
009748c7  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
009748cc  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
009748d2  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
009748da  8d8f64040000              LEA ECX,[EDI + 0x464]
009748e0  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
009748e8  ffb784010000              PUSH dword ptr [EDI + 0x184]
009748ee  f30f118d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM1
009748f6  50                        PUSH EAX
009748f7  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
009748ff  e81cbc0200                CALL 0x009a0520
00974904  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
0097490a  33d2                      XOR EDX,EDX
0097490c  84c0                      TEST AL,AL
0097490e  0fb6c9                    MOVZX ECX,CL
00974911  888716050000              MOV byte ptr [EDI + 0x516],AL
00974917  0f45ca                    CMOVNZ ECX,EDX
0097491a  83bfd404000002            CMP dword ptr [EDI + 0x4d4],0x2
00974921  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
00974927  888d00ffffff              MOV byte ptr [EBP + 0xffffff00],CL
0097492d  7510                      JNZ 0x0097493f
0097492f  56                        PUSH ESI
00974930  8db764040000              LEA ESI,[EDI + 0x464]
00974936  8bce                      MOV ECX,ESI
00974938  e813c30200                CALL 0x009a0c50
0097493d  eb06                      JMP 0x00974945
0097493f  8db764040000              LEA ESI,[EDI + 0x464]
00974945  a17816c700                MOV EAX,[0x00c71678]
0097494a  83b8846502001e            CMP dword ptr [EAX + 0x26584],0x1e
00974951  751e                      JNZ 0x00974971
00974953  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00974959  85c0                      TEST EAX,EAX
0097495b  740d                      JZ 0x0097496a
0097495d  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
00974960  83f801                    CMP EAX,0x1
00974963  740c                      JZ 0x00974971
00974965  83f803                    CMP EAX,0x3
00974968  7407                      JZ 0x00974971
0097496a  8bce                      MOV ECX,ESI
0097496c  e8cfbd0200                CALL 0x009a0740
00974971  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00974974  83f801                    CMP EAX,0x1
00974977  7413                      JZ 0x0097498c
00974979  83f803                    CMP EAX,0x3
0097497c  0f8557050000              JNZ 0x00974ed9
00974982  837f387b                  CMP dword ptr [EDI + 0x38],0x7b
00974986  0f844d050000              JZ 0x00974ed9
0097498c  80bf0005000000            CMP byte ptr [EDI + 0x500],0x0
00974993  0f8540050000              JNZ 0x00974ed9
00974999  6a00                      PUSH 0x0
0097499b  6a65                      PUSH 0x65
0097499d  6a03                      PUSH 0x3
0097499f  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
009749a5  c785f4feffff00000000      MOV dword ptr [EBP + 0xfffffef4],0x0
009749af  50                        PUSH EAX
009749b0  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
009749b6  c785f0feffff00000000      MOV dword ptr [EBP + 0xfffffef0],0x0
009749c0  8db7f8040000              LEA ESI,[EDI + 0x4f8]
009749c6  c78548ffffff00000000      MOV dword ptr [EBP + 0xffffff48],0x0
009749d0  50                        PUSH EAX
009749d1  8d8f64040000              LEA ECX,[EDI + 0x464]
009749d7  c78544ffffff00000000      MOV dword ptr [EBP + 0xffffff44],0x0
009749e1  89b508ffffff              MOV dword ptr [EBP + 0xffffff08],ESI
009749e7  e8c4c80200                CALL 0x009a12b0
009749ec  85c0                      TEST EAX,EAX
009749ee  0f8479040000              JZ 0x00974e6d
009749f4  833e00                    CMP dword ptr [ESI],0x0
009749f7  f30f109d44ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff44]
009749ff  f30f10a548ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff48]
00974a07  0f28cb                    MOVAPS XMM1,XMM3
00974a0a  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00974a11  0f28c4                    MOVAPS XMM0,XMM4
00974a14  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
00974a1c  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
00974a24  0f8426010000              JZ 0x00974b50
00974a2a  83bffc04000000            CMP dword ptr [EDI + 0x4fc],0x0
00974a31  0f8419010000              JZ 0x00974b50
00974a37  0f28cb                    MOVAPS XMM1,XMM3
00974a3a  e82153b2ff                CALL 0x00499d60
00974a3f  0f28e8                    MOVAPS XMM5,XMM0
00974a42  c78510ffffff02000000      MOV dword ptr [EBP + 0xffffff10],0x2
00974a4c  f30f592d48a9ba00          MULSS XMM5,dword ptr [0x00baa948]
00974a54  8bc6                      MOV EAX,ESI
00974a56  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00974a5c  0f28c5                    MOVAPS XMM0,XMM5
00974a5f  f30f11ad3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM5
00974a67  f30f5c05b4a9ba00          SUBSS XMM0,dword ptr [0x00baa9b4]
00974a6f  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
00974a77  8b30                      MOV ESI,dword ptr [EAX]
00974a79  85f6                      TEST ESI,ESI
00974a7b  7406                      JZ 0x00974a83
00974a7d  837e2807                  CMP dword ptr [ESI + 0x28],0x7
00974a81  7402                      JZ 0x00974a85
00974a83  33f6                      XOR ESI,ESI
00974a85  6a00                      PUSH 0x0
00974a87  57                        PUSH EDI
00974a88  8bce                      MOV ECX,ESI
00974a8a  e8e1a5ffff                CALL 0x0096f070
00974a8f  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00974a97  8b861c040000              MOV EAX,dword ptr [ESI + 0x41c]
00974a9d  f30f10a55cffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff5c]
00974aa5  f30f109de4feffff          MOVSS XMM3,dword ptr [EBP + 0xfffffee4]
00974aad  f30f1095f0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef0]
00974ab5  0f28cb                    MOVAPS XMM1,XMM3
00974ab8  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
00974ac0  898620040000              MOV dword ptr [ESI + 0x420],EAX
00974ac6  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
00974acc  0f571d70cbba00            XORPS XMM3,xmmword ptr [0x00bacb70]
00974ad3  83c004                    ADD EAX,0x4
00974ad6  83ad10ffffff01            SUB dword ptr [EBP + 0xffffff10],0x1
00974add  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
00974ae5  f30f11861c040000          MOVSS dword ptr [ESI + 0x41c],XMM0
00974aed  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
00974af5  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
00974afd  0f28c4                    MOVAPS XMM0,XMM4
00974b00  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00974b08  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00974b0e  0f572570cbba00            XORPS XMM4,xmmword ptr [0x00bacb70]
00974b15  f30f11a55cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM4
00974b1d  f30f58d0                  ADDSS XMM2,XMM0
00974b21  f30f119de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM3
00974b29  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
00974b31  f30f58c1                  ADDSS XMM0,XMM1
00974b35  f30f11963c030000          MOVSS dword ptr [ESI + 0x33c],XMM2
00974b3d  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
00974b45  0f852cffffff              JNZ 0x00974a77
00974b4b  e9e0010000                JMP 0x00974d30
00974b50  f30f101584a7ba00          MOVSS XMM2,dword ptr [0x00baa784]
00974b58  8bc6                      MOV EAX,ESI
00974b5a  b902000000                MOV ECX,0x2
00974b5f  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
00974b65  898d54ffffff              MOV dword ptr [EBP + 0xffffff54],ECX
00974b6b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00974b70  833800                    CMP dword ptr [EAX],0x0
00974b73  0f8595010000              JNZ 0x00974d0e
00974b79  f30f59c2                  MULSS XMM0,XMM2
00974b7d  f30f59ca                  MULSS XMM1,XMM2
00974b81  f30f1095f0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef0]
00974b89  f30f58d0                  ADDSS XMM2,XMM0
00974b8d  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
00974b95  f30f58c1                  ADDSS XMM0,XMM1
00974b99  0f28cb                    MOVAPS XMM1,XMM3
00974b9c  f30f119520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM2
00974ba4  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00974bac  0f28c4                    MOVAPS XMM0,XMM4
00974baf  e8ac51b2ff                CALL 0x00499d60
00974bb4  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00974bbc  8d874c030000              LEA EAX,[EDI + 0x34c]
00974bc2  6a01                      PUSH 0x1
00974bc4  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
00974bca  50                        PUSH EAX
00974bcb  ffb758040000              PUSH dword ptr [EDI + 0x458]
00974bd1  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00974bd7  51                        PUSH ECX
00974bd8  f30f110424                MOVSS dword ptr [ESP],XMM0
00974bdd  50                        PUSH EAX
00974bde  ff772c                    PUSH dword ptr [EDI + 0x2c]
00974be1  e82aa7ffff                CALL 0x0096f310
00974be6  8bf0                      MOV ESI,EAX
00974be8  83c41c                    ADD ESP,0x1c
00974beb  85f6                      TEST ESI,ESI
00974bed  0f84c9000000              JZ 0x00974cbc
00974bf3  6a01                      PUSH 0x1
00974bf5  57                        PUSH EDI
00974bf6  8bce                      MOV ECX,ESI
00974bf8  c686e404000001            MOV byte ptr [ESI + 0x4e4],0x1
00974bff  e86ca4ffff                CALL 0x0096f070
00974c04  8d85c8feffff              LEA EAX,[EBP + 0xfffffec8]
00974c0a  b9a045c300                MOV ECX,0xc345a0
00974c0f  50                        PUSH EAX
00974c10  e8ebd5c1ff                CALL 0x00592200
00974c15  0f108728040000            MOVUPS XMM0,xmmword ptr [EDI + 0x428]
00974c1c  50                        PUSH EAX
00974c1d  8d95b0feffff              LEA EDX,[EBP + 0xfffffeb0]
00974c23  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00974c29  0f1185b0feffff            MOVUPS xmmword ptr [EBP + 0xfffffeb0],XMM0
00974c30  e83b25aaff                CALL 0x00417170
00974c35  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00974c3b  83c404                    ADD ESP,0x4
00974c3e  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00974c41  c6860005000001            MOV byte ptr [ESI + 0x500],0x1
00974c48  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00974c4e  0f118628040000            MOVUPS xmmword ptr [ESI + 0x428],XMM0
00974c55  85c9                      TEST ECX,ECX
00974c57  741e                      JZ 0x00974c77
00974c59  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
00974c5f  81c1cc030000              ADD ECX,0x3cc
00974c65  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00974c6b  50                        PUSH EAX
00974c6c  e89fa5b5ff                CALL 0x004cf210
00974c71  8d86bc030000              LEA EAX,[ESI + 0x3bc]
00974c77  50                        PUSH EAX
00974c78  8bcf                      MOV ECX,EDI
00974c7a  8938                      MOV dword ptr [EAX],EDI
00974c7c  e86f90b5ff                CALL 0x004cdcf0
00974c81  8b06                      MOV EAX,dword ptr [ESI]
00974c83  8bce                      MOV ECX,ESI
00974c85  ff500c                    CALL dword ptr [EAX + 0xc]
00974c88  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
00974c8e  8b08                      MOV ECX,dword ptr [EAX]
00974c90  85c9                      TEST ECX,ECX
00974c92  741e                      JZ 0x00974cb2
00974c94  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
00974c9a  81c1cc030000              ADD ECX,0x3cc
00974ca0  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00974ca6  50                        PUSH EAX
00974ca7  e864a5b5ff                CALL 0x004cf210
00974cac  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
00974cb2  50                        PUSH EAX
00974cb3  8bce                      MOV ECX,ESI
00974cb5  8930                      MOV dword ptr [EAX],ESI
00974cb7  e83490b5ff                CALL 0x004cdcf0
00974cbc  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
00974cc4  f30f108de4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffee4]
00974ccc  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
00974cd3  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00974cda  f30f101584a7ba00          MOVSS XMM2,dword ptr [0x00baa784]
00974ce2  f30f109d44ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff44]
00974cea  f30f10a548ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff48]
00974cf2  8b8510ffffff              MOV EAX,dword ptr [EBP + 0xffffff10]
00974cf8  8b8d54ffffff              MOV ECX,dword ptr [EBP + 0xffffff54]
00974cfe  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
00974d06  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
00974d0e  83c004                    ADD EAX,0x4
00974d11  83e901                    SUB ECX,0x1
00974d14  898510ffffff              MOV dword ptr [EBP + 0xffffff10],EAX
00974d1a  898d54ffffff              MOV dword ptr [EBP + 0xffffff54],ECX
00974d20  0f854afeffff              JNZ 0x00974b70
00974d26  c7876005000000000000      MOV dword ptr [EDI + 0x560],0x0
00974d30  b802000000                MOV EAX,0x2
00974d35  8db7f8040000              LEA ESI,[EDI + 0x4f8]
00974d3b  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00974d41  8b36                      MOV ESI,dword ptr [ESI]
00974d43  85f6                      TEST ESI,ESI
00974d45  7406                      JZ 0x00974d4d
00974d47  837e2807                  CMP dword ptr [ESI + 0x28],0x7
00974d4b  7402                      JZ 0x00974d4f
00974d4d  33f6                      XOR ESI,ESI
00974d4f  85f6                      TEST ESI,ESI
00974d51  0f84e1000000              JZ 0x00974e38
00974d57  a17816c700                MOV EAX,[0x00c71678]
00974d5c  8b88f8640200              MOV ECX,dword ptr [EAX + 0x264f8]
00974d62  2b8f28030000              SUB ECX,dword ptr [EDI + 0x328]
00974d68  81e10f000080              AND ECX,0x8000000f
00974d6e  7905                      JNS 0x00974d75
00974d70  49                        DEC ECX
00974d71  83c9f0                    OR ECX,0xfffffff0
00974d74  41                        INC ECX
00974d75  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
00974d7c  b810000000                MOV EAX,0x10
00974d81  2bc1                      SUB EAX,ECX
00974d83  c745d40000803f            MOV dword ptr [EBP + -0x2c],0x3f800000
00974d8a  83f908                    CMP ECX,0x8
00974d8d  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
00974d91  0f4cc1                    CMOVL EAX,ECX
00974d94  8d4db8                    LEA ECX,[EBP + -0x48]
00974d97  6a01                      PUSH 0x1
00974d99  6a00                      PUSH 0x0
00974d9b  68ff000000                PUSH 0xff
00974da0  660f6ec8                  MOVD XMM1,EAX
00974da4  8b06                      MOV EAX,dword ptr [ESI]
00974da6  0f5bc9                    CVTDQ2PS XMM1,XMM1
00974da9  6aff                      PUSH -0x1
00974dab  51                        PUSH ECX
00974dac  8bce                      MOV ECX,ESI
00974dae  f30f590d3ca1ba00          MULSS XMM1,dword ptr [0x00baa13c]
00974db6  0f28c1                    MOVAPS XMM0,XMM1
00974db9  f30f58c1                  ADDSS XMM0,XMM1
00974dbd  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
00974dc5  f30f5c0d98a1ba00          SUBSS XMM1,dword ptr [0x00baa198]
00974dcd  f30f5805f8a1ba00          ADDSS XMM0,dword ptr [0x00baa1f8]
00974dd5  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
00974dda  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00974ddf  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
00974de4  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
00974de9  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
00974dee  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
00974df3  ff503c                    CALL dword ptr [EAX + 0x3c]
00974df6  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
00974dfc  85c9                      TEST ECX,ECX
00974dfe  7414                      JZ 0x00974e14
00974e00  8b01                      MOV EAX,dword ptr [ECX]
00974e02  8d55b8                    LEA EDX,[EBP + -0x48]
00974e05  6a01                      PUSH 0x1
00974e07  6a00                      PUSH 0x0
00974e09  68ff000000                PUSH 0xff
00974e0e  6aff                      PUSH -0x1
00974e10  52                        PUSH EDX
00974e11  ff503c                    CALL dword ptr [EAX + 0x3c]
00974e14  8b8e3c050000              MOV ECX,dword ptr [ESI + 0x53c]
00974e1a  85c9                      TEST ECX,ECX
00974e1c  7414                      JZ 0x00974e32
00974e1e  8b01                      MOV EAX,dword ptr [ECX]
00974e20  8d55b8                    LEA EDX,[EBP + -0x48]
00974e23  6a01                      PUSH 0x1
00974e25  6a00                      PUSH 0x0
00974e27  68ff000000                PUSH 0xff
00974e2c  6aff                      PUSH -0x1
00974e2e  52                        PUSH EDX
00974e2f  ff503c                    CALL dword ptr [EAX + 0x3c]
00974e32  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
00974e38  8bb508ffffff              MOV ESI,dword ptr [EBP + 0xffffff08]
00974e3e  83c604                    ADD ESI,0x4
00974e41  83e801                    SUB EAX,0x1
00974e44  89b508ffffff              MOV dword ptr [EBP + 0xffffff08],ESI
00974e4a  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00974e50  0f85ebfeffff              JNZ 0x00974d41
00974e56  32c0                      XOR AL,AL
00974e58  c6855bffffff01            MOV byte ptr [EBP + 0xffffff5b],0x1
00974e5f  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00974e65  888500ffffff              MOV byte ptr [EBP + 0xffffff00],AL
00974e6b  eb6c                      JMP 0x00974ed9
00974e6d  b802000000                MOV EAX,0x2
00974e72  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00974e78  8b0e                      MOV ECX,dword ptr [ESI]
00974e7a  85c9                      TEST ECX,ECX
00974e7c  740b                      JZ 0x00974e89
00974e7e  8b01                      MOV EAX,dword ptr [ECX]
00974e80  ff5028                    CALL dword ptr [EAX + 0x28]
00974e83  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
00974e89  83c604                    ADD ESI,0x4
00974e8c  83e801                    SUB EAX,0x1
00974e8f  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00974e95  75e1                      JNZ 0x00974e78
00974e97  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00974e9d  85c9                      TEST ECX,ECX
00974e9f  7430                      JZ 0x00974ed1
00974ea1  83bfe804000000            CMP dword ptr [EDI + 0x4e8],0x0
00974ea8  742f                      JZ 0x00974ed9
00974eaa  817928e8030000            CMP dword ptr [ECX + 0x28],0x3e8
00974eb1  7526                      JNZ 0x00974ed9
00974eb3  83792c32                  CMP dword ptr [ECX + 0x2c],0x32
00974eb7  7520                      JNZ 0x00974ed9
00974eb9  83793004                  CMP dword ptr [ECX + 0x30],0x4
00974ebd  741a                      JZ 0x00974ed9
00974ebf  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00974ec2  83f806                    CMP EAX,0x6
00974ec5  7405                      JZ 0x00974ecc
00974ec7  83f80f                    CMP EAX,0xf
00974eca  750d                      JNZ 0x00974ed9
00974ecc  8b01                      MOV EAX,dword ptr [ECX]
00974ece  ff5028                    CALL dword ptr [EAX + 0x28]
00974ed1  51                        PUSH ECX
00974ed2  8bcf                      MOV ECX,EDI
00974ed4  e847a90000                CALL 0x0097f820
00974ed9  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00974edc  c6854fffffff00            MOV byte ptr [EBP + 0xffffff4f],0x0
00974ee3  83f801                    CMP EAX,0x1
00974ee6  7405                      JZ 0x00974eed
00974ee8  83f803                    CMP EAX,0x3
00974eeb  7512                      JNZ 0x00974eff
00974eed  a17816c700                MOV EAX,[0x00c71678]
00974ef2  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
00974ef9  0f8c6f030000              JL 0x0097526e
00974eff  57                        PUSH EDI
00974f00  68bc000000                PUSH 0xbc
00974f05  68e8030000                PUSH 0x3e8
00974f0a  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
00974f10  c78524ffffff00000000      MOV dword ptr [EBP + 0xffffff24],0x0
00974f1a  50                        PUSH EAX
00974f1b  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00974f21  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
00974f2b  50                        PUSH EAX
00974f2c  8d8f64040000              LEA ECX,[EDI + 0x464]
00974f32  c78548ffffff00000000      MOV dword ptr [EBP + 0xffffff48],0x0
00974f3c  c78544ffffff00000000      MOV dword ptr [EBP + 0xffffff44],0x0
00974f46  e865c30200                CALL 0x009a12b0
00974f4b  8bf0                      MOV ESI,EAX
00974f4d  89b55cffffff              MOV dword ptr [EBP + 0xffffff5c],ESI
00974f53  85f6                      TEST ESI,ESI
00974f55  0f84f4020000              JZ 0x0097524f
00974f5b  f30f108674040000          MOVSS XMM0,dword ptr [ESI + 0x474]
00974f63  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00974f6b  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00974f73  e8a885aaff                CALL 0x0041d520
00974f78  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00974f80  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00974f88  e8b385aaff                CALL 0x0041d540
00974f8d  f30f109554ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff54]
00974f95  0f28e8                    MOVAPS XMM5,XMM0
00974f98  f30f10a544ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff44]
00974fa0  0f28cd                    MOVAPS XMM1,XMM5
00974fa3  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
00974fab  f30f58cd                  ADDSS XMM1,XMM5
00974faf  0f28da                    MOVAPS XMM3,XMM2
00974fb2  f30f59ec                  MULSS XMM5,XMM4
00974fb6  f30f58da                  ADDSS XMM3,XMM2
00974fba  f30f59d0                  MULSS XMM2,XMM0
00974fbe  f30f58ea                  ADDSS XMM5,XMM2
00974fc2  0f28d5                    MOVAPS XMM2,XMM5
00974fc5  f30f59eb                  MULSS XMM5,XMM3
00974fc9  f30f59d1                  MULSS XMM2,XMM1
00974fcd  f30f5cc5                  SUBSS XMM0,XMM5
00974fd1  f30f5ce2                  SUBSS XMM4,XMM2
00974fd5  0f28cc                    MOVAPS XMM1,XMM4
00974fd8  e8834db2ff                CALL 0x00499d60
00974fdd  0f28c8                    MOVAPS XMM1,XMM0
00974fe0  8d8d60ffffff              LEA ECX,[EBP + 0xffffff60]
00974fe6  f30f590d48a9ba00          MULSS XMM1,dword ptr [0x00baa948]
00974fee  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
00974ff6  e87521a9ff                CALL 0x00407170
00974ffb  8b572c                    MOV EDX,dword ptr [EDI + 0x2c]
00974ffe  83fa05                    CMP EDX,0x5
00975001  7439                      JZ 0x0097503c
00975003  83fa0a                    CMP EDX,0xa
00975006  7434                      JZ 0x0097503c
00975008  0f2805b0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7b0]
0097500f  8d45b8                    LEA EAX,[EBP + -0x48]
00975012  0f1145b8                  MOVUPS xmmword ptr [EBP + -0x48],XMM0
00975016  50                        PUSH EAX
00975017  0f2805e0c9ba00            MOVAPS XMM0,xmmword ptr [0x00bac9e0]
0097501e  0f1145c8                  MOVUPS xmmword ptr [EBP + -0x38],XMM0
00975022  c745d800000000            MOV dword ptr [EBP + -0x28],0x0
00975029  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
00975030  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
00975037  e8b421a9ff                CALL 0x004071f0
0097503c  8b86bc030000              MOV EAX,dword ptr [ESI + 0x3bc]
00975042  85c0                      TEST EAX,EAX
00975044  7406                      JZ 0x0097504c
00975046  83782801                  CMP dword ptr [EAX + 0x28],0x1
0097504a  7402                      JZ 0x0097504e
0097504c  33c0                      XOR EAX,EAX
0097504e  8b8fe8040000              MOV ECX,dword ptr [EDI + 0x4e8]
00975054  85c9                      TEST ECX,ECX
00975056  0f85c3000000              JNZ 0x0097511f
0097505c  6a01                      PUSH 0x1
0097505e  50                        PUSH EAX
0097505f  8d874c030000              LEA EAX,[EDI + 0x34c]
00975065  50                        PUSH EAX
00975066  ffb758040000              PUSH dword ptr [EDI + 0x458]
0097506c  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00975072  51                        PUSH ECX
00975073  f30f110c24                MOVSS dword ptr [ESP],XMM1
00975078  50                        PUSH EAX
00975079  52                        PUSH EDX
0097507a  e891a2ffff                CALL 0x0096f310
0097507f  8bf0                      MOV ESI,EAX
00975081  83c41c                    ADD ESP,0x1c
00975084  85f6                      TEST ESI,ESI
00975086  0f846c010000              JZ 0x009751f8
0097508c  8b0e                      MOV ECX,dword ptr [ESI]
0097508e  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
00975094  6a01                      PUSH 0x1
00975096  6a00                      PUSH 0x0
00975098  68ff000000                PUSH 0xff
0097509d  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
009750a0  8bce                      MOV ECX,ESI
009750a2  6aff                      PUSH -0x1
009750a4  50                        PUSH EAX
009750a5  c686e404000001            MOV byte ptr [ESI + 0x4e4],0x1
009750ac  c6861405000001            MOV byte ptr [ESI + 0x514],0x1
009750b3  ffd2                      CALL EDX
009750b5  8b06                      MOV EAX,dword ptr [ESI]
009750b7  51                        PUSH ECX
009750b8  8bce                      MOV ECX,ESI
009750ba  c704240000e040            MOV dword ptr [ESP],0x40e00000
009750c1  ff5040                    CALL dword ptr [EAX + 0x40]
009750c4  f30f108758030000          MOVSS XMM0,dword ptr [EDI + 0x358]
009750cc  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
009750d4  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
009750dc  8b8758040000              MOV EAX,dword ptr [EDI + 0x458]
009750e2  898658040000              MOV dword ptr [ESI + 0x458],EAX
009750e8  80bf5e04000000            CMP byte ptr [EDI + 0x45e],0x0
009750ef  750d                      JNZ 0x009750fe
009750f1  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
009750f8  7504                      JNZ 0x009750fe
009750fa  32c0                      XOR AL,AL
009750fc  eb02                      JMP 0x00975100
009750fe  b001                      MOV AL,0x1
00975100  88865e040000              MOV byte ptr [ESI + 0x45e],AL
00975106  8bce                      MOV ECX,ESI
00975108  8b06                      MOV EAX,dword ptr [ESI]
0097510a  ff500c                    CALL dword ptr [EAX + 0xc]
0097510d  8bd6                      MOV EDX,ESI
0097510f  8d8fe8040000              LEA ECX,[EDI + 0x4e8]
00975115  e8360ad4ff                CALL 0x006b5b50
0097511a  e9d9000000                JMP 0x009751f8
0097511f  6a00                      PUSH 0x0
00975121  6840d7c500                PUSH 0xc5d740
00975126  68dcd5c500                PUSH 0xc5d5dc
0097512b  6a00                      PUSH 0x0
0097512d  51                        PUSH ECX
0097512e  e87eb71700                CALL 0x00af08b1
00975133  83c414                    ADD ESP,0x14
00975136  8bf0                      MOV ESI,EAX
00975138  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
0097513e  8b0e                      MOV ECX,dword ptr [ESI]
00975140  6a01                      PUSH 0x1
00975142  6a00                      PUSH 0x0
00975144  68ff000000                PUSH 0xff
00975149  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
0097514c  8bce                      MOV ECX,ESI
0097514e  6aff                      PUSH -0x1
00975150  50                        PUSH EAX
00975151  ffd2                      CALL EDX
00975153  8b06                      MOV EAX,dword ptr [ESI]
00975155  51                        PUSH ECX
00975156  8bce                      MOV ECX,ESI
00975158  c704240000e040            MOV dword ptr [ESP],0x40e00000
0097515f  ff5040                    CALL dword ptr [EAX + 0x40]
00975162  f30f108758030000          MOVSS XMM0,dword ptr [EDI + 0x358]
0097516a  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
00975172  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
0097517a  8b8758040000              MOV EAX,dword ptr [EDI + 0x458]
00975180  898658040000              MOV dword ptr [ESI + 0x458],EAX
00975186  80bf5e04000000            CMP byte ptr [EDI + 0x45e],0x0
0097518d  750d                      JNZ 0x0097519c
0097518f  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00975196  7504                      JNZ 0x0097519c
00975198  32c0                      XOR AL,AL
0097519a  eb02                      JMP 0x0097519e
0097519c  b001                      MOV AL,0x1
0097519e  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
009751a6  88865e040000              MOV byte ptr [ESI + 0x45e],AL
009751ac  8b861c040000              MOV EAX,dword ptr [ESI + 0x41c]
009751b2  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
009751ba  f30f11861c040000          MOVSS dword ptr [ESI + 0x41c],XMM0
009751c2  f30f5c05b4a9ba00          SUBSS XMM0,dword ptr [0x00baa9b4]
009751ca  898620040000              MOV dword ptr [ESI + 0x420],EAX
009751d0  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
009751d8  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
009751e0  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
009751e8  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
009751f0  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
009751f8  a17816c700                MOV EAX,[0x00c71678]
009751fd  8b955cffffff              MOV EDX,dword ptr [EBP + 0xffffff5c]
00975203  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00975209  2b8228030000              SUB EAX,dword ptr [EDX + 0x328]
0097520f  3d96000000                CMP EAX,0x96
00975214  7d1c                      JGE 0x00975232
00975216  8b825c040000              MOV EAX,dword ptr [EDX + 0x45c]
0097521c  b91e000000                MOV ECX,0x1e
00975221  3bc1                      CMP EAX,ECX
00975223  0f4fc8                    CMOVG ECX,EAX
00975226  898a5c040000              MOV dword ptr [EDX + 0x45c],ECX
0097522c  898a60040000              MOV dword ptr [EDX + 0x460],ECX
00975232  b001                      MOV AL,0x1
00975234  c6855bffffff01            MOV byte ptr [EBP + 0xffffff5b],0x1
0097523b  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00975241  888500ffffff              MOV byte ptr [EBP + 0xffffff00],AL
00975247  88854fffffff              MOV byte ptr [EBP + 0xffffff4f],AL
0097524d  eb1f                      JMP 0x0097526e
0097524f  8b8fe8040000              MOV ECX,dword ptr [EDI + 0x4e8]
00975255  85c9                      TEST ECX,ECX
00975257  7415                      JZ 0x0097526e
00975259  8b81bc030000              MOV EAX,dword ptr [ECX + 0x3bc]
0097525f  85c0                      TEST EAX,EAX
00975261  740b                      JZ 0x0097526e
00975263  83782801                  CMP dword ptr [EAX + 0x28],0x1
00975267  7505                      JNZ 0x0097526e
00975269  8b01                      MOV EAX,dword ptr [ECX]
0097526b  ff5028                    CALL dword ptr [EAX + 0x28]
0097526e  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00975271  83f801                    CMP EAX,0x1
00975274  7413                      JZ 0x00975289
00975276  83f803                    CMP EAX,0x3
00975279  0f8592040000              JNZ 0x00975711
0097527f  837f3865                  CMP dword ptr [EDI + 0x38],0x65
00975283  0f8488040000              JZ 0x00975711
00975289  80bf1405000000            CMP byte ptr [EDI + 0x514],0x0
00975290  0f857b040000              JNZ 0x00975711
00975296  6a00                      PUSH 0x0
00975298  6a7b                      PUSH 0x7b
0097529a  6a03                      PUSH 0x3
0097529c  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
009752a2  c78524ffffff00000000      MOV dword ptr [EBP + 0xffffff24],0x0
009752ac  50                        PUSH EAX
009752ad  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
009752b3  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
009752bd  50                        PUSH EAX
009752be  8d8f64040000              LEA ECX,[EDI + 0x464]
009752c4  c78548ffffff00000000      MOV dword ptr [EBP + 0xffffff48],0x0
009752ce  c78544ffffff00000000      MOV dword ptr [EBP + 0xffffff44],0x0
009752d8  8db704050000              LEA ESI,[EDI + 0x504]
009752de  e8cdbf0200                CALL 0x009a12b0
009752e3  85c0                      TEST EAX,EAX
009752e5  0f84b5030000              JZ 0x009756a0
009752eb  833e00                    CMP dword ptr [ESI],0x0
009752ee  0f846d020000              JZ 0x00975561
009752f4  83bf0805000000            CMP dword ptr [EDI + 0x508],0x0
009752fb  0f8460020000              JZ 0x00975561
00975301  83bf0c05000000            CMP dword ptr [EDI + 0x50c],0x0
00975308  0f8453020000              JZ 0x00975561
0097530e  83bf1005000000            CMP dword ptr [EDI + 0x510],0x0
00975315  0f8446020000              JZ 0x00975561
0097531b  f30f108d44ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff44]
00975323  33f6                      XOR ESI,ESI
00975325  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
0097532d  89b554ffffff              MOV dword ptr [EBP + 0xffffff54],ESI
00975333  e8284ab2ff                CALL 0x00499d60
00975338  f30f100dd0a8ba00          MOVSS XMM1,dword ptr [0x00baa8d0]
00975340  0f28d0                    MOVAPS XMM2,XMM0
00975343  f30f591548a9ba00          MULSS XMM2,dword ptr [0x00baa948]
0097534b  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
00975353  0f1f4000                  NOP dword ptr [EAX]
00975357  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
00975360  0f28c2                    MOVAPS XMM0,XMM2
00975363  8d4d8c                    LEA ECX,[EBP + -0x74]
00975366  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
0097536e  e8fd1da9ff                CALL 0x00407170
00975373  85f6                      TEST ESI,ESI
00975375  7511                      JNZ 0x00975388
00975377  f30f5cc1                  SUBSS XMM0,XMM1
0097537b  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
00975383  e904010000                JMP 0x0097548c
00975388  83fe01                    CMP ESI,0x1
0097538b  7556                      JNZ 0x009753e3
0097538d  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
00975395  8d8d34feffff              LEA ECX,[EBP + 0xfffffe34]
0097539b  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
009753a3  e828dbd0ff                CALL 0x00682ed0
009753a8  0f2805d0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7d0]
009753af  f30f100d94a3ba00          MOVSS XMM1,dword ptr [0x00baa394]
009753b7  0f11458c                  MOVUPS xmmword ptr [EBP + -0x74],XMM0
009753bb  c7855cfeffff00000000      MOV dword ptr [EBP + 0xfffffe5c],0x0
009753c5  0f108544feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffe44]
009753cc  8b855cfeffff              MOV EAX,dword ptr [EBP + 0xfffffe5c]
009753d2  0f11459c                  MOVUPS xmmword ptr [EBP + -0x64],XMM0
009753d6  f30f100574a2ba00          MOVSS XMM0,dword ptr [0x00baa274]
009753de  e99e000000                JMP 0x00975481
009753e3  83fe02                    CMP ESI,0x2
009753e6  7547                      JNZ 0x0097542f
009753e8  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
009753f0  8d8d08feffff              LEA ECX,[EBP + 0xfffffe08]
009753f6  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
009753fe  e8cddad0ff                CALL 0x00682ed0
00975403  0f2805d0c7ba00            MOVAPS XMM0,xmmword ptr [0x00bac7d0]
0097540a  f30f100d94a3ba00          MOVSS XMM1,dword ptr [0x00baa394]
00975412  c78530feffffcac8c83e      MOV dword ptr [EBP + 0xfffffe30],0x3ec8c8ca
0097541c  8b8530feffff              MOV EAX,dword ptr [EBP + 0xfffffe30]
00975422  0f11458c                  MOVUPS xmmword ptr [EBP + -0x74],XMM0
00975426  0f108518feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffe18]
0097542d  eb46                      JMP 0x00975475
0097542f  83fe03                    CMP ESI,0x3
00975432  7558                      JNZ 0x0097548c
00975434  f30f58c1                  ADDSS XMM0,XMM1
00975438  8d8ddcfdffff              LEA ECX,[EBP + 0xfffffddc]
0097543e  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
00975446  e885dad0ff                CALL 0x00682ed0
0097544b  0f2805f0c8ba00            MOVAPS XMM0,xmmword ptr [0x00bac8f0]
00975452  f30f100d74a2ba00          MOVSS XMM1,dword ptr [0x00baa274]
0097545a  c78504feffffcac8483f      MOV dword ptr [EBP + 0xfffffe04],0x3f48c8ca
00975464  8b8504feffff              MOV EAX,dword ptr [EBP + 0xfffffe04]
0097546a  0f11458c                  MOVUPS xmmword ptr [EBP + -0x74],XMM0
0097546e  0f1085ecfdffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffdec]
00975475  0f11459c                  MOVUPS xmmword ptr [EBP + -0x64],XMM0
00975479  f30f100544adba00          MOVSS XMM0,dword ptr [0x00baad44]
00975481  0f14c1                    UNPCKLPS XMM0,XMM1
00975484  660fd645ac                MOVQ qword ptr [EBP + -0x54],XMM0
00975489  8945b4                    MOV dword ptr [EBP + -0x4c],EAX
0097548c  6a00                      PUSH 0x0
0097548e  6840d7c500                PUSH 0xc5d740
00975493  68dcd5c500                PUSH 0xc5d5dc
00975498  6a00                      PUSH 0x0
0097549a  ffb4b704050000            PUSH dword ptr [EDI + ESI*0x4 + 0x504]
009754a1  e80bb41700                CALL 0x00af08b1
009754a6  83c414                    ADD ESP,0x14
009754a9  8bf0                      MOV ESI,EAX
009754ab  8bce                      MOV ECX,ESI
009754ad  6a00                      PUSH 0x0
009754af  57                        PUSH EDI
009754b0  e8bb9bffff                CALL 0x0096f070
009754b5  8b0e                      MOV ECX,dword ptr [ESI]
009754b7  8d458c                    LEA EAX,[EBP + -0x74]
009754ba  6a01                      PUSH 0x1
009754bc  6a00                      PUSH 0x0
009754be  68ff000000                PUSH 0xff
009754c3  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
009754c6  8bce                      MOV ECX,ESI
009754c8  6aff                      PUSH -0x1
009754ca  50                        PUSH EAX
009754cb  ffd2                      CALL EDX
009754cd  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
009754d5  8b861c040000              MOV EAX,dword ptr [ESI + 0x41c]
009754db  f30f100dd0a8ba00          MOVSS XMM1,dword ptr [0x00baa8d0]
009754e3  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
009754eb  f30f118618040000          MOVSS dword ptr [ESI + 0x418],XMM0
009754f3  f30f11861c040000          MOVSS dword ptr [ESI + 0x41c],XMM0
009754fb  f30f5c05b4a9ba00          SUBSS XMM0,dword ptr [0x00baa9b4]
00975503  898620040000              MOV dword ptr [ESI + 0x420],EAX
00975509  f30f1186ec000000          MOVSS dword ptr [ESI + 0xec],XMM0
00975511  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
00975519  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
00975521  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
00975529  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
00975531  8bb554ffffff              MOV ESI,dword ptr [EBP + 0xffffff54]
00975537  46                        INC ESI
00975538  89b554ffffff              MOV dword ptr [EBP + 0xffffff54],ESI
0097553e  83fe04                    CMP ESI,0x4
00975541  0f8c19feffff              JL 0x00975360
00975547  32c0                      XOR AL,AL
00975549  c6855bffffff01            MOV byte ptr [EBP + 0xffffff5b],0x1
00975550  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00975556  888500ffffff              MOV byte ptr [EBP + 0xffffff00],AL
0097555c  e9b0010000                JMP 0x00975711
00975561  33f6                      XOR ESI,ESI
00975563  89b554ffffff              MOV dword ptr [EBP + 0xffffff54],ESI
00975569  0f1f8000000000            NOP dword ptr [EAX]
00975570  83bcb70405000000          CMP dword ptr [EDI + ESI*0x4 + 0x504],0x0
00975578  8d8704050000              LEA EAX,[EDI + 0x504]
0097557e  8d04b0                    LEA EAX,[EAX + ESI*0x4]
00975581  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
00975587  0f85e2000000              JNZ 0x0097566f
0097558d  f30f108d44ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff44]
00975595  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
0097559d  e8be47b2ff                CALL 0x00499d60
009755a2  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
009755aa  85f6                      TEST ESI,ESI
009755ac  750a                      JNZ 0x009755b8
009755ae  f30f5c05d0a8ba00          SUBSS XMM0,dword ptr [0x00baa8d0]
009755b6  eb2b                      JMP 0x009755e3
009755b8  83fe01                    CMP ESI,0x1
009755bb  750a                      JNZ 0x009755c7
009755bd  f30f5c051ca8ba00          SUBSS XMM0,dword ptr [0x00baa81c]
009755c5  eb1c                      JMP 0x009755e3
009755c7  83fe02                    CMP ESI,0x2
009755ca  750a                      JNZ 0x009755d6
009755cc  f30f58051ca8ba00          ADDSS XMM0,dword ptr [0x00baa81c]
009755d4  eb0d                      JMP 0x009755e3
009755d6  83fe03                    CMP ESI,0x3
009755d9  7508                      JNZ 0x009755e3
009755db  f30f5805d0a8ba00          ADDSS XMM0,dword ptr [0x00baa8d0]
009755e3  6a01                      PUSH 0x1
009755e5  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
009755eb  8d874c030000              LEA EAX,[EDI + 0x34c]
009755f1  50                        PUSH EAX
009755f2  ffb758040000              PUSH dword ptr [EDI + 0x458]
009755f8  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
009755fe  51                        PUSH ECX
009755ff  f30f110424                MOVSS dword ptr [ESP],XMM0
00975604  50                        PUSH EAX
00975605  ff772c                    PUSH dword ptr [EDI + 0x2c]
00975608  e8039dffff                CALL 0x0096f310
0097560d  8bf0                      MOV ESI,EAX
0097560f  83c41c                    ADD ESP,0x1c
00975612  85f6                      TEST ESI,ESI
00975614  7453                      JZ 0x00975669
00975616  6a01                      PUSH 0x1
00975618  57                        PUSH EDI
00975619  8bce                      MOV ECX,ESI
0097561b  c686e404000001            MOV byte ptr [ESI + 0x4e4],0x1
00975622  e8499affff                CALL 0x0096f070
00975627  8b06                      MOV EAX,dword ptr [ESI]
00975629  8bce                      MOV ECX,ESI
0097562b  c6861405000001            MOV byte ptr [ESI + 0x514],0x1
00975632  ff500c                    CALL dword ptr [EAX + 0xc]
00975635  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
0097563b  8b08                      MOV ECX,dword ptr [EAX]
0097563d  85c9                      TEST ECX,ECX
0097563f  741e                      JZ 0x0097565f
00975641  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
00975647  81c1cc030000              ADD ECX,0x3cc
0097564d  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00975653  50                        PUSH EAX
00975654  e8b79bb5ff                CALL 0x004cf210
00975659  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
0097565f  50                        PUSH EAX
00975660  8bce                      MOV ECX,ESI
00975662  8930                      MOV dword ptr [EAX],ESI
00975664  e88786b5ff                CALL 0x004cdcf0
00975669  8bb554ffffff              MOV ESI,dword ptr [EBP + 0xffffff54]
0097566f  46                        INC ESI
00975670  89b554ffffff              MOV dword ptr [EBP + 0xffffff54],ESI
00975676  83fe04                    CMP ESI,0x4
00975679  0f8cf1feffff              JL 0x00975570
0097567f  32c0                      XOR AL,AL
00975681  c7876005000000000000      MOV dword ptr [EDI + 0x560],0x0
0097568b  c6855bffffff01            MOV byte ptr [EBP + 0xffffff5b],0x1
00975692  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00975698  888500ffffff              MOV byte ptr [EBP + 0xffffff00],AL
0097569e  eb71                      JMP 0x00975711
009756a0  b804000000                MOV EAX,0x4
009756a5  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
009756ab  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
009756b0  8b0e                      MOV ECX,dword ptr [ESI]
009756b2  85c9                      TEST ECX,ECX
009756b4  740b                      JZ 0x009756c1
009756b6  8b01                      MOV EAX,dword ptr [ECX]
009756b8  ff5028                    CALL dword ptr [EAX + 0x28]
009756bb  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
009756c1  83c604                    ADD ESI,0x4
009756c4  83e801                    SUB EAX,0x1
009756c7  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
009756cd  75e1                      JNZ 0x009756b0
009756cf  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
009756d5  85c9                      TEST ECX,ECX
009756d7  7430                      JZ 0x00975709
009756d9  83bfe804000000            CMP dword ptr [EDI + 0x4e8],0x0
009756e0  742f                      JZ 0x00975711
009756e2  817928e8030000            CMP dword ptr [ECX + 0x28],0x3e8
009756e9  7526                      JNZ 0x00975711
009756eb  83792c32                  CMP dword ptr [ECX + 0x2c],0x32
009756ef  7520                      JNZ 0x00975711
009756f1  83793004                  CMP dword ptr [ECX + 0x30],0x4
009756f5  741a                      JZ 0x00975711
009756f7  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
009756fa  83f806                    CMP EAX,0x6
009756fd  7405                      JZ 0x00975704
009756ff  83f80f                    CMP EAX,0xf
00975702  750d                      JNZ 0x00975711
00975704  8b01                      MOV EAX,dword ptr [ECX]
00975706  ff5028                    CALL dword ptr [EAX + 0x28]
00975709  51                        PUSH ECX
0097570a  8bcf                      MOV ECX,EDI
0097570c  e80fa10000                CALL 0x0097f820
00975711  8db728040000              LEA ESI,[EDI + 0x428]
00975717  68d048c300                PUSH 0xc348d0
0097571c  8bd6                      MOV EDX,ESI
0097571e  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00975724  e8471aaaff                CALL 0x00417170
00975729  83c404                    ADD ESP,0x4
0097572c  8b08                      MOV ECX,dword ptr [EAX]
0097572e  0b4804                    OR ECX,dword ptr [EAX + 0x4]
00975731  750c                      JNZ 0x0097573f
00975733  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
00975736  0b480c                    OR ECX,dword ptr [EAX + 0xc]
00975739  0f84d6070000              JZ 0x00975f15
0097573f  80bd5bffffff00            CMP byte ptr [EBP + 0xffffff5b],0x0
00975746  0f85c9070000              JNZ 0x00975f15
0097574c  80bf1605000000            CMP byte ptr [EDI + 0x516],0x0
00975753  0f85bc070000              JNZ 0x00975f15
00975759  8b85c4feffff              MOV EAX,dword ptr [EBP + 0xfffffec4]
0097575f  8bbf80040000              MOV EDI,dword ptr [EDI + 0x480]
00975765  8bb084040000              MOV ESI,dword ptr [EAX + 0x484]
0097576b  8b80b0040000              MOV EAX,dword ptr [EAX + 0x4b0]
00975771  2bf7                      SUB ESI,EDI
00975773  c1fe03                    SAR ESI,0x3
00975776  f30f1048f8                MOVSS XMM1,dword ptr [EAX + -0x8]
0097577b  f30f5c48f0                SUBSS XMM1,dword ptr [EAX + -0x10]
00975780  f30f1040fc                MOVSS XMM0,dword ptr [EAX + -0x4]
00975785  f30f5c40f4                SUBSS XMM0,dword ptr [EAX + -0xc]
0097578a  f30f105cf7f8              MOVSS XMM3,dword ptr [EDI + ESI*0x8 + -0x8]
00975790  f30f1054f7fc              MOVSS XMM2,dword ptr [EDI + ESI*0x8 + -0x4]
00975796  f30f118d44ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM1
0097579e  f30f100f                  MOVSS XMM1,dword ptr [EDI]
009757a2  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
009757aa  f30f5ccb                  SUBSS XMM1,XMM3
009757ae  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
009757b3  f30f5cc2                  SUBSS XMM0,XMM2
009757b7  f30f119df0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM3
009757bf  f30f1195f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM2
009757c7  f30f59c9                  MULSS XMM1,XMM1
009757cb  f30f59c0                  MULSS XMM0,XMM0
009757cf  f30f58c1                  ADDSS XMM0,XMM1
009757d3  e87802acff                CALL 0x00435a50
009757d8  8b85c4feffff              MOV EAX,dword ptr [EBP + 0xfffffec4]
009757de  83ec0c                    SUB ESP,0xc
009757e1  f30f104cf7f8              MOVSS XMM1,dword ptr [EDI + ESI*0x8 + -0x8]
009757e7  054c030000                ADD EAX,0x34c
009757ec  f30f101d6caeba00          MOVSS XMM3,dword ptr [0x00baae6c]
009757f4  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
009757fc  f30f1044f7fc              MOVSS XMM0,dword ptr [EDI + ESI*0x8 + -0x4]
00975802  f30f5808                  ADDSS XMM1,dword ptr [EAX]
00975806  f30f584004                ADDSS XMM0,dword ptr [EAX + 0x4]
0097580b  8b3d7816c700              MOV EDI,dword ptr [0x00c71678]
00975811  c7442408000003c3          MOV dword ptr [ESP + 0x8],0xc3030000
00975819  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
0097581f  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00975825  c7442404000003c3          MOV dword ptr [ESP + 0x4],0xc3030000
0097582d  8b8f00830100              MOV ECX,dword ptr [EDI + 0x18300]
00975833  c70424000003c3            MOV dword ptr [ESP],0xc3030000
0097583a  50                        PUSH EAX
0097583b  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
00975841  f30f118d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM1
00975849  50                        PUSH EAX
0097584a  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00975852  e8f9d6e9ff                CALL 0x00812f50
00975857  33f6                      XOR ESI,ESI
00975859  0f1f8000000000            NOP dword ptr [EAX]
00975860  f30f101d68aeba00          MOVSS XMM3,dword ptr [0x00baae68]
00975868  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
0097586e  8b8f00830100              MOV ECX,dword ptr [EDI + 0x18300]
00975874  83ec0c                    SUB ESP,0xc
00975877  c7442408000002c3          MOV dword ptr [ESP + 0x8],0xc3020000
0097587f  c7442404000002c3          MOV dword ptr [ESP + 0x4],0xc3020000
00975887  c70424000002c3            MOV dword ptr [ESP],0xc3020000
0097588e  50                        PUSH EAX
0097588f  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00975895  50                        PUSH EAX
00975896  e845d9e9ff                CALL 0x008131e0
0097589b  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
009758a1  50                        PUSH EAX
009758a2  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
009758a8  e853ad0900                CALL 0x00a10600
009758ad  84c0                      TEST AL,AL
009758af  7526                      JNZ 0x009758d7
009758b1  f30f108520ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff20]
009758b9  46                        INC ESI
009758ba  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
009758c2  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
009758ca  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
009758d2  83fe04                    CMP ESI,0x4
009758d5  7289                      JC 0x00975860
009758d7  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
009758dd  8d8de0feffff              LEA ECX,[EBP + 0xfffffee0]
009758e3  e8c8ab0900                CALL 0x00a104b0
009758e8  8bbdc4feffff              MOV EDI,dword ptr [EBP + 0xfffffec4]
009758ee  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
009758f4  50                        PUSH EAX
009758f5  8bb738050000              MOV ESI,dword ptr [EDI + 0x538]
009758fb  e830ad0900                CALL 0x00a10630
00975900  84c0                      TEST AL,AL
00975902  0f84f9050000              JZ 0x00975f01
00975908  85f6                      TEST ESI,ESI
0097590a  0f85c5000000              JNZ 0x009759d5
00975910  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00975916  e875aa0900                CALL 0x00a10390
0097591b  6a01                      PUSH 0x1
0097591d  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
00975923  8d874c030000              LEA EAX,[EDI + 0x34c]
00975929  50                        PUSH EAX
0097592a  ffb758040000              PUSH dword ptr [EDI + 0x458]
00975930  d99d3cffffff              FSTP dword ptr [EBP + 0xffffff3c]
00975936  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0097593e  8d85e0feffff              LEA EAX,[EBP + 0xfffffee0]
00975944  51                        PUSH ECX
00975945  f30f110424                MOVSS dword ptr [ESP],XMM0
0097594a  50                        PUSH EAX
0097594b  ff772c                    PUSH dword ptr [EDI + 0x2c]
0097594e  e8bd99ffff                CALL 0x0096f310
00975953  83c41c                    ADD ESP,0x1c
00975956  8d8f38050000              LEA ECX,[EDI + 0x538]
0097595c  50                        PUSH EAX
0097595d  e86e98b5ff                CALL 0x004cf1d0
00975962  8bb738050000              MOV ESI,dword ptr [EDI + 0x538]
00975968  85f6                      TEST ESI,ESI
0097596a  0f849d010000              JZ 0x00975b0d
00975970  c6861805000001            MOV byte ptr [ESI + 0x518],0x1
00975977  8b8738050000              MOV EAX,dword ptr [EDI + 0x538]
0097597d  6a01                      PUSH 0x1
0097597f  57                        PUSH EDI
00975980  c680e404000001            MOV byte ptr [EAX + 0x4e4],0x1
00975987  8b8f38050000              MOV ECX,dword ptr [EDI + 0x538]
0097598d  e8de96ffff                CALL 0x0096f070
00975992  8b8f38050000              MOV ECX,dword ptr [EDI + 0x538]
00975998  57                        PUSH EDI
00975999  e88277ffff                CALL 0x0096d120
0097599e  80bf1505000000            CMP byte ptr [EDI + 0x515],0x0
009759a5  7408                      JZ 0x009759af
009759a7  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
009759ad  eb02                      JMP 0x009759b1
009759af  8bc7                      MOV EAX,EDI
009759b1  8b8f38050000              MOV ECX,dword ptr [EDI + 0x538]
009759b7  50                        PUSH EAX
009759b8  e8e338d3ff                CALL 0x006a92a0
009759bd  8bb738050000              MOV ESI,dword ptr [EDI + 0x538]
009759c3  c7876005000000000000      MOV dword ptr [EDI + 0x560],0x0
009759cd  85f6                      TEST ESI,ESI
009759cf  0f8438010000              JZ 0x00975b0d
009759d5  6a00                      PUSH 0x0
009759d7  57                        PUSH EDI
009759d8  8bce                      MOV ECX,ESI
009759da  e89196ffff                CALL 0x0096f070
009759df  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
009759e5  b9d048c300                MOV ECX,0xc348d0
009759ea  50                        PUSH EAX
009759eb  e810c8c1ff                CALL 0x00592200
009759f0  8bb738050000              MOV ESI,dword ptr [EDI + 0x538]
009759f6  8d8da0feffff              LEA ECX,[EBP + 0xfffffea0]
009759fc  50                        PUSH EAX
009759fd  8d9628040000              LEA EDX,[ESI + 0x428]
00975a03  e86817aaff                CALL 0x00417170
00975a08  83c404                    ADD ESP,0x4
00975a0b  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00975a11  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00975a14  0f118628040000            MOVUPS xmmword ptr [ESI + 0x428],XMM0
00975a1b  8b8738050000              MOV EAX,dword ptr [EDI + 0x538]
00975a21  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
00975a29  f30f11803c030000          MOVSS dword ptr [EAX + 0x33c],XMM0
00975a31  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
00975a39  f30f118040030000          MOVSS dword ptr [EAX + 0x340],XMM0
00975a41  e84aa90900                CALL 0x00a10390
00975a46  51                        PUSH ECX
00975a47  8b8f38050000              MOV ECX,dword ptr [EDI + 0x538]
00975a4d  d99d3cffffff              FSTP dword ptr [EBP + 0xffffff3c]
00975a53  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00975a5b  f30f110424                MOVSS dword ptr [ESP],XMM0
00975a60  e82b74ffff                CALL 0x0096ce90
00975a65  f30f1087d0040000          MOVSS XMM0,dword ptr [EDI + 0x4d0]
00975a6d  8d8738050000              LEA EAX,[EDI + 0x538]
00975a73  8b08                      MOV ECX,dword ptr [EAX]
00975a75  0f57c9                    XORPS XMM1,XMM1
00975a78  0f2fc1                    COMISS XMM0,XMM1
00975a7b  7636                      JBE 0x00975ab3
00975a7d  f30f5c8554ffffff          SUBSS XMM0,dword ptr [EBP + 0xffffff54]
00975a85  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00975a8b  c78554ffffff00002041      MOV dword ptr [EBP + 0xffffff54],0x41200000
00975a95  8d9554ffffff              LEA EDX,[EBP + 0xffffff54]
00975a9b  0f2f051ca8ba00            COMISS XMM0,dword ptr [0x00baa81c]
00975aa2  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00975aaa  0f46c2                    CMOVBE EAX,EDX
00975aad  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00975ab1  eb03                      JMP 0x00975ab6
00975ab3  0f57c0                    XORPS XMM0,XMM0
00975ab6  f30f1181d0040000          MOVSS dword ptr [ECX + 0x4d0],XMM0
00975abe  80bf1505000000            CMP byte ptr [EDI + 0x515],0x0
00975ac5  741d                      JZ 0x00975ae4
00975ac7  8b8738050000              MOV EAX,dword ptr [EDI + 0x538]
00975acd  c7804005000002000000      MOV dword ptr [EAX + 0x540],0x2
00975ad7  8b8738050000              MOV EAX,dword ptr [EDI + 0x538]
00975add  c6807101000000            MOV byte ptr [EAX + 0x171],0x0
00975ae4  8b8f38050000              MOV ECX,dword ptr [EDI + 0x538]
00975aea  80b95c04000000            CMP byte ptr [ECX + 0x45c],0x0
00975af1  7405                      JZ 0x00975af8
00975af3  8b01                      MOV EAX,dword ptr [ECX]
00975af5  ff500c                    CALL dword ptr [EAX + 0xc]
00975af8  32c0                      XOR AL,AL
00975afa  c6855bffffff01            MOV byte ptr [EBP + 0xffffff5b],0x1
00975b01  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00975b07  888500ffffff              MOV byte ptr [EBP + 0xffffff00],AL
00975b0d  8db728040000              LEA ESI,[EDI + 0x428]
00975b13  80bd4fffffff00            CMP byte ptr [EBP + 0xffffff4f],0x0
00975b1a  0f8526050000              JNZ 0x00976046
00975b20  68804bc300                PUSH 0xc34b80
00975b25  8bd6                      MOV EDX,ESI
00975b27  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00975b2d  e83e16aaff                CALL 0x00417170
00975b32  83c404                    ADD ESP,0x4
00975b35  8bc8                      MOV ECX,EAX
00975b37  e87416aaff                CALL 0x004171b0
00975b3c  84c0                      TEST AL,AL
00975b3e  0f84eb040000              JZ 0x0097602f
00975b44  80bd5bffffff00            CMP byte ptr [EBP + 0xffffff5b],0x0
00975b4b  0f85de040000              JNZ 0x0097602f
00975b51  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00975b57  c7853cffffffcdcccc3e      MOV dword ptr [EBP + 0xffffff3c],0x3ecccccd
00975b61  51                        PUSH ECX
00975b62  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
00975b68  51                        PUSH ECX
00975b69  8d8f4c030000              LEA ECX,[EDI + 0x34c]
00975b6f  e86ca90900                CALL 0x00a104e0
00975b74  6a00                      PUSH 0x0
00975b76  6840d7c500                PUSH 0xc5d740
00975b7b  68dcd5c500                PUSH 0xc5d5dc
00975b80  6a00                      PUSH 0x0
00975b82  ffb7e8040000              PUSH dword ptr [EDI + 0x4e8]
00975b88  e824ad1700                CALL 0x00af08b1
00975b8d  8b9780040000              MOV EDX,dword ptr [EDI + 0x480]
00975b93  83c414                    ADD ESP,0x14
00975b96  8b8f84040000              MOV ECX,dword ptr [EDI + 0x484]
00975b9c  2bca                      SUB ECX,EDX
00975b9e  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
00975ba4  c1f903                    SAR ECX,0x3
00975ba7  52                        PUSH EDX
00975ba8  f30f1044caf8              MOVSS XMM0,dword ptr [EDX + ECX*0x8 + -0x8]
00975bae  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00975bb6  f30f1044cafc              MOVSS XMM0,dword ptr [EDX + ECX*0x8 + -0x4]
00975bbc  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00975bc2  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
00975bca  e861a30900                CALL 0x00a0ff30
00975bcf  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00975bd7  33f6                      XOR ESI,ESI
00975bd9  a17816c700                MOV EAX,[0x00c71678]
00975bde  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
00975be6  0500830100                ADD EAX,0x18300
00975beb  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00975bf3  d99de4feffff              FSTP dword ptr [EBP + 0xfffffee4]
00975bf9  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
00975c01  c7853cffffff0000a041      MOV dword ptr [EBP + 0xffffff3c],0x41a00000
00975c0b  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
00975c11  660f6ec6                  MOVD XMM0,ESI
00975c15  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
00975c1b  0f5bc0                    CVTDQ2PS XMM0,XMM0
00975c1e  51                        PUSH ECX
00975c1f  f30f110424                MOVSS dword ptr [ESP],XMM0
00975c24  50                        PUSH EAX
00975c25  e826a70900                CALL 0x00a10350
00975c2a  83c408                    ADD ESP,0x8
00975c2d  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00975c33  51                        PUSH ECX
00975c34  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
00975c3a  51                        PUSH ECX
00975c3b  8bc8                      MOV ECX,EAX
00975c3d  e89ea80900                CALL 0x00a104e0
00975c42  8b8f80040000              MOV ECX,dword ptr [EDI + 0x480]
00975c48  8b8784040000              MOV EAX,dword ptr [EDI + 0x484]
00975c4e  2bc1                      SUB EAX,ECX
00975c50  c1f803                    SAR EAX,0x3
00975c53  51                        PUSH ECX
00975c54  c7042400000000            MOV dword ptr [ESP],0x0
00975c5b  f30f1044c1f8              MOVSS XMM0,dword ptr [ECX + EAX*0x8 + -0x8]
00975c61  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
00975c69  f30f1044c1fc              MOVSS XMM0,dword ptr [ECX + EAX*0x8 + -0x4]
00975c6f  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00975c75  8b8d5cffffff              MOV ECX,dword ptr [EBP + 0xffffff5c]
00975c7b  50                        PUSH EAX
00975c7c  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00975c82  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00975c8a  50                        PUSH EAX
00975c8b  8b09                      MOV ECX,dword ptr [ECX]
00975c8d  e8fe03acff                CALL 0x00436090
00975c92  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00975c98  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00975c9c  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
00975ca4  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00975ca9  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
00975caf  50                        PUSH EAX
00975cb0  8d8578feffff              LEA EAX,[EBP + 0xfffffe78]
00975cb6  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00975cbe  50                        PUSH EAX
00975cbf  e85ca70900                CALL 0x00a10420
00975cc4  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
00975cca  51                        PUSH ECX
00975ccb  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
00975cd1  51                        PUSH ECX
00975cd2  8bc8                      MOV ECX,EAX
00975cd4  e847a70900                CALL 0x00a10420
00975cd9  a17816c700                MOV EAX,[0x00c71678]
00975cde  ffb510ffffff              PUSH dword ptr [EBP + 0xffffff10]
00975ce4  0500830100                ADD EAX,0x18300
00975ce9  ffb50cffffff              PUSH dword ptr [EBP + 0xffffff0c]
00975cef  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
00975cf5  8b08                      MOV ECX,dword ptr [EAX]
00975cf7  e884aae7ff                CALL 0x007f0780
00975cfc  8b8f84010000              MOV ECX,dword ptr [EDI + 0x184]
00975d02  8bd0                      MOV EDX,EAX
00975d04  e85761d9ff                CALL 0x0070be60
00975d09  84c0                      TEST AL,AL
00975d0b  7412                      JZ 0x00975d1f
00975d0d  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
00975d13  50                        PUSH EAX
00975d14  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
00975d1a  e831a70900                CALL 0x00a10450
00975d1f  83c606                    ADD ESI,0x6
00975d22  81fe68010000              CMP ESI,0x168
00975d28  0f8ce3feffff              JL 0x00975c11
00975d2e  8b8780040000              MOV EAX,dword ptr [EDI + 0x480]
00975d34  8b9784040000              MOV EDX,dword ptr [EDI + 0x484]
00975d3a  2bd0                      SUB EDX,EAX
00975d3c  c1fa03                    SAR EDX,0x3
00975d3f  8d4aff                    LEA ECX,[EDX + -0x1]
00975d42  8d0cc8                    LEA ECX,[EAX + ECX*0x8]
00975d45  8d04d0                    LEA EAX,[EAX + EDX*0x8]
00975d48  83c0f0                    ADD EAX,-0x10
00975d4b  50                        PUSH EAX
00975d4c  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00975d52  50                        PUSH EAX
00975d53  e828a70900                CALL 0x00a10480
00975d58  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
00975d5e  e85da20900                CALL 0x00a0ffc0
00975d63  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00975d69  8bb554ffffff              MOV ESI,dword ptr [EBP + 0xffffff54]
00975d6f  c7855cffffff00000040      MOV dword ptr [EBP + 0xffffff5c],0x40000000
00975d79  85c0                      TEST EAX,EAX
00975d7b  7463                      JZ 0x00975de0
00975d7d  81782804010000            CMP dword ptr [EAX + 0x28],0x104
00975d84  755a                      JNZ 0x00975de0
00975d86  83783002                  CMP dword ptr [EAX + 0x30],0x2
00975d8a  7554                      JNZ 0x00975de0
00975d8c  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
00975d92  50                        PUSH EAX
00975d93  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00975d99  e892a10900                CALL 0x00a0ff30
00975d9e  f30f100de0aaba00          MOVSS XMM1,dword ptr [0x00baaae0]
00975da6  0f57c0                    XORPS XMM0,XMM0
00975da9  d99d3cffffff              FSTP dword ptr [EBP + 0xffffff3c]
00975daf  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
00975db7  e8e494abff                CALL 0x0042f2a0
00975dbc  f30f5ec1                  DIVSS XMM0,XMM1
00975dc0  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00975dc8  f30f5cc8                  SUBSS XMM1,XMM0
00975dcc  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
00975dd4  f30f5cc1                  SUBSS XMM0,XMM1
00975dd8  f30f11855cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM0
00975de0  f30f108d20ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff20]
00975de8  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00975dee  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
00975df6  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
00975dfc  f30f598df0feffff          MULSS XMM1,dword ptr [EBP + 0xfffffef0]
00975e04  50                        PUSH EAX
00975e05  f30f5985f4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffef4]
00975e0d  8d8578feffff              LEA EAX,[EBP + 0xfffffe78]
00975e13  50                        PUSH EAX
00975e14  f30f58c8                  ADDSS XMM1,XMM0
00975e18  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
00975e20  e8bba60900                CALL 0x00a104e0
00975e25  8d8d5cffffff              LEA ECX,[EBP + 0xffffff5c]
00975e2b  51                        PUSH ECX
00975e2c  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
00975e32  51                        PUSH ECX
00975e33  8bc8                      MOV ECX,EAX
00975e35  e8a6a60900                CALL 0x00a104e0
00975e3a  50                        PUSH EAX
00975e3b  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00975e41  50                        PUSH EAX
00975e42  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00975e48  e833a60900                CALL 0x00a10480
00975e4d  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
00975e53  e838a50900                CALL 0x00a10390
00975e58  d99d5cffffff              FSTP dword ptr [EBP + 0xffffff5c]
00975e5e  85f6                      TEST ESI,ESI
00975e60  0f85db000000              JNZ 0x00975f41
00975e66  6840b6c700                PUSH 0xc7b640
00975e6b  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
00975e71  e8baa70900                CALL 0x00a10630
00975e76  84c0                      TEST AL,AL
00975e78  0f84c8010000              JZ 0x00976046
00975e7e  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
00975e86  8d874c030000              LEA EAX,[EDI + 0x34c]
00975e8c  6a01                      PUSH 0x1
00975e8e  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
00975e94  50                        PUSH EAX
00975e95  ffb758040000              PUSH dword ptr [EDI + 0x458]
00975e9b  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
00975ea1  51                        PUSH ECX
00975ea2  f30f110424                MOVSS dword ptr [ESP],XMM0
00975ea7  50                        PUSH EAX
00975ea8  ff772c                    PUSH dword ptr [EDI + 0x2c]
00975eab  e86094ffff                CALL 0x0096f310
00975eb0  8bf0                      MOV ESI,EAX
00975eb2  83c41c                    ADD ESP,0x1c
00975eb5  89b554ffffff              MOV dword ptr [EBP + 0xffffff54],ESI
00975ebb  85f6                      TEST ESI,ESI
00975ebd  0f8483010000              JZ 0x00976046
00975ec3  8bd6                      MOV EDX,ESI
00975ec5  8d8fe8040000              LEA ECX,[EDI + 0x4e8]
00975ecb  e880fcd3ff                CALL 0x006b5b50
00975ed0  6a01                      PUSH 0x1
00975ed2  57                        PUSH EDI
00975ed3  8bce                      MOV ECX,ESI
00975ed5  c686e404000001            MOV byte ptr [ESI + 0x4e4],0x1
00975edc  c6861805000001            MOV byte ptr [ESI + 0x518],0x1
00975ee3  e88891ffff                CALL 0x0096f070
00975ee8  57                        PUSH EDI
00975ee9  8bce                      MOV ECX,ESI
00975eeb  e83072ffff                CALL 0x0096d120
00975ef0  80bf1505000000            CMP byte ptr [EDI + 0x515],0x0
00975ef7  7434                      JZ 0x00975f2d
00975ef9  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00975eff  eb2e                      JMP 0x00975f2f
00975f01  85f6                      TEST ESI,ESI
00975f03  0f8404fcffff              JZ 0x00975b0d
00975f09  8b06                      MOV EAX,dword ptr [ESI]
00975f0b  8bce                      MOV ECX,ESI
00975f0d  ff5028                    CALL dword ptr [EAX + 0x28]
00975f10  e9f8fbffff                JMP 0x00975b0d
00975f15  8b8f38050000              MOV ECX,dword ptr [EDI + 0x538]
00975f1b  85c9                      TEST ECX,ECX
00975f1d  0f84f0fbffff              JZ 0x00975b13
00975f23  8b01                      MOV EAX,dword ptr [ECX]
00975f25  ff5028                    CALL dword ptr [EAX + 0x28]
00975f28  e9e6fbffff                JMP 0x00975b13
00975f2d  8bc7                      MOV EAX,EDI
00975f2f  50                        PUSH EAX
00975f30  8bce                      MOV ECX,ESI
00975f32  e86933d3ff                CALL 0x006a92a0
00975f37  c7876005000000000000      MOV dword ptr [EDI + 0x560],0x0
00975f41  6a00                      PUSH 0x0
00975f43  57                        PUSH EDI
00975f44  8bce                      MOV ECX,ESI
00975f46  e82591ffff                CALL 0x0096f070
00975f4b  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
00975f51  b9804bc300                MOV ECX,0xc34b80
00975f56  50                        PUSH EAX
00975f57  e8a4c2c1ff                CALL 0x00592200
00975f5c  50                        PUSH EAX
00975f5d  8d9628040000              LEA EDX,[ESI + 0x428]
00975f63  8d8da0feffff              LEA ECX,[EBP + 0xfffffea0]
00975f69  e80212aaff                CALL 0x00417170
00975f6e  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00975f71  0f118628040000            MOVUPS xmmword ptr [ESI + 0x428],XMM0
00975f78  8bb554ffffff              MOV ESI,dword ptr [EBP + 0xffffff54]
00975f7e  8bce                      MOV ECX,ESI
00975f80  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
00975f88  f30f11863c030000          MOVSS dword ptr [ESI + 0x33c],XMM0
00975f90  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
00975f98  f30f118640030000          MOVSS dword ptr [ESI + 0x340],XMM0
00975fa0  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
00975fa8  f30f110424                MOVSS dword ptr [ESP],XMM0
00975fad  e8de6effff                CALL 0x0096ce90
00975fb2  f30f1087d0040000          MOVSS XMM0,dword ptr [EDI + 0x4d0]
00975fba  0f57c9                    XORPS XMM1,XMM1
00975fbd  0f2fc1                    COMISS XMM0,XMM1
00975fc0  7636                      JBE 0x00975ff8
00975fc2  f30f5c85e4feffff          SUBSS XMM0,dword ptr [EBP + 0xfffffee4]
00975fca  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00975fd0  c78554ffffff00002041      MOV dword ptr [EBP + 0xffffff54],0x41200000
00975fda  8d8d54ffffff              LEA ECX,[EBP + 0xffffff54]
00975fe0  0f2f051ca8ba00            COMISS XMM0,dword ptr [0x00baa81c]
00975fe7  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00975fef  0f46c1                    CMOVBE EAX,ECX
00975ff2  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00975ff6  eb03                      JMP 0x00975ffb
00975ff8  0f57c0                    XORPS XMM0,XMM0
00975ffb  f30f1186d0040000          MOVSS dword ptr [ESI + 0x4d0],XMM0
00976003  80bf1505000000            CMP byte ptr [EDI + 0x515],0x0
0097600a  7411                      JZ 0x0097601d
0097600c  c7864005000002000000      MOV dword ptr [ESI + 0x540],0x2
00976016  c6867101000000            MOV byte ptr [ESI + 0x171],0x0
0097601d  80be5c04000000            CMP byte ptr [ESI + 0x45c],0x0
00976024  7420                      JZ 0x00976046
00976026  8b06                      MOV EAX,dword ptr [ESI]
00976028  8bce                      MOV ECX,ESI
0097602a  ff500c                    CALL dword ptr [EAX + 0xc]
0097602d  eb17                      JMP 0x00976046
0097602f  8b8fe8040000              MOV ECX,dword ptr [EDI + 0x4e8]
00976035  85c9                      TEST ECX,ECX
00976037  7405                      JZ 0x0097603e
00976039  8b01                      MOV EAX,dword ptr [ECX]
0097603b  ff5028                    CALL dword ptr [EAX + 0x28]
0097603e  51                        PUSH ECX
0097603f  8bcf                      MOV ECX,EDI
00976041  e8da970000                CALL 0x0097f820
00976046  80bf1605000000            CMP byte ptr [EDI + 0x516],0x0
0097604d  740c                      JZ 0x0097605b
0097604f  c7876005000000000000      MOV dword ptr [EDI + 0x560],0x0
00976059  eb24                      JMP 0x0097607f
0097605b  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
00976061  b901000000                MOV ECX,0x1
00976066  83bf6005000000            CMP dword ptr [EDI + 0x560],0x0
0097606d  0fb6c0                    MOVZX EAX,AL
00976070  0f4fc1                    CMOVG EAX,ECX
00976073  898514ffffff              MOV dword ptr [EBP + 0xffffff14],EAX
00976079  888500ffffff              MOV byte ptr [EBP + 0xffffff00],AL
0097607f  ffb500ffffff              PUSH dword ptr [EBP + 0xffffff00]
00976085  8bcf                      MOV ECX,EDI
00976087  e8d49d0000                CALL 0x0097fe60
0097608c  8b97c0030000              MOV EDX,dword ptr [EDI + 0x3c0]
00976092  33f6                      XOR ESI,ESI
00976094  85d2                      TEST EDX,EDX
00976096  746a                      JZ 0x00976102
00976098  a17816c700                MOV EAX,[0x00c71678]
0097609d  8b8a40030000              MOV ECX,dword ptr [EDX + 0x340]
009760a3  898d24ffffff              MOV dword ptr [EBP + 0xffffff24],ECX
009760a9  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
009760af  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
009760b5  8b823c030000              MOV EAX,dword ptr [EDX + 0x33c]
009760bb  898520ffffff              MOV dword ptr [EBP + 0xffffff20],EAX
009760c1  8d824c030000              LEA EAX,[EDX + 0x34c]
009760c7  50                        PUSH EAX
009760c8  8d8578feffff              LEA EAX,[EBP + 0xfffffe78]
009760ce  50                        PUSH EAX
009760cf  e84ca30900                CALL 0x00a10420
009760d4  8bce                      MOV ECX,ESI
009760d6  f30f1000                  MOVSS XMM0,dword ptr [EAX]
009760da  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
009760e2  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
009760e7  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
009760ef  ffb524ffffff              PUSH dword ptr [EBP + 0xffffff24]
009760f5  ffb520ffffff              PUSH dword ptr [EBP + 0xffffff20]
009760fb  e880a6e7ff                CALL 0x007f0780
00976100  8bf0                      MOV ESI,EAX
00976102  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00976105  83f901                    CMP ECX,0x1
00976108  7422                      JZ 0x0097612c
0097610a  83f906                    CMP ECX,0x6
0097610d  741d                      JZ 0x0097612c
0097610f  83f909                    CMP ECX,0x9
00976112  7418                      JZ 0x0097612c
00976114  83f90b                    CMP ECX,0xb
00976117  7413                      JZ 0x0097612c
00976119  83f90c                    CMP ECX,0xc
0097611c  740e                      JZ 0x0097612c
0097611e  83f90e                    CMP ECX,0xe
00976121  7409                      JZ 0x0097612c
00976123  83f90f                    CMP ECX,0xf
00976126  0f8597020000              JNZ 0x009763c3
0097612c  f30f1087e4000000          MOVSS XMM0,dword ptr [EDI + 0xe4]
00976134  0f2f05d0a2ba00            COMISS XMM0,dword ptr [0x00baa2d0]
0097613b  0f8682020000              JBE 0x009763c3
00976141  837f3401                  CMP dword ptr [EDI + 0x34],0x1
00976145  0f8578020000              JNZ 0x009763c3
0097614b  f30f1087d0040000          MOVSS XMM0,dword ptr [EDI + 0x4d0]
00976153  0f2e05e49fba00            UCOMISS XMM0,dword ptr [0x00ba9fe4]
0097615a  9f                        LAHF
0097615b  f6c444                    TEST AH,0x44
0097615e  7b11                      JNP 0x00976171
00976160  85f6                      TEST ESI,ESI
00976162  0f845b020000              JZ 0x009763c3
00976168  83fe01                    CMP ESI,0x1
0097616b  0f8452020000              JZ 0x009763c3
00976171  80bf7501000000            CMP byte ptr [EDI + 0x175],0x0
00976178  0f8545020000              JNZ 0x009763c3
0097617e  8d4f48                    LEA ECX,[EDI + 0x48]
00976181  6a20                      PUSH 0x20
00976183  e808c9cdff                CALL 0x00652a90
00976188  84c0                      TEST AL,AL
0097618a  0f8533020000              JNZ 0x009763c3
00976190  8b8784040000              MOV EAX,dword ptr [EDI + 0x484]
00976196  8b9780040000              MOV EDX,dword ptr [EDI + 0x480]
0097619c  2bc2                      SUB EAX,EDX
0097619e  c1f803                    SAR EAX,0x3
009761a1  83f802                    CMP EAX,0x2
009761a4  0f8219020000              JC 0x009763c3
009761aa  8d48fe                    LEA ECX,[EAX + -0x2]
009761ad  8d0cca                    LEA ECX,[EDX + ECX*0x8]
009761b0  83ea08                    SUB EDX,0x8
009761b3  8d04c2                    LEA EAX,[EDX + EAX*0x8]
009761b6  50                        PUSH EAX
009761b7  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
009761bd  50                        PUSH EAX
009761be  e8bda20900                CALL 0x00a10480
009761c3  8bc8                      MOV ECX,EAX
009761c5  e8c6a10900                CALL 0x00a10390
009761ca  d99d3cffffff              FSTP dword ptr [EBP + 0xffffff3c]
009761d0  e88b8dd7ff                CALL 0x006eef60
009761d5  660f6ec0                  MOVD XMM0,EAX
009761d9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
009761dd  c1e81f                    SHR EAX,0x1f
009761e0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
009761e9  660f5ac0                  CVTPD2PS XMM0,XMM0
009761ed  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
009761f5  f30f590578aaba00          MULSS XMM0,dword ptr [0x00baaa78]
009761fd  f30f58853cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff3c]
00976205  f30f5c05b4a9ba00          SUBSS XMM0,dword ptr [0x00baa9b4]
0097620d  e82ec5d0ff                CALL 0x00682740
00976212  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0097621a  e8418dd7ff                CALL 0x006eef60
0097621f  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00976227  51                        PUSH ECX
00976228  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
0097622e  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00976234  f30f110424                MOVSS dword ptr [ESP],XMM0
00976239  50                        PUSH EAX
0097623a  e811a10900                CALL 0x00a10350
0097623f  83c408                    ADD ESP,0x8
00976242  8bf0                      MOV ESI,EAX
00976244  e8178dd7ff                CALL 0x006eef60
00976249  8bce                      MOV ECX,ESI
0097624b  660f6ec0                  MOVD XMM0,EAX
0097624f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00976253  c1e81f                    SHR EAX,0x1f
00976256  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0097625f  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00976265  50                        PUSH EAX
00976266  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
0097626c  50                        PUSH EAX
0097626d  660f5ac0                  CVTPD2PS XMM0,XMM0
00976271  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00976279  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
00976281  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
00976289  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00976291  e84aa20900                CALL 0x00a104e0
00976296  8b8f84040000              MOV ECX,dword ptr [EDI + 0x484]
0097629c  8b9780040000              MOV EDX,dword ptr [EDI + 0x480]
009762a2  2bca                      SUB ECX,EDX
009762a4  c1f903                    SAR ECX,0x3
009762a7  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
009762ad  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
009762b3  50                        PUSH EAX
009762b4  8d3cca                    LEA EDI,[EDX + ECX*0x8]
009762b7  e8b48dd0ff                CALL 0x0067f070
009762bc  83c404                    ADD ESP,0x4
009762bf  8bf0                      MOV ESI,EAX
009762c1  e89a8cd7ff                CALL 0x006eef60
009762c6  8bce                      MOV ECX,ESI
009762c8  660f6ec0                  MOVD XMM0,EAX
009762cc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
009762d0  c1e81f                    SHR EAX,0x1f
009762d3  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
009762dc  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
009762e2  50                        PUSH EAX
009762e3  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
009762e9  50                        PUSH EAX
009762ea  660f5ac0                  CVTPD2PS XMM0,XMM0
009762ee  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
009762f6  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
009762fe  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00976306  e8d5a10900                CALL 0x00a104e0
0097630b  50                        PUSH EAX
0097630c  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
00976312  50                        PUSH EAX
00976313  8d4ff8                    LEA ECX,[EDI + -0x8]
00976316  e805a10900                CALL 0x00a10420
0097631b  ffb554ffffff              PUSH dword ptr [EBP + 0xffffff54]
00976321  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00976327  6a00                      PUSH 0x0
00976329  6a00                      PUSH 0x0
0097632b  ffb55cffffff              PUSH dword ptr [EBP + 0xffffff5c]
00976331  50                        PUSH EAX
00976332  6a46                      PUSH 0x46
00976334  68e8030000                PUSH 0x3e8
00976339  e8e227abff                CALL 0x00428b20
0097633e  8bbdc4feffff              MOV EDI,dword ptr [EBP + 0xfffffec4]
00976344  8bf0                      MOV ESI,EAX
00976346  89b53cffffff              MOV dword ptr [EBP + 0xffffff3c],ESI
0097634c  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00976352  85c9                      TEST ECX,ECX
00976354  7433                      JZ 0x00976389
00976356  81ec14010000              SUB ESP,0x114
0097635c  83c148                    ADD ECX,0x48
0097635f  8bd4                      MOV EDX,ESP
00976361  51                        PUSH ECX
00976362  8bca                      MOV ECX,EDX
00976364  e82713a9ff                CALL 0x00407690
00976369  8d4e48                    LEA ECX,[ESI + 0x48]
0097636c  e81f1ba9ff                CALL 0x00407e90
00976371  b903000000                MOV ECX,0x3
00976376  e8958cd0ff                CALL 0x0067f010
0097637b  50                        PUSH EAX
0097637c  688034b600                PUSH 0xb63480
00976381  8d4e48                    LEA ECX,[ESI + 0x48]
00976384  e85743a9ff                CALL 0x0040a6e0
00976389  8b874c030000              MOV EAX,dword ptr [EDI + 0x34c]
0097638f  8bce                      MOV ECX,ESI
00976391  89864c030000              MOV dword ptr [ESI + 0x34c],EAX
00976397  8b8750030000              MOV EAX,dword ptr [EDI + 0x350]
0097639d  6a01                      PUSH 0x1
0097639f  898650030000              MOV dword ptr [ESI + 0x350],EAX
009763a5  8b06                      MOV EAX,dword ptr [ESI]
009763a7  6a00                      PUSH 0x0
009763a9  68ff000000                PUSH 0xff
009763ae  6aff                      PUSH -0x1
009763b0  8b503c                    MOV EDX,dword ptr [EAX + 0x3c]
009763b3  8d87f0000000              LEA EAX,[EDI + 0xf0]
009763b9  50                        PUSH EAX
009763ba  ffd2                      CALL EDX
009763bc  8b06                      MOV EAX,dword ptr [ESI]
009763be  8bce                      MOV ECX,ESI
009763c0  ff500c                    CALL dword ptr [EAX + 0xc]
009763c3  80bf5d04000000            CMP byte ptr [EDI + 0x45d],0x0
009763ca  0f8456090000              JZ 0x00976d26
009763d0  68c04ac300                PUSH 0xc34ac0
009763d5  8d9728040000              LEA EDX,[EDI + 0x428]
009763db  8d8d78fdffff              LEA ECX,[EBP + 0xfffffd78]
009763e1  e88a0daaff                CALL 0x00417170
009763e6  83c404                    ADD ESP,0x4
009763e9  8bc8                      MOV ECX,EAX
009763eb  e8c00daaff                CALL 0x004171b0
009763f0  84c0                      TEST AL,AL
009763f2  0f842e090000              JZ 0x00976d26
009763f8  ff7720                    PUSH dword ptr [EDI + 0x20]
009763fb  8bcf                      MOV ECX,EDI
009763fd  6a05                      PUSH 0x5
009763ff  e80c63d3ff                CALL 0x006ac710
00976404  84c0                      TEST AL,AL
00976406  0f841a090000              JZ 0x00976d26
0097640c  8b8784040000              MOV EAX,dword ptr [EDI + 0x484]
00976412  51                        PUSH ECX
00976413  c7042400007041            MOV dword ptr [ESP],0x41700000
0097641a  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00976420  51                        PUSH ECX
00976421  f30f1040f8                MOVSS XMM0,dword ptr [EAX + -0x8]
00976426  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
0097642c  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
00976434  f30f1040fc                MOVSS XMM0,dword ptr [EAX + -0x4]
00976439  a17816c700                MOV EAX,[0x00c71678]
0097643e  51                        PUSH ECX
0097643f  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
00976447  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0097644d  e83efcabff                CALL 0x00436090
00976452  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00976456  f30f118544ffffff          MOVSS dword ptr [EBP + 0xffffff44],XMM0
0097645e  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00976463  f30f118548ffffff          MOVSS dword ptr [EBP + 0xffffff48],XMM0
0097646b  e8f08ad7ff                CALL 0x006eef60
00976470  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00976476  6a00                      PUSH 0x0
00976478  68acd5c500                PUSH 0xc5d5ac
0097647d  68dcd5c500                PUSH 0xc5d5dc
00976482  6a00                      PUSH 0x0
00976484  50                        PUSH EAX
00976485  6a00                      PUSH 0x0
00976487  ffb7c8030000              PUSH dword ptr [EDI + 0x3c8]
0097648d  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
00976493  6840b6c700                PUSH 0xc7b640
00976498  50                        PUSH EAX
00976499  6a35                      PUSH 0x35
0097649b  68e8030000                PUSH 0x3e8
009764a0  e87b26abff                CALL 0x00428b20
009764a5  50                        PUSH EAX
009764a6  e806a41700                CALL 0x00af08b1
009764ab  83c414                    ADD ESP,0x14
009764ae  c7853cffffffcdcccc3e      MOV dword ptr [EBP + 0xffffff3c],0x3ecccccd
009764b8  8bf0                      MOV ESI,EAX
009764ba  b93c79c300                MOV ECX,0xc3793c
009764bf  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
009764c5  50                        PUSH EAX
009764c6  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
009764cc  50                        PUSH EAX
009764cd  e80ea00900                CALL 0x00a104e0
009764d2  8b08                      MOV ECX,dword ptr [EAX]
009764d4  898ee4000000              MOV dword ptr [ESI + 0xe4],ECX
009764da  8bce                      MOV ECX,ESI
009764dc  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
009764df  8986e8000000              MOV dword ptr [ESI + 0xe8],EAX
009764e5  8b06                      MOV EAX,dword ptr [ESI]
009764e7  ff500c                    CALL dword ptr [EAX + 0xc]
009764ea  e937080000                JMP 0x00976d26
009764ef  8bcf                      MOV ECX,EDI
009764f1  c6871605000000            MOV byte ptr [EDI + 0x516],0x0
009764f8  e83369ffff                CALL 0x0096ce30
009764fd  84c0                      TEST AL,AL
009764ff  7520                      JNZ 0x00976521
00976501  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00976504  83f802                    CMP EAX,0x2
00976507  7418                      JZ 0x00976521
00976509  83f80a                    CMP EAX,0xa
0097650c  7413                      JZ 0x00976521
0097650e  83f805                    CMP EAX,0x5
00976511  740e                      JZ 0x00976521
00976513  83f807                    CMP EAX,0x7
00976516  7409                      JZ 0x00976521
00976518  83f808                    CMP EAX,0x8
0097651b  0f8505080000              JNZ 0x00976d26
00976521  8d874c030000              LEA EAX,[EDI + 0x34c]
00976527  50                        PUSH EAX
00976528  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0097652e  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00976534  50                        PUSH EAX
00976535  e8e69e0900                CALL 0x00a10420
0097653a  f30f10871c040000          MOVSS XMM0,dword ptr [EDI + 0x41c]
00976542  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00976548  51                        PUSH ECX
00976549  f30f110424                MOVSS dword ptr [ESP],XMM0
0097654e  50                        PUSH EAX
0097654f  e8fc9d0900                CALL 0x00a10350
00976554  8b8784010000              MOV EAX,dword ptr [EDI + 0x184]
0097655a  83c408                    ADD ESP,0x8
0097655d  83f806                    CMP EAX,0x6
00976560  7561                      JNZ 0x009765c3
00976562  a17816c700                MOV EAX,[0x00c71678]
00976567  8d953cffffff              LEA EDX,[EBP + 0xffffff3c]
0097656d  8d8d78feffff              LEA ECX,[EBP + 0xfffffe78]
00976573  c7853cffffff00008040      MOV dword ptr [EBP + 0xffffff3c],0x40800000
0097657d  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00976583  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00976589  50                        PUSH EAX
0097658a  e8410caaff                CALL 0x004171d0
0097658f  83c404                    ADD ESP,0x4
00976592  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
00976598  50                        PUSH EAX
00976599  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
0097659f  50                        PUSH EAX
009765a0  e8db9e0900                CALL 0x00a10480
009765a5  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
009765ab  51                        PUSH ECX
009765ac  50                        PUSH EAX
009765ad  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
009765b3  8bce                      MOV ECX,ESI
009765b5  50                        PUSH EAX
009765b6  e885a5e7ff                CALL 0x007f0b40
009765bb  8db7d8040000              LEA ESI,[EDI + 0x4d8]
009765c1  eb7a                      JMP 0x0097663d
009765c3  8db7d8040000              LEA ESI,[EDI + 0x4d8]
009765c9  89b55cffffff              MOV dword ptr [EBP + 0xffffff5c],ESI
009765cf  83f803                    CMP EAX,0x3
009765d2  7533                      JNZ 0x00976607
009765d4  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
009765da  8bcf                      MOV ECX,EDI
009765dc  50                        PUSH EAX
009765dd  8d873c030000              LEA EAX,[EDI + 0x33c]
009765e3  50                        PUSH EAX
009765e4  8d8578feffff              LEA EAX,[EBP + 0xfffffe78]
009765ea  50                        PUSH EAX
009765eb  e88096ffff                CALL 0x0096fc70
009765f0  8d8f4c030000              LEA ECX,[EDI + 0x34c]
009765f6  51                        PUSH ECX
009765f7  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
009765fd  51                        PUSH ECX
009765fe  8bc8                      MOV ECX,EAX
00976600  e81b9e0900                CALL 0x00a10420
00976605  eb3c                      JMP 0x00976643
00976607  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
0097660d  c7853cffffff00007a44      MOV dword ptr [EBP + 0xffffff3c],0x447a0000
00976617  50                        PUSH EAX
00976618  8d8578feffff              LEA EAX,[EBP + 0xfffffe78]
0097661e  50                        PUSH EAX
0097661f  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00976625  e8b69e0900                CALL 0x00a104e0
0097662a  50                        PUSH EAX
0097662b  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00976631  50                        PUSH EAX
00976632  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
00976638  e8e39d0900                CALL 0x00a10420
0097663d  89b55cffffff              MOV dword ptr [EBP + 0xffffff5c],ESI
00976643  8b08                      MOV ECX,dword ptr [EAX]
00976645  890e                      MOV dword ptr [ESI],ECX
00976647  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0097664c  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
00976651  f30f1087d0040000          MOVSS XMM0,dword ptr [EDI + 0x4d0]
00976659  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00976660  0f868f000000              JBE 0x009766f5
00976666  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0097666c  8bce                      MOV ECX,ESI
0097666e  50                        PUSH EAX
0097666f  e81c990900                CALL 0x00a0ff90
00976674  f30f1097d0040000          MOVSS XMM2,dword ptr [EDI + 0x4d0]
0097667c  0f28c2                    MOVAPS XMM0,XMM2
0097667f  f30f59c2                  MULSS XMM0,XMM2
00976683  d99d3cffffff              FSTP dword ptr [EBP + 0xffffff3c]
00976689  f30f108d3cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff3c]
00976691  0f2fc8                    COMISS XMM1,XMM0
00976694  765f                      JBE 0x009766f5
00976696  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0097669c  50                        PUSH EAX
0097669d  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
009766a3  50                        PUSH EAX
009766a4  8d8fd8040000              LEA ECX,[EDI + 0x4d8]
009766aa  e8d19d0900                CALL 0x00a10480
009766af  f30f1087d0040000          MOVSS XMM0,dword ptr [EDI + 0x4d0]
009766b7  51                        PUSH ECX
009766b8  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
009766be  f30f110424                MOVSS dword ptr [ESP],XMM0
009766c3  51                        PUSH ECX
009766c4  8bc8                      MOV ECX,EAX
009766c6  e8359a0900                CALL 0x00a10100
009766cb  50                        PUSH EAX
009766cc  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
009766d2  50                        PUSH EAX
009766d3  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
009766d9  e8429d0900                CALL 0x00a10420
009766de  8bb55cffffff              MOV ESI,dword ptr [EBP + 0xffffff5c]
009766e4  8b08                      MOV ECX,dword ptr [EAX]
009766e6  898fd8040000              MOV dword ptr [EDI + 0x4d8],ECX
009766ec  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
009766ef  8987dc040000              MOV dword ptr [EDI + 0x4dc],EAX
009766f5  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
009766f8  83f806                    CMP EAX,0x6
009766fb  7405                      JZ 0x00976702
009766fd  83f80f                    CMP EAX,0xf
00976700  7509                      JNZ 0x0097670b
00976702  817f3412010000            CMP dword ptr [EDI + 0x34],0x112
00976709  7405                      JZ 0x00976710
0097670b  83f80d                    CMP EAX,0xd
0097670e  7533                      JNZ 0x00976743
00976710  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00976716  8bce                      MOV ECX,ESI
00976718  50                        PUSH EAX
00976719  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0097671f  50                        PUSH EAX
00976720  e85b9d0900                CALL 0x00a10480
00976725  51                        PUSH ECX
00976726  8d8dfcfeffff              LEA ECX,[EBP + 0xfffffefc]
0097672c  c704240000c842            MOV dword ptr [ESP],0x42c80000
00976733  51                        PUSH ECX
00976734  8bc8                      MOV ECX,EAX
00976736  e8c5990900                CALL 0x00a10100
0097673b  50                        PUSH EAX
0097673c  8bce                      MOV ECX,ESI
0097673e  e80d9d0900                CALL 0x00a10450
00976743  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00976746  83f801                    CMP EAX,0x1
00976749  0f8494050000              JZ 0x00976ce3
0097674f  83f803                    CMP EAX,0x3
00976752  0f848b050000              JZ 0x00976ce3
00976758  a17816c700                MOV EAX,[0x00c71678]
0097675d  0f57c0                    XORPS XMM0,XMM0
00976760  6a00                      PUSH 0x0
00976762  6a00                      PUSH 0x0
00976764  6aff                      PUSH -0x1
00976766  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0097676c  0f57d2                    XORPS XMM2,XMM2
0097676f  68bc000000                PUSH 0xbc
00976774  68e8030000                PUSH 0x3e8
00976779  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
0097677f  c785e4feffff00000000      MOV dword ptr [EBP + 0xfffffee4],0x0
00976789  81c118120000              ADD ECX,0x1218
0097678f  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00976797  50                        PUSH EAX
00976798  f30f119520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM2
009767a0  e8bb47aaff                CALL 0x0041af60
009767a5  33c0                      XOR EAX,EAX
009767a7  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
009767ae  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
009767b4  3985bcfeffff              CMP dword ptr [EBP + 0xfffffebc],EAX
009767ba  0f8602050000              JBE 0x00976cc2
009767c0  8b8db4feffff              MOV ECX,dword ptr [EBP + 0xfffffeb4]
009767c6  8b0c81                    MOV ECX,dword ptr [ECX + EAX*0x4]
009767c9  e852c1b2ff                CALL 0x004a2920
009767ce  8bf0                      MOV ESI,EAX
009767d0  85f6                      TEST ESI,ESI
009767d2  0f84c1010000              JZ 0x00976999
009767d8  f30f108674040000          MOVSS XMM0,dword ptr [ESI + 0x474]
009767e0  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
009767e6  51                        PUSH ECX
009767e7  f30f110424                MOVSS dword ptr [ESP],XMM0
009767ec  50                        PUSH EAX
009767ed  e85e9b0900                CALL 0x00a10350
009767f2  83c408                    ADD ESP,0x8
009767f5  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
009767fb  51                        PUSH ECX
009767fc  8d8d78feffff              LEA ECX,[EBP + 0xfffffe78]
00976802  51                        PUSH ECX
00976803  8d8fd8040000              LEA ECX,[EDI + 0x4d8]
00976809  e8729c0900                CALL 0x00a10480
0097680e  f30f108d48ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff48]
00976816  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
0097681e  f30f594804                MULSS XMM1,dword ptr [EAX + 0x4]
00976823  f30f5900                  MULSS XMM0,dword ptr [EAX]
00976827  f30f58c8                  ADDSS XMM1,XMM0
0097682b  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
00976832  0f8361010000              JNC 0x00976999
00976838  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
0097683e  8d953cffffff              LEA EDX,[EBP + 0xffffff3c]
00976844  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
0097684a  898598feffff              MOV dword ptr [EBP + 0xfffffe98],EAX
00976850  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
00976856  898d9cfeffff              MOV dword ptr [EBP + 0xfffffe9c],ECX
0097685c  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00976862  50                        PUSH EAX
00976863  c7853cffffff0000a041      MOV dword ptr [EBP + 0xffffff3c],0x41a00000
0097686d  e85e09aaff                CALL 0x004171d0
00976872  83c404                    ADD ESP,0x4
00976875  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
0097687b  50                        PUSH EAX
0097687c  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00976882  50                        PUSH EAX
00976883  e8989b0900                CALL 0x00a10420
00976888  51                        PUSH ECX
00976889  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
0097688f  c704240000b442            MOV dword ptr [ESP],0x42b40000
00976896  50                        PUSH EAX
00976897  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
0097689d  e83e9a0900                CALL 0x00a102e0
009768a2  f30f108670030000          MOVSS XMM0,dword ptr [ESI + 0x370]
009768aa  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
009768b0  51                        PUSH ECX
009768b1  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
009768b7  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
009768bf  51                        PUSH ECX
009768c0  8bc8                      MOV ECX,EAX
009768c2  e8199c0900                CALL 0x00a104e0
009768c7  f30f10858cfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe8c]
009768cf  8d9508ffffff              LEA EDX,[EBP + 0xffffff08]
009768d5  f30f10a5d4feffff          MOVSS XMM4,dword ptr [EBP + 0xfffffed4]
009768dd  8d8d00ffffff              LEA ECX,[EBP + 0xffffff00]
009768e3  f30f1095d0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed0]
009768eb  f30f58c4                  ADDSS XMM0,XMM4
009768ef  f30f5ca58cfeffff          SUBSS XMM4,dword ptr [EBP + 0xfffffe8c]
009768f7  f30f109fdc040000          MOVSS XMM3,dword ptr [EDI + 0x4dc]
009768ff  83ec10                    SUB ESP,0x10
00976902  f30f108df4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef4]
0097690a  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00976910  f30f108588feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffe88]
00976918  f30f58c2                  ADDSS XMM0,XMM2
0097691c  f30f5c9588feffff          SUBSS XMM2,dword ptr [EBP + 0xfffffe88]
00976924  f30f11442408              MOVSS dword ptr [ESP + 0x8],XMM0
0097692a  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
00976932  f30f11642404              MOVSS dword ptr [ESP + 0x4],XMM4
00976938  f30f111424                MOVSS dword ptr [ESP],XMM2
0097693d  f30f1097d8040000          MOVSS XMM2,dword ptr [EDI + 0x4d8]
00976945  e8666fedff                CALL 0x0084d8b0
0097694a  83c410                    ADD ESP,0x10
0097694d  84c0                      TEST AL,AL
0097694f  7448                      JZ 0x00976999
00976951  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
00976959  f30f1187d8040000          MOVSS dword ptr [EDI + 0x4d8],XMM0
00976961  f30f108508ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff08]
00976969  f30f1187dc040000          MOVSS dword ptr [EDI + 0x4dc],XMM0
00976971  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
00976979  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
00976981  f30f108548ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff48]
00976989  89b5e4feffff              MOV dword ptr [EBP + 0xfffffee4],ESI
0097698f  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00976997  eb06                      JMP 0x0097699f
00976999  8bb5e4feffff              MOV ESI,dword ptr [EBP + 0xfffffee4]
0097699f  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
009769a5  40                        INC EAX
009769a6  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
009769ac  3b85bcfeffff              CMP EAX,dword ptr [EBP + 0xfffffebc]
009769b2  0f8208feffff              JC 0x009767c0
009769b8  85f6                      TEST ESI,ESI
009769ba  0f8402030000              JZ 0x00976cc2
009769c0  8b8d5cffffff              MOV ECX,dword ptr [EBP + 0xffffff5c]
009769c6  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
009769cc  50                        PUSH EAX
009769cd  8d8544ffffff              LEA EAX,[EBP + 0xffffff44]
009769d3  50                        PUSH EAX
009769d4  e8a79a0900                CALL 0x00a10480
009769d9  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
009769df  c7853cffffff00000040      MOV dword ptr [EBP + 0xffffff3c],0x40000000
009769e9  50                        PUSH EAX
009769ea  8d953cffffff              LEA EDX,[EBP + 0xffffff3c]
009769f0  8d8da8feffff              LEA ECX,[EBP + 0xfffffea8]
009769f6  e8d507aaff                CALL 0x004171d0
009769fb  f30f108d48ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff48]
00976a03  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00976a09  f30f108544ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff44]
00976a11  83c404                    ADD ESP,0x4
00976a14  f30f598d24ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff24]
00976a1c  f30f598520ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff20]
00976a24  51                        PUSH ECX
00976a25  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00976a2b  51                        PUSH ECX
00976a2c  f30f58c8                  ADDSS XMM1,XMM0
00976a30  8bc8                      MOV ECX,EAX
00976a32  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
00976a3a  e8a19a0900                CALL 0x00a104e0
00976a3f  50                        PUSH EAX
00976a40  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00976a46  50                        PUSH EAX
00976a47  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00976a4d  e82e9a0900                CALL 0x00a10480
00976a52  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
00976a58  e833990900                CALL 0x00a10390
00976a5d  8d8d60ffffff              LEA ECX,[EBP + 0xffffff60]
00976a63  d99d54ffffff              FSTP dword ptr [EBP + 0xffffff54]
00976a69  e80207a9ff                CALL 0x00407170
00976a6e  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00976a71  83f805                    CMP EAX,0x5
00976a74  746c                      JZ 0x00976ae2
00976a76  83f80a                    CMP EAX,0xa
00976a79  7467                      JZ 0x00976ae2
00976a7b  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00976a83  8d4db8                    LEA ECX,[EBP + -0x48]
00976a86  83ec20                    SUB ESP,0x20
00976a89  0f28d8                    MOVAPS XMM3,XMM0
00976a8c  0f28d0                    MOVAPS XMM2,XMM0
00976a8f  0f28c8                    MOVAPS XMM1,XMM0
00976a92  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
00976a9a  c744241800000000          MOV dword ptr [ESP + 0x18],0x0
00976aa2  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
00976aaa  c74424100000803f          MOV dword ptr [ESP + 0x10],0x3f800000
00976ab2  c744240c00008040          MOV dword ptr [ESP + 0xc],0x40800000
00976aba  c74424080000a040          MOV dword ptr [ESP + 0x8],0x40a00000
00976ac2  c74424040000a040          MOV dword ptr [ESP + 0x4],0x40a00000
00976aca  c704240000803f            MOV dword ptr [ESP],0x3f800000
00976ad1  e87af0abff                CALL 0x00435b50
00976ad6  50                        PUSH EAX
00976ad7  8d8d60ffffff              LEA ECX,[EBP + 0xffffff60]
00976add  e80e07a9ff                CALL 0x004071f0
00976ae2  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
00976ae8  e8b332b2ff                CALL 0x00499da0
00976aed  8b8fe8040000              MOV ECX,dword ptr [EDI + 0x4e8]
00976af3  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
00976af9  85c9                      TEST ECX,ECX
00976afb  0f85ed000000              JNZ 0x00976bee
00976b01  8db74c030000              LEA ESI,[EDI + 0x34c]
00976b07  56                        PUSH ESI
00976b08  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
00976b0e  8d8fd8040000              LEA ECX,[EDI + 0x4d8]
00976b14  50                        PUSH EAX
00976b15  e866990900                CALL 0x00a10480
00976b1a  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
00976b22  6a01                      PUSH 0x1
00976b24  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
00976b2a  56                        PUSH ESI
00976b2b  ffb758040000              PUSH dword ptr [EDI + 0x458]
00976b31  51                        PUSH ECX
00976b32  f30f110424                MOVSS dword ptr [ESP],XMM0
00976b37  50                        PUSH EAX
00976b38  ff772c                    PUSH dword ptr [EDI + 0x2c]
00976b3b  e8d087ffff                CALL 0x0096f310
00976b40  8bf0                      MOV ESI,EAX
00976b42  83c41c                    ADD ESP,0x1c
00976b45  85f6                      TEST ESI,ESI
00976b47  0f8465010000              JZ 0x00976cb2
00976b4d  8b0e                      MOV ECX,dword ptr [ESI]
00976b4f  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
00976b55  6a01                      PUSH 0x1
00976b57  6a00                      PUSH 0x0
00976b59  68ff000000                PUSH 0xff
00976b5e  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
00976b61  8bce                      MOV ECX,ESI
00976b63  6aff                      PUSH -0x1
00976b65  50                        PUSH EAX
00976b66  c686e404000001            MOV byte ptr [ESI + 0x4e4],0x1
00976b6d  c6861405000001            MOV byte ptr [ESI + 0x514],0x1
00976b74  ffd2                      CALL EDX
00976b76  8b06                      MOV EAX,dword ptr [ESI]
00976b78  51                        PUSH ECX
00976b79  8bce                      MOV ECX,ESI
00976b7b  c704240000e040            MOV dword ptr [ESP],0x40e00000
00976b82  ff5040                    CALL dword ptr [EAX + 0x40]
00976b85  f30f108758030000          MOVSS XMM0,dword ptr [EDI + 0x358]
00976b8d  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
00976b95  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
00976b9d  8b8758040000              MOV EAX,dword ptr [EDI + 0x458]
00976ba3  898658040000              MOV dword ptr [ESI + 0x458],EAX
00976ba9  80bf5e04000000            CMP byte ptr [EDI + 0x45e],0x0
00976bb0  750d                      JNZ 0x00976bbf
00976bb2  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00976bb9  7504                      JNZ 0x00976bbf
00976bbb  32c0                      XOR AL,AL
00976bbd  eb02                      JMP 0x00976bc1
00976bbf  b001                      MOV AL,0x1
00976bc1  88865e040000              MOV byte ptr [ESI + 0x45e],AL
00976bc7  8bce                      MOV ECX,ESI
00976bc9  8b06                      MOV EAX,dword ptr [ESI]
00976bcb  ff500c                    CALL dword ptr [EAX + 0xc]
00976bce  8bd6                      MOV EDX,ESI
00976bd0  8d8fe8040000              LEA ECX,[EDI + 0x4e8]
00976bd6  e875efd3ff                CALL 0x006b5b50
00976bdb  b001                      MOV AL,0x1
00976bdd  88855bffffff              MOV byte ptr [EBP + 0xffffff5b],AL
00976be3  888510ffffff              MOV byte ptr [EBP + 0xffffff10],AL
00976be9  e9e3000000                JMP 0x00976cd1
00976bee  6a00                      PUSH 0x0
00976bf0  6840d7c500                PUSH 0xc5d740
00976bf5  68dcd5c500                PUSH 0xc5d5dc
00976bfa  6a00                      PUSH 0x0
00976bfc  51                        PUSH ECX
00976bfd  e8af9c1700                CALL 0x00af08b1
00976c02  83c414                    ADD ESP,0x14
00976c05  8bf0                      MOV ESI,EAX
00976c07  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
00976c0d  8b0e                      MOV ECX,dword ptr [ESI]
00976c0f  6a01                      PUSH 0x1
00976c11  6a00                      PUSH 0x0
00976c13  68ff000000                PUSH 0xff
00976c18  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
00976c1b  8bce                      MOV ECX,ESI
00976c1d  6aff                      PUSH -0x1
00976c1f  50                        PUSH EAX
00976c20  ffd2                      CALL EDX
00976c22  8b06                      MOV EAX,dword ptr [ESI]
00976c24  51                        PUSH ECX
00976c25  8bce                      MOV ECX,ESI
00976c27  c704240000e040            MOV dword ptr [ESP],0x40e00000
00976c2e  ff5040                    CALL dword ptr [EAX + 0x40]
00976c31  f30f108758030000          MOVSS XMM0,dword ptr [EDI + 0x358]
00976c39  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
00976c41  f30f118658030000          MOVSS dword ptr [ESI + 0x358],XMM0
00976c49  8b8758040000              MOV EAX,dword ptr [EDI + 0x458]
00976c4f  898658040000              MOV dword ptr [ESI + 0x458],EAX
00976c55  80bf5e04000000            CMP byte ptr [EDI + 0x45e],0x0
00976c5c  750d                      JNZ 0x00976c6b
00976c5e  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00976c65  7504                      JNZ 0x00976c6b
00976c67  32c0                      XOR AL,AL
00976c69  eb02                      JMP 0x00976c6d
00976c6b  b001                      MOV AL,0x1
00976c6d  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
00976c75  51                        PUSH ECX
00976c76  8bce                      MOV ECX,ESI
00976c78  88865e040000              MOV byte ptr [ESI + 0x45e],AL
00976c7e  f30f110424                MOVSS dword ptr [ESP],XMM0
00976c83  e80862ffff                CALL 0x0096ce90
00976c88  8d874c030000              LEA EAX,[EDI + 0x34c]
00976c8e  50                        PUSH EAX
00976c8f  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
00976c95  8d8fd8040000              LEA ECX,[EDI + 0x4d8]
00976c9b  50                        PUSH EAX
00976c9c  e8df970900                CALL 0x00a10480
00976ca1  8b08                      MOV ECX,dword ptr [EAX]
00976ca3  898e3c030000              MOV dword ptr [ESI + 0x33c],ECX
00976ca9  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00976cac  898640030000              MOV dword ptr [ESI + 0x340],EAX
00976cb2  b001                      MOV AL,0x1
00976cb4  88855bffffff              MOV byte ptr [EBP + 0xffffff5b],AL
00976cba  888510ffffff              MOV byte ptr [EBP + 0xffffff10],AL
00976cc0  eb0f                      JMP 0x00976cd1
00976cc2  8b8fe8040000              MOV ECX,dword ptr [EDI + 0x4e8]
00976cc8  85c9                      TEST ECX,ECX
00976cca  7405                      JZ 0x00976cd1
00976ccc  8b01                      MOV EAX,dword ptr [ECX]
00976cce  ff5028                    CALL dword ptr [EAX + 0x28]
00976cd1  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00976cd7  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00976cde  e8cd08aaff                CALL 0x004175b0
00976ce3  8b8d5cffffff              MOV ECX,dword ptr [EBP + 0xffffff5c]
00976ce9  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00976cef  50                        PUSH EAX
00976cf0  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00976cf6  50                        PUSH EAX
00976cf7  e884970900                CALL 0x00a10480
00976cfc  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
00976d02  e899910900                CALL 0x00a0fea0
00976d07  ffb510ffffff              PUSH dword ptr [EBP + 0xffffff10]
00976d0d  8bcf                      MOV ECX,EDI
00976d0f  d99f60040000              FSTP dword ptr [EDI + 0x460]
00976d15  e846910000                CALL 0x0097fe60
00976d1a  8a855bffffff              MOV AL,byte ptr [EBP + 0xffffff5b]
00976d20  888514ffffff              MOV byte ptr [EBP + 0xffffff14],AL
00976d26  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00976d2c  85c9                      TEST ECX,ECX
00976d2e  7431                      JZ 0x00976d61
00976d30  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
00976d37  7428                      JZ 0x00976d61
00976d39  817928e8030000            CMP dword ptr [ECX + 0x28],0x3e8
00976d40  741f                      JZ 0x00976d61
00976d42  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
00976d49  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
00976d4c  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
00976d4f  7510                      JNZ 0x00976d61
00976d51  80b97201000000            CMP byte ptr [ECX + 0x172],0x0
00976d58  7507                      JNZ 0x00976d61
00976d5a  8b07                      MOV EAX,dword ptr [EDI]
00976d5c  8bcf                      MOV ECX,EDI
00976d5e  ff5028                    CALL dword ptr [EAX + 0x28]
00976d61  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00976d68  750d                      JNZ 0x00976d77
00976d6a  80bf5e04000000            CMP byte ptr [EDI + 0x45e],0x0
00976d71  0f84dc000000              JZ 0x00976e53
00976d77  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00976d7a  83f802                    CMP EAX,0x2
00976d7d  0f8588000000              JNZ 0x00976e0b
00976d83  8d4f78                    LEA ECX,[EDI + 0x78]
00976d86  e82506a9ff                CALL 0x004073b0
00976d8b  84c0                      TEST AL,AL
00976d8d  7469                      JZ 0x00976df8
00976d8f  8d45cc                    LEA EAX,[EBP + -0x34]
00976d92  50                        PUSH EAX
00976d93  e858beadff                CALL 0x00452bf0
00976d98  684418b600                PUSH 0xb61844
00976d9d  8d4dcc                    LEA ECX,[EBP + -0x34]
00976da0  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
00976da7  e8a425b2ff                CALL 0x00499350
00976dac  6a00                      PUSH 0x0
00976dae  8d45cc                    LEA EAX,[EBP + -0x34]
00976db1  50                        PUSH EAX
00976db2  8d4f48                    LEA ECX,[EDI + 0x48]
00976db5  e8a635a9ff                CALL 0x0040a360
00976dba  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
00976dc0  85c9                      TEST ECX,ECX
00976dc2  740f                      JZ 0x00976dd3
00976dc4  6a00                      PUSH 0x0
00976dc6  83c148                    ADD ECX,0x48
00976dc9  680cc0b100                PUSH 0xb1c00c
00976dce  e8ad35a9ff                CALL 0x0040a380
00976dd3  f787ec03000000100000      TEST dword ptr [EDI + 0x3ec],0x1000
00976ddd  740a                      JZ 0x00976de9
00976ddf  6a01                      PUSH 0x1
00976de1  8d4f48                    LEA ECX,[EDI + 0x48]
00976de4  e83739a9ff                CALL 0x0040a720
00976de9  8d4dcc                    LEA ECX,[EBP + -0x34]
00976dec  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00976df3  e84862a9ff                CALL 0x0040d040
00976df8  68eca4b100                PUSH 0xb1a4ec
00976dfd  8d4f48                    LEA ECX,[EDI + 0x48]
00976e00  e84b37a9ff                CALL 0x0040a550
00976e05  84c0                      TEST AL,AL
00976e07  744a                      JZ 0x00976e53
00976e09  eb41                      JMP 0x00976e4c
00976e0b  83f80a                    CMP EAX,0xa
00976e0e  743c                      JZ 0x00976e4c
00976e10  83f804                    CMP EAX,0x4
00976e13  7437                      JZ 0x00976e4c
00976e15  f30f108fe4000000          MOVSS XMM1,dword ptr [EDI + 0xe4]
00976e1d  f30f590ddca3ba00          MULSS XMM1,dword ptr [0x00baa3dc]
00976e25  ff8f58040000              DEC dword ptr [EDI + 0x458]
00976e2b  f30f1087e8000000          MOVSS XMM0,dword ptr [EDI + 0xe8]
00976e33  f30f1187e8000000          MOVSS dword ptr [EDI + 0xe8],XMM0
00976e3b  f30f118fe4000000          MOVSS dword ptr [EDI + 0xe4],XMM1
00976e43  83bf58040000ee            CMP dword ptr [EDI + 0x458],-0x12
00976e4a  7d07                      JGE 0x00976e53
00976e4c  8b07                      MOV EAX,dword ptr [EDI]
00976e4e  8bcf                      MOV ECX,EDI
00976e50  ff5028                    CALL dword ptr [EAX + 0x28]
00976e53  80bd2effffff00            CMP byte ptr [EBP + 0xffffff2e],0x0
00976e5a  7413                      JZ 0x00976e6f
00976e5c  f30f100d20a0ba00          MOVSS XMM1,dword ptr [0x00baa020]
00976e64  8d8f64040000              LEA ECX,[EDI + 0x464]
00976e6a  e8719f0200                CALL 0x009a0de0
00976e6f  80bd2fffffff00            CMP byte ptr [EBP + 0xffffff2f],0x0
00976e76  7407                      JZ 0x00976e7f
00976e78  8bcf                      MOV ECX,EDI
00976e7a  e831c9ffff                CALL 0x009737b0
00976e7f  80bf5d04000000            CMP byte ptr [EDI + 0x45d],0x0
00976e86  0f845f0d0000              JZ 0x00977beb
00976e8c  80bf7201000000            CMP byte ptr [EDI + 0x172],0x0
00976e93  0f84520d0000              JZ 0x00977beb
00976e99  80bd2effffff00            CMP byte ptr [EBP + 0xffffff2e],0x0
00976ea0  0f8413090000              JZ 0x009777b9
00976ea6  f30f108744050000          MOVSS XMM0,dword ptr [EDI + 0x544]
00976eae  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00976eb6  e8a565e6ff                CALL 0x007dd460
00976ebb  84c0                      TEST AL,AL
00976ebd  7526                      JNZ 0x00976ee5
00976ebf  388716050000              CMP byte ptr [EDI + 0x516],AL
00976ec5  751e                      JNZ 0x00976ee5
00976ec7  8b8514ffffff              MOV EAX,dword ptr [EBP + 0xffffff14]
00976ecd  84c0                      TEST AL,AL
00976ecf  7510                      JNZ 0x00976ee1
00976ed1  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00976ed7  85c0                      TEST EAX,EAX
00976ed9  740a                      JZ 0x00976ee5
00976edb  83782802                  CMP dword ptr [EAX + 0x28],0x2
00976edf  7504                      JNZ 0x00976ee5
00976ee1  32c0                      XOR AL,AL
00976ee3  eb02                      JMP 0x00976ee7
00976ee5  b001                      MOV AL,0x1
00976ee7  80bd2fffffff00            CMP byte ptr [EBP + 0xffffff2f],0x0
00976eee  88854fffffff              MOV byte ptr [EBP + 0xffffff4f],AL
00976ef4  0f84a7040000              JZ 0x009773a1
00976efa  84c0                      TEST AL,AL
00976efc  7427                      JZ 0x00976f25
00976efe  f30f109f44050000          MOVSS XMM3,dword ptr [EDI + 0x544]
00976f06  8d8750050000              LEA EAX,[EDI + 0x550]
00976f0c  50                        PUSH EAX
00976f0d  8d8748050000              LEA EAX,[EDI + 0x548]
00976f13  8bcf                      MOV ECX,EDI
00976f15  50                        PUSH EAX
00976f16  e8d564ffff                CALL 0x0096d3f0
00976f1b  f30f108744050000          MOVSS XMM0,dword ptr [EDI + 0x544]
00976f23  eb08                      JMP 0x00976f2d
00976f25  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00976f2d  e82e65e6ff                CALL 0x007dd460
00976f32  84c0                      TEST AL,AL
00976f34  7515                      JNZ 0x00976f4b
00976f36  388716050000              CMP byte ptr [EDI + 0x516],AL
00976f3c  750d                      JNZ 0x00976f4b
00976f3e  83bf6005000000            CMP dword ptr [EDI + 0x560],0x0
00976f45  0f8556040000              JNZ 0x009773a1
00976f4b  68c045c300                PUSH 0xc345c0
00976f50  bab045c300                MOV EDX,0xc345b0
00976f55  8d8dc8fdffff              LEA ECX,[EBP + 0xfffffdc8]
00976f5b  e8c0ecabff                CALL 0x00435c20
00976f60  83c404                    ADD ESP,0x4
00976f63  8d9738040000              LEA EDX,[EDI + 0x438]
00976f69  8d4dd0                    LEA ECX,[EBP + -0x30]
00976f6c  50                        PUSH EAX
00976f6d  e8fe01aaff                CALL 0x00417170
00976f72  83c404                    ADD ESP,0x4
00976f75  8bc8                      MOV ECX,EAX
00976f77  e83402aaff                CALL 0x004171b0
00976f7c  84c0                      TEST AL,AL
00976f7e  0f841d040000              JZ 0x009773a1
00976f84  80bd5bffffff00            CMP byte ptr [EBP + 0xffffff5b],0x0
00976f8b  0f8510040000              JNZ 0x009773a1
00976f91  80bf1605000000            CMP byte ptr [EDI + 0x516],0x0
00976f98  0f8503040000              JNZ 0x009773a1
00976f9e  8b8dc4feffff              MOV ECX,dword ptr [EBP + 0xfffffec4]
00976fa4  8bbf80040000              MOV EDI,dword ptr [EDI + 0x480]
00976faa  8bb184040000              MOV ESI,dword ptr [ECX + 0x484]
00976fb0  2bf7                      SUB ESI,EDI
00976fb2  c1fe03                    SAR ESI,0x3
00976fb5  8d4eff                    LEA ECX,[ESI + -0x1]
00976fb8  8b04cf                    MOV EAX,dword ptr [EDI + ECX*0x8]
00976fbb  8d0ccf                    LEA ECX,[EDI + ECX*0x8]
00976fbe  8b5104                    MOV EDX,dword ptr [ECX + 0x4]
00976fc1  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
00976fc7  8d47f0                    LEA EAX,[EDI + -0x10]
00976fca  8d04f0                    LEA EAX,[EAX + ESI*0x8]
00976fcd  8995d4feffff              MOV dword ptr [EBP + 0xfffffed4],EDX
00976fd3  50                        PUSH EAX
00976fd4  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
00976fda  50                        PUSH EAX
00976fdb  e8a0940900                CALL 0x00a10480
00976fe0  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00976fe6  51                        PUSH ECX
00976fe7  8bc8                      MOV ECX,EAX
00976fe9  e842900900                CALL 0x00a10030
00976fee  8bbdc4feffff              MOV EDI,dword ptr [EBP + 0xfffffec4]
00976ff4  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00976ffa  50                        PUSH EAX
00976ffb  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00977001  c7853cffffff0000a041      MOV dword ptr [EBP + 0xffffff3c],0x41a00000
0097700b  f30f1087e0040000          MOVSS XMM0,dword ptr [EDI + 0x4e0]
00977013  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
0097701b  e820950900                CALL 0x00a10540
00977020  8bcf                      MOV ECX,EDI
00977022  e8095effff                CALL 0x0096ce30
00977027  84c0                      TEST AL,AL
00977029  0f8492000000              JZ 0x009770c1
0097702f  e82c7fd7ff                CALL 0x006eef60
00977034  0f57c0                    XORPS XMM0,XMM0
00977037  f20f2ac0                  CVTSI2SD XMM0,EAX
0097703b  c1e81f                    SHR EAX,0x1f
0097703e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00977047  660f5ac0                  CVTPD2PS XMM0,XMM0
0097704b  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00977053  f30f590590a4ba00          MULSS XMM0,dword ptr [0x00baa490]
0097705b  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
00977063  f30f598554ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff54]
0097706b  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00977073  e8e87ed7ff                CALL 0x006eef60
00977078  0f57c0                    XORPS XMM0,XMM0
0097707b  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00977081  f20f2ac0                  CVTSI2SD XMM0,EAX
00977085  c1e81f                    SHR EAX,0x1f
00977088  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00977091  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00977097  50                        PUSH EAX
00977098  660f5ac0                  CVTPD2PS XMM0,XMM0
0097709c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
009770a4  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
009770ac  f30f5805a4a3ba00          ADDSS XMM0,dword ptr [0x00baa3a4]
009770b4  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
009770bc  e87f940900                CALL 0x00a10540
009770c1  68d045c300                PUSH 0xc345d0
009770c6  51                        PUSH ECX
009770c7  68e045c300                PUSH 0xc345e0
009770cc  51                        PUSH ECX
009770cd  68f048c300                PUSH 0xc348f0
009770d2  51                        PUSH ECX
009770d3  68504cc300                PUSH 0xc34c50
009770d8  51                        PUSH ECX
009770d9  685048c300                PUSH 0xc34850
009770de  ba8048c300                MOV EDX,0xc34880
009770e3  8d8da0feffff              LEA ECX,[EBP + 0xfffffea0]
009770e9  e832ebabff                CALL 0x00435c20
009770ee  83c408                    ADD ESP,0x8
009770f1  8d8d60feffff              LEA ECX,[EBP + 0xfffffe60]
009770f7  8bd0                      MOV EDX,EAX
009770f9  e822ebabff                CALL 0x00435c20
009770fe  83c408                    ADD ESP,0x8
00977101  8d8d80feffff              LEA ECX,[EBP + 0xfffffe80]
00977107  8bd0                      MOV EDX,EAX
00977109  e812ebabff                CALL 0x00435c20
0097710e  83c408                    ADD ESP,0x8
00977111  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
00977117  8bd0                      MOV EDX,EAX
00977119  e802ebabff                CALL 0x00435c20
0097711e  83c408                    ADD ESP,0x8
00977121  8d8de8feffff              LEA ECX,[EBP + 0xfffffee8]
00977127  8bd0                      MOV EDX,EAX
00977129  e8f2eaabff                CALL 0x00435c20
0097712e  83c404                    ADD ESP,0x4
00977131  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
00977137  51                        PUSH ECX
00977138  8bc8                      MOV ECX,EAX
0097713a  e8c1b0c1ff                CALL 0x00592200
0097713f  68504bc300                PUSH 0xc34b50
00977144  8d9738040000              LEA EDX,[EDI + 0x438]
0097714a  8bf0                      MOV ESI,EAX
0097714c  8d8dd8feffff              LEA ECX,[EBP + 0xfffffed8]
00977152  e8c9eaabff                CALL 0x00435c20
00977157  83c404                    ADD ESP,0x4
0097715a  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
00977160  8bd0                      MOV EDX,EAX
00977162  56                        PUSH ESI
00977163  e80800aaff                CALL 0x00417170
00977168  83c404                    ADD ESP,0x4
0097716b  8d9738040000              LEA EDX,[EDI + 0x438]
00977171  8d8da0feffff              LEA ECX,[EBP + 0xfffffea0]
00977177  68c045c300                PUSH 0xc345c0
0097717c  e8efffa9ff                CALL 0x00417170
00977181  83c404                    ADD ESP,0x4
00977184  8bc8                      MOV ECX,EAX
00977186  e82500aaff                CALL 0x004171b0
0097718b  88852fffffff              MOV byte ptr [EBP + 0xffffff2f],AL
00977191  e8ca7dd7ff                CALL 0x006eef60
00977196  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
0097719c  8d953cffffff              LEA EDX,[EBP + 0xffffff3c]
009771a2  8b87c8030000              MOV EAX,dword ptr [EDI + 0x3c8]
009771a8  8d8da8feffff              LEA ECX,[EBP + 0xfffffea8]
009771ae  898500ffffff              MOV dword ptr [EBP + 0xffffff00],EAX
009771b4  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
009771ba  50                        PUSH EAX
009771bb  c7853cffffff3333333f      MOV dword ptr [EBP + 0xffffff3c],0x3f333333
009771c5  e80600aaff                CALL 0x004171d0
009771ca  83c404                    ADD ESP,0x4
009771cd  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
009771d3  50                        PUSH EAX
009771d4  8d8568feffff              LEA EAX,[EBP + 0xfffffe68]
009771da  50                        PUSH EAX
009771db  e8a0920900                CALL 0x00a10480
009771e0  8bf8                      MOV EDI,EAX
009771e2  8d8588feffff              LEA EAX,[EBP + 0xfffffe88]
009771e8  50                        PUSH EAX
009771e9  e8827ed0ff                CALL 0x0067f070
009771ee  83c404                    ADD ESP,0x4
009771f1  8bf0                      MOV ESI,EAX
009771f3  e8687dd7ff                CALL 0x006eef60
009771f8  660f6ec0                  MOVD XMM0,EAX
009771fc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00977200  c1e81f                    SHR EAX,0x1f
00977203  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0097720c  660f5ac0                  CVTPD2PS XMM0,XMM0
00977210  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00977218  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
0097721e  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00977226  50                        PUSH EAX
00977227  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
0097722d  8bce                      MOV ECX,ESI
0097722f  50                        PUSH EAX
00977230  e8ab920900                CALL 0x00a104e0
00977235  8b8dc4feffff              MOV ECX,dword ptr [EBP + 0xfffffec4]
0097723b  8d955cffffff              LEA EDX,[EBP + 0xffffff5c]
00977241  c7855cffffff00000000      MOV dword ptr [EBP + 0xffffff5c],0x0
0097724b  f30f108170030000          MOVSS XMM0,dword ptr [ECX + 0x370]
00977253  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00977259  f30f5c05a4a7ba00          SUBSS XMM0,dword ptr [0x00baa7a4]
00977261  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00977268  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
00977270  0f46ca                    CMOVBE ECX,EDX
00977273  51                        PUSH ECX
00977274  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
0097727a  51                        PUSH ECX
0097727b  8bc8                      MOV ECX,EAX
0097727d  e85e920900                CALL 0x00a104e0
00977282  50                        PUSH EAX
00977283  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
00977289  8bcf                      MOV ECX,EDI
0097728b  50                        PUSH EAX
0097728c  e88f910900                CALL 0x00a10420
00977291  ffb5e4feffff              PUSH dword ptr [EBP + 0xfffffee4]
00977297  80bd2fffffff00            CMP byte ptr [EBP + 0xffffff2f],0x0
0097729e  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
009772a4  6a00                      PUSH 0x0
009772a6  ffb500ffffff              PUSH dword ptr [EBP + 0xffffff00]
009772ac  51                        PUSH ECX
009772ad  50                        PUSH EAX
009772ae  b921000000                MOV ECX,0x21
009772b3  b824000000                MOV EAX,0x24
009772b8  0f44c1                    CMOVZ EAX,ECX
009772bb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
009772c1  50                        PUSH EAX
009772c2  6a02                      PUSH 0x2
009772c4  e85718abff                CALL 0x00428b20
009772c9  0f1085b0feffff            MOVUPS XMM0,xmmword ptr [EBP + 0xfffffeb0]
009772d0  83ec10                    SUB ESP,0x10
009772d3  8bf0                      MOV ESI,EAX
009772d5  8bcc                      MOV ECX,ESP
009772d7  89b55cffffff              MOV dword ptr [EBP + 0xffffff5c],ESI
009772dd  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
009772e0  8bce                      MOV ECX,ESI
009772e2  e869eecfff                CALL 0x00676150
009772e7  8b0e                      MOV ECX,dword ptr [ESI]
009772e9  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
009772ef  8bbdc4feffff              MOV EDI,dword ptr [EBP + 0xfffffec4]
009772f5  50                        PUSH EAX
009772f6  8b713c                    MOV ESI,dword ptr [ECX + 0x3c]
009772f9  8bcf                      MOV ECX,EDI
009772fb  e8007bffff                CALL 0x0096ee00
00977300  8b8d5cffffff              MOV ECX,dword ptr [EBP + 0xffffff5c]
00977306  6a01                      PUSH 0x1
00977308  6a00                      PUSH 0x0
0097730a  68ff000000                PUSH 0xff
0097730f  6aff                      PUSH -0x1
00977311  50                        PUSH EAX
00977312  ffd6                      CALL ESI
00977314  8bb55cffffff              MOV ESI,dword ptr [EBP + 0xffffff5c]
0097731a  f30f108788030000          MOVSS XMM0,dword ptr [EDI + 0x388]
00977322  51                        PUSH ECX
00977323  8bce                      MOV ECX,ESI
00977325  f30f110424                MOVSS dword ptr [ESP],XMM0
0097732a  8b06                      MOV EAX,dword ptr [ESI]
0097732c  ff5040                    CALL dword ptr [EAX + 0x40]
0097732f  f30f108d54ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff54]
00977337  51                        PUSH ECX
00977338  8bce                      MOV ECX,ESI
0097733a  f30f110c24                MOVSS dword ptr [ESP],XMM1
0097733f  e8dcedcfff                CALL 0x00676120
00977344  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0097734a  8bcf                      MOV ECX,EDI
0097734c  818e6801000000000800      OR dword ptr [ESI + 0x168],0x80000
00977356  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0097735c  e80f5bffff                CALL 0x0096ce70
00977361  89853cffffff              MOV dword ptr [EBP + 0xffffff3c],EAX
00977367  8b30                      MOV ESI,dword ptr [EAX]
00977369  3b7004                    CMP ESI,dword ptr [EAX + 0x4]
0097736c  7433                      JZ 0x009773a1
0097736e  8bbd5cffffff              MOV EDI,dword ptr [EBP + 0xffffff5c]
00977374  0f1f4000                  NOP dword ptr [EAX]
00977378  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
00977380  ff36                      PUSH dword ptr [ESI]
00977382  8d8f44040000              LEA ECX,[EDI + 0x444]
00977388  e8e3a1abff                CALL 0x00431570
0097738d  8b853cffffff              MOV EAX,dword ptr [EBP + 0xffffff3c]
00977393  83c604                    ADD ESI,0x4
00977396  3b7004                    CMP ESI,dword ptr [EAX + 0x4]
00977399  75e5                      JNZ 0x00977380
0097739b  8bbdc4feffff              MOV EDI,dword ptr [EBP + 0xfffffec4]
009773a1  80bd4fffffff00            CMP byte ptr [EBP + 0xffffff4f],0x0
009773a8  0f84cc030000              JZ 0x0097777a
009773ae  685048c300                PUSH 0xc34850
009773b3  8d9738040000              LEA EDX,[EDI + 0x438]
009773b9  8d8db0feffff              LEA ECX,[EBP + 0xfffffeb0]
009773bf  e8acfda9ff                CALL 0x00417170
009773c4  83c404                    ADD ESP,0x4
009773c7  8bc8                      MOV ECX,EAX
009773c9  e8e2fda9ff                CALL 0x004171b0
009773ce  84c0                      TEST AL,AL
009773d0  0f84a4030000              JZ 0x0097777a
009773d6  f30f108744050000          MOVSS XMM0,dword ptr [EDI + 0x544]
009773de  c785f4feffff00000000      MOV dword ptr [EBP + 0xfffffef4],0x0
009773e8  c785f0feffff00000000      MOV dword ptr [EBP + 0xfffffef0],0x0
009773f2  c78524ffffff00000000      MOV dword ptr [EBP + 0xffffff24],0x0
009773fc  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
00977406  e85560e6ff                CALL 0x007dd460
0097740b  84c0                      TEST AL,AL
0097740d  0f8401010000              JZ 0x00977514
00977413  f30f108758050000          MOVSS XMM0,dword ptr [EDI + 0x558]
0097741b  e84060e6ff                CALL 0x007dd460
00977420  84c0                      TEST AL,AL
00977422  7428                      JZ 0x0097744c
00977424  f30f1015f8a1ba00          MOVSS XMM2,dword ptr [0x00baa1f8]
0097742c  32c9                      XOR CL,CL
0097742e  f30f108f44050000          MOVSS XMM1,dword ptr [EDI + 0x544]
00977436  f30f108758050000          MOVSS XMM0,dword ptr [EDI + 0x558]
0097743e  e87de10900                CALL 0x00a155c0
00977443  c6854fffffff01            MOV byte ptr [EBP + 0xffffff4f],0x1
0097744a  eb0f                      JMP 0x0097745b
0097744c  f30f108744050000          MOVSS XMM0,dword ptr [EDI + 0x544]
00977454  c6854fffffff00            MOV byte ptr [EBP + 0xffffff4f],0x0
0097745b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00977462  f30f118758050000          MOVSS dword ptr [EDI + 0x558],XMM0
0097746a  766d                      JBE 0x009774d9
0097746c  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00977472  0f28c8                    MOVAPS XMM1,XMM0
00977475  50                        PUSH EAX
00977476  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
0097747c  8bcf                      MOV ECX,EDI
0097747e  50                        PUSH EAX
0097747f  e8dc5cffff                CALL 0x0096d160
00977484  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
0097748a  e8018f0900                CALL 0x00a10390
0097748f  80bd4fffffff00            CMP byte ptr [EBP + 0xffffff4f],0x0
00977496  d99d5cffffff              FSTP dword ptr [EBP + 0xffffff5c]
0097749c  0f84aa000000              JZ 0x0097754c
009774a2  f30f108d5cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff5c]
009774aa  f30f10875c050000          MOVSS XMM0,dword ptr [EDI + 0x55c]
009774b2  e8e9b2d0ff                CALL 0x006827a0
009774b7  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
009774bf  f30f108d5cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff5c]
009774c7  0f28d0                    MOVAPS XMM2,XMM0
009774ca  f30f10875c050000          MOVSS XMM0,dword ptr [EDI + 0x55c]
009774d2  e879b5d0ff                CALL 0x00682a50
009774d7  eb7b                      JMP 0x00977554
009774d9  b802000000                MOV EAX,0x2
009774de  8db730050000              LEA ESI,[EDI + 0x530]
009774e4  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
009774ea  660f1f440000              NOP word ptr [EAX + EAX*0x1]
009774f0  8b0e                      MOV ECX,dword ptr [ESI]
009774f2  85c9                      TEST ECX,ECX
009774f4  740b                      JZ 0x00977501
009774f6  8b01                      MOV EAX,dword ptr [ECX]
009774f8  ff5028                    CALL dword ptr [EAX + 0x28]
009774fb  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
00977501  83c604                    ADD ESI,0x4
00977504  83e801                    SUB EAX,0x1
00977507  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
0097750d  75e1                      JNZ 0x009774f0
0097750f  e99b020000                JMP 0x009777af
00977514  f30f100dd0acba00          MOVSS XMM1,dword ptr [0x00baacd0]
0097751c  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
00977522  50                        PUSH EAX
00977523  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
00977529  c787580500000000807f      MOV dword ptr [EDI + 0x558],0x7f800000
00977533  50                        PUSH EAX
00977534  8bcf                      MOV ECX,EDI
00977536  e8255cffff                CALL 0x0096d160
0097753b  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00977541  e84a8e0900                CALL 0x00a10390
00977546  d99d5cffffff              FSTP dword ptr [EBP + 0xffffff5c]
0097754c  f30f10855cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff5c]
00977554  51                        PUSH ECX
00977555  8d85a8feffff              LEA EAX,[EBP + 0xfffffea8]
0097755b  f30f110424                MOVSS dword ptr [ESP],XMM0
00977560  50                        PUSH EAX
00977561  f30f11875c050000          MOVSS dword ptr [EDI + 0x55c],XMM0
00977569  e8e28d0900                CALL 0x00a10350
0097756e  83c408                    ADD ESP,0x8
00977571  c7853cffffff0000803e      MOV dword ptr [EBP + 0xffffff3c],0x3e800000
0097757b  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
00977581  51                        PUSH ECX
00977582  8d8d68feffff              LEA ECX,[EBP + 0xfffffe68]
00977588  51                        PUSH ECX
00977589  8bc8                      MOV ECX,EAX
0097758b  e8508f0900                CALL 0x00a104e0
00977590  8d8f70030000              LEA ECX,[EDI + 0x370]
00977596  51                        PUSH ECX
00977597  8d8d88feffff              LEA ECX,[EBP + 0xfffffe88]
0097759d  51                        PUSH ECX
0097759e  8bc8                      MOV ECX,EAX
009775a0  e83b8f0900                CALL 0x00a104e0
009775a5  50                        PUSH EAX
009775a6  8d8df0feffff              LEA ECX,[EBP + 0xfffffef0]
009775ac  e8ff8e0900                CALL 0x00a104b0
009775b1  33f6                      XOR ESI,ESI
009775b3  89b554ffffff              MOV dword ptr [EBP + 0xffffff54],ESI
009775b9  0f1f8000000000            NOP dword ptr [EAX]
009775c0  8db64c010000              LEA ESI,[ESI + 0x14c]
009775c6  8b0cb7                    MOV ECX,dword ptr [EDI + ESI*0x4]
009775c9  8d34b7                    LEA ESI,[EDI + ESI*0x4]
009775cc  85c9                      TEST ECX,ECX
009775ce  0f85a3000000              JNZ 0x00977677
009775d4  6a01                      PUSH 0x1
009775d6  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
009775dc  8d874c030000              LEA EAX,[EDI + 0x34c]
009775e2  50                        PUSH EAX
009775e3  ffb758040000              PUSH dword ptr [EDI + 0x458]
009775e9  8d85f0feffff              LEA EAX,[EBP + 0xfffffef0]
009775ef  51                        PUSH ECX
009775f0  890c24                    MOV dword ptr [ESP],ECX
009775f3  50                        PUSH EAX
009775f4  ff772c                    PUSH dword ptr [EDI + 0x2c]
009775f7  e8147dffff                CALL 0x0096f310
009775fc  83c41c                    ADD ESP,0x1c
009775ff  8bce                      MOV ECX,ESI
00977601  50                        PUSH EAX
00977602  e8c97bb5ff                CALL 0x004cf1d0
00977607  8b0e                      MOV ECX,dword ptr [ESI]
00977609  85c9                      TEST ECX,ECX
0097760b  0f8451010000              JZ 0x00977762
00977611  c6811805000001            MOV byte ptr [ECX + 0x518],0x1
00977618  8b06                      MOV EAX,dword ptr [ESI]
0097761a  6a01                      PUSH 0x1
0097761c  57                        PUSH EDI
0097761d  c680e404000001            MOV byte ptr [EAX + 0x4e4],0x1
00977624  8b0e                      MOV ECX,dword ptr [ESI]
00977626  e8457affff                CALL 0x0096f070
0097762b  8b0e                      MOV ECX,dword ptr [ESI]
0097762d  57                        PUSH EDI
0097762e  e8ed5affff                CALL 0x0096d120
00977633  80bf1505000000            CMP byte ptr [EDI + 0x515],0x0
0097763a  7408                      JZ 0x00977644
0097763c  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
00977642  eb02                      JMP 0x00977646
00977644  8bc7                      MOV EAX,EDI
00977646  8b0e                      MOV ECX,dword ptr [ESI]
00977648  50                        PUSH EAX
00977649  e8521cd3ff                CALL 0x006a92a0
0097764e  f30f1087e0040000          MOVSS XMM0,dword ptr [EDI + 0x4e0]
00977656  8b0e                      MOV ECX,dword ptr [ESI]
00977658  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00977660  f30f1181e0040000          MOVSS dword ptr [ECX + 0x4e0],XMM0
00977668  e8a3850000                CALL 0x0097fc10
0097766d  8b0e                      MOV ECX,dword ptr [ESI]
0097766f  85c9                      TEST ECX,ECX
00977671  0f84eb000000              JZ 0x00977762
00977677  6a00                      PUSH 0x0
00977679  57                        PUSH EDI
0097767a  e8f179ffff                CALL 0x0096f070
0097767f  68804bc300                PUSH 0xc34b80
00977684  bad048c300                MOV EDX,0xc348d0
00977689  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
0097768f  e88ce5abff                CALL 0x00435c20
00977694  83c404                    ADD ESP,0x4
00977697  8d8d90feffff              LEA ECX,[EBP + 0xfffffe90]
0097769d  51                        PUSH ECX
0097769e  8bc8                      MOV ECX,EAX
009776a0  e85babc1ff                CALL 0x00592200
009776a5  8b36                      MOV ESI,dword ptr [ESI]
009776a7  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
009776ad  50                        PUSH EAX
009776ae  8d9628040000              LEA EDX,[ESI + 0x428]
009776b4  e8b7faa9ff                CALL 0x00417170
009776b9  83c404                    ADD ESP,0x4
009776bc  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
009776bf  0f118628040000            MOVUPS xmmword ptr [ESI + 0x428],XMM0
009776c6  8bb554ffffff              MOV ESI,dword ptr [EBP + 0xffffff54]
009776cc  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
009776d4  8b84b730050000            MOV EAX,dword ptr [EDI + ESI*0x4 + 0x530]
009776db  f30f11803c030000          MOVSS dword ptr [EAX + 0x33c],XMM0
009776e3  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
009776eb  f30f118040030000          MOVSS dword ptr [EAX + 0x340],XMM0
009776f3  85f6                      TEST ESI,ESI
009776f5  750a                      JNZ 0x00977701
009776f7  f30f100550aeba00          MOVSS XMM0,dword ptr [0x00baae50]
009776ff  eb08                      JMP 0x00977709
00977701  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
00977709  f30f58855cffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff5c]
00977711  51                        PUSH ECX
00977712  8b8cb730050000            MOV ECX,dword ptr [EDI + ESI*0x4 + 0x530]
00977719  f30f110424                MOVSS dword ptr [ESP],XMM0
0097771e  e86d57ffff                CALL 0x0096ce90
00977723  80bf1505000000            CMP byte ptr [EDI + 0x515],0x0
0097772a  741f                      JZ 0x0097774b
0097772c  8b84b730050000            MOV EAX,dword ptr [EDI + ESI*0x4 + 0x530]
00977733  c7804005000002000000      MOV dword ptr [EAX + 0x540],0x2
0097773d  8b84b730050000            MOV EAX,dword ptr [EDI + ESI*0x4 + 0x530]
00977744  c6807101000000            MOV byte ptr [EAX + 0x171],0x0
0097774b  8b8cb730050000            MOV ECX,dword ptr [EDI + ESI*0x4 + 0x530]
00977752  80b95c04000000            CMP byte ptr [ECX + 0x45c],0x0
00977759  740d                      JZ 0x00977768
0097775b  8b01                      MOV EAX,dword ptr [ECX]
0097775d  ff500c                    CALL dword ptr [EAX + 0xc]
00977760  eb06                      JMP 0x00977768
00977762  8bb554ffffff              MOV ESI,dword ptr [EBP + 0xffffff54]
00977768  46                        INC ESI
00977769  89b554ffffff              MOV dword ptr [EBP + 0xffffff54],ESI
0097776f  83fe02                    CMP ESI,0x2
00977772  0f8248feffff              JC 0x009775c0
00977778  eb3f                      JMP 0x009777b9
0097777a  b802000000                MOV EAX,0x2
0097777f  8db730050000              LEA ESI,[EDI + 0x530]
00977785  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
0097778b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
00977790  8b0e                      MOV ECX,dword ptr [ESI]
00977792  85c9                      TEST ECX,ECX
00977794  740b                      JZ 0x009777a1
00977796  8b01                      MOV EAX,dword ptr [ECX]
00977798  ff5028                    CALL dword ptr [EAX + 0x28]
0097779b  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
009777a1  83c604                    ADD ESI,0x4
009777a4  83e801                    SUB EAX,0x1
009777a7  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
009777ad  75e1                      JNZ 0x00977790
009777af  c787580500000000807f      MOV dword ptr [EDI + 0x558],0x7f800000
009777b9  a17816c700                MOV EAX,[0x00c71678]
009777be  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
009777c4  2b8728030000              SUB EAX,dword ptr [EDI + 0x328]
009777ca  83f801                    CMP EAX,0x1
009777cd  0f8e18040000              JLE 0x00977beb
009777d3  83bf6005000000            CMP dword ptr [EDI + 0x560],0x0
009777da  0f8e0b040000              JLE 0x00977beb
009777e0  8bb784040000              MOV ESI,dword ptr [EDI + 0x484]
009777e6  8b8780040000              MOV EAX,dword ptr [EDI + 0x480]
009777ec  2bf0                      SUB ESI,EAX
009777ee  c1fe03                    SAR ESI,0x3
009777f1  83fe02                    CMP ESI,0x2
009777f4  0f82e7030000              JC 0x00977be1
009777fa  8d48f8                    LEA ECX,[EAX + -0x8]
009777fd  8b04f1                    MOV EAX,dword ptr [ECX + ESI*0x8]
00977800  8b54f104                  MOV EDX,dword ptr [ECX + ESI*0x8 + 0x4]
00977804  8d0cf1                    LEA ECX,[ECX + ESI*0x8]
00977807  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
0097780d  8b8780040000              MOV EAX,dword ptr [EDI + 0x480]
00977813  899510ffffff              MOV dword ptr [EBP + 0xffffff10],EDX
00977819  8d04f0                    LEA EAX,[EAX + ESI*0x8]
0097781c  83c0f0                    ADD EAX,-0x10
0097781f  50                        PUSH EAX
00977820  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00977826  50                        PUSH EAX
00977827  e8548c0900                CALL 0x00a10480
0097782c  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
00977832  51                        PUSH ECX
00977833  8bc8                      MOV ECX,EAX
00977835  e8f6870900                CALL 0x00a10030
0097783a  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
00977840  c7853cffffff00002042      MOV dword ptr [EBP + 0xffffff3c],0x42200000
0097784a  50                        PUSH EAX
0097784b  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00977851  50                        PUSH EAX
00977852  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
00977858  e8838c0900                CALL 0x00a104e0
0097785d  8bf8                      MOV EDI,EAX
0097785f  8d8598feffff              LEA EAX,[EBP + 0xfffffe98]
00977865  50                        PUSH EAX
00977866  e80578d0ff                CALL 0x0067f070
0097786b  83c404                    ADD ESP,0x4
0097786e  8bf0                      MOV ESI,EAX
00977870  e8eb76d7ff                CALL 0x006eef60
00977875  56                        PUSH ESI
00977876  8d953cffffff              LEA EDX,[EBP + 0xffffff3c]
0097787c  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
00977882  660f6ec0                  MOVD XMM0,EAX
00977886  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0097788a  c1e81f                    SHR EAX,0x1f
0097788d  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00977896  660f5ac0                  CVTPD2PS XMM0,XMM0
0097789a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
009778a2  f30f590500a9ba00          MULSS XMM0,dword ptr [0x00baa900]
009778aa  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
009778b2  e819f9a9ff                CALL 0x004171d0
009778b7  83c404                    ADD ESP,0x4
009778ba  8bcf                      MOV ECX,EDI
009778bc  50                        PUSH EAX
009778bd  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
009778c3  50                        PUSH EAX
009778c4  e8578b0900                CALL 0x00a10420
009778c9  8bbdc4feffff              MOV EDI,dword ptr [EBP + 0xfffffec4]
009778cf  8d8dc8feffff              LEA ECX,[EBP + 0xfffffec8]
009778d5  68a04bc300                PUSH 0xc34ba0
009778da  8d9728040000              LEA EDX,[EDI + 0x428]
009778e0  e88bf8a9ff                CALL 0x00417170
009778e5  83c404                    ADD ESP,0x4
009778e8  8bc8                      MOV ECX,EAX
009778ea  e8c1f8a9ff                CALL 0x004171b0
009778ef  84c0                      TEST AL,AL
009778f1  0f84d6010000              JZ 0x00977acd
009778f7  a17816c700                MOV EAX,[0x00c71678]
009778fc  33c9                      XOR ECX,ECX
009778fe  f30f1005b4acba00          MOVSS XMM0,dword ptr [0x00baacb4]
00977906  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
0097790e  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00977916  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0097791c  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
00977924  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0097792c  8985e4feffff              MOV dword ptr [EBP + 0xfffffee4],EAX
00977932  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0097793a  898d5cffffff              MOV dword ptr [EBP + 0xffffff5c],ECX
00977940  398864120000              CMP dword ptr [EAX + 0x1264],ECX
00977946  0f860b010000              JBE 0x00977a57
0097794c  0f1f4000                  NOP dword ptr [EAX]
00977950  8b805c120000              MOV EAX,dword ptr [EAX + 0x125c]
00977956  6a00                      PUSH 0x0
00977958  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
0097795b  8bce                      MOV ECX,ESI
0097795d  e8fe4bd3ff                CALL 0x006ac560
00977962  84c0                      TEST AL,AL
00977964  0f84ce000000              JZ 0x00977a38
0097796a  6a00                      PUSH 0x0
0097796c  6810000020                PUSH 0x20000010
00977971  8bce                      MOV ECX,ESI
00977973  e8b8faa9ff                CALL 0x00417430
00977978  84c0                      TEST AL,AL
0097797a  0f85b8000000              JNZ 0x00977a38
00977980  3bb7bc030000              CMP ESI,dword ptr [EDI + 0x3bc]
00977986  0f84ac000000              JZ 0x00977a38
0097798c  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
00977992  8b8e40030000              MOV ECX,dword ptr [ESI + 0x340]
00977998  8985d0feffff              MOV dword ptr [EBP + 0xfffffed0],EAX
0097799e  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
009779a4  50                        PUSH EAX
009779a5  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
009779ab  898dd4feffff              MOV dword ptr [EBP + 0xfffffed4],ECX
009779b1  50                        PUSH EAX
009779b2  8d8dd0feffff              LEA ECX,[EBP + 0xfffffed0]
009779b8  e8c38a0900                CALL 0x00a10480
009779bd  f30f108d08ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff08]
009779c5  f30f1085c0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec0]
009779cd  f30f598dc4feffff          MULSS XMM1,dword ptr [EBP + 0xfffffec4]
009779d5  f30f598504ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff04]
009779dd  f30f58c8                  ADDSS XMM1,XMM0
009779e1  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
009779e8  764e                      JBE 0x00977a38
009779ea  8d8dc0feffff              LEA ECX,[EBP + 0xfffffec0]
009779f0  e8ab840900                CALL 0x00a0fea0
009779f5  f30f108d54ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff54]
009779fd  d99d3cffffff              FSTP dword ptr [EBP + 0xffffff3c]
00977a03  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
00977a0b  0f2fc8                    COMISS XMM1,XMM0
00977a0e  7628                      JBE 0x00977a38
00977a10  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
00977a18  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
00977a20  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
00977a28  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
00977a30  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
00977a38  8b8d5cffffff              MOV ECX,dword ptr [EBP + 0xffffff5c]
00977a3e  8b85e4feffff              MOV EAX,dword ptr [EBP + 0xfffffee4]
00977a44  41                        INC ECX
00977a45  898d5cffffff              MOV dword ptr [EBP + 0xffffff5c],ECX
00977a4b  3b8864120000              CMP ECX,dword ptr [EAX + 0x1264]
00977a51  0f82f9feffff              JC 0x00977950
00977a57  6840b6c700                PUSH 0xc7b640
00977a5c  8d8dfcfeffff              LEA ECX,[EBP + 0xfffffefc]
00977a62  e8c98b0900                CALL 0x00a10630
00977a67  84c0                      TEST AL,AL
00977a69  7462                      JZ 0x00977acd
00977a6b  8bc1                      MOV EAX,ECX
00977a6d  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00977a73  50                        PUSH EAX
00977a74  8d85d0feffff              LEA EAX,[EBP + 0xfffffed0]
00977a7a  50                        PUSH EAX
00977a7b  e8a0890900                CALL 0x00a10420
00977a80  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
00977a86  51                        PUSH ECX
00977a87  8d8d98feffff              LEA ECX,[EBP + 0xfffffe98]
00977a8d  51                        PUSH ECX
00977a8e  8bc8                      MOV ECX,EAX
00977a90  e8eb890900                CALL 0x00a10480
00977a95  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00977a9b  8bf0                      MOV ESI,EAX
00977a9d  e8fe830900                CALL 0x00a0fea0
00977aa2  51                        PUSH ECX
00977aa3  8d8538ffffff              LEA EAX,[EBP + 0xffffff38]
00977aa9  8bce                      MOV ECX,ESI
00977aab  d91c24                    FSTP dword ptr [ESP]
00977aae  50                        PUSH EAX
00977aaf  e84c860900                CALL 0x00a10100
00977ab4  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00977ab8  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
00977ac0  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00977ac5  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
00977acd  6a01                      PUSH 0x1
00977acf  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
00977ad5  8d874c030000              LEA EAX,[EDI + 0x34c]
00977adb  50                        PUSH EAX
00977adc  6a03                      PUSH 0x3
00977ade  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00977ae4  e8a7880900                CALL 0x00a10390
00977ae9  51                        PUSH ECX
00977aea  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
00977af0  d91c24                    FSTP dword ptr [ESP]
00977af3  50                        PUSH EAX
00977af4  ff772c                    PUSH dword ptr [EDI + 0x2c]
00977af7  e81478ffff                CALL 0x0096f310
00977afc  8bf0                      MOV ESI,EAX
00977afe  83c41c                    ADD ESP,0x1c
00977b01  85f6                      TEST ESI,ESI
00977b03  0f84d8000000              JZ 0x00977be1
00977b09  6a01                      PUSH 0x1
00977b0b  57                        PUSH EDI
00977b0c  8bce                      MOV ECX,ESI
00977b0e  c686e404000001            MOV byte ptr [ESI + 0x4e4],0x1
00977b15  e85675ffff                CALL 0x0096f070
00977b1a  686048c300                PUSH 0xc34860
00977b1f  51                        PUSH ECX
00977b20  680046c300                PUSH 0xc34600
00977b25  ba604bc300                MOV EDX,0xc34b60
00977b2a  c6861805000001            MOV byte ptr [ESI + 0x518],0x1
00977b31  8d8db8fdffff              LEA ECX,[EBP + 0xfffffdb8]
00977b37  e8e4e0abff                CALL 0x00435c20
00977b3c  83c408                    ADD ESP,0x8
00977b3f  8d8da8fdffff              LEA ECX,[EBP + 0xfffffda8]
00977b45  8bd0                      MOV EDX,EAX
00977b47  e8d4e0abff                CALL 0x00435c20
00977b4c  83c404                    ADD ESP,0x4
00977b4f  8d8d98fdffff              LEA ECX,[EBP + 0xfffffd98]
00977b55  51                        PUSH ECX
00977b56  8bc8                      MOV ECX,EAX
00977b58  e8a3a6c1ff                CALL 0x00592200
00977b5d  50                        PUSH EAX
00977b5e  8d9738040000              LEA EDX,[EDI + 0x438]
00977b64  8d8d88fdffff              LEA ECX,[EBP + 0xfffffd88]
00977b6a  e801f6a9ff                CALL 0x00417170
00977b6f  83c404                    ADD ESP,0x4
00977b72  8bce                      MOV ECX,ESI
00977b74  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00977b77  c7865804000003000000      MOV dword ptr [ESI + 0x458],0x3
00977b81  0f118628040000            MOVUPS xmmword ptr [ESI + 0x428],XMM0
00977b88  ffb7bc030000              PUSH dword ptr [EDI + 0x3bc]
00977b8e  e80d17d3ff                CALL 0x006a92a0
00977b93  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
00977b99  e802830900                CALL 0x00a0fea0
00977b9e  d99ed0040000              FSTP dword ptr [ESI + 0x4d0]
00977ba4  8b8760050000              MOV EAX,dword ptr [EDI + 0x560]
00977baa  8bce                      MOV ECX,ESI
00977bac  48                        DEC EAX
00977bad  898660050000              MOV dword ptr [ESI + 0x560],EAX
00977bb3  8b06                      MOV EAX,dword ptr [ESI]
00977bb5  ff500c                    CALL dword ptr [EAX + 0xc]
00977bb8  660f6e9760050000          MOVD XMM2,dword ptr [EDI + 0x560]
00977bc0  51                        PUSH ECX
00977bc1  0f5bd2                    CVTDQ2PS XMM2,XMM2
00977bc4  c704240000803f            MOV dword ptr [ESP],0x3f800000
00977bcb  6a00                      PUSH 0x0
00977bcd  6a02                      PUSH 0x2
00977bcf  6886000000                PUSH 0x86
00977bd4  f30f591554a1ba00          MULSS XMM2,dword ptr [0x00baa154]
00977bdc  e8ffecfdff                CALL 0x009568e0
00977be1  c7876005000000000000      MOV dword ptr [EDI + 0x560],0x0
00977beb  8b8758040000              MOV EAX,dword ptr [EDI + 0x458]
00977bf1  85c0                      TEST EAX,EAX
00977bf3  0f8e92000000              JLE 0x00977c8b
00977bf9  80bf7501000000            CMP byte ptr [EDI + 0x175],0x0
00977c00  0f8585000000              JNZ 0x00977c8b
00977c06  48                        DEC EAX
00977c07  898758040000              MOV dword ptr [EDI + 0x458],EAX
00977c0d  85c0                      TEST EAX,EAX
00977c0f  7f7a                      JG 0x00977c8b
00977c11  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00977c14  83f806                    CMP EAX,0x6
00977c17  7405                      JZ 0x00977c1e
00977c19  83f80f                    CMP EAX,0xf
00977c1c  7530                      JNZ 0x00977c4e
00977c1e  80bf5e04000000            CMP byte ptr [EDI + 0x45e],0x0
00977c25  7527                      JNZ 0x00977c4e
00977c27  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00977c2e  751e                      JNZ 0x00977c4e
00977c30  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00977c38  51                        PUSH ECX
00977c39  c704240000803f            MOV dword ptr [ESP],0x3f800000
00977c40  6a00                      PUSH 0x0
00977c42  6a02                      PUSH 0x2
00977c44  6818010000                PUSH 0x118
00977c49  e892ecfdff                CALL 0x009568e0
00977c4e  8bcf                      MOV ECX,EDI
00977c50  e8db51ffff                CALL 0x0096ce30
00977c55  84c0                      TEST AL,AL
00977c57  742b                      JZ 0x00977c84
00977c59  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00977c5c  83f80d                    CMP EAX,0xd
00977c5f  7423                      JZ 0x00977c84
00977c61  83f806                    CMP EAX,0x6
00977c64  7405                      JZ 0x00977c6b
00977c66  83f80f                    CMP EAX,0xf
00977c69  7506                      JNZ 0x00977c71
00977c6b  837f3401                  CMP dword ptr [EDI + 0x34],0x1
00977c6f  7513                      JNZ 0x00977c84
00977c71  c6875e04000001            MOV byte ptr [EDI + 0x45e],0x1
00977c78  c7875804000000000000      MOV dword ptr [EDI + 0x458],0x0
00977c82  eb07                      JMP 0x00977c8b
00977c84  c6877301000001            MOV byte ptr [EDI + 0x173],0x1
00977c8b  8b871c040000              MOV EAX,dword ptr [EDI + 0x41c]
00977c91  898720040000              MOV dword ptr [EDI + 0x420],EAX
00977c97  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00977c9a  64890d00000000            MOV dword ptr FS:[0x0],ECX
00977ca1  59                        POP ECX
00977ca2  5f                        POP EDI
00977ca3  5e                        POP ESI
00977ca4  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00977ca7  33cd                      XOR ECX,EBP
00977ca9  e87d741700                CALL 0x00aef12b
00977cae  8be5                      MOV ESP,EBP
00977cb0  5d                        POP EBP
00977cb1  8be3                      MOV ESP,EBX
00977cb3  5b                        POP EBX
00977cb4  c3                        RET
