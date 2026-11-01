; J460 NPC AI 0x005381c0 AI_005381c0
; types=232,234
; identities=234.0.0
; entry=005381c0
005381c0  53                        PUSH EBX
005381c1  8bdc                      MOV EBX,ESP
005381c3  83ec08                    SUB ESP,0x8
005381c6  83e4f8                    AND ESP,0xfffffff8
005381c9  83c404                    ADD ESP,0x4
005381cc  55                        PUSH EBP
005381cd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
005381d0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
005381d4  8bec                      MOV EBP,ESP
005381d6  83ec38                    SUB ESP,0x38
005381d9  56                        PUSH ESI
005381da  57                        PUSH EDI
005381db  8bf9                      MOV EDI,ECX
005381dd  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
005381e5  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
005381ed  2bf0                      SUB ESI,EAX
005381ef  e86c6d1b00                CALL 0x006eef60
005381f4  33d2                      XOR EDX,EDX
005381f6  b91e000000                MOV ECX,0x1e
005381fb  f7f1                      DIV ECX
005381fd  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
00538204  8955f4                    MOV dword ptr [EBP + -0xc],EDX
00538207  0f8599000000              JNZ 0x005382a6
0053820d  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00538217  c7878401000000000000      MOV dword ptr [EDI + 0x184],0x0
00538221  c7874c03000000000000      MOV dword ptr [EDI + 0x34c],0x0
0053822b  c787500300000000a0c1      MOV dword ptr [EDI + 0x350],0xc1a00000
00538235  e8266d1b00                CALL 0x006eef60
0053823a  660f6ec0                  MOVD XMM0,EAX
0053823e  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00538242  c1e81f                    SHR EAX,0x1f
00538245  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
0053824e  660f5ac0                  CVTPD2PS XMM0,XMM0
00538252  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053825a  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00538262  f30f58c0                  ADDSS XMM0,XMM0
00538266  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0053826b  e8d052eeff                CALL 0x0041d540
00538270  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
00538275  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
0053827a  e8a152eeff                CALL 0x0041d520
0053827f  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
00538284  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
00538287  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
0053828f  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00538297  898710040000              MOV dword ptr [EDI + 0x410],EAX
0053829d  5f                        POP EDI
0053829e  5e                        POP ESI
0053829f  8be5                      MOV ESP,EBP
005382a1  5d                        POP EBP
005382a2  8be3                      MOV ESP,EBX
005382a4  5b                        POP EBX
005382a5  c3                        RET
005382a6  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
005382ac  8d873c030000              LEA EAX,[EDI + 0x33c]
005382b2  83ec0c                    SUB ESP,0xc
005382b5  0f57db                    XORPS XMM3,XMM3
005382b8  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
005382be  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
005382c6  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
005382ce  c7042400000000            MOV dword ptr [ESP],0x0
005382d5  50                        PUSH EAX
005382d6  8d45d4                    LEA EAX,[EBP + -0x2c]
005382d9  50                        PUSH EAX
005382da  e871ac2d00                CALL 0x00812f50
005382df  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
005382e4  8d8f3c030000              LEA ECX,[EDI + 0x33c]
005382ea  0f2e01                    UCOMISS XMM0,dword ptr [ECX]
005382ed  9f                        LAHF
005382ee  f6c444                    TEST AH,0x44
005382f1  7a0f                      JP 0x00538302
005382f3  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
005382f8  0f2e4104                  UCOMISS XMM0,dword ptr [ECX + 0x4]
005382fc  9f                        LAHF
005382fd  f6c444                    TEST AH,0x44
00538300  7b78                      JNP 0x0053837a
00538302  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
00538305  898710040000              MOV dword ptr [EDI + 0x410],EAX
0053830b  e8506c1b00                CALL 0x006eef60
00538310  660f6ec0                  MOVD XMM0,EAX
00538314  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00538318  c1e81f                    SHR EAX,0x1f
0053831b  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00538324  660f5ac0                  CVTPD2PS XMM0,XMM0
00538328  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
00538330  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00538338  f30f58c0                  ADDSS XMM0,XMM0
0053833c  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
00538341  e8fa51eeff                CALL 0x0041d540
00538346  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
0053834b  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
00538350  e8cb51eeff                CALL 0x0041d520
00538355  f30f104dec                MOVSS XMM1,dword ptr [EBP + -0x14]
0053835a  8d8f3c030000              LEA ECX,[EDI + 0x33c]
00538360  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
00538368  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00538370  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
0053837a  83ec0c                    SUB ESP,0xc
0053837d  8d45d4                    LEA EAX,[EBP + -0x2c]
00538380  0f57db                    XORPS XMM3,XMM3
00538383  c744240800000000          MOV dword ptr [ESP + 0x8],0x0
0053838b  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00538393  c7042400000000            MOV dword ptr [ESP],0x0
0053839a  51                        PUSH ECX
0053839b  50                        PUSH EAX
0053839c  a17816c700                MOV EAX,[0x00c71678]
005383a1  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
005383a7  e8a4ab2d00                CALL 0x00812f50
005383ac  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
005383b1  f30f11873c030000          MOVSS dword ptr [EDI + 0x33c],XMM0
005383b9  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
005383be  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
005383c6  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
005383cc  83f804                    CMP EAX,0x4
005383cf  0f85ca060000              JNZ 0x00538a9f
005383d5  6a00                      PUSH 0x0
005383d7  6854bcb100                PUSH 0xb1bc54
005383dc  8d4f48                    LEA ECX,[EDI + 0x48]
005383df  e89c1fedff                CALL 0x0040a380
005383e4  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
005383ea  85f6                      TEST ESI,ESI
005383ec  0f8e89000000              JLE 0x0053847b
005383f2  c745e814000000            MOV dword ptr [EBP + -0x18],0x14
005383f9  0f1f8000000000            NOP dword ptr [EAX]
00538400  8bc1                      MOV EAX,ECX
00538402  99                        CDQ
00538403  f77de8                    IDIV dword ptr [EBP + -0x18]
00538406  85d2                      TEST EDX,EDX
00538408  7565                      JNZ 0x0053846f
0053840a  e8516b1b00                CALL 0x006eef60
0053840f  660f6ec0                  MOVD XMM0,EAX
00538413  f30fe6c0                  CVTDQ2PD XMM0,XMM0
00538417  c1e81f                    SHR EAX,0x1f
0053841a  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
00538423  660f5ac0                  CVTPD2PS XMM0,XMM0
00538427  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
0053842f  f30f590504a7ba00          MULSS XMM0,dword ptr [0x00baa704]
00538437  f30f58c0                  ADDSS XMM0,XMM0
0053843b  f30f1145ec                MOVSS dword ptr [EBP + -0x14],XMM0
00538440  e8fb50eeff                CALL 0x0041d540
00538445  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
0053844a  f30f1045ec                MOVSS XMM0,dword ptr [EBP + -0x14]
0053844f  e8cc50eeff                CALL 0x0041d520
00538454  f30f104df0                MOVSS XMM1,dword ptr [EBP + -0x10]
00538459  f30f118fb00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM1
00538461  f30f1187b40b0000          MOVSS dword ptr [EDI + 0xbb4],XMM0
00538469  8b8f10040000              MOV ECX,dword ptr [EDI + 0x410]
0053846f  41                        INC ECX
00538470  898f10040000              MOV dword ptr [EDI + 0x410],ECX
00538476  83ee01                    SUB ESI,0x1
00538479  7585                      JNZ 0x00538400
0053847b  f30f1015d0a9ba00          MOVSS XMM2,dword ptr [0x00baa9d0]
00538483  0f57c9                    XORPS XMM1,XMM1
00538486  660f6ed9                  MOVD XMM3,ECX
0053848a  8bcf                      MOV ECX,EDI
0053848c  0f5bdb                    CVTDQ2PS XMM3,XMM3
0053848f  6a00                      PUSH 0x0
00538491  e8aa091a00                CALL 0x006d8e40
00538496  8bcf                      MOV ECX,EDI
00538498  e8a3631800                CALL 0x006be840
0053849d  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
005384a5  8db73c030000              LEA ESI,[EDI + 0x33c]
005384ab  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
005384b0  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
005384b8  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
005384c0  f30f59c0                  MULSS XMM0,XMM0
005384c4  f30f59c9                  MULSS XMM1,XMM1
005384c8  f30f58c1                  ADDSS XMM0,XMM1
005384cc  e87fd5efff                CALL 0x00435a50
005384d1  f30f5905c4a3ba00          MULSS XMM0,dword ptr [0x00baa3c4]
005384d9  8d45d4                    LEA EAX,[EBP + -0x2c]
005384dc  51                        PUSH ECX
005384dd  c7042400000000            MOV dword ptr [ESP],0x0
005384e4  8bcf                      MOV ECX,EDI
005384e6  50                        PUSH EAX
005384e7  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
005384ec  e84f671800                CALL 0x006bec40
005384f1  f30f1005d0a9ba00          MOVSS XMM0,dword ptr [0x00baa9d0]
005384f9  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
005384fe  f30f100524a9ba00          MOVSS XMM0,dword ptr [0x00baa924]
00538506  f30f1145f0                MOVSS dword ptr [EBP + -0x10],XMM0
0053850b  f30f10053cacba00          MOVSS XMM0,dword ptr [0x00baac3c]
00538513  e838d5efff                CALL 0x00435a50
00538518  f30f102dd0a9ba00          MOVSS XMM5,dword ptr [0x00baa9d0]
00538520  0f28e0                    MOVAPS XMM4,XMM0
00538523  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
0053852b  0f57db                    XORPS XMM3,XMM3
0053852e  0f2fe3                    COMISS XMM4,XMM3
00538531  7624                      JBE 0x00538557
00538533  0f28c8                    MOVAPS XMM1,XMM0
00538536  f30f5ecc                  DIVSS XMM1,XMM4
0053853a  0f28d1                    MOVAPS XMM2,XMM1
0053853d  f30f59d5                  MULSS XMM2,XMM5
00538541  f30f1155f4                MOVSS dword ptr [EBP + -0xc],XMM2
00538546  f30f101524a9ba00          MOVSS XMM2,dword ptr [0x00baa924]
0053854e  f30f59d1                  MULSS XMM2,XMM1
00538552  f30f1155f0                MOVSS dword ptr [EBP + -0x10],XMM2
00538557  f30f100d30aeba00          MOVSS XMM1,dword ptr [0x00baae30]
0053855f  f30f116dec                MOVSS dword ptr [EBP + -0x14],XMM5
00538564  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
00538569  7619                      JBE 0x00538584
0053856b  f30f5ec4                  DIVSS XMM0,XMM4
0053856f  0f28d0                    MOVAPS XMM2,XMM0
00538572  f30f59c1                  MULSS XMM0,XMM1
00538576  f30f59d5                  MULSS XMM2,XMM5
0053857a  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0053857f  f30f1155ec                MOVSS dword ptr [EBP + -0x14],XMM2
00538584  8bcf                      MOV ECX,EDI
00538586  e8b5621800                CALL 0x006be840
0053858b  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
00538590  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
00538595  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
0053859d  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
005385a5  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
005385ad  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
005385b5  f30f584dd4                ADDSS XMM1,dword ptr [EBP + -0x2c]
005385ba  f30f5855d8                ADDSS XMM2,dword ptr [EBP + -0x28]
005385bf  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
005385c3  f30f5cd0                  SUBSS XMM2,XMM0
005385c7  0f28c1                    MOVAPS XMM0,XMM1
005385ca  f30f114dfc                MOVSS dword ptr [EBP + -0x4],XMM1
005385cf  f30f59c1                  MULSS XMM0,XMM1
005385d3  0f28ca                    MOVAPS XMM1,XMM2
005385d6  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
005385db  f30f59ca                  MULSS XMM1,XMM2
005385df  f30f58c1                  ADDSS XMM0,XMM1
005385e3  e868d4efff                CALL 0x00435a50
005385e8  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
005385ef  7627                      JBE 0x00538618
005385f1  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
005385f9  f30f5ec8                  DIVSS XMM1,XMM0
005385fd  0f28c1                    MOVAPS XMM0,XMM1
00538600  f30f5945fc                MULSS XMM0,dword ptr [EBP + -0x4]
00538605  f30f1145fc                MOVSS dword ptr [EBP + -0x4],XMM0
0053860a  f30f1045f8                MOVSS XMM0,dword ptr [EBP + -0x8]
0053860f  f30f59c1                  MULSS XMM0,XMM1
00538613  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
00538618  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
0053861e  83f8ff                    CMP EAX,-0x1
00538621  747a                      JZ 0x0053869d
00538623  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
0053862b  8d45e0                    LEA EAX,[EBP + -0x20]
0053862e  50                        PUSH EAX
0053862f  8bcf                      MOV ECX,EDI
00538631  e89afc1900                CALL 0x006d82d0
00538636  f30f1008                  MOVSS XMM1,dword ptr [EAX]
0053863a  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
0053863f  0f28c1                    MOVAPS XMM0,XMM1
00538642  f30f59c1                  MULSS XMM0,XMM1
00538646  f30f114dfc                MOVSS dword ptr [EBP + -0x4],XMM1
0053864b  0f28ca                    MOVAPS XMM1,XMM2
0053864e  f30f59ca                  MULSS XMM1,XMM2
00538652  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
00538657  f30f58c1                  ADDSS XMM0,XMM1
0053865b  e8f0d3efff                CALL 0x00435a50
00538660  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
00538667  7627                      JBE 0x00538690
00538669  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
00538671  f30f5ec8                  DIVSS XMM1,XMM0
00538675  0f28c1                    MOVAPS XMM0,XMM1
00538678  f30f5945fc                MULSS XMM0,dword ptr [EBP + -0x4]
0053867d  f30f1145fc                MOVSS dword ptr [EBP + -0x4],XMM0
00538682  f30f1045f8                MOVSS XMM0,dword ptr [EBP + -0x8]
00538687  f30f59c1                  MULSS XMM0,XMM1
0053868b  f30f1145f8                MOVSS dword ptr [EBP + -0x8],XMM0
00538690  8b871c0f0000              MOV EAX,dword ptr [EDI + 0xf1c]
00538696  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0053869b  eb05                      JMP 0x005386a2
0053869d  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
005386a2  83bf1004000064            CMP dword ptr [EDI + 0x410],0x64
005386a9  0f8ef4010000              JLE 0x005388a3
005386af  83f8ff                    CMP EAX,-0x1
005386b2  7457                      JZ 0x0053870b
005386b4  51                        PUSH ECX
005386b5  57                        PUSH EDI
005386b6  50                        PUSH EAX
005386b7  6a09                      PUSH 0x9
005386b9  e852da4100                CALL 0x00956110
005386be  84c0                      TEST AL,AL
005386c0  0f84dd010000              JZ 0x005388a3
005386c6  f30f101520a1ba00          MOVSS XMM2,dword ptr [0x00baa120]
005386ce  8d45cc                    LEA EAX,[EBP + -0x34]
005386d1  50                        PUSH EAX
005386d2  8bcf                      MOV ECX,EDI
005386d4  e8f7fb1900                CALL 0x006d82d0
005386d9  8bc8                      MOV ECX,EAX
005386db  f30f1001                  MOVSS XMM0,dword ptr [ECX]
005386df  0f2e0540b6c700            UCOMISS XMM0,dword ptr [0x00c7b640]
005386e6  9f                        LAHF
005386e7  f6c444                    TEST AH,0x44
005386ea  0f8a07010000              JP 0x005387f7
005386f0  f30f104104                MOVSS XMM0,dword ptr [ECX + 0x4]
005386f5  0f2e0544b6c700            UCOMISS XMM0,dword ptr [0x00c7b644]
005386fc  9f                        LAHF
005386fd  f6c444                    TEST AH,0x44
00538700  0f8af1000000              JP 0x005387f7
00538706  e998010000                JMP 0x005388a3
0053870b  f30f100e                  MOVSS XMM1,dword ptr [ESI]
0053870f  f30f5c45d8                SUBSS XMM0,dword ptr [EBP + -0x28]
00538714  f30f5c4dd4                SUBSS XMM1,dword ptr [EBP + -0x2c]
00538719  f30f59c0                  MULSS XMM0,XMM0
0053871d  f30f59c9                  MULSS XMM1,XMM1
00538721  f30f58c1                  ADDSS XMM0,XMM1
00538725  e826d3efff                CALL 0x00435a50
0053872a  0f2f05a0a9ba00            COMISS XMM0,dword ptr [0x00baa9a0]
00538731  0f866c010000              JBE 0x005388a3
00538737  f30f100d5caaba00          MOVSS XMM1,dword ptr [0x00baaa5c]
0053873f  0f2fc8                    COMISS XMM1,XMM0
00538742  0f865b010000              JBE 0x005388a3
00538748  8b8710040000              MOV EAX,dword ptr [EDI + 0x410]
0053874e  b903000000                MOV ECX,0x3
00538753  99                        CDQ
00538754  f7f9                      IDIV ECX
00538756  85d2                      TEST EDX,EDX
00538758  0f8545010000              JNZ 0x005388a3
0053875e  e8fd671b00                CALL 0x006eef60
00538763  a801                      TEST AL,0x1
00538765  0f8438010000              JZ 0x005388a3
0053876b  f30f107df4                MOVSS XMM7,dword ptr [EBP + -0xc]
00538770  f30f106df0                MOVSS XMM5,dword ptr [EBP + -0x10]
00538775  0f28cf                    MOVAPS XMM1,XMM7
00538778  f30f1055fc                MOVSS XMM2,dword ptr [EBP + -0x4]
0053877d  0f28c5                    MOVAPS XMM0,XMM5
00538780  f30f105df8                MOVSS XMM3,dword ptr [EBP + -0x8]
00538785  f30f59ca                  MULSS XMM1,XMM2
00538789  f30f59c3                  MULSS XMM0,XMM3
0053878d  f30f58c8                  ADDSS XMM1,XMM0
00538791  0f2f0d44a4ba00            COMISS XMM1,dword ptr [0x00baa444]
00538798  775d                      JA 0x005387f7
0053879a  f30f1075ec                MOVSS XMM6,dword ptr [EBP + -0x14]
0053879f  f30f1065e8                MOVSS XMM4,dword ptr [EBP + -0x18]
005387a4  0f28ce                    MOVAPS XMM1,XMM6
005387a7  0f28c4                    MOVAPS XMM0,XMM4
005387aa  f30f59ca                  MULSS XMM1,XMM2
005387ae  f30f59c3                  MULSS XMM0,XMM3
005387b2  f30f58c8                  ADDSS XMM1,XMM0
005387b6  f30f100544a4ba00          MOVSS XMM0,dword ptr [0x00baa444]
005387be  0f2fc8                    COMISS XMM1,XMM0
005387c1  7734                      JA 0x005387f7
005387c3  f30f100d70cbba00          MOVSS XMM1,dword ptr [0x00bacb70]
005387cb  0f57e9                    XORPS XMM5,XMM1
005387ce  f30f59fa                  MULSS XMM7,XMM2
005387d2  f30f59eb                  MULSS XMM5,XMM3
005387d6  f30f5cef                  SUBSS XMM5,XMM7
005387da  0f2fe8                    COMISS XMM5,XMM0
005387dd  7718                      JA 0x005387f7
005387df  0f57e1                    XORPS XMM4,XMM1
005387e2  f30f59f2                  MULSS XMM6,XMM2
005387e6  f30f59e3                  MULSS XMM4,XMM3
005387ea  f30f5ce6                  SUBSS XMM4,XMM6
005387ee  0f2fe0                    COMISS XMM4,XMM0
005387f1  0f86ac000000              JBE 0x005388a3
005387f7  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
005387ff  8b87640c0000              MOV EAX,dword ptr [EDI + 0xc64]
00538805  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
0053880a  83f812                    CMP EAX,0x12
0053880d  750a                      JNZ 0x00538819
0053880f  f30f100528a5ba00          MOVSS XMM0,dword ptr [0x00baa528]
00538817  eb0d                      JMP 0x00538826
00538819  83f813                    CMP EAX,0x13
0053881c  750d                      JNZ 0x0053882b
0053881e  f30f1005d0a2ba00          MOVSS XMM0,dword ptr [0x00baa2d0]
00538826  f30f1145f4                MOVSS dword ptr [EBP + -0xc],XMM0
0053882b  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
00538831  8d4de8                    LEA ECX,[EBP + -0x18]
00538834  c745e892000000            MOV dword ptr [EBP + -0x18],0x92
0053883b  e840df4100                CALL 0x00956780
00538840  f30f1045f4                MOVSS XMM0,dword ptr [EBP + -0xc]
00538845  83ec08                    SUB ESP,0x8
00538848  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
00538850  f30f110424                MOVSS dword ptr [ESP],XMM0
00538855  6a00                      PUSH 0x0
00538857  6a02                      PUSH 0x2
00538859  51                        PUSH ECX
0053885a  c704240000803f            MOV dword ptr [ESP],0x3f800000
00538861  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
00538867  ff75e8                    PUSH dword ptr [EBP + -0x18]
0053886a  e8c1533f00                CALL 0x0092dc30
0053886f  f30f1055fc                MOVSS XMM2,dword ptr [EBP + -0x4]
00538874  8db73c030000              LEA ESI,[EDI + 0x33c]
0053887a  f30f1045f8                MOVSS XMM0,dword ptr [EBP + -0x8]
0053887f  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
00538889  c7871004000014000000      MOV dword ptr [EDI + 0x410],0x14
00538893  f30f1197b80b0000          MOVSS dword ptr [EDI + 0xbb8],XMM2
0053889b  f30f1187bc0b0000          MOVSS dword ptr [EDI + 0xbbc],XMM0
005388a3  8bcf                      MOV ECX,EDI
005388a5  e8965f1800                CALL 0x006be840
005388aa  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
005388b1  f30f105ddc                MOVSS XMM3,dword ptr [EBP + -0x24]
005388b6  0f28c3                    MOVAPS XMM0,XMM3
005388b9  f30f599fb40b0000          MULSS XMM3,dword ptr [EDI + 0xbb4]
005388c1  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
005388c9  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
005388d1  f30f590d7ca8ba00          MULSS XMM1,dword ptr [0x00baa87c]
005388d9  f30f59157ca8ba00          MULSS XMM2,dword ptr [0x00baa87c]
005388e1  f30f584dd4                ADDSS XMM1,dword ptr [EBP + -0x2c]
005388e6  f30f5987b00b0000          MULSS XMM0,dword ptr [EDI + 0xbb0]
005388ee  f30f5855d8                ADDSS XMM2,dword ptr [EBP + -0x28]
005388f3  f30f58c8                  ADDSS XMM1,XMM0
005388f7  f30f58d3                  ADDSS XMM2,XMM3
005388fb  f30f5c0e                  SUBSS XMM1,dword ptr [ESI]
005388ff  f30f5c5604                SUBSS XMM2,dword ptr [ESI + 0x4]
00538904  f30f114df4                MOVSS dword ptr [EBP + -0xc],XMM1
00538909  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
0053890e  7431                      JZ 0x00538941
00538910  8d45cc                    LEA EAX,[EBP + -0x34]
00538913  0f57d2                    XORPS XMM2,XMM2
00538916  50                        PUSH EAX
00538917  8bcf                      MOV ECX,EDI
00538919  e8b2f91900                CALL 0x006d82d0
0053891e  f30f105004                MOVSS XMM2,dword ptr [EAX + 0x4]
00538923  f30f1008                  MOVSS XMM1,dword ptr [EAX]
00538927  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
0053892f  f30f590dd0a9ba00          MULSS XMM1,dword ptr [0x00baa9d0]
00538937  f30f1155f8                MOVSS dword ptr [EBP + -0x8],XMM2
0053893c  f30f114df4                MOVSS dword ptr [EBP + -0xc],XMM1
00538941  8a8748010000              MOV AL,byte ptr [EDI + 0x148]
00538947  84c0                      TEST AL,AL
00538949  7511                      JNZ 0x0053895c
0053894b  f30f100528aeba00          MOVSS XMM0,dword ptr [0x00baae28]
00538953  0f2fc1                    COMISS XMM0,XMM1
00538956  770d                      JA 0x00538965
00538958  84c0                      TEST AL,AL
0053895a  7422                      JZ 0x0053897e
0053895c  0f2f0d04a9ba00            COMISS XMM1,dword ptr [0x00baa904]
00538963  760f                      JBE 0x00538974
00538965  84c0                      TEST AL,AL
00538967  0f94c0                    SETZ AL
0053896a  888748010000              MOV byte ptr [EDI + 0x148],AL
00538970  84c0                      TEST AL,AL
00538972  740a                      JZ 0x0053897e
00538974  f30f100550adba00          MOVSS XMM0,dword ptr [0x00baad50]
0053897c  eb08                      JMP 0x00538986
0053897e  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
00538986  f30f1145e8                MOVSS dword ptr [EBP + -0x18],XMM0
0053898b  0f28c1                    MOVAPS XMM0,XMM1
0053898e  f30f59c1                  MULSS XMM0,XMM1
00538992  0f28ca                    MOVAPS XMM1,XMM2
00538995  f30f59ca                  MULSS XMM1,XMM2
00538999  f30f58c1                  ADDSS XMM0,XMM1
0053899d  e8aed0efff                CALL 0x00435a50
005389a2  f30f102554a4ba00          MOVSS XMM4,dword ptr [0x00baa454]
005389aa  0f28d8                    MOVAPS XMM3,XMM0
005389ad  f30f1055f4                MOVSS XMM2,dword ptr [EBP + -0xc]
005389b2  0f57c0                    XORPS XMM0,XMM0
005389b5  0f2fd8                    COMISS XMM3,XMM0
005389b8  760b                      JBE 0x005389c5
005389ba  0f28cc                    MOVAPS XMM1,XMM4
005389bd  f30f5ecb                  DIVSS XMM1,XMM3
005389c1  f30f59d1                  MULSS XMM2,XMM1
005389c5  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
005389ca  0f2fc1                    COMISS XMM0,XMM1
005389cd  7609                      JBE 0x005389d8
005389cf  0f2f1550adba00            COMISS XMM2,dword ptr [0x00baad50]
005389d6  730a                      JNC 0x005389e2
005389d8  0f2fc8                    COMISS XMM1,XMM0
005389db  7608                      JBE 0x005389e5
005389dd  0f2fe2                    COMISS XMM4,XMM2
005389e0  7203                      JC 0x005389e5
005389e2  0f28d1                    MOVAPS XMM2,XMM1
005389e5  0f2fd8                    COMISS XMM3,XMM0
005389e8  7612                      JBE 0x005389fc
005389ea  0f28c4                    MOVAPS XMM0,XMM4
005389ed  f30f5ec3                  DIVSS XMM0,XMM3
005389f1  f30f105df8                MOVSS XMM3,dword ptr [EBP + -0x8]
005389f6  f30f59d8                  MULSS XMM3,XMM0
005389fa  eb05                      JMP 0x00538a01
005389fc  f30f105df8                MOVSS XMM3,dword ptr [EBP + -0x8]
00538a01  83bf1c0f0000ff            CMP dword ptr [EDI + 0xf1c],-0x1
00538a08  f30f5915fca6ba00          MULSS XMM2,dword ptr [0x00baa6fc]
00538a10  f30f591dfca6ba00          MULSS XMM3,dword ptr [0x00baa6fc]
00538a18  f30f10b79c030000          MOVSS XMM6,dword ptr [EDI + 0x39c]
00538a20  740a                      JZ 0x00538a2c
00538a22  f30f1005f8a1ba00          MOVSS XMM0,dword ptr [0x00baa1f8]
00538a2a  eb08                      JMP 0x00538a34
00538a2c  f30f100520a1ba00          MOVSS XMM0,dword ptr [0x00baa120]
00538a34  0f2ef4                    UCOMISS XMM6,XMM4
00538a37  0f28ec                    MOVAPS XMM5,XMM4
00538a3a  f30f5ce8                  SUBSS XMM5,XMM0
00538a3e  9f                        LAHF
00538a3f  f6c444                    TEST AH,0x44
00538a42  7b16                      JNP 0x00538a5a
00538a44  0f28cd                    MOVAPS XMM1,XMM5
00538a47  0f28c5                    MOVAPS XMM0,XMM5
00538a4a  f30f58ce                  ADDSS XMM1,XMM6
00538a4e  f30f59c6                  MULSS XMM0,XMM6
00538a52  f30f5cc8                  SUBSS XMM1,XMM0
00538a56  f30f5ee9                  DIVSS XMM5,XMM1
00538a5a  f30f108760030000          MOVSS XMM0,dword ptr [EDI + 0x360]
00538a62  f30f5ce5                  SUBSS XMM4,XMM5
00538a66  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
00538a6e  f30f5cd0                  SUBSS XMM2,XMM0
00538a72  f30f5cd9                  SUBSS XMM3,XMM1
00538a76  f30f59d4                  MULSS XMM2,XMM4
00538a7a  f30f59dc                  MULSS XMM3,XMM4
00538a7e  f30f58d0                  ADDSS XMM2,XMM0
00538a82  f30f58d9                  ADDSS XMM3,XMM1
00538a86  f30f119760030000          MOVSS dword ptr [EDI + 0x360],XMM2
00538a8e  f30f119f64030000          MOVSS dword ptr [EDI + 0x364],XMM3
00538a96  5f                        POP EDI
00538a97  5e                        POP ESI
00538a98  8be5                      MOV ESP,EBP
00538a9a  5d                        POP EBP
00538a9b  8be3                      MOV ESP,EBX
00538a9d  5b                        POP EBX
00538a9e  c3                        RET
00538a9f  83f808                    CMP EAX,0x8
00538aa2  0f85b1000000              JNZ 0x00538b59
00538aa8  6a00                      PUSH 0x0
00538aaa  6828ddb100                PUSH 0xb1dd28
00538aaf  8d4f48                    LEA ECX,[EDI + 0x48]
00538ab2  e8c918edff                CALL 0x0040a380
00538ab7  f30f10976c030000          MOVSS XMM2,dword ptr [EDI + 0x36c]
00538abf  f30f591504a3ba00          MULSS XMM2,dword ptr [0x00baa304]
00538ac7  0f2e15e49fba00            UCOMISS XMM2,dword ptr [0x00ba9fe4]
00538ace  f30f11976c030000          MOVSS dword ptr [EDI + 0x36c],XMM2
00538ad6  f30f109fb80b0000          MOVSS XMM3,dword ptr [EDI + 0xbb8]
00538ade  f30f10a7bc0b0000          MOVSS XMM4,dword ptr [EDI + 0xbbc]
00538ae6  f30f591d30a7ba00          MULSS XMM3,dword ptr [0x00baa730]
00538aee  f30f592530a7ba00          MULSS XMM4,dword ptr [0x00baa730]
00538af6  9f                        LAHF
00538af7  f6c444                    TEST AH,0x44
00538afa  7b3b                      JNP 0x00538b37
00538afc  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
00538b04  0f28c1                    MOVAPS XMM0,XMM1
00538b07  f30f59cc                  MULSS XMM1,XMM4
00538b0b  f30f59c3                  MULSS XMM0,XMM3
00538b0f  f30f5eca                  DIVSS XMM1,XMM2
00538b13  f30f5ec2                  DIVSS XMM0,XMM2
00538b17  f30f588f64030000          ADDSS XMM1,dword ptr [EDI + 0x364]
00538b1f  f30f588760030000          ADDSS XMM0,dword ptr [EDI + 0x360]
00538b27  f30f118f64030000          MOVSS dword ptr [EDI + 0x364],XMM1
00538b2f  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
00538b37  29b710040000              SUB dword ptr [EDI + 0x410],ESI
00538b3d  83bf1004000000            CMP dword ptr [EDI + 0x410],0x0
00538b44  7f13                      JG 0x00538b59
00538b46  8b45f4                    MOV EAX,dword ptr [EBP + -0xc]
00538b49  c787640b000004000000      MOV dword ptr [EDI + 0xb64],0x4
00538b53  898710040000              MOV dword ptr [EDI + 0x410],EAX
00538b59  5f                        POP EDI
00538b5a  5e                        POP ESI
00538b5b  8be5                      MOV ESP,EBP
00538b5d  5d                        POP EBP
00538b5e  8be3                      MOV ESP,EBX
00538b60  5b                        POP EBX
00538b61  c3                        RET
