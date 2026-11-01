; J460 NPC AI 0x0047a360 AI_0047a360
; types=28
; identities=28.0.0,28.1.0,28.2.0
; entry=0047a360
0047a360  53                        PUSH EBX
0047a361  8bdc                      MOV EBX,ESP
0047a363  83ec08                    SUB ESP,0x8
0047a366  83e4f8                    AND ESP,0xfffffff8
0047a369  83c404                    ADD ESP,0x4
0047a36c  55                        PUSH EBP
0047a36d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
0047a370  896c2404                  MOV dword ptr [ESP + 0x4],EBP
0047a374  8bec                      MOV EBP,ESP
0047a376  6aff                      PUSH -0x1
0047a378  681b2baf00                PUSH 0xaf2b1b
0047a37d  64a100000000              MOV EAX,FS:[0x0]
0047a383  50                        PUSH EAX
0047a384  53                        PUSH EBX
0047a385  81ec30010000              SUB ESP,0x130
0047a38b  a1b493bf00                MOV EAX,[0x00bf93b4]
0047a390  33c5                      XOR EAX,EBP
0047a392  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0047a395  56                        PUSH ESI
0047a396  57                        PUSH EDI
0047a397  50                        PUSH EAX
0047a398  8d45f4                    LEA EAX,[EBP + -0xc]
0047a39b  64a300000000              MOV FS:[0x0],EAX
0047a3a1  8bf9                      MOV EDI,ECX
0047a3a3  89bd4cffffff              MOV dword ptr [EBP + 0xffffff4c],EDI
0047a3a9  837f281c                  CMP dword ptr [EDI + 0x28],0x1c
0047a3ad  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
0047a3b5  c78578ffffff00000000      MOV dword ptr [EBP + 0xffffff78],0x0
0047a3bf  7523                      JNZ 0x0047a3e4
0047a3c1  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0047a3c5  751d                      JNZ 0x0047a3e4
0047a3c7  33f6                      XOR ESI,ESI
0047a3c9  817f349d010000            CMP dword ptr [EDI + 0x34],0x19d
0047a3d0  89b574ffffff              MOV dword ptr [EBP + 0xffffff74],ESI
0047a3d6  7515                      JNZ 0x0047a3ed
0047a3d8  c6857fffffff01            MOV byte ptr [EBP + 0xffffff7f],0x1
0047a3df  e9da000000                JMP 0x0047a4be
0047a3e4  8b772c                    MOV ESI,dword ptr [EDI + 0x2c]
0047a3e7  89b574ffffff              MOV dword ptr [EBP + 0xffffff74],ESI
0047a3ed  c6857fffffff00            MOV byte ptr [EBP + 0xffffff7f],0x0
0047a3f4  83fe01                    CMP ESI,0x1
0047a3f7  0f85c1000000              JNZ 0x0047a4be
0047a3fd  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0047a405  8d4580                    LEA EAX,[EBP + -0x80]
0047a408  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0047a410  8d4d84                    LEA ECX,[EBP + -0x7c]
0047a413  c7458400000000            MOV dword ptr [EBP + -0x7c],0x0
0047a41a  f30f101d90a4ba00          MOVSS XMM3,dword ptr [0x00baa490]
0047a422  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0047a429  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
0047a42e  0f46c1                    CMOVBE EAX,ECX
0047a431  f30f1010                  MOVSS XMM2,dword ptr [EAX]
0047a435  0f28ca                    MOVAPS XMM1,XMM2
0047a438  f30f591550a1ba00          MULSS XMM2,dword ptr [0x00baa150]
0047a440  f30f590d44a2ba00          MULSS XMM1,dword ptr [0x00baa244]
0047a448  f30f5cda                  SUBSS XMM3,XMM2
0047a44c  f30f580d54a3ba00          ADDSS XMM1,dword ptr [0x00baa354]
0047a454  f30f118f380c0000          MOVSS dword ptr [EDI + 0xc38],XMM1
0047a45c  f30f598fb4030000          MULSS XMM1,dword ptr [EDI + 0x3b4]
0047a464  0f28c1                    MOVAPS XMM0,XMM1
0047a467  f30f590d4079c300          MULSS XMM1,dword ptr [0x00c37940]
0047a46f  f30f59053c79c300          MULSS XMM0,dword ptr [0x00c3793c]
0047a477  f30f118fe8000000          MOVSS dword ptr [EDI + 0xe8],XMM1
0047a47f  f30f1187e4000000          MOVSS dword ptr [EDI + 0xe4],XMM0
0047a487  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
0047a48f  0f2ed4                    UCOMISS XMM2,XMM4
0047a492  9f                        LAHF
0047a493  f6c444                    TEST AH,0x44
0047a496  7b16                      JNP 0x0047a4ae
0047a498  0f28cb                    MOVAPS XMM1,XMM3
0047a49b  0f28c3                    MOVAPS XMM0,XMM3
0047a49e  f30f58ca                  ADDSS XMM1,XMM2
0047a4a2  f30f59c2                  MULSS XMM0,XMM2
0047a4a6  f30f5cc8                  SUBSS XMM1,XMM0
0047a4aa  f30f5ed9                  DIVSS XMM3,XMM1
0047a4ae  f30f599f60030000          MULSS XMM3,dword ptr [EDI + 0x360]
0047a4b6  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
0047a4be  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
0047a4c5  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
0047a4cd  0f8479010000              JZ 0x0047a64c
0047a4d3  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
0047a4d9  f30f116584                MOVSS dword ptr [EBP + -0x7c],XMM4
0047a4de  83f812                    CMP EAX,0x12
0047a4e1  740d                      JZ 0x0047a4f0
0047a4e3  83f813                    CMP EAX,0x13
0047a4e6  750d                      JNZ 0x0047a4f5
0047a4e8  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
0047a4f0  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
0047a4f5  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0047a4fb  8d8d5cffffff              LEA ECX,[EBP + 0xffffff5c]
0047a501  c7855cffffff75000000      MOV dword ptr [EBP + 0xffffff5c],0x75
0047a50b  e870c24d00                CALL 0x00956780
0047a510  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
0047a515  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0047a51b  83ec08                    SUB ESP,0x8
0047a51e  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
0047a526  f30f110424                MOVSS dword ptr [ESP],XMM0
0047a52b  6a00                      PUSH 0x0
0047a52d  6a02                      PUSH 0x2
0047a52f  51                        PUSH ECX
0047a530  c704240000003f            MOV dword ptr [ESP],0x3f000000
0047a537  ffb55cffffff              PUSH dword ptr [EBP + 0xffffff5c]
0047a53d  e8ee364b00                CALL 0x0092dc30
0047a542  8b8fc0030000              MOV ECX,dword ptr [EDI + 0x3c0]
0047a548  85c9                      TEST ECX,ECX
0047a54a  7478                      JZ 0x0047a5c4
0047a54c  8b01                      MOV EAX,dword ptr [ECX]
0047a54e  8d95ecfeffff              LEA EDX,[EBP + 0xfffffeec]
0047a554  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0047a55c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047a564  52                        PUSH EDX
0047a565  c785ecfeffff00000000      MOV dword ptr [EBP + 0xfffffeec],0x0
0047a56f  c785f0feffff00000000      MOV dword ptr [EBP + 0xfffffef0],0x0
0047a579  c785f4feffff00000000      MOV dword ptr [EBP + 0xfffffef4],0x0
0047a583  c785f8feffff00000000      MOV dword ptr [EBP + 0xfffffef8],0x0
0047a58d  f30f118dfcfeffff          MOVSS dword ptr [EBP + 0xfffffefc],XMM1
0047a595  f30f118500ffffff          MOVSS dword ptr [EBP + 0xffffff00],XMM0
0047a59d  f30f118d04ffffff          MOVSS dword ptr [EBP + 0xffffff04],XMM1
0047a5a5  f30f118508ffffff          MOVSS dword ptr [EBP + 0xffffff08],XMM0
0047a5ad  c7850cffffff00000000      MOV dword ptr [EBP + 0xffffff0c],0x0
0047a5b7  c78510ffffff00000000      MOV dword ptr [EBP + 0xffffff10],0x0
0047a5c1  ff5024                    CALL dword ptr [EAX + 0x24]
0047a5c4  8b8fbc030000              MOV ECX,dword ptr [EDI + 0x3bc]
0047a5ca  85c9                      TEST ECX,ECX
0047a5cc  7478                      JZ 0x0047a646
0047a5ce  8b01                      MOV EAX,dword ptr [ECX]
0047a5d0  8d9514ffffff              LEA EDX,[EBP + 0xffffff14]
0047a5d6  f30f100d40b6c700          MOVSS XMM1,dword ptr [0x00c7b640]
0047a5de  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047a5e6  52                        PUSH EDX
0047a5e7  c78514ffffff00000000      MOV dword ptr [EBP + 0xffffff14],0x0
0047a5f1  c78518ffffff00000000      MOV dword ptr [EBP + 0xffffff18],0x0
0047a5fb  c7851cffffff00000000      MOV dword ptr [EBP + 0xffffff1c],0x0
0047a605  c78520ffffff00000000      MOV dword ptr [EBP + 0xffffff20],0x0
0047a60f  f30f118d24ffffff          MOVSS dword ptr [EBP + 0xffffff24],XMM1
0047a617  f30f118528ffffff          MOVSS dword ptr [EBP + 0xffffff28],XMM0
0047a61f  f30f118d2cffffff          MOVSS dword ptr [EBP + 0xffffff2c],XMM1
0047a627  f30f118530ffffff          MOVSS dword ptr [EBP + 0xffffff30],XMM0
0047a62f  c78534ffffff00000000      MOV dword ptr [EBP + 0xffffff34],0x0
0047a639  c78538ffffff00000000      MOV dword ptr [EBP + 0xffffff38],0x0
0047a643  ff5024                    CALL dword ptr [EAX + 0x24]
0047a646  8bb574ffffff              MOV ESI,dword ptr [EBP + 0xffffff74]
0047a64c  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0047a653  0f8551060000              JNZ 0x0047acaa
0047a659  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0047a660  0f8535060000              JNZ 0x0047ac9b
0047a666  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0047a66d  0f8528060000              JNZ 0x0047ac9b
0047a673  a17816c700                MOV EAX,[0x00c71678]
0047a678  6a00                      PUSH 0x0
0047a67a  6a00                      PUSH 0x0
0047a67c  6aff                      PUSH -0x1
0047a67e  ff772c                    PUSH dword ptr [EDI + 0x2c]
0047a681  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0047a687  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
0047a68d  ff7728                    PUSH dword ptr [EDI + 0x28]
0047a690  81c118120000              ADD ECX,0x1218
0047a696  50                        PUSH EAX
0047a697  e8c408faff                CALL 0x0041af60
0047a69c  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
0047a6a3  8bb548ffffff              MOV ESI,dword ptr [EBP + 0xffffff48]
0047a6a9  85f6                      TEST ESI,ESI
0047a6ab  750f                      JNZ 0x0047a6bc
0047a6ad  6844e3b100                PUSH 0xb1e344
0047a6b2  6a10                      PUSH 0x10
0047a6b4  e8076c5900                CALL 0x00a112c0
0047a6b9  83c408                    ADD ESP,0x8
0047a6bc  6a0c                      PUSH 0xc
0047a6be  c78564ffffff00000000      MOV dword ptr [EBP + 0xffffff64],0x0
0047a6c8  c78568ffffff00000000      MOV dword ptr [EBP + 0xffffff68],0x0
0047a6d2  e8e94d5900                CALL 0x00a0f4c0
0047a6d7  8bd0                      MOV EDX,EAX
0047a6d9  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
0047a6df  83c404                    ADD ESP,0x4
0047a6e2  8912                      MOV dword ptr [EDX],EDX
0047a6e4  895204                    MOV dword ptr [EDX + 0x4],EDX
0047a6e7  899564ffffff              MOV dword ptr [EBP + 0xffffff64],EDX
0047a6ed  33c0                      XOR EAX,EAX
0047a6ef  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0047a6f3  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047a6f6  85f6                      TEST ESI,ESI
0047a6f8  0f84c5000000              JZ 0x0047a7c3
0047a6fe  6690                      NOP
0047a700  8b8d40ffffff              MOV ECX,dword ptr [EBP + 0xffffff40]
0047a706  6a00                      PUSH 0x0
0047a708  68acd6c500                PUSH 0xc5d6ac
0047a70d  68dcd5c500                PUSH 0xc5d5dc
0047a712  6a00                      PUSH 0x0
0047a714  ff3481                    PUSH dword ptr [ECX + EAX*0x4]
0047a717  e895616700                CALL 0x00af08b1
0047a71c  8bf0                      MOV ESI,EAX
0047a71e  83c414                    ADD ESP,0x14
0047a721  85f6                      TEST ESI,ESI
0047a723  747f                      JZ 0x0047a7a4
0047a725  83bebc03000000            CMP dword ptr [ESI + 0x3bc],0x0
0047a72c  7576                      JNZ 0x0047a7a4
0047a72e  83bec003000000            CMP dword ptr [ESI + 0x3c0],0x0
0047a735  756d                      JNZ 0x0047a7a4
0047a737  80be7301000000            CMP byte ptr [ESI + 0x173],0x0
0047a73e  7564                      JNZ 0x0047a7a4
0047a740  81bd68ffffff55555515      CMP dword ptr [EBP + 0xffffff68],0x15555555
0047a74a  8b8564ffffff              MOV EAX,dword ptr [EBP + 0xffffff64]
0047a750  894580                    MOV dword ptr [EBP + -0x80],EAX
0047a753  0f84d8030000              JZ 0x0047ab31
0047a759  8d8564ffffff              LEA EAX,[EBP + 0xffffff64]
0047a75f  898550ffffff              MOV dword ptr [EBP + 0xffffff50],EAX
0047a765  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
0047a769  6a0c                      PUSH 0xc
0047a76b  c78554ffffff00000000      MOV dword ptr [EBP + 0xffffff54],0x0
0047a775  e8464d5900                CALL 0x00a0f4c0
0047a77a  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
0047a77e  83c404                    ADD ESP,0x4
0047a781  8b5580                    MOV EDX,dword ptr [EBP + -0x80]
0047a784  c78554ffffff00000000      MOV dword ptr [EBP + 0xffffff54],0x0
0047a78e  897008                    MOV dword ptr [EAX + 0x8],ESI
0047a791  ff8568ffffff              INC dword ptr [EBP + 0xffffff68]
0047a797  8b4a04                    MOV ECX,dword ptr [EDX + 0x4]
0047a79a  8910                      MOV dword ptr [EAX],EDX
0047a79c  894804                    MOV dword ptr [EAX + 0x4],ECX
0047a79f  894204                    MOV dword ptr [EDX + 0x4],EAX
0047a7a2  8901                      MOV dword ptr [ECX],EAX
0047a7a4  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0047a7a7  40                        INC EAX
0047a7a8  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047a7ab  3b8548ffffff              CMP EAX,dword ptr [EBP + 0xffffff48]
0047a7b1  0f8249ffffff              JC 0x0047a700
0047a7b7  8b9564ffffff              MOV EDX,dword ptr [EBP + 0xffffff64]
0047a7bd  899578ffffff              MOV dword ptr [EBP + 0xffffff78],EDX
0047a7c3  8b8568ffffff              MOV EAX,dword ptr [EBP + 0xffffff68]
0047a7c9  8bc8                      MOV ECX,EAX
0047a7cb  894580                    MOV dword ptr [EBP + -0x80],EAX
0047a7ce  83e900                    SUB ECX,0x0
0047a7d1  744b                      JZ 0x0047a81e
0047a7d3  83e901                    SUB ECX,0x1
0047a7d6  7446                      JZ 0x0047a81e
0047a7d8  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
0047a7de  8bf0                      MOV ESI,EAX
0047a7e0  d1ee                      SHR ESI,0x1
0047a7e2  57                        PUSH EDI
0047a7e3  8bd6                      MOV EDX,ESI
0047a7e5  e8e6f10100                CALL 0x004999d0
0047a7ea  8b5580                    MOV EDX,dword ptr [EBP + -0x80]
0047a7ed  8d4d84                    LEA ECX,[EBP + -0x7c]
0047a7f0  83c404                    ADD ESP,0x4
0047a7f3  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047a7f6  2bd6                      SUB EDX,ESI
0047a7f8  57                        PUSH EDI
0047a7f9  e8d2f10100                CALL 0x004999d0
0047a7fe  8bb578ffffff              MOV ESI,dword ptr [EBP + 0xffffff78]
0047a804  83c404                    ADD ESP,0x4
0047a807  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
0047a80a  8b0e                      MOV ECX,dword ptr [ESI]
0047a80c  57                        PUSH EDI
0047a80d  50                        PUSH EAX
0047a80e  e83df20100                CALL 0x00499a50
0047a813  8906                      MOV dword ptr [ESI],EAX
0047a815  83c408                    ADD ESP,0x8
0047a818  8b9564ffffff              MOV EDX,dword ptr [EBP + 0xffffff64]
0047a81e  8b32                      MOV ESI,dword ptr [EDX]
0047a820  8bcf                      MOV ECX,EDI
0047a822  c7855cffffff01000000      MOV dword ptr [EBP + 0xffffff5c],0x1
0047a82c  894d84                    MOV dword ptr [EBP + -0x7c],ECX
0047a82f  3bf2                      CMP ESI,EDX
0047a831  0f8418010000              JZ 0x0047a94f
0047a837  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
0047a840  8b4608                    MOV EAX,dword ptr [ESI + 0x8]
0047a843  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
0047a849  3bc7                      CMP EAX,EDI
0047a84b  0f84f2000000              JZ 0x0047a943
0047a851  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0047a859  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0047a861  f30f5c8140030000          SUBSS XMM0,dword ptr [ECX + 0x340]
0047a869  f30f5c893c030000          SUBSS XMM1,dword ptr [ECX + 0x33c]
0047a871  f30f59c0                  MULSS XMM0,XMM0
0047a875  f30f59c9                  MULSS XMM1,XMM1
0047a879  f30f58c1                  ADDSS XMM0,XMM1
0047a87d  e8ceb1fbff                CALL 0x00435a50
0047a882  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
0047a887  f30f100530a6ba00          MOVSS XMM0,dword ptr [0x00baa630]
0047a88f  e8bcb1fbff                CALL 0x00435a50
0047a894  f30f590504a9ba00          MULSS XMM0,dword ptr [0x00baa904]
0047a89c  f30f580554a4ba00          ADDSS XMM0,dword ptr [0x00baa454]
0047a8a4  0f2f4580                  COMISS XMM0,dword ptr [EBP + -0x80]
0047a8a8  0f82a1000000              JC 0x0047a94f
0047a8ae  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
0047a8b4  81c1bc030000              ADD ECX,0x3bc
0047a8ba  898d74ffffff              MOV dword ptr [EBP + 0xffffff74],ECX
0047a8c0  8b01                      MOV EAX,dword ptr [ECX]
0047a8c2  85c0                      TEST EAX,EAX
0047a8c4  7418                      JZ 0x0047a8de
0047a8c6  894d80                    MOV dword ptr [EBP + -0x80],ECX
0047a8c9  8d88cc030000              LEA ECX,[EAX + 0x3cc]
0047a8cf  8d4580                    LEA EAX,[EBP + -0x80]
0047a8d2  50                        PUSH EAX
0047a8d3  e838490500                CALL 0x004cf210
0047a8d8  8b8d74ffffff              MOV ECX,dword ptr [EBP + 0xffffff74]
0047a8de  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0047a8e1  8901                      MOV dword ptr [ECX],EAX
0047a8e3  51                        PUSH ECX
0047a8e4  8bc8                      MOV ECX,EAX
0047a8e6  e805340500                CALL 0x004cdcf0
0047a8eb  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
0047a8ee  81c1c0030000              ADD ECX,0x3c0
0047a8f4  894d84                    MOV dword ptr [EBP + -0x7c],ECX
0047a8f7  8b01                      MOV EAX,dword ptr [ECX]
0047a8f9  85c0                      TEST EAX,EAX
0047a8fb  7415                      JZ 0x0047a912
0047a8fd  894d80                    MOV dword ptr [EBP + -0x80],ECX
0047a900  8d88cc030000              LEA ECX,[EAX + 0x3cc]
0047a906  8d4580                    LEA EAX,[EBP + -0x80]
0047a909  50                        PUSH EAX
0047a90a  e801490500                CALL 0x004cf210
0047a90f  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
0047a912  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
0047a918  8901                      MOV dword ptr [ECX],EAX
0047a91a  51                        PUSH ECX
0047a91b  8bc8                      MOV ECX,EAX
0047a91d  e8ce330500                CALL 0x004cdcf0
0047a922  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
0047a928  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
0047a92e  40                        INC EAX
0047a92f  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
0047a935  894d84                    MOV dword ptr [EBP + -0x7c],ECX
0047a938  83f803                    CMP EAX,0x3
0047a93b  7412                      JZ 0x0047a94f
0047a93d  8b9564ffffff              MOV EDX,dword ptr [EBP + 0xffffff64]
0047a943  8b06                      MOV EAX,dword ptr [ESI]
0047a945  8bf0                      MOV ESI,EAX
0047a947  3bc2                      CMP EAX,EDX
0047a949  0f85f1feffff              JNZ 0x0047a840
0047a94f  83bf540f000000            CMP dword ptr [EDI + 0xf54],0x0
0047a956  750f                      JNZ 0x0047a967
0047a958  8b87c80b0000              MOV EAX,dword ptr [EDI + 0xbc8]
0047a95e  3b4728                    CMP EAX,dword ptr [EDI + 0x28]
0047a961  0f85dd000000              JNZ 0x0047aa44
0047a967  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
0047a96d  83f803                    CMP EAX,0x3
0047a970  0f83ce000000              JNC 0x0047aa44
0047a976  8b7584                    MOV ESI,dword ptr [EBP + -0x7c]
0047a979  b903000000                MOV ECX,0x3
0047a97e  2bc8                      SUB ECX,EAX
0047a980  898d5cffffff              MOV dword ptr [EBP + 0xffffff5c],ECX
0047a986  e8d5452700                CALL 0x006eef60
0047a98b  6a00                      PUSH 0x0
0047a98d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047a993  68acd6c500                PUSH 0xc5d6ac
0047a998  68dcd5c500                PUSH 0xc5d5dc
0047a99d  6a00                      PUSH 0x0
0047a99f  50                        PUSH EAX
0047a9a0  ff7730                    PUSH dword ptr [EDI + 0x30]
0047a9a3  8d873c030000              LEA EAX,[EDI + 0x33c]
0047a9a9  57                        PUSH EDI
0047a9aa  6840b6c700                PUSH 0xc7b640
0047a9af  50                        PUSH EAX
0047a9b0  ff772c                    PUSH dword ptr [EDI + 0x2c]
0047a9b3  ff7728                    PUSH dword ptr [EDI + 0x28]
0047a9b6  e865e1faff                CALL 0x00428b20
0047a9bb  50                        PUSH EAX
0047a9bc  e8f05e6700                CALL 0x00af08b1
0047a9c1  8b88bc030000              MOV ECX,dword ptr [EAX + 0x3bc]
0047a9c7  83c414                    ADD ESP,0x14
0047a9ca  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
0047a9d0  05bc030000                ADD EAX,0x3bc
0047a9d5  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047a9d8  85c9                      TEST ECX,ECX
0047a9da  7415                      JZ 0x0047a9f1
0047a9dc  894580                    MOV dword ptr [EBP + -0x80],EAX
0047a9df  81c1cc030000              ADD ECX,0x3cc
0047a9e5  8d4580                    LEA EAX,[EBP + -0x80]
0047a9e8  50                        PUSH EAX
0047a9e9  e822480500                CALL 0x004cf210
0047a9ee  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0047a9f1  8930                      MOV dword ptr [EAX],ESI
0047a9f3  85f6                      TEST ESI,ESI
0047a9f5  7408                      JZ 0x0047a9ff
0047a9f7  50                        PUSH EAX
0047a9f8  8bce                      MOV ECX,ESI
0047a9fa  e8f1320500                CALL 0x004cdcf0
0047a9ff  8b8ec0030000              MOV ECX,dword ptr [ESI + 0x3c0]
0047aa05  81c6c0030000              ADD ESI,0x3c0
0047aa0b  85c9                      TEST ECX,ECX
0047aa0d  7412                      JZ 0x0047aa21
0047aa0f  8d4580                    LEA EAX,[EBP + -0x80]
0047aa12  897580                    MOV dword ptr [EBP + -0x80],ESI
0047aa15  81c1cc030000              ADD ECX,0x3cc
0047aa1b  50                        PUSH EAX
0047aa1c  e8ef470500                CALL 0x004cf210
0047aa21  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
0047aa27  8bc8                      MOV ECX,EAX
0047aa29  56                        PUSH ESI
0047aa2a  8906                      MOV dword ptr [ESI],EAX
0047aa2c  e8bf320500                CALL 0x004cdcf0
0047aa31  83ad5cffffff01            SUB dword ptr [EBP + 0xffffff5c],0x1
0047aa38  8bb578ffffff              MOV ESI,dword ptr [EBP + 0xffffff78]
0047aa3e  0f8542ffffff              JNZ 0x0047a986
0047aa44  0f57c0                    XORPS XMM0,XMM0
0047aa47  c7458800000000            MOV dword ptr [EBP + -0x78],0x0
0047aa4e  33c0                      XOR EAX,EAX
0047aa50  c7458c38e3b100            MOV dword ptr [EBP + -0x74],0xb1e338
0047aa57  8d7590                    LEA ESI,[EBP + -0x70]
0047aa5a  c74590000080bf            MOV dword ptr [EBP + -0x70],0xbf800000
0047aa61  c74594dc050000            MOV dword ptr [EBP + -0x6c],0x5dc
0047aa68  660f134598                MOVLPD qword ptr [EBP + -0x68],XMM0
0047aa6d  c745a000000400            MOV dword ptr [EBP + -0x60],0x40000
0047aa74  c745a400000000            MOV dword ptr [EBP + -0x5c],0x0
0047aa7b  c745a801000000            MOV dword ptr [EBP + -0x58],0x1
0047aa82  c745ac8ce3b100            MOV dword ptr [EBP + -0x54],0xb1e38c
0047aa89  c745b07b14ae3e            MOV dword ptr [EBP + -0x50],0x3eae147b
0047aa90  c745b4f4010000            MOV dword ptr [EBP + -0x4c],0x1f4
0047aa97  c745b800000080            MOV dword ptr [EBP + -0x48],0x80000000
0047aa9e  c745bc00000000            MOV dword ptr [EBP + -0x44],0x0
0047aaa5  660f1345c0                MOVLPD qword ptr [EBP + -0x40],XMM0
0047aaaa  c745c802000000            MOV dword ptr [EBP + -0x38],0x2
0047aab1  c745cc7ce3b100            MOV dword ptr [EBP + -0x34],0xb1e37c
0047aab8  c745d0b81e853e            MOV dword ptr [EBP + -0x30],0x3e851eb8
0047aabf  c745d40cfeffff            MOV dword ptr [EBP + -0x2c],0xfffffe0c
0047aac6  c745d800000080            MOV dword ptr [EBP + -0x28],0x80000000
0047aacd  c745dc00000000            MOV dword ptr [EBP + -0x24],0x0
0047aad4  660f1345e0                MOVLPD qword ptr [EBP + -0x20],XMM0
0047aad9  898578ffffff              MOV dword ptr [EBP + 0xffffff78],EAX
0047aadf  897d80                    MOV dword ptr [EBP + -0x80],EDI
0047aae2  897584                    MOV dword ptr [EBP + -0x7c],ESI
0047aae5  83f803                    CMP EAX,0x3
0047aae8  0f8d1e010000              JGE 0x0047ac0c
0047aaee  8b46f8                    MOV EAX,dword ptr [ESI + -0x8]
0047aaf1  8b56fc                    MOV EDX,dword ptr [ESI + -0x4]
0047aaf4  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
0047aafa  8b4f7c                    MOV ECX,dword ptr [EDI + 0x7c]
0047aafd  85c9                      TEST ECX,ECX
0047aaff  0f8461010000              JZ 0x0047ac66
0047ab05  83791410                  CMP dword ptr [ECX + 0x14],0x10
0047ab09  8bc1                      MOV EAX,ECX
0047ab0b  7202                      JC 0x0047ab0f
0047ab0d  8b01                      MOV EAX,dword ptr [ECX]
0047ab0f  8bca                      MOV ECX,EDX
0047ab11  8a10                      MOV DL,byte ptr [EAX]
0047ab13  3a11                      CMP DL,byte ptr [ECX]
0047ab15  7525                      JNZ 0x0047ab3c
0047ab17  84d2                      TEST DL,DL
0047ab19  7412                      JZ 0x0047ab2d
0047ab1b  8a5001                    MOV DL,byte ptr [EAX + 0x1]
0047ab1e  3a5101                    CMP DL,byte ptr [ECX + 0x1]
0047ab21  7519                      JNZ 0x0047ab3c
0047ab23  83c002                    ADD EAX,0x2
0047ab26  83c102                    ADD ECX,0x2
0047ab29  84d2                      TEST DL,DL
0047ab2b  75e4                      JNZ 0x0047ab11
0047ab2d  33c0                      XOR EAX,EAX
0047ab2f  eb10                      JMP 0x0047ab41
0047ab31  6830c6b100                PUSH 0xb1c630
0047ab36  ff15d484b100              CALL dword ptr [0x00b184d4]
0047ab3c  1bc0                      SBB EAX,EAX
0047ab3e  83c801                    OR EAX,0x1
0047ab41  8d4f48                    LEA ECX,[EDI + 0x48]
0047ab44  85c0                      TEST EAX,EAX
0047ab46  750f                      JNZ 0x0047ab57
0047ab48  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
0047ab4b  80783400                  CMP byte ptr [EAX + 0x34],0x0
0047ab4f  7427                      JZ 0x0047ab78
0047ab51  80794400                  CMP byte ptr [ECX + 0x44],0x0
0047ab55  7521                      JNZ 0x0047ab78
0047ab57  8b56fc                    MOV EDX,dword ptr [ESI + -0x4]
0047ab5a  6a01                      PUSH 0x1
0047ab5c  52                        PUSH EDX
0047ab5d  e86efaf8ff                CALL 0x0040a5d0
0047ab62  84c0                      TEST AL,AL
0047ab64  7412                      JZ 0x0047ab78
0047ab66  8d4f78                    LEA ECX,[EDI + 0x78]
0047ab69  e842f6f8ff                CALL 0x0040a1b0
0047ab6e  8b7584                    MOV ESI,dword ptr [EBP + -0x7c]
0047ab71  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0047ab78  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0047ab7c  0f2e0550adba00            UCOMISS XMM0,dword ptr [0x00baad50]
0047ab83  9f                        LAHF
0047ab84  f6c444                    TEST AH,0x44
0047ab87  7a08                      JP 0x0047ab91
0047ab89  f30f10875c010000          MOVSS XMM0,dword ptr [EDI + 0x15c]
0047ab91  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0047ab94  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
0047ab97  8b5608                    MOV EDX,dword ptr [ESI + 0x8]
0047ab9a  8b760c                    MOV ESI,dword ptr [ESI + 0xc]
0047ab9d  0bb76c010000              OR ESI,dword ptr [EDI + 0x16c]
0047aba3  0b9768010000              OR EDX,dword ptr [EDI + 0x168]
0047aba9  ff8578ffffff              INC dword ptr [EBP + 0xffffff78]
0047abaf  898754030000              MOV dword ptr [EDI + 0x354],EAX
0047abb5  8b4110                    MOV EAX,dword ptr [ECX + 0x10]
0047abb8  8b4914                    MOV ECX,dword ptr [ECX + 0x14]
0047abbb  f7d0                      NOT EAX
0047abbd  6a00                      PUSH 0x0
0047abbf  f7d1                      NOT ECX
0047abc1  f30f11875c010000          MOVSS dword ptr [EDI + 0x15c],XMM0
0047abc9  23f1                      AND ESI,ECX
0047abcb  23d0                      AND EDX,EAX
0047abcd  68acd6c500                PUSH 0xc5d6ac
0047abd2  89b76c010000              MOV dword ptr [EDI + 0x16c],ESI
0047abd8  8b7584                    MOV ESI,dword ptr [EBP + -0x7c]
0047abdb  68dcd5c500                PUSH 0xc5d5dc
0047abe0  6a00                      PUSH 0x0
0047abe2  ffb7c0030000              PUSH dword ptr [EDI + 0x3c0]
0047abe8  83c620                    ADD ESI,0x20
0047abeb  899768010000              MOV dword ptr [EDI + 0x168],EDX
0047abf1  897584                    MOV dword ptr [EBP + -0x7c],ESI
0047abf4  e8b85c6700                CALL 0x00af08b1
0047abf9  8bf8                      MOV EDI,EAX
0047abfb  83c414                    ADD ESP,0x14
0047abfe  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
0047ac04  85ff                      TEST EDI,EDI
0047ac06  0f85d9feffff              JNZ 0x0047aae5
0047ac0c  8b8d64ffffff              MOV ECX,dword ptr [EBP + 0xffffff64]
0047ac12  8bbd4cffffff              MOV EDI,dword ptr [EBP + 0xffffff4c]
0047ac18  8b4104                    MOV EAX,dword ptr [ECX + 0x4]
0047ac1b  c70000000000              MOV dword ptr [EAX],0x0
0047ac21  8b01                      MOV EAX,dword ptr [ECX]
0047ac23  85c0                      TEST EAX,EAX
0047ac25  7413                      JZ 0x0047ac3a
0047ac27  8b30                      MOV ESI,dword ptr [EAX]
0047ac29  6a0c                      PUSH 0xc
0047ac2b  50                        PUSH EAX
0047ac2c  e82b456700                CALL 0x00aef15c
0047ac31  83c408                    ADD ESP,0x8
0047ac34  8bc6                      MOV EAX,ESI
0047ac36  85f6                      TEST ESI,ESI
0047ac38  75ed                      JNZ 0x0047ac27
0047ac3a  6a0c                      PUSH 0xc
0047ac3c  ffb564ffffff              PUSH dword ptr [EBP + 0xffffff64]
0047ac42  e815456700                CALL 0x00aef15c
0047ac47  83c408                    ADD ESP,0x8
0047ac4a  80bd3cffffff00            CMP byte ptr [EBP + 0xffffff3c],0x0
0047ac51  0f85a11b0000              JNZ 0x0047c7f8
0047ac57  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
0047ac5d  85d2                      TEST EDX,EDX
0047ac5f  740d                      JZ 0x0047ac6e
0047ac61  83c230                    ADD EDX,0x30
0047ac64  eb0d                      JMP 0x0047ac73
0047ac66  8d4f48                    LEA ECX,[EDI + 0x48]
0047ac69  e9ecfeffff                JMP 0x0047ab5a
0047ac6e  ba18f6c700                MOV EDX,0xc7f618
0047ac73  8b8540ffffff              MOV EAX,dword ptr [EBP + 0xffffff40]
0047ac79  85c0                      TEST EAX,EAX
0047ac7b  0f84771b0000              JZ 0x0047c7f8
0047ac81  8d48fc                    LEA ECX,[EAX + -0x4]
0047ac84  8b01                      MOV EAX,dword ptr [ECX]
0047ac86  2902                      SUB dword ptr [EDX],EAX
0047ac88  51                        PUSH ECX
0047ac89  835a0400                  SBB dword ptr [EDX + 0x4],0x0
0047ac8d  ff15dc87b100              CALL dword ptr [0x00b187dc]
0047ac93  83c404                    ADD ESP,0x4
0047ac96  e95d1b0000                JMP 0x0047c7f8
0047ac9b  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047aca5  e94e1b0000                JMP 0x0047c7f8
0047acaa  83fe02                    CMP ESI,0x2
0047acad  754d                      JNZ 0x0047acfc
0047acaf  39b7c00b0000              CMP dword ptr [EDI + 0xbc0],ESI
0047acb5  7445                      JZ 0x0047acfc
0047acb7  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0047acbc  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0047acc3  7637                      JBE 0x0047acfc
0047acc5  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
0047acc8  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0047accb  742f                      JZ 0x0047acfc
0047accd  0f1f00                    NOP dword ptr [EAX]
0047acd0  8b4810                    MOV ECX,dword ptr [EAX + 0x10]
0047acd3  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
0047acd6  7508                      JNZ 0x0047ace0
0047acd8  8b4814                    MOV ECX,dword ptr [EAX + 0x14]
0047acdb  3b4f2c                    CMP ECX,dword ptr [EDI + 0x2c]
0047acde  7414                      JZ 0x0047acf4
0047ace0  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
0047ace5  f30f5c00                  SUBSS XMM0,dword ptr [EAX]
0047ace9  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
0047acee  c70000000000              MOV dword ptr [EAX],0x0
0047acf4  83c038                    ADD EAX,0x38
0047acf7  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
0047acfa  75d4                      JNZ 0x0047acd0
0047acfc  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0047ad02  85c0                      TEST EAX,EAX
0047ad04  0f84c2080000              JZ 0x0047b5cc
0047ad0a  83f802                    CMP EAX,0x2
0047ad0d  751b                      JNZ 0x0047ad2a
0047ad0f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047ad13  8d4f48                    LEA ECX,[EDI + 0x48]
0047ad16  7409                      JZ 0x0047ad21
0047ad18  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0047ad1f  751d                      JNZ 0x0047ad3e
0047ad21  6a00                      PUSH 0x0
0047ad23  68a8e3b100                PUSH 0xb1e3a8
0047ad28  eb0f                      JMP 0x0047ad39
0047ad2a  83f801                    CMP EAX,0x1
0047ad2d  750f                      JNZ 0x0047ad3e
0047ad2f  6a00                      PUSH 0x0
0047ad31  8d4f48                    LEA ECX,[EDI + 0x48]
0047ad34  689ce3b100                PUSH 0xb1e39c
0047ad39  e842f6f8ff                CALL 0x0040a380
0047ad3e  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0047ad44  85c0                      TEST EAX,EAX
0047ad46  7523                      JNZ 0x0047ad6b
0047ad48  8b07                      MOV EAX,dword ptr [EDI]
0047ad4a  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
0047ad50  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
0047ad53  e818affbff                CALL 0x00435c70
0047ad58  50                        PUSH EAX
0047ad59  8bcf                      MOV ECX,EDI
0047ad5b  ffd2                      CALL EDX
0047ad5d  8b87bc030000              MOV EAX,dword ptr [EDI + 0x3bc]
0047ad63  85c0                      TEST EAX,EAX
0047ad65  0f8411020000              JZ 0x0047af7c
0047ad6b  8bcf                      MOV ECX,EDI
0047ad6d  e8fec9fcff                CALL 0x00447770
0047ad72  83b8140c000000            CMP dword ptr [EAX + 0xc14],0x0
0047ad79  0f84fd010000              JZ 0x0047af7c
0047ad7f  33c0                      XOR EAX,EAX
0047ad81  8bcf                      MOV ECX,EDI
0047ad83  83bfc00b000002            CMP dword ptr [EDI + 0xbc0],0x2
0047ad8a  0f95c0                    SETNZ AL
0047ad8d  8d04450d000000            LEA EAX,[EAX*0x2 + 0xd]
0047ad94  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047ad97  e8d4c9fcff                CALL 0x00447770
0047ad9c  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
0047ad9f  3b88140c0000              CMP ECX,dword ptr [EAX + 0xc14]
0047ada5  0f8dd1010000              JGE 0x0047af7c
0047adab  8bcf                      MOV ECX,EDI
0047adad  e8bec9fcff                CALL 0x00447770
0047adb2  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
0047adb5  8bf0                      MOV ESI,EAX
0047adb7  8b8e100c0000              MOV ECX,dword ptr [ESI + 0xc10]
0047adbd  03d1                      ADD EDX,ECX
0047adbf  898d68ffffff              MOV dword ptr [EBP + 0xffffff68],ECX
0047adc5  8bc2                      MOV EAX,EDX
0047adc7  8b8e0c0c0000              MOV ECX,dword ptr [ESI + 0xc0c]
0047adcd  83e201                    AND EDX,0x1
0047add0  d1e8                      SHR EAX,0x1
0047add2  49                        DEC ECX
0047add3  23c8                      AND ECX,EAX
0047add5  8b86080c0000              MOV EAX,dword ptr [ESI + 0xc08]
0047addb  8b0c88                    MOV ECX,dword ptr [EAX + ECX*0x4]
0047adde  8b04d1                    MOV EAX,dword ptr [ECX + EDX*0x8]
0047ade1  89873c030000              MOV dword ptr [EDI + 0x33c],EAX
0047ade7  8b44d104                  MOV EAX,dword ptr [ECX + EDX*0x8 + 0x4]
0047adeb  898740030000              MOV dword ptr [EDI + 0x340],EAX
0047adf1  83bf140c000000            CMP dword ptr [EDI + 0xc14],0x0
0047adf8  0f8458010000              JZ 0x0047af56
0047adfe  8d8f040c0000              LEA ECX,[EDI + 0xc04]
0047ae04  51                        PUSH ECX
0047ae05  e826e40100                CALL 0x00499230
0047ae0a  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0047ae12  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047ae1a  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
0047ae1f  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
0047ae23  f30f59c0                  MULSS XMM0,XMM0
0047ae27  f30f59c9                  MULSS XMM1,XMM1
0047ae2b  f30f58c1                  ADDSS XMM0,XMM1
0047ae2f  e81cacfbff                CALL 0x00435a50
0047ae34  0f2f0530a6ba00            COMISS XMM0,dword ptr [0x00baa630]
0047ae3b  0f8615010000              JBE 0x0047af56
0047ae41  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0047ae49  8bcf                      MOV ECX,EDI
0047ae4b  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0047ae53  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047ae5b  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0047ae63  e808c9fcff                CALL 0x00447770
0047ae68  8b7584                    MOV ESI,dword ptr [EBP + -0x7c]
0047ae6b  8bd0                      MOV EDX,EAX
0047ae6d  4e                        DEC ESI
0047ae6e  8b8a100c0000              MOV ECX,dword ptr [EDX + 0xc10]
0047ae74  03f1                      ADD ESI,ECX
0047ae76  898d68ffffff              MOV dword ptr [EBP + 0xffffff68],ECX
0047ae7c  8bc6                      MOV EAX,ESI
0047ae7e  8b8a0c0c0000              MOV ECX,dword ptr [EDX + 0xc0c]
0047ae84  83e601                    AND ESI,0x1
0047ae87  49                        DEC ECX
0047ae88  d1e8                      SHR EAX,0x1
0047ae8a  23c8                      AND ECX,EAX
0047ae8c  897580                    MOV dword ptr [EBP + -0x80],ESI
0047ae8f  8b82080c0000              MOV EAX,dword ptr [EDX + 0xc08]
0047ae95  8b3c88                    MOV EDI,dword ptr [EAX + ECX*0x4]
0047ae98  8b8d4cffffff              MOV ECX,dword ptr [EBP + 0xffffff4c]
0047ae9e  e8cdc8fcff                CALL 0x00447770
0047aea3  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
0047aea6  8bf0                      MOV ESI,EAX
0047aea8  8b8e100c0000              MOV ECX,dword ptr [ESI + 0xc10]
0047aeae  03d1                      ADD EDX,ECX
0047aeb0  898d68ffffff              MOV dword ptr [EBP + 0xffffff68],ECX
0047aeb6  8bc2                      MOV EAX,EDX
0047aeb8  8b8e0c0c0000              MOV ECX,dword ptr [ESI + 0xc0c]
0047aebe  83e201                    AND EDX,0x1
0047aec1  d1e8                      SHR EAX,0x1
0047aec3  49                        DEC ECX
0047aec4  23c8                      AND ECX,EAX
0047aec6  8b86080c0000              MOV EAX,dword ptr [ESI + 0xc08]
0047aecc  8bb574ffffff              MOV ESI,dword ptr [EBP + 0xffffff74]
0047aed2  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0047aed5  8b4d80                    MOV ECX,dword ptr [EBP + -0x80]
0047aed8  f30f101ccf                MOVSS XMM3,dword ptr [EDI + ECX*0x8]
0047aedd  f30f1064cf04              MOVSS XMM4,dword ptr [EDI + ECX*0x8 + 0x4]
0047aee3  8bbd4cffffff              MOV EDI,dword ptr [EBP + 0xffffff4c]
0047aee9  f30f5c1cd0                SUBSS XMM3,dword ptr [EAX + EDX*0x8]
0047aeee  f30f5c64d004              SUBSS XMM4,dword ptr [EAX + EDX*0x8 + 0x4]
0047aef4  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
0047aefc  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
0047af03  f30f591d5ca7ba00          MULSS XMM3,dword ptr [0x00baa75c]
0047af0b  f30f59255ca7ba00          MULSS XMM4,dword ptr [0x00baa75c]
0047af13  9f                        LAHF
0047af14  f6c444                    TEST AH,0x44
0047af17  7b63                      JNP 0x0047af7c
0047af19  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0047af21  0f28c1                    MOVAPS XMM0,XMM1
0047af24  f30f59cc                  MULSS XMM1,XMM4
0047af28  f30f59c3                  MULSS XMM0,XMM3
0047af2c  f30f5eca                  DIVSS XMM1,XMM2
0047af30  f30f5ec2                  DIVSS XMM0,XMM2
0047af34  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
0047af3c  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0047af44  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
0047af4c  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0047af54  eb26                      JMP 0x0047af7c
0047af56  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0047af5e  8bb574ffffff              MOV ESI,dword ptr [EBP + 0xffffff74]
0047af64  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0047af6c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047af74  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0047af7c  83bfc00b000002            CMP dword ptr [EDI + 0xbc0],0x2
0047af83  0f85d6150000              JNZ 0x0047c55f
0047af89  83bf640b00000d            CMP dword ptr [EDI + 0xb64],0xd
0047af90  0f85c9150000              JNZ 0x0047c55f
0047af96  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047af9c  40                        INC EAX
0047af9d  898710040000              MOV dword ptr [EDI + 0x410],EAX
0047afa3  83f801                    CMP EAX,0x1
0047afa6  0f85d6000000              JNZ 0x0047b082
0047afac  51                        PUSH ECX
0047afad  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047afb4  83fe02                    CMP ESI,0x2
0047afb7  6a00                      PUSH 0x0
0047afb9  6a02                      PUSH 0x2
0047afbb  51                        PUSH ECX
0047afbc  b974000000                MOV ECX,0x74
0047afc1  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047afc8  b8e2030000                MOV EAX,0x3e2
0047afcd  0f45c1                    CMOVNZ EAX,ECX
0047afd0  8bcf                      MOV ECX,EDI
0047afd2  50                        PUSH EAX
0047afd3  e8c8bb2500                CALL 0x006d6ba0
0047afd8  83bfbc03000000            CMP dword ptr [EDI + 0x3bc],0x0
0047afdf  f30f102540b6c700          MOVSS XMM4,dword ptr [0x00c7b640]
0047afe7  f30f101d44b6c700          MOVSS XMM3,dword ptr [0x00c7b644]
0047afef  7427                      JZ 0x0047b018
0047aff1  8bcf                      MOV ECX,EDI
0047aff3  e878c7fcff                CALL 0x00447770
0047aff8  f30f10a03c030000          MOVSS XMM4,dword ptr [EAX + 0x33c]
0047b000  f30f109840030000          MOVSS XMM3,dword ptr [EAX + 0x340]
0047b008  f30f5ca73c030000          SUBSS XMM4,dword ptr [EDI + 0x33c]
0047b010  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
0047b018  0f28d4                    MOVAPS XMM2,XMM4
0047b01b  8d4f48                    LEA ECX,[EDI + 0x48]
0047b01e  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
0047b025  0f28cb                    MOVAPS XMM1,XMM3
0047b028  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0047b02f  0f2fd1                    COMISS XMM2,XMM1
0047b032  6a01                      PUSH 0x1
0047b034  7636                      JBE 0x0047b06c
0047b036  0f2f25e49fba00            COMISS XMM4,dword ptr [0x00ba9fe4]
0047b03d  68c0e3b100                PUSH 0xb1e3c0
0047b042  0f97c0                    SETA AL
0047b045  888748010000              MOV byte ptr [EDI + 0x148],AL
0047b04b  e880f5f8ff                CALL 0x0040a5d0
0047b050  84c0                      TEST AL,AL
0047b052  0f8407150000              JZ 0x0047c55f
0047b058  8d4f78                    LEA ECX,[EDI + 0x78]
0047b05b  e850f1f8ff                CALL 0x0040a1b0
0047b060  c6878c00000001            MOV byte ptr [EDI + 0x8c],0x1
0047b067  e9f3140000                JMP 0x0047c55f
0047b06c  0f57c0                    XORPS XMM0,XMM0
0047b06f  0f2fc3                    COMISS XMM0,XMM3
0047b072  7607                      JBE 0x0047b07b
0047b074  68b4e3b100                PUSH 0xb1e3b4
0047b079  ebd0                      JMP 0x0047b04b
0047b07b  68dce3b100                PUSH 0xb1e3dc
0047b080  ebc9                      JMP 0x0047b04b
0047b082  83f805                    CMP EAX,0x5
0047b085  0f85d4140000              JNZ 0x0047c55f
0047b08b  8b8f0c0c0000              MOV ECX,dword ptr [EDI + 0xc0c]
0047b091  49                        DEC ECX
0047b092  3987140c0000              CMP dword ptr [EDI + 0xc14],EAX
0047b098  7611                      JBE 0x0047b0ab
0047b09a  8b87100c0000              MOV EAX,dword ptr [EDI + 0xc10]
0047b0a0  898568ffffff              MOV dword ptr [EBP + 0xffffff68],EAX
0047b0a6  8d5005                    LEA EDX,[EAX + 0x5]
0047b0a9  eb15                      JMP 0x0047b0c0
0047b0ab  8b87140c0000              MOV EAX,dword ptr [EDI + 0xc14]
0047b0b1  0387100c0000              ADD EAX,dword ptr [EDI + 0xc10]
0047b0b7  898564ffffff              MOV dword ptr [EBP + 0xffffff64],EAX
0047b0bd  8d50ff                    LEA EDX,[EAX + -0x1]
0047b0c0  8bc2                      MOV EAX,EDX
0047b0c2  83e201                    AND EDX,0x1
0047b0c5  d1e8                      SHR EAX,0x1
0047b0c7  23c8                      AND ECX,EAX
0047b0c9  8b87080c0000              MOV EAX,dword ptr [EDI + 0xc08]
0047b0cf  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0047b0d2  8d8d50ffffff              LEA ECX,[EBP + 0xffffff50]
0047b0d8  51                        PUSH ECX
0047b0d9  f30f1004d0                MOVSS XMM0,dword ptr [EAX + EDX*0x8]
0047b0de  f30f118550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM0
0047b0e6  f30f1044d004              MOVSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
0047b0ec  a17816c700                MOV EAX,[0x00c71678]
0047b0f1  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
0047b0f9  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0047b0ff  8bc8                      MOV ECX,EAX
0047b101  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047b104  e8877b3900                CALL 0x00812c90
0047b109  8bf0                      MOV ESI,EAX
0047b10b  f30f100504a9ba00          MOVSS XMM0,dword ptr [0x00baa904]
0047b113  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0047b116  89b578ffffff              MOV dword ptr [EBP + 0xffffff78],ESI
0047b11c  8b480c                    MOV ECX,dword ptr [EAX + 0xc]
0047b11f  8bc6                      MOV EAX,ESI
0047b121  99                        CDQ
0047b122  f7f9                      IDIV ECX
0047b124  83bd74ffffff02            CMP dword ptr [EBP + 0xffffff74],0x2
0047b12b  660f6ed2                  MOVD XMM2,EDX
0047b12f  660f6ec8                  MOVD XMM1,EAX
0047b133  0f5bd2                    CVTDQ2PS XMM2,XMM2
0047b136  0f5bc9                    CVTDQ2PS XMM1,XMM1
0047b139  f30f59d0                  MULSS XMM2,XMM0
0047b13d  f30f59c8                  MULSS XMM1,XMM0
0047b141  f30f58d0                  ADDSS XMM2,XMM0
0047b145  f30f580d00aaba00          ADDSS XMM1,dword ptr [0x00baaa00]
0047b14d  f30f119550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM2
0047b155  f30f118d54ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM1
0047b15d  0f85ca020000              JNZ 0x0047b42d
0047b163  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0047b167  0f85c5010000              JNZ 0x0047b332
0047b16d  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0047b170  81febf010000              CMP ESI,0x1bf
0047b176  7719                      JA 0x0047b191
0047b178  8b4cb024                  MOV ECX,dword ptr [EAX + ESI*0x4 + 0x24]
0047b17c  85c9                      TEST ECX,ECX
0047b17e  7411                      JZ 0x0047b191
0047b180  8b4904                    MOV ECX,dword ptr [ECX + 0x4]
0047b183  83f901                    CMP ECX,0x1
0047b186  7409                      JZ 0x0047b191
0047b188  83f90a                    CMP ECX,0xa
0047b18b  0f8550020000              JNZ 0x0047b3e1
0047b191  83780810                  CMP dword ptr [EAX + 0x8],0x10
0047b195  0f8446020000              JZ 0x0047b3e1
0047b19b  8d8fdc030000              LEA ECX,[EDI + 0x3dc]
0047b1a1  e84adf3600                CALL 0x007e90f0
0047b1a6  894580                    MOV dword ptr [EBP + -0x80],EAX
0047b1a9  85f6                      TEST ESI,ESI
0047b1ab  7808                      JS 0x0047b1b5
0047b1ad  81fec0010000              CMP ESI,0x1c0
0047b1b3  7c0f                      JL 0x0047b1c4
0047b1b5  6838c1b600                PUSH 0xb6c138
0047b1ba  6a10                      PUSH 0x10
0047b1bc  e8ff605900                CALL 0x00a112c0
0047b1c1  83c408                    ADD ESP,0x8
0047b1c4  81febf010000              CMP ESI,0x1bf
0047b1ca  0f873d010000              JA 0x0047b30d
0047b1d0  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0047b1d3  81bcb06c07000084030000    CMP dword ptr [EAX + ESI*0x4 + 0x76c],0x384
0047b1de  0f8f29010000              JG 0x0047b30d
0047b1e4  689c010000                PUSH 0x19c
0047b1e9  e8d2425900                CALL 0x00a0f4c0
0047b1ee  8bf0                      MOV ESI,EAX
0047b1f0  83c404                    ADD ESP,0x4
0047b1f3  89b568ffffff              MOV dword ptr [EBP + 0xffffff68],ESI
0047b1f9  c745fc0b000000            MOV dword ptr [EBP + -0x4],0xb
0047b200  85f6                      TEST ESI,ESI
0047b202  0f84b0000000              JZ 0x0047b2b8
0047b208  8bce                      MOV ECX,ESI
0047b20a  e831ea2800                CALL 0x00709c40
0047b20f  c7064886b600              MOV dword ptr [ESI],0xb68648
0047b215  c7865801000000000000      MOV dword ptr [ESI + 0x158],0x0
0047b21f  c7866801000000000000      MOV dword ptr [ESI + 0x168],0x0
0047b229  c7866c0100000f000000      MOV dword ptr [ESI + 0x16c],0xf
0047b233  c6865801000000            MOV byte ptr [ESI + 0x158],0x0
0047b23a  c7867401000000000000      MOV dword ptr [ESI + 0x174],0x0
0047b244  c7867801000000000000      MOV dword ptr [ESI + 0x178],0x0
0047b24e  c7867c01000000000000      MOV dword ptr [ESI + 0x17c],0x0
0047b258  c7868001000000000000      MOV dword ptr [ESI + 0x180],0x0
0047b262  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0047b26a  f30f118684010000          MOVSS dword ptr [ESI + 0x184],XMM0
0047b272  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047b27a  f30f118688010000          MOVSS dword ptr [ESI + 0x188],XMM0
0047b282  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0047b28a  f30f11868c010000          MOVSS dword ptr [ESI + 0x18c],XMM0
0047b292  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047b29a  f30f118690010000          MOVSS dword ptr [ESI + 0x190],XMM0
0047b2a2  c7869401000000000000      MOV dword ptr [ESI + 0x194],0x0
0047b2ac  c7869801000000000000      MOV dword ptr [ESI + 0x198],0x0
0047b2b6  eb02                      JMP 0x0047b2ba
0047b2b8  33f6                      XOR ESI,ESI
0047b2ba  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0047b2c1  85f6                      TEST ESI,ESI
0047b2c3  7448                      JZ 0x0047b30d
0047b2c5  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
0047b2cb  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
0047b2ce  c746040e000000            MOV dword ptr [ESI + 0x4],0xe
0047b2d5  894624                    MOV dword ptr [ESI + 0x24],EAX
0047b2d8  8b548124                  MOV EDX,dword ptr [ECX + EAX*0x4 + 0x24]
0047b2dc  85d2                      TEST EDX,EDX
0047b2de  7411                      JZ 0x0047b2f1
0047b2e0  8b02                      MOV EAX,dword ptr [EDX]
0047b2e2  8bca                      MOV ECX,EDX
0047b2e4  6a01                      PUSH 0x1
0047b2e6  ff10                      CALL dword ptr [EAX]
0047b2e8  8b8578ffffff              MOV EAX,dword ptr [EBP + 0xffffff78]
0047b2ee  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
0047b2f1  ff7580                    PUSH dword ptr [EBP + -0x80]
0047b2f4  89748124                  MOV dword ptr [ECX + EAX*0x4 + 0x24],ESI
0047b2f8  8bce                      MOV ECX,ESI
0047b2fa  c7460801000000            MOV dword ptr [ESI + 0x8],0x1
0047b301  c7461800000000            MOV dword ptr [ESI + 0x18],0x0
0047b308  e8a3ea2800                CALL 0x00709db0
0047b30d  51                        PUSH ECX
0047b30e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047b315  6a00                      PUSH 0x0
0047b317  6a02                      PUSH 0x2
0047b319  51                        PUSH ECX
0047b31a  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047b321  8bcf                      MOV ECX,EDI
0047b323  68de030000                PUSH 0x3de
0047b328  e873b82500                CALL 0x006d6ba0
0047b32d  e9af000000                JMP 0x0047b3e1
0047b332  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
0047b335  e876b3fdff                CALL 0x004566b0
0047b33a  83f805                    CMP EAX,0x5
0047b33d  0f8d9e000000              JGE 0x0047b3e1
0047b343  6800000010                PUSH 0x10000000
0047b348  6a00                      PUSH 0x0
0047b34a  8bcf                      MOV ECX,EDI
0047b34c  e8dfc0f9ff                CALL 0x00417430
0047b351  84c0                      TEST AL,AL
0047b353  7413                      JZ 0x0047b368
0047b355  6a00                      PUSH 0x0
0047b357  51                        PUSH ECX
0047b358  6a00                      PUSH 0x0
0047b35a  6a5c                      PUSH 0x5c
0047b35c  8bcf                      MOV ECX,EDI
0047b35e  e87d142300                CALL 0x006ac7e0
0047b363  83f803                    CMP EAX,0x3
0047b366  7379                      JNC 0x0047b3e1
0047b368  e8f33b2700                CALL 0x006eef60
0047b36d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047b373  6a00                      PUSH 0x0
0047b375  68acd6c500                PUSH 0xc5d6ac
0047b37a  68dcd5c500                PUSH 0xc5d5dc
0047b37f  6a00                      PUSH 0x0
0047b381  50                        PUSH EAX
0047b382  6a00                      PUSH 0x0
0047b384  57                        PUSH EDI
0047b385  6840b6c700                PUSH 0xc7b640
0047b38a  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0047b390  50                        PUSH EAX
0047b391  6a00                      PUSH 0x0
0047b393  6a5c                      PUSH 0x5c
0047b395  e886d7faff                CALL 0x00428b20
0047b39a  50                        PUSH EAX
0047b39b  e811556700                CALL 0x00af08b1
0047b3a0  8bf0                      MOV ESI,EAX
0047b3a2  83c410                    ADD ESP,0x10
0047b3a5  8bce                      MOV ECX,ESI
0047b3a7  f30f108680030000          MOVSS XMM0,dword ptr [ESI + 0x380]
0047b3af  f30f590554a3ba00          MULSS XMM0,dword ptr [0x00baa354]
0047b3b7  f30f118680030000          MOVSS dword ptr [ESI + 0x380],XMM0
0047b3bf  f30f1086380c0000          MOVSS XMM0,dword ptr [ESI + 0xc38]
0047b3c7  f30f5905d0a2ba00          MULSS XMM0,dword ptr [0x00baa2d0]
0047b3cf  f30f110424                MOVSS dword ptr [ESP],XMM0
0047b3d4  e837b22500                CALL 0x006d6610
0047b3d9  57                        PUSH EDI
0047b3da  8bce                      MOV ECX,ESI
0047b3dc  e8bfde2200                CALL 0x006a92a0
0047b3e1  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0047b3e9  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0047b3f1  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047b3fb  0f2f05f8a1ba00            COMISS XMM0,dword ptr [0x00baa1f8]
0047b402  0f8257110000              JC 0x0047c55f
0047b408  51                        PUSH ECX
0047b409  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047b410  6a00                      PUSH 0x0
0047b412  6a02                      PUSH 0x2
0047b414  51                        PUSH ECX
0047b415  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047b41c  8bcf                      MOV ECX,EDI
0047b41e  68e0030000                PUSH 0x3e0
0047b423  e878b72500                CALL 0x006d6ba0
0047b428  e932110000                JMP 0x0047c55f
0047b42d  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0047b431  be3d000000                MOV ESI,0x3d
0047b436  7521                      JNZ 0x0047b459
0047b438  8b4f30                    MOV ECX,dword ptr [EDI + 0x30]
0047b43b  83f901                    CMP ECX,0x1
0047b43e  7505                      JNZ 0x0047b445
0047b440  8d711d                    LEA ESI,[ECX + 0x1d]
0047b443  eb14                      JMP 0x0047b459
0047b445  33c0                      XOR EAX,EAX
0047b447  83f902                    CMP ECX,0x2
0047b44a  0f94c0                    SETZ AL
0047b44d  8d04c517000000            LEA EAX,[EAX*0x8 + 0x17]
0047b454  894580                    MOV dword ptr [EBP + -0x80],EAX
0047b457  8bf0                      MOV ESI,EAX
0047b459  6800000010                PUSH 0x10000000
0047b45e  6a00                      PUSH 0x0
0047b460  8bcf                      MOV ECX,EDI
0047b462  e8c9bff9ff                CALL 0x00417430
0047b467  84c0                      TEST AL,AL
0047b469  7421                      JZ 0x0047b48c
0047b46b  6a00                      PUSH 0x0
0047b46d  51                        PUSH ECX
0047b46e  6a00                      PUSH 0x0
0047b470  56                        PUSH ESI
0047b471  8bcf                      MOV ECX,EDI
0047b473  e868132300                CALL 0x006ac7e0
0047b478  83f803                    CMP EAX,0x3
0047b47b  720f                      JC 0x0047b48c
0047b47d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047b487  e9d3100000                JMP 0x0047c55f
0047b48c  83fe1e                    CMP ESI,0x1e
0047b48f  7456                      JZ 0x0047b4e7
0047b491  e8ca3a2700                CALL 0x006eef60
0047b496  33d2                      XOR EDX,EDX
0047b498  b903000000                MOV ECX,0x3
0047b49d  f7f1                      DIV ECX
0047b49f  85d2                      TEST EDX,EDX
0047b4a1  7544                      JNZ 0x0047b4e7
0047b4a3  51                        PUSH ECX
0047b4a4  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047b4ab  52                        PUSH EDX
0047b4ac  6a02                      PUSH 0x2
0047b4ae  51                        PUSH ECX
0047b4af  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047b4b6  8bcf                      MOV ECX,EDI
0047b4b8  6809010000                PUSH 0x109
0047b4bd  e8deb62500                CALL 0x006d6ba0
0047b4c2  e8993a2700                CALL 0x006eef60
0047b4c7  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047b4cd  50                        PUSH EAX
0047b4ce  6a00                      PUSH 0x0
0047b4d0  57                        PUSH EDI
0047b4d1  6840b6c700                PUSH 0xc7b640
0047b4d6  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0047b4dc  50                        PUSH EAX
0047b4dd  6a00                      PUSH 0x0
0047b4df  56                        PUSH ESI
0047b4e0  e83bd6faff                CALL 0x00428b20
0047b4e5  eb20                      JMP 0x0047b507
0047b4e7  51                        PUSH ECX
0047b4e8  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047b4ef  6a00                      PUSH 0x0
0047b4f1  6a02                      PUSH 0x2
0047b4f3  51                        PUSH ECX
0047b4f4  c704243333333f            MOV dword ptr [ESP],0x3f333333
0047b4fb  8bcf                      MOV ECX,EDI
0047b4fd  6809010000                PUSH 0x109
0047b502  e899b62500                CALL 0x006d6ba0
0047b507  e8543a2700                CALL 0x006eef60
0047b50c  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0047b512  6a00                      PUSH 0x0
0047b514  68acd6c500                PUSH 0xc5d6ac
0047b519  68dcd5c500                PUSH 0xc5d5dc
0047b51e  6a00                      PUSH 0x0
0047b520  50                        PUSH EAX
0047b521  6a00                      PUSH 0x0
0047b523  57                        PUSH EDI
0047b524  6840b6c700                PUSH 0xc7b640
0047b529  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0047b52f  50                        PUSH EAX
0047b530  6a00                      PUSH 0x0
0047b532  56                        PUSH ESI
0047b533  e8e8d5faff                CALL 0x00428b20
0047b538  50                        PUSH EAX
0047b539  e873536700                CALL 0x00af08b1
0047b53e  83c414                    ADD ESP,0x14
0047b541  83fe1e                    CMP ESI,0x1e
0047b544  7519                      JNZ 0x0047b55f
0047b546  51                        PUSH ECX
0047b547  6a00                      PUSH 0x0
0047b549  8bc8                      MOV ECX,EAX
0047b54b  e8b04d2500                CALL 0x006d0300
0047b550  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047b55a  e900100000                JMP 0x0047c55f
0047b55f  f30f109550ffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff50]
0047b567  8d8564ffffff              LEA EAX,[EBP + 0xffffff64]
0047b56d  f30f108d54ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff54]
0047b575  8bcf                      MOV ECX,EDI
0047b577  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0047b57f  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0047b587  6a00                      PUSH 0x0
0047b589  50                        PUSH EAX
0047b58a  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0047b591  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0047b598  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
0047b5a0  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0047b5a8  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
0047b5b0  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
0047b5b8  e8f35efbff                CALL 0x004314b0
0047b5bd  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047b5c7  e9930f0000                JMP 0x0047c55f
0047b5cc  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0047b5d4  8bc7                      MOV EAX,EDI
0047b5d6  f30f5c4f14                SUBSS XMM1,dword ptr [EDI + 0x14]
0047b5db  8db0c0030000              LEA ESI,[EAX + 0x3c0]
0047b5e1  f30f114d84                MOVSS dword ptr [EBP + -0x7c],XMM1
0047b5e6  8b06                      MOV EAX,dword ptr [ESI]
0047b5e8  85c0                      TEST EAX,EAX
0047b5ea  742f                      JZ 0x0047b61b
0047b5ec  6a00                      PUSH 0x0
0047b5ee  68acd6c500                PUSH 0xc5d6ac
0047b5f3  68dcd5c500                PUSH 0xc5d5dc
0047b5f8  6a00                      PUSH 0x0
0047b5fa  50                        PUSH EAX
0047b5fb  e8b1526700                CALL 0x00af08b1
0047b600  83c414                    ADD ESP,0x14
0047b603  85c0                      TEST EAX,EAX
0047b605  750f                      JNZ 0x0047b616
0047b607  688cdcb100                PUSH 0xb1dc8c
0047b60c  6a10                      PUSH 0x10
0047b60e  e8ad5c5900                CALL 0x00a112c0
0047b613  83c408                    ADD ESP,0x8
0047b616  f30f104d84                MOVSS XMM1,dword ptr [EBP + -0x7c]
0047b61b  8b06                      MOV EAX,dword ptr [ESI]
0047b61d  85c0                      TEST EAX,EAX
0047b61f  7416                      JZ 0x0047b637
0047b621  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0047b629  f30f5c4014                SUBSS XMM0,dword ptr [EAX + 0x14]
0047b62e  f30f5dc1                  MINSS XMM0,XMM1
0047b632  0f28c8                    MOVAPS XMM1,XMM0
0047b635  eba4                      JMP 0x0047b5db
0047b637  8bc7                      MOV EAX,EDI
0047b639  89bd5cffffff              MOV dword ptr [EBP + 0xffffff5c],EDI
0047b63f  90                        NOP
0047b640  f30f108080030000          MOVSS XMM0,dword ptr [EAX + 0x380]
0047b648  f30f5c4014                SUBSS XMM0,dword ptr [EAX + 0x14]
0047b64d  0f2fc1                    COMISS XMM0,XMM1
0047b650  763e                      JBE 0x0047b690
0047b652  8b00                      MOV EAX,dword ptr [EAX]
0047b654  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0047b65a  57                        PUSH EDI
0047b65b  8b7020                    MOV ESI,dword ptr [EAX + 0x20]
0047b65e  e8ad5cfbff                CALL 0x00431310
0047b663  8b8d5cffffff              MOV ECX,dword ptr [EBP + 0xffffff5c]
0047b669  8d8514ffffff              LEA EAX,[EBP + 0xffffff14]
0047b66f  6a1e                      PUSH 0x1e
0047b671  50                        PUSH EAX
0047b672  6a00                      PUSH 0x0
0047b674  f30f108180030000          MOVSS XMM0,dword ptr [ECX + 0x380]
0047b67c  f30f5cc1                  SUBSS XMM0,XMM1
0047b680  6a00                      PUSH 0x0
0047b682  51                        PUSH ECX
0047b683  f30f110424                MOVSS dword ptr [ESP],XMM0
0047b688  ffd6                      CALL ESI
0047b68a  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
0047b690  8db0c0030000              LEA ESI,[EAX + 0x3c0]
0047b696  8b06                      MOV EAX,dword ptr [ESI]
0047b698  85c0                      TEST EAX,EAX
0047b69a  742a                      JZ 0x0047b6c6
0047b69c  6a00                      PUSH 0x0
0047b69e  68acd6c500                PUSH 0xc5d6ac
0047b6a3  68dcd5c500                PUSH 0xc5d5dc
0047b6a8  6a00                      PUSH 0x0
0047b6aa  50                        PUSH EAX
0047b6ab  e801526700                CALL 0x00af08b1
0047b6b0  83c414                    ADD ESP,0x14
0047b6b3  85c0                      TEST EAX,EAX
0047b6b5  750f                      JNZ 0x0047b6c6
0047b6b7  688cdcb100                PUSH 0xb1dc8c
0047b6bc  6a10                      PUSH 0x10
0047b6be  e8fd5b5900                CALL 0x00a112c0
0047b6c3  83c408                    ADD ESP,0x8
0047b6c6  8b06                      MOV EAX,dword ptr [ESI]
0047b6c8  f30f104d84                MOVSS XMM1,dword ptr [EBP + -0x7c]
0047b6cd  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
0047b6d3  85c0                      TEST EAX,EAX
0047b6d5  0f8565ffffff              JNZ 0x0047b640
0047b6db  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
0047b6e3  8db73c030000              LEA ESI,[EDI + 0x33c]
0047b6e9  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
0047b6f1  0f28c1                    MOVAPS XMM0,XMM1
0047b6f4  f30f59c1                  MULSS XMM0,XMM1
0047b6f8  89b554ffffff              MOV dword ptr [EBP + 0xffffff54],ESI
0047b6fe  f30f114d80                MOVSS dword ptr [EBP + -0x80],XMM1
0047b703  0f28ca                    MOVAPS XMM1,XMM2
0047b706  f30f59ca                  MULSS XMM1,XMM2
0047b70a  f30f115584                MOVSS dword ptr [EBP + -0x7c],XMM2
0047b70f  f30f58c1                  ADDSS XMM0,XMM1
0047b713  e838a3fbff                CALL 0x00435a50
0047b718  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0047b71f  7626                      JBE 0x0047b747
0047b721  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0047b729  f30f5ec8                  DIVSS XMM1,XMM0
0047b72d  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
0047b735  f30f109f64030000          MOVSS XMM3,dword ptr [EDI + 0x364]
0047b73d  f30f59d1                  MULSS XMM2,XMM1
0047b741  f30f59d9                  MULSS XMM3,XMM1
0047b745  eb0a                      JMP 0x0047b751
0047b747  f30f105580                MOVSS XMM2,dword ptr [EBP + -0x80]
0047b74c  f30f105d84                MOVSS XMM3,dword ptr [EBP + -0x7c]
0047b751  f30f591504a9ba00          MULSS XMM2,dword ptr [0x00baa904]
0047b759  8d8d14ffffff              LEA ECX,[EBP + 0xffffff14]
0047b75f  57                        PUSH EDI
0047b760  f30f591d04a9ba00          MULSS XMM3,dword ptr [0x00baa904]
0047b768  f30f5816                  ADDSS XMM2,dword ptr [ESI]
0047b76c  f30f585e04                ADDSS XMM3,dword ptr [ESI + 0x4]
0047b771  8b357816c700              MOV ESI,dword ptr [0x00c71678]
0047b777  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
0047b77f  8b8600830100              MOV EAX,dword ptr [ESI + 0x18300]
0047b785  f30f119d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM3
0047b78d  894580                    MOV dword ptr [EBP + -0x80],EAX
0047b790  e87b5bfbff                CALL 0x00431310
0047b795  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
0047b79b  8d8564ffffff              LEA EAX,[EBP + 0xffffff64]
0047b7a1  50                        PUSH EAX
0047b7a2  e8e9743900                CALL 0x00812c90
0047b7a7  3dbf010000                CMP EAX,0x1bf
0047b7ac  7719                      JA 0x0047b7c7
0047b7ae  8b4d80                    MOV ECX,dword ptr [EBP + -0x80]
0047b7b1  8b4c8124                  MOV ECX,dword ptr [ECX + EAX*0x4 + 0x24]
0047b7b5  85c9                      TEST ECX,ECX
0047b7b7  740e                      JZ 0x0047b7c7
0047b7b9  8b01                      MOV EAX,dword ptr [ECX]
0047b7bb  8d9514ffffff              LEA EDX,[EBP + 0xffffff14]
0047b7c1  52                        PUSH EDX
0047b7c2  6a01                      PUSH 0x1
0047b7c4  ff5010                    CALL dword ptr [EAX + 0x10]
0047b7c7  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0047b7cd  becce3b100                MOV ESI,0xb1e3cc
0047b7d2  83c0fc                    ADD EAX,-0x4
0047b7d5  c7855cfffffff4e3b100      MOV dword ptr [EBP + 0xffffff5c],0xb1e3f4
0047b7df  c74584e4e3b100            MOV dword ptr [EBP + -0x7c],0xb1e3e4
0047b7e6  83f80c                    CMP EAX,0xc
0047b7e9  0f8755060000              JA 0x0047be44
0047b7ef  0fb68040c84700            MOVZX EAX,byte ptr [EAX + 0x47c840]
0047b7f6  ff248528c84700            JMP dword ptr [EAX*0x4 + 0x47c828]
0047b7fd  6800000010                PUSH 0x10000000
0047b802  6a00                      PUSH 0x0
0047b804  8bcf                      MOV ECX,EDI
0047b806  e825bcf9ff                CALL 0x00417430
0047b80b  84c0                      TEST AL,AL
0047b80d  741b                      JZ 0x0047b82a
0047b80f  a17816c700                MOV EAX,[0x00c71678]
0047b814  c6857fffffff00            MOV byte ptr [EBP + 0xffffff7f],0x0
0047b81b  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0047b821  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0047b824  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0047b828  7507                      JNZ 0x0047b831
0047b82a  c6857fffffff01            MOV byte ptr [EBP + 0xffffff7f],0x1
0047b831  83bd74ffffff02            CMP dword ptr [EBP + 0xffffff74],0x2
0047b838  0f8533020000              JNZ 0x0047ba71
0047b83e  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0047b846  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0047b84e  f30f100df8a1ba00          MOVSS XMM1,dword ptr [0x00baa1f8]
0047b856  0f2fc8                    COMISS XMM1,XMM0
0047b859  0f8612020000              JBE 0x0047ba71
0047b85f  837f3000                  CMP dword ptr [EDI + 0x30],0x0
0047b863  0f8508020000              JNZ 0x0047ba71
0047b869  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
0047b86f  2500020000                AND EAX,0x200
0047b874  83c800                    OR EAX,0x0
0047b877  743b                      JZ 0x0047b8b4
0047b879  6a00                      PUSH 0x0
0047b87b  8d8f14040000              LEA ECX,[EDI + 0x414]
0047b881  e87aaa3600                CALL 0x007e6300
0047b886  6a00                      PUSH 0x0
0047b888  8d8f14040000              LEA ECX,[EDI + 0x414]
0047b88e  e86daa3600                CALL 0x007e6300
0047b893  6a00                      PUSH 0x0
0047b895  8d8f14040000              LEA ECX,[EDI + 0x414]
0047b89b  e860aa3600                CALL 0x007e6300
0047b8a0  becce3b100                MOV ESI,0xb1e3cc
0047b8a5  b8f4e3b100                MOV EAX,0xb1e3f4
0047b8aa  b9e4e3b100                MOV ECX,0xb1e3e4
0047b8af  e999050000                JMP 0x0047be4d
0047b8b4  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0047b8bc  0f2f0520a1ba00            COMISS XMM0,dword ptr [0x00baa120]
0047b8c3  f30f100d50adba00          MOVSS XMM1,dword ptr [0x00baad50]
0047b8cb  720a                      JC 0x0047b8d7
0047b8cd  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0047b8d5  eb03                      JMP 0x0047b8da
0047b8d7  0f28d1                    MOVAPS XMM2,XMM1
0047b8da  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0047b8e2  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
0047b8e9  7608                      JBE 0x0047b8f3
0047b8eb  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
0047b8f3  f30f58c9                  ADDSS XMM1,XMM1
0047b8f7  8bcf                      MOV ECX,EDI
0047b8f9  f30f58d2                  ADDSS XMM2,XMM2
0047b8fd  6a00                      PUSH 0x0
0047b8ff  8d8564ffffff              LEA EAX,[EBP + 0xffffff64]
0047b905  50                        PUSH EAX
0047b906  f30f118d64ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM1
0047b90e  f30f119568ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM2
0047b916  e8955bfbff                CALL 0x004314b0
0047b91b  6a00                      PUSH 0x0
0047b91d  6800080001                PUSH 0x1000800
0047b922  8bcf                      MOV ECX,EDI
0047b924  e807bbf9ff                CALL 0x00417430
0047b929  84c0                      TEST AL,AL
0047b92b  0f849f000000              JZ 0x0047b9d0
0047b931  8bcf                      MOV ECX,EDI
0047b933  e8082f2400                CALL 0x006be840
0047b938  f30f10903c030000          MOVSS XMM2,dword ptr [EAX + 0x33c]
0047b940  f30f5c973c030000          SUBSS XMM2,dword ptr [EDI + 0x33c]
0047b948  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0047b950  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
0047b958  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0047b95f  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
0047b967  0f570d70cbba00            XORPS XMM1,xmmword ptr [0x00bacb70]
0047b96e  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
0047b976  f30f59d2                  MULSS XMM2,XMM2
0047b97a  f30f59c9                  MULSS XMM1,XMM1
0047b97e  f30f58d1                  ADDSS XMM2,XMM1
0047b982  0f28c2                    MOVAPS XMM0,XMM2
0047b985  e8c6a0fbff                CALL 0x00435a50
0047b98a  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
0047b992  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0047b998  f30f5cc8                  SUBSS XMM1,XMM0
0047b99c  6a00                      PUSH 0x0
0047b99e  51                        PUSH ECX
0047b99f  8d8d64ffffff              LEA ECX,[EBP + 0xffffff64]
0047b9a5  f30f590dbca0ba00          MULSS XMM1,dword ptr [0x00baa0bc]
0047b9ad  f30f5f0de49fba00          MAXSS XMM1,dword ptr [0x00ba9fe4]
0047b9b5  f30f5d0db4a5ba00          MINSS XMM1,dword ptr [0x00baa5b4]
0047b9bd  f30f110c24                MOVSS dword ptr [ESP],XMM1
0047b9c2  50                        PUSH EAX
0047b9c3  e838475900                CALL 0x00a10100
0047b9c8  50                        PUSH EAX
0047b9c9  8bcf                      MOV ECX,EDI
0047b9cb  e8e05afbff                CALL 0x004314b0
0047b9d0  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0047b9d7  7420                      JZ 0x0047b9f9
0047b9d9  51                        PUSH ECX
0047b9da  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047b9e1  6a00                      PUSH 0x0
0047b9e3  6a02                      PUSH 0x2
0047b9e5  51                        PUSH ECX
0047b9e6  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047b9ed  8bcf                      MOV ECX,EDI
0047b9ef  68df030000                PUSH 0x3df
0047b9f4  e8a7b12500                CALL 0x006d6ba0
0047b9f9  f30f1087bc0b0000          MOVSS XMM0,dword ptr [EDI + 0xbbc]
0047ba01  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0047ba09  0f2f05f8a1ba00            COMISS XMM0,dword ptr [0x00baa1f8]
0047ba10  7220                      JC 0x0047ba32
0047ba12  51                        PUSH ECX
0047ba13  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047ba1a  6a00                      PUSH 0x0
0047ba1c  6a02                      PUSH 0x2
0047ba1e  51                        PUSH ECX
0047ba1f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047ba26  8bcf                      MOV ECX,EDI
0047ba28  68e0030000                PUSH 0x3e0
0047ba2d  e86eb12500                CALL 0x006d6ba0
0047ba32  e829352700                CALL 0x006eef60
0047ba37  33d2                      XOR EDX,EDX
0047ba39  b964000000                MOV ECX,0x64
0047ba3e  f7f1                      DIV ECX
0047ba40  85d2                      TEST EDX,EDX
0047ba42  751e                      JNZ 0x0047ba62
0047ba44  51                        PUSH ECX
0047ba45  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047ba4c  52                        PUSH EDX
0047ba4d  51                        PUSH ECX
0047ba4e  51                        PUSH ECX
0047ba4f  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047ba56  8bcf                      MOV ECX,EDI
0047ba58  68e1030000                PUSH 0x3e1
0047ba5d  e83eb12500                CALL 0x006d6ba0
0047ba62  b8f4e3b100                MOV EAX,0xb1e3f4
0047ba67  b9e4e3b100                MOV ECX,0xb1e3e4
0047ba6c  e9dc030000                JMP 0x0047be4d
0047ba71  6a00                      PUSH 0x0
0047ba73  51                        PUSH ECX
0047ba74  8d8f14040000              LEA ECX,[EDI + 0x414]
0047ba7a  c704240000c03f            MOV dword ptr [ESP],0x3fc00000
0047ba81  e8ba983600                CALL 0x007e5340
0047ba86  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047ba8c  40                        INC EAX
0047ba8d  80bd7fffffff00            CMP byte ptr [EBP + 0xffffff7f],0x0
0047ba94  898710040000              MOV dword ptr [EDI + 0x410],EAX
0047ba9a  0f84eb010000              JZ 0x0047bc8b
0047baa0  83f832                    CMP EAX,0x32
0047baa3  0f8e8b010000              JLE 0x0047bc34
0047baa9  51                        PUSH ECX
0047baaa  8d8558ffffff              LEA EAX,[EBP + 0xffffff58]
0047bab0  c7042400000000            MOV dword ptr [ESP],0x0
0047bab7  50                        PUSH EAX
0047bab8  8bcf                      MOV ECX,EDI
0047baba  e881312400                CALL 0x006bec40
0047babf  8bcf                      MOV ECX,EDI
0047bac1  8bf0                      MOV ESI,EAX
0047bac3  e8782d2400                CALL 0x006be840
0047bac8  f30f108060030000          MOVSS XMM0,dword ptr [EAX + 0x360]
0047bad0  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
0047bad5  f30f108064030000          MOVSS XMM0,dword ptr [EAX + 0x364]
0047badd  f30f114584                MOVSS dword ptr [EBP + -0x7c],XMM0
0047bae2  e879342700                CALL 0x006eef60
0047bae7  f30f10a740030000          MOVSS XMM4,dword ptr [EDI + 0x340]
0047baef  8d8f3c030000              LEA ECX,[EDI + 0x33c]
0047baf5  f30f1019                  MOVSS XMM3,dword ptr [ECX]
0047baf9  f30f103540cbba00          MOVSS XMM6,dword ptr [0x00bacb40]
0047bb01  660f6ec0                  MOVD XMM0,EAX
0047bb05  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0047bb09  c1e81f                    SHR EAX,0x1f
0047bb0c  f30f102d7ca8ba00          MOVSS XMM5,dword ptr [0x00baa87c]
0047bb14  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0047bb1d  660f5ac8                  CVTPD2PS XMM1,XMM0
0047bb21  f30f590df49fba00          MULSS XMM1,dword ptr [0x00ba9ff4]
0047bb29  0f28d1                    MOVAPS XMM2,XMM1
0047bb2c  f30f594d84                MULSS XMM1,dword ptr [EBP + -0x7c]
0047bb31  f30f595580                MULSS XMM2,dword ptr [EBP + -0x80]
0047bb36  f30f590d5ca8ba00          MULSS XMM1,dword ptr [0x00baa85c]
0047bb3e  f30f59155ca8ba00          MULSS XMM2,dword ptr [0x00baa85c]
0047bb46  f30f584e04                ADDSS XMM1,dword ptr [ESI + 0x4]
0047bb4b  f30f5816                  ADDSS XMM2,dword ptr [ESI]
0047bb4f  f30f5ccc                  SUBSS XMM1,XMM4
0047bb53  f30f5cd3                  SUBSS XMM2,XMM3
0047bb57  0f28c1                    MOVAPS XMM0,XMM1
0047bb5a  f30f118d54ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM1
0047bb62  0f54c6                    ANDPS XMM0,XMM6
0047bb65  0f2fe8                    COMISS XMM5,XMM0
0047bb68  f30f119550ffffff          MOVSS dword ptr [EBP + 0xffffff50],XMM2
0047bb70  770f                      JA 0x0047bb81
0047bb72  0f28c2                    MOVAPS XMM0,XMM2
0047bb75  0f54c6                    ANDPS XMM0,XMM6
0047bb78  0f2fe8                    COMISS XMM5,XMM0
0047bb7b  0f86ae000000              JBE 0x0047bc2f
0047bb81  a17816c700                MOV EAX,[0x00c71678]
0047bb86  f30f58da                  ADDSS XMM3,XMM2
0047bb8a  6a00                      PUSH 0x0
0047bb8c  6a00                      PUSH 0x0
0047bb8e  6a00                      PUSH 0x0
0047bb90  6a00                      PUSH 0x0
0047bb92  6a00                      PUSH 0x0
0047bb94  f30f58e1                  ADDSS XMM4,XMM1
0047bb98  f30f119d64ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM3
0047bba0  8d9564ffffff              LEA EDX,[EBP + 0xffffff64]
0047bba6  52                        PUSH EDX
0047bba7  51                        PUSH ECX
0047bba8  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0047bbae  f30f11a568ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM4
0047bbb6  e835523700                CALL 0x007f0df0
0047bbbb  84c0                      TEST AL,AL
0047bbbd  7470                      JZ 0x0047bc2f
0047bbbf  6a00                      PUSH 0x0
0047bbc1  68000a0001                PUSH 0x1000a00
0047bbc6  8bcf                      MOV ECX,EDI
0047bbc8  e863b8f9ff                CALL 0x00417430
0047bbcd  84c0                      TEST AL,AL
0047bbcf  755e                      JNZ 0x0047bc2f
0047bbd1  51                        PUSH ECX
0047bbd2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047bbd9  6a00                      PUSH 0x0
0047bbdb  6a02                      PUSH 0x2
0047bbdd  51                        PUSH ECX
0047bbde  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047bbe5  8bcf                      MOV ECX,EDI
0047bbe7  6a73                      PUSH 0x73
0047bbe9  e8b2af2500                CALL 0x006d6ba0
0047bbee  8d9550ffffff              LEA EDX,[EBP + 0xffffff50]
0047bbf4  8d8d64ffffff              LEA ECX,[EBP + 0xffffff64]
0047bbfa  e871352000                CALL 0x0067f170
0047bbff  8b08                      MOV ECX,dword ptr [EAX]
0047bc01  898fb00b0000              MOV dword ptr [EDI + 0xbb0],ECX
0047bc07  8d8f14040000              LEA ECX,[EDI + 0x414]
0047bc0d  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0047bc10  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
0047bc16  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0047bc20  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0047bc2a  e871b33600                CALL 0x007e6fa0
0047bc2f  becce3b100                MOV ESI,0xb1e3cc
0047bc34  83bf640b000004            CMP dword ptr [EDI + 0xb64],0x4
0047bc3b  754e                      JNZ 0x0047bc8b
0047bc3d  e81e332700                CALL 0x006eef60
0047bc42  33d2                      XOR EDX,EDX
0047bc44  b964000000                MOV ECX,0x64
0047bc49  f7f1                      DIV ECX
0047bc4b  85d2                      TEST EDX,EDX
0047bc4d  753c                      JNZ 0x0047bc8b
0047bc4f  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0047bc53  7427                      JZ 0x0047bc7c
0047bc55  6a01                      PUSH 0x1
0047bc57  52                        PUSH EDX
0047bc58  ff7728                    PUSH dword ptr [EDI + 0x28]
0047bc5b  8d853cffffff              LEA EAX,[EBP + 0xffffff3c]
0047bc61  8bcf                      MOV ECX,EDI
0047bc63  50                        PUSH EAX
0047bc64  e837502500                CALL 0x006d0ca0
0047bc69  b901000000                MOV ECX,0x1
0047bc6e  83780c05                  CMP dword ptr [EAX + 0xc],0x5
0047bc72  731d                      JNC 0x0047bc91
0047bc74  888d7fffffff              MOV byte ptr [EBP + 0xffffff7f],CL
0047bc7a  eb1c                      JMP 0x0047bc98
0047bc7c  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
0047bc82  c6857fffffff01            MOV byte ptr [EBP + 0xffffff7f],0x1
0047bc89  eb0d                      JMP 0x0047bc98
0047bc8b  8b8d78ffffff              MOV ECX,dword ptr [EBP + 0xffffff78]
0047bc91  c6857fffffff00            MOV byte ptr [EBP + 0xffffff7f],0x0
0047bc98  f6c101                    TEST CL,0x1
0047bc9b  740b                      JZ 0x0047bca8
0047bc9d  8d8d3cffffff              LEA ECX,[EBP + 0xffffff3c]
0047bca3  e808b9f9ff                CALL 0x004175b0
0047bca8  80bd7fffffff00            CMP byte ptr [EBP + 0xffffff7f],0x0
0047bcaf  0f84adfdffff              JZ 0x0047ba62
0047bcb5  33c9                      XOR ECX,ECX
0047bcb7  837f2c02                  CMP dword ptr [EDI + 0x2c],0x2
0047bcbb  894d84                    MOV dword ptr [EBP + -0x7c],ECX
0047bcbe  7561                      JNZ 0x0047bd21
0047bcc0  a17816c700                MOV EAX,[0x00c71678]
0047bcc5  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0047bccb  894580                    MOV dword ptr [EBP + -0x80],EAX
0047bcce  8b5010                    MOV EDX,dword ptr [EAX + 0x10]
0047bcd1  0faf500c                  IMUL EDX,dword ptr [EAX + 0xc]
0047bcd5  33c0                      XOR EAX,EAX
0047bcd7  899578ffffff              MOV dword ptr [EBP + 0xffffff78],EDX
0047bcdd  85d2                      TEST EDX,EDX
0047bcdf  7e40                      JLE 0x0047bd21
0047bce1  8b5580                    MOV EDX,dword ptr [EBP + -0x80]
0047bce4  83c224                    ADD EDX,0x24
0047bce7  3dbf010000                CMP EAX,0x1bf
0047bcec  771e                      JA 0x0047bd0c
0047bcee  8b0a                      MOV ECX,dword ptr [EDX]
0047bcf0  85c9                      TEST ECX,ECX
0047bcf2  7415                      JZ 0x0047bd09
0047bcf4  8379040e                  CMP dword ptr [ECX + 0x4],0xe
0047bcf8  750f                      JNZ 0x0047bd09
0047bcfa  83790801                  CMP dword ptr [ECX + 0x8],0x1
0047bcfe  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
0047bd01  7509                      JNZ 0x0047bd0c
0047bd03  41                        INC ECX
0047bd04  894d84                    MOV dword ptr [EBP + -0x7c],ECX
0047bd07  eb03                      JMP 0x0047bd0c
0047bd09  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
0047bd0c  40                        INC EAX
0047bd0d  83c204                    ADD EDX,0x4
0047bd10  3b8578ffffff              CMP EAX,dword ptr [EBP + 0xffffff78]
0047bd16  7ccf                      JL 0x0047bce7
0047bd18  83f905                    CMP ECX,0x5
0047bd1b  0f8d41fdffff              JGE 0x0047ba62
0047bd21  8d8f14040000              LEA ECX,[EDI + 0x414]
0047bd27  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0047bd31  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0047bd3b  e860b23600                CALL 0x007e6fa0
0047bd40  b8f4e3b100                MOV EAX,0xb1e3f4
0047bd45  b9e4e3b100                MOV ECX,0xb1e3e4
0047bd4a  e9fe000000                JMP 0x0047be4d
0047bd4f  b804e4b100                MOV EAX,0xb1e404
0047bd54  be10e4b100                MOV ESI,0xb1e410
0047bd59  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
0047bd5f  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047bd65  83f801                    CMP EAX,0x1
0047bd68  7526                      JNZ 0x0047bd90
0047bd6a  51                        PUSH ECX
0047bd6b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047bd72  6a00                      PUSH 0x0
0047bd74  6a02                      PUSH 0x2
0047bd76  51                        PUSH ECX
0047bd77  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047bd7e  8bcf                      MOV ECX,EDI
0047bd80  688e000000                PUSH 0x8e
0047bd85  e816ae2500                CALL 0x006d6ba0
0047bd8a  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047bd90  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0047bd98  40                        INC EAX
0047bd99  f30f590504a3ba00          MULSS XMM0,dword ptr [0x00baa304]
0047bda1  898710040000              MOV dword ptr [EDI + 0x410],EAX
0047bda7  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0047bdad  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0047bdb5  85c0                      TEST EAX,EAX
0047bdb7  0f8403010000              JZ 0x0047bec0
0047bdbd  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0047bdc5  f30f118060030000          MOVSS dword ptr [EAX + 0x360],XMM0
0047bdcd  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047bdd5  f30f118064030000          MOVSS dword ptr [EAX + 0x364],XMM0
0047bddd  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0047bde3  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0047bde9  89813c030000              MOV dword ptr [ECX + 0x33c],EAX
0047bdef  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0047bdf5  898140030000              MOV dword ptr [ECX + 0x340],EAX
0047bdfb  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0047be01  85c0                      TEST EAX,EAX
0047be03  0f84b7000000              JZ 0x0047bec0
0047be09  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
0047be0f  83f924                    CMP ECX,0x24
0047be12  7f7a                      JG 0x0047be8e
0047be14  80bd7fffffff00            CMP byte ptr [EBP + 0xffffff7f],0x0
0047be1b  7427                      JZ 0x0047be44
0047be1d  83f909                    CMP ECX,0x9
0047be20  7e22                      JLE 0x0047be44
0047be22  b81ce4b100                MOV EAX,0xb1e41c
0047be27  c787640b00000c000000      MOV dword ptr [EDI + 0xb64],0xc
0047be31  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
0047be37  be28e4b100                MOV ESI,0xb1e428
0047be3c  b848e4b100                MOV EAX,0xb1e448
0047be41  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047be44  8b855cffffff              MOV EAX,dword ptr [EBP + 0xffffff5c]
0047be4a  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
0047be4d  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
0047be55  f30f109f64030000          MOVSS XMM3,dword ptr [EDI + 0x364]
0047be5d  0f28ca                    MOVAPS XMM1,XMM2
0047be60  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
0047be67  0f28c3                    MOVAPS XMM0,XMM3
0047be6a  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
0047be71  0f2fc8                    COMISS XMM1,XMM0
0047be74  0f865e060000              JBE 0x0047c4d8
0047be7a  0f57c0                    XORPS XMM0,XMM0
0047be7d  0f2fc2                    COMISS XMM0,XMM2
0047be80  0f97c0                    SETA AL
0047be83  888748010000              MOV byte ptr [EDI + 0x148],AL
0047be89  e956060000                JMP 0x0047c4e4
0047be8e  83782804                  CMP dword ptr [EAX + 0x28],0x4
0047be92  752c                      JNZ 0x0047bec0
0047be94  c7801004000000000000      MOV dword ptr [EAX + 0x410],0x0
0047be9e  c7801404000000000000      MOV dword ptr [EAX + 0x414],0x0
0047bea8  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0047beae  8b01                      MOV EAX,dword ptr [ECX]
0047beb0  ff500c                    CALL dword ptr [EAX + 0xc]
0047beb3  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0047beb9  c6807101000001            MOV byte ptr [EAX + 0x171],0x1
0047bec0  51                        PUSH ECX
0047bec1  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047bec8  6a00                      PUSH 0x0
0047beca  6a02                      PUSH 0x2
0047becc  51                        PUSH ECX
0047becd  c70424cdcc4c3f            MOV dword ptr [ESP],0x3f4ccccd
0047bed4  8bcf                      MOV ECX,EDI
0047bed6  6a75                      PUSH 0x75
0047bed8  e8c3ac2500                CALL 0x006d6ba0
0047bedd  83bd74ffffff02            CMP dword ptr [EBP + 0xffffff74],0x2
0047bee4  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047beee  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0047bef6  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0047befe  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047bf06  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0047bf0e  0f8530ffffff              JNZ 0x0047be44
0047bf14  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0047bf1c  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0047bf24  0f2f05f8a1ba00            COMISS XMM0,dword ptr [0x00baa1f8]
0047bf2b  0f8213ffffff              JC 0x0047be44
0047bf31  51                        PUSH ECX
0047bf32  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047bf39  6a00                      PUSH 0x0
0047bf3b  6a02                      PUSH 0x2
0047bf3d  51                        PUSH ECX
0047bf3e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047bf45  8bcf                      MOV ECX,EDI
0047bf47  68e0030000                PUSH 0x3e0
0047bf4c  e84fac2500                CALL 0x006d6ba0
0047bf51  e9eefeffff                JMP 0x0047be44
0047bf56  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0047bf5c  85c0                      TEST EAX,EAX
0047bf5e  745e                      JZ 0x0047bfbe
0047bf60  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0047bf68  f30f118060030000          MOVSS dword ptr [EAX + 0x360],XMM0
0047bf70  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047bf78  f30f118064030000          MOVSS dword ptr [EAX + 0x364],XMM0
0047bf80  8b8fec0b0000              MOV ECX,dword ptr [EDI + 0xbec]
0047bf86  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0047bf8c  89813c030000              MOV dword ptr [ECX + 0x33c],EAX
0047bf92  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0047bf98  898140030000              MOV dword ptr [ECX + 0x340],EAX
0047bf9e  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0047bfa4  83782804                  CMP dword ptr [EAX + 0x28],0x4
0047bfa8  7514                      JNZ 0x0047bfbe
0047bfaa  c7801004000018000000      MOV dword ptr [EAX + 0x410],0x18
0047bfb4  c7801404000018000000      MOV dword ptr [EAX + 0x414],0x18
0047bfbe  8d4f48                    LEA ECX,[EDI + 0x48]
0047bfc1  68dcd2b100                PUSH 0xb1d2dc
0047bfc6  e865f0f8ff                CALL 0x0040b030
0047bfcb  84c0                      TEST AL,AL
0047bfcd  0f84ff010000              JZ 0x0047c1d2
0047bfd3  8bcf                      MOV ECX,EDI
0047bfd5  e866282400                CALL 0x006be840
0047bfda  8bf0                      MOV ESI,EAX
0047bfdc  f30f108e64030000          MOVSS XMM1,dword ptr [ESI + 0x364]
0047bfe4  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
0047bfec  f30f108660030000          MOVSS XMM0,dword ptr [ESI + 0x360]
0047bff4  f30f590520a1ba00          MULSS XMM0,dword ptr [0x00baa120]
0047bffc  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
0047c004  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0047c00c  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
0047c014  f30f114580                MOVSS dword ptr [EBP + -0x80],XMM0
0047c019  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0047c021  f30f5c8640030000          SUBSS XMM0,dword ptr [ESI + 0x340]
0047c029  f30f59c9                  MULSS XMM1,XMM1
0047c02d  f30f59c0                  MULSS XMM0,XMM0
0047c031  f30f58c1                  ADDSS XMM0,XMM1
0047c035  e8169afbff                CALL 0x00435a50
0047c03a  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
0047c042  8d8550ffffff              LEA EAX,[EBP + 0xffffff50]
0047c048  0f28c8                    MOVAPS XMM1,XMM0
0047c04b  8d8d64ffffff              LEA ECX,[EBP + 0xffffff64]
0047c051  f30f594d80                MULSS XMM1,dword ptr [EBP + -0x80]
0047c056  50                        PUSH EAX
0047c057  f30f598578ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff78]
0047c05f  f30f58d1                  ADDSS XMM2,XMM1
0047c063  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0047c06b  8bb554ffffff              MOV ESI,dword ptr [EBP + 0xffffff54]
0047c071  f30f58c8                  ADDSS XMM1,XMM0
0047c075  f30f5c16                  SUBSS XMM2,dword ptr [ESI]
0047c079  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
0047c07e  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
0047c086  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
0047c08e  e89d3f5900                CALL 0x00a10030
0047c093  51                        PUSH ECX
0047c094  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047c09b  6a00                      PUSH 0x0
0047c09d  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0047c0a1  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
0047c0a9  6a02                      PUSH 0x2
0047c0ab  51                        PUSH ECX
0047c0ac  c704249a99993f            MOV dword ptr [ESP],0x3f99999a
0047c0b3  8bcf                      MOV ECX,EDI
0047c0b5  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
0047c0bd  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
0047c0c2  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
0047c0ca  683f010000                PUSH 0x13f
0047c0cf  f30f114d84                MOVSS dword ptr [EBP + -0x7c],XMM1
0047c0d4  e8c7aa2500                CALL 0x006d6ba0
0047c0d9  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0047c0df  85c0                      TEST EAX,EAX
0047c0e1  0f84eb000000              JZ 0x0047c1d2
0047c0e7  f30f108d78ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff78]
0047c0ef  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
0047c0f4  f30f118860030000          MOVSS dword ptr [EAX + 0x360],XMM1
0047c0fc  f30f118064030000          MOVSS dword ptr [EAX + 0x364],XMM0
0047c104  f30f580e                  ADDSS XMM1,dword ptr [ESI]
0047c108  f30f584604                ADDSS XMM0,dword ptr [ESI + 0x4]
0047c10d  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
0047c113  f30f11883c030000          MOVSS dword ptr [EAX + 0x33c],XMM1
0047c11b  f30f118040030000          MOVSS dword ptr [EAX + 0x340],XMM0
0047c123  8bb7ec0b0000              MOV ESI,dword ptr [EDI + 0xbec]
0047c129  837e2804                  CMP dword ptr [ESI + 0x28],0x4
0047c12d  0f8596000000              JNZ 0x0047c1c9
0047c133  6a01                      PUSH 0x1
0047c135  8d4e48                    LEA ECX,[ESI + 0x48]
0047c138  682cd5b100                PUSH 0xb1d52c
0047c13d  e83ee2f8ff                CALL 0x0040a380
0047c142  8bce                      MOV ECX,ESI
0047c144  c7861004000012000000      MOV dword ptr [ESI + 0x410],0x12
0047c14e  c7861404000012000000      MOV dword ptr [ESI + 0x414],0x12
0047c158  e8d35e2200                CALL 0x006a2030
0047c15d  84c0                      TEST AL,AL
0047c15f  744f                      JZ 0x0047c1b0
0047c161  f30f109d78ffffff          MOVSS XMM3,dword ptr [EBP + 0xffffff78]
0047c169  f30f105584                MOVSS XMM2,dword ptr [EBP + -0x7c]
0047c16e  f30f591d20a1ba00          MULSS XMM3,dword ptr [0x00baa120]
0047c176  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
0047c17e  f30f108d78ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff78]
0047c186  f30f104584                MOVSS XMM0,dword ptr [EBP + -0x7c]
0047c18b  f30f119e60030000          MOVSS dword ptr [ESI + 0x360],XMM3
0047c193  f30f119664030000          MOVSS dword ptr [ESI + 0x364],XMM2
0047c19b  e8c0db0100                CALL 0x00499d60
0047c1a0  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
0047c1a8  f30f118628040000          MOVSS dword ptr [ESI + 0x428],XMM0
0047c1b0  57                        PUSH EDI
0047c1b1  8bce                      MOV ECX,ESI
0047c1b3  c7868801000002000000      MOV dword ptr [ESI + 0x188],0x2
0047c1bd  c6867101000001            MOV byte ptr [ESI + 0x171],0x1
0047c1c4  e8d7d02200                CALL 0x006a92a0
0047c1c9  6a00                      PUSH 0x0
0047c1cb  8bcf                      MOV ECX,EDI
0047c1cd  e84e4a2500                CALL 0x006d0c20
0047c1d2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0047c1d6  740d                      JZ 0x0047c1e5
0047c1d8  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0047c1df  0f855c030000              JNZ 0x0047c541
0047c1e5  83bd74ffffff02            CMP dword ptr [EBP + 0xffffff74],0x2
0047c1ec  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047c1f6  7539                      JNZ 0x0047c231
0047c1f8  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0047c200  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0047c208  0f2f05f8a1ba00            COMISS XMM0,dword ptr [0x00baa1f8]
0047c20f  7220                      JC 0x0047c231
0047c211  51                        PUSH ECX
0047c212  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047c219  6a00                      PUSH 0x0
0047c21b  6a02                      PUSH 0x2
0047c21d  51                        PUSH ECX
0047c21e  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047c225  8bcf                      MOV ECX,EDI
0047c227  68e0030000                PUSH 0x3e0
0047c22c  e86fa92500                CALL 0x006d6ba0
0047c231  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0047c239  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0047c241  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047c249  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0047c251  c787b80b000000000000      MOV dword ptr [EDI + 0xbb8],0x0
0047c25b  c787c40b000000000000      MOV dword ptr [EDI + 0xbc4],0x0
0047c265  e9d7020000                JMP 0x0047c541
0047c26a  ff8710040000              INC dword ptr [EDI + 0x410]
0047c270  b860e4b100                MOV EAX,0xb1e460
0047c275  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
0047c27c  be34e4b100                MOV ESI,0xb1e434
0047c281  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
0047c287  b850e4b100                MOV EAX,0xb1e450
0047c28c  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047c28f  0f85ab000000              JNZ 0x0047c340
0047c295  a17816c700                MOV EAX,[0x00c71678]
0047c29a  8d8d64ffffff              LEA ECX,[EBP + 0xffffff64]
0047c2a0  51                        PUSH ECX
0047c2a1  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0047c2a7  8bc8                      MOV ECX,EAX
0047c2a9  898554ffffff              MOV dword ptr [EBP + 0xffffff54],EAX
0047c2af  e8dc693900                CALL 0x00812c90
0047c2b4  8bc8                      MOV ECX,EAX
0047c2b6  81f9bf010000              CMP ECX,0x1bf
0047c2bc  7713                      JA 0x0047c2d1
0047c2be  8b8554ffffff              MOV EAX,dword ptr [EBP + 0xffffff54]
0047c2c4  81bc886c070000e7030000    CMP dword ptr [EAX + ECX*0x4 + 0x76c],0x3e7
0047c2cf  746f                      JZ 0x0047c340
0047c2d1  6a00                      PUSH 0x0
0047c2d3  68000a0001                PUSH 0x1000a00
0047c2d8  8bcf                      MOV ECX,EDI
0047c2da  e851b1f9ff                CALL 0x00417430
0047c2df  84c0                      TEST AL,AL
0047c2e1  755d                      JNZ 0x0047c340
0047c2e3  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0047c2eb  8d8564ffffff              LEA EAX,[EBP + 0xffffff64]
0047c2f1  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0047c2f9  8bcf                      MOV ECX,EDI
0047c2fb  6a00                      PUSH 0x0
0047c2fd  50                        PUSH EAX
0047c2fe  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0047c306  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
0047c30e  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
0047c316  f30f591540a7ba00          MULSS XMM2,dword ptr [0x00baa740]
0047c31e  f30f590d40a7ba00          MULSS XMM1,dword ptr [0x00baa740]
0047c326  f30f119564ffffff          MOVSS dword ptr [EBP + 0xffffff64],XMM2
0047c32e  f30f118d68ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM1
0047c336  e87551fbff                CALL 0x004314b0
0047c33b  e904fbffff                JMP 0x0047be44
0047c340  83bd74ffffff02            CMP dword ptr [EBP + 0xffffff74],0x2
0047c347  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047c351  7539                      JNZ 0x0047c38c
0047c353  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0047c35b  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0047c363  0f2f05f8a1ba00            COMISS XMM0,dword ptr [0x00baa1f8]
0047c36a  7220                      JC 0x0047c38c
0047c36c  51                        PUSH ECX
0047c36d  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047c374  6a00                      PUSH 0x0
0047c376  6a02                      PUSH 0x2
0047c378  51                        PUSH ECX
0047c379  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047c380  8bcf                      MOV ECX,EDI
0047c382  68e0030000                PUSH 0x3e0
0047c387  e814a82500                CALL 0x006d6ba0
0047c38c  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
0047c394  f30f1187b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM0
0047c39c  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
0047c3a4  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
0047c3ac  e993faffff                JMP 0x0047be44
0047c3b1  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0047c3b7  40                        INC EAX
0047c3b8  898710040000              MOV dword ptr [EDI + 0x410],EAX
0047c3be  83f805                    CMP EAX,0x5
0047c3c1  7549                      JNZ 0x0047c40c
0047c3c3  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0047c3ca  7440                      JZ 0x0047c40c
0047c3cc  8bcf                      MOV ECX,EDI
0047c3ce  e80da4fdff                CALL 0x004567e0
0047c3d3  83b8c003000000            CMP dword ptr [EAX + 0x3c0],0x0
0047c3da  7430                      JZ 0x0047c40c
0047c3dc  8bcf                      MOV ECX,EDI
0047c3de  e8fda3fdff                CALL 0x004567e0
0047c3e3  8bc8                      MOV ECX,EAX
0047c3e5  e8f6a3fdff                CALL 0x004567e0
0047c3ea  8bcf                      MOV ECX,EDI
0047c3ec  c780640b00000d000000      MOV dword ptr [EAX + 0xb64],0xd
0047c3f6  e8e5a3fdff                CALL 0x004567e0
0047c3fb  8bc8                      MOV ECX,EAX
0047c3fd  e8dea3fdff                CALL 0x004567e0
0047c402  c7801004000000000000      MOV dword ptr [EAX + 0x410],0x0
0047c40c  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
0047c412  83f90a                    CMP ECX,0xa
0047c415  0f8ea9000000              JLE 0x0047c4c4
0047c41b  c7458450e4b100            MOV dword ptr [EBP + -0x7c],0xb1e450
0047c422  b874e4b100                MOV EAX,0xb1e474
0047c427  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
0047c42d  be88e4b100                MOV ESI,0xb1e488
0047c432  83f91e                    CMP ECX,0x1e
0047c435  0f8e09faffff              JLE 0x0047be44
0047c43b  83bd74ffffff02            CMP dword ptr [EBP + 0xffffff74],0x2
0047c442  b850e4b100                MOV EAX,0xb1e450
0047c447  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047c44a  b874e4b100                MOV EAX,0xb1e474
0047c44f  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0047c459  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
0047c45f  0f85dff9ffff              JNZ 0x0047be44
0047c465  f30f108780030000          MOVSS XMM0,dword ptr [EDI + 0x380]
0047c46d  b850e4b100                MOV EAX,0xb1e450
0047c472  f30f5e8784030000          DIVSS XMM0,dword ptr [EDI + 0x384]
0047c47a  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047c47d  b874e4b100                MOV EAX,0xb1e474
0047c482  89855cffffff              MOV dword ptr [EBP + 0xffffff5c],EAX
0047c488  0f2f05f8a1ba00            COMISS XMM0,dword ptr [0x00baa1f8]
0047c48f  0f82aff9ffff              JC 0x0047be44
0047c495  51                        PUSH ECX
0047c496  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047c49d  6a00                      PUSH 0x0
0047c49f  6a02                      PUSH 0x2
0047c4a1  51                        PUSH ECX
0047c4a2  c704240000803f            MOV dword ptr [ESP],0x3f800000
0047c4a9  8bcf                      MOV ECX,EDI
0047c4ab  68e0030000                PUSH 0x3e0
0047c4b0  e8eba62500                CALL 0x006d6ba0
0047c4b5  b950e4b100                MOV ECX,0xb1e450
0047c4ba  b874e4b100                MOV EAX,0xb1e474
0047c4bf  e989f9ffff                JMP 0x0047be4d
0047c4c4  b89ce4b100                MOV EAX,0xb1e49c
0047c4c9  beace4b100                MOV ESI,0xb1e4ac
0047c4ce  b9e4e3b100                MOV ECX,0xb1e3e4
0047c4d3  e975f9ffff                JMP 0x0047be4d
0047c4d8  0f2f1de49fba00            COMISS XMM3,dword ptr [0x00ba9fe4]
0047c4df  8bf1                      MOV ESI,ECX
0047c4e1  0f47f0                    CMOVA ESI,EAX
0047c4e4  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
0047c4eb  8d4f48                    LEA ECX,[EDI + 0x48]
0047c4ee  6a00                      PUSH 0x0
0047c4f0  56                        PUSH ESI
0047c4f1  7549                      JNZ 0x0047c53c
0047c4f3  e8e8e1f8ff                CALL 0x0040a6e0
0047c4f8  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0047c4ff  7449                      JZ 0x0047c54a
0047c501  8bcf                      MOV ECX,EDI
0047c503  e8d8a2fdff                CALL 0x004567e0
0047c508  8bcf                      MOV ECX,EDI
0047c50a  c780640b000010000000      MOV dword ptr [EAX + 0xb64],0x10
0047c514  e8c7a2fdff                CALL 0x004567e0
0047c519  83b8c003000000            CMP dword ptr [EAX + 0x3c0],0x0
0047c520  741f                      JZ 0x0047c541
0047c522  8bcf                      MOV ECX,EDI
0047c524  e8b7a2fdff                CALL 0x004567e0
0047c529  8bc8                      MOV ECX,EAX
0047c52b  e8b0a2fdff                CALL 0x004567e0
0047c530  c780640b000010000000      MOV dword ptr [EAX + 0xb64],0x10
0047c53a  eb05                      JMP 0x0047c541
0047c53c  e83fdef8ff                CALL 0x0040a380
0047c541  83bfc003000000            CMP dword ptr [EDI + 0x3c0],0x0
0047c548  7515                      JNZ 0x0047c55f
0047c54a  8b07                      MOV EAX,dword ptr [EDI]
0047c54c  8d8dc4feffff              LEA ECX,[EBP + 0xfffffec4]
0047c552  8b5024                    MOV EDX,dword ptr [EAX + 0x24]
0047c555  e81697fbff                CALL 0x00435c70
0047c55a  50                        PUSH EAX
0047c55b  8bcf                      MOV ECX,EDI
0047c55d  ffd2                      CALL EDX
0047c55f  83bf140c000000            CMP dword ptr [EDI + 0xc14],0x0
0047c566  7512                      JNZ 0x0047c57a
0047c568  8d873c030000              LEA EAX,[EDI + 0x33c]
0047c56e  8d8f040c0000              LEA ECX,[EDI + 0xc04]
0047c574  50                        PUSH EAX
0047c575  e816cc0100                CALL 0x00499190
0047c57a  8db7040c0000              LEA ESI,[EDI + 0xc04]
0047c580  51                        PUSH ECX
0047c581  8bce                      MOV ECX,ESI
0047c583  e8a8cc0100                CALL 0x00499230
0047c588  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
0047c590  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
0047c598  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
0047c59c  f30f5c5004                SUBSS XMM2,dword ptr [EAX + 0x4]
0047c5a1  0f28c1                    MOVAPS XMM0,XMM1
0047c5a4  f30f118d78ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM1
0047c5ac  f30f59c1                  MULSS XMM0,XMM1
0047c5b0  0f28ca                    MOVAPS XMM1,XMM2
0047c5b3  f30f59ca                  MULSS XMM1,XMM2
0047c5b7  f30f11955cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM2
0047c5bf  f30f58c1                  ADDSS XMM0,XMM1
0047c5c3  e88894fbff                CALL 0x00435a50
0047c5c8  f30f10955cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff5c]
0047c5d0  0f28c8                    MOVAPS XMM1,XMM0
0047c5d3  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
0047c5da  f30f118574ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM0
0047c5e2  761d                      JBE 0x0047c601
0047c5e4  f30f101d54a4ba00          MOVSS XMM3,dword ptr [0x00baa454]
0047c5ec  f30f5ed9                  DIVSS XMM3,XMM1
0047c5f0  0f28c3                    MOVAPS XMM0,XMM3
0047c5f3  f30f59d3                  MULSS XMM2,XMM3
0047c5f7  f30f598578ffffff          MULSS XMM0,dword ptr [EBP + 0xffffff78]
0047c5ff  eb08                      JMP 0x0047c609
0047c601  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
0047c609  0f2f0d30a6ba00            COMISS XMM1,dword ptr [0x00baa630]
0047c610  f30f58c0                  ADDSS XMM0,XMM0
0047c614  f30f58d2                  ADDSS XMM2,XMM2
0047c618  f30f118578ffffff          MOVSS dword ptr [EBP + 0xffffff78],XMM0
0047c620  f30f11955cffffff          MOVSS dword ptr [EBP + 0xffffff5c],XMM2
0047c628  0f862e010000              JBE 0x0047c75c
0047c62e  8b4610                    MOV EAX,dword ptr [ESI + 0x10]
0047c631  85c0                      TEST EAX,EAX
0047c633  0f84e9010000              JZ 0x0047c822
0047c639  8b06                      MOV EAX,dword ptr [ESI]
0047c63b  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
0047c63e  895584                    MOV dword ptr [EBP + -0x7c],EDX
0047c641  85c0                      TEST EAX,EAX
0047c643  7404                      JZ 0x0047c649
0047c645  8b00                      MOV EAX,dword ptr [EAX]
0047c647  eb02                      JMP 0x0047c64b
0047c649  33c0                      XOR EAX,EAX
0047c64b  8b4808                    MOV ECX,dword ptr [EAX + 0x8]
0047c64e  894580                    MOV dword ptr [EBP + -0x80],EAX
0047c651  49                        DEC ECX
0047c652  8bc2                      MOV EAX,EDX
0047c654  d1e8                      SHR EAX,0x1
0047c656  23c8                      AND ECX,EAX
0047c658  8b4580                    MOV EAX,dword ptr [EBP + -0x80]
0047c65b  83e201                    AND EDX,0x1
0047c65e  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0047c661  8b0488                    MOV EAX,dword ptr [EAX + ECX*0x4]
0047c664  f30f5804d0                ADDSS XMM0,dword ptr [EAX + EDX*0x8]
0047c669  f30f118554ffffff          MOVSS dword ptr [EBP + 0xffffff54],XMM0
0047c671  0f28c2                    MOVAPS XMM0,XMM2
0047c674  f30f5844d004              ADDSS XMM0,dword ptr [EAX + EDX*0x8 + 0x4]
0047c67a  f30f118568ffffff          MOVSS dword ptr [EBP + 0xffffff68],XMM0
0047c682  7529                      JNZ 0x0047c6ad
0047c684  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0047c687  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047c68a  8b4610                    MOV EAX,dword ptr [ESI + 0x10]
0047c68d  83c002                    ADD EAX,0x2
0047c690  d1e8                      SHR EAX,0x1
0047c692  394608                    CMP dword ptr [ESI + 0x8],EAX
0047c695  7716                      JA 0x0047c6ad
0047c697  51                        PUSH ECX
0047c698  8bce                      MOV ECX,ESI
0047c69a  e871cd0100                CALL 0x00499410
0047c69f  8b460c                    MOV EAX,dword ptr [ESI + 0xc]
0047c6a2  f30f108d74ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff74]
0047c6aa  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047c6ad  8b5608                    MOV EDX,dword ptr [ESI + 0x8]
0047c6b0  8d0c12                    LEA ECX,[EDX + EDX*0x1]
0047c6b3  8d41ff                    LEA EAX,[ECX + -0x1]
0047c6b6  214584                    AND dword ptr [EBP + -0x7c],EAX
0047c6b9  8b4584                    MOV EAX,dword ptr [EBP + -0x7c]
0047c6bc  89460c                    MOV dword ptr [ESI + 0xc],EAX
0047c6bf  0f44c1                    CMOVZ EAX,ECX
0047c6c2  48                        DEC EAX
0047c6c3  8d4aff                    LEA ECX,[EDX + -0x1]
0047c6c6  894584                    MOV dword ptr [EBP + -0x7c],EAX
0047c6c9  d1e8                      SHR EAX,0x1
0047c6cb  23c8                      AND ECX,EAX
0047c6cd  8b4604                    MOV EAX,dword ptr [ESI + 0x4]
0047c6d0  894d80                    MOV dword ptr [EBP + -0x80],ECX
0047c6d3  833c8800                  CMP dword ptr [EAX + ECX*0x4],0x0
0047c6d7  751b                      JNZ 0x0047c6f4
0047c6d9  6a10                      PUSH 0x10
0047c6db  e8e02d5900                CALL 0x00a0f4c0
0047c6e0  8b4e04                    MOV ECX,dword ptr [ESI + 0x4]
0047c6e3  83c404                    ADD ESP,0x4
0047c6e6  8b5580                    MOV EDX,dword ptr [EBP + -0x80]
0047c6e9  f30f108d74ffffff          MOVSS XMM1,dword ptr [EBP + 0xffffff74]
0047c6f1  890491                    MOV dword ptr [ECX + EDX*0x4],EAX
0047c6f4  8b7e04                    MOV EDI,dword ptr [ESI + 0x4]
0047c6f7  8b4580                    MOV EAX,dword ptr [EBP + -0x80]
0047c6fa  8b5584                    MOV EDX,dword ptr [EBP + -0x7c]
0047c6fd  8bca                      MOV ECX,EDX
0047c6ff  f30f108554ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff54]
0047c707  83e101                    AND ECX,0x1
0047c70a  f30f5c0d30a6ba00          SUBSS XMM1,dword ptr [0x00baa630]
0047c712  8b0487                    MOV EAX,dword ptr [EDI + EAX*0x4]
0047c715  f30f10955cffffff          MOVSS XMM2,dword ptr [EBP + 0xffffff5c]
0047c71d  8bbd4cffffff              MOV EDI,dword ptr [EBP + 0xffffff4c]
0047c723  f30f1104c8                MOVSS dword ptr [EAX + ECX*0x8],XMM0
0047c728  f30f108568ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff68]
0047c730  f30f1144c804              MOVSS dword ptr [EAX + ECX*0x8 + 0x4],XMM0
0047c736  ff4610                    INC dword ptr [ESI + 0x10]
0047c739  0f2f0d30a6ba00            COMISS XMM1,dword ptr [0x00baa630]
0047c740  8b4610                    MOV EAX,dword ptr [ESI + 0x10]
0047c743  89560c                    MOV dword ptr [ESI + 0xc],EDX
0047c746  f30f108578ffffff          MOVSS XMM0,dword ptr [EBP + 0xffffff78]
0047c74e  f30f118d74ffffff          MOVSS dword ptr [EBP + 0xffffff74],XMM1
0047c756  0f87d5feffff              JA 0x0047c631
0047c75c  83bf140c00001e            CMP dword ptr [EDI + 0xc14],0x1e
0047c763  7644                      JBE 0x0047c7a9
0047c765  8b560c                    MOV EDX,dword ptr [ESI + 0xc]
0047c768  83ec0c                    SUB ESP,0xc
0047c76b  8b8f140c0000              MOV ECX,dword ptr [EDI + 0xc14]
0047c771  8bc4                      MOV EAX,ESP
0047c773  8b36                      MOV ESI,dword ptr [ESI]
0047c775  03ca                      ADD ECX,EDX
0047c777  83ec0c                    SUB ESP,0xc
0047c77a  83c214                    ADD EDX,0x14
0047c77d  894808                    MOV dword ptr [EAX + 0x8],ECX
0047c780  8d8f040c0000              LEA ECX,[EDI + 0xc04]
0047c786  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
0047c78d  8930                      MOV dword ptr [EAX],ESI
0047c78f  8bc4                      MOV EAX,ESP
0047c791  c7400400000000            MOV dword ptr [EAX + 0x4],0x0
0047c798  8930                      MOV dword ptr [EAX],ESI
0047c79a  895008                    MOV dword ptr [EAX + 0x8],EDX
0047c79d  8d8560ffffff              LEA EAX,[EBP + 0xffffff60]
0047c7a3  50                        PUSH EAX
0047c7a4  e827c80100                CALL 0x00498fd0
0047c7a9  837f2c00                  CMP dword ptr [EDI + 0x2c],0x0
0047c7ad  7531                      JNZ 0x0047c7e0
0047c7af  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0047c7b2  83f801                    CMP EAX,0x1
0047c7b5  7512                      JNZ 0x0047c7c9
0047c7b7  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0047c7bf  f30f590580a3ba00          MULSS XMM0,dword ptr [0x00baa380]
0047c7c7  eb27                      JMP 0x0047c7f0
0047c7c9  83f802                    CMP EAX,0x2
0047c7cc  7512                      JNZ 0x0047c7e0
0047c7ce  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0047c7d6  f30f5905c8a3ba00          MULSS XMM0,dword ptr [0x00baa3c8]
0047c7de  eb10                      JMP 0x0047c7f0
0047c7e0  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0047c7e8  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0047c7f0  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0047c7f8  8b8780030000              MOV EAX,dword ptr [EDI + 0x380]
0047c7fe  8987bc0b0000              MOV dword ptr [EDI + 0xbbc],EAX
0047c804  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0047c807  64890d00000000            MOV dword ptr FS:[0x0],ECX
0047c80e  59                        POP ECX
0047c80f  5f                        POP EDI
0047c810  5e                        POP ESI
0047c811  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
0047c814  33cd                      XOR ECX,EBP
0047c816  e810296700                CALL 0x00aef12b
0047c81b  8be5                      MOV ESP,EBP
0047c81d  5d                        POP EBP
0047c81e  8be3                      MOV ESP,EBX
0047c820  5b                        POP EBX
0047c821  c3                        RET
0047c822  e829cd0100                CALL 0x00499550
0047c827  90                        NOP
0047c828  fd                        STD
0047c829  b747                      MOV BH,0x47
0047c82b  006ac2                    ADD byte ptr [EDX + -0x3e],CH
0047c82e  47                        INC EDI
0047c82f  0056bf                    ADD byte ptr [ESI + -0x41],DL
0047c832  47                        INC EDI
0047c833  00b1c347004f              ADD byte ptr [ECX + 0x4f0047c3],DH
0047c839  bd470044be                MOV EBP,0xbe440047
0047c83e  47                        INC EDI
0047c83f  0000                      ADD byte ptr [EAX],AL
0047c841  0505050105                ADD EAX,0x5010505
0047c846  0505020305                ADD EAX,0x5030205
0047c84b  0504cccccc                ADD EAX,0xcccccc04
