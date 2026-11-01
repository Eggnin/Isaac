; J460 NPC AI 0x0045ef20 AI_0045ef20
; types=262
; identities=262.0.0
; entry=0045ef20
0045ef20  55                        PUSH EBP
0045ef21  8bec                      MOV EBP,ESP
0045ef23  83e4f8                    AND ESP,0xfffffff8
0045ef26  81eccc000000              SUB ESP,0xcc
0045ef2c  a1b493bf00                MOV EAX,[0x00bf93b4]
0045ef31  33c4                      XOR EAX,ESP
0045ef33  898424c8000000            MOV dword ptr [ESP + 0xc8],EAX
0045ef3a  53                        PUSH EBX
0045ef3b  56                        PUSH ESI
0045ef3c  57                        PUSH EDI
0045ef3d  8bf9                      MOV EDI,ECX
0045ef3f  33d2                      XOR EDX,EDX
0045ef41  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0045ef45  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0045ef4b  0f94c2                    SETZ DL
0045ef4e  81e100000010              AND ECX,0x10000000
0045ef54  33c0                      XOR EAX,EAX
0045ef56  0bc1                      OR EAX,ECX
0045ef58  8d145504000000            LEA EDX,[EDX*0x2 + 0x4]
0045ef5f  89542418                  MOV dword ptr [ESP + 0x18],EDX
0045ef63  7504                      JNZ 0x0045ef69
0045ef65  8bf2                      MOV ESI,EDX
0045ef67  eb09                      JMP 0x0045ef72
0045ef69  be03000000                MOV ESI,0x3
0045ef6e  89742418                  MOV dword ptr [ESP + 0x18],ESI
0045ef72  83bf640b000000            CMP dword ptr [EDI + 0xb64],0x0
0045ef79  7562                      JNZ 0x0045efdd
0045ef7b  83bfc80b000000            CMP dword ptr [EDI + 0xbc8],0x0
0045ef82  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0045ef8c  c7871004000000000000      MOV dword ptr [EDI + 0x410],0x0
0045ef96  7518                      JNZ 0x0045efb0
0045ef98  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
0045efa0  f30f5c0550a9ba00          SUBSS XMM0,dword ptr [0x00baa950]
0045efa8  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
0045efb0  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
0045efb6  898734030000              MOV dword ptr [EDI + 0x334],EAX
0045efbc  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
0045efc2  898738030000              MOV dword ptr [EDI + 0x338],EAX
0045efc8  5f                        POP EDI
0045efc9  5e                        POP ESI
0045efca  5b                        POP EBX
0045efcb  8b8c24c8000000            MOV ECX,dword ptr [ESP + 0xc8]
0045efd2  33cc                      XOR ECX,ESP
0045efd4  e852016900                CALL 0x00aef12b
0045efd9  8be5                      MOV ESP,EBP
0045efdb  5d                        POP EBP
0045efdc  c3                        RET
0045efdd  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
0045efe5  8d9f3c030000              LEA EBX,[EDI + 0x33c]
0045efeb  f30f5905a4a3ba00          MULSS XMM0,dword ptr [0x00baa3a4]
0045eff3  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
0045effb  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
0045f003  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
0045f00b  f30f5c0b                  SUBSS XMM1,dword ptr [EBX]
0045f00f  f30f5c4304                SUBSS XMM0,dword ptr [EBX + 0x4]
0045f014  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
0045f01c  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
0045f024  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
0045f02a  83f803                    CMP EAX,0x3
0045f02d  0f85d4010000              JNZ 0x0045f207
0045f033  6a00                      PUSH 0x0
0045f035  6854bcb100                PUSH 0xb1bc54
0045f03a  8d4f48                    LEA ECX,[EDI + 0x48]
0045f03d  e83eb3faff                CALL 0x0040a380
0045f042  f30f108f80030000          MOVSS XMM1,dword ptr [EDI + 0x380]
0045f04a  b80a000000                MOV EAX,0xa
0045f04f  f30f5e8f84030000          DIVSS XMM1,dword ptr [EDI + 0x384]
0045f057  bb14000000                MOV EBX,0x14
0045f05c  8b8f6c010000              MOV ECX,dword ptr [EDI + 0x16c]
0045f062  f30f1005f8a1ba00          MOVSS XMM0,dword ptr [0x00baa1f8]
0045f06a  0f2fc1                    COMISS XMM0,XMM1
0045f06d  0f47d8                    CMOVA EBX,EAX
0045f070  81e100000010              AND ECX,0x10000000
0045f076  33c0                      XOR EAX,EAX
0045f078  0bc1                      OR EAX,ECX
0045f07a  7418                      JZ 0x0045f094
0045f07c  a17816c700                MOV EAX,[0x00c71678]
0045f081  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045f087  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
0045f08a  f6404401                  TEST byte ptr [EAX + 0x44],0x1
0045f08e  0f852f0b0000              JNZ 0x0045fbc3
0045f094  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0045f098  7446                      JZ 0x0045f0e0
0045f09a  8bcf                      MOV ECX,EDI
0045f09c  e89ff72500                CALL 0x006be840
0045f0a1  f30f108040030000          MOVSS XMM0,dword ptr [EAX + 0x340]
0045f0a9  f30f5c0504a9ba00          SUBSS XMM0,dword ptr [0x00baa904]
0045f0b1  0f2f8740030000            COMISS XMM0,dword ptr [EDI + 0x340]
0045f0b8  7626                      JBE 0x0045f0e0
0045f0ba  6a00                      PUSH 0x0
0045f0bc  53                        PUSH EBX
0045f0bd  8bcf                      MOV ECX,EDI
0045f0bf  e84cd62400                CALL 0x006ac710
0045f0c4  84c0                      TEST AL,AL
0045f0c6  7418                      JZ 0x0045f0e0
0045f0c8  e893fe2800                CALL 0x006eef60
0045f0cd  a803                      TEST AL,0x3
0045f0cf  750f                      JNZ 0x0045f0e0
0045f0d1  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
0045f0db  e9d90a0000                JMP 0x0045fbb9
0045f0e0  8b4730                    MOV EAX,dword ptr [EDI + 0x30]
0045f0e3  83f801                    CMP EAX,0x1
0045f0e6  0f840c010000              JZ 0x0045f1f8
0045f0ec  83f802                    CMP EAX,0x2
0045f0ef  7424                      JZ 0x0045f115
0045f0f1  6a00                      PUSH 0x0
0045f0f3  53                        PUSH EBX
0045f0f4  8bcf                      MOV ECX,EDI
0045f0f6  e815d62400                CALL 0x006ac710
0045f0fb  84c0                      TEST AL,AL
0045f0fd  7416                      JZ 0x0045f115
0045f0ff  e85cfe2800                CALL 0x006eef60
0045f104  33d2                      XOR EDX,EDX
0045f106  b903000000                MOV ECX,0x3
0045f10b  f7f1                      DIV ECX
0045f10d  85d2                      TEST EDX,EDX
0045f10f  0f84e3000000              JZ 0x0045f1f8
0045f115  a17816c700                MOV EAX,[0x00c71678]
0045f11a  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045f120  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0045f126  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0045f12c  03c8                      ADD ECX,EAX
0045f12e  33c0                      XOR EAX,EAX
0045f130  85c9                      TEST ECX,ECX
0045f132  0f4fc1                    CMOVG EAX,ECX
0045f135  3bc6                      CMP EAX,ESI
0045f137  0f8f860a0000              JG 0x0045fbc3
0045f13d  6a00                      PUSH 0x0
0045f13f  8d041b                    LEA EAX,[EBX + EBX*0x1]
0045f142  8bcf                      MOV ECX,EDI
0045f144  50                        PUSH EAX
0045f145  e8c6d52400                CALL 0x006ac710
0045f14a  84c0                      TEST AL,AL
0045f14c  0f84710a0000              JZ 0x0045fbc3
0045f152  e809fe2800                CALL 0x006eef60
0045f157  a801                      TEST AL,0x1
0045f159  0f85640a0000              JNZ 0x0045fbc3
0045f15f  a17816c700                MOV EAX,[0x00c71678]
0045f164  6800000010                PUSH 0x10000000
0045f169  6a00                      PUSH 0x0
0045f16b  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
0045f171  8b88c4120000              MOV ECX,dword ptr [EAX + 0x12c4]
0045f177  8b80c0120000              MOV EAX,dword ptr [EAX + 0x12c0]
0045f17d  03c8                      ADD ECX,EAX
0045f17f  33c0                      XOR EAX,EAX
0045f181  85c9                      TEST ECX,ECX
0045f183  0f4fc1                    CMOVG EAX,ECX
0045f186  8bcf                      MOV ECX,EDI
0045f188  3bc6                      CMP EAX,ESI
0045f18a  0f9ec3                    SETLE BL
0045f18d  e89e82fbff                CALL 0x00417430
0045f192  84c0                      TEST AL,AL
0045f194  744b                      JZ 0x0045f1e1
0045f196  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0045f19a  6a00                      PUSH 0x0
0045f19c  51                        PUSH ECX
0045f19d  6a00                      PUSH 0x0
0045f19f  8bcf                      MOV ECX,EDI
0045f1a1  7532                      JNZ 0x0045f1d5
0045f1a3  682e030000                PUSH 0x32e
0045f1a8  e833d62400                CALL 0x006ac7e0
0045f1ad  6a00                      PUSH 0x0
0045f1af  51                        PUSH ECX
0045f1b0  6a00                      PUSH 0x0
0045f1b2  6a5e                      PUSH 0x5e
0045f1b4  8bcf                      MOV ECX,EDI
0045f1b6  8bf0                      MOV ESI,EAX
0045f1b8  e823d62400                CALL 0x006ac7e0
0045f1bd  6a00                      PUSH 0x0
0045f1bf  51                        PUSH ECX
0045f1c0  6a00                      PUSH 0x0
0045f1c2  6a55                      PUSH 0x55
0045f1c4  8bcf                      MOV ECX,EDI
0045f1c6  03f0                      ADD ESI,EAX
0045f1c8  e813d62400                CALL 0x006ac7e0
0045f1cd  03c6                      ADD EAX,ESI
0045f1cf  3b442418                  CMP EAX,dword ptr [ESP + 0x18]
0045f1d3  eb09                      JMP 0x0045f1de
0045f1d5  6a1d                      PUSH 0x1d
0045f1d7  e804d62400                CALL 0x006ac7e0
0045f1dc  3bc6                      CMP EAX,ESI
0045f1de  0f9cc3                    SETL BL
0045f1e1  84db                      TEST BL,BL
0045f1e3  0f84da090000              JZ 0x0045fbc3
0045f1e9  c787640b00000d000000      MOV dword ptr [EDI + 0xb64],0xd
0045f1f3  e9c1090000                JMP 0x0045fbb9
0045f1f8  c787640b000009000000      MOV dword ptr [EDI + 0xb64],0x9
0045f202  e9b2090000                JMP 0x0045fbb9
0045f207  83f808                    CMP EAX,0x8
0045f20a  0f8542010000              JNZ 0x0045f352
0045f210  6a00                      PUSH 0x0
0045f212  687cd4b100                PUSH 0xb1d47c
0045f217  8d4f48                    LEA ECX,[EDI + 0x48]
0045f21a  e861b1faff                CALL 0x0040a380
0045f21f  51                        PUSH ECX
0045f220  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045f227  6a00                      PUSH 0x0
0045f229  6a3c                      PUSH 0x3c
0045f22b  51                        PUSH ECX
0045f22c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045f233  8bcf                      MOV ECX,EDI
0045f235  6836010000                PUSH 0x136
0045f23a  e861792700                CALL 0x006d6ba0
0045f23f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045f243  0f8419060000              JZ 0x0045f862
0045f249  68dcd2b100                PUSH 0xb1d2dc
0045f24e  8d4f78                    LEA ECX,[EDI + 0x78]
0045f251  e87abbfaff                CALL 0x0040add0
0045f256  84c0                      TEST AL,AL
0045f258  0f84f1050000              JZ 0x0045f84f
0045f25e  8bcf                      MOV ECX,EDI
0045f260  e8dbf52500                CALL 0x006be840
0045f265  8bf0                      MOV ESI,EAX
0045f267  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0045f26f  f30f10963c030000          MOVSS XMM2,dword ptr [ESI + 0x33c]
0045f277  0f28c8                    MOVAPS XMM1,XMM0
0045f27a  f30f5c4b04                SUBSS XMM1,dword ptr [EBX + 0x4]
0045f27f  f30f1154240c              MOVSS dword ptr [ESP + 0xc],XMM2
0045f285  f30f5c13                  SUBSS XMM2,dword ptr [EBX]
0045f289  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0045f28f  0f28c1                    MOVAPS XMM0,XMM1
0045f292  f30f114c2414              MOVSS dword ptr [ESP + 0x14],XMM1
0045f298  f30f59c1                  MULSS XMM0,XMM1
0045f29c  0f28ca                    MOVAPS XMM1,XMM2
0045f29f  f30f11542418              MOVSS dword ptr [ESP + 0x18],XMM2
0045f2a5  f30f59ca                  MULSS XMM1,XMM2
0045f2a9  f30f58c1                  ADDSS XMM0,XMM1
0045f2ad  e89e67fdff                CALL 0x00435a50
0045f2b2  f30f104c2418              MOVSS XMM1,dword ptr [ESP + 0x18]
0045f2b8  0f57db                    XORPS XMM3,XMM3
0045f2bb  0f2fc3                    COMISS XMM0,XMM3
0045f2be  761f                      JBE 0x0045f2df
0045f2c0  f30f101554a4ba00          MOVSS XMM2,dword ptr [0x00baa454]
0045f2c8  f30f5ed0                  DIVSS XMM2,XMM0
0045f2cc  0f28c2                    MOVAPS XMM0,XMM2
0045f2cf  f30f59c8                  MULSS XMM1,XMM0
0045f2d3  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0045f2d9  f30f59c2                  MULSS XMM0,XMM2
0045f2dd  eb06                      JMP 0x0045f2e5
0045f2df  f30f10442414              MOVSS XMM0,dword ptr [ESP + 0x14]
0045f2e5  f30f59cb                  MULSS XMM1,XMM3
0045f2e9  f30f58c8                  ADDSS XMM1,XMM0
0045f2ed  f30f1005f8a1ba00          MOVSS XMM0,dword ptr [0x00baa1f8]
0045f2f5  0f2fc1                    COMISS XMM0,XMM1
0045f2f8  7616                      JBE 0x0045f310
0045f2fa  f30f108640030000          MOVSS XMM0,dword ptr [ESI + 0x340]
0045f302  f30f5805d0a9ba00          ADDSS XMM0,dword ptr [0x00baa9d0]
0045f30a  f30f11442410              MOVSS dword ptr [ESP + 0x10],XMM0
0045f310  8d4c2428                  LEA ECX,[ESP + 0x28]
0045f314  e817fcfdff                CALL 0x0043ef30
0045f319  50                        PUSH EAX
0045f31a  51                        PUSH ECX
0045f31b  c7042400000000            MOV dword ptr [ESP],0x0
0045f322  8d442414                  LEA EAX,[ESP + 0x14]
0045f326  50                        PUSH EAX
0045f327  6a0f                      PUSH 0xf
0045f329  8bcf                      MOV ECX,EDI
0045f32b  e8a0da2600                CALL 0x006ccdd0
0045f330  51                        PUSH ECX
0045f331  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045f338  6a00                      PUSH 0x0
0045f33a  6a02                      PUSH 0x2
0045f33c  51                        PUSH ECX
0045f33d  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045f344  8bcf                      MOV ECX,EDI
0045f346  6a72                      PUSH 0x72
0045f348  e853782700                CALL 0x006d6ba0
0045f34d  e9fd040000                JMP 0x0045f84f
0045f352  83f809                    CMP EAX,0x9
0045f355  0f859e050000              JNZ 0x0045f8f9
0045f35b  6a00                      PUSH 0x0
0045f35d  6808deb100                PUSH 0xb1de08
0045f362  8d4f48                    LEA ECX,[EDI + 0x48]
0045f365  e816b0faff                CALL 0x0040a380
0045f36a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045f36e  0f84ee040000              JZ 0x0045f862
0045f374  68dcd2b100                PUSH 0xb1d2dc
0045f379  8d4f78                    LEA ECX,[EDI + 0x78]
0045f37c  e84fbafaff                CALL 0x0040add0
0045f381  84c0                      TEST AL,AL
0045f383  0f84c6040000              JZ 0x0045f84f
0045f389  837f3001                  CMP dword ptr [EDI + 0x30],0x1
0045f38d  8db73c030000              LEA ESI,[EDI + 0x33c]
0045f393  0f85b2030000              JNZ 0x0045f74b
0045f399  8d4c2428                  LEA ECX,[ESP + 0x28]
0045f39d  e88efbfdff                CALL 0x0043ef30
0045f3a2  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0045f3a6  f30f11842490000000        MOVSS dword ptr [ESP + 0x90],XMM0
0045f3af  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0045f3b4  f30f11842494000000        MOVSS dword ptr [ESP + 0x94],XMM0
0045f3bd  f30f1044243c              MOVSS XMM0,dword ptr [ESP + 0x3c]
0045f3c3  f30f590528a5ba00          MULSS XMM0,dword ptr [0x00baa528]
0045f3cb  c7442430000080bf          MOV dword ptr [ESP + 0x30],0xbf800000
0045f3d3  f30f1144243c              MOVSS dword ptr [ESP + 0x3c],XMM0
0045f3d9  e882fb2800                CALL 0x006eef60
0045f3de  83e003                    AND EAX,0x3
0045f3e1  ff2485d8fb4500            JMP dword ptr [EAX*0x4 + 0x45fbd8]
0045f74b  51                        PUSH ECX
0045f74c  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045f753  6a00                      PUSH 0x0
0045f755  6a02                      PUSH 0x2
0045f757  51                        PUSH ECX
0045f758  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045f75f  8bcf                      MOV ECX,EDI
0045f761  6830010000                PUSH 0x130
0045f766  e835742700                CALL 0x006d6ba0
0045f76b  8d4c2428                  LEA ECX,[ESP + 0x28]
0045f76f  e8bcf7fdff                CALL 0x0043ef30
0045f774  68284ec300                PUSH 0xc34e28
0045f779  8d4c2458                  LEA ECX,[ESP + 0x58]
0045f77d  c78424c000000002000000    MOV dword ptr [ESP + 0xc0],0x2
0045f788  e8637afaff                CALL 0x004071f0
0045f78d  f30f1006                  MOVSS XMM0,dword ptr [ESI]
0045f791  8bcf                      MOV ECX,EDI
0045f793  8b842484000000            MOV EAX,dword ptr [ESP + 0x84]
0045f79a  818c248000000080200000    OR dword ptr [ESP + 0x80],0x2080
0045f7a5  f30f11842490000000        MOVSS dword ptr [ESP + 0x90],XMM0
0045f7ae  f30f104604                MOVSS XMM0,dword ptr [ESI + 0x4]
0045f7b3  6800000010                PUSH 0x10000000
0045f7b8  6a00                      PUSH 0x0
0045f7ba  c744243400009441          MOV dword ptr [ESP + 0x34],0x41940000
0045f7c2  c744243c8fc275bd          MOV dword ptr [ESP + 0x3c],0xbd75c28f
0045f7ca  c7442438000000c0          MOV dword ptr [ESP + 0x38],0xc0000000
0045f7d2  c644243000                MOV byte ptr [ESP + 0x30],0x0
0045f7d7  8984248c000000            MOV dword ptr [ESP + 0x8c],EAX
0045f7de  f30f1184249c000000        MOVSS dword ptr [ESP + 0x9c],XMM0
0045f7e7  c74424406666863f          MOV dword ptr [ESP + 0x40],0x3f866666
0045f7ef  e83c7cfbff                CALL 0x00417430
0045f7f4  84c0                      TEST AL,AL
0045f7f6  740b                      JZ 0x0045f803
0045f7f8  c78424c40000000000e040    MOV dword ptr [ESP + 0xc4],0x40e00000
0045f803  e858f72800                CALL 0x006eef60
0045f808  83e003                    AND EAX,0x3
0045f80b  ff2485e8fb4500            JMP dword ptr [EAX*0x4 + 0x45fbe8]
0045f84f  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045f853  740d                      JZ 0x0045f862
0045f855  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045f85c  0f8561030000              JNZ 0x0045fbc3
0045f862  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0045f86c  5f                        POP EDI
0045f86d  5e                        POP ESI
0045f86e  5b                        POP EBX
0045f86f  8b8c24c8000000            MOV ECX,dword ptr [ESP + 0xc8]
0045f876  33cc                      XOR ECX,ESP
0045f878  e8aef86800                CALL 0x00aef12b
0045f87d  8be5                      MOV ESP,EBP
0045f87f  5d                        POP EBP
0045f880  c3                        RET
0045f8f9  83f80d                    CMP EAX,0xd
0045f8fc  0f85c1020000              JNZ 0x0045fbc3
0045f902  8b87c00b0000              MOV EAX,dword ptr [EDI + 0xbc0]
0045f908  85c0                      TEST EAX,EAX
0045f90a  7560                      JNZ 0x0045f96c
0045f90c  50                        PUSH EAX
0045f90d  6820deb100                PUSH 0xb1de20
0045f912  8d4f48                    LEA ECX,[EDI + 0x48]
0045f915  e866aafaff                CALL 0x0040a380
0045f91a  51                        PUSH ECX
0045f91b  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045f922  6a00                      PUSH 0x0
0045f924  6a3c                      PUSH 0x3c
0045f926  51                        PUSH ECX
0045f927  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045f92e  8bcf                      MOV ECX,EDI
0045f930  6838010000                PUSH 0x138
0045f935  e866722700                CALL 0x006d6ba0
0045f93a  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045f93e  740d                      JZ 0x0045f94d
0045f940  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045f947  0f8576020000              JNZ 0x0045fbc3
0045f94d  c787c00b000001000000      MOV dword ptr [EDI + 0xbc0],0x1
0045f957  5f                        POP EDI
0045f958  5e                        POP ESI
0045f959  5b                        POP EBX
0045f95a  8b8c24c8000000            MOV ECX,dword ptr [ESP + 0xc8]
0045f961  33cc                      XOR ECX,ESP
0045f963  e8c3f76800                CALL 0x00aef12b
0045f968  8be5                      MOV ESP,EBP
0045f96a  5d                        POP EBP
0045f96b  c3                        RET
0045f96c  83f801                    CMP EAX,0x1
0045f96f  0f854e020000              JNZ 0x0045fbc3
0045f975  6a00                      PUSH 0x0
0045f977  6820d4b100                PUSH 0xb1d420
0045f97c  8d4f48                    LEA ECX,[EDI + 0x48]
0045f97f  e8fca9faff                CALL 0x0040a380
0045f984  68dcd2b100                PUSH 0xb1d2dc
0045f989  8d4f48                    LEA ECX,[EDI + 0x48]
0045f98c  e89fb6faff                CALL 0x0040b030
0045f991  84c0                      TEST AL,AL
0045f993  0f8407020000              JZ 0x0045fba0
0045f999  837f3002                  CMP dword ptr [EDI + 0x30],0x2
0045f99d  0f85ce000000              JNZ 0x0045fa71
0045f9a3  a17816c700                MOV EAX,[0x00c71678]
0045f9a8  8bcf                      MOV ECX,EDI
0045f9aa  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0045f9b0  e88bee2500                CALL 0x006be840
0045f9b5  6a00                      PUSH 0x0
0045f9b7  6a00                      PUSH 0x0
0045f9b9  6a00                      PUSH 0x0
0045f9bb  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0045f9c1  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0045f9c7  51                        PUSH ECX
0045f9c8  89442420                  MOV dword ptr [ESP + 0x20],EAX
0045f9cc  8d44241c                  LEA EAX,[ESP + 0x1c]
0045f9d0  c7042400000000            MOV dword ptr [ESP],0x0
0045f9d7  50                        PUSH EAX
0045f9d8  8d442434                  LEA EAX,[ESP + 0x34]
0045f9dc  894c2420                  MOV dword ptr [ESP + 0x20],ECX
0045f9e0  50                        PUSH EAX
0045f9e1  8bce                      MOV ECX,ESI
0045f9e3  e8383b3b00                CALL 0x00813520
0045f9e8  51                        PUSH ECX
0045f9e9  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
0045f9f0  6a00                      PUSH 0x0
0045f9f2  ff7004                    PUSH dword ptr [EAX + 0x4]
0045f9f5  ff30                      PUSH dword ptr [EAX]
0045f9f7  57                        PUSH EDI
0045f9f8  53                        PUSH EBX
0045f9f9  e8522d2600                CALL 0x006c2750
0045f9fe  83c418                    ADD ESP,0x18
0045fa01  e85af52800                CALL 0x006eef60
0045fa06  a801                      TEST AL,0x1
0045fa08  0f8575010000              JNZ 0x0045fb83
0045fa0e  a17816c700                MOV EAX,[0x00c71678]
0045fa13  8bcf                      MOV ECX,EDI
0045fa15  8bb000830100              MOV ESI,dword ptr [EAX + 0x18300]
0045fa1b  e820ee2500                CALL 0x006be840
0045fa20  6a00                      PUSH 0x0
0045fa22  6a00                      PUSH 0x0
0045fa24  6a00                      PUSH 0x0
0045fa26  8b883c030000              MOV ECX,dword ptr [EAX + 0x33c]
0045fa2c  8b8040030000              MOV EAX,dword ptr [EAX + 0x340]
0045fa32  51                        PUSH ECX
0045fa33  89442420                  MOV dword ptr [ESP + 0x20],EAX
0045fa37  8d44241c                  LEA EAX,[ESP + 0x1c]
0045fa3b  c7042400000000            MOV dword ptr [ESP],0x0
0045fa42  50                        PUSH EAX
0045fa43  8d442434                  LEA EAX,[ESP + 0x34]
0045fa47  894c2420                  MOV dword ptr [ESP + 0x20],ECX
0045fa4b  50                        PUSH EAX
0045fa4c  8bce                      MOV ECX,ESI
0045fa4e  e8cd3a3b00                CALL 0x00813520
0045fa53  51                        PUSH ECX
0045fa54  c704240000f0c1            MOV dword ptr [ESP],0xc1f00000
0045fa5b  6a00                      PUSH 0x0
0045fa5d  ff7004                    PUSH dword ptr [EAX + 0x4]
0045fa60  ff30                      PUSH dword ptr [EAX]
0045fa62  57                        PUSH EDI
0045fa63  53                        PUSH EBX
0045fa64  e8e72c2600                CALL 0x006c2750
0045fa69  83c418                    ADD ESP,0x18
0045fa6c  e912010000                JMP 0x0045fb83
0045fa71  e8eaf42800                CALL 0x006eef60
0045fa76  f30f1003                  MOVSS XMM0,dword ptr [EBX]
0045fa7a  0f57c9                    XORPS XMM1,XMM1
0045fa7d  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045fa83  f30f58c1                  ADDSS XMM0,XMM1
0045fa87  6a00                      PUSH 0x0
0045fa89  50                        PUSH EAX
0045fa8a  6a00                      PUSH 0x0
0045fa8c  57                        PUSH EDI
0045fa8d  f30f1144241c              MOVSS dword ptr [ESP + 0x1c],XMM0
0045fa93  8d44241c                  LEA EAX,[ESP + 0x1c]
0045fa97  f30f104304                MOVSS XMM0,dword ptr [EBX + 0x4]
0045fa9c  6840b6c700                PUSH 0xc7b640
0045faa1  f30f58c1                  ADDSS XMM0,XMM1
0045faa5  50                        PUSH EAX
0045faa6  6a00                      PUSH 0x0
0045faa8  6a1d                      PUSH 0x1d
0045faaa  f30f11442430              MOVSS dword ptr [ESP + 0x30],XMM0
0045fab0  e85be92900                CALL 0x006fe410
0045fab5  6a00                      PUSH 0x0
0045fab7  68acd6c500                PUSH 0xc5d6ac
0045fabc  68dcd5c500                PUSH 0xc5d5dc
0045fac1  6a00                      PUSH 0x0
0045fac3  50                        PUSH EAX
0045fac4  e8e80d6900                CALL 0x00af08b1
0045fac9  f30f1003                  MOVSS XMM0,dword ptr [EBX]
0045facd  83c414                    ADD ESP,0x14
0045fad0  0f57c9                    XORPS XMM1,XMM1
0045fad3  8bf0                      MOV ESI,EAX
0045fad5  f30f58c1                  ADDSS XMM0,XMM1
0045fad9  8d442418                  LEA EAX,[ESP + 0x18]
0045fadd  6a00                      PUSH 0x0
0045fadf  6a00                      PUSH 0x0
0045fae1  6a00                      PUSH 0x0
0045fae3  51                        PUSH ECX
0045fae4  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
0045faea  f30f11442428              MOVSS dword ptr [ESP + 0x28],XMM0
0045faf0  f30f104304                MOVSS XMM0,dword ptr [EBX + 0x4]
0045faf5  f30f580544aaba00          ADDSS XMM0,dword ptr [0x00baaa44]
0045fafd  8b8900830100              MOV ECX,dword ptr [ECX + 0x18300]
0045fb03  c7042400002042            MOV dword ptr [ESP],0x42200000
0045fb0a  50                        PUSH EAX
0045fb0b  8d442434                  LEA EAX,[ESP + 0x34]
0045fb0f  50                        PUSH EAX
0045fb10  f30f11442434              MOVSS dword ptr [ESP + 0x34],XMM0
0045fb16  e8053a3b00                CALL 0x00813520
0045fb1b  f30f10442420              MOVSS XMM0,dword ptr [ESP + 0x20]
0045fb21  8d4e48                    LEA ECX,[ESI + 0x48]
0045fb24  f30f118634030000          MOVSS dword ptr [ESI + 0x334],XMM0
0045fb2c  f30f10442424              MOVSS XMM0,dword ptr [ESP + 0x24]
0045fb32  6a01                      PUSH 0x1
0045fb34  681cdeb100                PUSH 0xb1de1c
0045fb39  f30f118638030000          MOVSS dword ptr [ESI + 0x338],XMM0
0045fb41  c786640b000004000000      MOV dword ptr [ESI + 0xb64],0x4
0045fb4b  c7861004000005000000      MOV dword ptr [ESI + 0x410],0x5
0045fb55  e876aafaff                CALL 0x0040a5d0
0045fb5a  84c0                      TEST AL,AL
0045fb5c  740f                      JZ 0x0045fb6d
0045fb5e  8d4e78                    LEA ECX,[ESI + 0x78]
0045fb61  e84aa6faff                CALL 0x0040a1b0
0045fb66  c6868c00000001            MOV byte ptr [ESI + 0x8c],0x1
0045fb6d  837e7c00                  CMP dword ptr [ESI + 0x7c],0x0
0045fb71  7410                      JZ 0x0045fb83
0045fb73  f30f100d84a7ba00          MOVSS XMM1,dword ptr [0x00baa784]
0045fb7b  8d4e78                    LEA ECX,[ESI + 0x78]
0045fb7e  e87d92faff                CALL 0x00408e00
0045fb83  51                        PUSH ECX
0045fb84  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045fb8b  6a00                      PUSH 0x0
0045fb8d  6a02                      PUSH 0x2
0045fb8f  51                        PUSH ECX
0045fb90  c704240000803f            MOV dword ptr [ESP],0x3f800000
0045fb97  8bcf                      MOV ECX,EDI
0045fb99  6a72                      PUSH 0x72
0045fb9b  e800702700                CALL 0x006d6ba0
0045fba0  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
0045fba4  7409                      JZ 0x0045fbaf
0045fba6  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
0045fbad  7514                      JNZ 0x0045fbc3
0045fbaf  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
0045fbb9  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
0045fbc3  8b8c24d4000000            MOV ECX,dword ptr [ESP + 0xd4]
0045fbca  5f                        POP EDI
0045fbcb  5e                        POP ESI
0045fbcc  5b                        POP EBX
0045fbcd  33cc                      XOR ECX,ESP
0045fbcf  e857f56800                CALL 0x00aef12b
0045fbd4  8be5                      MOV ESP,EBP
0045fbd6  5d                        POP EBP
0045fbd7  c3                        RET
