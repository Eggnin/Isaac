; J460 NPC AI 0x00505d00 AI_00505d00
; types=201
; identities=201.0.0
; entry=00505d00
00505d00  55                        PUSH EBP
00505d01  8bec                      MOV EBP,ESP
00505d03  83e4c0                    AND ESP,0xffffffc0
00505d06  83ec74                    SUB ESP,0x74
00505d09  53                        PUSH EBX
00505d0a  56                        PUSH ESI
00505d0b  57                        PUSH EDI
00505d0c  8bf9                      MOV EDI,ECX
00505d0e  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00505d15  8b9fd4030000              MOV EBX,dword ptr [EDI + 0x3d4]
00505d1b  0f8552010000              JNZ 0x00505e73
00505d21  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
00505d27  8d4f48                    LEA ECX,[EDI + 0x48]
00505d2a  898734030000              MOV dword ptr [EDI + 0x334],EAX
00505d30  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
00505d36  838f6801000001            OR dword ptr [EDI + 0x168],0x1
00505d3d  838f6c01000008            OR dword ptr [EDI + 0x16c],0x8
00505d44  898738030000              MOV dword ptr [EDI + 0x338],EAX
00505d4a  6a01                      PUSH 0x1
00505d4c  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00505d53  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
00505d5d  68ac0cb600                PUSH 0xb60cac
00505d62  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00505d6c  e85f48f0ff                CALL 0x0040a5d0
00505d71  84c0                      TEST AL,AL
00505d73  740f                      JZ 0x00505d84
00505d75  8d4f78                    LEA ECX,[EDI + 0x78]
00505d78  e83344f0ff                CALL 0x0040a1b0
00505d7d  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00505d84  85db                      TEST EBX,EBX
00505d86  0f8587000000              JNZ 0x00505e13
00505d8c  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
00505d94  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00505d9c  f30f5cc1                  SUBSS XMM0,XMM1
00505da0  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
00505da8  a17816c700                MOV EAX,[0x00c71678]
00505dad  f30f5ec1                  DIVSS XMM0,XMM1
00505db1  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00505db7  f30f58c2                  ADDSS XMM0,XMM2
00505dbb  f30f2cd0                  CVTTSS2SI EDX,XMM0
00505dbf  85d2                      TEST EDX,EDX
00505dc1  7850                      JS 0x00505e13
00505dc3  8b710c                    MOV ESI,dword ptr [ECX + 0xc]
00505dc6  3bd6                      CMP EDX,ESI
00505dc8  7d49                      JGE 0x00505e13
00505dca  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00505dd2  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
00505dda  f30f5ec1                  DIVSS XMM0,XMM1
00505dde  f30f58c2                  ADDSS XMM0,XMM2
00505de2  f30f2cc0                  CVTTSS2SI EAX,XMM0
00505de6  85c0                      TEST EAX,EAX
00505de8  7829                      JS 0x00505e13
00505dea  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
00505ded  7d24                      JGE 0x00505e13
00505def  0fafc6                    IMUL EAX,ESI
00505df2  03c2                      ADD EAX,EDX
00505df4  3dbf010000                CMP EAX,0x1bf
00505df9  7718                      JA 0x00505e13
00505dfb  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
00505e06  7f0b                      JG 0x00505e13
00505e08  c784816c070000b6030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
00505e13  8d4c2454                  LEA ECX,[ESP + 0x54]
00505e17  e85413f0ff                CALL 0x00407170
00505e1c  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00505e22  3bc8                      CMP ECX,EAX
00505e24  741e                      JZ 0x00505e44
00505e26  0f1000                    MOVUPS XMM0,xmmword ptr [EAX]
00505e29  0f1101                    MOVUPS xmmword ptr [ECX],XMM0
00505e2c  0f104010                  MOVUPS XMM0,xmmword ptr [EAX + 0x10]
00505e30  0f114110                  MOVUPS xmmword ptr [ECX + 0x10],XMM0
00505e34  f30f7e4020                MOVQ XMM0,qword ptr [EAX + 0x20]
00505e39  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00505e3e  8b4028                    MOV EAX,dword ptr [EAX + 0x28]
00505e41  894128                    MOV dword ptr [ECX + 0x28],EAX
00505e44  c787f40100000000803f      MOV dword ptr [EDI + 0x1f4],0x3f800000
00505e4e  c787f80100000000803f      MOV dword ptr [EDI + 0x1f8],0x3f800000
00505e58  c787fc0100000000803f      MOV dword ptr [EDI + 0x1fc],0x3f800000
00505e62  c787000200000000803f      MOV dword ptr [EDI + 0x200],0x3f800000
00505e6c  5f                        POP EDI
00505e6d  5e                        POP ESI
00505e6e  5b                        POP EBX
00505e6f  8be5                      MOV ESP,EBP
00505e71  5d                        POP EBP
00505e72  c3                        RET
00505e73  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00505e7a  743c                      JZ 0x00505eb8
00505e7c  85db                      TEST EBX,EBX
00505e7e  7538                      JNZ 0x00505eb8
00505e80  a17816c700                MOV EAX,[0x00c71678]
00505e85  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00505e8b  8d873c030000              LEA EAX,[EDI + 0x33c]
00505e91  50                        PUSH EAX
00505e92  8bce                      MOV ECX,ESI
00505e94  e8f7cd3000                CALL 0x00812c90
00505e99  3dbf010000                CMP EAX,0x1bf
00505e9e  7718                      JA 0x00505eb8
00505ea0  81bc866c070000b6030000    CMP dword ptr [ESI + EAX*0x4 + 0x76c],0x3b6
00505eab  7f0b                      JG 0x00505eb8
00505ead  c784866c07000084030000    MOV dword ptr [ESI + EAX*0x4 + 0x76c],0x384
00505eb8  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00505ec0  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00505ec8  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00505ed0  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
00505ed8  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00505ee0  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00505ee8  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00505ef0  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00505ef8  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00505f00  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00505f06  83f804                    CMP EAX,0x4
00505f09  0f85df030000              JNZ 0x005062ee
00505f0f  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
00505f12  85c0                      TEST EAX,EAX
00505f14  7406                      JZ 0x00505f1c
00505f16  80783400                  CMP byte ptr [EAX + 0x34],0x0
00505f1a  753c                      JNZ 0x00505f58
00505f1c  6a01                      PUSH 0x1
00505f1e  68ac0cb600                PUSH 0xb60cac
00505f23  8d4f48                    LEA ECX,[EDI + 0x48]
00505f26  e8a546f0ff                CALL 0x0040a5d0
00505f2b  84c0                      TEST AL,AL
00505f2d  740f                      JZ 0x00505f3e
00505f2f  8d4f78                    LEA ECX,[EDI + 0x78]
00505f32  e87942f0ff                CALL 0x0040a1b0
00505f37  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
00505f3e  8bcf                      MOV ECX,EDI
00505f40  e8db0c1d00                CALL 0x006d6c20
00505f45  85c0                      TEST EAX,EAX
00505f47  7f0f                      JG 0x00505f58
00505f49  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00505f53  e9a7030000                JMP 0x005062ff
00505f58  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00505f5f  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
00505f67  0f84cb000000              JZ 0x00506038
00505f6d  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
00505f75  8d442438                  LEA EAX,[ESP + 0x38]
00505f79  50                        PUSH EAX
00505f7a  8bcf                      MOV ECX,EDI
00505f7c  e81f261d00                CALL 0x006d85a0
00505f81  f30f104c2438              MOVSS XMM1,dword ptr [ESP + 0x38]
00505f87  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
00505f8e  f30f1044243c              MOVSS XMM0,dword ptr [ESP + 0x3c]
00505f94  9f                        LAHF
00505f95  f6c444                    TEST AH,0x44
00505f98  7a22                      JP 0x00505fbc
00505f9a  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00505fa1  9f                        LAHF
00505fa2  f6c444                    TEST AH,0x44
00505fa5  7a15                      JP 0x00505fbc
00505fa7  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00505faf  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
00505fb7  e994000000                JMP 0x00506050
00505fbc  e89f3df9ff                CALL 0x00499d60
00505fc1  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
00505fc9  83ec08                    SUB ESP,0x8
00505fcc  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00505fd4  f30f11442440              MOVSS dword ptr [ESP + 0x40],XMM0
00505fda  d9442440                  FLD dword ptr [ESP + 0x40]
00505fde  dd1c24                    FSTP qword ptr [ESP]
00505fe1  e831a95e00                CALL 0x00af0917
00505fe6  f30f101530a6ba00          MOVSS XMM2,dword ptr [0x00baa630]
00505fee  83c408                    ADD ESP,0x8
00505ff1  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00505ff9  d95c2438                  FSTP dword ptr [ESP + 0x38]
00505ffd  f30f104c2438              MOVSS XMM1,dword ptr [ESP + 0x38]
00506003  f30f58c9                  ADDSS XMM1,XMM1
00506007  f30f5c0db4a9ba00          SUBSS XMM1,dword ptr [0x00baa9b4]
0050600f  e83cca1700                CALL 0x00682a50
00506014  0f57c9                    XORPS XMM1,XMM1
00506017  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0050601d  0f2fc8                    COMISS XMM1,XMM0
00506020  f30f100d30abba00          MOVSS XMM1,dword ptr [0x00baab30]
00506028  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00506030  7624                      JBE 0x00506056
00506032  f30f58c1                  ADDSS XMM0,XMM1
00506036  eb10                      JMP 0x00506048
00506038  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00506040  f30f580530a6ba00          ADDSS XMM0,dword ptr [0x00baa630]
00506048  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00506050  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00506056  0f2fc1                    COMISS XMM0,XMM1
00506059  7612                      JBE 0x0050606d
0050605b  f30f5cc1                  SUBSS XMM0,XMM1
0050605f  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
00506065  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0050606d  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00506075  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
0050607b  e8a074f1ff                CALL 0x0041d520
00506080  0f57c9                    XORPS XMM1,XMM1
00506083  f30f5ac8                  CVTSS2SD XMM1,XMM0
00506087  f30f10442438              MOVSS XMM0,dword ptr [ESP + 0x38]
0050608d  f20f114c2440              MOVSD qword ptr [ESP + 0x40],XMM1
00506093  e8a874f1ff                CALL 0x0041d540
00506098  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005060a0  dd442440                  FLD qword ptr [ESP + 0x40]
005060a4  f30f5ac0                  CVTSS2SD XMM0,XMM0
005060a8  f20f11442448              MOVSD qword ptr [ESP + 0x48],XMM0
005060ae  dd442448                  FLD qword ptr [ESP + 0x48]
005060b2  e80ca85e00                CALL 0x00af08c3
005060b7  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
005060ba  dd5c2448                  FSTP qword ptr [ESP + 0x48]
005060be  f20f10442448              MOVSD XMM0,qword ptr [ESP + 0x48]
005060c4  660f5ac0                  CVTPD2PS XMM0,XMM0
005060c8  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
005060d0  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
005060d6  85c0                      TEST EAX,EAX
005060d8  7463                      JZ 0x0050613d
005060da  f30f104c2434              MOVSS XMM1,dword ptr [ESP + 0x34]
005060e0  8d4f78                    LEA ECX,[EDI + 0x78]
005060e3  f30f580d54a8ba00          ADDSS XMM1,dword ptr [0x00baa854]
005060eb  660f6e4030                MOVD XMM0,dword ptr [EAX + 0x30]
005060f0  0f5bc0                    CVTDQ2PS XMM0,XMM0
005060f3  f30f5e0d30abba00          DIVSS XMM1,dword ptr [0x00baab30]
005060fb  f30f59c1                  MULSS XMM0,XMM1
005060ff  f30f2cc0                  CVTTSS2SI EAX,XMM0
00506103  660f6ec8                  MOVD XMM1,EAX
00506107  0f5bc9                    CVTDQ2PS XMM1,XMM1
0050610a  e8f12cf0ff                CALL 0x00408e00
0050610f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00506113  7428                      JZ 0x0050613d
00506115  d98788000000              FLD dword ptr [EDI + 0x88]
0050611b  83ec08                    SUB ESP,0x8
0050611e  dd1c24                    FSTP qword ptr [ESP]
00506121  e8f1a75e00                CALL 0x00af0917
00506126  d95c243c                  FSTP dword ptr [ESP + 0x3c]
0050612a  d944243c                  FLD dword ptr [ESP + 0x3c]
0050612e  83c408                    ADD ESP,0x8
00506131  d95c2434                  FSTP dword ptr [ESP + 0x34]
00506135  f30f2c742434              CVTTSS2SI ESI,dword ptr [ESP + 0x34]
0050613b  eb03                      JMP 0x00506140
0050613d  83ceff                    OR ESI,0xffffffff
00506140  8b87c0030000              MOV EAX,dword ptr [EDI + 0x3c0]
00506146  8d9fc0030000              LEA EBX,[EDI + 0x3c0]
0050614c  85c0                      TEST EAX,EAX
0050614e  0f850d010000              JNZ 0x00506261
00506154  e8078e1e00                CALL 0x006eef60
00506159  33d2                      XOR EDX,EDX
0050615b  b903000000                MOV ECX,0x3
00506160  f7f1                      DIV ECX
00506162  85d2                      TEST EDX,EDX
00506164  0f8548010000              JNZ 0x005062b2
0050616a  8d4e01                    LEA ECX,[ESI + 0x1]
0050616d  89542440                  MOV dword ptr [ESP + 0x40],EDX
00506171  b856555555                MOV EAX,0x55555556
00506176  c74424440000a0c1          MOV dword ptr [ESP + 0x44],0xc1a00000
0050617e  f7e9                      IMUL ECX
00506180  8bc2                      MOV EAX,EDX
00506182  c1e81f                    SHR EAX,0x1f
00506185  03c2                      ADD EAX,EDX
00506187  660f6ec0                  MOVD XMM0,EAX
0050618b  0f5bc0                    CVTDQ2PS XMM0,XMM0
0050618e  f30f5905d0a8ba00          MULSS XMM0,dword ptr [0x00baa8d0]
00506196  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
0050619e  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
005061a6  f30f5c054ca5ba00          SUBSS XMM0,dword ptr [0x00baa54c]
005061ae  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
005061b4  e88773f1ff                CALL 0x0041d540
005061b9  f30f59057ca8ba00          MULSS XMM0,dword ptr [0x00baa87c]
005061c1  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
005061c9  f30f11442448              MOVSS dword ptr [ESP + 0x48],XMM0
005061cf  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
005061d5  e84673f1ff                CALL 0x0041d520
005061da  f30f590548a8ba00          MULSS XMM0,dword ptr [0x00baa848]
005061e2  8d442440                  LEA EAX,[ESP + 0x40]
005061e6  6a00                      PUSH 0x0
005061e8  57                        PUSH EDI
005061e9  50                        PUSH EAX
005061ea  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
005061f2  6a02                      PUSH 0x2
005061f4  51                        PUSH ECX
005061f5  8d44245c                  LEA EAX,[ESP + 0x5c]
005061f9  f30f11442460              MOVSS dword ptr [ESP + 0x60],XMM0
005061ff  f30f1044244c              MOVSS XMM0,dword ptr [ESP + 0x4c]
00506205  f30f5805b4a9ba00          ADDSS XMM0,dword ptr [0x00baa9b4]
0050620d  f30f110424                MOVSS dword ptr [ESP],XMM0
00506212  50                        PUSH EAX
00506213  6a02                      PUSH 0x2
00506215  e8f6904600                CALL 0x0096f310
0050621a  8b0b                      MOV ECX,dword ptr [EBX]
0050621c  83c41c                    ADD ESP,0x1c
0050621f  8bf0                      MOV ESI,EAX
00506221  85c9                      TEST ECX,ECX
00506223  7414                      JZ 0x00506239
00506225  8d442438                  LEA EAX,[ESP + 0x38]
00506229  895c2438                  MOV dword ptr [ESP + 0x38],EBX
0050622d  50                        PUSH EAX
0050622e  81c1cc030000              ADD ECX,0x3cc
00506234  e8d78ffcff                CALL 0x004cf210
00506239  8933                      MOV dword ptr [EBX],ESI
0050623b  85f6                      TEST ESI,ESI
0050623d  7408                      JZ 0x00506247
0050623f  53                        PUSH EBX
00506240  8bce                      MOV ECX,ESI
00506242  e8a97afcff                CALL 0x004cdcf0
00506247  8b06                      MOV EAX,dword ptr [ESI]
00506249  8bce                      MOV ECX,ESI
0050624b  c7868401000006000000      MOV dword ptr [ESI + 0x184],0x6
00506255  c6861805000001            MOV byte ptr [ESI + 0x518],0x1
0050625c  ff500c                    CALL dword ptr [EAX + 0xc]
0050625f  eb51                      JMP 0x005062b2
00506261  6a00                      PUSH 0x0
00506263  6840d7c500                PUSH 0xc5d740
00506268  68dcd5c500                PUSH 0xc5d5dc
0050626d  6a00                      PUSH 0x0
0050626f  50                        PUSH EAX
00506270  e83ca65e00                CALL 0x00af08b1
00506275  f30f1044244c              MOVSS XMM0,dword ptr [ESP + 0x4c]
0050627b  83c414                    ADD ESP,0x14
0050627e  f30f5805b4a9ba00          ADDSS XMM0,dword ptr [0x00baa9b4]
00506286  8b881c040000              MOV ECX,dword ptr [EAX + 0x41c]
0050628c  898820040000              MOV dword ptr [EAX + 0x420],ECX
00506292  f30f118018040000          MOVSS dword ptr [EAX + 0x418],XMM0
0050629a  f30f11801c040000          MOVSS dword ptr [EAX + 0x41c],XMM0
005062a2  f30f5c05b4a9ba00          SUBSS XMM0,dword ptr [0x00baa9b4]
005062aa  f30f1180ec000000          MOVSS dword ptr [EAX + 0xec],XMM0
005062b2  8bcf                      MOV ECX,EDI
005062b4  e867091d00                CALL 0x006d6c20
005062b9  85c0                      TEST EAX,EAX
005062bb  7f4f                      JG 0x0050630c
005062bd  51                        PUSH ECX
005062be  c704240000803f            MOV dword ptr [ESP],0x3f800000
005062c5  6a00                      PUSH 0x0
005062c7  6a02                      PUSH 0x2
005062c9  51                        PUSH ECX
005062ca  c704240000003f            MOV dword ptr [ESP],0x3f000000
005062d1  8bcf                      MOV ECX,EDI
005062d3  68d4000000                PUSH 0xd4
005062d8  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
005062e2  e8b9081d00                CALL 0x006d6ba0
005062e7  5f                        POP EDI
005062e8  5e                        POP ESI
005062e9  5b                        POP EBX
005062ea  8be5                      MOV ESP,EBP
005062ec  5d                        POP EBP
005062ed  c3                        RET
005062ee  83f803                    CMP EAX,0x3
005062f1  7519                      JNZ 0x0050630c
005062f3  8d4f48                    LEA ECX,[EDI + 0x48]
005062f6  e88544f0ff                CALL 0x0040a780
005062fb  85c0                      TEST EAX,EAX
005062fd  750d                      JNZ 0x0050630c
005062ff  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00506303  7407                      JZ 0x0050630c
00506305  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
0050630c  5f                        POP EDI
0050630d  5e                        POP ESI
0050630e  5b                        POP EBX
0050630f  8be5                      MOV ESP,EBP
00506311  5d                        POP EBP
00506312  c3                        RET
