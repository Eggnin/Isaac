; J460 NPC AI 0x004dd7f0 AI_004dd7f0
; types=856
; identities=856.0.0
; entry=004dd7f0
004dd7f0  53                        PUSH EBX
004dd7f1  8bdc                      MOV EBX,ESP
004dd7f3  83ec08                    SUB ESP,0x8
004dd7f6  83e4f8                    AND ESP,0xfffffff8
004dd7f9  83c404                    ADD ESP,0x4
004dd7fc  55                        PUSH EBP
004dd7fd  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004dd800  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004dd804  8bec                      MOV EBP,ESP
004dd806  6aff                      PUSH -0x1
004dd808  68603aaf00                PUSH 0xaf3a60
004dd80d  64a100000000              MOV EAX,FS:[0x0]
004dd813  50                        PUSH EAX
004dd814  53                        PUSH EBX
004dd815  83ec30                    SUB ESP,0x30
004dd818  56                        PUSH ESI
004dd819  57                        PUSH EDI
004dd81a  a1b493bf00                MOV EAX,[0x00bf93b4]
004dd81f  33c5                      XOR EAX,EBP
004dd821  50                        PUSH EAX
004dd822  8d45f4                    LEA EAX,[EBP + -0xc]
004dd825  64a300000000              MOV FS:[0x0],EAX
004dd82b  8bf9                      MOV EDI,ECX
004dd82d  a17816c700                MOV EAX,[0x00c71678]
004dd832  f30f2cb7a4030000          CVTTSS2SI ESI,dword ptr [EDI + 0x3a4]
004dd83a  8b9000830100              MOV EDX,dword ptr [EAX + 0x18300]
004dd840  8955e8                    MOV dword ptr [EBP + -0x18],EDX
004dd843  f30f2c87a0030000          CVTTSS2SI EAX,dword ptr [EDI + 0x3a0]
004dd84b  2bf0                      SUB ESI,EAX
004dd84d  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004dd853  8975e0                    MOV dword ptr [EBP + -0x20],ESI
004dd856  85c0                      TEST EAX,EAX
004dd858  0f845b040000              JZ 0x004ddcb9
004dd85e  83f803                    CMP EAX,0x3
004dd861  0f84a7030000              JZ 0x004ddc0e
004dd867  83f808                    CMP EAX,0x8
004dd86a  0f85a5050000              JNZ 0x004dde15
004dd870  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004dd874  8d7778                    LEA ESI,[EDI + 0x78]
004dd877  0f8474010000              JZ 0x004dd9f1
004dd87d  68d4d2b100                PUSH 0xb1d2d4
004dd882  8bce                      MOV ECX,ESI
004dd884  e847d5f2ff                CALL 0x0040add0
004dd889  84c0                      TEST AL,AL
004dd88b  7444                      JZ 0x004dd8d1
004dd88d  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004dd893  8d4de4                    LEA ECX,[EBP + -0x1c]
004dd896  c745e436010000            MOV dword ptr [EBP + -0x1c],0x136
004dd89d  e8de8e4700                CALL 0x00956780
004dd8a2  83ec08                    SUB ESP,0x8
004dd8a5  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004dd8ad  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dd8b4  6a00                      PUSH 0x0
004dd8b6  6a02                      PUSH 0x2
004dd8b8  51                        PUSH ECX
004dd8b9  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dd8c0  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004dd8c6  ff75e4                    PUSH dword ptr [EBP + -0x1c]
004dd8c9  e862034500                CALL 0x0092dc30
004dd8ce  8d7778                    LEA ESI,[EDI + 0x78]
004dd8d1  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004dd8d5  0f8416010000              JZ 0x004dd9f1
004dd8db  68dcd2b100                PUSH 0xb1d2dc
004dd8e0  8bce                      MOV ECX,ESI
004dd8e2  e8e9d4f2ff                CALL 0x0040add0
004dd8e7  84c0                      TEST AL,AL
004dd8e9  0f8402010000              JZ 0x004dd9f1
004dd8ef  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004dd8f5  8d4de4                    LEA ECX,[EBP + -0x1c]
004dd8f8  c745e46a000000            MOV dword ptr [EBP + -0x1c],0x6a
004dd8ff  e87c8e4700                CALL 0x00956780
004dd904  83ec08                    SUB ESP,0x8
004dd907  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004dd90f  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dd916  6a00                      PUSH 0x0
004dd918  6a02                      PUSH 0x2
004dd91a  51                        PUSH ECX
004dd91b  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dd922  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004dd928  ff75e4                    PUSH dword ptr [EBP + -0x1c]
004dd92b  e800034500                CALL 0x0092dc30
004dd930  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004dd936  8d4de4                    LEA ECX,[EBP + -0x1c]
004dd939  c745e409010000            MOV dword ptr [EBP + -0x1c],0x109
004dd940  e83b8e4700                CALL 0x00956780
004dd945  83ec08                    SUB ESP,0x8
004dd948  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004dd950  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dd957  6a00                      PUSH 0x0
004dd959  6a02                      PUSH 0x2
004dd95b  51                        PUSH ECX
004dd95c  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dd963  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004dd969  ff75e4                    PUSH dword ptr [EBP + -0x1c]
004dd96c  e8bf024500                CALL 0x0092dc30
004dd971  51                        PUSH ECX
004dd972  8d45c8                    LEA EAX,[EBP + -0x38]
004dd975  c7042400000000            MOV dword ptr [ESP],0x0
004dd97c  50                        PUSH EAX
004dd97d  8bcf                      MOV ECX,EDI
004dd97f  c787a00b000001000000      MOV dword ptr [EDI + 0xba0],0x1
004dd989  e8b2121e00                CALL 0x006bec40
004dd98e  8d55d8                    LEA EDX,[EBP + -0x28]
004dd991  8d4dd0                    LEA ECX,[EBP + -0x30]
004dd994  f30f1000                  MOVSS XMM0,dword ptr [EAX]
004dd998  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004dd9a0  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004dd9a5  f30f104004                MOVSS XMM0,dword ptr [EAX + 0x4]
004dd9aa  f30f5c8740030000          SUBSS XMM0,dword ptr [EDI + 0x340]
004dd9b2  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004dd9b7  e8b4171a00                CALL 0x0067f170
004dd9bc  8db7ec0b0000              LEA ESI,[EDI + 0xbec]
004dd9c2  8b08                      MOV ECX,dword ptr [EAX]
004dd9c4  898fb00b0000              MOV dword ptr [EDI + 0xbb0],ECX
004dd9ca  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004dd9cd  8987b40b0000              MOV dword ptr [EDI + 0xbb4],EAX
004dd9d3  8b0e                      MOV ECX,dword ptr [ESI]
004dd9d5  85c9                      TEST ECX,ECX
004dd9d7  7412                      JZ 0x004dd9eb
004dd9d9  8d45dc                    LEA EAX,[EBP + -0x24]
004dd9dc  8975dc                    MOV dword ptr [EBP + -0x24],ESI
004dd9df  50                        PUSH EAX
004dd9e0  81c1cc030000              ADD ECX,0x3cc
004dd9e6  e82518ffff                CALL 0x004cf210
004dd9eb  c70600000000              MOV dword ptr [ESI],0x0
004dd9f1  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
004dd9f7  85c9                      TEST ECX,ECX
004dd9f9  0f8eed010000              JLE 0x004ddbec
004dd9ff  837de000                  CMP dword ptr [EBP + -0x20],0x0
004dda03  0f8ee3010000              JLE 0x004ddbec
004dda09  be06000000                MOV ESI,0x6
004dda0e  6690                      NOP
004dda10  8bc1                      MOV EAX,ECX
004dda12  99                        CDQ
004dda13  f7fe                      IDIV ESI
004dda15  83fa01                    CMP EDX,0x1
004dda18  0f85bd010000              JNZ 0x004ddbdb
004dda1e  e83d152100                CALL 0x006eef60
004dda23  f30f1097b00b0000          MOVSS XMM2,dword ptr [EDI + 0xbb0]
004dda2b  f30f108fb40b0000          MOVSS XMM1,dword ptr [EDI + 0xbb4]
004dda33  0f28c2                    MOVAPS XMM0,XMM2
004dda36  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
004dda3e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004dda44  f30f59151ca8ba00          MULSS XMM2,dword ptr [0x00baa81c]
004dda4c  6a00                      PUSH 0x0
004dda4e  50                        PUSH EAX
004dda4f  6a00                      PUSH 0x0
004dda51  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
004dda59  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
004dda5e  8d45d0                    LEA EAX,[EBP + -0x30]
004dda61  0f28c1                    MOVAPS XMM0,XMM1
004dda64  f30f590d1ca8ba00          MULSS XMM1,dword ptr [0x00baa81c]
004dda6c  57                        PUSH EDI
004dda6d  f30f590584a7ba00          MULSS XMM0,dword ptr [0x00baa784]
004dda75  50                        PUSH EAX
004dda76  f30f588f40030000          ADDSS XMM1,dword ptr [EDI + 0x340]
004dda7e  8d45c8                    LEA EAX,[EBP + -0x38]
004dda81  f30f1155c8                MOVSS dword ptr [EBP + -0x38],XMM2
004dda86  50                        PUSH EAX
004dda87  6a00                      PUSH 0x0
004dda89  6864030000                PUSH 0x364
004dda8e  f30f1145d4                MOVSS dword ptr [EBP + -0x2c],XMM0
004dda93  f30f114dcc                MOVSS dword ptr [EBP + -0x34],XMM1
004dda98  e873092200                CALL 0x006fe410
004dda9d  8bf0                      MOV ESI,EAX
004dda9f  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004ddaa5  8b8e6c010000              MOV ECX,dword ptr [ESI + 0x16c]
004ddaab  83a668010000fb            AND dword ptr [ESI + 0x168],0xfffffffb
004ddab2  898e6c010000              MOV dword ptr [ESI + 0x16c],ECX
004ddab8  8b08                      MOV ECX,dword ptr [EAX]
004ddaba  894de4                    MOV dword ptr [EBP + -0x1c],ECX
004ddabd  85c9                      TEST ECX,ECX
004ddabf  0f8482000000              JZ 0x004ddb47
004ddac5  83b9c003000000            CMP dword ptr [ECX + 0x3c0],0x0
004ddacc  7579                      JNZ 0x004ddb47
004ddace  8b96bc030000              MOV EDX,dword ptr [ESI + 0x3bc]
004ddad4  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004ddada  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004ddadd  85d2                      TEST EDX,EDX
004ddadf  741d                      JZ 0x004ddafe
004ddae1  8d45dc                    LEA EAX,[EBP + -0x24]
004ddae4  50                        PUSH EAX
004ddae5  8d8acc030000              LEA ECX,[EDX + 0x3cc]
004ddaeb  e82017ffff                CALL 0x004cf210
004ddaf0  8b55e4                    MOV EDX,dword ptr [EBP + -0x1c]
004ddaf3  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004ddaf9  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004ddafc  eb02                      JMP 0x004ddb00
004ddafe  8bd1                      MOV EDX,ECX
004ddb00  8b4ddc                    MOV ECX,dword ptr [EBP + -0x24]
004ddb03  50                        PUSH EAX
004ddb04  8911                      MOV dword ptr [ECX],EDX
004ddb06  8b4de4                    MOV ECX,dword ptr [EBP + -0x1c]
004ddb09  e8e201ffff                CALL 0x004cdcf0
004ddb0e  8b87ec0b0000              MOV EAX,dword ptr [EDI + 0xbec]
004ddb14  05c0030000                ADD EAX,0x3c0
004ddb19  8945e4                    MOV dword ptr [EBP + -0x1c],EAX
004ddb1c  8b08                      MOV ECX,dword ptr [EAX]
004ddb1e  85c9                      TEST ECX,ECX
004ddb20  7415                      JZ 0x004ddb37
004ddb22  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004ddb25  81c1cc030000              ADD ECX,0x3cc
004ddb2b  8d45dc                    LEA EAX,[EBP + -0x24]
004ddb2e  50                        PUSH EAX
004ddb2f  e8dc16ffff                CALL 0x004cf210
004ddb34  8b45e4                    MOV EAX,dword ptr [EBP + -0x1c]
004ddb37  50                        PUSH EAX
004ddb38  8bce                      MOV ECX,ESI
004ddb3a  8930                      MOV dword ptr [EAX],ESI
004ddb3c  e8af01ffff                CALL 0x004cdcf0
004ddb41  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004ddb47  8b08                      MOV ECX,dword ptr [EAX]
004ddb49  85c9                      TEST ECX,ECX
004ddb4b  7418                      JZ 0x004ddb65
004ddb4d  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004ddb50  81c1cc030000              ADD ECX,0x3cc
004ddb56  8d45dc                    LEA EAX,[EBP + -0x24]
004ddb59  50                        PUSH EAX
004ddb5a  e8b116ffff                CALL 0x004cf210
004ddb5f  8d87ec0b0000              LEA EAX,[EDI + 0xbec]
004ddb65  50                        PUSH EAX
004ddb66  8bce                      MOV ECX,ESI
004ddb68  8930                      MOV dword ptr [EAX],ESI
004ddb6a  e88101ffff                CALL 0x004cdcf0
004ddb6f  8b06                      MOV EAX,dword ptr [ESI]
004ddb71  8bce                      MOV ECX,ESI
004ddb73  ff500c                    CALL dword ptr [EAX + 0xc]
004ddb76  f30f109fb00b0000          MOVSS XMM3,dword ptr [EDI + 0xbb0]
004ddb7e  f30f1097b40b0000          MOVSS XMM2,dword ptr [EDI + 0xbb4]
004ddb86  0f28cb                    MOVAPS XMM1,XMM3
004ddb89  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004ddb90  0f28c2                    MOVAPS XMM0,XMM2
004ddb93  0f540540cbba00            ANDPS XMM0,xmmword ptr [0x00bacb40]
004ddb9a  0f2fc8                    COMISS XMM1,XMM0
004ddb9d  0f57c0                    XORPS XMM0,XMM0
004ddba0  760f                      JBE 0x004ddbb1
004ddba2  33c9                      XOR ECX,ECX
004ddba4  b802000000                MOV EAX,0x2
004ddba9  0f2fc3                    COMISS XMM0,XMM3
004ddbac  0f47c1                    CMOVA EAX,ECX
004ddbaf  eb0f                      JMP 0x004ddbc0
004ddbb1  33c0                      XOR EAX,EAX
004ddbb3  0f2fc2                    COMISS XMM0,XMM2
004ddbb6  0f96c0                    SETBE AL
004ddbb9  8d044501000000            LEA EAX,[EAX*0x2 + 0x1]
004ddbc0  8986c00b0000              MOV dword ptr [ESI + 0xbc0],EAX
004ddbc6  c786c40b00001e000000      MOV dword ptr [ESI + 0xbc4],0x1e
004ddbd0  be06000000                MOV ESI,0x6
004ddbd5  8b8fa00b0000              MOV ECX,dword ptr [EDI + 0xba0]
004ddbdb  41                        INC ECX
004ddbdc  836de001                  SUB dword ptr [EBP + -0x20],0x1
004ddbe0  898fa00b0000              MOV dword ptr [EDI + 0xba0],ECX
004ddbe6  0f8524feffff              JNZ 0x004dda10
004ddbec  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004ddbf0  740d                      JZ 0x004ddbff
004ddbf2  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004ddbf9  0f8513020000              JNZ 0x004dde12
004ddbff  c787a00b00005a000000      MOV dword ptr [EDI + 0xba0],0x5a
004ddc09  e9fa010000                JMP 0x004dde08
004ddc0e  6a00                      PUSH 0x0
004ddc10  8d4f48                    LEA ECX,[EDI + 0x48]
004ddc13  6854bcb100                PUSH 0xb1bc54
004ddc18  e863c7f2ff                CALL 0x0040a380
004ddc1d  29b7a00b0000              SUB dword ptr [EDI + 0xba0],ESI
004ddc23  83bfa00b000000            CMP dword ptr [EDI + 0xba0],0x0
004ddc2a  0f8fe2010000              JG 0x004dde12
004ddc30  a17816c700                MOV EAX,[0x00c71678]
004ddc35  6a00                      PUSH 0x0
004ddc37  6a00                      PUSH 0x0
004ddc39  6aff                      PUSH -0x1
004ddc3b  8b8800830100              MOV ECX,dword ptr [EAX + 0x18300]
004ddc41  8d45c0                    LEA EAX,[EBP + -0x40]
004ddc44  6aff                      PUSH -0x1
004ddc46  6864030000                PUSH 0x364
004ddc4b  81c118120000              ADD ECX,0x1218
004ddc51  50                        PUSH EAX
004ddc52  e809d3f3ff                CALL 0x0041af60
004ddc57  837dcc08                  CMP dword ptr [EBP + -0x34],0x8
004ddc5b  0f92c0                    SETC AL
004ddc5e  807dc000                  CMP byte ptr [EBP + -0x40],0x0
004ddc62  8845ef                    MOV byte ptr [EBP + -0x11],AL
004ddc65  7522                      JNZ 0x004ddc89
004ddc67  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004ddc6e  b101                      MOV CL,0x1
004ddc70  8b55c4                    MOV EDX,dword ptr [EBP + -0x3c]
004ddc73  6a00                      PUSH 0x0
004ddc75  6a00                      PUSH 0x0
004ddc77  e8346c5800                CALL 0x00a648b0
004ddc7c  8a45ef                    MOV AL,byte ptr [EBP + -0x11]
004ddc7f  83c408                    ADD ESP,0x8
004ddc82  c745fcffffffff            MOV dword ptr [EBP + -0x4],0xffffffff
004ddc89  84c0                      TEST AL,AL
004ddc8b  0f8481010000              JZ 0x004dde12
004ddc91  6a00                      PUSH 0x0
004ddc93  6854ddb100                PUSH 0xb1dd54
004ddc98  8d4f48                    LEA ECX,[EDI + 0x48]
004ddc9b  c787a00b000000000000      MOV dword ptr [EDI + 0xba0],0x0
004ddca5  c787640b000008000000      MOV dword ptr [EDI + 0xb64],0x8
004ddcaf  e8ccc6f2ff                CALL 0x0040a380
004ddcb4  e959010000                JMP 0x004dde12
004ddcb9  8b873c030000              MOV EAX,dword ptr [EDI + 0x33c]
004ddcbf  898734030000              MOV dword ptr [EDI + 0x334],EAX
004ddcc5  8b8740030000              MOV EAX,dword ptr [EDI + 0x340]
004ddccb  898738030000              MOV dword ptr [EDI + 0x338],EAX
004ddcd1  33c0                      XOR EAX,EAX
004ddcd3  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004ddcd6  66660f1f840000000000      NOP dword ptr [EAX + EAX*0x1]
004ddce0  660f6ec0                  MOVD XMM0,EAX
004ddce4  f30fe6c0                  CVTDQ2PD XMM0,XMM0
004ddce8  c1e81f                    SHR EAX,0x1f
004ddceb  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004ddcf4  660f5ac0                  CVTPD2PS XMM0,XMM0
004ddcf8  f30f590510a9ba00          MULSS XMM0,dword ptr [0x00baa910]
004ddd00  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004ddd08  f30f1145e0                MOVSS dword ptr [EBP + -0x20],XMM0
004ddd0d  e82ef8f3ff                CALL 0x0041d540
004ddd12  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004ddd17  f30f1045e0                MOVSS XMM0,dword ptr [EBP + -0x20]
004ddd1c  e8fff7f3ff                CALL 0x0041d520
004ddd21  f30f105de4                MOVSS XMM3,dword ptr [EBP + -0x1c]
004ddd26  0f28c8                    MOVAPS XMM1,XMM0
004ddd29  f30f5905d0a9ba00          MULSS XMM0,dword ptr [0x00baa9d0]
004ddd31  0f28d3                    MOVAPS XMM2,XMM3
004ddd34  f30f5915d0a9ba00          MULSS XMM2,dword ptr [0x00baa9d0]
004ddd3c  0f57e4                    XORPS XMM4,XMM4
004ddd3f  f30f59cc                  MULSS XMM1,XMM4
004ddd43  f30f59dc                  MULSS XMM3,XMM4
004ddd47  f30f5cd1                  SUBSS XMM2,XMM1
004ddd4b  f30f58c3                  ADDSS XMM0,XMM3
004ddd4f  f30f58973c030000          ADDSS XMM2,dword ptr [EDI + 0x33c]
004ddd57  f30f588740030000          ADDSS XMM0,dword ptr [EDI + 0x340]
004ddd5f  f30f1155c8                MOVSS dword ptr [EBP + -0x38],XMM2
004ddd64  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
004ddd69  e8f2112100                CALL 0x006eef60
004ddd6e  8b0d7816c700              MOV ECX,dword ptr [0x00c71678]
004ddd74  6a00                      PUSH 0x0
004ddd76  50                        PUSH EAX
004ddd77  6a00                      PUSH 0x0
004ddd79  57                        PUSH EDI
004ddd7a  6840b6c700                PUSH 0xc7b640
004ddd7f  8d45c8                    LEA EAX,[EBP + -0x38]
004ddd82  50                        PUSH EAX
004ddd83  688d000000                PUSH 0x8d
004ddd88  68e8030000                PUSH 0x3e8
004ddd8d  e87e062200                CALL 0x006fe410
004ddd92  8bf0                      MOV ESI,EAX
004ddd94  8b8ebc030000              MOV ECX,dword ptr [ESI + 0x3bc]
004ddd9a  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004ddda0  85c9                      TEST ECX,ECX
004ddda2  7418                      JZ 0x004dddbc
004ddda4  8945e0                    MOV dword ptr [EBP + -0x20],EAX
004ddda7  81c1cc030000              ADD ECX,0x3cc
004dddad  8d45e0                    LEA EAX,[EBP + -0x20]
004dddb0  50                        PUSH EAX
004dddb1  e85a14ffff                CALL 0x004cf210
004dddb6  8d86bc030000              LEA EAX,[ESI + 0x3bc]
004dddbc  50                        PUSH EAX
004dddbd  8bcf                      MOV ECX,EDI
004dddbf  8938                      MOV dword ptr [EAX],EDI
004dddc1  e82afffeff                CALL 0x004cdcf0
004dddc6  8b06                      MOV EAX,dword ptr [ESI]
004dddc8  8bce                      MOV ECX,ESI
004dddca  c7865c0400003c000000      MOV dword ptr [ESI + 0x45c],0x3c
004dddd4  c786600400003c000000      MOV dword ptr [ESI + 0x460],0x3c
004dddde  ff500c                    CALL dword ptr [EAX + 0xc]
004ddde1  8b45dc                    MOV EAX,dword ptr [EBP + -0x24]
004ddde4  40                        INC EAX
004ddde5  8945dc                    MOV dword ptr [EBP + -0x24],EAX
004ddde8  83f808                    CMP EAX,0x8
004dddeb  0f82effeffff              JC 0x004ddce0
004dddf1  e86a112100                CALL 0x006eef60
004dddf6  33d2                      XOR EDX,EDX
004dddf8  b91e000000                MOV ECX,0x1e
004dddfd  f7f1                      DIV ECX
004dddff  83c20f                    ADD EDX,0xf
004dde02  8997a00b0000              MOV dword ptr [EDI + 0xba0],EDX
004dde08  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004dde12  8b55e8                    MOV EDX,dword ptr [EBP + -0x18]
004dde15  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004dde1d  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004dde25  f30f5cc2                  SUBSS XMM0,XMM2
004dde29  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
004dde31  f30f5ec2                  DIVSS XMM0,XMM2
004dde35  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004dde3d  f30f2cc8                  CVTTSS2SI ECX,XMM0
004dde41  0f28c3                    MOVAPS XMM0,XMM3
004dde44  f30f5c0500aaba00          SUBSS XMM0,dword ptr [0x00baaa00]
004dde4c  f30f5ec2                  DIVSS XMM0,XMM2
004dde50  f30f5805d0a2ba00          ADDSS XMM0,dword ptr [0x00baa2d0]
004dde58  f30f2cc0                  CVTTSS2SI EAX,XMM0
004dde5c  85c9                      TEST ECX,ECX
004dde5e  785a                      JS 0x004ddeba
004dde60  8b520c                    MOV EDX,dword ptr [EDX + 0xc]
004dde63  3bca                      CMP ECX,EDX
004dde65  7d53                      JGE 0x004ddeba
004dde67  85c0                      TEST EAX,EAX
004dde69  784f                      JS 0x004ddeba
004dde6b  8b75e8                    MOV ESI,dword ptr [EBP + -0x18]
004dde6e  3b4610                    CMP EAX,dword ptr [ESI + 0x10]
004dde71  7d47                      JGE 0x004ddeba
004dde73  0fafc2                    IMUL EAX,EDX
004dde76  8d3408                    LEA ESI,[EAX + ECX*0x1]
004dde79  81febf010000              CMP ESI,0x1bf
004dde7f  7739                      JA 0x004ddeba
004dde81  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
004dde84  c745dce8030000            MOV dword ptr [EBP + -0x24],0x3e8
004dde8b  8b8cb06c070000            MOV ECX,dword ptr [EAX + ESI*0x4 + 0x76c]
004dde92  8bc1                      MOV EAX,ECX
004dde94  99                        CDQ
004dde95  f77ddc                    IDIV dword ptr [EBP + -0x24]
004dde98  81fa84030000              CMP EDX,0x384
004dde9e  7d1a                      JGE 0x004ddeba
004ddea0  8b45e8                    MOV EAX,dword ptr [EBP + -0x18]
004ddea3  2bca                      SUB ECX,EDX
004ddea5  81c184030000              ADD ECX,0x384
004ddeab  898cb06c070000            MOV dword ptr [EAX + ESI*0x4 + 0x76c],ECX
004ddeb2  f30f109f40030000          MOVSS XMM3,dword ptr [EDI + 0x340]
004ddeba  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004ddec2  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004ddeca  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004dded2  f30f5cc3                  SUBSS XMM0,XMM3
004dded6  f30f118f60030000          MOVSS dword ptr [EDI + 0x360],XMM1
004ddede  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004ddee6  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004ddee9  64890d00000000            MOV dword ptr FS:[0x0],ECX
004ddef0  59                        POP ECX
004ddef1  5f                        POP EDI
004ddef2  5e                        POP ESI
004ddef3  8be5                      MOV ESP,EBP
004ddef5  5d                        POP EBP
004ddef6  8be3                      MOV ESP,EBX
004ddef8  5b                        POP EBX
004ddef9  c3                        RET
