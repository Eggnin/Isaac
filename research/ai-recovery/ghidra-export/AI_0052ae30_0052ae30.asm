; J460 NPC AI 0x0052ae30 AI_0052ae30
; types=38,259
; identities=259.0.0,38.0.0,38.1.0,38.1.1,38.2.0,38.3.0
; entry=0052ae30
0052ae30  53                        PUSH EBX
0052ae31  8bdc                      MOV EBX,ESP
0052ae33  83ec08                    SUB ESP,0x8
0052ae36  83e4f8                    AND ESP,0xfffffff8
0052ae39  83c404                    ADD ESP,0x4
0052ae3c  55                        PUSH EBP
0052ae3d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0052ae40  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0052ae44  8bec                      MOV EBP,ESP
0052ae46  6aff                      PUSH -0x1
0052ae48  687046af00                PUSH 0xaf4670
0052ae4d  64a100000000              MOV EAX,FS:[0x0]
0052ae53  50                        PUSH EAX
0052ae54  53                        PUSH EBX
0052ae55  81ecf8000000              SUB ESP,0xf8
0052ae5b  a1b493bf00                MOV EAX,[0x00bf93b4]
0052ae60  33c5                      XOR EAX,EBP
0052ae62  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0052ae65  56                        PUSH ESI
0052ae66  57                        PUSH EDI
0052ae67  50                        PUSH EAX
0052ae68  8d45f4                    LEA EAX,[EBP + -0xc]
0052ae6b  64a300000000              MOV FS:[0x0],EAX
0052ae71  8bf9                      MOV EDI,ECX
0052ae73  837f2826                  CMP dword ptr [EDI + 0x28],0x26
0052ae77  7510                      JNZ 0x0052ae89
0052ae79  837f2c03                  CMP dword ptr [EDI + 0x2c],0x3
0052ae7d  750a                      JNZ 0x0052ae89
0052ae7f  e8fc4b0200                CALL 0x0054fa80
0052ae84  e947140000                JMP 0x0052c2d0
0052ae89  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0052ae90  751e                      JNZ 0x0052aeb0
0052ae92  6a00                      PUSH 0x0
0052ae94  8d4f48                    LEA ECX,[EDI + 0x48]
0052ae97  68fcd6b100                PUSH 0xb1d6fc
0052ae9c  e8dff4edff                CALL 0x0040a380
0052aea1  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0052aeab  e920140000                JMP 0x0052c2d0
0052aeb0  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0052aeb8  8db73c030000              LEA ESI,[EDI + 0x33c]
0052aebe  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0052aec2  f30f5cc1                  SUBSS XMM0,XMM1
0052aec6  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
0052aece  f30f5ec1                  DIVSS XMM0,XMM1
0052aed2  f30f2c8fa4030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a4]
0052aeda  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0052aee2  2bc8                      SUB ECX,EAX
0052aee4  a17816c700                MOV EAX,[0x00c71678]
0052aee9  898d1cffffff              MOV dword ptr [EBP + 0xffffff1c],ECX
0052aeef  f30f2cd0                  CVTTSS2SI EDX,XMM0
0052aef3  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0052aef9  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0052aefe  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
0052af06  f30f5ec1                  DIVSS XMM0,XMM1
0052af0a  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0052af12  f30f2cc0                  CVTTSS2SI EAX,XMM0
0052af16  85d2                      TEST EDX,EDX
0052af18  7833                      JS 0x0052af4d
0052af1a  3b510c                    CMP EDX,dword ptr [ECX + 0xc]
0052af1d  7d2e                      JGE 0x0052af4d
0052af1f  85c0                      TEST EAX,EAX
0052af21  782a                      JS 0x0052af4d
0052af23  3b4110                    CMP EAX,dword ptr [ECX + 0x10]
0052af26  7d25                      JGE 0x0052af4d
0052af28  0faf410c                  IMUL EAX,dword ptr [ECX + 0xc]
0052af2c  03c2                      ADD EAX,EDX
0052af2e  3dbf010000                CMP EAX,0x1bf
0052af33  7718                      JA 0x0052af4d
0052af35  81bc816c070000b6030000    CMP dword ptr [ECX + EAX*0x4 + 0x76c],0x3b6
0052af40  7f0b                      JG 0x0052af4d
0052af42  c784816c07000084030000    MOV dword ptr [ECX + EAX*0x4 + 0x76c],0x384
0052af4d  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0052af55  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
0052af5b  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0052af63  51                        PUSH ECX
0052af64  c7042400000000            MOV dword ptr [ESP],0x0
0052af6b  8bcf                      MOV ECX,EDI
0052af6d  50                        PUSH EAX
0052af6e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0052af76  e8c53c1900                CALL 0x006bec40
0052af7b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052af82  f30f108d20ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff20]
0052af8a  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
0052af92  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
0052af96  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
0052af9b  f30f118d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM1
0052afa3  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0052afab  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
0052afb3  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
0052afbb  744a                      JZ 0x0052b007
0052afbd  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0052afc3  0f57d2                    XORPS XMM2,XMM2
0052afc6  50                        PUSH EAX
0052afc7  8bcf                      MOV ECX,EDI
0052afc9  e802d31a00                CALL 0x006d82d0
0052afce  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0052afd2  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
0052afd7  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0052afdf  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
0052afe7  f30f118d28ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM1
0052afef  f30f118d14ffffff          MOVSS dword ptr [EBP + 0xffffff14],XMM1
0052aff7  f30f11852cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM0
0052afff  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
0052b007  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0052b00d  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
0052b015  83f804                    CMP EAX,0x4
0052b018  0f85e4080000              JNZ 0x0052b902
0052b01e  817f2803010000            CMP dword ptr [EDI + 0x28],0x103
0052b025  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
0052b02f  0f8512010000              JNZ 0x0052b147
0052b035  e8263f1c00                CALL 0x006eef60
0052b03a  33d2                      XOR EDX,EDX
0052b03c  b95a000000                MOV ECX,0x5a
0052b041  f7f1                      DIV ECX
0052b043  85d2                      TEST EDX,EDX
0052b045  754a                      JNZ 0x0052b091
0052b047  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0052b04d  8d8d38ffffff              LEA ECX,[EBP + 0xffffff38]
0052b053  c78538ffffff34040000      MOV dword ptr [EBP + 0xffffff38],0x434
0052b05d  e81eb74200                CALL 0x00956780
0052b062  83ec08                    SUB ESP,0x8
0052b065  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0052b06b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0052b073  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052b07a  6a00                      PUSH 0x0
0052b07c  6a3c                      PUSH 0x3c
0052b07e  51                        PUSH ECX
0052b07f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052b086  ffb538ffffff              PUSH dword ptr [EBP + 0xffffff38]
0052b08c  e89f2b4000                CALL 0x0092dc30
0052b091  83bfa40b000000            CMP dword ptr [EDI + 0xba4],0x0
0052b098  0f8f8a000000              JG 0x0052b128
0052b09e  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052b0a5  741a                      JZ 0x0052b0c1
0052b0a7  f30f100dc4abba00          MOVSS XMM1,dword ptr [0x00baabc4]
0052b0af  8bcf                      MOV ECX,EDI
0052b0b1  6a07                      PUSH 0x7
0052b0b3  6a00                      PUSH 0x0
0052b0b5  e8a6fd1900                CALL 0x006cae60
0052b0ba  0fb6c0                    MOVZX EAX,AL
0052b0bd  85c0                      TEST EAX,EAX
0052b0bf  eb23                      JMP 0x0052b0e4
0052b0c1  e89a3e1c00                CALL 0x006eef60
0052b0c6  33d2                      XOR EDX,EDX
0052b0c8  b914000000                MOV ECX,0x14
0052b0cd  f7f1                      DIV ECX
0052b0cf  85d2                      TEST EDX,EDX
0052b0d1  7555                      JNZ 0x0052b128
0052b0d3  8bcf                      MOV ECX,EDI
0052b0d5  e866371900                CALL 0x006be840
0052b0da  50                        PUSH EAX
0052b0db  8bcf                      MOV ECX,EDI
0052b0dd  e87ecc1a00                CALL 0x006d7d60
0052b0e2  84c0                      TEST AL,AL
0052b0e4  7442                      JZ 0x0052b128
0052b0e6  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052b0ed  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0052b0f7  7407                      JZ 0x0052b100
0052b0f9  ba32000000                MOV EDX,0x32
0052b0fe  eb11                      JMP 0x0052b111
0052b100  e85b3e1c00                CALL 0x006eef60
0052b105  33d2                      XOR EDX,EDX
0052b107  b91e000000                MOV ECX,0x1e
0052b10c  f7f1                      DIV ECX
0052b10e  83c214                    ADD EDX,0x14
0052b111  f30f101550adba00          MOVSS XMM2,dword ptr [0x00baad50]
0052b119  8bcf                      MOV ECX,EDI
0052b11b  6a00                      PUSH 0x0
0052b11d  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
0052b123  e8f8d91a00                CALL 0x006d8b20
0052b128  8b87a40b0000              MOV EAX,dword ptr [EDI + 0xba4]
0052b12e  85c0                      TEST EAX,EAX
0052b130  0f8e51020000              JLE 0x0052b387
0052b136  2b851cffffff              SUB EAX,dword ptr [EBP + 0xffffff1c]
0052b13c  8987a40b0000              MOV dword ptr [EDI + 0xba4],EAX
0052b142  e940020000                JMP 0x0052b387
0052b147  e8143e1c00                CALL 0x006eef60
0052b14c  33d2                      XOR EDX,EDX
0052b14e  b90a000000                MOV ECX,0xa
0052b153  f7f1                      DIV ECX
0052b155  85d2                      TEST EDX,EDX
0052b157  7542                      JNZ 0x0052b19b
0052b159  e8023e1c00                CALL 0x006eef60
0052b15e  51                        PUSH ECX
0052b15f  8bcf                      MOV ECX,EDI
0052b161  660f6ec0                  MOVD XMM0,EAX
0052b165  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0052b169  c1e81f                    SHR EAX,0x1f
0052b16c  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052b175  660f5ac0                  CVTPD2PS XMM0,XMM0
0052b179  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0052b181  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
0052b189  f30f580598a1ba00          ADDSS XMM0,dword ptr [0x00baa198]
0052b191  f30f110424                MOVSS dword ptr [ESP],XMM0
0052b196  e835b31800                CALL 0x006b64d0
0052b19b  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0052b1a2  7f52                      JG 0x0052b1f6
0052b1a4  f30f100d94aaba00          MOVSS XMM1,dword ptr [0x00baaa94]
0052b1ac  8bcf                      MOV ECX,EDI
0052b1ae  6a07                      PUSH 0x7
0052b1b0  6a00                      PUSH 0x0
0052b1b2  e8a9fc1900                CALL 0x006cae60
0052b1b7  84c0                      TEST AL,AL
0052b1b9  743b                      JZ 0x0052b1f6
0052b1bb  6a01                      PUSH 0x1
0052b1bd  8d4f48                    LEA ECX,[EDI + 0x48]
0052b1c0  c787a00b000023000000      MOV dword ptr [EDI + 0xba0],0x23
0052b1ca  6854ddb100                PUSH 0xb1dd54
0052b1cf  e8fcf3edff                CALL 0x0040a5d0
0052b1d4  84c0                      TEST AL,AL
0052b1d6  7415                      JZ 0x0052b1ed
0052b1d8  8d4f78                    LEA ECX,[EDI + 0x78]
0052b1db  e8d0efedff                CALL 0x0040a1b0
0052b1e0  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0052b1e7  8db73c030000              LEA ESI,[EDI + 0x33c]
0052b1ed  6a01                      PUSH 0x1
0052b1ef  8bcf                      MOV ECX,EDI
0052b1f1  e85ade1a00                CALL 0x006d9050
0052b1f6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052b1fa  0f8471010000              JZ 0x0052b371
0052b200  68dcd2b100                PUSH 0xb1d2dc
0052b205  8d4f78                    LEA ECX,[EDI + 0x78]
0052b208  e8c3fbedff                CALL 0x0040add0
0052b20d  84c0                      TEST AL,AL
0052b20f  0f845c010000              JZ 0x0052b371
0052b215  6a00                      PUSH 0x0
0052b217  8bcf                      MOV ECX,EDI
0052b219  e832de1a00                CALL 0x006d9050
0052b21e  51                        PUSH ECX
0052b21f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052b226  6a00                      PUSH 0x0
0052b228  6a02                      PUSH 0x2
0052b22a  51                        PUSH ECX
0052b22b  c704249a99593f            MOV dword ptr [ESP],0x3f59999a
0052b232  8bcf                      MOV ECX,EDI
0052b234  6a2c                      PUSH 0x2c
0052b236  e865b91a00                CALL 0x006d6ba0
0052b23b  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0052b241  e8ea3cf1ff                CALL 0x0043ef30
0052b246  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
0052b249  c7854cffffffcdcc4cbd      MOV dword ptr [EBP + 0xffffff4c],0xbd4ccccd
0052b253  c78550ffffffc3f5883f      MOV dword ptr [EBP + 0xffffff50],0x3f88f5c3
0052b25d  83f802                    CMP EAX,0x2
0052b260  7533                      JNZ 0x0052b295
0052b262  8b459c                    MOV EAX,dword ptr [EBP + -0x64]
0052b265  834d9801                  OR dword ptr [EBP + -0x68],0x1
0052b269  c78554ffffff0000c03f      MOV dword ptr [EBP + 0xffffff54],0x3fc00000
0052b273  89459c                    MOV dword ptr [EBP + -0x64],EAX
0052b276  33c9                      XOR ECX,ECX
0052b278  898d3cffffff              MOV dword ptr [EBP + 0xffffff3c],ECX
0052b27e  e8bdcf1a00                CALL 0x006d8240
0052b283  85c0                      TEST EAX,EAX
0052b285  7e1d                      JLE 0x0052b2a4
0052b287  85c9                      TEST ECX,ECX
0052b289  7519                      JNZ 0x0052b2a4
0052b28b  f30f10051ca8ba00          MOVSS XMM0,dword ptr [0x00baa81c]
0052b293  eb17                      JMP 0x0052b2ac
0052b295  83f801                    CMP EAX,0x1
0052b298  75dc                      JNZ 0x0052b276
0052b29a  394730                    CMP dword ptr [EDI + 0x30],EAX
0052b29d  74d7                      JZ 0x0052b276
0052b29f  8d4801                    LEA ECX,[EAX + 0x1]
0052b2a2  ebd4                      JMP 0x0052b278
0052b2a4  f30f1005e8a7ba00          MOVSS XMM0,dword ptr [0x00baa7e8]
0052b2ac  8bcf                      MOV ECX,EDI
0052b2ae  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0052b2b6  e885351900                CALL 0x006be840
0052b2bb  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052b2c2  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
0052b2ca  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0052b2d2  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
0052b2d6  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0052b2db  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0052b2e3  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
0052b2eb  742d                      JZ 0x0052b31a
0052b2ed  8d8f200f0000              LEA ECX,[EDI + 0xf20]
0052b2f3  6840b6c700                PUSH 0xc7b640
0052b2f8  e833534e00                CALL 0x00a10630
0052b2fd  84c0                      TEST AL,AL
0052b2ff  7419                      JZ 0x0052b31a
0052b301  f30f1001                  MOVSS XMM0,dword ptr [ECX]
0052b305  f30f118520ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM0
0052b30d  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
0052b312  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
0052b31a  8d8d20ffffff              LEA ECX,[EBP + 0xffffff20]
0052b320  e89b4c4e00                CALL 0x00a0ffc0
0052b325  f30f108d20ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff20]
0052b32d  8d8540ffffff              LEA EAX,[EBP + 0xffffff40]
0052b333  f30f108524ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff24]
0052b33b  8bcf                      MOV ECX,EDI
0052b33d  f30f598d38ffffff          MULSS XMM1,dword ptr [EBP + 0xffffff38]
0052b345  50                        PUSH EAX
0052b346  ffb53cffffff              PUSH dword ptr [EBP + 0xffffff3c]
0052b34c  f30f598538ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff38]
0052b354  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
0052b35a  50                        PUSH EAX
0052b35b  56                        PUSH ESI
0052b35c  f30f118d20ffffff          MOVSS dword ptr [EBP + 0xffffff20],XMM1
0052b364  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
0052b36c  e86fff1900                CALL 0x006cb2e0
0052b371  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0052b377  85c0                      TEST EAX,EAX
0052b379  7e0c                      JLE 0x0052b387
0052b37b  2b851cffffff              SUB EAX,dword ptr [EBP + 0xffffff1c]
0052b381  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0052b387  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052b38b  7409                      JZ 0x0052b396
0052b38d  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0052b394  7576                      JNZ 0x0052b40c
0052b396  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0052b399  85f6                      TEST ESI,ESI
0052b39b  744e                      JZ 0x0052b3eb
0052b39d  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0052b3a1  8bc6                      MOV EAX,ESI
0052b3a3  7202                      JC 0x0052b3a7
0052b3a5  8b06                      MOV EAX,dword ptr [ESI]
0052b3a7  b9fcd6b100                MOV ECX,0xb1d6fc
0052b3ac  0f1f4000                  NOP dword ptr [EAX]
0052b3b0  8a10                      MOV DL,byte ptr [EAX]
0052b3b2  3a11                      CMP DL,byte ptr [ECX]
0052b3b4  751a                      JNZ 0x0052b3d0
0052b3b6  84d2                      TEST DL,DL
0052b3b8  7412                      JZ 0x0052b3cc
0052b3ba  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0052b3bd  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0052b3c0  750e                      JNZ 0x0052b3d0
0052b3c2  83c002                    ADD EAX,0x2
0052b3c5  83c102                    ADD ECX,0x2
0052b3c8  84d2                      TEST DL,DL
0052b3ca  75e4                      JNZ 0x0052b3b0
0052b3cc  33c0                      XOR EAX,EAX
0052b3ce  eb05                      JMP 0x0052b3d5
0052b3d0  1bc0                      SBB EAX,EAX
0052b3d2  83c801                    OR EAX,0x1
0052b3d5  85c0                      TEST EAX,EAX
0052b3d7  7512                      JNZ 0x0052b3eb
0052b3d9  384634                    CMP byte ptr [ESI + 0x34],AL
0052b3dc  742e                      JZ 0x0052b40c
0052b3de  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0052b3e4  8d7748                    LEA ESI,[EDI + 0x48]
0052b3e7  7523                      JNZ 0x0052b40c
0052b3e9  eb03                      JMP 0x0052b3ee
0052b3eb  8d7748                    LEA ESI,[EDI + 0x48]
0052b3ee  6a01                      PUSH 0x1
0052b3f0  68fcd6b100                PUSH 0xb1d6fc
0052b3f5  8bce                      MOV ECX,ESI
0052b3f7  e8d4f1edff                CALL 0x0040a5d0
0052b3fc  84c0                      TEST AL,AL
0052b3fe  740c                      JZ 0x0052b40c
0052b400  8d4e30                    LEA ECX,[ESI + 0x30]
0052b403  e8a8ededff                CALL 0x0040a1b0
0052b408  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0052b40c  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0052b411  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0052b418  760a                      JBE 0x0052b424
0052b41a  c787b00b00000000a041      MOV dword ptr [EDI + 0xbb0],0x41a00000
0052b424  f30f109528ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff28]
0052b42c  f30f102540cbba00          MOVSS XMM4,dword ptr [0x00bacb40]
0052b434  0f28c2                    MOVAPS XMM0,XMM2
0052b437  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0052b43f  0f54c4                    ANDPS XMM0,XMM4
0052b442  0f2fd8                    COMISS XMM3,XMM0
0052b445  f30f108d2cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff2c]
0052b44d  770b                      JA 0x0052b45a
0052b44f  0f28c1                    MOVAPS XMM0,XMM1
0052b452  0f54c4                    ANDPS XMM0,XMM4
0052b455  0f2fd8                    COMISS XMM3,XMM0
0052b458  763c                      JBE 0x0052b496
0052b45a  0f28c1                    MOVAPS XMM0,XMM1
0052b45d  f30f59c1                  MULSS XMM0,XMM1
0052b461  0f28ca                    MOVAPS XMM1,XMM2
0052b464  f30f59ca                  MULSS XMM1,XMM2
0052b468  f30f58c1                  ADDSS XMM0,XMM1
0052b46c  e8dfa5f0ff                CALL 0x00435a50
0052b471  f30f100d54abba00          MOVSS XMM1,dword ptr [0x00baab54]
0052b479  0f2fc8                    COMISS XMM1,XMM0
0052b47c  7618                      JBE 0x0052b496
0052b47e  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052b486  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0052b48e  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0052b496  e8c53a1c00                CALL 0x006eef60
0052b49b  f30f101d20a1ba00          MOVSS XMM3,dword ptr [0x00baa120]
0052b4a3  660f6ec0                  MOVD XMM0,EAX
0052b4a7  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0052b4ab  c1e81f                    SHR EAX,0x1f
0052b4ae  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052b4b5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052b4be  660f5ac0                  CVTPD2PS XMM0,XMM0
0052b4c2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0052b4ca  f30f59c3                  MULSS XMM0,XMM3
0052b4ce  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
0052b4d6  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0052b4de  7475                      JZ 0x0052b555
0052b4e0  6a09                      PUSH 0x9
0052b4e2  8bcf                      MOV ECX,EDI
0052b4e4  e877cd1a00                CALL 0x006d8260
0052b4e9  84c0                      TEST AL,AL
0052b4eb  0f8412080000              JZ 0x0052bd03
0052b4f1  6a01                      PUSH 0x1
0052b4f3  68f40fb600                PUSH 0xb60ff4
0052b4f8  8d4f48                    LEA ECX,[EDI + 0x48]
0052b4fb  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0052b505  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052b50f  e8bcf0edff                CALL 0x0040a5d0
0052b514  84c0                      TEST AL,AL
0052b516  740f                      JZ 0x0052b527
0052b518  8d4f78                    LEA ECX,[EDI + 0x78]
0052b51b  e890ecedff                CALL 0x0040a1b0
0052b520  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0052b527  f30f101d20a1ba00          MOVSS XMM3,dword ptr [0x00baa120]
0052b52f  8db73c030000              LEA ESI,[EDI + 0x33c]
0052b535  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
0052b53f  8b06                      MOV EAX,dword ptr [ESI]
0052b541  898734030000              MOV dword ptr [EDI + 0x334],EAX
0052b547  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0052b54a  898738030000              MOV dword ptr [EDI + 0x338],EAX
0052b550  e9bc070000                JMP 0x0052bd11
0052b555  0f2f057ca8ba00            COMISS XMM0,dword ptr [0x00baa87c]
0052b55c  0f86d7020000              JBE 0x0052b839
0052b562  33c9                      XOR ECX,ECX
0052b564  eb06                      JMP 0x0052b56c
0052b566  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
0052b56c  8db73c030000              LEA ESI,[EDI + 0x33c]
0052b572  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0052b57a  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0052b581  9f                        LAHF
0052b582  f6c444                    TEST AH,0x44
0052b585  0f8aa6020000              JP 0x0052b831
0052b58b  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0052b593  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
0052b59a  9f                        LAHF
0052b59b  f6c444                    TEST AH,0x44
0052b59e  0f8a8d020000              JP 0x0052b831
0052b5a4  8bc1                      MOV EAX,ECX
0052b5a6  41                        INC ECX
0052b5a7  898d3cffffff              MOV dword ptr [EBP + 0xffffff3c],ECX
0052b5ad  83f802                    CMP EAX,0x2
0052b5b0  0f8d7b020000              JGE 0x0052b831
0052b5b6  e8a5391c00                CALL 0x006eef60
0052b5bb  0f57c0                    XORPS XMM0,XMM0
0052b5be  f20f2ac0                  CVTSI2SD XMM0,EAX
0052b5c2  c1e81f                    SHR EAX,0x1f
0052b5c5  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052b5ce  660f5ac0                  CVTPD2PS XMM0,XMM0
0052b5d2  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0052b5da  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
0052b5e2  f30f58c0                  ADDSS XMM0,XMM0
0052b5e6  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0052b5ee  e86d391c00                CALL 0x006eef60
0052b5f3  0f57c0                    XORPS XMM0,XMM0
0052b5f6  f20f2ac0                  CVTSI2SD XMM0,EAX
0052b5fa  c1e81f                    SHR EAX,0x1f
0052b5fd  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052b606  660f5ac0                  CVTPD2PS XMM0,XMM0
0052b60a  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0052b612  f30f5905e0aaba00          MULSS XMM0,dword ptr [0x00baaae0]
0052b61a  f30f580550a9ba00          ADDSS XMM0,dword ptr [0x00baa950]
0052b622  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0052b62a  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
0052b632  e8091fefff                CALL 0x0041d540
0052b637  f30f598530ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff30]
0052b63f  f30f5806                  ADDSS XMM0,dword ptr [ESI]
0052b643  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0052b64b  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
0052b653  e8c81eefff                CALL 0x0041d520
0052b658  f30f598530ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff30]
0052b660  8bcf                      MOV ECX,EDI
0052b662  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
0052b667  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0052b66f  e8cc311900                CALL 0x006be840
0052b674  837f2c01                  CMP dword ptr [EDI + 0x2c],0x1
0052b678  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0052b680  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0052b688  f30f5c9534ffffff          SUBSS XMM2,dword ptr [EBP + 0xffffff34]
0052b690  f30f5c8d30ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff30]
0052b698  752c                      JNZ 0x0052b6c6
0052b69a  f30f59c9                  MULSS XMM1,XMM1
0052b69e  f30f59d2                  MULSS XMM2,XMM2
0052b6a2  f30f58ca                  ADDSS XMM1,XMM2
0052b6a6  0f28c1                    MOVAPS XMM0,XMM1
0052b6a9  e8a2a3f0ff                CALL 0x00435a50
0052b6ae  0f2f0524a9ba00            COMISS XMM0,dword ptr [0x00baa924]
0052b6b5  7659                      JBE 0x0052b710
0052b6b7  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
0052b6bf  0f2fc8                    COMISS XMM1,XMM0
0052b6c2  764c                      JBE 0x0052b710
0052b6c4  eb5d                      JMP 0x0052b723
0052b6c6  f30f102540cbba00          MOVSS XMM4,dword ptr [0x00bacb40]
0052b6ce  0f28c2                    MOVAPS XMM0,XMM2
0052b6d1  f30f101d7ca8ba00          MOVSS XMM3,dword ptr [0x00baa87c]
0052b6d9  0f54c4                    ANDPS XMM0,XMM4
0052b6dc  0f2fc3                    COMISS XMM0,XMM3
0052b6df  762f                      JBE 0x0052b710
0052b6e1  0f28c1                    MOVAPS XMM0,XMM1
0052b6e4  0f54c4                    ANDPS XMM0,XMM4
0052b6e7  0f2fc3                    COMISS XMM0,XMM3
0052b6ea  7624                      JBE 0x0052b710
0052b6ec  f30f59c9                  MULSS XMM1,XMM1
0052b6f0  f30f59d2                  MULSS XMM2,XMM2
0052b6f4  f30f58ca                  ADDSS XMM1,XMM2
0052b6f8  0f28c1                    MOVAPS XMM0,XMM1
0052b6fb  e850a3f0ff                CALL 0x00435a50
0052b700  0f2f0594aaba00            COMISS XMM0,dword ptr [0x00baaa94]
0052b707  7712                      JA 0x0052b71b
0052b709  0f1f8000000000            NOP dword ptr [EAX]
0052b710  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
0052b716  e957feffff                JMP 0x0052b572
0052b71b  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
0052b723  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0052b72b  f30f108534ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff34]
0052b733  f30f5cc2                  SUBSS XMM0,XMM2
0052b737  a17816c700                MOV EAX,[0x00c71678]
0052b73c  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0052b742  f30f5ec2                  DIVSS XMM0,XMM2
0052b746  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0052b74e  f30f2cd0                  CVTTSS2SI EDX,XMM0
0052b752  f30f108530ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff30]
0052b75a  899538ffffff              MOV dword ptr [EBP + 0xffffff38],EDX
0052b760  f30f5cc1                  SUBSS XMM0,XMM1
0052b764  f30f5ec2                  DIVSS XMM0,XMM2
0052b768  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
0052b770  f30f2cc8                  CVTTSS2SI ECX,XMM0
0052b774  85d2                      TEST EDX,EDX
0052b776  0f88eafdffff              JS 0x0052b566
0052b77c  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
0052b77f  3bd0                      CMP EDX,EAX
0052b781  0f8ddffdffff              JGE 0x0052b566
0052b787  85c9                      TEST ECX,ECX
0052b789  0f88d7fdffff              JS 0x0052b566
0052b78f  3b4e10                    CMP ECX,dword ptr [ESI + 0x10]
0052b792  0f8dcefdffff              JGE 0x0052b566
0052b798  0fafc1                    IMUL EAX,ECX
0052b79b  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
0052b7a1  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
0052b7a7  03c2                      ADD EAX,EDX
0052b7a9  0f88bdfdffff              JS 0x0052b56c
0052b7af  3dc0010000                CMP EAX,0x1c0
0052b7b4  7d11                      JGE 0x0052b7c7
0052b7b6  81bc866c070000f4010000    CMP dword ptr [ESI + EAX*0x4 + 0x76c],0x1f4
0052b7c1  0f8da5fdffff              JGE 0x0052b56c
0052b7c7  8bce                      MOV ECX,ESI
0052b7c9  50                        PUSH EAX
0052b7ca  e831502c00                CALL 0x007f0800
0052b7cf  8b8d3cffffff              MOV ECX,dword ptr [EBP + 0xffffff3c]
0052b7d5  85c0                      TEST EAX,EAX
0052b7d7  0f858ffdffff              JNZ 0x0052b56c
0052b7dd  8b4e0c                    MOV ECX,dword ptr [ESI + 0xc]
0052b7e0  8b8534ffffff              MOV EAX,dword ptr [EBP + 0xffffff34]
0052b7e6  8bb538ffffff              MOV ESI,dword ptr [EBP + 0xffffff38]
0052b7ec  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
0052b7f4  8d0430                    LEA EAX,[EAX + ESI*0x1]
0052b7f7  99                        CDQ
0052b7f8  f7f9                      IDIV ECX
0052b7fa  660f6eca                  MOVD XMM1,EDX
0052b7fe  660f6ec0                  MOVD XMM0,EAX
0052b802  0f5bc9                    CVTDQ2PS XMM1,XMM1
0052b805  0f5bc0                    CVTDQ2PS XMM0,XMM0
0052b808  f30f59ca                  MULSS XMM1,XMM2
0052b80c  f30f59c2                  MULSS XMM0,XMM2
0052b810  f30f58ca                  ADDSS XMM1,XMM2
0052b814  f30f580500aaba00          ADDSS XMM0,dword ptr [0x00baaa00]
0052b81c  f30f118f34030000          MOVSS dword ptr [EDI + 0x334],XMM1
0052b824  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0052b82c  e935fdffff                JMP 0x0052b566
0052b831  f30f101d20a1ba00          MOVSS XMM3,dword ptr [0x00baa120]
0052b839  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
0052b841  0f2f0504a9ba00            COMISS XMM0,dword ptr [0x00baa904]
0052b848  0f86bd040000              JBE 0x0052bd0b
0052b84e  8d8f34030000              LEA ECX,[EDI + 0x334]
0052b854  6840b6c700                PUSH 0xc7b640
0052b859  e8d24d4e00                CALL 0x00a10630
0052b85e  84c0                      TEST AL,AL
0052b860  0f84a5040000              JZ 0x0052bd0b
0052b866  6a01                      PUSH 0x1
0052b868  68f40fb600                PUSH 0xb60ff4
0052b86d  8d4f48                    LEA ECX,[EDI + 0x48]
0052b870  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
0052b87a  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052b884  e847ededff                CALL 0x0040a5d0
0052b889  84c0                      TEST AL,AL
0052b88b  740f                      JZ 0x0052b89c
0052b88d  8d4f78                    LEA ECX,[EDI + 0x78]
0052b890  e81be9edff                CALL 0x0040a1b0
0052b895  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0052b89c  817f2803010000            CMP dword ptr [EDI + 0x28],0x103
0052b8a3  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
0052b8ad  0f8550040000              JNZ 0x0052bd03
0052b8b3  c78534ffffff36040000      MOV dword ptr [EBP + 0xffffff34],0x436
0052b8bd  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0052b8c3  8d8d34ffffff              LEA ECX,[EBP + 0xffffff34]
0052b8c9  e8b2ae4200                CALL 0x00956780
0052b8ce  83ec08                    SUB ESP,0x8
0052b8d1  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0052b8d7  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0052b8df  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052b8e6  6a00                      PUSH 0x0
0052b8e8  6a02                      PUSH 0x2
0052b8ea  51                        PUSH ECX
0052b8eb  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052b8f2  ffb534ffffff              PUSH dword ptr [EBP + 0xffffff34]
0052b8f8  e833234000                CALL 0x0092dc30
0052b8fd  e901040000                JMP 0x0052bd03
0052b902  83f806                    CMP EAX,0x6
0052b905  0f8566010000              JNZ 0x0052ba71
0052b90b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052b912  744d                      JZ 0x0052b961
0052b914  8d8f34030000              LEA ECX,[EDI + 0x334]
0052b91a  6840b6c700                PUSH 0xc7b640
0052b91f  e80c4d4e00                CALL 0x00a10630
0052b924  84c0                      TEST AL,AL
0052b926  7439                      JZ 0x0052b961
0052b928  6a02                      PUSH 0x2
0052b92a  0f28d1                    MOVAPS XMM2,XMM1
0052b92d  8bcf                      MOV ECX,EDI
0052b92f  e8ecd11a00                CALL 0x006d8b20
0052b934  6a01                      PUSH 0x1
0052b936  6a00                      PUSH 0x0
0052b938  8d8f14040000              LEA ECX,[EDI + 0x414]
0052b93e  51                        PUSH ECX
0052b93f  c7042400008040            MOV dword ptr [ESP],0x40800000
0052b946  6840b6c700                PUSH 0xc7b640
0052b94b  e8707a2b00                CALL 0x007e33c0
0052b950  8b06                      MOV EAX,dword ptr [ESI]
0052b952  898734030000              MOV dword ptr [EDI + 0x334],EAX
0052b958  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0052b95b  898738030000              MOV dword ptr [EDI + 0x338],EAX
0052b961  83bf1004000018            CMP dword ptr [EDI + 0x410],0x18
0052b968  8d8f34030000              LEA ECX,[EDI + 0x334]
0052b96e  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
0052b978  0f8eb1000000              JLE 0x0052ba2f
0052b97e  6840b6c700                PUSH 0xc7b640
0052b983  e8a84c4e00                CALL 0x00a10630
0052b988  84c0                      TEST AL,AL
0052b98a  0f849f000000              JZ 0x0052ba2f
0052b990  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
0052b996  8d4f48                    LEA ECX,[EDI + 0x48]
0052b999  6a01                      PUSH 0x1
0052b99b  68ec0fb600                PUSH 0xb60fec
0052b9a0  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0052b9a3  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
0052b9a9  e822ecedff                CALL 0x0040a5d0
0052b9ae  84c0                      TEST AL,AL
0052b9b0  7415                      JZ 0x0052b9c7
0052b9b2  8d4f78                    LEA ECX,[EDI + 0x78]
0052b9b5  e8f6e7edff                CALL 0x0040a1b0
0052b9ba  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0052b9c1  8db73c030000              LEA ESI,[EDI + 0x33c]
0052b9c7  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0052b9d1  8bcf                      MOV ECX,EDI
0052b9d3  8b8734030000              MOV EAX,dword ptr [EDI + 0x334]
0052b9d9  8906                      MOV dword ptr [ESI],EAX
0052b9db  8b8738030000              MOV EAX,dword ptr [EDI + 0x338]
0052b9e1  894604                    MOV dword ptr [ESI + 0x4],EAX
0052b9e4  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0052b9ec  f30f118734030000          MOVSS dword ptr [EDI + 0x334],XMM0
0052b9f4  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0052b9fc  f30f118738030000          MOVSS dword ptr [EDI + 0x338],XMM0
0052ba04  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
0052ba0e  e8ddd21a00                CALL 0x006d8cf0
0052ba13  817f2803010000            CMP dword ptr [EDI + 0x28],0x103
0052ba1a  0f85e3020000              JNZ 0x0052bd03
0052ba20  c78534ffffff37040000      MOV dword ptr [EBP + 0xffffff34],0x437
0052ba2a  e98efeffff                JMP 0x0052b8bd
0052ba2f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0052ba33  740d                      JZ 0x0052ba42
0052ba35  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0052ba3c  0f85c1020000              JNZ 0x0052bd03
0052ba42  6840b6c700                PUSH 0xc7b640
0052ba47  e8b44b4e00                CALL 0x00a10600
0052ba4c  f30f101d20a1ba00          MOVSS XMM3,dword ptr [0x00baa120]
0052ba54  8db73c030000              LEA ESI,[EDI + 0x33c]
0052ba5a  84c0                      TEST AL,AL
0052ba5c  0f84af020000              JZ 0x0052bd11
0052ba62  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0052ba6c  e9a0020000                JMP 0x0052bd11
0052ba71  83f808                    CMP EAX,0x8
0052ba74  0f8589020000              JNZ 0x0052bd03
0052ba7a  6a00                      PUSH 0x0
0052ba7c  0f28d1                    MOVAPS XMM2,XMM1
0052ba7f  8bcf                      MOV ECX,EDI
0052ba81  e89ad01a00                CALL 0x006d8b20
0052ba86  83bd1cffffff00            CMP dword ptr [EBP + 0xffffff1c],0x0
0052ba8d  c78530ffffff00000000      MOV dword ptr [EBP + 0xffffff30],0x0
0052ba97  0f8e66020000              JLE 0x0052bd03
0052ba9d  b90a000000                MOV ECX,0xa
0052baa2  8b87a00b0000              MOV EAX,dword ptr [EDI + 0xba0]
0052baa8  85c0                      TEST EAX,EAX
0052baaa  0f8e3f020000              JLE 0x0052bcef
0052bab0  48                        DEC EAX
0052bab1  8987a00b0000              MOV dword ptr [EDI + 0xba0],EAX
0052bab7  99                        CDQ
0052bab8  f7f9                      IDIV ECX
0052baba  85d2                      TEST EDX,EDX
0052babc  0f8512020000              JNZ 0x0052bcd4
0052bac2  6a01                      PUSH 0x1
0052bac4  6854ddb100                PUSH 0xb1dd54
0052bac9  8d4f48                    LEA ECX,[EDI + 0x48]
0052bacc  e8ffeaedff                CALL 0x0040a5d0
0052bad1  84c0                      TEST AL,AL
0052bad3  740f                      JZ 0x0052bae4
0052bad5  8d4f78                    LEA ECX,[EDI + 0x78]
0052bad8  e8d3e6edff                CALL 0x0040a1b0
0052badd  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0052bae4  8bcf                      MOV ECX,EDI
0052bae6  e8552d1900                CALL 0x006be840
0052baeb  8bcf                      MOV ECX,EDI
0052baed  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0052baf5  f30f109040030000          MOVSS XMM2,dword ptr [EAX + 0x340]
0052bafd  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
0052bb05  f30f119538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM2
0052bb0d  e82e2d1900                CALL 0x006be840
0052bb12  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052bb19  8db73c030000              LEA ESI,[EDI + 0x33c]
0052bb1f  f30f10953cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff3c]
0052bb27  f30f101e                  MOVSS XMM3,dword ptr [ESI]
0052bb2b  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0052bb33  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
0052bb3b  f30f108864030000          MOVSS XMM1,dword ptr [EAX + 0x364]
0052bb43  f30f590d84a7ba00          MULSS XMM1,dword ptr [0x00baa784]
0052bb4b  f30f58d0                  ADDSS XMM2,XMM0
0052bb4f  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
0052bb57  f30f58c1                  ADDSS XMM0,XMM1
0052bb5b  f30f5cd3                  SUBSS XMM2,XMM3
0052bb5f  f30f11953cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM2
0052bb67  f30f105604                MOVSS XMM2,dword ptr [ESI + 0x4]
0052bb6c  f30f5cc2                  SUBSS XMM0,XMM2
0052bb70  f30f118538ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM0
0052bb78  7462                      JZ 0x0052bbdc
0052bb7a  8b8f280f0000              MOV ECX,dword ptr [EDI + 0xf28]
0052bb80  85c9                      TEST ECX,ECX
0052bb82  7420                      JZ 0x0052bba4
0052bb84  8b813c030000              MOV EAX,dword ptr [ECX + 0x33c]
0052bb8a  8b8940030000              MOV ECX,dword ptr [ECX + 0x340]
0052bb90  898520ffffff              MOV dword ptr [EBP + 0xffffff20],EAX
0052bb96  8d8520ffffff              LEA EAX,[EBP + 0xffffff20]
0052bb9c  898d24ffffff              MOV dword ptr [EBP + 0xffffff24],ECX
0052bba2  eb17                      JMP 0x0052bbbb
0052bba4  8b06                      MOV EAX,dword ptr [ESI]
0052bba6  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0052bba9  8985fcfeffff              MOV dword ptr [EBP + 0xfffffefc],EAX
0052bbaf  8d85fcfeffff              LEA EAX,[EBP + 0xfffffefc]
0052bbb5  898d00ffffff              MOV dword ptr [EBP + 0xffffff00],ECX
0052bbbb  f30f1000                  MOVSS XMM0,dword ptr [EAX]
0052bbbf  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0052bbc4  f30f5cc3                  SUBSS XMM0,XMM3
0052bbc8  f30f5cca                  SUBSS XMM1,XMM2
0052bbcc  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0052bbd4  f30f118d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM1
0052bbdc  8d8d40ffffff              LEA ECX,[EBP + 0xffffff40]
0052bbe2  e84933f1ff                CALL 0x0043ef30
0052bbe7  f30f108d38ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff38]
0052bbef  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0052bbf7  f30f59c0                  MULSS XMM0,XMM0
0052bbfb  898534ffffff              MOV dword ptr [EBP + 0xffffff34],EAX
0052bc01  f30f59c9                  MULSS XMM1,XMM1
0052bc05  f30f58c1                  ADDSS XMM0,XMM1
0052bc09  e8429ef0ff                CALL 0x00435a50
0052bc0e  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0052bc15  f30f109538ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff38]
0052bc1d  761e                      JBE 0x0052bc3d
0052bc1f  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0052bc27  f30f5ec8                  DIVSS XMM1,XMM0
0052bc2b  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0052bc33  f30f59c1                  MULSS XMM0,XMM1
0052bc37  f30f59d1                  MULSS XMM2,XMM1
0052bc3b  eb08                      JMP 0x0052bc45
0052bc3d  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0052bc45  ffb534ffffff              PUSH dword ptr [EBP + 0xffffff34]
0052bc4b  f30f59051ca8ba00          MULSS XMM0,dword ptr [0x00baa81c]
0052bc53  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0052bc59  8bcf                      MOV ECX,EDI
0052bc5b  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
0052bc63  6a00                      PUSH 0x0
0052bc65  50                        PUSH EAX
0052bc66  56                        PUSH ESI
0052bc67  f30f11850cffffff          MOVSS dword ptr [EBP + 0xffffff0c],XMM0
0052bc6f  f30f119510ffffff          MOVSS dword ptr [EBP + 0xffffff10],XMM2
0052bc77  e864f61900                CALL 0x006cb2e0
0052bc7c  817f2803010000            CMP dword ptr [EDI + 0x28],0x103
0052bc83  754a                      JNZ 0x0052bccf
0052bc85  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0052bc8b  8d8d34ffffff              LEA ECX,[EBP + 0xffffff34]
0052bc91  c78534ffffff35040000      MOV dword ptr [EBP + 0xffffff34],0x435
0052bc9b  e8e0aa4200                CALL 0x00956780
0052bca0  83ec08                    SUB ESP,0x8
0052bca3  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0052bca9  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0052bcb1  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052bcb8  6a00                      PUSH 0x0
0052bcba  6a02                      PUSH 0x2
0052bcbc  51                        PUSH ECX
0052bcbd  c704240000803f            MOV dword ptr [ESP],0x3f800000
0052bcc4  ffb534ffffff              PUSH dword ptr [EBP + 0xffffff34]
0052bcca  e8611f4000                CALL 0x0092dc30
0052bccf  b90a000000                MOV ECX,0xa
0052bcd4  8b9530ffffff              MOV EDX,dword ptr [EBP + 0xffffff30]
0052bcda  42                        INC EDX
0052bcdb  899530ffffff              MOV dword ptr [EBP + 0xffffff30],EDX
0052bce1  3b951cffffff              CMP EDX,dword ptr [EBP + 0xffffff1c]
0052bce7  0f8cb5fdffff              JL 0x0052baa2
0052bced  eb14                      JMP 0x0052bd03
0052bcef  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0052bcf9  c787a40b00001e000000      MOV dword ptr [EDI + 0xba4],0x1e
0052bd03  f30f101d20a1ba00          MOVSS XMM3,dword ptr [0x00baa120]
0052bd0b  8db73c030000              LEA ESI,[EDI + 0x33c]
0052bd11  817f2803010000            CMP dword ptr [EDI + 0x28],0x103
0052bd18  754c                      JNZ 0x0052bd66
0052bd1a  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
0052bd22  0f57d2                    XORPS XMM2,XMM2
0052bd25  0f2fd1                    COMISS XMM2,XMM1
0052bd28  763c                      JBE 0x0052bd66
0052bd2a  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0052bd32  8d8534ffffff              LEA EAX,[EBP + 0xffffff34]
0052bd38  f30f59c3                  MULSS XMM0,XMM3
0052bd3c  8d8d30ffffff              LEA ECX,[EBP + 0xffffff30]
0052bd42  c78530ffffff00000000      MOV dword ptr [EBP + 0xffffff30],0x0
0052bd4c  f30f58c1                  ADDSS XMM0,XMM1
0052bd50  0f2fd0                    COMISS XMM2,XMM0
0052bd53  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0052bd5b  0f46c1                    CMOVBE EAX,ECX
0052bd5e  8b00                      MOV EAX,dword ptr [EAX]
0052bd60  8987b80b0000              MOV dword ptr [EDI + 0xbb8],EAX
0052bd66  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
0052bd6d  0f8f98040000              JG 0x0052c20b
0052bd73  f30f108d2cffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff2c]
0052bd7b  f30f108528ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff28]
0052bd83  f30f59c9                  MULSS XMM1,XMM1
0052bd87  f30f59c0                  MULSS XMM0,XMM0
0052bd8b  f30f58c8                  ADDSS XMM1,XMM0
0052bd8f  0f28c1                    MOVAPS XMM0,XMM1
0052bd92  f30f118d3cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM1
0052bd9a  e8b19cf0ff                CALL 0x00435a50
0052bd9f  f30f109d28ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff28]
0052bda7  0f57ed                    XORPS XMM5,XMM5
0052bdaa  0f2fc5                    COMISS XMM0,XMM5
0052bdad  f30f10952cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff2c]
0052bdb5  7617                      JBE 0x0052bdce
0052bdb7  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0052bdbf  f30f5ec8                  DIVSS XMM1,XMM0
0052bdc3  0f28c1                    MOVAPS XMM0,XMM1
0052bdc6  f30f59d1                  MULSS XMM2,XMM1
0052bdca  f30f59d8                  MULSS XMM3,XMM0
0052bdce  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0052bdd6  f30f591d20a2ba00          MULSS XMM3,dword ptr [0x00baa220]
0052bdde  f30f591520a2ba00          MULSS XMM2,dword ptr [0x00baa220]
0052bde6  0f2ee5                    UCOMISS XMM4,XMM5
0052bde9  9f                        LAHF
0052bdea  f6c444                    TEST AH,0x44
0052bded  7b3b                      JNP 0x0052be2a
0052bdef  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0052bdf7  0f28c1                    MOVAPS XMM0,XMM1
0052bdfa  f30f59ca                  MULSS XMM1,XMM2
0052bdfe  f30f59c3                  MULSS XMM0,XMM3
0052be02  f30f5ecc                  DIVSS XMM1,XMM4
0052be06  f30f5ec4                  DIVSS XMM0,XMM4
0052be0a  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0052be12  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0052be1a  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0052be22  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0052be2a  8b4728                    MOV EAX,dword ptr [EDI + 0x28]
0052be2d  3d03010000                CMP EAX,0x103
0052be32  0f858c040000              JNZ 0x0052c2c4
0052be38  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052be3f  0f84f2000000              JZ 0x0052bf37
0052be45  6a08                      PUSH 0x8
0052be47  8bcf                      MOV ECX,EDI
0052be49  e812c41a00                CALL 0x006d8260
0052be4e  f30f108fb80b0000          MOVSS XMM1,dword ptr [EDI + 0xbb8]
0052be56  84c0                      TEST AL,AL
0052be58  0f84bd000000              JZ 0x0052bf1b
0052be5e  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0052be65  0f8259040000              JC 0x0052c2c4
0052be6b  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0052be73  8d850cffffff              LEA EAX,[EBP + 0xffffff0c]
0052be79  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0052be81  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0052be87  f30f5905d0a0ba00          MULSS XMM0,dword ptr [0x00baa0d0]
0052be8f  50                        PUSH EAX
0052be90  f30f58c1                  ADDSS XMM0,XMM1
0052be94  f30f5d0554a4ba00          MINSS XMM0,dword ptr [0x00baa454]
0052be9c  f30f118534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM0
0052bea4  f30f1187b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM0
0052beac  e87f414e00                CALL 0x00a10030
0052beb1  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0052beb9  0f2e25e49fba00            UCOMISS XMM4,dword ptr [0x00ba9fe4]
0052bec0  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0052bec8  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0052becc  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
0052bed1  f30f5c8d34ffffff          SUBSS XMM1,dword ptr [EBP + 0xffffff34]
0052bed9  f30f591554a5ba00          MULSS XMM2,dword ptr [0x00baa554]
0052bee1  f30f591d54a5ba00          MULSS XMM3,dword ptr [0x00baa554]
0052bee9  9f                        LAHF
0052beea  f30f59d1                  MULSS XMM2,XMM1
0052beee  f30f59d9                  MULSS XMM3,XMM1
0052bef2  f6c444                    TEST AH,0x44
0052bef5  0f8bc9030000              JNP 0x0052c2c4
0052befb  f30f108d30ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff30]
0052bf03  0f28c1                    MOVAPS XMM0,XMM1
0052bf06  f30f59cb                  MULSS XMM1,XMM3
0052bf0a  f30f59c2                  MULSS XMM0,XMM2
0052bf0e  f30f5ecc                  DIVSS XMM1,XMM4
0052bf12  f30f5ec4                  DIVSS XMM0,XMM4
0052bf16  e989030000                JMP 0x0052c2a4
0052bf1b  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0052bf22  0f869c030000              JBE 0x0052c2c4
0052bf28  c787b80b0000000080bf      MOV dword ptr [EDI + 0xbb8],0xbf800000
0052bf32  e98d030000                JMP 0x0052c2c4
0052bf37  a17816c700                MOV EAX,[0x00c71678]
0052bf3c  f30f101dd0a9ba00          MOVSS XMM3,dword ptr [0x00baa9d0]
0052bf44  6a04                      PUSH 0x4
0052bf46  56                        PUSH ESI
0052bf47  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0052bf4d  8d8504ffffff              LEA EAX,[EBP + 0xffffff04]
0052bf53  81c118120000              ADD ECX,0x1218
0052bf59  50                        PUSH EAX
0052bf5a  e831e8eeff                CALL 0x0041a790
0052bf5f  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0052bf66  8b8d10ffffff              MOV ECX,dword ptr [EBP + 0xffffff10]
0052bf6c  85c9                      TEST ECX,ECX
0052bf6e  0f8463020000              JZ 0x0052c1d7
0052bf74  f30f10853cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff3c]
0052bf7c  33f6                      XOR ESI,ESI
0052bf7e  f30f103540b6c700          MOVSS XMM6,dword ptr [0x00c7b640]
0052bf86  f30f103d44b6c700          MOVSS XMM7,dword ptr [0x00c7b644]
0052bf8e  f30f11b534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM6
0052bf96  f30f11bd30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM7
0052bf9e  c7852cffffff00000000      MOV dword ptr [EBP + 0xffffff2c],0x0
0052bfa8  f30f5f05e49fba00          MAXSS XMM0,dword ptr [0x00ba9fe4]
0052bfb0  f30f5d0534acba00          MINSS XMM0,dword ptr [0x00baac34]
0052bfb8  f30f5e0534acba00          DIVSS XMM0,dword ptr [0x00baac34]
0052bfc0  f30f11853cffffff          MOVSS dword ptr [EBP + 0xffffff3c],XMM0
0052bfc8  85c9                      TEST ECX,ECX
0052bfca  0f8407020000              JZ 0x0052c1d7
0052bfd0  8d973c030000              LEA EDX,[EDI + 0x33c]
0052bfd6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
0052bfe0  8b8508ffffff              MOV EAX,dword ptr [EBP + 0xffffff08]
0052bfe6  f30f102a                  MOVSS XMM5,dword ptr [EDX]
0052bfea  f30f106204                MOVSS XMM4,dword ptr [EDX + 0x4]
0052bfef  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
0052bff2  f30f5ca83c030000          SUBSS XMM5,dword ptr [EAX + 0x33c]
0052bffa  f30f5ca040030000          SUBSS XMM4,dword ptr [EAX + 0x340]
0052c002  f30f109864030000          MOVSS XMM3,dword ptr [EAX + 0x364]
0052c00a  f30f109060030000          MOVSS XMM2,dword ptr [EAX + 0x360]
0052c012  f30f119d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM3
0052c01a  0f28cd                    MOVAPS XMM1,XMM5
0052c01d  0f28c4                    MOVAPS XMM0,XMM4
0052c020  f30f59ca                  MULSS XMM1,XMM2
0052c024  f30f59c3                  MULSS XMM0,XMM3
0052c028  f30f58c8                  ADDSS XMM1,XMM0
0052c02c  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0052c033  0f864c010000              JBE 0x0052c185
0052c039  0f28cc                    MOVAPS XMM1,XMM4
0052c03c  0f28c5                    MOVAPS XMM0,XMM5
0052c03f  f30f59cc                  MULSS XMM1,XMM4
0052c043  f30f59c5                  MULSS XMM0,XMM5
0052c047  f30f59eb                  MULSS XMM5,XMM3
0052c04b  f30f58c8                  ADDSS XMM1,XMM0
0052c04f  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0052c057  f30f5e0d34acba00          DIVSS XMM1,dword ptr [0x00baac34]
0052c05f  f30f5cc1                  SUBSS XMM0,XMM1
0052c063  0f57c9                    XORPS XMM1,XMM1
0052c066  f30f118524ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM0
0052c06e  f30f100570cbba00          MOVSS XMM0,dword ptr [0x00bacb70]
0052c076  0f57d0                    XORPS XMM2,XMM0
0052c079  f30f59e2                  MULSS XMM4,XMM2
0052c07d  f30f119528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM2
0052c085  f30f58e5                  ADDSS XMM4,XMM5
0052c089  0f2fcc                    COMISS XMM1,XMM4
0052c08c  7616                      JBE 0x0052c0a4
0052c08e  0f57d8                    XORPS XMM3,XMM0
0052c091  0f57d0                    XORPS XMM2,XMM0
0052c094  f30f119d38ffffff          MOVSS dword ptr [EBP + 0xffffff38],XMM3
0052c09c  f30f119528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM2
0052c0a4  e8b72e1c00                CALL 0x006eef60
0052c0a9  0f57c0                    XORPS XMM0,XMM0
0052c0ac  f30f108d28ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff28]
0052c0b4  f30f59c9                  MULSS XMM1,XMM1
0052c0b8  f20f2ac0                  CVTSI2SD XMM0,EAX
0052c0bc  c1e81f                    SHR EAX,0x1f
0052c0bf  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0052c0c8  660f5ac0                  CVTPD2PS XMM0,XMM0
0052c0cc  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0052c0d4  f30f118518ffffff          MOVSS dword ptr [EBP + 0xffffff18],XMM0
0052c0dc  f30f108538ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff38]
0052c0e4  f30f59c0                  MULSS XMM0,XMM0
0052c0e8  f30f58c1                  ADDSS XMM0,XMM1
0052c0ec  e85f99f0ff                CALL 0x00435a50
0052c0f1  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0052c0f8  f30f108d38ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff38]
0052c100  763a                      JBE 0x0052c13c
0052c102  f30f109518ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff18]
0052c10a  f30f58d2                  ADDSS XMM2,XMM2
0052c10e  f30f581530a6ba00          ADDSS XMM2,dword ptr [0x00baa630]
0052c116  f30f599524ffffff          MULSS XMM2,dword ptr [EBP + 0xffffff24]
0052c11e  f30f59953cffffff          MULSS XMM2,dword ptr [EBP + 0xffffff3c]
0052c126  f30f5ed0                  DIVSS XMM2,XMM0
0052c12a  f30f108528ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff28]
0052c132  f30f59ca                  MULSS XMM1,XMM2
0052c136  f30f59c2                  MULSS XMM0,XMM2
0052c13a  eb08                      JMP 0x0052c144
0052c13c  f30f108528ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff28]
0052c144  f30f588d34ffffff          ADDSS XMM1,dword ptr [EBP + 0xffffff34]
0052c14c  f30f588530ffffff          ADDSS XMM0,dword ptr [EBP + 0xffffff30]
0052c154  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
0052c15a  8d973c030000              LEA EDX,[EDI + 0x33c]
0052c160  8b8d10ffffff              MOV ECX,dword ptr [EBP + 0xffffff10]
0052c166  40                        INC EAX
0052c167  89852cffffff              MOV dword ptr [EBP + 0xffffff2c],EAX
0052c16d  0f28f1                    MOVAPS XMM6,XMM1
0052c170  0f28f8                    MOVAPS XMM7,XMM0
0052c173  f30f11b534ffffff          MOVSS dword ptr [EBP + 0xffffff34],XMM6
0052c17b  f30f11bd30ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM7
0052c183  eb06                      JMP 0x0052c18b
0052c185  8b852cffffff              MOV EAX,dword ptr [EBP + 0xffffff2c]
0052c18b  46                        INC ESI
0052c18c  3bf1                      CMP ESI,ECX
0052c18e  0f824cfeffff              JC 0x0052bfe0
0052c194  85c0                      TEST EAX,EAX
0052c196  7e3f                      JLE 0x0052c1d7
0052c198  660f6ec8                  MOVD XMM1,EAX
0052c19c  0f5bc9                    CVTDQ2PS XMM1,XMM1
0052c19f  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0052c1a7  f30f5ef1                  DIVSS XMM6,XMM1
0052c1ab  f30f5ef9                  DIVSS XMM7,XMM1
0052c1af  f30f59f0                  MULSS XMM6,XMM0
0052c1b3  f30f59f8                  MULSS XMM7,XMM0
0052c1b7  f30f58b760030000          ADDSS XMM6,dword ptr [EDI + 0x360]
0052c1bf  f30f58bf64030000          ADDSS XMM7,dword ptr [EDI + 0x364]
0052c1c7  f30f11b760030000          MOVSS dword ptr [EDI + 0x360],XMM6
0052c1cf  f30f11bf64030000          MOVSS dword ptr [EDI + 0x364],XMM7
0052c1d7  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0052c1de  80bd04ffffff00            CMP byte ptr [EBP + 0xffffff04],0x0
0052c1e5  0f85d9000000              JNZ 0x0052c2c4
0052c1eb  c745fc01000000            MOV dword ptr [EBP + -0x4],0x1
0052c1f2  b101                      MOV CL,0x1
0052c1f4  8b9508ffffff              MOV EDX,dword ptr [EBP + 0xffffff08]
0052c1fa  6a00                      PUSH 0x0
0052c1fc  6a00                      PUSH 0x0
0052c1fe  e8ad865300                CALL 0x00a648b0
0052c203  83c408                    ADD ESP,0x8
0052c206  e9b9000000                JMP 0x0052c2c4
0052c20b  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0052c212  0f84ac000000              JZ 0x0052c2c4
0052c218  f30f108d28ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff28]
0052c220  f30f10852cffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff2c]
0052c228  f30f59c0                  MULSS XMM0,XMM0
0052c22c  f30f59c9                  MULSS XMM1,XMM1
0052c230  f30f58c1                  ADDSS XMM0,XMM1
0052c234  e81798f0ff                CALL 0x00435a50
0052c239  f30f10a528ffffff          MOVSS XMM4,dword ptr [EBP + 0xffffff28]
0052c241  0f57c9                    XORPS XMM1,XMM1
0052c244  0f2fc1                    COMISS XMM0,XMM1
0052c247  f30f10952cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff2c]
0052c24f  7617                      JBE 0x0052c268
0052c251  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0052c259  f30f5ed8                  DIVSS XMM3,XMM0
0052c25d  0f28c3                    MOVAPS XMM0,XMM3
0052c260  f30f59d3                  MULSS XMM2,XMM3
0052c264  f30f59e0                  MULSS XMM4,XMM0
0052c268  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0052c270  f30f592520a1ba00          MULSS XMM4,dword ptr [0x00baa120]
0052c278  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
0052c280  0f2ed9                    UCOMISS XMM3,XMM1
0052c283  9f                        LAHF
0052c284  f6c444                    TEST AH,0x44
0052c287  7b3b                      JNP 0x0052c2c4
0052c289  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0052c291  0f28c1                    MOVAPS XMM0,XMM1
0052c294  f30f59ca                  MULSS XMM1,XMM2
0052c298  f30f59c4                  MULSS XMM0,XMM4
0052c29c  f30f5ecb                  DIVSS XMM1,XMM3
0052c2a0  f30f5ec3                  DIVSS XMM0,XMM3
0052c2a4  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0052c2ac  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0052c2b4  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0052c2bc  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0052c2c4  8b851cffffff              MOV EAX,dword ptr [EBP + 0xffffff1c]
0052c2ca  018710040000              ADD dword ptr [EDI + 0x410],EAX
0052c2d0  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0052c2d3  64890d00000000            MOV dword ptr FS:[0x0],ECX
0052c2da  59                        POP ECX
0052c2db  5f                        POP EDI
0052c2dc  5e                        POP ESI
0052c2dd  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0052c2e0  33cd                      XOR ECX,EBP
0052c2e2  e8442e5c00                CALL 0x00aef12b
0052c2e7  8be5                      MOV ESP,EBP
0052c2e9  5d                        POP EBP
0052c2ea  8be3                      MOV ESP,EBX
0052c2ec  5b                        POP EBX
0052c2ed  c3                        RET
