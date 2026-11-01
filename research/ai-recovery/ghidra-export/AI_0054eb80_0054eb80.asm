; J460 NPC AI 0x0054eb80 AI_0054eb80
; types=881
; identities=881.0.0,881.1.0
; entry=0054eb80
0054eb80  55                        PUSH EBP
0054eb81  8bec                      MOV EBP,ESP
0054eb83  83e4f8                    AND ESP,0xfffffff8
0054eb86  81ec04010000              SUB ESP,0x104
0054eb8c  a1b493bf00                MOV EAX,[0x00bf93b4]
0054eb91  33c4                      XOR EAX,ESP
0054eb93  89842400010000            MOV dword ptr [ESP + 0x100],EAX
0054eb9a  53                        PUSH EBX
0054eb9b  8bd9                      MOV EBX,ECX
0054eb9d  56                        PUSH ESI
0054eb9e  57                        PUSH EDI
0054eb9f  895c2428                  MOV dword ptr [ESP + 0x28],EBX
0054eba3  83bb740b000003            CMP dword ptr [EBX + 0xb74],0x3
0054ebaa  0f85d5000000              JNZ 0x0054ec85
0054ebb0  8b837c0b0000              MOV EAX,dword ptr [EBX + 0xb7c]
0054ebb6  83782804                  CMP dword ptr [EAX + 0x28],0x4
0054ebba  0f858e0a0000              JNZ 0x0054f64e
0054ebc0  83bbc00b000000            CMP dword ptr [EBX + 0xbc0],0x0
0054ebc7  0f8f810a0000              JG 0x0054f64e
0054ebcd  f30f108bb80b0000          MOVSS XMM1,dword ptr [EBX + 0xbb8]
0054ebd5  f30f1083bc0b0000          MOVSS XMM0,dword ptr [EBX + 0xbbc]
0054ebdd  0f28d1                    MOVAPS XMM2,XMM1
0054ebe0  f30f59d1                  MULSS XMM2,XMM1
0054ebe4  f30f59c0                  MULSS XMM0,XMM0
0054ebe8  f30f114c2420              MOVSS dword ptr [ESP + 0x20],XMM1
0054ebee  f30f11542424              MOVSS dword ptr [ESP + 0x24],XMM2
0054ebf4  f30f58c2                  ADDSS XMM0,XMM2
0054ebf8  e8536eeeff                CALL 0x00435a50
0054ebfd  0f2f0580a2ba00            COMISS XMM0,dword ptr [0x00baa280]
0054ec04  0f86440a0000              JBE 0x0054f64e
0054ec0a  c783c00b00001e000000      MOV dword ptr [EBX + 0xbc0],0x1e
0054ec14  f30f1083b00b0000          MOVSS XMM0,dword ptr [EBX + 0xbb0]
0054ec1c  f30f5c055ca7ba00          SUBSS XMM0,dword ptr [0x00baa75c]
0054ec24  f30f1183b00b0000          MOVSS dword ptr [EBX + 0xbb0],XMM0
0054ec2c  f30f108bbc0b0000          MOVSS XMM1,dword ptr [EBX + 0xbbc]
0054ec34  0f28c1                    MOVAPS XMM0,XMM1
0054ec37  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
0054ec3d  f30f59c1                  MULSS XMM0,XMM1
0054ec41  f30f58442424              ADDSS XMM0,dword ptr [ESP + 0x24]
0054ec47  e8046eeeff                CALL 0x00435a50
0054ec4c  0f28c8                    MOVAPS XMM1,XMM0
0054ec4f  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0054ec56  0f86f2090000              JBE 0x0054f64e
0054ec5c  f30f100580a2ba00          MOVSS XMM0,dword ptr [0x00baa280]
0054ec64  f30f5ec1                  DIVSS XMM0,XMM1
0054ec68  f30f104c2420              MOVSS XMM1,dword ptr [ESP + 0x20]
0054ec6e  f30f59c8                  MULSS XMM1,XMM0
0054ec72  f30f59442418              MULSS XMM0,dword ptr [ESP + 0x18]
0054ec78  f30f118bb80b0000          MOVSS dword ptr [EBX + 0xbb8],XMM1
0054ec80  e9c1090000                JMP 0x0054f646
0054ec85  83bb640b000000            CMP dword ptr [EBX + 0xb64],0x0
0054ec8c  7579                      JNZ 0x0054ed07
0054ec8e  c6837101000000            MOV byte ptr [EBX + 0x171],0x0
0054ec95  c7838801000000000000      MOV dword ptr [EBX + 0x188],0x0
0054ec9f  c7838401000000000000      MOV dword ptr [EBX + 0x184],0x0
0054eca9  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
0054ecb3  e8a8021a00                CALL 0x006eef60
0054ecb8  33d2                      XOR EDX,EDX
0054ecba  838b180f000004            OR dword ptr [EBX + 0xf18],0x4
0054ecc1  b93c000000                MOV ECX,0x3c
0054ecc6  f7f1                      DIV ECX
0054ecc8  8b8b6c010000              MOV ECX,dword ptr [EBX + 0x16c]
0054ecce  b8e2ffffff                MOV EAX,0xffffffe2
0054ecd3  2bc2                      SUB EAX,EDX
0054ecd5  898b6c010000              MOV dword ptr [EBX + 0x16c],ECX
0054ecdb  898310040000              MOV dword ptr [EBX + 0x410],EAX
0054ece1  8b8368010000              MOV EAX,dword ptr [EBX + 0x168]
0054ece7  83e0fb                    AND EAX,0xfffffffb
0054ecea  837b2c01                  CMP dword ptr [EBX + 0x2c],0x1
0054ecee  898368010000              MOV dword ptr [EBX + 0x168],EAX
0054ecf4  7511                      JNZ 0x0054ed07
0054ecf6  0d00000100                OR EAX,0x10000
0054ecfb  898b6c010000              MOV dword ptr [EBX + 0x16c],ECX
0054ed01  898368010000              MOV dword ptr [EBX + 0x168],EAX
0054ed07  8b93c00b0000              MOV EDX,dword ptr [EBX + 0xbc0]
0054ed0d  85d2                      TEST EDX,EDX
0054ed0f  7e1a                      JLE 0x0054ed2b
0054ed11  f30f2c83a4030000          CVTTSS2SI EAX,dword ptr [EBX + 0x3a4]
0054ed19  f30f2c8ba0030000          CVTTSS2SI ECX,dword ptr [EBX + 0x3a0]
0054ed21  2bc8                      SUB ECX,EAX
0054ed23  03ca                      ADD ECX,EDX
0054ed25  898bc00b0000              MOV dword ptr [EBX + 0xbc0],ECX
0054ed2b  8b83640b0000              MOV EAX,dword ptr [EBX + 0xb64]
0054ed31  0f57c9                    XORPS XMM1,XMM1
0054ed34  83f803                    CMP EAX,0x3
0054ed37  0f84e4020000              JZ 0x0054f021
0054ed3d  83f806                    CMP EAX,0x6
0054ed40  0f8540070000              JNZ 0x0054f486
0054ed46  c6837101000001            MOV byte ptr [EBX + 0x171],0x1
0054ed4d  f30f1083b00b0000          MOVSS XMM0,dword ptr [EBX + 0xbb0]
0054ed55  0f2fc1                    COMISS XMM0,XMM1
0054ed58  764b                      JBE 0x0054eda5
0054ed5a  f30f1083b40b0000          MOVSS XMM0,dword ptr [EBX + 0xbb4]
0054ed62  0f2f05a8adba00            COMISS XMM0,dword ptr [0x00baada8]
0054ed69  763a                      JBE 0x0054eda5
0054ed6b  83bb8801000004            CMP dword ptr [EBX + 0x188],0x4
0054ed72  7531                      JNZ 0x0054eda5
0054ed74  51                        PUSH ECX
0054ed75  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
0054ed7c  6a00                      PUSH 0x0
0054ed7e  6a04                      PUSH 0x4
0054ed80  51                        PUSH ECX
0054ed81  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0054ed88  8bcb                      MOV ECX,EBX
0054ed8a  6a42                      PUSH 0x42
0054ed8c  c7838801000000000000      MOV dword ptr [EBX + 0x188],0x0
0054ed96  c7835c01000000000000      MOV dword ptr [EBX + 0x15c],0x0
0054eda0  e8fb7d1800                CALL 0x006d6ba0
0054eda5  80bb9001000000            CMP byte ptr [EBX + 0x190],0x0
0054edac  7448                      JZ 0x0054edf6
0054edae  f30f108bbc0b0000          MOVSS XMM1,dword ptr [EBX + 0xbbc]
0054edb6  f30f1083b80b0000          MOVSS XMM0,dword ptr [EBX + 0xbb8]
0054edbe  f30f59c0                  MULSS XMM0,XMM0
0054edc2  f30f59c9                  MULSS XMM1,XMM1
0054edc6  f30f58c1                  ADDSS XMM0,XMM1
0054edca  e8816ceeff                CALL 0x00435a50
0054edcf  51                        PUSH ECX
0054edd0  8d442414                  LEA EAX,[ESP + 0x14]
0054edd4  f30f110424                MOVSS dword ptr [ESP],XMM0
0054edd9  50                        PUSH EAX
0054edda  8d8b60030000              LEA ECX,[EBX + 0x360]
0054ede0  e81b134c00                CALL 0x00a10100
0054ede5  8b08                      MOV ECX,dword ptr [EAX]
0054ede7  898bb80b0000              MOV dword ptr [EBX + 0xbb8],ECX
0054eded  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0054edf0  8983bc0b0000              MOV dword ptr [EBX + 0xbbc],EAX
0054edf6  f30f1083b40b0000          MOVSS XMM0,dword ptr [EBX + 0xbb4]
0054edfe  33c9                      XOR ECX,ECX
0054ee00  0f2f05a8adba00            COMISS XMM0,dword ptr [0x00baada8]
0054ee07  8b93a40b0000              MOV EDX,dword ptr [EBX + 0xba4]
0054ee0d  b804000000                MOV EAX,0x4
0054ee12  0f47c1                    CMOVA EAX,ECX
0054ee15  898388010000              MOV dword ptr [EBX + 0x188],EAX
0054ee1b  85d2                      TEST EDX,EDX
0054ee1d  7e54                      JLE 0x0054ee73
0054ee1f  f30f2c83a4030000          CVTTSS2SI EAX,dword ptr [EBX + 0x3a4]
0054ee27  f30f2c8ba0030000          CVTTSS2SI ECX,dword ptr [EBX + 0x3a0]
0054ee2f  2bc8                      SUB ECX,EAX
0054ee31  8d0411                    LEA EAX,[ECX + EDX*0x1]
0054ee34  8983a40b0000              MOV dword ptr [EBX + 0xba4],EAX
0054ee3a  85c0                      TEST EAX,EAX
0054ee3c  7f35                      JG 0x0054ee73
0054ee3e  837b2c01                  CMP dword ptr [EBX + 0x2c],0x1
0054ee42  752f                      JNZ 0x0054ee73
0054ee44  8d4c2460                  LEA ECX,[ESP + 0x60]
0054ee48  e8e300efff                CALL 0x0043ef30
0054ee4d  50                        PUSH EAX
0054ee4e  6a07                      PUSH 0x7
0054ee50  8d442418                  LEA EAX,[ESP + 0x18]
0054ee54  c74424180000e040          MOV dword ptr [ESP + 0x18],0x40e00000
0054ee5c  8d8b3c030000              LEA ECX,[EBX + 0x33c]
0054ee62  c744241c00000000          MOV dword ptr [ESP + 0x1c],0x0
0054ee6a  50                        PUSH EAX
0054ee6b  51                        PUSH ECX
0054ee6c  8bcb                      MOV ECX,EBX
0054ee6e  e86dc41700                CALL 0x006cb2e0
0054ee73  f30f108364030000          MOVSS XMM0,dword ptr [EBX + 0x364]
0054ee7b  0f57c9                    XORPS XMM1,XMM1
0054ee7e  0f2fc1                    COMISS XMM0,XMM1
0054ee81  b9bc12b600                MOV ECX,0xb612bc
0054ee86  b854bcb100                MOV EAX,0xb1bc54
0054ee8b  6a00                      PUSH 0x0
0054ee8d  0f42c1                    CMOVC EAX,ECX
0054ee90  8d4b48                    LEA ECX,[EBX + 0x48]
0054ee93  50                        PUSH EAX
0054ee94  e8e7b4ebff                CALL 0x0040a380
0054ee99  51                        PUSH ECX
0054ee9a  8d8b040c0000              LEA ECX,[EBX + 0xc04]
0054eea0  8db33c030000              LEA ESI,[EBX + 0x33c]
0054eea6  e885a3f4ff                CALL 0x00499230
0054eeab  f30f104e04                MOVSS XMM1,dword ptr [ESI + 0x4]
0054eeb0  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0054eeb4  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
0054eeb8  f30f5c4804                SUBSS XMM1,dword ptr [EAX + 0x4]
0054eebd  f30f59c0                  MULSS XMM0,XMM0
0054eec1  f30f59c9                  MULSS XMM1,XMM1
0054eec5  f30f58c1                  ADDSS XMM0,XMM1
0054eec9  e8826beeff                CALL 0x00435a50
0054eece  0f2f05fca6ba00            COMISS XMM0,dword ptr [0x00baa6fc]
0054eed5  7711                      JA 0x0054eee8
0054eed7  f30f1083b40b0000          MOVSS XMM0,dword ptr [EBX + 0xbb4]
0054eedf  0f2f055ca8ba00            COMISS XMM0,dword ptr [0x00baa85c]
0054eee6  7632                      JBE 0x0054ef1a
0054eee8  56                        PUSH ESI
0054eee9  8d8b040c0000              LEA ECX,[EBX + 0xc04]
0054eeef  e89ca2f4ff                CALL 0x00499190
0054eef4  f30f1083b40b0000          MOVSS XMM0,dword ptr [EBX + 0xbb4]
0054eefc  8d442410                  LEA EAX,[ESP + 0x10]
0054ef00  50                        PUSH EAX
0054ef01  8d8b180c0000              LEA ECX,[EBX + 0xc18]
0054ef07  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
0054ef0f  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0054ef15  e876a2f4ff                CALL 0x00499190
0054ef1a  8b8b140c0000              MOV ECX,dword ptr [EBX + 0xc14]
0054ef20  83f914                    CMP ECX,0x14
0054ef23  762d                      JBE 0x0054ef52
0054ef25  8d41ff                    LEA EAX,[ECX + -0x1]
0054ef28  8983140c0000              MOV dword ptr [EBX + 0xc14],EAX
0054ef2e  8bc8                      MOV ECX,EAX
0054ef30  85c0                      TEST EAX,EAX
0054ef32  7506                      JNZ 0x0054ef3a
0054ef34  8983100c0000              MOV dword ptr [EBX + 0xc10],EAX
0054ef3a  8383280c0000ff            ADD dword ptr [EBX + 0xc28],-0x1
0054ef41  750a                      JNZ 0x0054ef4d
0054ef43  c783240c000000000000      MOV dword ptr [EBX + 0xc24],0x0
0054ef4d  83f914                    CMP ECX,0x14
0054ef50  77d3                      JA 0x0054ef25
0054ef52  f30f1083b40b0000          MOVSS XMM0,dword ptr [EBX + 0xbb4]
0054ef5a  0f2f05e8a7ba00            COMISS XMM0,dword ptr [0x00baa7e8]
0054ef61  7636                      JBE 0x0054ef99
0054ef63  c783640b000003000000      MOV dword ptr [EBX + 0xb64],0x3
0054ef6d  c7838401000000000000      MOV dword ptr [EBX + 0x184],0x0
0054ef77  e8e4ff1900                CALL 0x006eef60
0054ef7c  33d2                      XOR EDX,EDX
0054ef7e  c6837101000000            MOV byte ptr [EBX + 0x171],0x0
0054ef85  b928000000                MOV ECX,0x28
0054ef8a  f7f1                      DIV ECX
0054ef8c  b8ecffffff                MOV EAX,0xffffffec
0054ef91  2bc2                      SUB EAX,EDX
0054ef93  898310040000              MOV dword ptr [EBX + 0x410],EAX
0054ef99  f30f10936c030000          MOVSS XMM2,dword ptr [EBX + 0x36c]
0054efa1  0f57c0                    XORPS XMM0,XMM0
0054efa4  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
0054efac  0f2ed0                    UCOMISS XMM2,XMM0
0054efaf  f30f11936c030000          MOVSS dword ptr [EBX + 0x36c],XMM2
0054efb7  f30f109bb80b0000          MOVSS XMM3,dword ptr [EBX + 0xbb8]
0054efbf  f30f10a3bc0b0000          MOVSS XMM4,dword ptr [EBX + 0xbbc]
0054efc7  f30f591d0ca7ba00          MULSS XMM3,dword ptr [0x00baa70c]
0054efcf  f30f59250ca7ba00          MULSS XMM4,dword ptr [0x00baa70c]
0054efd7  9f                        LAHF
0054efd8  f6c444                    TEST AH,0x44
0054efdb  0f8ba5040000              JNP 0x0054f486
0054efe1  f30f108b9c030000          MOVSS XMM1,dword ptr [EBX + 0x39c]
0054efe9  0f28c1                    MOVAPS XMM0,XMM1
0054efec  f30f59cc                  MULSS XMM1,XMM4
0054eff0  f30f59c3                  MULSS XMM0,XMM3
0054eff4  f30f5eca                  DIVSS XMM1,XMM2
0054eff8  f30f5ec2                  DIVSS XMM0,XMM2
0054effc  f30f588b64030000          ADDSS XMM1,dword ptr [EBX + 0x364]
0054f004  f30f588360030000          ADDSS XMM0,dword ptr [EBX + 0x360]
0054f00c  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
0054f014  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
0054f01c  e965040000                JMP 0x0054f486
0054f021  f30f10836c030000          MOVSS XMM0,dword ptr [EBX + 0x36c]
0054f029  f30f590518a4ba00          MULSS XMM0,dword ptr [0x00baa418]
0054f031  8b9310040000              MOV EDX,dword ptr [EBX + 0x410]
0054f037  c7838401000000000000      MOV dword ptr [EBX + 0x184],0x0
0054f041  f30f11836c030000          MOVSS dword ptr [EBX + 0x36c],XMM0
0054f049  85d2                      TEST EDX,EDX
0054f04b  0f8fa9020000              JG 0x0054f2fa
0054f051  c7838801000000000000      MOV dword ptr [EBX + 0x188],0x0
0054f05b  c6837101000000            MOV byte ptr [EBX + 0x171],0x0
0054f062  7924                      JNS 0x0054f088
0054f064  f30f2c83a0030000          CVTTSS2SI EAX,dword ptr [EBX + 0x3a0]
0054f06c  f30f2c8ba4030000          CVTTSS2SI ECX,dword ptr [EBX + 0x3a4]
0054f074  2bc8                      SUB ECX,EAX
0054f076  8d0411                    LEA EAX,[ECX + EDX*0x1]
0054f079  33d2                      XOR EDX,EDX
0054f07b  85c0                      TEST EAX,EAX
0054f07d  0f48d0                    CMOVS EDX,EAX
0054f080  899310040000              MOV dword ptr [EBX + 0x410],EDX
0054f086  85d2                      TEST EDX,EDX
0054f088  0f85f8030000              JNZ 0x0054f486
0054f08e  a17816c700                MOV EAX,[0x00c71678]
0054f093  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0054f099  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
0054f09e  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0054f0a4  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
0054f0a9  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0054f0af  f30f104018                MOVSS XMM0,dword ptr [EAX + 0x18]
0054f0b4  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0054f0ba  f30f104020                MOVSS XMM0,dword ptr [EAX + 0x20]
0054f0bf  8d44242c                  LEA EAX,[ESP + 0x2c]
0054f0c3  50                        PUSH EAX
0054f0c4  f30f11442424              MOVSS dword ptr [ESP + 0x24],XMM0
0054f0ca  e8a1ff1200                CALL 0x0067f070
0054f0cf  83c404                    ADD ESP,0x4
0054f0d2  8bf0                      MOV ESI,EAX
0054f0d4  e887fe1900                CALL 0x006eef60
0054f0d9  f30f105c2418              MOVSS XMM3,dword ptr [ESP + 0x18]
0054f0df  83ec0c                    SUB ESP,0xc
0054f0e2  f30f585c2430              ADDSS XMM3,dword ptr [ESP + 0x30]
0054f0e8  660f6ec0                  MOVD XMM0,EAX
0054f0ec  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0054f0f0  c1e81f                    SHR EAX,0x1f
0054f0f3  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
0054f0fb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0054f104  c74424080000a041          MOV dword ptr [ESP + 0x8],0x41a00000
0054f10c  8d442424                  LEA EAX,[ESP + 0x24]
0054f110  c74424040000a041          MOV dword ptr [ESP + 0x4],0x41a00000
0054f118  c704240000a041            MOV dword ptr [ESP],0x41a00000
0054f11f  50                        PUSH EAX
0054f120  660f5ad0                  CVTPD2PS XMM2,XMM0
0054f124  8d442420                  LEA EAX,[ESP + 0x20]
0054f128  50                        PUSH EAX
0054f129  f30f5915f49fba00          MULSS XMM2,dword ptr [0x00ba9ff4]
0054f131  f30f5915e0aaba00          MULSS XMM2,dword ptr [0x00baaae0]
0054f139  f30f581550a9ba00          ADDSS XMM2,dword ptr [0x00baa950]
0054f141  0f28c2                    MOVAPS XMM0,XMM2
0054f144  f30f595604                MULSS XMM2,dword ptr [ESI + 0x4]
0054f149  f30f5906                  MULSS XMM0,dword ptr [ESI]
0054f14d  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0054f153  f30f58d8                  ADDSS XMM3,XMM0
0054f157  f30f10442434              MOVSS XMM0,dword ptr [ESP + 0x34]
0054f15d  f30f58442424              ADDSS XMM0,dword ptr [ESP + 0x24]
0054f163  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0054f169  f30f115c242c              MOVSS dword ptr [ESP + 0x2c],XMM3
0054f16f  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0054f177  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0054f17f  f30f58c2                  ADDSS XMM0,XMM2
0054f183  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0054f189  e8c23d2c00                CALL 0x00812f50
0054f18e  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0054f194  8d442418                  LEA EAX,[ESP + 0x18]
0054f198  6a00                      PUSH 0x0
0054f19a  6a00                      PUSH 0x0
0054f19c  6a01                      PUSH 0x1
0054f19e  51                        PUSH ECX
0054f19f  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0054f1a5  c7042400000000            MOV dword ptr [ESP],0x0
0054f1ac  50                        PUSH EAX
0054f1ad  f30f1144242c              MOVSS dword ptr [ESP + 0x2c],XMM0
0054f1b3  8d442440                  LEA EAX,[ESP + 0x40]
0054f1b7  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
0054f1bd  50                        PUSH EAX
0054f1be  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0054f1c4  e857432c00                CALL 0x00813520
0054f1c9  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054f1cf  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0054f1d3  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0054f1d9  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0054f1df  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0054f1e4  8d442418                  LEA EAX,[ESP + 0x18]
0054f1e8  50                        PUSH EAX
0054f1e9  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0054f1ef  f30f11442420              MOVSS dword ptr [ESP + 0x20],XMM0
0054f1f5  e856471b00                CALL 0x00703950
0054f1fa  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0054f200  f30f104c2424              MOVSS XMM1,dword ptr [ESP + 0x24]
0054f206  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
0054f20e  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
0054f216  f30f59c9                  MULSS XMM1,XMM1
0054f21a  f30f59c0                  MULSS XMM0,XMM0
0054f21e  f30f58c8                  ADDSS XMM1,XMM0
0054f222  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
0054f228  e833fd1900                CALL 0x006eef60
0054f22d  a801                      TEST AL,0x1
0054f22f  0f8551020000              JNZ 0x0054f486
0054f235  f30f104c2410              MOVSS XMM1,dword ptr [ESP + 0x10]
0054f23b  0f2f0d40acba00            COMISS XMM1,dword ptr [0x00baac40]
0054f242  0f863e020000              JBE 0x0054f486
0054f248  f30f100564acba00          MOVSS XMM0,dword ptr [0x00baac64]
0054f250  0f2fc1                    COMISS XMM0,XMM1
0054f253  0f862d020000              JBE 0x0054f486
0054f259  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0054f261  8bcb                      MOV ECX,EBX
0054f263  f30f104c2424              MOVSS XMM1,dword ptr [ESP + 0x24]
0054f269  f30f118360030000          MOVSS dword ptr [EBX + 0x360],XMM0
0054f271  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0054f279  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
0054f281  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0054f287  6a00                      PUSH 0x0
0054f289  f30f118334030000          MOVSS dword ptr [EBX + 0x334],XMM0
0054f291  f30f118b38030000          MOVSS dword ptr [EBX + 0x338],XMM1
0054f299  f30f11833c030000          MOVSS dword ptr [EBX + 0x33c],XMM0
0054f2a1  f30f118b40030000          MOVSS dword ptr [EBX + 0x340],XMM1
0054f2a9  e802121700                CALL 0x006c04b0
0054f2ae  51                        PUSH ECX
0054f2af  c704240000803f            MOV dword ptr [ESP],0x3f800000
0054f2b6  6a00                      PUSH 0x0
0054f2b8  6a02                      PUSH 0x2
0054f2ba  51                        PUSH ECX
0054f2bb  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0054f2c2  8bcb                      MOV ECX,EBX
0054f2c4  6a02                      PUSH 0x2
0054f2c6  e8d5781800                CALL 0x006d6ba0
0054f2cb  6a00                      PUSH 0x0
0054f2cd  68e80bb600                PUSH 0xb60be8
0054f2d2  8d4b48                    LEA ECX,[EBX + 0x48]
0054f2d5  e8a6b0ebff                CALL 0x0040a380
0054f2da  c7831004000001000000      MOV dword ptr [EBX + 0x410],0x1
0054f2e4  c7838801000004000000      MOV dword ptr [EBX + 0x188],0x4
0054f2ee  c6837101000001            MOV byte ptr [EBX + 0x171],0x1
0054f2f5  e98c010000                JMP 0x0054f486
0054f2fa  f30f108b34030000          MOVSS XMM1,dword ptr [EBX + 0x334]
0054f302  f30f108338030000          MOVSS XMM0,dword ptr [EBX + 0x338]
0054f30a  f30f5c8b3c030000          SUBSS XMM1,dword ptr [EBX + 0x33c]
0054f312  f30f5c8340030000          SUBSS XMM0,dword ptr [EBX + 0x340]
0054f31a  f30f118b60030000          MOVSS dword ptr [EBX + 0x360],XMM1
0054f322  f30f118364030000          MOVSS dword ptr [EBX + 0x364],XMM0
0054f32a  837b7c00                  CMP dword ptr [EBX + 0x7c],0x0
0054f32e  740d                      JZ 0x0054f33d
0054f330  80bb8c00000000            CMP byte ptr [EBX + 0x8c],0x0
0054f337  0f8549010000              JNZ 0x0054f486
0054f33d  51                        PUSH ECX
0054f33e  8d442430                  LEA EAX,[ESP + 0x30]
0054f342  c7042400000000            MOV dword ptr [ESP],0x0
0054f349  50                        PUSH EAX
0054f34a  8bcb                      MOV ECX,EBX
0054f34c  e8eff81600                CALL 0x006bec40
0054f351  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0054f356  f30f5c8b40030000          SUBSS XMM1,dword ptr [EBX + 0x340]
0054f35e  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0054f362  f30f5c933c030000          SUBSS XMM2,dword ptr [EBX + 0x33c]
0054f36a  0f28c1                    MOVAPS XMM0,XMM1
0054f36d  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
0054f373  f30f59c1                  MULSS XMM0,XMM1
0054f377  0f28ca                    MOVAPS XMM1,XMM2
0054f37a  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
0054f380  f30f59ca                  MULSS XMM1,XMM2
0054f384  f30f58c1                  ADDSS XMM0,XMM1
0054f388  e8c366eeff                CALL 0x00435a50
0054f38d  f30f10642410              MOVSS XMM4,dword ptr [ESP + 0x10]
0054f393  8d8b040c0000              LEA ECX,[EBX + 0xc04]
0054f399  f30f105c2418              MOVSS XMM3,dword ptr [ESP + 0x18]
0054f39f  f30f5ee0                  DIVSS XMM4,XMM0
0054f3a3  f30f5ed8                  DIVSS XMM3,XMM0
0054f3a7  0f28d4                    MOVAPS XMM2,XMM4
0054f3aa  f30f5915e8a7ba00          MULSS XMM2,dword ptr [0x00baa7e8]
0054f3b2  0f28cb                    MOVAPS XMM1,XMM3
0054f3b5  f30f590de8a7ba00          MULSS XMM1,dword ptr [0x00baa7e8]
0054f3bd  f30f119360030000          MOVSS dword ptr [EBX + 0x360],XMM2
0054f3c5  f30f118b64030000          MOVSS dword ptr [EBX + 0x364],XMM1
0054f3cd  c783b40b000000000040      MOV dword ptr [EBX + 0xbb4],0x40000000
0054f3d7  c783b00b00000000a0c0      MOV dword ptr [EBX + 0xbb0],0xc0a00000
0054f3e1  c783640b000006000000      MOV dword ptr [EBX + 0xb64],0x6
0054f3eb  c7838401000003000000      MOV dword ptr [EBX + 0x184],0x3
0054f3f5  f30f11a3b80b0000          MOVSS dword ptr [EBX + 0xbb8],XMM4
0054f3fd  f30f119bbc0b0000          MOVSS dword ptr [EBX + 0xbbc],XMM3
0054f405  e8769ff4ff                CALL 0x00499380
0054f40a  8d8b180c0000              LEA ECX,[EBX + 0xc18]
0054f410  e86b9ff4ff                CALL 0x00499380
0054f415  8d833c030000              LEA EAX,[EBX + 0x33c]
0054f41b  50                        PUSH EAX
0054f41c  8d8b040c0000              LEA ECX,[EBX + 0xc04]
0054f422  e8699df4ff                CALL 0x00499190
0054f427  f30f1083b40b0000          MOVSS XMM0,dword ptr [EBX + 0xbb4]
0054f42f  8d442410                  LEA EAX,[ESP + 0x10]
0054f433  50                        PUSH EAX
0054f434  8d8b180c0000              LEA ECX,[EBX + 0xc18]
0054f43a  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
0054f442  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0054f448  e8439df4ff                CALL 0x00499190
0054f44d  8b8330030000              MOV EAX,dword ptr [EBX + 0x330]
0054f453  51                        PUSH ECX
0054f454  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
0054f45b  6a00                      PUSH 0x0
0054f45d  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0054f460  6a04                      PUSH 0x4
0054f462  51                        PUSH ECX
0054f463  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0054f46a  8bcb                      MOV ECX,EBX
0054f46c  68d0010000                PUSH 0x1d0
0054f471  89835c010000              MOV dword ptr [EBX + 0x15c],EAX
0054f477  e824771800                CALL 0x006d6ba0
0054f47c  c783a40b000004000000      MOV dword ptr [EBX + 0xba4],0x4
0054f486  83bb640b000006            CMP dword ptr [EBX + 0xb64],0x6
0054f48d  8d4b48                    LEA ECX,[EBX + 0x48]
0054f490  6a00                      PUSH 0x0
0054f492  0f85f1000000              JNZ 0x0054f589
0054f498  f30f10839c030000          MOVSS XMM0,dword ptr [EBX + 0x39c]
0054f4a0  f30f1093b40b0000          MOVSS XMM2,dword ptr [EBX + 0xbb4]
0054f4a8  0f28c8                    MOVAPS XMM1,XMM0
0054f4ab  f30f590d80a2ba00          MULSS XMM1,dword ptr [0x00baa280]
0054f4b3  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
0054f4b9  f30f588bb00b0000          ADDSS XMM1,dword ptr [EBX + 0xbb0]
0054f4c1  f30f118bb00b0000          MOVSS dword ptr [EBX + 0xbb0],XMM1
0054f4c9  f30f59c8                  MULSS XMM1,XMM0
0054f4cd  f30f1005a8adba00          MOVSS XMM0,dword ptr [0x00baada8]
0054f4d5  f30f58ca                  ADDSS XMM1,XMM2
0054f4d9  0f2fc1                    COMISS XMM0,XMM1
0054f4dc  f30f118bb40b0000          MOVSS dword ptr [EBX + 0xbb4],XMM1
0054f4e4  f30f118b50030000          MOVSS dword ptr [EBX + 0x350],XMM1
0054f4ec  0f93c3                    SETNC BL
0054f4ef  e82cbdebff                CALL 0x0040b220
0054f4f4  f30f1005a8adba00          MOVSS XMM0,dword ptr [0x00baada8]
0054f4fc  33c9                      XOR ECX,ECX
0054f4fe  885874                    MOV byte ptr [EAX + 0x74],BL
0054f501  8b5c2428                  MOV EBX,dword ptr [ESP + 0x28]
0054f505  0f2f83b40b0000            COMISS XMM0,dword ptr [EBX + 0xbb4]
0054f50c  0f93c1                    SETNC CL
0054f50f  33c0                      XOR EAX,EAX
0054f511  0f2f442410                COMISS XMM0,dword ptr [ESP + 0x10]
0054f516  0f93c0                    SETNC AL
0054f519  3bc1                      CMP EAX,ECX
0054f51b  0f8485000000              JZ 0x0054f5a6
0054f521  e83afa1900                CALL 0x006eef60
0054f526  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054f52c  8db33c030000              LEA ESI,[EBX + 0x33c]
0054f532  6a00                      PUSH 0x0
0054f534  50                        PUSH EAX
0054f535  6a00                      PUSH 0x0
0054f537  6a00                      PUSH 0x0
0054f539  6840b6c700                PUSH 0xc7b640
0054f53e  56                        PUSH ESI
0054f53f  6892000000                PUSH 0x92
0054f544  68e8030000                PUSH 0x3e8
0054f549  e8c2ee1a00                CALL 0x006fe410
0054f54e  8d4c2434                  LEA ECX,[ESP + 0x34]
0054f552  c7805803000000008040      MOV dword ptr [EAX + 0x358],0x40800000
0054f55c  e80f7cebff                CALL 0x00407170
0054f561  6800000200                PUSH 0x20000
0054f566  51                        PUSH ECX
0054f567  c704240050c347            MOV dword ptr [ESP],0x47c35000
0054f56e  50                        PUSH EAX
0054f56f  51                        PUSH ECX
0054f570  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0054f576  c704240000a040            MOV dword ptr [ESP],0x40a00000
0054f57d  6a03                      PUSH 0x3
0054f57f  6a04                      PUSH 0x4
0054f581  56                        PUSH ESI
0054f582  e8a93d1b00                CALL 0x00703330
0054f587  eb1d                      JMP 0x0054f5a6
0054f589  c7835003000000000000      MOV dword ptr [EBX + 0x350],0x0
0054f593  c783b40b000000000000      MOV dword ptr [EBX + 0xbb4],0x0
0054f59d  e87ebcebff                CALL 0x0040b220
0054f5a2  c6407401                  MOV byte ptr [EAX + 0x74],0x1
0054f5a6  f30f104314                MOVSS XMM0,dword ptr [EBX + 0x14]
0054f5ab  0f57c9                    XORPS XMM1,XMM1
0054f5ae  0f2fc1                    COMISS XMM0,XMM1
0054f5b1  0f8697000000              JBE 0x0054f64e
0054f5b7  83bbc00b000000            CMP dword ptr [EBX + 0xbc0],0x0
0054f5be  0f8f8a000000              JG 0x0054f64e
0054f5c4  c783c00b00000a000000      MOV dword ptr [EBX + 0xbc0],0xa
0054f5ce  f30f1083b00b0000          MOVSS XMM0,dword ptr [EBX + 0xbb0]
0054f5d6  f30f5c05fca6ba00          SUBSS XMM0,dword ptr [0x00baa6fc]
0054f5de  f30f1183b00b0000          MOVSS dword ptr [EBX + 0xbb0],XMM0
0054f5e6  f30f108bb80b0000          MOVSS XMM1,dword ptr [EBX + 0xbb8]
0054f5ee  f30f1093bc0b0000          MOVSS XMM2,dword ptr [EBX + 0xbbc]
0054f5f6  0f28c1                    MOVAPS XMM0,XMM1
0054f5f9  f30f59c1                  MULSS XMM0,XMM1
0054f5fd  f30f114c2428              MOVSS dword ptr [ESP + 0x28],XMM1
0054f603  0f28ca                    MOVAPS XMM1,XMM2
0054f606  f30f59ca                  MULSS XMM1,XMM2
0054f60a  f30f11542410              MOVSS dword ptr [ESP + 0x10],XMM2
0054f610  f30f58c1                  ADDSS XMM0,XMM1
0054f614  e83764eeff                CALL 0x00435a50
0054f619  0f2f0580a2ba00            COMISS XMM0,dword ptr [0x00baa280]
0054f620  762c                      JBE 0x0054f64e
0054f622  f30f10442428              MOVSS XMM0,dword ptr [ESP + 0x28]
0054f628  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0054f630  f30f1183b80b0000          MOVSS dword ptr [EBX + 0xbb8],XMM0
0054f638  f30f10442410              MOVSS XMM0,dword ptr [ESP + 0x10]
0054f63e  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0054f646  f30f1183bc0b0000          MOVSS dword ptr [EBX + 0xbbc],XMM0
0054f64e  8b8c240c010000            MOV ECX,dword ptr [ESP + 0x10c]
0054f655  5f                        POP EDI
0054f656  5e                        POP ESI
0054f657  5b                        POP EBX
0054f658  33cc                      XOR ECX,ESP
0054f65a  e8ccfa5900                CALL 0x00aef12b
0054f65f  8be5                      MOV ESP,EBP
0054f661  5d                        POP EBP
0054f662  c3                        RET
