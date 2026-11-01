; J460 NPC AI 0x004f64e0 AI_004f64e0
; types=892
; identities=892.0.0
; entry=004f64e0
004f64e0  53                        PUSH EBX
004f64e1  8bdc                      MOV EBX,ESP
004f64e3  83ec08                    SUB ESP,0x8
004f64e6  83e4f8                    AND ESP,0xfffffff8
004f64e9  83c404                    ADD ESP,0x4
004f64ec  55                        PUSH EBP
004f64ed  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004f64f0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004f64f4  8bec                      MOV EBP,ESP
004f64f6  6aff                      PUSH -0x1
004f64f8  68903faf00                PUSH 0xaf3f90
004f64fd  64a100000000              MOV EAX,FS:[0x0]
004f6503  50                        PUSH EAX
004f6504  53                        PUSH EBX
004f6505  81ec40010000              SUB ESP,0x140
004f650b  a1b493bf00                MOV EAX,[0x00bf93b4]
004f6510  33c5                      XOR EAX,EBP
004f6512  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004f6515  56                        PUSH ESI
004f6516  57                        PUSH EDI
004f6517  50                        PUSH EAX
004f6518  8d45f4                    LEA EAX,[EBP + -0xc]
004f651b  64a300000000              MOV FS:[0x0],EAX
004f6521  8bf9                      MOV EDI,ECX
004f6523  f30f109fb80b0000          MOVSS XMM3,dword ptr [EDI + 0xbb8]
004f652b  0f57e4                    XORPS XMM4,XMM4
004f652e  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004f6536  0f28c3                    MOVAPS XMM0,XMM3
004f6539  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004f6541  f30f105714                MOVSS XMM2,dword ptr [EDI + 0x14]
004f6546  0f2fd4                    COMISS XMM2,XMM4
004f6549  f30f10355ca7ba00          MOVSS XMM6,dword ptr [0x00baa75c]
004f6551  f30f58c1                  ADDSS XMM0,XMM1
004f6555  f30f118de4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM1
004f655d  0f28cb                    MOVAPS XMM1,XMM3
004f6560  f30f59c2                  MULSS XMM0,XMM2
004f6564  f30f5887b40b0000          ADDSS XMM0,dword ptr [EDI + 0xbb4]
004f656c  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004f6574  0f86a6000000              JBE 0x004f6620
004f657a  0f2ff3                    COMISS XMM6,XMM3
004f657d  0f869d000000              JBE 0x004f6620
004f6583  0f28c2                    MOVAPS XMM0,XMM2
004f6586  f30f102d6ca0ba00          MOVSS XMM5,dword ptr [0x00baa06c]
004f658e  f30f5e051ca8ba00          DIVSS XMM0,dword ptr [0x00baa81c]
004f6596  f30f59d5                  MULSS XMM2,XMM5
004f659a  f30f5887bc0b0000          ADDSS XMM0,dword ptr [EDI + 0xbbc]
004f65a2  f30f115714                MOVSS dword ptr [EDI + 0x14],XMM2
004f65a7  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
004f65af  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004f65b2  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
004f65b5  2bc8                      SUB ECX,EAX
004f65b7  89850cffffff              MOV dword ptr [EBP + 0xffffff0c],EAX
004f65bd  b893244992                MOV EAX,0x92492493
004f65c2  f7e9                      IMUL ECX
004f65c4  03d1                      ADD EDX,ECX
004f65c6  c1fa05                    SAR EDX,0x5
004f65c9  8bc2                      MOV EAX,EDX
004f65cb  c1e81f                    SHR EAX,0x1f
004f65ce  03c2                      ADD EAX,EDX
004f65d0  744e                      JZ 0x004f6620
004f65d2  33f6                      XOR ESI,ESI
004f65d4  33c9                      XOR ECX,ECX
004f65d6  8b850cffffff              MOV EAX,dword ptr [EBP + 0xffffff0c]
004f65dc  8d7638                    LEA ESI,[ESI + 0x38]
004f65df  41                        INC ECX
004f65e0  898d04ffffff              MOV dword ptr [EBP + 0xffffff04],ECX
004f65e6  f30f104430c8              MOVSS XMM0,dword ptr [EAX + ESI*0x1 + -0x38]
004f65ec  f30f59c5                  MULSS XMM0,XMM5
004f65f0  f30f114430c8              MOVSS dword ptr [EAX + ESI*0x1 + -0x38],XMM0
004f65f6  8b4f0c                    MOV ECX,dword ptr [EDI + 0xc]
004f65f9  2bc8                      SUB ECX,EAX
004f65fb  b893244992                MOV EAX,0x92492493
004f6600  f7e9                      IMUL ECX
004f6602  03d1                      ADD EDX,ECX
004f6604  8b8d04ffffff              MOV ECX,dword ptr [EBP + 0xffffff04]
004f660a  c1fa05                    SAR EDX,0x5
004f660d  8bc2                      MOV EAX,EDX
004f660f  c1e81f                    SHR EAX,0x1f
004f6612  03c2                      ADD EAX,EDX
004f6614  3bc8                      CMP ECX,EAX
004f6616  72be                      JC 0x004f65d6
004f6618  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
004f6620  f30f109fbc0b0000          MOVSS XMM3,dword ptr [EDI + 0xbbc]
004f6628  0f28c1                    MOVAPS XMM0,XMM1
004f662b  0f2fd9                    COMISS XMM3,XMM1
004f662e  f30f5fc4                  MAXSS XMM0,XMM4
004f6632  f30f5dc6                  MINSS XMM0,XMM6
004f6636  f30f2cc0                  CVTTSS2SI EAX,XMM0
004f663a  763c                      JBE 0x004f6678
004f663c  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004f6644  0f28c1                    MOVAPS XMM0,XMM1
004f6647  f30f5e1534a8ba00          DIVSS XMM2,dword ptr [0x00baa834]
004f664f  f30f5cc3                  SUBSS XMM0,XMM3
004f6653  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004f665a  0f2fd0                    COMISS XMM2,XMM0
004f665d  7205                      JC 0x004f6664
004f665f  0f28cb                    MOVAPS XMM1,XMM3
004f6662  eb04                      JMP 0x004f6668
004f6664  f30f58ca                  ADDSS XMM1,XMM2
004f6668  f30f5fcc                  MAXSS XMM1,XMM4
004f666c  f30f5dce                  MINSS XMM1,XMM6
004f6670  f30f118fb80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM1
004f6678  f30f101d70cbba00          MOVSS XMM3,dword ptr [0x00bacb70]
004f6680  f30f5fcc                  MAXSS XMM1,XMM4
004f6684  f30f101598a1ba00          MOVSS XMM2,dword ptr [0x00baa198]
004f668c  f30f5dce                  MINSS XMM1,XMM6
004f6690  f30f2cf1                  CVTTSS2SI ESI,XMM1
004f6694  3bf0                      CMP ESI,EAX
004f6696  0f8ea1000000              JLE 0x004f673d
004f669c  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
004f66a3  752e                      JNZ 0x004f66d3
004f66a5  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004f66a8  85c0                      TEST EAX,EAX
004f66aa  7406                      JZ 0x004f66b2
004f66ac  80783400                  CMP byte ptr [EAX + 0x34],0x0
004f66b0  7521                      JNZ 0x004f66d3
004f66b2  6a00                      PUSH 0x0
004f66b4  ff34b5dc0ab600            PUSH dword ptr [ESI*0x4 + 0xb60adc]
004f66bb  8d4f48                    LEA ECX,[EDI + 0x48]
004f66be  e80d3ff1ff                CALL 0x0040a5d0
004f66c3  f30f101598a1ba00          MOVSS XMM2,dword ptr [0x00baa198]
004f66cb  f30f101d70cbba00          MOVSS XMM3,dword ptr [0x00bacb70]
004f66d3  f30f10054079c300          MOVSS XMM0,dword ptr [0x00c37940]
004f66db  f30f100d3c79c300          MOVSS XMM1,dword ptr [0x00c3793c]
004f66e3  0f57c3                    XORPS XMM0,XMM3
004f66e6  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004f66ec  0f57cb                    XORPS XMM1,XMM3
004f66ef  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004f66f7  660f6ec6                  MOVD XMM0,ESI
004f66fb  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f66fe  6aff                      PUSH -0x1
004f6700  ffb500ffffff              PUSH dword ptr [EBP + 0xffffff00]
004f6706  f30f59c2                  MULSS XMM0,XMM2
004f670a  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
004f6712  ffb5fcfeffff              PUSH dword ptr [EBP + 0xfffffefc]
004f6718  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
004f6720  51                        PUSH ECX
004f6721  8bcf                      MOV ECX,EDI
004f6723  f30f594038                MULSS XMM0,dword ptr [EAX + 0x38]
004f6728  f30f110424                MOVSS dword ptr [ESP],XMM0
004f672d  e86e5b1b00                CALL 0x006ac2a0
004f6732  f30f101598a1ba00          MOVSS XMM2,dword ptr [0x00baa198]
004f673a  0f57e4                    XORPS XMM4,XMM4
004f673d  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
004f6745  0f2fcc                    COMISS XMM1,XMM4
004f6748  7640                      JBE 0x004f678a
004f674a  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
004f6752  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
004f6758  f30f5e0550a9ba00          DIVSS XMM0,dword ptr [0x00baa950]
004f6760  8d8d04ffffff              LEA ECX,[EBP + 0xffffff04]
004f6766  c78504ffffff00000000      MOV dword ptr [EBP + 0xffffff04],0x0
004f6770  f30f5cc8                  SUBSS XMM1,XMM0
004f6774  0f2fcc                    COMISS XMM1,XMM4
004f6777  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
004f677f  0f46c1                    CMOVBE EAX,ECX
004f6782  8b00                      MOV EAX,dword ptr [EAX]
004f6784  8987b00b0000              MOV dword ptr [EDI + 0xbb0],EAX
004f678a  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004f6792  0f2fcc                    COMISS XMM1,XMM4
004f6795  7620                      JBE 0x004f67b7
004f6797  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
004f679f  f30f59c2                  MULSS XMM0,XMM2
004f67a3  f30f59879c030000          MULSS XMM0,dword ptr [EDI + 0x39c]
004f67ab  f30f58c1                  ADDSS XMM0,XMM1
004f67af  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004f67b7  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004f67bd  85c0                      TEST EAX,EAX
004f67bf  0f8426010000              JZ 0x004f68eb
004f67c5  83f803                    CMP EAX,0x3
004f67c8  0f84b2030000              JZ 0x004f6b80
004f67ce  83f808                    CMP EAX,0x8
004f67d1  0f851e010000              JNZ 0x004f68f5
004f67d7  8b0cb5dc0ab600            MOV ECX,dword ptr [ESI*0x4 + 0xb60adc]
004f67de  8d4748                    LEA EAX,[EDI + 0x48]
004f67e1  8b7034                    MOV ESI,dword ptr [EAX + 0x34]
004f67e4  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
004f67ea  85f6                      TEST ESI,ESI
004f67ec  744f                      JZ 0x004f683d
004f67ee  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004f67f2  8bc6                      MOV EAX,ESI
004f67f4  7202                      JC 0x004f67f8
004f67f6  8b06                      MOV EAX,dword ptr [ESI]
004f67f8  8a10                      MOV DL,byte ptr [EAX]
004f67fa  3a11                      CMP DL,byte ptr [ECX]
004f67fc  751a                      JNZ 0x004f6818
004f67fe  84d2                      TEST DL,DL
004f6800  7412                      JZ 0x004f6814
004f6802  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f6805  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f6808  750e                      JNZ 0x004f6818
004f680a  83c002                    ADD EAX,0x2
004f680d  83c102                    ADD ECX,0x2
004f6810  84d2                      TEST DL,DL
004f6812  75e4                      JNZ 0x004f67f8
004f6814  33c0                      XOR EAX,EAX
004f6816  eb05                      JMP 0x004f681d
004f6818  1bc0                      SBB EAX,EAX
004f681a  83c801                    OR EAX,0x1
004f681d  85c0                      TEST EAX,EAX
004f681f  7513                      JNZ 0x004f6834
004f6821  384634                    CMP byte ptr [ESI + 0x34],AL
004f6824  7434                      JZ 0x004f685a
004f6826  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f682d  8d4748                    LEA EAX,[EDI + 0x48]
004f6830  7528                      JNZ 0x004f685a
004f6832  eb03                      JMP 0x004f6837
004f6834  8d4748                    LEA EAX,[EDI + 0x48]
004f6837  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
004f683d  6a01                      PUSH 0x1
004f683f  51                        PUSH ECX
004f6840  8bc8                      MOV ECX,EAX
004f6842  e8893df1ff                CALL 0x0040a5d0
004f6847  84c0                      TEST AL,AL
004f6849  740f                      JZ 0x004f685a
004f684b  8d4f78                    LEA ECX,[EDI + 0x78]
004f684e  e85d39f1ff                CALL 0x0040a1b0
004f6853  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004f685a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f685e  0f8487000000              JZ 0x004f68eb
004f6864  68dcd2b100                PUSH 0xb1d2dc
004f6869  8d4f78                    LEA ECX,[EDI + 0x78]
004f686c  e85f45f1ff                CALL 0x0040add0
004f6871  84c0                      TEST AL,AL
004f6873  7467                      JZ 0x004f68dc
004f6875  51                        PUSH ECX
004f6876  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f687d  6a00                      PUSH 0x0
004f687f  6a02                      PUSH 0x2
004f6881  51                        PUSH ECX
004f6882  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f6889  8bcf                      MOV ECX,EDI
004f688b  689e000000                PUSH 0x9e
004f6890  e80b031e00                CALL 0x006d6ba0
004f6895  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
004f689b  e89086f4ff                CALL 0x0043ef30
004f68a0  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
004f68a6  c78530ffffff00000000      MOV dword ptr [EBP + 0xffffff30],0x0
004f68b0  50                        PUSH EAX
004f68b1  6a09                      PUSH 0x9
004f68b3  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
004f68b9  c785fcfeffff00002041      MOV dword ptr [EBP + 0xfffffefc],0x41200000
004f68c3  50                        PUSH EAX
004f68c4  8d873c030000              LEA EAX,[EDI + 0x33c]
004f68ca  c78500ffffff0000c040      MOV dword ptr [EBP + 0xffffff00],0x40c00000
004f68d4  50                        PUSH EAX
004f68d5  8bcf                      MOV ECX,EDI
004f68d7  e8044a1d00                CALL 0x006cb2e0
004f68dc  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004f68e0  7409                      JZ 0x004f68eb
004f68e2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f68e9  750a                      JNZ 0x004f68f5
004f68eb  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004f68f5  51                        PUSH ECX
004f68f6  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004f68fc  c7042400000000            MOV dword ptr [ESP],0x0
004f6903  50                        PUSH EAX
004f6904  8bcf                      MOV ECX,EDI
004f6906  c7876c030000cdcc4c3f      MOV dword ptr [EDI + 0x36c],0x3f4ccccd
004f6910  e82b831c00                CALL 0x006bec40
004f6915  8bcf                      MOV ECX,EDI
004f6917  e8247f1c00                CALL 0x006be840
004f691c  85c0                      TEST EAX,EAX
004f691e  0f84c8000000              JZ 0x004f69ec
004f6924  83782801                  CMP dword ptr [EAX + 0x28],0x1
004f6928  0f85be000000              JNZ 0x004f69ec
004f692e  f30f109030160000          MOVSS XMM2,dword ptr [EAX + 0x1630]
004f6936  83ec0c                    SUB ESP,0xc
004f6939  f30f108834160000          MOVSS XMM1,dword ptr [EAX + 0x1634]
004f6941  0f57db                    XORPS XMM3,XMM3
004f6944  f30f5915a0a9ba00          MULSS XMM2,dword ptr [0x00baa9a0]
004f694c  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
004f6952  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f6958  f30f590da0a9ba00          MULSS XMM1,dword ptr [0x00baa9a0]
004f6960  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
004f6968  f30f1085e0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee0]
004f6970  f30f5895dcfeffff          ADDSS XMM2,dword ptr [EBP + 0xfffffedc]
004f6978  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
004f697e  f30f58c1                  ADDSS XMM0,XMM1
004f6982  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f698a  c7042400000000            MOV dword ptr [ESP],0x0
004f6991  50                        PUSH EAX
004f6992  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004f6998  f30f1195fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM2
004f69a0  50                        PUSH EAX
004f69a1  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
004f69a9  e8a2c53100                CALL 0x00812f50
004f69ae  f30f1085e8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee8]
004f69b6  8d8f14040000              LEA ECX,[EDI + 0x414]
004f69bc  6a01                      PUSH 0x1
004f69be  6a00                      PUSH 0x0
004f69c0  51                        PUSH ECX
004f69c1  f30f1185dcfeffff          MOVSS dword ptr [EBP + 0xfffffedc],XMM0
004f69c9  8d85dcfeffff              LEA EAX,[EBP + 0xfffffedc]
004f69cf  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
004f69d7  c70424cdcccc3e            MOV dword ptr [ESP],0x3ecccccd
004f69de  50                        PUSH EAX
004f69df  f30f1185e0feffff          MOVSS dword ptr [EBP + 0xfffffee0],XMM0
004f69e7  e8d4c92e00                CALL 0x007e33c0
004f69ec  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
004f69f3  0f84cb0c0000              JZ 0x004f76c4
004f69f9  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004f69ff  2500000001                AND EAX,0x1000000
004f6a04  83c800                    OR EAX,0x0
004f6a07  0f85b70c0000              JNZ 0x004f76c4
004f6a0d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f6a13  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
004f6a19  c78514ffffff8d000000      MOV dword ptr [EBP + 0xffffff14],0x8d
004f6a23  e858fd4500                CALL 0x00956780
004f6a28  83ec08                    SUB ESP,0x8
004f6a2b  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f6a31  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f6a39  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
004f6a40  6a00                      PUSH 0x0
004f6a42  6a02                      PUSH 0x2
004f6a44  51                        PUSH ECX
004f6a45  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f6a4c  ffb514ffffff              PUSH dword ptr [EBP + 0xffffff14]
004f6a52  e8d9714300                CALL 0x0092dc30
004f6a57  6a00                      PUSH 0x0
004f6a59  6a00                      PUSH 0x0
004f6a5b  57                        PUSH EDI
004f6a5c  51                        PUSH ECX
004f6a5d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f6a63  8db73c030000              LEA ESI,[EDI + 0x33c]
004f6a69  c704240000f042            MOV dword ptr [ESP],0x42f00000
004f6a70  56                        PUSH ESI
004f6a71  e8ead82000                CALL 0x00704360
004f6a76  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f6a7c  6a08                      PUSH 0x8
004f6a7e  e8edcb2000                CALL 0x00703670
004f6a83  8d4dc0                    LEA ECX,[EBP + -0x40]
004f6a86  e8e506f1ff                CALL 0x00407170
004f6a8b  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004f6a93  8bcf                      MOV ECX,EDI
004f6a95  50                        PUSH EAX
004f6a96  56                        PUSH ESI
004f6a97  e824fc1b00                CALL 0x006b66c0
004f6a9c  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004f6aa4  8d45c0                    LEA EAX,[EBP + -0x40]
004f6aa7  0f57c0                    XORPS XMM0,XMM0
004f6aaa  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004f6ab1  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004f6ab5  8bcf                      MOV ECX,EDI
004f6ab7  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004f6abe  0f2805a0bbba00            MOVAPS XMM0,xmmword ptr [0x00babba0]
004f6ac5  50                        PUSH EAX
004f6ac6  56                        PUSH ESI
004f6ac7  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004f6ace  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004f6ad2  e859fd1b00                CALL 0x006b6830
004f6ad7  e884841f00                CALL 0x006eef60
004f6adc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f6ae2  50                        PUSH EAX
004f6ae3  6a00                      PUSH 0x0
004f6ae5  57                        PUSH EDI
004f6ae6  6840b6c700                PUSH 0xc7b640
004f6aeb  56                        PUSH ESI
004f6aec  6a16                      PUSH 0x16
004f6aee  68e8030000                PUSH 0x3e8
004f6af3  e82820f3ff                CALL 0x00428b20
004f6af8  f30f10153c79c300          MOVSS XMM2,dword ptr [0x00c3793c]
004f6b00  f30f100d4079c300          MOVSS XMM1,dword ptr [0x00c37940]
004f6b08  f30f5915c8a6ba00          MULSS XMM2,dword ptr [0x00baa6c8]
004f6b10  c7805c0400005a000000      MOV dword ptr [EAX + 0x45c],0x5a
004f6b1a  f30f590dc8a6ba00          MULSS XMM1,dword ptr [0x00baa6c8]
004f6b22  c780600400005a000000      MOV dword ptr [EAX + 0x460],0x5a
004f6b2c  f30f1190e4000000          MOVSS dword ptr [EAX + 0xe4],XMM2
004f6b34  f30f1188e8000000          MOVSS dword ptr [EAX + 0xe8],XMM1
004f6b3c  e81f841f00                CALL 0x006eef60
004f6b41  c78504ffffff06000000      MOV dword ptr [EBP + 0xffffff04],0x6
004f6b4b  660f6ec0                  MOVD XMM0,EAX
004f6b4f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f6b53  c1e81f                    SHR EAX,0x1f
004f6b56  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f6b5f  660f5ac8                  CVTPD2PS XMM1,XMM0
004f6b63  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004f6b6b  f30f590d30abba00          MULSS XMM1,dword ptr [0x00baab30]
004f6b73  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
004f6b7b  e9b7000000                JMP 0x004f6c37
004f6b80  8b0cb5c80ab600            MOV ECX,dword ptr [ESI*0x4 + 0xb60ac8]
004f6b87  8d4748                    LEA EAX,[EDI + 0x48]
004f6b8a  8b7034                    MOV ESI,dword ptr [EAX + 0x34]
004f6b8d  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
004f6b93  85f6                      TEST ESI,ESI
004f6b95  744f                      JZ 0x004f6be6
004f6b97  837e1410                  CMP dword ptr [ESI + 0x14],0x10
004f6b9b  8bc6                      MOV EAX,ESI
004f6b9d  7202                      JC 0x004f6ba1
004f6b9f  8b06                      MOV EAX,dword ptr [ESI]
004f6ba1  8a10                      MOV DL,byte ptr [EAX]
004f6ba3  3a11                      CMP DL,byte ptr [ECX]
004f6ba5  751a                      JNZ 0x004f6bc1
004f6ba7  84d2                      TEST DL,DL
004f6ba9  7412                      JZ 0x004f6bbd
004f6bab  8a5001                    MOV DL,byte ptr [EAX + 0x1]
004f6bae  3a5101                    CMP DL,byte ptr [ECX + 0x1]
004f6bb1  750e                      JNZ 0x004f6bc1
004f6bb3  83c002                    ADD EAX,0x2
004f6bb6  83c102                    ADD ECX,0x2
004f6bb9  84d2                      TEST DL,DL
004f6bbb  75e4                      JNZ 0x004f6ba1
004f6bbd  33c0                      XOR EAX,EAX
004f6bbf  eb05                      JMP 0x004f6bc6
004f6bc1  1bc0                      SBB EAX,EAX
004f6bc3  83c801                    OR EAX,0x1
004f6bc6  85c0                      TEST EAX,EAX
004f6bc8  7513                      JNZ 0x004f6bdd
004f6bca  384634                    CMP byte ptr [ESI + 0x34],AL
004f6bcd  7434                      JZ 0x004f6c03
004f6bcf  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004f6bd6  8d4748                    LEA EAX,[EDI + 0x48]
004f6bd9  7528                      JNZ 0x004f6c03
004f6bdb  eb03                      JMP 0x004f6be0
004f6bdd  8d4748                    LEA EAX,[EDI + 0x48]
004f6be0  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
004f6be6  6a01                      PUSH 0x1
004f6be8  51                        PUSH ECX
004f6be9  8bc8                      MOV ECX,EAX
004f6beb  e8e039f1ff                CALL 0x0040a5d0
004f6bf0  84c0                      TEST AL,AL
004f6bf2  740f                      JZ 0x004f6c03
004f6bf4  8d4f78                    LEA ECX,[EDI + 0x78]
004f6bf7  e8b435f1ff                CALL 0x0040a1b0
004f6bfc  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
004f6c03  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
004f6c0b  0f2f057ca8ba00            COMISS XMM0,dword ptr [0x00baa87c]
004f6c12  0f86ddfcffff              JBE 0x004f68f5
004f6c18  c787b40b000000000000      MOV dword ptr [EDI + 0xbb4],0x0
004f6c22  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004f6c2c  e9c4fcffff                JMP 0x004f68f5
004f6c31  8db73c030000              LEA ESI,[EDI + 0x33c]
004f6c37  0f28c1                    MOVAPS XMM0,XMM1
004f6c3a  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004f6c42  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004f6c4a  e8d168f2ff                CALL 0x0041d520
004f6c4f  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004f6c57  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004f6c5f  e8dc68f2ff                CALL 0x0041d540
004f6c64  f30f108d0cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff0c]
004f6c6c  f30f590568a8ba00          MULSS XMM0,dword ptr [0x00baa868]
004f6c74  f30f590d68a8ba00          MULSS XMM1,dword ptr [0x00baa868]
004f6c7c  f30f1185fcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM0
004f6c84  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
004f6c8c  e8cf821f00                CALL 0x006eef60
004f6c91  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f6c97  50                        PUSH EAX
004f6c98  6a03                      PUSH 0x3
004f6c9a  6a00                      PUSH 0x0
004f6c9c  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
004f6ca2  50                        PUSH EAX
004f6ca3  56                        PUSH ESI
004f6ca4  6a02                      PUSH 0x2
004f6ca6  68e8030000                PUSH 0x3e8
004f6cab  e8701ef3ff                CALL 0x00428b20
004f6cb0  8bf0                      MOV ESI,EAX
004f6cb2  8d87e4010000              LEA EAX,[EDI + 0x1e4]
004f6cb8  6a01                      PUSH 0x1
004f6cba  6a00                      PUSH 0x0
004f6cbc  68ff000000                PUSH 0xff
004f6cc1  8b0e                      MOV ECX,dword ptr [ESI]
004f6cc3  6aff                      PUSH -0x1
004f6cc5  50                        PUSH EAX
004f6cc6  8b513c                    MOV EDX,dword ptr [ECX + 0x3c]
004f6cc9  8bce                      MOV ECX,ESI
004f6ccb  ffd2                      CALL EDX
004f6ccd  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004f6cd5  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
004f6cdf  c786e0000000000070c1      MOV dword ptr [ESI + 0xe0],0xc1700000
004f6ce9  c7865803000000002041      MOV dword ptr [ESI + 0x358],0x41200000
004f6cf3  33f6                      XOR ESI,ESI
004f6cf5  e82668f2ff                CALL 0x0041d520
004f6cfa  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
004f6d02  f30f108514ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff14]
004f6d0a  e83168f2ff                CALL 0x0041d540
004f6d0f  0f28d0                    MOVAPS XMM2,XMM0
004f6d12  f30f1195f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM2
004f6d1a  660f1f440000              NOP word ptr [EAX + EAX*0x1]
004f6d20  660f6ece                  MOVD XMM1,ESI
004f6d24  0f5bc9                    CVTDQ2PS XMM1,XMM1
004f6d27  f30f590d24a9ba00          MULSS XMM1,dword ptr [0x00baa924]
004f6d2f  f30f580d24a9ba00          ADDSS XMM1,dword ptr [0x00baa924]
004f6d37  0f28c1                    MOVAPS XMM0,XMM1
004f6d3a  f30f59c2                  MULSS XMM0,XMM2
004f6d3e  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004f6d46  f30f10850cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff0c]
004f6d4e  f30f59c1                  MULSS XMM0,XMM1
004f6d52  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004f6d5a  e801821f00                CALL 0x006eef60
004f6d5f  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
004f6d67  f30f1085f4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef4]
004f6d6f  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
004f6d77  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004f6d7f  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f6d85  50                        PUSH EAX
004f6d86  6a00                      PUSH 0x0
004f6d88  57                        PUSH EDI
004f6d89  6840b6c700                PUSH 0xc7b640
004f6d8e  8d85e8feffff              LEA EAX,[EBP + 0xfffffee8]
004f6d94  f30f118de8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM1
004f6d9c  50                        PUSH EAX
004f6d9d  6a16                      PUSH 0x16
004f6d9f  68e8030000                PUSH 0x3e8
004f6da4  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004f6dac  e86f1df3ff                CALL 0x00428b20
004f6db1  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
004f6db9  f30f1095f0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffef0]
004f6dc1  660f6ec6                  MOVD XMM0,ESI
004f6dc5  46                        INC ESI
004f6dc6  0f5bc0                    CVTDQ2PS XMM0,XMM0
004f6dc9  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004f6dd1  f30f5cc8                  SUBSS XMM1,XMM0
004f6dd5  0f28c1                    MOVAPS XMM0,XMM1
004f6dd8  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
004f6de0  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
004f6de8  c7805c0400005a000000      MOV dword ptr [EAX + 0x45c],0x5a
004f6df2  f30f1188e8000000          MOVSS dword ptr [EAX + 0xe8],XMM1
004f6dfa  c780600400005a000000      MOV dword ptr [EAX + 0x460],0x5a
004f6e04  f30f1180e4000000          MOVSS dword ptr [EAX + 0xe4],XMM0
004f6e0c  83fe02                    CMP ESI,0x2
004f6e0f  0f8c0bffffff              JL 0x004f6d20
004f6e15  83ad04ffffff01            SUB dword ptr [EBP + 0xffffff04],0x1
004f6e1c  f30f108df8feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffef8]
004f6e24  f30f580d50a9ba00          ADDSS XMM1,dword ptr [0x00baa950]
004f6e2c  f30f118df8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM1
004f6e34  0f85f7fdffff              JNZ 0x004f6c31
004f6e3a  e821811f00                CALL 0x006eef60
004f6e3f  33d2                      XOR EDX,EDX
004f6e41  f30f10af00020000          MOVSS XMM5,dword ptr [EDI + 0x200]
004f6e49  b905000000                MOV ECX,0x5
004f6e4e  f30f10a7e4010000          MOVSS XMM4,dword ptr [EDI + 0x1e4]
004f6e56  f7f1                      DIV ECX
004f6e58  f30f109fe8010000          MOVSS XMM3,dword ptr [EDI + 0x1e8]
004f6e60  f30f1097ec010000          MOVSS XMM2,dword ptr [EDI + 0x1ec]
004f6e68  03d1                      ADD EDX,ECX
004f6e6a  0f2e2de49fba00            UCOMISS XMM5,dword ptr [0x00ba9fe4]
004f6e71  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
004f6e77  89950cffffff              MOV dword ptr [EBP + 0xffffff0c],EDX
004f6e7d  f30f10410c                MOVSS XMM0,dword ptr [ECX + 0xc]
004f6e82  f30f59250ca3ba00          MULSS XMM4,dword ptr [0x00baa30c]
004f6e8a  f30f591dc0a0ba00          MULSS XMM3,dword ptr [0x00baa0c0]
004f6e92  f30f5915d8a0ba00          MULSS XMM2,dword ptr [0x00baa0d8]
004f6e9a  9f                        LAHF
004f6e9b  f30f1185ccfeffff          MOVSS dword ptr [EBP + 0xfffffecc],XMM0
004f6ea3  f6c444                    TEST AH,0x44
004f6ea6  7b62                      JNP 0x004f6f0a
004f6ea8  0f28cb                    MOVAPS XMM1,XMM3
004f6eab  0f28c4                    MOVAPS XMM0,XMM4
004f6eae  f30f5905b4a1ba00          MULSS XMM0,dword ptr [0x00baa1b4]
004f6eb6  f30f590d74a3ba00          MULSS XMM1,dword ptr [0x00baa374]
004f6ebe  f30f58c8                  ADDSS XMM1,XMM0
004f6ec2  0f28c2                    MOVAPS XMM0,XMM2
004f6ec5  f30f5905f8a0ba00          MULSS XMM0,dword ptr [0x00baa0f8]
004f6ecd  f30f58c8                  ADDSS XMM1,XMM0
004f6ed1  0f28c1                    MOVAPS XMM0,XMM1
004f6ed4  f30f594110                MULSS XMM0,dword ptr [ECX + 0x10]
004f6ed9  f30f5cc4                  SUBSS XMM0,XMM4
004f6edd  f30f59c5                  MULSS XMM0,XMM5
004f6ee1  f30f58e0                  ADDSS XMM4,XMM0
004f6ee5  0f28c1                    MOVAPS XMM0,XMM1
004f6ee8  f30f594114                MULSS XMM0,dword ptr [ECX + 0x14]
004f6eed  f30f594918                MULSS XMM1,dword ptr [ECX + 0x18]
004f6ef2  f30f5cc3                  SUBSS XMM0,XMM3
004f6ef6  f30f5cca                  SUBSS XMM1,XMM2
004f6efa  f30f59c5                  MULSS XMM0,XMM5
004f6efe  f30f59cd                  MULSS XMM1,XMM5
004f6f02  f30f58d8                  ADDSS XMM3,XMM0
004f6f06  f30f58d1                  ADDSS XMM2,XMM1
004f6f0a  f30f585128                ADDSS XMM2,dword ptr [ECX + 0x28]
004f6f0f  f30f585924                ADDSS XMM3,dword ptr [ECX + 0x24]
004f6f14  f30f586120                ADDSS XMM4,dword ptr [ECX + 0x20]
004f6f19  f30f119500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM2
004f6f21  f30f119decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM3
004f6f29  f30f11a5c8feffff          MOVSS dword ptr [EBP + 0xfffffec8],XMM4
004f6f31  85d2                      TEST EDX,EDX
004f6f33  0f8e37030000              JLE 0x004f7270
004f6f39  0f1f8000000000            NOP dword ptr [EAX]
004f6f40  e81b801f00                CALL 0x006eef60
004f6f45  660f6ec0                  MOVD XMM0,EAX
004f6f49  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f6f4d  c1e81f                    SHR EAX,0x1f
004f6f50  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f6f59  660f5ac0                  CVTPD2PS XMM0,XMM0
004f6f5d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004f6f65  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004f6f6d  f30f58c0                  ADDSS XMM0,XMM0
004f6f71  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004f6f79  e8a265f2ff                CALL 0x0041d520
004f6f7e  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004f6f86  e8d57f1f00                CALL 0x006eef60
004f6f8b  660f6ec8                  MOVD XMM1,EAX
004f6f8f  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004f6f93  c1e81f                    SHR EAX,0x1f
004f6f96  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004f6f9f  660f5ac1                  CVTPD2PS XMM0,XMM1
004f6fa3  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004f6fab  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004f6fb3  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
004f6fbb  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
004f6fc3  e87865f2ff                CALL 0x0041d540
004f6fc8  f30f108d14ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff14]
004f6fd0  f30f59c1                  MULSS XMM0,XMM1
004f6fd4  f30f598df4feffff          MULSS XMM1,dword ptr [EBP + 0xfffffef4]
004f6fdc  f30f1185d0feffff          MOVSS dword ptr [EBP + 0xfffffed0],XMM0
004f6fe4  f30f1185c0feffff          MOVSS dword ptr [EBP + 0xfffffec0],XMM0
004f6fec  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
004f6ff4  f30f118dc4feffff          MOVSS dword ptr [EBP + 0xfffffec4],XMM1
004f6ffc  e85f7f1f00                CALL 0x006eef60
004f7001  8bf0                      MOV ESI,EAX
004f7003  e8587f1f00                CALL 0x006eef60
004f7008  660f6ec0                  MOVD XMM0,EAX
004f700c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f7010  c1e81f                    SHR EAX,0x1f
004f7013  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f701c  660f5ac0                  CVTPD2PS XMM0,XMM0
004f7020  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004f7028  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004f7030  f30f58c0                  ADDSS XMM0,XMM0
004f7034  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
004f703c  e8df64f2ff                CALL 0x0041d520
004f7041  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004f7049  e8127f1f00                CALL 0x006eef60
004f704e  660f6ec8                  MOVD XMM1,EAX
004f7052  f30fe6c9                  CVTDQ2PD XMM1,XMM1
004f7056  c1e81f                    SHR EAX,0x1f
004f7059  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
004f7062  660f5ac1                  CVTPD2PS XMM0,XMM1
004f7066  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004f706e  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
004f7076  f30f1185f4feffff          MOVSS dword ptr [EBP + 0xfffffef4],XMM0
004f707e  f30f1085f0feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffef0]
004f7086  e8b564f2ff                CALL 0x0041d540
004f708b  f30f109504ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff04]
004f7093  8d85c0feffff              LEA EAX,[EBP + 0xfffffec0]
004f7099  f30f5985f4feffff          MULSS XMM0,dword ptr [EBP + 0xfffffef4]
004f70a1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f70a7  f30f5995f4feffff          MULSS XMM2,dword ptr [EBP + 0xfffffef4]
004f70af  56                        PUSH ESI
004f70b0  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
004f70b8  6a00                      PUSH 0x0
004f70ba  f30f589740030000          ADDSS XMM2,dword ptr [EDI + 0x340]
004f70c2  57                        PUSH EDI
004f70c3  50                        PUSH EAX
004f70c4  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004f70ca  f30f1185d4feffff          MOVSS dword ptr [EBP + 0xfffffed4],XMM0
004f70d2  50                        PUSH EAX
004f70d3  6a3b                      PUSH 0x3b
004f70d5  68e8030000                PUSH 0x3e8
004f70da  f30f1195d8feffff          MOVSS dword ptr [EBP + 0xfffffed8],XMM2
004f70e2  e8391af3ff                CALL 0x00428b20
004f70e7  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004f70ef  8bf0                      MOV ESI,EAX
004f70f1  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004f70f9  89b5f8feffff              MOV dword ptr [EBP + 0xfffffef8],ESI
004f70ff  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
004f7107  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
004f710f  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004f7117  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004f711f  f30f1095d0feffff          MOVSS XMM2,dword ptr [EBP + 0xfffffed0]
004f7127  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
004f712e  f30f598d14ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff14]
004f7136  f30f59d0                  MULSS XMM2,XMM0
004f713a  0f57c0                    XORPS XMM0,XMM0
004f713d  f30f58d1                  ADDSS XMM2,XMM1
004f7141  0f2fc2                    COMISS XMM0,XMM2
004f7144  7610                      JBE 0x004f7156
004f7146  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
004f714e  f30f118504ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM0
004f7156  e8057e1f00                CALL 0x006eef60
004f715b  660f6ec0                  MOVD XMM0,EAX
004f715f  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f7163  c1e81f                    SHR EAX,0x1f
004f7166  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f716f  660f5ac0                  CVTPD2PS XMM0,XMM0
004f7173  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004f717b  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
004f7183  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
004f718b  f30f598504ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff04]
004f7193  f30f118674040000          MOVSS dword ptr [ESI + 0x474],XMM0
004f719b  e8c07d1f00                CALL 0x006eef60
004f71a0  33d2                      XOR EDX,EDX
004f71a2  b90f000000                MOV ECX,0xf
004f71a7  f7f1                      DIV ECX
004f71a9  8b06                      MOV EAX,dword ptr [ESI]
004f71ab  03d1                      ADD EDX,ECX
004f71ad  89965c040000              MOV dword ptr [ESI + 0x45c],EDX
004f71b3  899660040000              MOV dword ptr [ESI + 0x460],EDX
004f71b9  8b703c                    MOV ESI,dword ptr [EAX + 0x3c]
004f71bc  e89f7d1f00                CALL 0x006eef60
004f71c1  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
004f71c7  6a01                      PUSH 0x1
004f71c9  6a00                      PUSH 0x0
004f71cb  660f6ec0                  MOVD XMM0,EAX
004f71cf  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004f71d3  c1e81f                    SHR EAX,0x1f
004f71d6  68ff000000                PUSH 0xff
004f71db  6aff                      PUSH -0x1
004f71dd  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004f71e4  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004f71eb  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004f71f2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004f71fb  8d45c0                    LEA EAX,[EBP + -0x40]
004f71fe  50                        PUSH EAX
004f71ff  660f5ac8                  CVTPD2PS XMM1,XMM0
004f7203  0f57c0                    XORPS XMM0,XMM0
004f7206  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
004f720e  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004f7212  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
004f721a  f30f1085c8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffec8]
004f7222  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
004f7227  f30f580d20a1ba00          ADDSS XMM1,dword ptr [0x00baa120]
004f722f  f30f1085ecfeffff          MOVSS XMM0,dword ptr [EBP + 0xfffffeec]
004f7237  f30f1145c4                MOVSS dword ptr [EBP + -0x3c],XMM0
004f723c  f30f108500ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff00]
004f7244  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004f7249  f30f598dccfeffff          MULSS XMM1,dword ptr [EBP + 0xfffffecc]
004f7251  f30f114dcc                MOVSS dword ptr [EBP + -0x34],XMM1
004f7256  ffd6                      CALL ESI
004f7258  8b8df8feffff              MOV ECX,dword ptr [EBP + 0xfffffef8]
004f725e  8b01                      MOV EAX,dword ptr [ECX]
004f7260  ff500c                    CALL dword ptr [EAX + 0xc]
004f7263  83ad0cffffff01            SUB dword ptr [EBP + 0xffffff0c],0x1
004f726a  0f85d0fcffff              JNZ 0x004f6f40
004f7270  6a00                      PUSH 0x0
004f7272  6a00                      PUSH 0x0
004f7274  6a04                      PUSH 0x4
004f7276  6a01                      PUSH 0x1
004f7278  51                        PUSH ECX
004f7279  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f7280  8d45c0                    LEA EAX,[EBP + -0x40]
004f7283  57                        PUSH EDI
004f7284  50                        PUSH EAX
004f7285  83ec10                    SUB ESP,0x10
004f7288  c745e000000000            MOV dword ptr [EBP + -0x20],0x0
004f728f  8bc4                      MOV EAX,ESP
004f7291  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004f7298  0f57c0                    XORPS XMM0,XMM0
004f729b  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004f72a2  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004f72a6  8db73c030000              LEA ESI,[EDI + 0x33c]
004f72ac  0f2805b0bfba00            MOVAPS XMM0,xmmword ptr [0x00babfb0]
004f72b3  51                        PUSH ECX
004f72b4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f72ba  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004f72be  c7042400008040            MOV dword ptr [ESP],0x40800000
004f72c5  56                        PUSH ESI
004f72c6  c70000000000              MOV dword ptr [EAX],0x0
004f72cc  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
004f72d3  c7400800000000            MOV dword ptr [EAX + 0x8],0x0
004f72da  c7400c00000000            MOV dword ptr [EAX + 0xc],0x0
004f72e1  e87a8d2000                CALL 0x00700060
004f72e6  a17816c700                MOV EAX,[0x00c71678]
004f72eb  f30f101d5caaba00          MOVSS XMM3,dword ptr [0x00baaa5c]
004f72f3  6a28                      PUSH 0x28
004f72f5  56                        PUSH ESI
004f72f6  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004f72fc  8d85b0feffff              LEA EAX,[EBP + 0xfffffeb0]
004f7302  81c118120000              ADD ECX,0x1218
004f7308  c68513ffffff00            MOV byte ptr [EBP + 0xffffff13],0x0
004f730f  50                        PUSH EAX
004f7310  e87b34f2ff                CALL 0x0041a790
004f7315  33c9                      XOR ECX,ECX
004f7317  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004f731e  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
004f7324  398dbcfeffff              CMP dword ptr [EBP + 0xfffffebc],ECX
004f732a  0f8657030000              JBE 0x004f7687
004f7330  8b85b4feffff              MOV EAX,dword ptr [EBP + 0xfffffeb4]
004f7336  8b3488                    MOV ESI,dword ptr [EAX + ECX*0x4]
004f7339  a17816c700                MOV EAX,[0x00c71678]
004f733e  83b81466020002            CMP dword ptr [EAX + 0x26614],0x2
004f7345  7c0d                      JL 0x004f7354
004f7347  837e2801                  CMP dword ptr [ESI + 0x28],0x1
004f734b  7507                      JNZ 0x004f7354
004f734d  ba01000000                MOV EDX,0x1
004f7352  eb67                      JMP 0x004f73bb
004f7354  8b5628                    MOV EDX,dword ptr [ESI + 0x28]
004f7357  8d42f6                    LEA EAX,[EDX + -0xa]
004f735a  3ddd030000                CMP EAX,0x3dd
004f735f  0f87ce010000              JA 0x004f7533
004f7365  83fa21                    CMP EDX,0x21
004f7368  0f84c5010000              JZ 0x004f7533
004f736e  83fa11                    CMP EDX,0x11
004f7371  0f84bc010000              JZ 0x004f7533
004f7377  81fa24010000              CMP EDX,0x124
004f737d  0f84b0010000              JZ 0x004f7533
004f7383  81fa75030000              CMP EDX,0x375
004f7389  750c                      JNZ 0x004f7397
004f738b  837e2c0a                  CMP dword ptr [ESI + 0x2c],0xa
004f738f  0f8457020000              JZ 0x004f75ec
004f7395  eb24                      JMP 0x004f73bb
004f7397  81fac0030000              CMP EDX,0x3c0
004f739d  0f8490010000              JZ 0x004f7533
004f73a3  81fac5030000              CMP EDX,0x3c5
004f73a9  0f8484010000              JZ 0x004f7533
004f73af  81faf5000000              CMP EDX,0xf5
004f73b5  0f8478010000              JZ 0x004f7533
004f73bb  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
004f73c2  0f856b010000              JNZ 0x004f7533
004f73c8  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
004f73ce  2500000020                AND EAX,0x20000000
004f73d3  c6850bffffff01            MOV byte ptr [EBP + 0xffffff0b],0x1
004f73da  83c800                    OR EAX,0x0
004f73dd  7507                      JNZ 0x004f73e6
004f73df  c6850bffffff00            MOV byte ptr [EBP + 0xffffff0b],0x0
004f73e6  8bcf                      MOV ECX,EDI
004f73e8  e8c3f3f5ff                CALL 0x004567b0
004f73ed  38850bffffff              CMP byte ptr [EBP + 0xffffff0b],AL
004f73f3  0f8534010000              JNZ 0x004f752d
004f73f9  0f2805b0bfba00            MOVAPS XMM0,xmmword ptr [0x00babfb0]
004f7400  8d4dc0                    LEA ECX,[EBP + -0x40]
004f7403  8b06                      MOV EAX,dword ptr [ESI]
004f7405  6a01                      PUSH 0x1
004f7407  6a01                      PUSH 0x1
004f7409  68ff000000                PUSH 0xff
004f740e  6a08                      PUSH 0x8
004f7410  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004f7414  c745e00000803f            MOV dword ptr [EBP + -0x20],0x3f800000
004f741b  0f57c0                    XORPS XMM0,XMM0
004f741e  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004f7425  51                        PUSH ECX
004f7426  8bce                      MOV ECX,ESI
004f7428  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004f742f  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004f7433  ff503c                    CALL dword ptr [EAX + 0x3c]
004f7436  f30f108e80030000          MOVSS XMM1,dword ptr [ESI + 0x380]
004f743e  8d8decfeffff              LEA ECX,[EBP + 0xfffffeec]
004f7444  f30f108684030000          MOVSS XMM0,dword ptr [ESI + 0x384]
004f744c  8d8500ffffff              LEA EAX,[EBP + 0xffffff00]
004f7452  f30f580d54a8ba00          ADDSS XMM1,dword ptr [0x00baa854]
004f745a  f30f58c0                  ADDSS XMM0,XMM0
004f745e  f30f118d00ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM1
004f7466  0f2fc1                    COMISS XMM0,XMM1
004f7469  f30f1185ecfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM0
004f7471  0f46c1                    CMOVBE EAX,ECX
004f7474  8b00                      MOV EAX,dword ptr [EAX]
004f7476  898680030000              MOV dword ptr [ESI + 0x380],EAX
004f747c  e8df7a1f00                CALL 0x006eef60
004f7481  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f7487  50                        PUSH EAX
004f7488  6a00                      PUSH 0x0
004f748a  6a00                      PUSH 0x0
004f748c  6840b6c700                PUSH 0xc7b640
004f7491  8d873c030000              LEA EAX,[EDI + 0x33c]
004f7497  50                        PUSH EAX
004f7498  6a31                      PUSH 0x31
004f749a  68e8030000                PUSH 0x3e8
004f749f  e87c16f3ff                CALL 0x00428b20
004f74a4  8bf0                      MOV ESI,EAX
004f74a6  8bcf                      MOV ECX,EDI
004f74a8  684cd8b100                PUSH 0xb1d84c
004f74ad  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
004f74b3  50                        PUSH EAX
004f74b4  e837f61b00                CALL 0x006b6af0
004f74b9  f30f108dd4feffff          MOVSS XMM1,dword ptr [EBP + 0xfffffed4]
004f74c1  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
004f74c8  f30f1085d8feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffed8]
004f74d0  9f                        LAHF
004f74d1  f6c444                    TEST AH,0x44
004f74d4  7a23                      JP 0x004f74f9
004f74d6  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004f74dd  9f                        LAHF
004f74de  f6c444                    TEST AH,0x44
004f74e1  7a16                      JP 0x004f74f9
004f74e3  c7864c03000000000000      MOV dword ptr [ESI + 0x34c],0x0
004f74ed  c786500300000000c0c1      MOV dword ptr [ESI + 0x350],0xc1c00000
004f74f7  eb10                      JMP 0x004f7509
004f74f9  f30f118e4c030000          MOVSS dword ptr [ESI + 0x34c],XMM1
004f7501  f30f118650030000          MOVSS dword ptr [ESI + 0x350],XMM0
004f7509  8b06                      MOV EAX,dword ptr [ESI]
004f750b  8bce                      MOV ECX,ESI
004f750d  c786580300000000803f      MOV dword ptr [ESI + 0x358],0x3f800000
004f7517  ff500c                    CALL dword ptr [EAX + 0xc]
004f751a  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
004f7520  b001                      MOV AL,0x1
004f7522  888513ffffff              MOV byte ptr [EBP + 0xffffff13],AL
004f7528  e9c5000000                JMP 0x004f75f2
004f752d  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
004f7533  83fa01                    CMP EDX,0x1
004f7536  0f85b0000000              JNZ 0x004f75ec
004f753c  8bcf                      MOV ECX,EDI
004f753e  e86df2f5ff                CALL 0x004567b0
004f7543  84c0                      TEST AL,AL
004f7545  0f849b000000              JZ 0x004f75e6
004f754b  0f2805b0bfba00            MOVAPS XMM0,xmmword ptr [0x00babfb0]
004f7552  8d4dc0                    LEA ECX,[EBP + -0x40]
004f7555  8b06                      MOV EAX,dword ptr [ESI]
004f7557  52                        PUSH EDX
004f7558  52                        PUSH EDX
004f7559  68ff000000                PUSH 0xff
004f755e  6a08                      PUSH 0x8
004f7560  0f1145c0                  MOVUPS xmmword ptr [EBP + -0x40],XMM0
004f7564  c745e00000803f            MOV dword ptr [EBP + -0x20],0x3f800000
004f756b  0f57c0                    XORPS XMM0,XMM0
004f756e  c745e400000000            MOV dword ptr [EBP + -0x1c],0x0
004f7575  51                        PUSH ECX
004f7576  8bce                      MOV ECX,ESI
004f7578  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004f757f  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
004f7583  ff503c                    CALL dword ptr [EAX + 0x3c]
004f7586  6a00                      PUSH 0x0
004f7588  6a00                      PUSH 0x0
004f758a  6a02                      PUSH 0x2
004f758c  8bce                      MOV ECX,ESI
004f758e  e8dd142600                CALL 0x00758a70
004f7593  e8c8791f00                CALL 0x006eef60
004f7598  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004f759e  50                        PUSH EAX
004f759f  6a00                      PUSH 0x0
004f75a1  6a00                      PUSH 0x0
004f75a3  6840b6c700                PUSH 0xc7b640
004f75a8  8d873c030000              LEA EAX,[EDI + 0x33c]
004f75ae  50                        PUSH EAX
004f75af  6a31                      PUSH 0x31
004f75b1  68e8030000                PUSH 0x3e8
004f75b6  e86515f3ff                CALL 0x00428b20
004f75bb  8bc8                      MOV ECX,EAX
004f75bd  8b10                      MOV EDX,dword ptr [EAX]
004f75bf  c780dc00000000000000      MOV dword ptr [EAX + 0xdc],0x0
004f75c9  c780e00000000000c0c1      MOV dword ptr [EAX + 0xe0],0xc1c00000
004f75d3  ff520c                    CALL dword ptr [EDX + 0xc]
004f75d6  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
004f75dc  b001                      MOV AL,0x1
004f75de  888513ffffff              MOV byte ptr [EBP + 0xffffff13],AL
004f75e4  eb0c                      JMP 0x004f75f2
004f75e6  8b8d14ffffff              MOV ECX,dword ptr [EBP + 0xffffff14]
004f75ec  8a8513ffffff              MOV AL,byte ptr [EBP + 0xffffff13]
004f75f2  41                        INC ECX
004f75f3  898d14ffffff              MOV dword ptr [EBP + 0xffffff14],ECX
004f75f9  3b8dbcfeffff              CMP ECX,dword ptr [EBP + 0xfffffebc]
004f75ff  0f822bfdffff              JC 0x004f7330
004f7605  84c0                      TEST AL,AL
004f7607  0f847a000000              JZ 0x004f7687
004f760d  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
004f7613  83f812                    CMP EAX,0x12
004f7616  750a                      JNZ 0x004f7622
004f7618  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
004f7620  eb0d                      JMP 0x004f762f
004f7622  83f813                    CMP EAX,0x13
004f7625  7510                      JNZ 0x004f7637
004f7627  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
004f762f  f30f1185e4feffff          MOVSS dword ptr [EBP + 0xfffffee4],XMM0
004f7637  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004f763d  8d8d0cffffff              LEA ECX,[EBP + 0xffffff0c]
004f7643  c7850cffffff9d000000      MOV dword ptr [EBP + 0xffffff0c],0x9d
004f764d  e82ef14500                CALL 0x00956780
004f7652  f30f1085e4feffff          MOVSS XMM0,dword ptr [EBP + 0xfffffee4]
004f765a  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004f7660  83ec08                    SUB ESP,0x8
004f7663  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004f766b  f30f110424                MOVSS dword ptr [ESP],XMM0
004f7670  6a00                      PUSH 0x0
004f7672  6a02                      PUSH 0x2
004f7674  51                        PUSH ECX
004f7675  c704240000803f            MOV dword ptr [ESP],0x3f800000
004f767c  ffb50cffffff              PUSH dword ptr [EBP + 0xffffff0c]
004f7682  e8a9654300                CALL 0x0092dc30
004f7687  80bdb0feffff00            CMP byte ptr [EBP + 0xfffffeb0],0x0
004f768e  7534                      JNZ 0x004f76c4
004f7690  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
004f7696  85d2                      TEST EDX,EDX
004f7698  7405                      JZ 0x004f769f
004f769a  83c230                    ADD EDX,0x30
004f769d  eb05                      JMP 0x004f76a4
004f769f  ba18f6c700                MOV EDX,0xc7f618
004f76a4  8b8db4feffff              MOV ECX,dword ptr [EBP + 0xfffffeb4]
004f76aa  85c9                      TEST ECX,ECX
004f76ac  7416                      JZ 0x004f76c4
004f76ae  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
004f76b1  83c1fc                    ADD ECX,-0x4
004f76b4  2902                      SUB dword ptr [EDX],EAX
004f76b6  51                        PUSH ECX
004f76b7  835a0400                  SBB dword ptr [EDX + 0x4],0x0
004f76bb  ff15dc87b100              CALL dword ptr [0x00b187dc]
004f76c1  83c404                    ADD ESP,0x4
004f76c4  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004f76c7  64890d00000000            MOV dword ptr FS:[0x0],ECX
004f76ce  59                        POP ECX
004f76cf  5f                        POP EDI
004f76d0  5e                        POP ESI
004f76d1  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
004f76d4  33cd                      XOR ECX,EBP
004f76d6  e8507a5f00                CALL 0x00aef12b
004f76db  8be5                      MOV ESP,EBP
004f76dd  5d                        POP EBP
004f76de  8be3                      MOV ESP,EBX
004f76e0  5b                        POP EBX
004f76e1  c3                        RET
