; J460 NPC AI 0x004dca90 AI_004dca90
; types=860
; identities=860.0.0
; entry=004dca90
004dca90  53                        PUSH EBX
004dca91  8bdc                      MOV EBX,ESP
004dca93  83ec08                    SUB ESP,0x8
004dca96  83e4f8                    AND ESP,0xfffffff8
004dca99  83c404                    ADD ESP,0x4
004dca9c  55                        PUSH EBP
004dca9d  8b6b04                    MOV EBP,dword ptr [EBX + 0x4]
004dcaa0  896c2404                  MOV dword ptr [ESP + 0x4],EBP
004dcaa4  8bec                      MOV EBP,ESP
004dcaa6  6aff                      PUSH -0x1
004dcaa8  683d3aaf00                PUSH 0xaf3a3d
004dcaad  64a100000000              MOV EAX,FS:[0x0]
004dcab3  50                        PUSH EAX
004dcab4  53                        PUSH EBX
004dcab5  83ec50                    SUB ESP,0x50
004dcab8  56                        PUSH ESI
004dcab9  57                        PUSH EDI
004dcaba  a1b493bf00                MOV EAX,[0x00bf93b4]
004dcabf  33c5                      XOR EAX,EBP
004dcac1  50                        PUSH EAX
004dcac2  8d45f4                    LEA EAX,[EBP + -0xc]
004dcac5  64a300000000              MOV FS:[0x0],EAX
004dcacb  8bf9                      MOV EDI,ECX
004dcacd  a17816c700                MOV EAX,[0x00c71678]
004dcad2  8b8000830100              MOV EAX,dword ptr [EAX + 0x18300]
004dcad8  8945d4                    MOV dword ptr [EBP + -0x2c],EAX
004dcadb  32c0                      XOR AL,AL
004dcadd  8845ef                    MOV byte ptr [EBP + -0x11],AL
004dcae0  8b87640b0000              MOV EAX,dword ptr [EDI + 0xb64]
004dcae6  83f807                    CMP EAX,0x7
004dcae9  0f87c60c0000              JA 0x004dd7b5
004dcaef  ff2485ccd74d00            JMP dword ptr [EAX*0x4 + 0x4dd7cc]
004dcaf6  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004dcb00  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004dcb0a  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004dcb0d  64890d00000000            MOV dword ptr FS:[0x0],ECX
004dcb14  59                        POP ECX
004dcb15  5f                        POP EDI
004dcb16  5e                        POP ESI
004dcb17  8be5                      MOV ESP,EBP
004dcb19  5d                        POP EBP
004dcb1a  8be3                      MOV ESP,EBX
004dcb1c  5b                        POP EBX
004dcb1d  c3                        RET
004dcb1e  f30f10876c030000          MOVSS XMM0,dword ptr [EDI + 0x36c]
004dcb26  f30f590538a4ba00          MULSS XMM0,dword ptr [0x00baa438]
004dcb2e  f30f11876c030000          MOVSS dword ptr [EDI + 0x36c],XMM0
004dcb36  e825242100                CALL 0x006eef60
004dcb3b  33d2                      XOR EDX,EDX
004dcb3d  b95a000000                MOV ECX,0x5a
004dcb42  f7f1                      DIV ECX
004dcb44  85d2                      TEST EDX,EDX
004dcb46  7541                      JNZ 0x004dcb89
004dcb48  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004dcb4e  8d4dd0                    LEA ECX,[EBP + -0x30]
004dcb51  c745d041040000            MOV dword ptr [EBP + -0x30],0x441
004dcb58  e8239c4700                CALL 0x00956780
004dcb5d  83ec08                    SUB ESP,0x8
004dcb60  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004dcb66  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004dcb6e  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dcb75  6a00                      PUSH 0x0
004dcb77  6a3c                      PUSH 0x3c
004dcb79  51                        PUSH ECX
004dcb7a  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dcb81  ff75d0                    PUSH dword ptr [EBP + -0x30]
004dcb84  e8a7104500                CALL 0x0092dc30
004dcb89  f30f109760030000          MOVSS XMM2,dword ptr [EDI + 0x360]
004dcb91  f30f108f64030000          MOVSS XMM1,dword ptr [EDI + 0x364]
004dcb99  0f28c2                    MOVAPS XMM0,XMM2
004dcb9c  f30f59c2                  MULSS XMM0,XMM2
004dcba0  f30f59c9                  MULSS XMM1,XMM1
004dcba4  f30f58c1                  ADDSS XMM0,XMM1
004dcba8  e8a38ef5ff                CALL 0x00435a50
004dcbad  0f57db                    XORPS XMM3,XMM3
004dcbb0  0f28d0                    MOVAPS XMM2,XMM0
004dcbb3  0f2f9f60030000            COMISS XMM3,dword ptr [EDI + 0x360]
004dcbba  f30f58d2                  ADDSS XMM2,XMM2
004dcbbe  7608                      JBE 0x004dcbc8
004dcbc0  f30f591550adba00          MULSS XMM2,dword ptr [0x00baad50]
004dcbc8  f30f5897b00b0000          ADDSS XMM2,dword ptr [EDI + 0xbb0]
004dcbd0  f30f102530abba00          MOVSS XMM4,dword ptr [0x00baab30]
004dcbd8  0f28ca                    MOVAPS XMM1,XMM2
004dcbdb  0f540d40cbba00            ANDPS XMM1,xmmword ptr [0x00bacb40]
004dcbe2  0f2fcc                    COMISS XMM1,XMM4
004dcbe5  7619                      JBE 0x004dcc00
004dcbe7  0f28cc                    MOVAPS XMM1,XMM4
004dcbea  0f28c2                    MOVAPS XMM0,XMM2
004dcbed  e82ed1fbff                CALL 0x00499d20
004dcbf2  f30f102530abba00          MOVSS XMM4,dword ptr [0x00baab30]
004dcbfa  0f28d0                    MOVAPS XMM2,XMM0
004dcbfd  0f57db                    XORPS XMM3,XMM3
004dcc00  0f2f1578aaba00            COMISS XMM2,dword ptr [0x00baaa78]
004dcc07  7606                      JBE 0x004dcc0f
004dcc09  f30f5cd4                  SUBSS XMM2,XMM4
004dcc0d  eb11                      JMP 0x004dcc20
004dcc0f  f30f10057caeba00          MOVSS XMM0,dword ptr [0x00baae7c]
004dcc17  0f2fc2                    COMISS XMM0,XMM2
004dcc1a  7604                      JBE 0x004dcc20
004dcc1c  f30f58d4                  ADDSS XMM2,XMM4
004dcc20  0f2fda                    COMISS XMM3,XMM2
004dcc23  f30f1197b00b0000          MOVSS dword ptr [EDI + 0xbb0],XMM2
004dcc2b  7604                      JBE 0x004dcc31
004dcc2d  f30f58d4                  ADDSS XMM2,XMM4
004dcc31  f30f591534a8ba00          MULSS XMM2,dword ptr [0x00baa834]
004dcc39  83ec08                    SUB ESP,0x8
004dcc3c  f30f5ed4                  DIVSS XMM2,XMM4
004dcc40  f30f1155c8                MOVSS dword ptr [EBP + -0x38],XMM2
004dcc45  d945c8                    FLD dword ptr [EBP + -0x38]
004dcc48  dd1c24                    FSTP qword ptr [ESP]
004dcc4b  e8c73c6100                CALL 0x00af0917
004dcc50  83c408                    ADD ESP,0x8
004dcc53  8d4f48                    LEA ECX,[EDI + 0x48]
004dcc56  d95dd0                    FSTP dword ptr [EBP + -0x30]
004dcc59  6a01                      PUSH 0x1
004dcc5b  6854bcb100                PUSH 0xb1bc54
004dcc60  e86bd9f2ff                CALL 0x0040a5d0
004dcc65  84c0                      TEST AL,AL
004dcc67  7446                      JZ 0x004dccaf
004dcc69  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004dcc6c  85c0                      TEST EAX,EAX
004dcc6e  743f                      JZ 0x004dccaf
004dcc70  f30f2c55d0                CVTTSS2SI EDX,dword ptr [EBP + -0x30]
004dcc75  b8abaaaa2a                MOV EAX,0x2aaaaaab
004dcc7a  8d4f78                    LEA ECX,[EDI + 0x78]
004dcc7d  f7ea                      IMUL EDX
004dcc7f  d1fa                      SAR EDX,0x1
004dcc81  8bc2                      MOV EAX,EDX
004dcc83  c1e81f                    SHR EAX,0x1f
004dcc86  03c2                      ADD EAX,EDX
004dcc88  f30f2c55d0                CVTTSS2SI EDX,dword ptr [EBP + -0x30]
004dcc8d  8d0440                    LEA EAX,[EAX + EAX*0x2]
004dcc90  c1e002                    SHL EAX,0x2
004dcc93  2bd0                      SUB EDX,EAX
004dcc95  660f6eca                  MOVD XMM1,EDX
004dcc99  0f5bc9                    CVTDQ2PS XMM1,XMM1
004dcc9c  e85fc1f2ff                CALL 0x00408e00
004dcca1  8b477c                    MOV EAX,dword ptr [EDI + 0x7c]
004dcca4  85c0                      TEST EAX,EAX
004dcca6  7407                      JZ 0x004dccaf
004dcca8  c6878c00000000            MOV byte ptr [EDI + 0x8c],0x0
004dccaf  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004dccb5  25000a0001                AND EAX,0x1000a00
004dccba  83c800                    OR EAX,0x0
004dccbd  0f852e010000              JNZ 0x004dcdf1
004dccc3  8bcf                      MOV ECX,EDI
004dccc5  e8761b1e00                CALL 0x006be840
004dccca  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004dccd2  f30f108740030000          MOVSS XMM0,dword ptr [EDI + 0x340]
004dccda  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004dcce2  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004dccea  f30f59c0                  MULSS XMM0,XMM0
004dccee  f30f59c9                  MULSS XMM1,XMM1
004dccf2  f30f58c1                  ADDSS XMM0,XMM1
004dccf6  e8558df5ff                CALL 0x00435a50
004dccfb  0f2f05d0a9ba00            COMISS XMM0,dword ptr [0x00baa9d0]
004dcd02  0f86df000000              JBE 0x004dcde7
004dcd08  f30f100d7cabba00          MOVSS XMM1,dword ptr [0x00baab7c]
004dcd10  0f2fc8                    COMISS XMM1,XMM0
004dcd13  0f86ce000000              JBE 0x004dcde7
004dcd19  ff87c00b0000              INC dword ptr [EDI + 0xbc0]
004dcd1f  83bfc00b00001e            CMP dword ptr [EDI + 0xbc0],0x1e
004dcd26  0f8ec5000000              JLE 0x004dcdf1
004dcd2c  e82f222100                CALL 0x006eef60
004dcd31  33d2                      XOR EDX,EDX
004dcd33  b91e000000                MOV ECX,0x1e
004dcd38  f7f1                      DIV ECX
004dcd3a  85d2                      TEST EDX,EDX
004dcd3c  0f85af000000              JNZ 0x004dcdf1
004dcd42  8bcf                      MOV ECX,EDI
004dcd44  e8f71a1e00                CALL 0x006be840
004dcd49  8d4db4                    LEA ECX,[EBP + -0x4c]
004dcd4c  f30f10803c030000          MOVSS XMM0,dword ptr [EAX + 0x33c]
004dcd54  f30f108840030000          MOVSS XMM1,dword ptr [EAX + 0x340]
004dcd5c  8d45bc                    LEA EAX,[EBP + -0x44]
004dcd5f  f30f5c873c030000          SUBSS XMM0,dword ptr [EDI + 0x33c]
004dcd67  f30f5c8f40030000          SUBSS XMM1,dword ptr [EDI + 0x340]
004dcd6f  50                        PUSH EAX
004dcd70  f30f1145b4                MOVSS dword ptr [EBP + -0x4c],XMM0
004dcd75  f30f114db8                MOVSS dword ptr [EBP + -0x48],XMM1
004dcd7a  e8b1325300                CALL 0x00a10030
004dcd7f  8b359c16c700              MOV ESI,dword ptr [0x00c7169c]
004dcd85  c745d042040000            MOV dword ptr [EBP + -0x30],0x442
004dcd8c  8b08                      MOV ECX,dword ptr [EAX]
004dcd8e  898f34030000              MOV dword ptr [EDI + 0x334],ECX
004dcd94  8d4dd0                    LEA ECX,[EBP + -0x30]
004dcd97  8b4004                    MOV EAX,dword ptr [EAX + 0x4]
004dcd9a  898738030000              MOV dword ptr [EDI + 0x338],EAX
004dcda0  c787640b000006000000      MOV dword ptr [EDI + 0xb64],0x6
004dcdaa  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004dcdb4  e8c7994700                CALL 0x00956780
004dcdb9  83ec08                    SUB ESP,0x8
004dcdbc  8d8e24a30200              LEA ECX,[ESI + 0x2a324]
004dcdc2  c744240400000000          MOV dword ptr [ESP + 0x4],0x0
004dcdca  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dcdd1  6a00                      PUSH 0x0
004dcdd3  6a02                      PUSH 0x2
004dcdd5  51                        PUSH ECX
004dcdd6  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dcddd  ff75d0                    PUSH dword ptr [EBP + -0x30]
004dcde0  e84b0e4500                CALL 0x0092dc30
004dcde5  eb0a                      JMP 0x004dcdf1
004dcde7  c787c00b000000000000      MOV dword ptr [EDI + 0xbc0],0x0
004dcdf1  80bf9001000000            CMP byte ptr [EDI + 0x190],0x0
004dcdf8  0f84fc030000              JZ 0x004dd1fa
004dcdfe  f30f10b798010000          MOVSS XMM6,dword ptr [EDI + 0x198]
004dce06  f30f10a794010000          MOVSS XMM4,dword ptr [EDI + 0x194]
004dce0e  0f28ce                    MOVAPS XMM1,XMM6
004dce11  f30f109f9c010000          MOVSS XMM3,dword ptr [EDI + 0x19c]
004dce19  0f28c4                    MOVAPS XMM0,XMM4
004dce1c  f30f1097a0010000          MOVSS XMM2,dword ptr [EDI + 0x1a0]
004dce24  0f28fb                    MOVAPS XMM7,XMM3
004dce27  f30f593d00a5ba00          MULSS XMM7,dword ptr [0x00baa500]
004dce2f  0f28ea                    MOVAPS XMM5,XMM2
004dce32  f30f592d00a5ba00          MULSS XMM5,dword ptr [0x00baa500]
004dce3a  f30f59ca                  MULSS XMM1,XMM2
004dce3e  f30f59c3                  MULSS XMM0,XMM3
004dce42  f30f58c8                  ADDSS XMM1,XMM0
004dce46  f30f59f9                  MULSS XMM7,XMM1
004dce4a  f30f59e9                  MULSS XMM5,XMM1
004dce4e  f30f5ce7                  SUBSS XMM4,XMM7
004dce52  f30f5cf5                  SUBSS XMM6,XMM5
004dce56  f30f11a760030000          MOVSS dword ptr [EDI + 0x360],XMM4
004dce5e  f30f11b764030000          MOVSS dword ptr [EDI + 0x364],XMM6
004dce66  e98f030000                JMP 0x004dd1fa
004dce6b  6a00                      PUSH 0x0
004dce6d  c7876c030000cdcc4c3f      MOV dword ptr [EDI + 0x36c],0x3f4ccccd
004dce77  8d4f48                    LEA ECX,[EDI + 0x48]
004dce7a  6870dab100                PUSH 0xb1da70
004dce7f  c787b00b000000000000      MOV dword ptr [EDI + 0xbb0],0x0
004dce89  e8f2d4f2ff                CALL 0x0040a380
004dce8e  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004dce92  7438                      JZ 0x004dcecc
004dce94  68b004b600                PUSH 0xb604b0
004dce99  8d4f78                    LEA ECX,[EDI + 0x78]
004dce9c  e82fdff2ff                CALL 0x0040add0
004dcea1  84c0                      TEST AL,AL
004dcea3  7414                      JZ 0x004dceb9
004dcea5  c7875c01000000000000      MOV dword ptr [EDI + 0x15c],0x0
004dceaf  c7878801000000000000      MOV dword ptr [EDI + 0x188],0x0
004dceb9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004dcebd  740d                      JZ 0x004dcecc
004dcebf  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004dcec6  0f85e9080000              JNZ 0x004dd7b5
004dcecc  f30f100540b6c700          MOVSS XMM0,dword ptr [0x00c7b640]
004dced4  8bcf                      MOV ECX,EDI
004dced6  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004dcede  f30f100544b6c700          MOVSS XMM0,dword ptr [0x00c7b644]
004dcee6  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004dceee  e84d191e00                CALL 0x006be840
004dcef3  f30f108f34030000          MOVSS XMM1,dword ptr [EDI + 0x334]
004dcefb  33f6                      XOR ESI,ESI
004dcefd  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004dcf05  f30f590d00aaba00          MULSS XMM1,dword ptr [0x00baaa00]
004dcf0d  f30f590500aaba00          MULSS XMM0,dword ptr [0x00baaa00]
004dcf15  f30f10983c030000          MOVSS XMM3,dword ptr [EAX + 0x33c]
004dcf1d  f30f10a040030000          MOVSS XMM4,dword ptr [EAX + 0x340]
004dcf25  f30f58cb                  ADDSS XMM1,XMM3
004dcf29  f30f58c4                  ADDSS XMM0,XMM4
004dcf2d  f30f115de0                MOVSS dword ptr [EBP + -0x20],XMM3
004dcf32  f30f1165e4                MOVSS dword ptr [EBP + -0x1c],XMM4
004dcf37  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
004dcf3c  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004dcf41  f30f114db4                MOVSS dword ptr [EBP + -0x4c],XMM1
004dcf46  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004dcf4b  0f1f440000                NOP dword ptr [EAX + EAX*0x1]
004dcf50  51                        PUSH ECX
004dcf51  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004dcf54  8d45b4                    LEA EAX,[EBP + -0x4c]
004dcf57  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dcf5e  50                        PUSH EAX
004dcf5f  e8fc633300                CALL 0x00813360
004dcf64  84c0                      TEST AL,AL
004dcf66  741e                      JZ 0x004dcf86
004dcf68  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004dcf70  8d45b4                    LEA EAX,[EBP + -0x4c]
004dcf73  83ec08                    SUB ESP,0x8
004dcf76  8bcf                      MOV ECX,EDI
004dcf78  50                        PUSH EAX
004dcf79  e8c2c71d00                CALL 0x006b9740
004dcf7e  84c0                      TEST AL,AL
004dcf80  0f84ed000000              JZ 0x004dd073
004dcf86  f30f108734030000          MOVSS XMM0,dword ptr [EDI + 0x334]
004dcf8e  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004dcf93  f30f108738030000          MOVSS XMM0,dword ptr [EDI + 0x338]
004dcf9b  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004dcfa0  e8bb1f2100                CALL 0x006eef60
004dcfa5  0f57c0                    XORPS XMM0,XMM0
004dcfa8  f20f2ac0                  CVTSI2SD XMM0,EAX
004dcfac  c1e81f                    SHR EAX,0x1f
004dcfaf  f20f5804c500cbba00        ADDSD XMM0,qword ptr [EAX*0x8 + 0xbacb00]
004dcfb8  660f5ac0                  CVTPD2PS XMM0,XMM0
004dcfbc  f30f5905f49fba00          MULSS XMM0,dword ptr [0x00ba9ff4]
004dcfc4  f30f5c05d0a2ba00          SUBSS XMM0,dword ptr [0x00baa2d0]
004dcfcc  83fe03                    CMP ESI,0x3
004dcfcf  730a                      JNC 0x004dcfdb
004dcfd1  f30f5905b4a9ba00          MULSS XMM0,dword ptr [0x00baa9b4]
004dcfd9  eb15                      JMP 0x004dcff0
004dcfdb  f30f590578aaba00          MULSS XMM0,dword ptr [0x00baaa78]
004dcfe3  83fe07                    CMP ESI,0x7
004dcfe6  7208                      JC 0x004dcff0
004dcfe8  f30f580578aaba00          ADDSS XMM0,dword ptr [0x00baaa78]
004dcff0  f30f590588a0ba00          MULSS XMM0,dword ptr [0x00baa088]
004dcff8  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004dcffd  e83e05f4ff                CALL 0x0041d540
004dd002  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
004dd007  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
004dd00c  e80f05f4ff                CALL 0x0041d520
004dd011  0f28d0                    MOVAPS XMM2,XMM0
004dd014  46                        INC ESI
004dd015  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
004dd01a  0f28ca                    MOVAPS XMM1,XMM2
004dd01d  f30f5955d8                MULSS XMM2,dword ptr [EBP + -0x28]
004dd022  0f28d8                    MOVAPS XMM3,XMM0
004dd025  f30f595dd8                MULSS XMM3,dword ptr [EBP + -0x28]
004dd02a  f30f594ddc                MULSS XMM1,dword ptr [EBP + -0x24]
004dd02f  f30f5945dc                MULSS XMM0,dword ptr [EBP + -0x24]
004dd034  f30f5cd9                  SUBSS XMM3,XMM1
004dd038  f30f58d0                  ADDSS XMM2,XMM0
004dd03c  f30f591d00aaba00          MULSS XMM3,dword ptr [0x00baaa00]
004dd044  f30f591500aaba00          MULSS XMM2,dword ptr [0x00baaa00]
004dd04c  f30f585de0                ADDSS XMM3,dword ptr [EBP + -0x20]
004dd051  f30f5855e4                ADDSS XMM2,dword ptr [EBP + -0x1c]
004dd056  f30f115dd0                MOVSS dword ptr [EBP + -0x30],XMM3
004dd05b  f30f115db4                MOVSS dword ptr [EBP + -0x4c],XMM3
004dd060  f30f1155d8                MOVSS dword ptr [EBP + -0x28],XMM2
004dd065  f30f1155b8                MOVSS dword ptr [EBP + -0x48],XMM2
004dd06a  83fe0a                    CMP ESI,0xa
004dd06d  0f82ddfeffff              JC 0x004dcf50
004dd073  51                        PUSH ECX
004dd074  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004dd077  8d45b4                    LEA EAX,[EBP + -0x4c]
004dd07a  c704240000803f            MOV dword ptr [ESP],0x3f800000
004dd081  50                        PUSH EAX
004dd082  e8d9623300                CALL 0x00813360
004dd087  84c0                      TEST AL,AL
004dd089  0f8426070000              JZ 0x004dd7b5
004dd08f  f30f101504a9ba00          MOVSS XMM2,dword ptr [0x00baa904]
004dd097  8d45b4                    LEA EAX,[EBP + -0x4c]
004dd09a  83ec08                    SUB ESP,0x8
004dd09d  8bcf                      MOV ECX,EDI
004dd09f  50                        PUSH EAX
004dd0a0  e89bc61d00                CALL 0x006b9740
004dd0a5  84c0                      TEST AL,AL
004dd0a7  0f8508070000              JNZ 0x004dd7b5
004dd0ad  f30f104dd0                MOVSS XMM1,dword ptr [EBP + -0x30]
004dd0b2  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
004dd0b7  f30f118f3c030000          MOVSS dword ptr [EDI + 0x33c],XMM1
004dd0bf  f30f118740030000          MOVSS dword ptr [EDI + 0x340],XMM0
004dd0c7  c787640b000007000000      MOV dword ptr [EDI + 0xb64],0x7
004dd0d1  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004dd0d4  64890d00000000            MOV dword ptr FS:[0x0],ECX
004dd0db  59                        POP ECX
004dd0dc  5f                        POP EDI
004dd0dd  5e                        POP ESI
004dd0de  8be5                      MOV ESP,EBP
004dd0e0  5d                        POP EBP
004dd0e1  8be3                      MOV ESP,EBX
004dd0e3  5b                        POP EBX
004dd0e4  c3                        RET
004dd0e5  6a00                      PUSH 0x0
004dd0e7  8d4f48                    LEA ECX,[EDI + 0x48]
004dd0ea  68dc04b600                PUSH 0xb604dc
004dd0ef  e88cd2f2ff                CALL 0x0040a380
004dd0f4  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004dd0f8  0f84ce000000              JZ 0x004dd1cc
004dd0fe  68b004b600                PUSH 0xb604b0
004dd103  8d4f78                    LEA ECX,[EDI + 0x78]
004dd106  e8c5dcf2ff                CALL 0x0040add0
004dd10b  84c0                      TEST AL,AL
004dd10d  0f8494000000              JZ 0x004dd1a7
004dd113  8b8730030000              MOV EAX,dword ptr [EDI + 0x330]
004dd119  c645ef01                  MOV byte ptr [EBP + -0x11],0x1
004dd11d  8b4024                    MOV EAX,dword ptr [EAX + 0x24]
004dd120  89875c010000              MOV dword ptr [EDI + 0x15c],EAX
004dd126  c7878801000004000000      MOV dword ptr [EDI + 0x188],0x4
004dd130  c7876c030000ec51783f      MOV dword ptr [EDI + 0x36c],0x3f7851ec
004dd13a  f30f108f60030000          MOVSS XMM1,dword ptr [EDI + 0x360]
004dd142  f30f109764030000          MOVSS XMM2,dword ptr [EDI + 0x364]
004dd14a  0f28c1                    MOVAPS XMM0,XMM1
004dd14d  f30f59c1                  MULSS XMM0,XMM1
004dd151  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
004dd156  0f28ca                    MOVAPS XMM1,XMM2
004dd159  f30f59ca                  MULSS XMM1,XMM2
004dd15d  f30f1155cc                MOVSS dword ptr [EBP + -0x34],XMM2
004dd162  f30f58c1                  ADDSS XMM0,XMM1
004dd166  e8e588f5ff                CALL 0x00435a50
004dd16b  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004dd172  8a45ef                    MOV AL,byte ptr [EBP + -0x11]
004dd175  7662                      JBE 0x004dd1d9
004dd177  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
004dd17f  f30f5ec8                  DIVSS XMM1,XMM0
004dd183  f30f1045c8                MOVSS XMM0,dword ptr [EBP + -0x38]
004dd188  f30f59c1                  MULSS XMM0,XMM1
004dd18c  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004dd194  f30f1045cc                MOVSS XMM0,dword ptr [EBP + -0x34]
004dd199  f30f59c1                  MULSS XMM0,XMM1
004dd19d  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004dd1a5  eb32                      JMP 0x004dd1d9
004dd1a7  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004dd1ab  741f                      JZ 0x004dd1cc
004dd1ad  68b004b600                PUSH 0xb604b0
004dd1b2  8d4f78                    LEA ECX,[EDI + 0x78]
004dd1b5  e8b6dcf2ff                CALL 0x0040ae70
004dd1ba  84c0                      TEST AL,AL
004dd1bc  740e                      JZ 0x004dd1cc
004dd1be  c7876c030000ec51783f      MOV dword ptr [EDI + 0x36c],0x3f7851ec
004dd1c8  b001                      MOV AL,0x1
004dd1ca  eb0d                      JMP 0x004dd1d9
004dd1cc  8a45ef                    MOV AL,byte ptr [EBP + -0x11]
004dd1cf  c7876c030000cdcc4c3f      MOV dword ptr [EDI + 0x36c],0x3f4ccccd
004dd1d9  837f7c00                  CMP dword ptr [EDI + 0x7c],0x0
004dd1dd  7409                      JZ 0x004dd1e8
004dd1df  80bf8c00000000            CMP byte ptr [EDI + 0x8c],0x0
004dd1e6  750a                      JNZ 0x004dd1f2
004dd1e8  c787640b000003000000      MOV dword ptr [EDI + 0xb64],0x3
004dd1f2  84c0                      TEST AL,AL
004dd1f4  0f84bb050000              JZ 0x004dd7b5
004dd1fa  51                        PUSH ECX
004dd1fb  8d45b4                    LEA EAX,[EBP + -0x4c]
004dd1fe  c7042400000000            MOV dword ptr [ESP],0x0
004dd205  50                        PUSH EAX
004dd206  8bcf                      MOV ECX,EDI
004dd208  e8331a1e00                CALL 0x006bec40
004dd20d  f30f104db4                MOVSS XMM1,dword ptr [EBP + -0x4c]
004dd212  f30f5c8f3c030000          SUBSS XMM1,dword ptr [EDI + 0x33c]
004dd21a  f30f1055b8                MOVSS XMM2,dword ptr [EBP + -0x48]
004dd21f  f30f5c9740030000          SUBSS XMM2,dword ptr [EDI + 0x340]
004dd227  0f28c1                    MOVAPS XMM0,XMM1
004dd22a  f30f114de8                MOVSS dword ptr [EBP + -0x18],XMM1
004dd22f  f30f59c1                  MULSS XMM0,XMM1
004dd233  0f28ca                    MOVAPS XMM1,XMM2
004dd236  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
004dd23b  f30f59ca                  MULSS XMM1,XMM2
004dd23f  f30f58c1                  ADDSS XMM0,XMM1
004dd243  e80888f5ff                CALL 0x00435a50
004dd248  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004dd24f  762b                      JBE 0x004dd27c
004dd251  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004dd259  f30f5ec8                  DIVSS XMM1,XMM0
004dd25d  f30f1055e8                MOVSS XMM2,dword ptr [EBP + -0x18]
004dd262  0f28c1                    MOVAPS XMM0,XMM1
004dd265  f30f59d0                  MULSS XMM2,XMM0
004dd269  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004dd26e  f30f59c1                  MULSS XMM0,XMM1
004dd272  f30f1155e8                MOVSS dword ptr [EBP + -0x18],XMM2
004dd277  f30f1145e4                MOVSS dword ptr [EBP + -0x1c],XMM0
004dd27c  8b4dd4                    MOV ECX,dword ptr [EBP + -0x2c]
004dd27f  33c0                      XOR EAX,EAX
004dd281  f30f1005e8aaba00          MOVSS XMM0,dword ptr [0x00baaae8]
004dd289  50                        PUSH EAX
004dd28a  50                        PUSH EAX
004dd28b  6aff                      PUSH -0x1
004dd28d  6aff                      PUSH -0x1
004dd28f  8945e0                    MOV dword ptr [EBP + -0x20],EAX
004dd292  8d8918120000              LEA ECX,[ECX + 0x1218]
004dd298  6a02                      PUSH 0x2
004dd29a  8d45a4                    LEA EAX,[EBP + -0x5c]
004dd29d  f30f1145d0                MOVSS dword ptr [EBP + -0x30],XMM0
004dd2a2  50                        PUSH EAX
004dd2a3  e8b8dcf3ff                CALL 0x0041af60
004dd2a8  33f6                      XOR ESI,ESI
004dd2aa  c745fc00000000            MOV dword ptr [EBP + -0x4],0x0
004dd2b1  3975b0                    CMP dword ptr [EBP + -0x50],ESI
004dd2b4  0f86d9030000              JBE 0x004dd693
004dd2ba  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
004dd2c2  f30f1155b8                MOVSS dword ptr [EBP + -0x48],XMM2
004dd2c7  660f1f840000000000        NOP word ptr [EAX + EAX*0x1]
004dd2d0  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dd2d3  0f28c2                    MOVAPS XMM0,XMM2
004dd2d6  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004dd2de  8b04b0                    MOV EAX,dword ptr [EAX + ESI*0x4]
004dd2e1  8945c8                    MOV dword ptr [EBP + -0x38],EAX
004dd2e4  f30f5c8040030000          SUBSS XMM0,dword ptr [EAX + 0x340]
004dd2ec  f30f5c883c030000          SUBSS XMM1,dword ptr [EAX + 0x33c]
004dd2f4  0f28d0                    MOVAPS XMM2,XMM0
004dd2f7  f30f1145cc                MOVSS dword ptr [EBP + -0x34],XMM0
004dd2fc  f30f59d0                  MULSS XMM2,XMM0
004dd300  0f28c1                    MOVAPS XMM0,XMM1
004dd303  f30f59c1                  MULSS XMM0,XMM1
004dd307  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004dd30c  f30f58d0                  ADDSS XMM2,XMM0
004dd310  0f28c2                    MOVAPS XMM0,XMM2
004dd313  f30f1155c4                MOVSS dword ptr [EBP + -0x3c],XMM2
004dd318  e83387f5ff                CALL 0x00435a50
004dd31d  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
004dd320  f30f1145c0                MOVSS dword ptr [EBP + -0x40],XMM0
004dd325  0f57c0                    XORPS XMM0,XMM0
004dd328  f30f108960030000          MOVSS XMM1,dword ptr [ECX + 0x360]
004dd330  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
004dd337  f30f109164030000          MOVSS XMM2,dword ptr [ECX + 0x364]
004dd33f  9f                        LAHF
004dd340  f6c444                    TEST AH,0x44
004dd343  7a11                      JP 0x004dd356
004dd345  0f2e1544b6c700            UCOMISS XMM2,dword ptr [0x00c7b644]
004dd34c  9f                        LAHF
004dd34d  f6c444                    TEST AH,0x44
004dd350  0f8bf1000000              JNP 0x004dd447
004dd356  f30f590dd4a1ba00          MULSS XMM1,dword ptr [0x00baa1d4]
004dd35e  f30f5915d4a1ba00          MULSS XMM2,dword ptr [0x00baa1d4]
004dd366  0f28c1                    MOVAPS XMM0,XMM1
004dd369  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
004dd36e  f30f59c1                  MULSS XMM0,XMM1
004dd372  0f28ca                    MOVAPS XMM1,XMM2
004dd375  f30f1155d8                MOVSS dword ptr [EBP + -0x28],XMM2
004dd37a  f30f59ca                  MULSS XMM1,XMM2
004dd37e  f30f58c1                  ADDSS XMM0,XMM1
004dd382  e8c986f5ff                CALL 0x00435a50
004dd387  0f28c8                    MOVAPS XMM1,XMM0
004dd38a  f30f100554a4ba00          MOVSS XMM0,dword ptr [0x00baa454]
004dd392  0f2fc8                    COMISS XMM1,XMM0
004dd395  7629                      JBE 0x004dd3c0
004dd397  0f2f0de49fba00            COMISS XMM1,dword ptr [0x00ba9fe4]
004dd39e  7620                      JBE 0x004dd3c0
004dd3a0  f30f5ec1                  DIVSS XMM0,XMM1
004dd3a4  f30f104dd4                MOVSS XMM1,dword ptr [EBP + -0x2c]
004dd3a9  f30f59c8                  MULSS XMM1,XMM0
004dd3ad  f30f114dd4                MOVSS dword ptr [EBP + -0x2c],XMM1
004dd3b2  f30f104dd8                MOVSS XMM1,dword ptr [EBP + -0x28]
004dd3b7  f30f59c8                  MULSS XMM1,XMM0
004dd3bb  f30f114dd8                MOVSS dword ptr [EBP + -0x28],XMM1
004dd3c0  f30f1045c4                MOVSS XMM0,dword ptr [EBP + -0x3c]
004dd3c5  e88686f5ff                CALL 0x00435a50
004dd3ca  f30f105ddc                MOVSS XMM3,dword ptr [EBP + -0x24]
004dd3cf  0f57d2                    XORPS XMM2,XMM2
004dd3d2  0f2fc2                    COMISS XMM0,XMM2
004dd3d5  f30f1065cc                MOVSS XMM4,dword ptr [EBP + -0x34]
004dd3da  7617                      JBE 0x004dd3f3
004dd3dc  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004dd3e4  f30f5ec8                  DIVSS XMM1,XMM0
004dd3e8  0f28c1                    MOVAPS XMM0,XMM1
004dd3eb  f30f59e1                  MULSS XMM4,XMM1
004dd3ef  f30f59d8                  MULSS XMM3,XMM0
004dd3f3  f30f1045d4                MOVSS XMM0,dword ptr [EBP + -0x2c]
004dd3f8  f30f104dd8                MOVSS XMM1,dword ptr [EBP + -0x28]
004dd3fd  f30f59c3                  MULSS XMM0,XMM3
004dd401  f30f59cc                  MULSS XMM1,XMM4
004dd405  f30f58c1                  ADDSS XMM0,XMM1
004dd409  0f2fd0                    COMISS XMM2,XMM0
004dd40c  773e                      JA 0x004dd44c
004dd40e  8b4dc8                    MOV ECX,dword ptr [EBP + -0x38]
004dd411  f30f100dfca6ba00          MOVSS XMM1,dword ptr [0x00baa6fc]
004dd419  f30f59c1                  MULSS XMM0,XMM1
004dd41d  f30f5cc8                  SUBSS XMM1,XMM0
004dd421  f30f580dd0a2ba00          ADDSS XMM1,dword ptr [0x00baa2d0]
004dd429  f30f594dc0                MULSS XMM1,dword ptr [EBP + -0x40]
004dd42e  0f2fca                    COMISS XMM1,XMM2
004dd431  7619                      JBE 0x004dd44c
004dd433  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
004dd438  0f2fc1                    COMISS XMM0,XMM1
004dd43b  720f                      JC 0x004dd44c
004dd43d  f30f114dd0                MOVSS dword ptr [EBP + -0x30],XMM1
004dd442  894de0                    MOV dword ptr [EBP + -0x20],ECX
004dd445  eb08                      JMP 0x004dd44f
004dd447  0f57d2                    XORPS XMM2,XMM2
004dd44a  ebc5                      JMP 0x004dd411
004dd44c  8b4de0                    MOV ECX,dword ptr [EBP + -0x20]
004dd44f  f30f1055b8                MOVSS XMM2,dword ptr [EBP + -0x48]
004dd454  46                        INC ESI
004dd455  3b75b0                    CMP ESI,dword ptr [EBP + -0x50]
004dd458  0f8272feffff              JC 0x004dd2d0
004dd45e  85c9                      TEST ECX,ECX
004dd460  0f842d020000              JZ 0x004dd693
004dd466  f30f108960030000          MOVSS XMM1,dword ptr [ECX + 0x360]
004dd46e  0f2e0d40b6c700            UCOMISS XMM1,dword ptr [0x00c7b640]
004dd475  f30f109164030000          MOVSS XMM2,dword ptr [ECX + 0x364]
004dd47d  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004dd482  9f                        LAHF
004dd483  f30f1155d8                MOVSS dword ptr [EBP + -0x28],XMM2
004dd488  f6c444                    TEST AH,0x44
004dd48b  7a37                      JP 0x004dd4c4
004dd48d  0f2e1544b6c700            UCOMISS XMM2,dword ptr [0x00c7b644]
004dd494  9f                        LAHF
004dd495  f6c444                    TEST AH,0x44
004dd498  7a2a                      JP 0x004dd4c4
004dd49a  f30f108f3c030000          MOVSS XMM1,dword ptr [EDI + 0x33c]
004dd4a2  f30f109740030000          MOVSS XMM2,dword ptr [EDI + 0x340]
004dd4aa  f30f5c893c030000          SUBSS XMM1,dword ptr [ECX + 0x33c]
004dd4b2  f30f5c9140030000          SUBSS XMM2,dword ptr [ECX + 0x340]
004dd4ba  f30f114ddc                MOVSS dword ptr [EBP + -0x24],XMM1
004dd4bf  f30f1155d8                MOVSS dword ptr [EBP + -0x28],XMM2
004dd4c4  0f28c1                    MOVAPS XMM0,XMM1
004dd4c7  f30f59c1                  MULSS XMM0,XMM1
004dd4cb  0f28ca                    MOVAPS XMM1,XMM2
004dd4ce  f30f59ca                  MULSS XMM1,XMM2
004dd4d2  f30f58c1                  ADDSS XMM0,XMM1
004dd4d6  e87585f5ff                CALL 0x00435a50
004dd4db  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004dd4e2  7627                      JBE 0x004dd50b
004dd4e4  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004dd4ec  f30f5ec8                  DIVSS XMM1,XMM0
004dd4f0  0f28c1                    MOVAPS XMM0,XMM1
004dd4f3  f30f5945dc                MULSS XMM0,dword ptr [EBP + -0x24]
004dd4f8  f30f1145dc                MOVSS dword ptr [EBP + -0x24],XMM0
004dd4fd  f30f1045d8                MOVSS XMM0,dword ptr [EBP + -0x28]
004dd502  f30f59c1                  MULSS XMM0,XMM1
004dd506  f30f1145d8                MOVSS dword ptr [EBP + -0x28],XMM0
004dd50b  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004dd513  e82800f4ff                CALL 0x0041d540
004dd518  f30f1145b8                MOVSS dword ptr [EBP + -0x48],XMM0
004dd51d  f30f10054ca5ba00          MOVSS XMM0,dword ptr [0x00baa54c]
004dd525  e8f6fff3ff                CALL 0x0041d520
004dd52a  8b45e0                    MOV EAX,dword ptr [EBP + -0x20]
004dd52d  0f28e0                    MOVAPS XMM4,XMM0
004dd530  f30f1045b8                MOVSS XMM0,dword ptr [EBP + -0x48]
004dd535  0f28cc                    MOVAPS XMM1,XMM4
004dd538  f30f594dd8                MULSS XMM1,dword ptr [EBP + -0x28]
004dd53d  0f28e8                    MOVAPS XMM5,XMM0
004dd540  f30f5945d8                MULSS XMM0,dword ptr [EBP + -0x28]
004dd545  f30f596ddc                MULSS XMM5,dword ptr [EBP + -0x24]
004dd54a  f30f5965dc                MULSS XMM4,dword ptr [EBP + -0x24]
004dd54f  f30f5ce9                  SUBSS XMM5,XMM1
004dd553  f30f108f40030000          MOVSS XMM1,dword ptr [EDI + 0x340]
004dd55b  f30f5c8840030000          SUBSS XMM1,dword ptr [EAX + 0x340]
004dd563  f30f58e0                  ADDSS XMM4,XMM0
004dd567  f30f10873c030000          MOVSS XMM0,dword ptr [EDI + 0x33c]
004dd56f  f30f5c803c030000          SUBSS XMM0,dword ptr [EAX + 0x33c]
004dd577  f30f116dd4                MOVSS dword ptr [EBP + -0x2c],XMM5
004dd57c  f30f59cc                  MULSS XMM1,XMM4
004dd580  f30f59c5                  MULSS XMM0,XMM5
004dd584  f30f1165d8                MOVSS dword ptr [EBP + -0x28],XMM4
004dd589  f30f58c8                  ADDSS XMM1,XMM0
004dd58d  0f57c0                    XORPS XMM0,XMM0
004dd590  0f2fc1                    COMISS XMM0,XMM1
004dd593  7618                      JBE 0x004dd5ad
004dd595  0f572d70cbba00            XORPS XMM5,xmmword ptr [0x00bacb70]
004dd59c  0f572570cbba00            XORPS XMM4,xmmword ptr [0x00bacb70]
004dd5a3  f30f116dd4                MOVSS dword ptr [EBP + -0x2c],XMM5
004dd5a8  f30f1165d8                MOVSS dword ptr [EBP + -0x28],XMM4
004dd5ad  f30f1045d0                MOVSS XMM0,dword ptr [EBP + -0x30]
004dd5b2  8d45c0                    LEA EAX,[EBP + -0x40]
004dd5b5  f30f580524a9ba00          ADDSS XMM0,dword ptr [0x00baa924]
004dd5bd  f30f100d78aaba00          MOVSS XMM1,dword ptr [0x00baaa78]
004dd5c5  8d75b8                    LEA ESI,[EBP + -0x48]
004dd5c8  f30f1055e4                MOVSS XMM2,dword ptr [EBP + -0x1c]
004dd5cd  c745b80000a041            MOV dword ptr [EBP + -0x48],0x41a00000
004dd5d4  f30f1155cc                MOVSS dword ptr [EBP + -0x34],XMM2
004dd5d9  f30f5ec8                  DIVSS XMM1,XMM0
004dd5dd  0f2f0d7ca8ba00            COMISS XMM1,dword ptr [0x00baa87c]
004dd5e4  f30f114dc0                MOVSS dword ptr [EBP + -0x40],XMM1
004dd5e9  f30f104de8                MOVSS XMM1,dword ptr [EBP + -0x18]
004dd5ee  0f28c1                    MOVAPS XMM0,XMM1
004dd5f1  f30f114dc8                MOVSS dword ptr [EBP + -0x38],XMM1
004dd5f6  f30f59c1                  MULSS XMM0,XMM1
004dd5fa  0f46f0                    CMOVBE ESI,EAX
004dd5fd  0f28ca                    MOVAPS XMM1,XMM2
004dd600  f30f59ca                  MULSS XMM1,XMM2
004dd604  f30f58c1                  ADDSS XMM0,XMM1
004dd608  e84384f5ff                CALL 0x00435a50
004dd60d  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004dd614  7623                      JBE 0x004dd639
004dd616  f30f100d54a4ba00          MOVSS XMM1,dword ptr [0x00baa454]
004dd61e  f30f5ec8                  DIVSS XMM1,XMM0
004dd622  0f28c1                    MOVAPS XMM0,XMM1
004dd625  f30f594de4                MULSS XMM1,dword ptr [EBP + -0x1c]
004dd62a  f30f5945e8                MULSS XMM0,dword ptr [EBP + -0x18]
004dd62f  f30f114dcc                MOVSS dword ptr [EBP + -0x34],XMM1
004dd634  f30f1145c8                MOVSS dword ptr [EBP + -0x38],XMM0
004dd639  f30f1026                  MOVSS XMM4,dword ptr [ESI]
004dd63d  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004dd642  0f28cc                    MOVAPS XMM1,XMM4
004dd645  f30f594dc8                MULSS XMM1,dword ptr [EBP + -0x38]
004dd64a  0f28d4                    MOVAPS XMM2,XMM4
004dd64d  f30f5955cc                MULSS XMM2,dword ptr [EBP + -0x34]
004dd652  0f28dc                    MOVAPS XMM3,XMM4
004dd655  f30f590d20a1ba00          MULSS XMM1,dword ptr [0x00baa120]
004dd65d  f30f591520a1ba00          MULSS XMM2,dword ptr [0x00baa120]
004dd665  f30f595dd4                MULSS XMM3,dword ptr [EBP + -0x2c]
004dd66a  f30f5cc1                  SUBSS XMM0,XMM1
004dd66e  f30f104de4                MOVSS XMM1,dword ptr [EBP + -0x1c]
004dd673  f30f5cca                  SUBSS XMM1,XMM2
004dd677  0f28d4                    MOVAPS XMM2,XMM4
004dd67a  f30f5955d8                MULSS XMM2,dword ptr [EBP + -0x28]
004dd67f  f30f58d8                  ADDSS XMM3,XMM0
004dd683  f30f58d1                  ADDSS XMM2,XMM1
004dd687  f30f115de8                MOVSS dword ptr [EBP + -0x18],XMM3
004dd68c  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
004dd691  eb0a                      JMP 0x004dd69d
004dd693  f30f1055e4                MOVSS XMM2,dword ptr [EBP + -0x1c]
004dd698  f30f105de8                MOVSS XMM3,dword ptr [EBP + -0x18]
004dd69d  8b8768010000              MOV EAX,dword ptr [EDI + 0x168]
004dd6a3  25000a0001                AND EAX,0x1000a00
004dd6a8  83c800                    OR EAX,0x0
004dd6ab  7535                      JNZ 0x004dd6e2
004dd6ad  8bcf                      MOV ECX,EDI
004dd6af  e88c111e00                CALL 0x006be840
004dd6b4  f30f105de8                MOVSS XMM3,dword ptr [EBP + -0x18]
004dd6b9  f30f108860030000          MOVSS XMM1,dword ptr [EAX + 0x360]
004dd6c1  f30f109064030000          MOVSS XMM2,dword ptr [EAX + 0x364]
004dd6c9  f30f590df8a1ba00          MULSS XMM1,dword ptr [0x00baa1f8]
004dd6d1  f30f5915f8a1ba00          MULSS XMM2,dword ptr [0x00baa1f8]
004dd6d9  f30f58d9                  ADDSS XMM3,XMM1
004dd6dd  f30f5855e4                ADDSS XMM2,dword ptr [EBP + -0x1c]
004dd6e2  f30f591df0a1ba00          MULSS XMM3,dword ptr [0x00baa1f0]
004dd6ea  f30f5915f0a1ba00          MULSS XMM2,dword ptr [0x00baa1f0]
004dd6f2  f30f108f9c030000          MOVSS XMM1,dword ptr [EDI + 0x39c]
004dd6fa  f30f59d9                  MULSS XMM3,XMM1
004dd6fe  f30f59d1                  MULSS XMM2,XMM1
004dd702  f30f589f60030000          ADDSS XMM3,dword ptr [EDI + 0x360]
004dd70a  f30f589764030000          ADDSS XMM2,dword ptr [EDI + 0x364]
004dd712  0f28c3                    MOVAPS XMM0,XMM3
004dd715  f30f115de8                MOVSS dword ptr [EBP + -0x18],XMM3
004dd71a  f30f59c3                  MULSS XMM0,XMM3
004dd71e  0f28ca                    MOVAPS XMM1,XMM2
004dd721  f30f119f60030000          MOVSS dword ptr [EDI + 0x360],XMM3
004dd729  f30f59ca                  MULSS XMM1,XMM2
004dd72d  f30f1155e4                MOVSS dword ptr [EBP + -0x1c],XMM2
004dd732  f30f119764030000          MOVSS dword ptr [EDI + 0x364],XMM2
004dd73a  f30f58c1                  ADDSS XMM0,XMM1
004dd73e  e80d83f5ff                CALL 0x00435a50
004dd743  f30f100d34a8ba00          MOVSS XMM1,dword ptr [0x00baa834]
004dd74b  0f2fc1                    COMISS XMM0,XMM1
004dd74e  762f                      JBE 0x004dd77f
004dd750  0f2f05e49fba00            COMISS XMM0,dword ptr [0x00ba9fe4]
004dd757  7626                      JBE 0x004dd77f
004dd759  f30f5ec8                  DIVSS XMM1,XMM0
004dd75d  f30f1045e8                MOVSS XMM0,dword ptr [EBP + -0x18]
004dd762  f30f59c1                  MULSS XMM0,XMM1
004dd766  f30f118760030000          MOVSS dword ptr [EDI + 0x360],XMM0
004dd76e  f30f1045e4                MOVSS XMM0,dword ptr [EBP + -0x1c]
004dd773  f30f59c1                  MULSS XMM0,XMM1
004dd777  f30f118764030000          MOVSS dword ptr [EDI + 0x364],XMM0
004dd77f  807da400                  CMP byte ptr [EBP + -0x5c],0x0
004dd783  7530                      JNZ 0x004dd7b5
004dd785  8b1578dec700              MOV EDX,dword ptr [0x00c7de78]
004dd78b  85d2                      TEST EDX,EDX
004dd78d  7405                      JZ 0x004dd794
004dd78f  83c230                    ADD EDX,0x30
004dd792  eb05                      JMP 0x004dd799
004dd794  ba18f6c700                MOV EDX,0xc7f618
004dd799  8b45a8                    MOV EAX,dword ptr [EBP + -0x58]
004dd79c  85c0                      TEST EAX,EAX
004dd79e  7415                      JZ 0x004dd7b5
004dd7a0  8d48fc                    LEA ECX,[EAX + -0x4]
004dd7a3  8b01                      MOV EAX,dword ptr [ECX]
004dd7a5  2902                      SUB dword ptr [EDX],EAX
004dd7a7  51                        PUSH ECX
004dd7a8  835a0400                  SBB dword ptr [EDX + 0x4],0x0
004dd7ac  ff15dc87b100              CALL dword ptr [0x00b187dc]
004dd7b2  83c404                    ADD ESP,0x4
004dd7b5  8b4df4                    MOV ECX,dword ptr [EBP + -0xc]
004dd7b8  64890d00000000            MOV dword ptr FS:[0x0],ECX
004dd7bf  59                        POP ECX
004dd7c0  5f                        POP EDI
004dd7c1  5e                        POP ESI
004dd7c2  8be5                      MOV ESP,EBP
004dd7c4  5d                        POP EBP
004dd7c5  8be3                      MOV ESP,EBX
004dd7c7  5b                        POP EBX
004dd7c8  c3                        RET
