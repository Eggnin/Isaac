; J460 NPC AI 0x004ff620 AI_004ff620
; types=824
; identities=824.0.0,824.1.0
; entry=004ff620
004ff620  55                        PUSH EBP
004ff621  8bec                      MOV EBP,ESP
004ff623  83e4f8                    AND ESP,0xfffffff8
004ff626  81ece0000000              SUB ESP,0xe0
004ff62c  a1b493bf00                MOV EAX,[0x00bf93b4]
004ff631  33c4                      XOR EAX,ESP
004ff633  898424dc000000            MOV dword ptr [ESP + 0xdc],EAX
004ff63a  56                        PUSH ESI
004ff63b  57                        PUSH EDI
004ff63c  c744240c00000000          MOV dword ptr [ESP + 0xc],0x0
004ff644  8bf9                      MOV EDI,ECX
004ff646  a17816c700                MOV EAX,[0x00c71678]
004ff64b  33f6                      XOR ESI,ESI
004ff64d  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004ff655  0f57d2                    XORPS XMM2,XMM2
004ff658  f30f100d14aeba00          MOVSS XMM1,dword ptr [0x00baae14]
004ff660  660f6e9fc40b0000          MOVD XMM3,dword ptr [EDI + 0xbc4]
004ff668  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004ff66e  0f5bdb                    CVTDQ2PS XMM3,XMM3
004ff671  6a01                      PUSH 0x1
004ff673  8944241c                  MOV dword ptr [ESP + 0x1c],EAX
004ff677  89742420                  MOV dword ptr [ESP + 0x20],ESI
004ff67b  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
004ff681  e8ba971d00                CALL 0x006d8e40
004ff686  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004ff68c  8d4e05                    LEA ECX,[ESI + 0x5]
004ff68f  85c0                      TEST EAX,EAX
004ff691  0f84410e0000              JZ 0x005004d8
004ff697  83f804                    CMP EAX,0x4
004ff69a  0f841d050000              JZ 0x004ffbbd
004ff6a0  83f808                    CMP EAX,0x8
004ff6a3  0f85840d0000              JNZ 0x0050042d
004ff6a9  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ff6b1  be28ddb100                MOV ESI,0xb1dd28
004ff6b6  f30f590528a4ba00          MULSS XMM0,dword ptr [0x00baa428]
004ff6be  8974241c                  MOV dword ptr [ESP + 0x1c],ESI
004ff6c2  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ff6ca  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004ff6d2  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004ff6da  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
004ff6e0  e85bdef1ff                CALL 0x0041d540
004ff6e5  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
004ff6eb  f30f10442418              MOVSS XMM0,dword ptr [ESP + 0x18]
004ff6f1  e82adef1ff                CALL 0x0041d520
004ff6f6  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ff6fa  0f28d8                    MOVAPS XMM3,XMM0
004ff6fd  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
004ff705  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
004ff70b  f30f115c2418              MOVSS dword ptr [ESP + 0x18],XMM3
004ff711  7519                      JNZ 0x004ff72c
004ff713  f30f59c2                  MULSS XMM0,XMM2
004ff717  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004ff71f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004ff727  0f28c3                    MOVAPS XMM0,XMM3
004ff72a  eb27                      JMP 0x004ff753
004ff72c  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004ff734  f30f59c2                  MULSS XMM0,XMM2
004ff738  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004ff740  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004ff748  0f28c3                    MOVAPS XMM0,XMM3
004ff74b  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
004ff753  f30f59c2                  MULSS XMM0,XMM2
004ff757  8bcf                      MOV ECX,EDI
004ff759  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
004ff761  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004ff769  e8d2f01b00                CALL 0x006be840
004ff76e  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004ff776  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004ff77e  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004ff786  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004ff78e  e8cda5f9ff                CALL 0x00499d60
004ff793  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ff79b  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004ff7a3  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004ff7aa  f30f100584a7ba00          MOVSS XMM0,dword ptr [0x00baa784]
004ff7b2  0f8497000000              JZ 0x004ff84f
004ff7b8  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
004ff7c0  8d44240c                  LEA EAX,[ESP + 0xc]
004ff7c4  50                        PUSH EAX
004ff7c5  8bcf                      MOV ECX,EDI
004ff7c7  e8048b1d00                CALL 0x006d82d0
004ff7cc  8bc8                      MOV ECX,EAX
004ff7ce  f30f1001                  MOVSS XMM0,dword ptr [ECX]
004ff7d2  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004ff7d9  9f                        LAHF
004ff7da  f6c444                    TEST AH,0x44
004ff7dd  7a12                      JP 0x004ff7f1
004ff7df  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
004ff7e4  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004ff7eb  9f                        LAHF
004ff7ec  f6c444                    TEST AH,0x44
004ff7ef  7b2d                      JNP 0x004ff81e
004ff7f1  8d44240c                  LEA EAX,[ESP + 0xc]
004ff7f5  0f57d2                    XORPS XMM2,XMM2
004ff7f8  50                        PUSH EAX
004ff7f9  8bcf                      MOV ECX,EDI
004ff7fb  e8d08a1d00                CALL 0x006d82d0
004ff800  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004ff804  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004ff809  e852a5f9ff                CALL 0x00499d60
004ff80e  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ff816  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004ff81e  8d44240c                  LEA EAX,[ESP + 0xc]
004ff822  0f57d2                    XORPS XMM2,XMM2
004ff825  50                        PUSH EAX
004ff826  8bcf                      MOV ECX,EDI
004ff828  e8a38a1d00                CALL 0x006d82d0
004ff82d  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
004ff832  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004ff836  f30f59c0                  MULSS XMM0,XMM0
004ff83a  f30f59c9                  MULSS XMM1,XMM1
004ff83e  f30f58c1                  ADDSS XMM0,XMM1
004ff842  e80962f3ff                CALL 0x00435a50
004ff847  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
004ff84f  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004ff857  0f28d0                    MOVAPS XMM2,XMM0
004ff85a  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004ff862  e8e9311800                CALL 0x00682a50
004ff867  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004ff86f  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004ff876  0f8464010000              JZ 0x004ff9e0
004ff87c  f30f10a79c010000          MOVSS XMM4,dword ptr [EDI + 0x19c]
004ff884  f30f105c2418              MOVSS XMM3,dword ptr [ESP + 0x18]
004ff88a  0f28d4                    MOVAPS XMM2,XMM4
004ff88d  f30f10afa0010000          MOVSS XMM5,dword ptr [EDI + 0x1a0]
004ff895  0f28c3                    MOVAPS XMM0,XMM3
004ff898  f30f104c2414              MOVSS XMM1,dword ptr [ESP + 0x14]
004ff89e  f30f59c5                  MULSS XMM0,XMM5
004ff8a2  f30f59d1                  MULSS XMM2,XMM1
004ff8a6  f30f58d0                  ADDSS XMM2,XMM0
004ff8aa  f30f100580a2ba00          MOVSS XMM0,dword ptr [0x00baa280]
004ff8b2  0f2fc2                    COMISS XMM0,XMM2
004ff8b5  0f868d000000              JBE 0x004ff948
004ff8bb  f30f58ed                  ADDSS XMM5,XMM5
004ff8bf  f30f58e4                  ADDSS XMM4,XMM4
004ff8c3  f30f59ea                  MULSS XMM5,XMM2
004ff8c7  f30f59e2                  MULSS XMM4,XMM2
004ff8cb  f30f5cdd                  SUBSS XMM3,XMM5
004ff8cf  f30f5ccc                  SUBSS XMM1,XMM4
004ff8d3  0f28c3                    MOVAPS XMM0,XMM3
004ff8d6  e885a4f9ff                CALL 0x00499d60
004ff8db  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ff8e3  51                        PUSH ECX
004ff8e4  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ff8eb  6a00                      PUSH 0x0
004ff8ed  6a02                      PUSH 0x2
004ff8ef  51                        PUSH ECX
004ff8f0  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ff8f7  8bcf                      MOV ECX,EDI
004ff8f9  6a48                      PUSH 0x48
004ff8fb  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
004ff903  e898721d00                CALL 0x006d6ba0
004ff908  f30f10af98010000          MOVSS XMM5,dword ptr [EDI + 0x198]
004ff910  f30f109f94010000          MOVSS XMM3,dword ptr [EDI + 0x194]
004ff918  0f28cd                    MOVAPS XMM1,XMM5
004ff91b  f30f10979c010000          MOVSS XMM2,dword ptr [EDI + 0x19c]
004ff923  0f28c3                    MOVAPS XMM0,XMM3
004ff926  f30f10a7a0010000          MOVSS XMM4,dword ptr [EDI + 0x1a0]
004ff92e  f30f59cc                  MULSS XMM1,XMM4
004ff932  f30f5925b4a5ba00          MULSS XMM4,dword ptr [0x00baa5b4]
004ff93a  f30f59c2                  MULSS XMM0,XMM2
004ff93e  f30f5915b4a5ba00          MULSS XMM2,dword ptr [0x00baa5b4]
004ff946  eb74                      JMP 0x004ff9bc
004ff948  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ff94c  7413                      JZ 0x004ff961
004ff94e  83bfc40b00000a            CMP dword ptr [EDI + 0xbc4],0xa
004ff955  7e0a                      JLE 0x004ff961
004ff957  c787c40b00000a000000      MOV dword ptr [EDI + 0xbc4],0xa
004ff961  51                        PUSH ECX
004ff962  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ff969  6a00                      PUSH 0x0
004ff96b  6a02                      PUSH 0x2
004ff96d  51                        PUSH ECX
004ff96e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004ff975  8bcf                      MOV ECX,EDI
004ff977  6a48                      PUSH 0x48
004ff979  e822721d00                CALL 0x006d6ba0
004ff97e  f30f10af98010000          MOVSS XMM5,dword ptr [EDI + 0x198]
004ff986  f30f109f94010000          MOVSS XMM3,dword ptr [EDI + 0x194]
004ff98e  0f28cd                    MOVAPS XMM1,XMM5
004ff991  f30f10979c010000          MOVSS XMM2,dword ptr [EDI + 0x19c]
004ff999  0f28c3                    MOVAPS XMM0,XMM3
004ff99c  f30f10a7a0010000          MOVSS XMM4,dword ptr [EDI + 0x1a0]
004ff9a4  f30f59cc                  MULSS XMM1,XMM4
004ff9a8  f30f592500a5ba00          MULSS XMM4,dword ptr [0x00baa500]
004ff9b0  f30f59c2                  MULSS XMM0,XMM2
004ff9b4  f30f591500a5ba00          MULSS XMM2,dword ptr [0x00baa500]
004ff9bc  f30f58c8                  ADDSS XMM1,XMM0
004ff9c0  f30f59e1                  MULSS XMM4,XMM1
004ff9c4  f30f59d1                  MULSS XMM2,XMM1
004ff9c8  f30f5cec                  SUBSS XMM5,XMM4
004ff9cc  f30f5cda                  SUBSS XMM3,XMM2
004ff9d0  f30f11af64030000          MOVSS dword ptr [EDI + 0x364],XMM5
004ff9d8  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
004ff9e0  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004ff9e8  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004ff9f0  2bc8                      SUB ECX,EAX
004ff9f2  018fc40b0000              ADD dword ptr [EDI + 0xbc4],ECX
004ff9f8  83bfc40b000000            CMP dword ptr [EDI + 0xbc4],0x0
004ff9ff  7e12                      JLE 0x004ffa13
004ffa01  6a00                      PUSH 0x0
004ffa03  68000a0001                PUSH 0x1000a00
004ffa08  8bcf                      MOV ECX,EDI
004ffa0a  e8217af1ff                CALL 0x00417430
004ffa0f  84c0                      TEST AL,AL
004ffa11  7432                      JZ 0x004ffa45
004ffa13  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004ffa1a  7404                      JZ 0x004ffa20
004ffa1c  33d2                      XOR EDX,EDX
004ffa1e  eb0e                      JMP 0x004ffa2e
004ffa20  e83bf51e00                CALL 0x006eef60
004ffa25  33d2                      XOR EDX,EDX
004ffa27  b91e000000                MOV ECX,0x1e
004ffa2c  f7f1                      DIV ECX
004ffa2e  b8e2ffffff                MOV EAX,0xffffffe2
004ffa33  2bc2                      SUB EAX,EDX
004ffa35  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
004ffa3b  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
004ffa45  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ffa49  0f85b2000000              JNZ 0x004ffb01
004ffa4f  ff7720                    PUSH dword ptr [EDI + 0x20]
004ffa52  8bcf                      MOV ECX,EDI
004ffa54  6a04                      PUSH 0x4
004ffa56  e8b5cc1a00                CALL 0x006ac710
004ffa5b  84c0                      TEST AL,AL
004ffa5d  0f849e000000              JZ 0x004ffb01
004ffa63  e8f8f41e00                CALL 0x006eef60
004ffa68  a803                      TEST AL,0x3
004ffa6a  0f8591000000              JNZ 0x004ffb01
004ffa70  e8ebf41e00                CALL 0x006eef60
004ffa75  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ffa7b  6a00                      PUSH 0x0
004ffa7d  50                        PUSH EAX
004ffa7e  6a00                      PUSH 0x0
004ffa80  57                        PUSH EDI
004ffa81  6840b6c700                PUSH 0xc7b640
004ffa86  8d873c030000              LEA EAX,[EDI + 0x33c]
004ffa8c  50                        PUSH EAX
004ffa8d  6a0a                      PUSH 0xa
004ffa8f  6a21                      PUSH 0x21
004ffa91  e87ae91f00                CALL 0x006fe410
004ffa96  8bf0                      MOV ESI,EAX
004ffa98  e8c3f41e00                CALL 0x006eef60
004ffa9d  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
004ffaa5  660f6ec0                  MOVD XMM0,EAX
004ffaa9  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ffaad  c1e81f                    SHR EAX,0x1f
004ffab0  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ffab9  660f5ac0                  CVTPD2PS XMM0,XMM0
004ffabd  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ffac5  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004ffacd  f30f580580a2ba00          ADDSS XMM0,dword ptr [0x00baa280]
004ffad5  f30f598680030000          MULSS XMM0,dword ptr [ESI + 0x380]
004ffadd  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
004ffae5  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
004ffaed  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
004ffaf5  f30f118e38030000          MOVSS dword ptr [ESI + 0x338],XMM1
004ffafd  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
004ffb01  e85af41e00                CALL 0x006eef60
004ffb06  33d2                      XOR EDX,EDX
004ffb08  b903000000                MOV ECX,0x3
004ffb0d  f7f1                      DIV ECX
004ffb0f  85d2                      TEST EDX,EDX
004ffb11  0f8511090000              JNZ 0x00500428
004ffb17  e844f41e00                CALL 0x006eef60
004ffb1c  51                        PUSH ECX
004ffb1d  8bcf                      MOV ECX,EDI
004ffb1f  660f6ec0                  MOVD XMM0,EAX
004ffb23  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ffb27  c1e81f                    SHR EAX,0x1f
004ffb2a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ffb33  660f5ac0                  CVTPD2PS XMM0,XMM0
004ffb37  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ffb3f  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
004ffb47  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
004ffb4f  f30f110424                MOVSS dword ptr [ESP],XMM0
004ffb54  e877691b00                CALL 0x006b64d0
004ffb59  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
004ffb5d  8bc8                      MOV ECX,EAX
004ffb5f  0f85c3080000              JNZ 0x00500428
004ffb65  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
004ffb6c  8d942498000000            LEA EDX,[ESP + 0x98]
004ffb73  8b01                      MOV EAX,dword ptr [ECX]
004ffb75  6a01                      PUSH 0x1
004ffb77  6a00                      PUSH 0x0
004ffb79  68ff000000                PUSH 0xff
004ffb7e  0f118424a4000000          MOVUPS xmmword ptr [ESP + 0xa4],XMM0
004ffb86  6aff                      PUSH -0x1
004ffb88  0f57c0                    XORPS XMM0,XMM0
004ffb8b  c78424c80000009190103e    MOV dword ptr [ESP + 0xc8],0x3e109091
004ffb96  52                        PUSH EDX
004ffb97  0f118424bc000000          MOVUPS xmmword ptr [ESP + 0xbc],XMM0
004ffb9f  c78424d0000000f9f8f83d    MOV dword ptr [ESP + 0xd0],0x3df8f8f9
004ffbaa  c78424d4000000e1e0e03d    MOV dword ptr [ESP + 0xd4],0x3de0e0e1
004ffbb5  ff503c                    CALL dword ptr [EAX + 0x3c]
004ffbb8  e96b080000                JMP 0x00500428
004ffbbd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004ffbc5  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
004ffbcd  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004ffbd3  25000b0001                AND EAX,0x1000b00
004ffbd8  83c800                    OR EAX,0x0
004ffbdb  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004ffbe3  0f84c7000000              JZ 0x004ffcb0
004ffbe9  8d871c0f0000              LEA EAX,[EDI + 0xf1c]
004ffbef  c787100400000a000000      MOV dword ptr [EDI + 0x410],0xa
004ffbf9  8bf0                      MOV ESI,EAX
004ffbfb  833eff                    CMP dword ptr [ESI],-0x1
004ffbfe  8bcf                      MOV ECX,EDI
004ffc00  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004ffc08  89742414                  MOV dword ptr [ESP + 0x14],ESI
004ffc0c  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
004ffc12  0f84c2010000              JZ 0x004ffdda
004ffc18  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
004ffc20  8d44240c                  LEA EAX,[ESP + 0xc]
004ffc24  50                        PUSH EAX
004ffc25  e8a6861d00                CALL 0x006d82d0
004ffc2a  8bc8                      MOV ECX,EAX
004ffc2c  f30f1001                  MOVSS XMM0,dword ptr [ECX]
004ffc30  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
004ffc37  9f                        LAHF
004ffc38  f6c444                    TEST AH,0x44
004ffc3b  7a12                      JP 0x004ffc4f
004ffc3d  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
004ffc42  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
004ffc49  9f                        LAHF
004ffc4a  f6c444                    TEST AH,0x44
004ffc4d  7b2d                      JNP 0x004ffc7c
004ffc4f  8d44240c                  LEA EAX,[ESP + 0xc]
004ffc53  0f57d2                    XORPS XMM2,XMM2
004ffc56  50                        PUSH EAX
004ffc57  8bcf                      MOV ECX,EDI
004ffc59  e872861d00                CALL 0x006d82d0
004ffc5e  f30f1008                  MOVSS XMM1,dword ptr [EAX]
004ffc62  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004ffc67  e8f4a0f9ff                CALL 0x00499d60
004ffc6c  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ffc74  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004ffc7c  8d44240c                  LEA EAX,[ESP + 0xc]
004ffc80  0f57d2                    XORPS XMM2,XMM2
004ffc83  50                        PUSH EAX
004ffc84  8bcf                      MOV ECX,EDI
004ffc86  e845861d00                CALL 0x006d82d0
004ffc8b  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
004ffc90  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004ffc94  f30f59c0                  MULSS XMM0,XMM0
004ffc98  f30f59c9                  MULSS XMM1,XMM1
004ffc9c  f30f58c1                  ADDSS XMM0,XMM1
004ffca0  e8ab5df3ff                CALL 0x00435a50
004ffca5  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
004ffcab  e917030000                JMP 0x004fffc7
004ffcb0  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
004ffcb7  8db71c0f0000              LEA ESI,[EDI + 0xf1c]
004ffcbd  8bc6                      MOV EAX,ESI
004ffcbf  0f852affffff              JNZ 0x004ffbef
004ffcc5  83bf380f000000            CMP dword ptr [EDI + 0xf38],0x0
004ffccc  0f851dffffff              JNZ 0x004ffbef
004ffcd2  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
004ffcd8  85d2                      TEST EDX,EDX
004ffcda  0f8f1bffffff              JG 0x004ffbfb
004ffce0  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004ffce8  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
004ffcf0  2bc8                      SUB ECX,EAX
004ffcf2  8d0411                    LEA EAX,[ECX + EDX*0x1]
004ffcf5  898710040000              MOV dword ptr [EDI + 0x410],EAX
004ffcfb  85c0                      TEST EAX,EAX
004ffcfd  0f8833040000              JS 0x00500136
004ffd03  8bcf                      MOV ECX,EDI
004ffd05  e836eb1b00                CALL 0x006be840
004ffd0a  6a00                      PUSH 0x0
004ffd0c  6a00                      PUSH 0x0
004ffd0e  6a00                      PUSH 0x0
004ffd10  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
004ffd16  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
004ffd1c  6a00                      PUSH 0x0
004ffd1e  894c241c                  MOV dword ptr [ESP + 0x1c],ECX
004ffd22  8d4c241c                  LEA ECX,[ESP + 0x1c]
004ffd26  6a00                      PUSH 0x0
004ffd28  89442438                  MOV dword ptr [ESP + 0x38],EAX
004ffd2c  8d873c030000              LEA EAX,[EDI + 0x33c]
004ffd32  51                        PUSH ECX
004ffd33  8b4c2430                  MOV ECX,dword ptr [ESP + 0x30]
004ffd37  50                        PUSH EAX
004ffd38  8954242c                  MOV dword ptr [ESP + 0x2c],EDX
004ffd3c  e8af102f00                CALL 0x007f0df0
004ffd41  84c0                      TEST AL,AL
004ffd43  7445                      JZ 0x004ffd8a
004ffd45  e816f21e00                CALL 0x006eef60
004ffd4a  33d2                      XOR EDX,EDX
004ffd4c  b903000000                MOV ECX,0x3
004ffd51  f7f1                      DIV ECX
004ffd53  85d2                      TEST EDX,EDX
004ffd55  7533                      JNZ 0x004ffd8a
004ffd57  8b442424                  MOV EAX,dword ptr [ESP + 0x24]
004ffd5b  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004ffd63  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004ffd6b  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004ffd73  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004ffd7b  e8e09ff9ff                CALL 0x00499d60
004ffd80  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ffd88  eb32                      JMP 0x004ffdbc
004ffd8a  e8d1f11e00                CALL 0x006eef60
004ffd8f  660f6ec0                  MOVD XMM0,EAX
004ffd93  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ffd97  c1e81f                    SHR EAX,0x1f
004ffd9a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ffda3  660f5ac0                  CVTPD2PS XMM0,XMM0
004ffda7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ffdaf  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004ffdb7  e884291800                CALL 0x00682740
004ffdbc  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004ffdc4  e897f11e00                CALL 0x006eef60
004ffdc9  33d2                      XOR EDX,EDX
004ffdcb  b928000000                MOV ECX,0x28
004ffdd0  f7f1                      DIV ECX
004ffdd2  83c20a                    ADD EDX,0xa
004ffdd5  e956030000                JMP 0x00500130
004ffdda  6a00                      PUSH 0x0
004ffddc  6800020000                PUSH 0x200
004ffde1  e84a76f1ff                CALL 0x00417430
004ffde6  84c0                      TEST AL,AL
004ffde8  7455                      JZ 0x004ffe3f
004ffdea  e871f11e00                CALL 0x006eef60
004ffdef  33d2                      XOR EDX,EDX
004ffdf1  b905000000                MOV ECX,0x5
004ffdf6  f7f1                      DIV ECX
004ffdf8  85d2                      TEST EDX,EDX
004ffdfa  0f85c7010000              JNZ 0x004fffc7
004ffe00  e85bf11e00                CALL 0x006eef60
004ffe05  660f6ec0                  MOVD XMM0,EAX
004ffe09  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ffe0d  c1e81f                    SHR EAX,0x1f
004ffe10  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ffe19  660f5ac0                  CVTPD2PS XMM0,XMM0
004ffe1d  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004ffe25  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
004ffe2d  e80e291800                CALL 0x00682740
004ffe32  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004ffe3a  e988010000                JMP 0x004fffc7
004ffe3f  6a00                      PUSH 0x0
004ffe41  6800010000                PUSH 0x100
004ffe46  8bcf                      MOV ECX,EDI
004ffe48  e8e375f1ff                CALL 0x00417430
004ffe4d  84c0                      TEST AL,AL
004ffe4f  7560                      JNZ 0x004ffeb1
004ffe51  83bf380f000000            CMP dword ptr [EDI + 0xf38],0x0
004ffe58  7557                      JNZ 0x004ffeb1
004ffe5a  6a00                      PUSH 0x0
004ffe5c  6800080001                PUSH 0x1000800
004ffe61  8bcf                      MOV ECX,EDI
004ffe63  e8c875f1ff                CALL 0x00417430
004ffe68  84c0                      TEST AL,AL
004ffe6a  0f8457010000              JZ 0x004fffc7
004ffe70  8bcf                      MOV ECX,EDI
004ffe72  e8c9e91b00                CALL 0x006be840
004ffe77  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004ffe7f  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004ffe87  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004ffe8f  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004ffe97  e8c49ef9ff                CALL 0x00499d60
004ffe9c  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004ffea4  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004ffeac  e916010000                JMP 0x004fffc7
004ffeb1  8bcf                      MOV ECX,EDI
004ffeb3  e888e91b00                CALL 0x006be840
004ffeb8  ff7720                    PUSH dword ptr [EDI + 0x20]
004ffebb  8bcf                      MOV ECX,EDI
004ffebd  89442420                  MOV dword ptr [ESP + 0x20],EAX
004ffec1  6a05                      PUSH 0x5
004ffec3  e848c81a00                CALL 0x006ac710
004ffec8  84c0                      TEST AL,AL
004ffeca  0f84f7000000              JZ 0x004fffc7
004ffed0  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004ffed8  8d8f14040000              LEA ECX,[EDI + 0x414]
004ffede  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
004ffee4  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004ffeec  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
004ffef2  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
004ffefa  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
004fff00  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004fff08  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
004fff0e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004fff16  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
004fff1c  e83f332e00                CALL 0x007e3260
004fff21  8b54241c                  MOV EDX,dword ptr [ESP + 0x1c]
004fff25  6a01                      PUSH 0x1
004fff27  6884030000                PUSH 0x384
004fff2c  51                        PUSH ECX
004fff2d  8b823c030000              MOV EAX,dword ptr [EDX + 0x33c]
004fff33  8d8f14040000              LEA ECX,[EDI + 0x414]
004fff39  8b9240030000              MOV EDX,dword ptr [EDX + 0x340]
004fff3f  89442428                  MOV dword ptr [ESP + 0x28],EAX
004fff43  8d442428                  LEA EAX,[ESP + 0x28]
004fff47  c704240000803f            MOV dword ptr [ESP],0x3f800000
004fff4e  50                        PUSH EAX
004fff4f  89542430                  MOV dword ptr [ESP + 0x30],EDX
004fff53  e868342e00                CALL 0x007e33c0
004fff58  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004fff60  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004fff68  e8f39df9ff                CALL 0x00499d60
004fff6d  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004fff75  8b742414                  MOV ESI,dword ptr [ESP + 0x14]
004fff79  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
004fff81  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
004fff87  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
004fff8f  f30f10442438              MOVSS XMM0,dword ptr [ESP + 0x38]
004fff95  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
004fff9d  f30f1044243c              MOVSS XMM0,dword ptr [ESP + 0x3c]
004fffa3  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004fffab  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
004fffb1  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004fffb9  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
004fffbf  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004fffc7  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
004fffcf  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
004fffd7  2bc8                      SUB ECX,EAX
004fffd9  018f10040000              ADD dword ptr [EDI + 0x410],ECX
004fffdf  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
004fffe7  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004fffef  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
004ffff5  e846d5f1ff                CALL 0x0041d540
004ffffa  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
00500000  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
00500006  e815d5f1ff                CALL 0x0041d520
0050000b  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00500013  0f28d8                    MOVAPS XMM3,XMM0
00500016  f30f1044241c              MOVSS XMM0,dword ptr [ESP + 0x1c]
0050001c  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
00500024  f30f115c240c              MOVSS dword ptr [ESP + 0xc],XMM3
0050002a  f30f59442424              MULSS XMM0,dword ptr [ESP + 0x24]
00500030  f30f59c2                  MULSS XMM0,XMM2
00500034  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0050003c  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00500044  0f28c3                    MOVAPS XMM0,XMM3
00500047  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
0050004f  f30f59442424              MULSS XMM0,dword ptr [ESP + 0x24]
00500055  f30f59c2                  MULSS XMM0,XMM2
00500059  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
00500061  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00500069  833eff                    CMP dword ptr [ESI],-0x1
0050006c  740a                      JZ 0x00500078
0050006e  f30f10157ca8ba00          MOVSS XMM2,dword ptr [0x00baa87c]
00500076  eb08                      JMP 0x00500080
00500078  f30f10151ca8ba00          MOVSS XMM2,dword ptr [0x00baa81c]
00500080  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
00500088  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00500090  e8bb291800                CALL 0x00682a50
00500095  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0050009d  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
005000a4  7467                      JZ 0x0050010d
005000a6  e8b5ee1e00                CALL 0x006eef60
005000ab  a803                      TEST AL,0x3
005000ad  755e                      JNZ 0x0050010d
005000af  f30f109f9c010000          MOVSS XMM3,dword ptr [EDI + 0x19c]
005000b7  f30f10a7a0010000          MOVSS XMM4,dword ptr [EDI + 0x1a0]
005000bf  0f28c3                    MOVAPS XMM0,XMM3
005000c2  f30f106c240c              MOVSS XMM5,dword ptr [ESP + 0xc]
005000c8  f30f58db                  ADDSS XMM3,XMM3
005000cc  f30f104c241c              MOVSS XMM1,dword ptr [ESP + 0x1c]
005000d2  0f28d4                    MOVAPS XMM2,XMM4
005000d5  f30f59c1                  MULSS XMM0,XMM1
005000d9  f30f58e4                  ADDSS XMM4,XMM4
005000dd  f30f59d5                  MULSS XMM2,XMM5
005000e1  f30f58d0                  ADDSS XMM2,XMM0
005000e5  f30f59e2                  MULSS XMM4,XMM2
005000e9  f30f59da                  MULSS XMM3,XMM2
005000ed  f30f5cec                  SUBSS XMM5,XMM4
005000f1  f30f5ccb                  SUBSS XMM1,XMM3
005000f5  0f28c5                    MOVAPS XMM0,XMM5
005000f8  e8639cf9ff                CALL 0x00499d60
005000fd  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00500105  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0050010d  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
00500114  7f20                      JG 0x00500136
00500116  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0050011a  8b742414                  MOV ESI,dword ptr [ESP + 0x14]
0050011e  7516                      JNZ 0x00500136
00500120  e83bee1e00                CALL 0x006eef60
00500125  33d2                      XOR EDX,EDX
00500127  b91e000000                MOV ECX,0x1e
0050012c  f7f1                      DIV ECX
0050012e  f7da                      NEG EDX
00500130  899710040000              MOV dword ptr [EDI + 0x410],EDX
00500136  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0050013e  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00500146  f30f59c0                  MULSS XMM0,XMM0
0050014a  f30f59c9                  MULSS XMM1,XMM1
0050014e  f30f58c1                  ADDSS XMM0,XMM1
00500152  e8f958f3ff                CALL 0x00435a50
00500157  0f2f0520a1ba00            COMISS XMM0,dword ptr [0x00baa120]
0050015e  7627                      JBE 0x00500187
00500160  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00500168  0f57c9                    XORPS XMM1,XMM1
0050016b  c744241ce4dcb100          MOV dword ptr [ESP + 0x1c],0xb1dce4
00500173  f30f5fc1                  MAXSS XMM0,XMM1
00500177  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
0050017f  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
00500185  eb08                      JMP 0x0050018f
00500187  c744241c54bcb100          MOV dword ptr [ESP + 0x1c],0xb1bc54
0050018f  8b97c40b0000              MOV EDX,dword ptr [EDI + 0xbc4]
00500195  85d2                      TEST EDX,EDX
00500197  791f                      JNS 0x005001b8
00500199  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
005001a1  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
005001a9  2bc8                      SUB ECX,EAX
005001ab  03ca                      ADD ECX,EDX
005001ad  898fc40b0000              MOV dword ptr [EDI + 0xbc4],ECX
005001b3  e9b9010000                JMP 0x00500371
005001b8  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005001be  25000a0001                AND EAX,0x1000a00
005001c3  83c800                    OR EAX,0x0
005001c6  0f85a5010000              JNZ 0x00500371
005001cc  8bcf                      MOV ECX,EDI
005001ce  e86de61b00                CALL 0x006be840
005001d3  833eff                    CMP dword ptr [ESI],-0x1
005001d6  8bc8                      MOV ECX,EAX
005001d8  894c240c                  MOV dword ptr [ESP + 0xc],ECX
005001dc  740b                      JZ 0x005001e9
005001de  6a09                      PUSH 0x9
005001e0  8bcf                      MOV ECX,EDI
005001e2  e879801d00                CALL 0x006d8260
005001e7  eb33                      JMP 0x0050021c
005001e9  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
005001ef  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
005001f5  6a00                      PUSH 0x0
005001f7  6a00                      PUSH 0x0
005001f9  6a00                      PUSH 0x0
005001fb  6a00                      PUSH 0x0
005001fd  894c243c                  MOV dword ptr [ESP + 0x3c],ECX
00500201  8d4c2438                  LEA ECX,[ESP + 0x38]
00500205  6a00                      PUSH 0x0
00500207  8944243c                  MOV dword ptr [ESP + 0x3c],EAX
0050020b  8d873c030000              LEA EAX,[EDI + 0x33c]
00500211  51                        PUSH ECX
00500212  8b4c2430                  MOV ECX,dword ptr [ESP + 0x30]
00500216  50                        PUSH EAX
00500217  e8d40b2f00                CALL 0x007f0df0
0050021c  84c0                      TEST AL,AL
0050021e  0f844d010000              JZ 0x00500371
00500224  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
00500228  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00500230  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00500238  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00500240  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00500248  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0050024e  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00500256  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0050025e  f30f114c2424              MOVSS dword ptr [ESP + 0x24],XMM1
00500264  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0050026a  e8d1d2f1ff                CALL 0x0041d540
0050026f  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
00500275  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
0050027b  e8a0d2f1ff                CALL 0x0041d520
00500280  8b06                      MOV EAX,dword ptr [ESI]
00500282  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
00500288  83f8ff                    CMP EAX,-0x1
0050028b  7414                      JZ 0x005002a1
0050028d  0f28d1                    MOVAPS XMM2,XMM1
00500290  0f28d8                    MOVAPS XMM3,XMM0
00500293  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
00500299  f30f115c2424              MOVSS dword ptr [ESP + 0x24],XMM3
0050029f  eb0c                      JMP 0x005002ad
005002a1  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
005002a7  f30f105c2424              MOVSS XMM3,dword ptr [ESP + 0x24]
005002ad  f30f59c3                  MULSS XMM0,XMM3
005002b1  f30f59ca                  MULSS XMM1,XMM2
005002b5  f30f58c1                  ADDSS XMM0,XMM1
005002b9  0f2f0554a3ba00            COMISS XMM0,dword ptr [0x00baa354]
005002c0  0f86ab000000              JBE 0x00500371
005002c6  83f8ff                    CMP EAX,-0x1
005002c9  7522                      JNZ 0x005002ed
005002cb  e890ec1e00                CALL 0x006eef60
005002d0  33d2                      XOR EDX,EDX
005002d2  b90e000000                MOV ECX,0xe
005002d7  f7f1                      DIV ECX
005002d9  85d2                      TEST EDX,EDX
005002db  0f8590000000              JNZ 0x00500371
005002e1  f30f10542414              MOVSS XMM2,dword ptr [ESP + 0x14]
005002e7  f30f105c2424              MOVSS XMM3,dword ptr [ESP + 0x24]
005002ed  0f28ca                    MOVAPS XMM1,XMM2
005002f0  0f28c3                    MOVAPS XMM0,XMM3
005002f3  e8689af9ff                CALL 0x00499d60
005002f8  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00500300  51                        PUSH ECX
00500301  c704240000803f            MOV dword ptr [ESP],0x3f800000
00500308  6a00                      PUSH 0x0
0050030a  6a1e                      PUSH 0x1e
0050030c  51                        PUSH ECX
0050030d  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00500315  8bcf                      MOV ECX,EDI
00500317  c704240000803f            MOV dword ptr [ESP],0x3f800000
0050031e  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00500326  682d010000                PUSH 0x12d
0050032b  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00500335  e866681d00                CALL 0x006d6ba0
0050033a  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00500342  b83c000000                MOV EAX,0x3c
00500347  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0050034f  b950000000                MOV ECX,0x50
00500354  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0050035c  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00500364  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00500368  0f44c1                    CMOVZ EAX,ECX
0050036b  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
00500371  e8eaeb1e00                CALL 0x006eef60
00500376  33d2                      XOR EDX,EDX
00500378  b906000000                MOV ECX,0x6
0050037d  f7f1                      DIV ECX
0050037f  85d2                      TEST EDX,EDX
00500381  0f859d000000              JNZ 0x00500424
00500387  e8d4eb1e00                CALL 0x006eef60
0050038c  51                        PUSH ECX
0050038d  8bcf                      MOV ECX,EDI
0050038f  660f6ec0                  MOVD XMM0,EAX
00500393  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00500397  c1e81f                    SHR EAX,0x1f
0050039a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
005003a3  660f5ac0                  CVTPD2PS XMM0,XMM0
005003a7  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
005003af  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005003b7  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
005003bf  f30f110424                MOVSS dword ptr [ESP],XMM0
005003c4  e807611b00                CALL 0x006b64d0
005003c9  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
005003cd  8bc8                      MOV ECX,EAX
005003cf  7553                      JNZ 0x00500424
005003d1  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
005003d8  8d942498000000            LEA EDX,[ESP + 0x98]
005003df  8b01                      MOV EAX,dword ptr [ECX]
005003e1  6a01                      PUSH 0x1
005003e3  6a00                      PUSH 0x0
005003e5  68ff000000                PUSH 0xff
005003ea  0f118424a4000000          MOVUPS xmmword ptr [ESP + 0xa4],XMM0
005003f2  6aff                      PUSH -0x1
005003f4  0f57c0                    XORPS XMM0,XMM0
005003f7  c78424c80000009190103e    MOV dword ptr [ESP + 0xc8],0x3e109091
00500402  52                        PUSH EDX
00500403  0f118424bc000000          MOVUPS xmmword ptr [ESP + 0xbc],XMM0
0050040b  c78424d0000000f9f8f83d    MOV dword ptr [ESP + 0xd0],0x3df8f8f9
00500416  c78424d4000000e1e0e03d    MOV dword ptr [ESP + 0xd4],0x3de0e0e1
00500421  ff503c                    CALL dword ptr [EAX + 0x3c]
00500424  8b74241c                  MOV ESI,dword ptr [ESP + 0x1c]
00500428  b905000000                MOV ECX,0x5
0050042d  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00500432  0f57c9                    XORPS XMM1,XMM1
00500435  0f2fc1                    COMISS XMM0,XMM1
00500438  761e                      JBE 0x00500458
0050043a  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00500441  7f15                      JG 0x00500458
00500443  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0050044a  b80a000000                MOV EAX,0xa
0050044f  0f45c1                    CMOVNZ EAX,ECX
00500452  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
00500458  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
0050045e  85d2                      TEST EDX,EDX
00500460  7e37                      JLE 0x00500499
00500462  83fa08                    CMP EDX,0x8
00500465  7c18                      JL 0x0050047f
00500467  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050046f  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
00500477  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050047f  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
00500487  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0050048f  2bc8                      SUB ECX,EAX
00500491  03ca                      ADD ECX,EDX
00500493  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
00500499  85f6                      TEST ESI,ESI
0050049b  0f841b040000              JZ 0x005008bc
005004a1  8d4e01                    LEA ECX,[ESI + 0x1]
005004a4  8a06                      MOV AL,byte ptr [ESI]
005004a6  46                        INC ESI
005004a7  84c0                      TEST AL,AL
005004a9  75f9                      JNZ 0x005004a4
005004ab  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005004ae  2bf1                      SUB ESI,ECX
005004b0  85c0                      TEST EAX,EAX
005004b2  0f8422010000              JZ 0x005005da
005004b8  50                        PUSH EAX
005004b9  8d8c24c8000000            LEA ECX,[ESP + 0xc8]
005004c0  e88bcaf0ff                CALL 0x0040cf50
005004c5  8b8c24d8000000            MOV ECX,dword ptr [ESP + 0xd8]
005004cc  8b9424c4000000            MOV EDX,dword ptr [ESP + 0xc4]
005004d3  e91e010000                JMP 0x005005f6
005004d8  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005004e2  89b7c00b0000              MOV dword ptr [EDI + 0xbc0],ESI
005004e8  89b710040000              MOV dword ptr [EDI + 0x410],ESI
005004ee  e86dea1e00                CALL 0x006eef60
005004f3  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
005004fb  660f6ec0                  MOVD XMM0,EAX
005004ff  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00500503  c1e81f                    SHR EAX,0x1f
00500506  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050050f  660f5ad0                  CVTPD2PS XMM2,XMM0
00500513  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0050051b  f30f59d3                  MULSS XMM2,XMM3
0050051f  0f28ca                    MOVAPS XMM1,XMM2
00500522  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00500529  0f2fcb                    COMISS XMM1,XMM3
0050052c  7616                      JBE 0x00500544
0050052e  0f28cb                    MOVAPS XMM1,XMM3
00500531  0f28c2                    MOVAPS XMM0,XMM2
00500534  e8e797f9ff                CALL 0x00499d20
00500539  f30f101d30abba00          MOVSS XMM3,dword ptr [0x00baab30]
00500541  0f28d0                    MOVAPS XMM2,XMM0
00500544  0f2f1578aaba00            COMISS XMM2,dword ptr [0x00baaa78]
0050054b  7606                      JBE 0x00500553
0050054d  f30f5cd3                  SUBSS XMM2,XMM3
00500551  eb11                      JMP 0x00500564
00500553  f30f10057caeba00          MOVSS XMM0,dword ptr [0x00baae7c]
0050055b  0f2fc2                    COMISS XMM0,XMM2
0050055e  7604                      JBE 0x00500564
00500560  f30f58d3                  ADDSS XMM2,XMM3
00500564  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
0050056c  89b7b40b0000              MOV dword ptr [EDI + 0xbb4],ESI
00500572  89b7c40b0000              MOV dword ptr [EDI + 0xbc4],ESI
00500578  89b7a00b0000              MOV dword ptr [EDI + 0xba0],ESI
0050057e  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00500582  0f85a0feffff              JNZ 0x00500428
00500588  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
0050058f  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00500595  8d442440                  LEA EAX,[ESP + 0x40]
00500599  c74424609190103e          MOV dword ptr [ESP + 0x60],0x3e109091
005005a1  c7442464f9f8f83d          MOV dword ptr [ESP + 0x64],0x3df8f8f9
005005a9  0f57c9                    XORPS XMM1,XMM1
005005ac  c7442468e1e0e03d          MOV dword ptr [ESP + 0x68],0x3de0e0e1
005005b4  3bc8                      CMP ECX,EAX
005005b6  0f846cfeffff              JZ 0x00500428
005005bc  8b442468                  MOV EAX,dword ptr [ESP + 0x68]
005005c0  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
005005c3  f30f7e442460              MOVQ XMM0,qword ptr [ESP + 0x60]
005005c9  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
005005ce  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
005005d2  894128                    MOV dword ptr [ECX + 0x28],EAX
005005d5  e94efeffff                JMP 0x00500428
005005da  33d2                      XOR EDX,EDX
005005dc  b90f000000                MOV ECX,0xf
005005e1  899424c4000000            MOV dword ptr [ESP + 0xc4],EDX
005005e8  898c24d8000000            MOV dword ptr [ESP + 0xd8],ECX
005005ef  899424d4000000            MOV dword ptr [ESP + 0xd4],EDX
005005f6  83f910                    CMP ECX,0x10
005005f9  8d8424c4000000            LEA EAX,[ESP + 0xc4]
00500600  56                        PUSH ESI
00500601  ff742420                  PUSH dword ptr [ESP + 0x20]
00500605  0f43c2                    CMOVNC EAX,EDX
00500608  50                        PUSH EAX
00500609  ff153489b100              CALL dword ptr [0x00b18934]
0050060f  8b9424e4000000            MOV EDX,dword ptr [ESP + 0xe4]
00500616  83c40c                    ADD ESP,0xc
00500619  85c0                      TEST EAX,EAX
0050061b  0f94c0                    SETZ AL
0050061e  8844240b                  MOV byte ptr [ESP + 0xb],AL
00500622  83fa10                    CMP EDX,0x10
00500625  7236                      JC 0x0050065d
00500627  8b8c24c4000000            MOV ECX,dword ptr [ESP + 0xc4]
0050062e  42                        INC EDX
0050062f  8bc1                      MOV EAX,ECX
00500631  81fa00100000              CMP EDX,0x1000
00500637  7216                      JC 0x0050064f
00500639  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050063c  83c223                    ADD EDX,0x23
0050063f  2bc1                      SUB EAX,ECX
00500641  83c0fc                    ADD EAX,-0x4
00500644  83f81f                    CMP EAX,0x1f
00500647  7606                      JBE 0x0050064f
00500649  ff159488b100              CALL dword ptr [0x00b18894]
0050064f  52                        PUSH EDX
00500650  51                        PUSH ECX
00500651  e806eb5e00                CALL 0x00aef15c
00500656  8a442413                  MOV AL,byte ptr [ESP + 0x13]
0050065a  83c408                    ADD ESP,0x8
0050065d  84c0                      TEST AL,AL
0050065f  742e                      JZ 0x0050068f
00500661  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00500665  7428                      JZ 0x0050068f
00500667  d98788000000              FLD dword ptr [EDI + 0x88]
0050066d  83ec08                    SUB ESP,0x8
00500670  dd1c24                    FSTP qword ptr [ESP]
00500673  e89f025f00                CALL 0x00af0917
00500678  d95c2414                  FSTP dword ptr [ESP + 0x14]
0050067c  d9442414                  FLD dword ptr [ESP + 0x14]
00500680  83c408                    ADD ESP,0x8
00500683  d95c240c                  FSTP dword ptr [ESP + 0xc]
00500687  f30f2c74240c              CVTTSS2SI ESI,dword ptr [ESP + 0xc]
0050068d  eb03                      JMP 0x00500692
0050068f  83ceff                    OR ESI,0xffffffff
00500692  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0050069a  83ec08                    SUB ESP,0x8
0050069d  f30f5e0510a9ba00          DIVSS XMM0,dword ptr [0x00baa910]
005006a5  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
005006ad  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
005006b3  d9442414                  FLD dword ptr [ESP + 0x14]
005006b7  dd1c24                    FSTP qword ptr [ESP]
005006ba  e858025f00                CALL 0x00af0917
005006bf  d95c2414                  FSTP dword ptr [ESP + 0x14]
005006c3  d9442414                  FLD dword ptr [ESP + 0x14]
005006c7  d95c2414                  FSTP dword ptr [ESP + 0x14]
005006cb  f30f2c442414              CVTTSS2SI EAX,dword ptr [ESP + 0x14]
005006d1  83c008                    ADD EAX,0x8
005006d4  2507000080                AND EAX,0x80000007
005006d9  7905                      JNS 0x005006e0
005006db  48                        DEC EAX
005006dc  83c8f8                    OR EAX,0xfffffff8
005006df  40                        INC EAX
005006e0  c78424cc000000f0cdb100    MOV dword ptr [ESP + 0xcc],0xb1cdf0
005006eb  c78424d0000000f00bb600    MOV dword ptr [ESP + 0xd0],0xb60bf0
005006f6  c78424d4000000dccdb100    MOV dword ptr [ESP + 0xd4],0xb1cddc
00500701  c78424d8000000f00bb600    MOV dword ptr [ESP + 0xd8],0xb60bf0
0050070c  c78424dc000000f0cdb100    MOV dword ptr [ESP + 0xdc],0xb1cdf0
00500717  c78424e0000000200cb600    MOV dword ptr [ESP + 0xe0],0xb60c20
00500722  c78424e4000000e4cdb100    MOV dword ptr [ESP + 0xe4],0xb1cde4
0050072d  c78424e8000000200cb600    MOV dword ptr [ESP + 0xe8],0xb60c20
00500738  ffb484cc000000            PUSH dword ptr [ESP + EAX*0x4 + 0xcc]
0050073f  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00500745  8d8424a4000000            LEA EAX,[ESP + 0xa4]
0050074c  ff742428                  PUSH dword ptr [ESP + 0x28]
00500750  68280cb600                PUSH 0xb60c28
00500755  50                        PUSH EAX
00500756  e82503f2ff                CALL 0x00420a80
0050075b  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
00500763  83c418                    ADD ESP,0x18
00500766  0f2f0d50aeba00            COMISS XMM1,dword ptr [0x00baae50]
0050076d  7211                      JC 0x00500780
0050076f  f30f1005b4a9ba00          MOVSS XMM0,dword ptr [0x00baa9b4]
00500777  0f2fc1                    COMISS XMM0,XMM1
0050077a  7204                      JC 0x00500780
0050077c  b001                      MOV AL,0x1
0050077e  eb02                      JMP 0x00500782
00500780  32c0                      XOR AL,AL
00500782  888748010000              MOV byte ptr [EDI + 0x148],AL
00500788  b802000000                MOV EAX,0x2
0050078d  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00500791  7460                      JZ 0x005007f3
00500793  8d8424c4000000            LEA EAX,[ESP + 0xc4]
0050079a  50                        PUSH EAX
0050079b  8d4f78                    LEA ECX,[EDI + 0x78]
0050079e  e84d24f5ff                CALL 0x00452bf0
005007a3  c744240c03000000          MOV dword ptr [ESP + 0xc],0x3
005007ab  83781410                  CMP dword ptr [EAX + 0x14],0x10
005007af  7202                      JC 0x005007b3
005007b1  8b00                      MOV EAX,dword ptr [EAX]
005007b3  8d8c2498000000            LEA ECX,[ESP + 0x98]
005007ba  660f1f440000              NOP word ptr [EAX + EAX*0x1]
005007c0  8a10                      MOV DL,byte ptr [EAX]
005007c2  3a11                      CMP DL,byte ptr [ECX]
005007c4  751a                      JNZ 0x005007e0
005007c6  84d2                      TEST DL,DL
005007c8  7412                      JZ 0x005007dc
005007ca  8a5001                    MOV DL,byte ptr [EAX + 0x1]
005007cd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
005007d0  750e                      JNZ 0x005007e0
005007d2  83c002                    ADD EAX,0x2
005007d5  83c102                    ADD ECX,0x2
005007d8  84d2                      TEST DL,DL
005007da  75e4                      JNZ 0x005007c0
005007dc  33c0                      XOR EAX,EAX
005007de  eb05                      JMP 0x005007e5
005007e0  1bc0                      SBB EAX,EAX
005007e2  83c801                    OR EAX,0x1
005007e5  85c0                      TEST EAX,EAX
005007e7  7506                      JNZ 0x005007ef
005007e9  8844240b                  MOV byte ptr [ESP + 0xb],AL
005007ed  eb0d                      JMP 0x005007fc
005007ef  8b44240c                  MOV EAX,dword ptr [ESP + 0xc]
005007f3  c644240b01                MOV byte ptr [ESP + 0xb],0x1
005007f8  a801                      TEST AL,0x1
005007fa  7445                      JZ 0x00500841
005007fc  8b9424d8000000            MOV EDX,dword ptr [ESP + 0xd8]
00500803  83fa10                    CMP EDX,0x10
00500806  7232                      JC 0x0050083a
00500808  8b8c24c4000000            MOV ECX,dword ptr [ESP + 0xc4]
0050080f  42                        INC EDX
00500810  8bc1                      MOV EAX,ECX
00500812  81fa00100000              CMP EDX,0x1000
00500818  7216                      JC 0x00500830
0050081a  8b49fc                    MOV ECX,dword ptr [ECX + -0x4]
0050081d  83c223                    ADD EDX,0x23
00500820  2bc1                      SUB EAX,ECX
00500822  83c0fc                    ADD EAX,-0x4
00500825  83f81f                    CMP EAX,0x1f
00500828  7606                      JBE 0x00500830
0050082a  ff159488b100              CALL dword ptr [0x00b18894]
00500830  52                        PUSH EDX
00500831  51                        PUSH ECX
00500832  e825e95e00                CALL 0x00aef15c
00500837  83c408                    ADD ESP,0x8
0050083a  807c240b00                CMP byte ptr [ESP + 0xb],0x0
0050083f  742b                      JZ 0x0050086c
00500841  6a00                      PUSH 0x0
00500843  8d84249c000000            LEA EAX,[ESP + 0x9c]
0050084a  50                        PUSH EAX
0050084b  8d4f48                    LEA ECX,[EDI + 0x48]
0050084e  e82d9bf0ff                CALL 0x0040a380
00500853  85f6                      TEST ESI,ESI
00500855  7815                      JS 0x0050086c
00500857  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0050085b  740f                      JZ 0x0050086c
0050085d  660f6ece                  MOVD XMM1,ESI
00500861  8d4f78                    LEA ECX,[EDI + 0x78]
00500864  0f5bc9                    CVTDQ2PS XMM1,XMM1
00500867  e89485f0ff                CALL 0x00408e00
0050086c  f30f10442430              MOVSS XMM0,dword ptr [ESP + 0x30]
00500872  f30f11874c010000          MOVSS dword ptr [EDI + 0x14c],XMM0
0050087a  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00500882  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0050088a  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
00500890  e8abccf1ff                CALL 0x0041d540
00500895  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0050089b  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
005008a1  e87accf1ff                CALL 0x0041d520
005008a6  f30f104c2428              MOVSS XMM1,dword ptr [ESP + 0x28]
005008ac  f30f118f300f0000          MOVSS dword ptr [EDI + 0xf30],XMM1
005008b4  f30f1187340f0000          MOVSS dword ptr [EDI + 0xf34],XMM0
005008bc  8b7708                    MOV ESI,dword ptr [EDI + 0x8]
005008bf  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
005008c2  0f84b3000000              JZ 0x0050097b
005008c8  0f1f840000000000          NOP dword ptr [EAX + EAX*0x1]
005008d0  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
005008d3  83e002                    AND EAX,0x2
005008d6  83c800                    OR EAX,0x0
005008d9  0f8490000000              JZ 0x0050096f
005008df  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
005008e4  8bcf                      MOV ECX,EDI
005008e6  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
005008ea  6aff                      PUSH -0x1
005008ec  6a00                      PUSH 0x0
005008ee  6838030000                PUSH 0x338
005008f3  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
005008f8  c70600000000              MOV dword ptr [ESI],0x0
005008fe  e81d69f1ff                CALL 0x00417220
00500903  84c0                      TEST AL,AL
00500905  7468                      JZ 0x0050096f
00500907  6aff                      PUSH -0x1
00500909  6a00                      PUSH 0x0
0050090b  6a01                      PUSH 0x1
0050090d  6838030000                PUSH 0x338
00500912  e819061c00                CALL 0x006c0f30
00500917  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
0050091e  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00500924  8d44246c                  LEA EAX,[ESP + 0x6c]
00500928  c784248c0000009190103e    MOV dword ptr [ESP + 0x8c],0x3e109091
00500933  c7842490000000f9f8f83d    MOV dword ptr [ESP + 0x90],0x3df8f8f9
0050093e  0f57c9                    XORPS XMM1,XMM1
00500941  c7842494000000e1e0e03d    MOV dword ptr [ESP + 0x94],0x3de0e0e1
0050094c  3bc8                      CMP ECX,EAX
0050094e  741f                      JZ 0x0050096f
00500950  8b842494000000            MOV EAX,dword ptr [ESP + 0x94]
00500957  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
0050095a  f30f7e84248c000000        MOVQ XMM0,qword ptr [ESP + 0x8c]
00500963  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00500968  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
0050096c  894128                    MOV dword ptr [ECX + 0x28],EAX
0050096f  83c638                    ADD ESI,0x38
00500972  3b770c                    CMP ESI,dword ptr [EDI + 0xc]
00500975  0f8555ffffff              JNZ 0x005008d0
0050097b  8b8c24e4000000            MOV ECX,dword ptr [ESP + 0xe4]
00500982  5f                        POP EDI
00500983  5e                        POP ESI
00500984  33cc                      XOR ECX,ESP
00500986  e8a0e75e00                CALL 0x00aef12b
0050098b  8be5                      MOV ESP,EBP
0050098d  5d                        POP EBP
0050098e  c3                        RET
