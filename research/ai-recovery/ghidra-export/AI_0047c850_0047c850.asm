; J460 NPC AI 0x0047c850 AI_0047c850
; types=36
; identities=36.0.0
; entry=0047c850
0047c850  53                        PUSH EBX
0047c851  8bdc                      MOV EBX,ESP
0047c853  83ec08                    SUB ESP,0x8
0047c856  83e4f8                    AND ESP,0xfffffff8
0047c859  83c404                    ADD ESP,0x4
0047c85c  55                        PUSH EBP
0047c85d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0047c860  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0047c864  8bec                      MOV EBP,ESP
0047c866  6aff                      PUSH -0x1
0047c868  68682baf00                PUSH 0xaf2b68
0047c86d  64a100000000              MOV EAX,FS:[0x0]
0047c873  50                        PUSH EAX
0047c874  53                        PUSH EBX
0047c875  81ec48010000              SUB ESP,0x148
0047c87b  a1b493bf00                MOV EAX,[0x00bf93b4]
0047c880  33c5                      XOR EAX,EBP
0047c882  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0047c885  56                        PUSH ESI
0047c886  57                        PUSH EDI
0047c887  50                        PUSH EAX
0047c888  8d45f4                    LEA EAX,[EBP + -0xc]
0047c88b  64a300000000              MOV FS:[0x0],EAX
0047c891  8bf9                      MOV EDI,ECX
0047c893  89bd10ffffff              MOV dword ptr [EBP + 0xffffff10],EDI
0047c899  e8a21f2400                CALL 0x006be840
0047c89e  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0047c8a5  898528ffffff              MOV dword ptr [EBP + 0xffffff28],EAX
0047c8ab  0f8581010000              JNZ 0x0047ca32
0047c8b1  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047c8b7  8b8100830100              MOV EAX,dword ptr [ECX + 0x18300]
0047c8bd  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0047c8c0  85c0                      TEST EAX,EAX
0047c8c2  7411                      JZ 0x0047c8d5
0047c8c4  8b4010                    MOV EAX,dword ptr [EAX + 0x10]
0047c8c7  85c0                      TEST EAX,EAX
0047c8c9  740a                      JZ 0x0047c8d5
0047c8cb  83784801                  CMP dword ptr [EAX + 0x48],0x1
0047c8cf  0f851e010000              JNZ 0x0047c9f3
0047c8d5  83bf2c03000000            CMP dword ptr [EDI + 0x32c],0x0
0047c8dc  0f8c11010000              JL 0x0047c9f3
0047c8e2  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
0047c8e8  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
0047c8ee  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0047c8f6  c1f802                    SAR EAX,0x2
0047c8f9  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
0047c901  f30f118514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM0
0047c909  c78518ffffff0000c843      MOV dword ptr [EBP + 0xffffff18],0x43c80000
0047c913  85c0                      TEST EAX,EAX
0047c915  0f84d8000000              JZ 0x0047c9f3
0047c91b  33ff                      XOR EDI,EDI
0047c91d  0f1f00                    NOP dword ptr [EAX]
0047c920  85ff                      TEST EDI,EDI
0047c922  7516                      JNZ 0x0047c93a
0047c924  57                        PUSH EDI
0047c925  e846aff9ff                CALL 0x00417870
0047c92a  57                        PUSH EDI
0047c92b  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0047c931  57                        PUSH EDI
0047c932  51                        PUSH ECX
0047c933  8bc8                      MOV ECX,EAX
0047c935  e990000000                JMP 0x0047c9ca
0047c93a  57                        PUSH EDI
0047c93b  e830aff9ff                CALL 0x00417870
0047c940  8bf0                      MOV ESI,EAX
0047c942  e819262700                CALL 0x006eef60
0047c947  660f6ec0                  MOVD XMM0,EAX
0047c94b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047c94f  c1e81f                    SHR EAX,0x1f
0047c952  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047c95b  660f5ac0                  CVTPD2PS XMM0,XMM0
0047c95f  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047c967  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0047c96f  f30f58c0                  ADDSS XMM0,XMM0
0047c973  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0047c97b  e8c00bfaff                CALL 0x0041d540
0047c980  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0047c988  f30f588528ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff28]
0047c990  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
0047c998  f30f10852cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff2c]
0047c9a0  e87b0bfaff                CALL 0x0041d520
0047c9a5  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
0047c9ad  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0047c9b3  6a00                      PUSH 0x0
0047c9b5  6a00                      PUSH 0x0
0047c9b7  50                        PUSH EAX
0047c9b8  f30f580554abba00          ADDSS XMM0,dword ptr [0x00baab54]
0047c9c0  8bce                      MOV ECX,ESI
0047c9c2  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0047c9ca  e8810f3500                CALL 0x007cd950
0047c9cf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047c9d5  47                        INC EDI
0047c9d6  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
0047c9dc  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
0047c9e2  c1f802                    SAR EAX,0x2
0047c9e5  3bf8                      CMP EDI,EAX
0047c9e7  0f8233ffffff              JC 0x0047c920
0047c9ed  8bbd10ffffff              MOV EDI,dword ptr [EBP + 0xffffff10]
0047c9f3  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047c9fb  f30f5805a0a8ba00          ADDSS XMM0,dword ptr [0x00baa8a0]
0047ca03  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0047ca0b  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0047ca11  898734030000              MOV dword ptr [EDI + 0x334],EAX
0047ca17  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0047ca1d  898738030000              MOV dword ptr [EDI + 0x338],EAX
0047ca23  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0047ca2d  e9480e0000                JMP 0x0047d87a
0047ca32  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0047ca3a  8d85d4feffff              LEA EAX,[EBP + 0xfffffed4]
0047ca40  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
0047ca48  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0047ca50  8bcf                      MOV ECX,EDI
0047ca52  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
0047ca5a  6a00                      PUSH 0x0
0047ca5c  6a00                      PUSH 0x0
0047ca5e  ff7728                    PUSH dword ptr [EDI + 0x28]
0047ca61  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0047ca69  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0047ca71  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0047ca79  50                        PUSH EAX
0047ca7a  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0047ca82  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0047ca8a  e811422500                CALL 0x006d0ca0
0047ca8f  33c9                      XOR ECX,ECX
0047ca91  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0047ca98  898d2cffffff              MOV dword ptr [EBP + 0xffffff2c],ECX
0047ca9e  398de0feffff              CMP dword ptr [EBP + 0xfffffee0],ECX
0047caa4  0f86d6010000              JBE 0x0047cc80
0047caaa  660f1f440000              NOP word ptr [EAX + EAX*0x1]
0047cab0  8b85d8feffff              MOV EAX,dword ptr [EBP + 0xfffffed8]
0047cab6  6a00                      PUSH 0x0
0047cab8  68acd6c500                PUSH 0xc5d6ac
0047cabd  68dcd5c500                PUSH 0xc5d5dc
0047cac2  6a00                      PUSH 0x0
0047cac4  ff3488                    PUSH dword ptr [EAX + ECX*0x4]
0047cac7  e8e53d6700                CALL 0x00af08b1
0047cacc  8bf0                      MOV ESI,EAX
0047cace  83c414                    ADD ESP,0x14
0047cad1  85f6                      TEST ESI,ESI
0047cad3  0f848e010000              JZ 0x0047cc67
0047cad9  3bf7                      CMP ESI,EDI
0047cadb  0f8486010000              JZ 0x0047cc67
0047cae1  837e281e                  CMP dword ptr [ESI + 0x28],0x1e
0047cae5  0f85a1000000              JNZ 0x0047cb8c
0047caeb  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0047caf2  0f846f010000              JZ 0x0047cc67
0047caf8  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0047cafe  33c0                      XOR EAX,EAX
0047cb00  81e100000010              AND ECX,0x10000000
0047cb06  0bc1                      OR EAX,ECX
0047cb08  7404                      JZ 0x0047cb0e
0047cb0a  b001                      MOV AL,0x1
0047cb0c  eb02                      JMP 0x0047cb10
0047cb0e  32c0                      XOR AL,AL
0047cb10  84c0                      TEST AL,AL
0047cb12  0f844f010000              JZ 0x0047cc67
0047cb18  8b06                      MOV EAX,dword ptr [ESI]
0047cb1a  8b0d40b6c700              MOV ECX,dword ptr [0x00c7b640]
0047cb20  898dbcfeffff              MOV dword ptr [EBP + 0xfffffebc],ECX
0047cb26  898dc4feffff              MOV dword ptr [EBP + 0xfffffec4],ECX
0047cb2c  8bce                      MOV ECX,ESI
0047cb2e  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
0047cb31  a144b6c700                MOV EAX,[0x00c7b644]
0047cb36  8985c0feffff              MOV dword ptr [EBP + 0xfffffec0],EAX
0047cb3c  8985c8feffff              MOV dword ptr [EBP + 0xfffffec8],EAX
0047cb42  8d85acfeffff              LEA EAX,[EBP + 0xfffffeac]
0047cb48  50                        PUSH EAX
0047cb49  c785acfeffff00000000      MOV dword ptr [EBP + 0xfffffeac],0x0
0047cb53  c785b0feffff00000000      MOV dword ptr [EBP + 0xfffffeb0],0x0
0047cb5d  c785b4feffff00000000      MOV dword ptr [EBP + 0xfffffeb4],0x0
0047cb67  c785b8feffff00000000      MOV dword ptr [EBP + 0xfffffeb8],0x0
0047cb71  c785ccfeffff00000000      MOV dword ptr [EBP + 0xfffffecc],0x0
0047cb7b  c785d0feffff00000000      MOV dword ptr [EBP + 0xfffffed0],0x0
0047cb85  ffd2                      CALL EDX
0047cb87  e9db000000                JMP 0x0047cc67
0047cb8c  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0047cb94  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0047cb9c  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
0047cba4  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0047cbac  0f28c1                    MOVAPS XMM0,XMM1
0047cbaf  f30f118d18ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM1
0047cbb7  f30f59c1                  MULSS XMM0,XMM1
0047cbbb  0f28ca                    MOVAPS XMM1,XMM2
0047cbbe  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
0047cbc6  f30f59ca                  MULSS XMM1,XMM2
0047cbca  f30f58c1                  ADDSS XMM0,XMM1
0047cbce  e87d8efbff                CALL 0x00435a50
0047cbd3  0f28c8                    MOVAPS XMM1,XMM0
0047cbd6  0f2f0d6ca0ba00            COMISS XMM1,dword ptr [0x00baa06c]
0047cbdd  0f8684000000              JBE 0x0047cc67
0047cbe3  f30f1005a0a9ba00          MOVSS XMM0,dword ptr [0x00baa9a0]
0047cbeb  0f2fc1                    COMISS XMM0,XMM1
0047cbee  7677                      JBE 0x0047cc67
0047cbf0  f30f5cc1                  SUBSS XMM0,XMM1
0047cbf4  f30f109510ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff10]
0047cbfc  f30f109d18ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff18]
0047cc04  f30f10a66c030000          MOVSS XMM4,dword ptr [ESI + 0x36c]
0047cc0c  f30f5905a0a0ba00          MULSS XMM0,dword ptr [0x00baa0a0]
0047cc14  f30f5ec1                  DIVSS XMM0,XMM1
0047cc18  f30f59d0                  MULSS XMM2,XMM0
0047cc1c  f30f59d8                  MULSS XMM3,XMM0
0047cc20  0f57c0                    XORPS XMM0,XMM0
0047cc23  0f2ee0                    UCOMISS XMM4,XMM0
0047cc26  9f                        LAHF
0047cc27  f6c444                    TEST AH,0x44
0047cc2a  7b3b                      JNP 0x0047cc67
0047cc2c  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
0047cc34  0f28c1                    MOVAPS XMM0,XMM1
0047cc37  f30f59cb                  MULSS XMM1,XMM3
0047cc3b  f30f59c2                  MULSS XMM0,XMM2
0047cc3f  f30f5ecc                  DIVSS XMM1,XMM4
0047cc43  f30f5ec4                  DIVSS XMM0,XMM4
0047cc47  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
0047cc4f  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
0047cc57  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
0047cc5f  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
0047cc67  8b8d2cffffff              MOV ECX,dword ptr [EBP + 0xffffff2c]
0047cc6d  41                        INC ECX
0047cc6e  898d2cffffff              MOV dword ptr [EBP + 0xffffff2c],ECX
0047cc74  3b8de0feffff              CMP ECX,dword ptr [EBP + 0xfffffee0]
0047cc7a  0f8230feffff              JC 0x0047cab0
0047cc80  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0047cc86  83f803                    CMP EAX,0x3
0047cc89  0f85b1020000              JNZ 0x0047cf40
0047cc8f  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0047cc96  7570                      JNZ 0x0047cd08
0047cc98  e8c3222700                CALL 0x006eef60
0047cc9d  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0047cca5  83e001                    AND EAX,0x1
0047cca8  0f57c9                    XORPS XMM1,XMM1
0047ccab  0f2fc1                    COMISS XMM0,XMM1
0047ccae  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
0047ccb5  760f                      JBE 0x0047ccc6
0047ccb7  b802000000                MOV EAX,0x2
0047ccbc  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0047ccc6  50                        PUSH EAX
0047ccc7  68c8e4b100                PUSH 0xb1e4c8
0047cccc  6a20                      PUSH 0x20
0047ccce  6818f7c700                PUSH 0xc7f718
0047ccd3  e84817faff                CALL 0x0041e420
0047ccd8  83c410                    ADD ESP,0x10
0047ccdb  8d4f48                    LEA ECX,[EDI + 0x48]
0047ccde  6a01                      PUSH 0x1
0047cce0  6818f7c700                PUSH 0xc7f718
0047cce5  e8e6d8f8ff                CALL 0x0040a5d0
0047ccea  84c0                      TEST AL,AL
0047ccec  740f                      JZ 0x0047ccfd
0047ccee  8d4f78                    LEA ECX,[EDI + 0x78]
0047ccf1  e8bad4f8ff                CALL 0x0040a1b0
0047ccf6  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0047ccfd  ff8710040000              INC dword ptr [EDI + 0x410]
0047cd03  e98f090000                JMP 0x0047d697
0047cd08  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047cd0c  740d                      JZ 0x0047cd1b
0047cd0e  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0047cd15  0f857c090000              JNZ 0x0047d697
0047cd1b  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0047cd21  33f6                      XOR ESI,ESI
0047cd23  81e100000010              AND ECX,0x10000000
0047cd29  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
0047cd2f  33c0                      XOR EAX,EAX
0047cd31  0bc1                      OR EAX,ECX
0047cd33  741f                      JZ 0x0047cd54
0047cd35  a17816c700                MOV EAX,[0x00c71678]
0047cd3a  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0047cd40  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0047cd43  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0047cd47  740b                      JZ 0x0047cd54
0047cd49  89b710040000              MOV dword ptr [EDI + 0x410],ESI
0047cd4f  e943090000                JMP 0x0047d697
0047cd54  e807222700                CALL 0x006eef60
0047cd59  33d2                      XOR EDX,EDX
0047cd5b  b903000000                MOV ECX,0x3
0047cd60  f7f1                      DIV ECX
0047cd62  85d2                      TEST EDX,EDX
0047cd64  8b157816c700              MOV EDX,dword ptr [0x00c71678]
0047cd6a  0f84c6000000              JZ 0x0047ce36
0047cd70  8b8528ffffff              MOV EAX,dword ptr [EBP + 0xffffff28]
0047cd76  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0047cd7e  0f2f0594aaba00            COMISS XMM0,dword ptr [0x00baaa94]
0047cd85  0f86ab000000              JBE 0x0047ce36
0047cd8b  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
0047cd91  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0047cd97  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0047cd9d  03c1                      ADD EAX,ECX
0047cd9f  33c9                      XOR ECX,ECX
0047cda1  85c0                      TEST EAX,EAX
0047cda3  0f4fc8                    CMOVG ECX,EAX
0047cda6  83f908                    CMP ECX,0x8
0047cda9  0f8d87000000              JGE 0x0047ce36
0047cdaf  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0047cdb3  0f849d000000              JZ 0x0047ce56
0047cdb9  8b8528ffffff              MOV EAX,dword ptr [EBP + 0xffffff28]
0047cdbf  f30f10a73c030000          MOVSS XMM4,dword ptr [EDI + 0x33c]
0047cdc7  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
0047cdcf  f30f5cd8                  SUBSS XMM3,XMM0
0047cdd3  0f57c0                    XORPS XMM0,XMM0
0047cdd6  f30f5ca03c030000          SUBSS XMM4,dword ptr [EAX + 0x33c]
0047cdde  0f28cb                    MOVAPS XMM1,XMM3
0047cde1  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0047cde8  0f28d4                    MOVAPS XMM2,XMM4
0047cdeb  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0047cdf2  0f2fd1                    COMISS XMM2,XMM1
0047cdf5  771c                      JA 0x0047ce13
0047cdf7  0f2fd8                    COMISS XMM3,XMM0
0047cdfa  7717                      JA 0x0047ce13
0047cdfc  be02000000                MOV ESI,0x2
0047ce01  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0047ce0b  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
0047ce11  eb7e                      JMP 0x0047ce91
0047ce13  0f2fe0                    COMISS XMM4,XMM0
0047ce16  7617                      JBE 0x0047ce2f
0047ce18  be04000000                MOV ESI,0x4
0047ce1d  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0047ce27  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
0047ce2d  eb62                      JMP 0x0047ce91
0047ce2f  be05000000                MOV ESI,0x5
0047ce34  eb43                      JMP 0x0047ce79
0047ce36  8b8200830100              MOV EAX,dword ptr [EDX + 0x18300]
0047ce3c  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0047ce42  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0047ce48  03c1                      ADD EAX,ECX
0047ce4a  33c9                      XOR ECX,ECX
0047ce4c  85c0                      TEST EAX,EAX
0047ce4e  0f4fc8                    CMOVG ECX,EAX
0047ce51  83f90e                    CMP ECX,0xe
0047ce54  7d29                      JGE 0x0047ce7f
0047ce56  e805212700                CALL 0x006eef60
0047ce5b  b903000000                MOV ECX,0x3
0047ce60  c745e401000000            MOV dword ptr [EBP + -0x1c],0x1
0047ce67  33d2                      XOR EDX,EDX
0047ce69  894de0                    MOV dword ptr [EBP + -0x20],ECX
0047ce6c  f7f1                      DIV ECX
0047ce6e  c745e806000000            MOV dword ptr [EBP + -0x18],0x6
0047ce75  8b7495e0                  MOV ESI,dword ptr [EBP + EDX*0x4 + -0x20]
0047ce79  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
0047ce7f  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0047ce89  85f6                      TEST ESI,ESI
0047ce8b  0f8e06080000              JLE 0x0047d697
0047ce91  56                        PUSH ESI
0047ce92  68bce4b100                PUSH 0xb1e4bc
0047ce97  6a20                      PUSH 0x20
0047ce99  6818f7c700                PUSH 0xc7f718
0047ce9e  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0047cea8  e87315faff                CALL 0x0041e420
0047cead  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
0047ceb0  83c410                    ADD ESP,0x10
0047ceb3  85c9                      TEST ECX,ECX
0047ceb5  744c                      JZ 0x0047cf03
0047ceb7  83791410                  CMP dword ptr [ECX + 0x14],0x10
0047cebb  8bc1                      MOV EAX,ECX
0047cebd  7202                      JC 0x0047cec1
0047cebf  8b01                      MOV EAX,dword ptr [ECX]
0047cec1  b918f7c700                MOV ECX,0xc7f718
0047cec6  8a10                      MOV DL,byte ptr [EAX]
0047cec8  3a11                      CMP DL,byte ptr [ECX]
0047ceca  751a                      JNZ 0x0047cee6
0047cecc  84d2                      TEST DL,DL
0047cece  7412                      JZ 0x0047cee2
0047ced0  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0047ced3  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0047ced6  750e                      JNZ 0x0047cee6
0047ced8  83c002                    ADD EAX,0x2
0047cedb  83c102                    ADD ECX,0x2
0047cede  84d2                      TEST DL,DL
0047cee0  75e4                      JNZ 0x0047cec6
0047cee2  33c0                      XOR EAX,EAX
0047cee4  eb05                      JMP 0x0047ceeb
0047cee6  1bc0                      SBB EAX,EAX
0047cee8  83c801                    OR EAX,0x1
0047ceeb  8d4f48                    LEA ECX,[EDI + 0x48]
0047ceee  85c0                      TEST EAX,EAX
0047cef0  7514                      JNZ 0x0047cf06
0047cef2  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
0047cef5  80783400                  CMP byte ptr [EAX + 0x34],0x0
0047cef9  7430                      JZ 0x0047cf2b
0047cefb  80794400                  CMP byte ptr [ECX + 0x44],0x0
0047ceff  752a                      JNZ 0x0047cf2b
0047cf01  eb03                      JMP 0x0047cf06
0047cf03  8d4f48                    LEA ECX,[EDI + 0x48]
0047cf06  6a01                      PUSH 0x1
0047cf08  6818f7c700                PUSH 0xc7f718
0047cf0d  e8bed6f8ff                CALL 0x0040a5d0
0047cf12  84c0                      TEST AL,AL
0047cf14  7415                      JZ 0x0047cf2b
0047cf16  8d4f78                    LEA ECX,[EDI + 0x78]
0047cf19  e892d2f8ff                CALL 0x0040a1b0
0047cf1e  8bb52cffffff              MOV ESI,dword ptr [EBP + 0xffffff2c]
0047cf24  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0047cf2b  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
0047cf31  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0047cf3b  e957070000                JMP 0x0047d697
0047cf40  83f808                    CMP EAX,0x8
0047cf43  0f854e070000              JNZ 0x0047d697
0047cf49  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047cf4d  0f8430070000              JZ 0x0047d683
0047cf53  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0047cf5a  0f8423070000              JZ 0x0047d683
0047cf60  68dcd2b100                PUSH 0xb1d2dc
0047cf65  8d4f78                    LEA ECX,[EDI + 0x78]
0047cf68  e863def8ff                CALL 0x0040add0
0047cf6d  84c0                      TEST AL,AL
0047cf6f  0f8422070000              JZ 0x0047d697
0047cf75  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
0047cf7b  e8b01ffcff                CALL 0x0043ef30
0047cf80  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0047cf86  83f803                    CMP EAX,0x3
0047cf89  0f85d5000000              JNZ 0x0047d064
0047cf8f  51                        PUSH ECX
0047cf90  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047cf97  6a00                      PUSH 0x0
0047cf99  6a02                      PUSH 0x2
0047cf9b  51                        PUSH ECX
0047cf9c  c704243333333f            MOV dword ptr [ESP],0x3f333333
0047cfa3  8bcf                      MOV ECX,EDI
0047cfa5  6809010000                PUSH 0x109
0047cfaa  e8f19b2500                CALL 0x006d6ba0
0047cfaf  51                        PUSH ECX
0047cfb0  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047cfb7  6a00                      PUSH 0x0
0047cfb9  6a02                      PUSH 0x2
0047cfbb  51                        PUSH ECX
0047cfbc  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047cfc3  8bcf                      MOV ECX,EDI
0047cfc5  6a09                      PUSH 0x9
0047cfc7  e8d49b2500                CALL 0x006d6ba0
0047cfcc  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0047cfd2  33c0                      XOR EAX,EAX
0047cfd4  81e100000010              AND ECX,0x10000000
0047cfda  0bc1                      OR EAX,ECX
0047cfdc  7417                      JZ 0x0047cff5
0047cfde  6a00                      PUSH 0x0
0047cfe0  51                        PUSH ECX
0047cfe1  6a00                      PUSH 0x0
0047cfe3  6a0e                      PUSH 0xe
0047cfe5  8bcf                      MOV ECX,EDI
0047cfe7  e8f4f72200                CALL 0x006ac7e0
0047cfec  83f803                    CMP EAX,0x3
0047cfef  0f83a2060000              JNC 0x0047d697
0047cff5  e8661f2700                CALL 0x006eef60
0047cffa  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0047d002  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047d00a  f30f580d50a9ba00          ADDSS XMM1,dword ptr [0x00baa950]
0047d012  f30f5c05a0a8ba00          SUBSS XMM0,dword ptr [0x00baa8a0]
0047d01a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047d020  50                        PUSH EAX
0047d021  6a00                      PUSH 0x0
0047d023  57                        PUSH EDI
0047d024  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0047d02a  c7851cffffff00002041      MOV dword ptr [EBP + 0xffffff1c],0x41200000
0047d034  50                        PUSH EAX
0047d035  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0047d03b  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
0047d045  50                        PUSH EAX
0047d046  6a00                      PUSH 0x0
0047d048  6a0e                      PUSH 0xe
0047d04a  f30f118d0cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM1
0047d052  f30f118510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM0
0047d05a  e8c1bafaff                CALL 0x00428b20
0047d05f  e933060000                JMP 0x0047d697
0047d064  83f801                    CMP EAX,0x1
0047d067  0f855c010000              JNZ 0x0047d1c9
0047d06d  51                        PUSH ECX
0047d06e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d075  6a00                      PUSH 0x0
0047d077  6a02                      PUSH 0x2
0047d079  51                        PUSH ECX
0047d07a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d081  8bcf                      MOV ECX,EDI
0047d083  6809010000                PUSH 0x109
0047d088  e8139b2500                CALL 0x006d6ba0
0047d08d  51                        PUSH ECX
0047d08e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d095  6a00                      PUSH 0x0
0047d097  6a02                      PUSH 0x2
0047d099  51                        PUSH ECX
0047d09a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d0a1  8bcf                      MOV ECX,EDI
0047d0a3  6a0d                      PUSH 0xd
0047d0a5  e8f69a2500                CALL 0x006d6ba0
0047d0aa  6800000010                PUSH 0x10000000
0047d0af  be02000000                MOV ESI,0x2
0047d0b4  8bcf                      MOV ECX,EDI
0047d0b6  6a00                      PUSH 0x0
0047d0b8  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
0047d0be  e86da3f9ff                CALL 0x00417430
0047d0c3  84c0                      TEST AL,AL
0047d0c5  7420                      JZ 0x0047d0e7
0047d0c7  6a00                      PUSH 0x0
0047d0c9  51                        PUSH ECX
0047d0ca  6a00                      PUSH 0x0
0047d0cc  6a12                      PUSH 0x12
0047d0ce  8bcf                      MOV ECX,EDI
0047d0d0  e80bf72200                CALL 0x006ac7e0
0047d0d5  b903000000                MOV ECX,0x3
0047d0da  2bc8                      SUB ECX,EAX
0047d0dc  3bce                      CMP ECX,ESI
0047d0de  0f4ef1                    CMOVLE ESI,ECX
0047d0e1  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
0047d0e7  33f6                      XOR ESI,ESI
0047d0e9  39b52cffffff              CMP dword ptr [EBP + 0xffffff2c],ESI
0047d0ef  0f8ea2050000              JLE 0x0047d697
0047d0f5  89b51cffffff              MOV dword ptr [EBP + 0xffffff1c],ESI
0047d0fb  c78520ffffff0000a0c1      MOV dword ptr [EBP + 0xffffff20],0xc1a00000
0047d105  85f6                      TEST ESI,ESI
0047d107  750a                      JNZ 0x0047d113
0047d109  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0047d111  eb08                      JMP 0x0047d11b
0047d113  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0047d11b  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
0047d123  e8381e2700                CALL 0x006eef60
0047d128  f30f108d28ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff28]
0047d130  f30f590d04a9ba00          MULSS XMM1,dword ptr [0x00baa904]
0047d138  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047d13e  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047d146  f30f5c0568a9ba00          SUBSS XMM0,dword ptr [0x00baa968]
0047d14e  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0047d156  6a00                      PUSH 0x0
0047d158  68acd6c500                PUSH 0xc5d6ac
0047d15d  68dcd5c500                PUSH 0xc5d5dc
0047d162  6a00                      PUSH 0x0
0047d164  50                        PUSH EAX
0047d165  6a00                      PUSH 0x0
0047d167  57                        PUSH EDI
0047d168  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0047d16e  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
0047d176  50                        PUSH EAX
0047d177  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
0047d17d  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
0047d185  50                        PUSH EAX
0047d186  6a00                      PUSH 0x0
0047d188  6a12                      PUSH 0x12
0047d18a  e891b9faff                CALL 0x00428b20
0047d18f  50                        PUSH EAX
0047d190  e81c376700                CALL 0x00af08b1
0047d195  46                        INC ESI
0047d196  83c414                    ADD ESP,0x14
0047d199  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0047d1a1  f30f5c0530a6ba00          SUBSS XMM0,dword ptr [0x00baa630]
0047d1a9  c6807401000001            MOV byte ptr [EAX + 0x174],0x1
0047d1b0  f30f118080030000          MOVSS dword ptr [EAX + 0x380],XMM0
0047d1b8  3bb52cffffff              CMP ESI,dword ptr [EBP + 0xffffff2c]
0047d1be  0f8c41ffffff              JL 0x0047d105
0047d1c4  e9ce040000                JMP 0x0047d697
0047d1c9  83f806                    CMP EAX,0x6
0047d1cc  0f85cf010000              JNZ 0x0047d3a1
0047d1d2  51                        PUSH ECX
0047d1d3  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d1da  6a00                      PUSH 0x0
0047d1dc  6a02                      PUSH 0x2
0047d1de  51                        PUSH ECX
0047d1df  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
0047d1e6  8bcf                      MOV ECX,EDI
0047d1e8  6809010000                PUSH 0x109
0047d1ed  e8ae992500                CALL 0x006d6ba0
0047d1f2  6aff                      PUSH -0x1
0047d1f4  6a1e                      PUSH 0x1e
0047d1f6  8d45dc                    LEA EAX,[EBP + -0x24]
0047d1f9  8bcf                      MOV ECX,EDI
0047d1fb  50                        PUSH EAX
0047d1fc  e85f3a2500                CALL 0x006d0c60
0047d201  6800000010                PUSH 0x10000000
0047d206  be02000000                MOV ESI,0x2
0047d20b  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0047d20f  6a00                      PUSH 0x0
0047d211  8bcf                      MOV ECX,EDI
0047d213  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
0047d219  e812a2f9ff                CALL 0x00417430
0047d21e  84c0                      TEST AL,AL
0047d220  7420                      JZ 0x0047d242
0047d222  6a00                      PUSH 0x0
0047d224  51                        PUSH ECX
0047d225  6a00                      PUSH 0x0
0047d227  6a1e                      PUSH 0x1e
0047d229  8bcf                      MOV ECX,EDI
0047d22b  e8b0f52200                CALL 0x006ac7e0
0047d230  b903000000                MOV ECX,0x3
0047d235  2bc8                      SUB ECX,EAX
0047d237  3bce                      CMP ECX,ESI
0047d239  0f4ef1                    CMOVLE ESI,ECX
0047d23c  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
0047d242  33c0                      XOR EAX,EAX
0047d244  898528ffffff              MOV dword ptr [EBP + 0xffffff28],EAX
0047d24a  85f6                      TEST ESI,ESI
0047d24c  0f8e23010000              JLE 0x0047d375
0047d252  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
0047d255  f30f1014c5bcc5c500        MOVSS XMM2,dword ptr [EAX*0x8 + 0xc5c5bc]
0047d25e  33f6                      XOR ESI,ESI
0047d260  f30f101cc5c0c5c500        MOVSS XMM3,dword ptr [EAX*0x8 + 0xc5c5c0]
0047d269  c68527ffffff01            MOV byte ptr [EBP + 0xffffff27],0x1
0047d270  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
0047d278  f30f589f40030000          ADDSS XMM3,dword ptr [EDI + 0x340]
0047d280  f30f119514ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM2
0047d288  f30f119d18ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM3
0047d290  85c9                      TEST ECX,ECX
0047d292  0f849d000000              JZ 0x0047d335
0047d298  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0047d29b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
0047d2a0  8b0cb0                    MOV ECX,dword ptr [EAX + ESI*0x4]
0047d2a3  0f28c2                    MOVAPS XMM0,XMM2
0047d2a6  0f28cb                    MOVAPS XMM1,XMM3
0047d2a9  f30f5c813c030000          SUBSS XMM0,dword ptr [ECX + 0x33c]
0047d2b1  f30f5c8940030000          SUBSS XMM1,dword ptr [ECX + 0x340]
0047d2b9  f30f59c0                  MULSS XMM0,XMM0
0047d2bd  f30f59c9                  MULSS XMM1,XMM1
0047d2c1  f30f58c8                  ADDSS XMM1,XMM0
0047d2c5  f30f100554abba00          MOVSS XMM0,dword ptr [0x00baab54]
0047d2cd  0f2fc1                    COMISS XMM0,XMM1
0047d2d0  764e                      JBE 0x0047d320
0047d2d2  8b8184030000              MOV EAX,dword ptr [ECX + 0x384]
0047d2d8  c68527ffffff00            MOV byte ptr [EBP + 0xffffff27],0x0
0047d2df  898180030000              MOV dword ptr [ECX + 0x380],EAX
0047d2e5  e8761c2700                CALL 0x006eef60
0047d2ea  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047d2f0  50                        PUSH EAX
0047d2f1  6a00                      PUSH 0x0
0047d2f3  6a00                      PUSH 0x0
0047d2f5  6840b6c700                PUSH 0xc7b640
0047d2fa  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
0047d300  50                        PUSH EAX
0047d301  6a0f                      PUSH 0xf
0047d303  68e8030000                PUSH 0x3e8
0047d308  e813b8faff                CALL 0x00428b20
0047d30d  f30f109d18ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff18]
0047d315  f30f109514ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff14]
0047d31d  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
0047d320  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
0047d323  46                        INC ESI
0047d324  3bf1                      CMP ESI,ECX
0047d326  0f8274ffffff              JC 0x0047d2a0
0047d32c  80bd27ffffff00            CMP byte ptr [EBP + 0xffffff27],0x0
0047d333  7427                      JZ 0x0047d35c
0047d335  e8261c2700                CALL 0x006eef60
0047d33a  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047d340  50                        PUSH EAX
0047d341  6a00                      PUSH 0x0
0047d343  57                        PUSH EDI
0047d344  6840b6c700                PUSH 0xc7b640
0047d349  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
0047d34f  50                        PUSH EAX
0047d350  6a00                      PUSH 0x0
0047d352  6a1e                      PUSH 0x1e
0047d354  e8c7b7faff                CALL 0x00428b20
0047d359  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
0047d35c  8b8528ffffff              MOV EAX,dword ptr [EBP + 0xffffff28]
0047d362  40                        INC EAX
0047d363  898528ffffff              MOV dword ptr [EBP + 0xffffff28],EAX
0047d369  3b852cffffff              CMP EAX,dword ptr [EBP + 0xffffff2c]
0047d36f  0f8ce0feffff              JL 0x0047d255
0047d375  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0047d379  807ddc00                  CMP byte ptr [EBP + -0x24],0x0
0047d37d  0f8514030000              JNZ 0x0047d697
0047d383  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
0047d387  b101                      MOV CL,0x1
0047d389  8b55e0                    MOV EDX,dword ptr [EBP + -0x20]
0047d38c  6a00                      PUSH 0x0
0047d38e  6a00                      PUSH 0x0
0047d390  e81b755e00                CALL 0x00a648b0
0047d395  83c408                    ADD ESP,0x8
0047d398  c645fc00                  MOV byte ptr [EBP + -0x4],0x0
0047d39c  e9f6020000                JMP 0x0047d697
0047d3a1  83f802                    CMP EAX,0x2
0047d3a4  0f85e3000000              JNZ 0x0047d48d
0047d3aa  51                        PUSH ECX
0047d3ab  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d3b2  6a00                      PUSH 0x0
0047d3b4  50                        PUSH EAX
0047d3b5  51                        PUSH ECX
0047d3b6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d3bd  8bcf                      MOV ECX,EDI
0047d3bf  6a0c                      PUSH 0xc
0047d3c1  e8da972500                CALL 0x006d6ba0
0047d3c6  e8951b2700                CALL 0x006eef60
0047d3cb  660f6ec0                  MOVD XMM0,EAX
0047d3cf  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047d3d3  c1e81f                    SHR EAX,0x1f
0047d3d6  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047d3df  660f5ac8                  CVTPD2PS XMM1,XMM0
0047d3e3  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047d3eb  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0047d3f3  f30f5c057ca8ba00          SUBSS XMM0,dword ptr [0x00baa87c]
0047d3fb  f30f590dd0a8ba00          MULSS XMM1,dword ptr [0x00baa8d0]
0047d403  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0047d40b  f30f5c0d54a8ba00          SUBSS XMM1,dword ptr [0x00baa854]
0047d413  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
0047d41b  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
0047d423  e8381b2700                CALL 0x006eef60
0047d428  8bcf                      MOV ECX,EDI
0047d42a  c78520ffffff00002041      MOV dword ptr [EBP + 0xffffff20],0x41200000
0047d434  660f6ec0                  MOVD XMM0,EAX
0047d438  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047d43c  c1e81f                    SHR EAX,0x1f
0047d43f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047d448  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
0047d44e  50                        PUSH EAX
0047d44f  6a05                      PUSH 0x5
0047d451  8d851cffffff              LEA EAX,[EBP + 0xffffff1c]
0047d457  660f5ac0                  CVTPD2PS XMM0,XMM0
0047d45b  50                        PUSH EAX
0047d45c  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
0047d462  50                        PUSH EAX
0047d463  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047d46b  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0047d473  f30f5c0528a5ba00          SUBSS XMM0,dword ptr [0x00baa528]
0047d47b  f30f11851cffffff          MOVSS dword ptr [EBP + 0xffffff1c],XMM0
0047d483  e858de2400                CALL 0x006cb2e0
0047d488  e90a020000                JMP 0x0047d697
0047d48d  83f804                    CMP EAX,0x4
0047d490  0f85f8000000              JNZ 0x0047d58e
0047d496  51                        PUSH ECX
0047d497  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d49e  6a00                      PUSH 0x0
0047d4a0  6a02                      PUSH 0x2
0047d4a2  51                        PUSH ECX
0047d4a3  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d4aa  8bcf                      MOV ECX,EDI
0047d4ac  6a0b                      PUSH 0xb
0047d4ae  e8ed962500                CALL 0x006d6ba0
0047d4b3  e8a81a2700                CALL 0x006eef60
0047d4b8  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0047d4c0  f30f580d3ca8ba00          ADDSS XMM1,dword ptr [0x00baa83c]
0047d4c8  660f6ec0                  MOVD XMM0,EAX
0047d4cc  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047d4d0  c1e81f                    SHR EAX,0x1f
0047d4d3  f30f118decfeffff          MOVSS dword ptr [EBP + 0xfffffeec],XMM1
0047d4db  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047d4e4  660f5ad0                  CVTPD2PS XMM2,XMM0
0047d4e8  f30f1005e4adba00          MOVSS XMM0,dword ptr [0x00baade4]
0047d4f0  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0047d4f8  f30f5915d0a8ba00          MULSS XMM2,dword ptr [0x00baa8d0]
0047d500  f30f5c1554a8ba00          SUBSS XMM2,dword ptr [0x00baa854]
0047d508  f30f5cc2                  SUBSS XMM0,XMM2
0047d50c  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0047d514  f30f1185f0feffff          MOVSS dword ptr [EBP + 0xfffffef0],XMM0
0047d51c  e83f1a2700                CALL 0x006eef60
0047d521  8bcf                      MOV ECX,EDI
0047d523  c785f4feffff000020c1      MOV dword ptr [EBP + 0xfffffef4],0xc1200000
0047d52d  660f6ec0                  MOVD XMM0,EAX
0047d531  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047d535  c1e81f                    SHR EAX,0x1f
0047d538  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047d541  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
0047d547  50                        PUSH EAX
0047d548  6a05                      PUSH 0x5
0047d54a  8d85f4feffff              LEA EAX,[EBP + 0xfffffef4]
0047d550  660f5ac0                  CVTPD2PS XMM0,XMM0
0047d554  50                        PUSH EAX
0047d555  8d85ecfeffff              LEA EAX,[EBP + 0xfffffeec]
0047d55b  50                        PUSH EAX
0047d55c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047d564  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0047d56c  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0047d574  f30f5c0528a5ba00          SUBSS XMM0,dword ptr [0x00baa528]
0047d57c  f30f1185f8feffff          MOVSS dword ptr [EBP + 0xfffffef8],XMM0
0047d584  e857dd2400                CALL 0x006cb2e0
0047d589  e909010000                JMP 0x0047d697
0047d58e  83f805                    CMP EAX,0x5
0047d591  0f8500010000              JNZ 0x0047d697
0047d597  51                        PUSH ECX
0047d598  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d59f  6a00                      PUSH 0x0
0047d5a1  6a02                      PUSH 0x2
0047d5a3  51                        PUSH ECX
0047d5a4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d5ab  8bcf                      MOV ECX,EDI
0047d5ad  6a0b                      PUSH 0xb
0047d5af  e8ec952500                CALL 0x006d6ba0
0047d5b4  e8a7192700                CALL 0x006eef60
0047d5b9  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0047d5c1  f30f5c0d3ca8ba00          SUBSS XMM1,dword ptr [0x00baa83c]
0047d5c9  660f6ec0                  MOVD XMM0,EAX
0047d5cd  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047d5d1  c1e81f                    SHR EAX,0x1f
0047d5d4  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
0047d5d9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047d5e2  660f5ad0                  CVTPD2PS XMM2,XMM0
0047d5e6  f30f1005e4adba00          MOVSS XMM0,dword ptr [0x00baade4]
0047d5ee  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0047d5f6  f30f5915d0a8ba00          MULSS XMM2,dword ptr [0x00baa8d0]
0047d5fe  f30f5c1554a8ba00          SUBSS XMM2,dword ptr [0x00baa854]
0047d606  f30f5cc2                  SUBSS XMM0,XMM2
0047d60a  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0047d612  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0047d617  e844192700                CALL 0x006eef60
0047d61c  8bcf                      MOV ECX,EDI
0047d61e  c785e4feffff00002041      MOV dword ptr [EBP + 0xfffffee4],0x41200000
0047d628  660f6ec0                  MOVD XMM0,EAX
0047d62c  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047d630  c1e81f                    SHR EAX,0x1f
0047d633  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047d63c  8d8530ffffff              LEA EAX,[EBP + 0xffffff30]
0047d642  50                        PUSH EAX
0047d643  6a05                      PUSH 0x5
0047d645  8d85e4feffff              LEA EAX,[EBP + 0xfffffee4]
0047d64b  660f5ac0                  CVTPD2PS XMM0,XMM0
0047d64f  50                        PUSH EAX
0047d650  8d45e4                    LEA EAX,[EBP + -0x1c]
0047d653  50                        PUSH EAX
0047d654  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0047d65c  f30f5905fca6ba00          MULSS XMM0,dword ptr [0x00baa6fc]
0047d664  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0047d66c  f30f5c0528a5ba00          SUBSS XMM0,dword ptr [0x00baa528]
0047d674  f30f1185e8feffff          MOVSS dword ptr [EBP + 0xfffffee8],XMM0
0047d67c  e85fdc2400                CALL 0x006cb2e0
0047d681  eb14                      JMP 0x0047d697
0047d683  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0047d68d  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0047d697  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047d69b  8d7778                    LEA ESI,[EDI + 0x78]
0047d69e  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
0047d6a4  0f842d010000              JZ 0x0047d7d7
0047d6aa  68e0e4b100                PUSH 0xb1e4e0
0047d6af  8bce                      MOV ECX,ESI
0047d6b1  e81ad7f8ff                CALL 0x0040add0
0047d6b6  84c0                      TEST AL,AL
0047d6b8  7453                      JZ 0x0047d70d
0047d6ba  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0047d6c0  8d8d28ffffff              LEA ECX,[EBP + 0xffffff28]
0047d6c6  c78528ffffffab030000      MOV dword ptr [EBP + 0xffffff28],0x3ab
0047d6d0  e8ab904d00                CALL 0x00956780
0047d6d5  83ec08                    SUB ESP,0x8
0047d6d8  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0047d6de  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0047d6e6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d6ed  6a00                      PUSH 0x0
0047d6ef  6a02                      PUSH 0x2
0047d6f1  51                        PUSH ECX
0047d6f2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d6f9  ffb528ffffff              PUSH dword ptr [EBP + 0xffffff28]
0047d6ff  e82c054b00                CALL 0x0092dc30
0047d704  8d7778                    LEA ESI,[EDI + 0x78]
0047d707  89b52cffffff              MOV dword ptr [EBP + 0xffffff2c],ESI
0047d70d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047d711  0f84c0000000              JZ 0x0047d7d7
0047d717  68d0e4b100                PUSH 0xb1e4d0
0047d71c  8bce                      MOV ECX,ESI
0047d71e  e8add6f8ff                CALL 0x0040add0
0047d723  84c0                      TEST AL,AL
0047d725  744a                      JZ 0x0047d771
0047d727  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0047d72d  8d8d28ffffff              LEA ECX,[EBP + 0xffffff28]
0047d733  c78528ffffffac030000      MOV dword ptr [EBP + 0xffffff28],0x3ac
0047d73d  e83e904d00                CALL 0x00956780
0047d742  83ec08                    SUB ESP,0x8
0047d745  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0047d74b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0047d753  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d75a  6a00                      PUSH 0x0
0047d75c  6a02                      PUSH 0x2
0047d75e  51                        PUSH ECX
0047d75f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d766  ffb528ffffff              PUSH dword ptr [EBP + 0xffffff28]
0047d76c  e8bf044b00                CALL 0x0092dc30
0047d771  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047d775  7460                      JZ 0x0047d7d7
0047d777  8bb52cffffff              MOV ESI,dword ptr [EBP + 0xffffff2c]
0047d77d  8bce                      MOV ECX,ESI
0047d77f  6800e5b100                PUSH 0xb1e500
0047d784  e847d6f8ff                CALL 0x0040add0
0047d789  84c0                      TEST AL,AL
0047d78b  7450                      JZ 0x0047d7dd
0047d78d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0047d793  8d8d28ffffff              LEA ECX,[EBP + 0xffffff28]
0047d799  c78528ffffffad030000      MOV dword ptr [EBP + 0xffffff28],0x3ad
0047d7a3  e8d88f4d00                CALL 0x00956780
0047d7a8  83ec08                    SUB ESP,0x8
0047d7ab  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0047d7b1  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0047d7b9  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d7c0  6a00                      PUSH 0x0
0047d7c2  6a02                      PUSH 0x2
0047d7c4  51                        PUSH ECX
0047d7c5  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d7cc  ffb528ffffff              PUSH dword ptr [EBP + 0xffffff28]
0047d7d2  e859044b00                CALL 0x0092dc30
0047d7d7  8bb52cffffff              MOV ESI,dword ptr [EBP + 0xffffff2c]
0047d7dd  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047d7e1  745a                      JZ 0x0047d83d
0047d7e3  68f4e4b100                PUSH 0xb1e4f4
0047d7e8  8bce                      MOV ECX,ESI
0047d7ea  e8e1d5f8ff                CALL 0x0040add0
0047d7ef  84c0                      TEST AL,AL
0047d7f1  744a                      JZ 0x0047d83d
0047d7f3  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0047d7f9  8d8d28ffffff              LEA ECX,[EBP + 0xffffff28]
0047d7ff  c78528ffffffae030000      MOV dword ptr [EBP + 0xffffff28],0x3ae
0047d809  e8728f4d00                CALL 0x00956780
0047d80e  83ec08                    SUB ESP,0x8
0047d811  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0047d817  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0047d81f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d826  6a00                      PUSH 0x0
0047d828  6a02                      PUSH 0x2
0047d82a  51                        PUSH ECX
0047d82b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047d832  ffb528ffffff              PUSH dword ptr [EBP + 0xffffff28]
0047d838  e8f3034b00                CALL 0x0092dc30
0047d83d  80bdd4feffff00            CMP byte ptr [EBP + 0xfffffed4],0x0
0047d844  7534                      JNZ 0x0047d87a
0047d846  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
0047d84c  85d2                      TEST EDX,EDX
0047d84e  7405                      JZ 0x0047d855
0047d850  83c230                    ADD EDX,0x30
0047d853  eb05                      JMP 0x0047d85a
0047d855  ba18f6c700                MOV EDX,0xc7f618
0047d85a  8b8dd8feffff              MOV ECX,dword ptr [EBP + 0xfffffed8]
0047d860  85c9                      TEST ECX,ECX
0047d862  7416                      JZ 0x0047d87a
0047d864  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
0047d867  83c1fc                    ADD ECX,-0x4
0047d86a  2902                      SUB dword ptr [EDX],EAX
0047d86c  51                        PUSH ECX
0047d86d  835a0400                  SBB dword ptr [EDX + 0x4],0x0
0047d871  ff15dc87b100              CALL dword ptr [0x00b187dc]
0047d877  83c404                    ADD ESP,0x4
0047d87a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0047d87d  64890d00000000            MOV dword ptr FS:[0x0],ECX
0047d884  59                        POP ECX
0047d885  5f                        POP EDI
0047d886  5e                        POP ESI
0047d887  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0047d88a  33cd                      XOR ECX,EBP
0047d88c  e89a186700                CALL 0x00aef12b
0047d891  8be5                      MOV ESP,EBP
0047d893  5d                        POP EBP
0047d894  8be3                      MOV ESP,EBX
0047d896  5b                        POP EBX
0047d897  c3                        RET
