; J460 NPC AI 0x00490680 AI_00490680
; types=404
; identities=404.0.0,404.1.0
; entry=00490680
00490680  53                        PUSH EBX
00490681  8bdc                      MOV EBX,ESP
00490683  83ec08                    SUB ESP,0x8
00490686  83e4f8                    AND ESP,0xfffffff8
00490689  83c404                    ADD ESP,0x4
0049068c  55                        PUSH EBP
0049068d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
00490690  896c2404                  MOV dword ptr [ESP + 0x4],EBP
00490694  8bec                      MOV EBP,ESP
00490696  6aff                      PUSH -0x1
00490698  68052eaf00                PUSH 0xaf2e05
0049069d  64a100000000              MOV EAX,FS:[0x0]
004906a3  50                        PUSH EAX
004906a4  53                        PUSH EBX
004906a5  81eca0000000              SUB ESP,0xa0
004906ab  56                        PUSH ESI
004906ac  57                        PUSH EDI
004906ad  a1b493bf00                MOV EAX,[0x00bf93b4]
004906b2  33c5                      XOR EAX,EBP
004906b4  50                        PUSH EAX
004906b5  8d45f4                    LEA EAX,[EBP + -0xc]
004906b8  64a300000000              MOV FS:[0x0],EAX
004906be  8bf9                      MOV EDI,ECX
004906c0  897dac                    MOV dword ptr [EBP + -0x54],EDI
004906c3  8b472c                    MOV EAX,dword ptr [EDI + 0x2c]
004906c6  85c0                      TEST EAX,EAX
004906c8  0f852d170000              JNZ 0x00491dfb
004906ce  8d4f78                    LEA ECX,[EDI + 0x78]
004906d1  894de8                    MOV dword ptr [EBP + -0x18],ECX
004906d4  39477c                    CMP dword ptr [EDI + 0x7c],EAX
004906d7  745f                      JZ 0x00490738
004906d9  8bf1                      MOV ESI,ECX
004906db  6840dab100                PUSH 0xb1da40
004906e0  8975d8                    MOV dword ptr [EBP + -0x28],ESI
004906e3  e8e8a6f7ff                CALL 0x0040add0
004906e8  8bce                      MOV ECX,ESI
004906ea  894de8                    MOV dword ptr [EBP + -0x18],ECX
004906ed  84c0                      TEST AL,AL
004906ef  7447                      JZ 0x00490738
004906f1  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004906f7  8d4de8                    LEA ECX,[EBP + -0x18]
004906fa  c745e8b3030000            MOV dword ptr [EBP + -0x18],0x3b3
00490701  e87a604c00                CALL 0x00956780
00490706  83ec08                    SUB ESP,0x8
00490709  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0049070f  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00490717  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049071e  6a00                      PUSH 0x0
00490720  6a02                      PUSH 0x2
00490722  51                        PUSH ECX
00490723  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049072a  ff75e8                    PUSH dword ptr [EBP + -0x18]
0049072d  e8fed44900                CALL 0x0092dc30
00490732  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
00490735  894de8                    MOV dword ptr [EBP + -0x18],ECX
00490738  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0049073c  8d7748                    LEA ESI,[EDI + 0x48]
0049073f  7452                      JZ 0x00490793
00490741  681cdab100                PUSH 0xb1da1c
00490746  e885a6f7ff                CALL 0x0040add0
0049074b  84c0                      TEST AL,AL
0049074d  7444                      JZ 0x00490793
0049074f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00490755  8d4de4                    LEA ECX,[EBP + -0x1c]
00490758  c745e4b4030000            MOV dword ptr [EBP + -0x1c],0x3b4
0049075f  e81c604c00                CALL 0x00956780
00490764  83ec08                    SUB ESP,0x8
00490767  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0049076d  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00490775  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049077c  6a00                      PUSH 0x0
0049077e  6a02                      PUSH 0x2
00490780  51                        PUSH ECX
00490781  c704240000803f            MOV dword ptr [ESP],0x3f800000
00490788  ff75e4                    PUSH dword ptr [EBP + -0x1c]
0049078b  e8a0d44900                CALL 0x0092dc30
00490790  8d7748                    LEA ESI,[EDI + 0x48]
00490793  f30f104714                MOVSS XMM0,dword ptr [EDI + 0x14]
00490798  0f57c9                    XORPS XMM1,XMM1
0049079b  0f2fc1                    COMISS XMM0,XMM1
0049079e  7648                      JBE 0x004907e8
004907a0  8b4718                    MOV EAX,dword ptr [EDI + 0x18]
004907a3  83e004                    AND EAX,0x4
004907a6  83c800                    OR EAX,0x0
004907a9  743d                      JZ 0x004907e8
004907ab  c7471400000000            MOV dword ptr [EDI + 0x14],0x0
004907b2  8b4708                    MOV EAX,dword ptr [EDI + 0x8]
004907b5  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004907b8  742e                      JZ 0x004907e8
004907ba  f30f100dd4a1ba00          MOVSS XMM1,dword ptr [0x00baa1d4]
004907c2  8b4818                    MOV ECX,dword ptr [EAX + 0x18]
004907c5  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004907c9  3b4f28                    CMP ECX,dword ptr [EDI + 0x28]
004907cc  7508                      JNZ 0x004907d6
004907ce  f30f59c1                  MULSS XMM0,XMM1
004907d2  f30f1100                  MOVSS dword ptr [EAX],XMM0
004907d6  f30f584714                ADDSS XMM0,dword ptr [EDI + 0x14]
004907db  83c038                    ADD EAX,0x38
004907de  f30f114714                MOVSS dword ptr [EDI + 0x14],XMM0
004907e3  3b470c                    CMP EAX,dword ptr [EDI + 0xc]
004907e6  75da                      JNZ 0x004907c2
004907e8  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
004907ee  85c9                      TEST ECX,ECX
004907f0  752e                      JNZ 0x00490820
004907f2  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004907fc  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00490806  898fc00b0000              MOV dword ptr [EDI + 0xbc0],ECX
0049080c  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0049080f  64890d00000000            MOV dword ptr FS:[0x0],ECX
00490816  59                        POP ECX
00490817  5f                        POP EDI
00490818  5e                        POP ESI
00490819  8be5                      MOV ESP,EBP
0049081b  5d                        POP EBP
0049081c  8be3                      MOV ESP,EBX
0049081e  5b                        POP EBX
0049081f  c3                        RET
00490820  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
00490826  85c0                      TEST EAX,EAX
00490828  7e07                      JLE 0x00490831
0049082a  48                        DEC EAX
0049082b  8987c00b0000              MOV dword ptr [EDI + 0xbc0],EAX
00490831  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00490839  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00490841  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00490849  83f903                    CMP ECX,0x3
0049084c  0f85fa090000              JNZ 0x0049124c
00490852  687cd5b100                PUSH 0xb1d57c
00490857  8bce                      MOV ECX,ESI
00490859  e8d2abf7ff                CALL 0x0040b430
0049085e  6a00                      PUSH 0x0
00490860  6854bcb100                PUSH 0xb1bc54
00490865  8bce                      MOV ECX,ESI
00490867  c6407401                  MOV byte ptr [EAX + 0x74],0x1
0049086b  e8109bf7ff                CALL 0x0040a380
00490870  f30f1087b00b0000          MOVSS XMM0,dword ptr [EDI + 0xbb0]
00490878  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
0049087f  9f                        LAHF
00490880  f6c444                    TEST AH,0x44
00490883  7a26                      JP 0x004908ab
00490885  f30f1087b40b0000          MOVSS XMM0,dword ptr [EDI + 0xbb4]
0049088d  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
00490894  9f                        LAHF
00490895  f6c444                    TEST AH,0x44
00490898  7a11                      JP 0x004908ab
0049089a  8d8710040000              LEA EAX,[EDI + 0x410]
004908a0  c70000000000              MOV dword ptr [EAX],0x0
004908a6  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004908a9  eb27                      JMP 0x004908d2
004908ab  8b9710040000              MOV EDX,dword ptr [EDI + 0x410]
004908b1  8d8710040000              LEA EAX,[EDI + 0x410]
004908b7  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004908ba  83fa32                    CMP EDX,0x32
004908bd  7e0b                      JLE 0x004908ca
004908bf  c70000000000              MOV dword ptr [EAX],0x0
004908c5  8945ec                    MOV dword ptr [EBP + -0x14],EAX
004908c8  eb08                      JMP 0x004908d2
004908ca  85d2                      TEST EDX,EDX
004908cc  0f85b7000000              JNZ 0x00490989
004908d2  e889e62500                CALL 0x006eef60
004908d7  660f6ec0                  MOVD XMM0,EAX
004908db  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004908df  c1e81f                    SHR EAX,0x1f
004908e2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004908eb  660f5ac0                  CVTPD2PS XMM0,XMM0
004908ef  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004908f7  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
004908ff  f30f58c0                  ADDSS XMM0,XMM0
00490903  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00490908  e813ccf8ff                CALL 0x0041d520
0049090d  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
00490912  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
00490917  e824ccf8ff                CALL 0x0041d540
0049091c  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
00490924  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00490929  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
0049092e  f30f5905b0a4ba00          MULSS XMM0,dword ptr [0x00baa4b0]
00490936  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
0049093b  e820e62500                CALL 0x006eef60
00490940  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
00490945  8b4dec                    MOV ECX,dword ptr [EBP + -0x14]
00490948  660f6ec8                  MOVD XMM1,EAX
0049094c  f30fe6c9                  CVTDQ2PD XMM1,XMM1
00490950  c1e81f                    SHR EAX,0x1f
00490953  f20f580cc500cbba00        ADDSD XMM1,qword ptr [EAX*0x8 + 0xbacb00]
0049095c  660f5ac1                  CVTPD2PS XMM0,XMM1
00490960  f30f104dd8                MOVSS XMM1,dword ptr [EBP + -0x28]
00490965  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049096d  f30f59c8                  MULSS XMM1,XMM0
00490971  f30f59d0                  MULSS XMM2,XMM0
00490975  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0049097d  f30f1197b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM2
00490985  8b11                      MOV EDX,dword ptr [ECX]
00490987  eb05                      JMP 0x0049098e
00490989  8945ec                    MOV dword ptr [EBP + -0x14],EAX
0049098c  8bc8                      MOV ECX,EAX
0049098e  8d4201                    LEA EAX,[EDX + 0x1]
00490991  c645e000                  MOV byte ptr [EBP + -0x20],0x0
00490995  8901                      MOV dword ptr [ECX],EAX
00490997  be01000000                MOV ESI,0x1
0049099c  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004909a4  8d873c030000              LEA EAX,[EDI + 0x33c]
004909aa  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
004909af  f30f5887b00b0000          ADDSS XMM0,dword ptr [EDI + 0xbb0]
004909b7  f30f588fb40b0000          ADDSS XMM1,dword ptr [EDI + 0xbb4]
004909bf  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004909c5  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004909c8  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004909ce  2500000020                AND EAX,0x20000000
004909d3  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004909d8  83c800                    OR EAX,0x0
004909db  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
004909e0  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004909e5  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
004909ea  0f858e010000              JNZ 0x00490b7e
004909f0  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
004909f6  33d2                      XOR EDX,EDX
004909f8  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
004909fe  c1f802                    SAR EAX,0x2
00490a01  8955e4                    MOV dword ptr [EBP + -0x1c],EDX
00490a04  85c0                      TEST EAX,EAX
00490a06  0f8472010000              JZ 0x00490b7e
00490a0c  8bfe                      MOV EDI,ESI
00490a0e  6690                      NOP
00490a10  52                        PUSH EDX
00490a11  e85a6ef8ff                CALL 0x00417870
00490a16  8bf0                      MOV ESI,EAX
00490a18  f30f108e3c030000          MOVSS XMM1,dword ptr [ESI + 0x33c]
00490a20  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
00490a28  f30f5c45c4                SUBSS XMM0,dword ptr [EBP + -0x3c]
00490a2d  f30f5c4dc8                SUBSS XMM1,dword ptr [EBP + -0x38]
00490a32  f30f59c0                  MULSS XMM0,XMM0
00490a36  f30f59c9                  MULSS XMM1,XMM1
00490a3a  f30f58c1                  ADDSS XMM0,XMM1
00490a3e  e80d50faff                CALL 0x00435a50
00490a43  f30f100d88aaba00          MOVSS XMM1,dword ptr [0x00baaa88]
00490a4b  0f2fc8                    COMISS XMM1,XMM0
00490a4e  0f868e000000              JBE 0x00490ae2
00490a54  f30f104dc8                MOVSS XMM1,dword ptr [EBP + -0x38]
00490a59  f30f5c8e3c030000          SUBSS XMM1,dword ptr [ESI + 0x33c]
00490a61  f30f1055c4                MOVSS XMM2,dword ptr [EBP + -0x3c]
00490a66  f30f5c9640030000          SUBSS XMM2,dword ptr [ESI + 0x340]
00490a6e  0f28c1                    MOVAPS XMM0,XMM1
00490a71  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
00490a76  f30f59c1                  MULSS XMM0,XMM1
00490a7a  0f28ca                    MOVAPS XMM1,XMM2
00490a7d  f30f115594                MOVSS dword ptr [EBP + -0x6c],XMM2
00490a82  f30f59ca                  MULSS XMM1,XMM2
00490a86  f30f58c1                  ADDSS XMM0,XMM1
00490a8a  e8c14ffaff                CALL 0x00435a50
00490a8f  f30f100d88aaba00          MOVSS XMM1,dword ptr [0x00baaa88]
00490a97  0f28d0                    MOVAPS XMM2,XMM0
00490a9a  f30f105d94                MOVSS XMM3,dword ptr [EBP + -0x6c]
00490a9f  f30f5cca                  SUBSS XMM1,XMM2
00490aa3  0f57c0                    XORPS XMM0,XMM0
00490aa6  0f2fd0                    COMISS XMM2,XMM0
00490aa9  f30f590da0a0ba00          MULSS XMM1,dword ptr [0x00baa0a0]
00490ab1  7616                      JBE 0x00490ac9
00490ab3  f30f5eca                  DIVSS XMM1,XMM2
00490ab7  f30f1055c0                MOVSS XMM2,dword ptr [EBP + -0x40]
00490abc  0f28c1                    MOVAPS XMM0,XMM1
00490abf  f30f59d9                  MULSS XMM3,XMM1
00490ac3  f30f59d0                  MULSS XMM2,XMM0
00490ac7  eb05                      JMP 0x00490ace
00490ac9  f30f1055c0                MOVSS XMM2,dword ptr [EBP + -0x40]
00490ace  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
00490ad3  f30f104dc4                MOVSS XMM1,dword ptr [EBP + -0x3c]
00490ad8  f30f58c2                  ADDSS XMM0,XMM2
00490adc  f30f58cb                  ADDSS XMM1,XMM3
00490ae0  eb0a                      JMP 0x00490aec
00490ae2  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
00490ae7  f30f104dc4                MOVSS XMM1,dword ptr [EBP + -0x3c]
00490aec  ff75e4                    PUSH dword ptr [EBP + -0x1c]
00490aef  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00490af5  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00490afa  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
00490aff  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
00490b04  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
00490b09  e8626df8ff                CALL 0x00417870
00490b0e  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00490b16  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00490b1e  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
00490b21  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
00490b26  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
00490b2a  f30f59c0                  MULSS XMM0,XMM0
00490b2e  f30f59c9                  MULSS XMM1,XMM1
00490b32  f30f58c1                  ADDSS XMM0,XMM1
00490b36  e8154ffaff                CALL 0x00435a50
00490b3b  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
00490b43  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
00490b46  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00490b4c  8b55e4                    MOV EDX,dword ptr [EBP + -0x1c]
00490b4f  0f2fc8                    COMISS XMM1,XMM0
00490b52  0fb6c0                    MOVZX EAX,AL
00490b55  0f47c7                    CMOVA EAX,EDI
00490b58  42                        INC EDX
00490b59  8945e0                    MOV dword ptr [EBP + -0x20],EAX
00490b5c  8b81acba0100              MOV EAX,dword ptr [ECX + 0x1baac]
00490b62  2b81a8ba0100              SUB EAX,dword ptr [ECX + 0x1baa8]
00490b68  c1f802                    SAR EAX,0x2
00490b6b  8955e4                    MOV dword ptr [EBP + -0x1c],EDX
00490b6e  3bd0                      CMP EDX,EAX
00490b70  0f829afeffff              JC 0x00490a10
00490b76  8b7dac                    MOV EDI,dword ptr [EBP + -0x54]
00490b79  be01000000                MOV ESI,0x1
00490b7e  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
00490b84  8d4580                    LEA EAX,[EBP + -0x80]
00490b87  6a00                      PUSH 0x0
00490b89  6a01                      PUSH 0x1
00490b8b  6aff                      PUSH -0x1
00490b8d  6aff                      PUSH -0x1
00490b8f  6a04                      PUSH 0x4
00490b91  81c118120000              ADD ECX,0x1218
00490b97  50                        PUSH EAX
00490b98  e8c3a3f8ff                CALL 0x0041af60
00490b9d  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
00490ba4  837d8c00                  CMP dword ptr [EBP + -0x74],0x0
00490ba8  8b4d84                    MOV ECX,dword ptr [EBP + -0x7c]
00490bab  894dd8                    MOV dword ptr [EBP + -0x28],ECX
00490bae  0f8649010000              JBE 0x00490cfd
00490bb4  33ff                      XOR EDI,EDI
00490bb6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
00490bc0  8b04b9                    MOV EAX,dword ptr [ECX + EDI*0x4]
00490bc3  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00490bcb  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
00490bd3  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
00490bd8  f30f5c45c4                SUBSS XMM0,dword ptr [EBP + -0x3c]
00490bdd  f30f114de4                MOVSS dword ptr [EBP + -0x1c],XMM1
00490be2  f30f5c4dc8                SUBSS XMM1,dword ptr [EBP + -0x38]
00490be7  f30f59c0                  MULSS XMM0,XMM0
00490beb  f30f59c9                  MULSS XMM1,XMM1
00490bef  f30f58c1                  ADDSS XMM0,XMM1
00490bf3  e8584efaff                CALL 0x00435a50
00490bf8  f30f100d1caaba00          MOVSS XMM1,dword ptr [0x00baaa1c]
00490c00  0f2fc8                    COMISS XMM1,XMM0
00490c03  0f8688000000              JBE 0x00490c91
00490c09  f30f104dc8                MOVSS XMM1,dword ptr [EBP + -0x38]
00490c0e  f30f5c4de4                SUBSS XMM1,dword ptr [EBP + -0x1c]
00490c13  f30f1055c4                MOVSS XMM2,dword ptr [EBP + -0x3c]
00490c18  f30f5c559c                SUBSS XMM2,dword ptr [EBP + -0x64]
00490c1d  0f28c1                    MOVAPS XMM0,XMM1
00490c20  f30f114d94                MOVSS dword ptr [EBP + -0x6c],XMM1
00490c25  f30f59c1                  MULSS XMM0,XMM1
00490c29  0f28ca                    MOVAPS XMM1,XMM2
00490c2c  f30f1155c0                MOVSS dword ptr [EBP + -0x40],XMM2
00490c31  f30f59ca                  MULSS XMM1,XMM2
00490c35  f30f58c1                  ADDSS XMM0,XMM1
00490c39  e8124efaff                CALL 0x00435a50
00490c3e  f30f100d1caaba00          MOVSS XMM1,dword ptr [0x00baaa1c]
00490c46  0f28d0                    MOVAPS XMM2,XMM0
00490c49  f30f105dc0                MOVSS XMM3,dword ptr [EBP + -0x40]
00490c4e  f30f5cca                  SUBSS XMM1,XMM2
00490c52  0f57c0                    XORPS XMM0,XMM0
00490c55  0f2fd0                    COMISS XMM2,XMM0
00490c58  f30f590da0a0ba00          MULSS XMM1,dword ptr [0x00baa0a0]
00490c60  7616                      JBE 0x00490c78
00490c62  f30f5eca                  DIVSS XMM1,XMM2
00490c66  f30f105594                MOVSS XMM2,dword ptr [EBP + -0x6c]
00490c6b  0f28c1                    MOVAPS XMM0,XMM1
00490c6e  f30f59d9                  MULSS XMM3,XMM1
00490c72  f30f59d0                  MULSS XMM2,XMM0
00490c76  eb05                      JMP 0x00490c7d
00490c78  f30f105594                MOVSS XMM2,dword ptr [EBP + -0x6c]
00490c7d  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
00490c82  f30f104dc4                MOVSS XMM1,dword ptr [EBP + -0x3c]
00490c87  f30f58c2                  ADDSS XMM0,XMM2
00490c8b  f30f58cb                  ADDSS XMM1,XMM3
00490c8f  eb0a                      JMP 0x00490c9b
00490c91  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
00490c96  f30f104dc4                MOVSS XMM1,dword ptr [EBP + -0x3c]
00490c9b  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
00490c9e  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
00490ca3  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
00490ca8  f30f10459c                MOVSS XMM0,dword ptr [EBP + -0x64]
00490cad  f30f5c4004                SUBSS XMM0,dword ptr [EAX + 0x4]
00490cb2  f30f114dc4                MOVSS dword ptr [EBP + -0x3c],XMM1
00490cb7  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
00490cbc  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
00490cc1  f30f5c08                  SUBSS XMM1,dword ptr [EAX]
00490cc5  f30f59c0                  MULSS XMM0,XMM0
00490cc9  f30f59c9                  MULSS XMM1,XMM1
00490ccd  f30f58c1                  ADDSS XMM0,XMM1
00490cd1  e87a4dfaff                CALL 0x00435a50
00490cd6  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
00490cde  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
00490ce1  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
00490ce4  0f2fc8                    COMISS XMM1,XMM0
00490ce7  0fb6c0                    MOVZX EAX,AL
00490cea  0f47c6                    CMOVA EAX,ESI
00490ced  47                        INC EDI
00490cee  8845e0                    MOV byte ptr [EBP + -0x20],AL
00490cf1  3b7d8c                    CMP EDI,dword ptr [EBP + -0x74]
00490cf4  0f82c6feffff              JC 0x00490bc0
00490cfa  8b7dac                    MOV EDI,dword ptr [EBP + -0x54]
00490cfd  f30f109f70030000          MOVSS XMM3,dword ptr [EDI + 0x370]
00490d05  8d45b8                    LEA EAX,[EBP + -0x48]
00490d08  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00490d0e  83ec0c                    SUB ESP,0xc
00490d11  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
00490d17  f30f115c2408              MOVSS dword ptr [ESP + 0x8],XMM3
00490d1d  f30f115c2404              MOVSS dword ptr [ESP + 0x4],XMM3
00490d23  f30f111c24                MOVSS dword ptr [ESP],XMM3
00490d28  50                        PUSH EAX
00490d29  8d45a8                    LEA EAX,[EBP + -0x58]
00490d2c  50                        PUSH EAX
00490d2d  e81e223800                CALL 0x00812f50
00490d32  f30f101dd0a9ba00          MOVSS XMM3,dword ptr [0x00baa9d0]
00490d3a  8d873c030000              LEA EAX,[EDI + 0x33c]
00490d40  8b8e00830100              MOV ECX,dword ptr [ESI + 0x18300]
00490d46  83ec0c                    SUB ESP,0xc
00490d49  c74424080000c842          MOV dword ptr [ESP + 0x8],0x42c80000
00490d51  c74424040000c842          MOV dword ptr [ESP + 0x4],0x42c80000
00490d59  c704240000c842            MOV dword ptr [ESP],0x42c80000
00490d60  50                        PUSH EAX
00490d61  8d45b8                    LEA EAX,[EBP + -0x48]
00490d64  50                        PUSH EAX
00490d65  e8e6213800                CALL 0x00812f50
00490d6a  f30f1065b8                MOVSS XMM4,dword ptr [EBP + -0x48]
00490d6f  0f57ed                    XORPS XMM5,XMM5
00490d72  f30f5ca73c030000          SUBSS XMM4,dword ptr [EDI + 0x33c]
00490d7a  f30f105dbc                MOVSS XMM3,dword ptr [EBP + -0x44]
00490d7f  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
00490d87  0f2ee5                    UCOMISS XMM4,XMM5
00490d8a  9f                        LAHF
00490d8b  f6c444                    TEST AH,0x44
00490d8e  7b38                      JNP 0x00490dc8
00490d90  0f2edd                    UCOMISS XMM3,XMM5
00490d93  9f                        LAHF
00490d94  f6c444                    TEST AH,0x44
00490d97  7b2f                      JNP 0x00490dc8
00490d99  0f28d4                    MOVAPS XMM2,XMM4
00490d9c  0f28c3                    MOVAPS XMM0,XMM3
00490d9f  0f541540cbba00            ANDPS XMM2,xmmword ptr [0x00bacb40]
00490da6  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
00490dad  0f2fd0                    COMISS XMM2,XMM0
00490db0  760c                      JBE 0x00490dbe
00490db2  0f28c3                    MOVAPS XMM0,XMM3
00490db5  0f57e4                    XORPS XMM4,XMM4
00490db8  f30f58d8                  ADDSS XMM3,XMM0
00490dbc  eb0a                      JMP 0x00490dc8
00490dbe  0f28c4                    MOVAPS XMM0,XMM4
00490dc1  0f57db                    XORPS XMM3,XMM3
00490dc4  f30f58e0                  ADDSS XMM4,XMM0
00490dc8  8b876c010000              MOV EAX,dword ptr [EDI + 0x16c]
00490dce  8b8f68010000              MOV ECX,dword ptr [EDI + 0x168]
00490dd4  f30f5925a0a0ba00          MULSS XMM4,dword ptr [0x00baa0a0]
00490ddc  8945bc                    MOV dword ptr [EBP + -0x44],EAX
00490ddf  8bc1                      MOV EAX,ECX
00490de1  f30f591da0a0ba00          MULSS XMM3,dword ptr [0x00baa0a0]
00490de9  2500010000                AND EAX,0x100
00490dee  83c800                    OR EAX,0x0
00490df1  f30f5865a8                ADDSS XMM4,dword ptr [EBP + -0x58]
00490df6  f30f585dac                ADDSS XMM3,dword ptr [EBP + -0x54]
00490dfb  7522                      JNZ 0x00490e1f
00490dfd  8bc1                      MOV EAX,ECX
00490dff  2500020000                AND EAX,0x200
00490e04  83c800                    OR EAX,0x0
00490e07  7516                      JNZ 0x00490e1f
00490e09  8bc1                      MOV EAX,ECX
00490e0b  2500080000                AND EAX,0x800
00490e10  83c800                    OR EAX,0x0
00490e13  750a                      JNZ 0x00490e1f
00490e15  81e100000001              AND ECX,0x1000000
00490e1b  0bc8                      OR ECX,EAX
00490e1d  741c                      JZ 0x00490e3b
00490e1f  51                        PUSH ECX
00490e20  8d45b8                    LEA EAX,[EBP + -0x48]
00490e23  c7042400000000            MOV dword ptr [ESP],0x0
00490e2a  50                        PUSH EAX
00490e2b  8bcf                      MOV ECX,EDI
00490e2d  e80ede2200                CALL 0x006bec40
00490e32  f30f1020                  MOVSS XMM4,dword ptr [EAX]
00490e36  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
00490e3b  f30f5ca73c030000          SUBSS XMM4,dword ptr [EDI + 0x33c]
00490e43  f30f5c9f40030000          SUBSS XMM3,dword ptr [EDI + 0x340]
00490e4b  0f28cc                    MOVAPS XMM1,XMM4
00490e4e  f30f1165ac                MOVSS dword ptr [EBP + -0x54],XMM4
00490e53  0f28c3                    MOVAPS XMM0,XMM3
00490e56  f30f59cc                  MULSS XMM1,XMM4
00490e5a  f30f59c3                  MULSS XMM0,XMM3
00490e5e  f30f115d9c                MOVSS dword ptr [EBP + -0x64],XMM3
00490e63  f30f58c1                  ADDSS XMM0,XMM1
00490e67  e8e44bfaff                CALL 0x00435a50
00490e6c  f30f1035a4a3ba00          MOVSS XMM6,dword ptr [0x00baa3a4]
00490e74  0f28e8                    MOVAPS XMM5,XMM0
00490e77  0f2fee                    COMISS XMM5,XMM6
00490e7a  f30f1055ac                MOVSS XMM2,dword ptr [EBP + -0x54]
00490e7f  0f57c0                    XORPS XMM0,XMM0
00490e82  f30f104d9c                MOVSS XMM1,dword ptr [EBP + -0x64]
00490e87  0f28e2                    MOVAPS XMM4,XMM2
00490e8a  0f28d9                    MOVAPS XMM3,XMM1
00490e8d  7617                      JBE 0x00490ea6
00490e8f  0f2fe8                    COMISS XMM5,XMM0
00490e92  7612                      JBE 0x00490ea6
00490e94  0f28de                    MOVAPS XMM3,XMM6
00490e97  f30f5edd                  DIVSS XMM3,XMM5
00490e9b  0f28e3                    MOVAPS XMM4,XMM3
00490e9e  f30f59d9                  MULSS XMM3,XMM1
00490ea2  f30f59e2                  MULSS XMM4,XMM2
00490ea6  f30f108f6c030000          MOVSS XMM1,dword ptr [EDI + 0x36c]
00490eae  0f2ec8                    UCOMISS XMM1,XMM0
00490eb1  9f                        LAHF
00490eb2  f6c444                    TEST AH,0x44
00490eb5  7b38                      JNP 0x00490eef
00490eb7  f30f10879c030000          MOVSS XMM0,dword ptr [EDI + 0x39c]
00490ebf  f30f59e0                  MULSS XMM4,XMM0
00490ec3  f30f59d8                  MULSS XMM3,XMM0
00490ec7  f30f5ee1                  DIVSS XMM4,XMM1
00490ecb  f30f5ed9                  DIVSS XMM3,XMM1
00490ecf  f30f58a760030000          ADDSS XMM4,dword ptr [EDI + 0x360]
00490ed7  f30f589f64030000          ADDSS XMM3,dword ptr [EDI + 0x364]
00490edf  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
00490ee7  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
00490eef  f30f108784030000          MOVSS XMM0,dword ptr [EDI + 0x384]
00490ef7  b932000000                MOV ECX,0x32
00490efc  f30f5905f8a1ba00          MULSS XMM0,dword ptr [0x00baa1f8]
00490f04  b814000000                MOV EAX,0x14
00490f09  8d7132                    LEA ESI,[ECX + 0x32]
00490f0c  0f2f8780030000            COMISS XMM0,dword ptr [EDI + 0x380]
00490f13  0f47c1                    CMOVA EAX,ECX
00490f16  807de000                  CMP byte ptr [EBP + -0x20],0x0
00490f1a  8945ac                    MOV dword ptr [EBP + -0x54],EAX
00490f1d  751e                      JNZ 0x00490f3d
00490f1f  ff7720                    PUSH dword ptr [EDI + 0x20]
00490f22  8bcf                      MOV ECX,EDI
00490f24  6a0f                      PUSH 0xf
00490f26  e8e5b72100                CALL 0x006ac710
00490f2b  84c0                      TEST AL,AL
00490f2d  7472                      JZ 0x00490fa1
00490f2f  e82ce02500                CALL 0x006eef60
00490f34  33d2                      XOR EDX,EDX
00490f36  f7f6                      DIV ESI
00490f38  83fa0f                    CMP EDX,0xf
00490f3b  7364                      JNC 0x00490fa1
00490f3d  83bfc00b000000            CMP dword ptr [EDI + 0xbc0],0x0
00490f44  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
00490f47  7f5b                      JG 0x00490fa4
00490f49  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
00490f53  c70600000000              MOV dword ptr [ESI],0x0
00490f59  c787c40b000001000000      MOV dword ptr [EDI + 0xbc4],0x1
00490f63  e8f8df2500                CALL 0x006eef60
00490f68  33d2                      XOR EDX,EDX
00490f6a  b964000000                MOV ECX,0x64
00490f6f  f7f1                      DIV ECX
00490f71  3b55ac                    CMP EDX,dword ptr [EBP + -0x54]
00490f74  7d20                      JGE 0x00490f96
00490f76  e8e5df2500                CALL 0x006eef60
00490f7b  33d2                      XOR EDX,EDX
00490f7d  b903000000                MOV ECX,0x3
00490f82  f7f1                      DIV ECX
00490f84  03d1                      ADD EDX,ECX
00490f86  8997c40b0000              MOV dword ptr [EDI + 0xbc4],EDX
00490f8c  c787640b000010000000      MOV dword ptr [EDI + 0xb64],0x10
00490f96  6a01                      PUSH 0x1
00490f98  8bcf                      MOV ECX,EDI
00490f9a  e811f52200                CALL 0x006c04b0
00490f9f  eb03                      JMP 0x00490fa4
00490fa1  8b75ec                    MOV ESI,dword ptr [EBP + -0x14]
00490fa4  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
00490faa  33c0                      XOR EAX,EAX
00490fac  81e100000010              AND ECX,0x10000000
00490fb2  0bc1                      OR EAX,ECX
00490fb4  7418                      JZ 0x00490fce
00490fb6  a17816c700                MOV EAX,[0x00c71678]
00490fbb  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
00490fc1  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
00490fc4  f6404401                  TEST byte ptr [EAX + 0x44],0x1
00490fc8  0f8569010000              JNZ 0x00491137
00490fce  ff7720                    PUSH dword ptr [EDI + 0x20]
00490fd1  8bcf                      MOV ECX,EDI
00490fd3  6a0f                      PUSH 0xf
00490fd5  e836b72100                CALL 0x006ac710
00490fda  84c0                      TEST AL,AL
00490fdc  0f8455010000              JZ 0x00491137
00490fe2  e879df2500                CALL 0x006eef60
00490fe7  33d2                      XOR EDX,EDX
00490fe9  b964000000                MOV ECX,0x64
00490fee  f7f1                      DIV ECX
00490ff0  83fa19                    CMP EDX,0x19
00490ff3  0f833e010000              JNC 0x00491137
00490ff9  a17816c700                MOV EAX,[0x00c71678]
00490ffe  6a00                      PUSH 0x0
00491000  6a01                      PUSH 0x1
00491002  6aff                      PUSH -0x1
00491004  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0049100a  8d45b0                    LEA EAX,[EBP + -0x50]
0049100d  6a01                      PUSH 0x1
0049100f  6894010000                PUSH 0x194
00491014  81c118120000              ADD ECX,0x1218
0049101a  50                        PUSH EAX
0049101b  e8409ff8ff                CALL 0x0041af60
00491020  6a00                      PUSH 0x0
00491022  6a00                      PUSH 0x0
00491024  c645fc01                  MOV byte ptr [EBP + -0x4],0x1
00491028  a17816c700                MOV EAX,[0x00c71678]
0049102d  6aff                      PUSH -0x1
0049102f  6aff                      PUSH -0x1
00491031  6823010000                PUSH 0x123
00491036  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0049103c  8d45a0                    LEA EAX,[EBP + -0x60]
0049103f  81c118120000              ADD ECX,0x1218
00491045  50                        PUSH EAX
00491046  e8159ff8ff                CALL 0x0041af60
0049104b  c645fc02                  MOV byte ptr [EBP + -0x4],0x2
0049104f  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
00491052  85c0                      TEST EAX,EAX
00491054  7515                      JNZ 0x0049106b
00491056  e805df2500                CALL 0x006eef60
0049105b  33d2                      XOR EDX,EDX
0049105d  b964000000                MOV ECX,0x64
00491062  f7f1                      DIV ECX
00491064  83fa3c                    CMP EDX,0x3c
00491067  7228                      JC 0x00491091
00491069  eb05                      JMP 0x00491070
0049106b  83f803                    CMP EAX,0x3
0049106e  7316                      JNC 0x00491086
00491070  e8ebde2500                CALL 0x006eef60
00491075  33d2                      XOR EDX,EDX
00491077  b964000000                MOV ECX,0x64
0049107c  f7f1                      DIV ECX
0049107e  83fa14                    CMP EDX,0x14
00491081  720e                      JC 0x00491091
00491083  8b45bc                    MOV EAX,dword ptr [EBP + -0x44]
00491086  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0049108a  7517                      JNZ 0x004910a3
0049108c  83f802                    CMP EAX,0x2
0049108f  7312                      JNC 0x004910a3
00491091  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0049109b  c70600000000              MOV dword ptr [ESI],0x0
004910a1  eb5e                      JMP 0x00491101
004910a3  8b45ac                    MOV EAX,dword ptr [EBP + -0x54]
004910a6  85c0                      TEST EAX,EAX
004910a8  0f85b0000000              JNZ 0x0049115e
004910ae  e8adde2500                CALL 0x006eef60
004910b3  33d2                      XOR EDX,EDX
004910b5  b964000000                MOV ECX,0x64
004910ba  f7f1                      DIV ECX
004910bc  83fa32                    CMP EDX,0x32
004910bf  0f82b9000000              JC 0x0049117e
004910c5  837f3002                  CMP dword ptr [EDI + 0x30],0x2
004910c9  7436                      JZ 0x00491101
004910cb  e890de2500                CALL 0x006eef60
004910d0  33d2                      XOR EDX,EDX
004910d2  b964000000                MOV ECX,0x64
004910d7  f7f1                      DIV ECX
004910d9  83fa4b                    CMP EDX,0x4b
004910dc  7209                      JC 0x004910e7
004910de  837f3001                  CMP dword ptr [EDI + 0x30],0x1
004910e2  8d41a6                    LEA EAX,[ECX + -0x5a]
004910e5  7505                      JNZ 0x004910ec
004910e7  b809000000                MOV EAX,0x9
004910ec  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
004910f2  8bcf                      MOV ECX,EDI
004910f4  6a01                      PUSH 0x1
004910f6  c70600000000              MOV dword ptr [ESI],0x0
004910fc  e8aff32200                CALL 0x006c04b0
00491101  807da000                  CMP byte ptr [EBP + -0x60],0x0
00491105  7515                      JNZ 0x0049111c
00491107  c645fc03                  MOV byte ptr [EBP + -0x4],0x3
0049110b  b101                      MOV CL,0x1
0049110d  8b55a4                    MOV EDX,dword ptr [EBP + -0x5c]
00491110  6a00                      PUSH 0x0
00491112  6a00                      PUSH 0x0
00491114  e897375d00                CALL 0x00a648b0
00491119  83c408                    ADD ESP,0x8
0049111c  807db000                  CMP byte ptr [EBP + -0x50],0x0
00491120  7515                      JNZ 0x00491137
00491122  c645fc04                  MOV byte ptr [EBP + -0x4],0x4
00491126  b101                      MOV CL,0x1
00491128  8b55b4                    MOV EDX,dword ptr [EBP + -0x4c]
0049112b  6a00                      PUSH 0x0
0049112d  6a00                      PUSH 0x0
0049112f  e87c375d00                CALL 0x00a648b0
00491134  83c408                    ADD ESP,0x8
00491137  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
0049113e  807d8000                  CMP byte ptr [EBP + -0x80],0x0
00491142  0f85510c0000              JNZ 0x00491d99
00491148  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
0049114e  85d2                      TEST EDX,EDX
00491150  0f84c8000000              JZ 0x0049121e
00491156  83c230                    ADD EDX,0x30
00491159  e9c5000000                JMP 0x00491223
0049115e  83f801                    CMP EAX,0x1
00491161  0f855effffff              JNZ 0x004910c5
00491167  e8f4dd2500                CALL 0x006eef60
0049116c  33d2                      XOR EDX,EDX
0049116e  b964000000                MOV ECX,0x64
00491173  f7f1                      DIV ECX
00491175  83fa0a                    CMP EDX,0xa
00491178  0f8347ffffff              JNC 0x004910c5
0049117e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00491184  8d89a8ba0100              LEA ECX,[ECX + 0x1baa8]
0049118a  e801d85200                CALL 0x009be990
0049118f  84c0                      TEST AL,AL
00491191  0f852effffff              JNZ 0x004910c5
00491197  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0049119a  83f802                    CMP EAX,0x2
0049119d  0f8422ffffff              JZ 0x004910c5
004911a3  83f801                    CMP EAX,0x1
004911a6  0f8419ffffff              JZ 0x004910c5
004911ac  6800000010                PUSH 0x10000000
004911b1  6a00                      PUSH 0x0
004911b3  8bcf                      MOV ECX,EDI
004911b5  e87662f8ff                CALL 0x00417430
004911ba  84c0                      TEST AL,AL
004911bc  0f8503ffffff              JNZ 0x004910c5
004911c2  8bcf                      MOV ECX,EDI
004911c4  e877d62200                CALL 0x006be840
004911c9  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004911d1  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004911d9  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004911e1  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004911e9  f30f59c0                  MULSS XMM0,XMM0
004911ed  f30f59c9                  MULSS XMM1,XMM1
004911f1  f30f58c1                  ADDSS XMM0,XMM1
004911f5  e85648faff                CALL 0x00435a50
004911fa  f30f100d30aaba00          MOVSS XMM1,dword ptr [0x00baaa30]
00491202  33c0                      XOR EAX,EAX
00491204  0f2fc8                    COMISS XMM1,XMM0
00491207  0f96c0                    SETBE AL
0049120a  83c00d                    ADD EAX,0xd
0049120d  8987640b0000              MOV dword ptr [EDI + 0xb64],EAX
00491213  c70600000000              MOV dword ptr [ESI],0x0
00491219  e9e3feffff                JMP 0x00491101
0049121e  ba18f6c700                MOV EDX,0xc7f618
00491223  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
00491226  85c9                      TEST ECX,ECX
00491228  7416                      JZ 0x00491240
0049122a  8b41fc                    MOV EAX,dword ptr [ECX + -0x4]
0049122d  83c1fc                    ADD ECX,-0x4
00491230  2902                      SUB dword ptr [EDX],EAX
00491232  51                        PUSH ECX
00491233  835a0400                  SBB dword ptr [EDX + 0x4],0x0
00491237  ff15dc87b100              CALL dword ptr [0x00b187dc]
0049123d  83c404                    ADD ESP,0x4
00491240  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00491247  e94d0b0000                JMP 0x00491d99
0049124c  83f908                    CMP ECX,0x8
0049124f  0f855b020000              JNZ 0x004914b0
00491255  6a00                      PUSH 0x0
00491257  68dcd2b100                PUSH 0xb1d2dc
0049125c  8bce                      MOV ECX,ESI
0049125e  e81d91f7ff                CALL 0x0040a380
00491263  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00491267  0f84180b0000              JZ 0x00491d85
0049126d  8b4de8                    MOV ECX,dword ptr [EBP + -0x18]
00491270  68dcd2b100                PUSH 0xb1d2dc
00491275  e8569bf7ff                CALL 0x0040add0
0049127a  84c0                      TEST AL,AL
0049127c  0f84f40a0000              JZ 0x00491d76
00491282  e8d9dc2500                CALL 0x006eef60
00491287  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0049128d  8d4dd8                    LEA ECX,[EBP + -0x28]
00491290  c745d89e010000            MOV dword ptr [EBP + -0x28],0x19e
00491297  660f6ec0                  MOVD XMM0,EAX
0049129b  f30fe6c0                  CVTDQ2PD XMM0,XMM0
0049129f  c1e81f                    SHR EAX,0x1f
004912a2  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004912ab  660f5ac0                  CVTPD2PS XMM0,XMM0
004912af  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004912b7  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004912bf  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
004912c7  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
004912cc  e8af544c00                CALL 0x00956780
004912d1  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
004912d6  83ec08                    SUB ESP,0x8
004912d9  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004912e1  f30f110424                MOVSS dword ptr [ESP],XMM0
004912e6  6a00                      PUSH 0x0
004912e8  6a02                      PUSH 0x2
004912ea  51                        PUSH ECX
004912eb  c704240000803f            MOV dword ptr [ESP],0x3f800000
004912f2  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004912f8  ff75d8                    PUSH dword ptr [EBP + -0x28]
004912fb  e830c94900                CALL 0x0092dc30
00491300  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00491304  8db73c030000              LEA ESI,[EDI + 0x33c]
0049130a  0f85e8000000              JNZ 0x004913f8
00491310  8bcf                      MOV ECX,EDI
00491312  e829d52200                CALL 0x006be840
00491317  8d4db8                    LEA ECX,[EBP + -0x48]
0049131a  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
00491322  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
0049132a  8d45d4                    LEA EAX,[EBP + -0x2c]
0049132d  f30f5c06                  SUBSS XMM0,dword ptr [ESI]
00491331  f30f5c4e04                SUBSS XMM1,dword ptr [ESI + 0x4]
00491336  50                        PUSH EAX
00491337  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
0049133c  f30f114dbc                MOVSS dword ptr [EBP + -0x44],XMM1
00491341  e8eaec5700                CALL 0x00a10030
00491346  e815dc2500                CALL 0x006eef60
0049134b  f30f105dd4                MOVSS XMM3,dword ptr [EBP + -0x2c]
00491350  f30f1055d8                MOVSS XMM2,dword ptr [EBP + -0x28]
00491355  0f28c3                    MOVAPS XMM0,XMM3
00491358  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
00491360  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00491366  f30f591d84a7ba00          MULSS XMM3,dword ptr [0x00baa784]
0049136e  50                        PUSH EAX
0049136f  6a00                      PUSH 0x0
00491371  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
00491376  8d45b8                    LEA EAX,[EBP + -0x48]
00491379  f30f581e                  ADDSS XMM3,dword ptr [ESI]
0049137d  0f28c2                    MOVAPS XMM0,XMM2
00491380  f30f591584a7ba00          MULSS XMM2,dword ptr [0x00baa784]
00491388  57                        PUSH EDI
00491389  f30f590554a8ba00          MULSS XMM0,dword ptr [0x00baa854]
00491391  50                        PUSH EAX
00491392  f30f585604                ADDSS XMM2,dword ptr [ESI + 0x4]
00491397  8d45a8                    LEA EAX,[EBP + -0x58]
0049139a  f30f115da8                MOVSS dword ptr [EBP + -0x58],XMM3
0049139f  50                        PUSH EAX
004913a0  6a08                      PUSH 0x8
004913a2  6a04                      PUSH 0x4
004913a4  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
004913a9  f30f1155ac                MOVSS dword ptr [EBP + -0x54],XMM2
004913ae  e86d77f9ff                CALL 0x00428b20
004913b3  0f1005004cc300            MOVUPS XMM0,xmmword ptr [0x00c34c00]
004913ba  8bf0                      MOV ESI,EAX
004913bc  51                        PUSH ECX
004913bd  8bce                      MOV ECX,ESI
004913bf  c704240000803f            MOV dword ptr [ESP],0x3f800000
004913c6  8b16                      MOV EDX,dword ptr [ESI]
004913c8  0f118638040000            MOVUPS xmmword ptr [ESI + 0x438],XMM0
004913cf  c6866304000001            MOV byte ptr [ESI + 0x463],0x1
004913d6  ff5240                    CALL dword ptr [EDX + 0x40]
004913d9  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
004913dd  0f8493090000              JZ 0x00491d76
004913e3  f30f100de8a7ba00          MOVSS XMM1,dword ptr [0x00baa7e8]
004913eb  8d4e78                    LEA ECX,[ESI + 0x78]
004913ee  e80d7af7ff                CALL 0x00408e00
004913f3  e97e090000                JMP 0x00491d76
004913f8  e863db2500                CALL 0x006eef60
004913fd  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00491403  50                        PUSH EAX
00491404  6a00                      PUSH 0x0
00491406  57                        PUSH EDI
00491407  6840b6c700                PUSH 0xc7b640
0049140c  56                        PUSH ESI
0049140d  6a01                      PUSH 0x1
0049140f  6894010000                PUSH 0x194
00491414  e80777f9ff                CALL 0x00428b20
00491419  8bf0                      MOV ESI,EAX
0049141b  51                        PUSH ECX
0049141c  8bce                      MOV ECX,ESI
0049141e  c7866003000000000000      MOV dword ptr [ESI + 0x360],0x0
00491428  c7866403000000008040      MOV dword ptr [ESI + 0x364],0x40800000
00491432  ffb7780c0000              PUSH dword ptr [EDI + 0xc78]
00491438  e8c3ee2300                CALL 0x006d0300
0049143d  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
00491444  0f57d2                    XORPS XMM2,XMM2
00491447  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
0049144d  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
00491453  f30f109f6c030000          MOVSS XMM3,dword ptr [EDI + 0x36c]
0049145b  0f2eda                    UCOMISS XMM3,XMM2
0049145e  9f                        LAHF
0049145f  f6c444                    TEST AH,0x44
00491462  0f8b0e090000              JNP 0x00491d76
00491468  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00491470  0f28c1                    MOVAPS XMM0,XMM1
00491473  f30f590d30a7ba00          MULSS XMM1,dword ptr [0x00baa730]
0049147b  f30f59c2                  MULSS XMM0,XMM2
0049147f  f30f5ecb                  DIVSS XMM1,XMM3
00491483  f30f5ec3                  DIVSS XMM0,XMM3
00491487  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0049148f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00491497  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
0049149f  f30f5cc1                  SUBSS XMM0,XMM1
004914a3  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004914ab  e9c6080000                JMP 0x00491d76
004914b0  83f909                    CMP ECX,0x9
004914b3  0f8448060000              JZ 0x00491b01
004914b9  83f90a                    CMP ECX,0xa
004914bc  0f8458060000              JZ 0x00491b1a
004914c2  83f906                    CMP ECX,0x6
004914c5  0f844e020000              JZ 0x00491719
004914cb  83f910                    CMP ECX,0x10
004914ce  0f8445020000              JZ 0x00491719
004914d4  83f90d                    CMP ECX,0xd
004914d7  7409                      JZ 0x004914e2
004914d9  83f90e                    CMP ECX,0xe
004914dc  0f85b7080000              JNZ 0x00491d99
004914e2  6a00                      PUSH 0x0
004914e4  6820d4b100                PUSH 0xb1d420
004914e9  8bce                      MOV ECX,ESI
004914eb  e8908ef7ff                CALL 0x0040a380
004914f0  6820d4b100                PUSH 0xb1d420
004914f5  8bce                      MOV ECX,ESI
004914f7  e8349bf7ff                CALL 0x0040b030
004914fc  84c0                      TEST AL,AL
004914fe  0f8472080000              JZ 0x00491d76
00491504  33d2                      XOR EDX,EDX
00491506  b902000000                MOV ECX,0x2
0049150b  83bf640b00000e            CMP dword ptr [EDI + 0xb64],0xe
00491512  be01000000                MOV ESI,0x1
00491517  8975ec                    MOV dword ptr [EBP + -0x14],ESI
0049151a  0f45ca                    CMOVNZ ECX,EDX
0049151d  894dac                    MOV dword ptr [EBP + -0x54],ECX
00491520  752a                      JNZ 0x0049154c
00491522  e839da2500                CALL 0x006eef60
00491527  33d2                      XOR EDX,EDX
00491529  b964000000                MOV ECX,0x64
0049152e  f7f1                      DIV ECX
00491530  83fa0a                    CMP EDX,0xa
00491533  7d09                      JGE 0x0049153e
00491535  c745ec05000000            MOV dword ptr [EBP + -0x14],0x5
0049153c  eb0e                      JMP 0x0049154c
0049153e  83fa32                    CMP EDX,0x32
00491541  b803000000                MOV EAX,0x3
00491546  0f4cf0                    CMOVL ESI,EAX
00491549  8975ec                    MOV dword ptr [EBP + -0x14],ESI
0049154c  e80fda2500                CALL 0x006eef60
00491551  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
00491559  51                        PUSH ECX
0049155a  660f6ec0                  MOVD XMM0,EAX
0049155e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00491562  c1e81f                    SHR EAX,0x1f
00491565  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0049156e  660f5ac0                  CVTPD2PS XMM0,XMM0
00491572  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049157a  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00491582  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
0049158a  f30f110424                MOVSS dword ptr [ESP],XMM0
0049158f  6a00                      PUSH 0x0
00491591  6a02                      PUSH 0x2
00491593  689f010000                PUSH 0x19f
00491598  e843534c00                CALL 0x009568e0
0049159d  8bcf                      MOV ECX,EDI
0049159f  e89cd22200                CALL 0x006be840
004915a4  8db73c030000              LEA ESI,[EDI + 0x33c]
004915aa  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004915b2  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004915ba  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
004915be  f30f5c4604                SUBSS XMM0,dword ptr [ESI + 0x4]
004915c3  e898870000                CALL 0x00499d60
004915c8  f30f590548a9ba00          MULSS XMM0,dword ptr [0x00baa948]
004915d0  c745e800000000            MOV dword ptr [EBP + -0x18],0x0
004915d7  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
004915dc  0f1f4000                  NOP dword ptr [EAX]
004915e0  e87bd92500                CALL 0x006eef60
004915e5  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004915eb  50                        PUSH EAX
004915ec  6a00                      PUSH 0x0
004915ee  57                        PUSH EDI
004915ef  6840b6c700                PUSH 0xc7b640
004915f4  56                        PUSH ESI
004915f5  ff75ac                    PUSH dword ptr [EBP + -0x54]
004915f8  6823010000                PUSH 0x123
004915fd  e81e75f9ff                CALL 0x00428b20
00491602  8bf0                      MOV ESI,EAX
00491604  85f6                      TEST ESI,ESI
00491606  0f84f2000000              JZ 0x004916fe
0049160c  c78610040000f0000000      MOV dword ptr [ESI + 0x410],0xf0
00491616  83bf640b00000e            CMP dword ptr [EDI + 0xb64],0xe
0049161d  0f85d4000000              JNZ 0x004916f7
00491623  0f57c0                    XORPS XMM0,XMM0
00491626  0f57c9                    XORPS XMM1,XMM1
00491629  f30f2a45e8                CVTSI2SS XMM0,dword ptr [EBP + -0x18]
0049162e  f30f2a4dec                CVTSI2SS XMM1,dword ptr [EBP + -0x14]
00491633  f30f5ec1                  DIVSS XMM0,XMM1
00491637  f30f590530abba00          MULSS XMM0,dword ptr [0x00baab30]
0049163f  f30f58459c                ADDSS XMM0,dword ptr [EBP + -0x64]
00491644  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
0049164c  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00491651  e8eabef8ff                CALL 0x0041d540
00491656  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
0049165b  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
00491660  e8bbbef8ff                CALL 0x0041d520
00491665  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
0049166a  0f28c8                    MOVAPS XMM1,XMM0
0049166d  0f28da                    MOVAPS XMM3,XMM2
00491670  0f57e4                    XORPS XMM4,XMM4
00491673  f30f59cc                  MULSS XMM1,XMM4
00491677  f30f59d4                  MULSS XMM2,XMM4
0049167b  f30f5cd9                  SUBSS XMM3,XMM1
0049167f  f30f58d0                  ADDSS XMM2,XMM0
00491683  0f28cb                    MOVAPS XMM1,XMM3
00491686  f30f115dd8                MOVSS dword ptr [EBP + -0x28],XMM3
0049168b  f30f59cb                  MULSS XMM1,XMM3
0049168f  0f28c2                    MOVAPS XMM0,XMM2
00491692  f30f1155e0                MOVSS dword ptr [EBP + -0x20],XMM2
00491697  f30f59c2                  MULSS XMM0,XMM2
0049169b  f30f58c1                  ADDSS XMM0,XMM1
0049169f  e8ac43faff                CALL 0x00435a50
004916a4  0f28d0                    MOVAPS XMM2,XMM0
004916a7  0f57c0                    XORPS XMM0,XMM0
004916aa  0f2fd0                    COMISS XMM2,XMM0
004916ad  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
004916b2  761b                      JBE 0x004916cf
004916b4  f30f100d00a8ba00          MOVSS XMM1,dword ptr [0x00baa800]
004916bc  f30f5eca                  DIVSS XMM1,XMM2
004916c0  f30f1055d8                MOVSS XMM2,dword ptr [EBP + -0x28]
004916c5  f30f59d1                  MULSS XMM2,XMM1
004916c9  f30f59c1                  MULSS XMM0,XMM1
004916cd  eb05                      JMP 0x004916d4
004916cf  f30f1055d8                MOVSS XMM2,dword ptr [EBP + -0x28]
004916d4  8b866c010000              MOV EAX,dword ptr [ESI + 0x16c]
004916da  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004916e1  f30f119660030000          MOVSS dword ptr [ESI + 0x360],XMM2
004916e9  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
004916f1  89866c010000              MOV dword ptr [ESI + 0x16c],EAX
004916f7  8b06                      MOV EAX,dword ptr [ESI]
004916f9  8bce                      MOV ECX,ESI
004916fb  ff500c                    CALL dword ptr [EAX + 0xc]
004916fe  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
00491701  8db73c030000              LEA ESI,[EDI + 0x33c]
00491707  40                        INC EAX
00491708  8945e8                    MOV dword ptr [EBP + -0x18],EAX
0049170b  3b45ec                    CMP EAX,dword ptr [EBP + -0x14]
0049170e  0f8cccfeffff              JL 0x004915e0
00491714  e95d060000                JMP 0x00491d76
00491719  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
00491720  0f8553030000              JNZ 0x00491a79
00491726  6a00                      PUSH 0x0
00491728  6870dab100                PUSH 0xb1da70
0049172d  8bce                      MOV ECX,ESI
0049172f  e84c8cf7ff                CALL 0x0040a380
00491734  683cd3b100                PUSH 0xb1d33c
00491739  8bce                      MOV ECX,ESI
0049173b  e8f098f7ff                CALL 0x0040b030
00491740  84c0                      TEST AL,AL
00491742  7444                      JZ 0x00491788
00491744  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
0049174a  8d4dd8                    LEA ECX,[EBP + -0x28]
0049174d  c745d8b2030000            MOV dword ptr [EBP + -0x28],0x3b2
00491754  e827504c00                CALL 0x00956780
00491759  83ec08                    SUB ESP,0x8
0049175c  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00491764  c704240000803f            MOV dword ptr [ESP],0x3f800000
0049176b  6a00                      PUSH 0x0
0049176d  6a02                      PUSH 0x2
0049176f  51                        PUSH ECX
00491770  c704240000803f            MOV dword ptr [ESP],0x3f800000
00491777  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
0049177d  ff75d8                    PUSH dword ptr [EBP + -0x28]
00491780  e8abc44900                CALL 0x0092dc30
00491785  8d7748                    LEA ESI,[EDI + 0x48]
00491788  684cdab100                PUSH 0xb1da4c
0049178d  8bce                      MOV ECX,ESI
0049178f  e8fc98f7ff                CALL 0x0040b090
00491794  84c0                      TEST AL,AL
00491796  740a                      JZ 0x004917a2
00491798  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004917a2  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004917a6  740d                      JZ 0x004917b5
004917a8  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004917af  0f85c4020000              JNZ 0x00491a79
004917b5  83bf640b000010            CMP dword ptr [EDI + 0xb64],0x10
004917bc  7565                      JNZ 0x00491823
004917be  8b7730                    MOV ESI,dword ptr [EDI + 0x30]
004917c1  83fe02                    CMP ESI,0x2
004917c4  745d                      JZ 0x00491823
004917c6  e895d72500                CALL 0x006eef60
004917cb  50                        PUSH EAX
004917cc  6a01                      PUSH 0x1
004917ce  57                        PUSH EDI
004917cf  6840b6c700                PUSH 0xc7b640
004917d4  8d873c030000              LEA EAX,[EDI + 0x33c]
004917da  b903000000                MOV ECX,0x3
004917df  50                        PUSH EAX
004917e0  83fe01                    CMP ESI,0x1
004917e3  b808000000                MOV EAX,0x8
004917e8  0f45c1                    CMOVNZ EAX,ECX
004917eb  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004917f1  50                        PUSH EAX
004917f2  6a04                      PUSH 0x4
004917f4  e82773f9ff                CALL 0x00428b20
004917f9  837f3001                  CMP dword ptr [EDI + 0x30],0x1
004917fd  8bc8                      MOV ECX,EAX
004917ff  7522                      JNZ 0x00491823
00491801  0f1005004cc300            MOVUPS XMM0,xmmword ptr [0x00c34c00]
00491808  8b01                      MOV EAX,dword ptr [ECX]
0049180a  51                        PUSH ECX
0049180b  0f118138040000            MOVUPS xmmword ptr [ECX + 0x438],XMM0
00491812  c6816304000001            MOV byte ptr [ECX + 0x463],0x1
00491819  c704240000803f            MOV dword ptr [ESP],0x3f800000
00491820  ff5040                    CALL dword ptr [EAX + 0x40]
00491823  c7871004000001000000      MOV dword ptr [EDI + 0x410],0x1
0049182d  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
00491835  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0049183d  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
00491845  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0049184d  83bfc40b000001            CMP dword ptr [EDI + 0xbc4],0x1
00491854  7546                      JNZ 0x0049189c
00491856  e805d72500                CALL 0x006eef60
0049185b  51                        PUSH ECX
0049185c  660f6ec0                  MOVD XMM0,EAX
00491860  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00491864  c1e81f                    SHR EAX,0x1f
00491867  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00491870  660f5ac0                  CVTPD2PS XMM0,XMM0
00491874  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049187c  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00491884  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
0049188c  f30f110424                MOVSS dword ptr [ESP],XMM0
00491891  6a00                      PUSH 0x0
00491893  6a02                      PUSH 0x2
00491895  68a0010000                PUSH 0x1a0
0049189a  eb44                      JMP 0x004918e0
0049189c  e8bfd62500                CALL 0x006eef60
004918a1  51                        PUSH ECX
004918a2  660f6ec0                  MOVD XMM0,EAX
004918a6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004918aa  c1e81f                    SHR EAX,0x1f
004918ad  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004918b6  660f5ac0                  CVTPD2PS XMM0,XMM0
004918ba  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004918c2  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
004918ca  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
004918d2  f30f110424                MOVSS dword ptr [ESP],XMM0
004918d7  6a00                      PUSH 0x0
004918d9  6a02                      PUSH 0x2
004918db  689f010000                PUSH 0x19f
004918e0  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
004918e8  e8f34f4c00                CALL 0x009568e0
004918ed  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004918f5  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004918fb  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
00491900  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00491908  c745ac1e000000            MOV dword ptr [EBP + -0x54],0x1e
0049190f  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00491914  8bb600830100              MOV ESI,dword ptr [ESI + 0x18300]
0049191a  8d45b8                    LEA EAX,[EBP + -0x48]
0049191d  51                        PUSH ECX
0049191e  c7042400000000            MOV dword ptr [ESP],0x0
00491925  8bce                      MOV ECX,ESI
00491927  50                        PUSH EAX
00491928  c645e800                  MOV byte ptr [EBP + -0x18],0x0
0049192c  e89fd03800                CALL 0x0081e9d0
00491931  6a00                      PUSH 0x0
00491933  6a00                      PUSH 0x0
00491935  6a00                      PUSH 0x0
00491937  51                        PUSH ECX
00491938  c7042400000000            MOV dword ptr [ESP],0x0
0049193f  8bce                      MOV ECX,ESI
00491941  50                        PUSH EAX
00491942  8d45dc                    LEA EAX,[EBP + -0x24]
00491945  50                        PUSH EAX
00491946  e8d51b3800                CALL 0x00813520
0049194b  8b357816c700              MOV ESI,dword ptr [0x00c71678]
00491951  8b08                      MOV ECX,dword ptr [EAX]
00491953  898f3c030000              MOV dword ptr [EDI + 0x33c],ECX
00491959  33c9                      XOR ECX,ECX
0049195b  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00491960  f30f119740030000          MOVSS dword ptr [EDI + 0x340],XMM2
00491968  8b86acba0100              MOV EAX,dword ptr [ESI + 0x1baac]
0049196e  2b86a8ba0100              SUB EAX,dword ptr [ESI + 0x1baa8]
00491974  c1f802                    SAR EAX,0x2
00491977  894dd8                    MOV dword ptr [EBP + -0x28],ECX
0049197a  85c0                      TEST EAX,EAX
0049197c  0f8497000000              JZ 0x00491a19
00491982  51                        PUSH ECX
00491983  8bce                      MOV ECX,ESI
00491985  e8e65ef8ff                CALL 0x00417870
0049198a  f30f10973c030000          MOVSS XMM2,dword ptr [EDI + 0x33c]
00491992  f30f115594                MOVSS dword ptr [EBP + -0x6c],XMM2
00491997  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
0049199f  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004919a7  f30f5cca                  SUBSS XMM1,XMM2
004919ab  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
004919b3  f30f5cc2                  SUBSS XMM0,XMM2
004919b7  f30f11559c                MOVSS dword ptr [EBP + -0x64],XMM2
004919bc  f30f59c9                  MULSS XMM1,XMM1
004919c0  f30f59c0                  MULSS XMM0,XMM0
004919c4  f30f58c1                  ADDSS XMM0,XMM1
004919c8  e88340faff                CALL 0x00435a50
004919cd  f30f100d00aaba00          MOVSS XMM1,dword ptr [0x00baaa00]
004919d5  b901000000                MOV ECX,0x1
004919da  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
004919dd  8b357816c700              MOV ESI,dword ptr [0x00c71678]
004919e3  0f2fc8                    COMISS XMM1,XMM0
004919e6  0fb6c0                    MOVZX EAX,AL
004919e9  0f47c1                    CMOVA EAX,ECX
004919ec  8b4dd8                    MOV ECX,dword ptr [EBP + -0x28]
004919ef  8945e8                    MOV dword ptr [EBP + -0x18],EAX
004919f2  41                        INC ECX
004919f3  8b86acba0100              MOV EAX,dword ptr [ESI + 0x1baac]
004919f9  2b86a8ba0100              SUB EAX,dword ptr [ESI + 0x1baa8]
004919ff  c1f802                    SAR EAX,0x2
00491a02  894dd8                    MOV dword ptr [EBP + -0x28],ECX
00491a05  3bc8                      CMP ECX,EAX
00491a07  0f8275ffffff              JC 0x00491982
00491a0d  f30f10559c                MOVSS XMM2,dword ptr [EBP + -0x64]
00491a12  f30f104d94                MOVSS XMM1,dword ptr [EBP + -0x6c]
00491a17  eb08                      JMP 0x00491a21
00491a19  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
00491a21  f30f1045c0                MOVSS XMM0,dword ptr [EBP + -0x40]
00491a26  f30f5cc1                  SUBSS XMM0,XMM1
00491a2a  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
00491a2f  f30f5cca                  SUBSS XMM1,XMM2
00491a33  f30f59c0                  MULSS XMM0,XMM0
00491a37  f30f59c9                  MULSS XMM1,XMM1
00491a3b  f30f58c1                  ADDSS XMM0,XMM1
00491a3f  e80c40faff                CALL 0x00435a50
00491a44  f30f100d5caaba00          MOVSS XMM1,dword ptr [0x00baaa5c]
00491a4c  b901000000                MOV ECX,0x1
00491a51  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
00491a54  0f2fc8                    COMISS XMM1,XMM0
00491a57  0fb6c0                    MOVZX EAX,AL
00491a5a  0f47c1                    CMOVA EAX,ECX
00491a5d  8b4dac                    MOV ECX,dword ptr [EBP + -0x54]
00491a60  49                        DEC ECX
00491a61  894dac                    MOV dword ptr [EBP + -0x54],ECX
00491a64  85c9                      TEST ECX,ECX
00491a66  7e08                      JLE 0x00491a70
00491a68  84c0                      TEST AL,AL
00491a6a  0f85a4feffff              JNZ 0x00491914
00491a70  6a01                      PUSH 0x1
00491a72  8bcf                      MOV ECX,EDI
00491a74  e837ea2200                CALL 0x006c04b0
00491a79  83bf1004000001            CMP dword ptr [EDI + 0x410],0x1
00491a80  0f8513030000              JNZ 0x00491d99
00491a86  6a00                      PUSH 0x0
00491a88  685cdab100                PUSH 0xb1da5c
00491a8d  8d4f48                    LEA ECX,[EDI + 0x48]
00491a90  e8eb88f7ff                CALL 0x0040a380
00491a95  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00491a99  742e                      JZ 0x00491ac9
00491a9b  6894dab100                PUSH 0xb1da94
00491aa0  8d4f78                    LEA ECX,[EDI + 0x78]
00491aa3  e8c893f7ff                CALL 0x0040ae70
00491aa8  84c0                      TEST AL,AL
00491aaa  740a                      JZ 0x00491ab6
00491aac  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
00491ab6  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00491aba  740d                      JZ 0x00491ac9
00491abc  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00491ac3  0f85d0020000              JNZ 0x00491d99
00491ac9  8b87c40b0000              MOV EAX,dword ptr [EDI + 0xbc4]
00491acf  48                        DEC EAX
00491ad0  8987c40b0000              MOV dword ptr [EDI + 0xbc4],EAX
00491ad6  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00491ae0  85c0                      TEST EAX,EAX
00491ae2  0f8fb1020000              JG 0x00491d99
00491ae8  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00491af2  c787c00b00004b000000      MOV dword ptr [EDI + 0xbc0],0x4b
00491afc  e998020000                JMP 0x00491d99
00491b01  6a00                      PUSH 0x0
00491b03  681cceb100                PUSH 0xb1ce1c
00491b08  8bce                      MOV ECX,ESI
00491b0a  e87188f7ff                CALL 0x0040a380
00491b0f  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00491b15  83f90a                    CMP ECX,0xa
00491b18  7514                      JNZ 0x00491b2e
00491b1a  6a00                      PUSH 0x0
00491b1c  6828dab100                PUSH 0xb1da28
00491b21  8bce                      MOV ECX,ESI
00491b23  e85888f7ff                CALL 0x0040a380
00491b28  8b8f640b0000              MOV ECX,dword ptr [EDI + 0xb64]
00491b2e  33c0                      XOR EAX,EAX
00491b30  8d7778                    LEA ESI,[EDI + 0x78]
00491b33  83f90a                    CMP ECX,0xa
00491b36  8975e4                    MOV dword ptr [EBP + -0x1c],ESI
00491b39  b908000000                MOV ECX,0x8
00491b3e  0f94c0                    SETZ AL
00491b41  83c003                    ADD EAX,0x3
00491b44  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00491b48  0f44c1                    CMOVZ EAX,ECX
00491b4b  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00491b4f  8945e8                    MOV dword ptr [EBP + -0x18],EAX
00491b52  0f8473010000              JZ 0x00491ccb
00491b58  6864dab100                PUSH 0xb1da64
00491b5d  8bce                      MOV ECX,ESI
00491b5f  e86c92f7ff                CALL 0x0040add0
00491b64  84c0                      TEST AL,AL
00491b66  7447                      JZ 0x00491baf
00491b68  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00491b6e  8d4dd8                    LEA ECX,[EBP + -0x28]
00491b71  c745d8b1030000            MOV dword ptr [EBP + -0x28],0x3b1
00491b78  e8034c4c00                CALL 0x00956780
00491b7d  83ec08                    SUB ESP,0x8
00491b80  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00491b88  c704240000803f            MOV dword ptr [ESP],0x3f800000
00491b8f  6a00                      PUSH 0x0
00491b91  6a02                      PUSH 0x2
00491b93  51                        PUSH ECX
00491b94  c704240000803f            MOV dword ptr [ESP],0x3f800000
00491b9b  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00491ba1  ff75d8                    PUSH dword ptr [EBP + -0x28]
00491ba4  e887c04900                CALL 0x0092dc30
00491ba9  8d7778                    LEA ESI,[EDI + 0x78]
00491bac  8975e4                    MOV dword ptr [EBP + -0x1c],ESI
00491baf  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00491bb3  0f8412010000              JZ 0x00491ccb
00491bb9  681cceb100                PUSH 0xb1ce1c
00491bbe  8bce                      MOV ECX,ESI
00491bc0  e80b92f7ff                CALL 0x0040add0
00491bc5  84c0                      TEST AL,AL
00491bc7  0f84fe000000              JZ 0x00491ccb
00491bcd  e88ed32500                CALL 0x006eef60
00491bd2  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00491bd8  8d4dd8                    LEA ECX,[EBP + -0x28]
00491bdb  c745d8a0010000            MOV dword ptr [EBP + -0x28],0x1a0
00491be2  660f6ec0                  MOVD XMM0,EAX
00491be6  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00491bea  c1e81f                    SHR EAX,0x1f
00491bed  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00491bf6  660f5ac0                  CVTPD2PS XMM0,XMM0
00491bfa  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00491c02  f30f590598a1ba00          MULSS XMM0,dword ptr [0x00baa198]
00491c0a  f30f5805e0a3ba00          ADDSS XMM0,dword ptr [0x00baa3e0]
00491c12  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
00491c17  e8644b4c00                CALL 0x00956780
00491c1c  f30f1045ac                MOVSS XMM0,dword ptr [EBP + -0x54]
00491c21  83ec08                    SUB ESP,0x8
00491c24  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00491c2c  f30f110424                MOVSS dword ptr [ESP],XMM0
00491c31  6a00                      PUSH 0x0
00491c33  6a02                      PUSH 0x2
00491c35  51                        PUSH ECX
00491c36  c704240000803f            MOV dword ptr [ESP],0x3f800000
00491c3d  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00491c43  ff75d8                    PUSH dword ptr [EBP + -0x28]
00491c46  e8e5bf4900                CALL 0x0092dc30
00491c4b  a17816c700                MOV EAX,[0x00c71678]
00491c50  51                        PUSH ECX
00491c51  c7042400000000            MOV dword ptr [ESP],0x0
00491c58  8bcf                      MOV ECX,EDI
00491c5a  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
00491c60  8d4598                    LEA EAX,[EBP + -0x68]
00491c63  50                        PUSH EAX
00491c64  e8d7cf2200                CALL 0x006bec40
00491c69  6a00                      PUSH 0x0
00491c6b  6a00                      PUSH 0x0
00491c6d  6a00                      PUSH 0x0
00491c6f  51                        PUSH ECX
00491c70  c7042400002042            MOV dword ptr [ESP],0x42200000
00491c77  8bce                      MOV ECX,ESI
00491c79  50                        PUSH EAX
00491c7a  8d4590                    LEA EAX,[EBP + -0x70]
00491c7d  50                        PUSH EAX
00491c7e  e89d183800                CALL 0x00813520
00491c83  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
00491c86  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00491c8c  6a01                      PUSH 0x1
00491c8e  6a01                      PUSH 0x1
00491c90  57                        PUSH EDI
00491c91  6840b6c700                PUSH 0xc7b640
00491c96  50                        PUSH EAX
00491c97  56                        PUSH ESI
00491c98  6a04                      PUSH 0x4
00491c9a  e8816ef9ff                CALL 0x00428b20
00491c9f  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00491ca3  8bc8                      MOV ECX,EAX
00491ca5  7527                      JNZ 0x00491cce
00491ca7  0f1005004cc300            MOVUPS XMM0,xmmword ptr [0x00c34c00]
00491cae  8b01                      MOV EAX,dword ptr [ECX]
00491cb0  51                        PUSH ECX
00491cb1  0f118138040000            MOVUPS xmmword ptr [ECX + 0x438],XMM0
00491cb8  c6816304000001            MOV byte ptr [ECX + 0x463],0x1
00491cbf  c704240000803f            MOV dword ptr [ESP],0x3f800000
00491cc6  ff5040                    CALL dword ptr [EAX + 0x40]
00491cc9  eb03                      JMP 0x00491cce
00491ccb  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
00491cce  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00491cd5  0f849b000000              JZ 0x00491d76
00491cdb  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00491cdf  7415                      JZ 0x00491cf6
00491ce1  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
00491ce4  681cceb100                PUSH 0xb1ce1c
00491ce9  e88291f7ff                CALL 0x0040ae70
00491cee  84c0                      TEST AL,AL
00491cf0  0f8580000000              JNZ 0x00491d76
00491cf6  e865d22500                CALL 0x006eef60
00491cfb  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
00491d03  0f57c9                    XORPS XMM1,XMM1
00491d06  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
00491d0c  f30f58c1                  ADDSS XMM0,XMM1
00491d10  50                        PUSH EAX
00491d11  6a00                      PUSH 0x0
00491d13  57                        PUSH EDI
00491d14  8d45b8                    LEA EAX,[EBP + -0x48]
00491d17  c745b800000000            MOV dword ptr [EBP + -0x48],0x0
00491d1e  50                        PUSH EAX
00491d1f  f30f1145a8                MOVSS dword ptr [EBP + -0x58],XMM0
00491d24  8d45a8                    LEA EAX,[EBP + -0x58]
00491d27  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
00491d2f  f30f580584a7ba00          ADDSS XMM0,dword ptr [0x00baa784]
00491d37  50                        PUSH EAX
00491d38  56                        PUSH ESI
00491d39  6a04                      PUSH 0x4
00491d3b  c745bc00004040            MOV dword ptr [EBP + -0x44],0x40400000
00491d42  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
00491d47  e8d46df9ff                CALL 0x00428b20
00491d4c  837f3001                  CMP dword ptr [EDI + 0x30],0x1
00491d50  8bc8                      MOV ECX,EAX
00491d52  7522                      JNZ 0x00491d76
00491d54  0f1005004cc300            MOVUPS XMM0,xmmword ptr [0x00c34c00]
00491d5b  8b01                      MOV EAX,dword ptr [ECX]
00491d5d  51                        PUSH ECX
00491d5e  0f118138040000            MOVUPS xmmword ptr [ECX + 0x438],XMM0
00491d65  c6816304000001            MOV byte ptr [ECX + 0x463],0x1
00491d6c  c704240000803f            MOV dword ptr [ESP],0x3f800000
00491d73  ff5040                    CALL dword ptr [EAX + 0x40]
00491d76  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
00491d7a  7409                      JZ 0x00491d85
00491d7c  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
00491d83  7514                      JNZ 0x00491d99
00491d85  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
00491d8f  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00491d99  80bf7301000000            CMP byte ptr [EDI + 0x173],0x0
00491da0  0f8494070000              JZ 0x0049253a
00491da6  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00491dac  8d4dd8                    LEA ECX,[EBP + -0x28]
00491daf  c745d8b0030000            MOV dword ptr [EBP + -0x28],0x3b0
00491db6  e8c5494c00                CALL 0x00956780
00491dbb  83ec08                    SUB ESP,0x8
00491dbe  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00491dc6  c704240000803f            MOV dword ptr [ESP],0x3f800000
00491dcd  6a00                      PUSH 0x0
00491dcf  6a02                      PUSH 0x2
00491dd1  51                        PUSH ECX
00491dd2  c704240000803f            MOV dword ptr [ESP],0x3f800000
00491dd9  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00491ddf  ff75d8                    PUSH dword ptr [EBP + -0x28]
00491de2  e849be4900                CALL 0x0092dc30
00491de7  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00491dea  64890d00000000            MOV dword ptr FS:[0x0],ECX
00491df1  59                        POP ECX
00491df2  5f                        POP EDI
00491df3  5e                        POP ESI
00491df4  8be5                      MOV ESP,EBP
00491df6  5d                        POP EBP
00491df7  8be3                      MOV ESP,EBX
00491df9  5b                        POP EBX
00491dfa  c3                        RET
00491dfb  83f801                    CMP EAX,0x1
00491dfe  0f8536070000              JNZ 0x0049253a
00491e04  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00491e0b  0f85a0000000              JNZ 0x00491eb1
00491e11  0f281510beba00            MOVAPS XMM2,xmmword ptr [0x00babe10]
00491e18  8d8fe4010000              LEA ECX,[EDI + 0x1e4]
00491e1e  8d8554ffffff              LEA EAX,[EBP + 0xffffff54]
00491e24  c78574ffffff00000000      MOV dword ptr [EBP + 0xffffff74],0x0
00491e2e  c78578ffffff00000000      MOV dword ptr [EBP + 0xffffff78],0x0
00491e38  0f57c9                    XORPS XMM1,XMM1
00491e3b  c7857cffffff00000000      MOV dword ptr [EBP + 0xffffff7c],0x0
00491e45  3bc8                      CMP ECX,EAX
00491e47  741d                      JZ 0x00491e66
00491e49  f30f7e8574ffffff          MOVQ XMM0,qword ptr [EBP + 0xffffff74]
00491e51  8b857cffffff              MOV EAX,dword ptr [EBP + 0xffffff7c]
00491e57  660fd64120                MOVQ qword ptr [ECX + 0x20],XMM0
00491e5c  0f1111                    MOVUPS xmmword ptr [ECX],XMM2
00491e5f  894128                    MOV dword ptr [ECX + 0x28],EAX
00491e62  0f114910                  MOVUPS xmmword ptr [ECX + 0x10],XMM1
00491e66  6a00                      PUSH 0x0
00491e68  6854bcb100                PUSH 0xb1bc54
00491e6d  8d4f48                    LEA ECX,[EDI + 0x48]
00491e70  c787dc00000000000000      MOV dword ptr [EDI + 0xdc],0x0
00491e7a  c787e00000000000a0c1      MOV dword ptr [EDI + 0xe0],0xc1a00000
00491e84  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
00491e8e  c7878401000003000000      MOV dword ptr [EDI + 0x184],0x3
00491e98  e8e384f7ff                CALL 0x0040a380
00491e9d  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
00491ea0  64890d00000000            MOV dword ptr FS:[0x0],ECX
00491ea7  59                        POP ECX
00491ea8  5f                        POP EDI
00491ea9  5e                        POP ESI
00491eaa  8be5                      MOV ESP,EBP
00491eac  5d                        POP EBP
00491ead  8be3                      MOV ESP,EBX
00491eaf  5b                        POP EBX
00491eb0  c3                        RET
00491eb1  ff8710040000              INC dword ptr [EDI + 0x410]
00491eb7  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
00491eba  85c0                      TEST EAX,EAX
00491ebc  0f8542040000              JNZ 0x00492304
00491ec2  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
00491eca  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
00491ed2  51                        PUSH ECX
00491ed3  890424                    MOV dword ptr [ESP],EAX
00491ed6  8d45b8                    LEA EAX,[EBP + -0x48]
00491ed9  50                        PUSH EAX
00491eda  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
00491ee2  e859cd2200                CALL 0x006bec40
00491ee7  f30f10979c030000          MOVSS XMM2,dword ptr [EDI + 0x39c]
00491eef  0f2e1554a4ba00            UCOMISS XMM2,dword ptr [0x00baa454]
00491ef6  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00491efa  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
00491eff  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
00491f07  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
00491f0f  9f                        LAHF
00491f10  f30f114db8                MOVSS dword ptr [EBP + -0x48],XMM1
00491f15  f30f100da4a4ba00          MOVSS XMM1,dword ptr [0x00baa4a4]
00491f1d  f30f1145bc                MOVSS dword ptr [EBP + -0x44],XMM0
00491f22  f6c444                    TEST AH,0x44
00491f25  7b13                      JNP 0x00491f3a
00491f27  0f28c2                    MOVAPS XMM0,XMM2
00491f2a  f30f59d1                  MULSS XMM2,XMM1
00491f2e  f30f58c1                  ADDSS XMM0,XMM1
00491f32  f30f5cc2                  SUBSS XMM0,XMM2
00491f36  f30f5ec8                  DIVSS XMM1,XMM0
00491f3a  0f28c1                    MOVAPS XMM0,XMM1
00491f3d  8d45a8                    LEA EAX,[EBP + -0x58]
00491f40  f30f598760030000          MULSS XMM0,dword ptr [EDI + 0x360]
00491f48  8d4db8                    LEA ECX,[EBP + -0x48]
00491f4b  50                        PUSH EAX
00491f4c  f30f598f64030000          MULSS XMM1,dword ptr [EDI + 0x364]
00491f54  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
00491f59  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00491f61  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00491f69  e8c2e05700                CALL 0x00a10030
00491f6e  f30f1087380c0000          MOVSS XMM0,dword ptr [EDI + 0xc38]
00491f76  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
00491f7e  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00491f82  f30f105804                MOVSS XMM3,dword ptr [EAX + 0x4]
00491f87  f30f5915d0a2ba00          MULSS XMM2,dword ptr [0x00baa2d0]
00491f8f  f30f591dd0a2ba00          MULSS XMM3,dword ptr [0x00baa2d0]
00491f97  f30f59d0                  MULSS XMM2,XMM0
00491f9b  f30f59d8                  MULSS XMM3,XMM0
00491f9f  0f57c0                    XORPS XMM0,XMM0
00491fa2  0f2ee0                    UCOMISS XMM4,XMM0
00491fa5  9f                        LAHF
00491fa6  f6c444                    TEST AH,0x44
00491fa9  7b38                      JNP 0x00491fe3
00491fab  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00491fb3  0f28c1                    MOVAPS XMM0,XMM1
00491fb6  f30f59cb                  MULSS XMM1,XMM3
00491fba  f30f59c2                  MULSS XMM0,XMM2
00491fbe  f30f5ecc                  DIVSS XMM1,XMM4
00491fc2  f30f5ec4                  DIVSS XMM0,XMM4
00491fc6  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00491fce  f30f5845d8                ADDSS XMM0,dword ptr [EBP + -0x28]
00491fd3  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00491fdb  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00491fe3  a17816c700                MOV EAX,[0x00c71678]
00491fe8  6a00                      PUSH 0x0
00491fea  6a01                      PUSH 0x1
00491fec  6aff                      PUSH -0x1
00491fee  6a01                      PUSH 0x1
00491ff0  c7877c03000000000041      MOV dword ptr [EDI + 0x37c],0x41000000
00491ffa  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
00492000  8d45cc                    LEA EAX,[EBP + -0x34]
00492003  6894010000                PUSH 0x194
00492008  81c118120000              ADD ECX,0x1218
0049200e  50                        PUSH EAX
0049200f  e84c8ff8ff                CALL 0x0041af60
00492014  33f6                      XOR ESI,ESI
00492016  c745fc06000000            MOV dword ptr [EBP + -0x4],0x6
0049201d  3975d8                    CMP dword ptr [EBP + -0x28],ESI
00492020  0f8633010000              JBE 0x00492159
00492026  8b45d0                    MOV EAX,dword ptr [EBP + -0x30]
00492029  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
0049202c  3bc7                      CMP EAX,EDI
0049202e  0f841b010000              JZ 0x0049214f
00492034  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0049203c  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
00492044  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
0049204c  f30f5cc8                  SUBSS XMM1,XMM0
00492050  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
00492055  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0049205d  f30f5cc2                  SUBSS XMM0,XMM2
00492061  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
00492066  f30f59c9                  MULSS XMM1,XMM1
0049206a  f30f59c0                  MULSS XMM0,XMM0
0049206e  f30f58c1                  ADDSS XMM0,XMM1
00492072  e8d939faff                CALL 0x00435a50
00492077  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
0049207f  0f2fc8                    COMISS XMM1,XMM0
00492082  0f86c7000000              JBE 0x0049214f
00492088  8b4dd0                    MOV ECX,dword ptr [EBP + -0x30]
0049208b  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
00492090  f30f1055ec                MOVSS XMM2,dword ptr [EBP + -0x14]
00492095  8b04b1                    MOV EAX,dword ptr [ECX + ESI*0x4]
00492098  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004920a0  f30f5c9040030000          SUBSS XMM2,dword ptr [EAX + 0x340]
004920a8  0f28c1                    MOVAPS XMM0,XMM1
004920ab  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
004920b0  f30f59c1                  MULSS XMM0,XMM1
004920b4  0f28ca                    MOVAPS XMM1,XMM2
004920b7  f30f59ca                  MULSS XMM1,XMM2
004920bb  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
004920c0  f30f58c1                  ADDSS XMM0,XMM1
004920c4  e88739faff                CALL 0x00435a50
004920c9  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
004920d1  0f57ed                    XORPS XMM5,XMM5
004920d4  0f2fc5                    COMISS XMM0,XMM5
004920d7  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
004920dc  f30f5cc8                  SUBSS XMM1,XMM0
004920e0  f30f105dec                MOVSS XMM3,dword ptr [EBP + -0x14]
004920e5  760c                      JBE 0x004920f3
004920e7  f30f5ec8                  DIVSS XMM1,XMM0
004920eb  f30f59d1                  MULSS XMM2,XMM1
004920ef  f30f59d9                  MULSS XMM3,XMM1
004920f3  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
004920fb  f30f591540a0ba00          MULSS XMM2,dword ptr [0x00baa040]
00492103  f30f591d40a0ba00          MULSS XMM3,dword ptr [0x00baa040]
0049210b  0f2ee5                    UCOMISS XMM4,XMM5
0049210e  9f                        LAHF
0049210f  f6c444                    TEST AH,0x44
00492112  7b3b                      JNP 0x0049214f
00492114  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0049211c  0f28c1                    MOVAPS XMM0,XMM1
0049211f  f30f59cb                  MULSS XMM1,XMM3
00492123  f30f59c2                  MULSS XMM0,XMM2
00492127  f30f5ecc                  DIVSS XMM1,XMM4
0049212b  f30f5ec4                  DIVSS XMM0,XMM4
0049212f  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00492137  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
0049213f  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00492147  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
0049214f  46                        INC ESI
00492150  3b75d8                    CMP ESI,dword ptr [EBP + -0x28]
00492153  0f82cdfeffff              JC 0x00492026
00492159  a17816c700                MOV EAX,[0x00c71678]
0049215e  6a00                      PUSH 0x0
00492160  6a01                      PUSH 0x1
00492162  6aff                      PUSH -0x1
00492164  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
0049216a  8d45b0                    LEA EAX,[EBP + -0x50]
0049216d  6aff                      PUSH -0x1
0049216f  6a04                      PUSH 0x4
00492171  81c118120000              ADD ECX,0x1218
00492177  50                        PUSH EAX
00492178  e8e38df8ff                CALL 0x0041af60
0049217d  33f6                      XOR ESI,ESI
0049217f  3975bc                    CMP dword ptr [EBP + -0x44],ESI
00492182  0f8633010000              JBE 0x004922bb
00492188  8b45b4                    MOV EAX,dword ptr [EBP + -0x4c]
0049218b  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
0049218e  3bc7                      CMP EAX,EDI
00492190  0f841b010000              JZ 0x004922b1
00492196  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
0049219e  f30f10883c030000          MOVSS XMM1,dword ptr [EAX + 0x33c]
004921a6  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
004921ae  f30f5cc8                  SUBSS XMM1,XMM0
004921b2  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004921b7  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
004921bf  f30f5cc2                  SUBSS XMM0,XMM2
004921c3  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
004921c8  f30f59c9                  MULSS XMM1,XMM1
004921cc  f30f59c0                  MULSS XMM0,XMM0
004921d0  f30f58c1                  ADDSS XMM0,XMM1
004921d4  e87738faff                CALL 0x00435a50
004921d9  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
004921e1  0f2fc8                    COMISS XMM1,XMM0
004921e4  0f86c7000000              JBE 0x004922b1
004921ea  8b4db4                    MOV ECX,dword ptr [EBP + -0x4c]
004921ed  f30f104de0                MOVSS XMM1,dword ptr [EBP + -0x20]
004921f2  f30f1055ec                MOVSS XMM2,dword ptr [EBP + -0x14]
004921f7  8b04b1                    MOV EAX,dword ptr [ECX + ESI*0x4]
004921fa  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
00492202  f30f5c9040030000          SUBSS XMM2,dword ptr [EAX + 0x340]
0049220a  0f28c1                    MOVAPS XMM0,XMM1
0049220d  f30f114de0                MOVSS dword ptr [EBP + -0x20],XMM1
00492212  f30f59c1                  MULSS XMM0,XMM1
00492216  0f28ca                    MOVAPS XMM1,XMM2
00492219  f30f59ca                  MULSS XMM1,XMM2
0049221d  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
00492222  f30f58c1                  ADDSS XMM0,XMM1
00492226  e82538faff                CALL 0x00435a50
0049222b  f30f100dd0a9ba00          MOVSS XMM1,dword ptr [0x00baa9d0]
00492233  0f57ed                    XORPS XMM5,XMM5
00492236  0f2fc5                    COMISS XMM0,XMM5
00492239  f30f1055e0                MOVSS XMM2,dword ptr [EBP + -0x20]
0049223e  f30f5cc8                  SUBSS XMM1,XMM0
00492242  f30f105dec                MOVSS XMM3,dword ptr [EBP + -0x14]
00492247  760c                      JBE 0x00492255
00492249  f30f5ec8                  DIVSS XMM1,XMM0
0049224d  f30f59d1                  MULSS XMM2,XMM1
00492251  f30f59d9                  MULSS XMM3,XMM1
00492255  f30f10a76c030000          MOVSS XMM4,dword ptr [EDI + 0x36c]
0049225d  f30f59156ca0ba00          MULSS XMM2,dword ptr [0x00baa06c]
00492265  f30f591d6ca0ba00          MULSS XMM3,dword ptr [0x00baa06c]
0049226d  0f2ee5                    UCOMISS XMM4,XMM5
00492270  9f                        LAHF
00492271  f6c444                    TEST AH,0x44
00492274  7b3b                      JNP 0x004922b1
00492276  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
0049227e  0f28c1                    MOVAPS XMM0,XMM1
00492281  f30f59cb                  MULSS XMM1,XMM3
00492285  f30f59c2                  MULSS XMM0,XMM2
00492289  f30f5ecc                  DIVSS XMM1,XMM4
0049228d  f30f5ec4                  DIVSS XMM0,XMM4
00492291  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00492299  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
004922a1  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
004922a9  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004922b1  46                        INC ESI
004922b2  3b75bc                    CMP ESI,dword ptr [EBP + -0x44]
004922b5  0f82cdfeffff              JC 0x00492188
004922bb  807db000                  CMP byte ptr [EBP + -0x50],0x0
004922bf  7515                      JNZ 0x004922d6
004922c1  c645fc07                  MOV byte ptr [EBP + -0x4],0x7
004922c5  b101                      MOV CL,0x1
004922c7  8b55b4                    MOV EDX,dword ptr [EBP + -0x4c]
004922ca  6a00                      PUSH 0x0
004922cc  6a00                      PUSH 0x0
004922ce  e8dd255d00                CALL 0x00a648b0
004922d3  83c408                    ADD ESP,0x8
004922d6  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004922dd  807dcc00                  CMP byte ptr [EBP + -0x34],0x0
004922e1  7572                      JNZ 0x00492355
004922e3  c745fc08000000            MOV dword ptr [EBP + -0x4],0x8
004922ea  b101                      MOV CL,0x1
004922ec  8b55d0                    MOV EDX,dword ptr [EBP + -0x30]
004922ef  6a00                      PUSH 0x0
004922f1  6a00                      PUSH 0x0
004922f3  e8b8255d00                CALL 0x00a648b0
004922f8  83c408                    ADD ESP,0x8
004922fb  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
00492302  eb51                      JMP 0x00492355
00492304  83f801                    CMP EAX,0x1
00492307  754c                      JNZ 0x00492355
00492309  8d45b8                    LEA EAX,[EBP + -0x48]
0049230c  c7876c0300000000803f      MOV dword ptr [EDI + 0x36c],0x3f800000
00492316  50                        PUSH EAX
00492317  8d8f60030000              LEA ECX,[EDI + 0x360]
0049231d  c7877c03000000000041      MOV dword ptr [EDI + 0x37c],0x41000000
00492327  e804dd5700                CALL 0x00a10030
0049232c  f30f1010                  MOVSS XMM2,dword ptr [EAX]
00492330  f30f104804                MOVSS XMM1,dword ptr [EAX + 0x4]
00492335  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
0049233d  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
00492345  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
0049234d  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00492355  8db73c030000              LEA ESI,[EDI + 0x33c]
0049235b  c7459403000000            MOV dword ptr [EBP + -0x6c],0x3
00492362  e8f9cb2500                CALL 0x006eef60
00492367  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0049236d  50                        PUSH EAX
0049236e  6a00                      PUSH 0x0
00492370  57                        PUSH EDI
00492371  6840b6c700                PUSH 0xc7b640
00492376  56                        PUSH ESI
00492377  6a58                      PUSH 0x58
00492379  68e8030000                PUSH 0x3e8
0049237e  e89d67f9ff                CALL 0x00428b20
00492383  8bf0                      MOV ESI,EAX
00492385  8975d8                    MOV dword ptr [EBP + -0x28],ESI
00492388  85f6                      TEST ESI,ESI
0049238a  0f849a010000              JZ 0x0049252a
00492390  83bf780c000000            CMP dword ptr [EDI + 0xc78],0x0
00492397  7c21                      JL 0x004923ba
00492399  6a00                      PUSH 0x0
0049239b  8d4f48                    LEA ECX,[EDI + 0x48]
0049239e  e87d8ef7ff                CALL 0x0040b220
004923a3  83c008                    ADD EAX,0x8
004923a6  8d4e48                    LEA ECX,[ESI + 0x48]
004923a9  50                        PUSH EAX
004923aa  6a00                      PUSH 0x0
004923ac  e87f9bf7ff                CALL 0x0040bf30
004923b1  51                        PUSH ECX
004923b2  8d4e48                    LEA ECX,[ESI + 0x48]
004923b5  e8469cf7ff                CALL 0x0040c000
004923ba  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004923c2  f30f108764030000          MOVSS XMM0,dword ptr [EDI + 0x364]
004923ca  f30f590d2cadba00          MULSS XMM1,dword ptr [0x00baad2c]
004923d2  f30f59052cadba00          MULSS XMM0,dword ptr [0x00baad2c]
004923da  f30f118e60030000          MOVSS dword ptr [ESI + 0x360],XMM1
004923e2  f30f118664030000          MOVSS dword ptr [ESI + 0x364],XMM0
004923ea  e871cb2500                CALL 0x006eef60
004923ef  0f57c0                    XORPS XMM0,XMM0
004923f2  f20f2ac0                  CVTSI2SD XMM0,EAX
004923f6  c1e81f                    SHR EAX,0x1f
004923f9  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00492402  660f5ac0                  CVTPD2PS XMM0,XMM0
00492406  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049240e  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00492416  f30f58c0                  ADDSS XMM0,XMM0
0049241a  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
0049241f  e83ccb2500                CALL 0x006eef60
00492424  0f57c0                    XORPS XMM0,XMM0
00492427  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
0049242f  f30f59c9                  MULSS XMM1,XMM1
00492433  f20f2ac0                  CVTSI2SD XMM0,EAX
00492437  c1e81f                    SHR EAX,0x1f
0049243a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00492443  660f5ac0                  CVTPD2PS XMM0,XMM0
00492447  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0049244f  f30f1145ac                MOVSS dword ptr [EBP + -0x54],XMM0
00492454  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
0049245c  f30f59c0                  MULSS XMM0,XMM0
00492460  f30f58c1                  ADDSS XMM0,XMM1
00492464  e8e735faff                CALL 0x00435a50
00492469  f30f11459c                MOVSS dword ptr [EBP + -0x64],XMM0
0049246e  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
00492473  e8c8b0f8ff                CALL 0x0041d540
00492478  f30f5945ac                MULSS XMM0,dword ptr [EBP + -0x54]
0049247d  f30f59459c                MULSS XMM0,dword ptr [EBP + -0x64]
00492482  f30f590580a2ba00          MULSS XMM0,dword ptr [0x00baa280]
0049248a  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
0049248f  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
00492494  e887b0f8ff                CALL 0x0041d520
00492499  f30f10966c030000          MOVSS XMM2,dword ptr [ESI + 0x36c]
004924a1  0f28d8                    MOVAPS XMM3,XMM0
004924a4  f30f595dac                MULSS XMM3,dword ptr [EBP + -0x54]
004924a9  0f57c0                    XORPS XMM0,XMM0
004924ac  0f2ed0                    UCOMISS XMM2,XMM0
004924af  f30f595d9c                MULSS XMM3,dword ptr [EBP + -0x64]
004924b4  9f                        LAHF
004924b5  f30f591d80a2ba00          MULSS XMM3,dword ptr [0x00baa280]
004924bd  f6c444                    TEST AH,0x44
004924c0  7b3c                      JNP 0x004924fe
004924c2  f30f108e9c030000          MOVSS XMM1,dword ptr [ESI + 0x39c]
004924ca  0f28c1                    MOVAPS XMM0,XMM1
004924cd  f30f59cb                  MULSS XMM1,XMM3
004924d1  f30f5945c0                MULSS XMM0,dword ptr [EBP + -0x40]
004924d6  f30f5eca                  DIVSS XMM1,XMM2
004924da  f30f5ec2                  DIVSS XMM0,XMM2
004924de  f30f588e64030000          ADDSS XMM1,dword ptr [ESI + 0x364]
004924e6  f30f588660030000          ADDSS XMM0,dword ptr [ESI + 0x360]
004924ee  f30f118e64030000          MOVSS dword ptr [ESI + 0x364],XMM1
004924f6  f30f118660030000          MOVSS dword ptr [ESI + 0x360],XMM0
004924fe  c786dc00000000000000      MOV dword ptr [ESI + 0xdc],0x0
00492508  c786e00000000000a0c1      MOV dword ptr [ESI + 0xe0],0xc1a00000
00492512  f30f1087380c0000          MOVSS XMM0,dword ptr [EDI + 0xc38]
0049251a  f30f1186e4000000          MOVSS dword ptr [ESI + 0xe4],XMM0
00492522  f30f1186e8000000          MOVSS dword ptr [ESI + 0xe8],XMM0
0049252a  836d9401                  SUB dword ptr [EBP + -0x6c],0x1
0049252e  8db73c030000              LEA ESI,[EDI + 0x33c]
00492534  0f8528feffff              JNZ 0x00492362
0049253a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
0049253d  64890d00000000            MOV dword ptr FS:[0x0],ECX
00492544  59                        POP ECX
00492545  5f                        POP EDI
00492546  5e                        POP ESI
00492547  8be5                      MOV ESP,EBP
00492549  5d                        POP EBP
0049254a  8be3                      MOV ESP,EBX
0049254c  5b                        POP EBX
0049254d  c3                        RET
