; J460 NPC AI 0x0096fd60 HELPER_Laser_RoomRay
; types=7
; identities=7.*
; entry=0096fd60
0096fd60  55                        PUSH EBP
0096fd61  8bec                      MOV EBP,ESP
0096fd63  83e4f8                    AND ESP,0xfffffff8
0096fd66  83ec40                    SUB ESP,0x40
0096fd69  8b4514                    MOV EAX,dword ptr [EBP + 0x14]
0096fd6c  0f57ed                    XORPS XMM5,XMM5
0096fd6f  f30f105d1c                MOVSS XMM3,dword ptr [EBP + 0x1c]
0096fd74  56                        PUSH ESI
0096fd75  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0096fd7b  f30f1035d4abba00          MOVSS XMM6,dword ptr [0x00baabd4]
0096fd83  57                        PUSH EDI
0096fd84  8b7d08                    MOV EDI,dword ptr [EBP + 0x8]
0096fd87  83be846502001e            CMP dword ptr [ESI + 0x26584],0x1e
0096fd8e  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0096fd94  f30f11742420              MOVSS dword ptr [ESP + 0x20],XMM6
0096fd9a  f30f105114                MOVSS XMM2,dword ptr [ECX + 0x14]
0096fd9f  f30f5c10                  SUBSS XMM2,dword ptr [EAX]
0096fda3  f30f104120                MOVSS XMM0,dword ptr [ECX + 0x20]
0096fda8  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
0096fdad  f30f5cd3                  SUBSS XMM2,XMM3
0096fdb1  f30f58c3                  ADDSS XMM0,XMM3
0096fdb5  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
0096fdbb  f30f105118                MOVSS XMM2,dword ptr [ECX + 0x18]
0096fdc0  f30f5c5004                SUBSS XMM2,dword ptr [EAX + 0x4]
0096fdc5  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0096fdcb  f30f5cd3                  SUBSS XMM2,XMM3
0096fdcf  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
0096fdd5  f30f10511c                MOVSS XMM2,dword ptr [ECX + 0x1c]
0096fdda  f30f5c10                  SUBSS XMM2,dword ptr [EAX]
0096fdde  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
0096fde1  8b4d0c                    MOV ECX,dword ptr [EBP + 0xc]
0096fde4  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0096fde8  f30f58d3                  ADDSS XMM2,XMM3
0096fdec  f30f1009                  MOVSS XMM1,dword ptr [ECX]
0096fdf0  f30f106104                MOVSS XMM4,dword ptr [ECX + 0x4]
0096fdf5  0f28d9                    MOVAPS XMM3,XMM1
0096fdf8  f30f59c6                  MULSS XMM0,XMM6
0096fdfc  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
0096fe02  0f28d4                    MOVAPS XMM2,XMM4
0096fe05  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
0096fe0b  f30f58c1                  ADDSS XMM0,XMM1
0096fe0f  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
0096fe15  f30f1107                  MOVSS dword ptr [EDI],XMM0
0096fe19  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0096fe1e  f30f59c6                  MULSS XMM0,XMM6
0096fe22  f30f58c4                  ADDSS XMM0,XMM4
0096fe26  f30f114704                MOVSS dword ptr [EDI + 0x4],XMM0
0096fe2b  0f855e010000              JNZ 0x0096ff8f
0096fe31  8b4518                    MOV EAX,dword ptr [EBP + 0x18]
0096fe34  85c0                      TEST EAX,EAX
0096fe36  742d                      JZ 0x0096fe65
0096fe38  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
0096fe3b  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
0096fe41  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
0096fe47  83f801                    CMP EAX,0x1
0096fe4a  0f843f010000              JZ 0x0096ff8f
0096fe50  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
0096fe56  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
0096fe5c  83f803                    CMP EAX,0x3
0096fe5f  0f842a010000              JZ 0x0096ff8f
0096fe65  8b86acba0100              MOV EAX,dword ptr [ESI + 0x1baac]
0096fe6b  81c6a8ba0100              ADD ESI,0x1baa8
0096fe71  33d2                      XOR EDX,EDX
0096fe73  0f28d9                    MOVAPS XMM3,XMM1
0096fe76  0f28d4                    MOVAPS XMM2,XMM4
0096fe79  89542424                  MOV dword ptr [ESP + 0x24],EDX
0096fe7d  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
0096fe83  2b06                      SUB EAX,dword ptr [ESI]
0096fe85  c1f802                    SAR EAX,0x2
0096fe88  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
0096fe8e  85c0                      TEST EAX,EAX
0096fe90  0f84f3000000              JZ 0x0096ff89
0096fe96  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0096fe99  8bc1                      MOV EAX,ECX
0096fe9b  2b06                      SUB EAX,dword ptr [ESI]
0096fe9d  c1f802                    SAR EAX,0x2
0096fea0  85c0                      TEST EAX,EAX
0096fea2  7519                      JNZ 0x0096febd
0096fea4  68bce6b700                PUSH 0xb7e6bc
0096fea9  6a10                      PUSH 0x10
0096feab  e810140a00                CALL 0x00a112c0
0096feb0  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0096feb3  83c408                    ADD ESP,0x8
0096feb6  8b542424                  MOV EDX,dword ptr [ESP + 0x24]
0096feba  0f57ed                    XORPS XMM5,XMM5
0096febd  8b06                      MOV EAX,dword ptr [ESI]
0096febf  2bc8                      SUB ECX,EAX
0096fec1  c1f902                    SAR ECX,0x2
0096fec4  3bd1                      CMP EDX,ECX
0096fec6  7303                      JNC 0x0096fecb
0096fec8  8d0490                    LEA EAX,[EAX + EDX*0x4]
0096fecb  8b00                      MOV EAX,dword ptr [EAX]
0096fecd  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0096fed5  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0096fedd  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
0096fee0  f30f1020                  MOVSS XMM4,dword ptr [EAX]
0096fee4  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
0096fee9  f30f5cd4                  SUBSS XMM2,XMM4
0096feed  8b4510                    MOV EAX,dword ptr [EBP + 0x10]
0096fef0  f30f5ccb                  SUBSS XMM1,XMM3
0096fef4  f30f11642408              MOVSS dword ptr [ESP + 0x8],XMM4
0096fefa  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
0096ff00  f30f1038                  MOVSS XMM7,dword ptr [EAX]
0096ff04  0f28f2                    MOVAPS XMM6,XMM2
0096ff07  0f28c1                    MOVAPS XMM0,XMM1
0096ff0a  f30f59f7                  MULSS XMM6,XMM7
0096ff0e  f30f594004                MULSS XMM0,dword ptr [EAX + 0x4]
0096ff13  f30f59cf                  MULSS XMM1,XMM7
0096ff17  f30f58f0                  ADDSS XMM6,XMM0
0096ff1b  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0096ff20  f30f59d0                  MULSS XMM2,XMM0
0096ff24  f30f5cd1                  SUBSS XMM2,XMM1
0096ff28  f30f104d1c                MOVSS XMM1,dword ptr [EBP + 0x1c]
0096ff2d  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0096ff34  0f2fca                    COMISS XMM1,XMM2
0096ff37  762f                      JBE 0x0096ff68
0096ff39  0f2ff5                    COMISS XMM6,XMM5
0096ff3c  762a                      JBE 0x0096ff68
0096ff3e  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
0096ff44  0f2fce                    COMISS XMM1,XMM6
0096ff47  761f                      JBE 0x0096ff68
0096ff49  f30f59fe                  MULSS XMM7,XMM6
0096ff4d  f30f59c6                  MULSS XMM0,XMM6
0096ff51  f30f58fc                  ADDSS XMM7,XMM4
0096ff55  f30f11742420              MOVSS dword ptr [ESP + 0x20],XMM6
0096ff5b  f30f58c3                  ADDSS XMM0,XMM3
0096ff5f  f30f113f                  MOVSS dword ptr [EDI],XMM7
0096ff63  f30f114704                MOVSS dword ptr [EDI + 0x4],XMM0
0096ff68  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0096ff6e  42                        INC EDX
0096ff6f  81c6a8ba0100              ADD ESI,0x1baa8
0096ff75  89542424                  MOV dword ptr [ESP + 0x24],EDX
0096ff79  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0096ff7c  2b06                      SUB EAX,dword ptr [ESI]
0096ff7e  c1f802                    SAR EAX,0x2
0096ff81  3bd0                      CMP EDX,EAX
0096ff83  0f820dffffff              JC 0x0096fe96
0096ff89  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0096ff8f  d9451c                    FLD dword ptr [EBP + 0x1c]
0096ff92  51                        PUSH ECX
0096ff93  d91c24                    FSTP dword ptr [ESP]
0096ff96  e834091800                CALL 0x00af08cf
0096ff9b  83c404                    ADD ESP,0x4
0096ff9e  6685c0                    TEST AX,AX
0096ffa1  0f8fd9040000              JG 0x00970480
0096ffa7  f30f10542408              MOVSS XMM2,dword ptr [ESP + 0x8]
0096ffad  0f57ed                    XORPS XMM5,XMM5
0096ffb0  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0096ffb6  0f2fd0                    COMISS XMM2,XMM0
0096ffb9  f30f101f                  MOVSS XMM3,dword ptr [EDI]
0096ffbd  f30f106704                MOVSS XMM4,dword ptr [EDI + 0x4]
0096ffc2  f30f5cda                  SUBSS XMM3,XMM2
0096ffc6  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
0096ffcc  f30f5ce1                  SUBSS XMM4,XMM1
0096ffd0  7635                      JBE 0x00970007
0096ffd2  0f28f0                    MOVAPS XMM6,XMM0
0096ffd5  0f28fb                    MOVAPS XMM7,XMM3
0096ffd8  f30f5cf2                  SUBSS XMM6,XMM2
0096ffdc  0f28c4                    MOVAPS XMM0,XMM4
0096ffdf  f30f59c5                  MULSS XMM0,XMM5
0096ffe3  f30f59fe                  MULSS XMM7,XMM6
0096ffe7  f30f59f6                  MULSS XMM6,XMM6
0096ffeb  f30f58f8                  ADDSS XMM7,XMM0
0096ffef  f30f58f5                  ADDSS XMM6,XMM5
0096fff3  0f2ffe                    COMISS XMM7,XMM6
0096fff6  720f                      JC 0x00970007
0096fff8  f30f5ef7                  DIVSS XMM6,XMM7
0096fffc  0f28c6                    MOVAPS XMM0,XMM6
0096ffff  f30f59e6                  MULSS XMM4,XMM6
00970003  f30f59d8                  MULSS XMM3,XMM0
00970007  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
0097000d  0f2fc2                    COMISS XMM0,XMM2
00970010  7632                      JBE 0x00970044
00970012  0f28f0                    MOVAPS XMM6,XMM0
00970015  0f28fb                    MOVAPS XMM7,XMM3
00970018  f30f5cf2                  SUBSS XMM6,XMM2
0097001c  0f28c4                    MOVAPS XMM0,XMM4
0097001f  f30f59c5                  MULSS XMM0,XMM5
00970023  f30f59fe                  MULSS XMM7,XMM6
00970027  f30f59f6                  MULSS XMM6,XMM6
0097002b  f30f58f8                  ADDSS XMM7,XMM0
0097002f  f30f58f5                  ADDSS XMM6,XMM5
00970033  0f2ffe                    COMISS XMM7,XMM6
00970036  720c                      JC 0x00970044
00970038  f30f5ef7                  DIVSS XMM6,XMM7
0097003c  f30f59de                  MULSS XMM3,XMM6
00970040  f30f59e6                  MULSS XMM4,XMM6
00970044  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0097004a  0f2fc8                    COMISS XMM1,XMM0
0097004d  7632                      JBE 0x00970081
0097004f  0f28f0                    MOVAPS XMM6,XMM0
00970052  0f28fc                    MOVAPS XMM7,XMM4
00970055  f30f5cf1                  SUBSS XMM6,XMM1
00970059  0f28c3                    MOVAPS XMM0,XMM3
0097005c  f30f59c5                  MULSS XMM0,XMM5
00970060  f30f59fe                  MULSS XMM7,XMM6
00970064  f30f59f6                  MULSS XMM6,XMM6
00970068  f30f58f8                  ADDSS XMM7,XMM0
0097006c  f30f58f5                  ADDSS XMM6,XMM5
00970070  0f2ffe                    COMISS XMM7,XMM6
00970073  720c                      JC 0x00970081
00970075  f30f5ef7                  DIVSS XMM6,XMM7
00970079  f30f59de                  MULSS XMM3,XMM6
0097007d  f30f59e6                  MULSS XMM4,XMM6
00970081  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
00970087  0f2fc1                    COMISS XMM0,XMM1
0097008a  7632                      JBE 0x009700be
0097008c  0f28f0                    MOVAPS XMM6,XMM0
0097008f  0f28fc                    MOVAPS XMM7,XMM4
00970092  f30f5cf1                  SUBSS XMM6,XMM1
00970096  0f28c3                    MOVAPS XMM0,XMM3
00970099  f30f59c5                  MULSS XMM0,XMM5
0097009d  f30f59fe                  MULSS XMM7,XMM6
009700a1  f30f59f6                  MULSS XMM6,XMM6
009700a5  f30f58f8                  ADDSS XMM7,XMM0
009700a9  f30f58f5                  ADDSS XMM6,XMM5
009700ad  0f2ffe                    COMISS XMM7,XMM6
009700b0  720c                      JC 0x009700be
009700b2  f30f5ef7                  DIVSS XMM6,XMM7
009700b6  f30f59de                  MULSS XMM3,XMM6
009700ba  f30f59e6                  MULSS XMM4,XMM6
009700be  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
009700c4  f30f58da                  ADDSS XMM3,XMM2
009700c8  f30f58e1                  ADDSS XMM4,XMM1
009700cc  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
009700cf  f30f111f                  MOVSS dword ptr [EDI],XMM3
009700d3  f30f116704                MOVSS dword ptr [EDI + 0x4],XMM4
009700d8  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
009700db  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
009700de  83c0f7                    ADD EAX,-0x9
009700e1  83f803                    CMP EAX,0x3
009700e4  0f8796030000              JA 0x00970480
009700ea  f30f5cd3                  SUBSS XMM2,XMM3
009700ee  f30f5ccc                  SUBSS XMM1,XMM4
009700f2  8d442428                  LEA EAX,[ESP + 0x28]
009700f6  50                        PUSH EAX
009700f7  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
009700fd  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
00970103  e8a8f7eaff                CALL 0x0081f8b0
00970108  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
0097010e  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00970111  85c0                      TEST EAX,EAX
00970113  0f8418030000              JZ 0x00970431
00970119  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
0097011c  85c0                      TEST EAX,EAX
0097011e  0f840d030000              JZ 0x00970431
00970124  8b4048                    MOV EAX,dword ptr [EAX + 0x48]
00970127  f30f10642408              MOVSS XMM4,dword ptr [ESP + 0x8]
0097012d  83e809                    SUB EAX,0x9
00970130  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
00970136  0f28dc                    MOVAPS XMM3,XMM4
00970139  0f28d1                    MOVAPS XMM2,XMM1
0097013c  83f803                    CMP EAX,0x3
0097013f  0f87f8020000              JA 0x0097043d
00970145  ff248588049700            JMP dword ptr [EAX*0x4 + 0x970488]
0097014c  f30f10742410              MOVSS XMM6,dword ptr [ESP + 0x10]
00970152  0f28dc                    MOVAPS XMM3,XMM4
00970155  f30f583580abba00          ADDSS XMM6,dword ptr [0x00baab80]
0097015d  f30f1007                  MOVSS XMM0,dword ptr [EDI]
00970161  0f28d1                    MOVAPS XMM2,XMM1
00970164  0f2ff0                    COMISS XMM6,XMM0
00970167  0f86d0020000              JBE 0x0097043d
0097016d  f30f106c2414              MOVSS XMM5,dword ptr [ESP + 0x14]
00970173  f30f582df8aaba00          ADDSS XMM5,dword ptr [0x00baaaf8]
0097017b  0f2f6f04                  COMISS XMM5,dword ptr [EDI + 0x4]
0097017f  0f86b8020000              JBE 0x0097043d
00970185  f30f5cf0                  SUBSS XMM6,XMM0
00970189  0f57ff                    XORPS XMM7,XMM7
0097018c  0f28c1                    MOVAPS XMM0,XMM1
0097018f  f30f59c7                  MULSS XMM0,XMM7
00970193  0f28d6                    MOVAPS XMM2,XMM6
00970196  f30f59f6                  MULSS XMM6,XMM6
0097019a  f30f59d4                  MULSS XMM2,XMM4
0097019e  f30f58f7                  ADDSS XMM6,XMM7
009701a2  f30f58d0                  ADDSS XMM2,XMM0
009701a6  f30f11542424              MOVSS dword ptr [ESP + 0x24],XMM2
009701ac  0f28d1                    MOVAPS XMM2,XMM1
009701af  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
009701b5  0f2fc6                    COMISS XMM0,XMM6
009701b8  7212                      JC 0x009701cc
009701ba  0f28d6                    MOVAPS XMM2,XMM6
009701bd  f30f5ed0                  DIVSS XMM2,XMM0
009701c1  0f28da                    MOVAPS XMM3,XMM2
009701c4  f30f59d1                  MULSS XMM2,XMM1
009701c8  f30f59dc                  MULSS XMM3,XMM4
009701cc  f30f5c6f04                SUBSS XMM5,dword ptr [EDI + 0x4]
009701d1  0f28ca                    MOVAPS XMM1,XMM2
009701d4  0f28c3                    MOVAPS XMM0,XMM3
009701d7  f30f59c7                  MULSS XMM0,XMM7
009701db  f30f59cd                  MULSS XMM1,XMM5
009701df  f30f59ed                  MULSS XMM5,XMM5
009701e3  f30f58c8                  ADDSS XMM1,XMM0
009701e7  f30f58ef                  ADDSS XMM5,XMM7
009701eb  0f2fcd                    COMISS XMM1,XMM5
009701ee  0f8249020000              JC 0x0097043d
009701f4  f30f5ee9                  DIVSS XMM5,XMM1
009701f8  f30f59dd                  MULSS XMM3,XMM5
009701fc  f30f59d5                  MULSS XMM2,XMM5
00970200  e938020000                JMP 0x0097043d
00970205  f30f10742410              MOVSS XMM6,dword ptr [ESP + 0x10]
0097020b  0f28dc                    MOVAPS XMM3,XMM4
0097020e  f30f583580abba00          ADDSS XMM6,dword ptr [0x00baab80]
00970216  f30f103f                  MOVSS XMM7,dword ptr [EDI]
0097021a  0f28d1                    MOVAPS XMM2,XMM1
0097021d  0f2ff7                    COMISS XMM6,XMM7
00970220  0f8617020000              JBE 0x0097043d
00970226  f30f106c241c              MOVSS XMM5,dword ptr [ESP + 0x1c]
0097022c  f30f5c2df8aaba00          SUBSS XMM5,dword ptr [0x00baaaf8]
00970234  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
00970239  0f2fc5                    COMISS XMM0,XMM5
0097023c  0f86fb010000              JBE 0x0097043d
00970242  f30f5cf7                  SUBSS XMM6,XMM7
00970246  0f28c1                    MOVAPS XMM0,XMM1
00970249  0f57ff                    XORPS XMM7,XMM7
0097024c  f30f59c7                  MULSS XMM0,XMM7
00970250  0f28d6                    MOVAPS XMM2,XMM6
00970253  f30f59f6                  MULSS XMM6,XMM6
00970257  f30f59d4                  MULSS XMM2,XMM4
0097025b  f30f58f7                  ADDSS XMM6,XMM7
0097025f  f30f58d0                  ADDSS XMM2,XMM0
00970263  f30f11542424              MOVSS dword ptr [ESP + 0x24],XMM2
00970269  0f28d1                    MOVAPS XMM2,XMM1
0097026c  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
00970272  0f2fc6                    COMISS XMM0,XMM6
00970275  7212                      JC 0x00970289
00970277  0f28d6                    MOVAPS XMM2,XMM6
0097027a  f30f5ed0                  DIVSS XMM2,XMM0
0097027e  0f28da                    MOVAPS XMM3,XMM2
00970281  f30f59d1                  MULSS XMM2,XMM1
00970285  f30f59dc                  MULSS XMM3,XMM4
00970289  f30f5c6f04                SUBSS XMM5,dword ptr [EDI + 0x4]
0097028e  0f28ca                    MOVAPS XMM1,XMM2
00970291  0f28c3                    MOVAPS XMM0,XMM3
00970294  f30f59c7                  MULSS XMM0,XMM7
00970298  f30f59cd                  MULSS XMM1,XMM5
0097029c  f30f59ed                  MULSS XMM5,XMM5
009702a0  f30f58c8                  ADDSS XMM1,XMM0
009702a4  f30f58ef                  ADDSS XMM5,XMM7
009702a8  0f2fcd                    COMISS XMM1,XMM5
009702ab  0f828c010000              JC 0x0097043d
009702b1  f30f5ee9                  DIVSS XMM5,XMM1
009702b5  f30f59dd                  MULSS XMM3,XMM5
009702b9  f30f59d5                  MULSS XMM2,XMM5
009702bd  e97b010000                JMP 0x0097043d
009702c2  f30f10742418              MOVSS XMM6,dword ptr [ESP + 0x18]
009702c8  0f28dc                    MOVAPS XMM3,XMM4
009702cb  f30f5c3580abba00          SUBSS XMM6,dword ptr [0x00baab80]
009702d3  f30f1007                  MOVSS XMM0,dword ptr [EDI]
009702d7  0f28d1                    MOVAPS XMM2,XMM1
009702da  0f2fc6                    COMISS XMM0,XMM6
009702dd  0f865a010000              JBE 0x0097043d
009702e3  f30f106c2414              MOVSS XMM5,dword ptr [ESP + 0x14]
009702e9  f30f582df8aaba00          ADDSS XMM5,dword ptr [0x00baaaf8]
009702f1  0f2f6f04                  COMISS XMM5,dword ptr [EDI + 0x4]
009702f5  0f8642010000              JBE 0x0097043d
009702fb  f30f5cf0                  SUBSS XMM6,XMM0
009702ff  0f57ff                    XORPS XMM7,XMM7
00970302  0f28c1                    MOVAPS XMM0,XMM1
00970305  f30f59c7                  MULSS XMM0,XMM7
00970309  0f28d6                    MOVAPS XMM2,XMM6
0097030c  f30f59f6                  MULSS XMM6,XMM6
00970310  f30f59d4                  MULSS XMM2,XMM4
00970314  f30f58f7                  ADDSS XMM6,XMM7
00970318  f30f58d0                  ADDSS XMM2,XMM0
0097031c  f30f11542424              MOVSS dword ptr [ESP + 0x24],XMM2
00970322  0f28d1                    MOVAPS XMM2,XMM1
00970325  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0097032b  0f2fc6                    COMISS XMM0,XMM6
0097032e  7212                      JC 0x00970342
00970330  0f28d6                    MOVAPS XMM2,XMM6
00970333  f30f5ed0                  DIVSS XMM2,XMM0
00970337  0f28da                    MOVAPS XMM3,XMM2
0097033a  f30f59d1                  MULSS XMM2,XMM1
0097033e  f30f59dc                  MULSS XMM3,XMM4
00970342  f30f5c6f04                SUBSS XMM5,dword ptr [EDI + 0x4]
00970347  0f28ca                    MOVAPS XMM1,XMM2
0097034a  0f28c3                    MOVAPS XMM0,XMM3
0097034d  f30f59c7                  MULSS XMM0,XMM7
00970351  f30f59cd                  MULSS XMM1,XMM5
00970355  f30f59ed                  MULSS XMM5,XMM5
00970359  f30f58c8                  ADDSS XMM1,XMM0
0097035d  f30f58ef                  ADDSS XMM5,XMM7
00970361  0f2fcd                    COMISS XMM1,XMM5
00970364  0f82d3000000              JC 0x0097043d
0097036a  f30f5ee9                  DIVSS XMM5,XMM1
0097036e  f30f59dd                  MULSS XMM3,XMM5
00970372  f30f59d5                  MULSS XMM2,XMM5
00970376  e9c2000000                JMP 0x0097043d
0097037b  f30f10742418              MOVSS XMM6,dword ptr [ESP + 0x18]
00970381  0f28dc                    MOVAPS XMM3,XMM4
00970384  f30f5c3580abba00          SUBSS XMM6,dword ptr [0x00baab80]
0097038c  f30f103f                  MOVSS XMM7,dword ptr [EDI]
00970390  0f28d1                    MOVAPS XMM2,XMM1
00970393  0f2ffe                    COMISS XMM7,XMM6
00970396  0f86a1000000              JBE 0x0097043d
0097039c  f30f106c241c              MOVSS XMM5,dword ptr [ESP + 0x1c]
009703a2  f30f5c2df8aaba00          SUBSS XMM5,dword ptr [0x00baaaf8]
009703aa  f30f104704                MOVSS XMM0,dword ptr [EDI + 0x4]
009703af  0f2fc5                    COMISS XMM0,XMM5
009703b2  0f8685000000              JBE 0x0097043d
009703b8  f30f5cf7                  SUBSS XMM6,XMM7
009703bc  0f28c1                    MOVAPS XMM0,XMM1
009703bf  0f57ff                    XORPS XMM7,XMM7
009703c2  f30f59c7                  MULSS XMM0,XMM7
009703c6  0f28d6                    MOVAPS XMM2,XMM6
009703c9  f30f59f6                  MULSS XMM6,XMM6
009703cd  f30f59d4                  MULSS XMM2,XMM4
009703d1  f30f58f7                  ADDSS XMM6,XMM7
009703d5  f30f58d0                  ADDSS XMM2,XMM0
009703d9  f30f11542424              MOVSS dword ptr [ESP + 0x24],XMM2
009703df  0f28d1                    MOVAPS XMM2,XMM1
009703e2  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
009703e8  0f2fc6                    COMISS XMM0,XMM6
009703eb  7212                      JC 0x009703ff
009703ed  0f28d6                    MOVAPS XMM2,XMM6
009703f0  f30f5ed0                  DIVSS XMM2,XMM0
009703f4  0f28da                    MOVAPS XMM3,XMM2
009703f7  f30f59d1                  MULSS XMM2,XMM1
009703fb  f30f59dc                  MULSS XMM3,XMM4
009703ff  f30f5c6f04                SUBSS XMM5,dword ptr [EDI + 0x4]
00970404  0f28ca                    MOVAPS XMM1,XMM2
00970407  0f28c3                    MOVAPS XMM0,XMM3
0097040a  f30f59c7                  MULSS XMM0,XMM7
0097040e  f30f59cd                  MULSS XMM1,XMM5
00970412  f30f59ed                  MULSS XMM5,XMM5
00970416  f30f58c8                  ADDSS XMM1,XMM0
0097041a  f30f58ef                  ADDSS XMM5,XMM7
0097041e  0f2fcd                    COMISS XMM1,XMM5
00970421  721a                      JC 0x0097043d
00970423  f30f5ee9                  DIVSS XMM5,XMM1
00970427  f30f59dd                  MULSS XMM3,XMM5
0097042b  f30f59d5                  MULSS XMM2,XMM5
0097042f  eb0c                      JMP 0x0097043d
00970431  f30f105c2408              MOVSS XMM3,dword ptr [ESP + 0x8]
00970437  f30f1054240c              MOVSS XMM2,dword ptr [ESP + 0xc]
0097043d  8b450c                    MOV EAX,dword ptr [EBP + 0xc]
00970440  f30f581f                  ADDSS XMM3,dword ptr [EDI]
00970444  f30f585704                ADDSS XMM2,dword ptr [EDI + 0x4]
00970449  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0097044d  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00970452  8bc7                      MOV EAX,EDI
00970454  f30f5ccb                  SUBSS XMM1,XMM3
00970458  f30f5cc2                  SUBSS XMM0,XMM2
0097045c  f30f59c9                  MULSS XMM1,XMM1
00970460  f30f59c0                  MULSS XMM0,XMM0
00970464  f30f58c1                  ADDSS XMM0,XMM1
00970468  0f2f056ca0ba00            COMISS XMM0,dword ptr [0x00baa06c]
0097046f  7611                      JBE 0x00970482
00970471  f30f111f                  MOVSS dword ptr [EDI],XMM3
00970475  f30f115704                MOVSS dword ptr [EDI + 0x4],XMM2
0097047a  5f                        POP EDI
0097047b  5e                        POP ESI
0097047c  8be5                      MOV ESP,EBP
0097047e  5d                        POP EBP
0097047f  c3                        RET
00970480  8bc7                      MOV EAX,EDI
00970482  5f                        POP EDI
00970483  5e                        POP ESI
00970484  8be5                      MOV ESP,EBP
00970486  5d                        POP EBP
00970487  c3                        RET
