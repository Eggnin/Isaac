; J460 NPC AI 0x0053ab40 AI_0053ab40
; types=224
; identities=224.0.0
; entry=0053ab40
0053ab40  55                        PUSH EBP
0053ab41  8bec                      MOV EBP,ESP
0053ab43  83e4f8                    AND ESP,0xfffffff8
0053ab46  83ec40                    SUB ESP,0x40
0053ab49  56                        PUSH ESI
0053ab4a  57                        PUSH EDI
0053ab4b  8bf9                      MOV EDI,ECX
0053ab4d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0053ab53  c7878801000002000000      MOV dword ptr [EDI + 0x188],0x2
0053ab5d  85c0                      TEST EAX,EAX
0053ab5f  0f85ac000000              JNZ 0x0053ac11
0053ab65  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053ab6c  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0053ab76  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053ab80  7405                      JZ 0x0053ab87
0053ab82  8d501e                    LEA EDX,[EAX + 0x1e]
0053ab85  eb11                      JMP 0x0053ab98
0053ab87  e8d4431b00                CALL 0x006eef60
0053ab8c  33d2                      XOR EDX,EDX
0053ab8e  b92d000000                MOV ECX,0x2d
0053ab93  f7f1                      DIV ECX
0053ab95  83c21e                    ADD EDX,0x1e
0053ab98  0f2815a0c1ba00            MOVAPS XMM2,xmmword ptr [0x00bac1a0]
0053ab9f  8d44241c                  LEA EAX,[ESP + 0x1c]
0053aba3  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0053aba9  0f57c9                    XORPS XMM1,XMM1
0053abac  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0053abb4  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0053abbc  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053abc4  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0053abcc  81c7e4010000              ADD EDI,0x1e4
0053abd2  c744243c00000000          MOV dword ptr [ESP + 0x3c],0x0
0053abda  c7442440cdcccc3d          MOV dword ptr [ESP + 0x40],0x3dcccccd
0053abe2  c7442444cdcccc3d          MOV dword ptr [ESP + 0x44],0x3dcccccd
0053abea  3bf8                      CMP EDI,EAX
0053abec  0f842b060000              JZ 0x0053b21d
0053abf2  f30f7e44243c              MOVQ XMM0,qword ptr [ESP + 0x3c]
0053abf8  8b442444                  MOV EAX,dword ptr [ESP + 0x44]
0053abfc  660fd64720                MOVQ qword ptr [EDI + 0x20],XMM0
0053ac01  0f1117                    MOVUPS xmmword ptr [EDI],XMM2
0053ac04  894728                    MOV dword ptr [EDI + 0x28],EAX
0053ac07  0f114f10                  MOVUPS xmmword ptr [EDI + 0x10],XMM1
0053ac0b  5f                        POP EDI
0053ac0c  5e                        POP ESI
0053ac0d  8be5                      MOV ESP,EBP
0053ac0f  5d                        POP EBP
0053ac10  c3                        RET
0053ac11  83f804                    CMP EAX,0x4
0053ac14  0f8520040000              JNZ 0x0053b03a
0053ac1a  6a00                      PUSH 0x0
0053ac1c  8d7748                    LEA ESI,[EDI + 0x48]
0053ac1f  68e4dcb100                PUSH 0xb1dce4
0053ac24  8bce                      MOV ECX,ESI
0053ac26  e855f7ecff                CALL 0x0040a380
0053ac2b  51                        PUSH ECX
0053ac2c  8d442414                  LEA EAX,[ESP + 0x14]
0053ac30  c7042400002041            MOV dword ptr [ESP],0x41200000
0053ac37  50                        PUSH EAX
0053ac38  8bcf                      MOV ECX,EDI
0053ac3a  e801401800                CALL 0x006bec40
0053ac3f  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053ac46  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0053ac4a  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0053ac4f  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0053ac57  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0053ac5f  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
0053ac65  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
0053ac6b  7434                      JZ 0x0053aca1
0053ac6d  8d442410                  LEA EAX,[ESP + 0x10]
0053ac71  0f57d2                    XORPS XMM2,XMM2
0053ac74  50                        PUSH EAX
0053ac75  8bcf                      MOV ECX,EDI
0053ac77  e854d61900                CALL 0x006d82d0
0053ac7c  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0053ac80  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0053ac88  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
0053ac8e  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0053ac93  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
0053ac9b  f30f114c2408              MOVSS dword ptr [ESP + 0x8],XMM1
0053aca1  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053aca7  2500020000                AND EAX,0x200
0053acac  83c800                    OR EAX,0x0
0053acaf  0f84d7000000              JZ 0x0053ad8c
0053acb5  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053acbc  0f85ca000000              JNZ 0x0053ad8c
0053acc2  8b7720                    MOV ESI,dword ptr [EDI + 0x20]
0053acc5  e896421b00                CALL 0x006eef60
0053acca  33d2                      XOR EDX,EDX
0053accc  b91e000000                MOV ECX,0x1e
0053acd1  f7f1                      DIV ECX
0053acd3  56                        PUSH ESI
0053acd4  83c20f                    ADD EDX,0xf
0053acd7  8bcf                      MOV ECX,EDI
0053acd9  52                        PUSH EDX
0053acda  e8311a1700                CALL 0x006ac710
0053acdf  84c0                      TEST AL,AL
0053ace1  751a                      JNZ 0x0053acfd
0053ace3  388790010000              CMP byte ptr [EDI + 0x190],AL
0053ace9  7512                      JNZ 0x0053acfd
0053aceb  f30f108fb00b0000          MOVSS XMM1,dword ptr [EDI + 0xbb0]
0053acf3  f30f1097b40b0000          MOVSS XMM2,dword ptr [EDI + 0xbb4]
0053acfb  eb1c                      JMP 0x0053ad19
0053acfd  f30f104c240c              MOVSS XMM1,dword ptr [ESP + 0xc]
0053ad03  f30f10542408              MOVSS XMM2,dword ptr [ESP + 0x8]
0053ad09  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0053ad11  f30f1197b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM2
0053ad19  0f28c1                    MOVAPS XMM0,XMM1
0053ad1c  f30f114c240c              MOVSS dword ptr [ESP + 0xc],XMM1
0053ad22  0f28da                    MOVAPS XMM3,XMM2
0053ad25  f30f59c1                  MULSS XMM0,XMM1
0053ad29  f30f100d54abba00          MOVSS XMM1,dword ptr [0x00baab54]
0053ad31  f30f59da                  MULSS XMM3,XMM2
0053ad35  f30f11542408              MOVSS dword ptr [ESP + 0x8],XMM2
0053ad3b  f30f58d8                  ADDSS XMM3,XMM0
0053ad3f  0f2fcb                    COMISS XMM1,XMM3
0053ad42  7650                      JBE 0x0053ad94
0053ad44  0f2e1de49fba00            UCOMISS XMM3,dword ptr [0x00ba9fe4]
0053ad4b  9f                        LAHF
0053ad4c  f6c444                    TEST AH,0x44
0053ad4f  7b43                      JNP 0x0053ad94
0053ad51  0f28c3                    MOVAPS XMM0,XMM3
0053ad54  e8f7acefff                CALL 0x00435a50
0053ad59  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0053ad60  8d7748                    LEA ESI,[EDI + 0x48]
0053ad63  f30f10542408              MOVSS XMM2,dword ptr [ESP + 0x8]
0053ad69  762c                      JBE 0x0053ad97
0053ad6b  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
0053ad73  f30f5ec8                  DIVSS XMM1,XMM0
0053ad77  0f28c1                    MOVAPS XMM0,XMM1
0053ad7a  f30f59d1                  MULSS XMM2,XMM1
0053ad7e  f30f5944240c              MULSS XMM0,dword ptr [ESP + 0xc]
0053ad84  f30f1144240c              MOVSS dword ptr [ESP + 0xc],XMM0
0053ad8a  eb0b                      JMP 0x0053ad97
0053ad8c  f30f10542408              MOVSS XMM2,dword ptr [ESP + 0x8]
0053ad92  eb03                      JMP 0x0053ad97
0053ad94  8d7748                    LEA ESI,[EDI + 0x48]
0053ad97  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0053ad9f  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0053ada7  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
0053adaf  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0053adb5  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0053adbd  f30f1044240c              MOVSS XMM0,dword ptr [ESP + 0xc]
0053adc3  0f28ca                    MOVAPS XMM1,XMM2
0053adc6  f30f59c0                  MULSS XMM0,XMM0
0053adca  f30f59ca                  MULSS XMM1,XMM2
0053adce  f30f11542408              MOVSS dword ptr [ESP + 0x8],XMM2
0053add4  f30f58c1                  ADDSS XMM0,XMM1
0053add8  e873acefff                CALL 0x00435a50
0053addd  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
0053ade5  0f28c8                    MOVAPS XMM1,XMM0
0053ade8  0f57c0                    XORPS XMM0,XMM0
0053adeb  0f2fc8                    COMISS XMM1,XMM0
0053adee  761c                      JBE 0x0053ae0c
0053adf0  f30f5ee1                  DIVSS XMM4,XMM1
0053adf4  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
0053adfa  0f28d4                    MOVAPS XMM2,XMM4
0053adfd  0f28d9                    MOVAPS XMM3,XMM1
0053ae00  f30f5954240c              MULSS XMM2,dword ptr [ESP + 0xc]
0053ae06  f30f59dc                  MULSS XMM3,XMM4
0053ae0a  eb0f                      JMP 0x0053ae1b
0053ae0c  f30f104c2408              MOVSS XMM1,dword ptr [ESP + 0x8]
0053ae12  f30f1054240c              MOVSS XMM2,dword ptr [ESP + 0xc]
0053ae18  0f28d9                    MOVAPS XMM3,XMM1
0053ae1b  f30f10642410              MOVSS XMM4,dword ptr [ESP + 0x10]
0053ae21  0f2ee0                    UCOMISS XMM4,XMM0
0053ae24  9f                        LAHF
0053ae25  f6c444                    TEST AH,0x44
0053ae28  7b38                      JNP 0x0053ae62
0053ae2a  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
0053ae32  f30f59d0                  MULSS XMM2,XMM0
0053ae36  f30f59d8                  MULSS XMM3,XMM0
0053ae3a  f30f5ed4                  DIVSS XMM2,XMM4
0053ae3e  f30f5edc                  DIVSS XMM3,XMM4
0053ae42  f30f589760030000          ADDSS XMM2,dword ptr [EDI + 0x360]
0053ae4a  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
0053ae52  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0053ae5a  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
0053ae62  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0053ae68  25000a0001                AND EAX,0x1000a00
0053ae6d  83c800                    OR EAX,0x0
0053ae70  0f857b010000              JNZ 0x0053aff1
0053ae76  8b97c00b0000              MOV EDX,dword ptr [EDI + 0xbc0]
0053ae7c  85d2                      TEST EDX,EDX
0053ae7e  781a                      JS 0x0053ae9a
0053ae80  f30f2c87a4030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a4]
0053ae88  f30f2c8fa0030000          CVTTSS2SI ECX,dword ptr [EDI + 0x3a0]
0053ae90  2bc8                      SUB ECX,EAX
0053ae92  03ca                      ADD ECX,EDX
0053ae94  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
0053ae9a  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053aea1  7452                      JZ 0x0053aef5
0053aea3  6a09                      PUSH 0x9
0053aea5  8bcf                      MOV ECX,EDI
0053aea7  e8b4d31900                CALL 0x006d8260
0053aeac  0fb6c0                    MOVZX EAX,AL
0053aeaf  85c0                      TEST EAX,EAX
0053aeb1  7567                      JNZ 0x0053af1a
0053aeb3  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
0053aeba  0f8d31010000              JGE 0x0053aff1
0053aec0  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053aec7  0f84c7000000              JZ 0x0053af94
0053aecd  6a08                      PUSH 0x8
0053aecf  8bcf                      MOV ECX,EDI
0053aed1  e88ad31900                CALL 0x006d8260
0053aed6  84c0                      TEST AL,AL
0053aed8  0f8413010000              JZ 0x0053aff1
0053aede  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
0053aee5  0f84a9000000              JZ 0x0053af94
0053aeeb  ba1e000000                MOV EDX,0x1e
0053aef0  e9b0000000                JMP 0x0053afa5
0053aef5  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0053aefc  f30f10057ca8ba00          MOVSS XMM0,dword ptr [0x00baa87c]
0053af04  0f2fc1                    COMISS XMM0,XMM1
0053af07  76aa                      JBE 0x0053aeb3
0053af09  f30f1087a4030000          MOVSS XMM0,dword ptr [EDI + 0x3a4]
0053af11  0f2f0510a9ba00            COMISS XMM0,dword ptr [0x00baa910]
0053af18  7699                      JBE 0x0053aeb3
0053af1a  0f57c0                    XORPS XMM0,XMM0
0053af1d  8bce                      MOV ECX,ESI
0053af1f  0f2f44240c                COMISS XMM0,dword ptr [ESP + 0xc]
0053af24  6a01                      PUSH 0x1
0053af26  6868d6b100                PUSH 0xb1d668
0053af2b  0f97c0                    SETA AL
0053af2e  888748010000              MOV byte ptr [EDI + 0x148],AL
0053af34  e897f6ecff                CALL 0x0040a5d0
0053af39  84c0                      TEST AL,AL
0053af3b  740c                      JZ 0x0053af49
0053af3d  8d4e30                    LEA ECX,[ESI + 0x30]
0053af40  e86bf2ecff                CALL 0x0040a1b0
0053af45  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0053af49  51                        PUSH ECX
0053af4a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053af51  6a00                      PUSH 0x0
0053af53  6a02                      PUSH 0x2
0053af55  51                        PUSH ECX
0053af56  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053af5d  8bcf                      MOV ECX,EDI
0053af5f  6a77                      PUSH 0x77
0053af61  e83abc1900                CALL 0x006d6ba0
0053af66  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0053af6c  898734030000              MOV dword ptr [EDI + 0x334],EAX
0053af72  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0053af78  898738030000              MOV dword ptr [EDI + 0x338],EAX
0053af7e  c7878401000002000000      MOV dword ptr [EDI + 0x184],0x2
0053af88  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0053af92  eb3f                      JMP 0x0053afd3
0053af94  e8c73f1b00                CALL 0x006eef60
0053af99  33d2                      XOR EDX,EDX
0053af9b  b92d000000                MOV ECX,0x2d
0053afa0  f7f1                      DIV ECX
0053afa2  83c21e                    ADD EDX,0x1e
0053afa5  6a01                      PUSH 0x1
0053afa7  6850deb100                PUSH 0xb1de50
0053afac  8bce                      MOV ECX,ESI
0053afae  8997c00b0000              MOV dword ptr [EDI + 0xbc0],EDX
0053afb4  e817f6ecff                CALL 0x0040a5d0
0053afb9  84c0                      TEST AL,AL
0053afbb  740c                      JZ 0x0053afc9
0053afbd  8d4e30                    LEA ECX,[ESI + 0x30]
0053afc0  e8ebf1ecff                CALL 0x0040a1b0
0053afc5  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0053afc9  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0053afd3  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0053afdd  c7876003000000000000      MOV dword ptr [EDI + 0x360],0x0
0053afe7  c7876403000000000000      MOV dword ptr [EDI + 0x364],0x0
0053aff1  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0053aff9  0f57c0                    XORPS XMM0,XMM0
0053affc  0f2fc1                    COMISS XMM0,XMM1
0053afff  7616                      JBE 0x0053b017
0053b001  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0053b008  750d                      JNZ 0x0053b017
0053b00a  c6874801000001            MOV byte ptr [EDI + 0x148],0x1
0053b011  5f                        POP EDI
0053b012  5e                        POP ESI
0053b013  8be5                      MOV ESP,EBP
0053b015  5d                        POP EBP
0053b016  c3                        RET
0053b017  0f2fc8                    COMISS XMM1,XMM0
0053b01a  0f86fd010000              JBE 0x0053b21d
0053b020  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0053b027  0f84f0010000              JZ 0x0053b21d
0053b02d  c6874801000000            MOV byte ptr [EDI + 0x148],0x0
0053b034  5f                        POP EDI
0053b035  5e                        POP ESI
0053b036  8be5                      MOV ESP,EBP
0053b038  5d                        POP EBP
0053b039  c3                        RET
0053b03a  83f808                    CMP EAX,0x8
0053b03d  0f85e0010000              JNZ 0x0053b223
0053b043  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0053b04b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0053b053  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053b05b  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0053b063  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053b067  7409                      JZ 0x0053b072
0053b069  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053b070  7572                      JNZ 0x0053b0e4
0053b072  8b777c                    MOV ESI,dword ptr [EDI + 0x7c]
0053b075  85f6                      TEST ESI,ESI
0053b077  744a                      JZ 0x0053b0c3
0053b079  837e1410                  CMP dword ptr [ESI + 0x14],0x10
0053b07d  8bc6                      MOV EAX,ESI
0053b07f  7202                      JC 0x0053b083
0053b081  8b06                      MOV EAX,dword ptr [ESI]
0053b083  b9a4ddb100                MOV ECX,0xb1dda4
0053b088  8a10                      MOV DL,byte ptr [EAX]
0053b08a  3a11                      CMP DL,byte ptr [ECX]
0053b08c  751a                      JNZ 0x0053b0a8
0053b08e  84d2                      TEST DL,DL
0053b090  7412                      JZ 0x0053b0a4
0053b092  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053b095  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053b098  750e                      JNZ 0x0053b0a8
0053b09a  83c002                    ADD EAX,0x2
0053b09d  83c102                    ADD ECX,0x2
0053b0a0  84d2                      TEST DL,DL
0053b0a2  75e4                      JNZ 0x0053b088
0053b0a4  33c0                      XOR EAX,EAX
0053b0a6  eb05                      JMP 0x0053b0ad
0053b0a8  1bc0                      SBB EAX,EAX
0053b0aa  83c801                    OR EAX,0x1
0053b0ad  85c0                      TEST EAX,EAX
0053b0af  7512                      JNZ 0x0053b0c3
0053b0b1  384634                    CMP byte ptr [ESI + 0x34],AL
0053b0b4  742e                      JZ 0x0053b0e4
0053b0b6  38878c000000              CMP byte ptr [EDI + 0x8c],AL
0053b0bc  8d7748                    LEA ESI,[EDI + 0x48]
0053b0bf  7523                      JNZ 0x0053b0e4
0053b0c1  eb03                      JMP 0x0053b0c6
0053b0c3  8d7748                    LEA ESI,[EDI + 0x48]
0053b0c6  6a01                      PUSH 0x1
0053b0c8  68a4ddb100                PUSH 0xb1dda4
0053b0cd  8bce                      MOV ECX,ESI
0053b0cf  e8fcf4ecff                CALL 0x0040a5d0
0053b0d4  84c0                      TEST AL,AL
0053b0d6  740c                      JZ 0x0053b0e4
0053b0d8  8d4e30                    LEA ECX,[ESI + 0x30]
0053b0db  e8d0f0ecff                CALL 0x0040a1b0
0053b0e0  c6464401                  MOV byte ptr [ESI + 0x44],0x1
0053b0e4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053b0e8  7472                      JZ 0x0053b15c
0053b0ea  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053b0f1  7439                      JZ 0x0053b12c
0053b0f3  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
0053b0f6  83781410                  CMP dword ptr [EAX + 0x14],0x10
0053b0fa  7202                      JC 0x0053b0fe
0053b0fc  8b00                      MOV EAX,dword ptr [EAX]
0053b0fe  b9a4ddb100                MOV ECX,0xb1dda4
0053b103  8a10                      MOV DL,byte ptr [EAX]
0053b105  3a11                      CMP DL,byte ptr [ECX]
0053b107  751a                      JNZ 0x0053b123
0053b109  84d2                      TEST DL,DL
0053b10b  7412                      JZ 0x0053b11f
0053b10d  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0053b110  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0053b113  750e                      JNZ 0x0053b123
0053b115  83c002                    ADD EAX,0x2
0053b118  83c102                    ADD ECX,0x2
0053b11b  84d2                      TEST DL,DL
0053b11d  75e4                      JNZ 0x0053b103
0053b11f  33c0                      XOR EAX,EAX
0053b121  eb05                      JMP 0x0053b128
0053b123  1bc0                      SBB EAX,EAX
0053b125  83c801                    OR EAX,0x1
0053b128  85c0                      TEST EAX,EAX
0053b12a  7411                      JZ 0x0053b13d
0053b12c  68dcd2b100                PUSH 0xb1d2dc
0053b131  8d4f78                    LEA ECX,[EDI + 0x78]
0053b134  e837fdecff                CALL 0x0040ae70
0053b139  84c0                      TEST AL,AL
0053b13b  741f                      JZ 0x0053b15c
0053b13d  80bf4801000000            CMP byte ptr [EDI + 0x148],0x0
0053b144  740c                      JZ 0x0053b152
0053b146  c787600300000000c8c1      MOV dword ptr [EDI + 0x360],0xc1c80000
0053b150  eb0a                      JMP 0x0053b15c
0053b152  c787600300000000c841      MOV dword ptr [EDI + 0x360],0x41c80000
0053b15c  f30f109f60030000          MOVSS XMM3,dword ptr [EDI + 0x360]
0053b164  0f57d2                    XORPS XMM2,XMM2
0053b167  0f2fda                    COMISS XMM3,XMM2
0053b16a  a17816c700                MOV EAX,[0x00c71678]
0053b16f  f30f10255caaba00          MOVSS XMM4,dword ptr [0x00baaa5c]
0053b177  7627                      JBE 0x0053b1a0
0053b179  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0053b17f  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0053b187  f30f10491c                MOVSS XMM1,dword ptr [ECX + 0x1c]
0053b18c  f30f58cc                  ADDSS XMM1,XMM4
0053b190  0f2fc1                    COMISS XMM0,XMM1
0053b193  760b                      JBE 0x0053b1a0
0053b195  f30f104114                MOVSS XMM0,dword ptr [ECX + 0x14]
0053b19a  f30f5cc4                  SUBSS XMM0,XMM4
0053b19e  eb26                      JMP 0x0053b1c6
0053b1a0  0f2fd3                    COMISS XMM2,XMM3
0053b1a3  762f                      JBE 0x0053b1d4
0053b1a5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0053b1ab  f30f104014                MOVSS XMM0,dword ptr [EAX + 0x14]
0053b1b0  f30f5cc4                  SUBSS XMM0,XMM4
0053b1b4  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
0053b1bb  7617                      JBE 0x0053b1d4
0053b1bd  f30f10401c                MOVSS XMM0,dword ptr [EAX + 0x1c]
0053b1c2  f30f58c4                  ADDSS XMM0,XMM4
0053b1c6  ff8710040000              INC dword ptr [EDI + 0x410]
0053b1cc  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
0053b1d4  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
0053b1db  7e40                      JLE 0x0053b21d
0053b1dd  0f2fd3                    COMISS XMM2,XMM3
0053b1e0  7611                      JBE 0x0053b1f3
0053b1e2  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
0053b1ea  0f2f873c030000            COMISS XMM0,dword ptr [EDI + 0x33c]
0053b1f1  7716                      JA 0x0053b209
0053b1f3  0f2fda                    COMISS XMM3,XMM2
0053b1f6  7625                      JBE 0x0053b21d
0053b1f8  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0053b200  0f2f8734030000            COMISS XMM0,dword ptr [EDI + 0x334]
0053b207  7614                      JBE 0x0053b21d
0053b209  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
0053b213  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053b21d  5f                        POP EDI
0053b21e  5e                        POP ESI
0053b21f  8be5                      MOV ESP,EBP
0053b221  5d                        POP EBP
0053b222  c3                        RET
0053b223  83f80d                    CMP EAX,0xd
0053b226  75f5                      JNZ 0x0053b21d
0053b228  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0053b230  8d4f48                    LEA ECX,[EDI + 0x48]
0053b233  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0053b23b  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0053b243  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0053b24b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0053b24f  74c2                      JZ 0x0053b213
0053b251  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0053b258  74b9                      JZ 0x0053b213
0053b25a  68dcd2b100                PUSH 0xb1d2dc
0053b25f  e8ccfdecff                CALL 0x0040b030
0053b264  84c0                      TEST AL,AL
0053b266  74b5                      JZ 0x0053b21d
0053b268  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0053b270  8db73c030000              LEA ESI,[EDI + 0x33c]
0053b276  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053b27c  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0053b282  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0053b287  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0053b28d  ff742414                  PUSH dword ptr [ESP + 0x14]
0053b291  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0053b297  ff742414                  PUSH dword ptr [ESP + 0x14]
0053b29b  e8e0542b00                CALL 0x007f0780
0053b2a0  85c0                      TEST EAX,EAX
0053b2a2  0f8575ffffff              JNZ 0x0053b21d
0053b2a8  51                        PUSH ECX
0053b2a9  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053b2b0  50                        PUSH EAX
0053b2b1  6a02                      PUSH 0x2
0053b2b3  51                        PUSH ECX
0053b2b4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0053b2bb  8bcf                      MOV ECX,EDI
0053b2bd  6809010000                PUSH 0x109
0053b2c2  e8d9b81900                CALL 0x006d6ba0
0053b2c7  e8943c1b00                CALL 0x006eef60
0053b2cc  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0053b2d2  6a00                      PUSH 0x0
0053b2d4  50                        PUSH EAX
0053b2d5  6a00                      PUSH 0x0
0053b2d7  57                        PUSH EDI
0053b2d8  6840b6c700                PUSH 0xc7b640
0053b2dd  56                        PUSH ESI
0053b2de  6a00                      PUSH 0x0
0053b2e0  6a20                      PUSH 0x20
0053b2e2  e829311c00                CALL 0x006fe410
0053b2e7  5f                        POP EDI
0053b2e8  5e                        POP ESI
0053b2e9  8be5                      MOV ESP,EBP
0053b2eb  5d                        POP EBP
0053b2ec  c3                        RET
