; J460 NPC AI 0x00506bd0 AI_00506bd0
; types=13,14,18,61,80,214,249,819
; identities=13.0.0,14.0.0,14.1.0,14.2.0,18.0.0,214.0.0,249.0.0,61.0.0,61.1.0,61.2.0,61.3.0,61.4.0,61.5.0,61.6.0,61.7.0,80.0.0,819.0.0,819.1.0
; entry=00506bd0
00506bd0  53                        PUSH EBX
00506bd1  8bdc                      MOV EBX,ESP
00506bd3  83ec08                    SUB ESP,0x8
00506bd6  83e4f8                    AND ESP,0xfffffff8
00506bd9  83c404                    ADD ESP,0x4
00506bdc  55                        PUSH EBP
00506bdd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00506be0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00506be4  8bec                      MOV EBP,ESP
00506be6  6aff                      PUSH -0x1
00506be8  688041af00                PUSH 0xaf4180
00506bed  64a100000000              MOV EAX,FS:[0x0]
00506bf3  50                        PUSH EAX
00506bf4  53                        PUSH EBX
00506bf5  81ece0020000              SUB ESP,0x2e0
00506bfb  a1b493bf00                MOV EAX,[0x00bf93b4]
00506c00  33c5                      XOR EAX,EBP
00506c02  8945ec                    MOV dword ptr [EBP + -0x14],EAX
00506c05  56                        PUSH ESI
00506c06  57                        PUSH EDI
00506c07  50                        PUSH EAX
00506c08  8d45f4                    LEA EAX,[EBP + -0xc]
00506c0b  64a300000000              MOV FS:[0x0],EAX
00506c11  8bf9                      MOV EDI,ECX
00506c13  89bdacfdffff              MOV dword ptr [EBP + 0xfffffdac],EDI
00506c19  837f283d                  CMP dword ptr [EDI + 0x28],0x3d
00506c1d  7526                      JNZ 0x00506c45
00506c1f  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00506c22  83f805                    CMP EAX,0x5
00506c25  7414                      JZ 0x00506c3b
00506c27  83f806                    CMP EAX,0x6
00506c2a  740f                      JZ 0x00506c3b
00506c2c  83f804                    CMP EAX,0x4
00506c2f  7514                      JNZ 0x00506c45
00506c31  e8ca72fdff                CALL 0x004ddf00
00506c36  e9dc220000                JMP 0x00508f17
00506c3b  e860500400                CALL 0x0054bca0
00506c40  e9d2220000                JMP 0x00508f17
00506c45  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00506c4c  f30f100dd0a0ba00          MOVSS XMM1,dword ptr [0x00baa0d0]
00506c54  0f854d010000              JNZ 0x00506da7
00506c5a  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00506c64  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00506c6c  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
00506c74  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00506c7c  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
00506c84  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00506c87  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00506c91  83f83d                    CMP EAX,0x3d
00506c94  0f858a000000              JNZ 0x00506d24
00506c9a  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00506c9d  83f801                    CMP EAX,0x1
00506ca0  754d                      JNZ 0x00506cef
00506ca2  0f57c0                    XORPS XMM0,XMM0
00506ca5  c78574fdffffcac848be      MOV dword ptr [EBP + 0xfffffd74],0xbe48c8ca
00506caf  0f118564fdffff            MOVUPS xmmword ptr [EBP + 0xfffffd64],XMM0
00506cb6  8d8554fdffff              LEA EAX,[EBP + 0xfffffd54]
00506cbc  c78578fdffff8382023f      MOV dword ptr [EBP + 0xfffffd78],0x3f028283
00506cc6  0f2805b0c4ba00            MOVAPS XMM0,xmmword ptr [0x00bac4b0]
00506ccd  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00506cd3  50                        PUSH EAX
00506cd4  0f118554fdffff            MOVUPS xmmword ptr [EBP + 0xfffffd54],XMM0
00506cdb  c7857cfdffffcac8483e      MOV dword ptr [EBP + 0xfffffd7c],0x3e48c8ca
00506ce5  e80605f0ff                CALL 0x004071f0
00506cea  e9ae000000                JMP 0x00506d9d
00506cef  83f803                    CMP EAX,0x3
00506cf2  0f85a5000000              JNZ 0x00506d9d
00506cf8  51                        PUSH ECX
00506cf9  0f28d9                    MOVAPS XMM3,XMM1
00506cfc  c704240000803f            MOV dword ptr [ESP],0x3f800000
00506d03  0f28d1                    MOVAPS XMM2,XMM1
00506d06  8d4dc0                    LEA ECX,[EBP + -0x40]
00506d09  f30f100d8ca0ba00          MOVSS XMM1,dword ptr [0x00baa08c]
00506d11  e8dacbf1ff                CALL 0x004238f0
00506d16  50                        PUSH EAX
00506d17  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00506d1d  e8ce04f0ff                CALL 0x004071f0
00506d22  eb79                      JMP 0x00506d9d
00506d24  3d33030000                CMP EAX,0x333
00506d29  7572                      JNZ 0x00506d9d
00506d2b  0f57c0                    XORPS XMM0,XMM0
00506d2e  c78574fdfffff2f0f03d      MOV dword ptr [EBP + 0xfffffd74],0x3df0f0f2
00506d38  0f118564fdffff            MOVUPS xmmword ptr [EBP + 0xfffffd64],XMM0
00506d3f  8d8554fdffff              LEA EAX,[EBP + 0xfffffd54]
00506d45  c78578fdfffff2f0f03d      MOV dword ptr [EBP + 0xfffffd78],0x3df0f0f2
00506d4f  0f280520bfba00            MOVAPS XMM0,xmmword ptr [0x00babf20]
00506d56  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00506d5c  50                        PUSH EAX
00506d5d  0f118554fdffff            MOVUPS xmmword ptr [EBP + 0xfffffd54],XMM0
00506d64  c7857cfdfffff2f0f03d      MOV dword ptr [EBP + 0xfffffd7c],0x3df0f0f2
00506d6e  e87d04f0ff                CALL 0x004071f0
00506d73  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00506d77  7524                      JNZ 0x00506d9d
00506d79  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00506d7f  838f6801000011            OR dword ptr [EDI + 0x168],0x11
00506d86  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00506d8d  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00506d97  89876c010000              MOV dword ptr [EDI + 0x16c],EAX
00506d9d  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
00506da7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00506dad  6a01                      PUSH 0x1
00506daf  81c1a8ba0100              ADD ECX,0x1baa8
00506db5  51                        PUSH ECX
00506db6  6a09                      PUSH 0x9
00506db8  e8c3724b00                CALL 0x009be080
00506dbd  85c0                      TEST EAX,EAX
00506dbf  742c                      JZ 0x00506ded
00506dc1  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
00506dc7  2500000020                AND EAX,0x20000000
00506dcc  83c800                    OR EAX,0x0
00506dcf  751c                      JNZ 0x00506ded
00506dd1  837f2812                  CMP dword ptr [EDI + 0x28],0x12
00506dd5  c685c7fdffff01            MOV byte ptr [EBP + 0xfffffdc7],0x1
00506ddc  7516                      JNZ 0x00506df4
00506dde  6aff                      PUSH -0x1
00506de0  50                        PUSH EAX
00506de1  50                        PUSH EAX
00506de2  6a0d                      PUSH 0xd
00506de4  8bcf                      MOV ECX,EDI
00506de6  e845a11b00                CALL 0x006c0f30
00506deb  eb07                      JMP 0x00506df4
00506ded  c685c7fdffff00            MOV byte ptr [EBP + 0xfffffdc7],0x0
00506df4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00506dfa  ffb7ec030000              PUSH dword ptr [EDI + 0x3ec]
00506e00  81c1a8ba0100              ADD ECX,0x1baa8
00506e06  51                        PUSH ECX
00506e07  e824774b00                CALL 0x009be530
00506e0c  8bf0                      MOV ESI,EAX
00506e0e  85f6                      TEST ESI,ESI
00506e10  0f8496000000              JZ 0x00506eac
00506e16  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00506e1d  0f8589000000              JNZ 0x00506eac
00506e23  8b4f28                    MOV ECX,dword ptr [EDI + 0x28]
00506e26  83f912                    CMP ECX,0x12
00506e29  7456                      JZ 0x00506e81
00506e2b  83f90d                    CMP ECX,0xd
00506e2e  7451                      JZ 0x00506e81
00506e30  81f9d6000000              CMP ECX,0xd6
00506e36  7449                      JZ 0x00506e81
00506e38  81f9f9000000              CMP ECX,0xf9
00506e3e  7441                      JZ 0x00506e81
00506e40  8b07                      MOV EAX,dword ptr [EDI]
00506e42  8bcf                      MOV ECX,EDI
00506e44  8b404c                    MOV EAX,dword ptr [EAX + 0x4c]
00506e47  ffd0                      CALL EAX
00506e49  84c0                      TEST AL,AL
00506e4b  755f                      JNZ 0x00506eac
00506e4d  6a00                      PUSH 0x0
00506e4f  6800000020                PUSH 0x20000000
00506e54  8bcf                      MOV ECX,EDI
00506e56  e8d505f1ff                CALL 0x00417430
00506e5b  84c0                      TEST AL,AL
00506e5d  754d                      JNZ 0x00506eac
00506e5f  56                        PUSH ESI
00506e60  8d8d14fdffff              LEA ECX,[EBP + 0xfffffd14]
00506e66  e8a5a4f2ff                CALL 0x00431310
00506e6b  6a00                      PUSH 0x0
00506e6d  6a01                      PUSH 0x1
00506e6f  6aff                      PUSH -0x1
00506e71  8d8514fdffff              LEA EAX,[EBP + 0xfffffd14]
00506e77  8bcf                      MOV ECX,EDI
00506e79  50                        PUSH EAX
00506e7a  e8f1691a00                CALL 0x006ad870
00506e7f  eb2b                      JMP 0x00506eac
00506e81  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00506e87  57                        PUSH EDI
00506e88  8d89e4660200              LEA ECX,[ECX + 0x266e4]
00506e8e  e86ded4d00                CALL 0x009e5c00
00506e93  8b07                      MOV EAX,dword ptr [EDI]
00506e95  8bcf                      MOV ECX,EDI
00506e97  ff5028                    CALL dword ptr [EAX + 0x28]
00506e9a  6a00                      PUSH 0x0
00506e9c  8d873c030000              LEA EAX,[EDI + 0x33c]
00506ea2  8bce                      MOV ECX,ESI
00506ea4  50                        PUSH EAX
00506ea5  6a01                      PUSH 0x1
00506ea7  e8242b2500                CALL 0x007599d0
00506eac  837f283d                  CMP dword ptr [EDI + 0x28],0x3d
00506eb0  752e                      JNZ 0x00506ee0
00506eb2  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00506eb8  83f8ff                    CMP EAX,-0x1
00506ebb  7423                      JZ 0x00506ee0
00506ebd  51                        PUSH ECX
00506ebe  57                        PUSH EDI
00506ebf  50                        PUSH EAX
00506ec0  6a09                      PUSH 0x9
00506ec2  e849f24400                CALL 0x00956110
00506ec7  84c0                      TEST AL,AL
00506ec9  7415                      JZ 0x00506ee0
00506ecb  8b07                      MOV EAX,dword ptr [EDI]
00506ecd  8d8d58fdffff              LEA ECX,[EBP + 0xfffffd58]
00506ed3  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
00506ed6  e895edf2ff                CALL 0x00435c70
00506edb  50                        PUSH EAX
00506edc  8bcf                      MOV ECX,EDI
00506ede  ffd2                      CALL EDX
00506ee0  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00506ee7  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
00506eef  f30f1185b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM0
00506ef7  0f845b070000              JZ 0x00507658
00506efd  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00506f00  83f83d                    CMP EAX,0x3d
00506f03  0f8539050000              JNZ 0x00507442
00506f09  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
00506f0c  85c0                      TEST EAX,EAX
00506f0e  756c                      JNZ 0x00506f7c
00506f10  50                        PUSH EAX
00506f11  6800000001                PUSH 0x1000000
00506f16  8bcf                      MOV ECX,EDI
00506f18  e81305f1ff                CALL 0x00417430
00506f1d  84c0                      TEST AL,AL
00506f1f  0f8533070000              JNZ 0x00507658
00506f25  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
00506f2b  e80080f3ff                CALL 0x0043ef30
00506f30  8bc8                      MOV ECX,EAX
00506f32  e809131d00                CALL 0x006d8240
00506f37  85c0                      TEST EAX,EAX
00506f39  7e0a                      JLE 0x00506f45
00506f3b  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00506f43  eb08                      JMP 0x00506f4d
00506f45  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
00506f4d  51                        PUSH ECX
00506f4e  6a06                      PUSH 0x6
00506f50  8d8598fdffff              LEA EAX,[EBP + 0xfffffd98]
00506f56  f30f118598fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM0
00506f5e  50                        PUSH EAX
00506f5f  8d873c030000              LEA EAX,[EDI + 0x33c]
00506f65  c7859cfdffff00000000      MOV dword ptr [EBP + 0xfffffd9c],0x0
00506f6f  50                        PUSH EAX
00506f70  8bcf                      MOV ECX,EDI
00506f72  e869431c00                CALL 0x006cb2e0
00506f77  e9dc060000                JMP 0x00507658
00506f7c  83f801                    CMP EAX,0x1
00506f7f  0f851e010000              JNZ 0x005070a3
00506f85  6a00                      PUSH 0x0
00506f87  6800000001                PUSH 0x1000000
00506f8c  8bcf                      MOV ECX,EDI
00506f8e  e89d04f1ff                CALL 0x00417430
00506f93  84c0                      TEST AL,AL
00506f95  0f85bd060000              JNZ 0x00507658
00506f9b  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
00506fa1  e88a7ff3ff                CALL 0x0043ef30
00506fa6  8bcf                      MOV ECX,EDI
00506fa8  8bf0                      MOV ESI,EAX
00506faa  e891781b00                CALL 0x006be840
00506faf  56                        PUSH ESI
00506fb0  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
00506fb6  8b9040030000              MOV EDX,dword ptr [EAX + 0x340]
00506fbc  8d8598fdffff              LEA EAX,[EBP + 0xfffffd98]
00506fc2  51                        PUSH ECX
00506fc3  c7042400002041            MOV dword ptr [ESP],0x41200000
00506fca  50                        PUSH EAX
00506fcb  898d98fdffff              MOV dword ptr [EBP + 0xfffffd98],ECX
00506fd1  8bcf                      MOV ECX,EDI
00506fd3  6a01                      PUSH 0x1
00506fd5  89959cfdffff              MOV dword ptr [EBP + 0xfffffd9c],EDX
00506fdb  e8f05d1c00                CALL 0x006ccdd0
00506fe0  8bd0                      MOV EDX,EAX
00506fe2  f30f108218040000          MOVSS XMM0,dword ptr [EDX + 0x418]
00506fea  f30f5c05f8a1ba00          SUBSS XMM0,dword ptr [0x00baa1f8]
00506ff2  f30f108a60030000          MOVSS XMM1,dword ptr [EDX + 0x360]
00506ffa  f30f109264030000          MOVSS XMM2,dword ptr [EDX + 0x364]
00507002  8b8a3c040000              MOV ECX,dword ptr [EDX + 0x43c]
00507008  f30f590de4a2ba00          MULSS XMM1,dword ptr [0x00baa2e4]
00507010  838a3804000002            OR dword ptr [EDX + 0x438],0x2
00507017  f30f5915e4a2ba00          MULSS XMM2,dword ptr [0x00baa2e4]
0050701f  898a3c040000              MOV dword ptr [EDX + 0x43c],ECX
00507025  8d4dc0                    LEA ECX,[EBP + -0x40]
00507028  f30f118218040000          MOVSS dword ptr [EDX + 0x418],XMM0
00507030  f30f108214040000          MOVSS XMM0,dword ptr [EDX + 0x414]
00507038  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00507040  c78220040000cdcccc3f      MOV dword ptr [EDX + 0x420],0x3fcccccd
0050704a  f30f118a60030000          MOVSS dword ptr [EDX + 0x360],XMM1
00507052  f30f119264030000          MOVSS dword ptr [EDX + 0x364],XMM2
0050705a  f30f5c053ca8ba00          SUBSS XMM0,dword ptr [0x00baa83c]
00507062  f30f118214040000          MOVSS dword ptr [EDX + 0x414],XMM0
0050706a  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00507072  0f28d8                    MOVAPS XMM3,XMM0
00507075  0f28d0                    MOVAPS XMM2,XMM0
00507078  0f28c8                    MOVAPS XMM1,XMM0
0050707b  e800eaf2ff                CALL 0x00435a80
00507080  0f280500c5ba00            MOVAPS XMM0,xmmword ptr [0x00bac500]
00507087  6a01                      PUSH 0x1
00507089  6a00                      PUSH 0x0
0050708b  68ff000000                PUSH 0xff
00507090  0f1145d0                  MOVUPS xmmword ptr [EBP + -0x30],XMM0
00507094  8b02                      MOV EAX,dword ptr [EDX]
00507096  6aff                      PUSH -0x1
00507098  51                        PUSH ECX
00507099  8bca                      MOV ECX,EDX
0050709b  ff503c                    CALL dword ptr [EAX + 0x3c]
0050709e  e9b5050000                JMP 0x00507658
005070a3  83f802                    CMP EAX,0x2
005070a6  0f8532020000              JNZ 0x005072de
005070ac  6a00                      PUSH 0x0
005070ae  6800000001                PUSH 0x1000000
005070b3  8bcf                      MOV ECX,EDI
005070b5  e87603f1ff                CALL 0x00417430
005070ba  84c0                      TEST AL,AL
005070bc  0f8596050000              JNZ 0x00507658
005070c2  e8997e1e00                CALL 0x006eef60
005070c7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005070cd  8db73c030000              LEA ESI,[EDI + 0x33c]
005070d3  50                        PUSH EAX
005070d4  6a00                      PUSH 0x0
005070d6  57                        PUSH EDI
005070d7  6840b6c700                PUSH 0xc7b640
005070dc  56                        PUSH ESI
005070dd  6a6e                      PUSH 0x6e
005070df  68e8030000                PUSH 0x3e8
005070e4  e8371af2ff                CALL 0x00428b20
005070e9  8bc8                      MOV ECX,EAX
005070eb  8b10                      MOV EDX,dword ptr [EAX]
005070ed  c7804c03000000000000      MOV dword ptr [EAX + 0x34c],0x0
005070f7  c78050030000000070c1      MOV dword ptr [EAX + 0x350],0xc1700000
00507101  ff520c                    CALL dword ptr [EDX + 0xc]
00507104  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
0050710c  0f57db                    XORPS XMM3,XMM3
0050710f  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
00507117  51                        PUSH ECX
00507118  8d4dc0                    LEA ECX,[EBP + -0x40]
0050711b  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00507122  e8c9c7f1ff                CALL 0x004238f0
00507127  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0050712b  8d9598fdffff              LEA EDX,[EBP + 0xfffffd98]
00507131  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00507136  f30f58cb                  ADDSS XMM1,XMM3
0050713a  51                        PUSH ECX
0050713b  f30f58c3                  ADDSS XMM0,XMM3
0050713f  c7042400008040            MOV dword ptr [ESP],0x40800000
00507146  50                        PUSH EAX
00507147  51                        PUSH ECX
00507148  8d8db0fdffff              LEA ECX,[EBP + 0xfffffdb0]
0050714e  c78598fdffff0000803f      MOV dword ptr [EBP + 0xfffffd98],0x3f800000
00507158  c7859cfdffff00000000      MOV dword ptr [EBP + 0xfffffd9c],0x0
00507162  f30f118db0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM1
0050716a  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
00507172  e859481000                CALL 0x0060b9d0
00507177  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
0050717f  8d4dc0                    LEA ECX,[EBP + -0x40]
00507182  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
0050718a  83c408                    ADD ESP,0x8
0050718d  0f57db                    XORPS XMM3,XMM3
00507190  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00507197  e854c7f1ff                CALL 0x004238f0
0050719c  f30f100e                  MOVSS XMM1,dword ptr [ESI]
005071a0  8d9598fdffff              LEA EDX,[EBP + 0xfffffd98]
005071a6  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005071ab  f30f58cb                  ADDSS XMM1,XMM3
005071af  51                        PUSH ECX
005071b0  f30f58c3                  ADDSS XMM0,XMM3
005071b4  c7042400008040            MOV dword ptr [ESP],0x40800000
005071bb  50                        PUSH EAX
005071bc  51                        PUSH ECX
005071bd  8d8db0fdffff              LEA ECX,[EBP + 0xfffffdb0]
005071c3  c78598fdffff00000000      MOV dword ptr [EBP + 0xfffffd98],0x0
005071cd  c7859cfdffff0000803f      MOV dword ptr [EBP + 0xfffffd9c],0x3f800000
005071d7  f30f118db0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM1
005071df  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
005071e7  e8e4471000                CALL 0x0060b9d0
005071ec  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
005071f4  8d4dc0                    LEA ECX,[EBP + -0x40]
005071f7  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
005071ff  83c408                    ADD ESP,0x8
00507202  0f57db                    XORPS XMM3,XMM3
00507205  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0050720c  e8dfc6f1ff                CALL 0x004238f0
00507211  f30f100e                  MOVSS XMM1,dword ptr [ESI]
00507215  8d9598fdffff              LEA EDX,[EBP + 0xfffffd98]
0050721b  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00507220  f30f58cb                  ADDSS XMM1,XMM3
00507224  51                        PUSH ECX
00507225  f30f58c3                  ADDSS XMM0,XMM3
00507229  c7042400008040            MOV dword ptr [ESP],0x40800000
00507230  50                        PUSH EAX
00507231  51                        PUSH ECX
00507232  c78598fdffff000080bf      MOV dword ptr [EBP + 0xfffffd98],0xbf800000
0050723c  8d8db0fdffff              LEA ECX,[EBP + 0xfffffdb0]
00507242  c7859cfdffff00000000      MOV dword ptr [EBP + 0xfffffd9c],0x0
0050724c  f30f118db0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM1
00507254  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
0050725c  e86f471000                CALL 0x0060b9d0
00507261  f30f1015d0a0ba00          MOVSS XMM2,dword ptr [0x00baa0d0]
00507269  8d4dc0                    LEA ECX,[EBP + -0x40]
0050726c  f30f100d04a3ba00          MOVSS XMM1,dword ptr [0x00baa304]
00507274  83c408                    ADD ESP,0x8
00507277  0f57db                    XORPS XMM3,XMM3
0050727a  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
00507281  e86ac6f1ff                CALL 0x004238f0
00507286  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0050728a  8d9598fdffff              LEA EDX,[EBP + 0xfffffd98]
00507290  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00507295  f30f58cb                  ADDSS XMM1,XMM3
00507299  51                        PUSH ECX
0050729a  f30f58c3                  ADDSS XMM0,XMM3
0050729e  c7042400008040            MOV dword ptr [ESP],0x40800000
005072a5  50                        PUSH EAX
005072a6  51                        PUSH ECX
005072a7  8d8d88fdffff              LEA ECX,[EBP + 0xfffffd88]
005072ad  c78598fdffff00000000      MOV dword ptr [EBP + 0xfffffd98],0x0
005072b7  c7859cfdffff000080bf      MOV dword ptr [EBP + 0xfffffd9c],0xbf800000
005072c1  f30f118d88fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM1
005072c9  f30f11858cfdffff          MOVSS dword ptr [EBP + 0xfffffd8c],XMM0
005072d1  e8fa461000                CALL 0x0060b9d0
005072d6  83c40c                    ADD ESP,0xc
005072d9  e97a030000                JMP 0x00507658
005072de  83f803                    CMP EAX,0x3
005072e1  0f85d2000000              JNZ 0x005073b9
005072e7  6a00                      PUSH 0x0
005072e9  6800000001                PUSH 0x1000000
005072ee  8bcf                      MOV ECX,EDI
005072f0  e83b01f1ff                CALL 0x00417430
005072f5  84c0                      TEST AL,AL
005072f7  0f855b030000              JNZ 0x00507658
005072fd  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
00507303  e8287cf3ff                CALL 0x0043ef30
00507308  68544ec300                PUSH 0xc34e54
0050730d  8d8d44ffffff              LEA ECX,[EBP + 0xffffff44]
00507313  e8d8feefff                CALL 0x004071f0
00507318  e8230f1d00                CALL 0x006d8240
0050731d  85c0                      TEST EAX,EAX
0050731f  7e0a                      JLE 0x0050732b
00507321  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00507329  eb08                      JMP 0x00507333
0050732b  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
00507333  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
00507339  f30f118588fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM0
00507341  50                        PUSH EAX
00507342  6a07                      PUSH 0x7
00507344  8d8588fdffff              LEA EAX,[EBP + 0xfffffd88]
0050734a  c7858cfdffff00000000      MOV dword ptr [EBP + 0xfffffd8c],0x0
00507354  50                        PUSH EAX
00507355  8db73c030000              LEA ESI,[EDI + 0x33c]
0050735b  8bcf                      MOV ECX,EDI
0050735d  56                        PUSH ESI
0050735e  e87d3f1c00                CALL 0x006cb2e0
00507363  e8f87b1e00                CALL 0x006eef60
00507368  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050736e  50                        PUSH EAX
0050736f  6a00                      PUSH 0x0
00507371  6a00                      PUSH 0x0
00507373  6840b6c700                PUSH 0xc7b640
00507378  56                        PUSH ESI
00507379  6a1a                      PUSH 0x1a
0050737b  68e8030000                PUSH 0x3e8
00507380  e89b17f2ff                CALL 0x00428b20
00507385  8bc8                      MOV ECX,EAX
00507387  8b10                      MOV EDX,dword ptr [EAX]
00507389  c780e400000000008040      MOV dword ptr [EAX + 0xe4],0x40800000
00507393  c780e800000000008040      MOV dword ptr [EAX + 0xe8],0x40800000
0050739d  c7805c040000c2010000      MOV dword ptr [EAX + 0x45c],0x1c2
005073a7  c78060040000c2010000      MOV dword ptr [EAX + 0x460],0x1c2
005073b1  ff520c                    CALL dword ptr [EDX + 0xc]
005073b4  e99f020000                JMP 0x00507658
005073b9  83f807                    CMP EAX,0x7
005073bc  0f8596020000              JNZ 0x00507658
005073c2  6a00                      PUSH 0x0
005073c4  6800000001                PUSH 0x1000000
005073c9  8bcf                      MOV ECX,EDI
005073cb  e86000f1ff                CALL 0x00417430
005073d0  84c0                      TEST AL,AL
005073d2  0f8580020000              JNZ 0x00507658
005073d8  8d8d18ffffff              LEA ECX,[EBP + 0xffffff18]
005073de  e84d7bf3ff                CALL 0x0043ef30
005073e3  8d8518ffffff              LEA EAX,[EBP + 0xffffff18]
005073e9  c7852cffffff6666e63f      MOV dword ptr [EBP + 0xffffff2c],0x3fe66666
005073f3  50                        PUSH EAX
005073f4  6a09                      PUSH 0x9
005073f6  8d8588fdffff              LEA EAX,[EBP + 0xfffffd88]
005073fc  c78570ffffff00000000      MOV dword ptr [EBP + 0xffffff70],0x0
00507406  50                        PUSH EAX
00507407  8d873c030000              LEA EAX,[EDI + 0x33c]
0050740d  c78574ffffff40000000      MOV dword ptr [EBP + 0xffffff74],0x40
00507417  50                        PUSH EAX
00507418  8bcf                      MOV ECX,EDI
0050741a  c78530ffffff00000000      MOV dword ptr [EBP + 0xffffff30],0x0
00507424  c78588fdffff00000041      MOV dword ptr [EBP + 0xfffffd88],0x41000000
0050742e  c7858cfdffff0000c040      MOV dword ptr [EBP + 0xfffffd8c],0x40c00000
00507438  e8a33e1c00                CALL 0x006cb2e0
0050743d  e916020000                JMP 0x00507658
00507442  83f850                    CMP EAX,0x50
00507445  0f850d020000              JNZ 0x00507658
0050744b  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
00507453  0f2f05ecadba00            COMISS XMM0,dword ptr [0x00baadec]
0050745a  0f86f8010000              JBE 0x00507658
00507460  80bdc7fdffff00            CMP byte ptr [EBP + 0xfffffdc7],0x0
00507467  0f85eb010000              JNZ 0x00507658
0050746d  8bcf                      MOV ECX,EDI
0050746f  e8cc731b00                CALL 0x006be840
00507474  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0050747c  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00507484  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0050748c  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
00507494  0f28c1                    MOVAPS XMM0,XMM1
00507497  f30f118dbcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM1
0050749f  f30f59c1                  MULSS XMM0,XMM1
005074a3  0f28ca                    MOVAPS XMM1,XMM2
005074a6  f30f1195c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM2
005074ae  f30f59ca                  MULSS XMM1,XMM2
005074b2  f30f58c1                  ADDSS XMM0,XMM1
005074b6  e895e5f2ff                CALL 0x00435a50
005074bb  0f28d0                    MOVAPS XMM2,XMM0
005074be  0f2f15e49fba00            COMISS XMM2,dword ptr [0x00ba9fe4]
005074c5  7629                      JBE 0x005074f0
005074c7  f30f1085bcfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdbc]
005074cf  f30f5ec2                  DIVSS XMM0,XMM2
005074d3  f30f108dc0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdc0]
005074db  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
005074e3  f30f5eca                  DIVSS XMM1,XMM2
005074e7  0f570570cbba00            XORPS XMM0,xmmword ptr [0x00bacb70]
005074ee  eb20                      JMP 0x00507510
005074f0  8d85a0fdffff              LEA EAX,[EBP + 0xfffffda0]
005074f6  50                        PUSH EAX
005074f7  e8747b1700                CALL 0x0067f070
005074fc  83c404                    ADD ESP,0x4
005074ff  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00507503  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0050750b  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00507510  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00507518  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
00507520  f30f1185bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM0
00507528  f30f118db4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM1
00507530  f30f118dc0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM1
00507538  e8237a1e00                CALL 0x006eef60
0050753d  f30f108dbcfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdbc]
00507545  f30f1085c0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdc0]
0050754d  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
00507555  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
0050755d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00507563  50                        PUSH EAX
00507564  6a00                      PUSH 0x0
00507566  57                        PUSH EDI
00507567  8d85b0fdffff              LEA EAX,[EBP + 0xfffffdb0]
0050756d  f30f118d88fdffff          MOVSS dword ptr [EBP + 0xfffffd88],XMM1
00507575  50                        PUSH EAX
00507576  8d8588fdffff              LEA EAX,[EBP + 0xfffffd88]
0050757c  f30f11858cfdffff          MOVSS dword ptr [EBP + 0xfffffd8c],XMM0
00507584  50                        PUSH EAX
00507585  6a00                      PUSH 0x0
00507587  6a12                      PUSH 0x12
00507589  e89215f2ff                CALL 0x00428b20
0050758e  8bf8                      MOV EDI,EAX
00507590  e8cb791e00                CALL 0x006eef60
00507595  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0050759d  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005075a5  f30f5c8dbcfdffff          SUBSS XMM1,dword ptr [EBP + 0xfffffdbc]
005075ad  f30f5c85c0fdffff          SUBSS XMM0,dword ptr [EBP + 0xfffffdc0]
005075b5  8b8dacfdffff              MOV ECX,dword ptr [EBP + 0xfffffdac]
005075bb  50                        PUSH EAX
005075bc  6a00                      PUSH 0x0
005075be  51                        PUSH ECX
005075bf  f30f118d98fdffff          MOVSS dword ptr [EBP + 0xfffffd98],XMM1
005075c7  8d8598fdffff              LEA EAX,[EBP + 0xfffffd98]
005075cd  f30f10893c030000          MOVSS XMM1,dword ptr [ECX + 0x33c]
005075d5  f30f5c8dbcfdffff          SUBSS XMM1,dword ptr [EBP + 0xfffffdbc]
005075dd  50                        PUSH EAX
005075de  f30f11859cfdffff          MOVSS dword ptr [EBP + 0xfffffd9c],XMM0
005075e6  8d85b0fdffff              LEA EAX,[EBP + 0xfffffdb0]
005075ec  f30f108140030000          MOVSS XMM0,dword ptr [ECX + 0x340]
005075f4  f30f5c85c0fdffff          SUBSS XMM0,dword ptr [EBP + 0xfffffdc0]
005075fc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00507602  50                        PUSH EAX
00507603  6a00                      PUSH 0x0
00507605  6a12                      PUSH 0x12
00507607  f30f118db0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM1
0050760f  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
00507617  e80415f2ff                CALL 0x00428b20
0050761c  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00507622  8bf0                      MOV ESI,EAX
00507624  83a768010000fb            AND dword ptr [EDI + 0x168],0xfffffffb
0050762b  898f6c010000              MOV dword ptr [EDI + 0x16c],ECX
00507631  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
00507637  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0050763e  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
00507644  8bcf                      MOV ECX,EDI
00507646  8b17                      MOV EDX,dword ptr [EDI]
00507648  ff520c                    CALL dword ptr [EDX + 0xc]
0050764b  8b06                      MOV EAX,dword ptr [ESI]
0050764d  8bce                      MOV ECX,ESI
0050764f  ff500c                    CALL dword ptr [EAX + 0xc]
00507652  8bbdacfdffff              MOV EDI,dword ptr [EBP + 0xfffffdac]
00507658  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
0050765e  85d2                      TEST EDX,EDX
00507660  7e46                      JLE 0x005076a8
00507662  f30f108f84030000          MOVSS XMM1,dword ptr [EDI + 0x384]
0050766a  8d8f84030000              LEA ECX,[EDI + 0x384]
00507670  0f28c1                    MOVAPS XMM0,XMM1
00507673  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
00507679  f30f5e0550a9ba00          DIVSS XMM0,dword ptr [0x00baa950]
00507681  f30f588780030000          ADDSS XMM0,dword ptr [EDI + 0x380]
00507689  0f2fc8                    COMISS XMM1,XMM0
0050768c  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
00507694  0f46c1                    CMOVBE EAX,ECX
00507697  8b00                      MOV EAX,dword ptr [EAX]
00507699  898780030000              MOV dword ptr [EDI + 0x380],EAX
0050769f  8d42ff                    LEA EAX,[EDX + -0x1]
005076a2  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
005076a8  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
005076af  0f84c7000000              JZ 0x0050777c
005076b5  817f2833030000            CMP dword ptr [EDI + 0x28],0x333
005076bc  0f85ba000000              JNZ 0x0050777c
005076c2  e899781e00                CALL 0x006eef60
005076c7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005076cd  50                        PUSH EAX
005076ce  6a00                      PUSH 0x0
005076d0  57                        PUSH EDI
005076d1  8d8760030000              LEA EAX,[EDI + 0x360]
005076d7  50                        PUSH EAX
005076d8  8d873c030000              LEA EAX,[EDI + 0x33c]
005076de  50                        PUSH EAX
005076df  6a0e                      PUSH 0xe
005076e1  6a04                      PUSH 0x4
005076e3  e83814f2ff                CALL 0x00428b20
005076e8  8bf0                      MOV ESI,EAX
005076ea  6a00                      PUSH 0x0
005076ec  6898d5b100                PUSH 0xb1d598
005076f1  8d4e48                    LEA ECX,[ESI + 0x48]
005076f4  e8872cf0ff                CALL 0x0040a380
005076f9  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
005076fd  7410                      JZ 0x0050770f
005076ff  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
00507707  8d4e78                    LEA ECX,[ESI + 0x78]
0050770a  e8f116f0ff                CALL 0x00408e00
0050770f  8b96bc030000              MOV EDX,dword ptr [ESI + 0x3bc]
00507715  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0050771b  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
00507721  898dbcfdffff              MOV dword ptr [EBP + 0xfffffdbc],ECX
00507727  85d2                      TEST EDX,EDX
00507729  7424                      JZ 0x0050774f
0050772b  8985c0fdffff              MOV dword ptr [EBP + 0xfffffdc0],EAX
00507731  8d8acc030000              LEA ECX,[EDX + 0x3cc]
00507737  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
0050773d  50                        PUSH EAX
0050773e  e8cd7afcff                CALL 0x004cf210
00507743  8b8dbcfdffff              MOV ECX,dword ptr [EBP + 0xfffffdbc]
00507749  8d86bc030000              LEA EAX,[ESI + 0x3bc]
0050774f  8908                      MOV dword ptr [EAX],ECX
00507751  85c9                      TEST ECX,ECX
00507753  7406                      JZ 0x0050775b
00507755  50                        PUSH EAX
00507756  e89565fcff                CALL 0x004cdcf0
0050775b  e800781e00                CALL 0x006eef60
00507760  33d2                      XOR EDX,EDX
00507762  b90f000000                MOV ECX,0xf
00507767  f7f1                      DIV ECX
00507769  b83c000000                MOV EAX,0x3c
0050776e  2bc2                      SUB EAX,EDX
00507770  898610040000              MOV dword ptr [ESI + 0x410],EAX
00507776  898614040000              MOV dword ptr [ESI + 0x414],EAX
0050777c  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050777f  83f80d                    CMP EAX,0xd
00507782  0f84a4000000              JZ 0x0050782c
00507788  83f850                    CMP EAX,0x50
0050778b  0f849b000000              JZ 0x0050782c
00507791  83f83d                    CMP EAX,0x3d
00507794  0f8492000000              JZ 0x0050782c
0050779a  83f812                    CMP EAX,0x12
0050779d  0f8489000000              JZ 0x0050782c
005077a3  83f80e                    CMP EAX,0xe
005077a6  754a                      JNZ 0x005077f2
005077a8  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005077ae  83f804                    CMP EAX,0x4
005077b1  7714                      JA 0x005077c7
005077b3  6a00                      PUSH 0x0
005077b5  8d4f48                    LEA ECX,[EDI + 0x48]
005077b8  6804deb100                PUSH 0xb1de04
005077bd  e8be2bf0ff                CALL 0x0040a380
005077c2  e9f0000000                JMP 0x005078b7
005077c7  83f808                    CMP EAX,0x8
005077ca  0f85e7000000              JNZ 0x005078b7
005077d0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
005077d4  740d                      JZ 0x005077e3
005077d6  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
005077dd  0f85d4000000              JNZ 0x005078b7
005077e3  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
005077ed  e9c5000000                JMP 0x005078b7
005077f2  3dd6000000                CMP EAX,0xd6
005077f7  741f                      JZ 0x00507818
005077f9  3df9000000                CMP EAX,0xf9
005077fe  7418                      JZ 0x00507818
00507800  3d33030000                CMP EAX,0x333
00507805  0f85ac000000              JNZ 0x005078b7
0050780b  83bf640b000003            CMP dword ptr [EDI + 0xb64],0x3
00507812  0f859f000000              JNZ 0x005078b7
00507818  6a00                      PUSH 0x0
0050781a  8d4f48                    LEA ECX,[EDI + 0x48]
0050781d  6854bcb100                PUSH 0xb1bc54
00507822  e8592bf0ff                CALL 0x0040a380
00507827  e98b000000                JMP 0x005078b7
0050782c  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0050782f  85f6                      TEST ESI,ESI
00507831  744a                      JZ 0x0050787d
00507833  837e1410                  CMP dword ptr [ESI + 0x14],0x10
00507837  8bc6                      MOV EAX,ESI
00507839  7202                      JC 0x0050783d
0050783b  8b06                      MOV EAX,dword ptr [ESI]
0050783d  b904deb100                MOV ECX,0xb1de04
00507842  8a10                      MOV DL,byte ptr [EAX]
00507844  3a11                      CMP DL,byte ptr [ECX]
00507846  751a                      JNZ 0x00507862
00507848  84d2                      TEST DL,DL
0050784a  7412                      JZ 0x0050785e
0050784c  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0050784f  3a5101                    CMP DL,byte ptr [ECX + 0x1]
00507852  750e                      JNZ 0x00507862
00507854  83c002                    ADD EAX,0x2
00507857  83c102                    ADD ECX,0x2
0050785a  84d2                      TEST DL,DL
0050785c  75e4                      JNZ 0x00507842
0050785e  33c0                      XOR EAX,EAX
00507860  eb05                      JMP 0x00507867
00507862  1bc0                      SBB EAX,EAX
00507864  83c801                    OR EAX,0x1
00507867  85c0                      TEST EAX,EAX
00507869  7512                      JNZ 0x0050787d
0050786b  384634                    CMP byte ptr [ESI + 0x34],AL
0050786e  742e                      JZ 0x0050789e
00507870  38878c000000              CMP byte ptr [EDI + 0x8c],AL
00507876  8d7748                    LEA ESI,[EDI + 0x48]
00507879  7523                      JNZ 0x0050789e
0050787b  eb03                      JMP 0x00507880
0050787d  8d7748                    LEA ESI,[EDI + 0x48]
00507880  6a01                      PUSH 0x1
00507882  6804deb100                PUSH 0xb1de04
00507887  8bce                      MOV ECX,ESI
00507889  e8422df0ff                CALL 0x0040a5d0
0050788e  84c0                      TEST AL,AL
00507890  740c                      JZ 0x0050789e
00507892  8d4e30                    LEA ECX,[ESI + 0x30]
00507895  e81629f0ff                CALL 0x0040a1b0
0050789a  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0050789e  837f283d                  CMP dword ptr [EDI + 0x28],0x3d
005078a2  7513                      JNZ 0x005078b7
005078a4  0f57c0                    XORPS XMM0,XMM0
005078a7  0f2f8760030000            COMISS XMM0,dword ptr [EDI + 0x360]
005078ae  0f97c0                    SETA AL
005078b1  888748010000              MOV byte ptr [EDI + 0x148],AL
005078b7  837f280d                  CMP dword ptr [EDI + 0x28],0xd
005078bb  0f8587000000              JNZ 0x00507948
005078c1  e89a761e00                CALL 0x006eef60
005078c6  33d2                      XOR EDX,EDX
005078c8  b9e8030000                MOV ECX,0x3e8
005078cd  f7f1                      DIV ECX
005078cf  85d2                      TEST EDX,EDX
005078d1  7575                      JNZ 0x00507948
005078d3  a17816c700                MOV EAX,[0x00c71678]
005078d8  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
005078de  8d873c030000              LEA EAX,[EDI + 0x33c]
005078e4  50                        PUSH EAX
005078e5  8bce                      MOV ECX,ESI
005078e7  e8a4b33000                CALL 0x00812c90
005078ec  85c0                      TEST EAX,EAX
005078ee  7858                      JS 0x00507948
005078f0  3dc0010000                CMP EAX,0x1c0
005078f5  7d51                      JGE 0x00507948
005078f7  8b448624                  MOV EAX,dword ptr [ESI + EAX*0x4 + 0x24]
005078fb  8985c0fdffff              MOV dword ptr [EBP + 0xfffffdc0],EAX
00507901  85c0                      TEST EAX,EAX
00507903  7443                      JZ 0x00507948
00507905  8378040e                  CMP dword ptr [EAX + 0x4],0xe
00507909  753d                      JNZ 0x00507948
0050790b  8b00                      MOV EAX,dword ptr [EAX]
0050790d  8d8d14fdffff              LEA ECX,[EBP + 0xfffffd14]
00507913  57                        PUSH EDI
00507914  8b7010                    MOV ESI,dword ptr [EAX + 0x10]
00507917  e8f499f2ff                CALL 0x00431310
0050791c  8b8dc0fdffff              MOV ECX,dword ptr [EBP + 0xfffffdc0]
00507922  8d8514fdffff              LEA EAX,[EBP + 0xfffffd14]
00507928  50                        PUSH EAX
00507929  6a01                      PUSH 0x1
0050792b  ffd6                      CALL ESI
0050792d  6aff                      PUSH -0x1
0050792f  6a00                      PUSH 0x0
00507931  6a00                      PUSH 0x0
00507933  6a0e                      PUSH 0xe
00507935  8bcf                      MOV ECX,EDI
00507937  e8f4951b00                CALL 0x006c0f30
0050793c  8b8784030000              MOV EAX,dword ptr [EDI + 0x384]
00507942  898780030000              MOV dword ptr [EDI + 0x380],EAX
00507948  837f280e                  CMP dword ptr [EDI + 0x28],0xe
0050794c  0f8560030000              JNZ 0x00507cb2
00507952  80bdc7fdffff00            CMP byte ptr [EBP + 0xfffffdc7],0x0
00507959  0f8553030000              JNZ 0x00507cb2
0050795f  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
00507966  0f8f90000000              JG 0x005079fc
0050796c  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
00507974  8bcf                      MOV ECX,EDI
00507976  6a07                      PUSH 0x7
00507978  6a00                      PUSH 0x0
0050797a  e8e1341c00                CALL 0x006cae60
0050797f  84c0                      TEST AL,AL
00507981  7479                      JZ 0x005079fc
00507983  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
00507987  b93f000000                MOV ECX,0x3f
0050798c  b823000000                MOV EAX,0x23
00507991  0f44c1                    CMOVZ EAX,ECX
00507994  8d4f48                    LEA ECX,[EDI + 0x48]
00507997  6a00                      PUSH 0x0
00507999  6854ddb100                PUSH 0xb1dd54
0050799e  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
005079a4  e8d729f0ff                CALL 0x0040a380
005079a9  6a01                      PUSH 0x1
005079ab  8bcf                      MOV ECX,EDI
005079ad  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
005079b7  e894161d00                CALL 0x006d9050
005079bc  8d8f200f0000              LEA ECX,[EDI + 0xf20]
005079c2  6840b6c700                PUSH 0xc7b640
005079c7  e8348c5000                CALL 0x00a10600
005079cc  84c0                      TEST AL,AL
005079ce  7419                      JZ 0x005079e9
005079d0  8bcf                      MOV ECX,EDI
005079d2  e8696e1b00                CALL 0x006be840
005079d7  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
005079df  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
005079e7  eb04                      JMP 0x005079ed
005079e9  f30f1001                  MOVSS XMM0,dword ptr [ECX]
005079ed  0f57c9                    XORPS XMM1,XMM1
005079f0  0f2fc8                    COMISS XMM1,XMM0
005079f3  0f97c0                    SETA AL
005079f6  888748010000              MOV byte ptr [EDI + 0x148],AL
005079fc  83bf640b000008            CMP dword ptr [EDI + 0xb64],0x8
00507a03  0f853d020000              JNZ 0x00507c46
00507a09  6a00                      PUSH 0x0
00507a0b  8bcf                      MOV ECX,EDI
00507a0d  e83e161d00                CALL 0x006d9050
00507a12  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00507a16  0f842a020000              JZ 0x00507c46
00507a1c  68dcd2b100                PUSH 0xb1d2dc
00507a21  8d4f78                    LEA ECX,[EDI + 0x78]
00507a24  e8a733f0ff                CALL 0x0040add0
00507a29  84c0                      TEST AL,AL
00507a2b  0f8415020000              JZ 0x00507c46
00507a31  8d8f200f0000              LEA ECX,[EDI + 0xf20]
00507a37  6840b6c700                PUSH 0xc7b640
00507a3c  8db73c030000              LEA ESI,[EDI + 0x33c]
00507a42  e8b98b5000                CALL 0x00a10600
00507a47  84c0                      TEST AL,AL
00507a49  7432                      JZ 0x00507a7d
00507a4b  8bcf                      MOV ECX,EDI
00507a4d  e8ee6d1b00                CALL 0x006be840
00507a52  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00507a5a  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00507a62  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00507a66  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00507a6b  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
00507a73  f30f118d94fdffff          MOVSS dword ptr [EBP + 0xfffffd94],XMM1
00507a7b  eb11                      JMP 0x00507a8e
00507a7d  8b01                      MOV EAX,dword ptr [ECX]
00507a7f  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
00507a82  898590fdffff              MOV dword ptr [EBP + 0xfffffd90],EAX
00507a88  898d94fdffff              MOV dword ptr [EBP + 0xfffffd94],ECX
00507a8e  8b4f2c                    MOV ECX,dword ptr [EDI + 0x2c]
00507a91  8d8590fdffff              LEA EAX,[EBP + 0xfffffd90]
00507a97  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00507a9b  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00507aa0  89b5c0fdffff              MOV dword ptr [EBP + 0xfffffdc0],ESI
00507aa6  8985bcfdffff              MOV dword ptr [EBP + 0xfffffdbc],EAX
00507aac  f30f1195b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM2
00507ab4  f30f118db4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM1
00507abc  83f902                    CMP ECX,0x2
00507abf  0f85c2000000              JNZ 0x00507b87
00507ac5  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
00507acb  e86074f3ff                CALL 0x0043ef30
00507ad0  f30f108db0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb0]
00507ad8  f30f1085b4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb4]
00507ae0  f30f59c0                  MULSS XMM0,XMM0
00507ae4  c78584feffff3333b33f      MOV dword ptr [EBP + 0xfffffe84],0x3fb33333
00507aee  f30f59c9                  MULSS XMM1,XMM1
00507af2  c7857cfeffff9a9919be      MOV dword ptr [EBP + 0xfffffe7c],0xbe19999a
00507afc  c78578feffff0000803f      MOV dword ptr [EBP + 0xfffffe78],0x3f800000
00507b06  c78598feffff9a99993f      MOV dword ptr [EBP + 0xfffffe98],0x3f99999a
00507b10  f30f58c1                  ADDSS XMM0,XMM1
00507b14  c785c8feffff00000000      MOV dword ptr [EBP + 0xfffffec8],0x0
00507b1e  c785ccfeffff00004000      MOV dword ptr [EBP + 0xfffffecc],0x400000
00507b28  c68508ffffff01            MOV byte ptr [EBP + 0xffffff08],0x1
00507b2f  e81cdff2ff                CALL 0x00435a50
00507b34  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00507b3b  762f                      JBE 0x00507b6c
00507b3d  f30f100db8a7ba00          MOVSS XMM1,dword ptr [0x00baa7b8]
00507b45  f30f5ec8                  DIVSS XMM1,XMM0
00507b49  0f28c1                    MOVAPS XMM0,XMM1
00507b4c  f30f598db4fdffff          MULSS XMM1,dword ptr [EBP + 0xfffffdb4]
00507b54  f30f5985b0fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdb0]
00507b5c  f30f118db4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM1
00507b64  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
00507b6c  8d8570feffff              LEA EAX,[EBP + 0xfffffe70]
00507b72  50                        PUSH EAX
00507b73  6a04                      PUSH 0x4
00507b75  8d85b0fdffff              LEA EAX,[EBP + 0xfffffdb0]
00507b7b  50                        PUSH EAX
00507b7c  ffb5c0fdffff              PUSH dword ptr [EBP + 0xfffffdc0]
00507b82  e998000000                JMP 0x00507c1f
00507b87  e8b4061d00                CALL 0x006d8240
00507b8c  85c0                      TEST EAX,EAX
00507b8e  7e0f                      JLE 0x00507b9f
00507b90  83f901                    CMP ECX,0x1
00507b93  741a                      JZ 0x00507baf
00507b95  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00507b9d  eb08                      JMP 0x00507ba7
00507b9f  f30f1005b8a7ba00          MOVSS XMM0,dword ptr [0x00baa7b8]
00507ba7  f30f1185b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM0
00507baf  0f28c1                    MOVAPS XMM0,XMM1
00507bb2  f30f59c1                  MULSS XMM0,XMM1
00507bb6  0f28ca                    MOVAPS XMM1,XMM2
00507bb9  f30f59ca                  MULSS XMM1,XMM2
00507bbd  f30f58c1                  ADDSS XMM0,XMM1
00507bc1  e88adef2ff                CALL 0x00435a50
00507bc6  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00507bcd  7632                      JBE 0x00507c01
00507bcf  f30f108db8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb8]
00507bd7  f30f5ec8                  DIVSS XMM1,XMM0
00507bdb  8b85bcfdffff              MOV EAX,dword ptr [EBP + 0xfffffdbc]
00507be1  0f28c1                    MOVAPS XMM0,XMM1
00507be4  f30f5900                  MULSS XMM0,dword ptr [EAX]
00507be8  f30f1185b0fdffff          MOVSS dword ptr [EBP + 0xfffffdb0],XMM0
00507bf0  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00507bf5  f30f59c1                  MULSS XMM0,XMM1
00507bf9  f30f1185b4fdffff          MOVSS dword ptr [EBP + 0xfffffdb4],XMM0
00507c01  8d8d70feffff              LEA ECX,[EBP + 0xfffffe70]
00507c07  e82473f3ff                CALL 0x0043ef30
00507c0c  33c9                      XOR ECX,ECX
00507c0e  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00507c12  50                        PUSH EAX
00507c13  0f94c1                    SETZ CL
00507c16  8d85b0fdffff              LEA EAX,[EBP + 0xfffffdb0]
00507c1c  51                        PUSH ECX
00507c1d  50                        PUSH EAX
00507c1e  56                        PUSH ESI
00507c1f  8bcf                      MOV ECX,EDI
00507c21  e8ba361c00                CALL 0x006cb2e0
00507c26  51                        PUSH ECX
00507c27  c704240000803f            MOV dword ptr [ESP],0x3f800000
00507c2e  6a00                      PUSH 0x0
00507c30  6a02                      PUSH 0x2
00507c32  51                        PUSH ECX
00507c33  c704240000803f            MOV dword ptr [ESP],0x3f800000
00507c3a  8bcf                      MOV ECX,EDI
00507c3c  68b2000000                PUSH 0xb2
00507c41  e85aef1c00                CALL 0x006d6ba0
00507c46  8b97a00b0000              MOV EDX,dword ptr [EDI + 0xba0]
00507c4c  85d2                      TEST EDX,EDX
00507c4e  7e62                      JLE 0x00507cb2
00507c50  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00507c58  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00507c60  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
00507c68  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
00507c70  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00507c78  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00507c80  2bc8                      SUB ECX,EAX
00507c82  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00507c8a  2bd1                      SUB EDX,ECX
00507c8c  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
00507c92  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00507c9a  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
00507ca2  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00507caa  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00507cb2  8b4734                    MOV EAX,dword ptr [EDI + 0x34]
00507cb5  83f866                    CMP EAX,0x66
00507cb8  7512                      JNZ 0x00507ccc
00507cba  837f3000                  CMP dword ptr [EDI + 0x30],0x0
00507cbe  741f                      JZ 0x00507cdf
00507cc0  8bcf                      MOV ECX,EDI
00507cc2  e809ecf4ff                CALL 0x004568d0
00507cc7  e9da070000                JMP 0x005084a6
00507ccc  3d69030000                CMP EAX,0x369
00507cd1  750c                      JNZ 0x00507cdf
00507cd3  8bcf                      MOV ECX,EDI
00507cd5  e8a6980500                CALL 0x00561580
00507cda  e938120000                JMP 0x00508f17
00507cdf  8b7728                    MOV ESI,dword ptr [EDI + 0x28]
00507ce2  81fe33030000              CMP ESI,0x333
00507ce8  0f85c6030000              JNZ 0x005080b4
00507cee  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
00507cf4  83f803                    CMP EAX,0x3
00507cf7  0f840c020000              JZ 0x00507f09
00507cfd  83f810                    CMP EAX,0x10
00507d00  0f85a0070000              JNZ 0x005084a6
00507d06  83bf10040000ff            CMP dword ptr [EDI + 0x410],-0x1
00507d0d  753a                      JNZ 0x00507d49
00507d0f  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00507d17  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
00507d1f  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00507d27  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00507d2b  740d                      JZ 0x00507d3a
00507d2d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00507d34  0f85dd110000              JNZ 0x00508f17
00507d3a  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00507d44  e9ce110000                JMP 0x00508f17
00507d49  f30f100524a9ba00          MOVSS XMM0,dword ptr [0x00baa924]
00507d51  0f2f877c030000            COMISS XMM0,dword ptr [EDI + 0x37c]
00507d58  0f8681000000              JBE 0x00507ddf
00507d5e  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
00507d66  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
00507d6e  0f28c1                    MOVAPS XMM0,XMM1
00507d71  f30f59c1                  MULSS XMM0,XMM1
00507d75  f30f118dacfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM1
00507d7d  0f28ca                    MOVAPS XMM1,XMM2
00507d80  f30f59ca                  MULSS XMM1,XMM2
00507d84  f30f1195b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM2
00507d8c  f30f58c1                  ADDSS XMM0,XMM1
00507d90  e8bbdcf2ff                CALL 0x00435a50
00507d95  0f28c8                    MOVAPS XMM1,XMM0
00507d98  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
00507d9f  7634                      JBE 0x00507dd5
00507da1  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
00507da9  f30f5ec1                  DIVSS XMM0,XMM1
00507dad  f30f108dacfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdac]
00507db5  f30f59c8                  MULSS XMM1,XMM0
00507db9  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00507dc1  f30f108db8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb8]
00507dc9  f30f59c8                  MULSS XMM1,XMM0
00507dcd  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00507dd5  c7877c03000000004842      MOV dword ptr [EDI + 0x37c],0x42480000
00507ddf  6a00                      PUSH 0x0
00507de1  68200db600                PUSH 0xb60d20
00507de6  8d4f48                    LEA ECX,[EDI + 0x48]
00507de9  e89225f0ff                CALL 0x0040a380
00507dee  ff8710040000              INC dword ptr [EDI + 0x410]
00507df4  83bf100400002d            CMP dword ptr [EDI + 0x410],0x2d
00507dfb  7f2e                      JG 0x00507e2b
00507dfd  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00507e05  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00507e0d  f30f59c0                  MULSS XMM0,XMM0
00507e11  f30f59c9                  MULSS XMM1,XMM1
00507e15  f30f58c1                  ADDSS XMM0,XMM1
00507e19  e832dcf2ff                CALL 0x00435a50
00507e1e  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
00507e26  0f2fc8                    COMISS XMM1,XMM0
00507e29  7628                      JBE 0x00507e53
00507e2b  6a00                      PUSH 0x0
00507e2d  68180db600                PUSH 0xb60d18
00507e32  8d4f48                    LEA ECX,[EDI + 0x48]
00507e35  e84625f0ff                CALL 0x0040a380
00507e3a  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
00507e40  c78710040000ffffffff      MOV dword ptr [EDI + 0x410],0xffffffff
00507e4a  8b4044                    MOV EAX,dword ptr [EAX + 0x44]
00507e4d  89877c030000              MOV dword ptr [EDI + 0x37c],EAX
00507e53  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00507e5a  0f84b7100000              JZ 0x00508f17
00507e60  f30f10af98010000          MOVSS XMM5,dword ptr [EDI + 0x198]
00507e68  8d8dacfdffff              LEA ECX,[EBP + 0xfffffdac]
00507e6e  f30f109f94010000          MOVSS XMM3,dword ptr [EDI + 0x194]
00507e76  0f28cd                    MOVAPS XMM1,XMM5
00507e79  f30f10979c010000          MOVSS XMM2,dword ptr [EDI + 0x19c]
00507e81  0f28c3                    MOVAPS XMM0,XMM3
00507e84  f30f10a7a0010000          MOVSS XMM4,dword ptr [EDI + 0x1a0]
00507e8c  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00507e92  f30f59cc                  MULSS XMM1,XMM4
00507e96  f30f58e4                  ADDSS XMM4,XMM4
00507e9a  c785acfdffff28000000      MOV dword ptr [EBP + 0xfffffdac],0x28
00507ea4  f30f59c2                  MULSS XMM0,XMM2
00507ea8  f30f58d2                  ADDSS XMM2,XMM2
00507eac  f30f58c8                  ADDSS XMM1,XMM0
00507eb0  f30f59d1                  MULSS XMM2,XMM1
00507eb4  f30f59e1                  MULSS XMM4,XMM1
00507eb8  f30f5cda                  SUBSS XMM3,XMM2
00507ebc  f30f5cec                  SUBSS XMM5,XMM4
00507ec0  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
00507ec8  f30f11af64030000          MOVSS dword ptr [EDI + 0x364],XMM5
00507ed0  e8abe84400                CALL 0x00956780
00507ed5  83ec08                    SUB ESP,0x8
00507ed8  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00507ee0  c704240000803f            MOV dword ptr [ESP],0x3f800000
00507ee7  6a00                      PUSH 0x0
00507ee9  6a02                      PUSH 0x2
00507eeb  51                        PUSH ECX
00507eec  c704240000803f            MOV dword ptr [ESP],0x3f800000
00507ef3  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00507ef9  ffb5acfdffff              PUSH dword ptr [EBP + 0xfffffdac]
00507eff  e82c5d4200                CALL 0x0092dc30
00507f04  e90e100000                JMP 0x00508f17
00507f09  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
00507f0d  0f85a1010000              JNZ 0x005080b4
00507f13  8bb7bc030000              MOV ESI,dword ptr [EDI + 0x3bc]
00507f19  c687b003000001            MOV byte ptr [EDI + 0x3b0],0x1
00507f20  85f6                      TEST ESI,ESI
00507f22  0f84ac000000              JZ 0x00507fd4
00507f28  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00507f30  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
00507f38  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
00507f40  e8fba71700                CALL 0x00682740
00507f45  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00507f4d  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00507f55  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
00507f5d  e8de55f1ff                CALL 0x0041d540
00507f62  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00507f6a  f30f58863c030000          ADDSS XMM0,dword ptr [ESI + 0x33c]
00507f72  f30f1185b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM0
00507f7a  f30f1085acfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdac]
00507f82  e89955f1ff                CALL 0x0041d520
00507f87  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
00507f8f  f30f108db8fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdb8]
00507f97  f30f588640030000          ADDSS XMM0,dword ptr [ESI + 0x340]
00507f9f  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
00507fa7  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
00507faf  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00507fb7  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00507fbf  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
00507fc7  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00507fcf  e9430f0000                JMP 0x00508f17
00507fd4  8d8d58fdffff              LEA ECX,[EBP + 0xfffffd58]
00507fda  e891dcf2ff                CALL 0x00435c70
00507fdf  8b17                      MOV EDX,dword ptr [EDI]
00507fe1  8bcf                      MOV ECX,EDI
00507fe3  50                        PUSH EAX
00507fe4  ff5224                    CALL dword ptr [EDX + 0x24]
00507fe7  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00507fef  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
00507ff7  f30f1185b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM0
00507fff  e83c55f1ff                CALL 0x0041d540
00508004  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
0050800c  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
00508014  f30f1085b8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb8]
0050801c  e8ff54f1ff                CALL 0x0041d520
00508021  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
00508029  8db760030000              LEA ESI,[EDI + 0x360]
0050802f  f30f108dc0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdc0]
00508037  f30f110e                  MOVSS dword ptr [ESI],XMM1
0050803b  f30f114604                MOVSS dword ptr [ESI + 0x4],XMM0
00508040  e81b6f1e00                CALL 0x006eef60
00508045  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0050804b  50                        PUSH EAX
0050804c  6a00                      PUSH 0x0
0050804e  57                        PUSH EDI
0050804f  56                        PUSH ESI
00508050  8d873c030000              LEA EAX,[EDI + 0x33c]
00508056  50                        PUSH EAX
00508057  6a0e                      PUSH 0xe
00508059  6a04                      PUSH 0x4
0050805b  e8c00af2ff                CALL 0x00428b20
00508060  8bf8                      MOV EDI,EAX
00508062  6a00                      PUSH 0x0
00508064  6898d5b100                PUSH 0xb1d598
00508069  8d4f48                    LEA ECX,[EDI + 0x48]
0050806c  e80f23f0ff                CALL 0x0040a380
00508071  6a08                      PUSH 0x8
00508073  8d4f48                    LEA ECX,[EDI + 0x48]
00508076  e8a526f0ff                CALL 0x0040a720
0050807b  8b8dacfdffff              MOV ECX,dword ptr [EBP + 0xfffffdac]
00508081  ffb1bc030000              PUSH dword ptr [ECX + 0x3bc]
00508087  8bcf                      MOV ECX,EDI
00508089  e812121a00                CALL 0x006a92a0
0050808e  e8cd6e1e00                CALL 0x006eef60
00508093  33d2                      XOR EDX,EDX
00508095  b90f000000                MOV ECX,0xf
0050809a  f7f1                      DIV ECX
0050809c  b83c000000                MOV EAX,0x3c
005080a1  2bc2                      SUB EAX,EDX
005080a3  898710040000              MOV dword ptr [EDI + 0x410],EAX
005080a9  898714040000              MOV dword ptr [EDI + 0x414],EAX
005080af  e9630e0000                JMP 0x00508f17
005080b4  6a00                      PUSH 0x0
005080b6  6a03                      PUSH 0x3
005080b8  8bcf                      MOV ECX,EDI
005080ba  e851461a00                CALL 0x006ac710
005080bf  84c0                      TEST AL,AL
005080c1  0f84df030000              JZ 0x005084a6
005080c7  83fe12                    CMP ESI,0x12
005080ca  7423                      JZ 0x005080ef
005080cc  83fe50                    CMP ESI,0x50
005080cf  741e                      JZ 0x005080ef
005080d1  81fed6000000              CMP ESI,0xd6
005080d7  7416                      JZ 0x005080ef
005080d9  81fef9000000              CMP ESI,0xf9
005080df  740e                      JZ 0x005080ef
005080e1  8bc6                      MOV EAX,ESI
005080e3  81fe33030000              CMP ESI,0x333
005080e9  0f85d1010000              JNZ 0x005082c0
005080ef  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
005080f5  8bc6                      MOV EAX,ESI
005080f7  85c9                      TEST ECX,ECX
005080f9  0f84b8010000              JZ 0x005082b7
005080ff  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00508106  0f85ab010000              JNZ 0x005082b7
0050810c  f30f108940030000          MOVSS XMM1,dword ptr [ECX + 0x340]
00508114  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0050811c  f30f10913c030000          MOVSS XMM2,dword ptr [ECX + 0x33c]
00508124  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0050812c  0f28c1                    MOVAPS XMM0,XMM1
0050812f  f30f118db8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM1
00508137  f30f59c1                  MULSS XMM0,XMM1
0050813b  0f28ca                    MOVAPS XMM1,XMM2
0050813e  f30f1195acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM2
00508146  f30f59ca                  MULSS XMM1,XMM2
0050814a  f30f58c1                  ADDSS XMM0,XMM1
0050814e  e8fdd8f2ff                CALL 0x00435a50
00508153  f30f100decaaba00          MOVSS XMM1,dword ptr [0x00baaaec]
0050815b  8bc6                      MOV EAX,ESI
0050815d  0f2fc8                    COMISS XMM1,XMM0
00508160  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
00508168  0f8649010000              JBE 0x005082b7
0050816e  a17816c700                MOV EAX,[0x00c71678]
00508173  660f6e80f8640200          MOVD XMM0,dword ptr [EAX + 0x264f8]
0050817b  0f5bc0                    CVTDQ2PS XMM0,XMM0
0050817e  f30f59058ca0ba00          MULSS XMM0,dword ptr [0x00baa08c]
00508186  e89553f1ff                CALL 0x0041d520
0050818b  f30f101584a7ba00          MOVSS XMM2,dword ptr [0x00baa784]
00508193  8d8dbcfdffff              LEA ECX,[EBP + 0xfffffdbc]
00508199  f30f109dc0fdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdc0]
005081a1  8d85c0fdffff              LEA EAX,[EBP + 0xfffffdc0]
005081a7  f30f59c2                  MULSS XMM0,XMM2
005081ab  8db594fdffff              LEA ESI,[EBP + 0xfffffd94]
005081b1  c785bcfdffff0000a0c0      MOV dword ptr [EBP + 0xfffffdbc],0xc0a00000
005081bb  0f28cb                    MOVAPS XMM1,XMM3
005081be  c78594fdffff0000a040      MOV dword ptr [EBP + 0xfffffd94],0x40a00000
005081c8  6a00                      PUSH 0x0
005081ca  f30f580568a9ba00          ADDSS XMM0,dword ptr [0x00baa968]
005081d2  f30f5cc8                  SUBSS XMM1,XMM0
005081d6  0f2f0da0adba00            COMISS XMM1,dword ptr [0x00baada0]
005081dd  f30f118dc0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM1
005081e5  0f46c1                    CMOVBE EAX,ECX
005081e8  8bcf                      MOV ECX,EDI
005081ea  0f2f10                    COMISS XMM2,dword ptr [EAX]
005081ed  0f47f0                    CMOVA ESI,EAX
005081f0  8d85a0fdffff              LEA EAX,[EBP + 0xfffffda0]
005081f6  50                        PUSH EAX
005081f7  f30f1006                  MOVSS XMM0,dword ptr [ESI]
005081fb  0f28c8                    MOVAPS XMM1,XMM0
005081fe  f30f5985b8fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdb8]
00508206  f30f598dacfdffff          MULSS XMM1,dword ptr [EBP + 0xfffffdac]
0050820e  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00508216  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
0050821e  f30f5ec3                  DIVSS XMM0,XMM3
00508222  f30f5ecb                  DIVSS XMM1,XMM3
00508226  f30f1185a4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM0
0050822e  f30f118da0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM1
00508236  e87592f2ff                CALL 0x004314b0
0050823b  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0050823f  8d85a0fdffff              LEA EAX,[EBP + 0xfffffda0]
00508245  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0050824c  8bcf                      MOV ECX,EDI
0050824e  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
00508255  f30f580d30a6ba00          ADDSS XMM1,dword ptr [0x00baa630]
0050825d  f30f1095b8fdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdb8]
00508265  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
0050826d  6a00                      PUSH 0x0
0050826f  f30f109dacfdffff          MOVSS XMM3,dword ptr [EBP + 0xfffffdac]
00508277  f30f591d98a1ba00          MULSS XMM3,dword ptr [0x00baa198]
0050827f  50                        PUSH EAX
00508280  f30f5ed1                  DIVSS XMM2,XMM1
00508284  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050828c  f30f5ed9                  DIVSS XMM3,XMM1
00508290  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
00508297  f30f5ed8                  DIVSS XMM3,XMM0
0050829b  f30f5ed0                  DIVSS XMM2,XMM0
0050829f  f30f119da4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM3
005082a7  f30f1195a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM2
005082af  e8fc91f2ff                CALL 0x004314b0
005082b4  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005082b7  83f812                    CMP EAX,0x12
005082ba  0f84bf010000              JZ 0x0050847f
005082c0  83f83d                    CMP EAX,0x3d
005082c3  0f84b6010000              JZ 0x0050847f
005082c9  83f850                    CMP EAX,0x50
005082cc  0f84ad010000              JZ 0x0050847f
005082d2  3dd6000000                CMP EAX,0xd6
005082d7  0f84a2010000              JZ 0x0050847f
005082dd  3df9000000                CMP EAX,0xf9
005082e2  0f8497010000              JZ 0x0050847f
005082e8  3d33030000                CMP EAX,0x333
005082ed  0f848c010000              JZ 0x0050847f
005082f3  80bdc7fdffff00            CMP byte ptr [EBP + 0xfffffdc7],0x0
005082fa  0f857f010000              JNZ 0x0050847f
00508300  8d85a8fdffff              LEA EAX,[EBP + 0xfffffda8]
00508306  50                        PUSH EAX
00508307  e8646d1700                CALL 0x0067f070
0050830c  83c404                    ADD ESP,0x4
0050830f  8bf0                      MOV ESI,EAX
00508311  e84a6c1e00                CALL 0x006eef60
00508316  660f6ec0                  MOVD XMM0,EAX
0050831a  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050831e  c1e81f                    SHR EAX,0x1f
00508321  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0050832a  660f5ac0                  CVTPD2PS XMM0,XMM0
0050832e  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00508336  f30f118594fdffff          MOVSS dword ptr [EBP + 0xfffffd94],XMM0
0050833e  e81d6c1e00                CALL 0x006eef60
00508343  660f6ec0                  MOVD XMM0,EAX
00508347  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050834b  c1e81f                    SHR EAX,0x1f
0050834e  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00508357  a17816c700                MOV EAX,[0x00c71678]
0050835c  660f5ac8                  CVTPD2PS XMM1,XMM0
00508360  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00508368  f30f598d94fdffff          MULSS XMM1,dword ptr [EBP + 0xfffffd94]
00508370  f30f590dd4aaba00          MULSS XMM1,dword ptr [0x00baaad4]
00508378  0f28c1                    MOVAPS XMM0,XMM1
0050837b  f30f594e04                MULSS XMM1,dword ptr [ESI + 0x4]
00508380  f30f5906                  MULSS XMM0,dword ptr [ESI]
00508384  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0050838a  8d85a0fdffff              LEA EAX,[EBP + 0xfffffda0]
00508390  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
00508398  50                        PUSH EAX
00508399  f30f58873c030000          ADDSS XMM0,dword ptr [EDI + 0x33c]
005083a1  8bce                      MOV ECX,ESI
005083a3  f30f118da4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM1
005083ab  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
005083b3  e8d8a83000                CALL 0x00812c90
005083b8  85c0                      TEST EAX,EAX
005083ba  7835                      JS 0x005083f1
005083bc  3dc0010000                CMP EAX,0x1c0
005083c1  7d2e                      JGE 0x005083f1
005083c3  8b548624                  MOV EDX,dword ptr [ESI + EAX*0x4 + 0x24]
005083c7  85d2                      TEST EDX,EDX
005083c9  7426                      JZ 0x005083f1
005083cb  837a040e                  CMP dword ptr [EDX + 0x4],0xe
005083cf  7520                      JNZ 0x005083f1
005083d1  50                        PUSH EAX
005083d2  8d8580fdffff              LEA EAX,[EBP + 0xfffffd80]
005083d8  8bce                      MOV ECX,ESI
005083da  50                        PUSH EAX
005083db  e820ab3000                CALL 0x00812f00
005083e0  8b08                      MOV ECX,dword ptr [EAX]
005083e2  898f34030000              MOV dword ptr [EDI + 0x334],ECX
005083e8  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005083eb  898738030000              MOV dword ptr [EDI + 0x338],EAX
005083f1  e86a6b1e00                CALL 0x006eef60
005083f6  33d2                      XOR EDX,EDX
005083f8  b964000000                MOV ECX,0x64
005083fd  f7f1                      DIV ECX
005083ff  85d2                      TEST EDX,EDX
00508401  0f859f000000              JNZ 0x005084a6
00508407  a17816c700                MOV EAX,[0x00c71678]
0050840c  52                        PUSH EDX
0050840d  52                        PUSH EDX
0050840e  6aff                      PUSH -0x1
00508410  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00508416  8d8544fdffff              LEA EAX,[EBP + 0xfffffd44]
0050841c  6aff                      PUSH -0x1
0050841e  6a21                      PUSH 0x21
00508420  81c118120000              ADD ECX,0x1218
00508426  50                        PUSH EAX
00508427  e8342bf1ff                CALL 0x0041af60
0050842c  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00508433  8b8d50fdffff              MOV ECX,dword ptr [EBP + 0xfffffd50]
00508439  85c9                      TEST ECX,ECX
0050843b  742e                      JZ 0x0050846b
0050843d  e8ce6b1700                CALL 0x0067f010
00508442  8b8d48fdffff              MOV ECX,dword ptr [EBP + 0xfffffd48]
00508448  8b0481                    MOV EAX,dword ptr [ECX + EAX*0x4]
0050844b  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00508453  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0050845b  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
00508463  f30f118f38030000          MOVSS dword ptr [EDI + 0x338],XMM1
0050846b  8d8d44fdffff              LEA ECX,[EBP + 0xfffffd44]
00508471  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00508478  e833f1f0ff                CALL 0x004175b0
0050847d  eb27                      JMP 0x005084a6
0050847f  51                        PUSH ECX
00508480  8d853cfdffff              LEA EAX,[EBP + 0xfffffd3c]
00508486  c7042400000000            MOV dword ptr [ESP],0x0
0050848d  50                        PUSH EAX
0050848e  8bcf                      MOV ECX,EDI
00508490  e8ab671b00                CALL 0x006bec40
00508495  8b08                      MOV ECX,dword ptr [EAX]
00508497  898f34030000              MOV dword ptr [EDI + 0x334],ECX
0050849d  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
005084a0  898738030000              MOV dword ptr [EDI + 0x338],EAX
005084a6  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
005084a9  83f80d                    CMP EAX,0xd
005084ac  7405                      JZ 0x005084b3
005084ae  83f80e                    CMP EAX,0xe
005084b1  752c                      JNZ 0x005084df
005084b3  837f3466                  CMP dword ptr [EDI + 0x34],0x66
005084b7  7506                      JNZ 0x005084bf
005084b9  837f3000                  CMP dword ptr [EDI + 0x30],0x0
005084bd  7520                      JNZ 0x005084df
005084bf  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
005084c7  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
005084cf  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
005084d7  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005084df  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
005084e5  2500080001                AND EAX,0x1000800
005084ea  83c800                    OR EAX,0x0
005084ed  0f842b020000              JZ 0x0050871e
005084f3  6a00                      PUSH 0x0
005084f5  6820070000                PUSH 0x720
005084fa  8bcf                      MOV ECX,EDI
005084fc  e82feff0ff                CALL 0x00417430
00508501  84c0                      TEST AL,AL
00508503  0f8515020000              JNZ 0x0050871e
00508509  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00508510  0f8508020000              JNZ 0x0050871e
00508516  8bcf                      MOV ECX,EDI
00508518  e823631b00                CALL 0x006be840
0050851d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00508525  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0050852d  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
00508535  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
0050853d  f30f59c0                  MULSS XMM0,XMM0
00508541  f30f59c9                  MULSS XMM1,XMM1
00508545  f30f58c1                  ADDSS XMM0,XMM1
00508549  e802d5f2ff                CALL 0x00435a50
0050854e  f30f100d54abba00          MOVSS XMM1,dword ptr [0x00baab54]
00508556  0f2fc8                    COMISS XMM1,XMM0
00508559  0f86bf010000              JBE 0x0050871e
0050855f  f30f101594aaba00          MOVSS XMM2,dword ptr [0x00baaa94]
00508567  0f2fc2                    COMISS XMM0,XMM2
0050856a  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
00508572  f30f118db8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM1
0050857a  761b                      JBE 0x00508597
0050857c  f30f5cc2                  SUBSS XMM0,XMM2
00508580  f30f5ec2                  DIVSS XMM0,XMM2
00508584  0f28d1                    MOVAPS XMM2,XMM1
00508587  f30f59c1                  MULSS XMM0,XMM1
0050858b  f30f5cd0                  SUBSS XMM2,XMM0
0050858f  f30f1195b8fdffff          MOVSS dword ptr [EBP + 0xfffffdb8],XMM2
00508597  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0050859e  f30f1005b0aaba00          MOVSS XMM0,dword ptr [0x00baaab0]
005085a6  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
005085ae  7410                      JZ 0x005085c0
005085b0  f30f100530abba00          MOVSS XMM0,dword ptr [0x00baab30]
005085b8  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
005085c0  8bcf                      MOV ECX,EDI
005085c2  e879621b00                CALL 0x006be840
005085c7  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
005085cf  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
005085d7  f30f1185c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM0
005085df  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
005085e7  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
005085ef  f30f1185bcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM0
005085f7  e864691e00                CALL 0x006eef60
005085fc  f30f108dacfdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdac]
00508604  660f6ec0                  MOVD XMM0,EAX
00508608  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0050860c  c1e81f                    SHR EAX,0x1f
0050860f  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00508618  660f5ac0                  CVTPD2PS XMM0,XMM0
0050861c  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00508624  f30f59c1                  MULSS XMM0,XMM1
00508628  f30f590dd0a2ba00          MULSS XMM1,dword ptr [0x00baa2d0]
00508630  f30f5cc1                  SUBSS XMM0,XMM1
00508634  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0050863c  f30f118594fdffff          MOVSS dword ptr [EBP + 0xfffffd94],XMM0
00508644  e8f74ef1ff                CALL 0x0041d540
00508649  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
00508651  f30f108594fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffd94]
00508659  e8c24ef1ff                CALL 0x0041d520
0050865e  f30f10a5bcfdffff          MOVSS XMM4,dword ptr [EBP + 0xfffffdbc]
00508666  8d854cfdffff              LEA EAX,[EBP + 0xfffffd4c]
0050866c  f30f1095acfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdac]
00508674  0f28cc                    MOVAPS XMM1,XMM4
00508677  f30f5995c0fdffff          MULSS XMM2,dword ptr [EBP + 0xfffffdc0]
0050867f  51                        PUSH ECX
00508680  f30f59a5acfdffff          MULSS XMM4,dword ptr [EBP + 0xfffffdac]
00508688  8d8da0fdffff              LEA ECX,[EBP + 0xfffffda0]
0050868e  f30f59c8                  MULSS XMM1,XMM0
00508692  f30f5985c0fdffff          MULSS XMM0,dword ptr [EBP + 0xfffffdc0]
0050869a  f30f5cd1                  SUBSS XMM2,XMM1
0050869e  f30f58e0                  ADDSS XMM4,XMM0
005086a2  f30f1085b8fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdb8]
005086aa  f30f110424                MOVSS dword ptr [ESP],XMM0
005086af  50                        PUSH EAX
005086b0  f30f1195a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM2
005086b8  f30f11a5a4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM4
005086c0  e83b7a5000                CALL 0x00a10100
005086c5  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
005086ca  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
005086d2  f30f1008                  MOVSS XMM1,dword ptr [EAX]
005086d6  f30f588f3c030000          ADDSS XMM1,dword ptr [EDI + 0x33c]
005086de  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
005086e6  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
005086ee  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
005086f6  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
005086fe  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00508706  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0050870e  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
00508716  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0050871e  837f3466                  CMP dword ptr [EDI + 0x34],0x66
00508722  be03000000                MOV ESI,0x3
00508727  750a                      JNZ 0x00508733
00508729  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0050872d  0f8503040000              JNZ 0x00508b36
00508733  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0050873b  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00508742  9f                        LAHF
00508743  f6c444                    TEST AH,0x44
00508746  7a19                      JP 0x00508761
00508748  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00508750  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00508757  9f                        LAHF
00508758  f6c444                    TEST AH,0x44
0050875b  0f8bac020000              JNP 0x00508a0d
00508761  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00508769  0f57d2                    XORPS XMM2,XMM2
0050876c  8bcf                      MOV ECX,EDI
0050876e  e8ed3f1a00                CALL 0x006ac760
00508773  85c0                      TEST EAX,EAX
00508775  0f8492020000              JZ 0x00508a0d
0050877b  f30f1025d0a8ba00          MOVSS XMM4,dword ptr [0x00baa8d0]
00508783  8b7728                    MOV ESI,dword ptr [EDI + 0x28]
00508786  f30f11a5acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM4
0050878e  83fe12                    CMP ESI,0x12
00508791  741d                      JZ 0x005087b0
00508793  83fe50                    CMP ESI,0x50
00508796  7418                      JZ 0x005087b0
00508798  81fed6000000              CMP ESI,0xd6
0050879e  7410                      JZ 0x005087b0
005087a0  81fef9000000              CMP ESI,0xf9
005087a6  7408                      JZ 0x005087b0
005087a8  81fe33030000              CMP ESI,0x333
005087ae  7510                      JNZ 0x005087c0
005087b0  f30f1025a0a8ba00          MOVSS XMM4,dword ptr [0x00baa8a0]
005087b8  f30f11a5acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM4
005087c0  83fe3d                    CMP ESI,0x3d
005087c3  7411                      JZ 0x005087d6
005087c5  f30f1087e4000000          MOVSS XMM0,dword ptr [EDI + 0xe4]
005087cd  0f2f0590a4ba00            COMISS XMM0,dword ptr [0x00baa490]
005087d4  7610                      JBE 0x005087e6
005087d6  f30f100554a8ba00          MOVSS XMM0,dword ptr [0x00baa854]
005087de  f30f1185acfdffff          MOVSS dword ptr [EBP + 0xfffffdac],XMM0
005087e6  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005087ed  f30f109f34030000          MOVSS XMM3,dword ptr [EDI + 0x334]
005087f5  f30f5c9f3c030000          SUBSS XMM3,dword ptr [EDI + 0x33c]
005087fd  f30f109738030000          MOVSS XMM2,dword ptr [EDI + 0x338]
00508805  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
0050880d  0f28cb                    MOVAPS XMM1,XMM3
00508810  f30f118dbcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM1
00508818  7432                      JZ 0x0050884c
0050881a  8d85a0fdffff              LEA EAX,[EBP + 0xfffffda0]
00508820  0f57d2                    XORPS XMM2,XMM2
00508823  50                        PUSH EAX
00508824  8bcf                      MOV ECX,EDI
00508826  e8a5fa1c00                CALL 0x006d82d0
0050882b  8b7728                    MOV ESI,dword ptr [EDI + 0x28]
0050882e  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00508832  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00508837  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0050883f  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
00508847  e986000000                JMP 0x005088d2
0050884c  81fed6000000              CMP ESI,0xd6
00508852  7408                      JZ 0x0050885c
00508854  81fe33030000              CMP ESI,0x333
0050885a  7521                      JNZ 0x0050887d
0050885c  8a85c7fdffff              MOV AL,byte ptr [EBP + 0xfffffdc7]
00508862  84c0                      TEST AL,AL
00508864  751d                      JNZ 0x00508883
00508866  0f28c1                    MOVAPS XMM0,XMM1
00508869  0f28ca                    MOVAPS XMM1,XMM2
0050886c  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
00508873  f30f58d0                  ADDSS XMM2,XMM0
00508877  f30f58cb                  ADDSS XMM1,XMM3
0050887b  eb24                      JMP 0x005088a1
0050887d  8a85c7fdffff              MOV AL,byte ptr [EBP + 0xfffffdc7]
00508883  81fef9000000              CMP ESI,0xf9
00508889  751e                      JNZ 0x005088a9
0050888b  84c0                      TEST AL,AL
0050888d  751a                      JNZ 0x005088a9
0050888f  0f28cb                    MOVAPS XMM1,XMM3
00508892  0f571d70cbba00            XORPS XMM3,xmmword ptr [0x00bacb70]
00508899  f30f58ca                  ADDSS XMM1,XMM2
0050889d  f30f58d3                  ADDSS XMM2,XMM3
005088a1  f30f118dbcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM1
005088a9  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
005088b0  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
005088b8  f30f1195c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM2
005088c0  7420                      JZ 0x005088e2
005088c2  f30f590d98a1ba00          MULSS XMM1,dword ptr [0x00baa198]
005088ca  f30f591598a1ba00          MULSS XMM2,dword ptr [0x00baa198]
005088d2  f30f1195c0fdffff          MOVSS dword ptr [EBP + 0xfffffdc0],XMM2
005088da  f30f118dbcfdffff          MOVSS dword ptr [EBP + 0xfffffdbc],XMM1
005088e2  0f28c1                    MOVAPS XMM0,XMM1
005088e5  f30f59c1                  MULSS XMM0,XMM1
005088e9  0f28ca                    MOVAPS XMM1,XMM2
005088ec  f30f59ca                  MULSS XMM1,XMM2
005088f0  f30f58c1                  ADDSS XMM0,XMM1
005088f4  e857d1f2ff                CALL 0x00435a50
005088f9  f30f1095bcfdffff          MOVSS XMM2,dword ptr [EBP + 0xfffffdbc]
00508901  0f28d8                    MOVAPS XMM3,XMM0
00508904  0f2f1de49fba00            COMISS XMM3,dword ptr [0x00ba9fe4]
0050890b  f30f108dc0fdffff          MOVSS XMM1,dword ptr [EBP + 0xfffffdc0]
00508913  7608                      JBE 0x0050891d
00508915  f30f5ed3                  DIVSS XMM2,XMM3
00508919  f30f5ecb                  DIVSS XMM1,XMM3
0050891d  80bf7401000000            CMP byte ptr [EDI + 0x174],0x0
00508924  7418                      JZ 0x0050893e
00508926  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0050892e  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00508936  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0050893e  8bc6                      MOV EAX,ESI
00508940  83fe12                    CMP ESI,0x12
00508943  7455                      JZ 0x0050899a
00508945  83fe3d                    CMP ESI,0x3d
00508948  7450                      JZ 0x0050899a
0050894a  83fe50                    CMP ESI,0x50
0050894d  744b                      JZ 0x0050899a
0050894f  81fed6000000              CMP ESI,0xd6
00508955  7443                      JZ 0x0050899a
00508957  81fef9000000              CMP ESI,0xf9
0050895d  743b                      JZ 0x0050899a
0050895f  81fe33030000              CMP ESI,0x333
00508965  7433                      JZ 0x0050899a
00508967  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0050896f  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00508977  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0050897f  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
00508987  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0050898f  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00508997  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0050899a  f30f1085acfdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffdac]
005089a2  0f2fd8                    COMISS XMM3,XMM0
005089a5  7661                      JBE 0x00508a08
005089a7  f30f5cd8                  SUBSS XMM3,XMM0
005089ab  f30f591d08a1ba00          MULSS XMM3,dword ptr [0x00baa108]
005089b3  f30f5d1db0a4ba00          MINSS XMM3,dword ptr [0x00baa4b0]
005089bb  3dd6000000                CMP EAX,0xd6
005089c0  740e                      JZ 0x005089d0
005089c2  3df9000000                CMP EAX,0xf9
005089c7  7407                      JZ 0x005089d0
005089c9  3d33030000                CMP EAX,0x333
005089ce  7510                      JNZ 0x005089e0
005089d0  80bdc7fdffff00            CMP byte ptr [EBP + 0xfffffdc7],0x0
005089d7  7507                      JNZ 0x005089e0
005089d9  0f28c3                    MOVAPS XMM0,XMM3
005089dc  f30f58d8                  ADDSS XMM3,XMM0
005089e0  f30f59d3                  MULSS XMM2,XMM3
005089e4  8d85a0fdffff              LEA EAX,[EBP + 0xfffffda0]
005089ea  8bcf                      MOV ECX,EDI
005089ec  f30f59cb                  MULSS XMM1,XMM3
005089f0  6a00                      PUSH 0x0
005089f2  50                        PUSH EAX
005089f3  f30f1195a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM2
005089fb  f30f118da4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM1
00508a03  e8a88af2ff                CALL 0x004314b0
00508a08  be03000000                MOV ESI,0x3
00508a0d  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
00508a10  3dd6000000                CMP EAX,0xd6
00508a15  7412                      JZ 0x00508a29
00508a17  3df9000000                CMP EAX,0xf9
00508a1c  740b                      JZ 0x00508a29
00508a1e  3d33030000                CMP EAX,0x333
00508a23  0f850d010000              JNZ 0x00508b36
00508a29  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
00508a30  0f8480000000              JZ 0x00508ab6
00508a36  e825651e00                CALL 0x006eef60
00508a3b  33d2                      XOR EDX,EDX
00508a3d  f7f6                      DIV ESI
00508a3f  85d2                      TEST EDX,EDX
00508a41  7573                      JNZ 0x00508ab6
00508a43  52                        PUSH EDX
00508a44  6800080001                PUSH 0x1000800
00508a49  8bcf                      MOV ECX,EDI
00508a4b  e8e0e9f0ff                CALL 0x00417430
00508a50  84c0                      TEST AL,AL
00508a52  7562                      JNZ 0x00508ab6
00508a54  e807651e00                CALL 0x006eef60
00508a59  51                        PUSH ECX
00508a5a  8d8f9c010000              LEA ECX,[EDI + 0x19c]
00508a60  660f6ec0                  MOVD XMM0,EAX
00508a64  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00508a68  c1e81f                    SHR EAX,0x1f
00508a6b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00508a74  8d85a8fdffff              LEA EAX,[EBP + 0xfffffda8]
00508a7a  660f5ac8                  CVTPD2PS XMM1,XMM0
00508a7e  f30f100574adba00          MOVSS XMM0,dword ptr [0x00baad74]
00508a86  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
00508a8e  f30f590d28a5ba00          MULSS XMM1,dword ptr [0x00baa528]
00508a96  f30f5cc1                  SUBSS XMM0,XMM1
00508a9a  f30f110424                MOVSS dword ptr [ESP],XMM0
00508a9f  50                        PUSH EAX
00508aa0  e85b765000                CALL 0x00a10100
00508aa5  8b08                      MOV ECX,dword ptr [EAX]
00508aa7  898fb80b0000              MOV dword ptr [EDI + 0xbb8],ECX
00508aad  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00508ab0  8987bc0b0000              MOV dword ptr [EDI + 0xbbc],EAX
00508ab6  f30f108fbc0b0000          MOVSS XMM1,dword ptr [EDI + 0xbbc]
00508abe  8d87b80b0000              LEA EAX,[EDI + 0xbb8]
00508ac4  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00508acc  f30f59c0                  MULSS XMM0,XMM0
00508ad0  f30f59c9                  MULSS XMM1,XMM1
00508ad4  f30f58c1                  ADDSS XMM0,XMM1
00508ad8  0f2f0554a4ba00            COMISS XMM0,dword ptr [0x00baa454]
00508adf  763c                      JBE 0x00508b1d
00508ae1  6a00                      PUSH 0x0
00508ae3  50                        PUSH EAX
00508ae4  8bcf                      MOV ECX,EDI
00508ae6  e8c589f2ff                CALL 0x004314b0
00508aeb  f30f1087b80b0000          MOVSS XMM0,dword ptr [EDI + 0xbb8]
00508af3  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00508afb  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
00508b03  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
00508b0b  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
00508b13  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
00508b1b  eb19                      JMP 0x00508b36
00508b1d  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00508b25  f30f1100                  MOVSS dword ptr [EAX],XMM0
00508b29  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00508b31  f30f114004                MOVSS dword ptr [EAX + 0x4],XMM0
00508b36  83bf8401000000            CMP dword ptr [EDI + 0x184],0x0
00508b3d  756e                      JNZ 0x00508bad
00508b3f  f30f108770030000          MOVSS XMM0,dword ptr [EDI + 0x370]
00508b47  8db73c030000              LEA ESI,[EDI + 0x33c]
00508b4d  51                        PUSH ECX
00508b4e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00508b54  f30f110424                MOVSS dword ptr [ESP],XMM0
00508b59  56                        PUSH ESI
00508b5a  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00508b60  e8fba73000                CALL 0x00813360
00508b65  84c0                      TEST AL,AL
00508b67  7444                      JZ 0x00508bad
00508b69  f30f1006                  MOVSS XMM0,dword ptr [ESI]
00508b6d  a17816c700                MOV EAX,[0x00c71678]
00508b72  f30f118590fdffff          MOVSS dword ptr [EBP + 0xfffffd90],XMM0
00508b7a  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00508b7f  f30f118594fdffff          MOVSS dword ptr [EBP + 0xfffffd94],XMM0
00508b87  ffb594fdffff              PUSH dword ptr [EBP + 0xfffffd94]
00508b8d  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00508b93  ffb590fdffff              PUSH dword ptr [EBP + 0xfffffd90]
00508b99  e8e27b2e00                CALL 0x007f0780
00508b9e  83f804                    CMP EAX,0x4
00508ba1  7d0a                      JGE 0x00508bad
00508ba3  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00508bad  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
00508bb5  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
00508bbc  9f                        LAHF
00508bbd  f6c444                    TEST AH,0x44
00508bc0  0f8a4e010000              JP 0x00508d14
00508bc6  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
00508bce  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00508bd5  9f                        LAHF
00508bd6  f6c444                    TEST AH,0x44
00508bd9  0f8a35010000              JP 0x00508d14
00508bdf  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00508be6  0f8480000000              JZ 0x00508c6c
00508bec  f30f100d30a6ba00          MOVSS XMM1,dword ptr [0x00baa630]
00508bf4  0f57d2                    XORPS XMM2,XMM2
00508bf7  8bcf                      MOV ECX,EDI
00508bf9  e8623b1a00                CALL 0x006ac760
00508bfe  85c0                      TEST EAX,EAX
00508c00  0f840e010000              JZ 0x00508d14
00508c06  8d85a0fdffff              LEA EAX,[EBP + 0xfffffda0]
00508c0c  0f57d2                    XORPS XMM2,XMM2
00508c0f  50                        PUSH EAX
00508c10  8bcf                      MOV ECX,EDI
00508c12  e8b9f61c00                CALL 0x006d82d0
00508c17  f30f1085a0fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda0]
00508c1f  f30f590590a4ba00          MULSS XMM0,dword ptr [0x00baa490]
00508c27  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00508c2f  f30f59c1                  MULSS XMM0,XMM1
00508c33  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00508c3b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00508c43  f30f1085a4fdffff          MOVSS XMM0,dword ptr [EBP + 0xfffffda4]
00508c4b  f30f590590a4ba00          MULSS XMM0,dword ptr [0x00baa490]
00508c53  f30f59c1                  MULSS XMM0,XMM1
00508c57  f30f588764030000          ADDSS XMM0,dword ptr [EDI + 0x364]
00508c5f  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
00508c67  e9a8000000                JMP 0x00508d14
00508c6c  e8ef621e00                CALL 0x006eef60
00508c71  33d2                      XOR EDX,EDX
00508c73  b905000000                MOV ECX,0x5
00508c78  f7f1                      DIV ECX
00508c7a  85d2                      TEST EDX,EDX
00508c7c  0f8592000000              JNZ 0x00508d14
00508c82  8bcf                      MOV ECX,EDI
00508c84  e8b75b1b00                CALL 0x006be840
00508c89  8d8da0fdffff              LEA ECX,[EBP + 0xfffffda0]
00508c8f  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00508c97  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
00508c9f  8d8590fdffff              LEA EAX,[EBP + 0xfffffd90]
00508ca5  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
00508cad  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
00508cb5  50                        PUSH EAX
00508cb6  f30f1185a0fdffff          MOVSS dword ptr [EBP + 0xfffffda0],XMM0
00508cbe  f30f118da4fdffff          MOVSS dword ptr [EBP + 0xfffffda4],XMM1
00508cc6  e865735000                CALL 0x00a10030
00508ccb  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00508cd3  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00508cd8  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00508cdc  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
00508ce4  f30f591554a3ba00          MULSS XMM2,dword ptr [0x00baa354]
00508cec  f30f59c1                  MULSS XMM0,XMM1
00508cf0  f30f59d1                  MULSS XMM2,XMM1
00508cf4  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00508cfc  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
00508d04  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00508d0c  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
00508d14  a17816c700                MOV EAX,[0x00c71678]
00508d19  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00508d1f  2503000080                AND EAX,0x80000003
00508d24  7905                      JNS 0x00508d2b
00508d26  48                        DEC EAX
00508d27  83c8fc                    OR EAX,0xfffffffc
00508d2a  40                        INC EAX
00508d2b  83f801                    CMP EAX,0x1
00508d2e  755a                      JNZ 0x00508d8a
00508d30  8d85a0fdffff              LEA EAX,[EBP + 0xfffffda0]
00508d36  50                        PUSH EAX
00508d37  e834631700                CALL 0x0067f070
00508d3c  f30f102d04a3ba00          MOVSS XMM5,dword ptr [0x00baa304]
00508d44  83c404                    ADD ESP,0x4
00508d47  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00508d4c  f30f1000                  MOVSS XMM0,dword ptr [EAX]
00508d50  f30f59c5                  MULSS XMM0,XMM5
00508d54  f30f59d5                  MULSS XMM2,XMM5
00508d58  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
00508d60  f30f5897b40b0000          ADDSS XMM2,dword ptr [EDI + 0xbb4]
00508d68  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
00508d70  f30f591580a2ba00          MULSS XMM2,dword ptr [0x00baa280]
00508d78  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00508d80  f30f1197b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM2
00508d88  eb08                      JMP 0x00508d92
00508d8a  f30f102d04a3ba00          MOVSS XMM5,dword ptr [0x00baa304]
00508d92  a17816c700                MOV EAX,[0x00c71678]
00508d97  b903000000                MOV ECX,0x3
00508d9c  8b80f8640200              MOV EAX,dword ptr [EAX + 0x264f8]
00508da2  99                        CDQ
00508da3  f7f9                      IDIV ECX
00508da5  83fa02                    CMP EDX,0x2
00508da8  0f850e010000              JNZ 0x00508ebc
00508dae  837f3443                  CMP dword ptr [EDI + 0x34],0x43
00508db2  0f8488000000              JZ 0x00508e40
00508db8  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
00508dc0  f30f1005c0aaba00          MOVSS XMM0,dword ptr [0x00baaac0]
00508dc8  0f2fc2                    COMISS XMM0,XMM2
00508dcb  f30f100ddca0ba00          MOVSS XMM1,dword ptr [0x00baa0dc]
00508dd3  760e                      JBE 0x00508de3
00508dd5  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
00508ddd  f30f58c1                  ADDSS XMM0,XMM1
00508de1  eb15                      JMP 0x00508df8
00508de3  0f2f1560abba00            COMISS XMM2,dword ptr [0x00baab60]
00508dea  7614                      JBE 0x00508e00
00508dec  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
00508df4  f30f5cc1                  SUBSS XMM0,XMM1
00508df8  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00508e00  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00508e08  0f2f1584abba00            COMISS XMM2,dword ptr [0x00baab84]
00508e0f  760e                      JBE 0x00508e1f
00508e11  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00508e19  f30f5cc1                  SUBSS XMM0,XMM1
00508e1d  eb19                      JMP 0x00508e38
00508e1f  f30f1005a0a9ba00          MOVSS XMM0,dword ptr [0x00baa9a0]
00508e27  0f2fc2                    COMISS XMM0,XMM2
00508e2a  7614                      JBE 0x00508e40
00508e2c  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00508e34  f30f58c1                  ADDSS XMM0,XMM1
00508e38  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
00508e40  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
00508e48  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
00508e4f  f30f109fb00b0000          MOVSS XMM3,dword ptr [EDI + 0xbb0]
00508e57  f30f10a7b40b0000          MOVSS XMM4,dword ptr [EDI + 0xbb4]
00508e5f  f30f58db                  ADDSS XMM3,XMM3
00508e63  9f                        LAHF
00508e64  f30f58e4                  ADDSS XMM4,XMM4
00508e68  f6c444                    TEST AH,0x44
00508e6b  7b43                      JNP 0x00508eb0
00508e6d  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00508e75  0f28c1                    MOVAPS XMM0,XMM1
00508e78  f30f59cc                  MULSS XMM1,XMM4
00508e7c  f30f59c3                  MULSS XMM0,XMM3
00508e80  f30f5eca                  DIVSS XMM1,XMM2
00508e84  f30f5ec2                  DIVSS XMM0,XMM2
00508e88  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00508e90  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00508e98  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00508ea0  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00508ea8  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
00508eb0  f30f59d5                  MULSS XMM2,XMM5
00508eb4  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
00508ebc  817f28f9000000            CMP dword ptr [EDI + 0x28],0xf9
00508ec3  7552                      JNZ 0x00508f17
00508ec5  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00508ecc  7449                      JZ 0x00508f17
00508ece  6a00                      PUSH 0x0
00508ed0  6800000001                PUSH 0x1000000
00508ed5  8bcf                      MOV ECX,EDI
00508ed7  e854e5f0ff                CALL 0x00417430
00508edc  84c0                      TEST AL,AL
00508ede  7537                      JNZ 0x00508f17
00508ee0  8d8dc8fdffff              LEA ECX,[EBP + 0xfffffdc8]
00508ee6  e84560f3ff                CALL 0x0043ef30
00508eeb  50                        PUSH EAX
00508eec  6a09                      PUSH 0x9
00508eee  8d8580fdffff              LEA EAX,[EBP + 0xfffffd80]
00508ef4  c78580fdffff00000041      MOV dword ptr [EBP + 0xfffffd80],0x41000000
00508efe  50                        PUSH EAX
00508eff  8d873c030000              LEA EAX,[EDI + 0x33c]
00508f05  c78584fdffff0000c040      MOV dword ptr [EBP + 0xfffffd84],0x40c00000
00508f0f  50                        PUSH EAX
00508f10  8bcf                      MOV ECX,EDI
00508f12  e8c9231c00                CALL 0x006cb2e0
00508f17  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00508f1a  64890d00000000            MOV dword ptr FS:[0x0],ECX
00508f21  59                        POP ECX
00508f22  5f                        POP EDI
00508f23  5e                        POP ESI
00508f24  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00508f27  33cd                      XOR ECX,EBP
00508f29  e8fd615e00                CALL 0x00aef12b
00508f2e  8be5                      MOV ESP,EBP
00508f30  5d                        POP EBP
00508f31  8be3                      MOV ESP,EBX
00508f33  5b                        POP EBX
00508f34  c3                        RET
