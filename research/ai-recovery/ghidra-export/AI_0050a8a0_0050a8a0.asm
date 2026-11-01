; J460 NPC AI 0x0050a8a0 AI_0050a8a0
; types=96
; identities=96.0.0
; entry=0050a8a0
0050a8a0  55                        PUSH EBP
0050a8a1  8bec                      MOV EBP,ESP
0050a8a3  83e4f8                    AND ESP,0xfffffff8
0050a8a6  83ec40                    SUB ESP,0x40
0050a8a9  56                        PUSH ESI
0050a8aa  8bf1                      MOV ESI,ECX
0050a8ac  57                        PUSH EDI
0050a8ad  83be640b000000            CMP dword ptr [ESI + 0xb64],0x0
0050a8b4  0f8590000000              JNZ 0x0050a94a
0050a8ba  838e6801000001            OR dword ptr [ESI + 0x168],0x1
0050a8c1  838e6c01000008            OR dword ptr [ESI + 0x16c],0x8
0050a8c8  c7868801000002000000      MOV dword ptr [ESI + 0x188],0x2
0050a8d2  c7868401000000000000      MOV dword ptr [ESI + 0x184],0x0
0050a8dc  c686b003000001            MOV byte ptr [ESI + 0x3b0],0x1
0050a8e3  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
0050a8ed  e86e461e00                CALL 0x006eef60
0050a8f2  33d2                      XOR EDX,EDX
0050a8f4  c786c00b000000000000      MOV dword ptr [ESI + 0xbc0],0x0
0050a8fe  b90a000000                MOV ECX,0xa
0050a903  c786a40b000000000000      MOV dword ptr [ESI + 0xba4],0x0
0050a90d  f7f1                      DIV ECX
0050a90f  c786c40b000000000000      MOV dword ptr [ESI + 0xbc4],0x0
0050a919  899610040000              MOV dword ptr [ESI + 0x410],EDX
0050a91f  8b863c030000              MOV EAX,dword ptr [ESI + 0x33c]
0050a925  898634030000              MOV dword ptr [ESI + 0x334],EAX
0050a92b  8b8640030000              MOV EAX,dword ptr [ESI + 0x340]
0050a931  898638030000              MOV dword ptr [ESI + 0x338],EAX
0050a937  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0050a93d  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
0050a944  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0050a94a  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
0050a950  8dbebc030000              LEA EDI,[ESI + 0x3bc]
0050a956  85c9                      TEST ECX,ECX
0050a958  0f8421010000              JZ 0x0050aa7f
0050a95e  8b9168010000              MOV EDX,dword ptr [ECX + 0x168]
0050a964  8bc2                      MOV EAX,EDX
0050a966  2500000001                AND EAX,0x1000000
0050a96b  83c800                    OR EAX,0x0
0050a96e  0f840b010000              JZ 0x0050aa7f
0050a974  8b8668010000              MOV EAX,dword ptr [ESI + 0x168]
0050a97a  2500000001                AND EAX,0x1000000
0050a97f  83c800                    OR EAX,0x0
0050a982  0f85f7000000              JNZ 0x0050aa7f
0050a988  8b4128                    MOV EAX,dword ptr [ECX + 0x28]
0050a98b  f30f10813c030000          MOVSS XMM0,dword ptr [ECX + 0x33c]
0050a993  f30f108940030000          MOVSS XMM1,dword ptr [ECX + 0x340]
0050a99b  89442420                  MOV dword ptr [ESP + 0x20],EAX
0050a99f  8b412c                    MOV EAX,dword ptr [ECX + 0x2c]
0050a9a2  89442424                  MOV dword ptr [ESP + 0x24],EAX
0050a9a6  8b4134                    MOV EAX,dword ptr [ECX + 0x34]
0050a9a9  89442428                  MOV dword ptr [ESP + 0x28],EAX
0050a9ad  8b4138                    MOV EAX,dword ptr [ECX + 0x38]
0050a9b0  8944242c                  MOV dword ptr [ESP + 0x2c],EAX
0050a9b4  8bc2                      MOV EAX,EDX
0050a9b6  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0050a9bc  2500010000                AND EAX,0x100
0050a9c1  83c800                    OR EAX,0x0
0050a9c4  f30f108160030000          MOVSS XMM0,dword ptr [ECX + 0x360]
0050a9cc  f30f114c2434              MOVSS dword ptr [ESP + 0x34],XMM1
0050a9d2  f30f108964030000          MOVSS XMM1,dword ptr [ECX + 0x364]
0050a9da  f30f11442438              MOVSS dword ptr [ESP + 0x38],XMM0
0050a9e0  f30f114c243c              MOVSS dword ptr [ESP + 0x3c],XMM1
0050a9e6  c744241401000000          MOV dword ptr [ESP + 0x14],0x1
0050a9ee  7508                      JNZ 0x0050a9f8
0050a9f0  c744241400000000          MOV dword ptr [ESP + 0x14],0x0
0050a9f8  81e200000020              AND EDX,0x20000000
0050a9fe  c744241002000000          MOV dword ptr [ESP + 0x10],0x2
0050aa06  83ca00                    OR EDX,0x0
0050aa09  7508                      JNZ 0x0050aa13
0050aa0b  c744241000000000          MOV dword ptr [ESP + 0x10],0x0
0050aa13  8b916c010000              MOV EDX,dword ptr [ECX + 0x16c]
0050aa19  33c0                      XOR EAX,EAX
0050aa1b  81e200004000              AND EDX,0x400000
0050aa21  0bc2                      OR EAX,EDX
0050aa23  7407                      JZ 0x0050aa2c
0050aa25  b804000000                MOV EAX,0x4
0050aa2a  eb02                      JMP 0x0050aa2e
0050aa2c  33c0                      XOR EAX,EAX
0050aa2e  0b442410                  OR EAX,dword ptr [ESP + 0x10]
0050aa32  0b442414                  OR EAX,dword ptr [ESP + 0x14]
0050aa36  6a01                      PUSH 0x1
0050aa38  6a01                      PUSH 0x1
0050aa3a  ffb13c020000              PUSH dword ptr [ECX + 0x23c]
0050aa40  8944244c                  MOV dword ptr [ESP + 0x4c],EAX
0050aa44  8d44242c                  LEA EAX,[ESP + 0x2c]
0050aa48  894c2450                  MOV dword ptr [ESP + 0x50],ECX
0050aa4c  8bce                      MOV ECX,ESI
0050aa4e  50                        PUSH EAX
0050aa4f  e8bcb11a00                CALL 0x006b5c10
0050aa54  83be3c02000000            CMP dword ptr [ESI + 0x23c],0x0
0050aa5b  7e22                      JLE 0x0050aa7f
0050aa5d  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0050aa63  818e6801000000000001      OR dword ptr [ESI + 0x168],0x1000000
0050aa6d  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
0050aa73  8b86b8030000              MOV EAX,dword ptr [ESI + 0x3b8]
0050aa79  8986b4030000              MOV dword ptr [ESI + 0x3b4],EAX
0050aa7f  83be640b000010            CMP dword ptr [ESI + 0xb64],0x10
0050aa86  8b0f                      MOV ECX,dword ptr [EDI]
0050aa88  f30f1015d0a2ba00          MOVSS XMM2,dword ptr [0x00baa2d0]
0050aa90  0f94c2                    SETZ DL
0050aa93  8854240f                  MOV byte ptr [ESP + 0xf],DL
0050aa97  85c9                      TEST ECX,ECX
0050aa99  0f8463010000              JZ 0x0050ac02
0050aa9f  f30f10813c030000          MOVSS XMM0,dword ptr [ECX + 0x33c]
0050aaa7  f30f108940030000          MOVSS XMM1,dword ptr [ECX + 0x340]
0050aaaf  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
0050aab7  f30f118e38030000          MOVSS dword ptr [ESI + 0x338],XMM1
0050aabf  8b07                      MOV EAX,dword ptr [EDI]
0050aac1  c786a40b000001000000      MOV dword ptr [ESI + 0xba4],0x1
0050aacb  85c0                      TEST EAX,EAX
0050aacd  742e                      JZ 0x0050aafd
0050aacf  6a00                      PUSH 0x0
0050aad1  68acd6c500                PUSH 0xc5d6ac
0050aad6  68dcd5c500                PUSH 0xc5d5dc
0050aadb  6a00                      PUSH 0x0
0050aadd  50                        PUSH EAX
0050aade  e8ce5d5e00                CALL 0x00af08b1
0050aae3  83c414                    ADD ESP,0x14
0050aae6  85c0                      TEST EAX,EAX
0050aae8  750f                      JNZ 0x0050aaf9
0050aaea  6850d4b100                PUSH 0xb1d450
0050aaef  6a10                      PUSH 0x10
0050aaf1  e8ca675000                CALL 0x00a112c0
0050aaf6  83c408                    ADD ESP,0x8
0050aaf9  8a54240f                  MOV DL,byte ptr [ESP + 0xf]
0050aafd  8b0f                      MOV ECX,dword ptr [EDI]
0050aaff  80b97301000000            CMP byte ptr [ECX + 0x173],0x0
0050ab06  7402                      JZ 0x0050ab0a
0050ab08  b201                      MOV DL,0x1
0050ab0a  f30f100da0a8ba00          MOVSS XMM1,dword ptr [0x00baa8a0]
0050ab12  f30f1005bca0ba00          MOVSS XMM0,dword ptr [0x00baa0bc]
0050ab1a  f30f114c2410              MOVSS dword ptr [ESP + 0x10],XMM1
0050ab20  f30f100d7ca8ba00          MOVSS XMM1,dword ptr [0x00baa87c]
0050ab28  f30f114c2418              MOVSS dword ptr [ESP + 0x18],XMM1
0050ab2e  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0050ab34  85c9                      TEST ECX,ECX
0050ab36  7406                      JZ 0x0050ab3e
0050ab38  8379285a                  CMP dword ptr [ECX + 0x28],0x5a
0050ab3c  752a                      JNZ 0x0050ab68
0050ab3e  f30f10058ca0ba00          MOVSS XMM0,dword ptr [0x00baa08c]
0050ab46  f30f11442414              MOVSS dword ptr [ESP + 0x14],XMM0
0050ab4c  f30f100550a9ba00          MOVSS XMM0,dword ptr [0x00baa950]
0050ab54  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0050ab5a  f30f100524a9ba00          MOVSS XMM0,dword ptr [0x00baa924]
0050ab62  f30f11442418              MOVSS dword ptr [ESP + 0x18],XMM0
0050ab68  84d2                      TEST DL,DL
0050ab6a  0f8487010000              JZ 0x0050acf7
0050ab70  83bec00b000000            CMP dword ptr [ESI + 0xbc0],0x0
0050ab77  0f8e6d010000              JLE 0x0050acea
0050ab7d  a17816c700                MOV EAX,[0x00c71678]
0050ab82  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0050ab88  8d8634030000              LEA EAX,[ESI + 0x334]
0050ab8e  51                        PUSH ECX
0050ab8f  c70424000020c1            MOV dword ptr [ESP],0xc1200000
0050ab96  50                        PUSH EAX
0050ab97  e8c4873000                CALL 0x00813360
0050ab9c  84c0                      TEST AL,AL
0050ab9e  0f8446010000              JZ 0x0050acea
0050aba4  6aff                      PUSH -0x1
0050aba6  6a00                      PUSH 0x0
0050aba8  6a00                      PUSH 0x0
0050abaa  6a12                      PUSH 0x12
0050abac  8bce                      MOV ECX,ESI
0050abae  c7868401000003000000      MOV dword ptr [ESI + 0x184],0x3
0050abb8  e873631b00                CALL 0x006c0f30
0050abbd  8b0f                      MOV ECX,dword ptr [EDI]
0050abbf  85c9                      TEST ECX,ECX
0050abc1  7414                      JZ 0x0050abd7
0050abc3  8d442418                  LEA EAX,[ESP + 0x18]
0050abc7  897c2418                  MOV dword ptr [ESP + 0x18],EDI
0050abcb  50                        PUSH EAX
0050abcc  81c1cc030000              ADD ECX,0x3cc
0050abd2  e83946fcff                CALL 0x004cf210
0050abd7  83a668010000fe            AND dword ptr [ESI + 0x168],0xfffffffe
0050abde  83a66c010000f7            AND dword ptr [ESI + 0x16c],0xfffffff7
0050abe5  c70700000000              MOV dword ptr [EDI],0x0
0050abeb  c686b003000000            MOV byte ptr [ESI + 0x3b0],0x0
0050abf2  c7868801000004000000      MOV dword ptr [ESI + 0x188],0x4
0050abfc  5f                        POP EDI
0050abfd  5e                        POP ESI
0050abfe  8be5                      MOV ESP,EBP
0050ac00  5d                        POP EBP
0050ac01  c3                        RET
0050ac02  83bea40b000001            CMP dword ptr [ESI + 0xba4],0x1
0050ac09  7507                      JNZ 0x0050ac12
0050ac0b  b201                      MOV DL,0x1
0050ac0d  e92cffffff                JMP 0x0050ab3e
0050ac12  f30f100d04a9ba00          MOVSS XMM1,dword ptr [0x00baa904]
0050ac1a  f30f108634030000          MOVSS XMM0,dword ptr [ESI + 0x334]
0050ac22  f30f5cc1                  SUBSS XMM0,XMM1
0050ac26  a17816c700                MOV EAX,[0x00c71678]
0050ac2b  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0050ac31  f30f5ec1                  DIVSS XMM0,XMM1
0050ac35  89442410                  MOV dword ptr [ESP + 0x10],EAX
0050ac39  f30f58c2                  ADDSS XMM0,XMM2
0050ac3d  f30f2cf8                  CVTTSS2SI EDI,XMM0
0050ac41  897c2414                  MOV dword ptr [ESP + 0x14],EDI
0050ac45  85ff                      TEST EDI,EDI
0050ac47  8dbebc030000              LEA EDI,[ESI + 0x3bc]
0050ac4d  0f88ebfeffff              JS 0x0050ab3e
0050ac53  8b400c                    MOV EAX,dword ptr [EAX + 0xc]
0050ac56  39442414                  CMP dword ptr [ESP + 0x14],EAX
0050ac5a  0f8ddefeffff              JGE 0x0050ab3e
0050ac60  f30f108638030000          MOVSS XMM0,dword ptr [ESI + 0x338]
0050ac68  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
0050ac70  f30f5ec1                  DIVSS XMM0,XMM1
0050ac74  f30f58c2                  ADDSS XMM0,XMM2
0050ac78  f30f2cf8                  CVTTSS2SI EDI,XMM0
0050ac7c  897c2418                  MOV dword ptr [ESP + 0x18],EDI
0050ac80  85ff                      TEST EDI,EDI
0050ac82  8dbebc030000              LEA EDI,[ESI + 0x3bc]
0050ac88  0f88b0feffff              JS 0x0050ab3e
0050ac8e  8b7c2410                  MOV EDI,dword ptr [ESP + 0x10]
0050ac92  f30f2cc8                  CVTTSS2SI ECX,XMM0
0050ac96  3b4f10                    CMP ECX,dword ptr [EDI + 0x10]
0050ac99  8dbebc030000              LEA EDI,[ESI + 0x3bc]
0050ac9f  8b0f                      MOV ECX,dword ptr [EDI]
0050aca1  0f8d97feffff              JGE 0x0050ab3e
0050aca7  0faf442418                IMUL EAX,dword ptr [ESP + 0x18]
0050acac  03442414                  ADD EAX,dword ptr [ESP + 0x14]
0050acb0  0f8854feffff              JS 0x0050ab0a
0050acb6  3dc0010000                CMP EAX,0x1c0
0050acbb  7d26                      JGE 0x0050ace3
0050acbd  8b7c2410                  MOV EDI,dword ptr [ESP + 0x10]
0050acc1  8b448724                  MOV EAX,dword ptr [EDI + EAX*0x4 + 0x24]
0050acc5  8dbebc030000              LEA EDI,[ESI + 0x3bc]
0050accb  85c0                      TEST EAX,EAX
0050accd  7414                      JZ 0x0050ace3
0050accf  8378040e                  CMP dword ptr [EAX + 0x4],0xe
0050acd3  0f8531feffff              JNZ 0x0050ab0a
0050acd9  83783c00                  CMP dword ptr [EAX + 0x3c],0x0
0050acdd  0f8527feffff              JNZ 0x0050ab0a
0050ace3  b201                      MOV DL,0x1
0050ace5  e954feffff                JMP 0x0050ab3e
0050acea  8b06                      MOV EAX,dword ptr [ESI]
0050acec  8bce                      MOV ECX,ESI
0050acee  ff5028                    CALL dword ptr [EAX + 0x28]
0050acf1  5f                        POP EDI
0050acf2  5e                        POP ESI
0050acf3  8be5                      MOV ESP,EBP
0050acf5  5d                        POP EBP
0050acf6  c3                        RET
0050acf7  85c9                      TEST ECX,ECX
0050acf9  742e                      JZ 0x0050ad29
0050acfb  83797c00                  CMP dword ptr [ECX + 0x7c],0x0
0050acff  7504                      JNZ 0x0050ad05
0050ad01  33c0                      XOR EAX,EAX
0050ad03  eb0f                      JMP 0x0050ad14
0050ad05  684cd8b100                PUSH 0xb1d84c
0050ad0a  83c178                    ADD ECX,0x78
0050ad0d  e8ceffefff                CALL 0x0040ace0
0050ad12  8b0f                      MOV ECX,dword ptr [EDI]
0050ad14  85c9                      TEST ECX,ECX
0050ad16  7411                      JZ 0x0050ad29
0050ad18  85c0                      TEST EAX,EAX
0050ad1a  7406                      JZ 0x0050ad22
0050ad1c  80780c00                  CMP byte ptr [EAX + 0xc],0x0
0050ad20  7507                      JNZ 0x0050ad29
0050ad22  c644240f01                MOV byte ptr [ESP + 0xf],0x1
0050ad27  eb05                      JMP 0x0050ad2e
0050ad29  c644240f00                MOV byte ptr [ESP + 0xf],0x0
0050ad2e  8b86640b0000              MOV EAX,dword ptr [ESI + 0xb64]
0050ad34  83e804                    SUB EAX,0x4
0050ad37  0f84cb000000              JZ 0x0050ae08
0050ad3d  83e802                    SUB EAX,0x2
0050ad40  745c                      JZ 0x0050ad9e
0050ad42  83e801                    SUB EAX,0x1
0050ad45  0f853d020000              JNZ 0x0050af88
0050ad4b  50                        PUSH EAX
0050ad4c  687c0db600                PUSH 0xb60d7c
0050ad51  8d4e48                    LEA ECX,[ESI + 0x48]
0050ad54  e827f6efff                CALL 0x0040a380
0050ad59  8b8634030000              MOV EAX,dword ptr [ESI + 0x334]
0050ad5f  89863c030000              MOV dword ptr [ESI + 0x33c],EAX
0050ad65  8b8638030000              MOV EAX,dword ptr [ESI + 0x338]
0050ad6b  898640030000              MOV dword ptr [ESI + 0x340],EAX
0050ad71  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
0050ad75  740d                      JZ 0x0050ad84
0050ad77  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
0050ad7e  0f8504020000              JNZ 0x0050af88
0050ad84  c7868801000002000000      MOV dword ptr [ESI + 0x188],0x2
0050ad8e  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
0050ad98  5f                        POP EDI
0050ad99  5e                        POP ESI
0050ad9a  8be5                      MOV ESP,EBP
0050ad9c  5d                        POP EBP
0050ad9d  c3                        RET
0050ad9e  6a00                      PUSH 0x0
0050ada0  68880db600                PUSH 0xb60d88
0050ada5  8d4e48                    LEA ECX,[ESI + 0x48]
0050ada8  e8d3f5efff                CALL 0x0040a380
0050adad  8b8634030000              MOV EAX,dword ptr [ESI + 0x334]
0050adb3  89863c030000              MOV dword ptr [ESI + 0x33c],EAX
0050adb9  8b8638030000              MOV EAX,dword ptr [ESI + 0x338]
0050adbf  898640030000              MOV dword ptr [ESI + 0x340],EAX
0050adc5  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
0050adc9  7409                      JZ 0x0050add4
0050adcb  80be8c00000000            CMP byte ptr [ESI + 0x8c],0x0
0050add2  750a                      JNZ 0x0050adde
0050add4  c7865c01000000000000      MOV dword ptr [ESI + 0x15c],0x0
0050adde  807c240f00                CMP byte ptr [ESP + 0xf],0x0
0050ade3  0f859f010000              JNZ 0x0050af88
0050ade9  8b8630030000              MOV EAX,dword ptr [ESI + 0x330]
0050adef  c786640b000007000000      MOV dword ptr [ESI + 0xb64],0x7
0050adf9  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
0050adfc  89865c010000              MOV dword ptr [ESI + 0x15c],EAX
0050ae02  5f                        POP EDI
0050ae03  5e                        POP ESI
0050ae04  8be5                      MOV ESP,EBP
0050ae06  5d                        POP EBP
0050ae07  c3                        RET
0050ae08  6a00                      PUSH 0x0
0050ae0a  6804deb100                PUSH 0xb1de04
0050ae0f  8d4e48                    LEA ECX,[ESI + 0x48]
0050ae12  e869f5efff                CALL 0x0040a380
0050ae17  807c240f00                CMP byte ptr [ESP + 0xf],0x0
0050ae1c  7423                      JZ 0x0050ae41
0050ae1e  c7868801000000000000      MOV dword ptr [ESI + 0x188],0x0
0050ae28  c786640b000006000000      MOV dword ptr [ESI + 0xb64],0x6
0050ae32  c786c00b000000000000      MOV dword ptr [ESI + 0xbc0],0x0
0050ae3c  e92f010000                JMP 0x0050af70
0050ae41  8b8e10040000              MOV ECX,dword ptr [ESI + 0x410]
0050ae47  a17816c700                MOV EAX,[0x00c71678]
0050ae4c  660f6ec9                  MOVD XMM1,ECX
0050ae50  660f6e90f8640200          MOVD XMM2,dword ptr [EAX + 0x264f8]
0050ae58  0f5bc9                    CVTDQ2PS XMM1,XMM1
0050ae5b  0f5bd2                    CVTDQ2PS XMM2,XMM2
0050ae5e  f30f590d08a7ba00          MULSS XMM1,dword ptr [0x00baa708]
0050ae66  f30f59542414              MULSS XMM2,dword ptr [ESP + 0x14]
0050ae6c  f30f5e0d1ca8ba00          DIVSS XMM1,dword ptr [0x00baa81c]
0050ae74  f30f591508a7ba00          MULSS XMM2,dword ptr [0x00baa708]
0050ae7c  f30f58d1                  ADDSS XMM2,XMM1
0050ae80  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
0050ae86  f6c101                    TEST CL,0x1
0050ae89  750d                      JNZ 0x0050ae98
0050ae8b  0f571570cbba00            XORPS XMM2,xmmword ptr [0x00bacb70]
0050ae92  f30f11542414              MOVSS dword ptr [ESP + 0x14],XMM2
0050ae98  0f28c2                    MOVAPS XMM0,XMM2
0050ae9b  e8a026f1ff                CALL 0x0041d540
0050aea0  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0050aea6  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0050aeac  e86f26f1ff                CALL 0x0041d520
0050aeb1  8b3f                      MOV EDI,dword ptr [EDI]
0050aeb3  0f28d8                    MOVAPS XMM3,XMM0
0050aeb6  ba5a000000                MOV EDX,0x5a
0050aebb  85ff                      TEST EDI,EDI
0050aebd  740b                      JZ 0x0050aeca
0050aebf  395728                    CMP dword ptr [EDI + 0x28],EDX
0050aec2  b81e000000                MOV EAX,0x1e
0050aec7  0f44d0                    CMOVZ EDX,EAX
0050aeca  8b8ec00b0000              MOV ECX,dword ptr [ESI + 0xbc0]
0050aed0  8bc2                      MOV EAX,EDX
0050aed2  3bca                      CMP ECX,EDX
0050aed4  660f6ec2                  MOVD XMM0,EDX
0050aed8  0f5bc0                    CVTDQ2PS XMM0,XMM0
0050aedb  0f4cc1                    CMOVL EAX,ECX
0050aede  660f6ee8                  MOVD XMM5,EAX
0050aee2  8d4101                    LEA EAX,[ECX + 0x1]
0050aee5  8986c00b0000              MOV dword ptr [ESI + 0xbc0],EAX
0050aeeb  0f5bed                    CVTDQ2PS XMM5,XMM5
0050aeee  f30f5ee8                  DIVSS XMM5,XMM0
0050aef2  85ff                      TEST EDI,EDI
0050aef4  7410                      JZ 0x0050af06
0050aef6  837f2866                  CMP dword ptr [EDI + 0x28],0x66
0050aefa  750a                      JNZ 0x0050af06
0050aefc  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
0050af04  eb08                      JMP 0x0050af0e
0050af06  f30f1025d0a2ba00          MOVSS XMM4,dword ptr [0x00baa2d0]
0050af0e  f30f595c2418              MULSS XMM3,dword ptr [ESP + 0x18]
0050af14  f30f1054241c              MOVSS XMM2,dword ptr [ESP + 0x1c]
0050af1a  f30f59542410              MULSS XMM2,dword ptr [ESP + 0x10]
0050af20  f30f10863c030000          MOVSS XMM0,dword ptr [ESI + 0x33c]
0050af28  f30f108e40030000          MOVSS XMM1,dword ptr [ESI + 0x340]
0050af30  f30f59d5                  MULSS XMM2,XMM5
0050af34  f30f59dd                  MULSS XMM3,XMM5
0050af38  f30f589634030000          ADDSS XMM2,dword ptr [ESI + 0x334]
0050af40  f30f589e38030000          ADDSS XMM3,dword ptr [ESI + 0x338]
0050af48  f30f5cd0                  SUBSS XMM2,XMM0
0050af4c  f30f5cd9                  SUBSS XMM3,XMM1
0050af50  f30f59d4                  MULSS XMM2,XMM4
0050af54  f30f59dc                  MULSS XMM3,XMM4
0050af58  f30f58d0                  ADDSS XMM2,XMM0
0050af5c  f30f58d9                  ADDSS XMM3,XMM1
0050af60  f30f11963c030000          MOVSS dword ptr [ESI + 0x33c],XMM2
0050af68  f30f119e40030000          MOVSS dword ptr [ESI + 0x340],XMM3
0050af70  f30f10866c030000          MOVSS XMM0,dword ptr [ESI + 0x36c]
0050af78  f30f5905e0a3ba00          MULSS XMM0,dword ptr [0x00baa3e0]
0050af80  f30f11866c030000          MOVSS dword ptr [ESI + 0x36c],XMM0
0050af88  5f                        POP EDI
0050af89  5e                        POP ESI
0050af8a  8be5                      MOV ESP,EBP
0050af8c  5d                        POP EBP
0050af8d  c3                        RET
